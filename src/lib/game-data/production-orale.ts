export interface OraleItem {
  prompt: string;
  target: string;
}

/**
 * Phrases à produire à l'oral : consigne en français, phrase allemande
 * attendue. Reprend volontairement des structures déjà travaillées ailleurs
 * dans l'app (verbe à particule séparable, Nebensatz avec dass, Perfekt) —
 * l'objectif ici est l'automatisation à l'oral, pas la découverte.
 */
export const ORALE_ITEMS: OraleItem[] = [
  {
    prompt: "Dis bonjour et présente-toi (dis que tu t'appelles Anna).",
    target: "Hallo, ich heiße Anna.",
  },
  {
    prompt: "Demande à quelqu'un comment il/elle s'appelle (forme polie).",
    target: "Wie heißen Sie?",
  },
  {
    prompt: "Dis que tu apprends l'allemand depuis un an.",
    target: "Ich lerne seit einem Jahr Deutsch.",
  },
  {
    prompt: "Demande où se trouve la gare.",
    target: "Wo ist der Bahnhof?",
  },
  {
    prompt: "Commande un café, s'il te plaît.",
    target: "Ich hätte gern einen Kaffee, bitte.",
  },
  {
    prompt: "Demande l'addition.",
    target: "Die Rechnung, bitte.",
  },
  {
    prompt: "Dis que tu ne comprends pas et demande de répéter.",
    target: "Ich verstehe das nicht, können Sie das bitte wiederholen?",
  },
  {
    prompt: "Dis que tu es désolé(e) d'être en retard.",
    target: "Es tut mir leid, dass ich zu spät bin.",
  },
  {
    prompt: "Propose d'aller au cinéma ce soir.",
    target: "Wollen wir heute Abend ins Kino gehen?",
  },
  {
    prompt: "Dis que le film t'a beaucoup plu.",
    target: "Der Film hat mir sehr gut gefallen.",
  },
  {
    prompt: "Demande quel temps il fera demain.",
    target: "Wie wird das Wetter morgen?",
  },
  {
    prompt: "Explique que tu dois d'abord ranger ta chambre.",
    target: "Ich muss zuerst mein Zimmer aufräumen.",
  },
  {
    prompt: "Dis que tu es content(e) que ton ami t'ait aidé hier.",
    target: "Ich bin froh, dass mir mein Freund gestern geholfen hat.",
  },
  {
    prompt: "Demande si ce train va à Munich.",
    target: "Fährt dieser Zug nach München?",
  },
  {
    prompt: "Souhaite un bon voyage à quelqu'un.",
    target: "Gute Reise!",
  },
  {
    prompt: "Demande le prix de quelque chose.",
    target: "Was kostet das?",
  },
  {
    prompt: "Dis que tu as faim.",
    target: "Ich habe Hunger.",
  },
  {
    prompt: "Propose de se retrouver à 18 heures devant la gare.",
    target: "Sollen wir uns um 18 Uhr vor dem Bahnhof treffen?",
  },
  {
    prompt: "Dis que tu dois annuler le rendez-vous parce que tu es malade.",
    target: "Ich muss den Termin absagen, weil ich krank bin.",
  },
  {
    prompt: "Demande si quelqu'un peut te recommander un bon restaurant.",
    target: "Können Sie mir ein gutes Restaurant empfehlen?",
  },
  {
    prompt: "Dis que tu es d'accord, à condition que le prix soit correct.",
    target: "Ich bin einverstanden, vorausgesetzt der Preis stimmt.",
  },
  {
    prompt: "Exprime tes doutes sur cette solution.",
    target: "Ich habe Zweifel an dieser Lösung.",
  },
  {
    prompt: "Félicite quelqu'un pour son nouveau travail.",
    target: "Herzlichen Glückwunsch zu deinem neuen Job!",
  },
];
