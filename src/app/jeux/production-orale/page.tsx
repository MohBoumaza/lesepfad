import Link from "next/link";
import { ProductionOraleGame } from "@/components/games/production-orale-game";

export default function ProductionOralePage() {
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
          Production orale guidée
        </h1>
        <p className="text-sm text-ink-soft">
          Une consigne en français, une phrase allemande à dire à voix haute
          — ton micro et la reconnaissance vocale de ton navigateur font le
          reste.
        </p>
      </header>

      <ProductionOraleGame />
    </main>
  );
}
