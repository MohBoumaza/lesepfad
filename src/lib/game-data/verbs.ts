import type { LevelCode } from "@/types/database";

export interface VerbConjugation {
  infinitive: string;
  translation: string;
  level: LevelCode;
  forms: {
    ich: string;
    du: string;
    erSieEs: string;
    wir: string;
    ihr: string;
    sie: string;
  };
}

/**
 * Verbes courants au présent, groupés par niveau CECR (progression :
 * réguliers → verbes forts à changement de voyelle → sein/haben/werden →
 * modaux → verbes préfixés plus rares) — alimente Konjugation-Rennen.
 */
export const VERBS: VerbConjugation[] = [
  // A1 — réguliers
  {
    infinitive: "machen",
    translation: "faire",
    level: "A1",
    forms: { ich: "mache", du: "machst", erSieEs: "macht", wir: "machen", ihr: "macht", sie: "machen" },
  },
  {
    infinitive: "spielen",
    translation: "jouer",
    level: "A1",
    forms: { ich: "spiele", du: "spielst", erSieEs: "spielt", wir: "spielen", ihr: "spielt", sie: "spielen" },
  },
  {
    infinitive: "lernen",
    translation: "apprendre",
    level: "A1",
    forms: { ich: "lerne", du: "lernst", erSieEs: "lernt", wir: "lernen", ihr: "lernt", sie: "lernen" },
  },
  {
    infinitive: "wohnen",
    translation: "habiter",
    level: "A1",
    forms: { ich: "wohne", du: "wohnst", erSieEs: "wohnt", wir: "wohnen", ihr: "wohnt", sie: "wohnen" },
  },
  {
    infinitive: "kommen",
    translation: "venir",
    level: "A1",
    forms: { ich: "komme", du: "kommst", erSieEs: "kommt", wir: "kommen", ihr: "kommt", sie: "kommen" },
  },
  {
    infinitive: "gehen",
    translation: "aller",
    level: "A1",
    forms: { ich: "gehe", du: "gehst", erSieEs: "geht", wir: "gehen", ihr: "geht", sie: "gehen" },
  },
  {
    infinitive: "kaufen",
    translation: "acheter",
    level: "A1",
    forms: { ich: "kaufe", du: "kaufst", erSieEs: "kauft", wir: "kaufen", ihr: "kauft", sie: "kaufen" },
  },
  {
    infinitive: "arbeiten",
    translation: "travailler",
    level: "A1",
    forms: { ich: "arbeite", du: "arbeitest", erSieEs: "arbeitet", wir: "arbeiten", ihr: "arbeitet", sie: "arbeiten" },
  },

  // A2 — verbes forts (changement de voyelle à la 2e/3e personne)
  {
    infinitive: "fahren",
    translation: "conduire / aller (en véhicule)",
    level: "A2",
    forms: { ich: "fahre", du: "fährst", erSieEs: "fährt", wir: "fahren", ihr: "fahrt", sie: "fahren" },
  },
  {
    infinitive: "sehen",
    translation: "voir",
    level: "A2",
    forms: { ich: "sehe", du: "siehst", erSieEs: "sieht", wir: "sehen", ihr: "seht", sie: "sehen" },
  },
  {
    infinitive: "essen",
    translation: "manger",
    level: "A2",
    forms: { ich: "esse", du: "isst", erSieEs: "isst", wir: "essen", ihr: "esst", sie: "essen" },
  },
  {
    infinitive: "lesen",
    translation: "lire",
    level: "A2",
    forms: { ich: "lese", du: "liest", erSieEs: "liest", wir: "lesen", ihr: "lest", sie: "lesen" },
  },
  {
    infinitive: "sprechen",
    translation: "parler",
    level: "A2",
    forms: { ich: "spreche", du: "sprichst", erSieEs: "spricht", wir: "sprechen", ihr: "sprecht", sie: "sprechen" },
  },
  {
    infinitive: "helfen",
    translation: "aider",
    level: "A2",
    forms: { ich: "helfe", du: "hilfst", erSieEs: "hilft", wir: "helfen", ihr: "helft", sie: "helfen" },
  },
  {
    infinitive: "tragen",
    translation: "porter",
    level: "A2",
    forms: { ich: "trage", du: "trägst", erSieEs: "trägt", wir: "tragen", ihr: "tragt", sie: "tragen" },
  },
  {
    infinitive: "schlafen",
    translation: "dormir",
    level: "A2",
    forms: { ich: "schlafe", du: "schläfst", erSieEs: "schläft", wir: "schlafen", ihr: "schlaft", sie: "schlafen" },
  },

  // B1 — irréguliers fréquents
  {
    infinitive: "sein",
    translation: "être",
    level: "B1",
    forms: { ich: "bin", du: "bist", erSieEs: "ist", wir: "sind", ihr: "seid", sie: "sind" },
  },
  {
    infinitive: "haben",
    translation: "avoir",
    level: "B1",
    forms: { ich: "habe", du: "hast", erSieEs: "hat", wir: "haben", ihr: "habt", sie: "haben" },
  },
  {
    infinitive: "werden",
    translation: "devenir",
    level: "B1",
    forms: { ich: "werde", du: "wirst", erSieEs: "wird", wir: "werden", ihr: "werdet", sie: "werden" },
  },
  {
    infinitive: "wissen",
    translation: "savoir",
    level: "B1",
    forms: { ich: "weiß", du: "weißt", erSieEs: "weiß", wir: "wissen", ihr: "wisst", sie: "wissen" },
  },
  {
    infinitive: "nehmen",
    translation: "prendre",
    level: "B1",
    forms: { ich: "nehme", du: "nimmst", erSieEs: "nimmt", wir: "nehmen", ihr: "nehmt", sie: "nehmen" },
  },
  {
    infinitive: "geben",
    translation: "donner",
    level: "B1",
    forms: { ich: "gebe", du: "gibst", erSieEs: "gibt", wir: "geben", ihr: "gebt", sie: "geben" },
  },
  {
    infinitive: "kennen",
    translation: "connaître",
    level: "B1",
    forms: { ich: "kenne", du: "kennst", erSieEs: "kennt", wir: "kennen", ihr: "kennt", sie: "kennen" },
  },
  {
    infinitive: "finden",
    translation: "trouver",
    level: "B1",
    forms: { ich: "finde", du: "findest", erSieEs: "findet", wir: "finden", ihr: "findet", sie: "finden" },
  },

  // B2 — verbes de modalité
  {
    infinitive: "können",
    translation: "pouvoir",
    level: "B2",
    forms: { ich: "kann", du: "kannst", erSieEs: "kann", wir: "können", ihr: "könnt", sie: "können" },
  },
  {
    infinitive: "müssen",
    translation: "devoir",
    level: "B2",
    forms: { ich: "muss", du: "musst", erSieEs: "muss", wir: "müssen", ihr: "müsst", sie: "müssen" },
  },
  {
    infinitive: "dürfen",
    translation: "avoir le droit de",
    level: "B2",
    forms: { ich: "darf", du: "darfst", erSieEs: "darf", wir: "dürfen", ihr: "dürft", sie: "dürfen" },
  },
  {
    infinitive: "sollen",
    translation: "devoir (obligation morale)",
    level: "B2",
    forms: { ich: "soll", du: "sollst", erSieEs: "soll", wir: "sollen", ihr: "sollt", sie: "sollen" },
  },
  {
    infinitive: "wollen",
    translation: "vouloir",
    level: "B2",
    forms: { ich: "will", du: "willst", erSieEs: "will", wir: "wollen", ihr: "wollt", sie: "wollen" },
  },
  {
    infinitive: "mögen",
    translation: "aimer bien",
    level: "B2",
    forms: { ich: "mag", du: "magst", erSieEs: "mag", wir: "mögen", ihr: "mögt", sie: "mögen" },
  },
  {
    infinitive: "interessieren",
    translation: "intéresser",
    level: "B2",
    forms: { ich: "interessiere", du: "interessierst", erSieEs: "interessiert", wir: "interessieren", ihr: "interessiert", sie: "interessieren" },
  },
  {
    infinitive: "bedeuten",
    translation: "signifier",
    level: "B2",
    forms: { ich: "bedeute", du: "bedeutest", erSieEs: "bedeutet", wir: "bedeuten", ihr: "bedeutet", sie: "bedeuten" },
  },

  // C1 — verbes préfixés / plus soutenus
  {
    infinitive: "empfehlen",
    translation: "recommander",
    level: "C1",
    forms: { ich: "empfehle", du: "empfiehlst", erSieEs: "empfiehlt", wir: "empfehlen", ihr: "empfehlt", sie: "empfehlen" },
  },
  {
    infinitive: "vermeiden",
    translation: "éviter",
    level: "C1",
    forms: { ich: "vermeide", du: "vermeidest", erSieEs: "vermeidet", wir: "vermeiden", ihr: "vermeidet", sie: "vermeiden" },
  },
  {
    infinitive: "verlieren",
    translation: "perdre",
    level: "C1",
    forms: { ich: "verliere", du: "verlierst", erSieEs: "verliert", wir: "verlieren", ihr: "verliert", sie: "verlieren" },
  },
  {
    infinitive: "gewinnen",
    translation: "gagner",
    level: "C1",
    forms: { ich: "gewinne", du: "gewinnst", erSieEs: "gewinnt", wir: "gewinnen", ihr: "gewinnt", sie: "gewinnen" },
  },
  {
    infinitive: "erhalten",
    translation: "recevoir / conserver",
    level: "C1",
    forms: { ich: "erhalte", du: "erhältst", erSieEs: "erhält", wir: "erhalten", ihr: "erhaltet", sie: "erhalten" },
  },
  {
    infinitive: "entscheiden",
    translation: "décider",
    level: "C1",
    forms: { ich: "entscheide", du: "entscheidest", erSieEs: "entscheidet", wir: "entscheiden", ihr: "entscheidet", sie: "entscheiden" },
  },
  {
    infinitive: "erwähnen",
    translation: "mentionner",
    level: "C1",
    forms: { ich: "erwähne", du: "erwähnst", erSieEs: "erwähnt", wir: "erwähnen", ihr: "erwähnt", sie: "erwähnen" },
  },
  {
    infinitive: "begegnen",
    translation: "rencontrer",
    level: "C1",
    forms: { ich: "begegne", du: "begegnest", erSieEs: "begegnet", wir: "begegnen", ihr: "begegnet", sie: "begegnen" },
  },

  // C2 — registre soutenu / abstrait
  {
    infinitive: "widersprechen",
    translation: "contredire",
    level: "C2",
    forms: { ich: "widerspreche", du: "widersprichst", erSieEs: "widerspricht", wir: "widersprechen", ihr: "widersprecht", sie: "widersprechen" },
  },
  {
    infinitive: "überzeugen",
    translation: "convaincre",
    level: "C2",
    forms: { ich: "überzeuge", du: "überzeugst", erSieEs: "überzeugt", wir: "überzeugen", ihr: "überzeugt", sie: "überzeugen" },
  },
  {
    infinitive: "verurteilen",
    translation: "condamner",
    level: "C2",
    forms: { ich: "verurteile", du: "verurteilst", erSieEs: "verurteilt", wir: "verurteilen", ihr: "verurteilt", sie: "verurteilen" },
  },
  {
    infinitive: "bewältigen",
    translation: "surmonter / gérer",
    level: "C2",
    forms: { ich: "bewältige", du: "bewältigst", erSieEs: "bewältigt", wir: "bewältigen", ihr: "bewältigt", sie: "bewältigen" },
  },
  {
    infinitive: "rechtfertigen",
    translation: "justifier",
    level: "C2",
    forms: { ich: "rechtfertige", du: "rechtfertigst", erSieEs: "rechtfertigt", wir: "rechtfertigen", ihr: "rechtfertigt", sie: "rechtfertigen" },
  },
  {
    infinitive: "überwinden",
    translation: "surmonter (un obstacle)",
    level: "C2",
    forms: { ich: "überwinde", du: "überwindest", erSieEs: "überwindet", wir: "überwinden", ihr: "überwindet", sie: "überwinden" },
  },
  {
    infinitive: "betrachten",
    translation: "considérer",
    level: "C2",
    forms: { ich: "betrachte", du: "betrachtest", erSieEs: "betrachtet", wir: "betrachten", ihr: "betrachtet", sie: "betrachten" },
  },
  {
    infinitive: "verdeutlichen",
    translation: "clarifier",
    level: "C2",
    forms: { ich: "verdeutliche", du: "verdeutlichst", erSieEs: "verdeutlicht", wir: "verdeutlichen", ihr: "verdeutlicht", sie: "verdeutlichen" },
  },
];

export function verbsForLevel(level: LevelCode): VerbConjugation[] {
  return VERBS.filter((v) => v.level === level);
}
