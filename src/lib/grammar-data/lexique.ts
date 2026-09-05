export type LexiqueCategory = "Cas" | "Genre & article" | "Verbe" | "Syntaxe" | "Phrase";

export interface LexiqueItem {
  term: string;
  category: LexiqueCategory;
  definition: string;
  example: string;
}

/**
 * Glossaire des termes grammaticaux utilisés dans les jeux de l'app,
 * expliqués simplement en français. Sert de référence rapide plutôt que
 * de ré-expliquer chaque terme dans chaque exercice.
 */
export const LEXIQUE_ITEMS: LexiqueItem[] = [
  {
    term: "Nominativ",
    category: "Cas",
    definition: "Le cas du sujet de la phrase — celui qui fait l'action.",
    example: "Der Mann liest.",
  },
  {
    term: "Akkusativ",
    category: "Cas",
    definition:
      "Le cas du complément d'objet direct (COD), et de certaines prépositions (für, durch, ohne, um).",
    example: "Ich sehe den Hund.",
  },
  {
    term: "Dativ",
    category: "Cas",
    definition:
      "Le cas du complément d'objet indirect (COI), de verbes comme helfen/danken, et de prépositions comme mit/bei, ou d'une position statique.",
    example: "Ich helfe dem Mann.",
  },
  {
    term: "Genitiv",
    category: "Cas",
    definition: "Le cas de la possession, et de prépositions comme trotz/wegen.",
    example: "Das Auto des Mannes.",
  },
  {
    term: "Genus",
    category: "Genre & article",
    definition:
      "Le genre grammatical d'un nom en allemand : masculin (der), féminin (die), ou neutre (das). Il ne suit pas toujours une logique naturelle.",
    example: "der Tisch, die Lampe, das Buch",
  },
  {
    term: "Deklination",
    category: "Genre & article",
    definition:
      "Le changement de forme de l'article (et parfois du nom) selon le cas grammatical.",
    example: "der → den → dem → des",
  },
  {
    term: "bestimmter Artikel",
    category: "Genre & article",
    definition: "L'article défini (« le / la / les ») : der, die, das.",
    example: "der Hund, die Katze, das Kind",
  },
  {
    term: "Wechselpräposition",
    category: "Syntaxe",
    definition:
      "Une préposition qui prend l'accusatif pour un mouvement (wohin ?) et le datif pour une position fixe (wo ?) — an, auf, hinter, in, neben, über, unter, vor, zwischen.",
    example: "Er geht in die Küche. / Er ist in der Küche.",
  },
  {
    term: "Satzklammer",
    category: "Syntaxe",
    definition:
      "La « parenthèse verbale » : le verbe allemand se coupe souvent en deux parties, une en position 2, l'autre rejetée à la fin de la phrase.",
    example: "Ich kaufe im Supermarkt ein.",
  },
  {
    term: "trennbares Verb",
    category: "Verbe",
    definition:
      "Un verbe à particule séparable : à l'infinitif la particule est collée au verbe, mais à l'indicatif présent elle se détache et part en fin de phrase.",
    example: "einkaufen → Ich kaufe ein.",
  },
  {
    term: "Modalverb",
    category: "Verbe",
    definition:
      "Un verbe de modalité (können, müssen, wollen, dürfen, sollen, mögen) qui s'accompagne d'un infinitif rejeté en fin de phrase.",
    example: "Er kann das Problem lösen.",
  },
  {
    term: "Perfekt",
    category: "Verbe",
    definition:
      "Le temps du passé composé allemand, formé avec haben ou sein + participe passé (rejeté en fin de phrase).",
    example: "Wir haben einen Film gesehen.",
  },
  {
    term: "Partizip II",
    category: "Verbe",
    definition: "Le participe passé, souvent formé avec ge- + radical + -t/-en.",
    example: "gemacht, gesehen, gegangen",
  },
  {
    term: "Hauptsatz",
    category: "Phrase",
    definition:
      "Une phrase principale, indépendante, où le verbe conjugué est toujours en position 2.",
    example: "Ich lese ein Buch.",
  },
  {
    term: "Nebensatz",
    category: "Phrase",
    definition:
      "Une phrase subordonnée introduite par une conjonction (weil, dass, wenn...), où le verbe conjugué est rejeté tout à la fin.",
    example: "..., weil ich müde bin.",
  },
  {
    term: "Konjunktion",
    category: "Phrase",
    definition:
      "Un mot qui relie deux phrases ou propositions — certaines (weil, dass, wenn) envoient le verbe à la fin.",
    example: "weil, dass, wenn, obwohl",
  },
  {
    term: "Subjekt",
    category: "Phrase",
    definition: "Le sujet de la phrase, toujours au nominatif.",
    example: "Der Lehrer erklärt die Grammatik.",
  },
  {
    term: "Objekt",
    category: "Phrase",
    definition: "Le complément d'un verbe : direct (accusatif) ou indirect (datif).",
    example: "Sie gibt dem Kind das Buch.",
  },
];

export const LEXIQUE_CATEGORIES: LexiqueCategory[] = [
  "Cas",
  "Genre & article",
  "Verbe",
  "Syntaxe",
  "Phrase",
];
