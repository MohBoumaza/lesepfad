-- Contenu réel — niveau A2 (25 histoires). Chaque histoire a :
-- - 3 questions de compréhension (position 1-3) x 3 difficultés
-- - 1 question de vocabulaire (position 1) x 3 difficultés
-- - 1 question de conjugaison/grammaire (position 1) x 3 difficultés
-- - 1 tâche de production écrite (position 1, difficulty 'normal', pas de choix, model_answer)

-- 1. Die neue Wohnung
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary) VALUES (
    'A2',
    $t$Die neue Wohnung$t$,
    $t$Markus ist letzte Woche in eine neue Wohnung gezogen. Die Wohnung liegt im dritten Stock und hat zwei Zimmer, eine Küche und einen kleinen Balkon. Am Anfang war alles chaotisch: überall standen Kartons. Markus hat drei Tage gebraucht, um alles auszupacken. Seine Freunde haben ihm geholfen, die Möbel zu tragen. Der Kühlschrank war besonders schwer. Nach der Arbeit haben sie gemeinsam Pizza gegessen und über die neue Nachbarschaft gesprochen. Ein Nachbar hat sich vorgestellt und Markus einen Stadtplan geschenkt. Jetzt fühlt sich Markus schon fast zu Hause. Nur die Küche muss er noch streichen, weil die Wände sehr alt aussehen. Nächstes Wochenende will er das machen.$t$,
    $t$Markus a emménagé la semaine dernière dans un nouvel appartement. L'appartement se trouve au troisième étage et a deux pièces, une cuisine et un petit balcon. Au début, tout était chaotique : des cartons se trouvaient partout. Markus a mis trois jours pour tout déballer. Ses amis l'ont aidé à porter les meubles. Le réfrigérateur était particulièrement lourd. Après le travail, ils ont mangé une pizza ensemble et parlé du nouveau voisinage. Un voisin s'est présenté et a offert à Markus un plan de la ville. Maintenant, Markus se sent déjà presque chez lui. Il ne lui reste plus qu'à repeindre la cuisine, car les murs semblent très vieux. Il veut le faire le week-end prochain.$t$,
    $t${"Markus":"Markus","ist":"est","letzte":"dernière","Woche":"semaine","in":"dans","eine":"une","neue":"nouvel","Wohnung":"appartement","gezogen":"déménagé","Die":"L'","liegt":"se trouve","im":"au","dritten":"troisième","Stock":"étage","und":"et","hat":"a","zwei":"deux","Zimmer":"pièces","Küche":"cuisine","einen":"un","kleinen":"petit","Balkon":"balcon","Am":"au","Anfang":"début","war":"était","alles":"tout","chaotisch":"chaotique","überall":"partout","standen":"se trouvaient","Kartons":"cartons","drei":"trois","Tage":"jours","gebraucht":"eu besoin","um":"pour","auszupacken":"déballer","Seine":"Ses","Freunde":"amis","haben":"ont","ihm":"lui","geholfen":"aidé","die":"les","Möbel":"meubles","zu":"à","tragen":"porter","Der":"Le","Kühlschrank":"réfrigérateur","besonders":"particulièrement","schwer":"lourd","Nach":"après","der":"du","Arbeit":"travail","sie":"ils","gemeinsam":"ensemble","Pizza":"pizza","gegessen":"mangé","über":"de","Nachbarschaft":"voisinage","gesprochen":"parlé","Ein":"Un","Nachbar":"voisin","sich":"se","vorgestellt":"présenté","Stadtplan":"plan de la ville","geschenkt":"offert","Jetzt":"maintenant","fühlt":"sent","schon":"déjà","fast":"presque","Hause":"maison","Nur":"seulement","muss":"doit","er":"il","noch":"encore","streichen":"repeindre","weil":"parce que","Wände":"murs","sehr":"très","alt":"vieux","aussehen":"sembler","Nächstes":"prochain","Wochenende":"week-end","will":"veut","das":"cela","machen":"faire"}$t$::jsonb
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wo liegt die Wohnung von Markus?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Im Erdgeschoss$t$, false, 1),
    (v_q, $t$Im dritten Stock$t$, true, 2),
    (v_q, $t$Im Keller$t$, false, 3),
    (v_q, $t$Auf dem Dach$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$In welchem Stock liegt die neue Wohnung?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Im ersten Stock$t$, false, 1),
    (v_q, $t$Im zweiten Stock$t$, false, 2),
    (v_q, $t$Im dritten Stock$t$, true, 3),
    (v_q, $t$Im Erdgeschoss$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Markus musste jeden Tag mehrere Treppen hochgehen, um nach Hause zu kommen. Warum?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Weil die Wohnung im dritten Stock liegt$t$, true, 1),
    (v_q, $t$Weil der Aufzug kaputt war$t$, false, 2),
    (v_q, $t$Weil er im Erdgeschoss wohnt$t$, false, 3),
    (v_q, $t$Weil das Haus keine Treppen hat$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wer hat Markus geholfen, die Möbel zu tragen?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Seine Nachbarn$t$, false, 1),
    (v_q, $t$Seine Freunde$t$, true, 2),
    (v_q, $t$Seine Kollegen$t$, false, 3),
    (v_q, $t$Niemand$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wer hat Markus beim Umzug geholfen?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Seine Familie$t$, false, 1),
    (v_q, $t$Seine Freunde$t$, true, 2),
    (v_q, $t$Ein Umzugsunternehmen$t$, false, 3),
    (v_q, $t$Niemand$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Nachdem die Möbel getragen waren, hat Markus mit seinen Helfern zusammen Pizza gegessen. Wer waren diese Helfer?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Seine Freunde$t$, true, 1),
    (v_q, $t$Seine Familie$t$, false, 2),
    (v_q, $t$Die neuen Nachbarn$t$, false, 3),
    (v_q, $t$Ein Umzugsunternehmen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was muss Markus noch in der Küche machen?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Neue Möbel kaufen$t$, false, 1),
    (v_q, $t$Die Wände streichen$t$, true, 2),
    (v_q, $t$Den Boden reinigen$t$, false, 3),
    (v_q, $t$Ein Fenster einbauen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was will Markus nächstes Wochenende machen?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Neue Möbel kaufen$t$, false, 1),
    (v_q, $t$Die Küche streichen$t$, true, 2),
    (v_q, $t$Eine Party organisieren$t$, false, 3),
    (v_q, $t$Wieder umziehen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum will Markus die Küche noch streichen?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Weil die Wände alt aussehen$t$, true, 1),
    (v_q, $t$Weil ihm die Farbe nicht gefällt$t$, false, 2),
    (v_q, $t$Weil die Nachbarn das wollten$t$, false, 3),
    (v_q, $t$Weil er bald wieder umziehen will$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'der Karton'?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$die Kiste aus Pappe$t$, true, 1),
    (v_q, $t$der Balkon$t$, false, 2),
    (v_q, $t$der Nachbar$t$, false, 3),
    (v_q, $t$die Küche$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welches Wort passt: 'Markus hat drei Tage gebraucht, um alles ___.'$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$auszupacken$t$, true, 1),
    (v_q, $t$einzupacken$t$, false, 2),
    (v_q, $t$abzupacken$t$, false, 3),
    (v_q, $t$aufzupacken$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'die Wände streichen'?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$die Wände neu bemalen$t$, true, 1),
    (v_q, $t$die Wände abreißen$t$, false, 2),
    (v_q, $t$die Wände messen$t$, false, 3),
    (v_q, $t$die Wände putzen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$'Markus ___ letzte Woche in eine neue Wohnung gezogen.' (Perfekt von 'sein')$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$ist$t$, true, 1),
    (v_q, $t$hat$t$, false, 2),
    (v_q, $t$war$t$, false, 3),
    (v_q, $t$wird$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$'Seine Freunde ___ ihm geholfen.' (Perfekt von 'helfen')$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$haben$t$, true, 1),
    (v_q, $t$sind$t$, false, 2),
    (v_q, $t$hatten$t$, false, 3),
    (v_q, $t$waren$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie lautet das Partizip II von 'tragen'?$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$getragen$t$, true, 1),
    (v_q, $t$getrugen$t$, false, 2),
    (v_q, $t$trugen$t$, false, 3),
    (v_q, $t$tragt$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$Beschreibe deinen letzten Umzug oder wie du dir eine neue Wohnung vorstellst. Schreibe 3-5 einfache Sätze.$t$, 1, 'normal', 'production', $t$Ich bin letztes Jahr umgezogen. Meine neue Wohnung hat zwei Zimmer und eine Küche. Meine Freunde haben mir geholfen. Wir haben Pizza gegessen. Jetzt fühle ich mich zu Hause.$t$);

END $block$;

-- 2. Ein Tag im Zoo
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary) VALUES (
    'A2',
    $t$Ein Tag im Zoo$t$,
    $t$Am Samstag ist Familie Berger in den Zoo gefahren. Die Kinder, Emma und Ben, haben sich schon lange auf diesen Ausflug gefreut. Zuerst haben sie die Elefanten besucht, die gerade gebadet haben. Danach sind sie zu den Affen gegangen, die lustige Sprünge gemacht haben. Ben wollte unbedingt die Löwen sehen, aber die haben den ganzen Nachmittag geschlafen. Zum Mittagessen haben sie Sandwiches im Zoo-Café gegessen. Emma hat ein Eis bekommen, weil sie so brav war. Am späten Nachmittag haben sie noch die Pinguine gefüttert. Das war der Höhepunkt des Tages für beide Kinder. Müde, aber glücklich, sind sie am Abend nach Hause gefahren.$t$,
    $t$Samedi, la famille Berger est allée au zoo. Les enfants, Emma et Ben, se réjouissaient depuis longtemps de cette excursion. D'abord, ils ont visité les éléphants, qui venaient justement de se baigner. Ensuite, ils sont allés voir les singes, qui faisaient des sauts amusants. Ben voulait absolument voir les lions, mais ceux-ci ont dormi tout l'après-midi. Pour le déjeuner, ils ont mangé des sandwichs au café du zoo. Emma a eu une glace parce qu'elle avait été si sage. En fin d'après-midi, ils ont encore nourri les pingouins. Ce fut le point culminant de la journée pour les deux enfants. Fatigués mais heureux, ils sont rentrés à la maison le soir.$t$,
    $t${"Am":"le","Samstag":"samedi","ist":"est","Familie":"famille","Berger":"Berger","in":"à","den":"le","Zoo":"zoo","gefahren":"allée","Die":"Les","Kinder":"enfants","Emma":"Emma","und":"et","Ben":"Ben","haben":"ont","sich":"se","schon":"déjà","lange":"longtemps","auf":"à","diesen":"cette","Ausflug":"excursion","gefreut":"réjouis","Zuerst":"d'abord","sie":"ils","die":"les","Elefanten":"éléphants","besucht":"visité","gerade":"justement","gebadet":"baigné","Danach":"ensuite","sind":"sont","zu":"vers","Affen":"singes","gegangen":"allés","lustige":"amusants","Sprünge":"sauts","gemacht":"faits","wollte":"voulait","unbedingt":"absolument","Löwen":"lions","sehen":"voir","aber":"mais","ganzen":"tout","Nachmittag":"après-midi","geschlafen":"dormi","Zum":"pour le","Mittagessen":"déjeuner","Sandwiches":"sandwichs","im":"au","Zoo-Café":"café du zoo","gegessen":"mangé","hat":"a","ein":"une","Eis":"glace","bekommen":"reçu","weil":"parce que","so":"si","brav":"sage","war":"était","späten":"fin de l'","noch":"encore","Pinguine":"pingouins","gefüttert":"nourri","Das":"ce","der":"le","Höhepunkt":"point culminant","des":"de la","Tages":"journée","für":"pour","beide":"deux","Müde":"fatigués","glücklich":"heureux","am":"le","Abend":"soir","nach":"vers","Hause":"maison"}$t$::jsonb
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was haben die Elefanten gemacht?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Geschlafen$t$, false, 1),
    (v_q, $t$Gebadet$t$, true, 2),
    (v_q, $t$Gegessen$t$, false, 3),
    (v_q, $t$Gespielt$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was haben die Elefanten gemacht, als die Familie ankam?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie haben geschlafen$t$, false, 1),
    (v_q, $t$Sie haben gebadet$t$, true, 2),
    (v_q, $t$Sie haben gegessen$t$, false, 3),
    (v_q, $t$Sie haben gespielt$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was war die erste Tieraktivität, die die Familie im Zoo beobachtet hat?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Elefanten beim Baden$t$, true, 1),
    (v_q, $t$Affen beim Springen$t$, false, 2),
    (v_q, $t$Löwen beim Schlafen$t$, false, 3),
    (v_q, $t$Pinguine beim Fressen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum hat Ben die Löwen nicht aktiv gesehen?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie waren krank$t$, false, 1),
    (v_q, $t$Sie haben geschlafen$t$, true, 2),
    (v_q, $t$Der Zoo war geschlossen$t$, false, 3),
    (v_q, $t$Es gab keine Löwen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum konnte Ben die Löwen nicht richtig sehen?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Die Löwen waren krank$t$, false, 1),
    (v_q, $t$Die Löwen haben geschlafen$t$, true, 2),
    (v_q, $t$Der Zoo war geschlossen$t$, false, 3),
    (v_q, $t$Es gab keine Löwen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Ben wollte die Löwen unbedingt sehen, war am Ende aber enttäuscht. Was war der Grund?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Die Löwen haben den ganzen Nachmittag geschlafen$t$, true, 1),
    (v_q, $t$Die Löwen waren versteckt$t$, false, 2),
    (v_q, $t$Der Zoo hatte die Löwen verkauft$t$, false, 3),
    (v_q, $t$Es war schon zu spät, um sie zu sehen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was war für die Kinder der Höhepunkt des Tages?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Das Mittagessen$t$, false, 1),
    (v_q, $t$Die Affen$t$, false, 2),
    (v_q, $t$Die Pinguine füttern$t$, true, 3),
    (v_q, $t$Das Eis$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was war der Höhepunkt des Tages für die Kinder?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Das Mittagessen$t$, false, 1),
    (v_q, $t$Die Affen$t$, false, 2),
    (v_q, $t$Die Pinguine füttern$t$, true, 3),
    (v_q, $t$Das Eis$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Am Ende des Tages waren Emma und Ben von einer Aktivität besonders begeistert. Welche war das?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Die Pinguine füttern$t$, true, 1),
    (v_q, $t$Die Elefanten beim Baden beobachten$t$, false, 2),
    (v_q, $t$Ein Eis essen$t$, false, 3),
    (v_q, $t$Die Affen beobachten$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'der Affe'?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$ein Tier, das gut klettert$t$, true, 1),
    (v_q, $t$ein Vogel$t$, false, 2),
    (v_q, $t$ein Fisch$t$, false, 3),
    (v_q, $t$eine Blume$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welches Wort passt: 'Am späten Nachmittag haben sie die Pinguine ___.'$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$gefüttert$t$, true, 1),
    (v_q, $t$gegessen$t$, false, 2),
    (v_q, $t$gekauft$t$, false, 3),
    (v_q, $t$gesucht$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'der Höhepunkt des Tages'?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$das schönste Erlebnis des Tages$t$, true, 1),
    (v_q, $t$der Beginn des Tages$t$, false, 2),
    (v_q, $t$das Ende des Tages$t$, false, 3),
    (v_q, $t$ein Problem am Tag$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$'Familie Berger ___ in den Zoo gefahren.' (Perfekt von 'fahren')$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$ist$t$, true, 1),
    (v_q, $t$hat$t$, false, 2),
    (v_q, $t$war$t$, false, 3),
    (v_q, $t$wird$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$'Die Löwen ___ den ganzen Nachmittag geschlafen.' (Perfekt von 'schlafen')$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$haben$t$, true, 1),
    (v_q, $t$sind$t$, false, 2),
    (v_q, $t$hatten$t$, false, 3),
    (v_q, $t$waren$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie lautet das Partizip II von 'sehen'?$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$gesehen$t$, true, 1),
    (v_q, $t$geseht$t$, false, 2),
    (v_q, $t$sahen$t$, false, 3),
    (v_q, $t$gesehnt$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$Schreibe 3-5 Sätze über einen Ausflug in einen Zoo oder Park, den du gemacht hast oder machen möchtest.$t$, 1, 'normal', 'production', $t$Letztes Jahr war ich im Zoo. Ich habe die Elefanten gesehen. Die Affen waren sehr lustig. Wir haben zu Mittag ein Eis gegessen. Es war ein schöner Tag.$t$);

END $block$;

-- 3. Die Zugfahrt nach Berlin
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary) VALUES (
    'A2',
    $t$Die Zugfahrt nach Berlin$t$,
    $t$Julia musste am Montag früh nach Berlin fahren. Sie hat den Zug um sechs Uhr genommen, weil die Reise vier Stunden dauert. Im Zug hat sie zuerst ein Buch gelesen, aber später ist sie eingeschlafen. Plötzlich hat der Zug angehalten, mitten auf der Strecke. Eine Durchsage hat erklärt, dass es ein technisches Problem gibt. Alle Passagiere mussten eine Stunde warten. Julia hatte Angst, ihren Termin zu verpassen. Zum Glück ist der Zug dann weitergefahren und Julia ist nur zehn Minuten zu spät angekommen. Ihr Kollege hat gewartet und alles war in Ordnung. Am Abend hat Julia ihrer Mutter von der stressigen Reise erzählt.$t$,
    $t$Julia devait partir tôt lundi pour Berlin. Elle a pris le train à six heures, car le trajet dure quatre heures. Dans le train, elle a d'abord lu un livre, mais plus tard elle s'est endormie. Soudain, le train s'est arrêté, en plein milieu du trajet. Une annonce a expliqué qu'il y avait un problème technique. Tous les passagers ont dû attendre une heure. Julia avait peur de manquer son rendez-vous. Heureusement, le train est reparti et Julia n'est arrivée qu'avec dix minutes de retard. Son collègue avait attendu et tout allait bien. Le soir, Julia a raconté à sa mère ce voyage stressant.$t$,
    $t${"Julia":"Julia","musste":"devait","am":"le","Montag":"lundi","früh":"tôt","nach":"à","Berlin":"Berlin","fahren":"aller","Sie":"Elle","hat":"a","den":"le","Zug":"train","um":"à","sechs":"six","Uhr":"heures","genommen":"pris","weil":"parce que","die":"le","Reise":"trajet","vier":"quatre","Stunden":"heures","dauert":"dure","Im":"dans le","sie":"elle","zuerst":"d'abord","ein":"un","Buch":"livre","gelesen":"lu","aber":"mais","später":"plus tard","ist":"est","eingeschlafen":"endormie","Plötzlich":"soudain","der":"le","angehalten":"arrêté","mitten":"en plein milieu","auf":"sur","Strecke":"trajet","Eine":"une","Durchsage":"annonce","erklärt":"a expliqué","dass":"que","es":"il","technisches":"technique","Problem":"problème","gibt":"y a","Alle":"tous les","Passagiere":"passagers","mussten":"ont dû","eine":"une","Stunde":"heure","warten":"attendre","hatte":"avait","Angst":"peur","ihren":"son","Termin":"rendez-vous","zu":"de","verpassen":"manquer","Zum":"par","Glück":"chance","dann":"puis","weitergefahren":"reparti","und":"et","nur":"seulement","zehn":"dix","Minuten":"minutes","spät":"en retard","angekommen":"arrivée","Ihr":"son","Kollege":"collègue","gewartet":"attendu","alles":"tout","war":"était","in":"en","Ordnung":"ordre","Am":"le","Abend":"soir","ihrer":"à sa","Mutter":"mère","von":"de","stressigen":"stressant","erzählt":"raconté"}$t$::jsonb
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum ist Julia so früh gefahren?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Weil sie die Stadt sehen wollte$t$, false, 1),
    (v_q, $t$Weil die Reise vier Stunden dauert$t$, true, 2),
    (v_q, $t$Weil der Zug billiger war$t$, false, 3),
    (v_q, $t$Weil ihre Mutter das wollte$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum hat Julia den frühen Zug genommen?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Weil sie die Stadt sehen wollte$t$, false, 1),
    (v_q, $t$Weil die Reise vier Stunden dauert$t$, true, 2),
    (v_q, $t$Weil der Zug billiger war$t$, false, 3),
    (v_q, $t$Weil ihre Mutter das wollte$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Julia musste schon um sechs Uhr morgens im Zug sitzen. Was erklärt das am besten?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Die Fahrt nach Berlin dauert vier Stunden$t$, true, 1),
    (v_q, $t$Julia wollte einen Fensterplatz haben$t$, false, 2),
    (v_q, $t$Der Zug hatte am Morgen einen Rabatt$t$, false, 3),
    (v_q, $t$Julia musste ihre Mutter besuchen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum hat der Zug angehalten?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Wegen eines technischen Problems$t$, true, 1),
    (v_q, $t$Wegen des Wetters$t$, false, 2),
    (v_q, $t$Weil Julia aussteigen wollte$t$, false, 3),
    (v_q, $t$Wegen eines Unfalls$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum hat der Zug angehalten?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Wegen eines technischen Problems$t$, true, 1),
    (v_q, $t$Wegen des Wetters$t$, false, 2),
    (v_q, $t$Weil Julia aussteigen wollte$t$, false, 3),
    (v_q, $t$Wegen eines Unfalls$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Eine Durchsage im Zug hat den Grund für die unerwartete Pause erklärt. Um was ging es?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Um ein technisches Problem$t$, true, 1),
    (v_q, $t$Um schlechtes Wetter$t$, false, 2),
    (v_q, $t$Um einen Unfall auf der Strecke$t$, false, 3),
    (v_q, $t$Um eine Fahrkartenkontrolle$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie ist die Reise am Ende ausgegangen?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Julia hat ihren Termin verpasst$t$, false, 1),
    (v_q, $t$Julia ist zehn Minuten zu spät angekommen$t$, true, 2),
    (v_q, $t$Der Zug ist nie angekommen$t$, false, 3),
    (v_q, $t$Julia ist zu früh angekommen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie ist die Reise am Ende ausgegangen?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Julia hat ihren Termin verpasst$t$, false, 1),
    (v_q, $t$Julia ist zehn Minuten zu spät angekommen$t$, true, 2),
    (v_q, $t$Der Zug ist nie angekommen$t$, false, 3),
    (v_q, $t$Julia ist zu früh angekommen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Obwohl der Zug eine Stunde Verspätung hatte, hat sich Julias größte Sorge nicht bestätigt. Warum nicht?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie ist nur zehn Minuten zu spät angekommen und ihr Kollege hat gewartet$t$, true, 1),
    (v_q, $t$Der Termin wurde auf den nächsten Tag verschoben$t$, false, 2),
    (v_q, $t$Ihr Kollege ist auch zu spät gekommen$t$, false, 3),
    (v_q, $t$Der Zug hat die ganze Verspätung aufgeholt$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'der Zug'?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$ein Verkehrsmittel auf Schienen$t$, true, 1),
    (v_q, $t$ein Auto$t$, false, 2),
    (v_q, $t$ein Flugzeug$t$, false, 3),
    (v_q, $t$ein Fahrrad$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welches Wort passt: 'Der Zug hat plötzlich ___.'$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$angehalten$t$, true, 1),
    (v_q, $t$angerufen$t$, false, 2),
    (v_q, $t$angemacht$t$, false, 3),
    (v_q, $t$angezogen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'einen Termin verpassen'?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$zu spät zu einem Termin kommen$t$, true, 1),
    (v_q, $t$einen Termin vereinbaren$t$, false, 2),
    (v_q, $t$einen Termin absagen$t$, false, 3),
    (v_q, $t$pünktlich sein$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$'Julia ___ den Zug um sechs Uhr genommen.' (Perfekt von 'nehmen')$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$hat$t$, true, 1),
    (v_q, $t$ist$t$, false, 2),
    (v_q, $t$war$t$, false, 3),
    (v_q, $t$wird$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$'Später ___ sie eingeschlafen.' (Perfekt von 'einschlafen')$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$ist$t$, true, 1),
    (v_q, $t$hat$t$, false, 2),
    (v_q, $t$war$t$, false, 3),
    (v_q, $t$hatte$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie lautet das Partizip II von 'warten'?$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$gewartet$t$, true, 1),
    (v_q, $t$gewurtet$t$, false, 2),
    (v_q, $t$wartete$t$, false, 3),
    (v_q, $t$gewartete$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$Erzähle von einer Reise mit dem Zug oder Bus, bei der etwas Unerwartetes passiert ist. Schreibe 3-5 Sätze.$t$, 1, 'normal', 'production', $t$Ich bin einmal mit dem Zug gefahren. Der Zug hatte Verspätung. Ich hatte Angst, meinen Termin zu verpassen. Zum Glück kam ich nur zehn Minuten zu spät an. Alles war in Ordnung.$t$);

END $block$;

-- 4. Das Missverständnis im Café
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary) VALUES (
    'A2',
    $t$Das Missverständnis im Café$t$,
    $t$Tom hat sich mit seiner Freundin Nina in einem Café verabredet. Er hat gedacht, sie treffen sich um 15 Uhr, aber Nina hatte 16 Uhr verstanden. Tom ist pünktlich gekommen und hat eine ganze Stunde allein gewartet. Er hat einen Kaffee bestellt und dann noch einen, weil er nervös wurde. Er hat gedacht, Nina hätte ihn vergessen. Als Nina endlich gekommen ist, war sie überrascht, dass Tom schon so lange da saß. Sie haben schnell gemerkt, dass es ein Missverständnis über die Uhrzeit gab. Am Ende haben beide gelacht und einen schönen Nachmittag zusammen verbracht. Tom hat gesagt, dass er beim nächsten Mal die Zeit schriftlich bestätigen möchte.$t$,
    $t$Tom avait donné rendez-vous à sa petite amie Nina dans un café. Il pensait qu'ils se retrouvaient à 15 heures, mais Nina avait compris 16 heures. Tom est arrivé à l'heure et a attendu seul pendant une heure entière. Il a commandé un café, puis un autre, car il devenait nerveux. Il pensait que Nina l'avait oublié. Quand Nina est enfin arrivée, elle a été surprise que Tom soit déjà assis là depuis si longtemps. Ils ont vite compris qu'il y avait eu un malentendu sur l'heure. À la fin, tous les deux ont ri et ont passé un bel après-midi ensemble. Tom a dit que la prochaine fois, il voudrait confirmer l'heure par écrit.$t$,
    $t${"Tom":"Tom","hat":"a","sich":"se","mit":"avec","seiner":"sa","Freundin":"petite amie","Nina":"Nina","in":"dans","einem":"un","Café":"café","verabredet":"donné rendez-vous","Er":"Il","gedacht":"pensé","sie":"ils","treffen":"se rencontrer","um":"à","Uhr":"heures","aber":"mais","hatte":"avait","verstanden":"compris","ist":"est","pünktlich":"à l'heure","gekommen":"venu","und":"et","eine":"une","ganze":"entière","Stunde":"heure","allein":"seul","gewartet":"attendu","einen":"un","Kaffee":"café","bestellt":"commandé","dann":"puis","noch":"encore","weil":"parce que","er":"il","nervös":"nerveux","wurde":"devenait","hätte":"aurait","ihn":"l'","vergessen":"oublié","Als":"quand","endlich":"enfin","war":"était","überrascht":"surprise","dass":"que","schon":"déjà","so":"si","lange":"longtemps","da":"là","saß":"était assis","Sie":"Ils","haben":"ont","schnell":"vite","gemerkt":"remarqué","es":"il y avait","ein":"un","Missverständnis":"malentendu","über":"sur","die":"l'","Uhrzeit":"heure","gab":"y avait","Am":"à la","Ende":"fin","beide":"les deux","gelacht":"ri","schönen":"bel","Nachmittag":"après-midi","zusammen":"ensemble","verbracht":"passé","gesagt":"dit","beim":"la","nächsten":"prochaine","Mal":"fois","Zeit":"heure","schriftlich":"par écrit","bestätigen":"confirmer","möchte":"voudrait"}$t$::jsonb
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Um wie viel Uhr ist Tom im Café angekommen?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Um 14 Uhr$t$, false, 1),
    (v_q, $t$Um 15 Uhr$t$, true, 2),
    (v_q, $t$Um 16 Uhr$t$, false, 3),
    (v_q, $t$Um 17 Uhr$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Um wie viel Uhr ist Tom im Café angekommen?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Um 14 Uhr$t$, false, 1),
    (v_q, $t$Um 15 Uhr$t$, true, 2),
    (v_q, $t$Um 16 Uhr$t$, false, 3),
    (v_q, $t$Um 17 Uhr$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Tom dachte, das Treffen sei eine Stunde früher als Nina es verstanden hatte. Wann ist Tom demnach angekommen?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Um 15 Uhr$t$, true, 1),
    (v_q, $t$Um 16 Uhr$t$, false, 2),
    (v_q, $t$Um 14 Uhr$t$, false, 3),
    (v_q, $t$Um 17 Uhr$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was hat Tom gedacht, während er wartete?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Das Café ist geschlossen$t$, false, 1),
    (v_q, $t$Nina hat ihn vergessen$t$, true, 2),
    (v_q, $t$Er hat den falschen Tag$t$, false, 3),
    (v_q, $t$Nina ist krank$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was hat Tom gedacht, während er wartete?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Dass das Café geschlossen ist$t$, false, 1),
    (v_q, $t$Dass Nina ihn vergessen hat$t$, true, 2),
    (v_q, $t$Dass er den falschen Tag hat$t$, false, 3),
    (v_q, $t$Dass Nina krank ist$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Tom hat einen zweiten Kaffee bestellt, weil er immer nervöser wurde. Was war der Grund für seine Nervosität?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er dachte, Nina habe das Treffen vergessen$t$, true, 1),
    (v_q, $t$Er hatte Angst, zu einem anderen Termin zu spät zu kommen$t$, false, 2),
    (v_q, $t$Er wusste nicht, wo das Café war$t$, false, 3),
    (v_q, $t$Er hatte kein Geld mehr$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Worüber gab es ein Missverständnis?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Über den Ort$t$, false, 1),
    (v_q, $t$Über die Uhrzeit$t$, true, 2),
    (v_q, $t$Über das Café$t$, false, 3),
    (v_q, $t$Über den Tag$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Worüber gab es ein Missverständnis?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Über den Ort$t$, false, 1),
    (v_q, $t$Über die Uhrzeit$t$, true, 2),
    (v_q, $t$Über das Café$t$, false, 3),
    (v_q, $t$Über den Tag$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Am Ende haben Tom und Nina gelacht, als sie den Grund für die lange Wartezeit verstanden hatten. Was war dieser Grund?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie hatten unterschiedliche Uhrzeiten im Kopf$t$, true, 1),
    (v_q, $t$Sie waren in verschiedenen Cafés$t$, false, 2),
    (v_q, $t$Nina hatte den Tag verwechselt$t$, false, 3),
    (v_q, $t$Tom war im falschen Stadtteil$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'sich verabreden'?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$ein Treffen ausmachen$t$, true, 1),
    (v_q, $t$streiten$t$, false, 2),
    (v_q, $t$einkaufen$t$, false, 3),
    (v_q, $t$kochen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welches Wort passt: 'Tom ist ___ gekommen.'$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$pünktlich$t$, true, 1),
    (v_q, $t$langsam$t$, false, 2),
    (v_q, $t$müde$t$, false, 3),
    (v_q, $t$allein$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'ein Missverständnis'?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$wenn zwei Personen etwas anders verstehen$t$, true, 1),
    (v_q, $t$ein Streit$t$, false, 2),
    (v_q, $t$ein Geschenk$t$, false, 3),
    (v_q, $t$eine Entschuldigung$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$'Tom ___ sich mit Nina verabredet.' (Perfekt von 'sich verabreden')$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$hat$t$, true, 1),
    (v_q, $t$ist$t$, false, 2),
    (v_q, $t$war$t$, false, 3),
    (v_q, $t$wird$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$'Er ___ einen Kaffee bestellt.' (Perfekt von 'bestellen')$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$hat$t$, true, 1),
    (v_q, $t$ist$t$, false, 2),
    (v_q, $t$war$t$, false, 3),
    (v_q, $t$hatte$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie lautet das Partizip II von 'lachen'?$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$gelacht$t$, true, 1),
    (v_q, $t$gelachen$t$, false, 2),
    (v_q, $t$lachte$t$, false, 3),
    (v_q, $t$gelachte$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$Beschreibe ein Missverständnis, das dir einmal passiert ist, oder erfinde eine kleine Geschichte darüber. Schreibe 3-5 Sätze.$t$, 1, 'normal', 'production', $t$Ich habe mich einmal mit einer Freundin verabredet. Ich habe die falsche Uhrzeit verstanden. Ich musste lange warten. Am Ende haben wir zusammen gelacht. Jetzt schreibe ich Termine immer auf.$t$);

END $block$;

-- 5. Ferien am Meer
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary) VALUES (
    'A2',
    $t$Ferien am Meer$t$,
    $t$Die Familie Klein hat zwei Wochen Urlaub an der Nordsee gemacht. Sie haben ein kleines Haus in der Nähe des Strandes gemietet. Jeden Morgen sind die Kinder früh aufgewacht, um Muscheln zu sammeln. Am Nachmittag hat die Familie oft lange Spaziergänge am Strand gemacht. Ein Tag war leider sehr windig, deshalb sind sie ins Museum in der Stadt gefahren. Dort haben sie viel über die Geschichte des Meeres gelernt. Am letzten Abend haben sie ein großes Feuer am Strand gemacht und Würstchen gegrillt. Die Kinder waren traurig, dass der Urlaub schon vorbei war. Sie haben versprochen, im nächsten Jahr wiederzukommen.$t$,
    $t$La famille Klein a passé deux semaines de vacances sur la mer du Nord. Ils avaient loué une petite maison près de la plage. Chaque matin, les enfants se réveillaient tôt pour ramasser des coquillages. L'après-midi, la famille faisait souvent de longues promenades sur la plage. Un jour, il y avait malheureusement beaucoup de vent, alors ils sont allés au musée de la ville. Là, ils ont beaucoup appris sur l'histoire de la mer. Le dernier soir, ils ont fait un grand feu sur la plage et grillé des saucisses. Les enfants étaient tristes que les vacances soient déjà finies. Ils ont promis de revenir l'année prochaine.$t$,
    $t${"Die":"La","Familie":"famille","Klein":"Klein","hat":"a","zwei":"deux","Wochen":"semaines","Urlaub":"vacances","an":"sur","der":"la","Nordsee":"mer du Nord","gemacht":"passé","Sie":"Ils","haben":"ont","ein":"une","kleines":"petite","Haus":"maison","in":"à","Nähe":"proximité","des":"de la","Strandes":"plage","gemietet":"louée","Jeden":"chaque","Morgen":"matin","sind":"sont","die":"les","Kinder":"enfants","früh":"tôt","aufgewacht":"réveillés","um":"pour","Muscheln":"coquillages","zu":"à","sammeln":"ramasser","Am":"l'","Nachmittag":"après-midi","oft":"souvent","lange":"longues","Spaziergänge":"promenades","am":"sur la","Strand":"plage","Ein":"un","Tag":"jour","war":"était","leider":"malheureusement","sehr":"très","windig":"venteux","deshalb":"c'est pourquoi","sie":"ils","ins":"au","Museum":"musée","Stadt":"ville","gefahren":"allés","Dort":"là","viel":"beaucoup","über":"sur","Geschichte":"histoire","Meeres":"de la mer","gelernt":"appris","letzten":"dernier","Abend":"soir","großes":"grand","Feuer":"feu","und":"et","Würstchen":"saucisses","gegrillt":"grillées","waren":"étaient","traurig":"tristes","dass":"que","schon":"déjà","vorbei":"fini","versprochen":"promis","im":"dans l'","nächsten":"prochaine","Jahr":"année","wiederzukommen":"revenir"}$t$::jsonb
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wo hat die Familie gewohnt?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$In einem Hotel$t$, false, 1),
    (v_q, $t$In einem kleinen Haus am Strand$t$, true, 2),
    (v_q, $t$Bei Verwandten$t$, false, 3),
    (v_q, $t$In einem Wohnwagen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wo hat die Familie gewohnt?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$In einem Hotel$t$, false, 1),
    (v_q, $t$In einem kleinen Haus am Strand$t$, true, 2),
    (v_q, $t$Bei Verwandten$t$, false, 3),
    (v_q, $t$In einem Wohnwagen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Für ihre Unterkunft während der Ferien hat die Familie Klein nicht ein Hotel gewählt, sondern etwas anderes. Was?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Ein gemietetes Haus in Strandnähe$t$, true, 1),
    (v_q, $t$Ein Zimmer bei Freunden$t$, false, 2),
    (v_q, $t$Einen Campingplatz$t$, false, 3),
    (v_q, $t$Eine Ferienwohnung in der Stadt$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was haben die Kinder jeden Morgen gemacht?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Muscheln gesammelt$t$, true, 1),
    (v_q, $t$Im Meer geschwommen$t$, false, 2),
    (v_q, $t$Im Museum gespielt$t$, false, 3),
    (v_q, $t$Im Restaurant gefrühstückt$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was haben die Kinder jeden Morgen gemacht?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Muscheln gesammelt$t$, true, 1),
    (v_q, $t$Im Meer geschwommen$t$, false, 2),
    (v_q, $t$Im Museum gespielt$t$, false, 3),
    (v_q, $t$Gefrühstückt im Restaurant$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Die Kinder sind an jedem Ferientag sehr früh aufgestanden. Was war der Grund dafür?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie wollten Muscheln sammeln$t$, true, 1),
    (v_q, $t$Sie wollten schwimmen gehen$t$, false, 2),
    (v_q, $t$Sie mussten ins Museum$t$, false, 3),
    (v_q, $t$Sie wollten frühstücken gehen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum sind sie an einem Tag ins Museum gefahren?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Es hat geregnet$t$, false, 1),
    (v_q, $t$Es war sehr windig$t$, true, 2),
    (v_q, $t$Der Strand war geschlossen$t$, false, 3),
    (v_q, $t$Die Kinder wollten das$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum sind sie an einem Tag ins Museum gefahren?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Es hat geregnet$t$, false, 1),
    (v_q, $t$Es war sehr windig$t$, true, 2),
    (v_q, $t$Der Strand war geschlossen$t$, false, 3),
    (v_q, $t$Die Kinder wollten das$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$An einem Tag konnten die üblichen Strandaktivitäten nicht stattfinden, deshalb hat die Familie einen Ausflug in die Stadt gemacht. Was war der Grund?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Starker Wind$t$, true, 1),
    (v_q, $t$Regen$t$, false, 2),
    (v_q, $t$Ein geschlossener Strand$t$, false, 3),
    (v_q, $t$Kälte$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'der Strand'?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$der Sandbereich am Meer$t$, true, 1),
    (v_q, $t$der Wald$t$, false, 2),
    (v_q, $t$der Berg$t$, false, 3),
    (v_q, $t$der Garten$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welches Wort passt: 'Die Kinder sind früh ___, um Muscheln zu sammeln.'$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$aufgewacht$t$, true, 1),
    (v_q, $t$eingeschlafen$t$, false, 2),
    (v_q, $t$weggefahren$t$, false, 3),
    (v_q, $t$angekommen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'ein Feuer machen'?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$ein Lagerfeuer anzünden$t$, true, 1),
    (v_q, $t$kochen$t$, false, 2),
    (v_q, $t$grillen ohne Feuer$t$, false, 3),
    (v_q, $t$ein Haus heizen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$'Die Familie ___ zwei Wochen Urlaub gemacht.' (Perfekt von 'machen')$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$hat$t$, true, 1),
    (v_q, $t$ist$t$, false, 2),
    (v_q, $t$war$t$, false, 3),
    (v_q, $t$wird$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$'Sie ___ ein kleines Haus gemietet.' (Perfekt von 'mieten')$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$haben$t$, true, 1),
    (v_q, $t$sind$t$, false, 2),
    (v_q, $t$hatten$t$, false, 3),
    (v_q, $t$waren$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie lautet das Partizip II von 'sammeln'?$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$gesammelt$t$, true, 1),
    (v_q, $t$gesammt$t$, false, 2),
    (v_q, $t$sammelte$t$, false, 3),
    (v_q, $t$gesammelte$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$Beschreibe einen Urlaub am Meer, den du gemacht hast oder gerne machen würdest. Schreibe 3-5 Sätze.$t$, 1, 'normal', 'production', $t$Letzten Sommer war ich am Meer. Wir haben ein kleines Haus gemietet. Jeden Morgen bin ich zum Strand gegangen. Am Abend haben wir Würstchen gegrillt. Es war ein schöner Urlaub.$t$);

END $block$;

-- 6. Der Ausflug zum Goethe-Haus
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary) VALUES (
    'A2',
    $t$Der Ausflug zum Goethe-Haus$t$,
    $t$Lena ist eine Schülerin aus Frankfurt. Letzte Woche ist sie mit ihrer Klasse zum Goethe-Haus gefahren. Der Dichter Johann Wolfgang von Goethe ist dort geboren. Die Lehrerin hat den Schülern viel erklärt. Zuerst haben sie das Arbeitszimmer von Goethes Vater gesehen. Danach sind sie in die Bibliothek gegangen. Dort gab es viele alte Bücher. Lena hat ein Gedicht von Goethe gelesen, aber sie hat nicht alles verstanden. Der Museumsführer hat gesagt, dass Goethe auch Naturwissenschaftler war. Nach dem Besuch haben die Schüler im Innenhof Fotos gemacht. Lena hat ihrer Mutter erzählt, dass der Ausflug sehr interessant war. Sie möchte jetzt mehr Bücher von Goethe lesen, weil sie neugierig geworden ist.$t$,
    $t$Lena est une élève de Francfort. La semaine dernière, elle est allée avec sa classe à la maison de Goethe. Le poète Johann Wolfgang von Goethe y est né. L'enseignante a beaucoup expliqué aux élèves. D'abord, ils ont vu le bureau du père de Goethe. Ensuite, ils sont allés à la bibliothèque. Il y avait là de nombreux vieux livres. Lena a lu un poème de Goethe, mais elle n'a pas tout compris. Le guide du musée a dit que Goethe était aussi un scientifique. Après la visite, les élèves ont pris des photos dans la cour intérieure. Lena a raconté à sa mère que l'excursion était très intéressante. Elle voudrait maintenant lire plus de livres de Goethe, car elle est devenue curieuse.$t$,
    $t${"Lena":"Lena","ist":"est","eine":"une","Schülerin":"élève","aus":"de","Frankfurt":"Francfort","Letzte":"la semaine dernière","Woche":"semaine","sie":"elle","mit":"avec","ihrer":"sa","Klasse":"classe","zum":"à la","Goethe-Haus":"maison de Goethe","gefahren":"allée","Der":"Le","Dichter":"poète","Johann":"Johann","Wolfgang":"Wolfgang","von":"von","Goethe":"Goethe","dort":"là","geboren":"né","Die":"L'","Lehrerin":"enseignante","hat":"a","den":"aux","Schülern":"élèves","viel":"beaucoup","erklärt":"expliqué","Zuerst":"d'abord","haben":"ont","das":"le","Arbeitszimmer":"bureau","Goethes":"de Goethe","Vater":"père","gesehen":"vu","Danach":"ensuite","sind":"sont","in":"dans","die":"la","Bibliothek":"bibliothèque","gegangen":"allés","Dort":"là","gab":"il y avait","es":"il","viele":"de nombreux","alte":"vieux","Bücher":"livres","ein":"un","Gedicht":"poème","gelesen":"lu","aber":"mais","nicht":"pas","alles":"tout","verstanden":"compris","Museumsführer":"guide du musée","gesagt":"dit","dass":"que","auch":"aussi","Naturwissenschaftler":"scientifique","war":"était","Nach":"après","dem":"la","Besuch":"visite","Schüler":"élèves","im":"dans la","Innenhof":"cour intérieure","Fotos":"photos","gemacht":"pris","Mutter":"mère","erzählt":"raconté","der":"l'","Ausflug":"excursion","sehr":"très","interessant":"intéressante","Sie":"Elle","möchte":"voudrait","jetzt":"maintenant","mehr":"plus de","lesen":"lire","weil":"parce que","neugierig":"curieuse","geworden":"devenue"}$t$::jsonb
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wohin ist Lena mit ihrer Klasse gefahren?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Zum Goethe-Haus$t$, true, 1),
    (v_q, $t$Zum Zoo$t$, false, 2),
    (v_q, $t$Zum Schwimmbad$t$, false, 3),
    (v_q, $t$Zum Kino$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wer ist im Goethe-Haus geboren?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Lenas Vater$t$, false, 1),
    (v_q, $t$Johann Wolfgang von Goethe$t$, true, 2),
    (v_q, $t$Die Lehrerin$t$, false, 3),
    (v_q, $t$Ein Museumsführer$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was haben die Schüler im Goethe-Haus zuerst gesehen?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Die Bibliothek$t$, false, 1),
    (v_q, $t$Den Innenhof$t$, false, 2),
    (v_q, $t$Das Arbeitszimmer von Goethes Vater$t$, true, 3),
    (v_q, $t$Ein Gedicht von Goethe$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was gab es in der Bibliothek?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Viele alte Bücher$t$, true, 1),
    (v_q, $t$Viele Bilder$t$, false, 2),
    (v_q, $t$Viele Instrumente$t$, false, 3),
    (v_q, $t$Viele Spiele$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was hat Lena in der Bibliothek gemacht?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie hat geschlafen$t$, false, 1),
    (v_q, $t$Sie hat gegessen$t$, false, 2),
    (v_q, $t$Sie hat ein Gedicht gelesen$t$, true, 3),
    (v_q, $t$Sie hat gesungen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was hat der Museumsführer über Goethe zusätzlich erzählt?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Dass er Musiker war$t$, false, 1),
    (v_q, $t$Dass er nie geschrieben hat$t$, false, 2),
    (v_q, $t$Dass er Lehrer war$t$, false, 3),
    (v_q, $t$Dass er auch Naturwissenschaftler war$t$, true, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was haben die Schüler im Innenhof gemacht?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Fotos gemacht$t$, true, 1),
    (v_q, $t$Musik gehört$t$, false, 2),
    (v_q, $t$Gegessen$t$, false, 3),
    (v_q, $t$Geschlafen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wem hat Lena von dem Ausflug erzählt?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Ihrem Bruder$t$, false, 1),
    (v_q, $t$Dem Museumsführer$t$, false, 2),
    (v_q, $t$Ihrer Mutter$t$, true, 3),
    (v_q, $t$Ihrer Lehrerin$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum möchte Lena jetzt mehr Bücher von Goethe lesen?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Weil ihre Mutter das verlangt$t$, false, 1),
    (v_q, $t$Weil sie Hausaufgaben machen muss$t$, false, 2),
    (v_q, $t$Weil das Museum geschlossen ist$t$, false, 3),
    (v_q, $t$Weil sie neugierig geworden ist$t$, true, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'die Bibliothek'?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$ein Ort mit vielen Büchern$t$, true, 1),
    (v_q, $t$ein Museum für Bilder$t$, false, 2),
    (v_q, $t$eine Schule$t$, false, 3),
    (v_q, $t$ein Theater$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welches Wort passt: 'Lena hat ein Gedicht von Goethe ___.'$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$gelesen$t$, true, 1),
    (v_q, $t$geschrieben$t$, false, 2),
    (v_q, $t$gekauft$t$, false, 3),
    (v_q, $t$gesungen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'neugierig'?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$man möchte mehr wissen$t$, true, 1),
    (v_q, $t$man ist müde$t$, false, 2),
    (v_q, $t$man ist traurig$t$, false, 3),
    (v_q, $t$man hat Angst$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$'Lena ___ mit ihrer Klasse zum Goethe-Haus gefahren.' (Perfekt von 'fahren')$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$ist$t$, true, 1),
    (v_q, $t$hat$t$, false, 2),
    (v_q, $t$war$t$, false, 3),
    (v_q, $t$wird$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$'Die Lehrerin ___ den Schülern viel erklärt.' (Perfekt von 'erklären')$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$hat$t$, true, 1),
    (v_q, $t$ist$t$, false, 2),
    (v_q, $t$war$t$, false, 3),
    (v_q, $t$hatte$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie lautet das Partizip II von 'verstehen'?$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$verstanden$t$, true, 1),
    (v_q, $t$verstehen$t$, false, 2),
    (v_q, $t$verstandete$t$, false, 3),
    (v_q, $t$verstandet$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$Beschreibe einen Ausflug mit deiner Schule oder Klasse. Schreibe 3-5 Sätze.$t$, 1, 'normal', 'production', $t$Letztes Jahr sind wir mit der Klasse ins Museum gefahren. Der Lehrer hat viel erklärt. Wir haben alte Bücher gesehen. Danach haben wir Fotos gemacht. Der Ausflug war sehr interessant.$t$);

END $block$;

-- 7. Die Brüder Grimm und die Märchen
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary) VALUES (
    'A2',
    $t$Die Brüder Grimm und die Märchen$t$,
    $t$Jacob und Wilhelm Grimm haben vor etwa 200 Jahren in Deutschland gelebt. Sie waren Brüder und haben ihr ganzes Leben zusammen gearbeitet. Die Brüder haben nicht nur Märchen geschrieben, sondern auch gesammelt. Sie sind durch Dörfer gereist und haben mit alten Frauen und Männern gesprochen. Die Menschen haben ihnen Geschichten erzählt, die sie von ihren Großeltern kannten. Danach haben Jacob und Wilhelm die Geschichten aufgeschrieben. So sind viele bekannte Märchen wie 'Rotkäppchen' oder 'Aschenputtel' für uns geblieben. Die Brüder haben auch an einem großen Wörterbuch gearbeitet, aber sie konnten es nicht fertig machen. Heute kennen Kinder auf der ganzen Welt die Märchen der Brüder Grimm. Deshalb sind Jacob und Wilhelm noch immer sehr berühmt.$t$,
    $t$Jacob et Wilhelm Grimm ont vécu en Allemagne il y a environ 200 ans. Ils étaient frères et ont travaillé ensemble toute leur vie. Les frères n'ont pas seulement écrit des contes, mais les ont aussi collectés. Ils ont voyagé à travers des villages et ont parlé avec de vieilles femmes et de vieux hommes. Les gens leur racontaient des histoires qu'ils tenaient de leurs grands-parents. Ensuite, Jacob et Wilhelm ont mis ces histoires par écrit. C'est ainsi que de nombreux contes connus, comme « Le Petit Chaperon rouge » ou « Cendrillon », nous sont restés. Les frères ont aussi travaillé sur un grand dictionnaire, mais ils n'ont pas pu le terminer. Aujourd'hui, des enfants du monde entier connaissent les contes des frères Grimm. C'est pourquoi Jacob et Wilhelm sont encore aujourd'hui très célèbres.$t$,
    $t${"Jacob":"Jacob","und":"et","Wilhelm":"Wilhelm","Grimm":"Grimm","haben":"ont","vor":"il y a","etwa":"environ","Jahren":"ans","in":"en","Deutschland":"Allemagne","gelebt":"vécu","Sie":"Ils","waren":"étaient","Brüder":"frères","ihr":"leur","ganzes":"toute","Leben":"vie","zusammen":"ensemble","gearbeitet":"travaillé","Die":"Les","nicht":"pas","nur":"seulement","Märchen":"contes","geschrieben":"écrit","sondern":"mais aussi","auch":"aussi","gesammelt":"collecté","sind":"sont","durch":"à travers","Dörfer":"villages","gereist":"voyagé","mit":"avec","alten":"vieilles","Frauen":"femmes","Männern":"hommes","gesprochen":"parlé","Menschen":"gens","ihnen":"leur","Geschichten":"histoires","erzählt":"racontées","die":"qu'","sie":"ils","von":"de","ihren":"leurs","Großeltern":"grands-parents","kannten":"connaissaient","Danach":"ensuite","aufgeschrieben":"écrites","So":"ainsi","viele":"beaucoup de","bekannte":"connus","wie":"comme","Rotkäppchen":"Le Petit Chaperon rouge","oder":"ou","Aschenputtel":"Cendrillon","für":"pour","uns":"nous","geblieben":"restés","an":"à","einem":"un","großen":"grand","Wörterbuch":"dictionnaire","aber":"mais","konnten":"ont pu","es":"le","fertig":"terminer","machen":"faire","Heute":"aujourd'hui","kennen":"connaissent","Kinder":"enfants","auf":"dans","der":"le","ganzen":"monde entier","Welt":"monde","Deshalb":"c'est pourquoi","noch":"encore","immer":"toujours","sehr":"très","berühmt":"célèbres"}$t$::jsonb
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wer waren Jacob und Wilhelm Grimm?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Zwei Brüder$t$, true, 1),
    (v_q, $t$Zwei Musiker$t$, false, 2),
    (v_q, $t$Zwei Könige$t$, false, 3),
    (v_q, $t$Zwei Lehrerinnen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was haben die Brüder Grimm außer Märchenschreiben noch gemacht?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie haben Häuser gebaut$t$, false, 1),
    (v_q, $t$Sie haben Märchen gesammelt$t$, true, 2),
    (v_q, $t$Sie haben Filme gemacht$t$, false, 3),
    (v_q, $t$Sie haben Musik komponiert$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie sind die Brüder Grimm an die Geschichten gekommen?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie haben sie im Radio gehört$t$, false, 1),
    (v_q, $t$Sie haben sie selbst erfunden$t$, false, 2),
    (v_q, $t$Sie haben mit Menschen in Dörfern gesprochen$t$, true, 3),
    (v_q, $t$Sie haben sie aus Büchern kopiert$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Von wem haben die Menschen die Geschichten gekannt?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Von ihren Großeltern$t$, true, 1),
    (v_q, $t$Von der Zeitung$t$, false, 2),
    (v_q, $t$Vom Fernsehen$t$, false, 3),
    (v_q, $t$Von der Schule$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Märchen werden im Text als Beispiele genannt?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Schneewittchen und Rapunzel$t$, false, 1),
    (v_q, $t$Hänsel und Gretel$t$, false, 2),
    (v_q, $t$Rotkäppchen und Aschenputtel$t$, true, 3),
    (v_q, $t$Der Froschkönig$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was ist mit dem großen Wörterbuch der Brüder Grimm passiert?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Es wurde verboten$t$, false, 1),
    (v_q, $t$Sie haben es schnell beendet$t$, false, 2),
    (v_q, $t$Es wurde nie begonnen$t$, false, 3),
    (v_q, $t$Sie konnten es nicht fertig machen$t$, true, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wer kennt heute die Märchen der Brüder Grimm?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Kinder auf der ganzen Welt$t$, true, 1),
    (v_q, $t$Nur deutsche Kinder$t$, false, 2),
    (v_q, $t$Nur alte Menschen$t$, false, 3),
    (v_q, $t$Niemand mehr$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum sind die Brüder Grimm noch heute berühmt?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Weil sie reich waren$t$, false, 1),
    (v_q, $t$Weil ihre Märchen bis heute bekannt sind$t$, true, 2),
    (v_q, $t$Weil sie Könige waren$t$, false, 3),
    (v_q, $t$Weil sie ein Wörterbuch beendet haben$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was zeigt der Text über die Arbeitsweise der Brüder?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie haben allein ohne den anderen gearbeitet$t$, false, 1),
    (v_q, $t$Sie haben nur zu Hause gearbeitet$t$, false, 2),
    (v_q, $t$Sie haben zuerst geschrieben und dann gesammelt$t$, false, 3),
    (v_q, $t$Sie haben zuerst gesammelt und dann aufgeschrieben$t$, true, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'das Märchen'?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$eine erfundene Geschichte$t$, true, 1),
    (v_q, $t$eine wahre Geschichte$t$, false, 2),
    (v_q, $t$ein Gedicht$t$, false, 3),
    (v_q, $t$ein Lied$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welches Wort passt: 'Sie sind durch Dörfer ___.'$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$gereist$t$, true, 1),
    (v_q, $t$geflogen$t$, false, 2),
    (v_q, $t$gefahren$t$, false, 3),
    (v_q, $t$gegangen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'das Wörterbuch'?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$ein Buch mit Wörtern und ihrer Bedeutung$t$, true, 1),
    (v_q, $t$ein Buch mit Märchen$t$, false, 2),
    (v_q, $t$ein Buch mit Bildern$t$, false, 3),
    (v_q, $t$ein Buch mit Liedern$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$'Jacob und Wilhelm ___ zusammen gearbeitet.' (Perfekt von 'arbeiten')$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$haben$t$, true, 1),
    (v_q, $t$sind$t$, false, 2),
    (v_q, $t$hatten$t$, false, 3),
    (v_q, $t$waren$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$'Die Menschen ___ ihnen Geschichten erzählt.' (Perfekt von 'erzählen')$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$haben$t$, true, 1),
    (v_q, $t$sind$t$, false, 2),
    (v_q, $t$hatten$t$, false, 3),
    (v_q, $t$waren$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie lautet das Partizip II von 'schreiben'?$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$geschrieben$t$, true, 1),
    (v_q, $t$geschreibt$t$, false, 2),
    (v_q, $t$schrieb$t$, false, 3),
    (v_q, $t$geschriebt$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$Erzähle von deinem Lieblingsmärchen oder einer Geschichte, die du als Kind gehört hast. Schreibe 3-5 Sätze.$t$, 1, 'normal', 'production', $t$Mein Lieblingsmärchen ist Rotkäppchen. Ein Mädchen geht durch den Wald zu ihrer Oma. Ein Wolf spricht mit ihr. Am Ende hilft ein Jäger. Ich habe die Geschichte als Kind sehr gemocht.$t$);

END $block$;

-- 8. Die Mauer ist gefallen
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary) VALUES (
    'A2',
    $t$Die Mauer ist gefallen$t$,
    $t$Peter war neun Jahre alt und hat 1989 in Ost-Berlin gelebt. Am 9. November hat sein Vater plötzlich das Radio angemacht. Eine Stimme hat gesagt, dass die Grenze jetzt offen ist. Peters Eltern waren sehr überrascht, weil das niemand erwartet hat. Die Familie ist schnell zur Mauer gegangen. Dort waren schon viele Menschen. Alle haben gelacht und geweint zugleich. Ein fremder Mann hat Peter auf die Schultern genommen, damit er alles sehen konnte. Danach ist die Familie zum ersten Mal nach West-Berlin gegangen. Peter hat dort bunte Geschäfte gesehen, die er nicht kannte. Seine Oma hat gesagt, dass Deutschland jetzt wieder zusammenwachsen kann. Peter erinnert sich noch heute gern an diesen besonderen Abend.$t$,
    $t$Peter avait neuf ans et vivait à Berlin-Est en 1989. Le 9 novembre, son père a soudain allumé la radio. Une voix a dit que la frontière était maintenant ouverte. Les parents de Peter ont été très surpris, car personne ne s'y attendait. La famille est vite allée au mur. Là, il y avait déjà beaucoup de gens. Tout le monde riait et pleurait à la fois. Un homme inconnu a pris Peter sur ses épaules pour qu'il puisse tout voir. Ensuite, la famille est allée pour la première fois à Berlin-Ouest. Peter y a vu des magasins colorés qu'il ne connaissait pas. Sa grand-mère a dit que l'Allemagne pouvait maintenant se réunir. Peter se souvient encore aujourd'hui avec plaisir de cette soirée particulière.$t$,
    $t${"Peter":"Peter","war":"avait/était","neun":"neuf","Jahre":"ans","alt":"âgé","und":"et","hat":"a","in":"à","Ost-Berlin":"Berlin-Est","gelebt":"vécu","Am":"le","November":"novembre","sein":"son","Vater":"père","plötzlich":"soudain","das":"la","Radio":"radio","angemacht":"allumé","Eine":"une","Stimme":"voix","gesagt":"dit","dass":"que","die":"la","Grenze":"frontière","jetzt":"maintenant","offen":"ouverte","ist":"est","Peters":"de Peter","Eltern":"parents","waren":"étaient","sehr":"très","überrascht":"surpris","weil":"parce que","niemand":"personne","erwartet":"attendu","Die":"la","Familie":"famille","schnell":"vite","zur":"au","Mauer":"mur","gegangen":"allée","Dort":"là","schon":"déjà","viele":"beaucoup de","Menschen":"gens","Alle":"tous","haben":"ont","gelacht":"ri","geweint":"pleuré","zugleich":"en même temps","Ein":"un","fremder":"étranger","Mann":"homme","auf":"sur","Schultern":"épaules","genommen":"pris","damit":"pour que","er":"il","alles":"tout","sehen":"voir","konnte":"pouvait","Danach":"ensuite","zum":"pour la","ersten":"première","Mal":"fois","nach":"à","West-Berlin":"Berlin-Ouest","dort":"là","bunte":"colorés","Geschäfte":"magasins","gesehen":"vus","nicht":"pas","kannte":"connaissait","Seine":"sa","Oma":"grand-mère","Deutschland":"Allemagne","wieder":"de nouveau","zusammenwachsen":"se réunir","kann":"peut","erinnert":"se souvient","sich":"se","noch":"encore","heute":"aujourd'hui","gern":"volontiers","an":"à","diesen":"cette","besonderen":"particulière","Abend":"soirée"}$t$::jsonb
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie alt war Peter im Jahr 1989?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Neun Jahre alt$t$, true, 1),
    (v_q, $t$Fünf Jahre alt$t$, false, 2),
    (v_q, $t$Fünfzehn Jahre alt$t$, false, 3),
    (v_q, $t$Zwanzig Jahre alt$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wo hat Peter 1989 gelebt?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$In München$t$, false, 1),
    (v_q, $t$In Ost-Berlin$t$, true, 2),
    (v_q, $t$In Hamburg$t$, false, 3),
    (v_q, $t$In West-Berlin$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum waren Peters Eltern überrascht?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Weil Peter krank war$t$, false, 1),
    (v_q, $t$Weil sie umziehen mussten$t$, false, 2),
    (v_q, $t$Weil das Radio kaputt war$t$, false, 3),
    (v_q, $t$Weil niemand die offene Grenze erwartet hat$t$, true, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wohin ist die Familie schnell gegangen?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Zur Mauer$t$, true, 1),
    (v_q, $t$Zum Bahnhof$t$, false, 2),
    (v_q, $t$Zur Schule$t$, false, 3),
    (v_q, $t$Zum Markt$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie haben die Menschen an der Mauer reagiert?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie sind schnell nach Hause gegangen$t$, false, 1),
    (v_q, $t$Sie haben gelacht und geweint$t$, true, 2),
    (v_q, $t$Sie waren traurig und still$t$, false, 3),
    (v_q, $t$Sie haben geschlafen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum hat der fremde Mann Peter auf die Schultern genommen?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Weil es dort gefährlich war$t$, false, 1),
    (v_q, $t$Weil Peter müde war$t$, false, 2),
    (v_q, $t$Damit Peter alles sehen konnte$t$, true, 3),
    (v_q, $t$Weil Peter geweint hat$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wohin ist die Familie zum ersten Mal gegangen?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Nach München$t$, false, 1),
    (v_q, $t$Nach Paris$t$, false, 2),
    (v_q, $t$Nach Ost-Berlin$t$, false, 3),
    (v_q, $t$Nach West-Berlin$t$, true, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was hat Peter in West-Berlin gesehen?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Einen Zoo$t$, false, 1),
    (v_q, $t$Bunte Geschäfte, die er nicht kannte$t$, true, 2),
    (v_q, $t$Eine neue Schule$t$, false, 3),
    (v_q, $t$Ein großes Museum$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was hat Peters Oma über die Zukunft gesagt?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Dass die Familie umziehen muss$t$, false, 1),
    (v_q, $t$Dass alles gleich bleiben wird$t$, false, 2),
    (v_q, $t$Dass die Mauer bald wieder gebaut wird$t$, false, 3),
    (v_q, $t$Dass Deutschland jetzt zusammenwachsen kann$t$, true, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'die Grenze'?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$die Trennlinie zwischen zwei Ländern$t$, true, 1),
    (v_q, $t$der Fluss$t$, false, 2),
    (v_q, $t$der Berg$t$, false, 3),
    (v_q, $t$der Wald$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welches Wort passt: 'Alle haben ___ und geweint zugleich.'$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$gelacht$t$, true, 1),
    (v_q, $t$geschlafen$t$, false, 2),
    (v_q, $t$gearbeitet$t$, false, 3),
    (v_q, $t$gegessen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'zusammenwachsen'?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$wieder eins werden$t$, true, 1),
    (v_q, $t$sich trennen$t$, false, 2),
    (v_q, $t$größer werden$t$, false, 3),
    (v_q, $t$reisen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$'Die Familie ___ schnell zur Mauer gegangen.' (Perfekt von 'gehen')$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$ist$t$, true, 1),
    (v_q, $t$hat$t$, false, 2),
    (v_q, $t$war$t$, false, 3),
    (v_q, $t$wird$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$'Sein Vater ___ plötzlich das Radio angemacht.' (Perfekt von 'anmachen')$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$hat$t$, true, 1),
    (v_q, $t$ist$t$, false, 2),
    (v_q, $t$war$t$, false, 3),
    (v_q, $t$hatte$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie lautet das Partizip II von 'sehen'?$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$gesehen$t$, true, 1),
    (v_q, $t$geseht$t$, false, 2),
    (v_q, $t$sahen$t$, false, 3),
    (v_q, $t$gesehnt$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$Beschreibe ein wichtiges historisches Ereignis, von dem du gehört hast, oder ein Ereignis, das du selbst erlebt hast. Schreibe 3-5 Sätze.$t$, 1, 'normal', 'production', $t$1989 ist die Berliner Mauer gefallen. Viele Menschen waren sehr glücklich. Sie sind zur Mauer gegangen. Familien haben sich nach vielen Jahren wiedergesehen. Das war ein wichtiger Tag für Deutschland.$t$);

END $block$;

-- 9. Ein Abend mit Bachs Musik
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary) VALUES (
    'A2',
    $t$Ein Abend mit Bachs Musik$t$,
    $t$Frau Berger liebt klassische Musik. Letzten Monat ist sie nach Leipzig gefahren, weil dort ein Bach-Konzert in der Thomaskirche war. Johann Sebastian Bach hat vor über 300 Jahren in dieser Kirche als Musiker gearbeitet. Er hat dort viele berühmte Stücke komponiert. Frau Berger hat sich einen Platz in der ersten Reihe gekauft. Das Konzert hat um 19 Uhr begonnen. Ein Chor hat gesungen, und ein Orchester hat gespielt. Frau Berger war beeindruckt, weil die Musik sehr kraftvoll war. Nach dem Konzert ist sie noch durch das Bach-Museum gegangen. Dort hat sie alte Instrumente gesehen. Sie hat auch eine CD mit Bachs Musik gekauft. Frau Berger hat gesagt, dass sie unbedingt wiederkommen möchte.$t$,
    $t$Madame Berger aime la musique classique. Le mois dernier, elle est allée à Leipzig, car il y avait là un concert de Bach dans l'église Saint-Thomas. Johann Sebastian Bach a travaillé comme musicien dans cette église il y a plus de 300 ans. Il y a composé de nombreux morceaux célèbres. Madame Berger s'était acheté une place au premier rang. Le concert a commencé à 19 heures. Un chœur a chanté, et un orchestre a joué. Madame Berger était impressionnée, car la musique était très puissante. Après le concert, elle est encore allée visiter le musée Bach. Elle y a vu de vieux instruments. Elle a aussi acheté un CD avec de la musique de Bach. Madame Berger a dit qu'elle voulait absolument revenir.$t$,
    $t${"Frau":"Madame","Berger":"Berger","liebt":"aime","klassische":"classique","Musik":"musique","Letzten":"le mois dernier","Monat":"mois","ist":"est","sie":"elle","nach":"à","Leipzig":"Leipzig","gefahren":"allée","weil":"parce que","dort":"là","ein":"un","Bach-Konzert":"concert de Bach","in":"dans","der":"la","Thomaskirche":"église Saint-Thomas","war":"était","Johann":"Johann","Sebastian":"Sebastian","Bach":"Bach","hat":"a","vor":"il y a","über":"plus de","Jahren":"ans","dieser":"cette","Kirche":"église","als":"comme","Musiker":"musicien","gearbeitet":"travaillé","Er":"Il","viele":"beaucoup de","berühmte":"célèbres","Stücke":"morceaux","komponiert":"composé","sich":"se","einen":"une","Platz":"place","ersten":"premier","Reihe":"rang","gekauft":"acheté","Das":"Le","Konzert":"concert","um":"à","Uhr":"heures","begonnen":"commencé","Ein":"Un","Chor":"chœur","gesungen":"chanté","und":"et","Orchester":"orchestre","gespielt":"joué","beeindruckt":"impressionnée","die":"la","sehr":"très","kraftvoll":"puissante","Nach":"après","dem":"le","noch":"encore","durch":"à travers","das":"le","Bach-Museum":"musée Bach","gegangen":"allée","Dort":"là","alte":"anciens","Instrumente":"instruments","gesehen":"vus","Sie":"Elle","auch":"aussi","eine":"un","CD":"CD","mit":"avec","Bachs":"de Bach","gesagt":"dit","dass":"que","unbedingt":"absolument","wiederkommen":"revenir","möchte":"voudrait"}$t$::jsonb
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wohin ist Frau Berger gefahren?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Nach Leipzig$t$, true, 1),
    (v_q, $t$Nach Berlin$t$, false, 2),
    (v_q, $t$Nach München$t$, false, 3),
    (v_q, $t$Nach Hamburg$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wo hat das Konzert stattgefunden?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Im Bach-Museum$t$, false, 1),
    (v_q, $t$In der Thomaskirche$t$, true, 2),
    (v_q, $t$Im Konzertsaal$t$, false, 3),
    (v_q, $t$Im Rathaus$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was hat Bach vor über 300 Jahren in der Thomaskirche gemacht?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er hat dort als Priester gearbeitet$t$, false, 1),
    (v_q, $t$Er hat dort Bücher geschrieben$t$, false, 2),
    (v_q, $t$Er hat dort als Musiker gearbeitet und komponiert$t$, true, 3),
    (v_q, $t$Er hat dort unterrichtet$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wo hat sich Frau Berger einen Platz gekauft?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$In der ersten Reihe$t$, true, 1),
    (v_q, $t$Ganz hinten$t$, false, 2),
    (v_q, $t$Auf der Empore$t$, false, 3),
    (v_q, $t$Neben dem Chor$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wer hat beim Konzert gesungen und gespielt?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Nur ein Sänger$t$, false, 1),
    (v_q, $t$Ein Chor und ein Orchester$t$, true, 2),
    (v_q, $t$Nur ein Orchester$t$, false, 3),
    (v_q, $t$Nur Kinder$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum war Frau Berger von dem Konzert beeindruckt?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Weil sie einen guten Platz hatte$t$, false, 1),
    (v_q, $t$Weil die Musik sehr kraftvoll war$t$, true, 2),
    (v_q, $t$Weil das Konzert kurz war$t$, false, 3),
    (v_q, $t$Weil sie Bach persönlich kannte$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wohin ist Frau Berger nach dem Konzert gegangen?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Ins Bach-Museum$t$, true, 1),
    (v_q, $t$Nach Hause$t$, false, 2),
    (v_q, $t$Ins Restaurant$t$, false, 3),
    (v_q, $t$Ins Rathaus$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was hat Frau Berger im Museum gesehen?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Alte Instrumente$t$, true, 1),
    (v_q, $t$Alte Kleidung$t$, false, 2),
    (v_q, $t$Alte Fotos$t$, false, 3),
    (v_q, $t$Alte Möbel$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was zeigt der Text über Frau Bergers Beziehung zur Musik?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie will nie wieder ein Konzert besuchen$t$, false, 1),
    (v_q, $t$Sie hat kein Interesse an Bach$t$, false, 2),
    (v_q, $t$Sie möchte unbedingt wiederkommen, weil sie begeistert war$t$, true, 3),
    (v_q, $t$Sie hat das Konzert langweilig gefunden$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'der Chor'?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$eine Gruppe von Sängern$t$, true, 1),
    (v_q, $t$ein Orchester$t$, false, 2),
    (v_q, $t$ein Instrument$t$, false, 3),
    (v_q, $t$ein Museum$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welches Wort passt: 'Frau Berger war ___, weil die Musik sehr kraftvoll war.'$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$beeindruckt$t$, true, 1),
    (v_q, $t$müde$t$, false, 2),
    (v_q, $t$traurig$t$, false, 3),
    (v_q, $t$gelangweilt$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'komponieren'?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Musik schreiben$t$, true, 1),
    (v_q, $t$Musik hören$t$, false, 2),
    (v_q, $t$Musik verkaufen$t$, false, 3),
    (v_q, $t$Musik spielen ohne Noten$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$'Frau Berger ___ nach Leipzig gefahren.' (Perfekt von 'fahren')$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$ist$t$, true, 1),
    (v_q, $t$hat$t$, false, 2),
    (v_q, $t$war$t$, false, 3),
    (v_q, $t$wird$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$'Sie ___ sich einen Platz gekauft.' (Perfekt von 'kaufen')$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$hat$t$, true, 1),
    (v_q, $t$ist$t$, false, 2),
    (v_q, $t$war$t$, false, 3),
    (v_q, $t$hatte$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie lautet das Partizip II von 'singen'?$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$gesungen$t$, true, 1),
    (v_q, $t$gesingt$t$, false, 2),
    (v_q, $t$sang$t$, false, 3),
    (v_q, $t$gesungt$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$Beschreibe ein Konzert oder eine Musikveranstaltung, die du besucht hast oder gerne besuchen würdest. Schreibe 3-5 Sätze.$t$, 1, 'normal', 'production', $t$Letztes Jahr war ich bei einem Konzert. Ein Orchester hat klassische Musik gespielt. Ich habe einen Platz in der ersten Reihe gekauft. Die Musik war sehr schön. Ich möchte wieder ein Konzert besuchen.$t$);

END $block$;

-- 10. Auf dem Weihnachtsmarkt
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary) VALUES (
    'A2',
    $t$Auf dem Weihnachtsmarkt$t$,
    $t$Tom kommt aus Kanada und hat letztes Jahr Weihnachten in Deutschland verbracht. Seine Freundin Julia hat ihn zum Weihnachtsmarkt in Nürnberg mitgenommen. Tom hat noch nie einen deutschen Weihnachtsmarkt gesehen. Auf dem Markt gab es viele kleine Holzhütten mit Lichtern. Die Leute haben heißen Glühwein getrunken, weil es sehr kalt war. Julia hat Tom Lebkuchen gekauft, ein süßes Gebäck mit Gewürzen. Danach haben sie zusammen dem Weihnachtsmann zugeschaut. Kinder haben Lieder gesungen, und eine Band hat Musik gespielt. Tom war fasziniert von den vielen bunten Ständen mit Geschenken. Julia hat erklärt, dass dieser Weihnachtsmarkt schon seit fast 400 Jahren existiert. Tom hat gesagt, dass er diese Tradition wunderschön findet. Er möchte nächstes Jahr wiederkommen.$t$,
    $t$Tom vient du Canada et a passé Noël l'année dernière en Allemagne. Sa petite amie Julia l'a emmené au marché de Noël de Nuremberg. Tom n'avait encore jamais vu de marché de Noël allemand. Sur le marché, il y avait de nombreuses petites cabanes en bois avec des lumières. Les gens buvaient du vin chaud, car il faisait très froid. Julia a acheté à Tom du pain d'épices, une pâtisserie sucrée aux épices. Ensuite, ils ont regardé ensemble le père Noël. Des enfants chantaient des chansons, et un groupe jouait de la musique. Tom était fasciné par les nombreux stands colorés remplis de cadeaux. Julia a expliqué que ce marché de Noël existe depuis presque 400 ans. Tom a dit qu'il trouvait cette tradition magnifique. Il voudrait revenir l'année prochaine.$t$,
    $t${"Tom":"Tom","kommt":"vient","aus":"du","Kanada":"Canada","und":"et","hat":"a","letztes":"l'année dernière","Jahr":"année","Weihnachten":"Noël","in":"en","Deutschland":"Allemagne","verbracht":"passé","Seine":"Sa","Freundin":"petite amie","Julia":"Julia","ihn":"l'","zum":"au","Weihnachtsmarkt":"marché de Noël","Nürnberg":"Nuremberg","mitgenommen":"emmené","noch":"encore","nie":"jamais","einen":"un","deutschen":"allemand","gesehen":"vu","Auf":"sur/au","dem":"le","Markt":"marché","gab":"il y avait","es":"il","viele":"beaucoup de","kleine":"petites","Holzhütten":"cabanes en bois","mit":"avec","Lichtern":"lumières","Die":"Les","Leute":"gens","haben":"ont","heißen":"chaud","Glühwein":"vin chaud","getrunken":"bu","weil":"parce que","sehr":"très","kalt":"froid","war":"était","Lebkuchen":"pain d'épices","gekauft":"acheté","ein":"une","süßes":"sucrée","Gebäck":"pâtisserie","Gewürzen":"épices","Danach":"ensuite","sie":"ils","zusammen":"ensemble","Weihnachtsmann":"père Noël","zugeschaut":"regardé","Kinder":"enfants","Lieder":"chansons","gesungen":"chanté","eine":"un","Band":"groupe","Musik":"musique","gespielt":"joué","fasziniert":"fasciné","von":"par","den":"les","vielen":"nombreux","bunten":"colorés","Ständen":"stands","Geschenken":"cadeaux","erklärt":"expliqué","dass":"que","dieser":"ce","schon":"déjà","seit":"depuis","fast":"presque","Jahren":"ans","existiert":"existe","gesagt":"dit","er":"il","diese":"cette","Tradition":"tradition","wunderschön":"magnifique","findet":"trouve","Er":"Il","möchte":"voudrait","nächstes":"l'année prochaine","wiederkommen":"revenir"}$t$::jsonb
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Woher kommt Tom?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Aus Kanada$t$, true, 1),
    (v_q, $t$Aus Frankreich$t$, false, 2),
    (v_q, $t$Aus Italien$t$, false, 3),
    (v_q, $t$Aus Spanien$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wer hat Tom zum Weihnachtsmarkt mitgenommen?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sein Bruder$t$, false, 1),
    (v_q, $t$Julia$t$, true, 2),
    (v_q, $t$Seine Mutter$t$, false, 3),
    (v_q, $t$Ein Kollege$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum war der Weihnachtsmarkt für Tom etwas Besonderes?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Weil er dort arbeitet$t$, false, 1),
    (v_q, $t$Weil er noch nie einen deutschen Weihnachtsmarkt gesehen hatte$t$, true, 2),
    (v_q, $t$Weil er den Markt schon gut kannte$t$, false, 3),
    (v_q, $t$Weil er Deutsch lernen musste$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was haben die Leute getrunken?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Heißen Glühwein$t$, true, 1),
    (v_q, $t$Kalten Saft$t$, false, 2),
    (v_q, $t$Tee$t$, false, 3),
    (v_q, $t$Kaffee$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was hat Julia für Tom gekauft?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Lebkuchen$t$, true, 1),
    (v_q, $t$Schokolade$t$, false, 2),
    (v_q, $t$Brot$t$, false, 3),
    (v_q, $t$Kuchen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was haben Tom und Julia gemacht, nachdem sie Lebkuchen gegessen hatten?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie sind nach Hause gefahren$t$, false, 1),
    (v_q, $t$Sie haben dem Weihnachtsmann zugeschaut$t$, true, 2),
    (v_q, $t$Sie haben eingekauft$t$, false, 3),
    (v_q, $t$Sie sind schlafen gegangen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wovon war Tom fasziniert?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Von den bunten Ständen mit Geschenken$t$, true, 1),
    (v_q, $t$Von den Autos$t$, false, 2),
    (v_q, $t$Von den Restaurants$t$, false, 3),
    (v_q, $t$Von den Zügen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie lange existiert der Weihnachtsmarkt schon?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Seit fast 400 Jahren$t$, true, 1),
    (v_q, $t$Seit 10 Jahren$t$, false, 2),
    (v_q, $t$Seit 50 Jahren$t$, false, 3),
    (v_q, $t$Seit 100 Jahren$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was zeigt der Text über Toms Meinung zur Tradition?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er findet die Tradition langweilig$t$, false, 1),
    (v_q, $t$Er findet die Tradition wunderschön und will wiederkommen$t$, true, 2),
    (v_q, $t$Er möchte nie wieder einen Weihnachtsmarkt besuchen$t$, false, 3),
    (v_q, $t$Er hat die Tradition nicht verstanden$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'der Glühwein'?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$ein warmes Getränk mit Wein und Gewürzen$t$, true, 1),
    (v_q, $t$ein kaltes Bier$t$, false, 2),
    (v_q, $t$ein süßer Kuchen$t$, false, 3),
    (v_q, $t$ein heißer Tee$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welches Wort passt: 'Julia hat Tom Lebkuchen ___.'$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$gekauft$t$, true, 1),
    (v_q, $t$gebacken$t$, false, 2),
    (v_q, $t$gesungen$t$, false, 3),
    (v_q, $t$gemalt$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'fasziniert sein von etwas'?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$etwas sehr interessant und beeindruckend finden$t$, true, 1),
    (v_q, $t$etwas langweilig finden$t$, false, 2),
    (v_q, $t$etwas nicht mögen$t$, false, 3),
    (v_q, $t$Angst vor etwas haben$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$'Julia ___ Tom zum Weihnachtsmarkt mitgenommen.' (Perfekt von 'mitnehmen')$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$hat$t$, true, 1),
    (v_q, $t$ist$t$, false, 2),
    (v_q, $t$war$t$, false, 3),
    (v_q, $t$wird$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$'Die Leute ___ heißen Glühwein getrunken.' (Perfekt von 'trinken')$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$haben$t$, true, 1),
    (v_q, $t$sind$t$, false, 2),
    (v_q, $t$hatten$t$, false, 3),
    (v_q, $t$waren$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie lautet das Partizip II von 'singen'?$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$gesungen$t$, true, 1),
    (v_q, $t$gesingt$t$, false, 2),
    (v_q, $t$sang$t$, false, 3),
    (v_q, $t$gesungt$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$Beschreibe einen Weihnachtsmarkt oder ein anderes Fest, das du besucht hast. Schreibe 3-5 Sätze.$t$, 1, 'normal', 'production', $t$Letztes Jahr war ich auf einem Weihnachtsmarkt. Es gab viele kleine Holzhütten mit Lichtern. Ich habe heißen Glühwein getrunken. Kinder haben Lieder gesungen. Es war ein schönes Fest.$t$);

END $block$;

-- 11. Beethoven zieht nach Wien
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary) VALUES (
    'A2',
    $t$Beethoven zieht nach Wien$t$,
    $t$Ludwig van Beethoven wurde 1770 in Bonn geboren. Sein Vater war Musiker und wollte, dass Ludwig auch Musiker wird. Ludwig lernte schon als kleines Kind Klavier und Violine. Mit 17 Jahren reiste er zum ersten Mal nach Wien, aber er musste schnell zurück nach Bonn, weil seine Mutter krank war. 1792, mit 21 Jahren, zog er endgültig nach Wien. Dort wollte er bei dem berühmten Komponisten Joseph Haydn lernen. In Wien gab Beethoven viele Konzerte und spielte sehr gut Klavier. Die Menschen in Wien liebten seine Musik. Er komponierte neue Stücke und wurde langsam berühmt. Wien war damals die Musikstadt Europas, und Beethoven blieb dort für den Rest seines Lebens.$t$,
    $t$Ludwig van Beethoven est né en 1770 à Bonn. Son père était musicien et voulait que Ludwig le devienne aussi. Ludwig apprit le piano et le violon dès son plus jeune âge. À 17 ans, il voyagea pour la première fois à Vienne, mais dut vite retourner à Bonn car sa mère était malade. En 1792, à 21 ans, il déménagea définitivement à Vienne. Il voulait y apprendre auprès du célèbre compositeur Joseph Haydn. À Vienne, Beethoven donna de nombreux concerts et jouait très bien du piano. Les gens de Vienne aimaient sa musique. Il composa de nouvelles œuvres et devint peu à peu célèbre. Vienne était alors la capitale musicale de l'Europe, et Beethoven y resta pour le reste de sa vie.$t$,
    $t${"Ludwig":"Ludwig","van":"van","Beethoven":"Beethoven","wurde":"est né","in":"en","Bonn":"Bonn","geboren":"né","Sein":"Son","Vater":"père","war":"était","Musiker":"musicien","und":"et","wollte":"voulait","dass":"que","auch":"aussi","wird":"devienne","lernte":"apprit","schon":"déjà","als":"dès","kleines":"petit","Kind":"enfant","Klavier":"piano","Violine":"violon","Mit":"à","Jahren":"ans","reiste":"voyagea","er":"il","zum":"pour la","ersten":"première","Mal":"fois","nach":"à","Wien":"Vienne","aber":"mais","musste":"dut","schnell":"vite","zurück":"retour","weil":"parce que","seine":"sa","Mutter":"mère","krank":"malade","mit":"à","zog":"déménagea","endgültig":"définitivement","Dort":"là","bei":"chez","dem":"le","berühmten":"célèbre","Komponisten":"compositeur","Joseph":"Joseph","Haydn":"Haydn","lernen":"apprendre","In":"à","gab":"donna","viele":"de nombreux","Konzerte":"concerts","spielte":"jouait","sehr":"très","gut":"bien","Die":"Les","Menschen":"gens","liebten":"aimaient","Musik":"musique","Er":"Il","komponierte":"composa","neue":"nouvelles","Stücke":"œuvres","langsam":"peu à peu","berühmt":"célèbre","damals":"à l'époque","die":"la","Musikstadt":"capitale musicale","Europas":"d'Europe","blieb":"resta","dort":"là","für":"pour","den":"le","Rest":"reste","seines":"de sa","Lebens":"vie"}$t$::jsonb
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wann zog Beethoven endgültig nach Wien?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$1770$t$, false, 1),
    (v_q, $t$1792$t$, true, 2),
    (v_q, $t$1750$t$, false, 3),
    (v_q, $t$1800$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum zog Beethoven 1792 nach Wien?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er wollte bei Haydn lernen.$t$, true, 1),
    (v_q, $t$Er wollte in Bonn Musik studieren.$t$, false, 2),
    (v_q, $t$Er wollte Arzt werden.$t$, false, 3),
    (v_q, $t$Er wollte seine Mutter besuchen.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was zeigt der Text darüber, warum Wien für Beethoven wichtig war?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Wien war die Musikstadt Europas, wo er lernen und berühmt werden konnte.$t$, true, 1),
    (v_q, $t$Wien war die Heimatstadt seines Vaters.$t$, false, 2),
    (v_q, $t$Wien hatte keine Musiker.$t$, false, 3),
    (v_q, $t$Wien war näher an Bonn als andere Städte.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was lernte Ludwig schon als Kind?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Klavier und Violine$t$, true, 1),
    (v_q, $t$Malen$t$, false, 2),
    (v_q, $t$Kochen$t$, false, 3),
    (v_q, $t$Tanzen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wer wollte, dass Ludwig Musiker wird?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sein Vater$t$, true, 1),
    (v_q, $t$Seine Mutter$t$, false, 2),
    (v_q, $t$Sein Lehrer$t$, false, 3),
    (v_q, $t$Joseph Haydn$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum begann Ludwig schon als kleines Kind mit Musik?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Weil sein Vater Musiker war und das wollte.$t$, true, 1),
    (v_q, $t$Weil er in Wien geboren wurde.$t$, false, 2),
    (v_q, $t$Weil seine Mutter Klavier spielte.$t$, false, 3),
    (v_q, $t$Weil er später Arzt werden wollte.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie reagierten die Menschen in Wien auf Beethovens Musik?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie liebten seine Musik.$t$, true, 1),
    (v_q, $t$Sie mochten seine Musik nicht.$t$, false, 2),
    (v_q, $t$Sie kannten ihn nicht.$t$, false, 3),
    (v_q, $t$Sie fanden seine Musik langweilig.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was geschah, nachdem Beethoven in Wien Konzerte gab?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er wurde langsam berühmt.$t$, true, 1),
    (v_q, $t$Er kehrte nach Bonn zurück.$t$, false, 2),
    (v_q, $t$Er hörte auf, Musik zu machen.$t$, false, 3),
    (v_q, $t$Er wurde Lehrer.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was kann man daraus schließen, dass Beethoven für den Rest seines Lebens in Wien blieb?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er fühlte sich in Wien als Musiker sehr wohl und erfolgreich.$t$, true, 1),
    (v_q, $t$Er konnte nicht nach Bonn zurückkehren.$t$, false, 2),
    (v_q, $t$Er mochte Bonn nicht mehr.$t$, false, 3),
    (v_q, $t$Er hatte in Wien keine Familie.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'das Klavier'?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$ein Musikinstrument mit Tasten$t$, true, 1),
    (v_q, $t$ein Streichinstrument$t$, false, 2),
    (v_q, $t$ein Blasinstrument$t$, false, 3),
    (v_q, $t$ein Trommelinstrument$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welches Wort passt: 'Ludwig ___ als kleines Kind Klavier und Violine.'$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$lernte$t$, true, 1),
    (v_q, $t$kaufte$t$, false, 2),
    (v_q, $t$verkaufte$t$, false, 3),
    (v_q, $t$vergaß$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'endgültig umziehen'?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$für immer an einen neuen Ort ziehen$t$, true, 1),
    (v_q, $t$kurz besuchen$t$, false, 2),
    (v_q, $t$zurückkommen$t$, false, 3),
    (v_q, $t$reisen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$'Ludwig van Beethoven ___ 1770 in Bonn geboren.' (Präteritum/Perfekt von 'werden')$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$wurde$t$, true, 1),
    (v_q, $t$wird$t$, false, 2),
    (v_q, $t$hat$t$, false, 3),
    (v_q, $t$ist$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$'Er ___ zum ersten Mal nach Wien.' (Präteritum von 'reisen')$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$reiste$t$, true, 1),
    (v_q, $t$reist$t$, false, 2),
    (v_q, $t$gereist$t$, false, 3),
    (v_q, $t$reisten$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie lautet das Präteritum von 'geben' in: 'Die Menschen in Wien ___ viele Konzerte'? (bezogen auf Beethoven: 'Er ___ viele Konzerte')$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$gab$t$, true, 1),
    (v_q, $t$gibt$t$, false, 2),
    (v_q, $t$gegeben$t$, false, 3),
    (v_q, $t$geben$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$Beschreibe das Leben eines berühmten Musikers oder Künstlers, den du kennst. Schreibe 3-5 Sätze.$t$, 1, 'normal', 'production', $t$Beethoven wurde in Bonn geboren. Sein Vater war Musiker. Beethoven lernte schon als Kind Klavier. Mit 21 Jahren zog er nach Wien. Dort wurde er sehr berühmt.$t$);

END $block$;

-- 12. Einsteins Schulzeit
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary) VALUES (
    'A2',
    $t$Einsteins Schulzeit$t$,
    $t$Albert Einstein wurde 1879 in Deutschland geboren. Als Kind war er in der Schule nicht immer ein guter Schüler. Er mochte Mathematik und Physik sehr, aber andere Fächer interessierten ihn nicht so sehr. Mit 15 Jahren zog seine Familie nach Italien, aber Albert blieb noch kurz in Deutschland. Später ging er in die Schweiz und besuchte dort eine Schule in Aarau. Danach studierte er Physik in Zürich. Nach dem Studium fand Albert lange keine Stelle als Lehrer. Deshalb arbeitete er einige Jahre in einem Patentamt in Bern. Die Arbeit war nicht schwer, und Albert hatte viel Zeit zum Nachdenken. In dieser Zeit schrieb er wichtige wissenschaftliche Arbeiten. Später wurde er weltberühmt.$t$,
    $t$Albert Einstein est né en 1879 en Allemagne. Enfant, il n'était pas toujours un bon élève à l'école. Il aimait beaucoup les mathématiques et la physique, mais les autres matières ne l'intéressaient pas tant. À 15 ans, sa famille déménagea en Italie, mais Albert resta encore un peu en Allemagne. Plus tard, il alla en Suisse et fréquenta une école à Aarau. Ensuite, il étudia la physique à Zurich. Après ses études, Albert ne trouva pendant longtemps aucun poste d'enseignant. C'est pourquoi il travailla quelques années dans un bureau des brevets à Berne. Le travail n'était pas difficile, et Albert avait beaucoup de temps pour réfléchir. Pendant cette période, il écrivit d'importants travaux scientifiques. Plus tard, il devint mondialement célèbre.$t$,
    $t${"Albert":"Albert","Einstein":"Einstein","wurde":"est né","in":"en","Deutschland":"Allemagne","geboren":"né","Als":"enfant","Kind":"Kind","war":"était","er":"il","der":"l'","Schule":"école","nicht":"pas","immer":"toujours","ein":"un","guter":"bon","Schüler":"élève","Er":"Il","mochte":"aimait","Mathematik":"mathématiques","und":"et","Physik":"physique","sehr":"beaucoup","aber":"mais","andere":"d'autres","Fächer":"matières","interessierten":"intéressaient","ihn":"le","so":"tellement","Mit":"à","Jahren":"ans","zog":"déménagea","seine":"sa","Familie":"famille","nach":"en","Italien":"Italie","blieb":"resta","noch":"encore","kurz":"peu de temps","Später":"plus tard","ging":"alla","die":"en","Schweiz":"Suisse","besuchte":"fréquenta","dort":"là","eine":"une","Aarau":"Aarau","Danach":"ensuite","studierte":"étudia","Zürich":"à Zurich","Nach":"après","dem":"les","Studium":"études","fand":"trouva","lange":"longtemps","keine":"aucun","Stelle":"poste","als":"comme","Lehrer":"professeur","Deshalb":"c'est pourquoi","arbeitete":"travailla","einige":"quelques","Jahre":"années","einem":"un","Patentamt":"bureau des brevets","Bern":"à Berne","Die":"Le","Arbeit":"travail","schwer":"difficile","hatte":"avait","viel":"beaucoup de","Zeit":"temps","zum":"pour","Nachdenken":"réfléchir","In":"pendant","dieser":"cette","schrieb":"écrivit","wichtige":"importants","wissenschaftliche":"scientifiques","Arbeiten":"travaux","weltberühmt":"mondialement célèbre"}$t$::jsonb
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Fächer mochte Albert Einstein in der Schule besonders?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Mathematik und Physik$t$, true, 1),
    (v_q, $t$Kunst und Musik$t$, false, 2),
    (v_q, $t$Sport und Geschichte$t$, false, 3),
    (v_q, $t$Sprachen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$War Albert Einstein in der Schule immer ein sehr guter Schüler?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Nein, nicht in allen Fächern.$t$, true, 1),
    (v_q, $t$Ja, in allen Fächern.$t$, false, 2),
    (v_q, $t$Nein, er ging nie zur Schule.$t$, false, 3),
    (v_q, $t$Ja, er war der beste Schüler.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was zeigt der Text über Einsteins Interessen als Schüler?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er interessierte sich vor allem für Naturwissenschaften, weniger für andere Fächer.$t$, true, 1),
    (v_q, $t$Er interessierte sich für alle Fächer gleich.$t$, false, 2),
    (v_q, $t$Er interessierte sich nur für Sport.$t$, false, 3),
    (v_q, $t$Er hatte kein Interesse an der Schule.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$In welchem Land besuchte Albert eine Schule in Aarau?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Schweiz$t$, true, 1),
    (v_q, $t$Italien$t$, false, 2),
    (v_q, $t$Frankreich$t$, false, 3),
    (v_q, $t$Deutschland$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was machte Albert nach der Schule in Aarau?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er studierte Physik in Zürich.$t$, true, 1),
    (v_q, $t$Er arbeitete als Lehrer.$t$, false, 2),
    (v_q, $t$Er zog nach Italien.$t$, false, 3),
    (v_q, $t$Er wurde sofort berühmt.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum ging Albert wahrscheinlich in die Schweiz, statt mit seiner Familie nach Italien zu ziehen?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er wollte dort weiter zur Schule gehen und dann studieren.$t$, true, 1),
    (v_q, $t$Er mochte Italien nicht.$t$, false, 2),
    (v_q, $t$Seine Familie zog auch in die Schweiz.$t$, false, 3),
    (v_q, $t$Er wollte in der Schweiz arbeiten.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wo arbeitete Albert Einstein einige Jahre?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$In einem Patentamt$t$, true, 1),
    (v_q, $t$In einer Schule$t$, false, 2),
    (v_q, $t$In einer Fabrik$t$, false, 3),
    (v_q, $t$In einem Krankenhaus$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum konnte Albert im Patentamt wichtige wissenschaftliche Arbeiten schreiben?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Die Arbeit war nicht schwer, und er hatte Zeit zum Nachdenken.$t$, true, 1),
    (v_q, $t$Er arbeitete dort mit anderen Wissenschaftlern.$t$, false, 2),
    (v_q, $t$Das Patentamt bezahlte ihn dafür.$t$, false, 3),
    (v_q, $t$Er hatte dort keine Arbeit.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was sagt der Text über den Weg zu Einsteins Berühmtheit?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er fand zuerst keine Lehrerstelle, arbeitete im Patentamt und wurde erst später berühmt.$t$, true, 1),
    (v_q, $t$Er wurde sofort nach der Schule berühmt.$t$, false, 2),
    (v_q, $t$Er wurde als Lehrer berühmt.$t$, false, 3),
    (v_q, $t$Er war schon als Kind weltberühmt.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'das Fach' (in der Schule)?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$ein Schulthema wie Mathematik$t$, true, 1),
    (v_q, $t$ein Klassenzimmer$t$, false, 2),
    (v_q, $t$eine Prüfung$t$, false, 3),
    (v_q, $t$eine Pause$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welches Wort passt: 'Albert ___ Mathematik und Physik sehr.'$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$mochte$t$, true, 1),
    (v_q, $t$hasste$t$, false, 2),
    (v_q, $t$vergaß$t$, false, 3),
    (v_q, $t$verkaufte$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'das Patentamt'?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$eine Behörde für Erfindungen$t$, true, 1),
    (v_q, $t$eine Schule$t$, false, 2),
    (v_q, $t$eine Bibliothek$t$, false, 3),
    (v_q, $t$ein Krankenhaus$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$'Albert Einstein ___ 1879 in Deutschland geboren.' (Präteritum von 'werden')$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$wurde$t$, true, 1),
    (v_q, $t$wird$t$, false, 2),
    (v_q, $t$hat$t$, false, 3),
    (v_q, $t$ist$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$'Später ___ er Physik in Zürich.' (Präteritum von 'studieren')$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$studierte$t$, true, 1),
    (v_q, $t$studiert$t$, false, 2),
    (v_q, $t$studierten$t$, false, 3),
    (v_q, $t$studieren$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie lautet das Präteritum von 'finden' in: 'Nach dem Studium ___ Albert lange keine Stelle'?$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$fand$t$, true, 1),
    (v_q, $t$findet$t$, false, 2),
    (v_q, $t$gefunden$t$, false, 3),
    (v_q, $t$finden$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$Beschreibe deine eigene Schulzeit oder ein Fach, das dir gefallen hat. Schreibe 3-5 Sätze.$t$, 1, 'normal', 'production', $t$In der Schule mochte ich Mathematik sehr. Andere Fächer interessierten mich nicht so sehr. Ich hatte einen guten Lehrer. Später habe ich viel gelernt. Die Schulzeit war eine wichtige Zeit für mich.$t$);

END $block$;

-- 13. Die Hanse und die Stadt Lübeck
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary) VALUES (
    'A2',
    $t$Die Hanse und die Stadt Lübeck$t$,
    $t$Im Mittelalter gab es in Norddeutschland einen wichtigen Handelsbund. Er hieß die Hanse. Viele Städte waren Mitglieder, zum Beispiel Hamburg und Lübeck. Die Kaufleute der Hanse verkauften Fisch, Holz, Salz und Tuch. Sie fuhren mit großen Schiffen über die Nord- und Ostsee. Lübeck war eine der wichtigsten Städte der Hanse und hieß deshalb 'Königin der Hanse'. Hamburg lag an der Elbe und war ein wichtiger Hafen für Schiffe aus vielen Ländern. Die Hansestädte hatten eigene Gesetze und halfen sich gegenseitig, wenn Piraten die Schiffe angriffen. Durch den Handel wurden die Städte reich, und viele schöne Häuser wurden gebaut. Auch heute noch sieht man in Lübeck und Hamburg alte Gebäude aus dieser Zeit.$t$,
    $t$Au Moyen Âge, il existait dans le nord de l'Allemagne une importante ligue commerciale. Elle s'appelait la Hanse. De nombreuses villes en étaient membres, par exemple Hambourg et Lübeck. Les marchands de la Hanse vendaient du poisson, du bois, du sel et du tissu. Ils naviguaient avec de grands navires sur la mer du Nord et la mer Baltique. Lübeck était l'une des villes les plus importantes de la Hanse et s'appelait donc « la reine de la Hanse ». Hambourg était situé sur l'Elbe et était un port important pour les navires venus de nombreux pays. Les villes hanséatiques avaient leurs propres lois et s'entraidaient quand des pirates attaquaient les navires. Grâce au commerce, les villes devinrent riches, et de nombreuses belles maisons furent construites. Aujourd'hui encore, on voit à Lübeck et à Hambourg de vieux bâtiments de cette époque.$t$,
    $t${"Im":"au","Mittelalter":"Moyen Âge","gab":"il y avait","es":"il","in":"dans","Norddeutschland":"le nord de l'Allemagne","einen":"une","wichtigen":"importante","Handelsbund":"ligue commerciale","Er":"Elle","hieß":"s'appelait","die":"la","Hanse":"Hanse","Viele":"de nombreuses","Städte":"villes","waren":"étaient","Mitglieder":"membres","zum":"par","Beispiel":"exemple","Hamburg":"Hambourg","und":"et","Lübeck":"Lübeck","Die":"Les","Kaufleute":"marchands","der":"de la","verkauften":"vendaient","Fisch":"poisson","Holz":"bois","Salz":"sel","Tuch":"tissu","Sie":"Ils","fuhren":"naviguaient","mit":"avec","großen":"grands","Schiffen":"navires","über":"sur","Nord":"la mer du Nord","Ostsee":"mer Baltique","war":"était","eine":"une","wichtigsten":"plus importantes","deshalb":"c'est pourquoi","Königin":"reine","lag":"était située","an":"sur","Elbe":"l'Elbe","ein":"un","wichtiger":"important","Hafen":"port","für":"pour","Schiffe":"navires","aus":"de","vielen":"nombreux","Ländern":"pays","Hansestädte":"villes hanséatiques","hatten":"avaient","eigene":"leurs propres","Gesetze":"lois","halfen":"s'entraidaient","sich":"se","gegenseitig":"mutuellement","wenn":"quand","Piraten":"pirates","angriffen":"attaquaient","Durch":"grâce à","den":"le","Handel":"commerce","wurden":"devinrent","reich":"riches","viele":"de nombreuses","schöne":"belles","Häuser":"maisons","gebaut":"construites","Auch":"aussi","heute":"aujourd'hui","noch":"encore","sieht":"voit","man":"on","alte":"vieux","Gebäude":"bâtiments","dieser":"de cette","Zeit":"époque"}$t$::jsonb
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was war die Hanse?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Ein Handelsbund von Städten$t$, true, 1),
    (v_q, $t$Eine Schule$t$, false, 2),
    (v_q, $t$Ein Fluss$t$, false, 3),
    (v_q, $t$Ein König$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche zwei Städte werden im Text als Mitglieder der Hanse genannt?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Hamburg und Lübeck$t$, true, 1),
    (v_q, $t$Berlin und München$t$, false, 2),
    (v_q, $t$Köln und Bonn$t$, false, 3),
    (v_q, $t$Wien und Salzburg$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum war die Hanse für Städte wie Hamburg und Lübeck wichtig?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie half beim Handel und machte die Städte reich und sicherer.$t$, true, 1),
    (v_q, $t$Sie verbot den Handel zwischen Städten.$t$, false, 2),
    (v_q, $t$Sie war nur für Bauern wichtig.$t$, false, 3),
    (v_q, $t$Sie hatte keine Bedeutung für die Städte.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was verkauften die Kaufleute der Hanse?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Fisch, Holz, Salz und Tuch$t$, true, 1),
    (v_q, $t$Autos und Computer$t$, false, 2),
    (v_q, $t$Bücher und Zeitungen$t$, false, 3),
    (v_q, $t$Blumen und Obst$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie transportierten die Kaufleute ihre Waren?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Mit großen Schiffen über die Nord- und Ostsee$t$, true, 1),
    (v_q, $t$Mit dem Zug$t$, false, 2),
    (v_q, $t$Mit dem Flugzeug$t$, false, 3),
    (v_q, $t$Zu Fuß$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum brauchten die Hansestädte eigene Gesetze und gegenseitige Hilfe?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Weil Piraten die Schiffe mit den Waren angreifen konnten.$t$, true, 1),
    (v_q, $t$Weil es keine Waren zu verkaufen gab.$t$, false, 2),
    (v_q, $t$Weil die Städte keine Häfen hatten.$t$, false, 3),
    (v_q, $t$Weil sie keine Schiffe besaßen.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie wurde Lübeck genannt?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Königin der Hanse$t$, true, 1),
    (v_q, $t$Hauptstadt Deutschlands$t$, false, 2),
    (v_q, $t$Insel der Hanse$t$, false, 3),
    (v_q, $t$Dorf der Hanse$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was geschah mit den Hansestädten durch den Handel?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie wurden reich und bauten schöne Häuser.$t$, true, 1),
    (v_q, $t$Sie wurden arm.$t$, false, 2),
    (v_q, $t$Sie verloren ihre Häfen.$t$, false, 3),
    (v_q, $t$Sie hörten auf zu handeln.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Woran kann man heute noch die Geschichte der Hanse in Lübeck und Hamburg erkennen?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$An alten Gebäuden aus dieser Zeit.$t$, true, 1),
    (v_q, $t$An modernen Wolkenkratzern.$t$, false, 2),
    (v_q, $t$Es gibt keine Spuren mehr.$t$, false, 3),
    (v_q, $t$An neuen Autobahnen.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'der Kaufmann/die Kaufleute'?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Personen, die Waren verkaufen und kaufen$t$, true, 1),
    (v_q, $t$Personen, die Schiffe bauen$t$, false, 2),
    (v_q, $t$Personen, die Fisch fangen$t$, false, 3),
    (v_q, $t$Personen, die Häuser bauen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welches Wort passt: 'Die Kaufleute ___ mit großen Schiffen über die Ostsee.'$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$fuhren$t$, true, 1),
    (v_q, $t$flogen$t$, false, 2),
    (v_q, $t$gingen$t$, false, 3),
    (v_q, $t$liefen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'der Handelsbund'?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$ein Zusammenschluss von Städten für den Handel$t$, true, 1),
    (v_q, $t$eine Stadtmauer$t$, false, 2),
    (v_q, $t$ein Fluss$t$, false, 3),
    (v_q, $t$ein Gesetz$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$'Im Mittelalter ___ es einen wichtigen Handelsbund.' (Präteritum von 'geben')$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$gab$t$, true, 1),
    (v_q, $t$gibt$t$, false, 2),
    (v_q, $t$gegeben$t$, false, 3),
    (v_q, $t$geben$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$'Die Kaufleute ___ Fisch, Holz und Salz.' (Präteritum von 'verkaufen')$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$verkauften$t$, true, 1),
    (v_q, $t$verkaufen$t$, false, 2),
    (v_q, $t$verkauft$t$, false, 3),
    (v_q, $t$verkaufte$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie lautet das Präteritum von 'helfen' in: 'Die Hansestädte ___ sich gegenseitig'?$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$halfen$t$, true, 1),
    (v_q, $t$helfen$t$, false, 2),
    (v_q, $t$geholfen$t$, false, 3),
    (v_q, $t$hilft$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$Beschreibe eine alte Stadt oder ein historisches Gebäude, das dir gefällt. Schreibe 3-5 Sätze.$t$, 1, 'normal', 'production', $t$Lübeck ist eine sehr alte Stadt. Im Mittelalter war sie Mitglied der Hanse. Die Kaufleute verkauften Fisch und Salz. Heute sieht man noch alte Häuser. Ich möchte diese Stadt gerne besuchen.$t$);

END $block$;

-- 14. Die Sage von der Loreley
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary) VALUES (
    'A2',
    $t$Die Sage von der Loreley$t$,
    $t$Am Rhein gibt es einen hohen Felsen. Er heißt Loreley. Vor langer Zeit erzählten die Menschen eine besondere Geschichte über diesen Felsen. Auf dem Felsen saß angeblich eine schöne Frau mit langen goldenen Haaren. Jeden Abend sang sie ein wunderschönes Lied. Die Schiffer auf dem Rhein hörten das Lied und schauten zu der Frau hinauf. Sie vergaßen dabei, auf den Fluss zu achten. An dieser Stelle im Rhein ist das Wasser sehr gefährlich, mit vielen Steinen unter der Oberfläche. Deshalb fuhren manche Schiffe gegen die Felsen und sanken. Die Menschen sagten, die Loreley wollte die Schiffer mit ihrem Lied verzaubern. Diese alte Sage ist bis heute sehr bekannt, und viele Touristen besuchen den Felsen am Rhein.$t$,
    $t$Sur le Rhin, il y a un haut rocher. Il s'appelle la Loreley. Il y a longtemps, les gens racontaient une histoire particulière sur ce rocher. Sur le rocher était assise, paraît-il, une belle femme aux longs cheveux dorés. Chaque soir, elle chantait une magnifique chanson. Les bateliers sur le Rhin entendaient la chanson et levaient les yeux vers la femme. Ce faisant, ils oubliaient de surveiller le fleuve. À cet endroit du Rhin, l'eau est très dangereuse, avec de nombreuses pierres sous la surface. C'est pourquoi certains bateaux heurtaient les rochers et coulaient. Les gens disaient que la Loreley voulait envoûter les bateliers avec sa chanson. Cette vieille légende est encore très connue aujourd'hui, et de nombreux touristes visitent le rocher sur le Rhin.$t$,
    $t${"Am":"sur le","Rhein":"Rhin","gibt":"il y a","es":"il","einen":"un","hohen":"haut","Felsen":"rocher","Er":"Il","heißt":"s'appelle","Loreley":"Loreley","Vor":"il y a","langer":"longtemps","Zeit":"(temps)","erzählten":"racontaient","die":"les","Menschen":"gens","eine":"une","besondere":"particulière","Geschichte":"histoire","über":"sur","diesen":"ce","Auf":"sur","dem":"le","saß":"était assise","angeblich":"paraît-il","schöne":"belle","Frau":"femme","mit":"aux","langen":"longs","goldenen":"dorés","Haaren":"cheveux","Jeden":"chaque","Abend":"soir","sang":"chantait","sie":"elle","ein":"une","wunderschönes":"magnifique","Lied":"chanson","Die":"Les","Schiffer":"bateliers","auf":"sur","hörten":"entendaient","das":"la","und":"et","schauten":"regardaient","zu":"vers","der":"la","hinauf":"en haut","Sie":"Ils","vergaßen":"oubliaient","dabei":"ce faisant","den":"le","Fluss":"fleuve","achten":"surveiller","An":"à","dieser":"cet","Stelle":"endroit","im":"dans le","ist":"est","Wasser":"eau","sehr":"très","gefährlich":"dangereuse","vielen":"nombreuses","Steinen":"pierres","unter":"sous","Oberfläche":"surface","Deshalb":"c'est pourquoi","fuhren":"heurtaient","manche":"certains","Schiffe":"bateaux","gegen":"contre","sanken":"coulaient","sagten":"disaient","wollte":"voulait","ihrem":"sa","verzaubern":"envoûter","Diese":"cette","alte":"vieille","Sage":"légende","bis":"jusqu'à","heute":"aujourd'hui","bekannt":"connue","viele":"de nombreux","Touristen":"touristes","besuchen":"visitent","am":"au"}$t$::jsonb
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was saß angeblich auf dem Loreley-Felsen?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Eine schöne Frau$t$, true, 1),
    (v_q, $t$Ein König$t$, false, 2),
    (v_q, $t$Ein großer Vogel$t$, false, 3),
    (v_q, $t$Ein alter Fischer$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was machte die Frau auf dem Felsen jeden Abend?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie sang ein wunderschönes Lied.$t$, true, 1),
    (v_q, $t$Sie fischte im Rhein.$t$, false, 2),
    (v_q, $t$Sie schlief den ganzen Tag.$t$, false, 3),
    (v_q, $t$Sie baute ein Boot.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum ist die Frau auf dem Felsen ein zentraler Teil der Sage?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Ihr Gesang lenkte die Schiffer ab und führte zur Gefahr.$t$, true, 1),
    (v_q, $t$Sie half den Schiffern, sicher zu fahren.$t$, false, 2),
    (v_q, $t$Sie baute den Felsen selbst.$t$, false, 3),
    (v_q, $t$Sie war eine echte historische Königin.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum war die Stelle im Rhein gefährlich?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Das Wasser hatte viele Steine unter der Oberfläche.$t$, true, 1),
    (v_q, $t$Der Fluss war zu breit.$t$, false, 2),
    (v_q, $t$Es gab dort keine Schiffe.$t$, false, 3),
    (v_q, $t$Das Wasser war zu warm.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum achteten die Schiffer manchmal nicht auf den Fluss?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie hörten das Lied und schauten zu der Frau.$t$, true, 1),
    (v_q, $t$Sie schliefen während der Fahrt.$t$, false, 2),
    (v_q, $t$Sie hatten keine Karte.$t$, false, 3),
    (v_q, $t$Sie fuhren immer sehr langsam.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was will die Sage über die Gefahr am Loreley-Felsen erklären?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie erklärt die gefährliche Stelle im Fluss mit dem Lied der Frau.$t$, true, 1),
    (v_q, $t$Sie erklärt, warum es dort keine Fische gibt.$t$, false, 2),
    (v_q, $t$Sie erklärt, wie der Rhein entstanden ist.$t$, false, 3),
    (v_q, $t$Sie erklärt, warum Touristen den Felsen nicht besuchen.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was passierte manchmal mit den Schiffen an dieser Stelle?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie fuhren gegen die Felsen und sanken.$t$, true, 1),
    (v_q, $t$Sie fuhren schneller.$t$, false, 2),
    (v_q, $t$Sie kehrten um.$t$, false, 3),
    (v_q, $t$Sie wurden repariert.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie bekannt ist die Sage von der Loreley heute?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sehr bekannt, viele Touristen besuchen den Felsen.$t$, true, 1),
    (v_q, $t$Niemand kennt die Geschichte mehr.$t$, false, 2),
    (v_q, $t$Nur wenige Menschen in Deutschland kennen sie.$t$, false, 3),
    (v_q, $t$Sie wurde erst vor kurzem erfunden.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was zeigt der große Erfolg der Loreley-Sage bis heute?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Alte Geschichten über den Rhein faszinieren die Menschen noch immer.$t$, true, 1),
    (v_q, $t$Der Rhein ist heute nicht mehr gefährlich.$t$, false, 2),
    (v_q, $t$Touristen interessieren sich nicht für Sagen.$t$, false, 3),
    (v_q, $t$Die Sage wurde vergessen und neu geschrieben.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'der Felsen'?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$ein großer Stein oder Berg$t$, true, 1),
    (v_q, $t$ein Fluss$t$, false, 2),
    (v_q, $t$ein Schiff$t$, false, 3),
    (v_q, $t$eine Insel$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welches Wort passt: 'Die Schiffer ___ das Lied und schauten zu der Frau hinauf.'$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$hörten$t$, true, 1),
    (v_q, $t$sangen$t$, false, 2),
    (v_q, $t$spielten$t$, false, 3),
    (v_q, $t$vergaßen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'verzaubern'?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$mit magischer Kraft beeinflussen$t$, true, 1),
    (v_q, $t$erschrecken$t$, false, 2),
    (v_q, $t$enttäuschen$t$, false, 3),
    (v_q, $t$überraschen ohne Magie$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$'Auf dem Felsen ___ angeblich eine schöne Frau.' (Präteritum von 'sitzen')$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$saß$t$, true, 1),
    (v_q, $t$sitzt$t$, false, 2),
    (v_q, $t$gesessen$t$, false, 3),
    (v_q, $t$sitzen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$'Jeden Abend ___ sie ein wunderschönes Lied.' (Präteritum von 'singen')$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$sang$t$, true, 1),
    (v_q, $t$singt$t$, false, 2),
    (v_q, $t$gesungen$t$, false, 3),
    (v_q, $t$singen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie lautet das Präteritum von 'vergessen' in: 'Sie ___ dabei, auf den Fluss zu achten'?$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$vergaßen$t$, true, 1),
    (v_q, $t$vergessen$t$, false, 2),
    (v_q, $t$vergisst$t$, false, 3),
    (v_q, $t$vergesst$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$Erzähle eine alte Sage oder Legende, die du kennst, oder erfinde eine kurze Geschichte über einen besonderen Ort. Schreibe 3-5 Sätze.$t$, 1, 'normal', 'production', $t$Am Rhein gibt es die Sage von der Loreley. Eine schöne Frau saß auf einem Felsen. Sie sang jeden Abend ein Lied. Die Schiffer vergaßen dabei den Fluss. Diese Sage ist noch heute bekannt.$t$);

END $block$;

-- 15. Karl Benz und das erste Auto
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary) VALUES (
    'A2',
    $t$Karl Benz und das erste Auto$t$,
    $t$Karl Benz wurde 1844 in Deutschland geboren. Er interessierte sich schon als junger Mann für Maschinen und Technik. Benz arbeitete viele Jahre an einem neuen Fahrzeug ohne Pferde. Er wollte eine Maschine bauen, die sich mit einem Motor bewegt. 1885 baute er endlich sein erstes Auto mit drei Rädern. Es hatte einen kleinen Benzinmotor. Im Jahr 1886 bekam er ein Patent für seine Erfindung. Viele Menschen glaubten zuerst nicht, dass das Auto nützlich sein könnte. Seine Frau Bertha Benz half ihm sehr. Sie fuhr mit dem Auto eine lange Strecke, um zu zeigen, dass es wirklich funktionierte. Diese Fahrt machte das Auto bekannt. Heute gilt Karl Benz als einer der Erfinder des modernen Automobils.$t$,
    $t$Karl Benz est né en 1844 en Allemagne. Déjà jeune homme, il s'intéressait aux machines et à la technique. Benz travailla pendant de nombreuses années sur un nouveau véhicule sans chevaux. Il voulait construire une machine qui se déplacerait avec un moteur. En 1885, il construisit enfin sa première voiture à trois roues. Elle avait un petit moteur à essence. En 1886, il obtint un brevet pour son invention. Beaucoup de gens ne croyaient d'abord pas que la voiture puisse être utile. Sa femme Bertha Benz l'aida beaucoup. Elle parcourut une longue distance avec la voiture pour montrer qu'elle fonctionnait vraiment. Ce trajet rendit la voiture célèbre. Aujourd'hui, Karl Benz est considéré comme l'un des inventeurs de l'automobile moderne.$t$,
    $t${"Karl":"Karl","Benz":"Benz","wurde":"est né","in":"en","Deutschland":"Allemagne","geboren":"né","Er":"Il","interessierte":"s'intéressait","sich":"se","schon":"déjà","als":"comme","junger":"jeune","Mann":"homme","für":"à","Maschinen":"machines","und":"et","Technik":"la technique","arbeitete":"travailla","viele":"de nombreuses","Jahre":"années","an":"sur","einem":"un","neuen":"nouveau","Fahrzeug":"véhicule","ohne":"sans","Pferde":"chevaux","wollte":"voulait","eine":"une","Maschine":"machine","bauen":"construire","die":"qui","mit":"avec","Motor":"moteur","bewegt":"se déplace","baute":"construisit","er":"il","endlich":"enfin","sein":"sa","erstes":"première","Auto":"voiture","drei":"trois","Rädern":"roues","Es":"Elle","hatte":"avait","einen":"un","kleinen":"petit","Benzinmotor":"moteur à essence","Im":"en","Jahr":"année","bekam":"obtint","ein":"un","Patent":"brevet","seine":"son","Erfindung":"invention","Viele":"beaucoup de","Menschen":"gens","glaubten":"croyaient","zuerst":"d'abord","nicht":"pas","dass":"que","das":"la","nützlich":"utile","könnte":"pourrait","Seine":"Sa","Frau":"femme","Bertha":"Bertha","half":"aida","ihm":"le","sehr":"beaucoup","Sie":"Elle","fuhr":"parcourut","dem":"la","lange":"longue","Strecke":"distance","um":"pour","zu":"à","zeigen":"montrer","es":"qu'elle","wirklich":"vraiment","funktionierte":"fonctionnait","Diese":"ce","Fahrt":"trajet","machte":"rendit","bekannt":"célèbre","Heute":"aujourd'hui","gilt":"est considéré","einer":"l'un","der":"des","Erfinder":"inventeurs","des":"de l'","modernen":"moderne","Automobils":"automobile"}$t$::jsonb
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie viele Räder hatte Karl Benz' erstes Auto?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Drei$t$, true, 1),
    (v_q, $t$Zwei$t$, false, 2),
    (v_q, $t$Vier$t$, false, 3),
    (v_q, $t$Fünf$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wann baute Karl Benz sein erstes Auto?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$1885$t$, true, 1),
    (v_q, $t$1844$t$, false, 2),
    (v_q, $t$1900$t$, false, 3),
    (v_q, $t$1870$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was war an Karl Benz' erstem Auto besonders neu?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Es bewegte sich mit einem Benzinmotor statt mit Pferden.$t$, true, 1),
    (v_q, $t$Es hatte vier große Räder.$t$, false, 2),
    (v_q, $t$Es fuhr mit Dampf.$t$, false, 3),
    (v_q, $t$Es wurde von einem Pferd gezogen.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wann bekam Karl Benz das Patent für sein Auto?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$1886$t$, true, 1),
    (v_q, $t$1844$t$, false, 2),
    (v_q, $t$1900$t$, false, 3),
    (v_q, $t$1850$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie reagierten viele Menschen zuerst auf das Auto?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie glaubten nicht, dass es nützlich sein könnte.$t$, true, 1),
    (v_q, $t$Sie kauften sofort ein Auto.$t$, false, 2),
    (v_q, $t$Sie freuten sich sehr.$t$, false, 3),
    (v_q, $t$Sie bauten selbst Autos.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was zeigt die anfängliche Reaktion der Menschen auf Benz' Erfindung?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Neue Erfindungen werden nicht immer sofort akzeptiert.$t$, true, 1),
    (v_q, $t$Das Auto war von Anfang an sehr beliebt.$t$, false, 2),
    (v_q, $t$Die Menschen kannten Autos schon lange.$t$, false, 3),
    (v_q, $t$Benz bekam sofort viel Geld für seine Erfindung.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wer half Karl Benz sehr bei seiner Erfindung?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Seine Frau Bertha$t$, true, 1),
    (v_q, $t$Sein Bruder$t$, false, 2),
    (v_q, $t$Sein Lehrer$t$, false, 3),
    (v_q, $t$Ein Freund$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was machte Bertha Benz, um das Auto bekannt zu machen?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie fuhr eine lange Strecke mit dem Auto.$t$, true, 1),
    (v_q, $t$Sie schrieb ein Buch über das Auto.$t$, false, 2),
    (v_q, $t$Sie verkaufte das Auto.$t$, false, 3),
    (v_q, $t$Sie baute ein zweites Auto.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum war Bertha Benz' Fahrt für die Geschichte des Autos wichtig?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie bewies, dass das Auto wirklich funktionierte, und machte es bekannt.$t$, true, 1),
    (v_q, $t$Sie fand einen Fehler im Motor.$t$, false, 2),
    (v_q, $t$Sie verkaufte das Patent.$t$, false, 3),
    (v_q, $t$Sie fuhr nur zum Vergnügen.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'die Erfindung'?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$etwas Neues, das jemand geschaffen hat$t$, true, 1),
    (v_q, $t$ein altes Werkzeug$t$, false, 2),
    (v_q, $t$ein Fahrzeug ohne Motor$t$, false, 3),
    (v_q, $t$ein Patentamt$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welches Wort passt: 'Bertha Benz ___ mit dem Auto eine lange Strecke.'$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$fuhr$t$, true, 1),
    (v_q, $t$flog$t$, false, 2),
    (v_q, $t$ging$t$, false, 3),
    (v_q, $t$lief$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'ein Patent bekommen'?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$ein offizielles Recht auf eine Erfindung erhalten$t$, true, 1),
    (v_q, $t$ein Auto kaufen$t$, false, 2),
    (v_q, $t$eine Prüfung bestehen$t$, false, 3),
    (v_q, $t$einen Preis gewinnen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$'Karl Benz ___ 1844 in Deutschland geboren.' (Präteritum von 'werden')$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$wurde$t$, true, 1),
    (v_q, $t$wird$t$, false, 2),
    (v_q, $t$hat$t$, false, 3),
    (v_q, $t$ist$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$'1885 ___ er endlich sein erstes Auto.' (Präteritum von 'bauen')$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$baute$t$, true, 1),
    (v_q, $t$baut$t$, false, 2),
    (v_q, $t$gebaut$t$, false, 3),
    (v_q, $t$bauten$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie lautet das Präteritum von 'glauben' in: 'Viele Menschen ___ zuerst nicht, dass das Auto nützlich sein könnte'?$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$glaubten$t$, true, 1),
    (v_q, $t$glauben$t$, false, 2),
    (v_q, $t$geglaubt$t$, false, 3),
    (v_q, $t$glaubt$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$Beschreibe eine wichtige Erfindung und warum sie wichtig ist. Schreibe 3-5 Sätze.$t$, 1, 'normal', 'production', $t$Karl Benz baute 1885 das erste Auto. Es hatte drei Räder und einen kleinen Motor. Seine Frau Bertha half ihm sehr. Sie fuhr eine lange Strecke mit dem Auto. Heute ist das Auto sehr wichtig für uns.$t$);

END $block$;

-- 16. Martin Luther auf der Wartburg
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary) VALUES (
    'A2',
    $t$Martin Luther auf der Wartburg$t$,
    $t$Martin Luther war ein Mönch aus Deutschland. Er lebte vor über 500 Jahren. Luther hatte viele Fragen über die Kirche. Er wollte, dass alle Menschen die Bibel lesen konnten. Aber die Bibel war nur auf Latein geschrieben. Normale Leute verstanden kein Latein.
Im Jahr 1521 versteckte sich Luther auf der Wartburg, einer Burg in Thüringen. Dort arbeitete er Tag und Nacht. In nur elf Wochen übersetzte er das Neue Testament ins Deutsche. Seine Sprache war einfach und klar. Viele Menschen konnten die Bibel jetzt zum ersten Mal verstehen.
Luthers Übersetzung war sehr wichtig für die deutsche Sprache. Viele Wörter und Sätze aus seiner Bibel benutzen die Deutschen noch heute. Die Wartburg kann man auch heute besuchen.$t$,
    $t$Martin Luther était un moine allemand. Il vécut il y a plus de 500 ans. Luther avait de nombreuses questions sur l'Église. Il voulait que tous les gens puissent lire la Bible. Mais la Bible n'était écrite qu'en latin. Les gens ordinaires ne comprenaient pas le latin.
En 1521, Luther se cacha à la Wartbourg, un château fort en Thuringe. Là, il travailla jour et nuit. En seulement onze semaines, il traduisit le Nouveau Testament en allemand. Sa langue était simple et claire. Beaucoup de gens purent alors comprendre la Bible pour la première fois.
La traduction de Luther fut très importante pour la langue allemande. Beaucoup de mots et de phrases de sa Bible sont encore utilisés aujourd'hui par les Allemands. On peut aussi visiter la Wartbourg aujourd'hui.$t$,
    $t${"Martin":"Martin","Luther":"Luther","war":"était","ein":"un","Mönch":"moine","aus":"d'","Deutschland":"Allemagne","Er":"Il","lebte":"vécut","vor":"il y a","über":"plus de","Jahren":"ans","hatte":"avait","viele":"beaucoup de","Fragen":"questions","die":"l'","Kirche":"Église","wollte":"voulait","dass":"que","alle":"tous les","Menschen":"gens","Bibel":"Bible","lesen":"lire","konnten":"puissent","Aber":"mais","nur":"seulement","auf":"en","Latein":"latin","geschrieben":"écrite","Normale":"les gens ordinaires","Leute":"gens","verstanden":"comprenaient","kein":"aucun","Im":"en","Jahr":"l'an","versteckte":"cacha","sich":"se","der":"la","Wartburg":"Wartbourg","einer":"un","Burg":"château fort","in":"en","Thüringen":"Thuringe","Dort":"là","arbeitete":"travailla","er":"il","Tag":"jour","und":"et","Nacht":"nuit","In":"en","elf":"onze","Wochen":"semaines","übersetzte":"traduisit","das":"le","Neue":"Nouveau","Testament":"Testament","ins":"en","Deutsche":"allemand","Seine":"Sa","Sprache":"langue","einfach":"simple","klar":"claire","Viele":"beaucoup","jetzt":"maintenant","zum":"pour la","ersten":"première","Mal":"fois","verstehen":"comprendre","Luthers":"de Luther","Übersetzung":"traduction","sehr":"très","wichtig":"importante","für":"pour","deutsche":"la langue allemande","Wörter":"mots","Sätze":"phrases","seiner":"de sa","benutzen":"utilisent","Deutschen":"Allemands","noch":"encore","heute":"aujourd'hui","Die":"La","kann":"peut","man":"on","auch":"aussi","besuchen":"visiter"}$t$::jsonb
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was war Martin Luther von Beruf?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Ein Mönch$t$, true, 1),
    (v_q, $t$Ein König$t$, false, 2),
    (v_q, $t$Ein Bäcker$t$, false, 3),
    (v_q, $t$Ein Arzt$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Woher kam Martin Luther?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Aus Deutschland$t$, true, 1),
    (v_q, $t$Aus Frankreich$t$, false, 2),
    (v_q, $t$Aus Italien$t$, false, 3),
    (v_q, $t$Aus England$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum hatte Luther Fragen über die Kirche?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Weil er viele Fragen über die Kirche hatte$t$, true, 1),
    (v_q, $t$Weil er reich werden wollte$t$, false, 2),
    (v_q, $t$Weil er König werden wollte$t$, false, 3),
    (v_q, $t$Weil er die Wartburg kaufen wollte$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wo versteckte sich Luther?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Auf der Wartburg$t$, true, 1),
    (v_q, $t$Im Kölner Dom$t$, false, 2),
    (v_q, $t$In München$t$, false, 3),
    (v_q, $t$In Berlin$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$In welchem Bundesland liegt die Wartburg?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$In Thüringen$t$, true, 1),
    (v_q, $t$In Bayern$t$, false, 2),
    (v_q, $t$In Sachsen$t$, false, 3),
    (v_q, $t$In Hessen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie lange brauchte Luther, um das Neue Testament zu übersetzen?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Elf Wochen$t$, true, 1),
    (v_q, $t$Ein Jahr$t$, false, 2),
    (v_q, $t$Ein Monat$t$, false, 3),
    (v_q, $t$Zehn Jahre$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$In welche Sprache übersetzte Luther die Bibel?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Ins Deutsche$t$, true, 1),
    (v_q, $t$Ins Englische$t$, false, 2),
    (v_q, $t$Ins Französische$t$, false, 3),
    (v_q, $t$Ins Lateinische$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum konnten normale Leute die Bibel vorher nicht lesen?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Weil sie nur auf Latein war$t$, true, 1),
    (v_q, $t$Weil sie zu teuer war$t$, false, 2),
    (v_q, $t$Weil sie verboten war$t$, false, 3),
    (v_q, $t$Weil es keine Bibel gab$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was benutzen die Deutschen noch heute aus Luthers Bibel?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Viele Wörter und Sätze$t$, true, 1),
    (v_q, $t$Nur den Titel$t$, false, 2),
    (v_q, $t$Nichts mehr$t$, false, 3),
    (v_q, $t$Nur die Bilder$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'der Mönch'?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Ein Mann, der in einem Kloster lebt$t$, true, 1),
    (v_q, $t$Ein König$t$, false, 2),
    (v_q, $t$Ein Lehrer$t$, false, 3),
    (v_q, $t$Ein Bäcker$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welches Wort passt: 'Martin Luther war ein ___.'$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Mönch$t$, true, 1),
    (v_q, $t$Fisch$t$, false, 2),
    (v_q, $t$Tisch$t$, false, 3),
    (v_q, $t$Berg$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was ist ein Synonym für 'sich verstecken'?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$sich verbergen$t$, true, 1),
    (v_q, $t$sich freuen$t$, false, 2),
    (v_q, $t$sich waschen$t$, false, 3),
    (v_q, $t$sich setzen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wähle die richtige Form: Luther ___ die Bibel übersetzt.$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$hat$t$, true, 1),
    (v_q, $t$ist$t$, false, 2),
    (v_q, $t$war$t$, false, 3),
    (v_q, $t$wird$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Perfekt von 'übersetzen' (er-Form): Er ___ die Bibel ___.$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$hat / übersetzt$t$, true, 1),
    (v_q, $t$ist / übersetzt$t$, false, 2),
    (v_q, $t$hat / übersetzte$t$, false, 3),
    (v_q, $t$war / übersetzt$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wähle die korrekte Präteritumform von 'arbeiten': Luther ___ Tag und Nacht.$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$arbeitete$t$, true, 1),
    (v_q, $t$arbeitet$t$, false, 2),
    (v_q, $t$hat gearbeitet$t$, false, 3),
    (v_q, $t$arbeiten$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$Schreibe 3-5 einfache Sätze über Martin Luther und die Wartburg.$t$, 1, 'normal', 'production', $t$Martin Luther war ein Mönch. Er versteckte sich auf der Wartburg. Dort übersetzte er die Bibel ins Deutsche. Die Arbeit dauerte elf Wochen. Viele Menschen konnten die Bibel danach lesen.$t$);

END $block$;

-- 17. Der Kölner Dom
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary) VALUES (
    'A2',
    $t$Der Kölner Dom$t$,
    $t$Der Kölner Dom ist eine berühmte Kirche in Köln. Die Bauarbeiter begannen den Bau im Jahr 1248. Der Dom sollte sehr groß und schön werden. Aber der Bau dauerte sehr lange.
Nach einigen Jahrhunderten hatten die Menschen kein Geld mehr. Die Arbeit stoppte. Viele Jahre lang stand der Dom nur halb fertig da. Ein großer Baukran blieb lange Zeit auf dem Turm stehen.
Im 19. Jahrhundert fanden Architekten die alten Baupläne wieder. Die Menschen in Köln sammelten Geld für den Bau. Endlich, im Jahr 1880, war der Dom fertig. Der Bau hatte also mehr als 600 Jahre gedauert!
Heute ist der Kölner Dom ein Wahrzeichen von Deutschland. Jedes Jahr besuchen Millionen Touristen die Kirche. Man kann auch die Türme besteigen und die Stadt von oben sehen.$t$,
    $t$La cathédrale de Cologne est une église célèbre à Cologne. Les ouvriers commencèrent la construction en 1248. La cathédrale devait être très grande et belle. Mais la construction dura très longtemps.
Après quelques siècles, les gens n'avaient plus d'argent. Les travaux s'arrêtèrent. Pendant de nombreuses années, la cathédrale resta debout, seulement à moitié terminée. Une grande grue de chantier resta longtemps posée sur la tour.
Au XIXe siècle, des architectes retrouvèrent les anciens plans de construction. Les habitants de Cologne collectèrent de l'argent pour la construction. Enfin, en 1880, la cathédrale fut terminée. La construction avait donc duré plus de 600 ans !
Aujourd'hui, la cathédrale de Cologne est un symbole de l'Allemagne. Chaque année, des millions de touristes visitent l'église. On peut aussi gravir les tours et voir la ville d'en haut.$t$,
    $t${"Der":"La","Kölner":"de Cologne","Dom":"cathédrale","ist":"est","eine":"une","berühmte":"célèbre","Kirche":"église","in":"à","Köln":"Cologne","Die":"Les","Bauarbeiter":"ouvriers","begannen":"commencèrent","den":"la","Bau":"construction","im":"en","Jahr":"l'année","sollte":"devait","sehr":"très","groß":"grande","und":"et","schön":"belle","werden":"devenir","Aber":"mais","der":"la","dauerte":"dura","lange":"longtemps","Nach":"après","einigen":"quelques","Jahrhunderten":"siècles","hatten":"avaient","die":"les","Menschen":"gens","kein":"plus d'","Geld":"argent","mehr":"plus","Arbeit":"travail","stoppte":"s'arrêta","Viele":"de nombreuses","Jahre":"années","lang":"pendant","stand":"se dressait","nur":"seulement","halb":"à moitié","fertig":"terminée","da":"là","Ein":"une","großer":"grande","Baukran":"grue de chantier","blieb":"resta","Zeit":"temps","auf":"sur","dem":"la","Turm":"tour","stehen":"se tenir","Im":"au","Jahrhundert":"siècle","fanden":"retrouvèrent","Architekten":"architectes","alten":"anciens","Baupläne":"plans de construction","wieder":"à nouveau","sammelten":"collectèrent","für":"pour","Endlich":"enfin","war":"était","hatte":"avait","also":"donc","als":"après","gedauert":"duré","Heute":"aujourd'hui","ein":"un","Wahrzeichen":"symbole","von":"de l'","Deutschland":"Allemagne","Jedes":"chaque","besuchen":"visitent","Millionen":"des millions de","Touristen":"touristes","Man":"on","kann":"peut","auch":"aussi","Türme":"tours","besteigen":"gravir","Stadt":"ville","oben":"d'en haut","sehen":"voir"}$t$::jsonb
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$In welcher Stadt steht der Dom?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$In Köln$t$, true, 1),
    (v_q, $t$In Berlin$t$, false, 2),
    (v_q, $t$In München$t$, false, 3),
    (v_q, $t$In Hamburg$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wann begannen die Bauarbeiter mit dem Bau?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$1248$t$, true, 1),
    (v_q, $t$1880$t$, false, 2),
    (v_q, $t$1521$t$, false, 3),
    (v_q, $t$1900$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was wollten die Menschen mit dem Bau erreichen?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Eine sehr große und schöne Kirche$t$, true, 1),
    (v_q, $t$Ein kleines Museum$t$, false, 2),
    (v_q, $t$Ein Schloss$t$, false, 3),
    (v_q, $t$Eine Brücke$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was fehlte den Menschen nach einigen Jahrhunderten?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Geld$t$, true, 1),
    (v_q, $t$Zeit$t$, false, 2),
    (v_q, $t$Wasser$t$, false, 3),
    (v_q, $t$Steine$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was stand lange Zeit auf dem halb fertigen Turm?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Ein Baukran$t$, true, 1),
    (v_q, $t$Eine Glocke$t$, false, 2),
    (v_q, $t$Eine Statue$t$, false, 3),
    (v_q, $t$Eine Fahne$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was fanden Architekten im 19. Jahrhundert wieder?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Die alten Baupläne$t$, true, 1),
    (v_q, $t$Eine neue Kirche$t$, false, 2),
    (v_q, $t$Einen Schatz$t$, false, 3),
    (v_q, $t$Ein altes Buch$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wann war der Dom endlich fertig?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$1880$t$, true, 1),
    (v_q, $t$1248$t$, false, 2),
    (v_q, $t$1521$t$, false, 3),
    (v_q, $t$1750$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie lange dauerte der Bau insgesamt?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Mehr als 600 Jahre$t$, true, 1),
    (v_q, $t$100 Jahre$t$, false, 2),
    (v_q, $t$50 Jahre$t$, false, 3),
    (v_q, $t$10 Jahre$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was können Besucher im Dom heute machen?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Die Türme besteigen$t$, true, 1),
    (v_q, $t$Im Dom schwimmen$t$, false, 2),
    (v_q, $t$Im Dom übernachten$t$, false, 3),
    (v_q, $t$Im Dom Fußball spielen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'das Wahrzeichen'?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Ein bekanntes Symbol einer Stadt$t$, true, 1),
    (v_q, $t$Ein kleines Geschenk$t$, false, 2),
    (v_q, $t$Ein Brief$t$, false, 3),
    (v_q, $t$Ein Ausweis$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welches Wort passt: Der Kölner Dom ist ein ___ von Deutschland.$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Wahrzeichen$t$, true, 1),
    (v_q, $t$Frühstück$t$, false, 2),
    (v_q, $t$Fahrrad$t$, false, 3),
    (v_q, $t$Wetter$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welches Wort ist kein Synonym für 'berühmt'?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$unbekannt$t$, true, 1),
    (v_q, $t$bekannt$t$, false, 2),
    (v_q, $t$populär$t$, false, 3),
    (v_q, $t$weltbekannt$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Der Bau ___ sehr lange. (dauern)$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$dauerte$t$, true, 1),
    (v_q, $t$dauert$t$, false, 2),
    (v_q, $t$hat gedauert$t$, false, 3),
    (v_q, $t$dauern$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wähle die richtige Perfektform: Der Bau ___ über 600 Jahre gedauert.$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$hat$t$, true, 1),
    (v_q, $t$ist$t$, false, 2),
    (v_q, $t$war$t$, false, 3),
    (v_q, $t$wird$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wähle die korrekte Form von 'stehen' im Präteritum: Der Dom ___ lange halb fertig da.$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$stand$t$, true, 1),
    (v_q, $t$stehte$t$, false, 2),
    (v_q, $t$hat gestanden$t$, false, 3),
    (v_q, $t$steht$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$Schreibe 3-5 Sätze über den Bau des Kölner Doms.$t$, 1, 'normal', 'production', $t$Der Bau vom Kölner Dom begann im Jahr 1248. Der Bau dauerte sehr lange. Manchmal hatten die Menschen kein Geld mehr. Im Jahr 1880 war der Dom endlich fertig. Heute besuchen viele Touristen den Dom.$t$);

END $block$;

-- 18. Das Oktoberfest in München
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary) VALUES (
    'A2',
    $t$Das Oktoberfest in München$t$,
    $t$Das Oktoberfest ist das größte Volksfest der Welt. Es findet jedes Jahr in München statt. Die Geschichte begann im Jahr 1810. Damals heiratete der bayerische Kronprinz Ludwig die Prinzessin Therese. Die Stadt München feierte die Hochzeit mit einem großen Pferderennen auf einer Wiese.
Die Wiese heißt bis heute Theresienwiese. Den Menschen gefiel das Fest so gut, dass sie es jedes Jahr wiederholten. Später kamen Bierzelte, Fahrgeschäfte und Musik dazu.
Heute dauert das Oktoberfest ungefähr zwei Wochen im September und Oktober. Millionen Besucher aus der ganzen Welt kommen nach München. Sie tragen oft eine Tracht: Männer eine Lederhose, Frauen ein Dirndl. In den großen Zelten trinken die Leute Bier aus riesigen Krügen und essen Brezeln.
Das Oktoberfest zeigt bayerische Traditionen und Gastfreundschaft.$t$,
    $t$L'Oktoberfest est la plus grande fête populaire du monde. Elle a lieu chaque année à Munich. L'histoire commença en 1810. À l'époque, le prince héritier bavarois Ludwig épousa la princesse Thérèse. La ville de Munich célébra le mariage par une grande course de chevaux sur une prairie.
La prairie s'appelle encore aujourd'hui la Theresienwiese. La fête plut tant aux gens qu'ils la répétèrent chaque année. Plus tard s'ajoutèrent des tentes à bière, des manèges et de la musique.
Aujourd'hui, l'Oktoberfest dure environ deux semaines, en septembre et en octobre. Des millions de visiteurs venus du monde entier viennent à Munich. Ils portent souvent une tenue traditionnelle : les hommes une culotte de cuir, les femmes un dirndl. Dans les grandes tentes, les gens boivent de la bière dans d'énormes chopes et mangent des bretzels.
L'Oktoberfest montre les traditions bavaroises et l'hospitalité.$t$,
    $t${"Das":"La","Oktoberfest":"fête de la bière","ist":"est","das":"la","größte":"plus grande","Volksfest":"fête populaire","der":"du","Welt":"monde","Es":"Elle","findet":"a lieu","jedes":"chaque","Jahr":"année","in":"à","München":"Munich","statt":"lieu","Die":"L'","Geschichte":"histoire","begann":"commença","im":"en l'","Damals":"à l'époque","heiratete":"épousa","bayerische":"bavarois","Kronprinz":"prince héritier","Ludwig":"Ludwig","die":"la","Prinzessin":"princesse","Therese":"Thérèse","Stadt":"ville","feierte":"célébra","Hochzeit":"mariage","mit":"par","einem":"une","großen":"grande","Pferderennen":"course de chevaux","auf":"sur","einer":"une","Wiese":"prairie","heißt":"s'appelle","bis":"jusqu'à","heute":"aujourd'hui","Theresienwiese":"Theresienwiese","Den":"aux","Menschen":"gens","gefiel":"plut","Fest":"fête","so":"tellement","gut":"bien","dass":"que","sie":"ils","es":"la","wiederholten":"répétèrent","Später":"plus tard","kamen":"s'ajoutèrent","Bierzelte":"tentes à bière","Fahrgeschäfte":"manèges","und":"et","Musik":"musique","dazu":"en plus","Heute":"aujourd'hui","dauert":"dure","ungefähr":"environ","zwei":"deux","Wochen":"semaines","September":"septembre","Oktober":"octobre","Millionen":"des millions de","Besucher":"visiteurs","aus":"du","ganzen":"monde entier","kommen":"viennent","nach":"à","Sie":"ils","tragen":"portent","oft":"souvent","eine":"une","Tracht":"tenue traditionnelle","Männer":"les hommes","Lederhose":"culotte de cuir","Frauen":"les femmes","ein":"un","Dirndl":"dirndl","In":"dans","den":"les","Zelten":"tentes","trinken":"boivent","Leute":"gens","Bier":"bière","riesigen":"énormes","Krügen":"chopes","essen":"mangent","Brezeln":"bretzels","zeigt":"montre","Traditionen":"traditions","Gastfreundschaft":"hospitalité"}$t$::jsonb
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$In welcher Stadt findet das Oktoberfest statt?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$In München$t$, true, 1),
    (v_q, $t$In Berlin$t$, false, 2),
    (v_q, $t$In Köln$t$, false, 3),
    (v_q, $t$In Hamburg$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum feierte die Stadt im Jahr 1810?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Wegen einer Hochzeit$t$, true, 1),
    (v_q, $t$Wegen eines Krieges$t$, false, 2),
    (v_q, $t$Wegen eines Geburtstags$t$, false, 3),
    (v_q, $t$Wegen eines Fußballspiels$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wer heiratete im Jahr 1810?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Der bayerische Kronprinz Ludwig$t$, true, 1),
    (v_q, $t$Ein Bäcker aus München$t$, false, 2),
    (v_q, $t$Ein Bürgermeister$t$, false, 3),
    (v_q, $t$Ein Bierbrauer$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie heißt die Wiese, auf der das Fest stattfindet?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Theresienwiese$t$, true, 1),
    (v_q, $t$Marienplatz$t$, false, 2),
    (v_q, $t$Alexanderplatz$t$, false, 3),
    (v_q, $t$Schlossgarten$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was gab es zuerst auf dem Fest?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Ein Pferderennen$t$, true, 1),
    (v_q, $t$Ein Konzert$t$, false, 2),
    (v_q, $t$Ein Feuerwerk$t$, false, 3),
    (v_q, $t$Ein Fußballspiel$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was kam später zum Fest dazu?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Bierzelte, Fahrgeschäfte und Musik$t$, true, 1),
    (v_q, $t$Nur mehr Pferde$t$, false, 2),
    (v_q, $t$Ein Zoo$t$, false, 3),
    (v_q, $t$Ein Theater$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was tragen viele Männer auf dem Oktoberfest?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Eine Lederhose$t$, true, 1),
    (v_q, $t$Einen Anzug$t$, false, 2),
    (v_q, $t$Eine Uniform$t$, false, 3),
    (v_q, $t$Einen Mantel$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie lange dauert das Oktoberfest heute ungefähr?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Zwei Wochen$t$, true, 1),
    (v_q, $t$Zwei Tage$t$, false, 2),
    (v_q, $t$Ein Monat$t$, false, 3),
    (v_q, $t$Ein Jahr$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Woraus trinken die Leute in den Bierzelten?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Aus riesigen Krügen$t$, true, 1),
    (v_q, $t$Aus kleinen Tassen$t$, false, 2),
    (v_q, $t$Aus Flaschen$t$, false, 3),
    (v_q, $t$Aus Gläsern mit Strohhalm$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'die Tracht'?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Traditionelle Kleidung$t$, true, 1),
    (v_q, $t$Ein Getränk$t$, false, 2),
    (v_q, $t$Ein Musikinstrument$t$, false, 3),
    (v_q, $t$Ein Tanz$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welches Wort passt: Frauen tragen auf dem Fest oft ein ___.$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Dirndl$t$, true, 1),
    (v_q, $t$Fahrrad$t$, false, 2),
    (v_q, $t$Buch$t$, false, 3),
    (v_q, $t$Fenster$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was ist kein typisches Kleidungsstück auf dem Oktoberfest?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Ein Anzug mit Krawatte$t$, true, 1),
    (v_q, $t$Eine Lederhose$t$, false, 2),
    (v_q, $t$Ein Dirndl$t$, false, 3),
    (v_q, $t$Eine Tracht$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Der Kronprinz ___ die Prinzessin. (heiraten)$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$heiratete$t$, true, 1),
    (v_q, $t$heiratet$t$, false, 2),
    (v_q, $t$hat geheiratet$t$, false, 3),
    (v_q, $t$heiraten$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wähle die richtige Perfektform: Die Stadt ___ die Hochzeit gefeiert.$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$hat$t$, true, 1),
    (v_q, $t$ist$t$, false, 2),
    (v_q, $t$war$t$, false, 3),
    (v_q, $t$wird$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wähle die korrekte Form von 'kommen' im Perfekt: Millionen Besucher ___ nach München gekommen.$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$sind$t$, true, 1),
    (v_q, $t$haben$t$, false, 2),
    (v_q, $t$waren$t$, false, 3),
    (v_q, $t$werden$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$Schreibe 3-5 Sätze über das Oktoberfest.$t$, 1, 'normal', 'production', $t$Das Oktoberfest begann im Jahr 1810. Damals heiratete ein Kronprinz eine Prinzessin. Die Stadt feierte mit einem Pferderennen. Heute kommen Millionen Besucher nach München. Sie trinken Bier und tragen Trachten.$t$);

END $block$;

-- 19. Hänsel und Gretel im Wald
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary) VALUES (
    'A2',
    $t$Hänsel und Gretel im Wald$t$,
    $t$Vor langer Zeit lebten ein Bruder und eine Schwester im Wald. Sie hießen Hänsel und Gretel. Die Familie war sehr arm und hatte oft nicht genug zu essen.
Eines Tages gingen die Kinder in den tiefen Wald und verirrten sich. Nach vielen Stunden fanden sie ein kleines Haus. Das Haus bestand aus Brot, Kuchen und Zucker! Die Kinder hatten großen Hunger und aßen ein Stück vom Dach.
Plötzlich öffnete sich die Tür. Eine alte Frau lud die Kinder freundlich ein. Aber die Frau war eine böse Hexe. Sie wollte die Kinder fangen und kochen.
Gretel war sehr klug. Sie beobachtete die Hexe genau und fand einen Plan. Als die Hexe nicht aufpasste, stieß Gretel sie in den heißen Ofen. Die Kinder nahmen den Schatz der Hexe und liefen schnell nach Hause. Der Vater freute sich sehr, seine Kinder wiederzusehen.$t$,
    $t$Il y a longtemps, un frère et une sœur vivaient dans la forêt. Ils s'appelaient Hänsel et Gretel. La famille était très pauvre et n'avait souvent pas assez à manger.
Un jour, les enfants allèrent au fond de la forêt et se perdirent. Après de nombreuses heures, ils trouvèrent une petite maison. La maison était faite de pain, de gâteau et de sucre ! Les enfants avaient très faim et mangèrent un morceau du toit.
Soudain, la porte s'ouvrit. Une vieille femme invita gentiment les enfants à entrer. Mais la femme était une méchante sorcière. Elle voulait attraper les enfants et les cuisiner.
Gretel était très intelligente. Elle observa attentivement la sorcière et trouva un plan. Quand la sorcière ne faisait pas attention, Gretel la poussa dans le four brûlant. Les enfants prirent le trésor de la sorcière et coururent vite à la maison. Le père se réjouit beaucoup de revoir ses enfants.$t$,
    $t${"Vor":"il y a","langer":"longtemps","Zeit":"(temps)","lebten":"vivaient","ein":"un","Bruder":"frère","und":"et","eine":"une","Schwester":"sœur","im":"dans la","Wald":"forêt","Sie":"Ils","hießen":"s'appelaient","Hänsel":"Hänsel","Gretel":"Gretel","Die":"La","Familie":"famille","war":"était","sehr":"très","arm":"pauvre","hatte":"avait","oft":"souvent","nicht":"pas","genug":"assez","zu":"à","essen":"manger","Eines":"un","Tages":"jour","gingen":"allèrent","die":"les","Kinder":"enfants","in":"dans","den":"la","tiefen":"profonde","verirrten":"se perdirent","sich":"se","Nach":"après","vielen":"de nombreuses","Stunden":"heures","fanden":"trouvèrent","sie":"ils","kleines":"petite","Haus":"maison","Das":"cette","bestand":"était composée","aus":"de","Brot":"pain","Kuchen":"gâteau","Zucker":"sucre","hatten":"avaient","großen":"grande","Hunger":"faim","aßen":"mangèrent","Stück":"morceau","vom":"du","Dach":"toit","Plötzlich":"soudain","öffnete":"s'ouvrit","Tür":"porte","Eine":"une","alte":"vieille","Frau":"femme","lud":"invita","freundlich":"gentiment","Aber":"mais","böse":"méchante","Hexe":"sorcière","wollte":"voulait","fangen":"attraper","kochen":"cuisiner","klug":"intelligente","beobachtete":"observa","genau":"attentivement","fand":"trouva","einen":"un","Plan":"plan","Als":"quand","aufpasste":"faisait attention","stieß":"poussa","heißen":"chaud","Ofen":"four","nahmen":"prirent","Schatz":"trésor","der":"de la","liefen":"coururent","schnell":"vite","nach":"à la","Hause":"maison","Der":"le","Vater":"père","freute":"se réjouit","seine":"ses","wiederzusehen":"revoir"}$t$::jsonb
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was waren Hänsel und Gretel?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Bruder und Schwester$t$, true, 1),
    (v_q, $t$Mutter und Tochter$t$, false, 2),
    (v_q, $t$Zwei Freundinnen$t$, false, 3),
    (v_q, $t$Vater und Sohn$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum hatte die Familie oft Hunger?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie war sehr arm$t$, true, 1),
    (v_q, $t$Sie mochte kein Essen$t$, false, 2),
    (v_q, $t$Sie war krank$t$, false, 3),
    (v_q, $t$Sie wohnte im Schloss$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wo lebte die Familie von Hänsel und Gretel?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Im Wald$t$, true, 1),
    (v_q, $t$In einer großen Stadt$t$, false, 2),
    (v_q, $t$Am Meer$t$, false, 3),
    (v_q, $t$In den Bergen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was fanden die Kinder im Wald?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Ein Haus aus Brot und Kuchen$t$, true, 1),
    (v_q, $t$Ein Schloss$t$, false, 2),
    (v_q, $t$Einen See$t$, false, 3),
    (v_q, $t$Einen Zug$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wer öffnete die Tür des Hauses?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Eine alte Frau$t$, true, 1),
    (v_q, $t$Ein Prinz$t$, false, 2),
    (v_q, $t$Ein Jäger$t$, false, 3),
    (v_q, $t$Ein König$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was wollte die böse Hexe mit den Kindern machen?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie fangen und kochen$t$, true, 1),
    (v_q, $t$Ihnen Geschenke geben$t$, false, 2),
    (v_q, $t$Sie nach Hause bringen$t$, false, 3),
    (v_q, $t$Mit ihnen spielen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wer war klug und fand einen Plan?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Gretel$t$, true, 1),
    (v_q, $t$Hänsel$t$, false, 2),
    (v_q, $t$Die Hexe$t$, false, 3),
    (v_q, $t$Der Vater$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wohin stieß Gretel die Hexe?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$In den heißen Ofen$t$, true, 1),
    (v_q, $t$In den Wald$t$, false, 2),
    (v_q, $t$In einen Fluss$t$, false, 3),
    (v_q, $t$In einen Brunnen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was nahmen die Kinder mit, bevor sie nach Hause liefen?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Den Schatz der Hexe$t$, true, 1),
    (v_q, $t$Nur Brot$t$, false, 2),
    (v_q, $t$Nichts$t$, false, 3),
    (v_q, $t$Die Kleidung der Hexe$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'sich verirren'?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Den Weg nicht mehr finden$t$, true, 1),
    (v_q, $t$Schnell laufen$t$, false, 2),
    (v_q, $t$Gut schlafen$t$, false, 3),
    (v_q, $t$Etwas essen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welches Wort passt: Die Kinder ___ sich im Wald.$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$verirrten$t$, true, 1),
    (v_q, $t$kochten$t$, false, 2),
    (v_q, $t$kauften$t$, false, 3),
    (v_q, $t$sangen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welches Wort bedeutet ungefähr das Gleiche wie 'klug'?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$intelligent$t$, true, 1),
    (v_q, $t$müde$t$, false, 2),
    (v_q, $t$böse$t$, false, 3),
    (v_q, $t$arm$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Die Kinder ___ ein kleines Haus. (finden)$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$fanden$t$, true, 1),
    (v_q, $t$finden$t$, false, 2),
    (v_q, $t$hat gefunden$t$, false, 3),
    (v_q, $t$findet$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wähle die richtige Perfektform: Gretel ___ einen Plan gefunden.$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$hat$t$, true, 1),
    (v_q, $t$ist$t$, false, 2),
    (v_q, $t$war$t$, false, 3),
    (v_q, $t$wird$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wähle die korrekte Form von 'laufen' im Perfekt: Die Kinder ___ schnell nach Hause gelaufen.$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$sind$t$, true, 1),
    (v_q, $t$haben$t$, false, 2),
    (v_q, $t$waren$t$, false, 3),
    (v_q, $t$werden$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$Schreibe 3-5 Sätze über Hänsel und Gretel.$t$, 1, 'normal', 'production', $t$Hänsel und Gretel verirrten sich im Wald. Sie fanden ein Haus aus Brot und Kuchen. Eine böse Hexe wohnte dort. Gretel stieß die Hexe in den Ofen. Die Kinder liefen mit dem Schatz nach Hause.$t$);

END $block$;

-- 20. Kuckucksuhren aus dem Schwarzwald
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary) VALUES (
    'A2',
    $t$Kuckucksuhren aus dem Schwarzwald$t$,
    $t$Der Schwarzwald liegt im Südwesten von Deutschland. Die Wälder dort sind dunkel und dicht, deshalb heißt die Region Schwarzwald. Seit vielen Jahrhunderten bauen die Menschen dort Uhren aus Holz.
Im 18. Jahrhundert erfanden Handwerker die berühmte Kuckucksuhr. Jede volle Stunde öffnet sich eine kleine Tür, und ein Holzvogel ruft "Kuckuck". Die Uhrmacher schnitzten die Uhren oft mit Blumen, Blättern oder Tieren.
Am Anfang bauten die Bauern die Uhren im Winter, wenn es auf dem Feld nichts zu tun gab. Sie verkauften die Uhren auf Märkten in ganz Europa. Die Arbeit brauchte viel Geduld und Geschick.
Heute sind Schwarzwälder Kuckucksuhren weltberühmt. Touristen aus vielen Ländern kaufen die schönen Uhren als Souvenir. In kleinen Werkstätten kann man den Handwerkern noch heute bei der Arbeit zusehen.$t$,
    $t$La Forêt-Noire se trouve dans le sud-ouest de l'Allemagne. Les forêts y sont sombres et denses, c'est pourquoi la région s'appelle Forêt-Noire. Depuis de nombreux siècles, les gens y fabriquent des horloges en bois.
Au XVIIIe siècle, des artisans inventèrent la célèbre horloge à coucou. À chaque heure pleine, une petite porte s'ouvre et un oiseau en bois crie « coucou ». Les horlogers sculptaient souvent les horloges avec des fleurs, des feuilles ou des animaux.
Au début, les paysans fabriquaient les horloges en hiver, quand il n'y avait rien à faire aux champs. Ils vendaient les horloges sur des marchés dans toute l'Europe. Ce travail demandait beaucoup de patience et d'habileté.
Aujourd'hui, les horloges à coucou de la Forêt-Noire sont mondialement célèbres. Des touristes de nombreux pays achètent ces belles horloges comme souvenir. Dans de petits ateliers, on peut encore aujourd'hui regarder les artisans travailler.$t$,
    $t${"Der":"La","Schwarzwald":"Forêt-Noire","liegt":"se trouve","im":"dans le","Südwesten":"sud-ouest","von":"de l'","Deutschland":"Allemagne","Die":"Les","Wälder":"forêts","dort":"là","sind":"sont","dunkel":"sombres","und":"et","dicht":"denses","deshalb":"c'est pourquoi","heißt":"heißt","die":"la","Region":"région","Seit":"depuis","vielen":"de nombreux","Jahrhunderten":"siècles","bauen":"fabriquent","Menschen":"gens","Uhren":"horloges","aus":"en","Holz":"bois","Im":"au","Jahrhundert":"siècle","erfanden":"inventèrent","Handwerker":"artisans","berühmte":"célèbre","Kuckucksuhr":"horloge à coucou","Jede":"chaque","volle":"pleine","Stunde":"heure","öffnet":"s'ouvre","sich":"se","eine":"une","kleine":"petite","Tür":"porte","ein":"un","Holzvogel":"oiseau en bois","ruft":"crie","Kuckuck":"coucou","Uhrmacher":"horlogers","schnitzten":"sculptaient","oft":"souvent","mit":"de","Blumen":"fleurs","Blättern":"feuilles","oder":"ou","Tieren":"animaux","Am":"au","Anfang":"début","bauten":"fabriquaient","Bauern":"paysans","Winter":"hiver","wenn":"quand","es":"il","auf":"dans","dem":"le","Feld":"champ","nichts":"rien","zu":"à","tun":"faire","gab":"n'y avait","Sie":"Ils","verkauften":"vendaient","Märkten":"marchés","in":"dans","ganz":"toute","Europa":"Europe","Arbeit":"travail","brauchte":"nécessitait","viel":"beaucoup de","Geduld":"patience","Geschick":"habileté","Heute":"aujourd'hui","Schwarzwälder":"de la Forêt-Noire","Kuckucksuhren":"horloges à coucou","weltberühmt":"mondialement célèbres","Touristen":"touristes","Ländern":"pays","kaufen":"achètent","schönen":"belles","als":"comme","Souvenir":"souvenir","In":"dans","kleinen":"petits","Werkstätten":"ateliers","kann":"peut","man":"on","den":"les","Handwerkern":"artisans","noch":"encore","heute":"aujourd'hui","bei":"à","der":"leur","zusehen":"regarder travailler"}$t$::jsonb
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wo liegt der Schwarzwald?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Im Südwesten von Deutschland$t$, true, 1),
    (v_q, $t$Im Norden von Deutschland$t$, false, 2),
    (v_q, $t$In Österreich$t$, false, 3),
    (v_q, $t$In der Schweiz$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum heißt die Region Schwarzwald?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Die Wälder sind dunkel und dicht$t$, true, 1),
    (v_q, $t$Die Häuser sind schwarz$t$, false, 2),
    (v_q, $t$Es gibt dort viele schwarze Tiere$t$, false, 3),
    (v_q, $t$Die Menschen tragen schwarze Kleidung$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bauen die Menschen dort seit vielen Jahrhunderten?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Uhren aus Holz$t$, true, 1),
    (v_q, $t$Autos$t$, false, 2),
    (v_q, $t$Schiffe$t$, false, 3),
    (v_q, $t$Brücken$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was ruft der Holzvogel jede Stunde?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Kuckuck$t$, true, 1),
    (v_q, $t$Hallo$t$, false, 2),
    (v_q, $t$Guten Tag$t$, false, 3),
    (v_q, $t$Tick-Tack$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Womit schnitzten die Uhrmacher die Uhren oft?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Mit Blumen, Blättern und Tieren$t$, true, 1),
    (v_q, $t$Nur mit Zahlen$t$, false, 2),
    (v_q, $t$Mit Bildern von Königen$t$, false, 3),
    (v_q, $t$Mit Fotos$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$In welchem Jahrhundert erfanden Handwerker die Kuckucksuhr?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Im 18. Jahrhundert$t$, true, 1),
    (v_q, $t$Im 12. Jahrhundert$t$, false, 2),
    (v_q, $t$Im 20. Jahrhundert$t$, false, 3),
    (v_q, $t$Im 15. Jahrhundert$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wann bauten die Bauern früher die Uhren?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Im Winter$t$, true, 1),
    (v_q, $t$Im Sommer$t$, false, 2),
    (v_q, $t$Im Frühling$t$, false, 3),
    (v_q, $t$Im Herbst$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wo verkauften die Bauern die Uhren?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Auf Märkten in ganz Europa$t$, true, 1),
    (v_q, $t$Nur im Schwarzwald$t$, false, 2),
    (v_q, $t$Im Internet$t$, false, 3),
    (v_q, $t$In Museen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was können Touristen heute in kleinen Werkstätten machen?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Den Handwerkern bei der Arbeit zusehen$t$, true, 1),
    (v_q, $t$Die Uhren selbst reparieren$t$, false, 2),
    (v_q, $t$Kostenlose Uhren bekommen$t$, false, 3),
    (v_q, $t$Im Wald übernachten$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'schnitzen'?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Formen aus Holz machen$t$, true, 1),
    (v_q, $t$Kochen$t$, false, 2),
    (v_q, $t$Singen$t$, false, 3),
    (v_q, $t$Malen mit Farbe$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welches Wort passt: Die Uhrmacher ___ die Uhren mit Blumen.$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$schnitzten$t$, true, 1),
    (v_q, $t$kochten$t$, false, 2),
    (v_q, $t$kauften$t$, false, 3),
    (v_q, $t$sangen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welches Wort passt am besten zu 'Geduld und Geschick'?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Handwerk$t$, true, 1),
    (v_q, $t$Ferien$t$, false, 2),
    (v_q, $t$Wetter$t$, false, 3),
    (v_q, $t$Musik$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Handwerker ___ die Kuckucksuhr. (erfinden)$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$erfanden$t$, true, 1),
    (v_q, $t$erfinden$t$, false, 2),
    (v_q, $t$hat erfunden$t$, false, 3),
    (v_q, $t$erfindet$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wähle die richtige Perfektform: Die Bauern ___ die Uhren verkauft.$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$haben$t$, true, 1),
    (v_q, $t$sind$t$, false, 2),
    (v_q, $t$waren$t$, false, 3),
    (v_q, $t$werden$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wähle die korrekte Form von 'bauen' im Präteritum: Die Menschen ___ seit Jahrhunderten Uhren.$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$bauten$t$, true, 1),
    (v_q, $t$baute$t$, false, 2),
    (v_q, $t$haben gebaut$t$, false, 3),
    (v_q, $t$bauen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$Schreibe 3-5 Sätze über die Kuckucksuhren im Schwarzwald.$t$, 1, 'normal', 'production', $t$Der Schwarzwald liegt im Südwesten von Deutschland. Dort bauen die Menschen seit Jahrhunderten Uhren aus Holz. Im 18. Jahrhundert erfanden Handwerker die Kuckucksuhr. Jede Stunde ruft ein Holzvogel Kuckuck. Heute kaufen Touristen die Uhren als Souvenir.$t$);

END $block$;

-- 21. Wilhelm Röntgen und die X-Strahlen
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary) VALUES (
    'A2',
    $t$Wilhelm Röntgen und die X-Strahlen$t$,
    $t$Wilhelm Röntgen war ein deutscher Physiker. Er arbeitete an einer Universität in Würzburg. Im Jahr 1895 experimentierte er in seinem Labor mit elektrischen Strahlen.
Eines Abends bemerkte Röntgen etwas Seltsames. Ein Schirm im Labor leuchtete, obwohl er weit von der Strahlenquelle entfernt stand. Röntgen war sehr überrascht. Er nannte die neue, unsichtbare Strahlung "X-Strahlen", weil er ihre Natur noch nicht kannte.
Röntgen machte auch ein Bild von der Hand seiner Frau. Auf dem Bild konnte man die Knochen der Hand sehen! Seine Frau war sehr erschrocken, als sie ihre eigenen Knochen sah.
Die Entdeckung war eine Sensation. Ärzte konnten jetzt zum ersten Mal in den Körper schauen, ohne zu operieren. Im Jahr 1901 bekam Röntgen den ersten Nobelpreis für Physik. Bis heute nennt man die Strahlen in Deutschland "Röntgenstrahlen".$t$,
    $t$Wilhelm Röntgen était un physicien allemand. Il travaillait dans une université à Wurtzbourg. En 1895, il expérimentait dans son laboratoire avec des rayons électriques.
Un soir, Röntgen remarqua quelque chose d'étrange. Un écran du laboratoire brillait, bien qu'il se tienne loin de la source des rayons. Röntgen fut très surpris. Il nomma ce nouveau rayonnement invisible « rayons X », car il n'en connaissait pas encore la nature.
Röntgen fit aussi une image de la main de sa femme. Sur l'image, on pouvait voir les os de la main ! Sa femme fut très effrayée en voyant ses propres os.
La découverte fut une sensation. Les médecins pouvaient maintenant regarder à l'intérieur du corps pour la première fois, sans opérer. En 1901, Röntgen reçut le premier prix Nobel de physique. Aujourd'hui encore, on appelle ces rayons « rayons Röntgen » en Allemagne.$t$,
    $t${"Wilhelm":"Wilhelm","Röntgen":"Röntgen","war":"était","ein":"un","deutscher":"allemand","Physiker":"physicien","Er":"Il","arbeitete":"travaillait","an":"dans","einer":"une","Universität":"université","in":"à","Würzburg":"Würzburg","Im":"en","Jahr":"l'année","experimentierte":"expérimentait","er":"il","seinem":"son","Labor":"laboratoire","mit":"avec","elektrischen":"électriques","Strahlen":"rayons","Eines":"un","Abends":"soir","bemerkte":"remarqua","etwas":"quelque chose","Seltsames":"d'étrange","Ein":"un","Schirm":"écran","im":"dans le","leuchtete":"brillait","obwohl":"bien qu'","weit":"loin","von":"de","der":"la","Strahlenquelle":"source des rayons","entfernt":"éloigné","stand":"se tenait","sehr":"très","überrascht":"surpris","nannte":"nomma","die":"la","neue":"nouvelle","unsichtbare":"invisible","Strahlung":"radiation","X-Strahlen":"rayons X","weil":"parce que","ihre":"leur","Natur":"nature","noch":"encore","nicht":"pas","kannte":"connaissait","machte":"fit","auch":"aussi","Bild":"photo","Hand":"main","seiner":"de sa","Frau":"femme","Auf":"sur","dem":"la","konnte":"pouvait","man":"on","Knochen":"os","sehen":"voir","Seine":"sa","erschrocken":"effrayée","als":"quand","sie":"elle","eigenen":"propres","sah":"vit","Die":"La","Entdeckung":"découverte","eine":"une","Sensation":"sensation","Ärzte":"médecins","konnten":"pouvaient","jetzt":"maintenant","zum":"pour la","ersten":"première","Mal":"fois","den":"le","Körper":"corps","schauen":"regarder","ohne":"sans","zu":"à","operieren":"opérer","bekam":"reçut","Nobelpreis":"prix Nobel","für":"de","Physik":"physique","Bis":"jusqu'à","heute":"aujourd'hui","nennt":"appelle","Deutschland":"en Allemagne","Röntgenstrahlen":"rayons Röntgen"}$t$::jsonb
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was war Wilhelm Röntgen von Beruf?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Physiker$t$, true, 1),
    (v_q, $t$Arzt$t$, false, 2),
    (v_q, $t$Lehrer$t$, false, 3),
    (v_q, $t$Bäcker$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wo arbeitete Röntgen?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$An einer Universität in Würzburg$t$, true, 1),
    (v_q, $t$In einem Krankenhaus in Berlin$t$, false, 2),
    (v_q, $t$In einer Fabrik in Hamburg$t$, false, 3),
    (v_q, $t$In einer Schule in München$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Womit experimentierte Röntgen im Jahr 1895?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Mit elektrischen Strahlen$t$, true, 1),
    (v_q, $t$Mit chemischen Stoffen$t$, false, 2),
    (v_q, $t$Mit Pflanzen$t$, false, 3),
    (v_q, $t$Mit Tieren$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bemerkte Röntgen eines Abends?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Ein Schirm leuchtete$t$, true, 1),
    (v_q, $t$Ein Licht ging aus$t$, false, 2),
    (v_q, $t$Ein Fenster brach$t$, false, 3),
    (v_q, $t$Eine Tür öffnete sich$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie nannte Röntgen die neue Strahlung?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$X-Strahlen$t$, true, 1),
    (v_q, $t$Lichtstrahlen$t$, false, 2),
    (v_q, $t$Sonnenstrahlen$t$, false, 3),
    (v_q, $t$Elektrostrahlen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum nannte Röntgen die Strahlung 'X-Strahlen'?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Weil er ihre Natur noch nicht kannte$t$, true, 1),
    (v_q, $t$Weil sie aus dem Weltall kamen$t$, false, 2),
    (v_q, $t$Weil sie gefährlich waren$t$, false, 3),
    (v_q, $t$Weil ein Kollege sie so nannte$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Von wem machte Röntgen ein berühmtes Bild?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Von der Hand seiner Frau$t$, true, 1),
    (v_q, $t$Von seinem eigenen Kopf$t$, false, 2),
    (v_q, $t$Von einem Freund$t$, false, 3),
    (v_q, $t$Von einem Tier$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was konnten Ärzte nach der Entdeckung machen?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$In den Körper schauen, ohne zu operieren$t$, true, 1),
    (v_q, $t$Sofort alle Krankheiten heilen$t$, false, 2),
    (v_q, $t$Neue Medikamente erfinden$t$, false, 3),
    (v_q, $t$Menschen fliegen lassen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wann bekam Röntgen den ersten Nobelpreis für Physik?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$1901$t$, true, 1),
    (v_q, $t$1895$t$, false, 2),
    (v_q, $t$1850$t$, false, 3),
    (v_q, $t$1920$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'die Strahlung'?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Eine unsichtbare Energie$t$, true, 1),
    (v_q, $t$Ein Getränk$t$, false, 2),
    (v_q, $t$Ein Musikinstrument$t$, false, 3),
    (v_q, $t$Ein Gebäude$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welches Wort passt: Röntgen entdeckte eine neue ___.$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Strahlung$t$, true, 1),
    (v_q, $t$Blume$t$, false, 2),
    (v_q, $t$Straße$t$, false, 3),
    (v_q, $t$Uhr$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welches Wort ist kein Synonym für 'entdecken'?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$verstecken$t$, true, 1),
    (v_q, $t$finden$t$, false, 2),
    (v_q, $t$erkennen$t$, false, 3),
    (v_q, $t$herausfinden$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Röntgen ___ die X-Strahlen entdeckt.$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$hat$t$, true, 1),
    (v_q, $t$ist$t$, false, 2),
    (v_q, $t$war$t$, false, 3),
    (v_q, $t$wird$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wähle die richtige Perfektform von 'sehen': Seine Frau ___ die Knochen ihrer Hand gesehen.$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$hat$t$, true, 1),
    (v_q, $t$ist$t$, false, 2),
    (v_q, $t$war$t$, false, 3),
    (v_q, $t$wird$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wähle die korrekte Form von 'bekommen' im Präteritum: Röntgen ___ den ersten Nobelpreis für Physik.$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$bekam$t$, true, 1),
    (v_q, $t$bekommt$t$, false, 2),
    (v_q, $t$hat bekommen$t$, false, 3),
    (v_q, $t$bekommen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$Schreibe 3-5 Sätze über Wilhelm Röntgen und seine Entdeckung.$t$, 1, 'normal', 'production', $t$Wilhelm Röntgen war ein deutscher Physiker. Im Jahr 1895 entdeckte er die X-Strahlen. Er machte ein Bild von der Hand seiner Frau. Auf dem Bild konnte man die Knochen sehen. Röntgen bekam später den Nobelpreis für Physik.$t$);

END $block$;

-- 22. Ferdinand von Zeppelin und sein Luftschiff
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary) VALUES (
    'A2',
    $t$Ferdinand von Zeppelin und sein Luftschiff$t$,
    $t$Ferdinand von Zeppelin war ein deutscher Graf und Erfinder. Er interessierte sich sehr für das Fliegen. Ende des 19. Jahrhunderts begann er, ein großes Luftschiff zu bauen.
Zeppelins Idee war ein Luftschiff mit einem festen Gerüst aus Metall. Im Inneren waren große Gassäcke mit leichtem Gas. So konnte das Luftschiff steigen und fliegen.
Im Jahr 1900 startete der erste Zeppelin über dem Bodensee. Viele Menschen kamen, um das riesige Luftschiff zu sehen. Es war ein großer Erfolg, und bald baute die Firma viele weitere Zeppeline.
In den folgenden Jahren flogen Zeppeline sogar über den Atlantik nach Amerika. Passagiere reisten bequem und schnell durch die Luft. Der Name "Zeppelin" wurde weltberühmt.
Auch heute noch fliegen moderne Zeppeline am Bodensee. Dort erinnert ein Museum an den berühmten Erfinder und seine fliegenden Maschinen.$t$,
    $t$Ferdinand von Zeppelin était un comte et inventeur allemand. Il s'intéressait beaucoup au vol. Vers la fin du XIXe siècle, il commença à construire un grand dirigeable.
L'idée de Zeppelin était un dirigeable avec une armature solide en métal. À l'intérieur se trouvaient de grands ballonnets remplis de gaz léger. Ainsi, le dirigeable pouvait monter et voler.
En 1900, le premier zeppelin décolla au-dessus du lac de Constance. De nombreuses personnes vinrent voir cet énorme dirigeable. Ce fut un grand succès, et bientôt l'entreprise construisit de nombreux autres zeppelins.
Les années suivantes, des zeppelins volèrent même au-dessus de l'Atlantique jusqu'en Amérique. Les passagers voyageaient confortablement et rapidement dans les airs. Le nom « Zeppelin » devint mondialement célèbre.
Aujourd'hui encore, des zeppelins modernes volent au-dessus du lac de Constance. Là, un musée rappelle le souvenir du célèbre inventeur et de ses machines volantes.$t$,
    $t${"Ferdinand":"Ferdinand","von":"von","Zeppelin":"Zeppelin","war":"était","ein":"un","deutscher":"allemand","Graf":"comte","und":"et","Erfinder":"inventeur","Er":"Il","interessierte":"s'intéressait","sich":"se","sehr":"beaucoup","für":"à","das":"le","Fliegen":"vol","Ende":"fin","des":"du","Jahrhunderts":"siècle","begann":"commença","er":"il","großes":"grand","Luftschiff":"dirigeable","zu":"à","bauen":"construire","Zeppelins":"de Zeppelin","Idee":"idée","mit":"avec","einem":"une","festen":"solide","Gerüst":"structure","aus":"en","Metall":"métal","Im":"à l'","Inneren":"intérieur","waren":"étaient","große":"grands","Gassäcke":"ballonnets","leichtem":"léger","Gas":"gaz","So":"ainsi","konnte":"pouvait","steigen":"monter","fliegen":"voler","Jahr":"année","startete":"décolla","der":"le","erste":"premier","über":"au-dessus","dem":"du","Bodensee":"lac de Constance","Viele":"de nombreuses","Menschen":"personnes","kamen":"vinrent","um":"pour","riesige":"l'énorme","sehen":"voir","Es":"ce","großer":"grand","Erfolg":"succès","bald":"bientôt","baute":"construisit","die":"la","Firma":"entreprise","viele":"de nombreux","weitere":"autres","Zeppeline":"zeppelins","In":"dans","den":"les","folgenden":"années suivantes","Jahren":"années","flogen":"volèrent","sogar":"même","Atlantik":"Atlantique","nach":"vers","Amerika":"Amérique","Passagiere":"passagers","reisten":"voyageaient","bequem":"confortablement","schnell":"rapidement","durch":"à travers","Luft":"air","Der":"Le","Name":"nom","wurde":"devint","weltberühmt":"mondialement célèbre","Auch":"aussi","heute":"aujourd'hui","noch":"encore","moderne":"modernes","am":"sur le","Dort":"là","erinnert":"rappelle","Museum":"musée","an":"à","berühmten":"célèbre","seine":"ses","fliegenden":"machines volantes","Maschinen":"machines"}$t$::jsonb
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was war Ferdinand von Zeppelin?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Ein Graf und Erfinder$t$, true, 1),
    (v_q, $t$Ein König$t$, false, 2),
    (v_q, $t$Ein Bäcker$t$, false, 3),
    (v_q, $t$Ein Musiker$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wofür interessierte sich Zeppelin sehr?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Für das Fliegen$t$, true, 1),
    (v_q, $t$Für die Musik$t$, false, 2),
    (v_q, $t$Für das Kochen$t$, false, 3),
    (v_q, $t$Für den Fußball$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wann begann Zeppelin, ein Luftschiff zu bauen?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Ende des 19. Jahrhunderts$t$, true, 1),
    (v_q, $t$Im Mittelalter$t$, false, 2),
    (v_q, $t$Nach dem Zweiten Weltkrieg$t$, false, 3),
    (v_q, $t$Im 21. Jahrhundert$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Woraus bestand das Gerüst des Luftschiffs?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Aus Metall$t$, true, 1),
    (v_q, $t$Aus Holz$t$, false, 2),
    (v_q, $t$Aus Papier$t$, false, 3),
    (v_q, $t$Aus Glas$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was war in den Gassäcken des Luftschiffs?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Leichtes Gas$t$, true, 1),
    (v_q, $t$Wasser$t$, false, 2),
    (v_q, $t$Sand$t$, false, 3),
    (v_q, $t$Feuer$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wo startete der erste Zeppelin im Jahr 1900?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Über dem Bodensee$t$, true, 1),
    (v_q, $t$Über Berlin$t$, false, 2),
    (v_q, $t$Über dem Rhein$t$, false, 3),
    (v_q, $t$Über München$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wohin flogen Zeppeline später sogar?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Über den Atlantik nach Amerika$t$, true, 1),
    (v_q, $t$Zum Mond$t$, false, 2),
    (v_q, $t$Nach Afrika$t$, false, 3),
    (v_q, $t$Nach Asien$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie reisten die Passagiere im Zeppelin?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Bequem und schnell$t$, true, 1),
    (v_q, $t$Langsam und unbequem$t$, false, 2),
    (v_q, $t$Nur nachts$t$, false, 3),
    (v_q, $t$Nur im Winter$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was erinnert heute am Bodensee an Zeppelin?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Ein Museum$t$, true, 1),
    (v_q, $t$Eine Universität$t$, false, 2),
    (v_q, $t$Ein Schloss$t$, false, 3),
    (v_q, $t$Ein Berg$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'das Luftschiff'?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Ein Fahrzeug, das in der Luft fliegt$t$, true, 1),
    (v_q, $t$Ein Schiff auf dem Meer$t$, false, 2),
    (v_q, $t$Ein Zug$t$, false, 3),
    (v_q, $t$Ein Auto$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welches Wort passt: Zeppelin baute ein großes ___.$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Luftschiff$t$, true, 1),
    (v_q, $t$Fahrrad$t$, false, 2),
    (v_q, $t$Bett$t$, false, 3),
    (v_q, $t$Fenster$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welches Wort passt am besten zu 'riesig'?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$sehr groß$t$, true, 1),
    (v_q, $t$sehr klein$t$, false, 2),
    (v_q, $t$sehr alt$t$, false, 3),
    (v_q, $t$sehr neu$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Der erste Zeppelin ___ über dem Bodensee. (starten)$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$startete$t$, true, 1),
    (v_q, $t$startet$t$, false, 2),
    (v_q, $t$hat gestartet$t$, false, 3),
    (v_q, $t$starten$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wähle die richtige Perfektform: Die Firma ___ viele Zeppeline gebaut.$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$hat$t$, true, 1),
    (v_q, $t$ist$t$, false, 2),
    (v_q, $t$war$t$, false, 3),
    (v_q, $t$wird$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wähle die korrekte Form von 'fliegen' im Perfekt: Zeppeline ___ über den Atlantik geflogen.$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$sind$t$, true, 1),
    (v_q, $t$haben$t$, false, 2),
    (v_q, $t$waren$t$, false, 3),
    (v_q, $t$werden$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$Schreibe 3-5 Sätze über Ferdinand von Zeppelin und sein Luftschiff.$t$, 1, 'normal', 'production', $t$Ferdinand von Zeppelin war ein deutscher Erfinder. Er baute ein großes Luftschiff aus Metall. Im Jahr 1900 startete der erste Zeppelin über dem Bodensee. Später flogen Zeppeline sogar nach Amerika. Heute erinnert ein Museum am Bodensee an ihn.$t$);

END $block$;

-- 23. Die Universität Heidelberg
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary) VALUES (
    'A2',
    $t$Die Universität Heidelberg$t$,
    $t$Die Universität Heidelberg ist die älteste Universität in Deutschland. Ein Kurfürst gründete sie im Jahr 1386. Seit über 600 Jahren studieren dort junge Menschen aus aller Welt.
Die Stadt Heidelberg liegt am Fluss Neckar, zwischen grünen Hügeln. Über der Stadt steht ein altes Schloss. Studenten und Touristen lieben die romantische Altstadt mit ihren engen Gassen.
Früher trafen sich Studenten oft in kleinen Kneipen. Diese Studentenkneipen gibt es zum Teil noch heute. Berühmte Denker und Wissenschaftler haben in Heidelberg studiert oder gelehrt.
Die Universität ist besonders bekannt für Medizin, Recht und Naturwissenschaften. Viele Nobelpreisträger haben hier gearbeitet.
Heute studieren mehr als 30.000 Studenten in Heidelberg. Die Universität verbindet eine lange Tradition mit moderner Forschung. Viele Besucher kommen jedes Jahr, um die historische Universitätsstadt zu besichtigen.$t$,
    $t$L'université de Heidelberg est la plus ancienne université d'Allemagne. Un prince-électeur la fonda en 1386. Depuis plus de 600 ans, de jeunes gens du monde entier y étudient.
La ville de Heidelberg est située sur le Neckar, entre des collines verdoyantes. Au-dessus de la ville se dresse un vieux château. Étudiants et touristes adorent la vieille ville romantique avec ses ruelles étroites.
Autrefois, les étudiants se retrouvaient souvent dans de petits bistrots. Ces bistrots d'étudiants existent en partie encore aujourd'hui. De célèbres penseurs et scientifiques ont étudié ou enseigné à Heidelberg.
L'université est particulièrement connue pour la médecine, le droit et les sciences naturelles. De nombreux lauréats du prix Nobel y ont travaillé.
Aujourd'hui, plus de 30 000 étudiants étudient à Heidelberg. L'université allie une longue tradition à une recherche moderne. De nombreux visiteurs viennent chaque année pour découvrir cette ville universitaire historique.$t$,
    $t${"Die":"L'","Universität":"université","Heidelberg":"de Heidelberg","ist":"est","die":"la","älteste":"plus ancienne","in":"en","Deutschland":"Allemagne","Ein":"un","Kurfürst":"prince-électeur","gründete":"fonda","sie":"elle","im":"en","Jahr":"l'année","Seit":"depuis","über":"plus de","Jahren":"ans","studieren":"étudient","dort":"là","junge":"jeunes","Menschen":"gens","aus":"du","aller":"monde entier","Welt":"monde","Stadt":"ville","liegt":"se trouve","am":"sur le","Fluss":"fleuve","Neckar":"Neckar","zwischen":"entre","grünen":"vertes","Hügeln":"collines","Über":"au-dessus de","der":"la","steht":"se dresse","ein":"un","altes":"vieux","Schloss":"château","Studenten":"étudiants","und":"et","Touristen":"touristes","lieben":"aiment","romantische":"romantique","Altstadt":"vieille ville","mit":"avec","ihren":"ses","engen":"étroites","Gassen":"ruelles","Früher":"autrefois","trafen":"se retrouvaient","sich":"se","oft":"souvent","kleinen":"petits","Kneipen":"bistrots","Diese":"ces","Studentenkneipen":"bistrots d'étudiants","gibt":"existent","es":"il","zum":"en","Teil":"partie","noch":"encore","heute":"aujourd'hui","Berühmte":"célèbres","Denker":"penseurs","Wissenschaftler":"scientifiques","haben":"ont","studiert":"étudié","oder":"ou","gelehrt":"enseigné","besonders":"particulièrement","bekannt":"connue","für":"pour","Medizin":"médecine","Recht":"droit","Naturwissenschaften":"sciences naturelles","Viele":"de nombreux","Nobelpreisträger":"lauréats du prix Nobel","hier":"ici","gearbeitet":"travaillé","Heute":"aujourd'hui","mehr":"plus","als":"que","verbindet":"allie","eine":"une","lange":"longue","Tradition":"tradition","moderner":"moderne","Forschung":"recherche","Besucher":"visiteurs","kommen":"viennent","jedes":"chaque","um":"pour","historische":"historique","Universitätsstadt":"ville universitaire","zu":"à","besichtigen":"visiter"}$t$::jsonb
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$In welcher Stadt liegt die älteste Universität Deutschlands?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$In Heidelberg$t$, true, 1),
    (v_q, $t$In Berlin$t$, false, 2),
    (v_q, $t$In München$t$, false, 3),
    (v_q, $t$In Köln$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wann gründete ein Kurfürst die Universität?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$1386$t$, true, 1),
    (v_q, $t$1521$t$, false, 2),
    (v_q, $t$1900$t$, false, 3),
    (v_q, $t$1248$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$An welchem Fluss liegt Heidelberg?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Am Neckar$t$, true, 1),
    (v_q, $t$Am Rhein$t$, false, 2),
    (v_q, $t$An der Donau$t$, false, 3),
    (v_q, $t$An der Elbe$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was steht über der Stadt Heidelberg?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Ein altes Schloss$t$, true, 1),
    (v_q, $t$Ein Fernsehturm$t$, false, 2),
    (v_q, $t$Eine Brücke$t$, false, 3),
    (v_q, $t$Ein Flughafen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wo trafen sich Studenten früher oft?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$In kleinen Kneipen$t$, true, 1),
    (v_q, $t$Im Schloss$t$, false, 2),
    (v_q, $t$Im Wald$t$, false, 3),
    (v_q, $t$Am Strand$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie beschreibt der Text die Altstadt von Heidelberg?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Romantisch, mit engen Gassen$t$, true, 1),
    (v_q, $t$Modern, mit hohen Türmen$t$, false, 2),
    (v_q, $t$Groß und laut$t$, false, 3),
    (v_q, $t$Neu gebaut$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wofür ist die Universität besonders bekannt?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Medizin, Recht und Naturwissenschaften$t$, true, 1),
    (v_q, $t$Musik und Kunst$t$, false, 2),
    (v_q, $t$Sport und Fußball$t$, false, 3),
    (v_q, $t$Kochen und Backen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie viele Studenten studieren heute ungefähr in Heidelberg?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Mehr als 30.000$t$, true, 1),
    (v_q, $t$Nur 100$t$, false, 2),
    (v_q, $t$Etwa 1.000$t$, false, 3),
    (v_q, $t$Über eine Million$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was verbindet die Universität laut Text?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Eine lange Tradition mit moderner Forschung$t$, true, 1),
    (v_q, $t$Nur alte Traditionen$t$, false, 2),
    (v_q, $t$Nur moderne Technik$t$, false, 3),
    (v_q, $t$Sport mit Musik$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'gründen'?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Etwas Neues erschaffen$t$, true, 1),
    (v_q, $t$Etwas kaufen$t$, false, 2),
    (v_q, $t$Etwas zerstören$t$, false, 3),
    (v_q, $t$Etwas verkaufen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welches Wort passt: Ein Kurfürst ___ die Universität im Jahr 1386.$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$gründete$t$, true, 1),
    (v_q, $t$kaufte$t$, false, 2),
    (v_q, $t$zerstörte$t$, false, 3),
    (v_q, $t$verkaufte$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welches Wort ist ein Synonym für 'die Gasse'?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$die kleine Straße$t$, true, 1),
    (v_q, $t$der große Platz$t$, false, 2),
    (v_q, $t$der Fluss$t$, false, 3),
    (v_q, $t$der Berg$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Viele Studenten ___ in Heidelberg. (studieren)$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$studieren$t$, true, 1),
    (v_q, $t$studiert$t$, false, 2),
    (v_q, $t$studierte$t$, false, 3),
    (v_q, $t$hat studiert$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wähle die richtige Perfektform: Berühmte Denker ___ in Heidelberg gelehrt.$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$haben$t$, true, 1),
    (v_q, $t$sind$t$, false, 2),
    (v_q, $t$waren$t$, false, 3),
    (v_q, $t$werden$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wähle die korrekte Form von 'liegen' im Präsens: Die Stadt ___ am Fluss Neckar.$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$liegt$t$, true, 1),
    (v_q, $t$lag$t$, false, 2),
    (v_q, $t$hat gelegen$t$, false, 3),
    (v_q, $t$liegen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$Schreibe 3-5 Sätze über die Universität Heidelberg.$t$, 1, 'normal', 'production', $t$Die Universität Heidelberg ist die älteste Universität in Deutschland. Ein Kurfürst gründete sie im Jahr 1386. Die Stadt liegt am Fluss Neckar. Über der Stadt steht ein altes Schloss. Heute studieren dort mehr als 30.000 Studenten.$t$);

END $block$;

-- 24. Bratwurst, ein deutscher Klassiker
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary) VALUES (
    'A2',
    $t$Bratwurst, ein deutscher Klassiker$t$,
    $t$Die Bratwurst ist eines der bekanntesten Gerichte in Deutschland. Es gibt sie schon seit dem Mittelalter. Jede Region hat ihre eigene Art von Bratwurst.
Die Thüringer Bratwurst ist lang und wird über Holzkohle gegrillt. Die Nürnberger Bratwurst ist viel kleiner; man isst oft drei davon in einem Brötchen. In Berlin ist die Currywurst besonders beliebt: eine Bratwurst mit Currysoße und Ketchup.
Traditionell macht man Bratwurst aus Schweinefleisch, Salz und Gewürzen. Metzger lernen das Rezept oft von ihren Eltern oder Großeltern. Auf Weihnachtsmärkten und Volksfesten riecht man den Duft von gegrillter Bratwurst überall.
Bratwurst isst man meistens mit Brötchen, Senf oder Sauerkraut. Für viele Deutsche gehört die Bratwurst zu einem perfekten Grillabend im Sommer dazu. Das einfache Gericht ist ein wichtiger Teil der deutschen Esskultur.$t$,
    $t$La Bratwurst est l'un des plats les plus connus d'Allemagne. Elle existe déjà depuis le Moyen Âge. Chaque région a sa propre sorte de Bratwurst.
La Bratwurst de Thuringe est longue et se grille au charbon de bois. La Bratwurst de Nuremberg est bien plus petite ; on en mange souvent trois dans un petit pain. À Berlin, la Currywurst est particulièrement appréciée : une saucisse grillée avec une sauce au curry et du ketchup.
Traditionnellement, on fait la Bratwurst avec de la viande de porc, du sel et des épices. Les bouchers apprennent souvent la recette de leurs parents ou grands-parents. Sur les marchés de Noël et les fêtes populaires, on sent partout l'odeur de la saucisse grillée.
On mange généralement la Bratwurst avec du pain, de la moutarde ou de la choucroute. Pour de nombreux Allemands, la Bratwurst fait partie d'une soirée barbecue parfaite en été. Ce plat simple est une partie importante de la culture culinaire allemande.$t$,
    $t${"Die":"La","Bratwurst":"Bratwurst","ist":"est","eines":"l'un","der":"des","bekanntesten":"plus connus","Gerichte":"plats","in":"en","Deutschland":"Allemagne","Es":"Elle","gibt":"existe","sie":"elle","schon":"déjà","seit":"depuis","dem":"le","Mittelalter":"Moyen Âge","Jede":"chaque","Region":"région","hat":"a","ihre":"sa","eigene":"propre","Art":"sorte","von":"de","Thüringer":"de Thuringe","lang":"longue","und":"et","wird":"est","über":"sur","Holzkohle":"charbon de bois","gegrillt":"grillée","Nürnberger":"de Nuremberg","viel":"beaucoup","kleiner":"plus petite","man":"on","isst":"mange","oft":"souvent","drei":"trois","davon":"d'entre elles","einem":"un","Brötchen":"petit pain","In":"à","Berlin":"Berlin","die":"la","Currywurst":"currywurst","besonders":"particulièrement","beliebt":"appréciée","eine":"une","mit":"avec","Currysoße":"sauce au curry","Ketchup":"ketchup","Traditionell":"traditionnellement","macht":"fait","aus":"à partir de","Schweinefleisch":"viande de porc","Salz":"sel","Gewürzen":"épices","Metzger":"bouchers","lernen":"apprennent","das":"la","Rezept":"recette","ihren":"leurs","Eltern":"parents","oder":"ou","Großeltern":"grands-parents","Auf":"sur","Weihnachtsmärkten":"marchés de Noël","Volksfesten":"fêtes populaires","riecht":"sent","den":"l'","Duft":"odeur","gegrillter":"de saucisse grillée","überall":"partout","meistens":"le plus souvent","Senf":"moutarde","Sauerkraut":"choucroute","Für":"pour","viele":"de nombreux","Deutsche":"Allemands","gehört":"fait partie","zu":"d'","perfekten":"parfaite","Grillabend":"soirée barbecue","im":"en","Sommer":"été","dazu":"en plus","Das":"ce","einfache":"simple","Gericht":"plat","ein":"un","wichtiger":"important","Teil":"partie","deutschen":"allemande","Esskultur":"culture culinaire"}$t$::jsonb
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Seit wann gibt es die Bratwurst?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Seit dem Mittelalter$t$, true, 1),
    (v_q, $t$Seit letztem Jahr$t$, false, 2),
    (v_q, $t$Seit 1900$t$, false, 3),
    (v_q, $t$Seit 2000$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was hat jede Region in Deutschland?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Ihre eigene Art von Bratwurst$t$, true, 1),
    (v_q, $t$Ihre eigene Sprache$t$, false, 2),
    (v_q, $t$Ihre eigene Universität$t$, false, 3),
    (v_q, $t$Ihre eigene Flagge$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Woraus macht man traditionell Bratwurst?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Aus Schweinefleisch, Salz und Gewürzen$t$, true, 1),
    (v_q, $t$Aus Fisch und Reis$t$, false, 2),
    (v_q, $t$Aus Kartoffeln und Käse$t$, false, 3),
    (v_q, $t$Aus Gemüse und Brot$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie ist die Thüringer Bratwurst?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Lang$t$, true, 1),
    (v_q, $t$Sehr klein$t$, false, 2),
    (v_q, $t$Rund$t$, false, 3),
    (v_q, $t$Süß$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie isst man oft die Nürnberger Bratwurst?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Drei Stück in einem Brötchen$t$, true, 1),
    (v_q, $t$Nur mit den Fingern$t$, false, 2),
    (v_q, $t$Mit Reis$t$, false, 3),
    (v_q, $t$Mit Nudeln$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was ist eine Currywurst?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Eine Bratwurst mit Currysoße und Ketchup$t$, true, 1),
    (v_q, $t$Eine Wurst aus Curry-Fleisch$t$, false, 2),
    (v_q, $t$Eine süße Wurst$t$, false, 3),
    (v_q, $t$Eine Wurst aus Fisch$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wo riecht man oft den Duft von Bratwurst?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Auf Weihnachtsmärkten und Volksfesten$t$, true, 1),
    (v_q, $t$Nur im Restaurant$t$, false, 2),
    (v_q, $t$Nur zu Hause$t$, false, 3),
    (v_q, $t$Im Museum$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Womit isst man Bratwurst meistens?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Mit Brötchen, Senf oder Sauerkraut$t$, true, 1),
    (v_q, $t$Nur mit Wasser$t$, false, 2),
    (v_q, $t$Mit Kuchen$t$, false, 3),
    (v_q, $t$Mit Eis$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wozu gehört die Bratwurst für viele Deutsche im Sommer?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Zu einem perfekten Grillabend$t$, true, 1),
    (v_q, $t$Zu einem Museumsbesuch$t$, false, 2),
    (v_q, $t$Zu einer Zugfahrt$t$, false, 3),
    (v_q, $t$Zu einem Konzert$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'der Metzger'?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Ein Fleischverkäufer$t$, true, 1),
    (v_q, $t$Ein Lehrer$t$, false, 2),
    (v_q, $t$Ein Musiker$t$, false, 3),
    (v_q, $t$Ein Bäcker für Brot$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welches Wort passt: Der ___ lernt das Rezept von seinen Eltern.$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Metzger$t$, true, 1),
    (v_q, $t$Lehrer$t$, false, 2),
    (v_q, $t$Arzt$t$, false, 3),
    (v_q, $t$Pilot$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welches Wort ist kein Gewürz oder keine Zutat für Bratwurst?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Zucker$t$, true, 1),
    (v_q, $t$Salz$t$, false, 2),
    (v_q, $t$Pfeffer$t$, false, 3),
    (v_q, $t$Fleisch$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Die Thüringer Bratwurst ___ über Holzkohle gegrillt. (werden)$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$wird$t$, true, 1),
    (v_q, $t$ist$t$, false, 2),
    (v_q, $t$hat$t$, false, 3),
    (v_q, $t$war$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wähle die richtige Perfektform: Der Metzger ___ das Rezept von seinen Eltern gelernt.$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$hat$t$, true, 1),
    (v_q, $t$ist$t$, false, 2),
    (v_q, $t$war$t$, false, 3),
    (v_q, $t$wird$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wähle die korrekte Form von 'riechen' im Präsens: Man ___ den Duft von Bratwurst überall.$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$riecht$t$, true, 1),
    (v_q, $t$roch$t$, false, 2),
    (v_q, $t$hat gerochen$t$, false, 3),
    (v_q, $t$riechen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$Schreibe 3-5 Sätze über die Bratwurst in Deutschland.$t$, 1, 'normal', 'production', $t$Die Bratwurst gibt es schon seit dem Mittelalter. Jede Region hat ihre eigene Art von Bratwurst. Man macht sie meistens aus Schweinefleisch, Salz und Gewürzen. Auf Weihnachtsmärkten riecht man oft den Duft von Bratwurst. Viele Deutsche essen Bratwurst gern zum Grillabend.$t$);

END $block$;

-- 25. Dornröschen und der lange Schlaf
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary) VALUES (
    'A2',
    $t$Dornröschen und der lange Schlaf$t$,
    $t$Vor vielen Jahren lebte ein König mit seiner Frau in einem schönen Schloss. Nach langer Zeit bekamen sie endlich eine Tochter. Der König lud viele Feen zur Taufe ein, aber er vergaß eine böse Fee.
Die böse Fee war wütend. Sie verfluchte die Prinzessin: Mit sechzehn Jahren sollte sie sich an einer Spindel stechen und sterben. Eine gute Fee konnte den Fluch nicht ganz aufheben, aber sie änderte ihn: Die Prinzessin sollte nur hundert Jahre schlafen.
Der König verbot alle Spindeln im Schloss. Trotzdem stach sich die Prinzessin mit sechzehn Jahren an einer versteckten Spindel. Sofort schlief das ganze Schloss ein. Um das Schloss wuchs eine dichte Dornenhecke.
Nach hundert Jahren kam ein Prinz zum Schloss. Die Dornenhecke öffnete sich für ihn. Er küsste die schlafende Prinzessin, und sie wachte auf. Alle im Schloss erwachten wieder, und es gab ein großes Fest.$t$,
    $t$Il y a de nombreuses années, un roi vivait avec sa femme dans un beau château. Après longtemps, ils eurent enfin une fille. Le roi invita de nombreuses fées au baptême, mais il oublia une méchante fée.
La méchante fée était furieuse. Elle maudit la princesse : à seize ans, elle devait se piquer avec un fuseau et mourir. Une bonne fée ne put pas lever complètement le sortilège, mais elle le modifia : la princesse ne dormirait que cent ans.
Le roi interdit tous les fuseaux dans le château. Malgré tout, la princesse se piqua à seize ans avec un fuseau caché. Aussitôt, tout le château s'endormit. Autour du château poussa une haie d'épines dense.
Après cent ans, un prince arriva au château. La haie d'épines s'ouvrit pour lui. Il embrassa la princesse endormie, et elle se réveilla. Tous, dans le château, se réveillèrent à nouveau, et il y eut une grande fête.$t$,
    $t${"Vor":"il y a","vielen":"de nombreuses","Jahren":"années","lebte":"vivait","ein":"un","König":"roi","mit":"avec","seiner":"sa","Frau":"femme","in":"dans","einem":"un","schönen":"beau","Schloss":"château","Nach":"après","langer":"longtemps","Zeit":"(temps)","bekamen":"eurent","sie":"ils","endlich":"enfin","eine":"une","Tochter":"fille","Der":"le roi","lud":"invita","viele":"de nombreuses","Feen":"fées","zur":"au","Taufe":"baptême","aber":"mais","er":"il","vergaß":"oublia","böse":"méchante","Fee":"fée","Die":"la","war":"était","wütend":"furieuse","Sie":"elle","verfluchte":"maudit","die":"la","Prinzessin":"princesse","Mit":"à","sechzehn":"seize","sollte":"devait","sich":"se","an":"à","einer":"un","Spindel":"fuseau","stechen":"piquer","und":"et","sterben":"mourir","Eine":"une","gute":"bonne","konnte":"put","den":"le","Fluch":"sortilège","nicht":"pas","ganz":"complètement","aufheben":"lever","änderte":"modifia","ihn":"le","nur":"seulement","hundert":"cent","Jahre":"ans","schlafen":"dormir","verbot":"interdit","alle":"tous les","Spindeln":"fuseaux","im":"dans le","Trotzdem":"malgré tout","stach":"se piqua","versteckten":"caché","Sofort":"aussitôt","schlief":"s'endormit","das":"le","ganze":"tout entier","Um":"autour","wuchs":"poussa","dichte":"dense","Dornenhecke":"haie d'épines","kam":"vint","Prinz":"prince","zum":"au","öffnete":"s'ouvrit","für":"pour","Er":"Il","küsste":"embrassa","schlafende":"endormie","wachte":"se réveilla","auf":"(réveilla)","Alle":"tous","erwachten":"se réveillèrent","wieder":"de nouveau","es":"il","gab":"y eut","großes":"grande","Fest":"fête"}$t$::jsonb
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wer lebte im Schloss?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Ein König mit seiner Frau$t$, true, 1),
    (v_q, $t$Eine Hexe$t$, false, 2),
    (v_q, $t$Ein Bauer$t$, false, 3),
    (v_q, $t$Ein Fischer$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wen lud der König nicht zur Taufe ein?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Eine böse Fee$t$, true, 1),
    (v_q, $t$Einen Prinzen$t$, false, 2),
    (v_q, $t$Einen Freund$t$, false, 3),
    (v_q, $t$Einen Bruder$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was passierte, nachdem der König lange gewartet hatte?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er bekam eine Tochter$t$, true, 1),
    (v_q, $t$Er wurde krank$t$, false, 2),
    (v_q, $t$Er verlor sein Schloss$t$, false, 3),
    (v_q, $t$Er reiste in ein anderes Land$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was sollte mit der Prinzessin mit sechzehn Jahren passieren?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie sollte sich an einer Spindel stechen$t$, true, 1),
    (v_q, $t$Sie sollte heiraten$t$, false, 2),
    (v_q, $t$Sie sollte reisen$t$, false, 3),
    (v_q, $t$Sie sollte singen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was änderte die gute Fee am Fluch?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Die Prinzessin sollte nur hundert Jahre schlafen$t$, true, 1),
    (v_q, $t$Die Prinzessin sollte gar nicht sterben$t$, false, 2),
    (v_q, $t$Die Prinzessin sollte reich werden$t$, false, 3),
    (v_q, $t$Die Prinzessin sollte fliegen können$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was verbot der König im ganzen Schloss?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Alle Spindeln$t$, true, 1),
    (v_q, $t$Alle Bücher$t$, false, 2),
    (v_q, $t$Alle Messer$t$, false, 3),
    (v_q, $t$Alle Türen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wer kam nach hundert Jahren zum Schloss?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Ein Prinz$t$, true, 1),
    (v_q, $t$Ein König$t$, false, 2),
    (v_q, $t$Ein Bauer$t$, false, 3),
    (v_q, $t$Ein Händler$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was wuchs um das Schloss herum?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Eine dichte Dornenhecke$t$, true, 1),
    (v_q, $t$Ein großer Garten$t$, false, 2),
    (v_q, $t$Ein tiefer Fluss$t$, false, 3),
    (v_q, $t$Ein hoher Zaun$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was geschah, nachdem der Prinz die Prinzessin geküsst hatte?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Alle im Schloss erwachten wieder$t$, true, 1),
    (v_q, $t$Das Schloss verschwand$t$, false, 2),
    (v_q, $t$Die Prinzessin verschwand$t$, false, 3),
    (v_q, $t$Der Prinz schlief ein$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'die Spindel'?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Ein Gerät zum Spinnen von Faden$t$, true, 1),
    (v_q, $t$Ein Musikinstrument$t$, false, 2),
    (v_q, $t$Ein Buch$t$, false, 3),
    (v_q, $t$Ein Schwert$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welches Wort passt: Die Prinzessin stach sich an einer ___.$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Spindel$t$, true, 1),
    (v_q, $t$Blume$t$, false, 2),
    (v_q, $t$Tür$t$, false, 3),
    (v_q, $t$Krone$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welches Wort passt am besten zu 'verfluchen'?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$etwas Schlimmes wünschen$t$, true, 1),
    (v_q, $t$etwas schenken$t$, false, 2),
    (v_q, $t$etwas kochen$t$, false, 3),
    (v_q, $t$etwas kaufen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Die Prinzessin ___ hundert Jahre. (schlafen)$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$schlief$t$, true, 1),
    (v_q, $t$schläft$t$, false, 2),
    (v_q, $t$hat geschlafen$t$, false, 3),
    (v_q, $t$schlafen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wähle die richtige Perfektform: Der Prinz ___ die Prinzessin geküsst.$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$hat$t$, true, 1),
    (v_q, $t$ist$t$, false, 2),
    (v_q, $t$war$t$, false, 3),
    (v_q, $t$wird$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wähle die korrekte Form von 'erwachen' im Präteritum: Alle im Schloss ___ wieder.$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$erwachten$t$, true, 1),
    (v_q, $t$erwachte$t$, false, 2),
    (v_q, $t$sind erwacht$t$, false, 3),
    (v_q, $t$erwacht$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$Schreibe 3-5 Sätze über die Geschichte von Dornröschen.$t$, 1, 'normal', 'production', $t$Eine böse Fee verfluchte die kleine Prinzessin. Mit sechzehn Jahren stach sich die Prinzessin an einer Spindel. Das ganze Schloss schlief hundert Jahre lang. Ein Prinz kam und küsste die Prinzessin. Danach erwachten alle im Schloss wieder.$t$);

END $block$;

