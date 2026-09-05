-- Contenu "système scolaire allemand + patrimoine, vague 2" — niveau C1 (6 histoires).
-- Ajoute aussi 3 nouveaux types d'exercices : lueckentext (texte à trous),
-- grammar (grammaire ciblée) et true_false (vrai/faux justifié), ainsi
-- qu'une grille de correction (rubric) pour les questions de production.

-- 1. Die Tafel und die Zeit
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary, culture_note) VALUES (
    'C1',
    $t$Die Tafel und die Zeit$t$,
    $t$Als Frau Vogt im Juni ihre letzte Klassenarbeit korrigierte, bevor sie nach zweiunddreißig Dienstjahren in den Ruhestand trat, fiel ihr auf, wie wenig die roten Anmerkungen am Rand sich verändert hatten, während sich um sie herum beinahe alles gewandelt hatte. Am Anfang ihrer Laufbahn hatte sie mit Kreide unterrichtet, die beim Schreiben knirschte und feinen weißen Staub auf ihre dunklen Blazer legte; heute berührte sie ein digitales Whiteboard, dessen Stift lautlos über Glas glitt, und dennoch, dachte sie, sei die eigentliche Arbeit dieselbe geblieben: einem Kind zu erklären, warum ein Nebensatz ein Komma vor sich brauche.

Die Schüler seien wacher geworden, sagte man ihr oft, informierter, kritischer gegenüber Autorität, die sie früher unbefragt hingenommen hätten. Frau Vogt widersprach dem nicht, obwohl sie manchmal vermisste, was man Respekt genannt hatte, jene stille Aufmerksamkeit, mit der eine ganze Klasse verstummte, sobald sie die Tür öffnete. Zugleich erinnerte sie sich an Schüler, die aus Angst geschwiegen hatten, wo heutige Schüler fragten, und sie wusste, dass sie ein solches Schweigen nicht zurückwünschen durfte, so vertraut es ihr auch erschien.

An ihrem letzten Schultag stand ein ehemaliger Schüler vor ihrem Klassenzimmer, mittlerweile selbst Vater, und dankte ihr für eine Bemerkung, an die sie sich nicht erinnerte, die aber, wie er sagte, seine gesamte Berufswahl bestimmt habe. In diesem Moment begriff sie, dass Bildung sich nie in Lehrplänen erschöpfte, sondern in jenen flüchtigen Sätzen weiterlebte, die man beiläufig ausspricht und deren Wirkung man niemals ganz überblickt, weder in dreißig Jahren noch danach. Vielleicht, dachte sie auf dem Nachhauseweg, sei es gerade diese Unberechenbarkeit, die den Beruf so schwer messbar und zugleich so lohnend mache, ein Umstand, den keine Statistik über Abschlussquoten oder Notendurchschnitte je würde erfassen können.$t$,
    $t$Quand Madame Vogt corrigea sa dernière épreuve de classe en juin, avant de partir à la retraite après trente-deux années de service, elle remarqua combien les annotations rouges dans la marge avaient peu changé, alors que presque tout, autour d'elle, s'était transformé. Au début de sa carrière, elle enseignait à la craie, qui crissait en écrivant et déposait une fine poussière blanche sur ses vestes sombres ; aujourd'hui, elle touchait un tableau blanc numérique dont le stylet glissait sans bruit sur le verre, et pourtant, pensait-elle, le véritable travail était resté le même : expliquer à un enfant pourquoi une subordonnée exige une virgule devant elle.

Les élèves étaient devenus plus éveillés, lui disait-on souvent, plus informés, plus critiques envers une autorité qu'ils acceptaient autrefois sans la questionner. Madame Vogt ne le contestait pas, bien qu'elle regrettât parfois ce que l'on appelait le respect, cette attention silencieuse avec laquelle une classe entière se taisait dès qu'elle ouvrait la porte. En même temps, elle se souvenait d'élèves qui s'étaient tus par peur, là où les élèves d'aujourd'hui posaient des questions, et elle savait qu'elle ne devait pas souhaiter le retour d'un tel silence, si familier qu'il lui parût.

Le jour de sa dernière rentrée, un ancien élève, devenu entre-temps père lui-même, se tint devant sa salle de classe et la remercia pour une remarque dont elle ne se souvenait pas, mais qui, disait-il, avait déterminé tout son choix de carrière. À cet instant, elle comprit que l'éducation ne s'épuisait jamais dans les programmes scolaires, mais survivait dans ces phrases fugaces que l'on prononce en passant et dont on ne mesure jamais entièrement l'effet, ni en trente ans ni après. Peut-être, pensa-t-elle sur le chemin du retour, était-ce précisément cette imprévisibilité qui rendait le métier si difficile à mesurer et pourtant si gratifiant, une réalité qu'aucune statistique de taux de réussite ou de moyenne générale ne pourrait jamais saisir.$t$,
    $t${"Als":"quand","Frau":"madame","Vogt":"Vogt (nom)","im":"en","Juni":"juin","ihre":"sa","letzte":"dernière","Klassenarbeit":"contrôle de classe","korrigierte":"corrigeait","bevor":"avant que","sie":"elle","nach":"après","zweiunddreißig":"trente-deux","Dienstjahren":"années de service","in":"dans","den":"le","Ruhestand":"retraite","trat":"partait","fiel":"remarqua (fiel...auf)","ihr":"lui/elle","auf":"(particule: fiel...auf = remarqua)","wie":"combien/comme","wenig":"peu","die":"les","roten":"rouges","Anmerkungen":"annotations","am":"à la (au)","Rand":"marge","sich":"se","verändert":"changé","hatten":"avaient","während":"tandis que","um":"autour (um...herum)","herum":"autour","beinahe":"presque","alles":"tout","gewandelt":"transformé","hatte":"avait","Am":"au","Anfang":"début","ihrer":"de sa","Laufbahn":"carrière","mit":"avec","Kreide":"craie","unterrichtet":"enseigné","beim":"en (beim Schreiben: en écrivant)","Schreiben":"le fait d'écrire","knirschte":"crissait","und":"et","feinen":"fine","weißen":"blanche","Staub":"poussière","dunklen":"sombres","Blazer":"vestes","legte":"déposait","heute":"aujourd'hui","berührte":"touchait","ein":"un","digitales":"numérique","Whiteboard":"tableau blanc","dessen":"dont le","Stift":"stylet","lautlos":"sans bruit","über":"sur","Glas":"verre","glitt":"glissait","dennoch":"pourtant","dachte":"pensait","sei":"soit/fût","eigentliche":"véritable","Arbeit":"travail","dieselbe":"la même","geblieben":"resté","einem":"un","Kind":"enfant","zu":"à","erklären":"expliquer","warum":"pourquoi","Nebensatz":"proposition subordonnée","Komma":"virgule","vor":"devant","brauche":"aurait besoin de","Die":"les","Schüler":"élèves","seien":"seraient","wacher":"plus éveillés","geworden":"devenus","sagte":"disait","man":"on","oft":"souvent","informierter":"plus informés","kritischer":"plus critiques","gegenüber":"envers","Autorität":"autorité","früher":"autrefois","unbefragt":"sans la questionner","hingenommen":"acceptée","hätten":"auraient","widersprach":"contredisait","dem":"cela (widersprach dem)","nicht":"pas","obwohl":"bien que","manchmal":"parfois","vermisste":"regrettait","was":"ce que","Respekt":"respect","genannt":"appelé","jene":"cette","stille":"silencieuse","Aufmerksamkeit":"attention","der":"avec laquelle (relatif)","eine":"une","ganze":"entière","Klasse":"classe","verstummte":"se taisait","sobald":"dès que","Tür":"porte","öffnete":"ouvrait","Zugleich":"en même temps","erinnerte":"se souvenait","an":"de","aus":"par","Angst":"peur","geschwiegen":"tues (se sont tus)","wo":"là où","heutige":"actuels","fragten":"posaient des questions","wusste":"savait","dass":"que","solches":"un tel","Schweigen":"silence","zurückwünschen":"souhaiter le retour de","durfte":"devait/avait le droit de","so":"si","vertraut":"familier","es":"cela","auch":"aussi","erschien":"paraissait","An":"à","ihrem":"son","letzten":"dernier","Schultag":"jour d'école","stand":"se tenait","ehemaliger":"ancien","Klassenzimmer":"salle de classe","mittlerweile":"entre-temps","selbst":"lui-même","Vater":"père","dankte":"remerciait","für":"pour","Bemerkung":"remarque","aber":"mais","er":"il","seine":"son","gesamte":"tout entier","Berufswahl":"choix de carrière","bestimmt":"déterminé","habe":"ait","In":"à","diesem":"cet","Moment":"instant","begriff":"comprit","Bildung":"éducation/formation","nie":"jamais","Lehrplänen":"programmes scolaires","erschöpfte":"épuisait","sondern":"mais","jenen":"ces","flüchtigen":"fugaces","Sätzen":"phrases","weiterlebte":"survivait","beiläufig":"en passant","ausspricht":"prononce","deren":"dont","Wirkung":"effet","niemals":"jamais","ganz":"entièrement","überblickt":"mesure/embrasse du regard","weder":"ni","dreißig":"trente","Jahren":"années","noch":"ni","danach":"après","Vielleicht":"peut-être","Nachhauseweg":"chemin du retour","gerade":"justement","diese":"cette","Unberechenbarkeit":"imprévisibilité","Beruf":"métier","schwer":"difficilement","messbar":"mesurable","zugleich":"à la fois","lohnend":"gratifiant","mache":"rendait","Umstand":"circonstance","keine":"aucune","Statistik":"statistique","Abschlussquoten":"taux de réussite","oder":"ou","Notendurchschnitte":"moyennes de notes","je":"jamais","würde":"pourrait","erfassen":"saisir","können":"pouvoir"}$t$::jsonb,
    $t$Fiction originale sur l'évolution du métier d'enseignant en Allemagne$t$
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie lange hat Frau Vogt unterrichtet, bevor sie in den Ruhestand tritt?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Zweiunddreißig Jahre$t$, true, 1),
    (v_q, $t$Zehn Jahre$t$, false, 2),
    (v_q, $t$Fünf Jahre$t$, false, 3),
    (v_q, $t$Zwanzig Jahre$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was fällt Frau Vogt beim Korrigieren ihrer letzten Klassenarbeit auf?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Dass sich ihre Art zu korrigieren kaum verändert hat, obwohl sich alles um sie herum gewandelt hat$t$, true, 1),
    (v_q, $t$Dass sie nie wieder korrigieren möchte$t$, false, 2),
    (v_q, $t$Dass ihre Schüler viel schlechter geworden sind$t$, false, 3),
    (v_q, $t$Dass die Schule geschlossen wird$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Funktion hat der Kontrast zwischen Kreide und digitalem Whiteboard im ersten Abschnitt?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er verdeutlicht, dass sich die äußeren Mittel des Unterrichts wandeln, der eigentliche pädagogische Kern aber bestehen bleibt$t$, true, 1),
    (v_q, $t$Er zeigt, dass digitale Medien den Unterricht wertlos gemacht haben$t$, false, 2),
    (v_q, $t$Er beweist, dass Frau Vogt technikfeindlich ist$t$, false, 3),
    (v_q, $t$Er dient nur der Beschreibung des Klassenzimmers ohne weitere Bedeutung$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was vermisst Frau Vogt manchmal?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Den früheren Respekt bzw. die stille Aufmerksamkeit der Schüler$t$, true, 1),
    (v_q, $t$Die alten Klassenzimmer$t$, false, 2),
    (v_q, $t$Ihre erste Wohnung$t$, false, 3),
    (v_q, $t$Das frühere Schulessen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie unterscheiden sich frühere und heutige Schüler laut dem Text im Umgang mit Autorität?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Frühere Schüler nahmen Autorität unbefragt hin, heutige Schüler stellen kritischer Fragen$t$, true, 1),
    (v_q, $t$Frühere Schüler waren respektloser als heutige$t$, false, 2),
    (v_q, $t$Es gibt laut Text keinen Unterschied$t$, false, 3),
    (v_q, $t$Heutige Schüler akzeptieren Autorität bedingungslos$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum weigert sich Frau Vogt, sich das frühere Schweigen der Schüler zurückzuwünschen?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Weil sie erkennt, dass dieses Schweigen oft aus Angst entstand und daher kein erstrebenswerter Zustand war$t$, true, 1),
    (v_q, $t$Weil sie das Schweigen nie erlebt hat$t$, false, 2),
    (v_q, $t$Weil ihr Schweigen im Unterricht generell gleichgültig ist$t$, false, 3),
    (v_q, $t$Weil die Schulbehörde es ihr verbietet$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wer steht am letzten Schultag vor Frau Vogts Klassenzimmer?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Ein ehemaliger Schüler, der inzwischen selbst Vater ist$t$, true, 1),
    (v_q, $t$Der neue Schulleiter$t$, false, 2),
    (v_q, $t$Ein Journalist$t$, false, 3),
    (v_q, $t$Ihre eigene Tochter$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wofür dankt der ehemalige Schüler Frau Vogt?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Für eine Bemerkung, an die sie sich nicht mehr erinnert, die aber seine Berufswahl bestimmt habe$t$, true, 1),
    (v_q, $t$Für eine gute Note in der Abschlussprüfung$t$, false, 2),
    (v_q, $t$Für ein Geschenk zum Schulabschluss$t$, false, 3),
    (v_q, $t$Für ihre Geduld bei den Hausaufgaben$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Erkenntnis über Bildung gewinnt Frau Vogt am Ende der Geschichte?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Bildung wirkt oft über beiläufige, nicht geplante Sätze weiter, deren Wirkung man nie vollständig überblickt$t$, true, 1),
    (v_q, $t$Bildung lässt sich vollständig in Lehrplänen erfassen$t$, false, 2),
    (v_q, $t$Nur gute Noten zeigen den Erfolg von Bildung$t$, false, 3),
    (v_q, $t$Bildung hat keinerlei langfristige Wirkung$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet „der Ruhestand“?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$die Zeit nach dem Berufsleben, die Rente$t$, true, 1),
    (v_q, $t$ein Zimmer zum Ausruhen$t$, false, 2),
    (v_q, $t$eine Art Urlaub$t$, false, 3),
    (v_q, $t$ein Möbelstück$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welches Wort ist im Text ein Synonym zu „Laufbahn“?$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Karriere$t$, true, 1),
    (v_q, $t$Straße$t$, false, 2),
    (v_q, $t$Reise$t$, false, 3),
    (v_q, $t$Prüfung$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet die Wendung „sich erschöpfen in“ im Kontext „Bildung erschöpfte sich nie in Lehrplänen“?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$sich vollständig auf etwas beschränken, darin aufgehen$t$, true, 1),
    (v_q, $t$körperlich müde werden$t$, false, 2),
    (v_q, $t$finanziell aufgebraucht werden$t$, false, 3),
    (v_q, $t$in etwas verschwinden und unauffindbar werden$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$In welcher Zeitform steht „korrigierte“?$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Präteritum$t$, true, 1),
    (v_q, $t$Präsens$t$, false, 2),
    (v_q, $t$Futur I$t$, false, 3),
    (v_q, $t$Imperativ$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welcher Modus liegt in „die Schüler seien wacher geworden“ vor?$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Konjunktiv I (indirekte Rede)$t$, true, 1),
    (v_q, $t$Indikativ Präsens$t$, false, 2),
    (v_q, $t$Imperativ$t$, false, 3),
    (v_q, $t$Konditional II$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche grammatische Funktion erfüllt der Konjunktiv in „seine gesamte Berufswahl bestimmt habe“?$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er kennzeichnet wiedergegebene Rede, deren Wahrheitsgehalt die Erzählinstanz nicht garantiert$t$, true, 1),
    (v_q, $t$Er drückt einen Befehl aus$t$, false, 2),
    (v_q, $t$Er markiert eine sichere, selbst bezeugte Tatsache$t$, false, 3),
    (v_q, $t$Er zeigt eine Zukunftshandlung an$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Frau Vogt trat nach zweiunddreißig Dienstjahren in den ___.$t$, 1, 'facile', 'lueckentext') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Ruhestand$t$, true, 1),
    (v_q, $t$Urlaub$t$, false, 2),
    (v_q, $t$Streik$t$, false, 3),
    (v_q, $t$Wettbewerb$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Am Anfang ihrer Laufbahn hatte sie mit ___ unterrichtet.$t$, 1, 'normal', 'lueckentext') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Kreide$t$, true, 1),
    (v_q, $t$Tablets$t$, false, 2),
    (v_q, $t$Büchern allein$t$, false, 3),
    (v_q, $t$Plakaten$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Bildung ___ sich nie in Lehrplänen, sondern lebte in flüchtigen Sätzen weiter.$t$, 1, 'difficile', 'lueckentext') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$erschöpfte$t$, true, 1),
    (v_q, $t$verdoppelte$t$, false, 2),
    (v_q, $t$bezahlte$t$, false, 3),
    (v_q, $t$bestrafte$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welcher Nebensatztyp liegt in „bevor sie in den Ruhestand trat“ vor?$t$, 1, 'facile', 'grammar') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Temporalsatz$t$, true, 1),
    (v_q, $t$Kausalsatz$t$, false, 2),
    (v_q, $t$Konzessivsatz$t$, false, 3),
    (v_q, $t$Finalsatz$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welches Stilmittel des gehobenen Registers zeigt sich in der Nominalisierung „ihre gesamte Berufswahl“?$t$, 1, 'normal', 'grammar') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Der nominale Stil, typisch für C1-Register, verdichtet einen Sachverhalt in einem Substantiv statt in einem Verbalsatz$t$, true, 1),
    (v_q, $t$Es handelt sich um einen einfachen Hauptsatz$t$, false, 2),
    (v_q, $t$Es ist ein Beispiel für direkte Rede$t$, false, 3),
    (v_q, $t$Es handelt sich um einen Imperativsatz$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche grammatische Struktur kennzeichnet den Satz „während sich um sie herum beinahe alles gewandelt hatte“?$t$, 1, 'difficile', 'grammar') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Ein Temporal-/Adversativsatz mit Plusquamperfekt zur Markierung der Vorzeitigkeit gegenüber der Haupthandlung$t$, true, 1),
    (v_q, $t$Ein einfacher Hauptsatz im Präsens$t$, false, 2),
    (v_q, $t$Ein Finalsatz mit Konjunktiv II$t$, false, 3),
    (v_q, $t$Ein Relativsatz ohne Bezugswort$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, justification)
    VALUES (v_story, $t$Frau Vogt unterrichtet am Ende der Geschichte noch dreißig weitere Jahre.$t$, 1, 'facile', 'true_false', $t$Sie tritt nach zweiunddreißig Dienstjahren in den Ruhestand; die Geschichte endet mit ihrem letzten Schultag.$t$) RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Wahr$t$, false, 1),
    (v_q, $t$Falsch$t$, true, 2);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, justification)
    VALUES (v_story, $t$Frau Vogt lehnt jede Veränderung im Schulsystem grundsätzlich ab.$t$, 1, 'normal', 'true_false', $t$Sie widerspricht der positiven Einschätzung der Schüler nicht, auch wenn sie manches vermisst.$t$) RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Wahr$t$, false, 1),
    (v_q, $t$Falsch$t$, true, 2);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, justification)
    VALUES (v_story, $t$Der Text suggeriert, dass sich der Wert des Lehrerberufs vor allem an messbaren Lehrplanzielen bemisst.$t$, 1, 'difficile', 'true_false', $t$Der Schluss betont im Gegenteil die unüberschaubare, beiläufige Wirkung einzelner Sätze jenseits des Lehrplans.$t$) RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Wahr$t$, false, 1),
    (v_q, $t$Falsch$t$, true, 2);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer, rubric)
    VALUES (v_story, $t$Schreiben Sie einen reflektierenden Text darüber, wie sich der Lehrerberuf und das Verhältnis zwischen Lehrern und Schülern über Generationen verändert haben könnten.$t$, 1, 'normal', 'production', $t$Der Lehrerberuf hat sich in den letzten Jahrzehnten sowohl äußerlich als auch im zugrunde liegenden Verständnis von Autorität stark gewandelt. Während früher Disziplin und stilles Zuhören als Zeichen guten Unterrichts galten, wird heute eher Wert auf kritisches Mitdenken und Beteiligung gelegt. Digitale Werkzeuge haben die äußere Form des Unterrichts verändert, ohne jedoch den eigentlichen pädagogischen Kern zu ersetzen. Entscheidend bleibt weiterhin die persönliche Beziehung zwischen Lehrperson und Schüler, die oft erst im Rückblick ihre volle Bedeutung entfaltet. So zeigt sich, dass Bildung nicht allein an Lehrplänen oder Methoden zu messen ist, sondern an jenen Momenten, die weit über den Unterricht hinauswirken. Der Wandel des Schulsystems ist daher weniger ein Bruch als eine Fortsetzung derselben grundlegenden Aufgabe unter veränderten Bedingungen.$t$, $t$[{"criterion":"Aufgabenerfüllung","description":"Der Text reflektiert differenziert über den Wandel des Lehrerberufs und bezieht sich erkennbar auf die Geschichte."},{"criterion":"Wortschatz","description":"Verwendung von C1-Vokabular zu Bildung, Autorität und gesellschaftlichem Wandel."},{"criterion":"Grammatik","description":"Korrekter Einsatz von Konjunktiv, Nominalstil und komplexen Nebensatzkonstruktionen."},{"criterion":"Kohärenz","description":"Logischer Aufbau mit klaren Übergängen zwischen Vergangenheit, Gegenwart und Schlussfolgerung."}]$t$::jsonb);

END $block$;

-- 2. Was die Schule nicht lehrte
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary, culture_note) VALUES (
    'C1',
    $t$Was die Schule nicht lehrte$t$,
    $t$Mit vierzig Jahren, auf der Beerdigung seines ehemaligen Klassenlehrers, versuchte Matthias sich zu erinnern, was er in dreizehn Schuljahren eigentlich gelernt hatte, und stellte fest, dass ihm ausgerechnet die Dinge entfallen waren, auf die man damals den größten Wert gelegt hatte. Die Jahreszahlen der Schlachten, die Nebenflüsse der Donau, die Formeln der Trigonometrie – all das war verblasst wie Tinte auf altem Papier, während sich andere, scheinbar nebensächliche Momente mit erstaunlicher Schärfe erhalten hatten.

Er erinnerte sich an eine Deutschstunde, in der der Lehrer einen Aufsatz zerriss, nicht aus Strafe, sondern weil er, wie er sagte, „ehrlicher als das“ von jedem Schüler erwartete; an den Nachmittag, an dem ein Mitschüler beim Vorlesen stotterte und die Klasse, zum ersten Mal, nicht lachte; an das Gefühl, in der zehnten Klasse zum ersten Mal etwas verteidigt zu haben, an das er wirklich glaubte, unabhängig davon, ob es die richtige Antwort war.

Die Schule, begriff er nun am offenen Grab, hatte ihm weniger Wissen vermittelt als Haltungen: die Fähigkeit, einen Fehler einzugestehen, ohne daran zu zerbrechen; das Misstrauen gegenüber vorschnellen Urteilen; die Ahnung, dass Autorität Rechenschaft schuldig blieb. Diese Lektionen standen in keinem Zeugnis, wurden von keiner Prüfung abgefragt, und doch waren sie es, die ihm später, im Berufsleben wie in Beziehungen, tatsächlich weitergeholfen hatten.

Als er den Sarg ins Grab hinabgleiten sah, dachte er, dass der Lehrer wohl nie erfahren hatte, wie viel mehr er unterrichtet hatte, als in seinem Lehrplan stand, und dass genau darin, in diesem Überschuss, die eigentliche Bildung gelegen hatte, ein Gedanke, den er sich vorgenommen hatte, bei nächster Gelegenheit auch seinem eigenen Sohn mitzuteilen, solange dieser noch jung genug war, um ihn zu verstehen, ohne ihn, wie so vieles andere, erst Jahrzehnte später begreifen zu müssen.$t$,
    $t$À quarante ans, aux funérailles de son ancien professeur principal, Matthias essaya de se rappeler ce qu'il avait réellement appris en treize années de scolarité, et constata que c'étaient précisément les choses auxquelles on avait alors accordé le plus d'importance qui lui avaient échappé. Les dates des batailles, les affluents du Danube, les formules de trigonométrie — tout cela s'était effacé comme de l'encre sur du vieux papier, tandis que d'autres moments, en apparence secondaires, s'étaient conservés avec une netteté étonnante.

Il se souvint d'un cours d'allemand où le professeur avait déchiré une rédaction, non par punition, mais parce qu'il attendait, disait-il, « plus d'honnêteté que cela » de chaque élève ; de cet après-midi où un camarade avait bégayé en lisant à voix haute et où la classe, pour la première fois, n'avait pas ri ; du sentiment d'avoir, en classe de quatrième, défendu pour la première fois quelque chose auquel il croyait vraiment, indépendamment du fait que ce fût la bonne réponse.

L'école, comprit-il alors devant la tombe ouverte, lui avait transmis moins de savoir que d'attitudes : la capacité à reconnaître une erreur sans s'effondrer ; la méfiance envers les jugements hâtifs ; l'intuition que l'autorité devait rendre des comptes. Ces leçons ne figuraient dans aucun bulletin, n'étaient contrôlées par aucun examen, et pourtant c'étaient elles qui, plus tard, dans sa vie professionnelle comme dans ses relations, lui avaient réellement été utiles.

En voyant le cercueil descendre dans la tombe, il pensa que le professeur n'avait sans doute jamais su combien il avait enseigné bien au-delà de son programme, et que c'était précisément dans cet excédent que résidait la véritable éducation, une pensée qu'il se promit de transmettre aussi, dès que l'occasion se présenterait, à son propre fils, tant qu'il serait encore assez jeune pour la comprendre sans devoir, comme tant d'autres choses, la saisir seulement des décennies plus tard.$t$,
    $t${"Mit":"à","vierzig":"quarante","Jahren":"ans","auf":"à","der":"le/la","Beerdigung":"enterrement","seines":"de son","ehemaligen":"ancien","Klassenlehrers":"professeur principal","versuchte":"essayait","Matthias":"Matthias","sich":"se","zu":"à","erinnern":"se rappeler","was":"ce que","er":"il","in":"en","dreizehn":"treize","Schuljahren":"années scolaires","eigentlich":"réellement","gelernt":"appris","hatte":"avait","und":"et","stellte":"constatait","fest":"(feststellen: constater)","dass":"que","ihm":"lui","ausgerechnet":"précisément","die":"les","Dinge":"choses","entfallen":"échappées (à la mémoire)","waren":"étaient","man":"on","damals":"alors","den":"la (accusatif)","größten":"la plus grande","Wert":"importance","gelegt":"accordée","Die":"les","Jahreszahlen":"dates","Schlachten":"batailles","Nebenflüsse":"affluents","Donau":"Danube","Formeln":"formules","Trigonometrie":"trigonométrie","all":"tout","das":"cela","war":"était","verblasst":"effacé","wie":"comme","Tinte":"encre","altem":"vieux","Papier":"papier","während":"tandis que","andere":"d'autres","scheinbar":"en apparence","nebensächliche":"secondaires","Momente":"moments","mit":"avec","erstaunlicher":"étonnante","Schärfe":"netteté","erhalten":"conservés","hatten":"avaient","Er":"il","erinnerte":"se souvenait","an":"de","eine":"un","Deutschstunde":"cours d'allemand","Lehrer":"professeur","einen":"une","Aufsatz":"rédaction","zerriss":"déchira","nicht":"pas","aus":"par","Strafe":"punition","sondern":"mais","weil":"parce que","sagte":"disait","ehrlicher":"plus honnête","als":"que","von":"de","jedem":"chaque","Schüler":"élève","erwartete":"attendait","Nachmittag":"après-midi","dem":"lequel","ein":"un","Mitschüler":"camarade","beim":"en (beim Vorlesen: en lisant)","Vorlesen":"lecture à voix haute","stotterte":"bégayait","Klasse":"classe","zum":"pour la","ersten":"première","Mal":"fois","lachte":"riait","Gefühl":"sentiment","zehnten":"dixième","etwas":"quelque chose","verteidigt":"défendu","haben":"avoir","wirklich":"vraiment","glaubte":"croyait","unabhängig":"indépendamment","davon":"de cela","ob":"si","es":"cela","richtige":"bonne","Antwort":"réponse","Schule":"école","begriff":"comprit","nun":"alors","am":"au (offenen Grab)","offenen":"ouverte","Grab":"tombe","weniger":"moins","Wissen":"savoir","vermittelt":"transmis","Haltungen":"attitudes","Fähigkeit":"capacité","Fehler":"erreur","einzugestehen":"reconnaître","ohne":"sans","daran":"en cela","zerbrechen":"s'effondrer","Misstrauen":"méfiance","gegenüber":"envers","vorschnellen":"hâtifs","Urteilen":"jugements","Ahnung":"intuition","Autorität":"autorité","Rechenschaft":"reddition de comptes","schuldig":"redevable","blieb":"restait","Diese":"ces","Lektionen":"leçons","standen":"figuraient","keinem":"aucun","Zeugnis":"bulletin","wurden":"étaient","keiner":"aucun","Prüfung":"examen","abgefragt":"contrôlées","doch":"pourtant","sie":"elles","später":"plus tard","im":"dans la","Berufsleben":"vie professionnelle","Beziehungen":"relations","tatsächlich":"réellement","weitergeholfen":"été utile","Als":"quand","Sarg":"cercueil","ins":"dans la","hinabgleiten":"descendre","sah":"vit","dachte":"pensait","wohl":"sans doute","nie":"jamais","erfahren":"su","viel":"beaucoup","mehr":"plus","unterrichtet":"enseigné","seinem":"son","Lehrplan":"programme scolaire","stand":"figurait","genau":"précisément","darin":"en cela","diesem":"cet","Überschuss":"excédent","eigentliche":"véritable","Bildung":"éducation","gelegen":"résidé","Gedanke":"pensée","vorgenommen":"résolu","bei":"à (bei Gelegenheit)","nächster":"prochaine","Gelegenheit":"occasion","auch":"aussi","eigenen":"propre","Sohn":"fils","mitzuteilen":"communiquer","solange":"tant que","dieser":"celui-ci","noch":"encore","jung":"jeune","genug":"assez","um":"pour","ihn":"le","verstehen":"comprendre","so":"si","vieles":"tant de choses","erst":"seulement","Jahrzehnte":"décennies","begreifen":"comprendre","müssen":"devoir"}$t$::jsonb,
    $t$Fiction originale sur l'héritage réel de la scolarité allemande$t$
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Bei welchem Anlass erinnert sich Matthias an seine Schulzeit?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Bei der Beerdigung seines ehemaligen Klassenlehrers$t$, true, 1),
    (v_q, $t$Bei einem Klassentreffen$t$, false, 2),
    (v_q, $t$Bei der Einschulung seines Kindes$t$, false, 3),
    (v_q, $t$Bei einer Familienfeier$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was stellt Matthias fest, als er über seine Schulzeit nachdenkt?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Gerade das damals besonders betonte Wissen ist ihm entfallen$t$, true, 1),
    (v_q, $t$Er erinnert sich an jede Jahreszahl genau$t$, false, 2),
    (v_q, $t$Er hat die Schule nie wirklich vergessen$t$, false, 3),
    (v_q, $t$Er hat nur positive Erinnerungen an Prüfungen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Funktion hat der Vergleich „verblasst wie Tinte auf altem Papier“?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er verbildlicht das allmähliche, unwiederbringliche Verblassen von Faktenwissen im Gedächtnis$t$, true, 1),
    (v_q, $t$Er beschreibt konkret ein altes Schulheft$t$, false, 2),
    (v_q, $t$Er zeigt, dass Matthias schlecht sehen kann$t$, false, 3),
    (v_q, $t$Er ist ein Hinweis auf einen historischen Brief$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was tut der Lehrer mit einem Aufsatz von Matthias?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er zerreißt ihn, weil er mehr Ehrlichkeit erwartet$t$, true, 1),
    (v_q, $t$Er hängt ihn an die Wand$t$, false, 2),
    (v_q, $t$Er liest ihn der ganzen Schule vor$t$, false, 3),
    (v_q, $t$Er verliert ihn$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was passiert, als ein Mitschüler beim Vorlesen stottert?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Die Klasse lacht zum ersten Mal nicht$t$, true, 1),
    (v_q, $t$Alle lachen laut$t$, false, 2),
    (v_q, $t$Der Lehrer wird wütend$t$, false, 3),
    (v_q, $t$Der Mitschüler verlässt das Klassenzimmer$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Bedeutung hat das Nicht-Lachen der Klasse im Kontext der Erzählung?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Es markiert einen stillen moralischen Reifeschritt der Gruppe, der wichtiger erscheint als jede Lehrplanleistung$t$, true, 1),
    (v_q, $t$Es zeigt, dass die Klasse gleichgültig geworden ist$t$, false, 2),
    (v_q, $t$Es beweist, dass der Mitschüler die Klasse verlassen hat$t$, false, 3),
    (v_q, $t$Es ist reiner Zufall ohne Bedeutung$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was hat die Schule Matthias laut dem Text vor allem vermittelt?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Haltungen statt reines Wissen$t$, true, 1),
    (v_q, $t$Ausschließlich Faktenwissen$t$, false, 2),
    (v_q, $t$Nur sportliche Fähigkeiten$t$, false, 3),
    (v_q, $t$Fremdsprachenkenntnisse$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche der folgenden Haltungen nennt der Text ausdrücklich?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Die Fähigkeit, einen Fehler einzugestehen, ohne daran zu zerbrechen$t$, true, 1),
    (v_q, $t$Die Fähigkeit, immer Recht zu behalten$t$, false, 2),
    (v_q, $t$Die Fähigkeit, Konflikte zu vermeiden$t$, false, 3),
    (v_q, $t$Die Fähigkeit, schnell auswendig zu lernen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was meint Matthias mit dem „Überschuss“, in dem die eigentliche Bildung gelegen habe?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Das, was ein Lehrer über den offiziellen Lehrplan hinaus an Haltung und Vorbild vermittelt$t$, true, 1),
    (v_q, $t$Die Menge an Hausaufgaben, die der Lehrer gab$t$, false, 2),
    (v_q, $t$Die zusätzlichen Unterrichtsstunden am Nachmittag$t$, false, 3),
    (v_q, $t$Das zusätzliche Geld, das der Lehrer verdiente$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet „entfallen“ im Satz „die Dinge waren ihm entfallen“?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$aus dem Gedächtnis verschwunden sein$t$, true, 1),
    (v_q, $t$heruntergefallen sein$t$, false, 2),
    (v_q, $t$verboten worden sein$t$, false, 3),
    (v_q, $t$gestohlen worden sein$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welches Wort ist ein Synonym zu „Haltung“ im Sinne des Textes?$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$innere Einstellung$t$, true, 1),
    (v_q, $t$Körperhaltung im Sitzen$t$, false, 2),
    (v_q, $t$Möbelstück$t$, false, 3),
    (v_q, $t$Sportübung$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet „Rechenschaft schuldig bleiben“?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$sich für sein Handeln nicht rechtfertigen, obwohl man es müsste$t$, true, 1),
    (v_q, $t$eine Geldschuld nicht begleichen$t$, false, 2),
    (v_q, $t$eine Prüfung nicht bestehen$t$, false, 3),
    (v_q, $t$ein Versprechen sofort einlösen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Zeitform dominiert die Rückblende (z. B. „zerriss“, „stotterte“)?$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Präteritum$t$, true, 1),
    (v_q, $t$Präsens$t$, false, 2),
    (v_q, $t$Futur I$t$, false, 3),
    (v_q, $t$Imperativ$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Zeitform liegt in „was er...gelernt hatte“ vor?$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Plusquamperfekt$t$, true, 1),
    (v_q, $t$Perfekt$t$, false, 2),
    (v_q, $t$Futur II$t$, false, 3),
    (v_q, $t$Konjunktiv II$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Funktion hat das Plusquamperfekt in „all das war verblasst..., während sich andere...Momente...erhalten hatten“?$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Es markiert zwei parallele, der Beerdigung vorzeitige Vergangenheitsebenen, deren Kontrast betont wird$t$, true, 1),
    (v_q, $t$Es zeigt eine gleichzeitig ablaufende Zukunftshandlung an$t$, false, 2),
    (v_q, $t$Es ersetzt den Konjunktiv in der indirekten Rede$t$, false, 3),
    (v_q, $t$Es hat rein stilistische, keine zeitliche Funktion$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Matthias war bei der ___ seines ehemaligen Lehrers.$t$, 1, 'facile', 'lueckentext') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Beerdigung$t$, true, 1),
    (v_q, $t$Hochzeit$t$, false, 2),
    (v_q, $t$Geburtstagsfeier$t$, false, 3),
    (v_q, $t$Beförderung$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Der Lehrer zerriss den Aufsatz, weil er mehr ___ erwartete.$t$, 1, 'normal', 'lueckentext') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Ehrlichkeit$t$, true, 1),
    (v_q, $t$Länge$t$, false, 2),
    (v_q, $t$Geschwindigkeit$t$, false, 3),
    (v_q, $t$Ordnung$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Die eigentliche Bildung lag laut Matthias in jenem ___, den der Lehrer über den Lehrplan hinaus vermittelte.$t$, 1, 'difficile', 'lueckentext') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Überschuss$t$, true, 1),
    (v_q, $t$Zeugnis$t$, false, 2),
    (v_q, $t$Stundenplan$t$, false, 3),
    (v_q, $t$Klassenbuch$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Satzart ist „was er in dreizehn Schuljahren eigentlich gelernt hatte“?$t$, 1, 'facile', 'grammar') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Ein indirekter Fragesatz (Objektsatz)$t$, true, 1),
    (v_q, $t$Ein Hauptsatz$t$, false, 2),
    (v_q, $t$Ein Relativsatz$t$, false, 3),
    (v_q, $t$Ein Finalsatz$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welches Stilmittel liegt in der Aufzählung „die Jahreszahlen der Schlachten, die Nebenflüsse der Donau, die Formeln der Trigonometrie“ vor?$t$, 1, 'normal', 'grammar') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Eine Aufzählung (Enumeration), die konkrete Beispiele für abstraktes Schulwissen liefert$t$, true, 1),
    (v_q, $t$Eine Anapher am Satzanfang$t$, false, 2),
    (v_q, $t$Ein Vergleich mit Tieren$t$, false, 3),
    (v_q, $t$Eine rhetorische Frage$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie lässt sich der Doppelpunkt in „hatte ihm weniger Wissen vermittelt als Haltungen: die Fähigkeit...“ grammatisch-stilistisch beschreiben?$t$, 1, 'difficile', 'grammar') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er leitet eine erläuternde Aufzählung/Explikation ein, die den vorangehenden abstrakten Begriff konkretisiert$t$, true, 1),
    (v_q, $t$Er kennzeichnet eine wörtliche Rede$t$, false, 2),
    (v_q, $t$Er markiert einen Gegensatz zwischen zwei Hauptsätzen$t$, false, 3),
    (v_q, $t$Er zeigt eine Zeitangabe an$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, justification)
    VALUES (v_story, $t$Matthias erinnert sich am besten an die Jahreszahlen der Schlachten.$t$, 1, 'facile', 'true_false', $t$Gerade dieses Faktenwissen ist verblasst; erhalten geblieben sind scheinbar nebensächliche Momente.$t$) RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Wahr$t$, false, 1),
    (v_q, $t$Falsch$t$, true, 2);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, justification)
    VALUES (v_story, $t$Der Text stellt Faktenwissen über den Wert menschlicher Haltungen, die die Schule vermittelt.$t$, 1, 'normal', 'true_false', $t$Der Text tut das Gegenteil: Er zeigt, dass Haltungen wichtiger waren als reines Faktenwissen.$t$) RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Wahr$t$, false, 1),
    (v_q, $t$Falsch$t$, true, 2);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, justification)
    VALUES (v_story, $t$Der Text suggeriert, dass Bildung sich vollständig durch Zeugnisse und Prüfungen erfassen lässt.$t$, 1, 'difficile', 'true_false', $t$Im Gegenteil: Die entscheidenden Lektionen standen in keinem Zeugnis und wurden von keiner Prüfung abgefragt.$t$) RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Wahr$t$, false, 1),
    (v_q, $t$Falsch$t$, true, 2);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer, rubric)
    VALUES (v_story, $t$Verfassen Sie einen Text darüber, welche nicht-fachlichen Kompetenzen (Haltungen, Werte) Schule Ihrer Meinung nach vermitteln sollte und warum diese ebenso wichtig sind wie Fachwissen.$t$, 1, 'normal', 'production', $t$Schule sollte über die reine Vermittlung von Fachwissen hinaus auch grundlegende Haltungen fördern, etwa die Fähigkeit zur Selbstkritik, Respekt gegenüber anderen Meinungen und den Mut, eigene Überzeugungen zu vertreten. Solche Kompetenzen lassen sich zwar schwer prüfen, wirken jedoch oft länger nach als konkretes Faktenwissen, das mit der Zeit verblasst. Wie die Geschichte von Matthias zeigt, sind es häufig einzelne, unscheinbare Momente im Unterricht, die prägender wirken als der offizielle Lehrplan. Eine Schule, die ausschließlich auf messbare Leistungen fokussiert ist, läuft Gefahr, diese informelle, aber wesentliche Dimension von Bildung zu vernachlässigen. Langfristig entscheidet oft die Haltung, mit der ein Mensch Herausforderungen begegnet, über seinen Erfolg mehr als angehäuftes Detailwissen. Bildungspolitik sollte daher Raum für solche informellen Lernprozesse bewusst offenhalten.$t$, $t$[{"criterion":"Aufgabenerfüllung","description":"Der Text benennt konkrete nicht-fachliche Kompetenzen und begründet ihre Bedeutung nachvollziehbar."},{"criterion":"Wortschatz","description":"Angemessener Einsatz von C1-Wortschatz zu Bildung, Werten und Persönlichkeitsentwicklung."},{"criterion":"Grammatik","description":"Korrekte komplexe Satzgefüge, Nominalisierungen und Konjunktivformen."},{"criterion":"Kohärenz","description":"Klarer, logisch aufgebauter Argumentationsgang mit Beispielbezug."}]$t$::jsonb);

END $block$;

-- 3. Die Ehrenrunde
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary, culture_note) VALUES (
    'C1',
    $t$Die Ehrenrunde$t$,
    $t$Als der Klassenlehrer Jonas mitteilte, er werde die achte Klasse wiederholen müssen, erwartete Jonas Tränen von seiner Mutter, Schweigen von seinem Vater und, schlimmer noch, das Getuschel der Mitschüler, die das Wort „sitzengeblieben“ wie eine Diagnose aussprachen. Stattdessen sagte sein Vater nach dem Abendessen nur, er selbst habe die siebte Klasse wiederholt und sei dennoch, wie man sehe, kein gescheiterter Mensch geworden. Jonas glaubte ihm nicht, jedenfalls nicht sofort.

Der Sommer verging in einer merkwürdigen Schwebe zwischen Scham und Erleichterung. Scham, weil er sich fortan neben Jüngeren würde einordnen müssen, deren Respekt er sich, wie er fürchtete, würde neu erarbeiten müssen; Erleichterung, weil der Druck der vergangenen Monate, in denen jede Klassenarbeit über seine gesamte Zukunft zu entscheiden schien, plötzlich von ihm abfiel. Im September betrat er ein Klassenzimmer, in dem er niemanden kannte, und entdeckte, zu seiner Überraschung, dass ihn dort niemand als den Wiederholer wahrnahm, sondern schlicht als neuen Mitschüler.

Was folgte, war keine triumphale Wendung, sondern etwas Unspektakuläreres: Er verstand plötzlich den Bruch, an dem er im Vorjahr gescheitert war, weil ihm dieses Mal die Zeit fehlte, in Panik zu geraten. Die wiederholten Monate wurden nicht zu verlorener Zeit, sondern zu jenem Umweg, den, wie er später begriff, nicht jeder Lernprozess vermeiden kann, ohne oberflächlich zu bleiben.

Jahre später, als angehender Ingenieur, erzählte er seinen eigenen Schülern in einer Nachhilfestunde gelegentlich von jener Ehrenrunde, nicht um sie zu trösten, sondern um ihnen zu zeigen, dass ein Umweg selten das Ende einer Geschichte bedeutet, sondern häufig nur deren notwendige Verlängerung, und dass es sich, so fügte er stets hinzu, allemal lohne, die eigene Scham zu überwinden und einer Klasse zu begegnen, in der man anfangs niemand ist, bevor man erneut jemand wird.$t$,
    $t$Quand le professeur principal annonça à Jonas qu'il devrait redoubler sa classe de quatrième, Jonas s'attendait aux larmes de sa mère, au silence de son père et, pire encore, aux chuchotements des camarades qui prononçaient le mot « redoublant » comme un diagnostic. Au lieu de cela, son père se contenta de dire, après le dîner, qu'il avait lui-même redoublé sa classe de cinquième et n'était pourtant devenu, comme on pouvait le constater, un homme raté. Jonas ne le crut pas, du moins pas tout de suite.

L'été passa dans une étrange suspension entre honte et soulagement. Honte, parce qu'il lui faudrait désormais se ranger parmi des plus jeunes, dont il craignait de devoir regagner le respect ; soulagement, parce que la pression des mois précédents, durant lesquels chaque contrôle semblait décider de tout son avenir, retomba soudain. En septembre, il entra dans une salle de classe où il ne connaissait personne, et découvrit, à sa surprise, que là-bas personne ne le percevait comme le redoublant, mais simplement comme un nouveau camarade.

Ce qui suivit ne fut pas un retournement triomphal, mais quelque chose de plus discret : il comprit soudain la notion qui l'avait fait échouer l'année précédente, parce que cette fois-ci le temps ne lui manquait pas pour paniquer. Les mois redoublés ne devinrent pas du temps perdu, mais ce détour que, comme il le comprit plus tard, aucun processus d'apprentissage ne peut vraiment éviter sans rester superficiel.

Des années plus tard, futur ingénieur, il racontait parfois à ses propres élèves, lors d'un cours de soutien, cette année supplémentaire, non pour les consoler, mais pour leur montrer qu'un détour signifie rarement la fin d'une histoire, mais en constitue souvent seulement le prolongement nécessaire, et qu'il valait toujours la peine, ajoutait-il invariablement, de surmonter sa propre honte et d'affronter une classe où l'on n'est d'abord personne, avant d'y redevenir quelqu'un.$t$,
    $t${"Als":"quand","der":"le","Klassenlehrer":"professeur principal","Jonas":"Jonas","mitteilte":"annonçait","er":"il","werde":"devrait","die":"la","achte":"huitième","Klasse":"classe","wiederholen":"redoubler","müssen":"devoir","erwartete":"s'attendait à","Tränen":"larmes","von":"de","seiner":"sa","Mutter":"mère","Schweigen":"silence","seinem":"son","Vater":"père","und":"et","schlimmer":"pire","noch":"encore","das":"le","Getuschel":"chuchotements","Mitschüler":"camarades","Wort":"mot","sitzengeblieben":"redoublant","wie":"comme","eine":"un","Diagnose":"diagnostic","aussprachen":"prononçaient","Stattdessen":"au lieu de cela","sagte":"disait","sein":"son","nach":"après","dem":"le","Abendessen":"dîner","nur":"seulement","selbst":"lui-même","habe":"ait","siebte":"septième","wiederholt":"redoublé","sei":"soit","dennoch":"pourtant","man":"on","sehe":"voie","kein":"aucun","gescheiterter":"raté","Mensch":"homme","geworden":"devenu","glaubte":"croyait","ihm":"lui","nicht":"pas","jedenfalls":"en tout cas","sofort":"tout de suite","Der":"l'","Sommer":"été","verging":"passa","in":"dans","einer":"une","merkwürdigen":"étrange","Schwebe":"suspension","zwischen":"entre","Scham":"honte","Erleichterung":"soulagement","weil":"parce que","sich":"se","fortan":"désormais","neben":"à côté de","Jüngeren":"plus jeunes","würde":"devrait","einordnen":"se ranger","deren":"dont","Respekt":"respect","fürchtete":"craignait","neu":"de nouveau","erarbeiten":"regagner","Druck":"pression","vergangenen":"précédents","Monate":"mois","denen":"lesquels","jede":"chaque","Klassenarbeit":"contrôle","über":"sur","seine":"son","gesamte":"tout entier","Zukunft":"avenir","zu":"à","entscheiden":"décider","schien":"semblait","plötzlich":"soudain","abfiel":"retombait","Im":"en","September":"septembre","betrat":"entrait dans","ein":"une","Klassenzimmer":"salle de classe","niemanden":"personne","kannte":"connaissait","entdeckte":"découvrait","Überraschung":"surprise","dass":"que","ihn":"le","dort":"là-bas","niemand":"personne","als":"comme","den":"le","Wiederholer":"redoublant","wahrnahm":"percevait","sondern":"mais","schlicht":"simplement","neuen":"nouveau","Was":"ce qui","folgte":"suivait","war":"était","keine":"aucun","triumphale":"triomphale","Wendung":"retournement","etwas":"quelque chose","Unspektakuläreres":"de plus discret","Er":"il","verstand":"comprit","Bruch":"la notion/rupture","an":"à","im":"dans l'","Vorjahr":"année précédente","gescheitert":"échoué","dieses":"cette","Mal":"fois","Zeit":"temps","fehlte":"manquait","Panik":"panique","geraten":"tomber","Die":"les","wiederholten":"redoublés","wurden":"devinrent","verlorener":"perdu","jenem":"ce","Umweg":"détour","später":"plus tard","begriff":"comprit","jeder":"chaque","Lernprozess":"processus d'apprentissage","vermeiden":"éviter","kann":"peut","ohne":"sans","oberflächlich":"superficiel","bleiben":"rester","Jahre":"années","angehender":"futur","Ingenieur":"ingénieur","erzählte":"racontait","seinen":"ses","eigenen":"propres","Schülern":"élèves","Nachhilfestunde":"cours de soutien","gelegentlich":"parfois","jener":"ce","Ehrenrunde":"tour d'honneur","um":"pour","sie":"les","trösten":"consoler","ihnen":"leur","zeigen":"montrer","selten":"rarement","Ende":"fin","Geschichte":"histoire","bedeutet":"signifie","häufig":"souvent","notwendige":"nécessaire","Verlängerung":"prolongement","es":"il","so":"ainsi","fügte":"ajoutait","stets":"toujours","hinzu":"(hinzufügen: ajouter)","allemal":"toujours","lohne":"vaille la peine","eigene":"propre","überwinden":"surmonter","begegnen":"affronter","anfangs":"au début","ist":"est","bevor":"avant que","erneut":"de nouveau","jemand":"quelqu'un","wird":"devient"}$t$::jsonb,
    $t$Fiction originale sur le redoublement dans le système scolaire allemand$t$
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was teilt der Klassenlehrer Jonas mit?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Dass er die achte Klasse wiederholen muss$t$, true, 1),
    (v_q, $t$Dass er die Klasse wechseln muss$t$, false, 2),
    (v_q, $t$Dass er die Schule verlassen muss$t$, false, 3),
    (v_q, $t$Dass er versetzt wird$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie reagiert Jonas' Vater auf die Nachricht?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er erzählt, dass er selbst eine Klasse wiederholt hat und trotzdem kein gescheiterter Mensch geworden ist$t$, true, 1),
    (v_q, $t$Er wird sehr wütend$t$, false, 2),
    (v_q, $t$Er verbietet Jonas den Kontakt zu Freunden$t$, false, 3),
    (v_q, $t$Er zieht mit der Familie um$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Funktion hat die Reaktion des Vaters für die weitere Erzählung?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie relativiert von Anfang an das gesellschaftliche Stigma des Sitzenbleibens und bereitet die spätere positive Deutung vor$t$, true, 1),
    (v_q, $t$Sie zeigt, dass der Vater das Sitzenbleiben verharmlost und keine Konsequenzen zieht$t$, false, 2),
    (v_q, $t$Sie hat keinerlei Bedeutung für die Handlung$t$, false, 3),
    (v_q, $t$Sie beweist, dass der Vater selbst nie eine Klasse wiederholt hat$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie fühlt sich Jonas im Sommer nach der Nachricht?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Zwischen Scham und Erleichterung$t$, true, 1),
    (v_q, $t$Nur wütend$t$, false, 2),
    (v_q, $t$Ausschließlich glücklich$t$, false, 3),
    (v_q, $t$Völlig gleichgültig$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was entdeckt Jonas im September in seiner neuen Klasse?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Dass ihn dort niemand als Wiederholer wahrnimmt, sondern als neuen Mitschüler$t$, true, 1),
    (v_q, $t$Dass alle ihn sofort ablehnen$t$, false, 2),
    (v_q, $t$Dass er den Stoff bereits vollständig beherrscht$t$, false, 3),
    (v_q, $t$Dass die neue Klasse viel strenger ist$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Worin besteht laut Text die eigentliche Erleichterung für Jonas im Sommer?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Im Wegfall des Drucks, dass jede Klassenarbeit über seine gesamte Zukunft entscheiden könnte$t$, true, 1),
    (v_q, $t$In der Aussicht auf längere Sommerferien$t$, false, 2),
    (v_q, $t$In der Zusicherung, nie wieder Prüfungen ablegen zu müssen$t$, false, 3),
    (v_q, $t$In dem Versprechen finanzieller Unterstützung$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was ist Jonas später von Beruf?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Angehender Ingenieur$t$, true, 1),
    (v_q, $t$Lehrer$t$, false, 2),
    (v_q, $t$Arzt$t$, false, 3),
    (v_q, $t$Anwalt$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum erzählt Jonas seinen eigenen Schülern später von seiner Wiederholung?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Um ihnen zu zeigen, dass ein Umweg oft nur eine notwendige Verlängerung des Weges ist$t$, true, 1),
    (v_q, $t$Um sie zu beschämen$t$, false, 2),
    (v_q, $t$Um ihnen Angst vor dem Sitzenbleiben zu machen$t$, false, 3),
    (v_q, $t$Um mit seiner Vergangenheit anzugeben$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie deutet der Text insgesamt das Motiv des Sitzenbleibens um?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Vom gesellschaftlichen Stigma des Scheiterns hin zu einer notwendigen, sinnvollen Verzögerung im individuellen Lernprozess$t$, true, 1),
    (v_q, $t$Als endgültigen Beweis persönlichen Versagens ohne jede positive Wendung$t$, false, 2),
    (v_q, $t$Als reines Verwaltungsproblem der Schule ohne persönliche Bedeutung$t$, false, 3),
    (v_q, $t$Als Strafe, die Jonas dauerhaft schadet$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet „sitzengeblieben“ im schulischen Kontext?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$eine Klasse wiederholen müssen$t$, true, 1),
    (v_q, $t$in der Schule sitzen bleiben statt zu stehen$t$, false, 2),
    (v_q, $t$die Schule frühzeitig verlassen$t$, false, 3),
    (v_q, $t$eine Prüfung mit Bestnote bestehen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welches Wort ist im Text ein Synonym zu „Erleichterung“?$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Befreiung von Druck$t$, true, 1),
    (v_q, $t$Verstärkung des Drucks$t$, false, 2),
    (v_q, $t$Bestrafung$t$, false, 3),
    (v_q, $t$Verwirrung$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet die Metapher „jene Ehrenrunde“ im übertragenen Sinn des Textes?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Eine zusätzliche, zunächst als Rückschlag empfundene Runde/Wiederholung, die sich rückblickend als sinnvoll erweist$t$, true, 1),
    (v_q, $t$Eine tatsächliche sportliche Ehrenrunde nach einem Wettkampf$t$, false, 2),
    (v_q, $t$Eine besondere Auszeichnung für gute Schüler$t$, false, 3),
    (v_q, $t$Ein Fehler, der niemals positive Folgen hat$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Zeitform liegt in „verging“ vor?$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Präteritum$t$, true, 1),
    (v_q, $t$Präsens$t$, false, 2),
    (v_q, $t$Perfekt$t$, false, 3),
    (v_q, $t$Futur I$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Form liegt in „er werde die achte Klasse wiederholen müssen“ vor?$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Konjunktiv I (indirekte Rede) mit Modalverb$t$, true, 1),
    (v_q, $t$Indikativ Präsens$t$, false, 2),
    (v_q, $t$Imperativ$t$, false, 3),
    (v_q, $t$Konjunktiv II Vergangenheit$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Funktion erfüllt der Konjunktiv II in „er würde neu erarbeiten müssen“?$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er drückt eine als sicher erwartete, aber (noch) nicht eingetretene Zukunftsbefürchtung aus der Innenperspektive der Figur aus$t$, true, 1),
    (v_q, $t$Er markiert eine reine Höflichkeitsform$t$, false, 2),
    (v_q, $t$Er kennzeichnet eine abgeschlossene Vergangenheitshandlung$t$, false, 3),
    (v_q, $t$Er wird hier rein zufällig statt des Indikativs verwendet$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Jonas muss die achte Klasse ___.$t$, 1, 'facile', 'lueckentext') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$wiederholen$t$, true, 1),
    (v_q, $t$überspringen$t$, false, 2),
    (v_q, $t$verlassen$t$, false, 3),
    (v_q, $t$loben$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Im September entdeckt Jonas, dass ihn niemand als ___ wahrnimmt.$t$, 1, 'normal', 'lueckentext') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Wiederholer$t$, true, 1),
    (v_q, $t$Klassensprecher$t$, false, 2),
    (v_q, $t$Streber$t$, false, 3),
    (v_q, $t$Außenseiter$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Ein Umweg bedeutet selten das Ende einer Geschichte, sondern häufig nur deren notwendige ___.$t$, 1, 'difficile', 'lueckentext') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Verlängerung$t$, true, 1),
    (v_q, $t$Abkürzung$t$, false, 2),
    (v_q, $t$Bestrafung$t$, false, 3),
    (v_q, $t$Wiederholungsprüfung$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Wortart ist „triumphale“ in „keine triumphale Wendung“?$t$, 1, 'facile', 'grammar') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Adjektiv$t$, true, 1),
    (v_q, $t$Substantiv$t$, false, 2),
    (v_q, $t$Verb$t$, false, 3),
    (v_q, $t$Adverb$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welches Stilmittel liegt in der Gegenüberstellung „Scham...Erleichterung“ vor?$t$, 1, 'normal', 'grammar') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Eine Antithese, die zwei gegensätzliche Gefühle desselben Ereignisses nebeneinanderstellt$t$, true, 1),
    (v_q, $t$Eine Alliteration$t$, false, 2),
    (v_q, $t$Eine Anapher$t$, false, 3),
    (v_q, $t$Eine Personifikation$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie ist der Satzbau in „Scham, weil er sich fortan neben Jüngeren würde einordnen müssen...; Erleichterung, weil...“ stilistisch zu beschreiben?$t$, 1, 'difficile', 'grammar') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Ein parallel konstruierter, elliptischer Satzbau, der zwei Kausalsätze symmetrisch um ein Substantiv gruppiert$t$, true, 1),
    (v_q, $t$Ein einfacher Hauptsatz ohne Nebensätze$t$, false, 2),
    (v_q, $t$Eine Reihe unabhängiger Ausrufesätze$t$, false, 3),
    (v_q, $t$Eine indirekte Frage ohne Bezugswort$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, justification)
    VALUES (v_story, $t$Jonas' Vater hat selbst nie eine Klasse wiederholt.$t$, 1, 'facile', 'true_false', $t$Der Vater erzählt, dass er selbst die siebte Klasse wiederholt hat.$t$) RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Wahr$t$, false, 1),
    (v_q, $t$Falsch$t$, true, 2);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, justification)
    VALUES (v_story, $t$In der neuen Klasse wird Jonas sofort als Wiederholer erkannt und gemieden.$t$, 1, 'normal', 'true_false', $t$Zu seiner Überraschung nimmt ihn dort niemand als Wiederholer wahr, sondern nur als neuen Mitschüler.$t$) RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Wahr$t$, false, 1),
    (v_q, $t$Falsch$t$, true, 2);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, justification)
    VALUES (v_story, $t$Der Text stellt das Wiederholen einer Klasse letztlich als sinnlosen Zeitverlust dar.$t$, 1, 'difficile', 'true_false', $t$Im Gegenteil: Die wiederholten Monate werden als notwendiger Umweg gedeutet, der zum tieferen Verständnis führt.$t$) RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Wahr$t$, false, 1),
    (v_q, $t$Falsch$t$, true, 2);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer, rubric)
    VALUES (v_story, $t$Nehmen Sie Stellung dazu, ob das Wiederholen einer Klasse eine sinnvolle pädagogische Maßnahme sein kann, und begründen Sie Ihre Position.$t$, 1, 'normal', 'production', $t$Das Wiederholen einer Klasse wird gesellschaftlich oft als Scheitern wahrgenommen, kann jedoch, wie die Geschichte von Jonas zeigt, auch eine notwendige zweite Chance darstellen. Entscheidend ist dabei weniger der formale Umstand der Wiederholung als die innere Verarbeitung, die ein Schüler dadurch leisten kann, ohne unter dem Druck der ursprünglichen Klasse zu stehen. Kritiker wenden ein, dass Wiederholungen stigmatisierend wirken und Selbstwertgefühl beschädigen können, insbesondere wenn das soziale Umfeld unsensibel reagiert. Andererseits zeigt das Beispiel, dass ein neues Umfeld genau diese Stigmatisierung verhindern kann, wenn Mitschüler den Betroffenen unvoreingenommen begegnen. Letztlich sollte die Entscheidung individuell getroffen werden, abhängig davon, ob zusätzliche Zeit dem Schüler tatsächlich hilft, Lücken zu schließen. Eine pauschale Verurteilung des Wiederholens wird der Komplexität individueller Lernprozesse daher nicht gerecht.$t$, $t$[{"criterion":"Aufgabenerfüllung","description":"Es wird eine klare, begründete Position zum Wiederholen einer Klasse entwickelt."},{"criterion":"Wortschatz","description":"Differenzierter Wortschatz zu Schule, Leistung und psychischer Belastung."},{"criterion":"Grammatik","description":"Komplexe Argumentationssätze mit Konjunktionen wie „obwohl“, „während“, „andererseits“."},{"criterion":"Kohärenz","description":"Argumente und Gegenargumente werden logisch verknüpft und abgewogen."}]$t$::jsonb);

END $block$;

-- 4. Der Rektor und die Akte
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary, culture_note) VALUES (
    'C1',
    $t$Der Rektor und die Akte$t$,
    $t$Rektor Brenner hielt die Akte seit drei Tagen ungeöffnet auf seinem Schreibtisch liegen, als wäre die bloße Nähe zu den Unterlagen bereits eine Form von Mitwisserschaft. Ein Kollege hatte, wie sich aus einer anonymen Nachricht ergab, versehentlich die Prüfungsaufgaben der Abschlussklasse zwei Tage vor dem Termin an einen Elternchat weitergeleitet, aus schierer Unachtsamkeit, nicht aus böser Absicht. Zwölf Schüler hatten daraufhin ungewöhnlich gute Ergebnisse erzielt, darunter auch ein Mädchen, dessen ohnehin schwaches Zeugnis sich über Nacht in ein respektables verwandelt hatte.

Brenner wusste, dass eine Annullierung der Prüfung sämtliche Schüler treffen würde, auch jene, die redlich gelernt hatten, während eine bloße Ermahnung des Kollegen die Ungerechtigkeit gegenüber allen anderen Klassen unangetastet ließe, die ihre Prüfungen unter regulären Bedingungen abgelegt hatten. Zudem stand die Karriere eines Mannes auf dem Spiel, den er seit fünfzehn Jahren kannte und dessen einziger Fehler in einem unbedachten Klick bestanden hatte.

Er entschied sich schließlich für den unbequemeren Weg: eine neue, veränderte Prüfung für die betroffene Klasse, verbunden mit einem offenen Gespräch vor der versammelten Elternschaft, in dem er den Fehler benannte, ohne den Kollegen bloßzustellen. Manche Eltern reagierten empört, andere überraschend verständnisvoll; das Mädchen mit dem plötzlich verbesserten Zeugnis bestand die Wiederholungsprüfung, wenn auch mit schlechteren Noten als zuvor.

Am Abend, als das Schulgebäude sich geleert hatte, dachte Brenner, dass es in seinem Beruf selten um die Wahl zwischen richtig und falsch gehe, sondern meist nur um die zwischen zwei Formen des Unrechts, von denen man die weniger schwerwiegende zu erkennen versuchen musste, und dass genau diese Erkenntnis, so unbequem sie war, ihn all die Jahre über davor bewahrt hatte, seine Entscheidungen mit jener bequemen Gewissheit zu treffen, die er bei manchen seiner Vorgänger stets mit einigem Misstrauen beobachtet hatte.$t$,
    $t$Le directeur Brenner laissait le dossier fermé sur son bureau depuis trois jours, comme si la simple proximité avec ces documents constituait déjà une forme de complicité. Un collègue avait, comme le révélait un message anonyme, transmis par mégarde les sujets d'examen de la classe terminale à un groupe de discussion de parents deux jours avant l'épreuve, par pure inattention et non par mauvaise intention. Douze élèves avaient dès lors obtenu des résultats étonnamment bons, parmi lesquels une jeune fille dont le bulletin, jusque-là plutôt faible, s'était transformé du jour au lendemain en un bulletin respectable.

Brenner savait qu'une annulation de l'examen pénaliserait tous les élèves, y compris ceux qui avaient étudié honnêtement, tandis qu'un simple avertissement adressé au collègue laisserait intacte l'injustice envers toutes les autres classes ayant passé leurs examens dans des conditions normales. De plus, c'était la carrière d'un homme qu'il connaissait depuis quinze ans qui était en jeu, un homme dont l'unique faute consistait en un clic irréfléchi.

Il opta finalement pour la voie la plus inconfortable : un nouvel examen, modifié, pour la classe concernée, assorti d'un entretien ouvert devant l'ensemble des parents réunis, au cours duquel il exposa l'erreur sans exposer le collègue à la vindicte. Certains parents réagirent avec indignation, d'autres avec une compréhension surprenante ; la jeune fille au bulletin soudainement amélioré réussit l'examen de rattrapage, quoiqu'avec de moins bonnes notes qu'auparavant.

Le soir, une fois l'établissement vidé, Brenner songea qu'il était rare, dans son métier, d'avoir à choisir entre le juste et l'injuste, et qu'il s'agissait le plus souvent de choisir entre deux formes de tort, dont il fallait tenter de discerner la moins grave, et que c'était précisément cette prise de conscience, aussi inconfortable fût-elle, qui l'avait préservé, au fil des années, de trancher avec cette assurance commode qu'il avait toujours observée chez certains de ses prédécesseurs avec une certaine méfiance.$t$,
    $t${"Rektor":"directeur","Brenner":"Brenner","hielt":"tenait","die":"le/la","Akte":"dossier","seit":"depuis","drei":"trois","Tagen":"jours","ungeöffnet":"non ouvert","auf":"sur","seinem":"son","Schreibtisch":"bureau","liegen":"rester posé","als":"comme si","wäre":"était","bloße":"simple","Nähe":"proximité","zu":"à/de","den":"les","Unterlagen":"documents","bereits":"déjà","eine":"une","Form":"forme","von":"de","Mitwisserschaft":"complicité","Ein":"un","Kollege":"collègue","hatte":"avait","wie":"comme","sich":"se","aus":"de","einer":"un","anonymen":"anonyme","Nachricht":"message","ergab":"révélait","versehentlich":"par mégarde","Prüfungsaufgaben":"sujets d'examen","der":"de la","Abschlussklasse":"classe terminale","zwei":"deux","Tage":"jours","vor":"avant","dem":"le","Termin":"date","an":"à","einen":"un","Elternchat":"groupe de discussion des parents","weitergeleitet":"transmis","schierer":"pure","Unachtsamkeit":"inattention","nicht":"non","böser":"mauvaise","Absicht":"intention","Zwölf":"douze","Schüler":"élèves","hatten":"avaient","daraufhin":"dès lors","ungewöhnlich":"étonnamment","gute":"bons","Ergebnisse":"résultats","erzielt":"obtenus","darunter":"parmi lesquels","auch":"aussi","ein":"une","Mädchen":"jeune fille","dessen":"dont le","ohnehin":"de toute façon","schwaches":"faible","Zeugnis":"bulletin","über":"en une","Nacht":"nuit","in":"en","respektables":"respectable","verwandelt":"transformé","wusste":"savait","dass":"que","Annullierung":"annulation","Prüfung":"examen","sämtliche":"tous","treffen":"toucher","würde":"pénaliserait","jene":"ceux","redlich":"honnêtement","gelernt":"appris","während":"tandis que","Ermahnung":"avertissement","des":"du","Kollegen":"collègue","Ungerechtigkeit":"injustice","gegenüber":"envers","allen":"toutes","anderen":"les autres","Klassen":"classes","unangetastet":"intacte","ließe":"laisserait","ihre":"leurs","Prüfungen":"examens","unter":"dans","regulären":"normales","Bedingungen":"conditions","abgelegt":"passés","Zudem":"de plus","stand":"était","Karriere":"carrière","eines":"d'un","Mannes":"homme","Spiel":"jeu (auf dem Spiel: en jeu)","er":"il","fünfzehn":"quinze","Jahren":"ans","kannte":"connaissait","und":"et","einziger":"unique","Fehler":"faute","einem":"un","unbedachten":"irréfléchi","Klick":"clic","bestanden":"consisté","Er":"il","entschied":"décida","schließlich":"finalement","für":"pour","unbequemeren":"plus inconfortable","Weg":"voie","neue":"nouvel","veränderte":"modifié","betroffene":"concernée","Klasse":"classe","verbunden":"assorti","mit":"avec","offenen":"ouvert","Gespräch":"entretien","versammelten":"réunis","Elternschaft":"ensemble des parents","benannte":"exposa","ohne":"sans","bloßzustellen":"exposer à la vindicte","Manche":"certains","Eltern":"parents","reagierten":"réagirent","empört":"indignés","andere":"d'autres","überraschend":"étonnamment","verständnisvoll":"compréhensifs","das":"la","plötzlich":"soudain","verbesserten":"amélioré","bestand":"réussit","Wiederholungsprüfung":"examen de rattrapage","wenn":"quoique","schlechteren":"moins bonnes","Noten":"notes","zuvor":"auparavant","Am":"le","Abend":"soir","Schulgebäude":"établissement scolaire","geleert":"vidé","dachte":"songea","es":"il","Beruf":"métier","selten":"rarement","um":"de","Wahl":"choix","zwischen":"entre","richtig":"juste","falsch":"faux","gehe":"il s'agisse","sondern":"mais","meist":"le plus souvent","nur":"seulement","Formen":"formes","Unrechts":"du tort","denen":"desquelles","man":"on","weniger":"moins","schwerwiegende":"grave","erkennen":"discerner","versuchen":"tenter","musste":"devait","genau":"précisément","diese":"cette","Erkenntnis":"prise de conscience","so":"aussi","unbequem":"inconfortable","sie":"elle","war":"fût","ihn":"le","all":"toutes","Jahre":"années","davor":"de cela","bewahrt":"préservé","seine":"ses","Entscheidungen":"décisions","jener":"cette","bequemen":"commode","Gewissheit":"assurance","bei":"chez","manchen":"certains","seiner":"ses","Vorgänger":"prédécesseurs","stets":"toujours","einigem":"une certaine","Misstrauen":"méfiance","beobachtet":"observé"}$t$::jsonb,
    $t$Fiction originale sur un dilemme éthique en milieu scolaire allemand$t$
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was liegt seit drei Tagen ungeöffnet auf Rektor Brenners Schreibtisch?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Eine Akte über durchgesickerte Prüfungsaufgaben$t$, true, 1),
    (v_q, $t$Ein Brief vom Schulamt$t$, false, 2),
    (v_q, $t$Ein Vertrag für einen neuen Lehrer$t$, false, 3),
    (v_q, $t$Eine Rechnung der Schulmensa$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie sind die Prüfungsaufgaben an die Eltern gelangt?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Ein Kollege hat sie versehentlich an einen Elternchat weitergeleitet$t$, true, 1),
    (v_q, $t$Ein Schüler hat sie gestohlen$t$, false, 2),
    (v_q, $t$Sie wurden absichtlich verkauft$t$, false, 3),
    (v_q, $t$Ein Journalist hat sie veröffentlicht$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Wirkung hat die Formulierung „als wäre die bloße Nähe...bereits eine Form von Mitwisserschaft“ auf die Charakterisierung Brenners?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie zeigt sein ausgeprägtes Verantwortungsbewusstsein und seine moralische Vorsicht$t$, true, 1),
    (v_q, $t$Sie zeigt, dass Brenner selbst an dem Vorfall schuld ist$t$, false, 2),
    (v_q, $t$Sie beweist, dass Brenner die Akte absichtlich versteckt$t$, false, 3),
    (v_q, $t$Sie hat keine charakterisierende Funktion$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was befürchtet Brenner, wenn er die Prüfung annulliert?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Dass auch die Schüler betroffen wären, die ehrlich gelernt haben$t$, true, 1),
    (v_q, $t$Dass die Schule geschlossen wird$t$, false, 2),
    (v_q, $t$Dass er selbst entlassen wird$t$, false, 3),
    (v_q, $t$Dass die Presse davon erfährt$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum ist die Entscheidung für Brenner besonders schwierig?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Weil sowohl eine Annullierung als auch eine bloße Ermahnung jeweils zu neuer Ungerechtigkeit führen würden$t$, true, 1),
    (v_q, $t$Weil er den Kollegen nicht mag$t$, false, 2),
    (v_q, $t$Weil ihm die Eltern egal sind$t$, false, 3),
    (v_q, $t$Weil er selbst von der Prüfung profitiert hat$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welches ethische Grundproblem verdeutlicht die Situation, in der sich Brenner befindet?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Dass Gerechtigkeit oft nicht in einer eindeutig richtigen Lösung, sondern in der Abwägung zwischen verschiedenen Formen von Unrecht besteht$t$, true, 1),
    (v_q, $t$Dass es in der Schule immer eine eindeutig richtige Lösung gibt$t$, false, 2),
    (v_q, $t$Dass persönliche Beziehungen in Entscheidungen keine Rolle spielen dürfen$t$, false, 3),
    (v_q, $t$Dass Regeln niemals Ausnahmen zulassen sollten$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wofür entscheidet sich Brenner am Ende?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Für eine neue Prüfung und ein offenes Gespräch mit den Eltern$t$, true, 1),
    (v_q, $t$Für die sofortige Entlassung des Kollegen$t$, false, 2),
    (v_q, $t$Für das Ignorieren des Vorfalls$t$, false, 3),
    (v_q, $t$Für die Schließung der Abschlussklasse$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie reagieren die Eltern auf Brenners offenes Gespräch?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Unterschiedlich: manche empört, manche verständnisvoll$t$, true, 1),
    (v_q, $t$Alle reagieren wütend$t$, false, 2),
    (v_q, $t$Alle reagieren gleichgültig$t$, false, 3),
    (v_q, $t$Niemand nimmt an dem Gespräch teil$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was drückt Brenners abschließender Gedanke über sein Berufsleben aus?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Dass Führungsverantwortung oft nicht die Wahl zwischen Gut und Böse, sondern zwischen unterschiedlich schweren Übeln bedeutet$t$, true, 1),
    (v_q, $t$Dass er seinen Beruf grundsätzlich bereut$t$, false, 2),
    (v_q, $t$Dass es in der Schulleitung nie moralische Dilemmata gebe$t$, false, 3),
    (v_q, $t$Dass er sich künftig aus allen Konflikten heraushalten will$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet „Mitwisserschaft“?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$das Wissen um eine Sache, ohne unbedingt daran beteiligt zu sein$t$, true, 1),
    (v_q, $t$völlige Unschuld$t$, false, 2),
    (v_q, $t$eine Art Prüfung$t$, false, 3),
    (v_q, $t$ein juristisches Urteil$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welches Wort passt als Synonym zu „unangetastet“ im Kontext?$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$unverändert$t$, true, 1),
    (v_q, $t$zerstört$t$, false, 2),
    (v_q, $t$bezahlt$t$, false, 3),
    (v_q, $t$veröffentlicht$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet die Wendung „auf dem Spiel stehen“ in „stand die Karriere...auf dem Spiel“?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$gefährdet sein, möglicherweise verloren zu gehen$t$, true, 1),
    (v_q, $t$spielerisch verhandelt werden$t$, false, 2),
    (v_q, $t$offiziell bestätigt sein$t$, false, 3),
    (v_q, $t$völlig gesichert sein$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Zeitform liegt in „hatte...weitergeleitet“ vor?$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Plusquamperfekt$t$, true, 1),
    (v_q, $t$Präsens$t$, false, 2),
    (v_q, $t$Futur I$t$, false, 3),
    (v_q, $t$Imperativ$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Form liegt in „eine Ermahnung...ließe“ vor?$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Konjunktiv II (irreale/hypothetische Folge)$t$, true, 1),
    (v_q, $t$Indikativ Präteritum$t$, false, 2),
    (v_q, $t$Imperativ$t$, false, 3),
    (v_q, $t$Perfekt$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche grammatische Funktion haben die Konjunktiv-II-Formen „würde“ und „ließe“ im zweiten Absatz?$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie stellen zwei hypothetische, gegeneinander abgewogene Handlungsoptionen und deren gedachte Folgen dar$t$, true, 1),
    (v_q, $t$Sie berichten tatsächlich eingetretene Ereignisse$t$, false, 2),
    (v_q, $t$Sie drücken einen höflichen Imperativ aus$t$, false, 3),
    (v_q, $t$Sie kennzeichnen wörtliche Zitate der Eltern$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Ein Kollege hat die Prüfungsaufgaben versehentlich an einen ___ weitergeleitet.$t$, 1, 'facile', 'lueckentext') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Elternchat$t$, true, 1),
    (v_q, $t$Zeitungsredakteur$t$, false, 2),
    (v_q, $t$Schulhof$t$, false, 3),
    (v_q, $t$Nachbarn$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Brenner entscheidet sich für eine neue Prüfung und ein offenes ___ mit den Eltern.$t$, 1, 'normal', 'lueckentext') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Gespräch$t$, true, 1),
    (v_q, $t$Verhör$t$, false, 2),
    (v_q, $t$Fernsehinterview$t$, false, 3),
    (v_q, $t$Gerichtsverfahren$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Am Ende denkt Brenner, es gehe selten um Richtig und Falsch, sondern um zwei Formen des ___.$t$, 1, 'difficile', 'lueckentext') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Unrechts$t$, true, 1),
    (v_q, $t$Erfolgs$t$, false, 2),
    (v_q, $t$Zufalls$t$, false, 3),
    (v_q, $t$Vergnügens$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Wortart ist „schierer“ in „aus schierer Unachtsamkeit“?$t$, 1, 'facile', 'grammar') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Adjektiv$t$, true, 1),
    (v_q, $t$Substantiv$t$, false, 2),
    (v_q, $t$Präposition$t$, false, 3),
    (v_q, $t$Konjunktion$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Funktion hat der Nominalstil in „eine Annullierung der Prüfung“ statt „wenn die Prüfung annulliert würde“?$t$, 1, 'normal', 'grammar') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er verdichtet einen Sachverhalt kompakt zu einem Substantiv, typisch für den gehobenen C1-Schreibstil$t$, true, 1),
    (v_q, $t$Er ist grammatisch falsch$t$, false, 2),
    (v_q, $t$Er markiert wörtliche Rede$t$, false, 3),
    (v_q, $t$Er dient nur der Verkürzung ohne stilistischen Effekt$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie lässt sich der Satzbau des letzten Absatzes („dass es...selten um die Wahl...gehe, sondern meist nur um die...von denen man...musste“) beschreiben?$t$, 1, 'difficile', 'grammar') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Ein mehrfach verschachtelter Satz mit indirektem Konjunktiv, Oppositionskonjunktion „sondern“ und eingebettetem Relativsatz, typisch für den elaborierten C1-Stil$t$, true, 1),
    (v_q, $t$Ein kurzer Hauptsatz ohne Nebensätze$t$, false, 2),
    (v_q, $t$Eine Reihe von Ausrufesätzen$t$, false, 3),
    (v_q, $t$Ein reiner Fragesatz$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, justification)
    VALUES (v_story, $t$Der Kollege hat die Prüfungsaufgaben absichtlich verkauft.$t$, 1, 'facile', 'true_false', $t$Es geschah aus schierer Unachtsamkeit, nicht aus böser Absicht.$t$) RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Wahr$t$, false, 1),
    (v_q, $t$Falsch$t$, true, 2);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, justification)
    VALUES (v_story, $t$Brenner entscheidet sich dafür, den Vorfall stillschweigend zu ignorieren.$t$, 1, 'normal', 'true_false', $t$Er wählt den unbequemeren Weg: eine neue Prüfung und ein offenes Gespräch mit den Eltern.$t$) RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Wahr$t$, false, 1),
    (v_q, $t$Falsch$t$, true, 2);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, justification)
    VALUES (v_story, $t$Der Text stellt Brenners Entscheidung als eindeutig moralisch einwandfreie Lösung ohne jeden Nachteil dar.$t$, 1, 'difficile', 'true_false', $t$Der Schlussgedanke betont im Gegenteil, dass es meist nur um die Wahl zwischen zwei Formen des Unrechts geht.$t$) RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Wahr$t$, false, 1),
    (v_q, $t$Falsch$t$, true, 2);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer, rubric)
    VALUES (v_story, $t$Diskutieren Sie, wie Schulleitungen mit Fehlern von Lehrkräften umgehen sollten, wenn dabei die Interessen mehrerer Gruppen (Schüler, Eltern, Kollegen) kollidieren.$t$, 1, 'normal', 'production', $t$Schulleitungen stehen häufig vor der Herausforderung, unterschiedliche berechtigte Interessen gegeneinander abzuwägen, wenn ein Fehler wie eine versehentlich weitergegebene Prüfung bekannt wird. Transparenz gegenüber allen Beteiligten erscheint dabei zentral, da Vertuschung langfristig das Vertrauen in die Institution stärker beschädigt als ein offen eingestandener Fehler. Gleichzeitig sollte die Verhältnismäßigkeit gewahrt bleiben, damit weder betroffene Schüler noch der verantwortliche Kollege unangemessen hart bestraft werden. Ein offenes Gespräch, wie es Rektor Brenner führt, ermöglicht es, Verantwortung zu übernehmen, ohne einzelne Personen bloßzustellen. Zudem zeigt das Beispiel, dass es selten eine perfekte, für alle Seiten schmerzfreie Lösung gibt, sondern meist nur einen vertretbaren Kompromiss. Entscheidend bleibt letztlich, dass die getroffene Entscheidung nachvollziehbar begründet und konsequent umgesetzt wird.$t$, $t$[{"criterion":"Aufgabenerfüllung","description":"Die unterschiedlichen Interessengruppen werden benannt und gegeneinander abgewogen."},{"criterion":"Wortschatz","description":"Präziser Wortschatz zu Ethik, Verantwortung und Schulverwaltung."},{"criterion":"Grammatik","description":"Verwendung von Konjunktiv II zur Darstellung hypothetischer Handlungsalternativen."},{"criterion":"Kohärenz","description":"Ausgewogene Argumentation mit klarer Schlussfolgerung."}]$t$::jsonb);

END $block$;

-- 5. Die Übertragung aus Bern
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary, culture_note) VALUES (
    'C1',
    $t$Die Übertragung aus Bern$t$,
    $t$Am Nachmittag des vierten Juli 1954 versammelte sich die halbe Straße im Hinterzimmer des Kolonialwarenladens, in dem Herr Lindqvist, der einzige Radiobesitzer im Viertel, sein Gerät auf einen umgedrehten Apfelkorb gestellt hatte, damit auch die hinteren Reihen etwas hörten. Zwölf Jahre war der kleine Ewald damals alt, und er erinnerte sich später an nichts so genau wie an das Knistern zwischen den Sätzen des Kommentators, das ihm vorkam wie das Atmen eines riesigen, unsichtbaren Tieres.

Deutschland lag früh mit zwei Toren zurück gegen die favorisierten Ungarn, und in dem engen Raum, der nach Rüböl und billigem Tabak roch, senkte sich eine Stille, die Ewald mit den stummen Nachmittagen seiner Kriegskindheit verwechselte. Als jedoch der Ausgleich fiel, hörte er zum ersten Mal, wie Erwachsene, die sonst über jedes Wort wachten, aus vollem Hals schrien, ohne sich dafür zu schämen.

Was folgte, war ein Nachmittag, an den sich Ewald sein Leben lang zurücksehnte, nicht wegen des Fußballs an sich, sondern wegen des Augenblicks, in dem sein Vater, ein wortkarger Mann, der aus dem Krieg mit einem versteiften Bein zurückgekehrt war, ihn plötzlich hochhob und lachte, ein Lachen, das Ewald zuvor nie gehört hatte.

Erst Jahrzehnte später, als Historiker begannen, jenen Tag als Geburtsstunde eines neuen Selbstbewusstseins zu deuten, verstand Ewald, dass es in jenem Hinterzimmer nicht um einen Titel gegangen war, sondern um die Erlaubnis, sich nach Jahren des Schweigens und der Scham wieder unbeschwert zu freuen, und dass diese Erlaubnis vielleicht mehr verändert hatte als jedes politische Programm jener Jahre. Wenn er heute jungen Leuten von jenem Nachmittag erzählte, betonte er stets, dass es nicht das Ergebnis gewesen sei, das ihm geblieben sei, sondern das Gesicht seines Vaters, für einen einzigen Nachmittag von aller Schwere befreit.$t$,
    $t$L'après-midi du 4 juillet 1954, la moitié de la rue se rassembla dans l'arrière-boutique de l'épicerie, où monsieur Lindqvist, seul possesseur d'une radio du quartier, avait posé son appareil sur un panier à pommes retourné, afin que les rangs du fond entendent eux aussi quelque chose. Le petit Ewald avait alors douze ans, et il ne se souvint plus tard de rien avec autant de précision que du crépitement entre les phrases du commentateur, qui lui semblait comme la respiration d'un immense animal invisible.

L'Allemagne était menée tôt de deux buts face aux Hongrois favoris, et dans la pièce exiguë, qui sentait l'huile de colza et le tabac bon marché, un silence s'installa qu'Ewald confondit avec les après-midi muets de son enfance de guerre. Mais quand l'égalisation tomba, il entendit pour la première fois des adultes, qui d'ordinaire pesaient chaque mot, crier à pleins poumons sans en éprouver aucune honte.

Ce qui suivit fut un après-midi dont Ewald garda toute sa vie la nostalgie, non à cause du football en soi, mais à cause de cet instant où son père, homme taciturne revenu de la guerre avec une jambe raidie, le souleva soudain en riant, d'un rire qu'Ewald n'avait jamais entendu auparavant.

Ce n'est que des décennies plus tard, lorsque les historiens commencèrent à interpréter ce jour comme la naissance d'une nouvelle confiance en soi collective, qu'Ewald comprit qu'il ne s'était pas agi, dans cette arrière-boutique, d'un titre, mais de la permission de se réjouir à nouveau sans retenue après des années de silence et de honte, et que cette permission avait peut-être davantage changé les choses que n'importe quel programme politique de ces années-là. Quand il racontait, aujourd'hui encore, cet après-midi à de jeunes gens, il soulignait toujours que ce n'était pas le résultat du match qui lui était resté, mais le visage de son père, délivré pour un unique après-midi de toute sa gravité.$t$,
    $t${"Am":"le","Nachmittag":"après-midi","des":"du","vierten":"quatre","Juli":"juillet","versammelte":"rassembla","sich":"se","die":"la","halbe":"moitié","Straße":"rue","im":"dans l'","Hinterzimmer":"arrière-boutique","Kolonialwarenladens":"de l'épicerie","in":"dans","dem":"lequel","Herr":"monsieur","Lindqvist":"Lindqvist","der":"le","einzige":"seul","Radiobesitzer":"possesseur de radio","Viertel":"quartier","sein":"son","Gerät":"appareil","auf":"sur","einen":"un","umgedrehten":"retourné","Apfelkorb":"panier à pommes","gestellt":"posé","hatte":"avait","damit":"afin que","auch":"aussi","hinteren":"du fond","Reihen":"rangs","etwas":"quelque chose","hörten":"entendent","Zwölf":"douze","Jahre":"ans","war":"avait","kleine":"petit","Ewald":"Ewald","damals":"alors","alt":"âgé","und":"et","er":"il","erinnerte":"se souvint","später":"plus tard","an":"de","nichts":"rien","so":"aussi","genau":"précisément","wie":"que","das":"le","Knistern":"crépitement","zwischen":"entre","den":"les","Sätzen":"phrases","Kommentators":"du commentateur","ihm":"lui","vorkam":"semblait","Atmen":"respiration","eines":"d'un","riesigen":"immense","unsichtbaren":"invisible","Tieres":"animal","Deutschland":"l'Allemagne","lag":"était","früh":"tôt","mit":"de","zwei":"deux","Toren":"buts","zurück":"en retard","gegen":"contre","favorisierten":"favoris","Ungarn":"Hongrois","engen":"exiguë","Raum":"pièce","nach":"selon (odeur de)","Rüböl":"huile de colza","billigem":"bon marché","Tabak":"tabac","roch":"sentait","senkte":"s'installa","eine":"un","Stille":"silence","stummen":"muets","Nachmittagen":"après-midi","seiner":"de son","Kriegskindheit":"enfance de guerre","verwechselte":"confondit","Als":"quand","jedoch":"cependant","Ausgleich":"égalisation","fiel":"tomba","hörte":"entendit","zum":"pour la","ersten":"première","Mal":"fois","Erwachsene":"adultes","sonst":"d'ordinaire","über":"sur","jedes":"chaque","Wort":"mot","wachten":"veillaient","aus":"à","vollem":"plein","Hals":"gorge","schrien":"criaient","ohne":"sans","dafür":"pour cela","zu":"à","schämen":"avoir honte","Was":"ce qui","folgte":"suivit","ein":"un","Leben":"vie","lang":"durant","zurücksehnte":"garda la nostalgie","wegen":"à cause de","Fußballs":"football","sondern":"mais","Augenblicks":"instant","Vater":"père","wortkarger":"taciturne","Mann":"homme","Krieg":"guerre","einem":"une","versteiften":"raidie","Bein":"jambe","zurückgekehrt":"revenu","ihn":"le","plötzlich":"soudain","hochhob":"souleva","lachte":"riait","Lachen":"rire","zuvor":"auparavant","nie":"jamais","gehört":"entendu","Erst":"ce n'est que","Jahrzehnte":"décennies","als":"lorsque","Historiker":"historiens","begannen":"commencèrent","jenen":"ce","Tag":"jour","Geburtsstunde":"naissance","neuen":"nouvelle","Selbstbewusstseins":"confiance en soi","deuten":"interpréter","verstand":"comprit","dass":"que","es":"il","jenem":"cette","um":"de","Titel":"titre","gegangen":"agi","Erlaubnis":"permission","Jahren":"années","Schweigens":"du silence","Scham":"honte","wieder":"de nouveau","unbeschwert":"sans retenue","freuen":"se réjouir","diese":"cette","vielleicht":"peut-être","mehr":"plus","verändert":"changé","politische":"politique","Programm":"programme","jener":"de ces","Wenn":"quand","heute":"aujourd'hui","jungen":"jeunes","Leuten":"gens","von":"de","erzählte":"racontait","betonte":"soulignait","stets":"toujours","Ergebnis":"résultat","gewesen":"été","sei":"eût","geblieben":"resté","Gesicht":"visage","seines":"de son","für":"pour","einzigen":"unique","aller":"de toute","Schwere":"gravité","befreit":"délivré","nicht":"ne...pas","Vaters":"du père"}$t$::jsonb,
    $t$Fiction inspirée du Wunder von Bern (1954)$t$
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wo versammelt sich die halbe Straße am 4. Juli 1954?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Im Hinterzimmer des Kolonialwarenladens$t$, true, 1),
    (v_q, $t$Auf dem Marktplatz$t$, false, 2),
    (v_q, $t$Im Kino$t$, false, 3),
    (v_q, $t$In der Kirche$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum stellt Herr Lindqvist das Radio auf einen umgedrehten Apfelkorb?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Damit auch die hinteren Reihen etwas hören können$t$, true, 1),
    (v_q, $t$Weil er keinen Tisch besitzt$t$, false, 2),
    (v_q, $t$Um das Radio vor Kindern zu schützen$t$, false, 3),
    (v_q, $t$Weil der Korb dekorativ wirkt$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Wirkung erzielt der Vergleich „das Knistern...wie das Atmen eines riesigen, unsichtbaren Tieres“?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er verleiht der kollektiven Anspannung beim Radiohören eine fast mythische, körperlich spürbare Dimension$t$, true, 1),
    (v_q, $t$Er beschreibt ein tatsächliches Tier im Raum$t$, false, 2),
    (v_q, $t$Er zeigt technische Störungen des Radios ohne weitere Bedeutung$t$, false, 3),
    (v_q, $t$Er dient der reinen Situationskomik$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie steht es früh im Spiel für Deutschland?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Deutschland liegt mit zwei Toren zurück$t$, true, 1),
    (v_q, $t$Deutschland führt mit zwei Toren$t$, false, 2),
    (v_q, $t$Das Spiel steht unentschieden$t$, false, 3),
    (v_q, $t$Das Spiel wurde abgesagt$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was verwechselt Ewald mit der Stille im Raum?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Die stummen Nachmittage seiner Kriegskindheit$t$, true, 1),
    (v_q, $t$Das Läuten der Kirchturmglocke$t$, false, 2),
    (v_q, $t$Das Schweigen in der Schule$t$, false, 3),
    (v_q, $t$Die Stille eines Museums$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Bedeutung hat es, dass Erwachsene beim Ausgleichstor „aus vollem Hals schrien, ohne sich dafür zu schämen“?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Es markiert einen seltenen Moment kollektiver, ungehemmter Emotion nach Jahren zurückhaltenden, von Scham geprägten Verhaltens$t$, true, 1),
    (v_q, $t$Es zeigt, dass die Erwachsenen betrunken waren$t$, false, 2),
    (v_q, $t$Es beweist, dass das Spiel bereits entschieden war$t$, false, 3),
    (v_q, $t$Es hat für die Deutung des Textes keine Bedeutung$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was macht Ewalds Vater in dem entscheidenden Moment?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er hebt Ewald hoch und lacht$t$, true, 1),
    (v_q, $t$Er verlässt wütend den Raum$t$, false, 2),
    (v_q, $t$Er weint vor Enttäuschung$t$, false, 3),
    (v_q, $t$Er schaltet das Radio aus$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Woran erkennt man, dass Ewalds Vater ein „wortkarger Mann“ war?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Daran, dass sein Lachen in diesem Moment für Ewald außergewöhnlich und neu war$t$, true, 1),
    (v_q, $t$Daran, dass er ständig redete$t$, false, 2),
    (v_q, $t$Daran, dass er im Krieg gefallen ist$t$, false, 3),
    (v_q, $t$Daran, dass er niemals lachte, auch nicht bei diesem Ereignis$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie deutet der Text am Ende die historische Bedeutung des „Wunders von Bern“?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Weniger als sportlichen Titel, sondern als symbolische Erlaubnis, sich nach Krieg und Scham wieder unbeschwert zu freuen$t$, true, 1),
    (v_q, $t$Ausschließlich als militärischen Sieg über Ungarn$t$, false, 2),
    (v_q, $t$Als rein wirtschaftliches Ereignis ohne emotionale Dimension$t$, false, 3),
    (v_q, $t$Als Beginn einer neuen politischen Partei$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet „Kolonialwarenladen“?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$ein kleines Lebensmittelgeschäft$t$, true, 1),
    (v_q, $t$ein Möbelgeschäft$t$, false, 2),
    (v_q, $t$eine Bibliothek$t$, false, 3),
    (v_q, $t$eine Bäckerei$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welches Wort ist ein Synonym zu „wortkarg“?$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$schweigsam$t$, true, 1),
    (v_q, $t$gesprächig$t$, false, 2),
    (v_q, $t$laut$t$, false, 3),
    (v_q, $t$fröhlich$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet „unbeschwert“ im Ausdruck „sich wieder unbeschwert zu freuen“?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$ohne innere Last oder Sorgen$t$, true, 1),
    (v_q, $t$finanziell arm$t$, false, 2),
    (v_q, $t$körperlich erschöpft$t$, false, 3),
    (v_q, $t$rechtlich unbelastet im juristischen Sinn$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Zeitform liegt in „versammelte sich“ vor?$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Präteritum$t$, true, 1),
    (v_q, $t$Präsens$t$, false, 2),
    (v_q, $t$Futur I$t$, false, 3),
    (v_q, $t$Imperativ$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Zeitform liegt in „ein Lachen, das Ewald zuvor nie gehört hatte“ vor?$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Plusquamperfekt$t$, true, 1),
    (v_q, $t$Perfekt$t$, false, 2),
    (v_q, $t$Präsens$t$, false, 3),
    (v_q, $t$Konjunktiv I$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Funktion hat das Plusquamperfekt in „der aus dem Krieg mit einem versteiften Bein zurückgekehrt war“ innerhalb der Erzählstruktur?$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Es ordnet die Kriegsrückkehr des Vaters als vorzeitiges Ereignis gegenüber der im Präteritum erzählten Haupthandlung ein$t$, true, 1),
    (v_q, $t$Es zeigt eine Handlung, die gleichzeitig mit dem Radiohören stattfindet$t$, false, 2),
    (v_q, $t$Es kennzeichnet eine Vermutung ohne zeitlichen Bezug$t$, false, 3),
    (v_q, $t$Es wird hier stilistisch fehlerhaft verwendet$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Herr Lindqvist ist der einzige ___ im Viertel.$t$, 1, 'facile', 'lueckentext') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Radiobesitzer$t$, true, 1),
    (v_q, $t$Lehrer$t$, false, 2),
    (v_q, $t$Bäcker$t$, false, 3),
    (v_q, $t$Bürgermeister$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Als der Ausgleich fällt, schreien die Erwachsenen aus vollem ___.$t$, 1, 'normal', 'lueckentext') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Hals$t$, true, 1),
    (v_q, $t$Herzen$t$, false, 2),
    (v_q, $t$Kopf$t$, false, 3),
    (v_q, $t$Mund allein$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Ewald versteht später, dass es um die ___ ging, sich wieder unbeschwert zu freuen.$t$, 1, 'difficile', 'lueckentext') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Erlaubnis$t$, true, 1),
    (v_q, $t$Bezahlung$t$, false, 2),
    (v_q, $t$Prüfung$t$, false, 3),
    (v_q, $t$Bestrafung$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Wortart ist „riesigen“ in „eines riesigen, unsichtbaren Tieres“?$t$, 1, 'facile', 'grammar') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Adjektiv$t$, true, 1),
    (v_q, $t$Substantiv$t$, false, 2),
    (v_q, $t$Verb$t$, false, 3),
    (v_q, $t$Präposition$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welches Stilmittel liegt im Vergleich „wie das Atmen eines riesigen, unsichtbaren Tieres“ vor?$t$, 1, 'normal', 'grammar') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Eine Metapher/ein Vergleich, der Spannung sinnlich erfahrbar macht$t$, true, 1),
    (v_q, $t$Eine Ironie$t$, false, 2),
    (v_q, $t$Eine rhetorische Frage$t$, false, 3),
    (v_q, $t$Ein Euphemismus$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie trägt der Rückblick aus der Perspektive „Jahrzehnte später“ zur Erzählstruktur des Textes bei?$t$, 1, 'difficile', 'grammar') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er rahmt das Kindheitserlebnis mit einer reflektierenden, historisch einordnenden Erzählebene, die dem Ereignis nachträglich Bedeutung verleiht$t$, true, 1),
    (v_q, $t$Er dient lediglich der Angabe eines exakten Datums$t$, false, 2),
    (v_q, $t$Er widerspricht der Haupthandlung und macht sie unglaubwürdig$t$, false, 3),
    (v_q, $t$Er hat keine erzähltechnische Funktion$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, justification)
    VALUES (v_story, $t$Deutschland führt von Beginn an mit zwei Toren.$t$, 1, 'facile', 'true_false', $t$Deutschland liegt früh mit zwei Toren zurück gegen die favorisierten Ungarn.$t$) RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Wahr$t$, false, 1),
    (v_q, $t$Falsch$t$, true, 2);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, justification)
    VALUES (v_story, $t$Ewalds Vater zeigt im Text zum ersten Mal ein Lachen, das Ewald bis dahin nicht kannte.$t$, 1, 'normal', 'true_false', $t$Der Text sagt ausdrücklich, es sei ein Lachen gewesen, das Ewald zuvor nie gehört hatte.$t$) RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Wahr$t$, true, 1),
    (v_q, $t$Falsch$t$, false, 2);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, justification)
    VALUES (v_story, $t$Der Text deutet das Ereignis von 1954 ausschließlich als sportlichen Erfolg ohne gesellschaftliche Bedeutung.$t$, 1, 'difficile', 'true_false', $t$Der Schluss deutet das Ereignis als symbolische Erlaubnis zur Freude nach Jahren von Krieg und Scham, also mit weitreichender gesellschaftlicher Bedeutung.$t$) RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Wahr$t$, false, 1),
    (v_q, $t$Falsch$t$, true, 2);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer, rubric)
    VALUES (v_story, $t$Erörtern Sie, warum sportliche Großereignisse wie das „Wunder von Bern“ eine über den Sport hinausgehende gesellschaftliche Bedeutung erlangen können.$t$, 1, 'normal', 'production', $t$Sportliche Großereignisse können weit über das eigentliche Spielgeschehen hinaus wirken, wenn sie mit einem gesellschaftlichen Bedürfnis nach kollektiver Erleichterung zusammenfallen. Im Fall des „Wunders von Bern“ traf ein unerwarteter sportlicher Erfolg auf eine Nachkriegsgesellschaft, die lange Zeit von Schweigen, Scham und materieller Not geprägt war. Der gemeinsame Jubel bot vielen Menschen erstmals wieder einen legitimen Anlass, Emotionen offen zu zeigen, ohne dass dies als unangemessen empfunden wurde. Solche Momente werden retrospektiv oft zu Symbolen eines gesellschaftlichen Neuanfangs stilisiert, obwohl sie ursprünglich rein sportlicher Natur waren. Diese Deutung zeigt, wie eng Sport, Identität und kollektives Gedächtnis miteinander verwoben sein können. Zugleich sollte man vorsichtig sein, einem einzelnen Ereignis zu viel historische Erklärungskraft zuzuschreiben, ohne die komplexeren politischen und sozialen Prozesse jener Zeit zu berücksichtigen.$t$, $t$[{"criterion":"Aufgabenerfüllung","description":"Der Text erklärt differenziert, wie Sportereignisse gesellschaftliche Bedeutung erlangen können."},{"criterion":"Wortschatz","description":"Angemessener Wortschatz zu Geschichte, Kollektivgefühl und Erinnerungskultur."},{"criterion":"Grammatik","description":"Komplexe Satzgefüge mit Konjunktionen wie „obwohl“, „während“, „zugleich“."},{"criterion":"Kohärenz","description":"Nachvollziehbare Argumentationslinie mit abschließender kritischer Reflexion."}]$t$::jsonb);

END $block$;

-- 6. Ein Buchstabe weniger
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary, culture_note) VALUES (
    'C1',
    $t$Ein Buchstabe weniger$t$,
    $t$Als die Rechtschreibreform im Sommer 1996 amtlich verkündet wurde, saß Studienrätin Ilse Brenner seit achtundzwanzig Jahren an demselben Lehrerpult und hatte, wie sie es ausdrückte, „das Komma vor Nebensätzen mit derselben Selbstverständlichkeit gesetzt wie das Amen in der Kirche“. Nun sollte plötzlich „daß“ zu „dass“ werden, ein Fluss in drei statt zwei Schreibweisen existieren dürfen, und Wörter, die sie ein Leben lang zusammengeschrieben hatte, in ihre Bestandteile zerfallen.

Im Lehrerzimmer teilte sich das Kollegium in zwei Lager, die einander mit einer Erbitterung begegneten, die dem eigentlichen Anlass kaum angemessen schien. Die Jüngeren begrüßten die Reform als überfällige Vereinfachung; die Älteren, zu denen Ilse zählte, empfanden sie als Eingriff in etwas, das ihnen persönlicher vorkam als bloße Orthographie, nämlich in die Sprache, mit der sie selbst großgeworden waren und die sie fortan als Fehler markieren sollten, was sie ihr ganzes Berufsleben lang für richtig gehalten hatte.

Ilse korrigierte in jenem ersten reformierten Schuljahr Hefte, in denen die neue und die alte Schreibung wild durcheinander standen, und ertappte sich dabei, wie sie zögerte, bevor sie einen roten Strich unter ein „daß“ zog, das sie selbst noch vor Kurzem geschrieben hätte. Sie begriff, dass sie nicht die Rechtschreibung ihrer Schüler beurteilte, sondern eine Grenze zwischen zwei Zeiten, auf deren einer Seite sie unwiderruflich zurückblieb.

Erst als ihre eigene Enkelin, Jahre später, sie über ein doppeltes „s“ belehrte, mit jener beiläufigen Sicherheit, die nur Kinder besitzen, verstand Ilse, dass Sprache niemals ihr gehört hatte, sondern immer nur geliehen war, für eine Generation, die sie weiterreichen musste, ob sie wollte oder nicht. Sie strich das „daß“ nicht mehr rot an, sondern lächelte, notierte am Rand ein kleines Häkchen und dachte, dass ihre Enkelin eines Tages, an einem anderen Lehrerpult, dieselbe Erfahrung machen würde, nur mit anderen Buchstaben.$t$,
    $t$Lorsque la réforme de l'orthographe fut officiellement proclamée à l'été 1996, la professeure Ilse Brenner était assise depuis vingt-huit ans au même bureau, et avait, comme elle le formulait, « posé la virgule devant les subordonnées avec la même évidence que l'amen à l'église ». Voilà que soudain « daß » devait devenir « dass », qu'un fleuve pourrait exister sous trois graphies au lieu de deux, et que des mots qu'elle avait écrits en un seul depuis toute sa vie allaient se scinder en leurs éléments constitutifs.

Dans la salle des professeurs, le corps enseignant se divisa en deux camps, qui s'affrontaient avec une âpreté à peine proportionnée à l'enjeu réel. Les plus jeunes saluaient la réforme comme une simplification attendue depuis longtemps ; les plus âgés, dont Ilse faisait partie, la ressentaient comme une atteinte à quelque chose de plus personnel qu'une simple orthographe, à savoir la langue avec laquelle ils avaient eux-mêmes grandi et qu'ils devaient désormais marquer comme fautive, alors qu'ils l'avaient tenue pour juste toute leur vie professionnelle durant.

Cette première année réformée, Ilse corrigeait des cahiers où l'ancienne et la nouvelle orthographe se mêlaient dans le plus grand désordre, et se surprenait à hésiter avant de tracer un trait rouge sous un « daß » qu'elle-même aurait encore écrit peu de temps auparavant. Elle comprit qu'elle ne jugeait pas l'orthographe de ses élèves, mais une frontière entre deux époques, du côté de laquelle elle restait, irrévocablement, en arrière.

Ce n'est que lorsque sa propre petite-fille, des années plus tard, lui expliqua un double « s » avec cette assurance désinvolte que seuls les enfants possèdent, qu'Ilse comprit que la langue ne lui avait jamais appartenu, mais lui avait toujours été seulement prêtée, pour une génération qu'elle devait transmettre, qu'elle le veuille ou non. Elle ne barra plus le « daß » de rouge, mais sourit, nota dans la marge une petite coche, et se dit que sa petite-fille, un jour, à un autre bureau de professeur, ferait la même expérience, simplement avec d'autres lettres.$t$,
    $t${"Als":"quand","die":"la","Rechtschreibreform":"réforme de l'orthographe","im":"à l'","Sommer":"été","amtlich":"officiellement","verkündet":"proclamée","wurde":"fut","saß":"était assise","Studienrätin":"professeure certifiée","Ilse":"Ilse","Brenner":"Brenner","seit":"depuis","achtundzwanzig":"vingt-huit","Jahren":"ans","an":"à","demselben":"ce même","Lehrerpult":"bureau du professeur","und":"et","hatte":"avait","sie":"elle","es":"cela","ausdrückte":"formulait","das":"le","Komma":"virgule","vor":"devant","Nebensätzen":"subordonnées","mit":"avec","derselben":"la même","Selbstverständlichkeit":"évidence","gesetzt":"posée","Amen":"amen","in":"dans","der":"l'","Kirche":"église","Nun":"or/désormais","sollte":"devait","plötzlich":"soudain","daß":"« daß »","zu":"devenir","dass":"« dass »","werden":"devenir","ein":"un","Fluss":"fleuve","drei":"trois","statt":"au lieu de","zwei":"deux","Schreibweisen":"graphies","existieren":"exister","dürfen":"pouvoir","Wörter":"mots","Leben":"vie","lang":"durant","zusammengeschrieben":"écrits en un seul mot","ihre":"leurs","Bestandteile":"éléments constitutifs","zerfallen":"se scinder","Im":"dans la","Lehrerzimmer":"salle des professeurs","teilte":"divisa","sich":"se","Kollegium":"corps enseignant","Lager":"camps","einander":"l'un l'autre","einer":"une","Erbitterung":"âpreté","begegneten":"s'affrontaient","dem":"l'","eigentlichen":"réel","Anlass":"enjeu","kaum":"à peine","angemessen":"proportionné","schien":"semblait","Die":"les","Jüngeren":"plus jeunes","begrüßten":"saluaient","Reform":"réforme","als":"comme","überfällige":"attendue depuis longtemps","Vereinfachung":"simplification","Älteren":"plus âgés","denen":"lesquels","zählte":"faisait partie","empfanden":"ressentaient","Eingriff":"atteinte","etwas":"quelque chose","ihnen":"leur","persönlicher":"plus personnel","vorkam":"semblait","bloße":"simple","Orthographie":"orthographe","nämlich":"à savoir","Sprache":"langue","selbst":"eux-mêmes","großgeworden":"grandi","waren":"étaient","fortan":"désormais","Fehler":"faute","markieren":"marquer","sollten":"devaient","was":"ce qu'","ihr":"leur","ganzes":"toute","Berufsleben":"vie professionnelle","für":"pour","richtig":"juste","gehalten":"tenu","korrigierte":"corrigeait","jenem":"cette","ersten":"première","reformierten":"réformée","Schuljahr":"année scolaire","Hefte":"cahiers","neue":"nouvelle","alte":"ancienne","Schreibung":"orthographe","wild":"totalement","durcheinander":"en désordre","standen":"étaient","ertappte":"se surprenait","dabei":"à cela","wie":"à","zögerte":"hésiter","bevor":"avant de","einen":"un","roten":"rouge","Strich":"trait","unter":"sous","zog":"tracer","noch":"encore","Kurzem":"peu de temps auparavant","geschrieben":"écrit","hätte":"aurait","Sie":"elle","begriff":"comprit","nicht":"ne...pas","Rechtschreibung":"orthographe","ihrer":"de ses","Schüler":"élèves","beurteilte":"jugeait","sondern":"mais","eine":"une","Grenze":"frontière","zwischen":"entre","Zeiten":"époques","auf":"du","deren":"dont","Seite":"côté","unwiderruflich":"irrévocablement","zurückblieb":"restait en arrière","Erst":"ce n'est que","eigene":"propre","Enkelin":"petite-fille","Jahre":"années","später":"plus tard","über":"sur","doppeltes":"double","s":"s","belehrte":"instruisait","jener":"cette","beiläufigen":"désinvolte","Sicherheit":"assurance","nur":"seulement","Kinder":"enfants","besitzen":"posséder","verstand":"comprit","niemals":"jamais","gehört":"appartenu","immer":"toujours","geliehen":"prêtée","war":"était","Generation":"génération","weiterreichen":"transmettre","musste":"devait","ob":"que...ou","wollte":"veuille","oder":"ou","strich":"barrait","mehr":"plus","rot":"en rouge","lächelte":"souriait","notierte":"notait","am":"dans la (Rand)","Rand":"marge","kleines":"petite","Häkchen":"coche","dachte":"se dit","eines":"un","Tages":"jour","einem":"un","anderen":"autre","dieselbe":"la même","Erfahrung":"expérience","machen":"faire","würde":"ferait","Buchstaben":"lettres"}$t$::jsonb,
    $t$Fiction inspirée de la réforme de l'orthographe allemande de 1996$t$
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Seit wie vielen Jahren sitzt Ilse Brenner am selben Lehrerpult, als die Reform verkündet wird?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Achtundzwanzig Jahre$t$, true, 1),
    (v_q, $t$Fünf Jahre$t$, false, 2),
    (v_q, $t$Zwölf Jahre$t$, false, 3),
    (v_q, $t$Vierzig Jahre$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was ändert sich laut Text bei der Schreibung von „daß“?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Es wird zu „dass“$t$, true, 1),
    (v_q, $t$Es verschwindet vollständig aus der Sprache$t$, false, 2),
    (v_q, $t$Es wird großgeschrieben$t$, false, 3),
    (v_q, $t$Es bleibt völlig unverändert$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Wirkung hat der Vergleich „mit derselben Selbstverständlichkeit...wie das Amen in der Kirche“?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er zeigt, wie tief verinnerlicht und ritualisiert die alte Rechtschreibung für Ilse geworden war$t$, true, 1),
    (v_q, $t$Er zeigt, dass Ilse sehr religiös ist$t$, false, 2),
    (v_q, $t$Er beschreibt einen tatsächlichen Kirchenbesuch$t$, false, 3),
    (v_q, $t$Er hat rein humoristische Funktion ohne inhaltliche Bedeutung$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie reagieren die jüngeren Kollegen auf die Reform?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie begrüßen sie als überfällige Vereinfachung$t$, true, 1),
    (v_q, $t$Sie lehnen sie vollständig ab$t$, false, 2),
    (v_q, $t$Sie sind völlig gleichgültig$t$, false, 3),
    (v_q, $t$Sie verlassen die Schule aus Protest$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum empfinden die älteren Lehrer, zu denen Ilse zählt, die Reform als besonders schmerzhaft?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Weil sie sie als Eingriff in die Sprache empfinden, mit der sie selbst großgeworden sind$t$, true, 1),
    (v_q, $t$Weil sie finanzielle Nachteile befürchten$t$, false, 2),
    (v_q, $t$Weil sie ihre Stelle verlieren könnten$t$, false, 3),
    (v_q, $t$Weil sie die neuen Regeln nicht verstehen können$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was verdeutlicht die Beschreibung des Streits im Lehrerzimmer über den eigentlichen Charakter der Debatte?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Die Heftigkeit des Streits steht in keinem Verhältnis zur rein technischen Natur der Reform und zeigt eine tiefere emotionale/generationelle Dimension$t$, true, 1),
    (v_q, $t$Der Streit betrifft ausschließlich finanzielle Fragen$t$, false, 2),
    (v_q, $t$Der Streit wird sofort und problemlos beigelegt$t$, false, 3),
    (v_q, $t$Der Streit zeigt, dass die Reform objektiv bedeutungslos war$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wer belehrt Ilse Jahre später über ein doppeltes „s“?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Ihre eigene Enkelin$t$, true, 1),
    (v_q, $t$Ein Kollege$t$, false, 2),
    (v_q, $t$Der Schulleiter$t$, false, 3),
    (v_q, $t$Ein Zeitungsartikel$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was begreift Ilse, als sie die Hefte im ersten reformierten Schuljahr korrigiert?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Dass sie eigentlich eine Grenze zwischen zwei Zeiten beurteilt, nicht nur Rechtschreibfehler$t$, true, 1),
    (v_q, $t$Dass die Reform völlig überflüssig war$t$, false, 2),
    (v_q, $t$Dass ihre Schüler die neuen Regeln bereits perfekt beherrschen$t$, false, 3),
    (v_q, $t$Dass sie selbst die Reform sofort akzeptiert$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche allgemeine Erkenntnis über Sprache gewinnt Ilse am Ende der Geschichte?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Dass Sprache niemals einer Generation endgültig gehört, sondern nur geliehen und weitergereicht wird$t$, true, 1),
    (v_q, $t$Dass Sprache sich niemals verändern sollte$t$, false, 2),
    (v_q, $t$Dass nur ältere Generationen das Recht haben, über Sprache zu entscheiden$t$, false, 3),
    (v_q, $t$Dass Kinder grundsätzlich falsche Rechtschreibung verwenden$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet „verkündet“ im Satz „die Reform...wurde verkündet“?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$offiziell bekanntgegeben$t$, true, 1),
    (v_q, $t$heimlich geplant$t$, false, 2),
    (v_q, $t$endgültig abgeschafft$t$, false, 3),
    (v_q, $t$finanziell unterstützt$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welches Wort ist ein Synonym zu „Erbitterung“ im Kontext des Streits?$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Verbitterung/Heftigkeit des Konflikts$t$, true, 1),
    (v_q, $t$Freude$t$, false, 2),
    (v_q, $t$Gleichgültigkeit$t$, false, 3),
    (v_q, $t$Erleichterung$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet die Wendung „geliehen sein“ im übertragenen Sinn des letzten Absatzes?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Etwas nur vorübergehend besitzen und an andere weitergeben müssen$t$, true, 1),
    (v_q, $t$Finanziell verschuldet sein$t$, false, 2),
    (v_q, $t$Rechtlich gestohlen worden sein$t$, false, 3),
    (v_q, $t$Physisch unerreichbar sein$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Zeitform liegt in „wurde verkündet“ vor?$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Präteritum Passiv$t$, true, 1),
    (v_q, $t$Präsens Aktiv$t$, false, 2),
    (v_q, $t$Futur I$t$, false, 3),
    (v_q, $t$Imperativ$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welcher Modus liegt in „ein Fluss in drei...Schreibweisen existieren dürfen“ vor?$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Indikativ mit Modalverb im Konjunktiv-nahen Kontext einer neuen Regelung$t$, true, 1),
    (v_q, $t$Reiner Imperativ$t$, false, 2),
    (v_q, $t$Konjunktiv II der Vergangenheit$t$, false, 3),
    (v_q, $t$Futur II$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Funktion hat der Konjunktiv II in „das sie selbst noch vor Kurzem geschrieben hätte“?$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er drückt eine irreale, aber plausible Rückblende aus, die Ilses eigene frühere Schreibpraxis dem neuen Regelwerk gegenüberstellt$t$, true, 1),
    (v_q, $t$Er markiert eine sichere, tatsächlich eingetretene Handlung$t$, false, 2),
    (v_q, $t$Er drückt einen höflichen Wunsch aus$t$, false, 3),
    (v_q, $t$Er kennzeichnet indirekte Rede eines Dritten$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Die Rechtschreibreform wurde im Sommer ___ verkündet.$t$, 1, 'facile', 'lueckentext') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$1996$t$, true, 1),
    (v_q, $t$1968$t$, false, 2),
    (v_q, $t$2004$t$, false, 3),
    (v_q, $t$1989$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Das Kollegium teilte sich in zwei ___, die sich erbittert stritten.$t$, 1, 'normal', 'lueckentext') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Lager$t$, true, 1),
    (v_q, $t$Klassen$t$, false, 2),
    (v_q, $t$Fächer$t$, false, 3),
    (v_q, $t$Prüfungen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Ilse begreift, dass sie eine Grenze zwischen zwei ___ beurteilt, nicht nur Rechtschreibfehler.$t$, 1, 'difficile', 'lueckentext') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Zeiten$t$, true, 1),
    (v_q, $t$Städten$t$, false, 2),
    (v_q, $t$Fächern$t$, false, 3),
    (v_q, $t$Familien$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Wortart ist „achtundzwanzig“ in „seit achtundzwanzig Jahren“?$t$, 1, 'facile', 'grammar') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Zahlwort (Numerale)$t$, true, 1),
    (v_q, $t$Substantiv$t$, false, 2),
    (v_q, $t$Adjektiv im Komparativ$t$, false, 3),
    (v_q, $t$Präposition$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welches Stilmittel liegt in der Formulierung „mit derselben Selbstverständlichkeit gesetzt wie das Amen in der Kirche“ vor?$t$, 1, 'normal', 'grammar') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Ein Vergleich, der eine ritualisierte Alltagshandlung mit einer religiösen Gewissheit gleichsetzt$t$, true, 1),
    (v_q, $t$Eine Ironie ohne ernsthaften Inhalt$t$, false, 2),
    (v_q, $t$Eine rhetorische Frage$t$, false, 3),
    (v_q, $t$Eine Alliteration$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie lässt sich der Satzbau in „sie begriff, dass sie nicht die Rechtschreibung...beurteilte, sondern eine Grenze zwischen zwei Zeiten, auf deren einer Seite sie unwiderruflich zurückblieb“ beschreiben?$t$, 1, 'difficile', 'grammar') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Ein mehrfach erweiterter Objektsatz mit Oppositionskonjunktion „sondern“ und eingebettetem Relativsatz, der die zentrale Erkenntnis der Figur syntaktisch verdichtet$t$, true, 1),
    (v_q, $t$Ein einfacher Hauptsatz ohne jede Unterordnung$t$, false, 2),
    (v_q, $t$Eine Reihe unverbundener Hauptsätze$t$, false, 3),
    (v_q, $t$Ein Fragesatz mit invertierter Wortstellung$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, justification)
    VALUES (v_story, $t$Alle Lehrer im Kollegium begrüßen die Rechtschreibreform gleichermaßen begeistert.$t$, 1, 'facile', 'true_false', $t$Das Kollegium teilt sich in zwei Lager, die sich erbittert streiten; die Älteren empfinden die Reform als Eingriff.$t$) RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Wahr$t$, false, 1),
    (v_q, $t$Falsch$t$, true, 2);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, justification)
    VALUES (v_story, $t$Ilse zögert manchmal, bevor sie ein „daß“ als Fehler markiert.$t$, 1, 'normal', 'true_false', $t$Sie ertappt sich dabei, wie sie zögert, bevor sie einen roten Strich unter ein „daß“ zieht.$t$) RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Wahr$t$, true, 1),
    (v_q, $t$Falsch$t$, false, 2);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, justification)
    VALUES (v_story, $t$Der Text stellt Sprachwandel letztlich als endgültigen Verlust dar, den die ältere Generation nie akzeptieren kann.$t$, 1, 'difficile', 'true_false', $t$Am Ende akzeptiert Ilse, dass Sprache nur geliehen ist und weitergereicht werden muss, unabhängig vom eigenen Wollen.$t$) RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Wahr$t$, false, 1),
    (v_q, $t$Falsch$t$, true, 2);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer, rubric)
    VALUES (v_story, $t$Reflektieren Sie darüber, wie Sprachreformen wie die Rechtschreibreform von 1996 unterschiedliche Generationen unterschiedlich betreffen können, und welche Herausforderungen dies für Institutionen wie Schulen mit sich bringt.$t$, 1, 'normal', 'production', $t$Sprachreformen betreffen ältere und jüngere Generationen häufig auf sehr unterschiedliche Weise, da für erstere die bisherige Schreibweise eng mit der eigenen Identität und jahrzehntelanger Praxis verbunden ist. Während jüngere Lehrkräfte eine Reform oft pragmatisch als Vereinfachung begrüßen, erleben ältere sie eher als Verlust eines vertrauten Ordnungssystems. Schulen stehen dabei vor der Herausforderung, neue Regeln konsequent zu vermitteln, ohne die Verunsicherung erfahrener Lehrkräfte zu ignorieren. Wie die Geschichte von Ilse zeigt, kann diese Verunsicherung sogar zu einem widerstrebenden, zögerlichen Umgang mit den neuen Regeln führen. Langfristig zeigt sich jedoch, dass Sprache ohnehin nie im Besitz einer einzelnen Generation ist, sondern stets an nachfolgende Generationen weitergereicht wird. Institutionen sollten daher Übergangsphasen einplanen, in denen alte und neue Regeln nebeneinander toleriert werden, um den Wandel sozial verträglicher zu gestalten.$t$, $t$[{"criterion":"Aufgabenerfüllung","description":"Der Text erläutert differenziert die unterschiedliche Betroffenheit von Generationen und institutionelle Herausforderungen."},{"criterion":"Wortschatz","description":"Präziser Wortschatz zu Sprachwandel, Identität und Bildungsinstitutionen."},{"criterion":"Grammatik","description":"Komplexe Satzverbindungen mit „während“, „obwohl“, „sondern“."},{"criterion":"Kohärenz","description":"Klare Argumentationslinie von der Ausgangsthese zur abschließenden Empfehlung."}]$t$::jsonb);

END $block$;

