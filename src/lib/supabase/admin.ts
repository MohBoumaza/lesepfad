import "server-only";
import { createClient as createSupabaseClient } from "@supabase/supabase-js";

/**
 * Client Supabase avec la clé service_role — contourne les policies RLS.
 *
 * Usage unique dans ce projet : lire `choices.is_correct` côté serveur pour
 * noter une réponse (routes /api/answers, /api/progress), sans jamais
 * exposer cette colonne au client avant correction. Ne JAMAIS importer ce
 * module depuis un Client Component (le `import "server-only"` fait
 * échouer le build si c'est le cas).
 */
export function createAdminClient() {
  return createSupabaseClient(
    process.env.NEXT_PUBLIC_SUPABASE_URL!,
    process.env.SUPABASE_SERVICE_ROLE_KEY!,
    { auth: { persistSession: false } },
  );
}
