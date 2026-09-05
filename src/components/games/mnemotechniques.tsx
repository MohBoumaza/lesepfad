"use client";

import { useState } from "react";
import {
  MNEMO_CATEGORIES,
  MNEMO_ITEMS,
  type MnemoCategory,
} from "@/lib/grammar-data/mnemotechniques";

const CATEGORY_COLOR: Record<MnemoCategory, string> = {
  Genre: "var(--color-sage)",
  Cas: "var(--color-accent)",
  Syntaxe: "var(--color-level-c1)",
  Verbe: "var(--color-level-b2)",
};

export function Mnemotechniques() {
  const [filter, setFilter] = useState<MnemoCategory | "Tous">("Tous");
  const items = MNEMO_ITEMS.filter((it) => filter === "Tous" || it.category === filter);

  return (
    <div className="flex flex-col gap-5">
      <div className="flex flex-wrap gap-2">
        <button
          type="button"
          onClick={() => setFilter("Tous")}
          className={`rounded-full border px-3 py-1.5 font-mono text-xs font-semibold tracking-wide transition-colors ${
            filter === "Tous"
              ? "border-transparent bg-ink text-white"
              : "border-rule text-ink-soft hover:border-accent hover:text-accent-strong"
          }`}
        >
          Tous
        </button>
        {MNEMO_CATEGORIES.map((c) => {
          const active = filter === c;
          return (
            <button
              key={c}
              type="button"
              onClick={() => setFilter(c)}
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

      <div className="flex flex-col gap-4">
        {items.map((it) => (
          <div key={it.title} className="card-surface flex flex-col gap-2 p-5">
            <div className="flex items-center gap-2">
              <h2 lang="de" className="font-display text-base font-semibold text-ink">
                {it.title}
              </h2>
              <span
                className="ml-auto rounded-full px-2 py-0.5 font-mono text-[10px] font-bold uppercase tracking-widest text-white"
                style={{ background: CATEGORY_COLOR[it.category] }}
              >
                {it.category}
              </span>
            </div>
            <p className="text-sm text-ink-soft">{it.trick}</p>
            <p lang="de" className="rounded-md bg-surface px-2.5 py-1.5 text-sm text-ink">
              {it.example}
            </p>
          </div>
        ))}
      </div>
    </div>
  );
}
