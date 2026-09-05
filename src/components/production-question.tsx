"use client";

import { useState } from "react";
import type { PublicChoice, Question } from "@/types/database";

/**
 * Exercice de production écrite libre, façon Goethe-Zertifikat (Schreiben) :
 * pas de correction automatique possible sur du texte libre. L'élève
 * rédige sa réponse, puis peut afficher une réponse modèle pour
 * s'auto-évaluer. Toujours considéré comme "répondu" dès que l'élève a
 * choisi de comparer sa réponse (ou a écrit quelque chose) — voir
 * onAnswered, appelé sans notion de correct/incorrect.
 */
export function ProductionQuestion({
  question,
  index,
  onAnswered,
}: {
  question: Question & { choices: PublicChoice[] };
  index: number;
  /** Prévenu une fois que l'élève a consulté la réponse modèle. */
  onAnswered?: () => void;
}) {
  const [draft, setDraft] = useState("");
  const [revealed, setRevealed] = useState(false);

  function reveal() {
    setRevealed(true);
    onAnswered?.();
  }

  return (
    <fieldset className="card-surface p-5">
      <legend className="mb-3 px-1 font-mono text-xs text-ink-soft">
        Production écrite {index + 1}
      </legend>
      <p lang="de" className="mb-4 text-ink">
        {question.prompt}
      </p>
      <textarea
        value={draft}
        onChange={(e) => setDraft(e.target.value)}
        disabled={revealed}
        rows={5}
        placeholder="Écris ta réponse en allemand…"
        lang="de"
        className="mb-3 w-full rounded-md border border-rule bg-surface p-3 text-sm text-ink disabled:opacity-70"
      />
      {!revealed ? (
        <button
          type="button"
          onClick={reveal}
          className="rounded-md border border-accent px-4 py-2 text-sm font-semibold text-accent"
        >
          Comparer avec une réponse modèle
        </button>
      ) : (
        <div className="flex flex-col gap-3">
          <div className="rounded-md border border-sage bg-sage-tint p-3 text-sm">
            <p className="mb-1 font-mono text-xs uppercase tracking-widest text-ink-soft">
              Réponse modèle
            </p>
            <p lang="de" className="text-ink">
              {question.model_answer}
            </p>
          </div>
          {question.rubric && question.rubric.length > 0 && (
            <div className="rounded-md border border-rule bg-surface p-3 text-sm">
              <p className="mb-2 font-mono text-xs uppercase tracking-widest text-ink-soft">
                Grille de correction
              </p>
              <ul className="flex flex-col gap-2">
                {question.rubric.map((item) => (
                  <li key={item.criterion}>
                    <span className="font-semibold text-ink">{item.criterion} : </span>
                    <span className="text-ink-soft">{item.description}</span>
                  </li>
                ))}
              </ul>
            </div>
          )}
          {question.justification && (
            <p className="rounded-md bg-surface p-3 text-sm text-ink-soft">
              <span className="mr-1 font-mono text-xs uppercase tracking-wide text-accent-strong">
                📖 Justification
              </span>
              <span lang="de">{question.justification}</span>
            </p>
          )}
        </div>
      )}
    </fieldset>
  );
}
