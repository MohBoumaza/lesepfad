import Link from "next/link";

interface GameEntry {
  slug: string | null;
  icon: string;
  title: string;
  description: string;
}

const GAMES: GameEntry[] = [
  {
    slug: "artikel-memory",
    icon: "🃏",
    title: "Artikel-Memory",
    description: "Retrouve les paires nom + article (der/die/das).",
  },
  {
    slug: "satzbau-puzzle",
    icon: "🧩",
    title: "Satzbau-Puzzle",
    description: "Remets les mots d'une phrase dans le bon ordre.",
  },
  {
    slug: "wortschatz-duell",
    icon: "🗂️",
    title: "Wortschatz-Duell",
    description: "Relie mot et traduction le plus vite possible.",
  },
  {
    slug: "konjugation-rennen",
    icon: "⏱️",
    title: "Konjugation-Rennen",
    description: "Conjugue un verbe entier contre la montre.",
  },
  {
    slug: "blitz-quiz",
    icon: "⚡",
    title: "Blitz-Quiz du jour",
    description: "10 questions aléatoires, tous niveaux confondus.",
  },
  {
    slug: "deklination-trainer",
    icon: "🧮",
    title: "Deklination-Trainer",
    description: "Choisis le bon article selon le cas (Nom./Akk./Dat./Gén.).",
  },
  {
    slug: "satzklammer",
    icon: "🪝",
    title: "La Satzklammer",
    description: "Visualise la parenthèse verbale allemande, phrase par phrase.",
  },
  {
    slug: "wechsel-trainer",
    icon: "🧭",
    title: "Wechselpräpositionen",
    description: "Mouvement ou position ? Choisis entre accusatif et datif.",
  },
  {
    slug: "partikel-trainer",
    icon: "✂️",
    title: "Verbes à particule séparable",
    description: "Trouve la particule rejetée à la fin de la phrase.",
  },
  {
    slug: "lexique",
    icon: "📖",
    title: "Lexique grammatical",
    description: "Tous les termes grammaticaux (Dativ, Satzklammer...) expliqués en français.",
  },
  {
    slug: "phrases-survie",
    icon: "🆘",
    title: "Phrases de survie",
    description: "Des phrases toutes faites pour se débrouiller, sans grammaire à analyser.",
  },
  {
    slug: "mnemotechniques",
    icon: "💡",
    title: "Astuces mnémotechniques",
    description: "Des raccourcis pour se décider vite sur les points qui bloquent souvent.",
  },
  {
    slug: "test-niveau",
    icon: "🎯",
    title: "Test de positionnement",
    description: "18 questions, A1 à C2, pour savoir par quel niveau commencer.",
  },
  {
    slug: "production-orale",
    icon: "🎙️",
    title: "Production orale guidée",
    description: "Dis la phrase à voix haute, la reconnaissance vocale corrige.",
  },
];

export default function JeuxPage() {
  return (
    <main className="mx-auto flex w-full max-w-3xl flex-1 flex-col gap-6 px-6 py-12">
      <header className="flex flex-col gap-2">
        <p className="font-mono text-xs uppercase tracking-widest text-accent">
          Jeux
        </p>
        <h1 className="font-display text-3xl font-semibold text-ink">
          Apprendre en jouant
        </h1>
        <p className="text-sm text-ink-soft">
          Des mini-jeux pour pratiquer autrement — aucun compte requis, tout
          se joue directement dans le navigateur.
        </p>
      </header>

      <div className="grid grid-cols-1 gap-4 sm:grid-cols-2">
        {GAMES.map((game) =>
          game.slug ? (
            <Link
              key={game.title}
              href={`/jeux/${game.slug}`}
              className="card-surface card-interactive flex flex-col gap-2 p-5"
            >
              <span className="text-2xl" aria-hidden>
                {game.icon}
              </span>
              <h2 className="font-display text-lg font-semibold text-ink">
                {game.title}
              </h2>
              <p className="text-sm text-ink-soft">{game.description}</p>
            </Link>
          ) : (
            <div
              key={game.title}
              className="card-surface flex flex-col gap-2 p-5 opacity-50"
            >
              <span className="text-2xl" aria-hidden>
                {game.icon}
              </span>
              <h2 className="font-display text-lg font-semibold text-ink">
                {game.title}
              </h2>
              <p className="text-sm text-ink-soft">{game.description}</p>
              <span className="mt-1 w-fit rounded-full bg-surface px-2 py-0.5 font-mono text-[10px] uppercase tracking-widest text-ink-soft">
                Bientôt
              </span>
            </div>
          ),
        )}
      </div>
    </main>
  );
}
