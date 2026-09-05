import Link from "next/link";
import { ProgressBar } from "@/components/progress-bar";
import { LevelChip } from "@/components/level-chip";
import { getDashboardStats } from "@/lib/queries/stats";
import { isSupabaseConfigured } from "@/lib/supabase/is-configured";

export default async function StatistiquesPage() {
  const configured = isSupabaseConfigured();
  const stats = configured ? await getDashboardStats() : null;

  if (!stats) {
    return (
      <main className="mx-auto flex w-full max-w-md flex-1 flex-col gap-4 px-6 py-14 text-center">
        <p className="font-mono text-xs uppercase tracking-widest text-accent">
          Progrès
        </p>
        <h1 className="font-display text-2xl font-semibold text-ink">
          Connecte-toi pour voir tes statistiques
        </h1>
        <p className="text-sm text-ink-soft">
          Ta progression par niveau, ta précision par type d&apos;exercice, ta
          série de jours et tes badges sont liés à ton compte —{" "}
          {!configured ? "indisponible en mode démo." : "connecte-toi d'abord."}
        </p>
        {configured && (
          <Link
            href="/connexion"
            className="btn-primary self-center rounded-full px-5 py-2 font-semibold"
          >
            Se connecter
          </Link>
        )}
      </main>
    );
  }

  const achievedBadges = stats.badges.filter((b) => b.achieved);

  return (
    <main className="mx-auto flex w-full max-w-3xl flex-1 flex-col gap-8 px-6 py-12">
      <header className="flex flex-col gap-2">
        <p className="font-mono text-xs uppercase tracking-widest text-accent">
          Progrès
        </p>
        <h1 className="font-display text-3xl font-semibold text-ink">
          Tes statistiques
        </h1>
        <p className="text-sm text-ink-soft">
          {stats.storiesCompleted} histoire{stats.storiesCompleted > 1 ? "s" : ""}{" "}
          terminée{stats.storiesCompleted > 1 ? "s" : ""} sur {stats.storiesTotal} ·{" "}
          {achievedBadges.length}/{stats.badges.length} badges
        </p>
      </header>

      {/* Chiffres clés */}
      <section className="grid grid-cols-2 gap-3 sm:grid-cols-4">
        <StatTile
          icon="🔥"
          value={String(stats.currentStreak)}
          label={stats.currentStreak > 1 ? "jours de suite" : "jour en cours"}
        />
        <StatTile
          icon="🏆"
          value={String(stats.longestStreak)}
          label="meilleure série"
        />
        <StatTile
          icon="🎯"
          value={
            stats.overallAccuracyPct === null ? "—" : `${stats.overallAccuracyPct}%`
          }
          label="précision globale"
        />
        <StatTile
          icon="🗂️"
          value={String(stats.vocabularyTotal)}
          label={`mot${stats.vocabularyTotal > 1 ? "s" : ""} enregistré${stats.vocabularyTotal > 1 ? "s" : ""}`}
        />
      </section>

      {/* Progression par niveau */}
      <section className="card-surface flex flex-col gap-4 p-5">
        <h2 className="font-display text-lg font-semibold text-ink">
          Progression par niveau
        </h2>
        <div className="flex flex-col gap-3">
          {stats.byLevel.map((level) => (
            <div key={level.code} className="flex items-center gap-3">
              <LevelChip level={level.code} />
              <div className="flex-1">
                <ProgressBar
                  value={
                    level.total === 0 ? 0 : (level.completed / level.total) * 100
                  }
                />
              </div>
              <span className="w-14 shrink-0 text-right font-mono text-xs text-ink-soft">
                {level.completed}/{level.total}
              </span>
            </div>
          ))}
        </div>
      </section>

      {/* Précision par type d'exercice */}
      {stats.accuracyByCategory.length > 0 && (
        <section className="card-surface flex flex-col gap-4 p-5">
          <h2 className="font-display text-lg font-semibold text-ink">
            Précision par type d&apos;exercice
          </h2>
          <div className="flex flex-col gap-3">
            {stats.accuracyByCategory.map((cat) => {
              const pct = cat.total === 0 ? 0 : (cat.correct / cat.total) * 100;
              return (
                <div key={cat.category} className="flex items-center gap-3">
                  <span className="w-32 shrink-0 text-sm text-ink">
                    {cat.label}
                  </span>
                  <div className="flex-1">
                    <ProgressBar value={pct} />
                  </div>
                  <span className="w-20 shrink-0 text-right font-mono text-xs text-ink-soft">
                    {cat.correct}/{cat.total}
                  </span>
                </div>
              );
            })}
          </div>
        </section>
      )}

      {/* Badges */}
      <section className="flex flex-col gap-4">
        <h2 className="font-display text-lg font-semibold text-ink">
          Badges
        </h2>
        <div className="grid grid-cols-2 gap-3 sm:grid-cols-4">
          {stats.badges.map((badge) => (
            <div
              key={badge.id}
              className={`card-surface flex flex-col items-center gap-1.5 p-4 text-center transition-opacity ${
                badge.achieved ? "" : "opacity-40 grayscale"
              }`}
              title={badge.description}
            >
              <span className="text-2xl" aria-hidden>
                {badge.icon}
              </span>
              <span className="font-mono text-xs font-semibold text-ink">
                {badge.label}
              </span>
              <span className="text-xs text-ink-soft">{badge.description}</span>
            </div>
          ))}
        </div>
      </section>
    </main>
  );
}

function StatTile({
  icon,
  value,
  label,
}: {
  icon: string;
  value: string;
  label: string;
}) {
  return (
    <div className="card-surface flex flex-col items-center gap-1 p-4 text-center">
      <span className="text-xl" aria-hidden>
        {icon}
      </span>
      <span className="font-display text-2xl font-semibold text-ink">
        {value}
      </span>
      <span className="text-xs text-ink-soft">{label}</span>
    </div>
  );
}
