"use client";

import type { VocabularyItem } from "@/types/database";

function download(filename: string, content: string, mime: string) {
  const blob = new Blob([content], { type: mime });
  const url = URL.createObjectURL(blob);
  const a = document.createElement("a");
  a.href = url;
  a.download = filename;
  document.body.appendChild(a);
  a.click();
  document.body.removeChild(a);
  URL.revokeObjectURL(url);
}

function csvEscape(value: string): string {
  if (/[",\n]/.test(value)) {
    return `"${value.replace(/"/g, '""')}"`;
  }
  return value;
}

export function VocabularyExport({ items }: { items: VocabularyItem[] }) {
  const disabled = items.length === 0;

  function exportCsv() {
    const header = "allemand,francais,boite,revisions,prochaine_revision";
    const rows = items.map((it) =>
      [
        csvEscape(it.word),
        csvEscape(it.translation),
        String(it.box),
        String(it.review_count),
        it.next_review_at.slice(0, 10),
      ].join(","),
    );
    download("lesepfad-vocabulaire.csv", [header, ...rows].join("\n"), "text/csv;charset=utf-8");
  }

  function exportAnki() {
    // Format texte séparé par tabulations, importable tel quel dans Anki
    // (Fichier → Importer) : recto = allemand, verso = français.
    const rows = items.map((it) => `${it.word}\t${it.translation}`);
    download("lesepfad-vocabulaire-anki.txt", rows.join("\n"), "text/plain;charset=utf-8");
  }

  return (
    <div className="flex flex-wrap gap-2">
      <button
        type="button"
        onClick={exportCsv}
        disabled={disabled}
        className="rounded-full border border-rule px-4 py-2 text-sm font-semibold text-ink-soft transition-colors hover:border-accent hover:text-accent-strong disabled:cursor-default disabled:opacity-50"
      >
        ⬇️ Exporter en CSV
      </button>
      <button
        type="button"
        onClick={exportAnki}
        disabled={disabled}
        className="rounded-full border border-rule px-4 py-2 text-sm font-semibold text-ink-soft transition-colors hover:border-accent hover:text-accent-strong disabled:cursor-default disabled:opacity-50"
      >
        ⬇️ Exporter pour Anki
      </button>
    </div>
  );
}
