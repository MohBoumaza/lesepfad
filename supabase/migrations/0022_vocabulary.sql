-- Vocabulaire personnel + répétition espacée (méthode Leitner à 5 boîtes).
-- Un mot ajouté depuis le glossaire d'une histoire revient périodiquement
-- dans /vocabulaire ; une bonne réponse fait avancer la boîte (intervalle
-- plus long), une mauvaise réponse ramène le mot en boîte 1 (révision le
-- lendemain).

create table if not exists public.vocabulary_items (
  id uuid primary key default gen_random_uuid(),
  user_id uuid not null references auth.users (id) on delete cascade,
  word text not null,
  translation text not null,
  -- Histoire d'origine, pour donner du contexte lors de la révision.
  -- Conservé même si l'histoire est supprimée (set null, pas cascade).
  story_id uuid references public.stories (id) on delete set null,
  box smallint not null default 1 check (box between 1 and 5),
  review_count integer not null default 0,
  added_at timestamptz not null default now(),
  next_review_at timestamptz not null default now(),
  unique (user_id, word)
);

create index if not exists vocabulary_items_due_idx
  on public.vocabulary_items (user_id, next_review_at);

alter table public.vocabulary_items enable row level security;

create policy "users manage their own vocabulary"
  on public.vocabulary_items for all
  using (auth.uid() = user_id)
  with check (auth.uid() = user_id);
