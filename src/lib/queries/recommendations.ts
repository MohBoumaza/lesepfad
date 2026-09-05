import { createClient } from "@/lib/supabase/server";
import { isSupabaseConfigured } from "@/lib/supabase/is-configured";
import type { Difficulty, LevelCode } from "@/types/database";

const LEVEL_ORDER: LevelCode[] = ["A1", "A2", "B1", "B2", "C1", "C2"];

/** En dessous de ce nombre de réponses, on n'a pas assez de signal pour
 * suggérer quoi que ce soit — mieux vaut se taire qu'être bruyant. */
const MIN_SAMPLE_SIZE = 15;

const LEVEL_UP_THRESHOLD = 0.85;
const LEVEL_DOWN_THRESHOLD = 0.4;
const HARDER_THRESHOLD = 0.9;
const EASIER_THRESHOLD = 0.45;

export type RecommendationKind =
  | "level_up"
  | "level_down"
  | "try_harder"
  | "try_easier";

export interface Recommendation {
  kind: RecommendationKind;
  levelCode: LevelCode;
  /** Cible de la suggestion : niveau supérieur/inférieur, ou même niveau
   * pour un changement de difficulté. */
  targetLevelCode?: LevelCode;
  targetDifficulty?: Difficulty;
  accuracyPct: number;
  sampleSize: number;
  message: string;
}

interface AnswerRow {
  is_correct: boolean;
  questions: {
    difficulty: Difficulty;
    story_id: string;
    stories: { level_code: LevelCode } | { level_code: LevelCode }[];
  } | {
    difficulty: Difficulty;
    story_id: string;
    stories: { level_code: LevelCode } | { level_code: LevelCode }[];
  }[];
}

function firstOf<T>(value: T | T[]): T | undefined {
  return Array.isArray(value) ? value[0] : value;
}

/**
 * Calcule une suggestion de niveau ou de difficulté à partir de
 * l'historique réel de réponses de l'utilisateur (table `answers`, la plus
 * fine granularité disponible — contrairement à `progress`, qui ne garde
 * pas la difficulté de la tentative). Null si pas assez de données, ou si
 * les performances sont dans une fourchette "normale" ne justifiant aucun
 * changement.
 */
export async function getRecommendation(): Promise<Recommendation | null> {
  if (!isSupabaseConfigured()) return null;

  const supabase = await createClient();
  const {
    data: { user },
  } = await supabase.auth.getUser();
  if (!user) return null;

  // Le niveau "actuel" = celui de la question répondue le plus récemment.
  const { data: latestRows } = await supabase
    .from("answers")
    .select("answered_at, questions!inner(story_id, stories!inner(level_code))")
    .eq("user_id", user.id)
    .order("answered_at", { ascending: false })
    .limit(1);

  const latest = latestRows?.[0] as
    | { questions: AnswerRow["questions"] }
    | undefined;
  if (!latest) return null;

  const latestQuestion = firstOf(latest.questions);
  const currentLevel = latestQuestion && firstOf(latestQuestion.stories)?.level_code;
  if (!currentLevel) return null;

  const { data: rows } = await supabase
    .from("answers")
    .select(
      "is_correct, questions!inner(difficulty, story_id, stories!inner(level_code))",
    )
    .eq("user_id", user.id);

  if (!rows) return null;

  const typedRows = rows as unknown as AnswerRow[];

  let levelCorrect = 0;
  let levelTotal = 0;
  let normalCorrect = 0;
  let normalTotal = 0;

  for (const row of typedRows) {
    const q = firstOf(row.questions);
    if (!q) continue;
    const levelCode = firstOf(q.stories)?.level_code;
    if (levelCode !== currentLevel) continue;

    levelTotal++;
    if (row.is_correct) levelCorrect++;

    if (q.difficulty === "normal") {
      normalTotal++;
      if (row.is_correct) normalCorrect++;
    }
  }

  if (levelTotal < MIN_SAMPLE_SIZE) return null;

  const levelPct = levelCorrect / levelTotal;
  const currentIndex = LEVEL_ORDER.indexOf(currentLevel);

  if (levelPct >= LEVEL_UP_THRESHOLD && currentIndex < LEVEL_ORDER.length - 1) {
    const nextLevel = LEVEL_ORDER[currentIndex + 1];
    return {
      kind: "level_up",
      levelCode: currentLevel,
      targetLevelCode: nextLevel,
      accuracyPct: Math.round(levelPct * 100),
      sampleSize: levelTotal,
      message: `Tu réussis ${Math.round(levelPct * 100)}% des questions en ${currentLevel} — envie de tenter le ${nextLevel} ?`,
    };
  }

  if (levelPct <= LEVEL_DOWN_THRESHOLD && currentIndex > 0) {
    const prevLevel = LEVEL_ORDER[currentIndex - 1];
    return {
      kind: "level_down",
      levelCode: currentLevel,
      targetLevelCode: prevLevel,
      accuracyPct: Math.round(levelPct * 100),
      sampleSize: levelTotal,
      message: `Le niveau ${currentLevel} semble difficile en ce moment (${Math.round(levelPct * 100)}% de bonnes réponses) — un détour par le ${prevLevel} peut aider à consolider.`,
    };
  }

  if (normalTotal >= MIN_SAMPLE_SIZE && normalCorrect / normalTotal >= HARDER_THRESHOLD) {
    return {
      kind: "try_harder",
      levelCode: currentLevel,
      targetDifficulty: "difficile",
      accuracyPct: Math.round((normalCorrect / normalTotal) * 100),
      sampleSize: normalTotal,
      message: `${Math.round((normalCorrect / normalTotal) * 100)}% de bonnes réponses en difficulté normale — essaie « difficile » sur ta prochaine histoire.`,
    };
  }

  if (normalTotal >= MIN_SAMPLE_SIZE && normalCorrect / normalTotal <= EASIER_THRESHOLD) {
    return {
      kind: "try_easier",
      levelCode: currentLevel,
      targetDifficulty: "facile",
      accuracyPct: Math.round((normalCorrect / normalTotal) * 100),
      sampleSize: normalTotal,
      message: `Les questions en difficulté normale sont ardues en ce moment (${Math.round((normalCorrect / normalTotal) * 100)}%) — repasser en « facile » peut redonner confiance.`,
    };
  }

  return null;
}
