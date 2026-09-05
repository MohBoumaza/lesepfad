import type { LevelCode } from "@/types/database";

/**
 * Vitesse de lecture approximative en allemand, en mots/minute, selon le
 * niveau CECR : un débutant A1 lit plus lentement (vocabulaire nouveau,
 * décodage des déclinaisons) qu'un C2 qui lit presque comme dans sa langue
 * maternelle. Valeurs indicatives, pas mesurées sur de vrais utilisateurs.
 */
const WPM_BY_LEVEL: Record<LevelCode, number> = {
  A1: 70,
  A2: 90,
  B1: 110,
  B2: 130,
  C1: 150,
  C2: 170,
};

/** Temps moyen (en secondes) pour répondre à une question, tous types confondus. */
const SECONDS_PER_QUESTION = 25;

/**
 * Estimation réaliste du temps total pour lire une histoire et répondre à
 * ses questions, arrondie à la minute la plus proche (minimum 1 min).
 */
export function estimateStoryMinutes(
  levelCode: LevelCode,
  wordCount: number,
  questionCount: number,
): number {
  const wpm = WPM_BY_LEVEL[levelCode] ?? 100;
  const readingMinutes = wordCount / wpm;
  const questionsMinutes = (questionCount * SECONDS_PER_QUESTION) / 60;
  return Math.max(1, Math.round(readingMinutes + questionsMinutes));
}
