-- Audit sécurité (2026-09) — HIGH
--
-- Aucune ligne `public.profiles` n'était jamais créée automatiquement à
-- l'inscription (aucun trigger sur `auth.users`, aucun code applicatif ne
-- fait d'insert — voir `grep -rln "profiles" src`, seul
-- src/lib/queries/profile.ts la référence). `setTargetLevel()` faisait donc
-- un `.update()` sur une ligne inexistante : Postgres/PostgREST renvoie un
-- succès (0 ligne affectée n'est pas une erreur), donc l'app annonçait
-- « niveau enregistré » sans que rien ne soit réellement écrit.
--
-- 1) Corrigé côté application : `setTargetLevel()` utilise désormais
--    `.upsert()` (voir src/lib/queries/profile.ts), ce qui suffit à corriger
--    le bug pour tout nouvel appel.
-- 2) Ce trigger crée la ligne `profiles` dès l'inscription, en filet de
--    sécurité : ça évite qu'un utilisateur inscrit mais n'ayant jamais
--    encore visé de niveau se retrouve sans ligne `profiles` du tout (utile
--    si d'autres fonctionnalités futures veulent lire `profiles` avant que
--    l'utilisateur n'ait défini de `target_level`).

create or replace function public.handle_new_user()
returns trigger
language plpgsql
security definer
set search_path = public
as $$
begin
  insert into public.profiles (id)
  values (new.id)
  on conflict (id) do nothing;
  return new;
end;
$$;

drop trigger if exists on_auth_user_created on auth.users;

create trigger on_auth_user_created
  after insert on auth.users
  for each row
  execute function public.handle_new_user();

-- Filet de sécurité pour les comptes déjà inscrits avant ce trigger.
insert into public.profiles (id)
select u.id
from auth.users u
left join public.profiles p on p.id = u.id
where p.id is null
on conflict (id) do nothing;
