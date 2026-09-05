-- Audit sécurité (2026-09) — CRITIQUE
--
-- 0001_init.sql documente explicitement l'intention que la colonne
-- `choices.is_correct` ne soit jamais visible côté client avant que
-- l'élève ait répondu (voir le commentaire au-dessus de la policy
-- "choices are readable by everyone"), et `src/lib/supabase/admin.ts`
-- confirme que seule la clé service_role (qui contourne RLS) est censée
-- la lire.
--
-- Cette intention n'a jamais été appliquée : une policy RLS avec
-- `using (true)` filtre des LIGNES, jamais des COLONNES. Avec la clé
-- anon publique (`NEXT_PUBLIC_SUPABASE_ANON_KEY`, exposée au navigateur),
-- n'importe qui pouvait déjà faire
--   select id, is_correct from choices
-- et récupérer l'intégralité du corrigé de toutes les questions du site.
--
-- La protection colonne par colonne se fait avec GRANT/REVOKE Postgres,
-- pas avec RLS. Cette revoke est sans risque pour l'app : tout le code
-- applicatif sélectionne les colonnes de `choices` explicitement
-- (`id, question_id, label, position`, voir src/lib/queries/stories.ts)
-- et ne fait jamais `select (*)` dessus ; seul `src/lib/queries/answers.ts`
-- lit `is_correct`, et il le fait via le client service_role
-- (src/lib/supabase/admin.ts), qui n'est pas soumis aux GRANT/REVOKE
-- ci-dessous (le rôle service_role de Supabase a un accès direct, hors RLS
-- et hors droits de colonnes standards).

-- Correctif (2026-09) : un `revoke select (col)` seul ne suffit pas quand le
-- rôle a déjà un `grant select` au niveau de la TABLE entière (c'est le cas
-- ici : Supabase accorde `select` sur toutes les tables `public` à
-- `anon`/`authenticated` par défaut). En PostgreSQL, les privilèges colonne
-- par colonne sont additifs par rapport aux privilèges table : un GRANT
-- table-level est un sur-ensemble qu'un REVOKE column-level ne peut pas
-- restreindre. Le `revoke select (is_correct) ...` seul était donc un no-op
-- silencieux (vérifié en base : `anon`/`authenticated` gardaient SELECT sur
-- `is_correct` malgré cette ligne). La correction retire le SELECT au niveau
-- table puis ne le redonne que sur les colonnes non sensibles.

revoke select on public.choices from anon, authenticated;

grant select (id, question_id, label, position) on public.choices to anon, authenticated;
