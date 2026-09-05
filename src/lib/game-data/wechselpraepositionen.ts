export type MovementType = "Bewegung" | "Position";

export interface WechselItem {
  preposition: string;
  before: string;
  after: string;
  correct: string;
  options: string[];
  movementType: MovementType;
  explanation: string;
}

/**
 * Les 9 prépositions mixtes (Wechselpräpositionen) prennent l'accusatif
 * quand elles décrivent un mouvement avec changement de lieu (« wohin ? »),
 * et le datif quand elles décrivent une position fixe (« wo ? »). Chaque
 * préposition est illustrée par une paire de phrases : une en mouvement,
 * une en position, pour bien sentir le contraste sur le même mot.
 */
export const WECHSEL_ITEMS: WechselItem[] = [
  {
    preposition: "an",
    before: "Er hängt das Bild an",
    after: "Wand.",
    correct: "die",
    options: ["die", "der", "den", "dem"],
    movementType: "Bewegung",
    explanation:
      "« hängen » (accrocher, action) = déplacement vers un endroit → accusatif féminin « die Wand ».",
  },
  {
    preposition: "an",
    before: "Das Bild hängt an",
    after: "Wand.",
    correct: "der",
    options: ["der", "die", "den", "das"],
    movementType: "Position",
    explanation:
      "« hängen » (être accroché, état) = position fixe → datif féminin « der Wand ».",
  },
  {
    preposition: "auf",
    before: "Sie legt das Buch auf",
    after: "Tisch.",
    correct: "den",
    options: ["den", "dem", "der", "des"],
    movementType: "Bewegung",
    explanation:
      "« legen » (poser, action) = mouvement → accusatif masculin « den Tisch ».",
  },
  {
    preposition: "auf",
    before: "Das Buch liegt auf",
    after: "Tisch.",
    correct: "dem",
    options: ["dem", "den", "der", "des"],
    movementType: "Position",
    explanation:
      "« liegen » (être posé, état) = position fixe → datif masculin « dem Tisch ».",
  },
  {
    preposition: "hinter",
    before: "Er stellt das Fahrrad hinter",
    after: "Haus.",
    correct: "das",
    options: ["das", "dem", "den", "der"],
    movementType: "Bewegung",
    explanation:
      "« stellen » (mettre debout, action) = mouvement → accusatif neutre « das Haus ».",
  },
  {
    preposition: "hinter",
    before: "Das Fahrrad steht hinter",
    after: "Haus.",
    correct: "dem",
    options: ["dem", "das", "den", "der"],
    movementType: "Position",
    explanation:
      "« stehen » (se tenir, état) = position fixe → datif neutre « dem Haus ».",
  },
  {
    preposition: "in",
    before: "Ich gehe in",
    after: "Küche.",
    correct: "die",
    options: ["die", "der", "den", "das"],
    movementType: "Bewegung",
    explanation:
      "« gehen » (aller, action) = déplacement → accusatif féminin « die Küche ».",
  },
  {
    preposition: "in",
    before: "Ich bin in",
    after: "Küche.",
    correct: "der",
    options: ["der", "die", "den", "dem"],
    movementType: "Position",
    explanation:
      "« sein » (être, état) = position fixe → datif féminin « der Küche ».",
  },
  {
    preposition: "neben",
    before: "Sie setzt sich neben",
    after: "Lehrer.",
    correct: "den",
    options: ["den", "dem", "der", "des"],
    movementType: "Bewegung",
    explanation:
      "« sich setzen » (s'asseoir, action) = mouvement → accusatif masculin « den Lehrer ».",
  },
  {
    preposition: "neben",
    before: "Sie sitzt neben",
    after: "Lehrer.",
    correct: "dem",
    options: ["dem", "den", "der", "des"],
    movementType: "Position",
    explanation:
      "« sitzen » (être assis, état) = position fixe → datif masculin « dem Lehrer ».",
  },
  {
    preposition: "über",
    before: "Der Vogel fliegt über",
    after: "Fluss.",
    correct: "den",
    options: ["den", "dem", "der", "des"],
    movementType: "Bewegung",
    explanation:
      "Traverser en volant = mouvement d'un point à un autre → accusatif masculin « den Fluss ».",
  },
  {
    preposition: "über",
    before: "Die Lampe hängt über",
    after: "Tisch.",
    correct: "dem",
    options: ["dem", "den", "der", "das"],
    movementType: "Position",
    explanation:
      "La lampe est accrochée en place au-dessus de la table = position fixe → datif masculin « dem Tisch ».",
  },
  {
    preposition: "unter",
    before: "Die Katze läuft unter",
    after: "Tisch.",
    correct: "den",
    options: ["den", "dem", "der", "des"],
    movementType: "Bewegung",
    explanation:
      "« laufen » (courir, action) = mouvement → accusatif masculin « den Tisch ».",
  },
  {
    preposition: "unter",
    before: "Die Katze schläft unter",
    after: "Tisch.",
    correct: "dem",
    options: ["dem", "den", "der", "des"],
    movementType: "Position",
    explanation:
      "« schlafen » (dormir, état) = position fixe → datif masculin « dem Tisch ».",
  },
  {
    preposition: "vor",
    before: "Er stellt das Auto vor",
    after: "Haus.",
    correct: "das",
    options: ["das", "dem", "den", "der"],
    movementType: "Bewegung",
    explanation:
      "« stellen » (mettre, action) = mouvement → accusatif neutre « das Haus ».",
  },
  {
    preposition: "vor",
    before: "Das Auto steht vor",
    after: "Haus.",
    correct: "dem",
    options: ["dem", "das", "den", "der"],
    movementType: "Position",
    explanation:
      "« stehen » (être garé, état) = position fixe → datif neutre « dem Haus ».",
  },
  {
    preposition: "zwischen",
    before: "Sie legt das Kissen zwischen",
    after: "Stühle.",
    correct: "die",
    options: ["die", "den", "der", "das"],
    movementType: "Bewegung",
    explanation:
      "« legen » (poser, action) = mouvement → accusatif pluriel « die Stühle ».",
  },
  {
    preposition: "zwischen",
    before: "Das Kissen liegt zwischen",
    after: "Stühlen.",
    correct: "den",
    options: ["den", "die", "der", "dem"],
    movementType: "Position",
    explanation:
      "« liegen » (être posé, état) = position fixe → datif pluriel « den Stühlen » (le nom prend aussi -n).",
  },

  // Deuxième paire par préposition, pour varier les verbes et les noms.
  {
    preposition: "an",
    before: "Sie klebt das Poster an",
    after: "Wand.",
    correct: "die",
    options: ["die", "der", "den", "dem"],
    movementType: "Bewegung",
    explanation: "« kleben » (coller, action) = mouvement → accusatif féminin « die Wand ».",
  },
  {
    preposition: "an",
    before: "Das Poster klebt an",
    after: "Wand.",
    correct: "der",
    options: ["der", "die", "den", "das"],
    movementType: "Position",
    explanation: "« kleben » (être collé, état) = position fixe → datif féminin « der Wand ».",
  },
  {
    preposition: "auf",
    before: "Er setzt sich auf",
    after: "Stuhl.",
    correct: "den",
    options: ["den", "dem", "der", "des"],
    movementType: "Bewegung",
    explanation: "« sich setzen » (s'asseoir, action) = mouvement → accusatif masculin « den Stuhl ».",
  },
  {
    preposition: "auf",
    before: "Er sitzt auf",
    after: "Stuhl.",
    correct: "dem",
    options: ["dem", "den", "der", "des"],
    movementType: "Position",
    explanation: "« sitzen » (être assis, état) = position fixe → datif masculin « dem Stuhl ».",
  },
  {
    preposition: "hinter",
    before: "Die Kinder laufen hinter",
    after: "Schule.",
    correct: "die",
    options: ["die", "der", "den", "das"],
    movementType: "Bewegung",
    explanation: "« laufen » (courir, action) = mouvement → accusatif féminin « die Schule ».",
  },
  {
    preposition: "hinter",
    before: "Die Kinder spielen hinter",
    after: "Schule.",
    correct: "der",
    options: ["der", "die", "den", "das"],
    movementType: "Position",
    explanation: "« spielen » (jouer, état stable) = position fixe → datif féminin « der Schule ».",
  },
  {
    preposition: "in",
    before: "Er legt das Geld in",
    after: "Tasche.",
    correct: "die",
    options: ["die", "der", "den", "das"],
    movementType: "Bewegung",
    explanation: "« legen » (poser, action) = mouvement → accusatif féminin « die Tasche ».",
  },
  {
    preposition: "in",
    before: "Das Geld liegt in",
    after: "Tasche.",
    correct: "der",
    options: ["der", "die", "den", "dem"],
    movementType: "Position",
    explanation: "« liegen » (être posé, état) = position fixe → datif féminin « der Tasche ».",
  },
  {
    preposition: "neben",
    before: "Sie stellt die Vase neben",
    after: "Fenster.",
    correct: "das",
    options: ["das", "dem", "den", "der"],
    movementType: "Bewegung",
    explanation: "« stellen » (mettre, action) = mouvement → accusatif neutre « das Fenster ».",
  },
  {
    preposition: "neben",
    before: "Die Vase steht neben",
    after: "Fenster.",
    correct: "dem",
    options: ["dem", "das", "den", "der"],
    movementType: "Position",
    explanation: "« stehen » (être posé debout, état) = position fixe → datif neutre « dem Fenster ».",
  },
  {
    preposition: "über",
    before: "Wir fahren über",
    after: "Brücke.",
    correct: "die",
    options: ["die", "der", "den", "das"],
    movementType: "Bewegung",
    explanation: "Traverser en roulant = mouvement d'un point à un autre → accusatif féminin « die Brücke ».",
  },
  {
    preposition: "über",
    before: "Das Bild hängt über",
    after: "Sofa.",
    correct: "dem",
    options: ["dem", "den", "der", "das"],
    movementType: "Position",
    explanation: "Le tableau est accroché en place = position fixe → datif neutre « dem Sofa ».",
  },
  {
    preposition: "unter",
    before: "Der Ball rollt unter",
    after: "Bett.",
    correct: "das",
    options: ["das", "dem", "den", "der"],
    movementType: "Bewegung",
    explanation: "« rollen » (rouler, action) = mouvement → accusatif neutre « das Bett ».",
  },
  {
    preposition: "unter",
    before: "Die Schuhe stehen unter",
    after: "Bett.",
    correct: "dem",
    options: ["dem", "das", "den", "der"],
    movementType: "Position",
    explanation: "« stehen » (être posé, état) = position fixe → datif neutre « dem Bett ».",
  },
  {
    preposition: "vor",
    before: "Sie stellt ihr Fahrrad vor",
    after: "Bibliothek.",
    correct: "die",
    options: ["die", "der", "den", "das"],
    movementType: "Bewegung",
    explanation: "« stellen » (mettre, action) = mouvement → accusatif féminin « die Bibliothek ».",
  },
  {
    preposition: "vor",
    before: "Ihr Fahrrad steht vor",
    after: "Bibliothek.",
    correct: "der",
    options: ["der", "die", "den", "dem"],
    movementType: "Position",
    explanation: "« stehen » (être garé, état) = position fixe → datif féminin « der Bibliothek ».",
  },
  {
    preposition: "zwischen",
    before: "Er setzt sich zwischen",
    after: "Freunde.",
    correct: "die",
    options: ["die", "den", "der", "das"],
    movementType: "Bewegung",
    explanation: "« sich setzen » (s'asseoir, action) = mouvement → accusatif pluriel « die Freunde ».",
  },
  {
    preposition: "zwischen",
    before: "Er sitzt zwischen",
    after: "Freunden.",
    correct: "den",
    options: ["den", "die", "der", "dem"],
    movementType: "Position",
    explanation: "« sitzen » (être assis, état) = position fixe → datif pluriel « den Freunden » (le nom prend aussi -n).",
  },
];

export function wechselItemsFor(filter: MovementType | "Alle"): WechselItem[] {
  if (filter === "Alle") return WECHSEL_ITEMS;
  return WECHSEL_ITEMS.filter((it) => it.movementType === filter);
}
