import Link from "next/link";
import { levelColor } from "@/components/level-chip";
import { ProgressBar } from "@/components/progress-bar";
import { listStoriesForLibrary } from "@/lib/queries/stories";
import type { LevelCode } from "@/types/database";

const LEVELS: { code: LevelCode; description: string; icon: string }[] = [
  { code: "A1", description: "Premiers pas", icon: "🌱" },
  { code: "A2", description: "Phrases simples", icon: "🌿" },
  { code: "B1", description: "Vie quotidienne", icon: "🗝️" },
  { code: "B2", description: "Sujets abstraits", icon: "🧭" },
  { code: "C1", description: "Textes complexes", icon: "📖" },
  { code: "C2", description: "Quasi natif", icon: "🏛️" },
];

export default async function AccueilPage() {
  const stories = await listStoriesForLibrary(null);

  const progressByLevel = new Map<LevelCode, { done: number; total: number }>();
  for (const story of stories) {
    const entry = progressByLevel.get(story.levelCode) ?? { done: 0, total: 0 };
    entry.total += 1;
    if (story.status === "completed") entry.done += 1;
    progressByLevel.set(story.levelCode, entry);
  }

  return (
    <main className="mx-auto flex w-full max-w-3xl flex-1 flex-col gap-10 px-6 py-14">
      <header className="flex flex-col gap-3">
        <p className="font-mono text-xs uppercase tracking-widest text-accent">
          Lesepfad
        </p>
        <h1 className="font-display text-4xl font-semibold text-ink">
          Choisis ton niveau
        </h1>
        <p className="max-w-lg text-ink-soft">
          Des histoires en allemand calibrées par niveau CECR, avec des
          questions pour vérifier ta compréhension — et une voix pour les
          écouter.
        </p>
      </header>

      <ul className="grid grid-cols-2 gap-4 sm:grid-cols-3">
        {LEVELS.map((level) => {
          const progress = progressByLevel.get(level.code);
          const pct =
            progress && progress.total > 0
              ? Math.round((progress.done / progress.total) * 100)
              : 0;
          return (
            <li key={level.code}>
              <Link
                href={`/bibliotheque?level=${level.code}`}
                className="card-surface card-interactive group relative flex flex-col items-start gap-3 overflow-hidden p-5"
              >
                <span
                  className="absolute inset-x-0 top-0 h-1"
                  style={{ background: levelColor(level.code) }}
                  aria-hidden
                />
                <div className="flex w-full items-center justify-between">
                  <span className="text-2xl" aria-hidden>
                    {level.icon}
                  </span>
                  <span
                    className="font-mono text-sm font-bold tracking-wide"
                    style={{ color: levelColor(level.code) }}
                  >
                    {level.code}
                  </span>
                </div>
                <div className="flex flex-col gap-1">
                  <span className="font-display text-base font-semibold text-ink transition-colors group-hover:text-accent-strong">
                    {level.description}
                  </span>
                  {progress && progress.total > 0 && (
                    <span className="font-mono text-xs text-ink-soft">
                      {progress.done}/{progress.total} terminées
                    </span>
                  )}
                </div>
                {progress && progress.total > 0 && <ProgressBar value={pct} />}
              </Link>
            </li>
          );
        })}
      </ul>
    </main>
  );
}
