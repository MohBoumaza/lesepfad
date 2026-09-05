"use client";

import { useMemo, useState } from "react";
import Link from "next/link";
import { LevelChip } from "@/components/level-chip";
import { buildLevelTest, recommendLevel, LEVEL_ORDER } from "@/lib/level-test";
import { useMounted } from "@/lib/use-mounted";
import type { LevelCode } from "@/types/database";

const QUESTIONS_PER_LEVEL = 3;

type SaveState = "idle" | "saving" | "saved" | "unavailable";

/** Le tirage des questions est aléatoire (voir buildLevelTest) : calculable
 * seulement côté client (voir useMounted) — ce composant n'est monté
 * qu'une fois `mounted` vrai, donc pas de risque de hydration mismatch. */
export function LevelTestGame() {
  const mounted = useMounted();
  if (!mounted) {
    return <div className="card-surface p-8 text-center text-sm text-ink-soft">Chargement…</div>;
  }
  return <LevelTestGameInner />;
}

function LevelTestGameInner() {
  const [round, setRound] = useState(() => buildLevelTest());
  const [index, setIndex] = useState(0);
  const [selected, setSelected] = useState<number | null>(null);
  const [correctByLevel, setCorrectByLevel] = useState<Record<LevelCode, number>>(
    {} as Record<LevelCode, number>,
  );
  const [finished, setFinished] = useState(false);
  const [saveState, setSaveState] = useState<SaveState>("idle");

  const current = round[index];
  const correctIndex = current.shuffledChoices.findIndex((c) => c.correct);
  const recommended = useMemo(() => recommendLevel(correctByLevel), [correctByLevel]);

  function answer(choiceIndex: number) {
    if (selected !== null) return;
    setSelected(choiceIndex);
    if (choiceIndex === correctIndex) {
      setCorrectByLevel((prev) => ({
        ...prev,
        [current.level]: (prev[current.level] ?? 0) + 1,
      }));
    }
  }

  function next() {
    if (index + 1 >= round.length) {
      setFinished(true);
      return;
    }
    setIndex((i) => i + 1);
    setSelected(null);
  }

  function restart() {
    setRound(buildLevelTest());
    setIndex(0);
    setSelected(null);
    setCorrectByLevel({} as Record<LevelCode, number>);
    setFinished(false);
    setSaveState("idle");
  }

  async function saveLevel() {
    setSaveState("saving");
    try {
      const res = await fetch("/api/profile/target-level", {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({ level: recommended }),
      });
      const data: { saved: boolean } = await res.json();
      setSaveState(data.saved ? "saved" : "unavailable");
    } catch {
      setSaveState("unavailable");
    }
  }

  if (finished) {
    return (
      <div className="flex flex-col gap-5">
        <div className="card-surface flex flex-col items-center gap-3 p-8 text-center">
          <p className="font-mono text-xs uppercase tracking-widest text-accent">
            Niveau recommandé
          </p>
          <LevelChip level={recommended} />
          <p className="max-w-sm text-sm text-ink-soft">
            Basé sur tes réponses : commence par des histoires de ce niveau,
            tu pourras toujours ajuster en cours de route.
          </p>
        </div>

        <div className="card-surface flex flex-col gap-2 p-4">
          <p className="mb-1 font-mono text-[0.68rem] uppercase tracking-widest text-ink-soft">
            Détail par niveau
          </p>
          {LEVEL_ORDER.map((level) => (
            <div key={level} className="flex items-center justify-between text-sm">
              <LevelChip level={level} />
              <span className="text-ink-soft">
                {correctByLevel[level] ?? 0} / {QUESTIONS_PER_LEVEL}
              </span>
            </div>
          ))}
        </div>

        <div className="flex flex-wrap gap-2">
          <Link
            href={`/bibliotheque?level=${recommended}`}
            className="btn-primary rounded-full px-5 py-2.5 font-semibold"
          >
            Voir les histoires niveau {recommended}
          </Link>
          <button
            type="button"
            onClick={restart}
            className="rounded-full border border-rule px-4 py-2.5 text-sm font-semibold text-ink transition-colors hover:border-accent hover:text-accent-strong"
          >
            🔁 Refaire le test
          </button>
        </div>

        <div className="flex flex-col gap-1.5">
          <button
            type="button"
            onClick={saveLevel}
            disabled={saveState === "saving" || saveState === "saved"}
            className="self-start rounded-full border border-accent px-4 py-2 text-sm font-semibold text-accent-strong transition-colors hover:bg-accent-tint disabled:opacity-60"
          >
            {saveState === "saved" ? "✓ Niveau enregistré" : "Enregistrer comme mon niveau"}
          </button>
          {saveState === "unavailable" && (
            <p className="text-xs text-ink-soft">
              Connecte-toi pour garder ce niveau sur ton profil.
            </p>
          )}
        </div>
      </div>
    );
  }

  return (
    <div className="flex flex-col gap-5">
      <div className="flex flex-wrap items-center justify-between gap-2 text-sm text-ink-soft">
        <span>
          Question {index + 1}/{round.length}
        </span>
        <LevelChip level={current.level} />
      </div>

      <fieldset className="card-surface p-5">
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
                    isCorrectChoice
                      ? "border-sage bg-sage"
                      : isWrongSelection
                        ? "border-danger bg-danger"
                        : "border-rule"
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
