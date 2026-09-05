import { createAdminClient } from "@/lib/supabase/admin";
import { createClient } from "@/lib/supabase/server";
import { isSupabaseConfigured } from "@/lib/supabase/is-configured";
import { MOCK_CORRECT_CHOICE_BY_QUESTION } from "@/lib/mock-data";

export interface AnswerVerdict {
  correct: boolean;
  correctChoiceId: string;
}

/**
 * Détermine si `choiceId` est la bonne réponse à `questionId`, et
 * enregistre la tentative si l'utilisateur est connecté (les invités
 * peuvent quand même voir la correction, mais rien n'est sauvegardé).
 *
 * Utilise le client admin (service_role) pour lire `is_correct` : c'est
 * la seule requête du projet qui a besoin de contourner la RLS de
 * `choices`, précisément pour ne jamais exposer cette colonne au client
 * avant qu'il ait répondu.
 */
export async function recordAnswer(
  questionId: string,
  choiceId: string,
): Promise<AnswerVerdict | null> {
  if (!isSupabaseConfigured()) {
    const correctChoiceId = MOCK_CORRECT_CHOICE_BY_QUESTION[questionId];
    if (!correctChoiceId) return null;
    return { correct: choiceId === correctChoiceId, correctChoiceId };
  }

  const admin = createAdminClient();

  const { data: choices, error } = await admin
    .from("choices")
    .select("id, is_correct")
    .eq("question_id", questionId);

  if (error || !choices?.length) return null;

  const correctChoice = choices.find((c) => c.is_correct);
  if (!correctChoice) return null;

  const isCorrect = choiceId === correctChoice.id;

  const supabase = await createClient();
  const {
    data: { user },
  } = await supabase.auth.getUser();

  if (user) {
    // Une seule réponse retenue par question (voir la contrainte unique
    // (user_id, question_id) dans 0001_init.sql) : on écrase la
    // précédente tentative plutôt que d'en accumuler plusieurs.
    await supabase.from("answers").upsert(
      {
        user_id: user.id,
        question_id: questionId,
        choice_id: choiceId,
        is_correct: isCorrect,
      },
      { onConflict: "user_id,question_id" },
    );
  }

  return { correct: isCorrect, correctChoiceId: correctChoice.id };
}
