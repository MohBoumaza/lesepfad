-- Contenu réel — niveau B2 (25 histoires). Chaque histoire a :
-- - 3 questions de compréhension (position 1-3) x 3 difficultés
-- - 1 question de vocabulaire (position 1) x 3 difficultés
-- - 1 question de conjugaison/grammaire (position 1) x 3 difficultés
-- - 1 tâche de production écrite (position 1, difficulty 'normal', pas de choix, model_answer)

-- 1. Die Entscheidung
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary) VALUES (
    'B2',
    $t$Die Entscheidung$t$,
    $t$Als Anna ein Angebot für eine Beförderung erhielt, war sie zunächst begeistert. Die neue Position würde ihr mehr Verantwortung, ein höheres Gehalt und mehr Ansehen im Unternehmen bringen. Allerdings wurde ihr schnell klar, dass die Stelle auch bedeutete, dass sie deutlich mehr Zeit im Büro verbringen und häufiger reisen müsste. Sie hatte gerade erst ein neues Gleichgewicht zwischen Arbeit und Privatleben gefunden, nachdem sie in den vorherigen Jahren beruflich stark eingespannt gewesen war. Ihre Partnerin unterstützte sie zwar in ihrer Entscheidung, machte aber deutlich, dass sie sich mehr gemeinsame Zeit wünschte. Anna verbrachte mehrere schlaflose Nächte damit, die Vor- und Nachteile abzuwägen. Einerseits reizte sie die berufliche Herausforderung, andererseits fürchtete sie, dass ihr Privatleben darunter leiden würde. Schließlich entschied sie sich, mit ihrem Vorgesetzten offen über ihre Bedenken zu sprechen, anstatt die Entscheidung allein zu treffen. Zu ihrer Überraschung zeigte sich ihr Chef sehr verständnisvoll und schlug vor, die neue Rolle zunächst probeweise für sechs Monate zu übernehmen, mit der Möglichkeit, danach eine endgültige Entscheidung zu treffen. Diese Lösung erschien Anna deutlich weniger riskant. Sie nahm das Angebot unter diesen Bedingungen an und vereinbarte mit ihrer Partnerin, feste Tage für gemeinsame Zeit einzuplanen, egal wie stressig die Arbeitswoche würde. Rückblickend war es genau dieses offene Gespräch mit ihrem Chef, das ihr half, eine Entscheidung zu treffen, mit der sie sich wohlfühlte, anstatt sich von der Angst vor Veränderung leiten zu lassen.$t$,
    $t$Lorsqu'Anna reçut une offre de promotion, elle fut d'abord enthousiaste. Le nouveau poste allait lui apporter plus de responsabilités, un salaire plus élevé et plus de prestige au sein de l'entreprise. Cependant, elle comprit rapidement que ce poste impliquait aussi de passer nettement plus de temps au bureau et de voyager plus souvent. Elle venait tout juste de trouver un nouvel équilibre entre vie professionnelle et vie privée, après avoir été très prise par son travail les années précédentes. Sa compagne la soutenait certes dans sa décision, mais faisait clairement comprendre qu'elle souhaitait davantage de temps ensemble. Anna passa plusieurs nuits blanches à peser le pour et le contre. D'un côté, le défi professionnel l'attirait, de l'autre, elle craignait que sa vie privée n'en pâtisse. Finalement, elle décida de parler ouvertement de ses inquiétudes à son supérieur, plutôt que de prendre la décision seule. À sa grande surprise, son patron se montra très compréhensif et proposa d'assumer d'abord le nouveau rôle à titre d'essai pendant six mois, avec la possibilité de prendre ensuite une décision définitive. Cette solution parut à Anna nettement moins risquée. Elle accepta l'offre à ces conditions et convint avec sa compagne de prévoir des jours fixes pour du temps ensemble, quelle que soit la semaine de travail, aussi stressante fût-elle. Avec le recul, c'est précisément cette conversation franche avec son patron qui l'aida à prendre une décision avec laquelle elle se sentait bien, plutôt que de se laisser guider par la peur du changement.$t$,
    $t${"Als":"Quand/Lorsque","Anna":"Anna","ein":"un","Angebot":"offre","für":"pour","eine":"une","Beförderung":"promotion","erhielt":"reçut","war":"était","sie":"elle","zunächst":"d'abord","begeistert":"enthousiaste","Die":"La/Le","neue":"nouveau/nouvelle","Position":"poste","würde":"allait (conditionnel)","ihr":"lui","mehr":"plus","Verantwortung":"responsabilité","höheres":"plus élevé","Gehalt":"salaire","und":"et","Ansehen":"prestige","im":"dans le","Unternehmen":"entreprise","bringen":"apporter","Allerdings":"Cependant","wurde":"devint","schnell":"vite","klar":"clair","dass":"que","die":"la/le","Stelle":"poste","auch":"aussi","bedeutete":"signifiait","deutlich":"nettement","Zeit":"temps","Büro":"bureau","verbringen":"passer","häufiger":"plus souvent","reisen":"voyager","müsste":"devrait","Sie":"Elle","hatte":"avait","gerade":"justement","erst":"seulement/tout juste","neues":"nouvel","Gleichgewicht":"équilibre","zwischen":"entre","Arbeit":"travail","Privatleben":"vie privée","gefunden":"trouvé","nachdem":"après que","in":"dans","den":"les","vorherigen":"précédentes","Jahren":"années","beruflich":"professionnellement","stark":"fortement","eingespannt":"accaparée","gewesen":"été","Ihre":"Sa","Partnerin":"compagne","unterstützte":"soutenait","zwar":"certes","ihrer":"sa","Entscheidung":"décision","machte":"rendait/faisait","aber":"mais","sich":"se","gemeinsame":"commun","wünschte":"souhaitait","verbrachte":"passa","mehrere":"plusieurs","schlaflose":"sans sommeil","Nächte":"nuits","damit":"à cela","Vor":"le pour","Nachteile":"inconvénients","abzuwägen":"peser","Einerseits":"D'un côté","reizte":"attirait","berufliche":"professionnel","Herausforderung":"défi","andererseits":"de l'autre côté","fürchtete":"craignait","darunter":"en pâtir","leiden":"souffrir","Schließlich":"Finalement","entschied":"décida","mit":"avec","ihrem":"son","Vorgesetzten":"supérieur","offen":"ouvertement","über":"au sujet de","ihre":"ses","Bedenken":"inquiétudes","zu":"de","sprechen":"parler","anstatt":"au lieu de","allein":"seule","treffen":"prendre","Zu":"À","Überraschung":"surprise","zeigte":"se montra","Chef":"patron","sehr":"très","verständnisvoll":"compréhensif","schlug":"proposa","vor":"proposa (part.)","Rolle":"rôle","probeweise":"à titre d'essai","sechs":"six","Monate":"mois","übernehmen":"assumer","der":"la","Möglichkeit":"possibilité","danach":"ensuite","endgültige":"définitive","Diese":"Cette","Lösung":"solution","erschien":"parut","weniger":"moins","riskant":"risquée","nahm":"accepta","das":"l'","unter":"sous","diesen":"ces","Bedingungen":"conditions","an":"(part. verbale)","vereinbarte":"convint","feste":"fixes","Tage":"jours","einzuplanen":"de prévoir","egal":"peu importe","wie":"comme/aussi","stressig":"stressante","Arbeitswoche":"semaine de travail","Rückblickend":"avec le recul","es":"ce","genau":"précisément","dieses":"cette","offene":"franche","Gespräch":"conversation","half":"aida","wohlfühlte":"se sentait bien","von":"par","Angst":"peur","Veränderung":"changement","leiten":"guider","lassen":"laisser"}$t$::jsonb
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was hätte die neue Position Anna laut Text gebracht?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Mehr Verantwortung, Gehalt und Ansehen$t$, true, 1),
    (v_q, $t$Weniger Arbeit$t$, false, 2),
    (v_q, $t$Einen neuen Chef$t$, false, 3),
    (v_q, $t$Mehr Urlaub$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was hat Anna zunächst an der Beförderung begeistert?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Mehr Freizeit$t$, false, 1),
    (v_q, $t$Mehr Verantwortung, Gehalt und Ansehen$t$, true, 2),
    (v_q, $t$Weniger Reisen$t$, false, 3),
    (v_q, $t$Ein anderer Arbeitsort$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum geriet Anna trotz ihrer anfänglichen Begeisterung ins Zweifeln?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Weil ihr Gehalt zu niedrig war$t$, false, 1),
    (v_q, $t$Weil ihre Partnerin die Beförderung strikt ablehnte$t$, false, 2),
    (v_q, $t$Weil sie fürchtete, ihr gerade gefundenes Gleichgewicht zwischen Arbeit und Privatleben zu verlieren$t$, true, 3),
    (v_q, $t$Weil ihr Chef die Beförderung zurückzog$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was schlug Annas Chef als Lösung vor?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Die Rolle probeweise für sechs Monate zu übernehmen$t$, true, 1),
    (v_q, $t$Anna sofort zu befördern$t$, false, 2),
    (v_q, $t$Ihr Gehalt zu kürzen$t$, false, 3),
    (v_q, $t$Anna zu kündigen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was hat Annas Chef vorgeschlagen?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Die Beförderung sofort abzulehnen$t$, false, 1),
    (v_q, $t$Die Rolle probeweise für sechs Monate zu übernehmen$t$, true, 2),
    (v_q, $t$Anna zu kündigen$t$, false, 3),
    (v_q, $t$Ihr Gehalt zu senken$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum empfand Anna den Vorschlag ihres Chefs als hilfreich?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Weil er ihr eine sofortige Gehaltserhöhung garantierte$t$, false, 1),
    (v_q, $t$Weil er das Risiko der Entscheidung deutlich verringerte$t$, true, 2),
    (v_q, $t$Weil er die Reisetätigkeit komplett strich$t$, false, 3),
    (v_q, $t$Weil er ihre Partnerin in die Entscheidung einbezog$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was hat Anna letztlich geholfen, sich zu entscheiden?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Der Rat ihrer Eltern$t$, false, 1),
    (v_q, $t$Das offene Gespräch mit ihrem Chef$t$, true, 2),
    (v_q, $t$Eine Münze, die sie geworfen hat$t$, false, 3),
    (v_q, $t$Der Druck ihrer Kollegen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was hat Anna letztendlich geholfen, eine Entscheidung zu treffen?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Der Rat ihrer Eltern$t$, false, 1),
    (v_q, $t$Das offene Gespräch mit ihrem Chef$t$, true, 2),
    (v_q, $t$Eine Münze, die sie geworfen hat$t$, false, 3),
    (v_q, $t$Der Druck ihrer Kollegen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was zeigt der Rückblick am Ende des Textes über Annas Entscheidungsprozess?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Dass offene Kommunikation ihr half, statt sich von der Angst vor Veränderung leiten zu lassen$t$, true, 1),
    (v_q, $t$Dass sie sich letztlich doch von der Angst vor Veränderung leiten ließ$t$, false, 2),
    (v_q, $t$Dass die Entscheidung allein von ihrer Partnerin getroffen wurde$t$, false, 3),
    (v_q, $t$Dass sie die Beförderung trotz des Gesprächs ablehnte$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'die Beförderung' im Text?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Aufstieg in eine höhere berufliche Position$t$, true, 1),
    (v_q, $t$Reise mit dem Zug$t$, false, 2),
    (v_q, $t$Entlassung aus der Firma$t$, false, 3),
    (v_q, $t$Urlaub vom Beruf$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welches Wort passt am besten zu 'ein Gleichgewicht zwischen Arbeit und Privatleben finden'?$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$die Work-Life-Balance$t$, true, 1),
    (v_q, $t$der Feierabend$t$, false, 2),
    (v_q, $t$die Kündigungsfrist$t$, false, 3),
    (v_q, $t$die Überstunde$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Im Satz 'Sie hatte gerade erst ein neues Gleichgewicht gefunden, nachdem sie beruflich stark eingespannt gewesen war' bedeutet 'eingespannt sein':$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$stark beruflich beansprucht und ausgelastet sein$t$, true, 1),
    (v_q, $t$finanziell unabhängig sein$t$, false, 2),
    (v_q, $t$gesundheitlich beeinträchtigt sein$t$, false, 3),
    (v_q, $t$beruflich unzufrieden sein$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wähle die richtige Konjunktiv-II-Form: 'Wenn Anna die Stelle ablehnen würde, ___ sie weniger Stress haben.'$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$würde$t$, true, 1),
    (v_q, $t$hätte$t$, false, 2),
    (v_q, $t$sei$t$, false, 3),
    (v_q, $t$wird$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Ergänze den Relativsatz: 'Die neue Position, ___ ihr mehr Verantwortung brachte, war eine große Herausforderung.'$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$die$t$, true, 1),
    (v_q, $t$der$t$, false, 2),
    (v_q, $t$dem$t$, false, 3),
    (v_q, $t$denen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welcher Satz gibt den irrealen Konjunktiv II der Vergangenheit korrekt wieder für: 'Wenn Anna das Angebot allein entschieden hätte...'?$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$...hätte sie sich vielleicht falsch gefühlt.$t$, true, 1),
    (v_q, $t$...hat sie sich vielleicht falsch gefühlt.$t$, false, 2),
    (v_q, $t$...würde sie sich vielleicht falsch fühlen.$t$, false, 3),
    (v_q, $t$...fühlte sie sich vielleicht falsch.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$Schreiben Sie einen argumentativen Absatz (6–9 Sätze): Sollte man bei wichtigen beruflichen Entscheidungen immer den Partner/die Partnerin einbeziehen? Begründen Sie Ihre Meinung mit Argumenten und einem Beispiel.$t$, 1, 'normal', 'production', $t$Meiner Meinung nach sollte man wichtige berufliche Entscheidungen immer mit dem Partner oder der Partnerin besprechen. Erstens betrifft eine solche Entscheidung, wie im Text von Anna, nicht nur die eigene Karriere, sondern auch das gemeinsame Leben. Wenn beispielsweise mehr Reisen oder längere Arbeitszeiten notwendig werden, verändert sich zwangsläufig auch der Alltag des Partners. Zweitens kann ein offenes Gespräch helfen, mögliche Konflikte frühzeitig zu erkennen und gemeinsam Lösungen zu finden, anstatt sie später zu bereuen. Andererseits sollte die endgültige Entscheidung letztlich bei der betroffenen Person selbst liegen, da sie die beruflichen Konsequenzen am direktesten trägt. Ein guter Kompromiss besteht darin, wie Anna es getan hat, klare Vereinbarungen zu treffen, etwa feste gemeinsame Zeiten einzuplanen. So bleibt die berufliche Freiheit erhalten, ohne die Beziehung zu vernachlässigen. Insgesamt bin ich überzeugt, dass Kommunikation der Schlüssel zu einer ausgewogenen Entscheidung ist.$t$);

END $block$;

-- 2. Digitale Freundschaften
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary) VALUES (
    'B2',
    $t$Digitale Freundschaften$t$,
    $t$In den letzten Jahren hat sich die Art, wie Menschen Freundschaften pflegen, stark verändert. Lukas, ein Student im zweiten Semester, hat die meisten seiner engsten Kontakte über soziale Netzwerke und Online-Communities kennengelernt, nicht durch persönliche Treffen. Für ihn fühlt sich diese Form der Freundschaft genauso echt an wie traditionelle Beziehungen, auch wenn seine Eltern das anfangs schwer nachvollziehen konnten. Als Lukas seiner Mutter erzählte, dass er mit einem Freund, den er nie persönlich getroffen hatte, stundenlang über seine Sorgen gesprochen hatte, reagierte sie zunächst besorgt. Sie befürchtete, dass diese digitalen Beziehungen weniger verbindlich und daher weniger wertvoll seien als persönliche Freundschaften. Lukas widersprach entschieden und argumentierte, dass die geografische Distanz keine Rolle spiele, solange gegenseitiges Vertrauen und echtes Interesse aneinander bestünden. Tatsächlich zeigen aktuelle Studien, dass digitale Freundschaften oft genauso stabil sein können wie persönliche, vorausgesetzt, es findet ein regelmäßiger und ehrlicher Austausch statt. Allerdings weisen Experten auch darauf hin, dass ein völliger Verzicht auf persönlichen Kontakt langfristig problematisch werden kann, da bestimmte Formen der Unterstützung, etwa eine Umarmung in schwierigen Momenten, online nicht ersetzt werden können. Lukas erkennt diesen Punkt an, betont aber, dass für ihn eine gesunde Mischung aus beidem der richtige Weg sei. Er trifft sich weiterhin regelmäßig mit lokalen Freunden, pflegt aber gleichzeitig seine Online-Freundschaften, die ihm in schwierigen Zeiten oft schneller zur Seite standen als manche Menschen in seiner unmittelbaren Umgebung.$t$,
    $t$Ces dernières années, la manière dont les gens entretiennent des amitiés a beaucoup changé. Lukas, étudiant en deuxième semestre, a fait la connaissance de la plupart de ses contacts les plus proches via les réseaux sociaux et des communautés en ligne, et non lors de rencontres en personne. Pour lui, cette forme d'amitié semble tout aussi authentique que les relations traditionnelles, même si ses parents avaient au début du mal à le comprendre. Lorsque Lukas raconta à sa mère qu'il avait parlé pendant des heures de ses soucis avec un ami qu'il n'avait jamais rencontré en personne, elle réagit d'abord avec inquiétude. Elle craignait que ces relations numériques soient moins engageantes et donc moins précieuses que les amitiés en personne. Lukas la contredit fermement et argumenta que la distance géographique n'avait aucune importance, tant qu'il y avait une confiance mutuelle et un intérêt réel l'un pour l'autre. En effet, des études récentes montrent que les amitiés numériques peuvent souvent être tout aussi stables que les amitiés en personne, à condition qu'il y ait un échange régulier et sincère. Cependant, les experts soulignent aussi qu'une renonciation totale au contact personnel peut devenir problématique à long terme, car certaines formes de soutien, comme une étreinte dans des moments difficiles, ne peuvent pas être remplacées en ligne. Lukas reconnaît ce point, mais souligne que pour lui, un mélange sain des deux est la bonne voie. Il continue de voir régulièrement des amis locaux, tout en entretenant en même temps ses amitiés en ligne, qui lui ont souvent été d'un plus grand secours dans les moments difficiles que certaines personnes de son entourage immédiat.$t$,
    $t${"In":"Dans","den":"les","letzten":"dernières","Jahren":"années","hat":"a","sich":"se","die":"la/le","Art":"manière","wie":"dont","Menschen":"les gens","Freundschaften":"amitiés","pflegen":"entretenir","stark":"fortement","verändert":"changé","Lukas":"Lukas","ein":"un","Student":"étudiant","im":"au","zweiten":"deuxième","Semester":"semestre","meisten":"la plupart","seiner":"de ses","engsten":"plus proches","Kontakte":"contacts","über":"via","soziale":"sociaux","Netzwerke":"réseaux","und":"et","Online-Communities":"communautés en ligne","kennengelernt":"connu","nicht":"pas","durch":"par","persönliche":"personnelles","Treffen":"rencontres","Für":"Pour","ihn":"lui","fühlt":"semble","diese":"cette","Form":"forme","der":"de l'","Freundschaft":"amitié","genauso":"tout aussi","echt":"authentique","an":"que","traditionelle":"traditionnelles","Beziehungen":"relations","auch":"même","wenn":"si","seine":"ses","Eltern":"parents","das":"cela","anfangs":"au début","schwer":"difficilement","nachvollziehen":"comprendre","konnten":"pouvaient","Als":"Lorsque","Mutter":"mère","erzählte":"raconta","dass":"que","er":"il","mit":"avec","einem":"un","Freund":"ami","nie":"jamais","persönlich":"en personne","getroffen":"rencontré","hatte":"avait","stundenlang":"pendant des heures","Sorgen":"soucis","gesprochen":"parlé","reagierte":"réagit","zunächst":"d'abord","besorgt":"inquiète","Sie":"Elle","befürchtete":"craignait","digitalen":"numériques","weniger":"moins","verbindlich":"engageantes","daher":"donc","wertvoll":"précieuses","seien":"seraient","als":"que","widersprach":"contredit","entschieden":"fermement","argumentierte":"argumenta","geografische":"géographique","Distanz":"distance","keine":"aucune","Rolle":"rôle","spiele":"joue","solange":"tant que","gegenseitiges":"mutuelle","Vertrauen":"confiance","echtes":"réel","Interesse":"intérêt","aneinander":"l'un pour l'autre","bestünden":"existaient","Tatsächlich":"En effet","zeigen":"montrent","aktuelle":"récentes","Studien":"études","digitale":"numériques","oft":"souvent","stabil":"stables","sein":"être","können":"peuvent","vorausgesetzt":"à condition que","es":"il/cela","findet":"a lieu","regelmäßiger":"régulier","ehrlicher":"sincère","Austausch":"échange","statt":"lieu","Allerdings":"Cependant","weisen":"soulignent","Experten":"experts","darauf":"cela","hin":"sur","völliger":"totale","Verzicht":"renonciation","auf":"à","persönlichen":"personnel","Kontakt":"contact","langfristig":"à long terme","problematisch":"problématique","werden":"devenir","kann":"peut","da":"car","bestimmte":"certaines","Formen":"formes","Unterstützung":"soutien","etwa":"comme","eine":"une","Umarmung":"étreinte","in":"dans","schwierigen":"difficiles","Momenten":"moments","online":"en ligne","ersetzt":"remplacées","erkennt":"reconnaît","diesen":"ce","Punkt":"point","betont":"souligne","aber":"mais","für":"pour","gesunde":"sain","Mischung":"mélange","aus":"de","beidem":"les deux","richtige":"bonne","Weg":"voie","Er":"Il","trifft":"voit","weiterhin":"continue de","regelmäßig":"régulièrement","lokalen":"locaux","Freunden":"amis","pflegt":"entretient","gleichzeitig":"en même temps","Online-Freundschaften":"amitiés en ligne","ihm":"lui","Zeiten":"moments","schneller":"plus vite","zur":"à","Seite":"côté","standen":"se tenaient","manche":"certaines","unmittelbaren":"immédiat","Umgebung":"entourage","sei":"soit","sie":"elle"}$t$::jsonb
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wo hat Lukas die meisten seiner engsten Kontakte kennengelernt?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$An der Universität$t$, false, 1),
    (v_q, $t$Über soziale Netzwerke und Online-Communities$t$, true, 2),
    (v_q, $t$Bei der Arbeit$t$, false, 3),
    (v_q, $t$Durch seine Familie$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie hat Lukas die meisten seiner engsten Kontakte kennengelernt?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$In der Universität$t$, false, 1),
    (v_q, $t$Über soziale Netzwerke und Online-Communities$t$, true, 2),
    (v_q, $t$Durch seine Familie$t$, false, 3),
    (v_q, $t$Bei der Arbeit$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was zeigt Lukas' Aussage, dass sich digitale Freundschaften für ihn genauso echt anfühlen wie traditionelle?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Dass er persönliche und digitale Beziehungen nicht grundsätzlich unterschiedlich bewertet$t$, true, 1),
    (v_q, $t$Dass er persönliche Freundschaften vollständig ablehnt$t$, false, 2),
    (v_q, $t$Dass seine Eltern seine Ansicht von Anfang an teilten$t$, false, 3),
    (v_q, $t$Dass er nie persönliche Freunde hatte$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wovor hatte Lukas' Mutter zunächst Angst?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Dass digitale Freundschaften weniger wertvoll seien$t$, true, 1),
    (v_q, $t$Dass Lukas zu viel Geld ausgibt$t$, false, 2),
    (v_q, $t$Dass Lukas nicht mehr studiert$t$, false, 3),
    (v_q, $t$Dass Lukas allein lebt$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was befürchtete Lukas' Mutter zunächst?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Dass Lukas zu wenig lernt$t$, false, 1),
    (v_q, $t$Dass digitale Freundschaften weniger wertvoll sind$t$, true, 2),
    (v_q, $t$Dass Lukas kein Geld hat$t$, false, 3),
    (v_q, $t$Dass Lukas seine Freunde verliert$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Worauf gründete sich die anfängliche Sorge von Lukas' Mutter?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Auf negativen Erfahrungen, die sie selbst mit Online-Kontakten gemacht hatte$t$, false, 1),
    (v_q, $t$Auf der Annahme, dass fehlende Verbindlichkeit digitale Beziehungen weniger wertvoll macht$t$, true, 2),
    (v_q, $t$Auf der Tatsache, dass Lukas seine Online-Freunde nie erwähnte$t$, false, 3),
    (v_q, $t$Auf der Sorge, dass Lukas finanziell ausgenutzt wird$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was betonen Experten laut dem Text?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Digitale Freundschaften sind grundsätzlich schlechter$t$, false, 1),
    (v_q, $t$Persönlicher Kontakt bleibt teilweise wichtig, etwa für Unterstützung$t$, true, 2),
    (v_q, $t$Man sollte auf Online-Freunde verzichten$t$, false, 3),
    (v_q, $t$Persönliche Freundschaften werden bald überflüssig$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was betonen Experten laut dem Text?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Digitale Freundschaften sind immer schlechter$t$, false, 1),
    (v_q, $t$Persönlicher Kontakt bleibt teilweise wichtig, etwa für Unterstützung$t$, true, 2),
    (v_q, $t$Man sollte keine Online-Freunde haben$t$, false, 3),
    (v_q, $t$Persönliche Freundschaften sind bald überflüssig$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche differenzierte Position vertritt der Text zum Verhältnis von digitalen und persönlichen Freundschaften?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Digitale Freundschaften sind persönlichen in jeder Hinsicht überlegen$t$, false, 1),
    (v_q, $t$Nur eine der beiden Formen kann langfristig funktionieren$t$, false, 2),
    (v_q, $t$Beide Formen können wertvoll sein, doch manche Unterstützung erfordert persönlichen Kontakt$t$, true, 3),
    (v_q, $t$Studien widerlegen jeden Nutzen digitaler Freundschaften$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'die geografische Distanz'?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$die räumliche Entfernung zwischen zwei Orten$t$, true, 1),
    (v_q, $t$die zeitliche Verspätung$t$, false, 2),
    (v_q, $t$die kulturelle Differenz$t$, false, 3),
    (v_q, $t$die finanzielle Belastung$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Im Text heißt es, digitale Freundschaften seien stabil, 'vorausgesetzt, es findet ein regelmäßiger Austausch statt'. 'Vorausgesetzt' bedeutet hier:$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$unter der Bedingung, dass$t$, true, 1),
    (v_q, $t$obwohl$t$, false, 2),
    (v_q, $t$nachdem$t$, false, 3),
    (v_q, $t$damit$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet der Ausdruck 'weniger verbindlich' im Kontext des Textes?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$weniger verpflichtend und ernsthaft$t$, true, 1),
    (v_q, $t$weniger interessant$t$, false, 2),
    (v_q, $t$weniger technisch$t$, false, 3),
    (v_q, $t$weniger anonym$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wähle die passende Passivform: 'Freundschaften ___ heute oft online gepflegt.'$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$werden$t$, true, 1),
    (v_q, $t$sind$t$, false, 2),
    (v_q, $t$haben$t$, false, 3),
    (v_q, $t$wurden sein$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Ergänze den Relativsatz: 'Lukas hat einen Freund, ___ er nie persönlich getroffen hat.'$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$den$t$, true, 1),
    (v_q, $t$der$t$, false, 2),
    (v_q, $t$dem$t$, false, 3),
    (v_q, $t$dessen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Formulierung drückt den Konjunktiv II (indirekte Rede/Vermutung) korrekt aus: 'Die Mutter befürchtete, dass digitale Beziehungen weniger wertvoll ___.'$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$seien$t$, true, 1),
    (v_q, $t$sind$t$, false, 2),
    (v_q, $t$waren$t$, false, 3),
    (v_q, $t$werden$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$Schreiben Sie einen argumentativen Absatz (6–9 Sätze): Können Online-Freundschaften genauso wertvoll sein wie persönliche Freundschaften? Nehmen Sie Stellung und begründen Sie Ihre Meinung.$t$, 1, 'normal', 'production', $t$Ich bin der Ansicht, dass Online-Freundschaften durchaus genauso wertvoll sein können wie persönliche Beziehungen, auch wenn sie anders funktionieren. Zunächst ermöglicht das Internet, Menschen mit ähnlichen Interessen unabhängig vom Wohnort kennenzulernen, was gerade für introvertierte oder isolierte Personen eine wichtige Chance sein kann. Zudem zeigt das Beispiel von Lukas, dass ein ehrlicher und regelmäßiger Austausch entscheidender ist als die räumliche Nähe. Allerdings muss man einräumen, dass bestimmte Formen der Unterstützung, wie eine Umarmung in einer Krise, online nicht ersetzt werden können. Deshalb sollte man digitale Kontakte nicht als vollständigen Ersatz, sondern als sinnvolle Ergänzung zu persönlichen Freundschaften betrachten. Eine gesunde Mischung aus beiden Formen scheint mir der beste Weg zu sein, um sowohl emotionale Nähe als auch physische Unterstützung zu erhalten. Letztlich zählt für mich vor allem die Qualität einer Beziehung, unabhängig davon, ob sie online oder offline entstanden ist.$t$);

END $block$;

-- 3. Der Umzug in eine neue Stadt
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary) VALUES (
    'B2',
    $t$Der Umzug in eine neue Stadt$t$,
    $t$Nach dem Abschluss ihres Studiums stand Laura vor einer schwierigen Entscheidung: Sollte sie in ihrer Heimatstadt bleiben, wo ihre gesamte Familie und alle ihre Freunde lebten, oder sollte sie den Sprung wagen und für einen attraktiven Job in eine völlig fremde Stadt ziehen? Ihre Eltern rieten ihr eher zur Vorsicht und betonten, wie wichtig ein stabiles soziales Netzwerk sei. Laura selbst spürte jedoch eine wachsende Unruhe, wenn sie sich vorstellte, für immer in derselben Umgebung zu bleiben, in der sie aufgewachsen war. Nach langem Abwägen entschied sie sich, den Job anzunehmen, auch wenn ihr die Vorstellung, niemanden in der neuen Stadt zu kennen, Angst machte. Die ersten Wochen erwiesen sich tatsächlich als herausfordernd. Laura verbrachte viele Abende allein in ihrer neuen Wohnung und vermisste die Vertrautheit ihres früheren Lebens. Statt sich jedoch zurückzuziehen, entschied sie sich bewusst dazu, aktiv neue Kontakte zu suchen. Sie trat einem Sportverein bei und nahm an Veranstaltungen für Neuankömmlinge teil, die von der Stadt organisiert wurden. Nach einigen Monaten hatte sich ihr anfängliches Gefühl der Isolation deutlich verringert, und sie hatte einen kleinen, aber engen Freundeskreis aufgebaut. Rückblickend betrachtet Laura den Umzug als eine der besten Entscheidungen ihres Lebens, auch wenn der Anfang schwieriger war, als sie erwartet hatte. Sie ist überzeugt, dass sie durch diese Erfahrung selbstständiger und widerstandsfähiger geworden ist, als sie es in ihrer gewohnten Umgebung je geworden wäre.$t$,
    $t$Après avoir terminé ses études, Laura se trouva face à une décision difficile : devait-elle rester dans sa ville natale, où vivaient toute sa famille et tous ses amis, ou devait-elle oser le saut et déménager dans une ville totalement inconnue pour un poste attrayant ? Ses parents lui conseillaient plutôt la prudence et soulignaient l'importance d'un réseau social stable. Laura elle-même ressentait cependant une inquiétude croissante à l'idée de rester pour toujours dans le même environnement où elle avait grandi. Après mûre réflexion, elle décida d'accepter le poste, même si l'idée de ne connaître personne dans la nouvelle ville lui faisait peur. Les premières semaines se révélèrent effectivement difficiles. Laura passa de nombreuses soirées seule dans son nouvel appartement et regrettait la familiarité de sa vie d'avant. Mais au lieu de se replier sur elle-même, elle décida délibérément de chercher activement de nouveaux contacts. Elle rejoignit un club de sport et participa à des événements pour nouveaux arrivants organisés par la ville. Après quelques mois, son sentiment initial d'isolement avait nettement diminué, et elle s'était constitué un cercle d'amis restreint mais soudé. Avec le recul, Laura considère ce déménagement comme l'une des meilleures décisions de sa vie, même si les débuts furent plus difficiles qu'elle ne s'y attendait. Elle est convaincue que cette expérience l'a rendue plus autonome et plus résiliente qu'elle ne l'aurait jamais été dans son environnement habituel.$t$,
    $t${"Nach":"Après","dem":"l'","Abschluss":"achèvement","ihres":"de ses","Studiums":"études","stand":"se trouva","Laura":"Laura","vor":"devant","einer":"une","schwierigen":"difficile","Entscheidung":"décision","Sollte":"Devait","sie":"elle","in":"dans","ihrer":"sa","Heimatstadt":"ville natale","bleiben":"rester","wo":"où","ihre":"sa","gesamte":"toute","Familie":"famille","und":"et","alle":"tous","Freunde":"amis","lebten":"vivaient","oder":"ou","den":"le","Sprung":"saut","wagen":"oser","für":"pour","einen":"un","attraktiven":"attrayant","Job":"poste","eine":"une","völlig":"totalement","fremde":"inconnue","Stadt":"ville","ziehen":"déménager","Ihre":"Ses","Eltern":"parents","rieten":"conseillaient","ihr":"lui","eher":"plutôt","zur":"à la","Vorsicht":"prudence","betonten":"soulignaient","wie":"combien","wichtig":"important","ein":"un","stabiles":"stable","soziales":"social","Netzwerk":"réseau","sei":"était","selbst":"elle-même","spürte":"ressentait","jedoch":"cependant","wachsende":"croissante","Unruhe":"inquiétude","wenn":"quand","sich":"se/s'","vorstellte":"imaginait","immer":"pour toujours","derselben":"le même","Umgebung":"environnement","zu":"à","der":"où/de","aufgewachsen":"grandi","war":"était","Nach langem Abwägen":"Après mûre réflexion","langem":"long","Abwägen":"réflexion","entschied":"décida","anzunehmen":"d'accepter","auch":"même","die":"l'","Vorstellung":"idée","niemanden":"personne","neuen":"nouvelle","kennen":"connaître","Angst":"peur","machte":"faisait","Die":"Les","ersten":"premières","Wochen":"semaines","erwiesen":"se révélèrent","tatsächlich":"effectivement","als":"comme","herausfordernd":"difficiles","verbrachte":"passa","viele":"de nombreuses","Abende":"soirées","allein":"seule","Wohnung":"appartement","vermisste":"regrettait","Vertrautheit":"familiarité","früheren":"d'avant","Lebens":"vie","Statt":"Au lieu de","zurückzuziehen":"se replier","bewusst":"délibérément","dazu":"cela","aktiv":"activement","neue":"nouveaux","Kontakte":"contacts","suchen":"chercher","Sie":"Elle","trat":"rejoignit","einem":"un","Sportverein":"club de sport","bei":"adhéra","nahm":"participa","an":"à","Veranstaltungen":"événements","Neuankömmlinge":"nouveaux arrivants","teil":"part","von":"par","organisiert":"organisés","wurden":"furent","einigen":"quelques","Monaten":"mois","hatte":"avait","anfängliches":"initial","Gefühl":"sentiment","Isolation":"isolement","deutlich":"nettement","verringert":"diminué","kleinen":"restreint","aber":"mais","engen":"soudé","Freundeskreis":"cercle d'amis","aufgebaut":"constitué","Rückblickend":"avec le recul","betrachtet":"considère","Umzug":"déménagement","besten":"meilleures","Entscheidungen":"décisions","Anfang":"début","schwieriger":"plus difficile","erwartet":"attendu","ist":"est","überzeugt":"convaincue","dass":"que","durch":"par","diese":"cette","Erfahrung":"expérience","selbstständiger":"plus autonome","widerstandsfähiger":"plus résiliente","geworden":"devenue","es":"cela","gewohnten":"habituel","je":"jamais","wäre":"aurait été","sollte":"devait"}$t$::jsonb
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wozu rieten Lauras Eltern?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Zum Umzug in die neue Stadt$t$, false, 1),
    (v_q, $t$Eher zur Vorsicht und zum Bleiben$t$, true, 2),
    (v_q, $t$Zu einem Studium im Ausland$t$, false, 3),
    (v_q, $t$Zu einer Kündigung$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wozu rieten Lauras Eltern?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Zum Umzug in die neue Stadt$t$, false, 1),
    (v_q, $t$Eher zur Vorsicht und zum Bleiben$t$, true, 2),
    (v_q, $t$Zu einem anderen Job$t$, false, 3),
    (v_q, $t$Zu einem weiteren Studium$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Worauf stützten Lauras Eltern ihren Rat zur Vorsicht?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Auf schlechten Erfahrungen mit dem neuen Arbeitgeber$t$, false, 1),
    (v_q, $t$Auf finanziellen Bedenken bezüglich des neuen Jobs$t$, false, 2),
    (v_q, $t$Auf der Bedeutung eines stabilen sozialen Netzwerks$t$, true, 3),
    (v_q, $t$Auf der reinen Entfernung zur neuen Stadt$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie reagierte Laura auf ihre anfängliche Isolation?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie zog zurück in ihre Heimatstadt$t$, false, 1),
    (v_q, $t$Sie suchte aktiv neue Kontakte$t$, true, 2),
    (v_q, $t$Sie kündigte ihren neuen Job$t$, false, 3),
    (v_q, $t$Sie zog sich vollständig zurück$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie hat Laura auf ihre anfängliche Isolation reagiert?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie hat sich zurückgezogen$t$, false, 1),
    (v_q, $t$Sie ist zurück in ihre Heimatstadt gezogen$t$, false, 2),
    (v_q, $t$Sie hat aktiv neue Kontakte gesucht$t$, true, 3),
    (v_q, $t$Sie hat gekündigt$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was zeigt Lauras Verhalten in den ersten Monaten über ihren Umgang mit Schwierigkeiten?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie begegnete der Isolation aktiv, statt sich zurückzuziehen$t$, true, 1),
    (v_q, $t$Sie ignorierte das Problem vollständig$t$, false, 2),
    (v_q, $t$Sie verließ sich allein auf ihre Familie zur Unterstützung$t$, false, 3),
    (v_q, $t$Sie gab die neue Stelle nach kurzer Zeit auf$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie bewertet Laura den Umzug rückblickend?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Als großen Fehler$t$, false, 1),
    (v_q, $t$Als eine der besten Entscheidungen ihres Lebens$t$, true, 2),
    (v_q, $t$Als neutrale Erfahrung$t$, false, 3),
    (v_q, $t$Sie bereut den Umzug sehr$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie bewertet Laura den Umzug rückblickend?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Als einen großen Fehler$t$, false, 1),
    (v_q, $t$Als eine der besten Entscheidungen ihres Lebens$t$, true, 2),
    (v_q, $t$Als eine neutrale Erfahrung$t$, false, 3),
    (v_q, $t$Sie bereut es sehr$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Schlussfolgerung zieht Laura aus ihrer Erfahrung mit dem Umzug?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Dass ein Umzug jedem uneingeschränkt zu empfehlen ist$t$, false, 1),
    (v_q, $t$Dass sie ohne den Sportverein gescheitert wäre$t$, false, 2),
    (v_q, $t$Dass sie durch die Herausforderung selbstständiger und widerstandsfähiger geworden ist$t$, true, 3),
    (v_q, $t$Dass ihre Eltern von Anfang an recht hatten$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'sich zurückziehen' im Text?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$sich isolieren und den Kontakt zu anderen meiden$t$, true, 1),
    (v_q, $t$umziehen$t$, false, 2),
    (v_q, $t$sich entschuldigen$t$, false, 3),
    (v_q, $t$sich anpassen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'widerstandsfähiger' in 'sie sei durch diese Erfahrung widerstandsfähiger geworden'?$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$fähiger, Schwierigkeiten zu ertragen$t$, true, 1),
    (v_q, $t$weniger sensibel$t$, false, 2),
    (v_q, $t$gesünder$t$, false, 3),
    (v_q, $t$reicher$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Im Satz 'Laura spürte eine wachsende Unruhe' bedeutet 'Unruhe':$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$ein inneres Gefühl von Nervosität und Unbehagen$t$, true, 1),
    (v_q, $t$körperliche Krankheit$t$, false, 2),
    (v_q, $t$finanzielle Sorge$t$, false, 3),
    (v_q, $t$laute Umgebung$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wähle die passende Konjunktiv-II-Form: 'Wenn Laura in ihrer Heimatstadt geblieben ___, hätte sie den neuen Job nicht bekommen.'$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$wäre$t$, true, 1),
    (v_q, $t$hätte$t$, false, 2),
    (v_q, $t$sei$t$, false, 3),
    (v_q, $t$würde$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Ergänze den Relativsatz: 'Laura zog in eine Stadt, ___ sie niemanden kannte.'$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$in der$t$, true, 1),
    (v_q, $t$die$t$, false, 2),
    (v_q, $t$der$t$, false, 3),
    (v_q, $t$in dem$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welcher Satz drückt korrekt eine Passivkonstruktion im Präteritum aus: 'Veranstaltungen für Neuankömmlinge ___ von der Stadt organisiert.'$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$wurden$t$, true, 1),
    (v_q, $t$waren$t$, false, 2),
    (v_q, $t$sind$t$, false, 3),
    (v_q, $t$haben$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$Schreiben Sie einen argumentativen Absatz (6–9 Sätze): Lohnt es sich, für den Beruf in eine fremde Stadt zu ziehen, auch wenn man dort niemanden kennt? Diskutieren Sie Vor- und Nachteile.$t$, 1, 'normal', 'production', $t$Ein Umzug in eine fremde Stadt für den Beruf ist meiner Meinung nach oft eine lohnende, wenn auch herausfordernde Entscheidung. Einerseits bietet ein neuer Ort die Möglichkeit, berufliche Chancen zu ergreifen, die man in der Heimatstadt nicht gehabt hätte. Zudem zwingt eine solche Veränderung, wie das Beispiel von Laura zeigt, dazu, aktiv neue Kontakte zu knüpfen, was langfristig die soziale Kompetenz und Selbstständigkeit stärkt. Andererseits darf man die anfänglichen Schwierigkeiten nicht unterschätzen: Einsamkeit und Heimweh können die ersten Monate erheblich belasten. Wer jedoch bereit ist, sich aktiv zu engagieren, etwa durch Vereine oder Veranstaltungen, kann diese Phase meist überwinden. Wichtig ist außerdem, den Kontakt zur alten Heimat nicht völlig abzubrechen, um ein Gefühl der Sicherheit zu bewahren. Insgesamt überwiegen für mich die langfristigen Vorteile eines solchen Schrittes, auch wenn der Anfang mutig sein muss.$t$);

END $block$;

-- 4. Zwischen zwei Kulturen
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary) VALUES (
    'B2',
    $t$Zwischen zwei Kulturen$t$,
    $t$Deniz ist in Deutschland geboren und aufgewachsen, doch seine Eltern stammen aus der Türkei. Schon als Kind spürte er, dass er sich manchmal zwischen zwei Welten bewegte, die nicht immer miteinander vereinbar schienen. Zu Hause sprach die Familie Türkisch, feierte türkische Feste und pflegte bestimmte Traditionen, während Deniz in der Schule und mit seinen Freunden Deutsch sprach und sich vollkommen als Teil der deutschen Gesellschaft fühlte. In seiner Jugend erlebte er häufig Situationen, in denen er sich für eine der beiden Identitäten zu entscheiden schien, etwa wenn Mitschüler ihn fragten, ob er sich eher als Deutscher oder als Türke fühle. Diese Frage empfand er lange Zeit als unangenehm, weil sie implizierte, dass er sich für eine Seite entscheiden müsse. Erst im Erwachsenenalter begann Deniz zu verstehen, dass diese Vorstellung einer eindeutigen, einzigen Identität eine Vereinfachung war, die seiner tatsächlichen Erfahrung nicht gerecht wurde. Er erkannte, dass er nicht die Wahl zwischen zwei Identitäten treffen musste, sondern dass beide Kulturen einen festen und wertvollen Platz in seinem Leben hatten. Diese Erkenntnis brachte ihm ein neues Gefühl der inneren Ruhe. Heute engagiert sich Deniz in einem Verein, der jungen Menschen mit ähnlichen Erfahrungen hilft, einen eigenen, selbstbewussten Umgang mit ihrer doppelten kulturellen Identität zu finden. Er betont in seinen Gesprächen mit den Jugendlichen immer wieder, dass Zugehörigkeit keine Entweder-oder-Frage sein muss, sondern durchaus vielschichtig und gleichzeitig authentisch sein kann.$t$,
    $t$Deniz est né et a grandi en Allemagne, mais ses parents sont originaires de Turquie. Dès son enfance, il sentait qu'il évoluait parfois entre deux mondes qui ne semblaient pas toujours conciliables. À la maison, la famille parlait turc, fêtait les fêtes turques et entretenait certaines traditions, tandis qu'à l'école et avec ses amis, Deniz parlait allemand et se sentait pleinement partie intégrante de la société allemande. Pendant sa jeunesse, il vécut souvent des situations où il semblait devoir choisir entre l'une des deux identités, par exemple lorsque des camarades de classe lui demandaient s'il se sentait plutôt allemand ou plutôt turc. Il ressentit longtemps cette question comme désagréable, car elle impliquait qu'il devait choisir un camp. Ce n'est qu'à l'âge adulte que Deniz commença à comprendre que cette idée d'une identité unique et claire était une simplification qui ne rendait pas justice à son expérience réelle. Il comprit qu'il n'avait pas à choisir entre deux identités, mais que les deux cultures avaient une place fixe et précieuse dans sa vie. Cette prise de conscience lui apporta un nouveau sentiment de paix intérieure. Aujourd'hui, Deniz s'engage dans une association qui aide les jeunes ayant des expériences similaires à trouver leur propre manière assumée de vivre leur double identité culturelle. Dans ses conversations avec les jeunes, il souligne sans cesse que l'appartenance n'a pas à être une question de choix exclusif, mais peut tout à fait être plurielle et authentique en même temps.$t$,
    $t${"Deniz":"Deniz","ist":"est","in":"en","Deutschland":"Allemagne","geboren":"né","und":"et","aufgewachsen":"élevé","doch":"mais","seine":"ses","Eltern":"parents","stammen":"sont originaires","aus":"de","der":"la","Türkei":"Turquie","Schon":"Dès","als":"comme/dès","Kind":"enfant","spürte":"sentait","er":"il","dass":"que","sich":"se/il se","manchmal":"parfois","zwischen":"entre","zwei":"deux","Welten":"mondes","bewegte":"évoluait","die":"qui/la","nicht":"ne pas","immer":"toujours","miteinander":"entre eux","vereinbar":"conciliables","schienen":"semblaient","Zu":"À la","Hause":"maison","sprach":"parlait","Familie":"famille","Türkisch":"turc","feierte":"fêtait","türkische":"turques","Feste":"fêtes","pflegte":"entretenait","bestimmte":"certaines","Traditionen":"traditions","während":"tandis que","Schule":"école","mit":"avec","seinen":"ses","Freunden":"amis","Deutsch":"allemand","vollkommen":"pleinement","Teil":"partie","deutschen":"allemande","Gesellschaft":"société","fühlte":"se sentait","In":"Dans","seiner":"sa","Jugend":"jeunesse","erlebte":"vécut","häufig":"souvent","Situationen":"situations","denen":"lesquelles","für":"pour","eine":"une","beiden":"les deux","Identitäten":"identités","zu":"à","entscheiden":"choisir","schien":"semblait","etwa":"par exemple","wenn":"quand","Mitschüler":"camarades de classe","ihn":"lui","fragten":"demandaient","ob":"si","eher":"plutôt","Deutscher":"allemand","oder":"ou","Türke":"turc","fühle":"se sentait","Diese":"Cette","Frage":"question","empfand":"ressentit","lange":"longtemps","Zeit":"temps","unangenehm":"désagréable","weil":"car","sie":"elle","implizierte":"impliquait","Seite":"camp","müsse":"devait","Erst":"Ce n'est que","im":"à l'","Erwachsenenalter":"âge adulte","begann":"commença","verstehen":"comprendre","diese":"cette","Vorstellung":"idée","einer":"d'une","eindeutigen":"claire","einzigen":"unique","Identität":"identité","Vereinfachung":"simplification","war":"était","tatsächlichen":"réelle","Erfahrung":"expérience","gerecht":"justice","wurde":"rendait","Er":"Il","erkannte":"comprit","Wahl":"choix","treffen":"faire","musste":"devait","sondern":"mais","beide":"les deux","Kulturen":"cultures","einen":"une","festen":"fixe","wertvollen":"précieuse","Platz":"place","seinem":"sa","Leben":"vie","hatten":"avaient","Erkenntnis":"prise de conscience","brachte":"apporta","ihm":"lui","ein":"un","neues":"nouveau","Gefühl":"sentiment","inneren":"intérieure","Ruhe":"paix","Heute":"Aujourd'hui","engagiert":"s'engage","einem":"une","Verein":"association","jungen":"jeunes","Menschen":"gens","ähnlichen":"similaires","Erfahrungen":"expériences","hilft":"aide","eigenen":"propre","selbstbewussten":"assumée","Umgang":"manière de vivre","ihrer":"leur","doppelten":"double","kulturellen":"culturelle","finden":"trouver","betont":"souligne","Gesprächen":"conversations","den":"les","Jugendlichen":"jeunes","immer wieder":"sans cesse","wieder":"encore","Zugehörigkeit":"appartenance","keine":"pas une","Entweder-oder-Frage":"question de choix exclusif","sein":"être","muss":"doit","durchaus":"tout à fait","vielschichtig":"plurielle","gleichzeitig":"en même temps","authentisch":"authentique","kann":"peut"}$t$::jsonb
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Sprache sprach Deniz zu Hause mit seiner Familie?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Deutsch$t$, false, 1),
    (v_q, $t$Englisch$t$, false, 2),
    (v_q, $t$Türkisch$t$, true, 3),
    (v_q, $t$Beide gleich viel$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Sprache sprach Deniz zu Hause mit seiner Familie?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Deutsch$t$, false, 1),
    (v_q, $t$Englisch$t$, false, 2),
    (v_q, $t$Türkisch$t$, true, 3),
    (v_q, $t$Beide gleich viel$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was verdeutlicht die Beschreibung von Deniz' Alltag zwischen Familie, Schule und Freunden?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Dass er sich in unterschiedlichen Kontexten unterschiedlichen kulturellen Prägungen zugehörig fühlte$t$, true, 1),
    (v_q, $t$Dass er zu Hause kein Türkisch sprach$t$, false, 2),
    (v_q, $t$Dass er in der Schule ausgegrenzt wurde$t$, false, 3),
    (v_q, $t$Dass er die deutsche Kultur vollständig ablehnte$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie hat Deniz die Frage nach seiner Identität in seiner Jugend empfunden?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Als angenehm$t$, false, 1),
    (v_q, $t$Als unangenehm$t$, true, 2),
    (v_q, $t$Als lustig$t$, false, 3),
    (v_q, $t$Er wurde nie danach gefragt$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie hat Deniz die Frage nach seiner Identität in seiner Jugend empfunden?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Als angenehm$t$, false, 1),
    (v_q, $t$Als unangenehm$t$, true, 2),
    (v_q, $t$Als lustig$t$, false, 3),
    (v_q, $t$Er wurde nie danach gefragt$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum empfand Deniz die Frage nach seiner nationalen Zugehörigkeit lange als unangenehm?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Weil sie implizierte, dass er sich für eine der beiden Identitäten entscheiden müsse$t$, true, 1),
    (v_q, $t$Weil er seine türkische Herkunft verheimlichen wollte$t$, false, 2),
    (v_q, $t$Weil ihm die deutsche Sprache schwerfiel$t$, false, 3),
    (v_q, $t$Weil ihn seine Mitschüler deswegen mobbten$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was macht Deniz heute?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er lebt in der Türkei$t$, false, 1),
    (v_q, $t$Er hilft jungen Menschen mit ähnlichen Erfahrungen$t$, true, 2),
    (v_q, $t$Er meidet beide Kulturen$t$, false, 3),
    (v_q, $t$Er arbeitet als Türkischlehrer$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was macht Deniz heute?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er lebt in der Türkei$t$, false, 1),
    (v_q, $t$Er hilft jungen Menschen mit ähnlichen Erfahrungen$t$, true, 2),
    (v_q, $t$Er meidet beide Kulturen$t$, false, 3),
    (v_q, $t$Er arbeitet als Lehrer für Türkisch$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Botschaft vermittelt Deniz den Jugendlichen in seinem Verein?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Dass man sich letztlich für eine Kultur entscheiden sollte$t$, false, 1),
    (v_q, $t$Dass doppelte Identität zwangsläufig zu inneren Konflikten führt$t$, false, 2),
    (v_q, $t$Dass Zugehörigkeit vielschichtig und gleichzeitig authentisch sein kann, statt eine Entweder-oder-Frage zu sein$t$, true, 3),
    (v_q, $t$Dass nur die deutsche Identität im Erwachsenenalter zählt$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'die Zugehörigkeit' im Text?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$das Gefühl, zu einer Gruppe zu gehören$t$, true, 1),
    (v_q, $t$die Abreise aus einem Land$t$, false, 2),
    (v_q, $t$die gesetzliche Pflicht$t$, false, 3),
    (v_q, $t$die berufliche Position$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'vielschichtig' in 'Zugehörigkeit kann vielschichtig sein'?$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$aus mehreren Ebenen oder Aspekten bestehend$t$, true, 1),
    (v_q, $t$sehr einfach$t$, false, 2),
    (v_q, $t$widersprüchlich und falsch$t$, false, 3),
    (v_q, $t$selten und ungewöhnlich$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet der Ausdruck 'eine Vereinfachung, die der Erfahrung nicht gerecht wurde'?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$eine zu einfache Darstellung, die die komplexe Realität nicht richtig abbildet$t$, true, 1),
    (v_q, $t$eine korrekte und angemessene Beschreibung$t$, false, 2),
    (v_q, $t$eine juristische Ungerechtigkeit$t$, false, 3),
    (v_q, $t$eine sprachliche Übersetzung$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wähle die passende Konjunktiv-II-Form: 'Wenn Deniz sich entscheiden müsste, ___ er sich schlecht fühlen.'$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$würde$t$, true, 1),
    (v_q, $t$hätte$t$, false, 2),
    (v_q, $t$ist$t$, false, 3),
    (v_q, $t$wird$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Ergänze den Relativsatz: 'Deniz engagiert sich in einem Verein, ___ jungen Menschen hilft.'$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$der$t$, true, 1),
    (v_q, $t$die$t$, false, 2),
    (v_q, $t$dem$t$, false, 3),
    (v_q, $t$den$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Form entspricht dem Passiv Präsens in: 'Diese Frage ___ von Deniz als unangenehm empfunden.'$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$wird$t$, true, 1),
    (v_q, $t$wurde$t$, false, 2),
    (v_q, $t$ist ... worden$t$, false, 3),
    (v_q, $t$hat ... empfunden$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$Schreiben Sie einen argumentativen Absatz (6–9 Sätze): Muss man sich zwischen zwei kulturellen Identitäten entscheiden, oder kann man beide gleichzeitig leben? Begründen Sie Ihre Position.$t$, 1, 'normal', 'production', $t$Meiner Ansicht nach muss sich niemand zwischen zwei kulturellen Identitäten entscheiden, sondern beide können durchaus gleichzeitig existieren. Erstens zeigt das Beispiel von Deniz, dass Sprache, Traditionen und Werte aus verschiedenen Kulturen nebeneinander einen festen Platz im Leben eines Menschen einnehmen können, ohne sich gegenseitig auszuschließen. Zweitens ist die Vorstellung einer einzigen, klar abgegrenzten Identität ohnehin eine Vereinfachung, die der Realität vieler Menschen in einer globalisierten Welt nicht gerecht wird. Andererseits kann der Druck der Umgebung, sich eindeutig zuzuordnen, zu inneren Konflikten führen, besonders in der Jugend. Deshalb halte ich es für wichtig, dass Gesellschaften eine mehrfache Zugehörigkeit anerkennen, anstatt Menschen zu einer Entweder-oder-Entscheidung zu zwingen. Wer beide kulturellen Prägungen als Bereicherung versteht, kann daraus, wie Deniz, ein stabiles und selbstbewusstes Selbstverständnis entwickeln. Aus diesem Grund ist für mich doppelte kulturelle Identität keine Schwäche, sondern eine Stärke.$t$);

END $block$;

-- 5. Die Kündigung
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary) VALUES (
    'B2',
    $t$Die Kündigung$t$,
    $t$Als Peter erfuhr, dass seine Firma an einem Projekt beteiligt war, das nach seiner Einschätzung gegen geltende Umweltauflagen verstieß, geriet er in einen inneren Konflikt. Einerseits fürchtete er, dass eine offene Kritik seine berufliche Zukunft in der Firma gefährden könnte, in der er seit acht Jahren arbeitete und in der er eine gut bezahlte, angesehene Position innehatte. Andererseits konnte er es mit seinem Gewissen nicht vereinbaren, einfach zu schweigen, während er wusste, dass die Vorgehensweise der Firma langfristig negative Folgen für die Umwelt haben könnte. Nach wochenlangem Zögern beschloss Peter, seine Bedenken zunächst intern zu äußern, indem er ein ausführliches Memo an die Geschäftsführung schickte. Die Reaktion darauf enttäuschte ihn zutiefst: Man teilte ihm mit, dass seine Bedenken zur Kenntnis genommen, aber als nicht ausreichend begründet eingestuft würden. Peter stand nun vor der Entscheidung, entweder die Angelegenheit ruhen zu lassen oder sie an eine externe Behörde weiterzuleiten, was mit hoher Wahrscheinlichkeit seine Kündigung zur Folge gehabt hätte. Nach reiflicher Überlegung entschied er sich, seine Bedenken an die zuständige Umweltbehörde zu melden, auch wenn ihm bewusst war, welches Risiko er damit einging. Wenige Wochen später wurde ihm tatsächlich gekündigt, offiziell aus betrieblichen Gründen. Obwohl der Verlust seines Arbeitsplatzes eine erhebliche finanzielle Belastung für ihn und seine Familie bedeutete, bereute Peter seine Entscheidung nicht. Er war überzeugt, dass er im Einklang mit seinen eigenen Werten gehandelt hatte, und fand später eine neue Stelle bei einem Unternehmen, dessen Prinzipien besser mit seinen eigenen übereinstimmten.$t$,
    $t$Lorsque Peter apprit que son entreprise était impliquée dans un projet qui, selon lui, enfreignait les réglementations environnementales en vigueur, il se trouva confronté à un conflit intérieur. D'un côté, il craignait qu'une critique ouverte ne mette en péril son avenir professionnel dans l'entreprise où il travaillait depuis huit ans et où il occupait un poste bien rémunéré et respecté. De l'autre, il ne pouvait pas concilier avec sa conscience le simple fait de se taire, tout en sachant que la manière d'agir de l'entreprise pourrait avoir des conséquences négatives à long terme pour l'environnement. Après des semaines d'hésitation, Peter décida d'exprimer d'abord ses inquiétudes en interne, en envoyant un mémo détaillé à la direction. La réaction le déçut profondément : on lui fit savoir que ses préoccupations avaient été prises en compte, mais jugées insuffisamment fondées. Peter se trouva alors face à un choix : laisser l'affaire de côté, ou la transmettre à une autorité externe, ce qui aurait très probablement entraîné son licenciement. Après mûre réflexion, il décida de signaler ses inquiétudes à l'autorité environnementale compétente, bien conscient du risque qu'il prenait ainsi. Quelques semaines plus tard, il fut effectivement licencié, officiellement pour des raisons économiques. Bien que la perte de son emploi représentât une charge financière considérable pour lui et sa famille, Peter ne regretta pas sa décision. Il était convaincu d'avoir agi en accord avec ses propres valeurs, et trouva plus tard un nouveau poste dans une entreprise dont les principes correspondaient mieux aux siens.$t$,
    $t${"Als":"Lorsque","Peter":"Peter","erfuhr":"apprit","dass":"que","seine":"son/sa","Firma":"entreprise","an":"à","einem":"un","Projekt":"projet","beteiligt":"impliquée","war":"était","das":"qui","nach":"selon","seiner":"son","Einschätzung":"évaluation","gegen":"contre","geltende":"en vigueur","Umweltauflagen":"réglementations environnementales","verstieß":"enfreignait","geriet":"se trouva","er":"il","in":"dans","einen":"un","inneren":"intérieur","Konflikt":"conflit","Einerseits":"D'un côté","fürchtete":"craignait","eine":"une","offene":"ouverte","Kritik":"critique","berufliche":"professionnel","Zukunft":"avenir","der":"l'","gefährden":"mettre en péril","könnte":"pourrait","seit":"depuis","acht":"huit","Jahren":"ans","arbeitete":"travaillait","und":"et","gut":"bien","bezahlte":"rémunéré","angesehene":"respecté","Position":"poste","innehatte":"occupait","Andererseits":"De l'autre","konnte":"pouvait","es":"cela","mit":"avec","seinem":"sa","Gewissen":"conscience","nicht":"ne pas","vereinbaren":"concilier","einfach":"simplement","zu":"de","schweigen":"se taire","während":"alors que","wusste":"savait","die":"la","Vorgehensweise":"manière d'agir","langfristig":"à long terme","negative":"négatives","Folgen":"conséquences","für":"pour","Umwelt":"environnement","haben":"avoir","Nach":"Après","wochenlangem":"des semaines de","Zögern":"hésitation","beschloss":"décida","Bedenken":"inquiétudes","zunächst":"d'abord","intern":"en interne","äußern":"exprimer","indem":"en","ausführliches":"détaillé","Memo":"mémo","Geschäftsführung":"direction","schickte":"envoya","Die":"La","Reaktion":"réaction","darauf":"à cela","enttäuschte":"déçut","ihn":"le","zutiefst":"profondément","Man":"On","teilte":"fit savoir","ihm":"lui","zur":"en","Kenntnis":"connaissance","genommen":"prise","aber":"mais","als":"comme","ausreichend":"suffisamment","begründet":"fondées","eingestuft":"jugées","würden":"seraient","stand":"se trouva","nun":"alors","vor":"devant","Entscheidung":"décision","entweder":"soit","Angelegenheit":"affaire","ruhen":"reposer","lassen":"laisser","oder":"ou","sie":"la","externe":"externe","Behörde":"autorité","weiterzuleiten":"transmettre","was":"ce qui","hoher":"haute","Wahrscheinlichkeit":"probabilité","Kündigung":"licenciement","Folge":"conséquence","gehabt":"eu","hätte":"aurait","reiflicher":"mûre","Überlegung":"réflexion","entschied":"décida","sich":"se","zuständige":"compétente","Umweltbehörde":"autorité environnementale","melden":"signaler","auch":"même","wenn":"si","bewusst":"conscient","welches":"quel","Risiko":"risque","damit":"ainsi","einging":"prenait","Wenige":"Quelques","Wochen":"semaines","später":"plus tard","wurde":"fut","tatsächlich":"effectivement","gekündigt":"licencié","offiziell":"officiellement","aus":"pour","betrieblichen":"économiques","Gründen":"raisons","Obwohl":"Bien que","Verlust":"perte","seines":"de son","Arbeitsplatzes":"emploi","erhebliche":"considérable","finanzielle":"financière","Belastung":"charge","Familie":"famille","bedeutete":"représentait","bereute":"regretta","Er":"Il","überzeugt":"convaincu","im":"en","Einklang":"accord","eigenen":"propres","Werten":"valeurs","gehandelt":"agi","hatte":"avait","fand":"trouva","neue":"nouveau","Stelle":"poste","bei":"chez","Unternehmen":"entreprise","dessen":"dont","Prinzipien":"principes","besser":"mieux","übereinstimmten":"correspondaient","ein":"un","seinen":"ses"}$t$::jsonb
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum geriet Peter in einen inneren Konflikt?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er wollte mehr Gehalt$t$, false, 1),
    (v_q, $t$Er entdeckte einen möglichen Verstoß gegen Umweltauflagen$t$, true, 2),
    (v_q, $t$Er mochte seinen Chef nicht$t$, false, 3),
    (v_q, $t$Er wollte die Firma wechseln$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum geriet Peter in einen inneren Konflikt?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er wollte mehr Gehalt$t$, false, 1),
    (v_q, $t$Er entdeckte einen möglichen Verstoß gegen Umweltauflagen$t$, true, 2),
    (v_q, $t$Er mochte seinen Chef nicht$t$, false, 3),
    (v_q, $t$Er wollte die Firma wechseln$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Worin bestand Peters eigentliches Dilemma zu Beginn des Textes?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Zwischen zwei gleich attraktiven Jobangeboten wählen zu müssen$t$, false, 1),
    (v_q, $t$Zwischen dem Schutz seiner beruflichen Position und seinem Gewissen entscheiden zu müssen$t$, true, 2),
    (v_q, $t$Zwischen seiner Familie und seiner Karriere entscheiden zu müssen$t$, false, 3),
    (v_q, $t$Zwischen sofortiger Kündigung und einer Gehaltserhöhung wählen zu müssen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie hat die Geschäftsführung auf Peters Memo reagiert?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie hat sofort gehandelt$t$, false, 1),
    (v_q, $t$Sie fand seine Bedenken nicht ausreichend begründet$t$, true, 2),
    (v_q, $t$Sie hat ihn befördert$t$, false, 3),
    (v_q, $t$Sie hat das Memo nicht gelesen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie hat die Geschäftsführung auf Peters Memo reagiert?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie hat sofort gehandelt$t$, false, 1),
    (v_q, $t$Sie fand seine Bedenken nicht ausreichend begründet$t$, true, 2),
    (v_q, $t$Sie hat ihn befördert$t$, false, 3),
    (v_q, $t$Sie hat ihn nicht ernst genommen, weil sie es nicht gelesen hat$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was zeigt die Reaktion der Geschäftsführung auf Peters Memo über den weiteren Verlauf der Geschichte?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie bestätigte, dass die Firma keine Umweltverstöße begangen hatte$t$, false, 1),
    (v_q, $t$Sie führte dazu, dass Peter sofort befördert wurde$t$, false, 2),
    (v_q, $t$Sie machte den internen Weg wirkungslos und zwang Peter zu einer riskanteren Entscheidung$t$, true, 3),
    (v_q, $t$Sie überzeugte Peter, das Thema ruhen zu lassen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was ist am Ende mit Peter passiert?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er wurde befördert$t$, false, 1),
    (v_q, $t$Er wurde gekündigt$t$, true, 2),
    (v_q, $t$Er hat selbst gekündigt, ohne die Behörde zu informieren$t$, false, 3),
    (v_q, $t$Nichts hat sich verändert$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was ist am Ende mit Peter passiert?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er wurde befördert$t$, false, 1),
    (v_q, $t$Er wurde gekündigt$t$, true, 2),
    (v_q, $t$Er hat selbst gekündigt, ohne die Behörde zu informieren$t$, false, 3),
    (v_q, $t$Nichts hat sich verändert$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie bewertet Peter im Rückblick die Konsequenzen seiner Entscheidung?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er bereut die Meldung an die Behörde zutiefst$t$, false, 1),
    (v_q, $t$Er sieht die Kündigung als ungerechtfertigt und plant rechtliche Schritte$t$, false, 2),
    (v_q, $t$Trotz finanzieller Belastung bereute er die Entscheidung nicht, da er im Einklang mit seinen Werten handelte$t$, true, 3),
    (v_q, $t$Er hätte lieber geschwiegen, um seinen Job zu behalten$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'das Gewissen' im Satz 'er konnte es mit seinem Gewissen nicht vereinbaren'?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$das innere moralische Empfinden von Richtig und Falsch$t$, true, 1),
    (v_q, $t$die berufliche Erfahrung$t$, false, 2),
    (v_q, $t$das Firmenvermögen$t$, false, 3),
    (v_q, $t$die rechtliche Pflicht$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'reiflicher Überlegung' in 'nach reiflicher Überlegung entschied er sich'?$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$nach gründlichem und sorgfältigem Nachdenken$t$, true, 1),
    (v_q, $t$nach kurzer Bedenkzeit$t$, false, 2),
    (v_q, $t$nach einer Diskussion mit Kollegen$t$, false, 3),
    (v_q, $t$nach einem Gerichtsurteil$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'als nicht ausreichend begründet eingestuft' im Kontext des Textes?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$als nicht überzeugend genug bewertet, um ernst genommen zu werden$t$, true, 1),
    (v_q, $t$als offiziell bestätigt und akzeptiert$t$, false, 2),
    (v_q, $t$als vertraulich behandelt$t$, false, 3),
    (v_q, $t$als rechtlich unzulässig erklärt$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wähle die passende Konjunktiv-II-Form der Vergangenheit: 'Wenn Peter geschwiegen ___, hätte er seinen Job behalten.'$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$hätte$t$, true, 1),
    (v_q, $t$wäre$t$, false, 2),
    (v_q, $t$habe$t$, false, 3),
    (v_q, $t$würde$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Ergänze den Passivsatz: 'Peter wurde wenige Wochen später gekündigt' - welche Aktivform entspricht dem?$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Die Firma kündigte Peter wenige Wochen später.$t$, true, 1),
    (v_q, $t$Peter kündigte die Firma wenige Wochen später.$t$, false, 2),
    (v_q, $t$Peter wird die Firma kündigen.$t$, false, 3),
    (v_q, $t$Die Firma hat Peter nicht gekündigt.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welcher Satz drückt korrekt aus, was Peter hätte tun können (Konjunktiv II der Vergangenheit, Möglichkeit)?$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Peter hätte die Angelegenheit auch ruhen lassen können.$t$, true, 1),
    (v_q, $t$Peter hat die Angelegenheit ruhen lassen können.$t$, false, 2),
    (v_q, $t$Peter kann die Angelegenheit ruhen lassen.$t$, false, 3),
    (v_q, $t$Peter ließ die Angelegenheit ruhen können.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$Schreiben Sie einen argumentativen Absatz (6–9 Sätze): Sollte man als Angestellter Missstände in der eigenen Firma öffentlich machen, auch wenn dies die eigene Kündigung bedeuten könnte? Begründen Sie Ihre Meinung.$t$, 1, 'normal', 'production', $t$Meiner Meinung nach sollten Angestellte gravierende Missstände in ihrer Firma melden, selbst wenn dies persönliche Risiken mit sich bringt. Zum einen tragen Unternehmen eine gesellschaftliche Verantwortung, die über den reinen Profit hinausgeht, insbesondere wenn es, wie im Fall von Peter, um Umweltschäden geht. Zum anderen zeigt sein Beispiel, dass interne Kritik oft ignoriert wird, sodass externe Meldestellen manchmal der einzige wirksame Weg sind, um Veränderungen zu bewirken. Allerdings ist es verständlich, dass viele Menschen aus Angst vor finanziellen Konsequenzen schweigen, besonders wenn sie eine Familie zu versorgen haben. Deshalb sollte der Staat Whistleblower rechtlich besser schützen, damit ehrliches Verhalten nicht bestraft wird. Peters Geschichte zeigt zudem, dass eine Entscheidung im Einklang mit den eigenen Werten langfristig zu mehr innerer Zufriedenheit führen kann, selbst wenn sie kurzfristig schmerzhaft ist. Aus diesem Grund halte ich Zivilcourage am Arbeitsplatz für äußerst wichtig, auch wenn sie Mut erfordert.$t$);

END $block$;

-- 6. Die Unruhe der Jugend
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary) VALUES (
    'B2',
    $t$Die Unruhe der Jugend$t$,
    $t$Seit Wochen beschäftigt sich Lena, eine Studentin der Germanistik, mit der Epoche des Sturm und Drang, die in den 1770er Jahren entstand. Ursprünglich sollte ein Referat über Goethes frühe Schaffensperiode vorbereitet werden, doch aus der Pflichtlektüre ist eine persönliche Auseinandersetzung geworden. Immer wieder wird Lena von der Frage begleitet, weshalb Texte, die vor mehr als zweihundertfünfzig Jahren verfasst wurden, noch immer eine emotionale Wirkung auf junge Leserinnen und Leser entfalten.

In Seminaren wird erklärt, dass der Sturm und Drang als Gegenbewegung zur Aufklärung verstanden werden kann. Während in der Aufklärung Vernunft und Ordnung betont wurden, rückten in dieser neuen Strömung Gefühl, Subjektivität und Rebellion gegen gesellschaftliche Konventionen in den Vordergrund. Junge Autoren jener Zeit lehnten sich gegen starre Autoritäten auf, gegen Väter, gegen den Adel, gegen ein Leben, das ihnen vorgeschrieben schien. Genau darin, so wird von Lena vermutet, liege der Grund für die anhaltende Resonanz: Auch heute erlebten viele junge Menschen das Gefühl, zwischen eigenen Wünschen und äußeren Erwartungen zerrieben zu werden.

Bei einem Gespräch mit ihrem Dozenten wird darauf hingewiesen, dass es nicht die konkreten Handlungen der damaligen Figuren seien, die heute noch berührten, sondern die zugrunde liegende Emotion: das Ringen um Selbstbestimmung, die Intensität erster Liebe, die Verzweiflung angesichts gesellschaftlicher Zwänge. Diese Themen würden von jeder Generation neu erlebt, wenn auch in anderen Formen – etwa im Druck sozialer Medien oder in der Unsicherheit angesichts wirtschaftlicher Zukunftsängste.

Am Ende ihrer Recherche wird Lena klar, dass literarische Epochen nicht als abgeschlossene historische Kapitel betrachtet werden sollten. Vielmehr böten sie einen Spiegel, in dem sich wiederkehrende menschliche Erfahrungen erkennen ließen – unabhängig von der Zeit, in der sie entstanden seien.$t$,
    $t$Depuis des semaines, Lena, étudiante en études germaniques, se consacre à l'étude de l'époque du Sturm und Drang, née dans les années 1770. À l'origine, il s'agissait de préparer un exposé sur la première période créatrice de Goethe, mais cette lecture obligatoire est devenue une réflexion personnelle. Lena est sans cesse accompagnée par la question de savoir pourquoi des textes écrits il y a plus de deux cent cinquante ans exercent encore un effet émotionnel sur de jeunes lectrices et lecteurs.

Dans les séminaires, on explique que le Sturm und Drang peut être compris comme un mouvement contraire aux Lumières. Alors que les Lumières mettaient l'accent sur la raison et l'ordre, ce nouveau courant plaçait au premier plan le sentiment, la subjectivité et la rébellion contre les conventions sociales. Les jeunes auteurs de l'époque se révoltaient contre des autorités rigides, contre les pères, contre la noblesse, contre une vie qui leur semblait imposée. C'est précisément là, suppose Lena, que réside la raison de cette résonance persistante : aujourd'hui encore, de nombreux jeunes vivent le sentiment d'être écartelés entre leurs propres désirs et les attentes extérieures.

Au cours d'un entretien avec son enseignant, on lui fait remarquer que ce ne sont pas les actions concrètes des personnages de l'époque qui touchent encore aujourd'hui, mais l'émotion sous-jacente : la lutte pour l'autodétermination, l'intensité du premier amour, le désespoir face aux contraintes sociales. Ces thèmes seraient revécus par chaque génération, quoique sous d'autres formes — par exemple dans la pression des réseaux sociaux ou dans l'incertitude face aux angoisses économiques d'avenir.

À la fin de ses recherches, Lena comprend clairement que les époques littéraires ne doivent pas être considérées comme des chapitres historiques clos. Elles offrent plutôt un miroir dans lequel se reconnaissent des expériences humaines récurrentes — indépendamment de l'époque où elles sont nées.$t$,
    $t${"Seit":"Depuis","Wochen":"semaines","beschäftigt":"occupe","sich":"se","Lena":"Lena","eine":"une","Studentin":"étudiante","der":"de la","Germanistik":"études germaniques","mit":"avec","Epoche":"époque","des":"du","Sturm":"Sturm","und":"et","Drang":"Drang","die":"qui/la","in":"dans","den":"les","er":"les années","Jahren":"années","entstand":"naquit","Ursprünglich":"À l'origine","sollte":"devait","ein":"un","Referat":"exposé","über":"sur","Goethes":"de Goethe","frühe":"première","Schaffensperiode":"période créatrice","vorbereitet":"préparé","werden":"être","doch":"mais","aus":"de","Pflichtlektüre":"lecture obligatoire","ist":"est","persönliche":"personnelle","Auseinandersetzung":"réflexion","geworden":"devenue","Immer wieder":"Sans cesse","wieder":"encore","wird":"est","von":"par","Frage":"question","begleitet":"accompagnée","weshalb":"pourquoi","Texte":"textes","vor":"il y a","mehr":"plus","als":"que","zweihundertfünfzig":"deux cent cinquante","verfasst":"écrits","wurden":"furent","noch":"encore","immer":"toujours","emotionale":"émotionnel","Wirkung":"effet","auf":"sur","junge":"jeunes","Leserinnen":"lectrices","Leser":"lecteurs","entfalten":"exercer","In":"Dans","Seminaren":"séminaires","erklärt":"explique","dass":"que","Gegenbewegung":"mouvement contraire","zur":"aux","Aufklärung":"Lumières","verstanden":"compris","kann":"peut","Während":"Alors que","Vernunft":"raison","Ordnung":"ordre","betont":"mis en avant","rückten":"se placèrent","dieser":"de ce","neuen":"nouveau","Strömung":"courant","Gefühl":"sentiment","Subjektivität":"subjectivité","Rebellion":"rébellion","gegen":"contre","gesellschaftliche":"sociales","Konventionen":"conventions","Vordergrund":"premier plan","Junge":"Jeunes","Autoren":"auteurs","jener":"de cette","Zeit":"époque","lehnten":"se révoltèrent","starre":"rigides","Autoritäten":"autorités","Väter":"pères","Adel":"noblesse","Leben":"vie","das":"que","ihnen":"leur","vorgeschrieben":"imposée","schien":"semblait","Genau":"Précisément","darin":"là","so":"ainsi","vermutet":"suppose","liege":"réside","Grund":"raison","für":"de","anhaltende":"persistante","Resonanz":"résonance","Auch":"Aussi","heute":"aujourd'hui","erlebten":"vivent","viele":"de nombreux","Menschen":"gens","zwischen":"entre","eigenen":"propres","Wünschen":"désirs","äußeren":"extérieures","Erwartungen":"attentes","zerrieben":"écartelés","zu":"à","Bei":"Lors de","einem":"un","Gespräch":"entretien","ihrem":"son","Dozenten":"enseignant","darauf":"cela","hingewiesen":"fait remarquer","es":"cela","nicht":"ne pas","konkreten":"concrètes","Handlungen":"actions","damaligen":"de l'époque","Figuren":"personnages","seien":"soient","berührten":"touchent","sondern":"mais","zugrunde liegende":"sous-jacente","liegende":"sous-jacente","Emotion":"émotion","Ringen":"lutte","um":"pour","Selbstbestimmung":"autodétermination","Intensität":"intensité","erster":"du premier","Liebe":"amour","Verzweiflung":"désespoir","angesichts":"face à","gesellschaftlicher":"sociales","Zwänge":"contraintes","Diese":"Ces","Themen":"thèmes","würden":"seraient","jeder":"chaque","Generation":"génération","neu":"à nouveau","erlebt":"vécus","wenn":"quoique","auch":"aussi","anderen":"d'autres","Formen":"formes","etwa":"par exemple","im":"dans","Druck":"pression","sozialer":"sociaux","Medien":"réseaux","oder":"ou","Unsicherheit":"incertitude","wirtschaftlicher":"économiques","Zukunftsängste":"angoisses d'avenir","Am":"À la","Ende":"fin","ihrer":"de ses","Recherche":"recherche","klar":"clair","literarische":"littéraires","Epochen":"époques","abgeschlossene":"clos","historische":"historiques","Kapitel":"chapitres","betrachtet":"considérées","sollten":"devraient","Vielmehr":"Plutôt","böten":"offriraient","sie":"elles","einen":"un","Spiegel":"miroir","dem":"lequel","wiederkehrende":"récurrentes","menschliche":"humaines","Erfahrungen":"expériences","erkennen":"reconnaître","ließen":"laisseraient","unabhängig":"indépendamment","entstanden":"nées","Immer":"Sans cesse","zugrunde":"sous-jacente (à la base)"}$t$::jsonb
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was sollte Lena ursprünglich vorbereiten?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Ein Referat über Goethes frühe Schaffensperiode$t$, true, 1),
    (v_q, $t$Eine Ausstellung über Weimar$t$, false, 2),
    (v_q, $t$Eine Übersetzung französischer Gedichte$t$, false, 3),
    (v_q, $t$Einen Vortrag über die Aufklärung$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie veränderte sich Lenas Verhältnis zum Thema im Laufe der Recherche?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Aus einer Pflichtlektüre wurde eine persönliche Auseinandersetzung$t$, true, 1),
    (v_q, $t$Sie verlor zunehmend das Interesse am Thema$t$, false, 2),
    (v_q, $t$Sie wechselte das Thema ihres Referats$t$, false, 3),
    (v_q, $t$Sie entschied sich, das Studium abzubrechen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Schlussfolgerung zieht Lena aus ihrer Beschäftigung mit dem Sturm und Drang?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Literarische Epochen sollten nicht als abgeschlossene historische Kapitel, sondern als Spiegel wiederkehrender menschlicher Erfahrungen betrachtet werden$t$, true, 1),
    (v_q, $t$Die Texte des Sturm und Drang seien für heutige Leser kaum noch verständlich$t$, false, 2),
    (v_q, $t$Nur Fachleute könnten die emotionale Wirkung dieser Epoche nachvollziehen$t$, false, 3),
    (v_q, $t$Die Epoche sei ausschließlich als Reaktion auf politische Ereignisse zu verstehen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was wird in den Seminaren über den Sturm und Drang erklärt?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er wird als Gegenbewegung zur Aufklärung verstanden$t$, true, 1),
    (v_q, $t$Er entstand als Fortsetzung der Aufklärung$t$, false, 2),
    (v_q, $t$Er hatte keinen Bezug zur Aufklärung$t$, false, 3),
    (v_q, $t$Er wird als rein politische Bewegung beschrieben$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Worin unterscheidet sich der Sturm und Drang laut Text von der Aufklärung?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er betont Gefühl und Rebellion statt Vernunft und Ordnung$t$, true, 1),
    (v_q, $t$Er lehnt jede Form von Literatur ab$t$, false, 2),
    (v_q, $t$Er entstand aus einer religiösen Erneuerungsbewegung$t$, false, 3),
    (v_q, $t$Er richtete sich ausschließlich gegen die Kirche$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche implizite Verbindung stellt der Dozent zwischen der damaligen und der heutigen Zeit her?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Das Ringen um Selbstbestimmung wiederhole sich in anderen gesellschaftlichen Formen, etwa im Druck sozialer Medien$t$, true, 1),
    (v_q, $t$Junge Menschen von heute lebten unter denselben politischen Bedingungen wie im 18. Jahrhundert$t$, false, 2),
    (v_q, $t$Die Literatur des Sturm und Drang habe für heutige Jugendliche keine Relevanz mehr$t$, false, 3),
    (v_q, $t$Soziale Medien hätten die Themen des Sturm und Drang vollständig verdrängt$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was berührt laut Dozent heutige Leser an den damaligen Figuren am meisten?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Die zugrunde liegende Emotion, etwa das Ringen um Selbstbestimmung$t$, true, 1),
    (v_q, $t$Die genaue historische Kleidung der Figuren$t$, false, 2),
    (v_q, $t$Die politischen Ämter der Autoren$t$, false, 3),
    (v_q, $t$Die Sprache des 18. Jahrhunderts$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum könnten Texte des Sturm und Drang laut Text auch heute noch emotional wirken?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Weil grundlegende menschliche Erfahrungen wie Liebe und gesellschaftlicher Druck generationsübergreifend erlebt werden$t$, true, 1),
    (v_q, $t$Weil die Sprache dieser Texte modernisiert wurde$t$, false, 2),
    (v_q, $t$Weil die Handlungen der Figuren mit heutigen Ereignissen identisch sind$t$, false, 3),
    (v_q, $t$Weil sie ausschließlich in Schulen verpflichtend gelesen werden$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Haltung zu literarischen Epochen wird am Ende des Textes vertreten?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Epochen sollten als Spiegel wiederkehrender menschlicher Erfahrung und nicht als abgeschlossene Kapitel gesehen werden$t$, true, 1),
    (v_q, $t$Literarische Epochen verlieren mit der Zeit zwangsläufig an Bedeutung$t$, false, 2),
    (v_q, $t$Nur die historischen Fakten einer Epoche seien für ihr Verständnis relevant$t$, false, 3),
    (v_q, $t$Epochen sollten unabhängig von ihrem gesellschaftlichen Kontext analysiert werden$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'die Auflehnung gegen Autoritäten' (vgl. 'lehnten sich gegen starre Autoritäten auf')?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$der Widerstand gegen Personen mit Macht$t$, true, 1),
    (v_q, $t$die Zustimmung zu Regeln$t$, false, 2),
    (v_q, $t$die Anpassung an Traditionen$t$, false, 3),
    (v_q, $t$die Suche nach Ruhe$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'zerrieben werden' in 'zwischen eigenen Wünschen und äußeren Erwartungen zerrieben zu werden'?$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$innerlich stark belastet und aufgerieben werden$t$, true, 1),
    (v_q, $t$körperlich verletzt werden$t$, false, 2),
    (v_q, $t$finanziell ruiniert werden$t$, false, 3),
    (v_q, $t$sozial isoliert werden$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'anhaltende Resonanz' im Zusammenhang mit literarischen Texten?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$eine bis heute fortdauernde emotionale Wirkung beim Publikum$t$, true, 1),
    (v_q, $t$eine kurzfristige Beliebtheit$t$, false, 2),
    (v_q, $t$eine akustische Eigenschaft des Textes$t$, false, 3),
    (v_q, $t$eine historische Ungenauigkeit$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wähle die passende Passivform: 'Ein Referat ___ von Lena vorbereitet.'$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$wird$t$, true, 1),
    (v_q, $t$ist$t$, false, 2),
    (v_q, $t$hat$t$, false, 3),
    (v_q, $t$wurde sein$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Ergänze den Relativsatz: 'Der Sturm und Drang, ___ in den 1770er Jahren entstand, wird oft mit der Aufklärung verglichen.'$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$der$t$, true, 1),
    (v_q, $t$die$t$, false, 2),
    (v_q, $t$dem$t$, false, 3),
    (v_q, $t$dessen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Konstruktion entspricht dem im Text verwendeten Konjunktiv I der indirekten Rede: 'Er vermutet, der Grund ___ in der emotionalen Wirkung.'$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$liege$t$, true, 1),
    (v_q, $t$liegt$t$, false, 2),
    (v_q, $t$läge$t$, false, 3),
    (v_q, $t$gelegen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$Schreiben Sie einen argumentativen Absatz (6–9 Sätze): Können über 250 Jahre alte literarische Texte heute noch etwas über das Leben junger Menschen aussagen? Begründen Sie Ihre Meinung mit Beispielen.$t$, 1, 'normal', 'production', $t$Ich bin überzeugt, dass alte literarische Texte auch heute noch relevant sein können, weil sie grundlegende menschliche Erfahrungen thematisieren, die zeitlos sind. Wie im Text über den Sturm und Drang beschrieben, geht es weniger um die konkreten historischen Umstände als um universelle Gefühle wie das Ringen um Selbstbestimmung oder den Konflikt zwischen eigenen Wünschen und gesellschaftlichen Erwartungen. Solche Themen erleben junge Menschen auch heute, wenn auch in anderer Form, etwa im Druck sozialer Medien oder in wirtschaftlicher Unsicherheit. Zwar unterscheiden sich die äußeren Lebensbedingungen von damals und heute erheblich, doch die zugrunde liegenden Emotionen bleiben vergleichbar. Deshalb halte ich es für wichtig, klassische Literatur nicht als abgeschlossenes historisches Kapitel zu betrachten, sondern als Spiegel wiederkehrender menschlicher Erfahrungen. Gerade dieser zeitlose Kern erklärt, warum solche Werke bis heute Schulen und Universitäten beschäftigen. Aus diesem Grund sollte man alte Texte stets mit einem Blick auf ihre gegenwärtige Bedeutung lesen.$t$);

END $block$;

-- 7. Die Suche nach den wahren Märchen
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary) VALUES (
    'B2',
    $t$Die Suche nach den wahren Märchen$t$,
    $t$Für ihren neuen Dokumentarfilm recherchiert die Filmemacherin Clara seit Monaten zur Entstehungsgeschichte der Märchensammlung der Brüder Grimm. Ursprünglich war geplant, lediglich einige bekannte Erzählungen visuell nachzuerzählen, doch im Laufe der Recherche hat sich der Fokus des Projekts verschoben.

In Archiven wird deutlich, dass die Sammlung "Kinder- und Hausmärchen", die zu Beginn des neunzehnten Jahrhunderts veröffentlicht wurde, keineswegs eine unveränderte Wiedergabe mündlicher Überlieferungen darstellt. Vielmehr seien die Texte von den Brüdern über mehrere Auflagen hinweg bearbeitet worden, wobei Gewaltdarstellungen teilweise verschärft, sexuelle Anspielungen hingegen entfernt wurden, um den bürgerlichen Moralvorstellungen der Zeit zu entsprechen. Zugleich habe die politische Situation im damaligen Deutschland eine Rolle gespielt: Die Sammlung mündlicher Erzählungen wurde auch als Beitrag zu einer nationalen Identität verstanden, in einer Epoche, in der ein einheitlicher deutscher Staat noch nicht existierte.

Bei Gesprächen mit Literaturwissenschaftlern wird Clara außerdem bewusst, dass die Märchen seit ihrer Veröffentlichung fortlaufend neu interpretiert worden sind. Während sie im zwanzigsten Jahrhundert zeitweise für ideologische Zwecke instrumentalisiert wurden, würden sie heute häufig aus feministischer oder psychoanalytischer Perspektive gelesen. Figuren wie die Stiefmutter oder die junge Heldin würden je nach gesellschaftlichem Kontext unterschiedlich gedeutet.

Für den Dokumentarfilm ergibt sich daraus eine zentrale These: Märchen seien keine feststehenden Texte, sondern lebendige kulturelle Objekte, die sich mit jeder Generation wandelten. Nicht der ursprüngliche Wortlaut, sondern die fortwährende Neuinterpretation mache ihre kulturelle Bedeutung aus.

Am Ende der Recherche wird beschlossen, den Film nicht als historische Rekonstruktion, sondern als Untersuchung dieses Wandels anzulegen – als Erzählung darüber, wie eine Gesellschaft sich selbst durch immer wieder neu erzählte Geschichten reflektiert.$t$,
    $t$Pour son nouveau documentaire, la cinéaste Clara fait depuis des mois des recherches sur l'histoire de la genèse du recueil de contes des frères Grimm. À l'origine, il était prévu de simplement raconter en images quelques récits connus, mais au fil des recherches, l'accent du projet s'est déplacé.

Dans les archives, il apparaît clairement que le recueil « Contes de l'enfance et du foyer », publié au début du dix-neuvième siècle, ne constitue nullement une transcription inchangée de traditions orales. Les textes ont plutôt été retravaillés par les frères au fil de plusieurs éditions, les représentations de violence étant parfois renforcées et les allusions sexuelles en revanche supprimées, afin de correspondre aux conceptions morales bourgeoises de l'époque. Par ailleurs, la situation politique de l'Allemagne de l'époque a joué un rôle : le recueil de récits oraux a aussi été compris comme une contribution à une identité nationale, à une époque où un État allemand unifié n'existait pas encore.

Lors d'entretiens avec des spécialistes de littérature, Clara prend également conscience que les contes n'ont cessé d'être réinterprétés depuis leur publication. Alors qu'ils ont été temporairement instrumentalisés à des fins idéologiques au vingtième siècle, ils sont aujourd'hui souvent lus dans une perspective féministe ou psychanalytique. Des personnages comme la belle-mère ou la jeune héroïne sont interprétés différemment selon le contexte social.

Pour le documentaire, il en résulte une thèse centrale : les contes ne sont pas des textes figés, mais des objets culturels vivants qui se transforment à chaque génération. Ce n'est pas le texte original, mais la réinterprétation continue qui constitue leur signification culturelle.

À la fin des recherches, il est décidé de concevoir le film non pas comme une reconstruction historique, mais comme une étude de cette transformation — comme un récit sur la manière dont une société se reflète elle-même à travers des histoires sans cesse racontées à nouveau.$t$,
    $t${"Für":"Pour","ihren":"son","neuen":"nouveau","Dokumentarfilm":"documentaire","recherchiert":"fait des recherches","die":"la","Filmemacherin":"cinéaste","Clara":"Clara","seit":"depuis","Monaten":"mois","zur":"sur","Entstehungsgeschichte":"histoire de la genèse","der":"du","Märchensammlung":"recueil de contes","Brüder":"frères","Grimm":"Grimm","Ursprünglich":"À l'origine","war":"était","geplant":"prévu","lediglich":"seulement","einige":"quelques","bekannte":"connus","Erzählungen":"récits","visuell":"en images","nachzuerzählen":"raconter à nouveau","doch":"mais","im":"au","Laufe":"fil","Recherche":"recherche","hat":"a","sich":"se","Fokus":"accent","des":"du","Projekts":"projet","verschoben":"déplacé","In":"Dans","Archiven":"archives","wird":"est","deutlich":"clairement","dass":"que","Sammlung":"recueil","Kinder":"enfance","und":"et","Hausmärchen":"foyer","zu":"au","Beginn":"début","neunzehnten":"dix-neuvième","Jahrhunderts":"siècle","veröffentlicht":"publié","wurde":"fut","keineswegs":"nullement","eine":"une","unveränderte":"inchangée","Wiedergabe":"transcription","mündlicher":"orales","Überlieferungen":"traditions","darstellt":"constitue","Vielmehr":"Plutôt","seien":"aient été","Texte":"textes","von":"par","den":"les","Brüdern":"frères","über":"au cours de","mehrere":"plusieurs","Auflagen":"éditions","hinweg":"au fil de","bearbeitet":"retravaillés","worden":"été","wobei":"où","Gewaltdarstellungen":"représentations de violence","teilweise":"partiellement","verschärft":"renforcées","sexuelle":"sexuelles","Anspielungen":"allusions","hingegen":"en revanche","entfernt":"supprimées","um":"afin de","bürgerlichen":"bourgeoises","Moralvorstellungen":"conceptions morales","entsprechen":"correspondre","Zugleich":"En même temps","habe":"aurait","politische":"politique","Situation":"situation","damaligen":"de l'époque","Deutschland":"Allemagne","Rolle":"rôle","gespielt":"joué","Die":"Le","auch":"aussi","als":"comme","Beitrag":"contribution","einer":"une","nationalen":"nationale","Identität":"identité","verstanden":"compris","in":"dans","Epoche":"époque","ein":"un","einheitlicher":"unifié","deutscher":"allemand","Staat":"État","noch":"encore","nicht":"pas","existierte":"existait","Bei":"Lors de","Gesprächen":"entretiens","mit":"avec","Literaturwissenschaftlern":"spécialistes de littérature","außerdem":"par ailleurs","bewusst":"conscient","Märchen":"contes","ihrer":"leur","Veröffentlichung":"publication","fortlaufend":"sans cesse","neu":"à nouveau","interpretiert":"réinterprétés","sind":"sont","Während":"Alors que","sie":"ils","zwanzigsten":"vingtième","Jahrhundert":"siècle","zeitweise":"temporairement","für":"à des fins","ideologische":"idéologiques","Zwecke":"buts","instrumentalisiert":"instrumentalisés","würden":"seraient","heute":"aujourd'hui","häufig":"souvent","aus":"sous","feministischer":"féministe","oder":"ou","psychoanalytischer":"psychanalytique","Perspektive":"perspective","gelesen":"lus","Figuren":"personnages","wie":"comme","Stiefmutter":"belle-mère","junge":"jeune","Heldin":"héroïne","je":"selon","nach":"selon","gesellschaftlichem":"social","Kontext":"contexte","unterschiedlich":"différemment","gedeutet":"interprétés","ergibt":"résulte","daraus":"de cela","zentrale":"centrale","These":"thèse","keine":"pas des","feststehenden":"figés","sondern":"mais","lebendige":"vivants","kulturelle":"culturels","Objekte":"objets","jeder":"chaque","Generation":"génération","wandelten":"se transforment","Nicht":"Pas","ursprüngliche":"original","Wortlaut":"texte","fortwährende":"continue","Neuinterpretation":"réinterprétation","mache":"constitue","ihre":"sa","Bedeutung":"signification","Am":"À la","beschlossen":"décidé","Film":"film","historische":"historique","Rekonstruktion":"reconstruction","Untersuchung":"étude","dieses":"de cette","Wandels":"transformation","anzulegen":"concevoir","Erzählung":"récit","darüber":"sur","Gesellschaft":"société","selbst":"elle-même","durch":"à travers","immer wieder":"sans cesse","erzählte":"racontées","Geschichten":"histoires","reflektiert":"se reflète","Ende":"fin","Zeit":"époque","immer":"toujours","wieder":"encore","wurden":"furent"}$t$::jsonb
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was wollte Clara ursprünglich mit ihrem Dokumentarfilm machen?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Einige bekannte Märchen visuell nacherzählen$t$, true, 1),
    (v_q, $t$Eine Biografie der Brüder Grimm verfilmen$t$, false, 2),
    (v_q, $t$Ein Musical über Märchen produzieren$t$, false, 3),
    (v_q, $t$Eine Ausstellung über deutsche Sprache organisieren$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie hat sich der Fokus von Claras Projekt im Laufe der Recherche verändert?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er verschob sich von der Nacherzählung hin zur Untersuchung der Entstehungs- und Wandlungsgeschichte der Märchen$t$, true, 1),
    (v_q, $t$Er wurde auf ein einziges Märchen konzentriert$t$, false, 2),
    (v_q, $t$Er wechselte von einem Dokumentarfilm zu einem Spielfilm$t$, false, 3),
    (v_q, $t$Er richtete sich ausschließlich auf die Biografie der Brüder Grimm$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche zentrale These ergibt sich für den Dokumentarfilm?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Märchen seien lebendige kulturelle Objekte, deren Bedeutung sich durch fortwährende Neuinterpretation ergibt$t$, true, 1),
    (v_q, $t$Märchen hätten sich seit ihrer ersten Veröffentlichung inhaltlich nie verändert$t$, false, 2),
    (v_q, $t$Die ursprüngliche mündliche Fassung der Märchen sei wichtiger als spätere Interpretationen$t$, false, 3),
    (v_q, $t$Märchen könnten nur in ihrem historischen Ursprungskontext verstanden werden$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was wird über die Sammlung "Kinder- und Hausmärchen" festgestellt?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie wurde von den Brüdern über mehrere Auflagen hinweg bearbeitet$t$, true, 1),
    (v_q, $t$Sie blieb seit der Erstveröffentlichung völlig unverändert$t$, false, 2),
    (v_q, $t$Sie wurde nie überarbeitet$t$, false, 3),
    (v_q, $t$Sie enthält ausschließlich Übersetzungen aus dem Französischen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Veränderungen wurden laut Text an den Texten vorgenommen?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Gewaltdarstellungen wurden verschärft, sexuelle Anspielungen entfernt$t$, true, 1),
    (v_q, $t$Sämtliche Gewaltszenen wurden gestrichen$t$, false, 2),
    (v_q, $t$Die Texte wurden ins Hochdeutsche übersetzt$t$, false, 3),
    (v_q, $t$Politische Anspielungen wurden hinzugefügt$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Rolle wird der politischen Situation Deutschlands im Text zugeschrieben?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Die Sammlung wurde auch als Beitrag zu einer nationalen Identität verstanden, in einer Zeit ohne einheitlichen deutschen Staat$t$, true, 1),
    (v_q, $t$Die Brüder Grimm arbeiteten im Auftrag einer Regierung, die die Märchen zensierte$t$, false, 2),
    (v_q, $t$Die politische Lage hatte keinerlei Einfluss auf die Textgestaltung$t$, false, 3),
    (v_q, $t$Die Märchen wurden verboten, weil sie als politisch gefährlich galten$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie wurden die Märchen laut Text im 20. Jahrhundert teilweise genutzt?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Für ideologische Zwecke$t$, true, 1),
    (v_q, $t$Ausschließlich für Kinderfilme$t$, false, 2),
    (v_q, $t$Für wissenschaftliche Sprachforschung$t$, false, 3),
    (v_q, $t$Für touristische Werbung$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie werden die Märchen laut Text heute häufig gelesen?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Aus feministischer oder psychoanalytischer Perspektive$t$, true, 1),
    (v_q, $t$Ausschließlich als historische Quellen ohne weitere Deutung$t$, false, 2),
    (v_q, $t$Nur noch im Rahmen des Schulunterrichts$t$, false, 3),
    (v_q, $t$Als reine Unterhaltungsliteratur ohne tiefere Bedeutung$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was legt der Text über die kulturelle Bedeutung der Märchen nahe?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Nicht der ursprüngliche Wortlaut, sondern die fortwährende Neuinterpretation mache ihre Bedeutung aus$t$, true, 1),
    (v_q, $t$Die kulturelle Bedeutung der Märchen sei ausschließlich historisch und unveränderlich$t$, false, 2),
    (v_q, $t$Nur die Originalfassung der Brüder Grimm besitze kulturelle Relevanz$t$, false, 3),
    (v_q, $t$Die Bedeutung der Märchen sei seit dem 19. Jahrhundert konstant geblieben$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'die mündliche Überlieferung' im Text?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Geschichten, die mündlich von Generation zu Generation weitergegeben werden$t$, true, 1),
    (v_q, $t$ein schriftliches Gesetz$t$, false, 2),
    (v_q, $t$eine wissenschaftliche Studie$t$, false, 3),
    (v_q, $t$eine offizielle Übersetzung$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'instrumentalisiert' in 'die Märchen wurden ideologisch instrumentalisiert'?$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$für einen bestimmten Zweck missbraucht bzw. eingesetzt$t$, true, 1),
    (v_q, $t$musikalisch vertont$t$, false, 2),
    (v_q, $t$wissenschaftlich analysiert$t$, false, 3),
    (v_q, $t$finanziell gefördert$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet der Ausdruck 'lebendige kulturelle Objekte', wie er auf die Märchen angewendet wird?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Texte, die sich mit der Zeit ständig verändern und neu interpretiert werden$t$, true, 1),
    (v_q, $t$Gegenstände, die in Museen ausgestellt sind$t$, false, 2),
    (v_q, $t$biologische Lebewesen$t$, false, 3),
    (v_q, $t$gesetzlich geschützte Kunstwerke$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wähle die passende Passivform: 'Die Märchen ___ zu Beginn des 19. Jahrhunderts veröffentlicht.'$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$wurden$t$, true, 1),
    (v_q, $t$waren$t$, false, 2),
    (v_q, $t$sind$t$, false, 3),
    (v_q, $t$haben$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Ergänze den Relativsatz: 'Die Sammlung, ___ Titel 'Kinder- und Hausmärchen' lautet, wurde mehrfach bearbeitet.'$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$deren$t$, true, 1),
    (v_q, $t$die$t$, false, 2),
    (v_q, $t$der$t$, false, 3),
    (v_q, $t$denen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welcher Ausdruck steht im Konjunktiv I der indirekten Rede (wie im Text): 'Es wird deutlich, dass die Texte über mehrere Auflagen hinweg bearbeitet ___.'$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$worden seien$t$, true, 1),
    (v_q, $t$worden sind$t$, false, 2),
    (v_q, $t$wurden$t$, false, 3),
    (v_q, $t$werden$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$Schreiben Sie einen argumentativen Absatz (6–9 Sätze): Ist es problematisch, dass die Grimm'schen Märchen im Laufe der Zeit verändert und für unterschiedliche Zwecke neu interpretiert wurden? Begründen Sie Ihre Meinung.$t$, 1, 'normal', 'production', $t$Meiner Meinung nach ist die fortlaufende Veränderung und Neuinterpretation der Grimm'schen Märchen kein Problem, sondern Teil ihrer kulturellen Lebendigkeit. Zunächst zeigt der Text, dass die Brüder Grimm selbst die Texte über mehrere Auflagen hinweg bearbeitet haben, um sie den moralischen Vorstellungen ihrer Zeit anzupassen, was beweist, dass es nie eine feststehende Urversion gab. Zudem ermöglicht die ständige Neuinterpretation, etwa aus feministischer Perspektive, dass die Geschichten für jede Generation relevant bleiben und aktuelle gesellschaftliche Fragen widerspiegeln. Andererseits birgt die politische Instrumentalisierung von Märchen, wie im zwanzigsten Jahrhundert geschehen, durchaus Gefahren, da Texte für ideologische Zwecke missbraucht werden können. Deshalb ist es wichtig, sich der jeweiligen historischen und politischen Absichten hinter einer Interpretation bewusst zu sein. Insgesamt überwiegt für mich jedoch der positive Aspekt: Gerade weil Märchen sich wandeln können, bleiben sie ein lebendiger Teil unserer Kultur und keine erstarrte historische Reliquie.$t$);

END $block$;

-- 8. Streit um ein Erbe aus Glas und Stahl
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary) VALUES (
    'B2',
    $t$Streit um ein Erbe aus Glas und Stahl$t$,
    $t$In einer mitteldeutschen Kleinstadt wird seit Monaten über die Zukunft eines ehemaligen Fabrikgebäudes aus den 1920er Jahren gestritten, das im Stil des Bauhauses errichtet wurde. Während die einen für eine originalgetreue Restaurierung plädieren, sprechen sich andere für eine grundlegende Modernisierung aus.

Von Denkmalschützern wird betont, dass das Gebäude als eines der letzten erhaltenen Zeugnisse der Bauhaus-Architektur in der Region gelte. Die klaren Linien, die funktionale Gliederung der Räume und die für ihre Zeit revolutionäre Verwendung von Glasfassaden würden ein bedeutendes kulturelles Erbe darstellen. Eine Restaurierung im Originalzustand, so wird argumentiert, sei die einzige Möglichkeit, diese historische Aussagekraft zu bewahren. Jede spätere Veränderung drohe, die ursprüngliche Idee der Architekten zu verfälschen.

Von städtischen Vertretern wird hingegen eingewendet, dass ein Museum, das lediglich vergangene Zustände konserviere, dem Gebäude nicht gerecht werde. Stattdessen solle es energetisch saniert und für zeitgenössische Nutzungen – etwa als Kulturzentrum oder Coworking-Space – geöffnet werden. Nur so könne sichergestellt werden, dass das Gebäude auch künftigen Generationen einen praktischen Nutzen biete, anstatt lediglich als musealer Ort betrachtet zu werden.

In der öffentlichen Debatte wird zunehmend deutlich, dass es sich hierbei nicht allein um eine technische, sondern um eine grundsätzliche Frage handelt: Soll historische Architektur als unveränderliches Denkmal geschützt oder als lebendiger, sich wandelnder Raum verstanden werden? Beide Positionen berufen sich dabei paradoxerweise auf den Bauhaus-Gedanken selbst, der stets Funktionalität und Anpassungsfähigkeit betont hatte.

Am Ende wird ein Kompromiss diskutiert, bei dem die Fassade denkmalgerecht erhalten, das Innere jedoch behutsam an heutige Bedürfnisse angepasst werden soll. Ob dieser Mittelweg beiden Ansprüchen gerecht werden kann, bleibt jedoch umstritten.$t$,
    $t$Dans une petite ville d'Allemagne centrale, on se dispute depuis des mois sur l'avenir d'un ancien bâtiment d'usine des années 1920, construit dans le style Bauhaus. Tandis que les uns plaident pour une restauration fidèle à l'original, d'autres se prononcent pour une modernisation en profondeur.

Les défenseurs du patrimoine soulignent que le bâtiment est l'un des derniers témoignages conservés de l'architecture Bauhaus dans la région. Les lignes claires, l'agencement fonctionnel des pièces et l'usage, révolutionnaire pour l'époque, de façades vitrées constitueraient un patrimoine culturel important. Une restauration dans l'état d'origine, argumente-t-on, serait la seule manière de préserver cette portée historique. Toute modification ultérieure risquerait de dénaturer l'idée originelle des architectes.

Les représentants municipaux objectent en revanche qu'un musée qui se contenterait de conserver des états passés ne rendrait pas justice au bâtiment. Il devrait plutôt être rénové sur le plan énergétique et ouvert à des usages contemporains — par exemple comme centre culturel ou espace de coworking. Ce n'est qu'ainsi, selon eux, que l'on pourrait garantir que le bâtiment offre aussi une utilité pratique aux générations futures, au lieu d'être seulement considéré comme un lieu muséal.

Dans le débat public, il apparaît de plus en plus clairement qu'il ne s'agit pas seulement d'une question technique, mais d'une question de fond : l'architecture historique doit-elle être protégée comme un monument immuable, ou comprise comme un espace vivant et évolutif ? Les deux positions se réclament paradoxalement de l'idée même du Bauhaus, qui a toujours mis l'accent sur la fonctionnalité et la capacité d'adaptation.

À la fin, un compromis est discuté, selon lequel la façade serait préservée conformément aux exigences patrimoniales, tandis que l'intérieur serait adapté avec précaution aux besoins actuels. Reste discutable de savoir si ce moyen terme peut répondre aux deux exigences.$t$,
    $t${"In":"Dans","einer":"une","mitteldeutschen":"d'Allemagne centrale","Kleinstadt":"petite ville","wird":"est/on","seit":"depuis","Monaten":"mois","über":"sur","die":"l'","Zukunft":"avenir","eines":"d'un","ehemaligen":"ancien","Fabrikgebäudes":"bâtiment d'usine","aus":"des","den":"les","er":"les années","Jahren":"années","gestritten":"on se dispute","das":"qui","im":"dans le","Stil":"style","des":"du","Bauhauses":"Bauhaus","errichtet":"construit","wurde":"fut","Während":"Tandis que","einen":"les uns","für":"pour","eine":"une","originalgetreue":"fidèle à l'original","Restaurierung":"restauration","plädieren":"plaident","sprechen":"se prononcent","sich":"se","andere":"d'autres","grundlegende":"en profondeur","Modernisierung":"modernisation","Von":"Par","Denkmalschützern":"défenseurs du patrimoine","betont":"souligné","dass":"que","Gebäude":"bâtiment","als":"comme","der":"l'","letzten":"derniers","erhaltenen":"conservés","Zeugnisse":"témoignages","Bauhaus-Architektur":"architecture Bauhaus","in":"dans","Region":"région","gelte":"soit considéré","Die":"Les","klaren":"claires","Linien":"lignes","funktionale":"fonctionnel","Gliederung":"agencement","Räume":"pièces","und":"et","ihre":"leur","Zeit":"époque","revolutionäre":"révolutionnaire","Verwendung":"usage","von":"de","Glasfassaden":"façades vitrées","würden":"constitueraient","ein":"un","bedeutendes":"important","kulturelles":"culturel","Erbe":"patrimoine","darstellen":"constituer","Eine":"Une","Originalzustand":"état d'origine","so":"ainsi","argumentiert":"argumente-t-on","sei":"serait","einzige":"seule","Möglichkeit":"manière","diese":"cette","historische":"historique","Aussagekraft":"portée","zu":"de","bewahren":"préserver","Jede":"Toute","spätere":"ultérieure","Veränderung":"modification","drohe":"risquerait","ursprüngliche":"originelle","Idee":"idée","Architekten":"architectes","verfälschen":"dénaturer","städtischen":"municipaux","Vertretern":"représentants","hingegen":"en revanche","eingewendet":"objecté","Museum":"musée","lediglich":"seulement","vergangene":"passés","Zustände":"états","konserviere":"conserverait","dem":"au","nicht":"ne pas","gerecht":"justice","werde":"rendrait","Stattdessen":"Plutôt","solle":"devrait","es":"il","energetisch":"sur le plan énergétique","saniert":"rénové","zeitgenössische":"contemporains","Nutzungen":"usages","etwa":"par exemple","Kulturzentrum":"centre culturel","oder":"ou","Coworking-Space":"espace de coworking","geöffnet":"ouvert","werden":"être","Nur":"Seulement","könne":"pourrait","sichergestellt":"garanti","auch":"aussi","künftigen":"futures","Generationen":"générations","praktischen":"pratique","Nutzen":"utilité","biete":"offre","anstatt":"au lieu de","musealer":"muséal","Ort":"lieu","betrachtet":"considéré","öffentlichen":"public","Debatte":"débat","zunehmend":"de plus en plus","deutlich":"clairement","hierbei":"ici","allein":"seulement","um":"d'","technische":"technique","sondern":"mais","grundsätzliche":"de fond","Frage":"question","handelt":"s'agit","Soll":"Doit","Architektur":"architecture","unveränderliches":"immuable","Denkmal":"monument","geschützt":"protégée","lebendiger":"vivant","wandelnder":"évolutif","Raum":"espace","Beide":"Les deux","Positionen":"positions","berufen":"se réclament","dabei":"ce faisant","paradoxerweise":"paradoxalement","auf":"de","Bauhaus-Gedanken":"idée du Bauhaus","selbst":"même","stets":"toujours","Funktionalität":"fonctionnalité","Anpassungsfähigkeit":"capacité d'adaptation","hatte":"avait","Am":"À la","Ende":"fin","Kompromiss":"compromis","diskutiert":"discuté","bei":"où","Fassade":"façade","denkmalgerecht":"conformément aux exigences patrimoniales","erhalten":"préservée","Innere":"intérieur","jedoch":"cependant","behutsam":"avec précaution","an":"aux","heutige":"actuels","Bedürfnisse":"besoins","angepasst":"adapté","Ob":"Si","dieser":"ce","Mittelweg":"moyen terme","beiden":"aux deux","Ansprüchen":"exigences","kann":"peut","bleibt":"reste","umstritten":"discutable","soll":"doit","verstanden":"compris"}$t$::jsonb
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Worüber wird in der Kleinstadt gestritten?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Über die Zukunft eines ehemaligen Fabrikgebäudes im Bauhausstil$t$, true, 1),
    (v_q, $t$Über den Bau eines neuen Rathauses$t$, false, 2),
    (v_q, $t$Über die Schließung einer Schule$t$, false, 3),
    (v_q, $t$Über die Sanierung einer Kirche$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche zwei Positionen stehen sich in der Debatte gegenüber?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Originalgetreue Restaurierung gegen grundlegende Modernisierung$t$, true, 1),
    (v_q, $t$Abriss gegen Neubau$t$, false, 2),
    (v_q, $t$Privatisierung gegen staatliche Übernahme$t$, false, 3),
    (v_q, $t$Museum gegen Wohnbebauung$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was wird im Text als paradox an der Debatte beschrieben?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Beide Seiten berufen sich auf den Bauhaus-Gedanken, obwohl sie unterschiedliche Schlüsse daraus ziehen$t$, true, 1),
    (v_q, $t$Keine der beiden Seiten kennt die Geschichte des Gebäudes$t$, false, 2),
    (v_q, $t$Die Denkmalschützer und die Stadtvertreter vertreten in Wirklichkeit dieselbe Position$t$, false, 3),
    (v_q, $t$Die Debatte wird ausschließlich von Architekten geführt, die das Gebäude nie besichtigt haben$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was wird von den Denkmalschützern hervorgehoben?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Die klaren Linien und die revolutionäre Verwendung von Glasfassaden$t$, true, 1),
    (v_q, $t$Die Größe des Gebäudes$t$, false, 2),
    (v_q, $t$Der wirtschaftliche Wert des Grundstücks$t$, false, 3),
    (v_q, $t$Die Lage des Gebäudes im Stadtzentrum$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welches Argument bringen die Denkmalschützer für eine originalgetreue Restaurierung vor?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Nur so könne die historische Aussagekraft des Gebäudes bewahrt werden$t$, true, 1),
    (v_q, $t$Eine Restaurierung sei günstiger als eine Modernisierung$t$, false, 2),
    (v_q, $t$Das Gebäude stehe unter internationalem Schutz$t$, false, 3),
    (v_q, $t$Die Modernisierung sei technisch nicht umsetzbar$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie argumentieren die städtischen Vertreter gegen die Position der Denkmalschützer?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Ein rein konserviertes Gebäude werde dessen ursprünglichem, funktionalem Anspruch nicht gerecht$t$, true, 1),
    (v_q, $t$Sie bestreiten den historischen Wert des Gebäudes vollständig$t$, false, 2),
    (v_q, $t$Sie fordern den vollständigen Abriss des Gebäudes$t$, false, 3),
    (v_q, $t$Sie sehen keinen Unterschied zwischen Restaurierung und Modernisierung$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welcher Kompromiss wird am Ende diskutiert?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Die Fassade soll erhalten, das Innere modernisiert werden$t$, true, 1),
    (v_q, $t$Das gesamte Gebäude soll abgerissen werden$t$, false, 2),
    (v_q, $t$Das Gebäude soll komplett unverändert bleiben$t$, false, 3),
    (v_q, $t$Nur das Innere soll erhalten, die Fassade erneuert werden$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie wird der vorgeschlagene Kompromiss im Text bewertet?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Ob er beiden Ansprüchen gerecht werden kann, bleibt umstritten$t$, true, 1),
    (v_q, $t$Er wird von allen Beteiligten einstimmig begrüßt$t$, false, 2),
    (v_q, $t$Er wird als eindeutig gescheitert beschrieben$t$, false, 3),
    (v_q, $t$Er löst den Konflikt vollständig auf$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche grundsätzliche Frage steht laut Text hinter dem konkreten Streitfall?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Ob historische Architektur als unveränderliches Denkmal oder als wandelbarer, lebendiger Raum verstanden werden soll$t$, true, 1),
    (v_q, $t$Ob Bauhaus-Architektur überhaupt als schützenswert gilt$t$, false, 2),
    (v_q, $t$Ob die Stadt genügend finanzielle Mittel für eine Sanierung besitzt$t$, false, 3),
    (v_q, $t$Ob das Gebäude touristisch vermarktet werden kann$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'die Restaurierung' im Text?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$die Wiederherstellung des ursprünglichen Zustands eines Gebäudes$t$, true, 1),
    (v_q, $t$der Abriss eines Gebäudes$t$, false, 2),
    (v_q, $t$der Verkauf eines Grundstücks$t$, false, 3),
    (v_q, $t$die Vermietung von Räumen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'die Fassade denkmalgerecht erhalten'?$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$die Außenfront eines Gebäudes so bewahren, dass sie den Denkmalschutzkriterien entspricht$t$, true, 1),
    (v_q, $t$die Fassade komplett neu bauen$t$, false, 2),
    (v_q, $t$die Fassade abreißen und modernisieren$t$, false, 3),
    (v_q, $t$die Fassade verkleinern$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet der Ausdruck 'die ursprüngliche Idee der Architekten zu verfälschen'?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$die ursprüngliche architektonische Absicht durch Veränderungen zu entstellen$t$, true, 1),
    (v_q, $t$die Baupläne offiziell zu genehmigen$t$, false, 2),
    (v_q, $t$die architektonische Idee wissenschaftlich zu bestätigen$t$, false, 3),
    (v_q, $t$das Gebäude finanziell zu bewerten$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wähle die passende Passivform: 'Über die Zukunft des Gebäudes ___ seit Monaten gestritten.'$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$wird$t$, true, 1),
    (v_q, $t$ist$t$, false, 2),
    (v_q, $t$hat$t$, false, 3),
    (v_q, $t$wurde sein$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Ergänze den Relativsatz: 'Das Fabrikgebäude, ___ im Stil des Bauhauses errichtet wurde, steht seit Jahrzehnten leer.'$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$das$t$, true, 1),
    (v_q, $t$die$t$, false, 2),
    (v_q, $t$dem$t$, false, 3),
    (v_q, $t$dessen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Form entspricht dem Konjunktiv I der indirekten Rede: 'Von Denkmalschützern wird betont, dass das Gebäude ein bedeutendes Erbe ___.'$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$darstelle$t$, true, 1),
    (v_q, $t$darstellt$t$, false, 2),
    (v_q, $t$dargestellt hat$t$, false, 3),
    (v_q, $t$darzustellen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$Schreiben Sie einen argumentativen Absatz (6–9 Sätze): Sollten historische Gebäude originalgetreu restauriert oder für moderne Bedürfnisse umgebaut werden? Nehmen Sie Stellung.$t$, 1, 'normal', 'production', $t$Meiner Meinung nach sollte man historische Gebäude nicht einseitig behandeln, sondern einen ausgewogenen Kompromiss zwischen Bewahrung und Modernisierung anstreben. Einerseits haben Bauwerke wie das im Text beschriebene Bauhaus-Gebäude einen unschätzbaren kulturellen und historischen Wert, den eine originalgetreue Restaurierung am besten bewahren kann. Andererseits nützt ein Gebäude, das lediglich als Museum konserviert wird, der Gesellschaft wenig, wenn es keinen praktischen Nutzen mehr bietet. Aus diesem Grund erscheint mir der im Text vorgeschlagene Mittelweg sinnvoll, bei dem die Fassade denkmalgerecht erhalten, das Innere jedoch modernen Anforderungen angepasst wird. So bleibt die historische Aussagekraft des Gebäudes sichtbar, während es gleichzeitig weiterhin genutzt werden kann, etwa als Kulturzentrum. Zudem passt ein solcher pragmatischer Umgang sogar zum ursprünglichen Bauhaus-Gedanken, der stets Funktionalität betonte. Deshalb halte ich einen durchdachten Kompromiss für die beste Lösung im Umgang mit historischer Architektur.$t$);

END $block$;

-- 9. Erinnerungen an eine geteilte Nacht
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary) VALUES (
    'B2',
    $t$Erinnerungen an eine geteilte Nacht$t$,
    $t$Für ein Oral-History-Projekt werden Menschen befragt, die den Fall der Berliner Mauer im November 1989 persönlich erlebt haben. Schnell wird deutlich, dass sich die Erinnerungen der Befragten trotz desselben historischen Ereignisses erheblich voneinander unterscheiden.

Von einer Frau, die damals in Ost-Berlin lebte, wird der Abend vor allem als Moment der Verwirrung beschrieben. Nachrichten über die Grenzöffnung seien zunächst kaum geglaubt worden, und erst der Anblick der Menschenmengen an den Grenzübergängen habe die Realität begreifbar gemacht. Von einem Mann aus West-Berlin hingegen wird derselbe Abend als Fest der Zufälligkeit erinnert: Er sei eher aus Neugier zur Mauer gegangen, ohne die historische Tragweite des Geschehens sofort zu erfassen.

Ein weiterer Zeitzeuge, der als Grenzsoldat eingesetzt war, berichtet von einem gänzlich anderen Erleben: von Verunsicherung angesichts widersprüchlicher Befehle und von der Angst, für eine falsche Entscheidung verantwortlich gemacht zu werden. Diese Perspektive werde in öffentlichen Erzählungen über den Mauerfall selten berücksichtigt, obwohl sie zum Verständnis der damaligen Situation wesentlich beitrage.

Im Rahmen des Projekts wird die These entwickelt, dass kollektive Erinnerung nicht als einheitliches Bild verstanden werden könne, sondern stets aus einer Vielzahl individueller, teils widersprüchlicher Erfahrungen zusammengesetzt sei. Historische Ereignisse würden zudem im Rückblick oft vereinfacht und mit Bedeutungen versehen, die im Moment des Geschehens selbst noch nicht vorhanden gewesen seien.

Die Verantwortlichen des Projekts betonen abschließend, dass es nicht Ziel sei, eine einzige "richtige" Version der Ereignisse zu rekonstruieren. Vielmehr solle die Vielstimmigkeit der Erinnerungen sichtbar gemacht werden, da gerade in dieser Vielfalt ein tieferes Verständnis der deutschen Teilung und ihrer Überwindung liege.$t$,
    $t$Pour un projet d'histoire orale, on interroge des personnes ayant vécu personnellement la chute du mur de Berlin en novembre 1989. Il apparaît rapidement que, malgré le même événement historique, les souvenirs des personnes interrogées diffèrent considérablement les uns des autres.

Une femme qui vivait alors à Berlin-Est décrit cette soirée avant tout comme un moment de confusion. Les nouvelles concernant l'ouverture de la frontière n'auraient d'abord guère été crues, et ce n'est que la vue des foules aux points de passage qui aurait rendu la réalité tangible. Un homme de Berlin-Ouest, en revanche, se souvient de cette même soirée comme d'une fête née du hasard : il serait plutôt allé au mur par curiosité, sans saisir immédiatement la portée historique des événements.

Un autre témoin de l'époque, qui servait comme garde-frontière, raconte une expérience totalement différente : celle du désarroi face à des ordres contradictoires, et de la peur d'être tenu responsable d'une mauvaise décision. Cette perspective serait rarement prise en compte dans les récits publics sur la chute du mur, bien qu'elle contribue de manière essentielle à la compréhension de la situation de l'époque.

Dans le cadre du projet, on développe la thèse selon laquelle la mémoire collective ne peut pas être comprise comme une image uniforme, mais est toujours composée d'une multitude d'expériences individuelles, parfois contradictoires. Les événements historiques seraient en outre souvent simplifiés a posteriori et dotés de significations qui n'existaient pas encore au moment même des faits.

Les responsables du projet soulignent pour finir que le but n'est pas de reconstituer une unique version « correcte » des événements. Il s'agit plutôt de rendre visible la pluralité des souvenirs, car c'est précisément dans cette diversité que réside une compréhension plus profonde de la division allemande et de son dépassement.$t$,
    $t${"Für":"Pour","ein":"un","Oral-History-Projekt":"projet d'histoire orale","werden":"sont","Menschen":"personnes","befragt":"interrogées","die":"qui","den":"le","Fall":"chute","der":"du","Berliner":"de Berlin","Mauer":"mur","im":"en","November":"novembre","persönlich":"personnellement","erlebt":"vécu","haben":"ont","Schnell":"Rapidement","wird":"il devient","deutlich":"clair","dass":"que","sich":"se","Erinnerungen":"souvenirs","Befragten":"personnes interrogées","trotz":"malgré","desselben":"du même","historischen":"historique","Ereignisses":"événement","erheblich":"considérablement","voneinander":"les uns des autres","unterscheiden":"diffèrent","Von":"Par","einer":"une","Frau":"femme","damals":"alors","in":"à","Ost-Berlin":"Berlin-Est","lebte":"vivait","Abend":"soirée","vor allem":"avant tout","allem":"tout","als":"comme","Moment":"moment","Verwirrung":"confusion","beschrieben":"décrite","Nachrichten":"nouvelles","über":"concernant","Grenzöffnung":"ouverture de la frontière","seien":"auraient été","zunächst":"d'abord","kaum":"guère","geglaubt":"crues","worden":"été","und":"et","erst":"seulement","Anblick":"vue","Menschenmengen":"foules","an":"aux","Grenzübergängen":"points de passage","habe":"aurait","Realität":"réalité","begreifbar":"tangible","gemacht":"rendue","einem":"un","Mann":"homme","aus":"de","West-Berlin":"Berlin-Ouest","hingegen":"en revanche","derselbe":"cette même","Fest":"fête","Zufälligkeit":"hasard","erinnert":"on se souvient","Er":"Il","sei":"soit","eher":"plutôt","Neugier":"curiosité","zur":"au","gegangen":"allé","ohne":"sans","Tragweite":"portée","des":"des","Geschehens":"événements","sofort":"immédiatement","zu":"à","erfassen":"saisir","Ein":"Un","weiterer":"autre","Zeitzeuge":"témoin de l'époque","Grenzsoldat":"garde-frontière","eingesetzt":"en poste","war":"était","berichtet":"raconte","von":"de","gänzlich":"totalement","anderen":"différente","Erleben":"expérience","Verunsicherung":"désarroi","angesichts":"face à","widersprüchlicher":"contradictoires","Befehle":"ordres","Angst":"peur","für":"de","eine":"une","falsche":"mauvaise","Entscheidung":"décision","verantwortlich":"responsable","Diese":"Cette","Perspektive":"perspective","werde":"serait","öffentlichen":"publics","Erzählungen":"récits","Mauerfall":"chute du mur","selten":"rarement","berücksichtigt":"prise en compte","obwohl":"bien que","sie":"elle","zum":"à la","Verständnis":"compréhension","damaligen":"de l'époque","Situation":"situation","wesentlich":"de manière essentielle","beitrage":"contribue","Im":"Dans le","Rahmen":"cadre","Projekts":"projet","These":"thèse","entwickelt":"développée","kollektive":"collective","Erinnerung":"mémoire","nicht":"ne pas","einheitliches":"uniforme","Bild":"image","verstanden":"comprise","könne":"puisse","sondern":"mais","stets":"toujours","Vielzahl":"multitude","individueller":"individuelles","teils":"parfois","Erfahrungen":"expériences","zusammengesetzt":"composée","Historische":"Historiques","Ereignisse":"événements","würden":"seraient","zudem":"en outre","Rückblick":"rétrospectivement","oft":"souvent","vereinfacht":"simplifiés","mit":"de","Bedeutungen":"significations","versehen":"dotés","selbst":"même","noch":"encore","vorhanden":"présentes","gewesen":"été","Die":"Les","Verantwortlichen":"responsables","betonen":"soulignent","abschließend":"pour finir","es":"ce","Ziel":"but","einzige":"unique","richtige":"correcte","Version":"version","rekonstruieren":"reconstituer","Vielmehr":"Plutôt","solle":"devrait","Vielstimmigkeit":"pluralité","sichtbar":"visible","da":"car","gerade":"précisément","dieser":"cette","Vielfalt":"diversité","tieferes":"plus profonde","deutschen":"allemande","Teilung":"division","ihrer":"de son","Überwindung":"dépassement","liege":"réside","historische":"historiques","vor":"avant"}$t$::jsonb
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was ist das Ziel des Oral-History-Projekts?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Menschen zu befragen, die den Mauerfall persönlich erlebt haben$t$, true, 1),
    (v_q, $t$Ein Denkmal für die Opfer der Mauer zu errichten$t$, false, 2),
    (v_q, $t$Eine neue Ausstellung im Reichstag zu eröffnen$t$, false, 3),
    (v_q, $t$Historische Dokumente zu digitalisieren$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was wird bei den Befragungen schnell deutlich?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Die Erinnerungen der Befragten unterscheiden sich trotz desselben Ereignisses stark$t$, true, 1),
    (v_q, $t$Alle Befragten erinnern sich identisch an das Ereignis$t$, false, 2),
    (v_q, $t$Die meisten Befragten wollen sich nicht erinnern$t$, false, 3),
    (v_q, $t$Nur wenige Menschen erklären sich zu einem Interview bereit$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche grundsätzliche These wird im Rahmen des Projekts entwickelt?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Kollektive Erinnerung setze sich aus einer Vielzahl individueller, teils widersprüchlicher Erfahrungen zusammen$t$, true, 1),
    (v_q, $t$Kollektive Erinnerung sei stets objektiv und einheitlich$t$, false, 2),
    (v_q, $t$Nur offizielle historische Quellen könnten als zuverlässig gelten$t$, false, 3),
    (v_q, $t$Persönliche Erinnerungen seien für die Geschichtsschreibung irrelevant$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie beschreibt die Frau aus Ost-Berlin den Abend des Mauerfalls?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Als Moment der Verwirrung$t$, true, 1),
    (v_q, $t$Als geplantes Fest$t$, false, 2),
    (v_q, $t$Als völlig unbedeutendes Ereignis$t$, false, 3),
    (v_q, $t$Als Tag intensiver Vorbereitung$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Worin unterscheidet sich die Erinnerung des Mannes aus West-Berlin von der der Frau aus Ost-Berlin?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er erinnert sich eher an ein zufälliges, neugierig motiviertes Erlebnis als an einen Moment der Verwirrung$t$, true, 1),
    (v_q, $t$Beide erinnern sich identisch an dieselben Details$t$, false, 2),
    (v_q, $t$Er erinnert sich überhaupt nicht an das Ereignis$t$, false, 3),
    (v_q, $t$Er war zum Zeitpunkt des Mauerfalls nicht in Berlin$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum wird die Perspektive des ehemaligen Grenzsoldaten im Text als besonders bedeutsam hervorgehoben?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Weil sie in öffentlichen Erzählungen selten berücksichtigt wird, obwohl sie zum Verständnis der Situation beiträgt$t$, true, 1),
    (v_q, $t$Weil sie die einzige zuverlässige Quelle über den Mauerfall darstellt$t$, false, 2),
    (v_q, $t$Weil sie im Widerspruch zu allen anderen Zeugenaussagen steht$t$, false, 3),
    (v_q, $t$Weil sie beweist, dass der Mauerfall geplant gewesen sei$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was betonen die Verantwortlichen des Projekts am Ende?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Es solle keine einzige "richtige" Version der Ereignisse rekonstruiert werden$t$, true, 1),
    (v_q, $t$Es solle eine offizielle Version der Geschichte festgelegt werden$t$, false, 2),
    (v_q, $t$Nur die Aussagen der Ost-Berliner Zeitzeugen seien relevant$t$, false, 3),
    (v_q, $t$Das Projekt solle beendet werden, da keine Einigung möglich sei$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum wird die Vielstimmigkeit der Erinnerungen im Text als wertvoll beschrieben?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Weil sie zu einem tieferen Verständnis der deutschen Teilung und ihrer Überwindung beiträgt$t$, true, 1),
    (v_q, $t$Weil sie die Arbeit der Historiker erleichtert$t$, false, 2),
    (v_q, $t$Weil sie zeigt, dass die Mehrheit der Zeitzeugen sich irrt$t$, false, 3),
    (v_q, $t$Weil sie den Mauerfall als weniger bedeutsames Ereignis relativiert$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche implizite Kritik an traditioneller Geschichtsschreibung lässt sich aus dem Text ableiten?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Historische Ereignisse würden im Rückblick oft vereinfacht und mit nachträglichen Bedeutungen versehen$t$, true, 1),
    (v_q, $t$Traditionelle Geschichtsschreibung berücksichtige zu viele individuelle Perspektiven$t$, false, 2),
    (v_q, $t$Historiker hätten kein Interesse an persönlichen Erinnerungen$t$, false, 3),
    (v_q, $t$Die deutsche Geschichtsschreibung ignoriere den Mauerfall vollständig$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'der Zeitzeuge' im Text?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$eine Person, die ein historisches Ereignis selbst erlebt hat$t$, true, 1),
    (v_q, $t$ein Historiker im Archiv$t$, false, 2),
    (v_q, $t$ein Journalist bei einer Zeitung$t$, false, 3),
    (v_q, $t$ein Museumsdirektor$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'die Vielstimmigkeit der Erinnerungen'?$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$die Vielfalt unterschiedlicher, teils widersprüchlicher Perspektiven$t$, true, 1),
    (v_q, $t$die Lautstärke einer Debatte$t$, false, 2),
    (v_q, $t$die Anzahl der Zeugen bei Gericht$t$, false, 3),
    (v_q, $t$die musikalische Vertonung von Erinnerungen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'im Rückblick vereinfacht und mit Bedeutungen versehen' im Kontext historischer Erinnerung?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$nachträglich vereinfacht dargestellt und mit Interpretationen aufgeladen, die im Moment selbst noch fehlten$t$, true, 1),
    (v_q, $t$exakt und unverändert dokumentiert$t$, false, 2),
    (v_q, $t$offiziell von Historikern zensiert$t$, false, 3),
    (v_q, $t$in mehrere Sprachen übersetzt$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wähle die passende Passivform: 'Menschen ___ für das Projekt befragt.'$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$werden$t$, true, 1),
    (v_q, $t$sind$t$, false, 2),
    (v_q, $t$haben$t$, false, 3),
    (v_q, $t$wurden sein$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Ergänze den Relativsatz: 'Ein Grenzsoldat, ___ von Verunsicherung berichtet, gibt eine seltene Perspektive wieder.'$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$der$t$, true, 1),
    (v_q, $t$die$t$, false, 2),
    (v_q, $t$dem$t$, false, 3),
    (v_q, $t$dessen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Form entspricht dem Konjunktiv I der indirekten Rede: 'Es wird die These entwickelt, dass kollektive Erinnerung nicht einheitlich ___ ___.'$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$verstanden werden könne$t$, true, 1),
    (v_q, $t$verstanden wird$t$, false, 2),
    (v_q, $t$verstanden werden kann$t$, false, 3),
    (v_q, $t$verstehen könnte$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$Schreiben Sie einen argumentativen Absatz (6–9 Sätze): Warum ist es wichtig, mehrere unterschiedliche und teils widersprüchliche Zeitzeugenberichte zu einem historischen Ereignis zu sammeln, statt sich auf eine offizielle Version zu verlassen?$t$, 1, 'normal', 'production', $t$Meiner Meinung nach ist es unverzichtbar, mehrere Zeitzeugenperspektiven zu sammeln, um ein historisches Ereignis wirklich zu verstehen. Erstens zeigt der Text am Beispiel des Mauerfalls, dass dasselbe Ereignis von verschiedenen Menschen völlig unterschiedlich erlebt und erinnert wurde, je nachdem, ob sie in Ost- oder Westberlin lebten oder als Soldaten eingesetzt waren. Zweitens werden in offiziellen Geschichtsdarstellungen oft bestimmte Perspektiven, wie die der einfachen Grenzsoldaten, vernachlässigt, obwohl sie zum Verständnis der Situation wesentlich beitragen. Eine einzige, vereinfachte Version der Geschichte läuft daher Gefahr, wichtige Nuancen und Widersprüche zu verlieren. Zudem entstehen historische Bedeutungen häufig erst im Rückblick, sodass die ursprüngliche Erfahrung der Beteiligten oft komplexer und unsicherer war, als spätere Erzählungen vermuten lassen. Aus diesem Grund halte ich Oral-History-Projekte für äußerst wertvoll, da sie diese Vielstimmigkeit sichtbar machen. Nur durch das Zusammenspiel vieler individueller Stimmen entsteht ein wirklich tiefes Verständnis historischer Ereignisse.$t$);

END $block$;

-- 10. Freiheit innerhalb der Form
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary) VALUES (
    'B2',
    $t$Freiheit innerhalb der Form$t$,
    $t$Ein junger Komponist namens Jonas schreibt an einem Essay über das Werk Johann Sebastian Bachs, insbesondere über dessen kontrapunktische Kompositionstechnik. Ausgangspunkt der Überlegungen ist eine Frage, die ihn seit Beginn seines Studiums beschäftigt: Wie lässt sich innerhalb strenger formaler Regeln überhaupt künstlerische Freiheit entfalten?

In Bachs Fugen, so wird im Essay dargelegt, werde ein Thema nach exakten kontrapunktischen Regeln in verschiedenen Stimmen wiederholt, umgekehrt und miteinander verwoben. Diese Regeln seien keineswegs als Einschränkung, sondern als produktive Struktur zu verstehen, innerhalb derer erst eine außergewöhnliche kompositorische Komplexität möglich werde. Gerade weil die Freiheit der Stimmführung begrenzt gewesen sei, hätten Lösungen gefunden werden müssen, die ohne diese Beschränkung nie entstanden wären.

Jonas zieht daraus eine Parallele zu seiner eigenen künstlerischen Arbeit. Häufig werde angenommen, dass Kreativität vor allem durch Regellosigkeit und uneingeschränkte Möglichkeiten gefördert werde. Am Beispiel Bachs lasse sich jedoch das Gegenteil zeigen: Bewusst gesetzte Grenzen könnten die Vorstellungskraft eher schärfen als behindern, da sie zu unerwarteten Lösungen zwängen, die innerhalb völliger Freiheit möglicherweise nie gesucht worden wären.

Bei einem Gespräch mit seiner Kompositionslehrerin wird diese Beobachtung bestätigt. Es wird darauf hingewiesen, dass auch in anderen Kunstformen – etwa in der Lyrik mit ihren festen Versmaßen oder in der bildenden Kunst mit begrenzten Farbpaletten – vergleichbare Mechanismen zu beobachten seien. Beschränkung werde dabei nicht als Gegensatz zur Freiheit verstanden, sondern als deren notwendige Voraussetzung.

Am Ende seines Essays kommt Jonas zu dem Schluss, dass die eigentliche Herausforderung des künstlerischen Schaffens nicht darin bestehe, Grenzen zu vermeiden, sondern darin, die passenden Grenzen bewusst zu wählen und produktiv zu nutzen.$t$,
    $t$Un jeune compositeur du nom de Jonas écrit un essai sur l'œuvre de Johann Sebastian Bach, en particulier sur sa technique de composition contrapuntique. Le point de départ de sa réflexion est une question qui l'occupe depuis le début de ses études : comment la liberté artistique peut-elle seulement se déployer à l'intérieur de règles formelles strictes ?

Dans les fugues de Bach, expose l'essai, un thème est répété selon des règles contrapuntiques exactes dans différentes voix, inversé et entrelacé. Ces règles ne seraient nullement une contrainte, mais devraient être comprises comme une structure productive à l'intérieur de laquelle seule une complexité de composition extraordinaire devient possible. C'est précisément parce que la liberté de conduite des voix était limitée qu'il a fallu trouver des solutions qui, sans cette contrainte, ne seraient jamais nées.

Jonas en tire un parallèle avec son propre travail artistique. On suppose souvent que la créativité est favorisée surtout par l'absence de règles et des possibilités illimitées. L'exemple de Bach permet cependant de montrer le contraire : des limites posées consciemment peuvent aiguiser l'imagination plutôt que l'entraver, car elles obligent à des solutions inattendues qui, dans une liberté totale, n'auraient peut-être jamais été cherchées.

Lors d'un entretien avec son professeur de composition, cette observation est confirmée. On lui fait remarquer que dans d'autres formes d'art aussi — par exemple dans la poésie avec ses mètres fixes ou dans les arts plastiques avec des palettes de couleurs limitées — des mécanismes comparables peuvent être observés. La contrainte n'y est pas comprise comme l'opposé de la liberté, mais comme sa condition nécessaire.

À la fin de son essai, Jonas conclut que le véritable défi de la création artistique ne consiste pas à éviter les limites, mais à choisir consciemment les limites appropriées et à les exploiter de manière productive.$t$,
    $t${"Ein":"Un","junger":"jeune","Komponist":"compositeur","namens":"du nom de","Jonas":"Jonas","schreibt":"écrit","an":"sur","einem":"un","Essay":"essai","über":"sur","das":"l'","Werk":"œuvre","Johann":"Johann","Sebastian":"Sebastian","Bachs":"de Bach","insbesondere":"en particulier","dessen":"sa","kontrapunktische":"contrapuntique","Kompositionstechnik":"technique de composition","Ausgangspunkt":"point de départ","der":"de la","Überlegungen":"réflexion","ist":"est","eine":"une","Frage":"question","die":"qui","ihn":"l'","seit":"depuis","Beginn":"début","seines":"de ses","Studiums":"études","beschäftigt":"occupe","Wie":"Comment","lässt":"laisse","sich":"se","innerhalb":"à l'intérieur de","strenger":"strictes","formaler":"formelles","Regeln":"règles","überhaupt":"seulement","künstlerische":"artistique","Freiheit":"liberté","entfalten":"déployer","In":"Dans","Fugen":"fugues","so":"ainsi","wird":"est","im":"dans l'","dargelegt":"exposé","werde":"est","ein":"un","Thema":"thème","nach":"selon","exakten":"exactes","kontrapunktischen":"contrapuntiques","in":"dans","verschiedenen":"différentes","Stimmen":"voix","wiederholt":"répété","umgekehrt":"inversé","und":"et","miteinander":"entre elles","verwoben":"entrelacé","Diese":"Ces","seien":"seraient","keineswegs":"nullement","als":"comme","Einschränkung":"contrainte","sondern":"mais","produktive":"productive","Struktur":"structure","zu":"à","verstehen":"comprendre","derer":"de laquelle","erst":"seulement","außergewöhnliche":"extraordinaire","kompositorische":"de composition","Komplexität":"complexité","möglich":"possible","Gerade":"Précisément","weil":"parce que","Stimmführung":"conduite des voix","begrenzt":"limitée","gewesen":"été","sei":"était","hätten":"auraient","Lösungen":"solutions","gefunden":"trouvées","werden":"être","müssen":"dû","ohne":"sans","diese":"cette","Beschränkung":"restriction","nie":"jamais","entstanden":"nées","wären":"seraient","zieht":"tire","daraus":"de cela","Parallele":"parallèle","seiner":"son","eigenen":"propre","künstlerischen":"artistique","Arbeit":"travail","Häufig":"Souvent","angenommen":"supposé","dass":"que","Kreativität":"créativité","vor allem":"surtout","allem":"tout","durch":"par","Regellosigkeit":"absence de règles","uneingeschränkte":"illimitées","Möglichkeiten":"possibilités","gefördert":"favorisée","Am":"Sur l'","Beispiel":"exemple","lasse":"permet","jedoch":"cependant","Gegenteil":"contraire","zeigen":"montrer","Bewusst":"Consciemment","gesetzte":"posées","Grenzen":"limites","könnten":"peuvent","Vorstellungskraft":"imagination","eher":"plutôt","schärfen":"aiguiser","behindern":"entraver","da":"car","sie":"elles","unerwarteten":"inattendues","zwängen":"obligent","völliger":"totale","möglicherweise":"peut-être","gesucht":"cherchées","worden":"été","Bei":"Lors d'","Gespräch":"entretien","mit":"avec","Kompositionslehrerin":"professeur de composition","Beobachtung":"observation","bestätigt":"confirmée","Es":"On","darauf":"cela","hingewiesen":"fait remarquer","auch":"aussi","anderen":"d'autres","Kunstformen":"formes d'art","etwa":"par exemple","Lyrik":"poésie","ihren":"ses","festen":"fixes","Versmaßen":"mètres","oder":"ou","bildenden":"plastiques","Kunst":"arts","begrenzten":"limitées","Farbpaletten":"palettes de couleurs","vergleichbare":"comparables","Mechanismen":"mécanismes","beobachten":"observer","dabei":"ce faisant","Gegensatz":"opposé","zur":"à la","verstanden":"comprise","deren":"sa","notwendige":"nécessaire","Voraussetzung":"condition","Ende":"fin","Essays":"essai","kommt":"arrive","dem":"à la","Schluss":"conclusion","eigentliche":"véritable","Herausforderung":"défi","des":"de la","Schaffens":"création","darin":"en cela","bestehe":"consiste","vermeiden":"éviter","passenden":"appropriées","bewusst":"consciemment","wählen":"choisir","produktiv":"de manière productive","nutzen":"exploiter","nicht":"ne pas","vor":"avant"}$t$::jsonb
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Worüber schreibt Jonas seinen Essay?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Über die kontrapunktische Kompositionstechnik Johann Sebastian Bachs$t$, true, 1),
    (v_q, $t$Über die Biografie Mozarts$t$, false, 2),
    (v_q, $t$Über die Geschichte der elektronischen Musik$t$, false, 3),
    (v_q, $t$Über zeitgenössische Popmusik$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Frage beschäftigt Jonas seit Beginn seines Studiums?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Wie sich innerhalb strenger formaler Regeln künstlerische Freiheit entfalten lässt$t$, true, 1),
    (v_q, $t$Warum Bachs Musik heute weniger beliebt ist als früher$t$, false, 2),
    (v_q, $t$Ob klassische Musik komplett durch moderne Technik ersetzt werden sollte$t$, false, 3),
    (v_q, $t$Wie man am schnellsten ein Musikstudium abschließt$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche grundlegende Annahme über Kreativität wird im Essay infrage gestellt?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Dass Kreativität vor allem durch Regellosigkeit und uneingeschränkte Möglichkeiten gefördert werde$t$, true, 1),
    (v_q, $t$Dass Bachs Musik als besonders komplex gilt$t$, false, 2),
    (v_q, $t$Dass formale Regeln in der Musik überhaupt existieren$t$, false, 3),
    (v_q, $t$Dass Kompositionstechniken sich im Laufe der Geschichte verändert haben$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was geschieht laut Text in Bachs Fugen mit einem musikalischen Thema?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Es wird nach festen Regeln in verschiedenen Stimmen wiederholt und verwoben$t$, true, 1),
    (v_q, $t$Es wird nur einmal gespielt und danach nicht wieder aufgegriffen$t$, false, 2),
    (v_q, $t$Es wird komplett improvisiert$t$, false, 3),
    (v_q, $t$Es wird von einem einzigen Instrument allein gespielt$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie werden die kontrapunktischen Regeln in Bachs Musik im Text bewertet?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Als produktive Struktur, die außergewöhnliche Komplexität erst ermöglicht$t$, true, 1),
    (v_q, $t$Als reine Einschränkung ohne künstlerischen Nutzen$t$, false, 2),
    (v_q, $t$Als veraltetes System ohne heutige Relevanz$t$, false, 3),
    (v_q, $t$Als Zufallsprodukt ohne bewusste Gestaltung$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welchen Zusammenhang stellt der Text zwischen Begrenzung und Lösungsfindung her?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Begrenzte Stimmführung habe zu Lösungen gezwungen, die ohne diese Beschränkung nie entstanden wären$t$, true, 1),
    (v_q, $t$Begrenzungen hätten Bach daran gehindert, komplexe Werke zu schreiben$t$, false, 2),
    (v_q, $t$Ohne jede Regel hätte Bach noch komplexere Werke komponiert$t$, false, 3),
    (v_q, $t$Die Beschränkungen seien Bach von der Kirche auferlegt worden$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche weiteren Kunstformen werden im Gespräch mit der Kompositionslehrerin erwähnt?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Lyrik mit festen Versmaßen und bildende Kunst mit begrenzten Farbpaletten$t$, true, 1),
    (v_q, $t$Theater und Filmkunst$t$, false, 2),
    (v_q, $t$Architektur und Bildhauerei$t$, false, 3),
    (v_q, $t$Tanz und Fotografie$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Zu welchem Schluss kommt Jonas am Ende seines Essays?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Die Herausforderung bestehe darin, passende Grenzen bewusst zu wählen und produktiv zu nutzen$t$, true, 1),
    (v_q, $t$Künstlerische Grenzen sollten grundsätzlich vermieden werden$t$, false, 2),
    (v_q, $t$Nur Musiker könnten von Beschränkungen kreativ profitieren$t$, false, 3),
    (v_q, $t$Bachs Methode sei für heutige Komponisten nicht mehr anwendbar$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie lässt sich die im Essay entwickelte Sichtweise auf das Verhältnis von Freiheit und Beschränkung zusammenfassen?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Beschränkung wird nicht als Gegensatz zur Freiheit, sondern als deren notwendige Voraussetzung verstanden$t$, true, 1),
    (v_q, $t$Freiheit und Beschränkung schließen sich in der Kunst grundsätzlich gegenseitig aus$t$, false, 2),
    (v_q, $t$Nur vollständige Freiheit ermögliche wahre künstlerische Kreativität$t$, false, 3),
    (v_q, $t$Beschränkungen seien in der Musik wichtiger als in anderen Künsten$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'die Beschränkung' im Text?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$die Begrenzung oder Einschränkung von Möglichkeiten$t$, true, 1),
    (v_q, $t$die künstlerische Freiheit$t$, false, 2),
    (v_q, $t$die musikalische Improvisation$t$, false, 3),
    (v_q, $t$der finanzielle Erfolg$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'die Vorstellungskraft schärfen' im Kontext des Essays?$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$die Fantasie und Kreativität steigern und verfeinern$t$, true, 1),
    (v_q, $t$die Vorstellungskraft verringern$t$, false, 2),
    (v_q, $t$die Konzentration ablenken$t$, false, 3),
    (v_q, $t$die Regeln vereinfachen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'produktive Struktur' im Zusammenhang mit Bachs kontrapunktischen Regeln?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$ein Regelwerk, das kreative Lösungen erst ermöglicht, statt sie zu verhindern$t$, true, 1),
    (v_q, $t$eine wirtschaftlich profitable Organisation$t$, false, 2),
    (v_q, $t$eine wissenschaftliche Beweisführung$t$, false, 3),
    (v_q, $t$eine musikalische Improvisationstechnik$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wähle die passende Konjunktiv-II-Form: 'Ohne Regeln ___ Bach vielleicht nie so kreative Lösungen gefunden.'$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$hätte$t$, true, 1),
    (v_q, $t$wäre$t$, false, 2),
    (v_q, $t$habe$t$, false, 3),
    (v_q, $t$würde$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Ergänze den Relativsatz: 'Jonas schreibt einen Essay, ___ Thema die künstlerische Freiheit ist.'$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$dessen$t$, true, 1),
    (v_q, $t$der$t$, false, 2),
    (v_q, $t$die$t$, false, 3),
    (v_q, $t$dem$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Form entspricht dem Konjunktiv I der indirekten Rede: 'Es wird darauf hingewiesen, dass Beschränkung nicht als Gegensatz zur Freiheit verstanden ___.'$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$werde$t$, true, 1),
    (v_q, $t$wird$t$, false, 2),
    (v_q, $t$wurde$t$, false, 3),
    (v_q, $t$werden würde$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$Schreiben Sie einen argumentativen Absatz (6–9 Sätze): Fördern feste Regeln und Grenzen die Kreativität, oder schränken sie diese eher ein? Begründen Sie Ihre Position mit Beispielen.$t$, 1, 'normal', 'production', $t$Ich bin überzeugt, dass feste Regeln und Grenzen die Kreativität oft eher fördern als einschränken. Wie im Text am Beispiel von Bachs Fugen gezeigt wird, zwingen strenge formale Vorgaben Künstler dazu, innovative Lösungen zu finden, die ohne diese Beschränkung nie entstanden wären. Auch in anderen Kunstformen, etwa in der Lyrik mit festen Versmaßen, lässt sich beobachten, dass Grenzen die Vorstellungskraft eher schärfen als lähmen. Andererseits kann man argumentieren, dass völlige Freiheit ebenfalls kreative Prozesse anstoßen kann, da sie keine Denkbarrieren setzt. Dennoch zeigt die Erfahrung vieler Künstler, dass unbegrenzte Möglichkeiten häufig zu Orientierungslosigkeit führen, während klare Grenzen einen produktiven Rahmen schaffen. Entscheidend ist meiner Meinung nach, wie im Essay von Jonas beschrieben, die richtigen Grenzen bewusst zu wählen, statt sie einfach zu vermeiden. Deshalb halte ich eine durchdachte Beschränkung für eine notwendige Voraussetzung echter künstlerischer Freiheit.$t$);

END $block$;

-- 11. Die Stille, die komponiert
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary) VALUES (
    'B2',
    $t$Die Stille, die komponiert$t$,
    $t$Als Musikwissenschaftlerin habe ich mich jahrelang mit der Frage beschäftigt, wie ein Komponist, der sein Gehör vollständig verloren hatte, weiterhin Werke von solcher Tiefe schaffen konnte. Ludwig van Beethoven bemerkte bereits in seinen späten Zwanzigern die ersten Anzeichen eines fortschreitenden Hörverlusts, ein Umstand, den er lange vor der Öffentlichkeit verbarg, weil er fürchtete, als Künstler nicht mehr ernst genommen zu werden. In einem erschütternden Brief, dem sogenannten Heiligenstädter Testament, gestand er seine Verzweiflung ein und erwog sogar, seinem Leben ein Ende zu setzen. Dennoch entschied er sich, weiterzuleben – für die Kunst, wie er selbst schrieb.

Was mich an dieser Geschichte immer wieder fasziniert, ist nicht allein die Tragik, sondern die Art und Weise, wie Beethoven seine Einschränkung in eine neue Form des Schaffens verwandelte. Da er die Klänge seiner eigenen Werke nicht mehr hören konnte, stützte er sich zunehmend auf sein inneres Klangvorstellungsvermögen, auf jahrzehntelang verinnerlichtes Wissen über Harmonie und Struktur. Seine neunte Symphonie, komponiert in fast völliger Taubheit, gilt bis heute als eines der kühnsten Werke der Musikgeschichte – reich an unerwarteten Wendungen, als hätte die Isolation seinen musikalischen Ausdruck von konventionellen Erwartungen befreit.

Man könnte einwenden, dass sein Genie trotz der Krankheit bestand, nicht wegen ihr. Doch ich glaube, dass die erzwungene Abkehr von äußeren Klängen ihn zwang, radikaler zu denken, tiefer in seine eigene musikalische Sprache vorzudringen. Adversität zerstört Kreativität nicht zwangsläufig; manchmal verändert sie deren Richtung. Beethovens Beispiel lehrt uns, dass künstlerisches Schaffen weniger von äußeren Bedingungen abhängt, als wir oft annehmen, sondern von der Fähigkeit, innerhalb neuer Grenzen neue Wege zu finden.$t$,
    $t$En tant que musicologue, je me suis pendant des années intéressée à la question de savoir comment un compositeur, ayant complètement perdu l'ouïe, avait pu continuer à créer des œuvres d'une telle profondeur. Ludwig van Beethoven remarqua déjà, à la fin de sa vingtaine, les premiers signes d'une surdité progressive, une circonstance qu'il dissimula longtemps au public, car il craignait de ne plus être pris au sérieux en tant qu'artiste. Dans une lettre bouleversante, le fameux Testament de Heiligenstadt, il avoua son désespoir et envisagea même de mettre fin à ses jours. Il décida pourtant de continuer à vivre — pour l'art, comme il l'écrivit lui-même.

Ce qui me fascine sans cesse dans cette histoire, ce n'est pas seulement la tragédie, mais la manière dont Beethoven transforma sa limitation en une nouvelle forme de création. Ne pouvant plus entendre les sonorités de ses propres œuvres, il s'appuya de plus en plus sur sa faculté intérieure d'imagination sonore, sur des connaissances intériorisées pendant des décennies sur l'harmonie et la structure. Sa neuvième symphonie, composée dans une surdité presque totale, est considérée aujourd'hui encore comme l'une des œuvres les plus audacieuses de l'histoire de la musique — riche en tournures inattendues, comme si l'isolement avait libéré son expression musicale des attentes conventionnelles.

On pourrait objecter que son génie subsista malgré la maladie, et non à cause d'elle. Mais je crois que ce détachement forcé des sons extérieurs le contraignit à penser plus radicalement, à pénétrer plus profondément son propre langage musical. L'adversité ne détruit pas nécessairement la créativité ; parfois, elle en change simplement la direction. L'exemple de Beethoven nous enseigne que la création artistique dépend moins des conditions extérieures que nous ne le pensons souvent, mais bien de la capacité à trouver de nouvelles voies à l'intérieur de nouvelles limites.$t$,
    $t${"Als":"En tant que","Musikwissenschaftlerin":"musicologue","habe":"ai","ich":"je","mich":"me","jahrelang":"pendant des années","mit":"à","der":"la","Frage":"question","beschäftigt":"intéressée","wie":"comment","ein":"un","Komponist":"compositeur","sein":"son","Gehör":"ouïe","vollständig":"complètement","verloren":"perdu","hatte":"avait","weiterhin":"continuer à","Werke":"œuvres","von":"d'une","solcher":"telle","Tiefe":"profondeur","schaffen":"créer","konnte":"pouvait","Ludwig":"Ludwig","van":"van","Beethoven":"Beethoven","bemerkte":"remarqua","bereits":"déjà","in":"dans","seinen":"sa","späten":"fin de","Zwanzigern":"vingtaine","die":"les","ersten":"premiers","Anzeichen":"signes","eines":"d'une","fortschreitenden":"progressive","Hörverlusts":"perte auditive","Umstand":"circonstance","den":"qu'","er":"il","lange":"longtemps","vor":"de","Öffentlichkeit":"public","verbarg":"dissimula","weil":"car","fürchtete":"craignait","als":"en tant qu'","Künstler":"artiste","nicht":"ne plus","mehr":"plus","ernst":"au sérieux","genommen":"pris","zu":"à","werden":"être","In":"Dans","einem":"une","erschütternden":"bouleversante","Brief":"lettre","dem":"le","sogenannten":"fameux","Heiligenstädter":"de Heiligenstadt","Testament":"Testament","gestand":"avoua","seine":"son","Verzweiflung":"désespoir","und":"et","erwog":"envisagea","sogar":"même","seinem":"ses","Leben":"jours","Ende":"fin","setzen":"mettre","Dennoch":"Il pourtant","entschied":"décida","sich":"se","weiterzuleben":"continuer à vivre","für":"pour","Kunst":"l'art","selbst":"lui-même","schrieb":"écrivit","Was":"Ce qui","an":"dans","dieser":"cette","Geschichte":"histoire","immer wieder":"sans cesse","wieder":"encore","fasziniert":"fascine","ist":"est","allein":"seulement","Tragik":"tragédie","sondern":"mais","Art":"manière","Weise":"façon","Einschränkung":"limitation","eine":"une","neue":"nouvelle","Form":"forme","des":"de la","Schaffens":"création","verwandelte":"transforma","Da":"Comme","Klänge":"sonorités","seiner":"ses","eigenen":"propres","hören":"entendre","stützte":"s'appuya","zunehmend":"de plus en plus","auf":"sur","inneres":"intérieure","Klangvorstellungsvermögen":"faculté d'imagination sonore","jahrzehntelang":"pendant des décennies","verinnerlichtes":"intériorisées","Wissen":"connaissances","über":"sur","Harmonie":"harmonie","Struktur":"structure","Seine":"Sa","neunte":"neuvième","Symphonie":"symphonie","komponiert":"composée","fast":"presque","völliger":"totale","Taubheit":"surdité","gilt":"est considérée","bis":"jusqu'à","heute":"aujourd'hui","kühnsten":"plus audacieuses","Musikgeschichte":"histoire de la musique","reich":"riche","unerwarteten":"inattendues","Wendungen":"tournures","hätte":"avait","Isolation":"isolement","musikalischen":"musicale","Ausdruck":"expression","konventionellen":"conventionnelles","Erwartungen":"attentes","befreit":"libérée","Man":"On","könnte":"pourrait","einwenden":"objecter","dass":"que","Genie":"génie","trotz":"malgré","Krankheit":"maladie","bestand":"subsista","wegen":"à cause de","ihr":"elle","Doch":"Mais","glaube":"crois","erzwungene":"forcé","Abkehr":"détachement","äußeren":"extérieurs","Klängen":"sons","ihn":"le","zwang":"contraignit","radikaler":"plus radicalement","denken":"penser","tiefer":"plus profondément","eigene":"propre","musikalische":"musical","Sprache":"langage","vorzudringen":"pénétrer","Adversität":"adversité","zerstört":"détruit","Kreativität":"créativité","zwangsläufig":"nécessairement","manchmal":"parfois","verändert":"change","sie":"elle","deren":"sa","Richtung":"direction","Beethovens":"de Beethoven","Beispiel":"exemple","lehrt":"enseigne","uns":"nous","künstlerisches":"artistique","Schaffen":"création","weniger":"moins","Bedingungen":"conditions","abhängt":"dépend","wir":"nous","oft":"souvent","annehmen":"pensons","Fähigkeit":"capacité","innerhalb":"à l'intérieur de","neuer":"nouvelles","Grenzen":"limites","Wege":"voies","finden":"trouver","immer":"toujours"}$t$::jsonb
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was verbarg Beethoven lange vor der Öffentlichkeit?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$seinen Hörverlust$t$, true, 1),
    (v_q, $t$seine Armut$t$, false, 2),
    (v_q, $t$seine Krankheit Depression$t$, false, 3),
    (v_q, $t$seine Kompositionstechnik$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum verbarg Beethoven seinen Hörverlust?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er fürchtete, als Künstler nicht mehr ernst genommen zu werden$t$, true, 1),
    (v_q, $t$Er wollte seine Familie schützen$t$, false, 2),
    (v_q, $t$Er hatte Angst vor Ärzten$t$, false, 3),
    (v_q, $t$Er wollte seinen Ruhm nicht teilen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was zeigt das Heiligenstädter Testament über Beethovens inneren Konflikt?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Trotz Verzweiflung entschied er sich, für die Kunst weiterzuleben$t$, true, 1),
    (v_q, $t$Er gab die Musik endgültig auf$t$, false, 2),
    (v_q, $t$Er verheimlichte seine Verzweiflung vollständig vor sich selbst$t$, false, 3),
    (v_q, $t$Er bat um finanzielle Unterstützung$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Worauf stützte sich Beethoven, um weiter zu komponieren, nachdem er sein Gehör verloren hatte?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$sein inneres Klangvorstellungsvermögen$t$, true, 1),
    (v_q, $t$die Hilfe eines Assistenten$t$, false, 2),
    (v_q, $t$neue Hörgeräte$t$, false, 3),
    (v_q, $t$das Gedächtnis anderer Musiker$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie wird die Neunte Symphonie im Text beschrieben?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$als kühnes Werk voller unerwarteter Wendungen$t$, true, 1),
    (v_q, $t$als einfaches, konventionelles Stück$t$, false, 2),
    (v_q, $t$als unvollendetes Fragment$t$, false, 3),
    (v_q, $t$als Kopie früherer Werke$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Interpretation schlägt die Autorin für den kühnen Charakter der Neunten Symphonie vor?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Die Isolation habe seinen Ausdruck von konventionellen Erwartungen befreit$t$, true, 1),
    (v_q, $t$Er habe absichtlich das Publikum provozieren wollen$t$, false, 2),
    (v_q, $t$Er habe die Symphonie mit anderen Komponisten zusammen geschrieben$t$, false, 3),
    (v_q, $t$Seine Taubheit habe die Qualität gemindert$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was ist laut der Autorin die zentrale Lehre aus Beethovens Beispiel?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Kreativität hängt weniger von äußeren Bedingungen ab als oft angenommen$t$, true, 1),
    (v_q, $t$Krankheit fördert immer künstlerisches Genie$t$, false, 2),
    (v_q, $t$Nur taube Musiker können große Werke schaffen$t$, false, 3),
    (v_q, $t$Äußere Umstände bestimmen vollständig die Kunst$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie beurteilt die Autorin den möglichen Einwand, Beethovens Genie habe trotz der Krankheit bestanden?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie widerspricht und meint, die Krankheit habe seine kreative Richtung verändert$t$, true, 1),
    (v_q, $t$Sie stimmt diesem Einwand vollständig zu$t$, false, 2),
    (v_q, $t$Sie hält die Frage für irrelevant$t$, false, 3),
    (v_q, $t$Sie lehnt jede Verbindung zwischen Krankheit und Kunst ab$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche allgemeinere These über Kreativität lässt sich aus dem gesamten Text ableiten?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Erzwungene Grenzen können neue Formen des künstlerischen Ausdrucks hervorbringen$t$, true, 1),
    (v_q, $t$Kreativität entsteht ausschließlich aus Leid$t$, false, 2),
    (v_q, $t$Musikalisches Genie ist angeboren und unveränderlich$t$, false, 3),
    (v_q, $t$Äußere Anerkennung ist notwendig für künstlerischen Erfolg$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'der Hörverlust' im Text?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$das allmähliche oder vollständige Verschwinden des Hörvermögens$t$, true, 1),
    (v_q, $t$die Verbesserung des Gehörs$t$, false, 2),
    (v_q, $t$der Verlust eines Musikinstruments$t$, false, 3),
    (v_q, $t$die Taubheit der Hände$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'die Adversität' in 'Adversität zerstört Kreativität nicht zwangsläufig'?$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$ein widriger Umstand oder Schicksalsschlag$t$, true, 1),
    (v_q, $t$ein musikalisches Talent$t$, false, 2),
    (v_q, $t$eine wissenschaftliche Theorie$t$, false, 3),
    (v_q, $t$ein finanzieller Vorteil$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'das innere Klangvorstellungsvermögen', auf das sich Beethoven stützte?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$die Fähigkeit, Musik im Kopf zu hören und vorzustellen, ohne sie akustisch wahrzunehmen$t$, true, 1),
    (v_q, $t$ein technisches Hörgerät$t$, false, 2),
    (v_q, $t$eine Kompositionssoftware$t$, false, 3),
    (v_q, $t$ein Orchester aus Blinden$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wähle die passende Konjunktiv-II-Form: 'Wenn Beethoven aufgegeben ___, hätte die Musikgeschichte die neunte Symphonie nie gehört.'$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$hätte$t$, true, 1),
    (v_q, $t$wäre$t$, false, 2),
    (v_q, $t$habe$t$, false, 3),
    (v_q, $t$würde$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Ergänze den Relativsatz: 'Beethoven schrieb einen Brief, ___ als Heiligenstädter Testament bekannt ist.'$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$der$t$, true, 1),
    (v_q, $t$die$t$, false, 2),
    (v_q, $t$dem$t$, false, 3),
    (v_q, $t$dessen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welcher Satz drückt korrekt einen irrealen Konjunktiv II der Gegenwart aus: 'Man könnte einwenden, dass...'?$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Man könnte einwenden, dass sein Genie trotz der Krankheit bestand.$t$, true, 1),
    (v_q, $t$Man kann einwenden, dass sein Genie trotz der Krankheit besteht.$t$, false, 2),
    (v_q, $t$Man konnte einwenden, dass sein Genie trotz der Krankheit bestand.$t$, false, 3),
    (v_q, $t$Man wird einwenden, dass sein Genie trotz der Krankheit besteht.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$Schreiben Sie einen argumentativen Absatz (6–9 Sätze): Kann eine körperliche Einschränkung, wie Beethovens Taubheit, künstlerisches Schaffen tatsächlich bereichern? Begründen Sie Ihre Meinung.$t$, 1, 'normal', 'production', $t$Meiner Meinung nach kann eine körperliche Einschränkung ein künstlerisches Werk tatsächlich bereichern, auch wenn dies zunächst paradox erscheint. Wie im Text beschrieben, zwang Beethovens Taubheit ihn dazu, sich vollständig auf sein inneres Klangvorstellungsvermögen zu verlassen, was zu einer radikaleren und unkonventionelleren Musiksprache führte. Diese erzwungene Abkehr von äußeren Klängen scheint seinen künstlerischen Ausdruck von konventionellen Erwartungen befreit zu haben. Andererseits sollte man vorsichtig sein, Leid oder Krankheit romantisch zu verklären, denn Beethovens Verzweiflung, wie sie im Heiligenstädter Testament zum Ausdruck kommt, war real und schmerzhaft. Dennoch zeigt sein Beispiel, dass Einschränkungen manchmal neue kreative Wege eröffnen können, die unter normalen Umständen nie entstanden wären. Entscheidend scheint mir dabei weniger die Einschränkung selbst zu sein, sondern die Fähigkeit, innerhalb neuer Grenzen kreativ zu bleiben. Deshalb kann Adversität, so tragisch sie ist, unter bestimmten Umständen auch eine Quelle außergewöhnlicher Kreativität sein.$t$);

END $block$;

-- 12. Das Patentamt als Denkraum
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary) VALUES (
    'B2',
    $t$Das Patentamt als Denkraum$t$,
    $t$Als Physiklehrer erzähle ich meinen Schülern gerne von einer Episode in Albert Einsteins Leben, die selten im Mittelpunkt steht, obwohl sie entscheidend war: seine Jahre als technischer Experte dritter Klasse im Patentamt in Bern. Nach seinem Studium fand Einstein zunächst keine Anstellung an einer Universität; die akademische Laufbahn, die man von einem zukünftigen Genie erwarten würde, blieb ihm zunächst verwehrt. Stattdessen prüfte er von 1902 bis 1907 Patentanmeldungen, viele davon zu technischen Geräten wie elektrischen Uhren und Übertragungssystemen.

Man könnte annehmen, eine solche Tätigkeit sei der Kreativität abträglich gewesen, doch das Gegenteil scheint der Fall zu sein. Die Arbeit im Patentamt zwang Einstein, komplexe technische Beschreibungen schnell zu erfassen und deren zugrunde liegende Prinzipien zu erkennen – eine Übung, die sein Denken schärfte, ohne es an die Konventionen eines akademischen Umfelds zu binden. Gerade weil er nicht durch die Erwartungen etablierter Professoren eingeengt war, konnte er in seiner Freizeit ungewöhnliche Gedankenexperimente verfolgen, etwa die Frage, wie sich die Welt aus der Perspektive eines Lichtstrahls darstellen würde.

Im Jahr 1905, seinem sogenannten Wunderjahr, veröffentlichte er vier bahnbrechende Arbeiten, darunter die spezielle Relativitätstheorie, während er weiterhin Vollzeit im Patentamt arbeitete. Diese Tatsache widerlegt die verbreitete Vorstellung, dass außergewöhnliche wissenschaftliche Leistungen nur in privilegierten, gut ausgestatteten Institutionen entstehen können.

Meinen Schülern sage ich oft, dass ein unauffälliger Beruf keineswegs bedeutet, dass die eigenen Gedanken stillstehen müssen. Manchmal bietet gerade die Distanz zu akademischem Druck den notwendigen Freiraum, um wirklich originell zu denken. Einsteins Zeit in Bern zeigt, dass Durchbrüche oft dort entstehen, wo man sie am wenigsten erwartet.$t$,
    $t$En tant que professeur de physique, j'aime raconter à mes élèves un épisode de la vie d'Albert Einstein qui est rarement mis en avant, bien qu'il ait été décisif : ses années comme expert technique de troisième classe à l'office des brevets de Berne. Après ses études, Einstein ne trouva d'abord aucun poste à l'université ; la carrière académique que l'on attendrait d'un futur génie lui resta d'abord fermée. Il examina à la place, de 1902 à 1907, des demandes de brevets, beaucoup portant sur des appareils techniques comme des horloges électriques et des systèmes de transmission.

On pourrait supposer qu'une telle activité fût néfaste à la créativité, mais c'est le contraire qui semble être le cas. Le travail à l'office des brevets obligeait Einstein à saisir rapidement des descriptions techniques complexes et à en reconnaître les principes sous-jacents — un exercice qui aiguisait sa pensée sans la lier aux conventions d'un milieu académique. C'est précisément parce qu'il n'était pas contraint par les attentes de professeurs établis qu'il put, pendant son temps libre, poursuivre des expériences de pensée inhabituelles, par exemple la question de savoir comment le monde se présenterait du point de vue d'un rayon lumineux.

En 1905, sa fameuse année miraculeuse, il publia quatre travaux révolutionnaires, dont la théorie de la relativité restreinte, tout en continuant de travailler à temps plein à l'office des brevets. Ce fait réfute l'idée répandue selon laquelle des réalisations scientifiques extraordinaires ne peuvent naître que dans des institutions privilégiées et bien équipées.

Je dis souvent à mes élèves qu'exercer une profession discrète ne signifie nullement que sa propre pensée doive s'immobiliser. Parfois, c'est précisément la distance vis-à-vis de la pression académique qui offre la liberté nécessaire pour penser vraiment de manière originale. Le temps d'Einstein à Berne montre que les percées surviennent souvent là où on les attend le moins.$t$,
    $t${"Als":"En tant que","Physiklehrer":"professeur de physique","erzähle":"raconte","ich":"je","meinen":"à mes","Schülern":"élèves","gerne":"volontiers","von":"de","einer":"un","Episode":"épisode","in":"de","Albert":"Albert","Einsteins":"d'Einstein","Leben":"vie","die":"qui","selten":"rarement","im":"au","Mittelpunkt":"centre","steht":"se trouve","obwohl":"bien que","sie":"il","entscheidend":"décisif","war":"était","seine":"ses","Jahre":"années","als":"comme","technischer":"technique","Experte":"expert","dritter":"de troisième","Klasse":"classe","Patentamt":"office des brevets","Bern":"Berne","Nach":"Après","seinem":"ses","Studium":"études","fand":"trouva","Einstein":"Einstein","zunächst":"d'abord","keine":"aucun","Anstellung":"poste","an":"à","Universität":"université","akademische":"académique","Laufbahn":"carrière","man":"on","einem":"d'un","zukünftigen":"futur","Genie":"génie","erwarten":"attendre","würde":"pourrait","blieb":"resta","ihm":"lui","verwehrt":"fermée","Stattdessen":"À la place","prüfte":"examina","er":"il","bis":"à","Patentanmeldungen":"demandes de brevets","viele":"beaucoup","davon":"de cela","zu":"sur","technischen":"techniques","Geräten":"appareils","wie":"comme","elektrischen":"électriques","Uhren":"horloges","und":"et","Übertragungssystemen":"systèmes de transmission","Man":"On","könnte":"pourrait","annehmen":"supposer","eine":"une","solche":"telle","Tätigkeit":"activité","sei":"fût","der":"de la","Kreativität":"créativité","abträglich":"néfaste","gewesen":"été","doch":"mais","das":"le","Gegenteil":"contraire","scheint":"semble","Fall":"cas","sein":"être","Die":"Le","Arbeit":"travail","zwang":"obligeait","komplexe":"complexes","technische":"techniques","Beschreibungen":"descriptions","schnell":"rapidement","erfassen":"saisir","deren":"en","zugrunde liegende":"sous-jacents","liegende":"sous-jacents","Prinzipien":"principes","erkennen":"reconnaître","Übung":"exercice","Denken":"pensée","schärfte":"aiguisait","ohne":"sans","es":"la","Konventionen":"conventions","eines":"d'un","akademischen":"académique","Umfelds":"milieu","binden":"lier","Gerade":"Précisément","weil":"parce que","nicht":"ne pas","durch":"par","Erwartungen":"attentes","etablierter":"établis","Professoren":"professeurs","eingeengt":"contraint","konnte":"put","Freizeit":"temps libre","ungewöhnliche":"inhabituelles","Gedankenexperimente":"expériences de pensée","verfolgen":"poursuivre","etwa":"par exemple","Frage":"question","sich":"se","Welt":"monde","aus":"du","Perspektive":"point de vue","Lichtstrahls":"rayon lumineux","darstellen":"présenter","Im":"En","Jahr":"année","sogenannten":"fameuse","Wunderjahr":"année miraculeuse","veröffentlichte":"publia","vier":"quatre","bahnbrechende":"révolutionnaires","Arbeiten":"travaux","darunter":"dont","spezielle":"restreinte","Relativitätstheorie":"théorie de la relativité","während":"tout en","weiterhin":"continuant","Vollzeit":"à temps plein","arbeitete":"travaillant","Diese":"Ce","Tatsache":"fait","widerlegt":"réfute","verbreitete":"répandue","Vorstellung":"idée","dass":"selon laquelle","außergewöhnliche":"extraordinaires","wissenschaftliche":"scientifiques","Leistungen":"réalisations","nur":"seulement","privilegierten":"privilégiées","gut":"bien","ausgestatteten":"équipées","Institutionen":"institutions","entstehen":"naître","können":"peuvent","Meinen":"À mes","sage":"dis","oft":"souvent","ein":"une","unauffälliger":"discrète","Beruf":"profession","keineswegs":"nullement","bedeutet":"signifie","eigenen":"propre","Gedanken":"pensée","stillstehen":"s'immobiliser","müssen":"devoir","Manchmal":"Parfois","bietet":"offre","gerade":"précisément","Distanz":"distance","akademischem":"académique","Druck":"pression","den":"la","notwendigen":"nécessaire","Freiraum":"liberté","um":"pour","wirklich":"vraiment","originell":"de manière originale","Zeit":"temps","zeigt":"montre","Durchbrüche":"percées","dort":"là","wo":"où","am":"le","wenigsten":"moins","erwartet":"attend","denken":"penser","seiner":"sa","zugrunde":"sous-jacents (à la base)"}$t$::jsonb
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum arbeitete Einstein im Patentamt in Bern?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er fand zunächst keine Anstellung an einer Universität$t$, true, 1),
    (v_q, $t$Er wollte Ingenieur werden$t$, false, 2),
    (v_q, $t$Er hatte sein Physikstudium abgebrochen$t$, false, 3),
    (v_q, $t$Er wurde von der Universität entlassen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was prüfte Einstein in seiner Tätigkeit im Patentamt?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Patentanmeldungen zu technischen Geräten$t$, true, 1),
    (v_q, $t$Wissenschaftliche Zeitschriften$t$, false, 2),
    (v_q, $t$Universitätsprüfungen$t$, false, 3),
    (v_q, $t$Finanzberichte von Unternehmen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was legt der Text über Einsteins akademischen Werdegang vor seiner Zeit in Bern nahe?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sein Weg verlief nicht geradlinig und entsprach nicht den Erwartungen an ein zukünftiges Genie$t$, true, 1),
    (v_q, $t$Er war bereits ein anerkannter Professor$t$, false, 2),
    (v_q, $t$Er hatte nie Interesse an einer akademischen Laufbahn$t$, false, 3),
    (v_q, $t$Er wurde direkt nach dem Studium berühmt$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie beeinflusste die Arbeit im Patentamt laut Text Einsteins Denken?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie schärfte sein Denken, ohne es an akademische Konventionen zu binden$t$, true, 1),
    (v_q, $t$Sie lenkte ihn völlig von der Physik ab$t$, false, 2),
    (v_q, $t$Sie machte ihn ungeduldig und erschöpft$t$, false, 3),
    (v_q, $t$Sie zwang ihn, die Physik aufzugeben$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welchen Vorteil sieht der Autor darin, dass Einstein nicht durch akademische Erwartungen eingeengt war?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er konnte ungewöhnliche Gedankenexperimente frei verfolgen$t$, true, 1),
    (v_q, $t$Er musste keine Prüfungen mehr ablegen$t$, false, 2),
    (v_q, $t$Er verdiente dadurch mehr Geld$t$, false, 3),
    (v_q, $t$Er hatte mehr Zeit für Reisen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche implizite These über Kreativität vertritt der Autor, wenn er die Distanz zum akademischen Druck lobt?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Freiraum außerhalb etablierter Institutionen kann originelles Denken begünstigen$t$, true, 1),
    (v_q, $t$Nur formale akademische Ausbildung führt zu wissenschaftlichem Erfolg$t$, false, 2),
    (v_q, $t$Kreativität entsteht ausschließlich unter Zeitdruck$t$, false, 3),
    (v_q, $t$Institutionelle Anerkennung ist Voraussetzung für Genie$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was veröffentlichte Einstein 1905, seinem sogenannten Wunderjahr?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$vier bahnbrechende wissenschaftliche Arbeiten$t$, true, 1),
    (v_q, $t$ein Lehrbuch der Physik$t$, false, 2),
    (v_q, $t$seine Autobiografie$t$, false, 3),
    (v_q, $t$einen Patentbericht$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche verbreitete Vorstellung widerlegt laut Autor Einsteins Leistung im Jahr 1905?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$dass außergewöhnliche Leistungen nur in privilegierten Institutionen entstehen können$t$, true, 1),
    (v_q, $t$dass Wissenschaftler immer jung sein müssen$t$, false, 2),
    (v_q, $t$dass Patentämter nutzlos sind$t$, false, 3),
    (v_q, $t$dass Relativitätstheorie unwichtig ist$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche allgemeine Lehre zieht der Physiklehrer aus Einsteins Beispiel für seine Schüler?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Ein unauffälliger Beruf schließt originelles Denken nicht aus$t$, true, 1),
    (v_q, $t$Nur Universitätsprofessoren können bahnbrechende Entdeckungen machen$t$, false, 2),
    (v_q, $t$Wissenschaftlicher Erfolg hängt vom Zufall ab$t$, false, 3),
    (v_q, $t$Patentämter fördern gezielt kreative Wissenschaftler$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'die Patentanmeldung' im Text?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$ein offizieller Antrag, eine technische Erfindung schützen zu lassen$t$, true, 1),
    (v_q, $t$ein wissenschaftlicher Artikel$t$, false, 2),
    (v_q, $t$ein Universitätsabschluss$t$, false, 3),
    (v_q, $t$eine finanzielle Investition$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'eingeengt sein' in 'nicht durch die Erwartungen etablierter Professoren eingeengt'?$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$in seiner Freiheit oder seinem Denken beschränkt sein$t$, true, 1),
    (v_q, $t$finanziell abgesichert sein$t$, false, 2),
    (v_q, $t$wissenschaftlich anerkannt sein$t$, false, 3),
    (v_q, $t$beruflich befördert werden$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'der Kreativität abträglich' im Satz 'man könnte annehmen, eine solche Tätigkeit sei der Kreativität abträglich'?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$schädlich oder hinderlich für die Kreativität$t$, true, 1),
    (v_q, $t$förderlich für die Kreativität$t$, false, 2),
    (v_q, $t$irrelevant für die Kreativität$t$, false, 3),
    (v_q, $t$finanziell lohnend$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wähle die passende Konjunktiv-II-Form: 'Wenn Einstein an einer Universität gearbeitet ___, hätte er vielleicht weniger Freiraum gehabt.'$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$hätte$t$, true, 1),
    (v_q, $t$wäre$t$, false, 2),
    (v_q, $t$habe$t$, false, 3),
    (v_q, $t$würde$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Ergänze den Relativsatz: 'Einstein prüfte Patentanmeldungen, ___ Inhalt oft technische Geräte betraf.'$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$deren$t$, true, 1),
    (v_q, $t$die$t$, false, 2),
    (v_q, $t$der$t$, false, 3),
    (v_q, $t$denen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welcher Satz drückt korrekt aus, was Einstein anders hätte tun können (Konjunktiv II der Vergangenheit)?$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Einstein hätte auch eine akademische Laufbahn einschlagen können, wenn man ihm eine Stelle angeboten hätte.$t$, true, 1),
    (v_q, $t$Einstein konnte eine akademische Laufbahn einschlagen, weil man ihm eine Stelle anbot.$t$, false, 2),
    (v_q, $t$Einstein schlägt eine akademische Laufbahn ein, wenn man ihm eine Stelle anbietet.$t$, false, 3),
    (v_q, $t$Einstein wird eine akademische Laufbahn einschlagen können.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$Schreiben Sie einen argumentativen Absatz (6–9 Sätze): Kann Distanz zu einem akademischen oder professionellen Umfeld die Kreativität fördern, wie im Text am Beispiel Einsteins gezeigt wird? Begründen Sie Ihre Meinung.$t$, 1, 'normal', 'production', $t$Meiner Meinung nach kann Distanz zu einem etablierten akademischen Umfeld tatsächlich kreatives Denken fördern, auch wenn dies zunächst überraschend klingt. Das Beispiel Einsteins im Text zeigt eindrucksvoll, dass er gerade deshalb ungewöhnliche Gedankenexperimente verfolgen konnte, weil er nicht durch die Erwartungen etablierter Professoren eingeengt war. Zudem zwang die praktische Arbeit im Patentamt ihn dazu, komplexe Sachverhalte schnell und klar zu erfassen, was sein analytisches Denken zusätzlich schärfte. Andererseits sollte man nicht verallgemeinern, dass akademische Institutionen der Kreativität grundsätzlich schaden, da sie oft wichtige Ressourcen und einen fachlichen Austausch bieten, die für viele Forscher unverzichtbar sind. Dennoch zeigt Einsteins Wunderjahr 1905, dass außergewöhnliche Leistungen nicht zwingend privilegierte Institutionen voraussetzen. Wichtig erscheint mir vor allem, dass ein gewisser Freiraum vom Erwartungsdruck etablierter Strukturen originelles Denken begünstigen kann. Deshalb sollten Gesellschaften auch unkonventionelle Karrierewege als potenzielle Quellen bahnbrechender Ideen anerkennen.$t$);

END $block$;

-- 13. Der Niedergang eines Handelsbundes
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary) VALUES (
    'B2',
    $t$Der Niedergang eines Handelsbundes$t$,
    $t$Als Wirtschaftshistoriker werde ich oft gefragt, warum die Hanse, jenes mächtige Bündnis norddeutscher Handelsstädte, das vom dreizehnten bis ins siebzehnte Jahrhundert weite Teile des europäischen Handels beherrschte, letztlich zerfiel. Städte wie Lübeck, Hamburg und Danzig hatten gemeinsam ein Netzwerk aufgebaut, das Waren wie Getreide, Pelze und Tuch über die Ostsee und Nordsee transportierte und dabei erstaunlichen wirtschaftlichen und politischen Einfluss ausübte, ohne dass ein zentraler Staat dahinterstand.

Der Niedergang der Hanse lässt sich nicht auf eine einzige Ursache zurückführen, sondern auf ein Zusammenspiel struktureller Schwächen. Erstens fehlte dem Bund eine feste politische Institution: Entscheidungen wurden auf unregelmäßigen Tagungen getroffen, an denen nicht alle Mitgliedsstädte teilnahmen, was gemeinsames Handeln zunehmend erschwerte, sobald die Interessen der einzelnen Städte auseinanderdrifteten. Zweitens veränderten sich die globalen Handelsrouten grundlegend: Mit der Entdeckung neuer Seewege nach Amerika und Asien verlor die Ostsee ihre zentrale Stellung, während atlantische Häfen wie Amsterdam und London an Bedeutung gewannen. Drittens erstarkten die Territorialstaaten, die zunehmend eigene Handelsinteressen verfolgten und die Hansestädte in ihre nationalen Wirtschaftssysteme einbanden, wodurch der Bund seine Unabhängigkeit verlor.

Was diese Geschichte für heutige Handelsbündnisse lehrreich macht, ist die Erkenntnis, dass wirtschaftliche Macht ohne verbindliche politische Strukturen fragil bleibt. Ein Bündnis, das ausschließlich auf gemeinsamen wirtschaftlichen Vorteilen beruht, kann brüchig werden, sobald sich diese Vorteile ungleich verteilen oder externe Kräfte neue Machtverhältnisse schaffen. Moderne Handelsallianzen, die auf Konsens statt auf Zwang setzen, stehen vor ähnlichen Herausforderungen: Sie müssen Mechanismen entwickeln, um Meinungsverschiedenheiten zu überbrücken, ohne dabei ihre Flexibilität zu verlieren. Die Hanse erinnert uns daran, dass selbst die erfolgreichsten wirtschaftlichen Systeme institutionelle Anpassungsfähigkeit benötigen, um dauerhaft zu bestehen.$t$,
    $t$En tant qu'historien de l'économie, on me demande souvent pourquoi la Hanse, cette puissante alliance de villes commerçantes d'Allemagne du Nord qui domina, du treizième au dix-septième siècle, de vastes pans du commerce européen, finit par s'effondrer. Des villes comme Lübeck, Hambourg et Dantzig avaient bâti ensemble un réseau qui transportait des marchandises telles que le blé, les fourrures et le drap à travers la mer Baltique et la mer du Nord, exerçant ce faisant une influence économique et politique étonnante, sans qu'un État central ne se cache derrière.

Le déclin de la Hanse ne peut être ramené à une cause unique, mais à un ensemble de faiblesses structurelles. Premièrement, l'alliance manquait d'une institution politique stable : les décisions étaient prises lors de réunions irrégulières auxquelles ne participaient pas toutes les villes membres, ce qui rendait l'action commune de plus en plus difficile dès que les intérêts des différentes villes divergeaient. Deuxièmement, les routes commerciales mondiales changèrent fondamentalement : avec la découverte de nouvelles voies maritimes vers l'Amérique et l'Asie, la mer Baltique perdit sa position centrale, tandis que des ports atlantiques comme Amsterdam et Londres gagnaient en importance. Troisièmement, les États territoriaux se renforcèrent, poursuivant de plus en plus leurs propres intérêts commerciaux et intégrant les villes hanséatiques dans leurs systèmes économiques nationaux, ce par quoi l'alliance perdit son indépendance.

Ce que cette histoire a d'instructif pour les alliances commerciales actuelles, c'est la constatation que la puissance économique reste fragile sans structures politiques contraignantes. Une alliance qui repose exclusivement sur des avantages économiques communs peut devenir fragile dès que ces avantages se répartissent inégalement ou que des forces extérieures créent de nouveaux rapports de pouvoir. Les alliances commerciales modernes, qui misent sur le consensus plutôt que sur la contrainte, sont confrontées à des défis similaires : elles doivent développer des mécanismes pour surmonter les divergences d'opinion sans perdre leur flexibilité. La Hanse nous rappelle que même les systèmes économiques les plus florissants ont besoin d'une capacité d'adaptation institutionnelle pour subsister durablement.$t$,
    $t${"Als":"En tant qu'","Wirtschaftshistoriker":"historien de l'économie","werde":"suis","ich":"je","oft":"souvent","gefragt":"interrogé","warum":"pourquoi","die":"la","Hanse":"Hanse","jenes":"cette","mächtige":"puissante","Bündnis":"alliance","norddeutscher":"d'Allemagne du Nord","Handelsstädte":"villes commerçantes","das":"qui","vom":"du","dreizehnten":"treizième","bis":"jusqu'au","ins":"au","siebzehnte":"dix-septième","Jahrhundert":"siècle","weite":"vastes","Teile":"parties","des":"du","europäischen":"européen","Handels":"commerce","beherrschte":"domina","letztlich":"finalement","zerfiel":"s'effondra","Städte":"villes","wie":"comme","Lübeck":"Lübeck","Hamburg":"Hambourg","und":"et","Danzig":"Dantzig","hatten":"avaient","gemeinsam":"ensemble","ein":"un","Netzwerk":"réseau","aufgebaut":"bâti","Waren":"marchandises","Getreide":"blé","Pelze":"fourrures","Tuch":"drap","über":"à travers","Ostsee":"mer Baltique","Nordsee":"mer du Nord","transportierte":"transportait","dabei":"ce faisant","erstaunlichen":"étonnante","wirtschaftlichen":"économique","politischen":"politique","Einfluss":"influence","ausübte":"exerçait","ohne":"sans","dass":"que","zentraler":"central","Staat":"État","dahinterstand":"se trouve derrière","Der":"Le","Niedergang":"déclin","der":"de la","lässt":"laisse","sich":"se","nicht":"ne pas","auf":"à","eine":"une","einzige":"unique","Ursache":"cause","zurückführen":"ramener","sondern":"mais","Zusammenspiel":"ensemble","struktureller":"structurelles","Schwächen":"faiblesses","Erstens":"Premièrement","fehlte":"manquait","dem":"à l'","Bund":"alliance","feste":"stable","politische":"politique","Institution":"institution","Entscheidungen":"décisions","wurden":"étaient","unregelmäßigen":"irrégulières","Tagungen":"réunions","getroffen":"prises","an":"auxquelles","denen":"lesquelles","alle":"toutes","Mitgliedsstädte":"villes membres","teilnahmen":"participaient","was":"ce qui","gemeinsames":"commune","Handeln":"action","zunehmend":"de plus en plus","erschwerte":"rendait difficile","sobald":"dès que","Interessen":"intérêts","einzelnen":"des différentes","auseinanderdrifteten":"divergeaient","Zweitens":"Deuxièmement","veränderten":"changèrent","globalen":"mondiales","Handelsrouten":"routes commerciales","grundlegend":"fondamentalement","Mit":"Avec","Entdeckung":"découverte","neuer":"nouvelles","Seewege":"voies maritimes","nach":"vers","Amerika":"Amérique","Asien":"Asie","verlor":"perdit","ihre":"sa","zentrale":"centrale","Stellung":"position","während":"tandis que","atlantische":"atlantiques","Häfen":"ports","Amsterdam":"Amsterdam","London":"Londres","Bedeutung":"importance","gewannen":"gagnaient","Drittens":"Troisièmement","erstarkten":"se renforcèrent","Territorialstaaten":"États territoriaux","eigene":"propres","Handelsinteressen":"intérêts commerciaux","verfolgten":"poursuivaient","Hansestädte":"villes hanséatiques","in":"dans","nationalen":"nationaux","Wirtschaftssysteme":"systèmes économiques","einbanden":"intégraient","wodurch":"ce par quoi","seine":"son","Unabhängigkeit":"indépendance","Was":"Ce que","diese":"cette","Geschichte":"histoire","für":"pour","heutige":"actuelles","Handelsbündnisse":"alliances commerciales","lehrreich":"instructif","macht":"rend","ist":"est","Erkenntnis":"constatation","wirtschaftliche":"économique","Macht":"puissance","verbindliche":"contraignantes","Strukturen":"structures","fragil":"fragile","bleibt":"reste","Ein":"Une","ausschließlich":"exclusivement","gemeinsamen":"communs","Vorteilen":"avantages","beruht":"repose","kann":"peut","brüchig":"fragile","werden":"devenir","Vorteile":"avantages","ungleich":"inégalement","verteilen":"répartissent","oder":"ou","externe":"extérieures","Kräfte":"forces","neue":"nouveaux","Machtverhältnisse":"rapports de pouvoir","schaffen":"créent","Moderne":"Modernes","Handelsallianzen":"alliances commerciales","Konsens":"consensus","statt":"plutôt que","Zwang":"contrainte","setzen":"misent","stehen":"sont","vor":"confrontées","ähnlichen":"similaires","Herausforderungen":"défis","Sie":"Elles","müssen":"doivent","Mechanismen":"mécanismes","entwickeln":"développer","um":"pour","Meinungsverschiedenheiten":"divergences d'opinion","zu":"à","überbrücken":"surmonter","Flexibilität":"flexibilité","verlieren":"perdre","Die":"La","erinnert":"rappelle","uns":"nous","daran":"que","selbst":"même","erfolgreichsten":"plus florissants","Systeme":"systèmes","institutionelle":"institutionnelle","Anpassungsfähigkeit":"capacité d'adaptation","benötigen":"ont besoin","dauerhaft":"durablement","bestehen":"subsister"}$t$::jsonb
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was war die Hanse laut Text?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$ein Bündnis norddeutscher Handelsstädte$t$, true, 1),
    (v_q, $t$ein einzelner deutscher Staat$t$, false, 2),
    (v_q, $t$eine militärische Allianz$t$, false, 3),
    (v_q, $t$eine religiöse Organisation$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche strukturelle Schwäche wird als erste Ursache für den Niedergang der Hanse genannt?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$das Fehlen einer festen politischen Institution$t$, true, 1),
    (v_q, $t$der Mangel an Handelswaren$t$, false, 2),
    (v_q, $t$die geografische Lage der Städte$t$, false, 3),
    (v_q, $t$die fehlende Seefahrtserfahrung$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum wurde gemeinsames Handeln innerhalb der Hanse zunehmend schwieriger?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$weil Entscheidungen unregelmäßig getroffen wurden und die Interessen der Städte auseinanderdrifteten$t$, true, 1),
    (v_q, $t$weil die Städte sich militärisch bekämpften$t$, false, 2),
    (v_q, $t$weil der Handel vollständig verboten wurde$t$, false, 3),
    (v_q, $t$weil zu viele Städte beitraten$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche neuen Häfen gewannen laut Text an Bedeutung, als sich die Handelsrouten veränderten?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Amsterdam und London$t$, true, 1),
    (v_q, $t$Lübeck und Hamburg$t$, false, 2),
    (v_q, $t$Danzig und Riga$t$, false, 3),
    (v_q, $t$Venedig und Genua$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was geschah mit der Bedeutung der Ostsee für den Handel?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie verlor ihre zentrale Stellung durch neue Seewege$t$, true, 1),
    (v_q, $t$Sie wurde noch wichtiger als zuvor$t$, false, 2),
    (v_q, $t$Sie blieb unverändert bedeutend$t$, false, 3),
    (v_q, $t$Sie wurde vollständig gesperrt$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie hängen die Entdeckung neuer Seewege und das Erstarken der Territorialstaaten laut Text zusammen mit dem Ende der Hanse?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Beide Entwicklungen schwächten gemeinsam die wirtschaftliche und politische Unabhängigkeit der Hansestädte$t$, true, 1),
    (v_q, $t$Sie standen in keinem Zusammenhang mit dem Niedergang$t$, false, 2),
    (v_q, $t$Sie stärkten gemeinsam die Position der Hanse$t$, false, 3),
    (v_q, $t$Nur die Territorialstaaten spielten eine Rolle$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Lehre zieht der Autor aus dem Niedergang der Hanse für heutige Handelsbündnisse?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Wirtschaftliche Macht ohne verbindliche politische Strukturen bleibt fragil$t$, true, 1),
    (v_q, $t$Handelsbündnisse sollten keine gemeinsamen Institutionen haben$t$, false, 2),
    (v_q, $t$Nur militärische Macht sichert wirtschaftlichen Erfolg$t$, false, 3),
    (v_q, $t$Handel funktioniert am besten ohne jegliche Struktur$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was müssen moderne Handelsallianzen laut Text entwickeln?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Mechanismen, um Meinungsverschiedenheiten zu überbrücken, ohne Flexibilität zu verlieren$t$, true, 1),
    (v_q, $t$Ein zentrales Militär zur Verteidigung$t$, false, 2),
    (v_q, $t$Eine gemeinsame Sprache für alle Mitglieder$t$, false, 3),
    (v_q, $t$Feste Handelsrouten für alle Ewigkeit$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche allgemeinere These über wirtschaftliche Systeme lässt sich aus dem gesamten Text ableiten?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Selbst erfolgreiche wirtschaftliche Systeme benötigen institutionelle Anpassungsfähigkeit, um dauerhaft zu bestehen$t$, true, 1),
    (v_q, $t$Wirtschaftlicher Erfolg hängt ausschließlich von geografischer Lage ab$t$, false, 2),
    (v_q, $t$Handelsbündnisse sind grundsätzlich zum Scheitern verurteilt$t$, false, 3),
    (v_q, $t$Zentralisierte Staaten sind immer erfolgreicher als lose Bündnisse$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'der Niedergang' im Text?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$der allmähliche Verfall oder Untergang$t$, true, 1),
    (v_q, $t$der wirtschaftliche Aufschwung$t$, false, 2),
    (v_q, $t$die politische Gründung$t$, false, 3),
    (v_q, $t$der militärische Sieg$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'fragil' in 'wirtschaftliche Macht ohne verbindliche politische Strukturen bleibt fragil'?$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$leicht zerbrechlich und instabil$t$, true, 1),
    (v_q, $t$dauerhaft stabil$t$, false, 2),
    (v_q, $t$finanziell wertvoll$t$, false, 3),
    (v_q, $t$politisch mächtig$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet der Ausdruck 'die Interessen der Städte drifteten auseinander'?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$die Interessen entwickelten sich zunehmend in unterschiedliche, gegensätzliche Richtungen$t$, true, 1),
    (v_q, $t$die Interessen wurden identisch$t$, false, 2),
    (v_q, $t$die Städte gründeten eine gemeinsame Regierung$t$, false, 3),
    (v_q, $t$die Städte verloren ihren Handel vollständig$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wähle die passende Passivform: 'Waren ___ über die Ostsee transportiert.'$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$wurden$t$, true, 1),
    (v_q, $t$waren$t$, false, 2),
    (v_q, $t$sind$t$, false, 3),
    (v_q, $t$haben$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Ergänze den Relativsatz: 'Die Hanse, ___ Städte gemeinsam ein Netzwerk aufbauten, beherrschte den europäischen Handel.'$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$deren$t$, true, 1),
    (v_q, $t$die$t$, false, 2),
    (v_q, $t$der$t$, false, 3),
    (v_q, $t$denen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welcher Satz drückt korrekt aus, was hätte anders sein können (Konjunktiv II der Vergangenheit)?$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Wenn die Hanse eine feste politische Institution gehabt hätte, wäre sie vielleicht nicht zerfallen.$t$, true, 1),
    (v_q, $t$Wenn die Hanse eine feste politische Institution hat, zerfällt sie nicht.$t$, false, 2),
    (v_q, $t$Wenn die Hanse eine feste politische Institution hätte, zerfällt sie nicht.$t$, false, 3),
    (v_q, $t$Die Hanse hat eine feste politische Institution gehabt, deshalb zerfiel sie nicht.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$Schreiben Sie einen argumentativen Absatz (6–9 Sätze): Was können moderne Wirtschaftsbündnisse aus dem Niedergang der Hanse lernen? Begründen Sie Ihre Meinung mit konkreten Argumenten.$t$, 1, 'normal', 'production', $t$Meiner Meinung nach bietet der Niedergang der Hanse wichtige Lehren für moderne Wirtschaftsbündnisse. Zunächst zeigt der Text, dass wirtschaftliche Macht ohne verbindliche politische Strukturen langfristig fragil bleibt, da Entscheidungen ohne feste Institutionen schwer durchzusetzen sind. Dies lässt sich auf heutige Handelsallianzen übertragen, die ebenfalls Mechanismen benötigen, um unterschiedliche nationale Interessen zu koordinieren. Zudem verdeutlicht das Beispiel der Hanse, dass externe Veränderungen, wie neue Handelsrouten damals, auch heute durch technologische oder geopolitische Verschiebungen ganze Bündnisse gefährden können. Deshalb sollten moderne Organisationen flexibel genug bleiben, um sich an solche externen Veränderungen anzupassen, ohne ihre gemeinsame Basis zu verlieren. Gleichzeitig zeigt die Geschichte, dass reine wirtschaftliche Vorteile allein kein Bündnis dauerhaft zusammenhalten können, wenn sich diese Vorteile ungleich verteilen. Aus diesem Grund halte ich institutionelle Anpassungsfähigkeit für den entscheidenden Faktor, der über den langfristigen Erfolg wirtschaftlicher Allianzen entscheidet.$t$);

END $block$;

-- 14. Der Fels, der Dichter verführte
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary) VALUES (
    'B2',
    $t$Der Fels, der Dichter verführte$t$,
    $t$Als Literaturstudentin habe ich mich lange gefragt, warum ausgerechnet die Sage von der Loreley, einem schönen, aber gefährlichen Wesen auf einem Felsen am Rhein, zu einem der zentralen Motive der deutschen Romantik wurde. Die Legende erzählt von einer Jungfrau, deren betörender Gesang Schiffer so sehr verzaubert, dass sie die gefährlichen Strömungen des Flusses übersehen und ihr Boot an den Klippen zerschellt. Clemens Brentano griff den Stoff zuerst literarisch auf, doch berühmt wurde er vor allem durch Heinrich Heines Gedicht, in dem der Dichter selbst gesteht, von der eigenen Erzählung ergriffen zu sein, obwohl er ihre Wahrheit anzweifelt.

Was diese Figur für die Romantiker so bedeutsam machte, ist ihre Verkörperung eines zentralen Spannungsfeldes: die Anziehungskraft der Natur, die zugleich Schönheit und tödliche Gefahr in sich vereint. Anders als die rationalistische Aufklärung, die Natur vor allem als beherrschbares Objekt betrachtete, sahen die Romantiker in ihr eine Macht, die den Menschen zugleich verzaubert und bedroht. Die Loreley symbolisiert damit nicht einfach eine verführerische Frau, sondern die unkontrollierbare Kraft der Natur selbst, der sich der rational denkende Mensch nicht entziehen kann.

Interessant ist zudem, dass die Loreley-Sage keine mittelalterliche Volkssage im eigentlichen Sinne ist, sondern eine literarische Erfindung des frühen neunzehnten Jahrhunderts, die sich jedoch so überzeugend in die Landschaft des Rheins einfügte, dass sie bald als altes Volksmärchen galt. Dieser Umstand zeigt, wie die Romantiker bewusst neue Mythen schufen, um ihre Vorstellung von Natur, Gefahr und Sehnsucht auszudrücken. Die Loreley bleibt damit ein Beispiel dafür, wie Literatur eine Landschaft mit Bedeutung auflädt, sodass ein einfacher Felsen im Rhein zum Symbol für die Ambivalenz zwischen Schönheit und Zerstörung wird.$t$,
    $t$En tant qu'étudiante en lettres, je me suis longtemps demandé pourquoi la légende de la Loreley, cette créature belle mais dangereuse assise sur un rocher au bord du Rhin, était devenue l'un des motifs centraux du romantisme allemand. La légende raconte l'histoire d'une jeune fille dont le chant envoûtant charme tellement les bateliers qu'ils en oublient les courants dangereux du fleuve et fracassent leur bateau contre les rochers. Clemens Brentano fut le premier à reprendre littérairement ce sujet, mais c'est surtout grâce au poème de Heinrich Heine qu'il devint célèbre — un poème dans lequel le poète lui-même avoue être saisi par son propre récit, bien qu'il en mette en doute la véracité.

Ce qui rendit cette figure si significative pour les romantiques, c'est qu'elle incarne une tension centrale : la force d'attraction de la nature, qui réunit à la fois beauté et danger mortel. Contrairement aux Lumières rationalistes, qui considéraient la nature avant tout comme un objet maîtrisable, les romantiques y voyaient une puissance qui à la fois enchante et menace l'être humain. La Loreley symbolise ainsi non pas simplement une femme séduisante, mais la force incontrôlable de la nature elle-même, à laquelle l'homme rationnel ne peut échapper.

Il est intéressant de noter, en outre, que la légende de la Loreley n'est pas à proprement parler une légende populaire médiévale, mais une invention littéraire du début du dix-neuvième siècle, qui s'intégra pourtant de manière si convaincante dans le paysage du Rhin qu'elle passa bientôt pour un vieux conte populaire. Cette circonstance montre comment les romantiques créèrent consciemment de nouveaux mythes pour exprimer leur conception de la nature, du danger et du désir. La Loreley reste ainsi un exemple de la manière dont la littérature charge un paysage de signification, au point qu'un simple rocher sur le Rhin devient le symbole de l'ambivalence entre beauté et destruction.$t$,
    $t${"Als":"En tant qu'","Literaturstudentin":"étudiante en lettres","habe":"ai","ich":"je","mich":"me","lange":"longtemps","gefragt":"demandé","warum":"pourquoi","ausgerechnet":"justement","die":"la","Sage":"légende","von":"de","der":"la","Loreley":"Loreley","einem":"une","schönen":"belle","aber":"mais","gefährlichen":"dangereuse","Wesen":"créature","auf":"sur","Felsen":"rocher","am":"au bord du","Rhein":"Rhin","zu":"en","zentralen":"centraux","Motive":"motifs","deutschen":"allemand","Romantik":"romantisme","wurde":"devint","Die":"La","Legende":"légende","erzählt":"raconte","einer":"d'une","Jungfrau":"jeune fille","deren":"dont le","betörender":"envoûtant","Gesang":"chant","Schiffer":"bateliers","so":"si","sehr":"tellement","verzaubert":"charme","dass":"que","sie":"ils","Strömungen":"courants","des":"du","Flusses":"fleuve","übersehen":"négligent","und":"et","ihr":"leur","Boot":"bateau","an":"contre","den":"les","Klippen":"rochers","zerschellt":"se fracasse","Clemens":"Clemens","Brentano":"Brentano","griff":"reprit","Stoff":"sujet","zuerst":"d'abord","literarisch":"littérairement","doch":"mais","berühmt":"célèbre","er":"il","vor allem":"surtout","allem":"tout","durch":"grâce à","Heinrich":"Heinrich","Heines":"de Heine","Gedicht":"poème","in":"dans","dem":"lequel","Dichter":"poète","selbst":"lui-même","gesteht":"avoue","eigenen":"propre","Erzählung":"récit","ergriffen":"saisi","sein":"être","obwohl":"bien que","ihre":"sa","Wahrheit":"véracité","anzweifelt":"mette en doute","Was":"Ce qui","diese":"cette","Figur":"figure","für":"pour","Romantiker":"romantiques","bedeutsam":"significative","machte":"rendit","ist":"est","Verkörperung":"incarnation","eines":"d'un","Spannungsfeldes":"champ de tension","Anziehungskraft":"force d'attraction","Natur":"nature","zugleich":"à la fois","Schönheit":"beauté","tödliche":"mortel","Gefahr":"danger","vereint":"réunit","Anders":"Contrairement","als":"à","rationalistische":"rationalistes","Aufklärung":"Lumières","beherrschbares":"maîtrisable","Objekt":"objet","betrachtete":"considéraient","sahen":"voyaient","eine":"une","Macht":"puissance","Menschen":"l'être humain","bedroht":"menace","symbolisiert":"symbolise","damit":"ainsi","nicht":"ne pas","einfach":"simplement","verführerische":"séduisante","Frau":"femme","sondern":"mais","unkontrollierbare":"incontrôlable","Kraft":"force","rational":"rationnel","denkende":"pensant","Mensch":"homme","entziehen":"échapper","kann":"peut","Interessant":"Intéressant","zudem":"en outre","Loreley-Sage":"légende de la Loreley","keine":"pas une","mittelalterliche":"médiévale","Volkssage":"légende populaire","im":"au","eigentlichen":"propre","Sinne":"sens","literarische":"littéraire","Erfindung":"invention","frühen":"début du","neunzehnten":"dix-neuvième","Jahrhunderts":"siècle","jedoch":"pourtant","überzeugend":"convaincante","Landschaft":"paysage","Rheins":"du Rhin","einfügte":"s'intégra","bald":"bientôt","altes":"vieux","Volksmärchen":"conte populaire","galt":"passa pour","Dieser":"Cette","Umstand":"circonstance","zeigt":"montre","wie":"comment","bewusst":"consciemment","neue":"nouveaux","Mythen":"mythes","schufen":"créèrent","um":"pour","Vorstellung":"conception","Sehnsucht":"désir","auszudrücken":"exprimer","bleibt":"reste","ein":"un","Beispiel":"exemple","dafür":"de cela","Literatur":"littérature","mit":"de","Bedeutung":"signification","auflädt":"charge","sodass":"au point que","einfacher":"un simple","zum":"en","Symbol":"symbole","Ambivalenz":"ambivalence","zwischen":"entre","Zerstörung":"destruction","wird":"devient","sich":"se","vor":"avant"}$t$::jsonb
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was geschieht den Schiffern laut der Loreley-Sage?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie werden vom Gesang der Loreley verzaubert und ihr Boot zerschellt an den Klippen$t$, true, 1),
    (v_q, $t$Sie retten die Loreley aus dem Fluss$t$, false, 2),
    (v_q, $t$Sie besiegen die Loreley im Kampf$t$, false, 3),
    (v_q, $t$Sie ignorieren die Loreley und fahren sicher weiter$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wer machte die Loreley-Sage vor allem durch ein berühmtes Gedicht bekannt?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Heinrich Heine$t$, true, 1),
    (v_q, $t$Clemens Brentano$t$, false, 2),
    (v_q, $t$Johann Wolfgang von Goethe$t$, false, 3),
    (v_q, $t$Friedrich Schiller$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie verhält sich der Dichter in Heines Gedicht laut Text zur eigenen Erzählung?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er ist von ihr ergriffen, obwohl er ihre Wahrheit anzweifelt$t$, true, 1),
    (v_q, $t$Er glaubt vollkommen an die Wahrheit der Sage$t$, false, 2),
    (v_q, $t$Er lehnt die Geschichte vollständig ab$t$, false, 3),
    (v_q, $t$Er hat die Geschichte selbst erlebt$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was verkörpert die Loreley laut Text?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$die Anziehungskraft und zugleich die Gefahr der Natur$t$, true, 1),
    (v_q, $t$die Macht der Vernunft über die Natur$t$, false, 2),
    (v_q, $t$die Sicherheit der Schifffahrt$t$, false, 3),
    (v_q, $t$die Kontrolle des Menschen über den Rhein$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie unterscheidet sich die romantische Sicht auf die Natur laut Text von der der Aufklärung?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Die Romantiker sahen die Natur als verzaubernde und zugleich bedrohliche Macht, die Aufklärung als beherrschbares Objekt$t$, true, 1),
    (v_q, $t$Beide sahen die Natur auf dieselbe Weise$t$, false, 2),
    (v_q, $t$Die Aufklärung fürchtete die Natur mehr als die Romantik$t$, false, 3),
    (v_q, $t$Die Romantiker betrachteten die Natur als rein rational$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche tiefere Bedeutung hat die Loreley laut dem Text über die einzelne Frauenfigur hinaus?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie steht symbolisch für die unkontrollierbare Kraft der Natur, der sich der Mensch nicht entziehen kann$t$, true, 1),
    (v_q, $t$Sie steht für die Überlegenheit der menschlichen Vernunft$t$, false, 2),
    (v_q, $t$Sie symbolisiert ausschließlich die Gefahren der Schifffahrt auf dem Rhein$t$, false, 3),
    (v_q, $t$Sie repräsentiert die politische Macht der Rheinstädte$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was ist die Loreley-Sage laut Text tatsächlich?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$eine literarische Erfindung des frühen neunzehnten Jahrhunderts$t$, true, 1),
    (v_q, $t$eine mittelalterliche Volkssage$t$, false, 2),
    (v_q, $t$ein antiker griechischer Mythos$t$, false, 3),
    (v_q, $t$ein historisch belegtes Ereignis$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was zeigt der Umstand, dass die Sage bald als altes Volksmärchen galt?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Die Romantiker schufen bewusst neue Mythen, die überzeugend wirkten$t$, true, 1),
    (v_q, $t$Die Menschen am Rhein erfanden die Geschichte im Mittelalter$t$, false, 2),
    (v_q, $t$Die Sage wurde nie ernst genommen$t$, false, 3),
    (v_q, $t$Die Geschichte wurde aus dem Griechischen übersetzt$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche allgemeinere Aussage über Literatur lässt sich aus der Loreley-Geschichte laut Text ableiten?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Literatur kann eine Landschaft mit Bedeutung aufladen und neue Mythen glaubwürdig erscheinen lassen$t$, true, 1),
    (v_q, $t$Literatur kann historische Fakten niemals verändern$t$, false, 2),
    (v_q, $t$Nur wahre Geschichten können zu bedeutenden Symbolen werden$t$, false, 3),
    (v_q, $t$Landschaften haben unabhängig von Literatur immer symbolische Bedeutung$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'betörend' in 'ihr betörender Gesang'?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$verführerisch faszinierend und bezaubernd$t$, true, 1),
    (v_q, $t$laut und störend$t$, false, 2),
    (v_q, $t$traurig und melancholisch$t$, false, 3),
    (v_q, $t$leise und unauffällig$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'unkontrollierbare Kraft' im Zusammenhang mit der Natur bei den Romantikern?$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$eine Macht, die sich menschlicher Beherrschung entzieht$t$, true, 1),
    (v_q, $t$eine technische Erfindung$t$, false, 2),
    (v_q, $t$eine wissenschaftliche Theorie$t$, false, 3),
    (v_q, $t$eine politische Bewegung$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'eine Landschaft mit Bedeutung aufladen', wie es im Text über die Loreley heißt?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$einem Ort durch literarische Erzählung eine symbolische, tiefere Bedeutung verleihen$t$, true, 1),
    (v_q, $t$eine Landschaft geografisch neu vermessen$t$, false, 2),
    (v_q, $t$einen Ort touristisch vermarkten$t$, false, 3),
    (v_q, $t$eine Landschaft unter Naturschutz stellen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wähle die passende Passivform: 'Der Stoff ___ zuerst von Clemens Brentano literarisch aufgegriffen.'$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$wurde$t$, true, 1),
    (v_q, $t$war$t$, false, 2),
    (v_q, $t$ist$t$, false, 3),
    (v_q, $t$hat$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Ergänze den Relativsatz: 'Heine schrieb ein Gedicht, ___ Wahrheit er selbst anzweifelt.'$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$dessen$t$, true, 1),
    (v_q, $t$das$t$, false, 2),
    (v_q, $t$der$t$, false, 3),
    (v_q, $t$dem$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welcher Satz drückt korrekt aus, wie es hätte sein können (Konjunktiv II der Vergangenheit)?$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Wenn die Sage nicht so überzeugend gewesen wäre, hätte man sie nie für ein altes Volksmärchen gehalten.$t$, true, 1),
    (v_q, $t$Wenn die Sage nicht so überzeugend ist, hält man sie nicht für ein altes Volksmärchen.$t$, false, 2),
    (v_q, $t$Die Sage war so überzeugend, dass man sie für ein altes Volksmärchen hält.$t$, false, 3),
    (v_q, $t$Wenn die Sage überzeugend war, hält man sie für ein Volksmärchen.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$Schreiben Sie einen argumentativen Absatz (6–9 Sätze): Warum schufen die Romantiker bewusst neue Mythen wie die Loreley-Sage, und welche Bedeutung haben solche modernen Mythen für eine Gesellschaft?$t$, 1, 'normal', 'production', $t$Meiner Meinung nach schufen die Romantiker bewusst neue Mythen wie die Loreley-Sage, um ein zentrales Anliegen ihrer Epoche auszudrücken: die ambivalente Beziehung zwischen Mensch und Natur. Anders als die rationalistische Aufklärung, die Natur als beherrschbares Objekt betrachtete, wollten die Romantiker die geheimnisvolle und zugleich bedrohliche Kraft der Natur literarisch greifbar machen. Die Erfindung der Loreley-Figur ermöglichte es ihnen, diese abstrakte Idee in einer konkreten, emotional wirkungsvollen Geschichte zu verankern. Interessanterweise zeigt der Text, dass diese literarische Erfindung so überzeugend war, dass sie später als altes Volksmärchen wahrgenommen wurde, was ihre kulturelle Wirkungskraft unterstreicht. Solche modernen Mythen erfüllen meiner Ansicht nach auch heute eine wichtige gesellschaftliche Funktion, da sie komplexe kollektive Gefühle und Ängste in verständliche Bilder übersetzen. Gesellschaften brauchen offenbar solche Erzählungen, um ihr Verhältnis zur Welt, zur Natur oder zur eigenen Identität greifbar zu machen. Aus diesem Grund halte ich die bewusste Schaffung neuer Mythen für ein bleibend wichtiges kulturelles Phänomen.$t$);

END $block$;

-- 15. Vom Trümmerfeld zum Fließband
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary) VALUES (
    'B2',
    $t$Vom Trümmerfeld zum Fließband$t$,
    $t$Als Ingenieur, der seit Jahren zur Geschichte der deutschen Automobilindustrie recherchiert, kehre ich immer wieder zu einem Bild zurück: das zerstörte Volkswagenwerk in Wolfsburg im Jahr 1945, dessen Hallen von alliierten Bomben schwer beschädigt waren und dessen Zukunft völlig ungewiss schien. Die Fabrik war ursprünglich unter nationalsozialistischer Herrschaft errichtet worden, um einen erschwinglichen Volkswagen für die Massen zu produzieren, doch während des Krieges wurde sie zur Rüstungsproduktion umfunktioniert, unter Einsatz von Zwangsarbeitern. Diese belastete Vergangenheit machte den Wiederaufbau zu weit mehr als einer rein technischen Herausforderung.

Es war ein britischer Offizier, Major Ivan Hirst, der 1945 entschied, die Produktion des Käfers wiederaufzunehmen, statt die Fabrik, wie zunächst geplant, abzureißen. Diese Entscheidung markierte den Beginn einer bemerkenswerten industriellen Erneuerung. In den folgenden Jahren entwickelte sich Volkswagen von einem Trümmerfeld zu einem der erfolgreichsten Automobilhersteller der Welt, dessen Käfer zum Symbol des westdeutschen Wirtschaftswunders wurde.

Was mich an dieser Geschichte besonders interessiert, ist die Frage, wie ein Industriezweig, der eng mit einer verbrecherischen Vergangenheit verknüpft war, zu einem positiven Symbol nationaler Erneuerung werden konnte. Der Erfolg beruhte nicht nur auf technischer Ingenieurskunst, sondern auch auf einer bewussten Neudefinition dessen, wofür das Produkt stehen sollte: nicht mehr nationalistische Propaganda, sondern bezahlbare Mobilität für gewöhnliche Familien in einer demokratischen Gesellschaft.

Diese Geschichte zeigt, dass wirtschaftlicher Wiederaufbau selten allein durch technische Kompetenz gelingt. Er erfordert auch eine kulturelle Neuinterpretation dessen, was ein Produkt oder eine Institution bedeutet. Der VW Käfer wurde zum Sinnbild eines Landes, das sich selbst neu erfinden musste, ohne seine Geschichte zu leugnen. Für mich liegt darin die eigentliche Lehre: Wiederaufbau bedeutet nicht Vergessen, sondern die bewusste Neugestaltung dessen, was aus der Vergangenheit weiterlebt.$t$,
    $t$En tant qu'ingénieur qui fait depuis des années des recherches sur l'histoire de l'industrie automobile allemande, je reviens sans cesse à une même image : l'usine Volkswagen détruite de Wolfsbourg en 1945, dont les halls étaient gravement endommagés par les bombes alliées et dont l'avenir semblait totalement incertain. L'usine avait été construite à l'origine sous le régime national-socialiste pour produire une voiture populaire abordable destinée aux masses, mais pendant la guerre, elle fut reconvertie à la production d'armement, avec recours à des travailleurs forcés. Ce passé lourd fit de la reconstruction bien plus qu'un simple défi technique.

Ce fut un officier britannique, le commandant Ivan Hirst, qui décida en 1945 de reprendre la production de la Coccinelle, plutôt que de démolir l'usine comme cela avait d'abord été prévu. Cette décision marqua le début d'un remarquable renouveau industriel. Au cours des années suivantes, Volkswagen se développa, passant d'un champ de ruines à l'un des constructeurs automobiles les plus prospères au monde, dont la Coccinelle devint le symbole du miracle économique ouest-allemand.

Ce qui m'intéresse particulièrement dans cette histoire, c'est la question de savoir comment un secteur industriel étroitement lié à un passé criminel a pu devenir un symbole positif de renouveau national. Le succès ne reposait pas seulement sur le savoir-faire technique, mais aussi sur une redéfinition consciente de ce que le produit devait représenter : non plus une propagande nationaliste, mais une mobilité abordable pour des familles ordinaires dans une société démocratique.

Cette histoire montre que la reconstruction économique réussit rarement par la seule compétence technique. Elle exige aussi une réinterprétation culturelle de ce que signifie un produit ou une institution. La Coccinelle VW devint le symbole d'un pays qui devait se réinventer sans renier son histoire. Pour moi, c'est là la véritable leçon : reconstruire ne signifie pas oublier, mais façonner consciemment ce qui, du passé, continue de vivre.$t$,
    $t${"Als":"En tant qu'","Ingenieur":"ingénieur","der":"qui","seit":"depuis","Jahren":"années","zur":"sur","Geschichte":"histoire","deutschen":"allemande","Automobilindustrie":"industrie automobile","recherchiert":"fait des recherches","kehre":"reviens","ich":"je","immer wieder":"sans cesse","wieder":"encore","zu":"à","einem":"une","Bild":"image","zurück":"reviens","das":"l'","zerstörte":"détruite","Volkswagenwerk":"usine Volkswagen","in":"à","Wolfsburg":"Wolfsbourg","im":"en","Jahr":"année","dessen":"dont les","Hallen":"halls","von":"par","alliierten":"alliées","Bomben":"bombes","schwer":"gravement","beschädigt":"endommagés","waren":"étaient","und":"et","Zukunft":"avenir","völlig":"totalement","ungewiss":"incertain","schien":"semblait","Die":"L'","Fabrik":"usine","war":"était","ursprünglich":"à l'origine","unter":"sous","nationalsozialistischer":"national-socialiste","Herrschaft":"régime","errichtet":"construite","worden":"été","um":"pour","einen":"une","erschwinglichen":"abordable","Volkswagen":"voiture populaire","für":"pour","die":"les","Massen":"masses","produzieren":"produire","doch":"mais","während":"pendant","des":"la","Krieges":"guerre","wurde":"fut","sie":"elle","Rüstungsproduktion":"production d'armement","umfunktioniert":"reconvertie","Einsatz":"recours","Zwangsarbeitern":"travailleurs forcés","Diese":"Ce","belastete":"lourd","Vergangenheit":"passé","machte":"fit","den":"la","Wiederaufbau":"reconstruction","weit":"bien","mehr":"plus","als":"qu'","einer":"un","rein":"simple","technischen":"technique","Herausforderung":"défi","Es":"Ce","ein":"un","britischer":"britannique","Offizier":"officier","Major":"commandant","Ivan":"Ivan","Hirst":"Hirst","entschied":"décida","Produktion":"production","Käfers":"de la Coccinelle","wiederaufzunehmen":"reprendre","statt":"plutôt que","zunächst":"d'abord","geplant":"prévu","abzureißen":"démolir","Entscheidung":"décision","markierte":"marqua","Beginn":"début","bemerkenswerten":"remarquable","industriellen":"industriel","Erneuerung":"renouveau","In":"Au cours des","folgenden":"suivantes","entwickelte":"développa","sich":"se","Trümmerfeld":"champ de ruines","erfolgreichsten":"plus prospères","Automobilhersteller":"constructeurs automobiles","Welt":"monde","Käfer":"Coccinelle","zum":"en","Symbol":"symbole","westdeutschen":"ouest-allemand","Wirtschaftswunders":"miracle économique","Was":"Ce qui","mich":"m'","an":"dans","dieser":"cette","besonders":"particulièrement","interessiert":"intéresse","ist":"est","Frage":"question","Industriezweig":"secteur industriel","eng":"étroitement","mit":"à","verbrecherischen":"criminel","verknüpft":"lié","positiven":"positif","nationaler":"national","werden":"devenir","konnte":"pu","Der":"Le","Erfolg":"succès","beruhte":"reposait","nicht nur":"pas seulement","nur":"seulement","auf":"sur","Ingenieurskunst":"savoir-faire technique","sondern":"mais","auch":"aussi","bewussten":"consciente","Neudefinition":"redéfinition","wofür":"de ce que","Produkt":"produit","stehen":"représenter","sollte":"devait","nationalistische":"nationaliste","Propaganda":"propagande","bezahlbare":"abordable","Mobilität":"mobilité","gewöhnliche":"ordinaires","Familien":"familles","demokratischen":"démocratique","Gesellschaft":"société","zeigt":"montre","dass":"que","wirtschaftlicher":"économique","selten":"rarement","allein":"seule","durch":"par","Kompetenz":"compétence","gelingt":"réussit","Er":"Elle","erfordert":"exige","eine":"une","kulturelle":"culturelle","Neuinterpretation":"réinterprétation","was":"ce que","oder":"ou","Institution":"institution","bedeutet":"signifie","VW":"VW","Sinnbild":"symbole","eines":"d'un","Landes":"pays","selbst":"se","neu":"se","erfinden":"réinventer","musste":"devait","ohne":"sans","seine":"son","leugnen":"renier","Für":"Pour","liegt":"réside","darin":"là","eigentliche":"véritable","Lehre":"leçon","Vergessen":"oublier","bewusste":"consciente","Neugestaltung":"façonnement","aus":"du","weiterlebt":"continue de vivre","immer":"toujours","nicht":"ne pas","technische":"technique","technischer":"technique","wie":"comment"}$t$::jsonb
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$In welchem Zustand befand sich das Volkswagenwerk 1945?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$schwer beschädigt durch alliierte Bomben$t$, true, 1),
    (v_q, $t$vollständig unversehrt$t$, false, 2),
    (v_q, $t$bereits modernisiert$t$, false, 3),
    (v_q, $t$neu erbaut$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wofür wurde die Fabrik während des Krieges genutzt?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$für die Rüstungsproduktion unter Einsatz von Zwangsarbeitern$t$, true, 1),
    (v_q, $t$ausschließlich für die Käferproduktion$t$, false, 2),
    (v_q, $t$als Lazarett für Soldaten$t$, false, 3),
    (v_q, $t$als Lagerhaus für Lebensmittel$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum war der Wiederaufbau der Fabrik laut Text mehr als eine rein technische Herausforderung?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$weil die Fabrik eng mit einer belasteten nationalsozialistischen Vergangenheit verbunden war$t$, true, 1),
    (v_q, $t$weil es an technischem Wissen fehlte$t$, false, 2),
    (v_q, $t$weil keine Arbeiter verfügbar waren$t$, false, 3),
    (v_q, $t$weil die Fabrik zu klein war$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wer entschied 1945, die Produktion des Käfers wiederaufzunehmen?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$der britische Offizier Ivan Hirst$t$, true, 1),
    (v_q, $t$ein deutscher Ingenieur$t$, false, 2),
    (v_q, $t$die amerikanische Regierung$t$, false, 3),
    (v_q, $t$der ehemalige Fabrikdirektor$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was war ursprünglich für die Fabrik geplant, bevor Hirst seine Entscheidung traf?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$der Abriss der Fabrik$t$, true, 1),
    (v_q, $t$die sofortige Modernisierung$t$, false, 2),
    (v_q, $t$die Umwandlung in ein Museum$t$, false, 3),
    (v_q, $t$der Verkauf an ein amerikanisches Unternehmen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Bedeutung hatte Hirsts Entscheidung für die weitere Entwicklung von Volkswagen laut Text?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie markierte den Beginn einer industriellen Erneuerung, die zum westdeutschen Wirtschaftswunder beitrug$t$, true, 1),
    (v_q, $t$Sie führte zur endgültigen Schließung der Fabrik$t$, false, 2),
    (v_q, $t$Sie hatte keinen nennenswerten Einfluss auf die spätere Entwicklung$t$, false, 3),
    (v_q, $t$Sie verzögerte den Wiederaufbau um Jahrzehnte$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wofür sollte der Käfer laut Text nach dem Krieg stehen?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$für bezahlbare Mobilität für gewöhnliche Familien in einer demokratischen Gesellschaft$t$, true, 1),
    (v_q, $t$für nationalistische Propaganda$t$, false, 2),
    (v_q, $t$für militärische Stärke$t$, false, 3),
    (v_q, $t$für exklusiven Luxus$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was war laut Autor entscheidend dafür, dass Volkswagen zu einem positiven Symbol wurde?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$eine bewusste Neudefinition dessen, wofür das Produkt stehen sollte$t$, true, 1),
    (v_q, $t$allein die technische Ingenieurskunst$t$, false, 2),
    (v_q, $t$die vollständige Verleugnung der Vergangenheit$t$, false, 3),
    (v_q, $t$staatliche Subventionen ohne weitere Maßnahmen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche allgemeinere These über wirtschaftlichen Wiederaufbau vertritt der Autor am Ende des Textes?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Wiederaufbau erfordert eine kulturelle Neuinterpretation der Vergangenheit, nicht deren Verleugnung$t$, true, 1),
    (v_q, $t$Wiederaufbau gelingt ausschließlich durch technische Kompetenz$t$, false, 2),
    (v_q, $t$Erfolgreicher Wiederaufbau setzt das vollständige Vergessen der Vergangenheit voraus$t$, false, 3),
    (v_q, $t$Nationale Symbole entstehen unabhängig von wirtschaftlichem Erfolg$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'das Trümmerfeld' im Text?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$ein durch Zerstörung entstandenes Gebiet voller Ruinen und Schutt$t$, true, 1),
    (v_q, $t$ein landwirtschaftliches Feld$t$, false, 2),
    (v_q, $t$ein neu gebautes Fabrikgelände$t$, false, 3),
    (v_q, $t$ein Museum für Industriegeschichte$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'die Neudefinition' in 'eine bewusste Neudefinition dessen, wofür das Produkt stehen sollte'?$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$eine bewusst veränderte, neue Bedeutung oder Interpretation von etwas$t$, true, 1),
    (v_q, $t$eine wissenschaftliche Erfindung$t$, false, 2),
    (v_q, $t$eine gesetzliche Regelung$t$, false, 3),
    (v_q, $t$eine finanzielle Neubewertung$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet der Ausdruck 'die bewusste Neugestaltung dessen, was aus der Vergangenheit weiterlebt'?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$die aktive und reflektierte Umformung eines historischen Erbes für die Gegenwart$t$, true, 1),
    (v_q, $t$das vollständige Vergessen der Vergangenheit$t$, false, 2),
    (v_q, $t$die exakte Wiederherstellung eines historischen Zustands$t$, false, 3),
    (v_q, $t$die juristische Aufarbeitung von Kriegsverbrechen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wähle die passende Passivform: 'Die Fabrik ___ ursprünglich unter nationalsozialistischer Herrschaft errichtet.'$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$wurde$t$, true, 1),
    (v_q, $t$war$t$, false, 2),
    (v_q, $t$ist$t$, false, 3),
    (v_q, $t$hat$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Ergänze den Relativsatz: 'Major Ivan Hirst, ___ Entscheidung die Produktion rettete, war ein britischer Offizier.'$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$dessen$t$, true, 1),
    (v_q, $t$der$t$, false, 2),
    (v_q, $t$die$t$, false, 3),
    (v_q, $t$dem$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welcher Satz drückt korrekt aus, was hätte passieren können (Konjunktiv II der Vergangenheit)?$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Wenn Hirst die Fabrik hätte abreißen lassen, wäre Volkswagen nie zu einem der größten Autohersteller geworden.$t$, true, 1),
    (v_q, $t$Wenn Hirst die Fabrik abreißen lässt, wird Volkswagen nie zu einem großen Autohersteller.$t$, false, 2),
    (v_q, $t$Hirst hat die Fabrik abreißen lassen, deshalb wurde Volkswagen groß.$t$, false, 3),
    (v_q, $t$Wenn Hirst die Fabrik abreißt, ist Volkswagen kein großer Autohersteller.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$Schreiben Sie einen argumentativen Absatz (6–9 Sätze): Kann ein Produkt oder eine Institution, die eng mit einer verbrecherischen Vergangenheit verbunden war, zu einem positiven Symbol werden? Diskutieren Sie am Beispiel des VW Käfers.$t$, 1, 'normal', 'production', $t$Meiner Meinung nach kann ein Produkt trotz einer belasteten Vergangenheit tatsächlich zu einem positiven Symbol werden, sofern eine ehrliche Auseinandersetzung mit dieser Geschichte stattfindet. Das Beispiel des VW Käfers im Text zeigt, dass der wirtschaftliche Erfolg nicht allein auf technischer Ingenieurskunst beruhte, sondern auch auf einer bewussten Neudefinition dessen, wofür das Produkt stehen sollte. Anstatt die nationalsozialistische Herkunft der Fabrik zu verschweigen, wurde der Käfer zu einem Symbol für erschwingliche Mobilität in einer demokratischen Gesellschaft umgedeutet. Wichtig erscheint mir dabei, dass dieser Wandel nicht durch das Vergessen der Vergangenheit gelang, sondern durch deren bewusste Neuinterpretation. Andererseits sollte man kritisch bleiben, wenn Unternehmen ihre problematische Geschichte lediglich zu Marketingzwecken instrumentalisieren, ohne echte Verantwortung zu übernehmen. Deshalb halte ich es für entscheidend, dass eine solche Neudefinition stets mit Transparenz und historischer Aufarbeitung einhergeht. Nur unter dieser Bedingung kann aus einer belasteten Vergangenheit tatsächlich ein glaubwürdiges positives Symbol entstehen.$t$);

END $block$;

-- 16. Die Sprache, die ein Volk formte
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary) VALUES (
    'B2',
    $t$Die Sprache, die ein Volk formte$t$,
    $t$Als Sprachforscherin beschäftige ich mich seit vielen Jahren mit der Frage, wie ein einzelner Mensch die Sprache einer ganzen Nation prägen kann. Martin Luther war kein Linguist im modernen Sinn, doch als er im sechzehnten Jahrhundert die Bibel ins Deutsche übersetzte, schuf er etwas, das weit über die Theologie hinausreichte. Er wählte bewusst eine Sprache, die von einfachen Leuten verstanden werden konnte, nicht das gelehrte Latein der Kirche. „Man muss dem Volk aufs Maul schauen“, soll er gesagt haben, und genau das tat er, indem er Wörter aus verschiedenen deutschen Dialekten zusammenführte.

Diese Übersetzung wurde durch den Buchdruck rasch verbreitet, und innerhalb weniger Jahrzehnte lasen Menschen in ganz Deutschland dieselbe Sprache, obwohl sie zuvor völlig unterschiedliche Mundarten gesprochen hatten. Ohne Luthers Arbeit, könnte man argumentieren, hätte sich eine einheitliche deutsche Schriftsprache viel später entwickelt, wenn überhaupt. Manche Historiker gehen sogar so weit zu behaupten, dass die spätere nationale Einheit Deutschlands ohne diese sprachliche Grundlage kaum denkbar gewesen wäre.

Was mich an dieser Geschichte besonders fasziniert, ist die Ambivalenz. Luthers Reformation brachte religiöse Spaltung, Kriege und tiefes gesellschaftliches Leid mit sich, und doch entstand aus diesem Bruch eine kulturelle Errungenschaft, die bis heute wirkt. Wenn ich heutige Studierende unterrichte, erinnere ich sie daran, dass Sprachwandel selten neutral verläuft. Er wird von Macht, Konflikt und manchmal von einem einzigen sturen Mönch angetrieben, der glaubte, dass jeder Mensch die heiligen Texte selbst lesen können sollte.$t$,
    $t$En tant que linguiste, je m'intéresse depuis de nombreuses années à la question de savoir comment un seul individu peut façonner la langue de toute une nation. Martin Luther n'était pas un linguiste au sens moderne, mais lorsqu'il traduisit la Bible en allemand au seizième siècle, il créa quelque chose qui dépassait de loin la théologie. Il choisit délibérément une langue que des gens simples pouvaient comprendre, et non le latin savant de l'Église. « Il faut regarder le peuple sur la bouche », aurait-il dit, et c'est exactement ce qu'il fit en réunissant des mots issus de différents dialectes allemands.

Cette traduction se répandit rapidement grâce à l'imprimerie, et en l'espace de quelques décennies, des gens dans toute l'Allemagne lisaient la même langue, alors qu'ils avaient auparavant parlé des dialectes totalement différents. Sans le travail de Luther, pourrait-on soutenir, une langue écrite allemande unifiée se serait développée bien plus tard, si tant est qu'elle se soit développée. Certains historiens vont même jusqu'à affirmer que l'unité nationale ultérieure de l'Allemagne aurait été à peine concevable sans ce fondement linguistique.

Ce qui me fascine particulièrement dans cette histoire, c'est l'ambivalence. La Réforme de Luther entraîna une division religieuse, des guerres et une profonde souffrance sociale, et pourtant, de cette rupture naquit une réalisation culturelle qui agit encore aujourd'hui. Quand j'enseigne aux étudiants d'aujourd'hui, je leur rappelle que le changement linguistique se déroule rarement de manière neutre. Il est porté par le pouvoir, le conflit, et parfois par un seul moine obstiné, qui croyait que chaque être humain devait pouvoir lire lui-même les textes sacrés.$t$,
    $t${"Als":"En tant que","Sprachforscherin":"linguiste","beschäftige":"intéresse","ich":"je","mich":"m'","seit":"depuis","vielen":"de nombreuses","Jahren":"années","mit":"à","der":"la","Frage":"question","wie":"comment","ein":"un","einzelner":"seul","Mensch":"individu","die":"la","Sprache":"langue","einer":"de toute","ganzen":"une","Nation":"nation","prägen":"façonner","kann":"peut","Martin":"Martin","Luther":"Luther","war":"n'était","kein":"pas un","Linguist":"linguiste","im":"au","modernen":"moderne","Sinn":"sens","doch":"mais","als":"lorsqu'","er":"il","sechzehnten":"seizième","Jahrhundert":"siècle","Bibel":"Bible","ins":"en","Deutsche":"allemand","übersetzte":"traduisit","schuf":"créa","etwas":"quelque chose","das":"qui","weit":"loin","über":"au-delà de","Theologie":"théologie","hinausreichte":"dépassait","Er":"Il","wählte":"choisit","bewusst":"délibérément","eine":"une","von":"par","einfachen":"simples","Leuten":"gens","verstanden":"comprise","werden":"être","konnte":"pouvait","nicht":"pas","gelehrte":"savant","Latein":"latin","Kirche":"Église","Man":"On","muss":"faut","dem":"au","Volk":"peuple","aufs":"sur","Maul":"la bouche","schauen":"regarder","soll":"aurait-il","gesagt":"dit","haben":"il","und":"et","genau":"exactement","tat":"fit","indem":"en","Wörter":"mots","aus":"issus de","verschiedenen":"différents","deutschen":"allemands","Dialekten":"dialectes","zusammenführte":"réunissant","Diese":"Cette","Übersetzung":"traduction","wurde":"fut","durch":"grâce à","den":"l'","Buchdruck":"imprimerie","rasch":"rapidement","verbreitet":"répandue","innerhalb":"en l'espace de","weniger":"quelques","Jahrzehnte":"décennies","lasen":"lisaient","Menschen":"gens","in":"dans","ganz":"toute","Deutschland":"Allemagne","dieselbe":"la même","obwohl":"alors que","sie":"ils","zuvor":"auparavant","völlig":"totalement","unterschiedliche":"différents","Mundarten":"dialectes","gesprochen":"parlé","hatten":"avaient","Ohne":"Sans","Luthers":"de Luther","Arbeit":"travail","könnte":"pourrait","man":"on","argumentieren":"soutenir","hätte":"se serait","sich":"se","einheitliche":"unifiée","deutsche":"allemande","Schriftsprache":"langue écrite","viel":"bien","später":"plus tard","entwickelt":"développée","wenn":"si","überhaupt":"tant est","Manche":"Certains","Historiker":"historiens","gehen":"vont","sogar":"même","so":"si","zu":"jusqu'à","behaupten":"affirmer","dass":"que","spätere":"ultérieure","nationale":"nationale","Einheit":"unité","Deutschlands":"de l'Allemagne","diese":"ce","sprachliche":"linguistique","Grundlage":"fondement","kaum":"à peine","denkbar":"concevable","gewesen":"été","wäre":"aurait été","Was":"Ce qui","an":"dans","dieser":"cette","Geschichte":"histoire","besonders":"particulièrement","fasziniert":"fascine","ist":"est","Ambivalenz":"ambivalence","Reformation":"Réforme","brachte":"entraîna","religiöse":"religieuse","Spaltung":"division","Kriege":"guerres","tiefes":"profonde","gesellschaftliches":"sociale","Leid":"souffrance","entstand":"naquit","diesem":"cette","Bruch":"rupture","kulturelle":"culturelle","Errungenschaft":"réalisation","bis":"jusqu'à","heute":"aujourd'hui","wirkt":"agit","Wenn":"Quand","heutige":"d'aujourd'hui","Studierende":"étudiants","unterrichte":"enseigne","erinnere":"rappelle","daran":"cela","Sprachwandel":"changement linguistique","selten":"rarement","neutral":"de manière neutre","verläuft":"se déroule","wird":"est","Macht":"pouvoir","Konflikt":"conflit","manchmal":"parfois","einem":"un","einzigen":"seul","sturen":"obstiné","Mönch":"moine","angetrieben":"porté","glaubte":"croyait","jeder":"chaque","heiligen":"sacrés","Texte":"textes","selbst":"lui-même","lesen":"lire","können":"pouvoir","sollte":"devait","ohne":"sans"}$t$::jsonb
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum wählte Luther eine einfache Sprache für seine Bibelübersetzung?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Weil er kein Latein konnte$t$, false, 1),
    (v_q, $t$Damit einfache Leute den Text verstehen konnten$t$, true, 2),
    (v_q, $t$Weil die Kirche es ihm befahl$t$, false, 3),
    (v_q, $t$Weil er die Kirche ärgern wollte$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet der Ausspruch „Man muss dem Volk aufs Maul schauen“?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Man soll das Volk zum Schweigen bringen$t$, false, 1),
    (v_q, $t$Man soll die Sprache der einfachen Leute beobachten und nutzen$t$, true, 2),
    (v_q, $t$Man soll dem Volk widersprechen$t$, false, 3),
    (v_q, $t$Man soll nur mit Gelehrten sprechen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche sprachliche Strategie verfolgte Luther laut dem Text bei seiner Übersetzung?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er übernahm ausschließlich das Latein der Kirche$t$, false, 1),
    (v_q, $t$Er erfand komplett neue Wörter$t$, false, 2),
    (v_q, $t$Er vereinte Wörter aus verschiedenen deutschen Dialekten$t$, true, 3),
    (v_q, $t$Er übersetzte wortwörtlich aus dem Griechischen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was half dabei, Luthers Übersetzung schnell zu verbreiten?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Das Radio$t$, false, 1),
    (v_q, $t$Der Buchdruck$t$, true, 2),
    (v_q, $t$Das Fernsehen$t$, false, 3),
    (v_q, $t$Die Post$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Folge hatte die schnelle Verbreitung von Luthers Bibel laut Text?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Die Dialekte wurden noch vielfältiger$t$, false, 1),
    (v_q, $t$Menschen in ganz Deutschland lasen dieselbe Sprache$t$, true, 2),
    (v_q, $t$Die Kirche verbot das Buch$t$, false, 3),
    (v_q, $t$Niemand konnte lesen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was vermutet die Autorin über die Entwicklung der deutschen Schriftsprache ohne Luthers Arbeit?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie wäre genauso schnell entstanden$t$, false, 1),
    (v_q, $t$Sie hätte sich viel später oder gar nicht einheitlich entwickelt$t$, true, 2),
    (v_q, $t$Sie wäre nie entstanden, das steht fest$t$, false, 3),
    (v_q, $t$Sie hätte sich auf Latein basiert$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche negativen Folgen hatte die Reformation laut Text?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Wirtschaftlichen Aufschwung$t$, false, 1),
    (v_q, $t$Religiöse Spaltung und Kriege$t$, true, 2),
    (v_q, $t$Bessere Ernten$t$, false, 3),
    (v_q, $t$Weniger Bildung$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was möchte die Autorin ihren Studierenden vermitteln?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Dass Sprachwandel immer friedlich verläuft$t$, false, 1),
    (v_q, $t$Dass Sprachwandel oft mit Macht und Konflikt verbunden ist$t$, true, 2),
    (v_q, $t$Dass Latein wichtiger ist als Deutsch$t$, false, 3),
    (v_q, $t$Dass Luther ein Linguist war$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie lässt sich die Haltung der Autorin gegenüber Luthers Wirkung am besten beschreiben?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Uneingeschränkt bewundernd$t$, false, 1),
    (v_q, $t$Vollständig ablehnend$t$, false, 2),
    (v_q, $t$Ambivalent, sie erkennt Errungenschaft und Leid zugleich an$t$, true, 3),
    (v_q, $t$Gleichgültig$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet „verbreiten“?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$verstecken$t$, false, 1),
    (v_q, $t$bekannt machen/ausbreiten$t$, true, 2),
    (v_q, $t$zerstören$t$, false, 3),
    (v_q, $t$übersetzen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$In welchem Satz wird „verbreiten“ korrekt verwendet?$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Die Nachricht verbreitete sich schnell in der Stadt.$t$, true, 1),
    (v_q, $t$Die Nachricht verbreitete das Haus.$t$, false, 2),
    (v_q, $t$Er verbreitete den Tisch.$t$, false, 3),
    (v_q, $t$Die Sprache verbreitete den Buchdruck.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welches Wort ist am ehesten ein Synonym zu „verbreiten“ im Kontext des Textes?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$einschränken$t$, false, 1),
    (v_q, $t$verheimlichen$t$, false, 2),
    (v_q, $t$propagieren/ausbreiten$t$, true, 3),
    (v_q, $t$reduzieren$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wählen Sie die korrekte Konjunktiv-II-Form: Ohne Luthers Arbeit ___ sich die Schriftsprache viel später entwickelt.$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$hat$t$, false, 1),
    (v_q, $t$hätte$t$, true, 2),
    (v_q, $t$wird$t$, false, 3),
    (v_q, $t$ist$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welcher Satz enthält eine korrekte Konjunktiv-II-Konstruktion der Vergangenheit?$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Ohne Luther hätte sich die Sprache später entwickelt.$t$, true, 1),
    (v_q, $t$Ohne Luther hat sich die Sprache später entwickelt.$t$, false, 2),
    (v_q, $t$Ohne Luther entwickelt sich die Sprache später.$t$, false, 3),
    (v_q, $t$Ohne Luther entwickelte sich die Sprache später.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Formen Sie um: „Vielleicht entsteht die nationale Einheit ohne diese Grundlage nicht.“ → Konjunktiv II der Vergangenheit:$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Vielleicht wäre die nationale Einheit ohne diese Grundlage kaum entstanden.$t$, true, 1),
    (v_q, $t$Vielleicht entsteht die nationale Einheit nicht.$t$, false, 2),
    (v_q, $t$Vielleicht ist die nationale Einheit nicht entstanden.$t$, false, 3),
    (v_q, $t$Vielleicht entstand die nationale Einheit nicht.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$Schreiben Sie einen argumentativen Absatz (6-9 Sätze): Kann eine einzelne Person die Sprache und Kultur einer ganzen Nation verändern? Nehmen Sie Stellung anhand des Beispiels von Martin Luther.$t$, 1, 'normal', 'production', $t$Ich bin überzeugt, dass einzelne Personen tatsächlich enormen Einfluss auf die Sprache und Kultur einer Nation haben können, auch wenn dieser Einfluss selten allein entsteht. Martin Luther zeigt dies deutlich, denn seine Bibelübersetzung schuf eine gemeinsame Schriftsprache für Menschen, die zuvor völlig unterschiedliche Dialekte sprachen. Ohne den Buchdruck hätte sich seine Übersetzung jedoch nie so schnell verbreiten können, weshalb man seinen Erfolg nicht isoliert betrachten darf. Zudem trafen seine Ideen auf eine Gesellschaft, die bereits nach religiöser und politischer Veränderung suchte. Dennoch bleibt bemerkenswert, dass ausgerechnet die sprachlichen Entscheidungen eines einzelnen Mönchs bis heute im modernen Deutsch nachwirken. Man sollte daher weder den Einzelnen überschätzen noch die historischen Umstände ignorieren. Beide Faktoren zusammen erklären, warum Luthers Wirkung so nachhaltig war. Für mich zeigt dieses Beispiel, dass große kulturelle Veränderungen meist aus dem Zusammenspiel von individuellem Mut und günstigen historischen Bedingungen entstehen.$t$);

END $block$;

-- 17. Der Turm, der Jahrhunderte überdauerte
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary) VALUES (
    'B2',
    $t$Der Turm, der Jahrhunderte überdauerte$t$,
    $t$Als Architekturhistoriker habe ich mein halbes Berufsleben mit einem einzigen Gebäude verbracht: dem Kölner Dom. Wenn Besucher staunend vor der gotischen Fassade stehen, wissen die wenigsten, dass zwischen dem Baubeginn im Jahr 1248 und der endgültigen Fertigstellung im Jahr 1880 mehr als sechshundert Jahre lagen. Im Mittelalter wurde mit großem Enthusiasmus begonnen, doch schon im sechzehnten Jahrhundert stoppten die Arbeiten fast vollständig, weil das Geld fehlte und sich die religiösen Prioritäten verschoben hatten. Jahrhundertelang stand ein riesiger Baukran auf dem unvollendeten Turm, der zu einem seltsamen Wahrzeichen der Stadt wurde, fast wie ein Symbol des Aufschubs selbst.

Erst im neunzehnten Jahrhundert, als sich in Deutschland ein neues Nationalbewusstsein entwickelte, wurde der Bau mit preußischer Unterstützung fortgesetzt und schließlich vollendet. Der Dom, der ursprünglich ein rein religiöses Projekt gewesen war, wurde nun auch als Symbol deutscher Einheit und Ingenieurskunst gefeiert.

Für mich zeigt diese lange Geschichte, dass ein Bauwerk niemals nur aus Stein besteht. Es trägt die Widersprüche, Unterbrechungen und Hoffnungen aller Generationen in sich, die daran gearbeitet haben. Wenn ich heute mit Studierenden durch die Kathedrale gehe, frage ich sie oft, ob sie glauben, dass wir heute überhaupt noch fähig wären, ein Projekt zu beginnen, dessen Vollendung wir selbst nie erleben würden. Die meisten schütteln den Kopf. Vielleicht ist genau das der größte Unterschied zwischen unserer Zeit und jener der mittelalterlichen Baumeister, die trotz aller Ungewissheit weiterbauten.$t$,
    $t$En tant qu'historien de l'architecture, j'ai passé la moitié de ma vie professionnelle avec un seul et unique bâtiment : la cathédrale de Cologne. Quand les visiteurs se tiennent, émerveillés, devant la façade gothique, bien peu savent qu'entre le début de la construction en 1248 et son achèvement définitif en 1880, plus de six cents ans se sont écoulés. Au Moyen Âge, les travaux commencèrent avec un grand enthousiasme, mais dès le seizième siècle ils s'arrêtèrent presque complètement, faute d'argent et parce que les priorités religieuses avaient changé. Pendant des siècles, une immense grue de chantier se dressa sur la tour inachevée, devenant un étrange emblème de la ville, presque comme un symbole de l'ajournement lui-même.

Ce n'est qu'au dix-neuvième siècle, quand se développa en Allemagne une nouvelle conscience nationale, que la construction fut reprise avec le soutien prussien et finalement achevée. La cathédrale, qui avait été à l'origine un projet purement religieux, fut désormais aussi célébrée comme un symbole de l'unité allemande et du génie de l'ingénierie.

Pour moi, cette longue histoire montre qu'un édifice n'est jamais fait de pierre seulement. Il porte en lui les contradictions, les interruptions et les espoirs de toutes les générations qui y ont travaillé. Quand je traverse aujourd'hui la cathédrale avec des étudiants, je leur demande souvent s'ils croient que nous serions encore capables aujourd'hui d'entreprendre un projet dont nous ne verrions jamais l'achèvement nous-mêmes. La plupart secouent la tête. C'est peut-être précisément là la plus grande différence entre notre époque et celle des bâtisseurs médiévaux, qui continuaient de construire malgré toute incertitude.$t$,
    $t${"Als":"En tant qu'","Architekturhistoriker":"historien de l'architecture","habe":"ai","ich":"j'","mein":"ma","halbes":"moitié de","Berufsleben":"vie professionnelle","mit":"avec","einem":"un","einzigen":"seul et unique","Gebäude":"bâtiment","verbracht":"passé","dem":"la","Kölner":"de Cologne","Dom":"cathédrale","Wenn":"Quand","Besucher":"visiteurs","staunend":"émerveillés","vor":"devant","der":"la","gotischen":"gothique","Fassade":"façade","stehen":"se tiennent","wissen":"savent","die":"les","wenigsten":"moins nombreux","dass":"qu'","zwischen":"entre","Baubeginn":"début de la construction","im":"en","Jahr":"année","und":"et","endgültigen":"définitif","Fertigstellung":"achèvement","mehr":"plus","als":"que","sechshundert":"six cents","Jahre":"ans","lagen":"s'écoulèrent","Im":"Au","Mittelalter":"Moyen Âge","wurde":"furent","großem":"grand","Enthusiasmus":"enthousiasme","begonnen":"commencés","doch":"mais","schon":"dès","sechzehnten":"seizième","Jahrhundert":"siècle","stoppten":"s'arrêtèrent","Arbeiten":"travaux","fast":"presque","vollständig":"complètement","weil":"parce que","das":"l'","Geld":"argent","fehlte":"manquait","sich":"s'étaient","religiösen":"religieuses","Prioritäten":"priorités","verschoben":"déplacées","hatten":"avaient","Jahrhundertelang":"Pendant des siècles","stand":"se dressa","ein":"une","riesiger":"immense","Baukran":"grue de chantier","auf":"sur","unvollendeten":"inachevée","Turm":"tour","zu":"en","seltsamen":"étrange","Wahrzeichen":"emblème","Stadt":"ville","wie":"comme","Symbol":"symbole","des":"de l'","Aufschubs":"ajournement","selbst":"lui-même","Erst":"Ce n'est qu'","neunzehnten":"dix-neuvième","in":"en","Deutschland":"Allemagne","neues":"nouvelle","Nationalbewusstsein":"conscience nationale","entwickelte":"développa","Bau":"construction","preußischer":"prussien","Unterstützung":"soutien","fortgesetzt":"reprise","schließlich":"finalement","vollendet":"achevée","Der":"La","ursprünglich":"à l'origine","rein":"purement","religiöses":"religieux","Projekt":"projet","gewesen":"été","war":"avait","nun":"désormais","auch":"aussi","deutscher":"allemande","Einheit":"unité","Ingenieurskunst":"génie de l'ingénierie","gefeiert":"célébrée","Für":"Pour","mich":"moi","zeigt":"montre","diese":"cette","lange":"longue","Geschichte":"histoire","Bauwerk":"édifice","niemals":"jamais","nur":"seulement","aus":"de","Stein":"pierre","besteht":"fait","Es":"Il","trägt":"porte","Widersprüche":"contradictions","Unterbrechungen":"interruptions","Hoffnungen":"espoirs","aller":"de toutes","Generationen":"générations","daran":"y","gearbeitet":"travaillé","haben":"ont","heute":"aujourd'hui","Studierenden":"étudiants","durch":"à travers","Kathedrale":"cathédrale","gehe":"traverse","frage":"demande","sie":"leur","oft":"souvent","ob":"s'ils","glauben":"croient","wir":"nous","überhaupt":"encore","noch":"encore","fähig":"capables","wären":"serions","beginnen":"entreprendre","dessen":"dont","Vollendung":"achèvement","nie":"jamais","erleben":"verrions","würden":"verrions","Die":"La","meisten":"plupart","schütteln":"secouent","den":"la","Kopf":"tête","Vielleicht":"Peut-être","genau":"précisément","größte":"plus grande","Unterschied":"différence","unserer":"notre","Zeit":"époque","jener":"celle des","mittelalterlichen":"médiévaux","Baumeister":"bâtisseurs","trotz":"malgré","Ungewissheit":"incertitude","weiterbauten":"continuaient de construire","ist":"est"}$t$::jsonb
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie lange dauerte der Bau des Kölner Doms insgesamt?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$etwa 100 Jahre$t$, false, 1),
    (v_q, $t$mehr als 600 Jahre$t$, true, 2),
    (v_q, $t$genau 50 Jahre$t$, false, 3),
    (v_q, $t$etwa 20 Jahre$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum wurden die Bauarbeiten im 16. Jahrhundert fast gestoppt?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Wegen eines Krieges$t$, false, 1),
    (v_q, $t$Weil Geld fehlte und sich religiöse Prioritäten verschoben$t$, true, 2),
    (v_q, $t$Weil der Architekt starb$t$, false, 3),
    (v_q, $t$Weil der Dom fertig war$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was symbolisierte der jahrhundertelang stehende Baukran auf dem unvollendeten Turm laut Text?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Den wirtschaftlichen Wohlstand der Stadt$t$, false, 1),
    (v_q, $t$Fast ein Symbol des Aufschubs selbst$t$, true, 2),
    (v_q, $t$Die religiöse Einheit Europas$t$, false, 3),
    (v_q, $t$Den Beginn der Reformation$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wann wurde der Kölner Dom endgültig fertiggestellt?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$1248$t$, false, 1),
    (v_q, $t$1517$t$, false, 2),
    (v_q, $t$1880$t$, true, 3),
    (v_q, $t$1945$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was ermöglichte im 19. Jahrhundert die Fortsetzung des Baus?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Preußische Unterstützung und neues Nationalbewusstsein$t$, true, 1),
    (v_q, $t$Ein neuer Papst$t$, false, 2),
    (v_q, $t$Die Erfindung des Zements$t$, false, 3),
    (v_q, $t$Ausländische Investoren$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie veränderte sich die symbolische Bedeutung des Doms im 19. Jahrhundert laut Text?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er blieb rein religiös$t$, false, 1),
    (v_q, $t$Er wurde zusätzlich zum Symbol deutscher Einheit und Ingenieurskunst$t$, true, 2),
    (v_q, $t$Er verlor jede Bedeutung$t$, false, 3),
    (v_q, $t$Er wurde abgerissen und neu gebaut$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was fragt der Autor seine Studierenden oft?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Ob sie den Dom mögen$t$, false, 1),
    (v_q, $t$Ob wir heute noch fähig wären, ein Projekt ohne eigene Vollendung zu beginnen$t$, true, 2),
    (v_q, $t$Ob der Dom zu teuer war$t$, false, 3),
    (v_q, $t$Ob sie Architektur studieren wollen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie reagieren die meisten Studierenden auf diese Frage laut Text?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie stimmen begeistert zu$t$, false, 1),
    (v_q, $t$Sie schütteln den Kopf$t$, true, 2),
    (v_q, $t$Sie wissen es nicht$t$, false, 3),
    (v_q, $t$Sie lachen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche These vertritt der Autor über Bauwerke im letzten Absatz?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Bauwerke bestehen nur aus Stein$t$, false, 1),
    (v_q, $t$Bauwerke tragen die Widersprüche und Hoffnungen der Generationen in sich$t$, true, 2),
    (v_q, $t$Bauwerke sind bedeutungslos$t$, false, 3),
    (v_q, $t$Bauwerke sollten schnell gebaut werden$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet „vollenden“?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$beginnen$t$, false, 1),
    (v_q, $t$fertigstellen$t$, true, 2),
    (v_q, $t$zerstören$t$, false, 3),
    (v_q, $t$planen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welcher Satz verwendet „vollenden“ korrekt?$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Die Arbeiter vollendeten den Turm nach Jahrhunderten.$t$, true, 1),
    (v_q, $t$Die Arbeiter vollendeten den Kran.$t$, false, 2),
    (v_q, $t$Der Turm vollendete die Arbeiter.$t$, false, 3),
    (v_q, $t$Sie vollendeten nie zu bauen.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welches Wort passt NICHT als Synonym zu „vollenden“?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$fertigstellen$t$, false, 1),
    (v_q, $t$abschließen$t$, false, 2),
    (v_q, $t$beginnen$t$, true, 3),
    (v_q, $t$zu Ende bringen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wählen Sie die Passivform: Der Bau ___ im 19. Jahrhundert fortgesetzt.$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$hat$t$, false, 1),
    (v_q, $t$wurde$t$, true, 2),
    (v_q, $t$ist$t$, false, 3),
    (v_q, $t$wird gewesen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welcher Satz steht im Passiv?$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Preußen unterstützte den Bau.$t$, false, 1),
    (v_q, $t$Der Bau wurde von Preußen unterstützt.$t$, true, 2),
    (v_q, $t$Preußen baute den Dom.$t$, false, 3),
    (v_q, $t$Preußen finanzierte den Bau.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Formen Sie ins Passiv um: „Man feierte den Dom als Symbol deutscher Einheit.“$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Der Dom wurde als Symbol deutscher Einheit gefeiert.$t$, true, 1),
    (v_q, $t$Der Dom feierte die deutsche Einheit.$t$, false, 2),
    (v_q, $t$Man hat den Dom gefeiert gehabt.$t$, false, 3),
    (v_q, $t$Der Dom ist ein Symbol.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$Schreiben Sie einen argumentativen Absatz (6-9 Sätze): Sollten Städte auch heute noch Jahrhundertprojekte beginnen, deren Vollendung sie selbst nicht erleben werden?$t$, 1, 'normal', 'production', $t$Meiner Meinung nach sollten Städte durchaus den Mut haben, langfristige Projekte zu beginnen, auch wenn deren Vollendung erst künftige Generationen erleben werden. Der Kölner Dom zeigt eindrucksvoll, dass solche Vorhaben trotz jahrhundertelanger Unterbrechungen am Ende zu bedeutenden kulturellen Symbolen werden können. Allerdings verlangt ein solches Projekt enorme finanzielle und politische Stabilität, die in unserer schnelllebigen Zeit selten gegeben ist. Zudem stellt sich die Frage, ob heutige Bürger bereit wären, über Generationen hinweg für ein Ziel zu zahlen, das sie selbst nie vollständig sehen werden. Andererseits könnten gerade Klimaschutzprojekte oder große Infrastrukturvorhaben von einem ähnlichen Weitblick profitieren. Wenn wir nur in kurzen Legislaturperioden denken, verlieren wir die Fähigkeit, wirklich nachhaltig zu planen. Deshalb glaube ich, dass wir von den mittelalterlichen Baumeistern lernen könnten, auch wenn unsere Prioritäten heute andere sind. Mut zur langfristigen Vision bleibt für mich ein wichtiger Wert, unabhängig vom jeweiligen Jahrhundert.$t$);

END $block$;

-- 18. Zwischen Tradition und Massenware
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary) VALUES (
    'B2',
    $t$Zwischen Tradition und Massenware$t$,
    $t$Als Brauereimeisterin aus München erlebe ich das Oktoberfest jedes Jahr aus zwei Perspektiven zugleich: als Teil einer jahrhundertealten Tradition und als Zeugin einer gewaltigen touristischen Maschine. Das Fest wurde 1810 anlässlich einer königlichen Hochzeit gegründet und war ursprünglich ein lokales Ereignis mit Pferderennen und bescheidenen Ständen. Heute kommen jährlich über sechs Millionen Menschen aus aller Welt auf die Theresienwiese, viele von ihnen, ohne überhaupt zu wissen, woher das Fest eigentlich stammt.

Ich sehe beide Seiten dieser Entwicklung. Einerseits sichert der Tourismus unzähligen Arbeitsplätzen und bringt der Stadt enorme Einnahmen, die auch der einheimischen Bevölkerung zugutekommen. Andererseits werde ich manchmal das Gefühl nicht los, dass die eigentliche bayerische Kultur hinter Plastikkrügen, überteuertem Bier und massenproduzierten Trachten verschwindet. Wenn Touristen in billigen Dirndl-Kostümen posieren, die in Fabriken in Asien hergestellt wurden, frage ich mich, was von der ursprünglichen Idee eigentlich übrig geblieben ist.

Dennoch will ich nicht nur klagen. Innerhalb der großen Zelte gibt es weiterhin echte Handwerkskunst, echte Familienbetriebe, die seit Generationen brauen, und echte Musik, die von lokalen Kapellen gespielt wird. Wenn ich abends durch die Reihen gehe und alte Nachbarn treffe, die seit Jahrzehnten am selben Tisch sitzen, spüre ich, dass der Kern der Tradition noch lebt, auch wenn er von kommerziellem Lärm umgeben ist. Es liegt an uns, diesen Kern zu bewahren, während wir gleichzeitig die wirtschaftlichen Vorteile des Festes nicht leugnen.$t$,
    $t$En tant que maître-brasseuse de Munich, je vis l'Oktoberfest chaque année à travers deux perspectives à la fois : comme faisant partie d'une tradition séculaire, et comme témoin d'une gigantesque machine touristique. La fête fut fondée en 1810 à l'occasion d'un mariage royal et était à l'origine un événement local avec des courses de chevaux et des stands modestes. Aujourd'hui, plus de six millions de personnes viennent chaque année du monde entier sur la Theresienwiese, beaucoup d'entre elles sans même savoir d'où vient réellement cette fête.

Je vois les deux facettes de cette évolution. D'un côté, le tourisme assure d'innombrables emplois et apporte à la ville d'énormes revenus, dont profite aussi la population locale. De l'autre, je ne parviens parfois pas à me défaire du sentiment que la véritable culture bavaroise disparaît derrière les chopes en plastique, la bière hors de prix et les costumes traditionnels produits en masse. Quand des touristes posent dans des costumes de dirndl bon marché fabriqués dans des usines en Asie, je me demande ce qu'il reste vraiment de l'idée originelle.

Je ne veux pourtant pas seulement me plaindre. À l'intérieur des grandes tentes, il existe encore un véritable artisanat, de véritables entreprises familiales qui brassent depuis des générations, et une véritable musique jouée par des orchestres locaux. Quand je passe le soir entre les rangées et que je retrouve de vieux voisins assis depuis des décennies à la même table, je sens que le cœur de la tradition est encore vivant, même s'il est entouré de bruit commercial. C'est à nous de préserver ce cœur, tout en ne niant pas, en même temps, les avantages économiques de la fête.$t$,
    $t${"Als":"En tant que","Brauereimeisterin":"maître-brasseuse","aus":"de","München":"Munich","erlebe":"vis","ich":"je","das":"l'","Oktoberfest":"Oktoberfest","jedes":"chaque","Jahr":"année","zwei":"deux","Perspektiven":"perspectives","zugleich":"à la fois","als":"comme","Teil":"faisant partie","einer":"d'une","jahrhundertealten":"séculaire","Tradition":"tradition","und":"et","Zeugin":"témoin","gewaltigen":"gigantesque","touristischen":"touristique","Maschine":"machine","Das":"La","Fest":"fête","wurde":"fut","anlässlich":"à l'occasion","königlichen":"royal","Hochzeit":"mariage","gegründet":"fondée","war":"était","ursprünglich":"à l'origine","ein":"un","lokales":"local","Ereignis":"événement","mit":"avec","Pferderennen":"courses de chevaux","bescheidenen":"modestes","Ständen":"stands","Heute":"Aujourd'hui","kommen":"viennent","jährlich":"chaque année","über":"plus de","sechs":"six","Millionen":"millions","Menschen":"personnes","aller":"du monde","Welt":"monde","auf":"sur","die":"la","Theresienwiese":"Theresienwiese","viele":"beaucoup","von":"d'entre","ihnen":"elles","ohne":"sans","überhaupt":"même","zu":"de","wissen":"savoir","woher":"d'où","eigentlich":"réellement","stammt":"vient","Ich":"Je","sehe":"vois","beide":"les deux","Seiten":"facettes","dieser":"cette","Entwicklung":"évolution","Einerseits":"D'un côté","sichert":"assure","der":"le","Tourismus":"tourisme","unzähligen":"d'innombrables","Arbeitsplätzen":"emplois","bringt":"apporte","Stadt":"ville","enorme":"énormes","Einnahmen":"revenus","auch":"aussi","einheimischen":"locale","Bevölkerung":"population","zugutekommen":"profite","Andererseits":"De l'autre","werde":"parviens","manchmal":"parfois","Gefühl":"sentiment","nicht":"ne pas","los":"me défaire","dass":"que","eigentliche":"véritable","bayerische":"bavaroise","Kultur":"culture","hinter":"derrière","Plastikkrügen":"chopes en plastique","überteuertem":"hors de prix","Bier":"bière","massenproduzierten":"produits en masse","Trachten":"costumes traditionnels","verschwindet":"disparaît","Wenn":"Quand","Touristen":"touristes","in":"dans","billigen":"bon marché","Dirndl-Kostümen":"costumes de dirndl","posieren":"posent","Fabriken":"usines","Asien":"Asie","hergestellt":"fabriqués","wurden":"furent","frage":"demande","mich":"me","was":"ce qu'","ursprünglichen":"originelle","Idee":"idée","übrig":"reste","geblieben":"resté","ist":"est","Dennoch":"Pourtant","will":"veux","nur":"seulement","klagen":"me plaindre","Innerhalb":"À l'intérieur de","großen":"grandes","Zelte":"tentes","gibt":"existe","es":"il","weiterhin":"encore","echte":"véritable","Handwerkskunst":"artisanat","Familienbetriebe":"entreprises familiales","seit":"depuis","Generationen":"générations","brauen":"brassent","Musik":"musique","lokalen":"locaux","Kapellen":"orchestres","gespielt":"jouée","wird":"est","abends":"le soir","durch":"à travers","Reihen":"rangées","gehe":"passe","alte":"vieux","Nachbarn":"voisins","treffe":"retrouve","Jahrzehnten":"décennies","am":"à la","selben":"même","Tisch":"table","sitzen":"assis","spüre":"sens","Kern":"cœur","noch":"encore","lebt":"vivant","er":"il","kommerziellem":"commercial","Lärm":"bruit","umgeben":"entouré","Es":"Cela","liegt":"revient","an":"à","uns":"nous","diesen":"ce","bewahren":"préserver","während":"tout en","wir":"nous","gleichzeitig":"en même temps","wirtschaftlichen":"économiques","Vorteile":"avantages","des":"de la","Festes":"fête","leugnen":"nier","wenn":"quand"}$t$::jsonb
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wann wurde das Oktoberfest gegründet?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$1810$t$, true, 1),
    (v_q, $t$1900$t$, false, 2),
    (v_q, $t$1945$t$, false, 3),
    (v_q, $t$1750$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Aus welchem Anlass wurde das Oktoberfest ursprünglich gegründet?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Eine königliche Hochzeit$t$, true, 1),
    (v_q, $t$Ein Kriegsende$t$, false, 2),
    (v_q, $t$Eine Erntedankfeier$t$, false, 3),
    (v_q, $t$Ein Fußballspiel$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie unterschied sich das ursprüngliche Fest von der heutigen Veranstaltung laut Text?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Es war von Anfang an international$t$, false, 1),
    (v_q, $t$Es war ein lokales Ereignis mit Pferderennen und bescheidenen Ständen$t$, true, 2),
    (v_q, $t$Es fand nur einmal statt$t$, false, 3),
    (v_q, $t$Es war viel größer als heute$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie viele Menschen besuchen das Oktoberfest laut Text jährlich?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$über sechs Millionen$t$, true, 1),
    (v_q, $t$eine Million$t$, false, 2),
    (v_q, $t$zehntausend$t$, false, 3),
    (v_q, $t$hunderttausend$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welchen Vorteil des Tourismus nennt die Autorin?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Weniger Verkehr$t$, false, 1),
    (v_q, $t$Arbeitsplätze und Einnahmen für die Stadt$t$, true, 2),
    (v_q, $t$Weniger Touristen$t$, false, 3),
    (v_q, $t$Bessere Umwelt$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Kritik äußert die Autorin am kommerziellen Aspekt des Festes?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Es gibt zu wenig Bier$t$, false, 1),
    (v_q, $t$Die eigentliche bayerische Kultur verschwindet hinter Massenware$t$, true, 2),
    (v_q, $t$Die Zelte sind zu klein$t$, false, 3),
    (v_q, $t$Es gibt keine Musik mehr$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was findet die Autorin trotz allem noch echt am Fest?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Die Plastikkrüge$t$, false, 1),
    (v_q, $t$Echte Handwerkskunst und Familienbetriebe$t$, true, 2),
    (v_q, $t$Die importierten Trachten$t$, false, 3),
    (v_q, $t$Nichts mehr$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was spürt die Autorin, wenn sie abends durch die Reihen geht?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Dass der Kern der Tradition noch lebt$t$, true, 1),
    (v_q, $t$Dass alles verloren ist$t$, false, 2),
    (v_q, $t$Dass niemand mehr kommt$t$, false, 3),
    (v_q, $t$Dass sie aufhören sollte$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie lässt sich die abschließende Haltung der Autorin am besten zusammenfassen?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Radikale Ablehnung des Festes$t$, false, 1),
    (v_q, $t$Uneingeschränkte Begeisterung ohne Kritik$t$, false, 2),
    (v_q, $t$Ein Balanceakt zwischen Bewahrung der Tradition und Anerkennung wirtschaftlicher Vorteile$t$, true, 3),
    (v_q, $t$Völlige Gleichgültigkeit$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet „bewahren“?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$zerstören$t$, false, 1),
    (v_q, $t$schützen/erhalten$t$, true, 2),
    (v_q, $t$verkaufen$t$, false, 3),
    (v_q, $t$vergessen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welcher Satz nutzt „bewahren“ richtig?$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Wir müssen die Tradition bewahren.$t$, true, 1),
    (v_q, $t$Wir müssen die Tradition bewahren zerstören.$t$, false, 2),
    (v_q, $t$Sie bewahrte das Fest ab.$t$, false, 3),
    (v_q, $t$Er bewahrte den Krug zu trinken.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welches Wort ist am wenigsten synonym zu „bewahren“?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$erhalten$t$, false, 1),
    (v_q, $t$schützen$t$, false, 2),
    (v_q, $t$aufgeben$t$, true, 3),
    (v_q, $t$konservieren$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Ergänzen Sie den Relativsatz: Die Nachbarn, ___ seit Jahrzehnten am selben Tisch sitzen, ...$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$die$t$, true, 1),
    (v_q, $t$der$t$, false, 2),
    (v_q, $t$das$t$, false, 3),
    (v_q, $t$denen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welcher Satz enthält einen korrekten Relativsatz?$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Die Familienbetriebe, die seit Generationen brauen, sind noch aktiv.$t$, true, 1),
    (v_q, $t$Die Familienbetriebe, den seit Generationen brauen, sind noch aktiv.$t$, false, 2),
    (v_q, $t$Die Familienbetriebe, wo seit Generationen brauen, sind aktiv.$t$, false, 3),
    (v_q, $t$Die Familienbetriebe, was seit Generationen brauen.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wählen Sie den Satz mit korrektem Relativpronomen im Dativ: Die Touristen, ___ die Autorin begegnet, tragen billige Kostüme.$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$die$t$, false, 1),
    (v_q, $t$denen$t$, true, 2),
    (v_q, $t$der$t$, false, 3),
    (v_q, $t$deren$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$Schreiben Sie einen argumentativen Absatz (6-9 Sätze): Führt Massentourismus zwangsläufig zum Verlust kultureller Authentizität? Diskutieren Sie am Beispiel des Oktoberfests.$t$, 1, 'normal', 'production', $t$Ich glaube nicht, dass Massentourismus zwangsläufig die kulturelle Authentizität eines Festes zerstört, auch wenn er sie stark verändert. Beim Oktoberfest lässt sich beobachten, dass kommerzielle Elemente wie Plastikkrüge und importierte Kostüme tatsächlich neben echten Traditionen bestehen. Familienbetriebe, die seit Generationen brauen, überleben oft nur deshalb, weil der Tourismus ausreichend Einnahmen sichert. Gleichzeitig besteht die Gefahr, dass Besucher die ursprüngliche Bedeutung des Festes gar nicht mehr kennen und nur oberflächliche Klischees konsumieren. Deshalb tragen sowohl Veranstalter als auch Einheimische eine Verantwortung, echte Elemente sichtbar zu halten. Wenn lokale Musik und traditionelles Handwerk weiterhin einen festen Platz behalten, können Kommerz und Authentizität durchaus nebeneinander bestehen. Entscheidend ist meiner Meinung nach, ob die wirtschaftlichen Gewinne auch der lokalen Kultur zugutekommen oder nur internationalen Konzernen. Nur so bleibt ein Fest trotz seiner Größe seinem Ursprung treu.$t$);

END $block$;

-- 19. Der Wald als Spiegel der Angst
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary) VALUES (
    'B2',
    $t$Der Wald als Spiegel der Angst$t$,
    $t$Als Kinderpsychologin lese ich Märchen anders, als ich es als Kind tat. Hänsel und Gretel erzählt oberflächlich von einer Hexe, einem Lebkuchenhaus und zwei mutigen Geschwistern, doch wenn man genauer hinschaut, verbirgt sich darin eine erschütternde Geschichte über Hunger, Vernachlässigung und das Überleben in einer Familie, die ihre Kinder nicht ernähren kann. Die Eltern, die ihre Kinder im Wald aussetzen, weil sie selbst hungern, spiegeln reale historische Ängste aus Zeiten von Hungersnöten wider, in denen solche Entscheidungen tatsächlich getroffen wurden.

Was mich fachlich besonders interessiert, ist die Rolle der Kinder selbst. Anders als in vielen anderen Märchen, in denen ein Prinz oder eine Fee die Rettung bringt, retten sich Hänsel und Gretel weitgehend selbst. Sie handeln gemeinsam, sie überlisten die Hexe, und sie finden allein den Weg nach Hause zurück. Aus psychologischer Sicht kann man diese Geschichte als eine Art Trainingsraum für Kinder lesen, in dem Angst nicht verdrängt, sondern durchlebt und überwunden wird.

In meiner klinischen Arbeit verwende ich manchmal Elemente aus diesem Märchen, wenn ich mit Kindern spreche, die selbst Verlassenheit erfahren haben. Es überrascht mich immer wieder, wie stark sich junge Patienten mit der Figur der Gretel identifizieren, die am Ende die eigentliche Heldin ist, während ihr älterer Bruder passiv wird. Vielleicht liegt die Kraft dieses alten Textes genau darin, dass er kindliche Ohnmacht ernst nimmt, ohne sie zu beschönigen, und den Kindern trotzdem eine Form von Handlungsfähigkeit zurückgibt.$t$,
    $t$En tant que psychologue pour enfants, je lis les contes autrement qu'enfant. Hansel et Gretel raconte en surface l'histoire d'une sorcière, d'une maison en pain d'épices et de deux frère et sœur courageux, mais si l'on y regarde de plus près, s'y cache une histoire bouleversante sur la faim, la négligence et la survie dans une famille incapable de nourrir ses enfants. Les parents qui abandonnent leurs enfants dans la forêt parce qu'ils ont eux-mêmes faim reflètent des peurs historiques réelles issues d'époques de famine, où de telles décisions étaient effectivement prises.

Ce qui m'intéresse particulièrement, professionnellement, c'est le rôle des enfants eux-mêmes. Contrairement à de nombreux autres contes, où un prince ou une fée apporte le salut, Hansel et Gretel se sauvent en grande partie eux-mêmes. Ils agissent ensemble, ils déjouent la sorcière, et ils retrouvent seuls le chemin du retour. D'un point de vue psychologique, on peut lire cette histoire comme une sorte d'espace d'entraînement pour les enfants, dans lequel la peur n'est pas refoulée, mais vécue et surmontée.

Dans mon travail clinique, j'utilise parfois des éléments de ce conte quand je parle avec des enfants qui ont eux-mêmes vécu l'abandon. Cela me surprend sans cesse de voir à quel point de jeunes patients s'identifient fortement au personnage de Gretel, qui est finalement la véritable héroïne, tandis que son frère aîné devient passif. Peut-être la force de ce vieux texte réside-t-elle précisément dans le fait qu'il prend au sérieux l'impuissance enfantine sans l'embellir, tout en redonnant malgré tout aux enfants une forme de capacité d'agir.$t$,
    $t${"Als":"En tant que","Kinderpsychologin":"psychologue pour enfants","lese":"lis","ich":"je","Märchen":"contes","anders":"autrement","als":"qu'","es":"je","Kind":"enfant","tat":"faisais","Hänsel":"Hansel","und":"et","Gretel":"Gretel","erzählt":"raconte","oberflächlich":"en surface","von":"de","einer":"d'une","Hexe":"sorcière","einem":"d'une","Lebkuchenhaus":"maison en pain d'épices","zwei":"deux","mutigen":"courageux","Geschwistern":"frère et sœur","doch":"mais","wenn":"si","man":"l'on","genauer":"de plus près","hinschaut":"regarde","verbirgt":"cache","sich":"se","darin":"y","eine":"une","erschütternde":"bouleversante","Geschichte":"histoire","über":"sur","Hunger":"faim","Vernachlässigung":"négligence","das":"la","Überleben":"survie","in":"dans","Familie":"famille","die":"qui","ihre":"ses","Kinder":"enfants","nicht":"ne pas","ernähren":"nourrir","kann":"peut","Die":"Les","Eltern":"parents","im":"dans la","Wald":"forêt","aussetzen":"abandonnent","weil":"parce qu'","sie":"ils","selbst":"eux-mêmes","hungern":"ont faim","spiegeln":"reflètent","reale":"réelles","historische":"historiques","Ängste":"peurs","aus":"issues","Zeiten":"époques","Hungersnöten":"famine","wider":"reflètent","denen":"où","solche":"de telles","Entscheidungen":"décisions","tatsächlich":"effectivement","getroffen":"prises","wurden":"étaient","Was":"Ce qui","mich":"m'","fachlich":"professionnellement","besonders":"particulièrement","interessiert":"intéresse","ist":"est","Rolle":"rôle","der":"des","Anders":"Contrairement","vielen":"de nombreux","anderen":"autres","ein":"un","Prinz":"prince","oder":"ou","Fee":"fée","Rettung":"salut","bringt":"apporte","retten":"sauvent","weitgehend":"en grande partie","Sie":"Ils","handeln":"agissent","gemeinsam":"ensemble","überlisten":"déjouent","finden":"retrouvent","allein":"seuls","den":"le","Weg":"chemin","nach":"vers","Hause":"la maison","zurück":"retour","Aus":"D'un","psychologischer":"psychologique","Sicht":"point de vue","diese":"cette","Art":"sorte","Trainingsraum":"espace d'entraînement","für":"pour","lesen":"lire","dem":"lequel","Angst":"peur","verdrängt":"refoulée","sondern":"mais","durchlebt":"vécue","überwunden":"surmontée","wird":"est","In":"Dans","meiner":"mon","klinischen":"clinique","verwende":"utilise","manchmal":"parfois","Elemente":"éléments","diesem":"ce","mit":"avec","Kindern":"enfants","spreche":"parle","Verlassenheit":"abandon","erfahren":"vécu","haben":"ont","Es":"Cela","überrascht":"surprend","immer wieder":"sans cesse","wieder":"encore","wie":"à quel point","stark":"fortement","junge":"jeunes","Patienten":"patients","Figur":"personnage","identifizieren":"identifient","am":"à la","Ende":"fin","eigentliche":"véritable","Heldin":"héroïne","während":"tandis que","ihr":"son","älterer":"aîné","Bruder":"frère","passiv":"passif","Vielleicht":"Peut-être","liegt":"réside","Kraft":"force","dieses":"ce","alten":"vieux","Textes":"texte","genau":"précisément","er":"il","kindliche":"enfantine","Ohnmacht":"impuissance","ernst":"au sérieux","nimmt":"prend","ohne":"sans","zu":"l'","beschönigen":"embellir","trotzdem":"malgré tout","Form":"forme","Handlungsfähigkeit":"capacité d'agir","zurückgibt":"redonne","Arbeit":"travail","dass":"que","immer":"toujours"}$t$::jsonb
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wovon handelt Hänsel und Gretel laut der Autorin auf einer tieferen Ebene?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Von einem Schatz$t$, false, 1),
    (v_q, $t$Von Hunger, Vernachlässigung und Überleben$t$, true, 2),
    (v_q, $t$Von einer Hochzeit$t$, false, 3),
    (v_q, $t$Von einem Krieg$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was spiegeln die Eltern, die ihre Kinder aussetzen, laut Text wider?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Reale historische Ängste aus Hungersnöten$t$, true, 1),
    (v_q, $t$Eine moderne Erziehungsmethode$t$, false, 2),
    (v_q, $t$Eine religiöse Zeremonie$t$, false, 3),
    (v_q, $t$Ein Missverständnis$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie interpretiert die Autorin die Handlung der Eltern im historischen Kontext?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Als reine Fantasie ohne Bezug zur Realität$t$, false, 1),
    (v_q, $t$Als Reflexion tatsächlicher Entscheidungen in Zeiten von Hungersnöten$t$, true, 2),
    (v_q, $t$Als Symbol für Reichtum$t$, false, 3),
    (v_q, $t$Als Kritik an der Kirche$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wer rettet Hänsel und Gretel am Ende der Geschichte?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Ein Prinz$t$, false, 1),
    (v_q, $t$Eine Fee$t$, false, 2),
    (v_q, $t$Sie retten sich weitgehend selbst$t$, true, 3),
    (v_q, $t$Ihre Eltern$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was unterscheidet dieses Märchen laut Text von vielen anderen?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Es gibt keinen Wald$t$, false, 1),
    (v_q, $t$Die Kinder retten sich größtenteils selbst statt durch einen Prinzen$t$, true, 2),
    (v_q, $t$Es endet tragisch$t$, false, 3),
    (v_q, $t$Es hat keine Hexe$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie deutet die Autorin die aktive Rolle der Kinder aus psychologischer Sicht?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Als unrealistisches Element$t$, false, 1),
    (v_q, $t$Als eine Art Trainingsraum, in dem Angst durchlebt und überwunden wird$t$, true, 2),
    (v_q, $t$Als Fehler der Brüder Grimm$t$, false, 3),
    (v_q, $t$Als reinen Zufall$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wozu nutzt die Autorin das Märchen in ihrer Arbeit?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Um Kinder zu erschrecken$t$, false, 1),
    (v_q, $t$Um mit Kindern zu sprechen, die Verlassenheit erfahren haben$t$, true, 2),
    (v_q, $t$Um Deutsch zu unterrichten$t$, false, 3),
    (v_q, $t$Um Eltern zu bestrafen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Mit welcher Figur identifizieren sich Patienten laut Text besonders stark?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Mit der Hexe$t$, false, 1),
    (v_q, $t$Mit Gretel$t$, true, 2),
    (v_q, $t$Mit Hänsel$t$, false, 3),
    (v_q, $t$Mit den Eltern$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was macht laut Autorin die besondere Kraft des Märchens aus?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Es beschönigt kindliche Ohnmacht$t$, false, 1),
    (v_q, $t$Es nimmt kindliche Ohnmacht ernst und gibt zugleich Handlungsfähigkeit zurück$t$, true, 2),
    (v_q, $t$Es ignoriert die Gefühle der Kinder$t$, false, 3),
    (v_q, $t$Es zeigt nur Erwachsene als Helden$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet „die Vernachlässigung“?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$die Fürsorge$t$, false, 1),
    (v_q, $t$das Ignorieren/Nicht-Kümmern$t$, true, 2),
    (v_q, $t$die Feier$t$, false, 3),
    (v_q, $t$die Belohnung$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welcher Satz verwendet „vernachlässigen“ korrekt?$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Die Eltern vernachlässigten ihre Kinder aus Not.$t$, true, 1),
    (v_q, $t$Die Kinder vernachlässigten den Wald.$t$, false, 2),
    (v_q, $t$Die Hexe vernachlässigte das Haus zu bauen.$t$, false, 3),
    (v_q, $t$Sie vernachlässigten den Kuchen zu essen.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welches Wort ist am ehesten das Gegenteil von „vernachlässigen“?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$ignorieren$t$, false, 1),
    (v_q, $t$sich kümmern um$t$, true, 2),
    (v_q, $t$verlassen$t$, false, 3),
    (v_q, $t$vergessen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Ergänzen Sie: Kinder, ___ Verlassenheit erfahren haben, brauchen besondere Unterstützung.$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$die$t$, true, 1),
    (v_q, $t$der$t$, false, 2),
    (v_q, $t$dem$t$, false, 3),
    (v_q, $t$was$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welcher Satz enthält einen korrekten Relativsatz im Akkusativ?$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Das Märchen, das ich als Kind gelesen habe, wirkt heute anders.$t$, true, 1),
    (v_q, $t$Das Märchen, den ich gelesen habe, wirkt anders.$t$, false, 2),
    (v_q, $t$Das Märchen, wer ich gelesen habe.$t$, false, 3),
    (v_q, $t$Das Märchen, wo ich gelesen habe.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wählen Sie den Satz mit korrektem Relativpronomen im Genitiv: Die Geschwister, ___ Mut bewundert wird, überleben allein.$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$die$t$, false, 1),
    (v_q, $t$deren$t$, true, 2),
    (v_q, $t$denen$t$, false, 3),
    (v_q, $t$der$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$Schreiben Sie einen argumentativen Absatz (6-9 Sätze): Sollten alte Märchen wie Hänsel und Gretel Kindern trotz ihrer düsteren Inhalte weiterhin erzählt werden?$t$, 1, 'normal', 'production', $t$Ich bin überzeugt, dass Kindern solche düsteren Märchen keineswegs vorenthalten werden sollten, sofern sie in einem geschützten Rahmen erzählt werden. Geschichten wie Hänsel und Gretel geben Kindern die Möglichkeit, Ängste vor Verlassenheit oder Not symbolisch zu durchleben, ohne der realen Gefahr ausgesetzt zu sein. Wenn die Kinder in der Geschichte selbst aktiv werden und sich retten, vermittelt das jungen Zuhörern ein starkes Gefühl von Handlungsfähigkeit. Natürlich sollten Erwachsene solche Geschichten begleiten und den Kindern Raum geben, ihre Reaktionen zu besprechen. Wer die düsteren Elemente einfach streicht, nimmt dem Märchen jedoch seine eigentliche psychologische Funktion. Zudem zeigen viele Kinder erstaunliche Resilienz, wenn sie mit fiktionalen Bedrohungen konfrontiert werden, solange ein sicherer Ausgang gewährleistet ist. Aus meiner klinischen Erfahrung heraus kann ich bestätigen, dass Kinder oft genau die Geschichten suchen, die ihre eigenen unbewussten Ängste widerspiegeln. Deshalb plädiere ich dafür, diese Märchen behutsam, aber ungekürzt weiterzuerzählen.$t$);

END $block$;

-- 20. Das Ticken zweier Welten
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary) VALUES (
    'B2',
    $t$Das Ticken zweier Welten$t$,
    $t$Als Uhrmacher im Schwarzwald arbeite ich in einer Werkstatt, die mein Großvater gegründet hat, und stelle mir fast täglich dieselbe Frage: Was bedeutet Handwerk noch in einer Welt der Massenproduktion? Die Kuckucksuhr, die aus dieser Region stammt und seit dem achtzehnten Jahrhundert gefertigt wird, war ursprünglich eine bäuerliche Erfindung, mit der arme Familien im Winter, wenn die Feldarbeit ruhte, ein Zusatzeinkommen erwirtschaften konnten. Jedes Detail, vom geschnitzten Vogel bis zum Uhrwerk, wurde von Hand gefertigt und war das Ergebnis wochenlanger Arbeit.

Heute werden die meisten Kuckucksuhren, die in Souvenirläden verkauft werden, in Fabriken hergestellt, oft nicht einmal in Deutschland. Sie sehen der traditionellen Uhr ähnlich, doch das Uhrwerk im Inneren ist meist elektronisch, und die Schnitzereien werden maschinell geprägt statt geschnitzt. Für Touristen mag der Unterschied kaum sichtbar sein, aber für mich, der ich noch mit denselben Werkzeugen arbeite wie mein Großvater, ist er entscheidend.

Trotzdem bin ich kein Nostalgiker, der die Industrialisierung pauschal verurteilt. Ohne die günstigeren Massenprodukte hätte die Kuckucksuhr als kulturelles Symbol vermutlich nie eine solche weltweite Bekanntheit erreicht. Meine eigene Werkstatt überlebt paradoxerweise gerade deshalb, weil genug Menschen durch die billigen Nachahmungen überhaupt erst neugierig auf das Original werden. Wer einmal ein wirklich handgefertigtes Stück gesehen hat, versteht sofort den Unterschied und ist bereit, dafür einen höheren Preis zu zahlen. So leben beide Welten, die des Handwerks und die der Industrie, seltsam voneinander abhängig nebeneinander.$t$,
    $t$En tant qu'horloger dans la Forêt-Noire, je travaille dans un atelier fondé par mon grand-père, et je me pose presque quotidiennement la même question : que signifie encore l'artisanat dans un monde de production de masse ? L'horloge à coucou, originaire de cette région et fabriquée depuis le dix-huitième siècle, était à l'origine une invention paysanne grâce à laquelle des familles pauvres pouvaient se procurer un revenu d'appoint en hiver, quand le travail des champs s'arrêtait. Chaque détail, de l'oiseau sculpté jusqu'au mouvement, était fait à la main et représentait le résultat de semaines de travail.

Aujourd'hui, la plupart des horloges à coucou vendues dans les boutiques de souvenirs sont fabriquées en usine, souvent même pas en Allemagne. Elles ressemblent à l'horloge traditionnelle, mais le mouvement à l'intérieur est le plus souvent électronique, et les sculptures sont estampées mécaniquement au lieu d'être taillées. Pour les touristes, la différence n'est peut-être guère visible, mais pour moi, qui travaille encore avec les mêmes outils que mon grand-père, elle est décisive.

Je ne suis pourtant pas un nostalgique qui condamnerait l'industrialisation en bloc. Sans les produits de masse moins chers, l'horloge à coucou n'aurait probablement jamais atteint une telle notoriété mondiale en tant que symbole culturel. Mon propre atelier survit, paradoxalement, précisément parce que suffisamment de gens deviennent curieux de l'original grâce aux imitations bon marché. Quiconque a vu une pièce véritablement faite à la main comprend immédiatement la différence et est prêt à payer un prix plus élevé pour cela. Ainsi, les deux mondes, celui de l'artisanat et celui de l'industrie, coexistent étrangement, dépendants l'un de l'autre.$t$,
    $t${"Als":"En tant qu'","Uhrmacher":"horloger","im":"dans la","Schwarzwald":"Forêt-Noire","arbeite":"travaille","ich":"je","in":"dans","einer":"un","Werkstatt":"atelier","die":"que","mein":"mon","Großvater":"grand-père","gegründet":"fondé","hat":"a","und":"et","stelle":"pose","mir":"me","fast":"presque","täglich":"quotidiennement","dieselbe":"la même","Frage":"question","Was":"Que","bedeutet":"signifie","Handwerk":"artisanat","noch":"encore","Welt":"monde","der":"de la","Massenproduktion":"production de masse","Die":"L'","Kuckucksuhr":"horloge à coucou","aus":"de","dieser":"cette","Region":"région","stammt":"originaire","seit":"depuis","dem":"le","achtzehnten":"dix-huitième","Jahrhundert":"siècle","gefertigt":"fabriquée","wird":"est","war":"était","ursprünglich":"à l'origine","eine":"une","bäuerliche":"paysanne","Erfindung":"invention","mit":"grâce à laquelle","arme":"pauvres","Familien":"familles","Winter":"hiver","wenn":"quand","Feldarbeit":"travail des champs","ruhte":"s'arrêtait","ein":"un","Zusatzeinkommen":"revenu d'appoint","erwirtschaften":"se procurer","konnten":"pouvaient","Jedes":"Chaque","Detail":"détail","vom":"de l'","geschnitzten":"sculpté","Vogel":"oiseau","bis":"jusqu'au","zum":"au","Uhrwerk":"mouvement","wurde":"était","von":"à la","Hand":"main","das":"le","Ergebnis":"résultat","wochenlanger":"de semaines de","Arbeit":"travail","Heute":"Aujourd'hui","werden":"sont","meisten":"plupart","Kuckucksuhren":"horloges à coucou","Souvenirläden":"boutiques de souvenirs","verkauft":"vendues","Fabriken":"usine","hergestellt":"fabriquées","oft":"souvent","nicht einmal":"même pas","einmal":"même","Deutschland":"Allemagne","Sie":"Elles","sehen":"ressemblent","traditionellen":"traditionnelle","Uhr":"horloge","ähnlich":"similaire","doch":"mais","Inneren":"à l'intérieur","ist":"est","meist":"le plus souvent","elektronisch":"électronique","Schnitzereien":"sculptures","maschinell":"mécaniquement","geprägt":"estampées","statt":"au lieu d'","geschnitzt":"être taillées","Für":"Pour","Touristen":"touristes","mag":"peut-être","Unterschied":"différence","kaum":"guère","sichtbar":"visible","sein":"être","aber":"mais","mich":"moi","denselben":"les mêmes","Werkzeugen":"outils","wie":"que","er":"il","entscheidend":"décisive","Trotzdem":"Pourtant","bin":"suis","kein":"pas un","Nostalgiker":"nostalgique","Industrialisierung":"industrialisation","pauschal":"en bloc","verurteilt":"condamnerait","Ohne":"Sans","günstigeren":"moins chers","Massenprodukte":"produits de masse","hätte":"n'aurait","als":"en tant que","kulturelles":"culturel","Symbol":"symbole","vermutlich":"probablement","nie":"jamais","solche":"une telle","weltweite":"mondiale","Bekanntheit":"notoriété","erreicht":"atteint","Meine":"Mon","eigene":"propre","überlebt":"survit","paradoxerweise":"paradoxalement","gerade":"précisément","deshalb":"parce que","weil":"parce que","genug":"suffisamment","Menschen":"gens","durch":"grâce à","billigen":"bon marché","Nachahmungen":"imitations","überhaupt":"précisément","erst":"d'abord","neugierig":"curieux","auf":"de","Original":"original","Wer":"Quiconque","wirklich":"véritablement","handgefertigtes":"fait à la main","Stück":"pièce","gesehen":"vu","versteht":"comprend","sofort":"immédiatement","den":"la","bereit":"prêt","dafür":"pour cela","einen":"un","höheren":"plus élevé","Preis":"prix","zu":"à","zahlen":"payer","So":"Ainsi","leben":"coexistent","beide":"les deux","Welten":"mondes","des":"de l'","Handwerks":"artisanat","Industrie":"industrie","seltsam":"étrangement","voneinander":"l'un de l'autre","abhängig":"dépendants","nebeneinander":"côte à côte","für":"pour","nicht":"ne pas"}$t$::jsonb
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Woher stammt die Kuckucksuhr laut Text?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Aus dem Schwarzwald$t$, true, 1),
    (v_q, $t$Aus Bayern$t$, false, 2),
    (v_q, $t$Aus Berlin$t$, false, 3),
    (v_q, $t$Aus der Schweiz$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum wurde die Kuckucksuhr ursprünglich hergestellt?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Als Luxusartikel für Adlige$t$, false, 1),
    (v_q, $t$Als Zusatzeinkommen für Bauernfamilien im Winter$t$, true, 2),
    (v_q, $t$Als Exportprodukt für Amerika$t$, false, 3),
    (v_q, $t$Als Geschenk für Könige$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was zeigt der Ursprung der Kuckucksuhr laut Text über die Lebensbedingungen der damaligen Zeit?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Dass die Region sehr reich war$t$, false, 1),
    (v_q, $t$Dass arme Familien im Winter zusätzliches Einkommen brauchten, wenn die Feldarbeit ruhte$t$, true, 2),
    (v_q, $t$Dass die Uhren rein dekorativ waren$t$, false, 3),
    (v_q, $t$Dass es keine Landwirtschaft gab$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wo werden die meisten heutigen Souvenir-Kuckucksuhren hergestellt?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$In Handwerksbetrieben im Schwarzwald$t$, false, 1),
    (v_q, $t$Oft in Fabriken, teils außerhalb Deutschlands$t$, true, 2),
    (v_q, $t$Nur in der Schweiz$t$, false, 3),
    (v_q, $t$Gar nicht mehr$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was unterscheidet die industriellen Uhren von den traditionellen laut Text?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Nichts, sie sind identisch$t$, false, 1),
    (v_q, $t$Das Uhrwerk ist meist elektronisch, die Schnitzereien maschinell geprägt$t$, true, 2),
    (v_q, $t$Sie sind teurer$t$, false, 3),
    (v_q, $t$Sie haben keinen Kuckuck$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum ist der Unterschied für Touristen laut Text kaum sichtbar, für den Autor aber entscheidend?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Weil Touristen keine Uhren kaufen$t$, false, 1),
    (v_q, $t$Weil der Autor mit denselben traditionellen Werkzeugen wie sein Großvater arbeitet$t$, true, 2),
    (v_q, $t$Weil die Uhren unterschiedliche Farben haben$t$, false, 3),
    (v_q, $t$Weil Touristen die Uhren nie benutzen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Ist der Autor gegen die Industrialisierung?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Ja, vollständig$t$, false, 1),
    (v_q, $t$Nein, er sieht sie nicht nur negativ$t$, true, 2),
    (v_q, $t$Er hat keine Meinung$t$, false, 3),
    (v_q, $t$Er verbietet sie$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum überlebt die Werkstatt des Autors laut Text paradoxerweise?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Weil billige Nachahmungen Neugier auf das Original wecken$t$, true, 1),
    (v_q, $t$Weil er die Preise senkt$t$, false, 2),
    (v_q, $t$Weil er selbst Fabriken besitzt$t$, false, 3),
    (v_q, $t$Weil niemand mehr Uhren kauft$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie beschreibt der Autor die Beziehung zwischen Handwerk und Industrie am Ende des Textes?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Als völlig getrennte Welten$t$, false, 1),
    (v_q, $t$Als seltsam voneinander abhängig nebeneinander existierend$t$, true, 2),
    (v_q, $t$Als reine Konkurrenz ohne Verbindung$t$, false, 3),
    (v_q, $t$Als bedeutungslos$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet „die Schnitzerei“?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$ein gemaltes Bild$t$, false, 1),
    (v_q, $t$eine handgeschnitzte Verzierung aus Holz$t$, true, 2),
    (v_q, $t$ein Musikinstrument$t$, false, 3),
    (v_q, $t$ein Uhrwerk aus Metall$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welcher Satz verwendet „schnitzen“ korrekt?$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Der Handwerker schnitzte den Vogel aus Holz.$t$, true, 1),
    (v_q, $t$Der Handwerker schnitzte das Uhrwerk aus Metall.$t$, false, 2),
    (v_q, $t$Der Vogel schnitzte den Handwerker.$t$, false, 3),
    (v_q, $t$Er schnitzte die Fabrik.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welches Wort passt am besten als Gegensatz zu „handgeschnitzt“?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$handgefertigt$t$, false, 1),
    (v_q, $t$maschinell geprägt$t$, true, 2),
    (v_q, $t$kunstvoll$t$, false, 3),
    (v_q, $t$traditionell$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Ergänzen Sie: Ohne Massenproduktion ___ die Kuckucksuhr nie so bekannt geworden. (Konjunktiv II)$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$ist$t$, false, 1),
    (v_q, $t$wäre$t$, true, 2),
    (v_q, $t$hat$t$, false, 3),
    (v_q, $t$wird$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welcher Satz enthält eine korrekte Konjunktiv-II-Form der Vergangenheit?$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Die Uhr wäre ohne Werbung nie so bekannt geworden.$t$, true, 1),
    (v_q, $t$Die Uhr ist ohne Werbung nie bekannt geworden.$t$, false, 2),
    (v_q, $t$Die Uhr wird ohne Werbung nie bekannt.$t$, false, 3),
    (v_q, $t$Die Uhr bekannt geworden wäre nie.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Formen Sie um: „Vielleicht erreicht die Uhr ohne Massenproduktion keine weltweite Bekanntheit.“ → Konjunktiv II Vergangenheit:$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Vielleicht hätte die Uhr ohne Massenproduktion keine weltweite Bekanntheit erreicht.$t$, true, 1),
    (v_q, $t$Vielleicht erreichte die Uhr keine Bekanntheit.$t$, false, 2),
    (v_q, $t$Vielleicht hat die Uhr keine Bekanntheit erreicht.$t$, false, 3),
    (v_q, $t$Vielleicht erreicht die Uhr Bekanntheit.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$Schreiben Sie einen argumentativen Absatz (6-9 Sätze): Kann traditionelles Handwerk in einer Welt der industriellen Massenproduktion überleben?$t$, 1, 'normal', 'production', $t$Ich bin überzeugt, dass traditionelles Handwerk auch in einer industrialisierten Welt überleben kann, allerdings nur, wenn es sich klar von Massenware unterscheidet. Das Beispiel der Kuckucksuhr zeigt, dass billige Nachahmungen paradoxerweise das Interesse an echten handgefertigten Produkten wecken können. Wer einmal ein wirklich hochwertiges Stück gesehen hat, erkennt den Unterschied sofort und ist oft bereit, dafür mehr zu bezahlen. Gleichzeitig darf man nicht ignorieren, dass viele traditionelle Werkstätten wirtschaftlich stark unter Druck stehen und ohne touristisches Interesse kaum überleben würden. Deshalb hängt das Überleben des Handwerks stark davon ab, ob Konsumenten bereit sind, für Qualität und Geschichte zu zahlen. Bildung spielt dabei eine wichtige Rolle, denn nur wer den Unterschied kennt, kann ihn auch wertschätzen. Meiner Meinung nach sollten Handwerksbetriebe deshalb aktiv erklären, was ihre Produkte von industriellen Kopien unterscheidet. Nur so bleibt echtes Handwerk mehr als eine nostalgische Erinnerung.$t$);

END $block$;

-- 21. Der Schatten, der Leben rettete
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary) VALUES (
    'B2',
    $t$Der Schatten, der Leben rettete$t$,
    $t$Als Radiologin denke ich oft an Wilhelm Conrad Röntgen, der 1895 in seinem Würzburger Labor eine Strahlung entdeckte, die er selbst nicht vollständig verstand und deshalb schlicht X-Strahlen nannte. Als er das Röntgenbild der Hand seiner Frau anfertigte, auf dem ihre Knochen und ihr Ehering deutlich sichtbar waren, war die Reaktion gemischt: Faszination auf der einen Seite, Angst auf der anderen. Manche Zeitgenossen fürchteten, diese neue Technologie erlaube es, Menschen buchstäblich zu durchschauen, und sahen darin einen Angriff auf die Privatsphäre.

Röntgen selbst verzichtete bewusst darauf, seine Entdeckung patentieren zu lassen, obwohl er damit enorm reich hätte werden können. Er war überzeugt, dass eine solche Erkenntnis der gesamten Menschheit gehören sollte. Diese Entscheidung ermöglichte es, dass sich die Röntgentechnik innerhalb weniger Jahre weltweit in Krankenhäusern verbreitete und unzählige Leben rettete, weil Brüche, Tumore und Fremdkörper plötzlich sichtbar wurden, ohne dass ein chirurgischer Eingriff nötig war.

Gleichzeitig zeigt diese Geschichte auch die ethischen Grenzen wissenschaftlicher Neugier. Erst Jahrzehnte später wurde vollständig verstanden, wie gefährlich eine unkontrollierte Strahlendosis für den menschlichen Körper sein kann, und viele frühe Anwender, die diese Gefahr nicht kannten, erkrankten an den Folgen ihrer eigenen Forschung. Wenn ich heute in meiner Praxis jede Aufnahme sorgfältig abwäge, denke ich an dieses Erbe: eine Entdeckung, die zugleich rettet und schadet, je nachdem, mit welcher Verantwortung man sie einsetzt.$t$,
    $t$En tant que radiologue, je pense souvent à Wilhelm Conrad Röntgen, qui découvrit en 1895 dans son laboratoire de Würzbourg un rayonnement qu'il ne comprenait pas lui-même complètement et qu'il appela donc simplement rayons X. Lorsqu'il réalisa la radiographie de la main de sa femme, sur laquelle ses os et son alliance étaient nettement visibles, la réaction fut mitigée : fascination d'un côté, peur de l'autre. Certains de ses contemporains craignaient que cette nouvelle technologie ne permette de voir littéralement à travers les gens, et y voyaient une atteinte à la vie privée.

Röntgen renonça délibérément à faire breveter sa découverte, bien qu'il eût pu devenir immensément riche grâce à cela. Il était convaincu qu'une telle connaissance devait appartenir à l'humanité tout entière. Cette décision permit à la technique radiographique de se répandre dans le monde entier dans les hôpitaux en l'espace de quelques années à peine, et de sauver d'innombrables vies, car des fractures, des tumeurs et des corps étrangers devinrent soudain visibles, sans qu'une intervention chirurgicale ne soit nécessaire.

Dans le même temps, cette histoire montre aussi les limites éthiques de la curiosité scientifique. Ce n'est que des décennies plus tard que l'on comprit pleinement à quel point une dose de rayonnement incontrôlée peut être dangereuse pour le corps humain, et de nombreux premiers utilisateurs, qui ignoraient ce danger, tombèrent malades des suites de leurs propres recherches. Quand aujourd'hui, dans mon cabinet, je pèse soigneusement chaque cliché, je pense à cet héritage : une découverte qui à la fois sauve et nuit, selon la responsabilité avec laquelle on l'utilise.$t$,
    $t${"Als":"En tant que","Radiologin":"radiologue","denke":"pense","ich":"je","oft":"souvent","an":"à","Wilhelm":"Wilhelm","Conrad":"Conrad","Röntgen":"Röntgen","der":"qui","in":"dans","seinem":"son","Würzburger":"de Würzbourg","Labor":"laboratoire","eine":"un","Strahlung":"rayonnement","entdeckte":"découvrit","die":"qu'","er":"il","selbst":"lui-même","nicht":"ne pas","vollständig":"complètement","verstand":"comprenait","und":"et","deshalb":"donc","schlicht":"simplement","X-Strahlen":"rayons X","nannte":"appela","das":"la","Röntgenbild":"radiographie","Hand":"main","seiner":"de sa","Frau":"femme","anfertigte":"réalisa","auf":"sur","dem":"laquelle","ihre":"ses","Knochen":"os","ihr":"son","Ehering":"alliance","deutlich":"nettement","sichtbar":"visibles","waren":"étaient","war":"fut","Reaktion":"réaction","gemischt":"mitigée","Faszination":"fascination","einen":"d'un","Seite":"côté","Angst":"peur","anderen":"l'autre","Manche":"Certains","Zeitgenossen":"contemporains","fürchteten":"craignaient","diese":"cette","neue":"nouvelle","Technologie":"technologie","erlaube":"permette","es":"de","Menschen":"gens","buchstäblich":"littéralement","zu":"à","durchschauen":"voir à travers","sahen":"voyaient","darin":"y","Angriff":"atteinte","Privatsphäre":"vie privée","verzichtete":"renonça","bewusst":"délibérément","darauf":"à cela","seine":"sa","Entdeckung":"découverte","patentieren":"faire breveter","lassen":"laisser","obwohl":"bien qu'","damit":"grâce à cela","enorm":"immensément","reich":"riche","hätte":"eût","werden":"devenir","können":"pu","Er":"Il","überzeugt":"convaincu","dass":"qu'","solche":"une telle","Erkenntnis":"connaissance","gesamten":"toute entière","Menschheit":"humanité","gehören":"appartenir","sollte":"devait","Diese":"Cette","Entscheidung":"décision","ermöglichte":"permit","sich":"se","Röntgentechnik":"technique radiographique","innerhalb":"en l'espace de","weniger":"quelques","Jahre":"années","weltweit":"dans le monde entier","Krankenhäusern":"hôpitaux","verbreitete":"répandit","unzählige":"d'innombrables","Leben":"vies","rettete":"sauva","weil":"car","Brüche":"fractures","Tumore":"tumeurs","Fremdkörper":"corps étrangers","plötzlich":"soudain","wurden":"devinrent","ohne":"sans","ein":"une","chirurgischer":"chirurgicale","Eingriff":"intervention","nötig":"nécessaire","Gleichzeitig":"En même temps","zeigt":"montre","Geschichte":"histoire","auch":"aussi","ethischen":"éthiques","Grenzen":"limites","wissenschaftlicher":"scientifique","Neugier":"curiosité","Erst":"Ce n'est qu'","Jahrzehnte":"décennies","später":"plus tard","wurde":"fut","verstanden":"compris","wie":"à quel point","gefährlich":"dangereuse","unkontrollierte":"incontrôlée","Strahlendosis":"dose de rayonnement","für":"pour","den":"le","menschlichen":"humain","Körper":"corps","sein":"être","kann":"peut","viele":"de nombreux","frühe":"premiers","Anwender":"utilisateurs","Gefahr":"danger","kannten":"connaissaient","erkrankten":"tombèrent malades","Folgen":"suites","ihrer":"leurs","eigenen":"propres","Forschung":"recherches","Wenn":"Quand","heute":"aujourd'hui","meiner":"mon","Praxis":"cabinet","jede":"chaque","Aufnahme":"cliché","sorgfältig":"soigneusement","abwäge":"pèse","dieses":"cet","Erbe":"héritage","zugleich":"à la fois","rettet":"sauve","schadet":"nuit","je nachdem":"selon","nachdem":"selon","mit":"avec","welcher":"laquelle","Verantwortung":"responsabilité","man":"on","sie":"l'","einsetzt":"utilise","je":"selon"}$t$::jsonb
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was entdeckte Wilhelm Röntgen 1895?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Die Elektrizität$t$, false, 1),
    (v_q, $t$Eine Strahlung, die er X-Strahlen nannte$t$, true, 2),
    (v_q, $t$Das Penicillin$t$, false, 3),
    (v_q, $t$Die Kernspaltung$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie reagierten die Zeitgenossen auf Röntgens Entdeckung laut Text?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Mit völliger Gleichgültigkeit$t$, false, 1),
    (v_q, $t$Mit gemischten Gefühlen aus Faszination und Angst$t$, true, 2),
    (v_q, $t$Nur mit Begeisterung$t$, false, 3),
    (v_q, $t$Nur mit Ablehnung$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum fürchteten manche Zeitgenossen die neue Technologie laut Text?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Weil sie zu teuer war$t$, false, 1),
    (v_q, $t$Weil sie Menschen buchstäblich durchschauen konnte und die Privatsphäre bedrohte$t$, true, 2),
    (v_q, $t$Weil sie explodieren konnte$t$, false, 3),
    (v_q, $t$Weil sie illegal war$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Ließ Röntgen seine Entdeckung patentieren?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Ja, sofort$t$, false, 1),
    (v_q, $t$Nein, er verzichtete bewusst darauf$t$, true, 2),
    (v_q, $t$Er versuchte es, scheiterte aber$t$, false, 3),
    (v_q, $t$Das ist unbekannt$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum verzichtete Röntgen laut Text auf ein Patent?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er war überzeugt, die Erkenntnis sollte der ganzen Menschheit gehören$t$, true, 1),
    (v_q, $t$Er hatte kein Interesse an Geld$t$, false, 2),
    (v_q, $t$Es war gesetzlich verboten$t$, false, 3),
    (v_q, $t$Er wollte berühmt werden$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Folge hatte Röntgens Verzicht auf ein Patent laut Text?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Die Technik verbreitete sich langsamer$t$, false, 1),
    (v_q, $t$Die Technik verbreitete sich schnell weltweit und rettete viele Leben$t$, true, 2),
    (v_q, $t$Niemand nutzte die Technik$t$, false, 3),
    (v_q, $t$Die Technik wurde geheim gehalten$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was wurde erst Jahrzehnte später vollständig verstanden?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Wie man Röntgenbilder macht$t$, false, 1),
    (v_q, $t$Wie gefährlich unkontrollierte Strahlung für den Körper ist$t$, true, 2),
    (v_q, $t$Wie man Knochen heilt$t$, false, 3),
    (v_q, $t$Wie man Patente anmeldet$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was geschah mit vielen frühen Anwendern der Röntgentechnik?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie wurden reich$t$, false, 1),
    (v_q, $t$Sie erkrankten an den Folgen ihrer eigenen Forschung$t$, true, 2),
    (v_q, $t$Sie verließen den Beruf$t$, false, 3),
    (v_q, $t$Sie erhielten Preise$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie beschreibt die Autorin das Erbe von Röntgens Entdeckung im letzten Satz?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Als ausschließlich positiv$t$, false, 1),
    (v_q, $t$Als eine Entdeckung, die zugleich rettet und schadet, je nach Verantwortung$t$, true, 2),
    (v_q, $t$Als völlig überholt$t$, false, 3),
    (v_q, $t$Als reinen Zufall ohne Bedeutung$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet „verzichten auf etwas“?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$etwas fordern$t$, false, 1),
    (v_q, $t$bewusst auf etwas verzichten/nicht nehmen$t$, true, 2),
    (v_q, $t$etwas kaufen$t$, false, 3),
    (v_q, $t$etwas stehlen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welcher Satz verwendet „verzichten“ korrekt?$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Röntgen verzichtete auf ein Patent.$t$, true, 1),
    (v_q, $t$Röntgen verzichtete ein Patent.$t$, false, 2),
    (v_q, $t$Röntgen verzichtete das Patent an.$t$, false, 3),
    (v_q, $t$Röntgen verzichtete von einem Patent.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welches Wort ist am ehesten ein Synonym zu „verzichten auf“?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$beanspruchen$t$, false, 1),
    (v_q, $t$aufgeben/absehen von$t$, true, 2),
    (v_q, $t$fordern$t$, false, 3),
    (v_q, $t$behalten$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Ergänzen Sie: Röntgen ___ durch ein Patent sehr reich werden können. (Konjunktiv II)$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$ist$t$, false, 1),
    (v_q, $t$hätte$t$, true, 2),
    (v_q, $t$wird$t$, false, 3),
    (v_q, $t$hat$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welcher Satz enthält eine korrekte Konjunktiv-II-Konstruktion?$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er hätte durch ein Patent reich werden können.$t$, true, 1),
    (v_q, $t$Er ist durch ein Patent reich geworden.$t$, false, 2),
    (v_q, $t$Er wird durch ein Patent reich.$t$, false, 3),
    (v_q, $t$Er reich werden hätte können.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Formen Sie um: „Vielleicht wird er ohne den Verzicht sehr reich.“ → Konjunktiv II Vergangenheit:$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Vielleicht wäre er ohne den Verzicht sehr reich geworden.$t$, true, 1),
    (v_q, $t$Vielleicht wird er sehr reich.$t$, false, 2),
    (v_q, $t$Vielleicht ist er sehr reich geworden.$t$, false, 3),
    (v_q, $t$Vielleicht wurde er reich.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$Schreiben Sie einen argumentativen Absatz (6-9 Sätze): Sollten Wissenschaftler wichtige Entdeckungen immer frei zugänglich machen, statt sie zu patentieren?$t$, 1, 'normal', 'production', $t$Meiner Meinung nach sollten grundlegende wissenschaftliche Entdeckungen, die unmittelbar Menschenleben retten können, möglichst frei zugänglich gemacht werden. Röntgens Verzicht auf ein Patent zeigt eindrucksvoll, wie schnell sich eine lebensrettende Technologie verbreiten kann, wenn finanzielle Interessen nicht im Vordergrund stehen. Gleichzeitig muss man anerkennen, dass Patente auch wichtige Anreize für Forschung und Entwicklung schaffen, ohne die manche Entdeckungen vielleicht nie gemacht worden wären. Es wäre daher zu einfach, Patente grundsätzlich zu verteufeln. Dennoch sollte bei medizinischen Durchbrüchen der gesellschaftliche Nutzen stärker gewichtet werden als der individuelle finanzielle Gewinn. Ein möglicher Kompromiss wäre, Patente zeitlich zu begrenzen oder in ärmeren Ländern günstigere Lizenzen zu ermöglichen. So könnten Innovation und globaler Zugang gleichzeitig gefördert werden. Für mich bleibt Röntgens Entscheidung ein bewegendes Beispiel dafür, welchen Unterschied individuelle Großzügigkeit machen kann.$t$);

END $block$;

-- 22. Der Traum, der in Flammen aufging
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary) VALUES (
    'B2',
    $t$Der Traum, der in Flammen aufging$t$,
    $t$Als Luftfahrtingenieur habe ich mich beruflich lange mit einem der ehrgeizigsten Projekte der deutschen Technikgeschichte beschäftigt: dem Zeppelin. Graf Ferdinand von Zeppelin entwickelte am Ende des neunzehnten Jahrhunderts die Idee eines lenkbaren, starren Luftschiffs, nachdem er während des amerikanischen Bürgerkriegs Beobachtungsballons gesehen hatte. Viele hielten sein Vorhaben für die Fantasie eines alten Mannes, doch er ließ sich nicht beirren und baute schließlich Riesenluftschiffe, die transatlantische Passagierflüge ermöglichten, lange bevor Flugzeuge dazu technisch in der Lage waren.

Der Höhepunkt dieser Ambition war zugleich ihr Ende. Als die Hindenburg im Jahr 1937 in New Jersey in Flammen aufging und sechsunddreißig Menschen starben, wurde dieses Unglück live gefilmt und in Wochenschauen weltweit gezeigt. Innerhalb weniger Minuten wurde ein Symbol technischen Fortschritts zu einem Symbol menschlicher Selbstüberschätzung.

Wenn ich heute mit jungen Ingenieuren arbeite, benutze ich diese Geschichte oft als Lehrbeispiel. Der Wasserstoff, der die Hindenburg tragen sollte, wäre durch das sicherere Helium ersetzt worden, hätten die Vereinigten Staaten es aus politischen Gründen nicht für den Export gesperrt. Man kann also nicht behaupten, dass die Katastrophe rein technisch bedingt war; sie war auch das Ergebnis politischer Entscheidungen, denen die Ingenieure ausgeliefert waren. Diese Verschränkung von Ambition, Risiko und äußeren Zwängen begleitet, glaube ich, jede große technische Errungenschaft bis heute, auch wenn wir heute selten so dramatisch daran erinnert werden wie durch jene brennenden Bilder aus Lakehurst.$t$,
    $t$En tant qu'ingénieur aéronautique, je me suis longtemps consacré professionnellement à l'un des projets les plus ambitieux de l'histoire technique allemande : le zeppelin. Le comte Ferdinand von Zeppelin développa à la fin du dix-neuvième siècle l'idée d'un dirigeable rigide et manœuvrable, après avoir vu des ballons d'observation pendant la guerre de Sécession américaine. Beaucoup considéraient son projet comme la fantaisie d'un vieil homme, mais il ne se laissa pas décourager et construisit finalement d'immenses dirigeables qui permirent des vols transatlantiques de passagers, bien avant que les avions n'en soient techniquement capables.

L'apogée de cette ambition fut aussi sa fin. Lorsque le Hindenburg s'embrasa en 1937 dans le New Jersey et que trente-six personnes moururent, ce désastre fut filmé en direct et diffusé dans le monde entier dans les actualités cinématographiques. En quelques minutes, un symbole de progrès technique devint un symbole de la présomption humaine.

Quand je travaille aujourd'hui avec de jeunes ingénieurs, j'utilise souvent cette histoire comme exemple pédagogique. L'hydrogène, censé porter le Hindenburg, aurait été remplacé par l'hélium, plus sûr, si les États-Unis ne l'avaient pas interdit à l'exportation pour des raisons politiques. On ne peut donc pas prétendre que la catastrophe fut purement d'ordre technique ; elle fut aussi le résultat de décisions politiques auxquelles les ingénieurs étaient livrés. Cet enchevêtrement d'ambition, de risque et de contraintes extérieures accompagne, je crois, toute grande réalisation technique jusqu'à aujourd'hui, même si nous en sommes rarement rappelés de manière aussi spectaculaire que par ces images enflammées de Lakehurst.$t$,
    $t${"Als":"En tant qu'","Luftfahrtingenieur":"ingénieur aéronautique","habe":"ai","ich":"je","mich":"me","beruflich":"professionnellement","lange":"longtemps","mit":"à","einem":"l'un","der":"des","ehrgeizigsten":"plus ambitieux","Projekte":"projets","deutschen":"allemande","Technikgeschichte":"histoire technique","beschäftigt":"consacré","dem":"le","Zeppelin":"zeppelin","Graf":"comte","Ferdinand":"Ferdinand","von":"von","entwickelte":"développa","am":"à la","Ende":"fin","des":"du","neunzehnten":"dix-neuvième","Jahrhunderts":"siècle","die":"l'","Idee":"idée","eines":"d'un","lenkbaren":"manœuvrable","starren":"rigide","Luftschiffs":"dirigeable","nachdem":"après avoir","er":"il","während":"pendant","amerikanischen":"américaine","Bürgerkriegs":"guerre de Sécession","Beobachtungsballons":"ballons d'observation","gesehen":"vu","hatte":"avait","Viele":"Beaucoup","hielten":"considéraient","sein":"son","Vorhaben":"projet","für":"comme","Fantasie":"fantaisie","alten":"vieil","Mannes":"homme","doch":"mais","ließ":"laissa","sich":"se","nicht":"ne pas","beirren":"décourager","und":"et","baute":"construisit","schließlich":"finalement","Riesenluftschiffe":"immenses dirigeables","transatlantische":"transatlantiques","Passagierflüge":"vols de passagers","ermöglichten":"permirent","bevor":"avant que","Flugzeuge":"avions","dazu":"en","technisch":"techniquement","in":"en","Lage":"mesure","waren":"soient","Der":"L'","Höhepunkt":"apogée","dieser":"de cette","Ambition":"ambition","war":"fut","zugleich":"aussi","ihr":"sa","Hindenburg":"Hindenburg","im":"en","Jahr":"année","New":"New","Jersey":"Jersey","Flammen":"flammes","aufging":"s'embrasa","sechsunddreißig":"trente-six","Menschen":"personnes","starben":"moururent","wurde":"fut","dieses":"ce","Unglück":"désastre","live":"en direct","gefilmt":"filmé","Wochenschauen":"actualités cinématographiques","weltweit":"dans le monde entier","gezeigt":"diffusé","Innerhalb":"En","weniger":"quelques","Minuten":"minutes","ein":"un","Symbol":"symbole","technischen":"de progrès","Fortschritts":"progrès","zu":"en","menschlicher":"humaine","Selbstüberschätzung":"présomption","Wenn":"Quand","heute":"aujourd'hui","jungen":"jeunes","Ingenieuren":"ingénieurs","arbeite":"travaille","benutze":"utilise","diese":"cette","Geschichte":"histoire","oft":"souvent","als":"comme","Lehrbeispiel":"exemple pédagogique","Wasserstoff":"hydrogène","tragen":"porter","sollte":"devait","wäre":"aurait été","durch":"par","das":"l'","sicherere":"plus sûr","Helium":"hélium","ersetzt":"remplacé","worden":"été","hätten":"avaient","Vereinigten":"États-Unis","Staaten":"États-Unis","es":"il","aus":"pour","politischen":"politiques","Gründen":"raisons","den":"l'","Export":"exportation","gesperrt":"interdit","Man":"On","kann":"peut","also":"donc","behaupten":"prétendre","dass":"que","Katastrophe":"catastrophe","rein":"purement","bedingt":"d'ordre","sie":"elle","auch":"aussi","Ergebnis":"résultat","politischer":"politiques","Entscheidungen":"décisions","denen":"auxquelles","Ingenieure":"ingénieurs","ausgeliefert":"livrés","Diese":"Cet","Verschränkung":"enchevêtrement","Risiko":"risque","äußeren":"extérieures","Zwängen":"contraintes","begleitet":"accompagne","glaube":"crois","jede":"toute","große":"grande","technische":"technique","Errungenschaft":"réalisation","bis":"jusqu'à","wenn":"même si","wir":"nous","selten":"rarement","so":"aussi","dramatisch":"spectaculaire","daran":"en","erinnert":"rappelés","werden":"sommes","wie":"que","jene":"ces","brennenden":"enflammées","Bilder":"images","Lakehurst":"Lakehurst"}$t$::jsonb
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Woher hatte Graf Zeppelin laut Text die Idee für sein Luftschiff?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Von einem Traum$t$, false, 1),
    (v_q, $t$Von Beobachtungsballons im amerikanischen Bürgerkrieg$t$, true, 2),
    (v_q, $t$Von einem Buch$t$, false, 3),
    (v_q, $t$Von der Marine$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie reagierten viele Zeitgenossen zunächst auf Zeppelins Projekt?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Mit sofortiger Unterstützung$t$, false, 1),
    (v_q, $t$Sie hielten es für die Fantasie eines alten Mannes$t$, true, 2),
    (v_q, $t$Mit finanzieller Förderung$t$, false, 3),
    (v_q, $t$Mit Gleichgültigkeit$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was ermöglichten Zeppelins Luftschiffe laut Text, bevor Flugzeuge dazu technisch fähig waren?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Regionale Kurzflüge$t$, false, 1),
    (v_q, $t$Transatlantische Passagierflüge$t$, true, 2),
    (v_q, $t$Militärische Aufklärung$t$, false, 3),
    (v_q, $t$Wetterforschung$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was geschah 1937 mit der Hindenburg?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie landete sicher$t$, false, 1),
    (v_q, $t$Sie ging in New Jersey in Flammen auf$t$, true, 2),
    (v_q, $t$Sie wurde verkauft$t$, false, 3),
    (v_q, $t$Sie flog um die Welt$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie wurde das Unglück laut Text der Öffentlichkeit bekannt?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Durch Zeitungsberichte allein$t$, false, 1),
    (v_q, $t$Live gefilmt und weltweit in Wochenschauen gezeigt$t$, true, 2),
    (v_q, $t$Es blieb geheim$t$, false, 3),
    (v_q, $t$Durch Radiosendungen allein$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche symbolische Wende beschreibt der Autor bezüglich des Zeppelins?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Vom Symbol des Scheiterns zum Symbol des Erfolgs$t$, false, 1),
    (v_q, $t$Vom Symbol technischen Fortschritts zum Symbol menschlicher Selbstüberschätzung$t$, true, 2),
    (v_q, $t$Vom militärischen zum zivilen Nutzen$t$, false, 3),
    (v_q, $t$Vom Symbol der Armut zum Symbol des Reichtums$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Womit wurde die Hindenburg statt Helium betrieben?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Erdgas$t$, false, 1),
    (v_q, $t$Wasserstoff$t$, true, 2),
    (v_q, $t$Benzin$t$, false, 3),
    (v_q, $t$Kohle$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum wurde laut Text kein Helium verwendet?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Es war zu teuer$t$, false, 1),
    (v_q, $t$Die USA sperrten es aus politischen Gründen für den Export$t$, true, 2),
    (v_q, $t$Es gab keine Nachfrage$t$, false, 3),
    (v_q, $t$Es war technisch unmöglich$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie bewertet der Autor die Ursache der Katastrophe am Ende des Textes?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Als rein technisches Versagen$t$, false, 1),
    (v_q, $t$Als Ergebnis politischer Entscheidungen, denen die Ingenieure ausgeliefert waren, nicht nur technischer Fehler$t$, true, 2),
    (v_q, $t$Als reinen Zufall ohne erklärbare Ursache$t$, false, 3),
    (v_q, $t$Als Fehler der Passagiere$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet „die Selbstüberschätzung“?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Bescheidenheit$t$, false, 1),
    (v_q, $t$zu hohes Vertrauen in die eigenen Fähigkeiten$t$, true, 2),
    (v_q, $t$Angst vor sich selbst$t$, false, 3),
    (v_q, $t$Selbstkritik$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welcher Satz verwendet „Selbstüberschätzung“ sinnvoll?$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Seine Selbstüberschätzung führte zu riskanten Entscheidungen.$t$, true, 1),
    (v_q, $t$Seine Selbstüberschätzung machte ihn bescheiden.$t$, false, 2),
    (v_q, $t$Die Selbstüberschätzung half ihm, vorsichtig zu sein.$t$, false, 3),
    (v_q, $t$Selbstüberschätzung bedeutet, nichts zu wagen.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welches Wort ist am ehesten ein Gegensatz zu „Selbstüberschätzung“?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Übermut$t$, false, 1),
    (v_q, $t$Bescheidenheit/Selbstkritik$t$, true, 2),
    (v_q, $t$Stolz$t$, false, 3),
    (v_q, $t$Ehrgeiz$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Ergänzen Sie: Der Wasserstoff ___ durch Helium ersetzt worden, hätten die USA es erlaubt. (Konjunktiv II Passiv)$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$ist$t$, false, 1),
    (v_q, $t$wäre$t$, true, 2),
    (v_q, $t$hat$t$, false, 3),
    (v_q, $t$wird$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welcher Satz enthält eine korrekte Konjunktiv-II-Passiv-Konstruktion?$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Der Wasserstoff wäre durch Helium ersetzt worden.$t$, true, 1),
    (v_q, $t$Der Wasserstoff ist durch Helium ersetzt worden.$t$, false, 2),
    (v_q, $t$Der Wasserstoff wird durch Helium ersetzt.$t$, false, 3),
    (v_q, $t$Der Wasserstoff ersetzt Helium.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Formen Sie um ins Konjunktiv II der Vergangenheit (Passiv): „Man ersetzt den Wasserstoff nicht durch Helium.“$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Der Wasserstoff wäre nicht durch Helium ersetzt worden.$t$, true, 1),
    (v_q, $t$Der Wasserstoff wird nicht durch Helium ersetzt.$t$, false, 2),
    (v_q, $t$Der Wasserstoff ist nicht ersetzt worden.$t$, false, 3),
    (v_q, $t$Man ersetzt nicht den Wasserstoff.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$Schreiben Sie einen argumentativen Absatz (6-9 Sätze): Rechtfertigt technischer Fortschritt immer das Eingehen großer Risiken? Diskutieren Sie am Beispiel des Zeppelins.$t$, 1, 'normal', 'production', $t$Ich denke, dass technischer Fortschritt oft mit Risiken verbunden ist, diese Risiken aber niemals blind akzeptiert werden sollten. Die Geschichte des Zeppelins zeigt eindrucksvoll, wie eine ursprünglich brillante Idee durch äußere Umstände zur Katastrophe werden kann. Zeppelins Vision ermöglichte transatlantische Flüge lange vor dem heutigen Flugzeug, was die Bedeutung mutiger Innovation unterstreicht. Gleichzeitig zeigt der Absturz der Hindenburg, dass politische Entscheidungen, wie das Exportverbot für Helium, technische Risiken erheblich verschärfen können. Deshalb reicht es nicht, nur die technische Seite eines Projekts zu bewerten, man muss auch die politischen und wirtschaftlichen Rahmenbedingungen berücksichtigen. Ingenieure tragen zwar Verantwortung, doch sie sind oft von Entscheidungen abhängig, die außerhalb ihres Einflussbereichs liegen. Deshalb sollte jede große technische Ambition von einer ebenso gründlichen Risikoanalyse begleitet werden. Nur so lässt sich verhindern, dass Fortschritt am Ende in Tragödie umschlägt.$t$);

END $block$;

-- 23. Der Hörsaal, der Jahrhunderte trägt
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary) VALUES (
    'B2',
    $t$Der Hörsaal, der Jahrhunderte trägt$t$,
    $t$Als Literaturprofessorin an der Universität Heidelberg, die 1386 gegründet wurde und damit die älteste Universität Deutschlands ist, unterrichte ich in Räumen, in denen Generationen von Studierenden vor mir gesessen haben. Wenn ich morgens durch die Altstadt zur Neuen Universität gehe, denke ich manchmal daran, dass hier bereits im Mittelalter Studenten aus ganz Europa zusammenkamen, um Theologie, Recht und Medizin zu studieren, während gleichzeitig in der berühmten Studentenkarzer junge Männer für nächtliche Streiche eingesperrt wurden, deren Wände noch heute mit ihren eigenen Zeichnungen bedeckt sind.

Diese lange Kontinuität fasziniert mich, aber sie birgt auch Gefahren. Eine Institution, die sich zu sehr auf ihre Tradition beruft, kann leicht erstarren und den Anschluss an neue Denkweisen verlieren. Ich erinnere mich, wie schwierig es in meinen ersten Jahren war, digitale Lehrmethoden in einem System durchzusetzen, das über Jahrhunderte auf Vorlesungen im klassischen Sinn aufgebaut war. Manche Kollegen betrachteten jede Veränderung als Bedrohung der akademischen Würde.

Trotzdem glaube ich, dass gerade das Bewusstsein für diese lange Geschichte meinen Studierenden etwas Wichtiges vermittelt. Wer weiß, dass an diesem Ort seit über sechshundert Jahren gedacht, gestritten und geforscht wird, versteht sich selbst als Teil einer Kette, die weit über die eigene Karriere hinausreicht. Wenn heute Studierende aus aller Welt in meinen Seminaren sitzen, sehe ich darin keinen Widerspruch zur Tradition, sondern deren logische Fortsetzung: eine Universität, die immer schon international war, bleibt es auch in einer globalisierten Gegenwart.$t$,
    $t$En tant que professeure de littérature à l'université de Heidelberg, qui fut fondée en 1386 et qui est ainsi la plus ancienne université d'Allemagne, j'enseigne dans des salles où des générations d'étudiants se sont assises avant moi. Quand je traverse le matin la vieille ville pour me rendre à la Neue Universität, je pense parfois que des étudiants venus de toute l'Europe s'y rassemblaient déjà au Moyen Âge pour étudier la théologie, le droit et la médecine, tandis qu'en même temps, dans le célèbre carcer étudiant, de jeunes hommes étaient enfermés pour des farces nocturnes, dont les murs sont aujourd'hui encore couverts de leurs propres dessins.

Cette longue continuité me fascine, mais elle recèle aussi des dangers. Une institution qui s'appuie trop sur sa tradition peut facilement se figer et perdre le contact avec de nouvelles façons de penser. Je me souviens à quel point il fut difficile, dans mes premières années, d'imposer des méthodes d'enseignement numériques dans un système bâti depuis des siècles sur des cours magistraux au sens classique. Certains collègues considéraient chaque changement comme une menace pour la dignité académique.

Je crois pourtant que c'est précisément la conscience de cette longue histoire qui transmet à mes étudiants quelque chose d'important. Celui qui sait qu'en ce lieu, depuis plus de six cents ans, on pense, on se dispute et on fait de la recherche, se comprend lui-même comme faisant partie d'une chaîne qui dépasse largement sa propre carrière. Quand des étudiants du monde entier siègent aujourd'hui dans mes séminaires, je n'y vois aucune contradiction avec la tradition, mais bien sa continuation logique : une université qui a toujours été internationale le reste aussi dans un présent mondialisé.$t$,
    $t${"Als":"En tant que","Literaturprofessorin":"professeure de littérature","an":"à","der":"l'","Universität":"université","Heidelberg":"Heidelberg","die":"qui","gegründet":"fondée","wurde":"fut","und":"et","damit":"ainsi","älteste":"plus ancienne","Deutschlands":"d'Allemagne","ist":"est","unterrichte":"enseigne","ich":"j'","in":"dans","Räumen":"salles","denen":"où","Generationen":"générations","von":"d'","Studierenden":"étudiants","vor":"avant","mir":"moi","gesessen":"assises","haben":"ont","Wenn":"Quand","morgens":"le matin","durch":"à travers","Altstadt":"vieille ville","zur":"vers la","Neuen":"Neue","gehe":"traverse","denke":"pense","manchmal":"parfois","daran":"à cela","dass":"que","hier":"ici","bereits":"déjà","im":"au","Mittelalter":"Moyen Âge","Studenten":"étudiants","aus":"de","ganz":"toute","Europa":"Europe","zusammenkamen":"se rassemblaient","um":"pour","Theologie":"théologie","Recht":"droit","Medizin":"médecine","zu":"à","studieren":"étudier","während":"tandis que","gleichzeitig":"en même temps","berühmten":"célèbre","Studentenkarzer":"carcer étudiant","junge":"jeunes","Männer":"hommes","für":"pour","nächtliche":"nocturnes","Streiche":"farces","eingesperrt":"enfermés","wurden":"étaient","deren":"dont les","Wände":"murs","noch":"encore","heute":"aujourd'hui","mit":"de","ihren":"leurs","eigenen":"propres","Zeichnungen":"dessins","bedeckt":"couverts","sind":"sont","Diese":"Cette","lange":"longue","Kontinuität":"continuité","fasziniert":"fascine","mich":"me","aber":"mais","sie":"elle","birgt":"recèle","auch":"aussi","Gefahren":"dangers","Eine":"Une","Institution":"institution","sich":"s'","sehr":"trop","auf":"sur","ihre":"sa","Tradition":"tradition","beruft":"appuie","kann":"peut","leicht":"facilement","erstarren":"se figer","den":"le","Anschluss":"contact","neue":"nouvelles","Denkweisen":"façons de penser","verlieren":"perdre","Ich":"Je","erinnere":"souviens","wie":"à quel point","schwierig":"difficile","es":"il","meinen":"mes","ersten":"premières","Jahren":"années","war":"fut","digitale":"numériques","Lehrmethoden":"méthodes d'enseignement","einem":"un","System":"système","durchzusetzen":"imposer","das":"bâti","über":"depuis","Jahrhunderte":"siècles","Vorlesungen":"cours magistraux","klassischen":"classique","Sinn":"sens","aufgebaut":"bâti","Manche":"Certains","Kollegen":"collègues","betrachteten":"considéraient","jede":"chaque","Veränderung":"changement","als":"comme","Bedrohung":"menace","akademischen":"académique","Würde":"dignité","Trotzdem":"Pourtant","glaube":"crois","gerade":"précisément","Bewusstsein":"conscience","diese":"cette","Geschichte":"histoire","etwas":"quelque chose","Wichtiges":"d'important","vermittelt":"transmet","Wer":"Celui qui","weiß":"sait","diesem":"ce","Ort":"lieu","seit":"depuis","sechshundert":"six cents","gedacht":"pense","gestritten":"dispute","geforscht":"recherche","wird":"fait","versteht":"comprend","selbst":"lui-même","Teil":"partie","einer":"d'une","Kette":"chaîne","weit":"largement","eigene":"propre","Karriere":"carrière","hinausreicht":"dépasse","Studierende":"étudiants","aller":"du monde","Welt":"monde","Seminaren":"séminaires","sitzen":"siègent","sehe":"vois","darin":"y","keinen":"aucune","Widerspruch":"contradiction","sondern":"mais","logische":"logique","Fortsetzung":"continuation","eine":"une","immer":"toujours","schon":"déjà","international":"internationale","bleibt":"reste","globalisierten":"mondialisé","Gegenwart":"présent"}$t$::jsonb
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wann wurde die Universität Heidelberg gegründet?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$1386$t$, true, 1),
    (v_q, $t$1900$t$, false, 2),
    (v_q, $t$1618$t$, false, 3),
    (v_q, $t$1517$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was war der Studentenkarzer laut Text?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Eine Bibliothek$t$, false, 1),
    (v_q, $t$Ein Gefängnis für Studenten wegen nächtlicher Streiche$t$, true, 2),
    (v_q, $t$Ein Hörsaal$t$, false, 3),
    (v_q, $t$Eine Kirche$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was befindet sich laut Text noch heute an den Wänden des Studentenkarzers?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Alte Bücher$t$, false, 1),
    (v_q, $t$Zeichnungen der eingesperrten Studenten$t$, true, 2),
    (v_q, $t$Gemälde von Professoren$t$, false, 3),
    (v_q, $t$Nichts, die Wände sind leer$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Schwierigkeit erlebte die Autorin laut Text in ihren ersten Jahren?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Zu wenige Studierende$t$, false, 1),
    (v_q, $t$Digitale Lehrmethoden in einem traditionellen System durchzusetzen$t$, true, 2),
    (v_q, $t$Zu viel Geld$t$, false, 3),
    (v_q, $t$Keine Bibliothek$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie reagierten manche Kollegen auf Veränderungen laut Text?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie begrüßten sie sofort$t$, false, 1),
    (v_q, $t$Sie betrachteten jede Veränderung als Bedrohung der akademischen Würde$t$, true, 2),
    (v_q, $t$Sie waren gleichgültig$t$, false, 3),
    (v_q, $t$Sie forderten mehr Veränderung$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Gefahr sieht die Autorin in einer Institution mit zu starker Traditionsberufung?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Zu schnelles Wachstum$t$, false, 1),
    (v_q, $t$Erstarrung und Verlust des Anschlusses an neue Denkweisen$t$, true, 2),
    (v_q, $t$Zu viel internationale Öffnung$t$, false, 3),
    (v_q, $t$Finanzielle Probleme$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Woher kommen heute Studierende in den Seminaren der Autorin?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Nur aus Heidelberg$t$, false, 1),
    (v_q, $t$Aus aller Welt$t$, true, 2),
    (v_q, $t$Nur aus Deutschland$t$, false, 3),
    (v_q, $t$Nur aus Europa$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie interpretiert die Autorin die internationale Zusammensetzung ihrer Studierenden?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Als Widerspruch zur Tradition$t$, false, 1),
    (v_q, $t$Als logische Fortsetzung einer schon immer internationalen Universität$t$, true, 2),
    (v_q, $t$Als vorübergehendes Phänomen$t$, false, 3),
    (v_q, $t$Als Problem$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was möchte die Autorin ihren Studierenden durch das Bewusstsein für die lange Geschichte vermitteln?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Dass sie unwichtig sind$t$, false, 1),
    (v_q, $t$Dass sie Teil einer Kette sind, die weit über die eigene Karriere hinausreicht$t$, true, 2),
    (v_q, $t$Dass Tradition nutzlos ist$t$, false, 3),
    (v_q, $t$Dass nur alte Methoden gültig sind$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet „erstarren“?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$sich schnell verändern$t$, false, 1),
    (v_q, $t$unbeweglich/starr werden$t$, true, 2),
    (v_q, $t$wachsen$t$, false, 3),
    (v_q, $t$blühen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welcher Satz verwendet „erstarren“ korrekt?$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Eine Institution kann erstarren, wenn sie sich nicht verändert.$t$, true, 1),
    (v_q, $t$Eine Institution erstarrt Studierende.$t$, false, 2),
    (v_q, $t$Die Studierenden erstarren die Universität.$t$, false, 3),
    (v_q, $t$Erstarren bedeutet, sich schnell anzupassen.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welches Wort ist am ehesten ein Gegensatz zu „erstarren“?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$stagnieren$t$, false, 1),
    (v_q, $t$sich weiterentwickeln$t$, true, 2),
    (v_q, $t$stillstehen$t$, false, 3),
    (v_q, $t$festhalten$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Ergänzen Sie: Eine Institution, ___ sich zu sehr auf Tradition beruft, kann erstarren.$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$die$t$, true, 1),
    (v_q, $t$der$t$, false, 2),
    (v_q, $t$dem$t$, false, 3),
    (v_q, $t$was$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welcher Satz enthält einen korrekten Relativsatz?$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Die Universität, die 1386 gegründet wurde, ist die älteste Deutschlands.$t$, true, 1),
    (v_q, $t$Die Universität, den 1386 gegründet wurde.$t$, false, 2),
    (v_q, $t$Die Universität, wo 1386 gegründet wurde.$t$, false, 3),
    (v_q, $t$Die Universität, was 1386 gegründet wurde.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wählen Sie den Satz mit korrektem Relativpronomen im Genitiv: Die Kollegen, ___ Meinung sie respektiert, widersprachen ihr.$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$die$t$, false, 1),
    (v_q, $t$deren$t$, true, 2),
    (v_q, $t$denen$t$, false, 3),
    (v_q, $t$der$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$Schreiben Sie einen argumentativen Absatz (6-9 Sätze): Wie können Universitäten Tradition bewahren und sich gleichzeitig modernen Anforderungen öffnen?$t$, 1, 'normal', 'production', $t$Ich glaube, dass Universitäten Tradition und Modernisierung nicht als Gegensatz, sondern als sich ergänzende Kräfte betrachten sollten. Das Beispiel Heidelbergs zeigt, dass eine jahrhundertealte Institution durchaus offen für internationale Studierende und neue Lehrmethoden sein kann, ohne ihre Identität zu verlieren. Wichtig ist dabei, dass Veränderungen nicht als Bedrohung, sondern als natürliche Weiterentwicklung verstanden werden. Wenn Universitäten sich ausschließlich auf ihre Vergangenheit berufen, laufen sie Gefahr, den Anschluss an neue Denkweisen zu verlieren. Andererseits würde eine Universität ohne jedes Traditionsbewusstsein ihre besondere kulturelle Bedeutung einbüßen. Deshalb sollten Lehrende aktiv Brücken zwischen alten Werten und neuen Methoden bauen, etwa indem digitale Werkzeuge in klassische Seminarformen integriert werden. Studierende profitieren am meisten, wenn sie sich sowohl als Teil einer langen Geschichte als auch als Mitgestalter der Zukunft verstehen. Genau dieses Gleichgewicht macht für mich eine wirklich lebendige akademische Institution aus.$t$);

END $block$;

-- 24. Eine Wurst und ihre vielen Heimaten
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary) VALUES (
    'B2',
    $t$Eine Wurst und ihre vielen Heimaten$t$,
    $t$Als Metzgermeister aus Thüringen werde ich oft gefragt, welche Bratwurst die echte sei, und ehrlich gesagt, gibt es darauf keine einfache Antwort. In Deutschland existieren weit über vierzig regionale Varianten der Bratwurst, und fast jede Region behauptet, ihre Version sei die ursprüngliche. Die Nürnberger Rostbratwurst ist klein und wird traditionell mit Majoran gewürzt, während die Thüringer Bratwurst, deren Rezept angeblich seit 1404 urkundlich belegt ist, deutlich länger und kräftiger im Geschmack ist. In Franken wiederum wird sie oft auf dem Rost über offenem Buchenholzfeuer gegrillt, was einen ganz eigenen rauchigen Geschmack ergibt.

Diese regionale Vielfalt zeigt für mich etwas Grundsätzliches über die deutsche Identität, die viel weniger einheitlich ist, als Außenstehende oft annehmen. Deutschland wurde erst 1871 politisch vereint, und davor bestand es aus unzähligen kleinen Fürstentümern, von denen jedes seine eigenen kulinarischen Traditionen entwickelte. Die Bratwurst wurde also nicht in einem einzigen Zentrum erfunden, sondern parallel an vielen Orten, jeweils angepasst an lokale Zutaten und Gewohnheiten.

Wenn ich heute in meiner Metzgerei jungen Auszubildenden das traditionelle Rezept beibringe, sage ich ihnen immer, dass Regionalität keine Schwäche, sondern eine Stärke ist. In einer Zeit, in der viele Lebensmittel weltweit gleich schmecken, weil sie industriell standardisiert wurden, bewahrt die Bratwurst eine erstaunliche Vielfalt. Jede Region, die an ihrem eigenen Rezept festhält, bewahrt damit auch ein Stück ihrer eigenen Geschichte, die sich eben nicht in einer einzigen, nationalen Wurst zusammenfassen lässt.$t$,
    $t$En tant que maître boucher de Thuringe, on me demande souvent quelle saucisse grillée est la véritable, et honnêtement, il n'y a pas de réponse simple à cela. En Allemagne, il existe largement plus de quarante variantes régionales de la saucisse grillée, et presque chaque région affirme que sa version est l'originale. La Nürnberger Rostbratwurst est petite et traditionnellement assaisonnée à la marjolaine, tandis que la saucisse de Thuringe, dont la recette est attestée par des documents, paraît-il, depuis 1404, est nettement plus longue et plus corsée en goût. En Franconie, en revanche, elle est souvent grillée sur le gril au feu de bois de hêtre à l'air libre, ce qui donne un goût fumé bien particulier.

Cette diversité régionale montre, pour moi, quelque chose de fondamental sur l'identité allemande, qui est beaucoup moins uniforme que ne le pensent souvent les étrangers. L'Allemagne ne fut politiquement unifiée qu'en 1871, et auparavant, elle se composait d'innombrables petites principautés, dont chacune développa ses propres traditions culinaires. La saucisse grillée n'a donc pas été inventée en un seul centre, mais en parallèle en de nombreux endroits, à chaque fois adaptée aux ingrédients et aux habitudes locales.

Quand aujourd'hui, dans ma boucherie, j'enseigne la recette traditionnelle à de jeunes apprentis, je leur dis toujours que la régionalité n'est pas une faiblesse, mais une force. À une époque où de nombreux aliments ont le même goût partout dans le monde parce qu'ils ont été standardisés industriellement, la saucisse grillée préserve une diversité étonnante. Chaque région qui s'en tient à sa propre recette préserve ainsi aussi un morceau de sa propre histoire, qui ne saurait précisément pas se résumer en une seule saucisse nationale.$t$,
    $t${"Als":"En tant que","Metzgermeister":"maître boucher","aus":"de","Thüringen":"Thuringe","werde":"suis","ich":"je","oft":"souvent","gefragt":"interrogé","welche":"quelle","Bratwurst":"saucisse grillée","die":"la","echte":"véritable","sei":"est","und":"et","ehrlich":"honnêtement","gesagt":"dit","gibt":"y a","es":"il","darauf":"à cela","keine":"pas de","einfache":"simple","Antwort":"réponse","In":"En","Deutschland":"Allemagne","existieren":"existent","weit":"largement","über":"plus de","vierzig":"quarante","regionale":"régionales","Varianten":"variantes","der":"de la","fast":"presque","jede":"chaque","Region":"région","behauptet":"affirme","ihre":"sa","Version":"version","ursprüngliche":"originale","Die":"La","Nürnberger":"de Nuremberg","Rostbratwurst":"saucisse grillée","ist":"est","klein":"petite","wird":"est","traditionell":"traditionnellement","mit":"à","Majoran":"marjolaine","gewürzt":"assaisonnée","während":"tandis que","Thüringer":"de Thuringe","deren":"dont la","Rezept":"recette","angeblich":"paraît-il","seit":"depuis","urkundlich":"par des documents","belegt":"attestée","deutlich":"nettement","länger":"plus longue","kräftiger":"plus corsée","im":"en","Geschmack":"goût","Franken":"Franconie","wiederum":"en revanche","sie":"elle","auf":"sur","dem":"le","Rost":"gril","offenem":"à l'air libre","Buchenholzfeuer":"feu de bois de hêtre","gegrillt":"grillée","was":"ce qui","einen":"un","ganz":"tout à fait","eigenen":"particulier","rauchigen":"fumé","ergibt":"donne","Diese":"Cette","Vielfalt":"diversité","zeigt":"montre","für":"pour","mich":"moi","etwas":"quelque chose","Grundsätzliches":"de fondamental","deutsche":"allemande","Identität":"identité","viel":"beaucoup","weniger":"moins","einheitlich":"uniforme","als":"que","Außenstehende":"les étrangers","annehmen":"pensent","wurde":"fut","erst":"seulement","politisch":"politiquement","vereint":"unifiée","davor":"auparavant","bestand":"se composait","unzähligen":"d'innombrables","kleinen":"petites","Fürstentümern":"principautés","von":"dont","denen":"dont","jedes":"chacune","seine":"ses","kulinarischen":"culinaires","Traditionen":"traditions","entwickelte":"développa","also":"donc","nicht":"ne pas","in":"en","einem":"un","einzigen":"seul","Zentrum":"centre","erfunden":"inventée","sondern":"mais","parallel":"en parallèle","an":"en","vielen":"de nombreux","Orten":"endroits","jeweils":"à chaque fois","angepasst":"adaptée","lokale":"locales","Zutaten":"ingrédients","Gewohnheiten":"habitudes","Wenn":"Quand","heute":"aujourd'hui","meiner":"ma","Metzgerei":"boucherie","jungen":"jeunes","Auszubildenden":"apprentis","das":"la","traditionelle":"traditionnelle","beibringe":"enseigne","sage":"dis","ihnen":"leur","immer":"toujours","dass":"que","Regionalität":"régionalité","Schwäche":"faiblesse","eine":"une","Stärke":"force","einer":"à une","Zeit":"époque","Lebensmittel":"aliments","weltweit":"partout dans le monde","gleich":"même","schmecken":"ont goût","weil":"parce qu'","industriell":"industriellement","standardisiert":"standardisés","wurden":"été","bewahrt":"préserve","erstaunliche":"étonnante","Jede":"Chaque","ihrem":"sa","festhält":"s'en tient","damit":"ainsi","auch":"aussi","ein":"un","Stück":"morceau","Geschichte":"histoire","sich":"se","eben":"précisément","nationalen":"nationale","Wurst":"saucisse","zusammenfassen":"résumer","lässt":"saurait","ihrer":"sa","viele":"de nombreux"}$t$::jsonb
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie viele regionale Bratwurst-Varianten gibt es laut Text in Deutschland?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$über vierzig$t$, true, 1),
    (v_q, $t$zehn$t$, false, 2),
    (v_q, $t$zwei$t$, false, 3),
    (v_q, $t$hundert$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was unterscheidet die Nürnberger Rostbratwurst laut Text von anderen?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie ist besonders groß$t$, false, 1),
    (v_q, $t$Sie ist klein und wird mit Majoran gewürzt$t$, true, 2),
    (v_q, $t$Sie wird nicht gegrillt$t$, false, 3),
    (v_q, $t$Sie enthält kein Fleisch$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Seit wann ist die Thüringer Bratwurst laut Text urkundlich belegt?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$seit 1871$t$, false, 1),
    (v_q, $t$seit 1404$t$, true, 2),
    (v_q, $t$seit 1945$t$, false, 3),
    (v_q, $t$seit 1800$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wann wurde Deutschland politisch vereint?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$1871$t$, true, 1),
    (v_q, $t$1500$t$, false, 2),
    (v_q, $t$1945$t$, false, 3),
    (v_q, $t$1618$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum entwickelten sich laut Text so viele verschiedene Bratwurstrezepte?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Weil Deutschland aus vielen kleinen Fürstentümern mit eigenen Traditionen bestand$t$, true, 1),
    (v_q, $t$Weil es nur eine Metzgerei gab$t$, false, 2),
    (v_q, $t$Weil das Rezept geheim war$t$, false, 3),
    (v_q, $t$Weil es keine Zutaten gab$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was zeigt die regionale Vielfalt der Bratwurst laut Autor über die deutsche Identität?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Dass sie völlig einheitlich ist$t$, false, 1),
    (v_q, $t$Dass sie viel weniger einheitlich ist, als Außenstehende oft annehmen$t$, true, 2),
    (v_q, $t$Dass sie erst nach 1871 entstand$t$, false, 3),
    (v_q, $t$Dass sie ausschließlich französisch beeinflusst ist$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bringt der Metzgermeister seinen Auszubildenden bei?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Nur moderne Rezepte$t$, false, 1),
    (v_q, $t$Das traditionelle Rezept und die Bedeutung der Regionalität$t$, true, 2),
    (v_q, $t$Wie man Fabriken baut$t$, false, 3),
    (v_q, $t$Nichts über Tradition$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie bewertet der Autor Regionalität am Ende des Textes?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Als Schwäche$t$, false, 1),
    (v_q, $t$Als Stärke, die Vielfalt bewahrt$t$, true, 2),
    (v_q, $t$Als unwichtig$t$, false, 3),
    (v_q, $t$Als Hindernis für den Verkauf$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche These vertritt der Autor über industrielle Standardisierung von Lebensmitteln?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie fördert regionale Vielfalt$t$, false, 1),
    (v_q, $t$Sie führt dazu, dass viele Lebensmittel weltweit gleich schmecken, während die Bratwurst Vielfalt bewahrt$t$, true, 2),
    (v_q, $t$Sie ist notwendig für die Bratwurst$t$, false, 3),
    (v_q, $t$Sie hat keinen Einfluss$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet „die Zutat“?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$ein Werkzeug$t$, false, 1),
    (v_q, $t$ein Bestandteil eines Rezepts$t$, true, 2),
    (v_q, $t$ein Gewürz allein$t$, false, 3),
    (v_q, $t$ein Teller$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welcher Satz verwendet „Zutat“ korrekt?$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Jede Region passte das Rezept an lokale Zutaten an.$t$, true, 1),
    (v_q, $t$Jede Region aß die Zutat direkt.$t$, false, 2),
    (v_q, $t$Die Zutat kochte das Rezept.$t$, false, 3),
    (v_q, $t$Zutaten sind immer Fleisch.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welches Wort ist am wenigsten synonym zu „Zutat“?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Bestandteil$t$, false, 1),
    (v_q, $t$Ingredienz$t$, false, 2),
    (v_q, $t$Werkzeug$t$, true, 3),
    (v_q, $t$Komponente$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wählen Sie die Passivform: Die Bratwurst ___ nicht an einem einzigen Ort erfunden.$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$hat$t$, false, 1),
    (v_q, $t$wurde$t$, true, 2),
    (v_q, $t$ist$t$, false, 3),
    (v_q, $t$wird gewesen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welcher Satz steht im Passiv?$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Man erfand die Bratwurst an vielen Orten.$t$, false, 1),
    (v_q, $t$Die Bratwurst wurde an vielen Orten erfunden.$t$, true, 2),
    (v_q, $t$Die Bratwurst erfand viele Orte.$t$, false, 3),
    (v_q, $t$Man isst die Bratwurst gern.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Formen Sie ins Passiv um: „Man passte das Rezept an lokale Zutaten an.“$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Das Rezept wurde an lokale Zutaten angepasst.$t$, true, 1),
    (v_q, $t$Das Rezept passte lokale Zutaten an.$t$, false, 2),
    (v_q, $t$Man hat das Rezept angepasst gehabt.$t$, false, 3),
    (v_q, $t$Lokale Zutaten passten das Rezept an.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$Schreiben Sie einen argumentativen Absatz (6-9 Sätze): Ist regionale kulinarische Vielfalt in Zeiten der Globalisierung noch wichtig?$t$, 1, 'normal', 'production', $t$Meiner Meinung nach ist regionale kulinarische Vielfalt heute wichtiger denn je, gerade weil die Globalisierung viele Lebensmittel immer ähnlicher macht. Das Beispiel der Bratwurst zeigt eindrucksvoll, wie über vierzig regionale Varianten ein Stück gemeinsamer, aber vielfältiger Geschichte bewahren. Wenn jede Region an ihrem eigenen Rezept festhält, bleibt ein Teil der lokalen Identität sichtbar und lebendig. Gleichzeitig profitieren Konsumenten von dieser Vielfalt, weil sie unterschiedliche Geschmackserlebnisse und Traditionen kennenlernen können, statt überall dasselbe standardisierte Produkt zu finden. Natürlich erleichtert die Globalisierung den Handel und macht viele Produkte günstiger, was man nicht ignorieren sollte. Dennoch sollten Metzgereien und kleine Betriebe aktiv unterstützt werden, damit regionale Rezepte nicht vollständig von industrieller Massenware verdrängt werden. Bildung über die Herkunft von Lebensmitteln kann dabei helfen, das Bewusstsein für diese Vielfalt zu stärken. So bleibt kulinarische Regionalität auch künftigen Generationen erhalten.$t$);

END $block$;

-- 25. Hundert Jahre Schlaf, neu gelesen
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary) VALUES (
    'B2',
    $t$Hundert Jahre Schlaf, neu gelesen$t$,
    $t$Als Theaterregisseurin habe ich Dornröschen vor einigen Jahren für die Bühne neu inszeniert, und diese Arbeit hat meinen Blick auf das alte Märchen völlig verändert. In der klassischen Fassung, die von den Brüdern Grimm gesammelt wurde, ist die Prinzessin über hundert Jahre lang passiv: Sie sticht sich an einer Spindel, fällt in einen tiefen Schlaf, und ihre einzige Handlung besteht darin, am Ende von einem Prinzen geküsst zu werden. Lange Zeit wurde diese Geschichte als romantisches Symbol wahrer Liebe gelesen, doch je länger ich mich damit beschäftigte, desto unbehaglicher wurde mir bei dieser Interpretation.

Für meine Inszenierung habe ich die Perspektive verschoben. Statt den Schlaf als bloße Untätigkeit darzustellen, habe ich ihn als eine Zeit des inneren Wachstums gezeigt, während der die Figur im Traum Entscheidungen trifft, Ängste durchlebt und sich innerlich auf ihr Erwachen vorbereitet. Der Kuss wird bei mir nicht zum entscheidenden, rettenden Moment, sondern lediglich zum äußeren Zeichen eines Prozesses, der längst vorher begonnen hatte.

Diese Neudeutung wurde nicht von allen Zuschauern akzeptiert; manche vermissten die klassische Romantik. Aber gerade jüngere Zuschauerinnen schrieben mir nach den Vorstellungen, dass sie sich zum ersten Mal in dieser Figur wiedererkannt hätten, nicht als Opfer, sondern als jemand, der Zeit braucht, um bereit zu sein. Ich glaube, dass alte Märchen genau deshalb überleben, weil sie sich immer wieder neu erzählen lassen, ohne ihre ursprüngliche Struktur zu verlieren, und jede Generation findet darin die Fragen, die sie gerade selbst beschäftigen.$t$,
    $t$En tant que metteuse en scène de théâtre, j'ai mis en scène il y a quelques années une nouvelle version de La Belle au bois dormant, et ce travail a complètement changé mon regard sur ce vieux conte. Dans la version classique, recueillie par les frères Grimm, la princesse est passive pendant plus de cent ans : elle se pique à un fuseau, tombe dans un profond sommeil, et sa seule action consiste, à la fin, à être embrassée par un prince. Longtemps, cette histoire fut lue comme un symbole romantique du véritable amour, mais plus je m'y suis intéressée, plus cette interprétation m'a mise mal à l'aise.

Pour ma mise en scène, j'ai déplacé la perspective. Au lieu de représenter le sommeil comme une simple inactivité, je l'ai montré comme un temps de croissance intérieure, pendant lequel le personnage, en rêve, prend des décisions, traverse des peurs et se prépare intérieurement à son réveil. Le baiser ne devient pas chez moi le moment décisif et salvateur, mais seulement le signe extérieur d'un processus qui avait commencé bien avant.

Cette réinterprétation n'a pas été acceptée par tous les spectateurs ; certains regrettaient le romantisme classique. Mais ce sont justement de plus jeunes spectatrices qui m'ont écrit après les représentations qu'elles s'étaient reconnues pour la première fois dans ce personnage, non pas comme une victime, mais comme quelqu'un qui a besoin de temps pour être prêt. Je crois que les vieux contes survivent précisément parce qu'ils se laissent sans cesse raconter à nouveau, sans perdre leur structure originelle, et que chaque génération y trouve les questions qui l'occupent elle-même en ce moment.$t$,
    $t${"Als":"En tant que","Theaterregisseurin":"metteuse en scène de théâtre","habe":"ai","ich":"j'","Dornröschen":"La Belle au bois dormant","vor":"il y a","einigen":"quelques","Jahren":"années","für":"pour","die":"la","Bühne":"scène","neu":"à nouveau","inszeniert":"mis en scène","und":"et","diese":"ce","Arbeit":"travail","hat":"a","meinen":"mon","Blick":"regard","auf":"sur","das":"ce","alte":"vieux","Märchen":"conte","völlig":"complètement","verändert":"changé","In":"Dans","der":"le","klassischen":"classique","Fassung":"version","von":"par","den":"le","Brüdern":"frères","Grimm":"Grimm","gesammelt":"recueillie","wurde":"fut","ist":"est","Prinzessin":"princesse","über":"plus de","hundert":"cent","Jahre":"ans","lang":"pendant","passiv":"passive","Sie":"Elle","sticht":"pique","sich":"se","an":"à","einer":"un","Spindel":"fuseau","fällt":"tombe","in":"dans","einen":"un","tiefen":"profond","Schlaf":"sommeil","ihre":"sa","einzige":"seule","Handlung":"action","besteht":"consiste","darin":"en cela","am":"à la","Ende":"fin","einem":"un","Prinzen":"prince","geküsst":"embrassée","zu":"à","werden":"être","Lange":"Longtemps","Zeit":"temps","Geschichte":"histoire","als":"comme","romantisches":"romantique","Symbol":"symbole","wahrer":"véritable","Liebe":"amour","gelesen":"lue","doch":"mais","je":"plus","länger":"longtemps","mich":"m'","damit":"à cela","beschäftigte":"intéressée","desto":"plus","unbehaglicher":"mal à l'aise","mir":"me","bei":"avec","dieser":"cette","Interpretation":"interprétation","Für":"Pour","meine":"ma","Inszenierung":"mise en scène","Perspektive":"perspective","verschoben":"déplacé","Statt":"Au lieu de","bloße":"simple","Untätigkeit":"inactivité","darzustellen":"représenter","ihn":"le","eine":"un","des":"de","inneren":"intérieure","Wachstums":"croissance","gezeigt":"montré","während":"pendant lequel","Figur":"personnage","im":"en","Traum":"rêve","Entscheidungen":"décisions","trifft":"prend","Ängste":"peurs","durchlebt":"traverse","innerlich":"intérieurement","ihr":"son","Erwachen":"réveil","vorbereitet":"prépare","Der":"Le","Kuss":"baiser","wird":"devient","nicht":"pas","zum":"le","entscheidenden":"décisif","rettenden":"salvateur","Moment":"moment","sondern":"mais","lediglich":"seulement","äußeren":"extérieur","Zeichen":"signe","eines":"d'un","Prozesses":"processus","längst":"bien","vorher":"avant","begonnen":"commencé","hatte":"avait","Diese":"Cette","Neudeutung":"réinterprétation","allen":"par tous","Zuschauern":"spectateurs","akzeptiert":"acceptée","manche":"certains","vermissten":"regrettaient","klassische":"classique","Romantik":"romantisme","Aber":"Mais","gerade":"justement","jüngere":"plus jeunes","Zuschauerinnen":"spectatrices","schrieben":"ont écrit","nach":"après","Vorstellungen":"représentations","dass":"que","sie":"elles","ersten":"première","Mal":"fois","wiedererkannt":"reconnues","hätten":"s'étaient","Opfer":"victime","jemand":"quelqu'un","braucht":"a besoin","um":"pour","bereit":"prêt","sein":"être","Ich":"Je","glaube":"crois","genau":"précisément","deshalb":"pourquoi","überleben":"survivent","weil":"parce qu'","immer wieder":"sans cesse","wieder":"encore","erzählen":"raconter","lassen":"laissent","ohne":"sans","ursprüngliche":"originelle","Struktur":"structure","verlieren":"perdre","jede":"chaque","Generation":"génération","findet":"trouve","Fragen":"questions","selbst":"elle-même","beschäftigen":"occupent","immer":"toujours"}$t$::jsonb
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was macht die Prinzessin in der klassischen Fassung des Märchens über hundert Jahre lang?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie kämpft gegen einen Drachen$t$, false, 1),
    (v_q, $t$Sie schläft passiv$t$, true, 2),
    (v_q, $t$Sie reist um die Welt$t$, false, 3),
    (v_q, $t$Sie regiert das Land$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie wurde die Geschichte laut Text lange Zeit interpretiert?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Als Kritik an der Monarchie$t$, false, 1),
    (v_q, $t$Als romantisches Symbol wahrer Liebe$t$, true, 2),
    (v_q, $t$Als Kriegsgeschichte$t$, false, 3),
    (v_q, $t$Als religiöse Erzählung$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was löste bei der Regisseurin zunehmend Unbehagen aus?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Die Länge des Märchens$t$, false, 1),
    (v_q, $t$Die Interpretation der Passivität der Prinzessin als romantisches Ideal$t$, true, 2),
    (v_q, $t$Die Musik der Inszenierung$t$, false, 3),
    (v_q, $t$Das Bühnenbild$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie stellt die Regisseurin den Schlaf in ihrer Inszenierung dar?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Als reine Untätigkeit$t$, false, 1),
    (v_q, $t$Als Zeit inneren Wachstums$t$, true, 2),
    (v_q, $t$Als Strafe$t$, false, 3),
    (v_q, $t$Als Krankheit$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Rolle spielt der Kuss in der neuen Inszenierung?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er ist der entscheidende rettende Moment$t$, false, 1),
    (v_q, $t$Er ist nur das äußere Zeichen eines längst begonnenen Prozesses$t$, true, 2),
    (v_q, $t$Er kommt gar nicht vor$t$, false, 3),
    (v_q, $t$Er wird durch einen Kampf ersetzt$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie unterscheidet sich die neue Interpretation strukturell von der klassischen Fassung laut Text?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie verändert die Handlung komplett$t$, false, 1),
    (v_q, $t$Sie verschiebt die Perspektive, ohne die Grundstruktur zu verlieren$t$, true, 2),
    (v_q, $t$Sie streicht den Schlaf ganz$t$, false, 3),
    (v_q, $t$Sie fügt einen neuen Prinzen hinzu$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie reagierten manche Zuschauer auf die Neudeutung?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Alle waren begeistert$t$, false, 1),
    (v_q, $t$Manche vermissten die klassische Romantik$t$, true, 2),
    (v_q, $t$Niemand reagierte$t$, false, 3),
    (v_q, $t$Alle waren wütend$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was schrieben jüngere Zuschauerinnen der Regisseurin laut Text?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Dass sie das Stück hassten$t$, false, 1),
    (v_q, $t$Dass sie sich zum ersten Mal in der Figur wiedererkannt hätten$t$, true, 2),
    (v_q, $t$Dass sie nie wiederkommen würden$t$, false, 3),
    (v_q, $t$Dass die Musik zu laut war$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum überleben alte Märchen laut der abschließenden These der Autorin?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Weil sie sich nie verändern$t$, false, 1),
    (v_q, $t$Weil sie sich immer wieder neu erzählen lassen und jede Generation eigene Fragen darin findet$t$, true, 2),
    (v_q, $t$Weil sie verboten wurden$t$, false, 3),
    (v_q, $t$Weil niemand sie mehr liest$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet „die Untätigkeit“?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$viel Aktivität$t$, false, 1),
    (v_q, $t$Passivität, nichts tun$t$, true, 2),
    (v_q, $t$Mut$t$, false, 3),
    (v_q, $t$Freude$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welcher Satz verwendet „Untätigkeit“ korrekt?$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Ihre Untätigkeit wurde als Schwäche gedeutet.$t$, true, 1),
    (v_q, $t$Ihre Untätigkeit half ihr zu kämpfen.$t$, false, 2),
    (v_q, $t$Untätigkeit bedeutet, aktiv zu handeln.$t$, false, 3),
    (v_q, $t$Sie zeigte große Untätigkeit im Kampf.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welches Wort ist am ehesten ein Gegensatz zu „Untätigkeit“?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Passivität$t$, false, 1),
    (v_q, $t$Handlungsfähigkeit$t$, true, 2),
    (v_q, $t$Ruhe$t$, false, 3),
    (v_q, $t$Schlaf$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Ergänzen Sie: Die Geschichte, ___ von den Brüdern Grimm gesammelt wurde, ist weltbekannt.$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$die$t$, true, 1),
    (v_q, $t$der$t$, false, 2),
    (v_q, $t$dem$t$, false, 3),
    (v_q, $t$was$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welcher Satz steht im Passiv?$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Die Brüder Grimm sammelten die Geschichte.$t$, false, 1),
    (v_q, $t$Die Geschichte wurde von den Brüdern Grimm gesammelt.$t$, true, 2),
    (v_q, $t$Die Geschichte sammelte die Brüder Grimm.$t$, false, 3),
    (v_q, $t$Die Brüder Grimm schrieben die Geschichte.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Formen Sie um ins Passiv: „Manche Zuschauer akzeptierten die Neudeutung nicht.“$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Die Neudeutung wurde von manchen Zuschauern nicht akzeptiert.$t$, true, 1),
    (v_q, $t$Die Neudeutung akzeptierte manche Zuschauer nicht.$t$, false, 2),
    (v_q, $t$Manche Zuschauer wurden nicht akzeptiert.$t$, false, 3),
    (v_q, $t$Die Neudeutung hat manche Zuschauer akzeptiert.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$Schreiben Sie einen argumentativen Absatz (6-9 Sätze): Sollten klassische Märchen für ein modernes Publikum neu interpretiert werden, auch wenn das die ursprüngliche Botschaft verändert?$t$, 1, 'normal', 'production', $t$Ich bin der festen Überzeugung, dass klassische Märchen durchaus neu interpretiert werden sollten, weil sie sonst Gefahr laufen, für heutige Zuschauer bedeutungslos zu werden. Das Beispiel von Dornröschen zeigt, wie eine neue Perspektive der Hauptfigur mehr innere Handlungsfähigkeit zuschreiben kann, ohne die ursprüngliche Struktur der Geschichte zu zerstören. Gerade jüngere Zuschauerinnen fühlten sich laut der Regisseurin zum ersten Mal wirklich in der Figur wiedererkannt, was zeigt, wie wichtig zeitgemäße Interpretationen sein können. Natürlich sollte man dabei nicht respektlos mit dem Originaltext umgehen oder seine kulturelle Herkunft ignorieren. Kritiker mögen einwenden, dass Neudeutungen die ursprüngliche Botschaft verwässern oder verfälschen. Ich halte dagegen, dass Märchen seit jeher mündlich weitergegeben und dabei immer wieder verändert wurden, sodass Wandel Teil ihrer Tradition ist. Entscheidend ist meiner Meinung nach, dass die Kernstruktur erkennbar bleibt, während die Interpretation neue Fragen aufwirft. So bleiben alte Geschichten lebendig, statt zu musealen Relikten zu erstarren.$t$);

END $block$;

