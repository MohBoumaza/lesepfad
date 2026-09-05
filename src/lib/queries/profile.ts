import { createClient } from "@/lib/supabase/server";
import { isSupabaseConfigured } from "@/lib/supabase/is-configured";
import type { LevelCode } from "@/types/database";

export interface SetTargetLevelResult {
  saved: boolean;
  reason?: "not_configured" | "not_authenticated" | "error";
}

/**
 * Enregistre le niveau cible de l'utilisateur (issu par ex. du test de
 * positionnement), utilisé par `profiles.target_level` pour les
 * recommandations de niveau ailleurs dans l'app.
 */
export async function setTargetLevel(level: LevelCode): Promise<SetTargetLevelResult> {
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

  // `.update()` sur une ligne `profiles` qui n'existe pas encore ne renvoie
  // aucune erreur (0 ligne affectée = succès pour Postgres/PostgREST) : on
  // obtenait donc `{ saved: true }` alors que rien n'était enregistré.
  // `.upsert()` crée la ligne si besoin (voir aussi le trigger de
  // 0025_profiles_autocreate.sql qui la crée dès l'inscription, en
  // filet de sécurité).
  const { error } = await supabase
    .from("profiles")
    .upsert({ id: user.id, target_level: level }, { onConflict: "id" });

  return error ? { saved: false, reason: "error" } : { saved: true };
}
