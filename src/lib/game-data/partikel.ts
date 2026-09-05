export interface PartikelItem {
  infinitive: string;
  meaning: string;
  sentence: string;
  verbIndex: number;
  particleIndex: number;
  explanation: string;
}

/**
 * Verbes à particule séparable : à l'indicatif présent dans une phrase
 * principale, le verbe conjugué reste en position 2 et la particule est
 * rejetée tout à la fin (même logique que la Satzklammer). `verbIndex` et
 * `particleIndex` sont des index dans `sentence.split(" ")` (ponctuation
 * incluse, collée au mot précédent).
 */
export const PARTIKEL_ITEMS: PartikelItem[] = [
  {
    infinitive: "einkaufen",
    meaning: "faire les courses",
    sentence: "Ich kaufe im Supermarkt ein.",
    verbIndex: 1,
    particleIndex: 4,
    explanation: "« ein » se détache de « einkaufen » et part à la fin de la phrase.",
  },
  {
    infinitive: "ankommen",
    meaning: "arriver",
    sentence: "Der Zug kommt pünktlich an.",
    verbIndex: 2,
    particleIndex: 4,
    explanation: "« an » se détache de « ankommen » et part à la fin de la phrase.",
  },
  {
    infinitive: "aufstehen",
    meaning: "se lever",
    sentence: "Sie steht jeden Morgen früh auf.",
    verbIndex: 1,
    particleIndex: 5,
    explanation: "« auf » se détache de « aufstehen », même avec plusieurs mots entre les deux.",
  },
  {
    infinitive: "anrufen",
    meaning: "appeler (au téléphone)",
    sentence: "Ich rufe meine Mutter an.",
    verbIndex: 1,
    particleIndex: 4,
    explanation: "« an » se détache de « anrufen » et part à la fin de la phrase.",
  },
  {
    infinitive: "mitkommen",
    meaning: "venir avec",
    sentence: "Kommst du heute Abend mit?",
    verbIndex: 0,
    particleIndex: 4,
    explanation: "Même dans une question, « mit » reste rejeté à la fin de « mitkommen ».",
  },
  {
    infinitive: "aufmachen",
    meaning: "ouvrir",
    sentence: "Er macht das Fenster auf.",
    verbIndex: 1,
    particleIndex: 4,
    explanation: "« auf » se détache de « aufmachen » et part à la fin de la phrase.",
  },
  {
    infinitive: "zumachen",
    meaning: "fermer",
    sentence: "Bitte mach die Tür zu!",
    verbIndex: 1,
    particleIndex: 4,
    explanation: "Même à l'impératif, « zu » reste rejeté à la fin de « zumachen ».",
  },
  {
    infinitive: "fernsehen",
    meaning: "regarder la télévision",
    sentence: "Wir sehen jeden Abend fern.",
    verbIndex: 1,
    particleIndex: 4,
    explanation: "« fern » se détache de « fernsehen » et part à la fin de la phrase.",
  },
  {
    infinitive: "aufräumen",
    meaning: "ranger",
    sentence: "Ich räume mein Zimmer auf.",
    verbIndex: 1,
    particleIndex: 4,
    explanation: "« auf » se détache de « aufräumen » et part à la fin de la phrase.",
  },
  {
    infinitive: "vorbereiten",
    meaning: "préparer",
    sentence: "Sie bereitet das Essen vor.",
    verbIndex: 1,
    particleIndex: 4,
    explanation: "« vor » se détache de « vorbereiten » et part à la fin de la phrase.",
  },
  {
    infinitive: "weggehen",
    meaning: "partir",
    sentence: "Er geht sofort weg.",
    verbIndex: 1,
    particleIndex: 3,
    explanation: "« weg » se détache de « weggehen » et part à la fin de la phrase.",
  },
  {
    infinitive: "anfangen",
    meaning: "commencer",
    sentence: "Der Film fängt um acht an.",
    verbIndex: 2,
    particleIndex: 5,
    explanation: "« an » se détache de « anfangen », même entouré d'un complément de temps.",
  },
  {
    infinitive: "aussehen",
    meaning: "avoir l'air, ressembler à",
    sentence: "Das Kleid sieht schön aus.",
    verbIndex: 2,
    particleIndex: 4,
    explanation: "« aus » se détache de « aussehen » et part à la fin de la phrase.",
  },
  {
    infinitive: "einladen",
    meaning: "inviter",
    sentence: "Wir laden unsere Freunde ein.",
    verbIndex: 1,
    particleIndex: 4,
    explanation: "« ein » se détache de « einladen » et part à la fin de la phrase.",
  },
  {
    infinitive: "vorschlagen",
    meaning: "proposer",
    sentence: "Sie schlägt einen Ausflug vor.",
    verbIndex: 1,
    particleIndex: 4,
    explanation: "« vor » se détache de « vorschlagen » et part à la fin de la phrase.",
  },
  {
    infinitive: "zurückkommen",
    meaning: "revenir",
    sentence: "Er kommt nächste Woche zurück.",
    verbIndex: 1,
    particleIndex: 4,
    explanation: "« zurück » se détache de « zurückkommen » et part à la fin de la phrase.",
  },
  {
    infinitive: "mitbringen",
    meaning: "apporter (avec soi)",
    sentence: "Ich bringe einen Kuchen mit.",
    verbIndex: 1,
    particleIndex: 4,
    explanation: "« mit » se détache de « mitbringen » et part à la fin de la phrase.",
  },
  {
    infinitive: "anziehen",
    meaning: "mettre (un vêtement)",
    sentence: "Er zieht seine Jacke an.",
    verbIndex: 1,
    particleIndex: 4,
    explanation: "« an » se détache de « anziehen » et part à la fin de la phrase.",
  },
  {
    infinitive: "ausziehen",
    meaning: "enlever (un vêtement)",
    sentence: "Sie zieht ihre Schuhe aus.",
    verbIndex: 1,
    particleIndex: 4,
    explanation: "« aus » se détache de « ausziehen » et part à la fin de la phrase.",
  },
  {
    infinitive: "abholen",
    meaning: "aller chercher (quelqu'un)",
    sentence: "Ich hole dich am Bahnhof ab.",
    verbIndex: 1,
    particleIndex: 5,
    explanation: "« ab » se détache de « abholen », même avec plusieurs mots entre les deux.",
  },
  {
    infinitive: "vorbeikommen",
    meaning: "passer (voir quelqu'un)",
    sentence: "Kommst du morgen vorbei?",
    verbIndex: 0,
    particleIndex: 3,
    explanation: "Même dans une question, « vorbei » reste rejeté à la fin de « vorbeikommen ».",
  },
  {
    infinitive: "umziehen",
    meaning: "déménager",
    sentence: "Wir ziehen nächsten Monat um.",
    verbIndex: 1,
    particleIndex: 4,
    explanation: "« um » se détache de « umziehen » et part à la fin de la phrase.",
  },
  {
    infinitive: "einschlafen",
    meaning: "s'endormir",
    sentence: "Das Baby schläft schnell ein.",
    verbIndex: 2,
    particleIndex: 4,
    explanation: "« ein » se détache de « einschlafen » et part à la fin de la phrase.",
  },
  {
    infinitive: "aufwachen",
    meaning: "se réveiller",
    sentence: "Ich wache jeden Tag früh auf.",
    verbIndex: 1,
    particleIndex: 5,
    explanation: "« auf » se détache de « aufwachen », même avec plusieurs mots entre les deux.",
  },
];
