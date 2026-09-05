import Link from "next/link";
import { VocabularyExport } from "@/components/vocabulary-export";
import { VocabularyReview } from "@/components/vocabulary-review";
import {
  getVocabularyCounts,
  listAllVocabulary,
  listDueVocabulary,
} from "@/lib/queries/vocabulary";
import { isSupabaseConfigured } from "@/lib/supabase/is-configured";
import { createClient } from "@/lib/supabase/server";

export default async function VocabulairePage() {
  const configured = isSupabaseConfigured();
  const user = configured ? await getUser() : null;

  if (!configured || !user) {
    return (
      <main className="mx-auto flex w-full max-w-md flex-1 flex-col gap-4 px-6 py-14 text-center">
        <p className="font-mono text-xs uppercase tracking-widest text-accent">
          Vocabulaire
        </p>
        <h1 className="font-display text-2xl font-semibold text-ink">
          Connecte-toi pour garder ton vocabulaire
        </h1>
        <p className="text-sm text-ink-soft">
          Les mots que tu ajoutes depuis les histoires (bouton « + » dans le
          glossaire) sont liés à ton compte, pour te les faire réviser au bon
          moment — {!configured ? "indisponible en mode démo." : "connecte-toi d'abord."}
        </p>
        {configured && (
          <Link
            href="/connexion"
            className="btn-primary self-center rounded-full px-5 py-2 font-semibold"
          >
            Se connecter
          </Link>
        )}
      </main>
    );
  }

  const [counts, dueItems, allItems] = await Promise.all([
    getVocabularyCounts(),
    listDueVocabulary(20),
    listAllVocabulary(),
  ]);

  return (
    <main className="mx-auto flex w-full max-w-md flex-1 flex-col gap-6 px-6 py-12">
      <header className="flex flex-col gap-2">
        <p className="font-mono text-xs uppercase tracking-widest text-accent">
          Vocabulaire
        </p>
        <h1 className="font-display text-3xl font-semibold text-ink">
          Révision du jour
        </h1>
        <p className="text-sm text-ink-soft">
          {counts.total} mot{counts.total > 1 ? "s" : ""} enregistré
          {counts.total > 1 ? "s" : ""} · {counts.due} à réviser aujourd&apos;hui
        </p>
      </header>

      <VocabularyReview items={dueItems} />

      <div className="flex flex-col gap-2 border-t border-rule-soft pt-5">
        <p className="text-xs uppercase tracking-widest text-ink-soft">
          Exporter mes {counts.total} mot{counts.total > 1 ? "s" : ""}
        </p>
        <VocabularyExport items={allItems} />
      </div>
    </main>
  );
}

async function getUser() {
  const supabase = await createClient();
  const {
    data: { user },
  } = await supabase.auth.getUser();
  return user;
}
