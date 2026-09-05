"use client";

import { useEffect, useRef, useState } from "react";
import { levelColor } from "@/components/level-chip";
import { bestScoreStorage } from "@/lib/game-utils";
import { verbsForLevel, type VerbConjugation } from "@/lib/game-data/verbs";
import { useMounted } from "@/lib/use-mounted";
import type { LevelCode } from "@/types/database";

const LEVELS: LevelCode[] = ["A1", "A2", "B1", "B2", "C1", "C2"];

const PRONOUNS: { key: keyof VerbConjugation["forms"]; label: string }[] = [
  { key: "ich", label: "ich" },
  { key: "du", label: "du" },
  { key: "erSieEs", label: "er / sie / es" },
  { key: "wir", label: "wir" },
  { key: "ihr", label: "ihr" },
  { key: "sie", label: "sie / Sie" },
];

const bestStore = bestScoreStorage("konjugation-rennen:best");

function pickVerb(level: LevelCode, avoid?: string): VerbConjugation {
  const pool = verbsForLevel(level);
  let choice = pool[Math.floor(Math.random() * pool.length)];
  let guard = 0;
  while (choice.infinitive === avoid && pool.length > 1 && guard < 10) {
    choice = pool[Math.floor(Math.random() * pool.length)];
    guard++;
  }
  return choice;
}

function emptyInputs(): Record<string, string> {
  return { ich: "", du: "", erSieEs: "", wir: "", ihr: "", sie: "" };
}

/** Tirage aléatoire du verbe + localStorage : calculables seulement côté
 * client (voir useMounted) — ce composant n'est monté qu'une fois
 * `mounted` vrai, donc pas de risque de hydration mismatch. */
export function KonjugationRennenGame() {
  const mounted = useMounted();
  if (!mounted) {
    return <div className="card-surface p-8 text-center text-sm text-ink-soft">Chargement…</div>;
  }
  return <KonjugationRennenGameInner />;
}

function KonjugationRennenGameInner() {
  const [level, setLevel] = useState<LevelCode>("A1");
  const [verb, setVerb] = useState<VerbConjugation>(() => pickVerb("A1"));
  const [inputs, setInputs] = useState<Record<string, string>>(emptyInputs);
  const [status, setStatus] = useState<"playing" | "done">("playing");
  const [results, setResults] = useState<Record<string, boolean> | null>(null);
  const [elapsed, setElapsed] = useState(0);
  const timerRef = useRef<number | null>(null);

  useEffect(() => {
    timerRef.current = window.setInterval(() => {
      setElapsed((e) => e + 0.1);
    }, 100);
    return () => {
      if (timerRef.current) window.clearInterval(timerRef.current);
    };
  }, [verb]);

  function newRound(nextLevel: LevelCode = level) {
    const next = pickVerb(nextLevel, verb.infinitive);
    setLevel(nextLevel);
    setVerb(next);
    setInputs(emptyInputs());
    setStatus("playing");
    setResults(null);
    setElapsed(0);
  }

  function submit() {
    if (status !== "playing") return;
    if (timerRef.current) window.clearInterval(timerRef.current);
    const finalTime = elapsed;

    const verdict: Record<string, boolean> = {};
    let allCorrect = true;
    PRONOUNS.forEach(({ key }) => {
      const ok = inputs[key].trim().toLowerCase() === verb.forms[key].toLowerCase();
      verdict[key] = ok;
      if (!ok) allCorrect = false;
    });
    setResults(verdict);
    setStatus("done");

    if (allCorrect) {
      const currentBest = bestStore.read(level);
      if (currentBest === null || finalTime < currentBest) {
        bestStore.write(finalTime, level);
      }
    }
  }

  const best = bestStore.read(level);
  const allFilled = PRONOUNS.every(({ key }) => inputs[key].trim().length > 0);

  return (
    <div className="flex flex-col gap-5">
      <div className="flex flex-wrap items-center gap-2">
        {LEVELS.map((code) => {
          const active = level === code;
          return (
            <button
              key={code}
              type="button"
              onClick={() => newRound(code)}
              className={`rounded-full border px-3 py-1.5 font-mono text-xs font-semibold tracking-wide transition-colors ${
                active
                  ? "border-transparent text-white"
                  : "border-rule text-ink-soft hover:border-accent hover:text-accent-strong"
              }`}
              style={active ? { background: levelColor(code) } : undefined}
            >
              {code}
            </button>
          );
        })}
      </div>

      <div className="card-surface flex flex-wrap items-center justify-between gap-3 p-4">
        <div>
          <p className="font-mono text-xs uppercase tracking-widest text-accent">
            Conjugue
          </p>
          <p lang="de" className="font-display text-2xl font-semibold text-ink">
            {verb.infinitive}
          </p>
          <p className="text-sm text-ink-soft">{verb.translation}</p>
        </div>
        <div className="text-right">
          <p className="font-mono text-2xl font-semibold text-ink">
            {elapsed.toFixed(1)}s
          </p>
          {best !== null && (
            <p className="text-xs text-ink-soft">🏆 Record ({level}) : {best.toFixed(1)}s</p>
          )}
        </div>
      </div>

      <div className="grid grid-cols-1 gap-2 sm:grid-cols-2">
        {PRONOUNS.map(({ key, label }) => {
          const isCorrect = results?.[key];
          const stateClasses =
            results === null
              ? "border-rule"
              : isCorrect
                ? "border-sage bg-sage-tint"
                : "border-danger bg-danger-tint";
          return (
            <label key={key} className="flex items-center gap-2 text-sm">
              <span className="w-24 shrink-0 font-mono text-ink-soft">{label}</span>
              <input
                type="text"
                lang="de"
                value={inputs[key]}
                disabled={status !== "playing"}
                onChange={(e) => setInputs((prev) => ({ ...prev, [key]: e.target.value }))}
                className={`flex-1 rounded-md border bg-surface px-3 py-1.5 text-ink disabled:opacity-80 ${stateClasses}`}
              />
            </label>
          );
        })}
      </div>

      {status === "done" && results && (
        <div
          className={`card-surface p-4 text-sm ${
            Object.values(results).every(Boolean) ? "border-sage bg-sage-tint" : "border-danger bg-danger-tint"
          }`}
        >
          {Object.values(results).every(Boolean) ? (
            <p>✅ Parfait en {elapsed.toFixed(1)}s !</p>
          ) : (
            <div className="flex flex-col gap-1">
              <p className="font-medium">Presque — la conjugaison complète :</p>
              <p lang="de">
                {PRONOUNS.map(({ key, label }) => `${label} ${verb.forms[key]}`).join(" · ")}
              </p>
            </div>
          )}
        </div>
      )}

      <div>
        {status === "playing" ? (
          <button
            type="button"
            onClick={submit}
            disabled={!allFilled}
            className="btn-primary rounded-full px-6 py-2.5 font-semibold disabled:opacity-50"
          >
            Vérifier
          </button>
        ) : (
          <button
            type="button"
            onClick={() => newRound()}
            className="btn-primary rounded-full px-6 py-2.5 font-semibold"
          >
            Verbe suivant →
          </button>
        )}
      </div>
    </div>
  );
}
