import Link from "next/link";
import { PartikelTrainerGame } from "@/components/games/partikel-trainer-game";

export default function PartikelTrainerPage() {
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
          Verbes à particule séparable
        </h1>
        <p className="text-sm text-ink-soft">
          einkaufen, aufstehen, ankommen... Le verbe se coupe en deux : trouve
          la particule qui a été rejetée à la fin de la phrase.
        </p>
      </header>

      <PartikelTrainerGame />
    </main>
  );
}
