/**
 * Web Speech API (SpeechRecognition) : pas dans le lib DOM par défaut de
 * TypeScript, et disponible seulement préfixé (`webkitSpeechRecognition`)
 * sur la plupart des navigateurs qui le supportent (Chrome desktop/Android
 * essentiellement — pas Firefox, pas Safari iOS au moment de l'écriture).
 * On ne type que le sous-ensemble d'API réellement utilisé.
 */

export interface SpeechRecognitionResultLike {
  transcript: string;
}

export interface SpeechRecognitionEventLike {
  results: {
    length: number;
    [index: number]: { [index: number]: SpeechRecognitionResultLike };
  };
}

export interface SpeechRecognitionLike {
  lang: string;
  continuous: boolean;
  interimResults: boolean;
  maxAlternatives: number;
  onresult: ((event: SpeechRecognitionEventLike) => void) | null;
  onend: (() => void) | null;
  onerror: ((event: Event) => void) | null;
  start: () => void;
  stop: () => void;
}

type SpeechRecognitionConstructor = new () => SpeechRecognitionLike;

/** Renvoie le constructeur disponible (préfixé ou non), ou null si le
 * navigateur ne supporte pas la reconnaissance vocale. */
export function getSpeechRecognitionConstructor(): SpeechRecognitionConstructor | null {
  if (typeof window === "undefined") return null;
  const w = window as unknown as {
    SpeechRecognition?: SpeechRecognitionConstructor;
    webkitSpeechRecognition?: SpeechRecognitionConstructor;
  };
  return w.SpeechRecognition ?? w.webkitSpeechRecognition ?? null;
}

/** Normalise pour la comparaison : minuscules, ponctuation retirée (umlauts
 * et ß conservés), espaces réduits — même logique que la Dictée. */
function normalize(s: string): string {
  return s
    .toLowerCase()
    .normalize("NFC")
    .replace(/[^\p{L}\p{N}\s]/gu, "")
    .replace(/\s+/g, " ")
    .trim();
}

export type OraleVerdict = "excellent" | "partiel" | "a-retravailler";

/**
 * Score de proximité entre la transcription reconnue et la phrase cible,
 * basé sur le taux de mots de la cible retrouvés dans la transcription
 * (tolérant à l'ordre et aux mots en trop, contrairement à la Dictée qui
 * exige une correspondance exacte — la reconnaissance vocale elle-même
 * n'est pas assez fiable pour une comparaison stricte).
 */
export function scoreOralAttempt(transcript: string, target: string): OraleVerdict {
  const targetWords = normalize(target).split(" ").filter(Boolean);
  const heardWords = new Set(normalize(transcript).split(" ").filter(Boolean));
  if (targetWords.length === 0) return "a-retravailler";
  const matched = targetWords.filter((w) => heardWords.has(w)).length;
  const ratio = matched / targetWords.length;
  if (ratio >= 0.85) return "excellent";
  if (ratio >= 0.5) return "partiel";
  return "a-retravailler";
}
