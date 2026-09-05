-- Contenu "système scolaire allemand + patrimoine, vague 2" — niveau A1 (6 histoires).
-- Ajoute aussi 3 nouveaux types d'exercices : lueckentext (texte à trous),
-- grammar (grammaire ciblée) et true_false (vrai/faux justifié), ainsi
-- qu'une grille de correction (rubric) pour les questions de production.

-- 1. Die Schultüte am ersten Schultag
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary, culture_note) VALUES (
    'A1',
    $t$Die Schultüte am ersten Schultag$t$,
    $t$Lena ist sechs Jahre alt. Heute ist ihr erster Schultag. Die Mutter gibt Lena eine große Schultüte. Die Tüte ist bunt und hat viele Süßigkeiten. Lena trägt einen neuen Schulranzen. Die Familie geht zusammen zur Schule. Vor der Schule stehen viele Kinder mit ihren Eltern. Ein Lehrer begrüßt die Kinder. Lena sitzt in einem großen Klassenzimmer. Sie lernt ihre Klassenkameraden kennen. Nach der Schule öffnet Lena die Schultüte. Sie findet Bonbons, einen Stift und ein kleines Buch. Lena ist sehr glücklich.$t$,
    $t$Léna a six ans. Aujourd'hui c'est son premier jour d'école. La mère donne à Léna un grand cornet de bonbons. Le cornet est coloré et contient beaucoup de sucreries. Léna porte un nouveau cartable. La famille va ensemble à l'école. Devant l'école, il y a beaucoup d'enfants avec leurs parents. Un enseignant accueille les enfants. Léna est assise dans une grande salle de classe. Elle apprend à connaître ses camarades de classe. Après l'école, Léna ouvre le cornet de bonbons. Elle trouve des bonbons, un stylo et un petit livre. Léna est très heureuse.$t$,
    $t${"Lena":"Léna","ist":"est","sechs":"six","Jahre":"ans","alt":"âgée","Heute":"aujourd'hui","ihr":"son","erster":"premier","Schultag":"jour d'école","Die":"la","Mutter":"mère","gibt":"donne","eine":"une","große":"grand","Schultüte":"cornet de bonbons","Tüte":"cornet","bunt":"coloré","und":"et","hat":"a","viele":"beaucoup de","Süßigkeiten":"sucreries","trägt":"porte","einen":"un","neuen":"nouveau","Schulranzen":"cartable","Familie":"famille","geht":"va","zusammen":"ensemble","zur":"à la","Schule":"école","Vor":"devant","der":"la","stehen":"se tiennent","Kinder":"enfants","mit":"avec","ihren":"leurs","Eltern":"parents","Ein":"un","Lehrer":"enseignant","begrüßt":"accueille","die":"la","sitzt":"est assise","in":"dans","einem":"une","großen":"grande","Klassenzimmer":"salle de classe","Sie":"elle","lernt":"apprend","Klassenkameraden":"camarades de classe","kennen":"connaître","Nach":"après","öffnet":"ouvre","findet":"trouve","Bonbons":"bonbons","Stift":"stylo","ein":"un","kleines":"petit","Buch":"livre","sehr":"très","glücklich":"heureuse","ihre":"ses"}$t$::jsonb,
    $t$La tradition de la Schultüte pour la rentrée$t$
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie alt ist Lena?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sechs Jahre$t$, true, 1),
    (v_q, $t$Sieben Jahre$t$, false, 2),
    (v_q, $t$Fünf Jahre$t$, false, 3),
    (v_q, $t$Acht Jahre$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was gibt die Mutter Lena?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Eine große Schultüte$t$, true, 1),
    (v_q, $t$Einen neuen Ball$t$, false, 2),
    (v_q, $t$Ein Fahrrad$t$, false, 3),
    (v_q, $t$Ein Buch für die Schule$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was trägt Lena zusätzlich zur Schultüte?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Einen neuen Schulranzen$t$, true, 1),
    (v_q, $t$Ein neues Kleid$t$, false, 2),
    (v_q, $t$Neue Schuhe$t$, false, 3),
    (v_q, $t$Eine Mütze$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wer geht mit Lena zur Schule?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Die Familie$t$, true, 1),
    (v_q, $t$Nur die Mutter$t$, false, 2),
    (v_q, $t$Nur der Vater$t$, false, 3),
    (v_q, $t$Die Nachbarn$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wer steht vor der Schule?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Viele Kinder mit ihren Eltern$t$, true, 1),
    (v_q, $t$Nur die Lehrer$t$, false, 2),
    (v_q, $t$Nur Lena$t$, false, 3),
    (v_q, $t$Die Großeltern$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was macht der Lehrer vor der Schule?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er begrüßt die Kinder$t$, true, 1),
    (v_q, $t$Er singt ein Lied$t$, false, 2),
    (v_q, $t$Er gibt eine Schultüte$t$, false, 3),
    (v_q, $t$Er schließt die Tür$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wann öffnet Lena die Schultüte?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Nach der Schule$t$, true, 1),
    (v_q, $t$Vor der Schule$t$, false, 2),
    (v_q, $t$In der Pause$t$, false, 3),
    (v_q, $t$Am Morgen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was findet Lena in der Schultüte?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Bonbons, einen Stift und ein Buch$t$, true, 1),
    (v_q, $t$Nur Bonbons$t$, false, 2),
    (v_q, $t$Ein Spielzeugauto$t$, false, 3),
    (v_q, $t$Geld$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie fühlt sich Lena am Ende des Tages?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sehr glücklich$t$, true, 1),
    (v_q, $t$Sehr müde$t$, false, 2),
    (v_q, $t$Ein bisschen traurig$t$, false, 3),
    (v_q, $t$Nervös$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet „die Schultüte“ auf Französisch?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$le cornet de bonbons$t$, true, 1),
    (v_q, $t$le cartable$t$, false, 2),
    (v_q, $t$le cahier$t$, false, 3),
    (v_q, $t$le stylo$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet „begrüßen“ auf Französisch?$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$accueillir$t$, true, 1),
    (v_q, $t$quitter$t$, false, 2),
    (v_q, $t$chercher$t$, false, 3),
    (v_q, $t$attendre$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet „die Klassenkameraden“ auf Französisch?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$les camarades de classe$t$, true, 1),
    (v_q, $t$les professeurs$t$, false, 2),
    (v_q, $t$les voisins$t$, false, 3),
    (v_q, $t$les parents$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$„Lena ___ einen neuen Schulranzen.“ (tragen)$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$trägt$t$, true, 1),
    (v_q, $t$trage$t$, false, 2),
    (v_q, $t$tragen$t$, false, 3),
    (v_q, $t$tragt$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$„Die Familie ___ zusammen zur Schule.“ (gehen)$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$geht$t$, true, 1),
    (v_q, $t$gehe$t$, false, 2),
    (v_q, $t$gehen$t$, false, 3),
    (v_q, $t$gehst$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$„Lena ___ die Schultüte.“ (öffnen)$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$öffnet$t$, true, 1),
    (v_q, $t$öffne$t$, false, 2),
    (v_q, $t$öffnen$t$, false, 3),
    (v_q, $t$öffnest$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Lena ist sechs ___ alt.$t$, 1, 'facile', 'lueckentext') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Jahre$t$, true, 1),
    (v_q, $t$Tage$t$, false, 2),
    (v_q, $t$Wochen$t$, false, 3),
    (v_q, $t$Monate$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Die Mutter gibt Lena eine große ___.$t$, 1, 'normal', 'lueckentext') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Schultüte$t$, true, 1),
    (v_q, $t$Tasche$t$, false, 2),
    (v_q, $t$Kiste$t$, false, 3),
    (v_q, $t$Box$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Nach der Schule ___ Lena die Schultüte.$t$, 1, 'difficile', 'lueckentext') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$öffnet$t$, true, 1),
    (v_q, $t$schließt$t$, false, 2),
    (v_q, $t$verliert$t$, false, 3),
    (v_q, $t$sucht$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welcher Artikel passt? ___ Schultüte ist bunt.$t$, 1, 'facile', 'grammar') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Die$t$, true, 1),
    (v_q, $t$Der$t$, false, 2),
    (v_q, $t$Das$t$, false, 3),
    (v_q, $t$Den$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Präposition passt? Lena geht ___ Schule.$t$, 1, 'normal', 'grammar') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$zur$t$, true, 1),
    (v_q, $t$auf$t$, false, 2),
    (v_q, $t$in$t$, false, 3),
    (v_q, $t$bei$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wähle die richtige Wortstellung:$t$, 1, 'difficile', 'grammar') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Heute ist ihr erster Schultag.$t$, true, 1),
    (v_q, $t$Ist heute erster ihr Schultag.$t$, false, 2),
    (v_q, $t$Erster Schultag heute ist ihr.$t$, false, 3),
    (v_q, $t$Schultag ist heute ihr erster.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, justification)
    VALUES (v_story, $t$Lena ist sieben Jahre alt.$t$, 1, 'facile', 'true_false', $t$Lena ist sechs Jahre alt, nicht sieben.$t$) RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Wahr$t$, false, 1),
    (v_q, $t$Falsch$t$, true, 2);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, justification)
    VALUES (v_story, $t$Lena bekommt eine Schultüte von ihrer Mutter.$t$, 1, 'normal', 'true_false', $t$Die Mutter gibt Lena eine große Schultüte.$t$) RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Wahr$t$, true, 1),
    (v_q, $t$Falsch$t$, false, 2);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, justification)
    VALUES (v_story, $t$Lena findet nur Bonbons in der Schultüte.$t$, 1, 'difficile', 'true_false', $t$Sie findet Bonbons, einen Stift und ein kleines Buch.$t$) RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Wahr$t$, false, 1),
    (v_q, $t$Falsch$t$, true, 2);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer, rubric)
    VALUES (v_story, $t$Schreib drei Sätze: Was ist in deiner Schultüte oder in deinem Schulranzen?$t$, 1, 'normal', 'production', $t$In meinem Schulranzen ist ein Buch. Ich habe auch einen Stift. Meine Tasche ist blau.$t$, $t$[{"criterion":"Aufgabenerfüllung","description":"Der Text nennt mindestens zwei Gegenstände in der Tasche."},{"criterion":"Wortschatz","description":"Einfache Wörter für Schulsachen (Buch, Stift, Tasche)."},{"criterion":"Grammatik","description":"Präsens, einfache Sätze mit Verb an zweiter Stelle."},{"criterion":"Kohärenz","description":"Die drei Sätze passen inhaltlich zusammen."}]$t$::jsonb);

END $block$;

-- 2. Ein Tag in der Grundschule
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary, culture_note) VALUES (
    'A1',
    $t$Ein Tag in der Grundschule$t$,
    $t$Paul geht in die dritte Klasse. Die Schule beginnt um acht Uhr. Zuerst hat Paul Deutsch, dann Mathe. In der Pause spielt Paul mit seinen Freunden auf dem Schulhof. Sie essen ein Butterbrot und trinken Wasser. Nach der Pause hat die Klasse Sport. Die Kinder laufen und spielen Ball. Am Nachmittag malt Paul ein schönes Bild. Um zwölf Uhr ist die Schule zu Ende. Paul geht mit seiner Schwester nach Hause. Zu Hause macht er seine Hausaufgaben. Dann spielt er im Garten.$t$,
    $t$Paul est en CE2 (troisième classe). L'école commence à huit heures. D'abord Paul a allemand, puis maths. Pendant la récréation, Paul joue avec ses amis dans la cour. Ils mangent une tartine et boivent de l'eau. Après la récréation, la classe a sport. Les enfants courent et jouent au ballon. L'après-midi, Paul dessine un joli tableau. À midi, l'école se termine. Paul rentre à la maison avec sa sœur. À la maison, il fait ses devoirs. Ensuite, il joue dans le jardin.$t$,
    $t${"Paul":"Paul","geht":"va","in":"à","die":"la","dritte":"troisième","Klasse":"classe","Die":"la","Schule":"école","beginnt":"commence","um":"à (heure)","acht":"huit","Uhr":"heure","Zuerst":"d'abord","hat":"a","Deutsch":"allemand","dann":"puis","Mathe":"maths","In":"pendant","der":"la","Pause":"récréation","spielt":"joue","mit":"avec","seinen":"ses","Freunden":"amis","auf":"dans","dem":"la","Schulhof":"cour de l'école","Sie":"ils","essen":"mangent","ein":"une","Butterbrot":"tartine","und":"et","trinken":"boivent","Wasser":"eau","Nach":"après","Sport":"sport","Kinder":"enfants","laufen":"courent","spielen":"jouent","Ball":"ballon","Am":"l'","Nachmittag":"après-midi","malt":"dessine","schönes":"joli","Bild":"tableau","zwölf":"douze","ist":"est","zu":"à","Ende":"fin","Schwester":"sœur","nach":"vers","Hause":"maison","Zu":"à la","macht":"fait","er":"il","seine":"ses","Hausaufgaben":"devoirs","Dann":"ensuite","im":"dans le","Garten":"jardin","Um":"à","seiner":"sa"}$t$::jsonb,
    $t$Une journée à la Grundschule (école primaire)$t$
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$In welche Klasse geht Paul?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Die dritte Klasse$t$, true, 1),
    (v_q, $t$Die erste Klasse$t$, false, 2),
    (v_q, $t$Die fünfte Klasse$t$, false, 3),
    (v_q, $t$Die zweite Klasse$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wann beginnt die Schule?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Um acht Uhr$t$, true, 1),
    (v_q, $t$Um sieben Uhr$t$, false, 2),
    (v_q, $t$Um neun Uhr$t$, false, 3),
    (v_q, $t$Um zehn Uhr$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Fächer hat Paul zuerst?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Deutsch und Mathe$t$, true, 1),
    (v_q, $t$Sport und Kunst$t$, false, 2),
    (v_q, $t$Englisch und Musik$t$, false, 3),
    (v_q, $t$Mathe und Sport$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wo spielt Paul in der Pause?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Auf dem Schulhof$t$, true, 1),
    (v_q, $t$Im Klassenzimmer$t$, false, 2),
    (v_q, $t$Zu Hause$t$, false, 3),
    (v_q, $t$Im Park$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was essen die Kinder in der Pause?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Ein Butterbrot$t$, true, 1),
    (v_q, $t$Kuchen$t$, false, 2),
    (v_q, $t$Suppe$t$, false, 3),
    (v_q, $t$Nudeln$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was macht die Klasse nach der Pause?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sport$t$, true, 1),
    (v_q, $t$Mathe$t$, false, 2),
    (v_q, $t$Kunst$t$, false, 3),
    (v_q, $t$Musik$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wann ist die Schule zu Ende?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Um zwölf Uhr$t$, true, 1),
    (v_q, $t$Um eins$t$, false, 2),
    (v_q, $t$Um drei$t$, false, 3),
    (v_q, $t$Um vier$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Mit wem geht Paul nach Hause?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Mit seiner Schwester$t$, true, 1),
    (v_q, $t$Allein$t$, false, 2),
    (v_q, $t$Mit der Lehrerin$t$, false, 3),
    (v_q, $t$Mit Ben$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was macht Paul zu Hause zuerst?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er macht seine Hausaufgaben$t$, true, 1),
    (v_q, $t$Er spielt im Garten$t$, false, 2),
    (v_q, $t$Er isst Mittagessen$t$, false, 3),
    (v_q, $t$Er schläft$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet „der Schulhof“ auf Französisch?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$la cour de l'école$t$, true, 1),
    (v_q, $t$la salle de classe$t$, false, 2),
    (v_q, $t$le jardin$t$, false, 3),
    (v_q, $t$la rue$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet „die Pause“ auf Französisch?$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$la récréation$t$, true, 1),
    (v_q, $t$le cours$t$, false, 2),
    (v_q, $t$le devoir$t$, false, 3),
    (v_q, $t$l'examen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet „die Hausaufgaben“ auf Französisch?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$les devoirs$t$, true, 1),
    (v_q, $t$les vacances$t$, false, 2),
    (v_q, $t$les notes$t$, false, 3),
    (v_q, $t$les livres$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$„Paul ___ in die dritte Klasse.“ (gehen)$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$geht$t$, true, 1),
    (v_q, $t$gehe$t$, false, 2),
    (v_q, $t$gehen$t$, false, 3),
    (v_q, $t$gehst$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$„Die Kinder ___ und spielen Ball.“ (laufen)$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$laufen$t$, true, 1),
    (v_q, $t$läuft$t$, false, 2),
    (v_q, $t$laufe$t$, false, 3),
    (v_q, $t$läufst$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$„Paul ___ ein schönes Bild.“ (malen)$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$malt$t$, true, 1),
    (v_q, $t$male$t$, false, 2),
    (v_q, $t$malen$t$, false, 3),
    (v_q, $t$malst$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Die Schule beginnt um ___ Uhr.$t$, 1, 'facile', 'lueckentext') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$acht$t$, true, 1),
    (v_q, $t$neun$t$, false, 2),
    (v_q, $t$zehn$t$, false, 3),
    (v_q, $t$sieben$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$In der Pause spielt Paul mit seinen ___.$t$, 1, 'normal', 'lueckentext') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Freunden$t$, true, 1),
    (v_q, $t$Lehrern$t$, false, 2),
    (v_q, $t$Eltern$t$, false, 3),
    (v_q, $t$Geschwistern$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Paul geht mit seiner ___ nach Hause.$t$, 1, 'difficile', 'lueckentext') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Schwester$t$, true, 1),
    (v_q, $t$Mutter$t$, false, 2),
    (v_q, $t$Freundin$t$, false, 3),
    (v_q, $t$Lehrerin$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welcher Artikel passt? ___ Schule beginnt um acht Uhr.$t$, 1, 'facile', 'grammar') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Die$t$, true, 1),
    (v_q, $t$Der$t$, false, 2),
    (v_q, $t$Das$t$, false, 3),
    (v_q, $t$Den$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Präposition passt? Paul spielt ___ dem Schulhof.$t$, 1, 'normal', 'grammar') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$auf$t$, true, 1),
    (v_q, $t$in$t$, false, 2),
    (v_q, $t$zu$t$, false, 3),
    (v_q, $t$bei$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wähle die richtige Wortstellung:$t$, 1, 'difficile', 'grammar') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Nach der Pause hat die Klasse Sport.$t$, true, 1),
    (v_q, $t$Sport hat die Klasse Pause nach der.$t$, false, 2),
    (v_q, $t$Die Klasse Pause nach hat Sport.$t$, false, 3),
    (v_q, $t$Hat nach der Pause Sport die Klasse.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, justification)
    VALUES (v_story, $t$Paul geht in die zweite Klasse.$t$, 1, 'facile', 'true_false', $t$Paul geht in die dritte Klasse.$t$) RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Wahr$t$, false, 1),
    (v_q, $t$Falsch$t$, true, 2);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, justification)
    VALUES (v_story, $t$Die Kinder essen in der Pause ein Butterbrot.$t$, 1, 'normal', 'true_false', $t$Sie essen ein Butterbrot und trinken Wasser.$t$) RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Wahr$t$, true, 1),
    (v_q, $t$Falsch$t$, false, 2);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, justification)
    VALUES (v_story, $t$Die Schule ist um drei Uhr zu Ende.$t$, 1, 'difficile', 'true_false', $t$Um zwölf Uhr ist die Schule zu Ende.$t$) RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Wahr$t$, false, 1),
    (v_q, $t$Falsch$t$, true, 2);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer, rubric)
    VALUES (v_story, $t$Schreib drei Sätze: Wie ist ein typischer Schultag bei dir?$t$, 1, 'normal', 'production', $t$Meine Schule beginnt um acht Uhr. In der Pause spiele ich mit Freunden. Am Nachmittag mache ich Hausaufgaben.$t$, $t$[{"criterion":"Aufgabenerfüllung","description":"Der Text beschreibt mindestens zwei Momente eines Schultags."},{"criterion":"Wortschatz","description":"Wörter für Schulalltag (Pause, Freunde, Hausaufgaben)."},{"criterion":"Grammatik","description":"Präsens und Zeitangaben (um acht Uhr, am Nachmittag)."},{"criterion":"Kohärenz","description":"Die Sätze folgen einer logischen zeitlichen Reihenfolge."}]$t$::jsonb);

END $block$;

-- 3. Der Wechsel aufs Gymnasium
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary, culture_note) VALUES (
    'A1',
    $t$Der Wechsel aufs Gymnasium$t$,
    $t$Sophie ist zehn Jahre alt. Sie ist vier Jahre in der Grundschule. Jetzt wechselt Sophie auf das Gymnasium. Das Zeugnis von Sophie ist sehr gut. Die Eltern sind stolz. Am Gymnasium lernt Sophie neue Fächer wie Englisch und Erdkunde. Die Schule ist groß und hat viele Klassenzimmer. Sophie hat neue Mitschüler. Am ersten Tag ist Sophie ein bisschen nervös. Aber die Lehrerin ist freundlich. Schnell findet Sophie neue Freunde. Nach der Schule erzählt Sophie ihrer Mutter alles. Sie freut sich auf morgen.$t$,
    $t$Sophie a dix ans. Elle a passé quatre ans à l'école primaire. Maintenant Sophie passe au lycée (Gymnasium). Le bulletin de Sophie est très bon. Les parents sont fiers. Au Gymnasium, Sophie apprend de nouvelles matières comme l'anglais et la géographie. L'école est grande et a beaucoup de salles de classe. Sophie a de nouveaux camarades. Le premier jour, Sophie est un peu nerveuse. Mais l'enseignante est aimable. Sophie trouve vite de nouveaux amis. Après l'école, Sophie raconte tout à sa mère. Elle se réjouit de demain.$t$,
    $t${"Sophie":"Sophie","ist":"est","zehn":"dix","Jahre":"ans","alt":"âgée","Sie":"elle","vier":"quatre","in":"à","der":"la","Grundschule":"école primaire","Jetzt":"maintenant","wechselt":"passe","auf":"à","das":"le","Gymnasium":"lycée (Gymnasium)","Das":"le","Zeugnis":"bulletin","von":"de","sehr":"très","gut":"bon","Die":"les","Eltern":"parents","sind":"sont","stolz":"fiers","Am":"au","lernt":"apprend","neue":"nouvelles","Fächer":"matières","wie":"comme","Englisch":"anglais","und":"et","Erdkunde":"géographie","Schule":"école","groß":"grande","hat":"a","viele":"beaucoup de","Klassenzimmer":"salles de classe","Mitschüler":"camarades de classe","ersten":"premier","Tag":"jour","ein":"un","bisschen":"peu","nervös":"nerveuse","Aber":"mais","Lehrerin":"enseignante","freundlich":"aimable","Schnell":"vite","findet":"trouve","Freunde":"amis","Nach":"après","erzählt":"raconte","ihrer":"sa","Mutter":"mère","alles":"tout","freut":"réjouit","sich":"se","morgen":"demain","die":"la"}$t$::jsonb,
    $t$Le passage au Gymnasium après la 4e classe$t$
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie alt ist Sophie?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Zehn Jahre$t$, true, 1),
    (v_q, $t$Neun Jahre$t$, false, 2),
    (v_q, $t$Elf Jahre$t$, false, 3),
    (v_q, $t$Zwölf Jahre$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie lange war Sophie in der Grundschule?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Vier Jahre$t$, true, 1),
    (v_q, $t$Drei Jahre$t$, false, 2),
    (v_q, $t$Fünf Jahre$t$, false, 3),
    (v_q, $t$Zwei Jahre$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie ist das Zeugnis von Sophie?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sehr gut$t$, true, 1),
    (v_q, $t$Schlecht$t$, false, 2),
    (v_q, $t$Mittelmäßig$t$, false, 3),
    (v_q, $t$Nicht fertig$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche neue Schule besucht Sophie?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Das Gymnasium$t$, true, 1),
    (v_q, $t$Die Grundschule$t$, false, 2),
    (v_q, $t$Die Universität$t$, false, 3),
    (v_q, $t$Die Musikschule$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche neuen Fächer lernt Sophie?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Englisch und Erdkunde$t$, true, 1),
    (v_q, $t$Sport und Kunst$t$, false, 2),
    (v_q, $t$Musik und Mathe$t$, false, 3),
    (v_q, $t$Deutsch und Religion$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie ist die neue Schule?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Groß mit vielen Klassenzimmern$t$, true, 1),
    (v_q, $t$Klein und alt$t$, false, 2),
    (v_q, $t$Sehr weit weg$t$, false, 3),
    (v_q, $t$Ohne Klassenzimmer$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie fühlt sich Sophie am ersten Tag?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Ein bisschen nervös$t$, true, 1),
    (v_q, $t$Sehr traurig$t$, false, 2),
    (v_q, $t$Wütend$t$, false, 3),
    (v_q, $t$Müde$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie ist die Lehrerin?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Freundlich$t$, true, 1),
    (v_q, $t$Streng$t$, false, 2),
    (v_q, $t$Böse$t$, false, 3),
    (v_q, $t$Traurig$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was macht Sophie nach der Schule?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie erzählt ihrer Mutter alles$t$, true, 1),
    (v_q, $t$Sie schläft sofort$t$, false, 2),
    (v_q, $t$Sie geht zu Freunden$t$, false, 3),
    (v_q, $t$Sie macht Hausaufgaben$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet „das Zeugnis“ auf Französisch?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$le bulletin scolaire$t$, true, 1),
    (v_q, $t$le cahier$t$, false, 2),
    (v_q, $t$le cartable$t$, false, 3),
    (v_q, $t$l'examen oral$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet „stolz“ auf Französisch?$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$fier$t$, true, 1),
    (v_q, $t$triste$t$, false, 2),
    (v_q, $t$nerveux$t$, false, 3),
    (v_q, $t$fatigué$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet „die Mitschüler“ auf Französisch?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$les camarades de classe$t$, true, 1),
    (v_q, $t$les professeurs$t$, false, 2),
    (v_q, $t$les parents$t$, false, 3),
    (v_q, $t$les voisins$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$„Sophie ___ auf das Gymnasium.“ (wechseln)$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$wechselt$t$, true, 1),
    (v_q, $t$wechsle$t$, false, 2),
    (v_q, $t$wechseln$t$, false, 3),
    (v_q, $t$wechselst$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$„Sophie ___ neue Fächer.“ (lernen)$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$lernt$t$, true, 1),
    (v_q, $t$lerne$t$, false, 2),
    (v_q, $t$lernen$t$, false, 3),
    (v_q, $t$lernst$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$„Sie ___ sich auf morgen.“ (freuen)$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$freut$t$, true, 1),
    (v_q, $t$freue$t$, false, 2),
    (v_q, $t$freuen$t$, false, 3),
    (v_q, $t$freust$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Sophie ist ___ Jahre alt.$t$, 1, 'facile', 'lueckentext') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$zehn$t$, true, 1),
    (v_q, $t$neun$t$, false, 2),
    (v_q, $t$elf$t$, false, 3),
    (v_q, $t$acht$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Die Eltern sind ___.$t$, 1, 'normal', 'lueckentext') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$stolz$t$, true, 1),
    (v_q, $t$müde$t$, false, 2),
    (v_q, $t$traurig$t$, false, 3),
    (v_q, $t$böse$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Schnell findet Sophie neue ___.$t$, 1, 'difficile', 'lueckentext') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Freunde$t$, true, 1),
    (v_q, $t$Bücher$t$, false, 2),
    (v_q, $t$Lehrer$t$, false, 3),
    (v_q, $t$Fächer$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welcher Artikel passt? ___ Zeugnis ist sehr gut.$t$, 1, 'facile', 'grammar') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Das$t$, true, 1),
    (v_q, $t$Der$t$, false, 2),
    (v_q, $t$Die$t$, false, 3),
    (v_q, $t$Den$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Präposition passt? Sophie wechselt ___ das Gymnasium.$t$, 1, 'normal', 'grammar') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$auf$t$, true, 1),
    (v_q, $t$in$t$, false, 2),
    (v_q, $t$zu$t$, false, 3),
    (v_q, $t$bei$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wähle die richtige Wortstellung:$t$, 1, 'difficile', 'grammar') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Nach der Schule erzählt Sophie ihrer Mutter alles.$t$, true, 1),
    (v_q, $t$Erzählt Sophie nach der Schule alles ihrer Mutter.$t$, false, 2),
    (v_q, $t$Ihrer Mutter erzählt alles Sophie nach der Schule.$t$, false, 3),
    (v_q, $t$Alles erzählt nach der Schule Sophie ihrer Mutter.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, justification)
    VALUES (v_story, $t$Sophie ist elf Jahre alt.$t$, 1, 'facile', 'true_false', $t$Sophie ist zehn Jahre alt.$t$) RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Wahr$t$, false, 1),
    (v_q, $t$Falsch$t$, true, 2);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, justification)
    VALUES (v_story, $t$Sophie lernt am Gymnasium Englisch und Erdkunde.$t$, 1, 'normal', 'true_false', $t$Sophie lernt neue Fächer wie Englisch und Erdkunde.$t$) RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Wahr$t$, true, 1),
    (v_q, $t$Falsch$t$, false, 2);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, justification)
    VALUES (v_story, $t$Die Lehrerin ist unfreundlich.$t$, 1, 'difficile', 'true_false', $t$Aber die Lehrerin ist freundlich.$t$) RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Wahr$t$, false, 1),
    (v_q, $t$Falsch$t$, true, 2);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer, rubric)
    VALUES (v_story, $t$Schreib drei Sätze: Wie war dein erster Tag in einer neuen Schule oder Klasse?$t$, 1, 'normal', 'production', $t$Mein erster Tag war aufregend. Ich war ein bisschen nervös. Aber ich habe schnell neue Freunde gefunden.$t$, $t$[{"criterion":"Aufgabenerfüllung","description":"Der Text beschreibt Gefühle und ein Ereignis am ersten Tag."},{"criterion":"Wortschatz","description":"Wörter für Gefühle (nervös, glücklich) und Schule."},{"criterion":"Grammatik","description":"Präsens oder einfaches Perfekt, korrekte Adjektivendungen."},{"criterion":"Kohärenz","description":"Die Sätze bilden eine klare kleine Geschichte."}]$t$::jsonb);

END $block$;

-- 4. Der Schulweg mit dem Fahrrad
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary, culture_note) VALUES (
    'A1',
    $t$Der Schulweg mit dem Fahrrad$t$,
    $t$Max fährt jeden Tag mit dem Fahrrad zur Schule. Der Weg dauert zehn Minuten. Max trägt einen Helm, das ist wichtig. Im Sommer scheint die Sonne und der Weg ist schön. Im Winter ist es kalt, aber Max fährt trotzdem. Er fährt durch den Park. Manchmal fährt sein Freund Ben mit. Sie sprechen über Fußball und über die Schule. An der Ampel warten sie und schauen nach links und rechts. Vor der Schule stellen sie die Fahrräder ab. Max mag seinen Schulweg sehr.$t$,
    $t$Max va à l'école à vélo tous les jours. Le trajet dure dix minutes. Max porte un casque, c'est important. En été, le soleil brille et le trajet est agréable. En hiver il fait froid, mais Max y va quand même. Il traverse le parc. Parfois son ami Ben vient avec lui. Ils parlent de football et de l'école. Au feu, ils attendent et regardent à gauche et à droite. Devant l'école, ils garent leurs vélos. Max aime beaucoup son trajet vers l'école.$t$,
    $t${"Max":"Max","fährt":"va (en véhicule)","jeden":"chaque","Tag":"jour","mit":"avec","dem":"le","Fahrrad":"vélo","zur":"à la","Schule":"école","Der":"le","Weg":"trajet","dauert":"dure","zehn":"dix","Minuten":"minutes","trägt":"porte","einen":"un","Helm":"casque","das":"cela","ist":"est","wichtig":"important","Im":"en","Sommer":"été","scheint":"brille","die":"le","Sonne":"soleil","und":"et","schön":"agréable","Winter":"hiver","es":"il (impersonnel)","kalt":"froid","aber":"mais","trotzdem":"quand même","Er":"il","durch":"à travers","den":"le","Park":"parc","Manchmal":"parfois","sein":"son","Freund":"ami","Ben":"Ben","Sie":"ils","sprechen":"parlent","über":"de","Fußball":"football","An":"au","Ampel":"feu","warten":"attendent","schauen":"regardent","nach":"vers","links":"à gauche","rechts":"à droite","Vor":"devant","stellen":"garent","Fahrräder":"vélos","ab":"(garer)","mag":"aime","seinen":"son","Schulweg":"trajet vers l'école","sehr":"beaucoup","der":"le","sie":"ils"}$t$::jsonb,
    $t$Le trajet à vélo pour aller à l'école en Allemagne$t$
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Womit fährt Max zur Schule?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Mit dem Fahrrad$t$, true, 1),
    (v_q, $t$Mit dem Bus$t$, false, 2),
    (v_q, $t$Zu Fuß$t$, false, 3),
    (v_q, $t$Mit dem Auto$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie lange dauert der Weg?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Zehn Minuten$t$, true, 1),
    (v_q, $t$Fünf Minuten$t$, false, 2),
    (v_q, $t$Zwanzig Minuten$t$, false, 3),
    (v_q, $t$Eine Stunde$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was trägt Max, weil es wichtig ist?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Einen Helm$t$, true, 1),
    (v_q, $t$Eine Mütze$t$, false, 2),
    (v_q, $t$Eine Jacke$t$, false, 3),
    (v_q, $t$Handschuhe$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie ist der Weg im Sommer?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Schön, die Sonne scheint$t$, true, 1),
    (v_q, $t$Kalt$t$, false, 2),
    (v_q, $t$Nass$t$, false, 3),
    (v_q, $t$Dunkel$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wer fährt manchmal mit Max mit?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sein Freund Ben$t$, true, 1),
    (v_q, $t$Seine Schwester$t$, false, 2),
    (v_q, $t$Sein Lehrer$t$, false, 3),
    (v_q, $t$Seine Mutter$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Worüber sprechen Max und Ben?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Über Fußball und die Schule$t$, true, 1),
    (v_q, $t$Über das Wetter$t$, false, 2),
    (v_q, $t$Über Musik$t$, false, 3),
    (v_q, $t$Über Tiere$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was machen Max und Ben an der Ampel?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie warten$t$, true, 1),
    (v_q, $t$Sie fahren schnell$t$, false, 2),
    (v_q, $t$Sie singen$t$, false, 3),
    (v_q, $t$Sie essen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was machen sie vor der Schule?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie stellen die Fahrräder ab$t$, true, 1),
    (v_q, $t$Sie spielen Fußball$t$, false, 2),
    (v_q, $t$Sie essen Frühstück$t$, false, 3),
    (v_q, $t$Sie warten auf den Bus$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie findet Max seinen Schulweg?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er mag ihn sehr$t$, true, 1),
    (v_q, $t$Er findet ihn langweilig$t$, false, 2),
    (v_q, $t$Er findet ihn zu lang$t$, false, 3),
    (v_q, $t$Er mag ihn nicht$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet „der Helm“ auf Französisch?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$le casque$t$, true, 1),
    (v_q, $t$le vélo$t$, false, 2),
    (v_q, $t$la route$t$, false, 3),
    (v_q, $t$le sac$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet „die Ampel“ auf Französisch?$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$le feu (de signalisation)$t$, true, 1),
    (v_q, $t$le pont$t$, false, 2),
    (v_q, $t$le parc$t$, false, 3),
    (v_q, $t$la rue$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet „trotzdem“ auf Französisch?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$quand même$t$, true, 1),
    (v_q, $t$jamais$t$, false, 2),
    (v_q, $t$toujours$t$, false, 3),
    (v_q, $t$souvent$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$„Max ___ jeden Tag mit dem Fahrrad.“ (fahren)$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$fährt$t$, true, 1),
    (v_q, $t$fahre$t$, false, 2),
    (v_q, $t$fahren$t$, false, 3),
    (v_q, $t$fährst$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$„Sie ___ über Fußball.“ (sprechen)$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$sprechen$t$, true, 1),
    (v_q, $t$spricht$t$, false, 2),
    (v_q, $t$spreche$t$, false, 3),
    (v_q, $t$sprichst$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$„Sie ___ an der Ampel.“ (warten)$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$warten$t$, true, 1),
    (v_q, $t$wartet$t$, false, 2),
    (v_q, $t$warte$t$, false, 3),
    (v_q, $t$wartest$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Max fährt mit dem ___ zur Schule.$t$, 1, 'facile', 'lueckentext') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Fahrrad$t$, true, 1),
    (v_q, $t$Bus$t$, false, 2),
    (v_q, $t$Auto$t$, false, 3),
    (v_q, $t$Zug$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Im Winter ist es ___.$t$, 1, 'normal', 'lueckentext') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$kalt$t$, true, 1),
    (v_q, $t$warm$t$, false, 2),
    (v_q, $t$heiß$t$, false, 3),
    (v_q, $t$trocken$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Vor der Schule ___ sie die Fahrräder ab.$t$, 1, 'difficile', 'lueckentext') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$stellen$t$, true, 1),
    (v_q, $t$fahren$t$, false, 2),
    (v_q, $t$suchen$t$, false, 3),
    (v_q, $t$waschen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welcher Artikel passt? ___ Weg dauert zehn Minuten.$t$, 1, 'facile', 'grammar') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Der$t$, true, 1),
    (v_q, $t$Die$t$, false, 2),
    (v_q, $t$Das$t$, false, 3),
    (v_q, $t$Den$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Präposition passt? Max fährt ___ den Park.$t$, 1, 'normal', 'grammar') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$durch$t$, true, 1),
    (v_q, $t$auf$t$, false, 2),
    (v_q, $t$zu$t$, false, 3),
    (v_q, $t$bei$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wähle die richtige Wortstellung:$t$, 1, 'difficile', 'grammar') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Manchmal fährt sein Freund Ben mit.$t$, true, 1),
    (v_q, $t$Fährt manchmal mit sein Freund Ben.$t$, false, 2),
    (v_q, $t$Sein Freund Ben manchmal fährt mit.$t$, false, 3),
    (v_q, $t$Mit fährt manchmal sein Freund Ben.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, justification)
    VALUES (v_story, $t$Max fährt mit dem Bus zur Schule.$t$, 1, 'facile', 'true_false', $t$Max fährt jeden Tag mit dem Fahrrad zur Schule.$t$) RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Wahr$t$, false, 1),
    (v_q, $t$Falsch$t$, true, 2);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, justification)
    VALUES (v_story, $t$Max trägt einen Helm.$t$, 1, 'normal', 'true_false', $t$Max trägt einen Helm, das ist wichtig.$t$) RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Wahr$t$, true, 1),
    (v_q, $t$Falsch$t$, false, 2);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, justification)
    VALUES (v_story, $t$Max fährt im Winter nicht mit dem Fahrrad.$t$, 1, 'difficile', 'true_false', $t$Im Winter ist es kalt, aber Max fährt trotzdem.$t$) RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Wahr$t$, false, 1),
    (v_q, $t$Falsch$t$, true, 2);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer, rubric)
    VALUES (v_story, $t$Schreib drei Sätze: Wie kommst du zur Schule oder zur Arbeit?$t$, 1, 'normal', 'production', $t$Ich fahre mit dem Bus. Der Weg dauert fünfzehn Minuten. Ich höre Musik unterwegs.$t$, $t$[{"criterion":"Aufgabenerfüllung","description":"Der Text nennt das Verkehrsmittel und eine Zeitangabe."},{"criterion":"Wortschatz","description":"Wörter für Verkehrsmittel und Wegbeschreibung."},{"criterion":"Grammatik","description":"Präsens, korrekte Verbstellung."},{"criterion":"Kohärenz","description":"Die Sätze beschreiben logisch den gleichen Weg."}]$t$::jsonb);

END $block$;

-- 5. Sankt Martin und die Laterne
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary, culture_note) VALUES (
    'A1',
    $t$Sankt Martin und die Laterne$t$,
    $t$Im November feiern die Kinder Sankt Martin. Jedes Kind bastelt eine bunte Laterne. Am Abend ist es dunkel. Die Kinder gehen mit ihren Laternen durch die Straßen. Das nennt man Laternenumzug. Ein Mann reitet auf einem Pferd, er spielt Sankt Martin. Die Kinder singen schöne Lieder. Die Geschichte erzählt: Sankt Martin teilt seinen warmen Mantel mit einem armen Mann. Nach dem Umzug gibt es ein großes Feuer. Viele Familien essen zusammen eine Martinsgans. Die Kinder finden das Fest sehr schön.$t$,
    $t$En novembre, les enfants fêtent la Saint-Martin. Chaque enfant fabrique une lanterne colorée. Le soir, il fait sombre. Les enfants marchent avec leurs lanternes dans les rues. Cela s'appelle le défilé aux lanternes. Un homme monte à cheval, il joue le rôle de saint Martin. Les enfants chantent de belles chansons. L'histoire raconte : saint Martin partage son manteau chaud avec un homme pauvre. Après le défilé, il y a un grand feu. Beaucoup de familles mangent ensemble une oie de la Saint-Martin. Les enfants trouvent la fête très belle.$t$,
    $t${"Im":"en","November":"novembre","feiern":"fêtent","die":"les","Kinder":"enfants","Sankt Martin":"saint Martin","Jedes":"chaque","Kind":"enfant","bastelt":"fabrique","eine":"une","bunte":"colorée","Laterne":"lanterne","Am":"le","Abend":"soir","ist":"est","es":"il","dunkel":"sombre","Die":"les","gehen":"marchent","mit":"avec","ihren":"leurs","Laternen":"lanternes","durch":"à travers","Straßen":"rues","Das":"cela","nennt":"appelle","man":"on","Laternenumzug":"défilé aux lanternes","Ein":"un","Mann":"homme","reitet":"monte à cheval","auf":"sur","einem":"un","Pferd":"cheval","er":"il","spielt":"joue","singen":"chantent","schöne":"belles","Lieder":"chansons","Geschichte":"histoire","erzählt":"raconte","teilt":"partage","seinen":"son","warmen":"chaud","Mantel":"manteau","armen":"pauvre","Nach":"après","dem":"le","Umzug":"défilé","gibt":"il y a","ein":"un","großes":"grand","Feuer":"feu","Viele":"beaucoup de","Familien":"familles","essen":"mangent","zusammen":"ensemble","Martinsgans":"oie de la Saint-Martin","finden":"trouvent","das":"la","Fest":"fête","sehr":"très","schön":"belle","Sankt":"saint","Martin":"Martin"}$t$::jsonb,
    $t$La tradition de la Saint-Martin (Sankt Martin)$t$
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wann feiern die Kinder Sankt Martin?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Im November$t$, true, 1),
    (v_q, $t$Im Dezember$t$, false, 2),
    (v_q, $t$Im Sommer$t$, false, 3),
    (v_q, $t$Im Frühling$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bastelt jedes Kind?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Eine bunte Laterne$t$, true, 1),
    (v_q, $t$Ein Bild$t$, false, 2),
    (v_q, $t$Einen Hut$t$, false, 3),
    (v_q, $t$Eine Karte$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie heißt der Umzug mit den Laternen?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Laternenumzug$t$, true, 1),
    (v_q, $t$Weihnachtsmarkt$t$, false, 2),
    (v_q, $t$Schulfest$t$, false, 3),
    (v_q, $t$Martinstag$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wer reitet auf einem Pferd?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Ein Mann, der Sankt Martin spielt$t$, true, 1),
    (v_q, $t$Ein Kind$t$, false, 2),
    (v_q, $t$Der Lehrer$t$, false, 3),
    (v_q, $t$Der Vater$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was machen die Kinder beim Umzug?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie singen schöne Lieder$t$, true, 1),
    (v_q, $t$Sie tanzen$t$, false, 2),
    (v_q, $t$Sie laufen schnell$t$, false, 3),
    (v_q, $t$Sie schweigen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was macht Sankt Martin in der Geschichte?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er teilt seinen Mantel mit einem armen Mann$t$, true, 1),
    (v_q, $t$Er kämpft gegen einen Drachen$t$, false, 2),
    (v_q, $t$Er baut ein Haus$t$, false, 3),
    (v_q, $t$Er reitet allein weg$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was gibt es nach dem Umzug?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Ein großes Feuer$t$, true, 1),
    (v_q, $t$Ein Konzert$t$, false, 2),
    (v_q, $t$Ein Fußballspiel$t$, false, 3),
    (v_q, $t$Ein Theaterstück$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was essen viele Familien zusammen?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Eine Martinsgans$t$, true, 1),
    (v_q, $t$Bratwurst$t$, false, 2),
    (v_q, $t$Kuchen$t$, false, 3),
    (v_q, $t$Suppe$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie finden die Kinder das Fest?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sehr schön$t$, true, 1),
    (v_q, $t$Langweilig$t$, false, 2),
    (v_q, $t$Zu kalt$t$, false, 3),
    (v_q, $t$Zu laut$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet „die Laterne“ auf Französisch?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$la lanterne$t$, true, 1),
    (v_q, $t$la bougie$t$, false, 2),
    (v_q, $t$le feu$t$, false, 3),
    (v_q, $t$la lampe de poche$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet „teilen“ auf Französisch?$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$partager$t$, true, 1),
    (v_q, $t$garder$t$, false, 2),
    (v_q, $t$vendre$t$, false, 3),
    (v_q, $t$perdre$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet „der Mantel“ auf Französisch?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$le manteau$t$, true, 1),
    (v_q, $t$le chapeau$t$, false, 2),
    (v_q, $t$les gants$t$, false, 3),
    (v_q, $t$les chaussures$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$„Die Kinder ___ Sankt Martin.“ (feiern)$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$feiern$t$, true, 1),
    (v_q, $t$feiert$t$, false, 2),
    (v_q, $t$feiere$t$, false, 3),
    (v_q, $t$feierst$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$„Ein Mann ___ auf einem Pferd.“ (reiten)$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$reitet$t$, true, 1),
    (v_q, $t$reite$t$, false, 2),
    (v_q, $t$reiten$t$, false, 3),
    (v_q, $t$reitest$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$„Sankt Martin ___ seinen Mantel.“ (teilen)$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$teilt$t$, true, 1),
    (v_q, $t$teile$t$, false, 2),
    (v_q, $t$teilen$t$, false, 3),
    (v_q, $t$teilst$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Jedes Kind bastelt eine bunte ___.$t$, 1, 'facile', 'lueckentext') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Laterne$t$, true, 1),
    (v_q, $t$Tasche$t$, false, 2),
    (v_q, $t$Mütze$t$, false, 3),
    (v_q, $t$Karte$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Sankt Martin teilt seinen warmen ___.$t$, 1, 'normal', 'lueckentext') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Mantel$t$, true, 1),
    (v_q, $t$Schuh$t$, false, 2),
    (v_q, $t$Hut$t$, false, 3),
    (v_q, $t$Ring$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Viele Familien essen eine ___.$t$, 1, 'difficile', 'lueckentext') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Martinsgans$t$, true, 1),
    (v_q, $t$Bratwurst$t$, false, 2),
    (v_q, $t$Pizza$t$, false, 3),
    (v_q, $t$Suppe$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welcher Artikel passt? ___ Laterne ist bunt.$t$, 1, 'facile', 'grammar') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Die$t$, true, 1),
    (v_q, $t$Der$t$, false, 2),
    (v_q, $t$Das$t$, false, 3),
    (v_q, $t$Den$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Präposition passt? Die Kinder gehen ___ die Straßen.$t$, 1, 'normal', 'grammar') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$durch$t$, true, 1),
    (v_q, $t$auf$t$, false, 2),
    (v_q, $t$zu$t$, false, 3),
    (v_q, $t$bei$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wähle die richtige Wortstellung:$t$, 1, 'difficile', 'grammar') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Nach dem Umzug gibt es ein großes Feuer.$t$, true, 1),
    (v_q, $t$Gibt es nach dem Umzug ein großes Feuer es.$t$, false, 2),
    (v_q, $t$Ein großes Feuer nach dem Umzug gibt es.$t$, false, 3),
    (v_q, $t$Es gibt ein großes nach dem Umzug Feuer.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, justification)
    VALUES (v_story, $t$Die Kinder feiern Sankt Martin im Sommer.$t$, 1, 'facile', 'true_false', $t$Im November feiern die Kinder Sankt Martin.$t$) RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Wahr$t$, false, 1),
    (v_q, $t$Falsch$t$, true, 2);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, justification)
    VALUES (v_story, $t$Sankt Martin teilt seinen Mantel mit einem armen Mann.$t$, 1, 'normal', 'true_false', $t$Sankt Martin teilt seinen warmen Mantel mit einem armen Mann.$t$) RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Wahr$t$, true, 1),
    (v_q, $t$Falsch$t$, false, 2);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, justification)
    VALUES (v_story, $t$Nach dem Umzug gibt es kein Essen.$t$, 1, 'difficile', 'true_false', $t$Viele Familien essen zusammen eine Martinsgans.$t$) RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Wahr$t$, false, 1),
    (v_q, $t$Falsch$t$, true, 2);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer, rubric)
    VALUES (v_story, $t$Schreib drei Sätze: Wie feierst du ein Fest mit Licht oder Feuer?$t$, 1, 'normal', 'production', $t$Ich mag Kerzenlicht am Abend. Meine Familie feiert oft mit einem Feuer. Wir singen zusammen Lieder.$t$, $t$[{"criterion":"Aufgabenerfüllung","description":"Der Text beschreibt ein Fest oder eine Feier mit Licht/Feuer."},{"criterion":"Wortschatz","description":"Wörter zu Festen (Feuer, Licht, singen, feiern)."},{"criterion":"Grammatik","description":"Präsens, einfache Hauptsätze."},{"criterion":"Kohärenz","description":"Die drei Sätze bilden ein stimmiges kleines Bild."}]$t$::jsonb);

END $block$;

-- 6. Der Nikolaustag am sechsten Dezember
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary, culture_note) VALUES (
    'A1',
    $t$Der Nikolaustag am sechsten Dezember$t$,
    $t$Am sechsten Dezember kommt der Nikolaus. Die Kinder putzen am Abend vorher ihre Schuhe. Sie stellen die Schuhe vor die Tür. In der Nacht kommt der Nikolaus und bringt kleine Geschenke. Am Morgen finden die Kinder Nüsse, Mandarinen und Schokolade in den Schuhen. In den Schulen und Kindergärten gibt es oft eine Feier. Ein Mann verkleidet sich als Nikolaus mit einem roten Mantel und einem langen Bart. Die Kinder singen Lieder für ihn. Alle Kinder freuen sich sehr über den Nikolaustag.$t$,
    $t$Le six décembre arrive saint Nicolas. Les enfants nettoient leurs chaussures le soir d'avant. Ils posent les chaussures devant la porte. Dans la nuit, saint Nicolas arrive et apporte de petits cadeaux. Le matin, les enfants trouvent des noix, des mandarines et du chocolat dans les chaussures. Dans les écoles et les jardins d'enfants, il y a souvent une fête. Un homme se déguise en saint Nicolas avec un manteau rouge et une longue barbe. Les enfants chantent des chansons pour lui. Tous les enfants sont très contents de la fête de saint Nicolas.$t$,
    $t${"Am":"le","sechsten":"sixième","Dezember":"décembre","kommt":"arrive","der":"le","Nikolaus":"saint Nicolas","Die":"les","Kinder":"enfants","putzen":"nettoient","Abend":"soir","vorher":"avant","ihre":"leurs","Schuhe":"chaussures","Sie":"ils","stellen":"posent","die":"les","vor":"devant","Tür":"porte","In":"dans","Nacht":"nuit","und":"et","bringt":"apporte","kleine":"petits","Geschenke":"cadeaux","Morgen":"matin","finden":"trouvent","Nüsse":"noix","Mandarinen":"mandarines","Schokolade":"chocolat","in":"dans","den":"les","Schuhen":"chaussures","Schulen":"écoles","Kindergärten":"jardins d'enfants","gibt":"il y a","es":"il","oft":"souvent","eine":"une","Feier":"fête","Ein":"un","Mann":"homme","verkleidet":"déguise","sich":"se","als":"en","mit":"avec","einem":"un","roten":"rouge","Mantel":"manteau","langen":"longue","Bart":"barbe","singen":"chantent","Lieder":"chansons","für":"pour","ihn":"lui","Alle":"tous","freuen":"réjouissent","sehr":"beaucoup","über":"de","Nikolaustag":"fête de saint Nicolas","am":"le"}$t$::jsonb,
    $t$La tradition de la Saint-Nicolas (Nikolaus) le 6 décembre$t$
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wann kommt der Nikolaus?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Am sechsten Dezember$t$, true, 1),
    (v_q, $t$Am ersten Dezember$t$, false, 2),
    (v_q, $t$Am Weihnachtstag$t$, false, 3),
    (v_q, $t$Am ersten Januar$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was putzen die Kinder am Abend vorher?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Ihre Schuhe$t$, true, 1),
    (v_q, $t$Ihre Zähne$t$, false, 2),
    (v_q, $t$Ihre Kleidung$t$, false, 3),
    (v_q, $t$Ihr Zimmer$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wohin stellen die Kinder ihre Schuhe?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Vor die Tür$t$, true, 1),
    (v_q, $t$Ins Bett$t$, false, 2),
    (v_q, $t$Auf den Tisch$t$, false, 3),
    (v_q, $t$In den Schrank$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bringt der Nikolaus in der Nacht?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Kleine Geschenke$t$, true, 1),
    (v_q, $t$Ein Fahrrad$t$, false, 2),
    (v_q, $t$Einen Hund$t$, false, 3),
    (v_q, $t$Bücher für die Schule$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was finden die Kinder am Morgen in den Schuhen?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Nüsse, Mandarinen und Schokolade$t$, true, 1),
    (v_q, $t$Nur Geld$t$, false, 2),
    (v_q, $t$Spielzeug$t$, false, 3),
    (v_q, $t$Kleidung$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was gibt es oft in Schulen und Kindergärten?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Eine Feier$t$, true, 1),
    (v_q, $t$Ferien$t$, false, 2),
    (v_q, $t$Prüfungen$t$, false, 3),
    (v_q, $t$Nichts Besonderes$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie sieht der verkleidete Mann aus?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Roter Mantel und langer Bart$t$, true, 1),
    (v_q, $t$Blauer Mantel und kurzer Bart$t$, false, 2),
    (v_q, $t$Grüner Hut und Brille$t$, false, 3),
    (v_q, $t$Schwarzer Mantel ohne Bart$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was singen die Kinder für Nikolaus?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Lieder$t$, true, 1),
    (v_q, $t$Nichts$t$, false, 2),
    (v_q, $t$Ein Gedicht$t$, false, 3),
    (v_q, $t$Eine Geschichte$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie fühlen sich die Kinder am Nikolaustag?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie freuen sich sehr$t$, true, 1),
    (v_q, $t$Sie sind traurig$t$, false, 2),
    (v_q, $t$Sie sind müde$t$, false, 3),
    (v_q, $t$Sie sind gelangweilt$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet „der Nikolaus“ auf Französisch?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$saint Nicolas$t$, true, 1),
    (v_q, $t$le Père Noël$t$, false, 2),
    (v_q, $t$un ange$t$, false, 3),
    (v_q, $t$un roi$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet „die Mandarine“ auf Französisch?$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$la mandarine$t$, true, 1),
    (v_q, $t$la pomme$t$, false, 2),
    (v_q, $t$la banane$t$, false, 3),
    (v_q, $t$la fraise$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet „sich verkleiden“ auf Französisch?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$se déguiser$t$, true, 1),
    (v_q, $t$se laver$t$, false, 2),
    (v_q, $t$se reposer$t$, false, 3),
    (v_q, $t$se cacher$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$„Die Kinder ___ ihre Schuhe.“ (putzen)$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$putzen$t$, true, 1),
    (v_q, $t$putzt$t$, false, 2),
    (v_q, $t$putze$t$, false, 3),
    (v_q, $t$putzst$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$„Der Nikolaus ___ kleine Geschenke.“ (bringen)$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$bringt$t$, true, 1),
    (v_q, $t$bringe$t$, false, 2),
    (v_q, $t$bringen$t$, false, 3),
    (v_q, $t$bringst$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$„Ein Mann ___ sich als Nikolaus.“ (verkleiden)$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$verkleidet$t$, true, 1),
    (v_q, $t$verkleide$t$, false, 2),
    (v_q, $t$verkleiden$t$, false, 3),
    (v_q, $t$verkleidest$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Die Kinder stellen die Schuhe vor die ___.$t$, 1, 'facile', 'lueckentext') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Tür$t$, true, 1),
    (v_q, $t$Fenster$t$, false, 2),
    (v_q, $t$Wand$t$, false, 3),
    (v_q, $t$Treppe$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Am Morgen finden die Kinder Nüsse und ___.$t$, 1, 'normal', 'lueckentext') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Schokolade$t$, true, 1),
    (v_q, $t$Bücher$t$, false, 2),
    (v_q, $t$Spielzeug$t$, false, 3),
    (v_q, $t$Kleidung$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Ein Mann trägt einen langen ___.$t$, 1, 'difficile', 'lueckentext') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Bart$t$, true, 1),
    (v_q, $t$Rock$t$, false, 2),
    (v_q, $t$Schal$t$, false, 3),
    (v_q, $t$Ring$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welcher Artikel passt? ___ Nikolaus kommt am sechsten Dezember.$t$, 1, 'facile', 'grammar') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Der$t$, true, 1),
    (v_q, $t$Die$t$, false, 2),
    (v_q, $t$Das$t$, false, 3),
    (v_q, $t$Den$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Präposition passt? Die Kinder singen Lieder ___ ihn.$t$, 1, 'normal', 'grammar') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$für$t$, true, 1),
    (v_q, $t$auf$t$, false, 2),
    (v_q, $t$in$t$, false, 3),
    (v_q, $t$bei$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wähle die richtige Wortstellung:$t$, 1, 'difficile', 'grammar') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$In der Nacht kommt der Nikolaus und bringt kleine Geschenke.$t$, true, 1),
    (v_q, $t$Kommt der Nikolaus in der Nacht Geschenke bringt kleine und.$t$, false, 2),
    (v_q, $t$Der Nikolaus Geschenke bringt in der Nacht kleine und kommt.$t$, false, 3),
    (v_q, $t$Kleine Geschenke bringt und kommt der Nikolaus in der Nacht.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, justification)
    VALUES (v_story, $t$Der Nikolaus kommt am ersten Dezember.$t$, 1, 'facile', 'true_false', $t$Am sechsten Dezember kommt der Nikolaus.$t$) RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Wahr$t$, false, 1),
    (v_q, $t$Falsch$t$, true, 2);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, justification)
    VALUES (v_story, $t$Die Kinder finden Nüsse und Schokolade in ihren Schuhen.$t$, 1, 'normal', 'true_false', $t$Am Morgen finden die Kinder Nüsse, Mandarinen und Schokolade in den Schuhen.$t$) RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Wahr$t$, true, 1),
    (v_q, $t$Falsch$t$, false, 2);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, justification)
    VALUES (v_story, $t$Die Kinder sind am Nikolaustag traurig.$t$, 1, 'difficile', 'true_false', $t$Alle Kinder freuen sich sehr über den Nikolaustag.$t$) RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Wahr$t$, false, 1),
    (v_q, $t$Falsch$t$, true, 2);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer, rubric)
    VALUES (v_story, $t$Schreib drei Sätze: Feierst du den Nikolaustag oder ein ähnliches Fest? Was machst du?$t$, 1, 'normal', 'production', $t$Ich stelle meine Schuhe vor die Tür. Am Morgen finde ich Süßigkeiten. Ich freue mich sehr.$t$, $t$[{"criterion":"Aufgabenerfüllung","description":"Der Text nennt eine konkrete Aktion und ein Gefühl zum Fest."},{"criterion":"Wortschatz","description":"Wörter zu Festen und Geschenken (Schuhe, Süßigkeiten, freuen)."},{"criterion":"Grammatik","description":"Präsens, reflexive Verben wie sich freuen."},{"criterion":"Kohärenz","description":"Die Sätze folgen einer klaren zeitlichen Abfolge."}]$t$::jsonb);

END $block$;

