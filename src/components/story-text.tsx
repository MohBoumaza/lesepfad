"use client";

import { useEffect, useRef, useState } from "react";

/** Sépare le texte en jetons "mot" et "reste" (espaces/ponctuation), en
 * gardant tout pour un rendu fidèle une fois recollé. */
function tokenize(body: string): { text: string; isWord: boolean }[] {
  const parts = body.split(/([\p{L}\p{M}'’-]+)/gu);
  return parts
    .filter((p) => p.length > 0)
    .map((p) => ({ text: p, isWord: /[\p{L}]/u.test(p) }));
}

/** Normalise un mot pour la clé du glossaire : ponctuation déjà exclue par
 * tokenize, on ne touche pas à la casse ni aux accents (clé exacte). */
function glossaryKey(word: string): string {
  return word;
}

/** Découpe grossièrement en phrases pour la réécoute phrase par phrase :
 * coupe après un ./!/? suivi d'un espace ou d'un saut de ligne. Suffisant
 * pour du texte narratif propre, pas pour des abréviations complexes. */
function splitSentences(text: string): string[] {
  return text
    .split(/(?<=[.!?])\s+/)
    .map((s) => s.trim())
    .filter((s) => s.length > 0);
}

export function StoryText({
  body,
  translationFr,
  glossary,
  storyId,
}: {
  body: string;
  translationFr: string | null;
  glossary: Record<string, string> | null;
  /** Sert à retrouver le contexte d'origine d'un mot ajouté au vocabulaire. */
  storyId?: string;
}) {
  const [showTranslation, setShowTranslation] = useState(false);
  const [activeWord, setActiveWord] = useState<string | null>(null);
  const [speaking, setSpeaking] = useState(false);
  const [listeningMode, setListeningMode] = useState(false);
  const [addedWords, setAddedWords] = useState<Set<string>>(new Set());
  const [activeSentence, setActiveSentence] = useState<number | null>(null);
  const [sentenceSpeaking, setSentenceSpeaking] = useState<number | null>(null);
  const utteranceRef = useRef<SpeechSynthesisUtterance | null>(null);

  const tokens = tokenize(body);
  const sentences = splitSentences(body);

  // Arrête la lecture à voix haute si on quitte la page ou si le texte
  // affiché change (bascule allemand/français).
  useEffect(() => {
    return () => {
      if (typeof window !== "undefined") window.speechSynthesis?.cancel();
    };
  }, []);

  function stopSpeaking() {
    window.speechSynthesis?.cancel();
    setSpeaking(false);
    setSentenceSpeaking(null);
  }

  function toggleSpeak() {
    if (typeof window === "undefined" || !window.speechSynthesis) return;
    if (speaking) {
      stopSpeaking();
      return;
    }
    const text = showTranslation && translationFr ? translationFr : body;
    const lang = showTranslation && translationFr ? "fr-FR" : "de-DE";
    window.speechSynthesis.cancel();
    const utterance = new SpeechSynthesisUtterance(text);
    utterance.lang = lang;
    // Voix un peu plus lente : plus facile à suivre pour un apprenant.
    utterance.rate = 0.92;
    utterance.onend = () => setSpeaking(false);
    utterance.onerror = () => setSpeaking(false);
    utteranceRef.current = utterance;
    window.speechSynthesis.speak(utterance);
    setSpeaking(true);
  }

  function lookup(word: string): string | null {
    if (!glossary) return null;
    return (
      glossary[glossaryKey(word)] ??
      glossary[word.toLowerCase()] ??
      glossary[word[0].toUpperCase() + word.slice(1).toLowerCase()] ??
      null
    );
  }

  function toggleWord(id: string) {
    setActiveWord((prev) => (prev === id ? null : id));
  }

  async function addToVocabulary(word: string, translation: string) {
    if (addedWords.has(word)) return;
    setAddedWords((prev) => new Set(prev).add(word));
    try {
      await fetch("/api/vocabulary", {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({ word, translation, storyId }),
      });
    } catch {
      // L'échec réseau ne doit pas bloquer la lecture — le mot reste
      // marqué "ajouté" côté UI, tant pis pour la persistance cette fois.
    }
  }

  function toggleListeningMode() {
    stopSpeaking();
    setShowTranslation(false);
    setSentenceSpeaking(null);
    setListeningMode((v) => !v);
  }

  function speakSentence(index: number) {
    if (typeof window === "undefined" || !window.speechSynthesis) return;
    const sentence = sentences[index];
    if (!sentence) return;
    window.speechSynthesis.cancel();
    const utterance = new SpeechSynthesisUtterance(sentence);
    utterance.lang = "de-DE";
    utterance.rate = 0.85;
    utterance.onend = () => setSentenceSpeaking(null);
    utterance.onerror = () => setSentenceSpeaking(null);
    setActiveSentence(index);
    setSentenceSpeaking(index);
    window.speechSynthesis.speak(utterance);
  }

  return (
    <div className="flex flex-col gap-3">
      <div className="flex flex-wrap gap-2">
        <button
          type="button"
          onClick={toggleSpeak}
          className="self-start rounded-full border border-accent px-3.5 py-1.5 font-mono text-xs font-semibold text-accent-strong transition-colors hover:bg-accent-tint"
        >
          {speaking
            ? "⏹ Arrêter"
            : showTranslation
              ? "🔊 Écouter (français)"
              : "🔊 Écouter (allemand)"}
        </button>
        {translationFr && !listeningMode && (
          <button
            type="button"
            onClick={() => {
              stopSpeaking();
              setShowTranslation((v) => !v);
            }}
            className="self-start rounded-full border border-accent px-3.5 py-1.5 font-mono text-xs font-semibold text-accent-strong transition-colors hover:bg-accent-tint"
          >
            {showTranslation ? "Voir le texte allemand" : "Traduire en français"}
          </button>
        )}
        <button
          type="button"
          onClick={toggleListeningMode}
          aria-pressed={listeningMode}
          className={`self-start rounded-full border px-3.5 py-1.5 font-mono text-xs font-semibold transition-colors ${
            listeningMode
              ? "border-sage bg-sage-tint text-sage"
              : "border-accent text-accent-strong hover:bg-accent-tint"
          }`}
        >
          {listeningMode ? "📖 Revenir au texte" : "🎧 Mode Écoute (Hören)"}
        </button>
      </div>
      {speaking && (
        <p className="font-mono text-[0.68rem] text-ink-soft">
          Lecture à voix haute via la synthèse vocale de ton navigateur/appareil — la qualité dépend de la voix installée.
        </p>
      )}

      {listeningMode ? (
        <div className="flex flex-col gap-4">
          <div className="card-surface flex flex-col items-center gap-3 p-8 text-center">
            <span className="text-3xl" aria-hidden>
              🎧
            </span>
            <p className="font-display text-base font-semibold text-ink">
              Écoute d&apos;abord, sans lire le texte
            </p>
            <p className="max-w-sm text-sm text-ink-soft">
              Clique sur « Écouter », autant de fois que nécessaire, puis réponds
              aux questions de compréhension ci-dessous — comme à l&apos;épreuve
              Hören d&apos;un examen Goethe-Zertifikat. Bloqué sur une phrase ?
              Réécoute-la juste en dessous, autant de fois que tu veux.
            </p>
          </div>

          <div className="card-surface flex flex-col gap-1 p-4">
            <p className="mb-2 font-mono text-[0.68rem] uppercase tracking-widest text-ink-soft">
              Réécoute phrase par phrase
            </p>
            {sentences.map((sentence, i) => {
              const isSpeaking = sentenceSpeaking === i;
              const isActive = activeSentence === i;
              return (
                <button
                  key={i}
                  type="button"
                  onClick={() => (isSpeaking ? stopSpeaking() : speakSentence(i))}
                  className={`flex items-start gap-2 rounded-md px-2 py-1.5 text-left text-sm transition-colors ${
                    isActive ? "bg-accent-tint text-ink" : "text-ink-soft hover:bg-surface"
                  }`}
                >
                  <span className="flex-none font-mono text-xs text-accent-strong">
                    {isSpeaking ? "⏸" : "▶️"}
                  </span>
                  <span lang="de">{sentence}</span>
                </button>
              );
            })}
          </div>
        </div>
      ) : showTranslation && translationFr ? (
        <article
          lang="fr"
          className="card-surface whitespace-pre-line p-6 leading-relaxed text-ink"
        >
          {translationFr}
        </article>
      ) : (
        <article
          lang="de"
          className="card-surface whitespace-pre-line p-6 leading-relaxed text-ink"
        >
          {glossary && (
            <p className="mb-3 font-mono text-[0.68rem] text-ink-soft">
              Survole (ou touche) un mot pour voir sa traduction.
            </p>
          )}
          {tokens.map((token, i) => {
            if (!token.isWord) return <span key={i}>{token.text}</span>;
            const translation = lookup(token.text);
            const id = `w-${i}`;
            const isActive = activeWord === id;
            if (!translation) return <span key={i}>{token.text}</span>;
            return (
              <span key={i} className="group relative inline-block">
                {/* Survol = souris (desktop) ; le clic bascule l'infobulle
                    pour le tactile, qui n'a pas de vrai :hover. */}
                <button
                  type="button"
                  onClick={() => toggleWord(id)}
                  className="cursor-help rounded-sm border-b border-dotted border-accent/60 text-ink hover:bg-accent-tint focus:bg-accent-tint focus:outline-none"
                  aria-describedby={`${id}-tip`}
                >
                  {token.text}
                </button>
                <span
                  id={`${id}-tip`}
                  role="tooltip"
                  className={`absolute bottom-full left-1/2 z-10 mb-1 flex -translate-x-1/2 items-center gap-1 whitespace-nowrap rounded-md border border-rule bg-surface px-2 py-1 font-mono text-xs text-ink shadow-md transition-opacity duration-100 ${
                    isActive
                      ? "visible pointer-events-auto opacity-100"
                      : "invisible pointer-events-none opacity-0 group-hover:visible group-hover:pointer-events-auto group-hover:opacity-100"
                  }`}
                >
                  <span lang="fr">{translation}</span>
                  <button
                    type="button"
                    onClick={(e) => {
                      e.stopPropagation();
                      addToVocabulary(token.text, translation);
                    }}
                    title="Ajouter à mon vocabulaire"
                    aria-label="Ajouter à mon vocabulaire"
                    className={`rounded-full border px-1 leading-tight ${
                      addedWords.has(token.text)
                        ? "border-sage text-sage"
                        : "border-accent text-accent-strong hover:bg-accent-tint"
                    }`}
                  >
                    {addedWords.has(token.text) ? "✓" : "+"}
                  </button>
                </span>
              </span>
            );
          })}
        </article>
      )}
    </div>
  );
}
