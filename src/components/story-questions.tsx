"use client";

import { useRouter } from "next/navigation";
import { useState } from "react";
import { QcmQuestion } from "@/components/qcm-question";
import { ProductionQuestion } from "@/components/production-question";
import { DictationQuestion } from "@/components/dictation-question";
import type { Difficulty, PublicChoice, Question } from "@/types/database";

const CATEGORY_LABELS: Record<string, string> = {
  comprehension: "Compréhension",
  lueckentext: "Texte à trous",
  vocabulary: "Vocabulaire",
  grammar: "Grammaire",
  conjugation: "Conjugaison",
  true_false: "Vrai ou faux",
  diktat: "Dictée (Hören + Schreiben)",
  production: "Production écrite",
};

export function StoryQuestions({
  storyId,
  questions,
  difficulty = "normal",
}: {
  storyId: string;
  questions: (Question & { choices: PublicChoice[] })[];
  difficulty?: Difficulty;
}) {
  const router = useRouter();
  const [results, setResults] = useState<Record<string, boolean>>({});
  const [revealed, setRevealed] = useState<Record<string, boolean>>({});
  const [submitting, setSubmitting] = useState(false);

  const gradedQuestions = questions.filter((q) => q.category !== "production");
  const productionQuestions = questions.filter((q) => q.category === "production");

  const answeredCount = Object.keys(results).length;
  const correctCount = Object.values(results).filter(Boolean).length;
  const revealedCount = Object.keys(revealed).length;

  const allAnswered =
    answeredCount === gradedQuestions.length &&
    revealedCount === productionQuestions.length;

  const remaining =
    gradedQuestions.length - answeredCount + (productionQuestions.length - revealedCount);

  function handleAnswered(questionId: string, correct: boolean) {
    setResults((prev) => ({ ...prev, [questionId]: correct }));
  }

  function handleRevealed(questionId: string) {
    setRevealed((prev) => ({ ...prev, [questionId]: true }));
  }

  async function finish() {
    setSubmitting(true);
    try {
      // Persisté seulement si l'utilisateur est connecté (voir
      // saveProgress) — sinon `saved: false`, ignoré ici volontairement :
      // le score s'affiche quand même sur /resultats via le paramètre d'URL.
      // La production écrite n'est pas notée, elle ne compte pas dans le score.
      await fetch("/api/progress", {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({
          storyId,
          status: "completed",
          score: correctCount,
        }),
      });
    } finally {
      router.push(
        `/resultats/${storyId}?score=${correctCount}&difficulte=${difficulty}`,
      );
    }
  }

  const showHeaderAt = questions.map(
    (question, i) => i === 0 || question.category !== questions[i - 1].category,
  );

  return (
    <div className="flex flex-col gap-4">
      {questions.map((question, i) => {
        const showHeader = showHeaderAt[i];

        return (
          <div key={question.id} className="flex flex-col gap-4">
            {showHeader && (
              <p className="mt-2 font-mono text-xs uppercase tracking-widest text-accent first:mt-0">
                {CATEGORY_LABELS[question.category] ?? question.category}
              </p>
            )}
            {question.category === "production" ? (
              <ProductionQuestion
                question={question}
                index={i}
                onAnswered={() => handleRevealed(question.id)}
              />
            ) : question.category === "diktat" ? (
              <DictationQuestion
                question={question}
                index={i}
                onAnswered={(correct) => handleAnswered(question.id, correct)}
              />
            ) : (
              <QcmQuestion
                question={question}
                index={i}
                onAnswered={(correct) => handleAnswered(question.id, correct)}
              />
            )}
          </div>
        );
      })}

      <button
        type="button"
        disabled={!allAnswered || submitting}
        onClick={finish}
        className="btn-primary self-start rounded-full px-6 py-2.5 font-semibold disabled:opacity-50"
      >
        {allAnswered
          ? submitting
            ? "Enregistrement..."
            : "Voir mon résultat"
          : `Réponds aux ${remaining} question(s) restante(s)`}
      </button>
    </div>
  );
}
