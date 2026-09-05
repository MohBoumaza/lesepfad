"use client";

import { useState } from "react";
import {
  declensionItemsFor,
  type DeclensionItem,
  type GrammarCase,
} from "@/lib/game-data/declension";
import { bestScoreStorage, pickRandom, shuffle } from "@/lib/game-utils";
import { useMounted } from "@/lib/use-mounted";

const CASE_FILTERS: (GrammarCase | "Tous")[] = ["Tous", "Nominativ", "Akkusativ", "Dativ", "Genitiv"];

const CASE_COLOR: Record<GrammarCase, string> = {
  Nominativ: "var(--color-sage)",
  Akkusativ: "var(--color-accent)",
  Dativ: "var(--color-level-b2)",
  Genitiv: "var(--color-level-c1)",
};

const bestStore = bestScoreStorage("deklination-trainer:best-streak");

/** Le tirage aléatoire et la lecture du localStorage (meilleure série) ne
 * peuvent être calculés que côté client — voir useMounted. Ce composant
 * n'est monté qu'une fois `mounted` vrai, donc son premier rendu n'a lieu
 * que dans le navigateur : pas de risque de hydration mismatch. */
export function DeklinationTrainerGame() {
  const mounted = useMounted();
  if (!mounted) {
    return <div className="card-surface p-8 text-center text-sm text-ink-soft">Chargement…</div>;
  }
  return <DeklinationTrainerGameInner />;
}

function DeklinationTrainerGameInner() {
  const [caseFilter, setCaseFilter] = useState<GrammarCase | "Tous">("Tous");
  const [item, setItem] = useState<DeclensionItem>(() => pickRandom(declensionItemsFor("Tous")));
  const [choices, setChoices] = useState<string[]>(() => shuffle(item.options));
  const [selected, setSelected] = useState<string | null>(null);
  const [streak, setStreak] = useState(0);

  const best = bestStore.read(caseFilter);

  function newItem(nextFilter: GrammarCase | "Tous" = caseFilter, keepStreak = true) {
    const pool = declensionItemsFor(nextFilter);
    const next = pickRandom(pool, item);
    setCaseFilter(nextFilter);
    setItem(next);
    setChoices(shuffle(next.options));
    setSelected(null);
    if (!keepStreak) setStreak(0);
  }

  function answer(choice: string) {
    if (selected) return;
    setSelected(choice);
    const isCorrect = choice === item.correct;
    const nextStreak = isCorrect ? streak + 1 : 0;
    setStreak(nextStreak);
    if (isCorrect) {
      const currentBest = bestStore.read(caseFilter);
      if (currentBest === null || nextStreak > currentBest) {
        bestStore.write(nextStreak, caseFilter);
      }
    }
  }

  const isCorrect = selected === item.correct;

  return (
    <div className="flex flex-col gap-5">
      <div className="flex flex-wrap items-center gap-2">
        {CASE_FILTERS.map((c) => {
          const active = caseFilter === c;
          return (
            <button
              key={c}
              type="button"
              onClick={() => newItem(c, false)}
              className={`rounded-full border px-3 py-1.5 font-mono text-xs font-semibold tracking-wide transition-colors ${
                active
                  ? "border-transparent text-white"
                  : "border-rule text-ink-soft hover:border-accent hover:text-accent-strong"
              }`}
              style={active ? { background: c === "Tous" ? "var(--color-ink)" : CASE_COLOR[c] } : undefined}
            >
              {c}
            </button>
          );
        })}
        <span className="ml-auto text-sm text-ink-soft">
          🔥 Série : <strong className="text-ink">{streak}</strong>
          {best !== null && <> · 🏆 {best}</>}
        </span>
      </div>

      <fieldset className="card-surface p-5">
        <legend className="mb-3 px-1">
          <span
            className="rounded-full px-3 py-1 font-mono text-xs font-bold tracking-wide text-white"
            style={{ background: CASE_COLOR[item.grammarCase] }}
          >
            {item.grammarCase}
          </span>
        </legend>
        <p lang="de" className="mb-4 text-lg text-ink">
          {item.before ? item.before + " " : ""}
          <span className="rounded-md border border-dashed border-accent bg-accent-tint px-2 py-0.5 font-semibold text-accent-strong">
            {selected ?? "___"}
          </span>{" "}
          {item.after}
        </p>
        <div className="flex flex-wrap gap-2" role="radiogroup" aria-label="Choisis l'article">
          {choices.map((choice) => {
            const isSelected = selected === choice;
            const isCorrectChoice = selected !== null && choice === item.correct;
            const isWrongSelection = selected !== null && isSelected && choice !== item.correct;
            const stateClasses = isCorrectChoice
              ? "border-sage bg-sage-tint"
              : isWrongSelection
                ? "border-danger bg-danger-tint"
                : "border-rule hover:border-accent";
            return (
              <button
                key={choice}
                type="button"
                role="radio"
                aria-checked={isSelected}
                disabled={selected !== null}
                onClick={() => answer(choice)}
                lang="de"
                className={`rounded-md border px-4 py-2 text-sm font-semibold text-ink transition-colors disabled:cursor-default ${stateClasses}`}
              >
                {choice}
              </button>
            );
          })}
        </div>
      </fieldset>

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
          onClick={() => newItem()}
          className="btn-primary self-start rounded-full px-6 py-2.5 font-semibold"
        >
          Phrase suivante →
        </button>
      )}
    </div>
  );
}
