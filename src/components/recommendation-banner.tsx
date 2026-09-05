"use client";

import Link from "next/link";
import { useState } from "react";
import type { Recommendation } from "@/lib/queries/recommendations";

const KIND_ICON: Record<Recommendation["kind"], string> = {
  level_up: "🚀",
  level_down: "🌿",
  try_harder: "🔥",
  try_easier: "🧭",
};

/** Bandeau discret, basé sur les vraies performances de l'utilisateur (voir
 * getRecommendation) — jamais affiché sans données suffisantes. */
export function RecommendationBanner({
  recommendation,
}: {
  recommendation: Recommendation | null;
}) {
  const [dismissed, setDismissed] = useState(false);
  if (!recommendation || dismissed) return null;

  const showLevelLink =
    (recommendation.kind === "level_up" || recommendation.kind === "level_down") &&
    recommendation.targetLevelCode;

  return (
    <div className="card-surface flex items-start gap-3 border-accent/40 bg-accent-tint/40 p-4">
      <span className="text-xl" aria-hidden>
        {KIND_ICON[recommendation.kind]}
      </span>
      <div className="flex flex-1 flex-col gap-2">
        <p className="text-sm text-ink">{recommendation.message}</p>
        {showLevelLink && (
          <Link
            href={`/bibliotheque?level=${recommendation.targetLevelCode}`}
            className="w-fit rounded-full border border-accent px-3 py-1 font-mono text-xs font-semibold text-accent-strong transition-colors hover:bg-accent-tint"
          >
            Voir le niveau {recommendation.targetLevelCode}
          </Link>
        )}
      </div>
      <button
        type="button"
        onClick={() => setDismissed(true)}
        aria-label="Fermer la suggestion"
        className="text-ink-soft hover:text-ink"
      >
        ✕
      </button>
    </div>
  );
}
