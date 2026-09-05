import { createClient } from "@/lib/supabase/server";
import { isSupabaseConfigured } from "@/lib/supabase/is-configured";
import { MOCK_STORIES, getMockStory } from "@/lib/mock-data";
import type { StoryCardData } from "@/components/story-card";
import type { Difficulty, LevelCode, StoryWithQuestions } from "@/types/database";

/**
 * Histoires pour la bibliothèque, avec la progression de l'utilisateur
 * connecté quand il y en a une. Sans Supabase configuré, retombe sur les
 * données factices (voir isSupabaseConfigured).
 */
export async function listStoriesForLibrary(
  levelCode?: LevelCode | null,
): Promise<StoryCardData[]> {
  if (!isSupabaseConfigured()) {
    return MOCK_STORIES.filter((s) => !levelCode || s.level_code === levelCode).map(
      (story) => ({
        id: story.id,
        title: story.title,
        levelCode: story.level_code,
        wordCount: story.word_count,
        questionCount: story.questions.length,
        answeredCount: 0,
        status: "not_started",
        cultureNote: story.culture_note,
      }),
    );
  }

  const supabase = await createClient();

  // On ne compte que les questions de compréhension en difficulté "normal" :
  // chaque question existe en 3 variantes de difficulté (facile/normal/
  // difficile) et il y a aussi des questions de vocabulaire, conjugaison et
  // production par histoire — sans ce double filtre, questionCount serait
  // gonflé. "normal"/"comprehension" sert de référence pour l'affichage
  // dans la bibliothèque, indépendamment du mode choisi ensuite.
  let query = supabase
    .from("stories")
    .select("id, title, level_code, word_count, culture_note, questions!inner(id)")
    .eq("published", true)
    .eq("questions.difficulty", "normal")
    .eq("questions.category", "comprehension")
    .order("created_at");

  if (levelCode) query = query.eq("level_code", levelCode);

  const { data: stories, error } = await query;
  if (error || !stories) return [];

  const {
    data: { user },
  } = await supabase.auth.getUser();

  const progressByStory = new Map<
    string,
    { status: "in_progress" | "completed" }
  >();
  let answeredByStory = new Map<string, number>();

  if (user) {
    const storyIds = stories.map((s) => s.id);

    const [{ data: progressRows }, { data: answerRows }] = await Promise.all([
      supabase
        .from("progress")
        .select("story_id, status")
        .eq("user_id", user.id)
        .in("story_id", storyIds),
      supabase
        .from("answers")
        .select("question_id, questions!inner(story_id)")
        .eq("user_id", user.id),
    ]);

    progressRows?.forEach((row) =>
      progressByStory.set(row.story_id, { status: row.status }),
    );

    const counts = new Map<string, number>();
    answerRows?.forEach((row) => {
      // `questions` est jointe pour retrouver story_id depuis answers ;
      // Supabase renvoie soit un objet, soit un tableau selon la relation.
      const rel = row.questions as unknown as { story_id: string } | { story_id: string }[];
      const storyId = Array.isArray(rel) ? rel[0]?.story_id : rel?.story_id;
      if (storyId) counts.set(storyId, (counts.get(storyId) ?? 0) + 1);
    });
    answeredByStory = counts;
  }

  return stories.map((story) => {
    const questionCount = (story.questions as unknown[])?.length ?? 0;
    const progress = progressByStory.get(story.id);
    return {
      id: story.id,
      title: story.title,
      levelCode: story.level_code as LevelCode,
      wordCount: story.word_count,
      questionCount,
      answeredCount: answeredByStory.get(story.id) ?? 0,
      status: progress?.status ?? "not_started",
      cultureNote: (story as unknown as { culture_note: string | null }).culture_note,
    };
  });
}

/**
 * Liste brute (histoire + questions + choix publics) pour /api/stories —
 * un futur client externe (appli mobile, etc.) plutôt que les pages, qui
 * lisent directement listStoriesForLibrary / getStoryForReading.
 */
/**
 * Ne garde, pour une histoire, que les questions correspondant à la
 * difficulté choisie — sauf la production écrite, qui n'a qu'une seule
 * variante (difficulty = "normal") et doit rester présente quel que soit
 * le mode choisi. Trie ensuite par catégorie (compréhension, vocabulaire,
 * conjugaison, production) puis par position, pour un affichage stable.
 */
function filterQuestionsForDifficulty(
  questions: StoryWithQuestions["questions"],
  difficulty: Difficulty,
): StoryWithQuestions["questions"] {
  const categoryOrder: Record<string, number> = {
    comprehension: 0,
    lueckentext: 1,
    vocabulary: 2,
    grammar: 3,
    conjugation: 4,
    true_false: 5,
    diktat: 6,
    production: 7,
  };
  return questions
    .filter(
      (q) =>
        q.category === "production" ||
        q.category === "diktat" ||
        q.difficulty === difficulty,
    )
    .sort((a, b) => {
      const catDiff = (categoryOrder[a.category] ?? 99) - (categoryOrder[b.category] ?? 99);
      return catDiff !== 0 ? catDiff : a.position - b.position;
    });
}

export async function listStoriesWithQuestions(
  levelCode?: LevelCode | null,
  difficulty: Difficulty = "normal",
): Promise<StoryWithQuestions[]> {
  if (!isSupabaseConfigured()) {
    return MOCK_STORIES.filter((s) => !levelCode || s.level_code === levelCode);
  }

  const supabase = await createClient();

  let query = supabase
    .from("stories")
    .select(
      "id, level_code, title, body, word_count, published, created_at, translation_fr, glossary, culture_note, " +
        "questions!inner(id, story_id, prompt, position, difficulty, category, model_answer, justification, rubric, " +
        "choices(id, question_id, label, position))",
    )
    .eq("published", true)
    .order("created_at");

  if (levelCode) query = query.eq("level_code", levelCode);

  const { data, error } = await query;
  if (error || !data) return [];

  const stories = data as unknown as StoryWithQuestions[];
  return stories.map((story) => ({
    ...story,
    questions: filterQuestionsForDifficulty(story.questions, difficulty),
  }));
}

/**
 * Une histoire avec ses questions et choix publics (sans is_correct) pour
 * l'écran de lecture. La bonne réponse n'est jamais sélectionnée ici —
 * voir src/lib/queries/answers.ts pour la correction côté serveur.
 */
export async function getStoryForReading(
  storyId: string,
  difficulty: Difficulty = "normal",
): Promise<StoryWithQuestions | null> {
  if (!isSupabaseConfigured()) {
    return getMockStory(storyId);
  }

  const supabase = await createClient();

  const { data: story, error } = await supabase
    .from("stories")
    .select(
      "id, level_code, title, body, word_count, published, created_at, translation_fr, glossary, culture_note, " +
        "questions!inner(id, story_id, prompt, position, difficulty, category, model_answer, justification, rubric, " +
        "choices(id, question_id, label, position))",
    )
    .eq("id", storyId)
    .eq("published", true)
    .single();

  if (error || !story) return null;

  const typedStory = story as unknown as StoryWithQuestions;

  return {
    ...typedStory,
    questions: filterQuestionsForDifficulty(typedStory.questions, difficulty),
  };
}
