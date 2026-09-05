"use client";

import { useState } from "react";
import { createClient } from "@/lib/supabase/client";

export default function ConnexionPage() {
  const [email, setEmail] = useState("");
  const [status, setStatus] = useState<"idle" | "sending" | "sent" | "error">(
    "idle",
  );

  async function handleSubmit(event: React.FormEvent) {
    event.preventDefault();
    setStatus("sending");
    const supabase = createClient();

    const { error } = await supabase.auth.signInWithOtp({
      email,
      options: {
        emailRedirectTo: `${window.location.origin}/auth/callback`,
      },
    });

    setStatus(error ? "error" : "sent");
  }

  return (
    <main className="mx-auto flex w-full max-w-sm flex-1 flex-col justify-center gap-6 px-6 py-12">
      <header className="flex flex-col gap-2">
        <p className="font-mono text-xs uppercase tracking-widest text-accent">
          Lesepfad
        </p>
        <h1 className="font-display text-2xl font-semibold text-ink">
          Connexion
        </h1>
        <p className="text-sm text-ink-soft">
          Un lien magique par e-mail — pas de mot de passe. Nécessaire pour
          sauvegarder ta progression d&apos;une session à l&apos;autre.
        </p>
      </header>

      {status === "sent" ? (
        <p className="card-surface border-sage bg-sage-tint p-4 text-sm text-sage">
          E-mail envoyé à {email}. Clique sur le lien pour te connecter.
        </p>
      ) : (
        <form onSubmit={handleSubmit} className="card-surface flex flex-col gap-3 p-5">
          <input
            type="email"
            required
            placeholder="toi@exemple.com"
            value={email}
            onChange={(e) => setEmail(e.target.value)}
            className="rounded-lg border border-rule bg-surface px-3 py-2.5 text-ink outline-none transition-colors focus:border-accent"
          />
          <button
            type="submit"
            disabled={status === "sending"}
            className="btn-primary rounded-full px-4 py-2.5 font-semibold disabled:opacity-60"
          >
            {status === "sending" ? "Envoi..." : "Recevoir le lien"}
          </button>
          {status === "error" && (
            <p className="text-sm text-danger">
              Une erreur est survenue. Réessaie.
            </p>
          )}
        </form>
      )}
    </main>
  );
}
