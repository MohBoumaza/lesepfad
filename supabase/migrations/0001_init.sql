-- Lesepfad — schéma initial
-- Chaîne éditoriale (contenu figé) : level -> story -> question -> choice
-- Chaîne d'activité (données utilisateur) : profiles / progress / answers
-- référencent auth.users géré par Supabase Auth (pas de table "users" dupliquée).

create extension if not exists "pgcrypto";

-- ---------------------------------------------------------------------
-- 1. Level — les 6 niveaux CECR
-- ---------------------------------------------------------------------
create table if not exists public.levels (
  code text primary key check (code in ('A1', 'A2', 'B1', 'B2', 'C1', 'C2')),
  sort_order smallint not null unique
);

insert into public.levels (code, sort_order) values
  ('A1', 1), ('A2', 2), ('B1', 3), ('B2', 4), ('C1', 5), ('C2', 6)
on conflict (code) do nothing;

-- ---------------------------------------------------------------------
-- 2. Story — une histoire, rattachée à un niveau
-- ---------------------------------------------------------------------
create table if not exists public.stories (
  id uuid primary key default gen_random_uuid(),
  level_code text not null references public.levels (code) on delete restrict,
  title text not null,
  body text not null,
  word_count integer generated always as (
    array_length(regexp_split_to_array(trim(body), '\s+'), 1)
  ) stored,
  -- Traduction française intégrale de `body`, affichée via un bouton
  -- "Traduire en français" sur l'écran de lecture.
  translation_fr text,
  -- Glossaire mot-à-mot : clé = forme exacte du mot telle qu'elle apparaît
  -- dans `body` (accents/majuscules conservés, ponctuation retirée),
  -- valeur = traduction française contextuelle. Alimente l'infobulle
  -- affichée au survol (ordinateur) ou au clic (mobile) sur un mot.
  glossary jsonb,
  -- Court badge affiché dans la bibliothèque/lecture pour les histoires
  -- inspirées d'un conte, d'une légende ou d'un genre du patrimoine
  -- culturel allemand (ex. "Conte des frères Grimm"). Null sinon.
  culture_note text,
  published boolean not null default true,
  created_at timestamptz not null default now()
);

create index if not exists stories_level_idx on public.stories (level_code);

-- ---------------------------------------------------------------------
-- 3. Question — QCM lié à une histoire
-- ---------------------------------------------------------------------
create table if not exists public.questions (
  id uuid primary key default gen_random_uuid(),
  story_id uuid not null references public.stories (id) on delete cascade,
  prompt text not null,
  position smallint not null,
  difficulty text not null default 'normal'
    check (difficulty in ('facile', 'normal', 'difficile')),
  -- Catégorie d'exercice, façon Goethe-Zertifikat : compréhension de lecture,
  -- vocabulaire, conjugaison/grammaire, ou production écrite libre.
  category text not null default 'comprehension'
    check (category in ('comprehension', 'vocabulary', 'conjugation', 'production')),
  -- Réponse modèle pour les questions de production (pas de correction
  -- automatique : l'élève compare sa propre rédaction à cet exemple).
  -- Null pour les questions QCM (comprehension/vocabulary/conjugation).
  model_answer text,
  unique (story_id, category, position, difficulty)
);

-- ---------------------------------------------------------------------
-- 4. Choice — une option de réponse (une seule correcte par question)
-- ---------------------------------------------------------------------
create table if not exists public.choices (
  id uuid primary key default gen_random_uuid(),
  question_id uuid not null references public.questions (id) on delete cascade,
  label text not null,
  is_correct boolean not null default false,
  position smallint not null,
  unique (question_id, position)
);

-- Au plus une réponse correcte par question.
create unique index if not exists choices_one_correct_idx
  on public.choices (question_id)
  where is_correct;

-- ---------------------------------------------------------------------
-- 5. Profiles — extension de auth.users (niveau visé, etc.)
-- ---------------------------------------------------------------------
create table if not exists public.profiles (
  id uuid primary key references auth.users (id) on delete cascade,
  target_level text references public.levels (code),
  created_at timestamptz not null default now()
);

-- ---------------------------------------------------------------------
-- 6. Progress — avancement d'un utilisateur sur une histoire
-- ---------------------------------------------------------------------
create table if not exists public.progress (
  id uuid primary key default gen_random_uuid(),
  user_id uuid not null references auth.users (id) on delete cascade,
  story_id uuid not null references public.stories (id) on delete cascade,
  status text not null default 'in_progress'
    check (status in ('in_progress', 'completed')),
  score smallint,
  started_at timestamptz not null default now(),
  completed_at timestamptz,
  unique (user_id, story_id)
);

-- ---------------------------------------------------------------------
-- 7. Answer — réponse d'un utilisateur à une question
-- ---------------------------------------------------------------------
create table if not exists public.answers (
  id uuid primary key default gen_random_uuid(),
  user_id uuid not null references auth.users (id) on delete cascade,
  question_id uuid not null references public.questions (id) on delete cascade,
  choice_id uuid not null references public.choices (id) on delete cascade,
  is_correct boolean not null,
  answered_at timestamptz not null default now(),
  unique (user_id, question_id)
);

-- ---------------------------------------------------------------------
-- Row Level Security
-- ---------------------------------------------------------------------

-- Contenu éditorial : lecture publique, aucune écriture depuis le client.
alter table public.levels enable row level security;
alter table public.stories enable row level security;
alter table public.questions enable row level security;
alter table public.choices enable row level security;

create policy "levels are readable by everyone"
  on public.levels for select using (true);

create policy "published stories are readable by everyone"
  on public.stories for select using (published);

create policy "questions are readable by everyone"
  on public.questions for select using (true);

-- Les élèves ne doivent pas voir is_correct avant d'avoir répondu :
-- ce filtrage se fait côté route API (service role), pas ici.
create policy "choices are readable by everyone"
  on public.choices for select using (true);

-- Données utilisateur : chacun ne voit / n'écrit que ses propres lignes.
alter table public.profiles enable row level security;
alter table public.progress enable row level security;
alter table public.answers enable row level security;

create policy "users manage their own profile"
  on public.profiles for all
  using (auth.uid() = id)
  with check (auth.uid() = id);

create policy "users manage their own progress"
  on public.progress for all
  using (auth.uid() = user_id)
  with check (auth.uid() = user_id);

create policy "users manage their own answers"
  on public.answers for all
  using (auth.uid() = user_id)
  with check (auth.uid() = user_id);
