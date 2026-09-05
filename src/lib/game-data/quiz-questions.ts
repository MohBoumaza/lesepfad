import type { LevelCode } from "@/types/database";

export interface QuizChoice {
  label: string;
  correct?: boolean;
}

export interface QuizQuestion {
  level: LevelCode;
  prompt: string;
  choices: QuizChoice[];
}

/**
 * Banque de questions générales (langue + culture allemande), indépendante
 * du contenu des histoires — alimente le Blitz-Quiz du jour, qui pioche 10
 * questions tous niveaux confondus.
 */
export const QUIZ_QUESTIONS: QuizQuestion[] = [
  // A1
  {
    level: "A1",
    prompt: "Was bedeutet « der Apfel » ?",
    choices: [
      { label: "la pomme", correct: true },
      { label: "la poire" },
      { label: "la banane" },
      { label: "l'orange" },
    ],
  },
  {
    level: "A1",
    prompt: "Wie sagt man « Bonjour » (formell) auf Deutsch?",
    choices: [
      { label: "Guten Tag", correct: true },
      { label: "Gute Nacht" },
      { label: "Tschüss" },
      { label: "Prost" },
    ],
  },
  {
    level: "A1",
    prompt: "Ergänze: Ich ___ Student.",
    choices: [
      { label: "bin", correct: true },
      { label: "bist" },
      { label: "ist" },
      { label: "sind" },
    ],
  },
  {
    level: "A1",
    prompt: "Was ist die Hauptstadt von Deutschland?",
    choices: [
      { label: "Berlin", correct: true },
      { label: "München" },
      { label: "Hamburg" },
      { label: "Köln" },
    ],
  },
  {
    level: "A1",
    prompt: "Welcher Artikel gehört zu « Buch » ?",
    choices: [
      { label: "das", correct: true },
      { label: "der" },
      { label: "die" },
      { label: "den" },
    ],
  },
  {
    level: "A1",
    prompt: "Wie viele Fälle (Kasus) hat die deutsche Sprache?",
    choices: [
      { label: "vier", correct: true },
      { label: "zwei" },
      { label: "drei" },
      { label: "fünf" },
    ],
  },
  {
    level: "A1",
    prompt: "Welcher Artikel gehört zu « Milch » ?",
    choices: [
      { label: "die", correct: true },
      { label: "der" },
      { label: "das" },
      { label: "den" },
    ],
  },
  {
    level: "A1",
    prompt: "Wie fragt man informell nach dem Namen einer Person?",
    choices: [
      { label: "Wie heißt du?", correct: true },
      { label: "Wie geht es dir?" },
      { label: "Wo wohnst du?" },
      { label: "Wie alt bist du?" },
    ],
  },
  {
    level: "A1",
    prompt: "Was bedeutet « die Woche » ?",
    choices: [
      { label: "la semaine", correct: true },
      { label: "le mois" },
      { label: "l'année" },
      { label: "le jour" },
    ],
  },

  // A2
  {
    level: "A2",
    prompt: "Was feiert man am 3. Oktober in Deutschland?",
    choices: [
      { label: "den Tag der Deutschen Einheit", correct: true },
      { label: "Weihnachten" },
      { label: "Ostern" },
      { label: "Karneval" },
    ],
  },
  {
    level: "A2",
    prompt: "Ergänze: Er ___ jeden Tag zur Arbeit.",
    choices: [
      { label: "fährt", correct: true },
      { label: "fahrt" },
      { label: "fahren" },
      { label: "fahre" },
    ],
  },
  {
    level: "A2",
    prompt: "Welches Gebäck ist in Nürnberg besonders bekannt?",
    choices: [
      { label: "Lebkuchen", correct: true },
      { label: "Baguette" },
      { label: "Croissant" },
      { label: "Tiramisu" },
    ],
  },
  {
    level: "A2",
    prompt: "Welcher Fluss fließt durch Köln?",
    choices: [
      { label: "der Rhein", correct: true },
      { label: "die Donau" },
      { label: "die Elbe" },
      { label: "die Oder" },
    ],
  },
  {
    level: "A2",
    prompt: "Was bedeutet « der Kühlschrank » ?",
    choices: [
      { label: "le réfrigérateur", correct: true },
      { label: "le four" },
      { label: "le lave-linge" },
      { label: "l'aspirateur" },
    ],
  },
  {
    level: "A2",
    prompt: "Ergänze: Wir ___ am Wochenende ins Kino.",
    choices: [
      { label: "gehen", correct: true },
      { label: "geht" },
      { label: "gehst" },
      { label: "gehe" },
    ],
  },
  {
    level: "A2",
    prompt: "Wie heißt der traditionelle deutsche Marktplatz-Markt im Dezember?",
    choices: [
      { label: "der Weihnachtsmarkt", correct: true },
      { label: "das Oktoberfest" },
      { label: "der Karneval" },
      { label: "die Kirmes" },
    ],
  },
  {
    level: "A2",
    prompt: "Ergänze: Er ___ gern klassische Musik.",
    choices: [
      { label: "hört", correct: true },
      { label: "hören" },
      { label: "hörst" },
      { label: "höre" },
    ],
  },
  {
    level: "A2",
    prompt: "Was bedeutet « die Verspätung » ?",
    choices: [
      { label: "le retard", correct: true },
      { label: "l'avance" },
      { label: "l'horaire" },
      { label: "le départ" },
    ],
  },

  // B1
  {
    level: "B1",
    prompt: "Welcher Artikel löst den Dativ aus: « Ich helfe ___ Mutter. »",
    choices: [
      { label: "der", correct: true },
      { label: "die" },
      { label: "den" },
      { label: "das" },
    ],
  },
  {
    level: "B1",
    prompt: "Was ist das Oktoberfest?",
    choices: [
      { label: "ein bayerisches Bierfest", correct: true },
      { label: "ein Filmfestival" },
      { label: "eine Buchmesse" },
      { label: "ein Marathon" },
    ],
  },
  {
    level: "B1",
    prompt: "Ergänze im Perfekt: Ich ___ gestern ins Kino gegangen.",
    choices: [
      { label: "bin", correct: true },
      { label: "habe" },
      { label: "war" },
      { label: "hatte" },
    ],
  },
  {
    level: "B1",
    prompt: "Welche Stadt ist bekannt für ihre internationale Buchmesse?",
    choices: [
      { label: "Frankfurt", correct: true },
      { label: "München" },
      { label: "Dresden" },
      { label: "Bremen" },
    ],
  },
  {
    level: "B1",
    prompt: "Welche Präposition verlangt den Genitiv?",
    choices: [
      { label: "trotz", correct: true },
      { label: "mit" },
      { label: "bei" },
      { label: "von" },
    ],
  },
  {
    level: "B1",
    prompt:
      "Wie nennt man die Berufsausbildung, die Theorie (Berufsschule) und Praxis (Betrieb) kombiniert?",
    choices: [
      { label: "die duale Ausbildung", correct: true },
      { label: "das Abitur" },
      { label: "das Praktikum" },
      { label: "das Studium" },
    ],
  },
  {
    level: "B1",
    prompt: "Ergänze: Ich ___ mich auf die Prüfung vor.",
    choices: [
      { label: "bereite", correct: true },
      { label: "bereitet" },
      { label: "bereiten" },
      { label: "bereitest" },
    ],
  },
  {
    level: "B1",
    prompt: "Wie nennt man eine Wohnung, die man mit anderen Personen teilt?",
    choices: [
      { label: "eine Wohngemeinschaft (WG)", correct: true },
      { label: "ein Einfamilienhaus" },
      { label: "ein Hotelzimmer" },
      { label: "ein Wohnwagen" },
    ],
  },
  {
    level: "B1",
    prompt: "Welche Konjunktion drückt einen Gegensatz aus?",
    choices: [
      { label: "obwohl", correct: true },
      { label: "weil" },
      { label: "dass" },
      { label: "wenn" },
    ],
  },

  // B2
  {
    level: "B2",
    prompt: "Ergänze im Konjunktiv II: Wenn ich Zeit ___, würde ich reisen.",
    choices: [
      { label: "hätte", correct: true },
      { label: "habe" },
      { label: "hatte" },
      { label: "haben" },
    ],
  },
  {
    level: "B2",
    prompt: "Wer schrieb « Faust » ?",
    choices: [
      { label: "Johann Wolfgang von Goethe", correct: true },
      { label: "Friedrich Schiller" },
      { label: "Thomas Mann" },
      { label: "Franz Kafka" },
    ],
  },
  {
    level: "B2",
    prompt: "Welche Präposition passt: « Er besteht ___ seiner Meinung. »",
    choices: [
      { label: "auf", correct: true },
      { label: "an" },
      { label: "in" },
      { label: "mit" },
    ],
  },
  {
    level: "B2",
    prompt: "Was bezeichnet die « Wende » in der deutschen Geschichte?",
    choices: [
      { label: "den Fall der Berliner Mauer und die Wiedervereinigung", correct: true },
      { label: "den Zweiten Weltkrieg" },
      { label: "die Industrialisierung" },
      { label: "die Reformation" },
    ],
  },
  {
    level: "B2",
    prompt: "Welche Konjunktion verlangt die Endstellung des Verbs im Nebensatz?",
    choices: [
      { label: "weil", correct: true },
      { label: "und" },
      { label: "aber" },
      { label: "denn" },
    ],
  },
  {
    level: "B2",
    prompt:
      "Wie nennt man einen zusammengesetzten Satz mit Haupt- und Nebensatz?",
    choices: [
      { label: "ein Satzgefüge", correct: true },
      { label: "eine Satzreihe" },
      { label: "ein Hauptsatz" },
      { label: "ein Wortfeld" },
    ],
  },
  {
    level: "B2",
    prompt: "Welches Modalverb drückt hier eine Vermutung aus: « Er ___ krank sein. »",
    choices: [
      { label: "dürfte", correct: true },
      { label: "muss" },
      { label: "soll" },
      { label: "will" },
    ],
  },
  {
    level: "B2",
    prompt: "Was bedeutet das Präfix « miss- » in « misslingen » ?",
    choices: [
      { label: "eine negative Bedeutung", correct: true },
      { label: "eine Wiederholung" },
      { label: "eine Verstärkung" },
      { label: "eine Verkleinerung" },
    ],
  },
  {
    level: "B2",
    prompt: "Welche Stadt gilt als Finanzzentrum Deutschlands?",
    choices: [
      { label: "Frankfurt am Main", correct: true },
      { label: "Stuttgart" },
      { label: "Leipzig" },
      { label: "Hannover" },
    ],
  },

  // C1
  {
    level: "C1",
    prompt:
      "Welches Tempus drückt eine abgeschlossene Handlung vor einer anderen Vergangenheit aus?",
    choices: [
      { label: "das Plusquamperfekt", correct: true },
      { label: "das Präteritum" },
      { label: "das Perfekt" },
      { label: "das Futur II" },
    ],
  },
  {
    level: "C1",
    prompt: "Was bezeichnet der Begriff « Trümmerliteratur » ?",
    choices: [
      { label: "die deutsche Nachkriegsliteratur nach 1945", correct: true },
      { label: "mittelalterliche Dichtung" },
      { label: "Science-Fiction-Romane" },
      { label: "Kinderliteratur" },
    ],
  },
  {
    level: "C1",
    prompt: "Welches Verb wird mit dem Genitiv konstruiert?",
    choices: [
      { label: "bedürfen", correct: true },
      { label: "brauchen" },
      { label: "benötigen" },
      { label: "verlangen" },
    ],
  },
  {
    level: "C1",
    prompt: "Was unterscheidet « da » von « weil » als Kausalkonjunktion?",
    choices: [
      { label: "« da » steht oft am Satzanfang und wirkt formeller", correct: true },
      { label: "sie sind nie austauschbar" },
      { label: "« da » bedeutet nur « dort »" },
      { label: "es gibt keinen Unterschied" },
    ],
  },
  {
    level: "C1",
    prompt: "Wer war ein bedeutender Vertreter des literarischen Expressionismus?",
    choices: [
      { label: "Georg Trakl", correct: true },
      { label: "Theodor Fontane" },
      { label: "Gotthold Ephraim Lessing" },
      { label: "Adalbert Stifter" },
    ],
  },
  {
    level: "C1",
    prompt: "Welche Präposition steht bei « sich interessieren » ?",
    choices: [
      { label: "für", correct: true },
      { label: "an" },
      { label: "auf" },
      { label: "mit" },
    ],
  },
  {
    level: "C1",
    prompt: "Welches Textmerkmal kennzeichnet einen Kommentar (Zeitungsgenre)?",
    choices: [
      { label: "eine subjektive Meinung des Autors", correct: true },
      { label: "eine reine Tatsachendarstellung" },
      { label: "ein fiktionaler Dialog" },
      { label: "eine Gedichtform" },
    ],
  },
  {
    level: "C1",
    prompt: "Welche Funktion hat der Konjunktiv I hauptsächlich?",
    choices: [
      { label: "die indirekte Rede", correct: true },
      { label: "die Vergangenheit" },
      { label: "den Imperativ" },
      { label: "den Vergleich" },
    ],
  },
  {
    level: "C1",
    prompt: "Wer gilt als Begründer der modernen Psychoanalyse?",
    choices: [
      { label: "Sigmund Freud", correct: true },
      { label: "Max Weber" },
      { label: "Karl Marx" },
      { label: "Immanuel Kant" },
    ],
  },

  // C2
  {
    level: "C2",
    prompt: "Was bedeutet die Redewendung « die Katze im Sack kaufen » ?",
    choices: [
      { label: "etwas kaufen, ohne es vorher zu prüfen", correct: true },
      { label: "etwas sehr Billiges kaufen" },
      { label: "ein Haustier adoptieren" },
      { label: "einen Fehler eingestehen" },
    ],
  },
  {
    level: "C2",
    prompt: "Welches Stilmittel liegt in « Das Schweigen schrie » vor?",
    choices: [
      { label: "ein Oxymoron", correct: true },
      { label: "eine Metapher" },
      { label: "eine Alliteration" },
      { label: "eine Anapher" },
    ],
  },
  {
    level: "C2",
    prompt: "Was bezeichnet « Vergangenheitsbewältigung » in Deutschland?",
    choices: [
      { label: "die kritische Auseinandersetzung mit der NS-Zeit", correct: true },
      { label: "die Digitalisierung der Verwaltung" },
      { label: "die Rentenreform" },
      { label: "die Wiedervereinigung" },
    ],
  },
  {
    level: "C2",
    prompt: "Welcher Kasus folgt auf « ungeachtet » ?",
    choices: [
      { label: "der Genitiv", correct: true },
      { label: "der Dativ" },
      { label: "der Akkusativ" },
      { label: "der Nominativ" },
    ],
  },
  {
    level: "C2",
    prompt: "Was bedeutet « etwas auf die lange Bank schieben » ?",
    choices: [
      { label: "etwas aufschieben", correct: true },
      { label: "etwas schnell erledigen" },
      { label: "etwas vergessen" },
      { label: "etwas verkaufen" },
    ],
  },
  {
    level: "C2",
    prompt: "Wer prägte den Begriff « Dialektik der Aufklärung » ?",
    choices: [
      { label: "Adorno und Horkheimer", correct: true },
      { label: "Kant und Hegel" },
      { label: "Marx und Engels" },
      { label: "Nietzsche und Schopenhauer" },
    ],
  },
  {
    level: "C2",
    prompt: "Was bedeutet « etwas auf Eis legen » ?",
    choices: [
      { label: "etwas vorübergehend aufschieben", correct: true },
      { label: "etwas kühlen" },
      { label: "etwas beenden" },
      { label: "etwas feiern" },
    ],
  },
  {
    level: "C2",
    prompt: "Wie nennt man ein literarisches Verfahren, das innere Gedanken ohne erzählerische Distanz wiedergibt?",
    choices: [
      { label: "der Bewusstseinsstrom", correct: true },
      { label: "die Rahmenerzählung" },
      { label: "der Briefroman" },
      { label: "die Fabel" },
    ],
  },
  {
    level: "C2",
    prompt: "Welcher Kasus folgt gehobensprachlich auf « angesichts » ?",
    choices: [
      { label: "der Genitiv", correct: true },
      { label: "der Dativ" },
      { label: "der Akkusativ" },
      { label: "der Nominativ" },
    ],
  },
];
