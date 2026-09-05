import Link from "next/link";
import { KonjugationRennenGame } from "@/components/games/konjugation-rennen-game";

export default function KonjugationRennenPage() {
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
          Konjugation-Rennen
        </h1>
        <p className="text-sm text-ink-soft">
          Conjugue le verbe au présent pour les 6 personnes, le plus vite
          possible.
        </p>
      </header>

      <KonjugationRennenGame />
    </main>
  );
}
