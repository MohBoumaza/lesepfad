"use client";

import { useMemo, useState } from "react";
import { LevelChip } from "@/components/level-chip";
import { bestScoreStorage } from "@/lib/game-utils";
import { QUIZ_QUESTIONS, type QuizQuestion } from "@/lib/game-data/quiz-questions";
import { useMounted } from "@/lib/use-mounted";

const ROUND_SIZE = 10;

/** PRNG déterministe (mulberry32) à partir d'une graine numérique — permet
 * de générer le même quiz « du jour » pour tout le monde, sans backend. */
function mulberry32(seed: number) {
  let a = seed;
  return function () {
    a |= 0;
    a = (a + 0x6d2b79f5) | 0;
    let t = Math.imul(a ^ (a >>> 15), 1 | a);
    t = (t + Math.imul(t ^ (t >>> 7), 61 | t)) ^ t;
    return ((t ^ (t >>> 14)) >>> 0) / 4294967296;
  };
}

function hashString(s: string): number {
  let h = 0;
  for (let i = 0; i < s.length; i++) {
    h = (Math.imul(31, h) + s.charCodeAt(i)) | 0;
  }
  return h;
}

function todayKey(): string {
  return new Date().toISOString().slice(0, 10);
}

function shuffleWithRng<T>(arr: T[], rng: () => number): T[] {
  const a = [...arr];
  for (let i = a.length - 1; i > 0; i--) {
    const j = Math.floor(rng() * (i + 1));
    [a[i], a[j]] = [a[j], a[i]];
  }
  return a;
}

function buildRound(seed: number): (QuizQuestion & { shuffledChoices: QuizQuestion["choices"] })[] {
  const rng = mulberry32(seed);
  const picked = shuffleWithRng(QUIZ_QUESTIONS, rng).slice(0, ROUND_SIZE);
  return picked.map((q) => ({ ...q, shuffledChoices: shuffleWithRng(q.choices, rng) }));
}

const bestStore = bestScoreStorage("blitz-quiz:score");

/** La lecture du meilleur score du jour vient du localStorage : calculable
 * seulement côté client (voir useMounted) — ce composant n'est monté
 * qu'une fois `mounted` vrai, donc pas de risque de hydration mismatch. */
export function BlitzQuizGame() {
  const mounted = useMounted();
  if (!mounted) {
    return <div className="card-surface p-8 text-center text-sm text-ink-soft">Chargement…</div>;
  }
  return <BlitzQuizGameInner />;
}

function BlitzQuizGameInner() {
  const dayKey = useMemo(() => todayKey(), []);
  const [seed, setSeed] = useState(() => hashString(dayKey));
  const [isDaily, setIsDaily] = useState(true);
  const round = useMemo(() => buildRound(seed), [seed]);

  const [index, setIndex] = useState(0);
  const [selected, setSelected] = useState<number | null>(null);
  const [score, setScore] = useState(0);
  const [finished, setFinished] = useState(false);

  const current = round[index];
  const correctIndex = current.shuffledChoices.findIndex((c) => c.correct);

  const dailyBest = isDaily ? bestStore.read(dayKey) : null;

  function answer(choiceIndex: number) {
    if (selected !== null) return;
    setSelected(choiceIndex);
    if (choiceIndex === correctIndex) setScore((s) => s + 1);
  }

  function next() {
    if (index + 1 >= round.length) {
      // `score` est déjà à jour ici : answer() met à jour l'état de façon
      // synchrone avant que next() puisse être cliqué (le bouton n'apparaît
      // qu'après une réponse sélectionnée).
      setFinished(true);
      if (isDaily) {
        const currentBest = bestStore.read(dayKey);
        if (currentBest === null || score > currentBest) {
          bestStore.write(score, dayKey);
        }
      }
      return;
    }
    setIndex((i) => i + 1);
    setSelected(null);
  }

  function restart(daily: boolean) {
    setIsDaily(daily);
    setSeed(daily ? hashString(dayKey) : Math.floor(Math.random() * 1_000_000_000));
    setIndex(0);
    setSelected(null);
    setScore(0);
    setFinished(false);
  }

  if (finished) {
    return (
      <div className="flex flex-col gap-4">
        <div className="card-surface flex flex-col items-center gap-2 p-8 text-center">
          <p className="font-mono text-xs uppercase tracking-widest text-accent">
            {isDaily ? "Défi du jour terminé" : "Partie terminée"}
          </p>
          <p className="font-display text-4xl font-semibold text-ink">
            {score} / {round.length}
          </p>
          {isDaily && dailyBest !== null && (
            <p className="text-sm text-ink-soft">
              🏆 Meilleur score du jour : {dailyBest}/{round.length}
            </p>
          )}
        </div>
        <div className="flex flex-wrap gap-2">
          <button
            type="button"
            onClick={() => restart(true)}
            className="rounded-full border border-rule px-4 py-2 text-sm font-semibold text-ink transition-colors hover:border-accent hover:text-accent-strong"
          >
            🔁 Rejouer le défi du jour
          </button>
          <button
            type="button"
            onClick={() => restart(false)}
            className="btn-primary rounded-full px-5 py-2 font-semibold"
          >
            🎲 Partie aléatoire
          </button>
        </div>
      </div>
    );
  }

  return (
    <div className="flex flex-col gap-5">
      <div className="flex flex-wrap items-center justify-between gap-2 text-sm text-ink-soft">
        <span>
          {isDaily ? "Défi du jour" : "Partie aléatoire"} · Question {index + 1}/{round.length}
        </span>
        <span>
          Score : <strong className="text-ink">{score}</strong>
        </span>
      </div>

      <fieldset className="card-surface p-5">
        <legend className="mb-2 px-1">
          <LevelChip level={current.level} />
        </legend>
        <p lang="de" className="mb-4 text-ink">
          {current.prompt}
        </p>
        <div className="flex flex-col gap-2" role="radiogroup" aria-label={current.prompt}>
          {current.shuffledChoices.map((choice, i) => {
            const isSelected = selected === i;
            const isCorrectChoice = selected !== null && i === correctIndex;
            const isWrongSelection = selected !== null && isSelected && i !== correctIndex;
            const stateClasses = isCorrectChoice
              ? "border-sage bg-sage-tint"
              : isWrongSelection
                ? "border-danger bg-danger-tint"
                : "border-rule hover:border-accent";
            return (
              <button
                key={choice.label}
                type="button"
                role="radio"
                aria-checked={isSelected}
                disabled={selected !== null}
                onClick={() => answer(i)}
                className={`flex items-center gap-3 rounded-md border px-3 py-2 text-left text-sm text-ink transition-colors disabled:cursor-default ${stateClasses}`}
              >
                <span
                  className={`h-4 w-4 flex-none rounded-full border-2 ${
                    isCorrectChoice ? "border-sage bg-sage" : isWrongSelection ? "border-danger bg-danger" : "border-rule"
                  }`}
                />
                <span lang="de">{choice.label}</span>
              </button>
            );
          })}
        </div>
      </fieldset>

      {selected !== null && (
        <button
          type="button"
          onClick={next}
          className="btn-primary self-start rounded-full px-6 py-2.5 font-semibold"
        >
          {index + 1 >= round.length ? "Voir mon résultat" : "Question suivante →"}
        </button>
      )}
    </div>
  );
}
