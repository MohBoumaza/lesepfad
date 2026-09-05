import { createClient } from "@/lib/supabase/server";
import { isSupabaseConfigured } from "@/lib/supabase/is-configured";
import { getVocabularyCounts } from "@/lib/queries/vocabulary";
import type { LevelCode, QuestionCategory } from "@/types/database";

const LEVEL_ORDER: LevelCode[] = ["A1", "A2", "B1", "B2", "C1", "C2"];

/** Catégories dont la correction est automatique (donc mesurables en
 * pourcentage de réussite) — la production écrite s'auto-évalue par
 * comparaison à un modèle et n'a pas de is_correct. */
const GRADED_CATEGORIES: QuestionCategory[] = [
  "comprehension",
  "vocabulary",
  "conjugation",
  "lueckentext",
  "grammar",
  "true_false",
  "diktat",
];

const CATEGORY_LABEL: Record<string, string> = {
  comprehension: "Compréhension",
  vocabulary: "Vocabulaire",
  conjugation: "Conjugaison",
  lueckentext: "Lückentext",
  grammar: "Grammaire",
  true_false: "Vrai / Faux",
  diktat: "Dictée",
};

export interface LevelProgress {
  code: LevelCode;
  completed: number;
  total: number;
}

export interface CategoryAccuracy {
  category: string;
  label: string;
  correct: number;
  total: number;
}

export interface Badge {
  id: string;
  icon: string;
  label: string;
  description: string;
  achieved: boolean;
}

export interface DashboardStats {
  storiesCompleted: number;
  storiesTotal: number;
  byLevel: LevelProgress[];
  accuracyByCategory: CategoryAccuracy[];
  overallAccuracyPct: number | null;
  currentStreak: number;
  longestStreak: number;
  vocabularyTotal: number;
  vocabularyMastered: number;
  badges: Badge[];
}

interface ProgressRow {
  status: string;
  stories: { level_code: LevelCode } | { level_code: LevelCode }[];
}

interface AnswerRow {
  is_correct: boolean;
  answered_at: string;
  questions: { category: string } | { category: string }[];
}

function firstOf<T>(value: T | T[]): T | undefined {
  return Array.isArray(value) ? value[0] : value;
}

/** Calcule la série de jours consécutifs avec au moins une réponse : la
 * série "en cours" (se terminant aujourd'hui ou hier — un jour de battement
 * pour ne pas casser la série avant minuit) et la plus longue série jamais
 * atteinte. */
function computeStreaks(answeredDates: string[]): {
  current: number;
  longest: number;
} {
  const days = Array.from(
    new Set(answeredDates.map((iso) => iso.slice(0, 10))),
  ).sort();
  if (days.length === 0) return { current: 0, longest: 0 };

  const dayMs = 86_400_000;
  const toTime = (d: string) => new Date(d + "T00:00:00Z").getTime();

  let longest = 1;
  let run = 1;
  for (let i = 1; i < days.length; i++) {
    if (toTime(days[i]) - toTime(days[i - 1]) === dayMs) {
      run++;
    } else {
      run = 1;
    }
    longest = Math.max(longest, run);
  }

  const todayMs = toTime(new Date().toISOString().slice(0, 10));
  const lastDayMs = toTime(days[days.length - 1]);
  const gapFromToday = Math.round((todayMs - lastDayMs) / dayMs);

  let current = 0;
  if (gapFromToday <= 1) {
    current = 1;
    for (let i = days.length - 1; i > 0; i--) {
      if (toTime(days[i]) - toTime(days[i - 1]) === dayMs) {
        current++;
      } else {
        break;
      }
    }
  }

  return { current, longest };
}

/**
 * Agrège les statistiques de progression, de précision par compétence, de
 * régularité (série de jours) et de vocabulaire d'un utilisateur, puis en
 * dérive une liste de badges. Retourne null en mode démo ou sans session —
 * la page /statistiques affiche alors une invitation à se connecter.
 */
export async function getDashboardStats(): Promise<DashboardStats | null> {
  if (!isSupabaseConfigured()) return null;

  const supabase = await createClient();
  const {
    data: { user },
  } = await supabase.auth.getUser();
  if (!user) return null;

  const [
    { data: allStories },
    { data: progressRows },
    { data: answerRows },
    vocabularyCounts,
  ] = await Promise.all([
    supabase.from("stories").select("level_code").eq("published", true),
    supabase
      .from("progress")
      .select("status, stories!inner(level_code)")
      .eq("user_id", user.id)
      .eq("status", "completed"),
    supabase
      .from("answers")
      .select("is_correct, answered_at, questions!inner(category)")
      .eq("user_id", user.id),
    getVocabularyCounts(),
  ]);

  const totalByLevel = new Map<LevelCode, number>();
  (allStories ?? []).forEach((row) => {
    const code = row.level_code as LevelCode;
    totalByLevel.set(code, (totalByLevel.get(code) ?? 0) + 1);
  });

  const completedByLevel = new Map<LevelCode, number>();
  const typedProgress = (progressRows ?? []) as unknown as ProgressRow[];
  typedProgress.forEach((row) => {
    const code = firstOf(row.stories)?.level_code;
    if (!code) return;
    completedByLevel.set(code, (completedByLevel.get(code) ?? 0) + 1);
  });

  const byLevel: LevelProgress[] = LEVEL_ORDER.map((code) => ({
    code,
    completed: completedByLevel.get(code) ?? 0,
    total: totalByLevel.get(code) ?? 0,
  }));

  const storiesCompleted = byLevel.reduce((sum, l) => sum + l.completed, 0);
  const storiesTotal = byLevel.reduce((sum, l) => sum + l.total, 0);

  const accByCategory = new Map<string, { correct: number; total: number }>();
  const typedAnswers = (answerRows ?? []) as unknown as AnswerRow[];
  const answeredDates: string[] = [];

  typedAnswers.forEach((row) => {
    answeredDates.push(row.answered_at);
    const category = firstOf(row.questions)?.category;
    if (!category || !GRADED_CATEGORIES.includes(category as QuestionCategory)) return;
    const entry = accByCategory.get(category) ?? { correct: 0, total: 0 };
    entry.total++;
    if (row.is_correct) entry.correct++;
    accByCategory.set(category, entry);
  });

  const accuracyByCategory: CategoryAccuracy[] = GRADED_CATEGORIES.filter((c) =>
    accByCategory.has(c),
  ).map((category) => {
    const entry = accByCategory.get(category)!;
    return {
      category,
      label: CATEGORY_LABEL[category] ?? category,
      correct: entry.correct,
      total: entry.total,
    };
  });

  const totalGraded = accuracyByCategory.reduce((s, c) => s + c.total, 0);
  const totalCorrect = accuracyByCategory.reduce((s, c) => s + c.correct, 0);
  const overallAccuracyPct =
    totalGraded > 0 ? Math.round((totalCorrect / totalGraded) * 100) : null;

  const { current: currentStreak, longest: longestStreak } =
    computeStreaks(answeredDates);

  const levelsFullyDone = byLevel.filter(
    (l) => l.total > 0 && l.completed >= l.total,
  );
  const levelsStarted = byLevel.filter((l) => l.completed > 0);

  const badges: Badge[] = [
    {
      id: "first_story",
      icon: "🌱",
      label: "Premier pas",
      description: "Terminer une première histoire.",
      achieved: storiesCompleted >= 1,
    },
    {
      id: "ten_stories",
      icon: "📖",
      label: "Bibliophile",
      description: "Terminer 10 histoires.",
      achieved: storiesCompleted >= 10,
    },
    {
      id: "level_cleared",
      icon: "🏅",
      label: "Niveau validé",
      description: "Terminer toutes les histoires d'un niveau.",
      achieved: levelsFullyDone.length >= 1,
    },
    {
      id: "polyglot",
      icon: "🌍",
      label: "Polyglotte",
      description: "Avoir commencé les 6 niveaux, de A1 à C2.",
      achieved: levelsStarted.length >= 6,
    },
    {
      id: "streak_7",
      icon: "🔥",
      label: "Série de 7 jours",
      description: "Pratiquer 7 jours d'affilée.",
      achieved: longestStreak >= 7,
    },
    {
      id: "sharp_shooter",
      icon: "🎯",
      label: "Sans faute",
      description: "90% de bonnes réponses ou plus sur au moins 20 questions.",
      achieved: totalGraded >= 20 && totalCorrect / totalGraded >= 0.9,
    },
    {
      id: "vocab_collector",
      icon: "🗂️",
      label: "Collectionneur de mots",
      description: "Enregistrer 25 mots dans son vocabulaire personnel.",
      achieved: vocabularyCounts.total >= 25,
    },
    {
      id: "vocab_master",
      icon: "🧠",
      label: "Mémoire de fer",
      description: "Maîtriser 10 mots (boîte 5 de la répétition espacée).",
      achieved: vocabularyCounts.mastered >= 10,
    },
  ];

  return {
    storiesCompleted,
    storiesTotal,
    byLevel,
    accuracyByCategory,
    overallAccuracyPct,
    currentStreak,
    longestStreak,
    vocabularyTotal: vocabularyCounts.total,
    vocabularyMastered: vocabularyCounts.mastered,
    badges,
  };
}
