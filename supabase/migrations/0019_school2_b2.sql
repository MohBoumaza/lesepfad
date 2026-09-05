-- Contenu "système scolaire allemand + patrimoine, vague 2" — niveau B2 (6 histoires).
-- Ajoute aussi 3 nouveaux types d'exercices : lueckentext (texte à trous),
-- grammar (grammaire ciblée) et true_false (vrai/faux justifié), ainsi
-- qu'une grille de correction (rubric) pour les questions de production.

-- 1. Die Grundschulempfehlung
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary, culture_note) VALUES (
    'B2',
    $t$Die Grundschulempfehlung$t$,
    $t$Mia und Deniz saßen seit der ersten Klasse nebeneinander und teilten sich sogar das Pausenbrot. Beide hatten in Mathematik und Deutsch fast identische Noten, dennoch fiel die Grundschulempfehlung völlig unterschiedlich aus: Mia sollte aufs Gymnasium wechseln, Deniz lediglich auf die Realschule. Frau Vogt, die Klassenlehrerin, begründete ihre Entscheidung mit dem sogenannten Arbeitsverhalten, doch Deniz' Mutter vermutete etwas anderes. Sie arbeitete als Reinigungskraft und sprach zu Hause selten Deutsch, während Mias Eltern beide Akademiker waren und ihre Tochter jeden Abend bei den Hausaufgaben unterstützten.

Auf dem Elternabend kam es zum Streit. "Es kann doch nicht sein, dass die Herkunft über die Zukunft meines Sohnes entscheidet", rief Deniz' Mutter aufgebracht. Andere Eltern nickten zustimmend, allerdings verteidigte die Schulleiterin das dreigliedrige System als bewährt und differenziert. Sie verwies auf Untersuchungen, wonach in Deutschland der familiäre Hintergrund den Bildungsweg stärker beeinflusse als in manchen Nachbarländern.

Am Ende einigte man sich auf einen Kompromiss: Deniz durfte eine Probezeit am Gymnasium versuchen, begleitet von zusätzlicher Sprachförderung. Nach einem halben Jahr zeigte sich, dass er dem Unterricht mühelos folgen konnte, sogar besser als manche Mitschüler, deren Eltern von Anfang an das Gymnasium empfohlen bekommen hatten. Mia freute sich außerdem, ihren besten Freund weiterhin an ihrer Seite zu haben, doch beide fragten sich insgeheim, wie viele andere Kinder ohne diese zweite Chance einfach übersehen worden waren und nie erfuhren, wozu sie eigentlich fähig gewesen wären.$t$,
    $t$Mia et Deniz étaient assis côte à côte depuis le CP et partageaient même leur goûter. Tous deux avaient des notes presque identiques en mathématiques et en allemand, pourtant l'avis d'orientation de l'école primaire fut totalement différent : Mia devait passer au lycée général (Gymnasium), Deniz seulement à l'école secondaire courte (Realschule). Madame Vogt, la professeure principale, justifia sa décision par le prétendu « comportement de travail », mais la mère de Deniz soupçonnait autre chose. Elle travaillait comme femme de ménage et parlait rarement allemand à la maison, tandis que les parents de Mia étaient tous deux universitaires et aidaient leur fille chaque soir pour les devoirs.

Lors de la réunion de parents, la dispute éclata. « Il n'est pas possible que l'origine sociale décide de l'avenir de mon fils », s'exclama la mère de Deniz, indignée. D'autres parents approuvèrent d'un signe de tête, mais la directrice défendit le système à trois voies comme éprouvé et différencié. Elle invoqua des études selon lesquelles, en Allemagne, le milieu familial influencerait le parcours scolaire plus fortement que dans certains pays voisins.

Finalement, on trouva un compromis : Deniz put tenter une période d'essai au lycée général, accompagnée d'un soutien linguistique supplémentaire. Après six mois, il s'avéra qu'il suivait les cours sans difficulté, même mieux que certains camarades dont les parents avaient obtenu la recommandation dès le départ. Mia se réjouit de garder son meilleur ami à ses côtés, mais tous deux se demandaient secrètement combien d'autres enfants, sans cette seconde chance, avaient simplement été négligés et n'avaient jamais su de quoi ils étaient réellement capables.$t$,
    $t${"Mia":"Mia","und":"et","Deniz":"Deniz","saßen":"étaient assis","seit":"depuis","der":"le/la","ersten":"première","Klasse":"classe","nebeneinander":"côte à côte","teilten":"partageaient","sich":"se","sogar":"même","das":"le/la","Pausenbrot":"casse-croûte","Beide":"Tous deux","hatten":"avaient","in":"en","Mathematik":"mathématiques","Deutsch":"allemand","fast":"presque","identische":"identiques","Noten":"notes","dennoch":"pourtant","fiel":"tomba (fiel...aus = fut)","die":"la/les","Grundschulempfehlung":"avis d'orientation de l'école primaire","völlig":"totalement","unterschiedlich":"différent","aus":"(fiel...aus = fut)","sollte":"devait","aufs":"vers le","Gymnasium":"lycée général","wechseln":"passer/changer","lediglich":"seulement","auf":"vers/sur","Realschule":"école secondaire courte","Frau":"Madame","Vogt":"Vogt","Klassenlehrerin":"professeure principale","begründete":"justifia","ihre":"sa","Entscheidung":"décision","mit":"avec","dem":"le/au","sogenannten":"prétendu","Arbeitsverhalten":"comportement de travail","doch":"mais","Deniz'":"de Deniz","Mutter":"mère","vermutete":"soupçonnait","etwas":"quelque chose","anderes":"d'autre","Sie":"Elle","arbeitete":"travaillait","als":"comme","Reinigungskraft":"femme de ménage","sprach":"parlait","zu":"à","Hause":"maison","selten":"rarement","während":"tandis que","Mias":"de Mia","Eltern":"parents","beide":"tous deux","Akademiker":"universitaires","waren":"étaient","Tochter":"fille","jeden":"chaque","Abend":"soir","bei":"lors de/auprès de","den":"les","Hausaufgaben":"devoirs","unterstützten":"aidaient","Auf":"Lors de","Elternabend":"réunion de parents","kam":"vint","es":"il/cela","zum":"à la/au","Streit":"dispute","Es":"Il","kann":"peut","nicht":"ne...pas","sein":"être","dass":"que","Herkunft":"origine sociale","über":"sur","Zukunft":"avenir","meines":"de mon","Sohnes":"fils","entscheidet":"décide","rief":"s'exclama","aufgebracht":"indignée","Andere":"D'autres","nickten":"hochèrent la tête","zustimmend":"en approbation","allerdings":"cependant","verteidigte":"défendit","Schulleiterin":"directrice","dreigliedrige":"à trois voies","System":"système","bewährt":"éprouvé","differenziert":"différencié","verwies":"renvoya/invoqua","Untersuchungen":"études","wonach":"selon lesquelles","Deutschland":"Allemagne","familiäre":"familial","Hintergrund":"milieu","Bildungsweg":"parcours scolaire","stärker":"plus fortement","beeinflusse":"influencerait","manchen":"certains","Nachbarländern":"pays voisins","Am":"Au","Ende":"fin","einigte":"(einigte man sich = on se mit d'accord)","man":"on","einen":"un","Kompromiss":"compromis","durfte":"eut le droit de","eine":"une","Probezeit":"période d'essai","am":"au","versuchen":"essayer","begleitet":"accompagnée","von":"de/par","zusätzlicher":"supplémentaire","Sprachförderung":"soutien linguistique","Nach":"Après","einem":"un","halben":"demi","Jahr":"an","zeigte":"montra (zeigte sich = il s'avéra)","er":"il","Unterricht":"cours","mühelos":"sans difficulté","folgen":"suivre","konnte":"pouvait","besser":"mieux","manche":"certains","Mitschüler":"camarades de classe","deren":"dont les","Anfang":"début","an":"dès","empfohlen":"recommandé","bekommen":"obtenu","freute":"se réjouit","außerdem":"en outre","ihren":"son","besten":"meilleur","Freund":"ami","weiterhin":"continuer à","ihrer":"à ses","Seite":"côté","haben":"avoir","fragten":"se demandèrent","insgeheim":"secrètement","wie":"combien","viele":"beaucoup de","andere":"d'autres","Kinder":"enfants","ohne":"sans","diese":"cette","zweite":"seconde","Chance":"chance","einfach":"simplement","übersehen":"négligés","worden":"été (auxiliaire du passif)","nie":"jamais","erfuhren":"surent","wozu":"à quoi","sie":"ils/elles","eigentlich":"en réalité","fähig":"capables","gewesen":"été","wären":"seraient"}$t$::jsonb,
    $t$Le système scolaire allemand à trois voies et le débat sur l'égalité des chances$t$
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was teilen sich Mia und Deniz seit der ersten Klasse?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Das Pausenbrot$t$, true, 1),
    (v_q, $t$Ein Fahrrad$t$, false, 2),
    (v_q, $t$Ein Zimmer$t$, false, 3),
    (v_q, $t$Einen Schreibtisch$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum ist die unterschiedliche Grundschulempfehlung für Mia und Deniz überraschend?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Weil beide fast identische Noten in Mathematik und Deutsch hatten$t$, true, 1),
    (v_q, $t$Weil Deniz viel bessere Noten als Mia hatte$t$, false, 2),
    (v_q, $t$Weil beide auf dieselbe Schule gehen wollten$t$, false, 3),
    (v_q, $t$Weil die Lehrerin die beiden nicht kannte$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was deutet der Verdacht von Deniz' Mutter über die eigentlichen Gründe der Empfehlung an?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Dass soziale Herkunft die schulische Bewertung unbewusst beeinflussen könnte$t$, true, 1),
    (v_q, $t$Dass die Lehrerin Deniz persönlich nicht mag$t$, false, 2),
    (v_q, $t$Dass Deniz' Noten in Wirklichkeit schlechter waren als angegeben$t$, false, 3),
    (v_q, $t$Dass die Schule generell keine Empfehlungen ausspricht$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welchen Beruf übt Deniz' Mutter aus?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Reinigungskraft$t$, true, 1),
    (v_q, $t$Ärztin$t$, false, 2),
    (v_q, $t$Lehrerin$t$, false, 3),
    (v_q, $t$Ingenieurin$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie reagiert die Schulleiterin auf den Vorwurf beim Elternabend?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie verteidigt das dreigliedrige System als bewährt$t$, true, 1),
    (v_q, $t$Sie gibt der Lehrerin sofort die Schuld$t$, false, 2),
    (v_q, $t$Sie schlägt vor, die Schule zu wechseln$t$, false, 3),
    (v_q, $t$Sie ignoriert die Eltern völlig$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Funktion erfüllt der Verweis auf 'Untersuchungen' im Gespräch der Schulleiterin?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er soll die Entscheidung mit vermeintlich objektiven Fakten legitimieren, wird aber vom Text kritisch beleuchtet$t$, true, 1),
    (v_q, $t$Er beweist zweifelsfrei, dass das System gerecht ist$t$, false, 2),
    (v_q, $t$Er zeigt, dass die Schulleiterin die Studienlage nicht kennt$t$, false, 3),
    (v_q, $t$Er dient nur der Beruhigung von Deniz' Mutter, ohne inhaltlichen Bezug$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was darf Deniz am Ende versuchen?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Eine Probezeit am Gymnasium$t$, true, 1),
    (v_q, $t$Ein Auslandsjahr$t$, false, 2),
    (v_q, $t$Eine neue Grundschule$t$, false, 3),
    (v_q, $t$Einen Schulwechsel ins Ausland$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie entwickelt sich Deniz nach einem halben Jahr am Gymnasium?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er folgt dem Unterricht mühelos, sogar besser als manche Mitschüler$t$, true, 1),
    (v_q, $t$Er scheitert schnell und wechselt zurück$t$, false, 2),
    (v_q, $t$Er verliert das Interesse an der Schule$t$, false, 3),
    (v_q, $t$Er wird von den Mitschülern ausgegrenzt$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Schlussfolgerung legt der letzte Satz über 'andere Kinder ohne diese zweite Chance' nahe?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Dass strukturelle Ungleichheit im Bildungssystem wahrscheinlich unentdeckte Talente kostet$t$, true, 1),
    (v_q, $t$Dass alle Kinder ohne Gymnasialempfehlung wenig begabt sind$t$, false, 2),
    (v_q, $t$Dass Probezeiten grundsätzlich unnötig sind$t$, false, 3),
    (v_q, $t$Dass Mia die einzige Schülerin mit echten Fähigkeiten ist$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'Grundschulempfehlung'?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Ein Vorschlag der Schule, welche weiterführende Schulform ein Kind besuchen sollte$t$, true, 1),
    (v_q, $t$Ein Zeugnis am Ende der Grundschule$t$, false, 2),
    (v_q, $t$Eine Einladung zum Elternabend$t$, false, 3),
    (v_q, $t$Ein Buch für die erste Klasse$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$In welchem Zusammenhang steht 'Grundschulempfehlung' im Text?$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie entscheidet, ob Mia und Deniz aufs Gymnasium oder die Realschule wechseln$t$, true, 1),
    (v_q, $t$Sie bestimmt die Sitzordnung in der Klasse$t$, false, 2),
    (v_q, $t$Sie regelt die Ferienzeiten$t$, false, 3),
    (v_q, $t$Sie ist nur für Lehrer relevant$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welches Wort passt inhaltlich am wenigsten zu 'Grundschulempfehlung'?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Ferienplan$t$, true, 1),
    (v_q, $t$Bildungsweg$t$, false, 2),
    (v_q, $t$Schulform$t$, false, 3),
    (v_q, $t$Übergang$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welches Verb steckt in 'beeinflusse' (Konjunktiv I)?$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$beeinflussen$t$, true, 1),
    (v_q, $t$einfließen$t$, false, 2),
    (v_q, $t$beeindrucken$t$, false, 3),
    (v_q, $t$befolgen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum steht 'beeinflusse' im Konjunktiv I ('der Hintergrund ... beeinflusse')?$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Weil es sich um indirekte Rede handelt (Wiedergabe von Untersuchungsergebnissen)$t$, true, 1),
    (v_q, $t$Weil es ein Befehl ist$t$, false, 2),
    (v_q, $t$Weil es die Zukunft ausdrückt$t$, false, 3),
    (v_q, $t$Weil es ein Passivsatz ist$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Aussage zum Konjunktiv I in der indirekten Rede ist korrekt?$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er wird oft in Nachrichten und Berichten verwendet, um fremde Aussagen wiederzugeben, ohne sie zu bewerten$t$, true, 1),
    (v_q, $t$Er drückt immer eine irreale Bedingung aus$t$, false, 2),
    (v_q, $t$Er ersetzt grundsätzlich das Präteritum$t$, false, 3),
    (v_q, $t$Er wird nur in der gesprochenen Umgangssprache genutzt$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Mia und Deniz teilten sich seit der ersten Klasse das ___.$t$, 1, 'facile', 'lueckentext') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Pausenbrot$t$, true, 1),
    (v_q, $t$Auto$t$, false, 2),
    (v_q, $t$Zimmer$t$, false, 3),
    (v_q, $t$Fahrrad$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Die Schulleiterin verteidigte das ___ System als bewährt und differenziert.$t$, 1, 'normal', 'lueckentext') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$dreigliedrige$t$, true, 1),
    (v_q, $t$zweistufige$t$, false, 2),
    (v_q, $t$einheitliche$t$, false, 3),
    (v_q, $t$private$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Deniz durfte eine Probezeit am Gymnasium versuchen, ___ von zusätzlicher Sprachförderung.$t$, 1, 'difficile', 'lueckentext') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$begleitet$t$, true, 1),
    (v_q, $t$verhindert$t$, false, 2),
    (v_q, $t$abgelehnt$t$, false, 3),
    (v_q, $t$ausgeschlossen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welcher Satz enthält einen Relativsatz?$t$, 1, 'facile', 'grammar') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Mia freute sich, ihren besten Freund an ihrer Seite zu haben, der sie nun begleiten würde.$t$, true, 1),
    (v_q, $t$Mia freute sich sehr.$t$, false, 2),
    (v_q, $t$Deniz ging zur Schule.$t$, false, 3),
    (v_q, $t$Die Lehrerin lächelte freundlich.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Funktion hat der Nebensatz 'dass die Herkunft über die Zukunft entscheidet'?$t$, 1, 'normal', 'grammar') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er ist ein Objektsatz (dass-Satz) nach 'nicht sein, dass...'$t$, true, 1),
    (v_q, $t$Er ist ein Relativsatz$t$, false, 2),
    (v_q, $t$Er ist ein Konditionalsatz$t$, false, 3),
    (v_q, $t$Er ist ein Hauptsatz$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Aussage zur Konstruktion 'wonach ... der Hintergrund ... beeinflusse' ist grammatisch korrekt?$t$, 1, 'difficile', 'grammar') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$'wonach' leitet einen Relativsatz ein, der sich auf 'Untersuchungen' bezieht, mit Konjunktiv I für indirekte Rede$t$, true, 1),
    (v_q, $t$'wonach' ist eine Präposition ohne grammatische Funktion hier$t$, false, 2),
    (v_q, $t$Der Satz steht im Passiv$t$, false, 3),
    (v_q, $t$Der Satz ist ein Fragesatz$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, justification)
    VALUES (v_story, $t$Mia und Deniz hatten sehr unterschiedliche Noten.$t$, 1, 'facile', 'true_false', $t$Der Text sagt, beide hatten 'fast identische Noten'.$t$) RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Wahr$t$, false, 1),
    (v_q, $t$Falsch$t$, true, 2);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, justification)
    VALUES (v_story, $t$Die Schulleiterin gibt sofort zu, dass das System ungerecht ist.$t$, 1, 'normal', 'true_false', $t$Sie 'verteidigte die Schulleiterin das dreigliedrige System als bewährt und differenziert'.$t$) RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Wahr$t$, false, 1),
    (v_q, $t$Falsch$t$, true, 2);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, justification)
    VALUES (v_story, $t$Der Text legt nahe, dass Deniz' Erfolg am Gymnasium zeigt, dass die ursprüngliche Empfehlung möglicherweise nicht allein auf schulischer Leistung beruhte.$t$, 1, 'difficile', 'true_false', $t$Deniz folgt dem Unterricht 'mühelos', obwohl er zunächst nicht empfohlen wurde, was die ursprüngliche Entscheidung in Frage stellt.$t$) RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Wahr$t$, true, 1),
    (v_q, $t$Falsch$t$, false, 2);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer, rubric)
    VALUES (v_story, $t$Schreiben Sie 5-7 Sätze darüber, ob Sie das dreigliedrige Schulsystem für gerecht halten und welche Alternativen Sie sich vorstellen könnten.$t$, 1, 'normal', 'production', $t$Meiner Meinung nach birgt das dreigliedrige Schulsystem die Gefahr, soziale Ungleichheiten frühzeitig zu verfestigen, da die Empfehlung schon nach der vierten Klasse erfolgt. In diesem Alter hängt die schulische Leistung noch stark von der familiären Unterstützung ab, wie das Beispiel von Deniz zeigt. Dennoch hat das System auch Vorteile, weil es Kindern eine an ihre Fähigkeiten angepasste Förderung ermöglichen soll. Allerdings könnten längere gemeinsame Lernphasen, wie sie in manchen Bundesländern und Nachbarländern bereits existieren, Kindern mehr Zeit geben, ihr Potenzial zu zeigen. Außerdem sollte der Wechsel zwischen den Schulformen erleichtert werden, damit Fehlentscheidungen leichter korrigiert werden können. Letztlich glaube ich, dass zusätzliche Sprach- und Lernförderung, wie sie Deniz erhielt, entscheidender für echte Chancengleichheit ist als die frühe Aufteilung selbst.$t$, $t$[{"criterion":"Aufgabenerfüllung","description":"Die eigene Meinung zum Schulsystem wird klar begründet und mit mindestens einer Alternative verbunden."},{"criterion":"Wortschatz","description":"Verwendung von B2-Vokabular zum Bildungswesen (Chancengleichheit, Bildungsweg, Empfehlung, Förderung)."},{"criterion":"Grammatik","description":"Korrekte Verwendung von Nebensätzen, Konjunktiv I/II und Konnektoren wie 'dennoch', 'allerdings'."},{"criterion":"Kohärenz","description":"Logischer Aufbau mit klaren Übergängen zwischen Argumenten."}]$t$::jsonb);

END $block$;

-- 2. Das Bafög-Formular
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary, culture_note) VALUES (
    'B2',
    $t$Das Bafög-Formular$t$,
    $t$Lisa saß am Küchentisch ihrer kleinen Wohnung und starrte auf den Bafög-Antrag, der bereits seit Tagen unausgefüllt vor ihr lag. Ihre Eltern, beide ohne akademischen Abschluss, konnten ihr das Studium finanziell kaum ermöglichen, weshalb die staatliche Förderung über ihre Zukunft entscheiden würde. Ohne Bafög müsste sie neben dem anstrengenden Studium der Sozialpädagogik mehr als zwanzig Stunden pro Woche arbeiten, was ihre Noten vermutlich gefährden würde.

Der Antrag verlangte unzählige Nachweise: Einkommensbescheinigungen der Eltern, Mietverträge und sogar Kontoauszüge, was Lisa als entwürdigend empfand. "Warum muss ich mein ganzes Leben offenlegen, nur um studieren zu dürfen?", beschwerte sie sich bei ihrer Mitbewohnerin Sarah, deren Eltern das Studium ohne Probleme finanzierten. Sarah verstand die Frustration zwar, konnte die Situation jedoch nicht wirklich nachempfinden.

Nach Wochen bürokratischer Hürden kam endlich die Bewilligung: monatlich 812 Euro, teilweise als Zuschuss, teilweise als zinsloses Darlehen. Lisa weinte vor Erleichterung, denn nun konnte sie ihre Arbeitsstunden deutlich reduzieren und sich stärker auf ihr Studium konzentrieren, anstatt nach jeder Vorlesung sofort zur Spätschicht in den Supermarkt zu hetzen. Allerdings ärgerte sie sich weiterhin über das komplizierte Antragsverfahren, das viele Gleichaltrige aus Scham oder schlichter Unwissenheit gar nicht erst durchliefen, obwohl ihnen die Förderung eigentlich zustünde. Für Lisa stand deshalb fest, dass echte Chancengleichheit an der Hochschule nur gelingen kann, wenn finanzielle Unterstützung einfacher zugänglich gemacht wird, anstatt Bedürftige durch endlose Formulare zusätzlich zu entmutigen und von einem Studium fernzuhalten.$t$,
    $t$Lisa était assise à la table de sa petite cuisine, les yeux rivés sur le dossier de demande de bourse (Bafög), qui traînait non rempli devant elle depuis des jours. Ses parents, tous deux sans diplôme universitaire, ne pouvaient guère financer ses études, si bien que l'aide de l'État allait décider de son avenir. Sans cette bourse, elle devrait travailler plus de vingt heures par semaine en plus de ses exigeantes études de pédagogie sociale, ce qui risquait de nuire à ses résultats.

Le dossier exigeait d'innombrables justificatifs : attestations de revenus des parents, baux de location et même relevés bancaires, ce que Lisa trouvait humiliant. « Pourquoi dois-je exposer toute ma vie juste pour avoir le droit d'étudier ? », se plaignit-elle à sa colocataire Sarah, dont les parents finançaient les études sans problème. Sarah comprenait sa frustration, mais ne pouvait pas vraiment s'y identifier.

Après des semaines d'obstacles administratifs, l'accord arriva enfin : 812 euros par mois, en partie comme subvention, en partie comme prêt sans intérêt. Lisa pleura de soulagement, car elle pouvait désormais réduire nettement ses heures de travail et se consacrer davantage à ses études, au lieu de courir au supermarché dès la fin de chaque cours. Elle restait cependant agacée par la complexité de la procédure, que beaucoup de jeunes de son âge n'entreprenaient même pas, par honte ou simple méconnaissance, alors qu'ils y avaient droit. Pour Lisa, il était désormais clair qu'une véritable égalité des chances à l'université exigeait un accès plus simple au soutien financier, au lieu de décourager davantage les personnes dans le besoin par des formulaires sans fin.$t$,
    $t${"812":"812","Lisa":"Lisa","saß":"était assise","am":"à la","Küchentisch":"table de cuisine","ihrer":"de sa","kleinen":"petite","Wohnung":"appartement","und":"et","starrte":"fixait du regard","auf":"sur","den":"le","Bafög-Antrag":"dossier de demande de bourse","der":"qui","bereits":"déjà","seit":"depuis","Tagen":"des jours","unausgefüllt":"non rempli","vor":"devant","ihr":"elle","lag":"traînait","Ihre":"Ses","Eltern":"parents","beide":"tous deux","ohne":"sans","akademischen":"universitaire","Abschluss":"diplôme","konnten":"pouvaient","das":"le","Studium":"études","finanziell":"financièrement","kaum":"à peine","ermöglichen":"rendre possible","weshalb":"si bien que","die":"le/la","staatliche":"de l'État","Förderung":"aide","über":"sur","ihre":"son","Zukunft":"avenir","entscheiden":"décider","würde":"allait","Ohne":"Sans","Bafög":"bourse d'études","müsste":"devrait","sie":"elle","neben":"en plus de","dem":"le","anstrengenden":"exigeantes","Sozialpädagogik":"pédagogie sociale","mehr":"plus","als":"que","zwanzig":"vingt","Stunden":"heures","pro":"par","Woche":"semaine","arbeiten":"travailler","was":"ce qui","Noten":"notes","vermutlich":"probablement","gefährden":"mettre en péril","Der":"Le","Antrag":"dossier de demande","verlangte":"exigeait","unzählige":"innombrables","Nachweise":"justificatifs","Einkommensbescheinigungen":"attestations de revenus","Mietverträge":"baux de location","sogar":"même","Kontoauszüge":"relevés bancaires","entwürdigend":"humiliant","empfand":"trouvait","Warum":"Pourquoi","muss":"dois","ich":"je","mein":"toute ma","ganzes":"entière","Leben":"vie","offenlegen":"exposer","nur":"seulement","um":"pour","studieren":"étudier","zu":"de","dürfen":"avoir le droit","beschwerte":"se plaignit","sich":"se","bei":"auprès de","Mitbewohnerin":"colocataire","Sarah":"Sarah","deren":"dont les","Probleme":"problèmes","finanzierten":"finançaient","verstand":"comprenait","Frustration":"frustration","zwar":"certes","konnte":"pouvait","Situation":"situation","jedoch":"cependant","nicht":"ne...pas","wirklich":"vraiment","nachempfinden":"s'identifier à","Nach":"Après","Wochen":"des semaines","bürokratischer":"administratifs","Hürden":"obstacles","kam":"vint","endlich":"enfin","Bewilligung":"accord d'octroi","monatlich":"mensuellement","Euro":"euros","teilweise":"en partie","Zuschuss":"subvention","zinsloses":"sans intérêt","Darlehen":"prêt","weinte":"pleura","Erleichterung":"soulagement","denn":"car","nun":"désormais","Arbeitsstunden":"heures de travail","deutlich":"nettement","reduzieren":"réduire","stärker":"davantage","konzentrieren":"se concentrer","anstatt":"au lieu de","nach":"après","jeder":"chaque","Vorlesung":"cours magistral","sofort":"immédiatement","zur":"à la","Spätschicht":"service tardif","in":"dans","Supermarkt":"supermarché","hetzen":"courir précipitamment","Allerdings":"Cependant","ärgerte":"agaçait","weiterhin":"continuait à","komplizierte":"compliquée","Antragsverfahren":"procédure de demande","viele":"beaucoup de","Gleichaltrige":"jeunes du même âge","aus":"par","Scham":"honte","oder":"ou","schlichter":"simple","Unwissenheit":"méconnaissance","gar":"même pas","erst":"d'abord","durchliefen":"suivaient la procédure","obwohl":"bien que","ihnen":"leur","eigentlich":"en réalité","zustünde":"aurait droit","Für":"Pour","stand":"était (stand fest = était clair)","deshalb":"c'est pourquoi","fest":"clair/certain","dass":"que","echte":"véritable","Chancengleichheit":"égalité des chances","an":"à","Hochschule":"université","gelingen":"réussir","kann":"peut","wenn":"si","finanzielle":"financier","Unterstützung":"soutien","einfacher":"plus simplement","zugänglich":"accessible","gemacht":"rendu","wird":"est","Bedürftige":"personnes dans le besoin","durch":"par","endlose":"sans fin","Formulare":"formulaires","zusätzlich":"en plus","entmutigen":"décourager","von":"de/loin de","einem":"un","fernzuhalten":"tenir à l'écart"}$t$::jsonb,
    $t$Le Bafög, l'aide financière publique aux étudiants allemands$t$
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Worauf starrt Lisa am Küchentisch?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Auf den Bafög-Antrag$t$, true, 1),
    (v_q, $t$Auf eine Rechnung$t$, false, 2),
    (v_q, $t$Auf ein Universitätsbuch$t$, false, 3),
    (v_q, $t$Auf einen Mietvertrag$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum ist die staatliche Förderung für Lisa so entscheidend?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Weil ihre Eltern das Studium finanziell kaum ermöglichen können$t$, true, 1),
    (v_q, $t$Weil sie kein Interesse am Studium hat$t$, false, 2),
    (v_q, $t$Weil ihre Eltern das Studium ablehnen$t$, false, 3),
    (v_q, $t$Weil sie bereits genug Geld verdient$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was verdeutlicht der Vergleich zwischen Lisas Situation und der ihrer Mitbewohnerin Sarah?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Wie stark der familiäre finanzielle Hintergrund die Studienbedingungen unterschiedlich prägt$t$, true, 1),
    (v_q, $t$Dass Sarah eine schlechtere Studentin ist als Lisa$t$, false, 2),
    (v_q, $t$Dass beide finanziell in derselben Lage sind$t$, false, 3),
    (v_q, $t$Dass Sarah ebenfalls Bafög beantragt hat$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was muss Lisa dem Antrag beilegen?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Einkommensbescheinigungen, Mietverträge und Kontoauszüge$t$, true, 1),
    (v_q, $t$Nur ihren Personalausweis$t$, false, 2),
    (v_q, $t$Ein Empfehlungsschreiben eines Professors$t$, false, 3),
    (v_q, $t$Ihr Abiturzeugnis allein$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie empfindet Lisa das Ausfüllen des Antrags?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Als entwürdigend$t$, true, 1),
    (v_q, $t$Als sehr angenehm$t$, false, 2),
    (v_q, $t$Als völlig unproblematisch$t$, false, 3),
    (v_q, $t$Als spannend$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was kritisiert Lisa implizit, wenn sie fragt, warum sie ihr 'ganzes Leben offenlegen' müsse?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Die als übermäßig empfundene bürokratische Kontrolle bedürftiger Studierender$t$, true, 1),
    (v_q, $t$Die Qualität der Lehre an ihrer Universität$t$, false, 2),
    (v_q, $t$Die Wohnsituation in ihrer WG$t$, false, 3),
    (v_q, $t$Die Studieninhalte der Sozialpädagogik$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie hoch ist die monatliche Bewilligung, die Lisa erhält?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$812 Euro$t$, true, 1),
    (v_q, $t$500 Euro$t$, false, 2),
    (v_q, $t$1200 Euro$t$, false, 3),
    (v_q, $t$300 Euro$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was ändert sich für Lisa nach der Bewilligung?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie kann ihre Arbeitsstunden deutlich reduzieren$t$, true, 1),
    (v_q, $t$Sie muss noch mehr arbeiten$t$, false, 2),
    (v_q, $t$Sie bricht das Studium ab$t$, false, 3),
    (v_q, $t$Sie zieht zu ihren Eltern zurück$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche gesellschaftliche Schlussfolgerung zieht Lisa am Ende der Geschichte?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Dass echte Chancengleichheit einfacher zugängliche finanzielle Unterstützung erfordert$t$, true, 1),
    (v_q, $t$Dass Bafög generell abgeschafft werden sollte$t$, false, 2),
    (v_q, $t$Dass nur reiche Familien studieren sollten$t$, false, 3),
    (v_q, $t$Dass Bürokratie im Bildungswesen keine Rolle spielt$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'Zuschuss' im Text?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Ein Geldbetrag, der nicht zurückgezahlt werden muss$t$, true, 1),
    (v_q, $t$Ein Kredit mit hohen Zinsen$t$, false, 2),
    (v_q, $t$Eine Geldstrafe$t$, false, 3),
    (v_q, $t$Ein Studienfach$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie wird die Bafög-Zahlung im Text beschrieben?$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Teilweise als Zuschuss, teilweise als zinsloses Darlehen$t$, true, 1),
    (v_q, $t$Vollständig als Geschenk ohne Bedingungen$t$, false, 2),
    (v_q, $t$Nur als Kredit mit Zinsen$t$, false, 3),
    (v_q, $t$Als einmalige Zahlung ohne Wiederholung$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welches Wort ist in diesem Kontext KEIN sinnvolles Synonym für 'Zuschuss'?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Rückzahlungspflicht$t$, true, 1),
    (v_q, $t$Beihilfe$t$, false, 2),
    (v_q, $t$Förderung$t$, false, 3),
    (v_q, $t$Unterstützung$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Form ist 'müsste' (sie müsste arbeiten)?$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Konjunktiv II von 'müssen'$t$, true, 1),
    (v_q, $t$Präsens von 'müssen'$t$, false, 2),
    (v_q, $t$Perfekt von 'müssen'$t$, false, 3),
    (v_q, $t$Imperativ von 'müssen'$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum wird hier der Konjunktiv II ('müsste') verwendet?$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Um eine hypothetische Situation ohne Bafög darzustellen$t$, true, 1),
    (v_q, $t$Um eine reale, bereits eingetretene Tatsache zu berichten$t$, false, 2),
    (v_q, $t$Um einen Befehl auszudrücken$t$, false, 3),
    (v_q, $t$Um die Zukunft sicher vorherzusagen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Aussage zum Konjunktiv II von 'müssen' ist grammatisch korrekt?$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er wird unregelmäßig gebildet: müsste (mit Umlaut, nicht 'müsste' aus dem Präteritumstamm 'musste')$t$, true, 1),
    (v_q, $t$Er wird immer mit 'würde' + Infinitiv gebildet$t$, false, 2),
    (v_q, $t$Er existiert nur in der Vergangenheit$t$, false, 3),
    (v_q, $t$Er ist identisch mit dem Präteritum$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Lisa starrte auf den ___, der seit Tagen unausgefüllt vor ihr lag.$t$, 1, 'facile', 'lueckentext') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Bafög-Antrag$t$, true, 1),
    (v_q, $t$Stundenplan$t$, false, 2),
    (v_q, $t$Mietvertrag$t$, false, 3),
    (v_q, $t$Kalender$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Der Antrag verlangte unzählige ___, was Lisa als entwürdigend empfand.$t$, 1, 'normal', 'lueckentext') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Nachweise$t$, true, 1),
    (v_q, $t$Geschenke$t$, false, 2),
    (v_q, $t$Komplimente$t$, false, 3),
    (v_q, $t$Ferien$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Für Lisa stand fest, dass echte Chancengleichheit nur gelingen kann, wenn finanzielle Unterstützung einfacher ___ gemacht wird.$t$, 1, 'difficile', 'lueckentext') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$zugänglich$t$, true, 1),
    (v_q, $t$unsichtbar$t$, false, 2),
    (v_q, $t$teurer$t$, false, 3),
    (v_q, $t$kompliziert$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welcher Satz enthält ein Genitivattribut?$t$, 1, 'facile', 'grammar') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie starrte auf den Bafög-Antrag ihrer kleinen Wohnung.$t$, true, 1),
    (v_q, $t$Sie starrte auf den Bafög-Antrag.$t$, false, 2),
    (v_q, $t$Sie war müde.$t$, false, 3),
    (v_q, $t$Sie ging nach Hause.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche grammatische Struktur zeigt 'ohne akademischen Abschluss'?$t$, 1, 'normal', 'grammar') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Eine Präpositionalphrase mit 'ohne' + Akkusativ$t$, true, 1),
    (v_q, $t$Einen Relativsatz$t$, false, 2),
    (v_q, $t$Einen Konditionalsatz mit 'wenn'$t$, false, 3),
    (v_q, $t$Ein Passivkonstruktion$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Aussage zum Satz 'anstatt Bedürftige durch endlose Formulare zusätzlich zu entmutigen' ist korrekt?$t$, 1, 'difficile', 'grammar') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Es handelt sich um eine Infinitivkonstruktion mit 'anstatt ... zu', die eine Alternative negativ bewertet$t$, true, 1),
    (v_q, $t$Es ist ein Hauptsatz im Indikativ$t$, false, 2),
    (v_q, $t$Es handelt sich um direkte Rede$t$, false, 3),
    (v_q, $t$Es ist ein Fragesatz$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, justification)
    VALUES (v_story, $t$Lisas Eltern haben einen akademischen Abschluss.$t$, 1, 'facile', 'true_false', $t$Der Text sagt, ihre Eltern seien 'beide ohne akademischen Abschluss'.$t$) RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Wahr$t$, false, 1),
    (v_q, $t$Falsch$t$, true, 2);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, justification)
    VALUES (v_story, $t$Sarah kann Lisas Frustration über den Antrag völlig nachempfinden.$t$, 1, 'normal', 'true_false', $t$Sarah 'verstand die Frustration zwar, konnte die Situation jedoch nicht wirklich nachempfinden'.$t$) RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Wahr$t$, false, 1),
    (v_q, $t$Falsch$t$, true, 2);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, justification)
    VALUES (v_story, $t$Der Text deutet an, dass komplizierte Antragsverfahren manche Berechtigte davon abhalten könnten, Bafög überhaupt zu beantragen.$t$, 1, 'difficile', 'true_false', $t$Es heißt, viele Gleichaltrige 'durchliefen' das Verfahren 'aus Scham oder schlichter Unwissenheit' gar nicht erst, 'obwohl ihnen die Förderung eigentlich zustünde'.$t$) RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Wahr$t$, true, 1),
    (v_q, $t$Falsch$t$, false, 2);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer, rubric)
    VALUES (v_story, $t$Schreiben Sie 5-7 Sätze darüber, welche Rolle finanzielle Unterstützung wie Bafög für die Chancengleichheit im Hochschulbereich spielt.$t$, 1, 'normal', 'production', $t$Finanzielle Unterstützung wie das Bafög spielt eine zentrale Rolle dabei, ob junge Menschen aus einkommensschwachen Familien überhaupt studieren können. Ohne eine solche Förderung müssten viele Studierende neben dem Studium so viel arbeiten, dass ihre akademischen Leistungen darunter leiden würden. Wie das Beispiel von Lisa zeigt, ermöglicht Bafög es, sich stärker auf das Studium zu konzentrieren, anstatt ständig zwischen Job und Vorlesung zu pendeln. Allerdings schreckt das komplizierte Antragsverfahren manche Berechtigte ab, wodurch die eigentliche Wirkung der Förderung eingeschränkt wird. Deshalb wäre es sinnvoll, die Formulare zu vereinfachen und die Antragstellung digitaler und verständlicher zu gestalten. Nur so kann echte Chancengleichheit entstehen, statt Bedürftige durch Bürokratie zusätzlich zu benachteiligen.$t$, $t$[{"criterion":"Aufgabenerfüllung","description":"Die Bedeutung von Bafög für Chancengleichheit wird klar erläutert und begründet."},{"criterion":"Wortschatz","description":"Verwendung von Begriffen wie Förderung, Antrag, Bedürftige, Chancengleichheit."},{"criterion":"Grammatik","description":"Korrekte Verwendung von Konjunktiv II und Konnektoren wie 'allerdings', 'deshalb'."},{"criterion":"Kohärenz","description":"Klarer Aufbau von Ursache und Wirkung im Argumentationsgang."}]$t$::jsonb);

END $block$;

-- 3. Druck bis zum Zusammenbruch
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary, culture_note) VALUES (
    'B2',
    $t$Druck bis zum Zusammenbruch$t$,
    $t$Tim galt als Musterschüler: durchgehend Einsen, Klassensprecher, Kapitän der Schulmannschaft. Niemand ahnte, dass er nachts kaum noch schlief, weil ihn die Angst vor der nächsten Klausur regelrecht lähmte. Seine Eltern erwarteten stillschweigend, dass er das Abitur mit einem Schnitt unter 1,5 abschließen würde, schließlich hatten schon seine älteren Geschwister glänzende Ergebnisse erzielt.

Eines Morgens brach Tim während einer Mathearbeit plötzlich in Tränen aus, ohne dass er selbst wusste, warum. Herr Brandt, sein Klassenlehrer, brachte ihn behutsam zur Schulsozialarbeiterin, die zum ersten Mal offen mit ihm über Leistungsdruck sprach. Tim gestand, dass er seit Monaten Kopfschmerzen, Magenprobleme und Schlaflosigkeit hatte, diese Symptome jedoch stets verschwiegen hatte, aus Angst, als schwach zu gelten.

Die Schulsozialarbeiterin erklärte ihm, dass immer mehr Jugendliche unter ähnlichem Druck litten, weshalb viele Schulen inzwischen eigene Beratungsangebote einrichteten. Gemeinsam mit seinen Eltern entwickelte Tim einen realistischeren Plan: weniger Nachhilfestunden, dafür mehr Sport und feste Ruhezeiten ohne Smartphone. Anfangs fiel es ihm schwer, geringere Erwartungen an sich selbst zu akzeptieren, allerdings bemerkte er nach einigen Wochen, dass seine Konzentration sogar zunahm, sobald der ständige Druck etwas nachließ. Am Ende bestand Tim das Abitur mit einer soliden 1,9, worüber er sich deutlich mehr freute als über jede frühere Bestnote, weil er dabei zum ersten Mal auch auf sich selbst geachtet hatte, anstatt nur fremde Erwartungen zu erfüllen.$t$,
    $t$Tim passait pour un élève modèle : que des excellentes notes, délégué de classe, capitaine de l'équipe sportive du lycée. Personne ne se doutait qu'il ne dormait presque plus la nuit, tant la peur du prochain contrôle le paralysait littéralement. Ses parents attendaient tacitement qu'il obtienne son baccalauréat avec une moyenne inférieure à 1,5, d'autant que ses frères et sœurs aînés avaient déjà obtenu des résultats brillants.

Un matin, Tim fondit soudain en larmes pendant un contrôle de mathématiques, sans savoir lui-même pourquoi. Monsieur Brandt, son professeur principal, l'accompagna avec délicatesse jusqu'à l'assistante sociale scolaire, qui, pour la première fois, lui parla ouvertement de la pression de la performance. Tim avoua qu'il souffrait depuis des mois de maux de tête, de problèmes d'estomac et d'insomnies, mais qu'il avait toujours caché ces symptômes, de peur de passer pour faible.

L'assistante sociale lui expliqua que de plus en plus de jeunes souffraient d'une pression similaire, raison pour laquelle de nombreux établissements mettaient désormais en place leurs propres services d'accompagnement. Avec ses parents, Tim élabora un plan plus réaliste : moins d'heures de soutien scolaire, davantage de sport et des temps de repos fixes sans smartphone. Au début, il lui fut difficile d'accepter des attentes moins élevées envers lui-même, mais après quelques semaines, il remarqua que sa concentration augmentait même, dès que la pression constante diminuait un peu. Finalement, Tim obtint son baccalauréat avec une solide moyenne de 1,9, dont il se réjouit bien plus que de toute note excellente précédente, car pour la première fois, il avait aussi pris soin de lui-même, au lieu de ne satisfaire que des attentes extérieures.$t$,
    $t${"Tim":"Tim","galt":"passait pour","als":"comme","Musterschüler":"élève modèle","durchgehend":"systématiquement","Einsen":"excellentes notes","Klassensprecher":"délégué de classe","Kapitän":"capitaine","der":"de l'","Schulmannschaft":"équipe sportive du lycée","Niemand":"Personne","ahnte":"se doutait","dass":"que","er":"il","nachts":"la nuit","kaum":"presque plus","noch":"encore","schlief":"dormait","weil":"parce que","ihn":"le","die":"la","Angst":"peur","vor":"de","nächsten":"prochain","Klausur":"contrôle","regelrecht":"littéralement","lähmte":"paralysait","Seine":"Ses","Eltern":"parents","erwarteten":"attendaient","stillschweigend":"tacitement","das":"le","Abitur":"baccalauréat","mit":"avec","einem":"une","Schnitt":"moyenne","unter":"inférieure à","1,5":"1,5","abschließen":"terminer","würde":"allait","schließlich":"d'autant que","hatten":"avaient","schon":"déjà","seine":"ses","älteren":"aînés","Geschwister":"frères et sœurs","glänzende":"brillants","Ergebnisse":"résultats","erzielt":"obtenus","Eines":"Un","Morgens":"matin","brach":"fondit","während":"pendant","einer":"un","Mathearbeit":"contrôle de mathématiques","plötzlich":"soudain","in":"en","Tränen":"larmes","aus":"(brach...aus = fondit)","ohne":"sans","selbst":"lui-même","wusste":"savoir","warum":"pourquoi","Herr":"Monsieur","Brandt":"Brandt","sein":"son","Klassenlehrer":"professeur principal","brachte":"accompagna","behutsam":"avec délicatesse","zur":"jusqu'à","Schulsozialarbeiterin":"assistante sociale scolaire","zum":"pour la","ersten":"première","Mal":"fois","offen":"ouvertement","ihm":"lui","über":"de","Leistungsdruck":"pression de la performance","sprach":"parla","gestand":"avoua","seit":"depuis","Monaten":"des mois","Kopfschmerzen":"maux de tête","Magenprobleme":"problèmes d'estomac","und":"et","Schlaflosigkeit":"insomnies","hatte":"avait","diese":"ces","Symptome":"symptômes","jedoch":"cependant","stets":"toujours","verschwiegen":"cachés","schwach":"faible","zu":"de","gelten":"passer pour","Die":"L'","erklärte":"expliqua","immer":"toujours","mehr":"plus","Jugendliche":"jeunes","ähnlichem":"similaire","Druck":"pression","litten":"souffraient","weshalb":"raison pour laquelle","viele":"beaucoup de","Schulen":"écoles","inzwischen":"désormais","eigene":"propres","Beratungsangebote":"services d'accompagnement","einrichteten":"mettaient en place","Gemeinsam":"Ensemble","seinen":"ses","entwickelte":"élabora","einen":"un","realistischeren":"plus réaliste","Plan":"plan","weniger":"moins","Nachhilfestunden":"heures de soutien scolaire","dafür":"en revanche","Sport":"sport","feste":"fixes","Ruhezeiten":"temps de repos","Smartphone":"smartphone","Anfangs":"Au début","fiel":"fut","es":"cela","schwer":"difficile","geringere":"moins élevées","Erwartungen":"attentes","an":"envers","sich":"soi-même","akzeptieren":"accepter","allerdings":"cependant","bemerkte":"remarqua","nach":"après","einigen":"quelques","Wochen":"semaines","Konzentration":"concentration","sogar":"même","zunahm":"augmentait","sobald":"dès que","ständige":"constante","etwas":"un peu","nachließ":"diminuait","Am":"À la","Ende":"fin","bestand":"réussit","soliden":"solide","1,9":"1,9","worüber":"dont","deutlich":"nettement","freute":"se réjouit","jede":"toute","frühere":"précédente","Bestnote":"note excellente","dabei":"ce faisant","auch":"aussi","auf":"sur","geachtet":"pris soin de","anstatt":"au lieu de","nur":"seulement","fremde":"extérieures","erfüllen":"satisfaire"}$t$::jsonb,
    $t$Leistungsdruck und psychische Gesundheit von Jugendlichen im deutschen Schulsystem$t$
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wofür gilt Tim in der Schule?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Als Musterschüler$t$, true, 1),
    (v_q, $t$Als schlechter Schüler$t$, false, 2),
    (v_q, $t$Als Außenseiter$t$, false, 3),
    (v_q, $t$Als fauler Schüler$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was erwarten Tims Eltern stillschweigend von ihm?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Einen Abiturschnitt unter 1,5$t$, true, 1),
    (v_q, $t$Dass er die Schule abbricht$t$, false, 2),
    (v_q, $t$Dass er Sport aufgibt$t$, false, 3),
    (v_q, $t$Dass er sofort arbeiten geht$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was verdeutlicht die Erwähnung der 'älteren Geschwister' mit 'glänzenden Ergebnissen'?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie zeigt, wie familiäre Vergleiche zusätzlichen, unausgesprochenen Druck erzeugen können$t$, true, 1),
    (v_q, $t$Sie zeigt, dass Tims Geschwister ihm aktiv helfen$t$, false, 2),
    (v_q, $t$Sie beweist, dass Tims Eltern ihn vernachlässigen$t$, false, 3),
    (v_q, $t$Sie erklärt, warum Tim keine Freunde hat$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was passiert Tim während der Mathearbeit?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er bricht plötzlich in Tränen aus$t$, true, 1),
    (v_q, $t$Er schläft ein$t$, false, 2),
    (v_q, $t$Er verlässt den Raum wütend$t$, false, 3),
    (v_q, $t$Er lacht laut$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Symptome hatte Tim, bevor er darüber sprach?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Kopfschmerzen, Magenprobleme und Schlaflosigkeit$t$, true, 1),
    (v_q, $t$Nur leichte Müdigkeit$t$, false, 2),
    (v_q, $t$Fieber und Husten$t$, false, 3),
    (v_q, $t$Sehstörungen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was zeigt die Tatsache, dass Tim seine Symptome 'aus Angst, als schwach zu gelten' verschwieg?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Wie stark gesellschaftliche Erwartungen an Leistungsfähigkeit offenen Umgang mit psychischer Belastung erschweren können$t$, true, 1),
    (v_q, $t$Dass Tim seine Krankheit übertreibt$t$, false, 2),
    (v_q, $t$Dass Tim niemandem vertraut, weil er introvertiert ist$t$, false, 3),
    (v_q, $t$Dass die Schule keine Unterstützungsangebote hat$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was macht Tim gemeinsam mit seinen Eltern?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er entwickelt einen realistischeren Plan$t$, true, 1),
    (v_q, $t$Er zieht in eine andere Stadt$t$, false, 2),
    (v_q, $t$Er wechselt die Schule$t$, false, 3),
    (v_q, $t$Er beendet die Schule vorzeitig$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Womit schließt Tim das Abitur ab?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Mit einer soliden 1,9$t$, true, 1),
    (v_q, $t$Mit einer perfekten 1,0$t$, false, 2),
    (v_q, $t$Er besteht nicht$t$, false, 3),
    (v_q, $t$Mit einer 3,5$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum freut sich Tim am Ende mehr über die 1,9 als über frühere Bestnoten?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Weil er zum ersten Mal auch auf sich selbst geachtet hat, statt nur fremde Erwartungen zu erfüllen$t$, true, 1),
    (v_q, $t$Weil die 1,9 objektiv seine beste Note ist$t$, false, 2),
    (v_q, $t$Weil seine Eltern die Note nicht bemerken$t$, false, 3),
    (v_q, $t$Weil er dadurch berühmt wird$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'Leistungsdruck'?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Der psychische Druck, gute Ergebnisse erbringen zu müssen$t$, true, 1),
    (v_q, $t$Ein Sportgerät im Fitnessstudio$t$, false, 2),
    (v_q, $t$Eine Art von Prüfung$t$, false, 3),
    (v_q, $t$Ein Gerät zur Notenberechnung$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie äußert sich der Leistungsdruck bei Tim konkret?$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Durch Schlaflosigkeit, Kopfschmerzen und Magenprobleme$t$, true, 1),
    (v_q, $t$Durch übermäßigen Appetit$t$, false, 2),
    (v_q, $t$Durch plötzliche Sportbegeisterung$t$, false, 3),
    (v_q, $t$Durch Desinteresse an der Schule$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welches Wort passt inhaltlich am wenigsten zu 'Leistungsdruck'?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Gelassenheit$t$, true, 1),
    (v_q, $t$Erwartungsdruck$t$, false, 2),
    (v_q, $t$Überforderung$t$, false, 3),
    (v_q, $t$Stress$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Zeitform ist 'litten' (Jugendliche ... litten)?$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Präteritum von 'leiden'$t$, true, 1),
    (v_q, $t$Präsens von 'leiden'$t$, false, 2),
    (v_q, $t$Perfekt von 'leiden'$t$, false, 3),
    (v_q, $t$Futur von 'leiden'$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Konjunktion leitet den Nebensatz 'weshalb viele Schulen ... einrichteten' ein und welche Funktion hat sie?$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$'weshalb' drückt eine Folge/Konsequenz aus$t$, true, 1),
    (v_q, $t$'weshalb' drückt einen Gegensatz aus$t$, false, 2),
    (v_q, $t$'weshalb' drückt eine Bedingung aus$t$, false, 3),
    (v_q, $t$'weshalb' drückt eine Zeitangabe aus$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Aussage zur Bildung von 'litten' ist grammatisch korrekt?$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$'leiden' ist ein starkes Verb mit Vokalwechsel ei→i im Präteritum (litt/litten)$t$, true, 1),
    (v_q, $t$'leiden' ist ein schwaches Verb mit -te-Endung$t$, false, 2),
    (v_q, $t$Es handelt sich um ein reflexives Verb$t$, false, 3),
    (v_q, $t$Es steht im Konjunktiv II$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Tim galt als ___: durchgehend Einsen, Klassensprecher, Kapitän der Schulmannschaft.$t$, 1, 'facile', 'lueckentext') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Musterschüler$t$, true, 1),
    (v_q, $t$Außenseiter$t$, false, 2),
    (v_q, $t$Streber ohne Freunde$t$, false, 3),
    (v_q, $t$Sitzenbleiber$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Tim brach während der Mathearbeit plötzlich in ___ aus.$t$, 1, 'normal', 'lueckentext') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Tränen$t$, true, 1),
    (v_q, $t$Gelächter$t$, false, 2),
    (v_q, $t$Wut$t$, false, 3),
    (v_q, $t$Panik ohne Grund$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Tim bemerkte, dass seine Konzentration zunahm, sobald der ständige Druck etwas ___.$t$, 1, 'difficile', 'lueckentext') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$nachließ$t$, true, 1),
    (v_q, $t$zunahm$t$, false, 2),
    (v_q, $t$verschwand komplett$t$, false, 3),
    (v_q, $t$sich verdoppelte$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welcher Satz enthält einen Kausalsatz mit 'weil'?$t$, 1, 'facile', 'grammar') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Niemand ahnte, dass er kaum schlief, weil ihn die Angst lähmte.$t$, true, 1),
    (v_q, $t$Tim war Klassensprecher.$t$, false, 2),
    (v_q, $t$Er hatte gute Noten.$t$, false, 3),
    (v_q, $t$Die Eltern waren stolz.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Funktion hat der Nebensatz 'sobald der ständige Druck etwas nachließ'?$t$, 1, 'normal', 'grammar') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er ist ein Temporalsatz, der den Zeitpunkt der Verbesserung angibt$t$, true, 1),
    (v_q, $t$Er ist ein Finalsatz mit 'damit'$t$, false, 2),
    (v_q, $t$Er ist ein Konzessivsatz mit 'obwohl'$t$, false, 3),
    (v_q, $t$Er ist ein Relativsatz$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Aussage zur Struktur 'anstatt nur fremde Erwartungen zu erfüllen' ist korrekt?$t$, 1, 'difficile', 'grammar') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Es ist eine Infinitivkonstruktion mit 'anstatt ... zu', die eine unterlassene Alternative ausdrückt$t$, true, 1),
    (v_q, $t$Es ist ein Relativsatz mit 'welche'$t$, false, 2),
    (v_q, $t$Es handelt sich um ein Passiv$t$, false, 3),
    (v_q, $t$Es ist ein Konditionalsatz mit 'wenn'$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, justification)
    VALUES (v_story, $t$Tim spricht von Anfang an offen über seine Symptome.$t$, 1, 'facile', 'true_false', $t$Er hatte die Symptome 'stets verschwiegen', 'aus Angst, als schwach zu gelten'.$t$) RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Wahr$t$, false, 1),
    (v_q, $t$Falsch$t$, true, 2);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, justification)
    VALUES (v_story, $t$Die Schulsozialarbeiterin sagt, Tim sei der einzige betroffene Jugendliche.$t$, 1, 'normal', 'true_false', $t$Sie erklärt, 'dass immer mehr Jugendliche unter ähnlichem Druck litten'.$t$) RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Wahr$t$, false, 1),
    (v_q, $t$Falsch$t$, true, 2);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, justification)
    VALUES (v_story, $t$Der Text legt nahe, dass eine Reduzierung des Leistungsdrucks Tims schulische Leistung letztlich nicht verschlechterte.$t$, 1, 'difficile', 'true_false', $t$Trotz weniger Nachhilfe bestand Tim das Abitur mit einer 'soliden 1,9' und seine Konzentration nahm sogar zu.$t$) RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Wahr$t$, true, 1),
    (v_q, $t$Falsch$t$, false, 2);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer, rubric)
    VALUES (v_story, $t$Schreiben Sie 5-7 Sätze darüber, wie Schulen und Eltern dazu beitragen könnten, den Leistungsdruck von Jugendlichen zu verringern.$t$, 1, 'normal', 'production', $t$Um den Leistungsdruck von Jugendlichen zu verringern, sollten Eltern zunächst ihre eigenen Erwartungen offen mit ihren Kindern besprechen, anstatt sie unausgesprochen im Raum stehen zu lassen. Wie das Beispiel von Tim zeigt, kann stillschweigender Druck genauso belastend wirken wie ausdrücklich formulierte Forderungen. Außerdem sollten Schulen frühzeitig über psychische Gesundheit aufklären, damit Symptome wie Schlaflosigkeit oder Kopfschmerzen nicht aus Scham verschwiegen werden. Feste Ansprechpartner wie Schulsozialarbeiter könnten dabei helfen, Warnsignale rechtzeitig zu erkennen. Zudem wäre es sinnvoll, den Fokus stärker auf individuellen Fortschritt statt auf reine Notenvergleiche zu legen. Schließlich zeigt Tims Geschichte, dass realistischere Ziele und ausreichend Erholungszeit die Leistungsfähigkeit sogar steigern können, statt sie zu gefährden.$t$, $t$[{"criterion":"Aufgabenerfüllung","description":"Konkrete Vorschläge zur Reduzierung des Leistungsdrucks werden genannt und begründet."},{"criterion":"Wortschatz","description":"Verwendung von Begriffen wie Erwartungen, psychische Gesundheit, Ansprechpartner, Belastung."},{"criterion":"Grammatik","description":"Korrekte Verwendung von Konjunktiv II ('sollten', 'könnten') und Konnektoren wie 'außerdem', 'zudem'."},{"criterion":"Kohärenz","description":"Argumente bauen logisch aufeinander auf und beziehen sich auf die Geschichte."}]$t$::jsonb);

END $block$;

-- 4. Werkbank oder Hörsaal
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary, culture_note) VALUES (
    'B2',
    $t$Werkbank oder Hörsaal$t$,
    $t$Als Felix seinen Realschulabschluss in der Tasche hatte, erwarteten die meisten aus seiner Familie, dass er anschließend das Fachabitur anstrebte. Felix hingegen interessierte sich seit Jahren für Elektronik und entschied sich stattdessen für eine duale Ausbildung zum Mechatroniker, verbunden mit einem monatlichen Gehalt und praktischer Erfahrung von Anfang an. Seine Großmutter konnte diese Entscheidung kaum nachvollziehen: "Früher war eine Lehre etwas für diejenigen, die es nicht aufs Gymnasium geschafft haben."

Auf dem Familienfest wurde die Debatte hitzig, als sein Cousin Robin, der gerade sein Studium der Betriebswirtschaft begonnen hatte, über theoretische Wirtschaftsmodelle referierte. Felix konterte gelassen, dass er bereits im ersten Ausbildungsjahr echte Maschinen reparierte, während Robin noch monatelang auf seinen ersten Praxiskontakt warten müsse. Außerdem verdiente Felix bereits eigenes Geld, wohingegen Robin weiterhin auf Bafög und die Unterstützung seiner Eltern angewiesen war.

Drei Jahre später hatten beide ihren jeweiligen Abschluss geschafft, allerdings mit sehr unterschiedlichen Erfahrungen: Felix arbeitete bereits als Facharbeiter in einem angesehenen Industriebetrieb, während Robin noch nach einer passenden Anstellung suchte. Die Großmutter gab schließlich zu, dass sie das Ansehen der beruflichen Ausbildung früher deutlich unterschätzt hatte, weil sich das öffentliche Bild seit ihrer eigenen Jugend erheblich gewandelt habe. Für Felix bewies dieser Vergleich vor allem eines: Es gibt nicht den einen richtigen Bildungsweg, sondern verschiedene, durchaus gleichwertige Wege, die je nach Interesse und Talent zu echter beruflicher Zufriedenheit führen können, sofern man sich nicht von veralteten Vorurteilen abschrecken lässt.$t$,
    $t$Lorsque Felix eut son brevet des collèges allemand (Realschulabschluss) en poche, la plupart des membres de sa famille s'attendaient à ce qu'il poursuive ensuite vers le bac professionnel. Felix, lui, s'intéressait depuis des années à l'électronique et opta à la place pour une formation en alternance de mécatronicien, avec un salaire mensuel et une expérience pratique dès le départ. Sa grand-mère avait du mal à comprendre cette décision : « Autrefois, l'apprentissage était réservé à ceux qui n'avaient pas réussi à entrer au lycée général. »

Lors d'une fête de famille, le débat s'envenima lorsque son cousin Robin, qui venait de commencer des études de gestion, se mit à exposer des modèles économiques théoriques. Felix rétorqua calmement que, dès sa première année de formation, il réparait déjà de vraies machines, tandis que Robin devrait encore attendre des mois avant son premier contact avec la pratique. De plus, Felix gagnait déjà son propre argent, alors que Robin dépendait encore de la bourse (Bafög) et du soutien de ses parents.

Trois ans plus tard, tous deux avaient obtenu leur diplôme respectif, mais avec des expériences très différentes : Felix travaillait déjà comme ouvrier qualifié dans une entreprise industrielle réputée, tandis que Robin cherchait encore un emploi adapté. La grand-mère finit par admettre qu'elle avait autrefois nettement sous-estimé la réputation de la formation professionnelle, car l'image publique avait considérablement changé depuis sa propre jeunesse. Pour Felix, cette comparaison prouvait surtout une chose : il n'existe pas un unique bon parcours de formation, mais différentes voies, tout aussi valables, qui peuvent mener à une véritable satisfaction professionnelle selon les intérêts et les talents de chacun, à condition de ne pas se laisser décourager par des préjugés dépassés.$t$,
    $t${"Als":"Lorsque","Felix":"Felix","seinen":"son","Realschulabschluss":"brevet des collèges allemand","in":"dans","der":"la","Tasche":"poche","hatte":"avait","erwarteten":"s'attendaient","die":"la/les","meisten":"la plupart","aus":"de","seiner":"sa","Familie":"famille","dass":"à ce que","er":"il","anschließend":"ensuite","das":"le","Fachabitur":"bac professionnel","anstrebte":"poursuive","hingegen":"quant à lui","interessierte":"intéressait","sich":"se","seit":"depuis","Jahren":"des années","für":"à","Elektronik":"électronique","und":"et","entschied":"opta","stattdessen":"à la place","eine":"une","duale":"en alternance","Ausbildung":"formation","zum":"de","Mechatroniker":"mécatronicien","verbunden":"associée","mit":"à","einem":"un","monatlichen":"mensuel","Gehalt":"salaire","praktischer":"pratique","Erfahrung":"expérience","von":"dès","Anfang":"le début","an":"(von Anfang an = dès le début)","Seine":"Sa","Großmutter":"grand-mère","konnte":"pouvait","diese":"cette","Entscheidung":"décision","kaum":"à peine","nachvollziehen":"comprendre","Früher":"Autrefois","war":"était","Lehre":"apprentissage","etwas":"quelque chose","diejenigen":"ceux","es":"cela","nicht":"ne...pas","aufs":"au","Gymnasium":"lycée général","geschafft":"réussi","haben":"avoir","Auf":"Lors de","dem":"la","Familienfest":"fête de famille","wurde":"devint","Debatte":"débat","hitzig":"vif","als":"lorsque","sein":"son","Cousin":"cousin","Robin":"Robin","gerade":"justement","Studium":"études","Betriebswirtschaft":"gestion d'entreprise","begonnen":"commencé","über":"sur","theoretische":"théoriques","Wirtschaftsmodelle":"modèles économiques","referierte":"exposait","konterte":"rétorqua","gelassen":"calmement","bereits":"déjà","im":"dans sa","ersten":"première","Ausbildungsjahr":"année de formation","echte":"vraies","Maschinen":"machines","reparierte":"réparait","während":"tandis que","noch":"encore","monatelang":"pendant des mois","auf":"sur","Praxiskontakt":"contact avec la pratique","warten":"attendre","müsse":"devrait","Außerdem":"De plus","verdiente":"gagnait","eigenes":"son propre","Geld":"argent","wohingegen":"alors que","weiterhin":"encore","Bafög":"bourse d'études","Unterstützung":"soutien","Eltern":"parents","angewiesen":"dépendant","Drei":"Trois","Jahre":"ans","später":"plus tard","hatten":"avaient","beide":"tous deux","ihren":"leur","jeweiligen":"respectif","Abschluss":"diplôme","allerdings":"mais","sehr":"très","unterschiedlichen":"différentes","Erfahrungen":"expériences","arbeitete":"travaillait","Facharbeiter":"ouvrier qualifié","angesehenen":"réputée","Industriebetrieb":"entreprise industrielle","nach":"pour","einer":"un","passenden":"adapté","Anstellung":"emploi","suchte":"cherchait","Die":"La","gab":"finit (gab zu = admit)","schließlich":"finalement","zu":"à","sie":"elle","Ansehen":"réputation","beruflichen":"professionnelle","früher":"autrefois","deutlich":"nettement","unterschätzt":"sous-estimé","weil":"car","öffentliche":"publique","Bild":"image","ihrer":"sa","eigenen":"propre","Jugend":"jeunesse","erheblich":"considérablement","gewandelt":"changé","habe":"ait","Für":"Pour","bewies":"prouvait","dieser":"cette","Vergleich":"comparaison","vor":"avant","allem":"tout","eines":"une chose","Es":"Il","gibt":"y a","den":"le","einen":"un","richtigen":"bon","Bildungsweg":"parcours de formation","sondern":"mais","verschiedene":"différentes","durchaus":"tout à fait","gleichwertige":"valables","Wege":"voies","je":"selon","Interesse":"intérêt","Talent":"talent","echter":"véritable","beruflicher":"professionnelle","Zufriedenheit":"satisfaction","führen":"mener","können":"pouvoir","sofern":"à condition que","man":"on","veralteten":"dépassés","Vorurteilen":"préjugés","abschrecken":"décourager","lässt":"laisse"}$t$::jsonb,
    $t$Ausbildung versus Studium: zwei gleichwertige Wege im deutschen Bildungssystem$t$
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wofür entscheidet sich Felix nach dem Realschulabschluss?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Für eine duale Ausbildung zum Mechatroniker$t$, true, 1),
    (v_q, $t$Für das Fachabitur$t$, false, 2),
    (v_q, $t$Für ein Auslandsjahr$t$, false, 3),
    (v_q, $t$Für ein Universitätsstudium$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bietet die duale Ausbildung Felix von Anfang an?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Ein monatliches Gehalt und praktische Erfahrung$t$, true, 1),
    (v_q, $t$Nur theoretischen Unterricht$t$, false, 2),
    (v_q, $t$Ein kostenloses Auslandsstudium$t$, false, 3),
    (v_q, $t$Eine automatische Beförderung$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was zeigt die Aussage der Großmutter über 'Lehre für diejenigen, die es nicht aufs Gymnasium geschafft haben'?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Ein veraltetes gesellschaftliches Vorurteil gegenüber beruflicher Bildung$t$, true, 1),
    (v_q, $t$Eine objektiv korrekte Einschätzung der Ausbildung$t$, false, 2),
    (v_q, $t$Dass Felix tatsächlich schlechte Noten hatte$t$, false, 3),
    (v_q, $t$Dass die Großmutter selbst eine Ausbildung absolviert hat$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was studiert Robin?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Betriebswirtschaft$t$, true, 1),
    (v_q, $t$Medizin$t$, false, 2),
    (v_q, $t$Elektronik$t$, false, 3),
    (v_q, $t$Jura$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Womit kontert Felix in der Debatte?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Damit, dass er bereits echte Maschinen repariert und eigenes Geld verdient$t$, true, 1),
    (v_q, $t$Damit, dass er bessere Schulnoten hatte$t$, false, 2),
    (v_q, $t$Damit, dass er auch studieren möchte$t$, false, 3),
    (v_q, $t$Damit, dass Robin die Ausbildung ebenfalls beginnen sollte$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welchen Kontrast stellt der Text zwischen Felix und Robin während der Ausbildungszeit her?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Praktische, bezahlte Erfahrung versus theoretisches Lernen bei finanzieller Abhängigkeit$t$, true, 1),
    (v_q, $t$Beide sind finanziell und praktisch in derselben Lage$t$, false, 2),
    (v_q, $t$Robin verdient mehr Geld als Felix$t$, false, 3),
    (v_q, $t$Felix hat keinerlei praktische Erfahrung$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wo arbeitet Felix drei Jahre später?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$In einem angesehenen Industriebetrieb$t$, true, 1),
    (v_q, $t$In einem Restaurant$t$, false, 2),
    (v_q, $t$Im Ausland$t$, false, 3),
    (v_q, $t$Er ist arbeitslos$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was gibt die Großmutter am Ende zu?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Dass sie das Ansehen der beruflichen Ausbildung früher unterschätzt hatte$t$, true, 1),
    (v_q, $t$Dass Felix einen Fehler gemacht hat$t$, false, 2),
    (v_q, $t$Dass Robin der erfolgreichere von beiden ist$t$, false, 3),
    (v_q, $t$Dass sie die Debatte bereut$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche zentrale Botschaft vermittelt der Schlussgedanke über 'verschiedene, gleichwertige Wege'?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Beruflicher Erfolg hängt stärker von individueller Passung als von der gesellschaftlichen Hierarchie der Bildungswege ab$t$, true, 1),
    (v_q, $t$Ein Studium ist grundsätzlich wertloser als eine Ausbildung$t$, false, 2),
    (v_q, $t$Nur eine Ausbildung führt zu echtem beruflichem Erfolg$t$, false, 3),
    (v_q, $t$Robin hat seine Entscheidung eindeutig bereut$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'duale Ausbildung'?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Eine Berufsausbildung, die Theorie in der Berufsschule mit Praxis im Betrieb verbindet$t$, true, 1),
    (v_q, $t$Ein Studium an zwei Universitäten gleichzeitig$t$, false, 2),
    (v_q, $t$Eine Ausbildung nur in Teilzeit$t$, false, 3),
    (v_q, $t$Ein rein theoretisches Fernstudium$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie wird die duale Ausbildung im Text konkret beschrieben?$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Verbunden mit einem monatlichen Gehalt und praktischer Erfahrung von Anfang an$t$, true, 1),
    (v_q, $t$Als unbezahltes Praktikum ohne Perspektive$t$, false, 2),
    (v_q, $t$Als reines Fernstudium ohne Betriebskontakt$t$, false, 3),
    (v_q, $t$Als kurzfristiger Ferienjob$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welches Wort passt inhaltlich am wenigsten zu 'duale Ausbildung'?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Fernstudium ohne Praxisbezug$t$, true, 1),
    (v_q, $t$Berufsschule$t$, false, 2),
    (v_q, $t$Ausbildungsbetrieb$t$, false, 3),
    (v_q, $t$Praxiserfahrung$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Form ist 'müsse' (Robin ... warten müsse)?$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Konjunktiv I von 'müssen'$t$, true, 1),
    (v_q, $t$Präsens von 'müssen'$t$, false, 2),
    (v_q, $t$Perfekt von 'müssen'$t$, false, 3),
    (v_q, $t$Imperativ von 'müssen'$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum steht 'müsse' hier im Konjunktiv I?$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Weil es Felix' Aussage über Robin indirekt wiedergibt$t$, true, 1),
    (v_q, $t$Weil es eine direkte, wörtliche Rede ist$t$, false, 2),
    (v_q, $t$Weil es eine Bedingung ausdrückt$t$, false, 3),
    (v_q, $t$Weil es sich um die Zukunft handelt$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Aussage zum Konjunktiv I in diesem Kontext ist korrekt?$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er markiert distanzierte, indirekte Wiedergabe einer Aussage innerhalb der Erzählung$t$, true, 1),
    (v_q, $t$Er wird nur in offiziellen Gesetzestexten verwendet$t$, false, 2),
    (v_q, $t$Er ersetzt hier das Futur II$t$, false, 3),
    (v_q, $t$Er drückt eine Bitte aus$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Felix entschied sich für eine duale Ausbildung zum ___.$t$, 1, 'facile', 'lueckentext') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Mechatroniker$t$, true, 1),
    (v_q, $t$Arzt$t$, false, 2),
    (v_q, $t$Anwalt$t$, false, 3),
    (v_q, $t$Lehrer$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Robin war weiterhin auf Bafög und die ___ seiner Eltern angewiesen.$t$, 1, 'normal', 'lueckentext') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Unterstützung$t$, true, 1),
    (v_q, $t$Ablehnung$t$, false, 2),
    (v_q, $t$Kritik$t$, false, 3),
    (v_q, $t$Distanz$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Man sollte sich nicht von ___ Vorurteilen abschrecken lassen.$t$, 1, 'difficile', 'lueckentext') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$veralteten$t$, true, 1),
    (v_q, $t$modernen$t$, false, 2),
    (v_q, $t$hilfreichen$t$, false, 3),
    (v_q, $t$seltenen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welcher Satz enthält einen Vergleichssatz mit 'während'?$t$, 1, 'facile', 'grammar') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Felix reparierte Maschinen, während Robin noch wartete.$t$, true, 1),
    (v_q, $t$Felix reparierte Maschinen.$t$, false, 2),
    (v_q, $t$Robin studierte Betriebswirtschaft.$t$, false, 3),
    (v_q, $t$Die Großmutter war überrascht.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Funktion hat 'wohingegen' im Satz über Felix und Robin?$t$, 1, 'normal', 'grammar') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Es drückt einen Gegensatz zwischen zwei Sachverhalten aus$t$, true, 1),
    (v_q, $t$Es drückt eine Bedingung aus$t$, false, 2),
    (v_q, $t$Es drückt eine Ursache aus$t$, false, 3),
    (v_q, $t$Es leitet einen Relativsatz ein$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Aussage zur Konstruktion 'sofern man sich nicht ... abschrecken lässt' ist grammatisch korrekt?$t$, 1, 'difficile', 'grammar') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$'sofern' leitet einen Konditionalsatz ein, kombiniert mit dem Passiversatz 'sich lassen + Infinitiv'$t$, true, 1),
    (v_q, $t$'sofern' drückt hier einen Kausalzusammenhang aus$t$, false, 2),
    (v_q, $t$Es handelt sich um einen Relativsatz$t$, false, 3),
    (v_q, $t$Der Satz steht im echten Passiv mit 'werden'$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, justification)
    VALUES (v_story, $t$Felix entscheidet sich für das Fachabitur.$t$, 1, 'facile', 'true_false', $t$Er entschied sich 'stattdessen für eine duale Ausbildung zum Mechatroniker'.$t$) RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Wahr$t$, false, 1),
    (v_q, $t$Falsch$t$, true, 2);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, justification)
    VALUES (v_story, $t$Robin verdient während des Studiums bereits eigenes Geld wie Felix.$t$, 1, 'normal', 'true_false', $t$Robin war 'weiterhin auf Bafög und die Unterstützung seiner Eltern angewiesen', während Felix 'bereits eigenes Geld' verdiente.$t$) RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Wahr$t$, false, 1),
    (v_q, $t$Falsch$t$, true, 2);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, justification)
    VALUES (v_story, $t$Der Text legt nahe, dass gesellschaftliche Vorurteile gegenüber beruflicher Ausbildung nicht immer der beruflichen Realität entsprechen.$t$, 1, 'difficile', 'true_false', $t$Obwohl die Großmutter die Ausbildung anfangs gering schätzte, arbeitet Felix drei Jahre später bereits erfolgreich als Facharbeiter, während Robin noch eine Anstellung sucht.$t$) RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Wahr$t$, true, 1),
    (v_q, $t$Falsch$t$, false, 2);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer, rubric)
    VALUES (v_story, $t$Schreiben Sie 5-7 Sätze darüber, welche Vor- und Nachteile eine Ausbildung im Vergleich zu einem Studium haben kann.$t$, 1, 'normal', 'production', $t$Eine Ausbildung bietet den Vorteil, dass man von Anfang an ein eigenes Gehalt verdient und praktische Erfahrung sammelt, wie es bei Felix der Fall war. Außerdem lernt man den Berufsalltag direkt kennen, anstatt zunächst nur theoretisches Wissen zu erwerben. Ein Studium hingegen ermöglicht oft eine breitere akademische Bildung und eröffnet Zugang zu Berufen, die einen Hochschulabschluss voraussetzen. Allerdings dauert es meist länger, bis Studierende finanziell unabhängig werden, und sie sind häufig auf Bafög oder familiäre Unterstützung angewiesen. Welcher Weg besser passt, hängt letztlich stark von den persönlichen Interessen und Zielen ab. Wie die Geschichte von Felix und Robin zeigt, führen beide Wege zu echtem Erfolg, sofern man sich nicht von gesellschaftlichen Vorurteilen beeinflussen lässt.$t$, $t$[{"criterion":"Aufgabenerfüllung","description":"Vor- und Nachteile beider Wege werden ausgewogen dargestellt."},{"criterion":"Wortschatz","description":"Verwendung von Begriffen wie Ausbildung, Studium, Facharbeiter, Bildungsweg."},{"criterion":"Grammatik","description":"Korrekte Verwendung von Vergleichs- und Gegensatzkonnektoren wie 'während', 'hingegen', 'allerdings'."},{"criterion":"Kohärenz","description":"Klare Gegenüberstellung beider Perspektiven mit begründetem Fazit."}]$t$::jsonb);

END $block$;

-- 5. Das Wunder von Bern
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary, culture_note) VALUES (
    'B2',
    $t$Das Wunder von Bern$t$,
    $t$Am 4. Juli 1954 versammelten sich in Deutschland Millionen Menschen vor Radiogeräten, um das Finale der Fußballweltmeisterschaft in Bern zu verfolgen. Nur neun Jahre nach Kriegsende, in einem Land, das noch immer unter den Trümmern der Vergangenheit litt, trat die westdeutsche Nationalmannschaft gegen die hoch favorisierte Mannschaft Ungarns an, die zuvor über Jahre hinweg als unbesiegbar gegolten hatte.

Ungarn führte bereits nach acht Minuten mit zwei Toren, dennoch gab die deutsche Mannschaft nicht auf. Helmut Rahn glich noch vor der Halbzeitpause aus, und die Zuschauer wagten vorsichtig zu hoffen. Reporter Herbert Zimmermann kommentierte das Spiel mit einer Leidenschaft, die bis heute in Erinnerung geblieben ist. In der 84. Minute schoss Rahn schließlich das entscheidende Tor zum 3:2-Endstand, woraufhin sein berühmter Ausruf "Tor, Tor, Tor!" zu einem geflügelten Satz der deutschen Sprache wurde.

Der überraschende Titelgewinn bedeutete für die junge Bundesrepublik weit mehr als einen sportlichen Erfolg. Historiker sprechen bis heute vom "Wunder von Bern", weil der Sieg vielen Menschen erstmals seit Kriegsende wieder ein Gefühl von Stolz und nationaler Identität ermöglichte. Allerdings mahnen Historiker auch zur Vorsicht, dieses Ereignis nicht unkritisch zu verklären, da es keineswegs die tiefgreifenden gesellschaftlichen Probleme der Nachkriegszeit löste, sondern lediglich für einen bewegenden Moment die Sorgen des Alltags vergessen ließ. Bis heute jedoch gilt der 4. Juli 1954 vielen als symbolischer Wendepunkt, an dem sich Deutschland nach den Schrecken des Krieges erstmals wieder als Teil der internationalen Gemeinschaft erleben durfte.$t$,
    $t$Le 4 juillet 1954, des millions de personnes se rassemblèrent en Allemagne devant leurs postes de radio pour suivre la finale de la Coupe du monde de football à Berne. Neuf ans seulement après la fin de la guerre, dans un pays encore marqué par les décombres du passé, l'équipe nationale ouest-allemande affronta la redoutable équipe de Hongrie, considérée depuis des années comme invincible.

La Hongrie menait déjà deux buts à zéro après huit minutes, mais l'équipe allemande ne renonça pas. Helmut Rahn égalisa avant la mi-temps, et les spectateurs osèrent timidement espérer. Le commentateur Herbert Zimmermann décrivit le match avec une passion restée mémorable jusqu'à aujourd'hui. À la 84e minute, Rahn marqua finalement le but décisif, portant le score à 3-2, et son célèbre cri « But, but, but ! » devint une expression emblématique de la langue allemande.

Cette victoire surprise représenta pour la jeune République fédérale bien plus qu'un simple succès sportif. Les historiens parlent encore aujourd'hui du « miracle de Berne », car cette victoire permit à de nombreux Allemands de ressentir, pour la première fois depuis la fin de la guerre, un sentiment de fierté et d'identité nationale. Les historiens appellent toutefois à la prudence, refusant d'idéaliser cet événement sans esprit critique, car il ne résolut nullement les problèmes sociaux profonds de l'après-guerre, mais permit seulement, l'espace d'un instant, d'oublier les soucis du quotidien. Le 4 juillet 1954 reste néanmoins, pour beaucoup, un tournant symbolique où l'Allemagne put enfin se sentir de nouveau membre de la communauté internationale après les horreurs de la guerre.$t$,
    $t${"4":"4","84":"84e","1954":"1954","Am":"Le","Juli":"juillet","versammelten":"se rassemblèrent","sich":"se","in":"en","Deutschland":"Allemagne","Millionen":"des millions de","Menschen":"personnes","vor":"devant","Radiogeräten":"postes de radio","um":"pour","das":"la","Finale":"finale","der":"de la","Fußballweltmeisterschaft":"Coupe du monde de football","Bern":"Berne","zu":"(um...zu = pour)","verfolgen":"suivre","Nur":"Seulement","neun":"neuf","Jahre":"ans","nach":"après","Kriegsende":"fin de la guerre","einem":"un","Land":"pays","noch":"encore","immer":"toujours","unter":"sous","den":"les","Trümmern":"décombres","Vergangenheit":"passé","litt":"souffrait","trat":"affronta (trat...an)","die":"l'","westdeutsche":"ouest-allemande","Nationalmannschaft":"équipe nationale","gegen":"contre","hoch":"très","favorisierte":"favorite","Mannschaft":"équipe","Ungarns":"de Hongrie","an":"(trat...an = affronta)","zuvor":"auparavant","über":"pendant","hinweg":"(über...hinweg = pendant)","als":"comme","unbesiegbar":"invincible","gegolten":"considérée","hatte":"avait","Ungarn":"La Hongrie","führte":"menait","bereits":"déjà","acht":"huit","Minuten":"minutes","mit":"avec","zwei":"deux","Toren":"buts","dennoch":"mais","gab":"abandonna (gab...auf)","deutsche":"allemande","nicht":"ne...pas","auf":"(gab...auf = abandonna)","Helmut":"Helmut","Rahn":"Rahn","glich":"égalisa","Halbzeitpause":"mi-temps","aus":"(glich...aus = égalisa)","und":"et","Zuschauer":"spectateurs","wagten":"osèrent","vorsichtig":"timidement","hoffen":"espérer","Reporter":"commentateur","Herbert":"Herbert","Zimmermann":"Zimmermann","kommentierte":"commenta","Spiel":"match","einer":"une","Leidenschaft":"passion","bis":"jusqu'à","heute":"aujourd'hui","Erinnerung":"mémoire","geblieben":"restée","ist":"est","In":"À la","Minute":"minute","schoss":"marqua","schließlich":"finalement","entscheidende":"décisif","Tor":"but","zum":"pour le","3:2-Endstand":"score final de 3:2","woraufhin":"si bien que","sein":"son","berühmter":"célèbre","Ausruf":"cri","geflügelten":"emblématique","Satz":"expression","deutschen":"allemande","Sprache":"langue","wurde":"devint","Der":"Le","überraschende":"surprenant","Titelgewinn":"titre remporté","bedeutete":"signifia","für":"pour","junge":"jeune","Bundesrepublik":"République fédérale","weit":"bien","mehr":"plus","einen":"un","sportlichen":"sportif","Erfolg":"succès","Historiker":"Historiens","sprechen":"parlent","vom":"du","Wunder":"miracle","von":"de","weil":"car","Sieg":"victoire","vielen":"beaucoup de","erstmals":"pour la première fois","seit":"depuis","wieder":"de nouveau","ein":"un","Gefühl":"sentiment","Stolz":"fierté","nationaler":"nationale","Identität":"identité","ermöglichte":"permit","Allerdings":"Cependant","mahnen":"appellent à la prudence","auch":"aussi","zur":"à la","Vorsicht":"prudence","dieses":"cet","Ereignis":"événement","unkritisch":"sans esprit critique","verklären":"idéaliser","da":"car","es":"il","keineswegs":"nullement","tiefgreifenden":"profonds","gesellschaftlichen":"sociaux","Probleme":"problèmes","Nachkriegszeit":"après-guerre","löste":"résolut","sondern":"mais","lediglich":"seulement","bewegenden":"émouvant","Moment":"instant","Sorgen":"soucis","des":"du","Alltags":"quotidien","vergessen":"oublier","ließ":"laissa","Bis":"Jusqu'à","jedoch":"toutefois","gilt":"reste considéré","symbolischer":"symbolique","Wendepunkt":"tournant","dem":"le","Schrecken":"horreurs","Krieges":"de la guerre","Teil":"partie","internationalen":"internationale","Gemeinschaft":"communauté","erleben":"vivre","durfte":"put"}$t$::jsonb,
    $t$Das Wunder von Bern (1954): der WM-Titel als Wendepunkt der deutschen Nachkriegsidentität$t$
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wo fand das Finale der Fußballweltmeisterschaft 1954 statt?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$In Bern$t$, true, 1),
    (v_q, $t$In Berlin$t$, false, 2),
    (v_q, $t$In München$t$, false, 3),
    (v_q, $t$In Wien$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Gegen welche Mannschaft spielte die westdeutsche Nationalmannschaft im Finale?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Gegen die hoch favorisierte Mannschaft Ungarns$t$, true, 1),
    (v_q, $t$Gegen Frankreich$t$, false, 2),
    (v_q, $t$Gegen Italien$t$, false, 3),
    (v_q, $t$Gegen die Schweiz$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was verdeutlicht die Erwähnung, dass Deutschland 'nur neun Jahre nach Kriegsende' antrat und 'noch immer unter den Trümmern der Vergangenheit litt'?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Den historischen Kontrast zwischen der zerstörten Nachkriegssituation und dem späteren sportlichen Erfolg$t$, true, 1),
    (v_q, $t$Dass das Spiel deshalb abgesagt wurde$t$, false, 2),
    (v_q, $t$Dass die Mannschaft aus diesem Grund chancenlos war$t$, false, 3),
    (v_q, $t$Dass Bern zu dieser Zeit noch zerstört war$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie viele Tore lag Ungarn nach acht Minuten in Führung?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Zwei Tore$t$, true, 1),
    (v_q, $t$Ein Tor$t$, false, 2),
    (v_q, $t$Drei Tore$t$, false, 3),
    (v_q, $t$Kein Tor$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wer schoss in der 84. Minute das entscheidende Tor?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Helmut Rahn$t$, true, 1),
    (v_q, $t$Herbert Zimmermann$t$, false, 2),
    (v_q, $t$Ein ungarischer Spieler$t$, false, 3),
    (v_q, $t$Der Trainer$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Bedeutung hat der Ausruf 'Tor, Tor, Tor!' für die deutsche Sprachgeschichte laut Text?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er wurde zu einem geflügelten Satz, der bis heute in Erinnerung geblieben ist$t$, true, 1),
    (v_q, $t$Er wurde nach dem Spiel offiziell verboten$t$, false, 2),
    (v_q, $t$Er hatte keinerlei bleibende Bedeutung$t$, false, 3),
    (v_q, $t$Er wurde nur einmal in einer Zeitung erwähnt$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie nennen Historiker dieses Ereignis?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Das Wunder von Bern$t$, true, 1),
    (v_q, $t$Die Schlacht von Bern$t$, false, 2),
    (v_q, $t$Der Skandal von Bern$t$, false, 3),
    (v_q, $t$Das Fest von Bern$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutete der Titelgewinn für die junge Bundesrepublik laut Text?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Weit mehr als einen sportlichen Erfolg$t$, true, 1),
    (v_q, $t$Ausschließlich einen finanziellen Gewinn$t$, false, 2),
    (v_q, $t$Nichts Besonderes$t$, false, 3),
    (v_q, $t$Nur eine kurze Randnotiz in den Zeitungen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie ordnet der Text selbst kritisch ein, welche Wirkung das 'Wunder von Bern' tatsächlich hatte?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Es löste die tiefgreifenden gesellschaftlichen Probleme der Nachkriegszeit nicht, sondern ließ sie nur kurzzeitig vergessen$t$, true, 1),
    (v_q, $t$Es beendete sofort alle wirtschaftlichen Schwierigkeiten Deutschlands$t$, false, 2),
    (v_q, $t$Es hatte laut Historikern überhaupt keine symbolische Bedeutung$t$, false, 3),
    (v_q, $t$Es wurde von der Bevölkerung völlig ignoriert$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'Titelgewinn'?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Der Sieg bei einer Meisterschaft$t$, true, 1),
    (v_q, $t$Ein finanzieller Verlust$t$, false, 2),
    (v_q, $t$Ein Buchtitel$t$, false, 3),
    (v_q, $t$Eine Zeitungsüberschrift$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Worauf bezieht sich der 'Titelgewinn' im Text konkret?$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Auf den Sieg der westdeutschen Mannschaft bei der Fußballweltmeisterschaft 1954$t$, true, 1),
    (v_q, $t$Auf einen akademischen Titel$t$, false, 2),
    (v_q, $t$Auf einen literarischen Preis$t$, false, 3),
    (v_q, $t$Auf eine politische Wahl$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welches Wort passt inhaltlich am wenigsten zu 'Titelgewinn' im sportlichen Kontext?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Niederlage$t$, true, 1),
    (v_q, $t$Meisterschaft$t$, false, 2),
    (v_q, $t$Erfolg$t$, false, 3),
    (v_q, $t$Sieg$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Zeitform ist 'gegolten hatte' (als unbesiegbar gegolten hatte)?$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Plusquamperfekt von 'gelten'$t$, true, 1),
    (v_q, $t$Präsens von 'gelten'$t$, false, 2),
    (v_q, $t$Futur I von 'gelten'$t$, false, 3),
    (v_q, $t$Imperativ von 'gelten'$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum wird hier das Plusquamperfekt verwendet?$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Weil dieser Ruf Ungarns vor dem eigentlichen Spielgeschehen der Erzählung liegt$t$, true, 1),
    (v_q, $t$Weil es eine Zukunftsvermutung ausdrückt$t$, false, 2),
    (v_q, $t$Weil es sich um direkte Rede handelt$t$, false, 3),
    (v_q, $t$Weil es einen Befehl darstellt$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Aussage zur Bildung des Plusquamperfekts von 'gelten' ist korrekt?$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$hatte + gegolten (mit haben als Hilfsverb, da 'gelten' kein Verb der Bewegung/Zustandsänderung ist)$t$, true, 1),
    (v_q, $t$war + gegolten (mit sein als Hilfsverb)$t$, false, 2),
    (v_q, $t$wurde + gegolten$t$, false, 3),
    (v_q, $t$ist + gegolten$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Millionen Menschen versammelten sich vor ___, um das Finale zu verfolgen.$t$, 1, 'facile', 'lueckentext') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Radiogeräten$t$, true, 1),
    (v_q, $t$Fernsehern$t$, false, 2),
    (v_q, $t$Computern$t$, false, 3),
    (v_q, $t$Zeitungen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Helmut Rahn glich noch vor der ___ aus.$t$, 1, 'normal', 'lueckentext') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Halbzeitpause$t$, true, 1),
    (v_q, $t$Verlängerung$t$, false, 2),
    (v_q, $t$Siegerehrung$t$, false, 3),
    (v_q, $t$Pressekonferenz$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Historiker mahnen zur Vorsicht, dieses Ereignis nicht unkritisch zu ___.$t$, 1, 'difficile', 'lueckentext') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$verklären$t$, true, 1),
    (v_q, $t$dokumentieren$t$, false, 2),
    (v_q, $t$vergessen$t$, false, 3),
    (v_q, $t$kritisieren ausschließlich$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welcher Satz enthält einen Temporalsatz mit 'nachdem/nach'?$t$, 1, 'facile', 'grammar') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Nur neun Jahre nach Kriegsende trat die Mannschaft an.$t$, true, 1),
    (v_q, $t$Die Mannschaft spielte gut.$t$, false, 2),
    (v_q, $t$Rahn schoss ein Tor.$t$, false, 3),
    (v_q, $t$Zimmermann war Reporter.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Funktion hat der Nebensatz 'weil der Sieg vielen Menschen ... ein Gefühl von Stolz ... ermöglichte'?$t$, 1, 'normal', 'grammar') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er ist ein Kausalsatz, der den Grund für die Bezeichnung 'Wunder von Bern' liefert$t$, true, 1),
    (v_q, $t$Er ist ein Konditionalsatz$t$, false, 2),
    (v_q, $t$Er ist ein Finalsatz mit 'damit'$t$, false, 3),
    (v_q, $t$Er ist ein Relativsatz$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Aussage zur Konstruktion 'sondern lediglich ... die Sorgen des Alltags vergessen ließ' ist grammatisch korrekt?$t$, 1, 'difficile', 'grammar') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$'lassen' + Infinitiv drückt hier eine kausative Bedeutung aus (bewirkte, dass die Sorgen vergessen wurden)$t$, true, 1),
    (v_q, $t$Es handelt sich um echtes Passiv mit 'werden'$t$, false, 2),
    (v_q, $t$'ließ' ist hier ein reines Vollverb ohne Infinitivkonstruktion$t$, false, 3),
    (v_q, $t$Der Satz steht im Konjunktiv II$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, justification)
    VALUES (v_story, $t$Deutschland führte von Beginn an im Finale.$t$, 1, 'facile', 'true_false', $t$Ungarn 'führte bereits nach acht Minuten mit zwei Toren'.$t$) RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Wahr$t$, false, 1),
    (v_q, $t$Falsch$t$, true, 2);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, justification)
    VALUES (v_story, $t$Der Text stellt das 'Wunder von Bern' als vollständige Lösung aller Nachkriegsprobleme dar.$t$, 1, 'normal', 'true_false', $t$Der Text betont, das Ereignis habe 'keineswegs die tiefgreifenden gesellschaftlichen Probleme der Nachkriegszeit' gelöst.$t$) RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Wahr$t$, false, 1),
    (v_q, $t$Falsch$t$, true, 2);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, justification)
    VALUES (v_story, $t$Der Text stellt sowohl die symbolische Bedeutung des Sieges als auch eine kritische, relativierende Sichtweise darauf dar.$t$, 1, 'difficile', 'true_false', $t$Der Text beschreibt den Sieg als identitätsstiftend, mahnt aber gleichzeitig, ihn 'nicht unkritisch zu verklären'.$t$) RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Wahr$t$, true, 1),
    (v_q, $t$Falsch$t$, false, 2);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer, rubric)
    VALUES (v_story, $t$Schreiben Sie 5-7 Sätze darüber, warum ein sportliches Ereignis wie das 'Wunder von Bern' eine so große symbolische Bedeutung für ein Land haben kann.$t$, 1, 'normal', 'production', $t$Ein sportliches Ereignis wie das 'Wunder von Bern' kann eine große symbolische Bedeutung erhalten, weil es Menschen in einem gemeinsamen Gefühl vereint, das über den Sport hinausgeht. Nach den Zerstörungen und der Scham des Zweiten Weltkriegs bot der Titelgewinn 1954 den Deutschen erstmals wieder einen Anlass zu unbeschwerter Freude und nationalem Stolz. Dennoch sollte man solche Ereignisse nicht überbewerten, da sie strukturelle Probleme einer Gesellschaft nicht wirklich lösen können. Vielmehr wirken sie oft wie ein kurzer, aber bedeutsamer Lichtblick in einer schwierigen historischen Phase. Außerdem zeigen sportliche Erfolge häufig eine identitätsstiftende Wirkung, weil sie unabhängig von politischen Differenzen ein gemeinsames Wir-Gefühl erzeugen können. Deshalb bleibt das 'Wunder von Bern' bis heute ein wichtiges Kapitel der deutschen Erinnerungskultur.$t$, $t$[{"criterion":"Aufgabenerfüllung","description":"Die symbolische Bedeutung sportlicher Ereignisse wird nachvollziehbar erklärt und kritisch eingeordnet."},{"criterion":"Wortschatz","description":"Verwendung von Begriffen wie Titelgewinn, Identität, Erinnerungskultur, Nachkriegszeit."},{"criterion":"Grammatik","description":"Korrekte Verwendung von Kausal- und Konzessivsätzen mit 'weil', 'dennoch', 'obwohl'."},{"criterion":"Kohärenz","description":"Ausgewogene Darstellung von positiver Wirkung und kritischer Distanz."}]$t$::jsonb);

END $block$;

-- 6. Zwei Lausbuben aus Wiedensahl
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary, culture_note) VALUES (
    'B2',
    $t$Zwei Lausbuben aus Wiedensahl$t$,
    $t$In einem kleinen niedersächsischen Dorf lebten einst zwei Brüder namens Fritz und Karl, die im ganzen Ort für ihre Streiche berüchtigt waren, ganz ähnlich wie jene berühmten Lausbuben, von denen man sich noch heute erzählt. Kaum verging eine Woche, in der die beiden nicht irgendeinen Nachbarn ärgerten, sei es mit vertauschten Türschildern oder einer Ladung Mehl über der Eingangstür des Bäckers.

Ihr liebstes Ziel war der mürrische Lehrer Herr Puttkamer, der die Jungen wegen ihrer schlechten Noten regelmäßig tadelte. Eines Tages versteckten Fritz und Karl heimlich einen Frosch in seiner Schreibtischschublade, woraufhin dieser während des Unterrichts laut aufschrie und die ganze Klasse in schallendes Gelächter ausbrach. Allerdings ahnten die Brüder nicht, dass der Lehrer diesmal entschlossen war, ihnen eine Lektion zu erteilen.

Er ließ die beiden nachsitzen und zwang sie, einen langen Aufsatz über die Folgen ihrer Streiche zu schreiben. Zunächst empfanden Fritz und Karl dies als lästige Strafe, doch beim Schreiben wurde ihnen allmählich bewusst, wie sehr sie andere Menschen tatsächlich verärgert hatten. Zum Erstaunen des Dorfes entschuldigten sich die Brüder anschließend bei jedem Betroffenen persönlich. Von da an blieben sie zwar weiterhin lebhaft und einfallsreich, lenkten ihre Energie jedoch zunehmend in harmlosere Bahnen um, halfen sogar gelegentlich beim Reparieren dessen, was sie zuvor selbst beschädigt hatten, sodass man sich im Dorf noch jahrelang lachend an ihre bemerkenswerte Wandlung erinnerte.$t$,
    $t$Il était une fois, dans un petit village de Basse-Saxe, deux frères nommés Fritz et Karl, connus dans tout le village pour leurs farces, un peu à la manière de ces célèbres garnements dont on parle encore aujourd'hui. Il ne se passait guère de semaine sans qu'ils n'embêtent un voisin, que ce soit en échangeant des plaques de porte ou en renversant une pleine mesure de farine au-dessus de la porte du boulanger.

Leur cible favorite était le professeur bougon, Monsieur Puttkamer, qui réprimandait régulièrement les garçons pour leurs mauvaises notes. Un jour, Fritz et Karl cachèrent secrètement une grenouille dans le tiroir de son bureau, si bien que celui-ci poussa un grand cri pendant le cours, déclenchant un éclat de rire général dans la classe. Les deux frères ne se doutaient cependant pas que le professeur était cette fois bien décidé à leur donner une leçon.

Il les fit rester en retenue et les obligea à rédiger une longue rédaction sur les conséquences de leurs farces. Fritz et Karl considérèrent d'abord cela comme une punition pénible, mais en écrivant, ils prirent peu à peu conscience à quel point ils avaient réellement contrarié d'autres personnes. Au grand étonnement du village, les frères présentèrent ensuite leurs excuses en personne à chaque victime. Dès lors, ils restèrent certes toujours aussi vifs et pleins d'imagination, mais canalisèrent progressivement leur énergie vers des activités plus inoffensives, aidant même parfois à réparer ce qu'ils avaient eux-mêmes abîmé auparavant, si bien que l'on se souvint encore des années durant, en riant, de leur remarquable transformation.$t$,
    $t${"In":"Dans","einem":"un","kleinen":"petit","niedersächsischen":"de Basse-Saxe","Dorf":"village","lebten":"vivaient","einst":"autrefois","zwei":"deux","Brüder":"frères","namens":"nommés","Fritz":"Fritz","und":"et","Karl":"Karl","die":"qui","im":"dans le","ganzen":"tout","Ort":"village/endroit","für":"pour","ihre":"leurs","Streiche":"farces","berüchtigt":"connus (en mal)","waren":"étaient","ganz":"tout à fait","ähnlich":"semblable","wie":"comme","jene":"ces","berühmten":"célèbres","Lausbuben":"garnements","von":"dont","denen":"lesquels","man":"on","sich":"se","noch":"encore","heute":"aujourd'hui","erzählt":"raconte","Kaum":"À peine","verging":"passait","eine":"une","Woche":"semaine","der":"laquelle","beiden":"deux","nicht":"ne...pas","irgendeinen":"un quelconque","Nachbarn":"voisin","ärgerten":"embêtaient","sei":"que ce soit","es":"cela","mit":"avec","vertauschten":"échangées","Türschildern":"plaques de porte","oder":"ou","einer":"une","Ladung":"pleine mesure","Mehl":"farine","über":"au-dessus de","Eingangstür":"porte d'entrée","des":"du","Bäckers":"boulanger","Ihr":"Leur","liebstes":"favori","Ziel":"cible","war":"était","mürrische":"bougon","Lehrer":"professeur","Herr":"Monsieur","Puttkamer":"Puttkamer","Jungen":"garçons","wegen":"à cause de","schlechten":"mauvaises","Noten":"notes","regelmäßig":"régulièrement","tadelte":"réprimandait","Eines":"Un","Tages":"jour","versteckten":"cachèrent","heimlich":"secrètement","einen":"une","Frosch":"grenouille","seiner":"son","Schreibtischschublade":"tiroir du bureau","woraufhin":"si bien que","dieser":"celui-ci","während":"pendant","Unterrichts":"du cours","laut":"fort","aufschrie":"poussa un cri","ganze":"toute","Klasse":"classe","schallendes":"éclatant","Gelächter":"rire","ausbrach":"éclata","Allerdings":"Cependant","ahnten":"se doutaient","dass":"que","diesmal":"cette fois","entschlossen":"décidé","ihnen":"leur","Lektion":"leçon","zu":"à","erteilen":"donner","Er":"Il","ließ":"fit rester","nachsitzen":"en retenue","zwang":"obligea","sie":"les","langen":"longue","Aufsatz":"rédaction","Folgen":"conséquences","schreiben":"écrire","Zunächst":"D'abord","empfanden":"considérèrent","dies":"cela","als":"comme","lästige":"pénible","Strafe":"punition","doch":"mais","beim":"en","Schreiben":"écrivant","wurde":"devint","allmählich":"peu à peu","bewusst":"conscient","sehr":"à quel point","andere":"d'autres","Menschen":"personnes","tatsächlich":"réellement","verärgert":"contrarié","hatten":"avaient","Zum":"Au","Erstaunen":"étonnement","Dorfes":"du village","entschuldigten":"présentèrent leurs excuses","anschließend":"ensuite","bei":"auprès de","jedem":"chaque","Betroffenen":"personne concernée","persönlich":"personnellement","Von":"Dès","da":"lors","an":"(von da an = dès lors)","blieben":"restèrent","zwar":"certes","weiterhin":"toujours","lebhaft":"vifs","einfallsreich":"pleins d'imagination","lenkten":"canalisèrent","Energie":"énergie","jedoch":"cependant","zunehmend":"de plus en plus","harmlosere":"plus inoffensives","Bahnen":"voies","um":"(lenkten...um = canalisèrent)","halfen":"aidèrent","sogar":"même","gelegentlich":"parfois","Reparieren":"réparer","dessen":"ce que","was":"que","zuvor":"auparavant","selbst":"eux-mêmes","beschädigt":"abîmé","sodass":"si bien que","jahrelang":"pendant des années","lachend":"en riant","bemerkenswerte":"remarquable","Wandlung":"transformation","erinnerte":"souvint","in":"pendant laquelle","ihrer":"leurs"}$t$::jsonb,
    $t$Im Geiste der Lausbubengeschichten von Wilhelm Busch, dessen Bildergeschichten die deutsche Erzähltradition prägten$t$
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wofür sind Fritz und Karl im ganzen Dorf berüchtigt?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Für ihre Streiche$t$, true, 1),
    (v_q, $t$Für ihre Höflichkeit$t$, false, 2),
    (v_q, $t$Für ihre Schulnoten$t$, false, 3),
    (v_q, $t$Für ihre Musikalität$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Streiche werden im Text als Beispiele genannt?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Vertauschte Türschilder und eine Ladung Mehl über der Bäckertür$t$, true, 1),
    (v_q, $t$Ein gestohlenes Fahrrad und zerbrochene Fenster$t$, false, 2),
    (v_q, $t$Ein Feuer im Schulhof$t$, false, 3),
    (v_q, $t$Gefälschte Zeugnisse$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Funktion hat der Verweis auf 'jene berühmten Lausbuben, von denen man sich noch heute erzählt'?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er stellt eine bewusste Anspielung auf eine bekannte literarische Tradition streitbarer Kinderfiguren her$t$, true, 1),
    (v_q, $t$Er beweist, dass Fritz und Karl tatsächlich historisch belegte Personen sind$t$, false, 2),
    (v_q, $t$Er zeigt, dass die Geschichte in der Gegenwart spielt$t$, false, 3),
    (v_q, $t$Er deutet an, dass die Brüder berühmte Schauspieler wurden$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was verstecken die Brüder in der Schreibtischschublade des Lehrers?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Einen Frosch$t$, true, 1),
    (v_q, $t$Eine Maus$t$, false, 2),
    (v_q, $t$Ein Spielzeug$t$, false, 3),
    (v_q, $t$Einen Brief$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie reagiert der Lehrer, als er den Frosch entdeckt?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er schreit laut auf, und die Klasse lacht$t$, true, 1),
    (v_q, $t$Er bleibt völlig ruhig$t$, false, 2),
    (v_q, $t$Er lacht selbst am lautesten$t$, false, 3),
    (v_q, $t$Er verlässt sofort das Klassenzimmer$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was zeigt der Satz, die Brüder 'ahnten nicht, dass der Lehrer diesmal entschlossen war, ihnen eine Lektion zu erteilen'?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Eine Vorausdeutung darauf, dass diesmal Konsequenzen folgen werden, anders als bei früheren Streichen$t$, true, 1),
    (v_q, $t$Dass der Lehrer die Schule verlassen wird$t$, false, 2),
    (v_q, $t$Dass die Brüder den Lehrer diesmal nicht ärgern wollten$t$, false, 3),
    (v_q, $t$Dass der Lehrer den Streich gar nicht bemerkt hat$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was müssen Fritz und Karl als Strafe tun?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Einen Aufsatz über die Folgen ihrer Streiche schreiben$t$, true, 1),
    (v_q, $t$Die Schule wechseln$t$, false, 2),
    (v_q, $t$Geld bezahlen$t$, false, 3),
    (v_q, $t$Ein Jahr wiederholen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was tun die Brüder, nachdem sie den Aufsatz geschrieben haben?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie entschuldigen sich persönlich bei jedem Betroffenen$t$, true, 1),
    (v_q, $t$Sie verlassen heimlich das Dorf$t$, false, 2),
    (v_q, $t$Sie planen einen neuen, größeren Streich$t$, false, 3),
    (v_q, $t$Sie beschweren sich beim Bürgermeister$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie verändert sich das Wesen der Brüder laut dem Schlussabsatz?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie bleiben lebhaft, lenken ihre Energie aber in konstruktivere Bahnen$t$, true, 1),
    (v_q, $t$Sie werden vollständig still und zurückgezogen$t$, false, 2),
    (v_q, $t$Sie hören auf, überhaupt noch mit den Dorfbewohnern zu sprechen$t$, false, 3),
    (v_q, $t$Sie werden von den Eltern aus dem Dorf verbannt$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'berüchtigt' im Text?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Für etwas Negatives bekannt$t$, true, 1),
    (v_q, $t$Sehr beliebt und geschätzt$t$, false, 2),
    (v_q, $t$Völlig unbekannt$t$, false, 3),
    (v_q, $t$Besonders fleißig$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wofür sind Fritz und Karl im Dorf berüchtigt?$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Für ihre zahlreichen Streiche$t$, true, 1),
    (v_q, $t$Für ihre schulischen Leistungen$t$, false, 2),
    (v_q, $t$Für ihre Musikkünste$t$, false, 3),
    (v_q, $t$Für ihre Hilfsbereitschaft$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welches Wort ist in diesem Kontext KEIN passendes Synonym für 'berüchtigt'?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Angesehen$t$, true, 1),
    (v_q, $t$Verrufen$t$, false, 2),
    (v_q, $t$Bekannt (negativ)$t$, false, 3),
    (v_q, $t$Berühmt-berüchtigt$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Form ist 'ausbrach' (die Klasse ... ausbrach)?$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Präteritum von 'ausbrechen'$t$, true, 1),
    (v_q, $t$Präsens von 'ausbrechen'$t$, false, 2),
    (v_q, $t$Perfekt von 'ausbrechen'$t$, false, 3),
    (v_q, $t$Imperativ von 'ausbrechen'$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$'Ausbrach' im Satz 'die Klasse in schallendes Gelächter ausbrach' gehört zu welchem Verb?$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$ausbrechen$t$, true, 1),
    (v_q, $t$ausbreiten$t$, false, 2),
    (v_q, $t$brechen$t$, false, 3),
    (v_q, $t$brauchen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Aussage zur Bildung von 'ausbrach' ist grammatisch korrekt?$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Es ist ein starkes, trennbares Verb (ausbrechen), das im Präteritum den Stammvokal wie 'brechen' ändert (a)$t$, true, 1),
    (v_q, $t$Es ist ein schwaches Verb mit -te-Endung$t$, false, 2),
    (v_q, $t$Es handelt sich um ein reflexives Verb$t$, false, 3),
    (v_q, $t$Es steht im Konjunktiv II$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Fritz und Karl waren im ganzen Ort für ihre ___ berüchtigt.$t$, 1, 'facile', 'lueckentext') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Streiche$t$, true, 1),
    (v_q, $t$Höflichkeit$t$, false, 2),
    (v_q, $t$Fleiß$t$, false, 3),
    (v_q, $t$Musik$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Die Brüder versteckten heimlich einen Frosch in der ___ des Lehrers.$t$, 1, 'normal', 'lueckentext') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Schreibtischschublade$t$, true, 1),
    (v_q, $t$Jackentasche$t$, false, 2),
    (v_q, $t$Schultasche$t$, false, 3),
    (v_q, $t$Aktentasche$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Zum Erstaunen des Dorfes ___ sich die Brüder anschließend bei jedem Betroffenen persönlich.$t$, 1, 'difficile', 'lueckentext') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$entschuldigten$t$, true, 1),
    (v_q, $t$rächten$t$, false, 2),
    (v_q, $t$versteckten$t$, false, 3),
    (v_q, $t$beschwerten$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welcher Satz enthält einen Relativsatz?$t$, 1, 'facile', 'grammar') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Der Lehrer, der die Jungen regelmäßig tadelte, war sehr mürrisch.$t$, true, 1),
    (v_q, $t$Der Lehrer war mürrisch.$t$, false, 2),
    (v_q, $t$Die Brüder ärgerten den Lehrer.$t$, false, 3),
    (v_q, $t$Der Frosch war grün.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Funktion hat der Nebensatz 'woraufhin dieser während des Unterrichts laut aufschrie'?$t$, 1, 'normal', 'grammar') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er ist ein Folgesatz, der die unmittelbare Konsequenz des Streichs beschreibt$t$, true, 1),
    (v_q, $t$Er ist ein Konditionalsatz mit 'wenn'$t$, false, 2),
    (v_q, $t$Er ist ein Finalsatz mit 'damit'$t$, false, 3),
    (v_q, $t$Er ist ein Konzessivsatz mit 'obwohl'$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Aussage zur Konstruktion 'was sie zuvor selbst beschädigt hatten' ist grammatisch korrekt?$t$, 1, 'difficile', 'grammar') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Es ist ein Relativsatz mit 'was', bezogen auf einen ganzen vorangehenden Sachverhalt, im Plusquamperfekt$t$, true, 1),
    (v_q, $t$Es ist ein Hauptsatz im Präsens$t$, false, 2),
    (v_q, $t$Es handelt sich um direkte Rede$t$, false, 3),
    (v_q, $t$Es ist ein Fragesatz im Perfekt$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, justification)
    VALUES (v_story, $t$Fritz und Karl sind im Dorf für ihre Freundlichkeit bekannt.$t$, 1, 'facile', 'true_false', $t$Sie sind 'für ihre Streiche berüchtigt', nicht für Freundlichkeit.$t$) RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Wahr$t$, false, 1),
    (v_q, $t$Falsch$t$, true, 2);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, justification)
    VALUES (v_story, $t$Der Lehrer reagiert diesmal ohne jede Konsequenz auf den Streich mit dem Frosch.$t$, 1, 'normal', 'true_false', $t$Der Lehrer war 'entschlossen, ihnen eine Lektion zu erteilen', ließ sie nachsitzen und einen Aufsatz schreiben.$t$) RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Wahr$t$, false, 1),
    (v_q, $t$Falsch$t$, true, 2);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, justification)
    VALUES (v_story, $t$Der Text legt nahe, dass das Schreiben des Aufsatzes bei den Brüdern tatsächlich einen inneren Reflexionsprozess auslöste, statt sie nur äußerlich zu bestrafen.$t$, 1, 'difficile', 'true_false', $t$Beim Schreiben 'wurde ihnen allmählich bewusst, wie sehr sie andere Menschen tatsächlich verärgert hatten', woraufhin sie sich freiwillig entschuldigten.$t$) RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Wahr$t$, true, 1),
    (v_q, $t$Falsch$t$, false, 2);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer, rubric)
    VALUES (v_story, $t$Schreiben Sie 5-7 Sätze darüber, ob Sie die Reaktion des Lehrers (Nachsitzen und Aufsatz statt strengerer Strafe) für pädagogisch sinnvoll halten.$t$, 1, 'normal', 'production', $t$Ich halte die Reaktion des Lehrers für pädagogisch durchaus gelungen, weil sie die Brüder zum Nachdenken anregt, anstatt sie einfach nur zu bestrafen. Durch das Schreiben des Aufsatzes mussten sich Fritz und Karl aktiv mit den Folgen ihres Handelns auseinandersetzen, was zu echter Einsicht führte. Eine rein strenge Strafe, etwa ein Schulverweis, hätte vermutlich nur Trotz erzeugt, ohne dass die Brüder ihr Verhalten wirklich reflektiert hätten. Außerdem zeigt die freiwillige Entschuldigung am Ende, dass die Methode des Lehrers tatsächlich zu innerer Reife geführt hat. Dennoch sollte man beachten, dass eine solche Methode nicht bei jedem Kind gleich gut wirkt. Insgesamt finde ich es überzeugend, dass Konsequenzen, die zum Nachdenken anregen, oft nachhaltiger wirken als reine Bestrafung.$t$, $t$[{"criterion":"Aufgabenerfüllung","description":"Eine begründete Meinung zur pädagogischen Methode des Lehrers wird dargelegt."},{"criterion":"Wortschatz","description":"Verwendung von Begriffen wie Konsequenz, Einsicht, Reflexion, Bestrafung."},{"criterion":"Grammatik","description":"Korrekte Verwendung von Konjunktiv II bei Hypothesen ('hätte ... erzeugt') und Konnektoren wie 'außerdem', 'dennoch'."},{"criterion":"Kohärenz","description":"Nachvollziehbare Argumentation mit klarem abschließendem Fazit."}]$t$::jsonb);

END $block$;

