"use client";

import { useState } from "react";
import {
  SATZKLAMMER_ITEMS,
  type SatzklammerItem,
  type SegmentRole,
} from "@/lib/grammar-data/satzklammer";

const ROLE_LABEL: Record<SegmentRole, string> = {
  field: "Champ",
  conj: "Conjonction",
  verbOpen: "Verbe (position 2)",
  verbClose: "Verbe rejeté en fin",
};

const TYPE_COLOR: Record<SatzklammerItem["type"], string> = {
  Hauptsatz: "var(--color-sage)",
  Nebensatz: "var(--color-level-b2)",
};

function segmentClass(role: SegmentRole): string {
  switch (role) {
    case "conj":
      return "border-b-2 border-dashed border-[var(--color-level-c1)] text-[var(--color-level-c1)] font-semibold";
    case "verbOpen":
    case "verbClose":
      return "rounded-md border-b-[3px] border-accent bg-accent-tint px-1.5 py-0.5 font-bold text-accent-strong";
    default:
      return "text-ink";
  }
}

export function SatzklammerVisualizer() {
  const [index, setIndex] = useState(0);
  const [revealed, setRevealed] = useState(false);

  const item = SATZKLAMMER_ITEMS[index];
  const hasBracket = item.segments.some((s) => s.role === "verbClose");

  function go(delta: number) {
    setIndex((i) => (i + delta + SATZKLAMMER_ITEMS.length) % SATZKLAMMER_ITEMS.length);
    setRevealed(false);
  }

  return (
    <div className="flex flex-col gap-5">
      <div className="flex flex-wrap items-center gap-2">
        <span
          className="rounded-full px-3 py-1 font-mono text-xs font-bold tracking-wide text-white"
          style={{ background: TYPE_COLOR[item.type] }}
        >
          {item.type}
        </span>
        <span className="text-sm text-ink-soft">
          Phrase {index + 1} / {SATZKLAMMER_ITEMS.length}
        </span>
        <div className="ml-auto flex gap-2">
          <button
            type="button"
            onClick={() => go(-1)}
            className="rounded-full border border-rule px-3 py-1.5 text-sm text-ink-soft hover:border-accent hover:text-accent-strong"
          >
            ← Précédente
          </button>
          <button
            type="button"
            onClick={() => go(1)}
            className="rounded-full border border-rule px-3 py-1.5 text-sm text-ink-soft hover:border-accent hover:text-accent-strong"
          >
            Suivante →
          </button>
        </div>
      </div>

      <div className="card-surface p-6">
        <p lang="de" className="flex flex-wrap items-center gap-x-1.5 gap-y-2 text-xl leading-relaxed">
          {item.segments.map((seg, i) => (
            <span key={i} className={segmentClass(seg.role)}>
              {seg.text}
            </span>
          ))}
        </p>

        {!hasBracket && (
          <p className="mt-4 text-xs uppercase tracking-widest text-ink-soft">
            Pas de Satzklammer visible ici
          </p>
        )}
      </div>

      <div className="flex flex-wrap gap-3 text-xs">
        <span className="flex items-center gap-1.5">
          <span className="h-2.5 w-2.5 rounded-full bg-accent" aria-hidden />
          {ROLE_LABEL.verbOpen} / {ROLE_LABEL.verbClose}
        </span>
        <span className="flex items-center gap-1.5">
          <span className="h-2.5 w-2.5 rounded-full bg-[var(--color-level-c1)]" aria-hidden />
          {ROLE_LABEL.conj}
        </span>
      </div>

      {!revealed ? (
        <button
          type="button"
          onClick={() => setRevealed(true)}
          className="btn-primary self-start rounded-full px-6 py-2.5 font-semibold"
        >
          Pourquoi ? →
        </button>
      ) : (
        <div className="card-surface border-accent bg-accent-tint p-4 text-sm">
          <p className="text-ink">{item.explanation}</p>
        </div>
      )}
    </div>
  );
}
