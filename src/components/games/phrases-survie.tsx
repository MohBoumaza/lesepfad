"use client";

import { useState } from "react";
import { SURVIE_GROUPS, type SurvieCategory } from "@/lib/grammar-data/phrases-survie";

function speak(text: string) {
  if (typeof window === "undefined" || !window.speechSynthesis) return;
  window.speechSynthesis.cancel();
  const utterance = new SpeechSynthesisUtterance(text);
  utterance.lang = "de-DE";
  utterance.rate = 0.9;
  window.speechSynthesis.speak(utterance);
}

export function PhrasesSurvie() {
  const [active, setActive] = useState<SurvieCategory>(SURVIE_GROUPS[0].category);
  const group = SURVIE_GROUPS.find((g) => g.category === active) ?? SURVIE_GROUPS[0];

  return (
    <div className="flex flex-col gap-5">
      <div className="flex flex-wrap gap-2">
        {SURVIE_GROUPS.map((g) => {
          const isActive = g.category === active;
          return (
            <button
              key={g.category}
              type="button"
              onClick={() => setActive(g.category)}
              className={`rounded-full border px-3 py-1.5 text-sm font-semibold transition-colors ${
                isActive
                  ? "border-transparent bg-ink text-white"
                  : "border-rule text-ink-soft hover:border-accent hover:text-accent-strong"
              }`}
            >
              {g.icon} {g.category}
            </button>
          );
        })}
      </div>

      <div className="flex flex-col gap-3">
        {group.phrases.map((p) => (
          <div
            key={p.de}
            className="card-surface flex items-center justify-between gap-3 p-4"
          >
            <div>
              <p lang="de" className="font-medium text-ink">
                {p.de}
              </p>
              <p className="text-sm text-ink-soft">{p.fr}</p>
            </div>
            <button
              type="button"
              onClick={() => speak(p.de)}
              aria-label={`Écouter : ${p.de}`}
              className="flex-none rounded-full border border-accent p-2.5 text-accent-strong transition-colors hover:bg-accent-tint"
            >
              🔊
            </button>
          </div>
        ))}
      </div>
    </div>
  );
}
