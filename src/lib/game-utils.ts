/**
 * Utilitaires partagés par les mini-jeux sous /jeux — mutualise ce qui
 * était dupliqué quasi à l'identique dans chaque composant (mélange,
 * tirage aléatoire, lecture/écriture d'un meilleur score en localStorage).
 * La logique de comparaison ("plus petit est meilleur" pour un temps,
 * "plus grand est meilleur" pour une série/un score) reste dans chaque
 * composant, car elle diffère d'un jeu à l'autre.
 */

/** Mélange de Fisher-Yates, ne mute pas le tableau d'entrée. */
export function shuffle<T>(arr: T[]): T[] {
  const a = [...arr];
  for (let i = a.length - 1; i > 0; i--) {
    const j = Math.floor(Math.random() * (i + 1));
    [a[i], a[j]] = [a[j], a[i]];
  }
  return a;
}

/** Tire un élément au hasard dans `pool`, en évitant `avoid` si possible
 * (jusqu'à 10 essais, pour ne pas tirer deux fois la même carte/phrase
 * d'affilée sans boucler indéfiniment sur un pool à un seul élément). */
export function pickRandom<T>(pool: T[], avoid?: T): T {
  if (pool.length <= 1) return pool[0];
  let choice = pool[Math.floor(Math.random() * pool.length)];
  let guard = 0;
  while (choice === avoid && guard < 10) {
    choice = pool[Math.floor(Math.random() * pool.length)];
    guard++;
  }
  return choice;
}

/**
 * Fabrique un couple lecture/écriture d'un score en localStorage, sous la
 * clé `lesepfad:<base>[:<suffix>]`. `base` inclut déjà le nom du jeu et la
 * métrique (ex. "artikel-memory:best", "blitz-quiz:score",
 * "deklination-trainer:best-streak") pour rester compatible avec les clés
 * déjà écrites par les joueurs existants. `suffix` distingue les variantes
 * d'un même jeu (niveau, filtre...) ; certains jeux n'en ont pas.
 */
export function bestScoreStorage(base: string) {
  function key(suffix?: string): string {
    return suffix ? `lesepfad:${base}:${suffix}` : `lesepfad:${base}`;
  }
  function read(suffix?: string): number | null {
    try {
      const raw = window.localStorage.getItem(key(suffix));
      return raw ? Number(raw) : null;
    } catch {
      return null;
    }
  }
  function write(value: number, suffix?: string) {
    try {
      window.localStorage.setItem(key(suffix), String(value));
    } catch {
      // stockage indisponible (navigation privée, etc.) : pas bloquant
    }
  }
  return { read, write };
}
