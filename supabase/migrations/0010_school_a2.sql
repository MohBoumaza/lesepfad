-- Contenu "patrimoine culturel allemand" — niveau A2 (8 histoires).
-- Contes/légendes du domaine public réécrits, ou fictions originales inspirées
-- de genres/thèmes majeurs de la culture et de l'école allemandes.

-- 1. Till Eulenspiegel und der Bäcker
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary, culture_note) VALUES (
    'A2',
    $t$Till Eulenspiegel und der Bäcker$t$,
    $t$Till Eulenspiegel war ein lustiger Mann. Er reiste von Stadt zu Stadt und machte gern Streiche. Eines Tages kam er in eine kleine Stadt. Dort arbeitete er bei einem Bäcker. Der Bäcker sagte: „Back heute Eulen und Affen aus Brot!" Er meinte damit lustige Formen. Aber Till verstand die Wörter ganz genau. Er backte wirklich Brot in Form von Eulen und Affen. Am Morgen war der Bäcker sehr böse. Er schrie: „Das ist doch falsch!" Till lachte und antwortete: „Du hast es so gesagt." Die Leute in der Stadt lachten auch und kauften die lustigen Brote sofort. Der Bäcker verkaufte an diesem Tag mehr Brot als sonst. Am Ende war er nicht mehr böse.$t$,
    $t$Till Eulenspiegel était un homme joyeux. Il voyageait de ville en ville et aimait faire des farces. Un jour, il arriva dans une petite ville. Là, il travailla chez un boulanger. Le boulanger dit : « Cuis aujourd'hui des hiboux et des singes en pain ! » Il voulait dire des formes amusantes. Mais Till comprit les mots tout à fait littéralement. Il fit vraiment du pain en forme de hiboux et de singes. Le matin, le boulanger était très fâché. Il cria : « C'est complètement faux ! » Till rit et répondit : « Tu l'as dit comme ça. » Les gens de la ville rirent et achetèrent aussitôt les pains amusants. Ce jour-là, le boulanger vendit plus de pain que d'habitude. À la fin, il n'était plus fâché.$t$,
    $t${"Till":"Till (prénom)","Eulenspiegel":"Eulenspiegel (nom)","war":"était","ein":"un","lustiger":"joyeux","Mann":"homme","Er":"il","reiste":"voyageait","von":"de","Stadt":"ville","zu":"à / vers","und":"et","machte":"faisait","gern":"volontiers","Streiche":"des farces","Eines":"un (jour)","Tages":"jour (gén.)","kam":"vint","er":"il","in":"dans","eine":"une","kleine":"petite","Dort":"là","arbeitete":"travaillait","bei":"chez","einem":"un","Bäcker":"boulanger","Der":"le","sagte":"dit","Back":"cuis (impératif)","heute":"aujourd'hui","Eulen":"des hiboux","Affen":"des singes","aus":"en / à partir de","Brot":"pain","meinte":"voulait dire","damit":"par cela","lustige":"amusantes","Formen":"formes","Aber":"mais","verstand":"comprit","die":"les / la","Wörter":"mots","ganz":"tout à fait","genau":"exactement","backte":"cuisit","wirklich":"vraiment","Form":"forme","Am":"au","Morgen":"matin","der":"le","sehr":"très","böse":"fâché","schrie":"cria","Das":"cela","ist":"est","doch":"pourtant","falsch":"faux","lachte":"rit","antwortete":"répondit","Du":"tu","hast":"as","es":"cela / le","so":"ainsi","gesagt":"dit","Die":"les","Leute":"gens","lachten":"rirent","auch":"aussi","kauften":"achetèrent","lustigen":"amusants","Brote":"pains","sofort":"aussitôt","verkaufte":"vendit","an":"à","diesem":"ce","Tag":"jour","mehr":"plus","als":"que","sonst":"d'habitude","Ende":"fin","nicht":"pas"}$t$::jsonb,
    $t$Légende allemande$t$
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wer ist Till Eulenspiegel?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Ein lustiger Mann, der Streiche macht$t$, true, 1),
    (v_q, $t$Ein König$t$, false, 2),
    (v_q, $t$Ein Bäcker aus Berlin$t$, false, 3),
    (v_q, $t$Ein kleiner Junge$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was machte Till Eulenspiegel gern, wenn er von Stadt zu Stadt reiste?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er backte jeden Tag Brot$t$, false, 1),
    (v_q, $t$Er machte gern Streiche$t$, true, 2),
    (v_q, $t$Er suchte immer Arbeit$t$, false, 3),
    (v_q, $t$Er schlief den ganzen Tag$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum passt das Wort 'Streiche' gut zu Tills Charakter in dieser Geschichte?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Weil er nie mit Menschen sprach$t$, false, 1),
    (v_q, $t$Weil er die Wörter des Bäckers absichtlich wörtlich nahm, um einen Scherz zu machen$t$, true, 2),
    (v_q, $t$Weil er sehr traurig war$t$, false, 3),
    (v_q, $t$Weil er nie in Städte reiste$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was sollte Till beim Bäcker backen?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Kuchen$t$, false, 1),
    (v_q, $t$Eulen und Affen aus Brot$t$, true, 2),
    (v_q, $t$Nur Brötchen$t$, false, 3),
    (v_q, $t$Süßigkeiten$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie meinte der Bäcker seine Worte 'Back Eulen und Affen'?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er meinte damit komische Brotformen$t$, true, 1),
    (v_q, $t$Er meinte echte Tiere$t$, false, 2),
    (v_q, $t$Er meinte gar nichts$t$, false, 3),
    (v_q, $t$Er meinte Kuchen für Kinder$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Worin liegt das Missverständnis zwischen Till und dem Bäcker?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Der Bäcker sprach eine andere Sprache$t$, false, 1),
    (v_q, $t$Till verstand die bildliche Redewendung wörtlich und backte wirklich Eulen und Affen aus Brot$t$, true, 2),
    (v_q, $t$Till hatte kein Mehl mehr$t$, false, 3),
    (v_q, $t$Der Bäcker wollte gar kein Brot backen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was passierte am Ende der Geschichte?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Der Bäcker verlor seinen Laden$t$, false, 1),
    (v_q, $t$Die Leute kauften die lustigen Brote sofort$t$, true, 2),
    (v_q, $t$Till musste die Stadt verlassen$t$, false, 3),
    (v_q, $t$Niemand kaufte das Brot$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie reagierten die Leute in der Stadt auf die komischen Brote?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie waren böse wie der Bäcker$t$, false, 1),
    (v_q, $t$Sie lachten und kauften die Brote sofort$t$, true, 2),
    (v_q, $t$Sie riefen die Polizei$t$, false, 3),
    (v_q, $t$Sie ignorierten das Brot$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was zeigt das Ende der Geschichte über die Wirkung von Tills Streich?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Der Streich schadete allen Menschen in der Stadt$t$, false, 1),
    (v_q, $t$Obwohl der Bäcker zuerst böse war, brachte der Streich am Ende sogar mehr Kunden und Gewinn$t$, true, 2),
    (v_q, $t$Der Bäcker verlor sein ganzes Geld$t$, false, 3),
    (v_q, $t$Till musste für den Schaden bezahlen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'der Streich' in dieser Geschichte?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$ein Scherz oder eine lustige Aktion$t$, true, 1),
    (v_q, $t$ein trauriges Ereignis$t$, false, 2),
    (v_q, $t$eine Art Brot$t$, false, 3),
    (v_q, $t$ein Beruf$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welches Wort passt am besten zu 'lustig' in der Geschichte?$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$komisch und fröhlich$t$, true, 1),
    (v_q, $t$sehr ernst$t$, false, 2),
    (v_q, $t$gefährlich$t$, false, 3),
    (v_q, $t$langweilig$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet der Ausdruck 'die Wörter ganz genau verstehen' im Kontext der Geschichte?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$die Wörter wörtlich, ohne bildliche Bedeutung, zu nehmen$t$, true, 1),
    (v_q, $t$die Wörter überhaupt nicht verstehen$t$, false, 2),
    (v_q, $t$die Wörter falsch aussprechen$t$, false, 3),
    (v_q, $t$die Wörter vergessen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Ergänze: Till ___ ein lustiger Mann. (sein, Präteritum)$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$war$t$, true, 1),
    (v_q, $t$ist$t$, false, 2),
    (v_q, $t$sein$t$, false, 3),
    (v_q, $t$waren$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Form ist korrekt? Der Bäcker ___ sehr böse. (sein, Präteritum, 3. Person Singular)$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$war$t$, true, 1),
    (v_q, $t$warst$t$, false, 2),
    (v_q, $t$seid$t$, false, 3),
    (v_q, $t$sind$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wähle die richtige Präteritumform: Die Leute ___ laut. (lachen, 3. Person Plural)$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$lachten$t$, true, 1),
    (v_q, $t$lachte$t$, false, 2),
    (v_q, $t$lacht$t$, false, 3),
    (v_q, $t$gelacht$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$Schreib drei Sätze: Was würdest du tun, wenn du wie Till Eulenspiegel einen Streich machen könntest?$t$, 1, 'normal', 'production', $t$Ich würde gern einen kleinen Streich machen. Zum Beispiel würde ich meinem Freund einen falschen Namen sagen. Er würde bestimmt lachen. Ein guter Streich macht niemandem wirklich weh.$t$);

END $block$;

-- 2. Rübezahl, der Herr der Berge
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary, culture_note) VALUES (
    'A2',
    $t$Rübezahl, der Herr der Berge$t$,
    $t$Im Riesengebirge lebte ein mächtiger Berggeist. Die Menschen nannten ihn Rübezahl. Er wohnte in den Bergen und passte auf die Natur auf. Rübezahl half armen und ehrlichen Leuten oft sehr gern. Aber er mochte keine bösen oder gierigen Menschen. Einmal verlief sich eine junge Prinzessin im Wald. Sie hatte großen Hunger und weinte laut. Rübezahl fand das Mädchen und brachte ihr Brot und warme Kleidung. Er zeigte ihr auch den richtigen Weg nach Hause. Ein reicher Kaufmann wollte später den Wald für Geld zerstören. Rübezahl wurde sehr wütend und verwandelte den Weg in einen dunklen Irrgarten. Der Kaufmann fand tagelang keinen Ausgang mehr. Seit dieser Zeit achten die Menschen im Riesengebirge den Berggeist und respektieren die Natur.$t$,
    $t$Dans les Monts des Géants vivait un puissant esprit de la montagne. Les gens l'appelaient Rübezahl. Il habitait dans les montagnes et veillait sur la nature. Rübezahl aidait volontiers les gens pauvres et honnêtes. Mais il n'aimait pas les gens méchants ou avides. Une fois, une jeune princesse se perdit dans la forêt. Elle avait très faim et pleurait fort. Rübezahl trouva la jeune fille et lui apporta du pain et des vêtements chauds. Il lui montra aussi le bon chemin pour rentrer chez elle. Un riche marchand voulut plus tard détruire la forêt pour de l'argent. Rübezahl devint très en colère et transforma le chemin en un sombre labyrinthe. Le marchand ne trouva pendant des jours plus aucune sortie. Depuis ce temps-là, les gens des Monts des Géants respectent l'esprit de la montagne et la nature.$t$,
    $t${"Im":"dans le","Riesengebirge":"Monts des Géants","lebte":"vivait","ein":"un","mächtiger":"puissant","Berggeist":"esprit de la montagne","Die":"les","Menschen":"gens","nannten":"appelaient","ihn":"le","Rübezahl":"Rübezahl (nom)","Er":"il","wohnte":"habitait","in":"dans","den":"les","Bergen":"montagnes","und":"et","passte":"veillait","auf":"sur","die":"la / les","Natur":"nature","half":"aidait","armen":"pauvres","ehrlichen":"honnêtes","Leuten":"gens","oft":"souvent","sehr":"très","gern":"volontiers","Aber":"mais","er":"il","mochte":"aimait","keine":"aucun(e)","bösen":"méchants","oder":"ou","gierigen":"avides","Einmal":"une fois","verlief":"se perdit","sich":"se","eine":"une","junge":"jeune","Prinzessin":"princesse","im":"dans le","Wald":"forêt","Sie":"elle","hatte":"avait","großen":"grande","Hunger":"faim","weinte":"pleurait","laut":"fort","fand":"trouva","das":"la","Mädchen":"jeune fille","brachte":"apporta","ihr":"lui","Brot":"pain","warme":"chauds","Kleidung":"vêtements","zeigte":"montra","auch":"aussi","richtigen":"bon","Weg":"chemin","nach":"vers","Hause":"maison","Ein":"un","reicher":"riche","Kaufmann":"marchand","wollte":"voulait","später":"plus tard","für":"pour","Geld":"argent","zerstören":"détruire","wurde":"devint","wütend":"furieux","verwandelte":"transforma","einen":"un","dunklen":"sombre","Irrgarten":"labyrinthe","Der":"le","tagelang":"pendant des jours","keinen":"aucune","Ausgang":"sortie","mehr":"plus","Seit":"depuis","dieser":"ce","Zeit":"temps","achten":"respectent","respektieren":"respectent"}$t$::jsonb,
    $t$Légende allemande$t$
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wer ist Rübezahl?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Ein mächtiger Berggeist$t$, true, 1),
    (v_q, $t$Ein Kaufmann$t$, false, 2),
    (v_q, $t$Ein König$t$, false, 3),
    (v_q, $t$Ein kleines Kind$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wo lebte Rübezahl?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$In einer großen Stadt$t$, false, 1),
    (v_q, $t$In den Bergen des Riesengebirges$t$, true, 2),
    (v_q, $t$Auf einem Schiff$t$, false, 3),
    (v_q, $t$In einem Schloss am Meer$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Rolle spielte Rübezahl für die Natur des Riesengebirges?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er zerstörte die Natur selbst$t$, false, 1),
    (v_q, $t$Er passte auf die Natur auf und beschützte sie$t$, true, 2),
    (v_q, $t$Er interessierte sich nicht für die Berge$t$, false, 3),
    (v_q, $t$Er verkaufte die Bäume$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wem half Rübezahl im Wald?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Einer jungen Prinzessin$t$, true, 1),
    (v_q, $t$Einem alten König$t$, false, 2),
    (v_q, $t$Einem Bäcker$t$, false, 3),
    (v_q, $t$Einem Fischer$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was gab Rübezahl der Prinzessin, die sich verlaufen hatte?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Geld und Schmuck$t$, false, 1),
    (v_q, $t$Brot und warme Kleidung$t$, true, 2),
    (v_q, $t$Ein Pferd$t$, false, 3),
    (v_q, $t$Einen Spiegel$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was zeigt die Episode mit der Prinzessin über Rübezahls Charakter?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Dass er nur reichen Leuten hilft$t$, false, 1),
    (v_q, $t$Dass er ehrlichen und armen Menschen in Not gern hilft$t$, true, 2),
    (v_q, $t$Dass er Menschen generell nicht mag$t$, false, 3),
    (v_q, $t$Dass er nur mit Tieren spricht$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was machte Rübezahl mit dem gierigen Kaufmann?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er schenkte ihm Gold$t$, false, 1),
    (v_q, $t$Er verwandelte den Weg in einen Irrgarten$t$, true, 2),
    (v_q, $t$Er half ihm beim Bauen$t$, false, 3),
    (v_q, $t$Er lud ihn zum Essen ein$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum wurde Rübezahl wütend auf den Kaufmann?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Der Kaufmann wollte den Wald für Geld zerstören$t$, true, 1),
    (v_q, $t$Der Kaufmann war zu freundlich$t$, false, 2),
    (v_q, $t$Der Kaufmann verlor sein Geld$t$, false, 3),
    (v_q, $t$Der Kaufmann half armen Leuten$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was lernen die Menschen im Riesengebirge laut der Geschichte aus Rübezahls Verhalten?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Dass Geld wichtiger ist als die Natur$t$, false, 1),
    (v_q, $t$Dass sie die Natur respektieren und den Berggeist achten sollten$t$, true, 2),
    (v_q, $t$Dass Wälder nie gefährlich sind$t$, false, 3),
    (v_q, $t$Dass Kaufleute immer Recht haben$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'der Berggeist'?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$ein magisches Wesen der Berge$t$, true, 1),
    (v_q, $t$ein Berufsname$t$, false, 2),
    (v_q, $t$ein Tier im Wald$t$, false, 3),
    (v_q, $t$ein Werkzeug$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'gierig' in der Geschichte?$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Man will immer mehr Geld oder Besitz$t$, true, 1),
    (v_q, $t$Man ist sehr freundlich$t$, false, 2),
    (v_q, $t$Man ist sehr müde$t$, false, 3),
    (v_q, $t$Man ist sehr klein$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet der Ausdruck 'den Weg in einen Irrgarten verwandeln'?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$den Weg schöner machen$t$, false, 1),
    (v_q, $t$den Weg so verändern, dass man sich darin verläuft und nicht mehr herausfindet$t$, true, 2),
    (v_q, $t$den Weg länger machen$t$, false, 3),
    (v_q, $t$den Weg mit Blumen schmücken$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Ergänze: Rübezahl ___ in den Bergen. (wohnen, Präteritum)$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$wohnte$t$, true, 1),
    (v_q, $t$wohnt$t$, false, 2),
    (v_q, $t$wohnen$t$, false, 3),
    (v_q, $t$gewohnt$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Form ist korrekt? Die Prinzessin ___ großen Hunger. (haben, Präteritum)$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$hatte$t$, true, 1),
    (v_q, $t$habe$t$, false, 2),
    (v_q, $t$hat$t$, false, 3),
    (v_q, $t$haben$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wähle die richtige Präteritumform: Der Kaufmann ___ den Wald zerstören. (wollen, 3. Person Singular)$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$wollte$t$, true, 1),
    (v_q, $t$will$t$, false, 2),
    (v_q, $t$gewollt$t$, false, 3),
    (v_q, $t$wollten$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$Schreib drei Sätze: Warum ist es wichtig, die Natur zu respektieren?$t$, 1, 'normal', 'production', $t$Die Natur gibt uns Wasser, Luft und Essen. Wenn wir die Wälder zerstören, verlieren viele Tiere ihr Zuhause. Deshalb müssen wir die Natur schützen, so wie Rübezahl es tut.$t$);

END $block$;

-- 3. Aschenputtel
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary, culture_note) VALUES (
    'A2',
    $t$Aschenputtel$t$,
    $t$Ein Mädchen lebte bei seiner bösen Stiefmutter und zwei Stiefschwestern. Sie musste den ganzen Tag arbeiten und schlief neben dem Ofen in der Asche. Deshalb nannten alle sie Aschenputtel. Eines Tages lud der König alle jungen Frauen zu einem großen Fest ein. Die Stiefmutter erlaubte Aschenputtel nicht mitzukommen. Traurig ging das Mädchen in den Garten und weinte. Da halfen ihr Vögel und brachten ein wunderschönes Kleid und goldene Schuhe. Aschenputtel ging zum Fest, und der Prinz tanzte nur mit ihr. Um Mitternacht lief sie schnell nach Hause und verlor dabei einen Schuh. Der Prinz suchte im ganzen Land nach der Besitzerin. Nur Aschenputtels Fuß passte perfekt in den kleinen Schuh. Am Ende heiratete der Prinz Aschenputtel, und sie lebten glücklich zusammen.$t$,
    $t$Une jeune fille vivait chez sa méchante belle-mère et ses deux demi-sœurs. Elle devait travailler toute la journée et dormait près du poêle, dans la cendre. C'est pourquoi tout le monde l'appelait Cendrillon. Un jour, le roi invita toutes les jeunes femmes à une grande fête. La belle-mère ne permit pas à Cendrillon de venir. Triste, la jeune fille alla dans le jardin et pleura. Alors des oiseaux l'aidèrent et lui apportèrent une magnifique robe et des chaussures dorées. Cendrillon alla à la fête, et le prince ne dansa qu'avec elle. À minuit, elle courut vite chez elle et perdit une chaussure. Le prince chercha dans tout le pays la propriétaire. Seul le pied de Cendrillon allait parfaitement dans la petite chaussure. À la fin, le prince épousa Cendrillon, et ils vécurent heureux ensemble.$t$,
    $t${"Ein":"une","Mädchen":"jeune fille","lebte":"vivait","bei":"chez","seiner":"sa","bösen":"méchante","Stiefmutter":"belle-mère","und":"et","zwei":"deux","Stiefschwestern":"demi-sœurs","Sie":"elle","musste":"devait","den":"la (acc.)","ganzen":"toute","Tag":"journée","arbeiten":"travailler","schlief":"dormait","neben":"à côté de","dem":"le","Ofen":"poêle","in":"dans","der":"la / le","Asche":"cendre","Deshalb":"c'est pourquoi","nannten":"appelaient","alle":"tous","sie":"elle / la","Aschenputtel":"Cendrillon","Eines":"un (jour)","Tages":"jour (gén.)","lud":"invita","König":"roi","jungen":"jeunes","Frauen":"femmes","zu":"à","einem":"un","großen":"grande","Fest":"fête","ein":"(particule verbale d'inviter)","Die":"la","erlaubte":"permit","nicht":"ne pas","mitzukommen":"de venir","Traurig":"triste","ging":"alla","das":"la","Garten":"jardin","weinte":"pleura","Da":"alors","halfen":"aidèrent","ihr":"lui","Vögel":"oiseaux","brachten":"apportèrent","wunderschönes":"magnifique","Kleid":"robe","goldene":"dorées","Schuhe":"chaussures","zum":"à la","Prinz":"prince","tanzte":"dansa","nur":"seulement","mit":"avec","Um":"à","Mitternacht":"minuit","lief":"courut","schnell":"vite","nach":"vers","Hause":"la maison","verlor":"perdit","dabei":"ce faisant","einen":"une","Schuh":"chaussure","Der":"le","suchte":"chercha","im":"dans le","Land":"pays","Besitzerin":"propriétaire","Nur":"seulement","Aschenputtels":"de Cendrillon","Fuß":"pied","passte":"allait bien","perfekt":"parfaitement","kleinen":"petite","Am":"à la","Ende":"fin","heiratete":"épousa","lebten":"vécurent","glücklich":"heureux","zusammen":"ensemble"}$t$::jsonb,
    $t$Conte des frères Grimm$t$
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum nannten alle das Mädchen Aschenputtel?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Weil sie neben dem Ofen in der Asche schlief$t$, true, 1),
    (v_q, $t$Weil sie einen goldenen Schuh hatte$t$, false, 2),
    (v_q, $t$Weil sie eine Prinzessin war$t$, false, 3),
    (v_q, $t$Weil sie sehr reich war$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie behandelten die Stiefmutter und die Stiefschwestern Aschenputtel?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sehr freundlich und liebevoll$t$, false, 1),
    (v_q, $t$Sie musste den ganzen Tag arbeiten$t$, true, 2),
    (v_q, $t$Sie durfte den ganzen Tag spielen$t$, false, 3),
    (v_q, $t$Sie schickten sie zur Schule$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was zeigt der Name 'Aschenputtel' über ihre Lebenssituation im Haus?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Dass sie die Herrin des Hauses war$t$, false, 1),
    (v_q, $t$Dass ihr Alltag von harter Arbeit und niedrigem Status geprägt war$t$, true, 2),
    (v_q, $t$Dass sie gern in der Küche kochte$t$, false, 3),
    (v_q, $t$Dass sie eine berühmte Sängerin war$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wer half Aschenputtel, zum Fest zu gehen?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Vögel$t$, true, 1),
    (v_q, $t$Die Stiefmutter$t$, false, 2),
    (v_q, $t$Der König$t$, false, 3),
    (v_q, $t$Ein Lehrer$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bekam Aschenputtel von den Vögeln?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Ein Pferd und einen Wagen$t$, false, 1),
    (v_q, $t$Ein wunderschönes Kleid und goldene Schuhe$t$, true, 2),
    (v_q, $t$Geld und Schmuck$t$, false, 3),
    (v_q, $t$Ein Buch$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Bedeutung hat die Hilfe der Vögel für die Handlung der Geschichte?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie ist unwichtig für die Geschichte$t$, false, 1),
    (v_q, $t$Sie ermöglicht es Aschenputtel trotz des Verbots der Stiefmutter, zum Fest zu gehen$t$, true, 2),
    (v_q, $t$Sie zeigt, dass Aschenputtel Vögel nicht mag$t$, false, 3),
    (v_q, $t$Sie macht die Stiefmutter glücklich$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was verlor Aschenputtel beim Weglaufen um Mitternacht?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Einen Schuh$t$, true, 1),
    (v_q, $t$Ihr Kleid$t$, false, 2),
    (v_q, $t$Ihren Hut$t$, false, 3),
    (v_q, $t$Ihre Tasche$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie fand der Prinz Aschenputtel am Ende wieder?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er fragte den König$t$, false, 1),
    (v_q, $t$Der Schuh passte nur an ihren Fuß$t$, true, 2),
    (v_q, $t$Er suchte im Wald$t$, false, 3),
    (v_q, $t$Ein Vogel zeigte ihm den Weg$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was zeigt das Ende der Geschichte über Aschenputtels Schicksal?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie blieb für immer bei der Stiefmutter$t$, false, 1),
    (v_q, $t$Trotz eines schwierigen Lebens wurde ihre Güte am Ende belohnt$t$, true, 2),
    (v_q, $t$Der Prinz heiratete eine Stiefschwester$t$, false, 3),
    (v_q, $t$Aschenputtel verlor am Ende alles$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'die Stiefmutter'?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$die zweite Frau des Vaters, nicht die leibliche Mutter$t$, true, 1),
    (v_q, $t$die eigene Mutter$t$, false, 2),
    (v_q, $t$eine Lehrerin$t$, false, 3),
    (v_q, $t$eine Königin$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'ein Fest' in dieser Geschichte?$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$eine große, festliche Feier$t$, true, 1),
    (v_q, $t$ein trauriger Tag$t$, false, 2),
    (v_q, $t$eine Schule$t$, false, 3),
    (v_q, $t$ein Arbeitstag$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet der Ausdruck 'im ganzen Land nach der Besitzerin suchen'?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$überall im Land eine bestimmte Person suchen$t$, true, 1),
    (v_q, $t$nur im eigenen Haus suchen$t$, false, 2),
    (v_q, $t$ein neues Land finden$t$, false, 3),
    (v_q, $t$einen Schuh kaufen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Ergänze: Aschenputtel ___ den ganzen Tag arbeiten. (müssen, Präteritum)$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$musste$t$, true, 1),
    (v_q, $t$muss$t$, false, 2),
    (v_q, $t$müssen$t$, false, 3),
    (v_q, $t$gemusst$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Form ist korrekt? Der Prinz ___ nur mit Aschenputtel. (tanzen, Präteritum)$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$tanzte$t$, true, 1),
    (v_q, $t$tanzt$t$, false, 2),
    (v_q, $t$tanzen$t$, false, 3),
    (v_q, $t$getanzt$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wähle die richtige Präteritumform: Der Prinz ___ Aschenputtel am Ende. (heiraten, 3. Person Singular)$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$heiratete$t$, true, 1),
    (v_q, $t$heiratet$t$, false, 2),
    (v_q, $t$heiraten$t$, false, 3),
    (v_q, $t$geheiratet$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$Schreib drei Sätze: Wie würdest du dich fühlen, wenn du nicht zu einem wichtigen Fest gehen dürftest?$t$, 1, 'normal', 'production', $t$Ich wäre sehr traurig und enttäuscht. Ich würde meine Freunde vermissen und mich allein fühlen. Vielleicht würde ich trotzdem versuchen, gute Laune zu behalten.$t$);

END $block$;

-- 4. Schneewittchen
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary, culture_note) VALUES (
    'A2',
    $t$Schneewittchen$t$,
    $t$Eine Königin bekam eine Tochter mit Haut so weiß wie Schnee. Deshalb hieß das Mädchen Schneewittchen. Die Königin starb, und der König heiratete eine neue, sehr eitle Frau. Die neue Königin hatte einen magischen Spiegel und fragte ihn jeden Tag, wer die Schönste im Land sei. Als der Spiegel Schneewittchen nannte, wurde die Königin furchtbar eifersüchtig. Sie schickte einen Jäger in den Wald, aber er hatte Mitleid und ließ Schneewittchen laufen. Das Mädchen fand ein kleines Haus im Wald, wo sieben Zwerge wohnten. Die Zwerge nahmen sie freundlich auf. Die böse Königin fand Schneewittchen trotzdem und gab ihr einen giftigen Apfel. Schneewittchen fiel sofort in einen tiefen Schlaf. Ein Prinz kam vorbei, küsste sie, und Schneewittchen wachte glücklich wieder auf.$t$,
    $t$Une reine eut une fille à la peau aussi blanche que la neige. C'est pourquoi la petite fille s'appelait Blanche-Neige. La reine mourut, et le roi épousa une nouvelle femme, très vaniteuse. La nouvelle reine avait un miroir magique et lui demandait chaque jour qui était la plus belle du pays. Quand le miroir nomma Blanche-Neige, la reine devint terriblement jalouse. Elle envoya un chasseur dans la forêt, mais il eut pitié et laissa Blanche-Neige s'enfuir. La jeune fille trouva une petite maison dans la forêt, où vivaient sept nains. Les nains l'accueillirent gentiment. La méchante reine trouva quand même Blanche-Neige et lui donna une pomme empoisonnée. Blanche-Neige tomba aussitôt dans un sommeil profond. Un prince passa par là, l'embrassa, et Blanche-Neige se réveilla, heureuse.$t$,
    $t${"Eine":"une","Königin":"reine","bekam":"eut","eine":"une","Tochter":"fille","mit":"avec","Haut":"peau","so":"aussi","weiß":"blanche","wie":"que","Schnee":"neige","Deshalb":"c'est pourquoi","hieß":"s'appelait","das":"la","Mädchen":"petite fille","Schneewittchen":"Blanche-Neige","Die":"la","starb":"mourut","und":"et","der":"le","König":"roi","heiratete":"épousa","neue":"nouvelle","sehr":"très","eitle":"vaniteuse","Frau":"femme","hatte":"avait","einen":"un","magischen":"magique","Spiegel":"miroir","fragte":"demandait","ihn":"lui","jeden":"chaque","Tag":"jour","wer":"qui","die":"la","Schönste":"la plus belle","im":"dans le","Land":"pays","sei":"était (subj.)","Als":"quand","nannte":"nomma","wurde":"devint","furchtbar":"terriblement","eifersüchtig":"jalouse","Sie":"elle","schickte":"envoya","Jäger":"chasseur","in":"dans","den":"la","Wald":"forêt","aber":"mais","er":"il","Mitleid":"pitié","ließ":"laissa","laufen":"s'enfuir","Das":"la","fand":"trouva","ein":"une","kleines":"petite","Haus":"maison","wo":"où","sieben":"sept","Zwerge":"nains","wohnten":"vivaient","nahmen":"accueillirent","sie":"la / elle","freundlich":"gentiment","auf":"(part. verbale de se réveiller)","böse":"méchante","trotzdem":"quand même","gab":"donna","ihr":"lui","giftigen":"empoisonnée","Apfel":"pomme","fiel":"tomba","sofort":"aussitôt","tiefen":"profond","Schlaf":"sommeil","Ein":"un","Prinz":"prince","kam":"passa","vorbei":"par là","küsste":"embrassa","wachte":"se réveilla","wieder":"de nouveau","glücklich":"heureuse"}$t$::jsonb,
    $t$Conte des frères Grimm$t$
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum hieß das Mädchen Schneewittchen?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Weil ihre Haut so weiß wie Schnee war$t$, true, 1),
    (v_q, $t$Weil sie im Winter geboren wurde$t$, false, 2),
    (v_q, $t$Weil sie weiße Kleider trug$t$, false, 3),
    (v_q, $t$Weil sie in den Bergen lebte$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was fragte die neue Königin jeden Tag ihren Spiegel?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Wie das Wetter wird$t$, false, 1),
    (v_q, $t$Wer die Schönste im Land sei$t$, true, 2),
    (v_q, $t$Wo Schneewittchen ist$t$, false, 3),
    (v_q, $t$Wie alt sie ist$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was zeigt die tägliche Frage der Königin an den Spiegel über ihren Charakter?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Dass sie sehr bescheiden ist$t$, false, 1),
    (v_q, $t$Dass sie extrem eitel ist und Angst hat, nicht die Schönste zu sein$t$, true, 2),
    (v_q, $t$Dass sie sich nicht für ihr Aussehen interessiert$t$, false, 3),
    (v_q, $t$Dass sie den Spiegel hasst$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wer rettete Schneewittchen im Wald?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Der Jäger, der Mitleid hatte$t$, true, 1),
    (v_q, $t$Der König$t$, false, 2),
    (v_q, $t$Ein Zwerg mit einem Schwert$t$, false, 3),
    (v_q, $t$Ein Prinz$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wo fand Schneewittchen ein sicheres Zuhause?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Bei einer alten Frau$t$, false, 1),
    (v_q, $t$In einem Haus mit sieben Zwergen$t$, true, 2),
    (v_q, $t$In einem Schloss$t$, false, 3),
    (v_q, $t$Bei ihrem Vater$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum entschied sich der Jäger, Schneewittchen laufen zu lassen?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er hatte Angst vor der Königin$t$, false, 1),
    (v_q, $t$Er hatte Mitleid mit ihr$t$, true, 2),
    (v_q, $t$Er kannte sie nicht$t$, false, 3),
    (v_q, $t$Er wollte selbst König werden$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was gab die böse Königin Schneewittchen?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Einen giftigen Apfel$t$, true, 1),
    (v_q, $t$Einen Ring$t$, false, 2),
    (v_q, $t$Ein Buch$t$, false, 3),
    (v_q, $t$Einen Brief$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie wachte Schneewittchen wieder auf?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Ein Prinz kam vorbei und küsste sie$t$, true, 1),
    (v_q, $t$Sie wachte allein auf$t$, false, 2),
    (v_q, $t$Die Zwerge weckten sie$t$, false, 3),
    (v_q, $t$Der Spiegel weckte sie$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welches Muster wiederholt sich in der Geschichte in Bezug auf die Königin und Schneewittchen?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Die Königin versucht mehrmals, Schneewittchen zu schaden, weil sie eifersüchtig ist$t$, true, 1),
    (v_q, $t$Die Königin und Schneewittchen sind beste Freundinnen$t$, false, 2),
    (v_q, $t$Schneewittchen versucht, die Königin zu verletzen$t$, false, 3),
    (v_q, $t$Die Königin vergisst Schneewittchen völlig$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'eifersüchtig'?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Man will nicht, dass jemand anderes schöner oder besser ist$t$, true, 1),
    (v_q, $t$Man ist sehr glücklich$t$, false, 2),
    (v_q, $t$Man ist sehr müde$t$, false, 3),
    (v_q, $t$Man ist sehr hungrig$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'giftig' in der Geschichte?$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$gefährlich für die Gesundheit, kann krank machen$t$, true, 1),
    (v_q, $t$sehr lecker$t$, false, 2),
    (v_q, $t$sehr bunt$t$, false, 3),
    (v_q, $t$sehr teuer$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet der Ausdruck 'in einen tiefen Schlaf fallen'?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$schnell einschlafen und sehr fest schlafen$t$, true, 1),
    (v_q, $t$aufwachen$t$, false, 2),
    (v_q, $t$spazieren gehen$t$, false, 3),
    (v_q, $t$laut singen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Ergänze: Die Königin ___ einen magischen Spiegel. (haben, Präteritum)$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$hatte$t$, true, 1),
    (v_q, $t$hat$t$, false, 2),
    (v_q, $t$haben$t$, false, 3),
    (v_q, $t$gehabt$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Form ist korrekt? Die sieben Zwerge ___ Schneewittchen freundlich auf. (aufnehmen, Präteritum)$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$nahmen$t$, true, 1),
    (v_q, $t$nahm$t$, false, 2),
    (v_q, $t$nehmen$t$, false, 3),
    (v_q, $t$genommen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wähle die richtige Präteritumform: Ein Prinz ___ Schneewittchen. (küssen, 3. Person Singular)$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$küsste$t$, true, 1),
    (v_q, $t$küsst$t$, false, 2),
    (v_q, $t$küssen$t$, false, 3),
    (v_q, $t$geküsst$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$Schreib drei Sätze: Was denkst du über die Königin? Warum handelt sie so?$t$, 1, 'normal', 'production', $t$Ich finde die Königin sehr eifersüchtig. Sie hat Angst, nicht mehr die Schönste zu sein. Deshalb tut sie Schneewittchen weh. Das ist natürlich nicht richtig.$t$);

END $block$;

-- 5. Der Froschkönig
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary, culture_note) VALUES (
    'A2',
    $t$Der Froschkönig$t$,
    $t$Eine junge Prinzessin spielte gern mit einer goldenen Kugel am Brunnen. Eines Tages fiel die Kugel ins Wasser und verschwand. Die Prinzessin weinte sehr laut. Plötzlich sprach ein Frosch mit ihr und versprach, die Kugel zu holen. Dafür verlangte er nur eines: Er wollte ihr Freund sein, an ihrem Tisch essen und in ihrem Bett schlafen. Die Prinzessin sagte schnell Ja, aber sie hielt ihr Wort nicht. Am nächsten Tag kam der Frosch zum Schloss und erinnerte sie an ihr Versprechen. Der König hörte alles und befahl seiner Tochter, ihr Wort zu halten. Die Prinzessin war sehr wütend und warf den Frosch gegen die Wand. In diesem Moment verwandelte sich der Frosch in einen jungen, freundlichen Prinzen. Die Prinzessin und der Prinz heirateten bald danach.$t$,
    $t$Une jeune princesse aimait jouer avec une boule dorée près d'un puits. Un jour, la boule tomba dans l'eau et disparut. La princesse pleura très fort. Soudain, une grenouille lui parla et promit d'aller chercher la boule. En échange, elle ne demandait qu'une chose : elle voulait être son amie, manger à sa table et dormir dans son lit. La princesse dit vite oui, mais elle ne tint pas sa parole. Le lendemain, la grenouille vint au château et lui rappela sa promesse. Le roi entendit tout et ordonna à sa fille de tenir sa parole. La princesse était très en colère et jeta la grenouille contre le mur. À ce moment-là, la grenouille se transforma en un jeune prince aimable. La princesse et le prince se marièrent peu après.$t$,
    $t${"Eine":"une","junge":"jeune","Prinzessin":"princesse","spielte":"aimait jouer","gern":"volontiers","mit":"avec","einer":"une","goldenen":"dorée","Kugel":"boule","am":"près du","Brunnen":"puits","Eines":"un (jour)","Tages":"jour (gén.)","fiel":"tomba","die":"la / les","ins":"dans l'","Wasser":"eau","und":"et","verschwand":"disparut","Die":"la","weinte":"pleura","sehr":"très","laut":"fort","Plötzlich":"soudain","sprach":"parla","ein":"une","Frosch":"grenouille","ihr":"lui","versprach":"promit","zu":"à/de","holen":"aller chercher","Dafür":"en échange","verlangte":"demandait","er":"elle (la grenouille, masc. en allemand)","nur":"seulement","eines":"une chose","Er":"elle (ici pour la grenouille)","wollte":"voulait","Freund":"ami","sein":"être","an":"à","ihrem":"sa","Tisch":"table","essen":"manger","in":"dans","Bett":"lit","schlafen":"dormir","sagte":"dit","schnell":"vite","Ja":"oui","aber":"mais","sie":"elle","hielt":"tint","Wort":"parole","nicht":"pas","Am":"le","nächsten":"lendemain","Tag":"jour","kam":"vint","der":"la/le","zum":"au","Schloss":"château","erinnerte":"rappela","Versprechen":"promesse","Der":"le","König":"roi","hörte":"entendit","alles":"tout","befahl":"ordonna","seiner":"sa","Tochter":"fille","halten":"tenir","war":"était","wütend":"en colère","warf":"jeta","den":"la","gegen":"contre","Wand":"mur","In":"à","diesem":"ce","Moment":"moment","verwandelte":"transforma","sich":"se","einen":"un","jungen":"jeune","freundlichen":"aimable","Prinzen":"prince","Prinz":"prince","heirateten":"se marièrent","bald":"bientôt","danach":"après"}$t$::jsonb,
    $t$Conte des frères Grimm$t$
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was verlor die Prinzessin am Brunnen?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Eine goldene Kugel$t$, true, 1),
    (v_q, $t$Ihren Schuh$t$, false, 2),
    (v_q, $t$Ihren Ring$t$, false, 3),
    (v_q, $t$Ihr Kleid$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wer half der Prinzessin, ihre Kugel wiederzufinden?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Ein Vogel$t$, false, 1),
    (v_q, $t$Ein Frosch$t$, true, 2),
    (v_q, $t$Der König$t$, false, 3),
    (v_q, $t$Ein Fischer$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was verlangte der Frosch als Gegenleistung für seine Hilfe?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Gold und Silber$t$, false, 1),
    (v_q, $t$Freundschaft, mit ihr zu essen und in ihrem Bett zu schlafen$t$, true, 2),
    (v_q, $t$Ein neues Zuhause$t$, false, 3),
    (v_q, $t$Nichts, er half aus Freundlichkeit$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Hielt die Prinzessin ihr Versprechen sofort?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Nein, sie hielt es nicht$t$, true, 1),
    (v_q, $t$Ja, sofort$t$, false, 2),
    (v_q, $t$Sie vergaß den Frosch$t$, false, 3),
    (v_q, $t$Sie lachte nur$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was tat der König, als der Frosch zum Schloss kam?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er befahl seiner Tochter, ihr Wort zu halten$t$, true, 1),
    (v_q, $t$Er jagte den Frosch weg$t$, false, 2),
    (v_q, $t$Er ignorierte den Frosch$t$, false, 3),
    (v_q, $t$Er lachte über den Frosch$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Rolle spielt der König in der Geschichte in Bezug auf Versprechen?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er zeigt, dass Versprechen keine Bedeutung haben$t$, false, 1),
    (v_q, $t$Er besteht darauf, dass seine Tochter ihr gegebenes Wort respektiert$t$, true, 2),
    (v_q, $t$Er verbietet seiner Tochter, mit dem Frosch zu sprechen$t$, false, 3),
    (v_q, $t$Er bestraft den Frosch$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was passierte, als die Prinzessin den Frosch gegen die Wand warf?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er verwandelte sich in einen Prinzen$t$, true, 1),
    (v_q, $t$Er verschwand für immer$t$, false, 2),
    (v_q, $t$Er wurde ein Vogel$t$, false, 3),
    (v_q, $t$Nichts passierte$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum warf die Prinzessin den Frosch gegen die Wand?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie war sehr wütend$t$, true, 1),
    (v_q, $t$Sie wollte spielen$t$, false, 2),
    (v_q, $t$Der Frosch bat sie darum$t$, false, 3),
    (v_q, $t$Sie hatte Angst vor ihm$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was zeigt das Ende der Geschichte über die Wirkung von Wut in diesem Märchen?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Wut zerstört alles am Ende$t$, false, 1),
    (v_q, $t$Ausgerechnet ein Akt der Wut löst zufällig den Zauber und bringt eine glückliche Wendung$t$, true, 2),
    (v_q, $t$Wut hat gar keine Wirkung in der Geschichte$t$, false, 3),
    (v_q, $t$Der Frosch bleibt für immer ein Frosch$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'der Brunnen'?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$ein Ort mit Wasser, oft im Freien$t$, true, 1),
    (v_q, $t$ein Schloss$t$, false, 2),
    (v_q, $t$ein Wald$t$, false, 3),
    (v_q, $t$ein Fluss$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'ein Versprechen halten'?$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$tun, was man gesagt hat$t$, true, 1),
    (v_q, $t$etwas vergessen$t$, false, 2),
    (v_q, $t$laut sprechen$t$, false, 3),
    (v_q, $t$ein Geschenk kaufen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet der Ausdruck 'sich in einen Prinzen verwandeln'?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$die Form oder Gestalt komplett ändern und zu einem Prinzen werden$t$, true, 1),
    (v_q, $t$einen Prinzen kennenlernen$t$, false, 2),
    (v_q, $t$einen Prinzen heiraten$t$, false, 3),
    (v_q, $t$einen Prinzen besuchen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Ergänze: Die Kugel ___ ins Wasser. (fallen, Präteritum)$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$fiel$t$, true, 1),
    (v_q, $t$fällt$t$, false, 2),
    (v_q, $t$fallen$t$, false, 3),
    (v_q, $t$gefallen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Form ist korrekt? Der Frosch ___ mit der Prinzessin. (sprechen, Präteritum)$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$sprach$t$, true, 1),
    (v_q, $t$spricht$t$, false, 2),
    (v_q, $t$sprechen$t$, false, 3),
    (v_q, $t$gesprochen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wähle die richtige Präteritumform: Der Frosch ___ sich in einen Prinzen. (verwandeln, reflexiv, 3. Person Singular)$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$verwandelte sich$t$, true, 1),
    (v_q, $t$verwandelt sich$t$, false, 2),
    (v_q, $t$verwandeln sich$t$, false, 3),
    (v_q, $t$verwandelten sich$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$Schreib drei Sätze: Warum ist es wichtig, ein Versprechen zu halten?$t$, 1, 'normal', 'production', $t$Ein Versprechen ist wie ein Wort, das man gegeben hat. Wenn man es nicht hält, verliert man das Vertrauen anderer Menschen. Deshalb finde ich es wichtig, immer ehrlich zu bleiben.$t$);

END $block$;

-- 6. Die Sterntaler
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary, culture_note) VALUES (
    'A2',
    $t$Die Sterntaler$t$,
    $t$Ein armes Mädchen hatte keine Eltern, kein Haus und kein Bett mehr. Es besaß nur seine Kleider und ein kleines Stück Brot. Trotzdem hatte das Mädchen ein gutes Herz. Auf dem Weg traf es einen hungrigen Mann und gab ihm sein ganzes Brot. Dann traf es ein frierendes Kind und schenkte ihm seine warme Mütze. Nach und nach gab das Mädchen auch sein Kleid und sein Hemd an arme Kinder. Am Ende stand es nachts allein im dunklen Wald, ganz ohne Kleidung. Plötzlich fielen viele glänzende Sterne vom Himmel. Die Sterne wurden zu echten Goldstücken auf dem Boden. Außerdem fand das Mädchen ein neues, schönes Hemd aus feinem Stoff. Von diesem Tag an lebte es nie wieder arm, weil es immer anderen geholfen hatte.$t$,
    $t$Une pauvre fille n'avait plus ni parents, ni maison, ni lit. Elle ne possédait que ses vêtements et un petit morceau de pain. Pourtant, la jeune fille avait bon cœur. En chemin, elle rencontra un homme affamé et lui donna tout son pain. Puis elle rencontra un enfant qui avait froid et lui offrit son bonnet chaud. Petit à petit, la jeune fille donna aussi sa robe et sa chemise à des enfants pauvres. À la fin, elle se retrouva la nuit, seule dans la forêt sombre, complètement sans vêtements. Soudain, de nombreuses étoiles brillantes tombèrent du ciel. Les étoiles se transformèrent en vraies pièces d'or sur le sol. En plus, la jeune fille trouva une nouvelle et belle chemise en tissu fin. À partir de ce jour, elle ne vécut plus jamais dans la pauvreté, parce qu'elle avait toujours aidé les autres.$t$,
    $t${"Ein":"un","armes":"pauvre","Mädchen":"jeune fille","hatte":"avait","keine":"aucun(e)","Eltern":"parents","kein":"aucune","Haus":"maison","und":"et","Bett":"lit","mehr":"plus","Es":"elle","besaß":"possédait","nur":"seulement","seine":"ses","Kleider":"vêtements","ein":"un","kleines":"petit","Stück":"morceau","Brot":"pain","Trotzdem":"pourtant","das":"la","gutes":"bon","Herz":"cœur","Auf":"en","dem":"le","Weg":"chemin","traf":"rencontra","es":"elle","einen":"un","hungrigen":"affamé","Mann":"homme","gab":"donna","ihm":"lui","sein":"son","ganzes":"tout entier","Dann":"puis","frierendes":"qui avait froid","Kind":"enfant","schenkte":"offrit","warme":"chaud","Mütze":"bonnet","Nach":"petit à","nach":"petit","auch":"aussi","Kleid":"robe","Hemd":"chemise","an":"à","arme":"pauvres","Kinder":"enfants","Am":"à la","Ende":"fin","stand":"se retrouva","nachts":"la nuit","allein":"seule","im":"dans la","dunklen":"sombre","Wald":"forêt","ganz":"complètement","ohne":"sans","Kleidung":"vêtements","Plötzlich":"soudain","fielen":"tombèrent","viele":"de nombreuses","glänzende":"brillantes","Sterne":"étoiles","vom":"du","Himmel":"ciel","Die":"les","wurden":"devinrent","zu":"en","echten":"vraies","Goldstücken":"pièces d'or","auf":"sur","Boden":"sol","Außerdem":"en plus","fand":"trouva","neues":"nouvelle","schönes":"belle","aus":"en","feinem":"fin","Stoff":"tissu","Von":"à partir de","diesem":"ce","Tag":"jour","lebte":"vécut","nie":"jamais","wieder":"plus","arm":"pauvre","weil":"parce que","immer":"toujours","anderen":"aux autres","geholfen":"aidé"}$t$::jsonb,
    $t$Conte des frères Grimm$t$
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was besaß das arme Mädchen am Anfang der Geschichte?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Nur ihre Kleider und ein kleines Stück Brot$t$, true, 1),
    (v_q, $t$Ein großes Haus$t$, false, 2),
    (v_q, $t$Viel Geld$t$, false, 3),
    (v_q, $t$Eine Familie$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie war der Charakter des Mädchens trotz ihrer Armut?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie hatte ein gutes Herz$t$, true, 1),
    (v_q, $t$Sie war egoistisch$t$, false, 2),
    (v_q, $t$Sie war immer böse$t$, false, 3),
    (v_q, $t$Sie war sehr faul$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was zeigt der Kontrast zwischen der Armut des Mädchens und ihrem guten Herzen?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Dass Armut automatisch schlechten Charakter bedeutet$t$, false, 1),
    (v_q, $t$Dass Güte nicht vom Besitz abhängt, sondern vom Herzen$t$, true, 2),
    (v_q, $t$Dass reiche Menschen immer freundlicher sind$t$, false, 3),
    (v_q, $t$Dass das Mädchen nichts zu geben hatte$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was gab das Mädchen dem hungrigen Mann?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Ihr ganzes Brot$t$, true, 1),
    (v_q, $t$Ihr Geld$t$, false, 2),
    (v_q, $t$Ihr Bett$t$, false, 3),
    (v_q, $t$Nichts$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was schenkte das Mädchen dem frierenden Kind?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Ihre warme Mütze$t$, true, 1),
    (v_q, $t$Ihr Brot$t$, false, 2),
    (v_q, $t$Ihr Buch$t$, false, 3),
    (v_q, $t$Nichts, sie ging weiter$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie entwickelt sich das Verhalten des Mädchens im Laufe der Geschichte?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie gibt immer weniger, je ärmer sie wird$t$, false, 1),
    (v_q, $t$Sie gibt nach und nach alles her, was sie besitzt, obwohl sie selbst arm ist$t$, true, 2),
    (v_q, $t$Sie gibt nur einmal etwas und hört dann auf$t$, false, 3),
    (v_q, $t$Sie nimmt anderen Menschen etwas weg$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was fiel am Ende vom Himmel?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Glänzende Sterne, die zu Gold wurden$t$, true, 1),
    (v_q, $t$Regen$t$, false, 2),
    (v_q, $t$Schnee$t$, false, 3),
    (v_q, $t$Blätter$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bekam das Mädchen zusätzlich zu den Goldstücken?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Ein neues, schönes Hemd$t$, true, 1),
    (v_q, $t$Ein Pferd$t$, false, 2),
    (v_q, $t$Ein Schloss$t$, false, 3),
    (v_q, $t$Nichts weiter$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Botschaft vermittelt das Ende der Geschichte?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Wer alles hergibt, verliert am Ende alles für immer$t$, false, 1),
    (v_q, $t$Wer anderen hilft, wird am Ende selbst reich belohnt$t$, true, 2),
    (v_q, $t$Sterne bringen immer Unglück$t$, false, 3),
    (v_q, $t$Man sollte nie etwas verschenken$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'frierend'?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$sehr kalt haben$t$, true, 1),
    (v_q, $t$sehr heiß haben$t$, false, 2),
    (v_q, $t$sehr müde sein$t$, false, 3),
    (v_q, $t$sehr hungrig sein$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'ein gutes Herz haben'?$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$freundlich und großzügig sein$t$, true, 1),
    (v_q, $t$sehr stark sein$t$, false, 2),
    (v_q, $t$sehr klug sein$t$, false, 3),
    (v_q, $t$sehr reich sein$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet der Ausdruck 'nach und nach' in der Geschichte?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Schritt für Schritt, langsam über die Zeit$t$, true, 1),
    (v_q, $t$sofort und plötzlich$t$, false, 2),
    (v_q, $t$nie$t$, false, 3),
    (v_q, $t$nur einmal$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Ergänze: Das Mädchen ___ ein gutes Herz. (haben, Präteritum)$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$hatte$t$, true, 1),
    (v_q, $t$hat$t$, false, 2),
    (v_q, $t$haben$t$, false, 3),
    (v_q, $t$gehabt$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Form ist korrekt? Sie ___ ihm ihr ganzes Brot. (geben, Präteritum)$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$gab$t$, true, 1),
    (v_q, $t$gibt$t$, false, 2),
    (v_q, $t$geben$t$, false, 3),
    (v_q, $t$gegeben$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wähle die richtige Präteritumform: Viele Sterne ___ vom Himmel. (fallen, 3. Person Plural)$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$fielen$t$, true, 1),
    (v_q, $t$fiel$t$, false, 2),
    (v_q, $t$fallen$t$, false, 3),
    (v_q, $t$gefallen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$Schreib drei Sätze: Hast du schon einmal jemandem geholfen, obwohl du selbst wenig hattest? Erzähl kurz davon.$t$, 1, 'normal', 'production', $t$Einmal habe ich meinem Freund mein letztes Geld gegeben. Er brauchte es dringend für den Bus. Ich hatte danach kein Geld mehr, aber ich war trotzdem glücklich, weil ich geholfen hatte.$t$);

END $block$;

-- 7. Der Fischer und seine Frau
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary, culture_note) VALUES (
    'A2',
    $t$Der Fischer und seine Frau$t$,
    $t$Ein armer Fischer lebte mit seiner Frau in einer kleinen, kaputten Hütte. Eines Tages fing er einen sprechenden Fisch. Der Fisch war eigentlich ein verzauberter Prinz und bat um sein Leben. Der Fischer ließ ihn frei und erwartete keine Belohnung. Zu Hause erzählte er alles seiner Frau. Sie wurde sofort wütend und schickte ihn zurück zum Meer. Der Fischer sollte sich ein hübsches Haus wünschen. Der Fisch erfüllte den Wunsch sofort. Aber die Frau wollte immer mehr: erst ein Schloss, dann viel Macht und schließlich wollte sie wie Gott sein. Jedes Mal ging der Fischer traurig zum Meer und sprach mit dem Fisch. Beim letzten, größten Wunsch wurde das Meer schwarz und wild. Die Frau bekam nichts mehr, und beide lebten am Ende wieder arm in ihrer alten Hütte.$t$,
    $t$Un pauvre pêcheur vivait avec sa femme dans une petite hutte délabrée. Un jour, il attrapa un poisson qui parlait. Le poisson était en réalité un prince ensorcelé et supplia pour sa vie. Le pêcheur le relâcha sans attendre de récompense. Chez lui, il raconta tout à sa femme. Elle se mit aussitôt en colère et le renvoya vers la mer. Le pêcheur devait souhaiter une jolie maison. Le poisson exauça le souhait immédiatement. Mais la femme voulait toujours plus : d'abord un château, puis beaucoup de pouvoir, et finalement elle voulut être comme Dieu. Chaque fois, le pêcheur allait tristement vers la mer et parlait avec le poisson. Au dernier souhait, le plus grand de tous, la mer devint noire et déchaînée. La femme n'obtint plus rien, et tous deux finirent par vivre à nouveau pauvres dans leur vieille hutte.$t$,
    $t${"Ein":"un","armer":"pauvre","Fischer":"pêcheur","lebte":"vivait","mit":"avec","seiner":"sa","Frau":"femme","in":"dans","einer":"une","kleinen":"petite","kaputten":"délabrée","Hütte":"hutte","Eines":"un (jour)","Tages":"jour (gén.)","fing":"attrapa","er":"il","einen":"un","sprechenden":"qui parlait","Fisch":"poisson","Der":"le","war":"était","eigentlich":"en réalité","ein":"un","verzauberter":"ensorcelé","Prinz":"prince","und":"et","bat":"supplia","um":"pour","sein":"être","Leben":"vie","ließ":"relâcha","ihn":"le","frei":"libre","erwartete":"attendait","keine":"aucune","Belohnung":"récompense","Zu":"chez","Hause":"lui","erzählte":"raconta","alles":"tout","Sie":"elle","wurde":"se mit à","sofort":"aussitôt","wütend":"en colère","schickte":"renvoya","zurück":"vers","zum":"la","Meer":"mer","sollte":"devait","sich":"se","hübsches":"jolie","Haus":"maison","wünschen":"souhaiter","erfüllte":"exauça","den":"le","Wunsch":"souhait","Aber":"mais","die":"la","wollte":"voulait","immer":"toujours","mehr":"plus","erst":"d'abord","Schloss":"château","dann":"puis","viel":"beaucoup de","Macht":"pouvoir","schließlich":"finalement","sie":"elle","wie":"comme","Gott":"Dieu","Jedes":"chaque","Mal":"fois","ging":"allait","der":"le","traurig":"tristement","sprach":"parlait","dem":"le","Beim":"au","letzten":"dernier","größten":"plus grand","das":"la","schwarz":"noire","wild":"déchaînée","Die":"la","bekam":"obtint","nichts":"rien","beide":"tous les deux","lebten":"vécurent","am":"à la","Ende":"fin","wieder":"de nouveau","arm":"pauvres","ihrer":"leur","alten":"vieille"}$t$::jsonb,
    $t$Conte des frères Grimm$t$
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was fing der Fischer eines Tages?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Einen sprechenden Fisch$t$, true, 1),
    (v_q, $t$Ein altes Boot$t$, false, 2),
    (v_q, $t$Einen Vogel$t$, false, 3),
    (v_q, $t$Ein Netz voller Steine$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wer war der Fisch in Wirklichkeit?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Ein verzauberter Prinz$t$, true, 1),
    (v_q, $t$Ein normaler Fisch$t$, false, 2),
    (v_q, $t$Ein König$t$, false, 3),
    (v_q, $t$Ein Zauberer$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was zeigt das Verhalten des Fischers, als er den Fisch fing?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er war gierig und wollte den Fisch verkaufen$t$, false, 1),
    (v_q, $t$Er ließ den Fisch frei, ohne eine Belohnung zu erwarten$t$, true, 2),
    (v_q, $t$Er tötete den Fisch sofort$t$, false, 3),
    (v_q, $t$Er ignorierte den Fisch$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was wollte die Frau zuerst vom Fisch?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Ein hübsches Haus$t$, true, 1),
    (v_q, $t$Ein Schiff$t$, false, 2),
    (v_q, $t$Ein Pferd$t$, false, 3),
    (v_q, $t$Einen Garten$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie veränderten sich die Wünsche der Frau im Laufe der Geschichte?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie blieb immer zufrieden mit dem Haus$t$, false, 1),
    (v_q, $t$Sie wollte immer mehr: ein Schloss, viel Macht, und schließlich wie Gott sein$t$, true, 2),
    (v_q, $t$Sie wünschte sich nur einmal etwas$t$, false, 3),
    (v_q, $t$Sie wollte gar nichts mehr$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was zeigt die Steigerung der Wünsche der Frau über die menschliche Gier?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Dass Zufriedenheit automatisch mit mehr Besitz kommt$t$, false, 1),
    (v_q, $t$Dass Gier oft kein Ende kennt und immer nach mehr verlangt$t$, true, 2),
    (v_q, $t$Dass die Frau von Anfang an bescheiden war$t$, false, 3),
    (v_q, $t$Dass der Fisch die Wünsche nie erfüllte$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was passierte beim letzten, größten Wunsch der Frau?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Das Meer wurde schwarz und wild, und sie bekam nichts mehr$t$, true, 1),
    (v_q, $t$Sie bekam alles, was sie wollte$t$, false, 2),
    (v_q, $t$Der Fisch verschwand für immer glücklich$t$, false, 3),
    (v_q, $t$Der Fischer wurde König$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wo lebten der Fischer und seine Frau am Ende der Geschichte?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Im Schloss$t$, false, 1),
    (v_q, $t$Wieder arm in ihrer alten Hütte$t$, true, 2),
    (v_q, $t$Auf einem Schiff$t$, false, 3),
    (v_q, $t$In einer großen Stadt$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Moral vermittelt das Ende der Geschichte über Gier und Zufriedenheit?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Wer immer mehr will, verliert am Ende oft alles$t$, true, 1),
    (v_q, $t$Reichtum macht immer glücklich, egal wie man ihn bekommt$t$, false, 2),
    (v_q, $t$Man sollte nie einen Fisch fangen$t$, false, 3),
    (v_q, $t$Der Fischer war schuld an allem$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'verzaubert'?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$durch Magie in etwas anderes verwandelt$t$, true, 1),
    (v_q, $t$sehr müde$t$, false, 2),
    (v_q, $t$sehr glücklich$t$, false, 3),
    (v_q, $t$sehr alt$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'die Macht' in dieser Geschichte?$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$die Kontrolle und der Einfluss über andere$t$, true, 1),
    (v_q, $t$ein Gebäude$t$, false, 2),
    (v_q, $t$ein Tier$t$, false, 3),
    (v_q, $t$ein Beruf$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet der Ausdruck 'immer mehr wollen' im Kontext der Geschichte?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$nie zufrieden sein und ständig nach mehr Besitz oder Macht verlangen$t$, true, 1),
    (v_q, $t$mit wenig zufrieden sein$t$, false, 2),
    (v_q, $t$nichts mehr wollen$t$, false, 3),
    (v_q, $t$nur einmal um etwas bitten$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Ergänze: Der Fischer ___ einen sprechenden Fisch. (fangen, Präteritum)$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$fing$t$, true, 1),
    (v_q, $t$fängt$t$, false, 2),
    (v_q, $t$fangen$t$, false, 3),
    (v_q, $t$gefangen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Form ist korrekt? Die Frau ___ immer mehr. (wollen, Präteritum)$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$wollte$t$, true, 1),
    (v_q, $t$will$t$, false, 2),
    (v_q, $t$wollen$t$, false, 3),
    (v_q, $t$gewollt$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wähle die richtige Präteritumform: Der Fisch ___ jeden Wunsch sofort. (erfüllen, 3. Person Singular)$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$erfüllte$t$, true, 1),
    (v_q, $t$erfüllt$t$, false, 2),
    (v_q, $t$erfüllen$t$, false, 3),
    (v_q, $t$erfüllten$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$Schreib drei Sätze: Was würdest du dir wünschen, wenn du einen magischen Fisch treffen würdest?$t$, 1, 'normal', 'production', $t$Ich würde mir zuerst Gesundheit für meine Familie wünschen. Dann würde ich mir vielleicht ein schönes Haus wünschen. Aber ich würde nicht zu gierig sein, denn ich habe die Geschichte vom Fischer gelesen.$t$);

END $block$;

-- 8. Die goldene Gans
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary, culture_note) VALUES (
    'A2',
    $t$Die goldene Gans$t$,
    $t$Ein Mann hatte drei Söhne. Alle nannten den jüngsten Sohn "der Dummling", weil er anders war als seine Brüder. Eines Tages ging der Dummling in den Wald und traf einen kleinen, grauen Mann. Er teilte freundlich sein Brot mit ihm. Zum Dank zeigte der Mann ihm einen Baum mit einer goldenen Gans. Der Dummling nahm die Gans und ging zu einem Gasthaus. Dort wollte ein neugieriges Mädchen eine goldene Feder stehlen, aber ihre Hand blieb sofort an der Gans kleben. Nacheinander blieben auch ihre Schwester, ein Pfarrer und viele andere Leute aneinander kleben. Eine lange, lustige Kette von Menschen lief hinter dem Dummling her. Eine traurige Prinzessin sah die komische Szene und musste zum ersten Mal in ihrem Leben laut lachen. Der König erlaubte dem Dummling deshalb, die Prinzessin zu heiraten.$t$,
    $t$Un homme avait trois fils. Tout le monde appelait le plus jeune fils « le Nigaud », car il était différent de ses frères. Un jour, le Nigaud alla dans la forêt et rencontra un petit homme gris. Il partagea gentiment son pain avec lui. Pour le remercier, l'homme lui montra un arbre avec une oie en or. Le Nigaud prit l'oie et alla dans une auberge. Là, une fille curieuse voulut voler une plume dorée, mais sa main resta aussitôt collée à l'oie. L'une après l'autre, sa sœur, un curé et bien d'autres gens restèrent collés les uns aux autres. Une longue et amusante chaîne de personnes suivait le Nigaud. Une princesse triste vit cette scène comique et dut, pour la première fois de sa vie, rire fort. Le roi permit donc au Nigaud d'épouser la princesse.$t$,
    $t${"Ein":"un","Mann":"homme","hatte":"avait","drei":"trois","Söhne":"fils","Alle":"tout le monde","nannten":"appelaient","den":"le","jüngsten":"plus jeune","Sohn":"fils","der":"le","Dummling":"Nigaud","weil":"car","er":"il","anders":"différent","war":"était","als":"que","seine":"ses","Brüder":"frères","Eines":"un (jour)","Tages":"jour (gén.)","ging":"alla","in":"dans","Wald":"forêt","und":"et","traf":"rencontra","einen":"un","kleinen":"petit","grauen":"gris","Er":"il","teilte":"partagea","freundlich":"gentiment","sein":"son","Brot":"pain","mit":"avec","ihm":"lui","Zum":"pour","Dank":"remerciement","zeigte":"montra","Baum":"arbre","einer":"une","goldenen":"en or","Gans":"oie","Der":"le","nahm":"prit","die":"l'","zu":"dans","einem":"une","Gasthaus":"auberge","Dort":"là","wollte":"voulut","ein":"une","neugieriges":"curieuse","Mädchen":"fille","eine":"une","goldene":"dorée","Feder":"plume","stehlen":"voler","aber":"mais","ihre":"sa","Hand":"main","blieb":"resta","sofort":"aussitôt","an":"à","kleben":"collée","Nacheinander":"l'une après l'autre","blieben":"restèrent","auch":"aussi","Schwester":"sœur","Pfarrer":"curé","viele":"beaucoup","andere":"d'autres","Leute":"gens","aneinander":"les uns aux autres","Eine":"une","lange":"longue","lustige":"amusante","Kette":"chaîne","von":"de","Menschen":"personnes","lief":"suivait","hinter":"derrière","dem":"le","her":"(suivait derrière)","traurige":"triste","Prinzessin":"princesse","sah":"vit","komische":"comique","Szene":"scène","musste":"dut","zum":"pour la","ersten":"première","Mal":"fois","ihrem":"sa","Leben":"vie","laut":"fort","lachen":"rire","König":"roi","erlaubte":"permit","deshalb":"donc","heiraten":"épouser"}$t$::jsonb,
    $t$Conte des frères Grimm$t$
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum nannten alle den jüngsten Sohn 'der Dummling'?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Weil er anders war als seine Brüder$t$, true, 1),
    (v_q, $t$Weil er sehr groß war$t$, false, 2),
    (v_q, $t$Weil er reich war$t$, false, 3),
    (v_q, $t$Weil er nie sprach$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wen traf der Dummling im Wald?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Einen kleinen, grauen Mann$t$, true, 1),
    (v_q, $t$Einen König$t$, false, 2),
    (v_q, $t$Eine Prinzessin$t$, false, 3),
    (v_q, $t$Einen Fischer$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was zeigt die Geste des Dummlings, sein Brot mit dem grauen Mann zu teilen?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Dass er egoistisch ist$t$, false, 1),
    (v_q, $t$Dass er trotz wenig Besitz freundlich und großzügig ist$t$, true, 2),
    (v_q, $t$Dass er kein Brot mochte$t$, false, 3),
    (v_q, $t$Dass er den Mann nicht mochte$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bekam der Dummling zum Dank?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Einen Baum mit einer goldenen Gans$t$, true, 1),
    (v_q, $t$Geld$t$, false, 2),
    (v_q, $t$Ein Pferd$t$, false, 3),
    (v_q, $t$Ein Schwert$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was wollte das neugierige Mädchen im Gasthaus tun?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Eine goldene Feder stehlen$t$, true, 1),
    (v_q, $t$Der Gans Essen geben$t$, false, 2),
    (v_q, $t$Mit dem Dummling sprechen$t$, false, 3),
    (v_q, $t$Die Gans kaufen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was passierte, als das Mädchen die Gans anfasste?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie bekam die Feder problemlos$t$, false, 1),
    (v_q, $t$Ihre Hand blieb sofort an der Gans kleben$t$, true, 2),
    (v_q, $t$Die Gans flog weg$t$, false, 3),
    (v_q, $t$Nichts passierte$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie reagierte die traurige Prinzessin, als sie die Kette von Menschen sah?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie musste laut lachen$t$, true, 1),
    (v_q, $t$Sie weinte noch mehr$t$, false, 2),
    (v_q, $t$Sie wurde böse$t$, false, 3),
    (v_q, $t$Sie lief weg$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum durfte der Dummling die Prinzessin heiraten?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Weil er sie zum Lachen gebracht hatte$t$, true, 1),
    (v_q, $t$Weil er sehr reich war$t$, false, 2),
    (v_q, $t$Weil er ein Prinz war$t$, false, 3),
    (v_q, $t$Weil er stark war$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was zeigt das Ende der Geschichte über den Charakter des Dummlings im Vergleich zu seinen Brüdern?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Dass Stärke wichtiger ist als Freundlichkeit$t$, false, 1),
    (v_q, $t$Dass sein gutes Herz und seine Freundlichkeit ihm am Ende Erfolg und Glück bringen$t$, true, 2),
    (v_q, $t$Dass seine Brüder am Ende belohnt wurden$t$, false, 3),
    (v_q, $t$Dass Reichtum das Wichtigste im Leben ist$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'neugierig'?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Man möchte gern alles wissen oder sehen$t$, true, 1),
    (v_q, $t$Man ist sehr müde$t$, false, 2),
    (v_q, $t$Man ist sehr traurig$t$, false, 3),
    (v_q, $t$Man ist sehr stark$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'an etwas kleben bleiben'?$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$fest an etwas hängen bleiben, ohne sich lösen zu können$t$, true, 1),
    (v_q, $t$schnell weglaufen$t$, false, 2),
    (v_q, $t$etwas verkaufen$t$, false, 3),
    (v_q, $t$etwas essen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet der Ausdruck 'eine Kette von Menschen' in der Geschichte?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$viele Menschen, die alle miteinander verbunden hintereinander laufen$t$, true, 1),
    (v_q, $t$eine Gruppe von Königen$t$, false, 2),
    (v_q, $t$ein Geschäft mit vielen Filialen$t$, false, 3),
    (v_q, $t$ein Schmuckstück aus Gold$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Ergänze: Der Dummling ___ sein Brot mit dem Mann. (teilen, Präteritum)$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$teilte$t$, true, 1),
    (v_q, $t$teilt$t$, false, 2),
    (v_q, $t$teilen$t$, false, 3),
    (v_q, $t$geteilt$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Form ist korrekt? Ihre Hand ___ sofort an der Gans kleben. (bleiben, Präteritum)$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$blieb$t$, true, 1),
    (v_q, $t$bleibt$t$, false, 2),
    (v_q, $t$bleiben$t$, false, 3),
    (v_q, $t$geblieben$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wähle die richtige Präteritumform: Die Prinzessin ___ zum ersten Mal laut lachen. (müssen, 3. Person Singular)$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$musste$t$, true, 1),
    (v_q, $t$muss$t$, false, 2),
    (v_q, $t$müssen$t$, false, 3),
    (v_q, $t$gemusst$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$Schreib drei Sätze: Was bringt dich normalerweise zum Lachen?$t$, 1, 'normal', 'production', $t$Ich muss oft lachen, wenn meine Freunde lustige Geschichten erzählen. Auch lustige Filme bringen mich zum Lachen. Lachen macht mich immer glücklicher.$t$);

END $block$;

