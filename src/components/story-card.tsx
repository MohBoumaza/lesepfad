import Link from "next/link";
import { LevelChip, levelColor } from "@/components/level-chip";
import { ProgressBar } from "@/components/progress-bar";
import { estimateStoryMinutes } from "@/lib/estimate-time";
import type { LevelCode, ProgressStatus } from "@/types/database";

export interface StoryCardData {
  id: string;
  title: string;
  levelCode: LevelCode;
  wordCount: number;
  questionCount: number;
  answeredCount: number;
  status: ProgressStatus | "not_started";
  /** Badge ex. "Conte des frères Grimm" pour les histoires inspirées du
   * patrimoine culturel allemand. Undefined/null pour les autres. */
  cultureNote?: string | null;
}

const STATUS_LABEL: Record<StoryCardData["status"], string> = {
  not_started: "Pas commencée",
  in_progress: "En cours",
  completed: "Terminée",
};

export function StoryCard({ story }: { story: StoryCardData }) {
  const progressPct =
    story.questionCount === 0
      ? 0
      : Math.round((story.answeredCount / story.questionCount) * 100);
  const estimatedMinutes = estimateStoryMinutes(
    story.levelCode,
    story.wordCount,
    story.questionCount,
  );

  return (
    <Link
      href={`/lecture/${story.id}`}
      className="card-surface card-interactive group relative flex flex-col gap-2.5 overflow-hidden p-5"
    >
      <span
        className="absolute inset-x-0 top-0 h-1"
        style={{ background: levelColor(story.levelCode) }}
        aria-hidden
      />
      <div className="flex items-center justify-between gap-3">
        <h3
          lang="de"
          className="font-display text-lg font-semibold text-ink transition-colors group-hover:text-accent-strong"
        >
          {story.title}
        </h3>
        <LevelChip level={story.levelCode} />
      </div>
      {story.cultureNote && (
        <p className="inline-flex w-fit items-center gap-1 rounded-full bg-accent-tint px-2.5 py-0.5 font-mono text-[0.68rem] uppercase tracking-wide text-accent-strong">
          📚 {story.cultureNote}
        </p>
      )}
      <p className="text-sm text-ink-soft">
        {story.wordCount} mots · {story.questionCount} questions · ~{estimatedMinutes} min
      </p>
      <ProgressBar value={progressPct} />
      <p className="text-sm text-ink-soft">
        {STATUS_LABEL[story.status]}
        {story.status === "in_progress" &&
          ` — ${story.answeredCount}/${story.questionCount} questions`}
      </p>
    </Link>
  );
}
