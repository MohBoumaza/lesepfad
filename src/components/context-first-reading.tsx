"use client";

import { useState, type ReactNode } from "react";
import { useMounted } from "@/lib/use-mounted";

function sessionKey(storyId: string) {
  return `lesepfad:context-first:${storyId}`;
}

/** sessionStorage (pas localStorage) : l'échauffement doit se relancer
 * d'une session de navigation à l'autre, mais pas à chaque retour en
 * arrière/rechargement pendant la même visite. */
function readStarted(storyId: string): boolean {
  try {
    return window.sessionStorage.getItem(sessionKey(storyId)) === "1";
  } catch {
    return false;
  }
}

function writeStarted(storyId: string) {
  try {
    window.sessionStorage.setItem(sessionKey(storyId), "1");
  } catch {
    // stockage indisponible : tant pis, l'écran se relancera, pas bloquant
  }
}

/**
 * Porte d'entrée « contexte d'abord », inspirée de Nicos Weg (Deutsche
 * Welle) : avant d'exposer le texte et les questions de grammaire, on fait
 * s'engager l'élève sur le sens et le contexte — deviner de quoi parle
 * l'histoire à partir du seul titre (et de la note culturelle si elle
 * existe), avant toute analyse linguistique. Portée volontairement limitée
 * ici à une étape de mise en contexte générique par histoire (pas de
 * vidéo, pas de contenu spécifique par histoire écrit à la main comme le
 * ferait Nicos Weg — ce serait un chantier de contenu à part entière).
 *
 * La lecture de sessionStorage n'est possible que côté client (voir
 * useMounted) : ce composant n'affiche son contenu réel qu'une fois monté,
 * pour éviter un hydration mismatch entre le rendu serveur et le premier
 * rendu client.
 */
export function ContextFirstReading(props: {
  storyId: string;
  title: string;
  cultureNote: string | null;
  children: ReactNode;
}) {
  const mounted = useMounted();
  if (!mounted) {
    return <div className="card-surface p-8 text-center text-sm text-ink-soft">Chargement…</div>;
  }
  return <ContextFirstReadingInner {...props} />;
}

function ContextFirstReadingInner({
  storyId,
  title,
  cultureNote,
  children,
}: {
  storyId: string;
  title: string;
  cultureNote: string | null;
  children: ReactNode;
}) {
  const [started, setStarted] = useState(() => readStarted(storyId));
  const [prediction, setPrediction] = useState("");

  function start() {
    writeStarted(storyId);
    setStarted(true);
  }

  if (started) {
    return <>{children}</>;
  }

  return (
    <div className="card-surface flex flex-col gap-4 p-6">
      <p className="font-mono text-xs uppercase tracking-widest text-accent">
        Avant de lire
      </p>
      <p className="text-ink">
        D&apos;après le titre{" "}
        <strong lang="de" className="text-ink">
          « {title} »
        </strong>
        {cultureNote ? <> et le thème « {cultureNote} »</> : null}, de quoi penses-tu
        que parle cette histoire ? Essaie de deviner avant de lire — ça t&apos;aide à
        anticiper le vocabulaire, même en te trompant.
      </p>
      <textarea
        value={prediction}
        onChange={(e) => setPrediction(e.target.value)}
        rows={3}
        placeholder="Je pense que cette histoire parle de… (en français, c'est ok !)"
        className="w-full rounded-md border border-rule bg-surface p-3 text-sm text-ink"
      />
      <button
        type="button"
        onClick={start}
        className="btn-primary self-start rounded-full px-6 py-2.5 font-semibold"
      >
        Je suis prêt·e, lire l&apos;histoire →
      </button>
      <p className="text-xs text-ink-soft">
        Ta prédiction n&apos;est pas enregistrée ni notée — c&apos;est juste un
        échauffement mental avant la lecture.
      </p>
    </div>
  );
}
