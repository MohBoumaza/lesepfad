import Link from "next/link";
import { WechselTrainerGame } from "@/components/games/wechsel-trainer-game";

export default function WechselTrainerPage() {
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
          Wechselpräpositionen
        </h1>
        <p className="text-sm text-ink-soft">
          an, auf, hinter, in, neben, über, unter, vor, zwischen : mouvement
          (wohin ?) → accusatif, position fixe (wo ?) → datif. Choisis le bon
          article selon le sens de la phrase.
        </p>
      </header>

      <WechselTrainerGame />
    </main>
  );
}
