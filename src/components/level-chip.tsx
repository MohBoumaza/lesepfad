import type { LevelCode } from "@/types/database";

const LEVEL_STYLE: Record<LevelCode, { fg: string; bg: string }> = {
  A1: { fg: "var(--color-level-a1)", bg: "var(--color-level-a1-tint)" },
  A2: { fg: "var(--color-level-a2)", bg: "var(--color-level-a2-tint)" },
  B1: { fg: "var(--color-level-b1)", bg: "var(--color-level-b1-tint)" },
  B2: { fg: "var(--color-level-b2)", bg: "var(--color-level-b2-tint)" },
  C1: { fg: "var(--color-level-c1)", bg: "var(--color-level-c1-tint)" },
  C2: { fg: "var(--color-level-c2)", bg: "var(--color-level-c2-tint)" },
};

export function LevelChip({ level }: { level: LevelCode }) {
  const style = LEVEL_STYLE[level];
  return (
    <span
      className="inline-flex items-center rounded-full px-3 py-1 font-mono text-xs font-bold tracking-wide"
      style={{ color: style.fg, background: style.bg }}
    >
      {level}
    </span>
  );
}

/** Couleur "brute" (sans fond) d'un niveau — pour barres/accents décoratifs. */
export function levelColor(level: LevelCode): string {
  return LEVEL_STYLE[level].fg;
}
