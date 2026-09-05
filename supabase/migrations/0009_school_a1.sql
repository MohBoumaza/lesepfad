-- Contenu "patrimoine culturel allemand" — niveau A1 (8 histoires).
-- Contes/légendes du domaine public réécrits, ou fictions originales inspirées
-- de genres/thèmes majeurs de la culture et de l'école allemandes.

-- 1. Rotkäppchen
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary, culture_note) VALUES (
    'A1',
    $t$Rotkäppchen$t$,
    $t$Ein kleines Mädchen heißt Rotkäppchen. Es trägt immer eine rote Mütze. Rotkäppchens Oma ist krank. Die Mutter sagt: „Bring der Oma Kuchen und Wein!“ Rotkäppchen geht durch den Wald. Dort trifft es einen Wolf. Der Wolf ist böse und läuft schnell zur Oma. Er isst die Oma und legt sich in ihr Bett. Rotkäppchen kommt und sieht den Wolf im Bett. Ein Jäger hört den Lärm. Er kommt und tötet den Wolf. Die Oma lebt noch! Alle sind froh.$t$,
    $t$Une petite fille s'appelle Petit Chaperon rouge. Elle porte toujours un petit bonnet rouge. La grand-mère de Petit Chaperon rouge est malade. La mère dit : « Apporte du gâteau et du vin à grand-mère ! » Petit Chaperon rouge traverse la forêt. Là, elle rencontre un loup. Le loup est méchant et court vite chez la grand-mère. Il mange la grand-mère et se couche dans son lit. Petit Chaperon rouge arrive et voit le loup dans le lit. Un chasseur entend le bruit. Il arrive et tue le loup. La grand-mère est encore en vie ! Tout le monde est content.$t$,
    $t${"Ein":"un","kleines":"petit","Mädchen":"fille","heißt":"s'appelle","Rotkäppchen":"Petit Chaperon rouge","Es":"elle/il","trägt":"porte","immer":"toujours","eine":"une","rote":"rouge","Mütze":"bonnet","Rotkäppchens":"de Petit Chaperon rouge","Oma":"grand-mère","ist":"est","krank":"malade","Die":"la/les","Mutter":"mère","sagt":"dit","Bring":"apporte","der":"la/le","Kuchen":"gâteau","und":"et","Wein":"vin","geht":"va","durch":"à travers","den":"le","Wald":"forêt","Dort":"là","trifft":"rencontre","es":"elle/il","einen":"un","Wolf":"loup","Der":"le","böse":"méchant","läuft":"court","schnell":"vite","zur":"chez la","Er":"il","isst":"mange","die":"la/les","legt":"couche","sich":"se","in":"dans","ihr":"son","Bett":"lit","kommt":"arrive","sieht":"voit","im":"dans le","Jäger":"chasseur","hört":"entend","Lärm":"bruit","tötet":"tue","lebt":"vit","noch":"encore","Alle":"tous","sind":"sont","froh":"contents"}$t$::jsonb,
    $t$Conte des frères Grimm$t$
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was trägt Rotkäppchen?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Eine rote Mütze$t$, true, 1),
    (v_q, $t$Einen blauen Hut$t$, false, 2),
    (v_q, $t$Ein grünes Kleid$t$, false, 3),
    (v_q, $t$Eine gelbe Jacke$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum geht Rotkäppchen in den Wald?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Es bringt der Oma Kuchen und Wein$t$, true, 1),
    (v_q, $t$Es sucht Blumen für die Schule$t$, false, 2),
    (v_q, $t$Es spielt mit dem Wolf$t$, false, 3),
    (v_q, $t$Es besucht seine Mutter$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was macht der Wolf, bevor Rotkäppchen ankommt?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er isst die Oma und legt sich in ihr Bett$t$, true, 1),
    (v_q, $t$Er versteckt sich im Wald$t$, false, 2),
    (v_q, $t$Er ruft den Jäger$t$, false, 3),
    (v_q, $t$Er kocht Kuchen für die Oma$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wer ist krank?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Die Oma$t$, true, 1),
    (v_q, $t$Die Mutter$t$, false, 2),
    (v_q, $t$Der Wolf$t$, false, 3),
    (v_q, $t$Der Jäger$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wen trifft Rotkäppchen im Wald?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Einen Wolf$t$, true, 1),
    (v_q, $t$Einen Bären$t$, false, 2),
    (v_q, $t$Einen Jäger$t$, false, 3),
    (v_q, $t$Eine Katze$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie ist der Wolf in der Geschichte?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Böse$t$, true, 1),
    (v_q, $t$Freundlich$t$, false, 2),
    (v_q, $t$Traurig$t$, false, 3),
    (v_q, $t$Müde$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wer tötet den Wolf?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Ein Jäger$t$, true, 1),
    (v_q, $t$Die Mutter$t$, false, 2),
    (v_q, $t$Die Oma$t$, false, 3),
    (v_q, $t$Rotkäppchen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was hört der Jäger?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Den Lärm$t$, true, 1),
    (v_q, $t$Musik$t$, false, 2),
    (v_q, $t$Ein Lied$t$, false, 3),
    (v_q, $t$Nichts$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie endet die Geschichte?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Die Oma lebt noch und alle sind froh$t$, true, 1),
    (v_q, $t$Der Wolf gewinnt$t$, false, 2),
    (v_q, $t$Rotkäppchen bleibt im Wald$t$, false, 3),
    (v_q, $t$Die Oma stirbt$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet „der Wald“ auf Französisch?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$la forêt$t$, true, 1),
    (v_q, $t$la ville$t$, false, 2),
    (v_q, $t$la maison$t$, false, 3),
    (v_q, $t$la rivière$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet „böse“ auf Französisch?$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$méchant$t$, true, 1),
    (v_q, $t$gentil$t$, false, 2),
    (v_q, $t$fatigué$t$, false, 3),
    (v_q, $t$content$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet „der Jäger“ auf Französisch?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$le chasseur$t$, true, 1),
    (v_q, $t$le boulanger$t$, false, 2),
    (v_q, $t$le fermier$t$, false, 3),
    (v_q, $t$le médecin$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$„Es ___ immer eine rote Mütze.“ (tragen)$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$trägt$t$, true, 1),
    (v_q, $t$trage$t$, false, 2),
    (v_q, $t$tragen$t$, false, 3),
    (v_q, $t$tragt$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$„Rotkäppchen ___ durch den Wald.“ (gehen)$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$geht$t$, true, 1),
    (v_q, $t$gehe$t$, false, 2),
    (v_q, $t$gehen$t$, false, 3),
    (v_q, $t$geht ihr$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$„Er ___ den Wolf.“ (töten)$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$tötet$t$, true, 1),
    (v_q, $t$töte$t$, false, 2),
    (v_q, $t$töten$t$, false, 3),
    (v_q, $t$tötest$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$Schreib drei Sätze: Was bringst du deiner Oma, wenn sie krank ist?$t$, 1, 'normal', 'production', $t$Ich bringe meiner Oma Tee. Ich bringe auch Suppe. Meine Oma ist dann froh.$t$);

END $block$;

-- 2. Der Wolf und die sieben Geißlein
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary, culture_note) VALUES (
    'A1',
    $t$Der Wolf und die sieben Geißlein$t$,
    $t$Eine Geiß hat sieben kleine Geißlein. Die Mutter geht in den Wald. Sie sagt: „Macht die Tür nicht auf! Der Wolf ist gefährlich.“ Der Wolf kommt und ruft mit dünner Stimme. Die Geißlein glauben ihm und öffnen die Tür. Der Wolf frisst sechs Geißlein. Ein Geißlein versteckt sich in der alten Uhr. Die Mutter kommt zurück und findet das Geißlein. Sie schneidet dem bösen Wolf den Bauch auf. Die sechs Geißlein springen heraus. Alle sind wieder glücklich.$t$,
    $t$Une chèvre a sept petits chevreaux. La mère va dans la forêt. Elle dit : « N'ouvrez pas la porte ! Le loup est dangereux. » Le loup arrive et appelle d'une voix fine. Les chevreaux le croient et ouvrent la porte. Le loup dévore six chevreaux. Un chevreau se cache dans la vieille horloge. La mère revient et trouve le chevreau. Elle ouvre le ventre du méchant loup. Les six chevreaux sortent d'un bond. Tout le monde est de nouveau heureux.$t$,
    $t${"Eine":"une","Geiß":"chèvre","hat":"a","sieben":"sept","kleine":"petits","Geißlein":"chevreaux","Die":"la/les","Mutter":"mère","geht":"va","in":"dans","den":"le","Wald":"forêt","Sie":"elle","sagt":"dit","Macht":"faites","die":"la/les","Tür":"porte","nicht":"pas","auf":"ouvert/sur","Der":"le","Wolf":"loup","ist":"est","gefährlich":"dangereux","kommt":"arrive","und":"et","ruft":"appelle","mit":"avec","dünner":"fine","Stimme":"voix","glauben":"croient","ihm":"lui","öffnen":"ouvrent","frisst":"dévore","sechs":"six","Ein":"un","versteckt":"cache","sich":"se","der":"le","alten":"vieille","Uhr":"horloge","zurück":"de retour","findet":"trouve","das":"le","schneidet":"coupe/ouvre","dem":"au","bösen":"méchant","Bauch":"ventre","springen":"sautent","heraus":"dehors","Alle":"tous","sind":"sont","wieder":"de nouveau","glücklich":"heureux"}$t$::jsonb,
    $t$Conte des frères Grimm$t$
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie viele Geißlein hat die Mutter?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sieben$t$, true, 1),
    (v_q, $t$Fünf$t$, false, 2),
    (v_q, $t$Drei$t$, false, 3),
    (v_q, $t$Zehn$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wohin geht die Mutter?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$In den Wald$t$, true, 1),
    (v_q, $t$In die Stadt$t$, false, 2),
    (v_q, $t$Zur Schule$t$, false, 3),
    (v_q, $t$Zum Fluss$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was sagt die Mutter, bevor sie geht?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Macht die Tür nicht auf$t$, true, 1),
    (v_q, $t$Kocht das Essen$t$, false, 2),
    (v_q, $t$Ruft den Wolf$t$, false, 3),
    (v_q, $t$Spielt im Garten$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wer kommt zum Haus?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Der Wolf$t$, true, 1),
    (v_q, $t$Der Jäger$t$, false, 2),
    (v_q, $t$Die Katze$t$, false, 3),
    (v_q, $t$Der Bauer$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie spricht der Wolf, damit die Geißlein ihm glauben?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Mit dünner Stimme$t$, true, 1),
    (v_q, $t$Mit lauter Stimme$t$, false, 2),
    (v_q, $t$Er singt ein Lied$t$, false, 3),
    (v_q, $t$Er klopft nur$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was macht der Wolf mit sechs Geißlein?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er frisst sie$t$, true, 1),
    (v_q, $t$Er versteckt sie$t$, false, 2),
    (v_q, $t$Er spielt mit ihnen$t$, false, 3),
    (v_q, $t$Er bringt sie zur Mutter$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wo versteckt sich das siebte Geißlein?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$In der Uhr$t$, true, 1),
    (v_q, $t$Unter dem Bett$t$, false, 2),
    (v_q, $t$Im Schrank$t$, false, 3),
    (v_q, $t$Im Garten$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was macht die Mutter mit dem Wolf?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie schneidet ihm den Bauch auf$t$, true, 1),
    (v_q, $t$Sie füttert ihn$t$, false, 2),
    (v_q, $t$Sie lässt ihn schlafen$t$, false, 3),
    (v_q, $t$Sie ruft den Jäger$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie endet die Geschichte?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Die sechs Geißlein springen heraus und alle sind glücklich$t$, true, 1),
    (v_q, $t$Der Wolf gewinnt$t$, false, 2),
    (v_q, $t$Die Mutter findet niemanden$t$, false, 3),
    (v_q, $t$Alle Geißlein bleiben im Bauch$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet „die Tür“ auf Französisch?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$la porte$t$, true, 1),
    (v_q, $t$la fenêtre$t$, false, 2),
    (v_q, $t$le mur$t$, false, 3),
    (v_q, $t$le toit$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet „gefährlich“ auf Französisch?$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$dangereux$t$, true, 1),
    (v_q, $t$gentil$t$, false, 2),
    (v_q, $t$facile$t$, false, 3),
    (v_q, $t$joli$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet „sich verstecken“ auf Französisch?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$se cacher$t$, true, 1),
    (v_q, $t$se laver$t$, false, 2),
    (v_q, $t$se coucher$t$, false, 3),
    (v_q, $t$se réveiller$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$„Die Geißlein ___ die Tür.“ (öffnen)$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$öffnen$t$, true, 1),
    (v_q, $t$öffnet$t$, false, 2),
    (v_q, $t$öffne$t$, false, 3),
    (v_q, $t$öffnest$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$„Der Wolf ___ sechs Geißlein.“ (fressen)$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$frisst$t$, true, 1),
    (v_q, $t$fresse$t$, false, 2),
    (v_q, $t$fressen$t$, false, 3),
    (v_q, $t$frisst du$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$„Die sechs Geißlein ___ heraus.“ (springen)$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$springen$t$, true, 1),
    (v_q, $t$springt$t$, false, 2),
    (v_q, $t$springe$t$, false, 3),
    (v_q, $t$sprang$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$Schreib drei Sätze: Was sagst du, bevor deine Eltern das Haus verlassen?$t$, 1, 'normal', 'production', $t$Ich sage: Mach die Tür zu. Öffne sie nicht für Fremde. Ich bleibe zu Hause und warte.$t$);

END $block$;

-- 3. Die Bremer Stadtmusikanten
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary, culture_note) VALUES (
    'A1',
    $t$Die Bremer Stadtmusikanten$t$,
    $t$Ein alter Esel, ein alter Hund, eine alte Katze und ein alter Hahn sind müde. Ihre Besitzer wollen sie nicht mehr. Die vier Tiere gehen zusammen nach Bremen. Sie wollen Musik machen. In der Nacht sehen sie ein Haus im Wald. Dort wohnen Räuber. Die Tiere stellen sich aufeinander und singen laut vor dem Fenster. Die Räuber haben große Angst und laufen weg. Die vier Tiere essen das Essen der Räuber. Dann bleiben sie im schönen Haus. Sie sind sehr glücklich zusammen.$t$,
    $t$Un vieil âne, un vieux chien, une vieille chatte et un vieux coq sont fatigués. Leurs propriétaires ne les veulent plus. Les quatre animaux partent ensemble pour Brême. Ils veulent faire de la musique. La nuit, ils voient une maison dans la forêt. Là habitent des brigands. Les animaux se placent les uns sur les autres et chantent fort devant la fenêtre. Les brigands ont très peur et s'enfuient. Les quatre animaux mangent la nourriture des brigands. Ensuite, ils restent dans la belle maison. Ils sont très heureux ensemble.$t$,
    $t${"Ein":"un","alter":"vieux","Esel":"âne","ein":"un","Hund":"chien","eine":"une","alte":"vieille","Katze":"chatte","und":"et","Hahn":"coq","sind":"sont","müde":"fatigués","Ihre":"leurs","Besitzer":"propriétaires","wollen":"veulent","sie":"les/ils/elle","nicht":"pas","mehr":"plus","Die":"les/la","vier":"quatre","Tiere":"animaux","gehen":"vont","zusammen":"ensemble","nach":"vers","Bremen":"Brême","Musik":"musique","machen":"faire","In":"dans","der":"la","Nacht":"nuit","sehen":"voient","Haus":"maison","im":"dans le","Wald":"forêt","Dort":"là","wohnen":"habitent","Räuber":"brigands","stellen":"placent","sich":"se","aufeinander":"les uns sur les autres","singen":"chantent","laut":"fort","vor":"devant","dem":"la","Fenster":"fenêtre","haben":"ont","große":"grande","Angst":"peur","laufen":"courent","weg":"loin","essen":"mangent","das":"la/le","Essen":"nourriture","Dann":"ensuite","bleiben":"restent","schönen":"belle","Sie":"ils","sehr":"très","glücklich":"heureux"}$t$::jsonb,
    $t$Conte des frères Grimm$t$
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie viele Tiere gehen nach Bremen?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Vier$t$, true, 1),
    (v_q, $t$Zwei$t$, false, 2),
    (v_q, $t$Sechs$t$, false, 3),
    (v_q, $t$Drei$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum gehen die Tiere nach Bremen?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie wollen Musik machen$t$, true, 1),
    (v_q, $t$Sie wollen Kuchen essen$t$, false, 2),
    (v_q, $t$Sie suchen ihre Besitzer$t$, false, 3),
    (v_q, $t$Sie wollen schwimmen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum wollen die Besitzer die Tiere nicht mehr?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Die Tiere sind alt und müde$t$, true, 1),
    (v_q, $t$Die Tiere sind zu laut$t$, false, 2),
    (v_q, $t$Die Tiere sind krank$t$, false, 3),
    (v_q, $t$Die Tiere sind zu klein$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was sehen die Tiere in der Nacht?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Ein Haus im Wald$t$, true, 1),
    (v_q, $t$Eine Stadt$t$, false, 2),
    (v_q, $t$Einen Fluss$t$, false, 3),
    (v_q, $t$Eine Schule$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wer wohnt in dem Haus?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Räuber$t$, true, 1),
    (v_q, $t$Ein König$t$, false, 2),
    (v_q, $t$Bauern$t$, false, 3),
    (v_q, $t$Kinder$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie erschrecken die Tiere die Räuber?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie singen laut vor dem Fenster$t$, true, 1),
    (v_q, $t$Sie klopfen an die Tür$t$, false, 2),
    (v_q, $t$Sie rufen die Polizei$t$, false, 3),
    (v_q, $t$Sie zünden ein Feuer an$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was machen die Räuber?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie laufen weg$t$, true, 1),
    (v_q, $t$Sie schlafen weiter$t$, false, 2),
    (v_q, $t$Sie singen mit$t$, false, 3),
    (v_q, $t$Sie kochen Essen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was essen die Tiere?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Das Essen der Räuber$t$, true, 1),
    (v_q, $t$Gras$t$, false, 2),
    (v_q, $t$Nichts$t$, false, 3),
    (v_q, $t$Kuchen von der Oma$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie endet die Geschichte?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Die Tiere bleiben glücklich im Haus$t$, true, 1),
    (v_q, $t$Die Tiere werden Stadtmusikanten in Bremen$t$, false, 2),
    (v_q, $t$Die Räuber kommen zurück$t$, false, 3),
    (v_q, $t$Die Tiere gehen nach Hause$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet „der Esel“ auf Französisch?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$l'âne$t$, true, 1),
    (v_q, $t$le chat$t$, false, 2),
    (v_q, $t$le chien$t$, false, 3),
    (v_q, $t$le coq$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet „die Räuber“ auf Französisch?$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$les brigands$t$, true, 1),
    (v_q, $t$les enfants$t$, false, 2),
    (v_q, $t$les voisins$t$, false, 3),
    (v_q, $t$les musiciens$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet „weglaufen“ auf Französisch?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$s'enfuir$t$, true, 1),
    (v_q, $t$rester$t$, false, 2),
    (v_q, $t$chanter$t$, false, 3),
    (v_q, $t$dormir$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$„Die Tiere ___ zusammen nach Bremen.“ (gehen)$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$gehen$t$, true, 1),
    (v_q, $t$geht$t$, false, 2),
    (v_q, $t$gehe$t$, false, 3),
    (v_q, $t$geht ihr$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$„Die Räuber ___ große Angst.“ (haben)$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$haben$t$, true, 1),
    (v_q, $t$hat$t$, false, 2),
    (v_q, $t$habe$t$, false, 3),
    (v_q, $t$hast$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$„Sie ___ im schönen Haus.“ (bleiben)$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$bleiben$t$, true, 1),
    (v_q, $t$bleibt$t$, false, 2),
    (v_q, $t$bleibe$t$, false, 3),
    (v_q, $t$blieb$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$Schreib drei Sätze: Welches Instrument möchtest du spielen, wie die Bremer Stadtmusikanten?$t$, 1, 'normal', 'production', $t$Ich möchte Gitarre spielen. Meine Freundin singt gern. Zusammen machen wir schöne Musik.$t$);

END $block$;

-- 4. Das tapfere Schneiderlein
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary, culture_note) VALUES (
    'A1',
    $t$Das tapfere Schneiderlein$t$,
    $t$Ein kleiner Schneider isst Marmelade. Sieben Fliegen kommen und er schlägt sie tot. Der Schneider ist stolz und näht einen Gürtel: „Sieben auf einen Streich!“ Die Leute denken, er tötet sieben Männer. Ein König hört das und ist beeindruckt. Der Schneider trifft einen bösen Riesen im Wald. Der Schneider ist klug und gewinnt gegen den Riesen mit einem Trick. Der König ist froh und der Schneider heiratet die Prinzessin. Das kleine Schneiderlein wird ein großer König.$t$,
    $t$Un petit tailleur mange de la confiture. Sept mouches arrivent et il les tue toutes. Le tailleur est fier et brode une ceinture : « Sept d'un coup ! » Les gens pensent qu'il a tué sept hommes. Un roi entend cela et est impressionné. Le tailleur rencontre un méchant géant dans la forêt. Le tailleur est malin et bat le géant grâce à une ruse. Le roi est content et le tailleur épouse la princesse. Le petit tailleur devient un grand roi.$t$,
    $t${"Das":"le","tapfere":"courageux","Schneiderlein":"petit tailleur","Ein":"un","kleiner":"petit","Schneider":"tailleur","isst":"mange","Marmelade":"confiture","Sieben":"sept","Fliegen":"mouches","kommen":"arrivent","und":"et","er":"il","schlägt":"frappe","sie":"les/elle","tot":"mort","Der":"le","ist":"est","stolz":"fier","näht":"brode","einen":"un","Gürtel":"ceinture","auf":"en/sur","Streich":"coup","Die":"les/la","Leute":"gens","denken":"pensent","tötet":"tue","sieben":"sept","Männer":"hommes","König":"roi","hört":"entend","das":"cela/le","beeindruckt":"impressionné","trifft":"rencontre","bösen":"méchant","Riesen":"géant","im":"dans le","Wald":"forêt","klug":"malin","gewinnt":"gagne","gegen":"contre","den":"le","der":"le","die":"la","mit":"avec","einem":"une","Trick":"ruse","froh":"content","heiratet":"épouse","Prinzessin":"princesse","kleine":"petit","wird":"devient","ein":"un","großer":"grand"}$t$::jsonb,
    $t$Conte des frères Grimm$t$
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was isst der Schneider am Anfang?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Marmelade$t$, true, 1),
    (v_q, $t$Suppe$t$, false, 2),
    (v_q, $t$Brot$t$, false, 3),
    (v_q, $t$Kuchen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was schreibt der Schneider auf seinen Gürtel?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sieben auf einen Streich$t$, true, 1),
    (v_q, $t$Ich bin klein$t$, false, 2),
    (v_q, $t$Nähen ist schön$t$, false, 3),
    (v_q, $t$Ich liebe Marmelade$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum denken die Leute, der Schneider ist stark?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie denken, er tötet sieben Männer$t$, true, 1),
    (v_q, $t$Sie sehen ihn kämpfen$t$, false, 2),
    (v_q, $t$Der König sagt es$t$, false, 3),
    (v_q, $t$Er trägt eine Krone$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wen trifft der Schneider im Wald?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Einen Riesen$t$, true, 1),
    (v_q, $t$Einen Wolf$t$, false, 2),
    (v_q, $t$Einen König$t$, false, 3),
    (v_q, $t$Eine Prinzessin$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie gewinnt der Schneider gegen den Riesen?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Mit einem Trick$t$, true, 1),
    (v_q, $t$Mit einem Schwert$t$, false, 2),
    (v_q, $t$Mit Musik$t$, false, 3),
    (v_q, $t$Mit Geld$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was tötet der Schneider wirklich, nicht Männer?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sieben Fliegen$t$, true, 1),
    (v_q, $t$Sieben Riesen$t$, false, 2),
    (v_q, $t$Sieben Wölfe$t$, false, 3),
    (v_q, $t$Sieben Vögel$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wen heiratet der Schneider?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Die Prinzessin$t$, true, 1),
    (v_q, $t$Eine Fliege$t$, false, 2),
    (v_q, $t$Eine Königin$t$, false, 3),
    (v_q, $t$Eine Schneiderin$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wer hört von dem Schneider und ist beeindruckt?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Der König$t$, true, 1),
    (v_q, $t$Der Riese$t$, false, 2),
    (v_q, $t$Die Fliegen$t$, false, 3),
    (v_q, $t$Die Mutter$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was wird das kleine Schneiderlein am Ende?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Ein großer König$t$, true, 1),
    (v_q, $t$Ein reicher Bauer$t$, false, 2),
    (v_q, $t$Ein starker Riese$t$, false, 3),
    (v_q, $t$Ein bekannter Koch$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet „der Riese“ auf Französisch?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$le géant$t$, true, 1),
    (v_q, $t$le roi$t$, false, 2),
    (v_q, $t$le tailleur$t$, false, 3),
    (v_q, $t$le voisin$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet „stolz“ auf Französisch?$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$fier$t$, true, 1),
    (v_q, $t$triste$t$, false, 2),
    (v_q, $t$fatigué$t$, false, 3),
    (v_q, $t$malade$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet „beeindruckt“ auf Französisch?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$impressionné$t$, true, 1),
    (v_q, $t$fâché$t$, false, 2),
    (v_q, $t$effrayé$t$, false, 3),
    (v_q, $t$ennuyé$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$„Der Schneider ___ Marmelade.“ (essen)$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$isst$t$, true, 1),
    (v_q, $t$esse$t$, false, 2),
    (v_q, $t$essen$t$, false, 3),
    (v_q, $t$isst du$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$„Er ___ gegen den Riesen.“ (gewinnen)$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$gewinnt$t$, true, 1),
    (v_q, $t$gewinne$t$, false, 2),
    (v_q, $t$gewinnen$t$, false, 3),
    (v_q, $t$gewann$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$„Der Schneider ___ die Prinzessin.“ (heiraten)$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$heiratet$t$, true, 1),
    (v_q, $t$heirate$t$, false, 2),
    (v_q, $t$heiraten$t$, false, 3),
    (v_q, $t$heiratest$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$Schreib drei Sätze: Bist du klug wie der Schneider? Wie löst du ein Problem?$t$, 1, 'normal', 'production', $t$Ich bin manchmal klug. Ich denke zuerst nach. Dann finde ich einen guten Trick.$t$);

END $block$;

-- 5. Rumpelstilzchen
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary, culture_note) VALUES (
    'A1',
    $t$Rumpelstilzchen$t$,
    $t$Ein armer Müller sagt dem König: „Meine Tochter spinnt Stroh zu Gold!“ Das ist nicht wahr, aber der König glaubt es. Die Tochter muss Stroh zu Gold spinnen, sonst stirbt sie. Ein kleiner Mann kommt und hilft ihr. Er spinnt Gold, aber er will etwas dafür. Die Tochter wird Königin und bekommt ein Kind. Der kleine Mann will das Kind haben. Sie muss seinen Namen erraten. Die Königin hört ihn im Wald singen: „Rumpelstilzchen heiße ich!“ Sie sagt den Namen und rettet ihr Kind.$t$,
    $t$Un pauvre meunier dit au roi : « Ma fille file la paille en or ! » Ce n'est pas vrai, mais le roi le croit. La fille doit filer la paille en or, sinon elle meurt. Un petit homme arrive et l'aide. Il file l'or, mais il veut quelque chose en échange. La fille devient reine et a un enfant. Le petit homme veut avoir l'enfant. Elle doit deviner son nom. La reine l'entend chanter dans la forêt : « Je m'appelle Rumpelstilzchen ! » Elle dit le nom et sauve son enfant.$t$,
    $t${"Ein":"un","armer":"pauvre","Müller":"meunier","sagt":"dit","dem":"au","König":"roi","Meine":"ma","Tochter":"fille","spinnt":"file","Stroh":"paille","zu":"en","Gold":"or","Das":"cela","ist":"est","nicht":"pas","wahr":"vrai","aber":"mais","der":"le","glaubt":"croit","es":"le","Die":"la","muss":"doit","sonst":"sinon","stirbt":"meurt","sie":"elle","kleiner":"petit","Mann":"homme","kommt":"arrive","und":"et","hilft":"aide","ihr":"elle/son","Er":"il","er":"il","spinnen":"filer","will":"veut","etwas":"quelque chose","dafür":"en échange","wird":"devient","Königin":"reine","bekommt":"reçoit","ein":"un","Kind":"enfant","Der":"le","kleine":"petit","das":"le","haben":"avoir","Sie":"elle","seinen":"son","Namen":"nom","erraten":"deviner","hört":"entend","ihn":"le","im":"dans la","Wald":"forêt","singen":"chanter","Rumpelstilzchen":"Rumpelstilzchen","heiße":"m'appelle","ich":"je","den":"le","rettet":"sauve"}$t$::jsonb,
    $t$Conte des frères Grimm$t$
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was sagt der Müller dem König?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Seine Tochter spinnt Stroh zu Gold$t$, true, 1),
    (v_q, $t$Seine Tochter kocht gut$t$, false, 2),
    (v_q, $t$Seine Tochter singt schön$t$, false, 3),
    (v_q, $t$Seine Tochter tanzt gut$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was muss die Tochter machen, sonst stirbt sie?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Stroh zu Gold spinnen$t$, true, 1),
    (v_q, $t$Ein Lied singen$t$, false, 2),
    (v_q, $t$Einen Kuchen backen$t$, false, 3),
    (v_q, $t$Einen Ring finden$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum glaubt der König die Lüge des Müllers?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er glaubt einfach, ohne es zu prüfen$t$, true, 1),
    (v_q, $t$Er sieht das Gold selbst spinnen$t$, false, 2),
    (v_q, $t$Die Tochter zeigt ihm Gold$t$, false, 3),
    (v_q, $t$Der Müller ist sehr reich$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wer hilft der Tochter beim Spinnen?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Ein kleiner Mann$t$, true, 1),
    (v_q, $t$Der König$t$, false, 2),
    (v_q, $t$Ihr Vater$t$, false, 3),
    (v_q, $t$Eine Fee$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bekommt die Tochter, nachdem sie Königin wird?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Ein Kind$t$, true, 1),
    (v_q, $t$Ein Pferd$t$, false, 2),
    (v_q, $t$Ein neues Haus$t$, false, 3),
    (v_q, $t$Viel Gold$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was will der kleine Mann als Bezahlung?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Das Kind der Königin$t$, true, 1),
    (v_q, $t$Viel Gold$t$, false, 2),
    (v_q, $t$Ein Schloss$t$, false, 3),
    (v_q, $t$Die Krone des Königs$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was muss die Königin erraten?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Den Namen des kleinen Mannes$t$, true, 1),
    (v_q, $t$Sein Alter$t$, false, 2),
    (v_q, $t$Seinen Wohnort$t$, false, 3),
    (v_q, $t$Sein Lieblingsessen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wo hört die Königin den Namen?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Im Wald$t$, true, 1),
    (v_q, $t$In der Küche$t$, false, 2),
    (v_q, $t$Im Schloss$t$, false, 3),
    (v_q, $t$Am Fluss$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie rettet die Königin ihr Kind?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie sagt den richtigen Namen$t$, true, 1),
    (v_q, $t$Sie gibt ihm Gold$t$, false, 2),
    (v_q, $t$Sie versteckt das Kind$t$, false, 3),
    (v_q, $t$Sie ruft den König$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet „das Gold“ auf Französisch?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$l'or$t$, true, 1),
    (v_q, $t$le fer$t$, false, 2),
    (v_q, $t$l'argent (métal blanc)$t$, false, 3),
    (v_q, $t$le bois$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet „erraten“ auf Französisch?$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$deviner$t$, true, 1),
    (v_q, $t$chanter$t$, false, 2),
    (v_q, $t$construire$t$, false, 3),
    (v_q, $t$oublier$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet „retten“ auf Französisch?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$sauver$t$, true, 1),
    (v_q, $t$perdre$t$, false, 2),
    (v_q, $t$chercher$t$, false, 3),
    (v_q, $t$vergessen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$„Die Tochter ___ Stroh zu Gold.“ (spinnen)$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$spinnt$t$, true, 1),
    (v_q, $t$spinne$t$, false, 2),
    (v_q, $t$spinnen$t$, false, 3),
    (v_q, $t$spinnst$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$„Sie ___ seinen Namen erraten.“ (müssen)$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$muss$t$, true, 1),
    (v_q, $t$müssen$t$, false, 2),
    (v_q, $t$müsst$t$, false, 3),
    (v_q, $t$musst$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$„Sie ___ den Namen und rettet ihr Kind.“ (sagen)$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$sagt$t$, true, 1),
    (v_q, $t$sage$t$, false, 2),
    (v_q, $t$sagen$t$, false, 3),
    (v_q, $t$sagst$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$Schreib drei Sätze: Was würdest du tun, wenn du Gold spinnen könntest?$t$, 1, 'normal', 'production', $t$Ich würde ein Haus kaufen. Ich würde meiner Familie Geld geben. Ich wäre sehr glücklich.$t$);

END $block$;

-- 6. Frau Holle
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary, culture_note) VALUES (
    'A1',
    $t$Frau Holle$t$,
    $t$Ein Mädchen fällt in einen Brunnen. Sie kommt in ein anderes Land. Dort trifft sie Frau Holle. Das Mädchen ist fleißig und schüttelt Frau Holles Bett. Dann fällt Schnee auf die Erde. Frau Holle ist zufrieden und gibt dem Mädchen Gold. Die faule Schwester will auch Gold. Aber sie ist faul und arbeitet nicht gut. Frau Holle gibt ihr schwarzes Pech. Das fleißige Mädchen ist glücklich zu Hause. Die faule Schwester ist traurig und schmutzig.$t$,
    $t$Une fille tombe dans un puits. Elle arrive dans un autre pays. Là, elle rencontre Mère Holle. La fille est travailleuse et secoue le lit de Mère Holle. Alors la neige tombe sur la terre. Mère Holle est satisfaite et donne de l'or à la fille. La sœur paresseuse veut aussi de l'or. Mais elle est paresseuse et ne travaille pas bien. Mère Holle lui donne de la poix noire. La fille travailleuse est heureuse chez elle. La sœur paresseuse est triste et sale.$t$,
    $t${"Ein":"une","Mädchen":"fille","fällt":"tombe","in":"dans","einen":"un","Brunnen":"puits","Sie":"elle","kommt":"arrive","ein":"un","anderes":"autre","Land":"pays","Dort":"là","trifft":"rencontre","sie":"elle","Frau":"madame","Holle":"Holle","Das":"la","ist":"est","fleißig":"travailleuse","und":"et","schüttelt":"secoue","Holles":"de Holle","Bett":"lit","Dann":"alors","Schnee":"neige","auf":"sur","die":"la","Erde":"terre","zufrieden":"satisfaite","gibt":"donne","dem":"à la","Gold":"or","Die":"la","faule":"paresseuse","Schwester":"sœur","will":"veut","auch":"aussi","Aber":"mais","faul":"paresseuse","arbeitet":"travaille","nicht":"pas","gut":"bien","ihr":"lui","schwarzes":"noire","Pech":"poix","fleißige":"travailleuse","glücklich":"heureuse","zu":"à","Hause":"la maison","traurig":"triste","schmutzig":"sale"}$t$::jsonb,
    $t$Conte des frères Grimm$t$
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wo fällt das Mädchen hinein?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$In einen Brunnen$t$, true, 1),
    (v_q, $t$In einen Fluss$t$, false, 2),
    (v_q, $t$In einen See$t$, false, 3),
    (v_q, $t$In ein Loch im Garten$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wen trifft das Mädchen in dem anderen Land?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Frau Holle$t$, true, 1),
    (v_q, $t$Einen König$t$, false, 2),
    (v_q, $t$Einen Wolf$t$, false, 3),
    (v_q, $t$Ihre Mutter$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was macht das fleißige Mädchen bei Frau Holle?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Es schüttelt das Bett$t$, true, 1),
    (v_q, $t$Es kocht Suppe$t$, false, 2),
    (v_q, $t$Es singt Lieder$t$, false, 3),
    (v_q, $t$Es näht Kleider$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was fällt auf die Erde, wenn das Mädchen das Bett schüttelt?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Schnee$t$, true, 1),
    (v_q, $t$Regen$t$, false, 2),
    (v_q, $t$Blätter$t$, false, 3),
    (v_q, $t$Blumen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was gibt Frau Holle dem fleißigen Mädchen?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Gold$t$, true, 1),
    (v_q, $t$Silber$t$, false, 2),
    (v_q, $t$Ein Kleid$t$, false, 3),
    (v_q, $t$Einen Ring$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum bekommt das Mädchen Gold?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Weil es fleißig ist und gut arbeitet$t$, true, 1),
    (v_q, $t$Weil es reich ist$t$, false, 2),
    (v_q, $t$Weil es singt$t$, false, 3),
    (v_q, $t$Weil Frau Holle es mag ohne Grund$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie ist die Schwester?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Faul$t$, true, 1),
    (v_q, $t$Fleißig$t$, false, 2),
    (v_q, $t$Klug$t$, false, 3),
    (v_q, $t$Mutig$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bekommt die faule Schwester von Frau Holle?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Schwarzes Pech$t$, true, 1),
    (v_q, $t$Gold$t$, false, 2),
    (v_q, $t$Silber$t$, false, 3),
    (v_q, $t$Nichts$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie endet die Geschichte für die zwei Schwestern?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Eine ist glücklich, die andere ist traurig$t$, true, 1),
    (v_q, $t$Beide sind glücklich$t$, false, 2),
    (v_q, $t$Beide sind traurig$t$, false, 3),
    (v_q, $t$Beide bekommen Gold$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet „der Brunnen“ auf Französisch?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$le puits$t$, true, 1),
    (v_q, $t$le lac$t$, false, 2),
    (v_q, $t$la rivière$t$, false, 3),
    (v_q, $t$la mer$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet „fleißig“ auf Französisch?$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$travailleur$t$, true, 1),
    (v_q, $t$paresseux$t$, false, 2),
    (v_q, $t$triste$t$, false, 3),
    (v_q, $t$fatigué$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet „das Pech“ auf Französisch?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$la poix (noire)$t$, true, 1),
    (v_q, $t$l'or$t$, false, 2),
    (v_q, $t$la neige$t$, false, 3),
    (v_q, $t$le sable$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$„Das Mädchen ___ in einen Brunnen.“ (fallen)$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$fällt$t$, true, 1),
    (v_q, $t$falle$t$, false, 2),
    (v_q, $t$fallen$t$, false, 3),
    (v_q, $t$fällst$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$„Sie ___ Frau Holles Bett.“ (schütteln)$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$schüttelt$t$, true, 1),
    (v_q, $t$schüttle$t$, false, 2),
    (v_q, $t$schütteln$t$, false, 3),
    (v_q, $t$schüttelst$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$„Frau Holle ___ ihr schwarzes Pech.“ (geben)$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$gibt$t$, true, 1),
    (v_q, $t$gebe$t$, false, 2),
    (v_q, $t$geben$t$, false, 3),
    (v_q, $t$gibst$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$Schreib drei Sätze: Bist du fleißig zu Hause? Was machst du?$t$, 1, 'normal', 'production', $t$Ich bin fleißig zu Hause. Ich räume mein Zimmer auf. Ich helfe meiner Mutter in der Küche.$t$);

END $block$;

-- 7. Der Streich der Zwillinge
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary, culture_note) VALUES (
    'A1',
    $t$Der Streich der Zwillinge$t$,
    $t$Lena und Tom sind Zwillinge. Sie lieben Streiche. Heute legen sie einen Frosch in die Suppe von Onkel Paul. Onkel Paul isst die Suppe nicht. Er sieht den Frosch und schreit laut. Der Frosch springt aus der Suppe und hüpft durch die Küche. Lena und Tom lachen sehr. Aber dann fällt Onkel Paul auf den nassen Boden. Er ist nicht böse, nur ein bisschen nass. Die Kinder helfen ihm auf und sagen: „Entschuldigung!“ Onkel Paul lacht am Ende auch.$t$,
    $t$Léna et Tom sont jumeaux. Ils adorent les farces. Aujourd'hui, ils mettent une grenouille dans la soupe de l'oncle Paul. L'oncle Paul ne mange pas la soupe. Il voit la grenouille et pousse un cri fort. La grenouille saute hors de la soupe et bondit à travers la cuisine. Léna et Tom rient beaucoup. Mais ensuite l'oncle Paul tombe sur le sol mouillé. Il n'est pas fâché, juste un peu mouillé. Les enfants l'aident à se relever et disent : « Pardon ! » L'oncle Paul rit aussi à la fin.$t$,
    $t${"Lena":"Léna","und":"et","Tom":"Tom","sind":"sont","Zwillinge":"jumeaux","Sie":"ils","lieben":"adorent","Streiche":"farces","Heute":"aujourd'hui","legen":"mettent","sie":"ils/elle","einen":"une","Frosch":"grenouille","in":"dans","die":"la/les","Suppe":"soupe","von":"de","Onkel":"oncle","Paul":"Paul","isst":"mange","nicht":"pas","Er":"il","sieht":"voit","den":"la","schreit":"crie","laut":"fort","Der":"la","springt":"saute","aus":"hors de","der":"la","hüpft":"bondit","durch":"à travers","Küche":"cuisine","lachen":"rient","sehr":"beaucoup","Aber":"mais","dann":"ensuite","fällt":"tombe","auf":"sur","nassen":"mouillé","Boden":"sol","ist":"est","böse":"fâché","nur":"juste","ein":"un","bisschen":"peu","nass":"mouillé","Die":"les","Kinder":"enfants","helfen":"aident","ihm":"lui","sagen":"disent","Entschuldigung":"pardon","lacht":"rit","am":"à la","Ende":"fin","auch":"aussi"}$t$::jsonb,
    $t$Classique illustré allemand (XIXe s.)$t$
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wer sind Lena und Tom?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Zwillinge$t$, true, 1),
    (v_q, $t$Geschwister aus zwei Familien$t$, false, 2),
    (v_q, $t$Nachbarn$t$, false, 3),
    (v_q, $t$Lehrer$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was legen sie in die Suppe?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Einen Frosch$t$, true, 1),
    (v_q, $t$Einen Käfer$t$, false, 2),
    (v_q, $t$Eine Spinne$t$, false, 3),
    (v_q, $t$Eine Maus$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wessen Suppe ist es?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Die Suppe von Onkel Paul$t$, true, 1),
    (v_q, $t$Die Suppe der Mutter$t$, false, 2),
    (v_q, $t$Die Suppe der Oma$t$, false, 3),
    (v_q, $t$Die Suppe des Lehrers$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was macht Onkel Paul, als er den Frosch sieht?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er schreit laut$t$, true, 1),
    (v_q, $t$Er lacht sofort$t$, false, 2),
    (v_q, $t$Er isst weiter$t$, false, 3),
    (v_q, $t$Er schläft ein$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wohin springt der Frosch?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Durch die Küche$t$, true, 1),
    (v_q, $t$In den Garten$t$, false, 2),
    (v_q, $t$Auf den Tisch$t$, false, 3),
    (v_q, $t$In die Badewanne$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was passiert mit Onkel Paul am Ende?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er fällt auf den nassen Boden$t$, true, 1),
    (v_q, $t$Er läuft weg$t$, false, 2),
    (v_q, $t$Er ruft die Polizei$t$, false, 3),
    (v_q, $t$Er wird sehr böse$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie fühlt sich Onkel Paul nach dem Fall?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Nass, aber nicht böse$t$, true, 1),
    (v_q, $t$Sehr böse$t$, false, 2),
    (v_q, $t$Sehr traurig$t$, false, 3),
    (v_q, $t$Krank$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was sagen die Kinder zu Onkel Paul?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Entschuldigung$t$, true, 1),
    (v_q, $t$Auf Wiedersehen$t$, false, 2),
    (v_q, $t$Guten Appetit$t$, false, 3),
    (v_q, $t$Gute Nacht$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie endet die Geschichte?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Onkel Paul lacht am Ende auch$t$, true, 1),
    (v_q, $t$Onkel Paul bleibt böse$t$, false, 2),
    (v_q, $t$Die Kinder werden bestraft$t$, false, 3),
    (v_q, $t$Der Frosch bleibt in der Suppe$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet „der Frosch“ auf Französisch?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$la grenouille$t$, true, 1),
    (v_q, $t$le poisson$t$, false, 2),
    (v_q, $t$l'oiseau$t$, false, 3),
    (v_q, $t$le chat$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet „lachen“ auf Französisch?$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$rire$t$, true, 1),
    (v_q, $t$pleurer$t$, false, 2),
    (v_q, $t$schreien$t$, false, 3),
    (v_q, $t$dormir$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet „nass“ auf Französisch?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$mouillé$t$, true, 1),
    (v_q, $t$sec$t$, false, 2),
    (v_q, $t$chaud$t$, false, 3),
    (v_q, $t$froid$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$„Sie ___ einen Frosch in die Suppe.“ (legen)$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$legen$t$, true, 1),
    (v_q, $t$legt$t$, false, 2),
    (v_q, $t$lege$t$, false, 3),
    (v_q, $t$legst$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$„Der Frosch ___ aus der Suppe.“ (springen)$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$springt$t$, true, 1),
    (v_q, $t$springen$t$, false, 2),
    (v_q, $t$springe$t$, false, 3),
    (v_q, $t$sprangst$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$„Die Kinder ___ ihm auf.“ (helfen)$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$helfen$t$, true, 1),
    (v_q, $t$hilft$t$, false, 2),
    (v_q, $t$helfe$t$, false, 3),
    (v_q, $t$hilfst$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$Schreib drei Sätze: Machst du gern Streiche? Was machst du?$t$, 1, 'normal', 'production', $t$Ich mache manchmal kleine Streiche. Ich verstecke die Schuhe von meinem Bruder. Wir lachen danach zusammen.$t$);

END $block$;

-- 8. Das Mädchen mit den wilden Haaren
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary, culture_note) VALUES (
    'A1',
    $t$Das Mädchen mit den wilden Haaren$t$,
    $t$Mia mag ihre Haare nicht kämmen. Jeden Morgen sagt die Mutter: „Kämm deine Haare!“ Aber Mia rennt weg und spielt lieber. Ihre Haare werden wild wie ein Vogelnest. In der Schule lachen die Kinder über Mia. Ein Vogel fliegt sogar in ihre Haare! Mia ist traurig und weint. Am Abend kämmt sie endlich ihre Haare. Es dauert lange, aber am Ende sind die Haare schön. Am nächsten Tag lacht niemand mehr. Mia kämmt jetzt jeden Tag ihre Haare.$t$,
    $t$Mia n'aime pas se peigner les cheveux. Chaque matin, la mère dit : « Peigne tes cheveux ! » Mais Mia s'enfuit et préfère jouer. Ses cheveux deviennent hirsutes comme un nid d'oiseau. À l'école, les enfants se moquent de Mia. Un oiseau vole même dans ses cheveux ! Mia est triste et pleure. Le soir, elle peigne enfin ses cheveux. Cela prend longtemps, mais à la fin les cheveux sont beaux. Le lendemain, plus personne ne rit. Mia peigne maintenant ses cheveux tous les jours.$t$,
    $t${"Das":"la","Mädchen":"fille","mit":"aux","den":"les","wilden":"hirsutes","Haaren":"cheveux","Mia":"Mia","mag":"aime","ihre":"ses","Haare":"cheveux","nicht":"pas","kämmen":"peigner","Jeden":"chaque","Morgen":"matin","sagt":"dit","die":"la/les","Mutter":"mère","Kämm":"peigne","deine":"tes","Aber":"mais","rennt":"court","weg":"loin","und":"et","spielt":"joue","lieber":"préférer/plutôt","Ihre":"ses","werden":"deviennent","wild":"hirsutes","wie":"comme","ein":"un","Vogelnest":"nid d'oiseau","In":"à","der":"la","Schule":"école","lachen":"rient","Kinder":"enfants","über":"de","Ein":"un","Vogel":"oiseau","fliegt":"vole","sogar":"même","in":"dans","ist":"est","traurig":"triste","weint":"pleure","Am":"le","Abend":"soir","kämmt":"peigne","sie":"elle","endlich":"enfin","Es":"cela","dauert":"prend/dure","lange":"longtemps","aber":"mais","am":"à la","Ende":"fin","sind":"sont","schön":"belles","nächsten":"suivant","Tag":"jour","lacht":"rit","niemand":"personne","mehr":"plus","jetzt":"maintenant","jeden":"chaque"}$t$::jsonb,
    $t$Classique illustré allemand (XIXe s.)$t$
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was mag Mia nicht machen?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Ihre Haare kämmen$t$, true, 1),
    (v_q, $t$Ihre Zähne putzen$t$, false, 2),
    (v_q, $t$Ihre Schuhe anziehen$t$, false, 3),
    (v_q, $t$Ihre Hausaufgaben machen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was macht Mia lieber, statt ihre Haare zu kämmen?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie rennt weg und spielt$t$, true, 1),
    (v_q, $t$Sie liest ein Buch$t$, false, 2),
    (v_q, $t$Sie schläft$t$, false, 3),
    (v_q, $t$Sie isst Kuchen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie werden Mias Haare, weil sie nicht kämmt?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Wild wie ein Vogelnest$t$, true, 1),
    (v_q, $t$Kurz und glatt$t$, false, 2),
    (v_q, $t$Ganz nass$t$, false, 3),
    (v_q, $t$Ganz grau$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wer lacht über Mia in der Schule?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Die Kinder$t$, true, 1),
    (v_q, $t$Die Lehrerin$t$, false, 2),
    (v_q, $t$Ihre Mutter$t$, false, 3),
    (v_q, $t$Niemand$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was passiert mit einem Vogel?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er fliegt in Mias Haare$t$, true, 1),
    (v_q, $t$Er sitzt auf dem Fenster$t$, false, 2),
    (v_q, $t$Er singt ein Lied$t$, false, 3),
    (v_q, $t$Er fliegt weg$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie fühlt sich Mia, als der Vogel in ihre Haare fliegt?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Traurig, sie weint$t$, true, 1),
    (v_q, $t$Sehr froh$t$, false, 2),
    (v_q, $t$Wütend$t$, false, 3),
    (v_q, $t$Müde$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wann kämmt Mia endlich ihre Haare?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Am Abend$t$, true, 1),
    (v_q, $t$Am Morgen$t$, false, 2),
    (v_q, $t$In der Schule$t$, false, 3),
    (v_q, $t$Nie$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie sind die Haare am Ende?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Schön$t$, true, 1),
    (v_q, $t$Immer noch wild$t$, false, 2),
    (v_q, $t$Kurz geschnitten$t$, false, 3),
    (v_q, $t$Grün$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was macht Mia jetzt jeden Tag?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie kämmt ihre Haare$t$, true, 1),
    (v_q, $t$Sie spielt draußen$t$, false, 2),
    (v_q, $t$Sie isst Suppe$t$, false, 3),
    (v_q, $t$Sie schreit$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet „die Haare“ auf Französisch?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$les cheveux$t$, true, 1),
    (v_q, $t$les mains$t$, false, 2),
    (v_q, $t$les yeux$t$, false, 3),
    (v_q, $t$les dents$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet „kämmen“ auf Französisch?$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$peigner$t$, true, 1),
    (v_q, $t$couper$t$, false, 2),
    (v_q, $t$laver$t$, false, 3),
    (v_q, $t$brosser (les dents)$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet „weinen“ auf Französisch?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$pleurer$t$, true, 1),
    (v_q, $t$rire$t$, false, 2),
    (v_q, $t$crier$t$, false, 3),
    (v_q, $t$chanter$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$„Mia ___ ihre Haare nicht kämmen.“ (mögen)$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$mag$t$, true, 1),
    (v_q, $t$magst$t$, false, 2),
    (v_q, $t$mögen$t$, false, 3),
    (v_q, $t$möge$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$„Die Kinder ___ über Mia.“ (lachen)$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$lachen$t$, true, 1),
    (v_q, $t$lacht$t$, false, 2),
    (v_q, $t$lache$t$, false, 3),
    (v_q, $t$lachst$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$„Mia ___ jetzt jeden Tag ihre Haare.“ (kämmen)$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$kämmt$t$, true, 1),
    (v_q, $t$kämme$t$, false, 2),
    (v_q, $t$kämmen$t$, false, 3),
    (v_q, $t$kämmst$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$Schreib drei Sätze: Was machst du jeden Morgen, bevor du aus dem Haus gehst?$t$, 1, 'normal', 'production', $t$Ich putze meine Zähne. Ich kämme meine Haare. Dann frühstücke ich mit meiner Familie.$t$);

END $block$;

