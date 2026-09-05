import type { StoryWithQuestions } from "@/types/database";

/**
 * Données factices pour l'étape 4 (structure). À remplacer par de vrais
 * appels Supabase à l'étape 5 (implémentation) une fois le contenu
 * (étape 6) écrit. Ne pas ajouter d'autres histoires ici — le contenu
 * définitif vit dans supabase/migrations, pas dans le code applicatif.
 */
export const MOCK_STORIES: StoryWithQuestions[] = [
  {
    id: "00000000-0000-0000-0000-000000000001",
    level_code: "A1",
    title: "Der verlorene Schlüssel",
    body:
      "Anna kommt nach Hause. Sie sucht ihren Schlüssel in der Tasche. " +
      "Der Schlüssel ist nicht da. Anna ist nervös. Sie klingelt bei ihrer " +
      "Nachbarin. Die Nachbarin hat einen zweiten Schlüssel. Anna öffnet " +
      "die Tür und findet ihren Schlüssel auf dem Tisch in der Küche.",
    word_count: 52,
    published: true,
    created_at: "2026-01-01T00:00:00.000Z",
    culture_note: null,
    translation_fr:
      "Anna rentre à la maison. Elle cherche sa clé dans son sac. " +
      "La clé n'est pas là. Anna est nerveuse. Elle sonne chez sa " +
      "voisine. La voisine a un double de la clé. Anna ouvre " +
      "la porte et trouve sa clé sur la table dans la cuisine.",
    glossary: {
      Anna: "Anna",
      kommt: "vient",
      nach: "vers",
      Hause: "la maison",
      Sie: "Elle",
      sucht: "cherche",
      ihren: "sa/son",
      Schlüssel: "clé",
      in: "dans",
      der: "la/le",
      Tasche: "sac",
      Der: "La/Le",
      ist: "est",
      nicht: "pas",
      da: "là",
      nervös: "nerveuse",
      klingelt: "sonne",
      bei: "chez",
      ihrer: "sa",
      Nachbarin: "voisine",
      Die: "La",
      hat: "a",
      einen: "un",
      zweiten: "deuxième",
      öffnet: "ouvre",
      die: "la",
      Tür: "porte",
      und: "et",
      findet: "trouve",
      auf: "sur",
      dem: "la/le",
      Tisch: "table",
      Küche: "cuisine",
    },
    questions: [
      {
        id: "00000000-0000-0000-0000-000000000010",
        story_id: "00000000-0000-0000-0000-000000000001",
        prompt: "Wo findet Anna am Ende ihren Schlüssel?",
        position: 1,
        difficulty: "normal",
        category: "comprehension",
        model_answer: null,
        justification: null,
        rubric: null,
        choices: [
          {
            id: "00000000-0000-0000-0000-000000000101",
            question_id: "00000000-0000-0000-0000-000000000010",
            label: "In ihrer Tasche",
            position: 1,
          },
          {
            id: "00000000-0000-0000-0000-000000000102",
            question_id: "00000000-0000-0000-0000-000000000010",
            label: "Bei der Nachbarin",
            position: 2,
          },
          {
            id: "00000000-0000-0000-0000-000000000103",
            question_id: "00000000-0000-0000-0000-000000000010",
            label: "Auf dem Tisch in der Küche",
            position: 3,
          },
        ],
      },
      {
        id: "00000000-0000-0000-0000-000000000011",
        story_id: "00000000-0000-0000-0000-000000000001",
        prompt: "Was bedeutet „nervös“?",
        position: 1,
        difficulty: "normal",
        category: "vocabulary",
        model_answer: null,
        justification: null,
        rubric: null,
        choices: [
          {
            id: "00000000-0000-0000-0000-000000000111",
            question_id: "00000000-0000-0000-0000-000000000011",
            label: "unruhig, ängstlich",
            position: 1,
          },
          {
            id: "00000000-0000-0000-0000-000000000112",
            question_id: "00000000-0000-0000-0000-000000000011",
            label: "glücklich",
            position: 2,
          },
          {
            id: "00000000-0000-0000-0000-000000000113",
            question_id: "00000000-0000-0000-0000-000000000011",
            label: "müde",
            position: 3,
          },
        ],
      },
      {
        id: "00000000-0000-0000-0000-000000000012",
        story_id: "00000000-0000-0000-0000-000000000001",
        prompt: "Welche Form ist richtig? Anna ___ nach Hause. (kommen, Präsens, 3. Person Singular)",
        position: 1,
        difficulty: "normal",
        category: "conjugation",
        model_answer: null,
        justification: null,
        rubric: null,
        choices: [
          {
            id: "00000000-0000-0000-0000-000000000121",
            question_id: "00000000-0000-0000-0000-000000000012",
            label: "kommt",
            position: 1,
          },
          {
            id: "00000000-0000-0000-0000-000000000122",
            question_id: "00000000-0000-0000-0000-000000000012",
            label: "kommst",
            position: 2,
          },
          {
            id: "00000000-0000-0000-0000-000000000123",
            question_id: "00000000-0000-0000-0000-000000000012",
            label: "kommen",
            position: 3,
          },
        ],
      },
      {
        id: "00000000-0000-0000-0000-000000000013",
        story_id: "00000000-0000-0000-0000-000000000001",
        prompt: "Schreibe 2-3 Sätze: Was machst du, wenn du etwas verlierst?",
        position: 1,
        difficulty: "normal",
        category: "production",
        model_answer:
          "Wenn ich etwas verliere, suche ich zuerst zu Hause. Dann frage ich meine Familie. Manchmal finde ich die Sache wieder.",
        justification: null,
        rubric: null,
        choices: [],
      },
    ],
  },
];

/** Correspond 1:1 à choices.is_correct dans 0002_seed_dev.sql. */
export const MOCK_CORRECT_CHOICE_BY_QUESTION: Record<string, string> = {
  "00000000-0000-0000-0000-000000000010":
    "00000000-0000-0000-0000-000000000103",
  "00000000-0000-0000-0000-000000000011":
    "00000000-0000-0000-0000-000000000111",
  "00000000-0000-0000-0000-000000000012":
    "00000000-0000-0000-0000-000000000121",
};

export function getMockStory(id: string) {
  return MOCK_STORIES.find((story) => story.id === id) ?? null;
}
