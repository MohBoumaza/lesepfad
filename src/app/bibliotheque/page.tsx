import Link from "next/link";
import { StoryCard } from "@/components/story-card";
import { levelColor } from "@/components/level-chip";
import { RecommendationBanner } from "@/components/recommendation-banner";
import { listStoriesForLibrary } from "@/lib/queries/stories";
import { getRecommendation } from "@/lib/queries/recommendations";
import type { LevelCode } from "@/types/database";

const LEVELS: LevelCode[] = ["A1", "A2", "B1", "B2", "C1", "C2"];

export default async function BibliothequePage({
  searchParams,
}: PageProps<"/bibliotheque">) {
  const { level } = await searchParams;
  const activeLevel = (Array.isArray(level) ? level[0] : level) as
    | LevelCode
    | undefined;

  const [stories, recommendation] = await Promise.all([
    listStoriesForLibrary(activeLevel ?? null),
    getRecommendation(),
  ]);

  return (
    <main className="mx-auto flex w-full max-w-3xl flex-1 flex-col gap-6 px-6 py-12">
      <RecommendationBanner recommendation={recommendation} />

      <header className="flex flex-col gap-3">
        <p className="font-mono text-xs uppercase tracking-widest text-accent">
          Bibliothèque
        </p>
        <h1 className="font-display text-3xl font-semibold text-ink">
          Histoires disponibles
        </h1>

        <nav
          aria-label="Filtrer par niveau"
          className="flex flex-wrap gap-2 pt-1"
        >
          <Link
            href="/bibliotheque"
            className={`rounded-full border px-3 py-1.5 font-mono text-xs font-semibold tracking-wide transition-colors ${
              !activeLevel
                ? "border-transparent bg-ink text-bg"
                : "border-rule text-ink-soft hover:border-accent hover:text-accent-strong"
            }`}
          >
            Tous
          </Link>
          {LEVELS.map((code) => {
            const active = activeLevel === code;
            return (
              <Link
                key={code}
                href={`/bibliotheque?level=${code}`}
                className={
                  active
                    ? "rounded-full border border-transparent px-3 py-1.5 font-mono text-xs font-semibold tracking-wide text-white transition-colors"
                    : "rounded-full border border-rule px-3 py-1.5 font-mono text-xs font-semibold tracking-wide text-ink-soft transition-colors hover:border-accent hover:text-accent-strong"
                }
                style={active ? { background: levelColor(code) } : undefined}
              >
                {code}
              </Link>
            );
          })}
        </nav>
      </header>

      {stories.length === 0 ? (
        <p className="text-ink-soft">
          Aucune histoire à ce niveau pour l&apos;instant.
        </p>
      ) : (
        <div className="grid grid-cols-1 gap-4 sm:grid-cols-2">
          {stories.map((story) => (
            <StoryCard key={story.id} story={story} />
          ))}
        </div>
      )}
    </main>
  );
}
