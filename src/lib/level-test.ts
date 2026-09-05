import { QUIZ_QUESTIONS, type QuizQuestion } from "@/lib/game-data/quiz-questions";
import type { LevelCode } from "@/types/database";

export const LEVEL_ORDER: LevelCode[] = ["A1", "A2", "B1", "B2", "C1", "C2"];

const QUESTIONS_PER_LEVEL = 3;

function shuffle<T>(arr: T[]): T[] {
  const a = [...arr];
  for (let i = a.length - 1; i > 0; i--) {
    const j = Math.floor(Math.random() * (i + 1));
    [a[i], a[j]] = [a[j], a[i]];
  }
  return a;
}

export type LevelTestQuestion = QuizQuestion & { shuffledChoices: QuizQuestion["choices"] };

/**
 * Construit le test de positionnement : 3 questions par niveau, dans
 * l'ordre A1 → C2 (pas mélangées entre niveaux, pour que la difficulté
 * progresse de façon lisible pendant le test).
 */
export function buildLevelTest(): LevelTestQuestion[] {
  return LEVEL_ORDER.flatMap((level) => {
    const pool = QUIZ_QUESTIONS.filter((q) => q.level === level);
    return shuffle(pool)
      .slice(0, QUESTIONS_PER_LEVEL)
      .map((q) => ({ ...q, shuffledChoices: shuffle(q.choices) }));
  });
}

/**
 * Recommandation : le niveau le plus élevé pour lequel au moins 2 des 3
 * questions ont été répondues correctement, en repartant de A1 et en
 * s'arrêtant au premier niveau qui échoue ce seuil (une bonne maîtrise
 * d'un niveau suppose la maîtrise des niveaux précédents).
 */
export function recommendLevel(correctByLevel: Record<LevelCode, number>): LevelCode {
  let recommended: LevelCode = "A1";
  for (const level of LEVEL_ORDER) {
    if ((correctByLevel[level] ?? 0) >= 2) {
      recommended = level;
    } else {
      break;
    }
  }
  return recommended;
}
