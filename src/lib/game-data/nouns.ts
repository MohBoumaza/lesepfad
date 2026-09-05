import type { LevelCode } from "@/types/database";

export type Article = "der" | "die" | "das";

export interface GenderedNoun {
  word: string;
  article: Article;
  translation: string;
  level: LevelCode;
}

/**
 * Noms allemands courants avec leur article, groupés par niveau CECR —
 * alimente le jeu Artikel-Memory. Volontairement indépendant du contenu
 * des histoires (le genre grammatical n'est pas déductible automatiquement
 * du glossaire) : liste courte et curatée, quelques dizaines de mots
 * suffisent pour un jeu de mémory.
 */
export const NOUNS: GenderedNoun[] = [
  // A1
  { word: "Tisch", article: "der", translation: "la table", level: "A1" },
  { word: "Tür", article: "die", translation: "la porte", level: "A1" },
  { word: "Buch", article: "das", translation: "le livre", level: "A1" },
  { word: "Stuhl", article: "der", translation: "la chaise", level: "A1" },
  { word: "Lampe", article: "die", translation: "la lampe", level: "A1" },
  { word: "Fenster", article: "das", translation: "la fenêtre", level: "A1" },
  { word: "Hund", article: "der", translation: "le chien", level: "A1" },
  { word: "Katze", article: "die", translation: "le chat", level: "A1" },
  { word: "Kind", article: "das", translation: "l'enfant", level: "A1" },
  { word: "Apfel", article: "der", translation: "la pomme", level: "A1" },
  { word: "Milch", article: "die", translation: "le lait", level: "A1" },
  { word: "Brot", article: "das", translation: "le pain", level: "A1" },
  { word: "Tasche", article: "die", translation: "le sac", level: "A1" },
  { word: "Schrank", article: "der", translation: "l'armoire", level: "A1" },
  { word: "Bett", article: "das", translation: "le lit", level: "A1" },
  { word: "Vogel", article: "der", translation: "l'oiseau", level: "A1" },
  { word: "Blume", article: "die", translation: "la fleur", level: "A1" },
  { word: "Ei", article: "das", translation: "l'œuf", level: "A1" },

  // A2
  { word: "Bahnhof", article: "der", translation: "la gare", level: "A2" },
  { word: "Straße", article: "die", translation: "la rue", level: "A2" },
  { word: "Auto", article: "das", translation: "la voiture", level: "A2" },
  { word: "Lehrer", article: "der", translation: "le professeur", level: "A2" },
  { word: "Schule", article: "die", translation: "l'école", level: "A2" },
  { word: "Zimmer", article: "das", translation: "la chambre", level: "A2" },
  { word: "Freund", article: "der", translation: "l'ami", level: "A2" },
  { word: "Familie", article: "die", translation: "la famille", level: "A2" },
  { word: "Wetter", article: "das", translation: "le temps (météo)", level: "A2" },
  { word: "Garten", article: "der", translation: "le jardin", level: "A2" },
  { word: "Küche", article: "die", translation: "la cuisine", level: "A2" },
  { word: "Telefon", article: "das", translation: "le téléphone", level: "A2" },
  { word: "Reise", article: "die", translation: "le voyage", level: "A2" },
  { word: "Flughafen", article: "der", translation: "l'aéroport", level: "A2" },
  { word: "Geschäft", article: "das", translation: "le magasin", level: "A2" },
  { word: "Nachbar", article: "der", translation: "le voisin", level: "A2" },
  { word: "Wohnung", article: "die", translation: "l'appartement", level: "A2" },
  { word: "Fahrrad", article: "das", translation: "le vélo", level: "A2" },

  // B1
  { word: "Beruf", article: "der", translation: "le métier", level: "B1" },
  { word: "Arbeit", article: "die", translation: "le travail", level: "B1" },
  { word: "Gehalt", article: "das", translation: "le salaire", level: "B1" },
  { word: "Vertrag", article: "der", translation: "le contrat", level: "B1" },
  { word: "Firma", article: "die", translation: "l'entreprise", level: "B1" },
  { word: "Projekt", article: "das", translation: "le projet", level: "B1" },
  { word: "Termin", article: "der", translation: "le rendez-vous", level: "B1" },
  { word: "Besprechung", article: "die", translation: "la réunion", level: "B1" },
  { word: "Formular", article: "das", translation: "le formulaire", level: "B1" },
  { word: "Antrag", article: "der", translation: "la demande", level: "B1" },
  { word: "Bewerbung", article: "die", translation: "la candidature", level: "B1" },
  { word: "Interview", article: "das", translation: "l'entretien", level: "B1" },
  { word: "Kollege", article: "der", translation: "le collègue", level: "B1" },
  { word: "Erfahrung", article: "die", translation: "l'expérience", level: "B1" },
  { word: "Ergebnis", article: "das", translation: "le résultat", level: "B1" },
  { word: "Vorschlag", article: "der", translation: "la proposition", level: "B1" },
  { word: "Entscheidung", article: "die", translation: "la décision", level: "B1" },
  { word: "Verhältnis", article: "das", translation: "le rapport", level: "B1" },

  // B2
  { word: "Umweltschutz", article: "der", translation: "la protection de l'environnement", level: "B2" },
  { word: "Gesellschaft", article: "die", translation: "la société", level: "B2" },
  { word: "Bewusstsein", article: "das", translation: "la conscience", level: "B2" },
  { word: "Klimawandel", article: "der", translation: "le changement climatique", level: "B2" },
  { word: "Nachhaltigkeit", article: "die", translation: "la durabilité", level: "B2" },
  { word: "Gleichgewicht", article: "das", translation: "l'équilibre", level: "B2" },
  { word: "Fortschritt", article: "der", translation: "le progrès", level: "B2" },
  { word: "Entwicklung", article: "die", translation: "le développement", level: "B2" },
  { word: "Ereignis", article: "das", translation: "l'événement", level: "B2" },
  { word: "Zusammenhang", article: "der", translation: "le lien / contexte", level: "B2" },
  { word: "Herausforderung", article: "die", translation: "le défi", level: "B2" },
  { word: "Verhalten", article: "das", translation: "le comportement", level: "B2" },
  { word: "Einfluss", article: "der", translation: "l'influence", level: "B2" },
  { word: "Meinung", article: "die", translation: "l'opinion", level: "B2" },
  { word: "Missverständnis", article: "das", translation: "le malentendu", level: "B2" },
  { word: "Vorteil", article: "der", translation: "l'avantage", level: "B2" },
  { word: "Zusammenarbeit", article: "die", translation: "la collaboration", level: "B2" },
  { word: "Engagement", article: "das", translation: "l'engagement", level: "B2" },

  // C1
  { word: "Widerspruch", article: "der", translation: "la contradiction", level: "C1" },
  { word: "Verantwortung", article: "die", translation: "la responsabilité", level: "C1" },
  { word: "Vorurteil", article: "das", translation: "le préjugé", level: "C1" },
  { word: "Grundsatz", article: "der", translation: "le principe", level: "C1" },
  { word: "Auswirkung", article: "die", translation: "la répercussion", level: "C1" },
  { word: "Verständnis", article: "das", translation: "la compréhension", level: "C1" },
  { word: "Eindruck", article: "der", translation: "l'impression", level: "C1" },
  { word: "Wahrnehmung", article: "die", translation: "la perception", level: "C1" },
  { word: "Ansehen", article: "das", translation: "la réputation", level: "C1" },
  { word: "Anspruch", article: "der", translation: "l'exigence", level: "C1" },
  { word: "Voraussetzung", article: "die", translation: "la condition préalable", level: "C1" },
  { word: "Vorhaben", article: "das", translation: "le projet (dessein)", level: "C1" },
  { word: "Zweifel", article: "der", translation: "le doute", level: "C1" },
  { word: "Bedeutung", article: "die", translation: "la signification", level: "C1" },
  { word: "Bedürfnis", article: "das", translation: "le besoin", level: "C1" },
  { word: "Anlass", article: "der", translation: "l'occasion (le motif)", level: "C1" },
  { word: "Beziehung", article: "die", translation: "la relation", level: "C1" },
  { word: "Missgeschick", article: "das", translation: "la mésaventure", level: "C1" },

  // C2
  { word: "Sachverhalt", article: "der", translation: "les faits (situation)", level: "C2" },
  { word: "Gesetzgebung", article: "die", translation: "la législation", level: "C2" },
  { word: "Dilemma", article: "das", translation: "le dilemme", level: "C2" },
  { word: "Kompromiss", article: "der", translation: "le compromis", level: "C2" },
  { word: "Konsequenz", article: "die", translation: "la conséquence", level: "C2" },
  { word: "Paradox", article: "das", translation: "le paradoxe", level: "C2" },
  { word: "Beweis", article: "der", translation: "la preuve", level: "C2" },
  { word: "Argumentation", article: "die", translation: "l'argumentation", level: "C2" },
  { word: "Urteil", article: "das", translation: "le jugement", level: "C2" },
  { word: "Widerstand", article: "der", translation: "la résistance", level: "C2" },
  { word: "Debatte", article: "die", translation: "le débat", level: "C2" },
  { word: "Prinzip", article: "das", translation: "le principe", level: "C2" },
  { word: "Einwand", article: "der", translation: "l'objection", level: "C2" },
  { word: "Herkunft", article: "die", translation: "l'origine", level: "C2" },
  { word: "Ausmaß", article: "das", translation: "l'ampleur", level: "C2" },
  { word: "Grundlage", article: "die", translation: "la base (le fondement)", level: "C2" },
  { word: "Vorwurf", article: "der", translation: "le reproche", level: "C2" },
  { word: "Zeugnis", article: "das", translation: "le témoignage (bulletin)", level: "C2" },
];

export function nounsForLevel(level: LevelCode): GenderedNoun[] {
  return NOUNS.filter((n) => n.level === level);
}
