-- Audit sécurité (2026-09) — MEDIUM
--
-- `stories` a une policy `for select using (published)` : une histoire non
-- publiée (brouillon) n'est pas listable ni lisible directement. Mais
-- `questions` et `choices` ont des policies `using (true)` sans aucune
-- vérification de l'histoire parente : leur `story_id` / `question_id`
-- étant des uuid non énumérables, le risque pratique est faible, mais
-- rien n'empêchait techniquement `select * from questions` (ou `choices`)
-- de renvoyer des lignes rattachées à une histoire encore en brouillon —
-- ce qui contredit l'intention de `published`.
--
-- On resserre les deux policies pour qu'elles vérifient la publication de
-- l'histoire parente, comme pour `stories`. Sans impact applicatif : le
-- code ne lit jamais question/choice indépendamment d'une histoire déjà
-- chargée (voir src/lib/queries/stories.ts), et les histoires publiées
-- (le cas normal, `published = true` par défaut) ne sont pas affectées.

drop policy if exists "questions are readable by everyone" on public.questions;

create policy "questions of published stories are readable by everyone"
  on public.questions for select
  using (
    exists (
      select 1
      from public.stories s
      where s.id = questions.story_id
        and s.published
    )
  );

drop policy if exists "choices are readable by everyone" on public.choices;

create policy "choices of published stories are readable by everyone"
  on public.choices for select
  using (
    exists (
      select 1
      from public.questions q
      join public.stories s on s.id = q.story_id
      where q.id = choices.question_id
        and s.published
    )
  );
