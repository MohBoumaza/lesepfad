-- Contenu réel — niveau A1 (25 histoires). Chaque histoire a :
-- - 3 questions de compréhension (position 1-3) x 3 difficultés
-- - 1 question de vocabulaire (position 1) x 3 difficultés
-- - 1 question de conjugaison/grammaire (position 1) x 3 difficultés
-- - 1 tâche de production écrite (position 1, difficulty 'normal', pas de choix, model_answer)

-- 1. Der verlorene Schlüssel
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary) VALUES (
    'A1',
    $t$Der verlorene Schlüssel$t$,
    $t$Anna kommt nach Hause. Sie sucht ihren Schlüssel in der Tasche. Der Schlüssel ist nicht da. Anna ist nervös. Sie klingelt bei ihrer Nachbarin. Die Nachbarin hat einen zweiten Schlüssel. Anna öffnet die Tür und findet ihren Schlüssel auf dem Tisch in der Küche.$t$,
    $t$Anna rentre à la maison. Elle cherche sa clé dans son sac. La clé n'est pas là. Anna est nerveuse. Elle sonne chez sa voisine. La voisine a un double de la clé. Anna ouvre la porte et trouve sa clé sur la table dans la cuisine.$t$,
    $t${"Anna":"Anna","kommt":"vient","nach":"vers","Hause":"la maison","Sie":"Elle","sucht":"cherche","ihren":"son/sa","Schlüssel":"clé","in":"dans","der":"le/la","Tasche":"le sac","Der":"La","ist":"est","nicht":"pas","da":"là","nervös":"nerveuse","klingelt":"sonne","bei":"chez","ihrer":"sa","Nachbarin":"voisine","Die":"La","hat":"a","einen":"un","zweiten":"deuxième","öffnet":"ouvre","die":"la","Tür":"porte","und":"et","findet":"trouve","auf":"sur","dem":"la","Tisch":"table","Küche":"cuisine"}$t$::jsonb
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wo ist der Schlüssel am Ende?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Auf dem Tisch in der Küche$t$, true, 1),
    (v_q, $t$In der Tasche$t$, false, 2),
    (v_q, $t$Im Auto$t$, false, 3),
    (v_q, $t$Im Park$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wo findet Anna am Ende ihren Schlüssel?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$In ihrer Tasche$t$, false, 1),
    (v_q, $t$Bei der Nachbarin$t$, false, 2),
    (v_q, $t$Auf dem Tisch in der Küche$t$, true, 3),
    (v_q, $t$Im Auto$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wo lag der Schlüssel die ganze Zeit?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Bei der Nachbarin$t$, false, 1),
    (v_q, $t$In der Küche, auf dem Tisch$t$, true, 2),
    (v_q, $t$In Annas Tasche$t$, false, 3),
    (v_q, $t$Vor der Haustür$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Bei wem klingelt Anna?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Bei der Nachbarin$t$, true, 1),
    (v_q, $t$Bei der Polizei$t$, false, 2),
    (v_q, $t$Bei ihrer Mutter$t$, false, 3),
    (v_q, $t$Bei einem Freund$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was macht Anna, weil sie ihren Schlüssel nicht findet?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie ruft die Polizei an$t$, false, 1),
    (v_q, $t$Sie klingelt bei der Nachbarin$t$, true, 2),
    (v_q, $t$Sie geht ins Büro$t$, false, 3),
    (v_q, $t$Sie schläft im Park$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie kommt Anna am Ende in ihre Wohnung?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie findet ihren Schlüssel in der Tasche$t$, false, 1),
    (v_q, $t$Sie benutzt den Schlüssel der Nachbarin$t$, true, 2),
    (v_q, $t$Ein Freund öffnet die Tür$t$, false, 3),
    (v_q, $t$Sie ruft einen Schlüsseldienst$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie fühlt sich Anna?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Nervös$t$, true, 1),
    (v_q, $t$Glücklich$t$, false, 2),
    (v_q, $t$Müde$t$, false, 3),
    (v_q, $t$Hungrig$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie fühlt sich Anna, als sie den Schlüssel nicht findet?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Glücklich$t$, false, 1),
    (v_q, $t$Müde$t$, false, 2),
    (v_q, $t$Nervös$t$, true, 3),
    (v_q, $t$Hungrig$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum ist Anna nervös?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie findet ihren Schlüssel nicht$t$, true, 1),
    (v_q, $t$Sie kommt zu spät zur Arbeit$t$, false, 2),
    (v_q, $t$Ihre Nachbarin ist nicht da$t$, false, 3),
    (v_q, $t$Sie hat die Tasche verloren$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'die Tasche' im Text?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$le sac$t$, true, 1),
    (v_q, $t$la clé$t$, false, 2),
    (v_q, $t$la porte$t$, false, 3),
    (v_q, $t$la table$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Anna sucht ihren Schlüssel 'in der Tasche'. Was ist 'die Tasche'?$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$la fenêtre$t$, false, 1),
    (v_q, $t$le sac$t$, true, 2),
    (v_q, $t$la cuisine$t$, false, 3),
    (v_q, $t$la voisine$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Im Satz 'Sie sucht ihren Schlüssel in der Tasche' bedeutet 'die Tasche':$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$le sac$t$, true, 1),
    (v_q, $t$la valise (grande)$t$, false, 2),
    (v_q, $t$la poche de pantalon$t$, false, 3),
    (v_q, $t$le tiroir$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie heißt 'suchen' in der Form für 'sie' (Einzahl, Anna)?$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$sucht$t$, true, 1),
    (v_q, $t$suchen$t$, false, 2),
    (v_q, $t$suche$t$, false, 3),
    (v_q, $t$suchst$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Anna ___ ihren Schlüssel. Ergänzen Sie 'suchen' richtig.$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$suche$t$, false, 1),
    (v_q, $t$suchst$t$, false, 2),
    (v_q, $t$sucht$t$, true, 3),
    (v_q, $t$suchen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Form von 'suchen' passt zu 'die Nachbarin'?$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$suchen$t$, false, 1),
    (v_q, $t$suchst$t$, false, 2),
    (v_q, $t$sucht$t$, true, 3),
    (v_q, $t$gesucht$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$Sie haben etwas verloren (zum Beispiel einen Schlüssel oder ein Handy). Schreiben Sie 2-3 einfache Sätze darüber.$t$, 1, 'normal', 'production', $t$Ich suche mein Handy. Es ist nicht in meiner Tasche. Ich finde es auf dem Tisch.$t$);

END $block$;

-- 2. Das Wochenende von Tim
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary) VALUES (
    'A1',
    $t$Das Wochenende von Tim$t$,
    $t$Tim steht am Samstag spät auf. Er frühstückt mit seiner Familie. Am Nachmittag spielt er Fußball mit seinen Freunden im Park. Danach ist er sehr müde. Am Abend sieht er einen Film mit seiner Schwester. Am Sonntag besucht er seine Großeltern. Seine Oma kocht Suppe für ihn. Tim mag das Wochenende sehr.$t$,
    $t$Tim se lève tard le samedi. Il prend le petit-déjeuner avec sa famille. L'après-midi, il joue au football avec ses amis au parc. Ensuite, il est très fatigué. Le soir, il regarde un film avec sa sœur. Le dimanche, il rend visite à ses grands-parents. Sa grand-mère lui cuisine une soupe. Tim aime beaucoup le week-end.$t$,
    $t${"Tim":"Tim","steht":"se lève","am":"le","Samstag":"samedi","spät":"tard","auf":"(particule de 'aufstehen')","Er":"Il","frühstückt":"prend le petit-déjeuner","mit":"avec","seiner":"sa","Familie":"famille","Am":"L'","Nachmittag":"après-midi","spielt":"joue","er":"il","Fußball":"football","seinen":"ses","Freunden":"amis","im":"dans le","Park":"parc","Danach":"ensuite","ist":"est","sehr":"très","müde":"fatigué","Abend":"soir","sieht":"regarde","einen":"un","Film":"film","Schwester":"sœur","Sonntag":"dimanche","besucht":"rend visite à","seine":"ses","Großeltern":"grands-parents","Seine":"Sa","Oma":"grand-mère","kocht":"cuisine","Suppe":"soupe","für":"pour","ihn":"lui","mag":"aime","das":"le","Wochenende":"week-end"}$t$::jsonb
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was macht Tim am Samstagnachmittag?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er spielt Fußball$t$, true, 1),
    (v_q, $t$Er schläft$t$, false, 2),
    (v_q, $t$Er liest ein Buch$t$, false, 3),
    (v_q, $t$Er kocht$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was macht Tim am Samstagnachmittag?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er schläft$t$, false, 1),
    (v_q, $t$Er spielt Fußball$t$, true, 2),
    (v_q, $t$Er kocht Suppe$t$, false, 3),
    (v_q, $t$Er besucht seine Großeltern$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was macht Tim, bevor er sehr müde wird?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er isst Suppe bei der Oma$t$, false, 1),
    (v_q, $t$Er spielt Fußball im Park$t$, true, 2),
    (v_q, $t$Er sieht einen Film$t$, false, 3),
    (v_q, $t$Er frühstückt mit Freunden$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Mit wem sieht Tim einen Film?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Mit seiner Schwester$t$, true, 1),
    (v_q, $t$Mit seiner Oma$t$, false, 2),
    (v_q, $t$Mit seinen Freunden$t$, false, 3),
    (v_q, $t$Mit seinem Opa$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Mit wem sieht Tim am Abend einen Film?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Mit seiner Oma$t$, false, 1),
    (v_q, $t$Mit seinen Freunden$t$, false, 2),
    (v_q, $t$Mit seiner Schwester$t$, true, 3),
    (v_q, $t$Mit seinem Opa$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was macht Tim am Samstagabend?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er besucht seine Großeltern$t$, false, 1),
    (v_q, $t$Er sieht mit seiner Schwester einen Film$t$, true, 2),
    (v_q, $t$Er spielt noch einmal Fußball$t$, false, 3),
    (v_q, $t$Er isst Suppe$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wer kocht Suppe für Tim?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Seine Oma$t$, true, 1),
    (v_q, $t$Seine Mutter$t$, false, 2),
    (v_q, $t$Seine Schwester$t$, false, 3),
    (v_q, $t$Sein Freund$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wer kocht Suppe für Tim?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Seine Mutter$t$, false, 1),
    (v_q, $t$Seine Oma$t$, true, 2),
    (v_q, $t$Seine Schwester$t$, false, 3),
    (v_q, $t$Sein Freund$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was passiert, als Tim am Sonntag seine Großeltern besucht?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Seine Oma kocht Suppe für ihn$t$, true, 1),
    (v_q, $t$Sein Opa spielt Fußball mit ihm$t$, false, 2),
    (v_q, $t$Er sieht einen Film mit der Oma$t$, false, 3),
    (v_q, $t$Er schläft den ganzen Tag$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'müde' im Text?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$fatigué$t$, true, 1),
    (v_q, $t$content$t$, false, 2),
    (v_q, $t$triste$t$, false, 3),
    (v_q, $t$rapide$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$'Danach ist er sehr müde.' Was bedeutet 'müde'?$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$heureux$t$, false, 1),
    (v_q, $t$fatigué$t$, true, 2),
    (v_q, $t$affamé$t$, false, 3),
    (v_q, $t$malade$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Im Kontext 'Er ist sehr müde' nach dem Fußballspielen bedeutet 'müde':$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$fatigué (épuisé)$t$, true, 1),
    (v_q, $t$énervé$t$, false, 2),
    (v_q, $t$triste$t$, false, 3),
    (v_q, $t$occupé$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie heißt 'spielen' in der Form für 'er' (Tim)?$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$spielt$t$, true, 1),
    (v_q, $t$spielen$t$, false, 2),
    (v_q, $t$spiele$t$, false, 3),
    (v_q, $t$spielst$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Tim ___ Fußball mit seinen Freunden. Ergänzen Sie 'spielen' richtig.$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$spiele$t$, false, 1),
    (v_q, $t$spielst$t$, false, 2),
    (v_q, $t$spielt$t$, true, 3),
    (v_q, $t$spielen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Form von 'spielen' passt zu 'die Kinder' (nicht im Text, aber allgemein)?$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$spielt$t$, false, 1),
    (v_q, $t$spielen$t$, true, 2),
    (v_q, $t$spielst$t$, false, 3),
    (v_q, $t$gespielt$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$Was machen Sie am Wochenende? Schreiben Sie 2-3 einfache Sätze.$t$, 1, 'normal', 'production', $t$Am Samstag stehe ich spät auf. Ich spiele Fußball mit Freunden. Am Sonntag besuche ich meine Familie.$t$);

END $block$;

-- 3. Einkaufen im Supermarkt
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary) VALUES (
    'A1',
    $t$Einkaufen im Supermarkt$t$,
    $t$Lena geht zum Supermarkt. Sie braucht Brot, Milch und Äpfel. Der Supermarkt ist groß und voll. Lena findet das Brot schnell. Die Milch ist teuer, aber Lena kauft sie trotzdem. Sie sucht lange nach den Äpfeln. Endlich findet sie rote Äpfel. An der Kasse bezahlt Lena mit ihrer Karte. Dann geht sie glücklich nach Hause.$t$,
    $t$Léna va au supermarché. Elle a besoin de pain, de lait et de pommes. Le supermarché est grand et bondé. Léna trouve le pain rapidement. Le lait est cher, mais Léna l'achète quand même. Elle cherche longtemps les pommes. Elle finit par trouver des pommes rouges. À la caisse, Léna paie avec sa carte. Puis elle rentre chez elle, heureuse.$t$,
    $t${"Lena":"Léna","geht":"va","zum":"au","Supermarkt":"supermarché","Sie":"Elle","braucht":"a besoin de","Brot":"pain","Milch":"lait","und":"et","Äpfel":"pommes","Der":"Le","ist":"est","groß":"grand","voll":"bondé","findet":"trouve","das":"le","schnell":"rapidement","Die":"Le","teuer":"cher","aber":"mais","kauft":"achète","sie":"elle/le","trotzdem":"quand même","sucht":"cherche","lange":"longtemps","nach":"pour chercher","den":"les","Äpfeln":"pommes","Endlich":"finalement","rote":"rouges","An":"À","der":"la","Kasse":"caisse","bezahlt":"paie","mit":"avec","ihrer":"sa","Karte":"carte","Dann":"puis","glücklich":"heureuse","Hause":"la maison"}$t$::jsonb
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was kauft Lena?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Brot, Milch und Äpfel$t$, true, 1),
    (v_q, $t$Käse, Wein und Brot$t$, false, 2),
    (v_q, $t$Milch, Eier und Fisch$t$, false, 3),
    (v_q, $t$Bananen und Saft$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was kauft Lena im Supermarkt?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Brot, Milch und Äpfel$t$, true, 1),
    (v_q, $t$Käse, Wein und Brot$t$, false, 2),
    (v_q, $t$Milch, Eier und Fisch$t$, false, 3),
    (v_q, $t$Äpfel, Bananen und Saft$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche drei Dinge braucht Lena, als sie zum Supermarkt geht?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Brot, Milch und Äpfel$t$, true, 1),
    (v_q, $t$Brot, Käse und Äpfel$t$, false, 2),
    (v_q, $t$Milch, Butter und Brot$t$, false, 3),
    (v_q, $t$Äpfel, Milch und Eier$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Womit bezahlt Lena?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Mit ihrer Karte$t$, true, 1),
    (v_q, $t$Mit Bargeld$t$, false, 2),
    (v_q, $t$Mit einem Gutschein$t$, false, 3),
    (v_q, $t$Sie bezahlt nicht$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie bezahlt Lena an der Kasse?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Mit Bargeld$t$, false, 1),
    (v_q, $t$Mit ihrer Karte$t$, true, 2),
    (v_q, $t$Sie bezahlt nicht$t$, false, 3),
    (v_q, $t$Mit einem Gutschein$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie bezahlt Lena, obwohl die Milch teuer ist?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie bezahlt trotzdem mit ihrer Karte$t$, true, 1),
    (v_q, $t$Sie kauft die Milch nicht$t$, false, 2),
    (v_q, $t$Sie bezahlt mit Bargeld$t$, false, 3),
    (v_q, $t$Sie fragt nach einem Rabatt$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Farbe haben die Äpfel?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Rot$t$, true, 1),
    (v_q, $t$Grün$t$, false, 2),
    (v_q, $t$Gelb$t$, false, 3),
    (v_q, $t$Orange$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Farbe haben die Äpfel, die Lena kauft?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Grün$t$, false, 1),
    (v_q, $t$Gelb$t$, false, 2),
    (v_q, $t$Rot$t$, true, 3),
    (v_q, $t$Orange$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum dauert es lange, bis Lena die Äpfel findet?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Der Supermarkt ist groß und voll$t$, true, 1),
    (v_q, $t$Es gibt keine roten Äpfel$t$, false, 2),
    (v_q, $t$Die Äpfel sind zu teuer$t$, false, 3),
    (v_q, $t$Sie sucht zuerst das Brot$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'teuer' im Text?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$cher$t$, true, 1),
    (v_q, $t$bon marché$t$, false, 2),
    (v_q, $t$frais$t$, false, 3),
    (v_q, $t$lourd$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$'Die Milch ist teuer, aber Lena kauft sie trotzdem.' Was bedeutet 'teuer'?$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$délicieux$t$, false, 1),
    (v_q, $t$cher$t$, true, 2),
    (v_q, $t$froid$t$, false, 3),
    (v_q, $t$difficile à trouver$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Im Satz 'Die Milch ist teuer' ist das Gegenteil von 'teuer':$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$günstig$t$, true, 1),
    (v_q, $t$frisch$t$, false, 2),
    (v_q, $t$voll$t$, false, 3),
    (v_q, $t$schnell$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie heißt 'kaufen' in der Form für 'sie' (Lena)?$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$kauft$t$, true, 1),
    (v_q, $t$kaufen$t$, false, 2),
    (v_q, $t$kaufe$t$, false, 3),
    (v_q, $t$kaufst$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Lena ___ das Brot schnell. Ergänzen Sie 'finden' richtig.$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$finde$t$, false, 1),
    (v_q, $t$findest$t$, false, 2),
    (v_q, $t$findet$t$, true, 3),
    (v_q, $t$finden$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$An der Kasse ___ Lena mit ihrer Karte. Welche Form von 'bezahlen' passt?$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$bezahle$t$, false, 1),
    (v_q, $t$bezahlst$t$, false, 2),
    (v_q, $t$bezahlt$t$, true, 3),
    (v_q, $t$bezahlen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$Sie gehen einkaufen. Was kaufen Sie? Schreiben Sie 2-3 einfache Sätze.$t$, 1, 'normal', 'production', $t$Ich gehe zum Supermarkt. Ich kaufe Brot und Äpfel. Ich bezahle an der Kasse.$t$);

END $block$;

-- 4. Der Regentag
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary) VALUES (
    'A1',
    $t$Der Regentag$t$,
    $t$Es regnet den ganzen Tag. Paul kann nicht draußen spielen. Er bleibt zu Hause und liest ein Buch. Später malt er ein Bild für seine Mutter. Am Nachmittag hört der Regen auf. Die Sonne scheint wieder. Paul geht schnell nach draußen und springt in die Pfützen. Er ist sehr glücklich.$t$,
    $t$Il pleut toute la journée. Paul ne peut pas jouer dehors. Il reste à la maison et lit un livre. Plus tard, il dessine un tableau pour sa mère. L'après-midi, la pluie s'arrête. Le soleil brille à nouveau. Paul sort vite dehors et saute dans les flaques. Il est très heureux.$t$,
    $t${"Es":"Il (impersonnel)","regnet":"pleut","den":"la","ganzen":"toute","Tag":"journée","Paul":"Paul","kann":"peut","nicht":"ne pas","draußen":"dehors","spielen":"jouer","Er":"Il","bleibt":"reste","zu":"à","Hause":"la maison","und":"et","liest":"lit","ein":"un","Buch":"livre","Später":"plus tard","malt":"dessine","er":"il","Bild":"tableau","für":"pour","seine":"sa","Mutter":"mère","Am":"L'","Nachmittag":"après-midi","hört":"s'arrête","der":"la","Regen":"pluie","auf":"(particule d'arrêt)","Die":"Le","Sonne":"soleil","scheint":"brille","wieder":"à nouveau","geht":"va","schnell":"vite","nach":"vers","springt":"saute","in":"dans","die":"les","Pfützen":"flaques","ist":"est","sehr":"très","glücklich":"heureux"}$t$::jsonb
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum bleibt Paul zu Hause?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Es regnet$t$, true, 1),
    (v_q, $t$Er ist krank$t$, false, 2),
    (v_q, $t$Er hat keine Freunde$t$, false, 3),
    (v_q, $t$Die Schule ist geschlossen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum bleibt Paul zu Hause?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er ist krank$t$, false, 1),
    (v_q, $t$Es regnet$t$, true, 2),
    (v_q, $t$Er hat keine Freunde$t$, false, 3),
    (v_q, $t$Die Schule ist geschlossen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum kann Paul nicht draußen spielen?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Es regnet den ganzen Tag$t$, true, 1),
    (v_q, $t$Er muss ein Bild malen$t$, false, 2),
    (v_q, $t$Seine Mutter erlaubt es nicht$t$, false, 3),
    (v_q, $t$Er ist zu müde$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Für wen malt Paul ein Bild?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Für seine Mutter$t$, true, 1),
    (v_q, $t$Für seinen Vater$t$, false, 2),
    (v_q, $t$Für seine Schwester$t$, false, 3),
    (v_q, $t$Für seinen Freund$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Für wen malt Paul ein Bild?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Für seinen Vater$t$, false, 1),
    (v_q, $t$Für seine Mutter$t$, true, 2),
    (v_q, $t$Für seine Schwester$t$, false, 3),
    (v_q, $t$Für seinen Freund$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was macht Paul, nachdem er ein Buch gelesen hat?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er malt ein Bild für seine Mutter$t$, true, 1),
    (v_q, $t$Er springt in die Pfützen$t$, false, 2),
    (v_q, $t$Er geht zu seinen Freunden$t$, false, 3),
    (v_q, $t$Er schläft ein$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was macht Paul, wenn der Regen aufhört?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er springt in die Pfützen$t$, true, 1),
    (v_q, $t$Er schläft$t$, false, 2),
    (v_q, $t$Er liest weiter$t$, false, 3),
    (v_q, $t$Er bleibt zu Hause$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was macht Paul, wenn der Regen aufhört?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er schläft$t$, false, 1),
    (v_q, $t$Er springt in die Pfützen$t$, true, 2),
    (v_q, $t$Er liest weiter$t$, false, 3),
    (v_q, $t$Er bleibt zu Hause$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was zeigt, dass Paul sich über die Sonne freut?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er springt schnell draußen in die Pfützen$t$, true, 1),
    (v_q, $t$Er malt noch ein Bild$t$, false, 2),
    (v_q, $t$Er liest ein zweites Buch$t$, false, 3),
    (v_q, $t$Er bleibt lieber zu Hause$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'die Pfütze' im Text?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$la flaque d'eau$t$, true, 1),
    (v_q, $t$le nuage$t$, false, 2),
    (v_q, $t$le parapluie$t$, false, 3),
    (v_q, $t$le soleil$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$'Paul springt in die Pfützen.' Was ist 'die Pfütze'?$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$une petite mare d'eau de pluie$t$, true, 1),
    (v_q, $t$une piscine$t$, false, 2),
    (v_q, $t$un jardin$t$, false, 3),
    (v_q, $t$une rivière$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Im Kontext 'Er springt in die Pfützen' nach dem Regen bedeutet 'die Pfütze':$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$l'eau accumulée sur le sol après la pluie$t$, true, 1),
    (v_q, $t$la boue$t$, false, 2),
    (v_q, $t$l'herbe mouillée$t$, false, 3),
    (v_q, $t$le trottoir$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie heißt 'lesen' in der Form für 'er' (Paul)?$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$liest$t$, true, 1),
    (v_q, $t$lesen$t$, false, 2),
    (v_q, $t$lese$t$, false, 3),
    (v_q, $t$liesen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Paul ___ ein Buch. Ergänzen Sie 'lesen' richtig.$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$lese$t$, false, 1),
    (v_q, $t$liest$t$, true, 2),
    (v_q, $t$lesen$t$, false, 3),
    (v_q, $t$lest$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Form von 'scheinen' passt zu 'die Sonne'?$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$scheine$t$, false, 1),
    (v_q, $t$scheinst$t$, false, 2),
    (v_q, $t$scheint$t$, true, 3),
    (v_q, $t$scheinen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$Es regnet den ganzen Tag. Was machen Sie zu Hause? Schreiben Sie 2-3 einfache Sätze.$t$, 1, 'normal', 'production', $t$Es regnet heute. Ich bleibe zu Hause. Ich lese ein Buch und male ein Bild.$t$);

END $block$;

-- 5. Ein Geburtstag im Park
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary) VALUES (
    'A1',
    $t$Ein Geburtstag im Park$t$,
    $t$Heute hat Sophie Geburtstag. Sie feiert mit ihren Freunden im Park. Es gibt einen großen Kuchen mit Kerzen. Sophie bekommt viele Geschenke. Ihre beste Freundin schenkt ihr ein Buch. Die Kinder spielen zusammen und lachen viel. Am Ende isst jeder ein Stück Kuchen. Sophie sagt: „Das ist mein schönster Geburtstag!"$t$,
    $t$Aujourd'hui, c'est l'anniversaire de Sophie. Elle fête ça avec ses amis au parc. Il y a un grand gâteau avec des bougies. Sophie reçoit beaucoup de cadeaux. Sa meilleure amie lui offre un livre. Les enfants jouent ensemble et rient beaucoup. À la fin, chacun mange un morceau de gâteau. Sophie dit : « C'est mon plus bel anniversaire ! »$t$,
    $t${"Heute":"aujourd'hui","hat":"a","Sophie":"Sophie","Geburtstag":"anniversaire","Sie":"Elle","feiert":"fête","mit":"avec","ihren":"ses","Freunden":"amis","im":"au","Park":"parc","Es":"Il (impersonnel)","gibt":"y a","einen":"un","großen":"grand","Kuchen":"gâteau","Kerzen":"bougies","bekommt":"reçoit","viele":"beaucoup de","Geschenke":"cadeaux","Ihre":"Sa","beste":"meilleure","Freundin":"amie","schenkt":"offre","ihr":"lui","ein":"un","Buch":"livre","Die":"Les","Kinder":"enfants","spielen":"jouent","zusammen":"ensemble","und":"et","lachen":"rient","viel":"beaucoup","Am":"À","Ende":"la fin","isst":"mange","jeder":"chacun","Stück":"morceau","sagt":"dit","Das":"ce","ist":"est","mein":"mon","schönster":"plus bel"}$t$::jsonb
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wo feiert Sophie ihren Geburtstag?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Im Park$t$, true, 1),
    (v_q, $t$Zu Hause$t$, false, 2),
    (v_q, $t$In der Schule$t$, false, 3),
    (v_q, $t$Im Restaurant$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wo feiert Sophie ihren Geburtstag?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Zu Hause$t$, false, 1),
    (v_q, $t$Im Park$t$, true, 2),
    (v_q, $t$In der Schule$t$, false, 3),
    (v_q, $t$Im Restaurant$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wo sind Sophie und ihre Freunde, als sie Kuchen essen?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Im Park$t$, true, 1),
    (v_q, $t$In der Küche$t$, false, 2),
    (v_q, $t$Im Restaurant$t$, false, 3),
    (v_q, $t$In der Schule$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was schenkt die beste Freundin Sophie?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Ein Buch$t$, true, 1),
    (v_q, $t$Eine Puppe$t$, false, 2),
    (v_q, $t$Ein Fahrrad$t$, false, 3),
    (v_q, $t$Einen Kuchen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was schenkt die beste Freundin Sophie?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Ein Buch$t$, true, 1),
    (v_q, $t$Eine Puppe$t$, false, 2),
    (v_q, $t$Ein Fahrrad$t$, false, 3),
    (v_q, $t$Einen Kuchen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bekommt Sophie von ihrer besten Freundin?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Ein Buch$t$, true, 1),
    (v_q, $t$Kerzen für den Kuchen$t$, false, 2),
    (v_q, $t$Ein Spiel$t$, false, 3),
    (v_q, $t$Einen Ball$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was sagt Sophie am Ende?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Das ist ihr schönster Geburtstag$t$, true, 1),
    (v_q, $t$Sie ist müde$t$, false, 2),
    (v_q, $t$Sie mag den Kuchen nicht$t$, false, 3),
    (v_q, $t$Sie will nach Hause gehen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was sagt Sophie am Ende?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie ist müde$t$, false, 1),
    (v_q, $t$Das ist ihr schönster Geburtstag$t$, true, 2),
    (v_q, $t$Sie mag den Kuchen nicht$t$, false, 3),
    (v_q, $t$Sie will nach Hause gehen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was zeigt, dass Sophie den Tag sehr mag?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie sagt, es ist ihr schönster Geburtstag$t$, true, 1),
    (v_q, $t$Sie isst nur ein Stück Kuchen$t$, false, 2),
    (v_q, $t$Sie will schnell nach Hause$t$, false, 3),
    (v_q, $t$Sie spricht nicht mit ihren Freunden$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'die Kerze' im Text?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$la bougie$t$, true, 1),
    (v_q, $t$le gâteau$t$, false, 2),
    (v_q, $t$le cadeau$t$, false, 3),
    (v_q, $t$la fête$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$'Es gibt einen großen Kuchen mit Kerzen.' Was ist 'die Kerze'?$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$un ballon$t$, false, 1),
    (v_q, $t$une bougie$t$, true, 2),
    (v_q, $t$une fleur$t$, false, 3),
    (v_q, $t$une chanson$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Im Satz 'Ein großer Kuchen mit Kerzen' bezieht sich 'die Kerze' auf:$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$l'objet qui brûle et qu'on souffle sur le gâteau$t$, true, 1),
    (v_q, $t$le sucre sur le gâteau$t$, false, 2),
    (v_q, $t$la décoration en papier$t$, false, 3),
    (v_q, $t$la boîte du cadeau$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie heißt 'feiern' in der Form für 'sie' (Sophie)?$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$feiert$t$, true, 1),
    (v_q, $t$feiern$t$, false, 2),
    (v_q, $t$feiere$t$, false, 3),
    (v_q, $t$feierst$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Sophie ___ mit ihren Freunden im Park. Ergänzen Sie 'feiern' richtig.$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$feiere$t$, false, 1),
    (v_q, $t$feierst$t$, false, 2),
    (v_q, $t$feiert$t$, true, 3),
    (v_q, $t$feiern$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Die Kinder ___ zusammen und lachen viel. Welche Form von 'spielen' passt?$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$spielt$t$, false, 1),
    (v_q, $t$spiele$t$, false, 2),
    (v_q, $t$spielen$t$, true, 3),
    (v_q, $t$spielst$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$Sie feiern Geburtstag. Schreiben Sie 2-3 einfache Sätze darüber.$t$, 1, 'normal', 'production', $t$Ich habe heute Geburtstag. Ich feiere mit meinen Freunden. Wir essen Kuchen und lachen viel.$t$);

END $block$;

-- 6. Der kleine Johann Wolfgang
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary) VALUES (
    'A1',
    $t$Der kleine Johann Wolfgang$t$,
    $t$Johann Wolfgang Goethe ist ein berühmter deutscher Dichter. Er ist heute noch sehr bekannt. Aber wie war Goethe als Kind? Der kleine Johann lebt in Frankfurt. Er wohnt mit seiner Familie in einem großen Haus. Sein Vater hat viele Bücher. Johann liest sehr gern. Er lernt auch Französisch und Englisch. Seine Mutter erzählt ihm oft Geschichten. Johann hört ihr gern zu. Er spielt auch gern Theater mit einem kleinen Puppentheater. Später schreibt Johann viele Bücher und Gedichte. Er wird ein sehr berühmter Schriftsteller.$t$,
    $t$Johann Wolfgang Goethe est un célèbre poète allemand. Il est encore très connu aujourd'hui. Mais comment était Goethe enfant ? Le petit Johann vit à Francfort. Il habite avec sa famille dans une grande maison. Son père a beaucoup de livres. Johann aime beaucoup lire. Il apprend aussi le français et l'anglais. Sa mère lui raconte souvent des histoires. Johann aime l'écouter. Il aime aussi jouer au théâtre avec un petit théâtre de marionnettes. Plus tard, Johann écrit de nombreux livres et poèmes. Il devient un écrivain très célèbre.$t$,
    $t${"Johann":"Johann","Wolfgang":"Wolfgang","Goethe":"Goethe","ist":"est","ein":"un","berühmter":"célèbre","deutscher":"allemand","Dichter":"poète","Er":"Il","heute":"aujourd'hui","noch":"encore","sehr":"très","bekannt":"connu","Aber":"mais","wie":"comment","war":"était","als":"comme/enfant","Kind":"enfant","Der":"Le","kleine":"petit","lebt":"vit","in":"à","Frankfurt":"Francfort","wohnt":"habite","mit":"avec","seiner":"sa","Familie":"famille","einem":"une","großen":"grande","Haus":"maison","Sein":"Son","Vater":"père","hat":"a","viele":"beaucoup de","Bücher":"livres","liest":"lit","gern":"volontiers","auch":"aussi","lernt":"apprend","Französisch":"français","und":"et","Englisch":"anglais","Seine":"Sa","Mutter":"mère","erzählt":"raconte","ihm":"lui","oft":"souvent","Geschichten":"histoires","hört":"écoute","ihr":"la (elle)","zu":"(particule d'écouter)","spielt":"joue","Theater":"théâtre","kleinen":"petit","Puppentheater":"théâtre de marionnettes","Später":"plus tard","schreibt":"écrit","Gedichte":"poèmes","wird":"devient","Schriftsteller":"écrivain"}$t$::jsonb
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wo lebt der kleine Johann?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Berlin$t$, false, 1),
    (v_q, $t$Frankfurt$t$, true, 2),
    (v_q, $t$Wien$t$, false, 3),
    (v_q, $t$München$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wo wohnt Johann mit seiner Familie?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$In einer kleinen Wohnung in Berlin$t$, false, 1),
    (v_q, $t$In einem großen Haus in Frankfurt$t$, true, 2),
    (v_q, $t$Auf einem Bauernhof$t$, false, 3),
    (v_q, $t$In einem Schloss in Wien$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum hat Johann als Kind schon viele Bücher zu Hause?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Weil er in einer Bibliothek wohnt$t$, false, 1),
    (v_q, $t$Weil sein Vater viele Bücher hat$t$, true, 2),
    (v_q, $t$Weil seine Mutter Buchhändlerin ist$t$, false, 3),
    (v_q, $t$Weil die Schule ihm Bücher schenkt$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wer erzählt Johann Geschichten?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sein Lehrer$t$, false, 1),
    (v_q, $t$Seine Mutter$t$, true, 2),
    (v_q, $t$Sein Onkel$t$, false, 3),
    (v_q, $t$Sein Freund$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was macht Johanns Mutter oft?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie kocht für die Familie$t$, false, 1),
    (v_q, $t$Sie arbeitet in der Stadt$t$, false, 2),
    (v_q, $t$Sie erzählt ihm Geschichten$t$, true, 3),
    (v_q, $t$Sie singt Lieder$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum hört Johann seiner Mutter gern zu?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Weil er müde ist$t$, false, 1),
    (v_q, $t$Weil er Geschichten mag$t$, true, 2),
    (v_q, $t$Weil er keine Bücher hat$t$, false, 3),
    (v_q, $t$Weil seine Mutter streng ist$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was wird Johann später?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Ein Arzt$t$, false, 1),
    (v_q, $t$Ein Lehrer$t$, false, 2),
    (v_q, $t$Ein berühmter Schriftsteller$t$, true, 3),
    (v_q, $t$Ein Koch$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was macht Johann als Erwachsener?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er baut Häuser$t$, false, 1),
    (v_q, $t$Er unterrichtet Kinder$t$, false, 2),
    (v_q, $t$Er reist um die Welt$t$, false, 3),
    (v_q, $t$Er schreibt Bücher und Gedichte$t$, true, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum passt es gut, dass Johann als Kind gern liest und Theater spielt?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Weil er später Fußballspieler wird$t$, false, 1),
    (v_q, $t$Weil er später Bäcker wird$t$, false, 2),
    (v_q, $t$Weil er später Schriftsteller wird$t$, true, 3),
    (v_q, $t$Weil er später Politiker wird$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'der Dichter' im Text?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$le poète$t$, true, 1),
    (v_q, $t$le professeur$t$, false, 2),
    (v_q, $t$le musicien$t$, false, 3),
    (v_q, $t$le peintre$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$'Goethe ist ein berühmter deutscher Dichter.' Was ist 'der Dichter'?$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$une personne qui écrit des poèmes/livres$t$, true, 1),
    (v_q, $t$une personne qui joue de la musique$t$, false, 2),
    (v_q, $t$une personne qui enseigne$t$, false, 3),
    (v_q, $t$une personne qui peint$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Im Kontext 'Ein berühmter deutscher Dichter' bezeichnet 'der Dichter' eine Person, die:$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Gedichte und literarische Texte schreibt$t$, true, 1),
    (v_q, $t$Theaterstücke aufführt$t$, false, 2),
    (v_q, $t$Bücher verkauft$t$, false, 3),
    (v_q, $t$Sprachen unterrichtet$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie heißt 'lernen' in der Form für 'er' (Johann)?$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$lernt$t$, true, 1),
    (v_q, $t$lernen$t$, false, 2),
    (v_q, $t$lerne$t$, false, 3),
    (v_q, $t$lernst$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Johann ___ Französisch und Englisch. Ergänzen Sie 'lernen' richtig.$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$lerne$t$, false, 1),
    (v_q, $t$lernst$t$, false, 2),
    (v_q, $t$lernt$t$, true, 3),
    (v_q, $t$lernen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Johann ___ sehr gern. Welche Form von 'lesen' passt (Präsens, 3. Person Singular)?$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$lese$t$, false, 1),
    (v_q, $t$liest$t$, true, 2),
    (v_q, $t$lest$t$, false, 3),
    (v_q, $t$lesen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$Was lesen oder lernen Sie gern? Schreiben Sie 2-3 einfache Sätze.$t$, 1, 'normal', 'production', $t$Ich lese gern Bücher. Ich lerne auch Deutsch. Meine Mutter erzählt mir Geschichten.$t$);

END $block$;

-- 7. Die Brüder sammeln Märchen
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary) VALUES (
    'A1',
    $t$Die Brüder sammeln Märchen$t$,
    $t$Jakob und Wilhelm Grimm sind zwei Brüder aus Deutschland. Sie leben vor über 200 Jahren. Die Brüder lieben alte Geschichten. Sie reisen von Dorf zu Dorf. Sie sprechen mit vielen Menschen. Die Menschen erzählen den Brüdern alte Märchen. Jakob und Wilhelm schreiben die Geschichten auf. Sie sammeln viele Märchen in einem Buch. Das Buch heißt Kinder- und Hausmärchen. Heute kennen Kinder auf der ganzen Welt die Märchen von den Brüdern Grimm.$t$,
    $t$Jakob et Wilhelm Grimm sont deux frères d'Allemagne. Ils vivent il y a plus de 200 ans. Les frères aiment les vieilles histoires. Ils voyagent de village en village. Ils parlent avec beaucoup de gens. Les gens racontent aux frères de vieux contes. Jakob et Wilhelm notent les histoires par écrit. Ils rassemblent de nombreux contes dans un livre. Le livre s'appelle Contes de l'enfance et du foyer. Aujourd'hui, des enfants du monde entier connaissent les contes des frères Grimm.$t$,
    $t${"Jakob":"Jakob","und":"et","Wilhelm":"Wilhelm","Grimm":"Grimm","sind":"sont","zwei":"deux","Brüder":"frères","aus":"de","Deutschland":"Allemagne","Sie":"Ils","leben":"vivent","vor":"il y a","über":"plus de","Jahren":"ans","Die":"Les","lieben":"aiment","alte":"vieilles","Geschichten":"histoires","reisen":"voyagent","von":"de","Dorf":"village","zu":"à","sprechen":"parlent","mit":"avec","vielen":"beaucoup de","Menschen":"gens","erzählen":"racontent","den":"aux","Brüdern":"frères","Märchen":"contes","schreiben":"écrivent","die":"les","auf":"(particule d'écrire)","sammeln":"rassemblent","viele":"de nombreux","in":"dans","einem":"un","Buch":"livre","Das":"le","heißt":"s'appelle","Kinder":"enfants","Hausmärchen":"contes du foyer","Heute":"aujourd'hui","kennen":"connaissent","der":"le","ganzen":"entier","Welt":"monde"}$t$::jsonb
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was machen Jakob und Wilhelm?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie backen Brot$t$, false, 1),
    (v_q, $t$Sie sammeln alte Märchen$t$, true, 2),
    (v_q, $t$Sie bauen Häuser$t$, false, 3),
    (v_q, $t$Sie malen Bilder$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie sammeln die Brüder die Märchen?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie kaufen Bücher im Laden$t$, false, 1),
    (v_q, $t$Sie reisen von Dorf zu Dorf und hören zu$t$, true, 2),
    (v_q, $t$Sie schreiben eigene Geschichten$t$, false, 3),
    (v_q, $t$Sie sehen Filme$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum sprechen die Brüder mit vielen Menschen?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Weil sie Deutsch lernen wollen$t$, false, 1),
    (v_q, $t$Weil die Menschen ihnen Märchen erzählen$t$, true, 2),
    (v_q, $t$Weil sie Arbeit suchen$t$, false, 3),
    (v_q, $t$Weil sie Freunde finden wollen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was schreiben die Brüder auf?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Ihre Namen$t$, false, 1),
    (v_q, $t$Die Märchen$t$, true, 2),
    (v_q, $t$Die Wetterlage$t$, false, 3),
    (v_q, $t$Die Preise$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was machen Jakob und Wilhelm mit den Märchen?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie singen sie in einem Lied$t$, false, 1),
    (v_q, $t$Sie schreiben sie in einem Buch auf$t$, true, 2),
    (v_q, $t$Sie malen sie in einem Bild$t$, false, 3),
    (v_q, $t$Sie erzählen sie nur mündlich weiter$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum ist das Buch der Brüder Grimm wichtig?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Weil es das erste deutsche Buch ist$t$, false, 1),
    (v_q, $t$Weil die Märchen sonst vergessen werden$t$, true, 2),
    (v_q, $t$Weil es sehr teuer ist$t$, false, 3),
    (v_q, $t$Weil es nur ein Märchen hat$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie heißt das Buch?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Deutsche Sagen$t$, false, 1),
    (v_q, $t$Das große Buch$t$, false, 2),
    (v_q, $t$Kinder- und Hausmärchen$t$, true, 3),
    (v_q, $t$Alte Geschichten$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wer kennt die Märchen der Brüder Grimm heute?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Nur Kinder in Deutschland$t$, false, 1),
    (v_q, $t$Kinder auf der ganzen Welt$t$, true, 2),
    (v_q, $t$Nur Erwachsene$t$, false, 3),
    (v_q, $t$Niemand mehr$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was zeigt, dass die Märchen der Brüder Grimm sehr erfolgreich sind?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Die Brüder haben nur ein Märchen geschrieben$t$, false, 1),
    (v_q, $t$Kinder auf der ganzen Welt kennen sie noch heute$t$, true, 2),
    (v_q, $t$Das Buch ist sehr kurz$t$, false, 3),
    (v_q, $t$Die Märchen sind neu geschrieben$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'das Märchen' im Text?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$le conte de fées$t$, true, 1),
    (v_q, $t$le journal$t$, false, 2),
    (v_q, $t$la lettre$t$, false, 3),
    (v_q, $t$la chanson$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$'Die Menschen erzählen den Brüdern alte Märchen.' Was ist 'das Märchen'?$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$une histoire traditionnelle, souvent avec magie$t$, true, 1),
    (v_q, $t$un rapport scientifique$t$, false, 2),
    (v_q, $t$une recette de cuisine$t$, false, 3),
    (v_q, $t$un poème d'amour$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Im Kontext 'Kinder- und Hausmärchen' bezeichnet 'das Märchen' am ehesten:$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$un récit populaire transmis oralement, souvent fantastique$t$, true, 1),
    (v_q, $t$un livre d'histoire officielle$t$, false, 2),
    (v_q, $t$un article de journal$t$, false, 3),
    (v_q, $t$un manuel scolaire$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie heißt 'schreiben' in der Form für 'sie' (Jakob und Wilhelm, Mehrzahl)?$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$schreiben$t$, true, 1),
    (v_q, $t$schreibt$t$, false, 2),
    (v_q, $t$schreibe$t$, false, 3),
    (v_q, $t$schreibst$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Jakob und Wilhelm ___ die Geschichten auf. Ergänzen Sie 'schreiben' richtig.$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$schreibt$t$, false, 1),
    (v_q, $t$schreibe$t$, false, 2),
    (v_q, $t$schreiben$t$, true, 3),
    (v_q, $t$schreibst$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Die Brüder ___ viele Märchen in einem Buch. Welche Form von 'sammeln' passt?$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$sammelt$t$, false, 1),
    (v_q, $t$sammle$t$, false, 2),
    (v_q, $t$sammeln$t$, true, 3),
    (v_q, $t$sammelst$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$Kennen Sie ein Märchen? Schreiben Sie 2-3 einfache Sätze darüber.$t$, 1, 'normal', 'production', $t$Ich kenne das Märchen Rotkäppchen. Ein Mädchen geht durch den Wald. Sie besucht ihre Großmutter.$t$);

END $block$;

-- 8. Ein Abend auf dem Weihnachtsmarkt
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary) VALUES (
    'A1',
    $t$Ein Abend auf dem Weihnachtsmarkt$t$,
    $t$In Deutschland gibt es im Winter viele Weihnachtsmärkte. Die Märkte stehen oft schon im November. Die Menschen gehen abends auf den Markt. Dort gibt es kleine Holzhäuser mit Lichtern. An den Ständen gibt es warmen Glühwein und süße Lebkuchen. Kinder essen gern gebrannte Mandeln. In der Mitte steht oft ein großer Weihnachtsbaum. Viele Weihnachtsmärkte gibt es schon seit über 100 Jahren. Der Weihnachtsmarkt in Nürnberg ist besonders berühmt. Die Menschen treffen dort Freunde und Familie.$t$,
    $t$En Allemagne, il y a en hiver de nombreux marchés de Noël. Les marchés s'installent souvent dès novembre. Les gens vont le soir au marché. Là-bas, il y a de petites maisons en bois avec des lumières. Aux stands, il y a du vin chaud et de doux pains d'épices. Les enfants aiment manger des amandes grillées. Au milieu se dresse souvent un grand sapin de Noël. De nombreux marchés de Noël existent déjà depuis plus de 100 ans. Le marché de Noël de Nuremberg est particulièrement célèbre. Les gens y retrouvent des amis et de la famille.$t$,
    $t${"In":"en","Deutschland":"Allemagne","gibt":"y a","es":"il","im":"en","Winter":"hiver","viele":"de nombreux","Weihnachtsmärkte":"marchés de Noël","Die":"Les","Märkte":"marchés","stehen":"s'installent","oft":"souvent","schon":"déjà","November":"novembre","Menschen":"gens","gehen":"vont","abends":"le soir","auf":"à/sur","den":"le","Markt":"marché","Dort":"là-bas","kleine":"petites","Holzhäuser":"maisons en bois","mit":"avec","Lichtern":"lumières","An":"aux","Ständen":"stands","warmen":"chaud","Glühwein":"vin chaud","und":"et","süße":"doux","Lebkuchen":"pains d'épices","Kinder":"enfants","essen":"mangent","gern":"volontiers","gebrannte":"grillées","Mandeln":"amandes","der":"le","Mitte":"milieu","steht":"se dresse","ein":"un","großer":"grand","Weihnachtsbaum":"sapin de Noël","seit":"depuis","über":"plus de","Jahren":"ans","Der":"Le","Weihnachtsmarkt":"marché de Noël","in":"à","Nürnberg":"Nuremberg","ist":"est","besonders":"particulièrement","berühmt":"célèbre","treffen":"retrouvent","dort":"y","Freunde":"amis","Familie":"famille","Viele":"de nombreux"}$t$::jsonb
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wann stehen die Weihnachtsmärkte?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Im Sommer$t$, false, 1),
    (v_q, $t$Im November$t$, true, 2),
    (v_q, $t$Im Frühling$t$, false, 3),
    (v_q, $t$Im Mai$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wann gehen die Menschen auf den Markt?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Am Morgen$t$, false, 1),
    (v_q, $t$Abends$t$, true, 2),
    (v_q, $t$Mittags$t$, false, 3),
    (v_q, $t$Nachts um drei$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum sind die Lichter auf dem Weihnachtsmarkt wichtig?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Weil es dort keinen Strom gibt$t$, false, 1),
    (v_q, $t$Weil die Menschen abends kommen und es dunkel ist$t$, true, 2),
    (v_q, $t$Weil die Stände sonst kalt sind$t$, false, 3),
    (v_q, $t$Weil Kinder die Lichter kaufen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was trinken die Menschen auf dem Markt?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Kaffee$t$, false, 1),
    (v_q, $t$Glühwein$t$, true, 2),
    (v_q, $t$Wasser$t$, false, 3),
    (v_q, $t$Limonade$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was essen Kinder gern auf dem Weihnachtsmarkt?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Pizza$t$, false, 1),
    (v_q, $t$Gebrannte Mandeln$t$, true, 2),
    (v_q, $t$Suppe$t$, false, 3),
    (v_q, $t$Fisch$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was zeigt, dass der Weihnachtsmarkt für alle Altersgruppen etwas hat?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Es gibt nur Glühwein$t$, false, 1),
    (v_q, $t$Es gibt Glühwein für Erwachsene und Mandeln für Kinder$t$, true, 2),
    (v_q, $t$Es gibt nur Spielzeug$t$, false, 3),
    (v_q, $t$Es gibt nur kalte Getränke$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Stadt hat einen berühmten Weihnachtsmarkt?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Rom$t$, false, 1),
    (v_q, $t$Nürnberg$t$, true, 2),
    (v_q, $t$Paris$t$, false, 3),
    (v_q, $t$Madrid$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was steht oft in der Mitte vom Weihnachtsmarkt?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Ein Brunnen$t$, false, 1),
    (v_q, $t$Ein Auto$t$, false, 2),
    (v_q, $t$Ein großer Weihnachtsbaum$t$, true, 3),
    (v_q, $t$Eine Kirche$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum ist der Weihnachtsmarkt in Nürnberg besonders bekannt?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Weil er der einzige Markt in Deutschland ist$t$, false, 1),
    (v_q, $t$Weil er seit langer Zeit sehr beliebt ist$t$, true, 2),
    (v_q, $t$Weil er im Sommer stattfindet$t$, false, 3),
    (v_q, $t$Weil dort kein Glühwein verkauft wird$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'der Glühwein' im Text?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$le vin chaud$t$, true, 1),
    (v_q, $t$le café$t$, false, 2),
    (v_q, $t$le jus de pomme$t$, false, 3),
    (v_q, $t$la bière$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$'An den Ständen gibt es warmen Glühwein.' Was ist 'der Glühwein'?$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$une boisson chaude et sucrée sans alcool$t$, false, 1),
    (v_q, $t$du vin chaud épicé$t$, true, 2),
    (v_q, $t$du thé noir$t$, false, 3),
    (v_q, $t$du chocolat chaud$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Im Kontext des Weihnachtsmarktes bezeichnet 'der Glühwein' ein Getränk, das:$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$warm serviert wird und typisch für den Winter/Weihnachtsmarkt ist$t$, true, 1),
    (v_q, $t$kalt serviert wird$t$, false, 2),
    (v_q, $t$nur für Kinder ist$t$, false, 3),
    (v_q, $t$süß und ohne Alkohol ist$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie heißt 'gehen' in der Form für 'die Menschen' (Mehrzahl)?$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$gehen$t$, true, 1),
    (v_q, $t$geht$t$, false, 2),
    (v_q, $t$gehe$t$, false, 3),
    (v_q, $t$gehst$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Die Menschen ___ abends auf den Markt. Ergänzen Sie 'gehen' richtig.$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$geht$t$, false, 1),
    (v_q, $t$gehe$t$, false, 2),
    (v_q, $t$gehen$t$, true, 3),
    (v_q, $t$gehst$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Kinder ___ gern gebrannte Mandeln. Welche Form von 'essen' passt (3. Person Plural)?$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$isst$t$, false, 1),
    (v_q, $t$esse$t$, false, 2),
    (v_q, $t$essen$t$, true, 3),
    (v_q, $t$esst$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$Waren Sie schon einmal auf einem Weihnachtsmarkt? Schreiben Sie 2-3 einfache Sätze.$t$, 1, 'normal', 'production', $t$Ich gehe im Winter auf den Weihnachtsmarkt. Ich trinke Glühwein. Ich esse auch Lebkuchen.$t$);

END $block$;

-- 9. Der kleine Johann Sebastian
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary) VALUES (
    'A1',
    $t$Der kleine Johann Sebastian$t$,
    $t$Johann Sebastian Bach ist ein berühmter deutscher Komponist. Als kleiner Junge lebt er in Eisenach. Seine Familie liebt Musik. Fast alle Menschen in seiner Familie spielen ein Instrument. Der kleine Johann lernt schon früh Geige und Klavier. Sein Vater bringt ihm die Musik bei. Als Johann noch klein ist, sterben seine Eltern. Danach lebt er bei seinem großen Bruder. Der Bruder ist auch Musiker. Er zeigt Johann viele Noten. Johann übt jeden Tag. Später wird er einer der größten Komponisten der Welt.$t$,
    $t$Johann Sebastian Bach est un célèbre compositeur allemand. Petit garçon, il vit à Eisenach. Sa famille aime la musique. Presque tous les gens de sa famille jouent d'un instrument. Le petit Johann apprend très tôt le violon et le piano. Son père lui enseigne la musique. Alors que Johann est encore petit, ses parents meurent. Ensuite, il vit chez son grand frère. Le frère est aussi musicien. Il montre à Johann de nombreuses partitions. Johann s'exerce chaque jour. Plus tard, il devient l'un des plus grands compositeurs du monde.$t$,
    $t${"Johann":"Johann","Sebastian":"Sebastian","Bach":"Bach","ist":"est","ein":"un","berühmter":"célèbre","deutscher":"allemand","Komponist":"compositeur","Als":"comme/alors que","kleiner":"petit","Junge":"garçon","lebt":"vit","er":"il","in":"à","Eisenach":"Eisenach","Seine":"Sa","Familie":"famille","liebt":"aime","Musik":"musique","Fast":"presque","alle":"tous","Menschen":"gens","seiner":"sa","spielen":"jouent","Instrument":"instrument","Der":"Le","kleine":"petit","lernt":"apprend","schon":"déjà","früh":"tôt","Geige":"violon","und":"et","Klavier":"piano","Sein":"Son","Vater":"père","bringt":"enseigne","ihm":"lui","die":"la","bei":"chez","noch":"encore","klein":"petit","sterben":"meurent","seine":"ses","Eltern":"parents","Danach":"ensuite","seinem":"son","großen":"grand","Bruder":"frère","auch":"aussi","Musiker":"musicien","Er":"Il","zeigt":"montre","viele":"de nombreuses","Noten":"partitions","übt":"s'exerce","jeden":"chaque","Tag":"jour","Später":"plus tard","wird":"devient","einer":"l'un","der":"des","größten":"plus grands","Komponisten":"compositeurs","Welt":"monde"}$t$::jsonb
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wo lebt der kleine Johann?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$In Berlin$t$, false, 1),
    (v_q, $t$In Eisenach$t$, true, 2),
    (v_q, $t$In Wien$t$, false, 3),
    (v_q, $t$In Hamburg$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie ist die Familie von Johann?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Niemand mag Musik$t$, false, 1),
    (v_q, $t$Fast alle spielen ein Instrument$t$, true, 2),
    (v_q, $t$Sie sind alle Ärzte$t$, false, 3),
    (v_q, $t$Sie leben auf einem Schiff$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum lernt Johann schon als kleines Kind Musik?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Weil er in einer Musikschule wohnt$t$, false, 1),
    (v_q, $t$Weil seine ganze Familie musikalisch ist$t$, true, 2),
    (v_q, $t$Weil er keine anderen Spiele kennt$t$, false, 3),
    (v_q, $t$Weil sein Lehrer ihn zwingt$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Bei wem lebt Johann, nachdem seine Eltern sterben?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Bei seiner Tante$t$, false, 1),
    (v_q, $t$Bei seinem Bruder$t$, true, 2),
    (v_q, $t$Bei seinem Lehrer$t$, false, 3),
    (v_q, $t$Bei einem Freund$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was macht der Bruder von Johann?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er ist Bäcker$t$, false, 1),
    (v_q, $t$Er ist auch Musiker$t$, true, 2),
    (v_q, $t$Er ist Bauer$t$, false, 3),
    (v_q, $t$Er ist Arzt$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum kann Johann bei seinem Bruder weiter Musik lernen?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Weil der Bruder ein großes Haus hat$t$, false, 1),
    (v_q, $t$Weil der Bruder auch Musiker ist$t$, true, 2),
    (v_q, $t$Weil der Bruder viel Geld hat$t$, false, 3),
    (v_q, $t$Weil der Bruder Lehrer in der Schule ist$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie oft übt Johann?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Einmal im Monat$t$, false, 1),
    (v_q, $t$Jeden Tag$t$, true, 2),
    (v_q, $t$Nur sonntags$t$, false, 3),
    (v_q, $t$Nie$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was wird Johann später?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Ein berühmter Maler$t$, false, 1),
    (v_q, $t$Ein bekannter Koch$t$, false, 2),
    (v_q, $t$Einer der größten Komponisten der Welt$t$, true, 3),
    (v_q, $t$Ein wichtiger Politiker$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was zeigt, dass Übung für Johanns Erfolg wichtig ist?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er übt nie und wird trotzdem berühmt$t$, false, 1),
    (v_q, $t$Er übt jeden Tag und wird ein großer Komponist$t$, true, 2),
    (v_q, $t$Er lernt Musik nur in der Schule$t$, false, 3),
    (v_q, $t$Er hört nur anderen Musikern zu$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'die Geige' im Text?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$le violon$t$, true, 1),
    (v_q, $t$le piano$t$, false, 2),
    (v_q, $t$la flûte$t$, false, 3),
    (v_q, $t$la guitare$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$'Johann lernt schon früh Geige und Klavier.' Was ist 'die Geige'?$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$un instrument à cordes qu'on joue avec un archet$t$, true, 1),
    (v_q, $t$un instrument à vent$t$, false, 2),
    (v_q, $t$un instrument à clavier$t$, false, 3),
    (v_q, $t$un tambour$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Im Kontext 'Geige und Klavier' bezeichnet 'die Geige' ein Instrument, das man:$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$mit einem Bogen streicht$t$, true, 1),
    (v_q, $t$mit den Lippen bläst$t$, false, 2),
    (v_q, $t$mit Tasten spielt$t$, false, 3),
    (v_q, $t$schlägt$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie heißt 'üben' in der Form für 'er' (Johann)?$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$übt$t$, true, 1),
    (v_q, $t$üben$t$, false, 2),
    (v_q, $t$übe$t$, false, 3),
    (v_q, $t$übst$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Johann ___ jeden Tag. Ergänzen Sie 'üben' richtig.$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$übe$t$, false, 1),
    (v_q, $t$übst$t$, false, 2),
    (v_q, $t$übt$t$, true, 3),
    (v_q, $t$üben$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Der Bruder ___ Johann viele Noten. Welche Form von 'zeigen' passt?$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$zeige$t$, false, 1),
    (v_q, $t$zeigst$t$, false, 2),
    (v_q, $t$zeigt$t$, true, 3),
    (v_q, $t$zeigen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$Spielen Sie ein Instrument oder möchten Sie eines lernen? Schreiben Sie 2-3 einfache Sätze.$t$, 1, 'normal', 'production', $t$Ich spiele Klavier. Ich übe jeden Tag ein bisschen. Musik macht mir Spaß.$t$);

END $block$;

-- 10. Marie im Wald
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary) VALUES (
    'A1',
    $t$Marie im Wald$t$,
    $t$Marie trägt einen roten Umhang mit einer Kapuze. Die Leute im Dorf nennen sie Rotkäppchen. Eines Tages geht Marie durch den Wald zu ihrer Großmutter. Sie hat einen Korb mit Brot und Kuchen dabei. Im Wald ist es ruhig und grün. Plötzlich sieht Marie einen Wolf zwischen den Bäumen. Der Wolf schaut sie an, aber er sagt nichts. Marie hat ein bisschen Angst. Sie geht schnell weiter auf dem Weg. Am Ende kommt Marie sicher bei ihrer Großmutter an. Die Großmutter freut sich sehr über den Besuch.$t$,
    $t$Marie porte une cape rouge avec une capuche. Les gens du village l'appellent Petit Chaperon rouge. Un jour, Marie traverse la forêt pour aller chez sa grand-mère. Elle a avec elle un panier avec du pain et du gâteau. Dans la forêt, c'est calme et vert. Soudain, Marie voit un loup entre les arbres. Le loup la regarde, mais il ne dit rien. Marie a un peu peur. Elle continue vite sur le chemin. Finalement, Marie arrive saine et sauve chez sa grand-mère. La grand-mère est très heureuse de cette visite.$t$,
    $t${"Marie":"Marie","trägt":"porte","einen":"une","roten":"rouge","Umhang":"cape","mit":"avec","einer":"une","Kapuze":"capuche","Die":"Les","Leute":"gens","im":"du","Dorf":"village","nennen":"appellent","sie":"la","Rotkäppchen":"Petit Chaperon rouge","Eines":"un","Tages":"jour","geht":"va","durch":"à travers","den":"la","Wald":"forêt","zu":"chez","ihrer":"sa","Großmutter":"grand-mère","Sie":"Elle","hat":"a","Korb":"panier","Brot":"pain","und":"et","Kuchen":"gâteau","dabei":"avec elle","Im":"dans la","ist":"est","es":"c'","ruhig":"calme","grün":"vert","Plötzlich":"soudain","sieht":"voit","Wolf":"loup","zwischen":"entre","Bäumen":"arbres","Der":"Le","schaut":"regarde","an":"(particule de regarder)","aber":"mais","er":"il","sagt":"dit","nichts":"rien","ein":"un","bisschen":"peu","Angst":"peur","schnell":"vite","weiter":"continue","auf":"sur","dem":"le","Weg":"chemin","Am":"à la","Ende":"fin","kommt":"arrive","sicher":"saine et sauve","bei":"chez","freut":"se réjouit","sich":"se","sehr":"très","über":"de","Besuch":"visite"}$t$::jsonb
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was trägt Marie?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Ein blaues Kleid$t$, false, 1),
    (v_q, $t$Einen roten Umhang$t$, true, 2),
    (v_q, $t$Eine gelbe Jacke$t$, false, 3),
    (v_q, $t$Einen grünen Hut$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wohin geht Marie durch den Wald?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Zur Schule$t$, false, 1),
    (v_q, $t$Zu ihrer Großmutter$t$, true, 2),
    (v_q, $t$Zum Markt$t$, false, 3),
    (v_q, $t$Zum See$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum nennen die Leute Marie Rotkäppchen?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Weil sie rote Haare hat$t$, false, 1),
    (v_q, $t$Weil sie einen roten Umhang mit Kapuze trägt$t$, true, 2),
    (v_q, $t$Weil sie in einem roten Haus wohnt$t$, false, 3),
    (v_q, $t$Weil sie einen roten Korb hat$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wen sieht Marie im Wald?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Einen Bären$t$, false, 1),
    (v_q, $t$Einen Wolf$t$, true, 2),
    (v_q, $t$Einen Fuchs$t$, false, 3),
    (v_q, $t$Einen Hund$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie fühlt sich Marie, als sie den Wolf sieht?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie ist sehr glücklich$t$, false, 1),
    (v_q, $t$Sie hat ein bisschen Angst$t$, true, 2),
    (v_q, $t$Sie ist müde$t$, false, 3),
    (v_q, $t$Sie lacht laut$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was macht Marie, weil sie ein bisschen Angst hat?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie bleibt stehen und weint$t$, false, 1),
    (v_q, $t$Sie geht schnell weiter$t$, true, 2),
    (v_q, $t$Sie spricht lange mit dem Wolf$t$, false, 3),
    (v_q, $t$Sie geht zurück nach Hause$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wo kommt Marie am Ende an?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Bei ihrer Lehrerin$t$, false, 1),
    (v_q, $t$Bei ihrer Großmutter$t$, true, 2),
    (v_q, $t$Bei ihrem Onkel$t$, false, 3),
    (v_q, $t$Bei ihrer Freundin$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie reagiert die Großmutter?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie ist böse$t$, false, 1),
    (v_q, $t$Sie schläft$t$, false, 2),
    (v_q, $t$Sie freut sich sehr$t$, true, 3),
    (v_q, $t$Sie ist nicht zu Hause$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was zeigt, dass die Reise am Ende gut ausgeht?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Marie verliert den Korb im Wald$t$, false, 1),
    (v_q, $t$Marie kommt sicher an und die Großmutter freut sich$t$, true, 2),
    (v_q, $t$Der Wolf folgt Marie nach Hause$t$, false, 3),
    (v_q, $t$Marie kommt nie bei der Großmutter an$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'der Korb' im Text?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$le panier$t$, true, 1),
    (v_q, $t$le sac à dos$t$, false, 2),
    (v_q, $t$la boîte$t$, false, 3),
    (v_q, $t$le chapeau$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$'Sie hat einen Korb mit Brot und Kuchen dabei.' Was ist 'der Korb'?$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$un contenant tressé pour transporter des aliments$t$, true, 1),
    (v_q, $t$une valise$t$, false, 2),
    (v_q, $t$un vêtement$t$, false, 3),
    (v_q, $t$un livre$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Im Kontext 'Ein Korb mit Brot und Kuchen' bezeichnet 'der Korb' am ehesten:$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$ein geflochtener Behälter zum Tragen von Essen$t$, true, 1),
    (v_q, $t$eine Küchenschublade$t$, false, 2),
    (v_q, $t$einen kleinen Tisch$t$, false, 3),
    (v_q, $t$eine Tragetasche aus Plastik$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie heißt 'sehen' in der Form für 'sie' (Marie)?$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$sieht$t$, true, 1),
    (v_q, $t$sehen$t$, false, 2),
    (v_q, $t$sehe$t$, false, 3),
    (v_q, $t$siehst$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Marie ___ einen Wolf zwischen den Bäumen. Ergänzen Sie 'sehen' richtig.$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$sehe$t$, false, 1),
    (v_q, $t$siehst$t$, false, 2),
    (v_q, $t$sieht$t$, true, 3),
    (v_q, $t$sehen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Marie ___ schnell weiter auf dem Weg. Welche Form von 'gehen' passt?$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$gehe$t$, false, 1),
    (v_q, $t$gehst$t$, false, 2),
    (v_q, $t$geht$t$, true, 3),
    (v_q, $t$gehen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$Waren Sie schon einmal im Wald spazieren? Schreiben Sie 2-3 einfache Sätze.$t$, 1, 'normal', 'production', $t$Ich gehe gern im Wald spazieren. Es ist dort ruhig und grün. Manchmal sehe ich Tiere.$t$);

END $block$;

-- 11. Der kleine Ludwig hört Musik
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary) VALUES (
    'A1',
    $t$Der kleine Ludwig hört Musik$t$,
    $t$Ludwig lebt in Bonn. Er ist noch klein. Sein Vater ist Musiker. Der Vater zeigt Ludwig das Klavier. Ludwig hört gern Musik. Er spielt jeden Tag Klavier. Er übt viele Stunden. Manchmal ist er müde, aber er spielt weiter. Die Nachbarn hören die Musik durch das Fenster. Ludwig lernt schnell. Seine Finger sind schnell und stark. Der Vater ist stolz auf ihn. Ludwig träumt von großer Musik. Später wird er ein berühmter Komponist. Sein Name ist Ludwig van Beethoven.$t$,
    $t$Ludwig vit à Bonn. Il est encore petit. Son père est musicien. Le père montre à Ludwig le piano. Ludwig aime écouter de la musique. Il joue du piano chaque jour. Il s'exerce pendant de nombreuses heures. Parfois il est fatigué, mais il continue à jouer. Les voisins entendent la musique à travers la fenêtre. Ludwig apprend vite. Ses doigts sont rapides et forts. Le père est fier de lui. Ludwig rêve d'une grande musique. Plus tard, il devient un célèbre compositeur. Il s'appelle Ludwig van Beethoven.$t$,
    $t${"Ludwig":"Ludwig","lebt":"vit","in":"à","Bonn":"Bonn","Er":"Il","ist":"est","noch":"encore","klein":"petit","Sein":"Son","Vater":"père","Musiker":"musicien","Der":"Le","zeigt":"montre","das":"le","Klavier":"piano","hört":"aime écouter","gern":"volontiers","Musik":"musique","spielt":"joue","jeden":"chaque","Tag":"jour","übt":"s'exerce","viele":"de nombreuses","Stunden":"heures","Manchmal":"parfois","er":"il","müde":"fatigué","aber":"mais","weiter":"continue","Die":"Les","Nachbarn":"voisins","hören":"entendent","die":"la","durch":"à travers","Fenster":"fenêtre","lernt":"apprend","schnell":"vite","Seine":"Ses","Finger":"doigts","sind":"sont","und":"et","stark":"forts","stolz":"fier","auf":"de","ihn":"lui","träumt":"rêve","von":"de","großer":"grande","Später":"plus tard","wird":"devient","ein":"un","berühmter":"célèbre","Komponist":"compositeur","Name":"nom","van":"van","Beethoven":"Beethoven"}$t$::jsonb
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wo lebt Ludwig?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$In Bonn$t$, true, 1),
    (v_q, $t$In Berlin$t$, false, 2),
    (v_q, $t$In Wien$t$, false, 3),
    (v_q, $t$In Hamburg$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$In welcher Stadt wohnt der kleine Ludwig?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$München$t$, false, 1),
    (v_q, $t$Bonn$t$, true, 2),
    (v_q, $t$Köln$t$, false, 3),
    (v_q, $t$Ulm$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Der Text nennt eine deutsche Stadt als Wohnort von Ludwig. Welche?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Dresden$t$, false, 1),
    (v_q, $t$Leipzig$t$, false, 2),
    (v_q, $t$Bonn$t$, true, 3),
    (v_q, $t$Frankfurt$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was zeigt der Vater Ludwig?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Das Klavier$t$, true, 1),
    (v_q, $t$Das Auto$t$, false, 2),
    (v_q, $t$Den Garten$t$, false, 3),
    (v_q, $t$Das Buch$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wer bringt Ludwig das Klavierspielen bei?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Der Lehrer$t$, false, 1),
    (v_q, $t$Der Vater$t$, true, 2),
    (v_q, $t$Die Mutter$t$, false, 3),
    (v_q, $t$Der Nachbar$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wer zeigt Ludwig zuerst das Instrument, das er später berühmt spielt?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Ein Freund$t$, false, 1),
    (v_q, $t$Die Mutter$t$, false, 2),
    (v_q, $t$Der Vater$t$, true, 3),
    (v_q, $t$Ein Musiklehrer aus der Schule$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie oft übt Ludwig Klavier?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Jeden Tag$t$, true, 1),
    (v_q, $t$Einmal im Monat$t$, false, 2),
    (v_q, $t$Nie$t$, false, 3),
    (v_q, $t$Nur sonntags$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie viel übt Ludwig laut dem Text?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Wenig$t$, false, 1),
    (v_q, $t$Viele Stunden$t$, true, 2),
    (v_q, $t$Nur fünf Minuten$t$, false, 3),
    (v_q, $t$Gar nicht$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was zeigt, dass Ludwig sehr fleißig übt?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er spielt selten$t$, false, 1),
    (v_q, $t$Er übt trotz Müdigkeit weiter$t$, true, 2),
    (v_q, $t$Er hört mit der Musik auf$t$, false, 3),
    (v_q, $t$Er spielt nur am Wochenende$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'das Klavier' im Text?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$le piano$t$, true, 1),
    (v_q, $t$le violon$t$, false, 2),
    (v_q, $t$la flûte$t$, false, 3),
    (v_q, $t$la trompette$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$'Der Vater zeigt Ludwig das Klavier.' Was ist 'das Klavier'?$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$un instrument à cordes frottées$t$, false, 1),
    (v_q, $t$un grand instrument à touches$t$, true, 2),
    (v_q, $t$un instrument à vent$t$, false, 3),
    (v_q, $t$un tambour$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Im Kontext 'Er spielt jeden Tag Klavier' bezeichnet 'das Klavier' ein Instrument, das man:$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$mit den Fingern auf Tasten spielt$t$, true, 1),
    (v_q, $t$mit einem Bogen streicht$t$, false, 2),
    (v_q, $t$mit dem Mund bläst$t$, false, 3),
    (v_q, $t$schüttelt$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie heißt 'hören' in der Form für 'er' (Ludwig)?$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$hört$t$, true, 1),
    (v_q, $t$hören$t$, false, 2),
    (v_q, $t$höre$t$, false, 3),
    (v_q, $t$hörst$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Ludwig ___ gern Musik. Ergänzen Sie 'hören' richtig.$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$höre$t$, false, 1),
    (v_q, $t$hörst$t$, false, 2),
    (v_q, $t$hört$t$, true, 3),
    (v_q, $t$hören$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Die Nachbarn ___ die Musik durch das Fenster. Welche Form von 'hören' passt (3. Person Plural)?$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$hört$t$, false, 1),
    (v_q, $t$höre$t$, false, 2),
    (v_q, $t$hören$t$, true, 3),
    (v_q, $t$hörst$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$Hören Sie gern Musik? Schreiben Sie 2-3 einfache Sätze darüber.$t$, 1, 'normal', 'production', $t$Ich höre gern Musik. Ich spiele auch ein bisschen Klavier. Musik macht mich glücklich.$t$);

END $block$;

-- 12. Albert fragt immer warum
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary) VALUES (
    'A1',
    $t$Albert fragt immer warum$t$,
    $t$Albert wohnt in Ulm. Er ist ein neugieriges Kind. Albert stellt viele Fragen. Er fragt: Warum ist der Himmel blau? Wie funktioniert ein Kompass? Seine Eltern lächeln über die vielen Fragen. Albert denkt gern nach. Er sitzt oft still und denkt. Er mag Mathematik sehr. Zahlen und Rätsel machen ihm Spaß. In der Schule ist er manchmal ruhig, aber zu Hause rechnet er gerne. Er liest viele Bücher über Zahlen. Albert träumt von großen Antworten. Später wird er ein berühmter Wissenschaftler. Sein Name ist Albert Einstein.$t$,
    $t$Albert habite à Ulm. C'est un enfant curieux. Albert pose beaucoup de questions. Il demande : pourquoi le ciel est-il bleu ? Comment fonctionne une boussole ? Ses parents sourient devant ces nombreuses questions. Albert aime réfléchir. Il reste souvent assis en silence et réfléchit. Il aime beaucoup les mathématiques. Les chiffres et les énigmes lui plaisent. À l'école, il est parfois calme, mais à la maison, il aime calculer. Il lit beaucoup de livres sur les nombres. Albert rêve de grandes réponses. Plus tard, il devient un savant célèbre. Il s'appelle Albert Einstein.$t$,
    $t${"Albert":"Albert","wohnt":"habite","in":"à","Ulm":"Ulm","Er":"Il","ist":"est","ein":"un","neugieriges":"curieux","Kind":"enfant","stellt":"pose","viele":"beaucoup de","Fragen":"questions","fragt":"demande","Warum":"pourquoi","der":"le","Himmel":"ciel","blau":"bleu","Wie":"comment","funktioniert":"fonctionne","Kompass":"boussole","Seine":"ses","Eltern":"parents","lächeln":"sourient","über":"devant","die":"ces","vielen":"nombreuses","denkt":"réfléchit","gern":"volontiers","nach":"(particule de réfléchir)","sitzt":"reste assis","oft":"souvent","still":"en silence","und":"et","mag":"aime","Mathematik":"mathématiques","sehr":"beaucoup","Zahlen":"chiffres","Rätsel":"énigmes","machen":"font","ihm":"lui","Spaß":"plaisir","In":"à","Schule":"école","manchmal":"parfois","ruhig":"calme","aber":"mais","zu":"à","Hause":"la maison","rechnet":"calcule","gerne":"volontiers","liest":"lit","Bücher":"livres","träumt":"rêve","von":"de","großen":"grandes","Antworten":"réponses","Später":"plus tard","wird":"devient","berühmter":"célèbre","Wissenschaftler":"savant","Name":"nom","Einstein":"Einstein","er":"il","Sein":"son"}$t$::jsonb
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wo wohnt Albert?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$In Ulm$t$, true, 1),
    (v_q, $t$In Berlin$t$, false, 2),
    (v_q, $t$In Bonn$t$, false, 3),
    (v_q, $t$In München$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$In welcher Stadt lebt der kleine Albert?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Ulm$t$, true, 1),
    (v_q, $t$Köln$t$, false, 2),
    (v_q, $t$Hamburg$t$, false, 3),
    (v_q, $t$Leipzig$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Stadt wird im Text als Alberts Heimatstadt genannt?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Stuttgart$t$, false, 1),
    (v_q, $t$Ulm$t$, true, 2),
    (v_q, $t$Nürnberg$t$, false, 3),
    (v_q, $t$Mainz$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was macht Albert oft?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er stellt viele Fragen$t$, true, 1),
    (v_q, $t$Er schläft viel$t$, false, 2),
    (v_q, $t$Er kocht gern$t$, false, 3),
    (v_q, $t$Er singt laut$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie beschreibt der Text Albert?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Faul$t$, false, 1),
    (v_q, $t$Neugierig$t$, true, 2),
    (v_q, $t$Ängstlich$t$, false, 3),
    (v_q, $t$Laut$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Woran erkennt man im Text, dass Albert neugierig ist?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er isst viel$t$, false, 1),
    (v_q, $t$Er stellt viele Fragen$t$, true, 2),
    (v_q, $t$Er spielt Fußball$t$, false, 3),
    (v_q, $t$Er schläft lange$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was mag Albert sehr?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Mathematik$t$, true, 1),
    (v_q, $t$Fußball$t$, false, 2),
    (v_q, $t$Kochen$t$, false, 3),
    (v_q, $t$Tanzen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Womit beschäftigt sich Albert gerne zu Hause?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Mit Zahlen und Rätseln$t$, true, 1),
    (v_q, $t$Mit Tieren$t$, false, 2),
    (v_q, $t$Mit Musik$t$, false, 3),
    (v_q, $t$Mit Malen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was zeigt Alberts besonderes Interesse an Mathematik?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er rechnet gerne zu Hause und liest Bücher über Zahlen$t$, true, 1),
    (v_q, $t$Er hasst die Schule$t$, false, 2),
    (v_q, $t$Er spielt lieber draußen$t$, false, 3),
    (v_q, $t$Er mag keine Bücher$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'neugierig' im Text?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$curieux$t$, true, 1),
    (v_q, $t$fatigué$t$, false, 2),
    (v_q, $t$timide$t$, false, 3),
    (v_q, $t$triste$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$'Albert ist ein neugieriges Kind.' Was bedeutet 'neugierig'?$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$calme$t$, false, 1),
    (v_q, $t$curieux, qui veut tout savoir$t$, true, 2),
    (v_q, $t$paresseux$t$, false, 3),
    (v_q, $t$peureux$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Im Kontext 'Albert stellt viele Fragen' beschreibt 'neugierig' eine Person, die:$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$gerne viel wissen und verstehen möchte$t$, true, 1),
    (v_q, $t$gerne allein ist$t$, false, 2),
    (v_q, $t$schnell müde wird$t$, false, 3),
    (v_q, $t$nicht gern spricht$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie heißt 'fragen' in der Form für 'er' (Albert)?$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$fragt$t$, true, 1),
    (v_q, $t$fragen$t$, false, 2),
    (v_q, $t$frage$t$, false, 3),
    (v_q, $t$fragst$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Albert ___ viele Fragen. Ergänzen Sie 'stellen' richtig.$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$stelle$t$, false, 1),
    (v_q, $t$stellst$t$, false, 2),
    (v_q, $t$stellt$t$, true, 3),
    (v_q, $t$stellen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Albert ___ viele Bücher über Zahlen. Welche Form von 'lesen' passt?$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$lese$t$, false, 1),
    (v_q, $t$liest$t$, true, 2),
    (v_q, $t$lest$t$, false, 3),
    (v_q, $t$lesen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$Welche Fragen stellen Sie oft? Schreiben Sie 2-3 einfache Sätze.$t$, 1, 'normal', 'production', $t$Ich bin neugierig. Ich frage oft: Warum? Ich lese gern Bücher über Wissenschaft.$t$);

END $block$;

-- 13. Johannes baut eine besondere Maschine
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary) VALUES (
    'A1',
    $t$Johannes baut eine besondere Maschine$t$,
    $t$Johannes lebt in Mainz. Er ist Handwerker. Bücher schreibt man damals mit der Hand. Das dauert sehr lange. Johannes hat eine Idee. Er baut eine Maschine. Die Maschine druckt Buchstaben auf Papier. Mit der Maschine geht das Schreiben viel schneller. Johannes druckt viele Bücher. Die Menschen sind erstaunt. Jetzt können mehr Menschen Bücher lesen. Die Erfindung ist sehr wichtig für Deutschland und die Welt. Johannes heißt Johannes Gutenberg. Seine Maschine heißt Druckerpresse.$t$,
    $t$Johannes vit à Mayence. Il est artisan. À l'époque, on écrit les livres à la main. Cela prend très longtemps. Johannes a une idée. Il construit une machine. La machine imprime des lettres sur du papier. Avec la machine, l'écriture va beaucoup plus vite. Johannes imprime de nombreux livres. Les gens sont stupéfaits. Maintenant, plus de gens peuvent lire des livres. L'invention est très importante pour l'Allemagne et le monde. Johannes s'appelle Johannes Gutenberg. Sa machine s'appelle la presse d'imprimerie.$t$,
    $t${"Johannes":"Johannes","lebt":"vit","in":"à","Mainz":"Mayence","Er":"Il","ist":"est","Handwerker":"artisan","Bücher":"livres","schreibt":"écrit","man":"on","damals":"à l'époque","mit":"avec","der":"la","Hand":"main","Das":"cela","dauert":"prend (du temps)","sehr":"très","lange":"longtemps","hat":"a","eine":"une","Idee":"idée","baut":"construit","Maschine":"machine","Die":"la","druckt":"imprime","Buchstaben":"lettres","auf":"sur","Papier":"papier","Mit":"avec","geht":"va","das":"l'","Schreiben":"écriture","viel":"beaucoup","schneller":"plus vite","viele":"de nombreux","Menschen":"gens","sind":"sont","erstaunt":"stupéfaits","Jetzt":"maintenant","können":"peuvent","mehr":"plus de","lesen":"lire","Erfindung":"invention","wichtig":"importante","für":"pour","Deutschland":"l'Allemagne","und":"et","die":"le","Welt":"monde","heißt":"s'appelle","Gutenberg":"Gutenberg","Seine":"sa","Druckerpresse":"presse d'imprimerie"}$t$::jsonb
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was baut Johannes?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Eine Maschine$t$, true, 1),
    (v_q, $t$Ein Haus$t$, false, 2),
    (v_q, $t$Ein Auto$t$, false, 3),
    (v_q, $t$Ein Boot$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was erfindet Johannes Gutenberg?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Eine Druckmaschine$t$, true, 1),
    (v_q, $t$Ein Fahrrad$t$, false, 2),
    (v_q, $t$Eine Uhr$t$, false, 3),
    (v_q, $t$Ein Klavier$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Erfindung wird Johannes im Text zugeschrieben?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Die Druckerpresse$t$, true, 1),
    (v_q, $t$Der Kompass$t$, false, 2),
    (v_q, $t$Das Telefon$t$, false, 3),
    (v_q, $t$Das Papier$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was macht die Maschine?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie druckt Bücher$t$, true, 1),
    (v_q, $t$Sie kocht Essen$t$, false, 2),
    (v_q, $t$Sie fährt schnell$t$, false, 3),
    (v_q, $t$Sie spielt Musik$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wozu benutzt man Johannes' Maschine?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Zum Drucken von Buchstaben$t$, true, 1),
    (v_q, $t$Zum Nähen von Kleidung$t$, false, 2),
    (v_q, $t$Zum Backen von Brot$t$, false, 3),
    (v_q, $t$Zum Bauen von Häusern$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum ist die Maschine im Text so wichtig?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie macht das Schreiben von Büchern viel schneller$t$, true, 1),
    (v_q, $t$Sie ist sehr leise$t$, false, 2),
    (v_q, $t$Sie kostet wenig Geld$t$, false, 3),
    (v_q, $t$Sie ist sehr klein$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie schrieb man Bücher vorher?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Mit der Hand$t$, true, 1),
    (v_q, $t$Mit dem Computer$t$, false, 2),
    (v_q, $t$Gar nicht$t$, false, 3),
    (v_q, $t$Mit Farbe$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was war vor der Erfindung anders?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Bücher schreiben dauerte sehr lange$t$, true, 1),
    (v_q, $t$Es gab keine Bücher$t$, false, 2),
    (v_q, $t$Alle konnten schon lesen$t$, false, 3),
    (v_q, $t$Bücher waren sehr billig$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Folge hat die Erfindung laut Text für die Menschen?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Mehr Menschen können Bücher lesen$t$, true, 1),
    (v_q, $t$Weniger Menschen lernen lesen$t$, false, 2),
    (v_q, $t$Bücher werden verboten$t$, false, 3),
    (v_q, $t$Niemand interessiert sich für Bücher$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'der Handwerker' im Text?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$l'artisan$t$, true, 1),
    (v_q, $t$le professeur$t$, false, 2),
    (v_q, $t$le musicien$t$, false, 3),
    (v_q, $t$le roi$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$'Johannes ist Handwerker.' Was ist 'der Handwerker'?$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$une personne qui travaille de ses mains, un artisan$t$, true, 1),
    (v_q, $t$un écrivain$t$, false, 2),
    (v_q, $t$un roi$t$, false, 3),
    (v_q, $t$un musicien$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Im Kontext 'Er ist Handwerker' und 'baut eine Maschine' bezeichnet 'der Handwerker' eine Person, die:$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$mit den Händen und mit Werkzeugen Dinge herstellt$t$, true, 1),
    (v_q, $t$nur Bücher schreibt$t$, false, 2),
    (v_q, $t$in einem Büro arbeitet$t$, false, 3),
    (v_q, $t$Musik komponiert$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie heißt 'bauen' in der Form für 'er' (Johannes)?$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$baut$t$, true, 1),
    (v_q, $t$bauen$t$, false, 2),
    (v_q, $t$baue$t$, false, 3),
    (v_q, $t$baust$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Johannes ___ eine Maschine. Ergänzen Sie 'bauen' richtig.$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$baue$t$, false, 1),
    (v_q, $t$baust$t$, false, 2),
    (v_q, $t$baut$t$, true, 3),
    (v_q, $t$bauen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Die Maschine ___ Buchstaben auf Papier. Welche Form von 'drucken' passt?$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$drucke$t$, false, 1),
    (v_q, $t$druckst$t$, false, 2),
    (v_q, $t$druckt$t$, true, 3),
    (v_q, $t$drucken$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$Stellen Sie sich vor, Sie erfinden eine Maschine. Schreiben Sie 2-3 einfache Sätze darüber.$t$, 1, 'normal', 'production', $t$Ich baue eine Maschine. Die Maschine hilft den Menschen. Sie macht die Arbeit schneller.$t$);

END $block$;

-- 14. Der Mann mit der Flöte in Hameln
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary) VALUES (
    'A1',
    $t$Der Mann mit der Flöte in Hameln$t$,
    $t$In der Stadt Hameln gibt es ein großes Problem. Viele Ratten laufen durch die Straßen. Die Menschen haben Angst. Ein Mann kommt in die Stadt. Er trägt bunte Kleidung und eine Flöte. Er sagt: Ich helfe euch mit Musik. Die Menschen versprechen ihm Geld. Der Mann spielt seine Flöte. Alle Ratten folgen der Musik. Der Mann geht zum Fluss. Die Ratten schwimmen weg. Aber die Stadt bezahlt den Mann nicht. Der Mann ist sehr traurig und wütend. Diese alte Geschichte erzählen die Menschen in Hameln noch heute.$t$,
    $t$Dans la ville de Hamelin, il y a un gros problème. De nombreux rats courent dans les rues. Les gens ont peur. Un homme arrive dans la ville. Il porte des vêtements colorés et une flûte. Il dit : je vous aide avec de la musique. Les gens lui promettent de l'argent. L'homme joue de sa flûte. Tous les rats suivent la musique. L'homme va jusqu'à la rivière. Les rats s'enfuient à la nage. Mais la ville ne paie pas l'homme. L'homme est très triste et furieux. Cette vieille histoire, les gens de Hamelin la racontent encore aujourd'hui.$t$,
    $t${"In":"dans","der":"la","Stadt":"ville","Hameln":"Hamelin","gibt":"y a","es":"il","ein":"un","großes":"gros","Problem":"problème","Viele":"de nombreux","Ratten":"rats","laufen":"courent","durch":"dans","die":"les","Straßen":"rues","Die":"les","Menschen":"gens","haben":"ont","Angst":"peur","Ein":"un","Mann":"homme","kommt":"arrive","in":"dans","Er":"il","trägt":"porte","bunte":"colorés","Kleidung":"vêtements","und":"et","eine":"une","Flöte":"flûte","sagt":"dit","Ich":"je","helfe":"aide","euch":"vous","mit":"avec","Musik":"musique","versprechen":"promettent","ihm":"lui","Geld":"argent","Der":"l'","spielt":"joue de","seine":"sa","Alle":"tous","folgen":"suivent","geht":"va","zum":"jusqu'au","Fluss":"rivière","schwimmen":"s'enfuient à la nage","weg":"au loin","Aber":"mais","bezahlt":"paie","den":"l'","nicht":"pas","ist":"est","sehr":"très","traurig":"triste","wütend":"furieux","Diese":"cette","alte":"vieille","Geschichte":"histoire","erzählen":"racontent","noch":"encore","heute":"aujourd'hui"}$t$::jsonb
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was für ein Problem hat die Stadt?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Viele Ratten$t$, true, 1),
    (v_q, $t$Kein Wasser$t$, false, 2),
    (v_q, $t$Zu viel Schnee$t$, false, 3),
    (v_q, $t$Kein Brot$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum haben die Menschen in Hameln Angst?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Wegen der Ratten$t$, true, 1),
    (v_q, $t$Wegen des Regens$t$, false, 2),
    (v_q, $t$Wegen eines Feuers$t$, false, 3),
    (v_q, $t$Wegen eines Sturms$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was beschreibt der Text als Ursache der Angst in der Stadt?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Eine große Anzahl von Ratten$t$, true, 1),
    (v_q, $t$Ein fehlender Fluss$t$, false, 2),
    (v_q, $t$Ein kaputtes Haus$t$, false, 3),
    (v_q, $t$Ein lauter Markt$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was spielt der Mann?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Flöte$t$, true, 1),
    (v_q, $t$Gitarre$t$, false, 2),
    (v_q, $t$Trommel$t$, false, 3),
    (v_q, $t$Klavier$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Womit lockt der Mann die Ratten weg?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Mit Musik$t$, true, 1),
    (v_q, $t$Mit Essen$t$, false, 2),
    (v_q, $t$Mit Feuer$t$, false, 3),
    (v_q, $t$Mit Licht$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie schafft es der Fremde, die Ratten aus der Stadt zu bringen?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er spielt Flötenmusik, der die Ratten folgen$t$, true, 1),
    (v_q, $t$Er fängt sie mit den Händen$t$, false, 2),
    (v_q, $t$Er baut eine Falle$t$, false, 3),
    (v_q, $t$Er ruft laut nach ihnen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Bezahlt die Stadt den Mann?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Nein$t$, true, 1),
    (v_q, $t$Ja, viel Geld$t$, false, 2),
    (v_q, $t$Ja, ein Haus$t$, false, 3),
    (v_q, $t$Ja, ein Pferd$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was passiert, nachdem die Ratten weg sind?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Die Stadt bezahlt den Mann nicht$t$, true, 1),
    (v_q, $t$Der Mann bekommt viel Geld$t$, false, 2),
    (v_q, $t$Der Mann bleibt in der Stadt$t$, false, 3),
    (v_q, $t$Die Ratten kommen zurück$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum ist der Mann am Ende traurig und wütend?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Die Stadt hält ihr Versprechen nicht$t$, true, 1),
    (v_q, $t$Die Ratten kommen zurück$t$, false, 2),
    (v_q, $t$Er findet den Fluss nicht$t$, false, 3),
    (v_q, $t$Die Flöte ist kaputt$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'die Flöte' im Text?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$la flûte$t$, true, 1),
    (v_q, $t$le tambour$t$, false, 2),
    (v_q, $t$la guitare$t$, false, 3),
    (v_q, $t$le violon$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$'Er trägt bunte Kleidung und eine Flöte.' Was ist 'die Flöte'?$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$un instrument à vent qu'on souffle$t$, true, 1),
    (v_q, $t$un instrument à cordes$t$, false, 2),
    (v_q, $t$un tambour$t$, false, 3),
    (v_q, $t$une cloche$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Im Kontext 'Der Mann spielt seine Flöte' bezeichnet 'die Flöte' ein Instrument, das man:$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$mit dem Mund bläst$t$, true, 1),
    (v_q, $t$mit einem Bogen streicht$t$, false, 2),
    (v_q, $t$mit den Händen schlägt$t$, false, 3),
    (v_q, $t$mit den Fingern auf Tasten spielt$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie heißt 'spielen' in der Form für 'er' (der Mann)?$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$spielt$t$, true, 1),
    (v_q, $t$spielen$t$, false, 2),
    (v_q, $t$spiele$t$, false, 3),
    (v_q, $t$spielst$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Der Mann ___ seine Flöte. Ergänzen Sie 'spielen' richtig.$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$spiele$t$, false, 1),
    (v_q, $t$spielst$t$, false, 2),
    (v_q, $t$spielt$t$, true, 3),
    (v_q, $t$spielen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Alle Ratten ___ der Musik. Welche Form von 'folgen' passt (3. Person Plural)?$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$folgt$t$, false, 1),
    (v_q, $t$folge$t$, false, 2),
    (v_q, $t$folgen$t$, true, 3),
    (v_q, $t$folgst$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$Kennen Sie diese Geschichte? Schreiben Sie 2-3 einfache Sätze über den Mann und die Ratten.$t$, 1, 'normal', 'production', $t$Der Mann spielt Flöte. Die Ratten folgen der Musik. Die Stadt bezahlt den Mann nicht.$t$);

END $block$;

-- 15. Ein Schloss in den Bergen
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary) VALUES (
    'A1',
    $t$Ein Schloss in den Bergen$t$,
    $t$König Ludwig der Zweite liebt Märchen. Er lebt in Bayern. Ludwig möchte ein besonderes Schloss bauen. Er wählt einen Platz in den Bergen. Das Schloss heißt Neuschwanstein. Es hat hohe Türme und schöne Zimmer. Die Aussicht ist wunderschön. Ludwig liebt Musik und Kunst. Er verbringt viel Zeit im Schloss. Aber das Schloss kostet sehr viel Geld. Ludwig stirbt jung, kurz nach dem Bau. Heute kommen viele Touristen aus der ganzen Welt. Sie besuchen das schöne Schloss in den bayerischen Bergen.$t$,
    $t$Le roi Louis II aime les contes de fées. Il vit en Bavière. Louis veut construire un château particulier. Il choisit un emplacement dans les montagnes. Le château s'appelle Neuschwanstein. Il a de hautes tours et de belles pièces. La vue est magnifique. Louis aime la musique et l'art. Il passe beaucoup de temps au château. Mais le château coûte très cher. Louis meurt jeune, peu après la construction. Aujourd'hui, de nombreux touristes viennent du monde entier. Ils visitent le beau château dans les montagnes bavaroises.$t$,
    $t${"König":"roi","Ludwig":"Louis","der":"le","Zweite":"deuxième","liebt":"aime","Märchen":"contes de fées","Er":"il","lebt":"vit","in":"en","Bayern":"Bavière","möchte":"veut","ein":"un","besonderes":"particulier","Schloss":"château","bauen":"construire","wählt":"choisit","einen":"un","Platz":"emplacement","den":"les","Bergen":"montagnes","Das":"le","heißt":"s'appelle","Neuschwanstein":"Neuschwanstein","Es":"il","hat":"a","hohe":"hautes","Türme":"tours","und":"et","schöne":"belles","Zimmer":"pièces","Die":"la","Aussicht":"vue","ist":"est","wunderschön":"magnifique","Musik":"musique","Kunst":"art","verbringt":"passe","viel":"beaucoup de","Zeit":"temps","im":"au","Aber":"mais","das":"le","kostet":"coûte","sehr":"très","Geld":"argent","stirbt":"meurt","jung":"jeune","kurz":"peu","nach":"après","dem":"la","Bau":"construction","Heute":"aujourd'hui","kommen":"viennent","viele":"de nombreux","Touristen":"touristes","aus":"de","ganzen":"entier","Welt":"monde","Sie":"ils","besuchen":"visitent","bayerischen":"bavaroises"}$t$::jsonb
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wer baut das Schloss?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$König Ludwig der Zweite$t$, true, 1),
    (v_q, $t$Ein Bauer$t$, false, 2),
    (v_q, $t$Ein Musiker$t$, false, 3),
    (v_q, $t$Ein Kind$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wer lässt Neuschwanstein bauen?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$König Ludwig der Zweite$t$, true, 1),
    (v_q, $t$Kaiser Wilhelm$t$, false, 2),
    (v_q, $t$Ein Handwerker$t$, false, 3),
    (v_q, $t$Ein Priester$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Person wird im Text als Bauherr des Schlosses genannt?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$König Ludwig der Zweite$t$, true, 1),
    (v_q, $t$Johannes Gutenberg$t$, false, 2),
    (v_q, $t$Ein reicher Kaufmann$t$, false, 3),
    (v_q, $t$Ein Graf aus Bonn$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wo steht das Schloss?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$In den Bergen$t$, true, 1),
    (v_q, $t$Am Meer$t$, false, 2),
    (v_q, $t$In der Wüste$t$, false, 3),
    (v_q, $t$Auf einer Insel$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wo liegt Neuschwanstein laut Text?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$In den bayerischen Bergen$t$, true, 1),
    (v_q, $t$In einer großen Stadt$t$, false, 2),
    (v_q, $t$Am Fluss Rhein$t$, false, 3),
    (v_q, $t$Im Wald bei Hameln$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Lage beschreibt der Text für das Schloss?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$In den Bergen Bayerns$t$, true, 1),
    (v_q, $t$Mitten in Berlin$t$, false, 2),
    (v_q, $t$An der Nordsee$t$, false, 3),
    (v_q, $t$In einem Tal in Sachsen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wer besucht das Schloss heute?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Viele Touristen$t$, true, 1),
    (v_q, $t$Nur Kinder$t$, false, 2),
    (v_q, $t$Niemand$t$, false, 3),
    (v_q, $t$Nur Bayern$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was passiert heute mit Neuschwanstein?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Viele Touristen aus der Welt besuchen es$t$, true, 1),
    (v_q, $t$Es ist geschlossen$t$, false, 2),
    (v_q, $t$Niemand kennt es mehr$t$, false, 3),
    (v_q, $t$Es wird abgerissen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie zeigt der Text, dass das Schloss heute bekannt ist?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Touristen aus der ganzen Welt kommen dorthin$t$, true, 1),
    (v_q, $t$Es steht leer und niemand kommt$t$, false, 2),
    (v_q, $t$Nur Bayern dürfen es besuchen$t$, false, 3),
    (v_q, $t$Es ist ein Geheimnis geblieben$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'der Turm' im Text?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$la tour$t$, true, 1),
    (v_q, $t$le mur$t$, false, 2),
    (v_q, $t$le toit$t$, false, 3),
    (v_q, $t$la porte$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$'Es hat hohe Türme und schöne Zimmer.' Was ist 'der Turm'?$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$une construction haute et étroite d'un château$t$, true, 1),
    (v_q, $t$une petite fenêtre$t$, false, 2),
    (v_q, $t$une grande salle$t$, false, 3),
    (v_q, $t$un jardin$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Im Kontext 'Hohe Türme' beschreibt 'der Turm' einen Teil des Schlosses, der:$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$hoch und schmal in den Himmel ragt$t$, true, 1),
    (v_q, $t$unter der Erde liegt$t$, false, 2),
    (v_q, $t$flach und breit ist$t$, false, 3),
    (v_q, $t$aus Glas gebaut ist$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie heißt 'lieben' in der Form für 'er' (Ludwig)?$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$liebt$t$, true, 1),
    (v_q, $t$lieben$t$, false, 2),
    (v_q, $t$liebe$t$, false, 3),
    (v_q, $t$liebst$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Ludwig ___ Musik und Kunst. Ergänzen Sie 'lieben' richtig.$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$liebe$t$, false, 1),
    (v_q, $t$liebst$t$, false, 2),
    (v_q, $t$liebt$t$, true, 3),
    (v_q, $t$lieben$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Heute ___ viele Touristen aus der ganzen Welt. Welche Form von 'kommen' passt (3. Person Plural)?$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$kommt$t$, false, 1),
    (v_q, $t$komme$t$, false, 2),
    (v_q, $t$kommen$t$, true, 3),
    (v_q, $t$kommst$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$Möchten Sie ein Schloss besuchen? Schreiben Sie 2-3 einfache Sätze darüber.$t$, 1, 'normal', 'production', $t$Ich möchte ein Schloss besuchen. Das Schloss ist in den Bergen. Die Aussicht ist wunderschön.$t$);

END $block$;

-- 16. Der Mönch und das Buch
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary) VALUES (
    'A1',
    $t$Der Mönch und das Buch$t$,
    $t$Martin ist ein Mönch. Er lebt in Deutschland, vor langer Zeit. Martin liest die Bibel. Das Buch ist auf Latein. Viele Menschen verstehen kein Latein. Martin denkt: Die Menschen brauchen das Buch auf Deutsch. Martin geht auf eine Burg. Dort ist er sicher. Er arbeitet jeden Tag. Er übersetzt die Bibel ins Deutsche. Das ist schwer. Nach vielen Monaten ist das Buch fertig. Jetzt können viele Menschen die Bibel lesen. Das Buch ist sehr wichtig für die deutsche Sprache. Die Menschen sind glücklich. Martin ist müde, aber zufrieden.$t$,
    $t$Martin est un moine. Il vit en Allemagne, il y a longtemps. Martin lit la Bible. Le livre est en latin. Beaucoup de gens ne comprennent pas le latin. Martin pense : les gens ont besoin du livre en allemand. Martin se rend dans un château fort. Là, il est en sécurité. Il travaille chaque jour. Il traduit la Bible en allemand. C'est difficile. Après de nombreux mois, le livre est terminé. Maintenant, beaucoup de gens peuvent lire la Bible. Le livre est très important pour la langue allemande. Les gens sont heureux. Martin est fatigué, mais satisfait.$t$,
    $t${"Martin":"Martin","ist":"est","ein":"un","Mönch":"moine","Er":"il","lebt":"vit","in":"en","Deutschland":"Allemagne","vor":"il y a","langer":"longtemps","Zeit":"temps","liest":"lit","die":"la","Bibel":"Bible","Das":"le","Buch":"livre","auf":"en","Latein":"latin","Viele":"beaucoup de","Menschen":"gens","verstehen":"comprennent","kein":"pas de","denkt":"pense","Die":"les","brauchen":"ont besoin de","das":"le","Deutsch":"allemand","geht":"se rend","eine":"un","Burg":"château fort","Dort":"là","er":"il","sicher":"en sécurité","arbeitet":"travaille","jeden":"chaque","Tag":"jour","übersetzt":"traduit","ins":"en","Deutsche":"allemand","schwer":"difficile","Nach":"après","vielen":"de nombreux","Monaten":"mois","fertig":"terminé","Jetzt":"maintenant","können":"peuvent","lesen":"lire","sehr":"très","wichtig":"important","für":"pour","deutsche":"allemande","Sprache":"langue","sind":"sont","glücklich":"heureux","müde":"fatigué","aber":"mais","zufrieden":"satisfait","viele":"beaucoup de"}$t$::jsonb
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was ist Martin?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Ein Mönch$t$, true, 1),
    (v_q, $t$Ein Bäcker$t$, false, 2),
    (v_q, $t$Ein König$t$, false, 3),
    (v_q, $t$Ein Arzt$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wo lebt Martin?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$In Frankreich$t$, false, 1),
    (v_q, $t$In Deutschland$t$, true, 2),
    (v_q, $t$In Italien$t$, false, 3),
    (v_q, $t$In Spanien$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum geht Martin auf eine Burg?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er ist dort sicher$t$, true, 1),
    (v_q, $t$Er will schlafen$t$, false, 2),
    (v_q, $t$Er sucht Essen$t$, false, 3),
    (v_q, $t$Er will spielen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was liest Martin?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Ein Buch$t$, true, 1),
    (v_q, $t$Eine Zeitung$t$, false, 2),
    (v_q, $t$Eine Karte$t$, false, 3),
    (v_q, $t$Einen Brief$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$In welcher Sprache ist die Bibel zuerst?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Deutsch$t$, false, 1),
    (v_q, $t$Latein$t$, true, 2),
    (v_q, $t$Englisch$t$, false, 3),
    (v_q, $t$Französisch$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum übersetzt Martin die Bibel?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Die Menschen verstehen kein Latein$t$, true, 1),
    (v_q, $t$Er mag Latein nicht$t$, false, 2),
    (v_q, $t$Er hat viel Zeit$t$, false, 3),
    (v_q, $t$Der König sagt es ihm$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie fühlt sich Martin am Ende?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Zufrieden$t$, true, 1),
    (v_q, $t$Traurig$t$, false, 2),
    (v_q, $t$Wütend$t$, false, 3),
    (v_q, $t$Ängstlich$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was passiert nach vielen Monaten?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Das Buch ist fertig$t$, true, 1),
    (v_q, $t$Martin geht weg$t$, false, 2),
    (v_q, $t$Das Buch ist verloren$t$, false, 3),
    (v_q, $t$Martin ist krank$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet die Übersetzung für die deutsche Sprache?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie ist sehr wichtig$t$, true, 1),
    (v_q, $t$Sie ist unwichtig$t$, false, 2),
    (v_q, $t$Niemand liest sie$t$, false, 3),
    (v_q, $t$Sie ist ein Fehler$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'das Buch'?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Livre$t$, true, 1),
    (v_q, $t$Table$t$, false, 2),
    (v_q, $t$Maison$t$, false, 3),
    (v_q, $t$Voiture$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'übersetzen'?$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Traduire$t$, true, 1),
    (v_q, $t$Manger$t$, false, 2),
    (v_q, $t$Courir$t$, false, 3),
    (v_q, $t$Dormir$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'die Sprache'?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$La langue$t$, true, 1),
    (v_q, $t$La montagne$t$, false, 2),
    (v_q, $t$La rivière$t$, false, 3),
    (v_q, $t$La forêt$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie heißt 'lesen' in der Form für 'er'?$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$liest$t$, true, 1),
    (v_q, $t$lese$t$, false, 2),
    (v_q, $t$lesen$t$, false, 3),
    (v_q, $t$lest$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie heißt 'arbeiten' in der Form für 'ich'?$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$arbeite$t$, true, 1),
    (v_q, $t$arbeitest$t$, false, 2),
    (v_q, $t$arbeitet$t$, false, 3),
    (v_q, $t$arbeiten$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie heißt 'verstehen' in der Form für 'sie' (Plural)?$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$verstehen$t$, true, 1),
    (v_q, $t$versteht$t$, false, 2),
    (v_q, $t$verstehst$t$, false, 3),
    (v_q, $t$verstehe$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$Schreib zwei oder drei Sätze über ein Buch, das du magst.$t$, 1, 'normal', 'production', $t$Ich lese gern Bücher. Mein Lieblingsbuch ist spannend. Ich lese jeden Abend.$t$);

END $block$;

-- 17. Die große Kirche in Köln
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary) VALUES (
    'A1',
    $t$Die große Kirche in Köln$t$,
    $t$In Köln steht eine sehr große Kirche. Sie heißt Kölner Dom. Der Dom ist sehr alt und sehr hoch. Viele Arbeiter bauen den Dom. Sie brauchen sehr viel Zeit. Die Arbeit dauert viele Jahre. Manchmal stoppt die Arbeit für lange Zeit. Dann fehlt Geld. Später beginnt die Arbeit wieder. Endlich ist der Dom fertig. Jetzt kommen viele Touristen nach Köln. Sie schauen den Dom an. Die Kirche hat zwei hohe Türme. Man sieht den Dom von weit weg. Der Kölner Dom ist heute sehr berühmt.$t$,
    $t$À Cologne se dresse une très grande église. Elle s'appelle la cathédrale de Cologne. La cathédrale est très ancienne et très haute. De nombreux ouvriers construisent la cathédrale. Ils ont besoin de beaucoup de temps. Le travail dure de nombreuses années. Parfois, le travail s'arrête pendant longtemps. Alors, l'argent manque. Plus tard, le travail recommence. Enfin, la cathédrale est terminée. Maintenant, de nombreux touristes viennent à Cologne. Ils regardent la cathédrale. L'église a deux hautes tours. On voit la cathédrale de très loin. La cathédrale de Cologne est aujourd'hui très célèbre.$t$,
    $t${"In":"à","Köln":"Cologne","steht":"se dresse","eine":"une","sehr":"très","große":"grande","Kirche":"église","Sie":"elle","heißt":"s'appelle","Kölner":"de Cologne","Dom":"cathédrale","Der":"la","ist":"est","alt":"ancienne","und":"et","hoch":"haute","Viele":"de nombreux","Arbeiter":"ouvriers","bauen":"construisent","den":"la","brauchen":"ont besoin de","viel":"beaucoup de","Zeit":"temps","Die":"le","Arbeit":"travail","dauert":"dure","viele":"de nombreuses","Jahre":"années","Manchmal":"parfois","stoppt":"s'arrête","die":"le","für":"pendant","lange":"longtemps","Dann":"alors","fehlt":"manque","Geld":"argent","Später":"plus tard","beginnt":"recommence","wieder":"encore","Endlich":"enfin","der":"la","fertig":"terminée","Jetzt":"maintenant","kommen":"viennent","Touristen":"touristes","nach":"à","schauen":"regardent","an":"(particule de regarder)","hat":"a","zwei":"deux","hohe":"hautes","Türme":"tours","Man":"on","sieht":"voit","von":"de","weit":"loin","weg":"loin","heute":"aujourd'hui","berühmt":"célèbre"}$t$::jsonb
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie heißt die große Kirche?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Kölner Dom$t$, true, 1),
    (v_q, $t$Berliner Dom$t$, false, 2),
    (v_q, $t$Stadtkirche$t$, false, 3),
    (v_q, $t$Marienkirche$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$In welcher Stadt steht der Dom?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$München$t$, false, 1),
    (v_q, $t$Köln$t$, true, 2),
    (v_q, $t$Hamburg$t$, false, 3),
    (v_q, $t$Berlin$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum stoppt die Arbeit manchmal?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Es fehlt Geld$t$, true, 1),
    (v_q, $t$Die Arbeiter sind krank$t$, false, 2),
    (v_q, $t$Es regnet zu viel$t$, false, 3),
    (v_q, $t$Niemand will arbeiten$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie viele Türme hat der Dom?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Zwei$t$, true, 1),
    (v_q, $t$Eins$t$, false, 2),
    (v_q, $t$Drei$t$, false, 3),
    (v_q, $t$Vier$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie lange dauert der Bau?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Ein Tag$t$, false, 1),
    (v_q, $t$Viele Jahre$t$, true, 2),
    (v_q, $t$Eine Woche$t$, false, 3),
    (v_q, $t$Ein Monat$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wer baut den Dom?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Viele Arbeiter$t$, true, 1),
    (v_q, $t$Ein König$t$, false, 2),
    (v_q, $t$Ein Kind$t$, false, 3),
    (v_q, $t$Ein Tourist$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wer kommt heute nach Köln?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Touristen$t$, true, 1),
    (v_q, $t$Nur Kinder$t$, false, 2),
    (v_q, $t$Nur Ärzte$t$, false, 3),
    (v_q, $t$Niemand$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie ist der Dom heute?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Berühmt$t$, true, 1),
    (v_q, $t$Vergessen$t$, false, 2),
    (v_q, $t$Klein$t$, false, 3),
    (v_q, $t$Neu$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was können Touristen von weit weg sehen?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Den Dom$t$, true, 1),
    (v_q, $t$Das Meer$t$, false, 2),
    (v_q, $t$Den Fluss$t$, false, 3),
    (v_q, $t$Den Wald$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'die Kirche'?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$L'église$t$, true, 1),
    (v_q, $t$La cuisine$t$, false, 2),
    (v_q, $t$La gare$t$, false, 3),
    (v_q, $t$L'école$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'hoch'?$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Haut$t$, true, 1),
    (v_q, $t$Bas$t$, false, 2),
    (v_q, $t$Petit$t$, false, 3),
    (v_q, $t$Rapide$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'der Turm'?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$La tour$t$, true, 1),
    (v_q, $t$Le pont$t$, false, 2),
    (v_q, $t$Le mur$t$, false, 3),
    (v_q, $t$Le toit$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie heißt 'stehen' in der Form für 'sie' (die Kirche)?$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$steht$t$, true, 1),
    (v_q, $t$stehe$t$, false, 2),
    (v_q, $t$stehst$t$, false, 3),
    (v_q, $t$stehen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie heißt 'bauen' in der Form für 'wir'?$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$bauen$t$, true, 1),
    (v_q, $t$baut$t$, false, 2),
    (v_q, $t$baue$t$, false, 3),
    (v_q, $t$baust$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie heißt 'kommen' in der Form für 'die Touristen'?$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$kommen$t$, true, 1),
    (v_q, $t$kommt$t$, false, 2),
    (v_q, $t$komme$t$, false, 3),
    (v_q, $t$kommst$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$Schreib zwei oder drei Sätze über ein Gebäude, das du magst.$t$, 1, 'normal', 'production', $t$Ich mag alte Gebäude. Ein Schloss in meiner Stadt ist sehr schön. Ich besuche es gern.$t$);

END $block$;

-- 18. Ein Fest in München
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary) VALUES (
    'A1',
    $t$Ein Fest in München$t$,
    $t$Jeden Herbst gibt es ein großes Fest in München. Es heißt Oktoberfest. Viele Menschen kommen aus der ganzen Welt. Sie tragen bunte Kleidung. Auf dem Fest gibt es Musik und Tanz. Die Menschen essen Brezeln und Wurst. Sie trinken auch Bier. Es gibt große Zelte für viele Gäste. In den Zelten spielt eine Band. Die Menschen singen zusammen. Kinder fahren Karussell. Das Fest dauert zwei Wochen. Am Ende sind alle Menschen müde, aber glücklich. Das Oktoberfest ist eine wichtige Tradition in Deutschland.$t$,
    $t$Chaque automne, il y a une grande fête à Munich. Elle s'appelle la fête d'octobre (Oktoberfest). Beaucoup de gens viennent du monde entier. Ils portent des vêtements colorés. À la fête, il y a de la musique et de la danse. Les gens mangent des bretzels et des saucisses. Ils boivent aussi de la bière. Il y a de grandes tentes pour de nombreux invités. Dans les tentes joue un orchestre. Les gens chantent ensemble. Les enfants font du manège. La fête dure deux semaines. À la fin, tous les gens sont fatigués, mais heureux. L'Oktoberfest est une tradition importante en Allemagne.$t$,
    $t${"Jeden":"chaque","Herbst":"automne","gibt":"y a","es":"il","ein":"un","großes":"grand","Fest":"fête","in":"à","München":"Munich","Es":"elle","heißt":"s'appelle","Oktoberfest":"Oktoberfest","Viele":"beaucoup de","Menschen":"gens","kommen":"viennent","aus":"de","der":"le","ganzen":"entier","Welt":"monde","Sie":"ils","tragen":"portent","bunte":"colorés","Kleidung":"vêtements","Auf":"à","dem":"la","Musik":"musique","und":"et","Tanz":"danse","Die":"les","essen":"mangent","Brezeln":"bretzels","Wurst":"saucisses","trinken":"boivent","auch":"aussi","Bier":"bière","große":"grandes","Zelte":"tentes","für":"pour","viele":"de nombreux","Gäste":"invités","In":"dans","den":"les","Zelten":"tentes","spielt":"joue","eine":"un","Band":"orchestre","singen":"chantent","zusammen":"ensemble","Kinder":"enfants","fahren":"font","Karussell":"manège","Das":"la","dauert":"dure","zwei":"deux","Wochen":"semaines","Am":"à","Ende":"fin","sind":"sont","alle":"tous","müde":"fatigués","aber":"mais","glücklich":"heureux","ist":"est","wichtige":"importante","Tradition":"tradition","Deutschland":"Allemagne"}$t$::jsonb
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wo ist das Oktoberfest?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$München$t$, true, 1),
    (v_q, $t$Berlin$t$, false, 2),
    (v_q, $t$Köln$t$, false, 3),
    (v_q, $t$Hamburg$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wann ist das Oktoberfest?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Im Sommer$t$, false, 1),
    (v_q, $t$Im Herbst$t$, true, 2),
    (v_q, $t$Im Winter$t$, false, 3),
    (v_q, $t$Im Frühling$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was machen die Menschen in den Zelten?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie singen zusammen$t$, true, 1),
    (v_q, $t$Sie schlafen$t$, false, 2),
    (v_q, $t$Sie arbeiten$t$, false, 3),
    (v_q, $t$Sie lesen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was essen die Menschen?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Brezeln und Wurst$t$, true, 1),
    (v_q, $t$Nur Obst$t$, false, 2),
    (v_q, $t$Nur Fisch$t$, false, 3),
    (v_q, $t$Nur Salat$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was tragen die Menschen auf dem Fest?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Bunte Kleidung$t$, true, 1),
    (v_q, $t$Nur Schwarz$t$, false, 2),
    (v_q, $t$Uniformen$t$, false, 3),
    (v_q, $t$Nichts Besonderes$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie lange dauert das Fest?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Zwei Wochen$t$, true, 1),
    (v_q, $t$Ein Tag$t$, false, 2),
    (v_q, $t$Ein Jahr$t$, false, 3),
    (v_q, $t$Zwei Tage$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was fahren Kinder auf dem Fest?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Karussell$t$, true, 1),
    (v_q, $t$Fahrrad$t$, false, 2),
    (v_q, $t$Auto$t$, false, 3),
    (v_q, $t$Zug$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie fühlen sich die Menschen am Ende?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Müde und glücklich$t$, true, 1),
    (v_q, $t$Traurig$t$, false, 2),
    (v_q, $t$Wütend$t$, false, 3),
    (v_q, $t$Gelangweilt$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was ist das Oktoberfest für Deutschland?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Eine wichtige Tradition$t$, true, 1),
    (v_q, $t$Ein neues Fest$t$, false, 2),
    (v_q, $t$Ein Fehler$t$, false, 3),
    (v_q, $t$Ein kleines Treffen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'das Fest'?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$La fête$t$, true, 1),
    (v_q, $t$Le travail$t$, false, 2),
    (v_q, $t$L'école$t$, false, 3),
    (v_q, $t$La maison$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'die Musik'?$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$La musique$t$, true, 1),
    (v_q, $t$Le silence$t$, false, 2),
    (v_q, $t$La pluie$t$, false, 3),
    (v_q, $t$La lumière$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'die Tradition'?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$La tradition$t$, true, 1),
    (v_q, $t$La surprise$t$, false, 2),
    (v_q, $t$L'erreur$t$, false, 3),
    (v_q, $t$La question$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie heißt 'essen' in der Form für 'die Menschen'?$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$essen$t$, true, 1),
    (v_q, $t$isst$t$, false, 2),
    (v_q, $t$esse$t$, false, 3),
    (v_q, $t$esst$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie heißt 'trinken' in der Form für 'sie' (Plural)?$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$trinken$t$, true, 1),
    (v_q, $t$trinkt$t$, false, 2),
    (v_q, $t$trinke$t$, false, 3),
    (v_q, $t$trinkst$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie heißt 'singen' in der Form für 'wir'?$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$singen$t$, true, 1),
    (v_q, $t$singt$t$, false, 2),
    (v_q, $t$singe$t$, false, 3),
    (v_q, $t$singst$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$Schreib zwei oder drei Sätze über ein Fest, das du magst.$t$, 1, 'normal', 'production', $t$Ich mag Feste im Sommer. Wir essen und tanzen zusammen. Das Fest macht mich glücklich.$t$);

END $block$;

-- 19. Hänsel und Gretel im Wald
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary) VALUES (
    'A1',
    $t$Hänsel und Gretel im Wald$t$,
    $t$Hänsel und Gretel sind Geschwister. Sie leben mit ihrem Vater. Die Familie hat wenig Essen. Der Vater bringt die Kinder in den Wald. Hänsel und Gretel sind allein. Sie laufen durch den Wald. Plötzlich sehen sie ein Haus. Das Haus ist aus Brot und Zucker. Die Kinder essen davon. Eine alte Frau kommt aus dem Haus. Die Frau ist böse. Sie will die Kinder fangen. Gretel ist mutig und schlau. Sie rettet ihren Bruder. Die Kinder laufen nach Hause. Der Vater ist sehr froh. Die Familie ist wieder zusammen.$t$,
    $t$Hänsel et Gretel sont frère et sœur. Ils vivent avec leur père. La famille a peu à manger. Le père emmène les enfants dans la forêt. Hänsel et Gretel sont seuls. Ils marchent à travers la forêt. Soudain, ils voient une maison. La maison est faite de pain et de sucre. Les enfants en mangent. Une vieille femme sort de la maison. La femme est méchante. Elle veut attraper les enfants. Gretel est courageuse et rusée. Elle sauve son frère. Les enfants courent jusqu'à la maison. Le père est très content. La famille est de nouveau réunie.$t$,
    $t${"Hänsel":"Hänsel","und":"et","Gretel":"Gretel","sind":"sont","Geschwister":"frère et sœur","Sie":"ils","leben":"vivent","mit":"avec","ihrem":"leur","Vater":"père","Die":"la","Familie":"famille","hat":"a","wenig":"peu","Essen":"nourriture","Der":"le","bringt":"emmène","die":"les","Kinder":"enfants","in":"dans","den":"la","Wald":"forêt","allein":"seuls","laufen":"marchent","durch":"à travers","Plötzlich":"soudain","sehen":"voient","sie":"ils","ein":"une","Haus":"maison","Das":"la","ist":"est","aus":"faite de","Brot":"pain","Zucker":"sucre","essen":"mangent","davon":"en","Eine":"une","alte":"vieille","Frau":"femme","kommt":"sort","dem":"la","böse":"méchante","will":"veut","fangen":"attraper","mutig":"courageuse","schlau":"rusée","rettet":"sauve","ihren":"son","Bruder":"frère","nach":"vers","Hause":"la maison","sehr":"très","froh":"content","wieder":"de nouveau","zusammen":"réunie"}$t$::jsonb
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wer sind Hänsel und Gretel?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Geschwister$t$, true, 1),
    (v_q, $t$Freunde$t$, false, 2),
    (v_q, $t$Lehrer$t$, false, 3),
    (v_q, $t$Nachbarn$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wo lässt der Vater die Kinder?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Im Wald$t$, true, 1),
    (v_q, $t$Am Strand$t$, false, 2),
    (v_q, $t$In der Stadt$t$, false, 3),
    (v_q, $t$Im Garten$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum bringt der Vater die Kinder in den Wald?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Die Familie hat wenig Essen$t$, true, 1),
    (v_q, $t$Er will spielen$t$, false, 2),
    (v_q, $t$Die Kinder sind böse$t$, false, 3),
    (v_q, $t$Er sucht Blumen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Aus was ist das Haus im Wald?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Brot und Zucker$t$, true, 1),
    (v_q, $t$Stein$t$, false, 2),
    (v_q, $t$Holz$t$, false, 3),
    (v_q, $t$Glas$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wer kommt aus dem Haus?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Eine alte Frau$t$, true, 1),
    (v_q, $t$Ein König$t$, false, 2),
    (v_q, $t$Ein Hund$t$, false, 3),
    (v_q, $t$Ein Kind$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie ist die alte Frau?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Böse$t$, true, 1),
    (v_q, $t$Freundlich$t$, false, 2),
    (v_q, $t$Traurig$t$, false, 3),
    (v_q, $t$Müde$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wer rettet Hänsel?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Gretel$t$, true, 1),
    (v_q, $t$Der Vater$t$, false, 2),
    (v_q, $t$Ein Jäger$t$, false, 3),
    (v_q, $t$Ein Vogel$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie ist Gretel?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Mutig und schlau$t$, true, 1),
    (v_q, $t$Ängstlich$t$, false, 2),
    (v_q, $t$Faul$t$, false, 3),
    (v_q, $t$Böse$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie endet die Geschichte?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Die Familie ist wieder zusammen$t$, true, 1),
    (v_q, $t$Die Kinder bleiben im Wald$t$, false, 2),
    (v_q, $t$Der Vater ist böse$t$, false, 3),
    (v_q, $t$Die Kinder sind traurig$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'der Wald'?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$La forêt$t$, true, 1),
    (v_q, $t$La mer$t$, false, 2),
    (v_q, $t$La montagne$t$, false, 3),
    (v_q, $t$La rue$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'mutig'?$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Courageux$t$, true, 1),
    (v_q, $t$Fatigué$t$, false, 2),
    (v_q, $t$Triste$t$, false, 3),
    (v_q, $t$Rapide$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'retten'?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sauver$t$, true, 1),
    (v_q, $t$Perdre$t$, false, 2),
    (v_q, $t$Manger$t$, false, 3),
    (v_q, $t$Chercher$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie heißt 'laufen' in der Form für 'sie' (Kinder)?$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$laufen$t$, true, 1),
    (v_q, $t$läuft$t$, false, 2),
    (v_q, $t$laufe$t$, false, 3),
    (v_q, $t$läufst$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie heißt 'essen' in der Form für 'sie' (die Kinder)?$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$essen$t$, true, 1),
    (v_q, $t$isst$t$, false, 2),
    (v_q, $t$esse$t$, false, 3),
    (v_q, $t$esst$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie heißt 'sehen' in der Form für 'sie' (Plural)?$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$sehen$t$, true, 1),
    (v_q, $t$sieht$t$, false, 2),
    (v_q, $t$siehst$t$, false, 3),
    (v_q, $t$sehe$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$Schreib zwei oder drei Sätze über deinen Lieblingswald oder Lieblingsort in der Natur.$t$, 1, 'normal', 'production', $t$Ich gehe gern in den Wald. Dort sind viele Bäume und Tiere. Der Wald ist ruhig und schön.$t$);

END $block$;

-- 20. Die Kuckucksuhr im Schwarzwald
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary) VALUES (
    'A1',
    $t$Die Kuckucksuhr im Schwarzwald$t$,
    $t$Peter wohnt im Schwarzwald. Er ist Handwerker. Peter baut Uhren aus Holz. Seine Uhren sind besonders. Jede Uhr hat einen kleinen Vogel. Der Vogel heißt Kuckuck. Jede Stunde öffnet sich eine Tür. Der Kuckuck kommt heraus. Er ruft laut: Kuckuck, Kuckuck! Die Kinder im Dorf lieben die Uhr. Peter arbeitet lange an jeder Uhr. Er schnitzt das Holz sehr genau. Touristen kaufen die Uhren gern. Sie bringen die Uhren in ihr Land. So kennt die ganze Welt die Kuckucksuhr aus dem Schwarzwald.$t$,
    $t$Peter habite dans la Forêt-Noire. Il est artisan. Peter fabrique des horloges en bois. Ses horloges sont particulières. Chaque horloge a un petit oiseau. L'oiseau s'appelle coucou. Chaque heure, une porte s'ouvre. Le coucou sort. Il crie fort : coucou, coucou ! Les enfants du village adorent l'horloge. Peter travaille longtemps sur chaque horloge. Il sculpte le bois avec beaucoup de précision. Les touristes achètent volontiers les horloges. Ils emportent les horloges dans leur pays. Ainsi, le monde entier connaît le coucou de la Forêt-Noire.$t$,
    $t${"Peter":"Peter","wohnt":"habite","im":"dans la","Schwarzwald":"Forêt-Noire","Er":"il","ist":"est","Handwerker":"artisan","baut":"fabrique","Uhren":"horloges","aus":"en","Holz":"bois","Seine":"ses","sind":"sont","besonders":"particulières","Jede":"chaque","Uhr":"horloge","hat":"a","einen":"un","kleinen":"petit","Vogel":"oiseau","Der":"l'","heißt":"s'appelle","Kuckuck":"coucou","Stunde":"heure","öffnet":"s'ouvre","sich":"se","eine":"une","Tür":"porte","kommt":"sort","heraus":"dehors","ruft":"crie","laut":"fort","Die":"les","Kinder":"enfants","Dorf":"village","lieben":"adorent","die":"l'","arbeitet":"travaille","lange":"longtemps","an":"sur","jeder":"chaque","schnitzt":"sculpte","das":"le","sehr":"beaucoup de","genau":"précision","Touristen":"touristes","kaufen":"achètent","gern":"volontiers","Sie":"ils","bringen":"emportent","in":"dans","ihr":"leur","Land":"pays","So":"ainsi","kennt":"connaît","ganze":"entier","Welt":"monde","Kuckucksuhr":"coucou (l'horloge)","dem":"la"}$t$::jsonb
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wo wohnt Peter?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Im Schwarzwald$t$, true, 1),
    (v_q, $t$In Berlin$t$, false, 2),
    (v_q, $t$Am Meer$t$, false, 3),
    (v_q, $t$In den Bergen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was baut Peter?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Uhren$t$, true, 1),
    (v_q, $t$Autos$t$, false, 2),
    (v_q, $t$Häuser$t$, false, 3),
    (v_q, $t$Boote$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was macht Peter genau mit dem Holz?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er schnitzt es$t$, true, 1),
    (v_q, $t$Er verbrennt es$t$, false, 2),
    (v_q, $t$Er verkauft es sofort$t$, false, 3),
    (v_q, $t$Er wirft es weg$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie heißt der kleine Vogel?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Kuckuck$t$, true, 1),
    (v_q, $t$Adler$t$, false, 2),
    (v_q, $t$Spatz$t$, false, 3),
    (v_q, $t$Ente$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was passiert jede Stunde?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Eine Tür öffnet sich$t$, true, 1),
    (v_q, $t$Die Uhr fällt$t$, false, 2),
    (v_q, $t$Die Uhr ist kaputt$t$, false, 3),
    (v_q, $t$Peter schläft$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wer liebt die Uhr im Dorf?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Die Kinder$t$, true, 1),
    (v_q, $t$Nur Peter$t$, false, 2),
    (v_q, $t$Niemand$t$, false, 3),
    (v_q, $t$Die Touristen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wer kauft die Uhren gern?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Touristen$t$, true, 1),
    (v_q, $t$Nur Kinder$t$, false, 2),
    (v_q, $t$Nur Ärzte$t$, false, 3),
    (v_q, $t$Niemand$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was machen die Touristen mit den Uhren?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie bringen sie in ihr Land$t$, true, 1),
    (v_q, $t$Sie zerstören sie$t$, false, 2),
    (v_q, $t$Sie verkaufen sie sofort$t$, false, 3),
    (v_q, $t$Sie vergessen sie$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was kennt die ganze Welt am Ende?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Die Kuckucksuhr$t$, true, 1),
    (v_q, $t$Peter$t$, false, 2),
    (v_q, $t$Den Schwarzwald allein$t$, false, 3),
    (v_q, $t$Nichts$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'die Uhr'?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$L'horloge$t$, true, 1),
    (v_q, $t$Le livre$t$, false, 2),
    (v_q, $t$La table$t$, false, 3),
    (v_q, $t$La lampe$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'der Vogel'?$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$L'oiseau$t$, true, 1),
    (v_q, $t$Le poisson$t$, false, 2),
    (v_q, $t$Le chat$t$, false, 3),
    (v_q, $t$Le cheval$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'schnitzen'?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sculpter$t$, true, 1),
    (v_q, $t$Chanter$t$, false, 2),
    (v_q, $t$Cuisiner$t$, false, 3),
    (v_q, $t$Nager$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie heißt 'bauen' in der Form für 'er'?$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$baut$t$, true, 1),
    (v_q, $t$baue$t$, false, 2),
    (v_q, $t$bauen$t$, false, 3),
    (v_q, $t$baust$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie heißt 'rufen' in der Form für 'der Kuckuck'?$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$ruft$t$, true, 1),
    (v_q, $t$rufe$t$, false, 2),
    (v_q, $t$rufen$t$, false, 3),
    (v_q, $t$rufst$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie heißt 'kaufen' in der Form für 'die Touristen'?$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$kaufen$t$, true, 1),
    (v_q, $t$kauft$t$, false, 2),
    (v_q, $t$kaufe$t$, false, 3),
    (v_q, $t$kaufst$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$Schreib zwei oder drei Sätze über ein Handwerk oder ein Hobby, das du magst.$t$, 1, 'normal', 'production', $t$Ich male gern Bilder. Ich arbeite jeden Tag ein bisschen. Meine Bilder sind bunt.$t$);

END $block$;

-- 21. Wilhelm sieht durch die Haut
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary) VALUES (
    'A1',
    $t$Wilhelm sieht durch die Haut$t$,
    $t$Wilhelm ist Wissenschaftler. Er arbeitet in einem Labor. Eines Tages macht er ein Experiment. Er sieht ein seltsames Licht. Das Licht geht durch Papier und Holz. Wilhelm ist sehr überrascht. Er nennt das Licht X-Strahlen. Wilhelm macht ein Bild von der Hand seiner Frau. Auf dem Bild sieht man die Knochen. Das ist eine Sensation! Ärzte nutzen die Entdeckung sofort. Sie sehen jetzt Knochen im Körper, ohne zu operieren. Wilhelm bekommt später einen berühmten Preis. Seine Entdeckung hilft bis heute vielen Menschen.$t$,
    $t$Wilhelm est scientifique. Il travaille dans un laboratoire. Un jour, il fait une expérience. Il voit une lumière étrange. La lumière traverse le papier et le bois. Wilhelm est très surpris. Il appelle cette lumière rayons X. Wilhelm prend une image de la main de sa femme. Sur l'image, on voit les os. C'est une sensation ! Les médecins utilisent immédiatement la découverte. Ils voient maintenant les os dans le corps sans avoir à opérer. Wilhelm reçoit plus tard un prix célèbre. Sa découverte aide encore aujourd'hui de nombreuses personnes.$t$,
    $t${"Wilhelm":"Wilhelm","ist":"est","Wissenschaftler":"scientifique","Er":"il","arbeitet":"travaille","in":"dans","einem":"un","Labor":"laboratoire","Eines":"un","Tages":"jour","macht":"fait","er":"il","ein":"une","Experiment":"expérience","sieht":"voit","seltsames":"étrange","Licht":"lumière","Das":"la","geht":"traverse","durch":"à travers","Papier":"papier","und":"et","Holz":"bois","sehr":"très","überrascht":"surpris","nennt":"appelle","das":"cette","X-Strahlen":"rayons X","Bild":"image","von":"de","der":"la","Hand":"main","seiner":"sa","Frau":"femme","Auf":"sur","dem":"l'","man":"on","die":"les","Knochen":"os","eine":"une","Sensation":"sensation","Ärzte":"médecins","nutzen":"utilisent","Entdeckung":"découverte","sofort":"immédiatement","Sie":"ils","sehen":"voient","jetzt":"maintenant","im":"dans le","Körper":"corps","ohne":"sans","zu":"à","operieren":"opérer","bekommt":"reçoit","später":"plus tard","einen":"un","berühmten":"célèbre","Preis":"prix","Seine":"sa","hilft":"aide","bis":"jusqu'à","heute":"aujourd'hui","vielen":"de nombreuses","Menschen":"personnes"}$t$::jsonb
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was ist Wilhelm von Beruf?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Wissenschaftler$t$, true, 1),
    (v_q, $t$Lehrer$t$, false, 2),
    (v_q, $t$Bäcker$t$, false, 3),
    (v_q, $t$Musiker$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wo arbeitet Wilhelm?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$In einem Labor$t$, true, 1),
    (v_q, $t$In einer Schule$t$, false, 2),
    (v_q, $t$In einer Küche$t$, false, 3),
    (v_q, $t$Auf einem Feld$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie reagiert Wilhelm auf das seltsame Licht?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er ist überrascht$t$, true, 1),
    (v_q, $t$Er ist gelangweilt$t$, false, 2),
    (v_q, $t$Er ist wütend$t$, false, 3),
    (v_q, $t$Er ist müde$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie nennt Wilhelm das Licht?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$X-Strahlen$t$, true, 1),
    (v_q, $t$Sonnenlicht$t$, false, 2),
    (v_q, $t$Mondlicht$t$, false, 3),
    (v_q, $t$Blitz$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wovon macht Wilhelm ein Bild?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Von der Hand seiner Frau$t$, true, 1),
    (v_q, $t$Von einem Baum$t$, false, 2),
    (v_q, $t$Von seinem Haus$t$, false, 3),
    (v_q, $t$Von einem Auto$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was sieht man auf dem Bild?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Die Knochen$t$, true, 1),
    (v_q, $t$Das Herz$t$, false, 2),
    (v_q, $t$Die Haare$t$, false, 3),
    (v_q, $t$Die Augen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wer nutzt die Entdeckung?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Ärzte$t$, true, 1),
    (v_q, $t$Nur Kinder$t$, false, 2),
    (v_q, $t$Nur Lehrer$t$, false, 3),
    (v_q, $t$Niemand$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bekommt Wilhelm später?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Einen berühmten Preis$t$, true, 1),
    (v_q, $t$Ein neues Haus$t$, false, 2),
    (v_q, $t$Ein Auto$t$, false, 3),
    (v_q, $t$Nichts$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was können Ärzte jetzt tun, ohne zu operieren?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Knochen sehen$t$, true, 1),
    (v_q, $t$Essen kochen$t$, false, 2),
    (v_q, $t$Musik hören$t$, false, 3),
    (v_q, $t$Bücher lesen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'der Knochen'?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$L'os$t$, true, 1),
    (v_q, $t$Le muscle$t$, false, 2),
    (v_q, $t$La peau$t$, false, 3),
    (v_q, $t$Le sang$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'entdecken'?$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Découvrir$t$, true, 1),
    (v_q, $t$Oublier$t$, false, 2),
    (v_q, $t$Cacher$t$, false, 3),
    (v_q, $t$Perdre$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'das Experiment'?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$L'expérience$t$, true, 1),
    (v_q, $t$La fête$t$, false, 2),
    (v_q, $t$La chanson$t$, false, 3),
    (v_q, $t$Le voyage$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie heißt 'sehen' in der Form für 'er'?$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$sieht$t$, true, 1),
    (v_q, $t$sehe$t$, false, 2),
    (v_q, $t$sehen$t$, false, 3),
    (v_q, $t$siehst$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie heißt 'machen' in der Form für 'ich'?$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$mache$t$, true, 1),
    (v_q, $t$machst$t$, false, 2),
    (v_q, $t$macht$t$, false, 3),
    (v_q, $t$machen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie heißt 'nutzen' in der Form für 'die Ärzte'?$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$nutzen$t$, true, 1),
    (v_q, $t$nutzt$t$, false, 2),
    (v_q, $t$nutze$t$, false, 3),
    (v_q, $t$nutzt du$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$Schreib zwei oder drei Sätze über eine Erfindung, die du wichtig findest.$t$, 1, 'normal', 'production', $t$Das Telefon ist sehr wichtig. Ich telefoniere oft mit meiner Familie. Die Erfindung hilft vielen Menschen.$t$);

END $block$;

-- 22. Ein Flug mit dem Zeppelin
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary) VALUES (
    'A1',
    $t$Ein Flug mit dem Zeppelin$t$,
    $t$Der Zeppelin ist ein großes Luftschiff. Es fliegt hoch am Himmel. Graf Zeppelin baut das Luftschiff. Es ist sehr lang und rund. Innen ist viel Gas. Das Gas macht das Luftschiff leicht. Menschen sitzen in einer Kabine. Sie fliegen über Städte und über das Meer. Die Reise ist ruhig und langsam. Von oben sehen die Passagiere Flüsse und Berge. Ein Motor bringt den Zeppelin nach vorne. Viele Menschen finden den Zeppelin faszinierend. Heute gibt es nur noch wenige Luftschiffe. Aber der Name Zeppelin ist immer noch berühmt.$t$,
    $t$Le zeppelin est un grand dirigeable. Il vole haut dans le ciel. Le comte Zeppelin construit le dirigeable. Il est très long et rond. À l'intérieur, il y a beaucoup de gaz. Le gaz rend le dirigeable léger. Des gens s'assoient dans une cabine. Ils volent au-dessus des villes et de la mer. Le voyage est calme et lent. D'en haut, les passagers voient des fleuves et des montagnes. Un moteur pousse le zeppelin vers l'avant. Beaucoup de gens trouvent le zeppelin fascinant. Aujourd'hui, il ne reste plus que quelques dirigeables. Mais le nom Zeppelin est toujours célèbre.$t$,
    $t${"Der":"le","Zeppelin":"zeppelin","ist":"est","ein":"un","großes":"grand","Luftschiff":"dirigeable","Es":"il","fliegt":"vole","hoch":"haut","am":"dans le","Himmel":"ciel","Graf":"comte","baut":"construit","das":"le","sehr":"très","lang":"long","und":"et","rund":"rond","Innen":"à l'intérieur","viel":"beaucoup de","Gas":"gaz","Das":"le","macht":"rend","leicht":"léger","Menschen":"gens","sitzen":"s'assoient","in":"dans","einer":"une","Kabine":"cabine","Sie":"ils","fliegen":"volent","über":"au-dessus de","Städte":"villes","Meer":"mer","Die":"le","Reise":"voyage","ruhig":"calme","langsam":"lent","Von":"d'","oben":"en haut","sehen":"voient","die":"les","Passagiere":"passagers","Flüsse":"fleuves","Berge":"montagnes","Ein":"un","Motor":"moteur","bringt":"pousse","den":"le","nach":"vers","vorne":"l'avant","Viele":"beaucoup de","finden":"trouvent","faszinierend":"fascinant","Heute":"aujourd'hui","gibt":"reste","es":"il","nur":"seulement","noch":"encore","wenige":"quelques","Luftschiffe":"dirigeables","Aber":"mais","der":"le","Name":"nom","immer":"toujours","berühmt":"célèbre"}$t$::jsonb
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was ist der Zeppelin?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Ein Luftschiff$t$, true, 1),
    (v_q, $t$Ein Auto$t$, false, 2),
    (v_q, $t$Ein Zug$t$, false, 3),
    (v_q, $t$Ein Boot$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wer baut den Zeppelin?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Graf Zeppelin$t$, true, 1),
    (v_q, $t$Ein König$t$, false, 2),
    (v_q, $t$Ein Kind$t$, false, 3),
    (v_q, $t$Ein Bäcker$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum ist das Luftschiff leicht?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Wegen des Gases$t$, true, 1),
    (v_q, $t$Wegen des Motors$t$, false, 2),
    (v_q, $t$Wegen der Kabine$t$, false, 3),
    (v_q, $t$Wegen des Windes$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wo sitzen die Menschen?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$In einer Kabine$t$, true, 1),
    (v_q, $t$Auf dem Dach$t$, false, 2),
    (v_q, $t$Im Wasser$t$, false, 3),
    (v_q, $t$Unter der Erde$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie ist die Reise?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Ruhig und langsam$t$, true, 1),
    (v_q, $t$Laut und schnell$t$, false, 2),
    (v_q, $t$Gefährlich$t$, false, 3),
    (v_q, $t$Kurz$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was sehen die Passagiere von oben?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Flüsse und Berge$t$, true, 1),
    (v_q, $t$Nur Wolken$t$, false, 2),
    (v_q, $t$Nur Häuser$t$, false, 3),
    (v_q, $t$Nichts$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bringt den Zeppelin nach vorne?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Ein Motor$t$, true, 1),
    (v_q, $t$Der Wind allein$t$, false, 2),
    (v_q, $t$Ein Vogel$t$, false, 3),
    (v_q, $t$Ein Pferd$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie finden viele Menschen den Zeppelin?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Faszinierend$t$, true, 1),
    (v_q, $t$Langweilig$t$, false, 2),
    (v_q, $t$Gefährlich$t$, false, 3),
    (v_q, $t$Unwichtig$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie ist die Situation heute?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Es gibt nur wenige Luftschiffe$t$, true, 1),
    (v_q, $t$Es gibt sehr viele$t$, false, 2),
    (v_q, $t$Niemand kennt den Namen$t$, false, 3),
    (v_q, $t$Alle fliegen Zeppelin$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'fliegen'?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Voler$t$, true, 1),
    (v_q, $t$Nager$t$, false, 2),
    (v_q, $t$Courir$t$, false, 3),
    (v_q, $t$Marcher$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'der Himmel'?$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Le ciel$t$, true, 1),
    (v_q, $t$La terre$t$, false, 2),
    (v_q, $t$La mer$t$, false, 3),
    (v_q, $t$La rue$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'ruhig'?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Calme$t$, true, 1),
    (v_q, $t$Bruyant$t$, false, 2),
    (v_q, $t$Rapide$t$, false, 3),
    (v_q, $t$Dangereux$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie heißt 'fliegen' in der Form für 'es' (das Luftschiff)?$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$fliegt$t$, true, 1),
    (v_q, $t$fliege$t$, false, 2),
    (v_q, $t$fliegen$t$, false, 3),
    (v_q, $t$fliegst$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie heißt 'sehen' in der Form für 'die Passagiere'?$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$sehen$t$, true, 1),
    (v_q, $t$sieht$t$, false, 2),
    (v_q, $t$siehst$t$, false, 3),
    (v_q, $t$sehe$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie heißt 'bauen' in der Form für 'er' (Graf Zeppelin)?$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$baut$t$, true, 1),
    (v_q, $t$baue$t$, false, 2),
    (v_q, $t$bauen$t$, false, 3),
    (v_q, $t$baust$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$Schreib zwei oder drei Sätze darüber, wie du gern reist.$t$, 1, 'normal', 'production', $t$Ich reise gern mit dem Zug. Ich sehe viele schöne Orte. Reisen macht mir Spaß.$t$);

END $block$;

-- 23. Die alte Universität in Heidelberg
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary) VALUES (
    'A1',
    $t$Die alte Universität in Heidelberg$t$,
    $t$Heidelberg ist eine Stadt am Fluss. Dort steht eine sehr alte Universität. Sie ist die älteste Universität in Deutschland. Viele Studenten kommen aus der ganzen Welt. Sie lernen Medizin, Recht oder Sprachen. Die Universität hat alte Gebäude aus Stein. In den Gebäuden sind große Bibliotheken. Die Studenten lesen viele Bücher. Sie sitzen zusammen in Cafés und diskutieren. Über der Stadt liegt ein Schloss. Vom Schloss sieht man die ganze Stadt. Heidelberg ist bekannt für Wissenschaft und Kultur. Jedes Jahr kommen neue Studenten in die Stadt.$t$,
    $t$Heidelberg est une ville au bord d'un fleuve. Là se trouve une très ancienne université. C'est la plus ancienne université d'Allemagne. Beaucoup d'étudiants viennent du monde entier. Ils étudient la médecine, le droit ou les langues. L'université a d'anciens bâtiments en pierre. Dans les bâtiments se trouvent de grandes bibliothèques. Les étudiants lisent beaucoup de livres. Ils s'assoient ensemble dans des cafés et discutent. Au-dessus de la ville se dresse un château. Du château, on voit toute la ville. Heidelberg est connue pour la science et la culture. Chaque année, de nouveaux étudiants arrivent dans la ville.$t$,
    $t${"Heidelberg":"Heidelberg","ist":"est","eine":"une","Stadt":"ville","am":"au bord du","Fluss":"fleuve","Dort":"là","steht":"se trouve","sehr":"très","alte":"ancienne","Universität":"université","Sie":"elle","die":"la","älteste":"la plus ancienne","in":"en","Deutschland":"Allemagne","Viele":"beaucoup de","Studenten":"étudiants","kommen":"viennent","aus":"de","der":"le","ganzen":"entier","Welt":"monde","lernen":"étudient","Medizin":"médecine","Recht":"droit","oder":"ou","Sprachen":"langues","Die":"l'","hat":"a","Gebäude":"bâtiments","Stein":"pierre","In":"dans","den":"les","Gebäuden":"bâtiments","sind":"se trouvent","große":"grandes","Bibliotheken":"bibliothèques","lesen":"lisent","viele":"beaucoup de","Bücher":"livres","sitzen":"s'assoient","zusammen":"ensemble","Cafés":"cafés","und":"et","diskutieren":"discutent","Über":"au-dessus de","liegt":"se dresse","ein":"un","Schloss":"château","Vom":"du","sieht":"voit","man":"on","ganze":"toute","bekannt":"connue","für":"pour","Wissenschaft":"science","Kultur":"culture","Jedes":"chaque","Jahr":"année","neue":"nouveaux"}$t$::jsonb
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wo liegt Heidelberg?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Am Fluss$t$, true, 1),
    (v_q, $t$Am Meer$t$, false, 2),
    (v_q, $t$In den Bergen$t$, false, 3),
    (v_q, $t$In der Wüste$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was ist besonders an der Universität?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie ist die älteste in Deutschland$t$, true, 1),
    (v_q, $t$Sie ist neu$t$, false, 2),
    (v_q, $t$Sie ist sehr klein$t$, false, 3),
    (v_q, $t$Sie ist geschlossen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was machen die Studenten in Cafés?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie diskutieren$t$, true, 1),
    (v_q, $t$Sie schlafen$t$, false, 2),
    (v_q, $t$Sie kochen$t$, false, 3),
    (v_q, $t$Sie tanzen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was lernen die Studenten?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Medizin, Recht oder Sprachen$t$, true, 1),
    (v_q, $t$Nur Kochen$t$, false, 2),
    (v_q, $t$Nur Musik$t$, false, 3),
    (v_q, $t$Nur Sport$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Woraus sind die alten Gebäude?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Aus Stein$t$, true, 1),
    (v_q, $t$Aus Glas$t$, false, 2),
    (v_q, $t$Aus Holz$t$, false, 3),
    (v_q, $t$Aus Plastik$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was ist in den Gebäuden?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Große Bibliotheken$t$, true, 1),
    (v_q, $t$Nur Küchen$t$, false, 2),
    (v_q, $t$Nur Sportplätze$t$, false, 3),
    (v_q, $t$Nichts$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was liegt über der Stadt?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Ein Schloss$t$, true, 1),
    (v_q, $t$Ein Bahnhof$t$, false, 2),
    (v_q, $t$Ein Markt$t$, false, 3),
    (v_q, $t$Ein Park$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wofür ist Heidelberg bekannt?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Wissenschaft und Kultur$t$, true, 1),
    (v_q, $t$Sport und Fußball$t$, false, 2),
    (v_q, $t$Nur Essen$t$, false, 3),
    (v_q, $t$Nur Musik$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was passiert jedes Jahr?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Neue Studenten kommen$t$, true, 1),
    (v_q, $t$Die Universität schließt$t$, false, 2),
    (v_q, $t$Niemand kommt mehr$t$, false, 3),
    (v_q, $t$Das Schloss fällt$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'die Universität'?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$L'université$t$, true, 1),
    (v_q, $t$L'hôpital$t$, false, 2),
    (v_q, $t$Le magasin$t$, false, 3),
    (v_q, $t$La gare$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'der Student'?$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$L'étudiant$t$, true, 1),
    (v_q, $t$Le professeur$t$, false, 2),
    (v_q, $t$Le médecin$t$, false, 3),
    (v_q, $t$Le chef$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'die Bibliothek'?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$La bibliothèque$t$, true, 1),
    (v_q, $t$Le restaurant$t$, false, 2),
    (v_q, $t$Le jardin$t$, false, 3),
    (v_q, $t$Le pont$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie heißt 'lernen' in der Form für 'die Studenten'?$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$lernen$t$, true, 1),
    (v_q, $t$lernt$t$, false, 2),
    (v_q, $t$lerne$t$, false, 3),
    (v_q, $t$lernst$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie heißt 'lesen' in der Form für 'sie' (Plural)?$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$lesen$t$, true, 1),
    (v_q, $t$liest$t$, false, 2),
    (v_q, $t$lese$t$, false, 3),
    (v_q, $t$lest$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie heißt 'kommen' in der Form für 'ich'?$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$komme$t$, true, 1),
    (v_q, $t$kommst$t$, false, 2),
    (v_q, $t$kommt$t$, false, 3),
    (v_q, $t$kommen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$Schreib zwei oder drei Sätze darüber, was du gern lernst.$t$, 1, 'normal', 'production', $t$Ich lerne gern Deutsch. Ich lese jeden Tag ein bisschen. Lernen macht mir Spaß.$t$);

END $block$;

-- 24. Bratwurst zum Mittagessen
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary) VALUES (
    'A1',
    $t$Bratwurst zum Mittagessen$t$,
    $t$Anna hat Hunger. Sie geht zu einem Imbiss in der Stadt. Dort gibt es Bratwurst. Die Bratwurst ist eine typisch deutsche Wurst. Der Verkäufer grillt die Wurst auf dem Grill. Es riecht sehr gut. Anna bestellt eine Bratwurst mit Brötchen. Sie nimmt auch Senf dazu. Die Wurst ist heiß und lecker. Anna isst langsam und genießt das Essen. Neben ihr stehen andere Leute. Sie essen auch Bratwurst. Viele Menschen essen Bratwurst bei Festen. In Deutschland gibt es viele verschiedene Sorten Wurst. Anna ist nach dem Essen satt und froh.$t$,
    $t$Anna a faim. Elle va à un stand de restauration rapide en ville. Là-bas, il y a de la bratwurst. La bratwurst est une saucisse typiquement allemande. Le vendeur grille la saucisse sur le gril. Ça sent très bon. Anna commande une bratwurst avec un petit pain. Elle prend aussi de la moutarde en accompagnement. La saucisse est chaude et délicieuse. Anna mange lentement et savoure le repas. À côté d'elle se tiennent d'autres personnes. Elles mangent aussi de la bratwurst. Beaucoup de gens mangent de la bratwurst lors des fêtes. En Allemagne, il existe de nombreuses sortes de saucisses différentes. Anna est rassasiée et contente après le repas.$t$,
    $t${"Anna":"Anna","hat":"a","Hunger":"faim","Sie":"elle","geht":"va","zu":"à","einem":"un","Imbiss":"stand de restauration rapide","in":"en","der":"la","Stadt":"ville","Dort":"là-bas","gibt":"y a","es":"il","Bratwurst":"bratwurst","Die":"la","ist":"est","eine":"une","typisch":"typiquement","deutsche":"allemande","Wurst":"saucisse","Der":"le","Verkäufer":"vendeur","grillt":"grille","die":"la","auf":"sur","dem":"le","Grill":"gril","Es":"ça","riecht":"sent","sehr":"très","gut":"bon","bestellt":"commande","mit":"avec","Brötchen":"petit pain","nimmt":"prend","auch":"aussi","Senf":"moutarde","dazu":"en accompagnement","heiß":"chaude","und":"et","lecker":"délicieuse","isst":"mange","langsam":"lentement","genießt":"savoure","das":"le","Essen":"repas","Neben":"à côté de","ihr":"elle","stehen":"se tiennent","andere":"d'autres","Leute":"personnes","essen":"mangent","Viele":"beaucoup de","Menschen":"gens","bei":"lors de","Festen":"fêtes","In":"en","Deutschland":"Allemagne","viele":"de nombreuses","verschiedene":"différentes","Sorten":"sortes","nach":"après","satt":"rassasiée","froh":"contente"}$t$::jsonb
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wohin geht Anna?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Zu einem Imbiss$t$, true, 1),
    (v_q, $t$Zur Schule$t$, false, 2),
    (v_q, $t$Ins Kino$t$, false, 3),
    (v_q, $t$Zum Arzt$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bestellt Anna?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Eine Bratwurst mit Brötchen$t$, true, 1),
    (v_q, $t$Einen Salat$t$, false, 2),
    (v_q, $t$Eine Suppe$t$, false, 3),
    (v_q, $t$Einen Kuchen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie fühlt sich Anna nach dem Essen?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Satt und froh$t$, true, 1),
    (v_q, $t$Hungrig$t$, false, 2),
    (v_q, $t$Traurig$t$, false, 3),
    (v_q, $t$Müde und wütend$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was macht der Verkäufer?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er grillt die Wurst$t$, true, 1),
    (v_q, $t$Er backt Brot$t$, false, 2),
    (v_q, $t$Er kocht Suppe$t$, false, 3),
    (v_q, $t$Er wäscht Teller$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was nimmt Anna zur Wurst?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Senf$t$, true, 1),
    (v_q, $t$Zucker$t$, false, 2),
    (v_q, $t$Milch$t$, false, 3),
    (v_q, $t$Käse$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie isst Anna ihre Bratwurst?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Langsam, mit Genuss$t$, true, 1),
    (v_q, $t$Sehr schnell$t$, false, 2),
    (v_q, $t$Ohne Freude$t$, false, 3),
    (v_q, $t$Im Stehen und traurig$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wer isst auch Bratwurst neben Anna?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Andere Leute$t$, true, 1),
    (v_q, $t$Niemand$t$, false, 2),
    (v_q, $t$Nur Kinder$t$, false, 3),
    (v_q, $t$Nur Hunde$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wann essen viele Menschen Bratwurst?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Bei Festen$t$, true, 1),
    (v_q, $t$Nur morgens$t$, false, 2),
    (v_q, $t$Nie$t$, false, 3),
    (v_q, $t$Nur im Winter$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was gibt es in Deutschland viel?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Verschiedene Sorten Wurst$t$, true, 1),
    (v_q, $t$Nur eine Sorte Wurst$t$, false, 2),
    (v_q, $t$Keine Wurst$t$, false, 3),
    (v_q, $t$Nur Fisch$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'die Wurst'?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$La saucisse$t$, true, 1),
    (v_q, $t$Le pain$t$, false, 2),
    (v_q, $t$Le fromage$t$, false, 3),
    (v_q, $t$Le poisson$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'der Hunger'?$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$La faim$t$, true, 1),
    (v_q, $t$La soif$t$, false, 2),
    (v_q, $t$Le froid$t$, false, 3),
    (v_q, $t$La chaleur$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'grillen'?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Griller$t$, true, 1),
    (v_q, $t$Laver$t$, false, 2),
    (v_q, $t$Couper$t$, false, 3),
    (v_q, $t$Congeler$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie heißt 'essen' in der Form für 'sie' (Anna)?$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$isst$t$, true, 1),
    (v_q, $t$esse$t$, false, 2),
    (v_q, $t$essen$t$, false, 3),
    (v_q, $t$esst$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie heißt 'gehen' in der Form für 'ich'?$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$gehe$t$, true, 1),
    (v_q, $t$gehst$t$, false, 2),
    (v_q, $t$geht$t$, false, 3),
    (v_q, $t$gehen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie heißt 'nehmen' in der Form für 'sie' (Anna)?$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$nimmt$t$, true, 1),
    (v_q, $t$nehme$t$, false, 2),
    (v_q, $t$nehmen$t$, false, 3),
    (v_q, $t$nimmst$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$Schreib zwei oder drei Sätze über dein Lieblingsessen.$t$, 1, 'normal', 'production', $t$Mein Lieblingsessen ist Pizza. Ich esse sie oft mit Freunden. Pizza schmeckt sehr gut.$t$);

END $block$;

-- 25. Dornröschen schläft hundert Jahre
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary) VALUES (
    'A1',
    $t$Dornröschen schläft hundert Jahre$t$,
    $t$Eine Königin bekommt eine Tochter. Das Mädchen heißt Dornröschen. Bei der Feier kommt eine böse Fee. Die Fee ist wütend, denn niemand lädt sie ein. Sie sagt: Das Mädchen schläft eines Tages ganz tief. Jahre später sticht sich Dornröschen an einer Spindel. Sofort schläft sie ein. Das ganze Schloss schläft auch. Um das Schloss wächst ein dichter Dornenwald. Hundert Jahre vergehen. Ein Prinz kommt durch den Wald. Er findet das Schloss und sieht Dornröschen. Er küsst sie sanft. Dornröschen wacht auf. Das ganze Schloss wacht auch auf. Alle sind wieder glücklich.$t$,
    $t$Une reine a une fille. La fillette s'appelle Belle au bois dormant. Lors de la fête, une méchante fée arrive. La fée est furieuse, car personne ne l'a invitée. Elle dit : la fillette s'endormira un jour d'un sommeil profond. Des années plus tard, Belle au bois dormant se pique à un fuseau. Elle s'endort aussitôt. Tout le château s'endort aussi. Autour du château pousse une forêt d'épines épaisse. Cent ans passent. Un prince traverse la forêt. Il trouve le château et voit Belle au bois dormant. Il l'embrasse doucement. Belle au bois dormant se réveille. Tout le château se réveille aussi. Tout le monde est de nouveau heureux.$t$,
    $t${"Eine":"une","Königin":"reine","bekommt":"a","eine":"une","Tochter":"fille","Das":"la","Mädchen":"fillette","heißt":"s'appelle","Dornröschen":"Belle au bois dormant","Bei":"lors de","der":"la","Feier":"fête","kommt":"arrive","böse":"méchante","Fee":"fée","Die":"la","ist":"est","wütend":"furieuse","denn":"car","niemand":"personne","lädt":"invite","sie":"elle/la","ein":"(particule d'inviter)","Sie":"elle","sagt":"dit","schläft":"s'endort","eines":"un","Tages":"jour","ganz":"tout à fait","tief":"profond","Jahre":"années","später":"plus tard","sticht":"pique","sich":"se","an":"à","einer":"un","Spindel":"fuseau","Sofort":"aussitôt","ganze":"tout le","Schloss":"château","auch":"aussi","Um":"autour de","das":"le","wächst":"pousse","dichter":"épaisse","Dornenwald":"forêt d'épines","Hundert":"cent","vergehen":"passent","Ein":"un","Prinz":"prince","durch":"à travers","den":"la","Wald":"forêt","Er":"il","findet":"trouve","und":"et","sieht":"voit","küsst":"embrasse","sanft":"doucement","wacht":"se réveille","auf":"(particule de se réveiller)","Alle":"tout le monde","sind":"est","wieder":"de nouveau","glücklich":"heureux"}$t$::jsonb
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie heißt das Mädchen?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Dornröschen$t$, true, 1),
    (v_q, $t$Gretel$t$, false, 2),
    (v_q, $t$Marie$t$, false, 3),
    (v_q, $t$Anna$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wer ist bei der Feier wütend?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Eine böse Fee$t$, true, 1),
    (v_q, $t$Der König$t$, false, 2),
    (v_q, $t$Ein Prinz$t$, false, 3),
    (v_q, $t$Ein Kind$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum ist die Fee wütend?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Niemand lädt sie ein$t$, true, 1),
    (v_q, $t$Sie hat Hunger$t$, false, 2),
    (v_q, $t$Sie ist müde$t$, false, 3),
    (v_q, $t$Das Schloss ist zu klein$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Woran sticht sich Dornröschen?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$An einer Spindel$t$, true, 1),
    (v_q, $t$An einer Nadel$t$, false, 2),
    (v_q, $t$An einem Messer$t$, false, 3),
    (v_q, $t$An einer Rose$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was wächst um das Schloss?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Ein Dornenwald$t$, true, 1),
    (v_q, $t$Ein Garten$t$, false, 2),
    (v_q, $t$Ein Fluss$t$, false, 3),
    (v_q, $t$Eine Mauer$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie lange schläft Dornröschen?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Hundert Jahre$t$, true, 1),
    (v_q, $t$Einen Tag$t$, false, 2),
    (v_q, $t$Eine Woche$t$, false, 3),
    (v_q, $t$Zehn Jahre$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wer findet das Schloss?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Ein Prinz$t$, true, 1),
    (v_q, $t$Ein Bauer$t$, false, 2),
    (v_q, $t$Ein König$t$, false, 3),
    (v_q, $t$Ein Kind$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie weckt der Prinz Dornröschen?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Mit einem Kuss$t$, true, 1),
    (v_q, $t$Mit Musik$t$, false, 2),
    (v_q, $t$Mit einem Ruf$t$, false, 3),
    (v_q, $t$Mit Wasser$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was passiert, als Dornröschen aufwacht?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Das ganze Schloss wacht auch auf$t$, true, 1),
    (v_q, $t$Nichts passiert$t$, false, 2),
    (v_q, $t$Der Wald verschwindet nicht$t$, false, 3),
    (v_q, $t$Alle bleiben traurig$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'schlafen'?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Dormir$t$, true, 1),
    (v_q, $t$Manger$t$, false, 2),
    (v_q, $t$Courir$t$, false, 3),
    (v_q, $t$Chanter$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'die Fee'?$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$La fée$t$, true, 1),
    (v_q, $t$Le roi$t$, false, 2),
    (v_q, $t$Le dragon$t$, false, 3),
    (v_q, $t$La forêt$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'aufwachen'?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Se réveiller$t$, true, 1),
    (v_q, $t$S'endormir$t$, false, 2),
    (v_q, $t$Pleurer$t$, false, 3),
    (v_q, $t$Rire$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie heißt 'schlafen' in der Form für 'sie' (Dornröschen)?$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$schläft$t$, true, 1),
    (v_q, $t$schlafe$t$, false, 2),
    (v_q, $t$schlafen$t$, false, 3),
    (v_q, $t$schläfst$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie heißt 'kommen' in der Form für 'er' (der Prinz)?$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$kommt$t$, true, 1),
    (v_q, $t$komme$t$, false, 2),
    (v_q, $t$kommen$t$, false, 3),
    (v_q, $t$kommst$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie heißt 'sehen' in der Form für 'er' (der Prinz)?$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$sieht$t$, true, 1),
    (v_q, $t$sehe$t$, false, 2),
    (v_q, $t$sehen$t$, false, 3),
    (v_q, $t$siehst$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$Schreib zwei oder drei Sätze über ein Märchen, das du magst.$t$, 1, 'normal', 'production', $t$Ich mag das Märchen Rotkäppchen. Ein Mädchen geht durch den Wald. Am Ende ist alles gut.$t$);

END $block$;

