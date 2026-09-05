import Link from "next/link";
import { PhrasesSurvie } from "@/components/games/phrases-survie";

export default function PhrasesSurviePage() {
  return (
    <main className="mx-auto flex w-full max-w-2xl flex-1 flex-col gap-6 px-6 py-12">
      <header className="flex flex-col gap-2">
        <Link href="/jeux" className="w-fit text-sm text-ink-soft hover:text-accent-strong">
          ← Jeux
        </Link>
        <p className="font-mono text-xs uppercase tracking-widest text-accent">
          Référence
        </p>
        <h1 className="font-display text-3xl font-semibold text-ink">
          Phrases de survie
        </h1>
        <p className="text-sm text-ink-soft">
          Pas besoin de conjuguer ni de décliner : ces phrases toutes faites
          suffisent pour se débrouiller dans une vraie situation. Clique sur
          🔊 pour écouter la prononciation.
        </p>
      </header>

      <PhrasesSurvie />
    </main>
  );
}
