"use client";

import { useState } from "react";
import { levelColor } from "@/components/level-chip";
import { SATZBAU_SENTENCES } from "@/lib/game-data/sentences";
import { useMounted } from "@/lib/use-mounted";
import type { LevelCode } from "@/types/database";

const LEVELS: LevelCode[] = ["A1", "A2", "B1", "B2", "C1", "C2"];

interface Tile {
  id: string;
  word: string;
}

/** Découpe une phrase en mots, en gardant la ponctuation finale collée au
 * dernier mot (elle fait partie du puzzle : la virer serait trop facile). */
function tokenize(sentence: string): string[] {
  return sentence.split(/\s+/).filter(Boolean);
}

function shuffle<T>(arr: T[]): T[] {
  const a = [...arr];
  for (let i = a.length - 1; i > 0; i--) {
    const j = Math.floor(Math.random() * (i + 1));
    [a[i], a[j]] = [a[j], a[i]];
  }
  return a;
}

function pickSentence(level: LevelCode, avoid?: string): string {
  const pool = SATZBAU_SENTENCES[level];
  if (pool.length <= 1) return pool[0];
  let choice = pool[Math.floor(Math.random() * pool.length)];
  let guard = 0;
  while (choice === avoid && guard < 10) {
    choice = pool[Math.floor(Math.random() * pool.length)];
    guard++;
  }
  return choice;
}

function buildTiles(sentence: string): Tile[] {
  return shuffle(
    tokenize(sentence).map((word, i) => ({ id: `${i}-${word}-${Math.random()}`, word })),
  );
}

/** Tirage aléatoire de la phrase : calculable seulement côté client (voir
 * useMounted) — ce composant n'est monté qu'une fois `mounted` vrai, donc
 * pas de risque de hydration mismatch. */
export function SatzbauPuzzleGame() {
  const mounted = useMounted();
  if (!mounted) {
    return <div className="card-surface p-8 text-center text-sm text-ink-soft">Chargement…</div>;
  }
  return <SatzbauPuzzleGameInner />;
}

function SatzbauPuzzleGameInner() {
  const [level, setLevel] = useState<LevelCode>("A1");
  const [sentence, setSentence] = useState(() => pickSentence("A1"));
  const [available, setAvailable] = useState<Tile[]>(() => buildTiles(sentence));
  const [placed, setPlaced] = useState<Tile[]>([]);
  const [streak, setStreak] = useState(0);
  const [status, setStatus] = useState<"playing" | "correct" | "wrong">("playing");

  const targetWords = tokenize(sentence);

  function newRound(nextLevel: LevelCode = level, keepStreak = true) {
    const next = pickSentence(nextLevel, sentence);
    setLevel(nextLevel);
    setSentence(next);
    setAvailable(buildTiles(next));
    setPlaced([]);
    setStatus("playing");
    if (!keepStreak) setStreak(0);
  }

  function placeTile(tile: Tile) {
    if (status !== "playing") return;
    setAvailable((prev) => prev.filter((t) => t.id !== tile.id));
    setPlaced((prev) => [...prev, tile]);
  }

  function returnTile(tile: Tile) {
    if (status !== "playing") return;
    setPlaced((prev) => prev.filter((t) => t.id !== tile.id));
    setAvailable((prev) => [...prev, tile]);
  }

  function check() {
    if (placed.length !== targetWords.length) return;
    const isCorrect = placed.every((t, i) => t.word === targetWords[i]);
    setStatus(isCorrect ? "correct" : "wrong");
    setStreak((s) => (isCorrect ? s + 1 : 0));
  }

  return (
    <div className="flex flex-col gap-5">
      <div className="flex flex-wrap items-center gap-2">
        {LEVELS.map((code) => {
          const active = level === code;
          return (
            <button
              key={code}
              type="button"
              onClick={() => newRound(code, false)}
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
        <span className="ml-auto text-sm text-ink-soft">
          🔥 Série : <strong className="text-ink">{streak}</strong>
        </span>
      </div>

      <div
        className="card-surface flex min-h-16 flex-wrap items-center gap-2 p-4"
        aria-label="Phrase en construction"
      >
        {placed.length === 0 && (
          <span className="text-sm text-ink-soft">
            Clique sur les mots ci-dessous pour construire la phrase…
          </span>
        )}
        {placed.map((tile) => (
          <button
            key={tile.id}
            type="button"
            onClick={() => returnTile(tile)}
            disabled={status !== "playing"}
            lang="de"
            className="rounded-md border border-accent bg-accent-tint px-3 py-1.5 text-sm font-medium text-ink transition-colors disabled:cursor-default"
          >
            {tile.word}
          </button>
        ))}
      </div>

      <div className="flex flex-wrap gap-2">
        {available.map((tile) => (
          <button
            key={tile.id}
            type="button"
            onClick={() => placeTile(tile)}
            lang="de"
            className="rounded-md border border-rule bg-surface-raised px-3 py-1.5 text-sm font-medium text-ink transition-colors hover:border-accent"
          >
            {tile.word}
          </button>
        ))}
      </div>

      {status === "correct" && (
        <div className="card-surface border-sage bg-sage-tint p-4 text-sm text-ink">
          ✅ Exactement dans l&apos;ordre !
        </div>
      )}
      {status === "wrong" && (
        <div className="card-surface border-danger bg-danger-tint p-4 text-sm text-ink">
          <p className="mb-1 font-medium">Pas tout à fait — l&apos;ordre correct :</p>
          <p lang="de">{sentence}</p>
        </div>
      )}

      <div className="flex gap-2">
        {status === "playing" ? (
          <button
            type="button"
            onClick={check}
            disabled={placed.length !== targetWords.length}
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
            Phrase suivante →
          </button>
        )}
      </div>
    </div>
  );
}
