-- Contenu "patrimoine culturel allemand" — niveau C2 (8 histoires).
-- Contes/légendes du domaine public réécrits, ou fictions originales inspirées
-- de genres/thèmes majeurs de la culture et de l'école allemandes.

-- 1. Der Kiesweg
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary, culture_note) VALUES (
    'C2',
    $t$Der Kiesweg$t$,
    $t$Der Kiesweg führte, wie er es seit vierzig Jahren tat, in einem sanften Bogen um den Teich, und Elsbeth ging ihn an diesem Nachmittag so langsam, dass ihr eigener Schatten sie mehrmals überholte. Man hatte ihr gesagt, das Haus werde verkauft, sobald die Erben sich geeinigt hätten, und dass es also gälte, Abschied zu nehmen von etwas, das ohnehin nie ihr gehört hatte. Sie war nur die Nachbarin gewesen, eine, die man zum Kaffee bat, wenn die Einsamkeit im Sommer unerträglich wurde, und die sich in all den Jahren nie hatte vorstellen können, dass diese Zufälligkeit einmal etwas wie Zugehörigkeit bedeuten würde.

Am Rand des Teiches stand die Bank, auf der Herr Vollmer, bevor er starb, immer gesessen und ihr Dinge erzählt hatte, die sie nicht hatte einordnen können: von einem Bruder, der angeblich nach dem Krieg verschwunden sei, von einem Brief, der nie angekommen sei, von einer Schuld, die er, wie er sagte, „weder abtragen noch vergessen" könne. Ob es sich um Erfindungen eines alten Mannes handelte, der sich Gesellschaft wünschte, oder um Bruchstücke einer Wahrheit, die er niemandem sonst hatte anvertrauen wollen, war ihr nie klargeworden, und sie hatte aufgehört, danach zu fragen, weil die Antworten, die er gab, sich jedes Mal unterschieden.

Jetzt, da das Haus geräumt werden sollte, fand sie unter der Bank eine kleine, verrostete Blechdose, halb im Erdreich vergraben, als hätte jemand sie absichtlich dorthin gelegt und dann beschlossen, sie doch nicht zu holen. Sie kniete sich hin, löste den Deckel, der sich sträubte, und sah darin ein vergilbtes Foto zweier Jungen vor eben diesem Teich, sowie einen Zettel, auf dem in verblasster Schrift ein einziger Satz stand, dessen letztes Wort das Wasser über die Jahre unleserlich gemacht hatte.

Elsbeth blieb, die Dose in beiden Händen, reglos am Ufer stehen, während sich die Abenddämmerung über den Teich legte. Sie wusste, dass sie am folgenden Tag die Erben anrufen und ihnen von ihrem Fund berichten sollte. Ob sie es tun würde, wusste sie in diesem Moment selbst noch nicht. Vielleicht, dachte sie, während sie langsam zum Haus zurückging, gehörte manches, das man findet, nicht automatisch denen, die es einst verloren hatten, sondern jenen, die bereit waren, es zu bewahren, ohne es je vollständig zu verstehen.$t$,
    $t$Le chemin de gravier menait, comme il le faisait depuis quarante ans, en une douce courbe autour de l'étang, et Elsbeth le parcourut cet après-midi-là si lentement que son ombre la dépassait à plusieurs reprises. On lui avait dit que la maison serait vendue dès que les héritiers se seraient mis d'accord, et qu'il convenait donc de faire ses adieux à quelque chose qui, de toute façon, ne lui avait jamais appartenu. Elle n'avait été que la voisine, celle qu'on invitait à prendre le café quand la solitude devenait insupportable en été, et elle n'avait jamais pu imaginer, durant toutes ces années, que cette contingence finirait un jour par ressembler à une appartenance.

Au bord de l'étang se trouvait le banc sur lequel Monsieur Vollmer, avant de mourir, s'était toujours assis pour lui raconter des choses qu'elle n'avait su classer : un frère qui aurait disparu après la guerre, une lettre qui ne serait jamais arrivée, une dette qu'il ne pouvait, disait-il, « ni acquitter ni oublier ». Qu'il se soit agi des inventions d'un vieil homme en quête de compagnie, ou de fragments d'une vérité qu'il n'avait voulu confier à personne d'autre, elle ne l'avait jamais su clairement, et elle avait cessé de poser la question, car les réponses qu'il donnait différaient à chaque fois.

Maintenant que la maison devait être vidée, elle trouva sous le banc une petite boîte en fer-blanc rouillée, à moitié enterrée dans la terre, comme si quelqu'un l'y avait déposée exprès avant de décider, finalement, de ne pas venir la reprendre. Elle s'agenouilla, fit céder le couvercle qui résistait, et vit à l'intérieur une photo jaunie de deux garçons devant ce même étang, ainsi qu'un bout de papier sur lequel, d'une écriture délavée, était inscrite une seule phrase dont le dernier mot avait été rendu illisible par l'eau au fil des années.

Elsbeth resta immobile au bord de l'eau, la boîte entre les mains, tandis que le crépuscule se posait sur l'étang. Elle savait qu'elle devait, le lendemain, appeler les héritiers et leur rapporter sa trouvaille. Si elle le ferait, elle-même ne le savait pas encore, à cet instant. Peut-être, pensa-t-elle en retournant lentement vers la maison, ce que l'on trouve n'appartient-il pas automatiquement à ceux qui l'avaient autrefois perdu, mais plutôt à ceux qui sont prêts à le conserver, sans jamais le comprendre tout à fait.$t$,
    $t${"Der":"le","Kiesweg":"le chemin de gravier","führte":"menait","wie":"comme","er":"il","es":"le/cela","seit":"depuis","vierzig":"quarante","Jahren":"années","tat":"faisait","in":"dans","einem":"un","sanften":"doux","Bogen":"arc/courbe","um":"autour de","den":"le","Teich":"l'étang","und":"et","Elsbeth":"Elsbeth (prénom)","ging":"allait/marchait","ihn":"le","an":"en/à","diesem":"cet","Nachmittag":"après-midi","so":"si","langsam":"lentement","dass":"que","ihr":"son/lui","eigener":"propre","Schatten":"ombre","sie":"elle","mehrmals":"plusieurs fois","überholte":"dépassait","Man":"on","hatte":"avait","gesagt":"dit","das":"le/que","Haus":"la maison","werde":"serait (futur/subj.)","verkauft":"vendue","sobald":"dès que","die":"les/la","Erben":"les héritiers","sich":"se","geeinigt":"mis d'accord","hätten":"auraient","also":"donc","gälte":"il conviendrait (subj. II)","Abschied":"adieu","zu":"à","nehmen":"prendre","von":"de","etwas":"quelque chose","ohnehin":"de toute façon","nie":"jamais","gehört":"appartenu","Sie":"elle","war":"était","nur":"seulement","Nachbarin":"voisine","gewesen":"été","eine":"une","man":"on","zum":"au","Kaffee":"café","bat":"invitait","wenn":"quand","Einsamkeit":"solitude","im":"en","Sommer":"été","unerträglich":"insupportable","wurde":"devenait","all":"tout","vorstellen":"imaginer","können":"pouvoir","diese":"cette","Zufälligkeit":"contingence/hasard","einmal":"un jour","Zugehörigkeit":"appartenance","bedeuten":"signifier","würde":"signifierait","Am":"au","Rand":"bord","des":"du","Teiches":"de l'étang","stand":"se trouvait","Bank":"le banc","auf":"sur","der":"le/dont","Herr":"monsieur","Vollmer":"Vollmer (nom)","bevor":"avant que","starb":"mourut","immer":"toujours","gesessen":"assis","Dinge":"des choses","erzählt":"racontées","nicht":"ne pas","einordnen":"classer/comprendre","Bruder":"frère","angeblich":"soi-disant","nach":"après","dem":"le","Krieg":"guerre","verschwunden":"disparu","sei":"aurait été (subj. I)","Brief":"lettre","angekommen":"arrivée","einer":"une","Schuld":"dette/faute","sagte":"disait","weder":"ni","abtragen":"acquitter/rembourser","noch":"ni","vergessen":"oublier","könne":"pourrait (subj. I)","Ob":"si (interrogatif)","Erfindungen":"inventions","eines":"d'un","alten":"vieux","Mannes":"homme","handelte":"s'agissait","Gesellschaft":"compagnie","wünschte":"désirait","oder":"ou","Bruchstücke":"fragments","Wahrheit":"vérité","niemandem":"à personne","sonst":"d'autre","anvertrauen":"confier","wollen":"vouloir","klargeworden":"devenu clair","aufgehört":"cessé","danach":"ensuite/à ce sujet","fragen":"demander","weil":"parce que","Antworten":"réponses","gab":"donnait","jedes":"chaque","Mal":"fois","unterschieden":"différaient","Jetzt":"maintenant","da":"puisque","geräumt":"vidée","werden":"être (passif)","sollte":"devait","fand":"trouva","unter":"sous","kleine":"petite","verrostete":"rouillée","Blechdose":"boîte en fer-blanc","halb":"à moitié","Erdreich":"terre","vergraben":"enterrée","als":"comme si","hätte":"aurait","jemand":"quelqu'un","absichtlich":"exprès","dorthin":"là","gelegt":"posée","dann":"puis","beschlossen":"décidé","doch":"pourtant","holen":"aller chercher","kniete":"s'agenouilla","hin":"(particule)","löste":"détacha","Deckel":"couvercle","sträubte":"résistait","sah":"vit","darin":"dedans","ein":"un","vergilbtes":"jauni","Foto":"photo","zweier":"de deux","Jungen":"garçons","vor":"devant","eben":"justement","sowie":"ainsi qu'","einen":"un","Zettel":"bout de papier","verblasster":"délavée","Schrift":"écriture","einziger":"seule","Satz":"phrase","dessen":"dont le","letztes":"dernier","Wort":"mot","Wasser":"eau","über":"pendant/sur","Jahre":"années","unleserlich":"illisible","gemacht":"rendu","blieb":"resta","Dose":"boîte","beiden":"deux (mains)","Händen":"mains","reglos":"immobile","am":"au","Ufer":"rive","stehen":"rester debout","während":"tandis que","Abenddämmerung":"crépuscule","legte":"se posait","wusste":"savait","folgenden":"suivant","Tag":"jour","anrufen":"appeler","ihnen":"leur","ihrem":"sa","Fund":"trouvaille","berichten":"rapporter","tun":"faire","Moment":"moment","selbst":"elle-même","Vielleicht":"peut-être","dachte":"pensa","zurückging":"retournait","gehörte":"appartenait","manches":"bien des choses","findet":"trouve","automatisch":"automatiquement","denen":"à ceux","einst":"autrefois","verloren":"perdu","hatten":"avaient","sondern":"mais","jenen":"à ceux","bereit":"prêts","waren":"étaient","bewahren":"conserver","ohne":"sans","je":"jamais","vollständig":"complètement","verstehen":"comprendre"}$t$::jsonb,
    $t$Littérature allemande contemporaine$t$
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum geht Elsbeth an diesem Nachmittag über den Kiesweg?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Weil sie dort täglich spazieren geht$t$, false, 1),
    (v_q, $t$Weil das Haus bald verkauft wird und sie Abschied nehmen möchte$t$, true, 2),
    (v_q, $t$Weil sie den Erben eine Nachricht bringen soll$t$, false, 3),
    (v_q, $t$Weil sie eine Verabredung mit Herrn Vollmer hat$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$In welcher Beziehung stand Elsbeth zu dem Haus und seinen Bewohnern?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie war die Erbin des Hauses$t$, false, 1),
    (v_q, $t$Sie war eine Nachbarin, die gelegentlich zu Besuch kam$t$, true, 2),
    (v_q, $t$Sie war die Haushälterin von Herrn Vollmer$t$, false, 3),
    (v_q, $t$Sie war mit Herrn Vollmer verwandt$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was verrät die Formulierung, Elsbeth habe sich nie vorstellen können, dass diese Zufälligkeit einmal etwas wie Zugehörigkeit bedeuten würde, über ihre Beziehung zum Ort?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Dass sie das Haus von Anfang an als ihr Zuhause betrachtete$t$, false, 1),
    (v_q, $t$Dass eine ursprünglich beiläufige Verbindung im Rückblick eine unerwartete emotionale Tiefe gewonnen hat$t$, true, 2),
    (v_q, $t$Dass sie das Haus stets als fremd empfand und froh über den Verkauf ist$t$, false, 3),
    (v_q, $t$Dass sie sich schon lange um das Erbe bemüht hatte$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was hatte Herr Vollmer Elsbeth auf der Bank erzählt?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Geschichten über seine Kindheit im Dorf$t$, false, 1),
    (v_q, $t$Unklare Andeutungen über einen Bruder, einen Brief und eine Schuld$t$, true, 2),
    (v_q, $t$Details über den Verkauf des Hauses$t$, false, 3),
    (v_q, $t$Rezepte für den Sommer$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum hatte Elsbeth irgendwann aufgehört, Herrn Vollmer nach seinen Andeutungen zu fragen?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Weil er wütend auf ihre Fragen reagierte$t$, false, 1),
    (v_q, $t$Weil seine Antworten sich jedes Mal unterschieden und sie daher keine Klarheit gewinnen konnte$t$, true, 2),
    (v_q, $t$Weil sie das Thema nicht interessierte$t$, false, 3),
    (v_q, $t$Weil er ihr verbot, danach zu fragen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche erzählerische Funktion erfüllt die Unentscheidbarkeit, ob Vollmers Erzählungen Erfindung oder Wahrheit waren?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie zeigt, dass Vollmer an Demenz litt$t$, false, 1),
    (v_q, $t$Sie lässt die Vergangenheit als grundsätzlich unauflösbar erscheinen und bereitet den offenen Schluss vor$t$, true, 2),
    (v_q, $t$Sie soll beweisen, dass Elsbeth ihm nicht vertraute$t$, false, 3),
    (v_q, $t$Sie dient allein der Charakterisierung Elsbeths als misstrauisch$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was findet Elsbeth unter der Bank?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Einen alten Ring$t$, false, 1),
    (v_q, $t$Eine verrostete Blechdose mit einem Foto und einem Zettel$t$, true, 2),
    (v_q, $t$Einen Brief von den Erben$t$, false, 3),
    (v_q, $t$Ein Buch$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was ist auf dem Zettel in der Dose nicht mehr lesbar?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Der ganze Text$t$, false, 1),
    (v_q, $t$Nur die Unterschrift$t$, false, 2),
    (v_q, $t$Das letzte Wort eines Satzes$t$, true, 3),
    (v_q, $t$Das Datum$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie ist das Ende der Geschichte zu deuten, in dem offenbleibt, ob Elsbeth die Erben von ihrem Fund berichten wird?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Es zeigt eindeutig, dass sie schweigen wird, um Vollmers Geheimnis zu schützen$t$, false, 1),
    (v_q, $t$Es überlässt der Leserin bzw. dem Leser bewusst die Entscheidung, wie mit unauflösbaren Vergangenheiten umzugehen ist$t$, true, 2),
    (v_q, $t$Es ist ein Hinweis darauf, dass die Geschichte unvollständig ist$t$, false, 3),
    (v_q, $t$Es deutet an, dass Elsbeth die Dose vernichten wird$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet "Abschied nehmen" im Text?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$sich verabschieden$t$, true, 1),
    (v_q, $t$etwas kaufen$t$, false, 2),
    (v_q, $t$sich erinnern$t$, false, 3),
    (v_q, $t$sich verstecken$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Bedeutung hat "Bruchstücke" im Zusammenhang mit Vollmers Erzählungen?$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$vollständige Berichte$t$, false, 1),
    (v_q, $t$zerbrochene Gegenstände$t$, false, 2),
    (v_q, $t$unvollständige, fragmentarische Teile einer Geschichte$t$, true, 3),
    (v_q, $t$wörtliche Zitate$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Nuance trägt das Wort "Zufälligkeit" im Satz über Elsbeths Beziehung zum Haus?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$eine geplante, bewusst herbeigeführte Verbindung$t$, false, 1),
    (v_q, $t$das Zufällige, Beiläufige einer ursprünglich nicht gewollten Nähe$t$, true, 2),
    (v_q, $t$eine gesetzlich geregelte Beziehung$t$, false, 3),
    (v_q, $t$eine finanzielle Verpflichtung$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$In welcher Zeitform steht "hatte gesagt"?$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Präsens$t$, false, 1),
    (v_q, $t$Plusquamperfekt$t$, true, 2),
    (v_q, $t$Futur I$t$, false, 3),
    (v_q, $t$Konjunktiv II$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Form liegt in "das Haus werde verkauft" vor?$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Konjunktiv I (indirekte Rede)$t$, true, 1),
    (v_q, $t$Konjunktiv II$t$, false, 2),
    (v_q, $t$Indikativ Präsens$t$, false, 3),
    (v_q, $t$Imperativ$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was drückt der Konjunktiv II in "dass es also gälte, Abschied zu nehmen" im Kontext indirekter Rede aus?$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Eine reale, gegenwärtige Tatsache$t$, false, 1),
    (v_q, $t$Eine wiedergegebene, unsicher gebliebene Notwendigkeit, formuliert als Ersatzform für den nicht eindeutigen Konjunktiv I$t$, true, 2),
    (v_q, $t$Einen direkten Befehl an Elsbeth$t$, false, 3),
    (v_q, $t$Eine abgeschlossene Handlung in der Vergangenheit$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$Schreiben Sie eine kurze reflektierende Passage (ca. 120 Wörter) darüber, wie Gegenstände aus der Vergangenheit – wie die Blechdose in der Geschichte – unsere Beziehung zur Erinnerung und zur Wahrheit infrage stellen können.$t$, 1, 'normal', 'production', $t$Gegenstände, die aus der Vergangenheit auftauchen, konfrontieren uns mit einer Erinnerung, die wir nicht selbst geformt haben. Anders als Erzählungen, die im Laufe der Zeit verändert werden, scheinen sie stumme Zeugen zu sein, deren Bedeutung sich jedoch erst durch unsere Deutung erschließt. Gerade weil sie unvollständig sind, wie ein verblasster Zettel, laden sie dazu ein, Lücken mit eigenen Vermutungen zu füllen. Dabei zeigt sich, dass Wahrheit nicht immer wiederhergestellt werden kann, sondern manchmal bewusst offengelassen werden muss. Wer einen solchen Fund macht, steht vor der Wahl, ihn preiszugeben oder zu bewahren, und diese Entscheidung sagt oft mehr über die eigene Haltung zur Vergangenheit aus als über die Vergangenheit selbst.$t$);

END $block$;

-- 2. Übersetzte Vergangenheit
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary, culture_note) VALUES (
    'C2',
    $t$Übersetzte Vergangenheit$t$,
    $t$Es gibt Wörter, die man erst dann wirklich versteht, wenn man sie in einer anderen Sprache vermisst. Ich erinnere mich, wie ich als Kind meiner Großmutter zuhörte, wenn sie von „Feierabend" sprach, einem Wort, das weder Freizeit noch Abend allein meint, sondern jenen schmalen, kostbaren Übergang zwischen Pflicht und Ruhe, den keine andere Sprache, die ich seither gelernt habe, in einer einzigen Silbe zu fassen vermag. Vielleicht ist es diese Erfahrung des Fehlens, die mich zu der Überzeugung gebracht hat, dass Erinnerung selbst eine Art Übersetzung ist: der Versuch, ein vergangenes Empfinden in die Begriffe der Gegenwart zu übertragen, wobei stets etwas verlorengeht, das sich nicht wiederherstellen lässt.

Wenn ich heute versuche, mich an das Haus meiner Großeltern zu erinnern, stelle ich fest, dass ich nicht mehr die Räume selbst erinnere, sondern die Wörter, mit denen ich sie einst benannte. Die Speisekammer, der Dachboden, der Herd – es sind diese Vokabeln, die als Behälter für ein Gefühl fungieren, das sich sonst längst verflüchtigt hätte. Man könnte einwenden, dies sei nur eine Alterserscheinung des Gedächtnisses, das sich lieber an Etiketten als an Empfindungen klammert. Ich glaube jedoch, dass es sich um etwas Grundsätzlicheres handelt: dass wir die Zeit gar nicht anders speichern können als sprachlich, weil das Erlebnis selbst, sobald es vergangen ist, keine andere Form mehr besitzt als die, die wir ihm nachträglich verleihen.

Diese Einsicht hat mich gelehrt, mit dem Vergessen versöhnlicher umzugehen. Wenn ich merke, dass mir ein Wort in meiner Muttersprache entgleitet, während sich in der erlernten Sprache ein treffenderes anbietet, empfinde ich das nicht mehr als Verlust, sondern als Beweis dafür, dass Sprache ein lebendiges Gedächtnis ist, das sich fortwährend neu ordnet. Die Vergangenheit verändert sich mit jedem Wort, das wir für sie finden oder nicht mehr finden, und vielleicht ist genau das der eigentliche Grund, weshalb wir überhaupt erzählen: nicht um festzuhalten, was war, sondern um herauszufinden, was von dem Vergangenen sich noch in die Gegenwart übersetzen lässt, bevor auch der letzte Zugang dazu verstummt. In diesem Sinne ist jede Sprache, die wir hinzugewinnen, zugleich ein neuer Zugang zu Erinnerungen, die wir bislang gar nicht als solche erkannt hatten, weil uns schlicht die passenden Worte dafür gefehlt haben.$t$,
    $t$Il existe des mots que l'on ne comprend vraiment que lorsqu'ils nous manquent dans une autre langue. Je me souviens d'avoir écouté, enfant, ma grand-mère parler du « Feierabend », un mot qui ne signifie ni le temps libre ni le soir à eux seuls, mais ce passage étroit et précieux entre le devoir et le repos, qu'aucune autre langue apprise depuis n'a su saisir en une seule syllabe. C'est peut-être cette expérience du manque qui m'a conduite à la conviction que la mémoire elle-même est une forme de traduction : la tentative de transposer un ressenti passé dans les notions du présent, tentative au cours de laquelle quelque chose se perd toujours, quelque chose qui ne se laisse plus restaurer.

Lorsque j'essaie aujourd'hui de me souvenir de la maison de mes grands-parents, je constate que ce ne sont plus les pièces elles-mêmes dont je me souviens, mais les mots par lesquels je les nommais autrefois. Le garde-manger, le grenier, la cuisinière — ce sont ces vocables qui font office de contenants pour un sentiment qui, sans eux, se serait depuis longtemps évaporé. On pourrait objecter qu'il ne s'agit là que d'un phénomène lié à l'âge, une mémoire qui s'accroche plus volontiers aux étiquettes qu'aux sensations elles-mêmes. Je crois cependant qu'il s'agit de quelque chose de plus fondamental : que nous ne pouvons pas stocker le temps autrement que par le langage, car l'expérience vécue, une fois passée, ne possède plus d'autre forme que celle que nous lui conférons après coup.

Cette constatation m'a appris à composer plus sereinement avec l'oubli. Lorsque je remarque qu'un mot m'échappe dans ma langue maternelle tandis qu'un terme plus juste s'offre dans la langue apprise, je ne le ressens plus comme une perte, mais comme la preuve que le langage est une mémoire vivante, qui se réorganise sans cesse. Le passé change avec chaque mot que nous trouvons ou ne trouvons plus pour lui, et c'est peut-être précisément la véritable raison pour laquelle nous racontons : non pour fixer ce qui fut, mais pour découvrir ce qui, du passé, peut encore se traduire dans le présent, avant que le dernier accès à celui-ci ne se taise. En ce sens, chaque langue que nous acquérons est en même temps un nouvel accès à des souvenirs que nous n'avions jusqu'alors pas même reconnus comme tels, faute des mots appropriés pour les nommer.$t$,
    $t${"Es":"il/ce (impersonnel)","gibt":"y a","Wörter":"mots","die":"qui/les","man":"on","erst":"seulement","dann":"alors","wirklich":"vraiment","versteht":"comprend","wenn":"quand","sie":"on/elle","in":"dans","einer":"une","anderen":"autre","Sprache":"langue","vermisst":"il manque","Ich":"je","erinnere":"me souviens","mich":"me","wie":"comment","ich":"je","als":"quand/comme","Kind":"enfant","meiner":"de ma","Großmutter":"grand-mère","zuhörte":"écoutais","von":"de","Feierabend":"fin de la journée de travail","sprach":"parlait","einem":"un","Wort":"mot","das":"qui/le","weder":"ni","Freizeit":"temps libre","noch":"ni","Abend":"soir","allein":"seul","meint":"signifie","sondern":"mais","jenen":"ce/cette (accusatif)","schmalen":"étroit","kostbaren":"précieux","Übergang":"passage","zwischen":"entre","Pflicht":"devoir","und":"et","Ruhe":"repos","den":"que/le","keine":"aucune","andere":"autre","seither":"depuis lors","gelernt":"apprise","habe":"ai","einzigen":"seule","Silbe":"syllabe","zu":"à","fassen":"saisir","vermag":"est capable de","Vielleicht":"peut-être","ist":"est","es":"cela","diese":"cette","Erfahrung":"expérience","des":"du","Fehlens":"du manque","der":"la/le","Überzeugung":"conviction","gebracht":"amené","hat":"a","dass":"que","Erinnerung":"souvenir/mémoire","selbst":"elle-même","eine":"une","Art":"sorte","Übersetzung":"traduction","Versuch":"tentative","ein":"un","vergangenes":"passé","Empfinden":"ressenti","Begriffe":"notions","Gegenwart":"présent","übertragen":"transposer","wobei":"où/tout en","stets":"toujours","etwas":"quelque chose","verlorengeht":"se perd","sich":"se","nicht":"ne pas","wiederherstellen":"restaurer","lässt":"laisse/se laisse","Wenn":"quand","heute":"aujourd'hui","versuche":"essaie","an":"à","Haus":"maison","Großeltern":"grands-parents","erinnern":"me souvenir","stelle":"constate","fest":"(constate) fest","mehr":"plus","Räume":"pièces","mit":"avec","denen":"lesquelles","einst":"autrefois","benannte":"nommais","Die":"la","Speisekammer":"garde-manger","Dachboden":"grenier","Herd":"cuisinière/fourneau","sind":"sont","Vokabeln":"vocables","Behälter":"contenants","für":"pour","Gefühl":"sentiment","fungieren":"font office","sonst":"sinon","längst":"depuis longtemps","verflüchtigt":"évaporé","hätte":"aurait (subj. II)","Man":"on","könnte":"pourrait","einwenden":"objecter","dies":"cela","sei":"serait (subj. I)","nur":"seulement","Alterserscheinung":"phénomène lié à l'âge","Gedächtnisses":"de la mémoire","lieber":"plutôt","Etiketten":"étiquettes","Empfindungen":"sensations","klammert":"s'accroche","glaube":"crois","jedoch":"cependant","um":"de/pour","Grundsätzlicheres":"quelque chose de plus fondamental","handelt":"s'agit","wir":"nous","Zeit":"temps","gar":"du tout","anders":"autrement","speichern":"stocker","können":"pouvoir","sprachlich":"linguistiquement","weil":"parce que","Erlebnis":"expérience vécue","sobald":"dès que","vergangen":"passé","Form":"forme","besitzt":"possède","ihm":"lui","nachträglich":"après coup","verleihen":"conférer","Diese":"cette","Einsicht":"constatation","gelehrt":"appris","dem":"le","Vergessen":"oubli","versöhnlicher":"de manière plus conciliante","umzugehen":"à traiter","merke":"remarque","mir":"me","Muttersprache":"langue maternelle","entgleitet":"échappe","während":"tandis que","erlernten":"apprise","treffenderes":"plus juste","anbietet":"s'offre","empfinde":"ressens","Verlust":"perte","Beweis":"preuve","dafür":"de cela","lebendiges":"vivant","Gedächtnis":"mémoire","fortwährend":"continuellement","neu":"à nouveau","ordnet":"s'organise","Vergangenheit":"passé","verändert":"change","jedem":"chaque","finden":"trouver","oder":"ou","vielleicht":"peut-être","genau":"justement","eigentliche":"véritable","Grund":"raison","weshalb":"pour laquelle","überhaupt":"en général","erzählen":"raconter","festzuhalten":"fixer/consigner","was":"ce que","war":"était","herauszufinden":"découvrir","Vergangenen":"passé (substantivé)","übersetzen":"traduire","bevor":"avant que","auch":"aussi","letzte":"dernier","Zugang":"accès","dazu":"à cela","verstummt":"se tait","In":"dans","diesem":"ce","Sinne":"sens","jede":"chaque","hinzugewinnen":"acquérir en plus","zugleich":"en même temps","neuer":"nouvel","Erinnerungen":"souvenirs","bislang":"jusqu'à présent","solche":"tels","erkannt":"reconnus","uns":"nous","schlicht":"tout simplement","passenden":"appropriés","Worte":"mots","gefehlt":"manqué","haben":"ont"}$t$::jsonb,
    $t$Littérature allemande contemporaine$t$
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welches Wort dient der Erzählerin als Beispiel für einen Begriff ohne genaue Entsprechung in anderen Sprachen?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Heimat$t$, false, 1),
    (v_q, $t$Feierabend$t$, true, 2),
    (v_q, $t$Sehnsucht$t$, false, 3),
    (v_q, $t$Zeitgeist$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was meint die Erzählerin, wenn sie sagt, Erinnerung sei eine Art Übersetzung?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Dass man Erinnerungen in Fremdsprachen aufschreiben sollte$t$, false, 1),
    (v_q, $t$Dass die Erinnerung ein vergangenes Empfinden in gegenwärtige Begriffe überträgt, wobei etwas verlorengeht$t$, true, 2),
    (v_q, $t$Dass man sich nur an übersetzte Texte erinnern kann$t$, false, 3),
    (v_q, $t$Dass Erinnerungen wörtlich und unverändert bleiben$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Inwiefern begründet die Analogie zwischen Erinnerung und Übersetzung die zentrale These des Textes?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie zeigt, dass Übersetzen grundsätzlich unmöglich ist$t$, false, 1),
    (v_q, $t$Sie etabliert, dass jede Vergegenwärtigung von Vergangenem notwendig eine Umformung ist, bei der ein Rest unwiederbringlich verlorengeht$t$, true, 2),
    (v_q, $t$Sie beweist, dass zweisprachige Menschen ein besseres Gedächtnis haben$t$, false, 3),
    (v_q, $t$Sie dient lediglich als rhetorisches Ornament ohne argumentative Funktion$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Woran erinnert sich die Erzählerin, wenn sie an das Haus der Großeltern denkt?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$An die genaue Einrichtung der Räume$t$, false, 1),
    (v_q, $t$An die Wörter, mit denen sie die Räume einst benannte$t$, true, 2),
    (v_q, $t$An die Gerüche der Küche$t$, false, 3),
    (v_q, $t$An die Gesichter der Großeltern$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welchen möglichen Einwand gegen ihre These erwägt die Erzählerin selbst?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Dass ihre Erinnerung ungenau sei, weil sie zu jung war$t$, false, 1),
    (v_q, $t$Dass es sich nur um eine Alterserscheinung des Gedächtnisses handeln könnte$t$, true, 2),
    (v_q, $t$Dass ihre Großeltern die Wörter erfunden hätten$t$, false, 3),
    (v_q, $t$Dass Sprachen sich zu schnell verändern$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie widerlegt die Erzählerin implizit den Einwand, ihre Erfahrung sei bloß eine Alterserscheinung?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Indem sie ihn ignoriert und das Thema wechselt$t$, false, 1),
    (v_q, $t$Indem sie argumentiert, dass Zeit grundsätzlich nur sprachlich gespeichert werden kann, da das Erlebnis selbst keine andere Form besitzt$t$, true, 2),
    (v_q, $t$Indem sie wissenschaftliche Studien zitiert$t$, false, 3),
    (v_q, $t$Indem sie zugibt, dass der Einwand berechtigt ist$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie reagiert die Erzählerin heute, wenn ihr ein Wort in der Muttersprache entgleitet?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Mit Ärger über den eigenen Gedächtnisverlust$t$, false, 1),
    (v_q, $t$Mit Gelassenheit, weil sie darin einen Beweis für ein lebendiges Sprachgedächtnis sieht$t$, true, 2),
    (v_q, $t$Mit Angst vor dem Verlust ihrer Identität$t$, false, 3),
    (v_q, $t$Mit völliger Gleichgültigkeit$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was gibt der Text als eigentlichen Grund des Erzählens an?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Um Fakten möglichst genau festzuhalten$t$, false, 1),
    (v_q, $t$Um herauszufinden, was vom Vergangenen sich noch in die Gegenwart übersetzen lässt$t$, true, 2),
    (v_q, $t$Um andere Menschen zu unterhalten$t$, false, 3),
    (v_q, $t$Um Sprachen besser zu lernen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Haltung zum Vergessen entwickelt der Text insgesamt?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Vergessen wird als reiner Verlust und Bedrohung der Identität dargestellt$t$, false, 1),
    (v_q, $t$Vergessen wird als notwendiger Bestandteil eines sich stets neu ordnenden, lebendigen Gedächtnisses akzeptiert$t$, true, 2),
    (v_q, $t$Vergessen wird als vermeidbarer Fehler des Individuums kritisiert$t$, false, 3),
    (v_q, $t$Vergessen wird nicht thematisiert$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet "sich erinnern"?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$vergessen$t$, false, 1),
    (v_q, $t$sich erinnern/im Gedächtnis behalten$t$, true, 2),
    (v_q, $t$sich verirren$t$, false, 3),
    (v_q, $t$sich entscheiden$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet "sich verflüchtigen" im Kontext des Textes?$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$sich verfestigen$t$, false, 1),
    (v_q, $t$allmählich verschwinden, sich auflösen$t$, true, 2),
    (v_q, $t$sich vermehren$t$, false, 3),
    (v_q, $t$sich verstecken$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Bedeutungsnuance trägt "nachträglich" im Satz über die Form, die wir dem Erlebnis verleihen?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$im Voraus, vorbereitend$t$, false, 1),
    (v_q, $t$im Nachhinein, erst später hinzugefügt$t$, true, 2),
    (v_q, $t$gleichzeitig, im selben Moment$t$, false, 3),
    (v_q, $t$dauerhaft, unveränderlich$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Zeitform liegt in "ich erinnere mich" vor?$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Präteritum$t$, false, 1),
    (v_q, $t$Präsens$t$, true, 2),
    (v_q, $t$Futur II$t$, false, 3),
    (v_q, $t$Konjunktiv II$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Form ist "dies sei nur eine Alterserscheinung"?$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Konjunktiv I in indirekter Rede$t$, true, 1),
    (v_q, $t$Indikativ Präsens$t$, false, 2),
    (v_q, $t$Passiv$t$, false, 3),
    (v_q, $t$Imperativ$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche grammatische Funktion erfüllt "hätte" in "das sich sonst längst verflüchtigt hätte"?$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Es bildet einen irrealen Konditionalsatz der Vergangenheit (Konjunktiv II Plusquamperfekt-Ersatz)$t$, true, 1),
    (v_q, $t$Es drückt eine reale, abgeschlossene Handlung aus$t$, false, 2),
    (v_q, $t$Es ist ein einfaches Hilfsverb im Perfekt$t$, false, 3),
    (v_q, $t$Es kennzeichnet eine höfliche Bitte$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$Verfassen Sie einen kurzen essayistischen Text (ca. 120 Wörter), in dem Sie erläutern, inwiefern Sprache Ihrer Meinung nach unsere Erinnerung an vergangene Orte oder Erlebnisse prägt.$t$, 1, 'normal', 'production', $t$Sprache ist weit mehr als ein Werkzeug zur Beschreibung von Erinnerungen; sie ist selbst Teil ihrer Konstitution. Wenn ich an meine Kindheit denke, tauchen zuerst Wörter auf, nicht Bilder, und erst durch sie gewinnt das Vergangene wieder Kontur. Dies bedeutet zugleich, dass jede Erinnerung, die wir in Worte fassen, bereits eine Interpretation ist, keine bloße Wiedergabe. Verändert sich unser sprachliches Repertoire, verändert sich auch das, was wir aus der Vergangenheit abrufen können. Insofern ist das Vergessen einzelner Begriffe kein reiner Verlust, sondern zugleich ein Umbau des inneren Archivs. Wer mehrere Sprachen spricht, erlebt diesen Prozess besonders deutlich, da jede Sprache andere Facetten derselben Erinnerung hervorhebt.$t$);

END $block$;

-- 3. Der Deckname
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary, culture_note) VALUES (
    'C2',
    $t$Der Deckname$t$,
    $t$Als Regina den grauen Aktenordner endlich abholte, sechsundzwanzig Jahre nachdem die Behörde ihre Existenz eingestanden hatte, empfand sie weniger Erleichterung als eine seltsam nüchterne Enttäuschung. Sie hatte sich, wie sie zugeben musste, ein dickeres Dokument vorgestellt, ein Ausmaß der Beobachtung, das ihrer eigenen, im Rückblick übertriebenen Erinnerung an die Bedrohlichkeit jener Jahre entsprochen hätte. Stattdessen lagen vor ihr knapp vierzig Seiten, getippt in einer Sprache, die selbst das Banalste – Einkäufe, Kirchgänge, ein Streit mit dem Vermieter – mit der gleichen bürokratischen Gründlichkeit verzeichnete wie das, was tatsächlich hätte gefährlich werden können.

Was sie jedoch am meisten erschütterte, war nicht der Umfang, sondern ein Deckname, der sich durch mehrere Berichte zog: „Falke". Die Beschreibungen, die dieser Falke lieferte, waren zu genau, zu intim, als dass sie von einem flüchtigen Bekannten oder einem misstrauischen Nachbarn stammen könnten. Er wusste, dass sie sonntags stets zu spät zur Kirche kam, dass sie sich mit ihrem Bruder wegen der Erbschaft der Großmutter zerstritten hatte, dass sie in jener einen Nacht im Oktober geweint hatte, nachdem ihr damaliger Verlobter sie verlassen hatte. Nur wenige Menschen hatten Zugang zu all diesen Einzelheiten gehabt.

Sie brauchte drei Wochen, um sich einzugestehen, was sie längst ahnte, und weitere zwei, um Johannes anzurufen, jenen Verlobten, mit dem sie sich später, nach der Wende, wiederversöhnt und dann doch nie wieder wirklich nahegekommen war. Am Telefon sagte er nichts, was sie nicht schon vermutet hatte; er bestätigte lediglich, mit einer Stimme, die keine Reue mehr zu kennen schien, dass man ihn damals unter Druck gesetzt habe, dass er geglaubt habe, es diene ihrem beider Schutz, dass er es, hätte er gewusst, wie es enden würde, vielleicht anders gemacht hätte – vielleicht.

Regina legte den Ordner danach nicht weg, sondern begann, ihn noch einmal zu lesen, diesmal jedoch nicht auf der Suche nach Bestätigung, sondern nach etwas anderem: nach der Frage, ob sich hinter der trockenen Sprache dieser Berichte womöglich auch eine Zuneigung verbarg, die er ihr, aus welchen Gründen auch immer, nie anders hatte zeigen können als durch das genaue Beobachten ihres Lebens.$t$,
    $t$Lorsque Regina alla enfin chercher le classeur gris, vingt-six ans après que l'administration eut admis son existence, elle ressentit moins un soulagement qu'une déception étrangement sobre. Elle avait dû s'avouer qu'elle s'était imaginé un document plus épais, une ampleur de surveillance correspondant au souvenir, rétrospectivement exagéré, du caractère menaçant de ces années-là. Au lieu de cela, se trouvaient devant elle à peine quarante pages, tapées dans une langue qui consignait le plus banal — des achats, des passages à l'église, une dispute avec le propriétaire — avec la même minutie bureaucratique que ce qui aurait réellement pu devenir dangereux.

Ce qui l'ébranla cependant le plus, ce ne fut pas le volume, mais un nom de code qui traversait plusieurs rapports : « Falke » — le Faucon. Les descriptions que fournissait ce Faucon étaient trop précises, trop intimes, pour provenir d'une simple connaissance de passage ou d'un voisin méfiant. Il savait qu'elle arrivait toujours trop tard à l'église le dimanche, qu'elle s'était brouillée avec son frère à cause de l'héritage de leur grand-mère, qu'elle avait pleuré cette nuit-là d'octobre après que son fiancé de l'époque l'eut quittée. Peu de gens avaient eu accès à tous ces détails.

Il lui fallut trois semaines pour s'avouer ce qu'elle pressentait déjà depuis longtemps, et deux autres pour appeler Johannes, ce fiancé avec lequel elle s'était réconciliée plus tard, après la Réunification, sans jamais vraiment se rapprocher de lui à nouveau. Au téléphone, il ne dit rien qu'elle n'eût déjà soupçonné ; il confirma seulement, d'une voix qui ne semblait plus connaître le remords, qu'on l'avait mis sous pression à l'époque, qu'il avait cru que cela servirait à les protéger tous les deux, et que, s'il avait su comment cela finirait, il aurait peut-être agi autrement — peut-être.

Regina ne rangea pas le classeur après cela ; elle se mit à le relire, cette fois non plus à la recherche d'une confirmation, mais de tout autre chose : la question de savoir si, derrière la langue sèche de ces rapports, ne se cachait pas aussi une forme d'affection que lui, pour quelque raison que ce soit, n'avait jamais su lui montrer autrement qu'en observant minutieusement sa vie.$t$,
    $t${"Als":"lorsque","Regina":"Regina (prénom)","den":"le","grauen":"gris","Aktenordner":"classeur de dossier","endlich":"enfin","abholte":"alla chercher","sechsundzwanzig":"vingt-six","Jahre":"années","nachdem":"après que","die":"l'","Behörde":"administration","ihre":"son","Existenz":"existence","eingestanden":"admise","hatte":"avait","empfand":"ressentit","sie":"elle","weniger":"moins","Erleichterung":"soulagement","als":"que/en tant que","eine":"une","seltsam":"étrangement","nüchterne":"sobre","Enttäuschung":"déception","Sie":"elle","sich":"se","wie":"comme","zugeben":"admettre","musste":"dut","ein":"un","dickeres":"plus épais","Dokument":"document","vorgestellt":"imaginé","Ausmaß":"ampleur","der":"la/de la","Beobachtung":"surveillance/observation","das":"qui/ce","ihrer":"de sa","eigenen":"propre","im":"dans le","Rückblick":"rétrospective","übertriebenen":"exagéré","Erinnerung":"souvenir","an":"à","Bedrohlichkeit":"caractère menaçant","jener":"de ces","entsprochen":"correspondu","hätte":"aurait","Stattdessen":"au lieu de cela","lagen":"se trouvaient","vor":"devant","ihr":"elle","knapp":"à peine","vierzig":"quarante","Seiten":"pages","getippt":"tapées","in":"dans","einer":"une","Sprache":"langue","selbst":"même","Banalste":"le plus banal","Einkäufe":"achats","Kirchgänge":"passages à l'église","Streit":"dispute","mit":"avec","dem":"le","Vermieter":"propriétaire (bailleur)","gleichen":"même","bürokratischen":"bureaucratique","Gründlichkeit":"minutie","verzeichnete":"consignait","was":"ce qui","tatsächlich":"réellement","gefährlich":"dangereux","werden":"devenir","können":"pouvoir","Was":"ce qui","jedoch":"cependant","am":"le","meisten":"plus","erschütterte":"ébranla","war":"était","nicht":"ne pas","Umfang":"ampleur/volume","sondern":"mais","Deckname":"nom de code","durch":"à travers","mehrere":"plusieurs","Berichte":"rapports","zog":"parcourait","Falke":"Faucon (nom de code)","Die":"les","Beschreibungen":"descriptions","dieser":"ce","lieferte":"fournissait","waren":"étaient","zu":"trop","genau":"précises","intim":"intimes","dass":"que","von":"de","einem":"un","flüchtigen":"passager","Bekannten":"connaissance","oder":"ou","misstrauischen":"méfiant","Nachbarn":"voisin","stammen":"provenir","könnten":"pourraient","Er":"il","wusste":"savait","sonntags":"le dimanche","stets":"toujours","spät":"tard","zur":"à l'","Kirche":"église","kam":"venait","ihrem":"son","Bruder":"frère","wegen":"à cause de","Erbschaft":"héritage","Großmutter":"grand-mère","zerstritten":"brouillée","einen":"une","Nacht":"nuit","Oktober":"octobre","geweint":"pleuré","damaliger":"d'alors","Verlobter":"fiancé","verlassen":"quitté","Nur":"seuls","wenige":"peu de","Menschen":"personnes","hatten":"avaient","Zugang":"accès","all":"tous","diesen":"ces","Einzelheiten":"détails","gehabt":"eu","brauchte":"eut besoin","drei":"trois","Wochen":"semaines","um":"pour","einzugestehen":"s'avouer","längst":"depuis longtemps","ahnte":"pressentait","und":"et","weitere":"encore","zwei":"deux","Johannes":"Johannes (prénom)","anzurufen":"appeler","jenen":"ce","Verlobten":"fiancé","später":"plus tard","nach":"après","Wende":"la Réunification/le tournant","wiederversöhnt":"réconciliée","dann":"puis","doch":"pourtant","nie":"jamais","wieder":"de nouveau","wirklich":"vraiment","nahegekommen":"rapprochée","Am":"au","Telefon":"téléphone","sagte":"dit","er":"il","nichts":"rien","schon":"déjà","vermutet":"supposé","bestätigte":"confirma","lediglich":"seulement","Stimme":"voix","keine":"aucun","Reue":"remords","mehr":"plus","kennen":"connaître","schien":"semblait","man":"on","ihn":"le","damals":"à l'époque","unter":"sous","Druck":"pression","gesetzt":"mis","habe":"aurait (subj.)","geglaubt":"cru","es":"cela","diene":"servirait","beider":"des deux","Schutz":"protection","gewusst":"su","enden":"finir","würde":"finirait","vielleicht":"peut-être","anders":"autrement","gemacht":"fait","legte":"posa","Ordner":"classeur","danach":"ensuite","weg":"de côté","begann":"commença","noch":"encore","einmal":"une fois","lesen":"lire","diesmal":"cette fois","auf":"à","Suche":"recherche","Bestätigung":"confirmation","etwas":"quelque chose","anderem":"autre","Frage":"question","ob":"si","hinter":"derrière","trockenen":"sèche","womöglich":"peut-être bien","auch":"aussi","Zuneigung":"affection","verbarg":"cachait","aus":"pour","welchen":"quelles que soient","Gründen":"raisons","immer":"toujours","zeigen":"montrer","genaue":"minutieuse","Beobachten":"observation","ihres":"de sa","Lebens":"vie"}$t$::jsonb,
    $t$Inspiré de l'histoire allemande du XXe siècle$t$
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie reagiert Regina zunächst, als sie ihre Stasi-Akte erhält?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Mit großer Erleichterung$t$, false, 1),
    (v_q, $t$Mit einer nüchternen Enttäuschung, weil die Akte dünner ist als erwartet$t$, true, 2),
    (v_q, $t$Mit Wut auf die Behörde$t$, false, 3),
    (v_q, $t$Mit völliger Gleichgültigkeit$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was verzeichnet die Akte laut Erzählung, obwohl es banal erscheint?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Nur politische Aktivitäten$t$, false, 1),
    (v_q, $t$Alltägliches wie Einkäufe, Kirchgänge und einen Streit mit dem Vermieter$t$, true, 2),
    (v_q, $t$Ausschließlich Reisen ins Ausland$t$, false, 3),
    (v_q, $t$Nur berufliche Angelegenheiten$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Wirkung erzielt der Kontrast zwischen Reginas erwarteter und tatsächlicher Aktenmenge?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er verharmlost die Überwachung als übertriebene Fantasie Reginas$t$, false, 1),
    (v_q, $t$Er unterstreicht, wie die bürokratische Banalität der Einträge das eigentlich Bedrückende der Überwachung erst greifbar macht$t$, true, 2),
    (v_q, $t$Er zeigt, dass die Stasi ineffizient gearbeitet habe$t$, false, 3),
    (v_q, $t$Er dient nur der komischen Auflockerung$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welchen Decknamen trägt die Person, die Regina beobachtet hat?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Adler$t$, false, 1),
    (v_q, $t$Falke$t$, true, 2),
    (v_q, $t$Wolf$t$, false, 3),
    (v_q, $t$Fuchs$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum vermutet Regina, dass der Informant ihr sehr nahestand?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Weil die Berichte offizielle Dokumente zitieren$t$, false, 1),
    (v_q, $t$Weil die Details so intim und genau sind, dass sie nur von jemandem stammen können, der sie gut kannte$t$, true, 2),
    (v_q, $t$Weil der Deckname ihr bekannt vorkam$t$, false, 3),
    (v_q, $t$Weil die Behörde ihr den Namen direkt mitteilte$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche narrative Funktion hat die Verzögerung, mit der Regina sich eingesteht, wer 'Falke' ist, bevor sie Johannes anruft?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie zeigt reine Unentschlossenheit ohne tiefere Bedeutung$t$, false, 1),
    (v_q, $t$Sie spiegelt den psychologischen Prozess wider, eine schmerzhafte Erkenntnis erst allmählich zulassen zu können$t$, true, 2),
    (v_q, $t$Sie ist ein erzählerischer Fehler$t$, false, 3),
    (v_q, $t$Sie deutet an, dass Regina die Wahrheit nie wirklich erfährt$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bestätigt Johannes am Telefon?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Dass er nie etwas mit der Stasi zu tun hatte$t$, false, 1),
    (v_q, $t$Dass man ihn damals unter Druck gesetzt hatte, Berichte über Regina zu liefern$t$, true, 2),
    (v_q, $t$Dass er die Akte nie gelesen hat$t$, false, 3),
    (v_q, $t$Dass Regina sich irrt$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie verändert sich Reginas Umgang mit der Akte am Ende der Geschichte?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie vernichtet die Akte sofort$t$, false, 1),
    (v_q, $t$Sie liest sie erneut, nun auf der Suche nach möglicher Zuneigung hinter der trockenen Sprache$t$, true, 2),
    (v_q, $t$Sie gibt die Akte an die Behörde zurück$t$, false, 3),
    (v_q, $t$Sie zeigt sie der Presse$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie ist die abschließende Deutung zu verstehen, wonach Johannes' Beobachten vielleicht eine Form von Zuneigung gewesen sein könnte?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie rechtfertigt eindeutig die Überwachung als Liebesbeweis$t$, false, 1),
    (v_q, $t$Sie öffnet die Geschichte für eine ambivalente, nicht auflösbare Lesart von Nähe, Verrat und Zwang unter diktatorischen Bedingungen$t$, true, 2),
    (v_q, $t$Sie zeigt, dass Regina Johannes vollständig verzeiht$t$, false, 3),
    (v_q, $t$Sie beweist, dass Johannes nie unter Druck stand$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet "Erleichterung"?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Bedrückung$t$, false, 1),
    (v_q, $t$ein Gefühl der Befreiung von einer Last$t$, true, 2),
    (v_q, $t$Wut$t$, false, 3),
    (v_q, $t$Langeweile$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet "Deckname" im Kontext der Geschichte?$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$der echte, amtliche Name einer Person$t$, false, 1),
    (v_q, $t$ein fiktiver Name, unter dem ein Informant geführt wurde$t$, true, 2),
    (v_q, $t$ein Spitzname unter Freunden$t$, false, 3),
    (v_q, $t$ein Künstlername$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Konnotation trägt "Gründlichkeit" im Zusammenhang mit der bürokratischen Sprache der Akte?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Nachlässigkeit und Unordnung$t$, false, 1),
    (v_q, $t$eine erschreckend systematische, penible Erfassung selbst des Belanglosen$t$, true, 2),
    (v_q, $t$künstlerische Kreativität$t$, false, 3),
    (v_q, $t$emotionale Wärme$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Zeitform liegt in "sie empfand" vor?$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Präsens$t$, false, 1),
    (v_q, $t$Präteritum$t$, true, 2),
    (v_q, $t$Futur I$t$, false, 3),
    (v_q, $t$Konjunktiv I$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Form liegt in "man ihn damals unter Druck gesetzt habe" vor?$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Konjunktiv I in indirekter Rede$t$, true, 1),
    (v_q, $t$Indikativ Perfekt$t$, false, 2),
    (v_q, $t$Passiv Präsens$t$, false, 3),
    (v_q, $t$Imperativ$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche grammatische Struktur zeigt der Satz "dass er es, hätte er gewusst, wie es enden würde, vielleicht anders gemacht hätte"?$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Ein eingeschobener irrealer Konditionalsatz der Vergangenheit ohne 'wenn' (Inversion) im Konjunktiv II$t$, true, 1),
    (v_q, $t$Eine einfache Aufzählung im Indikativ$t$, false, 2),
    (v_q, $t$Ein Relativsatz im Passiv$t$, false, 3),
    (v_q, $t$Eine direkte Rede im Imperativ$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$Schreiben Sie eine reflektierende Passage (ca. 120 Wörter) darüber, wie Menschen Jahrzehnte nach einer Diktatur mit dem Wissen um Verrat und Überwachung im eigenen Umfeld umgehen könnten.$t$, 1, 'normal', 'production', $t$Die Konfrontation mit dem Wissen, von einem nahestehenden Menschen beobachtet worden zu sein, stellt die Betroffenen vor eine doppelte Aufgabe: die historische Tatsache zu verstehen und zugleich die persönliche Beziehung neu zu deuten. Oft lässt sich beides nicht sauber trennen, da die Motive der Informanten selten eindeutig waren, zwischen Zwang, Überzeugung und Angst changierend. Eine vorschnelle moralische Verurteilung greift daher häufig zu kurz, ebenso wie eine bedingungslose Vergebung. Vielmehr scheint es notwendig, die Ambivalenz auszuhalten, ohne sie vollständig aufzulösen. Gerade in dieser Uneindeutigkeit liegt womöglich der eigentliche Kern der Aufarbeitung: nicht ein endgültiges Urteil zu fällen, sondern zu lernen, mit einer unabschließbaren Frage weiterzuleben.$t$);

END $block$;

-- 4. Das Formular
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary, culture_note) VALUES (
    'C2',
    $t$Das Formular$t$,
    $t$An dem Morgen, an dem Herr Brenner zum vierten Mal jenes Formular ausfüllen sollte, das er bereits dreimal eingereicht hatte, fiel ihm zum ersten Mal auf, dass niemand im Amt ihm je erklärt hatte, wofür es eigentlich benötigt wurde. Die Sachbearbeiterin, eine Frau mit auffallend ruhigen Händen, teilte ihm mit, das vorige Formular sei „aus formalen Gründen ungültig geworden", ohne dass sie näher ausführte, welche Gründe dies seien oder seit wann Formulare überhaupt ungültig werden könnten, nachdem sie bereits angenommen worden waren.

Er bat um eine schriftliche Bestätigung, dass er das Formular tatsächlich zum vierten Mal eingereicht habe, woraufhin man ihn in ein anderes Büro schickte, zuständig, wie es hieß, für „Bestätigungen von Wiederholungen". Dort erfuhr er, dass Bestätigungen dieser Art ihrerseits ein Formular voraussetzten, das er noch nicht besaß, weil es, wie ihm erklärt wurde, nur an Personen ausgegeben werde, die bereits eine Bestätigung vorweisen könnten. Brenner stand eine Weile in dem engen Flur, betrachtete die Nummern über den Türen, die keiner erkennbaren Ordnung zu folgen schienen, und fragte sich, ob er der Erste sei, dem dieser Widerspruch aufgefallen war, oder ob alle anderen längst gelernt hatten, ihn nicht mehr zu bemerken.

Als er am Nachmittag ein drittes Büro aufsuchte, das ihm eine Kollegin empfohlen hatte, „weil man dort manchmal Ausnahmen mache", wurde ihm mitgeteilt, Ausnahmen würden grundsätzlich nur montags bearbeitet, und zwar ausschließlich für Fälle, die bereits am Freitag zuvor angemeldet worden seien. Es war Mittwoch. Brenner bedankte sich, wie es sich gehörte, verließ das Gebäude und stellte fest, dass er sich, obwohl er den ganzen Tag lang von einem Schalter zum nächsten gelaufen war, nicht im Geringsten erschöpft fühlte, sondern eher von einer Art nüchterner Neugier erfüllt war, als beobachte er ein Naturphänomen, dessen Gesetzmäßigkeiten sich ihm zwar entzogen, das aber gerade dadurch etwas seltsam Beruhigendes besaß.

Am folgenden Montag stand er wieder vor dem ersten Schalter, das Formular in der Hand, bereit, es zum fünften Mal einzureichen, ohne dass er selbst hätte sagen können, ob er dies aus Hoffnung tat oder aus einer Ergebenheit, die ihm allmählich vertrauter geworden war als jedes denkbare Ergebnis.$t$,
    $t$Le matin où Monsieur Brenner devait remplir pour la quatrième fois ce formulaire qu'il avait déjà soumis trois fois, il remarqua pour la première fois que personne, au bureau, ne lui avait jamais expliqué à quoi celui-ci servait réellement. L'employée chargée du dossier, une femme aux mains remarquablement calmes, l'informa que le formulaire précédent était devenu « invalide pour des raisons formelles », sans préciser davantage quelles étaient ces raisons, ni depuis quand des formulaires pouvaient devenir invalides après avoir déjà été acceptés.

Il demanda une confirmation écrite attestant qu'il avait effectivement soumis le formulaire pour la quatrième fois, sur quoi on l'envoya vers un autre bureau, compétent, disait-on, pour les « confirmations de répétitions ». Il y apprit que ce type de confirmations présupposait à son tour un formulaire qu'il ne possédait pas encore, car celui-ci, lui expliqua-t-on, n'était délivré qu'aux personnes pouvant déjà présenter une confirmation. Brenner resta un moment dans le couloir étroit, contemplant les numéros au-dessus des portes, qui ne semblaient suivre aucun ordre reconnaissable, et se demanda s'il était le premier à avoir remarqué cette contradiction, ou si tous les autres avaient depuis longtemps appris à ne plus la remarquer.

Lorsqu'il se rendit l'après-midi à un troisième bureau qu'une collègue lui avait recommandé, « parce qu'on y ferait parfois des exceptions », on lui communiqua que les exceptions n'étaient traitées, en principe, que le lundi, et exclusivement pour les cas déjà annoncés le vendredi précédent. On était mercredi. Brenner remercia, comme il se doit, quitta le bâtiment et constata que, bien qu'il eût couru toute la journée d'un guichet à l'autre, il ne se sentait pas le moins du monde épuisé, mais plutôt empli d'une sorte de curiosité sobre, comme s'il observait un phénomène naturel dont les lois lui échappaient, mais qui, précisément par cela, avait quelque chose d'étrangement apaisant.

Le lundi suivant, il se retrouva devant le premier guichet, le formulaire à la main, prêt à le soumettre pour la cinquième fois, sans pouvoir dire lui-même s'il agissait par espoir ou par une résignation devenue peu à peu plus familière que n'importe quel résultat envisageable.$t$,
    $t${"An":"en","dem":"le","Morgen":"matin","an":"où","Herr":"monsieur","Brenner":"Brenner (nom)","zum":"pour la","vierten":"quatrième","Mal":"fois","jenes":"ce","Formular":"formulaire","ausfüllen":"remplir","sollte":"devait","das":"que/qu'il","er":"il","bereits":"déjà","dreimal":"trois fois","eingereicht":"soumis","hatte":"avait","fiel":"vint (fiel...auf = remarqua)","ihm":"lui","ersten":"première","auf":"(particule, auffiel)","dass":"que","niemand":"personne","im":"au","Amt":"bureau/administration","je":"jamais","erklärt":"expliqué","wofür":"à quoi","es":"il/cela","eigentlich":"en fait","benötigt":"nécessaire","wurde":"était/devenait","Die":"la","Sachbearbeiterin":"l'employée chargée du dossier","eine":"une","Frau":"femme","mit":"aux","auffallend":"remarquablement","ruhigen":"calmes","Händen":"mains","teilte":"informa","vorige":"précédent","sei":"serait (subj. I)","aus":"pour des","formalen":"formelles","Gründen":"raisons","ungültig":"invalide","geworden":"devenu","ohne":"sans","sie":"elle","näher":"plus précisément","ausführte":"détaillât","welche":"quelles","Gründe":"raisons","dies":"cela","seien":"seraient (subj.)","oder":"ou","seit":"depuis","wann":"quand","Formulare":"formulaires","überhaupt":"seulement/en général","werden":"devenir","könnten":"pourraient","nachdem":"après que","angenommen":"acceptés","worden":"été (passif)","waren":"avaient été","Er":"il","bat":"demanda","um":"pour","schriftliche":"écrite","Bestätigung":"confirmation","tatsächlich":"effectivement","habe":"aurait (subj.)","woraufhin":"suite à quoi","man":"on","ihn":"le","in":"dans","ein":"un","anderes":"autre","Büro":"bureau","schickte":"envoya","zuständig":"compétent","wie":"comme","hieß":"il était dit","für":"pour","Bestätigungen":"confirmations","von":"de","Wiederholungen":"répétitions","Dort":"là","erfuhr":"apprit","dieser":"de ce","Art":"genre","ihrerseits":"de leur côté","voraussetzten":"présupposaient","noch":"encore","nicht":"ne pas","besaß":"possédait","weil":"parce que","nur":"seulement","Personen":"personnes","ausgegeben":"délivré","werde":"serait (subj.)","die":"qui","vorweisen":"présenter","stand":"se tint","Weile":"un moment","engen":"étroit","Flur":"couloir","betrachtete":"contempla","Nummern":"numéros","über":"au-dessus","den":"les","Türen":"portes","keiner":"aucun","erkennbaren":"reconnaissable","Ordnung":"ordre","zu":"à","folgen":"suivre","schienen":"semblaient","und":"et","fragte":"demanda","sich":"se","ob":"si","der":"le","Erste":"premier","Widerspruch":"contradiction","aufgefallen":"remarquée","war":"avait été","alle":"tous","anderen":"les autres","längst":"depuis longtemps","gelernt":"appris","hatten":"avaient","mehr":"plus","bemerken":"remarquer","Als":"lorsque","am":"le/l'","Nachmittag":"après-midi","drittes":"troisième","aufsuchte":"se rendit à","Kollegin":"collègue","empfohlen":"recommandé","dort":"là","manchmal":"parfois","Ausnahmen":"exceptions","mache":"ferait (subj.)","mitgeteilt":"communiqué","würden":"seraient (subj.)","grundsätzlich":"en principe","montags":"le lundi","bearbeitet":"traitées","zwar":"en effet","ausschließlich":"exclusivement","Fälle":"cas","Freitag":"vendredi","zuvor":"précédent","angemeldet":"annoncés","Es":"c'","Mittwoch":"mercredi","bedankte":"remercia","gehörte":"convenait","verließ":"quitta","Gebäude":"bâtiment","stellte":"constata","fest":"(stellte fest = constata)","obwohl":"bien que","ganzen":"tout le","Tag":"jour","lang":"durant","einem":"un","Schalter":"guichet","nächsten":"suivant","gelaufen":"couru/marché","Geringsten":"le moins du monde","erschöpft":"épuisé","fühlte":"sentit","sondern":"mais","eher":"plutôt","einer":"d'une","nüchterner":"sobre","Neugier":"curiosité","erfüllt":"empli","als":"comme si","beobachte":"observait","Naturphänomen":"phénomène naturel","dessen":"dont les","Gesetzmäßigkeiten":"lois/régularités","entzogen":"échappaient","aber":"mais","gerade":"justement","dadurch":"par cela même","etwas":"quelque chose de","seltsam":"étrangement","Beruhigendes":"apaisant","Am":"le","folgenden":"suivant","Montag":"lundi","wieder":"de nouveau","vor":"devant","Hand":"main","bereit":"prêt","fünften":"cinquième","einzureichen":"à soumettre","selbst":"lui-même","hätte":"aurait pu","sagen":"dire","können":"pouvoir","Hoffnung":"espoir","tat":"faisait","Ergebenheit":"résignation/soumission","allmählich":"peu à peu","vertrauter":"plus familière","jedes":"tout","denkbare":"envisageable","Ergebnis":"résultat"}$t$::jsonb,
    $t$Littérature allemande contemporaine$t$
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was soll Herr Brenner an diesem Morgen zum vierten Mal tun?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Ein Formular ausfüllen$t$, true, 1),
    (v_q, $t$Ein Amt besuchen, um sich zu beschweren$t$, false, 2),
    (v_q, $t$Eine Kollegin anrufen$t$, false, 3),
    (v_q, $t$Ein Gebäude verlassen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was fällt Brenner zum ersten Mal auf?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Dass das Amt geschlossen ist$t$, false, 1),
    (v_q, $t$Dass ihm nie erklärt wurde, wofür das Formular benötigt wird$t$, true, 2),
    (v_q, $t$Dass die Sachbearbeiterin unfreundlich ist$t$, false, 3),
    (v_q, $t$Dass er das falsche Gebäude betreten hat$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche erzählerische Wirkung hat es, dass die Begründung für die Ungültigkeit des Formulars nie konkretisiert wird?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie soll zeigen, dass Brenner unaufmerksam war$t$, false, 1),
    (v_q, $t$Sie erzeugt ein Gefühl bürokratischer Undurchdringlichkeit, in der Regeln existieren, ohne begründbar zu sein$t$, true, 2),
    (v_q, $t$Sie ist ein Hinweis auf Korruption im Amt$t$, false, 3),
    (v_q, $t$Sie dient lediglich der Situationskomik ohne weitere Bedeutung$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was benötigt Brenner, um eine Bestätigung der Wiederholungen zu erhalten?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Einen Ausweis$t$, false, 1),
    (v_q, $t$Ein Formular, das er noch nicht besitzt$t$, true, 2),
    (v_q, $t$Eine Unterschrift der Sachbearbeiterin$t$, false, 3),
    (v_q, $t$Geld$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum kann Brenner das benötigte Formular nicht bekommen?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Weil es ausverkauft ist$t$, false, 1),
    (v_q, $t$Weil es nur an Personen ausgegeben wird, die bereits eine Bestätigung vorweisen können, die aber genau dieses Formular voraussetzt$t$, true, 2),
    (v_q, $t$Weil er die falsche Sprache spricht$t$, false, 3),
    (v_q, $t$Weil das Amt an diesem Tag geschlossen hat$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welches strukturelle Prinzip liegt dem geschilderten bürokratischen System zugrunde?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Ein klar hierarchisches System mit eindeutigen Zuständigkeiten$t$, false, 1),
    (v_q, $t$Ein zirkuläres System, in dem jede Voraussetzung eine andere, gleichermaßen unerreichbare Voraussetzung erfordert$t$, true, 2),
    (v_q, $t$Ein rein zufälliges System ohne jede innere Logik$t$, false, 3),
    (v_q, $t$Ein System, das absichtlich nur Ausländer benachteiligt$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wann werden laut dem dritten Büro Ausnahmen bearbeitet?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Jeden Tag$t$, false, 1),
    (v_q, $t$Nur montags, für am Freitag zuvor angemeldete Fälle$t$, true, 2),
    (v_q, $t$Nur an Feiertagen$t$, false, 3),
    (v_q, $t$Nie$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie fühlt sich Brenner, nachdem er den ganzen Tag erfolglos unterwegs war?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Wütend und erschöpft$t$, false, 1),
    (v_q, $t$Nicht erschöpft, sondern von einer nüchternen Neugier erfüllt$t$, true, 2),
    (v_q, $t$Verzweifelt und resigniert$t$, false, 3),
    (v_q, $t$Gleichgültig und gelangweilt$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie ist Brenners Rückkehr zum Schalter am folgenden Montag zu deuten?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Als eindeutiger Beweis seiner Naivität$t$, false, 1),
    (v_q, $t$Als offene, ambivalente Haltung zwischen Hoffnung und einer ihm mittlerweile vertrauten Ergebenheit gegenüber dem System$t$, true, 2),
    (v_q, $t$Als bewusster Akt des zivilen Ungehorsams$t$, false, 3),
    (v_q, $t$Als Zeichen dafür, dass er das System endgültig durchschaut und besiegt hat$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet "ungültig"?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$gültig$t$, false, 1),
    (v_q, $t$nicht mehr gültig, ohne Wirkung$t$, true, 2),
    (v_q, $t$neu$t$, false, 3),
    (v_q, $t$dringend$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet "voraussetzen" im Kontext des Textes?$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$etwas ablehnen$t$, false, 1),
    (v_q, $t$etwas als notwendige Bedingung verlangen$t$, true, 2),
    (v_q, $t$etwas vergessen$t$, false, 3),
    (v_q, $t$etwas anbieten$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Bedeutungsnuance trägt "Ergebenheit" am Ende des Textes?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$aktiver Widerstand gegen das System$t$, false, 1),
    (v_q, $t$eine resignierte, fast demütige Fügsamkeit gegenüber einer unveränderlichen Ordnung$t$, true, 2),
    (v_q, $t$aufrichtige Begeisterung für Bürokratie$t$, false, 3),
    (v_q, $t$völlige Gleichgültigkeit gegenüber dem Ausgang$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Zeitform liegt in "er hatte eingereicht" vor?$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Präsens$t$, false, 1),
    (v_q, $t$Plusquamperfekt$t$, true, 2),
    (v_q, $t$Futur II$t$, false, 3),
    (v_q, $t$Konjunktiv II$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Form liegt in "das vorige Formular sei ungültig geworden" vor?$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Konjunktiv I in indirekter Rede$t$, true, 1),
    (v_q, $t$Indikativ Präteritum$t$, false, 2),
    (v_q, $t$Passiv Perfekt$t$, false, 3),
    (v_q, $t$Imperativ$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche grammatische Konstruktion liegt in "ein Formular, das er noch nicht besaß, weil es nur an Personen ausgegeben werde, die bereits eine Bestätigung vorweisen könnten" vor?$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Eine Kette aus Relativsatz und Konjunktiv I der indirekten Rede zur Wiedergabe der Amtsauskunft$t$, true, 1),
    (v_q, $t$Ein einfacher Hauptsatz im Indikativ$t$, false, 2),
    (v_q, $t$Ein Imperativsatz mit Höflichkeitsform$t$, false, 3),
    (v_q, $t$Ein Passivsatz ohne Nebensatz$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$Verfassen Sie eine kurze reflektierende Passage (ca. 120 Wörter) darüber, welche Bedeutung absurde bürokratische Situationen in unserem Alltag für unser Verständnis von Ordnung und Sinn haben können.$t$, 1, 'normal', 'production', $t$Absurde bürokratische Situationen konfrontieren uns mit der beunruhigenden Möglichkeit, dass Ordnung nicht notwendigerweise Sinn bedeutet. Ein System kann vollkommen konsistent in seinen Regeln erscheinen und dennoch keinerlei nachvollziehbaren Zweck erfüllen, was unser Vertrauen in institutionelle Vernunft grundlegend erschüttert. Interessanterweise reagieren Betroffene darauf nicht immer mit Verzweiflung, sondern manchmal mit einer Art distanzierter Neugier, als beobachteten sie ein Naturphänomen jenseits menschlicher Kontrolle. Diese Haltung lässt sich als Bewältigungsstrategie verstehen, die es erlaubt, in einem sinnentzogenen System weiterzufunktionieren, ohne daran zu zerbrechen. Zugleich wirft sie die Frage auf, ob eine solche Anpassung nicht selbst zu einer stillen Komplizenschaft mit dem Absurden wird.$t$);

END $block$;

-- 5. Die Vase
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary, culture_note) VALUES (
    'C2',
    $t$Die Vase$t$,
    $t$Marlene: Ich hatte die Vase schon in der Hand, als Tobias hereinkam und mich fragte, ob ich sie wirklich nehmen wolle, in einem Ton, der mir sofort klarmachte, dass er sie eigentlich für sich beansprucht hätte. Ich erwiderte, unsere Mutter habe sie mir versprochen, was insofern stimmte, als sie es einmal, beiläufig, an einem Weihnachtsabend gesagt hatte, ohne dass ich damals dem geringste Bedeutung beigemessen hätte. Tobias verzog das Gesicht, sagte aber nichts weiter, und ich empfand sein Schweigen als stille Zustimmung, obwohl ich im Nachhinein zugeben muss, dass ich mir dies vielleicht nur eingeredet habe, weil es mir die Vase leichter machte, zu behalten.

Tobias: Als ich Marlene mit der Vase in der Hand sah, wollte ich sie nicht danach fragen, aus Angst, wie ein kleinlicher Streithahn zu wirken, der um Nippes feilscht, während unsere Mutter noch nicht einmal drei Wochen tot war. Ich fragte trotzdem, weil ich wusste, dass ich es später bereuen würde, es nicht getan zu haben, und ihre Antwort über das angebliche Versprechen unserer Mutter erschien mir sofort unglaubwürdig, da sich unsere Mutter, soweit ich mich erinnere, in solchen Dingen nie festgelegt hatte. Ich schwieg dennoch, nicht aus Zustimmung, sondern weil mir in diesem Moment klarwurde, dass es lächerlich wäre, sich am Tag der Wohnungsauflösung wegen einer Vase zu zerstreiten, die keiner von uns beiden je besonders gemocht hatte.

Die Nachbarin, Frau Ostwald: Ich stand zufällig im Türrahmen, als ich die Geschwister über die Vase sprechen hörte, und was mir auffiel, war weniger der Inhalt des Gesprächs als sein Tonfall: beide sprachen leise, fast zärtlich, als führten sie nicht einen Streit, sondern ein letztes gemeinsames Ritual, bei dem der Gegenstand selbst kaum mehr Bedeutung hatte als der Vorwand, den er ihnen bot, noch einmal miteinander zu sprechen, bevor das Haus ihrer Mutter für immer aufgelöst würde. Ich habe nie erfahren, wer die Vase am Ende mitnahm, und ich glaube, das war für die beiden ohnehin nie die eigentliche Frage. Manchmal denke ich, dass Geschwister sich solche Gegenstände nur deshalb streitig machen, weil das Streiten selbst ihnen erlaubt, eine Nähe zu zeigen, für die es sonst, gerade in solchen Momenten, keine andere Sprache mehr gibt.$t$,
    $t$Marlène : J'avais déjà la vase en main lorsque Tobias entra et me demanda si je comptais vraiment la prendre, sur un ton qui me fit aussitôt comprendre qu'il l'aurait en fait revendiquée pour lui-même. Je répliquai que notre mère me l'avait promise, ce qui était vrai dans la mesure où elle l'avait dit une fois, incidemment, lors d'un soir de Noël, sans que j'y aie accordé, à l'époque, la moindre importance. Tobias grimaça, mais ne dit rien de plus, et je ressentis son silence comme une approbation tacite, bien que je doive admettre, après coup, que je me suis peut-être seulement persuadée moi-même de cela, parce que cela me rendait plus facile de garder la vase.

Tobias : Lorsque je vis Marlène la vase en main, je ne voulus pas lui poser de question à ce sujet, par peur de paraître comme un chicaneur mesquin qui marchande des bibelots alors que notre mère n'était pas morte depuis même trois semaines. Je le demandai quand même, car je savais que je le regretterais plus tard de ne pas l'avoir fait, et sa réponse au sujet de la prétendue promesse de notre mère me parut aussitôt peu crédible, car notre mère, pour autant que je m'en souvienne, ne s'était jamais engagée de la sorte. Je me tus tout de même, non par approbation, mais parce qu'il me devint clair, à cet instant, qu'il serait ridicule de se brouiller le jour du vidage de l'appartement à cause d'une vase qu'aucun de nous deux n'avait jamais particulièrement aimée.

La voisine, Madame Ostwald : Je me tenais par hasard dans l'encadrement de la porte lorsque j'entendis le frère et la sœur parler de la vase, et ce qui me frappa fut moins le contenu de la conversation que son ton : tous deux parlaient doucement, presque tendrement, comme s'ils ne menaient pas une dispute, mais un dernier rituel commun, dans lequel l'objet lui-même n'avait guère plus d'importance que le prétexte qu'il leur offrait de se parler une fois encore, avant que la maison de leur mère ne soit vidée pour toujours. Je n'ai jamais appris qui, à la fin, emporta la vase, et je crois que ce n'était de toute façon jamais la véritable question pour ces deux-là. Je pense parfois que les frères et sœurs ne se disputent de tels objets que parce que la dispute elle-même leur permet de montrer une proximité pour laquelle, précisément dans de tels moments, il n'existe plus d'autre langage.$t$,
    $t${"Marlene":"Marlene (prénom)","Ich":"je","hatte":"avais","die":"le/la","Vase":"vase","schon":"déjà","in":"dans","der":"la/le","Hand":"main","als":"lorsque","Tobias":"Tobias (prénom)","hereinkam":"entra","und":"et","mich":"me","fragte":"demanda","ob":"si","ich":"je","sie":"le (la vase)","wirklich":"vraiment","nehmen":"prendre","wolle":"voulait (subj.)","einem":"un","Ton":"ton","mir":"me","sofort":"aussitôt","klarmachte":"fit comprendre","dass":"que","er":"il","eigentlich":"en fait","für":"pour","sich":"se/soi","beansprucht":"revendiquée","hätte":"aurait","erwiderte":"répliquai","unsere":"notre","Mutter":"mère","habe":"aurait (subj.)","versprochen":"promise","was":"ce qui","insofern":"dans la mesure où","stimmte":"était vrai","es":"cela","einmal":"une fois","beiläufig":"incidemment","an":"lors d'un","Weihnachtsabend":"soir de Noël","gesagt":"dit","ohne":"sans","damals":"à l'époque","dem":"y (à cela)","geringste":"la moindre","Bedeutung":"importance","beigemessen":"accordée","verzog":"grimaça (visage)","das":"le","Gesicht":"visage","sagte":"dit","aber":"mais","nichts":"rien","weiter":"de plus","empfand":"ressentis","sein":"son","Schweigen":"silence","stille":"tacite","Zustimmung":"approbation","obwohl":"bien que","im":"dans le","Nachhinein":"après coup","zugeben":"admettre","muss":"dois","dies":"cela","vielleicht":"peut-être","nur":"seulement","eingeredet":"persuadée moi-même","weil":"parce que","leichter":"plus facile","machte":"rendait","zu":"à","behalten":"garder","Als":"lorsque","mit":"avec","sah":"vis","wollte":"voulais","nicht":"ne pas","danach":"à ce sujet","fragen":"demander","aus":"par","Angst":"peur","wie":"comme","ein":"un","kleinlicher":"mesquin","Streithahn":"chicaneur","wirken":"paraître","um":"pour","Nippes":"bibelots","feilscht":"marchande","während":"alors que","noch":"encore","drei":"trois","Wochen":"semaines","tot":"morte","war":"était","trotzdem":"quand même","wusste":"savais","später":"plus tard","bereuen":"regretter","würde":"allais (conditionnel)","getan":"fait","haben":"avoir","ihre":"sa","Antwort":"réponse","über":"au sujet de","angebliche":"prétendue","Versprechen":"promesse","unserer":"de notre","erschien":"parut","unglaubwürdig":"peu crédible","da":"car","soweit":"pour autant que","erinnere":"me souvienne","solchen":"de telles","Dingen":"choses","nie":"jamais","festgelegt":"engagée","schwieg":"me tus","dennoch":"pourtant","sondern":"mais","diesem":"ce","Moment":"moment","klarwurde":"devint clair","lächerlich":"ridicule","wäre":"serait","am":"le","Tag":"jour","Wohnungsauflösung":"vidage de l'appartement","wegen":"à cause de","einer":"une","zerstreiten":"se brouiller","keiner":"aucun","von":"de","uns":"nous","beiden":"deux","je":"jamais","besonders":"particulièrement","gemocht":"aimé","Die":"la","Nachbarin":"voisine","Frau":"madame","Ostwald":"Ostwald (nom)","stand":"me tenais","zufällig":"par hasard","Türrahmen":"encadrement de porte","Geschwister":"frère et sœur","sprechen":"parler","hörte":"entendis","auffiel":"frappa (attention)","weniger":"moins","Inhalt":"contenu","des":"de la","Gesprächs":"conversation","Tonfall":"ton (de voix)","beide":"tous deux","sprachen":"parlaient","leise":"doucement","fast":"presque","zärtlich":"tendrement","führten":"menaient","einen":"une","Streit":"dispute","letztes":"dernier","gemeinsames":"commun","Ritual":"rituel","bei":"dans lequel","Gegenstand":"objet","selbst":"lui-même","kaum":"à peine","mehr":"plus","Vorwand":"prétexte","den":"que","ihnen":"leur","bot":"offrait","miteinander":"l'un avec l'autre","bevor":"avant que","Haus":"maison","ihrer":"de leur","immer":"pour toujours","aufgelöst":"dissoute/vidée","erfahren":"appris","wer":"qui","Ende":"fin","mitnahm":"emporta","glaube":"crois","ohnehin":"de toute façon","eigentliche":"véritable","Frage":"question","Manchmal":"parfois","denke":"pense","solche":"de tels","Gegenstände":"objets","deshalb":"pour cette raison","streitig":"(machen = disputer)","machen":"faire","Streiten":"le fait de se disputer","erlaubt":"permet","eine":"une","Nähe":"proximité","zeigen":"montrer","sonst":"sinon","gerade":"justement","Momenten":"moments","keine":"aucune","andere":"autre","Sprache":"langue/langage","gibt":"y a"}$t$::jsonb,
    $t$Littérature allemande contemporaine$t$
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Worum streiten sich Marlene und Tobias?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Um ein Bild$t$, false, 1),
    (v_q, $t$Um eine Vase ihrer verstorbenen Mutter$t$, true, 2),
    (v_q, $t$Um das Haus$t$, false, 3),
    (v_q, $t$Um Geld$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welches Argument bringt Marlene für ihren Anspruch auf die Vase vor?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie habe die Vase gekauft$t$, false, 1),
    (v_q, $t$Ihre Mutter habe sie ihr einmal beiläufig versprochen$t$, true, 2),
    (v_q, $t$Sie sei die ältere Schwester$t$, false, 3),
    (v_q, $t$Sie habe sie schon immer besessen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie deutet Marlenes eigene Formulierung, sie habe sich Tobias' Zustimmung 'vielleicht nur eingeredet', ihre Erzählperspektive?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Als vollkommen objektiv und zuverlässig$t$, false, 1),
    (v_q, $t$Als selbstkritisch und unzuverlässig zugleich, was die Multiperspektivität des Textes motiviert$t$, true, 2),
    (v_q, $t$Als bewusste Lüge gegenüber dem Leser$t$, false, 3),
    (v_q, $t$Als Beweis dafür, dass Tobias tatsächlich zugestimmt hat$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum fragt Tobias trotz seiner Bedenken nach der Vase?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Weil er sie sofort haben will$t$, false, 1),
    (v_q, $t$Weil er es später bereuen würde, es nicht getan zu haben$t$, true, 2),
    (v_q, $t$Weil seine Frau ihn dazu drängt$t$, false, 3),
    (v_q, $t$Weil er Marlene ärgern möchte$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie bewertet Tobias Marlenes Aussage über das Versprechen der Mutter?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Als völlig glaubwürdig$t$, false, 1),
    (v_q, $t$Als unglaubwürdig, da sich die Mutter seiner Erinnerung nach nie so festgelegt habe$t$, true, 2),
    (v_q, $t$Als nicht der Rede wert$t$, false, 3),
    (v_q, $t$Als Beweis für Marlenes Ehrlichkeit$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was zeigt der Vergleich der Innenperspektiven von Marlene und Tobias über die Natur der Erinnerung?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Dass beide sich exakt an dieselben Fakten erinnern$t$, false, 1),
    (v_q, $t$Dass ihre jeweiligen Erinnerungen an das Versprechen der Mutter widersprüchlich sind, ohne dass eine eindeutig als falsch entlarvt wird$t$, true, 2),
    (v_q, $t$Dass Tobias offensichtlich lügt$t$, false, 3),
    (v_q, $t$Dass Marlene ihr Gedächtnis komplett verloren hat$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wer ist die dritte erzählende Person?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Die Mutter der Geschwister$t$, false, 1),
    (v_q, $t$Die Nachbarin, Frau Ostwald$t$, true, 2),
    (v_q, $t$Eine Anwältin$t$, false, 3),
    (v_q, $t$Eine weitere Schwester$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was fällt Frau Ostwald am Gespräch der Geschwister besonders auf?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Der laute, aggressive Tonfall$t$, false, 1),
    (v_q, $t$Der leise, fast zärtliche Tonfall, der eher an ein Ritual als an einen Streit erinnert$t$, true, 2),
    (v_q, $t$Die genauen Fakten über die Vase$t$, false, 3),
    (v_q, $t$Die Tatsache, dass die Geschwister sich seit Jahren nicht mehr gesehen hatten$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche interpretatorische Funktion hat die externe Perspektive der Nachbarin im Vergleich zu den beiden Innenperspektiven?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie liefert die einzig objektive und endgültige Wahrheit über den Streit$t$, false, 1),
    (v_q, $t$Sie bietet eine deutende Distanz, die nahelegt, dass der eigentliche Gegenstand des Gesprächs nicht die Vase, sondern die gemeinsame Trauer war$t$, true, 2),
    (v_q, $t$Sie widerspricht offen beiden Geschwistern und entlarvt sie als Lügner$t$, false, 3),
    (v_q, $t$Sie hat keine erzählerische Funktion und dient nur der Länge$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet "Zustimmung"?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Ablehnung$t$, false, 1),
    (v_q, $t$Einverständnis$t$, true, 2),
    (v_q, $t$Überraschung$t$, false, 3),
    (v_q, $t$Wut$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet "unglaubwürdig"?$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$sehr überzeugend$t$, false, 1),
    (v_q, $t$nicht glaubhaft$t$, true, 2),
    (v_q, $t$geheim$t$, false, 3),
    (v_q, $t$offensichtlich wahr$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Konnotation trägt "Vorwand" im Bericht der Nachbarin?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$ein aufrichtiger, offen genannter Grund$t$, false, 1),
    (v_q, $t$ein vorgeschobener Anlass, der einen tieferen, unausgesprochenen Zweck verdeckt$t$, true, 2),
    (v_q, $t$ein rechtliches Dokument$t$, false, 3),
    (v_q, $t$eine Entschuldigung für ein Missverständnis$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Zeitform liegt in "ich hatte die Vase in der Hand" vor?$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Präsens$t$, false, 1),
    (v_q, $t$Plusquamperfekt$t$, true, 2),
    (v_q, $t$Futur I$t$, false, 3),
    (v_q, $t$Imperativ$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Form liegt in "unsere Mutter habe sie mir versprochen" vor?$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Konjunktiv I in indirekter Rede$t$, true, 1),
    (v_q, $t$Indikativ Perfekt$t$, false, 2),
    (v_q, $t$Passiv$t$, false, 3),
    (v_q, $t$Konditional I$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche grammatische Funktion hat der Konjunktiv II in "als führten sie nicht einen Streit, sondern ein letztes gemeinsames Ritual"?$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er drückt einen irrealen Vergleich (als-ob-Satz) aus, der die tatsächliche Handlung nur der Form nach beschreibt$t$, true, 1),
    (v_q, $t$Er berichtet eine reale, objektive Tatsache$t$, false, 2),
    (v_q, $t$Er formuliert eine höfliche Bitte$t$, false, 3),
    (v_q, $t$Er kennzeichnet die wörtliche Rede der Geschwister$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$Schreiben Sie eine kurze reflektierende Passage (ca. 120 Wörter) darüber, warum verschiedene Menschen dasselbe Ereignis oft unterschiedlich erinnern und welche Konsequenzen dies für unser Verständnis von 'Wahrheit' hat.$t$, 1, 'normal', 'production', $t$Erinnerung ist kein neutrales Abbild eines Ereignisses, sondern stets durch die Perspektive, die Bedürfnisse und die emotionale Verfassung der erinnernden Person gefärbt. Zwei Menschen können denselben Moment erleben und dennoch grundverschiedene Versionen davon in sich tragen, ohne dass einer von beiden bewusst lügt. Dies stellt den Begriff einer einzigen, objektiven Wahrheit infrage und legt nahe, dass Wahrheit im zwischenmenschlichen Bereich oft eher als Aushandlungsprozess denn als feststehende Tatsache zu verstehen ist. Literarische Verfahren, die mehrere Perspektiven nebeneinanderstellen, machen diese Vielstimmigkeit sichtbar und verweigern bewusst eine abschließende Synthese, wodurch sie der Komplexität menschlicher Erinnerung gerechter werden als jede einzelne Version für sich.$t$);

END $block$;

-- 6. Der Tag der Entscheidung
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary, culture_note) VALUES (
    'C2',
    $t$Der Tag der Entscheidung$t$,
    $t$Um kurz nach fünf, als der Wecker noch nicht geklingelt hatte, wachte Katrin bereits auf, mit jener Wachheit, die sie seit ihrer Jugend an entscheidenden Tagen befiel, als spüre der Körper etwas, das der Verstand noch nicht auszusprechen wagte. Heute würde sie ihrem Chef mitteilen, dass sie die Beförderung ablehnte, jene Position, für die sie zwölf Jahre lang unauffällig, aber beharrlich gearbeitet hatte, und die ihr nun, da sie greifbar geworden war, plötzlich fremd erschien, wie ein Kleidungsstück, das man sich einst gewünscht hatte, das aber, sobald man es anprobiert, nicht mehr zu einem zu passen scheint.

Beim Frühstück beobachtete sie ihren Mann, der, ahnungslos, wie er von der neuen Verantwortung sprach, die sie übernehmen würde, mit einem Stolz in der Stimme, der sie eher beschämte als freute. Sie hatte ihm noch nichts von ihrem Entschluss gesagt, nicht aus Feigheit, wie sie sich einredete, sondern weil sie fürchtete, seine Enttäuschung könnte ihre eigene, kaum gefestigte Gewissheit wieder ins Wanken bringen. Auf dem Weg zur Arbeit fuhr sie absichtlich einen Umweg durch das Viertel, in dem sie aufgewachsen war, vorbei an der Schule, die längst ein Seniorenheim geworden war, als müsse sie sich vergewissern, dass es tatsächlich sie selbst gewesen war, die einmal davon geträumt hatte, genau diese Karriere zu machen.

Im Büro, vor der Tür ihres Chefs, zögerte sie länger, als ihr lieb war, und bemerkte, wie ihre Hand auf der Türklinke leicht zitterte, nicht aus Angst vor seiner Reaktion, sondern vor der Endgültigkeit dessen, was sie im Begriff war zu tun. Als sie schließlich eintrat und ihm ihre Entscheidung mitteilte, ruhig und ohne die Rechtfertigungen, die sie sich zurechtgelegt hatte, spürte sie eine Erleichterung, die sich weniger wie ein Triumph anfühlte als wie das Ende einer langen, stillschweigenden Verhandlung mit sich selbst, deren Ausgang sie insgeheim schon seit Wochen gekannt hatte, ohne es sich einzugestehen.

Am Abend, allein auf dem Balkon, fragte sie sich, ob sie am nächsten entscheidenden Tag ihres Lebens dieselbe Klarheit empfinden würde wie heute, oder ob diese Gewissheit selbst nur ein weiteres vorübergehendes Gefühl war.$t$,
    $t$Peu après cinq heures, alors que le réveil n'avait pas encore sonné, Katrin s'éveilla déjà, avec cette lucidité qui l'envahissait depuis sa jeunesse les jours décisifs, comme si le corps pressentait quelque chose que l'esprit n'osait pas encore formuler. Aujourd'hui, elle annoncerait à son chef qu'elle refusait la promotion, ce poste pour lequel elle avait travaillé douze années durant, discrètement mais avec persévérance, et qui lui semblait à présent, devenu tangible, soudain étranger, comme un vêtement qu'on avait autrefois désiré mais qui, une fois essayé, ne semble plus vous aller.

Au petit-déjeuner, elle observa son mari qui, sans se douter de rien, parlait de la nouvelle responsabilité qu'elle allait assumer, avec une fierté dans la voix qui lui faisait plutôt honte que plaisir. Elle ne lui avait encore rien dit de sa décision, non par lâcheté, se persuadait-elle, mais parce qu'elle craignait que sa déception ne fasse vaciller sa propre certitude, à peine consolidée. En chemin vers le travail, elle prit délibérément un détour à travers le quartier où elle avait grandi, devant l'école devenue depuis longtemps une maison de retraite, comme si elle devait s'assurer que c'était bien elle-même qui avait un jour rêvé de faire exactement cette carrière.

Au bureau, devant la porte de son chef, elle hésita plus longtemps qu'elle ne l'aurait voulu, et remarqua que sa main tremblait légèrement sur la poignée, non par peur de sa réaction, mais devant le caractère définitif de ce qu'elle était sur le point de faire. Lorsqu'elle entra enfin et lui communiqua sa décision, calmement et sans les justifications qu'elle s'était préparées, elle ressentit un soulagement qui se sentait moins comme un triomphe que comme la fin d'une longue négociation tacite avec elle-même, dont elle connaissait secrètement l'issue depuis des semaines, sans se l'avouer.

Le soir, seule sur le balcon, elle se demanda si elle ressentirait la même clarté au prochain jour décisif de sa vie, ou si cette certitude elle-même n'était qu'un sentiment passager de plus.$t$,
    $t${"Um":"vers","kurz":"peu","nach":"après","fünf":"cinq","als":"quand","der":"le","Wecker":"réveil","noch":"encore","nicht":"ne pas","geklingelt":"sonné","hatte":"avait","wachte":"se réveilla","Katrin":"Katrin (prénom)","bereits":"déjà","auf":"(wachte auf = se réveilla)","mit":"avec","jener":"cette","Wachheit":"lucidité","die":"que/qui","sie":"elle","seit":"depuis","ihrer":"sa","Jugend":"jeunesse","an":"lors de","entscheidenden":"décisifs","Tagen":"jours","befiel":"envahissait","spüre":"sentait (subj.)","Körper":"corps","etwas":"quelque chose","das":"que","Verstand":"esprit/raison","auszusprechen":"exprimer","wagte":"osait","Heute":"aujourd'hui","würde":"allait (conditionnel)","ihrem":"son","Chef":"chef","mitteilen":"annoncer","dass":"que","Beförderung":"promotion","ablehnte":"refusait","jene":"cette","Position":"poste","für":"pour","zwölf":"douze","Jahre":"années","lang":"durant","unauffällig":"discrètement","aber":"mais","beharrlich":"avec persévérance","gearbeitet":"travaillé","und":"et","ihr":"lui","nun":"maintenant","da":"puisque","greifbar":"tangible/à portée de main","geworden":"devenue","war":"était","plötzlich":"soudain","fremd":"étrangère","erschien":"apparaissait","wie":"comme","ein":"un","Kleidungsstück":"vêtement","man":"on","sich":"se","einst":"autrefois","gewünscht":"désiré","sobald":"dès que","es":"le/on l'","anprobiert":"essayé","mehr":"plus","zu":"à","einem":"soi","passen":"aller/convenir","scheint":"semble","Beim":"au","Frühstück":"petit-déjeuner","beobachtete":"observa","ihren":"son","Mann":"mari","ahnungslos":"sans se douter de rien","er":"il","von":"de","neuen":"nouvelle","Verantwortung":"responsabilité","sprach":"parlait","übernehmen":"assumer","Stolz":"fierté","in":"dans","Stimme":"voix","eher":"plutôt","beschämte":"faisait honte","freute":"réjouissait","Sie":"elle","ihm":"lui","nichts":"rien","Entschluss":"décision","gesagt":"dit","aus":"par","Feigheit":"lâcheté","einredete":"se persuadait","sondern":"mais","weil":"parce que","fürchtete":"craignait","seine":"sa","Enttäuschung":"déception","könnte":"pourrait","ihre":"sa","eigene":"propre","kaum":"à peine","gefestigte":"consolidée","Gewissheit":"certitude","wieder":"de nouveau","ins":"en","Wanken":"vacillement","bringen":"amener","Auf":"sur","dem":"le","Weg":"chemin","zur":"au","Arbeit":"travail","fuhr":"prit (un détour)","absichtlich":"délibérément","einen":"un","Umweg":"détour","durch":"à travers","Viertel":"quartier","aufgewachsen":"grandi","vorbei":"devant","Schule":"école","längst":"depuis longtemps","Seniorenheim":"maison de retraite","müsse":"devait (subj.)","vergewissern":"s'assurer","tatsächlich":"réellement","selbst":"elle-même","gewesen":"été","einmal":"un jour","davon":"de cela","geträumt":"rêvé","genau":"justement","diese":"cette","Karriere":"carrière","machen":"faire","Im":"au","Büro":"bureau","vor":"devant","Tür":"porte","ihres":"de son","Chefs":"chef","zögerte":"hésita","länger":"plus longtemps","lieb":"cher (que voulu)","bemerkte":"remarqua","Hand":"main","Türklinke":"poignée de porte","leicht":"légèrement","zitterte":"tremblait","Angst":"peur","seiner":"de sa","Reaktion":"réaction","Endgültigkeit":"caractère définitif","dessen":"de ce qu'","was":"ce qu'","im":"en train de","Begriff":"(im Begriff sein = être sur le point de)","tun":"faire","Als":"lorsque","schließlich":"finalement","eintrat":"entra","Entscheidung":"décision","mitteilte":"communiqua","ruhig":"calmement","ohne":"sans","Rechtfertigungen":"justifications","zurechtgelegt":"préparées","spürte":"ressentit","eine":"un","Erleichterung":"soulagement","weniger":"moins","Triumph":"triomphe","anfühlte":"se sentait","Ende":"fin","einer":"d'une","langen":"longue","stillschweigenden":"tacite","Verhandlung":"négociation","deren":"dont l'","Ausgang":"issue","insgeheim":"secrètement","schon":"déjà","Wochen":"semaines","gekannt":"connue","einzugestehen":"se l'avouer","Am":"le","Abend":"soir","allein":"seule","Balkon":"balcon","fragte":"demanda","ob":"si","am":"le","nächsten":"prochain","Tag":"jour","Lebens":"de sa vie","dieselbe":"la même","Klarheit":"clarté","empfinden":"ressentir","heute":"aujourd'hui","oder":"ou","nur":"seulement","weiteres":"autre","vorübergehendes":"passager","Gefühl":"sentiment"}$t$::jsonb,
    $t$Littérature allemande contemporaine$t$
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Entscheidung will Katrin an diesem Tag ihrem Chef mitteilen?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Dass sie kündigt$t$, false, 1),
    (v_q, $t$Dass sie die Beförderung ablehnt$t$, true, 2),
    (v_q, $t$Dass sie die Firma verklagen will$t$, false, 3),
    (v_q, $t$Dass sie in Urlaub geht$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum erscheint ihr die Position, für die sie zwölf Jahre gearbeitet hatte, plötzlich fremd?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Weil sie den Job nie wirklich wollte$t$, false, 1),
    (v_q, $t$Weil sie, nun greifbar geworden, wie ein einst gewünschtes Kleidungsstück wirkt, das beim Anprobieren nicht mehr passt$t$, true, 2),
    (v_q, $t$Weil ihr Chef sie ihr wieder entzogen hat$t$, false, 3),
    (v_q, $t$Weil sie zu alt für die Position ist$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Funktion erfüllt der Vergleich mit dem Kleidungsstück für das Verständnis von Katrins innerer Entwicklung?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er zeigt, dass sie sich für ihre Garderobe interessiert$t$, false, 1),
    (v_q, $t$Er veranschaulicht, wie ein lang gehegter Wunsch seine Bedeutung verlieren kann, sobald er tatsächlich erreichbar wird$t$, true, 2),
    (v_q, $t$Er beweist, dass sie sich in der Firma nicht wohlfühlt$t$, false, 3),
    (v_q, $t$Er hat keine tiefere Bedeutung und dient nur der Beschreibung$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum hat Katrin ihrem Mann noch nichts von ihrem Entschluss erzählt?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Weil er im Ausland ist$t$, false, 1),
    (v_q, $t$Weil sie fürchtet, seine Enttäuschung könnte ihre eigene Gewissheit ins Wanken bringen$t$, true, 2),
    (v_q, $t$Weil sie ihn nicht mehr liebt$t$, false, 3),
    (v_q, $t$Weil er es bereits weiß$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum macht Katrin auf dem Weg zur Arbeit einen Umweg durch ihr altes Viertel?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Weil die direkte Straße gesperrt ist$t$, false, 1),
    (v_q, $t$Um sich zu vergewissern, dass sie selbst es war, die einst von dieser Karriere geträumt hatte$t$, true, 2),
    (v_q, $t$Um eine Freundin zu besuchen$t$, false, 3),
    (v_q, $t$Weil sie sich verfahren hat$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Bedeutung hat die alte Schule, die inzwischen ein Seniorenheim ist, für die Erzählstruktur?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie ist reiner Zufall ohne symbolischen Wert$t$, false, 1),
    (v_q, $t$Sie spiegelt den Umschlag von Zukunftsversprechen zu Vergänglichkeit und rahmt Katrins eigenen Übergang von einem alten Lebensentwurf zu einem neuen$t$, true, 2),
    (v_q, $t$Sie zeigt, dass Katrin in der Nähe eines Altersheims wohnt$t$, false, 3),
    (v_q, $t$Sie dient nur der geografischen Orientierung$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie fühlt sich Katrin, nachdem sie ihrem Chef die Entscheidung mitgeteilt hat?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Schuldig und ängstlich$t$, false, 1),
    (v_q, $t$Erleichtert, mehr wie am Ende einer inneren Verhandlung als wie ein Triumph$t$, true, 2),
    (v_q, $t$Enttäuscht von sich selbst$t$, false, 3),
    (v_q, $t$Völlig gleichgültig$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was fragt sich Katrin am Abend auf dem Balkon?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Ob sie ihre Entscheidung rückgängig machen sollte$t$, false, 1),
    (v_q, $t$Ob sie an einem künftigen entscheidenden Tag dieselbe Klarheit empfinden würde$t$, true, 2),
    (v_q, $t$Ob ihr Mann wütend sein wird$t$, false, 3),
    (v_q, $t$Ob sie eine neue Stelle suchen soll$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie ist der offene Schluss zu interpretieren, der die Frage nach der Dauerhaftigkeit von Gewissheit stellt?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er relativiert die zuvor gewonnene Klarheit, indem er sie selbst als möglicherweise vorübergehend infrage stellt, ohne die Entscheidung selbst zu widerrufen$t$, true, 1),
    (v_q, $t$Er zeigt, dass Katrin ihre Entscheidung bereits bereut$t$, false, 2),
    (v_q, $t$Er deutet an, dass die ganze Geschichte ein Traum war$t$, false, 3),
    (v_q, $t$Er hat keine inhaltliche Funktion und dient nur als Abschlussformel$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet "ablehnen"?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$annehmen$t$, false, 1),
    (v_q, $t$zurückweisen, nicht annehmen$t$, true, 2),
    (v_q, $t$fordern$t$, false, 3),
    (v_q, $t$empfehlen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet "beharrlich" im Kontext ihrer zwölfjährigen Arbeit?$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$gelegentlich, unregelmäßig$t$, false, 1),
    (v_q, $t$ausdauernd und hartnäckig$t$, true, 2),
    (v_q, $t$widerwillig$t$, false, 3),
    (v_q, $t$nachlässig$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Nuance trägt "Endgültigkeit" im Moment vor der Bürotür?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$die Vorläufigkeit einer Entscheidung, die noch geändert werden kann$t$, false, 1),
    (v_q, $t$den unwiderruflichen, abschließenden Charakter eines Schrittes, der keine Rückkehr mehr zulässt$t$, true, 2),
    (v_q, $t$eine bloße Formalität ohne Gewicht$t$, false, 3),
    (v_q, $t$eine positive Überraschung$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Zeitform liegt in "der Wecker noch nicht geklingelt hatte" vor?$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Präsens$t$, false, 1),
    (v_q, $t$Plusquamperfekt$t$, true, 2),
    (v_q, $t$Futur II$t$, false, 3),
    (v_q, $t$Konjunktiv I$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Form liegt in "als spüre der Körper etwas" vor?$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Konjunktiv I in einem als-ob-Satz$t$, true, 1),
    (v_q, $t$Indikativ Präteritum$t$, false, 2),
    (v_q, $t$Passiv$t$, false, 3),
    (v_q, $t$Imperativ$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche grammatische Konstruktion liegt in "als müsse sie sich vergewissern, dass es tatsächlich sie selbst gewesen war" vor?$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Ein als-ob-Vergleichssatz im Konjunktiv I, gefolgt von einem dass-Satz im Plusquamperfekt$t$, true, 1),
    (v_q, $t$Ein einfacher Hauptsatz im Präsens$t$, false, 2),
    (v_q, $t$Ein Passivsatz ohne Nebensatz$t$, false, 3),
    (v_q, $t$Ein Imperativ mit Höflichkeitsform$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$Schreiben Sie eine reflektierende Passage (ca. 120 Wörter) darüber, wie es sich anfühlen könnte, einen lange erträumten beruflichen Erfolg im entscheidenden Moment abzulehnen, und was das über unser Verhältnis zu eigenen Zielen aussagt.$t$, 1, 'normal', 'production', $t$Ein lange erträumtes Ziel im Moment seiner Erreichbarkeit abzulehnen, offenbart, dass Wünsche sich im Laufe der Zeit verändern können, ohne dass wir dies bewusst bemerken. Oft klammern wir uns an ein einmal formuliertes Ziel, weil es zu einem Teil unserer Identität geworden ist, selbst wenn die ursprünglichen Beweggründe längst verblasst sind. Der Moment der Konfrontation mit der tatsächlichen Erfüllung zwingt dann zu einer ehrlichen Bestandsaufnahme, die schmerzhaft sein kann, weil sie bedeutet, ein früheres Selbstbild aufzugeben. Eine solche Ablehnung ist daher weniger ein Scheitern als ein Akt der Selbstklärung, auch wenn ihre Konsequenzen im sozialen Umfeld, etwa gegenüber dem eigenen Partner, zunächst unbequem erscheinen mögen.$t$);

END $block$;

-- 7. Die Sicherheitslücke
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary, culture_note) VALUES (
    'C2',
    $t$Die Sicherheitslücke$t$,
    $t$In der Firma nannte man die drei Gründer scherzhaft „das Trio", obwohl es Gudrun war, die das Unternehmen eigentlich zusammengehalten hatte, während Hagen, der technische Kopf, und Siegfried, der charismatische Verkäufer, sich nach außen die Anerkennung teilten. Als Siegfried, kaum dreißig, mit einer Software an die Öffentlichkeit ging, die er heimlich mit einem Konkurrenten entwickelt hatte, ohne Gudrun oder Hagen einzuweihen, empfand Hagen dies nicht als bloßen Vertrauensbruch, sondern als eine Kränkung, die tiefer reichte, als es die bloße geschäftliche Logik erklären konnte: Siegfried hatte ihm, so schien es Hagen, stets mühelos das zugefallen, wofür er selbst Jahre der unsichtbaren Arbeit investiert hatte.

Gudrun ahnte früh, dass Hagen sich nicht mit einer bloßen Trennung von Siegfried zufriedengeben würde. Sie erinnerte sich an eine Bemerkung, die er Monate zuvor beiläufig gemacht hatte, über eine einzige Schwachstelle in Siegfrieds neuem System, eine Sicherheitslücke, von der offenbar niemand außer ihnen beiden wusste, weil Siegfried sie Hagen einst, in einem Moment falsch verstandener Freundschaft, selbst anvertraut hatte. Als sie Hagen direkt fragte, ob er vorhabe, dieses Wissen zu nutzen, um Siegfrieds Ruf zu zerstören, leugnete er es, doch seine Antwort kam eine Spur zu schnell, um sie vollständig zu beruhigen.

Drei Wochen später wurde öffentlich bekannt, dass Siegfrieds gefeierte Software eine gravierende Sicherheitslücke enthielt, durch die Kundendaten monatelang ungeschützt gewesen waren. Der Skandal beendete nicht nur Siegfrieds neues Unternehmen, sondern auch seinen Ruf in der gesamten Branche, und Hagen bestritt bis zuletzt, irgendetwas damit zu tun gehabt zu haben, mit einer Bestimmtheit, die Gudrun nicht mehr zu widerlegen versuchte.

Was Gudrun am meisten beunruhigte, war nicht der Verdacht selbst, sondern die Erkenntnis, dass sie, hätte sie gewollt, Siegfried hätte warnen können, es aber unterließ, aus einer Loyalität zu Hagen, die sie sich selbst nie eingestanden hatte, bis der Preis dafür bereits bezahlt war und sich nicht mehr rückgängig machen ließ. Manchmal, dachte sie später, entscheidet sich Treue nicht in großen, sichtbaren Gesten, sondern in jenem einen stillen Augenblick, in dem man beschließt, nichts zu tun, und genau dieses Schweigen erweist sich rückblickend als die folgenreichste aller Handlungen.$t$,
    $t$Dans l'entreprise, on appelait en plaisantant les trois fondateurs « le trio », bien que ce fût Gudrun qui avait en réalité tenu l'entreprise ensemble, tandis que Hagen, le cerveau technique, et Siegfried, le vendeur charismatique, se partageaient vers l'extérieur la reconnaissance. Lorsque Siegfried, à peine trentenaire, sortit publiquement avec un logiciel qu'il avait développé en secret avec un concurrent, sans en informer ni Gudrun ni Hagen, celui-ci ne ressentit pas cela comme un simple abus de confiance, mais comme une blessure allant plus profond que ce que la seule logique commerciale pouvait expliquer : il lui semblait que tout était toujours échu à Siegfried sans effort, ce pour quoi lui-même avait investi des années d'un travail invisible.

Gudrun pressentit tôt que Hagen ne se contenterait pas d'une simple rupture avec Siegfried. Elle se souvint d'une remarque qu'il avait faite, incidemment, quelques mois plus tôt, à propos d'une unique faille dans le nouveau système de Siegfried, une faille de sécurité dont apparemment personne d'autre qu'eux deux n'avait connaissance, car Siegfried l'avait autrefois confiée à Hagen lui-même, dans un moment d'amitié mal comprise. Lorsqu'elle demanda directement à Hagen s'il comptait utiliser ce savoir pour détruire la réputation de Siegfried, il le nia, mais sa réponse vint un tantinet trop vite pour la rassurer complètement.

Trois semaines plus tard, on apprit publiquement que le logiciel tant acclamé de Siegfried contenait une faille de sécurité grave, par laquelle les données des clients étaient restées non protégées pendant des mois. Le scandale mit fin non seulement à la nouvelle entreprise de Siegfried, mais aussi à sa réputation dans toute la branche, et Hagen nia jusqu'au bout avoir eu quoi que ce soit à voir avec cela, avec une fermeté que Gudrun n'essaya plus de réfuter.

Ce qui inquiétait le plus Gudrun n'était pas le soupçon lui-même, mais la prise de conscience que, si elle l'avait voulu, elle aurait pu avertir Siegfried, mais qu'elle s'en était abstenue, par une loyauté envers Hagen qu'elle ne s'était jamais avouée à elle-même, jusqu'à ce que le prix en fût déjà payé et qu'il ne fût plus possible de revenir en arrière. Parfois, pensa-t-elle plus tard, la fidélité ne se décide pas dans de grands gestes visibles, mais dans cet unique instant silencieux où l'on décide de ne rien faire, et c'est précisément ce silence qui se révèle, rétrospectivement, l'acte le plus lourd de conséquences de tous.$t$,
    $t${"In":"dans","der":"la/le","Firma":"entreprise","nannte":"appelait","man":"on","die":"les/la","drei":"trois","Gründer":"fondateurs","scherzhaft":"en plaisantant","das":"le","Trio":"trio","obwohl":"bien que","es":"ce","Gudrun":"Gudrun (prénom)","war":"était","Unternehmen":"entreprise","eigentlich":"en fait","zusammengehalten":"tenue ensemble","hatte":"avait","während":"tandis que","Hagen":"Hagen (prénom)","technische":"technique","Kopf":"cerveau/tête","und":"et","Siegfried":"Siegfried (prénom)","charismatische":"charismatique","Verkäufer":"vendeur","sich":"se","nach":"vers","außen":"l'extérieur","Anerkennung":"reconnaissance","teilten":"partageaient","Als":"lorsque","kaum":"à peine","dreißig":"trente ans","mit":"avec","einer":"un","Software":"logiciel","an":"au","Öffentlichkeit":"public","ging":"sortit","er":"il","heimlich":"en secret","einem":"un","Konkurrenten":"concurrent","entwickelt":"développé","ohne":"sans","oder":"ou","einzuweihen":"mettre au courant","empfand":"ressentit","dies":"cela","nicht":"ne pas","als":"comme","bloßen":"simple","Vertrauensbruch":"abus de confiance","sondern":"mais","eine":"une","Kränkung":"blessure/humiliation","tiefer":"plus profondément","reichte":"allait","bloße":"pure","geschäftliche":"commerciale","Logik":"logique","erklären":"expliquer","konnte":"pouvait","ihm":"lui","so":"ainsi","schien":"semblait","stets":"toujours","mühelos":"sans effort","zugefallen":"échu","wofür":"pour quoi","selbst":"lui-même","Jahre":"années","unsichtbaren":"invisible","Arbeit":"travail","investiert":"investi","ahnte":"pressentait","früh":"tôt","dass":"que","Trennung":"séparation","von":"de","zufriedengeben":"se contenter","würde":"allait (conditionnel)","Sie":"elle","erinnerte":"se souvint","Bemerkung":"remarque","Monate":"mois","zuvor":"auparavant","beiläufig":"incidemment","gemacht":"faite","über":"sur/à propos de","einzige":"unique","Schwachstelle":"faille","in":"dans","Siegfrieds":"de Siegfried","neuem":"nouveau","System":"système","Sicherheitslücke":"faille de sécurité","offenbar":"apparemment","niemand":"personne","außer":"à part","ihnen":"eux","beiden":"deux","wusste":"savait","weil":"parce que","sie":"il/elle","einst":"autrefois","Moment":"moment","falsch":"mal","verstandener":"compris","Freundschaft":"amitié","anvertraut":"confié","direkt":"directement","fragte":"demanda","ob":"si","vorhabe":"comptait (subj.)","dieses":"cette","Wissen":"savoir","zu":"à","nutzen":"utiliser","um":"pour","Ruf":"réputation","zerstören":"détruire","leugnete":"nia","doch":"pourtant","seine":"sa","Antwort":"réponse","kam":"vint","Spur":"un tantinet","schnell":"vite","vollständig":"complètement","beruhigen":"rassurer","Drei":"trois","Wochen":"semaines","später":"plus tard","wurde":"devint","öffentlich":"publiquement","bekannt":"connu","gefeierte":"acclamé","gravierende":"grave","enthielt":"contenait","durch":"par laquelle","Kundendaten":"données clients","monatelang":"pendant des mois","ungeschützt":"non protégées","gewesen":"été","waren":"avaient été","Der":"le","Skandal":"scandale","beendete":"mit fin à","nur":"seulement","neues":"nouvelle","auch":"aussi","seinen":"sa","gesamten":"toute","Branche":"branche/secteur","bestritt":"nia","bis":"jusqu'","zuletzt":"au bout","irgendetwas":"quoi que ce soit","damit":"à cela","tun":"faire","gehabt":"eu","haben":"avoir","Bestimmtheit":"fermeté","mehr":"plus","widerlegen":"réfuter","versuchte":"essaya","Was":"ce qui","am":"le","meisten":"plus","beunruhigte":"inquiétait","Verdacht":"soupçon","Erkenntnis":"prise de conscience","hätte":"aurait","gewollt":"voulu","warnen":"avertir","können":"pouvoir","aber":"mais","unterließ":"s'en abstint","aus":"par","Loyalität":"loyauté","nie":"jamais","eingestanden":"avouée","Preis":"prix","dafür":"pour cela","bereits":"déjà","bezahlt":"payé","rückgängig":"annulé","machen":"faire","ließ":"laissait","Manchmal":"parfois","dachte":"pensa","entscheidet":"se décide","Treue":"fidélité","großen":"grands","sichtbaren":"visibles","Gesten":"gestes","jenem":"cet","einen":"un","stillen":"silencieux","Augenblick":"instant","dem":"lequel","beschließt":"décide","nichts":"rien","genau":"justement","Schweigen":"silence","erweist":"révèle","rückblickend":"rétrospectivement","folgenreichste":"la plus lourde de conséquences","aller":"de tous","Handlungen":"actes"}$t$::jsonb,
    $t$Épopée médiévale allemande, réinventée$t$
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was tut Siegfried, das Hagen als Vertrauensbruch empfindet?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er verkauft seine Firmenanteile$t$, false, 1),
    (v_q, $t$Er entwickelt heimlich mit einem Konkurrenten eine Software und geht damit an die Öffentlichkeit$t$, true, 2),
    (v_q, $t$Er kündigt seinen Job$t$, false, 3),
    (v_q, $t$Er stellt neue Mitarbeiter ein$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum reicht Hagens Kränkung laut Erzählung tiefer als eine bloße geschäftliche Enttäuschung?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Weil er finanziell ruiniert ist$t$, false, 1),
    (v_q, $t$Weil ihm scheint, dass Siegfried stets mühelos zugefallen sei, wofür er selbst Jahre unsichtbarer Arbeit investiert hatte$t$, true, 2),
    (v_q, $t$Weil Siegfried ihn öffentlich beleidigt hat$t$, false, 3),
    (v_q, $t$Weil er die Firma verlassen muss$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Inwiefern lässt sich die Beziehung zwischen Hagen und Siegfried als Neuinterpretation eines klassischen Motivs lesen?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Als reine Kopie einer historischen Figurenkonstellation ohne eigene Bedeutung$t$, false, 1),
    (v_q, $t$Als zeitgenössische Übertragung des Motivs von verdecktem Neid und tödlicher Rivalität zwischen einem unauffälligen Strategen und einem strahlenden Helden$t$, true, 2),
    (v_q, $t$Als unpolitische Bürogeschichte ohne mythologischen Bezug$t$, false, 3),
    (v_q, $t$Als reine Satire auf die Technologiebranche ohne ernsten Kern$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was weiß Hagen über Siegfrieds neues System?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Nichts Besonderes$t$, false, 1),
    (v_q, $t$Eine einzige Schwachstelle, eine Sicherheitslücke, die ihm Siegfried einst selbst anvertraut hatte$t$, true, 2),
    (v_q, $t$Den vollständigen Quellcode$t$, false, 3),
    (v_q, $t$Den Verkaufspreis$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie reagiert Hagen, als Gudrun ihn direkt fragt, ob er die Sicherheitslücke nutzen wolle?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er gibt es offen zu$t$, false, 1),
    (v_q, $t$Er leugnet es, doch seine schnelle Antwort beruhigt Gudrun nicht vollständig$t$, true, 2),
    (v_q, $t$Er wird wütend und bricht das Gespräch ab$t$, false, 3),
    (v_q, $t$Er bittet sie um Rat$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche erzählerische Funktion hat es, dass Hagens Schuld nie explizit bewiesen, sondern nur durch Indizien nahegelegt wird?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie zeigt, dass Hagen unschuldig ist$t$, false, 1),
    (v_q, $t$Sie erzeugt eine literarische Ambivalenz, die die tragische Dimension von Verrat und Rache nicht auf ein eindeutiges Urteil reduziert$t$, true, 2),
    (v_q, $t$Sie ist ein Erzählfehler$t$, false, 3),
    (v_q, $t$Sie dient nur der Spannungssteigerung ohne inhaltliche Bedeutung$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was geschieht drei Wochen später mit Siegfrieds Software?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie wird ein großer Erfolg$t$, false, 1),
    (v_q, $t$Eine gravierende Sicherheitslücke wird öffentlich bekannt und beendet sein Unternehmen$t$, true, 2),
    (v_q, $t$Sie wird verkauft$t$, false, 3),
    (v_q, $t$Sie gewinnt einen Preis$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was beunruhigt Gudrun am meisten am Ende der Geschichte?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Der finanzielle Verlust der Firma$t$, false, 1),
    (v_q, $t$Die Erkenntnis, dass sie Siegfried hätte warnen können, es aber aus Loyalität zu Hagen unterließ$t$, true, 2),
    (v_q, $t$Dass sie selbst beschuldigt wird$t$, false, 3),
    (v_q, $t$Dass Hagen die Firma verlassen will$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie deutet der Schlussgedanke über das 'folgenreichste aller Handlungen' Gudruns Rolle im Gesamtgeschehen?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er entlastet sie vollständig von jeder Verantwortung$t$, false, 1),
    (v_q, $t$Er zeigt, dass auch Unterlassung, aus stiller Loyalität geboren, zu einer moralisch folgenschweren Form der Mitschuld werden kann$t$, true, 2),
    (v_q, $t$Er beweist, dass sie die Sicherheitslücke selbst verursacht hat$t$, false, 3),
    (v_q, $t$Er hat keine Verbindung zur restlichen Handlung$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet "Vertrauensbruch"?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$ein Vertrauensbeweis$t$, false, 1),
    (v_q, $t$die Verletzung des in jemanden gesetzten Vertrauens$t$, true, 2),
    (v_q, $t$ein Vertrag$t$, false, 3),
    (v_q, $t$eine Versöhnung$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet "Sicherheitslücke" im Text?$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$eine physische Öffnung in einem Gebäude$t$, false, 1),
    (v_q, $t$eine Schwachstelle in einem System, die Angriffe ermöglicht$t$, true, 2),
    (v_q, $t$ein fehlendes Dokument$t$, false, 3),
    (v_q, $t$eine finanzielle Lücke im Budget$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Konnotation trägt "Loyalität" im letzten Absatz, angesichts ihrer Konsequenzen?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Eine uneingeschränkt positive Tugend ohne Schattenseiten$t$, false, 1),
    (v_q, $t$Eine Bindung, die hier moralisch zweischneidig erscheint, da sie zu einem stillschweigenden Verrat an einer dritten Person führt$t$, true, 2),
    (v_q, $t$Ein rein juristischer Begriff ohne emotionale Bedeutung$t$, false, 3),
    (v_q, $t$Ein Synonym für Gleichgültigkeit$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Zeitform liegt in "Gudrun ahnte früh" vor?$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Präsens$t$, false, 1),
    (v_q, $t$Präteritum$t$, true, 2),
    (v_q, $t$Futur I$t$, false, 3),
    (v_q, $t$Konjunktiv II$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Form liegt in "ob er vorhabe, dieses Wissen zu nutzen" vor?$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Konjunktiv I in indirekter Frage/Rede$t$, true, 1),
    (v_q, $t$Indikativ Präsens$t$, false, 2),
    (v_q, $t$Passiv$t$, false, 3),
    (v_q, $t$Imperativ$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche grammatische Struktur zeigt der Satz "dass sie, hätte sie gewollt, Siegfried hätte warnen können"?$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Ein eingeschobener irrealer Konditionalsatz der Vergangenheit ohne 'wenn' mit doppeltem Konjunktiv II der Vergangenheit$t$, true, 1),
    (v_q, $t$Ein einfacher Aussagesatz im Indikativ Perfekt$t$, false, 2),
    (v_q, $t$Ein Relativsatz im Passiv$t$, false, 3),
    (v_q, $t$Eine wörtliche Rede im Imperativ$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$Verfassen Sie eine reflektierende Passage (ca. 120 Wörter) darüber, ob Untätigkeit angesichts eines vorhersehbaren Unrechts moralisch genauso schwer wiegen kann wie eine aktive Handlung.$t$, 1, 'normal', 'production', $t$Untätigkeit wird in unserem moralischen Denken oft milder beurteilt als aktives Handeln, doch diese Unterscheidung verliert an Überzeugungskraft, sobald die Person, die schweigt, über exklusives Wissen über eine drohende Gefahr verfügt. Wer eine Warnung unterlässt, obwohl er sie mühelos hätte aussprechen können, trägt eine Mitverantwortung, die sich kaum von jener eines aktiven Täters unterscheiden lässt, selbst wenn das Recht beide Fälle unterschiedlich behandelt. Besonders schwer wiegt eine solche Unterlassung, wenn sie aus einer loyalen Bindung zu einer anderen Person entspringt, da hier die Verantwortung gegenüber dem Geschädigten bewusst der Loyalität gegenüber einem Dritten geopfert wird. Diese stille Form der Komplizenschaft bleibt oft unsichtbar, ist aber moralisch keineswegs folgenlos.$t$);

END $block$;

-- 8. Zwei Zimmer
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary, culture_note) VALUES (
    'C2',
    $t$Zwei Zimmer$t$,
    $t$Seit ich vor fünfzehn Jahren nach Lyon gezogen bin, werde ich regelmäßig gefragt, ob ich mich inzwischen eher als Deutsche oder als Französin fühle, eine Frage, die stets voraussetzt, dass sich Zugehörigkeit wie ein Schalter umlegen ließe, von einem Zustand in den anderen, sauber und endgültig. Ich habe mit den Jahren gelernt, auf diese Frage keine Antwort mehr zu geben, die der Fragenden Genugtuung verschafft, weil jede Antwort, die ich formuliere, unweigerlich etwas verrät, das sich der binären Logik der Frage entzieht.

Wenn ich Deutsch spreche, mit meiner Mutter am Telefon etwa, bemerke ich, wie meine Stimme eine Spur tiefer wird, bedächtiger, als trüge die Sprache selbst ein Gewicht, das dem Französischen fremd ist. Auf Französisch hingegen, das ich mir als Erwachsene angeeignet habe, kann ich mich unbeschwerter, beinahe spielerischer ausdrücken, gerade weil diese Sprache nicht mit den Erwartungen und Verletzungen meiner Kindheit belastet ist. Es ist, als bewohnte ich zwei getrennte Zimmer meiner selbst, von denen keines das andere vollständig kennt, und manchmal frage ich mich, ob das, was man Heimat nennt, überhaupt ein Ort sein kann, oder ob es nicht eher jener Zustand ist, in dem Sprache und Empfindung sich, wenigstens für einen Moment, restlos decken.

Meine Tochter, die zweisprachig aufwächst, kennt diese Zerrissenheit nicht; für sie sind Deutsch und Französisch keine konkurrierenden Loyalitäten, sondern schlicht zwei Werkzeuge, zwischen denen sie mühelos wechselt, je nachdem, mit wem sie spricht. Ich beneide sie manchmal um diese Selbstverständlichkeit, obwohl ich vermute, dass auch sie eines Tages, vielleicht in einem fremden Land oder einfach durch das Älterwerden, jene Frage nach der Zugehörigkeit gestellt bekommen wird, die keine der beiden Sprachen ihr wird beantworten können.

Vielleicht ist Heimat also weniger ein Zustand, den man erreicht, als eine Praxis, die man fortwährend übt: das beharrliche Übersetzen zwischen zwei Welten, ohne dass eine von ihnen je vollständig zur eigenen wird. Diese Erkenntnis nimmt mir inzwischen etwas von der Wehmut, mit der ich früher auf diese Frage reagierte, denn sie erlaubt mir, das Dazwischenstehen nicht länger als Mangel, sondern als eine eigene, wenn auch anstrengende Form des Zuhauseseins zu begreifen.$t$,
    $t$Depuis que je me suis installée à Lyon il y a quinze ans, on me demande régulièrement si je me sens désormais plutôt allemande ou plutôt française, une question qui présuppose toujours que l'appartenance pourrait se basculer comme un interrupteur, d'un état à l'autre, proprement et définitivement. J'ai appris, au fil des années, à ne plus donner à cette question de réponse qui satisfasse celle qui la pose, car chaque réponse que je formule trahit inévitablement quelque chose qui échappe à la logique binaire de la question.

Lorsque je parle allemand, au téléphone avec ma mère par exemple, je remarque que ma voix devient un tantinet plus grave, plus posée, comme si la langue elle-même portait un poids étranger au français. En français, en revanche, que je me suis approprié à l'âge adulte, je peux m'exprimer plus légèrement, presque avec plus de jeu, précisément parce que cette langue n'est pas chargée des attentes et des blessures de mon enfance. C'est comme si j'habitais deux pièces séparées de moi-même, dont aucune ne connaît complètement l'autre, et je me demande parfois si ce que l'on appelle le chez-soi peut vraiment être un lieu, ou si ce n'est pas plutôt cet état dans lequel langue et ressenti coïncident, du moins pour un instant, entièrement.

Ma fille, qui grandit bilingue, ne connaît pas ce déchirement ; pour elle, l'allemand et le français ne sont pas des loyautés concurrentes, mais simplement deux outils entre lesquels elle passe sans effort, selon la personne à qui elle s'adresse. Je lui envie parfois cette évidence naturelle, bien que je suppose qu'elle aussi, un jour, peut-être dans un pays étranger ou simplement en vieillissant, se verra poser cette question de l'appartenance à laquelle aucune des deux langues ne saura répondre pour elle.

Peut-être le chez-soi est-il donc moins un état que l'on atteint qu'une pratique que l'on exerce continuellement : la traduction persévérante entre deux mondes, sans qu'aucun des deux ne devienne jamais tout à fait le sien. Cette prise de conscience m'ôte aujourd'hui un peu de la mélancolie avec laquelle je réagissais autrefois à cette question, car elle me permet de comprendre cet entre-deux non plus comme un manque, mais comme une forme propre, quoique fatigante, de sentiment d'être chez soi.$t$,
    $t${"Seit":"depuis que","ich":"je","vor":"il y a","fünfzehn":"quinze","Jahren":"ans","nach":"à","Lyon":"Lyon","gezogen":"installée","bin":"suis","werde":"suis (passif)/deviens","regelmäßig":"régulièrement","gefragt":"interrogée","ob":"si","mich":"me","inzwischen":"entre-temps","eher":"plutôt","als":"comme","Deutsche":"Allemande","oder":"ou","Französin":"Française","fühle":"sens","eine":"une","Frage":"question","die":"qui","stets":"toujours","voraussetzt":"présuppose","dass":"que","sich":"se","Zugehörigkeit":"appartenance","wie":"comme","ein":"un","Schalter":"interrupteur","umlegen":"basculer","ließe":"pourrait se (laisser)","von":"d'","einem":"un","Zustand":"état","in":"dans","den":"l'","anderen":"autre","sauber":"proprement","und":"et","endgültig":"définitivement","Ich":"je","habe":"ai","mit":"avec","gelernt":"appris","auf":"à","diese":"cette","keine":"aucune","Antwort":"réponse","mehr":"plus","zu":"à","geben":"donner","der":"à la","Fragenden":"personne qui pose la question","Genugtuung":"satisfaction","verschafft":"procure","weil":"parce que","jede":"chaque","formuliere":"formule","unweigerlich":"inévitablement","etwas":"quelque chose","verrät":"trahit","das":"qui","binären":"binaire","Logik":"logique","entzieht":"échappe","Wenn":"quand","Deutsch":"allemand","spreche":"parle","meiner":"ma","Mutter":"mère","am":"au","Telefon":"téléphone","etwa":"par exemple","bemerke":"remarque","meine":"ma","Stimme":"voix","Spur":"un tantinet","tiefer":"plus grave","wird":"devient","bedächtiger":"plus posée","trüge":"portait (subj. II)","Sprache":"langue","selbst":"elle-même","Gewicht":"poids","dem":"au","Französischen":"français","fremd":"étranger","ist":"est","Auf":"en","Französisch":"français","hingegen":"en revanche","mir":"me","Erwachsene":"adulte","angeeignet":"appropriée","kann":"peux","unbeschwerter":"plus légèrement","beinahe":"presque","spielerischer":"plus ludique","ausdrücken":"exprimer","gerade":"justement","nicht":"pas","Erwartungen":"attentes","Verletzungen":"blessures","Kindheit":"enfance","belastet":"chargée","Es":"c'","bewohnte":"habitait","zwei":"deux","getrennte":"séparées","Zimmer":"pièces","denen":"dont","keines":"aucune","andere":"l'autre","vollständig":"complètement","kennt":"connaît","manchmal":"parfois","frage":"demande","was":"ce que","man":"on","Heimat":"patrie/chez-soi","nennt":"appelle","überhaupt":"vraiment","Ort":"lieu","sein":"être","es":"cela","jener":"cet","Empfindung":"ressenti","wenigstens":"du moins","für":"pour","einen":"un","Moment":"instant","restlos":"entièrement","decken":"coïncident","Meine":"ma","Tochter":"fille","zweisprachig":"bilingue","aufwächst":"grandit","Zerrissenheit":"déchirement","sie":"elle","sind":"sont","konkurrierenden":"concurrentes","Loyalitäten":"loyautés","sondern":"mais","schlicht":"simplement","Werkzeuge":"outils","zwischen":"entre","mühelos":"sans effort","wechselt":"passe","je":"selon","nachdem":"selon (je nachdem)","wem":"à qui","spricht":"parle","beneide":"envie","um":"pour","Selbstverständlichkeit":"évidence naturelle","obwohl":"bien que","vermute":"suppose","auch":"aussi","eines":"un","Tages":"jour","vielleicht":"peut-être","fremden":"étranger","Land":"pays","einfach":"simplement","durch":"par","Älterwerden":"le fait de vieillir","jene":"cette","gestellt":"posée","bekommen":"recevoir","beiden":"deux","Sprachen":"langues","ihr":"lui (à elle)","beantworten":"répondre à","können":"pouvoir","Vielleicht":"peut-être","also":"donc","weniger":"moins","erreicht":"atteint","Praxis":"pratique","fortwährend":"continuellement","übt":"exerce","beharrliche":"persévérante","Übersetzen":"traduction","Welten":"mondes","ohne":"sans","ihnen":"eux","zur":"la","eigenen":"propre","Diese":"cette","Erkenntnis":"prise de conscience","nimmt":"ôte","Wehmut":"mélancolie","früher":"autrefois","reagierte":"réagissais","denn":"car","erlaubt":"permet","Dazwischenstehen":"le fait d'être entre-deux","länger":"plus longtemps","Mangel":"manque","eigene":"propre","wenn":"même si","anstrengende":"fatigante","Form":"forme","des":"du","Zuhauseseins":"sentiment d'être chez soi","begreifen":"comprendre"}$t$::jsonb,
    $t$Réflexion sur l'identité allemande$t$
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Frage wird der Erzählerin seit ihrem Umzug nach Lyon regelmäßig gestellt?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Ob sie Frankreich mag$t$, false, 1),
    (v_q, $t$Ob sie sich eher als Deutsche oder als Französin fühlt$t$, true, 2),
    (v_q, $t$Ob sie ihre Familie vermisst$t$, false, 3),
    (v_q, $t$Ob sie zurückkehren will$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum verweigert sich die Erzählerin einer eindeutigen Antwort auf diese Frage?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Weil sie die Sprache nicht beherrscht$t$, false, 1),
    (v_q, $t$Weil die Frage voraussetzt, dass Zugehörigkeit wie ein Schalter zwischen zwei Zuständen umgelegt werden könnte, was ihrer Erfahrung widerspricht$t$, true, 2),
    (v_q, $t$Weil sie das Thema für unwichtig hält$t$, false, 3),
    (v_q, $t$Weil sie Angst vor der Reaktion ihrer Mutter hat$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche implizite Kritik an gängigen Identitätsvorstellungen enthält die Eingangsreflexion?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie kritisiert binäre, entweder-oder-Modelle nationaler Zugehörigkeit als unzureichend für gelebte mehrsprachige Erfahrung$t$, true, 1),
    (v_q, $t$Sie lehnt jede Form nationaler Identität grundsätzlich ab$t$, false, 2),
    (v_q, $t$Sie fordert eine klare Entscheidung für eine Nationalität$t$, false, 3),
    (v_q, $t$Sie hat keinen kritischen Gehalt$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie verändert sich die Stimme der Erzählerin, wenn sie Deutsch spricht?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie wird lauter$t$, false, 1),
    (v_q, $t$Sie wird tiefer und bedächtiger$t$, true, 2),
    (v_q, $t$Sie wird schneller$t$, false, 3),
    (v_q, $t$Sie bleibt unverändert$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum kann sich die Erzählerin auf Französisch unbeschwerter ausdrücken?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Weil Französisch grammatisch einfacher ist$t$, false, 1),
    (v_q, $t$Weil diese Sprache nicht mit den Erwartungen und Verletzungen ihrer Kindheit belastet ist$t$, true, 2),
    (v_q, $t$Weil sie Französisch besser beherrscht als Deutsch$t$, false, 3),
    (v_q, $t$Weil ihre Tochter nur Französisch spricht$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie ist die Metapher der 'zwei getrennten Zimmer' im Kontext des Textes zu deuten?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Als Hinweis auf die Wohnsituation der Erzählerin$t$, false, 1),
    (v_q, $t$Als Bild für zwei sprachlich vermittelte, einander nicht vollständig zugängliche Bereiche des eigenen Selbst$t$, true, 2),
    (v_q, $t$Als reine stilistische Verzierung ohne Bedeutung$t$, false, 3),
    (v_q, $t$Als Kritik an der französischen Wohnkultur$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie erlebt die zweisprachig aufwachsende Tochter der Erzählerin ihre beiden Sprachen?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Als belastende Zerrissenheit$t$, false, 1),
    (v_q, $t$Als zwei Werkzeuge, zwischen denen sie mühelos wechselt$t$, true, 2),
    (v_q, $t$Als Hindernis in der Schule$t$, false, 3),
    (v_q, $t$Als Grund für Identitätskrisen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was vermutet die Erzählerin über die Zukunft ihrer Tochter?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Dass sie nie mit der Zugehörigkeitsfrage konfrontiert wird$t$, false, 1),
    (v_q, $t$Dass ihr eines Tages dieselbe Frage nach der Zugehörigkeit gestellt werden könnte, die keine Sprache allein beantworten kann$t$, true, 2),
    (v_q, $t$Dass sie nur noch Französisch sprechen wird$t$, false, 3),
    (v_q, $t$Dass sie beide Sprachen vergessen wird$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie ist die abschließende Definition von Heimat als 'Praxis' statt als 'Zustand' zu verstehen?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Als Aufgabe des Heimatbegriffs zugunsten reiner Beliebigkeit$t$, false, 1),
    (v_q, $t$Als Verschiebung von einem statischen, territorial gedachten Heimatbegriff hin zu einem fortwährenden, aktiven Vermitteln zwischen Sprachen und Zugehörigkeiten$t$, true, 2),
    (v_q, $t$Als Beweis, dass die Erzählerin keine Heimat mehr empfindet$t$, false, 3),
    (v_q, $t$Als rein stilistische Formulierung ohne inhaltliche Konsequenz$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet "Zugehörigkeit"?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Fremdheit$t$, false, 1),
    (v_q, $t$das Gefühl, zu etwas zu gehören$t$, true, 2),
    (v_q, $t$Ablehnung$t$, false, 3),
    (v_q, $t$Gleichgültigkeit$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet "sich aneignen" im Zusammenhang mit dem Erlernen des Französischen?$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$etwas ablehnen$t$, false, 1),
    (v_q, $t$sich etwas zu eigen machen, erlernen$t$, true, 2),
    (v_q, $t$etwas verkaufen$t$, false, 3),
    (v_q, $t$etwas vergessen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Bedeutungsnuance trägt "Zerrissenheit" im Kontrast zur Erfahrung der Tochter?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$ein Gefühl innerer Ganzheit und Ruhe$t$, false, 1),
    (v_q, $t$ein schmerzhaftes Gespaltensein zwischen widerstreitenden Zugehörigkeiten$t$, true, 2),
    (v_q, $t$reine Gleichgültigkeit gegenüber beiden Kulturen$t$, false, 3),
    (v_q, $t$ein bewusst gewählter künstlerischer Stil$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Zeitform liegt in "ich bin nach Lyon gezogen" vor?$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Präsens$t$, false, 1),
    (v_q, $t$Perfekt$t$, true, 2),
    (v_q, $t$Futur I$t$, false, 3),
    (v_q, $t$Konjunktiv II$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Form liegt in "eine Frage, die stets voraussetzt, dass sich Zugehörigkeit wie ein Schalter umlegen ließe" vor?$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Konjunktiv II zur Bezeichnung einer irrealen, unterstellten Möglichkeit$t$, true, 1),
    (v_q, $t$Indikativ Präsens einer Tatsache$t$, false, 2),
    (v_q, $t$Passiv Perfekt$t$, false, 3),
    (v_q, $t$Imperativ$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche grammatische Funktion hat der Konjunktiv II in "als trüge die Sprache selbst ein Gewicht"?$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er leitet einen irrealen Vergleichssatz (als-ob) ein, der einen subjektiven Eindruck ausdrückt, keine reale Tatsache$t$, true, 1),
    (v_q, $t$Er drückt eine höfliche Bitte aus$t$, false, 2),
    (v_q, $t$Er berichtet eine tatsächlich beobachtete physikalische Eigenschaft der Sprache$t$, false, 3),
    (v_q, $t$Er kennzeichnet direkte Rede$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$Schreiben Sie eine essayistische Reflexion (ca. 120 Wörter) darüber, ob man Ihrer Meinung nach mehrere 'Heimaten' gleichzeitig haben kann, oder ob Heimat notwendigerweise an einen einzigen Ort oder eine einzige Sprache gebunden ist.$t$, 1, 'normal', 'production', $t$Die Vorstellung, Heimat sei zwingend an einen einzigen Ort oder eine einzige Sprache gebunden, entspricht meines Erachtens immer weniger der gelebten Realität vieler Menschen in einer globalisierten Welt. Wer zwischen zwei Sprachen und Kulturen aufwächst oder lebt, entwickelt oft mehrere, einander ergänzende Formen von Zugehörigkeit, die sich nicht gegenseitig ausschließen müssen. Zugleich wäre es naiv zu behaupten, dieses Nebeneinander sei stets harmonisch; häufig geht es mit einem Gefühl der Unvollständigkeit einher, da keine der beiden Zugehörigkeiten die andere vollständig ersetzen kann. Vielleicht besteht die reifste Haltung darin, Heimat weniger als territorialen Besitz denn als beweglichen, immer wieder neu auszuhandelnden Zustand zu begreifen, der gerade durch seine Instabilität lebendig bleibt.$t$);

END $block$;

