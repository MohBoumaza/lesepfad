import Link from "next/link";
import { DeklinationTrainerGame } from "@/components/games/deklination-trainer-game";

export default function DeklinationTrainerPage() {
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
          Deklination-Trainer
        </h1>
        <p className="text-sm text-ink-soft">
          Choisis le bon article selon le cas — sujet, complément, ou
          préposition qui déclenche l&apos;accusatif, le datif ou le génitif.
        </p>
      </header>

      <DeklinationTrainerGame />
    </main>
  );
}
