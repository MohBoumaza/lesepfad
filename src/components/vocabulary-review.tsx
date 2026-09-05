"use client";

import { useState } from "react";
import type { VocabularyItem } from "@/types/database";

/**
 * Flashcards de répétition espacée (méthode Leitner) : le mot allemand
 * d'abord, la traduction masquée jusqu'à ce que l'élève clique — comme un
 * vrai jeu de cartes papier. "Je savais" fait avancer la boîte (intervalle
 * plus long), "Je ne savais pas" ramène le mot en boîte 1 (révision demain).
 */
export function VocabularyReview({ items }: { items: VocabularyItem[] }) {
  const [index, setIndex] = useState(0);
  const [revealed, setRevealed] = useState(false);
  const [submitting, setSubmitting] = useState(false);
  const [done, setDone] = useState(0);

  const current = items[index];
  const finished = index >= items.length;

  async function answer(remembered: boolean) {
    if (!current || submitting) return;
    setSubmitting(true);
    try {
      await fetch("/api/vocabulary/review", {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({ id: current.id, remembered }),
      });
    } finally {
      setSubmitting(false);
      setDone((d) => d + 1);
      setRevealed(false);
      setIndex((i) => i + 1);
    }
  }

  if (items.length === 0) {
    return (
      <div className="card-surface flex flex-col gap-2 p-6 text-center">
        <p className="font-display text-lg font-semibold text-ink">
          Rien à réviser pour l&apos;instant
        </p>
        <p className="text-sm text-ink-soft">
          Ajoute des mots depuis le glossaire d&apos;une histoire (bouton « + »
          dans l&apos;infobulle de traduction), ils reviendront ici au bon
          moment.
        </p>
      </div>
    );
  }

  if (finished) {
    return (
      <div className="card-surface flex flex-col gap-2 p-6 text-center">
        <p className="font-display text-lg font-semibold text-ink">
          {done} mot{done > 1 ? "s" : ""} révisé{done > 1 ? "s" : ""} !
        </p>
        <p className="text-sm text-ink-soft">
          Reviens plus tard pour la suite — la répétition espacée fonctionne
          mieux avec des sessions courtes et régulières.
        </p>
      </div>
    );
  }

  return (
    <div className="flex flex-col gap-4">
      <p className="font-mono text-xs text-ink-soft">
        {index + 1} / {items.length}
      </p>
      <div className="card-surface flex min-h-48 flex-col items-center justify-center gap-4 p-8 text-center">
        <p lang="de" className="font-display text-2xl font-semibold text-ink">
          {current.word}
        </p>
        {revealed ? (
          <p lang="fr" className="text-lg text-ink-soft">
            {current.translation}
          </p>
        ) : (
          <button
            type="button"
            onClick={() => setRevealed(true)}
            className="rounded-full border border-accent px-4 py-2 font-mono text-xs font-semibold text-accent-strong transition-colors hover:bg-accent-tint"
          >
            Afficher la traduction
          </button>
        )}
      </div>
      {revealed && (
        <div className="flex gap-3">
          <button
            type="button"
            disabled={submitting}
            onClick={() => answer(false)}
            className="flex-1 rounded-full border border-danger px-4 py-2.5 font-semibold text-danger transition-colors hover:bg-danger-tint disabled:opacity-50"
          >
            😕 Je ne savais pas
          </button>
          <button
            type="button"
            disabled={submitting}
            onClick={() => answer(true)}
            className="flex-1 rounded-full border border-sage bg-sage-tint px-4 py-2.5 font-semibold text-sage transition-colors hover:brightness-95 disabled:opacity-50"
          >
            🙂 Je savais
          </button>
        </div>
      )}
    </div>
  );
}
