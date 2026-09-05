-- Audit sécurité (2026-09) — LOW
--
-- `answers` a une policy "for all using/with check (auth.uid() = user_id)" :
-- un utilisateur ne peut écrire que ses propres lignes, mais rien ne
-- vérifie que la valeur `is_correct` qu'il envoie correspond réellement au
-- `choice_id` choisi. Un client modifié pourrait donc s'auto-attribuer des
-- réponses correctes.
--
-- Impact réel limité : `is_correct` n'est utilisé aujourd'hui que pour
-- l'affichage du score personnel de l'utilisateur (statistiques visibles
-- par lui seul, voir la policy ci-dessus) — falsifier ses propres stats ne
-- donne accès à rien d'autre. On corrige quand même le trou, par cohérence
-- avec le reste de l'audit : un trigger recalcule `is_correct` à partir de
-- `choices.is_correct` à chaque insertion/mise à jour, en ignorant la
-- valeur envoyée par le client.
--
-- security definer : nécessaire pour lire `choices.is_correct`, dont la
-- colonne vient d'être retirée des GRANT `anon`/`authenticated` par
-- 0024_secure_choices_is_correct.sql.

create or replace function public.compute_answer_is_correct()
returns trigger
language plpgsql
security definer
set search_path = public
as $$
begin
  select c.is_correct
  into new.is_correct
  from public.choices c
  where c.id = new.choice_id;

  if not found then
    raise exception 'choice_id % introuvable', new.choice_id;
  end if;

  return new;
end;
$$;

drop trigger if exists answers_compute_is_correct on public.answers;

create trigger answers_compute_is_correct
  before insert or update of choice_id on public.answers
  for each row
  execute function public.compute_answer_is_correct();
