-- Contenu "patrimoine culturel allemand" — niveau B2 (8 histoires).
-- Contes/légendes du domaine public réécrits, ou fictions originales inspirées
-- de genres/thèmes majeurs de la culture et de l'école allemandes.

-- 1. Das letzte Brot
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary, culture_note) VALUES (
    'B2',
    $t$Das letzte Brot$t$,
    $t$Der Winter 1946 kroch durch die zerbrochenen Fenster wie ein Dieb. Frau Bertha Lenz saß auf einem Holzschemel zwischen den Trümmern ihrer Küche und zählte die Kartoffeln in der Schüssel. Es waren drei. Für sich und den Jungen mussten sie reichen, bis die Karten am Montag wieder galten.

Der Junge hieß Paul und war acht Jahre alt, aber seine Augen sahen älter aus als sein Gesicht. Er stand am Fenster ohne Glas und beobachtete, wie ein Nachbar Ziegelsteine stapelte. "Werden wir heute etwas Warmes essen?", fragte er leise, ohne Hoffnung in der Stimme.

Bertha schnitt eine Kartoffel in dünne Scheiben und legte sie in die Pfanne. Draußen roch es nach kaltem Rauch und nasser Asche. Sie dachte an ihren Mann, der irgendwo im Osten geblieben war, und an die Zeit, als der Ofen noch warm war, ohne dass man dafür betteln musste.

Am Abend klopfte der alte Herr Wenzel an die Tür. Er hielt ein kleines Bündel in der Hand. "Ich habe zu viel Brot bekommen", log er, denn jeder wusste, dass niemand zu viel Brot hatte. Bertha nahm es an, ohne Fragen zu stellen, denn Stolz war ein Luxus, den sich in diesen Tagen niemand mehr leisten konnte. Sie teilte das Brot in drei Teile, einen für Wenzel, den sie ihm später zurückbringen wollte. Draußen fiel leiser Schnee auf die Ruinen, und zum ersten Mal seit Wochen lächelte Paul.$t$,
    $t$L'hiver 1946 se glissait comme un voleur à travers les fenêtres brisées. Madame Bertha Lenz était assise sur un tabouret en bois au milieu des décombres de sa cuisine et comptait les pommes de terre dans le saladier. Il y en avait trois. Pour elle et le garçon, elles devaient suffire jusqu'à ce que les tickets de rationnement soient de nouveau valables le lundi.

Le garçon s'appelait Paul et avait huit ans, mais ses yeux paraissaient plus vieux que son visage. Il se tenait à la fenêtre sans vitre et observait un voisin empiler des briques. « Mangerons-nous quelque chose de chaud aujourd'hui ? » demanda-t-il doucement, sans espoir dans la voix.

Bertha coupa une pomme de terre en fines tranches et les posa dans la poêle. Dehors, cela sentait la fumée froide et la cendre humide. Elle pensait à son mari, resté quelque part à l'Est, et à l'époque où le poêle était encore chaud sans qu'il fallût mendier pour cela.

Le soir, le vieux Monsieur Wenzel frappa à la porte. Il tenait un petit paquet à la main. « J'ai reçu trop de pain », mentit-il, car chacun savait que personne n'avait trop de pain. Bertha l'accepta sans poser de questions, car la fierté était un luxe que plus personne ne pouvait se permettre en ces jours-là. Elle partagea le pain en trois parts, une pour Wenzel, qu'elle voulait lui rapporter plus tard. Dehors, une neige légère tombait sur les ruines, et pour la première fois depuis des semaines, Paul sourit.$t$,
    $t${"1946":"1946","Der":"Le/L'","Winter":"l'hiver","kroch":"se glissait","durch":"à travers","die":"les/la","zerbrochenen":"brisées","Fenster":"fenêtres","wie":"comme","ein":"un","Dieb":"voleur","Frau":"Madame","Bertha":"Bertha","Lenz":"Lenz","saß":"était assise","auf":"sur","einem":"un","Holzschemel":"tabouret en bois","zwischen":"entre/au milieu de","den":"les","Trümmern":"décombres","ihrer":"de sa","Küche":"cuisine","und":"et","zählte":"comptait","Kartoffeln":"pommes de terre","in":"dans","der":"le/la","Schüssel":"saladier","Es":"il/cela","es":"cela","waren":"étaient","drei":"trois","Für":"Pour","sich":"se/elle-même","Jungen":"garçon","mussten":"devaient","sie":"elles/elle","reichen":"suffire","bis":"jusqu'à","Karten":"tickets de rationnement","am":"le/à la","Montag":"lundi","wieder":"de nouveau","galten":"étaient valables","Junge":"garçon","hieß":"s'appelait","Paul":"Paul","war":"était","acht":"huit","Jahre":"ans","alt":"âgé","aber":"mais","seine":"ses","Augen":"yeux","sahen":"paraissaient","älter":"plus vieux","aus":"(sahen...aus = paraissaient)","als":"que","sein":"son","Gesicht":"visage","Er":"Il","stand":"se tenait","ohne":"sans","Glas":"vitre","beobachtete":"observait","Nachbar":"voisin","Ziegelsteine":"briques","stapelte":"empilait","Werden":"Allons-nous","wir":"nous","heute":"aujourd'hui","etwas":"quelque chose","Warmes":"de chaud","essen":"manger","fragte":"demanda","er":"il","leise":"doucement","Hoffnung":"espoir","Stimme":"voix","schnitt":"coupa","eine":"une","Kartoffel":"pomme de terre","dünne":"fines","Scheiben":"tranches","legte":"posa","Pfanne":"poêle","Draußen":"Dehors","roch":"sentait","nach":"(sentait) le/la","kaltem":"froide","Rauch":"fumée","nasser":"humide","Asche":"cendre","Sie":"Elle","dachte":"pensait","an":"à","ihren":"son","Mann":"mari","irgendwo":"quelque part","im":"à l'","Osten":"Est","geblieben":"resté","Zeit":"époque","Ofen":"poêle (de chauffage)","noch":"encore","warm":"chaud","dass":"que","man":"on","dafür":"pour cela","betteln":"mendier","musste":"devait","Am":"Le/Au","Abend":"soir","klopfte":"frappa","alte":"vieux","Herr":"Monsieur","Wenzel":"Wenzel","Tür":"porte","hielt":"tenait","kleines":"petit","Bündel":"paquet","Hand":"main","Ich":"Je","habe":"ai","zu":"trop/de","viel":"beaucoup/trop","Brot":"pain","bekommen":"reçu","log":"mentit","denn":"car","jeder":"chacun","wusste":"savait","niemand":"personne","hatte":"avait","nahm":"prit","Fragen":"questions","stellen":"poser","Stolz":"fierté","Luxus":"luxe","diesen":"ces","Tagen":"jours","mehr":"plus","leisten":"se permettre","konnte":"pouvait","teilte":"partagea","das":"le","Teile":"parts","einen":"une","für":"pour","ihm":"lui","später":"plus tard","zurückbringen":"rapporter","wollte":"voulait","fiel":"tombait","leiser":"légère","Schnee":"neige","Ruinen":"ruines","zum":"pour la","ersten":"première","Mal":"fois","seit":"depuis","Wochen":"semaines","lächelte":"sourit"}$t$::jsonb,
    $t$Inspiré de la nouvelle courte allemande (Kurzgeschichte)$t$
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was zählt Bertha zu Beginn der Geschichte?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Die Kartoffeln in der Schüssel$t$, true, 1),
    (v_q, $t$Die Bücher im Regal$t$, false, 2),
    (v_q, $t$Das Geld in der Dose$t$, false, 3),
    (v_q, $t$Die Kleider im Schrank$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum müssen die drei Kartoffeln bis Montag reichen?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Weil die Lebensmittelkarten erst dann wieder gültig sind$t$, true, 1),
    (v_q, $t$Weil der Laden für immer geschlossen bleibt$t$, false, 2),
    (v_q, $t$Weil Bertha kein Geld mehr hat$t$, false, 3),
    (v_q, $t$Weil Paul nicht mehr essen möchte$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was verrät die Tatsache, dass die Kartoffeln 'bis Montag reichen müssen', über die Lebensumstände der Familie?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie zeigt, wie streng die Nachkriegsrationierung den Alltag bestimmte$t$, true, 1),
    (v_q, $t$Sie zeigt, dass Bertha eine schlechte Haushälterin ist$t$, false, 2),
    (v_q, $t$Sie zeigt, dass die Familie freiwillig fastet$t$, false, 3),
    (v_q, $t$Sie zeigt, dass es auf dem Land keine Lebensmittelknappheit gab$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie alt ist Paul?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Acht Jahre alt$t$, true, 1),
    (v_q, $t$Zehn Jahre alt$t$, false, 2),
    (v_q, $t$Sechs Jahre alt$t$, false, 3),
    (v_q, $t$Zwölf Jahre alt$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was fällt an Pauls Augen besonders auf?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie wirken älter als sein Gesicht$t$, true, 1),
    (v_q, $t$Sie sind sehr groß und rund$t$, false, 2),
    (v_q, $t$Sie leuchten vor Freude$t$, false, 3),
    (v_q, $t$Sie sind blau wie der Himmel$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Wirkung erzielt der Erzähler, indem er Pauls Augen als 'älter als sein Gesicht' beschreibt?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er zeigt, wie sehr Entbehrung Kinder vorzeitig reifen lässt$t$, true, 1),
    (v_q, $t$Er beschreibt lediglich Pauls Aussehen ohne tieferen Sinn$t$, false, 2),
    (v_q, $t$Er deutet an, dass Paul eine Brille braucht$t$, false, 3),
    (v_q, $t$Er vergleicht Paul mit seinem verstorbenen Vater$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bringt Herr Wenzel am Abend vorbei?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Ein Bündel mit Brot$t$, true, 1),
    (v_q, $t$Einen Sack Kartoffeln$t$, false, 2),
    (v_q, $t$Eine Kiste Kohle$t$, false, 3),
    (v_q, $t$Einen Brief$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum sagt Herr Wenzel, er habe 'zu viel Brot bekommen'?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Um Bertha die Annahme des Geschenks zu erleichtern, ohne dass sie sich schämen muss$t$, true, 1),
    (v_q, $t$Weil das tatsächlich stimmt$t$, false, 2),
    (v_q, $t$Um mit seinem Reichtum anzugeben$t$, false, 3),
    (v_q, $t$Weil er das Brot loswerden will, da es schlecht ist$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was zeigt der Satz 'Stolz war ein Luxus, den sich in diesen Tagen niemand mehr leisten konnte' über die zwischenmenschlichen Beziehungen in der Notzeit?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Notlagen zwingen Menschen, gegenseitige Hilfe trotz Scham anzunehmen$t$, true, 1),
    (v_q, $t$Die Menschen hatten in dieser Zeit keinerlei Stolz mehr$t$, false, 2),
    (v_q, $t$Bertha war schon immer eine sehr bescheidene Person$t$, false, 3),
    (v_q, $t$Wenzel wollte Bertha bewusst demütigen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'Trümmer' im Text?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Zerstörte Gebäudereste, Ruinen$t$, true, 1),
    (v_q, $t$Frisches Gemüse$t$, false, 2),
    (v_q, $t$Alte Möbelstücke$t$, false, 3),
    (v_q, $t$Warme Kleidung$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$In welchem Zusammenhang wird 'Trümmer' in der Geschichte verwendet?$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Bertha sitzt zwischen den Trümmern ihrer Küche$t$, true, 1),
    (v_q, $t$Paul spielt in den Trümmern eines Parks$t$, false, 2),
    (v_q, $t$Wenzel verkauft Trümmer auf dem Markt$t$, false, 3),
    (v_q, $t$Die Trümmer werden zu einem Denkmal umgebaut$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welches Wort ist in diesem Kontext KEIN sinnvolles Synonym für 'Trümmer'?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Blüten$t$, true, 1),
    (v_q, $t$Ruinen$t$, false, 2),
    (v_q, $t$Schutt$t$, false, 3),
    (v_q, $t$Überreste$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Form ist das Präteritum von 'lügen' in der 3. Person Singular?$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$log$t$, true, 1),
    (v_q, $t$lügte$t$, false, 2),
    (v_q, $t$gelogen$t$, false, 3),
    (v_q, $t$lügt$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$'Log' im Satz 'log er' ist die Präteritumform von welchem Verb?$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$lügen$t$, true, 1),
    (v_q, $t$liegen$t$, false, 2),
    (v_q, $t$legen$t$, false, 3),
    (v_q, $t$loggen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Aussage zur Form 'log' ist grammatisch korrekt?$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Es ist die Form eines starken Verbs mit Vokalwechsel ü→o im Präteritum$t$, true, 1),
    (v_q, $t$Es ist ein schwaches Verb mit der Endung -te$t$, false, 2),
    (v_q, $t$Es handelt sich um den Konjunktiv II$t$, false, 3),
    (v_q, $t$Es ist eine Partizipform$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$Beschreiben Sie in 5-7 Sätzen, wie sich das Leben in Deutschland unmittelbar nach dem Zweiten Weltkrieg von Ihrem heutigen Alltag unterscheidet. Gehen Sie dabei auf Nahrung, Nachbarschaftshilfe und Alltagsgegenstände ein.$t$, 1, 'normal', 'production', $t$Unmittelbar nach dem Zweiten Weltkrieg fehlte es in Deutschland an fast allem, besonders an Nahrungsmitteln, Heizmaterial und Kleidung. Viele Familien mussten mit Lebensmittelkarten auskommen, die nur eine sehr kleine Menge an Grundnahrungsmitteln zuteilten. Heute dagegen haben wir in den meisten europäischen Ländern jederzeit Zugang zu Supermärkten mit einem riesigen Angebot. Damals war Nachbarschaftshilfe oft überlebenswichtig, weil man sich gegenseitig mit dem Wenigen aushalf, das man besaß. Diese enge Solidarität ist heute seltener geworden, da die meisten Menschen ihre Bedürfnisse individuell decken können. Trotzdem zeigt die Geschichte von Bertha und Paul, dass Mitgefühl und Würde auch in extremer Not möglich bleiben. Ich finde es wichtig, sich diese Zeit bewusst zu machen, um den heutigen Wohlstand nicht als selbstverständlich zu betrachten.$t$);

END $block$;

-- 2. Die Übung
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary, culture_note) VALUES (
    'B2',
    $t$Die Übung$t$,
    $t$Frau Albrecht wollte ihren Sozialkundekurs für die Gefahren der Gruppendynamik sensibilisieren. Sie schlug ein einfaches Spiel vor: Alle Schüler sollten sich ein gemeinsames Zeichen ausdenken, einen Gruß, der die Klasse elf B als "Team Phoenix" auszeichnete. Anfangs lachten die Schüler über die erhobene Faust und den Ruf "Wir sind eins!", aber nach wenigen Tagen trugen fast alle das selbstgemalte Abzeichen am Ärmel.

Jonas, ein ruhiger Junge in der letzten Reihe, machte nicht mit. Er fand die Übung kindisch und blieb lieber für sich. Zuerst wurde er nur übersehen. Dann tuschelten die anderen, wenn er den Raum betrat, und beim Gruppenprojekt wollte niemand mehr mit ihm zusammenarbeiten. Selbst seine beste Freundin Lena trug plötzlich das Abzeichen, aus Angst, sonst ebenfalls ausgeschlossen zu werden.

Als Frau Albrecht bemerkte, wie schnell aus Begeisterung Ausgrenzung geworden war, hielt sie die Übung nicht sofort an. Sie wollte sehen, wohin es führte, und filmte heimlich eine Unterrichtsstunde. Als sie den Schülern die Aufnahmen zeigte, herrschte betretenes Schweigen im Klassenzimmer. Niemand hatte gemerkt, wie sehr sie sich verändert hatten.

"Genau das ist mit ganzen Gesellschaften passiert", sagte sie ruhig. Jonas nickte, ohne triumphierend zu wirken. Am nächsten Tag lag kein einziges Abzeichen mehr auf den Tischen, aber alle wussten, dass die Frage, wie leicht man sich einer Gruppe unterwirft, sie noch lange begleiten würde.$t$,
    $t$Madame Albrecht voulait sensibiliser son cours d'éducation civique aux dangers de la dynamique de groupe. Elle proposa un jeu simple : tous les élèves devaient inventer un signe commun, un salut, qui distinguerait la classe de onzième B en tant que « Team Phoenix ». Au début, les élèves riaient du poing levé et du cri « Nous ne faisons qu'un ! », mais après quelques jours, presque tous portaient l'insigne peint à la main sur la manche.

Jonas, un garçon calme assis au dernier rang, ne participait pas. Il trouvait l'exercice puéril et préférait rester à l'écart. Au début, on l'ignorait simplement. Puis les autres se mirent à chuchoter quand il entrait dans la salle, et lors du projet de groupe, plus personne ne voulait travailler avec lui. Même sa meilleure amie Lena se mit soudain à porter l'insigne, de peur d'être exclue elle aussi.

Lorsque Madame Albrecht remarqua avec quelle rapidité l'enthousiasme s'était transformé en exclusion, elle n'arrêta pas immédiatement l'exercice. Elle voulait voir jusqu'où cela irait, et filma secrètement un cours. Quand elle montra les images aux élèves, un silence gêné régna dans la classe. Personne n'avait remarqué à quel point ils avaient changé.

« C'est exactement ce qui est arrivé à des sociétés entières », dit-elle calmement. Jonas hocha la tête, sans triomphalisme. Le lendemain, plus aucun insigne ne traînait sur les tables, mais tous savaient que la question de savoir avec quelle facilité on se soumet à un groupe les accompagnerait encore longtemps.$t$,
    $t${"Frau":"Madame","Albrecht":"Albrecht","wollte":"voulait","ihren":"son","Sozialkundekurs":"cours d'éducation civique","für":"à/pour","die":"les/la","Gefahren":"dangers","der":"de la","Gruppendynamik":"dynamique de groupe","sensibilisieren":"sensibiliser","Sie":"Elle","sie":"elle/ils","schlug":"proposa","ein":"un","einfaches":"simple","Spiel":"jeu","vor":"(schlug...vor = proposa)","Alle":"Tous les","Schüler":"élèves","sollten":"devaient","sich":"se/s'","gemeinsames":"commun","Zeichen":"signe","ausdenken":"inventer","einen":"un","Gruß":"salut","Klasse":"classe","elf":"onze","B":"B","als":"comme/en tant que","Team":"équipe","Phoenix":"Phénix","auszeichnete":"distinguait","Anfangs":"Au début","lachten":"riaient","über":"de","erhobene":"levé","Faust":"poing","und":"et","den":"le","Ruf":"cri","Wir":"Nous","sind":"sommes","eins":"un","aber":"mais","nach":"après","wenigen":"quelques","Tagen":"jours","trugen":"portaient","fast":"presque","alle":"tous","das":"l'/le","selbstgemalte":"peint à la main","Abzeichen":"insigne","am":"sur la","Ärmel":"manche","Jonas":"Jonas","ruhiger":"calme","Junge":"garçon","in":"dans","letzten":"dernier","Reihe":"rang","machte":"faisait","nicht":"ne pas","mit":"avec","Er":"Il","fand":"trouvait","Übung":"exercice","kindisch":"puéril","blieb":"restait","lieber":"plutôt","Zuerst":"D'abord","wurde":"fut","er":"il","nur":"seulement","übersehen":"ignoré","Dann":"Puis","tuschelten":"chuchotaient","anderen":"les autres","wenn":"quand","Raum":"salle","betrat":"entrait","beim":"lors du","Gruppenprojekt":"projet de groupe","niemand":"personne","mehr":"plus","ihm":"lui","zusammenarbeiten":"travailler ensemble","Selbst":"Même","seine":"sa","beste":"meilleure","Freundin":"amie","Lena":"Lena","trug":"portait","plötzlich":"soudain","aus":"par","Angst":"peur","sonst":"sinon","ebenfalls":"également","ausgeschlossen":"exclue","zu":"d'être/de","werden":"être","Als":"Lorsque","bemerkte":"remarqua","wie":"comme/comment","schnell":"vite","Begeisterung":"enthousiasme","Ausgrenzung":"exclusion","geworden":"devenu","war":"était","hielt":"arrêta","sofort":"immédiatement","an":"(hielt...an = arrêta)","sehen":"voir","wohin":"où","es":"cela","führte":"menait","filmte":"filma","heimlich":"secrètement","eine":"un","Unterrichtsstunde":"cours","Schülern":"élèves","Aufnahmen":"images/enregistrements","zeigte":"montra","herrschte":"régnait","betretenes":"gêné","Schweigen":"silence","im":"dans la","Klassenzimmer":"salle de classe","Niemand":"Personne","hatte":"avait","gemerkt":"remarqué","sehr":"à quel point","verändert":"changé","hatten":"avaient","Genau":"Exactement","ist":"est","ganzen":"entières","Gesellschaften":"sociétés","passiert":"arrivé","sagte":"dit","ruhig":"calmement","nickte":"hocha la tête","ohne":"sans","triumphierend":"triomphant","wirken":"paraître","Am":"Le","nächsten":"lendemain","Tag":"jour","lag":"traînait","kein":"aucun","einziges":"seul","auf":"sur","Tischen":"tables","wussten":"savaient","dass":"que","Frage":"question","leicht":"facilement","man":"on","einer":"à un","Gruppe":"groupe","unterwirft":"soumet","noch":"encore","lange":"longtemps","begleiten":"accompagner","würde":"allait"}$t$::jsonb,
    $t$Inspiré d'un classique de la littérature scolaire allemande$t$
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was schlägt Frau Albrecht ihrer Klasse vor?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Ein gemeinsames Zeichen und einen Gruß zu erfinden$t$, true, 1),
    (v_q, $t$Eine Klassenfahrt zu organisieren$t$, false, 2),
    (v_q, $t$Einen Test über Gruppendynamik zu schreiben$t$, false, 3),
    (v_q, $t$Ein Theaterstück aufzuführen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welches Ziel verfolgt Frau Albrecht mit der Übung?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie will die Klasse für die Gefahren der Gruppendynamik sensibilisieren$t$, true, 1),
    (v_q, $t$Sie will die Klasse zu einem Wettbewerb anmelden$t$, false, 2),
    (v_q, $t$Sie will die Disziplin durch strenge Regeln verbessern$t$, false, 3),
    (v_q, $t$Sie will die Schüler auf eine Prüfung vorbereiten$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was ist die Ironie darin, dass eine Übung GEGEN Gruppendynamik selbst zu gefährlicher Gruppendynamik führt?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie zeigt, wie schnell auch gut gemeinte Zugehörigkeitsgefühle in Ausgrenzung umschlagen können$t$, true, 1),
    (v_q, $t$Sie beweist, dass Frau Albrecht die Übung schlecht vorbereitet hatte$t$, false, 2),
    (v_q, $t$Sie zeigt, dass die Schüler das Thema bereits vorher kannten$t$, false, 3),
    (v_q, $t$Sie beweist, dass Gruppenprojekte generell schädlich sind$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wer macht bei der Übung nicht mit?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Jonas$t$, true, 1),
    (v_q, $t$Lena$t$, false, 2),
    (v_q, $t$Frau Albrecht$t$, false, 3),
    (v_q, $t$Die ganze Klasse$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was passiert Jonas, weil er nicht mitmacht?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er wird von den anderen ausgegrenzt$t$, true, 1),
    (v_q, $t$Er wird zum Klassensprecher gewählt$t$, false, 2),
    (v_q, $t$Er bekommt eine schlechtere Note$t$, false, 3),
    (v_q, $t$Er wird von der Lehrerin gelobt$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum ist das Verhalten von Lena, die aus Angst das Abzeichen trägt, für die Botschaft der Geschichte besonders wichtig?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Es zeigt, wie sozialer Druck auch enge Freundschaften zum Mitmachen zwingen kann$t$, true, 1),
    (v_q, $t$Es zeigt, dass Lena die Übung von Anfang an gut fand$t$, false, 2),
    (v_q, $t$Es zeigt, dass Lena Jonas nie gemocht hat$t$, false, 3),
    (v_q, $t$Es beweist, dass das Abzeichen keine wirkliche Bedeutung hatte$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was zeigt Frau Albrecht der Klasse am Ende?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Heimlich gefilmte Aufnahmen der Unterrichtsstunde$t$, true, 1),
    (v_q, $t$Ein Foto von Jonas$t$, false, 2),
    (v_q, $t$Eine Statistik über Schulnoten$t$, false, 3),
    (v_q, $t$Einen Film über den Zweiten Weltkrieg$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie reagiert die Klasse, als sie die Aufnahmen sieht?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Mit betretenem Schweigen$t$, true, 1),
    (v_q, $t$Mit lautem Applaus$t$, false, 2),
    (v_q, $t$Mit Gelächter$t$, false, 3),
    (v_q, $t$Mit völliger Gleichgültigkeit$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Lehre zieht die Geschichte aus dem Satz 'die Frage, wie leicht man sich einer Gruppe unterwirft, würde sie noch lange begleiten'?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Das Bewusstsein für Konformitätsdruck bleibt wichtiger als eine schnelle, bequeme Lösung$t$, true, 1),
    (v_q, $t$Die Schüler werden das Thema sofort vergessen$t$, false, 2),
    (v_q, $t$Frau Albrecht bereut das Experiment zutiefst$t$, false, 3),
    (v_q, $t$Die Klasse wird die Übung im nächsten Jahr wiederholen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'Ausgrenzung' im Text?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Das Ausschließen einer Person aus einer Gruppe$t$, true, 1),
    (v_q, $t$Eine besondere Auszeichnung$t$, false, 2),
    (v_q, $t$Eine geografische Grenze$t$, false, 3),
    (v_q, $t$Eine Klassenarbeit$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$In welchem Zusammenhang wird 'Ausgrenzung' verwendet?$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Jonas wird von der Klasse ausgegrenzt, weil er nicht mitmacht$t$, true, 1),
    (v_q, $t$Die Schule grenzt ein neues Schulgelände ab$t$, false, 2),
    (v_q, $t$Frau Albrecht grenzt das Thema der Stunde ein$t$, false, 3),
    (v_q, $t$Die Klasse grenzt an ein Nachbargebäude$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welches Wort passt inhaltlich NICHT zu 'Ausgrenzung' im Kontext der Geschichte?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Willkommen$t$, true, 1),
    (v_q, $t$Isolation$t$, false, 2),
    (v_q, $t$Ausschluss$t$, false, 3),
    (v_q, $t$Meidung$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Form ist der Infinitiv von 'trugen'?$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$tragen$t$, true, 1),
    (v_q, $t$trinken$t$, false, 2),
    (v_q, $t$treffen$t$, false, 3),
    (v_q, $t$trauen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$'Trugen' im Satz 'trugen fast alle das Abzeichen' ist welche Zeitform?$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Präteritum$t$, true, 1),
    (v_q, $t$Präsens$t$, false, 2),
    (v_q, $t$Perfekt$t$, false, 3),
    (v_q, $t$Futur I$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Aussage über 'trugen' (von 'tragen') ist grammatisch korrekt?$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Es ist ein starkes Verb, das im Präteritum den Vokal a zu u ändert$t$, true, 1),
    (v_q, $t$Es ist ein schwaches Verb mit regelmäßiger -te-Endung$t$, false, 2),
    (v_q, $t$Es steht im Konjunktiv I$t$, false, 3),
    (v_q, $t$Es ist ein reflexives Verb$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$Schreiben Sie 5-7 Sätze darüber, wie man erkennen kann, dass sich eine Gruppe (Klasse, Verein, Team) in Richtung Ausgrenzung entwickelt, und was man dagegen tun könnte.$t$, 1, 'normal', 'production', $t$Ein erstes Warnzeichen für Ausgrenzung ist, wenn eine Gruppe beginnt, gemeinsame Symbole oder Rituale wichtiger zu nehmen als den einzelnen Menschen. Sobald abweichende Meinungen nicht mehr toleriert, sondern belächelt oder ignoriert werden, entsteht schnell Druck zur Anpassung. Besonders gefährlich wird es, wenn Personen, die nicht mitmachen, plötzlich übersehen oder sogar aktiv gemieden werden. In der Geschichte zeigt sich dies deutlich am Beispiel von Jonas, der wegen seiner Zurückhaltung isoliert wird. Um solche Entwicklungen zu stoppen, sollten Lehrkräfte oder Gruppenleiter regelmäßig offen über das Gruppenverhalten sprechen und kritische Stimmen ausdrücklich wertschätzen. Auch sollte jede Gruppenaktivität freiwillig bleiben, damit niemand aus Angst vor Ausgrenzung mitmacht. Letztlich hilft es, immer wieder zu fragen, ob der Zusammenhalt der Gruppe auf Kosten Einzelner geht.$t$);

END $block$;

-- 3. Der Mann mit der Zeitung
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary, culture_note) VALUES (
    'B2',
    $t$Der Mann mit der Zeitung$t$,
    $t$Herr Fluri kaufte jeden Morgen um Viertel nach sieben dieselbe Zeitung am selben Kiosk, obwohl er sie kaum las. Wichtig war nicht die Zeitung, sondern das kurze Gespräch mit der Kioskfrau, dreißig Sekunden, in denen jemand seinen Namen kannte. Seit seine Frau vor vier Jahren gestorben war, blieb dies das einzige feste Gespräch seines Tages.

Er setzte sich danach immer auf dieselbe Bank am Fluss, faltete die Zeitung ungelesen zusammen und beobachtete die Enten. Manchmal sprach er mit ihnen, leise, damit niemand es hörte. Die Nachbarn hielten ihn für einen stillen, etwas komischen alten Mann, aber niemand kannte den Grund für seine Gewohnheiten.

Eines Morgens war der Kiosk geschlossen. Ein handgeschriebenes Schild hing an der Tür: "Wegen Krankheit geschlossen." Herr Fluri stand lange davor, unsicher, was er nun tun sollte. Ohne die Zeitung fühlte sich der ganze Tag falsch an, wie ein Satz ohne Verb.

Er ging zur Bank, setzte sich ohne Zeitung hin und bemerkte zum ersten Mal, wie das Licht auf dem Wasser tanzte. Eine junge Frau mit einem Hund setzte sich neben ihn und fragte, ob die Enten hier immer so zahm seien. Sie sprachen zwanzig Minuten lang. Am Abend dachte Herr Fluri, dass er selten so viel geredet hatte, seit seine Frau gegangen war, und dass vielleicht nicht die Zeitung ihm gefehlt hatte, sondern einfach jemand, der zuhörte.$t$,
    $t$Chaque matin, à sept heures et quart, Monsieur Fluri achetait le même journal au même kiosque, bien qu'il le lût à peine. Ce qui comptait, ce n'était pas le journal, mais la brève conversation avec la marchande de journaux, trente secondes pendant lesquelles quelqu'un connaissait son nom. Depuis que sa femme était morte quatre ans plus tôt, cela restait la seule conversation régulière de sa journée.

Il s'asseyait ensuite toujours sur le même banc au bord de la rivière, pliait le journal sans l'avoir lu et observait les canards. Parfois, il leur parlait à voix basse, pour que personne ne l'entende. Les voisins le prenaient pour un vieil homme discret et un peu étrange, mais personne ne connaissait la raison de ses habitudes.

Un matin, le kiosque était fermé. Un écriteau manuscrit était accroché à la porte : « Fermé pour cause de maladie. » Monsieur Fluri resta longtemps planté devant, ne sachant que faire. Sans le journal, toute la journée lui semblait fausse, comme une phrase sans verbe.

Il alla jusqu'au banc, s'assit sans journal et remarqua pour la première fois comme la lumière dansait sur l'eau. Une jeune femme avec un chien s'assit à côté de lui et demanda si les canards étaient toujours aussi apprivoisés ici. Ils parlèrent pendant vingt minutes. Le soir, Monsieur Fluri se dit qu'il avait rarement autant parlé depuis le départ de sa femme, et que ce n'était peut-être pas le journal qui lui manquait, mais simplement quelqu'un qui l'écoutait.$t$,
    $t${"Herr":"Monsieur","Fluri":"Fluri","kaufte":"achetait","jeden":"chaque","Morgen":"matin","um":"à","Viertel":"quart","nach":"après/moins... (Viertel nach sieben = sept heures et quart)","sieben":"sept","dieselbe":"le même","Zeitung":"journal","am":"au","selben":"même","Kiosk":"kiosque","obwohl":"bien que","er":"il","sie":"il/le (COD)","kaum":"à peine","las":"lisait","Wichtig":"Important","war":"était","nicht":"ne...pas","die":"le/la","sondern":"mais","das":"la/le","kurze":"brève","Gespräch":"conversation","mit":"avec","der":"la/le","Kioskfrau":"marchande de journaux","dreißig":"trente","Sekunden":"secondes","in":"pendant","denen":"lesquelles","jemand":"quelqu'un","seinen":"son","Namen":"nom","kannte":"connaissait","Seit":"Depuis que","seine":"sa","Frau":"femme","vor":"il y a","vier":"quatre","Jahren":"ans","gestorben":"morte","blieb":"restait","dies":"cela","einzige":"seule","feste":"régulière","seines":"de sa","Tages":"journée","Er":"Il","setzte":"s'asseyait","sich":"se/s'","danach":"ensuite","immer":"toujours","auf":"sur","Bank":"banc","Fluss":"rivière","faltete":"pliait","ungelesen":"sans l'avoir lu","zusammen":"(faltete...zusammen = pliait)","und":"et","beobachtete":"observait","Enten":"canards","Manchmal":"Parfois","sprach":"parlait","ihnen":"leur","leise":"à voix basse","damit":"pour que","niemand":"personne","es":"cela","hörte":"entende","Die":"Les","Nachbarn":"voisins","hielten":"prenaient","ihn":"le","für":"pour","einen":"un","stillen":"discret","etwas":"un peu","komischen":"étrange","alten":"vieil","Mann":"homme","aber":"mais","den":"la","Grund":"raison","Gewohnheiten":"habitudes","Eines":"Un","Morgens":"matin","geschlossen":"fermé","Ein":"Un","ein":"un","handgeschriebenes":"manuscrit","Schild":"écriteau","hing":"était accroché","an":"à","Tür":"porte","Wegen":"pour cause de","Krankheit":"maladie","stand":"resta debout","lange":"longtemps","davor":"devant","unsicher":"incertain","was":"ce que","nun":"maintenant","tun":"faire","sollte":"devait","Ohne":"Sans","ohne":"sans","fühlte":"semblait","ganze":"toute","Tag":"journée","falsch":"fausse","wie":"comme","Satz":"phrase","Verb":"verbe","ging":"alla","zur":"au/vers le","hin":"(setzte sich...hin = s'assit)","bemerkte":"remarqua","zum":"pour la","ersten":"première","Mal":"fois","Licht":"lumière","dem":"l'","Wasser":"eau","tanzte":"dansait","Eine":"Une","junge":"jeune","einem":"un","Hund":"chien","neben":"à côté de","fragte":"demanda","ob":"si","hier":"ici","so":"aussi","zahm":"apprivoisés","seien":"étaient","Sie":"Ils","sprachen":"parlèrent","zwanzig":"vingt","Minuten":"minutes","lang":"pendant","Am":"Le","Abend":"soir","dachte":"se dit","dass":"que","selten":"rarement","viel":"autant","geredet":"parlé","hatte":"avait","seit":"depuis","gegangen":"partie","vielleicht":"peut-être","ihm":"lui","gefehlt":"manqué","einfach":"simplement","zuhörte":"écoutait"}$t$::jsonb,
    $t$Inspiré de la nouvelle courte allemande (Kurzgeschichte)$t$
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was kauft Herr Fluri jeden Morgen?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Dieselbe Zeitung$t$, true, 1),
    (v_q, $t$Frisches Brot$t$, false, 2),
    (v_q, $t$Eine Tasse Kaffee$t$, false, 3),
    (v_q, $t$Blumen für seine Frau$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum ist der Kioskbesuch für Herrn Fluri so wichtig?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Wegen des kurzen Gesprächs, in dem jemand seinen Namen kennt$t$, true, 1),
    (v_q, $t$Weil die Zeitung sehr interessant ist$t$, false, 2),
    (v_q, $t$Weil er dort günstige Angebote findet$t$, false, 3),
    (v_q, $t$Weil er dort seine Enkelkinder trifft$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was sagt der Satz 'Wichtig war nicht die Zeitung, sondern das kurze Gespräch' über Herrn Fluris eigentliches Bedürfnis aus?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sein wahres Bedürfnis ist menschlicher Kontakt, nicht Information$t$, true, 1),
    (v_q, $t$Er möchte eigentlich gar keine Zeitung kaufen$t$, false, 2),
    (v_q, $t$Er ist unzufrieden mit dem Zeitungsinhalt$t$, false, 3),
    (v_q, $t$Er will die Kioskfrau eigentlich meiden$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wohin geht Herr Fluri nach dem Kiosk?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Zu einer Bank am Fluss$t$, true, 1),
    (v_q, $t$Zur Arbeit$t$, false, 2),
    (v_q, $t$Nach Hause ins Bett$t$, false, 3),
    (v_q, $t$In den Supermarkt$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie erklärt der Text Herrn Fluris einsame Gewohnheiten?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Seine Frau ist vor vier Jahren gestorben$t$, true, 1),
    (v_q, $t$Er hat nie geheiratet$t$, false, 2),
    (v_q, $t$Er ist neu in der Stadt$t$, false, 3),
    (v_q, $t$Er mag keine Menschen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet es, dass Herr Fluri 'leise' mit den Enten spricht, 'damit niemand es hörte'?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er schämt sich für sein Bedürfnis nach Gesellschaft und versteckt es$t$, true, 1),
    (v_q, $t$Er glaubt, die Enten können ihn nicht hören$t$, false, 2),
    (v_q, $t$Er möchte die Enten nicht erschrecken$t$, false, 3),
    (v_q, $t$Er übt für ein Gespräch mit der Kioskfrau$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was ist an diesem besonderen Morgen anders?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Der Kiosk ist geschlossen$t$, true, 1),
    (v_q, $t$Es regnet stark$t$, false, 2),
    (v_q, $t$Die Bank ist besetzt$t$, false, 3),
    (v_q, $t$Die Zeitung kostet mehr$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was passiert, als Herr Fluri ohne Zeitung auf der Bank sitzt?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Eine junge Frau mit Hund spricht mit ihm$t$, true, 1),
    (v_q, $t$Er schläft ein$t$, false, 2),
    (v_q, $t$Er geht sofort nach Hause$t$, false, 3),
    (v_q, $t$Die Kioskfrau ruft ihn an$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Erkenntnis gewinnt Herr Fluri am Ende der Geschichte?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Ihm fehlte nicht die Zeitung, sondern jemand, der ihm zuhört$t$, true, 1),
    (v_q, $t$Ihm fehlt vor allem eine neue Zeitung mit mehr Inhalt$t$, false, 2),
    (v_q, $t$Er sollte den Kiosk wechseln$t$, false, 3),
    (v_q, $t$Er sollte sich einen Hund anschaffen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'Gewohnheiten' im Text?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Regelmäßige, feste Verhaltensweisen$t$, true, 1),
    (v_q, $t$Seltene Ausnahmen$t$, false, 2),
    (v_q, $t$Neue Ideen$t$, false, 3),
    (v_q, $t$Finanzielle Probleme$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Worauf beziehen sich Herrn Fluris 'Gewohnheiten' im Text?$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Auf seinen täglichen Zeitungskauf und den Besuch der Bank$t$, true, 1),
    (v_q, $t$Auf seine Arbeit im Büro$t$, false, 2),
    (v_q, $t$Auf seine sportlichen Aktivitäten$t$, false, 3),
    (v_q, $t$Auf seine Reisen ins Ausland$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welches Wort passt in diesem Kontext am wenigsten zu 'Gewohnheit'?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Zufall$t$, true, 1),
    (v_q, $t$Ritual$t$, false, 2),
    (v_q, $t$Routine$t$, false, 3),
    (v_q, $t$Angewohnheit$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Zeitform ist 'gestorben war' (seine Frau ... gestorben war)?$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Plusquamperfekt$t$, true, 1),
    (v_q, $t$Präsens$t$, false, 2),
    (v_q, $t$Futur II$t$, false, 3),
    (v_q, $t$Präteritum$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum wird hier das Plusquamperfekt verwendet?$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Weil das Ereignis vor einem anderen Vergangenheitspunkt liegt$t$, true, 1),
    (v_q, $t$Weil es sich um eine Zukunftsvermutung handelt$t$, false, 2),
    (v_q, $t$Weil es eine Bedingung ausdrückt$t$, false, 3),
    (v_q, $t$Weil es ein Befehl ist$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie wird das Plusquamperfekt von 'sterben' korrekt gebildet?$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$war + gestorben (mit sein als Hilfsverb)$t$, true, 1),
    (v_q, $t$hatte + gestorben (mit haben als Hilfsverb)$t$, false, 2),
    (v_q, $t$wurde + gestorben$t$, false, 3),
    (v_q, $t$ist + gestorben$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$Schreiben Sie 5-7 Sätze über eine eigene tägliche Gewohnheit oder ein kleines Ritual und darüber, welche Bedeutung es für Sie hat.$t$, 1, 'normal', 'production', $t$Jeden Morgen trinke ich meinen Kaffee auf dem Balkon, bevor ich mein Handy überhaupt anschaue. Dieses kleine Ritual dauert nur zehn Minuten, gibt mir aber Ruhe, bevor der hektische Tag beginnt. Wie Herr Fluri in der Geschichte brauche auch ich feste Gewohnheiten, um mich sicher und orientiert zu fühlen. Wenn ich diese Zeit einmal verpasse, fühlt sich der ganze Tag irgendwie unvollständig an. Ich glaube, solche kleinen Rituale geben unserem Alltag eine Struktur, die wir oft unterschätzen. Manchmal merkt man erst, wie wichtig eine Gewohnheit ist, wenn sie plötzlich fehlt. Deshalb versuche ich, mir bewusst solche ruhigen Momente zu bewahren.$t$);

END $block$;

-- 4. Der Deichgraf
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary, culture_note) VALUES (
    'B2',
    $t$Der Deichgraf$t$,
    $t$Klaas Ording war seit zwanzig Jahren Deichgraf des Dorfes Hollernsiel, und niemand kannte die Nordseeküste besser als er. Als der Herbststurm im Oktober 1899 aufzog, roch er die Gefahr, bevor die anderen sie sahen. Die Wolken hingen tief und grün über dem Wasser, und die Möwen flogen landeinwärts, ein Zeichen, das er von seinem Vater gelernt hatte.

Er ritt seinen alten Schimmel den Deich entlang und prüfte jede Stelle, an der das Gras dünn wurde. Bei der dritten Biegung fand er es: einen kleinen Riss im Deichfuß, wo das Wasser bereits leise sickerte. Niemand sonst hätte ihn bemerkt.

Er weckte die Männer des Dorfes mit der Sturmglocke, und sie kamen mit Spaten und Sandsäcken, murrend über die nächtliche Störung. "Es ist nur ein bisschen Wind", sagte einer. Klaas antwortete nicht, sondern begann selbst zu graben, während die Flut stieg und der Wind an seinem Mantel riss.

Um Mitternacht erreichte der Sturm seinen Höhepunkt. Wellen schlugen über die Deichkrone, und die Männer arbeiteten stumm im Regen. Als der Riss endlich mit Sandsäcken gestopft war, sank das Wasser allmählich. Die Männer, die zuvor gespottet hatten, sahen Klaas nun mit anderen Augen an. Am Morgen stand er allein auf dem Deich, erschöpft, und blickte über das ruhige graue Meer, das in der Nacht beinahe alles genommen hätte. Das Dorf war gerettet, aber niemand außer ihm wusste, wie knapp es gewesen war.$t$,
    $t$Klaas Ording était depuis vingt ans le maître des digues du village de Hollernsiel, et personne ne connaissait mieux que lui la côte de la mer du Nord. Lorsque la tempête d'automne se leva en octobre 1899, il flaira le danger avant que les autres ne le voient. Les nuages pendaient bas et verdâtres au-dessus de l'eau, et les mouettes volaient vers l'intérieur des terres, un signe que son père lui avait appris.

Il chevaucha son vieux cheval blanc le long de la digue et examina chaque endroit où l'herbe s'amincissait. Au troisième coude, il le trouva : une petite fissure au pied de la digue, où l'eau s'infiltrait déjà doucement. Personne d'autre ne l'aurait remarquée.

Il réveilla les hommes du village avec la cloche d'alarme, et ils arrivèrent avec des pelles et des sacs de sable, en maugréant contre ce dérangement nocturne. « Ce n'est qu'un peu de vent », dit l'un d'eux. Klaas ne répondit pas, mais se mit lui-même à creuser, tandis que la marée montait et que le vent arrachait son manteau.

À minuit, la tempête atteignit son paroxysme. Des vagues déferlaient sur la crête de la digue, et les hommes travaillaient en silence sous la pluie. Quand la fissure fut enfin colmatée avec des sacs de sable, l'eau baissa peu à peu. Les hommes, qui s'étaient moqués de lui auparavant, regardaient désormais Klaas d'un autre œil. Au matin, il se tenait seul sur la digue, épuisé, et contemplait la mer grise et calme qui, dans la nuit, avait failli tout emporter. Le village était sauvé, mais personne, hormis lui, ne savait à quel point cela avait été serré.$t$,
    $t${"1899":"1899","Klaas":"Klaas","Ording":"Ording","war":"était","seit":"depuis","zwanzig":"vingt","Jahren":"ans","Deichgraf":"maître des digues","des":"du","Dorfes":"village","Hollernsiel":"Hollernsiel","und":"et","niemand":"personne","kannte":"connaissait","die":"la/les","Nordseeküste":"côte de la mer du Nord","besser":"mieux","als":"que","er":"il","Als":"Lorsque","der":"la/le","Herbststurm":"tempête d'automne","im":"en","Oktober":"octobre","aufzog":"se leva","roch":"flaira","Gefahr":"danger","bevor":"avant que","anderen":"les autres","sie":"elle/ils","sahen":"voient/virent","Die":"Les","Wolken":"nuages","hingen":"pendaient","tief":"bas","grün":"verdâtres","über":"au-dessus de","dem":"l'","Wasser":"eau","Möwen":"mouettes","flogen":"volaient","landeinwärts":"vers l'intérieur des terres","ein":"un","Zeichen":"signe","das":"que/le","von":"de","seinem":"son","Vater":"père","gelernt":"appris","hatte":"avait","Er":"Il","ritt":"chevaucha","seinen":"son","alten":"vieux","Schimmel":"cheval blanc","den":"la","Deich":"digue","entlang":"le long de","prüfte":"examina","jede":"chaque","Stelle":"endroit","an":"où","Gras":"herbe","dünn":"fine","wurde":"devenait","Bei":"Au","dritten":"troisième","Biegung":"coude","fand":"trouva","es":"cela","einen":"une","kleinen":"petite","Riss":"fissure","Deichfuß":"pied de la digue","wo":"où","bereits":"déjà","leise":"doucement","sickerte":"s'infiltrait","Niemand":"Personne","sonst":"d'autre","hätte":"aurait","ihn":"la/l'","bemerkt":"remarquée","weckte":"réveilla","Männer":"hommes","mit":"avec","Sturmglocke":"cloche d'alarme","kamen":"vinrent","Spaten":"pelles","Sandsäcken":"sacs de sable","murrend":"en maugréant","nächtliche":"nocturne","Störung":"dérangement","Es":"Cela","ist":"est","nur":"seulement","bisschen":"peu de","Wind":"vent","sagte":"dit","einer":"l'un d'eux","antwortete":"répondit","nicht":"pas","sondern":"mais","begann":"se mit à","selbst":"lui-même","zu":"à","graben":"creuser","während":"tandis que","Flut":"marée","stieg":"montait","Mantel":"manteau","riss":"arrachait","Um":"À","Mitternacht":"minuit","erreichte":"atteignit","Sturm":"tempête","Höhepunkt":"paroxysme","Wellen":"vagues","schlugen":"déferlaient","Deichkrone":"crête de la digue","arbeiteten":"travaillaient","stumm":"en silence","Regen":"pluie","endlich":"enfin","gestopft":"colmatée","sank":"baissa","allmählich":"peu à peu","zuvor":"auparavant","gespottet":"moqués","hatten":"avaient","nun":"désormais","Augen":"yeux","Am":"Au","Morgen":"matin","stand":"se tenait","allein":"seul","auf":"sur","erschöpft":"épuisé","blickte":"contemplait","ruhige":"calme","graue":"grise","Meer":"mer","in":"dans","Nacht":"nuit","beinahe":"failli","alles":"tout","genommen":"emporté","Das":"Le","Dorf":"village","gerettet":"sauvé","aber":"mais","außer":"hormis","ihm":"lui","wusste":"savait","wie":"à quel point","knapp":"serré","gewesen":"été"}$t$::jsonb,
    $t$Inspiré de la nouvelle courte allemande (Kurzgeschichte)$t$
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was ist Klaas Ordings Beruf?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Deichgraf$t$, true, 1),
    (v_q, $t$Fischer$t$, false, 2),
    (v_q, $t$Bürgermeister$t$, false, 3),
    (v_q, $t$Lehrer$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Woran erkennt Klaas als Erster die Gefahr des Sturms?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$An den tiefen Wolken und den landeinwärts fliegenden Möwen$t$, true, 1),
    (v_q, $t$An einer Wettervorhersage im Radio$t$, false, 2),
    (v_q, $t$An einem Brief seines Vaters$t$, false, 3),
    (v_q, $t$An den Aussagen der Dorfbewohner$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Rolle spielt die Erwähnung, dass Klaas dieses Zeichen 'von seinem Vater gelernt hatte'?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie verweist auf die Weitergabe von Erfahrungswissen über Generationen hinweg$t$, true, 1),
    (v_q, $t$Sie zeigt, dass Klaas' Vater noch lebt und ihn berät$t$, false, 2),
    (v_q, $t$Sie erklärt, warum Klaas Angst vor Stürmen hat$t$, false, 3),
    (v_q, $t$Sie deutet an, dass Klaas' Vater selbst ein schlechter Deichgraf war$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was findet Klaas bei der dritten Biegung des Deichs?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Einen kleinen Riss im Deichfuß$t$, true, 1),
    (v_q, $t$Ein gestrandetes Boot$t$, false, 2),
    (v_q, $t$Einen verlorenen Hund$t$, false, 3),
    (v_q, $t$Eine kaputte Brücke$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie reagieren die Männer zunächst, als Klaas sie weckt?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie murren über die nächtliche Störung$t$, true, 1),
    (v_q, $t$Sie bedanken sich sofort bei ihm$t$, false, 2),
    (v_q, $t$Sie weigern sich vollständig zu kommen$t$, false, 3),
    (v_q, $t$Sie rufen die Feuerwehr$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was zeigt der Satz 'Klaas antwortete nicht, sondern begann selbst zu graben' über seinen Charakter?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er überzeugt eher durch Handeln als durch Worte$t$, true, 1),
    (v_q, $t$Er ist zu wütend, um zu sprechen$t$, false, 2),
    (v_q, $t$Er misstraut den Männern grundsätzlich$t$, false, 3),
    (v_q, $t$Er will die Anerkennung für sich allein$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was passiert, nachdem der Riss gestopft ist?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Das Wasser sinkt allmählich$t$, true, 1),
    (v_q, $t$Der Deich bricht vollständig$t$, false, 2),
    (v_q, $t$Das Dorf wird evakuiert$t$, false, 3),
    (v_q, $t$Ein neuer Sturm beginnt$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie verändert sich die Haltung der Männer gegenüber Klaas am Ende?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie sehen ihn nun mit Respekt statt mit Spott$t$, true, 1),
    (v_q, $t$Sie werfen ihm die Schuld am Sturm vor$t$, false, 2),
    (v_q, $t$Sie wählen ihn zum neuen Bürgermeister$t$, false, 3),
    (v_q, $t$Sie verlassen enttäuscht das Dorf$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet der Schlusssatz 'niemand außer ihm wusste, wie knapp es gewesen war' für das Bild des einsamen Helden?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Wahre Verantwortung wird oft nicht vollständig von anderen erkannt oder gewürdigt$t$, true, 1),
    (v_q, $t$Klaas hält absichtlich Informationen vor den Dorfbewohnern zurück$t$, false, 2),
    (v_q, $t$Die Dorfbewohner interessieren sich nicht für die Sicherheit des Deichs$t$, false, 3),
    (v_q, $t$Der Sturm war in Wirklichkeit ungefährlich$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'Deich' im Text?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Ein Erddamm zum Schutz vor Überflutung$t$, true, 1),
    (v_q, $t$Ein kleines Boot$t$, false, 2),
    (v_q, $t$Ein Weg durch den Wald$t$, false, 3),
    (v_q, $t$Eine Art Fischernetz$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum ist der 'Deich' für das Dorf Hollernsiel so wichtig?$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er schützt das Dorf vor der Flut der Nordsee$t$, true, 1),
    (v_q, $t$Er verbindet das Dorf mit der nächsten Stadt$t$, false, 2),
    (v_q, $t$Er dient als Marktplatz$t$, false, 3),
    (v_q, $t$Er ist eine touristische Attraktion$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welches Wort ist in diesem Kontext KEIN passendes Synonym für 'Deich'?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Brücke$t$, true, 1),
    (v_q, $t$Damm$t$, false, 2),
    (v_q, $t$Wall$t$, false, 3),
    (v_q, $t$Deichkrone (verwandter Begriff)$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Zeitform ist 'hätte ... genommen' (das beinahe alles genommen hätte)?$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Konjunktiv II der Vergangenheit$t$, true, 1),
    (v_q, $t$Präsens$t$, false, 2),
    (v_q, $t$Einfaches Perfekt$t$, false, 3),
    (v_q, $t$Imperativ$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was drückt der Konjunktiv II in 'das beinahe alles genommen hätte' aus?$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Eine nicht eingetretene, aber mögliche Vergangenheit (Irrealis)$t$, true, 1),
    (v_q, $t$Eine Tatsache, die sicher passiert ist$t$, false, 2),
    (v_q, $t$Einen höflichen Befehl$t$, false, 3),
    (v_q, $t$Eine Zukunftserwartung$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie wird der Konjunktiv II der Vergangenheit korrekt gebildet?$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$hätte/wäre + Partizip II$t$, true, 1),
    (v_q, $t$würde + Infinitiv$t$, false, 2),
    (v_q, $t$Präteritumstamm + -te$t$, false, 3),
    (v_q, $t$haben/sein im Präsens + Partizip II$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$Schreiben Sie 5-7 Sätze darüber, welche Eigenschaften eine Person wie Klaas Ording in einer Krisensituation auszeichnen, und ob solche Eigenschaften auch im Alltag wichtig sind.$t$, 1, 'normal', 'production', $t$Klaas Ording zeichnet sich vor allem durch Wachsamkeit aus, denn er bemerkt die Gefahr, lange bevor andere sie wahrnehmen. Außerdem handelt er entschlossen, ohne auf Anerkennung oder Zustimmung der anderen zu warten. Seine jahrelange Erfahrung mit der Küste zeigt, wie wertvoll praktisches Wissen in einer Krise sein kann. Trotz des anfänglichen Spotts der Dorfbewohner lässt er sich nicht von seinem Plan abbringen. Ich finde, dass solche Eigenschaften wie Wachsamkeit, Ausdauer und Verantwortungsbewusstsein auch im Alltag, etwa im Beruf oder in der Familie, sehr hilfreich sind. Man muss nicht immer laut sein, um Verantwortung zu übernehmen. Manchmal zeigt sich wahre Führungsstärke gerade darin, ruhig zu handeln, während andere noch zweifeln.$t$);

END $block$;

-- 5. Herr Keuner und die Wahrheit
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary, culture_note) VALUES (
    'B2',
    $t$Herr Keuner und die Wahrheit$t$,
    $t$Ein Journalist fragte Herrn Keuner: "Sind Sie ein mutiger Mensch? Sagen Sie immer die Wahrheit?" Herr Keuner überlegte kurz und antwortete: "Ich sage nicht immer die Wahrheit, aber alles, was ich sage, ist wahr."

Der Journalist runzelte die Stirn. "Das ist doch dasselbe." "Keineswegs", sagte Herr Keuner. "Ein Tyrann fragte mich einmal, was ich von seiner Herrschaft halte. Hätte ich die volle Wahrheit gesagt, wäre ich am nächsten Tag verschwunden gewesen, und die Wahrheit mit mir. Also sagte ich: 'Die Menschen sprechen viel über Sie.' Das war wahr, aber es war nicht alles, was wahr war."

"Also haben Sie gelogen, um zu überleben", sagte der Journalist. "Nein", antwortete Herr Keuner. "Ich habe geschwiegen, wo Reden mich zerstört hätte, ohne der Sache zu nutzen. Wer die Wahrheit sagt, aber dabei umkommt, kann sie kein zweites Mal sagen. Ein toter Mann verbessert die Welt nicht."

Der Journalist schwieg nachdenklich. Nach einer Weile fragte er: "Aber wann sagt man dann die volle Wahrheit?" Herr Keuner lächelte zum ersten Mal. "Wenn genug Leute gleichzeitig bereit sind, sie zu hören, und der Tyrann allein dasteht. Bis dahin sammle ich nur die Wahrheiten, die überleben, damit am Ende genug davon übrig sind, um etwas zu verändern."

Der Journalist notierte nichts von alldem. Er schrieb nur: "Herr Keuner äußerte sich vorsichtig zur aktuellen Lage." Auch das, dachte Herr Keuner, war nicht falsch.$t$,
    $t$Un journaliste demanda à Monsieur Keuner : « Êtes-vous un homme courageux ? Dites-vous toujours la vérité ? » Monsieur Keuner réfléchit un instant et répondit : « Je ne dis pas toujours la vérité, mais tout ce que je dis est vrai. »

Le journaliste fronça les sourcils. « Mais c'est la même chose. » « Pas du tout », dit Monsieur Keuner. « Un tyran m'a demandé un jour ce que je pensais de son règne. Si j'avais dit toute la vérité, j'aurais disparu dès le lendemain, et la vérité avec moi. J'ai donc dit : 'Les gens parlent beaucoup de vous.' C'était vrai, mais ce n'était pas tout ce qui était vrai. »

« Vous avez donc menti pour survivre », dit le journaliste. « Non », répondit Monsieur Keuner. « Je me suis tu là où parler m'aurait détruit, sans servir la cause. Celui qui dit la vérité mais qui en meurt ne peut plus la dire une seconde fois. Un homme mort n'améliore pas le monde. »

Le journaliste se tut, pensif. Après un moment, il demanda : « Mais alors, quand dit-on toute la vérité ? » Monsieur Keuner sourit pour la première fois. « Quand assez de gens sont prêts à l'entendre en même temps, et que le tyran se retrouve seul. D'ici là, je ne fais que rassembler les vérités qui survivent, afin qu'à la fin il y en ait assez pour changer quelque chose. »

Le journaliste ne nota rien de tout cela. Il écrivit seulement : « Monsieur Keuner s'est exprimé avec prudence sur la situation actuelle. » Cela non plus, pensa Monsieur Keuner, n'était pas faux.$t$,
    $t${"Ein":"Un","Journalist":"journaliste","fragte":"demanda","Herrn":"à Monsieur","Keuner":"Keuner","Sind":"Êtes","Sie":"Vous","ein":"un","mutiger":"courageux","Mensch":"homme","Sagen":"Dites","immer":"toujours","die":"la","Wahrheit":"vérité","Herr":"Monsieur","überlegte":"réfléchit","kurz":"un instant","und":"et","antwortete":"répondit","Ich":"Je","sage":"dis","nicht":"ne...pas","aber":"mais","alles":"tout","was":"ce que","ich":"je","ist":"est","wahr":"vrai","Der":"Le","runzelte":"fronça","Stirn":"sourcils","Das":"Cela/C'","doch":"pourtant","dasselbe":"la même chose","Keineswegs":"Pas du tout","sagte":"dit","Tyrann":"tyran","mich":"me","einmal":"un jour","von":"de","seiner":"son","Herrschaft":"règne","halte":"pense","Hätte":"Si j'avais","gesagt":"dit","wäre":"aurais/serais","am":"dès le","nächsten":"lendemain","Tag":"jour","verschwunden":"disparu","gewesen":"été","mit":"avec","mir":"moi","Also":"Donc","Die":"Les","Menschen":"gens","sprechen":"parlent","viel":"beaucoup","über":"de","war":"était","es":"cela","haben":"avez","gelogen":"menti","um":"pour","zu":"de/à","überleben":"survivre","der":"le","Nein":"Non","habe":"ai/suis","geschwiegen":"tu","wo":"là où","Reden":"parler","zerstört":"détruit","hätte":"aurait","ohne":"sans","Sache":"cause","nutzen":"servir","Wer":"Celui qui","sagt":"dit","dabei":"en cela","umkommt":"meurt","kann":"peut","sie":"la","kein":"aucune","zweites":"seconde","Mal":"fois","sagen":"dire","toter":"mort","Mann":"homme","verbessert":"améliore","Welt":"monde","schwieg":"se tut","nachdenklich":"pensif","Nach":"Après","einer":"un","Weile":"moment","er":"il","Aber":"Mais","wann":"quand","man":"on","dann":"alors","volle":"toute","lächelte":"sourit","zum":"pour la","ersten":"première","Wenn":"Quand","genug":"assez de","Leute":"gens","gleichzeitig":"en même temps","bereit":"prêts","sind":"sont","hören":"entendre","allein":"seul","dasteht":"se retrouve","Bis":"Jusque","dahin":"là","sammle":"rassemble","nur":"seulement/ne...que","Wahrheiten":"vérités","damit":"afin que","Ende":"fin","davon":"de cela","übrig":"restent","etwas":"quelque chose","verändern":"changer","notierte":"nota","nichts":"rien","alldem":"tout cela","Er":"Il","schrieb":"écrivit","äußerte":"s'est exprimé","sich":"s'","vorsichtig":"avec prudence","zur":"sur la","aktuellen":"actuelle","Lage":"situation","Auch":"Cela aussi","das":"cela","dachte":"pensa","falsch":"faux"}$t$::jsonb,
    $t$Inspiré de la nouvelle courte allemande (Kurzgeschichte)$t$
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was fragt der Journalist Herrn Keuner zu Beginn?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Ob er immer die Wahrheit sagt$t$, true, 1),
    (v_q, $t$Ob er reich ist$t$, false, 2),
    (v_q, $t$Ob er verheiratet ist$t$, false, 3),
    (v_q, $t$Ob er gerne reist$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie unterscheidet Herr Keuner zwischen 'immer die Wahrheit sagen' und 'nur Wahres sagen'?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er sagt nicht alles, aber was er sagt, ist niemals falsch$t$, true, 1),
    (v_q, $t$Für ihn ist beides genau dasselbe$t$, false, 2),
    (v_q, $t$Er sagt grundsätzlich lieber gar nichts$t$, false, 3),
    (v_q, $t$Er hält beide Aussagen für unmöglich$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche philosophische Pointe steckt in Herrn Keuners Unterscheidung?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Wahrhaftigkeit bedeutet nicht zwingend, jede Information preiszugeben$t$, true, 1),
    (v_q, $t$Lügen ist manchmal moralisch notwendig$t$, false, 2),
    (v_q, $t$Journalisten verstehen Wahrheit grundsätzlich falsch$t$, false, 3),
    (v_q, $t$Nur Tyrannen verlangen völlige Offenheit$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was hätte laut Herrn Keuner passieren können, wenn er dem Tyrannen die volle Wahrheit gesagt hätte?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er wäre verschwunden$t$, true, 1),
    (v_q, $t$Er wäre reich geworden$t$, false, 2),
    (v_q, $t$Er hätte eine Belohnung bekommen$t$, false, 3),
    (v_q, $t$Nichts wäre passiert$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was antwortet Herr Keuner dem Tyrannen tatsächlich?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$'Die Menschen sprechen viel über Sie.'$t$, true, 1),
    (v_q, $t$'Ich hasse Ihre Herrschaft.'$t$, false, 2),
    (v_q, $t$'Sie sind ein guter Herrscher.'$t$, false, 3),
    (v_q, $t$Er antwortet gar nicht.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum besteht Herr Keuner darauf, dass er nicht gelogen, sondern nur geschwiegen habe?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Für ihn ist das bewusste Verschweigen von Information etwas anderes als eine Falschaussage$t$, true, 1),
    (v_q, $t$Er will sich nur moralisch besser fühlen$t$, false, 2),
    (v_q, $t$Er hat tatsächlich vergessen, was er gesagt hat$t$, false, 3),
    (v_q, $t$Der Unterschied ist für ihn irrelevant$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wann will Herr Keuner die volle Wahrheit sagen?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Wenn genug Leute bereit sind, sie zu hören, und der Tyrann allein dasteht$t$, true, 1),
    (v_q, $t$Niemals$t$, false, 2),
    (v_q, $t$Sofort, ohne Bedingungen$t$, false, 3),
    (v_q, $t$Nur seiner Familie$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was schreibt der Journalist am Ende über das Gespräch?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Nur eine vorsichtige, allgemeine Formulierung$t$, true, 1),
    (v_q, $t$Das gesamte wörtliche Zitat$t$, false, 2),
    (v_q, $t$Nichts, der Artikel wird nicht veröffentlicht$t$, false, 3),
    (v_q, $t$Eine Kritik an Herrn Keuner$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was zeigt der Schlusssatz 'Auch das, dachte Herr Keuner, war nicht falsch' über die Konsequenz seiner Haltung?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Seine Strategie des vorsichtigen, aber wahren Sprechens gilt auch für den Journalisten selbst$t$, true, 1),
    (v_q, $t$Herr Keuner findet den Artikel des Journalisten grundsätzlich falsch$t$, false, 2),
    (v_q, $t$Der Journalist hat am Ende doch gelogen$t$, false, 3),
    (v_q, $t$Herr Keuner ist über den Artikel enttäuscht$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'überleben' im Text?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Am Leben bleiben, eine Gefahr überstehen$t$, true, 1),
    (v_q, $t$Etwas übertreiben$t$, false, 2),
    (v_q, $t$Etwas überprüfen$t$, false, 3),
    (v_q, $t$Umziehen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$In welchem Zusammenhang wird 'überleben' verwendet?$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Herr Keuner schweigt teilweise, um zu überleben$t$, true, 1),
    (v_q, $t$Der Journalist möchte eine Prüfung überleben$t$, false, 2),
    (v_q, $t$Der Tyrann will seine Herrschaft überleben$t$, false, 3),
    (v_q, $t$Es geht um das Überleben einer Pflanze$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welches Wort passt in diesem Kontext am wenigsten zu 'überleben'?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Verschönern$t$, true, 1),
    (v_q, $t$Bestehen$t$, false, 2),
    (v_q, $t$Durchhalten$t$, false, 3),
    (v_q, $t$Am Leben bleiben$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Form ist 'wäre ... gewesen' (wäre ich verschwunden gewesen)?$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Konjunktiv II der Vergangenheit$t$, true, 1),
    (v_q, $t$Präsens$t$, false, 2),
    (v_q, $t$Imperativ$t$, false, 3),
    (v_q, $t$Perfekt$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was drückt 'wäre ich am nächsten Tag verschwunden gewesen' inhaltlich aus?$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Eine hypothetische, nicht eingetretene Folge in der Vergangenheit$t$, true, 1),
    (v_q, $t$Eine Tatsache aus der Vergangenheit$t$, false, 2),
    (v_q, $t$Eine feste Zukunftsplanung$t$, false, 3),
    (v_q, $t$Eine höfliche Bitte$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie wird der Konjunktiv II der Vergangenheit von 'verschwinden' korrekt gebildet?$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$wäre + verschwunden (mit sein als Hilfsverb)$t$, true, 1),
    (v_q, $t$hätte + verschwunden (mit haben als Hilfsverb)$t$, false, 2),
    (v_q, $t$würde + verschwinden$t$, false, 3),
    (v_q, $t$ist + verschwunden$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$Schreiben Sie 5-7 Sätze darüber, ob man Ihrer Meinung nach immer die volle Wahrheit sagen sollte, oder ob es Situationen gibt, in denen Schweigen gerechtfertigt ist.$t$, 1, 'normal', 'production', $t$Meiner Meinung nach ist es nicht immer sinnvoll, in jeder Situation die vollständige Wahrheit auszusprechen. Wie Herr Keuner zeigt, kann es manchmal klüger sein zu schweigen, statt sich durch Offenheit selbst zu gefährden. Allerdings sollte Schweigen niemals bedeuten, dass man aktiv lügt oder falsche Informationen verbreitet. Der Unterschied zwischen 'nicht alles sagen' und 'die Unwahrheit sagen' erscheint mir dabei entscheidend. In einer Diktatur oder unter starkem Druck kann völlige Offenheit sogar lebensgefährlich sein. Im Alltag hingegen halte ich Ehrlichkeit für sehr wichtig, besonders in persönlichen Beziehungen. Letztlich hängt viel vom Kontext und von den möglichen Konsequenzen der Aussage ab.$t$);

END $block$;

-- 6. Kriemhilds Rache
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary, culture_note) VALUES (
    'B2',
    $t$Kriemhilds Rache$t$,
    $t$Nach Siegfrieds Tod trug Kriemhild ihre Trauer wie einen Panzer unter dem Gewand. Jahre waren vergangen, seit Hagen von Tronje ihren Gemahl an der einzigen verwundbaren Stelle seines Rückens erstochen und den Nibelungenschatz im Rhein versenkt hatte. Äußerlich hatte sie sich mit ihrem Schicksal abgefunden; innerlich plante sie unablässig Vergeltung.

Als der Hunnenkönig Etzel um ihre Hand anhielt, zögerte Kriemhild zunächst. Doch sie erkannte, dass die Macht eines solchen Bündnisses ihr endlich die Mittel geben würde, die sie brauchte. Sie heiratete Etzel und wurde Königin der Hunnen, ohne je die Wunde in ihrem Herzen zu vergessen.

Nach vielen Jahren lud sie ihre Brüder aus Worms und deren Gefolge, darunter Hagen, an Etzels Hof ein, angeblich zu einem Fest der Versöhnung. Ihr Bruder Gernot warnte vor der Reise, doch Hagen selbst bestand darauf zu fahren, um nicht als Feigling zu gelten.

Am Hunnenhof entlud sich Kriemhilds jahrelanger Zorn. Ein Streit entbrannte, der in offene Schlacht überging. Halle um Halle brannte, während Burgunden und Hunnen sich in einem Gemetzel gegenüberstanden, das niemand mehr aufhalten konnte. Am Ende blieben nur Hagen und König Gunther als Gefangene übrig. Kriemhild verlangte den versunkenen Schatz zurück, doch Hagen schwieg, solange sein König lebte. Sie ließ Gunther töten und enthauptete Hagen schließlich mit eigener Hand. Der alte Krieger Hildebrand konnte diese Tat nicht ungestraft lassen und erschlug Kriemhild noch auf der Stelle. So endete, was mit Liebe begonnen hatte, in vollständiger Vernichtung.$t$,
    $t$Après la mort de Siegfried, Kriemhild portait son deuil comme une cuirasse sous ses vêtements. Des années avaient passé depuis que Hagen de Tronje avait poignardé son époux à l'unique endroit vulnérable de son dos et avait englouti le trésor des Nibelungen dans le Rhin. En apparence, elle s'était résignée à son sort ; intérieurement, elle préparait sans relâche sa vengeance.

Lorsque le roi des Huns, Etzel, demanda sa main, Kriemhild hésita d'abord. Mais elle comprit que la puissance d'une telle alliance lui donnerait enfin les moyens dont elle avait besoin. Elle épousa Etzel et devint reine des Huns, sans jamais oublier la blessure dans son cœur.

Après de nombreuses années, elle invita ses frères de Worms et leur suite, parmi lesquels Hagen, à la cour d'Etzel, prétendument pour une fête de réconciliation. Son frère Gernot mit en garde contre ce voyage, mais Hagen lui-même insista pour y aller, afin de ne pas passer pour un lâche.

À la cour des Huns, la colère accumulée pendant des années par Kriemhild se déchaîna. Une querelle éclata, qui se transforma en bataille ouverte. Salle après salle brûla, tandis que Burgondes et Huns s'affrontaient dans un massacre que plus personne ne pouvait arrêter. À la fin, seuls Hagen et le roi Gunther restèrent comme prisonniers. Kriemhild exigea la restitution du trésor englouti, mais Hagen se tut tant que son roi était en vie. Elle fit tuer Gunther puis décapita elle-même Hagen. Le vieux guerrier Hildebrand ne put laisser cet acte impuni et abattit Kriemhild sur-le-champ. Ainsi s'acheva, dans un anéantissement total, ce qui avait commencé par l'amour.$t$,
    $t${"Nach":"Après","Siegfrieds":"de Siegfried","Tod":"mort","trug":"portait","Kriemhild":"Kriemhild","ihre":"son","Trauer":"deuil","wie":"comme","einen":"une","Panzer":"cuirasse","unter":"sous","dem":"les/le","Gewand":"vêtements","Jahre":"années","waren":"avaient","vergangen":"passé","seit":"depuis que","Hagen":"Hagen","von":"de","Tronje":"Tronje","ihren":"son","Gemahl":"époux","an":"à","der":"le/la","einzigen":"unique","verwundbaren":"vulnérable","Stelle":"endroit","seines":"de son","Rückens":"dos","erstochen":"poignardé","und":"et","den":"le","Nibelungenschatz":"trésor des Nibelungen","im":"dans le","Rhein":"Rhin","versenkt":"englouti","hatte":"avait","Äußerlich":"En apparence","sich":"s'/se","mit":"à/avec","ihrem":"son","Schicksal":"sort","abgefunden":"résignée","innerlich":"intérieurement","plante":"préparait","sie":"elle","unablässig":"sans relâche","Vergeltung":"vengeance","Als":"Lorsque","Hunnenkönig":"roi des Huns","Etzel":"Etzel","um":"pour","Hand":"main","anhielt":"demanda","zögerte":"hésita","zunächst":"d'abord","Doch":"Mais","doch":"mais","erkannte":"comprit","dass":"que","die":"la","Macht":"puissance","eines":"d'une","solchen":"telle","Bündnisses":"alliance","ihr":"lui","endlich":"enfin","Mittel":"moyens","geben":"donner","würde":"donnerait","brauchte":"avait besoin","Sie":"Elle","heiratete":"épousa","wurde":"devint","Königin":"reine","Hunnen":"Huns","ohne":"sans","je":"jamais","Wunde":"blessure","in":"dans","Herzen":"cœur","zu":"à/de","vergessen":"oublier","vielen":"nombreuses","Jahren":"années","lud":"invita","Brüder":"frères","aus":"de","Worms":"Worms","deren":"leur","Gefolge":"suite","darunter":"parmi lesquels","Etzels":"d'Etzel","Hof":"cour","ein":"(lud...ein = invita)","angeblich":"prétendument","einem":"une","Fest":"fête","Versöhnung":"réconciliation","Ihr":"Son","Bruder":"frère","Gernot":"Gernot","warnte":"mit en garde","vor":"contre","Reise":"voyage","selbst":"lui-même","bestand":"insista","darauf":"pour cela","fahren":"aller","nicht":"ne pas","als":"pour/comme","Feigling":"lâche","gelten":"passer","Am":"À la/Au","Hunnenhof":"cour des Huns","entlud":"se déchaîna","Kriemhilds":"de Kriemhild","jahrelanger":"accumulée pendant des années","Zorn":"colère","Ein":"Une","Streit":"querelle","entbrannte":"éclata","offene":"ouverte","Schlacht":"bataille","überging":"se transforma","Halle":"salle","brannte":"brûla","während":"tandis que","Burgunden":"Burgondes","Gemetzel":"massacre","gegenüberstanden":"s'affrontaient","das":"que","niemand":"personne","mehr":"plus","aufhalten":"arrêter","konnte":"pouvait","Ende":"fin","blieben":"restèrent","nur":"seuls","König":"roi","Gunther":"Gunther","Gefangene":"prisonniers","übrig":"(blieben...übrig = restèrent)","verlangte":"exigea","versunkenen":"englouti","Schatz":"trésor","zurück":"restitution","schwieg":"se tut","solange":"tant que","sein":"son","lebte":"était en vie","ließ":"fit","töten":"tuer","enthauptete":"décapita","schließlich":"puis","eigener":"propre","Der":"Le","alte":"vieux","Krieger":"guerrier","Hildebrand":"Hildebrand","diese":"cet","Tat":"acte","ungestraft":"impuni","lassen":"laisser","erschlug":"abattit","noch":"sur-le-champ","auf":"(erschlug...auf der Stelle = abattit sur-le-champ)","So":"Ainsi","endete":"s'acheva","was":"ce qui","Liebe":"amour","begonnen":"commencé","vollständiger":"total","Vernichtung":"anéantissement"}$t$::jsonb,
    $t$Épopée médiévale allemande (violence épique, non graphique)$t$
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wer hat Kriemhilds Gemahl Siegfried getötet?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Hagen von Tronje$t$, true, 1),
    (v_q, $t$König Etzel$t$, false, 2),
    (v_q, $t$Gernot$t$, false, 3),
    (v_q, $t$Hildebrand$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was hat Hagen zusätzlich zum Mord an Siegfried getan?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er hat den Nibelungenschatz im Rhein versenkt$t$, true, 1),
    (v_q, $t$Er hat Kriemhild verbannt$t$, false, 2),
    (v_q, $t$Er hat Etzel getötet$t$, false, 3),
    (v_q, $t$Er hat Worms niedergebrannt$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was zeigt der Ausdruck 'ihre Trauer wie einen Panzer unter dem Gewand' über Kriemhilds inneren Zustand?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Ihre Trauer ist zu einer verborgenen, schützenden Härte geworden$t$, true, 1),
    (v_q, $t$Sie hat ihre Trauer bereits vollständig überwunden$t$, false, 2),
    (v_q, $t$Sie trägt tatsächlich eine Rüstung unter ihren Kleidern$t$, false, 3),
    (v_q, $t$Sie zeigt ihre Trauer offen vor allen Menschen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wen heiratet Kriemhild nach Siegfrieds Tod?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Den Hunnenkönig Etzel$t$, true, 1),
    (v_q, $t$Ihren Bruder Gernot$t$, false, 2),
    (v_q, $t$Hagen von Tronje$t$, false, 3),
    (v_q, $t$König Gunther$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum zögert Kriemhild zunächst, Etzel zu heiraten?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie kann Siegfrieds Verlust noch nicht vergessen$t$, true, 1),
    (v_q, $t$Sie mag Etzel als Person nicht$t$, false, 2),
    (v_q, $t$Sie will lieber allein bleiben$t$, false, 3),
    (v_q, $t$Sie hat bereits einen anderen Mann versprochen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche strategische Überlegung bringt Kriemhild letztlich dazu, Etzel zu heiraten?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Die Ehe verschafft ihr die Macht, die sie für ihre Rache braucht$t$, true, 1),
    (v_q, $t$Sie verliebt sich unerwartet in Etzel$t$, false, 2),
    (v_q, $t$Sie will das Königreich der Hunnen retten$t$, false, 3),
    (v_q, $t$Ihr Bruder Gernot zwingt sie dazu$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wer tötet Kriemhild am Ende der Geschichte?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Hildebrand$t$, true, 1),
    (v_q, $t$Etzel$t$, false, 2),
    (v_q, $t$Gunther$t$, false, 3),
    (v_q, $t$Gernot$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was verlangt Kriemhild von Hagen, bevor sie ihn tötet?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Die Herausgabe des versunkenen Nibelungenschatzes$t$, true, 1),
    (v_q, $t$Eine öffentliche Entschuldigung$t$, false, 2),
    (v_q, $t$Die Freilassung ihres Bruders$t$, false, 3),
    (v_q, $t$Ein Bündnis mit den Hunnen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet der Schlusssatz 'was mit Liebe begonnen hatte, endete in vollständiger Vernichtung' für die Grundaussage der Erzählung?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Die Geschichte zeigt, wie unversöhnte Rache am Ende alle Beteiligten zerstört$t$, true, 1),
    (v_q, $t$Die Geschichte zeigt, dass Liebe immer siegt$t$, false, 2),
    (v_q, $t$Die Geschichte lobt Kriemhilds Handeln als vorbildlich$t$, false, 3),
    (v_q, $t$Die Geschichte hat ein überraschend glückliches Ende$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'Vergeltung' im Text?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Rache für erlittenes Unrecht$t$, true, 1),
    (v_q, $t$Eine finanzielle Entschädigung$t$, false, 2),
    (v_q, $t$Eine Art Bündnis$t$, false, 3),
    (v_q, $t$Eine Hochzeitsfeier$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$In welchem Zusammenhang wird 'Vergeltung' in der Geschichte verwendet?$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Kriemhild plant unablässig Vergeltung für Siegfrieds Tod$t$, true, 1),
    (v_q, $t$Etzel fordert Vergeltung für einen Angriff auf sein Reich$t$, false, 2),
    (v_q, $t$Hagen bittet um Vergeltung für seine Taten$t$, false, 3),
    (v_q, $t$Gernot warnt vor der Vergeltung der Hunnen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welches Wort passt in diesem Kontext am wenigsten zu 'Vergeltung'?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Vergebung$t$, true, 1),
    (v_q, $t$Rache$t$, false, 2),
    (v_q, $t$Vergeltungsschlag$t$, false, 3),
    (v_q, $t$Heimzahlung$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Zeitform ist 'hatte ... versenkt' (den Schatz im Rhein versenkt hatte)?$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Plusquamperfekt$t$, true, 1),
    (v_q, $t$Präsens$t$, false, 2),
    (v_q, $t$Futur I$t$, false, 3),
    (v_q, $t$Konjunktiv I$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum steht 'versenkt hatte' im Plusquamperfekt?$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Weil diese Handlung vor den anderen erzählten Vergangenheitsereignissen liegt$t$, true, 1),
    (v_q, $t$Weil es sich um eine noch andauernde Handlung handelt$t$, false, 2),
    (v_q, $t$Weil es eine Vermutung ausdrückt$t$, false, 3),
    (v_q, $t$Weil es ein Befehl an Hagen ist$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie wird das Plusquamperfekt von 'versenken' korrekt gebildet?$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$hatte + versenkt (mit haben als Hilfsverb)$t$, true, 1),
    (v_q, $t$war + versenkt (mit sein als Hilfsverb)$t$, false, 2),
    (v_q, $t$würde + versenken$t$, false, 3),
    (v_q, $t$ist + versenkt$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$Schreiben Sie 5-7 Sätze darüber, ob Kriemhilds Rache Ihrer Meinung nach nachvollziehbar oder übertrieben ist, und welche Rolle Rache in Geschichten allgemein spielt.$t$, 1, 'normal', 'production', $t$Kriemhilds Schmerz über den Verlust ihres Mannes Siegfried ist zweifellos nachvollziehbar, denn Hagen hat ihr auf hinterhältige Weise das Wichtigste genommen. Trotzdem finde ich das Ausmaß ihrer Rache erschreckend, da am Ende nicht nur die Schuldigen, sondern ganze Königreiche zerstört werden. Diese Geschichte zeigt sehr deutlich, wie ungehemmte Vergeltung eine Spirale der Gewalt in Gang setzen kann, die sich am Ende nicht mehr kontrollieren lässt. In vielen alten Epen dient Rache als zentrales Motiv, um menschliche Leidenschaften und ihre zerstörerische Kraft darzustellen. Ich glaube, solche Erzählungen warnen uns bis heute davor, Gerechtigkeit mit reiner Vergeltung zu verwechseln. Am Ende verliert in der Nibelungensage fast jede Figur etwas, selbst die vermeintliche Siegerin Kriemhild. Das macht die Geschichte zu einer eindringlichen Warnung vor den Folgen unversöhnter Trauer.$t$);

END $block$;

-- 7. Der Besucher um Mitternacht
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary, culture_note) VALUES (
    'B2',
    $t$Der Besucher um Mitternacht$t$,
    $t$Seit drei Wochen erschien die Gestalt jede Nacht Punkt Mitternacht unter der Laterne vor Antons Fenster. Sie trug einen langen grauen Mantel und einen Hut, der das Gesicht vollständig verdeckte, und stand reglos da, den Blick offenbar nach oben gerichtet, direkt auf Antons Zimmer.

Anfangs hielt Anton es für Einbildung, für einen Schatten oder einen verirrten Spaziergänger. Doch die Regelmäßigkeit beunruhigte ihn zunehmend. Er begann, die Nächte wach zu verbringen, das Auge an den Vorhangspalt gepresst, und wartete auf das leise Klicken der Straßenlaterne, das jedes Mal dem Erscheinen der Gestalt voranging.

Eines Nachts wagte er es, hinunterzugehen. Die Straße war leer, doch als er zurückkehrte, stand die Gestalt plötzlich am Fuß der Treppe, viel näher als je zuvor. Anton erstarrte. Unter dem Hutrand glaubte er für einen Moment sein eigenes Gesicht zu erkennen, nur älter, ausgezehrter, mit Augen, die vor Erschöpfung glänzten.

Er floh zurück in seine Wohnung und verriegelte die Tür, doch das Klopfen begann sofort, gleichmäßig, geduldig. Es hörte erst mit dem ersten Licht der Morgendämmerung auf. Anton erzählte niemandem davon, aus Angst, für verrückt gehalten zu werden, doch er begann sich zu fragen, ob die Gestalt ihn tatsächlich verfolgte oder ob sie ihm etwas zeigen wollte, das er in sich selbst nicht sehen konnte. In jener Nacht, in der er endlich hinausging, um mit ihr zu sprechen, fand man nur seinen leeren Mantel unter der Laterne.$t$,
    $t$Depuis trois semaines, la silhouette apparaissait chaque nuit à minuit pile sous le réverbère, devant la fenêtre d'Anton. Elle portait un long manteau gris et un chapeau qui dissimulait entièrement son visage, et se tenait immobile, le regard visiblement tourné vers le haut, droit vers la chambre d'Anton.

Au début, Anton prenait cela pour une illusion, une ombre ou un promeneur égaré. Mais la régularité du phénomène l'inquiétait de plus en plus. Il se mit à passer ses nuits éveillé, l'œil collé à l'interstice du rideau, guettant le léger déclic du réverbère qui, chaque fois, précédait l'apparition de la silhouette.

Une nuit, il osa descendre. La rue était déserte, mais quand il revint, la silhouette se tenait soudain au pied de l'escalier, bien plus proche que jamais. Anton se figea. Sous le bord du chapeau, il crut reconnaître, l'espace d'un instant, son propre visage, seulement plus vieux, plus émacié, avec des yeux brillants d'épuisement.

Il s'enfuit dans son appartement et verrouilla la porte, mais les coups commencèrent aussitôt, réguliers, patients. Ils ne cessèrent qu'aux premières lueurs de l'aube. Anton n'en parla à personne, de peur de passer pour fou, mais il se mit à se demander si la silhouette le poursuivait réellement ou si elle voulait lui montrer quelque chose qu'il ne pouvait voir en lui-même. Cette nuit-là, où il sortit enfin pour lui parler, on ne retrouva que son manteau vide sous le réverbère.$t$,
    $t${"Seit":"Depuis","drei":"trois","Wochen":"semaines","erschien":"apparaissait","die":"la/le","Gestalt":"silhouette","jede":"chaque","Nacht":"nuit","Punkt":"pile","Mitternacht":"minuit","unter":"sous","der":"le","Laterne":"réverbère","vor":"devant","Antons":"d'Anton","Fenster":"fenêtre","Sie":"Elle","trug":"portait","einen":"un","langen":"long","grauen":"gris","Mantel":"manteau","und":"et","Hut":"chapeau","das":"le/que","Gesicht":"visage","vollständig":"entièrement","verdeckte":"dissimulait","stand":"se tenait","reglos":"immobile","da":"là","den":"le","Blick":"regard","offenbar":"visiblement","nach":"vers","oben":"le haut","gerichtet":"tourné","direkt":"droit","auf":"vers","Zimmer":"chambre","Anfangs":"Au début","hielt":"prenait","Anton":"Anton","es":"cela","für":"pour","Einbildung":"illusion","Schatten":"ombre","oder":"ou","verirrten":"égaré","Spaziergänger":"promeneur","Doch":"Mais","doch":"mais","Regelmäßigkeit":"régularité","beunruhigte":"inquiétait","ihn":"l'","zunehmend":"de plus en plus","Er":"Il","begann":"se mit à","Nächte":"nuits","wach":"éveillé","zu":"à/de","verbringen":"passer","Auge":"œil","an":"à","Vorhangspalt":"interstice du rideau","gepresst":"collé","wartete":"guettait","leise":"léger","Klicken":"déclic","Straßenlaterne":"réverbère","jedes":"chaque","Mal":"fois","dem":"l'","Erscheinen":"apparition","voranging":"précédait","Eines":"Une","Nachts":"nuit","wagte":"osa","er":"il","hinunterzugehen":"descendre","Die":"La","Straße":"rue","war":"était","leer":"déserte","als":"quand","zurückkehrte":"revint","plötzlich":"soudain","am":"au","Fuß":"pied","Treppe":"escalier","viel":"bien","näher":"plus proche","je":"jamais","zuvor":"auparavant","erstarrte":"se figea","Unter":"Sous","Hutrand":"bord du chapeau","glaubte":"crut","Moment":"instant","sein":"son","eigenes":"propre","erkennen":"reconnaître","nur":"seulement","älter":"plus vieux","ausgezehrter":"plus émacié","mit":"avec","Augen":"yeux","Erschöpfung":"épuisement","glänzten":"brillants","floh":"s'enfuit","zurück":"(floh...zurück = s'enfuit)","in":"dans","seine":"son","Wohnung":"appartement","verriegelte":"verrouilla","Tür":"porte","Klopfen":"coups","sofort":"aussitôt","gleichmäßig":"réguliers","geduldig":"patients","Es":"Ils","hörte":"cessèrent","erst":"seulement","ersten":"premières","Licht":"lueurs","Morgendämmerung":"aube","erzählte":"parla","niemandem":"à personne","davon":"de cela","aus":"de","Angst":"peur","verrückt":"fou","gehalten":"pris","werden":"être","sich":"se","fragen":"demander","ob":"si","tatsächlich":"réellement","verfolgte":"poursuivait","sie":"elle","ihm":"lui","etwas":"quelque chose","zeigen":"montrer","wollte":"voulait","selbst":"lui-même","nicht":"ne...pas","sehen":"voir","konnte":"pouvait","In":"Dans","jener":"cette","endlich":"enfin","hinausging":"sortit","um":"pour","ihr":"lui","sprechen":"parler","fand":"retrouva","man":"on","seinen":"son","leeren":"vide"}$t$::jsonb,
    $t$Inspiré de la nouvelle courte allemande (Kurzgeschichte)$t$
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wann erscheint die Gestalt jede Nacht?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Punkt Mitternacht$t$, true, 1),
    (v_q, $t$Am frühen Morgen$t$, false, 2),
    (v_q, $t$Am Nachmittag$t$, false, 3),
    (v_q, $t$Bei Sonnenuntergang$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie ist die Gestalt beschrieben?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Langer grauer Mantel und ein Hut, der das Gesicht verdeckt$t$, true, 1),
    (v_q, $t$Ein Kind in weißer Kleidung$t$, false, 2),
    (v_q, $t$Ein Mann in Uniform$t$, false, 3),
    (v_q, $t$Eine alte Frau mit Regenschirm$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche erzählerische Wirkung erzeugt die Tatsache, dass der Hut 'das Gesicht vollständig verdeckte'?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie erzeugt Unheimlichkeit, indem die Identität der Gestalt bewusst verborgen bleibt$t$, true, 1),
    (v_q, $t$Sie zeigt, dass die Gestalt sich vor Kälte schützen will$t$, false, 2),
    (v_q, $t$Sie erklärt, warum Anton die Gestalt sofort erkennt$t$, false, 3),
    (v_q, $t$Sie deutet an, dass die Gestalt ein Polizist ist$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was tut Anton, um die Gestalt besser zu beobachten?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er verbringt die Nächte wach am Fenster$t$, true, 1),
    (v_q, $t$Er ruft die Polizei$t$, false, 2),
    (v_q, $t$Er zieht in eine andere Stadt$t$, false, 3),
    (v_q, $t$Er schläft tief und fest$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was passiert, als Anton eines Nachts hinuntergeht?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Die Gestalt steht bei seiner Rückkehr plötzlich viel näher$t$, true, 1),
    (v_q, $t$Die Gestalt verschwindet für immer$t$, false, 2),
    (v_q, $t$Er trifft die Gestalt nicht an$t$, false, 3),
    (v_q, $t$Die Gestalt spricht mit ihm$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet es, dass Anton unter dem Hutrand 'sein eigenes Gesicht' zu erkennen glaubt, nur älter und erschöpfter?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Die Gestalt könnte eine Projektion von Antons eigener Angst oder Zukunft sein$t$, true, 1),
    (v_q, $t$Anton hat einen Zwillingsbruder, den er vergessen hat$t$, false, 2),
    (v_q, $t$Die Gestalt trägt tatsächlich eine Maske von Antons Gesicht$t$, false, 3),
    (v_q, $t$Es handelt sich um einen einfachen optischen Fehler der Straßenlaterne$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum erzählt Anton niemandem von der Gestalt?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Aus Angst, für verrückt gehalten zu werden$t$, true, 1),
    (v_q, $t$Weil ihn niemand danach fragt$t$, false, 2),
    (v_q, $t$Weil er die Sprache seiner Nachbarn nicht spricht$t$, false, 3),
    (v_q, $t$Weil er es selbst vergisst$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was findet man in der letzten Nacht der Geschichte?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Nur Antons leeren Mantel unter der Laterne$t$, true, 1),
    (v_q, $t$Anton, der friedlich schläft$t$, false, 2),
    (v_q, $t$Die Gestalt, die endlich spricht$t$, false, 3),
    (v_q, $t$Gar nichts Ungewöhnliches$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie deutet das offene, mehrdeutige Ende die zentrale Frage der Geschichte?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Es lässt bewusst offen, ob die Gestalt real, übernatürlich oder ein Teil von Anton selbst war$t$, true, 1),
    (v_q, $t$Es beweist eindeutig, dass die Gestalt ein Einbrecher war$t$, false, 2),
    (v_q, $t$Es zeigt klar, dass alles nur ein Traum von Anton war$t$, false, 3),
    (v_q, $t$Es erklärt vollständig, wer die Gestalt wirklich ist$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'reglos' im Text?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Ohne sich zu bewegen$t$, true, 1),
    (v_q, $t$Sehr schnell$t$, false, 2),
    (v_q, $t$Fröhlich lachend$t$, false, 3),
    (v_q, $t$Laut sprechend$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$In welchem Zusammenhang wird 'reglos' verwendet?$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Die Gestalt steht reglos unter der Laterne$t$, true, 1),
    (v_q, $t$Anton bewegt sich reglos durch die Stadt$t$, false, 2),
    (v_q, $t$Die Straßenlaterne flackert reglos$t$, false, 3),
    (v_q, $t$Der Mantel hängt reglos im Schrank$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welches Wort passt inhaltlich am wenigsten zu 'reglos'?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Lebhaft$t$, true, 1),
    (v_q, $t$Bewegungslos$t$, false, 2),
    (v_q, $t$Unbeweglich$t$, false, 3),
    (v_q, $t$Erstarrt$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Form ist 'voranging' (das jedes Mal dem Erscheinen voranging)?$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Präteritum von 'vorangehen'$t$, true, 1),
    (v_q, $t$Präsens von 'vorangehen'$t$, false, 2),
    (v_q, $t$Partizip II von 'vorangehen'$t$, false, 3),
    (v_q, $t$Konjunktiv I von 'vorangehen'$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet das trennbare Verb 'vorangehen' in diesem Satz?$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Vor etwas anderem geschehen, etwas ankündigen$t$, true, 1),
    (v_q, $t$Schneller gehen als jemand anderes$t$, false, 2),
    (v_q, $t$Sich rückwärts bewegen$t$, false, 3),
    (v_q, $t$Etwas vorschlagen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Aussage zur Bildung von 'voranging' ist korrekt?$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Das Präfix 'voran-' bleibt im Präteritum getrennt, daher 'ging...voran'$t$, true, 1),
    (v_q, $t$Das Verb ist untrennbar und bildet keine Klammerstruktur$t$, false, 2),
    (v_q, $t$Es handelt sich um ein reflexives Verb$t$, false, 3),
    (v_q, $t$Das Partizip II lautet 'vorangegangt'$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$Schreiben Sie 5-7 Sätze darüber, welche Erklärung Sie für die geheimnisvolle Gestalt am plausibelsten finden, und begründen Sie Ihre Meinung mit Details aus dem Text.$t$, 1, 'normal', 'production', $t$Meiner Meinung nach ist die Gestalt am ehesten als eine Projektion von Antons innerer Angst zu verstehen. Dafür spricht besonders, dass er unter dem Hutrand sein eigenes, nur gealtertes Gesicht zu erkennen glaubt. Diese Beobachtung deutet stark darauf hin, dass die Gestalt eine Art Spiegelbild seiner eigenen Zukunft oder verdrängten Gefühle sein könnte. Zudem erscheint die Gestalt ausschließlich nachts, wenn Anton allein und besonders verletzlich ist, was psychologische Deutungen unterstützt. Andererseits lässt der Text auch eine übernatürliche Erklärung offen, da am Ende nur der leere Mantel gefunden wird. Gerade diese Uneindeutigkeit macht die Geschichte für mich so faszinierend, da sie den Leser zum eigenen Nachdenken zwingt. Ich denke, genau diese Offenheit ist typisch für unheimliche Erzählungen dieser Art.$t$);

END $block$;

-- 8. Zwischen zwei Sprachen
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary, culture_note) VALUES (
    'B2',
    $t$Zwischen zwei Sprachen$t$,
    $t$Deniz wechselte innerhalb eines Satzes mühelos zwischen Deutsch und Türkisch, je nachdem, mit wem sie sprach. Zu Hause in Duisburg sprach sie mit ihrer Großmutter Türkisch, mit ihrem jüngeren Bruder eine Mischung aus beidem, und in der Schule fast ausschließlich Deutsch, manchmal so akzentfrei, dass Mitschüler überrascht waren, wenn sie erfuhren, dass sie noch eine andere Muttersprache hatte.

In der neunten Klasse sollte jeder Schüler ein Referat über die eigene Familiengeschichte halten. Deniz zögerte lange, worüber sie sprechen sollte. Sollte sie von der Fabrik erzählen, in der ihr Großvater vor fünfzig Jahren als Gastarbeiter angefangen hatte? Oder davon, dass sie sich manchmal weder richtig deutsch noch richtig türkisch fühlte, sondern wie etwas Drittes, für das es kein einfaches Wort gab?

Am Tag der Präsentation brachte sie ein altes Foto ihres Großvaters mit, aufgenommen vor dem Werkstor, an dem er dreißig Jahre gearbeitet hatte. Sie erzählte, wie er nach der Arbeit abends Deutsch aus der Zeitung lernte, während seine Kinder es in der Schule lernten und ihm später halfen, Formulare zu verstehen.

"Ich dachte lange, ich müsste mich entscheiden", sagte Deniz zum Schluss, "zwischen Deutschland und der Türkei, zwischen den Sprachen. Aber vielleicht ist das gar keine Entscheidung, die man treffen muss." Ihre Lehrerin nickte, und zum ersten Mal spürte Deniz, dass ihre doppelte Herkunft keine Lücke war, sondern etwas, das ihr Perspektiven gab, die andere in der Klasse nicht hatten.$t$,
    $t$Deniz passait sans effort de l'allemand au turc au sein d'une même phrase, selon la personne à qui elle parlait. Chez elle, à Duisburg, elle parlait turc avec sa grand-mère, un mélange des deux avec son frère cadet, et à l'école presque exclusivement allemand, parfois sans le moindre accent, si bien que ses camarades de classe étaient surpris d'apprendre qu'elle avait une autre langue maternelle.

En classe de troisième, chaque élève devait faire un exposé sur l'histoire de sa propre famille. Deniz hésita longtemps sur ce dont elle devait parler. Devait-elle raconter l'usine où son grand-père avait commencé à travailler comme travailleur immigré cinquante ans plus tôt ? Ou bien le fait qu'elle ne se sentait parfois ni vraiment allemande ni vraiment turque, mais comme une troisième chose, pour laquelle il n'existait pas de mot simple ?

Le jour de la présentation, elle apporta une vieille photo de son grand-père, prise devant le portail de l'usine où il avait travaillé pendant trente ans. Elle raconta comment il apprenait l'allemand le soir après le travail en lisant le journal, tandis que ses enfants l'apprenaient à l'école et l'aidaient plus tard à comprendre les formulaires administratifs.

« J'ai longtemps cru que je devais choisir », dit Deniz pour conclure, « entre l'Allemagne et la Turquie, entre les langues. Mais peut-être n'est-ce pas du tout un choix à faire. » Son enseignante hocha la tête, et pour la première fois, Deniz sentit que sa double origine n'était pas un manque, mais quelque chose qui lui offrait des perspectives que les autres élèves de la classe n'avaient pas.$t$,
    $t${"Deniz":"Deniz","wechselte":"passait","innerhalb":"au sein de","eines":"d'une","Satzes":"phrase","mühelos":"sans effort","zwischen":"de...à/entre","Deutsch":"l'allemand","und":"et","Türkisch":"le turc","je":"selon","nachdem":"(je nachdem = selon)","mit":"avec","wem":"qui","sie":"elle","sprach":"parlait","Zu":"Chez","Hause":"elle (zu Hause = chez elle)","in":"à","Duisburg":"Duisburg","ihrer":"sa","Großmutter":"grand-mère","ihrem":"son","jüngeren":"cadet","Bruder":"frère","eine":"un","Mischung":"mélange","aus":"des","beidem":"deux","der":"l'/la","Schule":"école","fast":"presque","ausschließlich":"exclusivement","manchmal":"parfois","so":"si","akzentfrei":"sans accent","dass":"que/si bien que","Mitschüler":"camarades de classe","überrascht":"surpris","waren":"étaient","wenn":"quand","erfuhren":"apprenaient","noch":"encore/autre","andere":"autre","Muttersprache":"langue maternelle","hatte":"avait","In":"En","neunten":"de troisième (neuvième classe)","Klasse":"classe","sollte":"devait","jeder":"chaque","Schüler":"élève","ein":"un","Referat":"exposé","über":"sur","die":"l'/la","eigene":"propre","Familiengeschichte":"histoire de la famille","halten":"faire","zögerte":"hésita","lange":"longtemps","worüber":"sur quoi","sprechen":"parler","Sollte":"Devait-elle","von":"de/sur","Fabrik":"usine","erzählen":"raconter","ihr":"son","Großvater":"grand-père","vor":"il y a","fünfzig":"cinquante","Jahren":"ans","als":"comme","Gastarbeiter":"travailleur immigré","angefangen":"commencé","Oder":"Ou","davon":"cela","sich":"se","weder":"ni","richtig":"vraiment","deutsch":"allemande","türkisch":"turque","fühlte":"sentait","sondern":"mais","wie":"comme","etwas":"quelque chose","Drittes":"troisième","für":"pour","das":"lequel/le/que","es":"il","kein":"pas de","einfaches":"simple","Wort":"mot","gab":"existait","Am":"Le","Tag":"jour","Präsentation":"présentation","brachte":"apporta","altes":"vieille","Foto":"photo","ihres":"de son","Großvaters":"grand-père","aufgenommen":"prise","dem":"le","Werkstor":"portail de l'usine","an":"à/devant","er":"il","dreißig":"trente","Jahre":"ans","gearbeitet":"travaillé","Sie":"Elle","erzählte":"raconta","nach":"après","Arbeit":"travail","abends":"le soir","Zeitung":"journal","lernte":"apprenait","während":"tandis que","seine":"ses","Kinder":"enfants","lernten":"apprenaient","ihm":"lui","später":"plus tard","halfen":"aidaient","Formulare":"formulaires","zu":"à","verstehen":"comprendre","Ich":"Je","dachte":"croyais","ich":"je","müsste":"devais","mich":"me","entscheiden":"choisir","sagte":"dit","zum":"pour","Schluss":"conclure","Deutschland":"l'Allemagne","Türkei":"Turquie","den":"les","Sprachen":"langues","Aber":"Mais","vielleicht":"peut-être","ist":"est","gar":"pas du tout","keine":"pas un","Entscheidung":"choix","man":"on","treffen":"faire","muss":"doit","Ihre":"Son","Lehrerin":"enseignante","nickte":"hocha la tête","ersten":"première","Mal":"fois","spürte":"sentit","ihre":"sa","doppelte":"double","Herkunft":"origine","Lücke":"manque","war":"était","Perspektiven":"perspectives","nicht":"ne pas","hatten":"avaient"}$t$::jsonb,
    $t$Société allemande contemporaine$t$
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Sprachen spricht Deniz?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Deutsch und Türkisch$t$, true, 1),
    (v_q, $t$Deutsch und Französisch$t$, false, 2),
    (v_q, $t$Nur Türkisch$t$, false, 3),
    (v_q, $t$Englisch und Türkisch$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$In welchem Zusammenhang spricht Deniz jeweils welche Sprache?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Türkisch mit der Großmutter, Deutsch in der Schule$t$, true, 1),
    (v_q, $t$Deutsch nur mit der Großmutter$t$, false, 2),
    (v_q, $t$Türkisch nur in der Schule$t$, false, 3),
    (v_q, $t$Sie spricht mit niemandem Türkisch$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was zeigt die Beobachtung, dass Mitschüler überrascht sind, wenn sie von Deniz' anderer Muttersprache erfahren?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sprachliche Zugehörigkeit lässt sich nicht immer am Akzent oder Auftreten einer Person erkennen$t$, true, 1),
    (v_q, $t$Deniz spricht in Wirklichkeit gar kein Türkisch$t$, false, 2),
    (v_q, $t$Die Mitschüler sind generell wenig aufmerksam$t$, false, 3),
    (v_q, $t$Deniz versteckt ihre Herkunft absichtlich vor allen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Worüber soll Deniz ein Referat halten?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Über die eigene Familiengeschichte$t$, true, 1),
    (v_q, $t$Über ein historisches Ereignis$t$, false, 2),
    (v_q, $t$Über ein Buch ihrer Wahl$t$, false, 3),
    (v_q, $t$Über ein wissenschaftliches Thema$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum fällt es Deniz schwer, ein Thema für ihr Referat zu finden?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie fühlt sich zwischen zwei Identitäten und findet dafür keine einfachen Worte$t$, true, 1),
    (v_q, $t$Sie hat keine Informationen über ihre Familie$t$, false, 2),
    (v_q, $t$Sie hat kein Interesse an dem Thema$t$, false, 3),
    (v_q, $t$Ihr fehlt die Zeit für die Vorbereitung$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet Denizs Formulierung, sie fühle sich 'wie etwas Drittes, für das es kein einfaches Wort gibt'?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Bikulturelle Identität lässt sich nicht immer in bestehende Kategorien einordnen$t$, true, 1),
    (v_q, $t$Sie meint damit, dass sie sich für keine der beiden Kulturen interessiert$t$, false, 2),
    (v_q, $t$Sie fühlt sich Deutschland und der Türkei gegenüber gleichermaßen feindselig$t$, false, 3),
    (v_q, $t$Sie hat vergessen, wie man sich auf Türkisch ausdrückt$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bringt Deniz zur Präsentation mit?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Ein altes Foto ihres Großvaters$t$, true, 1),
    (v_q, $t$Ein türkisches Kochbuch$t$, false, 2),
    (v_q, $t$Eine Landkarte der Türkei$t$, false, 3),
    (v_q, $t$Einen Brief ihrer Großmutter$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was hat Denizs Großvater vor fünfzig Jahren gemacht?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er begann als Gastarbeiter in einer Fabrik zu arbeiten$t$, true, 1),
    (v_q, $t$Er studierte an einer deutschen Universität$t$, false, 2),
    (v_q, $t$Er eröffnete ein eigenes Geschäft$t$, false, 3),
    (v_q, $t$Er wurde Lehrer in Duisburg$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie verändert sich Denizs Sicht auf ihre doppelte Herkunft am Ende der Geschichte?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie erkennt ihre Zweisprachigkeit als Bereicherung statt als Problem, das gelöst werden muss$t$, true, 1),
    (v_q, $t$Sie entscheidet sich endgültig für die deutsche Identität$t$, false, 2),
    (v_q, $t$Sie beschließt, in die Türkei zurückzukehren$t$, false, 3),
    (v_q, $t$Sie bleibt bei ihrer anfänglichen Verunsicherung ohne jede Veränderung$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'Muttersprache' im Text?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Die Sprache, die man von Geburt an zuerst lernt$t$, true, 1),
    (v_q, $t$Eine Fremdsprache in der Schule$t$, false, 2),
    (v_q, $t$Ein Dialekt einer Region$t$, false, 3),
    (v_q, $t$Eine Sprache, die man beruflich braucht$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$In welchem Zusammenhang wird 'Muttersprache' im Text verwendet?$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Mitschüler sind überrascht, dass Deniz eine andere Muttersprache als Deutsch hat$t$, true, 1),
    (v_q, $t$Deniz lernt eine neue Fremdsprache in der Schule$t$, false, 2),
    (v_q, $t$Die Lehrerin spricht mehrere Muttersprachen$t$, false, 3),
    (v_q, $t$Der Großvater hat seine Muttersprache vergessen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welcher Begriff ist in diesem Kontext KEIN sinnvolles Synonym für 'Muttersprache'?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Fremdsprache$t$, true, 1),
    (v_q, $t$Erstsprache$t$, false, 2),
    (v_q, $t$Herkunftssprache$t$, false, 3),
    (v_q, $t$Familiensprache$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Zeitform ist 'hatte ... angefangen' (als Gastarbeiter angefangen hatte)?$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Plusquamperfekt$t$, true, 1),
    (v_q, $t$Präsens$t$, false, 2),
    (v_q, $t$Futur II$t$, false, 3),
    (v_q, $t$Imperativ$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum wird hier das Plusquamperfekt verwendet?$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Weil das Ereignis vor dem erzählten Haupt-Vergangenheitszeitpunkt liegt$t$, true, 1),
    (v_q, $t$Weil es eine Zukunftsabsicht ausdrückt$t$, false, 2),
    (v_q, $t$Weil es eine höfliche Bitte ist$t$, false, 3),
    (v_q, $t$Weil es eine wiederholte Gegenwartshandlung beschreibt$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie wird das Plusquamperfekt von 'anfangen' korrekt gebildet?$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$hatte + angefangen (mit haben als Hilfsverb)$t$, true, 1),
    (v_q, $t$war + angefangen (mit sein als Hilfsverb)$t$, false, 2),
    (v_q, $t$würde + anfangen$t$, false, 3),
    (v_q, $t$ist + angefangen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$Schreiben Sie 5-7 Sätze darüber, welche Vorteile es Ihrer Meinung nach haben kann, mit zwei Sprachen und Kulturen aufzuwachsen, und welche Herausforderungen damit verbunden sein können.$t$, 1, 'normal', 'production', $t$Mit zwei Sprachen und Kulturen aufzuwachsen bringt meiner Meinung nach vor allem die Fähigkeit mit sich, verschiedene Perspektiven gleichzeitig zu verstehen. Menschen wie Deniz können oft leichter zwischen unterschiedlichen sozialen Kontexten wechseln, da sie von klein auf gelernt haben, sich anzupassen. Gleichzeitig kann diese doppelte Zugehörigkeit auch verunsichernd sein, besonders wenn die Umgebung ständig eine eindeutige Zuordnung erwartet. Viele bikulturelle Jugendliche berichten, dass sie sich manchmal weder als vollständig deutsch noch als vollständig der Herkunftskultur zugehörig fühlen. Trotzdem zeigt die Geschichte von Deniz, dass diese Zwischenstellung mit der Zeit auch als Stärke erlebt werden kann. Wichtig ist meiner Ansicht nach, dass Schule und Gesellschaft solche Mehrfachidentitäten wertschätzen, statt Vereinheitlichung zu verlangen. So kann aus einer vermeintlichen Lücke tatsächlich ein wertvoller Perspektivenreichtum werden.$t$);

END $block$;

