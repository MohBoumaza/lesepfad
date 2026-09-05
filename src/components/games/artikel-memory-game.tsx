"use client";

import { useMemo, useState } from "react";
import { levelColor } from "@/components/level-chip";
import { bestScoreStorage, shuffle } from "@/lib/game-utils";
import { NOUNS, nounsForLevel, type GenderedNoun } from "@/lib/game-data/nouns";
import { useMounted } from "@/lib/use-mounted";
import type { LevelCode } from "@/types/database";

const LEVELS: LevelCode[] = ["A1", "A2", "B1", "B2", "C1", "C2"];
const PAIRS_PER_GAME = 8;

interface Card {
  id: string;
  pairKey: string;
  kind: "word" | "article";
  label: string;
  noun: GenderedNoun;
}

const bestStore = bestScoreStorage("artikel-memory:best");

function buildDeck(level: LevelCode): Card[] {
  const pool = nounsForLevel(level);
  const chosen = shuffle(pool).slice(0, Math.min(PAIRS_PER_GAME, pool.length));
  const cards: Card[] = [];
  chosen.forEach((noun) => {
    const pairKey = noun.article + " " + noun.word;
    cards.push({ id: pairKey + "-word", pairKey, kind: "word", label: noun.word, noun });
    cards.push({ id: pairKey + "-article", pairKey, kind: "article", label: noun.article, noun });
  });
  return shuffle(cards);
}

/** Tirage aléatoire des cartes + localStorage : calculables seulement côté
 * client (voir useMounted) — ce composant n'est monté qu'une fois
 * `mounted` vrai, donc pas de risque de hydration mismatch. */
export function ArtikelMemoryGame() {
  const mounted = useMounted();
  if (!mounted) {
    return <div className="card-surface p-8 text-center text-sm text-ink-soft">Chargement…</div>;
  }
  return <ArtikelMemoryGameInner />;
}

function ArtikelMemoryGameInner() {
  const [level, setLevel] = useState<LevelCode>("A1");
  const [deck, setDeck] = useState<Card[]>(() => buildDeck("A1"));
  const [flipped, setFlipped] = useState<string[]>([]);
  const [matched, setMatched] = useState<Set<string>>(new Set());
  const [moves, setMoves] = useState(0);
  const [locked, setLocked] = useState(false);
  const [won, setWon] = useState(false);

  // Lecture directe (pas d'effet) : le composant se re-rend de toute façon
  // à chaque coup/partie gagnée, donc pas besoin de state dédié — et ça
  // reste sûr côté rendu serveur grâce au try/catch dans readBest.
  const best = bestStore.read(level);

  const totalPairs = useMemo(() => deck.length / 2, [deck]);
  const matchedPairs = matched.size / 2;

  function newGame(nextLevel: LevelCode = level) {
    setLevel(nextLevel);
    setDeck(buildDeck(nextLevel));
    setFlipped([]);
    setMatched(new Set());
    setMoves(0);
    setLocked(false);
    setWon(false);
  }

  function flipCard(card: Card) {
    if (locked || won) return;
    if (flipped.includes(card.id) || matched.has(card.id)) return;
    if (flipped.length === 2) return;

    const nextFlipped = [...flipped, card.id];
    setFlipped(nextFlipped);

    if (nextFlipped.length === 2) {
      setLocked(true);
      setMoves((m) => m + 1);
      const [firstId, secondId] = nextFlipped;
      const first = deck.find((c) => c.id === firstId)!;
      const second = deck.find((c) => c.id === secondId)!;

      if (first.pairKey === second.pairKey && first.kind !== second.kind) {
        window.setTimeout(() => {
          setMatched((prev) => {
            const next = new Set(prev);
            next.add(firstId);
            next.add(secondId);
            if (next.size === deck.length) {
              setWon(true);
              const currentBest = bestStore.read(level);
              if (currentBest === null || moves + 1 < currentBest) {
                bestStore.write(moves + 1, level);
              }
            }
            return next;
          });
          setFlipped([]);
          setLocked(false);
        }, 500);
      } else {
        window.setTimeout(() => {
          setFlipped([]);
          setLocked(false);
        }, 800);
      }
    }
  }

  return (
    <div className="flex flex-col gap-5">
      <div className="flex flex-wrap items-center gap-2">
        {LEVELS.map((code) => {
          const active = level === code;
          const disabled = nounsForLevel(code).length === 0;
          return (
            <button
              key={code}
              type="button"
              disabled={disabled}
              onClick={() => newGame(code)}
              className={`rounded-full border px-3 py-1.5 font-mono text-xs font-semibold tracking-wide transition-colors disabled:opacity-40 ${
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

      <div className="flex flex-wrap items-center gap-4 text-sm text-ink-soft">
        <span>
          Paires trouvées : <strong className="text-ink">{matchedPairs}</strong>/{totalPairs}
        </span>
        <span>
          Coups joués : <strong className="text-ink">{moves}</strong>
        </span>
        {best !== null && (
          <span>
            🏆 Meilleur score ({level}) : <strong className="text-ink">{best}</strong> coups
          </span>
        )}
        <button
          type="button"
          onClick={() => newGame()}
          className="ml-auto rounded-full border border-accent px-3 py-1.5 text-xs font-semibold text-accent-strong transition-colors hover:bg-accent-tint"
        >
          🔄 Nouvelle partie
        </button>
      </div>

      {won && (
        <div className="card-surface border-sage bg-sage-tint p-4 text-sm text-ink">
          🎉 Bravo, toutes les paires trouvées en {moves} coups
          {best === moves ? " — nouveau meilleur score !" : "."}
        </div>
      )}

      <div className="grid grid-cols-4 gap-2 sm:grid-cols-4">
        {deck.map((card) => {
          const isFlipped = flipped.includes(card.id) || matched.has(card.id);
          const isMatched = matched.has(card.id);
          return (
            <button
              key={card.id}
              type="button"
              onClick={() => flipCard(card)}
              disabled={isFlipped}
              aria-label={isFlipped ? card.label : "Carte cachée"}
              className={`flex aspect-[3/4] flex-col items-center justify-center rounded-lg border p-2 text-center font-display text-sm font-semibold transition-colors sm:text-base ${
                isMatched
                  ? "border-sage bg-sage-tint text-ink"
                  : isFlipped
                    ? "border-accent bg-accent-tint text-ink"
                    : "border-rule bg-surface-raised text-transparent hover:border-accent"
              }`}
            >
              {isFlipped ? (
                <>
                  <span lang="de">{card.label}</span>
                  {isMatched && card.kind === "word" && (
                    <span className="mt-1 text-[10px] font-normal text-ink-soft">
                      {card.noun.translation}
                    </span>
                  )}
                </>
              ) : (
                "🂠"
              )}
            </button>
          );
        })}
      </div>
    </div>
  );
}

export const TOTAL_NOUNS = NOUNS.length;
