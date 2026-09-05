import { createClient } from "@/lib/supabase/server";
import { isSupabaseConfigured } from "@/lib/supabase/is-configured";
import type { ProgressStatus } from "@/types/database";

export interface SaveProgressResult {
  saved: boolean;
  reason?: "not_configured" | "not_authenticated" | "error";
}

/**
 * Enregistre l'avancement d'un utilisateur sur une histoire. Ne fait rien
 * si Supabase n'est pas configuré ou si personne n'est connecté — dans les
 * deux cas l'écran de résultats reste utilisable, seule la persistance est
 * sautée (voir `reason` pour l'expliquer côté UI si besoin).
 */
export async function saveProgress(
  storyId: string,
  status: ProgressStatus,
  score?: number,
): Promise<SaveProgressResult> {
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

  const { error } = await supabase.from("progress").upsert(
    {
      user_id: user.id,
      story_id: storyId,
      status,
      score: score ?? null,
      completed_at: status === "completed" ? new Date().toISOString() : null,
    },
    { onConflict: "user_id,story_id" },
  );

  return error ? { saved: false, reason: "error" } : { saved: true };
}

/** Progression d'un utilisateur sur une histoire donnée, pour /resultats. */
export async function getProgress(storyId: string) {
  if (!isSupabaseConfigured()) return null;

  const supabase = await createClient();
  const {
    data: { user },
  } = await supabase.auth.getUser();
  if (!user) return null;

  const { data } = await supabase
    .from("progress")
    .select("status, score")
    .eq("user_id", user.id)
    .eq("story_id", storyId)
    .maybeSingle();

  return data;
}
