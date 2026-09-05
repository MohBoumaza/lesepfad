import Link from "next/link";
import { LevelTestGame } from "@/components/games/level-test-game";

export default function TestNiveauPage() {
  return (
    <main className="mx-auto flex w-full max-w-2xl flex-1 flex-col gap-6 px-6 py-12">
      <header className="flex flex-col gap-2">
        <Link href="/jeux" className="w-fit text-sm text-ink-soft hover:text-accent-strong">
          ← Jeux
        </Link>
        <p className="font-mono text-xs uppercase tracking-widest text-accent">
          Test
        </p>
        <h1 className="font-display text-3xl font-semibold text-ink">
          Test de positionnement
        </h1>
        <p className="text-sm text-ink-soft">
          18 questions, 3 par niveau de A1 à C2, difficulté croissante — pour
          savoir par quel niveau commencer dans la bibliothèque d&apos;histoires.
        </p>
      </header>

      <LevelTestGame />
    </main>
  );
}
