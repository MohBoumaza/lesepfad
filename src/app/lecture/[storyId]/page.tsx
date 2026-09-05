import Link from "next/link";
import { notFound } from "next/navigation";
import { ContextFirstReading } from "@/components/context-first-reading";
import { LevelChip } from "@/components/level-chip";
import { StoryQuestions } from "@/components/story-questions";
import { StoryText } from "@/components/story-text";
import { getStoryForReading } from "@/lib/queries/stories";
import type { Difficulty } from "@/types/database";

const DIFFICULTY_OPTIONS: { value: Difficulty; label: string }[] = [
  { value: "facile", label: "Facile" },
  { value: "normal", label: "Normal" },
  { value: "difficile", label: "Difficile" },
];

function isDifficulty(value: string | undefined): value is Difficulty {
  return value === "facile" || value === "normal" || value === "difficile";
}

export default async function LecturePage({
  params,
  searchParams,
}: PageProps<"/lecture/[storyId]">) {
  const { storyId } = await params;
  const { difficulte } = await searchParams;
  const difficulty: Difficulty = isDifficulty(
    Array.isArray(difficulte) ? difficulte[0] : difficulte,
  )
    ? (Array.isArray(difficulte) ? difficulte[0] : difficulte) as Difficulty
    : "normal";

  const story = await getStoryForReading(storyId, difficulty);

  if (!story) notFound();

  return (
    <main className="mx-auto flex w-full max-w-2xl flex-1 flex-col gap-8 px-6 py-12">
      <header className="flex flex-col gap-3">
        <Link href="/bibliotheque" className="text-sm text-ink-soft hover:text-ink">
          ← Bibliothèque
        </Link>
        <div className="flex items-center justify-between gap-3">
          <h1 lang="de" className="font-display text-2xl font-semibold text-ink">
            {story.title}
          </h1>
          <LevelChip level={story.level_code} />
        </div>
        {story.culture_note && (
          <p className="inline-flex w-fit items-center gap-1 rounded-full bg-accent-tint px-3 py-1 font-mono text-xs uppercase tracking-wide text-accent-strong">
            📚 {story.culture_note}
          </p>
        )}
        <p className="font-mono text-xs text-ink-soft">
          {story.word_count} mots
        </p>
      </header>

      <ContextFirstReading
        storyId={story.id}
        title={story.title}
        cultureNote={story.culture_note}
      >
        <div className="flex flex-col gap-8">
          <StoryText
            body={story.body}
            translationFr={story.translation_fr}
            glossary={story.glossary}
            storyId={story.id}
          />

          <section className="flex flex-col gap-4">
            <div className="flex items-center justify-between gap-3">
              <h2 className="font-display text-xl font-semibold text-ink">
                Questions de compréhension
              </h2>
              <div
                role="group"
                aria-label="Choisir le niveau de difficulté des questions"
                className="flex overflow-hidden rounded-full border border-rule bg-surface font-mono text-xs shadow-[inset_0_1px_2px_rgba(0,0,0,0.04)]"
              >
                {DIFFICULTY_OPTIONS.map((opt) => (
                  <Link
                    key={opt.value}
                    href={`/lecture/${story.id}?difficulte=${opt.value}`}
                    aria-current={opt.value === difficulty ? "true" : undefined}
                    className={`px-3 py-1.5 transition-colors ${
                      opt.value === difficulty
                        ? "btn-primary rounded-full font-semibold"
                        : "text-ink-soft hover:text-ink"
                    }`}
                  >
                    {opt.label}
                  </Link>
                ))}
              </div>
            </div>
            <StoryQuestions
              storyId={story.id}
              questions={story.questions}
              difficulty={difficulty}
            />
          </section>
        </div>
      </ContextFirstReading>
    </main>
  );
}
