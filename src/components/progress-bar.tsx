export function ProgressBar({ value }: { value: number }) {
  const clamped = Math.max(0, Math.min(100, value));

  return (
    <div
      className="h-2 w-full overflow-hidden rounded-full bg-rule-soft shadow-[inset_0_1px_2px_rgba(0,0,0,0.08)]"
      role="progressbar"
      aria-valuenow={clamped}
      aria-valuemin={0}
      aria-valuemax={100}
    >
      <div
        className="h-full rounded-full transition-[width] duration-300 ease-out"
        style={{
          width: `${clamped}%`,
          background:
            "linear-gradient(90deg, var(--color-accent) 0%, var(--color-accent-strong) 100%)",
        }}
      />
    </div>
  );
}
