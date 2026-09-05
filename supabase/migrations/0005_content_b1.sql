-- Contenu réel — niveau B1 (25 histoires). Chaque histoire a :
-- - 3 questions de compréhension (position 1-3) x 3 difficultés
-- - 1 question de vocabulaire (position 1) x 3 difficultés
-- - 1 question de conjugaison/grammaire (position 1) x 3 difficultés
-- - 1 tâche de production écrite (position 1, difficulty 'normal', pas de choix, model_answer)

-- 1. Ein Missverständnis
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary) VALUES (
    'B1',
    $t$Ein Missverständnis$t$,
    $t$Sarah arbeitet seit drei Monaten in einer neuen Firma. Letzte Woche hat ihr Chef eine E-Mail an das ganze Team geschickt, in der er um Feedback zu einem Projekt bat. Sarah hat ehrlich geschrieben, was sie an dem Projekt kritisch fand, weil sie dachte, das sei genau das, was ihr Chef wollte. Am nächsten Tag hat sie gemerkt, dass ihre Kollegen viel vorsichtiger geantwortet hatten. Einige hatten fast nur Positives geschrieben. Sarah wurde unsicher und fragte sich, ob sie einen Fehler gemacht hatte. Sie hat sich entschieden, direkt mit ihrem Chef zu sprechen, anstatt sich weiter Sorgen zu machen. Zu ihrer Überraschung hat ihr Chef ihr Feedback sehr geschätzt. Er sagte, dass er genau solche ehrlichen Meinungen brauche, um das Projekt zu verbessern, auch wenn sie unbequem seien. Er erklärte außerdem, dass in dieser Firmenkultur oft zu vorsichtig kommuniziert werde und dass er das gerne ändern würde. Sarah fühlte sich danach viel sicherer. Sie verstand, dass Offenheit in diesem Team geschätzt wurde, auch wenn nicht alle Kollegen das schon wussten. Von da an hat sie öfter ihre wirkliche Meinung gesagt, ohne Angst vor negativen Reaktionen zu haben.$t$,
    $t$Sarah travaille depuis trois mois dans une nouvelle entreprise. La semaine dernière, son chef a envoyé un e-mail à toute l'équipe dans lequel il demandait un retour sur un projet. Sarah a écrit honnêtement ce qu'elle trouvait critiquable dans le projet, parce qu'elle pensait que c'était exactement ce que son chef voulait. Le lendemain, elle a remarqué que ses collègues avaient répondu de manière beaucoup plus prudente. Certains n'avaient écrit presque que du positif. Sarah est devenue incertaine et s'est demandé si elle avait commis une erreur. Elle a décidé de parler directement à son chef plutôt que de continuer à s'inquiéter. À sa grande surprise, son chef a beaucoup apprécié son retour. Il a dit qu'il avait justement besoin de ce genre d'avis honnêtes pour améliorer le projet, même s'ils étaient désagréables à entendre. Il a expliqué en outre que, dans la culture de cette entreprise, on communiquait souvent de façon trop prudente et qu'il aimerait bien changer cela. Sarah s'est sentie beaucoup plus sûre d'elle après cela. Elle a compris que la franchise était appréciée dans cette équipe, même si tous les collègues ne le savaient pas encore. À partir de ce moment, elle a exprimé plus souvent sa véritable opinion, sans avoir peur de réactions négatives.$t$,
    $t${"Sarah":"Sarah","arbeitet":"travaille","seit":"depuis","drei":"trois","Monaten":"mois","in":"dans","einer":"une","neuen":"nouvelle","Firma":"entreprise","Letzte":"dernière","Woche":"semaine","hat":"a","ihr":"son/sa","Chef":"chef","eine":"un/une","ganze":"toute","Team":"équipe","geschickt":"envoyé","der":"le/dans lequel","er":"il","um":"pour","Feedback":"retour","zu":"à/de","einem":"un","Projekt":"projet","bat":"demandait","ehrlich":"honnêtement","geschrieben":"écrit","was":"ce que","sie":"elle/ils","dem":"le","kritisch":"critique","fand":"trouvait","weil":"parce que","dachte":"pensait","genau":"exactement","wollte":"voulait","Am":"le","nächsten":"lendemain/prochain","Tag":"jour","gemerkt":"remarqué","dass":"que","ihre":"ses","Kollegen":"collègues","viel":"beaucoup","vorsichtiger":"plus prudent","geantwortet":"répondu","hatten":"avaient","Einige":"certains","fast":"presque","nur":"seulement","Positives":"du positif","wurde":"est devenue","unsicher":"incertaine","und":"et","fragte":"demandait","sich":"se","ob":"si","einen":"une","Fehler":"erreur","gemacht":"fait","hatte":"avait","Sie":"elle","entschieden":"décidé","direkt":"directement","mit":"avec","ihrem":"son","sprechen":"parler","anstatt":"au lieu de","weiter":"continuer","Sorgen":"soucis","machen":"faire","Zu":"à","ihrer":"sa","Überraschung":"surprise","geschätzt":"apprécié","Er":"il","sagte":"a dit","solche":"de tels","ehrlichen":"honnêtes","Meinungen":"avis","brauche":"a besoin","verbessern":"améliorer","auch wenn":"même si","unbequem":"désagréables","seien":"soient","erklärte":"a expliqué","außerdem":"en outre","dieser":"cette","Firmenkultur":"culture d'entreprise","oft":"souvent","vorsichtig":"prudemment","kommuniziert":"communiqué","werde":"soit","gerne":"volontiers","ändern":"changer","würde":"voudrait","fühlte":"s'est sentie","danach":"après cela","sicherer":"plus sûre","verstand":"a compris","Offenheit":"franchise","diesem":"cette","alle":"tous","schon":"déjà","wussten":"savaient","öfter":"plus souvent","wirkliche":"véritable","Meinung":"opinion","gesagt":"dit","ohne":"sans","Angst":"peur","vor":"de","negativen":"négatives","Reaktionen":"réactions","haben":"avoir","E-Mail":"e-mail","Von":"à partir de","da":"ce moment","an":"partir de","das":"cela/le","sei":"était","sehr":"très","auch":"aussi","wenn":"quand","nicht":"pas"}$t$::jsonb
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was hat Sarah in ihrer E-Mail über das Projekt geschrieben?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Nur Lob$t$, false, 1),
    (v_q, $t$Ehrlich, was sie kritisch fand$t$, true, 2),
    (v_q, $t$Nichts$t$, false, 3),
    (v_q, $t$Eine Kündigung$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was hat Sarah in ihrer E-Mail geschrieben?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Nur positive Kommentare$t$, false, 1),
    (v_q, $t$Ehrliche, kritische Kommentare$t$, true, 2),
    (v_q, $t$Gar nichts$t$, false, 3),
    (v_q, $t$Eine Beschwerde über ihren Chef$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum hat Sarah offen und kritisch geschrieben, obwohl ihre Kollegen das nicht taten?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Weil sie dachte, das sei es, was der Chef erwartete$t$, true, 1),
    (v_q, $t$Weil sie ihre Kollegen ärgern wollte$t$, false, 2),
    (v_q, $t$Weil der Chef sie extra darum gebeten hatte, kritisch zu sein$t$, false, 3),
    (v_q, $t$Weil sie den Job kündigen wollte$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie haben viele Kollegen auf die E-Mail geantwortet?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Ehrlich und kritisch$t$, false, 1),
    (v_q, $t$Vorsichtig, fast nur positiv$t$, true, 2),
    (v_q, $t$Gar nicht$t$, false, 3),
    (v_q, $t$Wütend$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie haben die meisten Kollegen auf die E-Mail des Chefs reagiert?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Genauso ehrlich wie Sarah$t$, false, 1),
    (v_q, $t$Sehr vorsichtig und positiv$t$, true, 2),
    (v_q, $t$Sie haben gar nicht geantwortet$t$, false, 3),
    (v_q, $t$Sie haben sich beschwert$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was zeigte der Vergleich zwischen Sarahs Antwort und den Antworten ihrer Kollegen?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Dass Sarah als Einzige offen kommunizierte, während andere zurückhaltender waren$t$, true, 1),
    (v_q, $t$Dass alle im Team gleich ehrlich antworteten$t$, false, 2),
    (v_q, $t$Dass die Kollegen Sarahs Meinung teilten, aber Angst hatten, das zu sagen$t$, false, 3),
    (v_q, $t$Dass der Chef mit keiner der Antworten zufrieden war$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was hat der Chef zu Sarahs Feedback gesagt?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er fand es schlecht$t$, false, 1),
    (v_q, $t$Er hat es sehr geschätzt$t$, true, 2),
    (v_q, $t$Er hat nichts gesagt$t$, false, 3),
    (v_q, $t$Er war böse$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie hat der Chef auf Sarahs Feedback reagiert?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er war verärgert$t$, false, 1),
    (v_q, $t$Er hat es sehr geschätzt$t$, true, 2),
    (v_q, $t$Er hat es ignoriert$t$, false, 3),
    (v_q, $t$Er hat Sarah gekündigt$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was wollte der Chef mit seiner Reaktion auf Sarahs Feedback erreichen?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er wollte zeigen, dass in der Firma eigentlich offenere Kommunikation gewünscht ist$t$, true, 1),
    (v_q, $t$Er wollte Sarah für ihre Unehrlichkeit loben$t$, false, 2),
    (v_q, $t$Er wollte die anderen Kollegen kritisieren$t$, false, 3),
    (v_q, $t$Er wollte das Projekt beenden$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'ehrlich'?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$honnête$t$, true, 1),
    (v_q, $t$drôle$t$, false, 2),
    (v_q, $t$rapide$t$, false, 3),
    (v_q, $t$fatigué$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$'Sarah wurde unsicher.' Was bedeutet 'unsicher' hier?$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$nicht sicher, zweifelnd$t$, true, 1),
    (v_q, $t$sehr glücklich$t$, false, 2),
    (v_q, $t$müde$t$, false, 3),
    (v_q, $t$wütend$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Im Satz 'Er sagte, dass er genau solche ehrlichen Meinungen brauche' – was bedeutet 'schätzen' (das der Chef tut)?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$apprécier, valoriser$t$, true, 1),
    (v_q, $t$critiquer$t$, false, 2),
    (v_q, $t$ignorieren$t$, false, 3),
    (v_q, $t$vergessen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Ergänzen Sie: Ihr Chef ___ eine E-Mail geschickt. (Perfekt)$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$hat$t$, true, 1),
    (v_q, $t$ist$t$, false, 2),
    (v_q, $t$war$t$, false, 3),
    (v_q, $t$wird$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$'Sie hat sich entschieden, direkt mit ihrem Chef ___ sprechen.'$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$zu$t$, true, 1),
    (v_q, $t$um zu$t$, false, 2),
    (v_q, $t$damit$t$, false, 3),
    (v_q, $t$ohne$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wählen Sie die korrekte Nebensatzstellung: 'Sarah fragte sich, ob sie ___.'$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$einen Fehler gemacht hatte$t$, true, 1),
    (v_q, $t$hatte einen Fehler gemacht$t$, false, 2),
    (v_q, $t$gemacht hatte einen Fehler$t$, false, 3),
    (v_q, $t$hatte gemacht einen Fehler$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$Beschreiben Sie in 5-7 Sätzen eine Situation, in der es bei Ihnen (oder in einer Geschichte, die Sie kennen) am Arbeitsplatz zu einem Missverständnis kam. Wie wurde es gelöst?$t$, 1, 'normal', 'production', $t$Vor einigen Monaten habe ich in einer Teambesprechung eine kritische Bemerkung zu einem Projekt gemacht. Ich dachte, offene Kritik sei erwünscht, aber meine Kollegen reagierten überrascht und still. Später erfuhr ich, dass in unserem Team meistens sehr vorsichtig kommuniziert wird. Ich hatte Angst, dass ich etwas falsch gemacht hatte. Deshalb sprach ich direkt mit meiner Chefin über die Situation. Sie erklärte mir, dass sie ehrliches Feedback tatsächlich schätzt, auch wenn es ungewöhnlich klingt. Am Ende fühlte ich mich erleichtert und verstand die Firmenkultur besser.$t$);

END $block$;

-- 2. Der erste Arbeitstag
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary) VALUES (
    'B1',
    $t$Der erste Arbeitstag$t$,
    $t$Jonas hatte großen Respekt vor seinem ersten Arbeitstag in der neuen Firma. Obwohl er in seinem Studium viel gelernt hatte, fühlte er sich unsicher, weil er nicht wusste, wie es im echten Berufsleben zugeht. Als er morgens ankam, wurde er von seiner neuen Chefin freundlich empfangen und einem erfahrenen Kollegen vorgestellt, der ihn während der ersten Wochen begleiten sollte. Dieser Kollege erklärte ihm geduldig, wie die internen Systeme funktionierten, auch wenn Jonas manchmal mehrmals nachfragen musste. Am Nachmittag sollte Jonas an einem kleinen Projekt mitarbeiten, das für einen wichtigen Kunden bestimmt war. Er hatte Angst, Fehler zu machen, doch sein Kollege beruhigte ihn und sagte, dass am Anfang niemand alles perfekt könne. Als der Arbeitstag zu Ende ging, war Jonas erschöpft, aber auch stolz auf sich. Er hatte viel gelernt und sich schneller eingelebt, als er erwartet hatte. Auf dem Heimweg dachte er darüber nach, wie unbegründet seine anfängliche Angst gewesen war. Er rief seine Eltern an, um ihnen von seinem ersten Tag zu erzählen, und sie freuten sich sehr für ihn.$t$,
    $t$Jonas avait beaucoup d'appréhension pour son premier jour de travail dans la nouvelle entreprise. Bien qu'il ait beaucoup appris pendant ses études, il se sentait incertain, car il ne savait pas comment cela se passait vraiment dans la vie professionnelle. Quand il est arrivé le matin, il a été accueilli chaleureusement par sa nouvelle cheffe et présenté à un collègue expérimenté qui devait l'accompagner pendant les premières semaines. Ce collègue lui a expliqué patiemment comment fonctionnaient les systèmes internes, même si Jonas devait parfois redemander plusieurs fois. L'après-midi, Jonas devait participer à un petit projet destiné à un client important. Il avait peur de faire des erreurs, mais son collègue l'a rassuré en disant que personne ne pouvait tout faire parfaitement au début. Quand la journée de travail s'est terminée, Jonas était épuisé, mais aussi fier de lui. Il avait beaucoup appris et s'était adapté plus vite qu'il ne l'avait prévu. Sur le chemin du retour, il a réfléchi à quel point sa peur initiale avait été infondée. Il a appelé ses parents pour leur raconter sa première journée, et ils étaient très contents pour lui.$t$,
    $t${"Jonas":"Jonas","hatte":"avait","großen":"grand","Respekt":"appréhension","vor":"devant","seinem":"son","ersten":"premier","Arbeitstag":"jour de travail","der":"la","neuen":"nouvelle","Firma":"entreprise","Obwohl":"bien que","er":"il","in":"dans","Studium":"études","viel":"beaucoup","gelernt":"appris","fühlte":"se sentait","sich":"se","unsicher":"incertain","weil":"parce que","wusste":"savait","wie":"comment","es":"cela","im":"dans le","echten":"réel","Berufsleben":"vie professionnelle","zugeht":"se passe","Als":"quand","morgens":"le matin","ankam":"est arrivé","wurde":"a été","von":"par","seiner":"sa","Chefin":"cheffe","freundlich":"chaleureusement","empfangen":"accueilli","und":"et","einem":"un","erfahrenen":"expérimenté","Kollegen":"collègue","vorgestellt":"présenté","ihn":"le","während":"pendant","Wochen":"semaines","begleiten":"accompagner","sollte":"devait","Dieser":"ce","erklärte":"a expliqué","ihm":"lui","geduldig":"patiemment","die":"les","internen":"internes","Systeme":"systèmes","funktionierten":"fonctionnaient","manchmal":"parfois","mehrmals":"plusieurs fois","nachfragen":"redemander","musste":"devait","Am":"le","Nachmittag":"après-midi","an":"à","kleinen":"petit","Projekt":"projet","mitarbeiten":"participer","das":"qui","für":"pour","einen":"un","wichtigen":"important","Kunden":"client","bestimmt":"destiné","war":"était","Angst":"peur","Fehler":"erreurs","doch":"mais","sein":"son","Kollege":"collègue","beruhigte":"a rassuré","sagte":"a dit","dass":"que","niemand":"personne","alles":"tout","perfekt":"parfaitement","könne":"pouvait","ging":"allait","erschöpft":"épuisé","aber":"mais","auch":"aussi","stolz":"fier","Er":"il","eingelebt":"adapté","schneller":"plus vite","als":"que","erwartet":"attendu","dachte":"a réfléchi","darüber":"à cela","nach":"à","unbegründet":"infondée","seine":"sa","anfängliche":"initiale","gewesen":"été","rief":"a appelé","Eltern":"parents","um":"pour","ihnen":"leur","Tag":"journée","erzählen":"raconter","sie":"ils","freuten":"étaient contents","sehr":"très","seinen":"ses","nicht":"pas","wenn":"quand","zu":"à/de","machen":"faire","am":"le","Anfang":"début","Ende":"fin","auf":"sur","Auf":"sur","dem":"le/à","Heimweg":"chemin du retour"}$t$::jsonb
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum hatte Jonas Angst vor dem ersten Arbeitstag?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er hatte keine Ausbildung$t$, false, 1),
    (v_q, $t$Er kannte das Berufsleben noch nicht$t$, true, 2),
    (v_q, $t$Er mochte die Firma nicht$t$, false, 3),
    (v_q, $t$Er wollte nicht arbeiten$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum war Jonas vor seinem ersten Arbeitstag unsicher?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er hatte nichts studiert$t$, false, 1),
    (v_q, $t$Er wusste nicht, wie das Berufsleben ist$t$, true, 2),
    (v_q, $t$Er mochte seine Chefin nicht$t$, false, 3),
    (v_q, $t$Er wollte den Job nicht$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was zeigt, dass Jonas' Unsicherheit vor allem an fehlender Erfahrung lag, nicht an fehlendem Wissen?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er hatte im Studium viel gelernt, aber keine praktische Erfahrung$t$, true, 1),
    (v_q, $t$Er hatte im Studium nichts gelernt$t$, false, 2),
    (v_q, $t$Er hatte schon einmal in einer Firma gearbeitet$t$, false, 3),
    (v_q, $t$Er wollte lieber weiterstudieren$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wer hat Jonas in den ersten Wochen geholfen?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Seine Chefin$t$, false, 1),
    (v_q, $t$Ein erfahrener Kollege$t$, true, 2),
    (v_q, $t$Ein Kunde$t$, false, 3),
    (v_q, $t$Niemand$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wer hat Jonas während der ersten Wochen begleitet?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Seine Chefin$t$, false, 1),
    (v_q, $t$Ein erfahrener Kollege$t$, true, 2),
    (v_q, $t$Ein anderer neuer Mitarbeiter$t$, false, 3),
    (v_q, $t$Niemand$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie unterstützte der erfahrene Kollege Jonas konkret?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Indem er ihm geduldig die internen Systeme erklärte, auch bei mehreren Nachfragen$t$, true, 1),
    (v_q, $t$Indem er die Arbeit für ihn erledigte$t$, false, 2),
    (v_q, $t$Indem er ihn beim Kunden vorstellte$t$, false, 3),
    (v_q, $t$Indem er ihm sagte, er solle die Chefin fragen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie fühlte sich Jonas am Ende seines ersten Arbeitstages?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Traurig$t$, false, 1),
    (v_q, $t$Erschöpft, aber stolz$t$, true, 2),
    (v_q, $t$Gelangweilt$t$, false, 3),
    (v_q, $t$Ängstlich$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie hat sich Jonas am Ende des Tages gefühlt?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Enttäuscht$t$, false, 1),
    (v_q, $t$Erschöpft, aber stolz$t$, true, 2),
    (v_q, $t$Wütend$t$, false, 3),
    (v_q, $t$Gelangweilt$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was änderte sich bei Jonas zwischen dem Morgen und dem Abend des ersten Arbeitstages?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Seine anfängliche Angst wich einem Gefühl von Stolz und schnellerem Einleben als erwartet$t$, true, 1),
    (v_q, $t$Er wurde vom ersten Moment an sehr selbstsicher$t$, false, 2),
    (v_q, $t$Er entschied, die Firma wieder zu verlassen$t$, false, 3),
    (v_q, $t$Er blieb den ganzen Tag über unsicher$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'erschöpft'?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$épuisé$t$, true, 1),
    (v_q, $t$content$t$, false, 2),
    (v_q, $t$en retard$t$, false, 3),
    (v_q, $t$curieux$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$'Er wurde freundlich empfangen.' Was bedeutet 'empfangen' hier?$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$accueillir$t$, true, 1),
    (v_q, $t$envoyer$t$, false, 2),
    (v_q, $t$oublier$t$, false, 3),
    (v_q, $t$kritisieren$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'unbegründet' im Satz 'wie unbegründet seine anfängliche Angst gewesen war'?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$ohne echten Grund, sans fondement$t$, true, 1),
    (v_q, $t$sehr stark begründet$t$, false, 2),
    (v_q, $t$gefährlich$t$, false, 3),
    (v_q, $t$wichtig$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$'Jonas ___ großen Respekt vor seinem ersten Arbeitstag.' (Präteritum von 'haben')$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$hatte$t$, true, 1),
    (v_q, $t$hat$t$, false, 2),
    (v_q, $t$hätte$t$, false, 3),
    (v_q, $t$haben$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$'Er fühlte sich unsicher, weil er nicht ___, wie es im Berufsleben zugeht.' (Präteritum von 'wissen')$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$wusste$t$, true, 1),
    (v_q, $t$weiß$t$, false, 2),
    (v_q, $t$wisste$t$, false, 3),
    (v_q, $t$gewusst$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Modalverb im Nebensatz: 'sein Kollege sagte, dass am Anfang niemand alles perfekt ___.'$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$könne$t$, true, 1),
    (v_q, $t$kann$t$, false, 2),
    (v_q, $t$konnte er$t$, false, 3),
    (v_q, $t$können$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$Erinnern Sie sich an einen ersten Tag (Arbeit, Schule, Kurs) in Ihrem Leben. Schreiben Sie 5-7 Sätze darüber, wie Sie sich gefühlt haben und was passiert ist.$t$, 1, 'normal', 'production', $t$An meinem ersten Tag in der neuen Sprachschule war ich sehr nervös. Ich kannte niemanden und wusste nicht genau, was mich erwartete. Eine Mitschülerin hat mich freundlich begrüßt und mir alles erklärt. Am Anfang habe ich mich unsicher gefühlt, weil ich viele Fehler beim Sprechen gemacht habe. Nach ein paar Stunden habe ich mich aber entspannt und mehr Vertrauen gefunden. Am Abend war ich müde, aber auch stolz, dass ich den ersten Tag gut geschafft hatte. Ich habe verstanden, dass die Angst am Anfang oft größer ist als nötig.$t$);

END $block$;

-- 3. Die Nachbarschaftsparty
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary) VALUES (
    'B1',
    $t$Die Nachbarschaftsparty$t$,
    $t$In der Straße, in der Clara wohnt, wurde seit Jahren keine Nachbarschaftsparty mehr organisiert. Als eine neue Familie einzog, schlug die Mutter vor, endlich wieder ein Fest zu veranstalten, damit sich alle besser kennenlernen könnten. Clara war zunächst skeptisch, weil sie dachte, dass sich niemand für so etwas interessieren würde. Trotzdem half sie mit, Einladungen zu verteilen und einen Tisch mit Getränken vorzubereiten. Zu ihrer Überraschung kamen fast alle Nachbarn, sogar der ältere Herr aus dem Haus gegenüber, den kaum jemand je gesehen hatte. Es stellte sich heraus, dass er früher Musiker gewesen war und brachte seine Gitarre mit. Er spielte den ganzen Abend Lieder, während die Kinder im Garten spielten und die Erwachsenen sich unterhielten. Clara erkannte, dass viele Nachbarn ähnliche Interessen hatten, von denen sie vorher nichts gewusst hatte. Am Ende des Abends waren alle sich einig, dass man solche Feste öfter organisieren sollte. Clara übernahm freiwillig die Aufgabe, die nächste Party im Sommer zu planen, und freute sich schon jetzt darauf, ihre Nachbarn besser kennenzulernen.$t$,
    $t$Dans la rue où habite Clara, aucune fête de quartier n'avait été organisée depuis des années. Quand une nouvelle famille a emménagé, la mère a proposé d'organiser enfin de nouveau une fête, pour que tout le monde puisse mieux se connaître. Clara était d'abord sceptique, parce qu'elle pensait que personne ne s'intéresserait à ce genre de chose. Elle a quand même aidé à distribuer les invitations et à préparer une table avec des boissons. À sa grande surprise, presque tous les voisins sont venus, même le vieux monsieur de la maison d'en face, que presque personne n'avait jamais vu. Il s'est avéré qu'il avait été musicien autrefois et il a apporté sa guitare. Il a joué des chansons toute la soirée, pendant que les enfants jouaient dans le jardin et que les adultes discutaient. Clara a réalisé que beaucoup de voisins avaient des intérêts semblables, dont elle n'avait rien su auparavant. À la fin de la soirée, tout le monde était d'accord pour dire qu'il faudrait organiser de telles fêtes plus souvent. Clara s'est portée volontaire pour organiser la prochaine fête en été, et elle se réjouissait déjà à l'idée de mieux connaître ses voisins.$t$,
    $t${"In":"dans","der":"le","Straße":"rue","in der":"où","Clara":"Clara","wohnt":"habite","wurde":"a été","seit":"depuis","Jahren":"années","keine":"aucune","Nachbarschaftsparty":"fête de quartier","mehr":"plus","organisiert":"organisée","Als":"quand","eine":"une","neue":"nouvelle","Familie":"famille","einzog":"a emménagé","schlug":"a proposé","die":"la","Mutter":"mère","vor":"proposé","endlich":"enfin","wieder":"de nouveau","ein":"une","Fest":"fête","zu veranstalten":"organiser","damit":"pour que","sich":"se","alle":"tous","besser":"mieux","kennenlernen":"connaître","könnten":"puissent","war":"était","zunächst":"d'abord","skeptisch":"sceptique","weil":"parce que","dachte":"pensait","dass":"que","niemand":"personne","für":"pour","so etwas":"ce genre de chose","interessieren":"intéresser","würde":"s'intéresserait","Trotzdem":"quand même","half":"a aidé","mit":"apporté","Einladungen":"invitations","zu verteilen":"distribuer","und":"et","einen":"une","Tisch":"table","Getränken":"boissons","vorzubereiten":"préparer","Zu":"à","ihrer":"sa","Überraschung":"surprise","kamen":"sont venus","fast":"presque","Nachbarn":"voisins","sogar":"même","ältere":"vieux","Herr":"monsieur","aus":"de","dem":"la","Haus":"maison","gegenüber":"d'en face","den":"que","kaum":"presque personne","jemand":"quelqu'un","je":"jamais","gesehen":"vu","hatte":"avait","Es":"il","stellte sich heraus":"s'est avéré","dass er":"qu'il","früher":"autrefois","Musiker":"musicien","gewesen":"été","brachte":"apportait","seine":"sa","Gitarre":"guitare","Er":"il","spielte":"jouait","ganzen":"toute","Abend":"soirée","Lieder":"chansons","während":"pendant que","Kinder":"enfants","im":"en","Garten":"jardin","spielten":"jouaient","Erwachsenen":"adultes","sich unterhielten":"discutaient","erkannte":"a réalisé","viele":"beaucoup","ähnliche":"semblables","Interessen":"intérêts","hatten":"avaient","von denen":"dont","vorher":"auparavant","nichts":"rien","gewusst":"su","Am":"à","Ende":"fin","des":"de la","Abends":"soirée","waren":"étaient","sich einig":"d'accord","man":"on","solche":"de telles","Feste":"fêtes","öfter":"plus souvent","organisieren":"organiser","sollte":"faudrait","übernahm":"s'est chargée","freiwillig":"volontairement","Aufgabe":"tâche","nächste":"prochaine","Party":"fête","Sommer":"été","zu planen":"organiser","freute sich":"se réjouissait","schon jetzt":"déjà","darauf":"à cela","kennenzulernen":"connaître","in":"dans","zu":"à/de","veranstalten":"organiser","sie":"elle/ils","so":"si","etwas":"quelque chose","verteilen":"distribuer","stellte":"a placé","heraus":"dehors","er":"il","unterhielten":"discutaient","von":"de","denen":"dont","einig":"d'accord","planen":"planifier","freute":"s'est réjoui","schon":"déjà","jetzt":"maintenant","ihre":"ses/leurs"}$t$::jsonb
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wer hatte die Idee für die Nachbarschaftsparty?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Clara$t$, false, 1),
    (v_q, $t$Die Mutter der neuen Familie$t$, true, 2),
    (v_q, $t$Der ältere Herr$t$, false, 3),
    (v_q, $t$Die Kinder$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wer hat vorgeschlagen, eine Nachbarschaftsparty zu organisieren?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Clara$t$, false, 1),
    (v_q, $t$Die Mutter der neuen Familie$t$, true, 2),
    (v_q, $t$Der ältere Herr$t$, false, 3),
    (v_q, $t$Die Kinder$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum wollte die neue Nachbarin ein Fest organisieren?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Damit sich die Nachbarn besser kennenlernen konnten$t$, true, 1),
    (v_q, $t$Weil sie schon lange in der Straße wohnte$t$, false, 2),
    (v_q, $t$Weil Clara sie darum gebeten hatte$t$, false, 3),
    (v_q, $t$Weil der ältere Herr Musik machen wollte$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was hat man über den älteren Nachbarn erfahren?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er ist neu eingezogen$t$, false, 1),
    (v_q, $t$Er war früher Musiker$t$, true, 2),
    (v_q, $t$Er mag keine Partys$t$, false, 3),
    (v_q, $t$Er kennt Clara gut$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was hat man über den älteren Herrn aus dem Haus gegenüber erfahren?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er ist neu in die Straße gezogen$t$, false, 1),
    (v_q, $t$Er war früher Musiker$t$, true, 2),
    (v_q, $t$Er mag keine Feste$t$, false, 3),
    (v_q, $t$Er kennt Clara schon lange$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was überraschte Clara besonders an dem Fest?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Dass Nachbarn, die sie kaum kannte, wie der zurückgezogene ältere Herr, überraschende Talente und gemeinsame Interessen zeigten$t$, true, 1),
    (v_q, $t$Dass niemand zu der Party kam$t$, false, 2),
    (v_q, $t$Dass der ältere Herr sich weigerte, Gitarre zu spielen$t$, false, 3),
    (v_q, $t$Dass die Kinder das Fest organisiert hatten$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was hat Clara am Ende beschlossen?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Umzuziehen$t$, false, 1),
    (v_q, $t$Die nächste Party zu organisieren$t$, true, 2),
    (v_q, $t$Gitarre zu lernen$t$, false, 3),
    (v_q, $t$Nie wieder ein Fest zu machen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was hat Clara am Ende der Geschichte übernommen?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie ist umgezogen$t$, false, 1),
    (v_q, $t$Sie plant die nächste Party$t$, true, 2),
    (v_q, $t$Sie hat Gitarre gelernt$t$, false, 3),
    (v_q, $t$Sie organisiert nichts mehr$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie veränderte sich Claras Haltung gegenüber Nachbarschaftsfesten im Laufe der Geschichte?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Von anfänglicher Skepsis zu aktivem Engagement, weil sie den Wert des Festes erkannte$t$, true, 1),
    (v_q, $t$Sie war von Anfang bis Ende begeistert$t$, false, 2),
    (v_q, $t$Sie blieb bis zum Schluss skeptisch$t$, false, 3),
    (v_q, $t$Sie interessierte sich nur für die Musik$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'die Nachbarschaft'?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$le voisinage$t$, true, 1),
    (v_q, $t$la fête$t$, false, 2),
    (v_q, $t$la rue$t$, false, 3),
    (v_q, $t$la famille$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$'Clara war zunächst skeptisch.' Was bedeutet 'skeptisch'?$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$méfiant, sceptique$t$, true, 1),
    (v_q, $t$sehr enthusiastisch$t$, false, 2),
    (v_q, $t$traurig$t$, false, 3),
    (v_q, $t$müde$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'sich herausstellen' im Satz 'Es stellte sich heraus, dass er früher Musiker gewesen war'?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$s'avérer, apparaître comme vrai$t$, true, 1),
    (v_q, $t$sich verstecken$t$, false, 2),
    (v_q, $t$sich beschweren$t$, false, 3),
    (v_q, $t$sich entschuldigen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$'Clara ___ mit, Einladungen zu verteilen.' (Präteritum von 'helfen')$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$half$t$, true, 1),
    (v_q, $t$hilft$t$, false, 2),
    (v_q, $t$geholfen$t$, false, 3),
    (v_q, $t$hilfte$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$'Er brachte seine Gitarre mit, ___ er den ganzen Abend spielte.' (Verbindungswort)$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$mit der$t$, true, 1),
    (v_q, $t$damit$t$, false, 2),
    (v_q, $t$obwohl$t$, false, 3),
    (v_q, $t$weil er$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Nebensatz-Wortstellung: 'Clara erkannte, dass viele Nachbarn ähnliche Interessen ___.'$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$hatten$t$, true, 1),
    (v_q, $t$hatten haben$t$, false, 2),
    (v_q, $t$haben hatten$t$, false, 3),
    (v_q, $t$gehabt hatten sie$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$Planen Sie in 5-7 Sätzen ein Fest für Ihre Nachbarschaft oder Ihr Wohnviertel. Was würden Sie organisieren und warum?$t$, 1, 'normal', 'production', $t$Ich würde gerne ein Sommerfest für unsere Nachbarschaft organisieren, weil sich viele Nachbarn kaum kennen. Zuerst würde ich Einladungen an alle Häuser verteilen und um Hilfe bei der Organisation bitten. Jeder Nachbar könnte etwas zu essen oder zu trinken mitbringen. Im Innenhof könnten wir Tische und Stühle aufstellen und vielleicht Musik spielen. Kinder könnten im Garten spielen, während die Erwachsenen sich unterhalten. Ich glaube, dass so ein Fest das Zusammenleben in der Nachbarschaft verbessern würde. Am Ende könnten wir sogar entscheiden, das Fest jedes Jahr zu wiederholen.$t$);

END $block$;

-- 4. Ein unerwarteter Besuch
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary) VALUES (
    'B1',
    $t$Ein unerwarteter Besuch$t$,
    $t$An einem ruhigen Sonntagnachmittag klingelte es plötzlich an Toms Tür. Er erwartete niemanden und war deshalb überrascht, als er seinen alten Schulfreund Felix vor der Tür stehen sah, den er seit über zehn Jahren nicht mehr gesehen hatte. Felix erklärte, dass er zufällig in der Stadt war und sich entschieden hatte, spontan vorbeizukommen, weil er Toms Adresse noch aus alten Zeiten kannte. Tom war zunächst etwas verwirrt, freute sich aber schnell über den Besuch. Sie setzten sich in die Küche und erzählten sich, was in den letzten Jahren passiert war. Felix hatte in einem anderen Land gelebt und viele Abenteuer erlebt, während Tom die meiste Zeit in derselben Stadt geblieben war. Obwohl ihre Leben sich so unterschiedlich entwickelt hatten, merkten beide schnell, dass ihre alte Freundschaft noch genauso stark war wie früher. Sie verbrachten den ganzen Nachmittag damit, alte Geschichten zu erzählen und gemeinsam zu lachen. Bevor Felix ging, tauschten sie ihre Telefonnummern aus und versprachen, sich nicht wieder so lange aus den Augen zu verlieren. Tom war dankbar für diesen unerwarteten, aber sehr schönen Nachmittag.$t$,
    $t$Un dimanche après-midi tranquille, on a soudain sonné à la porte de Tom. Il n'attendait personne et fut donc surpris de voir devant sa porte son vieil ami d'école Felix, qu'il n'avait pas vu depuis plus de dix ans. Felix a expliqué qu'il était de passage en ville par hasard et qu'il avait décidé de venir spontanément, parce qu'il connaissait encore l'adresse de Tom depuis l'époque. Tom était d'abord un peu déconcerté, mais s'est vite réjoui de cette visite. Ils se sont assis dans la cuisine et se sont raconté ce qui s'était passé ces dernières années. Felix avait vécu dans un autre pays et vécu beaucoup d'aventures, tandis que Tom était resté la plupart du temps dans la même ville. Bien que leurs vies aient évolué de manière si différente, ils ont vite remarqué tous les deux que leur vieille amitié était toujours aussi forte qu'avant. Ils ont passé tout l'après-midi à raconter de vieilles histoires et à rire ensemble. Avant que Felix ne parte, ils ont échangé leurs numéros de téléphone et ont promis de ne plus se perdre de vue aussi longtemps. Tom était reconnaissant pour cet après-midi inattendu, mais très agréable.$t$,
    $t${"An":"un","einem":"un","ruhigen":"tranquille","Sonntagnachmittag":"dimanche après-midi","klingelte":"a sonné","es":"on","plötzlich":"soudain","an":"à","Toms":"de Tom","Tür":"porte","Er":"il","erwartete":"attendait","niemanden":"personne","und":"et","war":"était","deshalb":"donc","überrascht":"surpris","als":"quand","seinen":"son","alten":"vieux","Schulfreund":"ami d'école","Felix":"Felix","vor":"devant","der":"la","stehen":"debout","sah":"a vu","den":"cette","seit":"depuis","über":"de","zehn":"dix","Jahren":"années","nicht mehr":"pas de nouveau","gesehen":"vu","hatte":"avait","erklärte":"a expliqué","dass":"que","er":"il","zufällig":"par hasard","in":"dans","Stadt":"ville","sich entschieden hatte":"avait décidé","spontan":"spontanément","vorbeizukommen":"venir","weil":"parce que","Adresse":"adresse","noch":"toujours","aus":"échangé","Zeiten":"époque","kannte":"connaissait","Tom":"Tom","zunächst":"d'abord","etwas":"un peu","verwirrt":"déconcerté","freute sich":"s'est réjoui","aber":"mais","schnell":"vite","Besuch":"visite","Sie":"ils","setzten sich":"se sont assis","die":"la","Küche":"cuisine","erzählten sich":"se sont raconté","was":"ce qui","letzten":"dernières","passiert":"passé","anderen":"autre","Land":"pays","gelebt":"vécu","viele":"beaucoup","Abenteuer":"aventures","erlebt":"vécu","während":"tandis que","meiste":"plupart","Zeit":"temps","derselben":"même","geblieben":"resté","Obwohl":"bien que","ihre":"leurs","Leben":"vies","sich":"se","so":"si","unterschiedlich":"différemment","entwickelt":"évoluées","hatten":"avaient","merkten":"ont remarqué","beide":"tous les deux","alte":"vieille","Freundschaft":"amitié","genauso":"aussi","stark":"forte","wie":"que","früher":"avant","verbrachten":"ont passé","ganzen":"tout","Nachmittag":"après-midi","damit":"à","Geschichten":"histoires","zu erzählen":"raconter","gemeinsam":"ensemble","zu lachen":"rire","Bevor":"avant que","ging":"parte","tauschten":"ont échangé","Telefonnummern":"numéros de téléphone","versprachen":"ont promis","sich nicht wieder":"ne plus se","so lange":"aussi longtemps","aus den Augen zu verlieren":"perdre de vue","dankbar":"reconnaissant","für":"pour","diesen":"cet","unerwarteten":"inattendu","sehr":"très","schönen":"agréable","nicht":"pas","mehr":"plus","entschieden":"décidé","freute":"s'est réjoui","setzten":"se sont assis","erzählten":"ont raconté","zu":"à/de","erzählen":"raconter","lachen":"rire","sie":"elle/ils","wieder":"de nouveau","lange":"longtemps","Augen":"yeux","verlieren":"perdre"}$t$::jsonb
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie lange hatten sich Tom und Felix nicht gesehen?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Zwei Jahre$t$, false, 1),
    (v_q, $t$Über zehn Jahre$t$, true, 2),
    (v_q, $t$Drei Monate$t$, false, 3),
    (v_q, $t$Sie sahen sich jede Woche$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie lange hatten sich Tom und Felix nicht gesehen?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Ein Jahr$t$, false, 1),
    (v_q, $t$Fünf Jahre$t$, false, 2),
    (v_q, $t$Über zehn Jahre$t$, true, 3),
    (v_q, $t$Sie hatten sich nie getroffen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was zeigt, dass die Freundschaft zwischen Tom und Felix trotz der langen Trennung noch intakt war?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Dass sie sich trotz unterschiedlicher Lebenswege sofort wieder gut verstanden und stundenlang lachten$t$, true, 1),
    (v_q, $t$Dass sie sich kaum noch etwas zu sagen hatten$t$, false, 2),
    (v_q, $t$Dass Felix sofort wieder abreisen musste$t$, false, 3),
    (v_q, $t$Dass Tom sich nicht mehr an Felix erinnern konnte$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum kam Felix bei Tom vorbei?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er wollte umziehen$t$, false, 1),
    (v_q, $t$Er war zufällig in der Stadt$t$, true, 2),
    (v_q, $t$Tom hatte eine Party organisiert$t$, false, 3),
    (v_q, $t$Er suchte eine Wohnung$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum ist Felix zu Tom gekommen?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er wollte bei ihm wohnen$t$, false, 1),
    (v_q, $t$Er war zufällig in der Stadt$t$, true, 2),
    (v_q, $t$Tom hatte ihn eingeladen$t$, false, 3),
    (v_q, $t$Er brauchte Hilfe$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie erklärt sich, dass Felix spontan bei Tom vorbeikam, obwohl sie sich lange nicht gesehen hatten?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er war zufällig in der Stadt und kannte noch Toms alte Adresse$t$, true, 1),
    (v_q, $t$Er hatte vorher einen Termin mit Tom vereinbart$t$, false, 2),
    (v_q, $t$Tom hatte ihn über soziale Medien eingeladen$t$, false, 3),
    (v_q, $t$Er wohnte inzwischen in der Nachbarschaft$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was haben Tom und Felix sich am Ende versprochen?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sich nie wiederzusehen$t$, false, 1),
    (v_q, $t$Sich nicht mehr so lange aus den Augen zu verlieren$t$, true, 2),
    (v_q, $t$Gemeinsam wegzuziehen$t$, false, 3),
    (v_q, $t$Zusammen zu arbeiten$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was haben Tom und Felix am Ende versprochen?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sich nie wieder zu treffen$t$, false, 1),
    (v_q, $t$Sich nicht wieder so lange aus den Augen zu verlieren$t$, true, 2),
    (v_q, $t$Zusammen zu verreisen$t$, false, 3),
    (v_q, $t$Wieder zur Schule zu gehen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was deutet darauf hin, dass beide die Freundschaft in Zukunft aktiver pflegen wollen?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie tauschten Telefonnummern aus und versprachen, den Kontakt nicht wieder zu verlieren$t$, true, 1),
    (v_q, $t$Sie vereinbarten, nie wieder zu telefonieren$t$, false, 2),
    (v_q, $t$Sie entschieden, dass ein Treffen genug war$t$, false, 3),
    (v_q, $t$Sie sprachen nur über die Vergangenheit, nicht über die Zukunft$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'überrascht'?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$surpris$t$, true, 1),
    (v_q, $t$fatigué$t$, false, 2),
    (v_q, $t$en colère$t$, false, 3),
    (v_q, $t$triste$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$'Er war zunächst etwas verwirrt.' Was bedeutet 'verwirrt'?$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$confus, désorienté$t$, true, 1),
    (v_q, $t$glücklich$t$, false, 2),
    (v_q, $t$böse$t$, false, 3),
    (v_q, $t$hungrig$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet die Redewendung 'sich aus den Augen verlieren'?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$se perdre de vue, ne plus se voir$t$, true, 1),
    (v_q, $t$sich streiten$t$, false, 2),
    (v_q, $t$sich verlieben$t$, false, 3),
    (v_q, $t$sich verletzen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$'Felix ___ zufällig in der Stadt.' (Präteritum von 'sein')$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$war$t$, true, 1),
    (v_q, $t$ist$t$, false, 2),
    (v_q, $t$wäre$t$, false, 3),
    (v_q, $t$sei$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$'Er hatte in einem anderen Land gelebt, ___ Tom in derselben Stadt geblieben war.' (Gegensatz)$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$während$t$, true, 1),
    (v_q, $t$weil$t$, false, 2),
    (v_q, $t$damit$t$, false, 3),
    (v_q, $t$obwohl er$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Plusquamperfekt-Bildung: 'Sie erzählten sich, was in den letzten Jahren ___.'$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$passiert war$t$, true, 1),
    (v_q, $t$ist passiert$t$, false, 2),
    (v_q, $t$war passiert gewesen$t$, false, 3),
    (v_q, $t$passierte gewesen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$Schreiben Sie 5-7 Sätze über einen unerwarteten Besuch, den Sie einmal bekommen haben oder sich vorstellen können.$t$, 1, 'normal', 'production', $t$Letztes Jahr hat mich ein alter Freund aus der Schulzeit spontan besucht, den ich seit Jahren nicht mehr gesehen hatte. Er war zufällig in meiner Stadt und hatte meine Adresse noch aus alten Zeiten. Zuerst war ich total überrascht, weil ich nicht mit einem Besuch gerechnet hatte. Wir haben uns in die Küche gesetzt und stundenlang über die vergangenen Jahre gesprochen. Obwohl unsere Leben sich sehr unterschiedlich entwickelt hatten, merkten wir, dass unsere Freundschaft noch genauso stark war. Am Ende haben wir versprochen, uns öfter zu schreiben. Ich war sehr dankbar für diesen schönen, unerwarteten Nachmittag.$t$);

END $block$;

-- 5. Das verlorene Handy
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary) VALUES (
    'B1',
    $t$Das verlorene Handy$t$,
    $t$Als Mia morgens ihre Tasche öffnete, um zur Arbeit zu fahren, bemerkte sie, dass ihr Handy fehlte. Sie durchsuchte panisch die ganze Wohnung, konnte es aber nirgends finden. Sie versuchte sich zu erinnern, wo sie es zuletzt benutzt hatte, und kam zu dem Schluss, dass sie es vielleicht am Abend zuvor im Restaurant liegen gelassen hatte. Da sie kein zweites Telefon besaß, konnte sie das Restaurant nicht anrufen und musste stattdessen direkt dorthin fahren, bevor sie zur Arbeit ging. Als sie ankam, war das Restaurant noch geschlossen, aber zum Glück traf sie einen Angestellten, der gerade putzte. Sie erklärte ihm die Situation, und er erinnerte sich tatsächlich daran, ein Handy am Tisch gefunden zu haben. Er hatte es sicherheitshalber hinter der Theke aufbewahrt. Mia war erleichtert, als sie ihr Handy wiederbekam, auch wenn sie dadurch fast eine Stunde zu spät zur Arbeit kam. Ihr Chef verstand die Situation und war nicht böse. Von diesem Tag an nahm sich Mia vor, ihr Handy immer sofort nach dem Essen in ihre Tasche zu stecken, um so etwas nicht noch einmal zu erleben.$t$,
    $t$Quand Mia a ouvert son sac le matin pour aller au travail, elle a remarqué que son téléphone manquait. Elle a fouillé tout l'appartement, paniquée, mais n'a pu le trouver nulle part. Elle a essayé de se rappeler où elle l'avait utilisé pour la dernière fois, et en a conclu qu'elle l'avait peut-être laissé au restaurant la veille au soir. Comme elle ne possédait pas de deuxième téléphone, elle ne pouvait pas appeler le restaurant et a dû s'y rendre directement, avant d'aller au travail. Quand elle est arrivée, le restaurant était encore fermé, mais heureusement elle a rencontré un employé qui était justement en train de faire le ménage. Elle lui a expliqué la situation, et il s'est effectivement souvenu avoir trouvé un téléphone sur une table. Il l'avait rangé derrière le comptoir par précaution. Mia a été soulagée de récupérer son téléphone, même si elle est ainsi arrivée au travail avec près d'une heure de retard. Son chef a compris la situation et n'était pas fâché. À partir de ce jour, Mia s'est promis de toujours remettre immédiatement son téléphone dans son sac après avoir mangé, pour ne plus jamais revivre une telle chose.$t$,
    $t${"Als":"quand","Mia":"Mia","morgens":"le matin","ihre":"son","Tasche":"sac","öffnete":"a ouvert","um":"pour","zur":"au","Arbeit":"travail","zu fahren":"aller","bemerkte":"a remarqué","sie":"elle","dass":"que","ihr":"son","Handy":"téléphone","fehlte":"manquait","durchsuchte":"a fouillé","panisch":"paniquée","die":"la","ganze":"tout","Wohnung":"appartement","konnte":"pouvait","es":"le","aber":"mais","nirgends":"nulle part","finden":"trouver","versuchte":"a essayé","sich zu erinnern":"se rappeler","wo":"où","zuletzt":"la dernière fois","benutzt":"utilisé","hatte":"avait","und":"et","kam":"est arrivée","zu dem Schluss":"à la conclusion","vielleicht":"peut-être","am Abend":"la veille au soir","zuvor":"avant","im":"au","Restaurant":"restaurant","liegen gelassen":"laissé","Da":"comme","kein":"pas de","zweites":"deuxième","Telefon":"téléphone","besaß":"possédait","nicht":"pas","anrufen":"appeler","musste":"devait","stattdessen":"à la place","direkt":"directement","dorthin":"y","fahren":"aller","bevor":"avant","ging":"aller","ankam":"est arrivée","war":"était","noch":"encore","geschlossen":"fermé","zum Glück":"heureusement","traf":"a rencontré","einen":"un","Angestellten":"employé","der":"le","gerade":"justement","putzte":"faisait le ménage","erklärte":"a expliqué","ihm":"lui","Situation":"situation","erinnerte sich":"s'est souvenu","tatsächlich":"effectivement","daran":"de cela","ein":"un","am":"sur la","Tisch":"table","gefunden":"trouvé","zu haben":"avoir","sicherheitshalber":"par précaution","hinter":"derrière","Theke":"comptoir","aufbewahrt":"rangé","erleichtert":"soulagée","als":"quand","wiederbekam":"a récupéré","auch wenn":"même si","dadurch":"ainsi","fast":"presque","eine":"une","Stunde":"heure","spät":"tard","zur Arbeit":"au travail","Chef":"chef","verstand":"a compris","böse":"fâché","Von diesem Tag an":"à partir de ce jour","nahm sich vor":"s'est promis","immer":"toujours","sofort":"immédiatement","nach dem Essen":"après avoir mangé","in":"dans","zu stecken":"remettre","so etwas":"une telle chose","nicht noch einmal":"ne plus","zu erleben":"revivre","zu":"à/de","Sie":"elle/ils","sich":"se","erinnern":"se souvenir","dem":"le/à","Schluss":"conclusion","Abend":"soir","liegen":"laissé","gelassen":"laissé","das":"cela/le","zum":"au","Glück":"chance","er":"il","erinnerte":"s'est souvenu","haben":"avoir","Er":"il","auch":"aussi","wenn":"quand","Ihr":"son","Von":"de","diesem":"ce","Tag":"jour","an":"à","nahm":"a pris","vor":"avant/devant","nach":"selon","Essen":"repas","stecken":"mettre","so":"si","etwas":"quelque chose","einmal":"une fois","erleben":"vivre"}$t$::jsonb
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wo hat Mia ihr Handy vergessen?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Zu Hause$t$, false, 1),
    (v_q, $t$Im Bus$t$, false, 2),
    (v_q, $t$Im Restaurant$t$, true, 3),
    (v_q, $t$Im Büro$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wo hatte Mia ihr Handy wahrscheinlich vergessen?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Zu Hause$t$, false, 1),
    (v_q, $t$Im Bus$t$, false, 2),
    (v_q, $t$Im Restaurant$t$, true, 3),
    (v_q, $t$Im Büro$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie kam Mia darauf, dass ihr Handy im Restaurant sein könnte?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie erinnerte sich, es dort am Abend zuvor zuletzt benutzt zu haben$t$, true, 1),
    (v_q, $t$Der Restaurantangestellte rief sie an$t$, false, 2),
    (v_q, $t$Sie hatte es dort absichtlich liegen lassen$t$, false, 3),
    (v_q, $t$Ihr Chef vermutete es dort$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum konnte Mia nicht im Restaurant anrufen?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie hatte kein zweites Telefon$t$, true, 1),
    (v_q, $t$Das Restaurant war geschlossen$t$, false, 2),
    (v_q, $t$Sie hatte keine Zeit$t$, false, 3),
    (v_q, $t$Sie wollte nicht anrufen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum konnte Mia das Restaurant nicht einfach anrufen?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie hatte kein zweites Telefon$t$, true, 1),
    (v_q, $t$Das Restaurant hatte keine Telefonnummer$t$, false, 2),
    (v_q, $t$Sie wollte lieber selbst hinfahren$t$, false, 3),
    (v_q, $t$Das Restaurant war zu weit weg$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum musste Mia direkt zum Restaurant fahren, statt vorher dort anzurufen?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Weil ihr einziges Telefon das vermisste war und sie kein zweites besaß$t$, true, 1),
    (v_q, $t$Weil das Restaurant keine Telefonnummer hatte$t$, false, 2),
    (v_q, $t$Weil sie lieber persönlich mit dem Personal sprechen wollte$t$, false, 3),
    (v_q, $t$Weil ihr Chef es ihr geraten hatte$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie reagierte Mias Chef, als sie zu spät kam?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er war wütend$t$, false, 1),
    (v_q, $t$Er hat sie entlassen$t$, false, 2),
    (v_q, $t$Er hat die Situation verstanden$t$, true, 3),
    (v_q, $t$Er hat nichts bemerkt$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie hat Mias Chef reagiert, als sie zu spät kam?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er war sehr wütend$t$, false, 1),
    (v_q, $t$Er hat sie entlassen$t$, false, 2),
    (v_q, $t$Er hat die Situation verstanden$t$, true, 3),
    (v_q, $t$Er hat nichts bemerkt$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was lässt sich über die Beziehung zwischen Mia und ihrem Chef schließen, nachdem sie fast eine Stunde zu spät kam?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Der Chef zeigte Verständnis, was auf ein entspanntes Arbeitsklima hindeutet$t$, true, 1),
    (v_q, $t$Der Chef war enttäuscht, sagte aber nichts$t$, false, 2),
    (v_q, $t$Der Chef bestrafte sie mit einer Verwarnung$t$, false, 3),
    (v_q, $t$Der Chef bemerkte die Verspätung gar nicht$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'suchen'?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$chercher$t$, true, 1),
    (v_q, $t$trouver$t$, false, 2),
    (v_q, $t$perdre$t$, false, 3),
    (v_q, $t$acheter$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$'Mia war erleichtert.' Was bedeutet 'erleichtert'?$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$soulagé$t$, true, 1),
    (v_q, $t$wütend$t$, false, 2),
    (v_q, $t$traurig$t$, false, 3),
    (v_q, $t$verwirrt$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'sicherheitshalber' im Satz 'Er hatte es sicherheitshalber hinter der Theke aufbewahrt'?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$par précaution, pour être sûr$t$, true, 1),
    (v_q, $t$aus Versehen$t$, false, 2),
    (v_q, $t$zufällig$t$, false, 3),
    (v_q, $t$absichtlich schlecht$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$'Sie ___ die ganze Wohnung durchsucht.' (Perfekt von 'durchsuchen')$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$hat$t$, true, 1),
    (v_q, $t$ist$t$, false, 2),
    (v_q, $t$war$t$, false, 3),
    (v_q, $t$wird$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$'Sie konnte das Restaurant nicht anrufen und ___ stattdessen direkt dorthin fahren.'$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$musste$t$, true, 1),
    (v_q, $t$muss$t$, false, 2),
    (v_q, $t$müsste haben$t$, false, 3),
    (v_q, $t$gemusst$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Nebensatz: 'Sie erklärte ihm die Situation, und er erinnerte sich, ein Handy am Tisch ___.'$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$gefunden zu haben$t$, true, 1),
    (v_q, $t$zu finden gehabt$t$, false, 2),
    (v_q, $t$gefunden haben zu$t$, false, 3),
    (v_q, $t$haben gefunden zu$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$Schreiben Sie 5-7 Sätze über einen Gegenstand, den Sie einmal verloren haben. Wie haben Sie ihn wiedergefunden (oder nicht)?$t$, 1, 'normal', 'production', $t$Letztes Jahr habe ich meinen Schlüssel im Bus verloren. Als ich zu Hause ankam, konnte ich die Wohnungstür nicht öffnen und bemerkte, dass der Schlüssel fehlte. Ich versuchte mich zu erinnern, wo ich ihn zuletzt benutzt hatte. Am nächsten Tag rief ich beim Fundbüro des Busunternehmens an, und zum Glück hatte jemand den Schlüssel abgegeben. Ich war sehr erleichtert, als ich ihn wieder abholen konnte. Seitdem trage ich meinen Schlüssel immer in einer kleinen Tasche, damit ich ihn nicht mehr verliere.$t$);

END $block$;

-- 6. Ein Schulprojekt über Goethe
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary) VALUES (
    'B1',
    $t$Ein Schulprojekt über Goethe$t$,
    $t$Lena musste für die Schule ein Referat über Johann Wolfgang von Goethe vorbereiten, deshalb fuhr sie mit ihrer Klasse nach Weimar. Obwohl sie vorher nur wenig über den Dichter wusste, interessierte sie sich schnell für sein Leben. Im Goethe-Haus am Frauenplan sah sie das Arbeitszimmer, in dem er viele seiner Werke geschrieben hatte. Die Lehrerin erklärte, dass Goethe 1775 nach Weimar gekommen war, weil der junge Herzog Carl August ihn eingeladen hatte. Zuerst arbeitete Goethe als Minister und kümmerte sich um Straßen, Bergbau und Finanzen, obwohl er eigentlich lieber schrieb. Erst später, nachdem er eine Reise nach Italien gemacht hatte, widmete er sich wieder stärker der Literatur.

Lena war überrascht, dass Goethe nicht nur Dichter, sondern auch Naturforscher war. Er interessierte sich für Pflanzen, Farben und Steine. Während sie durch den Park an der Ilm spazierte, dachte sie darüber nach, wie viel ein einziger Mensch in seinem Leben schaffen konnte. Am Ende des Tages besuchte die Klasse noch das Grab von Goethe und Schiller, die beide in Weimar lebten und arbeiteten. Für ihr Referat sammelte Lena viele Notizen und Fotos. Sie verstand jetzt, warum Weimar oft als Stadt der deutschen Klassik bezeichnet wird. Die Reise hatte ihr gezeigt, dass Geschichte lebendig werden kann, wenn man die Orte selbst besucht.$t$,
    $t$Lena devait préparer un exposé sur Johann Wolfgang von Goethe pour l'école, c'est pourquoi elle est partie à Weimar avec sa classe. Bien qu'elle ne sache que peu de choses sur le poète auparavant, elle s'est rapidement intéressée à sa vie. Dans la maison de Goethe, sur la Frauenplan, elle a vu le bureau où il avait écrit un grand nombre de ses œuvres. L'enseignante a expliqué que Goethe était venu à Weimar en 1775, parce que le jeune duc Carl August l'avait invité. Au début, Goethe travaillait comme ministre et s'occupait des routes, des mines et des finances, bien qu'il préférât en réalité écrire. Ce n'est que plus tard, après avoir fait un voyage en Italie, qu'il s'est consacré de nouveau davantage à la littérature.

Lena a été surprise d'apprendre que Goethe n'était pas seulement poète, mais aussi naturaliste. Il s'intéressait aux plantes, aux couleurs et aux pierres. Pendant qu'elle se promenait dans le parc au bord de l'Ilm, elle a réfléchi à tout ce qu'une seule personne pouvait accomplir dans sa vie. À la fin de la journée, la classe a encore visité la tombe de Goethe et de Schiller, qui ont tous deux vécu et travaillé à Weimar. Pour son exposé, Lena a rassemblé beaucoup de notes et de photos. Elle a compris maintenant pourquoi Weimar est souvent appelée la ville du classicisme allemand. Le voyage lui avait montré que l'histoire peut prendre vie quand on visite les lieux eux-mêmes.$t$,
    $t${"1775":"1775","Lena":"Lena","musste":"devait","für":"à","die":"qui","Schule":"école","ein":"une","Referat":"exposé","über":"sur","Johann Wolfgang von Goethe":"Johann Wolfgang von Goethe","vorbereiten":"préparer","deshalb":"c'est pourquoi","fuhr":"est partie","sie":"elle","mit":"avec","ihrer":"sa","Klasse":"classe","nach":"réfléchi","Weimar":"Weimar","Obwohl":"bien que","vorher":"auparavant","nur":"seulement","wenig":"peu","den":"le","Dichter":"poète","wusste":"savait","interessierte sich":"s'intéressait","schnell":"rapidement","sein":"sa","Leben":"vie","Im":"dans le","Goethe-Haus":"maison de Goethe","am":"sur","Frauenplan":"Frauenplan","sah":"a vu","das":"le","Arbeitszimmer":"bureau","in dem":"où","er":"il","viele":"un grand nombre","seiner":"de ses","Werke":"œuvres","geschrieben":"écrit","hatte":"avait","Die":"le","Lehrerin":"enseignante","erklärte":"a expliqué","dass":"que","gekommen":"venu","weil":"parce que","junge":"jeune","Herzog":"duc","Carl August":"Carl August","ihn":"l'","eingeladen":"invité","Zuerst":"d'abord","arbeitete":"travaillait","als":"comme","Minister":"ministre","und":"et","kümmerte sich":"s'occupait","um":"de","Straßen":"routes","Bergbau":"mines","Finanzen":"finances","obwohl":"bien que","eigentlich":"en réalité","lieber":"préférait","schrieb":"écrivait","Erst":"seulement","später":"plus tard","nachdem":"après que","eine":"un","Reise":"voyage","Italien":"Italie","gemacht":"fait","widmete sich":"s'est consacré","wieder":"de nouveau","stärker":"davantage","der":"à la","Literatur":"littérature","war":"était","überrascht":"surprise","nicht nur":"pas seulement","sondern auch":"mais aussi","Naturforscher":"naturaliste","Er":"il","Pflanzen":"plantes","Farben":"couleurs","Steine":"pierres","Während":"pendant que","durch":"dans","Park":"parc","an":"sur","Ilm":"Ilm","spazierte":"se promenait","dachte":"a réfléchi","darüber":"à cela","wie viel":"combien","einziger":"seule","Mensch":"personne","seinem":"sa","schaffen":"accomplir","konnte":"pouvait","Am Ende":"à la fin","des Tages":"de la journée","besuchte":"a visité","noch":"encore","Grab":"tombe","von":"de","Schiller":"Schiller","beide":"tous deux","lebten":"ont vécu","arbeiteten":"ont travaillé","Für":"pour","ihr":"son","sammelte":"a rassemblé","Notizen":"notes","Fotos":"photos","verstand":"a compris","jetzt":"maintenant","warum":"pourquoi","oft":"souvent","Stadt":"ville","deutschen":"allemand","Klassik":"classicisme","bezeichnet wird":"est appelée","gezeigt":"montré","Geschichte":"histoire","lebendig":"vivant","werden kann":"peut devenir","wenn":"quand","man":"on","Orte":"lieux","selbst":"eux-mêmes","besucht":"visite","Johann":"Johann","Wolfgang":"Wolfgang","Goethe":"Goethe","interessierte":"s'intéressait","sich":"se","in":"dans","dem":"le/à","Carl":"Carl","August":"August","kümmerte":"s'occupait","widmete":"s'est consacré","nicht":"pas","sondern":"mais","auch":"aussi","wie":"comme","viel":"beaucoup","Am":"le","Ende":"fin","des":"du","Tages":"de la journée","Sie":"elle/ils","bezeichnet":"appelée","wird":"est","werden":"devenir/être","kann":"peut"}$t$::jsonb
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum ist Lena nach Weimar gefahren?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Für ein Schulprojekt über Goethe$t$, true, 1),
    (v_q, $t$Für einen Urlaub mit der Familie$t$, false, 2),
    (v_q, $t$Um ihre Großeltern zu besuchen$t$, false, 3),
    (v_q, $t$Um dort zu studieren$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was musste Lena für die Schule machen?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Ein Referat über Goethe vorbereiten$t$, true, 1),
    (v_q, $t$Ein Buch über Weimar schreiben$t$, false, 2),
    (v_q, $t$Ein Theaterstück aufführen$t$, false, 3),
    (v_q, $t$Ein Gedicht auswendig lernen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was zeigt der Text über Lenas anfängliches Wissen über Goethe?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie wusste vorher wenig, interessierte sich aber schnell für sein Leben$t$, true, 1),
    (v_q, $t$Sie war schon Expertin für Goethes Werke$t$, false, 2),
    (v_q, $t$Sie hatte kein Interesse an dem Thema$t$, false, 3),
    (v_q, $t$Sie kannte nur seine Gedichte, nicht sein Leben$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was sah Lena im Goethe-Haus?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sein Arbeitszimmer$t$, true, 1),
    (v_q, $t$Sein Auto$t$, false, 2),
    (v_q, $t$Seine Schule$t$, false, 3),
    (v_q, $t$Sein Grab$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum kam Goethe 1775 nach Weimar?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Herzog Carl August hatte ihn eingeladen$t$, true, 1),
    (v_q, $t$Er suchte eine neue Wohnung$t$, false, 2),
    (v_q, $t$Er wollte Medizin studieren$t$, false, 3),
    (v_q, $t$Seine Familie zog dorthin$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was lässt sich über Goethes Arbeit als Minister sagen?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er übernahm sie, obwohl er lieber geschrieben hätte$t$, true, 1),
    (v_q, $t$Sie gefiel ihm mehr als das Schreiben$t$, false, 2),
    (v_q, $t$Er lehnte die Stelle zuerst ab$t$, false, 3),
    (v_q, $t$Er wurde erst nach seiner Italienreise Minister$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was besuchte die Klasse am Ende des Tages?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Das Grab von Goethe und Schiller$t$, true, 1),
    (v_q, $t$Ein Museum über Bauhaus$t$, false, 2),
    (v_q, $t$Ein Konzert$t$, false, 3),
    (v_q, $t$Die Universität Weimar$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Worüber war Lena überrascht?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Dass Goethe auch Naturforscher war$t$, true, 1),
    (v_q, $t$Dass Goethe nie nach Italien gereist war$t$, false, 2),
    (v_q, $t$Dass Goethe kein Interesse an Pflanzen hatte$t$, false, 3),
    (v_q, $t$Dass Weimar keine berühmte Stadt ist$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet der letzte Satz des Textes am besten?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Der Besuch der echten Orte machte die Geschichte für Lena greifbarer$t$, true, 1),
    (v_q, $t$Lena fand die Reise langweilig und nutzlos$t$, false, 2),
    (v_q, $t$Lena entschied, dass sie lieber Bücher statt Reisen mag$t$, false, 3),
    (v_q, $t$Die Klasse besuchte Weimar nur wegen des Parks$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'der Dichter'?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$le poète$t$, true, 1),
    (v_q, $t$le professeur$t$, false, 2),
    (v_q, $t$le musicien$t$, false, 3),
    (v_q, $t$le peintre$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$'Goethe widmete sich wieder stärker der Literatur.' Was bedeutet 'sich widmen'?$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$se consacrer à quelque chose$t$, true, 1),
    (v_q, $t$vergessen$t$, false, 2),
    (v_q, $t$sich beschweren$t$, false, 3),
    (v_q, $t$aufhören$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'der Naturforscher' im Kontext des Textes?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$ein Wissenschaftler, der die Natur untersucht$t$, true, 1),
    (v_q, $t$ein Reiseführer$t$, false, 2),
    (v_q, $t$ein Politiker$t$, false, 3),
    (v_q, $t$ein Musiker$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$'Lena ___ nach Weimar gefahren.' (Perfekt von 'fahren')$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$ist$t$, true, 1),
    (v_q, $t$hat$t$, false, 2),
    (v_q, $t$war$t$, false, 3),
    (v_q, $t$wird$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$'Goethe ___ nach Weimar gekommen, weil der Herzog ihn eingeladen hatte.' (Plusquamperfekt-Kontext, Perfekt hier)$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$war$t$, true, 1),
    (v_q, $t$hatte$t$, false, 2),
    (v_q, $t$ist$t$, false, 3),
    (v_q, $t$wurde$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Nebensatz mit 'nachdem': 'Erst später, ___ er eine Reise nach Italien gemacht hatte, widmete er sich wieder der Literatur.'$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$nachdem$t$, true, 1),
    (v_q, $t$bevor$t$, false, 2),
    (v_q, $t$während$t$, false, 3),
    (v_q, $t$als ob$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$Schreiben Sie 5-7 Sätze über einen berühmten Schriftsteller oder Künstler aus Ihrem Land. Warum ist diese Person wichtig?$t$, 1, 'normal', 'production', $t$In meinem Land ist ein sehr bekannter Schriftsteller Victor Hugo, der im 19. Jahrhundert lebte. Er schrieb berühmte Romane wie 'Les Misérables', die auch heute noch weltweit gelesen werden. Hugo interessierte sich nicht nur für Literatur, sondern auch für Politik und soziale Gerechtigkeit. Er kämpfte für die Rechte der Armen und gegen die Todesstrafe. Viele Städte haben Straßen oder Plätze nach ihm benannt. Ich finde es faszinierend, dass seine Ideen auch heute noch aktuell sind. Ein Besuch an einem Ort, an dem er gelebt hat, würde mich sehr interessieren.$t$);

END $block$;

-- 7. Warum wir noch Märchen erzählen
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary) VALUES (
    'B1',
    $t$Warum wir noch Märchen erzählen$t$,
    $t$Sophie war die Ur-Ur-Enkelin eines entfernten Verwandten der Brüder Grimm, obwohl ihre Familie das lange nicht wusste. Erst als ihre Großmutter starb, fand sie alte Briefe und Notizen, die von Jacob und Wilhelm Grimm erzählten. Die beiden Brüder hatten im 19. Jahrhundert Märchen wie "Aschenputtel" und "Rotkäppchen" gesammelt, weil sie die mündlichen Geschichten der Menschen bewahren wollten. Sophie begann, sich zu fragen, warum diese alten Geschichten heute noch so beliebt sind.

Sie besuchte eine Ausstellung über die Brüder Grimm und sprach dort mit einer Forscherin. Diese erklärte, dass Märchen einfache, aber wichtige Themen behandeln: Angst, Mut, Gerechtigkeit und Liebe. Nachdem Sophie mehrere Vorträge gehört hatte, verstand sie, dass Kinder durch Märchen lernen, mit schwierigen Gefühlen umzugehen, ohne dass die Geschichten zu direkt sind. Während sie selbst als Kind die Märchen nur als Unterhaltung gesehen hatte, entdeckte sie jetzt eine tiefere Bedeutung darin.

Zu Hause begann Sophie, ihrer kleinen Nichte jeden Abend ein Märchen vorzulesen. Sie bemerkte, dass das Mädchen aufmerksam zuhörte und viele Fragen stellte. Sophie dachte, dass Geschichten wie diese Generationen verbinden, obwohl sie schon vor fast zweihundert Jahren aufgeschrieben wurden. Am Ende ihrer Recherche schrieb sie selbst eine kurze Erzählung, die von einer modernen Version eines alten Märchens handelte, weil sie die Tradition ihrer Familie fortsetzen wollte.$t$,
    $t$Sophie était l'arrière-arrière-petite-fille d'un parent éloigné des frères Grimm, bien que sa famille ne l'ait longtemps pas su. Ce n'est qu'à la mort de sa grand-mère qu'elle a trouvé de vieilles lettres et des notes qui parlaient de Jacob et Wilhelm Grimm. Les deux frères avaient recueilli au XIXe siècle des contes comme « Cendrillon » et « Le Petit Chaperon rouge », parce qu'ils voulaient préserver les récits oraux des gens. Sophie a commencé à se demander pourquoi ces vieilles histoires sont encore aujourd'hui si populaires.

Elle a visité une exposition sur les frères Grimm et y a parlé avec une chercheuse. Celle-ci a expliqué que les contes traitent de thèmes simples mais importants : la peur, le courage, la justice et l'amour. Après avoir entendu plusieurs conférences, Sophie a compris que les enfants apprennent, à travers les contes, à gérer des sentiments difficiles, sans que les histoires soient trop directes. Alors qu'elle-même, enfant, n'avait vu les contes que comme un divertissement, elle y découvrait maintenant un sens plus profond.

De retour chez elle, Sophie a commencé à lire chaque soir un conte à sa petite nièce. Elle a remarqué que la fillette écoutait attentivement et posait beaucoup de questions. Sophie pensait que de telles histoires relient les générations, même si elles ont été écrites il y a presque deux cents ans. À la fin de ses recherches, elle a elle-même écrit un court récit, qui parlait d'une version moderne d'un vieux conte, parce qu'elle voulait poursuivre la tradition de sa famille.$t$,
    $t${"Sophie":"Sophie","war":"était","die":"l'","Ur-Ur-Enkelin":"arrière-arrière-petite-fille","eines":"d'un","entfernten":"éloigné","Verwandten":"parent","der":"des","Brüder Grimm":"frères Grimm","obwohl":"bien que","ihre":"sa","Familie":"famille","das":"cela","lange":"longtemps","nicht":"pas","wusste":"savait","Erst":"ce n'est que","als":"comme","Großmutter":"grand-mère","starb":"est morte","fand":"a trouvé","sie":"elle","alte":"vieilles","Briefe":"lettres","und":"et","Notizen":"notes","von":"de","Jacob":"Jacob","Wilhelm Grimm":"Wilhelm Grimm","erzählten":"parlaient","Die":"les","beiden":"deux","Brüder":"frères","hatten":"avaient","im":"au","Jahrhundert":"siècle","Märchen":"contes","wie":"comme","Aschenputtel":"Cendrillon","Rotkäppchen":"Le Petit Chaperon rouge","gesammelt":"recueillis","weil":"parce que","mündlichen":"oraux","Geschichten":"récits","Menschen":"gens","bewahren":"préserver","wollten":"voulaient","begann":"a commencé","sich zu fragen":"à se demander","warum":"pourquoi","diese":"ces","alten":"vieux","heute":"aujourd'hui","noch":"encore","so":"si","beliebt":"populaires","sind":"sont","Sie":"elle","besuchte":"a visité","eine":"un","Ausstellung":"exposition","über":"sur","sprach":"a parlé","dort":"y","mit":"avec","einer":"une","Forscherin":"chercheuse","Diese":"celle-ci","erklärte":"a expliqué","dass":"que","einfache":"simples","aber":"mais","wichtige":"importants","Themen":"thèmes","behandeln":"traitent","Angst":"peur","Mut":"courage","Gerechtigkeit":"justice","Liebe":"amour","Nachdem":"après que","mehrere":"plusieurs","Vorträge":"conférences","gehört":"entendu","hatte":"avait","verstand":"a compris","Kinder":"enfants","durch":"à travers","lernen":"apprennent","schwierigen":"difficiles","Gefühlen":"sentiments","umzugehen":"gérer","ohne dass":"sans que","zu direkt":"trop directes","Während":"alors que","selbst":"elle-même","Kind":"enfant","nur":"seulement","Unterhaltung":"divertissement","gesehen":"vu","entdeckte":"découvrait","jetzt":"maintenant","tiefere":"plus profond","Bedeutung":"sens","darin":"dans cela","Zu Hause":"à la maison","ihrer":"de ses","kleinen":"petite","Nichte":"nièce","jeden":"chaque","Abend":"soir","vorzulesen":"lire","bemerkte":"a remarqué","Mädchen":"fillette","aufmerksam":"attentivement","zuhörte":"écoutait","viele":"beaucoup","Fragen":"questions","stellte":"posait","dachte":"pensait","Generationen":"générations","verbinden":"relient","schon":"déjà","vor":"il y a","fast":"presque","zweihundert":"deux cents","Jahren":"ans","aufgeschrieben":"écrites","wurden":"ont été","Am Ende":"à la fin","Recherche":"recherches","schrieb":"a écrit","kurze":"court","Erzählung":"récit","handelte":"parlait","modernen":"moderne","Version":"version","Märchens":"conte","Tradition":"tradition","fortsetzen":"poursuivre","Grimm":"Grimm","Wilhelm":"Wilhelm","sich":"se","zu":"à/de","fragen":"demander","ohne":"sans","direkt":"directement","Zu":"à","Hause":"maison","ein":"un","Am":"le","Ende":"fin","wollte":"voulait"}$t$::jsonb
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was fand Sophie nach dem Tod ihrer Großmutter?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Alte Briefe und Notizen$t$, true, 1),
    (v_q, $t$Ein Familienfoto$t$, false, 2),
    (v_q, $t$Ein Tagebuch ihrer Mutter$t$, false, 3),
    (v_q, $t$Geld$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum sammelten die Brüder Grimm Märchen?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Um mündliche Geschichten zu bewahren$t$, true, 1),
    (v_q, $t$Um Geld zu verdienen$t$, false, 2),
    (v_q, $t$Um Kinder zu unterrichten$t$, false, 3),
    (v_q, $t$Weil sie das von der Regierung mussten$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was erfährt man über Sophies Beziehung zu den Brüdern Grimm?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Ihre Familie wusste lange nichts von der entfernten Verwandtschaft$t$, true, 1),
    (v_q, $t$Sie ist eine direkte Nachfahrin von Wilhelm Grimm$t$, false, 2),
    (v_q, $t$Ihre Großmutter erzählte ihr schon als Kind davon$t$, false, 3),
    (v_q, $t$Sie entdeckte die Verbindung durch ein Museum$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Mit wem sprach Sophie in der Ausstellung?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Mit einer Forscherin$t$, true, 1),
    (v_q, $t$Mit einem Lehrer$t$, false, 2),
    (v_q, $t$Mit ihrer Nichte$t$, false, 3),
    (v_q, $t$Mit einem Journalisten$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Themen behandeln Märchen laut der Forscherin?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Angst, Mut, Gerechtigkeit und Liebe$t$, true, 1),
    (v_q, $t$Politik und Wirtschaft$t$, false, 2),
    (v_q, $t$Technik und Wissenschaft$t$, false, 3),
    (v_q, $t$Reisen und Abenteuer im Ausland$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie veränderte sich Sophies Sicht auf Märchen?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie sah plötzlich eine tiefere Bedeutung, wo sie früher nur Unterhaltung sah$t$, true, 1),
    (v_q, $t$Sie fand Märchen nach der Ausstellung langweiliger$t$, false, 2),
    (v_q, $t$Sie glaubte, Märchen seien nur für kleine Kinder geeignet$t$, false, 3),
    (v_q, $t$Sie änderte ihre Meinung nicht wirklich$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wem las Sophie jeden Abend ein Märchen vor?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Ihrer kleinen Nichte$t$, true, 1),
    (v_q, $t$Ihrem Bruder$t$, false, 2),
    (v_q, $t$Ihrer Großmutter$t$, false, 3),
    (v_q, $t$Ihren Freunden$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was schrieb Sophie am Ende ihrer Recherche?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Eine moderne Version eines alten Märchens$t$, true, 1),
    (v_q, $t$Eine wissenschaftliche Studie über die Grimms$t$, false, 2),
    (v_q, $t$Einen Brief an eine Zeitung$t$, false, 3),
    (v_q, $t$Ein Theaterstück für Kinder$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was zeigt Sophies Verhalten am Ende der Geschichte über ihre Motivation?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie möchte die Familientradition des Erzählens fortsetzen$t$, true, 1),
    (v_q, $t$Sie will berühmt werden wie ihre Vorfahren$t$, false, 2),
    (v_q, $t$Sie schreibt nur, weil ihre Nichte es verlangt hat$t$, false, 3),
    (v_q, $t$Sie hat kein persönliches Interesse mehr an Märchen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'das Märchen'?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$le conte de fées$t$, true, 1),
    (v_q, $t$le journal$t$, false, 2),
    (v_q, $t$la lettre$t$, false, 3),
    (v_q, $t$le roman$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$'Sie wollten die mündlichen Geschichten bewahren.' Was bedeutet 'bewahren'?$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$préserver, garder$t$, true, 1),
    (v_q, $t$zerstören$t$, false, 2),
    (v_q, $t$vergessen$t$, false, 3),
    (v_q, $t$verkaufen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'die Gerechtigkeit' im Satz über die Themen der Märchen?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$la justice$t$, true, 1),
    (v_q, $t$die Angst$t$, false, 2),
    (v_q, $t$die Freundschaft$t$, false, 3),
    (v_q, $t$der Zufall$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$'Die Brüder Grimm ___ Märchen gesammelt.' (Perfekt von 'sammeln')$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$haben$t$, true, 1),
    (v_q, $t$sind$t$, false, 2),
    (v_q, $t$hatten$t$, false, 3),
    (v_q, $t$werden$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$'Nachdem Sophie mehrere Vorträge ___, verstand sie die Bedeutung besser.' (Plusquamperfekt von 'hören')$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$gehört hatte$t$, true, 1),
    (v_q, $t$hörte$t$, false, 2),
    (v_q, $t$hat gehört$t$, false, 3),
    (v_q, $t$hörte gehabt$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Nebensatz mit Modalverb: 'Sophie begann, sich zu fragen, warum diese Geschichten heute noch so beliebt ___.'$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$seien$t$, true, 1),
    (v_q, $t$sind sie$t$, false, 2),
    (v_q, $t$sein$t$, false, 3),
    (v_q, $t$waren gewesen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$Schreiben Sie 5-7 Sätze über ein Märchen oder eine Geschichte, die Sie als Kind gehört haben. Was hat sie Ihnen beigebracht?$t$, 1, 'normal', 'production', $t$Als Kind habe ich oft die Geschichte von Rotkäppchen gehört. Meine Großmutter hat sie mir fast jeden Abend vorgelesen. Damals fand ich die Geschichte einfach spannend und ein bisschen gruselig wegen des Wolfes. Heute verstehe ich, dass das Märchen auch vor Gefahren warnt und zeigt, dass man vorsichtig sein sollte. Solche Geschichten helfen Kindern, mit schwierigen Gefühlen wie Angst umzugehen. Ich glaube, dass Märchen deshalb auch heute noch wichtig sind. Vielleicht werde ich sie eines Tages meinen eigenen Kindern erzählen.$t$);

END $block$;

-- 8. Ein Besuch im Bauhaus
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary) VALUES (
    'B1',
    $t$Ein Besuch im Bauhaus$t$,
    $t$Markus interessierte sich schon lange für Architektur, deshalb fuhr er an einem sonnigen Samstag nach Dessau, um das Bauhaus-Museum zu besuchen. Er wusste, dass die Bauhaus-Schule 1919 in Weimar von Walter Gropius gegründet worden war und dass sie 1925 nach Dessau umgezogen war, weil die politische Situation in Weimar schwierig geworden war. Als er das berühmte Schulgebäude aus Glas und Stahl sah, war er sofort beeindruckt, obwohl er vorher nur Fotos davon gesehen hatte.

Ein Museumsführer erklärte der Gruppe, dass die Künstler und Architekten am Bauhaus versuchten, Kunst, Handwerk und Technik zu verbinden. Sie wollten einfache, funktionale Möbel und Gebäude entwerfen, die für alle Menschen bezahlbar waren. Während Markus durch die Ausstellungsräume ging, sah er Stühle, Lampen und Geschirr, die auch heute noch modern wirken. Er war überrascht, dass viele Designideen von damals bis heute unser Leben beeinflussen.

Nachdem die Nationalsozialisten 1933 an die Macht gekommen waren, mussten die Bauhaus-Künstler die Schule schließen, weil ihre Ideen als zu modern und international galten. Viele von ihnen emigrierten später in die USA. Markus fand es traurig, dass eine so kreative Bewegung gezwungen wurde aufzuhören. Am Ende seines Besuchs kaufte er ein Buch über die Geschichte des Bauhauses, weil er zu Hause noch mehr darüber lesen wollte. Der Tag hatte seine Begeisterung für Architektur noch verstärkt.$t$,
    $t$Markus s'intéressait depuis longtemps à l'architecture, c'est pourquoi il est allé un samedi ensoleillé à Dessau pour visiter le musée du Bauhaus. Il savait que l'école du Bauhaus avait été fondée en 1919 à Weimar par Walter Gropius et qu'elle avait déménagé à Dessau en 1925, parce que la situation politique à Weimar était devenue difficile. Quand il a vu le célèbre bâtiment de l'école en verre et en acier, il a été immédiatement impressionné, bien qu'il n'en ait vu que des photos auparavant.

Un guide du musée a expliqué au groupe que les artistes et architectes du Bauhaus essayaient de relier l'art, l'artisanat et la technique. Ils voulaient concevoir des meubles et des bâtiments simples et fonctionnels, abordables pour tout le monde. Pendant que Markus traversait les salles d'exposition, il a vu des chaises, des lampes et de la vaisselle qui semblent encore modernes aujourd'hui. Il a été surpris que tant d'idées de design de l'époque influencent encore notre vie aujourd'hui.

Après l'arrivée au pouvoir des nationaux-socialistes en 1933, les artistes du Bauhaus ont dû fermer l'école, parce que leurs idées étaient considérées comme trop modernes et internationales. Beaucoup d'entre eux ont émigré plus tard aux États-Unis. Markus a trouvé triste qu'un mouvement aussi créatif ait été contraint de s'arrêter. À la fin de sa visite, il a acheté un livre sur l'histoire du Bauhaus, parce qu'il voulait en apprendre davantage chez lui. La journée avait encore renforcé sa passion pour l'architecture.$t$,
    $t${"Markus":"Markus","interessierte sich":"s'intéressait","schon":"déjà","lange":"longtemps","für":"à","Architektur":"architecture","deshalb":"c'est pourquoi","fuhr":"est allé","er":"il","an":"un","einem":"un","sonnigen":"ensoleillé","Samstag":"samedi","nach":"à","Dessau":"Dessau","um":"pour","das":"le","Bauhaus-Museum":"musée du Bauhaus","zu besuchen":"visiter","wusste":"savait","dass":"que","die":"l'","Bauhaus-Schule":"école du Bauhaus","in":"à","Weimar":"Weimar","von":"par","Walter Gropius":"Walter Gropius","gegründet":"fondée","worden war":"avait été","sie":"elle","umgezogen":"déménagé","war":"était","weil":"parce que","politische":"politique","Situation":"situation","schwierig":"difficile","geworden":"devenue","Als":"quand","berühmte":"célèbre","Schulgebäude":"bâtiment scolaire","aus":"en","Glas":"verre","Stahl":"acier","sah":"a vu","sofort":"immédiatement","beeindruckt":"impressionné","obwohl":"bien que","vorher":"auparavant","nur":"seulement","Fotos":"photos","davon":"de cela","gesehen":"vu","hatte":"avait","Ein":"un","Museumsführer":"guide du musée","erklärte":"a expliqué","der":"au","Gruppe":"groupe","Künstler":"artistes","und":"et","Architekten":"architectes","am":"au","versuchten":"essayaient","Kunst":"art","Handwerk":"artisanat","Technik":"technique","zu verbinden":"relier","Sie":"ils","wollten":"voulaient","einfache":"simples","funktionale":"fonctionnels","Möbel":"meubles","Gebäude":"bâtiments","entwerfen":"concevoir","alle":"tous","Menschen":"gens","bezahlbar":"abordables","waren":"étaient","Während":"pendant que","durch":"à travers","Ausstellungsräume":"salles d'exposition","ging":"passait","Stühle":"chaises","Lampen":"lampes","Geschirr":"vaisselle","auch":"aussi","heute noch":"encore aujourd'hui","modern":"moderne","wirken":"semblent","viele":"beaucoup","Designideen":"idées de design","von damals":"de l'époque","bis heute":"jusqu'à aujourd'hui","unser":"notre","Leben":"vie","beeinflussen":"influencent","Nachdem":"après que","Nationalsozialisten":"nationaux-socialistes","an die Macht":"au pouvoir","gekommen waren":"étaient venus","mussten":"ont dû","schließen":"fermer","ihre":"leurs","Ideen":"idées","als":"comme","zu modern":"trop moderne","international":"internationale","galten":"étaient considérées","Viele":"beaucoup","von ihnen":"d'entre eux","emigrierten":"ont émigré","später":"plus tard","USA":"États-Unis","fand":"a trouvé","traurig":"triste","kreative":"créatif","Bewegung":"mouvement","gezwungen":"contraint","wurde":"a été","aufzuhören":"s'arrêter","Am Ende":"à la fin","seines":"de sa","Besuchs":"visite","kaufte":"a acheté","Buch":"livre","Geschichte":"histoire","zu Hause":"chez lui","noch mehr":"davantage","darüber":"sur cela","zu lesen":"lire","wollte":"voulait","Der Tag":"la journée","Begeisterung":"passion","verstärkt":"renforcé","interessierte":"s'intéressait","sich":"se","zu":"à/de","besuchen":"visiter","Er":"il","Walter":"Walter","Gropius":"Gropius","worden":"été","Bauhaus":"Bauhaus","verbinden":"relier","heute":"aujourd'hui","noch":"encore","überrascht":"surpris","damals":"à l'époque","bis":"jusqu'à","Macht":"pouvoir","gekommen":"venu","Bauhaus-Künstler":"artistes du Bauhaus","Schule":"école","ihnen":"eux/leur","es":"il/cela","eine":"une","so":"si","Am":"le","Ende":"fin","ein":"un","über":"sur","des":"du","Bauhauses":"du Bauhaus","Hause":"maison","mehr":"plus","lesen":"lire","Der":"le","Tag":"jour","seine":"sa/ses"}$t$::jsonb
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wohin fuhr Markus an einem Samstag?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Nach Dessau$t$, true, 1),
    (v_q, $t$Nach Weimar$t$, false, 2),
    (v_q, $t$Nach Berlin$t$, false, 3),
    (v_q, $t$Nach München$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wer gründete die Bauhaus-Schule?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Walter Gropius$t$, true, 1),
    (v_q, $t$Johann Wolfgang von Goethe$t$, false, 2),
    (v_q, $t$Die Brüder Grimm$t$, false, 3),
    (v_q, $t$Friedrich Schiller$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum zog die Bauhaus-Schule 1925 nach Dessau um?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Weil die politische Situation in Weimar schwierig geworden war$t$, true, 1),
    (v_q, $t$Weil das Gebäude in Weimar zerstört wurde$t$, false, 2),
    (v_q, $t$Weil Gropius nach Dessau geboren wurde$t$, false, 3),
    (v_q, $t$Weil die Schüler das Klima in Dessau bevorzugten$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was sah Markus in den Ausstellungsräumen?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Stühle, Lampen und Geschirr$t$, true, 1),
    (v_q, $t$Gemälde alter Meister$t$, false, 2),
    (v_q, $t$Militäruniformen$t$, false, 3),
    (v_q, $t$Autos$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was wollten die Künstler am Bauhaus erreichen?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Kunst, Handwerk und Technik verbinden$t$, true, 1),
    (v_q, $t$Nur teure Luxusmöbel herstellen$t$, false, 2),
    (v_q, $t$Traditionelle Architektur bewahren$t$, false, 3),
    (v_q, $t$Kunst von der Technik trennen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was zeigt der Text über die langfristige Wirkung des Bauhauses?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Viele Designideen von damals prägen unser Leben noch heute$t$, true, 1),
    (v_q, $t$Die Ideen des Bauhauses wurden schnell vergessen$t$, false, 2),
    (v_q, $t$Die Möbel waren nur für reiche Menschen gedacht$t$, false, 3),
    (v_q, $t$Die Bauhaus-Architektur wurde nie außerhalb Deutschlands bekannt$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was kaufte Markus am Ende seines Besuchs?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Ein Buch über die Geschichte des Bauhauses$t$, true, 1),
    (v_q, $t$Eine Postkarte$t$, false, 2),
    (v_q, $t$Einen Stuhl$t$, false, 3),
    (v_q, $t$Ein Ticket für eine weitere Führung$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum musste die Bauhaus-Schule 1933 schließen?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Weil die Nationalsozialisten ihre Ideen als zu modern ansahen$t$, true, 1),
    (v_q, $t$Weil kein Geld mehr vorhanden war$t$, false, 2),
    (v_q, $t$Weil die Schüler die Schule verließen$t$, false, 3),
    (v_q, $t$Weil das Gebäude einstürzte$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was lässt sich über das Schicksal vieler Bauhaus-Künstler nach 1933 schließen?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie mussten Deutschland verlassen und gingen oft in die USA$t$, true, 1),
    (v_q, $t$Sie blieben in Dessau und arbeiteten weiter$t$, false, 2),
    (v_q, $t$Sie wechselten alle zur Politik$t$, false, 3),
    (v_q, $t$Sie gründeten sofort eine neue Schule in Berlin$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'gegründet' (die Schule wurde gegründet)?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$fondé$t$, true, 1),
    (v_q, $t$détruit$t$, false, 2),
    (v_q, $t$fermé$t$, false, 3),
    (v_q, $t$vendu$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$'Sie wollten funktionale Möbel entwerfen.' Was bedeutet 'entwerfen'?$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$concevoir, dessiner un projet$t$, true, 1),
    (v_q, $t$kaufen$t$, false, 2),
    (v_q, $t$reparieren$t$, false, 3),
    (v_q, $t$verkaufen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'emigrieren' im Satz 'Viele von ihnen emigrierten später in die USA'?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$auswandern, sein Land verlassen$t$, true, 1),
    (v_q, $t$zurückkehren$t$, false, 2),
    (v_q, $t$studieren$t$, false, 3),
    (v_q, $t$arbeiten$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$'Markus ___ nach Dessau gefahren.' (Perfekt von 'fahren')$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$ist$t$, true, 1),
    (v_q, $t$hat$t$, false, 2),
    (v_q, $t$war$t$, false, 3),
    (v_q, $t$wird$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$'Die Schule war 1925 nach Dessau umgezogen, ___ die politische Situation in Weimar schwierig geworden war.'$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$weil$t$, true, 1),
    (v_q, $t$obwohl$t$, false, 2),
    (v_q, $t$damit$t$, false, 3),
    (v_q, $t$bevor$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Passiv im Nebensatz: 'Nachdem die Nationalsozialisten 1933 an die Macht gekommen waren, mussten die Bauhaus-Künstler die Schule schließen, weil ihre Ideen als zu modern ___.'$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$galten$t$, true, 1),
    (v_q, $t$gelten$t$, false, 2),
    (v_q, $t$gegolten hatten sie$t$, false, 3),
    (v_q, $t$haben gegolten$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$Schreiben Sie 5-7 Sätze über ein Museum oder ein Gebäude, das Sie beeindruckt hat. Was haben Sie dort gesehen und gelernt?$t$, 1, 'normal', 'production', $t$Letztes Jahr habe ich ein Kunstmuseum in meiner Stadt besucht, das mich sehr beeindruckt hat. Das Gebäude selbst war schon architektonisch interessant, mit viel Glas und modernen Formen. Im Inneren gab es eine Ausstellung über moderne Möbel und Design, ähnlich wie im Bauhaus. Ein Museumsführer erklärte, wie Künstler versucht hatten, schöne und gleichzeitig praktische Objekte zu schaffen. Ich war überrascht, wie viele dieser Designideen noch heute unseren Alltag beeinflussen. Am Ende habe ich ein Buch über die Ausstellung gekauft, um mehr darüber zu erfahren.$t$);

END $block$;

-- 9. Ein Theaterabend über die Freiheit
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary) VALUES (
    'B1',
    $t$Ein Theaterabend über die Freiheit$t$,
    $t$Anna ging mit ihrem Vater ins Theater, weil dort ein Stück aufgeführt wurde, das sich mit den Ideen von Friedrich Schiller beschäftigte. Obwohl sie Schiller vorher nur aus dem Deutschunterricht kannte, freute sie sich auf den Abend. Die Regisseurin hatte Szenen aus verschiedenen Werken Schillers kombiniert, um zu zeigen, wie wichtig ihm das Thema Freiheit während seines ganzen Lebens war. Schiller lebte im 18. Jahrhundert, einer Zeit, in der viele Menschen in Deutschland unter strengen Regeln lebten, obwohl die Ideen der Aufklärung sich langsam verbreiteten.

Während der Aufführung erklärte ein Schauspieler dem Publikum, dass Schiller glaubte, dass wahre Freiheit nicht nur politisch, sondern auch innerlich sein müsse. Ein Mensch müsse lernen, seinen eigenen Willen zu kontrollieren, um wirklich frei zu sein. Nachdem Anna diese Idee gehört hatte, dachte sie über ihr eigenes Leben nach. Sie fragte sich, ob sie selbst immer frei entschied oder ob sie oft nur tat, was andere von ihr erwarteten.

Nach der Vorstellung diskutierten Anna und ihr Vater lange über das Stück. Ihr Vater erzählte, dass Schillers Ideen später viele Menschen inspiriert hatten, die für mehr Rechte und Demokratie kämpften. Anna verstand jetzt besser, warum Schillers Werke auch heute noch in Schulen gelesen werden. Der Abend hatte ihr gezeigt, dass alte Ideen manchmal überraschend aktuell bleiben können, wenn man genauer darüber nachdenkt.$t$,
    $t$Anna est allée au théâtre avec son père, parce qu'on y jouait une pièce qui traitait des idées de Friedrich Schiller. Bien qu'elle ne connaisse Schiller que par les cours d'allemand, elle se réjouissait de cette soirée. La metteuse en scène avait combiné des scènes de différentes œuvres de Schiller pour montrer à quel point le thème de la liberté avait été important pour lui tout au long de sa vie. Schiller a vécu au XVIIIe siècle, une époque où de nombreuses personnes en Allemagne vivaient sous des règles strictes, bien que les idées des Lumières se répandent lentement.

Pendant la représentation, un acteur a expliqué au public que Schiller croyait que la vraie liberté ne devait pas être seulement politique, mais aussi intérieure. Une personne devait apprendre à contrôler sa propre volonté pour être vraiment libre. Après avoir entendu cette idée, Anna a réfléchi à sa propre vie. Elle s'est demandé si elle décidait elle-même toujours librement ou si elle ne faisait souvent que ce que les autres attendaient d'elle.

Après la représentation, Anna et son père ont longuement discuté de la pièce. Son père lui a raconté que les idées de Schiller avaient plus tard inspiré beaucoup de personnes qui luttaient pour plus de droits et de démocratie. Anna comprenait maintenant mieux pourquoi les œuvres de Schiller sont encore lues aujourd'hui dans les écoles. La soirée lui avait montré que de vieilles idées peuvent parfois rester étonnamment actuelles, si l'on y réfléchit plus attentivement.$t$,
    $t${"Anna":"Anna","ging":"est allée","mit":"avec","ihrem":"son","Vater":"père","ins":"au","Theater":"théâtre","weil":"parce que","dort":"y","ein":"un","Stück":"pièce","aufgeführt":"jouée","wurde":"était","das":"le","sich":"se","beschäftigte":"traitait","den":"cette","Ideen":"idées","von":"de","Friedrich Schiller":"Friedrich Schiller","Obwohl":"bien que","sie":"elle","Schiller":"Schiller","vorher":"avant","nur":"seulement","aus dem Deutschunterricht":"par les cours d'allemand","kannte":"connaissait","freute sich":"se réjouissait","auf":"de","Abend":"soirée","Die":"la","Regisseurin":"metteuse en scène","hatte":"avait","Szenen":"scènes","aus":"de","verschiedenen":"différentes","Werken":"œuvres","kombiniert":"combinées","um":"pour","zu zeigen":"montrer","wie wichtig":"à quel point important","ihm":"lui","Thema":"thème","Freiheit":"liberté","während":"pendant","seines":"sa","ganzen":"toute","Lebens":"vie","war":"était","lebte":"a vécu","im":"au","Jahrhundert":"siècle","einer":"une","Zeit":"époque","in der":"où","viele":"beaucoup","Menschen":"personnes","in":"dans","Deutschland":"Allemagne","unter":"sous","strengen":"strictes","Regeln":"règles","lebten":"vivaient","obwohl":"bien que","die":"qui","der":"la","Aufklärung":"Lumières","langsam":"lentement","verbreiteten":"répandaient","Während":"pendant","Aufführung":"représentation","erklärte":"a expliqué","Schauspieler":"acteur","dem":"au","Publikum":"public","glaubte":"croyait","wahre":"vraie","nicht nur":"pas seulement","politisch":"politique","sondern auch":"mais aussi","innerlich":"intérieure","sein":"être","müsse":"devait","Ein":"un","Mensch":"personne","müsse lernen":"devait apprendre","seinen":"sa","eigenen":"propre","Willen":"volonté","zu kontrollieren":"contrôler","wirklich":"vraiment","frei":"librement","zu sein":"être","Nachdem":"après que","diese":"cette","Idee":"idée","gehört":"entendu","dachte":"a réfléchi","über":"de","ihr":"sa","eigenes":"propre","Leben":"vie","nach":"réfléchi","fragte sich":"s'est demandé","ob":"si","selbst":"elle-même","immer":"toujours","entschied":"décidait","oder":"ou","oft":"souvent","tat":"faisait","was":"ce que","andere":"les autres","von ihr":"d'elle","erwarteten":"attendaient","Nach der Vorstellung":"après la représentation","diskutierten":"ont discuté","lange":"longuement","erzählte":"a raconté","dass":"que","Schillers":"de Schiller","später":"plus tard","inspiriert":"inspiré","hatten":"avaient","für":"pour","mehr":"plus","Rechte":"droits","Demokratie":"démocratie","kämpften":"luttaient","verstand":"comprenait","jetzt":"maintenant","besser":"mieux","warum":"pourquoi","Werke":"œuvres","auch":"aussi","heute noch":"encore aujourd'hui","Schulen":"écoles","gelesen":"lues","werden":"sont","Der Abend":"la soirée","gezeigt":"montré","alte":"vieilles","manchmal":"parfois","überraschend":"étonnamment","aktuell":"actuelles","bleiben können":"peuvent rester","wenn":"si","man":"on","genauer":"plus attentivement","darüber":"à cela","nachdenkt":"réfléchit","Friedrich":"Friedrich","Deutschunterricht":"cours d'allemand","freute":"s'est réjoui","zu":"à/de","zeigen":"montrer","wie":"comme","wichtig":"important","nicht":"pas","sondern":"mais","lernen":"apprendre","kontrollieren":"contrôler","Sie":"elle/ils","fragte":"a demandé","Nach":"après","Vorstellung":"représentation","und":"et","Ihr":"son","heute":"aujourd'hui","noch":"encore","Der":"le","bleiben":"rester","können":"pouvoir"}$t$::jsonb
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Mit wem ging Anna ins Theater?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Mit ihrem Vater$t$, true, 1),
    (v_q, $t$Mit ihrer Mutter$t$, false, 2),
    (v_q, $t$Mit ihrer Klasse$t$, false, 3),
    (v_q, $t$Allein$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Womit beschäftigte sich das Theaterstück?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Mit den Ideen von Friedrich Schiller$t$, true, 1),
    (v_q, $t$Mit dem Leben von Goethe$t$, false, 2),
    (v_q, $t$Mit der Geschichte des Bauhauses$t$, false, 3),
    (v_q, $t$Mit den Märchen der Brüder Grimm$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was erfährt man über die Zeit, in der Schiller lebte?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Strenge Regeln herrschten, obwohl sich die Ideen der Aufklärung langsam verbreiteten$t$, true, 1),
    (v_q, $t$Alle Menschen in Deutschland waren bereits politisch frei$t$, false, 2),
    (v_q, $t$Die Aufklärung hatte noch nicht begonnen$t$, false, 3),
    (v_q, $t$Schiller lebte in einer Zeit völliger Demokratie$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was musste ein Mensch laut Schiller lernen, um frei zu sein?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Seinen eigenen Willen zu kontrollieren$t$, true, 1),
    (v_q, $t$Reich zu werden$t$, false, 2),
    (v_q, $t$Andere Länder zu bereisen$t$, false, 3),
    (v_q, $t$Eine Fremdsprache zu lernen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Worüber dachte Anna während der Aufführung nach?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Ob sie selbst immer frei entschied$t$, true, 1),
    (v_q, $t$Ob sie Schauspielerin werden möchte$t$, false, 2),
    (v_q, $t$Ob das Theater zu teuer war$t$, false, 3),
    (v_q, $t$Ob sie das Stück langweilig fand$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet Schillers Idee von Freiheit laut dem Text am ehesten?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Freiheit ist sowohl eine politische als auch eine innere, persönliche Aufgabe$t$, true, 1),
    (v_q, $t$Freiheit bedeutet nur, keine Gesetze befolgen zu müssen$t$, false, 2),
    (v_q, $t$Freiheit ist ausschließlich ein politisches Konzept$t$, false, 3),
    (v_q, $t$Freiheit hat nichts mit dem eigenen Willen zu tun$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Worüber sprachen Anna und ihr Vater nach der Vorstellung?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Über das Theaterstück$t$, true, 1),
    (v_q, $t$Über das Abendessen$t$, false, 2),
    (v_q, $t$Über die Schule$t$, false, 3),
    (v_q, $t$Über den Verkehr$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was erzählte Annas Vater über Schillers Ideen?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Dass sie später Menschen inspirierten, die für Demokratie kämpften$t$, true, 1),
    (v_q, $t$Dass sie schnell vergessen wurden$t$, false, 2),
    (v_q, $t$Dass sie nur in Deutschland bekannt waren$t$, false, 3),
    (v_q, $t$Dass Schiller selbst nie an Demokratie glaubte$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was ist die zentrale Erkenntnis, die Anna aus dem Abend gewinnt?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Alte Ideen können auch heute noch überraschend relevant sein$t$, true, 1),
    (v_q, $t$Theater ist wichtiger als Schule$t$, false, 2),
    (v_q, $t$Schiller war weniger bedeutend, als sie dachte$t$, false, 3),
    (v_q, $t$Freiheit war im 18. Jahrhundert kein wichtiges Thema$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'die Freiheit'?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$la liberté$t$, true, 1),
    (v_q, $t$la loi$t$, false, 2),
    (v_q, $t$la peur$t$, false, 3),
    (v_q, $t$le pouvoir$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$'Ein Mensch müsse lernen, seinen eigenen Willen zu kontrollieren.' Was bedeutet 'der Wille'?$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$la volonté$t$, true, 1),
    (v_q, $t$die Angst$t$, false, 2),
    (v_q, $t$die Freundschaft$t$, false, 3),
    (v_q, $t$der Zufall$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'die Aufklärung' im historischen Kontext des Textes?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$das Zeitalter der Vernunft und des rationalen Denkens (18. Jh.)$t$, true, 1),
    (v_q, $t$eine Theateraufführung$t$, false, 2),
    (v_q, $t$ein Gesetz$t$, false, 3),
    (v_q, $t$ein Krieg$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$'Anna ___ mit ihrem Vater ins Theater gegangen.' (Perfekt von 'gehen')$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$ist$t$, true, 1),
    (v_q, $t$hat$t$, false, 2),
    (v_q, $t$war$t$, false, 3),
    (v_q, $t$wird$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$'Obwohl sie Schiller vorher nur aus dem Unterricht ___, freute sie sich auf den Abend.' (Präteritum von 'kennen')$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$kannte$t$, true, 1),
    (v_q, $t$kennt$t$, false, 2),
    (v_q, $t$gekannt$t$, false, 3),
    (v_q, $t$kenne$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Konjunktiv I in indirekter Rede: 'Ein Schauspieler erklärte, dass Schiller glaubte, dass wahre Freiheit nicht nur politisch, sondern auch innerlich sein ___.'$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$müsse$t$, true, 1),
    (v_q, $t$muss$t$, false, 2),
    (v_q, $t$musste er$t$, false, 3),
    (v_q, $t$müssen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$Schreiben Sie 5-7 Sätze darüber, was Freiheit für Sie persönlich bedeutet.$t$, 1, 'normal', 'production', $t$Für mich bedeutet Freiheit vor allem, eigene Entscheidungen treffen zu können. Ich finde es wichtig, dass man seine Meinung frei äußern darf, ohne Angst vor negativen Folgen zu haben. Gleichzeitig glaube ich, dass Freiheit auch bedeutet, Verantwortung für die eigenen Handlungen zu übernehmen. Manchmal denke ich, dass wir im Alltag oft mehr tun, was andere von uns erwarten, als das, was wir wirklich wollen. Deshalb versuche ich, öfter über meine eigenen Wünsche nachzudenken. Ein Theaterstück oder Buch über Freiheit kann helfen, diese Fragen besser zu verstehen.$t$);

END $block$;

-- 10. Die Geschichte meiner Großmutter
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary) VALUES (
    'B1',
    $t$Die Geschichte meiner Großmutter$t$,
    $t$Jonas wusste als Kind wenig über die deutsche Teilung, bis seine Großmutter ihm eines Abends von ihrem Leben erzählte. Sie war in der DDR aufgewachsen und hatte in Leipzig gewohnt, als im Herbst 1989 immer mehr Menschen auf die Straße gingen, weil sie mehr Freiheit und Reisefreiheit forderten. Jonas' Großmutter nahm damals an den Montagsdemonstrationen teil, obwohl ihre Eltern Angst hatten, dass sie deshalb Probleme bekommen könnte.

Am 9. November 1989 saß die Familie vor dem Fernseher, als die Nachricht kam, dass die Grenze geöffnet worden war. Zuerst konnte niemand glauben, dass die Mauer wirklich gefallen war. Nachdem sie die Bilder von jubelnden Menschen in Berlin gesehen hatten, weinte Jonas' Urgroßmutter vor Freude, weil sie seit Jahrzehnten nicht mehr in den Westen hatte reisen dürfen. Wenige Tage später fuhr die ganze Familie zum ersten Mal gemeinsam nach West-Berlin, obwohl die Reise chaotisch und überfüllt war.

Jonas' Großmutter erzählte, dass die folgenden Jahre nicht immer einfach waren, weil sich vieles im Alltag veränderte: neue Gesetze, eine neue Währung und oft auch neue Arbeitsplätze. Trotzdem sagte sie, dass der Moment der Grenzöffnung einer der glücklichsten ihres Lebens gewesen sei. Jonas verstand nach diesem Gespräch, dass die deutsche Wiedervereinigung nicht nur ein Ereignis in Geschichtsbüchern war, sondern eine persönliche Erfahrung seiner eigenen Familie.$t$,
    $t$Enfant, Jonas savait peu de choses sur la division de l'Allemagne, jusqu'à ce qu'un soir sa grand-mère lui raconte sa vie. Elle avait grandi en RDA et vécu à Leipzig quand, à l'automne 1989, de plus en plus de gens descendaient dans la rue, parce qu'ils réclamaient plus de liberté et la liberté de voyager. La grand-mère de Jonas participait alors aux manifestations du lundi, bien que ses parents aient eu peur qu'elle ait des problèmes à cause de cela.

Le 9 novembre 1989, la famille était assise devant la télévision quand est arrivée la nouvelle que la frontière avait été ouverte. Personne ne pouvait d'abord croire que le Mur était vraiment tombé. Après avoir vu les images de gens en liesse à Berlin, l'arrière-grand-mère de Jonas a pleuré de joie, parce que depuis des décennies elle n'avait plus eu le droit de voyager à l'Ouest. Quelques jours plus tard, toute la famille est partie ensemble pour la première fois à Berlin-Ouest, bien que le voyage ait été chaotique et bondé.

La grand-mère de Jonas a raconté que les années suivantes n'avaient pas toujours été faciles, parce que beaucoup de choses changeaient dans le quotidien : de nouvelles lois, une nouvelle monnaie et souvent aussi de nouveaux emplois. Elle a quand même dit que le moment de l'ouverture de la frontière avait été l'un des plus heureux de sa vie. Après cette conversation, Jonas a compris que la réunification allemande n'était pas seulement un événement dans les livres d'histoire, mais une expérience personnelle de sa propre famille.$t$,
    $t${"Jonas":"Jonas","wusste":"savait","als":"quand","Kind":"enfant","wenig":"peu","über":"sur","die":"la","deutsche":"allemande","Teilung":"division","bis":"jusqu'à ce que","seine":"sa","Großmutter":"grand-mère","ihm":"lui","eines":"un","Abends":"soir","von":"de","ihrem":"sa","Leben":"vie","erzählte":"a raconté","war":"était","in":"en","der":"la","DDR":"RDA","aufgewachsen":"grandi","hatte":"avait","Leipzig":"Leipzig","gewohnt":"vécu","im":"à l'","Herbst":"automne","immer mehr":"de plus en plus","Menschen":"gens","auf die Straße gingen":"descendaient dans la rue","weil":"parce que","sie":"ils","mehr":"plus","Freiheit":"liberté","und":"et","Reisefreiheit":"liberté de voyager","forderten":"réclamaient","Jonas'":"de Jonas","nahm":"participait","damals":"alors","an":"à","den":"les","Montagsdemonstrationen":"manifestations du lundi","teil":"participait","obwohl":"bien que","Eltern":"parents","Angst":"peur","hatten":"avaient","dass":"que","deshalb":"à cause de cela","Probleme":"problèmes","bekommen könnte":"pourrait avoir","Am":"le","November":"novembre","saß":"était assise","Familie":"famille","vor":"devant","dem":"la","Fernseher":"télévision","Nachricht":"nouvelle","kam":"est arrivée","Grenze":"frontière","geöffnet":"ouverte","worden war":"avait été","Zuerst":"d'abord","konnte":"pouvait","niemand":"personne","glauben":"croire","Mauer":"mur","wirklich":"vraiment","gefallen":"tombé","Nachdem":"après que","Bilder":"images","jubelnden":"en liesse","Berlin":"Berlin","gesehen":"vu","weinte":"a pleuré","Urgroßmutter":"arrière-grand-mère","vor Freude":"de joie","seit":"depuis","Jahrzehnten":"décennies","nicht mehr":"plus","in den Westen":"à l'Ouest","reisen":"voyager","dürfen":"avoir le droit","Wenige":"quelques","Tage":"jours","später":"plus tard","fuhr":"est partie","ganze":"toute","zum ersten Mal":"pour la première fois","gemeinsam":"ensemble","nach":"après","West-Berlin":"Berlin-Ouest","Reise":"voyage","chaotisch":"chaotique","überfüllt":"bondé","folgenden":"suivantes","Jahre":"années","nicht immer":"pas toujours","einfach":"facile","waren":"étaient","vieles":"beaucoup de choses","im Alltag":"dans le quotidien","veränderte":"changeait","neue":"nouvelles","Gesetze":"lois","eine":"une","Währung":"monnaie","oft":"souvent","Arbeitsplätze":"emplois","Trotzdem":"quand même","sagte":"a dit","der Moment":"le moment","Grenzöffnung":"ouverture de la frontière","einer":"l'un","glücklichsten":"plus heureux","ihres":"de sa","Lebens":"vie","gewesen sei":"avait été","verstand":"a compris","diesem":"cette","Gespräch":"conversation","Wiedervereinigung":"réunification","nicht nur":"pas seulement","Ereignis":"événement","Geschichtsbüchern":"livres d'histoire","sondern":"mais","persönliche":"personnelle","Erfahrung":"expérience","eigenen":"propre","Sie":"elle/ils","immer":"toujours","auf":"sur","Straße":"rue","gingen":"allaient","ihre":"ses/leurs","bekommen":"recevoir","könnte":"pourrait","worden":"été","Freude":"joie","nicht":"pas","Westen":"Ouest","zum":"au","ersten":"premiers/première","Mal":"fois","sich":"se","Alltag":"quotidien","auch":"aussi","Moment":"moment","gewesen":"été","sei":"était","nur":"seulement","ein":"un","seiner":"sa/de sa"}$t$::jsonb
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wo hatte Jonas' Großmutter gewohnt?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$In Leipzig$t$, true, 1),
    (v_q, $t$In München$t$, false, 2),
    (v_q, $t$In Hamburg$t$, false, 3),
    (v_q, $t$In Dresden$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Woran nahm Jonas' Großmutter 1989 teil?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$An den Montagsdemonstrationen$t$, true, 1),
    (v_q, $t$An einer Theateraufführung$t$, false, 2),
    (v_q, $t$An einem Schulprojekt$t$, false, 3),
    (v_q, $t$An einer Reise nach West-Berlin im Sommer$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum hatten die Eltern von Jonas' Großmutter Angst?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Weil die Teilnahme an den Demonstrationen für sie Probleme bringen könnte$t$, true, 1),
    (v_q, $t$Weil sie gegen mehr Freiheit waren$t$, false, 2),
    (v_q, $t$Weil sie die DDR verlassen wollten$t$, false, 3),
    (v_q, $t$Weil ihre Tochter nicht mehr studieren durfte$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was geschah am 9. November 1989?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Die Grenze wurde geöffnet$t$, true, 1),
    (v_q, $t$Jonas wurde geboren$t$, false, 2),
    (v_q, $t$Die Familie zog nach Berlin$t$, false, 3),
    (v_q, $t$Die Großmutter heiratete$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum weinte Jonas' Urgroßmutter vor Freude?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Weil sie seit Jahrzehnten nicht in den Westen reisen durfte$t$, true, 1),
    (v_q, $t$Weil sie einen neuen Job bekam$t$, false, 2),
    (v_q, $t$Weil ihre Enkelin geboren wurde$t$, false, 3),
    (v_q, $t$Weil sie im Fernsehen erwähnt wurde$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was zeigt die Reaktion der Familie vor dem Fernseher über die Bedeutung des Ereignisses?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Die Nachricht war so unglaublich, dass die Familie sie zunächst kaum fassen konnte$t$, true, 1),
    (v_q, $t$Die Familie hatte die Öffnung der Grenze schon lange erwartet$t$, false, 2),
    (v_q, $t$Nur Jonas' Großmutter war von der Nachricht überrascht$t$, false, 3),
    (v_q, $t$Die Familie reagierte gleichgültig auf die Nachricht$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was veränderte sich nach der Wiedervereinigung im Alltag?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Neue Gesetze, eine neue Währung und neue Arbeitsplätze$t$, true, 1),
    (v_q, $t$Nichts veränderte sich$t$, false, 2),
    (v_q, $t$Nur die Sprache änderte sich$t$, false, 3),
    (v_q, $t$Die Familie zog ins Ausland$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie beschrieb Jonas' Großmutter den Moment der Grenzöffnung?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Als einen der glücklichsten Momente ihres Lebens$t$, true, 1),
    (v_q, $t$Als einen traurigen Moment$t$, false, 2),
    (v_q, $t$Als unwichtig für ihr Leben$t$, false, 3),
    (v_q, $t$Als einen Moment der Angst$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was versteht Jonas am Ende des Gesprächs mit seiner Großmutter?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Dass die Wiedervereinigung eine persönliche Erfahrung seiner eigenen Familie war, nicht nur ein historisches Ereignis$t$, true, 1),
    (v_q, $t$Dass seine Großmutter die Wiedervereinigung ablehnte$t$, false, 2),
    (v_q, $t$Dass die Wiedervereinigung für seine Familie keine Bedeutung hatte$t$, false, 3),
    (v_q, $t$Dass er selbst die Ereignisse von 1989 miterlebt hat$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'die Grenze'?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$la frontière$t$, true, 1),
    (v_q, $t$la rue$t$, false, 2),
    (v_q, $t$la maison$t$, false, 3),
    (v_q, $t$le pays$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$'Sie forderten mehr Freiheit.' Was bedeutet 'fordern'?$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$exiger, revendiquer$t$, true, 1),
    (v_q, $t$verbieten$t$, false, 2),
    (v_q, $t$vergessen$t$, false, 3),
    (v_q, $t$anbieten$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'die Wiedervereinigung' im Text?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$die Vereinigung von zwei getrennten Teilen (hier: Deutschland)$t$, true, 1),
    (v_q, $t$eine Feier$t$, false, 2),
    (v_q, $t$eine neue Regierung$t$, false, 3),
    (v_q, $t$ein Krieg$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$'Die Großmutter ___ in Leipzig gewohnt.' (Perfekt von 'wohnen')$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$hat$t$, true, 1),
    (v_q, $t$ist$t$, false, 2),
    (v_q, $t$war$t$, false, 3),
    (v_q, $t$wird$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$'Nachdem sie die Bilder ___, weinte die Urgroßmutter vor Freude.' (Plusquamperfekt von 'sehen')$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$gesehen hatten$t$, true, 1),
    (v_q, $t$sahen$t$, false, 2),
    (v_q, $t$haben gesehen$t$, false, 3),
    (v_q, $t$sahen gesehen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Nebensatz: 'Jonas verstand, dass die Wiedervereinigung nicht nur ein Ereignis in Geschichtsbüchern ___, sondern eine persönliche Erfahrung.'$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$war$t$, true, 1),
    (v_q, $t$ist$t$, false, 2),
    (v_q, $t$wäre gewesen$t$, false, 3),
    (v_q, $t$sei gewesen es$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$Schreiben Sie 5-7 Sätze über eine wichtige historische Erinnerung, die jemand in Ihrer Familie erlebt hat.$t$, 1, 'normal', 'production', $t$Mein Großvater hat mir oft von einem wichtigen politischen Ereignis erzählt, das er als junger Mann erlebt hat. Damals gab es große Veränderungen in seinem Land, und viele Menschen gingen auf die Straße, um für mehr Rechte zu demonstrieren. Er erinnerte sich genau an den Tag, an dem eine wichtige Entscheidung im Radio verkündet wurde. Die ganze Familie saß zusammen und konnte es zuerst kaum glauben. Später erzählte er, dass die folgenden Jahre nicht immer leicht waren, weil sich vieles im Alltag änderte. Trotzdem sagte er, dass dieser Moment einer der wichtigsten seines Lebens gewesen sei. Solche Geschichten zeigen mir, dass Geschichte immer auch etwas Persönliches ist.$t$);

END $block$;

-- 11. Stille Musik in Bonn
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary) VALUES (
    'B1',
    $t$Stille Musik in Bonn$t$,
    $t$Am Samstag fuhr Lena mit dem Zug nach Bonn, um das Beethoven-Haus zu besuchen. Sie interessierte sich schon lange für klassische Musik, aber über Beethovens Leben wusste sie noch wenig. Im Museum sah sie alte Klaviere, handgeschriebene Noten und Briefe des Komponisten. Ein Führer erklärte, dass Beethoven schon mit knapp dreißig Jahren begann, sein Gehör zu verlieren. Trotzdem hörte er nicht auf zu komponieren. Er spürte die Vibrationen des Klaviers, wenn er die Tasten drückte, und schrieb seine berühmtesten Werke, als er fast völlig taub war. Lena blieb lange vor einem seiner letzten Briefe stehen, in dem er schrieb, dass die Kunst ihn am Leben hielt. Sie fragte sich, wie schwer es gewesen sein musste, Musik zu schreiben, die man selbst nicht mehr hören konnte. Als sie später im Innenhof saß, hörte sie durch ein offenes Fenster jemanden Klavier üben. Die Melodie war nicht perfekt, aber voller Gefühl. Lena dachte, dass Beethoven vielleicht genau das gemeint hatte: Musik kommt nicht nur aus den Ohren, sondern aus dem Herzen. Auf der Heimfahrt hörte sie zum ersten Mal bewusst eine ganze Symphonie und verstand die Musik plötzlich anders als vorher.$t$,
    $t$Samedi, Lena a pris le train pour Bonn afin de visiter la maison de Beethoven. Elle s'intéressait depuis longtemps à la musique classique, mais elle ne savait encore que peu de choses sur la vie de Beethoven. Au musée, elle a vu de vieux pianos, des partitions manuscrites et des lettres du compositeur. Un guide a expliqué que Beethoven avait commencé à perdre l'ouïe à peine âgé de trente ans. Il n'a pourtant pas cessé de composer. Il sentait les vibrations du piano quand il appuyait sur les touches, et il a écrit ses œuvres les plus célèbres alors qu'il était presque totalement sourd. Lena est restée longtemps devant l'une de ses dernières lettres, dans laquelle il écrivait que l'art le maintenait en vie. Elle s'est demandé combien il avait dû être difficile d'écrire une musique qu'on ne pouvait plus entendre soi-même. Plus tard, alors qu'elle était assise dans la cour intérieure, elle a entendu par une fenêtre ouverte quelqu'un s'exercer au piano. La mélodie n'était pas parfaite, mais pleine de sentiment. Lena a pensé que c'était peut-être exactement ce que Beethoven avait voulu dire : la musique ne vient pas seulement des oreilles, mais du cœur. Sur le chemin du retour, elle a écouté pour la première fois consciemment une symphonie entière et a soudain compris la musique différemment qu'avant.$t$,
    $t${"Am":"le","Samstag":"samedi","fuhr":"a pris le train","Lena":"Lena","mit":"à","dem":"le","Zug":"train","nach":"à","Bonn":"Bonn","um":"pour","das":"ce","Beethoven-Haus":"maison de Beethoven","zu besuchen":"visiter","Sie":"elle","interessierte sich":"s'intéressait","schon":"déjà","lange":"longtemps","für":"à","klassische":"classique","Musik":"musique","aber":"mais","über":"sur","Beethovens":"de Beethoven","Leben":"vie","wusste":"savait","sie":"elle","noch":"encore","wenig":"peu","Im":"au","Museum":"musée","sah":"a vu","alte":"vieux","Klaviere":"pianos","handgeschriebene":"manuscrites","Noten":"partitions","und":"et","Briefe":"lettres","des":"du","Komponisten":"compositeur","Ein":"un","Führer":"guide","erklärte":"a expliqué","dass":"que","knapp":"à peine","dreißig":"trente","Jahren":"ans","begann":"a commencé","sein":"son","Gehör":"ouïe","zu verlieren":"perdre","Trotzdem":"pourtant","hörte":"a entendu","er":"il","nicht auf":"pas","zu komponieren":"composer","spürte":"sentait","die":"que","Vibrationen":"vibrations","Klaviers":"piano","wenn":"quand","Tasten":"touches","drückte":"appuyait","schrieb":"a écrit","seine":"ses","berühmtesten":"plus célèbres","Werke":"œuvres","als":"que","fast":"presque","völlig":"totalement","taub":"sourd","war":"était","blieb":"est restée","vor":"devant","einem":"une","seiner":"de ses","letzten":"dernières","stehen":"debout","in dem":"dans laquelle","Kunst":"art","ihn":"le","am":"en","hielt":"maintenait","fragte sich":"s'est demandé","wie schwer":"combien difficile","es":"il","gewesen sein":"avoir été","musste":"devait","zu schreiben":"écrire","man":"on","selbst":"soi-même","nicht mehr":"plus","hören konnte":"pouvait entendre","Als":"alors que","später":"plus tard","im":"dans la","Innenhof":"cour intérieure","saß":"était assise","durch":"par","ein":"une","offenes":"ouverte","Fenster":"fenêtre","jemanden":"quelqu'un","Klavier":"piano","üben":"s'exercer","Die":"la","Melodie":"mélodie","nicht":"pas","perfekt":"parfaite","voller":"pleine","Gefühl":"sentiment","dachte":"a pensé","vielleicht":"peut-être","genau":"exactement","gemeint":"voulu dire","hatte":"avait","kommt":"vient","nicht nur":"pas seulement","aus":"de","den":"les","Ohren":"oreilles","sondern":"mais","Herzen":"cœur","Auf der Heimfahrt":"sur le chemin du retour","zum ersten Mal":"pour la première fois","bewusst":"consciemment","eine":"une","ganze":"entière","Symphonie":"symphonie","verstand":"a compris","plötzlich":"soudain","anders":"différemment","vorher":"avant","zu":"à/de","besuchen":"visiter","interessierte":"s'intéressait","sich":"se","Beethoven":"Beethoven","verlieren":"perdre","auf":"sur","komponieren":"composer","Er":"il","in":"dans","fragte":"a demandé","wie":"comme","schwer":"difficile","gewesen":"été","schreiben":"écrire","mehr":"plus","hören":"entendre","konnte":"pouvait","nur":"seulement","Auf":"sur","der":"le/la","Heimfahrt":"trajet de retour","zum":"au","ersten":"premiers/première","Mal":"fois"}$t$::jsonb
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wohin fährt Lena am Samstag?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Nach Bonn$t$, true, 1),
    (v_q, $t$Nach Berlin$t$, false, 2),
    (v_q, $t$Nach Wien$t$, false, 3),
    (v_q, $t$Nach Hamburg$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was möchte Lena in Bonn besuchen?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Ein Konzert$t$, false, 1),
    (v_q, $t$Das Beethoven-Haus$t$, true, 2),
    (v_q, $t$Eine Universität$t$, false, 3),
    (v_q, $t$Einen Park$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum entscheidet sich Lena speziell für dieses Ziel?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Weil sie sich für klassische Musik interessiert$t$, true, 1),
    (v_q, $t$Weil ihre Familie dort wohnt$t$, false, 2),
    (v_q, $t$Weil sie ein Referat halten muss$t$, false, 3),
    (v_q, $t$Weil eine Freundin sie eingeladen hat$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was passierte mit Beethovens Gehör?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Es wurde besser$t$, false, 1),
    (v_q, $t$Er verlor es langsam$t$, true, 2),
    (v_q, $t$Es blieb immer gleich$t$, false, 3),
    (v_q, $t$Er hörte nur auf einem Ohr gut$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie reagierte Beethoven auf sein Problem, laut dem Text?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er hörte auf zu komponieren$t$, false, 1),
    (v_q, $t$Er komponierte trotzdem weiter$t$, true, 2),
    (v_q, $t$Er wurde Lehrer$t$, false, 3),
    (v_q, $t$Er verließ Bonn für immer$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was zeigt das Beispiel mit den Vibrationen des Klaviers?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Dass Beethoven ein neues Instrument erfand$t$, false, 1),
    (v_q, $t$Wie Beethoven trotz Taubheit Musik wahrnahm$t$, true, 2),
    (v_q, $t$Dass er nie wirklich taub war$t$, false, 3),
    (v_q, $t$Dass er lieber im Stehen komponierte$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was hört Lena im Innenhof?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Verkehrslärm$t$, false, 1),
    (v_q, $t$Jemanden, der Klavier übt$t$, true, 2),
    (v_q, $t$Vogelgesang$t$, false, 3),
    (v_q, $t$Eine Führung$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was denkt Lena, nachdem sie die Übung gehört hat?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Dass Musik nur aus den Ohren kommt$t$, false, 1),
    (v_q, $t$Dass Musik auch aus dem Herzen kommt$t$, true, 2),
    (v_q, $t$Dass sie selbst Klavier lernen sollte$t$, false, 3),
    (v_q, $t$Dass die Musik zu laut war$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was verbindet den Museumsbesuch mit Lenas Erlebnis auf der Heimfahrt?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie kauft sich ein eigenes Klavier$t$, false, 1),
    (v_q, $t$Sie versteht Musik nun mit anderen Ohren, geprägt von Beethovens Geschichte$t$, true, 2),
    (v_q, $t$Sie vergisst den Besuch schnell wieder$t$, false, 3),
    (v_q, $t$Sie beschließt, nie wieder Musik zu hören$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'taub'?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$sourd$t$, true, 1),
    (v_q, $t$aveugle$t$, false, 2),
    (v_q, $t$müde$t$, false, 3),
    (v_q, $t$traurig$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$'Er spürte die Vibrationen des Klaviers.' Was bedeutet 'spüren'?$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$sentir, percevoir$t$, true, 1),
    (v_q, $t$hören$t$, false, 2),
    (v_q, $t$sehen$t$, false, 3),
    (v_q, $t$vergessen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'die Kunst hielt ihn am Leben' im Kontext des Beethoven-Briefs?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$die Kunst gab ihm einen Grund zum Weiterleben$t$, true, 1),
    (v_q, $t$die Kunst machte ihn krank$t$, false, 2),
    (v_q, $t$die Kunst war ihm egal$t$, false, 3),
    (v_q, $t$die Kunst kostete viel Geld$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$'Lena ___ mit dem Zug nach Bonn gefahren.' (Perfekt von 'fahren')$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$ist$t$, true, 1),
    (v_q, $t$hat$t$, false, 2),
    (v_q, $t$war$t$, false, 3),
    (v_q, $t$wird$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$'Beethoven begann, sein Gehör zu verlieren, ___ er nicht aufhörte zu komponieren.' (Gegensatz)$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$trotzdem$t$, true, 1),
    (v_q, $t$obwohl$t$, false, 2),
    (v_q, $t$weil er$t$, false, 3),
    (v_q, $t$damit$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Nebensatz mit Modalverb im Konjunktiv II: 'Lena fragte sich, wie schwer es gewesen sein ___, Musik zu schreiben, die man nicht mehr hören kann.'$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$musste$t$, true, 1),
    (v_q, $t$muss$t$, false, 2),
    (v_q, $t$wird müssen$t$, false, 3),
    (v_q, $t$gemusst haben$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$Schreiben Sie 5-7 Sätze über einen Künstler oder Musiker, der trotz Schwierigkeiten weitergearbeitet hat.$t$, 1, 'normal', 'production', $t$Ein Künstler, der mich sehr beeindruckt, ist Frida Kahlo, die trotz schwerer gesundheitlicher Probleme viele bekannte Gemälde schuf. Nach einem schweren Unfall musste sie lange Zeit im Bett liegen, konnte aber nicht aufhören zu malen. Sie benutzte ihre eigene Geschichte und ihren Schmerz als Inspiration für ihre Kunst. Viele ihrer Werke zeigen starke Emotionen und persönliche Erfahrungen. Ich finde es beeindruckend, dass sie trotz aller Schwierigkeiten weitergemacht hat. Ihre Geschichte zeigt, dass Kunst manchmal aus dem tiefsten Leid entstehen kann. Heute sind ihre Bilder weltberühmt.$t$);

END $block$;

-- 12. Der Brunnen von Ulm
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary) VALUES (
    'B1',
    $t$Der Brunnen von Ulm$t$,
    $t$Im Sommer machte Familie Berger einen Ausflug nach Ulm. Die Kinder, Mia und Paul, wollten unbedingt das berühmte Ulmer Münster sehen, doch ihr Vater hatte noch ein anderes Ziel: das Einstein-Denkmal in der Nähe des Bahnhofs. Dort steht ein moderner Brunnen mit einer Skulptur, die an Albert Einstein erinnert, der 1879 in Ulm geboren wurde. Auf dem Brunnen steht eine kurze, ironische Inschrift über seine berühmte Formel. Paul fragte, warum ein Physiker einen Brunnen bekommen habe, wenn er doch gar nicht in Ulm aufgewachsen sei. Die Mutter erklärte, dass die Stadt stolz auf ihren berühmten Sohn sei, auch wenn seine Familie schon kurz nach seiner Geburt weggezogen war. Sie erzählte, wie Einstein schon als Kind neugierig gewesen sei und viele Fragen über die Welt gestellt habe, zum Beispiel, warum ein Kompass sich immer in dieselbe Richtung dreht. Genau diese Neugier habe ihn später zu seinen wichtigsten Entdeckungen geführt. Mia meinte, dass Fragen stellen also gar nicht kindisch sei, sondern der erste Schritt zur Wissenschaft. Am Brunnen blieben die vier noch eine Weile stehen und diskutierten, welche Fragen sie selbst schon immer stellen wollten.$t$,
    $t$En été, la famille Berger a fait une excursion à Ulm. Les enfants, Mia et Paul, voulaient absolument voir le célèbre Ulmer Münster, mais leur père avait un autre objectif : le monument à Einstein près de la gare. Là se trouve une fontaine moderne avec une sculpture qui rappelle Albert Einstein, né à Ulm en 1879. Sur la fontaine se trouve une courte inscription ironique à propos de sa célèbre formule. Paul a demandé pourquoi un physicien avait reçu une fontaine, alors qu'il n'avait même pas grandi à Ulm. La mère a expliqué que la ville était fière de son célèbre fils, même si sa famille avait déménagé peu après sa naissance. Elle a raconté qu'enfant déjà, Einstein était curieux et posait beaucoup de questions sur le monde, par exemple pourquoi une boussole tourne toujours dans la même direction. C'est justement cette curiosité qui l'a conduit plus tard à ses découvertes les plus importantes. Mia a estimé que poser des questions n'était donc pas du tout puéril, mais le premier pas vers la science. Ils sont restés encore un moment tous les quatre près de la fontaine et ont discuté des questions qu'ils avaient eux-mêmes toujours voulu poser.$t$,
    $t${"Im":"en","Sommer":"été","machte":"a fait","Familie":"famille","Berger":"Berger","einen":"une","Ausflug":"excursion","nach":"à","Ulm":"Ulm","Die":"les","Kinder":"enfants","Mia":"Mia","und":"et","Paul":"Paul","wollten":"voulaient","unbedingt":"absolument","das":"le","berühmte":"célèbre","Ulmer Münster":"Ulmer Münster","sehen":"voir","doch":"pourtant","ihr":"leur","Vater":"père","hatte":"avait","noch":"encore","ein":"une","anderes":"autre","Ziel":"objectif","Einstein-Denkmal":"monument à Einstein","in der Nähe":"près","des":"de la","Bahnhofs":"gare","Dort":"là","steht":"se trouve","moderner":"moderne","Brunnen":"fontaine","mit":"avec","einer":"une","Skulptur":"sculpture","die":"qui","an":"à","Albert Einstein":"Albert Einstein","erinnert":"rappelle","der":"qui","in":"dans","geboren wurde":"est né","Auf":"sur","dem":"la","eine":"une","kurze":"courte","ironische":"ironique","Inschrift":"inscription","über":"sur","seine":"sa","Formel":"formule","fragte":"a demandé","warum":"pourquoi","Physiker":"physicien","bekommen habe":"avait reçu","wenn":"alors que","er":"il","gar nicht":"pas du tout","aufgewachsen sei":"avait grandi","Mutter":"mère","erklärte":"a expliqué","dass":"que","Stadt":"ville","stolz":"fière","auf":"de","ihren":"son","berühmten":"célèbre","Sohn":"fils","sei":"était","auch wenn":"même si","schon":"déjà","kurz nach":"peu après","seiner":"sa","Geburt":"naissance","weggezogen war":"avait déménagé","Sie":"elle","erzählte":"a raconté","wie":"comment","Einstein":"Einstein","schon als Kind":"enfant déjà","neugierig":"curieux","gewesen sei":"avait été","viele":"beaucoup","Fragen":"questions","die Welt":"le monde","gestellt habe":"avait posé","zum Beispiel":"par exemple","Kompass":"boussole","sich":"se","immer":"toujours","dieselbe":"la même","Richtung":"direction","dreht":"tourne","Genau":"justement","diese":"cette","Neugier":"curiosité","habe":"a","ihn":"le","später":"plus tard","zu":"vers","seinen":"ses","wichtigsten":"plus importantes","Entdeckungen":"découvertes","geführt":"conduit","meinte":"a estimé","Fragen stellen":"poser des questions","also":"donc","kindisch":"puéril","sondern":"mais","der erste":"le premier","Schritt":"pas","zur":"vers la","Wissenschaft":"science","Am":"près de la","blieben":"sont restés","die vier":"les quatre","eine Weile":"un moment","stehen":"restés","diskutierten":"ont discuté","welche":"quelles","sie":"ils","selbst":"eux-mêmes","schon immer":"toujours","stellen wollten":"avaient voulu poser","Ulmer":"d'Ulm","Münster":"cathédrale","Nähe":"proximité","Albert":"Albert","geboren":"né","wurde":"a été","bekommen":"recevoir","gar":"du tout","nicht":"pas","aufgewachsen":"grandi","auch":"aussi","kurz":"peu de temps","weggezogen":"déménagé","war":"était","als":"comme/quand","Kind":"enfant","gewesen":"été","Welt":"monde","gestellt":"posé","zum":"au","Beispiel":"exemple","stellen":"poser","erste":"premier","vier":"quatre","Weile":"moment"}$t$::jsonb
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wohin fährt die Familie Berger?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Nach Ulm$t$, true, 1),
    (v_q, $t$Nach München$t$, false, 2),
    (v_q, $t$Nach Stuttgart$t$, false, 3),
    (v_q, $t$Nach Freiburg$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was möchte der Vater unbedingt sehen?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Das Rathaus$t$, false, 1),
    (v_q, $t$Das Einstein-Denkmal$t$, true, 2),
    (v_q, $t$Den Zoo$t$, false, 3),
    (v_q, $t$Das Museum für Kunst$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was zeigt der Unterschied zwischen dem Wunsch der Kinder und dem des Vaters?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Die Familie hat unterschiedliche Interessen für den Ausflug$t$, true, 1),
    (v_q, $t$Die Kinder wollten gar nicht mitkommen$t$, false, 2),
    (v_q, $t$Der Vater interessiert sich nicht für Geschichte$t$, false, 3),
    (v_q, $t$Die Familie streitet sich ständig$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wo wurde Einstein geboren?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$In Berlin$t$, false, 1),
    (v_q, $t$In Ulm$t$, true, 2),
    (v_q, $t$In Zürich$t$, false, 3),
    (v_q, $t$In München$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum fragt Paul, ob der Brunnen sinnvoll ist?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Weil Einstein nicht in Ulm aufwuchs$t$, true, 1),
    (v_q, $t$Weil er den Brunnen hässlich findet$t$, false, 2),
    (v_q, $t$Weil Einstein Ulm nie besucht hat$t$, false, 3),
    (v_q, $t$Weil er lieber ins Münster wollte$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was sagt die Erklärung der Mutter über die Beziehung zwischen Ulm und Einstein aus?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Ulm ist stolz auf ihn, obwohl die Verbindung kurz war$t$, true, 1),
    (v_q, $t$Ulm hat nichts mit Einstein zu tun$t$, false, 2),
    (v_q, $t$Einstein hasste die Stadt Ulm$t$, false, 3),
    (v_q, $t$Die Familie zog aus finanziellen Gründen weg$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was fragte Einstein als Kind zum Beispiel?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Warum der Himmel blau ist$t$, false, 1),
    (v_q, $t$Warum sich ein Kompass immer in dieselbe Richtung dreht$t$, true, 2),
    (v_q, $t$Warum Vögel fliegen können$t$, false, 3),
    (v_q, $t$Warum das Wasser nass ist$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was denkt Mia über kindliche Neugier am Ende?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Dass sie unwichtig ist$t$, false, 1),
    (v_q, $t$Dass sie der erste Schritt zur Wissenschaft ist$t$, true, 2),
    (v_q, $t$Dass Kinder zu viel fragen$t$, false, 3),
    (v_q, $t$Dass nur Erwachsene wichtige Fragen stellen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Verbindung stellt der Text zwischen Einsteins Kindheit und seinen späteren Entdeckungen her?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Seine frühe Neugier habe zu seinen wichtigsten Entdeckungen geführt$t$, true, 1),
    (v_q, $t$Er wurde erst als Erwachsener neugierig$t$, false, 2),
    (v_q, $t$Seine Entdeckungen hatten nichts mit seiner Kindheit zu tun$t$, false, 3),
    (v_q, $t$Er interessierte sich als Kind nur für Musik$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'der Brunnen'?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$la fontaine$t$, true, 1),
    (v_q, $t$le pont$t$, false, 2),
    (v_q, $t$la tour$t$, false, 3),
    (v_q, $t$l'église$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$'Paul war neugierig.' Was bedeutet 'neugierig'?$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$curieux$t$, true, 1),
    (v_q, $t$ängstlich$t$, false, 2),
    (v_q, $t$müde$t$, false, 3),
    (v_q, $t$traurig$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'ironisch' im Satz über die Inschrift auf dem Brunnen?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$mit doppeltem Sinn, nicht wörtlich gemeint$t$, true, 1),
    (v_q, $t$sehr ernst gemeint$t$, false, 2),
    (v_q, $t$traurig$t$, false, 3),
    (v_q, $t$freundlich$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$'Familie Berger ___ einen Ausflug nach Ulm gemacht.' (Perfekt von 'machen')$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$hat$t$, true, 1),
    (v_q, $t$ist$t$, false, 2),
    (v_q, $t$war$t$, false, 3),
    (v_q, $t$wird$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$'Einstein wurde 1879 in Ulm geboren, ___ seine Familie kurz danach wegzog.' (Gegensatz)$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$obwohl$t$, true, 1),
    (v_q, $t$weil$t$, false, 2),
    (v_q, $t$damit$t$, false, 3),
    (v_q, $t$trotz$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Nebensatz mit Konjunktiv I: 'Die Mutter erklärte, die Stadt ___ stolz auf ihren berühmten Sohn.'$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$sei$t$, true, 1),
    (v_q, $t$ist$t$, false, 2),
    (v_q, $t$war gewesen$t$, false, 3),
    (v_q, $t$wäre gewesen sie$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$Schreiben Sie 5-7 Sätze über eine berühmte Person aus Ihrer Heimatstadt oder Ihrem Land, auf die die Menschen stolz sind.$t$, 1, 'normal', 'production', $t$In meiner Heimatstadt gibt es ein Denkmal für einen berühmten Wissenschaftler, der dort geboren wurde. Obwohl seine Familie schon früh in eine andere Stadt zog, ist die Stadt bis heute stolz auf ihn. Als Kind war er sehr neugierig und stellte viele Fragen über die Natur. Diese Neugier führte ihn später zu wichtigen wissenschaftlichen Entdeckungen. Viele Schulen und Straßen tragen heute seinen Namen. Ich finde es inspirierend, dass einfache Fragen zu großen Entdeckungen führen können. Sein Beispiel zeigt, dass Neugier eine wichtige Eigenschaft ist.$t$);

END $block$;

-- 13. Ein Referat über die Hanse
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary) VALUES (
    'B1',
    $t$Ein Referat über die Hanse$t$,
    $t$Für ihr Geschichtsreferat musste Jana ein Thema aus der deutschen Vergangenheit wählen. Sie entschied sich für die Hanse, einen mittelalterlichen Handelsbund, von dem sie vorher kaum etwas wusste. Bei ihrer Recherche stieß sie immer wieder auf den Namen Lübeck, das oft als Königin der Hanse bezeichnet wird. Im 13. Jahrhundert schlossen sich Kaufleute aus norddeutschen Städten zusammen, um gemeinsam sicherer und erfolgreicher Handel zu treiben. Sie transportierten Waren wie Salz, Fisch, Holz und Tuch über die Ostsee und die Nordsee. Jana fand heraus, dass Lübeck damals so wichtig war, dass die Stadt fast wie ein eigener Staat funktionierte, mit eigenen Gesetzen und eigener Flotte. Besonders interessant fand sie, dass die Hanse kein Staat mit einer festen Regierung war, sondern eher ein loses Netzwerk aus fast 200 Städten, die sich bei Bedarf trafen und Entscheidungen gemeinsam fällten. Als Jana Fotos von Lübecks Altstadt sah, mit den roten Backsteinhäusern und dem berühmten Holstentor, wollte sie die Stadt unbedingt einmal besuchen. Sie schrieb in ihr Referat, dass die Hanse gezeigt habe, wie Städte durch Zusammenarbeit stärker werden können als allein. Ihre Lehrerin lobte am Ende besonders diesen Gedanken.$t$,
    $t$Pour son exposé d'histoire, Jana devait choisir un sujet du passé allemand. Elle a choisi la Hanse, une ligue commerciale médiévale, dont elle ne savait presque rien auparavant. Au cours de ses recherches, elle est tombée sans cesse sur le nom de Lübeck, souvent qualifiée de reine de la Hanse. Au XIIIe siècle, des marchands des villes du nord de l'Allemagne se sont regroupés pour faire du commerce ensemble, de manière plus sûre et plus fructueuse. Ils transportaient des marchandises comme le sel, le poisson, le bois et le tissu à travers la mer Baltique et la mer du Nord. Jana a découvert que Lübeck était à l'époque si importante que la ville fonctionnait presque comme un État à part entière, avec ses propres lois et sa propre flotte. Elle a trouvé particulièrement intéressant que la Hanse n'était pas un État avec un gouvernement fixe, mais plutôt un réseau lâche de près de 200 villes, qui se réunissaient en cas de besoin et prenaient des décisions ensemble. Quand Jana a vu des photos de la vieille ville de Lübeck, avec ses maisons en briques rouges et la célèbre porte de Holstentor, elle a absolument voulu visiter la ville un jour. Elle a écrit dans son exposé que la Hanse avait montré comment des villes pouvaient devenir plus fortes par la coopération que seules. Son enseignante a particulièrement loué cette idée à la fin.$t$,
    $t${"Für":"pour","ihr":"son","Geschichtsreferat":"exposé d'histoire","musste":"devait","Jana":"Jana","ein":"un","Thema":"sujet","aus":"de","der":"le","deutschen":"allemand","Vergangenheit":"passé","wählen":"choisir","Sie":"elle","entschied sich":"a choisi","für":"pour","die":"qui","Hanse":"Hanse","einen":"une","mittelalterlichen":"médiévale","Handelsbund":"ligue commerciale","von dem":"dont","vorher":"auparavant","kaum":"presque rien","etwas":"quelque chose","wusste":"savait","Bei":"lors de","ihrer":"ses","Recherche":"recherches","stieß":"est tombée","immer wieder":"sans cesse","auf":"sur","den":"le","Namen":"nom","Lübeck":"Lübeck","das":"qui","oft":"souvent","als":"que","Königin":"reine","bezeichnet wird":"est qualifiée","Im":"au","Jahrhundert":"siècle","schlossen sich":"se sont regroupés","Kaufleute":"marchands","norddeutschen":"du nord de l'Allemagne","Städten":"villes","zusammen":"ensemble","um":"pour","gemeinsam":"ensemble","sicherer":"plus sûr","erfolgreicher":"plus fructueux","Handel":"commerce","zu treiben":"faire","transportierten":"transportaient","Waren":"marchandises","wie":"comment","Salz":"sel","Fisch":"poisson","Holz":"bois","Tuch":"tissu","über":"à travers","Ostsee":"mer Baltique","Nordsee":"mer du Nord","fand heraus":"a découvert","dass":"que","damals":"à l'époque","so wichtig":"si importante","war":"était","fast":"près de","eigener":"propre","Staat":"État","funktionierte":"fonctionnait","mit":"avec","eigenen":"propres","Gesetzen":"lois","Flotte":"flotte","Besonders":"particulièrement","interessant":"intéressant","fand sie":"a trouvé","kein":"pas un","einer":"un","festen":"fixe","Regierung":"gouvernement","eher":"plutôt","loses":"lâche","Netzwerk":"réseau","sich":"se","bei Bedarf":"en cas de besoin","trafen":"réunissaient","Entscheidungen":"décisions","fällten":"prenaient","Als":"quand","Fotos":"photos","von":"de","Lübecks":"de Lübeck","Altstadt":"vieille ville","sah":"a vu","roten":"rouges","Backsteinhäusern":"maisons en briques","dem":"la","berühmten":"célèbre","Holstentor":"Holstentor","wollte":"a voulu","unbedingt":"absolument","einmal":"un jour","besuchen":"visiter","schrieb":"a écrit","in":"dans","Referat":"exposé","gezeigt habe":"avait montré","Städte":"villes","durch":"par","Zusammenarbeit":"coopération","stärker":"plus fortes","werden können":"pouvaient devenir","allein":"seules","Ihre":"son","Lehrerin":"enseignante","lobte":"a loué","am Ende":"à la fin","besonders":"particulièrement","diesen":"cette","Gedanken":"idée","sie":"elle/ils","immer":"toujours","wieder":"de nouveau","bezeichnet":"appelée","wird":"est","schlossen":"se sont regroupés","und":"et","zu":"à/de","treiben":"faire","heraus":"dehors","so":"si","wichtig":"important","Stadt":"ville","sondern":"mais","bei":"lors de","Bedarf":"besoin","gezeigt":"montré","habe":"ait","werden":"devenir/être","können":"pouvoir","am":"le","Ende":"fin","entschied":"a choisi","fand":"a trouvé"}$t$::jsonb
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welches Thema wählt Jana für ihr Referat?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Die Hanse$t$, true, 1),
    (v_q, $t$Den Zweiten Weltkrieg$t$, false, 2),
    (v_q, $t$Die Berliner Mauer$t$, false, 3),
    (v_q, $t$Die Reformation$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was war die Hanse laut Text?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Eine Armee$t$, false, 1),
    (v_q, $t$Ein mittelalterlicher Handelsbund$t$, true, 2),
    (v_q, $t$Eine Universität$t$, false, 3),
    (v_q, $t$Eine Kirche$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum wählt Jana gerade dieses Thema für ihr Referat?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Weil sie vorher kaum etwas darüber wusste und es sie neugierig machte$t$, true, 1),
    (v_q, $t$Weil ihre Lehrerin es ihr vorgeschrieben hat$t$, false, 2),
    (v_q, $t$Weil sie schon viel darüber wusste$t$, false, 3),
    (v_q, $t$Weil ihre Familie aus Lübeck stammt$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Stadt wird oft Königin der Hanse genannt?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Hamburg$t$, false, 1),
    (v_q, $t$Bremen$t$, false, 2),
    (v_q, $t$Lübeck$t$, true, 3),
    (v_q, $t$Rostock$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Waren transportierten die Hansekaufleute?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Öl und Gold$t$, false, 1),
    (v_q, $t$Salz, Fisch, Holz und Tuch$t$, true, 2),
    (v_q, $t$Kaffee und Tee$t$, false, 3),
    (v_q, $t$Autos und Maschinen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was zeigt die Beschreibung von Lübecks eigenen Gesetzen und eigener Flotte?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Wie mächtig und unabhängig die Stadt damals war$t$, true, 1),
    (v_q, $t$Dass Lübeck arm und schwach war$t$, false, 2),
    (v_q, $t$Dass die Stadt keine Handelsbeziehungen hatte$t$, false, 3),
    (v_q, $t$Dass Lübeck von einem König regiert wurde$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie viele Städte gehörten laut Text ungefähr zur Hanse?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Etwa 20$t$, false, 1),
    (v_q, $t$Etwa 50$t$, false, 2),
    (v_q, $t$Etwa 200$t$, true, 3),
    (v_q, $t$Etwa 500$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was schreibt Jana als zentralen Gedanken in ihr Referat?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Dass Handel gefährlich war$t$, false, 1),
    (v_q, $t$Dass Städte durch Zusammenarbeit stärker werden können$t$, true, 2),
    (v_q, $t$Dass die Hanse nur Lübeck nützte$t$, false, 3),
    (v_q, $t$Dass die Hanse ein Fehler war$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie hängt die Struktur der Hanse als loses Netzwerk mit Janas Schlussfolgerung zusammen?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Gerade weil die Städte ohne feste Regierung zusammenarbeiteten, wurden sie gemeinsam stark$t$, true, 1),
    (v_q, $t$Die Hanse war stark, weil ein einzelner Herrscher alles kontrollierte$t$, false, 2),
    (v_q, $t$Die Hanse scheiterte wegen fehlender Zusammenarbeit$t$, false, 3),
    (v_q, $t$Die Städte kämpften ständig gegeneinander$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'der Handel'?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$le commerce$t$, true, 1),
    (v_q, $t$la guerre$t$, false, 2),
    (v_q, $t$la loi$t$, false, 3),
    (v_q, $t$l'art$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$'Kaufleute schlossen sich zusammen.' Was bedeutet 'der Kaufmann/die Kaufleute'?$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$marchand(s), commerçant(s)$t$, true, 1),
    (v_q, $t$Bauer(n)$t$, false, 2),
    (v_q, $t$Soldat(en)$t$, false, 3),
    (v_q, $t$Lehrer$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'ein loses Netzwerk' im Kontext der Hanse?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$eine Organisation ohne feste, strenge Struktur$t$, true, 1),
    (v_q, $t$eine sehr strenge Regierung$t$, false, 2),
    (v_q, $t$ein einzelnes Unternehmen$t$, false, 3),
    (v_q, $t$eine Armee$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$'Jana ___ sich für die Hanse entschieden.' (Perfekt von 'entscheiden')$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$hat$t$, true, 1),
    (v_q, $t$ist$t$, false, 2),
    (v_q, $t$war$t$, false, 3),
    (v_q, $t$wird$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$'Kaufleute schlossen sich zusammen, ___ sicherer und erfolgreicher Handel zu treiben.'$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$um$t$, true, 1),
    (v_q, $t$damit$t$, false, 2),
    (v_q, $t$weil$t$, false, 3),
    (v_q, $t$obwohl$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Nebensatz mit Konjunktiv I: 'Jana schrieb, die Hanse ___ gezeigt, wie Städte durch Zusammenarbeit stärker werden können.'$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$habe$t$, true, 1),
    (v_q, $t$hat$t$, false, 2),
    (v_q, $t$hatte$t$, false, 3),
    (v_q, $t$hätte gehabt$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$Schreiben Sie 5-7 Sätze über ein Referat, das Sie einmal vorbereitet haben, oder über ein historisches Thema, das Sie interessiert.$t$, 1, 'normal', 'production', $t$Für ein Schulreferat habe ich einmal über die Seidenstraße recherchiert, einen alten Handelsweg zwischen Asien und Europa. Zuerst wusste ich nur wenig über das Thema, aber während der Recherche wurde es immer interessanter. Ich fand heraus, dass Händler nicht nur Waren, sondern auch Ideen und Wissen über diesen Weg austauschten. Besonders faszinierend fand ich, wie verschiedene Kulturen dadurch miteinander in Kontakt kamen. Ich sammelte viele Bilder und Informationen für meine Präsentation. Meine Lehrerin lobte am Ende, dass ich die Bedeutung des kulturellen Austauschs gut erklärt hatte. Seitdem interessiere ich mich mehr für Geschichte.$t$);

END $block$;

-- 14. Der Fels und das Lied
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary) VALUES (
    'B1',
    $t$Der Fels und das Lied$t$,
    $t$An einem warmen Nachmittag machte Tobias mit seinen Eltern eine Schifffahrt auf dem Rhein. Als das Boot sich einem hohen, steilen Felsen näherte, nahm die Reiseführerin das Mikrofon und begann zu erzählen. Dies sei die Loreley, sagte sie, ein Felsen, an dem der Rhein besonders eng und gefährlich für Schiffer gewesen sei. Früher entstand hier eine Legende: Eine wunderschöne Frau soll auf dem Felsen gesessen und mit ihrem Gesang die Schiffer so sehr abgelenkt haben, dass ihre Boote gegen die Felsen fuhren und sanken. Der Dichter Heinrich Heine machte diese Geschichte im 19. Jahrhundert mit einem berühmten Gedicht bekannt, das die Reiseführerin sogar teilweise vorlas. Tobias schaute hinauf zum Felsen und versuchte sich vorzustellen, wie ein Schiffer sich damals gefühlt haben musste, wenn er in der Dämmerung eine geheimnisvolle Stimme hörte. Seine Mutter meinte, dass die Legende vielleicht einfach erklären sollte, warum diese Stelle des Flusses so gefährlich war, bevor man die Strömungen genau kannte. Tobias fand die Geschichte trotzdem faszinierend, auch wenn er wusste, dass sie erfunden war. Als das Boot den Felsen langsam hinter sich ließ, drehte er sich noch einmal um und winkte fast wie zum Abschied von der Loreley.$t$,
    $t$Par un après-midi chaud, Tobias a fait une croisière sur le Rhin avec ses parents. Quand le bateau s'est approché d'un rocher haut et abrupt, la guide a pris le micro et a commencé à raconter. C'était ici la Loreley, a-t-elle dit, un rocher où le Rhin était particulièrement étroit et dangereux pour les bateliers. Autrefois est née ici une légende : une femme d'une grande beauté se serait assise sur le rocher et aurait, par son chant, tellement distrait les bateliers que leurs bateaux se sont écrasés contre les rochers et ont coulé. Le poète Heinrich Heine a rendu cette histoire célèbre au XIXe siècle avec un poème fameux, que la guide a même lu en partie. Tobias a regardé vers le rocher et a essayé d'imaginer ce qu'un batelier avait dû ressentir à l'époque, en entendant une voix mystérieuse au crépuscule. Sa mère a dit que la légende voulait peut-être simplement expliquer pourquoi cet endroit de la rivière était si dangereux, avant que l'on connaisse précisément les courants. Tobias a quand même trouvé l'histoire fascinante, même s'il savait qu'elle était inventée. Quand le bateau a lentement laissé le rocher derrière lui, il s'est retourné une fois de plus et a fait signe presque comme pour dire au revoir à la Loreley.$t$,
    $t${"An":"par","einem":"un","warmen":"chaud","Nachmittag":"après-midi","machte":"a rendu","Tobias":"Tobias","mit":"avec","seinen":"ses","Eltern":"parents","eine":"une","Schifffahrt":"croisière","auf":"sur","dem":"le","Rhein":"Rhin","Als":"quand","das":"que","Boot":"bateau","sich":"se","hohen":"haut","steilen":"abrupt","Felsen":"rochers","näherte":"approchait","nahm":"a pris","die":"les","Reiseführerin":"guide","Mikrofon":"micro","und":"et","begann":"a commencé","zu erzählen":"raconter","Dies":"ceci","sei":"était","Loreley":"Loreley","sagte":"a dit","sie":"elle","ein":"un","an dem":"où","besonders":"particulièrement","eng":"étroit","gefährlich":"dangereux","für":"pour","Schiffer":"batelier","gewesen sei":"avait été","Früher":"autrefois","entstand":"est née","hier":"ici","Legende":"légende","Eine":"une","wunderschöne":"d'une grande beauté","Frau":"femme","soll":"aurait","gesessen":"assise","ihrem":"son","Gesang":"chant","so sehr":"tellement","abgelenkt haben":"distrait","dass":"que","ihre":"leurs","Boote":"bateaux","gegen":"contre","fuhren":"se sont écrasés","sanken":"ont coulé","Der":"le","Dichter":"poète","Heinrich Heine":"Heinrich Heine","diese":"cet","Geschichte":"histoire","im":"au","Jahrhundert":"siècle","berühmten":"fameux","Gedicht":"poème","bekannt":"célèbre","sogar":"même","teilweise":"en partie","vorlas":"a lu","schaute":"a regardé","hinauf":"vers","zum":"le","versuchte":"a essayé","sich vorzustellen":"imaginer","wie":"comme","damals":"à l'époque","gefühlt haben musste":"avait dû ressentir","wenn":"en","in":"dans","der":"le","Dämmerung":"crépuscule","geheimnisvolle":"mystérieuse","Stimme":"voix","hörte":"entendait","Seine":"sa","Mutter":"mère","meinte":"a dit","vielleicht":"peut-être","einfach":"simplement","erklären sollte":"voulait expliquer","warum":"pourquoi","Stelle":"endroit","des":"de la","Flusses":"rivière","so":"si","war":"était","bevor":"avant que","man":"on","Strömungen":"courants","genau":"précisément","kannte":"connaisse","fand":"a trouvé","trotzdem":"quand même","faszinierend":"fascinante","auch wenn":"même si","wusste":"savait","erfunden":"inventée","langsam":"lentement","hinter sich ließ":"a laissé derrière lui","drehte sich":"s'est retourné","noch einmal":"une fois de plus","winkte":"a fait signe","fast":"presque","zum Abschied":"pour dire au revoir","von":"à","zu":"à/de","erzählen":"raconter","an":"à","gewesen":"été","sehr":"très","abgelenkt":"distrait","haben":"avoir","Heinrich":"Heinrich","Heine":"Heine","vorzustellen":"imaginer","gefühlt":"senti","musste":"devait","er":"il","erklären":"expliquer","sollte":"devait","auch":"aussi","den":"le","hinter":"derrière","ließ":"a laissé","drehte":"s'est retourné","noch":"encore","einmal":"une fois","um":"pour/autour","Abschied":"adieu"}$t$::jsonb
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Auf welchem Fluss macht Tobias die Schifffahrt?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Auf der Donau$t$, false, 1),
    (v_q, $t$Auf dem Rhein$t$, true, 2),
    (v_q, $t$Auf der Elbe$t$, false, 3),
    (v_q, $t$Auf dem Main$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wer erzählt die Legende der Loreley?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Tobias' Vater$t$, false, 1),
    (v_q, $t$Die Reiseführerin$t$, true, 2),
    (v_q, $t$Ein Fischer$t$, false, 3),
    (v_q, $t$Tobias' Mutter$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was zeigt der Moment, in dem die Reiseführerin das Mikrofon nimmt?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Dass die Fahrt an einer besonderen, bekannten Stelle ankommt$t$, true, 1),
    (v_q, $t$Dass das Boot ein technisches Problem hat$t$, false, 2),
    (v_q, $t$Dass die Fahrt beendet ist$t$, false, 3),
    (v_q, $t$Dass Tobias etwas gefragt hat$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was soll die Frau in der Legende getan haben?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Geschwommen sein$t$, false, 1),
    (v_q, $t$Mit ihrem Gesang Schiffer abgelenkt haben$t$, true, 2),
    (v_q, $t$Ein Boot gebaut haben$t$, false, 3),
    (v_q, $t$Auf dem Fluss getanzt haben$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wer machte die Geschichte der Loreley mit einem Gedicht berühmt?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Goethe$t$, false, 1),
    (v_q, $t$Heinrich Heine$t$, true, 2),
    (v_q, $t$Schiller$t$, false, 3),
    (v_q, $t$Einstein$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Rolle spielt Heines Gedicht laut Text für die Legende?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Es verbreitete die Geschichte im 19. Jahrhundert weiter und machte sie berühmt$t$, true, 1),
    (v_q, $t$Es erfand die Legende komplett neu$t$, false, 2),
    (v_q, $t$Es widerlegte die alte Geschichte$t$, false, 3),
    (v_q, $t$Es wurde erst nach der Schifffahrt geschrieben$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was sagt die Mutter über die mögliche Erklärung der Legende?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Dass sie völlig wahr ist$t$, false, 1),
    (v_q, $t$Dass sie vielleicht die Gefahr der Stelle erklären sollte$t$, true, 2),
    (v_q, $t$Dass sie aus Frankreich stammt$t$, false, 3),
    (v_q, $t$Dass sie erst heute erfunden wurde$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie reagiert Tobias am Ende auf die Legende?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er findet sie langweilig$t$, false, 1),
    (v_q, $t$Er ist fasziniert, obwohl er weiß, dass sie erfunden ist$t$, true, 2),
    (v_q, $t$Er glaubt, die Frau wirklich gesehen zu haben$t$, false, 3),
    (v_q, $t$Er will sofort von Bord gehen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was verbindet die Erklärung der Mutter mit Tobias' abschließender Geste des Winkens?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Trotz rationaler Erklärung bleibt die emotionale Wirkung der Legende bestehen$t$, true, 1),
    (v_q, $t$Tobias glaubt seiner Mutter nicht und ignoriert die Legende$t$, false, 2),
    (v_q, $t$Die Mutter überzeugt Tobias, dass die Legende falsch und bedeutungslos ist$t$, false, 3),
    (v_q, $t$Tobias winkt aus Angst vor dem Felsen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'der Felsen'?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$le rocher$t$, true, 1),
    (v_q, $t$le fleuve$t$, false, 2),
    (v_q, $t$le bateau$t$, false, 3),
    (v_q, $t$la forêt$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$'Die Schiffer wurden abgelenkt.' Was bedeutet 'ablenken'?$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$distraire, détourner l'attention$t$, true, 1),
    (v_q, $t$beruhigen$t$, false, 2),
    (v_q, $t$informieren$t$, false, 3),
    (v_q, $t$warnen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'die Dämmerung' im Satz über die geheimnisvolle Stimme?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$die Zeit zwischen Tag und Nacht, crépuscule$t$, true, 1),
    (v_q, $t$der helle Mittag$t$, false, 2),
    (v_q, $t$die tiefe Nacht$t$, false, 3),
    (v_q, $t$der frühe Morgen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$'Tobias ___ mit seinen Eltern eine Schifffahrt gemacht.' (Perfekt von 'machen')$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$hat$t$, true, 1),
    (v_q, $t$ist$t$, false, 2),
    (v_q, $t$war$t$, false, 3),
    (v_q, $t$wird$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$'Der Dichter Heinrich Heine machte diese Geschichte bekannt, ___ er ein berühmtes Gedicht schrieb.'$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$indem$t$, true, 1),
    (v_q, $t$obwohl$t$, false, 2),
    (v_q, $t$damit$t$, false, 3),
    (v_q, $t$trotzdem$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Konjunktiv II in der Legende: 'Eine wunderschöne Frau ___ auf dem Felsen gesessen und die Schiffer abgelenkt haben.'$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$soll$t$, true, 1),
    (v_q, $t$sollte$t$, false, 2),
    (v_q, $t$solle sie$t$, false, 3),
    (v_q, $t$gesollt haben$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$Schreiben Sie 5-7 Sätze über eine Legende oder Sage aus Ihrem Land. Was wird darin erzählt?$t$, 1, 'normal', 'production', $t$In meinem Land gibt es eine bekannte Legende über einen See, in dem angeblich ein Ungeheuer lebt. Früher erklärten sich die Menschen mit dieser Geschichte, warum manche Boote auf dem See verschwanden. Heute weiß man, dass starke Strömungen die eigentliche Ursache waren. Trotzdem erzählen die Menschen die Legende noch heute gerne, besonders Touristen. Als Kind fand ich die Geschichte sehr spannend und ein bisschen gruselig. Ich glaube, solche Legenden helfen, gefährliche Orte im Gedächtnis der Menschen zu behalten. Auch wenn sie erfunden sind, faszinieren sie mich immer noch.$t$);

END $block$;

-- 15. Der Käfer meines Großvaters
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary) VALUES (
    'B1',
    $t$Der Käfer meines Großvaters$t$,
    $t$An einem regnerischen Nachmittag saß die kleine Emma bei ihrem Großvater, und er erzählte ihr von seinem ersten Auto. Als er jung war, in den 1950er-Jahren, war Deutschland noch dabei, sich nach dem Krieg wieder aufzubauen. Autos waren selten und teuer, und viele Familien besaßen gar keins. Eines Tages sah der Großvater auf der Straße einen kleinen, runden Wagen mit einem typischen Motorengeräusch: einen Volkswagen Käfer. Er blieb stehen und schaute ihn lange an, fasziniert von seiner einfachen, freundlichen Form. Der Käfer, erklärte er Emma, wurde zu einem Symbol für den wirtschaftlichen Aufschwung jener Zeit, den man später das Wirtschaftswunder nannte. Fabriken wie die in Wolfsburg produzierten immer mehr Autos, und langsam konnten sich auch normale Familien ein eigenes Fahrzeug leisten. Als der Großvater endlich mit zwanzig Jahren seinen eigenen Käfer kaufte, fühlte er sich, als hätte er die ganze Welt gewonnen. Er erinnerte sich noch genau an den Geruch des neuen Innenraums und an die erste lange Fahrt mit seinen Freunden ans Meer. Emma fragte, ob er den Käfer noch besitze. Der Großvater lachte und sagte, das Auto sei längst verkauft, aber die Erinnerung daran fahre er noch jeden Tag in Gedanken.$t$,
    $t$Par un après-midi pluvieux, la petite Emma était assise auprès de son grand-père, et il lui a raconté l'histoire de sa première voiture. Quand il était jeune, dans les années 1950, l'Allemagne était encore en train de se reconstruire après la guerre. Les voitures étaient rares et chères, et beaucoup de familles n'en possédaient aucune. Un jour, le grand-père a vu dans la rue une petite voiture ronde avec un bruit de moteur caractéristique : une Coccinelle Volkswagen. Il s'est arrêté et l'a longtemps regardée, fasciné par sa forme simple et sympathique. La Coccinelle, a-t-il expliqué à Emma, est devenue le symbole de l'essor économique de cette époque, que l'on a appelé plus tard le miracle économique. Des usines comme celle de Wolfsbourg produisaient toujours plus de voitures, et peu à peu, même des familles ordinaires pouvaient s'offrir leur propre véhicule. Quand le grand-père a enfin acheté sa propre Coccinelle à l'âge de vingt ans, il s'est senti comme s'il avait gagné le monde entier. Il se souvient encore exactement de l'odeur de l'habitacle neuf et du premier long trajet avec ses amis jusqu'à la mer. Emma a demandé s'il possédait encore la Coccinelle. Le grand-père a ri et a dit que la voiture était vendue depuis longtemps, mais qu'il conduisait encore le souvenir tous les jours, en pensée.$t$,
    $t${"An":"par","einem":"un","regnerischen":"pluvieux","Nachmittag":"après-midi","saß":"était assise","die":"celle","kleine":"petite","Emma":"Emma","bei":"auprès de","ihrem":"son","Großvater":"grand-père","und":"et","er":"il","erzählte":"a raconté","ihr":"lui","von":"par","seinem":"sa","ersten":"première","Auto":"voiture","Als":"quand","jung":"jeune","war":"était","in":"de","den":"la","Deutschland":"Allemagne","noch dabei":"encore en train de","sich":"se","nach":"après","dem":"la","Krieg":"guerre","wieder aufzubauen":"reconstruire","Autos":"voitures","waren":"étaient","selten":"rares","teuer":"chères","viele":"beaucoup","Familien":"familles","besaßen":"possédaient","gar keins":"aucune","Eines Tages":"un jour","sah":"a vu","der":"le","auf":"dans","Straße":"rue","einen":"une","kleinen":"petite","runden":"ronde","Wagen":"voiture","mit":"avec","typischen":"caractéristique","Motorengeräusch":"bruit de moteur","Volkswagen Käfer":"Coccinelle Volkswagen","blieb stehen":"s'est arrêté","schaute":"a regardé","lange":"long","an":"de","fasziniert":"fasciné","seiner":"sa","einfachen":"simple","freundlichen":"sympathique","Form":"forme","Der Käfer":"la Coccinelle","erklärte":"a expliqué","wurde":"est devenue","zu":"le","Symbol":"symbole","für":"de","wirtschaftlichen":"économique","Aufschwung":"essor","jener":"de cette","Zeit":"époque","man":"on","später":"plus tard","das":"que la","Wirtschaftswunder":"miracle économique","nannte":"a appelé","Fabriken":"usines","wie":"comme","Wolfsburg":"Wolfsbourg","produzierten":"produisaient","immer mehr":"toujours plus","langsam":"peu à peu","konnten sich":"pouvaient s'offrir","auch":"même","normale":"ordinaires","ein":"un","eigenes":"propre","Fahrzeug":"véhicule","leisten":"s'offrir","endlich":"enfin","zwanzig":"vingt","Jahren":"ans","seinen":"ses","eigenen":"propre","kaufte":"a acheté","fühlte sich":"s'est senti","als hätte":"comme s'il avait","die ganze":"le monde","Welt":"monde","gewonnen":"gagné","erinnerte sich":"se souvient","noch genau":"encore exactement","Geruch":"odeur","des":"de l'","neuen":"neuf","Innenraums":"habitacle","erste":"premier","Fahrt":"trajet","Freunden":"amis","ans":"jusqu'à","Meer":"mer","fragte":"a demandé","ob":"s'il","noch besitze":"possédait encore","lachte":"a ri","sagte":"a dit","sei":"était","längst":"depuis longtemps","verkauft":"vendue","aber":"mais","Erinnerung":"souvenir","daran":"à cela","fahre":"conduisait","noch":"encore","jeden Tag":"tous les jours","in Gedanken":"en pensée","dabei":"ce faisant","wieder":"de nouveau","aufzubauen":"reconstruire","gar":"du tout","keins":"aucune","Eines":"un","Tages":"de la journée","Volkswagen":"Volkswagen","Käfer":"Coccinelle","Er":"il","blieb":"est resté","stehen":"se tenir","ihn":"le","Der":"le","immer":"toujours","mehr":"plus","konnten":"pouvaient","fühlte":"s'est senti","als":"comme/quand","hätte":"aurait","ganze":"toute","erinnerte":"s'est souvenu","genau":"exactement","besitze":"possède","jeden":"chaque","Tag":"jour","Gedanken":"pensées","er-Jahren":"années (1950er-Jahren = années 1950)"}$t$::jsonb
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wem erzählt der Großvater seine Geschichte?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Seiner Frau$t$, false, 1),
    (v_q, $t$Emma$t$, true, 2),
    (v_q, $t$Einem Nachbarn$t$, false, 3),
    (v_q, $t$Seinem Bruder$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$In welchem Jahrzehnt spielt die Geschichte des Großvaters?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$In den 1930er-Jahren$t$, false, 1),
    (v_q, $t$In den 1950er-Jahren$t$, true, 2),
    (v_q, $t$In den 1980er-Jahren$t$, false, 3),
    (v_q, $t$In den 2000er-Jahren$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was erklärt, warum Autos zu dieser Zeit selten waren?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Deutschland baute sich gerade nach dem Krieg wieder auf$t$, true, 1),
    (v_q, $t$Es gab ein gesetzliches Verbot für Autos$t$, false, 2),
    (v_q, $t$Die Menschen bevorzugten Fahrräder$t$, false, 3),
    (v_q, $t$Es gab noch keine Straßen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welches Auto sieht der Großvater zum ersten Mal auf der Straße?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Einen VW Käfer$t$, true, 1),
    (v_q, $t$Einen Mercedes$t$, false, 2),
    (v_q, $t$Einen Trabant$t$, false, 3),
    (v_q, $t$Ein Fahrrad mit Motor$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wofür wurde der Käfer laut dem Großvater zu einem Symbol?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Für den wirtschaftlichen Aufschwung$t$, true, 1),
    (v_q, $t$Für den Untergang der Industrie$t$, false, 2),
    (v_q, $t$Für den Sport$t$, false, 3),
    (v_q, $t$Für die Landwirtschaft$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was zeigt die Erwähnung der Fabrik in Wolfsburg im Zusammenhang mit dem Wirtschaftswunder?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Wie die steigende Produktion normalen Familien den Zugang zu Autos ermöglichte$t$, true, 1),
    (v_q, $t$Dass nur reiche Familien Autos kaufen konnten$t$, false, 2),
    (v_q, $t$Dass Wolfsburg keine Rolle in der Geschichte spielte$t$, false, 3),
    (v_q, $t$Dass die Produktion nach dem Krieg sofort stoppte$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Besitzt der Großvater den Käfer heute noch?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Ja, er fährt ihn noch$t$, false, 1),
    (v_q, $t$Nein, er wurde verkauft$t$, true, 2),
    (v_q, $t$Er wurde gestohlen$t$, false, 3),
    (v_q, $t$Er steht in der Garage$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was meint der Großvater mit dem Satz über die Erinnerung, die er 'jeden Tag in Gedanken' fährt?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Dass er das Auto vermisst, aber die Erinnerung lebendig bleibt$t$, true, 1),
    (v_q, $t$Dass er das Auto zurückkaufen will$t$, false, 2),
    (v_q, $t$Dass er die Geschichte erfunden hat$t$, false, 3),
    (v_q, $t$Dass er nie wirklich einen Käfer besaß$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie verbindet der Text den persönlichen Kauf des Käfers mit der größeren Geschichte Deutschlands?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Der private Moment des Kaufs spiegelt den kollektiven wirtschaftlichen Wandel der Nachkriegszeit$t$, true, 1),
    (v_q, $t$Der Kauf des Autos hat nichts mit der deutschen Geschichte zu tun$t$, false, 2),
    (v_q, $t$Der Großvater kaufte das Auto vor dem Wirtschaftswunder$t$, false, 3),
    (v_q, $t$Die Geschichte zeigt, dass Autos in dieser Zeit unwichtig waren$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'der Krieg'?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$la guerre$t$, true, 1),
    (v_q, $t$la paix$t$, false, 2),
    (v_q, $t$la voiture$t$, false, 3),
    (v_q, $t$le voyage$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$'Der Käfer wurde zu einem Symbol.' Was bedeutet 'das Symbol' hier?$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$symbole, représentation d'une idée$t$, true, 1),
    (v_q, $t$eine Maschine$t$, false, 2),
    (v_q, $t$ein Gesetz$t$, false, 3),
    (v_q, $t$ein Fehler$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'das Wirtschaftswunder' im historischen Kontext des Textes?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$der schnelle wirtschaftliche Aufschwung in Westdeutschland nach dem Krieg$t$, true, 1),
    (v_q, $t$eine Naturkatastrophe$t$, false, 2),
    (v_q, $t$ein neues Gesetz$t$, false, 3),
    (v_q, $t$ein Krieg$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$'Der Großvater ___ seinen ersten Käfer gekauft.' (Perfekt von 'kaufen')$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$hat$t$, true, 1),
    (v_q, $t$ist$t$, false, 2),
    (v_q, $t$war$t$, false, 3),
    (v_q, $t$wird$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$'Als er jung war, ___ Deutschland noch dabei, sich wieder aufzubauen.' (Präteritum von 'sein')$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$war$t$, true, 1),
    (v_q, $t$ist$t$, false, 2),
    (v_q, $t$wäre$t$, false, 3),
    (v_q, $t$sei$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Nebensatz mit Plusquamperfekt: 'Er fühlte sich, als ___ er die ganze Welt gewonnen.'$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$hätte$t$, true, 1),
    (v_q, $t$hat$t$, false, 2),
    (v_q, $t$habe$t$, false, 3),
    (v_q, $t$hatte er$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$Schreiben Sie 5-7 Sätze über einen Gegenstand aus der Vergangenheit Ihrer Familie (z.B. ein Auto, ein Möbelstück), der eine besondere Geschichte hat.$t$, 1, 'normal', 'production', $t$Meine Großmutter besaß früher eine alte Nähmaschine, die sie sich mit ihrem ersten Gehalt gekauft hatte. Damals war Geld knapp, und eine eigene Nähmaschine war etwas Besonderes für sie. Sie erzählte mir oft, wie stolz sie war, als sie das Gerät zum ersten Mal benutzte. Mit der Maschine nähte sie Kleidung für die ganze Familie, besonders in schwierigen Zeiten. Auch wenn sie die Maschine nicht mehr besitzt, erinnert sie sich noch genau an den Geruch des Öls und das Geräusch der Nadel. Für mich zeigt diese Geschichte, wie ein einfacher Gegenstand viele Erinnerungen tragen kann.$t$);

END $block$;

-- 16. Der Student und die Wartburg
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary) VALUES (
    'B1',
    $t$Der Student und die Wartburg$t$,
    $t$Jonas studiert Geschichte in Jena und schreibt eine Arbeit über die Reformation. Für sein Projekt fährt er nach Eisenach und besucht die Wartburg, eine alte Burg auf einem Berg. Dort hat sich Martin Luther im Jahr 1521 versteckt, nachdem er von der katholischen Kirche verurteilt worden war. Ein Freund half ihm, sich zu verstecken, damit seine Gegner ihn nicht finden konnten.

Ein Museumsführer zeigt Jonas das kleine Zimmer, in dem Luther gelebt hat. An der Wand hängt ein Bild von einem Mann mit langem Bart – so sah Luther aus, als er sich als „Junker Jörg" ausgab. Der Führer erzählt, dass Luther in nur elf Wochen das Neue Testament aus dem Griechischen ins Deutsche übersetzt hat. Diese Übersetzung war wichtig, weil viele Menschen zum ersten Mal die Bibel in ihrer eigenen Sprache lesen konnten.

Jonas ist beeindruckt. Er fragt sich, wie einsam Luther sich auf der Burg gefühlt haben muss, weit weg von seiner Familie und seinen Freunden. Der Führer erklärt auch, dass Luthers Übersetzung die deutsche Sprache stark verändert hat, weil viele Wörter und Ausdrücke aus seiner Bibel noch heute benutzt werden.

Am Ende des Besuchs steht Jonas auf dem Turm der Burg und schaut über den Wald. Er versteht jetzt besser, warum die Wartburg ein so wichtiger Ort für die deutsche Geschichte ist. Für seine Arbeit macht er viele Fotos und Notizen.$t$,
    $t$Jonas étudie l'histoire à Iéna et rédige un mémoire sur la Réforme. Pour son projet, il se rend à Eisenach et visite la Wartburg, un vieux château sur une montagne. Martin Luther s'y est caché en 1521, après avoir été condamné par l'Église catholique. Un ami l'a aidé à se cacher, pour que ses adversaires ne puissent pas le trouver.

Un guide du musée montre à Jonas la petite pièce où Luther a vécu. Sur le mur est accroché un tableau d'un homme à la longue barbe – c'est ainsi que Luther apparaissait quand il se faisait passer pour « Junker Jörg ». Le guide raconte que Luther a traduit le Nouveau Testament du grec vers l'allemand en seulement onze semaines. Cette traduction était importante, car beaucoup de gens pouvaient pour la première fois lire la Bible dans leur propre langue.

Jonas est impressionné. Il se demande à quel point Luther a dû se sentir seul dans ce château, loin de sa famille et de ses amis. Le guide explique aussi que la traduction de Luther a fortement changé la langue allemande, parce que de nombreux mots et expressions tirés de sa Bible sont encore utilisés aujourd'hui.

À la fin de la visite, Jonas se tient sur la tour du château et regarde la forêt. Il comprend maintenant mieux pourquoi la Wartburg est un lieu si important pour l'histoire allemande. Pour son mémoire, il prend beaucoup de photos et de notes.$t$,
    $t${"Jonas":"Jonas","studiert":"étudie","Geschichte":"histoire","in":"dans","Jena":"Iéna","und":"et","schreibt":"rédige","eine":"un","Arbeit":"mémoire","über":"sur","die":"la","Reformation":"Réforme","Für":"pour","sein":"son","Projekt":"projet","fährt":"se rend","er":"il","nach":"à","Eisenach":"Eisenach","besucht":"visite","Wartburg":"Wartburg","alte":"vieux","Burg":"château","auf":"sur","einem":"un","Berg":"montagne","Dort":"là","hat sich":"s'est","Martin Luther":"Martin Luther","im":"en","Jahr":"année","versteckt":"caché","nachdem":"après que","von":"de","katholischen":"catholique","Kirche":"Église","verurteilt worden war":"avait été condamné","Ein":"un","Freund":"ami","half":"a aidé","ihm":"lui","zu verstecken":"se cacher","damit":"pour que","seine":"ses","Gegner":"adversaires","ihn":"le","nicht finden konnten":"ne puissent pas trouver","Museumsführer":"guide du musée","zeigt":"montre","das":"le","kleine":"petite","Zimmer":"pièce","in dem":"où","Luther":"Luther","gelebt hat":"a vécu","An":"sur","der":"le","Wand":"mur","hängt":"est accroché","ein":"un","Bild":"tableau","Mann":"homme","mit":"à","langem":"longue","Bart":"barbe","so":"si","sah":"apparaissait","aus":"de","als":"pour","sich":"se","Junker Jörg":"Junker Jörg","ausgab":"faisait passer","Der Führer":"le guide","erzählt":"raconte","dass":"que","nur":"seulement","elf":"onze","Wochen":"semaines","Neue Testament":"Nouveau Testament","aus dem":"du","Griechischen":"grec","ins":"vers l'","Deutsche":"allemand","übersetzt hat":"a traduit","Diese":"cette","Übersetzung":"traduction","war":"était","wichtig":"importante","weil":"parce que","viele":"beaucoup","Menschen":"gens","zum ersten Mal":"pour la première fois","Bibel":"Bible","ihrer":"leur","eigenen":"propre","Sprache":"langue","lesen konnten":"pouvaient lire","ist":"est","beeindruckt":"impressionné","fragt sich":"se demande","wie":"à quel point","einsam":"seul","gefühlt haben muss":"a dû se sentir","weit weg":"loin","seiner":"sa","Familie":"famille","seinen":"ses","Freunden":"amis","erklärt":"explique","auch":"aussi","Luthers":"de Luther","stark":"fortement","verändert hat":"a changé","Wörter":"mots","Ausdrücke":"expressions","noch heute":"encore aujourd'hui","benutzt werden":"sont utilisés","Am Ende":"à la fin","des Besuchs":"de la visite","steht":"se tient","auf dem":"sur la","Turm":"tour","schaut":"regarde","Wald":"forêt","versteht":"comprend","jetzt":"maintenant","besser":"mieux","warum":"pourquoi","wichtiger":"important","Ort":"lieu","für":"pour","deutsche":"allemande","macht":"prend","Fotos":"photos","Notizen":"notes","hat":"a","Martin":"Martin","verurteilt":"condamné","worden":"été","zu":"à/de","verstecken":"cacher","nicht":"pas","finden":"trouvent","konnten":"pouvaient","dem":"le/à","gelebt":"vécu","Junker":"Junker","Jörg":"Jörg","Der":"le","Führer":"guide","Neue":"nouveau","Testament":"Testament","übersetzt":"traduit","zum":"au","ersten":"premiers/première","Mal":"fois","lesen":"lire","Er":"il","fragt":"demande","gefühlt":"senti","haben":"avoir","muss":"doit","weit":"loin","weg":"loin","verändert":"changé","noch":"encore","heute":"aujourd'hui","benutzt":"utilisé","werden":"devenir/être","Am":"le","Ende":"fin","des":"du","Besuchs":"de la visite","den":"le"}$t$::jsonb
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was studiert Jonas?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Geschichte$t$, true, 1),
    (v_q, $t$Medizin$t$, false, 2),
    (v_q, $t$Musik$t$, false, 3),
    (v_q, $t$Kunst$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum besucht Jonas die Wartburg?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Weil er dort Urlaub macht$t$, false, 1),
    (v_q, $t$Weil er eine Arbeit über die Reformation schreibt$t$, true, 2),
    (v_q, $t$Weil er dort wohnt$t$, false, 3),
    (v_q, $t$Weil er einen Freund besucht$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was ist der Hauptgrund für Jonas' Besuch auf der Wartburg?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er möchte Informationen für sein Universitätsprojekt über die Reformation sammeln$t$, true, 1),
    (v_q, $t$Er will als Tourist die Burg fotografieren$t$, false, 2),
    (v_q, $t$Er sucht ein Zimmer für einen Ausflug$t$, false, 3),
    (v_q, $t$Er interessiert sich für mittelalterliche Architektur im Allgemeinen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was hat Luther auf der Wartburg gemacht?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er hat die Bibel übersetzt$t$, true, 1),
    (v_q, $t$Er hat ein Buch über Musik geschrieben$t$, false, 2),
    (v_q, $t$Er hat eine Kirche gebaut$t$, false, 3),
    (v_q, $t$Er hat einen Turm gebaut$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie lange hat Luther gebraucht, um das Neue Testament zu übersetzen?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Elf Tage$t$, false, 1),
    (v_q, $t$Elf Wochen$t$, true, 2),
    (v_q, $t$Elf Monate$t$, false, 3),
    (v_q, $t$Elf Jahre$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum war Luthers Übersetzung so bedeutend?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Weil sie die erste Bibel überhaupt war$t$, false, 1),
    (v_q, $t$Weil viele Menschen die Bibel nun in ihrer eigenen Sprache lesen konnten$t$, true, 2),
    (v_q, $t$Weil sie von der katholischen Kirche bezahlt wurde$t$, false, 3),
    (v_q, $t$Weil sie auf Latein geschrieben war$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wo steht Jonas am Ende des Besuchs?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Auf dem Turm der Burg$t$, true, 1),
    (v_q, $t$Im Zimmer von Luther$t$, false, 2),
    (v_q, $t$Im Wald$t$, false, 3),
    (v_q, $t$Im Museum in Jena$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was versteht Jonas am Ende besser?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Wie man eine Burg baut$t$, false, 1),
    (v_q, $t$Warum die Wartburg für die deutsche Geschichte wichtig ist$t$, true, 2),
    (v_q, $t$Wie man Latein lernt$t$, false, 3),
    (v_q, $t$Warum Eisenach eine große Stadt ist$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was zeigt der letzte Absatz über Jonas' Einstellung?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er ist enttäuscht von dem Besuch$t$, false, 1),
    (v_q, $t$Er hat ein tieferes Verständnis für die historische Bedeutung des Ortes gewonnen$t$, true, 2),
    (v_q, $t$Er möchte selbst Theologie studieren$t$, false, 3),
    (v_q, $t$Er findet die Burg langweilig$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'sich verstecken'?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$sich verbergen, damit niemand einen findet$t$, true, 1),
    (v_q, $t$laut singen$t$, false, 2),
    (v_q, $t$schnell laufen$t$, false, 3),
    (v_q, $t$ein Buch lesen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welches Wort passt: Luther musste sich vor seinen Gegnern ___.$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$verstecken$t$, true, 1),
    (v_q, $t$verlaufen$t$, false, 2),
    (v_q, $t$verkaufen$t$, false, 3),
    (v_q, $t$verlieben$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Bedeutung passt am besten zu 'sich verstecken', wie es im Text benutzt wird?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$An einem Ort bleiben, den andere nicht kennen, um nicht gefunden zu werden$t$, true, 1),
    (v_q, $t$Sich mit jemandem treffen$t$, false, 2),
    (v_q, $t$Sich bei jemandem entschuldigen$t$, false, 3),
    (v_q, $t$Sich auf eine Reise vorbereiten$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Ergänzen Sie: Luther ___ das Neue Testament übersetzt.$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$hat$t$, true, 1),
    (v_q, $t$ist$t$, false, 2),
    (v_q, $t$war$t$, false, 3),
    (v_q, $t$wird$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wählen Sie die richtige Reihenfolge im Perfekt.$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Luther hat sich in der Wartburg versteckt.$t$, true, 1),
    (v_q, $t$Luther sich hat in der Wartburg versteckt.$t$, false, 2),
    (v_q, $t$Luther hat versteckt sich in der Wartburg.$t$, false, 3),
    (v_q, $t$Luther in der Wartburg hat sich versteckt.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Ergänzen Sie: Jonas fragt sich, wie einsam Luther sich gefühlt haben muss, ___ er weit weg von seiner Familie war.$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$weil$t$, true, 1),
    (v_q, $t$obwohl$t$, false, 2),
    (v_q, $t$damit$t$, false, 3),
    (v_q, $t$bevor$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$Schreiben Sie einen kurzen Text (5-7 Sätze) über einen historischen Ort, den Sie besucht haben oder gerne besuchen würden. Erklären Sie, warum dieser Ort wichtig ist.$t$, 1, 'normal', 'production', $t$Ich würde gerne die Wartburg in Thüringen besuchen. Dort hat sich Martin Luther versteckt und die Bibel ins Deutsche übersetzt. Ich finde diesen Ort interessant, weil er die deutsche Sprache und Geschichte stark beeinflusst hat. Außerdem liegt die Burg auf einem Berg und bietet sicher einen schönen Blick über den Wald. Ich möchte das kleine Zimmer sehen, in dem Luther gelebt hat. Für mich zeigt dieser Ort, wie eine Idee die Welt verändern kann. Deshalb steht die Wartburg ganz oben auf meiner Reiseliste.$t$);

END $block$;

-- 17. Der Dom über der Stadt
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary) VALUES (
    'B1',
    $t$Der Dom über der Stadt$t$,
    $t$Die Familie Weber fährt am Wochenende nach Köln, um den berühmten Dom zu besichtigen. Schon von der Zugbrücke aus sehen die Kinder Lena und Tim die zwei hohen Türme, die über die ganze Stadt hinausragen. Der Vater erklärt, dass der Bau des Doms im Jahr 1248 begonnen hat, aber erst 1880 fertig wurde – also über 600 Jahre später.

Im Inneren der Kirche ist es still und kühl. Die Familie schaut sich die bunten Fenster an, durch die das Licht in vielen Farben fällt. Eine Führerin erzählt, dass im Dom ein goldener Schrein steht, in dem der Legende nach die Gebeine der Heiligen Drei Könige liegen. Deshalb kommen jedes Jahr Millionen von Touristen und Pilgern nach Köln.

Tim fragt, warum der Dom im Krieg nicht zerstört wurde, obwohl die Stadt Köln stark bombardiert wurde. Die Führerin antwortet, dass der Dom zwar getroffen wurde, aber die starken Mauern nicht eingestürzt sind. Nach dem Krieg haben Handwerker viele Jahre gebraucht, um alles zu reparieren.

Am Ende steigt die Familie die 533 Stufen bis zur Aussichtsplattform hoch. Von dort oben sehen sie den Rhein und die ganze Stadt. Lena ist müde, aber glücklich – sie hat noch nie eine so große Kirche gesehen.$t$,
    $t$La famille Weber part le week-end à Cologne pour visiter la célèbre cathédrale. Déjà depuis le pont ferroviaire, les enfants Lena et Tim voient les deux hautes tours qui dominent toute la ville. Le père explique que la construction de la cathédrale a commencé en 1248, mais qu'elle n'a été achevée qu'en 1880 – donc plus de 600 ans plus tard.

À l'intérieur de l'église, il fait calme et frais. La famille regarde les vitraux colorés, à travers lesquels la lumière tombe en de nombreuses couleurs. Une guide raconte que dans la cathédrale se trouve un reliquaire en or dans lequel, selon la légende, reposent les ossements des Rois mages. C'est pourquoi des millions de touristes et de pèlerins viennent chaque année à Cologne.

Tim demande pourquoi la cathédrale n'a pas été détruite pendant la guerre, bien que la ville de Cologne ait été fortement bombardée. La guide répond que la cathédrale a bien été touchée, mais que ses murs épais ne se sont pas effondrés. Après la guerre, des artisans ont eu besoin de nombreuses années pour tout réparer.

À la fin, la famille monte les 533 marches jusqu'à la plateforme panoramique. De là-haut, ils voient le Rhin et toute la ville. Lena est fatiguée, mais heureuse – elle n'a encore jamais vu une si grande église.$t$,
    $t${"Die":"la","Familie":"famille","Weber":"Weber","fährt":"part","am":"le","Wochenende":"week-end","nach":"selon","Köln":"Cologne","um":"pour","den":"la","berühmten":"célèbre","Dom":"cathédrale","zu besichtigen":"visiter","Schon":"déjà","von":"de","der":"des","Zugbrücke":"pont ferroviaire","aus":"depuis","sehen":"voient","Kinder":"enfants","Lena":"Lena","und":"et","Tim":"Tim","die":"qui","zwei":"deux","hohen":"hautes","Türme":"tours","über":"plus de","ganze":"toute","Stadt":"ville","hinausragen":"dominent","Der Vater":"le père","erklärt":"explique","dass":"que","Bau":"construction","des":"de la","im":"pendant la","Jahr":"année","begonnen hat":"a commencé","aber":"mais","erst":"seulement","fertig wurde":"achevée","also":"donc","Jahre":"ans","später":"plus tard","Im Inneren":"à l'intérieur","Kirche":"église","ist es":"il fait","still":"calme","kühl":"frais","schaut sich":"regarde","bunten":"colorés","Fenster":"vitraux","an":"regarde","durch die":"à travers lesquels","das":"la","Licht":"lumière","in":"en","vielen":"nombreuses","Farben":"couleurs","fällt":"tombe","Eine":"une","Führerin":"guide","erzählt":"raconte","goldener":"en or","Schrein":"reliquaire","steht":"se trouve","in dem":"dans lequel","Legende":"légende","Gebeine":"ossements","Heiligen Drei Könige":"Rois mages","liegen":"reposent","Deshalb":"c'est pourquoi","kommen":"viennent","jedes Jahr":"chaque année","Millionen":"millions","Touristen":"touristes","Pilgern":"pèlerins","fragt":"demande","warum":"pourquoi","Krieg":"guerre","nicht zerstört wurde":"n'a pas été détruite","obwohl":"bien que","stark":"fortement","bombardiert wurde":"a été bombardée","antwortet":"répond","zwar":"bien","getroffen wurde":"a été touchée","starken":"épais","Mauern":"murs","nicht eingestürzt sind":"ne se sont pas effondrés","Nach dem Krieg":"après la guerre","haben":"ont","Handwerker":"artisans","viele Jahre":"de nombreuses années","gebraucht":"eu besoin","alles":"tout","zu reparieren":"réparer","Am Ende":"à la fin","steigt":"monte","Stufen":"marches","bis zur":"jusqu'à","Aussichtsplattform":"plateforme panoramique","hoch":"jusqu'en haut","Von dort oben":"de là-haut","sehen sie":"ils voient","Rhein":"Rhin","müde":"fatiguée","glücklich":"heureuse","hat noch nie":"n'a encore jamais","eine so große":"une si grande","gesehen":"vu","zu":"à/de","besichtigen":"visiter","Der":"le","Vater":"père","Doms":"de la cathédrale","begonnen":"commencé","hat":"a","fertig":"terminé","wurde":"a été","Im":"dans le","Inneren":"intérieur","ist":"est","es":"il/cela","schaut":"regarde","sich":"se","ein":"un","dem":"le/à","Heiligen":"saints","Drei":"trois","Könige":"rois","jedes":"chaque","nicht":"pas","zerstört":"détruit","bombardiert":"bombardée","getroffen":"touchée","eingestürzt":"effondrés","sind":"sont","Nach":"après","reparieren":"réparer","Am":"le","Ende":"fin","bis":"jusqu'à","zur":"à la","Von":"de","dort":"là","oben":"en haut","sie":"elle/ils","noch":"encore","nie":"jamais","eine":"une","so":"si","durch":"à travers","viele":"de nombreuses","große":"grande"}$t$::jsonb
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wohin fährt die Familie Weber?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Nach Köln$t$, true, 1),
    (v_q, $t$Nach Berlin$t$, false, 2),
    (v_q, $t$Nach München$t$, false, 3),
    (v_q, $t$Nach Hamburg$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wann wurde mit dem Bau des Doms begonnen?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$1248$t$, true, 1),
    (v_q, $t$1880$t$, false, 2),
    (v_q, $t$1945$t$, false, 3),
    (v_q, $t$1600$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was zeigt der Vergleich der Jahreszahlen 1248 und 1880?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Der Bau des Doms dauerte über 600 Jahre$t$, true, 1),
    (v_q, $t$Der Dom wurde in nur wenigen Jahren gebaut$t$, false, 2),
    (v_q, $t$Der Dom wurde zweimal gebaut$t$, false, 3),
    (v_q, $t$Die Zahlen beziehen sich auf zwei verschiedene Kirchen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was liegt im goldenen Schrein?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Die Gebeine der Heiligen Drei Könige$t$, true, 1),
    (v_q, $t$Alte Bücher$t$, false, 2),
    (v_q, $t$Gold aus dem Rhein$t$, false, 3),
    (v_q, $t$Ein Bild von Köln$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum kommen viele Touristen und Pilger nach Köln?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Wegen des Karnevals$t$, false, 1),
    (v_q, $t$Wegen des goldenen Schreins im Dom$t$, true, 2),
    (v_q, $t$Wegen des Flughafens$t$, false, 3),
    (v_q, $t$Wegen der Universität$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was lässt sich aus dem Text über die religiöse Bedeutung des Doms schließen?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Der Dom ist ausschließlich ein touristisches Bauwerk ohne religiösen Wert$t$, false, 1),
    (v_q, $t$Der Dom ist bis heute ein wichtiger Wallfahrtsort$t$, true, 2),
    (v_q, $t$Der Dom wurde nur wegen seiner Architektur gebaut$t$, false, 3),
    (v_q, $t$Die Heiligen Drei Könige sind ein modernes Symbol$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was machen Lena und Tim am Ende?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie steigen zur Aussichtsplattform hoch$t$, true, 1),
    (v_q, $t$Sie fahren nach Hause$t$, false, 2),
    (v_q, $t$Sie kaufen Postkarten$t$, false, 3),
    (v_q, $t$Sie essen im Restaurant$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie viele Stufen steigt die Familie?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$133$t$, false, 1),
    (v_q, $t$333$t$, false, 2),
    (v_q, $t$533$t$, true, 3),
    (v_q, $t$633$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum blieb der Dom im Krieg trotz Bombardierung größtenteils erhalten?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Weil die Alliierten den Dom bewusst nicht angriffen$t$, false, 1),
    (v_q, $t$Weil die starken Mauern nicht eingestürzt sind$t$, true, 2),
    (v_q, $t$Weil der Dom unterirdisch geschützt war$t$, false, 3),
    (v_q, $t$Weil der Krieg Köln nicht erreichte$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'der Schrein'?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Ein Behälter für heilige Gegenstände$t$, true, 1),
    (v_q, $t$Ein Fenster aus Glas$t$, false, 2),
    (v_q, $t$Ein hoher Turm$t$, false, 3),
    (v_q, $t$Ein Zug$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welches Wort passt: Im Dom steht ein goldener ___, in dem Reliquien liegen.$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Schrein$t$, true, 1),
    (v_q, $t$Schirm$t$, false, 2),
    (v_q, $t$Schrank$t$, false, 3),
    (v_q, $t$Schnee$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welcher Satz verwendet 'der Schrein' korrekt im religiösen Sinn?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Der Schrein enthält der Legende nach die Gebeine der Heiligen Drei Könige.$t$, true, 1),
    (v_q, $t$Der Schrein ist ein modernes Fahrzeug.$t$, false, 2),
    (v_q, $t$Sie kauften einen Schrein im Supermarkt.$t$, false, 3),
    (v_q, $t$Der Schrein fliegt über die Stadt.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Ergänzen Sie: Der Dom ___ im Krieg getroffen.$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$wurde$t$, true, 1),
    (v_q, $t$wird$t$, false, 2),
    (v_q, $t$hat$t$, false, 3),
    (v_q, $t$ist$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wählen Sie die richtige Form (Passiv Präteritum): Die Stadt Köln ___ stark bombardiert.$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$wurde$t$, true, 1),
    (v_q, $t$wird$t$, false, 2),
    (v_q, $t$hat$t$, false, 3),
    (v_q, $t$war$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welcher Satz steht korrekt im Passiv?$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Der Dom wurde im Krieg getroffen, aber die Mauern stürzten nicht ein.$t$, true, 1),
    (v_q, $t$Der Dom traf im Krieg, aber die Mauern wurden nicht eingestürzt.$t$, false, 2),
    (v_q, $t$Der Dom hat im Krieg getroffen.$t$, false, 3),
    (v_q, $t$Der Dom wird im Krieg treffen.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$Beschreiben Sie in 5-7 Sätzen ein berühmtes Bauwerk in Ihrem Land. Erklären Sie, wie alt es ist und warum es wichtig ist.$t$, 1, 'normal', 'production', $t$In meiner Heimatstadt gibt es eine alte Kathedrale, die vor über 500 Jahren gebaut wurde. Der Bau dauerte viele Jahrzehnte, weil die Handwerker nur mit einfachen Werkzeugen arbeiteten. Im Inneren gibt es wunderschöne bunte Fenster und alte Statuen. Viele Touristen besuchen die Kathedrale, weil sie eines der ältesten Gebäude der Stadt ist. Für die Einwohner ist sie ein Symbol der Geschichte und des Zusammenhalts. Man kann sogar auf den Turm steigen und die ganze Stadt sehen. Ich finde es beeindruckend, dass ein so altes Bauwerk noch heute steht.$t$);

END $block$;

-- 18. Zum ersten Mal auf dem Oktoberfest
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary) VALUES (
    'B1',
    $t$Zum ersten Mal auf dem Oktoberfest$t$,
    $t$Sofia kommt aus Spanien und lebt seit drei Monaten in München. Ihre Kollegen laden sie ein, mit ihnen zum Oktoberfest zu gehen. Sofia hat schon viel über dieses Fest gehört, war aber noch nie dort.

Am Eingang der Wiesn, so nennen die Münchner das Festgelände, ist Sofia überrascht, wie groß alles ist. Es gibt riesige Bierzelte, viele Fahrgeschäfte und überall Musik. Ihre Kollegin Anna erklärt ihr, dass das Oktoberfest 1810 zum ersten Mal gefeiert wurde, als Prinz Ludwig heiratete. Seitdem findet das Fest fast jedes Jahr statt.

In einem der großen Zelte finden sie einen Platz an einem langen Holztisch. Eine Kellnerin bringt riesige Bierkrüge, die einen Liter fassen. Sofia bestellt lieber ein alkoholfreies Getränk und probiert stattdessen ein Hendl, ein gebratenes Hähnchen, das dort sehr beliebt ist. Um sie herum tragen viele Menschen Tracht: Männer in Lederhosen und Frauen in Dirndln.

Als die Blaskapelle zu spielen beginnt, stehen fast alle Leute auf und singen mit. Sofia versteht die Wörter nicht immer, aber die Stimmung gefällt ihr. Sie ist erstaunt, dass Menschen aus der ganzen Welt zu diesem Fest kommen, um die bayerische Kultur kennenzulernen.

Am Ende des Abends ist Sofia müde, aber begeistert. Sie hat entschieden, nächstes Jahr wiederzukommen – dann vielleicht sogar in einem eigenen Dirndl.$t$,
    $t$Sofia vient d'Espagne et vit depuis trois mois à Munich. Ses collègues l'invitent à aller avec eux à l'Oktoberfest. Sofia a déjà beaucoup entendu parler de cette fête, mais n'y était encore jamais allée.

À l'entrée de la Wiesn, comme les Munichois appellent le terrain de la fête, Sofia est surprise de voir à quel point tout est immense. Il y a d'immenses tentes à bière, de nombreuses attractions et de la musique partout. Sa collègue Anna lui explique que l'Oktoberfest a été célébré pour la première fois en 1810, lors du mariage du prince Louis. Depuis, la fête a lieu presque chaque année.

Dans l'une des grandes tentes, elles trouvent une place à une longue table en bois. Une serveuse apporte d'énormes chopes de bière contenant un litre. Sofia commande plutôt une boisson sans alcool et goûte à la place un Hendl, un poulet rôti très apprécié là-bas. Autour d'elle, beaucoup de gens portent le costume traditionnel : des hommes en culotte de cuir et des femmes en dirndl.

Quand la fanfare commence à jouer, presque tout le monde se lève et chante. Sofia ne comprend pas toujours les paroles, mais l'ambiance lui plaît. Elle est étonnée que des gens du monde entier viennent à cette fête pour découvrir la culture bavaroise.

À la fin de la soirée, Sofia est fatiguée, mais enthousiaste. Elle a décidé de revenir l'année prochaine – peut-être même dans son propre dirndl.$t$,
    $t${"Sofia":"Sofia","kommt":"vient","aus":"de","Spanien":"Espagne","lebt":"vit","seit":"depuis","drei":"trois","Monaten":"mois","in":"en","München":"Munich","Ihre":"sa","Kollegen":"collègues","laden":"invitent","sie":"elle","ein":"un","mit":"avec","ihnen":"eux","zum":"à l'","Oktoberfest":"Oktoberfest","zu gehen":"aller","hat":"a","schon":"déjà","viel":"beaucoup","über":"sur","dieses":"cette","Fest":"fête","gehört":"entendu parler","war":"était","aber":"mais","noch nie":"encore jamais","dort":"là-bas","Am":"à l'","Eingang":"entrée","der":"des","Wiesn":"Wiesn","so":"ainsi","nennen":"appellent","Münchner":"Munichois","das":"qui","Festgelände":"terrain de la fête","ist":"est","überrascht":"surprise","wie":"à quel point","groß":"grand","alles":"tout","Es gibt":"il y a","riesige":"d'énormes","Bierzelte":"tentes à bière","viele":"de nombreuses","Fahrgeschäfte":"attractions","überall":"partout","Musik":"musique","Kollegin":"collègue","Anna":"Anna","erklärt":"explique","ihr":"lui","dass":"que","zum ersten Mal":"pour la première fois","gefeiert wurde":"a été célébré","als":"quand","Prinz":"prince","Ludwig":"Louis","heiratete":"s'est marié","Seitdem":"depuis","findet":"a lieu","fast":"presque","jedes Jahr":"chaque année","statt":"lieu","In":"dans","einem":"une","großen":"grandes","Zelte":"tentes","finden sie":"trouvent","einen":"un","Platz":"place","an":"à","langen":"longue","Holztisch":"table en bois","Eine":"une","Kellnerin":"serveuse","bringt":"apporte","Bierkrüge":"chopes de bière","die":"qui","Liter":"litre","fassen":"contiennent","bestellt":"commande","lieber":"plutôt","alkoholfreies":"sans alcool","Getränk":"boisson","probiert":"goûte","stattdessen":"à la place","Hendl":"Hendl","gebratenes":"rôti","Hähnchen":"poulet","sehr":"très","beliebt ist":"apprécié","Um sie herum":"autour d'elle","tragen":"portent","Menschen":"gens","Tracht":"costume traditionnel","Männer":"hommes","Lederhosen":"culotte de cuir","Frauen":"femmes","Dirndln":"dirndl","Als":"quand","Blaskapelle":"fanfare","zu spielen beginnt":"commence à jouer","stehen":"se lève","fast alle":"presque tout le monde","Leute":"gens","auf":"lève","singen mit":"chante","versteht":"comprend","Wörter":"paroles","nicht immer":"pas toujours","Stimmung":"ambiance","gefällt ihr":"lui plaît","erstaunt":"étonnée","aus der ganzen Welt":"du monde entier","zu diesem Fest kommen":"viennent à cette fête","um":"pour","bayerische":"bavaroise","Kultur":"culture","kennenzulernen":"découvrir","Am Ende":"à la fin","des Abends":"de la soirée","müde":"fatiguée","begeistert":"enthousiaste","hat entschieden":"a décidé","nächstes Jahr":"l'année prochaine","wiederzukommen":"revenir","dann":"alors","vielleicht sogar":"peut-être même","eigenen":"propre","und":"et","zu":"à/de","gehen":"aller","noch":"encore","nie":"jamais","Es":"il","ersten":"premiers/première","Mal":"fois","gefeiert":"célébrée","wurde":"a été","jedes":"chaque","Jahr":"an/année","finden":"trouvent","beliebt":"apprécié","Um":"autour","herum":"autour","spielen":"jouer","beginnt":"commence","alle":"tous","singen":"chantent","nicht":"pas","immer":"toujours","gefällt":"plaît","Sie":"elle/ils","ganzen":"entier","Welt":"monde","diesem":"ce","kommen":"viennent","Ende":"fin","des":"du","Abends":"de la soirée","entschieden":"décidé","nächstes":"prochaine","vielleicht":"peut-être","sogar":"même","Dirndl":"dirndl","gibt":"il y a"}$t$::jsonb
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Woher kommt Sofia?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Aus Spanien$t$, true, 1),
    (v_q, $t$Aus Frankreich$t$, false, 2),
    (v_q, $t$Aus Italien$t$, false, 3),
    (v_q, $t$Aus Portugal$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum geht Sofia zum Oktoberfest?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Ihre Kollegen laden sie ein$t$, true, 1),
    (v_q, $t$Sie arbeitet dort$t$, false, 2),
    (v_q, $t$Sie wohnt in der Nähe$t$, false, 3),
    (v_q, $t$Sie hat Karten gewonnen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was zeigt die Tatsache, dass Sofia noch nie auf dem Oktoberfest war, obwohl sie viel darüber gehört hatte?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Dass das Fest hauptsächlich Touristen anzieht$t$, false, 1),
    (v_q, $t$Dass sie erst seit Kurzem in München lebt$t$, true, 2),
    (v_q, $t$Dass sie das Fest nicht mag$t$, false, 3),
    (v_q, $t$Dass das Fest nur für Einheimische ist$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Seit wann gibt es das Oktoberfest?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Seit 1810$t$, true, 1),
    (v_q, $t$Seit 1900$t$, false, 2),
    (v_q, $t$Seit 1950$t$, false, 3),
    (v_q, $t$Seit 2000$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum wurde das erste Oktoberfest gefeiert?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Wegen einer Hochzeit von Prinz Ludwig$t$, true, 1),
    (v_q, $t$Wegen eines Kriegsendes$t$, false, 2),
    (v_q, $t$Wegen einer guten Ernte$t$, false, 3),
    (v_q, $t$Wegen eines Geburtstags des Königs$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was lässt sich über den Ursprung des Oktoberfests sagen?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Es begann als privates Fest, das zu einer großen Tradition wurde$t$, true, 1),
    (v_q, $t$Es war von Anfang an ein internationales Bierfest$t$, false, 2),
    (v_q, $t$Es wurde von Kellnerinnen erfunden$t$, false, 3),
    (v_q, $t$Es fand ursprünglich im Winter statt$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was isst Sofia auf dem Fest?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Ein Hendl$t$, true, 1),
    (v_q, $t$Eine Pizza$t$, false, 2),
    (v_q, $t$Eine Suppe$t$, false, 3),
    (v_q, $t$Einen Kuchen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was trägt man traditionell auf dem Oktoberfest?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Lederhosen und Dirndl$t$, true, 1),
    (v_q, $t$Anzüge und Krawatten$t$, false, 2),
    (v_q, $t$Sportkleidung$t$, false, 3),
    (v_q, $t$Uniformen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was zeigt Sofias Entscheidung, nächstes Jahr wiederzukommen?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Dass sie das Fest trotz kultureller Unterschiede genossen hat$t$, true, 1),
    (v_q, $t$Dass sie enttäuscht war$t$, false, 2),
    (v_q, $t$Dass sie nur wegen der Kollegen dort war$t$, false, 3),
    (v_q, $t$Dass sie die bayerische Kultur ablehnt$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'die Tracht'?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Traditionelle Kleidung einer Region$t$, true, 1),
    (v_q, $t$Ein Musikinstrument$t$, false, 2),
    (v_q, $t$Ein Getränk$t$, false, 3),
    (v_q, $t$Ein Tanz$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welches Wort passt: Männer tragen auf dem Oktoberfest oft eine ___.$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Lederhose$t$, true, 1),
    (v_q, $t$Krawatte$t$, false, 2),
    (v_q, $t$Badehose$t$, false, 3),
    (v_q, $t$Uniform$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welcher Satz benutzt 'die Tracht' richtig?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Viele Besucher tragen auf dem Oktoberfest bayerische Tracht.$t$, true, 1),
    (v_q, $t$Die Tracht ist ein Getränk aus Bayern.$t$, false, 2),
    (v_q, $t$Sie kaufte eine Tracht im Supermarkt.$t$, false, 3),
    (v_q, $t$Die Tracht fliegt über das Festgelände.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Ergänzen Sie: ___ die Musik begann, standen alle auf.$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Als$t$, true, 1),
    (v_q, $t$Wenn$t$, false, 2),
    (v_q, $t$Ob$t$, false, 3),
    (v_q, $t$Weil$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wählen Sie den richtigen Satz im Präteritum.$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Als die Blaskapelle zu spielen begann, standen fast alle Leute auf.$t$, true, 1),
    (v_q, $t$Als die Blaskapelle zu spielen beginnt, standen fast alle Leute auf.$t$, false, 2),
    (v_q, $t$Als die Blaskapelle spielte begonnen, standen alle auf.$t$, false, 3),
    (v_q, $t$Wenn die Blaskapelle begann zu spielen hat, standen alle auf.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welcher Satz zeigt die korrekte Verwendung von 'als' für ein einmaliges Ereignis in der Vergangenheit?$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Als Sofia zum ersten Mal auf dem Oktoberfest war, war sie überrascht.$t$, true, 1),
    (v_q, $t$Wenn Sofia zum ersten Mal auf dem Oktoberfest war, war sie überrascht.$t$, false, 2),
    (v_q, $t$Als Sofia jedes Jahr auf das Fest geht, ist sie überrascht.$t$, false, 3),
    (v_q, $t$Ob Sofia auf das Fest ging, war sie überrascht.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$Beschreiben Sie in 5-7 Sätzen ein Fest oder eine Tradition aus Ihrem Land, das Touristen interessieren könnte.$t$, 1, 'normal', 'production', $t$In meinem Land feiern wir jedes Jahr ein großes Erntefest im Herbst. Viele Menschen aus der Region kommen zusammen, um zu essen, zu tanzen und Musik zu hören. Es gibt traditionelle Speisen, die man nur zu diesem Anlass isst. Manche Leute tragen dabei traditionelle Kleidung, die seit Generationen weitergegeben wird. Touristen finden das Fest interessant, weil es einen echten Einblick in unsere Kultur gibt. Ich glaube, solche Feste sind wichtig, weil sie alte Traditionen lebendig halten. Deshalb würde ich jedem empfehlen, das Fest einmal zu besuchen.$t$);

END $block$;

-- 19. Auf dem Märchenpfad im Wald
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary) VALUES (
    'B1',
    $t$Auf dem Märchenpfad im Wald$t$,
    $t$Familie Schmidt macht einen Ausflug in den Reinhardswald, einen Wald in Nordhessen. Dort gibt es einen Märchenpfad, der an die Geschichte von Hänsel und Gretel erinnert. Die kleine Mia, sieben Jahre alt, kennt das Märchen gut: Zwei Kinder werden von ihren Eltern im Wald ausgesetzt, weil die Familie zu arm ist, um alle zu ernähren. Im Wald finden die Kinder ein Haus aus Lebkuchen, in dem eine böse Hexe wohnt.

Am Anfang des Pfades steht eine Holzfigur, die wie ein Lebkuchenhaus aussieht. Mia rennt sofort hin und will wissen, ob man davon essen kann. Ihr Vater lacht und erklärt, dass die Brüder Grimm dieses Märchen vor über 200 Jahren aufgeschrieben haben. Damals erzählten viele Menschen solche Geschichten, um Kindern zu zeigen, dass man mutig und klug sein muss, um Gefahren zu überwinden.

Während des Spaziergangs findet die Familie weitere Stationen: einen Baum mit Brotkrumen, einen kleinen Ofen und schließlich eine Hütte im Wald. An jeder Station liest die Mutter einen Teil der Geschichte vor. Mia hört gespannt zu, besonders wenn Gretel am Ende die Hexe in den Ofen schiebt und die Kinder gerettet werden.

Am Ende des Pfades ist Mia ein bisschen enttäuscht, dass es keine echte Hexe gibt. Aber sie hat verstanden, warum solche Märchen den Menschen früher wichtig waren: Sie halfen, mit Angst und Armut umzugehen.$t$,
    $t$La famille Schmidt fait une excursion dans la forêt de Reinhardswald, une forêt du nord de la Hesse. Il y a là un sentier des contes qui rappelle l'histoire de Hansel et Gretel. La petite Mia, sept ans, connaît bien le conte : deux enfants sont abandonnés dans la forêt par leurs parents, parce que la famille est trop pauvre pour nourrir tout le monde. Dans la forêt, les enfants trouvent une maison en pain d'épices, où habite une méchante sorcière.

Au début du sentier se trouve une figure en bois qui ressemble à une maison en pain d'épices. Mia y court immédiatement et veut savoir si on peut en manger. Son père rit et explique que les frères Grimm ont écrit ce conte il y a plus de 200 ans. À l'époque, beaucoup de gens racontaient de telles histoires pour montrer aux enfants qu'il faut être courageux et intelligent pour surmonter les dangers.

Pendant la promenade, la famille trouve d'autres stations : un arbre avec des miettes de pain, un petit four et enfin une cabane dans la forêt. À chaque station, la mère lit une partie de l'histoire. Mia écoute avec attention, surtout quand à la fin Gretel pousse la sorcière dans le four et que les enfants sont sauvés.

À la fin du sentier, Mia est un peu déçue qu'il n'y ait pas de vraie sorcière. Mais elle a compris pourquoi de tels contes étaient importants pour les gens autrefois : ils aidaient à faire face à la peur et à la pauvreté.$t$,
    $t${"Familie":"famille","Schmidt":"Schmidt","macht":"fait","einen":"un","Ausflug":"excursion","in":"dans","den":"le","Reinhardswald":"forêt de Reinhardswald","Wald":"forêt","Nordhessen":"Hesse du Nord","Dort":"là","gibt es":"il y a","Märchenpfad":"sentier des contes","der":"qui","an":"à","die":"les","Geschichte":"histoire","von":"par","Hänsel und Gretel":"Hansel et Gretel","erinnert":"rappelle","Die":"la","kleine":"petite","Mia":"Mia","sieben":"sept","Jahre":"ans","alt":"âgée","kennt":"connaît","das":"le","Märchen":"conte","gut":"bien","Zwei":"deux","Kinder":"enfants","werden":"sont","ihren":"leurs","Eltern":"parents","im":"dans la","ausgesetzt":"abandonnés","weil":"parce que","zu arm":"trop pauvre","ist":"est","um":"pour","alle":"tout le monde","zu ernähren":"nourrir","Im":"dans la","finden":"trouvent","ein":"une","Haus":"maison","aus":"en","Lebkuchen":"pain d'épices","in dem":"où","eine":"une","böse":"méchante","Hexe":"sorcière","wohnt":"habite","Am Anfang":"au début","des":"la","Pfades":"sentier","steht":"se trouve","Holzfigur":"figure en bois","wie":"comme","Lebkuchenhaus":"maison en pain d'épices","aussieht":"ressemble","rennt":"court","sofort":"immédiatement","hin":"y","will wissen":"veut savoir","ob":"si","man":"on","davon":"en","essen kann":"peut manger","Ihr Vater":"son père","lacht":"rit","erklärt":"explique","dass":"que","Brüder Grimm":"frères Grimm","dieses":"ce","vor":"il y a","über":"plus de","Jahren":"ans","aufgeschrieben haben":"ont écrit","Damals":"à l'époque","erzählten":"racontaient","viele":"beaucoup","Menschen":"gens","solche":"de tels","Geschichten":"histoires","Kindern":"aux enfants","zu zeigen":"montrer","mutig":"courageux","klug":"intelligent","sein muss":"doit être","Gefahren":"dangers","zu überwinden":"surmonter","Während":"pendant","Spaziergangs":"promenade","findet":"trouve","weitere":"d'autres","Stationen":"stations","Baum":"arbre","mit":"à","Brotkrumen":"miettes de pain","kleinen":"petit","Ofen":"four","schließlich":"enfin","Hütte":"cabane","An jeder":"à chaque","Station":"station","liest":"lit","Mutter":"mère","einen Teil":"une partie","hört":"écoute","gespannt":"avec attention","zu":"écoute","besonders":"surtout","wenn":"quand","am Ende":"à la fin","schiebt":"pousse","gerettet werden":"sont sauvés","ein bisschen":"un peu","enttäuscht":"déçue","es":"il","keine echte":"pas de vraie","gibt":"y ait","Aber":"mais","hat verstanden":"a compris","warum":"pourquoi","früher":"autrefois","wichtig waren":"étaient importants","Sie halfen":"ils aidaient","Angst":"peur","Armut":"pauvreté","umzugehen":"faire face","Hänsel":"Hansel","und":"et","Gretel":"Gretel","arm":"pauvre","ernähren":"nourrir","dem":"le/à","Am":"le","Anfang":"début","will":"veut","wissen":"savoir","essen":"manger","kann":"peut","Ihr":"son","Vater":"père","Brüder":"frères","Grimm":"Grimm","aufgeschrieben":"écrit","haben":"avoir","zeigen":"montrer","sein":"son/être","muss":"doit","überwinden":"surmonter","An":"à","jeder":"chaque","Teil":"partie","am":"le","Ende":"fin","gerettet":"sauvés","bisschen":"un peu","keine":"aucune","echte":"vraie","sie":"elle/ils","hat":"a","verstanden":"compris","wichtig":"important","waren":"étaient","Sie":"elle/ils","halfen":"aidaient"}$t$::jsonb
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wohin fährt Familie Schmidt?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$In den Reinhardswald$t$, true, 1),
    (v_q, $t$An die Nordsee$t$, false, 2),
    (v_q, $t$Nach Berlin$t$, false, 3),
    (v_q, $t$In die Berge$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was gibt es im Reinhardswald?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Einen Märchenpfad$t$, true, 1),
    (v_q, $t$Einen Zoo$t$, false, 2),
    (v_q, $t$Ein Schloss$t$, false, 3),
    (v_q, $t$Ein Museum$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum ist der Reinhardswald für die Familie interessant?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Weil er mit dem Märchen von Hänsel und Gretel verbunden ist$t$, true, 1),
    (v_q, $t$Weil dort ein Konzert stattfindet$t$, false, 2),
    (v_q, $t$Weil er der größte Wald Deutschlands ist$t$, false, 3),
    (v_q, $t$Weil dort Mias Schule liegt$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum wurden die Kinder im Märchen im Wald ausgesetzt?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Weil die Familie zu arm war$t$, true, 1),
    (v_q, $t$Weil sie ungehorsam waren$t$, false, 2),
    (v_q, $t$Weil sie sich verlaufen hatten$t$, false, 3),
    (v_q, $t$Weil die Eltern krank waren$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wer hat das Märchen vor über 200 Jahren aufgeschrieben?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Die Brüder Grimm$t$, true, 1),
    (v_q, $t$Martin Luther$t$, false, 2),
    (v_q, $t$Goethe$t$, false, 3),
    (v_q, $t$Wilhelm Röntgen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welchen Zweck erfüllten solche Märchen laut dem Vater früher?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie zeigten Kindern, dass Mut und Klugheit gegen Gefahren helfen$t$, true, 1),
    (v_q, $t$Sie waren nur zur Unterhaltung gedacht$t$, false, 2),
    (v_q, $t$Sie sollten Kinder vor Wäldern warnen$t$, false, 3),
    (v_q, $t$Sie wurden für Erwachsene geschrieben$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was macht Gretel am Ende des Märchens?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie schiebt die Hexe in den Ofen$t$, true, 1),
    (v_q, $t$Sie baut ein neues Haus$t$, false, 2),
    (v_q, $t$Sie ruft die Eltern$t$, false, 3),
    (v_q, $t$Sie läuft weg$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie fühlt sich Mia am Ende des Pfades?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Ein bisschen enttäuscht, weil es keine echte Hexe gibt$t$, true, 1),
    (v_q, $t$Sehr ängstlich$t$, false, 2),
    (v_q, $t$Wütend auf ihre Eltern$t$, false, 3),
    (v_q, $t$Gelangweilt$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was versteht Mia am Ende über die Bedeutung von Märchen?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Dass sie früher halfen, mit Angst und Armut umzugehen$t$, true, 1),
    (v_q, $t$Dass sie nur für kleine Kinder gemacht wurden$t$, false, 2),
    (v_q, $t$Dass sie historisch nicht wichtig sind$t$, false, 3),
    (v_q, $t$Dass sie immer ein glückliches Ende brauchen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'jemanden aussetzen'?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Jemanden allein an einem Ort zurücklassen$t$, true, 1),
    (v_q, $t$Jemanden einladen$t$, false, 2),
    (v_q, $t$Jemanden trösten$t$, false, 3),
    (v_q, $t$Jemanden loben$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welches Wort passt: Die Eltern haben die Kinder im Wald ___.$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$ausgesetzt$t$, true, 1),
    (v_q, $t$eingeladen$t$, false, 2),
    (v_q, $t$besucht$t$, false, 3),
    (v_q, $t$gefunden$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welcher Satz verwendet 'aussetzen' korrekt im Sinn des Märchens?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Die armen Eltern setzten ihre Kinder im Wald aus.$t$, true, 1),
    (v_q, $t$Die Kinder setzten die Eltern im Wald aus.$t$, false, 2),
    (v_q, $t$Die Hexe setzte sich in den Ofen aus.$t$, false, 3),
    (v_q, $t$Der Wald wurde von den Kindern ausgesetzt.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Ergänzen Sie: Die Eltern setzten die Kinder aus, ___ sie zu arm waren.$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$weil$t$, true, 1),
    (v_q, $t$obwohl$t$, false, 2),
    (v_q, $t$damit$t$, false, 3),
    (v_q, $t$bevor$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wählen Sie den richtigen Satz mit 'um...zu'.$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Man muss mutig sein, um Gefahren zu überwinden.$t$, true, 1),
    (v_q, $t$Man muss mutig sein, um Gefahren überwinden.$t$, false, 2),
    (v_q, $t$Man muss mutig sein, für Gefahren zu überwinden.$t$, false, 3),
    (v_q, $t$Man muss mutig, um Gefahren zu überwinden sein.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welcher Satz bildet korrekt einen Nebensatz mit 'weil' im Präteritum?$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Mia war traurig, weil es keine echte Hexe gab.$t$, true, 1),
    (v_q, $t$Mia war traurig, weil es keine echte Hexe gibt.$t$, false, 2),
    (v_q, $t$Mia war traurig, weil gab es keine echte Hexe.$t$, false, 3),
    (v_q, $t$Mia war traurig, weil keine echte Hexe war es.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$Schreiben Sie in 5-7 Sätzen über ein Märchen, das Sie als Kind gehört haben, und erklären Sie, welche Botschaft es vermittelt.$t$, 1, 'normal', 'production', $t$Als Kind habe ich oft das Märchen von Rotkäppchen gehört. Ein kleines Mädchen geht durch den Wald, um seine kranke Großmutter zu besuchen, aber ein Wolf will es täuschen. Am Ende rettet ein Jäger sowohl Rotkäppchen als auch die Großmutter. Ich glaube, das Märchen zeigt, dass man vorsichtig sein muss, wenn man Fremden vertraut. Es lehrt Kinder auch, auf die Warnungen der Erwachsenen zu hören. Heute finde ich die Geschichte manchmal ein bisschen naiv, aber die Botschaft bleibt wichtig. Deshalb erzähle ich das Märchen gerne weiter.$t$);

END $block$;

-- 20. Die Kuckucksuhr im Schwarzwald
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary) VALUES (
    'B1',
    $t$Die Kuckucksuhr im Schwarzwald$t$,
    $t$David reist mit seiner Freundin durch den Schwarzwald und besucht eine kleine Werkstatt, in der Kuckucksuhren hergestellt werden. Der Besitzer, Herr Bühler, arbeitet seit über dreißig Jahren als Uhrmacher. Er zeigt den beiden, wie eine Kuckucksuhr von Hand gebaut wird.

Zuerst schnitzt Herr Bühler die Holzteile: Blätter, Vögel und manchmal ganze Häuser. Dann baut er das Uhrwerk ein, das den kleinen Kuckuck jede Stunde aus seiner Tür fliegen lässt. David fragt, seit wann es diese Uhren gibt. Herr Bühler erklärt, dass die ersten Kuckucksuhren im 18. Jahrhundert im Schwarzwald hergestellt wurden, weil die Bauern im Winter, wenn sie nicht auf den Feldern arbeiten konnten, eine zusätzliche Einnahmequelle brauchten.

David ist überrascht, wie viel Arbeit in einer einzigen Uhr steckt. Herr Bühler sagt, dass eine große, kunstvolle Uhr manchmal mehrere Wochen dauert, bis sie fertig ist. Jedes Stück wird noch heute von Hand geschnitzt, auch wenn manche Teile inzwischen mit Maschinen vorbereitet werden.

Am Ende der Führung darf David selbst an einem kleinen Uhrwerk arbeiten. Es ist schwieriger, als er dachte – seine Finger sind zu ungeschickt für die winzigen Teile. Trotzdem kauft seine Freundin eine kleine Kuckucksuhr als Souvenir. Als sie die Werkstatt verlassen, hören sie hinter sich schon den ersten Kuckuck rufen. David denkt, dass er dieses alte Handwerk nie vergessen wird.$t$,
    $t$David voyage avec sa petite amie à travers la Forêt-Noire et visite un petit atelier où l'on fabrique des coucous. Le propriétaire, monsieur Bühler, travaille depuis plus de trente ans comme horloger. Il montre aux deux comment une horloge à coucou est fabriquée à la main.

D'abord, monsieur Bühler sculpte les pièces en bois : des feuilles, des oiseaux et parfois des maisons entières. Ensuite, il installe le mécanisme d'horlogerie qui fait sortir le petit coucou de sa porte chaque heure. David demande depuis quand existent ces horloges. Monsieur Bühler explique que les premières horloges à coucou ont été fabriquées au XVIIIe siècle dans la Forêt-Noire, parce que les paysans, l'hiver, quand ils ne pouvaient pas travailler aux champs, avaient besoin d'une source de revenus supplémentaire.

David est surpris de la quantité de travail que représente une seule horloge. Monsieur Bühler dit qu'une grande horloge élaborée demande parfois plusieurs semaines avant d'être terminée. Chaque pièce est encore sculptée à la main aujourd'hui, même si certaines parties sont désormais préparées avec des machines.

À la fin de la visite, David a le droit de travailler lui-même sur un petit mécanisme. C'est plus difficile qu'il ne le pensait – ses doigts sont trop maladroits pour les minuscules pièces. Sa petite amie achète quand même une petite horloge à coucou en souvenir. En quittant l'atelier, ils entendent déjà derrière eux le premier coucou chanter. David pense qu'il n'oubliera jamais cet ancien artisanat.$t$,
    $t${"David":"David","reist":"voyage","mit":"avec","seiner":"sa","Freundin":"petite amie","durch":"à travers","den":"le","Schwarzwald":"Forêt-Noire","und":"et","besucht":"visite","eine":"une","kleine":"petit","Werkstatt":"atelier","in der":"où","Kuckucksuhren":"horloges à coucou","hergestellt werden":"sont fabriquées","Der Besitzer":"le propriétaire","Herr":"monsieur","Bühler":"Bühler","arbeitet":"travaille","seit":"depuis","über":"plus de","dreißig":"trente","Jahren":"ans","als":"en","Uhrmacher":"horloger","zeigt":"montre","den beiden":"aux deux","wie":"comment","Kuckucksuhr":"horloge à coucou","von Hand":"à la main","gebaut wird":"est fabriquée","Zuerst":"d'abord","schnitzt":"sculpte","die":"l'","Holzteile":"pièces en bois","Blätter":"feuilles","Vögel":"oiseaux","manchmal":"parfois","ganze":"entières","Häuser":"maisons","Dann":"ensuite","baut":"installe","ein":"installe","das":"le","Uhrwerk":"mécanisme d'horlogerie","kleinen":"petit","Kuckuck":"coucou","jede":"chaque","Stunde":"heure","aus":"de","Tür":"porte","fliegen lässt":"fait sortir","fragt":"demande","seit wann":"depuis quand","es":"il","diese":"ces","Uhren":"horloges","gibt":"existe","erklärt":"explique","dass":"que","ersten":"premières","im":"au","Jahrhundert":"siècle","hergestellt wurden":"ont été fabriquées","weil":"parce que","Bauern":"paysans","im Winter":"l'hiver","wenn":"quand","sie":"elle","nicht":"pas","auf den Feldern":"aux champs","arbeiten konnten":"pouvaient travailler","zusätzliche":"supplémentaire","Einnahmequelle":"source de revenus","brauchten":"avaient besoin","ist":"est","überrascht":"surpris","wie viel":"combien de","Arbeit":"travail","in":"dans","einer":"une","einzigen":"seule","Uhr":"horloge","steckt":"représente","sagt":"dit","große":"grande","kunstvolle":"élaborée","mehrere":"plusieurs","Wochen":"semaines","dauert":"demande","bis":"avant que","fertig ist":"soit terminée","Jedes":"chaque","Stück":"pièce","wird":"est","noch heute":"encore aujourd'hui","geschnitzt":"sculptée","auch wenn":"même si","manche":"certaines","Teile":"parties","inzwischen":"désormais","Maschinen":"machines","vorbereitet werden":"sont préparées","Am Ende":"à la fin","der":"de la","Führung":"visite","darf":"a le droit","selbst":"lui-même","an":"sur","einem":"un","arbeiten":"travailler","Es ist":"c'est","schwieriger":"plus difficile","dachte":"pensait","seine":"ses","Finger":"doigts","zu ungeschickt":"trop maladroits","für":"pour","winzigen":"minuscules","Trotzdem":"quand même","kauft":"achète","Souvenir":"souvenir","Als":"quand","verlassen":"quittant","hören sie":"ils entendent","hinter sich":"derrière eux","schon":"déjà","den ersten":"le premier","rufen":"chanter","denkt":"pense","er":"il","dieses":"cet","alte":"ancien","Handwerk":"artisanat","nie":"jamais","vergessen wird":"oubliera","hergestellt":"fabriqué","werden":"devenir/être","Der":"le","Besitzer":"propriétaire","Er":"il","beiden":"deux","von":"de","Hand":"main","gebaut":"construit","fliegen":"voler","lässt":"laisse","wann":"quand","wurden":"ont été","Winter":"hiver","auf":"sur","Feldern":"champs","konnten":"pouvaient","viel":"beaucoup","fertig":"terminé","noch":"encore","heute":"aujourd'hui","auch":"aussi","vorbereitet":"préparé","Am":"le","Ende":"fin","Es":"il","sind":"sont","zu":"à/de","ungeschickt":"maladroit","hören":"entendre","hinter":"derrière","sich":"se","vergessen":"oublier"}$t$::jsonb
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wo befindet sich die Werkstatt?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Im Schwarzwald$t$, true, 1),
    (v_q, $t$In Berlin$t$, false, 2),
    (v_q, $t$An der Ostsee$t$, false, 3),
    (v_q, $t$In den Alpen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was macht Herr Bühler seit über dreißig Jahren?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er arbeitet als Uhrmacher$t$, true, 1),
    (v_q, $t$Er ist Bauer$t$, false, 2),
    (v_q, $t$Er ist Lehrer$t$, false, 3),
    (v_q, $t$Er reist durch Deutschland$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was zeigt der Besuch der Werkstatt über das Handwerk der Kuckucksuhren?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Es ist eine Tradition, die noch heute von Hand fortgeführt wird$t$, true, 1),
    (v_q, $t$Es wird nur noch von Maschinen gemacht$t$, false, 2),
    (v_q, $t$Es ist eine moderne Erfindung$t$, false, 3),
    (v_q, $t$Es wird nur im Sommer ausgeübt$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wann wurden die ersten Kuckucksuhren hergestellt?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Im 18. Jahrhundert$t$, true, 1),
    (v_q, $t$Im 20. Jahrhundert$t$, false, 2),
    (v_q, $t$Im Mittelalter$t$, false, 3),
    (v_q, $t$Im 21. Jahrhundert$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum begannen Bauern im Schwarzwald, Kuckucksuhren herzustellen?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie brauchten im Winter eine zusätzliche Einnahmequelle$t$, true, 1),
    (v_q, $t$Sie wollten die Zeit besser messen$t$, false, 2),
    (v_q, $t$Der König befahl es$t$, false, 3),
    (v_q, $t$Sie hatten zu viel freie Zeit im Sommer$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was lässt sich über die wirtschaftliche Situation der Bauern im Schwarzwald schließen?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie mussten im Winter zusätzliches Geld verdienen, weil die Feldarbeit ruhte$t$, true, 1),
    (v_q, $t$Sie waren im Winter reicher als im Sommer$t$, false, 2),
    (v_q, $t$Sie arbeiteten das ganze Jahr auf den Feldern$t$, false, 3),
    (v_q, $t$Sie verkauften nur im Sommer Uhren$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was kauft Davids Freundin?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Eine kleine Kuckucksuhr$t$, true, 1),
    (v_q, $t$Ein Buch$t$, false, 2),
    (v_q, $t$Einen Hut$t$, false, 3),
    (v_q, $t$Ein Bild$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum fällt es David schwer, selbst an einem Uhrwerk zu arbeiten?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Die Teile sind sehr klein und schwierig zu handhaben$t$, true, 1),
    (v_q, $t$Er hat keine Zeit$t$, false, 2),
    (v_q, $t$Herr Bühler erlaubt es nicht$t$, false, 3),
    (v_q, $t$Er interessiert sich nicht dafür$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was zeigt Davids Gedanke am Ende der Geschichte?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Dass ihn der Besuch beeindruckt und nachdenklich gemacht hat$t$, true, 1),
    (v_q, $t$Dass er das Handwerk langweilig fand$t$, false, 2),
    (v_q, $t$Dass er selbst Uhrmacher werden will$t$, false, 3),
    (v_q, $t$Dass er die Werkstatt nicht wieder besuchen möchte$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'schnitzen'?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Mit einem Messer eine Form aus Holz machen$t$, true, 1),
    (v_q, $t$Kochen$t$, false, 2),
    (v_q, $t$Malen mit Farbe$t$, false, 3),
    (v_q, $t$Nähen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welches Wort passt: Herr Bühler ___ die Holzteile für die Uhr.$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$schnitzt$t$, true, 1),
    (v_q, $t$kocht$t$, false, 2),
    (v_q, $t$malt$t$, false, 3),
    (v_q, $t$näht$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welcher Satz verwendet 'schnitzen' korrekt?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Der Uhrmacher schnitzt die kleinen Vögel aus Holz.$t$, true, 1),
    (v_q, $t$Der Uhrmacher schnitzt das Wasser in die Uhr.$t$, false, 2),
    (v_q, $t$Die Uhr schnitzt jede Stunde.$t$, false, 3),
    (v_q, $t$Der Kuckuck schnitzt aus der Tür.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Ergänzen Sie: Die Uhren ___ von Hand hergestellt.$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$werden$t$, true, 1),
    (v_q, $t$sind$t$, false, 2),
    (v_q, $t$haben$t$, false, 3),
    (v_q, $t$wurden$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wählen Sie den richtigen Passivsatz im Präteritum.$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Die ersten Kuckucksuhren wurden im 18. Jahrhundert hergestellt.$t$, true, 1),
    (v_q, $t$Die ersten Kuckucksuhren werden im 18. Jahrhundert hergestellt.$t$, false, 2),
    (v_q, $t$Die ersten Kuckucksuhren haben im 18. Jahrhundert hergestellt.$t$, false, 3),
    (v_q, $t$Die ersten Kuckucksuhren sind im 18. Jahrhundert herstellt.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welcher Satz zeigt korrekt das Passiv mit Modalverb?$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Jedes Stück muss von Hand geschnitzt werden.$t$, true, 1),
    (v_q, $t$Jedes Stück muss von Hand schnitzen.$t$, false, 2),
    (v_q, $t$Jedes Stück wird von Hand schnitzen müssen.$t$, false, 3),
    (v_q, $t$Jedes Stück hat von Hand geschnitzt werden müssen.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$Beschreiben Sie in 5-7 Sätzen ein traditionelles Handwerk aus Ihrer Region und wie es hergestellt wird.$t$, 1, 'normal', 'production', $t$In meiner Region gibt es eine lange Tradition der Töpferei. Handwerker formen aus Ton verschiedene Gefäße wie Schüsseln, Vasen und Teller. Zuerst wird der Ton auf einer Drehscheibe geformt, dann muss er trocknen. Danach wird das Objekt in einem heißen Ofen gebrannt, damit es hart wird. Am Ende bemalen die Handwerker die Stücke oft mit bunten Farben. Diese Technik wird seit Generationen von Familie zu Familie weitergegeben. Ich finde es faszinierend, wie viel Geschick für dieses alte Handwerk nötig ist.$t$);

END $block$;

-- 21. Die unsichtbaren Strahlen
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary) VALUES (
    'B1',
    $t$Die unsichtbaren Strahlen$t$,
    $t$Für ihr Physikreferat recherchiert die Schülerin Elif über Wilhelm Conrad Röntgen, den Entdecker der Röntgenstrahlen. Sie besucht die Bibliothek und findet ein altes Buch über sein Leben. Röntgen wurde 1845 geboren und arbeitete als Physikprofessor in Würzburg.

Elif liest, dass Röntgen im November 1895 in seinem Labor mit einer Kathodenstrahlröhre experimentierte. Dabei bemerkte er zufällig, dass ein Schirm im Raum leuchtete, obwohl die Röhre mit schwarzem Papier abgedeckt war. Er verstand, dass unsichtbare Strahlen durch das Papier gedrungen sein mussten. In den folgenden Wochen untersuchte er dieses Phänomen genau und entdeckte, dass diese Strahlen sogar durch menschliches Gewebe dringen können, aber nicht durch Knochen.

Als Beweis machte Röntgen ein Bild von der Hand seiner Frau. Auf dem Bild konnte man deutlich die Knochen und sogar ihren Ring sehen. Seine Frau soll erschrocken gesagt haben, sie habe ihren eigenen Tod gesehen. Diese Entdeckung veränderte die Medizin für immer, weil Ärzte nun zum ersten Mal ins Innere des Körpers schauen konnten, ohne zu operieren.

Elif findet es beeindruckend, dass Röntgen 1901 den ersten Nobelpreis für Physik bekam, aber sein Patent nie verkaufen wollte. Er glaubte, seine Entdeckung solle allen Menschen frei zur Verfügung stehen. Für ihr Referat notiert sich Elif diesen Satz besonders: Wissenschaft, so denkt sie, sollte der ganzen Menschheit dienen.$t$,
    $t$Pour son exposé de physique, l'élève Elif fait des recherches sur Wilhelm Conrad Röntgen, le découvreur des rayons X. Elle visite la bibliothèque et trouve un vieux livre sur sa vie. Röntgen est né en 1845 et travaillait comme professeur de physique à Wurtzbourg.

Elif lit que Röntgen expérimentait en novembre 1895 dans son laboratoire avec un tube à rayons cathodiques. Il a remarqué par hasard qu'un écran dans la pièce s'illuminait, bien que le tube fût recouvert de papier noir. Il a compris que des rayons invisibles avaient dû traverser le papier. Au cours des semaines suivantes, il a étudié précisément ce phénomène et a découvert que ces rayons pouvaient même traverser les tissus humains, mais pas les os.

Comme preuve, Röntgen a fait une image de la main de sa femme. Sur l'image, on pouvait voir clairement les os et même sa bague. Sa femme aurait dit, effrayée, qu'elle avait vu sa propre mort. Cette découverte a changé la médecine pour toujours, parce que les médecins pouvaient désormais pour la première fois regarder à l'intérieur du corps sans opérer.

Elif trouve impressionnant que Röntgen ait reçu en 1901 le premier prix Nobel de physique, mais qu'il n'ait jamais voulu vendre son brevet. Il croyait que sa découverte devait être mise gratuitement à la disposition de tous les hommes. Pour son exposé, Elif note particulièrement cette phrase : la science, pense-t-elle, devrait servir toute l'humanité.$t$,
    $t${"Für":"pour","ihr":"son","Physikreferat":"exposé de physique","recherchiert":"fait des recherches","die":"l'","Schülerin":"élève","Elif":"Elif","über":"sur","Wilhelm Conrad Röntgen":"Wilhelm Conrad Röntgen","den":"le","Entdecker":"découvreur","der":"la","Röntgenstrahlen":"rayons X","besucht":"visite","Bibliothek":"bibliothèque","findet":"trouve","ein":"une","altes":"vieux","Buch":"livre","sein":"son","Leben":"vie","wurde":"est né","geboren":"né","arbeitete":"travaillait","als":"comme","Physikprofessor":"professeur de physique","in":"à","Würzburg":"Wurtzbourg","liest":"lit","dass":"que","im":"dans la","November":"novembre","seinem":"son","Labor":"laboratoire","mit":"de","einer":"un","Kathodenstrahlröhre":"tube à rayons cathodiques","experimentierte":"expérimentait","Dabei":"ce faisant","bemerkte":"a remarqué","zufällig":"par hasard","Schirm":"écran","Raum":"pièce","leuchtete":"s'illuminait","obwohl":"bien que","Röhre":"tube","schwarzem":"noir","Papier":"papier","abgedeckt war":"était recouvert","verstand":"a compris","unsichtbare":"invisibles","Strahlen":"rayons","durch":"à travers","das":"le","gedrungen sein mussten":"avaient dû pénétrer","In":"au cours de","folgenden":"suivantes","Wochen":"semaines","untersuchte":"a étudié","er":"il","dieses":"ce","Phänomen":"phénomène","genau":"précisément","entdeckte":"a découvert","diese":"ces","sogar":"même","menschliches":"humain","Gewebe":"tissu","dringen können":"pouvaient traverser","aber":"mais","nicht":"pas","Knochen":"os","Als":"comme","Beweis":"preuve","machte":"a fait","Bild":"image","von":"de","Hand":"main","seiner":"sa","Frau":"femme","Auf dem Bild":"sur l'image","konnte man":"on pouvait","deutlich":"clairement","sehen":"voir","ihren":"sa","Ring":"bague","soll":"aurait","erschrocken":"effrayée","gesagt haben":"dit","sie habe":"elle avait","ihren eigenen Tod":"sa propre mort","gesehen":"vu","Diese Entdeckung":"cette découverte","veränderte":"a changé","Medizin":"médecine","für immer":"pour toujours","weil":"parce que","Ärzte":"médecins","nun":"désormais","zum ersten Mal":"pour la première fois","ins Innere":"à l'intérieur","des":"du","Körpers":"corps","schauen konnten":"pouvaient regarder","ohne":"sans","zu operieren":"opérer","beeindruckend":"impressionnant","ersten":"premier","Nobelpreis":"prix Nobel","für":"de","Physik":"physique","bekam":"a reçu","Patent":"brevet","nie":"jamais","verkaufen wollte":"n'a voulu vendre","glaubte":"croyait","seine":"sa","Entdeckung":"découverte","solle":"devait","allen":"à tous","Menschen":"hommes","frei":"gratuitement","zur Verfügung stehen":"être mise à disposition","notiert sich":"note","diesen":"cette","Satz":"phrase","besonders":"particulièrement","Wissenschaft":"science","so denkt sie":"pense-t-elle","sollte":"devrait","der ganzen":"toute l'","Menschheit":"humanité","dienen":"servir","Wilhelm":"Wilhelm","Conrad":"Conrad","Röntgen":"Röntgen","Sie":"elle/ils","und":"et","abgedeckt":"recouvert","war":"était","Er":"il","gedrungen":"pénétré","mussten":"devaient","dringen":"pénétrer","können":"pouvoir","Auf":"sur","dem":"le/à","konnte":"pouvait","man":"on","Seine":"sa","gesagt":"dit","haben":"avoir","sie":"elle/ils","habe":"ait","eigenen":"propre","Tod":"mort","Diese":"cette","immer":"toujours","zum":"au","Mal":"fois","Innere":"intérieur","schauen":"regarder","konnten":"pouvaient","zu":"à/de","operieren":"opérer","es":"il/cela","verkaufen":"vendre","wollte":"voulait","zur":"à la","Verfügung":"disposition","stehen":"se tenir","Referat":"exposé","notiert":"note","sich":"se","so":"si","denkt":"pense","ganzen":"entier","ins":"à l'"}$t$::jsonb
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wer ist Wilhelm Conrad Röntgen?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Ein Entdecker der Röntgenstrahlen$t$, true, 1),
    (v_q, $t$Ein Musiker$t$, false, 2),
    (v_q, $t$Ein Politiker$t$, false, 3),
    (v_q, $t$Ein Schriftsteller$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wo arbeitete Röntgen als Physikprofessor?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$In Würzburg$t$, true, 1),
    (v_q, $t$In Berlin$t$, false, 2),
    (v_q, $t$In München$t$, false, 3),
    (v_q, $t$In Hamburg$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum recherchiert Elif über Röntgen?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Für ihr Physikreferat in der Schule$t$, true, 1),
    (v_q, $t$Weil sie ihn persönlich kannte$t$, false, 2),
    (v_q, $t$Weil sie Medizin studieren will$t$, false, 3),
    (v_q, $t$Weil ihre Lehrerin ihn empfohlen hat$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was entdeckte Röntgen 1895?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Unsichtbare Strahlen, die durch Papier dringen$t$, true, 1),
    (v_q, $t$Eine neue Krankheit$t$, false, 2),
    (v_q, $t$Ein neues Medikament$t$, false, 3),
    (v_q, $t$Einen neuen Planeten$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wovon machte Röntgen ein berühmtes erstes Bild?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Von der Hand seiner Frau$t$, true, 1),
    (v_q, $t$Von seinem eigenen Kopf$t$, false, 2),
    (v_q, $t$Von einem Tier$t$, false, 3),
    (v_q, $t$Von einem Stein$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum war Röntgens Entdeckung so bedeutend für die Medizin?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Weil Ärzte nun ohne Operation ins Innere des Körpers schauen konnten$t$, true, 1),
    (v_q, $t$Weil sie Krankheiten sofort heilte$t$, false, 2),
    (v_q, $t$Weil sie nur bei Knochenbrüchen half$t$, false, 3),
    (v_q, $t$Weil sie die Chirurgie überflüssig machte$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wann bekam Röntgen den Nobelpreis?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$1901$t$, true, 1),
    (v_q, $t$1895$t$, false, 2),
    (v_q, $t$1845$t$, false, 3),
    (v_q, $t$1920$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was wollte Röntgen mit seiner Entdeckung nicht tun?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie als Patent verkaufen$t$, true, 1),
    (v_q, $t$Sie veröffentlichen$t$, false, 2),
    (v_q, $t$Sie Ärzten zeigen$t$, false, 3),
    (v_q, $t$Sie weiter erforschen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was zeigt Röntgens Entscheidung, sein Patent nicht zu verkaufen?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er glaubte, Wissenschaft solle allen Menschen dienen$t$, true, 1),
    (v_q, $t$Er hatte kein Interesse an Geld$t$, false, 2),
    (v_q, $t$Er wollte allein berühmt sein$t$, false, 3),
    (v_q, $t$Er hatte Angst vor Konkurrenz$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'dringen durch etwas'?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Durch etwas hindurchgehen$t$, true, 1),
    (v_q, $t$Etwas zerstören$t$, false, 2),
    (v_q, $t$Etwas kaufen$t$, false, 3),
    (v_q, $t$Etwas verstecken$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welches Wort passt: Die Strahlen können durch das Gewebe ___, aber nicht durch Knochen.$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$dringen$t$, true, 1),
    (v_q, $t$fliegen$t$, false, 2),
    (v_q, $t$schwimmen$t$, false, 3),
    (v_q, $t$laufen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welcher Satz verwendet 'dringen' korrekt im Kontext der Röntgenstrahlen?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Die unsichtbaren Strahlen drangen durch das schwarze Papier.$t$, true, 1),
    (v_q, $t$Die unsichtbaren Strahlen drangen das Papier.$t$, false, 2),
    (v_q, $t$Das Papier drang durch die Strahlen.$t$, false, 3),
    (v_q, $t$Die Strahlen wurden gedrungen.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Ergänzen Sie: Ärzte ___ nun ins Innere des Körpers schauen.$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$konnten$t$, true, 1),
    (v_q, $t$können$t$, false, 2),
    (v_q, $t$mussten$t$, false, 3),
    (v_q, $t$sollten$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wählen Sie die richtige Perfektform: Röntgen ___ die unsichtbaren Strahlen ___.$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$hat / entdeckt$t$, true, 1),
    (v_q, $t$ist / entdeckt$t$, false, 2),
    (v_q, $t$hat / entdeckte$t$, false, 3),
    (v_q, $t$war / entdeckt$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welcher Satz bildet korrekt das Plusquamperfekt?$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er verstand, dass die Strahlen durch das Papier gedrungen waren.$t$, true, 1),
    (v_q, $t$Er verstand, dass die Strahlen durch das Papier drangen waren.$t$, false, 2),
    (v_q, $t$Er verstand, dass die Strahlen durch das Papier hatten gedrungen.$t$, false, 3),
    (v_q, $t$Er verstand, dass die Strahlen durch das Papier sind gedrungen.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$Schreiben Sie in 5-7 Sätzen über eine wissenschaftliche Entdeckung, die Sie interessant finden, und erklären Sie, warum sie wichtig ist.$t$, 1, 'normal', 'production', $t$Ich finde die Entdeckung des Penizillins durch Alexander Fleming besonders interessant. Fleming bemerkte zufällig, dass ein Schimmelpilz Bakterien in einer Petrischale abtötete. Aus dieser Beobachtung entwickelte er das erste wirksame Antibiotikum der Welt. Diese Entdeckung rettete danach Millionen von Menschenleben, weil viele Infektionen plötzlich heilbar wurden. Ich finde es faszinierend, dass ein Zufall eine so wichtige Erfindung auslösen kann. Für mich zeigt diese Geschichte, wie wichtig genaue Beobachtung in der Wissenschaft ist. Deshalb bewundere ich Forscher, die auch kleine Details ernst nehmen.$t$);

END $block$;

-- 22. Ein Nachmittag im Zeppelin-Museum
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary) VALUES (
    'B1',
    $t$Ein Nachmittag im Zeppelin-Museum$t$,
    $t$Marco reist mit seiner Klasse an den Bodensee, um das Zeppelin-Museum in Friedrichshafen zu besuchen. Er weiß schon, dass hier Graf Ferdinand von Zeppelin am Ende des 19. Jahrhunderts seine ersten Luftschiffe gebaut hat. Im Museum steht ein Teil eines echten Zeppelins, den die Besucher betreten dürfen.

Ein Museumsmitarbeiter erklärt der Klasse, wie ein Zeppelin funktioniert: Ein riesiges Gerüst aus Aluminium wird mit Gas gefüllt, das leichter ist als Luft, sodass das Luftschiff aufsteigen kann. Marco ist erstaunt, dass so ein Luftschiff über 200 Meter lang sein konnte – fast so lang wie zwei Fußballfelder.

Die Klasse erfährt auch von der Geschichte der „Hindenburg", des berühmtesten Zeppelins. Dieses Luftschiff transportierte Passagiere sogar über den Atlantik, bis es 1937 bei der Landung in den USA Feuer fing und zerstört wurde. Nach diesem Unglück verloren die Menschen das Vertrauen in Luftschiffe, und das Flugzeug wurde für lange Reisen wichtiger.

Marco findet es spannend, dass man in einem Zeppelin viel ruhiger und leiser reisen konnte als in einem Flugzeug. Am Ende des Besuchs darf die Klasse in einem Simulator sitzen, der zeigt, wie sich eine Zeppelinreise angefühlt haben muss. Marco schreibt in sein Heft: Auch wenn die Zeppelin-Ära vorbei ist, war sie ein wichtiger Schritt in der Geschichte der Luftfahrt.$t$,
    $t$Marco voyage avec sa classe au lac de Constance pour visiter le musée Zeppelin à Friedrichshafen. Il sait déjà que c'est ici que le comte Ferdinand von Zeppelin a construit ses premiers dirigeables à la fin du XIXe siècle. Au musée se trouve une partie d'un véritable Zeppelin, que les visiteurs ont le droit d'y entrer.

Un employé du musée explique à la classe comment fonctionne un Zeppelin : une énorme structure en aluminium est remplie de gaz plus léger que l'air, de sorte que le dirigeable peut s'élever. Marco est étonné qu'un tel dirigeable puisse mesurer plus de 200 mètres de long – presque comme deux terrains de football.

La classe apprend aussi l'histoire du « Hindenburg », le plus célèbre des Zeppelins. Ce dirigeable transportait même des passagers à travers l'Atlantique, jusqu'à ce qu'il prenne feu en 1937 lors de l'atterrissage aux États-Unis et soit détruit. Après cet accident, les gens ont perdu confiance dans les dirigeables, et l'avion est devenu plus important pour les longs voyages.

Marco trouve passionnant qu'on pouvait voyager en Zeppelin de manière beaucoup plus calme et silencieuse qu'en avion. À la fin de la visite, la classe a le droit de s'asseoir dans un simulateur qui montre comment un voyage en Zeppelin a dû se ressentir. Marco écrit dans son cahier : même si l'ère des Zeppelins est terminée, elle a été une étape importante dans l'histoire de l'aviation.$t$,
    $t${"Marco":"Marco","reist":"voyage","mit":"de","seiner":"sa","Klasse":"classe","an":"à","den":"l'","Bodensee":"lac de Constance","um":"pour","das":"qui","Zeppelin-Museum":"musée Zeppelin","in":"dans","Friedrichshafen":"Friedrichshafen","zu besuchen":"visiter","Er":"il","weiß":"sait","schon":"déjà","dass":"que","hier":"ici","Graf":"comte","Ferdinand von Zeppelin":"Ferdinand von Zeppelin","am Ende":"à la fin","des":"le","Jahrhunderts":"siècle","seine":"ses","ersten":"premiers","Luftschiffe":"dirigeables","gebaut hat":"a construits","Im Museum":"au musée","steht":"se trouve","ein Teil":"une partie","eines":"d'un","echten":"véritable","Zeppelins":"Zeppelin","die":"l'","Besucher":"visiteurs","betreten dürfen":"ont le droit d'entrer","Ein":"un","Museumsmitarbeiter":"employé du musée","erklärt":"explique","wie":"comment","funktioniert":"fonctionne","ein":"une","riesiges":"énorme","Gerüst":"structure","aus":"en","Aluminium":"aluminium","wird":"est","Gas":"gaz","gefüllt":"remplie","leichter ist als":"est plus léger que","Luft":"air","sodass":"de sorte que","das Luftschiff":"le dirigeable","aufsteigen kann":"peut s'élever","ist":"est","erstaunt":"étonné","so ein":"un tel","über":"à travers","Meter":"mètres","lang sein konnte":"pouvait être long","fast so lang wie":"presque aussi long que","zwei":"deux","Fußballfelder":"terrains de football","erfährt":"apprend","auch":"aussi","von der":"de l'","Geschichte":"histoire","der":"de l'","Hindenburg":"Hindenburg","berühmtesten":"plus célèbre","Dieses Luftschiff":"ce dirigeable","transportierte":"transportait","Passagiere":"passagers","sogar":"même","Atlantik":"Atlantique","bis":"jusqu'à ce que","es":"il","bei":"lors de","Landung":"atterrissage","USA":"États-Unis","Feuer fing":"prenne feu","zerstört wurde":"soit détruit","Nach diesem Unglück":"après cet accident","verloren":"ont perdu","Menschen":"gens","das Vertrauen":"la confiance","und":"et","das Flugzeug":"l'avion","wurde":"est devenu","für":"pour","lange":"longs","Reisen":"voyages","wichtiger":"importante","findet":"trouve","spannend":"passionnant","man":"on","viel":"beaucoup","ruhiger":"plus calmement","leiser":"plus silencieusement","reisen konnte":"pouvait voyager","als":"que","in einem Flugzeug":"en avion","Am Ende":"à la fin","des Besuchs":"de la visite","darf":"a le droit","einem":"un","Simulator":"simulateur","sitzen":"s'asseoir","zeigt":"montre","sich":"se","eine":"un","Zeppelinreise":"voyage en Zeppelin","angefühlt haben muss":"a dû se ressentir","schreibt":"écrit","sein":"son","Heft":"cahier","Auch wenn":"même si","Zeppelin-Ära":"ère des Zeppelins","vorbei ist":"est terminée","war":"a été","sie":"elle","Schritt":"étape","Luftfahrt":"aviation","zu":"à/de","besuchen":"visiter","Ferdinand":"Ferdinand","von":"de","Zeppelin":"Zeppelin","am":"le","Ende":"fin","gebaut":"construit","hat":"a","Im":"dans le","Museum":"musée","Teil":"partie","betreten":"entrer","dürfen":"avoir le droit","leichter":"plus léger","Luftschiff":"dirigeable","aufsteigen":"s'élever","kann":"peut","so":"si","lang":"long","konnte":"pouvait","fast":"presque","Die":"la/les","Dieses":"ce","Feuer":"feu","fing":"a pris","zerstört":"détruit","Nach":"après","diesem":"ce","Unglück":"accident","Vertrauen":"confiance","Flugzeug":"avion","reisen":"voyager","Am":"le","Besuchs":"de la visite","angefühlt":"ressenti","haben":"avoir","muss":"doit","Auch":"aussi","wenn":"quand","vorbei":"terminé"}$t$::jsonb
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wohin reist Marcos Klasse?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$An den Bodensee$t$, true, 1),
    (v_q, $t$An die Nordsee$t$, false, 2),
    (v_q, $t$In die Berge$t$, false, 3),
    (v_q, $t$Nach Berlin$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wer baute die ersten Luftschiffe in Friedrichshafen?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Graf Ferdinand von Zeppelin$t$, true, 1),
    (v_q, $t$Wilhelm Röntgen$t$, false, 2),
    (v_q, $t$Martin Luther$t$, false, 3),
    (v_q, $t$Ein unbekannter Ingenieur$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum steht das Museum gerade in Friedrichshafen?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Weil dort die ersten Zeppeline entwickelt wurden$t$, true, 1),
    (v_q, $t$Weil dort der größte Flughafen Deutschlands ist$t$, false, 2),
    (v_q, $t$Weil dort die Hindenburg landete$t$, false, 3),
    (v_q, $t$Weil die Stadt zufällig ausgewählt wurde$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Womit wird ein Zeppelin gefüllt, damit er aufsteigen kann?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Mit Gas, das leichter ist als Luft$t$, true, 1),
    (v_q, $t$Mit Wasser$t$, false, 2),
    (v_q, $t$Mit Sand$t$, false, 3),
    (v_q, $t$Mit heißer Luft$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie lang konnte ein Zeppelin sein?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Über 200 Meter$t$, true, 1),
    (v_q, $t$Über 20 Meter$t$, false, 2),
    (v_q, $t$Über 2000 Meter$t$, false, 3),
    (v_q, $t$Über 20 Kilometer$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was zeigt der Vergleich mit den Fußballfeldern im Text?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er soll die enorme Größe der Luftschiffe verdeutlichen$t$, true, 1),
    (v_q, $t$Er soll zeigen, dass Zeppeline Sportgeräte waren$t$, false, 2),
    (v_q, $t$Er soll die Geschwindigkeit der Zeppeline erklären$t$, false, 3),
    (v_q, $t$Er ist historisch nicht korrekt$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was geschah 1937 mit der Hindenburg?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie fing bei der Landung Feuer$t$, true, 1),
    (v_q, $t$Sie flog um die Welt$t$, false, 2),
    (v_q, $t$Sie wurde verkauft$t$, false, 3),
    (v_q, $t$Sie wurde repariert$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was änderte sich nach dem Unglück der Hindenburg?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Die Menschen verloren das Vertrauen in Luftschiffe$t$, true, 1),
    (v_q, $t$Zeppeline wurden noch beliebter$t$, false, 2),
    (v_q, $t$Die Luftfahrt wurde verboten$t$, false, 3),
    (v_q, $t$Die Hindenburg wurde neu gebaut$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was drückt Marcos Notiz am Ende des Textes aus?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Dass die Zeppelin-Ära trotz ihres Endes historisch bedeutsam war$t$, true, 1),
    (v_q, $t$Dass Zeppeline eine Erfindung ohne Bedeutung waren$t$, false, 2),
    (v_q, $t$Dass Flugzeuge schon immer besser waren$t$, false, 3),
    (v_q, $t$Dass er selbst Pilot werden möchte$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'das Luftschiff'?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Ein Fahrzeug, das in der Luft fliegt und mit Gas gefüllt ist$t$, true, 1),
    (v_q, $t$Ein Schiff auf dem Wasser$t$, false, 2),
    (v_q, $t$Ein kleines Flugzeug$t$, false, 3),
    (v_q, $t$Ein Zug$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welches Wort passt: Graf Zeppelin baute die ersten ___ am Bodensee.$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Luftschiffe$t$, true, 1),
    (v_q, $t$Schiffe$t$, false, 2),
    (v_q, $t$Autos$t$, false, 3),
    (v_q, $t$Züge$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welcher Satz verwendet 'das Luftschiff' korrekt?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Das Luftschiff stieg auf, weil es mit leichtem Gas gefüllt war.$t$, true, 1),
    (v_q, $t$Das Luftschiff schwamm über den Bodensee.$t$, false, 2),
    (v_q, $t$Das Luftschiff fuhr auf Schienen.$t$, false, 3),
    (v_q, $t$Das Luftschiff wurde von Pferden gezogen.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Ergänzen Sie: Die Klasse ___ in einem Simulator sitzen.$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$durfte$t$, true, 1),
    (v_q, $t$musste$t$, false, 2),
    (v_q, $t$sollte$t$, false, 3),
    (v_q, $t$wollte$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wählen Sie den richtigen Satz mit 'bis'.$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Die Hindenburg transportierte Passagiere, bis sie 1937 zerstört wurde.$t$, true, 1),
    (v_q, $t$Die Hindenburg transportierte Passagiere, bis sie 1937 zerstört wird.$t$, false, 2),
    (v_q, $t$Die Hindenburg transportierte Passagiere, bis sie 1937 zerstört hat.$t$, false, 3),
    (v_q, $t$Die Hindenburg transportierte Passagiere, bis 1937 sie zerstört wurde.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welcher Satz zeigt korrekt das Passiv im Präteritum?$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Das Luftschiff wurde 1937 bei der Landung zerstört.$t$, true, 1),
    (v_q, $t$Das Luftschiff hat 1937 bei der Landung zerstört.$t$, false, 2),
    (v_q, $t$Das Luftschiff zerstörte 1937 bei der Landung.$t$, false, 3),
    (v_q, $t$Das Luftschiff ist 1937 bei der Landung zerstört.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$Beschreiben Sie in 5-7 Sätzen eine Erfindung, die die Art des Reisens verändert hat.$t$, 1, 'normal', 'production', $t$Die Erfindung des Flugzeugs hat die Art zu reisen völlig verändert. Vor dem Flugzeug dauerten Reisen über den Ozean mehrere Wochen mit dem Schiff. Heute kann man in wenigen Stunden einen anderen Kontinent erreichen. Diese Entwicklung hat den internationalen Handel und Tourismus stark gefördert. Auch Familien können sich heute leichter besuchen, auch wenn sie weit voneinander entfernt leben. Ich finde es beeindruckend, wie schnell sich die Technologie seit den ersten Flügen entwickelt hat. Ohne das Flugzeug wäre die Welt heute viel weniger vernetzt.$t$);

END $block$;

-- 23. Die ersten Wochen in Heidelberg
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary) VALUES (
    'B1',
    $t$Die ersten Wochen in Heidelberg$t$,
    $t$Anna zieht im Oktober nach Heidelberg, um dort Germanistik zu studieren. Die Ruprecht-Karls-Universität wurde bereits 1386 gegründet und ist damit die älteste Universität Deutschlands. Anna ist ein bisschen nervös, als sie zum ersten Mal die alten Gebäude in der Altstadt sieht.

In der ersten Woche nimmt sie an einer Führung durch das historische Studentenkarzer teil, einem alten Gefängnis für Studenten, die im 19. Jahrhundert wegen kleiner Vergehen wie zu lautem Feiern bestraft wurden. Die Wände sind voller alter Zeichnungen und Namen, die frühere Studenten dort hinterlassen haben. Anna findet es lustig, dass eine Strafe im Karzer damals fast wie eine Ehre galt.

Beim Erkunden der Stadt entdeckt Anna auch das Heidelberger Schloss, das hoch über der Stadt liegt. Von dort oben kann man die Altstadt und den Fluss Neckar sehen. Ihre Kommilitonin Julia erzählt ihr, dass viele berühmte Denker, darunter auch Philosophen und Dichter, einst durch diese Straßen gegangen sind.

In den ersten Vorlesungen ist Anna überrascht, wie viel Diskussion es zwischen Professoren und Studenten gibt. Sie muss sich erst daran gewöhnen, eigene Meinungen zu vertreten. Nach einem Monat fühlt sie sich schon viel sicherer. Sie hat neue Freunde gefunden und beginnt zu verstehen, warum so viele Menschen von der besonderen Atmosphäre dieser Universitätsstadt schwärmen.$t$,
    $t$Anna déménage en octobre à Heidelberg pour y étudier les études germaniques. L'université Ruprecht-Karls a été fondée dès 1386 et est ainsi la plus ancienne université d'Allemagne. Anna est un peu nerveuse quand elle voit pour la première fois les vieux bâtiments dans la vieille ville.

La première semaine, elle participe à une visite guidée de l'historique prison des étudiants, une vieille prison pour les étudiants qui, au XIXe siècle, étaient punis pour de petits délits comme faire trop de bruit en fêtant. Les murs sont couverts de vieux dessins et de noms que d'anciens étudiants y ont laissés. Anna trouve amusant qu'une punition dans cette prison passait à l'époque presque pour un honneur.

En explorant la ville, Anna découvre aussi le château de Heidelberg, qui se dresse au-dessus de la ville. De là-haut, on peut voir la vieille ville et la rivière Neckar. Sa camarade Julia lui raconte que de nombreux grands penseurs, parmi eux des philosophes et des poètes, ont autrefois marché dans ces rues.

Dans les premiers cours, Anna est surprise de la quantité de discussions entre professeurs et étudiants. Elle doit d'abord s'habituer à défendre ses propres opinions. Après un mois, elle se sent déjà beaucoup plus sûre d'elle. Elle s'est fait de nouveaux amis et commence à comprendre pourquoi tant de gens s'enthousiasment pour l'atmosphère particulière de cette ville universitaire.$t$,
    $t${"Anna":"Anna","zieht":"déménage","im":"dans","Oktober":"octobre","nach":"à","Heidelberg":"Heidelberg","um":"pour","dort":"y","Germanistik":"études germaniques","zu studieren":"étudier","Die":"l'","Ruprecht-Karls-Universität":"université Ruprecht-Karls","wurde":"a été","bereits":"dès","gegründet":"fondée","ist":"est","damit":"ainsi","die":"qui","älteste":"plus ancienne","Universität":"université","Deutschlands":"d'Allemagne","ein bisschen":"un peu","nervös":"nerveuse","als":"quand","zum ersten Mal":"pour la première fois","alten":"vieille","Gebäude":"bâtiments","in":"dans","Altstadt":"vieille ville","sieht":"voit","In":"dans","der":"la","ersten":"première","Woche":"semaine","nimmt":"participe","an":"à","einer":"une","Führung":"visite guidée","durch":"dans","das":"qui","historische":"historique","Studentenkarzer":"prison des étudiants","teil":"participe","einem":"un","Gefängnis":"prison","für":"pour","Studenten":"étudiants","Jahrhundert":"siècle","wegen":"pour","kleiner":"petits","Vergehen":"délits","wie":"comme","zu lautem":"trop bruyant","Feiern":"fêter","bestraft wurden":"étaient punis","Die Wände":"les murs","sind":"sont","voller":"couverts de","alter":"vieux","Zeichnungen":"dessins","Namen":"noms","frühere":"anciens","hinterlassen haben":"ont laissés","findet":"trouve","lustig":"amusant","dass":"que","eine":"un","Strafe":"punition","Karzer":"prison","damals":"à l'époque","fast wie":"presque comme","Ehre":"honneur","galt":"passait pour","Beim":"en","Erkunden":"explorant","Stadt":"ville","entdeckt":"découvre","auch":"aussi","Heidelberger Schloss":"château de Heidelberg","hoch":"haut","über":"au-dessus de","liegt":"se dresse","Von dort oben":"de là-haut","kann man":"on peut","den":"la","Fluss":"rivière","Neckar":"Neckar","sehen":"voir","Ihre":"sa","Kommilitonin":"camarade","Julia":"Julia","erzählt":"raconte","viele":"de nombreux","berühmte":"grands","Denker":"penseurs","darunter":"parmi eux","Philosophen":"philosophes","Dichter":"poètes","einst":"autrefois","diese":"ces","Straßen":"rues","gegangen sind":"ont marché","Vorlesungen":"cours","überrascht":"surprise","wie viel":"combien de","Diskussion":"discussion","es":"il y a","zwischen":"entre","Professoren":"professeurs","gibt":"y a","muss":"doit","sich":"se","erst":"d'abord","gewöhnen":"habituer","eigene":"propres","Meinungen":"opinions","zu vertreten":"défendre","Nach":"après","Monat":"mois","fühlt sich":"se sent","schon":"déjà","viel":"beaucoup","sicherer":"plus sûre","hat":"a","neue":"nouveaux","Freunde":"amis","gefunden":"trouvé","beginnt":"commence","zu verstehen":"comprendre","warum":"pourquoi","so viele":"tant de","Menschen":"gens","von":"pour","besonderen":"particulière","Atmosphäre":"atmosphère","dieser":"de cette","Universitätsstadt":"ville universitaire","schwärmen":"s'enthousiasment","zu":"à/de","studieren":"étudier","und":"et","ein":"un","bisschen":"un peu","sie":"elle/ils","zum":"au","Mal":"fois","lautem":"bruyant","bestraft":"puni","wurden":"ont été","Wände":"murs","hinterlassen":"laissé","haben":"avoir","fast":"presque","Heidelberger":"de Heidelberg","Schloss":"château","Von":"de","oben":"en haut","kann":"peut","man":"on","gegangen":"allé","Sie":"elle/ils","daran":"à cela","vertreten":"défendre","fühlt":"se sent","verstehen":"comprendre","so":"si","ihr":"lui/sa"}$t$::jsonb
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was studiert Anna in Heidelberg?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Germanistik$t$, true, 1),
    (v_q, $t$Medizin$t$, false, 2),
    (v_q, $t$Jura$t$, false, 3),
    (v_q, $t$Physik$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Seit wann gibt es die Universität Heidelberg?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Seit 1386$t$, true, 1),
    (v_q, $t$Seit 1800$t$, false, 2),
    (v_q, $t$Seit 1900$t$, false, 3),
    (v_q, $t$Seit 1500$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was macht die Universität Heidelberg besonders?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie ist die älteste Universität Deutschlands$t$, true, 1),
    (v_q, $t$Sie ist die größte Universität Europas$t$, false, 2),
    (v_q, $t$Sie wurde erst kürzlich gegründet$t$, false, 3),
    (v_q, $t$Sie liegt an der Nordsee$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was ist das Studentenkarzer?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Ein altes Gefängnis für Studenten$t$, true, 1),
    (v_q, $t$Ein Restaurant$t$, false, 2),
    (v_q, $t$Eine Bibliothek$t$, false, 3),
    (v_q, $t$Ein Sportzentrum$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum wurden Studenten früher im Karzer bestraft?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Wegen kleiner Vergehen wie zu lautem Feiern$t$, true, 1),
    (v_q, $t$Wegen schlechter Noten$t$, false, 2),
    (v_q, $t$Wegen Diebstahls$t$, false, 3),
    (v_q, $t$Wegen zu später Ankunft$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was zeigt die Tatsache, dass eine Strafe im Karzer 'fast wie eine Ehre' galt?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Dass Studenten diese Erfahrung als besonderen Teil der Studentenkultur ansahen$t$, true, 1),
    (v_q, $t$Dass die Strafe sehr streng war$t$, false, 2),
    (v_q, $t$Dass niemand jemals bestraft wurde$t$, false, 3),
    (v_q, $t$Dass das Karzer heute noch genutzt wird$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was liegt hoch über der Stadt?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Das Heidelberger Schloss$t$, true, 1),
    (v_q, $t$Ein Fluss$t$, false, 2),
    (v_q, $t$Ein Bahnhof$t$, false, 3),
    (v_q, $t$Ein Wald$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was überrascht Anna in den ersten Vorlesungen?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Die viele Diskussion zwischen Professoren und Studenten$t$, true, 1),
    (v_q, $t$Die geringe Zahl der Studenten$t$, false, 2),
    (v_q, $t$Die kurzen Vorlesungen$t$, false, 3),
    (v_q, $t$Die strengen Prüfungen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was zeigt Annas Entwicklung im Laufe des Textes?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie wird von einer nervösen Neuankömmling zu einer sichereren Studentin$t$, true, 1),
    (v_q, $t$Sie bleibt die ganze Zeit unsicher$t$, false, 2),
    (v_q, $t$Sie entscheidet sich, die Universität zu wechseln$t$, false, 3),
    (v_q, $t$Sie verliert das Interesse am Studium$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'die Vorlesung'?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Ein Unterricht an der Universität, bei dem ein Professor spricht$t$, true, 1),
    (v_q, $t$Eine Prüfung$t$, false, 2),
    (v_q, $t$Ein Buch$t$, false, 3),
    (v_q, $t$Eine Party$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welches Wort passt: Anna nimmt an ihrer ersten ___ an der Universität teil.$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Vorlesung$t$, true, 1),
    (v_q, $t$Vorstellung$t$, false, 2),
    (v_q, $t$Vorbereitung$t$, false, 3),
    (v_q, $t$Vorspeise$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welcher Satz verwendet 'die Vorlesung' korrekt?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$In der Vorlesung diskutieren Professoren und Studenten oft miteinander.$t$, true, 1),
    (v_q, $t$Die Vorlesung ist ein Gefängnis für Studenten.$t$, false, 2),
    (v_q, $t$Anna kaufte eine Vorlesung im Buchladen.$t$, false, 3),
    (v_q, $t$Die Vorlesung liegt hoch über der Stadt.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Ergänzen Sie: Anna ___ sich erst daran gewöhnen, eigene Meinungen zu vertreten.$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$muss$t$, true, 1),
    (v_q, $t$hat$t$, false, 2),
    (v_q, $t$ist$t$, false, 3),
    (v_q, $t$wird$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wählen Sie den richtigen Satz mit 'sich gewöhnen an'.$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Anna muss sich an die vielen Diskussionen gewöhnen.$t$, true, 1),
    (v_q, $t$Anna muss sich gewöhnen an die vielen Diskussionen.$t$, false, 2),
    (v_q, $t$Anna muss gewöhnen sich an die vielen Diskussionen.$t$, false, 3),
    (v_q, $t$Anna sich muss an die vielen Diskussionen gewöhnen.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welcher Satz bildet korrekt das Perfekt eines reflexiven Verbs?$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Anna hat sich nach einem Monat viel sicherer gefühlt.$t$, true, 1),
    (v_q, $t$Anna ist sich nach einem Monat viel sicherer gefühlt.$t$, false, 2),
    (v_q, $t$Anna hat sicherer sich gefühlt nach einem Monat.$t$, false, 3),
    (v_q, $t$Anna sich hat nach einem Monat sicherer gefühlt.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$Beschreiben Sie in 5-7 Sätzen Ihre ersten Wochen an einem neuen Ort (Schule, Universität oder Arbeit).$t$, 1, 'normal', 'production', $t$Als ich an meiner neuen Universität ankam, war ich sehr nervös. Die Gebäude waren riesig, und ich fand es schwierig, mich zu orientieren. In der ersten Woche lernte ich zum Glück ein paar nette Kommilitonen kennen. Die Vorlesungen waren anfangs verwirrend, weil alles neu und schnell war. Nach ein paar Wochen gewöhnte ich mich langsam an den neuen Rhythmus. Ich fand auch heraus, welche Cafés und Bibliotheken am besten zum Lernen sind. Heute fühle ich mich viel sicherer und freue mich auf das nächste Semester.$t$);

END $block$;

-- 24. Eine Wurst mit Geschichte
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary) VALUES (
    'B1',
    $t$Eine Wurst mit Geschichte$t$,
    $t$Kenji kommt aus Japan und macht ein Austauschjahr an einer Schule in Nürnberg. Seine Gastfamilie lädt ihn ein, mit ihnen auf den Wochenmarkt zu gehen, wo es einen Stand mit den berühmten Nürnberger Bratwürsten gibt. Kenji hat noch nie etwas von diesem Essen gehört.

Der Verkäufer erklärt ihm, dass die Nürnberger Rostbratwurst schon seit dem Mittelalter hergestellt wird – die ersten schriftlichen Erwähnungen stammen aus dem Jahr 1313. Anders als viele andere deutsche Würste ist sie sehr klein, nur etwa so lang wie ein Finger. Traditionell isst man mindestens sechs Stück in einem Brötchen, zusammen mit Senf und manchmal Sauerkraut.

Kenji probiert die Würste zum ersten Mal und findet sie überraschend würzig, mit einem Geschmack von Majoran und Pfeffer. Seine Gastmutter erzählt ihm, dass es in Deutschland über tausend verschiedene Wurstsorten gibt, jede Region mit ihren eigenen Spezialitäten. In Thüringen isst man eine lange, dünne Bratwurst, während man in Frankfurt eher die berühmten Frankfurter Würstchen bevorzugt.

Kenji ist beeindruckt, wie sehr Essen mit regionaler Identität verbunden ist. Er fragt sich, ob es in Japan ähnliche Unterschiede zwischen den Regionen gibt, und denkt an die verschiedenen Ramen-Suppen aus seiner Heimat. Am Ende des Marktbesuchs kauft er selbst eine Portion und teilt sie mit seinen neuen Freunden. Er beschließt, für seine Klasse einen Bericht über deutsche Wurstspezialitäten zu schreiben.$t$,
    $t$Kenji vient du Japon et fait une année d'échange dans une école à Nuremberg. Sa famille d'accueil l'invite à aller avec eux au marché hebdomadaire, où se trouve un stand avec les célèbres saucisses de Nuremberg. Kenji n'a jamais entendu parler de ce plat.

Le vendeur lui explique que la saucisse grillée de Nuremberg est fabriquée depuis le Moyen Âge – les premières mentions écrites datent de l'année 1313. Contrairement à beaucoup d'autres saucisses allemandes, elle est très petite, à peine aussi longue qu'un doigt. Traditionnellement, on en mange au moins six dans un petit pain, avec de la moutarde et parfois de la choucroute.

Kenji goûte les saucisses pour la première fois et les trouve étonnamment épicées, avec un goût de marjolaine et de poivre. Sa mère d'accueil lui raconte qu'il existe en Allemagne plus de mille variétés de saucisses différentes, chaque région ayant ses propres spécialités. En Thuringe, on mange une saucisse grillée longue et fine, tandis qu'à Francfort on préfère plutôt les célèbres saucisses de Francfort.

Kenji est impressionné de voir à quel point la nourriture est liée à l'identité régionale. Il se demande s'il existe des différences semblables entre les régions au Japon, et pense aux différentes soupes de ramen de son pays natal. À la fin de sa visite au marché, il achète lui-même une portion et la partage avec ses nouveaux amis. Il décide d'écrire un rapport sur les spécialités de saucisses allemandes pour sa classe.$t$,
    $t${"Kenji":"Kenji","kommt":"vient","aus":"de","Japan":"Japon","macht":"fait","ein":"un","Austauschjahr":"année d'échange","an":"à","einer":"une","Schule":"école","in":"à","Nürnberg":"Nuremberg","Seine":"sa","Gastfamilie":"famille d'accueil","lädt":"invite","ihn":"lui","mit":"avec","ihnen":"eux","auf":"à","den":"les","Wochenmarkt":"marché hebdomadaire","zu gehen":"aller","wo":"où","es":"il","einen":"un","Stand":"stand","berühmten":"célèbres","Nürnberger Bratwürsten":"saucisses de Nuremberg","gibt":"existe","hat":"a","noch nie":"jamais","etwas":"rien","von":"de","diesem":"ce","Essen":"nourriture","gehört":"entendu parler","Der Verkäufer":"le vendeur","erklärt":"explique","ihm":"lui","dass":"que","die":"la","Nürnberger Rostbratwurst":"saucisse grillée de Nuremberg","schon":"déjà","seit":"depuis","dem":"le","Mittelalter":"Moyen Âge","hergestellt wird":"est fabriquée","ersten":"premières","schriftlichen":"écrites","Erwähnungen":"mentions","stammen":"datent","dem Jahr":"l'année","Anders als":"contrairement à","viele":"beaucoup d'","andere":"autres","deutsche":"allemandes","Würste":"saucisses","ist":"est","sehr":"très","klein":"petite","nur etwa":"à peine","so lang wie":"aussi longue que","Finger":"doigt","Traditionell":"traditionnellement","isst man":"on mange","mindestens":"au moins","sechs":"six","Stück":"pièces","einem":"un","Brötchen":"petit pain","zusammen mit":"avec","Senf":"moutarde","manchmal":"parfois","Sauerkraut":"choucroute","probiert":"goûte","zum ersten Mal":"pour la première fois","findet sie":"les trouve","überraschend":"étonnamment","würzig":"épicées","Geschmack":"goût","Majoran":"marjolaine","Pfeffer":"poivre","Gastmutter":"mère d'accueil","erzählt":"raconte","Deutschland":"Allemagne","über":"sur","tausend":"mille","verschiedene":"différentes","Wurstsorten":"variétés de saucisses","jede":"chaque","Region":"région","ihren":"ses","eigenen":"propres","Spezialitäten":"spécialités","In":"en","Thüringen":"Thuringe","eine":"une","lange":"longue","dünne":"fine","Bratwurst":"saucisse grillée","während":"tandis que","Frankfurt":"Francfort","eher":"plutôt","bevorzugt":"préfère","Frankfurter Würstchen":"saucisses de Francfort","beeindruckt":"impressionné","wie sehr":"à quel point","regionaler":"régionale","Identität":"identité","verbunden ist":"est liée","fragt sich":"se demande","ob":"s'il","ähnliche":"semblables","Unterschiede":"différences","zwischen":"entre","Regionen":"régions","denkt":"pense","verschiedenen":"différentes","Ramen-Suppen":"soupes de ramen","seiner":"son","Heimat":"pays natal","Am Ende":"à la fin","des":"de la","Marktbesuchs":"visite au marché","kauft":"achète","selbst":"lui-même","Portion":"portion","teilt":"partage","sie":"la","seinen":"ses","neuen":"nouveaux","Freunden":"amis","beschließt":"décide","für":"pour","seine":"sa","Klasse":"classe","Bericht":"rapport","Wurstspezialitäten":"spécialités de saucisses","zu schreiben":"écrire","und":"et","zu":"à/de","gehen":"aller","Nürnberger":"de Nuremberg","Bratwürsten":"saucisses grillées","noch":"encore","nie":"jamais","Der":"le","Verkäufer":"vendeur","Rostbratwurst":"saucisse grillée","hergestellt":"fabriqué","wird":"est","Jahr":"an/année","Anders":"contrairement","als":"comme/quand","nur":"seulement","etwa":"environ","so":"si","lang":"long","wie":"comme","isst":"mange","man":"on","zusammen":"ensemble","zum":"au","Mal":"fois","findet":"trouve","Frankfurter":"de Francfort","Würstchen":"saucisses","verbunden":"lié","Er":"il","fragt":"demande","sich":"se","Am":"le","Ende":"fin","er":"il","schreiben":"écrire"}$t$::jsonb
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Woher kommt Kenji?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Aus Japan$t$, true, 1),
    (v_q, $t$Aus China$t$, false, 2),
    (v_q, $t$Aus Korea$t$, false, 3),
    (v_q, $t$Aus Vietnam$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was macht Kenji in Nürnberg?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Ein Austauschjahr an einer Schule$t$, true, 1),
    (v_q, $t$Ein Praktikum$t$, false, 2),
    (v_q, $t$Eine Geschäftsreise$t$, false, 3),
    (v_q, $t$Einen Urlaub$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum ist der Wochenmarkt für Kenji eine besondere Erfahrung?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Weil er dort zum ersten Mal eine typisch deutsche Spezialität probiert$t$, true, 1),
    (v_q, $t$Weil er dort seine Gastfamilie zum ersten Mal trifft$t$, false, 2),
    (v_q, $t$Weil der Markt nur einmal im Jahr stattfindet$t$, false, 3),
    (v_q, $t$Weil er dort Deutsch lernt$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Seit wann gibt es die Nürnberger Bratwurst?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Seit dem Mittelalter$t$, true, 1),
    (v_q, $t$Seit dem 20. Jahrhundert$t$, false, 2),
    (v_q, $t$Seit 50 Jahren$t$, false, 3),
    (v_q, $t$Seit der Antike$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie isst man die Nürnberger Bratwurst traditionell?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Mindestens sechs Stück in einem Brötchen$t$, true, 1),
    (v_q, $t$Nur eine große Wurst allein$t$, false, 2),
    (v_q, $t$Mit Reis$t$, false, 3),
    (v_q, $t$In einer Suppe$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was zeigt die Erwähnung des Jahres 1313 im Text?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Dass die Bratwurst eine lange historische Tradition hat$t$, true, 1),
    (v_q, $t$Dass die Bratwurst eine moderne Erfindung ist$t$, false, 2),
    (v_q, $t$Dass sie damals verboten war$t$, false, 3),
    (v_q, $t$Dass sie nur für Adlige gemacht wurde$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was gibt es in Thüringen?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Eine lange, dünne Bratwurst$t$, true, 1),
    (v_q, $t$Nur vegetarisches Essen$t$, false, 2),
    (v_q, $t$Keine Würste$t$, false, 3),
    (v_q, $t$Nur Fisch$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Woran denkt Kenji, als er über regionale Unterschiede nachdenkt?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$An verschiedene Ramen-Suppen aus Japan$t$, true, 1),
    (v_q, $t$An deutsche Biersorten$t$, false, 2),
    (v_q, $t$An europäische Käsesorten$t$, false, 3),
    (v_q, $t$An amerikanisches Fast Food$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was zeigt Kenjis Vergleich mit den Ramen-Suppen?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Dass er kulturelle Ähnlichkeiten zwischen Deutschland und Japan erkennt$t$, true, 1),
    (v_q, $t$Dass er Deutschland Japan vorzieht$t$, false, 2),
    (v_q, $t$Dass er die deutsche Küche ablehnt$t$, false, 3),
    (v_q, $t$Dass er keine Verbindung zwischen den Ländern sieht$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'würzig'?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Mit vielen Gewürzen und intensivem Geschmack$t$, true, 1),
    (v_q, $t$Süß$t$, false, 2),
    (v_q, $t$Kalt$t$, false, 3),
    (v_q, $t$Ohne Geschmack$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welches Wort passt: Kenji findet die Bratwurst überraschend ___.$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$würzig$t$, true, 1),
    (v_q, $t$langweilig$t$, false, 2),
    (v_q, $t$kalt$t$, false, 3),
    (v_q, $t$süß$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welcher Satz verwendet 'würzig' korrekt?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Die Bratwurst schmeckt würzig, mit Majoran und Pfeffer.$t$, true, 1),
    (v_q, $t$Die Bratwurst ist würzig lang.$t$, false, 2),
    (v_q, $t$Der Markt ist sehr würzig.$t$, false, 3),
    (v_q, $t$Kenji ist würzig aus Japan.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Ergänzen Sie: Die Bratwurst ___ seit dem Mittelalter hergestellt.$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$wird$t$, true, 1),
    (v_q, $t$ist$t$, false, 2),
    (v_q, $t$hat$t$, false, 3),
    (v_q, $t$war$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wählen Sie den richtigen Satz im Präsens Passiv.$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$In Deutschland werden über tausend Wurstsorten hergestellt.$t$, true, 1),
    (v_q, $t$In Deutschland wurden über tausend Wurstsorten hergestellt.$t$, false, 2),
    (v_q, $t$In Deutschland haben über tausend Wurstsorten hergestellt.$t$, false, 3),
    (v_q, $t$In Deutschland sind über tausend Wurstsorten herstellen.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welcher Satz bildet korrekt einen Nebensatz mit 'während' zum Vergleich?$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$In Thüringen isst man eine dünne Bratwurst, während man in Frankfurt Würstchen bevorzugt.$t$, true, 1),
    (v_q, $t$In Thüringen isst man eine dünne Bratwurst, während man in Frankfurt Würstchen bevorzugt hat werden.$t$, false, 2),
    (v_q, $t$In Thüringen isst man eine dünne Bratwurst, während in Frankfurt man Würstchen bevorzugt.$t$, false, 3),
    (v_q, $t$In Thüringen isst man eine dünne Bratwurst, während bevorzugt man in Frankfurt Würstchen.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$Beschreiben Sie in 5-7 Sätzen ein typisches Gericht aus Ihrer Region und vergleichen Sie es mit einem deutschen Gericht.$t$, 1, 'normal', 'production', $t$In meiner Region ist eine deftige Gemüsesuppe mit Bohnen sehr beliebt. Man isst sie besonders im Winter, weil sie warm und sättigend ist. Sie erinnert mich ein bisschen an die deutsche Eintopfsuppe, die auch oft mit Kartoffeln und Fleisch gekocht wird. Beide Gerichte zeigen, dass einfache, regionale Zutaten oft die leckersten Mahlzeiten ergeben. In meiner Familie kocht man das Rezept schon seit Generationen fast unverändert. Ich finde es spannend, wie Essen die Kultur und Geschichte einer Region widerspiegelt. Deshalb probiere ich gerne regionale Gerichte, wenn ich ein neues Land besuche.$t$);

END $block$;

-- 25. Das Schloss von Dornröschen
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary) VALUES (
    'B1',
    $t$Das Schloss von Dornröschen$t$,
    $t$Nina fährt mit ihrer Großmutter zur Sababurg in Nordhessen, einem alten Schloss, das mit dem Märchen von Dornröschen verbunden ist. Der Legende nach schlief hier vor langer Zeit eine Prinzessin hundert Jahre lang, nachdem sie sich an einer Spindel gestochen hatte. Erst der Kuss eines Prinzen konnte den Zauber brechen und sie wecken.

Nina kennt das Märchen der Brüder Grimm gut, aber sie wusste nicht, dass ein echtes Schloss diese Geschichte inspiriert haben soll. Ihre Großmutter erzählt ihr, dass um die Sababurg früher ein dichter Wald wuchs, ähnlich wie die Dornenhecke im Märchen, die das Schloss hundert Jahre lang umgab, sodass niemand hineingehen konnte.

Als sie durch die alten Mauern gehen, zeigt die Großmutter Nina einen Turm, in dem angeblich das Zimmer der schlafenden Prinzessin gewesen sein soll. Nina findet es ein bisschen gruselig, aber auch faszinierend. Sie fragt sich, warum in so vielen Märchen jemand hundert Jahre schlafen oder warten muss, bevor sich alles zum Guten wendet.

Die Großmutter lacht und sagt, dass solche Geschichten den Menschen früher Hoffnung gaben: Auch wenn eine schwierige Zeit lange dauert, kann am Ende doch alles gut werden. Am Ausgang des Schlosses kauft Nina eine Postkarte mit einer schlafenden Prinzessin darauf. Sie beschließt, das Märchen heute Abend noch einmal zu lesen, bevor sie schläft.$t$,
    $t$Nina va avec sa grand-mère à la Sababurg en Hesse du Nord, un vieux château lié au conte de la Belle au bois dormant. Selon la légende, une princesse y a dormi jadis pendant cent ans, après s'être piquée avec un fuseau. Seul le baiser d'un prince put rompre le sortilège et la réveiller.

Nina connaît bien le conte des frères Grimm, mais elle ne savait pas qu'un véritable château avait inspiré cette histoire. Sa grand-mère lui raconte qu'autrefois une forêt dense poussait autour de la Sababurg, semblable à la haie d'épines du conte, qui entourait le château pendant cent ans, si bien que personne ne pouvait y entrer.

En traversant les vieux murs, la grand-mère montre à Nina une tour où aurait été, dit-on, la chambre de la princesse endormie. Nina trouve cela un peu effrayant, mais aussi fascinant. Elle se demande pourquoi, dans tant de contes, quelqu'un doit dormir ou attendre cent ans avant que tout finisse bien.

La grand-mère rit et dit que de telles histoires donnaient autrefois de l'espoir aux gens : même si une période difficile dure longtemps, tout peut finalement s'arranger. À la sortie du château, Nina achète une carte postale représentant une princesse endormie. Elle décide de relire le conte ce soir encore, avant de s'endormir.$t$,
    $t${"Nina":"Nina","fährt":"va","mit":"avec","ihrer":"sa","Großmutter":"grand-mère","zur":"à la","Sababurg":"Sababurg","in":"dans","Nordhessen":"Hesse du Nord","einem":"un","alten":"vieux","Schloss":"château","das":"la","dem":"le","Märchen":"contes","von":"de","Dornröschen":"la Belle au bois dormant","verbunden ist":"est lié","Der Legende nach":"selon la légende","schlief":"a dormi","hier":"ici","vor":"jadis","langer":"long","Zeit":"période","eine":"une","Prinzessin":"princesse","hundert":"cent","Jahre":"ans","lang":"pendant","nachdem":"après que","sie":"elle","sich":"s'","an":"à","einer":"une","Spindel":"fuseau","gestochen hatte":"était piquée","Erst":"seul","der":"de la","Kuss":"baiser","eines":"d'un","Prinzen":"prince","konnte":"put","den":"le","Zauber":"sortilège","brechen":"rompre","und":"et","wecken":"réveiller","kennt":"connaît","Brüder Grimm":"frères Grimm","gut":"bien","aber":"mais","wusste":"savait","nicht":"pas","dass":"que","ein":"une","echtes":"véritable","diese":"cette","Geschichte":"histoire","inspiriert haben soll":"aurait inspiré","Ihre":"sa","erzählt":"raconte","ihr":"lui","um":"autour de","die":"les","früher":"autrefois","dichter":"dense","Wald":"forêt","wuchs":"poussait","ähnlich wie":"semblable à","Dornenhecke":"haie d'épines","im":"dans le","umgab":"entourait","sodass":"si bien que","niemand":"personne","hineingehen konnte":"pouvait entrer","Als":"en","durch":"à travers","Mauern":"murs","gehen":"traversant","zeigt":"montre","einen":"une","Turm":"tour","in dem":"où","angeblich":"aurait été, dit-on","Zimmer":"chambre","schlafenden":"endormie","gewesen sein soll":"aurait été","findet es":"trouve cela","ein bisschen":"un peu","gruselig":"effrayant","auch":"aussi","faszinierend":"fascinant","fragt sich":"se demande","warum":"pourquoi","so vielen":"tant de","jemand":"quelqu'un","schlafen":"dormir","oder":"ou","warten muss":"doit attendre","bevor":"avant que","alles":"tout","zum Guten wendet":"arrange","lacht":"rit","sagt":"dit","solche":"de telles","Geschichten":"histoires","Menschen":"gens","Hoffnung":"espoir","gaben":"donnaient","Auch wenn":"même si","schwierige":"difficile","lange":"longtemps","dauert":"dure","kann":"peut","am Ende":"finalement","doch":"pourtant","alles gut werden":"tout s'arranger","Am Ausgang":"à la sortie","des":"du","kauft":"achète","Postkarte":"carte postale","darauf":"dessus","beschließt":"décide","heute Abend":"ce soir","noch einmal":"encore une fois","zu lesen":"lire","schläft":"s'endort","verbunden":"lié","ist":"est","Der":"le","Legende":"légende","nach":"selon","gestochen":"piquée","hatte":"avait","Brüder":"frères","Grimm":"Grimm","inspiriert":"inspiré","haben":"avoir","soll":"aurait","ähnlich":"semblable","wie":"comme","hineingehen":"entrer","gewesen":"été","sein":"son/être","findet":"trouve","es":"il/cela","bisschen":"un peu","Sie":"elle/ils","fragt":"demande","so":"si","warten":"attendre","muss":"doit","zum":"au","Guten":"bien","wendet":"tourne","Die":"la/les","Auch":"aussi","wenn":"quand","am":"le","Ende":"fin","werden":"devenir/être","Am":"le","Ausgang":"sortie","Schlosses":"du château","heute":"aujourd'hui","Abend":"soir","noch":"encore","einmal":"une fois","zu":"à/de","lesen":"lire","vielen":"beaucoup de"}$t$::jsonb
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wohin fährt Nina mit ihrer Großmutter?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Zur Sababurg$t$, true, 1),
    (v_q, $t$Zum Kölner Dom$t$, false, 2),
    (v_q, $t$Zur Wartburg$t$, false, 3),
    (v_q, $t$Zum Bodensee$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Mit welchem Märchen ist die Sababurg verbunden?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Mit Dornröschen$t$, true, 1),
    (v_q, $t$Mit Hänsel und Gretel$t$, false, 2),
    (v_q, $t$Mit Rotkäppchen$t$, false, 3),
    (v_q, $t$Mit Schneewittchen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum ist die Sababurg für Nina eine Überraschung?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie wusste nicht, dass ein echtes Schloss das Märchen inspiriert haben soll$t$, true, 1),
    (v_q, $t$Sie hatte das Märchen noch nie gehört$t$, false, 2),
    (v_q, $t$Sie dachte, das Schloss existiere nicht mehr$t$, false, 3),
    (v_q, $t$Sie glaubte, das Märchen spiele in einem anderen Land$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum schlief die Prinzessin im Märchen hundert Jahre?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Weil sie sich an einer Spindel gestochen hatte$t$, true, 1),
    (v_q, $t$Weil sie krank war$t$, false, 2),
    (v_q, $t$Weil sie sich verlaufen hatte$t$, false, 3),
    (v_q, $t$Weil ein Zauberer sie einschloss$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was umgab das Schloss im Märchen hundert Jahre lang?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Eine Dornenhecke$t$, true, 1),
    (v_q, $t$Ein See$t$, false, 2),
    (v_q, $t$Eine Mauer aus Stein$t$, false, 3),
    (v_q, $t$Ein tiefer Graben$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was zeigt der Vergleich zwischen dem echten Wald um die Sababurg und der Dornenhecke im Märchen?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Dass die reale Umgebung des Schlosses die Fantasie der Märchenerzähler beeinflusst haben könnte$t$, true, 1),
    (v_q, $t$Dass der Wald erst nach dem Märchen gepflanzt wurde$t$, false, 2),
    (v_q, $t$Dass die Sababurg gar keinen Wald hatte$t$, false, 3),
    (v_q, $t$Dass das Märchen nichts mit der Sababurg zu tun hat$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was kauft Nina am Ausgang des Schlosses?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Eine Postkarte$t$, true, 1),
    (v_q, $t$Ein Buch$t$, false, 2),
    (v_q, $t$Einen Ring$t$, false, 3),
    (v_q, $t$Eine Puppe$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was will Nina heute Abend tun?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Das Märchen noch einmal lesen$t$, true, 1),
    (v_q, $t$Zur Sababurg zurückkehren$t$, false, 2),
    (v_q, $t$Ein Referat schreiben$t$, false, 3),
    (v_q, $t$Ihre Großmutter besuchen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Botschaft vermittelt die Großmutter mit ihrer Erklärung über Märchen?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Dass Geduld in schwierigen Zeiten am Ende belohnt werden kann$t$, true, 1),
    (v_q, $t$Dass Märchen keine tiefere Bedeutung haben$t$, false, 2),
    (v_q, $t$Dass hundert Jahre eine übertriebene Zahl sind$t$, false, 3),
    (v_q, $t$Dass Prinzessinnen in Wirklichkeit nicht existieren$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'der Zauber'?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Eine magische Kraft, die etwas Übernatürliches bewirkt$t$, true, 1),
    (v_q, $t$Ein Musikinstrument$t$, false, 2),
    (v_q, $t$Ein Kleidungsstück$t$, false, 3),
    (v_q, $t$Ein Getränk$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welches Wort passt: Nur der Kuss des Prinzen konnte den ___ brechen.$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Zauber$t$, true, 1),
    (v_q, $t$Turm$t$, false, 2),
    (v_q, $t$Wald$t$, false, 3),
    (v_q, $t$Ring$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welcher Satz verwendet 'der Zauber' korrekt im Märchenkontext?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Der Kuss des Prinzen brach den Zauber, und die Prinzessin wachte auf.$t$, true, 1),
    (v_q, $t$Der Zauber kaufte eine Postkarte am Ausgang.$t$, false, 2),
    (v_q, $t$Die Prinzessin schlief, weil der Zauber eine Postkarte war.$t$, false, 3),
    (v_q, $t$Der Zauber wuchs um das Schloss wie ein Wald.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Ergänzen Sie: Die Prinzessin schlief ein, ___ sie sich gestochen hatte.$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$nachdem$t$, true, 1),
    (v_q, $t$bevor$t$, false, 2),
    (v_q, $t$während$t$, false, 3),
    (v_q, $t$obwohl$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wählen Sie den richtigen Satz mit 'nachdem' im Plusquamperfekt.$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Nachdem sie sich an der Spindel gestochen hatte, schlief die Prinzessin ein.$t$, true, 1),
    (v_q, $t$Nachdem sie sich an der Spindel gestochen hat, schlief die Prinzessin ein.$t$, false, 2),
    (v_q, $t$Nachdem sie sich an der Spindel stach, schlief die Prinzessin ein.$t$, false, 3),
    (v_q, $t$Nachdem sie sich an der Spindel stechen hatte, schlief die Prinzessin ein.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welcher Satz zeigt korrekt die Wortstellung im Nebensatz mit 'bevor'?$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie muss warten, bevor sich alles zum Guten wendet.$t$, true, 1),
    (v_q, $t$Sie muss warten, bevor sich alles zum Guten gewendet.$t$, false, 2),
    (v_q, $t$Sie muss warten, bevor alles wendet sich zum Guten.$t$, false, 3),
    (v_q, $t$Sie muss warten, bevor zum Guten sich alles wendet.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$Schreiben Sie in 5-7 Sätzen eine kurze eigene Version eines bekannten Märchens oder erklären Sie, was Sie an einem Märchen Ihrer Wahl interessant finden.$t$, 1, 'normal', 'production', $t$Mein Lieblingsmärchen ist Aschenputtel. Ein Mädchen muss für ihre böse Stieffamilie arbeiten, darf aber dank einer guten Fee zu einem Ball gehen. Dort verliebt sich ein Prinz in sie, doch um Mitternacht muss sie fliehen und verliert dabei einen Schuh. Am Ende findet der Prinz sie mit Hilfe des Schuhs wieder. Ich mag dieses Märchen, weil es zeigt, dass Freundlichkeit und Geduld am Ende belohnt werden. Außerdem finde ich die magischen Elemente, wie den Kürbiswagen, sehr fantasievoll. Deshalb lese ich diese Geschichte auch als Erwachsene noch gerne.$t$);

END $block$;

