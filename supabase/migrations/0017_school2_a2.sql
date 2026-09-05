-- Contenu "système scolaire allemand + patrimoine, vague 2" — niveau A2 (6 histoires).
-- Ajoute aussi 3 nouveaux types d'exercices : lueckentext (texte à trous),
-- grammar (grammaire ciblée) et true_false (vrai/faux justifié), ainsi
-- qu'une grille de correction (rubric) pour les questions de production.

-- 1. Lenas erster Schultag
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary, culture_note) VALUES (
    'A2',
    $t$Lenas erster Schultag$t$,
    $t$Lena war sechs Jahre alt und hatte große Angst vor dem ersten Schultag. In Deutschland heißt dieser besondere Tag Einschulung. Am Morgen zog Lena ein neues, schönes Kleid an, weil der Tag so wichtig war. Ihre Eltern schenkten ihr eine große, bunte Schultüte. Darin waren Süßigkeiten, ein kleines Spielzeug und bunte Stifte für die Schule. Zuerst gingen alle Kinder mit ihren Familien in die Aula. Dort sang die ganze Schule ein Lied, und der Rektor hielt eine kurze Rede. Danach ging Lena mit ihrer neuen Klasse in ein helles Klassenzimmer. Die Lehrerin hieß Frau Berger und lächelte sehr freundlich. Am Ende fotografierten die Eltern ihre Kinder stolz vor der Schule. Lena war zuerst nervös, aber am Ende hatte sie große Freude.$t$,
    $t$Lena avait six ans et avait très peur de son premier jour d'école. En Allemagne, ce jour particulier s'appelle l'Einschulung. Le matin, Lena mit une robe neuve et belle, parce que ce jour était très important. Ses parents lui offrirent un grand cornet de rentrée coloré. Il contenait des bonbons, un petit jouet et des crayons de couleur pour l'école. D'abord, tous les enfants allèrent avec leur famille dans la salle des fêtes. Là, toute l'école chanta une chanson, et le directeur fit un petit discours. Ensuite, Lena alla avec sa nouvelle classe dans une salle de classe lumineuse. Sa maîtresse s'appelait Madame Berger et souriait très gentiment. À la fin, les parents prirent fièrement leurs enfants en photo devant l'école. Lena était d'abord nerveuse, mais à la fin elle éprouva une grande joie.$t$,
    $t${"Lena":"Lena (prénom)","war":"était","sechs":"six","Jahre":"années","alt":"âgée","und":"et","hatte":"avait","große":"grande","Angst":"peur","vor":"de / devant","dem":"le","ersten":"premier","Schultag":"jour d'école","In":"en","Deutschland":"Allemagne","heißt":"s'appelle","dieser":"ce","besondere":"particulier","Tag":"jour","Einschulung":"rentrée scolaire","Am":"le","Morgen":"matin","zog":"mit (habiller)","ein":"une","neues":"nouvelle","schönes":"belle","Kleid":"robe","an":"(particule verbale)","weil":"parce que","so":"si","wichtig":"important","Ihre":"ses","Eltern":"parents","schenkten":"offrirent","ihr":"lui","eine":"une","bunte":"colorée","Schultüte":"cornet de rentrée","Darin":"dedans","waren":"étaient","Süßigkeiten":"bonbons","kleines":"petit","Spielzeug":"jouet","Stifte":"crayons","für":"pour","die":"la / les","Schule":"école","Zuerst":"d'abord","gingen":"allèrent","alle":"tous","Kinder":"enfants","mit":"avec","ihren":"leurs","Familien":"familles","in":"dans","Aula":"salle des fêtes","Dort":"là","sang":"chanta","ganze":"toute","Lied":"chanson","der":"le","Rektor":"directeur","hielt":"fit","kurze":"court","Rede":"discours","Danach":"ensuite","ging":"alla","neuen":"nouvelle","Klasse":"classe","helles":"lumineuse","Klassenzimmer":"salle de classe","Lehrerin":"maîtresse","hieß":"s'appelait","Frau":"madame","Berger":"Berger (nom)","lächelte":"souriait","sehr":"très","freundlich":"gentiment","Ende":"fin","fotografierten":"prirent en photo","stolz":"fièrement","nervös":"nerveuse","aber":"mais","sie":"elle","Freude":"joie","ihrer":"sa","Die":"la","ihre":"leurs","zuerst":"d'abord","am":"à la"}$t$::jsonb,
    $t$Die Einschulung und die Schultüte in Deutschland$t$
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie alt war Lena an ihrem ersten Schultag?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sechs Jahre alt$t$, true, 1),
    (v_q, $t$Zehn Jahre alt$t$, false, 2),
    (v_q, $t$Vier Jahre alt$t$, false, 3),
    (v_q, $t$Acht Jahre alt$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie hieß der besondere Tag von Lenas erstem Schultag in Deutschland?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Die Einschulung$t$, true, 1),
    (v_q, $t$Das Zeugnis$t$, false, 2),
    (v_q, $t$Die Klassenfahrt$t$, false, 3),
    (v_q, $t$Der Ausflug$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum zog Lena an diesem Morgen ein neues, schönes Kleid an?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Weil der Tag so wichtig war$t$, true, 1),
    (v_q, $t$Weil es sehr kalt war$t$, false, 2),
    (v_q, $t$Weil sie zu einer Hochzeit ging$t$, false, 3),
    (v_q, $t$Weil ihre alte Kleidung kaputt war$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was schenkten Lenas Eltern ihr?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Eine große, bunte Schultüte$t$, true, 1),
    (v_q, $t$Ein Fahrrad$t$, false, 2),
    (v_q, $t$Ein Buch$t$, false, 3),
    (v_q, $t$Einen Hund$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was war alles in der Schultüte?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Süßigkeiten, ein Spielzeug und bunte Stifte$t$, true, 1),
    (v_q, $t$Nur Bücher$t$, false, 2),
    (v_q, $t$Kleidung und Schuhe$t$, false, 3),
    (v_q, $t$Geld und ein Handy$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Funktion hat die Schultüte an einem ersten Schultag?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie soll den Kindern den Schulstart mit kleinen Geschenken versüßen$t$, true, 1),
    (v_q, $t$Sie enthält die Hausaufgaben für das ganze Jahr$t$, false, 2),
    (v_q, $t$Sie ist ein Geschenk nur für die Lehrerin$t$, false, 3),
    (v_q, $t$Sie wird erst am letzten Schultag geöffnet$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie hieß Lenas neue Lehrerin?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Frau Berger$t$, true, 1),
    (v_q, $t$Frau Klein$t$, false, 2),
    (v_q, $t$Frau Meyer$t$, false, 3),
    (v_q, $t$Frau Schulz$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was passierte zuerst in der Aula?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Die Schule sang ein Lied, und der Rektor hielt eine Rede$t$, true, 1),
    (v_q, $t$Die Kinder aßen zusammen$t$, false, 2),
    (v_q, $t$Die Eltern gingen sofort nach Hause$t$, false, 3),
    (v_q, $t$Die Kinder machten Hausaufgaben$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie veränderte sich Lenas Gefühl vom Anfang bis zum Ende des Tages?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie war zuerst nervös, hatte aber am Ende große Freude$t$, true, 1),
    (v_q, $t$Sie war den ganzen Tag traurig$t$, false, 2),
    (v_q, $t$Sie war zuerst fröhlich und wurde dann ängstlich$t$, false, 3),
    (v_q, $t$Ihr Gefühl änderte sich gar nicht$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'die Einschulung'?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$der erste Schultag eines Kindes$t$, true, 1),
    (v_q, $t$das letzte Schuljahr$t$, false, 2),
    (v_q, $t$ein Ausflug der Klasse$t$, false, 3),
    (v_q, $t$eine Prüfung$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'die Schultüte'?$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$eine große Tüte mit Geschenken für den ersten Schultag$t$, true, 1),
    (v_q, $t$eine Tasche für Sportkleidung$t$, false, 2),
    (v_q, $t$ein Buch für die Schule$t$, false, 3),
    (v_q, $t$ein Mittagessen in der Mensa$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'nervös' im Kontext der Geschichte?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$ein bisschen ängstlich und unruhig vor etwas Neuem$t$, true, 1),
    (v_q, $t$sehr müde und schläfrig$t$, false, 2),
    (v_q, $t$sehr hungrig$t$, false, 3),
    (v_q, $t$vollkommen ruhig und entspannt$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Ergänze: Lena ___ sechs Jahre alt. (sein, Präteritum)$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$war$t$, true, 1),
    (v_q, $t$ist$t$, false, 2),
    (v_q, $t$sein$t$, false, 3),
    (v_q, $t$waren$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Form ist korrekt? Ihre Eltern ___ ihr eine Schultüte. (schenken, Präteritum)$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$schenkten$t$, true, 1),
    (v_q, $t$schenkte$t$, false, 2),
    (v_q, $t$schenkt$t$, false, 3),
    (v_q, $t$geschenkt$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wähle die richtige Perfektform: Die Eltern haben die Kinder vor der Schule ___. (fotografieren, Partizip II)$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$fotografiert$t$, true, 1),
    (v_q, $t$fotografierten$t$, false, 2),
    (v_q, $t$fotografiere$t$, false, 3),
    (v_q, $t$fotografierend$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Am Morgen zog Lena ein neues, schönes ___ an.$t$, 1, 'facile', 'lueckentext') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Kleid$t$, true, 1),
    (v_q, $t$Buch$t$, false, 2),
    (v_q, $t$Auto$t$, false, 3),
    (v_q, $t$Fahrrad$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Ihre Eltern schenkten ihr eine große, bunte ___.$t$, 1, 'normal', 'lueckentext') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Schultüte$t$, true, 1),
    (v_q, $t$Tasche$t$, false, 2),
    (v_q, $t$Uhr$t$, false, 3),
    (v_q, $t$Kette$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Am Ende fotografierten die Eltern ihre Kinder ___ vor der Schule.$t$, 1, 'difficile', 'lueckentext') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$stolz$t$, true, 1),
    (v_q, $t$traurig$t$, false, 2),
    (v_q, $t$leise$t$, false, 3),
    (v_q, $t$spät$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welcher Artikel im Akkusativ passt? Die Eltern schenkten ihr ___ Schultüte.$t$, 1, 'facile', 'grammar') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$eine$t$, true, 1),
    (v_q, $t$einen$t$, false, 2),
    (v_q, $t$ein$t$, false, 3),
    (v_q, $t$einem$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welches Verb steht im Satz an zweiter Position? 'Am Morgen zog Lena ein neues Kleid an.'$t$, 1, 'normal', 'grammar') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$zog$t$, true, 1),
    (v_q, $t$Lena$t$, false, 2),
    (v_q, $t$Morgen$t$, false, 3),
    (v_q, $t$an$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Präposition passt? Die Kinder gingen mit ihren Familien ___ die Aula.$t$, 1, 'difficile', 'grammar') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$in$t$, true, 1),
    (v_q, $t$auf$t$, false, 2),
    (v_q, $t$bei$t$, false, 3),
    (v_q, $t$zu$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, justification)
    VALUES (v_story, $t$Lena war zehn Jahre alt.$t$, 1, 'facile', 'true_false', $t$Der Text sagt: 'Lena war sechs Jahre alt.'$t$) RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Wahr$t$, false, 1),
    (v_q, $t$Falsch$t$, true, 2);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, justification)
    VALUES (v_story, $t$Der Rektor hielt eine kurze Rede in der Aula.$t$, 1, 'normal', 'true_false', $t$Im Text steht: 'der Rektor hielt eine kurze Rede.'$t$) RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Wahr$t$, true, 1),
    (v_q, $t$Falsch$t$, false, 2);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, justification)
    VALUES (v_story, $t$Lena fühlte sich den ganzen Tag über nur ängstlich, ohne jede Freude.$t$, 1, 'difficile', 'true_false', $t$Der Text sagt: 'Lena war zuerst nervös, aber am Ende hatte sie große Freude.'$t$) RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Wahr$t$, false, 1),
    (v_q, $t$Falsch$t$, true, 2);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer, rubric)
    VALUES (v_story, $t$Schreib drei bis vier Sätze: Wie war dein eigener erster Schultag oder wie stellst du dir einen ersten Schultag vor?$t$, 1, 'normal', 'production', $t$An meinem ersten Schultag war ich auch sehr aufgeregt. Meine Eltern haben mich zur Schule gebracht. Ich habe neue Freunde kennengelernt und viel gelacht. Am Ende war der Tag richtig schön.$t$, $t$[{"criterion":"Aufgabenerfüllung","description":"Der Schreiber beschreibt konkret einen ersten Schultag oder eigene Vorstellungen davon."},{"criterion":"Wortschatz","description":"Nutzung von Schulvokabular wie Schultag, aufgeregt, Freunde, Lehrerin."},{"criterion":"Grammatik","description":"Korrekte Anwendung von Präteritum oder Perfekt bei einfachen Verben."},{"criterion":"Kohärenz","description":"Die Sätze folgen einer logischen Reihenfolge mit einfachen Konnektoren wie dann, danach."}]$t$::jsonb);

END $block$;

-- 2. Pauls Alltag in der Grundschule
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary, culture_note) VALUES (
    'A2',
    $t$Pauls Alltag in der Grundschule$t$,
    $t$Paul geht in die dritte Klasse einer Grundschule in Hamburg. Die Schule beginnt um acht Uhr, deshalb fährt er jeden Morgen mit dem Fahrrad dorthin. Zuerst hat Paul Deutsch, dann Mathe und danach eine kurze Pause auf dem Schulhof. In der Pause spielt er meistens Fußball mit seinen Freunden. Nach der Pause hat die Klasse Sachunterricht, weil sie gerade Tiere im Wald lernen. Um zwölf Uhr isst Paul in der Mensa zusammen mit anderen Kindern. Danach hat er noch eine Stunde Kunst, und die Kinder malen bunte Bilder. Um dreizehn Uhr ist die Schule zu Ende, und Paul geht nach Hause. Dort macht er zuerst seine Hausaufgaben, weil er danach noch Zeit zum Spielen haben möchte. Paul findet die Grundschule wirklich schön.$t$,
    $t$Paul va en CE2 dans une école primaire à Hambourg. L'école commence à huit heures, c'est pourquoi il s'y rend à vélo chaque matin. D'abord, Paul a allemand, puis mathématiques, et ensuite une courte récréation dans la cour. Pendant la récréation, il joue le plus souvent au football avec ses amis. Après la récréation, la classe a découverte du monde, car ils étudient justement les animaux de la forêt. À midi, Paul mange à la cantine avec d'autres enfants. Ensuite, il a encore une heure d'arts plastiques, et les enfants peignent des images colorées. À treize heures, l'école est terminée, et Paul rentre chez lui. Là, il fait d'abord ses devoirs, car il veut ensuite avoir du temps pour jouer. Paul trouve vraiment son école primaire agréable.$t$,
    $t${"Paul":"Paul (prénom)","geht":"va","in":"dans / à","die":"la / les","dritte":"troisième","Klasse":"classe","einer":"une","Grundschule":"école primaire","Hamburg":"Hambourg","Die":"la","Schule":"école","beginnt":"commence","um":"à","acht":"huit","Uhr":"heure","deshalb":"c'est pourquoi","fährt":"va (en véhicule)","er":"il","jeden":"chaque","Morgen":"matin","mit":"avec","dem":"le","Fahrrad":"vélo","dorthin":"là-bas","Zuerst":"d'abord","hat":"a","Deutsch":"allemand","dann":"puis","Mathe":"mathématiques","danach":"ensuite","eine":"une","kurze":"courte","Pause":"récréation","auf":"sur","Schulhof":"cour d'école","spielt":"joue","meistens":"le plus souvent","Fußball":"football","seinen":"ses","Freunden":"amis","Nach":"après","der":"la","Sachunterricht":"découverte du monde","weil":"parce que","sie":"ils","gerade":"justement","Tiere":"animaux","im":"dans le","Wald":"forêt","lernen":"apprennent","zwölf":"douze","isst":"mange","Mensa":"cantine","zusammen":"ensemble","anderen":"d'autres","Kindern":"enfants","noch":"encore","Stunde":"heure de cours","Kunst":"arts plastiques","und":"et","malen":"peignent","bunte":"colorées","Bilder":"images","dreizehn":"treize","ist":"est","Ende":"fin","nach":"vers","Hause":"maison","Dort":"là","macht":"fait","seine":"ses","Hausaufgaben":"devoirs","damit":"afin que","Zeit":"temps","zum":"pour","Spielen":"jouer","möchte":"voudrait","findet":"trouve","wirklich":"vraiment","schön":"agréable","In":"dans","Um":"à","Danach":"ensuite","Kinder":"enfants","zu":"à","zuerst":"d'abord","haben":"avoir"}$t$::jsonb,
    $t$Der Schulalltag an der deutschen Grundschule$t$
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$In welche Klasse geht Paul?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Die dritte Klasse$t$, true, 1),
    (v_q, $t$Die erste Klasse$t$, false, 2),
    (v_q, $t$Die fünfte Klasse$t$, false, 3),
    (v_q, $t$Die zehnte Klasse$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie kommt Paul jeden Morgen zur Schule?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Mit dem Fahrrad$t$, true, 1),
    (v_q, $t$Mit dem Auto$t$, false, 2),
    (v_q, $t$Zu Fuß$t$, false, 3),
    (v_q, $t$Mit dem Zug$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum fährt Paul jeden Morgen mit dem Fahrrad zur Schule?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Weil die Schule schon um acht Uhr beginnt$t$, true, 1),
    (v_q, $t$Weil sein Fahrrad neu ist$t$, false, 2),
    (v_q, $t$Weil der Bus zu teuer ist$t$, false, 3),
    (v_q, $t$Weil er den Bus verpasst hat$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was macht Paul meistens in der Pause?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Fußball spielen$t$, true, 1),
    (v_q, $t$Schlafen$t$, false, 2),
    (v_q, $t$Hausaufgaben machen$t$, false, 3),
    (v_q, $t$Musik hören$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was lernt Pauls Klasse gerade im Sachunterricht?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Tiere im Wald$t$, true, 1),
    (v_q, $t$Mathematik$t$, false, 2),
    (v_q, $t$Fremdsprachen$t$, false, 3),
    (v_q, $t$Geschichte Deutschlands$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie ist der Stundenplan von Paul an diesem Tag aufgebaut?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Deutsch, Mathe, Pause, Sachunterricht, Mittagessen, Kunst$t$, true, 1),
    (v_q, $t$Nur Sport den ganzen Tag$t$, false, 2),
    (v_q, $t$Kunst, dann sofort nach Hause$t$, false, 3),
    (v_q, $t$Erst Mittagessen, dann Unterricht$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wo isst Paul um zwölf Uhr?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$In der Mensa$t$, true, 1),
    (v_q, $t$Zu Hause$t$, false, 2),
    (v_q, $t$Im Park$t$, false, 3),
    (v_q, $t$Im Klassenzimmer$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was macht Paul, sobald er nach Hause kommt?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er macht zuerst seine Hausaufgaben$t$, true, 1),
    (v_q, $t$Er spielt sofort draußen$t$, false, 2),
    (v_q, $t$Er schläft sofort ein$t$, false, 3),
    (v_q, $t$Er geht direkt einkaufen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum macht Paul seine Hausaufgaben, bevor er spielt?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Weil er danach noch Zeit zum Spielen haben möchte$t$, true, 1),
    (v_q, $t$Weil seine Eltern ihn dazu zwingen$t$, false, 2),
    (v_q, $t$Weil er die Hausaufgaben vergessen hat$t$, false, 3),
    (v_q, $t$Weil er keine Freunde zum Spielen hat$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'die Pause' in der Schule?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$eine kurze Zeit ohne Unterricht$t$, true, 1),
    (v_q, $t$eine Prüfung$t$, false, 2),
    (v_q, $t$das Mittagessen$t$, false, 3),
    (v_q, $t$der letzte Schultag$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'die Mensa'?$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$ein Ort in der Schule, wo man isst$t$, true, 1),
    (v_q, $t$ein Klassenzimmer$t$, false, 2),
    (v_q, $t$der Schulhof$t$, false, 3),
    (v_q, $t$eine Turnhalle$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'der Sachunterricht' an einer Grundschule?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$ein Fach, in dem Kinder Natur, Tiere und die Welt kennenlernen$t$, true, 1),
    (v_q, $t$ein Fach nur über Mathematik$t$, false, 2),
    (v_q, $t$eine Sportstunde$t$, false, 3),
    (v_q, $t$eine Fremdsprache$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Ergänze: Paul ___ in die dritte Klasse. (gehen, Präsens)$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$geht$t$, true, 1),
    (v_q, $t$geht$t$, false, 2),
    (v_q, $t$gehe$t$, false, 3),
    (v_q, $t$gehen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Form ist korrekt? Die Kinder ___ bunte Bilder. (malen, Präsens, 3. Person Plural)$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$malen$t$, true, 1),
    (v_q, $t$malt$t$, false, 2),
    (v_q, $t$male$t$, false, 3),
    (v_q, $t$gemalt$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wähle die richtige Perfektform: Paul hat seine Hausaufgaben schon ___. (machen, Partizip II)$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$gemacht$t$, true, 1),
    (v_q, $t$machen$t$, false, 2),
    (v_q, $t$machte$t$, false, 3),
    (v_q, $t$macht$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Die Schule beginnt um acht ___.$t$, 1, 'facile', 'lueckentext') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Uhr$t$, true, 1),
    (v_q, $t$Minuten$t$, false, 2),
    (v_q, $t$Tage$t$, false, 3),
    (v_q, $t$Wochen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$In der Pause spielt Paul meistens ___ mit seinen Freunden.$t$, 1, 'normal', 'lueckentext') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Fußball$t$, true, 1),
    (v_q, $t$Schach$t$, false, 2),
    (v_q, $t$Klavier$t$, false, 3),
    (v_q, $t$Karten$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Um zwölf Uhr isst Paul in der ___ zusammen mit anderen Kindern.$t$, 1, 'difficile', 'lueckentext') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Mensa$t$, true, 1),
    (v_q, $t$Küche$t$, false, 2),
    (v_q, $t$Bibliothek$t$, false, 3),
    (v_q, $t$Turnhalle$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Präposition passt? Paul fährt mit ___ Fahrrad zur Schule.$t$, 1, 'facile', 'grammar') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$dem$t$, true, 1),
    (v_q, $t$die$t$, false, 2),
    (v_q, $t$den$t$, false, 3),
    (v_q, $t$das$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie lautet die richtige Wortstellung? (er / spielt / Fußball / in der Pause)$t$, 1, 'normal', 'grammar') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$In der Pause spielt er Fußball.$t$, true, 1),
    (v_q, $t$Spielt er in der Pause Fußball er.$t$, false, 2),
    (v_q, $t$Er Fußball spielt in der Pause.$t$, false, 3),
    (v_q, $t$In der Pause er spielt Fußball.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welcher Kasus wird nach der Präposition 'nach' in 'nach Hause' verwendet?$t$, 1, 'difficile', 'grammar') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Es ist eine feste Wendung ohne klassischen Artikel$t$, true, 1),
    (v_q, $t$Genitiv$t$, false, 2),
    (v_q, $t$Dativ mit Artikel$t$, false, 3),
    (v_q, $t$Akkusativ mit Artikel$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, justification)
    VALUES (v_story, $t$Paul geht zu Fuß zur Schule.$t$, 1, 'facile', 'true_false', $t$Der Text sagt: 'fährt er jeden Morgen mit dem Fahrrad dorthin.'$t$) RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Wahr$t$, false, 1),
    (v_q, $t$Falsch$t$, true, 2);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, justification)
    VALUES (v_story, $t$Um dreizehn Uhr ist die Schule zu Ende.$t$, 1, 'normal', 'true_false', $t$Im Text steht: 'Um dreizehn Uhr ist die Schule zu Ende.'$t$) RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Wahr$t$, true, 1),
    (v_q, $t$Falsch$t$, false, 2);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, justification)
    VALUES (v_story, $t$Paul spielt zuerst, bevor er seine Hausaufgaben macht.$t$, 1, 'difficile', 'true_false', $t$Der Text sagt: 'Dort macht er zuerst seine Hausaufgaben, weil er danach noch Zeit zum Spielen haben möchte.'$t$) RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Wahr$t$, false, 1),
    (v_q, $t$Falsch$t$, true, 2);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer, rubric)
    VALUES (v_story, $t$Schreib drei bis vier Sätze über deinen eigenen Schultag: Was machst du morgens, in der Pause und nach der Schule?$t$, 1, 'normal', 'production', $t$Meine Schule beginnt um acht Uhr. In der Pause spiele ich mit meinen Freunden im Schulhof. Nach dem Unterricht esse ich zu Mittag und mache dann meine Hausaufgaben. Danach habe ich Zeit zum Spielen.$t$, $t$[{"criterion":"Aufgabenerfüllung","description":"Der Schulalltag wird chronologisch mit mehreren Momenten beschrieben."},{"criterion":"Wortschatz","description":"Nutzung von Schulwörtern wie Unterricht, Pause, Hausaufgaben."},{"criterion":"Grammatik","description":"Korrekte Präsensformen und einfache Zeitangaben."},{"criterion":"Kohärenz","description":"Logische Reihenfolge mit Konnektoren wie zuerst, dann, danach."}]$t$::jsonb);

END $block$;

-- 3. Annas Wechsel aufs Gymnasium
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary, culture_note) VALUES (
    'A2',
    $t$Annas Wechsel aufs Gymnasium$t$,
    $t$Nach der vierten Klasse müssen Kinder in Deutschland eine wichtige Entscheidung treffen. Sie wechseln dann auf eine weiterführende Schule, zum Beispiel das Gymnasium, die Realschule oder die Hauptschule. Anna hatte immer gute Noten, deshalb empfahl die Lehrerin das Gymnasium. Ihre Eltern und Anna sprachen lange über diese Entscheidung. Am Ende entschied sich Anna für das Gymnasium, weil sie später studieren möchte. Am ersten Tag war Anna sehr aufgeregt, weil alles neu war: neue Lehrer, neue Fächer und viele fremde Gesichter. Die neue Schule hatte auch ein großes Gebäude mit vielen Klassenzimmern. Zum Glück fand Anna schnell neue Freunde in ihrer Klasse. Nach ein paar Wochen fühlte sich Anna dort schon richtig wohl und mochte ihre neue Schule sehr.$t$,
    $t$Après la quatrième classe, les enfants en Allemagne doivent prendre une décision importante. Ils passent alors dans une école secondaire, par exemple le Gymnasium, la Realschule ou la Hauptschule. Anna avait toujours de bonnes notes, c'est pourquoi la maîtresse recommanda le Gymnasium. Ses parents et Anna parlèrent longtemps de cette décision. À la fin, Anna se décida pour le Gymnasium, car elle veut étudier plus tard. Le premier jour, Anna était très excitée, parce que tout était nouveau : de nouveaux professeurs, de nouvelles matières et beaucoup de visages inconnus. La nouvelle école avait aussi un grand bâtiment avec de nombreuses salles de classe. Heureusement, Anna trouva vite de nouveaux amis dans sa classe. Après quelques semaines, Anna se sentait déjà vraiment bien là-bas et aimait beaucoup sa nouvelle école.$t$,
    $t${"Nach":"après","der":"la","vierten":"quatrième","Klasse":"classe","müssen":"doivent","Kinder":"enfants","in":"en","Deutschland":"Allemagne","eine":"une","wichtige":"importante","Entscheidung":"décision","treffen":"prendre","Sie":"ils","wechseln":"passent","dann":"alors","auf":"dans","weiterführende":"secondaire","Schule":"école","zum":"par","Beispiel":"exemple","das":"le","Gymnasium":"lycée (Gymnasium)","die":"la","Realschule":"école secondaire (Realschule)","Hauptschule":"école secondaire courte (Hauptschule)","Anna":"Anna (prénom)","hatte":"avait","immer":"toujours","gute":"bonnes","Noten":"notes","deshalb":"c'est pourquoi","empfahl":"recommanda","Lehrerin":"maîtresse","Ihre":"ses","Eltern":"parents","und":"et","sprachen":"parlèrent","lange":"longtemps","über":"de","diese":"cette","Am":"à la","Ende":"fin","entschied":"se décida","sich":"se","für":"pour","weil":"parce que","sie":"elle","später":"plus tard","studieren":"étudier","möchte":"veut","ersten":"premier","Tag":"jour","war":"était","sehr":"très","aufgeregt":"excitée","alles":"tout","neu":"nouveau","neue":"nouveaux","Lehrer":"professeurs","Fächer":"matières","viele":"beaucoup","fremde":"inconnus","Gesichter":"visages","Die":"la","auch":"aussi","großes":"grand","Gebäude":"bâtiment","mit":"avec","vielen":"nombreuses","Klassenzimmern":"salles de classe","Zum":"heureusement","Glück":"chance","fand":"trouva","schnell":"vite","Freunde":"amis","ihrer":"sa","paar":"quelques","Wochen":"semaines","fühlte":"sentait","dort":"là","schon":"déjà","richtig":"vraiment","wohl":"bien","mochte":"aimait","oder":"ou","ein":"un","ihre":"sa"}$t$::jsonb,
    $t$Der Übertritt in Deutschland nach der 4. Klasse$t$
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Nach welcher Klasse müssen Kinder in Deutschland eine wichtige Entscheidung treffen?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Nach der vierten Klasse$t$, true, 1),
    (v_q, $t$Nach der ersten Klasse$t$, false, 2),
    (v_q, $t$Nach der zehnten Klasse$t$, false, 3),
    (v_q, $t$Nach der zwölften Klasse$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Schulen werden im Text als weiterführende Schulen genannt?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Gymnasium, Realschule und Hauptschule$t$, true, 1),
    (v_q, $t$Nur die Grundschule$t$, false, 2),
    (v_q, $t$Universität und Fachschule$t$, false, 3),
    (v_q, $t$Kindergarten und Grundschule$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet es, dass Kinder nach der vierten Klasse 'wechseln'?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie gehen von der Grundschule auf eine andere, weiterführende Schulform$t$, true, 1),
    (v_q, $t$Sie wechseln nur das Klassenzimmer in derselben Schule$t$, false, 2),
    (v_q, $t$Sie wechseln nur ihre Lehrerin$t$, false, 3),
    (v_q, $t$Sie hören ganz auf, zur Schule zu gehen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum empfahl die Lehrerin Anna das Gymnasium?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Weil Anna immer gute Noten hatte$t$, true, 1),
    (v_q, $t$Weil Anna das wollte$t$, false, 2),
    (v_q, $t$Weil das Gymnasium näher war$t$, false, 3),
    (v_q, $t$Weil ihre Freunde dort hingingen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum entschied sich Anna am Ende für das Gymnasium?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Weil sie später studieren möchte$t$, true, 1),
    (v_q, $t$Weil ihre Eltern es allein entschieden$t$, false, 2),
    (v_q, $t$Weil es die einzige Schule in der Stadt war$t$, false, 3),
    (v_q, $t$Weil sie keine andere Wahl hatte$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Rolle spielten Annas Eltern bei dieser Entscheidung?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie sprachen lange mit Anna über die Entscheidung, bevor sie gemeinsam entschieden$t$, true, 1),
    (v_q, $t$Sie entschieden ganz allein, ohne Anna zu fragen$t$, false, 2),
    (v_q, $t$Sie hatten kein Interesse an der Entscheidung$t$, false, 3),
    (v_q, $t$Sie ließen die Lehrerin allein entscheiden$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie fühlte sich Anna am ersten Tag am Gymnasium?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sehr aufgeregt$t$, true, 1),
    (v_q, $t$Sehr müde$t$, false, 2),
    (v_q, $t$Sehr gelangweilt$t$, false, 3),
    (v_q, $t$Sehr wütend$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was fand Anna zum Glück schnell an der neuen Schule?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Neue Freunde$t$, true, 1),
    (v_q, $t$Ein neues Zuhause$t$, false, 2),
    (v_q, $t$Eine neue Familie$t$, false, 3),
    (v_q, $t$Ein neues Fahrrad$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie veränderte sich Annas Gefühl gegenüber der neuen Schule im Laufe der Zeit?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Von Aufregung am Anfang zu echtem Wohlfühlen nach einigen Wochen$t$, true, 1),
    (v_q, $t$Sie fühlte sich von Anfang an schlecht und blieb unglücklich$t$, false, 2),
    (v_q, $t$Ihre Gefühle änderten sich überhaupt nicht$t$, false, 3),
    (v_q, $t$Sie wollte sofort wieder zur Grundschule zurück$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'das Gymnasium' in Deutschland?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$eine weiterführende Schule, die zum Abitur führen kann$t$, true, 1),
    (v_q, $t$eine Sporthalle$t$, false, 2),
    (v_q, $t$eine Grundschule$t$, false, 3),
    (v_q, $t$ein Kindergarten$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'die Entscheidung treffen'?$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$sich für etwas entscheiden$t$, true, 1),
    (v_q, $t$etwas vergessen$t$, false, 2),
    (v_q, $t$etwas verlieren$t$, false, 3),
    (v_q, $t$etwas verkaufen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet der Ausdruck 'sich wohlfühlen' im Kontext der Geschichte?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$sich an einem Ort gut und zufrieden fühlen$t$, true, 1),
    (v_q, $t$krank sein$t$, false, 2),
    (v_q, $t$sich sehr langweilen$t$, false, 3),
    (v_q, $t$traurig und einsam sein$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Ergänze: Anna ___ immer gute Noten. (haben, Präteritum)$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$hatte$t$, true, 1),
    (v_q, $t$hat$t$, false, 2),
    (v_q, $t$haben$t$, false, 3),
    (v_q, $t$gehabt$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Form ist korrekt? Anna und ihre Eltern ___ lange über die Entscheidung. (sprechen, Präteritum)$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$sprachen$t$, true, 1),
    (v_q, $t$sprach$t$, false, 2),
    (v_q, $t$sprecht$t$, false, 3),
    (v_q, $t$gesprochen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wähle die richtige Perfektform: Anna hat schnell neue Freunde ___. (finden, Partizip II)$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$gefunden$t$, true, 1),
    (v_q, $t$finden$t$, false, 2),
    (v_q, $t$fand$t$, false, 3),
    (v_q, $t$findet$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Anna hatte immer gute ___.$t$, 1, 'facile', 'lueckentext') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Noten$t$, true, 1),
    (v_q, $t$Bücher$t$, false, 2),
    (v_q, $t$Freunde$t$, false, 3),
    (v_q, $t$Fahrräder$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Am ersten Tag war Anna sehr ___.$t$, 1, 'normal', 'lueckentext') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$aufgeregt$t$, true, 1),
    (v_q, $t$müde$t$, false, 2),
    (v_q, $t$krank$t$, false, 3),
    (v_q, $t$hungrig$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Nach ein paar Wochen fühlte sich Anna dort schon richtig ___.$t$, 1, 'difficile', 'lueckentext') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$wohl$t$, true, 1),
    (v_q, $t$fremd$t$, false, 2),
    (v_q, $t$allein$t$, false, 3),
    (v_q, $t$traurig$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welcher Artikel im Akkusativ passt? Anna wählte ___ Gymnasium.$t$, 1, 'facile', 'grammar') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$das$t$, true, 1),
    (v_q, $t$der$t$, false, 2),
    (v_q, $t$die$t$, false, 3),
    (v_q, $t$dem$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welches Wort steht im Satz an letzter Position? 'Anna hat schnell neue Freunde gefunden.'$t$, 1, 'normal', 'grammar') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$gefunden$t$, true, 1),
    (v_q, $t$hat$t$, false, 2),
    (v_q, $t$Anna$t$, false, 3),
    (v_q, $t$schnell$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Präposition passt? Sie sprachen lange ___ diese Entscheidung.$t$, 1, 'difficile', 'grammar') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$über$t$, true, 1),
    (v_q, $t$auf$t$, false, 2),
    (v_q, $t$mit$t$, false, 3),
    (v_q, $t$von$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, justification)
    VALUES (v_story, $t$Anna wechselte nach der zehnten Klasse die Schule.$t$, 1, 'facile', 'true_false', $t$Der Text sagt: 'Nach der vierten Klasse müssen Kinder in Deutschland eine wichtige Entscheidung treffen.'$t$) RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Wahr$t$, false, 1),
    (v_q, $t$Falsch$t$, true, 2);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, justification)
    VALUES (v_story, $t$Die Lehrerin empfahl Anna das Gymnasium.$t$, 1, 'normal', 'true_false', $t$Im Text steht: 'deshalb empfahl die Lehrerin das Gymnasium.'$t$) RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Wahr$t$, true, 1),
    (v_q, $t$Falsch$t$, false, 2);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, justification)
    VALUES (v_story, $t$Anna fühlte sich an der neuen Schule von Anfang bis Ende immer unwohl.$t$, 1, 'difficile', 'true_false', $t$Der Text sagt: 'Nach ein paar Wochen fühlte sich Anna dort schon richtig wohl.'$t$) RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Wahr$t$, false, 1),
    (v_q, $t$Falsch$t$, true, 2);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer, rubric)
    VALUES (v_story, $t$Schreib drei bis vier Sätze: Welche Schule würdest du wählen und warum?$t$, 1, 'normal', 'production', $t$Ich würde wahrscheinlich das Gymnasium wählen. Ich möchte später an der Universität studieren. Außerdem interessieren mich viele Fächer wie Sprachen und Naturwissenschaften. Deshalb glaube ich, dass diese Schule gut zu mir passt.$t$, $t$[{"criterion":"Aufgabenerfüllung","description":"Eine Schulform wird gewählt und mit mindestens einem Grund begründet."},{"criterion":"Wortschatz","description":"Nutzung von Wörtern wie Schule, Fächer, studieren, Noten."},{"criterion":"Grammatik","description":"Korrekte Verwendung von Modalverben wie möchte oder würde."},{"criterion":"Kohärenz","description":"Klare Argumentation mit Konnektoren wie deshalb, außerdem."}]$t$::jsonb);

END $block$;

-- 4. Die Klassenfahrt an die Ostsee
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary, culture_note) VALUES (
    'A2',
    $t$Die Klassenfahrt an die Ostsee$t$,
    $t$Die Klasse 6b fuhr für eine Woche auf Klassenfahrt an die Ostsee. Alle Schüler waren sehr aufgeregt, weil eine Klassenfahrt etwas ganz Besonderes ist. Sie fuhren mit dem Bus und sangen fröhliche Lieder während der langen Fahrt. In der Jugendherberge schliefen die Kinder zusammen in kleinen Zimmern mit vier Betten. Jeden Tag machten sie spannende Ausflüge: Sie wanderten am Strand, sammelten Muscheln und besuchten sogar ein kleines Museum über das Meer. Abends spielten alle zusammen Spiele oder saßen am Lagerfeuer. Ein Lehrer erzählte gruselige, aber lustige Geschichten, und alle lachten viel. Am letzten Abend gab es eine kleine Party mit Musik und Tanz. Am Ende der Woche waren alle etwas traurig, dass die schöne Klassenfahrt schon vorbei war.$t$,
    $t$La classe de 6b partit pour une semaine en voyage scolaire au bord de la mer Baltique. Tous les élèves étaient très excités, car un voyage scolaire est quelque chose de vraiment particulier. Ils voyagèrent en bus et chantèrent des chansons joyeuses pendant le long trajet. À l'auberge de jeunesse, les enfants dormaient ensemble dans de petites chambres à quatre lits. Chaque jour, ils faisaient des excursions passionnantes : ils se promenaient sur la plage, ramassaient des coquillages et visitaient même un petit musée sur la mer. Le soir, tous jouaient ensemble à des jeux ou s'asseyaient autour du feu de camp. Un professeur racontait des histoires effrayantes mais amusantes, et tout le monde riait beaucoup. Le dernier soir, il y eut une petite fête avec musique et danse. À la fin de la semaine, tout le monde était un peu triste que le beau voyage scolaire soit déjà terminé.$t$,
    $t${"Die":"la","Klasse":"classe","fuhr":"partit","für":"pour","eine":"une","Woche":"semaine","auf":"en","Klassenfahrt":"voyage scolaire","an":"au bord de","Ostsee":"mer Baltique","Alle":"tous","Schüler":"élèves","waren":"étaient","sehr":"très","aufgeregt":"excités","weil":"car","etwas":"un peu","ganz":"vraiment","Besonderes":"particulier","ist":"est","Sie":"ils","fuhren":"voyagèrent","mit":"avec / en","dem":"le","Bus":"bus","und":"et","sangen":"chantèrent","fröhliche":"joyeuses","Lieder":"chansons","während":"pendant","der":"le","langen":"long","Fahrt":"trajet","In":"dans","Jugendherberge":"auberge de jeunesse","schliefen":"dormaient","Kinder":"enfants","zusammen":"ensemble","kleinen":"petites","Zimmern":"chambres","vier":"quatre","Betten":"lits","Jeden":"chaque","Tag":"jour","machten":"faisaient","spannende":"passionnantes","Ausflüge":"excursions","wanderten":"se promenaient","am":"sur la","Strand":"plage","sammelten":"ramassaient","Muscheln":"coquillages","besuchten":"visitaient","sogar":"même","kleines":"petit","Museum":"musée","über":"sur","das":"la","Meer":"mer","Abends":"le soir","spielten":"jouaient","alle":"tous","Spiele":"jeux","oder":"ou","saßen":"s'asseyaient","Lagerfeuer":"feu de camp","Ein":"un","Lehrer":"professeur","erzählte":"racontait","gruselige":"effrayantes","aber":"mais","lustige":"amusantes","Geschichten":"histoires","lachten":"riaient","viel":"beaucoup","letzten":"dernier","Abend":"soir","gab":"eut","es":"il (impersonnel)","kleine":"petite","Party":"fête","Musik":"musique","Tanz":"danse","Ende":"fin","traurig":"tristes","schöne":"beau","schon":"déjà","vorbei":"terminé","6b":"6e b (nom de classe)","die":"les","in":"dans","sie":"ils / elles","ein":"un","Am":"au","dass":"que","war":"était"}$t$::jsonb,
    $t$Die Klassenfahrt, eine deutsche Schultradition$t$
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wohin fuhr die Klasse 6b?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$An die Ostsee$t$, true, 1),
    (v_q, $t$In die Berge$t$, false, 2),
    (v_q, $t$Nach Berlin$t$, false, 3),
    (v_q, $t$Ins Ausland$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie lange dauerte die Klassenfahrt?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Eine Woche$t$, true, 1),
    (v_q, $t$Einen Tag$t$, false, 2),
    (v_q, $t$Einen Monat$t$, false, 3),
    (v_q, $t$Zwei Wochen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum waren die Schüler vor der Fahrt so aufgeregt?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Weil eine Klassenfahrt etwas ganz Besonderes ist$t$, true, 1),
    (v_q, $t$Weil sie eine Prüfung hatten$t$, false, 2),
    (v_q, $t$Weil sie nach Hause fahren mussten$t$, false, 3),
    (v_q, $t$Weil der Bus zu spät kam$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wo schliefen die Kinder?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$In der Jugendherberge$t$, true, 1),
    (v_q, $t$In einem Hotel$t$, false, 2),
    (v_q, $t$Im Zelt$t$, false, 3),
    (v_q, $t$Zu Hause$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was machten die Kinder am Strand?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie wanderten und sammelten Muscheln$t$, true, 1),
    (v_q, $t$Sie schliefen den ganzen Tag$t$, false, 2),
    (v_q, $t$Sie machten nur Hausaufgaben$t$, false, 3),
    (v_q, $t$Sie blieben im Bus$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Aktivitäten zeigen, dass die Klassenfahrt abwechslungsreich war?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Wanderungen, ein Museumsbesuch und abendliche Spiele am Lagerfeuer$t$, true, 1),
    (v_q, $t$Nur Unterricht im Klassenzimmer$t$, false, 2),
    (v_q, $t$Nur Zeit im Bus$t$, false, 3),
    (v_q, $t$Nur Schlafen in der Jugendherberge$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was erzählte der Lehrer abends?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Gruselige, aber lustige Geschichten$t$, true, 1),
    (v_q, $t$Mathematikaufgaben$t$, false, 2),
    (v_q, $t$Nachrichten$t$, false, 3),
    (v_q, $t$Ein Gedicht$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was gab es am letzten Abend der Klassenfahrt?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Eine kleine Party mit Musik und Tanz$t$, true, 1),
    (v_q, $t$Eine Prüfung$t$, false, 2),
    (v_q, $t$Nur ein ruhiges Abendessen$t$, false, 3),
    (v_q, $t$Einen langen Vortrag$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was zeigt das Gefühl der Schüler am Ende der Woche über den Erfolg der Klassenfahrt?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Ihre Traurigkeit beim Abschied zeigt, wie sehr sie die Fahrt genossen haben$t$, true, 1),
    (v_q, $t$Ihre Traurigkeit zeigt, dass ihnen die Fahrt gar nicht gefallen hat$t$, false, 2),
    (v_q, $t$Sie waren erleichtert, dass die Fahrt endlich vorbei war$t$, false, 3),
    (v_q, $t$Sie hatten die Klassenfahrt schon vergessen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'die Klassenfahrt'?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$eine gemeinsame Reise einer Schulklasse$t$, true, 1),
    (v_q, $t$eine Prüfung in der Schule$t$, false, 2),
    (v_q, $t$der letzte Schultag$t$, false, 3),
    (v_q, $t$eine Pause im Unterricht$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'die Jugendherberge'?$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$ein günstiges Übernachtungshaus, oft für Gruppen und Jugendliche$t$, true, 1),
    (v_q, $t$ein teures Hotel$t$, false, 2),
    (v_q, $t$ein Restaurant$t$, false, 3),
    (v_q, $t$eine Schule$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet der Ausdruck 'gruselig, aber lustig' im Kontext der Geschichte?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$eine Geschichte, die ein bisschen unheimlich, aber gleichzeitig unterhaltsam ist$t$, true, 1),
    (v_q, $t$eine Geschichte, die sehr traurig ist$t$, false, 2),
    (v_q, $t$eine Geschichte ohne jede Spannung$t$, false, 3),
    (v_q, $t$eine wahre Nachricht$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Ergänze: Die Klasse ___ an die Ostsee. (fahren, Präteritum)$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$fuhr$t$, true, 1),
    (v_q, $t$fährt$t$, false, 2),
    (v_q, $t$fahren$t$, false, 3),
    (v_q, $t$gefahren$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Form ist korrekt? Die Kinder ___ Muscheln am Strand. (sammeln, Präteritum)$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$sammelten$t$, true, 1),
    (v_q, $t$sammelte$t$, false, 2),
    (v_q, $t$sammelt$t$, false, 3),
    (v_q, $t$gesammelt$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wähle die richtige Perfektform: Alle Schüler haben viel ___. (lachen, Partizip II)$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$gelacht$t$, true, 1),
    (v_q, $t$lachen$t$, false, 2),
    (v_q, $t$lachte$t$, false, 3),
    (v_q, $t$lacht$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Die Klasse 6b fuhr für eine ___ auf Klassenfahrt.$t$, 1, 'facile', 'lueckentext') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Woche$t$, true, 1),
    (v_q, $t$Stunde$t$, false, 2),
    (v_q, $t$Minute$t$, false, 3),
    (v_q, $t$Sekunde$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$In der Jugendherberge schliefen die Kinder in kleinen ___ mit vier Betten.$t$, 1, 'normal', 'lueckentext') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Zimmern$t$, true, 1),
    (v_q, $t$Bussen$t$, false, 2),
    (v_q, $t$Zelten$t$, false, 3),
    (v_q, $t$Häusern$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Am Ende der Woche waren alle etwas ___, dass die Klassenfahrt schon vorbei war.$t$, 1, 'difficile', 'lueckentext') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$traurig$t$, true, 1),
    (v_q, $t$froh$t$, false, 2),
    (v_q, $t$wütend$t$, false, 3),
    (v_q, $t$hungrig$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Präposition passt? Die Klasse fuhr ___ die Ostsee.$t$, 1, 'facile', 'grammar') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$an$t$, true, 1),
    (v_q, $t$in$t$, false, 2),
    (v_q, $t$bei$t$, false, 3),
    (v_q, $t$aus$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welches Verb ist im Satz konjugiert? 'Sie fuhren mit dem Bus.'$t$, 1, 'normal', 'grammar') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$fuhren$t$, true, 1),
    (v_q, $t$mit$t$, false, 2),
    (v_q, $t$dem$t$, false, 3),
    (v_q, $t$Bus$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welcher Kasus folgt nach der Präposition 'mit' im Satz 'Sie fuhren mit dem Bus'?$t$, 1, 'difficile', 'grammar') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Dativ$t$, true, 1),
    (v_q, $t$Akkusativ$t$, false, 2),
    (v_q, $t$Genitiv$t$, false, 3),
    (v_q, $t$Nominativ$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, justification)
    VALUES (v_story, $t$Die Klasse fuhr in die Berge.$t$, 1, 'facile', 'true_false', $t$Der Text sagt: 'fuhr für eine Woche auf Klassenfahrt an die Ostsee.'$t$) RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Wahr$t$, false, 1),
    (v_q, $t$Falsch$t$, true, 2);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, justification)
    VALUES (v_story, $t$Die Kinder besuchten ein kleines Museum über das Meer.$t$, 1, 'normal', 'true_false', $t$Im Text steht: 'besuchten sogar ein kleines Museum über das Meer.'$t$) RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Wahr$t$, true, 1),
    (v_q, $t$Falsch$t$, false, 2);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, justification)
    VALUES (v_story, $t$Am Ende der Woche waren alle Schüler froh, dass die Klassenfahrt endlich vorbei war.$t$, 1, 'difficile', 'true_false', $t$Der Text sagt: 'Am Ende der Woche waren alle etwas traurig, dass die schöne Klassenfahrt schon vorbei war.'$t$) RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Wahr$t$, false, 1),
    (v_q, $t$Falsch$t$, true, 2);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer, rubric)
    VALUES (v_story, $t$Schreib drei bis vier Sätze: Wohin würdest du gern mit deiner Klasse fahren, und was möchtest du dort machen?$t$, 1, 'normal', 'production', $t$Ich würde gern mit meiner Klasse in die Berge fahren. Dort möchten wir wandern und die Natur entdecken. Abends könnten wir zusammen Spiele spielen und Geschichten erzählen. Das wäre bestimmt eine tolle Klassenfahrt.$t$, $t$[{"criterion":"Aufgabenerfüllung","description":"Ein Reiseziel wird genannt und mindestens eine geplante Aktivität beschrieben."},{"criterion":"Wortschatz","description":"Nutzung von Reisewörtern wie Klassenfahrt, wandern, Natur, Ausflug."},{"criterion":"Grammatik","description":"Korrekte Verwendung von würde oder möchte mit Infinitiv."},{"criterion":"Kohärenz","description":"Zusammenhängende Sätze mit einfachen Konnektoren wie dort, abends."}]$t$::jsonb);

END $block$;

-- 5. Nikolaus am 6. Dezember
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary, culture_note) VALUES (
    'A2',
    $t$Nikolaus am 6. Dezember$t$,
    $t$In Deutschland kommt jedes Jahr am 6. Dezember der Nikolaus zu Besuch. Schon am Abend vorher putzen viele Kinder ihre Schuhe und stellen sie vor die Tür. In der Nacht kommt dann angeblich der Nikolaus und füllt die Schuhe mit kleinen Geschenken. Meistens findet man Nüsse, Mandarinen, Schokolade und manchmal auch kleines Spielzeug darin. Der Nikolaus erinnert an einen echten Bischof, der vor sehr langer Zeit in der Türkei lebte. Dieser Mann war bekannt, weil er armen Menschen und Kindern heimlich half. Heute besuchen manche Kindergärten und Schulen sogar einen Mann, der wie der Nikolaus verkleidet ist. Er trägt einen roten Mantel und einen langen, weißen Bart. Die Kinder freuen sich jedes Jahr riesig auf diesen besonderen Morgen im Dezember.$t$,
    $t$En Allemagne, chaque année, le 6 décembre, Saint-Nicolas vient en visite. Dès la veille au soir, beaucoup d'enfants nettoient leurs chaussures et les posent devant la porte. Pendant la nuit, Saint-Nicolas vient soi-disant remplir les chaussures de petits cadeaux. On y trouve le plus souvent des noix, des mandarines, du chocolat et parfois aussi un petit jouet. Saint-Nicolas rappelle un véritable évêque, qui vécut il y a très longtemps en Turquie. Cet homme était connu parce qu'il aidait secrètement les pauvres et les enfants. Aujourd'hui, certaines écoles maternelles et écoles reçoivent même la visite d'un homme déguisé en Saint-Nicolas. Il porte un manteau rouge et une longue barbe blanche. Les enfants se réjouissent énormément chaque année de ce matin particulier de décembre.$t$,
    $t${"6":"6 (chiffre)","In":"dans","Deutschland":"Allemagne","kommt":"vient","jedes":"chaque","Jahr":"année","am":"le","Dezember":"décembre","der":"le","Nikolaus":"Saint-Nicolas","zu":"en","Besuch":"visite","Schon":"déjà","Abend":"soir","vorher":"avant","putzen":"nettoient","viele":"beaucoup","Kinder":"enfants","ihre":"leurs","Schuhe":"chaussures","und":"et","stellen":"posent","sie":"les","vor":"devant","die":"la","Tür":"porte","Nacht":"nuit","dann":"alors","angeblich":"soi-disant","füllt":"remplit","mit":"de","kleinen":"petits","Geschenken":"cadeaux","Meistens":"le plus souvent","findet":"trouve","man":"on","Nüsse":"noix","Mandarinen":"mandarines","Schokolade":"chocolat","manchmal":"parfois","auch":"aussi","kleines":"petit","Spielzeug":"jouet","darin":"dedans","erinnert":"rappelle","an":"à","einen":"un","echten":"véritable","Bischof":"évêque","sehr":"très","langer":"longtemps","Zeit":"temps","Türkei":"Turquie","lebte":"vécut","Dieser":"cet","Mann":"homme","war":"était","bekannt":"connu","weil":"parce que","er":"il","armen":"pauvres","Menschen":"gens","heimlich":"secrètement","half":"aidait","Heute":"aujourd'hui","besuchen":"reçoivent (la visite de)","manche":"certaines","Kindergärten":"écoles maternelles","Schulen":"écoles","sogar":"même","wie":"comme","verkleidet":"déguisé","ist":"est","Er":"il","trägt":"porte","roten":"rouge","Mantel":"manteau","langen":"longue","weißen":"blanche","Bart":"barbe","freuen":"réjouissent","sich":"se","riesig":"énormément","auf":"de","diesen":"ce","besonderen":"particulier","Morgen":"matin","Der":"le","in":"dans","Kindern":"aux enfants","Die":"la","im":"dans le"}$t$::jsonb,
    $t$Der Nikolaustag am 6. Dezember in Deutschland$t$
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$An welchem Datum kommt der Nikolaus in Deutschland zu Besuch?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Am 6. Dezember$t$, true, 1),
    (v_q, $t$Am 24. Dezember$t$, false, 2),
    (v_q, $t$Am 1. Januar$t$, false, 3),
    (v_q, $t$Am 31. Oktober$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was machen viele Kinder am Abend vorher?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie putzen ihre Schuhe und stellen sie vor die Tür$t$, true, 1),
    (v_q, $t$Sie schreiben einen Brief an das Christkind$t$, false, 2),
    (v_q, $t$Sie schmücken einen Baum$t$, false, 3),
    (v_q, $t$Sie backen Plätzchen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was passiert laut der Tradition in der Nacht zum 6. Dezember?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Der Nikolaus füllt angeblich die Schuhe der Kinder mit kleinen Geschenken$t$, true, 1),
    (v_q, $t$Die Kinder bekommen einen großen Weihnachtsbaum$t$, false, 2),
    (v_q, $t$Die Kinder müssen ihre Schuhe wegwerfen$t$, false, 3),
    (v_q, $t$Der Nikolaus besucht nur Erwachsene$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was findet man meistens in den Schuhen?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Nüsse, Mandarinen und Schokolade$t$, true, 1),
    (v_q, $t$Geld und Schmuck$t$, false, 2),
    (v_q, $t$Bücher und Stifte$t$, false, 3),
    (v_q, $t$Kleidung$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$An wen erinnert der Nikolaus?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$An einen echten Bischof aus der Türkei$t$, true, 1),
    (v_q, $t$An einen deutschen König$t$, false, 2),
    (v_q, $t$An einen berühmten Musiker$t$, false, 3),
    (v_q, $t$An einen modernen Schauspieler$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum war der echte Bischof, an den der Nikolaus erinnert, besonders bekannt?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Weil er armen Menschen und Kindern heimlich half$t$, true, 1),
    (v_q, $t$Weil er sehr reich war$t$, false, 2),
    (v_q, $t$Weil er ein bekannter Krieger war$t$, false, 3),
    (v_q, $t$Weil er eine Stadt regierte$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was trägt der verkleidete Nikolaus?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Einen roten Mantel und einen weißen Bart$t$, true, 1),
    (v_q, $t$Einen blauen Anzug$t$, false, 2),
    (v_q, $t$Eine Schuluniform$t$, false, 3),
    (v_q, $t$Eine Krone aus Gold$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wo kann man heute manchmal einen verkleideten Nikolaus treffen?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$In manchen Kindergärten und Schulen$t$, true, 1),
    (v_q, $t$Nur im Fernsehen$t$, false, 2),
    (v_q, $t$Nur auf dem Weihnachtsmarkt$t$, false, 3),
    (v_q, $t$Nur im Rathaus$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie verbindet die Geschichte die historische Figur mit dem heutigen Brauch?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Die heutige Tradition der Geschenke erinnert an die Großzügigkeit des historischen Bischofs$t$, true, 1),
    (v_q, $t$Der heutige Brauch hat gar nichts mit dem historischen Bischof zu tun$t$, false, 2),
    (v_q, $t$Der historische Bischof wird heute völlig vergessen$t$, false, 3),
    (v_q, $t$Der heutige Brauch ist viel älter als der Bischof selbst$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'der Bischof'?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$ein hoher geistlicher Amtsträger der Kirche$t$, true, 1),
    (v_q, $t$ein Lehrer$t$, false, 2),
    (v_q, $t$ein König$t$, false, 3),
    (v_q, $t$ein Bäcker$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'angeblich' im Text?$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$wie man sagt, laut einer Überlieferung$t$, true, 1),
    (v_q, $t$ganz sicher und bewiesen$t$, false, 2),
    (v_q, $t$nie und niemals$t$, false, 3),
    (v_q, $t$sofort und direkt$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet der Ausdruck 'jemandem heimlich helfen'?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$jemandem helfen, ohne dass es andere merken$t$, true, 1),
    (v_q, $t$jemandem laut vor allen Leuten helfen$t$, false, 2),
    (v_q, $t$jemanden im Fernsehen zeigen$t$, false, 3),
    (v_q, $t$jemandem etwas verbieten$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Ergänze: Der Nikolaus ___ jedes Jahr am 6. Dezember. (kommen, Präsens)$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$kommt$t$, true, 1),
    (v_q, $t$kam$t$, false, 2),
    (v_q, $t$kommen$t$, false, 3),
    (v_q, $t$gekommen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Form ist korrekt? Viele Kinder ___ ihre Schuhe vor die Tür. (stellen, Präsens, 3. Person Plural)$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$stellen$t$, true, 1),
    (v_q, $t$stellt$t$, false, 2),
    (v_q, $t$stelle$t$, false, 3),
    (v_q, $t$gestellt$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wähle die richtige Präteritumform: Der Bischof ___ vor langer Zeit in der Türkei. (leben, 3. Person Singular)$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$lebte$t$, true, 1),
    (v_q, $t$lebt$t$, false, 2),
    (v_q, $t$leben$t$, false, 3),
    (v_q, $t$gelebt$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Viele Kinder putzen ihre ___ und stellen sie vor die Tür.$t$, 1, 'facile', 'lueckentext') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Schuhe$t$, true, 1),
    (v_q, $t$Bücher$t$, false, 2),
    (v_q, $t$Betten$t$, false, 3),
    (v_q, $t$Fahrräder$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Der Nikolaus erinnert an einen echten ___, der in der Türkei lebte.$t$, 1, 'normal', 'lueckentext') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Bischof$t$, true, 1),
    (v_q, $t$König$t$, false, 2),
    (v_q, $t$Kaufmann$t$, false, 3),
    (v_q, $t$Bäcker$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Er trägt einen roten Mantel und einen langen, weißen ___.$t$, 1, 'difficile', 'lueckentext') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Bart$t$, true, 1),
    (v_q, $t$Hut$t$, false, 2),
    (v_q, $t$Schal$t$, false, 3),
    (v_q, $t$Handschuh$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Präposition passt? Die Kinder stellen die Schuhe ___ die Tür.$t$, 1, 'facile', 'grammar') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$vor$t$, true, 1),
    (v_q, $t$auf$t$, false, 2),
    (v_q, $t$unter$t$, false, 3),
    (v_q, $t$neben$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welches Verb ist im Satz konjugiert? 'Der Nikolaus füllt die Schuhe mit Geschenken.'$t$, 1, 'normal', 'grammar') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$füllt$t$, true, 1),
    (v_q, $t$die$t$, false, 2),
    (v_q, $t$mit$t$, false, 3),
    (v_q, $t$Geschenken$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welcher Kasus wird nach 'vor' in 'vor die Tür stellen' verwendet, weil eine Bewegung ausgedrückt wird?$t$, 1, 'difficile', 'grammar') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Akkusativ$t$, true, 1),
    (v_q, $t$Dativ$t$, false, 2),
    (v_q, $t$Genitiv$t$, false, 3),
    (v_q, $t$Nominativ$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, justification)
    VALUES (v_story, $t$Der Nikolaus kommt am 24. Dezember.$t$, 1, 'facile', 'true_false', $t$Der Text sagt: 'kommt jedes Jahr am 6. Dezember der Nikolaus zu Besuch.'$t$) RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Wahr$t$, false, 1),
    (v_q, $t$Falsch$t$, true, 2);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, justification)
    VALUES (v_story, $t$Der historische Nikolaus half heimlich armen Menschen und Kindern.$t$, 1, 'normal', 'true_false', $t$Im Text steht: 'weil er armen Menschen und Kindern heimlich half.'$t$) RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Wahr$t$, true, 1),
    (v_q, $t$Falsch$t$, false, 2);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, justification)
    VALUES (v_story, $t$Der Nikolaus trägt laut dem Text einen blauen Mantel.$t$, 1, 'difficile', 'true_false', $t$Der Text sagt: 'Er trägt einen roten Mantel und einen langen, weißen Bart.'$t$) RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Wahr$t$, false, 1),
    (v_q, $t$Falsch$t$, true, 2);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer, rubric)
    VALUES (v_story, $t$Schreib drei bis vier Sätze: Kennst du eine ähnliche Tradition in deinem Land? Beschreibe sie kurz.$t$, 1, 'normal', 'production', $t$In meinem Land gibt es auch eine Tradition mit Geschenken im Winter. Kinder bekommen dort Süßigkeiten oder kleine Geschenke von den Eltern. Diese Tradition macht allen Kindern jedes Jahr große Freude. Ich finde solche Bräuche sehr schön.$t$, $t$[{"criterion":"Aufgabenerfüllung","description":"Eine eigene oder bekannte Tradition wird kurz beschrieben und mit dem Text verglichen."},{"criterion":"Wortschatz","description":"Nutzung von Wörtern wie Tradition, Geschenke, Fest, Brauch."},{"criterion":"Grammatik","description":"Korrekte einfache Satzstrukturen im Präsens."},{"criterion":"Kohärenz","description":"Klarer Aufbau mit Konnektoren wie auch, dort, deshalb."}]$t$::jsonb);

END $block$;

-- 6. Der Osterhase kommt
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary, culture_note) VALUES (
    'A2',
    $t$Der Osterhase kommt$t$,
    $t$In Deutschland feiern viele Familien im Frühling das Osterfest mit bunten Eiern. Ein besonderes Symbol dieses Festes ist der Osterhase, der die Eier angeblich versteckt. Diese Tradition kommt tatsächlich ursprünglich aus Deutschland und ist schon sehr alt. Früher glaubten manche Menschen im Elsass und in Süddeutschland fest an den Hasen als Eierbringer. Heute bemalen Kinder vor Ostern bunte Eier mit Farben und lustigen Mustern. Am Ostersonntag verstecken Eltern die bunten Eier und kleine Süßigkeiten im Garten oder im Haus. Danach suchen die Kinder aufgeregt danach und freuen sich über jeden Fund. Manche Familien backen zusammen auch ein süßes Osterbrot oder einen Kuchen in Hasenform. Der deutsche Osterhase ist heute übrigens auch in vielen anderen Ländern sehr bekannt.$t$,
    $t$En Allemagne, de nombreuses familles fêtent Pâques au printemps avec des œufs colorés. Un symbole particulier de cette fête est le lièvre de Pâques, qui cache soi-disant les œufs. Cette tradition vient en réalité d'origine d'Allemagne et est déjà très ancienne. Autrefois, certaines personnes en Alsace et dans le sud de l'Allemagne croyaient fermement au lièvre comme apporteur d'œufs. Aujourd'hui, avant Pâques, les enfants peignent des œufs colorés avec des couleurs et des motifs amusants. Le dimanche de Pâques, les parents cachent les œufs colorés et de petites friandises dans le jardin ou dans la maison. Ensuite, les enfants les cherchent avec excitation et se réjouissent de chaque découverte. Certaines familles préparent aussi ensemble un pain de Pâques sucré ou un gâteau en forme de lièvre. Le lièvre de Pâques allemand est aujourd'hui d'ailleurs aussi très connu dans de nombreux autres pays.$t$,
    $t${"In":"en","Deutschland":"Allemagne","feiern":"fêtent","viele":"de nombreuses","Familien":"familles","im":"au","Frühling":"printemps","das":"la","Osterfest":"fête de Pâques","mit":"avec","bunten":"colorés","Eiern":"œufs","Ein":"un","besonderes":"particulier","Symbol":"symbole","dieses":"de cette","Festes":"fête","ist":"est","der":"le","Osterhase":"lièvre de Pâques","die":"les","Eier":"œufs","angeblich":"soi-disant","versteckt":"cache","Diese":"cette","Tradition":"tradition","kommt":"vient","tatsächlich":"en réalité","ursprünglich":"d'origine","aus":"de","und":"et","schon":"déjà","sehr":"très","alt":"ancienne","Früher":"autrefois","glaubten":"croyaient","manche":"certaines","Menschen":"personnes","Elsass":"Alsace","Süddeutschland":"sud de l'Allemagne","fest":"fermement","an":"à","den":"le","Hasen":"lièvre","als":"comme","Eierbringer":"apporteur d'œufs","Heute":"aujourd'hui","bemalen":"peignent","Kinder":"enfants","vor":"avant","Ostern":"Pâques","Farben":"couleurs","lustigen":"amusants","Mustern":"motifs","Am":"le","Ostersonntag":"dimanche de Pâques","verstecken":"cachent","Eltern":"parents","kleine":"petites","Süßigkeiten":"friandises","Garten":"jardin","oder":"ou","Haus":"maison","Danach":"ensuite","suchen":"cherchent","aufgeregt":"avec excitation","danach":"cela","freuen":"réjouissent","sich":"se","über":"de","jeden":"chaque","Fund":"découverte","Manche":"certaines","backen":"préparent","zusammen":"ensemble","auch":"aussi","süßes":"sucré","Osterbrot":"pain de Pâques","einen":"un","Kuchen":"gâteau","Hasenform":"forme de lièvre","deutsche":"allemand","übrigens":"d'ailleurs","anderen":"d'autres","Ländern":"pays","bekannt":"connu","in":"dans","bunte":"colorés","ein":"un","Der":"le","heute":"aujourd'hui","vielen":"de nombreux"}$t$::jsonb,
    $t$Ostern und der deutsche Ursprung des Osterhasen$t$
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was feiern viele Familien in Deutschland im Frühling?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Das Osterfest$t$, true, 1),
    (v_q, $t$Das Weihnachtsfest$t$, false, 2),
    (v_q, $t$Den Nikolaustag$t$, false, 3),
    (v_q, $t$Den Geburtstag$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welches Tier ist ein besonderes Symbol des Osterfestes?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Der Osterhase$t$, true, 1),
    (v_q, $t$Der Fuchs$t$, false, 2),
    (v_q, $t$Der Bär$t$, false, 3),
    (v_q, $t$Der Vogel$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Woher kommt die Tradition des Osterhasen laut dem Text ursprünglich?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Aus Deutschland$t$, true, 1),
    (v_q, $t$Aus Frankreich$t$, false, 2),
    (v_q, $t$Aus Italien$t$, false, 3),
    (v_q, $t$Aus den USA$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was machen Kinder mit den Eiern vor Ostern?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie bemalen die Eier mit Farben und Mustern$t$, true, 1),
    (v_q, $t$Sie essen die Eier sofort$t$, false, 2),
    (v_q, $t$Sie verstecken die Eier im Wald$t$, false, 3),
    (v_q, $t$Sie schenken die Eier weg$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wo verstecken die Eltern die Eier am Ostersonntag?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Im Garten oder im Haus$t$, true, 1),
    (v_q, $t$Nur im Keller$t$, false, 2),
    (v_q, $t$Nur auf der Straße$t$, false, 3),
    (v_q, $t$In der Schule$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wer glaubte früher besonders fest an den Hasen als Eierbringer?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Manche Menschen im Elsass und in Süddeutschland$t$, true, 1),
    (v_q, $t$Nur Menschen in Norddeutschland$t$, false, 2),
    (v_q, $t$Nur Kinder in Berlin$t$, false, 3),
    (v_q, $t$Menschen in ganz Europa gleichermaßen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was backen manche Familien zu Ostern?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Ein Osterbrot oder einen Kuchen in Hasenform$t$, true, 1),
    (v_q, $t$Nur Brötchen$t$, false, 2),
    (v_q, $t$Pizza$t$, false, 3),
    (v_q, $t$Nichts Besonderes$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie reagieren die Kinder, wenn sie die versteckten Eier finden?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie freuen sich über jeden Fund$t$, true, 1),
    (v_q, $t$Sie sind gelangweilt$t$, false, 2),
    (v_q, $t$Sie sind traurig$t$, false, 3),
    (v_q, $t$Sie ignorieren die Eier$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was sagt der letzte Satz des Textes über die heutige Bedeutung des Osterhasen aus?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Der deutsche Brauch ist heute auch in vielen anderen Ländern bekannt$t$, true, 1),
    (v_q, $t$Der Osterhase wird heute nur noch in Deutschland gefeiert$t$, false, 2),
    (v_q, $t$Die Tradition ist heute völlig vergessen$t$, false, 3),
    (v_q, $t$Nur Erwachsene kennen den Osterhasen heute noch$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'verstecken'?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$etwas an einen Ort legen, wo man es nicht sofort sieht$t$, true, 1),
    (v_q, $t$etwas kaufen$t$, false, 2),
    (v_q, $t$etwas backen$t$, false, 3),
    (v_q, $t$etwas essen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'ursprünglich' im Text?$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$am Anfang, in der Herkunft$t$, true, 1),
    (v_q, $t$erst kürzlich$t$, false, 2),
    (v_q, $t$gar nicht$t$, false, 3),
    (v_q, $t$sehr modern$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet der Ausdruck 'fest an etwas glauben'?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$sehr überzeugt von etwas sein$t$, true, 1),
    (v_q, $t$an etwas gar nicht denken$t$, false, 2),
    (v_q, $t$etwas vergessen haben$t$, false, 3),
    (v_q, $t$etwas laut sagen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Ergänze: Viele Familien ___ das Osterfest im Frühling. (feiern, Präsens)$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$feiern$t$, true, 1),
    (v_q, $t$feiert$t$, false, 2),
    (v_q, $t$feierte$t$, false, 3),
    (v_q, $t$gefeiert$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Form ist korrekt? Früher ___ manche Menschen fest an den Hasen. (glauben, Präteritum)$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$glaubten$t$, true, 1),
    (v_q, $t$glaubte$t$, false, 2),
    (v_q, $t$glaubt$t$, false, 3),
    (v_q, $t$geglaubt$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wähle die richtige Präsensform: Die Kinder ___ die Eier vor Ostern bunt. (bemalen, 3. Person Plural)$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$bemalen$t$, true, 1),
    (v_q, $t$bemalt$t$, false, 2),
    (v_q, $t$bemale$t$, false, 3),
    (v_q, $t$bemalten$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Ein besonderes Symbol des Osterfestes ist der ___.$t$, 1, 'facile', 'lueckentext') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Osterhase$t$, true, 1),
    (v_q, $t$Nikolaus$t$, false, 2),
    (v_q, $t$Weihnachtsmann$t$, false, 3),
    (v_q, $t$Storch$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Am Ostersonntag verstecken Eltern die bunten Eier im ___ oder im Haus.$t$, 1, 'normal', 'lueckentext') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Garten$t$, true, 1),
    (v_q, $t$Keller$t$, false, 2),
    (v_q, $t$Auto$t$, false, 3),
    (v_q, $t$Klassenzimmer$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Manche Familien backen zusammen auch ein süßes ___ oder einen Kuchen in Hasenform.$t$, 1, 'difficile', 'lueckentext') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Osterbrot$t$, true, 1),
    (v_q, $t$Weihnachtsbrot$t$, false, 2),
    (v_q, $t$Baguette$t$, false, 3),
    (v_q, $t$Vollkornbrot$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welcher Artikel im Nominativ passt? ___ Osterhase versteckt die Eier.$t$, 1, 'facile', 'grammar') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Der$t$, true, 1),
    (v_q, $t$Die$t$, false, 2),
    (v_q, $t$Das$t$, false, 3),
    (v_q, $t$Den$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welches Wort ist das konjugierte Verb im Satz? 'Kinder bemalen vor Ostern bunte Eier.'$t$, 1, 'normal', 'grammar') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$bemalen$t$, true, 1),
    (v_q, $t$Kinder$t$, false, 2),
    (v_q, $t$vor$t$, false, 3),
    (v_q, $t$Eier$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Präposition passt? Die Eltern verstecken die Eier ___ Garten.$t$, 1, 'difficile', 'grammar') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$im$t$, true, 1),
    (v_q, $t$am$t$, false, 2),
    (v_q, $t$beim$t$, false, 3),
    (v_q, $t$zum$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, justification)
    VALUES (v_story, $t$Der Osterhase versteckt angeblich die Eier.$t$, 1, 'facile', 'true_false', $t$Der Text sagt: 'der Osterhase, der die Eier angeblich versteckt.'$t$) RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Wahr$t$, true, 1),
    (v_q, $t$Falsch$t$, false, 2);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, justification)
    VALUES (v_story, $t$Die Tradition des Osterhasen kommt ursprünglich aus Frankreich.$t$, 1, 'normal', 'true_false', $t$Im Text steht: 'Diese Tradition kommt tatsächlich ursprünglich aus Deutschland.'$t$) RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Wahr$t$, false, 1),
    (v_q, $t$Falsch$t$, true, 2);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, justification)
    VALUES (v_story, $t$Der deutsche Osterhase ist heute nur in Deutschland bekannt.$t$, 1, 'difficile', 'true_false', $t$Der Text sagt: 'Der deutsche Osterhase ist heute übrigens auch in vielen anderen Ländern sehr bekannt.'$t$) RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Wahr$t$, false, 1),
    (v_q, $t$Falsch$t$, true, 2);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer, rubric)
    VALUES (v_story, $t$Schreib drei bis vier Sätze: Wie feierst du Ostern oder ein ähnliches Frühlingsfest?$t$, 1, 'normal', 'production', $t$Zu Ostern besuchen wir meistens unsere Großeltern. Wir bemalen zusammen bunte Eier und essen ein leckeres Frühstück. Danach suchen die kleinen Kinder Süßigkeiten im Garten. Das Fest macht der ganzen Familie große Freude.$t$, $t$[{"criterion":"Aufgabenerfüllung","description":"Es wird konkret beschrieben, wie ein Frühlingsfest gefeiert wird."},{"criterion":"Wortschatz","description":"Nutzung von Wörtern wie Ostern, Eier, Garten, Familie."},{"criterion":"Grammatik","description":"Korrekte Präsensformen bei regelmäßigen Verben."},{"criterion":"Kohärenz","description":"Logischer Ablauf mit Konnektoren wie danach, zusammen."}]$t$::jsonb);

END $block$;

