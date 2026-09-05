"use client";

import { useMemo, useState } from "react";
import {
  LEXIQUE_CATEGORIES,
  LEXIQUE_ITEMS,
  type LexiqueCategory,
} from "@/lib/grammar-data/lexique";

const CATEGORY_COLOR: Record<LexiqueCategory, string> = {
  Cas: "var(--color-accent)",
  "Genre & article": "var(--color-sage)",
  Verbe: "var(--color-level-b2)",
  Syntaxe: "var(--color-level-c1)",
  Phrase: "var(--color-level-a2)",
};

export function LexiqueGrammatical() {
  const [query, setQuery] = useState("");
  const [category, setCategory] = useState<LexiqueCategory | "Tous">("Tous");

  const filtered = useMemo(() => {
    const q = query.trim().toLowerCase();
    return LEXIQUE_ITEMS.filter((it) => {
      const matchesCategory = category === "Tous" || it.category === category;
      const matchesQuery =
        q.length === 0 ||
        it.term.toLowerCase().includes(q) ||
        it.definition.toLowerCase().includes(q);
      return matchesCategory && matchesQuery;
    });
  }, [query, category]);

  return (
    <div className="flex flex-col gap-5">
      <div className="flex flex-col gap-3">
        <input
          type="search"
          value={query}
          onChange={(e) => setQuery(e.target.value)}
          placeholder="Chercher un terme (ex. Dativ, Satzklammer...)"
          className="w-full rounded-md border border-rule bg-surface px-4 py-2.5 text-sm text-ink placeholder:text-ink-soft focus:border-accent focus:outline-none"
        />
        <div className="flex flex-wrap gap-2">
          <button
            type="button"
            onClick={() => setCategory("Tous")}
            className={`rounded-full border px-3 py-1.5 font-mono text-xs font-semibold tracking-wide transition-colors ${
              category === "Tous"
                ? "border-transparent bg-ink text-white"
                : "border-rule text-ink-soft hover:border-accent hover:text-accent-strong"
            }`}
          >
            Tous
          </button>
          {LEXIQUE_CATEGORIES.map((c) => {
            const active = category === c;
            return (
              <button
                key={c}
                type="button"
                onClick={() => setCategory(c)}
                className={`rounded-full border px-3 py-1.5 font-mono text-xs font-semibold tracking-wide transition-colors ${
                  active
                    ? "border-transparent text-white"
                    : "border-rule text-ink-soft hover:border-accent hover:text-accent-strong"
                }`}
                style={active ? { background: CATEGORY_COLOR[c] } : undefined}
              >
                {c}
              </button>
            );
          })}
        </div>
      </div>

      {filtered.length === 0 ? (
        <p className="text-sm text-ink-soft">Aucun terme ne correspond à ta recherche.</p>
      ) : (
        <div className="grid grid-cols-1 gap-4 sm:grid-cols-2">
          {filtered.map((it) => (
            <div key={it.term} className="card-surface flex flex-col gap-2 p-4">
              <div className="flex items-center gap-2">
                <span lang="de" className="font-display text-lg font-semibold text-ink">
                  {it.term}
                </span>
                <span
                  className="ml-auto rounded-full px-2 py-0.5 font-mono text-[10px] font-bold uppercase tracking-widest text-white"
                  style={{ background: CATEGORY_COLOR[it.category] }}
                >
                  {it.category}
                </span>
              </div>
              <p className="text-sm text-ink-soft">{it.definition}</p>
              <p lang="de" className="rounded-md bg-surface px-2.5 py-1.5 text-sm text-ink">
                {it.example}
              </p>
            </div>
          ))}
        </div>
      )}
    </div>
  );
}
