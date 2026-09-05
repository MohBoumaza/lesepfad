-- Contenu "patrimoine culturel allemand" — niveau C1 (8 histoires).
-- Contes/légendes du domaine public réécrits, ou fictions originales inspirées
-- de genres/thèmes majeurs de la culture et de l'école allemandes.

-- 1. Das Formular Nr. 7
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary, culture_note) VALUES (
    'C1',
    $t$Das Formular Nr. 7$t$,
    $t$Herr Albeck erhielt den Brief an einem gewöhnlichen Dienstagmorgen, zusammen mit der Zeitung und einem Werbeprospekt für Gartengeräte. Das Schreiben war knapp: Er möge sich binnen vierzehn Tagen beim Amt für Bestandsprüfung melden, um „die Angelegenheit“ zu klären. Welche Angelegenheit, stand nicht dabei.

Er ging hin. Ein Beamter mit müden Augen bat um seinen Ausweis, kopierte ihn zweimal, heftete die Kopien in eine Mappe und erklärte, die zuständige Abteilung befinde sich im dritten Stock. Im dritten Stock erfuhr er, die Abteilung sei vor zwei Jahren ins Erdgeschoss verlegt worden. Im Erdgeschoss reichte man ihm ein weiteres Formular, das er ausfüllen und, wie es hieß, „zur Prüfung der Prüfung“ wieder im dritten Stock einreichen müsse.

Niemand war unfreundlich. Alle waren, im Gegenteil, von einer sanften, fast fürsorglichen Höflichkeit, die ihm das Gefühl gab, im Unrecht zu sein, ohne dass er hätte sagen können, worin sein Vergehen bestünde. Einmal fragte er höflich nach, worum es eigentlich gehe, und erhielt die Antwort, dies werde „im weiteren Verlauf des Verfahrens ersichtlich“. Nach drei Wochen besaß er eine Mappe voller Bestätigungen, die einander widersprachen, und eine Nummer, unter der er, wie man ihm versicherte, „im System registriert“ sei.

Manchmal, abends, fragte er sich, ob es das Amt überhaupt gebe oder ob es nur aus den Fluren bestehe, durch die er ging. Die Angelegenheit selbst war längst zur Nebensache geworden; wichtig war nur noch, dass sie bearbeitet wurde. Und so kehrte er, Woche für Woche, in das Gebäude zurück, nicht weil er hoffte, dass sich etwas klären würde, sondern weil das Zurückkehren selbst zu der einzigen Handlung geworden war, die ihm noch sinnvoll erschien.$t$,
    $t$Monsieur Albeck reçut la lettre un mardi matin ordinaire, avec le journal et un prospectus publicitaire pour du matériel de jardin. Le courrier était bref : il devait se présenter dans un délai de quatorze jours au Bureau de vérification des dossiers pour clarifier « l'affaire ». De quelle affaire il s'agissait, cela n'était pas précisé.

Il s'y rendit. Un fonctionnaire aux yeux fatigués lui demanda sa carte d'identité, la photocopia deux fois, agrafa les copies dans un dossier et expliqua que le service compétent se trouvait au troisième étage. Au troisième étage, il apprit que le service avait été transféré au rez-de-chaussée deux ans auparavant. Au rez-de-chaussée, on lui remit un autre formulaire qu'il devait remplir et, disait-on, déposer de nouveau au troisième étage « pour la vérification de la vérification ».

Personne n'était désagréable. Tous faisaient preuve, au contraire, d'une politesse douce, presque prévenante, qui lui donnait l'impression d'être en tort sans qu'il pût dire en quoi consistait sa faute. Une fois, il demanda poliment de quoi il s'agissait au juste, et reçut pour toute réponse que cela « apparaîtrait au cours de la procédure ». Au bout de trois semaines, il possédait un dossier plein d'attestations qui se contredisaient entre elles, et un numéro sous lequel, lui assurait-on, il était « enregistré dans le système ».

Parfois, le soir, il se demandait si le bureau existait vraiment ou s'il ne consistait qu'en les couloirs qu'il traversait. L'affaire elle-même était depuis longtemps devenue secondaire ; seul importait désormais qu'elle fût traitée. Et ainsi il retournait, semaine après semaine, dans le bâtiment, non parce qu'il espérait que quelque chose se clarifierait, mais parce que ce retour lui-même était devenu la seule action qui lui semblât encore avoir un sens.$t$,
    $t${"Herr":"monsieur","Albeck":"Albeck (nom propre)","erhielt":"reçut","den":"le","Brief":"la lettre","an":"en (temporel)","einem":"un","gewöhnlichen":"ordinaire","Dienstagmorgen":"matin de mardi","zusammen":"ensemble","mit":"avec","der":"le/la","Zeitung":"le journal","und":"et","Werbeprospekt":"le prospectus publicitaire","für":"pour","Gartengeräte":"outils de jardin","Das":"le/ce","Schreiben":"le courrier","war":"était","knapp":"bref","Er":"il","möge":"devrait (subj. de politesse)","sich":"se","binnen":"dans un délai de","vierzehn":"quatorze","Tagen":"jours","beim":"au (bei dem)","Amt":"le bureau/l'office","Bestandsprüfung":"la vérification des dossiers","melden":"se présenter","um":"pour (afin de)","die":"la","Angelegenheit":"l'affaire","zu":"à","klären":"clarifier","Welche":"quelle","stand":"était écrit","nicht":"pas","dabei":"précisé","ging":"alla","hin":"là-bas","Ein":"un","Beamter":"un fonctionnaire","müden":"fatigués","Augen":"yeux","bat":"demanda","seinen":"son","Ausweis":"la carte d'identité","kopierte":"photocopia","ihn":"le","zweimal":"deux fois","heftete":"agrafa","Kopien":"les copies","in":"dans","eine":"une","Mappe":"un dossier","erklärte":"expliqua","zuständige":"compétent","Abteilung":"le service","befinde":"se trouve (subj.)","im":"dans le","dritten":"troisième","Stock":"étage","Im":"dans le","erfuhr":"apprit","er":"il","sei":"était (subj.)","vor":"il y a","zwei":"deux","Jahren":"ans","ins":"dans le","Erdgeschoss":"le rez-de-chaussée","verlegt":"transféré","worden":"été","reichte":"remit","man":"on","ihm":"lui","weiteres":"un autre","Formular":"le formulaire","das":"que","ausfüllen":"remplir","wie":"comme","es":"cela","hieß":"disait-on","zur":"à la","Prüfung":"la vérification","wieder":"de nouveau","einreichen":"déposer","müsse":"devrait (subj.)","Niemand":"personne","unfreundlich":"désagréable","Alle":"tous","waren":"étaient","Gegenteil":"le contraire","von":"de","einer":"une","sanften":"douce","fast":"presque","fürsorglichen":"prévenante","Höflichkeit":"la politesse","Gefühl":"le sentiment","gab":"donnait","Unrecht":"le tort","sein":"être","ohne":"sans","dass":"que","hätte":"aurait (subj.)","sagen":"dire","können":"pouvoir","worin":"en quoi","Vergehen":"la faute","bestünde":"consisterait (subj.)","Nach":"après","drei":"trois","Wochen":"semaines","besaß":"possédait","voller":"plein de","Bestätigungen":"les attestations","einander":"l'une l'autre","widersprachen":"se contredisaient","Nummer":"le numéro","unter":"sous","versicherte":"assurait-on","System":"le système","registriert":"enregistré","Manchmal":"parfois","abends":"le soir","fragte":"se demandait","ob":"si","gebe":"existât (subj.)","oder":"ou","nur":"seulement","aus":"composé de","Fluren":"les couloirs","bestehe":"consistait (subj.)","durch":"à travers","Die":"la","selbst":"elle-même","längst":"depuis longtemps","Nebensache":"le détail secondaire","geworden":"devenue","wichtig":"important","noch":"encore","sie":"elle","bearbeitet":"traitée","wurde":"était","Und":"et","so":"ainsi","kehrte":"revenait","Woche":"semaine","Gebäude":"le bâtiment","zurück":"de retour","weil":"parce que","hoffte":"espérait","etwas":"quelque chose","würde":"allait (cond.)","sondern":"mais","Zurückkehren":"le fait de revenir","einzigen":"seule","Handlung":"l'action","sinnvoll":"sensée","erschien":"paraissait","Einmal":"une fois","höflich":"poliment","nach":"(nachfragen : redemander)","worum":"de quoi","eigentlich":"au juste","gehe":"il s'agissait (subj.)","Antwort":"la réponse","dies":"cela","werde":"deviendrait (subj./futur)","weiteren":"suite du","Verlauf":"le déroulement","Verfahrens":"de la procédure","ersichtlich":"apparent/clair","des":"du","ein":"un","überhaupt":"vraiment"}$t$::jsonb,
    $t$Inspiré de la littérature absurde allemande (Kafka)$t$
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was erhält Herr Albeck am Dienstagmorgen?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Einen Brief vom Amt für Bestandsprüfung$t$, true, 1),
    (v_q, $t$Eine Rechnung von der Stadt$t$, false, 2),
    (v_q, $t$Ein Geschenk von einem Freund$t$, false, 3),
    (v_q, $t$Eine Einladung zu einer Feier$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was fordert der Brief von Herrn Albeck, ohne den Grund zu nennen?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sich innerhalb von vierzehn Tagen beim Amt zu melden$t$, true, 1),
    (v_q, $t$Eine Geldstrafe sofort zu bezahlen$t$, false, 2),
    (v_q, $t$Seinen Wohnsitz zu wechseln$t$, false, 3),
    (v_q, $t$An einer Prüfung teilzunehmen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welches sprachliche Merkmal des Briefes trägt zur beunruhigenden Wirkung der Geschichte bei?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Die vage Formulierung „die Angelegenheit“, die nie präzisiert wird$t$, true, 1),
    (v_q, $t$Die ausführliche Erklärung des Vorwurfs$t$, false, 2),
    (v_q, $t$Die freundliche Anrede am Briefanfang$t$, false, 3),
    (v_q, $t$Die Nennung eines konkreten Aktenzeichens$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie werden die Beamten im Amt beschrieben?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Als höflich, aber verwirrend$t$, true, 1),
    (v_q, $t$Als grob und aggressiv$t$, false, 2),
    (v_q, $t$Als gleichgültig und schweigsam$t$, false, 3),
    (v_q, $t$Als korrupt und bestechlich$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Wirkung hat die Höflichkeit der Beamten auf Herrn Albeck?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie gibt ihm das Gefühl, im Unrecht zu sein, ohne dass er einen Grund nennen könnte$t$, true, 1),
    (v_q, $t$Sie beruhigt ihn vollständig$t$, false, 2),
    (v_q, $t$Sie macht ihn wütend und aggressiv$t$, false, 3),
    (v_q, $t$Sie überzeugt ihn, dass alles bald geklärt wird$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was deutet die Formulierung „sanfte, fast fürsorgliche Höflichkeit“ über das Machtverhältnis an?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Macht kann sich hinter Freundlichkeit verbergen und dadurch umso wirksamer sein$t$, true, 1),
    (v_q, $t$Die Beamten sind tatsächlich Freunde von Herrn Albeck$t$, false, 2),
    (v_q, $t$Die Höflichkeit zeigt, dass das System fehlerfrei funktioniert$t$, false, 3),
    (v_q, $t$Sie beweist, dass Herr Albeck tatsächlich schuldig ist$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wird die Angelegenheit am Ende geklärt?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Nein, sie bleibt ungeklärt$t$, true, 1),
    (v_q, $t$Ja, vollständig$t$, false, 2),
    (v_q, $t$Ja, aber erst nach einem Gerichtsverfahren$t$, false, 3),
    (v_q, $t$Nein, weil Herr Albeck aufgibt$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum kehrt Herr Albeck immer wieder ins Amt zurück?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Weil das Zurückkehren selbst zur einzigen sinnvollen Handlung geworden ist$t$, true, 1),
    (v_q, $t$Weil er sicher ist, dass sich alles bald klärt$t$, false, 2),
    (v_q, $t$Weil ihm das Amt gedroht hat$t$, false, 3),
    (v_q, $t$Weil er dort Freunde gefunden hat$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie lässt sich das Ende der Geschichte im Sinne einer kafkaesken Erzähltradition deuten?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Das Verfahren wird zum Selbstzweck, der jede Hoffnung auf Auflösung ersetzt$t$, true, 1),
    (v_q, $t$Das Ende zeigt einen klaren moralischen Sieg der Bürokratie über den Bürger$t$, false, 2),
    (v_q, $t$Es handelt sich um ein realistisches Happy End$t$, false, 3),
    (v_q, $t$Die Geschichte kritisiert ausschließlich die Digitalisierung der Verwaltung$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet „die Angelegenheit“ im Text?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$die Sache/das Thema$t$, true, 1),
    (v_q, $t$die Rechnung$t$, false, 2),
    (v_q, $t$die Uhrzeit$t$, false, 3),
    (v_q, $t$der Feiertag$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welches Wort passt am besten als Synonym zu „bearbeitet“ im Kontext des Textes?$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$behandelt$t$, true, 1),
    (v_q, $t$gekauft$t$, false, 2),
    (v_q, $t$vergessen$t$, false, 3),
    (v_q, $t$gefeiert$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet die Wendung „zur Nebensache geworden“ im Kontext?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$etwas ist im Vergleich zu etwas anderem unwichtig geworden$t$, true, 1),
    (v_q, $t$etwas ist verschwunden$t$, false, 2),
    (v_q, $t$etwas wurde gesetzlich verboten$t$, false, 3),
    (v_q, $t$etwas wurde öffentlich bekannt$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$In welchem Modus steht das Verb in „er möge sich melden“?$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Konjunktiv I$t$, true, 1),
    (v_q, $t$Indikativ Präsens$t$, false, 2),
    (v_q, $t$Imperativ$t$, false, 3),
    (v_q, $t$Futur II$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Zeitform/welcher Modus liegt in „die Abteilung sei vor zwei Jahren...verlegt worden“ vor?$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Konjunktiv I Passiv (indirekte Rede)$t$, true, 1),
    (v_q, $t$Indikativ Aktiv Präsens$t$, false, 2),
    (v_q, $t$Imperativ$t$, false, 3),
    (v_q, $t$Konditional I$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche grammatische Funktion erfüllt der Konjunktiv in Sätzen wie „er hätte sagen können, worin sein Vergehen bestünde“?$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er drückt eine irreale/hypothetische Möglichkeit sowie berichtete Rede aus und verstärkt die Unsicherheit der Figur$t$, true, 1),
    (v_q, $t$Er markiert eine sichere Tatsachenbehauptung$t$, false, 2),
    (v_q, $t$Er zeigt einen Befehl an$t$, false, 3),
    (v_q, $t$Er kennzeichnet die wörtliche Rede des Erzählers$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$Beschreiben Sie in einem kurzen reflektierenden Text, wie moderne Bürokratie das Gefühl von Ohnmacht erzeugen kann, und beziehen Sie sich dabei auf die Geschichte von Herrn Albeck.$t$, 1, 'normal', 'production', $t$Die Geschichte von Herrn Albeck zeigt, wie bürokratische Verfahren den Einzelnen in ein Gefühl der Ohnmacht versetzen können, ohne dass eine konkrete Schuld benannt wird. Die Freundlichkeit der Beamten verstärkt paradoxerweise die Verunsicherung, da Widerstand kaum möglich erscheint. Herr Albeck verliert allmählich das Ziel aus den Augen und konzentriert sich nur noch auf den Prozess selbst. Diese Dynamik erinnert daran, dass Macht nicht immer offen ausgeübt werden muss, um wirksam zu sein. Auch in modernen Verwaltungen kann die schiere Komplexität der Abläufe genügen, um Bürger mürbe zu machen. Am Ende bleibt die Frage, ob das Verfahren überhaupt einen Sinn hatte oder ob es sich selbst zum Zweck geworden ist.$t$);

END $block$;

-- 2. Die andere Seite des Blattes
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary, culture_note) VALUES (
    'C1',
    $t$Die andere Seite des Blattes$t$,
    $t$Marlene Adler schrieb ihre Gedichte auf Durchschlagpapier, das sie unter der Auslegware ihres Wohnzimmers verwahrte. Nicht weil die Zeilen gefährlich gewesen wären – sie handelten von Herbstlaub, von einem See bei Rheinsberg, von der Farbe des Himmels über der Fabrik –, sondern weil sie gelernt hatte, dass Vorsicht keine Frage des Inhalts war, sondern eine Gewohnheit des Körpers.

Zweimal im Monat traf sie sich mit anderen Autoren in der Wohnung eines Kollegen, um Texte vorzulesen, die im offiziellen Verlagsprogramm keinen Platz gefunden hatten. Man sprach leise, stellte das Radio laut, tauschte Blicke, bevor man ein Wort wie „Freiheit“ aussprach. Niemand sagte, dass jemand im Raum für das Ministerium berichtete; man wusste es nur, so wie man wusste, dass es im Winter kalt wurde.

Als ihr erster Gedichtband erscheinen sollte, strich der Lektor drei Zeilen und ersetzte ein Wort: aus „das enge Land“ wurde „das stille Land“. Er erklärte die Änderung ruhig, fast beiläufig, als spreche er über ein Satzzeichen und nicht über den Kern eines Gedichts. Marlene unterschrieb die Änderung, ohne zu widersprechen. Sie sagte sich, ein verändertes Gedicht sei besser als kein Gedicht, und an manchen Abenden glaubte sie das sogar.

Erst Jahre später, als sie die alten Durchschläge wieder in die Hand nahm, verstand sie, dass die eigentliche Zensur nicht im Amt stattgefunden hatte, sondern an ihrem eigenen Schreibtisch, in jenem Moment, in dem sie den Satz schon anders formulierte, bevor ihn überhaupt jemand gelesen hatte. Die Mauer war da lange gefallen; die stille Gewohnheit des Vorsichtigseins brauchte länger, um zu verschwinden, und manchmal, bemerkte sie, war sie nie ganz verschwunden.$t$,
    $t$Marlene Adler écrivait ses poèmes sur du papier carbone, qu'elle cachait sous la moquette de son salon. Non pas que ces vers eussent été dangereux — ils parlaient de feuilles d'automne, d'un lac près de Rheinsberg, de la couleur du ciel au-dessus de l'usine —, mais parce qu'elle avait appris que la prudence n'était pas affaire de contenu, mais une habitude du corps.

Deux fois par mois, elle retrouvait d'autres auteurs dans l'appartement d'un collègue pour lire des textes qui n'avaient pas trouvé place dans le programme officiel des éditions. On parlait à voix basse, on montait le son de la radio, on échangeait des regards avant de prononcer un mot comme « liberté ». Personne ne disait que quelqu'un dans la pièce faisait un rapport au ministère ; on le savait simplement, comme on savait qu'il ferait froid en hiver.

Quand son premier recueil de poèmes devait paraître, le rédacteur supprima trois vers et remplaça un mot : de « le pays étroit » on fit « le pays silencieux ». Il expliqua la modification calmement, presque en passant, comme s'il parlait d'un signe de ponctuation et non du cœur d'un poème. Marlene signa la modification sans protester. Elle se disait qu'un poème modifié valait mieux qu'aucun poème, et certains soirs, elle le croyait même.

Ce n'est que des années plus tard, en reprenant les vieux carbones, qu'elle comprit que la véritable censure n'avait pas eu lieu au bureau, mais à son propre bureau de travail, à cet instant précis où elle reformulait déjà la phrase avant même que quiconque ne l'eût lue. Le Mur était tombé depuis longtemps ; la discrète habitude de la prudence mit plus de temps à disparaître, et parfois, remarquait-elle, elle n'avait jamais tout à fait disparu.$t$,
    $t${"Marlene":"Marlene (prénom)","Adler":"Adler (nom)","schrieb":"écrivait","ihre":"ses","Gedichte":"poèmes","auf":"sur","Durchschlagpapier":"papier carbone","das":"que","sie":"elle","unter":"sous","der":"la","Auslegware":"la moquette","ihres":"de son","Wohnzimmers":"salon","verwahrte":"cachait","Nicht":"non pas","weil":"parce que","die":"les","Zeilen":"les vers","gefährlich":"dangereux","gewesen":"été","wären":"eussent été","handelten":"parlaient (de)","von":"de","Herbstlaub":"feuilles d'automne","einem":"un","See":"lac","bei":"près de","Rheinsberg":"Rheinsberg","Farbe":"la couleur","des":"du","Himmels":"du ciel","über":"au-dessus de","Fabrik":"l'usine","sondern":"mais","gelernt":"appris","hatte":"avait","dass":"que","Vorsicht":"la prudence","keine":"aucune","Frage":"la question","Inhalts":"du contenu","war":"était","eine":"une","Gewohnheit":"une habitude","Körpers":"du corps","Zweimal":"deux fois","im":"dans le","Monat":"le mois","traf":"rencontrait","sich":"se","mit":"avec","anderen":"d'autres","Autoren":"auteurs","in":"dans","Wohnung":"l'appartement","eines":"d'un","Kollegen":"collègue","um":"pour","Texte":"des textes","vorzulesen":"lire à voix haute","offiziellen":"officiel","Verlagsprogramm":"le programme éditorial","keinen":"aucune","Platz":"place","gefunden":"trouvé","hatten":"avaient","Man":"on","sprach":"parlait","leise":"à voix basse","stellte":"mettait","Radio":"la radio","laut":"fort","tauschte":"échangeait","Blicke":"des regards","bevor":"avant que","ein":"un","Wort":"mot","wie":"comme","Freiheit":"liberté","aussprach":"prononçât","Niemand":"personne","sagte":"disait","jemand":"quelqu'un","Raum":"la pièce","für":"pour","Ministerium":"le ministère","berichtete":"faisait un rapport","wusste":"savait","es":"cela","nur":"seulement","so":"ainsi","Winter":"l'hiver","kalt":"froid","wurde":"devenait","Als":"quand","ihr":"son","erster":"premier","Gedichtband":"recueil de poèmes","erscheinen":"paraître","sollte":"devait","strich":"supprima","Lektor":"le rédacteur","drei":"trois","und":"et","ersetzte":"remplaça","aus":"de","enge":"étroit","Land":"pays","stille":"silencieux","unterschrieb":"signa","Änderung":"la modification","ohne":"sans","zu":"(particule)","widersprechen":"s'opposer","Sie":"elle","verändertes":"modifié","Gedicht":"poème","sei":"fût","besser":"meilleur","als":"que","kein":"aucun","an":"à","manchen":"certains","Abenden":"soirs","glaubte":"croyait","sogar":"même","Erst":"ce n'est que","Jahre":"des années","später":"plus tard","alten":"vieux","Durchschläge":"les carbones","wieder":"de nouveau","Hand":"la main","nahm":"prit","verstand":"comprit","eigentliche":"véritable","Zensur":"la censure","stattgefunden":"eu lieu","ihrem":"son","eigenen":"propre","Schreibtisch":"bureau","jenem":"cet","Moment":"instant","dem":"où","den":"la","Satz":"la phrase","schon":"déjà","anders":"autrement","formulierte":"formulait","ihn":"la (le texte)","überhaupt":"même","gelesen":"lu","Die":"le","Mauer":"le Mur","da":"déjà","lange":"depuis longtemps","gefallen":"tombé","Vorsichtigseins":"du fait d'être prudent","brauchte":"mit du temps","länger":"plus longtemps","verschwinden":"disparaître","manchmal":"parfois","bemerkte":"remarquait","nie":"jamais","ganz":"tout à fait","verschwunden":"disparu","erklärte":"expliqua","ruhig":"calmement","beiläufig":"en passant","spreche":"parlerait (subj.)","Satzzeichen":"signe de ponctuation","Kern":"le cœur/l'essence","Amt":"le bureau","Er":"il","er":"il","Gedichts":"du poème","fast":"presque","man":"on","nicht":"pas"}$t$::jsonb,
    $t$Inspiré de l'histoire allemande du XXe siècle$t$
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wo versteckt Marlene ihre Gedichte?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Unter der Auslegware ihres Wohnzimmers$t$, true, 1),
    (v_q, $t$In einem Banktresor$t$, false, 2),
    (v_q, $t$Bei einer Freundin im Ausland$t$, false, 3),
    (v_q, $t$In der Schublade ihres Schreibtischs$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum versteckt Marlene ihre Gedichte, obwohl sie nicht offen gefährlich sind?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Weil Vorsicht für sie zu einer körperlichen Gewohnheit geworden ist$t$, true, 1),
    (v_q, $t$Weil die Gedichte tatsächlich staatsfeindlich sind$t$, false, 2),
    (v_q, $t$Weil sie Angst vor Diebstahl hat$t$, false, 3),
    (v_q, $t$Weil sie die Gedichte verkaufen möchte$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was sagt das Verstecken der harmlosen Gedichte über das Leben unter Überwachung aus?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Angst kann sich verselbstständigen und unabhängig vom tatsächlichen Risiko wirken$t$, true, 1),
    (v_q, $t$Es zeigt, dass die Stasi tatsächlich jedes Gedicht kontrollierte$t$, false, 2),
    (v_q, $t$Es beweist, dass Marlene politisch aktiv war$t$, false, 3),
    (v_q, $t$Es ist reiner Aberglaube ohne historischen Hintergrund$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was ändert der Lektor an Marlenes Gedichtband?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er ersetzt „das enge Land“ durch „das stille Land“$t$, true, 1),
    (v_q, $t$Er streicht den gesamten Band$t$, false, 2),
    (v_q, $t$Er fügt ein neues Vorwort hinzu$t$, false, 3),
    (v_q, $t$Er ändert den Titel des Bandes$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie reagiert Marlene auf die Änderung ihres Textes?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie unterschreibt ohne Widerspruch und redet sich die Entscheidung schön$t$, true, 1),
    (v_q, $t$Sie protestiert öffentlich$t$, false, 2),
    (v_q, $t$Sie zieht den Gedichtband vollständig zurück$t$, false, 3),
    (v_q, $t$Sie flieht in den Westen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Erkenntnis gewinnt Marlene erst Jahre später über die Zensur?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Die eigentliche Zensur fand an ihrem eigenen Schreibtisch statt, in der vorauseilenden Selbstkorrektur$t$, true, 1),
    (v_q, $t$Die Zensur war ausschließlich das Werk des Staates$t$, false, 2),
    (v_q, $t$Ihre Gedichte wurden nie wirklich verändert$t$, false, 3),
    (v_q, $t$Die Zensur endete abrupt mit dem Mauerfall$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was geschieht bei den heimlichen Treffen der Autoren?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie lesen Texte vor, die im offiziellen Verlagsprogramm keinen Platz fanden$t$, true, 1),
    (v_q, $t$Sie planen eine Demonstration$t$, false, 2),
    (v_q, $t$Sie drucken illegale Zeitungen$t$, false, 3),
    (v_q, $t$Sie treffen sich mit westlichen Journalisten$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum spricht man bei diesen Treffen leise und stellt das Radio laut?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Aus Vorsicht vor möglichen Informanten oder Abhörung$t$, true, 1),
    (v_q, $t$Weil die Nachbarn sich sonst beschweren$t$, false, 2),
    (v_q, $t$Weil die Wohnung sehr klein ist$t$, false, 3),
    (v_q, $t$Weil das Radio ein wichtiger Programmpunkt ist$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was verdeutlicht der Satz „man wusste es nur, so wie man wusste, dass es im Winter kalt wurde“?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Das Bewusstsein für Überwachung war zu einer selbstverständlichen, alltäglichen Gewissheit geworden$t$, true, 1),
    (v_q, $t$Die Menschen waren völlig ahnungslos über Überwachung$t$, false, 2),
    (v_q, $t$Die Kälte war eine Metapher für die Beamten$t$, false, 3),
    (v_q, $t$Es handelt sich um eine wörtliche Wetterbeschreibung$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet „verwahrte“ im Text?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$aufbewahrte$t$, true, 1),
    (v_q, $t$verkaufte$t$, false, 2),
    (v_q, $t$zerstörte$t$, false, 3),
    (v_q, $t$verschenkte$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welches Wort ist im Kontext ein Synonym zu „Vorsicht“?$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Zurückhaltung$t$, true, 1),
    (v_q, $t$Freude$t$, false, 2),
    (v_q, $t$Wut$t$, false, 3),
    (v_q, $t$Neugier$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet die Formulierung „eine Gewohnheit des Körpers“ im übertragenen Sinn?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Ein verinnerlichtes, fast unbewusstes Verhalten, das über den bewussten Willen hinausgeht$t$, true, 1),
    (v_q, $t$Eine sportliche Übung$t$, false, 2),
    (v_q, $t$Eine medizinische Diagnose$t$, false, 3),
    (v_q, $t$Eine kulturelle Tradition beim Essen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welcher Modus liegt in „wären“ (Zeilen gefährlich gewesen wären) vor?$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Konjunktiv II$t$, true, 1),
    (v_q, $t$Indikativ Präteritum$t$, false, 2),
    (v_q, $t$Imperativ$t$, false, 3),
    (v_q, $t$Futur I$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Funktion hat der Konjunktiv in „ein verändertes Gedicht sei besser als kein Gedicht“?$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er drückt wiedergegebene, nicht direkt bestätigte Gedanken/Rede aus$t$, true, 1),
    (v_q, $t$Er drückt eine objektive Tatsache aus$t$, false, 2),
    (v_q, $t$Er ist ein grammatischer Fehler$t$, false, 3),
    (v_q, $t$Er markiert die Zukunft$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum verwendet die Erzählerin an mehreren Stellen den Konjunktiv (z. B. „wären“, „sei“), wenn sie Marlenes Gedanken und Selbstbeschwichtigungen wiedergibt?$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Um eine gewisse Distanz und Unsicherheit gegenüber diesen (Selbst-)Rechtfertigungen anzudeuten$t$, true, 1),
    (v_q, $t$Um grammatisch korrekte indirekte Fragen zu bilden$t$, false, 2),
    (v_q, $t$Um die Vergangenheit auszudrücken$t$, false, 3),
    (v_q, $t$Um höfliche Bitten zu formulieren$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$Reflektieren Sie darüber, wie sich Selbstzensur von staatlicher Zensur unterscheidet und welche Spuren sie im Verhalten eines Menschen hinterlassen kann.$t$, 1, 'normal', 'production', $t$Selbstzensur unterscheidet sich von staatlicher Zensur dadurch, dass sie ohne direkten äußeren Zwang im Inneren einer Person stattfindet. Im Fall von Marlene zeigt sich, dass Vorsicht zu einer Art zweiter Natur wird, die auch nach dem Ende des Systems fortbesteht. Diese verinnerlichte Angst ist oft schwerer zu überwinden als äußere Verbote, weil sie sich in alltägliche Gewohnheiten einschreibt. Die Geschichte macht deutlich, dass Freiheit nicht automatisch mit dem Fall politischer Grenzen eintritt. Vielmehr braucht es Zeit, um innerlich verinnerlichte Schutzmechanismen wieder abzulegen. So bleibt die Erinnerung an Überwachung oft länger wirksam als das System selbst.$t$);

END $block$;

-- 3. Der Wanderer und die Weite
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary, culture_note) VALUES (
    'C1',
    $t$Der Wanderer und die Weite$t$,
    $t$Als Johannes im April das Elternhaus verließ, trug er nichts als einen Stab, ein Bündel und die vage Gewissheit, dass die Straße ihn irgendwohin führen würde, das der Bleibens wert wäre. Die Stadt hinter ihm wurde kleiner, dann verschwand sie zwischen zwei Hügeln, und mit ihr verschwand auch das enge Gefühl, das ihn dort jahrelang begleitet hatte.

Er wanderte durch Täler, in denen der Nebel morgens wie Rauch aus den Wiesen stieg, vorbei an Mühlen, deren Räder sich langsam drehten, als hätten sie alle Zeit der Welt. Nachts schlief er in Scheunen, hörte das Rauschen ferner Bäche und sang manchmal, ohne Grund, alte Lieder, von denen er nicht wusste, woher er sie kannte.

In einem Dorf am Fluss lud ihn ein alter Müller zum Bleiben ein. Es gebe Arbeit, sagte er, ein Dach, eine Zukunft. Johannes blieb drei Tage, aß am selben Tisch wie die Familie des Müllers und begann fast zu glauben, er könnte hier ein neues Leben beginnen. Am vierten Morgen aber, als die Sonne über den Wald stieg und ein Wind durch die Fenster der Mühle strich, spürte er wieder jene Unruhe, die ihn schon als Kind ergriffen hatte, sobald er zu lange an einem Ort verweilte.

Er verstand allmählich, dass er nicht auf der Suche nach einem bestimmten Ziel war, sondern nach jenem Zustand des Unterwegsseins selbst, in dem die Welt noch unvollendet und deshalb voller Möglichkeit erschien. Vielleicht, dachte er manchmal, war gerade diese Unvollendetheit das Einzige, worauf er sich wirklich verlassen konnte. Freiheit, dachte er, während er die Mühle hinter sich ließ, war vielleicht nichts anderes als die Weigerung, sich ein für alle Mal zu entscheiden, wohin man gehöre.$t$,
    $t$Lorsque Johannes quitta la maison de ses parents en avril, il n'emportait qu'un bâton, un baluchon et la vague certitude que la route le mènerait quelque part qui vaudrait la peine qu'on y reste. La ville derrière lui rapetissait, puis disparut entre deux collines, et avec elle disparut aussi ce sentiment d'étroitesse qui l'avait accompagné là-bas pendant des années.

Il traversa des vallées où le brouillard montait le matin des prés comme de la fumée, passa devant des moulins dont les roues tournaient lentement, comme si elles avaient tout le temps du monde. La nuit, il dormait dans des granges, écoutait le murmure des ruisseaux lointains et chantait parfois, sans raison, de vieilles chansons dont il ne savait d'où il les connaissait.

Dans un village au bord du fleuve, un vieux meunier l'invita à rester. Il y avait du travail, disait-il, un toit, un avenir. Johannes resta trois jours, mangea à la même table que la famille du meunier et commença presque à croire qu'il pourrait y commencer une nouvelle vie. Mais le quatrième matin, quand le soleil se leva sur la forêt et qu'un vent traversa les fenêtres du moulin, il ressentit de nouveau cette inquiétude qui le saisissait déjà enfant, dès qu'il demeurait trop longtemps au même endroit.

Il comprit peu à peu qu'il n'était pas en quête d'un but précis, mais de cet état d'être-en-chemin lui-même, dans lequel le monde paraissait encore inachevé et, pour cette raison, plein de possibilités. Peut-être, pensait-il parfois, cette inachèvement même était-il la seule chose sur laquelle il pouvait vraiment compter. La liberté, pensa-t-il en laissant le moulin derrière lui, n'était peut-être rien d'autre que le refus de décider, une fois pour toutes, à quel endroit on appartenait.$t$,
    $t${"Als":"quand","Johannes":"Johannes","im":"en","April":"avril","das":"la","Elternhaus":"la maison parentale","verließ":"quitta","trug":"portait","er":"il","nichts":"rien","als":"que","einen":"un","Stab":"un bâton","ein":"un","Bündel":"un baluchon","und":"et","die":"la","vage":"vague","Gewissheit":"la certitude","dass":"que","Straße":"la route","ihn":"le","irgendwohin":"quelque part","führen":"mener","würde":"mènerait","der":"le","Bleibens":"du fait de rester","wert":"digne","wäre":"serait","Stadt":"la ville","hinter":"derrière","ihm":"lui","wurde":"devenait","kleiner":"plus petite","dann":"puis","verschwand":"disparut","sie":"elle","zwischen":"entre","zwei":"deux","Hügeln":"collines","mit":"avec","ihr":"elle","auch":"aussi","enge":"étroit","Gefühl":"sentiment","dort":"là-bas","jahrelang":"pendant des années","begleitet":"accompagné","hatte":"avait","Er":"il","wanderte":"marchait","durch":"à travers","Täler":"vallées","in":"dans","denen":"lesquelles","Nebel":"le brouillard","morgens":"le matin","wie":"comme","Rauch":"la fumée","aus":"de","den":"les","Wiesen":"prés","stieg":"montait","vorbei":"en passant","an":"devant","Mühlen":"moulins","deren":"dont","Räder":"roues","sich":"se","langsam":"lentement","drehten":"tournaient","hätten":"auraient","alle":"tout","Zeit":"le temps","Welt":"le monde","Nachts":"la nuit","schlief":"dormait","Scheunen":"granges","hörte":"entendait","Rauschen":"le murmure","ferner":"lointains","Bäche":"ruisseaux","sang":"chantait","manchmal":"parfois","ohne":"sans","Grund":"raison","alte":"vieilles","Lieder":"chansons","von":"desquelles","nicht":"ne pas","wusste":"savait","woher":"d'où","kannte":"connaissait","In":"dans","einem":"un","Dorf":"village","am":"au bord du","Fluss":"fleuve","lud":"invita","alter":"vieux","Müller":"meunier","zum":"à","Bleiben":"rester","Es":"il","gebe":"il y aurait","Arbeit":"du travail","sagte":"disait","Dach":"un toit","eine":"une","Zukunft":"un avenir","blieb":"resta","drei":"trois","Tage":"jours","aß":"mangea","selben":"même","Tisch":"table","Familie":"famille","des":"du","begann":"commença","fast":"presque","zu":"à","glauben":"croire","könnte":"pourrait","hier":"ici","neues":"nouvelle","Leben":"vie","beginnen":"commencer","Am":"au","vierten":"quatrième","Morgen":"matin","aber":"mais","Sonne":"le soleil","über":"sur","Wald":"la forêt","Wind":"un vent","Fenster":"fenêtres","Mühle":"le moulin","strich":"passa","spürte":"ressentit","wieder":"de nouveau","jene":"cette","Unruhe":"inquiétude","schon":"déjà","Kind":"enfant","ergriffen":"saisi","sobald":"dès que","lange":"longtemps","Ort":"endroit","verweilte":"demeurait","verstand":"comprit","allmählich":"peu à peu","auf":"en","Suche":"la quête","nach":"de","bestimmten":"précis","Ziel":"but","war":"était","sondern":"mais","jenem":"cet","Zustand":"l'état","Unterwegsseins":"du fait d'être en chemin","selbst":"lui-même","noch":"encore","unvollendet":"inachevé","deshalb":"pour cette raison","voller":"plein de","Möglichkeit":"possibilité","erschien":"paraissait","Freiheit":"liberté","dachte":"pensa","während":"tandis que","ließ":"laissa","vielleicht":"peut-être","anderes":"d'autre","Weigerung":"le refus","für":"pour","Mal":"fois","entscheiden":"décider","wohin":"où","man":"on","gehöre":"appartenait","gerade":"justement","diese":"cette","Unvollendetheit":"cette inachèvement","Einzige":"la seule chose","worauf":"sur laquelle","wirklich":"vraiment","verlassen":"compter (sich verlassen auf)","konnte":"pouvait","Die":"la","Müllers":"du meunier","Vielleicht":"peut-être","dem":"la"}$t$::jsonb,
    $t$Inspiré du romantisme allemand$t$
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was nimmt Johannes mit, als er das Elternhaus verlässt?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Einen Stab und ein Bündel$t$, true, 1),
    (v_q, $t$Ein Pferd und einen Wagen$t$, false, 2),
    (v_q, $t$Viel Geld und Schmuck$t$, false, 3),
    (v_q, $t$Nichts außer seiner Kleidung$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was empfindet Johannes, als die Stadt hinter ihm verschwindet?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Ein enges Gefühl weicht von ihm$t$, true, 1),
    (v_q, $t$Große Angst vor der Zukunft$t$, false, 2),
    (v_q, $t$Tiefe Trauer über den Abschied$t$, false, 3),
    (v_q, $t$Wut auf seine Familie$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche symbolische Bedeutung hat das Verschwinden der Stadt zwischen den Hügeln?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Es markiert den Übergang von gesellschaftlicher Enge zu innerer Freiheit$t$, true, 1),
    (v_q, $t$Es zeigt lediglich eine geografische Tatsache ohne tiefere Bedeutung$t$, false, 2),
    (v_q, $t$Es symbolisiert den Verlust seiner Erinnerung$t$, false, 3),
    (v_q, $t$Es deutet auf eine bevorstehende Naturkatastrophe hin$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bietet der alte Müller Johannes an?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Arbeit, ein Dach und eine Zukunft$t$, true, 1),
    (v_q, $t$Geld für die Weiterreise$t$, false, 2),
    (v_q, $t$Eine Ausbildung in der Stadt$t$, false, 3),
    (v_q, $t$Ein Boot für die Flussfahrt$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum bleibt Johannes nur drei Tage bei dem Müller?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Weil ihn erneut eine alte Unruhe ergreift$t$, true, 1),
    (v_q, $t$Weil der Müller ihn wegschickt$t$, false, 2),
    (v_q, $t$Weil er krank wird$t$, false, 3),
    (v_q, $t$Weil er sein Ziel bereits erreicht hat$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was verrät Johannes' Reaktion auf das Angebot des Müllers über sein Verständnis von Freiheit?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Für ihn bedeutet Freiheit, sich nicht endgültig an einen Ort zu binden$t$, true, 1),
    (v_q, $t$Er lehnt jede Form von Sesshaftigkeit grundsätzlich als moralisch falsch ab$t$, false, 2),
    (v_q, $t$Er hat Angst vor harter körperlicher Arbeit$t$, false, 3),
    (v_q, $t$Er möchte lieber in der Stadt leben$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wonach sucht Johannes laut dem letzten Absatz eigentlich?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Nach dem Zustand des Unterwegsseins selbst$t$, true, 1),
    (v_q, $t$Nach einem bestimmten Dorf$t$, false, 2),
    (v_q, $t$Nach seiner verlorenen Familie$t$, false, 3),
    (v_q, $t$Nach einem Schatz$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie definiert Johannes am Ende die Freiheit?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Als die Weigerung, sich endgültig zu entscheiden, wohin man gehört$t$, true, 1),
    (v_q, $t$Als vollständige Abwesenheit jeglicher Verantwortung$t$, false, 2),
    (v_q, $t$Als materiellen Wohlstand$t$, false, 3),
    (v_q, $t$Als politische Unabhängigkeit$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Inwiefern lässt sich die Erzählung als typisch romantisches Motiv des Wanderns lesen?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Die Wanderschaft wird zum Sinnbild für eine unabgeschlossene, offene Weltbeziehung statt für ein festes Ziel$t$, true, 1),
    (v_q, $t$Die Geschichte kritisiert das Wandern als sozial schädliches Verhalten$t$, false, 2),
    (v_q, $t$Das Wandern dient ausschließlich wirtschaftlichen Zwecken$t$, false, 3),
    (v_q, $t$Der Text lehnt jegliche romantische Naturverklärung ab$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet „Unruhe“ im Text?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$ein Gefühl der Rastlosigkeit$t$, true, 1),
    (v_q, $t$tiefe Müdigkeit$t$, false, 2),
    (v_q, $t$große Freude$t$, false, 3),
    (v_q, $t$völlige Stille$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welches Wort passt am besten zu „verweilte“?$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$blieb$t$, true, 1),
    (v_q, $t$reiste$t$, false, 2),
    (v_q, $t$kämpfte$t$, false, 3),
    (v_q, $t$schlief$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet die Formulierung „das Unterwegssein selbst“ im übertragenen Sinn?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Der Prozess des Reisens wird zum eigentlichen Ziel, nicht ein bestimmter Ankunftsort$t$, true, 1),
    (v_q, $t$Es bezeichnet nur die körperliche Fortbewegung$t$, false, 2),
    (v_q, $t$Es beschreibt eine bestimmte Verkehrsstraße$t$, false, 3),
    (v_q, $t$Es ist ein juristischer Fachbegriff$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Zeitform dominiert die Erzählung (z. B. „wanderte“, „schlief“)?$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Präteritum$t$, true, 1),
    (v_q, $t$Präsens$t$, false, 2),
    (v_q, $t$Perfekt$t$, false, 3),
    (v_q, $t$Futur I$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welcher Modus liegt in „als hätten sie alle Zeit der Welt“ vor und warum wird er benutzt?$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Konjunktiv II, um einen irrealen Vergleich auszudrücken$t$, true, 1),
    (v_q, $t$Indikativ, um eine Tatsache zu behaupten$t$, false, 2),
    (v_q, $t$Imperativ, um eine Aufforderung zu formulieren$t$, false, 3),
    (v_q, $t$Futur II, um eine abgeschlossene Zukunftshandlung zu markieren$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie trägt der Wechsel zwischen Präteritum (Erzählzeit) und vereinzelten Konjunktivformen zur Erzählperspektive bei?$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Das Präteritum schafft erzählerische Distanz, während der Konjunktiv innere Zustände und Vergleiche markiert, was die reflektierende Erzählhaltung unterstreicht$t$, true, 1),
    (v_q, $t$Beide Formen sind austauschbar und ohne stilistische Funktion$t$, false, 2),
    (v_q, $t$Der Konjunktiv zeigt ausschließlich die Zukunft an$t$, false, 3),
    (v_q, $t$Das Präteritum wird nur in wörtlicher Rede verwendet$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$Diskutieren Sie, inwiefern das Motiv des Wanderns auch in der heutigen Zeit noch eine Bedeutung für die Suche nach persönlicher Freiheit haben kann.$t$, 1, 'normal', 'production', $t$Das Motiv des Wanderns steht seit der Romantik für die Sehnsucht nach einem Leben jenseits gesellschaftlicher Festlegungen. Auch heute suchen viele Menschen durch Reisen oder bewusste Ortswechsel nach ähnlicher innerer Offenheit. Johannes' Geschichte zeigt, dass Freiheit weniger im Erreichen eines Ziels als im Verweigern endgültiger Festlegung liegt. Diese Haltung lässt sich auf moderne Lebensentwürfe übertragen, etwa auf Menschen, die bewusst ortsunabhängig arbeiten oder wohnen. Gleichzeitig birgt eine solche Rastlosigkeit die Gefahr, dauerhafte Bindungen und Verantwortung zu vermeiden. Die Balance zwischen Beständigkeit und Beweglichkeit bleibt daher eine zeitlose menschliche Herausforderung.$t$);

END $block$;

-- 4. Der Tag, an dem der Himmel kleiner wurde
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary, culture_note) VALUES (
    'C1',
    $t$Der Tag, an dem der Himmel kleiner wurde$t$,
    $t$Es gibt ein Alter, in dem man zum ersten Mal bemerkt, dass die Erwachsenen ringsum keine Antworten besitzen, sondern nur Übung darin, so zu tun, als hätten sie welche. Für mich kam dieser Moment im Sommer, in dem mein Vater seine Stelle verlor und plötzlich jeden Nachmittag am Küchentisch saß, die Zeitung vor sich, ohne sie zu lesen.

Bis dahin war meine Welt aus festen Sätzen zusammengesetzt gewesen: Fleiß werde belohnt, Ehrlichkeit zahle sich aus, wer sich anstrenge, komme voran. Ich sah nun, wie mein Vater, der all das ein Leben lang befolgt hatte, mit einer Ruhe scheiterte, die mich mehr erschreckte als jede Verzweiflung es getan hätte. Er sprach kaum darüber, und gerade dieses Schweigen ließ mich ahnen, wie tief die Erschütterung reichte.

Ich begann, die Erwachsenen genauer zu beobachten, und entdeckte überall dieselbe stille Improvisation: die Lehrerin, die eine Frage nicht beantworten konnte und stattdessen von Zeitmangel sprach; der Nachbar, der von seiner Ehe erzählte, als sei sie ein gut geführtes Unternehmen, während seine Frau abends allein am Fenster saß. Die Welt hatte keinen Bauplan, wie ich geglaubt hatte, sondern bestand aus Menschen, die sich, so gut es ging, einen zusammenbastelten.

Das war keine Enttäuschung im eigentlichen Sinn, eher eine Art Erwachen, das mit leiser Trauer begann und in etwas mündete, das ich später als Freiheit erkannte. Niemand hatte mich betrogen; ich hatte lediglich zu genau hingesehen, wo bisher genügt hatte, den Erwachsenen einfach zu glauben. Wenn niemand die Antwort wusste, musste ich mir keine geliehene mehr zu eigen machen. Ich durfte, von jenem Sommer an, meine eigenen Fehler machen, und das erschien mir, so seltsam es klingen mag, wie ein erstes, zaghaftes Geschenk.$t$,
    $t$Il existe un âge où l'on remarque pour la première fois que les adultes autour de soi ne possèdent pas de réponses, mais seulement l'habitude de faire comme s'ils en avaient. Pour moi, ce moment vint l'été où mon père perdit son emploi et se mit soudain à passer chaque après-midi à la table de la cuisine, le journal devant lui, sans le lire.

Jusque-là, mon monde était composé de phrases immuables : l'application est récompensée, l'honnêteté paie, qui se donne du mal réussit. Je vis alors mon père, qui avait suivi tout cela toute sa vie, échouer avec un calme qui m'effraya plus que n'importe quel désespoir. Il en parlait à peine, et c'est justement ce silence qui me laissa deviner combien l'ébranlement était profond.

Je me mis à observer les adultes de plus près, et découvris partout la même improvisation silencieuse : l'institutrice qui ne pouvait répondre à une question et parlait à la place de manque de temps ; le voisin qui racontait son mariage comme s'il s'agissait d'une entreprise bien gérée, tandis que sa femme restait seule le soir près de la fenêtre. Le monde n'avait pas de plan de construction, comme je l'avais cru, mais se composait de gens qui s'en bricolaient un, tant bien que mal.

Ce ne fut pas une déception à proprement parler, plutôt une sorte d'éveil, qui commença par une tristesse discrète et déboucha sur ce que je reconnus plus tard comme de la liberté. Personne ne m'avait trompé ; j'avais simplement regardé de trop près là où, jusque-là, il suffisait de croire les adultes. Si personne ne connaissait la réponse, je n'avais plus à en emprunter une pour la faire mienne. Je pus, à partir de cet été-là, commettre mes propres erreurs, et cela me parut, si étrange que cela puisse paraître, comme un premier cadeau timide.$t$,
    $t${"Es":"il","gibt":"y a","ein":"un","Alter":"âge","in":"dans","dem":"lequel","man":"on","zum":"pour la","ersten":"première","Mal":"fois","bemerkt":"remarque","dass":"que","die":"les","Erwachsenen":"adultes","ringsum":"autour","keine":"aucune","Antworten":"réponses","besitzen":"posséder","sondern":"mais","nur":"seulement","Übung":"l'habitude","darin":"en cela","so":"ainsi","zu":"de","tun":"faire","als":"comme si","hätten":"avaient","sie":"ils","welche":"en avaient","Für":"pour","mich":"me","kam":"vint","dieser":"ce","Moment":"instant","im":"pendant l'","Sommer":"été","mein":"mon","Vater":"père","seine":"son","Stelle":"emploi","verlor":"perdit","und":"et","plötzlich":"soudain","jeden":"chaque","Nachmittag":"après-midi","am":"à la","Küchentisch":"table de cuisine","saß":"était assis","Zeitung":"journal","vor":"devant","sich":"lui","ohne":"sans","lesen":"lire","Bis":"jusque","dahin":"là","meine":"mon","Welt":"monde","aus":"composé de","festen":"fixes","Sätzen":"phrases","zusammengesetzt":"composé","gewesen":"été","Fleiß":"l'application","werde":"serait","belohnt":"récompensé","Ehrlichkeit":"l'honnêteté","zahle":"paierait","wer":"qui","anstrenge":"se donne du mal","komme":"avance","voran":"en avant","Ich":"je","sah":"vis","nun":"alors","wie":"comme","der":"qui","all":"tout","das":"cela","Leben":"vie","lang":"durant","befolgt":"suivi","hatte":"avait","mit":"avec","einer":"un","Ruhe":"calme","scheiterte":"échouait","mehr":"plus","erschreckte":"effraya","jede":"chaque","Verzweiflung":"désespoir","es":"cela","getan":"fait","hätte":"aurait","Er":"il","sprach":"parlait","kaum":"à peine","darüber":"de cela","gerade":"justement","dieses":"ce","Schweigen":"silence","ließ":"laissa","ahnen":"deviner","tief":"profond","Erschütterung":"l'ébranlement","reichte":"allait","begann":"commençai","genauer":"de plus près","beobachten":"observer","entdeckte":"découvris","überall":"partout","dieselbe":"la même","stille":"silencieuse","Improvisation":"improvisation","Lehrerin":"institutrice","eine":"une","Frage":"question","nicht":"ne pas","beantworten":"répondre","konnte":"pouvait","stattdessen":"à la place","von":"de","Zeitmangel":"manque de temps","Nachbar":"voisin","seiner":"son","Ehe":"mariage","erzählte":"racontait","sei":"fût","gut":"bien","geführtes":"géré","Unternehmen":"entreprise","während":"tandis que","Frau":"femme","abends":"le soir","allein":"seule","Fenster":"fenêtre","Die":"le","keinen":"aucun","Bauplan":"plan de construction","geglaubt":"cru","bestand":"consistait","Menschen":"gens","ging":"allait","einen":"un","zusammenbastelten":"bricolaient","Das":"cela","Enttäuschung":"déception","eigentlichen":"propre","Sinn":"sens","eher":"plutôt","Art":"sorte","Erwachen":"éveil","leiser":"discrète","Trauer":"tristesse","mündete":"débouchait","später":"plus tard","erkannte":"reconnus","Wenn":"si","niemand":"personne","Antwort":"réponse","wusste":"savait","musste":"devais","mir":"me","geliehene":"empruntée","eigen":"propre","machen":"faire","durfte":"pus","jenem":"cet","eigenen":"propres","Fehler":"erreurs","erschien":"parut","seltsam":"étrange","klingen":"sonner","mag":"puisse","erstes":"premier","zaghaftes":"timide","Geschenk":"cadeau","betrogen":"trompé","lediglich":"simplement","genau":"de trop près","hingesehen":"regardé","bisher":"jusque-là","genügt":"suffi","einfach":"simplement","Freiheit":"liberté","Niemand":"personne","an":"à","den":"les","etwas":"quelque chose","glauben":"croire","ich":"je","war":"était","wo":"là où"}$t$::jsonb,
    $t$Littérature allemande contemporaine$t$
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was passiert im Sommer, in dem der Erzähler seine Kindheit hinter sich lässt?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sein Vater verliert die Arbeitsstelle$t$, true, 1),
    (v_q, $t$Seine Familie zieht um$t$, false, 2),
    (v_q, $t$Er beginnt ein Studium$t$, false, 3),
    (v_q, $t$Seine Eltern lassen sich scheiden$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum erschreckt das Scheitern des Vaters den Erzähler mehr als offene Verzweiflung es getan hätte?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Weil der Vater es mit einer Ruhe hinnimmt, die im Widerspruch zu seinen früheren Überzeugungen steht$t$, true, 1),
    (v_q, $t$Weil der Vater gewalttätig wird$t$, false, 2),
    (v_q, $t$Weil der Vater die Familie verlässt$t$, false, 3),
    (v_q, $t$Weil der Vater krank wird$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Funktion hat die Beobachtung des Vaters für den Reifungsprozess des Erzählers?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie erschüttert den Glauben an feste Lebensregeln und leitet eine kritische Weltsicht ein$t$, true, 1),
    (v_q, $t$Sie bestätigt lediglich die Richtigkeit der elterlichen Lebensregeln$t$, false, 2),
    (v_q, $t$Sie hat keinen Einfluss auf den Erzähler$t$, false, 3),
    (v_q, $t$Sie führt zu einem sofortigen Bruch mit dem Vater$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was entdeckt der Erzähler, als er andere Erwachsene beobachtet?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Dass auch sie improvisieren, statt echte Antworten zu haben$t$, true, 1),
    (v_q, $t$Dass alle Erwachsenen glücklich sind$t$, false, 2),
    (v_q, $t$Dass Erwachsene nie Fehler machen$t$, false, 3),
    (v_q, $t$Dass Lehrer immer ehrlich sind$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was zeigt das Beispiel des Nachbarn über dessen Ehe?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er beschreibt sie beschönigend, während die Realität anders aussieht$t$, true, 1),
    (v_q, $t$Er gibt offen zu, dass seine Ehe gescheitert ist$t$, false, 2),
    (v_q, $t$Er spricht nie über sein Privatleben$t$, false, 3),
    (v_q, $t$Seine Ehe wird als vorbildlich dargestellt und ist es auch$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche gesellschaftskritische Aussage steckt in der Formulierung, die Welt habe „keinen Bauplan“?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Ordnung und Sinn im Leben sind menschliche Konstruktionen und keine objektiven Gegebenheiten$t$, true, 1),
    (v_q, $t$Es handelt sich um eine rein architektonische Aussage$t$, false, 2),
    (v_q, $t$Der Text behauptet, dass Chaos grundsätzlich negativ zu bewerten ist$t$, false, 3),
    (v_q, $t$Die Aussage bezieht sich ausschließlich auf staatliche Institutionen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie beschreibt der Erzähler am Ende sein neues Verständnis von Freiheit?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er darf nun seine eigenen Fehler machen$t$, true, 1),
    (v_q, $t$Er fühlt sich völlig verlassen$t$, false, 2),
    (v_q, $t$Er verliert jedes Vertrauen in andere Menschen$t$, false, 3),
    (v_q, $t$Er wird selbst zum Erwachsenen ohne Übergang$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum bezeichnet der Erzähler diese Erkenntnis als „zaghaftes Geschenk“?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Weil sie zugleich schmerzhaft und befreiend ist$t$, true, 1),
    (v_q, $t$Weil er ein tatsächliches Geschenk bekommen hat$t$, false, 2),
    (v_q, $t$Weil sie ihm von seinem Vater überreicht wurde$t$, false, 3),
    (v_q, $t$Weil sie nur vorübergehend gilt$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Inwiefern lässt sich dieser Text als klassisches Bildungsroman-Muster im Kleinen lesen?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er zeigt eine Desillusionierung, die in eine reifere, eigenständigere Weltsicht mündet$t$, true, 1),
    (v_q, $t$Er beschreibt ausschließlich äußere Abenteuer ohne innere Entwicklung$t$, false, 2),
    (v_q, $t$Er endet mit einer vollständigen Rückkehr zu kindlichem Vertrauen$t$, false, 3),
    (v_q, $t$Er verzichtet vollständig auf jede Form von Reflexion$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet „scheiterte“ im Text?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$hatte keinen Erfolg$t$, true, 1),
    (v_q, $t$gewann$t$, false, 2),
    (v_q, $t$reiste ab$t$, false, 3),
    (v_q, $t$freute sich$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welches Wort ist ein Synonym zu „Enttäuschung“ im übertragenen Sinn des Textes?$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Ernüchterung$t$, true, 1),
    (v_q, $t$Begeisterung$t$, false, 2),
    (v_q, $t$Erleichterung$t$, false, 3),
    (v_q, $t$Gleichgültigkeit$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet die Wendung „sich einen zusammenbasteln“ im Kontext des Lebensplans?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sich improvisierend und unvollkommen etwas selbst zusammenstellen$t$, true, 1),
    (v_q, $t$Etwas professionell und perfekt konstruieren$t$, false, 2),
    (v_q, $t$Etwas kaufen statt es selbst zu bauen$t$, false, 3),
    (v_q, $t$Ein Handwerk erlernen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Zeitform wird für die Rahmenerzählung überwiegend benutzt (z. B. „begann“, „entdeckte“)?$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Präteritum$t$, true, 1),
    (v_q, $t$Präsens$t$, false, 2),
    (v_q, $t$Plusquamperfekt$t$, false, 3),
    (v_q, $t$Futur II$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welcher Modus liegt in „Fleiß werde belohnt“ vor und welche Funktion hat er?$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Konjunktiv I, zur Wiedergabe eines allgemein vertretenen, aber nicht direkt bestätigten Glaubenssatzes$t$, true, 1),
    (v_q, $t$Indikativ Präsens, zur Feststellung einer objektiven Wahrheit$t$, false, 2),
    (v_q, $t$Imperativ, als direkte Aufforderung$t$, false, 3),
    (v_q, $t$Futur I, zur Vorhersage eines Ereignisses$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche stilistische Wirkung erzielt die Kombination aus Konjunktiv I (in den zitierten Glaubenssätzen) und Präteritum (in der Erzählung selbst)?$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie markiert den Abstand zwischen naiv geglaubten Regeln und der ernüchternden erzählten Realität$t$, true, 1),
    (v_q, $t$Sie zeigt, dass beide Aussagen gleichermaßen als objektive Wahrheit gelten$t$, false, 2),
    (v_q, $t$Sie dient rein der Abwechslung ohne inhaltliche Funktion$t$, false, 3),
    (v_q, $t$Sie kennzeichnet ausschließlich wörtliche Zitate aus Zeitungsartikeln$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$Schreiben Sie einen kurzen reflektierenden Text darüber, welche Rolle Desillusionierung im Erwachsenwerden spielt.$t$, 1, 'normal', 'production', $t$Desillusionierung ist oft ein notwendiger Schritt auf dem Weg zu einem reiferen Selbstverständnis. Solange man an feste, von außen übernommene Regeln glaubt, bleibt man in gewisser Weise abhängig von fremden Wahrheiten. Erst wenn diese Gewissheiten ins Wanken geraten, wie im Fall des Vaters in der Geschichte, entsteht Raum für eigene Urteile. Diese Erfahrung ist zunächst schmerzhaft, weil sie Sicherheit nimmt, doch sie eröffnet zugleich neue Handlungsspielräume. Wer erkennt, dass niemand über absolute Antworten verfügt, kann eigene Fehler eher als Teil des Lernens akzeptieren. So wird Desillusionierung paradoxerweise zur Voraussetzung für echte Selbstständigkeit.$t$);

END $block$;

-- 5. Die letzte Gleichung
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary, culture_note) VALUES (
    'C1',
    $t$Die letzte Gleichung$t$,
    $t$Professor Reinhard Vogt hatte sein halbes Leben der einen Frage gewidmet, die ihm als junger Physiker am wichtigsten erschienen war: ob sich das Verhalten eines alternden Gehirns durch eine einzige, elegante Gleichung beschreiben ließe. Für dieses Ziel hatte er Einladungen abgelehnt, Freundschaften verkümmern lassen und, wie er sich erst spät eingestand, auch die Kindheit seiner Tochter beinahe verpasst.

Als der Durchbruch schließlich kam, spät nachts im leeren Labor, empfand er nicht den erwarteten Triumph, sondern eine merkwürdige Leere. Die Gleichung funktionierte; Simulationen sagten das Fortschreiten bestimmter Krankheiten mit erschreckender Genauigkeit voraus. Kollegen sprachen bereits von einem Nobelpreis, von Zeitschriften, die um ein Interview baten. Vogt aber saß allein vor dem Bildschirm und dachte an seine Tochter, die er seit einem Streit vor drei Jahren kaum gesprochen hatte.

Er rief sie an, zum ersten Mal seit langem, um ihr von der Entdeckung zu erzählen. Sie hörte höflich zu und sagte dann, mit einer Ruhe, die ihn mehr traf als jeder Vorwurf: Sie freue sich für ihn, wirklich, aber sie wisse nicht mehr, wie man mit ihm über etwas anderes als Gleichungen sprach.

In dieser Nacht, während die Simulationen auf seinem Bildschirm weiterliefen, als geschähe dort etwas, das ihn nichts mehr anging, verstand Vogt, dass er einen Handel geschlossen hatte, ohne es zu bemerken: Wissen gegen Nähe, Erkenntnis gegen Zeit. Niemand hatte ihm ein Dokument zur Unterschrift vorgelegt; der Preis war Jahr für Jahr, unbemerkt, in kleinen Raten bezahlt worden. Die Formel, die vielleicht tausend fremde Leben verlängern würde, lag nun vor ihm auf dem Schreibtisch, während das eigene, das er am meisten hätte kennen wollen, ihm fremd geworden war.$t$,
    $t$Le professeur Reinhard Vogt avait consacré la moitié de sa vie à la question unique qui lui avait paru la plus importante lorsqu'il était jeune physicien : si le comportement d'un cerveau vieillissant pouvait se décrire par une équation unique et élégante. Pour cet objectif, il avait décliné des invitations, laissé dépérir des amitiés et, comme il ne se l'avoua que tardivement, aussi presque manqué l'enfance de sa fille.

Quand la percée survint enfin, tard dans la nuit, au laboratoire vide, il ne ressentit pas le triomphe attendu, mais un vide étrange. L'équation fonctionnait ; les simulations prédisaient la progression de certaines maladies avec une précision effrayante. Des collègues parlaient déjà d'un prix Nobel, de revues qui demandaient une interview. Mais Vogt était assis seul devant l'écran et pensait à sa fille, à qui il avait à peine parlé depuis une dispute trois ans plus tôt.

Il l'appela, pour la première fois depuis longtemps, pour lui raconter la découverte. Elle écouta poliment, puis dit, avec un calme qui le toucha plus que tout reproche, qu'elle était contente pour lui, vraiment, mais qu'elle ne savait plus comment lui parler d'autre chose que d'équations.

Cette nuit-là, tandis que les simulations continuaient de tourner sur son écran, comme si s'y déroulait quelque chose qui ne le concernait plus, Vogt comprit qu'il avait conclu un marché sans s'en apercevoir : le savoir contre la proximité, la connaissance contre le temps. Personne ne lui avait présenté de document à signer ; le prix avait été payé année après année, sans qu'il le remarque, en petites mensualités. La formule, qui prolongerait peut-être mille vies étrangères, reposait à présent sur son bureau, tandis que la sienne propre, celle qu'il aurait le plus voulu connaître, lui était devenue étrangère.$t$,
    $t${"Professor":"professeur","Reinhard":"Reinhard","Vogt":"Vogt","hatte":"avait","sein":"sa","halbes":"moitié de","Leben":"vie","der":"à la","einen":"un","Frage":"question","gewidmet":"consacrée","die":"qui","ihm":"lui","als":"lorsqu'il était","junger":"jeune","Physiker":"physicien","am":"le plus (superlatif)","wichtigsten":"la plus importante","erschienen":"paru","war":"était","ob":"si","sich":"se","das":"le","Verhalten":"comportement","eines":"d'un","alternden":"vieillissant","Gehirns":"cerveau","durch":"par","eine":"une","einzige":"unique","elegante":"élégante","Gleichung":"équation","beschreiben":"décrire","ließe":"pourrait","Für":"pour","dieses":"cet","Ziel":"objectif","er":"il","Einladungen":"invitations","abgelehnt":"refusées","Freundschaften":"amitiés","verkümmern":"dépérir","lassen":"laisser","und":"et","wie":"comme","erst":"seulement","spät":"tard","eingestand":"avoua","auch":"aussi","Kindheit":"enfance","seiner":"sa","Tochter":"fille","beinahe":"presque","verpasst":"manquée","Als":"quand","Durchbruch":"la percée","schließlich":"enfin","kam":"vint","nachts":"la nuit","im":"au","leeren":"vide","Labor":"laboratoire","empfand":"ressentit","nicht":"ne pas","erwarteten":"attendu","Triumph":"triomphe","sondern":"mais","merkwürdige":"étrange","Leere":"vide","Die":"l'","funktionierte":"fonctionnait","Simulationen":"simulations","sagten":"prédisaient","Fortschreiten":"la progression","bestimmter":"certaines","Krankheiten":"maladies","mit":"avec","erschreckender":"effrayante","Genauigkeit":"précision","voraus":"(prédisaient)","Kollegen":"collègues","sprachen":"parlaient","bereits":"déjà","von":"de","einem":"un","Nobelpreis":"prix Nobel","Zeitschriften":"revues","um":"pour","ein":"un","Interview":"entretien","baten":"demandaient","aber":"mais","saß":"était assis","allein":"seul","vor":"devant","dem":"l'","Bildschirm":"écran","dachte":"pensait","an":"à","seit":"depuis","Streit":"dispute","drei":"trois","Jahren":"ans","kaum":"à peine","gesprochen":"parlé","Er":"il","rief":"appela","zum":"pour la","ersten":"première","Mal":"fois","langem":"longtemps","ihr":"lui","Entdeckung":"découverte","zu":"à","erzählen":"raconter","Sie":"elle","hörte":"écouta","höflich":"poliment","sagte":"dit","dann":"puis","einer":"un","Ruhe":"calme","ihn":"le","mehr":"plus","traf":"toucha","jeder":"tout","Vorwurf":"reproche","freue":"se réjouissait","wirklich":"vraiment","wisse":"savait","man":"on","etwas":"autre chose","anderes":"autre","Gleichungen":"équations","sprach":"parlait","In":"dans","dieser":"cette","Nacht":"nuit","verstand":"comprit","Handel":"marché","geschlossen":"conclu","ohne":"sans","es":"cela","bemerken":"remarquer","Wissen":"savoir","gegen":"contre","Nähe":"proximité","Erkenntnis":"connaissance","Zeit":"temps","Niemand":"personne","Dokument":"document","Unterschrift":"signature","vorgelegt":"présenté","Preis":"prix","Jahr":"an","unbemerkt":"sans qu'on le remarque","in":"en","kleinen":"petites","Raten":"mensualités","bezahlt":"payé","worden":"été","Formel":"formule","vielleicht":"peut-être","tausend":"mille","fremde":"étrangères","verlängern":"prolonger","würde":"prolongerait","lag":"reposait","nun":"à présent","auf":"sur","Schreibtisch":"bureau","während":"tandis que","eigene":"propre","meisten":"le plus","hätte":"aurait","kennen":"connaître","wollen":"vouloir","fremd":"étranger","geworden":"devenu","weiterliefen":"continuaient de tourner","geschähe":"se déroulait (subj.)","nichts":"rien","angehen":"concerner","anging":"concernait","dass":"que","den":"les","dort":"là","für":"pour","seine":"sa","seinem":"son","sie":"elle","zur":"à la","über":"sur"}$t$::jsonb,
    $t$Littérature allemande contemporaine$t$
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welcher Frage widmet Professor Vogt sein halbes Leben?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Ob sich ein alterndes Gehirn durch eine Gleichung beschreiben lässt$t$, true, 1),
    (v_q, $t$Ob es außerirdisches Leben gibt$t$, false, 2),
    (v_q, $t$Wie man Zeitreisen ermöglichen kann$t$, false, 3),
    (v_q, $t$Wie man Kunst wissenschaftlich bewerten kann$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was opfert Vogt für seine Forschung?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Freundschaften und Zeit mit seiner Tochter$t$, true, 1),
    (v_q, $t$Sein gesamtes Vermögen$t$, false, 2),
    (v_q, $t$Seine Gesundheit durch riskante Experimente$t$, false, 3),
    (v_q, $t$Seine akademische Reputation$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie wird die Beziehung zwischen wissenschaftlichem Ehrgeiz und persönlichem Verlust im Text konstruiert?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Der Fortschritt in der Forschung erscheint direkt proportional zum schleichenden Verlust menschlicher Nähe$t$, true, 1),
    (v_q, $t$Die Geschichte zeigt, dass Ehrgeiz und Familienleben problemlos vereinbar sind$t$, false, 2),
    (v_q, $t$Der Text stellt wissenschaftlichen Ehrgeiz ausschließlich positiv dar$t$, false, 3),
    (v_q, $t$Persönlicher Verlust wird als reiner Zufall ohne Zusammenhang zur Forschung dargestellt$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was empfindet Vogt, als der Durchbruch gelingt?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Eine merkwürdige Leere statt Triumph$t$, true, 1),
    (v_q, $t$Überwältigende Freude$t$, false, 2),
    (v_q, $t$Erleichterung und Stolz$t$, false, 3),
    (v_q, $t$Angst vor Kritik$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was tut Vogt unmittelbar nach dem wissenschaftlichen Durchbruch?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er ruft seine Tochter an, mit der er lange nicht gesprochen hat$t$, true, 1),
    (v_q, $t$Er informiert sofort die Presse$t$, false, 2),
    (v_q, $t$Er feiert mit seinen Kollegen$t$, false, 3),
    (v_q, $t$Er reicht die Ergebnisse für den Nobelpreis ein$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was verrät die Reaktion der Tochter am Telefon über die tatsächlichen Kosten von Vogts Erfolg?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie zeigt, dass die emotionale Distanz zwischen ihnen tiefer ist, als der wissenschaftliche Erfolg kompensieren kann$t$, true, 1),
    (v_q, $t$Sie zeigt, dass die Tochter stolz und versöhnt ist$t$, false, 2),
    (v_q, $t$Sie beweist, dass die Beziehung völlig intakt geblieben ist$t$, false, 3),
    (v_q, $t$Sie hat keinen Bezug zum Hauptthema der Geschichte$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Womit vergleicht Vogt am Ende seinen wissenschaftlichen Erfolg?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Mit einem Handel, den er unbemerkt eingegangen ist$t$, true, 1),
    (v_q, $t$Mit einem Lottogewinn$t$, false, 2),
    (v_q, $t$Mit einem gerechten Lohn für harte Arbeit$t$, false, 3),
    (v_q, $t$Mit einem Geschenk des Zufalls$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was meint der Text mit „Wissen gegen Nähe, Erkenntnis gegen Zeit“?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Wissenschaftlicher Fortschritt wurde auf Kosten menschlicher Beziehungen erkauft$t$, true, 1),
    (v_q, $t$Wissen und Nähe schließen sich niemals aus$t$, false, 2),
    (v_q, $t$Die Formel wurde buchstäblich gegen Geld verkauft$t$, false, 3),
    (v_q, $t$Es bezieht sich auf einen physikalischen Fachbegriff$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Inwiefern lässt sich die Geschichte als moderne Variation des Faust-Motivs verstehen?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Wie Faust erkauft sich der Protagonist Erkenntnis um den Preis menschlicher Bindung, wenn auch ohne übernatürlichen Pakt$t$, true, 1),
    (v_q, $t$Die Geschichte lehnt jede Verbindung zum Faust-Motiv explizit ab$t$, false, 2),
    (v_q, $t$Vogt schließt, anders als Faust, tatsächlich einen Pakt mit einer übernatürlichen Macht$t$, false, 3),
    (v_q, $t$Das Faust-Motiv bezieht sich hier ausschließlich auf Liebe, nicht auf Wissen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet „verkümmern lassen“ im Text?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$vernachlässigen, bis etwas schwächer wird oder vergeht$t$, true, 1),
    (v_q, $t$fördern und stärken$t$, false, 2),
    (v_q, $t$sofort beenden$t$, false, 3),
    (v_q, $t$öffentlich feiern$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welches Wort passt am besten zu „Durchbruch“ im wissenschaftlichen Kontext?$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Entdeckung$t$, true, 1),
    (v_q, $t$Rückschlag$t$, false, 2),
    (v_q, $t$Fehler$t$, false, 3),
    (v_q, $t$Pause$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet die Metapher „in kleinen Raten bezahlt“ im Kontext der Geschichte?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Ein hoher Preis wurde unbemerkt über lange Zeit in kleinen Schritten entrichtet$t$, true, 1),
    (v_q, $t$Es bezieht sich auf einen tatsächlichen Bankkredit$t$, false, 2),
    (v_q, $t$Es beschreibt eine wissenschaftliche Messmethode$t$, false, 3),
    (v_q, $t$Es bezieht sich auf die Bezahlung der Forschungsassistenten$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$In welcher Zeitform steht „hatte gewidmet“?$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Plusquamperfekt$t$, true, 1),
    (v_q, $t$Präsens$t$, false, 2),
    (v_q, $t$Futur I$t$, false, 3),
    (v_q, $t$Imperativ$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Funktion hat der Konjunktiv II in „durch eine Gleichung beschreiben ließe“?$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er drückt eine hypothetische Möglichkeit aus$t$, true, 1),
    (v_q, $t$Er drückt eine abgeschlossene Vergangenheit aus$t$, false, 2),
    (v_q, $t$Er formuliert einen direkten Befehl$t$, false, 3),
    (v_q, $t$Er markiert wörtliche Rede$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie unterstützt der Wechsel zwischen Plusquamperfekt (Vorgeschichte) und Präteritum (Haupterzählzeit) die Erzählstruktur der Geschichte?$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Das Plusquamperfekt schafft eine zeitliche Tiefe, die zeigt, wie sich Vogts Opfer über Jahre aufgebaut haben, bevor die eigentliche Erzählgegenwart einsetzt$t$, true, 1),
    (v_q, $t$Beide Zeitformen sind rein stilistische Varianten ohne Bedeutungsunterschied$t$, false, 2),
    (v_q, $t$Das Plusquamperfekt wird ausschließlich für wörtliche Rede verwendet$t$, false, 3),
    (v_q, $t$Es gibt in der Geschichte keinen Wechsel der Zeitformen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$Setzen Sie sich kritisch mit der Frage auseinander, ob wissenschaftlicher Fortschritt zwangsläufig persönliche Opfer erfordert.$t$, 1, 'normal', 'production', $t$Die Geschichte von Professor Vogt legt nahe, dass bedeutender wissenschaftlicher Fortschritt oft mit persönlichen Opfern einhergeht, doch dieser Zusammenhang ist nicht zwangsläufig. Vielmehr zeigt der Text, wie ein einseitiger Fokus auf ein Ziel andere Lebensbereiche schleichend verdrängen kann, ohne dass die betroffene Person es rechtzeitig bemerkt. Entscheidend erscheint weniger die Forschung selbst als die fehlende Reflexion über ihre Kosten. Andere Wissenschaftler schaffen es durchaus, Ehrgeiz und persönliche Beziehungen in Balance zu halten. Die Erzählung mahnt daher weniger vor Erkenntnisstreben als solchem, sondern vor dessen unreflektierter Verabsolutierung. Am Ende bleibt die Frage, ob eine Entdeckung, die menschliche Nähe kostet, ihren Preis wirklich wert war.$t$);

END $block$;

-- 6. Der Untergang der Nibelungen
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary, culture_note) VALUES (
    'C1',
    $t$Der Untergang der Nibelungen$t$,
    $t$In der Halle König Etzels loderte das Feuer schon seit Stunden, und noch immer standen die Burgunder Rücken an Rücken, umzingelt von der Wut, die Kriemhild über Jahre genährt hatte. Sie war einst eine junge Königin gewesen, die um ihren ersten Gemahl geweint hatte; nun war sie zu einer Gestalt geworden, die selbst ihre neuen Verwandten am Hunnenhof erschreckte.

Hagen, der den Mord an Siegfried einst mit kalter Hand ausgeführt hatte, kämpfte an diesem Abend, als wisse er, dass keine Klinge ihn retten könne, sondern nur die Art, wie er dem Ende entgegentrat. König Gunther stand neben ihm, sein Bruder im Blut und in der Schuld, und beide schwiegen sich zu, was Worte nicht mehr fassen konnten.

Als der letzte Burgunder gefallen war, ließ Kriemhild Hagen gefangen vor sich bringen und verlangte den Hort der Nibelungen, den er versenkt und dessen Ort er allein kannte. Er weigerte sich, solange sein König lebte. Da befahl sie, Gunther zu töten, und trug dessen Haupt selbst zu Hagen, der beim Anblick weder schrie noch bat, sondern nur sagte, nun kenne den Ort des Schatzes niemand mehr außer ihr und Gott.

Kriemhild erschlug ihn daraufhin mit dem eigenen Schwert Siegfrieds. Der alte Waffenmeister Hildebrand, der die Tat mit ansah, konnte den Anblick einer Königin, die selbst zum Richtschwert griff, nicht ertragen; er erschlug sie an derselben Stelle. So endete das Geschlecht der Burgunder in einer fremden Halle, fern der eigenen Heimat, und der Sage blieb nur die bittere Erkenntnis, dass Rache, einmal entfacht, sich selten mit der Tat begnügt, die sie gerächt zu haben glaubt.$t$,
    $t$Dans la salle du roi Etzel, le feu rugissait déjà depuis des heures, et les Burgondes se tenaient encore dos à dos, encerclés par la fureur que Kriemhild avait nourrie pendant des années. Elle avait été jadis une jeune reine qui avait pleuré son premier époux ; elle était désormais devenue une figure qui effrayait jusqu'à ses nouveaux parents à la cour des Huns.

Hagen, qui avait autrefois exécuté d'une main froide le meurtre de Siegfried, combattait ce soir-là comme s'il savait qu'aucune lame ne pourrait le sauver, mais seulement la manière dont il affronterait la fin. Le roi Gunther se tenait à ses côtés, son frère par le sang et par la faute, et tous deux se taisaient sur ce que les mots ne pouvaient plus contenir.

Quand le dernier Burgonde fut tombé, Kriemhild fit amener Hagen prisonnier devant elle et exigea le trésor des Nibelungen, qu'il avait immergé et dont lui seul connaissait l'emplacement. Il refusa tant que son roi vivrait. Alors elle ordonna que Gunther fût tué, et porta elle-même sa tête à Hagen, qui, à cette vue, ne cria ni ne supplia, mais dit seulement que désormais personne ne connaissait plus l'emplacement du trésor, hormis elle et Dieu.

Kriemhild l'abattit alors avec l'épée même de Siegfried. Le vieux maître d'armes Hildebrand, qui assista à la scène, ne put supporter la vue d'une reine saisissant elle-même l'épée du bourreau ; il l'abattit au même endroit. Ainsi s'éteignit la lignée des Burgondes dans une salle étrangère, loin de leur propre patrie, et il ne resta de la légende que l'amère certitude que la vengeance, une fois allumée, se contente rarement de l'acte par lequel elle croit s'être vengée.$t$,
    $t${"In":"dans","der":"la","Halle":"la salle","König":"roi","Etzels":"d'Etzel","loderte":"flambait","das":"le","Feuer":"le feu","schon":"déjà","seit":"depuis","Stunden":"des heures","und":"et","noch":"encore","immer":"toujours","standen":"se tenaient","die":"les","Burgunder":"les Burgondes","Rücken":"dos","an":"à","umzingelt":"encerclés","von":"par","Wut":"la fureur","Kriemhild":"Kriemhild","über":"pendant","Jahre":"années","genährt":"nourrie","hatte":"avait","Sie":"elle","war":"était","einst":"jadis","eine":"une","junge":"jeune","Königin":"reine","gewesen":"été","um":"pour","ihren":"son","ersten":"premier","Gemahl":"époux","geweint":"pleuré","nun":"désormais","zu":"en","einer":"une","Gestalt":"figure","geworden":"devenue","selbst":"même","ihre":"ses","neuen":"nouveaux","Verwandten":"parents","am":"à la","Hunnenhof":"cour des Huns","erschreckte":"effrayait","Hagen":"Hagen","den":"le","Mord":"le meurtre","Siegfried":"Siegfried","mit":"d'une","kalter":"froide","Hand":"main","ausgeführt":"exécuté","kämpfte":"combattait","diesem":"ce","Abend":"soir","als":"comme si","wisse":"savait","dass":"que","keine":"aucune","Klinge":"lame","ihn":"le","retten":"sauver","könne":"pourrait","sondern":"mais","nur":"seulement","Art":"la manière","wie":"dont","er":"il","dem":"la","Ende":"fin","entgegentrat":"affronterait","Gunther":"Gunther","stand":"se tenait","neben":"à côté de","ihm":"lui","sein":"son","Bruder":"frère","im":"dans le","Blut":"sang","Schuld":"la faute","beide":"tous deux","schwiegen":"se taisaient","sich":"se","was":"ce que","Worte":"mots","fassen":"contenir","konnten":"pouvaient","Als":"quand","letzte":"dernier","gefallen":"tombé","ließ":"fit","gefangen":"prisonnier","vor":"devant","bringen":"amener","verlangte":"exigea","Hort":"le trésor","Nibelungen":"Nibelungen","versenkt":"immergé","dessen":"dont","Ort":"emplacement","allein":"seul","kannte":"connaissait","Er":"il","weigerte":"refusa","solange":"tant que","lebte":"vivait","Da":"alors","befahl":"ordonna","sie":"elle","töten":"tuer","trug":"porta","Haupt":"la tête","beim":"à la","Anblick":"vue","weder":"ni","schrie":"cria","bat":"supplia","sagte":"dit","kenne":"connaissait","Schatzes":"du trésor","niemand":"personne","mehr":"plus","außer":"hormis","ihr":"elle","Gott":"Dieu","erschlug":"abattit","daraufhin":"alors","eigenen":"propre","Schwert":"épée","Siegfrieds":"de Siegfried","Der":"le","alte":"vieux","Waffenmeister":"maître d'armes","Hildebrand":"Hildebrand","Tat":"acte","ansah":"regarda","konnte":"put","Richtschwert":"l'épée du bourreau","griff":"saisit","ertragen":"supporter","derselben":"au même","Stelle":"endroit","So":"ainsi","endete":"s'éteignit","Geschlecht":"la lignée","fremden":"étrangère","fern":"loin de","Heimat":"patrie","Sage":"la légende","blieb":"resta","bittere":"amère","Erkenntnis":"certitude","Rache":"la vengeance","einmal":"une fois","entfacht":"allumée","selten":"rarement","begnügt":"se contente","gerächt":"vengée","haben":"avoir","glaubt":"croit","des":"des","in":"dans","nicht":"pas","zum":"vers le"}$t$::jsonb,
    $t$Épopée médiévale allemande (violence épique, non graphique)$t$
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wo findet die letzte Schlacht der Burgunder statt?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$In der Halle König Etzels$t$, true, 1),
    (v_q, $t$In Worms$t$, false, 2),
    (v_q, $t$Auf einem Schiff auf dem Rhein$t$, false, 3),
    (v_q, $t$In einem Wald$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum kämpfen die Burgunder in der brennenden Halle bis zum Tod?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Weil sie von Kriemhilds über Jahre genährter Rache umzingelt sind$t$, true, 1),
    (v_q, $t$Weil sie freiwillig einen Waffenstillstand ablehnen$t$, false, 2),
    (v_q, $t$Weil sie einen neuen König krönen wollen$t$, false, 3),
    (v_q, $t$Weil sie um Reichtum kämpfen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie verändert sich die Figur Kriemhilds laut dem Text im Lauf der Zeit?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Von einer trauernden jungen Witwe zu einer Gestalt, die selbst ihre eigenen Verwandten erschreckt$t$, true, 1),
    (v_q, $t$Sie bleibt über die gesamte Handlung unverändert milde$t$, false, 2),
    (v_q, $t$Sie wird am Ende versöhnlich und verzeiht allen$t$, false, 3),
    (v_q, $t$Ihre Entwicklung wird im Text nicht thematisiert$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was verlangt Kriemhild von dem gefangenen Hagen?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Den Ort des versenkten Nibelungenhorts$t$, true, 1),
    (v_q, $t$Seine bedingungslose Unterwerfung$t$, false, 2),
    (v_q, $t$Die Krone der Burgunder$t$, false, 3),
    (v_q, $t$Ein öffentliches Geständnis$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum weigert sich Hagen zunächst, den Ort des Schatzes zu nennen?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Solange sein König Gunther lebt, will er ihn nicht verraten$t$, true, 1),
    (v_q, $t$Er hat den Ort selbst vergessen$t$, false, 2),
    (v_q, $t$Er fordert zuerst seine Freilassung$t$, false, 3),
    (v_q, $t$Er misstraut Kriemhilds Versprechen auf Gnade$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Bedeutung hat Hagens letzte Aussage, dass nun niemand mehr außer Kriemhild und Gott den Ort des Schatzes kenne?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie zeigt seinen letzten Akt von Kontrolle und Trotz angesichts des sicheren Todes$t$, true, 1),
    (v_q, $t$Sie ist ein Angebot zur Versöhnung mit Kriemhild$t$, false, 2),
    (v_q, $t$Sie beweist, dass er den Ort tatsächlich preisgibt$t$, false, 3),
    (v_q, $t$Sie zeigt seine Reue über den Mord an Siegfried$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie stirbt Kriemhild am Ende?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Hildebrand erschlägt sie$t$, true, 1),
    (v_q, $t$Sie stirbt in der Schlacht$t$, false, 2),
    (v_q, $t$Sie nimmt sich selbst das Leben$t$, false, 3),
    (v_q, $t$Sie stirbt an einer Krankheit$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum tötet Hildebrand Kriemhild?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er kann den Anblick einer Königin, die selbst zum Richtschwert greift, nicht ertragen$t$, true, 1),
    (v_q, $t$Er handelt im Auftrag von Etzel$t$, false, 2),
    (v_q, $t$Er will selbst König werden$t$, false, 3),
    (v_q, $t$Er rächt den Tod seines eigenen Sohnes$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche moralische Aussage über Rache formuliert der letzte Satz der Geschichte?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Rache, einmal entfacht, beschränkt sich selten auf den ursprünglich beabsichtigten Akt$t$, true, 1),
    (v_q, $t$Rache stellt immer und ausschließlich Gerechtigkeit her$t$, false, 2),
    (v_q, $t$Rache ist im Text moralisch neutral dargestellt$t$, false, 3),
    (v_q, $t$Die Geschichte lehnt jede Form von Vergeltung explizit als sinnlos ab$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet „loderte“ im Text?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$brannte heftig$t$, true, 1),
    (v_q, $t$war kalt$t$, false, 2),
    (v_q, $t$verschwand$t$, false, 3),
    (v_q, $t$wuchs langsam$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welches Wort ist ein Synonym zu „Hort“ im Kontext?$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Schatz$t$, true, 1),
    (v_q, $t$Halle$t$, false, 2),
    (v_q, $t$Bruder$t$, false, 3),
    (v_q, $t$Klinge$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet die Formulierung „sich selten mit der Tat begnügt, die sie gerächt zu haben glaubt“ über das Wesen der Rache?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Rache tendiert dazu, über ihr ursprüngliches Ziel hinauszuwachsen und weitere Gewalt zu erzeugen$t$, true, 1),
    (v_q, $t$Rache endet stets exakt bei dem geplanten Akt$t$, false, 2),
    (v_q, $t$Die Aussage bezieht sich ausschließlich auf Kriemhilds Trauer$t$, false, 3),
    (v_q, $t$Sie beschreibt eine rein juristische Handlung$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$In welcher Zeitform wird die Haupthandlung erzählt (z. B. „loderte“, „kämpfte“)?$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Präteritum$t$, true, 1),
    (v_q, $t$Präsens$t$, false, 2),
    (v_q, $t$Perfekt$t$, false, 3),
    (v_q, $t$Futur I$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welcher Modus liegt in „als wisse er, dass keine Klinge ihn retten könne“ vor?$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Konjunktiv zur Darstellung innerer Gedanken/Vermutungen$t$, true, 1),
    (v_q, $t$Indikativ zur Feststellung einer Tatsache$t$, false, 2),
    (v_q, $t$Imperativ als Befehl$t$, false, 3),
    (v_q, $t$Futur II zur abgeschlossenen Zukunft$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche erzählerische Funktion erfüllt der Gebrauch des Konjunktivs in Passagen, die Hagens innere Haltung beschreiben (z. B. „als wisse er...“)?$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er lässt offen, ob es sich um tatsächliches Wissen oder eine vom Erzähler zugeschriebene innere Gewissheit handelt, und verstärkt so die heroisch-tragische Distanz der Figur$t$, true, 1),
    (v_q, $t$Er zeigt eindeutig, dass Hagen log$t$, false, 2),
    (v_q, $t$Er markiert wörtliche Zitate aus mittelalterlichen Quellen$t$, false, 3),
    (v_q, $t$Er hat rein grammatische, keine erzählerische Funktion$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$Erörtern Sie, welche zeitlose Bedeutung das Thema der Rache, wie es im Untergang der Nibelungen dargestellt wird, für menschliche Konflikte im Allgemeinen haben kann.$t$, 1, 'normal', 'production', $t$Der Untergang der Burgunder zeigt exemplarisch, wie Rache eine eigene, kaum kontrollierbare Dynamik entwickeln kann. Kriemhilds anfänglicher Schmerz über den Tod Siegfrieds verwandelt sich über Jahre in eine Zerstörungskraft, die am Ende auch sie selbst erfasst. Diese Eskalationslogik lässt sich auch außerhalb mittelalterlicher Epen beobachten, etwa in langwierigen persönlichen oder politischen Konflikten. Wer Vergeltung als Ziel verfolgt, läuft Gefahr, das ursprüngliche Maß der erlittenen Kränkung zu überschreiten. Die Geschichte legt nahe, dass Gewalt kaum je an einem klar definierten Punkt endet, sondern sich selbst fortsetzt. Insofern bleibt die Warnung vor entfesselter Rache bis heute aktuell.$t$);

END $block$;

-- 7. Der Optimierungsassistent
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary, culture_note) VALUES (
    'C1',
    $t$Der Optimierungsassistent$t$,
    $t$Seit die Stadtverwaltung Bielheim den digitalen Assistenten „BÜRGERNAH 4.0“ eingeführt hatte, dauerte jeder Behördengang exakt eine Ermessensfrage länger, nämlich die, ob man mit einem Menschen oder mit dessen Simulation sprach. Herr Ostermann wollte lediglich eine Ummeldung seines Wohnsitzes vornehmen; stattdessen führte ihn ein Chatfenster durch sieben Menüs, bevor es ihm mitteilte, seine Anfrage sei „aus Datenschutzgründen an einen Mitarbeiter weitergeleitet worden“, woraufhin eine automatische Nummer erschien.

Die Nummer lautete 214. Auf dem Wartebildschirm wurde 41 angezeigt. Ostermann setzte sich, öffnete sein Telefon und las, während er wartete, einen Artikel darüber, wie künstliche Intelligenz Behördenprozesse „menschlicher“ gestalten solle. Nach vierzig Minuten sprang die Nummer plötzlich von 89 auf 214, seine eigene, und eine freundliche Computerstimme bat ihn, „bereit für das Gespräch“ zu sein.

Am Schalter saß tatsächlich ein Mensch, eine junge Frau, die aussah, als hätte sie selbst gerade erst begriffen, dass sie an diesem System nichts ändern konnte, sondern es nur mit einem geübten Lächeln verwalten musste. Sie gab seine Daten in ein Formular ein, das dieselben Fragen stellte wie der Chatbot, nur langsamer, und erklärte, das System werde die Änderung „in den nächsten Tagen verarbeiten“, eine Formulierung, die weder eine Frist noch ein Versprechen enthielt. Ostermann bedankte sich, obwohl er nicht genau wusste, wofür.

Auf dem Heimweg dachte Ostermann, die Digitalisierung habe der Verwaltung nicht etwa Effizienz gebracht, sondern lediglich eine neue Schicht zwischen ihm und der Entscheidung eingezogen, eine Schicht aus Wartenummern und Chatfenstern, die niemand verantworten musste. Die Bürokratie war nicht verschwunden; sie hatte sich nur ein freundlicheres Gesicht zugelegt, mit einer Ladeanimation statt eines Stempels.$t$,
    $t$Depuis que l'administration municipale de Bielheim avait introduit l'assistant numérique « BÜRGERNAH 4.0 », chaque démarche administrative durait exactement une question d'appréciation de plus, à savoir si l'on parlait à un être humain ou à sa simulation. Monsieur Ostermann voulait simplement effectuer un changement d'adresse ; au lieu de cela, une fenêtre de chat le conduisit à travers sept menus, avant de lui annoncer que sa demande avait été « transmise à un employé pour des raisons de protection des données », après quoi apparut un numéro automatique.

Le numéro était le 214. L'écran d'attente affichait 41. Ostermann s'assit, ouvrit son téléphone et lut, en attendant, un article sur la manière dont l'intelligence artificielle devait rendre les procédures administratives « plus humaines ». Après quarante minutes, le numéro sauta soudain de 89 à 214, le sien, et une voix informatique amicale le pria d'être « prêt pour l'entretien ».

Au guichet siégeait effectivement un être humain, une jeune femme qui semblait avoir elle-même tout juste compris qu'elle ne pouvait rien changer à ce système, mais devait seulement l'administrer avec un sourire exercé. Elle saisit ses données dans un formulaire qui posait les mêmes questions que le chatbot, mais plus lentement, et expliqua que le système traiterait la modification « dans les prochains jours », une formule qui ne contenait ni délai ni promesse. Ostermann la remercia, bien qu'il ne sût pas exactement de quoi.

Sur le chemin du retour, Ostermann songea que la numérisation n'avait pas apporté d'efficacité à l'administration, mais avait seulement inséré une nouvelle couche entre lui et la décision, une couche faite de numéros d'attente et de fenêtres de chat, dont personne n'avait à répondre. La bureaucratie n'avait pas disparu ; elle s'était seulement donné un visage plus amical, avec une animation de chargement au lieu d'un tampon.$t$,
    $t${"Seit":"depuis que","die":"la","Stadtverwaltung":"administration municipale","Bielheim":"Bielheim","den":"le","digitalen":"numérique","Assistenten":"assistant","eingeführt":"introduit","hatte":"avait","dauerte":"durait","jeder":"chaque","Behördengang":"démarche administrative","exakt":"exactement","eine":"une","Ermessensfrage":"question d'appréciation","länger":"de plus","nämlich":"à savoir","ob":"si","man":"on","mit":"avec","einem":"un","Menschen":"être humain","oder":"ou","dessen":"sa","Simulation":"simulation","sprach":"parlait","Herr":"monsieur","Ostermann":"Ostermann","wollte":"voulait","lediglich":"simplement","Ummeldung":"changement d'adresse","seines":"de son","Wohnsitzes":"domicile","vornehmen":"effectuer","stattdessen":"à la place","führte":"conduisit","ihn":"le","Chatfenster":"fenêtre de chat","durch":"à travers","sieben":"sept","Menüs":"menus","bevor":"avant que","es":"elle","ihm":"lui","mitteilte":"annonça","seine":"sa","Anfrage":"demande","sei":"était","aus":"pour des","Datenschutzgründen":"raisons de protection des données","an":"à","einen":"un","Mitarbeiter":"employé","weitergeleitet":"transmise","worden":"été","woraufhin":"après quoi","automatische":"automatique","Nummer":"numéro","erschien":"apparut","Die":"le","lautete":"était","Auf":"sur","dem":"le","Wartebildschirm":"écran d'attente","wurde":"était","angezeigt":"affiché","setzte":"s'assit","sich":"se","öffnete":"ouvrit","Telefon":"téléphone","las":"lut","während":"pendant que","er":"il","wartete":"attendait","Artikel":"article","darüber":"sur","wie":"comment","künstliche":"artificielle","Intelligenz":"intelligence","Behördenprozesse":"procédures administratives","menschlicher":"plus humaines","gestalten":"rendre","solle":"devrait","Nach":"après","vierzig":"quarante","Minuten":"minutes","sprang":"sauta","plötzlich":"soudain","von":"de","auf":"à","eigene":"propre","und":"et","freundliche":"amicale","Computerstimme":"voix informatique","bat":"pria","bereit":"prête","für":"pour","das":"le","Gespräch":"entretien","zu":"à","sein":"être","Am":"au","Schalter":"guichet","saß":"siégeait","tatsächlich":"effectivement","Mensch":"être humain","junge":"jeune","Frau":"femme","aussah":"semblait","als":"comme si","hätte":"avait","selbst":"elle-même","gerade":"tout juste","erst":"seulement","begriffen":"compris","dass":"que","diesem":"ce","System":"système","nichts":"rien","ändern":"changer","konnte":"pouvait","gab":"saisit","Daten":"données","Formular":"formulaire","dieselben":"les mêmes","Fragen":"questions","stellte":"posait","Chatbot":"chatbot","nur":"mais","langsamer":"plus lentement","erklärte":"expliqua","werde":"allait","Änderung":"modification","nächsten":"prochains","Tagen":"jours","verarbeiten":"traiter","Formulierung":"formule","weder":"ni","Frist":"délai","noch":"ni","Versprechen":"promesse","enthielt":"contenait","bedankte":"remercia","obwohl":"bien que","genau":"exactement","wusste":"savait","wofür":"de quoi","Heimweg":"chemin du retour","dachte":"pensa","Digitalisierung":"numérisation","habe":"avait","Verwaltung":"administration","etwa":"en quelque sorte","Effizienz":"efficacité","gebracht":"apporté","sondern":"mais","neue":"nouvelle","Schicht":"couche","zwischen":"entre","Entscheidung":"décision","eingezogen":"insérée","Wartenummern":"numéros d'attente","Chatfenstern":"fenêtres de chat","niemand":"personne","verantworten":"répondre de","musste":"devait","Bürokratie":"bureaucratie","verschwunden":"disparue","freundlicheres":"plus amical","Gesicht":"visage","zugelegt":"donné","Ladeanimation":"animation de chargement","statt":"au lieu de","eines":"d'un","Stempels":"tampon","geübten":"exercé","Lächeln":"sourire","verwalten":"administrer","BÜRGERNAH":"nom de l'assistant (proche du citoyen)","Sie":"elle","der":"le","ein":"un","einer":"une","in":"dans","nicht":"pas","sie":"elle","war":"était"}$t$::jsonb,
    $t$Littérature allemande contemporaine$t$
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was möchte Herr Ostermann bei der Stadtverwaltung erledigen?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Eine Ummeldung seines Wohnsitzes$t$, true, 1),
    (v_q, $t$Eine Steuererklärung abgeben$t$, false, 2),
    (v_q, $t$Einen Führerschein beantragen$t$, false, 3),
    (v_q, $t$Eine Beschwerde einreichen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was passiert, bevor Ostermann tatsächlich mit einem Menschen sprechen kann?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er wird durch mehrere Chatmenüs geführt und erhält eine Wartenummer$t$, true, 1),
    (v_q, $t$Er wird sofort verbunden$t$, false, 2),
    (v_q, $t$Er muss persönlich zu einem anderen Amt gehen$t$, false, 3),
    (v_q, $t$Er erhält eine automatische Ablehnung$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie wird durch den Ablauf am Anfang der Geschichte die satirische Grundhaltung des Textes etabliert?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Durch die Diskrepanz zwischen dem Versprechen der Digitalisierung und der tatsächlich erlebten Umständlichkeit$t$, true, 1),
    (v_q, $t$Durch eine ernste, tragische Darstellung technischer Probleme$t$, false, 2),
    (v_q, $t$Durch eine rein positive Darstellung des digitalen Systems$t$, false, 3),
    (v_q, $t$Der Text nimmt keine satirische Haltung ein$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was macht Ostermann, während er auf seine Nummer wartet?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er liest einen Artikel über künstliche Intelligenz in der Verwaltung$t$, true, 1),
    (v_q, $t$Er beschwert sich lautstark$t$, false, 2),
    (v_q, $t$Er verlässt das Amt$t$, false, 3),
    (v_q, $t$Er ruft einen Freund an$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Ironie liegt in dem Artikel, den Ostermann während des Wartens liest?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Der Artikel preist die „menschlichere“ Gestaltung von Behördenprozessen durch KI, während Ostermann gerade das Gegenteil erlebt$t$, true, 1),
    (v_q, $t$Der Artikel bestätigt genau seine eigene positive Erfahrung$t$, false, 2),
    (v_q, $t$Der Artikel handelt von einem völlig anderen Thema$t$, false, 3),
    (v_q, $t$Ostermann liest den Artikel, um sich zu beschweren$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was verdeutlicht der Sprung der Wartenummer von 89 auf 214?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Die scheinbare Systematik der Nummernvergabe erweist sich als ebenso undurchsichtig wie die alte Bürokratie$t$, true, 1),
    (v_q, $t$Es zeigt, dass das System tatsächlich fehlerfrei funktioniert$t$, false, 2),
    (v_q, $t$Es beweist, dass Ostermann bevorzugt behandelt wird$t$, false, 3),
    (v_q, $t$Es hat keine satirische Funktion im Text$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wer sitzt schließlich am Schalter?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Eine junge Frau, die selbst wenig ändern kann$t$, true, 1),
    (v_q, $t$Ein Roboter$t$, false, 2),
    (v_q, $t$Der Bürgermeister persönlich$t$, false, 3),
    (v_q, $t$Niemand, der Schalter bleibt leer$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie beschreibt der Text die Formulierung, die Änderung werde „in den nächsten Tagen verarbeitet“?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Als vage Formulierung ohne konkrete Frist oder Zusage$t$, true, 1),
    (v_q, $t$Als klare, verbindliche Zusage$t$, false, 2),
    (v_q, $t$Als juristisch bindenden Vertrag$t$, false, 3),
    (v_q, $t$Als Beweis für schnelle Bearbeitung$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Zu welchem Schluss kommt Ostermann auf dem Heimweg über die Wirkung der Digitalisierung?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie hat keine echte Effizienz gebracht, sondern nur eine neue, unpersönliche Schicht zwischen Bürger und Entscheidung eingefügt$t$, true, 1),
    (v_q, $t$Sie hat alle bürokratischen Probleme vollständig gelöst$t$, false, 2),
    (v_q, $t$Sie hat die Verwaltung komplett abgeschafft$t$, false, 3),
    (v_q, $t$Sie betrifft nur technische, nicht menschliche Aspekte der Verwaltung$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet „lediglich“ im Text?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$nur/ausschließlich$t$, true, 1),
    (v_q, $t$sehr viel$t$, false, 2),
    (v_q, $t$niemals$t$, false, 3),
    (v_q, $t$schnell$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welches Wort ist im Kontext ein Synonym zu „Formulierung“?$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Ausdrucksweise$t$, true, 1),
    (v_q, $t$Handlung$t$, false, 2),
    (v_q, $t$Entscheidung$t$, false, 3),
    (v_q, $t$Beschwerde$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet die Metapher „ein freundlicheres Gesicht zugelegt“ bezogen auf die Bürokratie?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Die Bürokratie hat sich äußerlich verändert, ihr grundlegendes Wesen ist jedoch gleich geblieben$t$, true, 1),
    (v_q, $t$Die Bürokratie wurde vollständig abgeschafft$t$, false, 2),
    (v_q, $t$Es bezieht sich auf ein tatsächliches Gesicht auf einem Formular$t$, false, 3),
    (v_q, $t$Die Aussage hat keine übertragene Bedeutung$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$In welcher Zeitform steht „hatte...eingeführt“?$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Plusquamperfekt$t$, true, 1),
    (v_q, $t$Präsens$t$, false, 2),
    (v_q, $t$Futur I$t$, false, 3),
    (v_q, $t$Imperativ$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche grammatische Form liegt in „seine Anfrage sei...weitergeleitet worden“ vor?$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Konjunktiv I Passiv (indirekte Rede)$t$, true, 1),
    (v_q, $t$Aktiv Präsens$t$, false, 2),
    (v_q, $t$Imperativ$t$, false, 3),
    (v_q, $t$Konditional II$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Wirkung erzielt die Verwendung von Konjunktiv-I-Formen (z. B. „sei weitergeleitet worden“, „werde...verarbeitet“) in den wiedergegebenen automatisierten Mitteilungen?$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie markiert die berichtete, unpersönliche Systemsprache und distanziert den Erzähler ironisch von deren Verlässlichkeit$t$, true, 1),
    (v_q, $t$Sie zeigt, dass der Erzähler die Aussagen persönlich bestätigt$t$, false, 2),
    (v_q, $t$Sie hat rein grammatische Funktion ohne satirischen Effekt$t$, false, 3),
    (v_q, $t$Sie kennzeichnet direkte, wörtliche Zitate von Ostermann selbst$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$Diskutieren Sie kritisch, ob die Digitalisierung von Verwaltungsprozessen den Bürgerinnen und Bürgern tatsächlich mehr Effizienz oder eher neue Formen der Bürokratie bringt.$t$, 1, 'normal', 'production', $t$Die Digitalisierung von Verwaltungsprozessen verspricht mehr Effizienz, führt in der Praxis jedoch häufig zu neuen, subtileren Formen von Bürokratie. Wie die Geschichte von Herrn Ostermann zeigt, ersetzen Chatbots und Wartenummern zwar den klassischen Papierkram, lösen aber nicht das eigentliche Problem unklarer Zuständigkeiten. Oft entsteht sogar eine zusätzliche Distanz zwischen Bürger und Entscheidungsträger, da niemand mehr konkret verantwortlich erscheint. Freundliche Oberflächen und automatisierte Nachrichten können zudem echte Verbindlichkeit vortäuschen, ohne diese tatsächlich zu gewährleisten. Eine sinnvolle Digitalisierung müsste daher weniger auf äußere Modernisierung als auf tatsächliche Vereinfachung der Abläufe zielen. Solange dies ausbleibt, bleibt die Bürokratie im Kern bestehen, sie trägt nur ein neues Gesicht.$t$);

END $block$;

-- 8. Der Küchentisch
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary, culture_note) VALUES (
    'C1',
    $t$Der Küchentisch$t$,
    $t$Der Küchentisch stand seit drei Generationen in derselben Wohnung, obwohl sich Land, Grenzen und Namen der Straße mehrfach geändert hatten. Großmutter Ilse hatte an ihm gesessen, als die Nachricht vom Kriegsende kam, und später, als ihr Mann aus der Gefangenschaft zurückkehrte, ein Fremder mit vertrautem Gesicht, über den in der Familie kaum je gesprochen wurde.

Ihre Tochter Renate wuchs an diesem Tisch mit zwei Deutschlands im Kopf auf, dem einen hinter der Mauer, dem anderen, das im Westfernsehen bunter aussah. Sie lernte früh, welche Sätze man im Klassenzimmer sagte und welche nur zu Hause, bei geschlossener Tür. Als die Mauer fiel, war sie eine Frau mittleren Alters, die sich fragte, ob die Freiheit, von der alle sprachen, auch für ein Leben gedacht war, das schon halb gelebt war.

Renates Sohn Matthias kennt die Mauer nur aus Schulbüchern und aus den Andeutungen seiner Mutter, die selten mehr als Andeutungen waren. An jenem Küchentisch, an dem er heute mit seiner eigenen Tochter sitzt, bemerkt er, wie viel Schweigen sich über drei Generationen angesammelt hat, ohne dass jemand es je aussprechen wollte.

Seine Tochter stellt Fragen, wie es Kinder tun, direkt und ohne die Vorsicht der Erwachsenen: Warum hat die Uroma nie über den Krieg geredet? Warum wohnte Oma in einem anderen Land, obwohl sie nie umgezogen ist? Matthias merkt, dass er die Antworten nur bruchstückhaft kennt, und beginnt, zum ersten Mal, selbst zu fragen. Der Tisch, denkt er, hat mehr gehört, als je jemand aus dieser Familie ausgesprochen hat, und vielleicht ist es an seiner Tochter, endlich zu fragen, was er nie zu fragen wagte.$t$,
    $t$La table de cuisine se trouvait depuis trois générations dans le même appartement, bien que le pays, les frontières et le nom de la rue eussent changé plusieurs fois. Grand-mère Ilse s'y était assise quand vint la nouvelle de la fin de la guerre, et plus tard, quand son mari revint de captivité, un étranger au visage familier, dont on ne parlait presque jamais dans la famille.

Sa fille Renate grandit à cette table avec deux Allemagnes en tête, l'une derrière le Mur, l'autre qui paraissait plus colorée à la télévision de l'Ouest. Elle apprit tôt quelles phrases on disait en classe et lesquelles seulement chez soi, porte fermée. Quand le Mur tomba, elle était une femme d'âge mûr qui se demandait si la liberté dont tout le monde parlait était aussi conçue pour une vie déjà à moitié vécue.

Matthias, le fils de Renate, ne connaît le Mur que par les manuels scolaires et par les allusions de sa mère, qui n'étaient guère plus que des allusions. À cette même table de cuisine où il est assis aujourd'hui avec sa propre fille, il remarque combien de silence s'est accumulé sur trois générations, sans que personne n'ait jamais voulu le formuler.

Sa fille pose des questions comme le font les enfants, directement et sans la prudence des adultes : pourquoi l'arrière-grand-mère n'a-t-elle jamais parlé de la guerre ? Pourquoi grand-mère vivait-elle dans un autre pays, alors qu'elle n'a jamais déménagé ? Matthias se rend compte qu'il ne connaît les réponses que par bribes, et commence, pour la première fois, à s'interroger lui-même. La table, pense-t-il, a entendu plus de choses que quiconque de cette famille n'en a jamais exprimé, et c'est peut-être à sa fille qu'il revient enfin de demander ce que lui-même n'a jamais osé demander.$t$,
    $t${"Der":"la","Küchentisch":"table de cuisine","stand":"se trouvait","seit":"depuis","drei":"trois","Generationen":"générations","in":"dans","derselben":"le même","Wohnung":"appartement","obwohl":"bien que","sich":"(changer)","Land":"pays","Grenzen":"frontières","und":"et","Namen":"le nom","der":"la","Straße":"rue","mehrfach":"plusieurs fois","geändert":"changé","hatten":"avaient","Großmutter":"grand-mère","Ilse":"Ilse","hatte":"avait","an":"à","ihm":"elle (table)","gesessen":"assise","als":"que","die":"la","Nachricht":"la nouvelle","vom":"de la","Kriegsende":"fin de la guerre","kam":"vint","später":"plus tard","ihr":"son","Mann":"mari","aus":"de","Gefangenschaft":"captivité","zurückkehrte":"revint","ein":"un","Fremder":"étranger","mit":"au","vertrautem":"familier","Gesicht":"visage","über":"sur","den":"lequel","Familie":"famille","kaum":"presque jamais","je":"jamais","gesprochen":"parlé","wurde":"était","Ihre":"sa","Tochter":"fille","Renate":"Renate","wuchs":"grandit","diesem":"cette","Tisch":"table","zwei":"deux","Deutschlands":"Allemagnes","im":"en","Kopf":"tête","auf":"(grandir)","dem":"l'un","einen":"l'un","hinter":"derrière","Mauer":"Mur","anderen":"autre","das":"qui","Westfernsehen":"télévision de l'Ouest","bunter":"plus colorée","aussah":"paraissait","Sie":"elle","lernte":"apprit","früh":"tôt","welche":"quelles","Sätze":"phrases","man":"on","Klassenzimmer":"salle de classe","sagte":"disait","nur":"seulement","zu":"à","Hause":"la maison","bei":"porte","geschlossener":"fermée","Tür":"porte","Als":"quand","fiel":"tomba","war":"était","eine":"une","Frau":"femme","mittleren":"d'âge mûr","Alters":"âge","fragte":"se demandait","ob":"si","Freiheit":"liberté","von":"dont","alle":"tout le monde","sprachen":"parlait","auch":"aussi","für":"pour","Leben":"vie","gedacht":"conçue","schon":"déjà","halb":"à moitié","gelebt":"vécue","Renates":"de Renate","Sohn":"fils","Matthias":"Matthias","kennt":"connaît","Schulbüchern":"manuels scolaires","Andeutungen":"allusions","seiner":"sa","Mutter":"mère","selten":"rarement","mehr":"plus","waren":"étaient","An":"à","jenem":"cette","heute":"aujourd'hui","eigenen":"propre","sitzt":"est assis","bemerkt":"remarque","wie":"combien","viel":"beaucoup","Schweigen":"silence","angesammelt":"accumulé","hat":"a","ohne":"sans","dass":"que","jemand":"quelqu'un","es":"cela","aussprechen":"exprimer","wollte":"voulait","Seine":"sa","stellt":"pose","Fragen":"questions","Kinder":"enfants","tun":"font","direkt":"directement","Vorsicht":"prudence","Erwachsenen":"adultes","Warum":"pourquoi","Uroma":"arrière-grand-mère","nie":"jamais","Krieg":"guerre","geredet":"parlé","wohnte":"vivait","Oma":"grand-mère","umgezogen":"déménagé","ist":"est","merkt":"se rend compte","Antworten":"réponses","bruchstückhaft":"par bribes","beginnt":"commence","zum":"pour la","ersten":"première","Mal":"fois","selbst":"lui-même","fragen":"demander","denkt":"pense","gehört":"entendu","dieser":"cette","ausgesprochen":"exprimé","vielleicht":"peut-être","endlich":"enfin","was":"ce que","wagte":"osa","einem":"un","er":"il","sie":"elle"}$t$::jsonb,
    $t$Inspiré de l'histoire allemande du XXe siècle$t$
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie lange steht der Küchentisch schon in derselben Wohnung?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Seit drei Generationen$t$, true, 1),
    (v_q, $t$Seit einem Jahr$t$, false, 2),
    (v_q, $t$Seit dem Mauerfall$t$, false, 3),
    (v_q, $t$Erst seit Kurzem$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was erlebt Großmutter Ilse an diesem Tisch?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Die Nachricht vom Kriegsende und die Rückkehr ihres Mannes aus der Gefangenschaft$t$, true, 1),
    (v_q, $t$Ihre eigene Hochzeit$t$, false, 2),
    (v_q, $t$Die Geburt ihrer Enkelkinder$t$, false, 3),
    (v_q, $t$Ihren Umzug in eine neue Stadt$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was deutet die Formulierung an, dass über die Rückkehr des Mannes „kaum je gesprochen wurde“?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Ein familiäres Schweigen über traumatische Kriegserfahrungen, das sich über Generationen fortsetzt$t$, true, 1),
    (v_q, $t$Der Mann kehrte nie tatsächlich zurück$t$, false, 2),
    (v_q, $t$Die Familie feierte die Rückkehr ausgiebig$t$, false, 3),
    (v_q, $t$Es gibt keinen Bezug zum Hauptthema der Geschichte$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$In welchem Land wächst Renate an diesem Tisch auf?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$In der DDR, hinter der Mauer$t$, true, 1),
    (v_q, $t$In Westdeutschland$t$, false, 2),
    (v_q, $t$In Österreich$t$, false, 3),
    (v_q, $t$Im Ausland, fernab von Deutschland$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was lernt Renate früh in Bezug auf ihre Sprache?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Welche Sätze man öffentlich und welche nur zu Hause sagt$t$, true, 1),
    (v_q, $t$Wie man fließend Fremdsprachen spricht$t$, false, 2),
    (v_q, $t$Wie man offiziell Beschwerden formuliert$t$, false, 3),
    (v_q, $t$Welche Gedichte man auswendig lernen muss$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Ambivalenz drückt sich in Renates Frage nach dem Mauerfall aus, ob die Freiheit „auch für ein Leben gedacht war, das schon halb gelebt war“?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie zweifelt, ob ein später erworbenes Recht auf Freiheit die bereits verlorenen Lebensjahre wirklich kompensieren kann$t$, true, 1),
    (v_q, $t$Sie lehnt die neue Freiheit vollständig ab$t$, false, 2),
    (v_q, $t$Sie ist ausschließlich euphorisch über den Mauerfall$t$, false, 3),
    (v_q, $t$Die Frage bezieht sich nur auf materiellen Wohlstand$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Woher kennt Matthias die Mauer?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Nur aus Schulbüchern und Andeutungen seiner Mutter$t$, true, 1),
    (v_q, $t$Aus eigener Erfahrung als Kind$t$, false, 2),
    (v_q, $t$Er hat selbst an der Mauer gearbeitet$t$, false, 3),
    (v_q, $t$Er kennt sie überhaupt nicht$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bemerkt Matthias am Küchentisch mit seiner eigenen Tochter?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Wie viel Schweigen sich über drei Generationen angesammelt hat$t$, true, 1),
    (v_q, $t$Dass der Tisch bald ersetzt werden muss$t$, false, 2),
    (v_q, $t$Dass seine Tochter die Geschichte bereits genau kennt$t$, false, 3),
    (v_q, $t$Dass er selbst nichts über die Vergangenheit wissen will$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Bedeutung hat es, dass gerade die direkten, unbefangenen Fragen der Enkelin Matthias dazu bringen, selbst zu fragen?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Die unvoreingenommene Perspektive der jüngeren Generation kann familiäres Schweigen aufbrechen, das ältere Generationen aus Vorsicht bewahrt hatten$t$, true, 1),
    (v_q, $t$Die Fragen der Enkelin werden im Text als naiv und irrelevant abgetan$t$, false, 2),
    (v_q, $t$Matthias weist die Fragen seiner Tochter zurück$t$, false, 3),
    (v_q, $t$Der Text zeigt, dass Kinder grundsätzlich kein Interesse an Familiengeschichte haben$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet „Gefangenschaft“ im Text?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$die Kriegsgefangenschaft$t$, true, 1),
    (v_q, $t$der Urlaub$t$, false, 2),
    (v_q, $t$die Ausbildung$t$, false, 3),
    (v_q, $t$die Emigration$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welches Wort passt als Synonym zu „Andeutungen“?$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$vage Hinweise$t$, true, 1),
    (v_q, $t$klare Erklärungen$t$, false, 2),
    (v_q, $t$laute Vorwürfe$t$, false, 3),
    (v_q, $t$amtliche Dokumente$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet die Formulierung „bruchstückhaft kennen“ bezogen auf Familiengeschichte?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Nur unvollständige, lückenhafte Kenntnisse über etwas besitzen$t$, true, 1),
    (v_q, $t$Etwas vollständig und detailliert kennen$t$, false, 2),
    (v_q, $t$Etwas komplett erfunden haben$t$, false, 3),
    (v_q, $t$Etwas offiziell dokumentiert haben$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$In welcher Zeitform steht „hatten...geändert“?$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Plusquamperfekt$t$, true, 1),
    (v_q, $t$Präsens$t$, false, 2),
    (v_q, $t$Futur I$t$, false, 3),
    (v_q, $t$Imperativ$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Zeitform/Konstruktion liegt in „über den...kaum je gesprochen wurde“ vor?$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Präteritum Passiv$t$, true, 1),
    (v_q, $t$Aktiv Präsens$t$, false, 2),
    (v_q, $t$Konjunktiv II$t$, false, 3),
    (v_q, $t$Imperativ$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Funktion erfüllt die gehäufte Verwendung von Passivkonstruktionen (z. B. „wurde...gesprochen“, „war...gedacht“) im Zusammenhang mit dem Thema Schweigen in der Familie?$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Das Passiv verschleiert die handelnden Subjekte und spiegelt so sprachlich das familiäre Schweigen über Verantwortung und Erfahrung wider$t$, true, 1),
    (v_q, $t$Das Passiv wird rein zufällig und ohne stilistische Absicht verwendet$t$, false, 2),
    (v_q, $t$Es zeigt, dass die Familie stets aktiv und offen kommunizierte$t$, false, 3),
    (v_q, $t$Passivkonstruktionen kommen im Text nicht vor$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$Reflektieren Sie darüber, wie sich historische Erfahrungen wie Krieg und Teilung über mehrere Generationen einer Familie fortsetzen können, auch wenn nicht offen darüber gesprochen wird.$t$, 1, 'normal', 'production', $t$Historische Erfahrungen wie Krieg und nationale Teilung hinterlassen häufig Spuren, die weit über die unmittelbar betroffene Generation hinausreichen. In der Geschichte um den Küchentisch zeigt sich, dass Schweigen selbst zu einer Art Erbe werden kann, das von einer Generation zur nächsten weitergegeben wird. Kinder und Enkel spüren oft, dass etwas Wichtiges unausgesprochen bleibt, auch ohne die genauen Fakten zu kennen. Erst der unbefangene Blick einer jüngeren Generation kann mitunter dazu führen, dass alte Fragen endlich gestellt werden. Dabei geht es weniger darum, Schuld zuzuweisen, als darum, ein gemeinsames Verständnis der Familiengeschichte zu ermöglichen. So wird der Küchentisch zum stillen Zeugen einer Geschichte, die erst durch das Fragen der Nachkommen ihre Stimme wiederfindet.$t$);

END $block$;

