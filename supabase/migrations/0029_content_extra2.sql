-- Contenu supplémentaire (2026-09), suite de 0028 — encore 1 histoire de
-- plus par niveau (A1→C2), même schéma que 0003-0008 / 0028 :
-- - 3 questions de compréhension (position 1-3) x 3 difficultés
-- - 1 question de vocabulaire (position 1) x 3 difficultés
-- - 1 question de conjugaison/grammaire (position 1) x 3 difficultés
-- - 1 tâche de production écrite (position 1, difficulty 'normal', pas de choix, model_answer)

-- 1. Ein Tag im Schwimmbad (A1)
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary) VALUES (
    'A1',
    $t$Ein Tag im Schwimmbad$t$,
    $t$Am Samstag geht Familie Berger ins Schwimmbad. Die Kinder schwimmen im großen Becken. Der Vater liegt in der Sonne und liest ein Buch. Die Mutter kauft Eis für alle. Am Nachmittag spielen die Kinder Ball im Wasser. Am Abend sind alle müde, aber sehr zufrieden.$t$,
    $t$Le samedi, la famille Berger va à la piscine. Les enfants nagent dans le grand bassin. Le père est allongé au soleil et lit un livre. La mère achète des glaces pour tout le monde. L'après-midi, les enfants jouent au ballon dans l'eau. Le soir, tout le monde est fatigué, mais très content.$t$,
    $t${"Am":"le","Samstag":"samedi","geht":"va","Familie":"famille","Berger":"Berger","ins":"à la","Schwimmbad":"piscine","Die":"les","Kinder":"enfants","schwimmen":"nagent","im":"dans le","großen":"grand","Becken":"bassin","Der":"le","Vater":"père","liegt":"est allongé","in":"dans","der":"le","Sonne":"soleil","und":"et","liest":"lit","ein":"un","Buch":"livre","Mutter":"mère","kauft":"achète","Eis":"glace","für":"pour","alle":"tous","Nachmittag":"après-midi","spielen":"jouent","Ball":"ballon","Wasser":"eau","Abend":"soir","sind":"sont","müde":"fatigués","aber":"mais","sehr":"très","zufrieden":"contents"}$t$::jsonb
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wohin geht Familie Berger am Samstag?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Ins Schwimmbad$t$, true, 1),
    (v_q, $t$Ins Kino$t$, false, 2),
    (v_q, $t$In den Park$t$, false, 3),
    (v_q, $t$In die Stadt$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was machen die Kinder im Schwimmbad?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie schwimmen im großen Becken$t$, true, 1),
    (v_q, $t$Sie lesen ein Buch$t$, false, 2),
    (v_q, $t$Sie kaufen Eis$t$, false, 3),
    (v_q, $t$Sie schlafen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was für ein Ausflug ist das für die Familie?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Ein entspannter Tag im Schwimmbad$t$, true, 1),
    (v_q, $t$Eine anstrengende Wanderung$t$, false, 2),
    (v_q, $t$Ein Arbeitstag$t$, false, 3),
    (v_q, $t$Ein Arztbesuch$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was macht der Vater?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er liegt in der Sonne und liest$t$, true, 1),
    (v_q, $t$Er schwimmt im Becken$t$, false, 2),
    (v_q, $t$Er kauft Eis$t$, false, 3),
    (v_q, $t$Er kocht das Mittagessen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wer kauft Eis für alle?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Die Mutter$t$, true, 1),
    (v_q, $t$Der Vater$t$, false, 2),
    (v_q, $t$Die Kinder$t$, false, 3),
    (v_q, $t$Niemand$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was passiert am Nachmittag?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Die Kinder spielen Ball im Wasser$t$, true, 1),
    (v_q, $t$Die Familie geht nach Hause$t$, false, 2),
    (v_q, $t$Der Vater schwimmt auch$t$, false, 3),
    (v_q, $t$Es beginnt zu regnen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie fühlen sich alle am Abend?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Müde, aber zufrieden$t$, true, 1),
    (v_q, $t$Wütend$t$, false, 2),
    (v_q, $t$Gelangweilt$t$, false, 3),
    (v_q, $t$Krank$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was zeigt der Text über den Tag der Familie?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Es war ein schöner, entspannter Tag$t$, true, 1),
    (v_q, $t$Es war ein stressiger Tag$t$, false, 2),
    (v_q, $t$Die Familie hatte Streit$t$, false, 3),
    (v_q, $t$Es hat den ganzen Tag geregnet$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum sind alle am Abend zufrieden, obwohl sie müde sind?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Weil sie einen schönen gemeinsamen Tag hatten$t$, true, 1),
    (v_q, $t$Weil sie viel Geld gewonnen haben$t$, false, 2),
    (v_q, $t$Weil sie früh schlafen gehen$t$, false, 3),
    (v_q, $t$Weil das Schwimmbad kostenlos war$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'das Becken'?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$le bassin$t$, true, 1),
    (v_q, $t$la plage$t$, false, 2),
    (v_q, $t$le lac$t$, false, 3),
    (v_q, $t$la douche$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Im Satz 'Der Vater liegt in der Sonne' bedeutet 'liegen':$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$être allongé$t$, true, 1),
    (v_q, $t$courir$t$, false, 2),
    (v_q, $t$nager$t$, false, 3),
    (v_q, $t$marcher$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'zufrieden' im Satz 'Alle sind müde, aber zufrieden'?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$content$t$, true, 1),
    (v_q, $t$triste$t$, false, 2),
    (v_q, $t$malade$t$, false, 3),
    (v_q, $t$en colère$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie heißt 'schwimmen' in der Form für 'die Kinder'?$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$schwimmen$t$, true, 1),
    (v_q, $t$schwimmt$t$, false, 2),
    (v_q, $t$schwimmst$t$, false, 3),
    (v_q, $t$geschwommen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Ergänze: Die Mutter ___ Eis für alle.$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$kauft$t$, true, 1),
    (v_q, $t$kaufen$t$, false, 2),
    (v_q, $t$kaufst$t$, false, 3),
    (v_q, $t$gekauft$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Form von 'liegen' passt zu 'der Vater'?$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$liegt$t$, true, 1),
    (v_q, $t$liegen$t$, false, 2),
    (v_q, $t$liegst$t$, false, 3),
    (v_q, $t$gelegen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$Sie sind einen Tag im Schwimmbad. Was machen Sie? Schreiben Sie 2-3 einfache Sätze.$t$, 1, 'normal', 'production', $t$Ich gehe ins Schwimmbad. Ich schwimme im Becken. Danach esse ich ein Eis.$t$);

END $block$;

-- 2. Die vergessene Geburtstagskarte (A2)
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary) VALUES (
    'A2',
    $t$Die vergessene Geburtstagskarte$t$,
    $t$Am Montag hat Sarah den Geburtstag ihrer besten Freundin vergessen. Sie hat den ganzen Tag gearbeitet und keine Karte gekauft. Am Abend hat sie es endlich bemerkt und ist schnell zum Geschäft gelaufen. Leider war das Geschäft schon geschlossen. Sarah hat stattdessen eine lustige Nachricht geschrieben und angerufen. Ihre Freundin hat gelacht und die Verspätung sofort verziehen.$t$,
    $t$Le lundi, Sarah a oublié l'anniversaire de sa meilleure amie. Elle a travaillé toute la journée et n'a pas acheté de carte. Le soir, elle s'en est enfin rendu compte et a couru rapidement au magasin. Malheureusement, le magasin était déjà fermé. Sarah a écrit à la place un message amusant et a appelé. Son amie a ri et a immédiatement pardonné le retard.$t$,
    $t${"Am":"le","Montag":"lundi","hat":"a","Sarah":"Sarah","den":"le","Geburtstag":"anniversaire","ihrer":"de sa","besten":"meilleure","Freundin":"amie","vergessen":"oublié","Sie":"elle","ganzen":"toute","Tag":"journée","gearbeitet":"travaillé","und":"et","keine":"aucune","Karte":"carte","gekauft":"acheté","Abend":"soir","es":"cela","endlich":"enfin","bemerkt":"remarqué","ist":"est","schnell":"rapidement","zum":"au","Geschäft":"magasin","gelaufen":"couru","Leider":"malheureusement","war":"était","schon":"déjà","geschlossen":"fermé","stattdessen":"à la place","eine":"un","lustige":"amusant","Nachricht":"message","geschrieben":"écrit","angerufen":"appelé","Ihre":"son","gelacht":"ri","die":"le","Verspätung":"retard","sofort":"immédiatement","verziehen":"pardonné"}$t$::jsonb
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was hat Sarah vergessen?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Den Geburtstag ihrer besten Freundin$t$, true, 1),
    (v_q, $t$Ihren eigenen Geburtstag$t$, false, 2),
    (v_q, $t$Einen Termin bei der Arbeit$t$, false, 3),
    (v_q, $t$Ihr Handy$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum hat Sarah keine Karte gekauft?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie hat den ganzen Tag gearbeitet$t$, true, 1),
    (v_q, $t$Die Geschäfte hatten alle geschlossen$t$, false, 2),
    (v_q, $t$Sie hatte kein Geld$t$, false, 3),
    (v_q, $t$Sie mag keine Karten$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was zeigt der Beginn der Geschichte über Sarahs Tag?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie war so beschäftigt, dass sie den Geburtstag verdrängt hat$t$, true, 1),
    (v_q, $t$Sie hat den Geburtstag absichtlich ignoriert$t$, false, 2),
    (v_q, $t$Sie war im Urlaub$t$, false, 3),
    (v_q, $t$Sie hat frei gehabt$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was hat Sarah am Abend gemacht?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie ist schnell zum Geschäft gelaufen$t$, true, 1),
    (v_q, $t$Sie ist ins Bett gegangen$t$, false, 2),
    (v_q, $t$Sie hat eine Party organisiert$t$, false, 3),
    (v_q, $t$Sie hat ihre Freundin besucht$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum konnte Sarah keine Karte mehr kaufen?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Das Geschäft war schon geschlossen$t$, true, 1),
    (v_q, $t$Es gab keine Karten mehr$t$, false, 2),
    (v_q, $t$Sie hatte ihr Geld vergessen$t$, false, 3),
    (v_q, $t$Das Geschäft war zu weit weg$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was hat Sarah stattdessen gemacht?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Eine lustige Nachricht geschrieben und angerufen$t$, true, 1),
    (v_q, $t$Die ganze Nacht nach einer Karte gesucht$t$, false, 2),
    (v_q, $t$Den Geburtstag komplett ignoriert$t$, false, 3),
    (v_q, $t$Eine neue Freundin gefunden$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie hat die Freundin reagiert?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie hat gelacht und verziehen$t$, true, 1),
    (v_q, $t$Sie war sehr wütend$t$, false, 2),
    (v_q, $t$Sie hat nicht geantwortet$t$, false, 3),
    (v_q, $t$Sie hat die Freundschaft beendet$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was zeigt die Reaktion der Freundin?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Dass ihr die Beziehung wichtiger ist als eine Karte$t$, true, 1),
    (v_q, $t$Dass sie Karten liebt$t$, false, 2),
    (v_q, $t$Dass sie beleidigt war$t$, false, 3),
    (v_q, $t$Dass sie das Geschäft besuchen wollte$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Lehre lässt sich aus der Geschichte ziehen?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Ehrlichkeit und Humor können einen Fehler wettmachen$t$, true, 1),
    (v_q, $t$Man sollte nie Geburtstage vergessen$t$, false, 2),
    (v_q, $t$Anrufe sind wichtiger als Karten$t$, false, 3),
    (v_q, $t$Freundschaften enden leicht wegen Kleinigkeiten$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'vergessen'?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$oublier$t$, true, 1),
    (v_q, $t$se souvenir$t$, false, 2),
    (v_q, $t$acheter$t$, false, 3),
    (v_q, $t$offrir$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Im Satz 'Das Geschäft war schon geschlossen' bedeutet 'geschlossen':$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$fermé$t$, true, 1),
    (v_q, $t$ouvert$t$, false, 2),
    (v_q, $t$rénové$t$, false, 3),
    (v_q, $t$vide$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'verzeihen' im Satz 'Ihre Freundin hat die Verspätung verziehen'?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$pardonner$t$, true, 1),
    (v_q, $t$oublier$t$, false, 2),
    (v_q, $t$punir$t$, false, 3),
    (v_q, $t$ignorer$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welches Hilfsverb braucht 'vergessen' im Perfekt?$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$haben$t$, true, 1),
    (v_q, $t$sein$t$, false, 2),
    (v_q, $t$werden$t$, false, 3),
    (v_q, $t$können$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Ergänze im Perfekt: Sarah ___ eine Nachricht geschrieben.$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$hat$t$, true, 1),
    (v_q, $t$ist$t$, false, 2),
    (v_q, $t$war$t$, false, 3),
    (v_q, $t$hatte$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welcher Satz steht korrekt im Perfekt?$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie ist zum Geschäft gelaufen.$t$, true, 1),
    (v_q, $t$Sie hat zum Geschäft gelaufen.$t$, false, 2),
    (v_q, $t$Sie ist zum Geschäft laufen.$t$, false, 3),
    (v_q, $t$Sie hatte zum Geschäft läuft.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$Erzählen Sie von einer Situation, in der Sie etwas Wichtiges vergessen haben. Schreiben Sie 3-4 Sätze im Perfekt.$t$, 1, 'normal', 'production', $t$Letzten Monat habe ich den Geburtstag meines Bruders vergessen. Ich habe schnell angerufen und mich entschuldigt. Er hat gelacht und mir verziehen. Am Wochenende haben wir es gemeinsam gefeiert.$t$);

END $block$;

-- 3. Der erste Tag im neuen Job (B1)
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary) VALUES (
    'B1',
    $t$Der erste Tag im neuen Job$t$,
    $t$Als Tobias seinen ersten Arbeitstag in der neuen Firma hatte, war er sehr aufgeregt. Er kannte niemanden und wusste nicht genau, wo sein Schreibtisch war. Eine Kollegin bemerkte seine Unsicherheit und stellte ihn dem ganzen Team vor. Während der Mittagspause erklärte sie ihm die wichtigsten Regeln im Büro. Obwohl der erste Tag anstrengend war, fühlte sich Tobias am Abend schon viel sicherer. Nach einer Woche hatte er bereits mehrere neue Freunde gefunden.$t$,
    $t$Lorsque Tobias a eu son premier jour de travail dans la nouvelle entreprise, il était très nerveux. Il ne connaissait personne et ne savait pas exactement où se trouvait son bureau. Une collègue a remarqué son insécurité et l'a présenté à toute l'équipe. Pendant la pause déjeuner, elle lui a expliqué les règles les plus importantes du bureau. Bien que le premier jour ait été fatigant, Tobias se sentait déjà beaucoup plus en confiance le soir. Après une semaine, il avait déjà trouvé plusieurs nouveaux amis.$t$,
    $t${"Als":"lorsque","Tobias":"Tobias","seinen":"son","ersten":"premier","Arbeitstag":"jour de travail","in":"dans","der":"la","neuen":"nouvelle","Firma":"entreprise","hatte":"avait","war":"était","er":"il","sehr":"très","aufgeregt":"nerveux","Er":"il","kannte":"connaissait","niemanden":"personne","und":"et","wusste":"savait","nicht":"pas","genau":"exactement","wo":"où","sein":"son","Schreibtisch":"bureau","Eine":"une","Kollegin":"collègue","bemerkte":"remarquait","seine":"son","Unsicherheit":"insécurité","stellte":"présentait","ihn":"le","dem":"à l'","ganzen":"toute","Team":"équipe","Während":"pendant","Mittagspause":"pause déjeuner","erklärte":"expliquait","ihm":"lui","wichtigsten":"plus importantes","Regeln":"règles","im":"au","Büro":"bureau","Obwohl":"bien que","anstrengend":"fatigant","fühlte":"sentait","sich":"se","Abend":"soir","schon":"déjà","viel":"beaucoup","sicherer":"plus sûr","Nach":"après","einer":"une","Woche":"semaine","bereits":"déjà","mehrere":"plusieurs","neue":"nouveaux","Freunde":"amis","gefunden":"trouvé"}$t$::jsonb
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie fühlte sich Tobias an seinem ersten Arbeitstag?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sehr aufgeregt$t$, true, 1),
    (v_q, $t$Sehr gelangweilt$t$, false, 2),
    (v_q, $t$Völlig ruhig$t$, false, 3),
    (v_q, $t$Wütend$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was wusste Tobias am Anfang nicht?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Wo sein Schreibtisch war$t$, true, 1),
    (v_q, $t$Wie er heißt$t$, false, 2),
    (v_q, $t$Wann die Firma schließt$t$, false, 3),
    (v_q, $t$Wer der Chef ist$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was verdeutlicht der Anfang der Geschichte über neue Jobs im Allgemeinen?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Der erste Tag ist oft mit Unsicherheit verbunden$t$, true, 1),
    (v_q, $t$Neue Jobs sind immer einfach$t$, false, 2),
    (v_q, $t$Man kennt sofort alle Kollegen$t$, false, 3),
    (v_q, $t$Der erste Tag ist meistens frei$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wer stellte Tobias dem Team vor?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Eine Kollegin$t$, true, 1),
    (v_q, $t$Sein Chef$t$, false, 2),
    (v_q, $t$Seine Familie$t$, false, 3),
    (v_q, $t$Niemand$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wann erklärte die Kollegin die wichtigsten Regeln?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Während der Mittagspause$t$, true, 1),
    (v_q, $t$Direkt am Morgen$t$, false, 2),
    (v_q, $t$Nach Feierabend$t$, false, 3),
    (v_q, $t$Am nächsten Tag$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was zeigt das Verhalten der Kollegin über die Arbeitsatmosphäre?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Es herrscht eine hilfsbereite, freundliche Atmosphäre$t$, true, 1),
    (v_q, $t$Die Kollegen ignorieren neue Mitarbeiter$t$, false, 2),
    (v_q, $t$Die Firma hat strenge Regeln gegen Hilfe$t$, false, 3),
    (v_q, $t$Niemand hat Zeit für neue Kollegen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie fühlte sich Tobias am Abend des ersten Tages?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Schon viel sicherer$t$, true, 1),
    (v_q, $t$Noch unsicherer$t$, false, 2),
    (v_q, $t$Krank$t$, false, 3),
    (v_q, $t$Gleichgültig$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was war nach einer Woche passiert?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Tobias hatte bereits neue Freunde gefunden$t$, true, 1),
    (v_q, $t$Tobias hatte gekündigt$t$, false, 2),
    (v_q, $t$Tobias kannte immer noch niemanden$t$, false, 3),
    (v_q, $t$Tobias wurde befördert$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Entwicklung beschreibt die Geschichte insgesamt?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Von anfänglicher Unsicherheit hin zu wachsendem Selbstvertrauen$t$, true, 1),
    (v_q, $t$Von Selbstsicherheit hin zu Verzweiflung$t$, false, 2),
    (v_q, $t$Von Begeisterung hin zu Enttäuschung$t$, false, 3),
    (v_q, $t$Von Erfolg hin zu Misserfolg$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'aufgeregt'?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$nerveux, excité$t$, true, 1),
    (v_q, $t$calme$t$, false, 2),
    (v_q, $t$fatigué$t$, false, 3),
    (v_q, $t$en colère$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Im Satz 'Sie stellte ihn dem Team vor' bedeutet 'vorstellen':$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$présenter$t$, true, 1),
    (v_q, $t$cacher$t$, false, 2),
    (v_q, $t$tester$t$, false, 3),
    (v_q, $t$critiquer$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'die Unsicherheit' im Satz 'Die Kollegin bemerkte seine Unsicherheit'?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$l'insécurité, le manque de confiance$t$, true, 1),
    (v_q, $t$la joie$t$, false, 2),
    (v_q, $t$la colère$t$, false, 3),
    (v_q, $t$la fatigue$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie heißt das Präteritum von 'haben' für 'er' (Tobias)?$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$hatte$t$, true, 1),
    (v_q, $t$hat$t$, false, 2),
    (v_q, $t$habe$t$, false, 3),
    (v_q, $t$gehabt$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Ergänze im Präteritum: Die Kollegin ___ ihm die Regeln.$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$erklärte$t$, true, 1),
    (v_q, $t$erklärt$t$, false, 2),
    (v_q, $t$erklären$t$, false, 3),
    (v_q, $t$hat erklärt$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welches Verb steht im Präteritum für 'fühlen' (reflexiv) in der 3. Person Singular?$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$fühlte sich$t$, true, 1),
    (v_q, $t$fühlt sich$t$, false, 2),
    (v_q, $t$hat sich gefühlt$t$, false, 3),
    (v_q, $t$fühlen sich$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$Beschreiben Sie in 5-7 Sätzen Ihren ersten Tag an einem neuen Ort (Job, Schule, Stadt). Wie haben Sie sich gefühlt?$t$, 1, 'normal', 'production', $t$An meinem ersten Tag in der neuen Schule war ich sehr nervös. Ich kannte niemanden und fand den Weg zum Klassenzimmer nicht sofort. Ein Mitschüler hat mir freundlich geholfen und mich den anderen vorgestellt. In der Pause haben wir zusammen gegessen und uns unterhalten. Am Ende des Tages fühlte ich mich schon viel wohler. Nach ein paar Wochen hatte ich mehrere gute Freunde gefunden.$t$);

END $block$;

-- 4. Die Diskussion über Homeoffice (B2)
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary) VALUES (
    'B2',
    $t$Die Diskussion über Homeoffice$t$,
    $t$In vielen Unternehmen wird derzeit heftig diskutiert, ob Homeoffice dauerhaft beibehalten werden sollte. Befürworter argumentieren, dass flexible Arbeitszeiten die Produktivität steigern und Pendelzeiten einsparen würden. Kritiker hingegen befürchten, dass der persönliche Austausch zwischen Kollegen zunehmend verloren geht. In der Firma von Nina wurde deshalb ein Kompromiss eingeführt: Drei Tage Homeoffice und zwei Tage im Büro pro Woche. Nina selbst schätzt diese Regelung sehr, da sie sowohl Konzentration als auch soziale Kontakte ermöglicht. Andere Kollegen wünschen sich hingegen mehr Flexibilität bei der Wahl der Tage.$t$,
    $t$Dans de nombreuses entreprises, on débat actuellement vivement pour savoir si le télétravail devrait être maintenu durablement. Les partisans font valoir que des horaires de travail flexibles augmenteraient la productivité et permettraient d'économiser du temps de trajet. Les critiques craignent au contraire que les échanges personnels entre collègues ne se perdent de plus en plus. Dans l'entreprise de Nina, un compromis a donc été mis en place : trois jours de télétravail et deux jours au bureau par semaine. Nina elle-même apprécie beaucoup cette règle, car elle permet à la fois de la concentration et des contacts sociaux. D'autres collègues souhaitent en revanche plus de flexibilité dans le choix des jours.$t$,
    $t${"In":"dans","vielen":"beaucoup de","Unternehmen":"entreprises","wird":"est","derzeit":"actuellement","heftig":"vivement","diskutiert":"discuté","ob":"si","Homeoffice":"télétravail","dauerhaft":"durablement","beibehalten":"maintenu","sollte":"devrait","Befürworter":"partisans","argumentieren":"argumentent","dass":"que","flexible":"flexibles","Arbeitszeiten":"horaires de travail","die":"la","Produktivität":"productivité","steigern":"augmentent","und":"et","Pendelzeiten":"temps de trajet","einsparen":"économisent","würden":"conditionnel","Kritiker":"critiques","hingegen":"en revanche","befürchten":"craignent","der":"l'","persönliche":"personnel","Austausch":"échange","zwischen":"entre","Kollegen":"collègues","zunehmend":"de plus en plus","verloren":"perdu","geht":"va","Firma":"entreprise","von":"de","Nina":"Nina","wurde":"a été","deshalb":"donc","ein":"un","Kompromiss":"compromis","eingeführt":"introduit","Drei":"trois","Tage":"jours","zwei":"deux","im":"au","Büro":"bureau","pro":"par","Woche":"semaine","selbst":"elle-même","schätzt":"apprécie","diese":"cette","Regelung":"règle","sehr":"beaucoup","da":"car","sowohl":"à la fois","Konzentration":"concentration","als":"que","auch":"aussi","soziale":"sociaux","Kontakte":"contacts","ermöglicht":"permet","Andere":"d'autres","wünschen":"souhaitent","sich":"se","mehr":"plus","Flexibilität":"flexibilité","bei":"dans","Wahl":"choix"}$t$::jsonb
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Worüber wird in vielen Unternehmen diskutiert?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Ob Homeoffice dauerhaft beibehalten werden sollte$t$, true, 1),
    (v_q, $t$Ob die Gehälter erhöht werden sollten$t$, false, 2),
    (v_q, $t$Ob die Firma umziehen sollte$t$, false, 3),
    (v_q, $t$Ob neue Mitarbeiter eingestellt werden$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was argumentieren die Befürworter von Homeoffice?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Es steigert die Produktivität und spart Pendelzeiten$t$, true, 1),
    (v_q, $t$Es senkt die Produktivität$t$, false, 2),
    (v_q, $t$Es verbessert nur die Teamarbeit$t$, false, 3),
    (v_q, $t$Es ist billiger für Mitarbeiter$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche gegensätzlichen Positionen beschreibt der Text?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Produktivitätsgewinn durch Flexibilität versus Verlust des persönlichen Austauschs$t$, true, 1),
    (v_q, $t$Höhere Gehälter versus weniger Arbeitsstunden$t$, false, 2),
    (v_q, $t$Neue Technologie versus alte Traditionen$t$, false, 3),
    (v_q, $t$Große Firmen versus kleine Firmen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was befürchten die Kritiker von Homeoffice?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Den Verlust des persönlichen Austauschs zwischen Kollegen$t$, true, 1),
    (v_q, $t$Höhere Kosten für die Firma$t$, false, 2),
    (v_q, $t$Weniger Arbeitsplätze$t$, false, 3),
    (v_q, $t$Längere Arbeitszeiten$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welchen Kompromiss hat Ninas Firma eingeführt?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Drei Tage Homeoffice und zwei Tage im Büro$t$, true, 1),
    (v_q, $t$Volles Homeoffice für alle$t$, false, 2),
    (v_q, $t$Kein Homeoffice mehr$t$, false, 3),
    (v_q, $t$Homeoffice nur für Führungskräfte$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was zeigt die Einführung dieses Kompromisses über die Firma?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie versucht, beide Positionen zu berücksichtigen$t$, true, 1),
    (v_q, $t$Sie ignoriert die Meinung der Mitarbeiter$t$, false, 2),
    (v_q, $t$Sie bevorzugt nur die Kritiker$t$, false, 3),
    (v_q, $t$Sie hat keine klare Strategie$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie findet Nina die neue Regelung?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie schätzt sie sehr$t$, true, 1),
    (v_q, $t$Sie findet sie schlecht$t$, false, 2),
    (v_q, $t$Sie ist ihr egal$t$, false, 3),
    (v_q, $t$Sie will nur noch im Büro arbeiten$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was wünschen sich manche Kollegen zusätzlich?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Mehr Flexibilität bei der Wahl der Tage$t$, true, 1),
    (v_q, $t$Weniger Homeoffice-Tage$t$, false, 2),
    (v_q, $t$Höhere Gehälter$t$, false, 3),
    (v_q, $t$Mehr Meetings$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche allgemeine Erkenntnis lässt sich aus Ninas Firma ableiten?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Ein Kompromiss kann unterschiedliche Bedürfnisse teilweise vereinen$t$, true, 1),
    (v_q, $t$Homeoffice funktioniert nie in der Praxis$t$, false, 2),
    (v_q, $t$Nur volle Büropräsenz ist sinnvoll$t$, false, 3),
    (v_q, $t$Mitarbeiterwünsche spielen keine Rolle$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'die Pendelzeit'?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$le trajet domicile-travail$t$, true, 1),
    (v_q, $t$le salaire$t$, false, 2),
    (v_q, $t$le contrat$t$, false, 3),
    (v_q, $t$la pause$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Im Satz 'Kritiker befürchten einen Verlust' bedeutet 'befürchten':$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$craindre$t$, true, 1),
    (v_q, $t$espérer$t$, false, 2),
    (v_q, $t$ignorer$t$, false, 3),
    (v_q, $t$constater$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'der Kompromiss' im Kontext des Textes?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$un compromis, un accord intermédiaire$t$, true, 1),
    (v_q, $t$une interdiction totale$t$, false, 2),
    (v_q, $t$une victoire complète$t$, false, 3),
    (v_q, $t$un conflit ouvert$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Form ist der Konjunktiv II von 'werden' (sie, Plural)?$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$würden$t$, true, 1),
    (v_q, $t$werden$t$, false, 2),
    (v_q, $t$wurden$t$, false, 3),
    (v_q, $t$geworden$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Ergänze im Konjunktiv II: Flexible Arbeitszeiten ___ die Produktivität steigern.$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$würden$t$, true, 1),
    (v_q, $t$werden$t$, false, 2),
    (v_q, $t$wurden$t$, false, 3),
    (v_q, $t$sind$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welcher Satz drückt korrekt eine hypothetische Folge im Konjunktiv II aus?$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Das würde die Produktivität steigern.$t$, true, 1),
    (v_q, $t$Das steigert die Produktivität.$t$, false, 2),
    (v_q, $t$Das hat die Produktivität gesteigert.$t$, false, 3),
    (v_q, $t$Das wird die Produktivität steigern.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$Schreiben Sie einen argumentativen Absatz (6–9 Sätze): Sollten Unternehmen ihren Mitarbeitern erlauben, dauerhaft im Homeoffice zu arbeiten? Begründen Sie Ihre Meinung mit Argumenten und einem Beispiel.$t$, 1, 'normal', 'production', $t$Meiner Meinung nach sollten Unternehmen ihren Mitarbeitern grundsätzlich die Möglichkeit geben, im Homeoffice zu arbeiten, allerdings nicht ausschließlich. Wie im Beispiel von Nina gezeigt wird, kann ein Mix aus Homeoffice und Bürotagen sowohl Konzentration als auch persönlichen Austausch ermöglichen. Vollständiges Homeoffice birgt hingegen die Gefahr, dass wichtige spontane Gespräche zwischen Kollegen verloren gehen. Andererseits zwingt eine reine Büropflicht viele Mitarbeiter zu langen, unproduktiven Pendelzeiten. Ein flexibles Modell, bei dem Mitarbeiter selbst mitbestimmen können, scheint mir daher die beste Lösung zu sein. Natürlich müssen Unternehmen dabei auch auf eine faire Verteilung der Bürotage achten. Insgesamt bin ich überzeugt, dass Flexibilität langfristig sowohl der Zufriedenheit als auch der Produktivität der Mitarbeiter zugutekommt.$t$);

END $block$;

-- 5. Die Last der Erwartungen (C1)
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary) VALUES (
    'C1',
    $t$Die Last der Erwartungen$t$,
    $t$Seit ihrer Kindheit wird Elena von ihrer Familie als außergewöhnlich begabt beschrieben, was ihr einerseits Selbstvertrauen verlieh, andererseits jedoch einen enormen Erwartungsdruck erzeugte. Jede Entscheidung, die sie trifft, scheint sie unbewusst daran zu messen, ob sie diesem Bild gerecht wird. Als sie sich schließlich für einen Beruf entscheidet, der nicht den Vorstellungen ihrer Eltern entspricht, befürchtet sie zunächst deren Enttäuschung. Ein Gespräch mit ihrer Großmutter offenbart ihr jedoch, dass auch diese einst unter ähnlichem Druck gelitten habe. Diese Erkenntnis erlaubt es Elena, ihre eigene Definition von Erfolg zu entwickeln, anstatt sich fremden Erwartungen unterzuordnen. Am Ende begreift sie, dass wahre Selbstverwirklichung erst jenseits fremder Maßstäbe beginnt.$t$,
    $t$Depuis son enfance, Elena est décrite par sa famille comme exceptionnellement douée, ce qui lui a donné, d'une part, de la confiance en soi, mais a créé, d'autre part, une énorme pression d'attentes. Chaque décision qu'elle prend semble être mesurée inconsciemment à l'aune de savoir si elle est à la hauteur de cette image. Lorsqu'elle se décide finalement pour une profession qui ne correspond pas aux attentes de ses parents, elle craint d'abord leur déception. Une conversation avec sa grand-mère lui révèle cependant que celle-ci aussi avait autrefois souffert d'une pression similaire. Cette prise de conscience permet à Elena de développer sa propre définition de la réussite, au lieu de se soumettre à des attentes étrangères. À la fin, elle comprend que la véritable réalisation de soi ne commence qu'au-delà des critères d'autrui.$t$,
    $t${"Seit":"depuis","ihrer":"son","Kindheit":"enfance","wird":"est","Elena":"Elena","von":"par","Familie":"famille","als":"comme","außergewöhnlich":"exceptionnellement","begabt":"douée","beschrieben":"décrite","was":"ce qui","ihr":"lui","einerseits":"d'une part","Selbstvertrauen":"confiance en soi","verlieh":"donnait","andererseits":"d'autre part","jedoch":"cependant","einen":"un","enormen":"énorme","Erwartungsdruck":"pression d'attentes","erzeugte":"créait","Jede":"chaque","Entscheidung":"décision","die":"que","sie":"elle","trifft":"prend","scheint":"semble","unbewusst":"inconsciemment","daran":"à cela","messen":"mesurer","ob":"si","diesem":"cette","Bild":"image","gerecht":"à la hauteur","Als":"lorsque","sich":"se","schließlich":"finalement","für":"pour","einen":"une","Beruf":"profession","entscheidet":"décide","der":"qui","nicht":"pas","den":"les","Vorstellungen":"attentes","Eltern":"parents","entspricht":"correspond","befürchtet":"craint","zunächst":"d'abord","deren":"leur","Enttäuschung":"déception","Ein":"une","Gespräch":"conversation","mit":"avec","Großmutter":"grand-mère","offenbart":"révèle","dass":"que","auch":"aussi","diese":"celle-ci","einst":"autrefois","unter":"sous","ähnlichem":"similaire","Druck":"pression","gelitten":"souffert","habe":"ait","Diese":"cette","Erkenntnis":"prise de conscience","erlaubt":"permet","eigene":"propre","Definition":"définition","Erfolg":"réussite","entwickeln":"développer","anstatt":"au lieu de","fremden":"étrangères","Erwartungen":"attentes","unterzuordnen":"se soumettre","Am":"à la","Ende":"fin","begreift":"comprend","wahre":"véritable","Selbstverwirklichung":"réalisation de soi","erst":"seulement","jenseits":"au-delà de","fremder":"d'autrui","Maßstäbe":"critères","beginnt":"commence"}$t$::jsonb
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie wurde Elena seit ihrer Kindheit beschrieben?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Als außergewöhnlich begabt$t$, true, 1),
    (v_q, $t$Als schwierig$t$, false, 2),
    (v_q, $t$Als schüchtern$t$, false, 3),
    (v_q, $t$Als faul$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was hat diese Beschreibung bei Elena bewirkt?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Selbstvertrauen, aber auch enormen Erwartungsdruck$t$, true, 1),
    (v_q, $t$Nur Selbstvertrauen ohne Nachteile$t$, false, 2),
    (v_q, $t$Völlige Gleichgültigkeit$t$, false, 3),
    (v_q, $t$Nur negative Gefühle$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welches Grundproblem beschreibt der einleitende Teil des Textes?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Die Ambivalenz zwischen positivem Selbstbild und belastendem Erwartungsdruck$t$, true, 1),
    (v_q, $t$Den Konflikt zwischen zwei Geschwistern$t$, false, 2),
    (v_q, $t$Die finanzielle Situation der Familie$t$, false, 3),
    (v_q, $t$Die schulischen Schwierigkeiten Elenas$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wovor hatte Elena zunächst Angst, als sie ihren Berufswunsch äußerte?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Vor der Enttäuschung ihrer Eltern$t$, true, 1),
    (v_q, $t$Vor finanziellen Problemen$t$, false, 2),
    (v_q, $t$Vor dem Umzug in eine andere Stadt$t$, false, 3),
    (v_q, $t$Vor der Reaktion ihrer Freunde$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was offenbart die Großmutter Elena?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Dass auch sie einst unter ähnlichem Druck gelitten hat$t$, true, 1),
    (v_q, $t$Dass sie mit dem Berufswunsch nicht einverstanden ist$t$, false, 2),
    (v_q, $t$Dass die Eltern von dem Gespräch wissen$t$, false, 3),
    (v_q, $t$Dass Elena die Erwartungen ignorieren soll$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Funktion hat das Gespräch mit der Großmutter in der Erzählung?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Es relativiert Elenas Druck, indem es eine generationenübergreifende Erfahrung zeigt$t$, true, 1),
    (v_q, $t$Es löst einen Streit in der Familie aus$t$, false, 2),
    (v_q, $t$Es überzeugt Elena, ihren Berufswunsch aufzugeben$t$, false, 3),
    (v_q, $t$Es hat keine erkennbare Wirkung auf Elena$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was entwickelt Elena am Ende?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Ihre eigene Definition von Erfolg$t$, true, 1),
    (v_q, $t$Eine neue Berufsidee$t$, false, 2),
    (v_q, $t$Ein Interesse an Familiengeschichte$t$, false, 3),
    (v_q, $t$Angst vor der Zukunft$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was begreift Elena letztlich über Selbstverwirklichung?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Dass sie erst jenseits fremder Maßstäbe beginnt$t$, true, 1),
    (v_q, $t$Dass sie unmöglich ist$t$, false, 2),
    (v_q, $t$Dass sie nur durch Erfolg im Beruf der Eltern erreichbar ist$t$, false, 3),
    (v_q, $t$Dass sie von der Meinung anderer abhängt$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie lässt sich die Gesamtentwicklung Elenas im Text charakterisieren?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Vom fremdbestimmten Selbstbild zur selbstbestimmten Identität$t$, true, 1),
    (v_q, $t$Vom Erfolg zum völligen Scheitern$t$, false, 2),
    (v_q, $t$Von Unabhängigkeit zu wachsender Abhängigkeit$t$, false, 3),
    (v_q, $t$Von Gleichgültigkeit zu Verzweiflung$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'begabt'?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$doué$t$, true, 1),
    (v_q, $t$paresseux$t$, false, 2),
    (v_q, $t$timide$t$, false, 3),
    (v_q, $t$fatigué$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Im Satz 'Sie erzeugte einen enormen Erwartungsdruck' bedeutet 'erzeugen':$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$créer, engendrer$t$, true, 1),
    (v_q, $t$détruire$t$, false, 2),
    (v_q, $t$ignorer$t$, false, 3),
    (v_q, $t$réduire$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'sich unterordnen' im Satz 'anstatt sich fremden Erwartungen unterzuordnen'?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$se soumettre$t$, true, 1),
    (v_q, $t$se révolter$t$, false, 2),
    (v_q, $t$s'amuser$t$, false, 3),
    (v_q, $t$s'inspirer$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Form ist der Konjunktiv I von 'haben' (sie, Einzahl)?$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$habe$t$, true, 1),
    (v_q, $t$hat$t$, false, 2),
    (v_q, $t$hatte$t$, false, 3),
    (v_q, $t$hätte$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Ergänze in der indirekten Rede: Die Großmutter erzählte, sie ___ früher ähnlichen Druck gespürt.$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$habe$t$, true, 1),
    (v_q, $t$hat$t$, false, 2),
    (v_q, $t$hatte$t$, false, 3),
    (v_q, $t$hätte$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welcher Satz gibt eine Aussage korrekt in indirekter Rede (Konjunktiv I der Vergangenheit) wieder?$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie sagte, sie habe darunter gelitten.$t$, true, 1),
    (v_q, $t$Sie sagte, sie hat darunter gelitten.$t$, false, 2),
    (v_q, $t$Sie sagte, sie litt darunter.$t$, false, 3),
    (v_q, $t$Sie sagte, dass sie darunter leidet.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$En vous appuyant sur l'histoire d'Elena (« Die Last der Erwartungen »), rédigez en allemand un paragraphe argumentatif de 8 à 12 phrases dans lequel vous discutez : dans quelle mesure les attentes familiales peuvent-elles favoriser ou au contraire entraver l'épanouissement personnel ? Utilisez au moins une fois le discours indirect (Konjunktiv I).$t$, 1, 'normal', 'production', $t$In der Geschichte 'Die Last der Erwartungen' zeigt sich, wie familiäre Erwartungen sowohl fördernd als auch belastend wirken können. Meiner Ansicht nach ist ein gewisses Maß an Erwartung durchaus hilfreich, da es Kindern wie Elena zunächst Selbstvertrauen vermittelt. Problematisch wird es jedoch, wenn diese Erwartungen zu starr werden und keinen Raum für eigene Entscheidungen lassen. Im Text wird deutlich, dass Elena jede ihrer Entscheidungen unbewusst an einem fremden Bild misst, was sie langfristig belastet. Besonders aufschlussreich ist das Gespräch mit der Großmutter, die ihr erzählte, sie habe früher ebenfalls unter ähnlichem Druck gelitten. Diese Enthüllung relativiert Elenas Situation, ohne sie zu bagatellisieren. Daraus lässt sich schließen, dass Erwartungsdruck oft über Generationen weitergegeben wird, ohne dass es den Beteiligten bewusst ist. Meiner Meinung nach sollten Familien deshalb aktiv versuchen, Erwartungen von echten Bedürfnissen der Kinder zu unterscheiden. Nur wenn Kinder auch scheitern und eigene Wege einschlagen dürfen, kann sich eine gesunde Identität entwickeln. Letztlich zeigt die Geschichte von Elena, dass wahre Selbstverwirklichung erst jenseits fremder Maßstäbe möglich wird.$t$);

END $block$;

-- 6. Das Paradox der Wahl (C2)
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary) VALUES (
    'C2',
    $t$Das Paradox der Wahl$t$,
    $t$In einer Gesellschaft, die unbegrenzte Möglichkeiten verspricht, wird die Freiheit der Wahl paradoxerweise zunehmend als Bürde empfunden. Je mehr Optionen einem offenstehen, desto schwerer fällt es, sich für eine davon zu entscheiden, ohne im Nachhinein von Zweifeln geplagt zu werden. Diese Beobachtung drängt sich dem Erzähler auf, als er vor der Entscheidung steht, zwischen mehreren gleichermaßen attraktiven Lebensentwürfen zu wählen. Anstatt Erleichterung zu empfinden, gerät er in eine Lähmung, die jede Entscheidung zunehmend hinauszögert. Erst als ihm bewusst wird, dass auch das Nichtentscheiden eine Entscheidung darstellt, gelingt es ihm, sich von diesem Gedankenkarussell zu befreien. Am Ende erkennt er, dass Zufriedenheit weniger von der Optimalität einer Wahl abhängt als vielmehr von der Bereitschaft, mit ihren Konsequenzen zu leben.$t$,
    $t$Dans une société qui promet des possibilités illimitées, la liberté de choix est paradoxalement de plus en plus vécue comme un fardeau. Plus les options qui s'offrent à quelqu'un sont nombreuses, plus il devient difficile de se décider pour l'une d'entre elles sans être ensuite tourmenté par des doutes. Cette observation s'impose au narrateur lorsqu'il se retrouve face à la décision de choisir entre plusieurs projets de vie tout aussi séduisants. Au lieu de ressentir un soulagement, il tombe dans une paralysie qui repousse sans cesse toute décision. Ce n'est que lorsqu'il prend conscience que ne pas décider constitue également une décision qu'il parvient à se libérer de ce carrousel de pensées. À la fin, il comprend que la satisfaction dépend moins du caractère optimal d'un choix que de la disposition à vivre avec ses conséquences.$t$,
    $t${"In":"dans","einer":"une","Gesellschaft":"société","die":"qui","unbegrenzte":"illimitées","Möglichkeiten":"possibilités","verspricht":"promet","wird":"est","Freiheit":"liberté","Wahl":"choix","paradoxerweise":"paradoxalement","zunehmend":"de plus en plus","als":"comme","Bürde":"fardeau","empfunden":"ressenti","Je":"plus","mehr":"plus","Optionen":"options","einem":"à quelqu'un","offenstehen":"s'offrent","desto":"d'autant plus","schwerer":"difficile","fällt":"est","es":"il","sich":"se","für":"pour","eine":"une","davon":"de cela","entscheiden":"décider","ohne":"sans","im":"dans le","Nachhinein":"après coup","von":"par","Zweifeln":"doutes","geplagt":"tourmenté","Diese":"cette","Beobachtung":"observation","drängt":"s'impose","dem":"au","Erzähler":"narrateur","als":"lorsque","er":"il","vor":"devant","Entscheidung":"décision","steht":"se tient","zwischen":"entre","mehreren":"plusieurs","gleichermaßen":"également","attraktiven":"attrayants","Lebensentwürfen":"projets de vie","wählen":"choisir","Anstatt":"au lieu de","Erleichterung":"soulagement","empfinden":"ressentir","gerät":"tombe","in":"dans","Lähmung":"paralysie","jede":"chaque","hinauszögert":"repousse","Erst":"ce n'est que","ihm":"lui","bewusst":"conscient","auch":"aussi","Nichtentscheiden":"non-décision","darstellt":"représente","gelingt":"réussit","diesem":"ce","Gedankenkarussell":"carrousel de pensées","befreien":"libérer","Am":"à la","Ende":"fin","erkennt":"reconnaît","Zufriedenheit":"satisfaction","weniger":"moins","Optimalität":"caractère optimal","abhängt":"dépend","vielmehr":"plutôt","Bereitschaft":"disposition","Konsequenzen":"conséquences","leben":"vivre"}$t$::jsonb
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was wird laut Text in einer Gesellschaft unbegrenzter Möglichkeiten paradoxerweise zur Bürde?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Die Freiheit der Wahl$t$, true, 1),
    (v_q, $t$Der Mangel an Optionen$t$, false, 2),
    (v_q, $t$Die Armut$t$, false, 3),
    (v_q, $t$Die Arbeitslosigkeit$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was passiert laut Text, je mehr Optionen zur Verfügung stehen?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Die Entscheidung fällt schwerer$t$, true, 1),
    (v_q, $t$Die Entscheidung fällt leichter$t$, false, 2),
    (v_q, $t$Man entscheidet sich schneller$t$, false, 3),
    (v_q, $t$Man braucht keine Entscheidung mehr$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welches Paradox beschreibt der Text im Kern?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Mehr Freiheit kann zu mehr Belastung statt zu mehr Zufriedenheit führen$t$, true, 1),
    (v_q, $t$Weniger Freiheit führt automatisch zu mehr Glück$t$, false, 2),
    (v_q, $t$Wahlfreiheit existiert in Wirklichkeit nicht$t$, false, 3),
    (v_q, $t$Entscheidungen sind grundsätzlich bedeutungslos$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Vor welcher Entscheidung steht der Erzähler?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Zwischen mehreren attraktiven Lebensentwürfen zu wählen$t$, true, 1),
    (v_q, $t$Zwischen zwei Wohnungen zu wählen$t$, false, 2),
    (v_q, $t$Zwischen zwei Restaurants zu wählen$t$, false, 3),
    (v_q, $t$Zwischen zwei Urlaubszielen zu wählen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was empfindet der Erzähler statt Erleichterung?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Eine Lähmung, die Entscheidungen hinauszögert$t$, true, 1),
    (v_q, $t$Große Freude$t$, false, 2),
    (v_q, $t$Völlige Gleichgültigkeit$t$, false, 3),
    (v_q, $t$Sofortige Klarheit$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wodurch gelingt es dem Erzähler, sich aus der Lähmung zu befreien?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Durch die Erkenntnis, dass Nichtentscheiden auch eine Entscheidung ist$t$, true, 1),
    (v_q, $t$Durch den Rat eines Freundes$t$, false, 2),
    (v_q, $t$Durch einen Zufall$t$, false, 3),
    (v_q, $t$Durch das Werfen einer Münze$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wovon hängt laut Text Zufriedenheit letztlich ab?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Von der Bereitschaft, mit den Konsequenzen einer Wahl zu leben$t$, true, 1),
    (v_q, $t$Von der Optimalität der Wahl$t$, false, 2),
    (v_q, $t$Von der Anzahl der Optionen$t$, false, 3),
    (v_q, $t$Vom Zufall$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche abschließende Einsicht formuliert der Erzähler?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Zufriedenheit ist weniger von perfekten Entscheidungen abhängig als von der Akzeptanz ihrer Folgen$t$, true, 1),
    (v_q, $t$Man sollte nie Entscheidungen treffen$t$, false, 2),
    (v_q, $t$Perfekte Entscheidungen existieren immer$t$, false, 3),
    (v_q, $t$Nur schnelle Entscheidungen sind gute Entscheidungen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche philosophische Haltung vertritt der Text implizit?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Eine pragmatische Akzeptanz von Unsicherheit als Teil menschlicher Entscheidungsfindung$t$, true, 1),
    (v_q, $t$Einen strikten Determinismus ohne freien Willen$t$, false, 2),
    (v_q, $t$Eine Ablehnung jeglicher Wahlfreiheit$t$, false, 3),
    (v_q, $t$Eine Forderung nach staatlich vorgegebenen Lebenswegen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'die Bürde'?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$le fardeau$t$, true, 1),
    (v_q, $t$le cadeau$t$, false, 2),
    (v_q, $t$la solution$t$, false, 3),
    (v_q, $t$le plaisir$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Im Satz 'Er gerät in eine Lähmung' bedeutet 'die Lähmung':$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$la paralysie$t$, true, 1),
    (v_q, $t$l'excitation$t$, false, 2),
    (v_q, $t$la joie$t$, false, 3),
    (v_q, $t$la colère$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'hinauszögern' im Satz 'die jede Entscheidung zunehmend hinauszögert'?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$repousser, retarder$t$, true, 1),
    (v_q, $t$accélérer$t$, false, 2),
    (v_q, $t$faciliter$t$, false, 3),
    (v_q, $t$oublier$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Struktur drückt im Text eine proportionale Steigerung aus?$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$je... desto...$t$, true, 1),
    (v_q, $t$sowohl... als auch...$t$, false, 2),
    (v_q, $t$weder... noch...$t$, false, 3),
    (v_q, $t$entweder... oder...$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Ergänze: Je mehr Optionen offenstehen, ___ schwerer fällt die Entscheidung.$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$desto$t$, true, 1),
    (v_q, $t$dass$t$, false, 2),
    (v_q, $t$ob$t$, false, 3),
    (v_q, $t$weil$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welcher Satz verwendet 'je...desto' grammatisch korrekt?$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Je größer die Auswahl, desto größer die Unsicherheit.$t$, true, 1),
    (v_q, $t$Je größer die Auswahl, desto die Unsicherheit größer.$t$, false, 2),
    (v_q, $t$Desto größer die Auswahl, je größer die Unsicherheit.$t$, false, 3),
    (v_q, $t$Je größer die Auswahl, größer wird desto die Unsicherheit.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$En vous appuyant sur le texte « Das Paradox der Wahl », rédigez en allemand un paragraphe de 8 à 12 phrases sur le thème suivant : la multiplication des choix dans nos sociétés contemporaines rend-elle réellement les individus plus libres et plus heureux ? Employez au moins une structure « je...desto » et une nominalisation.$t$, 1, 'normal', 'production', $t$Der Text 'Das Paradox der Wahl' stellt die These auf, dass eine wachsende Anzahl an Optionen paradoxerweise nicht zu mehr, sondern zu weniger Zufriedenheit führen kann. Meiner Ansicht nach trifft diese Beobachtung auf viele Bereiche des modernen Lebens zu, von der Berufswahl bis zum alltäglichen Konsum. Je größer die Auswahl an Möglichkeiten wird, desto stärker wächst die Angst, sich für die falsche Option zu entscheiden. Diese ständige Vergleichslogik verhindert oft, dass Menschen ihre tatsächlich getroffene Wahl wertschätzen können. Die im Text beschriebene Lähmung des Erzählers lässt sich daher als typische Folge einer Überforderung durch zu viele Alternativen verstehen. Andererseits sollte man die Wahlfreiheit selbst nicht grundsätzlich infrage stellen, da sie historisch gesehen eine wichtige Errungenschaft darstellt. Entscheidend scheint mir vielmehr die Fähigkeit, Entscheidungen bewusst zu treffen und anschließend nicht ständig zu hinterfragen. Die vom Erzähler gewonnene Einsicht, dass Zufriedenheit von der Akzeptanz der eigenen Wahl abhängt, halte ich für einen zentralen Gedanken. Insgesamt macht wahre Freiheit sich also weniger an der Anzahl der Optionen fest als an der inneren Fähigkeit, mit einer getroffenen Entscheidung in Frieden zu leben.$t$);

END $block$;
