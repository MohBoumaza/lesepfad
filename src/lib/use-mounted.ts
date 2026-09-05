"use client";

import { useEffect, useState } from "react";

/**
 * `true` seulement une fois monté côté client. Sert à retarder tout rendu
 * qui dépend d'un tirage aléatoire (pioche de carte, phrase piochée) ou du
 * localStorage (meilleur score) : ces valeurs ne sont pas connues côté
 * serveur, donc les calculer dès le premier rendu provoquerait un
 * hydration mismatch (le HTML rendu par le serveur ne correspondrait pas
 * à ce que React attend au premier rendu client). Le rendu "avant
 * montage" doit rester strictement identique serveur/client — un
 * squelette simple — puis on bascule sur le vrai contenu une fois monté.
 */
export function useMounted(): boolean {
  const [mounted, setMounted] = useState(false);
  useEffect(() => {
    // Cas d'usage volontaire et minimal de setState-dans-effet : c'est la
    // seule façon de détecter qu'on a dépassé l'hydratation avant de
    // calculer un état aléatoire ou de lire le localStorage.
    // eslint-disable-next-line react-hooks/set-state-in-effect
    setMounted(true);
  }, []);
  return mounted;
}
