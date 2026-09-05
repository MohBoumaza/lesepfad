import { createClient } from "@/lib/supabase/server";
import { isSupabaseConfigured } from "@/lib/supabase/is-configured";
import type { VocabularyItem } from "@/types/database";

/**
 * Intervalles (en jours) de la méthode Leitner à 5 boîtes, indexés par
 * numéro de boîte (1 à 5). Une bonne réponse fait avancer d'une boîte
 * (intervalle plus long avant la prochaine révision) ; une mauvaise réponse
 * ramène le mot en boîte 1 (révision dès le lendemain).
 */
const BOX_INTERVAL_DAYS: Record<number, number> = {
  1: 1,
  2: 3,
  3: 7,
  4: 16,
  5: 35,
};

function nextReviewDate(box: number): string {
  const days = BOX_INTERVAL_DAYS[box] ?? 1;
  const date = new Date();
  date.setDate(date.getDate() + days);
  return date.toISOString();
}

export interface SaveVocabularyResult {
  saved: boolean;
  reason?: "not_configured" | "not_authenticated" | "error";
}

/**
 * Ajoute un mot au vocabulaire personnel de l'utilisateur connecté (depuis
 * le glossaire d'une histoire, voir StoryText). Si le mot existe déjà pour
 * cet utilisateur, ne réinitialise pas sa progression (onConflict ignore).
 */
export async function addVocabularyWord(
  word: string,
  translation: string,
  storyId: string | null,
): Promise<SaveVocabularyResult> {
  if (!isSupabaseConfigured()) {
    return { saved: false, reason: "not_configured" };
  }

  const supabase = await createClient();
  const {
    data: { user },
  } = await supabase.auth.getUser();

  if (!user) {
    return { saved: false, reason: "not_authenticated" };
  }

  const { error } = await supabase.from("vocabulary_items").upsert(
    {
      user_id: user.id,
      word,
      translation,
      story_id: storyId,
    },
    { onConflict: "user_id,word", ignoreDuplicates: true },
  );

  return error ? { saved: false, reason: "error" } : { saved: true };
}

/**
 * Mots dus pour révision (next_review_at <= maintenant), triés par
 * ancienneté de révision — les plus en retard d'abord. `limit` borne la
 * taille d'une session de flashcards.
 */
export async function listDueVocabulary(
  limit = 20,
): Promise<VocabularyItem[]> {
  if (!isSupabaseConfigured()) return [];

  const supabase = await createClient();
  const {
    data: { user },
  } = await supabase.auth.getUser();
  if (!user) return [];

  const { data, error } = await supabase
    .from("vocabulary_items")
    .select("*")
    .eq("user_id", user.id)
    .lte("next_review_at", new Date().toISOString())
    .order("next_review_at", { ascending: true })
    .limit(limit);

  if (error || !data) return [];
  return data as VocabularyItem[];
}

/**
 * Tout le vocabulaire personnel de l'utilisateur, sans limite ni filtre sur
 * la date de révision — utilisé pour l'export CSV/Anki (l'élève veut
 * pouvoir exporter des mots pas encore dus, pas seulement ceux du jour).
 */
export async function listAllVocabulary(): Promise<VocabularyItem[]> {
  if (!isSupabaseConfigured()) return [];

  const supabase = await createClient();
  const {
    data: { user },
  } = await supabase.auth.getUser();
  if (!user) return [];

  const { data, error } = await supabase
    .from("vocabulary_items")
    .select("*")
    .eq("user_id", user.id)
    .order("added_at", { ascending: false });

  if (error || !data) return [];
  return data as VocabularyItem[];
}

/**
 * Nombre total de mots dans le vocabulaire personnel, combien sont dus, et
 * combien sont "maîtrisés" (boîte 5 — le mot a survécu à 4 révisions
 * espacées sans erreur).
 */
export async function getVocabularyCounts(): Promise<{
  total: number;
  due: number;
  mastered: number;
}> {
  if (!isSupabaseConfigured()) return { total: 0, due: 0, mastered: 0 };

  const supabase = await createClient();
  const {
    data: { user },
  } = await supabase.auth.getUser();
  if (!user) return { total: 0, due: 0, mastered: 0 };

  const [{ count: total }, { count: due }, { count: mastered }] = await Promise.all([
    supabase
      .from("vocabulary_items")
      .select("id", { count: "exact", head: true })
      .eq("user_id", user.id),
    supabase
      .from("vocabulary_items")
      .select("id", { count: "exact", head: true })
      .eq("user_id", user.id)
      .lte("next_review_at", new Date().toISOString()),
    supabase
      .from("vocabulary_items")
      .select("id", { count: "exact", head: true })
      .eq("user_id", user.id)
      .eq("box", 5),
  ]);

  return { total: total ?? 0, due: due ?? 0, mastered: mastered ?? 0 };
}

/**
 * Enregistre le résultat d'une révision et replanifie la prochaine — coeur
 * de la répétition espacée façon Leitner (voir BOX_INTERVAL_DAYS ci-dessus).
 */
export async function reviewVocabularyWord(
  id: string,
  remembered: boolean,
): Promise<VocabularyItem | null> {
  if (!isSupabaseConfigured()) return null;

  const supabase = await createClient();
  const {
    data: { user },
  } = await supabase.auth.getUser();
  if (!user) return null;

  const { data: current } = await supabase
    .from("vocabulary_items")
    .select("box, review_count")
    .eq("id", id)
    .eq("user_id", user.id)
    .maybeSingle();

  if (!current) return null;

  const newBox = remembered ? Math.min(current.box + 1, 5) : 1;

  const { data, error } = await supabase
    .from("vocabulary_items")
    .update({
      box: newBox,
      review_count: current.review_count + 1,
      next_review_at: nextReviewDate(newBox),
    })
    .eq("id", id)
    .eq("user_id", user.id)
    .select("*")
    .maybeSingle();

  if (error || !data) return null;
  return data as VocabularyItem;
}
