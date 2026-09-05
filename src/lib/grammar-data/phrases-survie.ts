export type SurvieCategory =
  | "Se présenter"
  | "Demander de l'aide"
  | "Au restaurant"
  | "Se déplacer"
  | "Urgences"
  | "Politesse";

export interface SurviePhrase {
  de: string;
  fr: string;
}

export interface SurvieGroup {
  category: SurvieCategory;
  icon: string;
  phrases: SurviePhrase[];
}

/**
 * Phrases toutes faites, à mémoriser telles quelles, pour survivre dans des
 * situations sociales concrètes sans avoir besoin d'analyser la grammaire —
 * en réponse directe à l'obstacle "psychologie de l'apprenant / immersion
 * sociale" identifié dans la recherche pédagogique (peur de ne pas savoir
 * quoi dire dans une vraie interaction, même quand la grammaire est connue).
 */
export const SURVIE_GROUPS: SurvieGroup[] = [
  {
    category: "Se présenter",
    icon: "👋",
    phrases: [
      { de: "Hallo, ich heiße...", fr: "Bonjour, je m'appelle..." },
      { de: "Ich komme aus Frankreich.", fr: "Je viens de France." },
      { de: "Ich lerne gerade Deutsch.", fr: "J'apprends l'allemand en ce moment." },
      { de: "Wie heißt du? / Wie heißen Sie?", fr: "Comment tu t'appelles ? / Comment vous appelez-vous ?" },
      { de: "Freut mich!", fr: "Enchanté(e) !" },
    ],
  },
  {
    category: "Demander de l'aide",
    icon: "🙋",
    phrases: [
      { de: "Entschuldigung, können Sie mir helfen?", fr: "Excusez-moi, pouvez-vous m'aider ?" },
      { de: "Ich verstehe das nicht.", fr: "Je ne comprends pas." },
      { de: "Können Sie das bitte wiederholen?", fr: "Pouvez-vous répéter, s'il vous plaît ?" },
      { de: "Können Sie bitte langsamer sprechen?", fr: "Pouvez-vous parler plus lentement, s'il vous plaît ?" },
      { de: "Sprechen Sie Englisch/Französisch?", fr: "Parlez-vous anglais/français ?" },
      { de: "Was bedeutet das?", fr: "Qu'est-ce que ça veut dire ?" },
    ],
  },
  {
    category: "Au restaurant",
    icon: "🍽️",
    phrases: [
      { de: "Einen Tisch für zwei, bitte.", fr: "Une table pour deux, s'il vous plaît." },
      { de: "Die Speisekarte, bitte.", fr: "La carte, s'il vous plaît." },
      { de: "Ich hätte gern...", fr: "Je voudrais..." },
      { de: "Was empfehlen Sie?", fr: "Qu'est-ce que vous recommandez ?" },
      { de: "Die Rechnung, bitte.", fr: "L'addition, s'il vous plaît." },
      { de: "Es war sehr lecker!", fr: "C'était très bon !" },
    ],
  },
  {
    category: "Se déplacer",
    icon: "🚉",
    phrases: [
      { de: "Wo ist der Bahnhof?", fr: "Où est la gare ?" },
      { de: "Wie komme ich zum Hauptbahnhof?", fr: "Comment aller à la gare centrale ?" },
      { de: "Ein Ticket nach Berlin, bitte.", fr: "Un billet pour Berlin, s'il vous plaît." },
      { de: "Fährt dieser Zug nach München?", fr: "Ce train va-t-il à Munich ?" },
      { de: "Ist das weit von hier?", fr: "Est-ce loin d'ici ?" },
    ],
  },
  {
    category: "Urgences",
    icon: "🚨",
    phrases: [
      { de: "Hilfe!", fr: "À l'aide !" },
      { de: "Rufen Sie einen Arzt!", fr: "Appelez un médecin !" },
      { de: "Ich brauche einen Krankenwagen.", fr: "J'ai besoin d'une ambulance." },
      { de: "Ich habe mich verlaufen.", fr: "Je me suis perdu(e)." },
      { de: "Wo ist die nächste Apotheke?", fr: "Où est la pharmacie la plus proche ?" },
    ],
  },
  {
    category: "Politesse",
    icon: "🤝",
    phrases: [
      { de: "Bitte", fr: "S'il vous plaît / Je vous en prie" },
      { de: "Danke schön / Vielen Dank", fr: "Merci beaucoup" },
      { de: "Entschuldigung", fr: "Pardon / Excusez-moi" },
      { de: "Kein Problem.", fr: "Pas de problème." },
      { de: "Auf Wiedersehen!", fr: "Au revoir !" },
      { de: "Bis bald!", fr: "À bientôt !" },
    ],
  },
];
