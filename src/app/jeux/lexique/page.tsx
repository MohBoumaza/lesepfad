import Link from "next/link";
import { LexiqueGrammatical } from "@/components/games/lexique-grammatical";

export default function LexiquePage() {
  return (
    <main className="mx-auto flex w-full max-w-3xl flex-1 flex-col gap-6 px-6 py-12">
      <header className="flex flex-col gap-2">
        <Link href="/jeux" className="w-fit text-sm text-ink-soft hover:text-accent-strong">
          ← Jeux
        </Link>
        <p className="font-mono text-xs uppercase tracking-widest text-accent">
          Référence
        </p>
        <h1 className="font-display text-3xl font-semibold text-ink">
          Lexique grammatical
        </h1>
        <p className="text-sm text-ink-soft">
          Tous les termes grammaticaux utilisés dans les jeux, expliqués
          simplement en français — pas besoin de deviner ce que veut dire
          « Wechselpräposition » ou « Satzklammer ».
        </p>
      </header>

      <LexiqueGrammatical />
    </main>
  );
}
