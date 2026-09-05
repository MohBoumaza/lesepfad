/**
 * Types alignés sur supabase/migrations/0001_init.sql.
 * À remplacer par `supabase gen types typescript` dès que le projet
 * Supabase distant existe — ces types manuels servent de contrat
 * pendant la phase de structure (étape 4).
 */

export type LevelCode = "A1" | "A2" | "B1" | "B2" | "C1" | "C2";

/** Mode de difficulté des questions de compréhension. */
export type Difficulty = "facile" | "normal" | "difficile";

/**
 * Catégorie d'exercice, façon Goethe-Zertifikat/DSD : compréhension de
 * lecture, vocabulaire, conjugaison, production écrite libre, texte à
 * trous, grammaire ciblée (déclinaisons/ordre des mots/prépositions), ou
 * vrai/faux à justifier.
 */
export type QuestionCategory =
  | "comprehension"
  | "vocabulary"
  | "conjugation"
  | "production"
  | "lueckentext"
  | "grammar"
  | "true_false"
  | "diktat";

/** Un critère de la grille de correction d'une production écrite. */
export interface RubricCriterion {
  criterion: string;
  description: string;
}

export interface Level {
  code: LevelCode;
  sort_order: number;
}

export interface Story {
  id: string;
  level_code: LevelCode;
  title: string;
  body: string;
  word_count: number;
  published: boolean;
  created_at: string;
  /** Traduction française intégrale de `body`. Null si pas encore traduite. */
  translation_fr: string | null;
  /**
   * Glossaire mot-à-mot : clé = forme exacte du mot dans `body` (ponctuation
   * retirée), valeur = traduction française contextuelle. Alimente
   * l'infobulle au survol/clic sur un mot du texte.
   */
  glossary: Record<string, string> | null;
  /**
   * Badge court (ex. "Conte des frères Grimm") pour les histoires inspirées
   * du patrimoine culturel/scolaire allemand. Null pour les autres.
   */
  culture_note: string | null;
}

export interface Question {
  id: string;
  story_id: string;
  prompt: string;
  position: number;
  difficulty: Difficulty;
  category: QuestionCategory;
  /**
   * Réponse modèle pour les questions de production (pas de correction
   * automatique — l'élève compare sa rédaction à cet exemple). Null pour
   * les questions QCM (comprehension/vocabulary/conjugation).
   */
  model_answer: string | null;
  /**
   * Citation du texte ou courte explication affichée après réponse — sert
   * surtout pour "true_false" (justifier le vrai/faux) et "grammar".
   * Null si non applicable.
   */
  justification: string | null;
  /**
   * Grille de correction structurée (barème façon Goethe-Institut) pour les
   * questions "production". Null pour les autres catégories.
   */
  rubric: RubricCriterion[] | null;
}

export interface Choice {
  id: string;
  question_id: string;
  label: string;
  /** Jamais envoyé au client avant correction — filtré côté route API. */
  is_correct: boolean;
  position: number;
}

/** Choix tel qu'exposé au client avant réponse : is_correct est masqué. */
export type PublicChoice = Omit<Choice, "is_correct">;

export interface Profile {
  id: string;
  target_level: LevelCode | null;
  created_at: string;
}

export type ProgressStatus = "in_progress" | "completed";

export interface Progress {
  id: string;
  user_id: string;
  story_id: string;
  status: ProgressStatus;
  score: number | null;
  /** Jamais écrit ni lu explicitement côté app : colonne `not null default
   * now()` (voir migrations/0001_init.sql), entièrement gérée par Postgres
   * à l'insertion. */
  started_at: string;
  completed_at: string | null;
}

export interface Answer {
  id: string;
  user_id: string;
  question_id: string;
  choice_id: string;
  is_correct: boolean;
  answered_at: string;
}

/** Histoire + questions + choix (sans is_correct) pour l'écran de lecture. */
export interface StoryWithQuestions extends Story {
  questions: (Question & { choices: PublicChoice[] })[];
}

/**
 * Mot du vocabulaire personnel de l'utilisateur, ajouté depuis le glossaire
 * d'une histoire. Révisé par répétition espacée (méthode Leitner, 5 boîtes) :
 * `box` avance d'un cran sur une bonne réponse (intervalle plus long),
 * revient à 1 sur une mauvaise réponse.
 */
export interface VocabularyItem {
  id: string;
  user_id: string;
  word: string;
  translation: string;
  story_id: string | null;
  box: number;
  review_count: number;
  added_at: string;
  next_review_at: string;
}
