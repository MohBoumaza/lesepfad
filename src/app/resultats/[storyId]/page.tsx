import Link from "next/link";
import { notFound } from "next/navigation";
import { ProgressBar } from "@/components/progress-bar";
import { getProgress } from "@/lib/queries/progress";
import { getStoryForReading } from "@/lib/queries/stories";
import { isSupabaseConfigured } from "@/lib/supabase/is-configured";
import type { Difficulty } from "@/types/database";

function isDifficulty(value: string | undefined): value is Difficulty {
  return value === "facile" || value === "normal" || value === "difficile";
}

export default async function ResultatsPage({
  params,
  searchParams,
}: PageProps<"/resultats/[storyId]">) {
  const { storyId } = await params;
  const { score: scoreParam, difficulte } = await searchParams;
  const difficultyParam = Array.isArray(difficulte) ? difficulte[0] : difficulte;
  const difficulty: Difficulty = isDifficulty(difficultyParam)
    ? difficultyParam
    : "normal";
  const story = await getStoryForReading(storyId, difficulty);

  if (!story) notFound();

  // La production écrite n'est pas notée (pas de correction automatique) :
  // elle ne compte pas dans le dénominateur du score.
  const gradedQuestions = story.questions.filter((q) => q.category !== "production");
  const total = gradedQuestions.length;

  // La progression persistée (utilisateur connecté) fait foi ; sinon on
  // retombe sur le score transmis par l'URL juste après la lecture
  // (voir StoryQuestions.finish) — utile pour un invité non connecté.
  const progress = await getProgress(storyId);
  const parsedParam = Number(scoreParam);
  const rawScore = progress?.score ?? (Number.isFinite(parsedParam) ? parsedParam : total);
  const score = Math.min(total, Math.max(0, rawScore));
  const pct = total === 0 ? 0 : Math.round((score / total) * 100);

  return (
    <main className="mx-auto flex w-full max-w-md flex-1 flex-col gap-6 px-6 py-12">
      <div className="card-surface flex flex-col gap-4 p-7">
        <p className="font-mono text-xs uppercase tracking-widest text-accent">
          Résultat
        </p>
        <h1 className="font-display text-4xl font-semibold text-ink">
          {score} / {total}
          <span className="ml-2 text-lg font-normal text-ink-soft">
            bonnes réponses
          </span>
        </h1>
        <ProgressBar value={pct} />
        <p lang="de" className="text-ink-soft">
          {story.title}
        </p>
        {/* Ce rappel ne concerne que le vrai mode connecté — en mode démo
            (Supabase non configuré), il n'y a de toute façon pas de compte
            à créer, donc pas lieu de le suggérer ici. */}
        {isSupabaseConfigured() && !progress && (
          <p className="font-mono text-xs text-ink-soft">
            Connecte-toi pour retrouver ce score plus tard.
          </p>
        )}
      </div>

      <div className="flex gap-3">
        <Link
          href="/bibliotheque"
          className="rounded-full border border-rule px-5 py-2 font-semibold text-ink transition-colors hover:border-accent hover:text-accent-strong"
        >
          Retour à la bibliothèque
        </Link>
        <Link
          href={`/lecture/${story.id}?difficulte=${difficulty}`}
          className="btn-primary rounded-full px-5 py-2 font-semibold"
        >
          Relire l&apos;histoire
        </Link>
      </div>
    </main>
  );
}
