export type GrammarCase = "Nominativ" | "Akkusativ" | "Dativ" | "Genitiv";

export interface DeclensionItem {
  before: string;
  after: string;
  correct: string;
  options: string[];
  grammarCase: GrammarCase;
  explanation: string;
}

/**
 * Phrases à trou pour le Deklination-Trainer : décliner l'article défini
 * selon le cas déclenché par la fonction syntaxique (sujet), le verbe
 * (helfen, danken...), ou la préposition (für, mit, trotz...). Choisies
 * pour couvrir aussi les pièges classiques : féminin/neutre inchangés à
 * l'accusatif, génitif féminin identique au datif féminin, pluriel datif
 * en -n, "auf" statique = datif (pas mouvement).
 */
export const DECLENSION_ITEMS: DeclensionItem[] = [
  // Nominativ — le sujet de la phrase
  {
    before: "",
    after: "Mann liest die Zeitung.",
    correct: "Der",
    options: ["Der", "Den", "Dem", "Des"],
    grammarCase: "Nominativ",
    explanation: "Le sujet de la phrase est toujours au nominatif : « der Mann ».",
  },
  {
    before: "",
    after: "Frau kocht das Abendessen.",
    correct: "Die",
    options: ["Die", "Der", "Den", "Das"],
    grammarCase: "Nominativ",
    explanation: "Sujet féminin → nominatif « die » : « die Frau ».",
  },
  {
    before: "",
    after: "Kind spielt im Garten.",
    correct: "Das",
    options: ["Das", "Der", "Die", "Dem"],
    grammarCase: "Nominativ",
    explanation: "Sujet neutre → nominatif « das » : « das Kind ».",
  },
  {
    before: "",
    after: "Zug kommt gleich an.",
    correct: "Der",
    options: ["Der", "Den", "Dem", "Des"],
    grammarCase: "Nominativ",
    explanation: "« der Zug » est sujet de « ankommen » → nominatif.",
  },
  {
    before: "",
    after: "Sonne scheint heute.",
    correct: "Die",
    options: ["Die", "Der", "Das", "Dem"],
    grammarCase: "Nominativ",
    explanation: "« die Sonne » est sujet de « scheinen » → nominatif féminin.",
  },

  // Akkusativ — COD, ou après für / durch / ohne / um
  {
    before: "Ich sehe",
    after: "Hund.",
    correct: "den",
    options: ["den", "der", "dem", "des"],
    grammarCase: "Akkusativ",
    explanation: "COD masculin → accusatif : « der Hund » devient « den Hund ».",
  },
  {
    before: "Wir brauchen",
    after: "Zeit.",
    correct: "die",
    options: ["die", "den", "der", "dem"],
    grammarCase: "Akkusativ",
    explanation: "Piège classique : au féminin, l'accusatif ne change pas — « die » reste « die ».",
  },
  {
    before: "Er kauft",
    after: "Buch.",
    correct: "das",
    options: ["das", "der", "die", "dem"],
    grammarCase: "Akkusativ",
    explanation: "Autre piège : au neutre non plus, l'accusatif ne change pas — « das » reste « das ».",
  },
  {
    before: "Das Geschenk ist für",
    after: "Vater.",
    correct: "den",
    options: ["den", "der", "dem", "des"],
    grammarCase: "Akkusativ",
    explanation: "« für » déclenche toujours l'accusatif, quel que soit le sens de la phrase.",
  },
  {
    before: "Sie geht durch",
    after: "Park.",
    correct: "den",
    options: ["den", "der", "dem", "des"],
    grammarCase: "Akkusativ",
    explanation: "« durch » déclenche toujours l'accusatif : « der Park » → « den Park ».",
  },

  // Dativ — COI, verbes helfen/danken, prépositions mit/bei, ou position statique
  {
    before: "Ich helfe",
    after: "Mann.",
    correct: "dem",
    options: ["dem", "den", "der", "des"],
    grammarCase: "Dativ",
    explanation: "« helfen » se construit toujours avec le datif : « der Mann » → « dem Mann ».",
  },
  {
    before: "Sie dankt",
    after: "Lehrerin.",
    correct: "der",
    options: ["der", "die", "den", "dem"],
    grammarCase: "Dativ",
    explanation: "« danken » + datif ; au féminin, le datif donne « der » : « die Lehrerin » → « der Lehrerin ».",
  },
  {
    before: "Wir fahren mit",
    after: "Bus.",
    correct: "dem",
    options: ["dem", "den", "der", "des"],
    grammarCase: "Dativ",
    explanation: "« mit » déclenche toujours le datif, sans exception.",
  },
  {
    before: "Das Buch liegt auf",
    after: "Tisch.",
    correct: "dem",
    options: ["dem", "den", "der", "des"],
    grammarCase: "Dativ",
    explanation: "« auf » est une préposition mixte : ici « liegen » décrit une position statique → datif, pas accusatif.",
  },
  {
    before: "Er wohnt bei",
    after: "Eltern.",
    correct: "den",
    options: ["den", "der", "dem", "die"],
    grammarCase: "Dativ",
    explanation: "Au datif pluriel, l'article devient toujours « den » : « die Eltern » → « den Eltern ».",
  },

  // Genitiv — possession, ou après trotz / wegen
  {
    before: "Das ist das Auto",
    after: "Mannes.",
    correct: "des",
    options: ["des", "dem", "den", "der"],
    grammarCase: "Genitiv",
    explanation: "Génitif masculin : « der Mann » → « des Mannes » (le nom prend aussi -es).",
  },
  {
    before: "Trotz",
    after: "Regens gehen wir spazieren.",
    correct: "des",
    options: ["des", "dem", "den", "der"],
    grammarCase: "Genitiv",
    explanation: "« trotz » déclenche le génitif : « der Regen » → « des Regens ».",
  },
  {
    before: "Die Farbe",
    after: "Autos gefällt mir.",
    correct: "des",
    options: ["des", "dem", "den", "der"],
    grammarCase: "Genitiv",
    explanation: "Génitif neutre : « das Auto » → « des Autos » (le nom prend aussi -s).",
  },
  {
    before: "Wegen",
    after: "Wetters bleiben wir zu Hause.",
    correct: "des",
    options: ["des", "dem", "den", "der"],
    grammarCase: "Genitiv",
    explanation: "« wegen » déclenche le génitif : « das Wetter » → « des Wetters ».",
  },
  {
    before: "Das ist die Tasche",
    after: "Frau.",
    correct: "der",
    options: ["der", "die", "den", "des"],
    grammarCase: "Genitiv",
    explanation: "Piège : au féminin, le génitif « der » ressemble au datif — mais le nom, lui, ne change pas.",
  },

  // Nominativ — trois de plus
  {
    before: "",
    after: "Lehrer erklärt die Aufgabe.",
    correct: "Der",
    options: ["Der", "Die", "Das", "Den"],
    grammarCase: "Nominativ",
    explanation: "« der Lehrer » est sujet de « erklären » → nominatif masculin.",
  },
  {
    before: "",
    after: "Katze schläft auf dem Sofa.",
    correct: "Die",
    options: ["Die", "Der", "Das", "Den"],
    grammarCase: "Nominativ",
    explanation: "Sujet féminin → nominatif « die » : « die Katze ».",
  },
  {
    before: "",
    after: "Auto steht vor dem Haus.",
    correct: "Das",
    options: ["Das", "Der", "Die", "Dem"],
    grammarCase: "Nominativ",
    explanation: "Sujet neutre → nominatif « das » : « das Auto ».",
  },

  // Akkusativ — trois de plus
  {
    before: "Wir sehen",
    after: "Film heute Abend.",
    correct: "den",
    options: ["den", "der", "dem", "des"],
    grammarCase: "Akkusativ",
    explanation: "COD masculin → accusatif : « der Film » devient « den Film ».",
  },
  {
    before: "Sie kauft",
    after: "Auto nicht.",
    correct: "das",
    options: ["das", "der", "die", "dem"],
    grammarCase: "Akkusativ",
    explanation: "Encore le neutre qui ne change pas à l'accusatif — « das » reste « das ».",
  },
  {
    before: "Er geht ohne",
    after: "Schirm raus.",
    correct: "den",
    options: ["den", "der", "dem", "des"],
    grammarCase: "Akkusativ",
    explanation: "« ohne » déclenche toujours l'accusatif : « der Schirm » → « den Schirm ».",
  },

  // Dativ — trois de plus
  {
    before: "Sie schreibt",
    after: "Freundin einen Brief.",
    correct: "der",
    options: ["der", "die", "den", "dem"],
    grammarCase: "Dativ",
    explanation: "COI féminin → datif « der » : « die Freundin » devient « der Freundin ».",
  },
  {
    before: "Wir sprechen von",
    after: "Projekt.",
    correct: "dem",
    options: ["dem", "das", "den", "der"],
    grammarCase: "Dativ",
    explanation: "« von » déclenche toujours le datif : « das Projekt » → « dem Projekt ».",
  },
  {
    before: "Nach",
    after: "Konzert gehen wir nach Hause.",
    correct: "dem",
    options: ["dem", "das", "den", "der"],
    grammarCase: "Dativ",
    explanation: "« nach » déclenche toujours le datif : « das Konzert » → « dem Konzert ».",
  },

  // Genitiv — trois de plus
  {
    before: "Das ist die Tasche",
    after: "Kindes.",
    correct: "des",
    options: ["des", "dem", "den", "der"],
    grammarCase: "Genitiv",
    explanation: "Génitif neutre : « das Kind » → « des Kindes » (le nom prend aussi -es).",
  },
  {
    before: "Statt",
    after: "Autos nehmen wir den Bus.",
    correct: "des",
    options: ["des", "dem", "den", "der"],
    grammarCase: "Genitiv",
    explanation: "« statt » déclenche le génitif : « das Auto » → « des Autos ».",
  },
  {
    before: "Der Titel",
    after: "Buches gefällt mir.",
    correct: "des",
    options: ["des", "dem", "den", "der"],
    grammarCase: "Genitiv",
    explanation: "Génitif masculin/neutre : « das Buch » → « des Buches » (le nom prend aussi -es).",
  },
];

export function declensionItemsFor(caseFilter: GrammarCase | "Tous"): DeclensionItem[] {
  if (caseFilter === "Tous") return DECLENSION_ITEMS;
  return DECLENSION_ITEMS.filter((it) => it.grammarCase === caseFilter);
}
