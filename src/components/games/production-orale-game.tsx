"use client";

import { useEffect, useRef, useState, useSyncExternalStore } from "react";
import { ORALE_ITEMS, type OraleItem } from "@/lib/game-data/production-orale";
import {
  getSpeechRecognitionConstructor,
  scoreOralAttempt,
  type OraleVerdict,
  type SpeechRecognitionLike,
} from "@/lib/speech-recognition";
import { useMounted } from "@/lib/use-mounted";

const VERDICT_LABEL: Record<OraleVerdict, string> = {
  excellent: "✅ Très bien prononcé !",
  partiel: "🟡 Presque — réécoute ta phrase cible et réessaie.",
  "a-retravailler": "🔁 À retravailler, essaie encore.",
};

const VERDICT_CLASS: Record<OraleVerdict, string> = {
  excellent: "border-sage bg-sage-tint",
  partiel: "border-accent bg-accent-tint",
  "a-retravailler": "border-danger bg-danger-tint",
};

function pickItem(avoid?: OraleItem): OraleItem {
  if (ORALE_ITEMS.length <= 1) return ORALE_ITEMS[0];
  let choice = ORALE_ITEMS[Math.floor(Math.random() * ORALE_ITEMS.length)];
  let guard = 0;
  while (choice === avoid && guard < 10) {
    choice = ORALE_ITEMS[Math.floor(Math.random() * ORALE_ITEMS.length)];
    guard++;
  }
  return choice;
}

function subscribeNoop() {
  return () => {};
}

function getSupportSnapshot(): boolean {
  return getSpeechRecognitionConstructor() !== null;
}

function getServerSupportSnapshot(): boolean {
  return false;
}

/** Tirage aléatoire de phrase : calculable seulement côté client (voir
 * useMounted) — ce composant n'est monté qu'une fois `mounted` vrai, donc
 * pas de risque de hydration mismatch. */
export function ProductionOraleGame() {
  const mounted = useMounted();
  if (!mounted) {
    return <div className="card-surface p-8 text-center text-sm text-ink-soft">Chargement…</div>;
  }
  return <ProductionOraleGameInner />;
}

function ProductionOraleGameInner() {
  // Détection de fonctionnalité navigateur : useSyncExternalStore gère
  // proprement le décalage serveur (toujours "non supporté") / client
  // (résultat réel après hydratation), sans les rendus en cascade qu'un
  // useEffect + setState provoquerait ici.
  const supported = useSyncExternalStore(
    subscribeNoop,
    getSupportSnapshot,
    getServerSupportSnapshot,
  );
  const [item, setItem] = useState<OraleItem>(() => pickItem());
  const [listening, setListening] = useState(false);
  const [transcript, setTranscript] = useState<string | null>(null);
  const [verdict, setVerdict] = useState<OraleVerdict | null>(null);
  const [revealed, setRevealed] = useState(false);
  const recognitionRef = useRef<SpeechRecognitionLike | null>(null);

  useEffect(() => {
    return () => {
      recognitionRef.current?.stop();
    };
  }, []);

  function startListening() {
    const Ctor = getSpeechRecognitionConstructor();
    if (!Ctor) return;
    const recognition = new Ctor();
    recognition.lang = "de-DE";
    recognition.continuous = false;
    recognition.interimResults = false;
    recognition.maxAlternatives = 1;
    recognition.onresult = (event) => {
      const heard = event.results[0]?.[0]?.transcript ?? "";
      setTranscript(heard);
      setVerdict(scoreOralAttempt(heard, item.target));
    };
    recognition.onend = () => setListening(false);
    recognition.onerror = () => setListening(false);
    recognitionRef.current = recognition;
    setTranscript(null);
    setVerdict(null);
    setListening(true);
    recognition.start();
  }

  function stopListening() {
    recognitionRef.current?.stop();
    setListening(false);
  }

  function next() {
    setItem(pickItem(item));
    setTranscript(null);
    setVerdict(null);
    setRevealed(false);
  }

  if (!supported) {
    return (
      <div className="card-surface flex flex-col items-center gap-3 p-8 text-center">
        <span className="text-3xl" aria-hidden>
          🎙️
        </span>
        <p className="font-display text-base font-semibold text-ink">
          Reconnaissance vocale indisponible
        </p>
        <p className="max-w-sm text-sm text-ink-soft">
          Ton navigateur ne supporte pas la reconnaissance vocale (Web Speech
          API). Essaie sur Chrome desktop ou Android, avec le micro autorisé.
        </p>
      </div>
    );
  }

  return (
    <div className="flex flex-col gap-5">
      <fieldset className="card-surface p-5">
        <legend className="mb-3 px-1 font-mono text-xs text-ink-soft">Consigne</legend>
        <p className="mb-4 text-ink">{item.prompt}</p>

        <div className="flex flex-wrap items-center gap-2">
          <button
            type="button"
            onClick={listening ? stopListening : startListening}
            className={`rounded-full border px-4 py-2 text-sm font-semibold transition-colors ${
              listening
                ? "border-danger bg-danger-tint text-danger"
                : "border-accent text-accent-strong hover:bg-accent-tint"
            }`}
          >
            {listening ? "⏹ Arrêter" : "🎙️ Parler"}
          </button>
          <button
            type="button"
            onClick={() => setRevealed((v) => !v)}
            className="rounded-full border border-rule px-4 py-2 text-sm font-semibold text-ink-soft transition-colors hover:border-accent hover:text-accent-strong"
          >
            {revealed ? "Cacher l'indice" : "💡 Voir un indice"}
          </button>
        </div>

        {revealed && (
          <p lang="de" className="mt-3 rounded-md bg-surface px-3 py-2 text-sm text-ink">
            {item.target}
          </p>
        )}

        {listening && <p className="mt-3 text-sm text-ink-soft">🔴 Écoute en cours…</p>}
      </fieldset>

      {transcript !== null && verdict !== null && (
        <div className={`card-surface p-4 text-sm ${VERDICT_CLASS[verdict]}`}>
          <p className="mb-2 font-medium text-ink">{VERDICT_LABEL[verdict]}</p>
          <p className="mb-1 text-xs uppercase tracking-widest text-ink-soft">Tu as dit :</p>
          <p lang="de" className="mb-2 text-ink">
            « {transcript || "(rien entendu)"} »
          </p>
          <p className="mb-1 text-xs uppercase tracking-widest text-ink-soft">Phrase attendue :</p>
          <p lang="de" className="text-ink">
            {item.target}
          </p>
        </div>
      )}

      {transcript !== null && (
        <button
          type="button"
          onClick={next}
          className="btn-primary self-start rounded-full px-6 py-2.5 font-semibold"
        >
          Phrase suivante →
        </button>
      )}

      <p className="text-xs text-ink-soft">
        La reconnaissance vocale se fait entièrement dans ton navigateur (rien
        n&apos;est envoyé à nos serveurs) — la précision dépend de ton micro
        et de ton navigateur.
      </p>
    </div>
  );
}
