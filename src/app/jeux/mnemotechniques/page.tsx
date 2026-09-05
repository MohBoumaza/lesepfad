import Link from "next/link";
import { Mnemotechniques } from "@/components/games/mnemotechniques";

export default function MnemotechniquesPage() {
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
          Astuces mnémotechniques
        </h1>
        <p className="text-sm text-ink-soft">
          Des raccourcis pour se décider vite dans le doute, sur les points de
          grammaire qui reviennent le plus souvent bloquer.
        </p>
      </header>

      <Mnemotechniques />
    </main>
  );
}
