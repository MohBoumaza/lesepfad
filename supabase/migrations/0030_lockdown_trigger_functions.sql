-- Audit sécurité (2026-09) — WARN (advisor Supabase)
--
-- `compute_answer_is_correct()` (0027) et `handle_new_user()` (0025) sont
-- des fonctions `security definer` internes, déclenchées uniquement par des
-- triggers. PostgreSQL accorde automatiquement `EXECUTE` à `PUBLIC` à la
-- création d'une fonction ; comme `anon` et `authenticated` sont membres
-- implicites de `PUBLIC`, ces deux fonctions étaient directement appelables
-- via `/rest/v1/rpc/compute_answer_is_correct` et `/rest/v1/rpc/handle_new_user`
-- sans authentification. Rien dans l'app ne les appelle ainsi (elles ne
-- s'exécutent que via les triggers `answers_compute_is_correct` et
-- `on_auth_user_created`), donc retirer l'EXECUTE public est sans impact
-- fonctionnel — les triggers continuent de s'exécuter, cette restriction ne
-- s'applique qu'aux appels directs via l'API RPC.
--
-- Correctif : retirer EXECUTE de PUBLIC (et non seulement de anon/authenticated,
-- qui en hériteraient quand même via PUBLIC — voir 0024 pour le même piège
-- avec les GRANT/REVOKE de colonnes).

revoke execute on function public.compute_answer_is_correct() from public;
revoke execute on function public.handle_new_user() from public;
