import Link from "next/link";
import { BlitzQuizGame } from "@/components/games/blitz-quiz-game";

export default function BlitzQuizPage() {
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
          Blitz-Quiz du jour
        </h1>
        <p className="text-sm text-ink-soft">
          10 questions de langue et de culture allemande, tous niveaux
          confondus — le même défi pour tout le monde aujourd&apos;hui.
        </p>
      </header>

      <BlitzQuizGame />
    </main>
  );
}
