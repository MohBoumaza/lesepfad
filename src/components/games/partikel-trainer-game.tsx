"use client";

import { useState } from "react";
import { PARTIKEL_ITEMS, type PartikelItem } from "@/lib/game-data/partikel";
import { bestScoreStorage, pickRandom } from "@/lib/game-utils";
import { useMounted } from "@/lib/use-mounted";

const bestStore = bestScoreStorage("partikel-trainer:best-streak");

/** Tirage aléatoire + localStorage : calculables seulement côté client
 * (voir useMounted) — ce composant n'est monté qu'une fois `mounted`
 * vrai, donc pas de risque de hydration mismatch. */
export function PartikelTrainerGame() {
  const mounted = useMounted();
  if (!mounted) {
    return <div className="card-surface p-8 text-center text-sm text-ink-soft">Chargement…</div>;
  }
  return <PartikelTrainerGameInner />;
}

function PartikelTrainerGameInner() {
  const [item, setItem] = useState<PartikelItem>(() => pickRandom(PARTIKEL_ITEMS));
  const [selected, setSelected] = useState<number | null>(null);
  const [streak, setStreak] = useState(0);

  const best = bestStore.read();
  const tokens = item.sentence.split(" ");

  function next() {
    const nextItem = pickRandom(PARTIKEL_ITEMS, item);
    setItem(nextItem);
    setSelected(null);
  }

  function answer(tokenIndex: number) {
    if (selected !== null) return;
    setSelected(tokenIndex);
    const isCorrect = tokenIndex === item.particleIndex;
    const nextStreak = isCorrect ? streak + 1 : 0;
    setStreak(nextStreak);
    if (isCorrect) {
      const currentBest = bestStore.read();
      if (currentBest === null || nextStreak > currentBest) {
        bestStore.write(nextStreak);
      }
    }
  }

  const isCorrect = selected === item.particleIndex;

  return (
    <div className="flex flex-col gap-5">
      <div className="flex items-center gap-2">
        <span className="text-sm text-ink-soft">
          🔥 Série : <strong className="text-ink">{streak}</strong>
          {best !== null && <> · 🏆 {best}</>}
        </span>
      </div>

      <div className="card-surface p-5">
        <p className="mb-4 text-sm text-ink-soft">
          Clique sur la particule séparée de{" "}
          <strong lang="de" className="text-ink">
            {item.infinitive}
          </strong>{" "}
          (« {item.meaning} »).
        </p>

        <div className="flex flex-wrap gap-2" role="group" aria-label="Mots de la phrase">
          {tokens.map((token, i) => {
            const isVerb = selected !== null && i === item.verbIndex;
            const isParticle = selected !== null && i === item.particleIndex;
            const isWrongPick = selected === i && i !== item.particleIndex;
            const stateClasses = isParticle
              ? "border-sage bg-sage-tint text-ink"
              : isWrongPick
                ? "border-danger bg-danger-tint text-ink"
                : isVerb
                  ? "border-accent bg-accent-tint text-accent-strong"
                  : "border-rule text-ink hover:border-accent";
            return (
              <button
                key={i}
                type="button"
                lang="de"
                disabled={selected !== null}
                onClick={() => answer(i)}
                className={`rounded-md border px-3 py-2 text-base font-medium transition-colors disabled:cursor-default ${stateClasses}`}
              >
                {token}
              </button>
            );
          })}
        </div>
      </div>

      {selected !== null && (
        <div
          className={`card-surface p-4 text-sm ${isCorrect ? "border-sage bg-sage-tint" : "border-danger bg-danger-tint"}`}
        >
          <p className="mb-1 font-medium text-ink">
            {isCorrect ? "✅ Correct !" : "Pas tout à fait."}
          </p>
          <p className="text-ink-soft">{item.explanation}</p>
        </div>
      )}

      {selected !== null && (
        <button
          type="button"
          onClick={next}
          className="btn-primary self-start rounded-full px-6 py-2.5 font-semibold"
        >
          Phrase suivante →
        </button>
      )}
    </div>
  );
}
