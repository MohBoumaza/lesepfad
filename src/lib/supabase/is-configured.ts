/**
 * true une fois qu'un vrai projet Supabase est branché (.env.local rempli
 * à partir de .env.example). Tant que ce n'est pas le cas, les pages et
 * routes API retombent sur les données factices de src/lib/mock-data.ts
 * pour rester utilisables sans configuration — pratique pendant le
 * développement du design et des composants (étape 4), avant l'étape 6
 * (vrai contenu) et le déploiement.
 */
export function isSupabaseConfigured(): boolean {
  return Boolean(
    process.env.NEXT_PUBLIC_SUPABASE_URL &&
      process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY,
  );
}
