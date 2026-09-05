import Link from "next/link";
import { SatzbauPuzzleGame } from "@/components/games/satzbau-puzzle-game";

export default function SatzbauPuzzlePage() {
  return (
    <main className="mx-auto flex w-full max-w-2xl flex-1 flex-col gap-6 px-6 py-12">
      <header className="flex flex-col gap-2">
        <Link href="/jeux" className="w-fit text-sm text-ink-soft hover:text-accent-strong">
          ← Jeux
        </Link>
        <p className="font-mono text-xs uppercase tracking-widest text-accent">
          Jeu
        </p>
        <h1 className="font-display text-3xl font-semibold text-ink">
          Satzbau-Puzzle
        </h1>
        <p className="text-sm text-ink-soft">
          Remets les mots dans le bon ordre — la place du verbe est souvent
          la clé en allemand.
        </p>
      </header>

      <SatzbauPuzzleGame />
    </main>
  );
}
