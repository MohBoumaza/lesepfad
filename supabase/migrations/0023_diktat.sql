-- 0023_diktat.sql
-- Dictée (Hören + Schreiben) : une phrase par histoire, choisie dans le
-- corps du texte, à retranscrire après écoute (texte-à-parole). Comparaison
-- normalisée côté client ; persistée via les tables answers/choices
-- existantes avec deux choix synthétiques (correct/incorrect) par question,
-- sans changement de schéma pour answers/choices.

alter table public.questions drop constraint if exists questions_category_check;
alter table public.questions add constraint questions_category_check
  check (category in ('comprehension', 'vocabulary', 'conjugation', 'production',
                       'lueckentext', 'grammar', 'true_false', 'diktat'));

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Sie sucht ihren Schlüssel in der Tasche.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Sie sucht ihren Schlüssel in der Tasche.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Sie sucht ihren Schlüssel in der Tasche.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Sie sucht ihren Schlüssel in der Tasche.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Er frühstückt mit seiner Familie.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Er frühstückt mit seiner Familie.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Er frühstückt mit seiner Familie.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Er frühstückt mit seiner Familie.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Sie sucht lange nach den Äpfeln.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Sie sucht lange nach den Äpfeln.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Sie sucht lange nach den Äpfeln.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Sie sucht lange nach den Äpfeln.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Er bleibt zu Hause und liest ein Buch.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Er bleibt zu Hause und liest ein Buch.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Er bleibt zu Hause und liest ein Buch.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Er bleibt zu Hause und liest ein Buch.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Es gibt einen großen Kuchen mit Kerzen.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Es gibt einen großen Kuchen mit Kerzen.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Es gibt einen großen Kuchen mit Kerzen.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Es gibt einen großen Kuchen mit Kerzen.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Der kleine Johann lebt in Frankfurt.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Der kleine Johann lebt in Frankfurt.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Der kleine Johann lebt in Frankfurt.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Der kleine Johann lebt in Frankfurt.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Die Brüder lieben alte Geschichten.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Die Brüder lieben alte Geschichten.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Die Brüder lieben alte Geschichten.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Die Brüder lieben alte Geschichten.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Die Menschen gehen abends auf den Markt.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Die Menschen gehen abends auf den Markt.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Die Menschen gehen abends auf den Markt.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Die Menschen gehen abends auf den Markt.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Johann übt jeden Tag.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Johann übt jeden Tag.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Johann übt jeden Tag.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Johann übt jeden Tag.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'In den Zelten spielt eine Band.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'In den Zelten spielt eine Band.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'In den Zelten spielt eine Band.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'In den Zelten spielt eine Band.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Die Leute im Dorf nennen sie Rotkäppchen.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Die Leute im Dorf nennen sie Rotkäppchen.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Die Leute im Dorf nennen sie Rotkäppchen.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Die Leute im Dorf nennen sie Rotkäppchen.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Er ist noch klein.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Er ist noch klein.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Er ist noch klein.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Er ist noch klein.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Albert stellt viele Fragen.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Albert stellt viele Fragen.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Albert stellt viele Fragen.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Albert stellt viele Fragen.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Er baut eine Maschine.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Er baut eine Maschine.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Er baut eine Maschine.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Er baut eine Maschine.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Einige hatten fast nur Positives geschrieben.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Einige hatten fast nur Positives geschrieben.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Einige hatten fast nur Positives geschrieben.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Einige hatten fast nur Positives geschrieben.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Die Ratten schwimmen weg.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Die Ratten schwimmen weg.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Die Ratten schwimmen weg.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Die Ratten schwimmen weg.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Ludwig stirbt jung, kurz nach dem Bau.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Ludwig stirbt jung, kurz nach dem Bau.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Ludwig stirbt jung, kurz nach dem Bau.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Ludwig stirbt jung, kurz nach dem Bau.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Er lebt in Deutschland, vor langer Zeit.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Er lebt in Deutschland, vor langer Zeit.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Er lebt in Deutschland, vor langer Zeit.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Er lebt in Deutschland, vor langer Zeit.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Jetzt kommen viele Touristen nach Köln.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Jetzt kommen viele Touristen nach Köln.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Jetzt kommen viele Touristen nach Köln.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Jetzt kommen viele Touristen nach Köln.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Das Haus ist aus Brot und Zucker.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Das Haus ist aus Brot und Zucker.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Das Haus ist aus Brot und Zucker.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Das Haus ist aus Brot und Zucker.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Sie bringen die Uhren in ihr Land.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Sie bringen die Uhren in ihr Land.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Sie bringen die Uhren in ihr Land.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Sie bringen die Uhren in ihr Land.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Wilhelm bekommt später einen berühmten Preis.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Wilhelm bekommt später einen berühmten Preis.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Wilhelm bekommt später einen berühmten Preis.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Wilhelm bekommt später einen berühmten Preis.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Von oben sehen die Passagiere Flüsse und Berge.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Von oben sehen die Passagiere Flüsse und Berge.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Von oben sehen die Passagiere Flüsse und Berge.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Von oben sehen die Passagiere Flüsse und Berge.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Die Studenten lesen viele Bücher.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Die Studenten lesen viele Bücher.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Die Studenten lesen viele Bücher.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Die Studenten lesen viele Bücher.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Der Verkäufer grillt die Wurst auf dem Grill.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Der Verkäufer grillt die Wurst auf dem Grill.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Der Verkäufer grillt die Wurst auf dem Grill.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Der Verkäufer grillt die Wurst auf dem Grill.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Ein Prinz kommt durch den Wald.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Ein Prinz kommt durch den Wald.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Ein Prinz kommt durch den Wald.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Ein Prinz kommt durch den Wald.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Jetzt fühlt sich Markus schon fast zu Hause.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Jetzt fühlt sich Markus schon fast zu Hause.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Jetzt fühlt sich Markus schon fast zu Hause.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Jetzt fühlt sich Markus schon fast zu Hause.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Emma hat ein Eis bekommen, weil sie so brav war.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Emma hat ein Eis bekommen, weil sie so brav war.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Emma hat ein Eis bekommen, weil sie so brav war.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Emma hat ein Eis bekommen, weil sie so brav war.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Plötzlich hat der Zug angehalten, mitten auf der Strecke.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Plötzlich hat der Zug angehalten, mitten auf der Strecke.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Plötzlich hat der Zug angehalten, mitten auf der Strecke.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Plötzlich hat der Zug angehalten, mitten auf der Strecke.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Tom ist pünktlich gekommen und hat eine ganze Stunde allein gewartet.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Tom ist pünktlich gekommen und hat eine ganze Stunde allein gewartet.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Tom ist pünktlich gekommen und hat eine ganze Stunde allein gewartet.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Tom ist pünktlich gekommen und hat eine ganze Stunde allein gewartet.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Sie haben versprochen, im nächsten Jahr wiederzukommen.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Sie haben versprochen, im nächsten Jahr wiederzukommen.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Sie haben versprochen, im nächsten Jahr wiederzukommen.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Sie haben versprochen, im nächsten Jahr wiederzukommen.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Der Museumsführer hat gesagt, dass Goethe auch Naturwissenschaftler war.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Der Museumsführer hat gesagt, dass Goethe auch Naturwissenschaftler war.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Der Museumsführer hat gesagt, dass Goethe auch Naturwissenschaftler war.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Der Museumsführer hat gesagt, dass Goethe auch Naturwissenschaftler war.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Danach haben Jacob und Wilhelm die Geschichten aufgeschrieben.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Danach haben Jacob und Wilhelm die Geschichten aufgeschrieben.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Danach haben Jacob und Wilhelm die Geschichten aufgeschrieben.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Danach haben Jacob und Wilhelm die Geschichten aufgeschrieben.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Dort waren schon viele Menschen.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Dort waren schon viele Menschen.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Dort waren schon viele Menschen.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Dort waren schon viele Menschen.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Das Konzert hat um 19 Uhr begonnen.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Das Konzert hat um 19 Uhr begonnen.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Das Konzert hat um 19 Uhr begonnen.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Das Konzert hat um 19 Uhr begonnen.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Die Leute haben heißen Glühwein getrunken, weil es sehr kalt war.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Die Leute haben heißen Glühwein getrunken, weil es sehr kalt war.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Die Leute haben heißen Glühwein getrunken, weil es sehr kalt war.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Die Leute haben heißen Glühwein getrunken, weil es sehr kalt war.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Er komponierte neue Stücke und wurde langsam berühmt.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Er komponierte neue Stücke und wurde langsam berühmt.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Er komponierte neue Stücke und wurde langsam berühmt.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Er komponierte neue Stücke und wurde langsam berühmt.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Deshalb arbeitete er einige Jahre in einem Patentamt in Bern.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Deshalb arbeitete er einige Jahre in einem Patentamt in Bern.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Deshalb arbeitete er einige Jahre in einem Patentamt in Bern.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Deshalb arbeitete er einige Jahre in einem Patentamt in Bern.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Viele Städte waren Mitglieder, zum Beispiel Hamburg und Lübeck.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Viele Städte waren Mitglieder, zum Beispiel Hamburg und Lübeck.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Viele Städte waren Mitglieder, zum Beispiel Hamburg und Lübeck.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Viele Städte waren Mitglieder, zum Beispiel Hamburg und Lübeck.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Jeden Abend sang sie ein wunderschönes Lied.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Jeden Abend sang sie ein wunderschönes Lied.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Jeden Abend sang sie ein wunderschönes Lied.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Jeden Abend sang sie ein wunderschönes Lied.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Viele Menschen glaubten zuerst nicht, dass das Auto nützlich sein könnte.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Viele Menschen glaubten zuerst nicht, dass das Auto nützlich sein könnte.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Viele Menschen glaubten zuerst nicht, dass das Auto nützlich sein könnte.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Viele Menschen glaubten zuerst nicht, dass das Auto nützlich sein könnte.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Luther hatte viele Fragen über die Kirche.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Luther hatte viele Fragen über die Kirche.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Luther hatte viele Fragen über die Kirche.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Luther hatte viele Fragen über die Kirche.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Ein großer Baukran blieb lange Zeit auf dem Turm stehen.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Ein großer Baukran blieb lange Zeit auf dem Turm stehen.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Ein großer Baukran blieb lange Zeit auf dem Turm stehen.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Ein großer Baukran blieb lange Zeit auf dem Turm stehen.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Er hatte viel gelernt und sich schneller eingelebt, als er erwartet hatte.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Er hatte viel gelernt und sich schneller eingelebt, als er erwartet hatte.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Er hatte viel gelernt und sich schneller eingelebt, als er erwartet hatte.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Er hatte viel gelernt und sich schneller eingelebt, als er erwartet hatte.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Später kamen Bierzelte, Fahrgeschäfte und Musik dazu.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Später kamen Bierzelte, Fahrgeschäfte und Musik dazu.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Später kamen Bierzelte, Fahrgeschäfte und Musik dazu.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Später kamen Bierzelte, Fahrgeschäfte und Musik dazu.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Sie hießen Hänsel und Gretel.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Sie hießen Hänsel und Gretel.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Sie hießen Hänsel und Gretel.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Sie hießen Hänsel und Gretel.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Heute sind Schwarzwälder Kuckucksuhren weltberühmt.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Heute sind Schwarzwälder Kuckucksuhren weltberühmt.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Heute sind Schwarzwälder Kuckucksuhren weltberühmt.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Heute sind Schwarzwälder Kuckucksuhren weltberühmt.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Im Jahr 1901 bekam Röntgen den ersten Nobelpreis für Physik.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Im Jahr 1901 bekam Röntgen den ersten Nobelpreis für Physik.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Im Jahr 1901 bekam Röntgen den ersten Nobelpreis für Physik.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Im Jahr 1901 bekam Röntgen den ersten Nobelpreis für Physik.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Der Name "Zeppelin" wurde weltberühmt.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Der Name "Zeppelin" wurde weltberühmt.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Der Name "Zeppelin" wurde weltberühmt.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Der Name "Zeppelin" wurde weltberühmt.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Seit über 600 Jahren studieren dort junge Menschen aus aller Welt.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Seit über 600 Jahren studieren dort junge Menschen aus aller Welt.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Seit über 600 Jahren studieren dort junge Menschen aus aller Welt.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Seit über 600 Jahren studieren dort junge Menschen aus aller Welt.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Traditionell macht man Bratwurst aus Schweinefleisch, Salz und Gewürzen.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Traditionell macht man Bratwurst aus Schweinefleisch, Salz und Gewürzen.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Traditionell macht man Bratwurst aus Schweinefleisch, Salz und Gewürzen.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Traditionell macht man Bratwurst aus Schweinefleisch, Salz und Gewürzen.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Die böse Fee war wütend.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Die böse Fee war wütend.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Die böse Fee war wütend.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Die böse Fee war wütend.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Trotzdem half sie mit, Einladungen zu verteilen und einen Tisch mit Getränken vorzubereiten.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Trotzdem half sie mit, Einladungen zu verteilen und einen Tisch mit Getränken vorzubereiten.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Trotzdem half sie mit, Einladungen zu verteilen und einen Tisch mit Getränken vorzubereiten.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Trotzdem half sie mit, Einladungen zu verteilen und einen Tisch mit Getränken vorzubereiten.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Tom war dankbar für diesen unerwarteten, aber sehr schönen Nachmittag.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Tom war dankbar für diesen unerwarteten, aber sehr schönen Nachmittag.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Tom war dankbar für diesen unerwarteten, aber sehr schönen Nachmittag.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Tom war dankbar für diesen unerwarteten, aber sehr schönen Nachmittag.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Ihr Chef verstand die Situation und war nicht böse.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Ihr Chef verstand die Situation und war nicht böse.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Ihr Chef verstand die Situation und war nicht böse.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Ihr Chef verstand die Situation und war nicht böse.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Er interessierte sich für Pflanzen, Farben und Steine.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Er interessierte sich für Pflanzen, Farben und Steine.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Er interessierte sich für Pflanzen, Farben und Steine.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Er interessierte sich für Pflanzen, Farben und Steine.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Sie bemerkte, dass das Mädchen aufmerksam zuhörte und viele Fragen stellte.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Sie bemerkte, dass das Mädchen aufmerksam zuhörte und viele Fragen stellte.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Sie bemerkte, dass das Mädchen aufmerksam zuhörte und viele Fragen stellte.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Sie bemerkte, dass das Mädchen aufmerksam zuhörte und viele Fragen stellte.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Er war überrascht, dass viele Designideen von damals bis heute unser Leben beeinflussen.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Er war überrascht, dass viele Designideen von damals bis heute unser Leben beeinflussen.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Er war überrascht, dass viele Designideen von damals bis heute unser Leben beeinflussen.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Er war überrascht, dass viele Designideen von damals bis heute unser Leben beeinflussen.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Nachdem Anna diese Idee gehört hatte, dachte sie über ihr eigenes Leben nach.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Nachdem Anna diese Idee gehört hatte, dachte sie über ihr eigenes Leben nach.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Nachdem Anna diese Idee gehört hatte, dachte sie über ihr eigenes Leben nach.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Nachdem Anna diese Idee gehört hatte, dachte sie über ihr eigenes Leben nach.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Zuerst konnte niemand glauben, dass die Mauer wirklich gefallen war.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Zuerst konnte niemand glauben, dass die Mauer wirklich gefallen war.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Zuerst konnte niemand glauben, dass die Mauer wirklich gefallen war.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Zuerst konnte niemand glauben, dass die Mauer wirklich gefallen war.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Trotzdem hörte er nicht auf zu komponieren.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Trotzdem hörte er nicht auf zu komponieren.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Trotzdem hörte er nicht auf zu komponieren.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Trotzdem hörte er nicht auf zu komponieren.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Auf dem Brunnen steht eine kurze, ironische Inschrift über seine berühmte Formel.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Auf dem Brunnen steht eine kurze, ironische Inschrift über seine berühmte Formel.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Auf dem Brunnen steht eine kurze, ironische Inschrift über seine berühmte Formel.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Auf dem Brunnen steht eine kurze, ironische Inschrift über seine berühmte Formel.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Ihre Lehrerin lobte am Ende besonders diesen Gedanken.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Ihre Lehrerin lobte am Ende besonders diesen Gedanken.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Ihre Lehrerin lobte am Ende besonders diesen Gedanken.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Ihre Lehrerin lobte am Ende besonders diesen Gedanken.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Der Dichter Heinrich Heine machte diese Geschichte im 19.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Der Dichter Heinrich Heine machte diese Geschichte im 19.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Der Dichter Heinrich Heine machte diese Geschichte im 19.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Der Dichter Heinrich Heine machte diese Geschichte im 19.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Emma fragte, ob er den Käfer noch besitze.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Emma fragte, ob er den Käfer noch besitze.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Emma fragte, ob er den Käfer noch besitze.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Emma fragte, ob er den Käfer noch besitze.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Für seine Arbeit macht er viele Fotos und Notizen.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Für seine Arbeit macht er viele Fotos und Notizen.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Für seine Arbeit macht er viele Fotos und Notizen.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Für seine Arbeit macht er viele Fotos und Notizen.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Am Ende steigt die Familie die 533 Stufen bis zur Aussichtsplattform hoch.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Am Ende steigt die Familie die 533 Stufen bis zur Aussichtsplattform hoch.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Am Ende steigt die Familie die 533 Stufen bis zur Aussichtsplattform hoch.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Am Ende steigt die Familie die 533 Stufen bis zur Aussichtsplattform hoch.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Eine Kellnerin bringt riesige Bierkrüge, die einen Liter fassen.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Eine Kellnerin bringt riesige Bierkrüge, die einen Liter fassen.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Eine Kellnerin bringt riesige Bierkrüge, die einen Liter fassen.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Eine Kellnerin bringt riesige Bierkrüge, die einen Liter fassen.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Am Anfang des Pfades steht eine Holzfigur, die wie ein Lebkuchenhaus aussieht.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Am Anfang des Pfades steht eine Holzfigur, die wie ein Lebkuchenhaus aussieht.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Am Anfang des Pfades steht eine Holzfigur, die wie ein Lebkuchenhaus aussieht.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Am Anfang des Pfades steht eine Holzfigur, die wie ein Lebkuchenhaus aussieht.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Am Ende der Führung darf David selbst an einem kleinen Uhrwerk arbeiten.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Am Ende der Führung darf David selbst an einem kleinen Uhrwerk arbeiten.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Am Ende der Führung darf David selbst an einem kleinen Uhrwerk arbeiten.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Am Ende der Führung darf David selbst an einem kleinen Uhrwerk arbeiten.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Er verstand, dass unsichtbare Strahlen durch das Papier gedrungen sein mussten.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Er verstand, dass unsichtbare Strahlen durch das Papier gedrungen sein mussten.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Er verstand, dass unsichtbare Strahlen durch das Papier gedrungen sein mussten.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Er verstand, dass unsichtbare Strahlen durch das Papier gedrungen sein mussten.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Jahrhunderts seine ersten Luftschiffe gebaut hat.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Jahrhunderts seine ersten Luftschiffe gebaut hat.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Jahrhunderts seine ersten Luftschiffe gebaut hat.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Jahrhunderts seine ersten Luftschiffe gebaut hat.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Von dort oben kann man die Altstadt und den Fluss Neckar sehen.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Von dort oben kann man die Altstadt und den Fluss Neckar sehen.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Von dort oben kann man die Altstadt und den Fluss Neckar sehen.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Von dort oben kann man die Altstadt und den Fluss Neckar sehen.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Er beschließt, für seine Klasse einen Bericht über deutsche Wurstspezialitäten zu schreiben.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Er beschließt, für seine Klasse einen Bericht über deutsche Wurstspezialitäten zu schreiben.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Er beschließt, für seine Klasse einen Bericht über deutsche Wurstspezialitäten zu schreiben.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Er beschließt, für seine Klasse einen Bericht über deutsche Wurstspezialitäten zu schreiben.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Erst der Kuss eines Prinzen konnte den Zauber brechen und sie wecken.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Erst der Kuss eines Prinzen konnte den Zauber brechen und sie wecken.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Erst der Kuss eines Prinzen konnte den Zauber brechen und sie wecken.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Erst der Kuss eines Prinzen konnte den Zauber brechen und sie wecken.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Diese Lösung erschien Anna deutlich weniger riskant.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Diese Lösung erschien Anna deutlich weniger riskant.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Diese Lösung erschien Anna deutlich weniger riskant.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Diese Lösung erschien Anna deutlich weniger riskant.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'In den letzten Jahren hat sich die Art, wie Menschen Freundschaften pflegen, stark verändert.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'In den letzten Jahren hat sich die Art, wie Menschen Freundschaften pflegen, stark verändert.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'In den letzten Jahren hat sich die Art, wie Menschen Freundschaften pflegen, stark verändert.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'In den letzten Jahren hat sich die Art, wie Menschen Freundschaften pflegen, stark verändert.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Die ersten Wochen erwiesen sich tatsächlich als herausfordernd.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Die ersten Wochen erwiesen sich tatsächlich als herausfordernd.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Die ersten Wochen erwiesen sich tatsächlich als herausfordernd.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Die ersten Wochen erwiesen sich tatsächlich als herausfordernd.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Diese Erkenntnis brachte ihm ein neues Gefühl der inneren Ruhe.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Diese Erkenntnis brachte ihm ein neues Gefühl der inneren Ruhe.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Diese Erkenntnis brachte ihm ein neues Gefühl der inneren Ruhe.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Diese Erkenntnis brachte ihm ein neues Gefühl der inneren Ruhe.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Wenige Wochen später wurde ihm tatsächlich gekündigt, offiziell aus betrieblichen Gründen.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Wenige Wochen später wurde ihm tatsächlich gekündigt, offiziell aus betrieblichen Gründen.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Wenige Wochen später wurde ihm tatsächlich gekündigt, offiziell aus betrieblichen Gründen.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Wenige Wochen später wurde ihm tatsächlich gekündigt, offiziell aus betrieblichen Gründen.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Was mich fachlich besonders interessiert, ist die Rolle der Kinder selbst.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Was mich fachlich besonders interessiert, ist die Rolle der Kinder selbst.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Was mich fachlich besonders interessiert, ist die Rolle der Kinder selbst.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Was mich fachlich besonders interessiert, ist die Rolle der Kinder selbst.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Junge Autoren jener Zeit lehnten sich gegen starre Autoritäten auf, gegen Väter, gegen den Adel, gegen ein Leben, das ihnen vorgeschrieben schien.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Junge Autoren jener Zeit lehnten sich gegen starre Autoritäten auf, gegen Väter, gegen den Adel, gegen ein Leben, das ihnen vorgeschrieben schien.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Junge Autoren jener Zeit lehnten sich gegen starre Autoritäten auf, gegen Väter, gegen den Adel, gegen ein Leben, das ihnen vorgeschrieben schien.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Junge Autoren jener Zeit lehnten sich gegen starre Autoritäten auf, gegen Väter, gegen den Adel, gegen ein Leben, das ihnen vorgeschrieben schien.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Figuren wie die Stiefmutter oder die junge Heldin würden je nach gesellschaftlichem Kontext unterschiedlich gedeutet.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Figuren wie die Stiefmutter oder die junge Heldin würden je nach gesellschaftlichem Kontext unterschiedlich gedeutet.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Figuren wie die Stiefmutter oder die junge Heldin würden je nach gesellschaftlichem Kontext unterschiedlich gedeutet.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Figuren wie die Stiefmutter oder die junge Heldin würden je nach gesellschaftlichem Kontext unterschiedlich gedeutet.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Ob dieser Mittelweg beiden Ansprüchen gerecht werden kann, bleibt jedoch umstritten.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Ob dieser Mittelweg beiden Ansprüchen gerecht werden kann, bleibt jedoch umstritten.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Ob dieser Mittelweg beiden Ansprüchen gerecht werden kann, bleibt jedoch umstritten.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Ob dieser Mittelweg beiden Ansprüchen gerecht werden kann, bleibt jedoch umstritten.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Schnell wird deutlich, dass sich die Erinnerungen der Befragten trotz desselben historischen Ereignisses erheblich voneinander unterscheiden.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Schnell wird deutlich, dass sich die Erinnerungen der Befragten trotz desselben historischen Ereignisses erheblich voneinander unterscheiden.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Schnell wird deutlich, dass sich die Erinnerungen der Befragten trotz desselben historischen Ereignisses erheblich voneinander unterscheiden.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Schnell wird deutlich, dass sich die Erinnerungen der Befragten trotz desselben historischen Ereignisses erheblich voneinander unterscheiden.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Häufig werde angenommen, dass Kreativität vor allem durch Regellosigkeit und uneingeschränkte Möglichkeiten gefördert werde.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Häufig werde angenommen, dass Kreativität vor allem durch Regellosigkeit und uneingeschränkte Möglichkeiten gefördert werde.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Häufig werde angenommen, dass Kreativität vor allem durch Regellosigkeit und uneingeschränkte Möglichkeiten gefördert werde.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Häufig werde angenommen, dass Kreativität vor allem durch Regellosigkeit und uneingeschränkte Möglichkeiten gefördert werde.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Dennoch entschied er sich, weiterzuleben – für die Kunst, wie er selbst schrieb.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Dennoch entschied er sich, weiterzuleben – für die Kunst, wie er selbst schrieb.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Dennoch entschied er sich, weiterzuleben – für die Kunst, wie er selbst schrieb.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Dennoch entschied er sich, weiterzuleben – für die Kunst, wie er selbst schrieb.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Im Jahr 1905, seinem sogenannten Wunderjahr, veröffentlichte er vier bahnbrechende Arbeiten, darunter die spezielle Relativitätstheorie, während er weiterhin Vollzeit im Patentamt arbeitete.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Im Jahr 1905, seinem sogenannten Wunderjahr, veröffentlichte er vier bahnbrechende Arbeiten, darunter die spezielle Relativitätstheorie, während er weiterhin Vollzeit im Patentamt arbeitete.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Im Jahr 1905, seinem sogenannten Wunderjahr, veröffentlichte er vier bahnbrechende Arbeiten, darunter die spezielle Relativitätstheorie, während er weiterhin Vollzeit im Patentamt arbeitete.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Im Jahr 1905, seinem sogenannten Wunderjahr, veröffentlichte er vier bahnbrechende Arbeiten, darunter die spezielle Relativitätstheorie, während er weiterhin Vollzeit im Patentamt arbeitete.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Ein Bündnis, das ausschließlich auf gemeinsamen wirtschaftlichen Vorteilen beruht, kann brüchig werden, sobald sich diese Vorteile ungleich verteilen oder externe Kräfte neue Machtverhältnisse schaffen.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Ein Bündnis, das ausschließlich auf gemeinsamen wirtschaftlichen Vorteilen beruht, kann brüchig werden, sobald sich diese Vorteile ungleich verteilen oder externe Kräfte neue Machtverhältnisse schaffen.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Ein Bündnis, das ausschließlich auf gemeinsamen wirtschaftlichen Vorteilen beruht, kann brüchig werden, sobald sich diese Vorteile ungleich verteilen oder externe Kräfte neue Machtverhältnisse schaffen.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Ein Bündnis, das ausschließlich auf gemeinsamen wirtschaftlichen Vorteilen beruht, kann brüchig werden, sobald sich diese Vorteile ungleich verteilen oder externe Kräfte neue Machtverhältnisse schaffen.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Die Loreley symbolisiert damit nicht einfach eine verführerische Frau, sondern die unkontrollierbare Kraft der Natur selbst, der sich der rational denkende Mensch nicht entziehen kann.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Die Loreley symbolisiert damit nicht einfach eine verführerische Frau, sondern die unkontrollierbare Kraft der Natur selbst, der sich der rational denkende Mensch nicht entziehen kann.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Die Loreley symbolisiert damit nicht einfach eine verführerische Frau, sondern die unkontrollierbare Kraft der Natur selbst, der sich der rational denkende Mensch nicht entziehen kann.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Die Loreley symbolisiert damit nicht einfach eine verführerische Frau, sondern die unkontrollierbare Kraft der Natur selbst, der sich der rational denkende Mensch nicht entziehen kann.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Die Nürnberger Rostbratwurst ist klein und wird traditionell mit Majoran gewürzt, während die Thüringer Bratwurst, deren Rezept angeblich seit 1404 urkundlich belegt ist, deutlich länger und kräftiger im Geschmack ist.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Die Nürnberger Rostbratwurst ist klein und wird traditionell mit Majoran gewürzt, während die Thüringer Bratwurst, deren Rezept angeblich seit 1404 urkundlich belegt ist, deutlich länger und kräftiger im Geschmack ist.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Die Nürnberger Rostbratwurst ist klein und wird traditionell mit Majoran gewürzt, während die Thüringer Bratwurst, deren Rezept angeblich seit 1404 urkundlich belegt ist, deutlich länger und kräftiger im Geschmack ist.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Die Nürnberger Rostbratwurst ist klein und wird traditionell mit Majoran gewürzt, während die Thüringer Bratwurst, deren Rezept angeblich seit 1404 urkundlich belegt ist, deutlich länger und kräftiger im Geschmack ist.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Diese Entscheidung markierte den Beginn einer bemerkenswerten industriellen Erneuerung.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Diese Entscheidung markierte den Beginn einer bemerkenswerten industriellen Erneuerung.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Diese Entscheidung markierte den Beginn einer bemerkenswerten industriellen Erneuerung.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Diese Entscheidung markierte den Beginn einer bemerkenswerten industriellen Erneuerung.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Wenn ich heutige Studierende unterrichte, erinnere ich sie daran, dass Sprachwandel selten neutral verläuft.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Wenn ich heutige Studierende unterrichte, erinnere ich sie daran, dass Sprachwandel selten neutral verläuft.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Wenn ich heutige Studierende unterrichte, erinnere ich sie daran, dass Sprachwandel selten neutral verläuft.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Wenn ich heutige Studierende unterrichte, erinnere ich sie daran, dass Sprachwandel selten neutral verläuft.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Für mich zeigt diese lange Geschichte, dass ein Bauwerk niemals nur aus Stein besteht.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Für mich zeigt diese lange Geschichte, dass ein Bauwerk niemals nur aus Stein besteht.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Für mich zeigt diese lange Geschichte, dass ein Bauwerk niemals nur aus Stein besteht.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Für mich zeigt diese lange Geschichte, dass ein Bauwerk niemals nur aus Stein besteht.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Innerhalb der großen Zelte gibt es weiterhin echte Handwerkskunst, echte Familienbetriebe, die seit Generationen brauen, und echte Musik, die von lokalen Kapellen gespielt wird.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Innerhalb der großen Zelte gibt es weiterhin echte Handwerkskunst, echte Familienbetriebe, die seit Generationen brauen, und echte Musik, die von lokalen Kapellen gespielt wird.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Innerhalb der großen Zelte gibt es weiterhin echte Handwerkskunst, echte Familienbetriebe, die seit Generationen brauen, und echte Musik, die von lokalen Kapellen gespielt wird.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Innerhalb der großen Zelte gibt es weiterhin echte Handwerkskunst, echte Familienbetriebe, die seit Generationen brauen, und echte Musik, die von lokalen Kapellen gespielt wird.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'So leben beide Welten, die des Handwerks und die der Industrie, seltsam voneinander abhängig nebeneinander.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'So leben beide Welten, die des Handwerks und die der Industrie, seltsam voneinander abhängig nebeneinander.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'So leben beide Welten, die des Handwerks und die der Industrie, seltsam voneinander abhängig nebeneinander.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'So leben beide Welten, die des Handwerks und die der Industrie, seltsam voneinander abhängig nebeneinander.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Gleichzeitig zeigt diese Geschichte auch die ethischen Grenzen wissenschaftlicher Neugier.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Gleichzeitig zeigt diese Geschichte auch die ethischen Grenzen wissenschaftlicher Neugier.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Gleichzeitig zeigt diese Geschichte auch die ethischen Grenzen wissenschaftlicher Neugier.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Gleichzeitig zeigt diese Geschichte auch die ethischen Grenzen wissenschaftlicher Neugier.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Der Höhepunkt dieser Ambition war zugleich ihr Ende.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Der Höhepunkt dieser Ambition war zugleich ihr Ende.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Der Höhepunkt dieser Ambition war zugleich ihr Ende.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Der Höhepunkt dieser Ambition war zugleich ihr Ende.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Manche Kollegen betrachteten jede Veränderung als Bedrohung der akademischen Würde.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Manche Kollegen betrachteten jede Veränderung als Bedrohung der akademischen Würde.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Manche Kollegen betrachteten jede Veränderung als Bedrohung der akademischen Würde.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Manche Kollegen betrachteten jede Veränderung als Bedrohung der akademischen Würde.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Für meine Inszenierung habe ich die Perspektive verschoben.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Für meine Inszenierung habe ich die Perspektive verschoben.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Für meine Inszenierung habe ich die Perspektive verschoben.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Für meine Inszenierung habe ich die Perspektive verschoben.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Zu ihrer Enttäuschung wurde ihr jedoch mitgeteilt, dass eine Rückrufaktion aus wirtschaftlichen Gründen derzeit nicht in Betracht gezogen werde und dass sie die Angelegenheit als erledigt betrachten solle.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Zu ihrer Enttäuschung wurde ihr jedoch mitgeteilt, dass eine Rückrufaktion aus wirtschaftlichen Gründen derzeit nicht in Betracht gezogen werde und dass sie die Angelegenheit als erledigt betrachten solle.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Zu ihrer Enttäuschung wurde ihr jedoch mitgeteilt, dass eine Rückrufaktion aus wirtschaftlichen Gründen derzeit nicht in Betracht gezogen werde und dass sie die Angelegenheit als erledigt betrachten solle.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Zu ihrer Enttäuschung wurde ihr jedoch mitgeteilt, dass eine Rückrufaktion aus wirtschaftlichen Gründen derzeit nicht in Betracht gezogen werde und dass sie die Angelegenheit als erledigt betrachten solle.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'So wurde der offizielle Teil der Feier traditionell gehalten, während im Anschluss ein informellerer Teil mit Musik nach dem Geschmack der jüngeren Generation folgte.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'So wurde der offizielle Teil der Feier traditionell gehalten, während im Anschluss ein informellerer Teil mit Musik nach dem Geschmack der jüngeren Generation folgte.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'So wurde der offizielle Teil der Feier traditionell gehalten, während im Anschluss ein informellerer Teil mit Musik nach dem Geschmack der jüngeren Generation folgte.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'So wurde der offizielle Teil der Feier traditionell gehalten, während im Anschluss ein informellerer Teil mit Musik nach dem Geschmack der jüngeren Generation folgte.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Diese Erkenntnis veränderte seine Wahrnehmung des urbanen Lebens grundlegend.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Diese Erkenntnis veränderte seine Wahrnehmung des urbanen Lebens grundlegend.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Diese Erkenntnis veränderte seine Wahrnehmung des urbanen Lebens grundlegend.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Diese Erkenntnis veränderte seine Wahrnehmung des urbanen Lebens grundlegend.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'In Wirklichkeit wird gerade diese Zeit der Unsicherheit zu einer der prägendsten und bereicherndsten Phasen deines gesamten Lebens werden.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'In Wirklichkeit wird gerade diese Zeit der Unsicherheit zu einer der prägendsten und bereicherndsten Phasen deines gesamten Lebens werden.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'In Wirklichkeit wird gerade diese Zeit der Unsicherheit zu einer der prägendsten und bereicherndsten Phasen deines gesamten Lebens werden.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'In Wirklichkeit wird gerade diese Zeit der Unsicherheit zu einer der prägendsten und bereicherndsten Phasen deines gesamten Lebens werden.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Diese befürchtete Reue blieb jedoch, entgegen seiner Erwartung, größtenteils aus.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Diese befürchtete Reue blieb jedoch, entgegen seiner Erwartung, größtenteils aus.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Diese befürchtete Reue blieb jedoch, entgegen seiner Erwartung, größtenteils aus.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Diese befürchtete Reue blieb jedoch, entgegen seiner Erwartung, größtenteils aus.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Diese Neubewertung erschütterte sie zunächst, denn sie stellte die Grundlage ihres gesamten Berufslebens infrage.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Diese Neubewertung erschütterte sie zunächst, denn sie stellte die Grundlage ihres gesamten Berufslebens infrage.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Diese Neubewertung erschütterte sie zunächst, denn sie stellte die Grundlage ihres gesamten Berufslebens infrage.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Diese Neubewertung erschütterte sie zunächst, denn sie stellte die Grundlage ihres gesamten Berufslebens infrage.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Vogler empfand dabei ein seltsames Unbehagen, das er nur schwer in Worte fassen konnte.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Vogler empfand dabei ein seltsames Unbehagen, das er nur schwer in Worte fassen konnte.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Vogler empfand dabei ein seltsames Unbehagen, das er nur schwer in Worte fassen konnte.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Vogler empfand dabei ein seltsames Unbehagen, das er nur schwer in Worte fassen konnte.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Diese Einsicht hätte ihn zynisch machen können, doch stattdessen empfand er sie als befreiend.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Diese Einsicht hätte ihn zynisch machen können, doch stattdessen empfand er sie als befreiend.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Diese Einsicht hätte ihn zynisch machen können, doch stattdessen empfand er sie als befreiend.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Diese Einsicht hätte ihn zynisch machen können, doch stattdessen empfand er sie als befreiend.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Wozu die Mühe, wenn das Ergebnis ohnehin vergänglich ist?' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Wozu die Mühe, wenn das Ergebnis ohnehin vergänglich ist?';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Wozu die Mühe, wenn das Ergebnis ohnehin vergänglich ist?')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Wozu die Mühe, wenn das Ergebnis ohnehin vergänglich ist?', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Diese Bemerkung ließ Wolf noch lange nicht los, denn sie begriff, dass ihre Aufgabe als Historikerin nicht allein darin bestehe, Ereignisse chronologisch festzuhalten, sondern jene subtileren, langsameren Prozesse zu erfassen, mit denen Menschen die Narben einer zerrissenen Geschichte in sich selbst weitertrügen, lange nachdem die äußeren Wunden vernarbt zu sein schienen.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Diese Bemerkung ließ Wolf noch lange nicht los, denn sie begriff, dass ihre Aufgabe als Historikerin nicht allein darin bestehe, Ereignisse chronologisch festzuhalten, sondern jene subtileren, langsameren Prozesse zu erfassen, mit denen Menschen die Narben einer zerrissenen Geschichte in sich selbst weitertrügen, lange nachdem die äußeren Wunden vernarbt zu sein schienen.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Diese Bemerkung ließ Wolf noch lange nicht los, denn sie begriff, dass ihre Aufgabe als Historikerin nicht allein darin bestehe, Ereignisse chronologisch festzuhalten, sondern jene subtileren, langsameren Prozesse zu erfassen, mit denen Menschen die Narben einer zerrissenen Geschichte in sich selbst weitertrügen, lange nachdem die äußeren Wunden vernarbt zu sein schienen.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Diese Bemerkung ließ Wolf noch lange nicht los, denn sie begriff, dass ihre Aufgabe als Historikerin nicht allein darin bestehe, Ereignisse chronologisch festzuhalten, sondern jene subtileren, langsameren Prozesse zu erfassen, mit denen Menschen die Narben einer zerrissenen Geschichte in sich selbst weitertrügen, lange nachdem die äußeren Wunden vernarbt zu sein schienen.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Bei den Proben mit dem Orchester versuchte er, diese Einsicht auch musikalisch zu vermitteln, indem er die Musiker anhielt, nicht auf Kosten der übrigen Stimmen zu dominieren, sondern einander aufmerksam zuzuhören, sodass jede Stimme in dem Moment hervortreten könne, in dem sie es der Gesamtstruktur nach verdiene.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Bei den Proben mit dem Orchester versuchte er, diese Einsicht auch musikalisch zu vermitteln, indem er die Musiker anhielt, nicht auf Kosten der übrigen Stimmen zu dominieren, sondern einander aufmerksam zuzuhören, sodass jede Stimme in dem Moment hervortreten könne, in dem sie es der Gesamtstruktur nach verdiene.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Bei den Proben mit dem Orchester versuchte er, diese Einsicht auch musikalisch zu vermitteln, indem er die Musiker anhielt, nicht auf Kosten der übrigen Stimmen zu dominieren, sondern einander aufmerksam zuzuhören, sodass jede Stimme in dem Moment hervortreten könne, in dem sie es der Gesamtstruktur nach verdiene.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Bei den Proben mit dem Orchester versuchte er, diese Einsicht auch musikalisch zu vermitteln, indem er die Musiker anhielt, nicht auf Kosten der übrigen Stimmen zu dominieren, sondern einander aufmerksam zuzuhören, sodass jede Stimme in dem Moment hervortreten könne, in dem sie es der Gesamtstruktur nach verdiene.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Ich habe mir oft die Frage gestellt, was es überhaupt bedeutet, Musik zu "hören", wenn selbst ihr Schöpfer sie nur innerlich, als reine Vorstellung, erfassen konnte.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Ich habe mir oft die Frage gestellt, was es überhaupt bedeutet, Musik zu "hören", wenn selbst ihr Schöpfer sie nur innerlich, als reine Vorstellung, erfassen konnte.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Ich habe mir oft die Frage gestellt, was es überhaupt bedeutet, Musik zu "hören", wenn selbst ihr Schöpfer sie nur innerlich, als reine Vorstellung, erfassen konnte.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Ich habe mir oft die Frage gestellt, was es überhaupt bedeutet, Musik zu "hören", wenn selbst ihr Schöpfer sie nur innerlich, als reine Vorstellung, erfassen konnte.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Man könnte meinen, diese Jahre der institutionellen Unsichtbarkeit hätten sein Denken gelähmt.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Man könnte meinen, diese Jahre der institutionellen Unsichtbarkeit hätten sein Denken gelähmt.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Man könnte meinen, diese Jahre der institutionellen Unsichtbarkeit hätten sein Denken gelähmt.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Man könnte meinen, diese Jahre der institutionellen Unsichtbarkeit hätten sein Denken gelähmt.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Es gibt Momente in meiner Arbeit, in denen mir diese Parallele tröstlich erscheint.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Es gibt Momente in meiner Arbeit, in denen mir diese Parallele tröstlich erscheint.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Es gibt Momente in meiner Arbeit, in denen mir diese Parallele tröstlich erscheint.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Es gibt Momente in meiner Arbeit, in denen mir diese Parallele tröstlich erscheint.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Vielleicht ist das der eigentliche Grund, warum der Mythos bis heute nachwirkt.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Vielleicht ist das der eigentliche Grund, warum der Mythos bis heute nachwirkt.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Vielleicht ist das der eigentliche Grund, warum der Mythos bis heute nachwirkt.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Vielleicht ist das der eigentliche Grund, warum der Mythos bis heute nachwirkt.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Heute, mit dem Abstand von Jahrzehnten, sehe ich die Dinge komplizierter.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Heute, mit dem Abstand von Jahrzehnten, sehe ich die Dinge komplizierter.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Heute, mit dem Abstand von Jahrzehnten, sehe ich die Dinge komplizierter.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Heute, mit dem Abstand von Jahrzehnten, sehe ich die Dinge komplizierter.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Er wollte, dass jeder Mensch die heiligen Texte selbst lesen konnte, ohne den Umweg über einen Priester.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Er wollte, dass jeder Mensch die heiligen Texte selbst lesen konnte, ohne den Umweg über einen Priester.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Er wollte, dass jeder Mensch die heiligen Texte selbst lesen konnte, ohne den Umweg über einen Priester.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Er wollte, dass jeder Mensch die heiligen Texte selbst lesen konnte, ohne den Umweg über einen Priester.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Beide Beschreibungen sind wahr, und genau das macht das Fest so aufschlussreich für meine Forschung.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Beide Beschreibungen sind wahr, und genau das macht das Fest so aufschlussreich für meine Forschung.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Beide Beschreibungen sind wahr, und genau das macht das Fest so aufschlussreich für meine Forschung.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Beide Beschreibungen sind wahr, und genau das macht das Fest so aufschlussreich für meine Forschung.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Was die Geschwister rettet, ist nicht ein Erwachsener, der eingreift, sondern ihre eigene Findigkeit.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Was die Geschwister rettet, ist nicht ein Erwachsener, der eingreift, sondern ihre eigene Findigkeit.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Was die Geschwister rettet, ist nicht ein Erwachsener, der eingreift, sondern ihre eigene Findigkeit.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Was die Geschwister rettet, ist nicht ein Erwachsener, der eingreift, sondern ihre eigene Findigkeit.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Eine digitale Anzeige dagegen verschwindet in ihrer eigenen Selbstverständlichkeit, sie fordert keine Aufmerksamkeit, sie unterbricht nichts.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Eine digitale Anzeige dagegen verschwindet in ihrer eigenen Selbstverständlichkeit, sie fordert keine Aufmerksamkeit, sie unterbricht nichts.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Eine digitale Anzeige dagegen verschwindet in ihrer eigenen Selbstverständlichkeit, sie fordert keine Aufmerksamkeit, sie unterbricht nichts.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Eine digitale Anzeige dagegen verschwindet in ihrer eigenen Selbstverständlichkeit, sie fordert keine Aufmerksamkeit, sie unterbricht nichts.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Röntgen selbst blieb bescheiden bis zu seinem Lebensende, lehnte finanzielle Vorteile ab und starb verarmt.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Röntgen selbst blieb bescheiden bis zu seinem Lebensende, lehnte finanzielle Vorteile ab und starb verarmt.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Röntgen selbst blieb bescheiden bis zu seinem Lebensende, lehnte finanzielle Vorteile ab und starb verarmt.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Röntgen selbst blieb bescheiden bis zu seinem Lebensende, lehnte finanzielle Vorteile ab und starb verarmt.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Gessler fragte neugierig, wofür der zweite Pfeil gedacht war.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Gessler fragte neugierig, wofür der zweite Pfeil gedacht war.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Gessler fragte neugierig, wofür der zweite Pfeil gedacht war.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Gessler fragte neugierig, wofür der zweite Pfeil gedacht war.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Was mich an dieser Geschichte am meisten beschäftigt, ist das Verhältnis zwischen technischem Fortschritt und Risikobereitschaft.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Was mich an dieser Geschichte am meisten beschäftigt, ist das Verhältnis zwischen technischem Fortschritt und Risikobereitschaft.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Was mich an dieser Geschichte am meisten beschäftigt, ist das Verhältnis zwischen technischem Fortschritt und Risikobereitschaft.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Was mich an dieser Geschichte am meisten beschäftigt, ist das Verhältnis zwischen technischem Fortschritt und Risikobereitschaft.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Manche Kollegen empfinden diese Tradition als Last, als etwas, dem man ständig gerecht werden muss.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Manche Kollegen empfinden diese Tradition als Last, als etwas, dem man ständig gerecht werden muss.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Manche Kollegen empfinden diese Tradition als Last, als etwas, dem man ständig gerecht werden muss.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Manche Kollegen empfinden diese Tradition als Last, als etwas, dem man ständig gerecht werden muss.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Eine Bratwurst, industriell gefertigt und weltweit verschifft, trägt zwar denselben Namen, aber nicht mehr dieselbe Geschichte.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Eine Bratwurst, industriell gefertigt und weltweit verschifft, trägt zwar denselben Namen, aber nicht mehr dieselbe Geschichte.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Eine Bratwurst, industriell gefertigt und weltweit verschifft, trägt zwar denselben Namen, aber nicht mehr dieselbe Geschichte.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Eine Bratwurst, industriell gefertigt und weltweit verschifft, trägt zwar denselben Namen, aber nicht mehr dieselbe Geschichte.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Der Kuss des Prinzen bleibt problematisch, keine Frage, und ich bespreche das offen mit meiner Tochter.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Der Kuss des Prinzen bleibt problematisch, keine Frage, und ich bespreche das offen mit meiner Tochter.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Der Kuss des Prinzen bleibt problematisch, keine Frage, und ich bespreche das offen mit meiner Tochter.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Der Kuss des Prinzen bleibt problematisch, keine Frage, und ich bespreche das offen mit meiner Tochter.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Erschrocken floh er durch den Wald, ohne sich umzudrehen.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Erschrocken floh er durch den Wald, ohne sich umzudrehen.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Erschrocken floh er durch den Wald, ohne sich umzudrehen.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Erschrocken floh er durch den Wald, ohne sich umzudrehen.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Als sie schließlich, im Zuge eines lange aufgeschobenen Umzugs, gezwungen war, sämtliche Schubladen zu leeren, hielt sie inne, als ihre Finger unversehens auf das vertraute, kühle Metall der Musikdose stießen.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Als sie schließlich, im Zuge eines lange aufgeschobenen Umzugs, gezwungen war, sämtliche Schubladen zu leeren, hielt sie inne, als ihre Finger unversehens auf das vertraute, kühle Metall der Musikdose stießen.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Als sie schließlich, im Zuge eines lange aufgeschobenen Umzugs, gezwungen war, sämtliche Schubladen zu leeren, hielt sie inne, als ihre Finger unversehens auf das vertraute, kühle Metall der Musikdose stießen.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Als sie schließlich, im Zuge eines lange aufgeschobenen Umzugs, gezwungen war, sämtliche Schubladen zu leeren, hielt sie inne, als ihre Finger unversehens auf das vertraute, kühle Metall der Musikdose stießen.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Die bittere Pointe dieser Geschichte, die Bernhard fortan bei jeder sich bietenden Gelegenheit mit unverhohlener Genugtuung zum Besten gab, bestand darin, dass ausgerechnet dieser ehemalige Arbeitgeber, dem gegenüber er über Jahre hinweg eine kaum verhohlene Bitterkeit gehegt hatte, sein Manuskript nicht nur mit Begeisterung annahm, sondern es in der Folge zu einem seiner erfolgreichsten Titel des gesamten Jahrzehnts machte.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Die bittere Pointe dieser Geschichte, die Bernhard fortan bei jeder sich bietenden Gelegenheit mit unverhohlener Genugtuung zum Besten gab, bestand darin, dass ausgerechnet dieser ehemalige Arbeitgeber, dem gegenüber er über Jahre hinweg eine kaum verhohlene Bitterkeit gehegt hatte, sein Manuskript nicht nur mit Begeisterung annahm, sondern es in der Folge zu einem seiner erfolgreichsten Titel des gesamten Jahrzehnts machte.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Die bittere Pointe dieser Geschichte, die Bernhard fortan bei jeder sich bietenden Gelegenheit mit unverhohlener Genugtuung zum Besten gab, bestand darin, dass ausgerechnet dieser ehemalige Arbeitgeber, dem gegenüber er über Jahre hinweg eine kaum verhohlene Bitterkeit gehegt hatte, sein Manuskript nicht nur mit Begeisterung annahm, sondern es in der Folge zu einem seiner erfolgreichsten Titel des gesamten Jahrzehnts machte.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Die bittere Pointe dieser Geschichte, die Bernhard fortan bei jeder sich bietenden Gelegenheit mit unverhohlener Genugtuung zum Besten gab, bestand darin, dass ausgerechnet dieser ehemalige Arbeitgeber, dem gegenüber er über Jahre hinweg eine kaum verhohlene Bitterkeit gehegt hatte, sein Manuskript nicht nur mit Begeisterung annahm, sondern es in der Folge zu einem seiner erfolgreichsten Titel des gesamten Jahrzehnts machte.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Es war keineswegs so, dass Konstantin sein gegenwärtiges Leben als unglücklich empfunden hätte – er besaß eine solide berufliche Stellung, eine liebevolle Familie, ein Haus, das ihm Geborgenheit bot –, doch in diesem einen, flüchtigen Moment vor dem beschlagenen Spiegel überkam ihn die unwiderstehliche und zugleich beunruhigende Frage, ob er, hätte er sich damals anders entschieden, heute womöglich ein anderer, ihm selbst fremder Mensch geworden wäre, oder ob am Ende ohnehin, ungeachtet aller Weggabelungen, ein und derselbe Konstantin auf ihn hätte warten müssen, gleich einem unausweichlichen Fixpunkt in einem ansonsten von Zufällen durchwirkten Leben.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Es war keineswegs so, dass Konstantin sein gegenwärtiges Leben als unglücklich empfunden hätte – er besaß eine solide berufliche Stellung, eine liebevolle Familie, ein Haus, das ihm Geborgenheit bot –, doch in diesem einen, flüchtigen Moment vor dem beschlagenen Spiegel überkam ihn die unwiderstehliche und zugleich beunruhigende Frage, ob er, hätte er sich damals anders entschieden, heute womöglich ein anderer, ihm selbst fremder Mensch geworden wäre, oder ob am Ende ohnehin, ungeachtet aller Weggabelungen, ein und derselbe Konstantin auf ihn hätte warten müssen, gleich einem unausweichlichen Fixpunkt in einem ansonsten von Zufällen durchwirkten Leben.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Es war keineswegs so, dass Konstantin sein gegenwärtiges Leben als unglücklich empfunden hätte – er besaß eine solide berufliche Stellung, eine liebevolle Familie, ein Haus, das ihm Geborgenheit bot –, doch in diesem einen, flüchtigen Moment vor dem beschlagenen Spiegel überkam ihn die unwiderstehliche und zugleich beunruhigende Frage, ob er, hätte er sich damals anders entschieden, heute womöglich ein anderer, ihm selbst fremder Mensch geworden wäre, oder ob am Ende ohnehin, ungeachtet aller Weggabelungen, ein und derselbe Konstantin auf ihn hätte warten müssen, gleich einem unausweichlichen Fixpunkt in einem ansonsten von Zufällen durchwirkten Leben.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Es war keineswegs so, dass Konstantin sein gegenwärtiges Leben als unglücklich empfunden hätte – er besaß eine solide berufliche Stellung, eine liebevolle Familie, ein Haus, das ihm Geborgenheit bot –, doch in diesem einen, flüchtigen Moment vor dem beschlagenen Spiegel überkam ihn die unwiderstehliche und zugleich beunruhigende Frage, ob er, hätte er sich damals anders entschieden, heute womöglich ein anderer, ihm selbst fremder Mensch geworden wäre, oder ob am Ende ohnehin, ungeachtet aller Weggabelungen, ein und derselbe Konstantin auf ihn hätte warten müssen, gleich einem unausweichlichen Fixpunkt in einem ansonsten von Zufällen durchwirkten Leben.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'An jenem letzten Morgen jedoch, an dem sie, ohne es zunächst bewusst wahrzunehmen, ebenjene Strecke zum allerletzten Mal als Berufstätige befuhr, war nichts Außergewöhnliches an der Fahrt selbst: derselbe leicht muffige Geruch der abgenutzten Sitzpolster, dieselben vertrauten Gesichter der Mitreisenden, mit denen sie über die Jahre hinweg, ohne je ihre Namen zu erfahren, eine Art stillschweigender Vertrautheit entwickelt hatte, dasselbe monotone Rattern der Räder auf den Schienen.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'An jenem letzten Morgen jedoch, an dem sie, ohne es zunächst bewusst wahrzunehmen, ebenjene Strecke zum allerletzten Mal als Berufstätige befuhr, war nichts Außergewöhnliches an der Fahrt selbst: derselbe leicht muffige Geruch der abgenutzten Sitzpolster, dieselben vertrauten Gesichter der Mitreisenden, mit denen sie über die Jahre hinweg, ohne je ihre Namen zu erfahren, eine Art stillschweigender Vertrautheit entwickelt hatte, dasselbe monotone Rattern der Räder auf den Schienen.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'An jenem letzten Morgen jedoch, an dem sie, ohne es zunächst bewusst wahrzunehmen, ebenjene Strecke zum allerletzten Mal als Berufstätige befuhr, war nichts Außergewöhnliches an der Fahrt selbst: derselbe leicht muffige Geruch der abgenutzten Sitzpolster, dieselben vertrauten Gesichter der Mitreisenden, mit denen sie über die Jahre hinweg, ohne je ihre Namen zu erfahren, eine Art stillschweigender Vertrautheit entwickelt hatte, dasselbe monotone Rattern der Räder auf den Schienen.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'An jenem letzten Morgen jedoch, an dem sie, ohne es zunächst bewusst wahrzunehmen, ebenjene Strecke zum allerletzten Mal als Berufstätige befuhr, war nichts Außergewöhnliches an der Fahrt selbst: derselbe leicht muffige Geruch der abgenutzten Sitzpolster, dieselben vertrauten Gesichter der Mitreisenden, mit denen sie über die Jahre hinweg, ohne je ihre Namen zu erfahren, eine Art stillschweigender Vertrautheit entwickelt hatte, dasselbe monotone Rattern der Räder auf den Schienen.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Das anfängliche, spürbar unbehagliche Rascheln und Räuspern im Publikum, das diese ungewohnte Stille zunächst hervorrief, wich nach wenigen, quälend langen Augenblicken einer beinahe greifbaren, kollektiven Konzentration, wie Ines sie in dieser Intensität zuvor nie erlebt hatte.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Das anfängliche, spürbar unbehagliche Rascheln und Räuspern im Publikum, das diese ungewohnte Stille zunächst hervorrief, wich nach wenigen, quälend langen Augenblicken einer beinahe greifbaren, kollektiven Konzentration, wie Ines sie in dieser Intensität zuvor nie erlebt hatte.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Das anfängliche, spürbar unbehagliche Rascheln und Räuspern im Publikum, das diese ungewohnte Stille zunächst hervorrief, wich nach wenigen, quälend langen Augenblicken einer beinahe greifbaren, kollektiven Konzentration, wie Ines sie in dieser Intensität zuvor nie erlebt hatte.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Das anfängliche, spürbar unbehagliche Rascheln und Räuspern im Publikum, das diese ungewohnte Stille zunächst hervorrief, wich nach wenigen, quälend langen Augenblicken einer beinahe greifbaren, kollektiven Konzentration, wie Ines sie in dieser Intensität zuvor nie erlebt hatte.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Nicht dass sie sich mit der Weimarer Hofdame verwechselt hätte – dazu war ihr Verstand zu geschult, ihre Ironie zu wach –, sondern weil sie in jener unerhörten, nie ganz gestillten Sehnsucht, die aus jeder Zeile sprach, eine Form der Treue erkannte, die ihr selbst, wie sie meinte, versagt geblieben war.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Nicht dass sie sich mit der Weimarer Hofdame verwechselt hätte – dazu war ihr Verstand zu geschult, ihre Ironie zu wach –, sondern weil sie in jener unerhörten, nie ganz gestillten Sehnsucht, die aus jeder Zeile sprach, eine Form der Treue erkannte, die ihr selbst, wie sie meinte, versagt geblieben war.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Nicht dass sie sich mit der Weimarer Hofdame verwechselt hätte – dazu war ihr Verstand zu geschult, ihre Ironie zu wach –, sondern weil sie in jener unerhörten, nie ganz gestillten Sehnsucht, die aus jeder Zeile sprach, eine Form der Treue erkannte, die ihr selbst, wie sie meinte, versagt geblieben war.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Nicht dass sie sich mit der Weimarer Hofdame verwechselt hätte – dazu war ihr Verstand zu geschult, ihre Ironie zu wach –, sondern weil sie in jener unerhörten, nie ganz gestillten Sehnsucht, die aus jeder Zeile sprach, eine Form der Treue erkannte, die ihr selbst, wie sie meinte, versagt geblieben war.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Und doch ertappte er sich, wenn ein Kind – seltener geworden, aber nicht ausgestorben – mit seiner Mutter den Laden betrat und, während diese in den Regalen stöberte, ihm eine Geschichte abverlangte, dabei, spontan und ohne Rücksicht auf die gedruckte Fassung, Motive zu vertauschen, Enden zu erfinden, dem Text jene Beweglichkeit zurückzugeben, die er den Brüdern Grimm insgeheim zum Vorwurf machte, ihnen genommen zu haben.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Und doch ertappte er sich, wenn ein Kind – seltener geworden, aber nicht ausgestorben – mit seiner Mutter den Laden betrat und, während diese in den Regalen stöberte, ihm eine Geschichte abverlangte, dabei, spontan und ohne Rücksicht auf die gedruckte Fassung, Motive zu vertauschen, Enden zu erfinden, dem Text jene Beweglichkeit zurückzugeben, die er den Brüdern Grimm insgeheim zum Vorwurf machte, ihnen genommen zu haben.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Und doch ertappte er sich, wenn ein Kind – seltener geworden, aber nicht ausgestorben – mit seiner Mutter den Laden betrat und, während diese in den Regalen stöberte, ihm eine Geschichte abverlangte, dabei, spontan und ohne Rücksicht auf die gedruckte Fassung, Motive zu vertauschen, Enden zu erfinden, dem Text jene Beweglichkeit zurückzugeben, die er den Brüdern Grimm insgeheim zum Vorwurf machte, ihnen genommen zu haben.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Und doch ertappte er sich, wenn ein Kind – seltener geworden, aber nicht ausgestorben – mit seiner Mutter den Laden betrat und, während diese in den Regalen stöberte, ihm eine Geschichte abverlangte, dabei, spontan und ohne Rücksicht auf die gedruckte Fassung, Motive zu vertauschen, Enden zu erfinden, dem Text jene Beweglichkeit zurückzugeben, die er den Brüdern Grimm insgeheim zum Vorwurf machte, ihnen genommen zu haben.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Denn was, so fragte sie sich, wenn Gehorsam und Freiheit einander nicht bedingten, sondern ausschlössen, wenn die vollkommene Beherrschung der Stimmführung nur um den Preis erkauft würde, dass die Finger, längst jeder bewussten Steuerung entzogen, einen Automatismus vollführten, der zwar untadelig, aber taub sei für jene minimalen Verschiebungen des Tempos, jene kaum wahrnehmbaren Zögerungen, in denen, wie sie zu ahnen begann, das eigentliche Leben der Musik sich verberge?' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Denn was, so fragte sie sich, wenn Gehorsam und Freiheit einander nicht bedingten, sondern ausschlössen, wenn die vollkommene Beherrschung der Stimmführung nur um den Preis erkauft würde, dass die Finger, längst jeder bewussten Steuerung entzogen, einen Automatismus vollführten, der zwar untadelig, aber taub sei für jene minimalen Verschiebungen des Tempos, jene kaum wahrnehmbaren Zögerungen, in denen, wie sie zu ahnen begann, das eigentliche Leben der Musik sich verberge?';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Denn was, so fragte sie sich, wenn Gehorsam und Freiheit einander nicht bedingten, sondern ausschlössen, wenn die vollkommene Beherrschung der Stimmführung nur um den Preis erkauft würde, dass die Finger, längst jeder bewussten Steuerung entzogen, einen Automatismus vollführten, der zwar untadelig, aber taub sei für jene minimalen Verschiebungen des Tempos, jene kaum wahrnehmbaren Zögerungen, in denen, wie sie zu ahnen begann, das eigentliche Leben der Musik sich verberge?')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Denn was, so fragte sie sich, wenn Gehorsam und Freiheit einander nicht bedingten, sondern ausschlössen, wenn die vollkommene Beherrschung der Stimmführung nur um den Preis erkauft würde, dass die Finger, längst jeder bewussten Steuerung entzogen, einen Automatismus vollführten, der zwar untadelig, aber taub sei für jene minimalen Verschiebungen des Tempos, jene kaum wahrnehmbaren Zögerungen, in denen, wie sie zu ahnen begann, das eigentliche Leben der Musik sich verberge?', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || '114'' und der lakonischen Bezeichnung ''Studierender, unbekannt, Weberei-Werkstatt, 1928'' versehen war.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', '114'' und der lakonischen Bezeichnung ''Studierender, unbekannt, Weberei-Werkstatt, 1928'' versehen war.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', '114'' und der lakonischen Bezeichnung ''Studierender, unbekannt, Weberei-Werkstatt, 1928'' versehen war.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, '114'' und der lakonischen Bezeichnung ''Studierender, unbekannt, Weberei-Werkstatt, 1928'' versehen war.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Sie legte das Heft, als sie es zu Ende gelesen hatte, nicht zu den übrigen Erinnerungsstücken, sondern behielt es fortan bei sich, wie ein Dokument, das ihr weniger über die Geschichte ihres Landes als über die unauslotbare Fremdheit der eigenen Familie Auskunft gab.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Sie legte das Heft, als sie es zu Ende gelesen hatte, nicht zu den übrigen Erinnerungsstücken, sondern behielt es fortan bei sich, wie ein Dokument, das ihr weniger über die Geschichte ihres Landes als über die unauslotbare Fremdheit der eigenen Familie Auskunft gab.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Sie legte das Heft, als sie es zu Ende gelesen hatte, nicht zu den übrigen Erinnerungsstücken, sondern behielt es fortan bei sich, wie ein Dokument, das ihr weniger über die Geschichte ihres Landes als über die unauslotbare Fremdheit der eigenen Familie Auskunft gab.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Sie legte das Heft, als sie es zu Ende gelesen hatte, nicht zu den übrigen Erinnerungsstücken, sondern behielt es fortan bei sich, wie ein Dokument, das ihr weniger über die Geschichte ihres Landes als über die unauslotbare Fremdheit der eigenen Familie Auskunft gab.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Sie erreichte ihn, aber nur als Zittern, nie als Ton.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Sie erreichte ihn, aber nur als Zittern, nie als Ton.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Sie erreichte ihn, aber nur als Zittern, nie als Ton.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Sie erreichte ihn, aber nur als Zittern, nie als Ton.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Größe, das habe ich in der Zigarrenkiste gelernt, trägt zu ihrer eigenen Zeit selten ein Schild.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Größe, das habe ich in der Zigarrenkiste gelernt, trägt zu ihrer eigenen Zeit selten ein Schild.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Größe, das habe ich in der Zigarrenkiste gelernt, trägt zu ihrer eigenen Zeit selten ein Schild.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Größe, das habe ich in der Zigarrenkiste gelernt, trägt zu ihrer eigenen Zeit selten ein Schild.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Und doch blieb er, wie er später zugab, länger über den Seiten sitzen, als geschäftlich zu rechtfertigen war.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Und doch blieb er, wie er später zugab, länger über den Seiten sitzen, als geschäftlich zu rechtfertigen war.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Und doch blieb er, wie er später zugab, länger über den Seiten sitzen, als geschäftlich zu rechtfertigen war.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Und doch blieb er, wie er später zugab, länger über den Seiten sitzen, als geschäftlich zu rechtfertigen war.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Die Strömung war schon gefährlich, bevor irgendjemand ein Lied dazu erfand.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Die Strömung war schon gefährlich, bevor irgendjemand ein Lied dazu erfand.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Die Strömung war schon gefährlich, bevor irgendjemand ein Lied dazu erfand.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Die Strömung war schon gefährlich, bevor irgendjemand ein Lied dazu erfand.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || '"Werden wir heute etwas Warmes essen?", fragte er leise, ohne Hoffnung in der Stimme.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', '"Werden wir heute etwas Warmes essen?", fragte er leise, ohne Hoffnung in der Stimme.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', '"Werden wir heute etwas Warmes essen?", fragte er leise, ohne Hoffnung in der Stimme.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, '"Werden wir heute etwas Warmes essen?", fragte er leise, ohne Hoffnung in der Stimme.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Die großen Worte kamen erst später, aus Reden von Leuten, die selbst nie eine Schraube angezogen hatten.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Die großen Worte kamen erst später, aus Reden von Leuten, die selbst nie eine Schraube angezogen hatten.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Die großen Worte kamen erst später, aus Reden von Leuten, die selbst nie eine Schraube angezogen hatten.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Die großen Worte kamen erst später, aus Reden von Leuten, die selbst nie eine Schraube angezogen hatten.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Ich verließ die Wartburg, ehe er sie verließ.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Ich verließ die Wartburg, ehe er sie verließ.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Ich verließ die Wartburg, ehe er sie verließ.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Ich verließ die Wartburg, ehe er sie verließ.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Ein Haus wird gebaut, um bewohnt zu werden.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Ein Haus wird gebaut, um bewohnt zu werden.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Ein Haus wird gebaut, um bewohnt zu werden.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Ein Haus wird gebaut, um bewohnt zu werden.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Er trank sein Bier mit einer Feierlichkeit, die mir damals unverständlich schien, als wäre der Maßkrug ein Kelch und das Zelt eine Kirche, in der einmal im Jahr die Sünde der Freude erlaubt war.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Er trank sein Bier mit einer Feierlichkeit, die mir damals unverständlich schien, als wäre der Maßkrug ein Kelch und das Zelt eine Kirche, in der einmal im Jahr die Sünde der Freude erlaubt war.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Er trank sein Bier mit einer Feierlichkeit, die mir damals unverständlich schien, als wäre der Maßkrug ein Kelch und das Zelt eine Kirche, in der einmal im Jahr die Sünde der Freude erlaubt war.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Er trank sein Bier mit einer Feierlichkeit, die mir damals unverständlich schien, als wäre der Maßkrug ein Kelch und das Zelt eine Kirche, in der einmal im Jahr die Sünde der Freude erlaubt war.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Das Haus aus Lebkuchen, an das sich alle erinnern, war in ihrer Erinnerung nie süß.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Das Haus aus Lebkuchen, an das sich alle erinnern, war in ihrer Erinnerung nie süß.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Das Haus aus Lebkuchen, an das sich alle erinnern, war in ihrer Erinnerung nie süß.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Das Haus aus Lebkuchen, an das sich alle erinnern, war in ihrer Erinnerung nie süß.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Sein Sohn ist Programmierer in Stuttgart und kommt zu Weihnachten, um höflich zu bewundern, was der Vater tut, mit einer Freundlichkeit, die Vogt schmerzt, weil sie die Freundlichkeit ist, mit der man ein Museum besucht, nicht die Ehrfurcht, mit der man ein lebendiges Handwerk betrachtet.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Sein Sohn ist Programmierer in Stuttgart und kommt zu Weihnachten, um höflich zu bewundern, was der Vater tut, mit einer Freundlichkeit, die Vogt schmerzt, weil sie die Freundlichkeit ist, mit der man ein Museum besucht, nicht die Ehrfurcht, mit der man ein lebendiges Handwerk betrachtet.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Sein Sohn ist Programmierer in Stuttgart und kommt zu Weihnachten, um höflich zu bewundern, was der Vater tut, mit einer Freundlichkeit, die Vogt schmerzt, weil sie die Freundlichkeit ist, mit der man ein Museum besucht, nicht die Ehrfurcht, mit der man ein lebendiges Handwerk betrachtet.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Sein Sohn ist Programmierer in Stuttgart und kommt zu Weihnachten, um höflich zu bewundern, was der Vater tut, mit einer Freundlichkeit, die Vogt schmerzt, weil sie die Freundlichkeit ist, mit der man ein Museum besucht, nicht die Ehrfurcht, mit der man ein lebendiges Handwerk betrachtet.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Als der Professor ihr schließlich die entwickelte Platte zeigte, brauchte sie einen Moment, um zu begreifen, was sie sah: die Knochen ihrer eigenen Hand, grau und fremd, schwebend in einem Feld aus Dunkelheit, mit dem Ring, den ihr verstorbener Mann ihr geschenkt hatte, deutlich sichtbar als schwarzer Schatten um einen Finger, dessen Fleisch verschwunden war.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Als der Professor ihr schließlich die entwickelte Platte zeigte, brauchte sie einen Moment, um zu begreifen, was sie sah: die Knochen ihrer eigenen Hand, grau und fremd, schwebend in einem Feld aus Dunkelheit, mit dem Ring, den ihr verstorbener Mann ihr geschenkt hatte, deutlich sichtbar als schwarzer Schatten um einen Finger, dessen Fleisch verschwunden war.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Als der Professor ihr schließlich die entwickelte Platte zeigte, brauchte sie einen Moment, um zu begreifen, was sie sah: die Knochen ihrer eigenen Hand, grau und fremd, schwebend in einem Feld aus Dunkelheit, mit dem Ring, den ihr verstorbener Mann ihr geschenkt hatte, deutlich sichtbar als schwarzer Schatten um einen Finger, dessen Fleisch verschwunden war.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Als der Professor ihr schließlich die entwickelte Platte zeigte, brauchte sie einen Moment, um zu begreifen, was sie sah: die Knochen ihrer eigenen Hand, grau und fremd, schwebend in einem Feld aus Dunkelheit, mit dem Ring, den ihr verstorbener Mann ihr geschenkt hatte, deutlich sichtbar als schwarzer Schatten um einen Finger, dessen Fleisch verschwunden war.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'In dem Brief, den ich Jahrzehnte später in einer Kiste fand, beschreibt sie den Moment des Absturzes nicht als Explosion, sondern, seltsam poetisch für eine Frau, die sonst keine Poesie in sich trug, als ein Aufblühen, ein orangefarbenes Erblühen über ihrem Kopf, das sie zunächst für ein technisches Schauspiel hielt, bevor der Schrei einer Frau neben ihr sie begreifen ließ, dass etwas Furchtbares geschah.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'In dem Brief, den ich Jahrzehnte später in einer Kiste fand, beschreibt sie den Moment des Absturzes nicht als Explosion, sondern, seltsam poetisch für eine Frau, die sonst keine Poesie in sich trug, als ein Aufblühen, ein orangefarbenes Erblühen über ihrem Kopf, das sie zunächst für ein technisches Schauspiel hielt, bevor der Schrei einer Frau neben ihr sie begreifen ließ, dass etwas Furchtbares geschah.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'In dem Brief, den ich Jahrzehnte später in einer Kiste fand, beschreibt sie den Moment des Absturzes nicht als Explosion, sondern, seltsam poetisch für eine Frau, die sonst keine Poesie in sich trug, als ein Aufblühen, ein orangefarbenes Erblühen über ihrem Kopf, das sie zunächst für ein technisches Schauspiel hielt, bevor der Schrei einer Frau neben ihr sie begreifen ließ, dass etwas Furchtbares geschah.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'In dem Brief, den ich Jahrzehnte später in einer Kiste fand, beschreibt sie den Moment des Absturzes nicht als Explosion, sondern, seltsam poetisch für eine Frau, die sonst keine Poesie in sich trug, als ein Aufblühen, ein orangefarbenes Erblühen über ihrem Kopf, das sie zunächst für ein technisches Schauspiel hielt, bevor der Schrei einer Frau neben ihr sie begreifen ließ, dass etwas Furchtbares geschah.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Er hatte sich vorgenommen, keine Rede zu halten, keine Rückschau, keine der sentimentalen Gesten, die er bei Kollegen in ähnlicher Lage stets mit stiller Verachtung beobachtet hatte, und begann die Stunde wie jede andere, mit einer Frage an die Studenten, ob jemand die Hauptthese von Kant zur Kausalität zusammenfassen könne, und eine junge Frau in der dritten Reihe antwortete zögernd, aber richtig, und er nickte, wie er in vierzig Jahren tausendfach genickt hatte, ohne dass ihm bewusst wurde, wie viel Trost in dieser Wiederholung lag.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Er hatte sich vorgenommen, keine Rede zu halten, keine Rückschau, keine der sentimentalen Gesten, die er bei Kollegen in ähnlicher Lage stets mit stiller Verachtung beobachtet hatte, und begann die Stunde wie jede andere, mit einer Frage an die Studenten, ob jemand die Hauptthese von Kant zur Kausalität zusammenfassen könne, und eine junge Frau in der dritten Reihe antwortete zögernd, aber richtig, und er nickte, wie er in vierzig Jahren tausendfach genickt hatte, ohne dass ihm bewusst wurde, wie viel Trost in dieser Wiederholung lag.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Er hatte sich vorgenommen, keine Rede zu halten, keine Rückschau, keine der sentimentalen Gesten, die er bei Kollegen in ähnlicher Lage stets mit stiller Verachtung beobachtet hatte, und begann die Stunde wie jede andere, mit einer Frage an die Studenten, ob jemand die Hauptthese von Kant zur Kausalität zusammenfassen könne, und eine junge Frau in der dritten Reihe antwortete zögernd, aber richtig, und er nickte, wie er in vierzig Jahren tausendfach genickt hatte, ohne dass ihm bewusst wurde, wie viel Trost in dieser Wiederholung lag.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Er hatte sich vorgenommen, keine Rede zu halten, keine Rückschau, keine der sentimentalen Gesten, die er bei Kollegen in ähnlicher Lage stets mit stiller Verachtung beobachtet hatte, und begann die Stunde wie jede andere, mit einer Frage an die Studenten, ob jemand die Hauptthese von Kant zur Kausalität zusammenfassen könne, und eine junge Frau in der dritten Reihe antwortete zögernd, aber richtig, und er nickte, wie er in vierzig Jahren tausendfach genickt hatte, ohne dass ihm bewusst wurde, wie viel Trost in dieser Wiederholung lag.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Er sprach selten über Gefühle, aber er sprach viel über Bratwurst, über die richtige Mischung aus Majoran und Kümmel, über die Temperatur, bei der die Haut der Wurst am appetitlichsten aufplatzt, über die Kunden, die er über Jahrzehnte kennenlernte, deren Kinder er aufwachsen sah, deren Ehen er zerbrechen sah, deren Trauerfälle er in verkürzten, wortkargen Kondolenzen begleitete, während er ihnen die Wurst über den Tresen reichte, als wäre das Grillen selbst eine Form des Trostes, die er anzubieten hatte, weil ihm die Worte fehlten.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Er sprach selten über Gefühle, aber er sprach viel über Bratwurst, über die richtige Mischung aus Majoran und Kümmel, über die Temperatur, bei der die Haut der Wurst am appetitlichsten aufplatzt, über die Kunden, die er über Jahrzehnte kennenlernte, deren Kinder er aufwachsen sah, deren Ehen er zerbrechen sah, deren Trauerfälle er in verkürzten, wortkargen Kondolenzen begleitete, während er ihnen die Wurst über den Tresen reichte, als wäre das Grillen selbst eine Form des Trostes, die er anzubieten hatte, weil ihm die Worte fehlten.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Er sprach selten über Gefühle, aber er sprach viel über Bratwurst, über die richtige Mischung aus Majoran und Kümmel, über die Temperatur, bei der die Haut der Wurst am appetitlichsten aufplatzt, über die Kunden, die er über Jahrzehnte kennenlernte, deren Kinder er aufwachsen sah, deren Ehen er zerbrechen sah, deren Trauerfälle er in verkürzten, wortkargen Kondolenzen begleitete, während er ihnen die Wurst über den Tresen reichte, als wäre das Grillen selbst eine Form des Trostes, die er anzubieten hatte, weil ihm die Worte fehlten.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Er sprach selten über Gefühle, aber er sprach viel über Bratwurst, über die richtige Mischung aus Majoran und Kümmel, über die Temperatur, bei der die Haut der Wurst am appetitlichsten aufplatzt, über die Kunden, die er über Jahrzehnte kennenlernte, deren Kinder er aufwachsen sah, deren Ehen er zerbrechen sah, deren Trauerfälle er in verkürzten, wortkargen Kondolenzen begleitete, während er ihnen die Wurst über den Tresen reichte, als wäre das Grillen selbst eine Form des Trostes, die er anzubieten hatte, weil ihm die Worte fehlten.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Als der Prinz schließlich kam, war er nicht der Erste.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Als der Prinz schließlich kam, war er nicht der Erste.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Als der Prinz schließlich kam, war er nicht der Erste.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Als der Prinz schließlich kam, war er nicht der Erste.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Rotkäppchens Oma ist krank.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Rotkäppchens Oma ist krank.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Rotkäppchens Oma ist krank.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Rotkäppchens Oma ist krank.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Alle sind wieder glücklich.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Alle sind wieder glücklich.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Alle sind wieder glücklich.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Alle sind wieder glücklich.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Die vier Tiere gehen zusammen nach Bremen.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Die vier Tiere gehen zusammen nach Bremen.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Die vier Tiere gehen zusammen nach Bremen.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Die vier Tiere gehen zusammen nach Bremen.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Ein König hört das und ist beeindruckt.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Ein König hört das und ist beeindruckt.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Ein König hört das und ist beeindruckt.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Ein König hört das und ist beeindruckt.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Er spinnt Gold, aber er will etwas dafür.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Er spinnt Gold, aber er will etwas dafür.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Er spinnt Gold, aber er will etwas dafür.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Er spinnt Gold, aber er will etwas dafür.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Frau Holle gibt ihr schwarzes Pech.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Frau Holle gibt ihr schwarzes Pech.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Frau Holle gibt ihr schwarzes Pech.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Frau Holle gibt ihr schwarzes Pech.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Er ist nicht böse, nur ein bisschen nass.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Er ist nicht böse, nur ein bisschen nass.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Er ist nicht böse, nur ein bisschen nass.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Er ist nicht böse, nur ein bisschen nass.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'In der Schule lachen die Kinder über Mia.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'In der Schule lachen die Kinder über Mia.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'In der Schule lachen die Kinder über Mia.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'In der Schule lachen die Kinder über Mia.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Er backte wirklich Brot in Form von Eulen und Affen.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Er backte wirklich Brot in Form von Eulen und Affen.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Er backte wirklich Brot in Form von Eulen und Affen.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Er backte wirklich Brot in Form von Eulen und Affen.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Ein reicher Kaufmann wollte später den Wald für Geld zerstören.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Ein reicher Kaufmann wollte später den Wald für Geld zerstören.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Ein reicher Kaufmann wollte später den Wald für Geld zerstören.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Ein reicher Kaufmann wollte später den Wald für Geld zerstören.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Am Ende heiratete der Prinz Aschenputtel, und sie lebten glücklich zusammen.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Am Ende heiratete der Prinz Aschenputtel, und sie lebten glücklich zusammen.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Am Ende heiratete der Prinz Aschenputtel, und sie lebten glücklich zusammen.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Am Ende heiratete der Prinz Aschenputtel, und sie lebten glücklich zusammen.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Schneewittchen fiel sofort in einen tiefen Schlaf.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Schneewittchen fiel sofort in einen tiefen Schlaf.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Schneewittchen fiel sofort in einen tiefen Schlaf.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Schneewittchen fiel sofort in einen tiefen Schlaf.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Die Prinzessin weinte sehr laut.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Die Prinzessin weinte sehr laut.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Die Prinzessin weinte sehr laut.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Die Prinzessin weinte sehr laut.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Außerdem fand das Mädchen ein neues, schönes Hemd aus feinem Stoff.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Außerdem fand das Mädchen ein neues, schönes Hemd aus feinem Stoff.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Außerdem fand das Mädchen ein neues, schönes Hemd aus feinem Stoff.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Außerdem fand das Mädchen ein neues, schönes Hemd aus feinem Stoff.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Beim letzten, größten Wunsch wurde das Meer schwarz und wild.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Beim letzten, größten Wunsch wurde das Meer schwarz und wild.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Beim letzten, größten Wunsch wurde das Meer schwarz und wild.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Beim letzten, größten Wunsch wurde das Meer schwarz und wild.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Der Dummling nahm die Gans und ging zu einem Gasthaus.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Der Dummling nahm die Gans und ging zu einem Gasthaus.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Der Dummling nahm die Gans und ging zu einem Gasthaus.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Der Dummling nahm die Gans und ging zu einem Gasthaus.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Er zog sein Schwert und griff den Drachen mutig an.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Er zog sein Schwert und griff den Drachen mutig an.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Er zog sein Schwert und griff den Drachen mutig an.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Er zog sein Schwert und griff den Drachen mutig an.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Sein Wissen machte ihn nicht glücklich, sondern einsam.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Sein Wissen machte ihn nicht glücklich, sondern einsam.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Sein Wissen machte ihn nicht glücklich, sondern einsam.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Sein Wissen machte ihn nicht glücklich, sondern einsam.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Doch der Besen hörte nicht auf zu arbeiten.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Doch der Besen hörte nicht auf zu arbeiten.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Doch der Besen hörte nicht auf zu arbeiten.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Doch der Besen hörte nicht auf zu arbeiten.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Es war Ruth, die ihre alte Freundin nie vergessen hatte.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Es war Ruth, die ihre alte Freundin nie vergessen hatte.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Es war Ruth, die ihre alte Freundin nie vergessen hatte.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Es war Ruth, die ihre alte Freundin nie vergessen hatte.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Felix hörte aufmerksam zu und ermutigte ihn.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Felix hörte aufmerksam zu und ermutigte ihn.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Felix hörte aufmerksam zu und ermutigte ihn.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Felix hörte aufmerksam zu und ermutigte ihn.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Schließlich rief der Junge, dass der Erlkönig ihn berühre und ihm wehtue.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Schließlich rief der Junge, dass der Erlkönig ihn berühre und ihm wehtue.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Schließlich rief der Junge, dass der Erlkönig ihn berühre und ihm wehtue.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Schließlich rief der Junge, dass der Erlkönig ihn berühre und ihm wehtue.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Jonas, ein ruhiger Junge in der letzten Reihe, machte nicht mit.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Jonas, ein ruhiger Junge in der letzten Reihe, machte nicht mit.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Jonas, ein ruhiger Junge in der letzten Reihe, machte nicht mit.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Jonas, ein ruhiger Junge in der letzten Reihe, machte nicht mit.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Manchmal sprach er mit ihnen, leise, damit niemand es hörte.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Manchmal sprach er mit ihnen, leise, damit niemand es hörte.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Manchmal sprach er mit ihnen, leise, damit niemand es hörte.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Manchmal sprach er mit ihnen, leise, damit niemand es hörte.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Um Mitternacht erreichte der Sturm seinen Höhepunkt.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Um Mitternacht erreichte der Sturm seinen Höhepunkt.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Um Mitternacht erreichte der Sturm seinen Höhepunkt.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Um Mitternacht erreichte der Sturm seinen Höhepunkt.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || '"Das ist doch dasselbe." "Keineswegs", sagte Herr Keuner.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', '"Das ist doch dasselbe." "Keineswegs", sagte Herr Keuner.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', '"Das ist doch dasselbe." "Keineswegs", sagte Herr Keuner.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, '"Das ist doch dasselbe." "Keineswegs", sagte Herr Keuner.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Kriemhild verlangte den versunkenen Schatz zurück, doch Hagen schwieg, solange sein König lebte.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Kriemhild verlangte den versunkenen Schatz zurück, doch Hagen schwieg, solange sein König lebte.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Kriemhild verlangte den versunkenen Schatz zurück, doch Hagen schwieg, solange sein König lebte.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Kriemhild verlangte den versunkenen Schatz zurück, doch Hagen schwieg, solange sein König lebte.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Anfangs hielt Anton es für Einbildung, für einen Schatten oder einen verirrten Spaziergänger.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Anfangs hielt Anton es für Einbildung, für einen Schatten oder einen verirrten Spaziergänger.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Anfangs hielt Anton es für Einbildung, für einen Schatten oder einen verirrten Spaziergänger.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Anfangs hielt Anton es für Einbildung, für einen Schatten oder einen verirrten Spaziergänger.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'In der neunten Klasse sollte jeder Schüler ein Referat über die eigene Familiengeschichte halten.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'In der neunten Klasse sollte jeder Schüler ein Referat über die eigene Familiengeschichte halten.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'In der neunten Klasse sollte jeder Schüler ein Referat über die eigene Familiengeschichte halten.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'In der neunten Klasse sollte jeder Schüler ein Referat über die eigene Familiengeschichte halten.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Im dritten Stock erfuhr er, die Abteilung sei vor zwei Jahren ins Erdgeschoss verlegt worden.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Im dritten Stock erfuhr er, die Abteilung sei vor zwei Jahren ins Erdgeschoss verlegt worden.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Im dritten Stock erfuhr er, die Abteilung sei vor zwei Jahren ins Erdgeschoss verlegt worden.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Im dritten Stock erfuhr er, die Abteilung sei vor zwei Jahren ins Erdgeschoss verlegt worden.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Man sprach leise, stellte das Radio laut, tauschte Blicke, bevor man ein Wort wie „Freiheit“ aussprach.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Man sprach leise, stellte das Radio laut, tauschte Blicke, bevor man ein Wort wie „Freiheit“ aussprach.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Man sprach leise, stellte das Radio laut, tauschte Blicke, bevor man ein Wort wie „Freiheit“ aussprach.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Man sprach leise, stellte das Radio laut, tauschte Blicke, bevor man ein Wort wie „Freiheit“ aussprach.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Ostermann bedankte sich, obwohl er nicht genau wusste, wofür.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Ostermann bedankte sich, obwohl er nicht genau wusste, wofür.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Ostermann bedankte sich, obwohl er nicht genau wusste, wofür.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Ostermann bedankte sich, obwohl er nicht genau wusste, wofür.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Vielleicht, dachte er manchmal, war gerade diese Unvollendetheit das Einzige, worauf er sich wirklich verlassen konnte.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Vielleicht, dachte er manchmal, war gerade diese Unvollendetheit das Einzige, worauf er sich wirklich verlassen konnte.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Vielleicht, dachte er manchmal, war gerade diese Unvollendetheit das Einzige, worauf er sich wirklich verlassen konnte.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Vielleicht, dachte er manchmal, war gerade diese Unvollendetheit das Einzige, worauf er sich wirklich verlassen konnte.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Er sprach kaum darüber, und gerade dieses Schweigen ließ mich ahnen, wie tief die Erschütterung reichte.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Er sprach kaum darüber, und gerade dieses Schweigen ließ mich ahnen, wie tief die Erschütterung reichte.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Er sprach kaum darüber, und gerade dieses Schweigen ließ mich ahnen, wie tief die Erschütterung reichte.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Er sprach kaum darüber, und gerade dieses Schweigen ließ mich ahnen, wie tief die Erschütterung reichte.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Die Gleichung funktionierte; Simulationen sagten das Fortschreiten bestimmter Krankheiten mit erschreckender Genauigkeit voraus.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Die Gleichung funktionierte; Simulationen sagten das Fortschreiten bestimmter Krankheiten mit erschreckender Genauigkeit voraus.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Die Gleichung funktionierte; Simulationen sagten das Fortschreiten bestimmter Krankheiten mit erschreckender Genauigkeit voraus.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Die Gleichung funktionierte; Simulationen sagten das Fortschreiten bestimmter Krankheiten mit erschreckender Genauigkeit voraus.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Kriemhild erschlug ihn daraufhin mit dem eigenen Schwert Siegfrieds.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Kriemhild erschlug ihn daraufhin mit dem eigenen Schwert Siegfrieds.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Kriemhild erschlug ihn daraufhin mit dem eigenen Schwert Siegfrieds.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Kriemhild erschlug ihn daraufhin mit dem eigenen Schwert Siegfrieds.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Sie lernte früh, welche Sätze man im Klassenzimmer sagte und welche nur zu Hause, bei geschlossener Tür.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Sie lernte früh, welche Sätze man im Klassenzimmer sagte und welche nur zu Hause, bei geschlossener Tür.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Sie lernte früh, welche Sätze man im Klassenzimmer sagte und welche nur zu Hause, bei geschlossener Tür.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Sie lernte früh, welche Sätze man im Klassenzimmer sagte und welche nur zu Hause, bei geschlossener Tür.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Ob sie es tun würde, wusste sie in diesem Moment selbst noch nicht.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Ob sie es tun würde, wusste sie in diesem Moment selbst noch nicht.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Ob sie es tun würde, wusste sie in diesem Moment selbst noch nicht.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Ob sie es tun würde, wusste sie in diesem Moment selbst noch nicht.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Diese Einsicht hat mich gelehrt, mit dem Vergessen versöhnlicher umzugehen.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Diese Einsicht hat mich gelehrt, mit dem Vergessen versöhnlicher umzugehen.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Diese Einsicht hat mich gelehrt, mit dem Vergessen versöhnlicher umzugehen.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Diese Einsicht hat mich gelehrt, mit dem Vergessen versöhnlicher umzugehen.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Nur wenige Menschen hatten Zugang zu all diesen Einzelheiten gehabt.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Nur wenige Menschen hatten Zugang zu all diesen Einzelheiten gehabt.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Nur wenige Menschen hatten Zugang zu all diesen Einzelheiten gehabt.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Nur wenige Menschen hatten Zugang zu all diesen Einzelheiten gehabt.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Als er am Nachmittag ein drittes Büro aufsuchte, das ihm eine Kollegin empfohlen hatte, „weil man dort manchmal Ausnahmen mache", wurde ihm mitgeteilt, Ausnahmen würden grundsätzlich nur montags bearbeitet, und zwar ausschließlich für Fälle, die bereits am Freitag zuvor angemeldet worden seien.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Als er am Nachmittag ein drittes Büro aufsuchte, das ihm eine Kollegin empfohlen hatte, „weil man dort manchmal Ausnahmen mache", wurde ihm mitgeteilt, Ausnahmen würden grundsätzlich nur montags bearbeitet, und zwar ausschließlich für Fälle, die bereits am Freitag zuvor angemeldet worden seien.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Als er am Nachmittag ein drittes Büro aufsuchte, das ihm eine Kollegin empfohlen hatte, „weil man dort manchmal Ausnahmen mache", wurde ihm mitgeteilt, Ausnahmen würden grundsätzlich nur montags bearbeitet, und zwar ausschließlich für Fälle, die bereits am Freitag zuvor angemeldet worden seien.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Als er am Nachmittag ein drittes Büro aufsuchte, das ihm eine Kollegin empfohlen hatte, „weil man dort manchmal Ausnahmen mache", wurde ihm mitgeteilt, Ausnahmen würden grundsätzlich nur montags bearbeitet, und zwar ausschließlich für Fälle, die bereits am Freitag zuvor angemeldet worden seien.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Manchmal denke ich, dass Geschwister sich solche Gegenstände nur deshalb streitig machen, weil das Streiten selbst ihnen erlaubt, eine Nähe zu zeigen, für die es sonst, gerade in solchen Momenten, keine andere Sprache mehr gibt.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Manchmal denke ich, dass Geschwister sich solche Gegenstände nur deshalb streitig machen, weil das Streiten selbst ihnen erlaubt, eine Nähe zu zeigen, für die es sonst, gerade in solchen Momenten, keine andere Sprache mehr gibt.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Manchmal denke ich, dass Geschwister sich solche Gegenstände nur deshalb streitig machen, weil das Streiten selbst ihnen erlaubt, eine Nähe zu zeigen, für die es sonst, gerade in solchen Momenten, keine andere Sprache mehr gibt.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Manchmal denke ich, dass Geschwister sich solche Gegenstände nur deshalb streitig machen, weil das Streiten selbst ihnen erlaubt, eine Nähe zu zeigen, für die es sonst, gerade in solchen Momenten, keine andere Sprache mehr gibt.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Beim Frühstück beobachtete sie ihren Mann, der, ahnungslos, wie er von der neuen Verantwortung sprach, die sie übernehmen würde, mit einem Stolz in der Stimme, der sie eher beschämte als freute.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Beim Frühstück beobachtete sie ihren Mann, der, ahnungslos, wie er von der neuen Verantwortung sprach, die sie übernehmen würde, mit einem Stolz in der Stimme, der sie eher beschämte als freute.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Beim Frühstück beobachtete sie ihren Mann, der, ahnungslos, wie er von der neuen Verantwortung sprach, die sie übernehmen würde, mit einem Stolz in der Stimme, der sie eher beschämte als freute.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Beim Frühstück beobachtete sie ihren Mann, der, ahnungslos, wie er von der neuen Verantwortung sprach, die sie übernehmen würde, mit einem Stolz in der Stimme, der sie eher beschämte als freute.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Gudrun ahnte früh, dass Hagen sich nicht mit einer bloßen Trennung von Siegfried zufriedengeben würde.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Gudrun ahnte früh, dass Hagen sich nicht mit einer bloßen Trennung von Siegfried zufriedengeben würde.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Gudrun ahnte früh, dass Hagen sich nicht mit einer bloßen Trennung von Siegfried zufriedengeben würde.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Gudrun ahnte früh, dass Hagen sich nicht mit einer bloßen Trennung von Siegfried zufriedengeben würde.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Diese Erkenntnis nimmt mir inzwischen etwas von der Wehmut, mit der ich früher auf diese Frage reagierte, denn sie erlaubt mir, das Dazwischenstehen nicht länger als Mangel, sondern als eine eigene, wenn auch anstrengende Form des Zuhauseseins zu begreifen.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Diese Erkenntnis nimmt mir inzwischen etwas von der Wehmut, mit der ich früher auf diese Frage reagierte, denn sie erlaubt mir, das Dazwischenstehen nicht länger als Mangel, sondern als eine eigene, wenn auch anstrengende Form des Zuhauseseins zu begreifen.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Diese Erkenntnis nimmt mir inzwischen etwas von der Wehmut, mit der ich früher auf diese Frage reagierte, denn sie erlaubt mir, das Dazwischenstehen nicht länger als Mangel, sondern als eine eigene, wenn auch anstrengende Form des Zuhauseseins zu begreifen.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Diese Erkenntnis nimmt mir inzwischen etwas von der Wehmut, mit der ich früher auf diese Frage reagierte, denn sie erlaubt mir, das Dazwischenstehen nicht länger als Mangel, sondern als eine eigene, wenn auch anstrengende Form des Zuhauseseins zu begreifen.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Lena trägt einen neuen Schulranzen.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Lena trägt einen neuen Schulranzen.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Lena trägt einen neuen Schulranzen.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Lena trägt einen neuen Schulranzen.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Paul geht mit seiner Schwester nach Hause.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Paul geht mit seiner Schwester nach Hause.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Paul geht mit seiner Schwester nach Hause.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Paul geht mit seiner Schwester nach Hause.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Am ersten Tag ist Sophie ein bisschen nervös.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Am ersten Tag ist Sophie ein bisschen nervös.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Am ersten Tag ist Sophie ein bisschen nervös.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Am ersten Tag ist Sophie ein bisschen nervös.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Er fährt durch den Park.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Er fährt durch den Park.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Er fährt durch den Park.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Er fährt durch den Park.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Am Abend ist es dunkel.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Am Abend ist es dunkel.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Am Abend ist es dunkel.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Am Abend ist es dunkel.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Die Kinder putzen am Abend vorher ihre Schuhe.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Die Kinder putzen am Abend vorher ihre Schuhe.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Die Kinder putzen am Abend vorher ihre Schuhe.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Die Kinder putzen am Abend vorher ihre Schuhe.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Am Ende fotografierten die Eltern ihre Kinder stolz vor der Schule.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Am Ende fotografierten die Eltern ihre Kinder stolz vor der Schule.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Am Ende fotografierten die Eltern ihre Kinder stolz vor der Schule.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Am Ende fotografierten die Eltern ihre Kinder stolz vor der Schule.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Paul findet die Grundschule wirklich schön.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Paul findet die Grundschule wirklich schön.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Paul findet die Grundschule wirklich schön.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Paul findet die Grundschule wirklich schön.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Die neue Schule hatte auch ein großes Gebäude mit vielen Klassenzimmern.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Die neue Schule hatte auch ein großes Gebäude mit vielen Klassenzimmern.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Die neue Schule hatte auch ein großes Gebäude mit vielen Klassenzimmern.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Die neue Schule hatte auch ein großes Gebäude mit vielen Klassenzimmern.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Ein Lehrer erzählte gruselige, aber lustige Geschichten, und alle lachten viel.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Ein Lehrer erzählte gruselige, aber lustige Geschichten, und alle lachten viel.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Ein Lehrer erzählte gruselige, aber lustige Geschichten, und alle lachten viel.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Ein Lehrer erzählte gruselige, aber lustige Geschichten, und alle lachten viel.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Er trägt einen roten Mantel und einen langen, weißen Bart.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Er trägt einen roten Mantel und einen langen, weißen Bart.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Er trägt einen roten Mantel und einen langen, weißen Bart.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Er trägt einen roten Mantel und einen langen, weißen Bart.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Der deutsche Osterhase ist heute übrigens auch in vielen anderen Ländern sehr bekannt.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Der deutsche Osterhase ist heute übrigens auch in vielen anderen Ländern sehr bekannt.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Der deutsche Osterhase ist heute übrigens auch in vielen anderen Ländern sehr bekannt.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Der deutsche Osterhase ist heute übrigens auch in vielen anderen Ländern sehr bekannt.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Ihre Eltern akzeptierten ihre Wahl, auch wenn ihr Vater anfangs enttäuscht war.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Ihre Eltern akzeptierten ihre Wahl, auch wenn ihr Vater anfangs enttäuscht war.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Ihre Eltern akzeptierten ihre Wahl, auch wenn ihr Vater anfangs enttäuscht war.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Ihre Eltern akzeptierten ihre Wahl, auch wenn ihr Vater anfangs enttäuscht war.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Am nächsten Tag sprach er mit seinem Lehrer nach der Stunde.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Am nächsten Tag sprach er mit seinem Lehrer nach der Stunde.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Am nächsten Tag sprach er mit seinem Lehrer nach der Stunde.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Am nächsten Tag sprach er mit seinem Lehrer nach der Stunde.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Seine Familie war am Ende froh, dass er seinen eigenen Weg gefunden hatte.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Seine Familie war am Ende froh, dass er seinen eigenen Weg gefunden hatte.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Seine Familie war am Ende froh, dass er seinen eigenen Weg gefunden hatte.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Seine Familie war am Ende froh, dass er seinen eigenen Weg gefunden hatte.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Sie war selbstbewusster geworden und sprach fast fließend Französisch.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Sie war selbstbewusster geworden und sprach fast fließend Französisch.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Sie war selbstbewusster geworden und sprach fast fließend Französisch.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Sie war selbstbewusster geworden und sprach fast fließend Französisch.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Herr Bauer war erleichtert, aber auch wütend, weil er große Angst gehabt hatte.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Herr Bauer war erleichtert, aber auch wütend, weil er große Angst gehabt hatte.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Herr Bauer war erleichtert, aber auch wütend, weil er große Angst gehabt hatte.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Herr Bauer war erleichtert, aber auch wütend, weil er große Angst gehabt hatte.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Am Rosenmontag standen Tim und Jan stundenlang am Straßenrand und fingen Süßigkeiten, die von den Wagen geworfen wurden.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Am Rosenmontag standen Tim und Jan stundenlang am Straßenrand und fingen Süßigkeiten, die von den Wagen geworfen wurden.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Am Rosenmontag standen Tim und Jan stundenlang am Straßenrand und fingen Süßigkeiten, die von den Wagen geworfen wurden.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Am Rosenmontag standen Tim und Jan stundenlang am Straßenrand und fingen Süßigkeiten, die von den Wagen geworfen wurden.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Andere Eltern nickten zustimmend, allerdings verteidigte die Schulleiterin das dreigliedrige System als bewährt und differenziert.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Andere Eltern nickten zustimmend, allerdings verteidigte die Schulleiterin das dreigliedrige System als bewährt und differenziert.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Andere Eltern nickten zustimmend, allerdings verteidigte die Schulleiterin das dreigliedrige System als bewährt und differenziert.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Andere Eltern nickten zustimmend, allerdings verteidigte die Schulleiterin das dreigliedrige System als bewährt und differenziert.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Sarah verstand die Frustration zwar, konnte die Situation jedoch nicht wirklich nachempfinden.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Sarah verstand die Frustration zwar, konnte die Situation jedoch nicht wirklich nachempfinden.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Sarah verstand die Frustration zwar, konnte die Situation jedoch nicht wirklich nachempfinden.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Sarah verstand die Frustration zwar, konnte die Situation jedoch nicht wirklich nachempfinden.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Herr Brandt, sein Klassenlehrer, brachte ihn behutsam zur Schulsozialarbeiterin, die zum ersten Mal offen mit ihm über Leistungsdruck sprach.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Herr Brandt, sein Klassenlehrer, brachte ihn behutsam zur Schulsozialarbeiterin, die zum ersten Mal offen mit ihm über Leistungsdruck sprach.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Herr Brandt, sein Klassenlehrer, brachte ihn behutsam zur Schulsozialarbeiterin, die zum ersten Mal offen mit ihm über Leistungsdruck sprach.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Herr Brandt, sein Klassenlehrer, brachte ihn behutsam zur Schulsozialarbeiterin, die zum ersten Mal offen mit ihm über Leistungsdruck sprach.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Seine Großmutter konnte diese Entscheidung kaum nachvollziehen: "Früher war eine Lehre etwas für diejenigen, die es nicht aufs Gymnasium geschafft haben."

Auf dem Familienfest wurde die Debatte hitzig, als sein Cousin Robin, der gerade sein Studium der Betriebswirtschaft begonnen hatte, über theoretische Wirtschaftsmodelle referierte.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Seine Großmutter konnte diese Entscheidung kaum nachvollziehen: "Früher war eine Lehre etwas für diejenigen, die es nicht aufs Gymnasium geschafft haben."

Auf dem Familienfest wurde die Debatte hitzig, als sein Cousin Robin, der gerade sein Studium der Betriebswirtschaft begonnen hatte, über theoretische Wirtschaftsmodelle referierte.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Seine Großmutter konnte diese Entscheidung kaum nachvollziehen: "Früher war eine Lehre etwas für diejenigen, die es nicht aufs Gymnasium geschafft haben."

Auf dem Familienfest wurde die Debatte hitzig, als sein Cousin Robin, der gerade sein Studium der Betriebswirtschaft begonnen hatte, über theoretische Wirtschaftsmodelle referierte.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Seine Großmutter konnte diese Entscheidung kaum nachvollziehen: "Früher war eine Lehre etwas für diejenigen, die es nicht aufs Gymnasium geschafft haben."

Auf dem Familienfest wurde die Debatte hitzig, als sein Cousin Robin, der gerade sein Studium der Betriebswirtschaft begonnen hatte, über theoretische Wirtschaftsmodelle referierte.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Helmut Rahn glich noch vor der Halbzeitpause aus, und die Zuschauer wagten vorsichtig zu hoffen.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Helmut Rahn glich noch vor der Halbzeitpause aus, und die Zuschauer wagten vorsichtig zu hoffen.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Helmut Rahn glich noch vor der Halbzeitpause aus, und die Zuschauer wagten vorsichtig zu hoffen.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Helmut Rahn glich noch vor der Halbzeitpause aus, und die Zuschauer wagten vorsichtig zu hoffen.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Zum Erstaunen des Dorfes entschuldigten sich die Brüder anschließend bei jedem Betroffenen persönlich.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Zum Erstaunen des Dorfes entschuldigten sich die Brüder anschließend bei jedem Betroffenen persönlich.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Zum Erstaunen des Dorfes entschuldigten sich die Brüder anschließend bei jedem Betroffenen persönlich.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Zum Erstaunen des Dorfes entschuldigten sich die Brüder anschließend bei jedem Betroffenen persönlich.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Die Schüler seien wacher geworden, sagte man ihr oft, informierter, kritischer gegenüber Autorität, die sie früher unbefragt hingenommen hätten.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Die Schüler seien wacher geworden, sagte man ihr oft, informierter, kritischer gegenüber Autorität, die sie früher unbefragt hingenommen hätten.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Die Schüler seien wacher geworden, sagte man ihr oft, informierter, kritischer gegenüber Autorität, die sie früher unbefragt hingenommen hätten.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Die Schüler seien wacher geworden, sagte man ihr oft, informierter, kritischer gegenüber Autorität, die sie früher unbefragt hingenommen hätten.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Diese Lektionen standen in keinem Zeugnis, wurden von keiner Prüfung abgefragt, und doch waren sie es, die ihm später, im Berufsleben wie in Beziehungen, tatsächlich weitergeholfen hatten.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Diese Lektionen standen in keinem Zeugnis, wurden von keiner Prüfung abgefragt, und doch waren sie es, die ihm später, im Berufsleben wie in Beziehungen, tatsächlich weitergeholfen hatten.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Diese Lektionen standen in keinem Zeugnis, wurden von keiner Prüfung abgefragt, und doch waren sie es, die ihm später, im Berufsleben wie in Beziehungen, tatsächlich weitergeholfen hatten.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Diese Lektionen standen in keinem Zeugnis, wurden von keiner Prüfung abgefragt, und doch waren sie es, die ihm später, im Berufsleben wie in Beziehungen, tatsächlich weitergeholfen hatten.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Der Sommer verging in einer merkwürdigen Schwebe zwischen Scham und Erleichterung.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Der Sommer verging in einer merkwürdigen Schwebe zwischen Scham und Erleichterung.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Der Sommer verging in einer merkwürdigen Schwebe zwischen Scham und Erleichterung.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Der Sommer verging in einer merkwürdigen Schwebe zwischen Scham und Erleichterung.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Brenner wusste, dass eine Annullierung der Prüfung sämtliche Schüler treffen würde, auch jene, die redlich gelernt hatten, während eine bloße Ermahnung des Kollegen die Ungerechtigkeit gegenüber allen anderen Klassen unangetastet ließe, die ihre Prüfungen unter regulären Bedingungen abgelegt hatten.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Brenner wusste, dass eine Annullierung der Prüfung sämtliche Schüler treffen würde, auch jene, die redlich gelernt hatten, während eine bloße Ermahnung des Kollegen die Ungerechtigkeit gegenüber allen anderen Klassen unangetastet ließe, die ihre Prüfungen unter regulären Bedingungen abgelegt hatten.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Brenner wusste, dass eine Annullierung der Prüfung sämtliche Schüler treffen würde, auch jene, die redlich gelernt hatten, während eine bloße Ermahnung des Kollegen die Ungerechtigkeit gegenüber allen anderen Klassen unangetastet ließe, die ihre Prüfungen unter regulären Bedingungen abgelegt hatten.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Brenner wusste, dass eine Annullierung der Prüfung sämtliche Schüler treffen würde, auch jene, die redlich gelernt hatten, während eine bloße Ermahnung des Kollegen die Ungerechtigkeit gegenüber allen anderen Klassen unangetastet ließe, die ihre Prüfungen unter regulären Bedingungen abgelegt hatten.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Was folgte, war ein Nachmittag, an den sich Ewald sein Leben lang zurücksehnte, nicht wegen des Fußballs an sich, sondern wegen des Augenblicks, in dem sein Vater, ein wortkarger Mann, der aus dem Krieg mit einem versteiften Bein zurückgekehrt war, ihn plötzlich hochhob und lachte, ein Lachen, das Ewald zuvor nie gehört hatte.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Was folgte, war ein Nachmittag, an den sich Ewald sein Leben lang zurücksehnte, nicht wegen des Fußballs an sich, sondern wegen des Augenblicks, in dem sein Vater, ein wortkarger Mann, der aus dem Krieg mit einem versteiften Bein zurückgekehrt war, ihn plötzlich hochhob und lachte, ein Lachen, das Ewald zuvor nie gehört hatte.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Was folgte, war ein Nachmittag, an den sich Ewald sein Leben lang zurücksehnte, nicht wegen des Fußballs an sich, sondern wegen des Augenblicks, in dem sein Vater, ein wortkarger Mann, der aus dem Krieg mit einem versteiften Bein zurückgekehrt war, ihn plötzlich hochhob und lachte, ein Lachen, das Ewald zuvor nie gehört hatte.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Was folgte, war ein Nachmittag, an den sich Ewald sein Leben lang zurücksehnte, nicht wegen des Fußballs an sich, sondern wegen des Augenblicks, in dem sein Vater, ein wortkarger Mann, der aus dem Krieg mit einem versteiften Bein zurückgekehrt war, ihn plötzlich hochhob und lachte, ein Lachen, das Ewald zuvor nie gehört hatte.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Im Lehrerzimmer teilte sich das Kollegium in zwei Lager, die einander mit einer Erbitterung begegneten, die dem eigentlichen Anlass kaum angemessen schien.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Im Lehrerzimmer teilte sich das Kollegium in zwei Lager, die einander mit einer Erbitterung begegneten, die dem eigentlichen Anlass kaum angemessen schien.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Im Lehrerzimmer teilte sich das Kollegium in zwei Lager, die einander mit einer Erbitterung begegneten, die dem eigentlichen Anlass kaum angemessen schien.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Im Lehrerzimmer teilte sich das Kollegium in zwei Lager, die einander mit einer Erbitterung begegneten, die dem eigentlichen Anlass kaum angemessen schien.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Ich stecke das Zeugnis ein, nicht um es aufzubewahren, sondern um es endlich, nach vierzig Jahren, bewusst wegzuwerfen.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Ich stecke das Zeugnis ein, nicht um es aufzubewahren, sondern um es endlich, nach vierzig Jahren, bewusst wegzuwerfen.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Ich stecke das Zeugnis ein, nicht um es aufzubewahren, sondern um es endlich, nach vierzig Jahren, bewusst wegzuwerfen.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Ich stecke das Zeugnis ein, nicht um es aufzubewahren, sondern um es endlich, nach vierzig Jahren, bewusst wegzuwerfen.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Heute, da meine eigenen Schüler die Reform von 1996 nur noch als historische Fußnote im Deutschunterricht kennen, frage ich mich manchmal, welche meiner heutigen Gewissheiten ihnen dereinst ebenso fremd und überholt erscheinen werden, und ob auch ich dann, wie meine Großmutter, insgeheim ein Heft führen werde, aus schierer Angst, den Anschluss an eine Sprache zu verlieren, die längst nicht mehr allein mir gehört.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Heute, da meine eigenen Schüler die Reform von 1996 nur noch als historische Fußnote im Deutschunterricht kennen, frage ich mich manchmal, welche meiner heutigen Gewissheiten ihnen dereinst ebenso fremd und überholt erscheinen werden, und ob auch ich dann, wie meine Großmutter, insgeheim ein Heft führen werde, aus schierer Angst, den Anschluss an eine Sprache zu verlieren, die längst nicht mehr allein mir gehört.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Heute, da meine eigenen Schüler die Reform von 1996 nur noch als historische Fußnote im Deutschunterricht kennen, frage ich mich manchmal, welche meiner heutigen Gewissheiten ihnen dereinst ebenso fremd und überholt erscheinen werden, und ob auch ich dann, wie meine Großmutter, insgeheim ein Heft führen werde, aus schierer Angst, den Anschluss an eine Sprache zu verlieren, die längst nicht mehr allein mir gehört.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Heute, da meine eigenen Schüler die Reform von 1996 nur noch als historische Fußnote im Deutschunterricht kennen, frage ich mich manchmal, welche meiner heutigen Gewissheiten ihnen dereinst ebenso fremd und überholt erscheinen werden, und ob auch ich dann, wie meine Großmutter, insgeheim ein Heft führen werde, aus schierer Angst, den Anschluss an eine Sprache zu verlieren, die längst nicht mehr allein mir gehört.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Am Vorabend der Klassenkonferenz, die über die Versetzung von Kevin B.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Am Vorabend der Klassenkonferenz, die über die Versetzung von Kevin B.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Am Vorabend der Klassenkonferenz, die über die Versetzung von Kevin B.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Am Vorabend der Klassenkonferenz, die über die Versetzung von Kevin B.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Ich war neun Jahre alt und begriff nicht, weshalb dieser Kampf so erbittert geführt wurde, ahnte aber, dass mein weiteres Leben von seinem Ausgang abhing.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Ich war neun Jahre alt und begriff nicht, weshalb dieser Kampf so erbittert geführt wurde, ahnte aber, dass mein weiteres Leben von seinem Ausgang abhing.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Ich war neun Jahre alt und begriff nicht, weshalb dieser Kampf so erbittert geführt wurde, ahnte aber, dass mein weiteres Leben von seinem Ausgang abhing.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Ich war neun Jahre alt und begriff nicht, weshalb dieser Kampf so erbittert geführt wurde, ahnte aber, dass mein weiteres Leben von seinem Ausgang abhing.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Bei meinem letzten Besuch erzählte ich ihm davon, vorsichtig, um seinen alten Triumph nicht zu befeuern.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Bei meinem letzten Besuch erzählte ich ihm davon, vorsichtig, um seinen alten Triumph nicht zu befeuern.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Bei meinem letzten Besuch erzählte ich ihm davon, vorsichtig, um seinen alten Triumph nicht zu befeuern.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Bei meinem letzten Besuch erzählte ich ihm davon, vorsichtig, um seinen alten Triumph nicht zu befeuern.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;

do $$
declare
  v_question_id uuid;
  v_story uuid;
begin
  select id into v_story from public.stories where body like '%' || 'Für ihn, der neun Jahre zuvor aus russischer Kriegsgefangenschaft heimgekehrt war, bedeutete dieser Sieg weit mehr als ein Fußballspiel: Er war, wie er sagte, der Moment, in dem Deutschland „wieder wer sein durfte", der symbolische Neubeginn einer Nation, die sich aus den Trümmern eines selbstverschuldeten Untergangs erhob und der Welt zeigen konnte, dass Fleiß und Zusammenhalt stärker seien als jede Niederlage.' || '%' limit 1;
  if v_story is null then
    raise notice 'diktat: phrase introuvable dans aucune histoire: %', 'Für ihn, der neun Jahre zuvor aus russischer Kriegsgefangenschaft heimgekehrt war, bedeutete dieser Sieg weit mehr als ein Fußballspiel: Er war, wie er sagte, der Moment, in dem Deutschland „wieder wer sein durfte", der symbolische Neubeginn einer Nation, die sich aus den Trümmern eines selbstverschuldeten Untergangs erhob und der Welt zeigen konnte, dass Fleiß und Zusammenhalt stärker seien als jede Niederlage.';
  else
    insert into public.questions (story_id, prompt, position, difficulty, category, model_answer)
    values (v_story, 'Écoute la phrase et retranscris-la exactement.', 1, 'normal', 'diktat', 'Für ihn, der neun Jahre zuvor aus russischer Kriegsgefangenschaft heimgekehrt war, bedeutete dieser Sieg weit mehr als ein Fußballspiel: Er war, wie er sagte, der Moment, in dem Deutschland „wieder wer sein durfte", der symbolische Neubeginn einer Nation, die sich aus den Trümmern eines selbstverschuldeten Untergangs erhob und der Welt zeigen konnte, dass Fleiß und Zusammenhalt stärker seien als jede Niederlage.')
    on conflict (story_id, category, position, difficulty) do update set model_answer = excluded.model_answer
    returning id into v_question_id;

    delete from public.choices where question_id = v_question_id;
    insert into public.choices (question_id, label, is_correct, position) values
      (v_question_id, 'Für ihn, der neun Jahre zuvor aus russischer Kriegsgefangenschaft heimgekehrt war, bedeutete dieser Sieg weit mehr als ein Fußballspiel: Er war, wie er sagte, der Moment, in dem Deutschland „wieder wer sein durfte", der symbolische Neubeginn einer Nation, die sich aus den Trümmern eines selbstverschuldeten Untergangs erhob und der Welt zeigen konnte, dass Fleiß und Zusammenhalt stärker seien als jede Niederlage.', true, 1),
      (v_question_id, 'Transcription incorrecte', false, 2);
  end if;
end $$;
