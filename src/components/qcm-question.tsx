"use client";

import { useState } from "react";
import type { PublicChoice, Question } from "@/types/database";

interface AnswerVerdict {
  correct: boolean;
  correctChoiceId: string;
}

export function QcmQuestion({
  question,
  index,
  onAnswered,
}: {
  question: Question & { choices: PublicChoice[] };
  index: number;
  /** Prévenu une fois pour cette question, avec le verdict reçu du serveur. */
  onAnswered?: (correct: boolean) => void;
}) {
  const [selectedId, setSelectedId] = useState<string | null>(null);
  const [verdict, setVerdict] = useState<AnswerVerdict | null>(null);
  const [error, setError] = useState(false);
  const [pending, setPending] = useState(false);

  async function selectChoice(choiceId: string) {
    if (verdict || error || pending) return; // une seule tentative, comme prévu au plan
    setSelectedId(choiceId);
    setPending(true);
    try {
      const res = await fetch("/api/answers", {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({ questionId: question.id, choiceId }),
      });
      if (!res.ok) {
        // Erreur serveur/contenu (ex. question mal configurée) — à
        // distinguer d'une mauvaise réponse : ne jamais afficher "faux"
        // pour un problème qui n'est pas de la faute de l'élève.
        setError(true);
        return;
      }
      const data: AnswerVerdict = await res.json();
      setVerdict(data);
      onAnswered?.(data.correct);
    } catch {
      setError(true);
    } finally {
      setPending(false);
    }
  }

  return (
    <fieldset className="card-surface p-5">
      <legend className="mb-3 px-1 font-mono text-xs text-ink-soft">
        Question {index + 1}
      </legend>
      <p lang="de" className="mb-4 text-ink">
        {question.prompt}
      </p>
      <div className="flex flex-col gap-2" role="radiogroup" aria-label={question.prompt}>
        {question.choices.map((choice) => {
          const isSelected = choice.id === selectedId;
          const isCorrectChoice = verdict && choice.id === verdict.correctChoiceId;
          const isWrongSelection =
            verdict && isSelected && !verdict.correct && choice.id === selectedId;

          const stateClasses = isCorrectChoice
            ? "border-sage bg-sage-tint"
            : isWrongSelection
              ? "border-danger bg-danger-tint"
              : "border-rule hover:border-accent";

          return (
            <button
              key={choice.id}
              type="button"
              role="radio"
              aria-checked={isSelected}
              disabled={Boolean(verdict) || error || pending}
              onClick={() => selectChoice(choice.id)}
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
      {error && (
        <p className="mt-3 text-sm font-medium text-danger">
          ⚠️ Cette question n&apos;a pas pu être corrigée (problème technique, pas ta
          faute) — réessaie plus tard.
        </p>
      )}
      {verdict && (
        <p
          className={`mt-3 text-sm font-medium ${verdict.correct ? "text-sage" : "text-danger"}`}
        >
          {verdict.correct ? "Bonne réponse !" : "Ce n'est pas la bonne réponse."}
        </p>
      )}
      {verdict && question.justification && (
        <p className="mt-2 rounded-md bg-surface p-3 text-sm text-ink-soft">
          <span className="mr-1 font-mono text-xs uppercase tracking-wide text-accent-strong">
            📖 Justification
          </span>
          <span lang="de">{question.justification}</span>
        </p>
      )}
    </fieldset>
  );
}
