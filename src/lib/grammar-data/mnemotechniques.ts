export type MnemoCategory = "Genre" | "Cas" | "Syntaxe" | "Verbe";

export interface MnemoItem {
  title: string;
  category: MnemoCategory;
  trick: string;
  example: string;
}

/**
 * Astuces mnémotechniques pour les points de grammaire qui reviennent le
 * plus souvent bloquer — pas des règles exhaustives, des raccourcis pour se
 * décider vite dans le doute.
 */
export const MNEMO_ITEMS: MnemoItem[] = [
  {
    title: "-ung, -heit, -keit, -schaft, -ion, -tät → toujours féminin",
    category: "Genre",
    trick:
      "Ces terminaisons sont un signal quasi infaillible : le nom est féminin (die), sans exception connue.",
    example: "die Wohnung, die Freiheit, die Möglichkeit, die Freundschaft, die Universität",
  },
  {
    title: "-chen, -lein → toujours neutre",
    category: "Genre",
    trick:
      "Un diminutif en -chen ou -lein est toujours neutre (das), même si le mot d'origine ne l'est pas.",
    example: "die Frau → das Fräulein · das Mädchen (« la fille », pourtant neutre !)",
  },
  {
    title: "Wer ? Wen ? Wem ? Wessen ?",
    category: "Cas",
    trick:
      "Les questions posent les cas dans l'ordre Nominatif → Accusatif → Datif → Génitif : mémorise la suite « Wer-Wen-Wem-Wessen » comme une petite comptine.",
    example: "Wer hilft? (Nom.) · Wen siehst du? (Akk.) · Wem hilfst du? (Dat.) · Wessen Buch? (Gén.)",
  },
  {
    title: "TeKaMoLo",
    category: "Syntaxe",
    trick:
      "Quand plusieurs compléments circonstanciels s'accumulent dans une phrase allemande, l'ordre par défaut est Temporal → Kausal → Modal → Lokal (quand → pourquoi → comment → où).",
    example: "Ich fahre morgen wegen der Arbeit mit dem Auto nach Berlin.",
  },
  {
    title: "Verbes toujours au datif",
    category: "Verbe",
    trick:
      "Une poignée de verbes très fréquents prennent toujours un complément au datif, jamais à l'accusatif : helfen, danken, gefallen, gehören, folgen, glauben, gratulieren, passen.",
    example: "Ich helfe dir. · Das gefällt mir. · Das Auto gehört ihm.",
  },
  {
    title: "Prépositions toujours à l'accusatif",
    category: "Cas",
    trick:
      "durch, für, ohne, um, gegen, bis : six prépositions qui déclenchent toujours l'accusatif, quel que soit le sens de la phrase.",
    example: "für dich, ohne Zucker, um den Tisch, gegen die Wand",
  },
  {
    title: "Prépositions toujours au datif",
    category: "Cas",
    trick:
      "aus, bei, mit, nach, seit, von, zu : ces prépositions déclenchent toujours le datif, sans exception.",
    example: "aus Frankreich, bei meiner Familie, mit dem Bus, seit einem Jahr",
  },
  {
    title: "Perfekt avec sein",
    category: "Verbe",
    trick:
      "L'auxiliaire sein (et non haben) s'utilise pour les verbes de mouvement avec changement de lieu, les verbes de changement d'état, et deux irréguliers (bleiben, sein lui-même).",
    example: "Ich bin gegangen. · Er ist gestorben. · Wir sind geblieben.",
  },
];

export const MNEMO_CATEGORIES: MnemoCategory[] = ["Genre", "Cas", "Syntaxe", "Verbe"];
