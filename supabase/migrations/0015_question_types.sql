-- Nouveaux types d'exercices "à l'allemande" (Übungen classiques des
-- manuels/certifications type Goethe-Zertifikat / DSD) :
--   - lueckentext   : texte à trous (mot manquant à choisir)
--   - grammar       : grammaire ciblée (déclinaisons, ordre des mots,
--                     prépositions, subordonnées) — distinct de la
--                     conjugaison verbale déjà couverte par 'conjugation'
--   - true_false    : affirmation vrai/faux à justifier par une citation
--                      du texte (Textverständnis classique)
-- Rétrocompatible : les 3168 questions existantes gardent leurs valeurs de
-- category actuelles, et les nouvelles colonnes sont nullable.

alter table public.questions
  drop constraint if exists questions_category_check;

alter table public.questions
  add constraint questions_category_check
  check (category in (
    'comprehension', 'vocabulary', 'conjugation', 'production',
    'lueckentext', 'grammar', 'true_false'
  ));

-- Justification/explication affichée après réponse : citation du texte
-- confirmant un vrai/faux, ou courte explication grammaticale. Null pour
-- les questions qui n'en ont pas (rétrocompatible avec l'existant).
alter table public.questions
  add column if not exists justification text;

-- Grille de correction structurée pour les questions de production écrite,
-- façon barème Goethe-Institut : liste de critères avec leur description
-- (ex. [{"criterion": "Aufgabenerfüllung", "description": "..."}]).
-- Null pour les questions QCM et pour les anciennes productions sans grille.
alter table public.questions
  add column if not exists rubric jsonb;
