-- Contenu supplémentaire (2026-09) — 1 histoire de plus par niveau (A1→C2),
-- suivant exactement le même schéma que 0003-0008 :
-- - 3 questions de compréhension (position 1-3) x 3 difficultés
-- - 1 question de vocabulaire (position 1) x 3 difficultés
-- - 1 question de conjugaison/grammaire (position 1) x 3 difficultés
-- - 1 tâche de production écrite (position 1, difficulty 'normal', pas de choix, model_answer)

-- 1. Der Sonntagsmarkt (A1)
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary) VALUES (
    'A1',
    $t$Der Sonntagsmarkt$t$,
    $t$Am Sonntag geht Lena auf den Markt. Sie kauft frisches Obst und Gemüse. An einem Stand gibt es auch Blumen. Lena kauft rote Rosen für ihre Mutter. Ein Mann verkauft warmen Kaffee. Lena trinkt einen Kaffee und isst ein Stück Kuchen. Am Ende geht sie glücklich nach Hause.$t$,
    $t$Le dimanche, Lena va au marché. Elle achète des fruits et légumes frais. À un stand, il y a aussi des fleurs. Lena achète des roses rouges pour sa mère. Un homme vend du café chaud. Lena boit un café et mange un morceau de gâteau. À la fin, elle rentre chez elle heureuse.$t$,
    $t${"Am":"le/au","Sonntag":"dimanche","geht":"va","Lena":"Lena","auf":"sur/à","den":"le","Markt":"marché","Sie":"Elle","kauft":"achète","frisches":"frais","Obst":"les fruits","und":"et","Gemüse":"les légumes","An":"à","einem":"un","Stand":"stand","gibt":"donne","es":"il/cela","auch":"aussi","Blumen":"des fleurs","rote":"rouges","Rosen":"des roses","für":"pour","ihre":"sa","Mutter":"mère","Ein":"un","Mann":"homme","verkauft":"vend","warmen":"chaud","Kaffee":"café","trinkt":"boit","einen":"un","isst":"mange","ein":"un","Stück":"morceau","Kuchen":"gâteau","Ende":"fin","sie":"elle","glücklich":"heureuse","nach":"vers","Hause":"la maison"}$t$::jsonb
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wohin geht Lena am Sonntag?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Auf den Markt$t$, true, 1),
    (v_q, $t$Ins Kino$t$, false, 2),
    (v_q, $t$In die Schule$t$, false, 3),
    (v_q, $t$Zum Arzt$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was kauft Lena zuerst auf dem Markt?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Frisches Obst und Gemüse$t$, true, 1),
    (v_q, $t$Nur Blumen$t$, false, 2),
    (v_q, $t$Nur Kaffee$t$, false, 3),
    (v_q, $t$Ein Buch$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was für einen Markt besucht Lena?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Einen Sonntagsmarkt mit Obst, Blumen und Kaffee$t$, true, 1),
    (v_q, $t$Einen Weihnachtsmarkt$t$, false, 2),
    (v_q, $t$Einen Flohmarkt für Kleidung$t$, false, 3),
    (v_q, $t$Einen Automarkt$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Für wen kauft Lena die roten Rosen?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Für ihre Mutter$t$, true, 1),
    (v_q, $t$Für ihren Vater$t$, false, 2),
    (v_q, $t$Für ihre Schwester$t$, false, 3),
    (v_q, $t$Für sich selbst$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was verkauft der Mann an seinem Stand?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Warmen Kaffee$t$, true, 1),
    (v_q, $t$Kalte Milch$t$, false, 2),
    (v_q, $t$Frisches Brot$t$, false, 3),
    (v_q, $t$Süßen Tee$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was macht Lena, nachdem sie die Rosen gekauft hat?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie trinkt einen Kaffee und isst Kuchen$t$, true, 1),
    (v_q, $t$Sie geht sofort nach Hause$t$, false, 2),
    (v_q, $t$Sie kauft noch mehr Blumen$t$, false, 3),
    (v_q, $t$Sie trifft eine Freundin$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie fühlt sich Lena am Ende?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Glücklich$t$, true, 1),
    (v_q, $t$Traurig$t$, false, 2),
    (v_q, $t$Müde$t$, false, 3),
    (v_q, $t$Hungrig$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was isst Lena am Marktstand?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Ein Stück Kuchen$t$, true, 1),
    (v_q, $t$Ein Brot$t$, false, 2),
    (v_q, $t$Einen Apfel$t$, false, 3),
    (v_q, $t$Nichts$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was macht Lena ganz am Ende der Geschichte?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie geht glücklich nach Hause$t$, true, 1),
    (v_q, $t$Sie bleibt auf dem Markt$t$, false, 2),
    (v_q, $t$Sie ruft ihre Mutter an$t$, false, 3),
    (v_q, $t$Sie kauft noch Gemüse$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'das Gemüse'?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$les légumes$t$, true, 1),
    (v_q, $t$les fruits$t$, false, 2),
    (v_q, $t$les fleurs$t$, false, 3),
    (v_q, $t$le pain$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Im Satz 'Sie kauft frisches Obst' bedeutet 'frisch':$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$frais$t$, true, 1),
    (v_q, $t$vieux$t$, false, 2),
    (v_q, $t$cher$t$, false, 3),
    (v_q, $t$lourd$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet der Ausdruck 'es gibt' im Satz 'An einem Stand gibt es auch Blumen'?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$il y a$t$, true, 1),
    (v_q, $t$il donne$t$, false, 2),
    (v_q, $t$il prend$t$, false, 3),
    (v_q, $t$il vend$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie heißt 'kaufen' in der Form für 'sie' (Lena)?$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$kauft$t$, true, 1),
    (v_q, $t$kaufen$t$, false, 2),
    (v_q, $t$kaufst$t$, false, 3),
    (v_q, $t$kaufe$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Ergänze: Lena ___ einen Kaffee.$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$trinkt$t$, true, 1),
    (v_q, $t$trinken$t$, false, 2),
    (v_q, $t$trinkst$t$, false, 3),
    (v_q, $t$getrunken$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Form von 'gehen' passt zu 'sie' (Einzahl)?$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$geht$t$, true, 1),
    (v_q, $t$gehen$t$, false, 2),
    (v_q, $t$gehst$t$, false, 3),
    (v_q, $t$gegangen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$Sie sind auf einem Markt. Was kaufen Sie? Schreiben Sie 2-3 einfache Sätze.$t$, 1, 'normal', 'production', $t$Ich gehe auf den Markt. Ich kaufe Obst und Blumen. Danach trinke ich einen Kaffee.$t$);

END $block$;

-- 2. Der verpasste Bus (A2)
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary) VALUES (
    'A2',
    $t$Der verpasste Bus$t$,
    $t$Gestern Morgen ist Paul zu spät aufgewacht. Er hat schnell gefrühstückt und ist zur Bushaltestelle gelaufen. Leider hat er den Bus verpasst. Der nächste Bus ist erst in dreißig Minuten gekommen. Paul hat seine Kollegin angerufen und ihr Bescheid gesagt. Am Ende ist er trotzdem pünktlich zur Besprechung gekommen.$t$,
    $t$Hier matin, Paul s'est réveillé trop tard. Il a pris son petit-déjeuner rapidement et a couru jusqu'à l'arrêt de bus. Malheureusement, il a raté le bus. Le bus suivant n'est arrivé que trente minutes plus tard. Paul a appelé sa collègue et l'a prévenue. Finalement, il est quand même arrivé à l'heure à la réunion.$t$,
    $t${"Gestern":"hier","Morgen":"matin","ist":"est","Paul":"Paul","zu":"trop","spät":"tard","aufgewacht":"réveillé","Er":"il","hat":"a","schnell":"rapidement","gefrühstückt":"pris le petit-déjeuner","und":"et","zur":"vers la","Bushaltestelle":"l'arrêt de bus","gelaufen":"couru","Leider":"malheureusement","den":"le","Bus":"bus","verpasst":"raté","Der":"le","nächste":"prochain","erst":"seulement","in":"dans","dreißig":"trente","Minuten":"minutes","gekommen":"venu/arrivé","seine":"sa","Kollegin":"collègue","angerufen":"appelé","ihr":"lui","Bescheid":"au courant","gesagt":"dit","Am":"au","Ende":"final","trotzdem":"quand même","pünktlich":"à l'heure","Besprechung":"réunion"}$t$::jsonb
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wann ist Paul aufgewacht?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Zu spät$t$, true, 1),
    (v_q, $t$Sehr früh$t$, false, 2),
    (v_q, $t$Pünktlich$t$, false, 3),
    (v_q, $t$Er ist nicht aufgewacht$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was hat Paul gemacht, nachdem er aufgewacht ist?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Schnell gefrühstückt$t$, true, 1),
    (v_q, $t$Sofort geschlafen$t$, false, 2),
    (v_q, $t$Direkt gearbeitet$t$, false, 3),
    (v_q, $t$Ein Bad genommen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum ist Paul zur Bushaltestelle gelaufen?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Weil er zu spät aufgewacht ist$t$, true, 1),
    (v_q, $t$Weil er Sport machen wollte$t$, false, 2),
    (v_q, $t$Weil der Bus kaputt war$t$, false, 3),
    (v_q, $t$Weil er sein Auto verkauft hat$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was ist mit dem Bus passiert?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Paul hat ihn verpasst$t$, true, 1),
    (v_q, $t$Der Bus ist kaputtgegangen$t$, false, 2),
    (v_q, $t$Paul ist zu früh gekommen$t$, false, 3),
    (v_q, $t$Es gab keinen Bus$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie lange musste Paul auf den nächsten Bus warten?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Dreißig Minuten$t$, true, 1),
    (v_q, $t$Zehn Minuten$t$, false, 2),
    (v_q, $t$Eine Stunde$t$, false, 3),
    (v_q, $t$Fünf Minuten$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was hat Paul gemacht, während er auf den nächsten Bus gewartet hat?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er hat seine Kollegin angerufen$t$, true, 1),
    (v_q, $t$Er ist nach Hause gegangen$t$, false, 2),
    (v_q, $t$Er hat ein Taxi genommen$t$, false, 3),
    (v_q, $t$Er ist zu Fuß gegangen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Ist Paul am Ende pünktlich zur Besprechung gekommen?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Ja$t$, true, 1),
    (v_q, $t$Nein$t$, false, 2),
    (v_q, $t$Er ist gar nicht gekommen$t$, false, 3),
    (v_q, $t$Die Besprechung wurde abgesagt$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wen hat Paul angerufen?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Seine Kollegin$t$, true, 1),
    (v_q, $t$Seinen Chef$t$, false, 2),
    (v_q, $t$Seine Mutter$t$, false, 3),
    (v_q, $t$Einen Freund$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was zeigt diese Geschichte über Paul?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er bleibt ruhig und findet trotzdem eine Lösung$t$, true, 1),
    (v_q, $t$Er kommt immer zu spät$t$, false, 2),
    (v_q, $t$Er mag den Bus nicht$t$, false, 3),
    (v_q, $t$Er hat kein Handy$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'die Bushaltestelle'?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$l'arrêt de bus$t$, true, 1),
    (v_q, $t$la gare$t$, false, 2),
    (v_q, $t$l'aéroport$t$, false, 3),
    (v_q, $t$le parking$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Im Satz 'Er hat den Bus verpasst' bedeutet 'verpassen':$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$rater$t$, true, 1),
    (v_q, $t$attendre$t$, false, 2),
    (v_q, $t$prendre$t$, false, 3),
    (v_q, $t$conduire$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'Bescheid sagen' im Satz 'Paul hat seiner Kollegin Bescheid gesagt'?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$informer quelqu'un$t$, true, 1),
    (v_q, $t$féliciter quelqu'un$t$, false, 2),
    (v_q, $t$gronder quelqu'un$t$, false, 3),
    (v_q, $t$remercier quelqu'un$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welches Hilfsverb braucht 'aufwachen' im Perfekt?$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$sein$t$, true, 1),
    (v_q, $t$haben$t$, false, 2),
    (v_q, $t$werden$t$, false, 3),
    (v_q, $t$können$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Ergänze im Perfekt: Paul ___ schnell gefrühstückt.$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$hat$t$, true, 1),
    (v_q, $t$ist$t$, false, 2),
    (v_q, $t$war$t$, false, 3),
    (v_q, $t$hatte$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welcher Satz steht korrekt im Perfekt?$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er ist zur Bushaltestelle gelaufen.$t$, true, 1),
    (v_q, $t$Er hat zur Bushaltestelle gelaufen.$t$, false, 2),
    (v_q, $t$Er ist zur Bushaltestelle laufen.$t$, false, 3),
    (v_q, $t$Er hatte zur Bushaltestelle läuft.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$Erzählen Sie von einem Tag, an dem Sie zu spät gekommen sind. Schreiben Sie 3-4 Sätze im Perfekt.$t$, 1, 'normal', 'production', $t$Letzte Woche bin ich zu spät aufgewacht. Ich habe schnell geduscht und bin zur Arbeit gefahren. Ich habe den Bus verpasst und musste ein Taxi nehmen. Am Ende bin ich trotzdem pünktlich angekommen.$t$);

END $block$;

-- 3. Die Wohnungssuche (B1)
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary) VALUES (
    'B1',
    $t$Die Wohnungssuche$t$,
    $t$Nach dem Studium wollte Sophie in eine größere Stadt ziehen. Sie suchte wochenlang nach einer bezahlbaren Wohnung, aber die Mieten waren sehr hoch. Ein Freund erzählte ihr von einer Wohnung, die gerade frei wurde. Sophie rief sofort den Vermieter an und vereinbarte einen Besichtigungstermin. Die Wohnung war klein, aber hell und zentral gelegen. Obwohl der Preis etwas über ihrem Budget lag, entschied sich Sophie dafür. Nach zwei Wochen zog sie mit ihren wenigen Möbeln ein.$t$,
    $t$Après ses études, Sophie voulait déménager dans une plus grande ville. Elle a cherché pendant des semaines un appartement abordable, mais les loyers étaient très élevés. Un ami lui a parlé d'un appartement qui venait de se libérer. Sophie a immédiatement appelé le propriétaire et a convenu d'un rendez-vous de visite. L'appartement était petit, mais lumineux et bien situé. Bien que le prix dépasse un peu son budget, Sophie s'est décidée pour cet appartement. Deux semaines plus tard, elle a emménagé avec ses quelques meubles.$t$,
    $t${"Nach":"après","dem":"le","Studium":"les études","wollte":"voulait","Sophie":"Sophie","in":"dans","eine":"une","größere":"plus grande","Stadt":"ville","ziehen":"déménager","Sie":"elle","suchte":"cherchait","wochenlang":"pendant des semaines","einer":"un","bezahlbaren":"abordable","Wohnung":"appartement","aber":"mais","die":"les","Mieten":"les loyers","waren":"étaient","sehr":"très","hoch":"élevés","Ein":"un","Freund":"ami","erzählte":"racontait","ihr":"lui","von":"de","gerade":"justement","frei":"libre","wurde":"devenait","rief":"appelait","sofort":"immédiatement","den":"le","Vermieter":"propriétaire","vereinbarte":"convenait","einen":"un","Besichtigungstermin":"rendez-vous de visite","klein":"petit","hell":"lumineux","und":"et","zentral":"central","gelegen":"situé","Obwohl":"bien que","der":"le","Preis":"prix","etwas":"un peu","über":"au-dessus de","ihrem":"son","Budget":"budget","lag":"était situé","entschied":"décidait","sich":"se","dafür":"pour cela","zwei":"deux","Wochen":"semaines","zog":"emménageait","mit":"avec","ihren":"ses","wenigen":"peu de","Möbeln":"meubles"}$t$::jsonb
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was wollte Sophie nach dem Studium machen?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$In eine größere Stadt ziehen$t$, true, 1),
    (v_q, $t$Ein neues Studium beginnen$t$, false, 2),
    (v_q, $t$Bei ihren Eltern bleiben$t$, false, 3),
    (v_q, $t$Ins Ausland reisen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum war die Wohnungssuche schwierig?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Die Mieten waren sehr hoch$t$, true, 1),
    (v_q, $t$Es gab keine Wohnungen$t$, false, 2),
    (v_q, $t$Sophie hatte kein Geld$t$, false, 3),
    (v_q, $t$Sie kannte die Stadt nicht$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was zeigt der Text über den Wohnungsmarkt in der Stadt?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Bezahlbare Wohnungen waren schwer zu finden$t$, true, 1),
    (v_q, $t$Es gab zu viele leere Wohnungen$t$, false, 2),
    (v_q, $t$Die Mieten waren sehr niedrig$t$, false, 3),
    (v_q, $t$Niemand wollte in die Stadt ziehen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wer hat Sophie von der freien Wohnung erzählt?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Ein Freund$t$, true, 1),
    (v_q, $t$Ihre Mutter$t$, false, 2),
    (v_q, $t$Der Vermieter selbst$t$, false, 3),
    (v_q, $t$Eine Zeitungsanzeige$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was hat Sophie gemacht, nachdem ihr Freund ihr von der Wohnung erzählt hat?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie hat sofort den Vermieter angerufen$t$, true, 1),
    (v_q, $t$Sie hat die Wohnung ignoriert$t$, false, 2),
    (v_q, $t$Sie hat zuerst ihre Eltern gefragt$t$, false, 3),
    (v_q, $t$Sie ist sofort umgezogen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was verrät das schnelle Handeln von Sophie?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Dass gute Wohnungen schnell vergeben werden$t$, true, 1),
    (v_q, $t$Dass sie den Vermieter schon kannte$t$, false, 2),
    (v_q, $t$Dass sie keine Wahl hatte$t$, false, 3),
    (v_q, $t$Dass die Wohnung sehr billig war$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie war die Wohnung?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Klein, aber hell und zentral$t$, true, 1),
    (v_q, $t$Groß und dunkel$t$, false, 2),
    (v_q, $t$Weit außerhalb der Stadt$t$, false, 3),
    (v_q, $t$Sehr teuer und laut$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum hat Sophie trotzdem zugesagt, obwohl der Preis über ihrem Budget lag?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Weil ihr die Lage und die Helligkeit gefielen$t$, true, 1),
    (v_q, $t$Weil es keine andere Wohnung gab$t$, false, 2),
    (v_q, $t$Weil der Vermieter sie überredet hat$t$, false, 3),
    (v_q, $t$Weil sie den Preis nicht verstanden hat$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wann ist Sophie in die neue Wohnung eingezogen?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Zwei Wochen nach der Besichtigung$t$, true, 1),
    (v_q, $t$Am selben Tag$t$, false, 2),
    (v_q, $t$Erst nach einem Jahr$t$, false, 3),
    (v_q, $t$Sie ist nie eingezogen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'die Miete'?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$le loyer$t$, true, 1),
    (v_q, $t$le salaire$t$, false, 2),
    (v_q, $t$l'impôt$t$, false, 3),
    (v_q, $t$le crédit$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Im Satz 'Sie suchte eine bezahlbare Wohnung' bedeutet 'bezahlbar':$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$abordable$t$, true, 1),
    (v_q, $t$luxueux$t$, false, 2),
    (v_q, $t$immense$t$, false, 3),
    (v_q, $t$vide$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'zentral gelegen' im Text?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$bien situé, au centre$t$, true, 1),
    (v_q, $t$loin de tout$t$, false, 2),
    (v_q, $t$très ancien$t$, false, 3),
    (v_q, $t$difficile à trouver$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie heißt das Präteritum von 'wollen' für 'sie' (Sophie)?$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$wollte$t$, true, 1),
    (v_q, $t$will$t$, false, 2),
    (v_q, $t$gewollt$t$, false, 3),
    (v_q, $t$wollen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Ergänze im Präteritum: Der Freund ___ ihr von der Wohnung.$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$erzählte$t$, true, 1),
    (v_q, $t$erzählt$t$, false, 2),
    (v_q, $t$erzählen$t$, false, 3),
    (v_q, $t$hat erzählt$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welches Verb steht im Präteritum für 'ziehen' in der 3. Person Singular?$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$zog$t$, true, 1),
    (v_q, $t$zieht$t$, false, 2),
    (v_q, $t$gezogen$t$, false, 3),
    (v_q, $t$ziehen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$Beschreiben Sie in 5-7 Sätzen Ihre Traumwohnung: Wo liegt sie? Wie sieht sie aus? Warum gefällt sie Ihnen?$t$, 1, 'normal', 'production', $t$Meine Traumwohnung liegt zentral in einer lebendigen Stadt, damit ich alles zu Fuß erreichen kann. Sie ist hell, ruhig und hat einen kleinen Balkon mit Blick auf einen Park. Die Miete sollte natürlich bezahlbar sein, auch wenn die Lage sehr gut ist. Ich möchte außerdem eine offene Küche haben, in der ich mit Freunden kochen kann. Am liebsten würde ich mit einer guten Freundin zusammenwohnen, damit die Wohnung nie leer wirkt. Wenn ich genug Geld gespart habe, möchte ich diese Wohnung eines Tages wirklich finden.$t$);

END $block$;

-- 4. Die Entscheidung für die Fernbeziehung (B2)
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary) VALUES (
    'B2',
    $t$Die Entscheidung für die Fernbeziehung$t$,
    $t$Als Julia das Jobangebot in einer anderen Stadt erhielt, stand sie vor einer schwierigen Entscheidung. Ihr Partner Tom konnte wegen seiner Arbeit nicht mitziehen, sodass eine Fernbeziehung die einzige Option zu sein schien. Viele Freunde rieten ihr ab, weil Fernbeziehungen oft scheitern. Dennoch entschied sich Julia für den neuen Job, da sie die Chance nicht verpassen wollte. Beide vereinbarten, sich alle zwei Wochen zu besuchen und regelmäßig zu telefonieren. Nach einem Jahr stellte sich heraus, dass ihre Beziehung dadurch sogar stärker geworden war.$t$,
    $t$Lorsque Julia a reçu l'offre d'emploi dans une autre ville, elle s'est retrouvée face à une décision difficile. Son partenaire Tom ne pouvait pas déménager à cause de son travail, si bien qu'une relation à distance semblait être la seule option. Beaucoup d'amis l'ont mise en garde, car les relations à distance échouent souvent. Néanmoins, Julia a opté pour le nouvel emploi, car elle ne voulait pas manquer cette chance. Tous deux ont convenu de se voir toutes les deux semaines et de s'appeler régulièrement. Après un an, il s'est avéré que leur relation en était même devenue plus forte.$t$,
    $t${"Als":"lorsque","Julia":"Julia","das":"le/la","Jobangebot":"offre d'emploi","in":"dans","einer":"une","anderen":"autre","Stadt":"ville","erhielt":"recevait","stand":"se tenait","sie":"elle","vor":"devant","schwierigen":"difficile","Entscheidung":"décision","Ihr":"son","Partner":"partenaire","Tom":"Tom","konnte":"pouvait","wegen":"à cause de","seiner":"son","Arbeit":"travail","nicht":"pas","mitziehen":"déménager avec","sodass":"si bien que","eine":"une","Fernbeziehung":"relation à distance","die":"la","einzige":"seule","Option":"option","schien":"semblait","Viele":"beaucoup de","Freunde":"amis","rieten":"conseillaient","ihr":"lui","ab":"(particule)","weil":"parce que","Fernbeziehungen":"relations à distance","oft":"souvent","scheitern":"échouent","Dennoch":"néanmoins","entschied":"décidait","sich":"se","für":"pour","den":"le","neuen":"nouveau","Job":"emploi","da":"car","Chance":"chance","verpassen":"manquer","wollte":"voulait","Beide":"les deux","vereinbarten":"convenaient","alle":"tous les","zwei":"deux","Wochen":"semaines","besuchen":"visiter","regelmäßig":"régulièrement","telefonieren":"téléphoner","Nach":"après","einem":"un","Jahr":"an","stellte":"s'avérait","heraus":"(particule)","dass":"que","ihre":"leur","Beziehung":"relation","dadurch":"grâce à cela","sogar":"même","stärker":"plus forte","geworden":"devenue"}$t$::jsonb
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Vor welcher Entscheidung stand Julia?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Ob sie den neuen Job in einer anderen Stadt annehmen soll$t$, true, 1),
    (v_q, $t$Ob sie heiraten soll$t$, false, 2),
    (v_q, $t$Ob sie kündigen soll$t$, false, 3),
    (v_q, $t$Ob sie ohne Job umziehen soll$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum konnte Tom nicht mit Julia mitziehen?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Wegen seiner Arbeit$t$, true, 1),
    (v_q, $t$Weil er die Stadt nicht mochte$t$, false, 2),
    (v_q, $t$Weil seine Familie dagegen war$t$, false, 3),
    (v_q, $t$Weil er kein Geld hatte$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was war laut Text die einzige realistische Option für das Paar?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Eine Fernbeziehung zu führen$t$, true, 1),
    (v_q, $t$Sich zu trennen$t$, false, 2),
    (v_q, $t$Beide Jobs abzulehnen$t$, false, 3),
    (v_q, $t$Gemeinsam umzuziehen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was rieten die Freunde Julia?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Von der Fernbeziehung ab$t$, true, 1),
    (v_q, $t$Sofort zu heiraten$t$, false, 2),
    (v_q, $t$Den Job abzulehnen$t$, false, 3),
    (v_q, $t$Mit Tom zu brechen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum haben die Freunde von der Fernbeziehung abgeraten?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Weil Fernbeziehungen oft scheitern$t$, true, 1),
    (v_q, $t$Weil Tom unzuverlässig war$t$, false, 2),
    (v_q, $t$Weil Julia zu jung war$t$, false, 3),
    (v_q, $t$Weil die Stadt zu weit weg war$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was sagt die Reaktion der Freunde über gesellschaftliche Erwartungen an Beziehungen aus?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Fernbeziehungen gelten oft als riskant$t$, true, 1),
    (v_q, $t$Fernbeziehungen sind gesellschaftlich anerkannt$t$, false, 2),
    (v_q, $t$Freunde mischen sich nie in Beziehungen ein$t$, false, 3),
    (v_q, $t$Nur berufliche Gründe zählen in Beziehungen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie oft wollten sich Julia und Tom besuchen?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Alle zwei Wochen$t$, true, 1),
    (v_q, $t$Jeden Tag$t$, false, 2),
    (v_q, $t$Einmal im Jahr$t$, false, 3),
    (v_q, $t$Nie$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was stellte sich nach einem Jahr heraus?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Die Beziehung war stärker geworden$t$, true, 1),
    (v_q, $t$Die Beziehung war gescheitert$t$, false, 2),
    (v_q, $t$Julia kündigte den Job$t$, false, 3),
    (v_q, $t$Tom zog doch noch um$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Schlussfolgerung lässt der Text über Fernbeziehungen zu?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie können trotz Risiken gelingen$t$, true, 1),
    (v_q, $t$Sie scheitern immer$t$, false, 2),
    (v_q, $t$Sie sind einfacher als normale Beziehungen$t$, false, 3),
    (v_q, $t$Sie erfordern keine Kommunikation$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'die Fernbeziehung'?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$la relation à distance$t$, true, 1),
    (v_q, $t$le mariage$t$, false, 2),
    (v_q, $t$l'amitié$t$, false, 3),
    (v_q, $t$la rupture$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Im Satz 'Freunde rieten ihr ab' bedeutet 'abraten':$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$déconseiller$t$, true, 1),
    (v_q, $t$conseiller$t$, false, 2),
    (v_q, $t$féliciter$t$, false, 3),
    (v_q, $t$encourager$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'sich herausstellen' im Satz 'Es stellte sich heraus, dass...'?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$s'avérer$t$, true, 1),
    (v_q, $t$se cacher$t$, false, 2),
    (v_q, $t$se plaindre$t$, false, 3),
    (v_q, $t$se moquer$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Form ist der Konjunktiv II von 'können' (er/sie/es)?$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$könnte$t$, true, 1),
    (v_q, $t$kann$t$, false, 2),
    (v_q, $t$konnte$t$, false, 3),
    (v_q, $t$gekonnt$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Ergänze im Konjunktiv II: Wenn Tom Zeit ___, würde er öfter zu Besuch kommen.$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$hätte$t$, true, 1),
    (v_q, $t$hat$t$, false, 2),
    (v_q, $t$hatte$t$, false, 3),
    (v_q, $t$haben$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welcher Satz drückt korrekt eine Vermutung im Konjunktiv II aus?$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Es könnte schwierig werden.$t$, true, 1),
    (v_q, $t$Es kann schwierig werden.$t$, false, 2),
    (v_q, $t$Es wird schwierig werden.$t$, false, 3),
    (v_q, $t$Es ist schwierig geworden.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$Schreiben Sie einen argumentativen Absatz (6–9 Sätze): Sollte man für die Liebe in eine andere Stadt ziehen, auch wenn es beruflich riskant ist? Begründen Sie Ihre Meinung mit Argumenten und einem Beispiel.$t$, 1, 'normal', 'production', $t$Meiner Meinung nach kann es sich lohnen, für eine Beziehung ein berufliches Risiko einzugehen, wenn beide Partner den Willen zeigen, die Fernbeziehung aktiv zu gestalten. Wie im Text von Julia und Tom deutlich wird, muss eine räumliche Trennung nicht zwangsläufig das Ende einer Beziehung bedeuten. Entscheidend scheint mir, dass beide Seiten realistische Erwartungen haben und regelmäßig kommunizieren, anstatt die Beziehung sich selbst zu überlassen. Andererseits sollte man eine berufliche Chance nicht leichtfertig aufgeben, nur um mögliche Konflikte zu vermeiden, wie es die Freunde von Julia zunächst vorschlugen. Ein Kompromiss, wie regelmäßige Besuche und feste Kommunikationsrituale, kann helfen, Nähe trotz Distanz zu bewahren. Natürlich bleibt jede Fernbeziehung mit einem gewissen Risiko verbunden, das man nicht unterschätzen sollte. Insgesamt bin ich jedoch überzeugt, dass gegenseitiges Vertrauen und offene Kommunikation wichtiger sind als die reine geografische Nähe.$t$);

END $block$;

-- 5. Der Zweifel des Übersetzers (C1)
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary) VALUES (
    'C1',
    $t$Der Zweifel des Übersetzers$t$,
    $t$Als literarischer Übersetzer sieht sich Markus regelmäßig mit der Frage konfrontiert, inwieweit eine Übersetzung dem Original treu bleiben kann, ohne dabei ihre sprachliche Eigenständigkeit zu verlieren. Bei der Arbeit an einem besonders vielschichtigen Roman gerät er zunehmend ins Zweifeln, ob wörtliche Genauigkeit überhaupt wünschenswert ist. Eine Kollegin macht ihn darauf aufmerksam, dass jede Übersetzung zwangsläufig eine Interpretation darstellt. Diese Erkenntnis befreit Markus von dem Anspruch, eine vermeintlich objektive Übertragung zu liefern. Stattdessen beginnt er, seine eigene Stimme bewusster in den Text einfließen zu lassen. Am Ende der Arbeit ist er überzeugt, dass gerade diese Spannung zwischen Treue und Freiheit den Reiz des Übersetzens ausmacht.$t$,
    $t$En tant que traducteur littéraire, Markus se retrouve régulièrement confronté à la question de savoir dans quelle mesure une traduction peut rester fidèle à l'original sans perdre son autonomie linguistique. En travaillant sur un roman particulièrement complexe, il se met de plus en plus à douter si l'exactitude littérale est même souhaitable. Une collègue lui fait remarquer que toute traduction constitue nécessairement une interprétation. Cette prise de conscience libère Markus de l'exigence de livrer une transposition prétendument objective. Il commence alors à laisser sa propre voix s'infiltrer plus consciemment dans le texte. À la fin de son travail, il est convaincu que c'est précisément cette tension entre fidélité et liberté qui fait tout l'attrait de la traduction.$t$,
    $t${"Als":"en tant que","literarischer":"littéraire","Übersetzer":"traducteur","sieht":"voit","sich":"se","regelmäßig":"régulièrement","mit":"avec","der":"la","Frage":"question","konfrontiert":"confronté","inwieweit":"dans quelle mesure","eine":"une","Übersetzung":"traduction","dem":"à l'","Original":"original","treu":"fidèle","bleiben":"rester","kann":"peut","ohne":"sans","dabei":"ce faisant","ihre":"son","sprachliche":"linguistique","Eigenständigkeit":"autonomie","verlieren":"perdre","Bei":"lors de","Arbeit":"travail","einem":"un","besonders":"particulièrement","vielschichtigen":"complexe","Roman":"roman","gerät":"tombe","zunehmend":"de plus en plus","Zweifeln":"doute","ob":"si","wörtliche":"littérale","Genauigkeit":"exactitude","überhaupt":"même","wünschenswert":"souhaitable","Eine":"une","Kollegin":"collègue","macht":"fait","darauf":"à cela","aufmerksam":"attentif","dass":"que","jede":"chaque","zwangsläufig":"nécessairement","Interpretation":"interprétation","darstellt":"représente","Diese":"cette","Erkenntnis":"prise de conscience","befreit":"libère","von":"de","Anspruch":"exigence","vermeintlich":"prétendument","objektive":"objective","Übertragung":"transposition","liefern":"livrer","Stattdessen":"à la place","beginnt":"commence","er":"il","eigene":"propre","Stimme":"voix","bewusster":"plus consciemment","in":"dans","den":"le","Text":"texte","einfließen":"s'infiltrer","lassen":"laisser","Am":"à la","Ende":"fin","überzeugt":"convaincu","gerade":"précisément","diese":"cette","Spannung":"tension","zwischen":"entre","Treue":"fidélité","und":"et","Freiheit":"liberté","Reiz":"attrait","Übersetzens":"de la traduction","ausmacht":"constitue"}$t$::jsonb
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Mit welcher Frage beschäftigt sich Markus?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Wie treu eine Übersetzung dem Original bleiben kann$t$, true, 1),
    (v_q, $t$Wie viel Geld er verdienen kann$t$, false, 2),
    (v_q, $t$Ob er den Beruf wechseln soll$t$, false, 3),
    (v_q, $t$Wie lange die Übersetzung dauert$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was löst bei Markus zunehmende Zweifel aus?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Die Arbeit an einem vielschichtigen Roman$t$, true, 1),
    (v_q, $t$Ein Streit mit dem Verlag$t$, false, 2),
    (v_q, $t$Ein Zeitdruck bei der Abgabe$t$, false, 3),
    (v_q, $t$Die Kritik eines Lesers$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welches grundsätzliche Spannungsverhältnis beschreibt der Text?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Das Spannungsverhältnis zwischen Treue zum Original und sprachlicher Eigenständigkeit$t$, true, 1),
    (v_q, $t$Das Spannungsverhältnis zwischen Autor und Verlag$t$, false, 2),
    (v_q, $t$Das Spannungsverhältnis zwischen zwei Übersetzern$t$, false, 3),
    (v_q, $t$Das Spannungsverhältnis zwischen Kritikern und Lesern$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was sagt die Kollegin zu Markus?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Jede Übersetzung ist zwangsläufig eine Interpretation$t$, true, 1),
    (v_q, $t$Er solle wörtlicher übersetzen$t$, false, 2),
    (v_q, $t$Er solle den Beruf aufgeben$t$, false, 3),
    (v_q, $t$Sein Roman sei schlecht geschrieben$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie wirkt sich die Aussage der Kollegin auf Markus aus?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie befreit ihn vom Anspruch objektiver Genauigkeit$t$, true, 1),
    (v_q, $t$Sie macht ihn wütend$t$, false, 2),
    (v_q, $t$Sie überzeugt ihn, ganz aufzuhören$t$, false, 3),
    (v_q, $t$Sie verändert nichts an seiner Arbeitsweise$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was verändert sich in Markus' Arbeitsweise nach diesem Gespräch?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er lässt bewusster seine eigene Stimme einfließen$t$, true, 1),
    (v_q, $t$Er übersetzt fortan noch wörtlicher$t$, false, 2),
    (v_q, $t$Er gibt das Projekt ab$t$, false, 3),
    (v_q, $t$Er arbeitet nur noch mit dieser Kollegin$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wovon ist Markus am Ende überzeugt?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Dass die Spannung zwischen Treue und Freiheit den Reiz des Übersetzens ausmacht$t$, true, 1),
    (v_q, $t$Dass Übersetzen sinnlos ist$t$, false, 2),
    (v_q, $t$Dass nur wörtliche Übersetzung richtig ist$t$, false, 3),
    (v_q, $t$Dass er den Beruf wechseln sollte$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Haltung zum Übersetzen vertritt der Text am Ende?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Übersetzen ist ein kreativer, kein rein mechanischer Prozess$t$, true, 1),
    (v_q, $t$Übersetzen sollte vollständig automatisiert werden$t$, false, 2),
    (v_q, $t$Nur der Originaltext zählt$t$, false, 3),
    (v_q, $t$Übersetzer sollten unsichtbar bleiben$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie lässt sich die Entwicklung von Markus' Denken im Text zusammenfassen?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Vom Streben nach Objektivität hin zur Akzeptanz kreativer Freiheit$t$, true, 1),
    (v_q, $t$Von Selbstsicherheit hin zu völliger Verzweiflung$t$, false, 2),
    (v_q, $t$Von Ablehnung des Berufs hin zu dessen Aufgabe$t$, false, 3),
    (v_q, $t$Von Anfängerfehlern hin zu professioneller Routine$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'vielschichtig'?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$complexe, à plusieurs niveaux$t$, true, 1),
    (v_q, $t$simple$t$, false, 2),
    (v_q, $t$court$t$, false, 3),
    (v_q, $t$ennuyeux$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Im Satz 'jede Übersetzung stellt zwangsläufig eine Interpretation dar' bedeutet 'zwangsläufig':$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$nécessairement$t$, true, 1),
    (v_q, $t$rarement$t$, false, 2),
    (v_q, $t$à peine$t$, false, 3),
    (v_q, $t$librement$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'der Anspruch' im Kontext 'der Anspruch, eine objektive Übertragung zu liefern'?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$l'exigence$t$, true, 1),
    (v_q, $t$le hasard$t$, false, 2),
    (v_q, $t$le doute$t$, false, 3),
    (v_q, $t$le résultat$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Form ist der Konjunktiv I von 'sein' (er/sie/es)?$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$sei$t$, true, 1),
    (v_q, $t$ist$t$, false, 2),
    (v_q, $t$war$t$, false, 3),
    (v_q, $t$wäre$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Ergänze in der indirekten Rede: Die Kollegin sagte, jede Übersetzung ___ eine Interpretation.$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$sei$t$, true, 1),
    (v_q, $t$ist$t$, false, 2),
    (v_q, $t$war$t$, false, 3),
    (v_q, $t$wäre$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welcher Satz gibt eine Aussage korrekt in indirekter Rede (Konjunktiv I) wieder?$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er sagte, er habe Zweifel.$t$, true, 1),
    (v_q, $t$Er sagte, er hat Zweifel.$t$, false, 2),
    (v_q, $t$Er sagte, er hätte Zweifel gehabt.$t$, false, 3),
    (v_q, $t$Er sagte, dass er Zweifel hat.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$En vous appuyant sur l'histoire de Markus (« Der Zweifel des Übersetzers »), rédigez en allemand un paragraphe argumentatif de 8 à 12 phrases dans lequel vous discutez : une traduction doit-elle avant tout rester fidèle au texte original, ou peut-elle légitimement s'en émanciper au nom de la qualité littéraire ? Utilisez au moins une fois le discours indirect (Konjunktiv I).$t$, 1, 'normal', 'production', $t$In der Geschichte 'Der Zweifel des Übersetzers' steht Markus vor der Frage, ob eine Übersetzung in erster Linie dem Original treu bleiben oder sich zugunsten der literarischen Qualität davon lösen darf. Meiner Ansicht nach sollte Treue zum Original nicht mit wörtlicher Genauigkeit verwechselt werden. Eine allzu wörtliche Übersetzung kann den Stil und den Rhythmus des Originaltextes zerstören, selbst wenn jedes einzelne Wort korrekt übertragen wird. Im Text erklärt die Kollegin, jede Übersetzung sei zwangsläufig eine Interpretation, was Markus schließlich von seinem übertriebenen Objektivitätsanspruch befreit. Diese Einsicht scheint mir zentral: Ein Übersetzer, der seine eigene Stimme vollständig unterdrückt, produziert oft einen toten, unlesbaren Text. Andererseits darf diese Freiheit nicht dazu führen, dass der Übersetzer den ursprünglichen Sinn des Werks verfälscht oder eigene Ideen unterschiebt. Ein gutes Gleichgewicht besteht darin, den Geist und die Wirkung des Originals zu bewahren, auch wenn dafür bestimmte Formulierungen angepasst werden müssen. Kritiker könnten einwenden, dass zu viel Freiheit die Verlässlichkeit einer Übersetzung untergräbt. Diesem Einwand ist jedoch entgegenzuhalten, dass absolute Objektivität beim Übersetzen ohnehin eine Illusion bleibt. Letztlich zeigt die Geschichte von Markus, dass die Spannung zwischen Treue und Freiheit kein Problem ist, das gelöst werden muss, sondern die eigentliche Kunstform des Übersetzens ausmacht.$t$);

END $block$;

-- 6. Die Unschärfe der Erinnerung (C2)
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary) VALUES (
    'C2',
    $t$Die Unschärfe der Erinnerung$t$,
    $t$Je weiter ein Ereignis in der Vergangenheit zurückliegt, desto mehr verschwimmen die Grenzen zwischen dem, was tatsächlich geschehen ist, und dem, was die Erinnerung im Nachhinein daraus geformt hat. Diese Beobachtung drängt sich der Erzählerin auf, als sie versucht, sich an den genauen Wortlaut eines Gesprächs mit ihrer verstorbenen Großmutter zu erinnern. Je angestrengter sie nachdenkt, desto weniger vertrauenswürdig erscheinen ihr die einzelnen Details. Schließlich begreift sie, dass die Rekonstruktion der Vergangenheit stets auch eine Form der Erfindung ist. Diese Einsicht erfüllt sie nicht mit Resignation, sondern mit einer eigentümlichen Erleichterung: Wenn Erinnerung ohnehin nie objektiv sein kann, darf sie sich auch als Akt der liebevollen Neuschöpfung begreifen.$t$,
    $t$Plus un événement remonte loin dans le passé, plus les frontières s'estompent entre ce qui s'est réellement produit et ce que la mémoire en a façonné après coup. Cette observation s'impose à la narratrice lorsqu'elle tente de se rappeler les mots exacts d'une conversation avec sa grand-mère défunte. Plus elle s'efforce d'y réfléchir, moins les détails lui paraissent fiables. Elle finit par comprendre que la reconstruction du passé est toujours aussi une forme d'invention. Cette prise de conscience ne la remplit pas de résignation, mais d'un soulagement singulier : si la mémoire ne peut de toute façon jamais être objective, elle peut aussi se concevoir comme un acte de recréation affectueuse.$t$,
    $t${"Je":"plus","weiter":"loin","ein":"un","Ereignis":"événement","in":"dans","der":"le","Vergangenheit":"passé","zurückliegt":"remonte","desto":"d'autant plus","mehr":"plus","verschwimmen":"s'estompent","die":"les","Grenzen":"frontières","zwischen":"entre","dem":"ce","was":"ce que","tatsächlich":"réellement","geschehen":"arrivé","ist":"est","und":"et","Erinnerung":"mémoire","im":"dans le","Nachhinein":"après coup","daraus":"à partir de cela","geformt":"formé","hat":"a","Diese":"cette","Beobachtung":"observation","drängt":"s'impose","sich":"se","der":"à la","Erzählerin":"narratrice","als":"lorsque","sie":"elle","versucht":"essaie","an":"à","genauen":"exact","Wortlaut":"formulation","eines":"d'une","Gesprächs":"conversation","mit":"avec","ihrer":"sa","verstorbenen":"défunte","Großmutter":"grand-mère","erinnern":"se souvenir","angestrengter":"plus intensément","nachdenkt":"réfléchit","weniger":"moins","vertrauenswürdig":"fiable","erscheinen":"paraissent","ihr":"lui","einzelnen":"individuels","Details":"détails","Schließlich":"finalement","begreift":"comprend","dass":"que","Rekonstruktion":"reconstruction","stets":"toujours","auch":"aussi","eine":"une","Form":"forme","Erfindung":"invention","Einsicht":"prise de conscience","erfüllt":"remplit","nicht":"pas","Resignation":"résignation","sondern":"mais","einer":"un","eigentümlichen":"singulier","Erleichterung":"soulagement","Wenn":"si","ohnehin":"de toute façon","nie":"jamais","objektiv":"objective","kann":"peut","darf":"peut","als":"comme","Akt":"acte","liebevollen":"affectueuse","Neuschöpfung":"recréation","begreifen":"concevoir"}$t$::jsonb
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Woran versucht sich die Erzählerin zu erinnern?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$An den genauen Wortlaut eines Gesprächs mit ihrer Großmutter$t$, true, 1),
    (v_q, $t$An eine Adresse$t$, false, 2),
    (v_q, $t$An ein Rezept$t$, false, 3),
    (v_q, $t$An ein Datum$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was passiert laut Text, je weiter ein Ereignis zurückliegt?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Die Grenzen zwischen Realität und Erinnerung verschwimmen$t$, true, 1),
    (v_q, $t$Die Erinnerung wird immer genauer$t$, false, 2),
    (v_q, $t$Man vergisst das Ereignis vollständig$t$, false, 3),
    (v_q, $t$Die Erinnerung bleibt unverändert$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche erkenntnistheoretische These stellt der Text implizit auf?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Erinnerung ist grundsätzlich eine Konstruktion, keine reine Reproduktion$t$, true, 1),
    (v_q, $t$Erinnerung ist immer exakt und objektiv$t$, false, 2),
    (v_q, $t$Nur schriftliche Aufzeichnungen sind zuverlässig$t$, false, 3),
    (v_q, $t$Vergessen ist besser als Erinnern$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was passiert, je mehr die Erzählerin nachdenkt?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Die Details erscheinen ihr weniger vertrauenswürdig$t$, true, 1),
    (v_q, $t$Alles wird klarer$t$, false, 2),
    (v_q, $t$Sie erinnert sich an mehr Details$t$, false, 3),
    (v_q, $t$Sie vergisst das Gespräch komplett$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Zu welcher Einsicht gelangt die Erzählerin schließlich?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Die Rekonstruktion der Vergangenheit ist auch eine Form der Erfindung$t$, true, 1),
    (v_q, $t$Erinnerungen sollten aufgeschrieben werden$t$, false, 2),
    (v_q, $t$Ihre Großmutter hat sich oft geirrt$t$, false, 3),
    (v_q, $t$Man sollte nie über die Vergangenheit nachdenken$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie verändert diese Einsicht die Haltung der Erzählerin zur eigenen Unsicherheit?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie akzeptiert die Unsicherheit und empfindet sogar Erleichterung$t$, true, 1),
    (v_q, $t$Sie verzweifelt endgültig an ihrer Erinnerung$t$, false, 2),
    (v_q, $t$Sie beschließt, nie wieder an die Großmutter zu denken$t$, false, 3),
    (v_q, $t$Sie sucht professionelle Hilfe$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welches Gefühl empfindet die Erzählerin am Ende, statt Resignation?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Eine eigentümliche Erleichterung$t$, true, 1),
    (v_q, $t$Wut$t$, false, 2),
    (v_q, $t$Angst$t$, false, 3),
    (v_q, $t$Gleichgültigkeit$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie deutet die Erzählerin am Ende die Unmöglichkeit objektiver Erinnerung?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Als Freiheit, Erinnerung liebevoll neu zu erschaffen$t$, true, 1),
    (v_q, $t$Als endgültigen Verlust der Vergangenheit$t$, false, 2),
    (v_q, $t$Als Beweis für ihr schlechtes Gedächtnis$t$, false, 3),
    (v_q, $t$Als Grund, das Erinnern aufzugeben$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Funktion erfüllt die Formulierung 'Akt der liebevollen Neuschöpfung' im Gesamttext?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie deutet die kreative Seite des Erinnerns positiv um$t$, true, 1),
    (v_q, $t$Sie kritisiert die Unzuverlässigkeit der Großmutter$t$, false, 2),
    (v_q, $t$Sie fordert wissenschaftliche Gedächtnisforschung$t$, false, 3),
    (v_q, $t$Sie beschreibt einen literarischen Schreibprozess ohne Bezug zur Erinnerung$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'verschwimmen' im übertragenen Sinn?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$s'estomper, devenir flou$t$, true, 1),
    (v_q, $t$devenir plus net$t$, false, 2),
    (v_q, $t$disparaître sans trace$t$, false, 3),
    (v_q, $t$se répéter à l'identique$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Im Satz 'die Rekonstruktion der Vergangenheit ist auch eine Form der Erfindung' bedeutet 'Erfindung':$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$invention$t$, true, 1),
    (v_q, $t$découverte$t$, false, 2),
    (v_q, $t$mémoire$t$, false, 3),
    (v_q, $t$vérité$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'eigentümlich' im Satz 'eine eigentümliche Erleichterung'?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$singulier, étrange$t$, true, 1),
    (v_q, $t$habituel$t$, false, 2),
    (v_q, $t$douloureux$t$, false, 3),
    (v_q, $t$bref$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Struktur drückt im Text eine proportionale Steigerung aus?$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$je... desto...$t$, true, 1),
    (v_q, $t$wenn... dann...$t$, false, 2),
    (v_q, $t$ob... oder...$t$, false, 3),
    (v_q, $t$weder... noch...$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Ergänze: Je mehr sie nachdenkt, ___ weniger vertraut sie ihrer Erinnerung.$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$desto$t$, true, 1),
    (v_q, $t$dass$t$, false, 2),
    (v_q, $t$ob$t$, false, 3),
    (v_q, $t$weil$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welcher Satz verwendet 'je...desto' grammatisch korrekt?$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Je länger sie wartete, desto unruhiger wurde sie.$t$, true, 1),
    (v_q, $t$Je länger sie wartete, desto sie unruhiger wurde.$t$, false, 2),
    (v_q, $t$Desto länger sie wartete, je unruhiger wurde sie.$t$, false, 3),
    (v_q, $t$Je länger sie wartete, unruhiger wurde sie desto.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$En vous appuyant sur le texte « Die Unschärfe der Erinnerung », rédigez en allemand un paragraphe de 8 à 12 phrases sur le thème suivant : dans quelle mesure peut-on faire confiance à ses souvenirs d'enfance ? Employez au moins une structure « je...desto » et une nominalisation.$t$, 1, 'normal', 'production', $t$Der Text 'Die Unschärfe der Erinnerung' wirft die Frage auf, inwiefern man den eigenen Erinnerungen, besonders jenen aus der Kindheit, überhaupt trauen kann. Meiner Ansicht nach sind Kindheitserinnerungen fast nie eine reine Reproduktion des Erlebten, sondern immer schon eine nachträgliche Konstruktion. Je öfter man sich an ein Ereignis erinnert, desto stärker verändert sich vermutlich die Erinnerung selbst durch jede neue Erzählung. Diese ständige Umformung erklärt, warum Geschwister sich oft völlig unterschiedlich an dasselbe Familienereignis erinnern. Die im Text beschriebene Rekonstruktion der Vergangenheit ist demnach kein Zeichen eines schlechten Gedächtnisses, sondern ein normaler kognitiver Prozess. Dennoch sollte man daraus nicht schließen, dass Erinnerungen bedeutungslos sind, nur weil sie nicht perfekt objektiv sind. Im Gegenteil: Gerade die emotionale Bedeutung, die wir einem Ereignis nachträglich verleihen, macht es zu einem festen Bestandteil unserer Identität. Wie die Erzählerin am Ende erkennt, kann man diese Unschärfe sogar als kreative Freiheit begreifen, anstatt sie als Mangel zu beklagen. Aus diesem Grund würde ich meine eigenen Kindheitserinnerungen weniger als Tatsachenprotokoll, sondern eher als persönliche Erzählung verstehen. Diese Haltung erlaubt es, mit der Unsicherheit über das genaue Geschehen versöhnlich umzugehen.$t$);

END $block$;
