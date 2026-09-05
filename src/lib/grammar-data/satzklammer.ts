export type SegmentRole = "field" | "conj" | "verbOpen" | "verbClose";

export interface Segment {
  text: string;
  role: SegmentRole;
}

export type ClauseType = "Hauptsatz" | "Nebensatz";

export interface SatzklammerItem {
  segments: Segment[];
  type: ClauseType;
  explanation: string;
}

/**
 * Exemples curatés (pas une analyse automatique des 234 histoires — un vrai
 * étiquetage morphosyntaxique fiable demanderait un analyseur allemand
 * complet, hors de portée ici). Chaque phrase est déjà découpée en
 * segments avec leur rôle, pour visualiser la Satzklammer : le verbe
 * conjugué en position 2 (verbOpen) et la partie rejetée en fin de clause
 * (verbClose) dans une principale, ou la conjonction (conj) qui pousse le
 * verbe tout à la fin (verbClose) dans une subordonnée.
 */
export const SATZKLAMMER_ITEMS: SatzklammerItem[] = [
  {
    type: "Hauptsatz",
    segments: [
      { text: "Ich", role: "field" },
      { text: "kaufe", role: "verbOpen" },
      { text: "heute im Supermarkt", role: "field" },
      { text: "ein", role: "verbClose" },
      { text: ".", role: "field" },
    ],
    explanation:
      "« einkaufen » (faire les courses) est un verbe à particule séparable : le verbe conjugué « kaufe » reste en position 2, mais la particule « ein » est rejetée à la toute fin.",
  },
  {
    type: "Hauptsatz",
    segments: [
      { text: "Er", role: "field" },
      { text: "kann", role: "verbOpen" },
      { text: "das Problem leicht", role: "field" },
      { text: "lösen", role: "verbClose" },
      { text: ".", role: "field" },
    ],
    explanation:
      "Avec un verbe de modalité, seul le modal « kann » se conjugue et reste en position 2 ; l'infinitif « lösen » est rejeté en fin de phrase.",
  },
  {
    type: "Hauptsatz",
    segments: [
      { text: "Wir", role: "field" },
      { text: "haben", role: "verbOpen" },
      { text: "gestern einen Film", role: "field" },
      { text: "gesehen", role: "verbClose" },
      { text: ".", role: "field" },
    ],
    explanation:
      "Au parfait, l'auxiliaire « haben » (ou « sein ») occupe la position 2, et le participe passé « gesehen » ferme la phrase.",
  },
  {
    type: "Hauptsatz",
    segments: [
      { text: "Der Zug", role: "field" },
      { text: "kommt", role: "verbOpen" },
      { text: "um neun Uhr", role: "field" },
      { text: "an", role: "verbClose" },
      { text: ".", role: "field" },
    ],
    explanation:
      "« ankommen » (arriver) se sépare : « kommt » reste en position 2, la particule « an » part à la fin.",
  },
  {
    type: "Hauptsatz",
    segments: [
      { text: "Die Kinder", role: "field" },
      { text: "spielen", role: "verbOpen" },
      { text: "im Garten", role: "field" },
      { text: ".", role: "field" },
    ],
    explanation:
      "Sans particule séparable ni auxiliaire, il n'y a rien à rejeter en fin de phrase — la Satzklammer est « vide », un seul élément verbal suffit. Toutes les phrases n'ont pas de bracket visible.",
  },
  {
    type: "Nebensatz",
    segments: [
      { text: "Er", role: "field" },
      { text: "bleibt", role: "verbOpen" },
      { text: "zu Hause,", role: "field" },
      { text: "weil", role: "conj" },
      { text: "er heute keine Zeit", role: "field" },
      { text: "hat", role: "verbClose" },
      { text: ".", role: "field" },
    ],
    explanation:
      "Deux structures dans une seule phrase : « bleibt » en position 2 dans la principale, puis « weil » qui pousse le verbe « hat » tout à la fin de la subordonnée.",
  },
  {
    type: "Nebensatz",
    segments: [
      { text: "Ich", role: "field" },
      { text: "weiß", role: "verbOpen" },
      { text: "nicht,", role: "field" },
      { text: "dass", role: "conj" },
      { text: "er das Buch", role: "field" },
      { text: "kaufen muss", role: "verbClose" },
      { text: ".", role: "field" },
    ],
    explanation:
      "Avec un modal dans une subordonnée, les deux verbes se regroupent tout à la fin, dans cet ordre précis : infinitif puis modal conjugué — « kaufen muss ».",
  },
  {
    type: "Nebensatz",
    segments: [
      { text: "Sie", role: "field" },
      { text: "sagt,", role: "verbOpen" },
      { text: "dass", role: "conj" },
      { text: "das Wetter morgen schön", role: "field" },
      { text: "wird", role: "verbClose" },
      { text: ".", role: "field" },
    ],
    explanation:
      "Même une subordonnée simple obéit à la règle : « wird » ne peut pas rester après « schön » comme en français, il doit migrer tout à la fin.",
  },
  {
    type: "Hauptsatz",
    segments: [
      { text: "Sie", role: "field" },
      { text: "steht", role: "verbOpen" },
      { text: "jeden Morgen früh", role: "field" },
      { text: "auf", role: "verbClose" },
      { text: ".", role: "field" },
    ],
    explanation:
      "« aufstehen » (se lever) : encore une particule séparable, « steht » en position 2, « auf » en fin de phrase — même si beaucoup de mots séparent les deux.",
  },
  {
    type: "Nebensatz",
    segments: [
      { text: "Ich", role: "field" },
      { text: "bin", role: "verbOpen" },
      { text: "froh,", role: "field" },
      { text: "dass", role: "conj" },
      { text: "du mir gestern", role: "field" },
      { text: "geholfen hast", role: "verbClose" },
      { text: ".", role: "field" },
    ],
    explanation:
      "Au parfait dans une subordonnée, l'auxiliaire et le participe se retrouvent ensemble tout à la fin : « geholfen hast », dans cet ordre inversé par rapport à la principale.",
  },
];
