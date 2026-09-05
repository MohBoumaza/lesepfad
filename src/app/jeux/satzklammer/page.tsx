import Link from "next/link";
import { SatzklammerVisualizer } from "@/components/games/satzklammer-visualizer";

export default function SatzklammerPage() {
  return (
    <main className="mx-auto flex w-full max-w-2xl flex-1 flex-col gap-6 px-6 py-12">
      <header className="flex flex-col gap-2">
        <Link href="/jeux" className="w-fit text-sm text-ink-soft hover:text-accent-strong">
          ← Jeux
        </Link>
        <p className="font-mono text-xs uppercase tracking-widest text-accent">
          Grammaire visuelle
        </p>
        <h1 className="font-display text-3xl font-semibold text-ink">
          La Satzklammer
        </h1>
        <p className="text-sm text-ink-soft">
          En allemand, le verbe se coupe souvent en deux : une partie reste en
          position 2, l&apos;autre est rejetée tout à la fin de la phrase.
          Cette &laquo; parenthèse verbale &raquo; s&apos;appelle la
          Satzklammer. Fais défiler les exemples pour repérer le schéma.
        </p>
      </header>

      <SatzklammerVisualizer />

      <p className="text-xs text-ink-soft">
        Ces dix phrases sont choisies à la main pour illustrer clairement le
        phénomène — pas une analyse automatique des histoires du site.
      </p>
    </main>
  );
}
