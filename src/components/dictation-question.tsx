"use client";

import { useState } from "react";
import type { PublicChoice, Question } from "@/types/database";

interface AnswerVerdict {
  correct: boolean;
  correctChoiceId: string;
}

/** Normalise pour la comparaison : minuscules, ponctuation retirée (umlauts
 * et ß conservés puisqu'ils comptent en allemand), espaces réduits. On ne
 * tolère pas les fautes d'orthographe — c'est le but d'une dictée. */
function normalize(s: string): string {
  return s
    .toLowerCase()
    .normalize("NFC")
    .replace(/[^\p{L}\p{N}\s]/gu, "")
    .replace(/\s+/g, " ")
    .trim();
}

/**
 * Dictée façon Goethe-Zertifikat (Hören + Schreiben combinés) : la phrase
 * n'est jamais affichée, seulement lue via le texte-à-parole ; l'élève la
 * retranscrit puis on compare côté client (comparaison normalisée, pas de
 * fuite du corrigé avant réponse : `question.choices` n'expose jamais
 * `is_correct`, on identifie donc le choix correct par son label, qui est
 * la phrase elle-même). Le résultat est ensuite persisté via /api/answers,
 * exactement comme un QCM, avec deux choix synthétiques créés en base
 * (voir migration 0023_diktat.sql) : label = phrase correcte, et un
 * second "Transcription incorrecte".
 */
export function DictationQuestion({
  question,
  index,
  onAnswered,
}: {
  question: Question & { choices: PublicChoice[] };
  index: number;
  onAnswered?: (correct: boolean) => void;
}) {
  const [transcript, setTranscript] = useState("");
  const [verdict, setVerdict] = useState<AnswerVerdict | null>(null);
  const [error, setError] = useState(false);
  const [pending, setPending] = useState(false);
  const [speaking, setSpeaking] = useState(false);
  const [playCount, setPlayCount] = useState(0);

  const sentence = question.model_answer ?? "";
  const correctChoice =
    question.choices.find((c) => c.label === sentence) ?? question.choices[0];
  const incorrectChoice =
    question.choices.find((c) => c.id !== correctChoice?.id) ?? question.choices[1];

  function speak() {
    if (typeof window === "undefined" || !window.speechSynthesis || !sentence) return;
    window.speechSynthesis.cancel();
    const utterance = new SpeechSynthesisUtterance(sentence);
    utterance.lang = "de-DE";
    utterance.rate = 0.85;
    utterance.onstart = () => setSpeaking(true);
    utterance.onend = () => setSpeaking(false);
    utterance.onerror = () => setSpeaking(false);
    window.speechSynthesis.speak(utterance);
    setPlayCount((c) => c + 1);
  }

  async function submit() {
    if (verdict || error || pending || !transcript.trim() || !correctChoice || !incorrectChoice)
      return;
    setPending(true);
    const isMatch = normalize(transcript) === normalize(sentence);
    const targetChoice = isMatch ? correctChoice : incorrectChoice;
    try {
      const res = await fetch("/api/answers", {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({ questionId: question.id, choiceId: targetChoice.id }),
      });
      if (!res.ok) {
        // Erreur serveur/contenu — à distinguer d'une transcription fausse :
        // ne jamais afficher "faux" pour un problème qui n'est pas de la
        // faute de l'élève.
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
        Dictée {index + 1}
      </legend>
      <p className="mb-4 text-sm text-ink-soft">{question.prompt}</p>

      <button
        type="button"
        onClick={speak}
        disabled={speaking}
        className="mb-4 rounded-full border border-accent px-4 py-2 text-sm font-semibold text-accent-strong transition-colors hover:bg-accent-tint disabled:opacity-60"
      >
        {speaking ? "🔊 Lecture…" : playCount === 0 ? "🔊 Écouter" : "🔁 Réécouter"}
      </button>

      <textarea
        value={transcript}
        onChange={(e) => setTranscript(e.target.value)}
        disabled={Boolean(verdict) || error}
        rows={2}
        placeholder="Transcris ce que tu entends…"
        lang="de"
        className="mb-3 w-full rounded-md border border-rule bg-surface p-3 text-sm text-ink disabled:opacity-70"
      />

      {error && (
        <p className="mb-3 text-sm font-medium text-danger">
          ⚠️ Cette dictée n&apos;a pas pu être corrigée (problème technique, pas ta
          faute) — réessaie plus tard.
        </p>
      )}

      {!verdict && !error ? (
        <button
          type="button"
          onClick={submit}
          disabled={pending || !transcript.trim()}
          className="rounded-md border border-accent px-4 py-2 text-sm font-semibold text-accent disabled:opacity-50"
        >
          Vérifier
        </button>
      ) : verdict ? (
        <div className="flex flex-col gap-2">
          <p
            className={`text-sm font-medium ${verdict.correct ? "text-sage" : "text-danger"}`}
          >
            {verdict.correct
              ? "Parfait, transcription exacte !"
              : "Pas tout à fait — voici la phrase correcte :"}
          </p>
          <div className="rounded-md border border-sage bg-sage-tint p-3 text-sm">
            <p lang="de" className="text-ink">
              {sentence}
            </p>
          </div>
          {question.justification && (
            <p className="rounded-md bg-surface p-3 text-sm text-ink-soft">
              <span className="mr-1 font-mono text-xs uppercase tracking-wide text-accent-strong">
                📖 Justification
              </span>
              <span lang="de">{question.justification}</span>
            </p>
          )}
        </div>
      ) : null}
    </fieldset>
  );
}
