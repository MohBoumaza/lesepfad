"use client";

import { useEffect, useRef, useState } from "react";
import { levelColor } from "@/components/level-chip";
import { bestScoreStorage, shuffle } from "@/lib/game-utils";
import { nounsForLevel } from "@/lib/game-data/nouns";
import { useMounted } from "@/lib/use-mounted";
import type { LevelCode } from "@/types/database";

const LEVELS: LevelCode[] = ["A1", "A2", "B1", "B2", "C1", "C2"];
const PAIRS_PER_ROUND = 8;

interface Item {
  id: string;
  word: string;
  translation: string;
}

const bestStore = bestScoreStorage("wortschatz-duell:best");

function buildRound(level: LevelCode): Item[] {
  const pool = nounsForLevel(level);
  const chosen = shuffle(pool).slice(0, Math.min(PAIRS_PER_ROUND, pool.length));
  return chosen.map((n) => ({ id: n.article + " " + n.word, word: n.word, translation: n.translation }));
}

/** Tirage aléatoire des paires + localStorage : calculables seulement côté
 * client (voir useMounted) — ce composant n'est monté qu'une fois
 * `mounted` vrai, donc pas de risque de hydration mismatch. */
export function WortschatzDuellGame() {
  const mounted = useMounted();
  if (!mounted) {
    return <div className="card-surface p-8 text-center text-sm text-ink-soft">Chargement…</div>;
  }
  return <WortschatzDuellGameInner />;
}

function WortschatzDuellGameInner() {
  const [level, setLevel] = useState<LevelCode>("A1");
  const [items, setItems] = useState<Item[]>(() => buildRound("A1"));
  const [wordOrder, setWordOrder] = useState<Item[]>(() => shuffle(items));
  const [translationOrder, setTranslationOrder] = useState<Item[]>(() => shuffle(items));
  const [selectedWord, setSelectedWord] = useState<string | null>(null);
  const [selectedTranslation, setSelectedTranslation] = useState<string | null>(null);
  const [matched, setMatched] = useState<Set<string>>(new Set());
  const [mistake, setMistake] = useState<{ word: string; translation: string } | null>(null);
  const [elapsed, setElapsed] = useState(0);
  const [status, setStatus] = useState<"playing" | "done">("playing");
  const timerRef = useRef<number | null>(null);

  useEffect(() => {
    if (status !== "playing") return;
    timerRef.current = window.setInterval(() => setElapsed((e) => e + 0.1), 100);
    return () => {
      if (timerRef.current) window.clearInterval(timerRef.current);
    };
  }, [status, items]);

  function newRound(nextLevel: LevelCode = level) {
    const round = buildRound(nextLevel);
    setLevel(nextLevel);
    setItems(round);
    setWordOrder(shuffle(round));
    setTranslationOrder(shuffle(round));
    setSelectedWord(null);
    setSelectedTranslation(null);
    setMatched(new Set());
    setMistake(null);
    setElapsed(0);
    setStatus("playing");
  }

  function tryMatch(wordId: string | null, translationId: string | null) {
    if (!wordId || !translationId) return;
    if (wordId === translationId) {
      const next = new Set(matched);
      next.add(wordId);
      setMatched(next);
      setSelectedWord(null);
      setSelectedTranslation(null);
      if (next.size === items.length) {
        setStatus("done");
        if (timerRef.current) window.clearInterval(timerRef.current);
        const currentBest = bestStore.read(level);
        if (currentBest === null || elapsed < currentBest) {
          bestStore.write(elapsed, level);
        }
      }
    } else {
      setMistake({ word: wordId, translation: translationId });
      window.setTimeout(() => {
        setMistake(null);
        setSelectedWord(null);
        setSelectedTranslation(null);
      }, 500);
    }
  }

  function clickWord(id: string) {
    if (status !== "playing" || matched.has(id) || mistake) return;
    setSelectedWord(id);
    tryMatch(id, selectedTranslation);
  }

  function clickTranslation(id: string) {
    if (status !== "playing" || matched.has(id) || mistake) return;
    setSelectedTranslation(id);
    tryMatch(selectedWord, id);
  }

  const best = bestStore.read(level);

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
        <span className="ml-auto font-mono text-sm text-ink-soft">
          ⏱️ {elapsed.toFixed(1)}s
          {best !== null && <> · 🏆 {best.toFixed(1)}s</>}
        </span>
      </div>

      {status === "done" && (
        <div className="card-surface border-sage bg-sage-tint p-4 text-sm text-ink">
          🎉 Toutes les paires trouvées en {elapsed.toFixed(1)}s
          {best === elapsed ? " — nouveau record !" : "."}
        </div>
      )}

      <div className="grid grid-cols-2 gap-3">
        <div className="flex flex-col gap-2">
          {wordOrder.map((item) => {
            const isMatched = matched.has(item.id);
            const isSelected = selectedWord === item.id;
            const isMistake = mistake?.word === item.id;
            return (
              <button
                key={item.id}
                type="button"
                lang="de"
                disabled={isMatched}
                onClick={() => clickWord(item.id)}
                className={`rounded-md border px-3 py-2 text-left text-sm font-medium transition-colors disabled:cursor-default ${
                  isMatched
                    ? "border-sage bg-sage-tint text-ink-soft"
                    : isMistake
                      ? "border-danger bg-danger-tint text-ink"
                      : isSelected
                        ? "border-accent bg-accent-tint text-ink"
                        : "border-rule bg-surface-raised text-ink hover:border-accent"
                }`}
              >
                {item.word}
              </button>
            );
          })}
        </div>
        <div className="flex flex-col gap-2">
          {translationOrder.map((item) => {
            const isMatched = matched.has(item.id);
            const isSelected = selectedTranslation === item.id;
            const isMistake = mistake?.translation === item.id;
            return (
              <button
                key={item.id}
                type="button"
                disabled={isMatched}
                onClick={() => clickTranslation(item.id)}
                className={`rounded-md border px-3 py-2 text-left text-sm transition-colors disabled:cursor-default ${
                  isMatched
                    ? "border-sage bg-sage-tint text-ink-soft"
                    : isMistake
                      ? "border-danger bg-danger-tint text-ink"
                      : isSelected
                        ? "border-accent bg-accent-tint text-ink"
                        : "border-rule bg-surface-raised text-ink hover:border-accent"
                }`}
              >
                {item.translation}
              </button>
            );
          })}
        </div>
      </div>

      {status === "done" && (
        <button
          type="button"
          onClick={() => newRound()}
          className="btn-primary self-start rounded-full px-6 py-2.5 font-semibold"
        >
          🔄 Nouvelle partie
        </button>
      )}
    </div>
  );
}
