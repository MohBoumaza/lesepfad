import Link from "next/link";
import { isSupabaseConfigured } from "@/lib/supabase/is-configured";
import { createClient } from "@/lib/supabase/server";

export async function SiteHeader() {
  const configured = isSupabaseConfigured();
  const user = configured ? await getUser() : null;

  return (
    <header className="sticky top-0 z-10 flex items-center justify-between border-b border-rule bg-surface-raised/85 px-6 py-3 backdrop-blur-md">
      <div className="flex items-center gap-5">
        <Link href="/" className="flex items-center gap-2.5">
          <span
            className="flex h-8 w-8 items-center justify-center rounded-lg font-display text-base font-bold text-white shadow-sm"
            style={{
              background:
                "linear-gradient(135deg, var(--color-accent) 0%, var(--color-sage) 100%)",
            }}
            aria-hidden
          >
            L
          </span>
          <span className="font-display text-lg font-semibold text-ink">
            Lesepfad
          </span>
        </Link>
        <Link
          href="/jeux"
          className="hidden text-sm text-ink-soft transition-colors hover:text-accent-strong sm:inline"
        >
          🎮 Jeux
        </Link>
      </div>

      <div className="flex items-center gap-3 text-sm">
        {!configured && (
          <span className="rounded-full bg-surface px-3 py-1 font-mono text-xs text-ink-soft">
            mode démo — Supabase non configuré
          </span>
        )}

        {configured && user && (
          <form action="/api/auth/signout" method="post" className="flex items-center gap-3">
            <Link
              href="/statistiques"
              className="rounded-md border border-rule px-3 py-1.5 text-ink transition-colors hover:border-accent hover:text-accent-strong"
            >
              📊 Progrès
            </Link>
            <Link
              href="/vocabulaire"
              className="rounded-md border border-rule px-3 py-1.5 text-ink transition-colors hover:border-accent hover:text-accent-strong"
            >
              📚 Vocabulaire
            </Link>
            <span className="text-ink-soft">{user.email}</span>
            <button
              type="submit"
              className="rounded-md border border-rule px-3 py-1.5 text-ink transition-colors hover:border-accent hover:text-accent-strong"
            >
              Déconnexion
            </button>
          </form>
        )}

        {configured && !user && (
          <Link
            href="/connexion"
            className="rounded-md border border-rule px-3 py-1.5 text-ink transition-colors hover:border-accent hover:text-accent-strong"
          >
            Connexion
          </Link>
        )}
      </div>
    </header>
  );
}

async function getUser() {
  const supabase = await createClient();
  const {
    data: { user },
  } = await supabase.auth.getUser();
  return user;
}
