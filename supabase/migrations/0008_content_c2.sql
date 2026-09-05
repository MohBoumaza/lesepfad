-- Contenu réel — niveau C2 (25 histoires). Chaque histoire a :
-- - 3 questions de compréhension (position 1-3) x 3 difficultés
-- - 1 question de vocabulaire (position 1) x 3 difficultés
-- - 1 question de conjugaison/grammaire (position 1) x 3 difficultés
-- - 1 tâche de production écrite (position 1, difficulty 'normal', pas de choix, model_answer)

-- 1. Das Gedächtnis der Dinge
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary) VALUES (
    'C2',
    $t$Das Gedächtnis der Dinge$t$,
    $t$Es gibt Gegenstände, die sich hartnäckig weigern, in Vergessenheit zu geraten, gleichgültig wie sehr man sich bemüht, sie in den hintersten Winkel eines Schranks oder gar in die Anonymität eines Kellers zu verbannen. Für Elisabeth war ein solcher Gegenstand die kleine, längst zerkratzte Musikdose ihrer Großmutter, die seit deren Tod vor nunmehr fünfzehn Jahren unangetastet in einer Schublade ruhte – zu kostbar, um sie fortzuwerfen, doch zugleich zu schmerzlich, um sie zur Hand zu nehmen. Als sie schließlich, im Zuge eines lange aufgeschobenen Umzugs, gezwungen war, sämtliche Schubladen zu leeren, hielt sie inne, als ihre Finger unversehens auf das vertraute, kühle Metall der Musikdose stießen. Ein flüchtiger Moment des Zögerns, und schon hatte sie den kleinen Mechanismus in Gang gesetzt, worauf eine brüchige, leicht verstimmte Melodie den Raum erfüllte, die sie augenblicklich in die Küche ihrer Kindheit zurückversetzte, in der ihre Großmutter, umgeben vom Duft frisch gebackenen Kuchens, eben jene Melodie beiläufig vor sich hin gesummt hatte. Es ist eine eigentümliche Ironie des menschlichen Gedächtnisses, dass es sich weitaus zuverlässiger an derart flüchtige, scheinbar belanglose sinnliche Details erinnert als an die vermeintlich bedeutsamen Ereignisse, deren Erinnerung man sich bewusst zu bewahren vorgenommen hatte. Elisabeth konnte sich beim besten Willen nicht mehr an den genauen Wortlaut des letzten Gesprächs erinnern, das sie mit ihrer Großmutter geführt hatte, wohl aber an die Beschaffenheit von deren rauen, von jahrzehntelanger Gartenarbeit gezeichneten Händen und eben an jene Melodie, die nun erneut, wie aus einer anderen Zeit heraufbeschworen, durch den staubigen Raum klang. Sie setzte sich auf den kalten Boden, die Musikdose fest umschlossen, und ließ minutenlang zu, dass die Erinnerung sie vollständig überflutete, ohne dagegen anzukämpfen, wie sie es in den vergangenen Jahren stets reflexhaft getan hatte. Vielleicht, so dachte sie in diesem Moment, bestehe die eigentliche Kunst der Trauer nicht darin, sich möglichst rasch von den Dingen zu lösen, welche die Erinnerung an einen geliebten Menschen wachhalten, sondern vielmehr darin, ihnen gelegentlich, bewusst und ohne Scham, Raum zu geben. Als sie die Musikdose schließlich behutsam wieder verschloss, entschied sie sich, entgegen ihrer ursprünglichen Absicht, sie keineswegs in eine Kiste für den Umzug zu legen, sondern sie stattdessen sichtbar auf ihrem neuen Schreibtisch zu platzieren – ein stilles, beständiges Zeugnis dessen, dass manche Verluste nicht überwunden, sondern lediglich in ein neues, friedlicheres Verhältnis zur Gegenwart überführt werden müssen.$t$,
    $t$Il existe des objets qui refusent obstinément de sombrer dans l'oubli, quels que soient les efforts que l'on déploie pour les bannir dans le recoin le plus reculé d'une armoire, voire dans l'anonymat d'une cave. Pour Elisabeth, un tel objet était la petite boîte à musique, depuis longtemps rayée, de sa grand-mère, qui reposait intacte dans un tiroir depuis la mort de celle-ci, survenue désormais quinze ans plus tôt – trop précieuse pour être jetée, mais en même temps trop douloureuse pour être prise en main. Lorsqu'elle fut enfin contrainte, à l'occasion d'un déménagement longtemps repoussé, de vider tous les tiroirs, elle s'arrêta net lorsque ses doigts heurtèrent par surprise le métal familier et froid de la boîte à musique. Un bref instant d'hésitation, et déjà elle avait mis en marche le petit mécanisme, sur quoi une mélodie fragile et légèrement désaccordée emplit la pièce, la ramenant instantanément dans la cuisine de son enfance, où sa grand-mère, entourée du parfum d'un gâteau tout juste sorti du four, avait fredonné cette même mélodie en passant. C'est une curieuse ironie de la mémoire humaine qu'elle se souvienne bien plus fidèlement de détails sensoriels aussi fugaces et apparemment insignifiants que des événements prétendument importants dont on s'était pourtant promis de préserver consciemment le souvenir. Elisabeth avait beau faire, elle ne parvenait plus à se rappeler les mots exacts de la dernière conversation qu'elle avait eue avec sa grand-mère, mais elle se souvenait bien de la texture de ses mains rugueuses, marquées par des décennies de jardinage, et justement de cette mélodie qui, comme surgie d'un autre temps, résonnait à nouveau dans la pièce poussiéreuse. Elle s'assit sur le sol froid, serrant fermement la boîte à musique, et laissa le souvenir la submerger entièrement pendant plusieurs minutes, sans lutter contre lui, comme elle l'avait toujours fait par réflexe ces dernières années. Peut-être, pensa-t-elle à cet instant, le véritable art du deuil ne consiste-t-il pas à se détacher le plus vite possible des choses qui entretiennent le souvenir d'un être cher, mais plutôt à leur accorder de temps en temps, consciemment et sans honte, de l'espace. Lorsqu'elle referma finalement avec précaution la boîte à musique, elle décida, contrairement à son intention première, de ne surtout pas la ranger dans une caisse de déménagement, mais de la placer au contraire bien en vue sur son nouveau bureau – témoignage silencieux et durable du fait que certaines pertes ne doivent pas être surmontées, mais simplement transposées dans un rapport nouveau et plus paisible avec le présent.$t$,
    $t${"Es":"il","gibt":"y a","Gegenstände":"objets","die":"qui","sich":"se","hartnäckig":"obstinément","weigern":"refuser","in":"dans","Vergessenheit":"oubli","zu":"de","geraten":"sombrer","gleichgültig":"peu importe","wie":"comme","sehr":"très","man":"on","bemüht":"s'efforce","sie":"les","den":"le","hintersten":"le plus reculé","Winkel":"recoin","eines":"d'un","Schranks":"armoire","oder":"ou","gar":"voire","Anonymität":"anonymat","Kellers":"cave","verbannen":"bannir","Für":"pour","Elisabeth":"Elisabeth","war":"était","ein":"un","solcher":"tel","Gegenstand":"objet","kleine":"petite","längst":"depuis longtemps","zerkratzte":"rayée","Musikdose":"boîte à musique","ihrer":"de sa","Großmutter":"grand-mère","seit":"depuis","deren":"de celle-ci","Tod":"mort","vor":"il y a","nunmehr":"désormais","fünfzehn":"quinze","Jahren":"ans","unangetastet":"intacte","einer":"un","Schublade":"tiroir","ruhte":"reposait","kostbar":"précieuse","um":"pour","fortzuwerfen":"jeter","doch":"mais","zugleich":"en même temps","schmerzlich":"douloureuse","zur":"à la","Hand":"main","nehmen":"prendre","Als":"lorsque","schließlich":"finalement","im":"dans le","Zuge":"cadre","lange":"longtemps","aufgeschobenen":"repoussé","Umzugs":"déménagement","gezwungen":"contrainte","sämtliche":"tous les","Schubladen":"tiroirs","leeren":"vider","hielt":"s'arrêta","inne":"net","als":"quand","ihre":"ses","Finger":"doigts","unversehens":"par surprise","auf":"sur","das":"le","vertraute":"familier","kühle":"froid","Metall":"métal","der":"de la","stießen":"heurtèrent","Ein":"un","flüchtiger":"bref","Moment":"instant","des":"de l'","Zögerns":"hésitation","und":"et","schon":"déjà","hatte":"avait","kleinen":"petit","Mechanismus":"mécanisme","Gang":"marche","gesetzt":"mis","worauf":"sur quoi","eine":"une","brüchige":"fragile","leicht":"légèrement","verstimmte":"désaccordée","Melodie":"mélodie","Raum":"pièce","erfüllte":"emplit","augenblicklich":"instantanément","Küche":"cuisine","Kindheit":"enfance","zurückversetzte":"ramena","umgeben":"entourée","vom":"du","Duft":"parfum","frisch":"fraîchement","gebackenen":"cuit","Kuchens":"gâteau","eben":"justement","jene":"cette","beiläufig":"en passant","hin":"à part soi","gesummt":"fredonné","ist":"est","eigentümliche":"curieuse","Ironie":"ironie","menschlichen":"humaine","Gedächtnisses":"mémoire","dass":"que","es":"elle","weitaus":"bien plus","zuverlässiger":"plus fidèlement","an":"à","derart":"aussi","flüchtige":"fugaces","scheinbar":"apparemment","belanglose":"insignifiants","sinnliche":"sensoriels","Details":"détails","erinnert":"se souvient","vermeintlich":"prétendument","bedeutsamen":"importants","Ereignisse":"événements","Erinnerung":"souvenir","bewusst":"consciemment","bewahren":"préserver","vorgenommen":"promis","konnte":"pouvait","beim":"au","besten":"meilleure","Willen":"volonté","nicht":"ne pas","mehr":"plus","genauen":"exacts","Wortlaut":"termes exacts","letzten":"dernière","Gesprächs":"conversation","erinnern":"se rappeler","mit":"avec","geführt":"eue","wohl":"bien","aber":"mais","Beschaffenheit":"texture","von":"de","rauen":"rugueuses","jahrzehntelanger":"de décennies de","Gartenarbeit":"jardinage","gezeichneten":"marquées","Händen":"mains","nun":"maintenant","erneut":"de nouveau","aus":"de","anderen":"autre","Zeit":"temps","heraufbeschworen":"surgie","durch":"à travers","staubigen":"poussiéreuse","klang":"résonnait","Sie":"elle","setzte":"s'assit","kalten":"froid","Boden":"sol","fest":"fermement","umschlossen":"serrant","ließ":"laissa","minutenlang":"pendant plusieurs minutes","vollständig":"entièrement","überflutete":"submergea","ohne":"sans","dagegen":"contre cela","anzukämpfen":"lutter","vergangenen":"dernières","stets":"toujours","reflexhaft":"par réflexe","getan":"fait","Vielleicht":"peut-être","so":"ainsi","dachte":"pensa","diesem":"cet","bestehe":"consiste","eigentliche":"véritable","Kunst":"art","Trauer":"deuil","darin":"en cela","möglichst":"le plus possible","rasch":"vite","Dingen":"choses","lösen":"se détacher","welche":"qui","einen":"un","geliebten":"cher","Menschen":"être","wachhalten":"entretenir","sondern":"mais","vielmehr":"plutôt","ihnen":"leur","gelegentlich":"de temps en temps","Scham":"honte","geben":"donner","behutsam":"avec précaution","wieder":"de nouveau","verschloss":"referma","entschied":"décida","entgegen":"contrairement à","ursprünglichen":"première","Absicht":"intention","keineswegs":"nullement","Kiste":"caisse","für":"pour","Umzug":"déménagement","legen":"mettre","stattdessen":"à la place","sichtbar":"bien en vue","ihrem":"son","neuen":"nouveau","Schreibtisch":"bureau","platzieren":"placer","stilles":"silencieux","beständiges":"durable","Zeugnis":"témoignage","dessen":"du fait que","manche":"certaines","Verluste":"pertes","überwunden":"surmontées","lediglich":"simplement","neues":"nouveau","friedlicheres":"plus paisible","Verhältnis":"rapport","Gegenwart":"présent","überführt":"transposées","werden":"être","müssen":"devoir"}$t$::jsonb
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was erinnert Elisabeth besonders lebhaft an ihre Großmutter?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Ein altes Foto$t$, false, 1),
    (v_q, $t$Die Melodie der Musikdose$t$, true, 2),
    (v_q, $t$Ein Brief der Großmutter$t$, false, 3),
    (v_q, $t$Der Geruch des Kellers$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was löst bei Elisabeth die Erinnerung an ihre Großmutter besonders stark aus?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Ein altes Foto$t$, false, 1),
    (v_q, $t$Die Melodie der Musikdose$t$, true, 2),
    (v_q, $t$Ein Brief der Großmutter$t$, false, 3),
    (v_q, $t$Der Geruch des Kellers$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wodurch wird bei Elisabeth eine Erinnerung ausgelöst, die weniger auf Bildern als auf einem sinnlich-körperlichen Nachklang beruht?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Durch das Aufziehen der Musikdose, das die Küche der Großmutter sinnlich wieder gegenwärtig macht$t$, true, 1),
    (v_q, $t$Durch das Betrachten eines Fotos, das die Gesichtszüge der Großmutter festhält$t$, false, 2),
    (v_q, $t$Durch das Wiederlesen eines Briefes, der die Stimme der Großmutter schriftlich bewahrt$t$, false, 3),
    (v_q, $t$Durch den vertrauten Kellergeruch beim Packen, der unwillkürlich Kindheitsszenen wachruft$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Woran kann sich Elisabeth nicht mehr genau erinnern?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$An das Aussehen ihrer Großmutter$t$, false, 1),
    (v_q, $t$An den genauen Wortlaut des letzten Gesprächs$t$, true, 2),
    (v_q, $t$An die Melodie der Musikdose$t$, false, 3),
    (v_q, $t$An die Küche ihrer Kindheit$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Woran kann sich Elisabeth laut dem Text nicht mehr genau erinnern?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$An das Aussehen ihrer Großmutter$t$, false, 1),
    (v_q, $t$An den genauen Wortlaut des letzten Gesprächs$t$, true, 2),
    (v_q, $t$An die Melodie der Musikdose$t$, false, 3),
    (v_q, $t$An die Küche ihrer Kindheit$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Lücke im Erinnern Elisabeths steht im Text in einem stillen Kontrast zur Klarheit ihrer sinnlichen Erinnerungen?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Dass ihr die exakten Worte des letzten Gesprächs mit der Großmutter entglitten sind, während Melodie und Küchenbild scharf bleiben$t$, true, 1),
    (v_q, $t$Dass sie sich an keinerlei Gespräche mit der Großmutter mehr erinnern kann$t$, false, 2),
    (v_q, $t$Dass ihr die Melodie der Musikdose entfallen ist, obwohl sie den Wortlaut des Gesprächs noch kennt$t$, false, 3),
    (v_q, $t$Dass ihr das Gesicht der Großmutter zunehmend verschwimmt, während die Worte präsent bleiben$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was macht Elisabeth am Ende mit der Musikdose?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie wirft sie weg$t$, false, 1),
    (v_q, $t$Sie verstaut sie in einer Kiste$t$, false, 2),
    (v_q, $t$Sie stellt sie sichtbar auf ihren neuen Schreibtisch$t$, true, 3),
    (v_q, $t$Sie verschenkt sie$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was beschließt Elisabeth am Ende, mit der Musikdose zu tun?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie wegzuwerfen$t$, false, 1),
    (v_q, $t$Sie in einer Kiste zu verstauen$t$, false, 2),
    (v_q, $t$Sie sichtbar auf ihrem neuen Schreibtisch zu platzieren$t$, true, 3),
    (v_q, $t$Sie zu verschenken$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Haltung zur Trauer drückt sich darin aus, dass Elisabeth die Musikdose am Ende offen auf dem Schreibtisch platziert statt sie zu verpacken?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Die Einsicht, dass die Kunst der Trauer nicht im Verdrängen der Erinnerungsstücke liegt, sondern darin, ihnen bewusst gelegentlich Raum zu geben$t$, true, 1),
    (v_q, $t$Die Entscheidung, den Umzug zum endgültigen Abschluss der Trauerarbeit zu machen$t$, false, 2),
    (v_q, $t$Der praktische Wunsch, das Objekt vor Beschädigung beim Transport zu schützen$t$, false, 3),
    (v_q, $t$Die Überzeugung, dass Erinnerungsstücke ihren Wert nur im täglichen Gebrauch entfalten$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Im Satz „Es gibt Gegenstände, die sich hartnäckig weigern, in Vergessenheit zu geraten" bedeutet 'hartnäckig':$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$beharrlich, störrisch$t$, true, 1),
    (v_q, $t$zufällig, ohne Grund$t$, false, 2),
    (v_q, $t$traurig, wehmütig$t$, false, 3),
    (v_q, $t$leise, unauffällig$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welches Wort könnte 'hartnäckig' in diesem Kontext am ehesten ersetzen, ohne die Bedeutung des Satzes zu verändern?$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$unnachgiebig$t$, true, 1),
    (v_q, $t$gleichgültig$t$, false, 2),
    (v_q, $t$kurzlebig$t$, false, 3),
    (v_q, $t$widerwillig zustimmend$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Umschreibung erfasst die Nuance von 'hartnäckig' am präzisesten, wie es im Text auf die Gegenstände angewendet wird?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$etwas widersetzt sich beharrlich jedem Versuch, es zu beseitigen oder zu verdrängen$t$, true, 1),
    (v_q, $t$etwas verändert ständig seine Erscheinung$t$, false, 2),
    (v_q, $t$etwas wird mit übertriebener Sorgfalt behandelt$t$, false, 3),
    (v_q, $t$etwas löst bei Betrachtung sofort starke Emotionen aus$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$„Sie dachte, die Kunst der Trauer ___ nicht darin, sich rasch zu lösen." (Konjunktiv I von 'bestehen', indirekte Rede)$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$bestehe$t$, true, 1),
    (v_q, $t$besteht$t$, false, 2),
    (v_q, $t$bestand$t$, false, 3),
    (v_q, $t$bestünde$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Vervollständigen Sie in korrekter indirekter Rede: „Sie dachte, dass die eigentliche Kunst der Trauer nicht darin ___, sich möglichst rasch von den Dingen zu lösen."$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$bestehe$t$, true, 1),
    (v_q, $t$besteht$t$, false, 2),
    (v_q, $t$hat bestanden$t$, false, 3),
    (v_q, $t$wird bestehen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Form ist grammatisch korrekt, wenn die Konjunktiv-I-Form mit der Indikativform zusammenfällt und daher durch Konjunktiv II ersetzt werden müsste (Beispiel: 'sie hätten' statt 'sie haben')? Wählen Sie die Regel-konforme Alternative zu 'sie bestehen' im übertragenen Fall eines Verbs mit identischer Indikativ-Konjunktiv-I-Form:$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Ersatz durch Konjunktiv II, z. B. 'sie bestünden'$t$, true, 1),
    (v_q, $t$Beibehaltung des Indikativs ohne Änderung$t$, false, 2),
    (v_q, $t$Verwendung des Imperativs$t$, false, 3),
    (v_q, $t$Ersatz durch das Partizip Präsens$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$Schreiben Sie einen literarischen Absatz (8–12 Sätze) über einen Gegenstand, der bei Ihnen (oder einer erfundenen Figur) unweigerlich eine bestimmte Erinnerung wachruft. Reflektieren Sie dabei über das Verhältnis zwischen sinnlichen Details und bewusster Erinnerung, und lassen Sie die Figur zu einer Erkenntnis über den Umgang mit Verlust gelangen.$t$, 1, 'normal', 'production', $t$In der obersten Schublade meines Schreibtisches liegt ein abgegriffener Kompass, den mein Vater mir nie erklärt hat, wie er zu benutzen sei, und den ich dennoch seit seinem Tod nicht anzurühren wage, ohne dass mich ein vertrauter Schwindel überkommt. Es ist nicht das Objekt selbst, das mich fesselt, sondern der metallische Geruch, der ihm anhaftet und mich augenblicklich in die Werkstatt seiner Jugend zurückversetzt, in der er, die Brille auf die Nasenspitze geschoben, über Landkarten gebeugt saß. Ich könnte den Wortlaut unseres letzten Gesprächs nicht mehr rekonstruieren, wohl aber die Rauheit seiner Hände, wenn er mir die Nadel des Kompasses zeigte. Diese eigentümliche Selektivität des Gedächtnisses, das die flüchtigen, sinnlichen Details bewahrt und die vermeintlich bedeutsamen Worte preisgibt, hat mich lange irritiert, als sei sie ein Versagen meiner Erinnerungsfähigkeit. Erst kürzlich, als ich den Kompass wieder in die Hand nahm, begriff ich, dass gerade diese scheinbar nebensächlichen Empfindungen die eigentliche Substanz der Trauer ausmachen. Ich hielt ihn lange fest, ohne, wie sonst üblich, das Gefühl reflexhaft abzuwehren, und ließ zu, dass die Erinnerung mich vollständig durchdrang. Vielleicht, so dachte ich, besteht die Kunst des Erinnerns nicht darin, sich von den Dingen zu lösen, die uns an einen geliebten Menschen binden, sondern darin, ihnen bewusst Raum zu geben, ohne sich in ihnen zu verlieren. Seither steht der Kompass sichtbar auf meinem Regal, nicht als Mahnmal des Verlusts, sondern als stilles Zeugnis einer Beziehung, die sich gewandelt, aber nicht aufgelöst hat. So habe ich gelernt, dass manche Erinnerungen nicht überwunden werden müssen, sondern lediglich einen neuen, friedlicheren Platz in der Gegenwart verdienen.$t$);

END $block$;

-- 2. Die Ironie des Zufalls
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary) VALUES (
    'C2',
    $t$Die Ironie des Zufalls$t$,
    $t$Man könnte versucht sein zu glauben, das Schicksal besitze einen ausgeprägten, wenn auch bisweilen recht grausamen Sinn für Humor, und kaum eine Begebenheit in Bernhards Leben bestätigte diese Vermutung so eindrücklich wie jener denkwürdige Dienstagnachmittag, an dem er, nach jahrelangem Zögern, endlich den Mut aufbrachte, seine gekündigte Anstellung bei einer traditionsreichen Verlagsgesellschaft zum Anlass zu nehmen, sich seinem eigentlichen, seit Jugendtagen gehegten Traum zu widmen: dem Schreiben eines Romans. Ironischerweise war es ausgerechnet jene Kündigung gewesen, die er über Monate hinweg als das größte berufliche Unglück seines bisherigen Lebens empfunden hatte, welche ihm nun, gänzlich unerwartet, die notwendige Zeit und, wie er es rückblickend nicht ohne einen Anflug bitterer Selbstironie formulierte, die entscheidende Portion Verzweiflung verschaffte, deren es offenbar bedurft hatte, um sein literarisches Vorhaben endlich in die Tat umzusetzen. Über beinahe zwei Jahre hinweg arbeitete er, zurückgezogen und mit einer Hartnäckigkeit, die selbst ihn selbst überraschte, an einem Manuskript, das er schließlich, mehr aus einer Mischung von Trotz und schwindender Hoffnung als aus tatsächlicher Zuversicht, an eine Handvoll Verlage schickte – darunter, aus einer Laune heraus, die er sich im Nachhinein selbst nicht vollständig erklären konnte, auch an jenen Verlag, der ihn Jahre zuvor entlassen hatte. Die bittere Pointe dieser Geschichte, die Bernhard fortan bei jeder sich bietenden Gelegenheit mit unverhohlener Genugtuung zum Besten gab, bestand darin, dass ausgerechnet dieser ehemalige Arbeitgeber, dem gegenüber er über Jahre hinweg eine kaum verhohlene Bitterkeit gehegt hatte, sein Manuskript nicht nur mit Begeisterung annahm, sondern es in der Folge zu einem seiner erfolgreichsten Titel des gesamten Jahrzehnts machte. Bernhard fand sich fortan in der eigentümlichen, keineswegs unangenehmen Lage wieder, regelmäßig mit ebenjenen ehemaligen Vorgesetzten zusammenzuarbeiten, die einst seine Entlassung veranlasst hatten – nunmehr jedoch nicht als weisungsgebundener Angestellter, sondern als hofierter, gefeierter Autor, dessen Erfolg maßgeblich zum finanziellen Aufschwung des Verlags beitrug. Ob es sich bei alledem tatsächlich um eine höhere, ironische Fügung des Schicksals handelte oder schlicht um einen jener Zufälle, die das Leben mitunter parat hält, blieb letztlich offen – Bernhard selbst jedenfalls zog es fortan vorderhand vor, an Ersteres zu glauben.$t$,
    $t$On pourrait être tenté de croire que le destin possède un sens de l'humour prononcé, quoique parfois assez cruel, et peu d'épisodes dans la vie de Bernhard ne confirmèrent cette hypothèse de manière aussi frappante que ce mémorable après-midi de mardi où, après des années d'hésitation, il trouva enfin le courage de profiter de son licenciement d'une maison d'édition riche en traditions pour se consacrer à son véritable rêve, nourri depuis l'adolescence : écrire un roman. Ironiquement, c'était justement ce licenciement, qu'il avait considéré pendant des mois comme le plus grand malheur professionnel de sa vie jusque-là, qui lui procura désormais, tout à fait inopinément, le temps nécessaire et, comme il le formula plus tard non sans une pointe d'autodérision amère, la dose décisive de désespoir dont il avait apparemment eu besoin pour enfin mettre à exécution son projet littéraire. Pendant près de deux ans, il travailla, retiré du monde et avec une ténacité qui le surprit lui-même, à un manuscrit qu'il finit par envoyer, plus par un mélange de défiance et d'espoir déclinant que par une réelle confiance, à une poignée de maisons d'édition – parmi lesquelles, sur un coup de tête qu'il ne parvint lui-même jamais tout à fait à s'expliquer par la suite, figurait aussi précisément la maison qui l'avait renvoyé des années auparavant. La chute amère de cette histoire, que Bernhard racontait désormais à la moindre occasion avec une satisfaction non dissimulée, tenait au fait que cet ancien employeur, envers lequel il avait nourri pendant des années une amertume à peine dissimulée, non seulement accepta son manuscrit avec enthousiasme, mais en fit ensuite l'un de ses titres les plus vendus de toute la décennie. Bernhard se retrouva dès lors dans la situation singulière et nullement désagréable de collaborer régulièrement avec ces mêmes anciens supérieurs qui avaient jadis provoqué son licenciement – non plus toutefois comme employé soumis à leurs directives, mais comme auteur choyé et célébré, dont le succès contribuait de manière déterminante à l'essor financier de la maison d'édition. Que tout cela relevât réellement d'un dessein supérieur et ironique du destin ou simplement d'un de ces hasards que la vie tient parfois en réserve resta finalement une question ouverte – Bernhard, quant à lui, préférait en tout cas désormais croire à la première hypothèse.$t$,
    $t${"Man":"on","könnte":"pourrait","versucht":"tenté","sein":"être","zu":"de","glauben":"croire","das":"le","Schicksal":"destin","besitze":"possède","einen":"un","ausgeprägten":"prononcé","wenn":"quoique","auch":"aussi","bisweilen":"parfois","recht":"assez","grausamen":"cruel","Sinn":"sens","für":"de","Humor":"humour","und":"et","kaum":"peu","eine":"un","Begebenheit":"épisode","in":"dans","Bernhards":"de Bernhard","Leben":"vie","bestätigte":"confirma","diese":"cette","Vermutung":"hypothèse","so":"aussi","eindrücklich":"frappant","wie":"que","jener":"ce","denkwürdige":"mémorable","Dienstagnachmittag":"après-midi de mardi","an":"à","dem":"où","er":"il","nach":"après","jahrelangem":"des années de","Zögern":"hésitation","endlich":"enfin","den":"le","Mut":"courage","aufbrachte":"trouva","seine":"son","gekündigte":"résilié","Anstellung":"emploi","bei":"dans","einer":"une","traditionsreichen":"riche en tradition","Verlagsgesellschaft":"maison d'édition","zum":"pour","Anlass":"occasion","nehmen":"prendre","sich":"se","seinem":"son","eigentlichen":"véritable","seit":"depuis","Jugendtagen":"l'adolescence","gehegten":"nourri","Traum":"rêve","widmen":"consacrer","Schreiben":"écriture","eines":"d'un","Romans":"roman","Ironischerweise":"ironiquement","war":"était","es":"ce","ausgerechnet":"justement","jene":"ce","Kündigung":"licenciement","gewesen":"été","die":"qui","über":"pendant","Monate":"mois","hinweg":"durant","als":"comme","größte":"plus grand","berufliche":"professionnel","Unglück":"malheur","seines":"sa","bisherigen":"jusque-là","Lebens":"vie","empfunden":"ressenti","hatte":"avait","welche":"qui","ihm":"lui","nun":"désormais","gänzlich":"tout à fait","unerwartet":"inattendu","notwendige":"nécessaire","Zeit":"temps","rückblickend":"rétrospectivement","nicht":"ne pas","ohne":"sans","Anflug":"pointe","bitterer":"amère","Selbstironie":"autodérision","formulierte":"formula","entscheidende":"décisive","Portion":"dose","Verzweiflung":"désespoir","verschaffte":"procura","deren":"dont","offenbar":"apparemment","bedurft":"eu besoin","um":"pour","literarisches":"littéraire","Vorhaben":"projet","Tat":"exécution","umzusetzen":"mettre à exécution","Über":"pendant","beinahe":"près de","zwei":"deux","Jahre":"ans","arbeitete":"travailla","zurückgezogen":"retiré du monde","mit":"avec","Hartnäckigkeit":"ténacité","selbst":"lui-même","ihn":"le","überraschte":"surprit","einem":"un","Manuskript":"manuscrit","schließlich":"finalement","mehr":"plus","aus":"par","Mischung":"mélange","von":"de","Trotz":"défiance","schwindender":"déclinant","Hoffnung":"espoir","tatsächlicher":"réelle","Zuversicht":"confiance","Handvoll":"poignée","Verlage":"maisons d'édition","schickte":"envoya","darunter":"parmi lesquelles","Laune":"coup de tête","heraus":"soudain","im":"au","Nachhinein":"après coup","vollständig":"tout à fait","erklären":"expliquer","konnte":"pouvait","jenen":"cette","Verlag":"maison d'édition","der":"qui","zuvor":"auparavant","entlassen":"renvoyé","Die":"la","bittere":"amère","Pointe":"chute","Geschichte":"histoire","Bernhard":"Bernhard","fortan":"désormais","jeder":"chaque","bietenden":"qui se présentait","Gelegenheit":"occasion","unverhohlener":"non dissimulée","Genugtuung":"satisfaction","Besten":"plaisir","gab":"racontait","bestand":"consistait","darin":"en cela","dass":"que","ehemalige":"ancien","Arbeitgeber":"employeur","gegenüber":"envers","verhohlene":"dissimulée","Bitterkeit":"amertume","gehegt":"nourrie","nur":"seulement","Begeisterung":"enthousiasme","annahm":"accepta","sondern":"mais","Folge":"suite","seiner":"ses","erfolgreichsten":"les plus réussis","Titel":"titres","des":"de la","gesamten":"toute","Jahrzehnts":"décennie","machte":"fit","fand":"trouva","eigentümlichen":"singulière","keineswegs":"nullement","unangenehmen":"désagréable","Lage":"situation","wieder":"de nouveau","regelmäßig":"régulièrement","ebenjenen":"ces mêmes","ehemaligen":"anciens","Vorgesetzten":"supérieurs","zusammenzuarbeiten":"collaborer","einst":"jadis","Entlassung":"licenciement","veranlasst":"provoqué","hatten":"avaient","nunmehr":"désormais","jedoch":"toutefois","weisungsgebundener":"soumis aux directives","Angestellter":"employé","hofierter":"choyé","gefeierter":"célébré","Autor":"auteur","dessen":"dont","Erfolg":"succès","maßgeblich":"de manière déterminante","finanziellen":"financier","Aufschwung":"essor","Verlags":"de la maison d'édition","beitrug":"contribua","Ob":"que","alledem":"tout cela","tatsächlich":"réellement","höhere":"supérieur","ironische":"ironique","Fügung":"dessein","Schicksals":"du destin","handelte":"s'agissait","oder":"ou","schlicht":"simplement","Zufälle":"hasards","mitunter":"parfois","parat":"en réserve","hält":"tient","blieb":"resta","letztlich":"finalement","offen":"ouverte","jedenfalls":"en tout cas","zog":"préférait","vorderhand":"pour l'instant","vor":"préférer","Ersteres":"la première hypothèse","dieser":"cette"}$t$::jsonb
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was tat Bernhard nach seiner Kündigung?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er hat sofort eine neue Stelle gesucht$t$, false, 1),
    (v_q, $t$Er hat begonnen, einen Roman zu schreiben$t$, true, 2),
    (v_q, $t$Er ist ausgewandert$t$, false, 3),
    (v_q, $t$Er hat geklagt$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was hat Bernhard nach seiner Kündigung getan?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er hat sofort eine neue Stelle gesucht$t$, false, 1),
    (v_q, $t$Er hat begonnen, einen Roman zu schreiben$t$, true, 2),
    (v_q, $t$Er ist ausgewandert$t$, false, 3),
    (v_q, $t$Er hat geklagt$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welches Motiv verbindet sich laut Text mit Bernhards Entschluss, nach der Entlassung endlich den lange aufgeschobenen Roman zu schreiben?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Eine Mischung aus finanzieller Zwangslage und dem Aufgreifen eines lange gehegten Traums$t$, true, 1),
    (v_q, $t$Der reine Wunsch nach künstlerischer Rache an der Branche$t$, false, 2),
    (v_q, $t$Ein plötzlicher Geistesblitz ohne jeden Bezug zur Kündigung$t$, false, 3),
    (v_q, $t$Der Rat eines Freundes, sich beruflich neu zu orientieren$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$An welchen Verlag schickte Bernhard sein Manuskript unter anderem?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$An einen Verlag im Ausland$t$, false, 1),
    (v_q, $t$An denselben Verlag, der ihn entlassen hatte$t$, true, 2),
    (v_q, $t$An gar keinen Verlag$t$, false, 3),
    (v_q, $t$Nur an unbekannte, neue Verlage$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$An welchen Verlag hat Bernhard sein Manuskript unter anderem geschickt?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$An einen Verlag im Ausland$t$, false, 1),
    (v_q, $t$An denselben Verlag, der ihn entlassen hatte$t$, true, 2),
    (v_q, $t$An gar keinen Verlag$t$, false, 3),
    (v_q, $t$Nur an unbekannte, neue Verlage$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was macht die Verlagsauswahl, die Bernhard beim Versand seines Manuskripts trifft, im Rückblick zum eigentlichen Kern der Ironie der Geschichte?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Dass er aus Trotz gerade jenen Verlag mitbedachte, der ihn entlassen hatte, und ausgerechnet dieser den späteren Erfolg begründete$t$, true, 1),
    (v_q, $t$Dass er sein Manuskript ausschließlich renommierten Verlagen im Ausland anbot$t$, false, 2),
    (v_q, $t$Dass er zunächst zögerte, überhaupt einen Verlag anzuschreiben, und sich erst spät dazu entschloss$t$, false, 3),
    (v_q, $t$Dass er den Verlag, der ihn entlassen hatte, bewusst aus der Liste strich, dieser das Manuskript aber dennoch erhielt$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$In welcher Rolle arbeitet Bernhard am Ende mit seinen ehemaligen Vorgesetzten zusammen?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Als ihr Angestellter$t$, false, 1),
    (v_q, $t$Als externer Berater$t$, false, 2),
    (v_q, $t$Als erfolgreicher Autor des Verlags$t$, true, 3),
    (v_q, $t$Er arbeitet gar nicht mehr mit ihnen zusammen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$In welcher Rolle arbeitet Bernhard am Ende mit seinen ehemaligen Vorgesetzten zusammen?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Als ihr Angestellter$t$, false, 1),
    (v_q, $t$Als externer Berater$t$, false, 2),
    (v_q, $t$Als erfolgreicher Autor des Verlags$t$, true, 3),
    (v_q, $t$Er arbeitet gar nicht mehr mit ihnen zusammen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie lässt sich die Position, die Bernhard am Ende gegenüber seinen früheren Vorgesetzten einnimmt, treffend als Umkehrung des Machtverhältnisses beschreiben?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er begegnet ihnen nun nicht mehr als Untergebener, sondern als gefeierter Autor, dessen Erfolg der Verlag für sich nutzt$t$, true, 1),
    (v_q, $t$Er kehrt in seine frühere Position im Verlag zurück, nun mit einem höheren Gehalt$t$, false, 2),
    (v_q, $t$Er meidet jeden weiteren Kontakt zu den ehemaligen Vorgesetzten aus Prinzip$t$, false, 3),
    (v_q, $t$Er übernimmt die Leitung des Verlags und wird so zum Vorgesetzten seiner früheren Chefs$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Im Text heißt es, Bernhard sei fortan „nicht als weisungsgebundener Angestellter, sondern als hofierter, gefeierter Autor" behandelt worden. 'Hofiert' bedeutet:$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$umschmeichelt, mit übertriebener Aufmerksamkeit bedacht$t$, true, 1),
    (v_q, $t$kritisiert, hart beurteilt$t$, false, 2),
    (v_q, $t$ignoriert, übersehen$t$, false, 3),
    (v_q, $t$beauftragt, angestellt$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welches Synonym passt am besten zu 'hofiert' im gegebenen Kontext?$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$umworben$t$, true, 1),
    (v_q, $t$entlassen$t$, false, 2),
    (v_q, $t$getadelt$t$, false, 3),
    (v_q, $t$misstrauisch beäugt$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Konnotation schwingt bei 'hofiert' im Vergleich zu einem neutraleren Wort wie 'respektiert' mit?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$ein Anklang an unterwürfige oder übertriebene Verehrung, oft mit Eigeninteresse verbunden$t$, true, 1),
    (v_q, $t$eine rein sachliche, emotionslose Anerkennung$t$, false, 2),
    (v_q, $t$eine gesetzlich verankerte Anerkennung$t$, false, 3),
    (v_q, $t$eine spöttische, abwertende Bemerkung$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Aktiv: „Der Verlag hatte ihn entlassen." Passiv (Plusquamperfekt):$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er war von dem Verlag entlassen worden.$t$, true, 1),
    (v_q, $t$Er wurde von dem Verlag entlassen.$t$, false, 2),
    (v_q, $t$Er ist von dem Verlag entlassen worden.$t$, false, 3),
    (v_q, $t$Er hatte den Verlag entlassen.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Formen Sie um: „Der Verlag hatte ihn Jahre zuvor entlassen" → Passiv im Plusquamperfekt:$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er war Jahre zuvor von dem Verlag entlassen worden.$t$, true, 1),
    (v_q, $t$Er wird Jahre zuvor entlassen worden sein.$t$, false, 2),
    (v_q, $t$Er hatte sich Jahre zuvor entlassen.$t$, false, 3),
    (v_q, $t$Er ist Jahre zuvor entlassen worden.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Passivform ist korrekt für: „Man hatte sein Manuskript mit Begeisterung angenommen und es zu einem der erfolgreichsten Titel gemacht"?$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sein Manuskript war mit Begeisterung angenommen und zu einem der erfolgreichsten Titel gemacht worden.$t$, true, 1),
    (v_q, $t$Sein Manuskript wurde mit Begeisterung anzunehmen und zu machen gewesen.$t$, false, 2),
    (v_q, $t$Sein Manuskript hatte mit Begeisterung angenommen werden können.$t$, false, 3),
    (v_q, $t$Sein Manuskript ist mit Begeisterung angenommen worden sein.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$Verfassen Sie einen Absatz (8–12 Sätze), in dem eine vermeintliche Niederlage sich im Rückblick als entscheidender Wendepunkt zum Erfolg erweist. Arbeiten Sie mit einem ironischen Erzählton, wie er im Originaltext vorherrscht.$t$, 1, 'normal', 'production', $t$Als man Cornelia nach zwölf Dienstjahren aus der kleinen Anwaltskanzlei entließ, empfand sie dies zunächst als endgültiges Urteil über ihre berufliche Eignung, als bittere Bestätigung all der Selbstzweifel, die sie über die Jahre mühsam verdrängt hatte. Ausgerechnet diese Kündigung jedoch, die sie monatelang als das größte Unglück ihres Lebens betrachtete, verschaffte ihr die Muße, sich endlich jenem Fachgebiet zu widmen, das sie stets nur nebenbei betrieben hatte: dem Umweltrecht. Mit einer Verbissenheit, die selbst ihre engsten Freunde überraschte, arbeitete sie sich in Materien ein, für die während ihrer Festanstellung schlicht keine Zeit geblieben war. Aus einer Mischung von Trotz und schwindendem Optimismus bewarb sie sich schließlich bei mehreren spezialisierten Kanzleien, darunter, mehr aus Zufall als aus Kalkül, auch bei jener Sozietät, deren Gründungspartner einst ihre alte Kanzlei übernommen und die Entlassungswelle veranlasst hatte. Die Pointe dieser Geschichte, die Cornelia seither mit unverhohlener Genugtuung erzählt, besteht darin, dass ausgerechnet dieser Mann, dem sie lange eine kaum verhohlene Verbitterung entgegengebracht hatte, ihr nicht nur eine Stelle anbot, sondern sie binnen weniger Jahre zur Partnerin machte. Sie arbeitet heute regelmäßig mit denselben Personen zusammen, die einst über ihre Entlassung entschieden hatten, nun jedoch nicht mehr als weisungsgebundene Angestellte, sondern als anerkannte Expertin, deren Gutachten in der Branche geschätzt werden. Ob es sich dabei um eine höhere Fügung des Schicksals oder bloß um einen jener Zufälle handelt, die das Leben bereithält, lässt Cornelia bewusst offen. Sie selbst jedenfalls neigt inzwischen dazu, dem Zufall ein wenig mehr Ironie zuzutrauen, als es die reine Vernunft eigentlich erlauben würde.$t$);

END $block$;

-- 3. Ein Gespräch mit dem Spiegel
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary) VALUES (
    'C2',
    $t$Ein Gespräch mit dem Spiegel$t$,
    $t$Es gehört zu den stilleren Absurditäten des menschlichen Daseins, dass wir Tag für Tag minutenlang vor einem Spiegel verharren, ohne uns dabei jemals ernsthaft zu fragen, wer eigentlich jene Gestalt ist, die uns dort, scheinbar vertraut und doch bei genauerem Hinsehen zunehmend fremd, entgegenblickt. An jenem regnerischen Novembermorgen jedoch, an dem Konstantin seinen fünfzigsten Geburtstag beging, überkam ihn, während er sich, wie an jedem anderen Morgen auch, routiniert vor dem Badezimmerspiegel rasierte, eine Empfindung, die er zunächst nicht recht einzuordnen wusste: das schleichende, kaum greifbare Gefühl, einem Fremden gegenüberzustehen. Die Falten um die Augen, das ergraute Haar an den Schläfen, die leicht hängenden Mundwinkel – all dies registrierte er zwar durchaus, doch es war weniger das rein Physische, das ihn irritierte, als vielmehr die unbestimmte Ahnung, dass sich hinter dieser äußeren Erscheinung ein inneres Selbst verbarg, das er selbst mit den Jahren zunehmend aus den Augen verloren hatte. Wann genau, so fragte er sich, während das Rasiermesser reglos in seiner Hand verharrte, hatte er aufgehört, jener junge Mann zu sein, der einst voller unbändiger Überzeugung davon gewesen war, die Welt mit seiner Musik verändern zu können, und hatte sich stattdessen, schleichend und ohne dass er es bewusst bemerkt hätte, in einen Menschen verwandelt, dessen Tage weitgehend von der pragmatischen Verwaltung fremder Erwartungen bestimmt wurden? Es war keineswegs so, dass Konstantin sein gegenwärtiges Leben als unglücklich empfunden hätte – er besaß eine solide berufliche Stellung, eine liebevolle Familie, ein Haus, das ihm Geborgenheit bot –, doch in diesem einen, flüchtigen Moment vor dem beschlagenen Spiegel überkam ihn die unwiderstehliche und zugleich beunruhigende Frage, ob er, hätte er sich damals anders entschieden, heute womöglich ein anderer, ihm selbst fremder Mensch geworden wäre, oder ob am Ende ohnehin, ungeachtet aller Weggabelungen, ein und derselbe Konstantin auf ihn hätte warten müssen, gleich einem unausweichlichen Fixpunkt in einem ansonsten von Zufällen durchwirkten Leben. Er fand an diesem Morgen keine endgültige Antwort auf diese Frage, doch beschloss er, kaum dass er sein Rasiermesser beiseitegelegt hatte, mit einer Entschlossenheit, die ihn selbst überraschte, sein altes, seit Jahrzehnten unberührtes Klavier noch am selben Abend wieder zu stimmen.$t$,
    $t$Il fait partie des absurdités les plus discrètes de l'existence humaine que nous restions, jour après jour, plusieurs minutes durant devant un miroir sans jamais nous demander sérieusement qui est vraiment cette silhouette qui, là, apparemment familière et pourtant, à y regarder de plus près, de plus en plus étrangère, nous fait face. Or, en ce matin pluvieux de novembre où Konstantin fêtait son cinquantième anniversaire, tandis qu'il se rasait, comme chaque matin, machinalement devant le miroir de la salle de bains, il fut saisi par une sensation qu'il ne parvenait d'abord pas bien à identifier : le sentiment insidieux, à peine saisissable, de se trouver face à un inconnu. Les rides autour des yeux, les cheveux grisonnants aux tempes, les commissures des lèvres légèrement tombantes – tout cela, il le constatait bien, mais ce n'était pas tant le purement physique qui le troublait que le vague pressentiment que, derrière cette apparence extérieure, se cachait un moi intérieur qu'il avait lui-même, avec les années, de plus en plus perdu de vue. Quand exactement, se demanda-t-il tandis que le rasoir restait immobile dans sa main, avait-il cessé d'être ce jeune homme qui, jadis, avait été plein d'une conviction indomptable de pouvoir changer le monde par sa musique, et s'était-il transformé à la place, insidieusement et sans qu'il s'en soit rendu compte consciemment, en un homme dont les journées étaient largement déterminées par la gestion pragmatique d'attentes étrangères ? Il n'en allait nullement ainsi que Konstantin eût ressenti sa vie présente comme malheureuse – il jouissait d'une situation professionnelle solide, d'une famille aimante, d'une maison qui lui offrait la sécurité –, mais en cet unique et fugace instant devant le miroir embué, la question irrésistible et en même temps troublante le saisit : se pourrait-il que, s'il avait autrefois décidé autrement, il fût aujourd'hui devenu un autre homme, étranger à lui-même, ou bien que, au bout du compte, indépendamment de toutes les bifurcations, un seul et même Konstantin ait dû, tel un point fixe inéluctable, l'attendre, dans une vie par ailleurs tissée de hasards ? Ce matin-là, il ne trouva aucune réponse définitive à cette question, mais il décida, à peine avait-il reposé son rasoir, avec une détermination qui le surprit lui-même, d'accorder dès le soir même son vieux piano resté intact depuis des décennies.$t$,
    $t${"Es":"il","gehört":"fait partie","zu":"parmi","den":"les","stilleren":"plus discrètes","Absurditäten":"absurdités","des":"de l'","menschlichen":"humaine","Daseins":"existence","dass":"que","wir":"nous","Tag":"jour","für":"après","minutenlang":"pendant des minutes","vor":"devant","einem":"un","Spiegel":"miroir","verharren":"rester immobiles","ohne":"sans","uns":"nous","dabei":"ce faisant","jemals":"jamais","ernsthaft":"sérieusement","fragen":"demander","wer":"qui","eigentlich":"vraiment","jene":"cette","Gestalt":"silhouette","ist":"est","die":"qui","dort":"là","scheinbar":"apparemment","vertraut":"familière","und":"et","doch":"pourtant","bei":"à","genauerem":"plus attentif","Hinsehen":"regard","zunehmend":"de plus en plus","fremd":"étrangère","entgegenblickt":"nous fait face","An":"en","jenem":"ce","regnerischen":"pluvieux","Novembermorgen":"matin de novembre","jedoch":"or","an":"en","dem":"où","Konstantin":"Konstantin","seinen":"son","fünfzigsten":"cinquantième","Geburtstag":"anniversaire","beging":"fêtait","überkam":"saisit","ihn":"le","während":"tandis que","er":"il","sich":"se","wie":"comme","jedem":"chaque","anderen":"autre","Morgen":"matin","auch":"aussi","routiniert":"machinalement","Badezimmerspiegel":"miroir de la salle de bains","rasierte":"rasait","eine":"une","Empfindung":"sensation","zunächst":"d'abord","nicht":"ne pas","recht":"bien","einzuordnen":"identifier","wusste":"savait","das":"le","schleichende":"insidieux","kaum":"à peine","greifbare":"saisissable","Gefühl":"sentiment","Fremden":"inconnu","gegenüberzustehen":"se trouver face à","Die":"les","Falten":"rides","um":"autour de","Augen":"yeux","ergraute":"grisonnants","Haar":"cheveux","Schläfen":"tempes","leicht":"légèrement","hängenden":"tombantes","Mundwinkel":"commissures des lèvres","all":"tout","dies":"cela","registrierte":"constatait","zwar":"certes","durchaus":"bien","es":"ce","war":"était","weniger":"moins","rein":"purement","Physische":"physique","irritierte":"troublait","als":"que","vielmehr":"plutôt","unbestimmte":"vague","Ahnung":"pressentiment","hinter":"derrière","dieser":"cette","äußeren":"extérieure","Erscheinung":"apparence","ein":"un","inneres":"intérieur","Selbst":"moi","verbarg":"cachait","selbst":"lui-même","mit":"avec","Jahren":"années","aus":"de","verloren":"perdu","hatte":"avait","Wann":"quand","genau":"exactement","so":"ainsi","fragte":"demanda","Rasiermesser":"rasoir","reglos":"immobile","in":"dans","seiner":"sa","Hand":"main","verharrte":"restait","aufgehört":"cessé","jener":"ce","junge":"jeune","Mann":"homme","sein":"être","der":"qui","einst":"jadis","voller":"plein de","unbändiger":"indomptable","Überzeugung":"conviction","davon":"de cela","gewesen":"été","Welt":"monde","Musik":"musique","verändern":"changer","können":"pouvoir","stattdessen":"à la place","schleichend":"insidieusement","bewusst":"consciemment","bemerkt":"remarqué","hätte":"aurait","einen":"un","Menschen":"homme","verwandelt":"transformé","dessen":"dont","Tage":"journées","weitgehend":"largement","von":"par","pragmatischen":"pragmatique","Verwaltung":"gestion","fremder":"étranger","Erwartungen":"attentes","bestimmt":"déterminées","wurden":"étaient","keineswegs":"nullement","gegenwärtiges":"présente","Leben":"vie","unglücklich":"malheureuse","empfunden":"ressentie","besaß":"possédait","solide":"solide","berufliche":"professionnelle","Stellung":"situation","liebevolle":"aimante","Familie":"famille","Haus":"maison","ihm":"lui","Geborgenheit":"sécurité","bot":"offrait","diesem":"cet","flüchtigen":"fugace","Moment":"instant","beschlagenen":"embué","unwiderstehliche":"irrésistible","zugleich":"en même temps","beunruhigende":"troublante","Frage":"question","ob":"si","damals":"autrefois","anders":"autrement","entschieden":"décidé","heute":"aujourd'hui","womöglich":"peut-être","anderer":"autre","Mensch":"homme","geworden":"devenu","wäre":"serait","oder":"ou","am":"au","Ende":"bout","ohnehin":"de toute façon","ungeachtet":"indépendamment de","aller":"de toutes","Weggabelungen":"bifurcations","derselbe":"le même","auf":"attendre","warten":"attendre","müssen":"devoir","gleich":"tel","unausweichlichen":"inéluctable","Fixpunkt":"point fixe","ansonsten":"par ailleurs","Zufällen":"hasards","durchwirkten":"tissée de","Er":"il","fand":"trouva","keine":"aucune","endgültige":"définitive","Antwort":"réponse","diese":"cette","beschloss":"décida","beiseitegelegt":"reposé","einer":"une","Entschlossenheit":"détermination","überraschte":"surprit","altes":"vieux","seit":"depuis","Jahrzehnten":"décennies","unberührtes":"resté intact","Klavier":"piano","noch":"encore","selben":"même","Abend":"soir","wieder":"de nouveau","stimmen":"accorder"}$t$::jsonb
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was empfindet Konstantin an seinem fünfzigsten Geburtstag vor dem Spiegel?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Stolz auf sein Aussehen$t$, false, 1),
    (v_q, $t$Das Gefühl, einem Fremden gegenüberzustehen$t$, true, 2),
    (v_q, $t$Freude über seinen Geburtstag$t$, false, 3),
    (v_q, $t$Angst vor dem Älterwerden im körperlichen Sinne$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was empfindet Konstantin an seinem fünfzigsten Geburtstag vor dem Spiegel?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Stolz auf sein Aussehen$t$, false, 1),
    (v_q, $t$Das Gefühl, einem Fremden gegenüberzustehen$t$, true, 2),
    (v_q, $t$Freude über seinen Geburtstag$t$, false, 3),
    (v_q, $t$Angst vor dem Älterwerden im körperlichen Sinne$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Worin besteht die eigentliche Fremdheit, die Konstantin beim Blick in den Spiegel erfasst, wenn man sie nicht wörtlich, sondern als inneren Befund liest?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$In der Entfremdung von dem jungen Mann, der einst glaubte, mit Musik die Welt verändern zu können, gegenüber dem, der nun fremde Erwartungen verwaltet$t$, true, 1),
    (v_q, $t$In der schlichten Wahrnehmung körperlicher Alterserscheinungen, die ihn erschrecken$t$, false, 2),
    (v_q, $t$In der Angst, den bevorstehenden Ruhestand nicht bewältigen zu können$t$, false, 3),
    (v_q, $t$In der Sorge, seine Familie im Laufe der Jahre vernachlässigt zu haben$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was hatte Konstantin als junger Mann geglaubt?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Dass er niemals Karriere machen würde$t$, false, 1),
    (v_q, $t$Dass er die Welt mit seiner Musik verändern könnte$t$, true, 2),
    (v_q, $t$Dass er niemals eine Familie haben würde$t$, false, 3),
    (v_q, $t$Dass er auswandern würde$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was hatte Konstantin als junger Mann geglaubt?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Dass er niemals Karriere machen würde$t$, false, 1),
    (v_q, $t$Dass er die Welt mit seiner Musik verändern könnte$t$, true, 2),
    (v_q, $t$Dass er niemals eine Familie haben würde$t$, false, 3),
    (v_q, $t$Dass er auswandern würde$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welcher jugendliche Anspruch bildet im Text den stillen Maßstab, an dem Konstantin sein heutiges Leben unbewusst misst?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Der Glaube, durch seine Musik etwas an der Welt bewegen zu können, den er im Alltag des Erwartungsmanagements verloren hat$t$, true, 1),
    (v_q, $t$Der Wunsch, international als Konzertpianist aufzutreten, den er letztlich verwirklichte$t$, false, 2),
    (v_q, $t$Die Überzeugung, niemals einen bürgerlichen Beruf ergreifen zu wollen$t$, false, 3),
    (v_q, $t$Die Hoffnung, früh eine Familie zu gründen, die sich nicht erfüllte$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was beschließt Konstantin am Ende der Geschichte zu tun?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sich scheiden zu lassen$t$, false, 1),
    (v_q, $t$Seinen Beruf sofort zu kündigen$t$, false, 2),
    (v_q, $t$Sein altes Klavier wieder zu stimmen$t$, true, 3),
    (v_q, $t$Einen neuen Spiegel zu kaufen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was beschließt Konstantin am Ende der Geschichte zu tun?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sich scheiden zu lassen$t$, false, 1),
    (v_q, $t$Seinen Beruf sofort zu kündigen$t$, false, 2),
    (v_q, $t$Sein altes Klavier wieder zu stimmen$t$, true, 3),
    (v_q, $t$Einen neuen Spiegel zu kaufen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Geste wählt Konstantin am Ende als leisen, aber bedeutungsvollen Gegenzug zu seiner Erkenntnis vor dem Spiegel, ohne sein im Übrigen zufriedenes Leben grundlegend umzustoßen?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er lässt noch am selben Abend sein lange unberührtes Klavier stimmen$t$, true, 1),
    (v_q, $t$Er kündigt umgehend seine berufliche Stellung, um sich ganz der Musik zu widmen$t$, false, 2),
    (v_q, $t$Er plant, seine Ehe zu beenden und neu anzufangen$t$, false, 3),
    (v_q, $t$Er entscheidet sich, in den kommenden Wochen auszuwandern$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$„...voller unbändiger Überzeugung davon..." – 'unbändig' bedeutet:$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$ungezügelt, überwältigend stark$t$, true, 1),
    (v_q, $t$schwach, kaum vorhanden$t$, false, 2),
    (v_q, $t$vorsichtig, zurückhaltend$t$, false, 3),
    (v_q, $t$künstlich, aufgesetzt$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welches Wort passt semantisch am besten zu 'unbändig' in „unbändiger Überzeugung"?$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$ungebändigt$t$, true, 1),
    (v_q, $t$vernünftig$t$, false, 2),
    (v_q, $t$gemäßigt$t$, false, 3),
    (v_q, $t$beiläufig$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche stilistische Wirkung erzielt 'unbändig' im Vergleich zu einem neutraleren Adjektiv wie 'stark' an dieser Stelle?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$es evoziert eine fast unkontrollierbare, jugendlich-leidenschaftliche Intensität$t$, true, 1),
    (v_q, $t$es signalisiert nüchterne, sachliche Gewissheit$t$, false, 2),
    (v_q, $t$es deutet auf eine später widerlegte Fehleinschätzung hin$t$, false, 3),
    (v_q, $t$es beschreibt eine gesellschaftlich anerkannte Norm$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$„...ob er, hätte er sich damals anders entschieden, heute ein anderer Mensch ___." (Konjunktiv II Plusquamperfekt, uneingeleiteter Konditionalsatz)$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$geworden wäre$t$, true, 1),
    (v_q, $t$geworden ist$t$, false, 2),
    (v_q, $t$wird geworden$t$, false, 3),
    (v_q, $t$würde geworden$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Ergänzen Sie den irrealen Bedingungssatz ohne 'wenn': „___ er sich damals anders entschieden, wäre er heute womöglich ein anderer Mensch geworden."$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Hätte$t$, true, 1),
    (v_q, $t$Wenn$t$, false, 2),
    (v_q, $t$Würde$t$, false, 3),
    (v_q, $t$Habe$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Umformung des uneingeleiteten Konditionalsatzes „Hätte er sich anders entschieden, wäre er ein anderer geworden" in einen eingeleiteten Satz ist korrekt?$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Wenn er sich anders entschieden hätte, wäre er ein anderer geworden.$t$, true, 1),
    (v_q, $t$Wenn er sich anders entscheiden würde, ist er ein anderer geworden.$t$, false, 2),
    (v_q, $t$Als er sich anders entschieden hatte, wurde er ein anderer.$t$, false, 3),
    (v_q, $t$Obwohl er sich anders entschieden hätte, wäre er derselbe geblieben.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$Schreiben Sie einen introspektiven Absatz (8–12 Sätze) über einen Moment, in dem eine Person sich im Spiegel (oder in einer anderen Reflexion) plötzlich selbst fremd wird. Lassen Sie eine philosophische Frage nach Identität und verpassten Lebenswegen anklingen.$t$, 1, 'normal', 'production', $t$An dem Morgen, an dem Theodor seinen sechzigsten Geburtstag beging, blieb er ungewöhnlich lange vor dem Badezimmerspiegel stehen, das Rasiermesser reglos in der Hand, während ihn ein Gefühl beschlich, das er zunächst nicht benennen konnte. Die grauen Schläfen, die vertieften Falten um die Mundwinkel registrierte er zwar, doch es war nicht das Physische, das ihn beunruhigte, sondern die Ahnung, ein inneres Selbst aus den Augen verloren zu haben, das er einst genau zu kennen glaubte. Wann, so fragte er sich, hatte er aufgehört, jener junge Mann zu sein, der überzeugt gewesen war, mit seinen Gemälden die Welt zu verändern, und war stattdessen, unmerklich und ohne bewusste Entscheidung, zu einem Menschen geworden, dessen Alltag von der Verwaltung fremder Erwartungen bestimmt wurde? Es war keineswegs so, dass er sein Leben als Steuerberater für unglücklich hielt; er besaß eine solide Existenz, eine Familie, die ihn liebte, doch in diesem flüchtigen Moment überkam ihn die beunruhigende Frage, ob er, hätte er sich damals für die Kunstakademie statt für das sichere Studium entschieden, heute ein ihm selbst fremder Mensch geworden wäre. Oder wäre, ungeachtet aller Weggabelungen, am Ende ohnehin derselbe Theodor auf ihn gewartet, gleich einem unausweichlichen Fixpunkt inmitten eines von Zufällen durchwirkten Lebens? Eine endgültige Antwort fand er an diesem Morgen nicht, doch beschloss er, mit einer Entschlossenheit, die ihn selbst überraschte, noch am selben Abend die alten, seit Jahren unberührten Ölfarben in seinem Keller wieder hervorzuholen.$t$);

END $block$;

-- 4. Die letzte Zugfahrt
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary) VALUES (
    'C2',
    $t$Die letzte Zugfahrt$t$,
    $t$Es gibt Abschiede, die sich mit lauten Worten und großen Gesten vollziehen, und es gibt jene anderen, weitaus stilleren, die sich beinahe unbemerkt in den unscheinbarsten Momenten des Alltags ereignen – gerade solch ein Abschied war es, den Margarete an jenem letzten Tag ihrer beruflichen Laufbahn erlebte, ohne dass sie es zu diesem Zeitpunkt selbst schon geahnt hätte. Seit über vierzig Jahren hatte sie, zunächst als junge Berufseinsteigerin und zuletzt als respektierte Abteilungsleiterin, jeden einzelnen Werktag dieselbe Zugstrecke zwischen ihrem Vorort und der Stadt zurückgelegt, stets denselben Waggon, häufig denselben Sitzplatz am Fenster bevorzugend, von dem aus sie über die Jahrzehnte hinweg beobachtet hatte, wie sich die vorbeiziehende Landschaft allmählich veränderte: Wiesen, die neuen Wohnsiedlungen weichen mussten, ein kleiner Bahnhof, der modernisiert und schließlich ganz aufgegeben wurde, Bäume, die gepflanzt, gewachsen und mitunter auch wieder gefällt wurden. An jenem letzten Morgen jedoch, an dem sie, ohne es zunächst bewusst wahrzunehmen, ebenjene Strecke zum allerletzten Mal als Berufstätige befuhr, war nichts Außergewöhnliches an der Fahrt selbst: derselbe leicht muffige Geruch der abgenutzten Sitzpolster, dieselben vertrauten Gesichter der Mitreisenden, mit denen sie über die Jahre hinweg, ohne je ihre Namen zu erfahren, eine Art stillschweigender Vertrautheit entwickelt hatte, dasselbe monotone Rattern der Räder auf den Schienen. Erst als sie, bereits auf dem Bahnsteig ihrer Zielstation stehend, sich beiläufig noch einmal zu dem abfahrenden Zug umwandte, überkam sie mit unerwarteter Wucht die Erkenntnis, dass sie diese Fahrt, die sie über vierzig Jahre hinweg unzählige Male mehr aus Gewohnheit denn aus bewusster Wahrnehmung absolviert hatte, nun nie wieder in gleicher Weise antreten würde. Es war nicht die bevorstehende Rente an sich, die sie in diesem Moment mit einer Mischung aus Wehmut und stiller Erleichterung erfüllte, sondern vielmehr das plötzliche Bewusstsein darüber, wie viele unwiederbringliche kleine Momente – ein Lächeln eines fremden Mitreisenden, ein besonders schöner Sonnenaufgang über den Feldern, ein Gespräch, das sich zufällig ergeben hatte – sie in all den Jahren, gefangen in der Routine des Alltäglichen, kaum bewusst wahrgenommen, geschweige denn wirklich gewürdigt hatte. Sie beschloss in diesem Augenblick, still für sich, dass sie sich in ihrem neuen, freieren Lebensabschnitt fortan bemühen wollte, solchen flüchtigen, unscheinbaren Momenten jene Aufmerksamkeit zukommen zu lassen, die sie ihnen all die Jahre über, ohne es bewusst zu bemerken, hatte entgehen lassen.$t$,
    $t$Il existe des adieux qui se déroulent dans de grands mots et de grands gestes, et il en existe d'autres, bien plus discrets, qui se produisent presque inaperçus dans les moments les plus anodins du quotidien – c'est précisément un tel adieu que vécut Margarete en ce dernier jour de sa carrière professionnelle, sans qu'elle s'en doutât elle-même à ce moment-là. Depuis plus de quarante ans, elle avait parcouru, d'abord comme jeune débutante puis, en dernier lieu, comme chef de service respectée, chaque jour ouvrable, le même trajet en train entre sa banlieue et la ville, préférant toujours le même wagon, souvent la même place près de la fenêtre, d'où elle avait, au fil des décennies, observé comment le paysage défilant se transformait peu à peu : des prairies qui devaient céder la place à de nouveaux lotissements, une petite gare modernisée puis finalement totalement abandonnée, des arbres plantés, ayant poussé et parfois de nouveau abattus. Or, en ce dernier matin, où elle emprunta, sans d'abord s'en rendre compte consciemment, ce même trajet pour la toute dernière fois en tant qu'active, rien n'était extraordinaire dans le trajet lui-même : la même odeur légèrement de renfermé des sièges usés, les mêmes visages familiers des compagnons de voyage avec qui, au fil des années, sans jamais apprendre leurs noms, elle avait développé une sorte de familiarité tacite, le même cliquetis monotone des roues sur les rails. Ce n'est que lorsque, déjà debout sur le quai de sa gare de destination, elle se retourna par hasard une dernière fois vers le train en train de partir, que la prise de conscience la saisit avec une force inattendue : ce trajet, qu'elle avait accompli d'innombrables fois en plus de quarante ans, plus par habitude que par perception consciente, elle ne l'entreprendrait plus jamais de la même façon. Ce n'était pas la retraite imminente en elle-même qui l'emplissait à cet instant d'un mélange de nostalgie et de soulagement tranquille, mais bien plutôt la prise de conscience soudaine du nombre de petits moments irrécupérables – un sourire d'un compagnon de voyage inconnu, un lever de soleil particulièrement beau au-dessus des champs, une conversation née par hasard – qu'elle avait, au fil de toutes ces années, prisonnière de la routine du quotidien, à peine perçus consciemment, et encore moins vraiment appréciés. Elle décida à cet instant, tranquillement pour elle-même, que dans cette nouvelle étape de sa vie, plus libre, elle s'efforcerait désormais d'accorder à ces moments fugaces et discrets l'attention qu'elle avait, toutes ces années durant, sans s'en rendre compte, laissé leur échapper.$t$,
    $t${"Es":"il","gibt":"y a","Abschiede":"adieux","die":"qui","sich":"se","mit":"avec","lauten":"grands","Worten":"mots","und":"et","großen":"grands","Gesten":"gestes","vollziehen":"se dérouler","es":"il","jene":"ces","anderen":"autres","weitaus":"bien plus","stilleren":"discrets","beinahe":"presque","unbemerkt":"inaperçus","in":"dans","den":"les","unscheinbarsten":"les plus anodins","Momenten":"moments","des":"du","Alltags":"quotidien","ereignen":"se produire","gerade":"justement","solch":"un tel","ein":"un","Abschied":"adieu","war":"était","Margarete":"Margarete","an":"en","jenem":"ce","letzten":"dernier","Tag":"jour","ihrer":"sa","beruflichen":"professionnelle","Laufbahn":"carrière","erlebte":"vécut","ohne":"sans","dass":"que","sie":"elle","zu":"à","diesem":"ce","Zeitpunkt":"moment","selbst":"elle-même","schon":"déjà","geahnt":"soupçonné","hätte":"aurait","Seit":"depuis","über":"plus de","vierzig":"quarante","Jahren":"ans","hatte":"avait","zunächst":"d'abord","als":"comme","junge":"jeune","Berufseinsteigerin":"débutante","zuletzt":"en dernier lieu","respektierte":"respectée","Abteilungsleiterin":"chef de service","jeden":"chaque","einzelnen":"chaque","Werktag":"jour ouvrable","dieselbe":"le même","Zugstrecke":"trajet en train","zwischen":"entre","ihrem":"sa","Vorort":"banlieue","der":"la","Stadt":"ville","zurückgelegt":"parcouru","stets":"toujours","denselben":"le même","Waggon":"wagon","häufig":"souvent","Sitzplatz":"place","am":"près de la","Fenster":"fenêtre","bevorzugend":"préférant","von":"de","dem":"lequel","aus":"depuis","Jahrzehnte":"décennies","hinweg":"durant","beobachtet":"observé","wie":"comment","vorbeiziehende":"défilant","Landschaft":"paysage","allmählich":"peu à peu","veränderte":"transformait","Wiesen":"prairies","neuen":"nouveaux","Wohnsiedlungen":"lotissements","weichen":"céder la place","mussten":"devaient","kleiner":"petite","Bahnhof":"gare","modernisiert":"modernisée","schließlich":"finalement","ganz":"totalement","aufgegeben":"abandonnée","wurde":"fut","Bäume":"arbres","gepflanzt":"plantés","gewachsen":"poussé","mitunter":"parfois","auch":"aussi","wieder":"de nouveau","gefällt":"abattus","wurden":"étaient","An":"en","Morgen":"matin","jedoch":"or","bewusst":"consciemment","wahrzunehmen":"se rendre compte","ebenjene":"ce même","Strecke":"trajet","zum":"pour la","allerletzten":"toute dernière","Mal":"fois","Berufstätige":"active","befuhr":"emprunta","nichts":"rien","Außergewöhnliches":"extraordinaire","Fahrt":"trajet","derselbe":"le même","leicht":"légèrement","muffige":"de renfermé","Geruch":"odeur","abgenutzten":"usés","Sitzpolster":"sièges","dieselben":"les mêmes","vertrauten":"familiers","Gesichter":"visages","Mitreisenden":"compagnons de voyage","denen":"avec qui","Jahre":"années","je":"jamais","ihre":"leurs","Namen":"noms","erfahren":"apprendre","eine":"une","Art":"sorte","stillschweigender":"tacite","Vertrautheit":"familiarité","entwickelt":"développé","dasselbe":"le même","monotone":"monotone","Rattern":"cliquetis","Räder":"roues","auf":"sur","Schienen":"rails","Erst":"ce n'est que","bereits":"déjà","Bahnsteig":"quai","Zielstation":"gare de destination","stehend":"debout","beiläufig":"par hasard","noch":"encore","einmal":"une fois","abfahrenden":"en train de partir","Zug":"train","umwandte":"se retourna","überkam":"saisit","unerwarteter":"inattendue","Wucht":"force","Erkenntnis":"prise de conscience","diese":"ce","unzählige":"innombrables","Male":"fois","mehr":"plus","Gewohnheit":"habitude","denn":"que","bewusster":"consciente","Wahrnehmung":"perception","absolviert":"accompli","nun":"désormais","nie":"jamais","gleicher":"la même","Weise":"façon","antreten":"entreprendre","würde":"ferait","nicht":"ne pas","bevorstehende":"imminente","Rente":"retraite","Moment":"instant","einer":"un","Mischung":"mélange","Wehmut":"nostalgie","stiller":"tranquille","Erleichterung":"soulagement","erfüllte":"emplissait","sondern":"mais","vielmehr":"plutôt","das":"le","plötzliche":"soudaine","Bewusstsein":"prise de conscience","darüber":"à ce sujet","viele":"de nombreux","unwiederbringliche":"irrécupérables","kleine":"petits","Momente":"moments","Lächeln":"sourire","eines":"d'un","fremden":"inconnu","besonders":"particulièrement","schöner":"beau","Sonnenaufgang":"lever de soleil","Feldern":"champs","Gespräch":"conversation","zufällig":"par hasard","ergeben":"née","all":"toutes","gefangen":"prisonnière","Routine":"routine","Alltäglichen":"quotidien","kaum":"à peine","wahrgenommen":"perçus","geschweige":"encore moins","wirklich":"vraiment","gewürdigt":"appréciés","Sie":"elle","beschloss":"décida","Augenblick":"instant","still":"tranquillement","für":"pour","freieren":"plus libre","Lebensabschnitt":"étape de la vie","fortan":"désormais","bemühen":"s'efforcer","wollte":"voulait","solchen":"ces","flüchtigen":"fugaces","unscheinbaren":"discrets","Aufmerksamkeit":"attention","zukommen":"accorder","lassen":"laisser","ihnen":"leur","bemerken":"remarquer","entgehen":"échapper"}$t$::jsonb
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie lange ist Margarete dieselbe Zugstrecke gefahren?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Über zwanzig Jahre$t$, false, 1),
    (v_q, $t$Über vierzig Jahre$t$, true, 2),
    (v_q, $t$Nur ein paar Jahre$t$, false, 3),
    (v_q, $t$Seit ihrer Kindheit$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie lange ist Margarete dieselbe Zugstrecke gefahren?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Über zwanzig Jahre$t$, false, 1),
    (v_q, $t$Über vierzig Jahre$t$, true, 2),
    (v_q, $t$Nur ein paar Jahre$t$, false, 3),
    (v_q, $t$Seit ihrer Kindheit$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche zeitliche Dimension verleiht dem im Text geschilderten Abschied seine besondere Schwere?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Die Tatsache, dass Margarete diese Strecke über vier Jahrzehnte hinweg zurückgelegt hatte, bevor sie deren Ende erst rückblickend bemerkte$t$, true, 1),
    (v_q, $t$Der Umstand, dass Margarete die Strecke erst seit wenigen Jahren fuhr und sie ihr daher fremd blieb$t$, false, 2),
    (v_q, $t$Die Erinnerung daran, dass sie diese Fahrt bereits als Kind unternommen hatte$t$, false, 3),
    (v_q, $t$Die Vorstellung, dass sie die Strecke schon seit über zwanzig Jahren mied$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wann wird Margarete bewusst, dass es ihre letzte Fahrt war?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Bereits am Morgen, bevor sie einstieg$t$, false, 1),
    (v_q, $t$Während der Fahrt selbst$t$, false, 2),
    (v_q, $t$Erst auf dem Bahnsteig, als sie sich zum Zug umdreht$t$, true, 3),
    (v_q, $t$Erst Wochen später$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wann wird Margarete bewusst, dass es ihre letzte Fahrt war?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Bereits am Morgen, bevor sie einstieg$t$, false, 1),
    (v_q, $t$Während der Fahrt selbst$t$, false, 2),
    (v_q, $t$Erst auf dem Bahnsteig, als sie sich zum Zug umdreht$t$, true, 3),
    (v_q, $t$Erst Wochen später$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$An welchem Punkt der Erzählung kippt Margaretes Wahrnehmung von der letzten Arbeitsfahrt als bloßer Routine in ein Bewusstsein ihrer Unwiederholbarkeit?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Erst nachträglich, auf dem Bahnsteig nach ihrem letzten Arbeitstag, beim Blick zurück zum Zug$t$, true, 1),
    (v_q, $t$Schon am Morgen jenes Tages, als sie sich bewusst von der Strecke verabschiedete$t$, false, 2),
    (v_q, $t$Während der Fahrt selbst, als sie aus dem Fenster auf die vorbeiziehende Landschaft blickte$t$, false, 3),
    (v_q, $t$Erst nach mehreren Wochen im Ruhestand, beim Rückblick auf ihre Berufsjahre$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was nimmt sich Margarete für ihren neuen Lebensabschnitt vor?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Nie wieder Zug zu fahren$t$, false, 1),
    (v_q, $t$Flüchtigen, unscheinbaren Momenten mehr Aufmerksamkeit zu schenken$t$, true, 2),
    (v_q, $t$Sofort wieder zu arbeiten$t$, false, 3),
    (v_q, $t$Umzuziehen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was nimmt sich Margarete für ihren neuen Lebensabschnitt vor?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Nie wieder Zug zu fahren$t$, false, 1),
    (v_q, $t$Flüchtigen, unscheinbaren Momenten mehr Aufmerksamkeit zu schenken$t$, true, 2),
    (v_q, $t$Sofort wieder zu arbeiten$t$, false, 3),
    (v_q, $t$Umzuziehen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Lehre zieht Margarete aus der Erkenntnis, wie viele kleine, unwiederholbare Momente ihr während der Pendelfahrten entgangen waren?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Den Vorsatz, solchen flüchtigen und unscheinbaren Augenblicken künftig bewusster Beachtung zu schenken$t$, true, 1),
    (v_q, $t$Den Entschluss, jede weitere Zugfahrt in ihrem Leben zu vermeiden$t$, false, 2),
    (v_q, $t$Die Absicht, so schnell wie möglich wieder in den Berufsalltag zurückzukehren$t$, false, 3),
    (v_q, $t$Den Plan, aus der Stadt wegzuziehen, um neue Eindrücke zu gewinnen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$„...erfüllte sie mit einer Mischung aus Wehmut und stiller Erleichterung..." – 'Wehmut' bedeutet:$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$wehmütige, sanfte Traurigkeit$t$, true, 1),
    (v_q, $t$übermäßige Freude$t$, false, 2),
    (v_q, $t$heftige Wut$t$, false, 3),
    (v_q, $t$völlige Gleichgültigkeit$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welches Wort trifft die Bedeutung von 'Wehmut' am genauesten?$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Melancholie$t$, true, 1),
    (v_q, $t$Euphorie$t$, false, 2),
    (v_q, $t$Empörung$t$, false, 3),
    (v_q, $t$Nervosität$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Worin unterscheidet sich 'Wehmut' nuanciert von 'Trauer', wie es im Text verwendet wird?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Wehmut ist eine mildere, oft mit Erinnerung und leiser Zärtlichkeit durchsetzte Form der Traurigkeit, während Trauer intensiver und akuter ist$t$, true, 1),
    (v_q, $t$Wehmut bezeichnet ausschließlich körperlichen Schmerz$t$, false, 2),
    (v_q, $t$Wehmut ist ein rein positives Gefühl ohne jede Traurigkeit$t$, false, 3),
    (v_q, $t$Wehmut wird nur in juristischen Texten verwendet$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$„...dass sie diese Fahrt nun nie wieder in gleicher Weise ___." (Futur-in-der-Vergangenheit / würde-Form)$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$antreten würde$t$, true, 1),
    (v_q, $t$antritt$t$, false, 2),
    (v_q, $t$angetreten hat$t$, false, 3),
    (v_q, $t$anzutreten sei$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Form drückt in indirekter Rede korrekt ein zukünftiges Ereignis aus der Vergangenheit heraus aus: „Sie erkannte, dass sie diese Fahrt nie wieder ___."$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$antreten würde$t$, true, 1),
    (v_q, $t$anträte$t$, false, 2),
    (v_q, $t$wird antreten$t$, false, 3),
    (v_q, $t$angetreten sein wird$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum ist im Satz „...dass sie diese Fahrt nun nie wieder in gleicher Weise antreten würde" die würde-Form der Konjunktiv-II-Form ('anträte') stilistisch vorzuziehen?$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$weil 'anträte' als veraltet bzw. gespreizt empfunden wird und die würde-Form im modernen Deutsch bei den meisten Verben bevorzugt wird$t$, true, 1),
    (v_q, $t$weil 'anträte' grammatisch falsch ist$t$, false, 2),
    (v_q, $t$weil die würde-Form ausschließlich in der gesprochenen Sprache erlaubt ist$t$, false, 3),
    (v_q, $t$weil 'anträte' nur im Perfekt existiert$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$Schreiben Sie einen Absatz (8–12 Sätze) über einen letzten, scheinbar gewöhnlichen Tag einer langjährigen Routine (z. B. der letzte Arbeitstag, die letzte Fahrt, das letzte Treffen), der erst im Nachhinein seine volle Bedeutung entfaltet.$t$, 1, 'normal', 'production', $t$Herr Albrecht hatte, ohne es zu wissen, an jenem grauen Donnerstagmorgen bereits seinen letzten Weg als Schulhausmeister zurückgelegt, denselben Weg, den er seit siebenundzwanzig Jahren jeden Morgen um Viertel vor sieben durch das Nebentor der Schule genommen hatte. Nichts an diesem Morgen unterschied sich äußerlich von den unzähligen vorangegangenen: dasselbe Klappern der Schlüssel in seiner Manteltasche, derselbe Geruch nach feuchtem Laub auf dem Schulhof, dieselben vertrauten Gesichter der Schüler, die ihn im Vorbeigehen grüßten, ohne je seinen Vornamen zu kennen. Erst als er, bereits auf dem Heimweg, sich unwillkürlich noch einmal zum Schulgebäude umwandte, überkam ihn mit unerwarteter Wucht die Erkenntnis, dass er diesen Weg, den er über Jahrzehnte hinweg mehr aus Gewohnheit als aus bewusster Wahrnehmung zurückgelegt hatte, nun nie wieder in gleicher Weise antreten würde. Es war nicht die bevorstehende Rente selbst, die ihn in diesem Moment mit einer Mischung aus Wehmut und stiller Erleichterung erfüllte, sondern das plötzliche Bewusstsein darüber, wie viele flüchtige Momente er in all den Jahren kaum wahrgenommen hatte. Ein Lächeln eines schüchternen Erstklässlers, ein besonders schöner Sonnenaufgang über dem Pausenhof, ein Gespräch mit einer Lehrerin, das sich zufällig ergeben hatte – all dies war ihm, gefangen in der Routine des Alltäglichen, entgangen, ohne dass er es zu jener Zeit bemerkt hätte. Er nahm sich in diesem stillen Augenblick vor, den kommenden, freieren Jahren jene Aufmerksamkeit zu schenken, die er dem Alltäglichen die ganze Zeit über schuldig geblieben war.$t$);

END $block$;

-- 5. Die Sprache der Stille
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary) VALUES (
    'C2',
    $t$Die Sprache der Stille$t$,
    $t$In einer Zeit, die sich durch eine schier unaufhörliche Kaskade akustischer und visueller Reize auszeichnet, in der Stille zunehmend als etwas Unangenehmes, ja beinahe Bedrohliches empfunden und daher reflexhaft mit Hintergrundmusik, Podcasts oder dem beständigen Aufleuchten eines Bildschirms gefüllt wird, erscheint es womöglich befremdlich, wenn jemand behauptet, gerade in eben jener Stille liege eine der reichhaltigsten und zugleich am meisten vernachlässigten Formen menschlicher Kommunikation verborgen. Die Musikerin Ines, die einen Großteil ihres Lebens der Erforschung des Zusammenspiels von Klang und dessen Abwesenheit gewidmet hat, vertritt genau diese, auf den ersten Blick paradox anmutende These mit einer Überzeugungskraft, die selbst eingefleischte Skeptiker ins Nachdenken zu bringen vermag. Ihrer Auffassung nach entfaltet jede noch so bedeutungsvolle musikalische Phrase ihre eigentliche Wirkung nicht etwa trotz, sondern gerade wegen der sie umgebenden Pausen, jener scheinbar leeren Momente, in denen dem Zuhörenden Raum gegeben wird, das zuvor Gehörte nachklingen zu lassen und emotional zu verarbeiten, bevor der nächste Ton diesen fragilen inneren Prozess unweigerlich wieder unterbricht. Ines erinnert sich lebhaft an eine Begebenheit während eines Konzerts vor mehreren Jahren, bei dem sie sich, einer spontanen künstlerischen Eingebung folgend, dazu entschied, mitten in einem ansonsten dicht komponierten Stück eine ungewöhnlich lange, mehrere Sekunden andauernde Pause einzufügen. Das anfängliche, spürbar unbehagliche Rascheln und Räuspern im Publikum, das diese ungewohnte Stille zunächst hervorrief, wich nach wenigen, quälend langen Augenblicken einer beinahe greifbaren, kollektiven Konzentration, wie Ines sie in dieser Intensität zuvor nie erlebt hatte. In jenem gedehnten Moment der Stille, so berichtet sie es rückblickend, schien das gesamte Auditorium für einen flüchtigen, aber umso eindrücklicheren Augenblick vollkommen synchron zu atmen, geeint durch eben jene Abwesenheit von Klang, die man landläufig eher mit Leere als mit Verbindung assoziiert. Diese Erfahrung bestärkte Ines fortan in ihrer Überzeugung, dass die weitverbreitete gesellschaftliche Tendenz, jede Form von Stille umgehend und beinahe zwanghaft zu füllen, letztlich einer tiefen, kollektiven Unsicherheit im Umgang mit den eigenen, unkommentierten Gedanken und Gefühlen entspringt. In ihren Kompositionen wie auch in öffentlichen Vorträgen ermutigt sie ihr Publikum seither beharrlich dazu, die Stille nicht länger als bedrohliche Leerstelle, sondern als eigenständige, bedeutungsvolle Sprache zu begreifen – eine Sprache, die, gerade weil sie keiner Worte oder Töne bedarf, oftmals weitaus unmittelbarer und ehrlicher zu kommunizieren vermag als jede noch so kunstvoll formulierte Rede.$t$,
    $t$À une époque marquée par une cascade quasi ininterrompue de stimuli sonores et visuels, où le silence est de plus en plus perçu comme quelque chose de désagréable, voire de presque menaçant, et donc réflexivement comblé par de la musique de fond, des podcasts ou la lueur incessante d'un écran, il peut sembler déroutant que quelqu'un affirme que c'est justement dans ce silence que se cache l'une des formes de communication humaine les plus riches et pourtant les plus négligées. La musicienne Ines, qui a consacré une grande partie de sa vie à l'étude de l'interaction entre le son et son absence, défend précisément cette thèse, paradoxale à première vue, avec une force de conviction qui parvient à faire réfléchir même les sceptiques les plus endurcis. Selon elle, toute phrase musicale, si riche de sens soit-elle, ne déploie son véritable effet non pas malgré les silences qui l'entourent, mais justement grâce à eux, ces moments apparemment vides pendant lesquels un espace est donné à l'auditeur pour laisser résonner ce qu'il vient d'entendre et le traiter émotionnellement, avant que la note suivante n'interrompe inévitablement ce processus intérieur fragile. Ines se souvient vivement d'un épisode survenu lors d'un concert, plusieurs années auparavant, où elle décida, suivant une inspiration artistique spontanée, d'insérer, au milieu d'un morceau par ailleurs densément composé, une pause inhabituellement longue, durant plusieurs secondes. Le bruissement et les raclements de gorge initiaux, sensiblement gênés, dans le public, que ce silence inhabituel provoqua d'abord, cédèrent la place, après quelques instants d'une longueur torturante, à une concentration collective presque palpable, telle qu'Ines n'en avait jamais vécu auparavant avec cette intensité. En ce moment de silence étiré, raconte-t-elle rétrospectivement, tout l'auditoire sembla, l'espace d'un instant fugace mais d'autant plus saisissant, respirer parfaitement à l'unisson, uni par cette absence même de son que l'on associe communément plutôt au vide qu'au lien. Cette expérience conforta désormais Ines dans sa conviction que la tendance sociétale largement répandue à combler toute forme de silence immédiatement et de manière presque compulsive procède finalement d'une profonde insécurité collective face à ses propres pensées et sentiments non commentés. Dans ses compositions comme dans ses conférences publiques, elle encourage depuis lors inlassablement son public à ne plus concevoir le silence comme un vide menaçant, mais comme un langage autonome et porteur de sens – un langage qui, précisément parce qu'il ne nécessite ni mots ni sons, parvient souvent à communiquer de façon bien plus immédiate et sincère que n'importe quel discours, aussi savamment formulé soit-il.$t$,
    $t${"In":"à","einer":"une","Zeit":"époque","die":"qui","sich":"se","durch":"par","eine":"une","schier":"quasi","unaufhörliche":"ininterrompue","Kaskade":"cascade","akustischer":"sonores","und":"et","visueller":"visuels","Reize":"stimuli","auszeichnet":"se distingue","in":"dans","der":"le","Stille":"silence","zunehmend":"de plus en plus","als":"comme","etwas":"quelque chose","Unangenehmes":"désagréable","ja":"voire","beinahe":"presque","Bedrohliches":"menaçant","empfunden":"perçu","daher":"donc","reflexhaft":"réflexivement","mit":"par","Hintergrundmusik":"musique de fond","Podcasts":"podcasts","oder":"ou","dem":"la","beständigen":"incessante","Aufleuchten":"lueur","eines":"d'un","Bildschirms":"écran","gefüllt":"comblé","wird":"est","erscheint":"semble","es":"il","womöglich":"peut-être","befremdlich":"déroutant","wenn":"que","jemand":"quelqu'un","behauptet":"affirme","gerade":"justement","eben":"précisément","jener":"ce","liege":"se cache","reichhaltigsten":"les plus riches","zugleich":"en même temps","am":"le","meisten":"le plus","vernachlässigten":"négligées","Formen":"formes","menschlicher":"humaine","Kommunikation":"communication","verborgen":"cachée","Die":"la","Musikerin":"musicienne","Ines":"Ines","einen":"une","Großteil":"grande partie","ihres":"de sa","Lebens":"vie","Erforschung":"étude","des":"de l'","Zusammenspiels":"interaction","von":"entre","Klang":"son","dessen":"et son","Abwesenheit":"absence","gewidmet":"consacré","hat":"a","vertritt":"défend","genau":"précisément","diese":"cette","auf":"à","den":"le","ersten":"premier","Blick":"regard","paradox":"paradoxale","anmutende":"semblant","These":"thèse","Überzeugungskraft":"force de conviction","selbst":"même","eingefleischte":"endurcis","Skeptiker":"sceptiques","ins":"à","Nachdenken":"réflexion","zu":"à","bringen":"amener","vermag":"parvient","Ihrer":"selon elle","Auffassung":"avis","nach":"après","entfaltet":"déploie","jede":"toute","noch":"aussi","so":"si","bedeutungsvolle":"riche de sens","musikalische":"musicale","Phrase":"phrase","ihre":"son","eigentliche":"véritable","Wirkung":"effet","nicht":"ne pas","etwa":"pas","trotz":"malgré","sondern":"mais","wegen":"grâce à","sie":"les","umgebenden":"qui entourent","Pausen":"silences","scheinbar":"apparemment","leeren":"vides","Momente":"moments","denen":"pendant lesquels","Zuhörenden":"auditeur","Raum":"espace","gegeben":"donné","das":"ce que","zuvor":"auparavant","Gehörte":"entendu","nachklingen":"résonner","lassen":"laisser","emotional":"émotionnellement","verarbeiten":"traiter","bevor":"avant que","nächste":"suivante","Ton":"note","diesen":"ce","fragilen":"fragile","inneren":"intérieur","Prozess":"processus","unweigerlich":"inévitablement","wieder":"de nouveau","unterbricht":"interrompt","erinnert":"se souvient","lebhaft":"vivement","an":"de","Begebenheit":"épisode","während":"lors de","Konzerts":"concert","vor":"il y a","mehreren":"plusieurs","Jahren":"années","bei":"où","spontanen":"spontanée","künstlerischen":"artistique","Eingebung":"inspiration","folgend":"suivant","dazu":"à cela","entschied":"décida","mitten":"au milieu","einem":"un","ansonsten":"par ailleurs","dicht":"densément","komponierten":"composé","Stück":"morceau","ungewöhnlich":"inhabituellement","lange":"longue","mehrere":"plusieurs","Sekunden":"secondes","andauernde":"durant","Pause":"pause","einzufügen":"insérer","Das":"le","anfängliche":"initial","spürbar":"sensiblement","unbehagliche":"gêné","Rascheln":"bruissement","Räuspern":"raclements de gorge","im":"dans le","Publikum":"public","ungewohnte":"inhabituel","zunächst":"d'abord","hervorrief":"provoqua","wich":"céda la place","wenigen":"quelques","quälend":"torturante","langen":"longs","Augenblicken":"instants","greifbaren":"palpable","kollektiven":"collective","Konzentration":"concentration","wie":"telle que","dieser":"cette","Intensität":"intensité","nie":"jamais","erlebt":"vécu","hatte":"avait","jenem":"ce","gedehnten":"étiré","Moment":"moment","berichtet":"raconte","rückblickend":"rétrospectivement","schien":"sembla","gesamte":"tout","Auditorium":"auditoire","für":"pour","flüchtigen":"fugace","aber":"mais","umso":"d'autant plus","eindrücklicheren":"saisissant","Augenblick":"instant","vollkommen":"parfaitement","synchron":"à l'unisson","atmen":"respirer","geeint":"uni","jene":"cette","man":"on","landläufig":"communément","eher":"plutôt","Leere":"vide","Verbindung":"lien","assoziiert":"associe","Diese":"cette","Erfahrung":"expérience","bestärkte":"conforta","fortan":"désormais","ihrer":"sa","Überzeugung":"conviction","dass":"que","weitverbreitete":"largement répandue","gesellschaftliche":"sociétale","Tendenz":"tendance","Form":"forme","umgehend":"immédiatement","zwanghaft":"de manière compulsive","füllen":"combler","letztlich":"finalement","tiefen":"profonde","Unsicherheit":"insécurité","Umgang":"rapport","eigenen":"propres","unkommentierten":"non commentées","Gedanken":"pensées","Gefühlen":"sentiments","entspringt":"procède","ihren":"ses","Kompositionen":"compositions","auch":"aussi","öffentlichen":"publiques","Vorträgen":"conférences","ermutigt":"encourage","ihr":"son","seither":"depuis lors","beharrlich":"inlassablement","länger":"plus longtemps","bedrohliche":"menaçant","Leerstelle":"vide","eigenständige":"autonome","Sprache":"langage","begreifen":"concevoir","weil":"parce que","keiner":"aucun","Worte":"mots","Töne":"sons","bedarf":"nécessite","oftmals":"souvent","weitaus":"bien plus","unmittelbarer":"immédiate","ehrlicher":"sincère","kommunizieren":"communiquer","kunstvoll":"savamment","formulierte":"formulé","Rede":"discours"}$t$::jsonb
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche These vertritt die Musikerin Ines?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Dass Stille in der Musik unwichtig ist$t$, false, 1),
    (v_q, $t$Dass Stille eine bedeutungsvolle Form der Kommunikation sein kann$t$, true, 2),
    (v_q, $t$Dass man Konzerte ohne Pausen spielen sollte$t$, false, 3),
    (v_q, $t$Dass Musik ohne Stille besser klingt$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche These vertritt die Musikerin Ines?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Dass Stille in der Musik unwichtig ist$t$, false, 1),
    (v_q, $t$Dass Stille eine bedeutungsvolle Form der Kommunikation sein kann$t$, true, 2),
    (v_q, $t$Dass man Konzerte ohne Pausen spielen sollte$t$, false, 3),
    (v_q, $t$Dass Musik ohne Stille besser klingt$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Worin besteht die zentrale These, die Ines' Verständnis musikalischer Wirkung von einer rein klanglichen Betrachtung unterscheidet?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Dass die Kraft einer musikalischen Phrase gerade aus den sie umgebenden Pausen entsteht und nicht trotz ihrer$t$, true, 1),
    (v_q, $t$Dass Stille lediglich eine technische Notwendigkeit zwischen zwei Klangereignissen darstellt$t$, false, 2),
    (v_q, $t$Dass Konzertpausen vor allem dem Publikum eine Erholung vom Zuhören ermöglichen sollen$t$, false, 3),
    (v_q, $t$Dass die Wirkung von Musik unabhängig davon ist, ob Stille eingesetzt wird oder nicht$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was geschah, als Ines während eines Konzerts eine lange Pause einfügte?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Das Publikum verließ den Saal$t$, false, 1),
    (v_q, $t$Es entstand zunächst Unbehagen, dann eine intensive gemeinsame Konzentration$t$, true, 2),
    (v_q, $t$Niemand bemerkte die Pause$t$, false, 3),
    (v_q, $t$Die Musiker brachen das Konzert ab$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was geschah, als Ines während eines Konzerts eine lange Pause einfügte?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Das Publikum verließ den Saal$t$, false, 1),
    (v_q, $t$Es entstand zunächst Unbehagen, dann eine intensive gemeinsame Konzentration$t$, true, 2),
    (v_q, $t$Niemand bemerkte die Pause$t$, false, 3),
    (v_q, $t$Die Musiker brachen das Konzert ab$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie entwickelte sich die Reaktion des Publikums, nachdem Ines mitten im Konzert eine ungewöhnlich lange Pause einfügte?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Von anfänglicher Verunsicherung hin zu einer gesteigerten, gemeinsam geteilten Konzentration bis hin zu synchronem Atmen$t$, true, 1),
    (v_q, $t$Von sofortiger Begeisterung hin zu spürbarer Ermüdung gegen Ende der Pause$t$, false, 2),
    (v_q, $t$Von völliger Gleichgültigkeit hin zu leisem Unmut über die Unterbrechung$t$, false, 3),
    (v_q, $t$Von anfänglicher Konzentration hin zu wachsender Unruhe und vereinzeltem Husten$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Worauf führt Ines die gesellschaftliche Tendenz zurück, Stille ständig zu füllen?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Auf mangelnde musikalische Bildung$t$, false, 1),
    (v_q, $t$Auf eine tiefe Unsicherheit im Umgang mit eigenen Gedanken und Gefühlen$t$, true, 2),
    (v_q, $t$Auf technische Notwendigkeiten$t$, false, 3),
    (v_q, $t$Auf den Lärm der Großstädte$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Worauf führt Ines die gesellschaftliche Tendenz zurück, Stille ständig zu füllen?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Auf mangelnde musikalische Bildung$t$, false, 1),
    (v_q, $t$Auf eine tiefe Unsicherheit im Umgang mit eigenen Gedanken und Gefühlen$t$, true, 2),
    (v_q, $t$Auf technische Notwendigkeiten$t$, false, 3),
    (v_q, $t$Auf den Lärm der Großstädte$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche tiefere Ursache macht Ines für den gesellschaftlichen Zwang aus, Stille reflexhaft zu füllen, statt sie als eigene Sprache zu begreifen?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Ein tiefsitzendes Unbehagen im unvermittelten Umgang mit den eigenen Gedanken und Gefühlen$t$, true, 1),
    (v_q, $t$Eine allgemein unzureichende musikalische Ausbildung breiter Bevölkerungsschichten$t$, false, 2),
    (v_q, $t$Die technischen Zwänge moderner Aufnahme- und Übertragungstechnik$t$, false, 3),
    (v_q, $t$Die permanente akustische Reizüberflutung durch das urbane Umfeld$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$„...die man landläufig eher mit Leere... assoziiert." – 'landläufig' bedeutet:$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$allgemein üblich, gängig$t$, true, 1),
    (v_q, $t$selten, ungewöhnlich$t$, false, 2),
    (v_q, $t$wissenschaftlich exakt$t$, false, 3),
    (v_q, $t$regional begrenzt$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welches Synonym passt am besten zu 'landläufig'?$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$gemeinhin$t$, true, 1),
    (v_q, $t$vereinzelt$t$, false, 2),
    (v_q, $t$fachsprachlich$t$, false, 3),
    (v_q, $t$widerlegt$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Konnotation trägt 'landläufig' im Vergleich zu 'allgemein anerkannt'?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$ein leicht kritischer Unterton, der eine verbreitete, aber möglicherweise vereinfachte oder unreflektierte Ansicht andeutet$t$, true, 1),
    (v_q, $t$eine amtliche, gesetzlich verankerte Gültigkeit$t$, false, 2),
    (v_q, $t$eine ausschließlich positive Wertung$t$, false, 3),
    (v_q, $t$eine rein historische Bedeutung ohne Gegenwartsbezug$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Direkte Aussage: „Diese Tendenz entspringt einer tiefen Unsicherheit." Indirekte Rede (Konjunktiv I): „Sie ist überzeugt, diese Tendenz ___ einer tiefen Unsicherheit."$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$entspringe$t$, true, 1),
    (v_q, $t$entspringt$t$, false, 2),
    (v_q, $t$entsprang$t$, false, 3),
    (v_q, $t$entsprungen sei$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Form ist die korrekte Konjunktiv-I-Form von 'entspringen' (3. Person Singular)?$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$entspringe$t$, true, 1),
    (v_q, $t$entspringt$t$, false, 2),
    (v_q, $t$entspränge$t$, false, 3),
    (v_q, $t$entsprungen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Im Satz „Ines vertritt die These, dass Stille eine der reichhaltigsten Formen der Kommunikation ___" – welche Form ist bei Beibehaltung des dass-Satzes und formeller indirekter Rede korrekt?$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$sei$t$, true, 1),
    (v_q, $t$ist$t$, false, 2),
    (v_q, $t$wäre$t$, false, 3),
    (v_q, $t$würde sein$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$Schreiben Sie einen essayistischen Absatz (8–12 Sätze) über die kommunikative Kraft der Stille oder Pause in einer Kunstform Ihrer Wahl (Musik, Theater, Literatur, Gespräch). Entwickeln Sie eine These und stützen Sie diese mit einem konkreten, ausgestalteten Beispiel.$t$, 1, 'normal', 'production', $t$Es mag paradox erscheinen, doch gerade in jenem Moment, in dem ein Schauspieler mitten in einem Satz verstummt, entfaltet sich häufig die eindringlichste Form der Bühnenkommunikation. Der Regisseur Anton Ferres, der einen Großteil seines Schaffens der Erforschung dramaturgischer Pausen gewidmet hat, vertritt die These, dass das gesprochene Wort seine eigentliche Wirkung erst durch das ihm vorausgehende oder nachfolgende Schweigen gewinnt. Ihm zufolge gibt gerade die Stille dem Publikum den notwendigen Raum, das zuvor Gehörte innerlich zu verarbeiten, bevor der nächste Satz diesen fragilen Prozess unweigerlich unterbricht. Ferres erinnert sich an eine Aufführung, bei der er einen Schauspieler anwies, mitten in einem emotional aufgeladenen Monolog eine ungewöhnlich lange Pause einzulegen, länger, als es das Textbuch vorsah. Das anfängliche, unruhige Räuspern im Publikum wich nach wenigen quälenden Sekunden einer beinahe greifbaren, kollektiven Anspannung, wie er sie in dieser Intensität selten erlebt hatte. In diesem gedehnten Moment schien der gesamte Saal gemeinsam den Atem anzuhalten, geeint durch eine Abwesenheit von Sprache, die man gewöhnlich eher mit Leere als mit Nähe assoziiert. Diese Erfahrung bestärkte Ferres in seiner Überzeugung, dass unsere gesellschaftliche Neigung, jede Gesprächspause umgehend zu füllen, letztlich einer tiefen Unsicherheit im Umgang mit unkommentierten Gefühlen entspringt. Seither ermutigt er junge Schauspieler beharrlich dazu, das Schweigen nicht als Leerstelle, sondern als eigenständige, oft ehrlichere Sprache zu begreifen.$t$);

END $block$;

-- 6. Die unbeantworteten Briefe
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary) VALUES (
    'C2',
    $t$Die unbeantworteten Briefe$t$,
    $t$Es war eine jener Marotten, über die Frau Doktor Ilsabein Vogt selbst zu lächeln pflegte, ehe sie sich ihrer gänzlich hingab: dass sie, seit dem Tod ihres Mannes, allabendlich in den Briefen las, die Goethe an Charlotte von Stein gerichtet hatte, als seien es Nachrichten, die sie selbst noch etwas angingen. Nicht dass sie sich mit der Weimarer Hofdame verwechselt hätte – dazu war ihr Verstand zu geschult, ihre Ironie zu wach –, sondern weil sie in jener unerhörten, nie ganz gestillten Sehnsucht, die aus jeder Zeile sprach, eine Form der Treue erkannte, die ihr selbst, wie sie meinte, versagt geblieben war. Denn ihre eigene Ehe war, bei aller Zärtlichkeit, von einer Verlässlichkeit gewesen, die keinen Raum ließ für das Fieber des Verlangens, für jenes Zittern zwischen Nähe und Entzug, das den Dichter, wie sie es sich ausmalte, erst zur Sprache getrieben hatte. Sie fragte sich, mit jener spöttischen Nachsicht, die sie sich selbst gegenüber kultivierte, ob nicht gerade das Unerfüllte die eigentliche Bedingung der großen Rede sei – ob der Brief, anders als das Gespräch, seine Beredsamkeit erst aus der Distanz beziehe, die er zu überbrücken vorgibt, während er sie in Wahrheit nur verewigt. Und so kam es, dass sie eines Abends, von diesem Gedanken nicht mehr loskommend, selbst zur Feder griff, um an einen Empfänger zu schreiben, den es, genau besehen, nicht mehr gab: an ihren verstorbenen Mann, dem sie all das mitteilte, was sie ihm zu Lebzeiten, aus Scheu vor der eigenen Emphase, verschwiegen hatte. Sie schrieb von Nächten, in denen sie neben ihm gelegen und dennoch, wie ihr jetzt schien, allein gewesen war, von der leisen Enttäuschung darüber, dass das Glück, das sie besaß, niemals jenes andere, gefährlichere Glück gewesen war, nach dem sie sich, ohne es sich einzugestehen, zuweilen gesehnt hatte. Als sie den Brief beendet hatte, verspürte sie nicht Erleichterung, sondern eine Art nüchterner Heiterkeit, die sie selbst überraschte: Sie erkannte, dass sie soeben, mit vierundsechzig Jahren, ihren ersten wirklichen Liebesbrief geschrieben hatte – an einen Toten, der ihn nicht lesen konnte, in einer Sprache, die sie einem längst verblichenen Dichter entlehnt hatte, um endlich das auszusprechen, wozu die eigene Ehe, bei aller Güte, ihr niemals die Gelegenheit gegeben hatte. Sie legte den Brief zu den Bänden Goethes, faltete ihn nicht einmal, und dachte, nicht ohne Ironie, dass die Sehnsucht wohl erst dann ihre volle Süße entfalte, wenn sie sich, wie die Tinte auf der Seite, jeder Erwiderung endgültig entzogen habe.$t$,
    $t$C'était une de ces manies dont Madame le docteur Ilsabein Vogt aimait elle-même sourire, avant de s'y abandonner tout entière : depuis la mort de son mari, elle lisait chaque soir les lettres que Goethe avait adressées à Charlotte von Stein, comme s'il s'agissait de messages qui la concernaient encore, elle. Non qu'elle se fût confondue avec la dame de la cour de Weimar – son esprit était trop cultivé pour cela, son ironie trop vive –, mais parce qu'elle reconnaissait, dans ce désir inouï, jamais tout à fait apaisé, qui transparaissait à chaque ligne, une forme de fidélité qui lui avait elle-même, pensait-elle, toujours fait défaut. Car son propre mariage avait été, malgré toute la tendresse, d'une fiabilité qui ne laissait aucune place à la fièvre du désir, à ce tremblement entre proximité et privation qui, comme elle se l'imaginait, avait justement poussé le poète à s'exprimer. Elle se demandait, avec cette indulgence moqueuse qu'elle cultivait envers elle-même, si ce n'était pas précisément l'inaccompli qui constituait la véritable condition du grand discours – si la lettre, à la différence de la conversation, ne tirait pas son éloquence de la distance même qu'elle prétend franchir, alors qu'en réalité elle ne fait que la perpétuer. Et c'est ainsi qu'un soir, ne parvenant plus à se détacher de cette pensée, elle saisit elle-même la plume pour écrire à un destinataire qui, à y regarder de plus près, n'existait plus : à son défunt mari, à qui elle confia tout ce qu'elle lui avait, de son vivant, tu par pudeur de sa propre emphase. Elle écrivit ces nuits où elle avait été couchée à côté de lui et pourtant, comme il lui semblait maintenant, seule, cette légère déception à l'idée que le bonheur qu'elle possédait n'avait jamais été cet autre bonheur, plus dangereux, après lequel elle avait, sans se l'avouer, parfois soupiré. Lorsqu'elle eut achevé la lettre, elle ne ressentit pas de soulagement, mais une sorte de gaieté sobre qui la surprit elle-même : elle comprit qu'elle venait, à soixante-quatre ans, d'écrire sa première véritable lettre d'amour – à un mort qui ne pouvait la lire, dans une langue qu'elle avait empruntée à un poète depuis longtemps disparu, pour enfin exprimer ce à quoi son propre mariage, malgré toute sa bonté, ne lui avait jamais donné l'occasion. Elle rangea la lettre auprès des volumes de Goethe, ne la plia même pas, et pensa, non sans ironie, que le désir ne déploie sans doute toute sa douceur que lorsqu'il se soustrait définitivement, comme l'encre sur la page, à toute réponse.$t$,
    $t${"Es":"ce","war":"était","eine":"une","jener":"de ces","Marotten":"manies","über":"dont","die":"que","Frau":"madame","Doktor":"docteur","Ilsabein":"Ilsabein","Vogt":"Vogt","selbst":"elle-même","zu":"de","lächeln":"sourire","pflegte":"avait l'habitude","ehe":"avant que","sie":"elle","sich":"se","ihrer":"s'y","gänzlich":"tout entière","hingab":"abandonnait","dass":"que","seit":"depuis","dem":"la","Tod":"mort","ihres":"de son","Mannes":"mari","allabendlich":"chaque soir","in":"dans","den":"qui","Briefen":"lettres","las":"lisait","Goethe":"Goethe","an":"à","Charlotte":"Charlotte","von":"de","Stein":"Stein","gerichtet":"adressées","hatte":"avait","als":"comme","seien":"fussent","es":"il","Nachrichten":"messages","noch":"encore","etwas":"quelque chose","angingen":"concernaient","Nicht":"non","mit":"avec","der":"la","Weimarer":"de Weimar","Hofdame":"dame de cour","verwechselt":"confondue","hätte":"eût","dazu":"pour cela","ihr":"son","Verstand":"esprit","geschult":"cultivé","ihre":"son","Ironie":"ironie","wach":"vive","sondern":"mais","weil":"parce que","unerhörten":"inouï","nie":"jamais","ganz":"tout à fait","gestillten":"apaisé","Sehnsucht":"désir","aus":"à","jeder":"chaque","Zeile":"ligne","sprach":"transparaissait","Form":"forme","Treue":"fidélité","erkannte":"reconnaissait","wie":"comme","meinte":"pensait","versagt":"fait défaut","geblieben":"resté","Denn":"car","eigene":"propre","Ehe":"mariage","bei":"malgré","aller":"toute","Zärtlichkeit":"tendresse","einer":"une","Verlässlichkeit":"fiabilité","gewesen":"été","keinen":"aucun","Raum":"place","ließ":"laissait","für":"à","das":"la","Fieber":"fièvre","des":"du","Verlangens":"désir","jenes":"ce","Zittern":"tremblement","zwischen":"entre","Nähe":"proximité","und":"et","Entzug":"privation","Dichter":"poète","ausmalte":"imaginait","erst":"justement","zur":"à","Sprache":"parole","getrieben":"poussé","Sie":"elle","fragte":"demandait","spöttischen":"moqueuse","Nachsicht":"indulgence","gegenüber":"envers","kultivierte":"cultivait","ob":"si","nicht":"pas","gerade":"précisément","Unerfüllte":"inaccompli","eigentliche":"véritable","Bedingung":"condition","großen":"grand","Rede":"discours","sei":"soit","Brief":"lettre","anders":"autrement","Gespräch":"conversation","seine":"son","Beredsamkeit":"éloquence","Distanz":"distance","beziehe":"tire","er":"elle","überbrücken":"franchir","vorgibt":"prétend","während":"alors que","Wahrheit":"réalité","nur":"seulement","verewigt":"perpétue","Und":"et","so":"ainsi","kam":"vint","eines":"un","Abends":"soir","diesem":"cette","Gedanken":"pensée","mehr":"plus","loskommend":"se détachant","Feder":"plume","griff":"saisit","um":"pour","einen":"un","Empfänger":"destinataire","schreiben":"écrire","genau":"exactement","besehen":"à y regarder","gab":"existait","ihren":"son","verstorbenen":"défunt","Mann":"mari","all":"tout","mitteilte":"confia","was":"ce que","ihm":"lui","Lebzeiten":"vivant","Scheu":"pudeur","vor":"de","eigenen":"propre","Emphase":"emphase","verschwiegen":"tu","schrieb":"écrivit","Nächten":"nuits","denen":"où","neben":"à côté de","gelegen":"couchée","dennoch":"pourtant","jetzt":"maintenant","schien":"semblait","allein":"seule","leisen":"légère","Enttäuschung":"déception","darüber":"à l'idée que","Glück":"bonheur","besaß":"possédait","niemals":"jamais","andere":"autre","gefährlichere":"plus dangereux","nach":"après","ohne":"sans","einzugestehen":"se l'avouer","zuweilen":"parfois","gesehnt":"soupiré","Als":"lorsque","beendet":"achevé","verspürte":"ressentit","Erleichterung":"soulagement","Art":"sorte","nüchterner":"sobre","Heiterkeit":"gaieté","überraschte":"surprit","soeben":"venait de","vierundsechzig":"soixante-quatre","Jahren":"ans","ersten":"première","wirklichen":"véritable","Liebesbrief":"lettre d'amour","geschrieben":"écrit","Toten":"mort","ihn":"le","lesen":"lire","konnte":"pouvait","einem":"un","längst":"depuis longtemps","verblichenen":"disparu","entlehnt":"emprunté","endlich":"enfin","auszusprechen":"exprimer","wozu":"à quoi","Güte":"bonté","Gelegenheit":"occasion","gegeben":"donné","legte":"rangea","Bänden":"volumes","Goethes":"de Goethe","faltete":"plia","einmal":"même","dachte":"pensa","wohl":"sans doute","dann":"alors","volle":"toute","Süße":"douceur","entfalte":"déploie","wenn":"lorsque","Tinte":"encre","auf":"sur","Seite":"page","Erwiderung":"réponse","endgültig":"définitivement","entzogen":"soustraite","habe":"ait"}$t$::jsonb
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was liest Frau Doktor Vogt jeden Abend?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Zeitungsartikel über Weimar$t$, false, 1),
    (v_q, $t$Briefe Goethes an Charlotte von Stein$t$, true, 2),
    (v_q, $t$Ihre eigenen Jugendtagebücher$t$, false, 3),
    (v_q, $t$Romane über unglückliche Ehen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum liest Frau Vogt gerade diese Briefe mit solcher Beharrlichkeit?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Weil sie eine Biografie über Goethe schreiben will$t$, false, 1),
    (v_q, $t$Weil sie in der darin ausgedrückten Sehnsucht eine ihr selbst fehlende Form der Treue erkennt$t$, true, 2),
    (v_q, $t$Weil ihr Mann sie ihr vor seinem Tod vermacht hat$t$, false, 3),
    (v_q, $t$Weil sie Charlotte von Stein für eine Vorfahrin hält$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Deutung von Frau Vogts nächtlicher Lektüre trifft die im Text angelegte Ironie am genauesten?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie bedauert, nie verheiratet gewesen zu sein$t$, false, 1),
    (v_q, $t$Sie hält Goethes Briefe für literarisch überschätzt$t$, false, 2),
    (v_q, $t$Sie sucht in fremder, unerfüllter Sehnsucht das Pathos, das ihre eigene verlässliche, aber emphaselose Ehe ihr nie erlaubte auszudrücken$t$, true, 3),
    (v_q, $t$Sie möchte durch die Lektüre ihre Trauer um den Mann überwinden$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$An wen schreibt Frau Vogt schließlich einen Brief?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$An Charlotte von Stein$t$, false, 1),
    (v_q, $t$An ihren verstorbenen Mann$t$, true, 2),
    (v_q, $t$An ihre Tochter$t$, false, 3),
    (v_q, $t$An einen unbekannten Leser$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was drückt sie in diesem Brief aus, das sie zu Lebzeiten ihres Mannes verschwiegen hatte?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Ihre finanziellen Sorgen$t$, false, 1),
    (v_q, $t$Eine leise Enttäuschung darüber, nie jenes gefährlichere, ersehnte Glück erlebt zu haben$t$, true, 2),
    (v_q, $t$Ihren Wunsch, ins Ausland zu ziehen$t$, false, 3),
    (v_q, $t$Ihre Kritik an seiner Berufswahl$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was legt der Text nahe, wenn er den Brief als 'ihren ersten wirklichen Liebesbrief' bezeichnet?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Dass sie ihren Mann erst nach seinem Tod wirklich geliebt hat$t$, false, 1),
    (v_q, $t$Dass echte Emphase bei ihr erst durch die Aneignung fremder, literarisch vorgeprägter Sprache und die Unerreichbarkeit des Adressaten möglich wurde$t$, true, 2),
    (v_q, $t$Dass sie zuvor nie die Zeit gefunden hatte, Briefe zu schreiben$t$, false, 3),
    (v_q, $t$Dass ihr Mann selbst nie Liebesbriefe an sie geschrieben hatte$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was empfindet Frau Vogt, nachdem sie den Brief beendet hat?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Tiefe Trauer$t$, false, 1),
    (v_q, $t$Eine Art nüchterner Heiterkeit$t$, true, 2),
    (v_q, $t$Wütende Enttäuschung$t$, false, 3),
    (v_q, $t$Völlige Gleichgültigkeit$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie behandelt sie den fertigen Brief am Ende der Erzählung?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie verbrennt ihn$t$, false, 1),
    (v_q, $t$Sie schickt ihn per Post an eine Adresse$t$, false, 2),
    (v_q, $t$Sie legt ihn ungefaltet zu den Goethe-Bänden$t$, true, 3),
    (v_q, $t$Sie zerreißt ihn wütend$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Worin besteht die abschließende Pointe, mit der der Text die Idee der Sehnsucht kommentiert?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Dass Sehnsucht nur in der Jugend möglich sei$t$, false, 1),
    (v_q, $t$Dass wahre Sehnsucht sich der Erwiderung entziehen muss, um ihre volle Süße zu entfalten, wie Tinte, die keine Antwort mehr erhält$t$, true, 2),
    (v_q, $t$Dass Sehnsucht stets literarisch inszeniert und damit unecht sei$t$, false, 3),
    (v_q, $t$Dass Frau Vogt ihre Sehnsucht endgültig überwunden hat$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$„...ob der Brief... seine Beredsamkeit erst aus der Distanz beziehe..." – 'Beredsamkeit' bedeutet:$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Redegewandtheit, Ausdruckskraft$t$, true, 1),
    (v_q, $t$Schweigsamkeit$t$, false, 2),
    (v_q, $t$Unentschlossenheit$t$, false, 3),
    (v_q, $t$Genauigkeit$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welches Wort ist ein treffendes Synonym für 'Beredsamkeit'?$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Eloquenz$t$, true, 1),
    (v_q, $t$Zurückhaltung$t$, false, 2),
    (v_q, $t$Nüchternheit$t$, false, 3),
    (v_q, $t$Verlegenheit$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Bedeutungsnuance unterscheidet 'Beredsamkeit' von schlichter 'Sprachfähigkeit'?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Beredsamkeit bezeichnet eine kunstvolle, oft emotional bewegende und überzeugende Ausdruckskraft, nicht bloß die Fähigkeit zu sprechen$t$, true, 1),
    (v_q, $t$Beredsamkeit bedeutet ausschließlich schriftliche Kommunikation$t$, false, 2),
    (v_q, $t$Beredsamkeit ist ein Synonym für Wortkargheit$t$, false, 3),
    (v_q, $t$Beredsamkeit bezieht sich nur auf juristische Reden$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$„Sie fragte sich, ob nicht gerade das Unerfüllte die eigentliche Bedingung der großen Rede ___." (Konjunktiv I, indirekte Frage)$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$sei$t$, true, 1),
    (v_q, $t$ist$t$, false, 2),
    (v_q, $t$war$t$, false, 3),
    (v_q, $t$wäre gewesen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Form vervollständigt die indirekte Frage korrekt: „Sie fragte sich, ob der Brief seine Beredsamkeit erst aus der Distanz ___, die er zu überbrücken vorgebe."$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$beziehe$t$, true, 1),
    (v_q, $t$bezieht$t$, false, 2),
    (v_q, $t$bezog$t$, false, 3),
    (v_q, $t$würde beziehen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Im Satz „...während er sie in Wahrheit nur verewige" wird Konjunktiv I verwendet, weil der Nebensatz Teil einer indirekt wiedergegebenen Überlegung ist. Welche Aussage zur Regel ist korrekt?$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Konjunktiv I markiert in gehobener indirekter Rede, dass eine Aussage als fremde Gedankenwiedergabe und nicht als Tatsachenbehauptung des Erzählers präsentiert wird$t$, true, 1),
    (v_q, $t$Konjunktiv I wird nur in Märchen verwendet$t$, false, 2),
    (v_q, $t$Konjunktiv I ersetzt in diesem Fall den Imperativ$t$, false, 3),
    (v_q, $t$Konjunktiv I zeigt an, dass die Handlung in der Zukunft abgeschlossen sein wird$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$Schreiben Sie einen Absatz (8–12 Sätze) über einen Brief, der an einen Verstorbenen oder eine unerreichbare Person gerichtet ist und Dinge ausspricht, die zu Lebzeiten ungesagt blieben. Reflektieren Sie über das Verhältnis von Distanz, Sehnsucht und Sprache.$t$, 1, 'normal', 'production', $t$Es war eine Marotte, über die Herr Professor Anselm Brack selbst zu schmunzeln pflegte, ehe er sich ihr abermals hingab: dass er, seit dem Tod seiner Schwester, allabendlich in ihren alten Tagebüchern blätterte, als könnten deren Zeilen ihm noch etwas mitzuteilen haben. Nicht dass er glaubte, mit ihr im Gespräch zu stehen, dazu war sein Verstand zu nüchtern geschult, sondern weil er in jener unerfüllten Sehnsucht nach dem eigenen künstlerischen Leben, die aus jeder Seite sprach, eine Form der Wahrhaftigkeit erkannte, die ihm selbst versagt geblieben war. Seine eigene Laufbahn als Verwaltungsbeamter war, bei aller Solidität, von einer Vorhersehbarkeit gewesen, die keinen Raum für das Fieber unerfüllter Wünsche ließ, für jenes Zittern zwischen Sehnsucht und Verzicht, das seine Schwester, wie er sich vorstellte, erst zur Malerei getrieben hatte. Er fragte sich, mit jener milden Ironie, die er sich selbst gegenüber pflegte, ob nicht gerade das Unvollendete die eigentliche Bedingung großer Kunst sei. Und so kam es, dass er eines Abends, von diesem Gedanken nicht mehr loskommend, selbst zur Feder griff, um an seine verstorbene Schwester zu schreiben, der er all das mitteilte, was er ihr zu Lebzeiten aus Scheu verschwiegen hatte: seine stille Bewunderung, seinen nie eingestandenen Neid, sein Bedauern über die verpassten gemeinsamen Jahre. Als er den Brief beendet hatte, verspürte er keine Erleichterung, sondern eine nüchterne Heiterkeit, die ihn selbst überraschte, und er legte ihn ungefaltet zu ihren Tagebüchern, in der stillen Gewissheit, dass manche Wahrheiten erst dann ihre volle Kraft entfalten, wenn sie sich jeder Erwiderung endgültig entziehen.$t$);

END $block$;

-- 7. Das Antiquariat der verlorenen Stimmen
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary) VALUES (
    'C2',
    $t$Das Antiquariat der verlorenen Stimmen$t$,
    $t$Herr Ambrosius Kell, seit siebenunddreißig Jahren Inhaber jenes schmalen Antiquariats in der Nähe des alten Rathauses, das sich, wie er selbst mit einer Mischung aus Stolz und Wehmut zu sagen pflegte, auf 'das Ungewöhnliche und das Vergessene' spezialisiert habe, besaß unter seinen Schätzen eine frühe Ausgabe der Kinder- und Hausmärchen, deren brüchiger Einband ihm, sooft er ihn berührte, die eigentümliche Empfindung vermittelte, nicht ein Buch, sondern ein Gefäß in Händen zu halten – ein Gefäß, das einst randvoll gewesen war mit Stimmen, die es, seiner Meinung nach, nur unvollkommen zu fassen vermochte. Denn was ihn an den Brüdern Grimm eigentlich beschäftigte, war weniger ihr gelehrter Fleiß als die stille Tragödie, die er hinter ihrem Unternehmen vermutete: dass sie, indem sie die mündlich überlieferten Erzählungen aufzeichneten, diese zugleich, wie Insekten im Bernstein, für alle Zukunft erstarren ließen, während doch das Wesen der mündlichen Rede gerade in ihrer Wandelbarkeit bestanden hatte, in der Freiheit jeder Erzählerin, jedes Erzählers, die Geschichte den Zuhörern, dem Abend, der eigenen Laune anzupassen. Er beobachtete, mit jener skeptischen Aufmerksamkeit, die ihm seine Kunden zuweilen als Misanthropie auslegten, wie seine jüngeren Besucher die alten Bände weniger lasen als vielmehr fotografierten, um sie, kaum dass sie das Geschäft verlassen hatten, in digitalen Archiven verschwinden zu lassen, wo sie fortan unberührt, unverändert und, wie ihm schien, endgültig verstummt verharren würden. Und doch ertappte er sich, wenn ein Kind – seltener geworden, aber nicht ausgestorben – mit seiner Mutter den Laden betrat und, während diese in den Regalen stöberte, ihm eine Geschichte abverlangte, dabei, spontan und ohne Rücksicht auf die gedruckte Fassung, Motive zu vertauschen, Enden zu erfinden, dem Text jene Beweglichkeit zurückzugeben, die er den Brüdern Grimm insgeheim zum Vorwurf machte, ihnen genommen zu haben. In solchen Augenblicken, so gestand er sich später ein, während er die Ladentür abschloss und das Licht der Straßenlaternen auf die vergilbten Buchrücken fiel, empfand er etwas, das er nicht anders denn als Trost bezeichnen konnte: die Gewissheit nämlich, dass die eigentliche Überlieferung sich niemals gänzlich in Buchstaben bannen lässt, dass sie, gleich einem unterirdischen Fluss, unter der erstarrten Oberfläche der gedruckten Seite weiterfließt und, wann immer sich ein williges Ohr findet, unverhofft wieder ans Licht bricht – ein Gedanke, der ihn milder stimmte gegenüber seinem eigenen Gewerbe, dessen Sinn doch gerade darin bestand, das Flüchtige festzuhalten, auf dass es, paradox genug, eines Tages wieder flüchtig werden könne.$t$,
    $t$Monsieur Ambrosius Kell, propriétaire depuis trente-sept ans de cette étroite librairie d'occasion près du vieil hôtel de ville, spécialisée, comme il aimait lui-même le dire avec un mélange de fierté et de nostalgie, dans « l'insolite et l'oublié », possédait parmi ses trésors une édition ancienne des Contes de l'enfance et du foyer, dont la reliure fragile lui donnait, chaque fois qu'il la touchait, l'étrange sensation de tenir en main non pas un livre, mais un récipient – un récipient qui avait autrefois été rempli à ras bord de voix qu'il ne parvenait, selon lui, qu'imparfaitement à contenir. Car ce qui l'occupait véritablement au sujet des frères Grimm, c'était moins leur érudition laborieuse que la tragédie silencieuse qu'il soupçonnait derrière leur entreprise : en consignant par écrit les récits transmis oralement, ils les avaient du même coup, comme des insectes dans l'ambre, figés pour toujours, alors même que l'essence de la parole orale résidait précisément dans sa mutabilité, dans la liberté de chaque conteuse, de chaque conteur, d'adapter l'histoire à ses auditeurs, à la soirée, à sa propre humeur. Il observait, avec cette attention sceptique que ses clients qualifiaient parfois de misanthropie, comment ses jeunes visiteurs lisaient moins les vieux volumes qu'ils ne les photographiaient, pour les laisser, à peine sortis de la boutique, disparaître dans des archives numériques, où ils demeureraient désormais intacts, inchangés et, lui semblait-il, définitivement réduits au silence. Et pourtant, il se surprenait, quand un enfant – devenu plus rare, mais pas éteint pour autant – entrait dans la boutique avec sa mère et, tandis que celle-ci fouillait dans les rayons, lui réclamait une histoire, à intervertir spontanément et sans égard pour la version imprimée des motifs, à inventer des fins, à redonner au texte cette mobilité dont il reprochait secrètement aux frères Grimm de l'avoir dépouillé. C'est dans de tels instants, avoua-t-il plus tard, tandis qu'il fermait la porte de la boutique et que la lumière des réverbères tombait sur les dos de livres jaunis, qu'il éprouvait quelque chose qu'il ne pouvait qualifier autrement que de consolation : la certitude, à savoir, que la transmission véritable ne se laisse jamais entièrement enfermer dans les lettres, qu'elle continue de couler, telle une rivière souterraine, sous la surface figée de la page imprimée et, chaque fois qu'une oreille disposée se présente, resurgit à la lumière de manière inattendue – une pensée qui l'adoucissait envers son propre métier, dont le sens résidait pourtant précisément à retenir l'éphémère, pour que celui-ci, chose paradoxale, puisse un jour redevenir éphémère.$t$,
    $t${"Herr":"monsieur","Ambrosius":"Ambrosius","Kell":"Kell","seit":"depuis","siebenunddreißig":"trente-sept","Jahren":"ans","Inhaber":"propriétaire","jenes":"cette","schmalen":"étroite","Antiquariats":"librairie d'occasion","in":"près","der":"qui","Nähe":"proximité","des":"de l'","alten":"vieil","Rathauses":"hôtel de ville","das":"qui","sich":"se","wie":"comme","er":"il","selbst":"lui-même","mit":"avec","einer":"un","Mischung":"mélange","aus":"de","Stolz":"fierté","und":"et","Wehmut":"nostalgie","zu":"à","sagen":"dire","pflegte":"avait l'habitude","auf":"dans","'das":"l'","Ungewöhnliche":"insolite","Vergessene'":"oublié","spezialisiert":"spécialisée","habe":"être","besaß":"possédait","unter":"parmi","seinen":"ses","Schätzen":"trésors","eine":"une","frühe":"ancienne","Ausgabe":"édition","Kinder":"enfance","Hausmärchen":"contes du foyer","deren":"dont","brüchiger":"fragile","Einband":"reliure","ihm":"lui","sooft":"chaque fois que","ihn":"la","berührte":"touchait","die":"la","eigentümliche":"étrange","Empfindung":"sensation","vermittelte":"donnait","nicht":"pas","ein":"un","Buch":"livre","sondern":"mais","Gefäß":"récipient","Händen":"mains","halten":"tenir","einst":"autrefois","randvoll":"rempli à ras bord","gewesen":"été","war":"était","Stimmen":"voix","es":"il","seiner":"son","Meinung":"avis","nach":"selon","nur":"seulement","unvollkommen":"imparfaitement","fassen":"contenir","vermochte":"parvenait","Denn":"car","was":"ce qui","an":"au sujet de","den":"les","Brüdern":"frères","Grimm":"Grimm","eigentlich":"véritablement","beschäftigte":"occupait","weniger":"moins","ihr":"leur","gelehrter":"érudit","Fleiß":"labeur","als":"que","stille":"silencieuse","Tragödie":"tragédie","hinter":"derrière","ihrem":"leur","Unternehmen":"entreprise","vermutete":"soupçonnait","dass":"que","sie":"ils","indem":"en","mündlich":"oralement","überlieferten":"transmis","Erzählungen":"récits","aufzeichneten":"consignaient","diese":"ceux-ci","zugleich":"du même coup","Insekten":"insectes","im":"dans l'","Bernstein":"ambre","für":"pour","alle":"toujours","Zukunft":"avenir","erstarren":"figer","ließen":"laissaient","während":"alors que","doch":"pourtant","Wesen":"essence","mündlichen":"orale","Rede":"parole","gerade":"précisément","ihrer":"sa","Wandelbarkeit":"mutabilité","bestanden":"résidait","hatte":"avait","Freiheit":"liberté","jeder":"chaque","Erzählerin":"conteuse","jedes":"chaque","Erzählers":"conteur","Geschichte":"histoire","Zuhörern":"auditeurs","dem":"à la","Abend":"soirée","eigenen":"propre","Laune":"humeur","anzupassen":"adapter","Er":"il","beobachtete":"observait","jener":"cette","skeptischen":"sceptique","Aufmerksamkeit":"attention","seine":"ses","Kunden":"clients","zuweilen":"parfois","Misanthropie":"misanthropie","auslegten":"qualifiaient","jüngeren":"jeunes","Besucher":"visiteurs","Bände":"volumes","lasen":"lisaient","vielmehr":"plutôt","fotografierten":"photographiaient","um":"pour","kaum":"à peine","Geschäft":"boutique","verlassen":"quitté","hatten":"avaient","digitalen":"numériques","Archiven":"archives","verschwinden":"disparaître","lassen":"laisser","wo":"où","fortan":"désormais","unberührt":"intacts","unverändert":"inchangés","schien":"semblait","endgültig":"définitivement","verstummt":"réduits au silence","verharren":"rester","würden":"resteraient","Und":"et","ertappte":"surprenait","wenn":"quand","Kind":"enfant","seltener":"plus rare","geworden":"devenu","aber":"mais","ausgestorben":"éteint","Mutter":"mère","Laden":"boutique","betrat":"entrait","Regalen":"rayons","stöberte":"fouillait","abverlangte":"réclamait","dabei":"ce faisant","spontan":"spontanément","ohne":"sans","Rücksicht":"égard","gedruckte":"imprimée","Fassung":"version","Motive":"motifs","vertauschen":"intervertir","Enden":"fins","erfinden":"inventer","Text":"texte","jene":"cette","Beweglichkeit":"mobilité","zurückzugeben":"redonner","insgeheim":"secrètement","zum":"en","Vorwurf":"reproche","machte":"faisait","ihnen":"leur","genommen":"pris","haben":"avoir","In":"dans","solchen":"de tels","Augenblicken":"instants","so":"ainsi","gestand":"avoua","später":"plus tard","Ladentür":"porte de la boutique","abschloss":"fermait","Licht":"lumière","Straßenlaternen":"réverbères","vergilbten":"jaunis","Buchrücken":"dos de livres","fiel":"tombait","empfand":"éprouvait","etwas":"quelque chose","anders":"autrement","denn":"que","Trost":"consolation","bezeichnen":"qualifier","konnte":"pouvait","Gewissheit":"certitude","nämlich":"à savoir","eigentliche":"véritable","Überlieferung":"transmission","niemals":"jamais","gänzlich":"entièrement","Buchstaben":"lettres","bannen":"enfermer","lässt":"laisse","gleich":"tel","einem":"une","unterirdischen":"souterraine","Fluss":"rivière","erstarrten":"figée","Oberfläche":"surface","gedruckten":"imprimée","Seite":"page","weiterfließt":"continue de couler","wann":"quand","immer":"toujours","williges":"disposée","Ohr":"oreille","findet":"se présente","unverhofft":"de manière inattendue","wieder":"de nouveau","ans":"à la","bricht":"resurgit","Gedanke":"pensée","milder":"plus doux","stimmte":"rendait","gegenüber":"envers","seinem":"son","Gewerbe":"métier","dessen":"dont","Sinn":"sens","darin":"en cela","bestand":"résidait","Flüchtige":"l'éphémère","festzuhalten":"retenir","paradox":"paradoxal","genug":"assez","eines":"un","Tages":"jour","flüchtig":"éphémère","werden":"devenir","könne":"puisse"}$t$::jsonb
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was verkauft Herr Kell in seinem Antiquariat?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Moderne Romane$t$, false, 1),
    (v_q, $t$Alte und seltene Bücher$t$, true, 2),
    (v_q, $t$Musikinstrumente$t$, false, 3),
    (v_q, $t$Landkarten$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welches Gefühl verbindet Herr Kell mit der frühen Ausgabe der Kinder- und Hausmärchen?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Reine Freude über ihren Marktwert$t$, false, 1),
    (v_q, $t$Die Empfindung, ein Gefäß zu halten, das einst voller lebendiger Stimmen war, nun aber erstarrt ist$t$, true, 2),
    (v_q, $t$Gleichgültigkeit, da er Märchen nicht mag$t$, false, 3),
    (v_q, $t$Ärger über den schlechten Erhaltungszustand$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Worin besteht die von Herrn Kell vermutete 'stille Tragödie' des Grimmschen Unternehmens?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Dass die Brüder Grimm zu wenig Märchen gesammelt haben$t$, false, 1),
    (v_q, $t$Dass die schriftliche Fixierung die mündliche Erzählung, deren Wesen in ihrer Wandelbarkeit lag, unwiderruflich erstarren ließ$t$, true, 2),
    (v_q, $t$Dass ihre Märchen zu grausam für Kinder seien$t$, false, 3),
    (v_q, $t$Dass die Brüder Grimm ihre Quellen nicht angemessen bezahlt haben$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was tun jüngere Besucher oft mit den alten Büchern?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie kaufen sie sofort$t$, false, 1),
    (v_q, $t$Sie fotografieren sie und digitalisieren sie$t$, true, 2),
    (v_q, $t$Sie lesen sie laut vor$t$, false, 3),
    (v_q, $t$Sie reparieren die Einbände$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie reagiert Herr Kell auf dieses digitale Festhalten der Bücher?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Mit Begeisterung, weil es die Bücher rettet$t$, false, 1),
    (v_q, $t$Mit Skepsis, weil er darin ein endgültiges Verstummen der Texte sieht$t$, true, 2),
    (v_q, $t$Mit völliger Gleichgültigkeit$t$, false, 3),
    (v_q, $t$Mit dem Wunsch, selbst zu digitalisieren$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche implizite Ironie liegt darin, dass Herr Kell das digitale Fotografieren kritisiert, während sein eigenes Gewerbe im Bewahren alter Drucke besteht?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Es gibt keine solche Ironie, beide Praktiken sind für ihn identisch$t$, false, 1),
    (v_q, $t$Er selbst konserviert ebenfalls Erstarrtes, hofft aber, dass daraus wieder Lebendiges, mündlich Weitergegebenes entstehen kann, während die Digitalisierung ihm endgültig erscheint$t$, true, 2),
    (v_q, $t$Er lehnt jede Form der Aufbewahrung grundsätzlich ab$t$, false, 3),
    (v_q, $t$Er glaubt, dass gedruckte Bücher wertvoller seien als handschriftliche$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was macht ein Kind, das mit seiner Mutter den Laden besucht?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Es schläft ein$t$, false, 1),
    (v_q, $t$Es erzählt eine Geschichte mit eigenen, veränderten Motiven$t$, true, 2),
    (v_q, $t$Es liest die gedruckte Fassung wortgetreu vor$t$, false, 3),
    (v_q, $t$Es verlangt, das Buch zu kaufen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welchen Trost zieht Herr Kell aus dem freien Erzählen des Kindes?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Dass Kinder heute schlechter lesen als früher$t$, false, 1),
    (v_q, $t$Dass die mündliche Überlieferung trotz der Fixierung in Büchern weiterlebt und sich unverhofft wieder zeigt$t$, true, 2),
    (v_q, $t$Dass er das Kind als künftigen Kunden gewinnen wird$t$, false, 3),
    (v_q, $t$Dass die gedruckte Fassung ohnehin bedeutungslos ist$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie lässt sich die Schlussparadoxie deuten, wonach der Sinn seines Gewerbes darin bestehe, 'das Flüchtige festzuhalten, auf dass es eines Tages wieder flüchtig werden könne'?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Herr Kell hält seinen Beruf letztlich für sinnlos$t$, false, 1),
    (v_q, $t$Die Bewahrung im Buch ist für ihn kein Widerspruch zur mündlichen Lebendigkeit, sondern deren notwendige, wenn auch paradoxe Voraussetzung, damit sie wieder freigesetzt werden kann$t$, true, 2),
    (v_q, $t$Er plant, alle Bücher zu verbrennen, um die Mündlichkeit zu befreien$t$, false, 3),
    (v_q, $t$Er meint, dass gedruckte Bücher grundsätzlich wertloser seien als gesprochene Worte$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$„...die ihm seine Kunden zuweilen als Misanthropie auslegten..." – 'Misanthropie' bedeutet:$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Menschenfeindlichkeit, Abneigung gegen Menschen$t$, true, 1),
    (v_q, $t$übertriebene Freundlichkeit$t$, false, 2),
    (v_q, $t$Sammelleidenschaft$t$, false, 3),
    (v_q, $t$Vergesslichkeit$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welches Wort ist bedeutungsverwandt mit 'Misanthropie'?$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Menschenscheu$t$, true, 1),
    (v_q, $t$Philanthropie$t$, false, 2),
    (v_q, $t$Naivität$t$, false, 3),
    (v_q, $t$Großzügigkeit$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum ist die Zuschreibung 'Misanthropie' im Text als möglicherweise ungerechtfertigt markiert ('die ihm... zuweilen als Misanthropie auslegten')?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$weil seine skeptische Haltung eher aus Sorge um den Fortbestand mündlicher Erzähltradition als aus echter Menschenverachtung entspringt$t$, true, 1),
    (v_q, $t$weil er tatsächlich alle Kunden aus dem Laden verbannt$t$, false, 2),
    (v_q, $t$weil das Wort im Text falsch verwendet wird$t$, false, 3),
    (v_q, $t$weil er selbst offen zugibt, ein Misanthrop zu sein$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$„...auf dass es, paradox genug, eines Tages wieder flüchtig werden ___." (Konjunktiv I nach 'auf dass', Finalsatz)$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$könne$t$, true, 1),
    (v_q, $t$kann$t$, false, 2),
    (v_q, $t$konnte$t$, false, 3),
    (v_q, $t$könnte gewesen sein$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Form passt in den Finalsatz: „...das Flüchtige festzuhalten, auf dass es eines Tages wieder flüchtig werden ___"?$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$könne$t$, true, 1),
    (v_q, $t$kann$t$, false, 2),
    (v_q, $t$würde können$t$, false, 3),
    (v_q, $t$gekonnt habe$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Der gehobene Finalsatz mit 'auf dass' + Konjunktiv I ('...auf dass es... wieder flüchtig werden könne') entspricht stilistisch welcher alternativen, neutraleren Konstruktion?$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$'damit es eines Tages wieder flüchtig werden kann' (Indikativ nach 'damit')$t$, true, 1),
    (v_q, $t$'weil es eines Tages wieder flüchtig wird'$t$, false, 2),
    (v_q, $t$'obwohl es eines Tages wieder flüchtig würde'$t$, false, 3),
    (v_q, $t$'indem es eines Tages wieder flüchtig geworden ist'$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$Schreiben Sie einen Absatz (8–12 Sätze) über das Spannungsverhältnis zwischen mündlicher Überlieferung und schriftlicher Fixierung von Geschichten, ausgehend von einer konkreten Beobachtung (z. B. in einer Bibliothek, einem Antiquariat, bei Erzählungen älterer Familienmitglieder).$t$, 1, 'normal', 'production', $t$Frau Elvira Sandtner, seit über zwanzig Jahren Leiterin einer kleinen Stadtbücherei, besitzt unter ihren Beständen eine handschriftliche Sammlung von Sagen, die ein längst verstorbener Heimatforscher in den umliegenden Dörfern zusammengetragen hatte, deren vergilbte Seiten ihr stets die eigentümliche Empfindung vermitteln, ein Gefäß in Händen zu halten, das einst weit voller gewesen war, als es die Schrift heute fassen kann. Was sie an diesem Konvolut eigentlich beschäftigt, ist weniger der wissenschaftliche Wert der Aufzeichnungen als die stille Tragödie, die sie hinter dem Unternehmen des Sammlers vermutet: dass er, indem er die mündlich weitergegebenen Geschichten niederschrieb, sie zugleich für alle Zukunft erstarren ließ, während das Wesen der mündlichen Erzählung doch gerade in ihrer Wandelbarkeit bestand. Sie beobachtet, mit einer Skepsis, die manche Kollegen für übertrieben halten, wie jüngere Besucher die alten Sagen kaum noch lesen, sondern lediglich fotografieren, um sie in digitalen Ordnern verschwinden zu lassen, wo sie fortan unverändert verharren. Und doch ertappt sie sich, wenn ein Kind bei einer Vorlesestunde eigenmächtig Details der Geschichte verändert, Namen vertauscht, ein anderes Ende erfindet, dabei, eine stille Freude zu empfinden, die sie nicht anders denn als Trost bezeichnen kann. In solchen Momenten begreift sie, dass die eigentliche Überlieferung sich niemals gänzlich in Buchstaben bannen lässt, sondern, gleich einem unterirdischen Fluss, unter der erstarrten Oberfläche der gedruckten Seite weiterfließt, um bei einem willigen Ohr unverhofft wieder ans Licht zu treten.$t$);

END $block$;

-- 8. Wohltemperierte Zweifel
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary) VALUES (
    'C2',
    $t$Wohltemperierte Zweifel$t$,
    $t$Zwei Wochen vor dem Konzert, in dem sie die Goldberg-Variationen und, im zweiten Teil, mehrere Präludien und Fugen aus dem Wohltemperierten Klavier spielen sollte, entdeckte die Pianistin Rosvita Ahlgrimm an sich eine Unruhe, die sie sich, bei aller Erfahrung mit dem Lampenfieber vergangener Jahrzehnte, nicht ohne Weiteres erklären konnte: Es war nicht die Furcht vor dem Vergessen, auch nicht die vor dem tadelnden Urteil der Kritik, sondern eine tiefere, fast philosophische Beunruhigung darüber, dass sie, je länger sie übte, desto genauer und zugleich desto seelenloser spielte, als habe die Disziplin, die ihr Lehrer einst als die einzig mögliche Tugend des Bachspiels gepriesen hatte, sich in eine Fessel verwandelt, die jede Regung des Augenblicks im Keim erstickte. Sie erinnerte sich an jenen Lehrer, einen alten, hagestolzen Mann mit einer beinahe klösterlichen Strenge, der ihr eingeschärft hatte, Bach verlange keine Interpretation, sondern Gehorsam, dass die Architektur der Fuge, einmal begriffen, keinen Raum lasse für die Willkür des Fühlens, und dass gerade in dieser Unterwerfung unter die Ordnung die höchste Freiheit des Musikers bestehe – ein Satz, den sie jahrzehntelang für eine tiefe Wahrheit gehalten hatte, an dem sie nun aber, während sie zum tausendsten Mal die c-Moll-Fuge durchmaß, zu zweifeln begann. Denn was, so fragte sie sich, wenn Gehorsam und Freiheit einander nicht bedingten, sondern ausschlössen, wenn die vollkommene Beherrschung der Stimmführung nur um den Preis erkauft würde, dass die Finger, längst jeder bewussten Steuerung entzogen, einen Automatismus vollführten, der zwar untadelig, aber taub sei für jene minimalen Verschiebungen des Tempos, jene kaum wahrnehmbaren Zögerungen, in denen, wie sie zu ahnen begann, das eigentliche Leben der Musik sich verberge? Am Abend vor dem Konzert, in einer Anwandlung, die sie selbst für eine Torheit hielt, spielte sie die gesamte zweite Fuge einmal ohne jede vorherige Planung, ließ den Anschlag geschehen, wie er wollte, gestattete sich ein Zögern hier, eine unerwartete Beschleunigung dort – und erschrak, als sie feststellte, dass gerade dieses scheinbar Regellose, dieses Wagnis des Augenblicks, näher an das heranzureichen schien, was sie seit jeher unter Wahrhaftigkeit verstanden hatte, als alle vorangegangenen, minutiös einstudierten Durchläufe. Am nächsten Abend, auf dem Podium, spielte sie dennoch, wie sie es gelernt hatte, mit jener disziplinierten Klarheit, die ihr Publikum von ihr erwartete – nicht aus Mangel an Mut, wie sie sich später eingestand, sondern weil sie begriffen hatte, dass die Spontaneität, die sie am Vorabend gekostet hatte, ihren Wert gerade daraus bezog, dass sie unwiederholbar, einmalig und also für immer verloren war, sobald man sie, und sei es nur ein einziges Mal, zu wiederholen versuchte.$t$,
    $t$Deux semaines avant le concert où elle devait jouer les Variations Goldberg et, dans la seconde partie, plusieurs préludes et fugues du Clavier bien tempéré, la pianiste Rosvita Ahlgrimm découvrit en elle une inquiétude que, malgré toute son expérience du trac accumulée au fil des décennies passées, elle ne parvenait pas à s'expliquer d'emblée : ce n'était pas la peur d'un trou de mémoire, ni celle du jugement sévère de la critique, mais une inquiétude plus profonde, presque philosophique, à l'idée que, plus elle s'exerçait, plus elle jouait avec précision et, en même temps, plus elle jouait sans âme, comme si la discipline que son professeur avait jadis louée comme l'unique vertu possible du jeu de Bach s'était transformée en un carcan étouffant dans l'œuf la moindre impulsion de l'instant. Elle se souvenait de ce professeur, un vieil homme endurci et célibataire d'une rigueur presque monacale, qui lui avait inculqué que Bach n'exigeait pas d'interprétation, mais de l'obéissance, que l'architecture de la fugue, une fois comprise, ne laissait aucune place à l'arbitraire du sentiment, et que c'était précisément dans cette soumission à l'ordre que résidait la plus haute liberté du musicien – une phrase qu'elle avait tenue pendant des décennies pour une profonde vérité, mais dont, tandis qu'elle parcourait pour la millième fois la fugue en do mineur, elle commençait maintenant à douter. Car, se demandait-elle, que se passerait-il si obéissance et liberté ne se conditionnaient pas mutuellement, mais s'excluaient, si la maîtrise parfaite de la conduite des voix ne s'achetait qu'au prix que les doigts, depuis longtemps soustraits à tout contrôle conscient, exécutaient un automatisme certes irréprochable, mais sourd à ces infimes décalages de tempo, à ces hésitations à peine perceptibles où, comme elle commençait à le pressentir, se cachait la vie véritable de la musique ? Le soir précédant le concert, dans un accès qu'elle jugeait elle-même une folie, elle joua une fois l'intégralité de la seconde fugue sans aucune préparation préalable, laissant le toucher advenir comme il voulait, s'autorisant une hésitation ici, une accélération inattendue là – et fut saisie d'effroi en constatant que c'était justement ce désordre apparent, cette prise de risque de l'instant, qui semblait se rapprocher davantage de ce qu'elle avait toujours considéré comme l'authenticité, plus que toutes les exécutions précédentes, minutieusement répétées. Le lendemain soir, sur scène, elle joua néanmoins, comme elle l'avait appris, avec cette clarté disciplinée que son public attendait d'elle – non par manque de courage, comme elle se l'avoua plus tard, mais parce qu'elle avait compris que la spontanéité qu'elle avait goûtée la veille tirait précisément sa valeur du fait qu'elle était irrépétable, unique et donc perdue pour toujours dès l'instant où l'on tentait, ne fût-ce qu'une seule fois, de la reproduire.$t$,
    $t${"Zwei":"deux","Wochen":"semaines","vor":"avant","dem":"le","Konzert":"concert","in":"où","sie":"elle","die":"les","Goldberg":"Goldberg","Variationen":"variations","und":"et","im":"dans la","zweiten":"seconde","Teil":"partie","mehrere":"plusieurs","Präludien":"préludes","Fugen":"fugues","aus":"du","Wohltemperierten":"bien tempéré","Klavier":"clavier","spielen":"jouer","sollte":"devait","entdeckte":"découvrit","Pianistin":"pianiste","Rosvita":"Rosvita","Ahlgrimm":"Ahlgrimm","an":"en","sich":"elle-même","eine":"une","Unruhe":"inquiétude","bei":"malgré","aller":"toute","Erfahrung":"expérience","mit":"du","Lampenfieber":"trac","vergangener":"passées","Jahrzehnte":"décennies","nicht":"pas","ohne":"sans","Weiteres":"plus","erklären":"expliquer","konnte":"pouvait","Es":"ce","war":"était","Furcht":"peur","Vergessen":"trou de mémoire","auch":"non plus","tadelnden":"sévère","Urteil":"jugement","der":"de la","Kritik":"critique","sondern":"mais","tiefere":"plus profonde","fast":"presque","philosophische":"philosophique","Beunruhigung":"inquiétude","darüber":"à l'idée","dass":"que","je":"plus","länger":"longtemps","übte":"s'exerçait","desto":"plus","genauer":"précision","zugleich":"en même temps","seelenloser":"sans âme","spielte":"jouait","als":"comme si","habe":"eût","Disziplin":"discipline","ihr":"son","Lehrer":"professeur","einst":"jadis","einzig":"unique","mögliche":"possible","Tugend":"vertu","des":"du","Bachspiels":"jeu de Bach","gepriesen":"louée","hatte":"avait","Fessel":"carcan","verwandelt":"transformée","jede":"la moindre","Regung":"impulsion","Augenblicks":"instant","Keim":"œuf","erstickte":"étouffait","Sie":"elle","erinnerte":"se souvenait","jenen":"ce","einen":"un","alten":"vieil","hagestolzen":"endurci et célibataire","Mann":"homme","einer":"une","beinahe":"presque","klösterlichen":"monacale","Strenge":"rigueur","eingeschärft":"inculqué","Bach":"Bach","verlange":"exigeait","keine":"pas d'","Interpretation":"interprétation","Gehorsam":"obéissance","Architektur":"architecture","Fuge":"fugue","einmal":"une fois","begriffen":"comprise","keinen":"aucune","Raum":"place","lasse":"laissait","für":"à","Willkür":"arbitraire","Fühlens":"sentiment","gerade":"précisément","dieser":"cette","Unterwerfung":"soumission","unter":"à","Ordnung":"ordre","höchste":"plus haute","Freiheit":"liberté","Musikers":"musicien","bestehe":"résidait","ein":"une","Satz":"phrase","den":"que","jahrzehntelang":"pendant des décennies","tiefe":"profonde","Wahrheit":"vérité","gehalten":"tenue","nun":"maintenant","aber":"mais","während":"tandis que","zum":"pour la","tausendsten":"millième","Mal":"fois","c":"do","Moll":"mineur","durchmaß":"parcourait","zu":"à","zweifeln":"douter","begann":"commençait","Denn":"car","was":"que","so":"ainsi","fragte":"demandait","wenn":"si","einander":"mutuellement","bedingten":"conditionnaient","ausschlössen":"excluaient","vollkommene":"parfaite","Beherrschung":"maîtrise","Stimmführung":"conduite des voix","nur":"seulement","um":"au","Preis":"prix","erkauft":"achetée","würde":"serait","Finger":"doigts","längst":"depuis longtemps","jeder":"tout","bewussten":"conscient","Steuerung":"contrôle","entzogen":"soustraits","Automatismus":"automatisme","vollführten":"exécutaient","zwar":"certes","untadelig":"irréprochable","taub":"sourd","sei":"soit","jene":"ces","minimalen":"infimes","Verschiebungen":"décalages","Tempos":"tempo","kaum":"à peine","wahrnehmbaren":"perceptibles","Zögerungen":"hésitations","denen":"où","wie":"comme","ahnen":"pressentir","das":"la","eigentliche":"véritable","Leben":"vie","Musik":"musique","verberge":"cachait","Am":"le","Abend":"soir","Anwandlung":"accès","selbst":"elle-même","Torheit":"folie","hielt":"jugeait","gesamte":"intégralité","zweite":"seconde","vorherige":"préalable","Planung":"préparation","ließ":"laissa","Anschlag":"toucher","geschehen":"advenir","er":"il","wollte":"voulait","gestattete":"s'autorisa","Zögern":"hésitation","hier":"ici","unerwartete":"inattendue","Beschleunigung":"accélération","dort":"là","erschrak":"fut saisie d'effroi","feststellte":"constatant","dieses":"ce","scheinbar":"apparent","Regellose":"désordre","Wagnis":"prise de risque","näher":"davantage","heranzureichen":"se rapprocher","schien":"semblait","seit":"depuis","jeher":"toujours","Wahrhaftigkeit":"authenticité","verstanden":"considéré","alle":"toutes","vorangegangenen":"précédentes","minutiös":"minutieusement","einstudierten":"répétées","Durchläufe":"exécutions","nächsten":"suivant","auf":"sur","Podium":"scène","dennoch":"néanmoins","es":"cela","gelernt":"appris","jener":"cette","disziplinierten":"disciplinée","Klarheit":"clarté","Publikum":"public","von":"de","erwartete":"attendait","Mangel":"manque","Mut":"courage","später":"plus tard","eingestand":"s'avoua","weil":"parce que","Spontaneität":"spontanéité","am":"la","Vorabend":"veille","gekostet":"goûtée","ihren":"sa","Wert":"valeur","daraus":"de cela","bezog":"tirait","unwiederholbar":"irrépétable","einmalig":"unique","also":"donc","immer":"toujours","verloren":"perdue","sobald":"dès que","man":"on","einziges":"seule","wiederholen":"reproduire","versuchte":"tentait"}$t$::jsonb
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was soll Rosvita Ahlgrimm im Konzert spielen?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Beethoven-Sonaten$t$, false, 1),
    (v_q, $t$Die Goldberg-Variationen und Werke aus dem Wohltemperierten Klavier$t$, true, 2),
    (v_q, $t$Chopin-Etüden$t$, false, 3),
    (v_q, $t$Ein modernes Klavierkonzert$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Worin besteht die Unruhe, die Rosvita zwei Wochen vor dem Konzert befällt?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie fürchtet, die Noten zu vergessen$t$, false, 1),
    (v_q, $t$Sie befürchtet, durch übermäßige Disziplin seelenlos statt lebendig zu spielen$t$, true, 2),
    (v_q, $t$Sie hat Angst vor negativer Kritik$t$, false, 3),
    (v_q, $t$Sie ist unzufrieden mit dem Konzertsaal$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was genau stellt Rosvitas Zweifel infrage, der über gewöhnliches Lampenfieber hinausgeht?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Ob sie ausreichend geübt hat$t$, false, 1),
    (v_q, $t$Die Lehrmeinung ihres Lehrers, wonach Gehorsam gegenüber der Ordnung und musikalische Freiheit sich bedingen, statt einander auszuschließen$t$, true, 2),
    (v_q, $t$Ob das Publikum Bach überhaupt schätzt$t$, false, 3),
    (v_q, $t$Ob sie den richtigen Flügel gewählt hat$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was tut Rosvita am Abend vor dem Konzert?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie übt gar nicht mehr$t$, false, 1),
    (v_q, $t$Sie spielt die zweite Fuge einmal völlig ungeplant$t$, true, 2),
    (v_q, $t$Sie sagt das Konzert ab$t$, false, 3),
    (v_q, $t$Sie wechselt das Programm komplett$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie bewertet sie dieses spontane Spiel im Nachhinein?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Als misslungen und regellos$t$, false, 1),
    (v_q, $t$Als näher an ihrer Vorstellung von Wahrhaftigkeit als alle einstudierten Durchläufe$t$, true, 2),
    (v_q, $t$Als technisch überlegen$t$, false, 3),
    (v_q, $t$Als bloßen Zufall ohne Bedeutung$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Erkenntnis über das Verhältnis von Probe und Aufführung deutet die Passage über das spontane Spiel an?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Dass spontanes Spiel grundsätzlich besser ist als geübtes$t$, false, 1),
    (v_q, $t$Dass Wahrhaftigkeit im Spiel sich gerade dem Zufälligen, nicht Wiederholbaren verdankt und daher nicht methodisch reproduzierbar ist$t$, true, 2),
    (v_q, $t$Dass sie ihre gesamte Ausbildung für nutzlos hält$t$, false, 3),
    (v_q, $t$Dass ihr Lehrer sie schlecht unterrichtet hat$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie spielt Rosvita schließlich beim eigentlichen Konzert?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Völlig frei improvisiert$t$, false, 1),
    (v_q, $t$Mit der disziplinierten Klarheit, die sie gelernt hat$t$, true, 2),
    (v_q, $t$Sie bricht das Konzert ab$t$, false, 3),
    (v_q, $t$Sie spielt ein anderes Stück$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum entscheidet sie sich bewusst gegen eine Wiederholung des spontanen Spiels vom Vorabend?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Aus Zeitmangel$t$, false, 1),
    (v_q, $t$Weil sie erkennt, dass der Wert der Spontaneität gerade in ihrer Unwiederholbarkeit liegt$t$, true, 2),
    (v_q, $t$Weil das Publikum Spontaneität ablehnt$t$, false, 3),
    (v_q, $t$Weil ihr Lehrer im Publikum sitzt$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie lässt sich die Schlusspointe der Geschichte am treffendsten deuten?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Rosvita gibt ihre künstlerischen Ideale zugunsten des Publikumsgeschmacks auf$t$, false, 1),
    (v_q, $t$Die bewusste Rückkehr zur Disziplin ist kein Rückzug, sondern eine reife Einsicht, dass Spontaneität, einmal wiederholt, ihr eigenes Wesen zerstören würde$t$, true, 2),
    (v_q, $t$Sie hat den Vorabend bereits vergessen$t$, false, 3),
    (v_q, $t$Die Disziplin erweist sich letztlich als überlegen und die Spontaneität als wertloser Irrweg$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$„...ein alter, hagestolzer Mann mit einer beinahe klösterlichen Strenge..." – 'hagestolz' bedeutet:$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$als unverheirateter älterer Junggeselle lebend$t$, true, 1),
    (v_q, $t$verheiratet und kinderreich$t$, false, 2),
    (v_q, $t$jung und unerfahren$t$, false, 3),
    (v_q, $t$körperlich gebrechlich$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Umschreibung passt am besten zu 'hagestolz'?$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$ein alt gewordener Junggeselle$t$, true, 1),
    (v_q, $t$ein wohlhabender Ehemann$t$, false, 2),
    (v_q, $t$ein reisender Handwerker$t$, false, 3),
    (v_q, $t$ein zerstreuter Professor$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche konnotative Wirkung erzeugt das eher veraltete, seltene Wort 'hagestolz' im Vergleich zum neutralen 'unverheiratet'?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$es verleiht der Figur eine altertümliche, leicht verschrobene und in sich zurückgezogene Aura, die zur beschriebenen klösterlichen Strenge passt$t$, true, 1),
    (v_q, $t$es weist auf finanziellen Wohlstand hin$t$, false, 2),
    (v_q, $t$es ist ein moderner Jugendslang-Ausdruck$t$, false, 3),
    (v_q, $t$es bezeichnet ausschließlich Frauen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$„Was, so fragte sie sich, wenn Gehorsam und Freiheit einander nicht bedingten, sondern ___?" (Konjunktiv II von 'ausschließen')$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$ausschlössen$t$, true, 1),
    (v_q, $t$ausschließen$t$, false, 2),
    (v_q, $t$ausgeschlossen hätten$t$, false, 3),
    (v_q, $t$ausschließen würden$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Konjunktiv-II-Form von 'ausschließen' (3. Person Plural, Präsens) ist korrekt?$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$ausschlössen$t$, true, 1),
    (v_q, $t$ausschließten$t$, false, 2),
    (v_q, $t$ausschlussen$t$, false, 3),
    (v_q, $t$ausgeschlossen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$In „...wenn Gehorsam und Freiheit einander nicht bedingten, sondern ausschlössen" wird die synthetische Konjunktiv-II-Form ('ausschlössen') statt der würde-Form verwendet. Was ist der stilistische Grund dafür?$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Bei starken, häufig literarisch verwendeten Verben wird die synthetische Form im gehobenen Schriftdeutsch bevorzugt, um Redundanz mit einer bereits vorhandenen würde-Konstruktion zu vermeiden$t$, true, 1),
    (v_q, $t$Die würde-Form ist bei diesem Verb grammatisch unmöglich$t$, false, 2),
    (v_q, $t$Es handelt sich um einen Druckfehler im Originaltext$t$, false, 3),
    (v_q, $t$Die synthetische Form wird nur im Perfekt verwendet$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$Schreiben Sie einen Absatz (8–12 Sätze) über einen Künstler oder Handwerker, der kurz vor einer wichtigen Aufführung/Präsentation an der erlernten Disziplin seines Fachs zu zweifeln beginnt und zwischen Regelgehorsam und spontaner Freiheit schwankt.$t$, 1, 'normal', 'production', $t$Wenige Tage vor der Ausstellungseröffnung, bei der er zum ersten Mal seit Jahren wieder abstrakte Arbeiten zeigen sollte, entdeckte der Bildhauer Anton Rehberg an sich eine Unruhe, die er sich trotz jahrzehntelanger Erfahrung mit Lampenfieber nicht recht erklären konnte. Es war nicht die Furcht vor dem Urteil der Kritiker, sondern eine tiefere Beunruhigung darüber, dass seine Formen, je länger er an ihnen feilte, desto präziser und zugleich seelenloser wurden, als habe die Disziplin, die ihm sein Lehrer einst als höchste Tugend gepriesen hatte, sich in eine Fessel verwandelt. Er erinnerte sich an jenen alten, hagestolzen Meister, der ihm eingeschärft hatte, wahre Bildhauerkunst verlange nicht Ausdruck, sondern Unterwerfung unter das Material, und dass gerade in dieser Unterwerfung die höchste Freiheit des Künstlers bestehe – ein Satz, den er jahrzehntelang für gültig gehalten hatte, an dem er nun jedoch zu zweifeln begann. Denn was, so fragte er sich, wenn Gehorsam und Freiheit einander nicht bedingten, sondern ausschlössen, wenn die vollkommene Beherrschung des Werkzeugs nur um den Preis erkauft würde, dass die Hände, jeder bewussten Steuerung entzogen, einen Automatismus vollführten, der zwar untadelig, aber taub sei für jene unvorhergesehenen Verschiebungen, in denen sich das eigentliche Leben eines Werkes verberge? Am Abend vor der Eröffnung, in einer Anwandlung, die er selbst für Torheit hielt, formte er einen letzten Block Ton völlig ungeplant, ließ die Hände geschehen, wie sie wollten – und erschrak, als er feststellte, dass gerade dieses Wagnis näher an das heranreichte, was er unter Wahrhaftigkeit verstand, als alle vorangegangenen, minutiös durchdachten Entwürfe.$t$);

END $block$;

-- 9. Die Nummer im Archiv
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary) VALUES (
    'C2',
    $t$Die Nummer im Archiv$t$,
    $t$Professor Elard Winsch, seit einigen Jahren mit der Katalogisierung des Bauhaus-Nachlasses jenes kleinen, kaum bekannten Provinzmuseums betraut, hätte sich selbst, wäre er nach seinem Fach befragt worden, als nüchternen Verwaltungsmenschen bezeichnet, dem an Dokumenten nur ihre Herkunft und ihre Datierung, nicht aber ihr menschlicher Ursprung von Interesse sei – eine Selbsteinschätzung, die sich als gründlich unzutreffend erwies, sobald er, im hintersten Fach einer Schublade, auf eine Mappe mit Entwürfen stieß, die lediglich mit der Inventarnummer 'Sch. 114' und der lakonischen Bezeichnung 'Studierender, unbekannt, Weberei-Werkstatt, 1928' versehen war. Es waren Entwürfe von einer Kühnheit der Farbgebung und einer Strenge der Komposition, die ihn, den erfahrenen Archivar, an seine eigenen Urteile über die bekannten Meister der Schule zweifeln ließen, und je länger er die vergilbten Blätter betrachtete, desto unerträglicher wurde ihm der Gedanke, dass derjenige, der sie geschaffen hatte, in keinem Verzeichnis, keiner Fotografie, keinem Brief eine Spur hinterlassen zu haben schien – als habe die Geschichte, die sich sonst so gründlich um ihre Genies kümmert, an dieser einen Stelle beschlossen, gänzlich zu schweigen. Winsch, der sich bislang mit der ihm eigenen Bescheidenheit stets als Diener der Quellen verstanden hatte, ertappte sich nun dabei, Nächte damit zuzubringen, Studierendenlisten, Meldebücher und Korrespondenzen der Werkstattleiter nach jedem Hinweis auf 'Sch.' zu durchforsten, mit einer Besessenheit, die seine Kollegen zunehmend befremdete und die er sich selbst nur damit erklären konnte, dass ihn nicht mehr die Kunstgeschichte als solche, sondern das schiere Faktum des Vergessenwerdens umtrieb: dass ein Mensch, begabt genug, um Werke von solcher Eigenständigkeit zu schaffen, achtlos genug behandelt worden war, um binnen einer Generation gänzlich aus dem Gedächtnis der Institution zu verschwinden, die sich doch gerade der Erinnerung und der Form verschrieben hatte. Als er schließlich, nach Monaten vergeblicher Recherche, in einem Nebensatz eines Verwaltungsschreibens die Vermutung fand, dass 'Sch.' eine jüdische Studentin gewesen sein könnte, die die Schule 1933 unter Zwang verlassen musste und deren weiteres Schicksal sich nicht mehr rekonstruieren ließ, empfand er, entgegen aller wissenschaftlichen Nüchternheit, zu der er sich verpflichtet fühlte, eine Trauer von solcher Unmittelbarkeit, dass er die Mappe längere Zeit nicht mehr zu öffnen vermochte. Er entschied sich schließlich, die Entwürfe unter dem schlichten Titel 'Sch. 114, Weberei-Werkstatt' auszustellen, ohne den Namen, den er nie fand, durch eine Vermutung zu ersetzen, in der stillen Überzeugung, dass die Leerstelle selbst, sorgfältig bewahrt und nicht vorschnell gefüllt, dem Werk gerechter werde als jede nachträglich erfundene Biographie.$t$,
    $t$Le professeur Elard Winsch, chargé depuis quelques années du catalogage du fonds Bauhaus de ce petit musée provincial peu connu, se serait lui-même, si on l'avait interrogé sur sa discipline, décrit comme un administrateur pragmatique, pour qui seule l'origine et la datation des documents importaient, et non leur origine humaine – une auto-évaluation qui se révéla profondément erronée dès qu'il tomba, au fond d'un tiroir, sur un dossier de dessins portant seulement le numéro d'inventaire « Sch. 114 » et la mention laconique « Étudiant, inconnu, atelier de tissage, 1928 ». C'étaient des dessins d'une audace de coloris et d'une rigueur de composition telles qu'ils firent douter l'archiviste expérimenté qu'il était de ses propres jugements sur les maîtres reconnus de l'école, et plus il contemplait ces feuilles jaunies, plus l'idée devenait insupportable que celui qui les avait créées ne semblait avoir laissé aucune trace, dans aucun registre, aucune photographie, aucune lettre – comme si l'Histoire, qui d'ordinaire s'occupe pourtant si soigneusement de ses génies, avait décidé, sur ce seul point, de se taire entièrement. Winsch, qui s'était jusque-là toujours considéré, avec la modestie qui lui était propre, comme un simple serviteur des sources, se surprit alors à passer des nuits entières à éplucher les listes d'étudiants, les registres d'inscription et la correspondance des chefs d'atelier à la recherche de la moindre mention de « Sch. », avec une obsession qui déconcertait de plus en plus ses collègues et qu'il ne pouvait s'expliquer à lui-même qu'en admettant que ce n'était plus l'histoire de l'art en tant que telle qui l'occupait, mais le simple fait de l'oubli : qu'un être humain, assez doué pour créer des œuvres d'une telle originalité, ait pu être traité avec assez de négligence pour disparaître entièrement, en l'espace d'une génération, de la mémoire de l'institution qui s'était pourtant précisément vouée au souvenir et à la forme. Lorsqu'il finit, après des mois de recherches infructueuses, par trouver dans une proposition subordonnée d'une lettre administrative l'hypothèse que « Sch. » pourrait avoir été une étudiante juive contrainte de quitter l'école en 1933, et dont le sort ultérieur ne pouvait plus être reconstitué, il ressentit, contrairement à toute la rigueur scientifique à laquelle il se sentait tenu, un chagrin d'une telle immédiateté qu'il ne parvint plus, pendant longtemps, à rouvrir le dossier. Il décida finalement d'exposer les dessins sous le simple titre « Sch. 114, atelier de tissage », sans remplacer par une hypothèse le nom qu'il n'avait jamais trouvé, dans la conviction silencieuse que le vide lui-même, soigneusement préservé et non comblé prématurément, rendrait davantage justice à l'œuvre que toute biographie inventée après coup.$t$,
    $t${"Professor":"professeur","Elard":"Elard","Winsch":"Winsch","seit":"depuis","einigen":"quelques","Jahren":"années","mit":"de","der":"le","Katalogisierung":"catalogage","des":"du","Bauhaus":"Bauhaus","Nachlasses":"fonds","jenes":"de ce","kleinen":"petit","kaum":"peu","bekannten":"connu","Provinzmuseums":"musée provincial","betraut":"chargé","hätte":"se serait","sich":"se","selbst":"lui-même","wäre":"si","er":"il","nach":"sur","seinem":"sa","Fach":"discipline","befragt":"interrogé","worden":"été","als":"comme","nüchternen":"pragmatique","Verwaltungsmenschen":"administrateur","bezeichnet":"décrit","dem":"pour qui","an":"en","Dokumenten":"documents","nur":"seulement","ihre":"leur","Herkunft":"origine","und":"et","Datierung":"datation","nicht":"non","aber":"mais","ihr":"leur","menschlicher":"humaine","Ursprung":"origine","von":"d'","Interesse":"intérêt","sei":"importait","eine":"une","Selbsteinschätzung":"auto-évaluation","die":"qui","gründlich":"profondément","unzutreffend":"erronée","erwies":"révéla","sobald":"dès que","im":"au","hintersten":"fond du","einer":"un","Schublade":"tiroir","auf":"sur","Mappe":"dossier","Entwürfen":"dessins","stieß":"tomba","lediglich":"seulement","Inventarnummer":"numéro d'inventaire","'Sch":"« Sch","'":"»","lakonischen":"laconique","Bezeichnung":"mention","'Studierender":"« Étudiant","unbekannt":"inconnu","Weberei":"tissage","Werkstatt":"atelier","versehen":"portant","war":"était","Es":"c'","waren":"étaient","Entwürfe":"dessins","Kühnheit":"audace","Farbgebung":"coloris","Strenge":"rigueur","Komposition":"composition","ihn":"le","den":"l'","erfahrenen":"expérimenté","Archivar":"archiviste","seine":"ses","eigenen":"propres","Urteile":"jugements","über":"sur","Meister":"maîtres","Schule":"école","zweifeln":"douter","ließen":"firent","je":"plus","länger":"longtemps","vergilbten":"jaunies","Blätter":"feuilles","betrachtete":"contemplait","desto":"plus","unerträglicher":"insupportable","wurde":"devenait","ihm":"lui","Gedanke":"idée","dass":"que","derjenige":"celui","geschaffen":"créées","hatte":"avait","in":"dans","keinem":"aucun","Verzeichnis":"registre","keiner":"aucune","Fotografie":"photographie","Brief":"lettre","Spur":"trace","hinterlassen":"laissé","zu":"de","haben":"avoir","schien":"semblait","habe":"avait","Geschichte":"Histoire","sonst":"d'ordinaire","so":"si","um":"de","Genies":"génies","kümmert":"s'occupe","dieser":"ce","einen":"un","Stelle":"point","beschlossen":"décidé","gänzlich":"entièrement","schweigen":"se taire","bislang":"jusque-là","Bescheidenheit":"modestie","stets":"toujours","Diener":"serviteur","Quellen":"sources","verstanden":"considéré","ertappte":"surprit","nun":"alors","dabei":"à","Nächte":"nuits","damit":"à cela","zuzubringen":"passer","Studierendenlisten":"listes d'étudiants","Meldebücher":"registres d'inscription","Korrespondenzen":"correspondance","Werkstattleiter":"chefs d'atelier","jedem":"la moindre","Hinweis":"mention","durchforsten":"éplucher","Besessenheit":"obsession","Kollegen":"collègues","zunehmend":"de plus en plus","befremdete":"déconcertait","erklären":"expliquer","konnte":"pouvait","mehr":"plus","Kunstgeschichte":"histoire de l'art","solche":"telle","sondern":"mais","das":"le","schiere":"simple","Faktum":"fait","Vergessenwerdens":"de l'oubli","umtrieb":"occupait","ein":"un","Mensch":"être humain","begabt":"doué","genug":"assez","Werke":"œuvres","solcher":"telle","Eigenständigkeit":"originalité","schaffen":"créer","achtlos":"négligemment","behandelt":"traité","binnen":"en l'espace de","Generation":"génération","aus":"de","Gedächtnis":"mémoire","Institution":"institution","verschwinden":"disparaître","doch":"pourtant","gerade":"précisément","Erinnerung":"souvenir","Form":"forme","verschrieben":"vouée","Als":"lorsque","schließlich":"finalement","Monaten":"mois","vergeblicher":"infructueuses","Recherche":"recherches","einem":"une","Nebensatz":"proposition subordonnée","eines":"d'une","Verwaltungsschreibens":"lettre administrative","Vermutung":"hypothèse","fand":"trouva","jüdische":"juive","Studentin":"étudiante","gewesen":"été","sein":"être","könnte":"pourrait","unter":"sous","Zwang":"contrainte","verlassen":"quitter","musste":"dut","deren":"dont","weiteres":"ultérieur","Schicksal":"sort","rekonstruieren":"reconstituer","ließ":"pouvait","empfand":"ressentit","entgegen":"contrairement à","aller":"toute","wissenschaftlichen":"scientifique","Nüchternheit":"rigueur","verpflichtet":"tenu","fühlte":"sentait","Trauer":"chagrin","Unmittelbarkeit":"immédiateté","längere":"longtemps","Zeit":"temps","öffnen":"ouvrir","vermochte":"parvenait","Er":"il","entschied":"décida","schlichten":"simple","Titel":"titre","Werkstatt'":"atelier de tissage »","auszustellen":"exposer","ohne":"sans","Namen":"nom","nie":"jamais","durch":"par","ersetzen":"remplacer","stillen":"silencieuse","Überzeugung":"conviction","Leerstelle":"vide","sorgfältig":"soigneusement","bewahrt":"préservé","vorschnell":"prématurément","gefüllt":"comblé","Werk":"œuvre","gerechter":"plus juste","werde":"rendrait","jede":"toute","nachträglich":"après coup","erfundene":"inventée","Biographie":"biographie","sie":"les"}$t$::jsonb
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Womit ist Professor Winsch beauftragt?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Mit dem Bau eines neuen Museums$t$, false, 1),
    (v_q, $t$Mit der Katalogisierung des Bauhaus-Nachlasses$t$, true, 2),
    (v_q, $t$Mit der Restaurierung von Gemälden$t$, false, 3),
    (v_q, $t$Mit der Organisation einer Konzertreihe$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was findet Winsch in einer Schublade, das ihn fasziniert?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Ein Foto bekannter Bauhaus-Meister$t$, false, 1),
    (v_q, $t$Eine Mappe mit Entwürfen eines unbekannten Studierenden, nur mit einer Nummer versehen$t$, true, 2),
    (v_q, $t$Einen Brief von Walter Gropius$t$, false, 3),
    (v_q, $t$Ein zerstörtes Gemälde$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was genau erschüttert Winschs Selbstverständnis als 'nüchternen Verwaltungsmenschen'?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Der Verlust wichtiger Dokumente$t$, false, 1),
    (v_q, $t$Dass die Qualität der anonymen Entwürfe seine bisherigen Urteile über bekannte Meister infrage stellt und ihn emotional statt rein sachlich reagieren lässt$t$, true, 2),
    (v_q, $t$Die schlechte Bezahlung seiner Archivarbeit$t$, false, 3),
    (v_q, $t$Ein Streit mit seinen Kollegen über die Ausstellungsgestaltung$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wonach durchsucht Winsch nächtelang Listen und Meldebücher?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Nach der Herkunft des Museumsgebäudes$t$, false, 1),
    (v_q, $t$Nach Hinweisen auf die Identität von 'Sch.'$t$, true, 2),
    (v_q, $t$Nach verlorenen Gemälden$t$, false, 3),
    (v_q, $t$Nach der Geschichte der Werkstattleiter$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Vermutung findet er schließlich in einem Verwaltungsschreiben?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Dass 'Sch.' ein berühmter Lehrer war$t$, false, 1),
    (v_q, $t$Dass 'Sch.' vermutlich eine jüdische Studentin war, die die Schule 1933 unter Zwang verlassen musste$t$, true, 2),
    (v_q, $t$Dass die Entwürfe gefälscht waren$t$, false, 3),
    (v_q, $t$Dass 'Sch.' das Bauhaus freiwillig verlassen hat, um zu heiraten$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was treibt Winschs Besessenheit laut Text eigentlich an, jenseits kunsthistorischen Interesses?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Der Ehrgeiz, eine wissenschaftliche Karriere zu machen$t$, false, 1),
    (v_q, $t$Das Entsetzen darüber, dass eine begabte Person achtlos genug behandelt wurde, um binnen einer Generation aus dem institutionellen Gedächtnis zu verschwinden$t$, true, 2),
    (v_q, $t$Die Hoffnung auf finanziellen Gewinn durch den Verkauf der Entwürfe$t$, false, 3),
    (v_q, $t$Der Wunsch, seine Kollegen zu übertreffen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Unter welchem Titel stellt Winsch die Entwürfe schließlich aus?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Mit einem erfundenen vollständigen Namen$t$, false, 1),
    (v_q, $t$Unter der schlichten Bezeichnung 'Sch. 114, Weberei-Werkstatt'$t$, true, 2),
    (v_q, $t$Ganz ohne jede Beschriftung$t$, false, 3),
    (v_q, $t$Unter dem Namen eines bekannten Meisters$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum verzichtet Winsch darauf, die Vermutung über die Identität als gesicherten Namen anzugeben?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Aus Zeitmangel bei der Ausstellungsvorbereitung$t$, false, 1),
    (v_q, $t$Weil er die ungefüllte Leerstelle für angemessener hält als eine nachträglich erfundene Biographie$t$, true, 2),
    (v_q, $t$Weil das Museum es ihm verbietet$t$, false, 3),
    (v_q, $t$Weil er die Vermutung selbst für falsch hält$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche implizite Haltung zur Geschichtsschreibung vertritt Winsch mit seiner Entscheidung, die Leerstelle zu bewahren?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Dass unvollständige Quellen grundsätzlich wertlos seien$t$, false, 1),
    (v_q, $t$Dass das ehrliche Anerkennen von Nichtwissen dem Andenken eines ausgelöschten Lebens eher gerecht wird als eine bequeme, spekulative Rekonstruktion$t$, true, 2),
    (v_q, $t$Dass Archivare grundsätzlich keine Namen nennen sollten$t$, false, 3),
    (v_q, $t$Dass er die Studentin für unwichtig hält, da ihr Name ohnehin nicht mehr auffindbar ist$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$„...dass die Leerstelle selbst... dem Werk gerechter werde..." – 'Leerstelle' bedeutet:$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$eine bewusst offengelassene, unausgefüllte Stelle$t$, true, 1),
    (v_q, $t$ein voll dokumentierter Sachverhalt$t$, false, 2),
    (v_q, $t$ein fehlerhafter Druckfehler$t$, false, 3),
    (v_q, $t$ein besonders wertvolles Ausstellungsstück$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welches Wort ist am ehesten bedeutungsgleich mit 'Leerstelle' im übertragenen Sinn?$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Lücke$t$, true, 1),
    (v_q, $t$Fülle$t$, false, 2),
    (v_q, $t$Beweis$t$, false, 3),
    (v_q, $t$Abschluss$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum entscheidet sich Professor Winsch bewusst dafür, die 'Leerstelle' im Werktitel zu bewahren, statt sie mit einer Vermutung zu füllen?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$weil er glaubt, dass ein unbestätigter Name dem Werk und dem Schicksal der unbekannten Künstlerin weniger gerecht würde als die ehrliche Bewahrung des Nichtwissens$t$, true, 1),
    (v_q, $t$weil er den Namen aus Zeitmangel nicht recherchieren konnte$t$, false, 2),
    (v_q, $t$weil er der Künstlerin misstraut$t$, false, 3),
    (v_q, $t$weil das Museum ihm die Recherche verboten hat$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$„...die stille Überzeugung, dass die Leerstelle... dem Werk gerechter ___ als jede erfundene Biographie." (Konjunktiv I von 'werden')$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$werde$t$, true, 1),
    (v_q, $t$wird$t$, false, 2),
    (v_q, $t$wurde$t$, false, 3),
    (v_q, $t$würde werden$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Konjunktiv-I-Form von 'werden' (3. Person Singular) ist korrekt für indirekte Rede?$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$werde$t$, true, 1),
    (v_q, $t$wird$t$, false, 2),
    (v_q, $t$würde$t$, false, 3),
    (v_q, $t$geworden sei$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Im Satz „...in der stillen Überzeugung, dass die Leerstelle selbst... dem Werk gerechter werde" markiert Konjunktiv I eine Distanzierung des Erzählers von der Aussage. Welche Aussage trifft zu?$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Konjunktiv I signalisiert, dass es sich um Winschs subjektive Überzeugung handelt, nicht um eine vom Erzähler bestätigte objektive Tatsache$t$, true, 1),
    (v_q, $t$Konjunktiv I zeigt an, dass die Aussage falsch ist$t$, false, 2),
    (v_q, $t$Konjunktiv I wird hier rein zufällig anstelle des Indikativs verwendet$t$, false, 3),
    (v_q, $t$Konjunktiv I drückt in diesem Satz eine Vergangenheitsform aus$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$Schreiben Sie einen Absatz (8–12 Sätze) über eine Entdeckung in einem Archiv, Museum oder Nachlass, bei der die Identität eines talentierten, aber vergessenen Menschen nicht vollständig rekonstruiert werden kann. Reflektieren Sie über den Umgang mit solchen Leerstellen.$t$, 1, 'normal', 'production', $t$Frau Dr. Helene Aschauer, seit Jahren mit der Erschließung des Nachlasses eines aufgelösten Fotoateliers betraut, hätte sich selbst als nüchterne Ordnungsmenschin bezeichnet, der es allein um Datierung und Provenienz gehe – eine Selbsteinschätzung, die sich als unzutreffend erwies, sobald sie auf eine Mappe mit Porträtaufnahmen stieß, die lediglich mit der Bezeichnung 'Fotografin, unbekannt, Atelier Nord, 1936' versehen war. Es waren Aufnahmen von einer kompositorischen Kühnheit, die sie an ihren eigenen Urteilen über die bekannten Meister des Ateliers zweifeln ließ, und je länger sie die Abzüge betrachtete, desto unerträglicher wurde ihr der Gedanke, dass die Urheberin in keinem Verzeichnis eine Spur hinterlassen zu haben schien. Sie verbrachte in der Folge Wochen damit, Gewerbeanmeldungen und Meldebücher nach jedem Hinweis zu durchforsten, mit einer Besessenheit, die ihre Kollegen befremdete und die sie sich selbst nur mit dem schieren Faktum des Vergessenwerdens erklären konnte. Als sie schließlich in einem Nebensatz eines Verwaltungsschreibens die Vermutung fand, die Fotografin könnte 1938 zur Emigration gezwungen worden sein, empfand sie eine Trauer von solcher Unmittelbarkeit, dass sie die Mappe längere Zeit nicht mehr zu öffnen vermochte. Sie entschied sich schließlich, die Aufnahmen unter dem schlichten Titel 'Fotografin, unbekannt, Atelier Nord' auszustellen, ohne den nie gefundenen Namen durch eine Vermutung zu ersetzen, in der stillen Überzeugung, dass die sorgfältig bewahrte Leerstelle dem Werk gerechter werde als jede nachträglich erfundene Biographie.$t$);

END $block$;

-- 10. Die Aufzeichnungen vom neunten November
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary) VALUES (
    'C2',
    $t$Die Aufzeichnungen vom neunten November$t$,
    $t$Als Merle, kaum dreißig Jahre alt und mit jener leicht ironischen Distanz zur eigenen Familiengeschichte großgeworden, die ihrer Generation eigen zu sein scheint, nach dem Tod ihres Großvaters dessen Wohnung auflöste, fand sie unter einem Stapel Steuerunterlagen ein schmales, in grünes Leinen gebundenes Heft, dessen erste Eintragung auf den siebten November des Jahres neunzehnhundertneunundachtzig datiert war und dessen letzte, kaum leserlich, auf den elften desselben Monats – fünf Tage also, in denen, wie sie wusste, die Mauer gefallen war, jenes Ereignis, das sie aus Schulbüchern und Dokumentationen kannte, niemals aber aus der Stimme eines Menschen, der es tatsächlich erlebt hatte, denn ihr Großvater hatte, solange sie sich erinnern konnte, über jene Tage nur mit einer Kürze gesprochen, die sie stets für Bescheidenheit, nun aber, während sie die engbeschriebenen Seiten durchblätterte, eher für eine Form der Scham zu halten begann. Denn was sie las, entsprach in keiner Weise dem Bild des ergriffenen, jubelnden Ostberliners, das sie aus den Fernsehbildern jener Nacht im Gedächtnis trug: Ihr Großvater beschrieb, mit einer Nüchternheit, die sie zunächst befremdete, vor allem seine eigene Verwirrung, sein Misstrauen gegenüber der Menge, die sich am Grenzübergang drängte, und, in einem Satz, den Merle mehrfach lesen musste, ehe sie ihn zu begreifen glaubte, ein Bedauern darüber, dass er in jener Nacht, statt selbst zur Grenze zu gehen, zu Hause geblieben war, weil er, wie er schrieb, 'der Freude, die ich noch nicht fühlen konnte, nicht öffentlich Ausdruck verleihen wollte' – ein Satz, in dem sich, wie ihr allmählich aufging, die ganze Zerrissenheit eines Mannes verbarg, der sein halbes Leben lang gelernt hatte, seine Empfindungen der jeweils herrschenden Ordnung anzupassen, und der nun, da diese Ordnung selbst zusammenbrach, nicht wusste, welchem inneren Maßstab er noch trauen durfte. Merle, die ihren Großvater zeitlebens für einen im Grunde unpolitischen, fast phlegmatischen Menschen gehalten hatte, begriff mit einem Mal, dass dessen vermeintliche Gleichgültigkeit selbst schon ein Urteil, eine mühsam errungene Haltung gewesen war – die Haltung dessen, der gelernt hatte, dass Begeisterung, öffentlich gezeigt, stets auch eine Gefahr bedeuten konnte, und der diese Lektion, wie das Heft in aller Deutlichkeit zeigte, selbst in der Stunde des größten Umbruchs nicht mehr abzulegen vermochte. Sie legte das Heft, als sie es zu Ende gelesen hatte, nicht zu den übrigen Erinnerungsstücken, sondern behielt es fortan bei sich, wie ein Dokument, das ihr weniger über die Geschichte ihres Landes als über die unauslotbare Fremdheit der eigenen Familie Auskunft gab.$t$,
    $t$Lorsque Merle, à peine âgée de trente ans et élevée avec cette distance légèrement ironique envers sa propre histoire familiale qui semble propre à sa génération, vida, après la mort de son grand-père, l'appartement de celui-ci, elle trouva, sous une pile de documents fiscaux, un mince cahier relié de toile verte, dont la première inscription était datée du sept novembre de l'année mille neuf cent quatre-vingt-neuf et dont la dernière, à peine lisible, du onze du même mois – cinq jours donc, pendant lesquels, comme elle le savait, le Mur était tombé, cet événement qu'elle connaissait par les manuels scolaires et les documentaires, mais jamais par la voix d'une personne qui l'avait réellement vécu, car son grand-père, aussi loin qu'elle se souvienne, n'avait jamais parlé de ces jours qu'avec une brièveté qu'elle avait toujours prise pour de la modestie, mais qu'elle commençait maintenant, en feuilletant ces pages serrées, à prendre plutôt pour une forme de honte. Car ce qu'elle lisait ne correspondait en rien à l'image du Berlinois de l'Est ému et jubilant qu'elle gardait en mémoire d'après les images télévisées de cette nuit-là : son grand-père décrivait, avec une froideur qui la déconcerta d'abord, surtout sa propre confusion, sa méfiance envers la foule qui se pressait au poste-frontière, et, dans une phrase que Merle dut lire plusieurs fois avant de croire la comprendre, un regret que, cette nuit-là, au lieu d'aller lui-même à la frontière, il était resté chez lui, parce qu'il ne voulait pas, écrivait-il, « donner publiquement expression à une joie que je ne pouvais pas encore ressentir » – une phrase dans laquelle se cachait, comme elle le comprit peu à peu, tout le déchirement d'un homme qui avait appris, la moitié de sa vie durant, à adapter ses émotions à l'ordre dominant du moment, et qui, maintenant que cet ordre lui-même s'effondrait, ne savait plus à quel étalon intérieur il pouvait encore se fier. Merle, qui avait toujours considéré son grand-père comme un être au fond apolitique, presque flegmatique, comprit soudain que son indifférence supposée était elle-même déjà un jugement, une attitude péniblement acquise – l'attitude de celui qui avait appris que l'enthousiasme, montré publiquement, pouvait toujours aussi représenter un danger, et qui, comme le cahier le montrait avec une entière clarté, ne parvenait plus à se défaire de cette leçon, même à l'heure du plus grand bouleversement. Lorsqu'elle eut fini de le lire, elle ne rangea pas le cahier parmi les autres souvenirs, mais le garda désormais sur elle, comme un document qui la renseignait moins sur l'histoire de son pays que sur l'étrangeté insondable de sa propre famille.$t$,
    $t${"Als":"lorsque","Merle":"Merle","kaum":"à peine","dreißig":"trente","Jahre":"ans","alt":"âgée","und":"et","mit":"avec","jener":"cette","leicht":"légèrement","ironischen":"ironique","Distanz":"distance","zur":"envers","eigenen":"propre","Familiengeschichte":"histoire familiale","großgeworden":"élevée","die":"qui","ihrer":"sa","Generation":"génération","eigen":"propre","zu":"à","sein":"être","scheint":"semble","nach":"après","dem":"la","Tod":"mort","ihres":"de son","Großvaters":"grand-père","dessen":"de celui-ci","Wohnung":"appartement","auflöste":"vida","fand":"trouva","sie":"elle","unter":"sous","einem":"une","Stapel":"pile","Steuerunterlagen":"documents fiscaux","ein":"un","schmales":"mince","in":"en","grünes":"verte","Leinen":"toile","gebundenes":"relié","Heft":"cahier","erste":"première","Eintragung":"inscription","auf":"du","den":"le","siebten":"sept","November":"novembre","des":"de l'","Jahres":"année","neunzehnhundertneunundachtzig":"mille neuf cent quatre-vingt-neuf","datiert":"datée","war":"était","letzte":"dernière","leserlich":"lisible","elften":"onze","desselben":"du même","Monats":"mois","fünf":"cinq","Tage":"jours","also":"donc","denen":"pendant lesquels","wie":"comme","wusste":"savait","Mauer":"Mur","gefallen":"tombé","jenes":"cet","Ereignis":"événement","das":"que","aus":"par","Schulbüchern":"manuels scolaires","Dokumentationen":"documentaires","kannte":"connaissait","niemals":"jamais","aber":"mais","der":"la","Stimme":"voix","eines":"d'une","Menschen":"personne","es":"l'","tatsächlich":"réellement","erlebt":"vécu","hatte":"avait","denn":"car","ihr":"son","Großvater":"grand-père","solange":"aussi loin que","sich":"se","erinnern":"souvenir","konnte":"pouvait","über":"de","jene":"ces","nur":"seulement","einer":"une","Kürze":"brièveté","gesprochen":"parlé","stets":"toujours","für":"pour","Bescheidenheit":"modestie","nun":"maintenant","während":"en","engbeschriebenen":"serrées","Seiten":"pages","durchblätterte":"feuilletant","eher":"plutôt","eine":"une","Form":"forme","Scham":"honte","halten":"prendre","begann":"commençait","Denn":"car","was":"ce que","las":"lisait","entsprach":"correspondait","keiner":"en rien","Weise":"manière","Bild":"image","ergriffenen":"ému","jubelnden":"jubilant","Ostberliners":"Berlinois de l'Est","Fernsehbildern":"images télévisées","Nacht":"nuit","im":"en","Gedächtnis":"mémoire","trug":"gardait","Ihr":"son","beschrieb":"décrivait","Nüchternheit":"froideur","zunächst":"d'abord","befremdete":"déconcerta","vor":"surtout","allem":"tout","seine":"sa","eigene":"propre","Verwirrung":"confusion","Misstrauen":"méfiance","gegenüber":"envers","Menge":"foule","am":"au","Grenzübergang":"poste-frontière","drängte":"pressait","Satz":"phrase","mehrfach":"plusieurs fois","lesen":"lire","musste":"dut","ehe":"avant que","ihn":"la","begreifen":"comprendre","glaubte":"croire","Bedauern":"regret","darüber":"au fait que","dass":"que","er":"il","statt":"au lieu de","selbst":"lui-même","Grenze":"frontière","gehen":"aller","Hause":"chez lui","geblieben":"resté","weil":"parce que","schrieb":"écrivait","'der":"« donner","Freude":"joie","ich":"je","noch":"encore","nicht":"pas","fühlen":"ressentir","öffentlich":"publiquement","Ausdruck":"expression","verleihen":"donner","wollte'":"voulait »","allmählich":"peu à peu","aufging":"comprit","ganze":"tout","Zerrissenheit":"déchirement","Mannes":"homme","verbarg":"cachait","halbes":"moitié","Leben":"vie","lang":"durant","gelernt":"appris","Empfindungen":"émotions","jeweils":"du moment","herrschenden":"dominant","Ordnung":"ordre","anzupassen":"adapter","da":"maintenant que","diese":"cet","zusammenbrach":"s'effondrait","welchem":"quel","inneren":"intérieur","Maßstab":"étalon","trauen":"se fier","durfte":"pouvait","ihren":"son","zeitlebens":"toujours","einen":"un","Grunde":"fond","unpolitischen":"apolitique","fast":"presque","phlegmatischen":"flegmatique","gehalten":"considéré","begriff":"comprit","Mal":"fois","vermeintliche":"supposée","Gleichgültigkeit":"indifférence","schon":"déjà","Urteil":"jugement","mühsam":"péniblement","errungene":"acquise","Haltung":"attitude","gewesen":"été","Begeisterung":"enthousiasme","gezeigt":"montré","auch":"aussi","Gefahr":"danger","bedeuten":"représenter","Lektion":"leçon","aller":"entière","Deutlichkeit":"clarté","zeigte":"montrait","Stunde":"heure","größten":"plus grand","Umbruchs":"bouleversement","mehr":"plus","abzulegen":"se défaire","vermochte":"parvenait","Sie":"elle","legte":"rangea","als":"lorsque","Ende":"fin","gelesen":"lu","übrigen":"autres","Erinnerungsstücken":"souvenirs","sondern":"mais","behielt":"garda","fortan":"désormais","bei":"sur","Dokument":"document","weniger":"moins","Geschichte":"histoire","Landes":"pays","unauslotbare":"insondable","Fremdheit":"étrangeté","Familie":"famille","Auskunft":"renseignement","gab":"donnait"}$t$::jsonb
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was findet Merle beim Auflösen der Wohnung ihres Großvaters?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Alte Fotografien$t$, false, 1),
    (v_q, $t$Ein grün gebundenes Tagebuchheft$t$, true, 2),
    (v_q, $t$Einen Brief seiner Eltern$t$, false, 3),
    (v_q, $t$Sein altes Reisepass$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Über welchen Zeitraum berichten die Eintragungen im Heft?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Die gesamten 1980er Jahre$t$, false, 1),
    (v_q, $t$Fünf Tage rund um den Mauerfall im November 1989$t$, true, 2),
    (v_q, $t$Nur einen einzigen Tag$t$, false, 3),
    (v_q, $t$Die Zeit nach der Wiedervereinigung 1990$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie verändert sich Merles Verständnis der bisherigen Kürze ihres Großvaters über jene Tage im Verlauf der Lektüre?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie hält sie weiterhin für reine Bescheidenheit$t$, false, 1),
    (v_q, $t$Sie beginnt, die Kürze eher als eine Form der Scham zu deuten denn als bloße Bescheidenheit$t$, true, 2),
    (v_q, $t$Sie glaubt, er habe die Ereignisse einfach vergessen$t$, false, 3),
    (v_q, $t$Sie vermutet, er habe absichtlich gelogen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Ist der Großvater in der Nacht des Mauerfalls selbst zur Grenze gegangen?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Ja, sofort$t$, false, 1),
    (v_q, $t$Nein, er blieb zu Hause$t$, true, 2),
    (v_q, $t$Er ging erst am nächsten Morgen$t$, false, 3),
    (v_q, $t$Er wohnte direkt an der Grenze$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welchen Grund gibt der Großvater selbst dafür an, zu Hause geblieben zu sein?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er war krank$t$, false, 1),
    (v_q, $t$Er wollte einer Freude, die er noch nicht fühlen konnte, nicht öffentlich Ausdruck verleihen$t$, true, 2),
    (v_q, $t$Er hatte kein Interesse an dem Ereignis$t$, false, 3),
    (v_q, $t$Er musste arbeiten$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was offenbart dieser eine Satz über sein Zuhausebleiben laut Merles Interpretation über sein ganzes Leben?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Dass er politisch völlig desinteressiert war$t$, false, 1),
    (v_q, $t$Dass seine vermeintliche Gleichgültigkeit selbst eine mühsam erlernte Haltung war, geboren aus der Erfahrung, dass öffentlich gezeigte Begeisterung gefährlich sein konnte$t$, true, 2),
    (v_q, $t$Dass er die Wiedervereinigung insgeheim ablehnte$t$, false, 3),
    (v_q, $t$Dass er einfach zu müde war, um auszugehen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie hatte Merle ihren Großvater zeitlebens eingeschätzt?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Als leidenschaftlichen Aktivisten$t$, false, 1),
    (v_q, $t$Als im Grunde unpolitischen, fast phlegmatischen Menschen$t$, true, 2),
    (v_q, $t$Als berühmten Schriftsteller$t$, false, 3),
    (v_q, $t$Als strengen Familienvater$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was macht Merle am Ende mit dem gefundenen Heft?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie wirft es weg$t$, false, 1),
    (v_q, $t$Sie legt es zu den übrigen Erinnerungsstücken$t$, false, 2),
    (v_q, $t$Sie behält es fortan bei sich, getrennt von den übrigen Stücken$t$, true, 3),
    (v_q, $t$Sie verkauft es an ein Archiv$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Worin besteht laut dem Schlusssatz der eigentliche Erkenntnisgewinn, den das Heft Merle verschafft?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Es liefert ihr neue historische Fakten über den Mauerfall$t$, false, 1),
    (v_q, $t$Es gibt ihr weniger Aufschluss über die große Geschichte als über die unauslotbare Fremdheit innerhalb der eigenen Familie$t$, true, 2),
    (v_q, $t$Es beweist, dass ihr Großvater ein Held war$t$, false, 3),
    (v_q, $t$Es klärt endgültig alle offenen Fragen zu seiner Biographie$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$„...ein Dokument, das ihr... über die unauslotbare Fremdheit der eigenen Familie Auskunft gab." – 'unauslotbar' bedeutet:$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$unergründlich, nicht vollständig zu erfassen$t$, true, 1),
    (v_q, $t$leicht verständlich, offensichtlich$t$, false, 2),
    (v_q, $t$vorübergehend, kurzfristig$t$, false, 3),
    (v_q, $t$amtlich bestätigt$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welches Wort ist bedeutungsähnlich zu 'unauslotbar'?$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$unergründlich$t$, true, 1),
    (v_q, $t$eindeutig$t$, false, 2),
    (v_q, $t$vertraut$t$, false, 3),
    (v_q, $t$banal$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Das Bild 'unauslotbar' stammt ursprünglich aus der Seefahrt (ein Gewässer, dessen Tiefe man nicht 'ausloten', also mit dem Lot messen kann). Welche übertragene Bedeutung entfaltet dieses Bild im Kontext des Textes?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$die Fremdheit der eigenen Familie ist so tiefgründig und vielschichtig, dass sie sich jeder abschließenden Erklärung entzieht, ähnlich einem Gewässer ohne messbaren Grund$t$, true, 1),
    (v_q, $t$die Familie lebt tatsächlich in der Nähe eines Sees$t$, false, 2),
    (v_q, $t$das Wort bezeichnet eine leicht zu behebende Verständigungslücke$t$, false, 3),
    (v_q, $t$es handelt sich um eine rein juristische Fachbezeichnung$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$„...als ___ die Geschichte... beschlossen, gänzlich zu schweigen." (Konjunktiv I Perfekt nach 'als', ohne 'ob')$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$habe$t$, true, 1),
    (v_q, $t$hat$t$, false, 2),
    (v_q, $t$hätte$t$, false, 3),
    (v_q, $t$hatte$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Konstruktion ist bei 'als' im Sinne von 'als ob' (ohne 'ob') grammatisch korrekt?$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$als habe die Geschichte beschlossen$t$, true, 1),
    (v_q, $t$als die Geschichte beschlossen hat$t$, false, 2),
    (v_q, $t$als die Geschichte hätte beschlossen$t$, false, 3),
    (v_q, $t$als die Geschichte beschließe$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Bei 'als' anstelle von 'als ob' steht das konjugierte Verb (hier 'habe') unmittelbar nach 'als', nicht am Satzende. Welche Regel erklärt dies?$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Ohne 'ob' verhält sich 'als' wie ein einleitendes Element, das Verberststellung im Nebensatz auslöst (Inversion), während 'als ob' die reguläre Nebensatz-Endstellung des Verbs verlangt$t$, true, 1),
    (v_q, $t$Diese Regel gilt nur für den Indikativ$t$, false, 2),
    (v_q, $t$'Als' erfordert immer das Präteritum$t$, false, 3),
    (v_q, $t$Es handelt sich um einen Sonderfall nur bei reflexiven Verben$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$Schreiben Sie einen Absatz (8–12 Sätze) über die Entdeckung eines persönlichen Dokuments (Tagebuch, Brief) eines Familienmitglieds, das ein historisches Ereignis erlebt hat, und das ein unerwartetes, vom offiziellen Geschichtsbild abweichendes Bild dieser Person zeichnet.$t$, 1, 'normal', 'production', $t$Als Jonas, kaum fünfundzwanzig und mit einer distanzierten Neugier auf die eigene Familiengeschichte großgeworden, nach dem Tod seiner Großmutter deren Nachlass sichtete, fand er unter alten Fotografien ein schmales Notizheft, dessen Einträge auf die Wochen nach dem verheerenden Hochwasser des Jahres 2002 datiert waren, jenes Ereignis, das er nur aus Nachrichtenarchiven kannte, niemals aber aus der Stimme eines Menschen, der es tatsächlich erlebt hatte. Denn seine Großmutter hatte über jene Tage stets nur mit einer Kürze gesprochen, die er für Bescheidenheit gehalten hatte, nun aber, während er die eng beschriebenen Seiten durchblätterte, eher für eine Form der Scham zu halten begann. Was er las, entsprach keineswegs dem Bild der tatkräftigen Helferin, das er aus Familienerzählungen im Gedächtnis trug: Seine Großmutter beschrieb vor allem ihre eigene Lähmung, ihr Unvermögen, den Nachbarn beizustehen, und ein Bedauern darüber, dass sie in jenen entscheidenden Stunden, statt selbst mit anzupacken, wie erstarrt in der Küche verharrt war. In einem Satz, den Jonas mehrfach lesen musste, schrieb sie, sie habe 'der Angst, die ich niemandem zeigen wollte, nicht auch noch öffentlich Gestalt geben wollen' – ein Satz, in dem sich die ganze Zerrissenheit einer Frau verbarg, die gelernt hatte, ihre Empfindungen stets zu kontrollieren, und die nun, in der Stunde der größten Not, nicht wusste, welchem inneren Maßstab sie noch trauen durfte. Jonas begriff mit einem Mal, dass die vermeintliche Tatkraft seiner Großmutter selbst schon eine mühsam errungene Fassade gewesen war, hinter der sich eine tiefe, nie eingestandene Verunsicherung verbarg.$t$);

END $block$;

-- 11. Der Kopist des Schweigens
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary) VALUES (
    'C2',
    $t$Der Kopist des Schweigens$t$,
    $t$Ich habe für ihn Noten abgeschrieben, in den Jahren, als sein Gehör bereits ein Gerücht war, das er selbst nicht mehr bestätigen konnte. Man schickte mich ins Haus in der Wiener Vorstadt, wo die Fenster nie ganz geschlossen waren, weil er, wie die Wirtin sagte, das Licht brauchte, seit ihm die Klänge fehlten. Ich war neunzehn, ein Handwerker der Tinte, kein Künstler, und genau deshalb, glaube ich, ertrug er mich. Ich stellte keine Fragen, die er nicht hören konnte, und das war schon Höflichkeit genug.

Er schrieb mit dem Ohr eines Mannes, der sich an einen Klang erinnerte, den es vielleicht nie gegeben hatte - lauter, kantiger, als könne die Wucht der Noten auf dem Papier den Verlust der Wirklichkeit wettmachen. Manchmal hämmerte er mit der flachen Hand auf den Deckel des Flügels, um zu prüfen, ob eine Erschütterung ihn noch erreichte. Sie erreichte ihn, aber nur als Zittern, nie als Ton. Ich sah, wie er den Kopf gegen das Holz presste wie ein Mann, der an einer verschlossenen Tür horcht, hinter der ein Fest stattfindet, zu dem er nicht mehr eingeladen ist.

Die Ironie, die später jeder bemüht, wenn er von ihm spricht - der taube Mann, der die schönste Musik seines Jahrhunderts schrieb -, war für uns, die wir ihn damals kannten, keine Pointe, sondern ein tägliches Unglück ohne Publikum. Als die Neunte zum ersten Mal erklang, stand er, sagt man, mit dem Rücken zum Saal und musste umgedreht werden, um den Applaus zu sehen, den er nicht hören konnte. Ich war nicht dort. Ich habe die Geschichte, wie alle, aus zweiter Hand, und gerade das scheint mir redlicher, als vorzugeben, ich hätte in seinem Gesicht etwas Endgültiges gelesen.

Was ich gesehen habe, war kleiner: wie er ein Wort, das ich in sein Heft schrieb, dreimal las, als könnte häufigeres Lesen es lauter machen. Wie er über einer einzigen Fermate eine ganze Nacht saß. Wie er mich, als ich zum letzten Mal ging, an der Schulter fasste, nicht um etwas zu sagen, sondern um zu spüren, dass noch jemand da war, der aus Fleisch bestand und nicht nur aus der Stille, die er inzwischen für die Welt hielt. Applaus, so viel weiß ich heute, war für ihn längst kein Klang mehr. Er war eine Bewegung vieler Hände, die er sich vorstellen musste - und vielleicht hat er sich, in den Jahren, in denen ich ihn kannte, genau darin geübt: sich das Echo eines Lebens vorzustellen, das er selbst nicht mehr hören durfte.$t$,
    $t$J'ai copié des partitions pour lui, dans les années où son ouïe n'était déjà plus qu'une rumeur qu'il ne pouvait lui-même plus confirmer. On m'envoya dans sa maison d'un faubourg viennois, où les fenêtres n'étaient jamais tout à fait fermées, parce qu'il avait besoin, disait la logeuse, de la lumière, depuis que les sons lui manquaient. J'avais dix-neuf ans, un artisan de l'encre, non un artiste, et c'est précisément pour cela, je crois, qu'il me supportait. Je ne posais aucune question qu'il n'aurait pu entendre, et c'était déjà une politesse suffisante.

Il écrivait avec l'oreille d'un homme qui se souvenait d'un son qui peut-être n'avait jamais existé – plus fort, plus anguleux, comme si la puissance des notes sur le papier pouvait compenser la perte de la réalité. Parfois, il frappait de la paume à plat sur le couvercle du piano à queue, pour vérifier si une vibration l'atteignait encore. Elle l'atteignait, mais seulement comme un tremblement, jamais comme un son. Je le voyais presser sa tête contre le bois, comme un homme qui écoute à une porte fermée, derrière laquelle se tient une fête à laquelle il n'est plus convié.

L'ironie que chacun s'empresse d'invoquer plus tard, quand on parle de lui – l'homme sourd qui écrivit la plus belle musique de son siècle –, n'était pour nous, qui l'avons connu à l'époque, nulle pointe d'esprit, mais un malheur quotidien sans public. Lorsque la Neuvième résonna pour la première fois, il se tenait, dit-on, le dos tourné vers la salle, et il fallut le retourner pour qu'il voie les applaudissements qu'il ne pouvait entendre. Je n'étais pas là. Je tiens cette histoire, comme tout le monde, de seconde main, et c'est précisément cela qui me paraît plus honnête que de prétendre avoir lu quelque chose de définitif sur son visage.

Ce que j'ai vu, moi, était plus modeste : comment il relisait trois fois un mot que j'avais écrit dans son cahier, comme si le relire plus souvent pouvait le rendre plus fort. Comment il restait assis une nuit entière sur un seul point d'orgue. Comment il me saisit par l'épaule, la dernière fois que je m'en allai, non pour dire quelque chose, mais pour sentir que quelqu'un était encore là, quelqu'un de chair, et non seulement issu du silence qu'il tenait désormais pour le monde entier. Les applaudissements, je le sais aujourd'hui, n'étaient plus depuis longtemps un son pour lui. C'était un mouvement de nombreuses mains qu'il devait s'imaginer – et peut-être s'était-il, durant les années où je l'ai connu, précisément exercé à cela : à s'imaginer l'écho d'une vie qu'il ne lui était plus permis d'entendre lui-même.$t$,
    $t${"Ich":"je","habe":"ai","für":"pour","ihn":"lui","Noten":"partitions","abgeschrieben":"copié","in":"dans","den":"les","Jahren":"années","als":"où","sein":"son","Gehör":"ouïe","bereits":"déjà","ein":"une","Gerücht":"rumeur","war":"était","das":"que","er":"il","selbst":"lui-même","nicht":"ne pas","mehr":"plus","bestätigen":"confirmer","konnte":"pouvait","Man":"on","schickte":"envoya","mich":"m'","ins":"dans sa","Haus":"maison","der":"du","Wiener":"viennois","Vorstadt":"faubourg","wo":"où","die":"les","Fenster":"fenêtres","nie":"jamais","ganz":"tout à fait","geschlossen":"fermées","waren":"étaient","weil":"parce que","wie":"comme","Wirtin":"logeuse","sagte":"disait","Licht":"lumière","brauchte":"avait besoin","seit":"depuis que","ihm":"lui","Klänge":"sons","fehlten":"manquaient","neunzehn":"dix-neuf","Handwerker":"artisan","Tinte":"encre","kein":"non un","Künstler":"artiste","und":"et","genau":"précisément","deshalb":"pour cela","glaube":"crois","ich":"je","ertrug":"supportait","stellte":"posais","keine":"aucune","Fragen":"questions","hören":"entendre","schon":"déjà","Höflichkeit":"politesse","genug":"suffisante","Er":"il","schrieb":"écrivait","mit":"avec","dem":"l'","Ohr":"oreille","eines":"d'un","Mannes":"homme","sich":"se","an":"de","einen":"un","Klang":"son","erinnerte":"souvenait","es":"qui","vielleicht":"peut-être","gegeben":"existé","hatte":"avait","lauter":"plus fort","kantiger":"plus anguleux","könne":"pouvait","Wucht":"puissance","auf":"sur","Papier":"papier","Verlust":"perte","Wirklichkeit":"réalité","wettmachen":"compenser","Manchmal":"parfois","hämmerte":"frappait","flachen":"à plat","Hand":"paume","Deckel":"couvercle","des":"du","Flügels":"piano à queue","um":"pour","zu":"à","prüfen":"vérifier","ob":"si","eine":"une","Erschütterung":"vibration","noch":"encore","erreichte":"atteignait","Sie":"elle","aber":"mais","nur":"seulement","Zittern":"tremblement","Ton":"son","sah":"voyais","Kopf":"tête","gegen":"contre","Holz":"bois","presste":"pressait","Mann":"homme","einer":"une","verschlossenen":"fermée","Tür":"porte","horcht":"écoute","hinter":"derrière","Fest":"fête","stattfindet":"se tient","eingeladen":"convié","ist":"est","Die":"l'","Ironie":"ironie","später":"plus tard","jeder":"chacun","bemüht":"s'empresse","wenn":"quand","von":"de","spricht":"parle","taube":"sourd","schönste":"plus belle","Musik":"musique","seines":"son","Jahrhunderts":"siècle","uns":"nous","wir":"nous","damals":"à l'époque","kannten":"connu","Pointe":"pointe d'esprit","sondern":"mais","tägliches":"quotidien","Unglück":"malheur","ohne":"sans","Publikum":"public","Als":"lorsque","Neunte":"Neuvième","zum":"pour la","ersten":"première","Mal":"fois","erklang":"résonna","stand":"se tenait","sagt":"dit","man":"on","Rücken":"dos","Saal":"salle","musste":"fallut","umgedreht":"retourné","werden":"être","Applaus":"applaudissements","sehen":"voir","dort":"là","Geschichte":"histoire","alle":"tout le monde","aus":"de","zweiter":"seconde","gerade":"précisément","scheint":"paraît","mir":"me","redlicher":"plus honnête","vorzugeben":"prétendre","hätte":"aurais","seinem":"son","Gesicht":"visage","etwas":"quelque chose","Endgültiges":"définitif","gelesen":"lu","Was":"ce que","gesehen":"vu","kleiner":"plus modeste","Wort":"mot","Heft":"cahier","dreimal":"trois fois","las":"relisait","könnte":"pouvait","häufigeres":"plus fréquente","Lesen":"lecture","machen":"rendre","Wie":"comment","über":"sur","einzigen":"seul","Fermate":"point d'orgue","ganze":"entière","Nacht":"nuit","saß":"restait assis","letzten":"dernière","ging":"m'en allai","Schulter":"épaule","fasste":"saisit","sagen":"dire","spüren":"sentir","dass":"que","jemand":"quelqu'un","da":"là","Fleisch":"chair","bestand":"issu","Stille":"silence","inzwischen":"désormais","Welt":"monde","hielt":"tenait","so":"si","viel":"tant","weiß":"sais","heute":"aujourd'hui","längst":"depuis longtemps","Bewegung":"mouvement","vieler":"de nombreuses","Hände":"mains","vorstellen":"imaginer","hat":"a","denen":"où","kannte":"connaissais","darin":"à cela","geübt":"exercé","Echo":"écho","Lebens":"vie","vorzustellen":"imaginer","durfte":"était permis"}$t$::jsonb
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was ist die zentrale Ironie in der Geschichte des tauben Komponisten?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er komponierte großartige Musik, konnte den Applaus dafür aber nicht hören.$t$, true, 1),
    (v_q, $t$Er wurde für seine Musik nie anerkannt.$t$, false, 2),
    (v_q, $t$Er verlor sein Gehör erst nach seinem Tod.$t$, false, 3),
    (v_q, $t$Der Applaus war ihm gleichgültig, weil er ihn hörte.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie lässt sich die Ironie beschreiben, die im Text angedeutet wird, ohne dass sie ausdrücklich als solche benannt wird?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Ein Mann, dessen Werk auf Klang beruht, ist von eben diesem Klang ausgeschlossen und muss den Erfolg seiner Musik nur an den Gesten anderer ablesen.$t$, true, 1),
    (v_q, $t$Der Komponist hasst Applaus und meidet öffentliche Auftritte.$t$, false, 2),
    (v_q, $t$Seine Musik wird erst nach seinem Tod gespielt.$t$, false, 3),
    (v_q, $t$Der Kopist versteht die Musik besser als der Komponist selbst.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Inwiefern verschiebt der Text die klassische Pointe von der ‚tauben Genie'-Anekdote?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er stellt die bekannte Anekdote (Umdrehen beim Applaus) als Fremdbericht dar und rückt stattdessen die alltägliche, unspektakuläre Erfahrung der Stille in den Vordergrund.$t$, true, 1),
    (v_q, $t$Er widerlegt die Anekdote als historisch falsch.$t$, false, 2),
    (v_q, $t$Er zeigt, dass der Komponist den Applaus insgeheim doch hören konnte.$t$, false, 3),
    (v_q, $t$Er verlagert die Ironie auf den Kopisten, der ebenfalls ertaubt.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum, glaubt der Erzähler, ertrug der Komponist ihn?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Weil er als einfacher Handwerker keine Fragen stellte, die der Komponist ohnehin nicht hören konnte.$t$, true, 1),
    (v_q, $t$Weil er selbst Musiker war.$t$, false, 2),
    (v_q, $t$Weil er ihm applaudierte.$t$, false, 3),
    (v_q, $t$Weil er sein Verwandter war.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was sagt die Beziehung zwischen Kopist und Komponist über dessen Bedürfnisse in dieser Lebensphase aus?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er brauchte weniger einen begabten Gesprächspartner als vielmehr eine stille, verlässliche Anwesenheit, die keine unerfüllbaren Kommunikationsansprüche stellte.$t$, true, 1),
    (v_q, $t$Er brauchte einen Schüler, den er ausbilden konnte.$t$, false, 2),
    (v_q, $t$Er misstraute allen Musikern in seiner Umgebung.$t$, false, 3),
    (v_q, $t$Er wollte ausschließlich technische Hilfe beim Notenschreiben.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche implizite Aussage über Genie und Nähe lässt sich aus der Wahl gerade eines ‚Handwerkers der Tinte' als Vertrautem ableiten?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Nähe zum Genie entsteht hier nicht durch künstlerische Ebenbürtigkeit, sondern durch die Abwesenheit von Erwartungen, die die Isolation noch schmerzhafter machen würden.$t$, true, 1),
    (v_q, $t$Nur Fachleute konnten seine Musik wirklich verstehen.$t$, false, 2),
    (v_q, $t$Der Komponist verachtete gebildete Gesprächspartner.$t$, false, 3),
    (v_q, $t$Die Wahl war rein zufällig und ohne Bedeutung.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was tut der Komponist beim letzten Treffen mit dem Kopisten?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er legt ihm die Hand auf die Schulter.$t$, true, 1),
    (v_q, $t$Er umarmt ihn und weint.$t$, false, 2),
    (v_q, $t$Er schenkt ihm ein Notenblatt.$t$, false, 3),
    (v_q, $t$Er verabschiedet sich mit Worten.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Bedeutung hat die Geste, mit der der Komponist den Kopisten am Ende berührt?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie ersetzt Worte durch das Bedürfnis, körperliche Gegenwart statt Klang zu spüren.$t$, true, 1),
    (v_q, $t$Sie ist ein formeller Abschiedsgruß ohne tiefere Bedeutung.$t$, false, 2),
    (v_q, $t$Sie zeigt seinen Ärger über die Trennung.$t$, false, 3),
    (v_q, $t$Sie signalisiert, dass er den Kopisten fortan nicht mehr braucht.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie deutet der letzte Absatz den Begriff ‚Applaus' um?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Applaus wird von einem hörbaren Ereignis zu einer vorgestellten Bewegung, die der Komponist sich imaginativ aneignen muss - ähnlich wie er sich am Ende ein ganzes Leben nur noch vorstellen kann.$t$, true, 1),
    (v_q, $t$Applaus verliert für ihn jede Bedeutung und wird komplett ignoriert.$t$, false, 2),
    (v_q, $t$Applaus wird durch die Berührung des Kopisten buchstäblich ersetzt.$t$, false, 3),
    (v_q, $t$Applaus bleibt bis zuletzt ein rein akustisches Phänomen für ihn.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$„Wie er über einer einzigen Fermate eine ganze Nacht saß." – 'Fermate' bedeutet:$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$ein musikalisches Zeichen zur Verlängerung eines Tons oder einer Pause$t$, true, 1),
    (v_q, $t$eine kurze Tonleiter$t$, false, 2),
    (v_q, $t$ein Streichinstrument$t$, false, 3),
    (v_q, $t$eine Art Taktwechsel$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$In welchem Bereich wird der Begriff 'Fermate' fachsprachlich verwendet?$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Musiknotation$t$, true, 1),
    (v_q, $t$Rechtswesen$t$, false, 2),
    (v_q, $t$Architektur$t$, false, 3),
    (v_q, $t$Medizin$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche symbolische Bedeutung könnte das Verweilen des tauben Komponisten 'über einer einzigen Fermate eine ganze Nacht' im Kontext der Erzählung tragen?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$die Fermate, ein Zeichen des Innehaltens und Verweilens im Klang, spiegelt seinen verzweifelten Versuch, einen Klang zu erfassen, den er selbst nicht mehr hören kann$t$, true, 1),
    (v_q, $t$es zeigt lediglich seine mangelnde Kompositionstechnik$t$, false, 2),
    (v_q, $t$die Fermate ist ein Fehler in der Abschrift, den er korrigieren muss$t$, false, 3),
    (v_q, $t$es handelt sich um eine reine Zeitverschwendung ohne tieferen Sinn$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$„...als ___ häufigeres Lesen es lauter machen." (Konjunktiv II nach 'als', irrealer Vergleich)$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$könnte$t$, true, 1),
    (v_q, $t$kann$t$, false, 2),
    (v_q, $t$könne$t$, false, 3),
    (v_q, $t$konnte$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Form ist im irrealen Vergleichssatz mit 'als' (ohne 'ob') nach einem Verb im Präteritum ('las') korrekt: „Er las das Wort dreimal, als ___ häufigeres Lesen es lauter machen."?$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$könnte$t$, true, 1),
    (v_q, $t$kann$t$, false, 2),
    (v_q, $t$könnte gekonnt haben$t$, false, 3),
    (v_q, $t$könne$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum wird im irrealen Vergleichssatz nach 'als' hier Konjunktiv II ('könnte') statt Konjunktiv I ('könne') verwendet, obwohl beide Formen bei diesem Verb unterschiedlich sind?$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Irreale Vergleichssätze mit 'als (ob)' verlangen grundsätzlich Konjunktiv II, da sie eine hypothetische, der Realität widersprechende Vorstellung ausdrücken, nicht eine wiedergegebene fremde Aussage wie bei Konjunktiv I$t$, true, 1),
    (v_q, $t$Konjunktiv I ist in diesem Satztyp grammatisch verboten ohne erkennbaren Grund$t$, false, 2),
    (v_q, $t$Beide Formen sind hier gleichwertig und beliebig austauschbar$t$, false, 3),
    (v_q, $t$Konjunktiv II wird nur verwendet, wenn das Subjekt maskulin ist$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$Schreiben Sie eine literarische Ich-Erzählung (8–12 Sätze) aus der Perspektive einer Person, die einem großen, aber von einer Einschränkung (Krankheit, Verlust eines Sinnes, Isolation) gezeichneten Künstler oder Genie nahestand. Vermeiden Sie plakative Dramatik zugunsten stiller, konkreter Beobachtungen.$t$, 1, 'normal', 'production', $t$Ich habe für sie die Farben gemischt, in den Jahren, als ihre Augen bereits ein Gerücht waren, das sie selbst nicht mehr bestätigen konnte. Man schickte mich in das Atelier am Stadtrand, wo die Vorhänge nie ganz zugezogen wurden, weil sie, wie die Haushälterin sagte, die Erinnerung an das Licht brauchte, seit ihr die Farben fehlten. Ich war siebzehn, ein Handwerker des Pinsels, keine Künstlerin, und gerade deshalb, glaube ich, duldete sie mich. Ich stellte keine Fragen, die sie nicht mehr sehen konnte, und das war schon Rücksicht genug. Sie malte mit dem Gedächtnis einer Frau, die sich an ein Blau erinnerte, das es vielleicht nie in dieser Reinheit gegeben hatte, kräftiger, gesättigter, als könne die Wucht der Farbe auf der Leinwand den Verlust der Wirklichkeit wettmachen. Manchmal fuhr sie mit der flachen Hand über die noch feuchte Fläche, um zu prüfen, ob eine Struktur sie noch erreichte. Sie erreichte sie, aber nur als Widerstand, nie als Farbe. Die Ironie, die später jeder bemüht, wenn er von ihr spricht – die erblindete Malerin, die die leuchtendsten Bilder ihres Jahrhunderts schuf –, war für uns, die wir sie damals kannten, keine Pointe, sondern ein tägliches Unglück ohne Publikum. Was ich gesehen habe, war kleiner: wie sie einen Farbnamen, den ich ihr ins Ohr sagte, dreimal wiederholen ließ, als könnte häufigeres Hören ihn sichtbarer machen. Applaus, so viel weiß ich heute, war für sie längst kein Bild mehr, sondern eine Bewegung vieler Hände, die sie sich vorstellen musste.$t$);

END $block$;

-- 12. Ein Aktenzeichen in Bern
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary) VALUES (
    'C2',
    $t$Ein Aktenzeichen in Bern$t$,
    $t$Meine Großtante Rosa starb im Frühling, kurz vor ihrem hundertsten Geburtstag, und hinterließ eine Wohnung, in der nichts weggeworfen worden war, das nach 1920 datierte. Zwischen Strumpfhaltern, Steuerbescheiden und einem halben Jahrhundert Weihnachtskarten fand ich, in einer Zigarrenkiste, ein Heft mit blauem Einband, das offenbar aus Bern stammte, aus den Jahren, in denen dort ein gewisser Angestellter am Eidgenössischen Amt für geistiges Eigentum Patentanträge prüfte, für ein Gehalt, das seiner Frau zufolge kaum für die Miete reichte.

Rosa hatte den Mann, wie ich später aus einem beigelegten Brief erfuhr, in einer Berner Pension kennengelernt, als beide Untermieter bei derselben Wirtin waren. Sie war neunzehn, er ein paar Jahre älter, ein Beamter mit unordentlichem Haar, der abends, wenn die Aktenstapel erledigt waren, Gedankenexperimente auf Papierservietten notierte, weil er sich das teure Schreibpapier des Amtes nicht für private Grübeleien nehmen wollte. Sie fand ihn, schrieb sie, „freundlich, aber abwesend, als würde er ständig etwas im Zimmer nebenan hören, das sonst niemand hörte".

Das Heft enthielt keine Formeln - nur ihre eigenen Notizen über die gemeinsamen Abende, ein gepresstes Edelweiß, eine Rechnung für zwei Kaffee. Ganz am Ende, auf der vorletzten Seite, ein Satz, der mich innehalten ließ: „Er sagte heute, die Zeit sei vielleicht kein Fluss, sondern ein See, in dem wir nur meinen zu schwimmen." Ich weiß nicht, ob er das je veröffentlicht hätte oder ob es eine beiläufige Bemerkung beim Abendessen war, eine jener Ideen, die kluge Menschen aussprechen und wieder vergessen, während andere sie ihr Leben lang mit sich tragen.

Was mich an dem Fund beschäftigt, ist weniger die möglicherweise historische Nähe zu einem später berühmten Denken, als die Tatsache, dass niemand in jenem Zimmer geahnt haben kann, wer da am Tisch saß. Der Angestellte prüfte tagsüber die Erfindungen anderer Leute - Bügeleisen, Webstühle, ein verbessertes Fahrradpedal - und war nachts, für meine Großtante, einfach ein Mann mit zu wenig Geld und zu vielen Gedanken. Größe, das habe ich in der Zigarrenkiste gelernt, trägt zu ihrer eigenen Zeit selten ein Schild. Sie sitzt in Mietwohnungen, isst kalten Aufschnitt, wird von Vermieterinnen als „der stille Herr im zweiten Stock" beschrieben - und erst der Rückblick, dieser grausam genaue Historiker, hängt ihr nachträglich die Krone um, die sie damals niemand aufsetzen wollte.$t$,
    $t$Ma grand-tante Rosa mourut au printemps, peu avant son centième anniversaire, laissant un appartement où rien de postérieur à 1920 n'avait été jeté. Entre des jarretelles, des avis d'imposition et un demi-siècle de cartes de Noël, je trouvai, dans une boîte à cigares, un cahier à la couverture bleue, qui provenait manifestement de Berne, des années où un certain employé de l'Office fédéral de la propriété intellectuelle y examinait des demandes de brevet, pour un salaire qui, selon sa femme, suffisait à peine à payer le loyer.

Rosa avait rencontré cet homme, comme je l'appris plus tard par une lettre jointe, dans une pension bernoise, alors qu'ils étaient tous deux sous-locataires chez la même logeuse. Elle avait dix-neuf ans, lui quelques années de plus, un fonctionnaire aux cheveux en désordre, qui, le soir, une fois les piles de dossiers expédiées, notait des expériences de pensée sur des serviettes en papier, parce qu'il ne voulait pas utiliser pour ses rêveries privées le papier à lettres coûteux de l'office. Elle le trouvait, écrivait-elle, « aimable, mais absent, comme s'il entendait sans cesse quelque chose dans la pièce d'à côté, que personne d'autre n'entendait ».

Le cahier ne contenait aucune formule – seulement ses propres notes sur leurs soirées communes, un edelweiss séché, une addition pour deux cafés. Tout à la fin, sur l'avant-dernière page, une phrase qui m'arrêta net : « Il a dit aujourd'hui que le temps n'était peut-être pas un fleuve, mais un lac dans lequel nous croyons seulement nager. » Je ne sais pas s'il l'aurait un jour publiée ou si c'était une remarque en passant faite au dîner, une de ces idées que des gens intelligents formulent puis oublient à nouveau, tandis que d'autres les portent en eux leur vie durant.

Ce qui me préoccupe dans cette trouvaille, c'est moins la proximité peut-être historique avec une pensée devenue célèbre par la suite, que le fait que personne, dans cette pièce, n'ait pu se douter de qui était assis là, à cette table. Cet employé examinait, dans la journée, les inventions d'autres gens – fers à repasser, métiers à tisser, une pédale de vélo améliorée – et la nuit, pour ma grand-tante, c'était simplement un homme avec trop peu d'argent et trop de pensées. La grandeur, je l'ai appris dans cette boîte à cigares, ne porte que rarement une enseigne à l'époque où elle se trouve. Elle habite des logements loués, mange de la charcuterie froide, est décrite par ses propriétaires comme « le monsieur discret du deuxième étage » – et ce n'est que le regard rétrospectif, cet historien cruellement précis, qui lui pose après coup la couronne que personne, à l'époque, ne voulait lui mettre.$t$,
    $t${"Meine":"ma","Großtante":"grand-tante","Rosa":"Rosa","starb":"mourut","im":"au","Frühling":"printemps","kurz":"peu","vor":"avant","ihrem":"son","hundertsten":"centième","Geburtstag":"anniversaire","und":"et","hinterließ":"laissa","eine":"un","Wohnung":"appartement","in":"où","der":"où","nichts":"rien","weggeworfen":"jeté","worden":"été","war":"avait","das":"qui","nach":"après","datierte":"datait","Zwischen":"entre","Strumpfhaltern":"jarretelles","Steuerbescheiden":"avis d'imposition","einem":"un","halben":"demi","Jahrhundert":"siècle","Weihnachtskarten":"cartes de Noël","fand":"trouvai","ich":"je","einer":"une","Zigarrenkiste":"boîte à cigares","ein":"un","Heft":"cahier","mit":"à la","blauem":"bleue","Einband":"couverture","offenbar":"manifestement","aus":"de","Bern":"Berne","stammte":"provenait","den":"les","Jahren":"années","denen":"où","dort":"y","gewisser":"certain","Angestellter":"employé","am":"à l'","Eidgenössischen":"fédéral","Amt":"office","für":"de","geistiges":"intellectuelle","Eigentum":"propriété","Patentanträge":"demandes de brevet","prüfte":"examinait","Gehalt":"salaire","seiner":"sa","Frau":"femme","zufolge":"selon","kaum":"à peine","die":"le","Miete":"loyer","reichte":"suffisait","hatte":"avait","Mann":"homme","wie":"comme","später":"plus tard","beigelegten":"jointe","Brief":"lettre","erfuhr":"appris","Berner":"bernoise","Pension":"pension","kennengelernt":"rencontré","als":"alors que","beide":"tous deux","Untermieter":"sous-locataires","bei":"chez","derselben":"la même","Wirtin":"logeuse","waren":"étaient","Sie":"elle","neunzehn":"dix-neuf","er":"lui","paar":"quelques","Jahre":"années","älter":"plus âgé","Beamter":"fonctionnaire","unordentlichem":"en désordre","Haar":"cheveux","abends":"le soir","wenn":"une fois que","Aktenstapel":"piles de dossiers","erledigt":"expédiées","Gedankenexperimente":"expériences de pensée","auf":"sur","Papierservietten":"serviettes en papier","notierte":"notait","weil":"parce que","sich":"se","teure":"coûteux","Schreibpapier":"papier à lettres","des":"de l'","Amtes":"office","nicht":"ne pas","private":"privées","Grübeleien":"rêveries","nehmen":"utiliser","wollte":"voulait","ihn":"le","schrieb":"écrivait","sie":"elle","freundlich":"aimable","aber":"mais","abwesend":"absent","würde":"comme s'il","ständig":"sans cesse","etwas":"quelque chose","Zimmer":"pièce","nebenan":"d'à côté","hören":"entendre","sonst":"d'autre","niemand":"personne","hörte":"entendait","Das":"le","enthielt":"contenait","keine":"aucune","Formeln":"formules","nur":"seulement","ihre":"ses","eigenen":"propres","Notizen":"notes","über":"sur","gemeinsamen":"communes","Abende":"soirées","gepresstes":"séché","Edelweiß":"edelweiss","Rechnung":"addition","zwei":"deux","Kaffee":"cafés","Ganz":"tout","Ende":"fin","vorletzten":"avant-dernière","Seite":"page","Satz":"phrase","mich":"m'","innehalten":"s'arrêter","ließ":"fit","Er":"il","sagte":"a dit","heute":"aujourd'hui","Zeit":"temps","sei":"était","vielleicht":"peut-être","kein":"pas un","Fluss":"fleuve","sondern":"mais","See":"lac","dem":"lequel","wir":"nous","meinen":"croyons","zu":"juste","schwimmen":"nager","Ich":"je","weiß":"sais","ob":"si","je":"jamais","veröffentlicht":"publiée","hätte":"aurait","oder":"ou","es":"c'","beiläufige":"en passant","Bemerkung":"remarque","beim":"au","Abendessen":"dîner","jener":"une de ces","Ideen":"idées","kluge":"intelligents","Menschen":"gens","aussprechen":"formulent","wieder":"de nouveau","vergessen":"oublient","während":"tandis que","andere":"d'autres","ihr":"leur","Leben":"vie","lang":"durant","tragen":"portent","Was":"ce qui","an":"dans","Fund":"trouvaille","beschäftigt":"préoccupe","ist":"est","weniger":"moins","möglicherweise":"peut-être","historische":"historique","Nähe":"proximité","berühmten":"célèbre","Denken":"pensée","Tatsache":"fait","dass":"que","jenem":"cette","geahnt":"douter","haben":"avoir","kann":"pu","wer":"qui","da":"là","Tisch":"table","saß":"était assis","Der":"cet","Angestellte":"employé","tagsüber":"dans la journée","Erfindungen":"inventions","anderer":"d'autres","Leute":"gens","Bügeleisen":"fers à repasser","Webstühle":"métiers à tisser","verbessertes":"améliorée","Fahrradpedal":"pédale de vélo","nachts":"la nuit","meine":"ma","einfach":"simplement","wenig":"peu","Geld":"argent","vielen":"trop de","Gedanken":"pensées","Größe":"grandeur","habe":"ai","gelernt":"appris","trägt":"porte","ihrer":"son","selten":"rarement","Schild":"enseigne","sitzt":"habite","Mietwohnungen":"logements loués","isst":"mange","kalten":"froide","Aufschnitt":"charcuterie","wird":"est","von":"par","Vermieterinnen":"propriétaires","stille":"discret","Herr":"monsieur","zweiten":"deuxième","Stock":"étage","beschrieben":"décrite","erst":"seulement","Rückblick":"regard rétrospectif","dieser":"cet","grausam":"cruellement","genaue":"précis","Historiker":"historien","hängt":"pose","nachträglich":"après coup","Krone":"couronne","um":"autour","damals":"à l'époque","aufsetzen":"mettre"}$t$::jsonb
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was ist die zentrale Erkenntnis der Erzählerin am Ende des Textes?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Große Persönlichkeiten sind ihrer eigenen Zeit meist unsichtbar und werden erst im Rückblick als bedeutend erkannt.$t$, true, 1),
    (v_q, $t$Berühmte Menschen erkennt man immer sofort an ihrem Auftreten.$t$, false, 2),
    (v_q, $t$Ihre Großtante wusste von Anfang an, wen sie kennengelernt hatte.$t$, false, 3),
    (v_q, $t$Patentbeamte waren im frühen 20. Jahrhundert hoch angesehen.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche These über Größe entwickelt der Text anhand des Fundes in der Zigarrenkiste?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Bedeutende Menschen leben ihre prägenden Jahre oft in unscheinbaren, alltäglichen Verhältnissen, deren Bedeutung erst die Nachwelt rückwirkend erkennt.$t$, true, 1),
    (v_q, $t$Wahre Größe zeigt sich immer schon in jungen Jahren durch äußere Anerkennung.$t$, false, 2),
    (v_q, $t$Nur Menschen mit finanziellem Erfolg werden später als bedeutend erinnert.$t$, false, 3),
    (v_q, $t$Die Erzählerin beweist, dass ihre Großtante die Bedeutung des Mannes von Anfang an erkannte.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie funktioniert die Pointe des letzten Absatzes rhetorisch?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie kontrastiert die banale zeitgenössische Wahrnehmung („der stille Herr im zweiten Stock") mit der nachträglichen historischen Deutung und macht damit den Rückblick selbst zum eigentlichen Thema.$t$, true, 1),
    (v_q, $t$Sie beweist anhand von Dokumenten zweifelsfrei die Identität des Mannes.$t$, false, 2),
    (v_q, $t$Sie stellt die Vermieterin als eigentliche Heldin der Geschichte dar.$t$, false, 3),
    (v_q, $t$Sie relativiert die Bedeutung des Mannes zugunsten der Großtante.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Ist sich die Erzählerin sicher, ob der Mann seine Bemerkung über die Zeit ernst gemeint hat?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Nein, sie weiß es nicht sicher und lässt es offen.$t$, true, 1),
    (v_q, $t$Ja, sie hat dafür einen eindeutigen Beweis.$t$, false, 2),
    (v_q, $t$Ja, die Großtante hat es ihr mündlich bestätigt.$t$, false, 3),
    (v_q, $t$Nein, sie behauptet, es sei sicher nur ein Scherz gewesen.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie geht die Erzählerin mit der Ungewissheit über die Herkunft des Zitats um?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie benennt die Unsicherheit ausdrücklich und verzichtet auf eine eindeutige historische Zuschreibung.$t$, true, 1),
    (v_q, $t$Sie präsentiert das Zitat als zweifelsfrei dokumentierte wissenschaftliche Aussage.$t$, false, 2),
    (v_q, $t$Sie ignoriert die Frage der Herkunft vollständig.$t$, false, 3),
    (v_q, $t$Sie behauptet, das Zitat stamme sicher aus einer späteren Veröffentlichung.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Funktion hat die eingestreute Unsicherheit («Ich weiß nicht, ob er das je veröffentlicht hätte…») für die Erzählhaltung insgesamt?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie unterstreicht die grundsätzliche Zurückhaltung des Textes gegenüber vorschneller Heroisierung und bewahrt die Anekdote vor spekulativer Überhöhung.$t$, true, 1),
    (v_q, $t$Sie dient allein der Spannungssteigerung vor einer späteren Auflösung.$t$, false, 2),
    (v_q, $t$Sie signalisiert, dass die Erzählerin dem Fund misstraut und ihn für eine Fälschung hält.$t$, false, 3),
    (v_q, $t$Sie zeigt, dass die Erzählerin selbst Physikerin ist und die Aussage fachlich prüfen kann.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was sagt der Mann laut dem Zitat im Heft über die Zeit?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Die Zeit sei vielleicht kein Fluss, sondern ein See, in dem man nur zu schwimmen meine.$t$, true, 1),
    (v_q, $t$Die Zeit vergehe wie Sand durch die Finger.$t$, false, 2),
    (v_q, $t$Die Zeit stehe für ihn nie still.$t$, false, 3),
    (v_q, $t$Die Zeit sei ein Geschenk, das man nicht verschwenden dürfe.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Wirkung hat das Bild vom ‚See statt Fluss' im Kontext des Textes?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Es deutet unaufdringlich eine unkonventionelle, tiefere Sicht auf Zeit an, ohne dass der Text sie wissenschaftlich einordnet oder erklärt.$t$, true, 1),
    (v_q, $t$Es beschreibt konkret ein Gewässer in der Nähe von Bern.$t$, false, 2),
    (v_q, $t$Es ist eine romantische Liebesmetapher ohne weitere Bedeutung.$t$, false, 3),
    (v_q, $t$Es widerlegt die Vorstellung, dass Zeit überhaupt vergeht.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Inwiefern spiegelt die Bild-Metapher ‚See statt Fluss' die Erzählstruktur des gesamten Textes?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Wie die Zeit im Bild eher ein stehendes, in sich verschlungenes Gewässer ist, bewegt sich auch die Erzählung nicht linear auf eine Enthüllung zu, sondern kreist rückblickend um einen Moment, dessen Bedeutung sich erst nachträglich verdichtet.$t$, true, 1),
    (v_q, $t$Die Metapher hat keinerlei Bezug zur Erzählstruktur.$t$, false, 2),
    (v_q, $t$Sie zeigt, dass die Handlung streng chronologisch von 1902 bis zur Gegenwart verläuft.$t$, false, 3),
    (v_q, $t$Sie widerspricht der übrigen Bildsprache des Textes vollständig.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$„...der abends Gedankenexperimente auf Papierservietten notierte, weil er sich das teure Schreibpapier... nicht für private Grübeleien nehmen wollte." – 'Grübeleien' bedeutet:$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$anhaltendes, oft grüblerisches Nachdenken$t$, true, 1),
    (v_q, $t$spontane Witze$t$, false, 2),
    (v_q, $t$amtliche Berichte$t$, false, 3),
    (v_q, $t$kurze Notizen ohne Bedeutung$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welches Wort ist am ehesten bedeutungsgleich mit 'Grübeleien'?$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sinnieren$t$, true, 1),
    (v_q, $t$Plaudereien$t$, false, 2),
    (v_q, $t$Anweisungen$t$, false, 3),
    (v_q, $t$Rechnungen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Konnotation trägt 'Grübeleien' im Vergleich zu einem neutraleren Wort wie 'Überlegungen'?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$es deutet ein oft zwanghaftes, in sich kreisendes, manchmal als unproduktiv empfundenes Nachdenken an, das hier ironisch auf spätere folgenreiche Gedanken verweist$t$, true, 1),
    (v_q, $t$es bezeichnet ausschließlich mathematische Berechnungen$t$, false, 2),
    (v_q, $t$es ist ein Fachbegriff aus der Rechtswissenschaft$t$, false, 3),
    (v_q, $t$es hat eine rein positive, gefeierte Konnotation$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$„Sie fand ihn... 'freundlich, aber abwesend, als ___ er ständig etwas... hören, das sonst niemand hörte.'" (Konjunktiv II mit würde-Form nach 'als')$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$würde$t$, true, 1),
    (v_q, $t$wird$t$, false, 2),
    (v_q, $t$werde$t$, false, 3),
    (v_q, $t$wurde$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Form ist in diesem irrealen Vergleichssatz mit 'als' grammatisch korrekt: „...als ___ er ständig etwas im Zimmer nebenan hören."?$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$würde$t$, true, 1),
    (v_q, $t$wird$t$, false, 2),
    (v_q, $t$werde$t$, false, 3),
    (v_q, $t$hätte$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Der Satz verwendet die würde-Form ('als würde er hören') statt der synthetischen Konjunktiv-II-Form ('als hörte er'). Was begründet diese Wahl im vorliegenden Kontext?$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Bei schwachen bzw. mehrdeutigen Verbformen, die mit dem Präteritum verwechselt werden könnten, wird die würde-Form bevorzugt, um Eindeutigkeit zu gewährleisten$t$, true, 1),
    (v_q, $t$Die synthetische Form 'hörte' existiert im Deutschen grammatisch nicht$t$, false, 2),
    (v_q, $t$Die würde-Form ist nur im Perfekt zulässig$t$, false, 3),
    (v_q, $t$Es handelt sich um einen Rechtschreibfehler im Originalzitat$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$Schreiben Sie einen Absatz (8–12 Sätze) über den Fund eines persönlichen Dokuments (Brief, Tagebuch), das eine flüchtige Begegnung mit einer später bedeutenden, damals aber unbekannten Person beschreibt. Reflektieren Sie über die Diskrepanz zwischen historischer Größe und alltäglicher Unscheinbarkeit.$t$, 1, 'normal', 'production', $t$Mein Großonkel Alois starb im Herbst, kurz vor seinem fünfundneunzigsten Geburtstag, und hinterließ eine Werkstatt, in der nichts weggeworfen worden war, das nach 1950 datierte. Zwischen alten Rechnungen und einem halben Jahrhundert Postkarten fand ich, in einer Keksdose, ein Notizbuch, das offenbar aus seiner Zeit als junger Assistent an einer Provinzsternwarte stammte, wo er für ein Gehalt arbeitete, das kaum für die Miete reichte. Alois hatte, wie ich später aus einem beigelegten Brief erfuhr, dort eine junge Studentin kennengelernt, die abends, wenn die Beobachtungen erledigt waren, Berechnungen auf Zettelrändern notierte, weil sie sich das teure Papier der Sternwarte nicht für private Grübeleien nehmen wollte. Er fand sie, schrieb er, 'freundlich, aber abwesend, als würde sie ständig etwas am Himmel sehen, das sonst niemand sah'. Das Notizbuch enthielt keine Formeln, nur seine eigenen Beobachtungen über gemeinsame Nächte am Teleskop, eine gepresste Blume, eine Rechnung für zwei Tassen Tee. Ganz am Ende ein Satz, der mich innehalten ließ: 'Sie sagte heute, die Sterne, die wir sehen, seien vielleicht längst erloschen, und wir schauten nur ihrem Licht beim Sterben zu.' Was mich an dem Fund beschäftigt, ist weniger die mögliche historische Nähe zu einer später bedeutenden Wissenschaftlerin, als die Tatsache, dass niemand in jener Sternwarte geahnt haben kann, wer da am Fernrohr stand. Größe, das habe ich in der Keksdose gelernt, trägt zu ihrer eigenen Zeit selten ein Schild.$t$);

END $block$;

-- 13. Die Fracht, die blieb
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary) VALUES (
    'C2',
    $t$Die Fracht, die blieb$t$,
    $t$Herr Brenner, der seit siebenunddreißig Jahren ein Antiquitätengeschäft in der Lübecker Altstadt führt, hat gelernt, Nachlässe mit einer bestimmten Distanz zu betrachten, die Kollegen manchmal für Herzlosigkeit halten. Wer täglich mit den Hinterlassenschaften Fremder handelt, kann sich nicht jedes Mal rühren lassen, sonst hält man das Geschäft keine zwei Jahre durch. Als ihm im vergangenen Winter der Dachboden eines Hauses am Hafen angeboten wurde, rechnete er mit Porzellan, vielleicht mit ein paar Seemannskisten. Er fand ein in Schweinsleder gebundenes Kontobuch, dessen Papier so brüchig war, dass er es zunächst nicht zu öffnen wagte.

Es stammte, wie sich bei näherer Prüfung zeigte, aus dem sechzehnten Jahrhundert, geführt von einem Kaufmann, der Salz, Hering und Tuch zwischen Lübeck, Bergen und Nowgorod verschiffte - ein kleines Rädchen jenes hanseatischen Handelsnetzes, das einst halb Nordeuropa mit Waren und, wie Brenner findet, mit einer bestimmten Sorte Selbstgewissheit versorgte. Zeile für Zeile las er Schulden, die nie beglichen wurden, Verluste durch Sturm, einen Streit um verdorbenes Getreide, der über zwei Seiten in zunehmend zorniger Handschrift ausgetragen wurde. Am Rand einer Seite, offenbar Jahre später von anderer Hand hinzugefügt, stand nur: „Alles verloren, Schiff und Bruder."

Brenner, der mit solchen Dingen sein Geld verdient, wusste sofort, was das Buch auf einer Auktion einbringen würde. Und doch blieb er, wie er später zugab, länger über den Seiten sitzen, als geschäftlich zu rechtfertigen war. Was ihn hielt, war nicht die Handelsware selbst, sondern die Beiläufigkeit, mit der Aufstieg und Ruin in derselben Tinte notiert waren, ohne dass die Feder zwischen beidem einen Unterschied im Duktus gemacht hätte. Der Kaufmann hatte, das ließ sich aus späteren Einträgen erschließen, sein Vermögen nie zurückgewonnen; die Hanse selbst, das wusste Brenner aus eigener Bildung, sollte wenige Jahrhunderte später ebenso unauffällig verschwinden, wie sie einst mächtig geworden war - kein Untergang mit Pauken, sondern ein langsames Versickern von Handelswegen, die anderswo neu entstanden.

Er verkaufte das Buch schließlich an ein Museum, zu einem Preis, über den er zufrieden war. Aber etwas an der Sache ließ ihn nicht los: dass ein Handelsnetz, das ganze Küsten prägte, am Ende in genau solchen Kammern endet - vergessen zwischen Dachbalken, bis jemand wie er, der selbst vom Verkaufen fremder Erinnerungen lebt, es zufällig wieder ans Licht zieht. Erinnerung, dachte er, ist auch nur eine Ware, die man rechtzeitig bergen muss, bevor der Dachboden einstürzt.$t$,
    $t$Monsieur Brenner, qui dirige depuis trente-sept ans un magasin d'antiquités dans la vieille ville de Lübeck, a appris à considérer les successions avec une certaine distance que ses collègues prennent parfois pour de l'insensibilité. Celui qui traite quotidiennement des biens laissés par des inconnus ne peut pas se laisser émouvoir à chaque fois, sinon on ne tient pas dans ce commerce deux ans. Lorsqu'on lui proposa, l'hiver dernier, le grenier d'une maison du port, il s'attendait à de la porcelaine, peut-être à quelques coffres de marin. Il trouva un livre de comptes relié en peau de porc, dont le papier était si friable qu'il n'osa d'abord pas l'ouvrir.

Il provenait, comme un examen plus approfondi le révéla, du seizième siècle, tenu par un marchand qui expédiait du sel, du hareng et du drap entre Lübeck, Bergen et Novgorod – un petit rouage de ce réseau commercial hanséatique qui avait jadis approvisionné la moitié de l'Europe du Nord en marchandises et, comme le pense Brenner, en une certaine sorte d'assurance de soi. Ligne après ligne, il lisait des dettes jamais réglées, des pertes dues à une tempête, une querelle au sujet de blé avarié qui s'était réglée sur deux pages dans une écriture de plus en plus rageuse. Dans la marge d'une page, apparemment ajoutée des années plus tard d'une autre main, se trouvaient seulement ces mots : « Tout perdu, navire et frère. »

Brenner, qui gagne sa vie avec ce genre de choses, sut aussitôt ce que le livre rapporterait dans une vente aux enchères. Et pourtant, il resta, comme il l'avoua plus tard, plus longtemps penché sur ces pages que ne le justifiait la logique commerciale. Ce qui le retenait, ce n'était pas la marchandise elle-même, mais la désinvolture avec laquelle l'ascension et la ruine étaient consignées de la même encre, sans que la plume n'eût fait la moindre différence de trait entre les deux. Le marchand, put-on déduire d'entrées ultérieures, n'avait jamais recouvré sa fortune ; la Hanse elle-même, Brenner le savait par sa propre culture, devait, quelques siècles plus tard, disparaître tout aussi discrètement qu'elle était jadis devenue puissante – non pas un naufrage à grand fracas, mais une lente infiltration des routes commerciales, qui renaissaient ailleurs.

Il finit par vendre le livre à un musée, à un prix dont il fut satisfait. Mais quelque chose dans cette affaire ne le lâchait pas : qu'un réseau commercial qui avait marqué des côtes entières finisse, au bout du compte, dans des recoins exactement semblables – oublié entre des poutres de grenier, jusqu'à ce que quelqu'un comme lui, qui vit lui-même de la vente de souvenirs étrangers, le ramène par hasard à la lumière. Le souvenir, pensa-t-il, n'est lui aussi qu'une marchandise qu'il faut mettre à l'abri à temps, avant que le grenier ne s'effondre.$t$,
    $t${"Herr":"monsieur","Brenner":"Brenner","der":"qui","seit":"depuis","siebenunddreißig":"trente-sept","Jahren":"ans","ein":"un","Antiquitätengeschäft":"magasin d'antiquités","in":"dans","Lübecker":"de Lübeck","Altstadt":"vieille ville","führt":"dirige","hat":"a","gelernt":"appris","Nachlässe":"successions","mit":"avec","einer":"une","bestimmten":"certaine","Distanz":"distance","zu":"à","betrachten":"considérer","die":"que","Kollegen":"collègues","manchmal":"parfois","für":"pour","Herzlosigkeit":"insensibilité","halten":"prendre","Wer":"celui qui","täglich":"quotidiennement","den":"les","Hinterlassenschaften":"biens laissés","Fremder":"d'inconnus","handelt":"traite","kann":"peut","sich":"se","nicht":"ne pas","jedes":"chaque","Mal":"fois","rühren":"émouvoir","lassen":"laisser","sonst":"sinon","hält":"tient","man":"on","das":"ce","Geschäft":"commerce","keine":"pas","zwei":"deux","Jahre":"ans","durch":"tient","Als":"lorsque","ihm":"lui","im":"l'","vergangenen":"dernier","Winter":"hiver","Dachboden":"grenier","eines":"d'une","Hauses":"maison","am":"du","Hafen":"port","angeboten":"proposé","wurde":"fut","rechnete":"s'attendait","er":"il","Porzellan":"porcelaine","vielleicht":"peut-être","paar":"quelques","Seemannskisten":"coffres de marin","Er":"il","fand":"trouva","Schweinsleder":"peau de porc","gebundenes":"relié","Kontobuch":"livre de comptes","dessen":"dont","Papier":"papier","so":"si","brüchig":"friable","war":"était","dass":"que","es":"l'","zunächst":"d'abord","öffnen":"ouvrir","wagte":"osa","Es":"il","stammte":"provenait","wie":"comme","bei":"par","näherer":"plus approfondi","Prüfung":"examen","zeigte":"révéla","aus":"du","dem":"le","sechzehnten":"seizième","Jahrhundert":"siècle","geführt":"tenu","von":"par","einem":"un","Kaufmann":"marchand","Salz":"sel","Hering":"hareng","und":"et","Tuch":"drap","zwischen":"entre","Lübeck":"Lübeck","Bergen":"Bergen","Nowgorod":"Novgorod","verschiffte":"expédiait","kleines":"petit","Rädchen":"rouage","jenes":"ce","hanseatischen":"hanséatique","Handelsnetzes":"réseau commercial","einst":"jadis","halb":"la moitié de","Nordeuropa":"Europe du Nord","Waren":"marchandises","findet":"pense","Sorte":"sorte","Selbstgewissheit":"assurance de soi","versorgte":"approvisionnait","Zeile":"ligne","las":"lisait","Schulden":"dettes","nie":"jamais","beglichen":"réglées","wurden":"étaient","Verluste":"pertes","Sturm":"tempête","einen":"une","Streit":"querelle","um":"au sujet de","verdorbenes":"avarié","Getreide":"blé","über":"sur","Seiten":"pages","zunehmend":"de plus en plus","zorniger":"rageuse","Handschrift":"écriture","ausgetragen":"réglée","Am":"dans la","Rand":"marge","Seite":"page","offenbar":"apparemment","später":"plus tard","anderer":"une autre","Hand":"main","hinzugefügt":"ajoutée","stand":"se trouvaient","nur":"seulement","Alles":"tout","verloren":"perdu","Schiff":"navire","Bruder":"frère","solchen":"ce genre de","Dingen":"choses","sein":"sa","Geld":"vie","verdient":"gagne","wusste":"sut","sofort":"aussitôt","was":"ce que","Buch":"livre","auf":"dans","Auktion":"vente aux enchères","einbringen":"rapporterait","würde":"rapporterait","Und":"et","doch":"pourtant","blieb":"resta","zugab":"avoua","länger":"plus longtemps","sitzen":"penché","als":"que","geschäftlich":"la logique commerciale","rechtfertigen":"justifiait","Was":"ce qui","ihn":"le","hielt":"retenait","Handelsware":"marchandise","selbst":"elle-même","sondern":"mais","Beiläufigkeit":"désinvolture","Aufstieg":"ascension","Ruin":"ruine","derselben":"la même","Tinte":"encre","notiert":"consignées","waren":"étaient","ohne":"sans","Feder":"plume","beidem":"les deux","Unterschied":"différence","Duktus":"trait","gemacht":"fait","hätte":"eût","Der":"le","hatte":"avait","ließ":"put","späteren":"ultérieures","Einträgen":"entrées","erschließen":"déduire","Vermögen":"fortune","zurückgewonnen":"recouvré","Hanse":"Hanse","eigener":"propre","Bildung":"culture","sollte":"devait","wenige":"quelques","Jahrhunderte":"siècles","ebenso":"tout aussi","unauffällig":"discrètement","verschwinden":"disparaître","sie":"elle","mächtig":"puissante","geworden":"devenue","kein":"non pas un","Untergang":"naufrage","Pauken":"grand fracas","langsames":"lente","Versickern":"infiltration","Handelswegen":"routes commerciales","anderswo":"ailleurs","neu":"de nouveau","entstanden":"naissaient","verkaufte":"vendit","schließlich":"finalement","an":"à","Museum":"musée","Preis":"prix","zufrieden":"satisfait","Aber":"mais","etwas":"quelque chose","Sache":"affaire","los":"lâchait","Handelsnetz":"réseau commercial","ganze":"entières","Küsten":"côtes","prägte":"marqué","Ende":"bout","genau":"exactement","Kammern":"recoins","endet":"finisse","vergessen":"oublié","Dachbalken":"poutres de grenier","bis":"jusqu'à ce que","jemand":"quelqu'un","vom":"de la","Verkaufen":"vente","fremder":"étrangers","Erinnerungen":"souvenirs","lebt":"vit","zufällig":"par hasard","wieder":"de nouveau","ans":"à la","zieht":"ramène","Erinnerung":"souvenir","dachte":"pensa","ist":"est","auch":"aussi","eine":"une","Ware":"marchandise","rechtzeitig":"à temps","bergen":"mettre à l'abri","muss":"faut","bevor":"avant que","einstürzt":"s'effondre","Licht":"lumière"}$t$::jsonb
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was verbindet den Untergang des Kaufmanns im Kontobuch mit der Geschichte der Hanse?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Beide endeten nicht abrupt, sondern durch ein allmähliches, unauffälliges Verschwinden.$t$, true, 1),
    (v_q, $t$Beide gingen durch einen einzigen großen Krieg unter.$t$, false, 2),
    (v_q, $t$Beide wurden durch staatliche Verbote beendet.$t$, false, 3),
    (v_q, $t$Beide erlebten nie einen wirtschaftlichen Rückgang.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Parallele zieht der Text zwischen dem individuellen Schicksal des Kaufmanns und dem der Hanse insgesamt?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$So wie der Ruin des Kaufmanns in der Handschrift kaum vom vorherigen Aufschwung zu unterscheiden ist, verschwand auch die Hanse nicht dramatisch, sondern durch ein leises Versickern ihrer Handelswege.$t$, true, 1),
    (v_q, $t$Der Kaufmann war ein direkter Vorfahre eines späteren Hansevorstehers.$t$, false, 2),
    (v_q, $t$Beide scheiterten an denselben rechtlichen Vorschriften.$t$, false, 3),
    (v_q, $t$Die Hanse profitierte direkt von den Verlusten des Kaufmanns.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie funktioniert die Beobachtung über den ‚gleichen Duktus' der Feder als strukturierendes Motiv des Textes?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie verweist stilistisch darauf, dass der Text selbst Aufstieg und Verfall - individuell wie kollektiv - ohne moralisierenden Kontrast erzählt und damit Geschichte als ununterscheidbaren Fluss von Gewinn und Verlust darstellt.$t$, true, 1),
    (v_q, $t$Sie zeigt lediglich, dass der Kaufmann ein besonders ordentlicher Schreiber war.$t$, false, 2),
    (v_q, $t$Sie beweist, dass das Kontobuch später gefälscht wurde.$t$, false, 3),
    (v_q, $t$Sie dient allein der Beschreibung der physischen Beschaffenheit des Papiers.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie reagiert Brenner entgegen seiner beruflichen Gewohnheit auf den Fund?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er bleibt länger über den Seiten sitzen, als es geschäftlich nötig wäre.$t$, true, 1),
    (v_q, $t$Er verkauft das Buch sofort, ohne es zu lesen.$t$, false, 2),
    (v_q, $t$Er weigert sich, das Buch anzunehmen.$t$, false, 3),
    (v_q, $t$Er zeigt keinerlei Interesse an dem Inhalt.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was verrät die ungewöhnlich lange Beschäftigung Brenners mit dem Kontobuch über seinen Charakter?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Trotz seiner professionell antrainierten Distanz wird er von der beiläufigen Erzählung menschlichen Scheiterns unerwartet berührt.$t$, true, 1),
    (v_q, $t$Er ist in Wirklichkeit ein ausgebildeter Historiker, der beruflich fehl am Platz ist.$t$, false, 2),
    (v_q, $t$Er zweifelt an der Echtheit des Fundes und prüft ihn deshalb genauer.$t$, false, 3),
    (v_q, $t$Er hofft, durch längeres Lesen den Verkaufspreis erhöhen zu können.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Spannung baut der Text zwischen Brenners Berufsethos und seiner tatsächlichen Reaktion auf?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Die eingangs betonte notwendige emotionale Distanz des Händlers wird durch seine Reaktion auf das Kontobuch unterlaufen und relativiert damit implizit die Behauptung, man müsse sich beruflich unberührt zeigen.$t$, true, 1),
    (v_q, $t$Der Text bestätigt durchgehend, dass Brenner völlig gefühllos bleibt.$t$, false, 2),
    (v_q, $t$Brenners Berufsethos wird im Text nicht thematisiert.$t$, false, 3),
    (v_q, $t$Die Spannung löst sich dadurch auf, dass Brenner den Beruf wechselt.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Womit vergleicht Brenner am Ende die Erinnerung?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Mit einer Ware, die man rechtzeitig bergen muss.$t$, true, 1),
    (v_q, $t$Mit einem Schiff, das nie sinkt.$t$, false, 2),
    (v_q, $t$Mit einem Schatz, der wertlos ist.$t$, false, 3),
    (v_q, $t$Mit einem Buch, das niemand lesen will.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie ist die abschließende Formulierung ‚Erinnerung ist auch nur eine Ware' zu verstehen?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie deutet an, dass Erinnerung wie eine Handelsware dem Verfall und Vergessen ausgesetzt ist, wenn niemand sie rechtzeitig bewahrt.$t$, true, 1),
    (v_q, $t$Sie bedeutet wörtlich, dass Brenner mit Erinnerungen im herkömmlichen Sinn handelt.$t$, false, 2),
    (v_q, $t$Sie ist ironisch gemeint und leugnet jeden Wert von Erinnerung.$t$, false, 3),
    (v_q, $t$Sie bezieht sich ausschließlich auf den materiellen Wert des Kontobuchs.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Inwiefern schließt der letzte Satz den Kreis zur Eingangsreflexion über Brenners berufliche Distanz?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Indem er Erinnerung selbst zur Handelsware erklärt, verwandelt der Text Brenners professionelle Rettung von Nachlässen in eine Parallele zum hanseatischen Handel, den das Kontobuch dokumentiert - Bergung wird so zur eigentlichen Form des Gedenkens.$t$, true, 1),
    (v_q, $t$Der letzte Satz widerspricht der Eingangsreflexion vollständig und wird daher als Widerspruch im Text markiert.$t$, false, 2),
    (v_q, $t$Er bezieht sich ausschließlich auf den Museumsverkauf und hat keine metaphorische Funktion.$t$, false, 3),
    (v_q, $t$Er stellt fest, dass Brenner künftig auf den Handel mit alten Dokumenten verzichten wird.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$„...ohne dass die Feder zwischen beidem einen Unterschied im Duktus gemacht hätte." – 'Duktus' bedeutet:$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$charakteristischer Schriftzug, Stil einer Handschrift$t$, true, 1),
    (v_q, $t$der Preis eines Buches$t$, false, 2),
    (v_q, $t$die Menge des verwendeten Papiers$t$, false, 3),
    (v_q, $t$eine amtliche Unterschrift$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welches Wort ist bedeutungsähnlich zu 'Duktus' im gegebenen Kontext?$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Schreibstil$t$, true, 1),
    (v_q, $t$Inhaltsverzeichnis$t$, false, 2),
    (v_q, $t$Auflage$t$, false, 3),
    (v_q, $t$Rechtschreibung$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was genau meint der Text mit „ohne dass die Feder... einen Unterschied im Duktus gemacht hätte"?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$die Handschrift des Kaufmanns blieb bei der Notierung von Aufstieg und Ruin gleichermaßen ruhig und unverändert, was die emotionale Distanz des Schreibers unterstreicht$t$, true, 1),
    (v_q, $t$der Kaufmann benutzte für Gewinne und Verluste zwei unterschiedliche Federn$t$, false, 2),
    (v_q, $t$die Handschrift wurde im Laufe der Jahre unleserlich$t$, false, 3),
    (v_q, $t$der Duktus bezieht sich auf die Handelsroute des Kaufmanns$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Relativsatz zu Partizipialattribut: „ein Kontobuch, das in Schweinsleder gebunden war" → erweitertes Attribut:$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$ein in Schweinsleder gebundenes Kontobuch$t$, true, 1),
    (v_q, $t$ein Schweinsleder-gebundenes-Kontobuch$t$, false, 2),
    (v_q, $t$ein Kontobuch, in Schweinsleder gebunden habend$t$, false, 3),
    (v_q, $t$ein zu bindendes Schweinsleder-Kontobuch$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Formen Sie den Relativsatz in ein erweitertes Partizipialattribut um: „ein Kaufmann, der Salz, Hering und Tuch verschiffte" →$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$ein Salz, Hering und Tuch verschiffender Kaufmann$t$, true, 1),
    (v_q, $t$ein Salz, Hering und Tuch verschiffter Kaufmann$t$, false, 2),
    (v_q, $t$ein zu verschiffender Kaufmann$t$, false, 3),
    (v_q, $t$ein verschiffter Kaufmann für Salz, Hering und Tuch$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Regel bestimmt, ob bei der Bildung eines erweiterten Partizipialattributs aus einem Relativsatz Partizip I oder Partizip II verwendet wird?$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Partizip I (Präsens, aktivisch) wird bei einer andauernden oder gleichzeitigen Handlung des Bezugswortes verwendet, Partizip II (meist passivisch bzw. abgeschlossen) bei einer bereits abgeschlossenen Handlung oder einem passivischen Bezug$t$, true, 1),
    (v_q, $t$Partizip I wird nur bei weiblichen Substantiven verwendet$t$, false, 2),
    (v_q, $t$Die Wahl ist völlig beliebig und stilistisch irrelevant$t$, false, 3),
    (v_q, $t$Partizip II wird nur bei Verben der Bewegung verwendet$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$Schreiben Sie einen Absatz (8–12 Sätze) über den Fund eines alten Handels- oder Geschäftsbuches, das den Aufstieg und Niedergang eines historischen Unternehmens oder Handelsnetzes dokumentiert. Ziehen Sie eine Parallele zwischen individuellem Schicksal und dem Verschwinden größerer historischer Strukturen.$t$, 1, 'normal', 'production', $t$Frau Ohlendorf, die seit fünfundzwanzig Jahren ein Antiquitätengeschäft in der Hamburger Speicherstadt führt, hat gelernt, Nachlässe mit einer gewissen professionellen Distanz zu betrachten, die manche Kollegen für Kälte halten. Als ihr im vergangenen Sommer der Dachboden eines Kontorhauses angeboten wurde, rechnete sie mit Porzellan, vielleicht mit ein paar Schiffsmodellen. Sie fand ein in braunes Leder gebundenes Handelsbuch, dessen brüchige Seiten sie zunächst kaum zu öffnen wagte. Es stammte, wie sich zeigte, aus dem achtzehnten Jahrhundert, geführt von einem Kaufmann, der Gewürze, Baumwolle und Porzellan zwischen Hamburg, London und Batavia verschiffte, ein kleines Rädchen jenes weitverzweigten Kolonialhandelsnetzes, das einst halb Europa mit Waren versorgte. Zeile für Zeile las sie von Gewinnen, die in schwindelerregende Höhen stiegen, und von einem einzigen verheerenden Sturm, der binnen einer Nacht drei Schiffe und damit fast das gesamte Vermögen verschlang. Am Rand einer späteren Seite, offenbar von anderer Hand hinzugefügt, stand nur: 'Alles verloren, Haus und Namen.' Was sie hielt, war nicht der Marktwert des Buches, sondern die Beiläufigkeit, mit der Aufstieg und Ruin in derselben gleichmäßigen Handschrift notiert waren, ohne dass die Feder je einen Unterschied im Duktus gemacht hätte. Das Handelsnetz selbst, das ganze Kontinente prägte, sollte wenige Jahrzehnte später ebenso unauffällig verschwinden, wie es einst mächtig geworden war.$t$);

END $block$;

-- 14. Die Fähre unter dem Felsen
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary) VALUES (
    'C2',
    $t$Die Fähre unter dem Felsen$t$,
    $t$Klaus fährt die Fähre zwischen St. Goarshausen und St. Goar seit einunddreißig Jahren, an manchen Tagen zwanzigmal hin und zurück, und der Felsen über ihm ist ihm in dieser Zeit so vertraut geworden wie ein Nachbar, dem man nie besonders viel Beachtung schenkt, obwohl er einem täglich über die Schulter blickt. Touristen fragen ihn regelmäßig nach der Loreley, nach dem Mädchen, das angeblich auf dem Felsen saß und mit ihrem Gesang die Schiffer in den Tod lockte, und Klaus antwortet dann höflich, aber mit der leichten Ermüdung eines Mannes, der eine Legende so oft wiederholt hat, dass sie sich für ihn in reine Routine verwandelt hat, wie ein Warnschild, das man nicht mehr liest.

Und doch, das gibt er nur zu, wenn die letzte Fähre am Abend fährt und keine Touristen mehr an Bord sind, gibt es Momente, in denen er die Geschichte fast versteht. Wenn das Licht im Herbst so tief steht, dass der Rhein wie geschmolzenes Metall wirkt, und der Felsen eine Silhouette wird, die schwerer aussieht, als Stein eigentlich sein dürfte, dann kann er sich vorstellen, wie einem Schiffer in vergangenen Jahrhunderten, müde und allein auf dem Wasser, in diesem Licht jede Erklärung außer einer verzauberten willkommen gewesen wäre. Nicht weil er an Nixen glaubt, sondern weil er weiß, wie leicht ein erschöpfter Mensch das Schöne mit dem Gefährlichen verwechselt, gerade dort, wo der Fluss sich verengt und die Strömung, ganz ohne Zutun eines singenden Mädchens, tatsächlich tückisch wird.

Seine Frau hat ihn vor zwei Jahren verlassen, für einen Mann aus Koblenz, den Klaus nie kennengelernt hat und auch nicht kennenlernen will, und seither, das gesteht er sich nur auf dem Wasser ein, versteht er die alte Geschichte noch etwas anders: nicht als Warnung vor einer Frau, die lockt, sondern als Bild für das, was man selbst in einen Ort, einen Menschen, ein Gefühl hineinlegt, bis man nicht mehr unterscheiden kann, ob die Gefahr von außen kam oder man sie sich, aus Sehnsucht nach Bedeutung, selbst gesungen hat. Der Fels bleibt Fels, gleichgültig, wie das Licht auf ihn fällt. Die Strömung war schon gefährlich, bevor irgendjemand ein Lied dazu erfand.

Am Ende jeder Fahrt legt Klaus die Fähre routiniert am Anleger an, hilft den letzten Fahrgästen an Land und schaut, bevor er die Lichter löscht, noch einmal kurz hinauf zum Felsen, aus einer Gewohnheit, die er selbst nicht mehr für Aberglauben hält, sondern für etwas, das ihm inzwischen einfach zur Höflichkeit gegenüber der eigenen Geschichte des Ortes geworden ist.$t$,
    $t$Klaus pilote le bac entre Sankt Goarshausen et Sankt Goar depuis trente et un ans, certains jours vingt fois dans chaque sens, et le rocher au-dessus de lui lui est devenu, en tout ce temps, aussi familier qu'un voisin auquel on ne prête jamais une attention particulière, bien qu'il regarde par-dessus votre épaule tous les jours. Les touristes l'interrogent régulièrement sur la Loreley, sur la jeune fille qui, dit-on, était assise sur le rocher et attirait les bateliers vers la mort par son chant, et Klaus répond alors poliment, mais avec la lassitude légère d'un homme qui a répété une légende si souvent qu'elle s'est transformée pour lui en pure routine, comme un panneau d'avertissement qu'on ne lit plus.

Et pourtant, il ne l'admet que lorsque le dernier bac fait la traversée le soir et qu'il n'y a plus de touristes à bord : il existe des moments où il comprend presque cette histoire. Quand la lumière, en automne, est si basse que le Rhin ressemble à du métal en fusion, et que le rocher devient une silhouette qui paraît plus lourde qu'une pierre ne devrait l'être, il peut alors s'imaginer combien, pour un batelier des siècles passés, fatigué et seul sur l'eau, dans cette lumière, toute explication sauf une explication enchantée aurait été bienvenue. Non parce qu'il croit aux ondines, mais parce qu'il sait combien il est facile pour un être humain épuisé de confondre le beau avec le dangereux, précisément là où le fleuve se resserre et où le courant, sans le moindre concours d'une jeune fille chantante, devient réellement traître.

Sa femme l'a quitté il y a deux ans, pour un homme de Coblence que Klaus n'a jamais rencontré et ne souhaite pas non plus rencontrer, et depuis lors, ce qu'il ne s'avoue qu'à lui-même sur l'eau, il comprend cette vieille histoire un peu différemment : non plus comme la mise en garde contre une femme qui séduit, mais comme l'image de ce qu'on projette soi-même sur un lieu, une personne, un sentiment, jusqu'à ne plus pouvoir distinguer si le danger venait de l'extérieur ou si on se l'était soi-même chanté, par désir de signification. Le rocher reste un rocher, indifférent à la façon dont la lumière tombe sur lui. Le courant était déjà dangereux avant que quiconque n'invente une chanson à son sujet.

À la fin de chaque traversée, Klaus amarre le bac au quai avec la routine habituelle, aide les derniers passagers à débarquer et, avant d'éteindre les lumières, jette encore un bref regard vers le rocher, par une habitude qu'il ne considère lui-même plus comme de la superstition, mais comme quelque chose qui est simplement devenu pour lui, entre-temps, une marque de politesse envers la propre histoire de ce lieu.$t$,
    $t${"Klaus":"Klaus","fährt":"pilote","die":"le","Fähre":"bac","zwischen":"entre","St":"Saint","Goarshausen":"Goarshausen","und":"et","Goar":"Goar","seit":"depuis","einunddreißig":"trente et un","Jahren":"ans","an":"certains","manchen":"certains","Tagen":"jours","zwanzigmal":"vingt fois","hin":"dans un sens","zurück":"et retour","der":"le","Felsen":"rocher","über":"au-dessus de","ihm":"lui","ist":"est","in":"en","dieser":"tout ce","Zeit":"temps","so":"aussi","vertraut":"familier","geworden":"devenu","wie":"que","ein":"un","Nachbar":"voisin","dem":"auquel","man":"on","nie":"jamais","besonders":"particulière","viel":"une","Beachtung":"attention","schenkt":"prête","obwohl":"bien que","er":"il","einem":"votre","täglich":"tous les jours","Schulter":"épaule","blickt":"regarde","Touristen":"touristes","fragen":"interrogent","ihn":"l'","regelmäßig":"régulièrement","nach":"sur","Loreley":"Loreley","Mädchen":"jeune fille","das":"qui","angeblich":"dit-on","auf":"sur","saß":"était assise","mit":"par","ihrem":"son","Gesang":"chant","Schiffer":"bateliers","den":"la","Tod":"mort","lockte":"attirait","antwortet":"répond","dann":"alors","höflich":"poliment","aber":"mais","leichten":"légère","Ermüdung":"lassitude","eines":"d'un","Mannes":"homme","eine":"une","Legende":"légende","oft":"souvent","wiederholt":"répété","hat":"a","dass":"que","sie":"elle","sich":"se","für":"pour","reine":"pure","Routine":"routine","verwandelt":"transformée","Warnschild":"panneau d'avertissement","nicht":"ne plus","mehr":"plus","liest":"lit","Und":"et","doch":"pourtant","gibt":"admet","nur":"seulement","zu":"admet","wenn":"lorsque","letzte":"dernier","am":"le","Abend":"soir","keine":"plus de","Bord":"bord","sind":"sont","es":"il","Momente":"moments","denen":"où","Geschichte":"histoire","fast":"presque","versteht":"comprend","Wenn":"quand","Licht":"lumière","im":"en","Herbst":"automne","tief":"basse","steht":"est","Rhein":"Rhin","geschmolzenes":"en fusion","Metall":"métal","wirkt":"ressemble","Silhouette":"silhouette","wird":"devient","schwerer":"plus lourde","aussieht":"paraît","als":"qu'","Stein":"pierre","eigentlich":"en réalité","sein":"être","dürfte":"devrait","kann":"peut","vorstellen":"imaginer","vergangenen":"passés","Jahrhunderten":"siècles","müde":"fatigué","allein":"seul","Wasser":"eau","diesem":"cette","jede":"toute","Erklärung":"explication","außer":"sauf","einer":"une","verzauberten":"enchantée","willkommen":"bienvenue","gewesen":"été","wäre":"aurait","Nicht":"non","weil":"parce que","Nixen":"ondines","glaubt":"croit","sondern":"mais","weiß":"sait","leicht":"facile","erschöpfter":"épuisé","Mensch":"être humain","Schöne":"beau","Gefährlichen":"dangereux","verwechselt":"confonde","gerade":"précisément","dort":"là","wo":"où","Fluss":"fleuve","verengt":"resserre","Strömung":"courant","ganz":"tout à fait","ohne":"sans","Zutun":"concours","singenden":"chantante","Mädchens":"jeune fille","tatsächlich":"réellement","tückisch":"traître","Seine":"sa","Frau":"femme","vor":"il y a","zwei":"deux","verlassen":"quittée","einen":"un","Mann":"homme","aus":"de","Koblenz":"Coblence","kennengelernt":"rencontré","auch":"non plus","kennenlernen":"rencontrer","will":"veut","seither":"depuis lors","gesteht":"avoue","alte":"vieille","noch":"encore","etwas":"un peu","anders":"différemment","Warnung":"mise en garde","lockt":"séduit","Bild":"image","was":"ce que","selbst":"soi-même","Ort":"lieu","Menschen":"personne","Gefühl":"sentiment","hineinlegt":"projette","bis":"jusqu'à","unterscheiden":"distinguer","ob":"si","Gefahr":"danger","von":"de","außen":"l'extérieur","kam":"venait","oder":"ou","Sehnsucht":"désir","Bedeutung":"signification","gesungen":"chanté","Der":"le","Fels":"rocher","bleibt":"reste","gleichgültig":"indifférent","fällt":"tombe","Die":"le","war":"était","schon":"déjà","gefährlich":"dangereux","bevor":"avant que","irgendjemand":"quiconque","Lied":"chanson","dazu":"à son sujet","erfand":"invente","Am":"à la","Ende":"fin","jeder":"chaque","Fahrt":"traversée","legt":"amarre","routiniert":"avec la routine habituelle","Anleger":"quai","hilft":"aide","letzten":"derniers","Fahrgästen":"passagers","Land":"débarquer","schaut":"jette un regard","Lichter":"lumières","löscht":"éteindre","einmal":"encore","kurz":"bref","hinauf":"vers le haut","zum":"vers le","Gewohnheit":"habitude","Aberglauben":"superstition","hält":"considère","inzwischen":"entre-temps","einfach":"simplement","zur":"une","Höflichkeit":"politesse","gegenüber":"envers","eigenen":"propre","des":"de ce","Ortes":"lieu"}$t$::jsonb
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie reagiert Klaus normalerweise auf die Fragen der Touristen zur Loreley?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Mit höflicher, aber routinierter Ermüdung, da er die Geschichte schon zu oft erzählt hat.$t$, true, 1),
    (v_q, $t$Mit großer Begeisterung, da er fest an die Sage glaubt.$t$, false, 2),
    (v_q, $t$Er weigert sich grundsätzlich, über die Legende zu sprechen.$t$, false, 3),
    (v_q, $t$Er erzählt jedes Mal eine völlig neue Version der Geschichte.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie verändert sich Klaus' Verhältnis zur Legende je nach Tageszeit und Publikum?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Tagsüber gegenüber Touristen wirkt sie wie abgenutzte Routine, doch allein am Abend erlaubt er sich, die emotionale Logik der Sage fast nachzuvollziehen.$t$, true, 1),
    (v_q, $t$Er glaubt tagsüber fest an die Sage und zweifelt erst abends daran.$t$, false, 2),
    (v_q, $t$Seine Haltung zur Legende bleibt zu jeder Tageszeit unverändert.$t$, false, 3),
    (v_q, $t$Er erzählt die Legende nur noch abends, tagsüber verweigert er jede Auskunft.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Funktion hat der Kontrast zwischen der tagsüber ‚abgenutzten' und der abends ‚fast verstandenen' Legende für die Erzählperspektive?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er markiert den Unterschied zwischen der Legende als touristischem Klischee und ihrer möglichen psychologischen Wahrheit, die sich nur in Momenten der Einsamkeit und besonderen Lichts erschließt.$t$, true, 1),
    (v_q, $t$Er zeigt, dass Klaus insgeheim an übernatürliche Wesen glaubt.$t$, false, 2),
    (v_q, $t$Er dient nur der Beschreibung der Arbeitszeiten der Fähre.$t$, false, 3),
    (v_q, $t$Er widerlegt jede symbolische Lesart der Legende zugunsten einer rein touristischen.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was ist vor zwei Jahren in Klaus' Leben geschehen?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Seine Frau hat ihn für einen anderen Mann verlassen.$t$, true, 1),
    (v_q, $t$Er hat einen Schiffsunfall erlitten.$t$, false, 2),
    (v_q, $t$Er ist nach Koblenz umgezogen.$t$, false, 3),
    (v_q, $t$Er hat die Fähre gekauft.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie deutet Klaus die Loreley-Legende nach der Trennung von seiner Frau neu?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Als Bild dafür, dass Menschen selbst Bedeutung und Gefahr in Orte oder Gefühle hineinlegen, statt dass diese ausschließlich von außen kommen.$t$, true, 1),
    (v_q, $t$Als Beweis dafür, dass Frauen grundsätzlich gefährlich sind.$t$, false, 2),
    (v_q, $t$Als reine Ablenkung von seinem persönlichen Kummer, ohne inhaltlichen Bezug dazu.$t$, false, 3),
    (v_q, $t$Als Bestätigung, dass die Legende historisch wahr ist.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Inwiefern verschiebt Klaus' persönliche Erfahrung die traditionelle moralische Lesart der Loreley-Sage?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Statt die Sage als Warnung vor einer verführerischen Frau zu lesen, deutet er sie um in eine Reflexion über die eigene Projektion von Sehnsucht und Bedeutung auf äußere Umstände.$t$, true, 1),
    (v_q, $t$Er übernimmt die traditionelle Lesart unverändert und bestätigt sie durch seine eigene Erfahrung.$t$, false, 2),
    (v_q, $t$Er lehnt jede symbolische Deutung der Sage grundsätzlich ab.$t$, false, 3),
    (v_q, $t$Er überträgt die Schuld der Sage vollständig auf den Mann aus Koblenz.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was stellt Klaus über den Felsen und die Strömung fest?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Der Felsen bleibt gleichgültig, und die Strömung war schon gefährlich, bevor es das Lied gab.$t$, true, 1),
    (v_q, $t$Der Felsen verändert sich je nach Legende.$t$, false, 2),
    (v_q, $t$Die Strömung wurde erst durch das Lied gefährlich.$t$, false, 3),
    (v_q, $t$Der Felsen ist inzwischen völlig ungefährlich.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Aussage über die Beziehung von Mythos und Realität trifft der Schluss des Textes?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Die reale Gefahr der Strömung existierte unabhängig vom Mythos, der ihr nachträglich eine erklärende, aber nicht ursächliche Bedeutung verlieh.$t$, true, 1),
    (v_q, $t$Der Mythos hat die reale Gefahr der Strömung überhaupt erst entstehen lassen.$t$, false, 2),
    (v_q, $t$Ohne den Mythos wäre die Stelle am Rhein völlig ungefährlich.$t$, false, 3),
    (v_q, $t$Mythos und Realität werden im Text als identisch dargestellt.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie verhält sich die Schlussreflexion über Fels und Strömung zur zuvor entwickelten psychologischen Deutung der Legende?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie ergänzt die psychologische Lesart um eine nüchterne Erdung: Während der Mensch Bedeutung in die Landschaft hineinprojiziert, bleibt die materielle Gefahr des Ortes davon unberührt und vorgängig - beide Ebenen, das Reale und das Gedeutete, existieren nebeneinander, ohne sich gegenseitig aufzuheben.$t$, true, 1),
    (v_q, $t$Sie widerlegt die psychologische Deutung vollständig, indem sie die Sage als objektiv wahr bestätigt.$t$, false, 2),
    (v_q, $t$Sie hat keinerlei Bezug zur vorherigen Reflexion und wirkt wie ein Fremdkörper.$t$, false, 3),
    (v_q, $t$Sie zeigt, dass Klaus die Gefahr der Strömung stark übertreibt.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$„...die Strömung... tatsächlich tückisch wird." – 'tückisch' bedeutet:$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$heimtückisch gefährlich, hinterlistig bedrohlich$t$, true, 1),
    (v_q, $t$sanft und beruhigend$t$, false, 2),
    (v_q, $t$sichtbar und vorhersehbar$t$, false, 3),
    (v_q, $t$vollkommen harmlos$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welches Wort ist bedeutungsverwandt mit 'tückisch'?$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$heimtückisch$t$, true, 1),
    (v_q, $t$gutmütig$t$, false, 2),
    (v_q, $t$berechenbar$t$, false, 3),
    (v_q, $t$gemächlich$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Nuance unterscheidet 'tückisch' von schlicht 'gefährlich' im Kontext der Strömung des Rheins?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$'tückisch' betont eine trügerische, oft verborgene Gefahr, die sich erst zeigt, wenn man sie unterschätzt, während 'gefährlich' eine offen erkennbare Bedrohung meint$t$, true, 1),
    (v_q, $t$'tückisch' bezieht sich ausschließlich auf menschliches Verhalten$t$, false, 2),
    (v_q, $t$'tückisch' bedeutet, dass etwas garantiert sicher ist$t$, false, 3),
    (v_q, $t$'tückisch' ist ein veralteter Ausdruck ohne heutige Verwendung$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$„...wie einem Schiffer... jede Erklärung außer einer verzauberten willkommen gewesen ___." (Konjunktiv II Plusquamperfekt)$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$wäre$t$, true, 1),
    (v_q, $t$war$t$, false, 2),
    (v_q, $t$sei$t$, false, 3),
    (v_q, $t$würde sein$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Form drückt eine hypothetische, irreale Vergangenheit korrekt aus: „...wie es einem müden Schiffer in vergangenen Jahrhunderten jede zauberhafte Erklärung willkommen gewesen ___"?$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$wäre$t$, true, 1),
    (v_q, $t$ist$t$, false, 2),
    (v_q, $t$sei$t$, false, 3),
    (v_q, $t$wird$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum wird im Satz „...in diesem Licht jede Erklärung außer einer verzauberten willkommen gewesen wäre" Konjunktiv II Plusquamperfekt statt Konjunktiv I verwendet?$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$weil es sich um eine hypothetische, kontrafaktische Vorstellung (nicht um wiedergegebene fremde Rede) handelt, die eine irreale, abgeschlossene Möglichkeit in der Vergangenheit ausdrückt$t$, true, 1),
    (v_q, $t$weil Konjunktiv I bei diesem Verb grammatisch nicht existiert$t$, false, 2),
    (v_q, $t$weil der Satz eine tatsächlich geschehene Handlung beschreibt$t$, false, 3),
    (v_q, $t$weil es sich um einen direkten Zitatsatz handelt$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$Schreiben Sie einen Absatz (8–12 Sätze) aus der Perspektive einer Person, die an einem sagenumwobenen Ort beruflich tätig ist (Fährmann, Wanderführer, Museumswärter) und im Laufe der Zeit eine persönliche, von eigenen Lebenserfahrungen geprägte Deutung der Legende entwickelt.$t$, 1, 'normal', 'production', $t$Marta führt Touristengruppen seit siebzehn Jahren durch die Ruinen der alten Burg über dem Tal, an manchen Tagen fünfmal denselben Rundgang, und die Sage von der verfluchten Burgherrin, die angeblich noch immer in den Gemäuern spukt, hat sich für sie längst in reine Routine verwandelt, wie ein Text, den man so oft vorgetragen hat, dass man ihn kaum noch hört. Und doch, das gibt sie nur zu, wenn die letzte Führung am Abend endet und keine Besucher mehr in den Gängen sind, gibt es Momente, in denen sie die Geschichte fast versteht. Wenn das Licht im Winter so tief steht, dass die Steinmauern golden schimmern und lange Schatten werfen, kann sie sich vorstellen, wie einer einsamen Frau in vergangenen Jahrhunderten in diesem Licht jede Erklärung außer einer geisterhaften willkommen gewesen wäre. Nicht weil sie an Spuk glaubt, sondern weil sie weiß, wie leicht ein einsamer Mensch das Vertraute mit dem Unheimlichen verwechselt, gerade an einem Ort, an dem der Wind durch leere Fensterhöhlen tatsächlich unheimlich pfeift. Ihr Mann hat sie vor drei Jahren verlassen, und seither versteht sie die alte Geschichte noch etwas anders: nicht als Warnung vor einer rachsüchtigen Toten, sondern als Bild für das, was man selbst in einen Ort, ein Gefühl hineinlegt, bis man nicht mehr unterscheiden kann, ob die Kälte von den Mauern kam oder man sie sich, aus Einsamkeit, selbst eingebildet hat.$t$);

END $block$;

-- 15. Die Halle, die wir aufrichteten
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary) VALUES (
    'C2',
    $t$Die Halle, die wir aufrichteten$t$,
    $t$Herr Wittek ist einundneunzig und erzählt die Geschichte seiner ersten Arbeitswochen im Werk noch immer in derselben Reihenfolge, als hätte er sie sich vor Jahrzehnten zurechtgelegt und seither nie wieder überprüft: die eingestürzten Hallendächer, durch die es hineinregnete auf Maschinen, die halb unter Schutt begraben waren; die Kälte des ersten Winters nach dem Krieg, in dem man mit bloßen Händen Trümmer sortierte, weil es an Handschuhen fehlte wie an fast allem sonst; und schließlich, nach Monaten, das erste Fahrzeug, das über das noch unbefestigte Fabrikgelände rollte, begleitet von einem Applaus, der ihm im Rückblick eigenartig gedämpft vorkommt, wie durch Watte gehört.

Er war siebzehn, als er anfing, zu jung eigentlich, aber die Firma nahm, was sie bekommen konnte, und was sie bekam, waren größtenteils Halbwüchsige, Kriegsversehrte und Frauen, die zuvor nie in einer Fabrik gearbeitet hatten. Niemand von ihnen, sagt Wittek, habe damals an so etwas wie „Wiederaufbau der Nation" gedacht; man dachte an die nächste Mahlzeit, an ein Paar trockene Schuhe, an den Bruder, der nicht aus Russland zurückgekommen war. Die großen Worte kamen erst später, aus Reden von Leuten, die selbst nie eine Schraube angezogen hatten.

Und doch, gibt er zu, wenn er heute mit seinem Rollator am Zaun des Werksgeländes vorbeikommt, das inzwischen fünfmal so groß ist wie damals und mit einer Architektur glänzt, die er nicht mehr wiedererkennt, überkommt ihn etwas, das er selbst nur zögernd als Stolz bezeichnet, weil ihm das Wort zu groß erscheint für das, was er als junger Mann getan hat: einfach hingehen, jeden Tag, auch wenn der Magen leer war und die Hoffnung noch leerer. Er weiß, dass Historiker das später ein Wunder genannt haben, und er weiß auch, wie sehr ihn dieses Wort ärgert, weil es die Kälte vergessen macht, die Blasen an den Händen, die Kollegen, die nach einem Jahr noch immer nicht wussten, ob ihre Familien den Krieg überlebt hatten.

Was bleibt, wenn man einundneunzig ist und fast alle, die neben einem in der Halle standen, schon gestorben sind, ist eine seltsam nüchterne Genugtuung, die mit Nationalstolz wenig zu tun hat: die Erinnerung, dass man in einer Zeit, in der fast nichts mehr trug, mit den eigenen Händen etwas hat tragen helfen, das andere - Kinder, Enkel, fremde Familien in fernen Ländern, die später in diesen Autos saßen - später einfach benutzten, ohne zu fragen, wer die Hallen aufgerichtet hatte, in denen alles begann.$t$,
    $t$Monsieur Wittek a quatre-vingt-onze ans et raconte encore aujourd'hui l'histoire de ses premières semaines de travail à l'usine toujours dans le même ordre, comme s'il l'avait fixée une fois pour toutes il y a des décennies et ne l'avait plus jamais vérifiée depuis : les toits d'atelier effondrés à travers lesquels la pluie tombait sur des machines à moitié ensevelies sous les gravats ; le froid du premier hiver après la guerre, où l'on triait les décombres à mains nues, faute de gants, comme de presque tout le reste ; et enfin, après des mois, le premier véhicule qui roula sur le terrain de l'usine encore non stabilisé, accompagné d'applaudissements qui, avec le recul, lui semblent étrangement étouffés, comme entendus à travers de l'ouate.

Il avait dix-sept ans quand il commença, trop jeune en réalité, mais l'entreprise prenait ce qu'elle pouvait trouver, et ce qu'elle trouvait, c'était pour l'essentiel des adolescents, des invalides de guerre et des femmes qui n'avaient jamais travaillé auparavant dans une usine. Aucun d'entre eux, dit Wittek, n'aurait alors pensé à quelque chose comme la « reconstruction de la nation » ; on pensait au prochain repas, à une paire de chaussures sèches, au frère qui n'était pas revenu de Russie. Les grands mots ne vinrent que plus tard, tirés des discours de gens qui n'avaient eux-mêmes jamais serré une seule vis.

Et pourtant, admet-il, quand il passe aujourd'hui avec son déambulateur devant la clôture du site de l'usine, cinq fois plus grand qu'à l'époque et brillant d'une architecture qu'il ne reconnaît plus, quelque chose le saisit, qu'il n'ose lui-même qualifier qu'avec hésitation de fierté, parce que ce mot lui paraît trop grand pour ce qu'il a fait, jeune homme : simplement s'y rendre, chaque jour, même quand l'estomac était vide et l'espoir plus vide encore. Il sait que les historiens ont appelé cela plus tard un miracle, et il sait aussi combien ce mot l'agace, parce qu'il fait oublier le froid, les ampoules aux mains, les collègues qui, un an plus tard, ne savaient toujours pas si leurs familles avaient survécu à la guerre.

Ce qui reste, quand on a quatre-vingt-onze ans et que presque tous ceux qui se tenaient à ses côtés dans l'atelier sont déjà morts, c'est une satisfaction étrangement sobre qui n'a que peu à voir avec la fierté nationale : le souvenir qu'en un temps où presque plus rien ne tenait debout, on a aidé, de ses propres mains, à porter quelque chose que d'autres – enfants, petits-enfants, familles étrangères dans des pays lointains, qui plus tard s'assirent dans ces voitures – utilisèrent ensuite simplement, sans se demander qui avait érigé les ateliers où tout avait commencé.$t$,
    $t${"Herr":"monsieur","Wittek":"Wittek","ist":"a","einundneunzig":"quatre-vingt-onze","und":"et","erzählt":"raconte","die":"l'","Geschichte":"histoire","seiner":"ses","ersten":"premières","Arbeitswochen":"semaines de travail","im":"à l'","Werk":"usine","noch":"encore","immer":"toujours","in":"dans","derselben":"le même","Reihenfolge":"ordre","als":"comme","hätte":"avait","er":"il","sie":"l'","sich":"fixée","vor":"il y a","Jahrzehnten":"décennies","zurechtgelegt":"fixée","seither":"depuis","nie":"jamais","wieder":"plus","überprüft":"vérifiée","eingestürzten":"effondrés","Hallendächer":"toits d'atelier","durch":"à travers","es":"il","hineinregnete":"tombait","auf":"sur","Maschinen":"machines","halb":"à moitié","unter":"sous","Schutt":"gravats","begraben":"ensevelies","waren":"étaient","Kälte":"froid","des":"du","Winters":"hiver","nach":"après","dem":"la","Krieg":"guerre","man":"on","mit":"à","bloßen":"nues","Händen":"mains","Trümmer":"décombres","sortierte":"triait","weil":"faute de","Handschuhen":"gants","fehlte":"manquait","wie":"comme","fast":"presque","allem":"tout","sonst":"reste","schließlich":"enfin","Monaten":"mois","das":"le","erste":"premier","Fahrzeug":"véhicule","über":"sur","unbefestigte":"non stabilisé","Fabrikgelände":"terrain de l'usine","rollte":"roula","begleitet":"accompagné","von":"d'","einem":"des","Applaus":"applaudissements","der":"qui","ihm":"lui","Rückblick":"recul","eigenartig":"étrangement","gedämpft":"étouffés","vorkommt":"semblent","Watte":"ouate","gehört":"entendus","Er":"il","war":"avait","siebzehn":"dix-sept","anfing":"commença","zu":"trop","jung":"jeune","eigentlich":"en réalité","aber":"mais","Firma":"entreprise","nahm":"prenait","was":"ce que","bekommen":"trouver","konnte":"pouvait","bekam":"trouvait","größtenteils":"pour l'essentiel","Halbwüchsige":"adolescents","Kriegsversehrte":"invalides de guerre","Frauen":"femmes","zuvor":"auparavant","einer":"une","Fabrik":"usine","gearbeitet":"travaillé","hatten":"avaient","Niemand":"aucun","ihnen":"d'entre eux","sagt":"dit","habe":"aurait","damals":"alors","so":"quelque chose comme","etwas":"quelque chose","Wiederaufbau":"reconstruction","Nation":"nation","gedacht":"pensé","dachte":"pensait","nächste":"prochain","Mahlzeit":"repas","ein":"une","Paar":"paire","trockene":"sèches","Schuhe":"chaussures","den":"le","Bruder":"frère","nicht":"pas","aus":"de","Russland":"Russie","zurückgekommen":"revenu","Die":"les","großen":"grands","Worte":"mots","kamen":"vinrent","erst":"ne...que","später":"plus tard","Reden":"discours","Leuten":"gens","selbst":"eux-mêmes","eine":"une","Schraube":"vis","angezogen":"serré","Und":"et","doch":"pourtant","gibt":"admet","wenn":"quand","heute":"aujourd'hui","seinem":"son","Rollator":"déambulateur","am":"devant la","Zaun":"clôture","Werksgeländes":"site de l'usine","vorbeikommt":"passe","inzwischen":"désormais","fünfmal":"cinq fois","groß":"grand","Architektur":"architecture","glänzt":"brille","mehr":"plus","wiedererkennt":"reconnaît","überkommt":"saisit","ihn":"le","nur":"seulement","zögernd":"avec hésitation","Stolz":"fierté","bezeichnet":"qualifier","Wort":"mot","erscheint":"paraît","für":"pour","junger":"jeune","Mann":"homme","getan":"fait","hat":"a","einfach":"simplement","hingehen":"s'y rendre","jeden":"chaque","Tag":"jour","auch":"même","Magen":"estomac","leer":"vide","Hoffnung":"espoir","leerer":"plus vide","weiß":"sait","dass":"que","Historiker":"historiens","Wunder":"miracle","genannt":"appelé","haben":"ont","sehr":"combien","dieses":"ce","ärgert":"agace","vergessen":"oublier","macht":"fait","Blasen":"ampoules","Kollegen":"collègues","Jahr":"an","wussten":"savaient","ob":"si","ihre":"leurs","Familien":"familles","überlebt":"survécu","Was":"ce qui","bleibt":"reste","alle":"tous","neben":"à côté","Halle":"atelier","standen":"se tenaient","schon":"déjà","gestorben":"morts","sind":"sont","seltsam":"étrangement","nüchterne":"sobre","Genugtuung":"satisfaction","Nationalstolz":"fierté nationale","wenig":"peu","tun":"voir","Erinnerung":"souvenir","Zeit":"temps","nichts":"rien","trug":"tenait debout","eigenen":"propres","tragen":"porter","helfen":"aidé","andere":"d'autres","Kinder":"enfants","Enkel":"petits-enfants","fremde":"étrangères","fernen":"lointains","Ländern":"pays","diesen":"ces","Autos":"voitures","saßen":"s'assirent","benutzten":"utilisèrent","ohne":"sans","fragen":"se demander","wer":"qui","Hallen":"ateliers","aufgerichtet":"érigé","hatte":"avait","denen":"où","alles":"tout","begann":"commença","an":"de"}$t$::jsonb
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Woran dachten die Arbeiter laut Wittek in den ersten Nachkriegsjahren wirklich, statt an den ‚Wiederaufbau der Nation'?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$An die nächste Mahlzeit, trockene Schuhe und vermisste Angehörige.$t$, true, 1),
    (v_q, $t$An patriotische Reden und nationale Symbole.$t$, false, 2),
    (v_q, $t$An ihre Karriere im Unternehmen.$t$, false, 3),
    (v_q, $t$An internationalen Ruhm für ihre Arbeit.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie verhält sich laut Text die zeitgenössische Motivation der Arbeiter zur späteren offiziellen Deutung ihrer Leistung?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Die Arbeiter handelten aus schierer Notwendigkeit des Überlebens, während der Begriff des ‚nationalen Wiederaufbaus' erst nachträglich von Außenstehenden hinzugefügt wurde.$t$, true, 1),
    (v_q, $t$Beide stimmen genau überein, da die Arbeiter von Anfang an patriotisch motiviert waren.$t$, false, 2),
    (v_q, $t$Die offizielle Deutung wurde von den Arbeitern selbst geprägt.$t$, false, 3),
    (v_q, $t$Die Arbeiter lehnten die spätere Deutung offen und öffentlich ab.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Kritik an historischer Sinnstiftung lässt sich aus der Bemerkung ableiten, die großen Worte seien ‚von Leuten gekommen, die selbst nie eine Schraube angezogen hatten'?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Der Text stellt implizit infrage, wer das Recht hat, gelebte Erfahrung nachträglich mit bedeutungsschweren historischen Narrativen zu versehen, und markiert eine Kluft zwischen erlebter Praxis und rückblickender Deutung.$t$, true, 1),
    (v_q, $t$Er kritisiert ausschließlich die technische Unfähigkeit der Firmenleitung.$t$, false, 2),
    (v_q, $t$Er lobt die Reden als notwendige Ergänzung zur praktischen Arbeit.$t$, false, 3),
    (v_q, $t$Er zeigt, dass Wittek selbst später eine Führungsposition anstrebte.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie reagiert Wittek auf das Wort ‚Wunder' (Wirtschaftswunder)?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Es ärgert ihn, weil es die Härte und das Leid jener Zeit vergessen macht.$t$, true, 1),
    (v_q, $t$Er findet das Wort völlig treffend.$t$, false, 2),
    (v_q, $t$Er hat davon noch nie gehört.$t$, false, 3),
    (v_q, $t$Es macht ihn stolz und zufrieden.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum lehnt Wittek die Bezeichnung ‚Wunder' für die damalige Aufbauleistung innerlich ab?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Weil der Begriff die konkrete körperliche und emotionale Härte der Arbeit - Kälte, Blasen, Ungewissheit über Angehörige - unsichtbar macht.$t$, true, 1),
    (v_q, $t$Weil er der Meinung ist, es habe damals gar keinen wirtschaftlichen Aufschwung gegeben.$t$, false, 2),
    (v_q, $t$Weil er glaubt, das Wort werde nur für andere Branchen verwendet.$t$, false, 3),
    (v_q, $t$Weil er selbst nie an dem Wiederaufbau beteiligt war.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was verrät Witteks Widerstand gegen das Wort ‚Wunder' über das Verhältnis von individueller Erinnerung und kollektivem Gedächtnis, das der Text entwickelt?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er zeigt, wie ein glättender, mythisierender Begriff die konkrete, leidvolle Erfahrung Einzelner in ein abstraktes, positives Kollektivnarrativ überführt und dabei genau die Härten tilgt, die die Erfahrung ausmachten.$t$, true, 1),
    (v_q, $t$Er beweist, dass Wittek die offizielle Geschichtsschreibung für grundsätzlich falsch hält.$t$, false, 2),
    (v_q, $t$Er zeigt, dass Wittek den Begriff ursprünglich selbst geprägt hat.$t$, false, 3),
    (v_q, $t$Er hat keine Verbindung zum übrigen Text und steht isoliert.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wer benutzt laut dem letzten Absatz später die Autos, ohne zu wissen, wer die Hallen aufgebaut hat?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Kinder, Enkel und fremde Familien in fernen Ländern.$t$, true, 1),
    (v_q, $t$Nur die ehemaligen Arbeiter selbst.$t$, false, 2),
    (v_q, $t$Ausschließlich die Firmenleitung.$t$, false, 3),
    (v_q, $t$Historiker und Journalisten.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Art von Genugtuung beschreibt der Schluss des Textes, und wovon grenzt er sie ab?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Eine stille, nüchterne Genugtuung über die eigene, meist anonym gebliebene Mitwirkung, ausdrücklich abgegrenzt von Nationalstolz.$t$, true, 1),
    (v_q, $t$Einen ausgeprägten Nationalstolz, der die persönliche Erinnerung überlagert.$t$, false, 2),
    (v_q, $t$Bitterkeit darüber, dass die eigene Arbeit nie irgendeine Wirkung hatte.$t$, false, 3),
    (v_q, $t$Freude über finanziellen Wohlstand, den die Arbeit ihm später brachte.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie verbindet der Schlussabsatz die Anonymität der Arbeit mit der zuvor entwickelten Kritik am Begriff ‚Wunder'?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Beide Male wird sichtbar, dass das Ergebnis kollektiver, harter Arbeit im Nachhinein von denen genutzt oder gedeutet wird, die die konkrete Mühe dahinter weder kannten noch danach fragten - ob Nutzer der Autos oder Verfasser großer Reden.$t$, true, 1),
    (v_q, $t$Der Schlussabsatz widerspricht der Kritik am Begriff ‚Wunder', indem er die Arbeit nun doch als wundersam darstellt.$t$, false, 2),
    (v_q, $t$Es besteht keine inhaltliche Verbindung zwischen beiden Passagen.$t$, false, 3),
    (v_q, $t$Der Schlussabsatz zeigt, dass Wittek inzwischen selbst stolz auf den Begriff ‚Wunder' ist.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$„...was sie bekam, waren größtenteils Halbwüchsige, Kriegsversehrte und Frauen..." – 'Kriegsversehrte' bedeutet:$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Menschen, die im Krieg körperlich verletzt oder verstümmelt wurden$t$, true, 1),
    (v_q, $t$Menschen, die den Krieg propagandistisch unterstützten$t$, false, 2),
    (v_q, $t$Menschen, die aus dem Krieg finanziell profitierten$t$, false, 3),
    (v_q, $t$Menschen, die freiwillig in den Krieg zogen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welches Wort ist bedeutungsnah zu 'Kriegsversehrte'?$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Kriegsinvalide$t$, true, 1),
    (v_q, $t$Kriegsgewinnler$t$, false, 2),
    (v_q, $t$Kriegsveteranen im Sinne von Ehrenämtern$t$, false, 3),
    (v_q, $t$Kriegsbefürworter$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche gesellschaftliche Realität der unmittelbaren Nachkriegszeit wird durch die Aufzählung „Halbwüchsige, Kriegsversehrte und Frauen, die zuvor nie in einer Fabrik gearbeitet hatten" angedeutet?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$dass in der Nachkriegszeit vor allem jene Bevölkerungsgruppen die Arbeit übernahmen, die zuvor nicht zur regulären Arbeiterschaft gezählt hatten, weil die männliche Erwerbsbevölkerung im Krieg gefallen, gefangen oder verwundet war$t$, true, 1),
    (v_q, $t$dass die Fabrik ausschließlich hochqualifizierte Fachkräfte beschäftigte$t$, false, 2),
    (v_q, $t$dass Frauen schon vor dem Krieg die Mehrheit der Industriearbeiter stellten$t$, false, 3),
    (v_q, $t$dass die genannten Gruppen freiwillig auf eine Anstellung verzichteten$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$„Er weiß, dass Historiker das später ein Wunder genannt haben." → indirekte Rede: „Er weiß, Historiker ___ das später ein Wunder genannt." (Konjunktiv, da Indikativform mit Konjunktiv I zusammenfällt)$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$hätten$t$, true, 1),
    (v_q, $t$haben$t$, false, 2),
    (v_q, $t$habe$t$, false, 3),
    (v_q, $t$hatten$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum wird bei „Historiker haben das ein Wunder genannt" in indirekter Rede die Konjunktiv-II-Form 'hätten' statt 'haben' (Konjunktiv I) verwendet?$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$weil die Konjunktiv-I-Form 'haben' in der 3. Person Plural mit dem Indikativ identisch ist und deshalb durch Konjunktiv II ersetzt wird$t$, true, 1),
    (v_q, $t$weil 'hätten' die einzig existierende Form des Verbs 'haben' ist$t$, false, 2),
    (v_q, $t$weil es sich um eine Verneinung handelt$t$, false, 3),
    (v_q, $t$weil das Verb im Perfekt keine indirekte Rede erlaubt$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche vollständige, grammatisch korrekte indirekte Wiedergabe von „Historiker haben das später ein Wunder genannt" ist stilistisch am angemessensten für einen gehobenen Text?$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er weiß, dass Historiker das später ein Wunder genannt hätten.$t$, true, 1),
    (v_q, $t$Er weiß, dass Historiker das später ein Wunder nennen.$t$, false, 2),
    (v_q, $t$Er weiß, dass Historiker das später ein Wunder genannt haben werden.$t$, false, 3),
    (v_q, $t$Er weiß, dass Historiker das später ein Wunder nannten.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$Schreiben Sie einen Absatz (8–12 Sätze) aus der Rückschau einer sehr alten Person, die von einer entbehrungsreichen Zeit des Wiederaufbaus (nach einer Katastrophe, einem Krieg, einer Krise) erzählt und dabei zwischen nüchterner Erinnerung an die eigenen Härten und dem später von außen zugeschriebenen heroischen Narrativ unterscheidet.$t$, 1, 'normal', 'production', $t$Frau Herzberg ist neunundachtzig und erzählt die Geschichte ihrer ersten Jahre in der wiederaufgebauten Genossenschaftsdruckerei noch immer in derselben Reihenfolge, als hätte sie sie sich vor Jahrzehnten zurechtgelegt und seither nie wieder überprüft: die zerstörten Druckmaschinen, die man aus dem Schutt bergen musste; die Kälte des ersten Winters, in dem man mit vernähten Handschuhen arbeitete, weil neue nicht aufzutreiben waren; und schließlich, nach Monaten, das erste gedruckte Heft, das durch die Werkstatt gereicht wurde, begleitet von einem Applaus, der ihr im Rückblick seltsam gedämpft vorkommt. Sie war neunzehn, als sie anfing, und was die Genossenschaft damals bekam, waren größtenteils junge Frauen und Kriegsversehrte, die zuvor nie in einer Druckerei gearbeitet hatten. Niemand von ihnen, sagt sie, habe an so etwas wie 'demokratischen Neuanfang' gedacht; man dachte an die nächste Mahlzeit, an trockene Schuhe, an den Vater, der aus der Gefangenschaft nicht zurückgekehrt war. Die großen Worte kamen erst später, aus Reden von Leuten, die selbst nie an einer Maschine gestanden hatten. Und doch, gibt sie zu, wenn sie heute am Zaun der inzwischen fünfmal so großen Druckerei vorbeikommt, überkommt sie etwas, das sie nur zögernd als Stolz bezeichnet. Sie weiß, dass Historiker das später ein Wunder genannt hätten, und sie weiß auch, wie sehr sie dieses Wort ärgert, weil es die Kälte vergessen macht, die Blasen an den Händen, die Kolleginnen, die noch Jahre später nicht wussten, ob ihre Familien den Krieg überlebt hatten.$t$);

END $block$;

-- 16. Der Schatten des Junkers Jörg
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary) VALUES (
    'C2',
    $t$Der Schatten des Junkers Jörg$t$,
    $t$Man hatte mir eingeschärft, ihn niemals beim Namen zu nennen. Für die Wachen war er Junker Jörg, ein Edelmann auf Reisen, der sich das Haar hatte wachsen lassen und einen Bart trug wie ein Mann, dem die Eitelkeit abhandengekommen ist. Ich, die Magd, die ihm dreimal täglich das Essen brachte, wusste es besser, doch schwieg ich, wie man von mir verlangte, und lernte dabei, wie viel Schweigen eine Festung braucht, um ein Geheimnis zu tragen.

Sein Zimmer roch nach Tinte und nach etwas Bitterem, das ich erst später als Angst erkannte. Tagsüber hörte man kein Wort aus der Kammer, nur das Kratzen der Feder, unaufhörlich, wie ein Nagen im Gebälk. Nachts aber sprach er, mit sich selbst oder mit einem Gegner, den nur er sah, und einmal fand ich am Morgen einen Tintenfleck an der Wand, höher, als ein Mensch werfen sollte, und er sagte nur, der Teufel habe ihm die Arbeit stören wollen. Ich fragte nicht weiter. Man fragt einen Mann nicht, der die Bibel ins Deutsche zwingt, wie ein Bauer den Acker zwingt, ob er dabei auch schlafe.

Was mich wunderte, war die Ungeduld, mit der er die Wörter suchte, als läge irgendwo im Volk, in der Küche, auf dem Markt, die richtige Münze für einen Satz, den die Gelehrten bislang nur in totem Latein besessen hatten. Einmal rief er mich zu sich, weil er wissen wollte, wie wir ein Wort für das nannten, was der Wind mit den Wolken tat, bevor der Sturm losbrach. Ich sagte es ihm, ein einfaches Wort, das jedes Kind kannte, und er schrieb es auf, als hätte ich ihm ein Goldstück gereicht. Erst Jahre später, als ich das gedruckte Buch in Händen hielt, begriff ich, dass er von uns allen genommen hatte, von der Magd, vom Fuhrmann, von der Marktfrau, und uns dafür etwas zurückgab, das größer war als wir.

Ich verließ die Wartburg, ehe er sie verließ. Man erzählte sich später, er sei hager geworden dort oben, von Kopfschmerzen geplagt und von Zweifeln, die er mit Arbeit erschlug, weil Untätigkeit dem Teufel die Tür öffnete. Ich weiß nur, dass ein Mann, der eine Sprache neu schmiedet, dabei selbst zu Eisen wird, gehämmert und gehärtet, bis er das Feuer nicht mehr fühlt, das ihn geformt hat. Wenn ich heute das Wort Barmherzigkeit lese, höre ich manchmal noch die Feder kratzen, dort oben, im Dunkeln, wo ein verkleideter Mönch der deutschen Zunge ihre Stimme lieh.$t$,
    $t$On m'avait bien fait comprendre qu'il ne fallait jamais l'appeler par son nom. Pour les gardes, il était le Junker Jörg, un noble en voyage, qui avait laissé pousser ses cheveux et portait la barbe comme un homme à qui la vanité aurait fait défaut. Moi, la servante qui lui apportait trois fois par jour son repas, j'en savais davantage, mais je me taisais, comme on me l'exigeait, et j'appris ainsi combien de silence il faut à une forteresse pour porter un secret.

Sa chambre sentait l'encre et quelque chose d'amer que je ne reconnus que plus tard comme de la peur. De jour, on n'entendait pas un mot venant de la pièce, seulement le grattement de la plume, incessant, comme un rongement dans la charpente. Mais la nuit, il parlait, à lui-même ou à un adversaire que lui seul voyait, et une fois je trouvai le matin une tache d'encre sur le mur, plus haute qu'un homme ne devrait pouvoir la lancer, et il dit seulement que le diable avait voulu déranger son travail. Je ne posai pas d'autres questions. On n'interroge pas un homme qui force la Bible à passer en allemand, comme un paysan force la terre, pour savoir s'il dort ce faisant.

Ce qui m'étonnait, c'était l'impatience avec laquelle il cherchait les mots, comme si la juste monnaie pour une phrase, que les savants n'avaient jusque-là possédée qu'en latin mort, se trouvait quelque part dans le peuple, à la cuisine, sur le marché. Une fois, il m'appela à lui parce qu'il voulait savoir comment nous nommions ce que le vent faisait avec les nuages avant que l'orage n'éclate. Je le lui dis, un mot simple que tout enfant connaissait, et il l'écrivit comme si je lui avais tendu une pièce d'or. Ce n'est que des années plus tard, quand je tins le livre imprimé entre mes mains, que je compris qu'il avait pris à nous tous, à la servante, au charretier, à la marchande du marché, et qu'il nous avait rendu en échange quelque chose de plus grand que nous.

Je quittai la Wartburg avant qu'il ne la quitte lui-même. On raconta plus tard qu'il était devenu maigre, là-haut, tourmenté par des maux de tête et par des doutes qu'il terrassait à coups de travail, parce que l'oisiveté ouvrait la porte au diable. Je sais seulement qu'un homme qui forge une langue à neuf se change lui-même, ce faisant, en fer, martelé et trempé, jusqu'à ne plus sentir le feu qui l'a façonné. Quand je lis aujourd'hui le mot miséricorde, j'entends parfois encore la plume gratter, là-haut, dans l'obscurité, où un moine déguisé prêta sa voix à la langue allemande.$t$,
    $t${"Man":"on","hatte":"avait","mir":"m'","eingeschärft":"bien fait comprendre","ihn":"l'","niemals":"jamais","beim":"par son","Namen":"nom","zu":"à","nennen":"appeler","Für":"pour","die":"les","Wachen":"gardes","war":"était","er":"il","Junker":"Junker","Jörg":"Jörg","ein":"un","Edelmann":"noble","auf":"en","Reisen":"voyage","der":"qui","sich":"se","das":"que","Haar":"cheveux","wachsen":"pousser","lassen":"laisser","und":"et","einen":"la","Bart":"barbe","trug":"portait","wie":"comme","Mann":"homme","dem":"à qui","Eitelkeit":"vanité","abhandengekommen":"fait défaut","ist":"aurait","Ich":"moi","Magd":"servante","ihm":"lui","dreimal":"trois fois","täglich":"par jour","Essen":"repas","brachte":"apportait","wusste":"savais","es":"en","besser":"davantage","doch":"mais","schwieg":"taisais","ich":"je","man":"on","von":"de","verlangte":"exigeait","lernte":"appris","dabei":"ainsi","viel":"combien","Schweigen":"silence","eine":"une","Festung":"forteresse","braucht":"faut","um":"pour","Geheimnis":"secret","tragen":"porter","Sein":"sa","Zimmer":"chambre","roch":"sentait","nach":"l'","Tinte":"encre","etwas":"quelque chose","Bitterem":"d'amer","erst":"ne...que","später":"plus tard","als":"comme","Angst":"peur","erkannte":"reconnus","Tagsüber":"de jour","hörte":"entendait","kein":"pas un","Wort":"mot","aus":"venant de","Kammer":"pièce","nur":"seulement","Kratzen":"grattement","Feder":"plume","unaufhörlich":"incessant","Nagen":"rongement","im":"dans la","Gebälk":"charpente","Nachts":"la nuit","aber":"mais","sprach":"parlait","mit":"à","selbst":"lui-même","oder":"ou","einem":"un","Gegner":"adversaire","den":"que","sah":"voyait","einmal":"une fois","fand":"trouvai","am":"le","Morgen":"matin","Tintenfleck":"tache d'encre","an":"sur","Wand":"mur","höher":"plus haute","Mensch":"homme","werfen":"lancer","sollte":"devrait","sagte":"dit","Teufel":"diable","habe":"avait","Arbeit":"travail","stören":"déranger","wollen":"voulu","fragte":"posai","nicht":"pas","weiter":"d'autres","fragt":"interroge","Bibel":"Bible","ins":"en","Deutsche":"allemand","zwingt":"force","Bauer":"paysan","Acker":"terre","ob":"si","auch":"aussi","schlafe":"dort","Was":"ce qui","mich":"m'","wunderte":"étonnait","Ungeduld":"impatience","Wörter":"mots","suchte":"cherchait","läge":"se trouvait","irgendwo":"quelque part","Volk":"peuple","in":"à","Küche":"cuisine","Markt":"marché","richtige":"juste","Münze":"monnaie","für":"pour","Satz":"phrase","Gelehrten":"savants","bislang":"jusque-là","totem":"mort","Latein":"latin","besessen":"possédée","hatten":"avaient","Einmal":"une fois","rief":"appela","weil":"parce que","wissen":"savoir","wollte":"voulait","wir":"nous","nannten":"nommions","was":"ce que","Wind":"vent","Wolken":"nuages","tat":"faisait","bevor":"avant que","Sturm":"orage","losbrach":"éclate","einfaches":"simple","jedes":"tout","Kind":"enfant","kannte":"connaissait","schrieb":"écrivit","hätte":"avais","Goldstück":"pièce d'or","gereicht":"tendu","Erst":"ce n'est que","Jahre":"années","gedruckte":"imprimé","Buch":"livre","Händen":"mains","hielt":"tins","begriff":"compris","dass":"que","uns":"nous","allen":"tous","genommen":"pris","vom":"au","Fuhrmann":"charretier","Marktfrau":"marchande du marché","dafür":"en échange","zurückgab":"avait rendu","größer":"plus grand","verließ":"quittai","Wartburg":"Wartburg","ehe":"avant que","sie":"la","erzählte":"raconta","sei":"était","hager":"maigre","geworden":"devenu","dort":"là","oben":"haut","Kopfschmerzen":"maux de tête","geplagt":"tourmenté","Zweifeln":"doutes","erschlug":"terrassait","Untätigkeit":"oisiveté","Tür":"porte","öffnete":"ouvrait","weiß":"sais","Sprache":"langue","neu":"à neuf","schmiedet":"forge","Eisen":"fer","wird":"se change","gehämmert":"martelé","gehärtet":"trempé","bis":"jusqu'à","Feuer":"feu","mehr":"plus","fühlt":"sent","geformt":"façonné","hat":"a","Wenn":"quand","heute":"aujourd'hui","Barmherzigkeit":"miséricorde","lese":"lis","höre":"entends","manchmal":"parfois","noch":"encore","kratzen":"gratter","Dunkeln":"obscurité","wo":"où","verkleideter":"déguisé","Mönch":"moine","deutschen":"allemande","Zunge":"langue","ihre":"sa","Stimme":"voix","lieh":"prêta"}$t$::jsonb
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wer ist die Erzählerin der Geschichte?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Eine Magd auf der Wartburg$t$, true, 1),
    (v_q, $t$Eine Gelehrte aus Wittenberg$t$, false, 2),
    (v_q, $t$Die Ehefrau des Junkers Jörg$t$, false, 3),
    (v_q, $t$Eine Wächterin der Burg$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Rolle spielt die Erzählerin gegenüber Junker Jörg?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie bringt ihm täglich das Essen und beobachtet ihn aus der Nähe$t$, true, 1),
    (v_q, $t$Sie korrigiert seine Übersetzung$t$, false, 2),
    (v_q, $t$Sie bewacht das Tor der Burg$t$, false, 3),
    (v_q, $t$Sie ist seine Schreiberin$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie lässt sich die Erzählperspektive der Geschichte am besten charakterisieren?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Eine unauffällige Beobachterin, die im Nachhinein die Bedeutung des Erlebten rekonstruiert$t$, true, 1),
    (v_q, $t$Ein allwissender Erzähler, der Luthers Gedanken direkt wiedergibt$t$, false, 2),
    (v_q, $t$Ein distanzierter Chronist ohne persönliche Beteiligung$t$, false, 3),
    (v_q, $t$Ein Gelehrter, der die Übersetzung theologisch kommentiert$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was tut der Mann tagsüber in seiner Kammer?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er schreibt unaufhörlich$t$, true, 1),
    (v_q, $t$Er schläft$t$, false, 2),
    (v_q, $t$Er empfängt Besucher$t$, false, 3),
    (v_q, $t$Er betet laut$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Woran erkennt die Erzählerin, wonach der Mann bei seiner Arbeit sucht?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$An seiner Ungeduld, ein treffendes, volksnahes Wort zu finden$t$, true, 1),
    (v_q, $t$An seiner Weigerung, mit einfachen Leuten zu sprechen$t$, false, 2),
    (v_q, $t$An seiner Vorliebe für lateinische Ausdrücke$t$, false, 3),
    (v_q, $t$An seinem Wunsch, schnell fertig zu werden$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was verrät die Episode mit dem gesuchten Wort für den Wind über Luthers Übersetzungsmethode?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er schöpft die Sprache seiner Übersetzung bewusst aus der Alltagsrede einfacher Leute$t$, true, 1),
    (v_q, $t$Er verlässt sich ausschließlich auf gelehrte Vorlagen$t$, false, 2),
    (v_q, $t$Er erfindet neue Wörter, um die Bibel zu modernisieren$t$, false, 3),
    (v_q, $t$Er übernimmt unverändert die lateinische Wortwahl$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was findet die Erzählerin eines Morgens an der Wand?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Einen Tintenfleck$t$, true, 1),
    (v_q, $t$Ein zerrissenes Blatt$t$, false, 2),
    (v_q, $t$Eine Zeichnung$t$, false, 3),
    (v_q, $t$Ein Gebet$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie erklärt der Mann den Tintenfleck an der Wand?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Der Teufel habe ihn bei der Arbeit stören wollen$t$, true, 1),
    (v_q, $t$Er sei im Schlaf gegen die Wand gefallen$t$, false, 2),
    (v_q, $t$Ein Fenster sei aufgesprungen$t$, false, 3),
    (v_q, $t$Er habe absichtlich die Wand bemalt$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Deutung legt der Text für den nächtlichen Zustand des Mannes nahe?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Innere Kämpfe und Zweifel, die er durch rastlose Arbeit zu bezwingen sucht$t$, true, 1),
    (v_q, $t$Reine körperliche Erschöpfung ohne seelische Ursache$t$, false, 2),
    (v_q, $t$Freude über den bevorstehenden Abschluss der Arbeit$t$, false, 3),
    (v_q, $t$Gleichgültigkeit gegenüber der eigenen Aufgabe$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet "einschärfen" im Satz "Man hatte mir eingeschärft, ihn niemals beim Namen zu nennen"?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$eindringlich befehlen$t$, true, 1),
    (v_q, $t$leise flüstern$t$, false, 2),
    (v_q, $t$höflich bitten$t$, false, 3),
    (v_q, $t$schriftlich mitteilen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welches Wort ist in diesem Kontext ein treffendes Synonym für "einschärfen"?$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$nachdrücklich einprägen$t$, true, 1),
    (v_q, $t$beiläufig erwähnen$t$, false, 2),
    (v_q, $t$vage andeuten$t$, false, 3),
    (v_q, $t$gelegentlich erinnern$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche stilistische Wirkung erzielt das Verb "einschärfen" gegenüber einem neutralen "sagen"?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Es betont Dringlichkeit und Autorität der Anweisung$t$, true, 1),
    (v_q, $t$Es mildert die Bedeutung der Anweisung ab$t$, false, 2),
    (v_q, $t$Es macht die Aussage ironisch$t$, false, 3),
    (v_q, $t$Es verweist auf eine schriftliche Quelle$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Form vervollständigt: "Er sagte, der Teufel _____ ihm die Arbeit stören wollen." (Konjunktiv I, indirekte Rede)$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$habe$t$, true, 1),
    (v_q, $t$hat$t$, false, 2),
    (v_q, $t$hätte$t$, false, 3),
    (v_q, $t$haben$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Form ist die korrekte Konjunktiv-I-Wiedergabe von "Der Teufel wollte mir die Arbeit stören" in indirekter Rede?$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Der Teufel habe ihm die Arbeit stören wollen$t$, true, 1),
    (v_q, $t$Der Teufel würde ihm die Arbeit stören wollen$t$, false, 2),
    (v_q, $t$Der Teufel hätte ihm die Arbeit gestört$t$, false, 3),
    (v_q, $t$Der Teufel störe ihm die Arbeit$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welcher Satz gibt "Ich weiß, dass ein Mann, der eine Sprache neu schmiedet, dabei selbst zu Eisen wird" korrekt als nominalisierte Konstruktion wieder?$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Ich weiß um das Zu-Eisen-Werden eines Mannes beim Neuschmieden einer Sprache$t$, true, 1),
    (v_q, $t$Ich weiß, dass ein Mann Eisen schmiedet$t$, false, 2),
    (v_q, $t$Ich weiß, wie ein Schmied arbeitet$t$, false, 3),
    (v_q, $t$Ich weiß von einem eisernen Mann$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$Schreiben Sie einen literarischen Absatz (8-12 Sätze) aus der Perspektive einer Person, die Zeugin einer großen historischen Leistung wird, ohne selbst daran beteiligt zu sein. Reflektieren Sie über die Distanz zwischen stiller Beobachtung und historischer Bedeutung.$t$, 1, 'normal', 'production', $t$Ich stand am Rand des Geschehens, wie so oft in meinem Leben, und sah zu, wie ein anderer die Geschichte formte, während ich nur das Feuer schürte oder das Wasser brachte. Niemand fragte mich, was ich dachte, und doch dachte ich vieles, während ich in der Tür stand und die Feder kratzen hörte. Es ist eine seltsame Erfahrung, Zeugin zu werden, ohne selbst gestaltend einzugreifen, denn man bleibt für immer am Rand jener Erzählung, die später von den Großen berichtet wird. Erst im Rückblick begreift man, dass die eigene Unscheinbarkeit dem Ereignis überhaupt erst seinen Rahmen gab. Ohne die Magd, die das Brot brachte, hätte der Gelehrte verhungert, ohne den Fuhrmann, der das Holz lieferte, wäre die Kammer kalt geblieben. So webt sich das Kleine unsichtbar in das Große, ein Faden, der nirgends genannt wird und doch das Tuch zusammenhält. Ich frage mich manchmal, ob nicht jede große Tat aus tausend stillen Handreichungen besteht, die niemand aufzeichnet. Wenn ich heute davon erzähle, klingt es, als hätte ich am Rande der Weltgeschichte gestanden, dabei stand ich nur an einer Tür und hielt einen Krug. Und doch, sage ich mir, ist gerade dieses Stehen an der Tür die eigentliche Geschichte der meisten Menschen.$t$);

END $block$;

-- 17. Der Steinmetz, der das Ende nicht sieht
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary) VALUES (
    'C2',
    $t$Der Steinmetz, der das Ende nicht sieht$t$,
    $t$Seit siebenundzwanzig Jahren steigt Herr Baumann jeden Morgen auf das Gerüst, das den Südturm des Kölner Doms umklammert wie ein hölzernes Exoskelett, und meißelt an einem Stein, der, wenn er fertig ist, einen anderen Stein ersetzt, der vor hundertfünfzig Jahren einen noch älteren ersetzt hat. Er weiß, dass er den Dom nicht fertig sehen wird, weil der Dom niemals fertig ist, das ist der Witz, den er neuen Auszubildenden erzählt, um sie entweder abzuschrecken oder zu binden, je nachdem, wie sie reagieren, wenn sie begreifen, dass ihr Lebenswerk aus Steinen besteht, die man in fünfzig Jahren wieder austauschen wird.

Der Trachytstein, den er heute bearbeitet, stammt aus einem Bruch in der Eifel, demselben, aus dem schon die mittelalterlichen Baumeister ihr Material holten, und Baumann liebt diesen Gedanken mehr, als er zugeben würde: dass der Berg noch derselbe ist, während die Hände, die ihn formen, sich alle paar Jahrzehnte erneuern, ein stiller Staffellauf über Jahrhunderte, bei dem niemand die Ziellinie überquert. Seine eigene Lehrzeit hat er bei einem Mann verbracht, der 1944 als Kind die Bomben auf die Stadt hatte fallen sehen und danach sein Leben damit verbrachte, wieder aufzurichten, was gefallen war, ohne je zu klagen, dass die Arbeit endlos schien.

Manchmal, an regnerischen Tagen, wenn der Kalkstaub sich mit dem Regen zu einer grauen Suppe mischt, die alles bedeckt, fragt sich Baumann, ob nicht gerade diese Unabschließbarkeit der eigentliche Sinn der Kathedrale ist, ihre stillschweigende Weigerung, sich dem menschlichen Maß zu unterwerfen. Ein Haus wird gebaut, um bewohnt zu werden. Eine Kathedrale wird gebaut, um niemals ganz zu Ende gebaut zu sein, und wer daran mitarbeitet, lernt eine Form der Demut, die man in keinem anderen Beruf lernt, weil man ständig daran erinnert wird, dass die eigenen Hände nur eine von unzähligen Generationen von Händen sind, die denselben Fels bearbeiten.

Seine Tochter hat Architektur studiert, moderne Gebäude, die in zwei Jahren fertig sind und in dreißig abgerissen werden, und sie versteht nicht, warum ihr Vater sich einer Aufgabe verschrieben hat, die keine Vollendung kennt. Er hat versucht, es ihr zu erklären, an einem Abend, an dem der Dom im Licht der Scheinwerfer golden über der Stadt schwebte, aber die Worte reichten nicht. Vielleicht, dachte er später, ist genau das die Antwort: dass manche Werke sich nicht erklären lassen, sondern nur bewohnt werden können, Stein für Stein, ein Leben lang, ohne je zu wissen, wie die Geschichte endet, die man mit formt.$t$,
    $t$Depuis vingt-sept ans, monsieur Baumann monte chaque matin sur l'échafaudage qui enserre la tour sud de la cathédrale de Cologne comme un exosquelette de bois, et il taille une pierre qui, une fois achevée, en remplacera une autre, laquelle avait elle-même remplacé, cent cinquante ans plus tôt, une pierre encore plus ancienne. Il sait qu'il ne verra pas la cathédrale achevée, parce qu'elle ne l'est jamais, c'est la plaisanterie qu'il raconte aux nouveaux apprentis, pour soit les décourager, soit les attacher, selon la façon dont ils réagissent en comprenant que l'œuvre de leur vie consiste en des pierres qu'on remplacera de nouveau dans cinquante ans.

La pierre de trachyte qu'il travaille aujourd'hui provient d'une carrière de l'Eifel, la même où les bâtisseurs médiévaux tiraient déjà leur matériau, et Baumann aime cette idée plus qu'il ne l'admettrait : que la montagne reste la même, tandis que les mains qui la façonnent se renouvellent tous les quelques décennies, un relais silencieux à travers les siècles, où personne ne franchit la ligne d'arrivée. Il a passé son propre apprentissage auprès d'un homme qui, enfant en 1944, avait vu tomber les bombes sur la ville et avait ensuite consacré sa vie à redresser ce qui était tombé, sans jamais se plaindre que le travail semblât interminable.

Parfois, les jours de pluie, quand la poussière de calcaire se mêle à la pluie en une bouillie grise qui recouvre tout, Baumann se demande si ce n'est pas justement cette impossibilité d'achever qui constitue le sens véritable de la cathédrale, son refus tacite de se soumettre à la mesure humaine. Une maison se construit pour être habitée. Une cathédrale se construit pour ne jamais être tout à fait achevée, et quiconque y contribue apprend une forme d'humilité qu'on n'apprend dans aucun autre métier, parce qu'on se rappelle sans cesse que ses propres mains ne sont qu'une parmi d'innombrables générations de mains qui travaillent le même rocher.

Sa fille a étudié l'architecture, des bâtiments modernes qui sont achevés en deux ans et démolis en trente, et elle ne comprend pas pourquoi son père s'est voué à une tâche qui ne connaît pas d'achèvement. Il a essayé de le lui expliquer, un soir où la cathédrale flottait, dorée, au-dessus de la ville dans la lumière des projecteurs, mais les mots ne suffisaient pas. Peut-être, pensa-t-il plus tard, était-ce précisément là la réponse : que certaines œuvres ne se laissent pas expliquer, mais seulement habiter, pierre après pierre, toute une vie durant, sans jamais savoir comment finit l'histoire à laquelle on contribue à donner forme.$t$,
    $t${"Seit":"depuis","siebenundzwanzig":"vingt-sept","Jahren":"ans","steigt":"monte","Herr":"monsieur","Baumann":"Baumann","jeden":"chaque","Morgen":"matin","auf":"sur","das":"l'","Gerüst":"échafaudage","den":"la","Südturm":"tour sud","des":"de la","Kölner":"de Cologne","Doms":"cathédrale","umklammert":"enserre","wie":"comme","ein":"un","hölzernes":"de bois","Exoskelett":"exosquelette","und":"et","meißelt":"taille","an":"une","einem":"une","Stein":"pierre","der":"qui","wenn":"une fois que","er":"elle","fertig":"achevée","ist":"est","einen":"une","anderen":"autre","ersetzt":"remplacera","vor":"plus tôt","hundertfünfzig":"cent cinquante","noch":"encore","älteren":"plus ancienne","hat":"avait","Er":"il","weiß":"sait","dass":"qu'","Dom":"cathédrale","nicht":"ne pas","sehen":"voir","wird":"verra","weil":"parce que","niemals":"jamais","Witz":"plaisanterie","neuen":"nouveaux","Auszubildenden":"apprentis","erzählt":"raconte","um":"pour","sie":"les","entweder":"soit","abzuschrecken":"décourager","oder":"soit","zu":"à","binden":"attacher","je":"selon","nachdem":"selon","reagieren":"réagissent","begreifen":"comprenant","ihr":"leur","Lebenswerk":"œuvre de leur vie","aus":"en","Steinen":"pierres","besteht":"consiste","die":"qu'","man":"on","in":"dans","fünfzig":"cinquante","wieder":"de nouveau","austauschen":"remplacera","Der":"la","Trachytstein":"pierre de trachyte","heute":"aujourd'hui","bearbeitet":"travaille","stammt":"provient","Bruch":"carrière","Eifel":"Eifel","demselben":"la même","dem":"où","schon":"déjà","mittelalterlichen":"médiévaux","Baumeister":"bâtisseurs","Material":"matériau","holten":"tiraient","liebt":"aime","diesen":"cette","Gedanken":"idée","mehr":"plus","als":"qu'","zugeben":"admettrait","würde":"aurait","Berg":"montagne","derselbe":"la même","während":"tandis que","Hände":"mains","ihn":"la","formen":"façonnent","sich":"se","alle":"tous les","paar":"quelques","Jahrzehnte":"décennies","erneuern":"renouvellent","stiller":"silencieux","Staffellauf":"relais","über":"à travers","Jahrhunderte":"siècles","bei":"où","niemand":"personne","Ziellinie":"ligne d'arrivée","überquert":"franchit","Seine":"son","eigene":"propre","Lehrzeit":"apprentissage","Mann":"homme","verbracht":"passé","Kind":"enfant","Bomben":"bombes","Stadt":"ville","hatte":"avait","fallen":"tomber","danach":"ensuite","sein":"sa","Leben":"vie","damit":"à","verbrachte":"consacra","aufzurichten":"redresser","was":"ce qui","gefallen":"tombé","war":"était","ohne":"sans","klagen":"se plaindre","Arbeit":"travail","endlos":"interminable","schien":"semblât","Manchmal":"parfois","regnerischen":"de pluie","Tagen":"jours","Kalkstaub":"poussière de calcaire","mit":"à","Regen":"pluie","einer":"une","grauen":"grise","Suppe":"bouillie","mischt":"mêle","alles":"tout","bedeckt":"recouvre","fragt":"demande","ob":"si","gerade":"justement","diese":"cette","Unabschließbarkeit":"impossibilité d'achever","eigentliche":"véritable","Sinn":"sens","Kathedrale":"cathédrale","ihre":"son","stillschweigende":"tacite","Weigerung":"refus","menschlichen":"humaine","Maß":"mesure","unterwerfen":"soumettre","Ein":"une","Haus":"maison","gebaut":"construite","bewohnt":"habitée","werden":"être","Eine":"une","ganz":"tout à fait","Ende":"fin","wer":"quiconque","daran":"y","mitarbeitet":"contribue","lernt":"apprend","eine":"une","Form":"forme","Demut":"humilité","keinem":"aucun","Beruf":"métier","ständig":"sans cesse","erinnert":"rappelle","eigenen":"propres","nur":"seulement","von":"parmi","unzähligen":"innombrables","Generationen":"générations","Händen":"mains","sind":"sont","denselben":"le même","Fels":"rocher","bearbeiten":"travaillent","Tochter":"fille","Architektur":"architecture","studiert":"étudié","moderne":"modernes","Gebäude":"bâtiments","zwei":"deux","dreißig":"trente","abgerissen":"démolis","versteht":"comprend","warum":"pourquoi","Vater":"père","Aufgabe":"tâche","verschrieben":"voué","keine":"pas d'","Vollendung":"achèvement","kennt":"connaît","versucht":"essayé","es":"le","erklären":"expliquer","Abend":"soir","im":"dans la","Licht":"lumière","Scheinwerfer":"projecteurs","golden":"dorée","schwebte":"flottait","aber":"mais","Worte":"mots","reichten":"suffisaient","Vielleicht":"peut-être","dachte":"pensa","später":"plus tard","genau":"précisément","Antwort":"réponse","manche":"certaines","Werke":"œuvres","lassen":"laissent","sondern":"mais","können":"peuvent","für":"après","lang":"durant","wissen":"savoir","Geschichte":"histoire","endet":"finit","formt":"donne forme"}$t$::jsonb
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie lange arbeitet Herr Baumann schon am Kölner Dom?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Seit siebenundzwanzig Jahren$t$, true, 1),
    (v_q, $t$Seit zehn Jahren$t$, false, 2),
    (v_q, $t$Seit fünfzig Jahren$t$, false, 3),
    (v_q, $t$Seit fünf Jahren$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum wird Herr Baumann den Dom nie fertiggestellt sehen?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Weil der Dom als Bauwerk niemals endgültig fertig ist$t$, true, 1),
    (v_q, $t$Weil er bald in Rente geht$t$, false, 2),
    (v_q, $t$Weil die Restaurierung eingestellt wurde$t$, false, 3),
    (v_q, $t$Weil er den Beruf wechseln will$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Funktion erfüllt der Witz, den Baumann neuen Auszubildenden erzählt?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er testet, ob die Lehrlinge die Unabschließbarkeit der Arbeit annehmen oder daran verzweifeln$t$, true, 1),
    (v_q, $t$Er soll die Lehrlinge zum Lachen bringen und die Stimmung auflockern$t$, false, 2),
    (v_q, $t$Er dient dazu, den historischen Wert des Doms zu erklären$t$, false, 3),
    (v_q, $t$Er warnt vor den Gefahren der Arbeit auf dem Gerüst$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Woher stammt der Trachytstein, den Baumann bearbeitet?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Aus einem Steinbruch in der Eifel$t$, true, 1),
    (v_q, $t$Aus einem Bruch am Rhein$t$, false, 2),
    (v_q, $t$Aus Italien$t$, false, 3),
    (v_q, $t$Aus dem Schwarzwald$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was findet Baumann bemerkenswert am Vergleich zwischen dem Steinbruch und den Handwerkern?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Der Berg bleibt derselbe, während die Handwerkergenerationen ständig wechseln$t$, true, 1),
    (v_q, $t$Der Steinbruch wurde erst kürzlich entdeckt$t$, false, 2),
    (v_q, $t$Die heutigen Steine sind von schlechterer Qualität als früher$t$, false, 3),
    (v_q, $t$Die Handwerker kommen alle aus derselben Familie$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie deutet der Text die Erfahrung von Baumanns Lehrmeister, der 1944 die Bombardierung erlebte?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Als Vorbild für eine klaglose Hingabe an eine grundsätzlich endlose Aufbauarbeit$t$, true, 1),
    (v_q, $t$Als Beispiel für die Sinnlosigkeit des Wiederaufbaus$t$, false, 2),
    (v_q, $t$Als Anlass für Baumanns Berufswechsel$t$, false, 3),
    (v_q, $t$Als historische Randnotiz ohne Bezug zu Baumanns Haltung$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was hat Baumanns Tochter studiert?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Architektur$t$, true, 1),
    (v_q, $t$Geschichte$t$, false, 2),
    (v_q, $t$Theologie$t$, false, 3),
    (v_q, $t$Medizin$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum versteht die Tochter die Berufswahl ihres Vaters nicht?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Weil sie an schnell fertiggestellte, moderne Gebäude gewöhnt ist$t$, true, 1),
    (v_q, $t$Weil sie den Dom für hässlich hält$t$, false, 2),
    (v_q, $t$Weil sie selbst nie am Dom arbeiten durfte$t$, false, 3),
    (v_q, $t$Weil ihr Vater ihr die Arbeit nie erklärt hat$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche implizite These über Sinn und Werk vermittelt der Schluss des Textes?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Manche Werke erschließen sich nicht durch Erklärung, sondern nur durch gelebte, andauernde Hingabe$t$, true, 1),
    (v_q, $t$Architektur sollte grundsätzlich auf Langlebigkeit statt auf schnelle Fertigstellung setzen$t$, false, 2),
    (v_q, $t$Väter und Töchter verstehen sich in beruflichen Fragen selten$t$, false, 3),
    (v_q, $t$Restaurierungsarbeit ist der modernen Architektur grundsätzlich überlegen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet "Unabschließbarkeit"?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$die Eigenschaft, nie zu Ende gebracht werden zu können$t$, true, 1),
    (v_q, $t$die Fähigkeit, schnell fertig zu werden$t$, false, 2),
    (v_q, $t$ein Baufehler$t$, false, 3),
    (v_q, $t$eine Art von Vertrag$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welches Wort passt am besten als Synonym zu "Unabschließbarkeit" im Text?$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Endlosigkeit$t$, true, 1),
    (v_q, $t$Kurzlebigkeit$t$, false, 2),
    (v_q, $t$Fehlerhaftigkeit$t$, false, 3),
    (v_q, $t$Vollständigkeit$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Konnotation trägt der Begriff "Unabschließbarkeit" im Kontext der Kathedrale, im Unterschied zu einem neutralen Wort wie "Dauer"?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er verweist auf eine strukturelle, fast philosophische Unmöglichkeit der Vollendung, nicht nur auf lange Zeit$t$, true, 1),
    (v_q, $t$Er bezeichnet lediglich einen technischen Baumangel$t$, false, 2),
    (v_q, $t$Er beschreibt eine vorübergehende Verzögerung im Bauplan$t$, false, 3),
    (v_q, $t$Er hat eine rein negative, kritische Konnotation$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Vervollständigen Sie: "Ein Haus wird gebaut, um _____ zu werden." (Passiv)$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$bewohnt$t$, true, 1),
    (v_q, $t$bewohnen$t$, false, 2),
    (v_q, $t$wohnend$t$, false, 3),
    (v_q, $t$gewohnt$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Form entspricht korrekt dem Passiv in: "Ein Haus wird gebaut, um bewohnt zu werden. Eine Kathedrale wird gebaut, um niemals ganz zu Ende _____ zu sein."$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$gebaut$t$, true, 1),
    (v_q, $t$bauen$t$, false, 2),
    (v_q, $t$baute$t$, false, 3),
    (v_q, $t$büßen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welcher Satz gibt "dass der Berg noch derselbe ist, während die Hände sich erneuern" korrekt als erweitertes Attribut wieder?$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$der noch derselbe bleibende Berg gegenüber den sich alle paar Jahrzehnte erneuernden Händen$t$, true, 1),
    (v_q, $t$der Berg, der derselbe bleibt, und die Hände, die sich erneuern$t$, false, 2),
    (v_q, $t$der Berg bleibt, doch die Hände erneuern sich ständig$t$, false, 3),
    (v_q, $t$ein Berg, der bleibt, mit Händen, die sich erneuern$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$Schreiben Sie einen literarischen Absatz (8-12 Sätze) über eine Person, die ihr Leben einem Werk widmet, das sie selbst nie vollendet sehen wird. Reflektieren Sie über Demut, Zeit und den Sinn unabschließbarer Arbeit.$t$, 1, 'normal', 'production', $t$Es gibt Berufe, in denen man das eigene Werk am Ende betrachten und sagen kann, hier ist es fertig, und es gibt Berufe, in denen diese Genugtuung für immer aufgeschoben bleibt. Wer sich für Letzteres entscheidet, muss lernen, den Wert der Arbeit nicht im Abschluss zu suchen, sondern im täglichen Vollzug selbst. Das klingt nach Entsagung, ist aber, wenn man genauer hinsieht, eher eine Form von Freiheit, denn wer nicht auf ein Ende hinarbeitet, muss sich auch nicht an ihm messen lassen. Jeder Handgriff wird dadurch zu seinem eigenen Zweck, unabhängig davon, ob eine spätere Generation die Arbeit fortführt, verändert oder gar rückgängig macht. Man lernt, sich selbst als Glied einer Kette zu begreifen, deren Anfang man nicht kannte und deren Ende man nicht kennen wird. Das erfordert eine Demut, die der modernen Vorstellung von Erfolg fremd geworden ist, in der jede Anstrengung sich in einem messbaren Ergebnis erschöpfen soll. Vielleicht ist gerade das der stille Trost solcher Arbeit, dass sie einen daran erinnert, wie klein die eigene Lebensspanne im Vergleich zu dem ist, was Menschen gemeinsam errichten können. Wer dies begreift, betrachtet sein Tagwerk nicht mehr als Fragment, sondern als notwendigen, wenn auch unscheinbaren Beitrag zu etwas, das größer bleibt als jeder Einzelne.$t$);

END $block$;

-- 18. Die Wiesn meines Vaters
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary) VALUES (
    'C2',
    $t$Die Wiesn meines Vaters$t$,
    $t$Als Kind fand ich die Wiesn ohrenbetäubend und wunderbar, ein Rausch aus Karussellichtern und dem süßlichen Geruch gebrannter Mandeln, an der Hand meines Vaters, der mich auf seine Schultern hob, damit ich über die Köpfe der Erwachsenen sehen konnte. Er trank sein Bier mit einer Feierlichkeit, die mir damals unverständlich schien, als wäre der Maßkrug ein Kelch und das Zelt eine Kirche, in der einmal im Jahr die Sünde der Freude erlaubt war.

Zwanzig Jahre später saß ich ihm gegenüber, in demselben Zelt, vielleicht sogar an demselben Tisch, und beobachtete, wie er das Bier nicht mehr feierlich, sondern gedankenverloren trank, während meine Mutter zu Hause auf ihn wartete, nicht mehr böse, nur noch müde von der jährlichen Wiederkehr eines Rituals, das sich von einer Familienfreude in eine männliche Pflichtübung verwandelt hatte. Ich fragte ihn einmal, warum er noch ging, wenn es ihm doch, wie er behauptete, keinen Spaß mehr machte, und er sah mich an, als hätte ich etwas Ungehöriges gefragt, und sagte nur, das gehöre sich so, ein Satz, mit dem meine Familie über Generationen alles rechtfertigte, was sich nicht mehr rechtfertigen ließ.

Als er krank wurde, ging er nicht mehr hin, und ich übernahm, ohne es zu wollen, seinen Platz im Zelt, bei Kollegen, die ich kaum kannte, und trank mein Bier mit einer Feierlichkeit, die mich selbst überraschte, als hätte ich das Ritual von ihm geerbt wie ein Möbelstück, das man nicht mag, aber auch nicht wegwirft. In jenem Herbst verstand ich zum ersten Mal, dass die Wiesn für meinen Vater nie das Bier gewesen war, sondern die zwei Wochen im Jahr, in denen er sich erlauben durfte, laut zu sein, in einer Stadt und einer Zeit, die von Männern seiner Generation vor allem Schweigen verlangte.

Heute, da er nicht mehr lebt, gehe ich manchmal allein hin, früh am Nachmittag, wenn die Zelte noch halb leer sind und das Licht durch die Öffnungen der Zeltplanen wie in einer Kathedrale fällt, und bestelle eine Maß, die ich kaum trinke, nur um dort zu sitzen, wo er gesessen hat, und zu begreifen, dass Traditionen sich weniger durch das unterscheiden, was in ihnen gefeiert wird, als durch das, was in ihnen verschwiegen werden darf. Meine Tochter wird eines Tages fragen, warum ich noch hingehe, und ich werde ihr wahrscheinlich denselben unbefriedigenden Satz antworten, den mein Vater mir gab, weil manche Wahrheiten sich nur im Wiederholen, nicht im Erklären weitergeben lassen.$t$,
    $t$Enfant, je trouvais la Wiesn assourdissante et merveilleuse, une ivresse faite des lumières des manèges et de l'odeur douceâtre des amandes grillées, à la main de mon père, qui me hissait sur ses épaules pour que je puisse voir par-dessus les têtes des adultes. Il buvait sa bière avec une solennité qui, à l'époque, me paraissait incompréhensible, comme si la chope était un calice et la tente une église où, une fois par an, le péché de la joie était permis.

Vingt ans plus tard, j'étais assis en face de lui, dans la même tente, peut-être même à la même table, et j'observais comment il buvait sa bière non plus avec solennité, mais l'esprit ailleurs, tandis que ma mère l'attendait à la maison, non plus en colère, seulement lasse du retour annuel d'un rituel qui s'était transformé d'une joie familiale en corvée masculine. Je lui demandai un jour pourquoi il y allait encore, si cela ne lui faisait plus plaisir, comme il le prétendait, et il me regarda comme si j'avais posé une question déplacée, et il dit seulement que cela se faisait ainsi, une phrase avec laquelle ma famille, à travers les générations, justifiait tout ce qui ne pouvait plus être justifié.

Quand il tomba malade, il n'y alla plus, et je repris, sans le vouloir, sa place dans la tente, auprès de collègues que je connaissais à peine, et je buvais ma bière avec une solennité qui me surprit moi-même, comme si j'avais hérité de lui ce rituel tel un meuble qu'on n'aime pas, mais qu'on ne jette pas non plus. Cet automne-là, je compris pour la première fois que la Wiesn n'avait jamais été, pour mon père, la bière, mais les deux semaines de l'année où il pouvait s'autoriser à être bruyant, dans une ville et une époque qui exigeaient surtout le silence des hommes de sa génération.

Aujourd'hui, alors qu'il n'est plus de ce monde, j'y vais parfois seul, tôt l'après-midi, quand les tentes sont encore à moitié vides et que la lumière tombe à travers les ouvertures des bâches comme dans une cathédrale, et je commande une chope que je bois à peine, juste pour être assis là où il était assis, et pour comprendre que les traditions se distinguent moins par ce qu'on y célèbre que par ce qu'il est permis d'y taire. Ma fille me demandera un jour pourquoi j'y vais encore, et je lui répondrai sans doute la même phrase insatisfaisante que mon père m'a donnée, parce que certaines vérités ne se transmettent que par la répétition, non par l'explication.$t$,
    $t${"Als":"enfant","Kind":"enfant","fand":"trouvais","ich":"je","die":"la","Wiesn":"Wiesn","ohrenbetäubend":"assourdissante","und":"et","wunderbar":"merveilleuse","ein":"une","Rausch":"ivresse","aus":"faite de","Karussellichtern":"lumières des manèges","dem":"l'","süßlichen":"douceâtre","Geruch":"odeur","gebrannter":"grillées","Mandeln":"amandes","an":"à","der":"la","Hand":"main","meines":"de mon","Vaters":"père","mich":"me","auf":"sur","seine":"ses","Schultern":"épaules","hob":"hissait","damit":"pour que","über":"par-dessus","Köpfe":"têtes","Erwachsenen":"adultes","sehen":"voir","konnte":"pouvais","Er":"il","trank":"buvait","sein":"sa","Bier":"bière","mit":"avec","einer":"une","Feierlichkeit":"solennité","mir":"me","damals":"à l'époque","unverständlich":"incompréhensible","schien":"paraissait","als":"comme si","wäre":"était","Maßkrug":"chope","Kelch":"calice","das":"la","Zelt":"tente","eine":"une","Kirche":"église","in":"où","einmal":"une fois","im":"dans la","Jahr":"an","Sünde":"péché","Freude":"joie","erlaubt":"permis","war":"était","Zwanzig":"vingt","Jahre":"ans","später":"plus tard","saß":"j'étais assis","ihm":"lui","gegenüber":"en face de","demselben":"la même","vielleicht":"peut-être","sogar":"même","Tisch":"table","beobachtete":"j'observais","wie":"comment","er":"il","nicht":"ne plus","mehr":"plus","feierlich":"avec solennité","sondern":"mais","gedankenverloren":"l'esprit ailleurs","während":"tandis que","meine":"ma","Mutter":"mère","zu":"à","Hause":"la maison","ihn":"l'","wartete":"attendait","böse":"en colère","nur":"seulement","noch":"encore","müde":"lasse","von":"de","jährlichen":"annuel","Wiederkehr":"retour","eines":"d'un","Rituals":"rituel","sich":"se","Familienfreude":"joie familiale","männliche":"masculine","Pflichtübung":"corvée","verwandelt":"transformé","hatte":"avait","Ich":"je","fragte":"demandai","warum":"pourquoi","ging":"allait","wenn":"si","es":"cela","doch":"pourtant","behauptete":"prétendait","keinen":"ne...plus de","Spaß":"plaisir","machte":"faisait","sah":"regarda","hätte":"avais","etwas":"quelque chose","Ungehöriges":"déplacé","gefragt":"posé","sagte":"dit","gehöre":"convenait","so":"ainsi","Satz":"phrase","Familie":"famille","Generationen":"générations","alles":"tout","rechtfertigte":"justifiait","was":"ce qui","rechtfertigen":"justifier","ließ":"pouvait","krank":"malade","wurde":"devint","hin":"y","übernahm":"repris","ohne":"sans","wollen":"vouloir","seinen":"sa","Platz":"place","bei":"auprès de","Kollegen":"collègues","kaum":"à peine","kannte":"connaissais","mein":"ma","selbst":"moi-même","überraschte":"surprit","Ritual":"rituel","geerbt":"hérité","Möbelstück":"meuble","man":"on","mag":"aime","aber":"mais","auch":"non plus","wegwirft":"jette","In":"cet","jenem":"cet","Herbst":"automne","verstand":"compris","zum":"pour la","ersten":"première","Mal":"fois","dass":"que","für":"pour","meinen":"mon","Vater":"père","nie":"jamais","gewesen":"été","zwei":"deux","Wochen":"semaines","denen":"où","erlauben":"s'autoriser","durfte":"pouvait","laut":"bruyant","Stadt":"ville","Zeit":"époque","Männern":"hommes","seiner":"sa","Generation":"génération","vor":"surtout","allem":"tout","Schweigen":"silence","verlangte":"exigeait","Heute":"aujourd'hui","da":"alors que","lebt":"vit","gehe":"vais","manchmal":"parfois","allein":"seul","früh":"tôt","am":"l'","Nachmittag":"après-midi","Zelte":"tentes","halb":"à moitié","leer":"vides","sind":"sont","Licht":"lumière","durch":"à travers","Öffnungen":"ouvertures","Zeltplanen":"bâches","Kathedrale":"cathédrale","fällt":"tombe","bestelle":"commande","Maß":"chope","trinke":"bois","um":"pour","dort":"là","sitzen":"être assis","wo":"où","gesessen":"assis","hat":"a","begreifen":"comprendre","Traditionen":"traditions","weniger":"moins","unterscheiden":"distinguent","ihnen":"y","gefeiert":"célèbre","wird":"est","verschwiegen":"taire","werden":"être","darf":"est permis","Meine":"ma","Tochter":"fille","Tages":"jour","fragen":"demandera","hingehe":"y vais","werde":"répondrai","ihr":"lui","wahrscheinlich":"sans doute","denselben":"la même","unbefriedigenden":"insatisfaisante","antworten":"répondrai","den":"que","gab":"a donnée","weil":"parce que","manche":"certaines","Wahrheiten":"vérités","Wiederholen":"répétition","Erklären":"explication","weitergeben":"transmettre","lassen":"se transmettre"}$t$::jsonb
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie erlebt die Erzählerin die Wiesn als Kind?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Als ohrenbetäubend und wunderbar$t$, true, 1),
    (v_q, $t$Als langweilig$t$, false, 2),
    (v_q, $t$Als beängstigend$t$, false, 3),
    (v_q, $t$Als bedeutungslos$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie verändert sich das Verhältnis des Vaters zum Bier zwischen der Kindheit der Erzählerin und zwanzig Jahre später?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Von feierlicher Freude zu gedankenverlorener Pflicht$t$, true, 1),
    (v_q, $t$Von Ablehnung zu Begeisterung$t$, false, 2),
    (v_q, $t$Es bleibt völlig unverändert$t$, false, 3),
    (v_q, $t$Von öffentlichem zu heimlichem Trinken$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche implizite Kritik liegt im Vergleich des Maßkrugs mit einem Kelch und des Zeltes mit einer Kirche?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Eine ironische Überhöhung eines banalen Rituals zu einer quasi-religiösen Handlung$t$, true, 1),
    (v_q, $t$Eine ernst gemeinte Aussage über die religiöse Bedeutung des Oktoberfests$t$, false, 2),
    (v_q, $t$Eine Kritik an der katholischen Kirche Bayerns$t$, false, 3),
    (v_q, $t$Ein Hinweis auf die tatsächliche Herkunft des Festes aus kirchlichen Riten$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was antwortet der Vater, als die Erzählerin fragt, warum er noch zur Wiesn geht?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$"Das gehört sich so."$t$, true, 1),
    (v_q, $t$"Weil es mir Spaß macht."$t$, false, 2),
    (v_q, $t$"Weil meine Freunde dort sind."$t$, false, 3),
    (v_q, $t$Er antwortet nicht.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie deutet die Erzählerin später den wahren Grund, warum ihr Vater zur Wiesn ging?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Es waren die einzigen Wochen im Jahr, in denen er sich Lautsein erlauben durfte$t$, true, 1),
    (v_q, $t$Er wollte dem Alltag mit der Mutter entkommen$t$, false, 2),
    (v_q, $t$Er wollte vor Kollegen angeben$t$, false, 3),
    (v_q, $t$Er tat es nur aus finanziellen Gründen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie interpretiert die Erzählerin rückblickend die gesellschaftliche Rolle des Rituals für Männer seiner Generation?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Als seltenen erlaubten Ausbruch aus einem sonst von Schweigen geprägten männlichen Rollenbild$t$, true, 1),
    (v_q, $t$Als reines Vergnügen ohne tiefere Bedeutung$t$, false, 2),
    (v_q, $t$Als Ausdruck von Alkoholabhängigkeit$t$, false, 3),
    (v_q, $t$Als rein familiäre Verpflichtung ohne gesellschaftlichen Bezug$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was tut die Erzählerin, nachdem der Vater gestorben ist?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie geht manchmal allein zur Wiesn$t$, true, 1),
    (v_q, $t$Sie besucht die Wiesn nie wieder$t$, false, 2),
    (v_q, $t$Sie zieht aus München weg$t$, false, 3),
    (v_q, $t$Sie verkauft den Maßkrug ihres Vaters$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was vermutet die Erzählerin über ihre eigene Tochter am Ende der Geschichte?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Dass sie dieselbe Frage stellen und eine ähnlich unbefriedigende Antwort erhalten wird$t$, true, 1),
    (v_q, $t$Dass sie nie zur Wiesn gehen wird$t$, false, 2),
    (v_q, $t$Dass sie das Fest besser verstehen wird als sie selbst$t$, false, 3),
    (v_q, $t$Dass sie den Vater der Erzählerin persönlich kennenlernen wird$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche These über Tradition formuliert der Text implizit am Ende?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Traditionen unterscheiden sich weniger durch ihren Inhalt als durch das, was in ihnen unausgesprochen bleiben darf$t$, true, 1),
    (v_q, $t$Traditionen sollten von jeder Generation neu erklärt und gerechtfertigt werden$t$, false, 2),
    (v_q, $t$Traditionen verlieren mit der Zeit zwangsläufig jede Bedeutung$t$, false, 3),
    (v_q, $t$Traditionen sind nur für Männer von Bedeutung$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet "gedankenverloren"?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$in Gedanken versunken, geistesabwesend$t$, true, 1),
    (v_q, $t$sehr aufmerksam$t$, false, 2),
    (v_q, $t$wütend$t$, false, 3),
    (v_q, $t$fröhlich und laut$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welches Wort ersetzt "gedankenverloren" im Kontext des Satzes am treffendsten?$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$abwesend$t$, true, 1),
    (v_q, $t$begeistert$t$, false, 2),
    (v_q, $t$misstrauisch$t$, false, 3),
    (v_q, $t$energisch$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Nuance unterscheidet "gedankenverloren" von "zerstreut" im literarischen Kontext dieses Textes?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$"Gedankenverloren" impliziert eine innere, oft melancholische Versunkenheit, während "zerstreut" eher Unaufmerksamkeit ohne emotionale Tiefe meint$t$, true, 1),
    (v_q, $t$Beide Wörter sind in jedem Kontext vollkommen austauschbar$t$, false, 2),
    (v_q, $t$"Gedankenverloren" bezieht sich nur auf körperliche Zustände$t$, false, 3),
    (v_q, $t$"Zerstreut" ist stilistisch höher als "gedankenverloren"$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Vervollständigen Sie: "Ich fragte ihn, warum er noch _____, wenn es ihm keinen Spaß mehr mache." (Konjunktiv I in indirekter Frage)$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$gehe$t$, true, 1),
    (v_q, $t$geht$t$, false, 2),
    (v_q, $t$ginge$t$, false, 3),
    (v_q, $t$gegangen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Form ist grammatisch korrekt: "Er behauptete, es _____ ihm keinen Spaß mehr."$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$mache$t$, true, 1),
    (v_q, $t$macht$t$, false, 2),
    (v_q, $t$gemacht$t$, false, 3),
    (v_q, $t$machte$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welcher Satz gibt "Traditionen unterscheiden sich weniger durch das, was in ihnen gefeiert wird, als durch das, was verschwiegen werden darf" am besten als nominalisierte Konstruktion wieder?$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Der Unterschied zwischen Traditionen liegt weniger im Gefeierten als im erlaubten Verschweigen$t$, true, 1),
    (v_q, $t$Traditionen sind unterschiedlich, weil man in ihnen verschiedene Dinge feiert$t$, false, 2),
    (v_q, $t$Man feiert in Traditionen verschiedene Dinge und schweigt über andere$t$, false, 3),
    (v_q, $t$Traditionen verschweigen manchmal, was sie feiern$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$Schreiben Sie einen literarischen Absatz (8-12 Sätze) über ein Familienritual, das über Generationen weitergegeben wird, obwohl sein ursprünglicher Sinn sich verändert oder verloren hat.$t$, 1, 'normal', 'production', $t$In jeder Familie gibt es Rituale, deren Ursprung sich mit der Zeit verflüchtigt, während die Handlung selbst bestehen bleibt, wie eine Hülle, die von einem Inhalt zum nächsten weitergereicht wird. Man übt sie aus, ohne recht zu wissen, warum, nur weil sie schon immer geübt wurden, und diese Selbstverständlichkeit ist zugleich ihre Stärke und ihre Schwäche. Für die Großeltern mag das Ritual eine Notwendigkeit gewesen sein, geboren aus Mangel oder aus einer bestimmten historischen Lage, während es für die Enkel zu einer freiwilligen, fast nostalgischen Geste wird. Und doch spürt man in jeder Wiederholung eine Verbindung zu denen, die vor einem dasselbe getan haben, als würde man für einen Moment ihre Schuhe tragen. Diese Verbindung lässt sich schwer in Worte fassen, weshalb Familien oft auf vage Formeln zurückgreifen, wenn Kinder nach dem Warum fragen. Vielleicht liegt gerade darin die eigentliche Funktion solcher Rituale, dass sie einen Raum offenhalten, in dem nicht alles erklärt werden muss. Man lernt, eine Handlung zu ehren, ohne ihre Bedeutung vollständig zu verstehen, und genau dieses Nicht-Verstehen wird selbst zu einem Teil der Tradition. So wandert das Ritual von Generation zu Generation weiter, verändert sich unmerklich und bleibt doch im Kern erkennbar, ein Faden, der Familien über den Tod hinaus verbindet.$t$);

END $block$;

-- 19. Das Haus aus Zucker
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary) VALUES (
    'C2',
    $t$Das Haus aus Zucker$t$,
    $t$Sie erinnert sich nicht mehr an den Wald selbst, nur an den Hunger, der ihr wie eine zweite Haut anlag, während sie und ihr Bruder den Kieselsteinen folgten, die im Mondlicht wie kleine, kalte Versprechen glänzten. Was sie als Kind für Magie hielt, versteht sie heute, mit fünfzig Jahren, als etwas viel Nüchterneres: dass Armut Eltern zu Entscheidungen zwingt, die keine Fabel je gerecht erzählen kann, und dass die Erwachsenen, die sie im Stich ließen, selbst nur Kinder eines Systems waren, das ihnen keine andere Wahl ließ als das Aussetzen der eigenen Nachkommen.

Das Haus aus Lebkuchen, an das sich alle erinnern, war in ihrer Erinnerung nie süß. Es war eine Falle, gewiss, aber auch das erste Mal, dass jemand sie satt werden ließ, und diese Ambivalenz, dieses Gefühl, gefüttert und zugleich verzehrt zu werden, hat sie ihr Leben lang nicht mehr losgelassen. Sie hat es später in jeder Beziehung wiedergefunden, in jedem Menschen, der ihr etwas gab, das sie brauchte, und dabei genau wusste, wie er es sich zurückholen würde. Man nennt das heute, in den Büchern, die sie liest, um zu verstehen, was ihr geschah, ein Muster, aber als Kind kannte sie nur den Geschmack von Zuckerguss und die Angst im Bauch, die beide gleichzeitig echt waren.

Ihr Bruder spricht nicht mehr darüber. Er hat, wie sie hört, eine Familie gegründet und lebt so, als sei jene Nacht im Wald nie geschehen, während sie selbst keine Kinder bekommen hat, aus einer Angst heraus, die sie nie ganz benennen konnte, aber die etwas mit dem Ofen zu tun hat, in den sie die Alte gestoßen hat, um zu überleben. Man erzählt diesen Teil der Geschichte immer als Triumph, als Beweis kindlicher Klugheit, aber sie weiß, was es bedeutet, jemanden zu töten, selbst eine Hexe, selbst zur Rettung des eigenen Lebens, und dass diese Tat sie ebenso geformt hat wie der Hunger zuvor.

Wenn sie heute Kinder im Wald spielen sieht, unbeschwert, mit vollen Bäuchen, denkt sie manchmal, dass Märchen nicht dazu da sind, Kindern Angst zu machen, sondern Erwachsenen zu zeigen, wie viel Gewalt in der bloßen Notwendigkeit des Überlebens steckt, verpackt in Zuckerguss, damit man sie den Kleinen erzählen kann, ohne dass sie schreien. Sie selbst erzählt die Geschichte niemandem mehr. Manche Wahrheiten, hat sie gelernt, verlieren nichts an Gewicht, nur weil man sie in ein Märchen kleidet.$t$,
    $t$Elle ne se souvient plus de la forêt elle-même, seulement de la faim qui lui collait à la peau comme une seconde peau, tandis qu'elle et son frère suivaient les petits cailloux qui, au clair de lune, luisaient comme de petites promesses froides. Ce qu'elle prenait, enfant, pour de la magie, elle le comprend aujourd'hui, à cinquante ans, comme quelque chose de bien plus prosaïque : que la pauvreté contraint les parents à des décisions qu'aucune fable ne peut jamais raconter avec justice, et que les adultes qui l'abandonnèrent n'étaient eux-mêmes que les enfants d'un système qui ne leur laissait d'autre choix que d'abandonner leur propre progéniture.

La maison en pain d'épices, dont tout le monde se souvient, n'a jamais été sucrée dans sa mémoire à elle. C'était un piège, certes, mais aussi la première fois que quelqu'un la laissait manger à sa faim, et cette ambivalence, ce sentiment d'être nourrie et dévorée en même temps, ne l'a plus jamais quittée de toute sa vie. Elle l'a retrouvée plus tard dans chaque relation, chez chaque personne qui lui donnait quelque chose dont elle avait besoin, tout en sachant exactement comment elle se le ferait rembourser. On appelle cela aujourd'hui, dans les livres qu'elle lit pour comprendre ce qui lui est arrivé, un schéma, mais enfant, elle ne connaissait que le goût du glaçage au sucre et la peur au ventre, tous deux réels en même temps.

Son frère n'en parle plus. Il a, à ce qu'elle entend dire, fondé une famille et vit comme si cette nuit dans la forêt n'avait jamais eu lieu, tandis qu'elle-même n'a pas eu d'enfants, par une peur qu'elle n'a jamais pu tout à fait nommer, mais qui a quelque chose à voir avec le four dans lequel elle a poussé la vieille femme pour survivre. On raconte toujours cette partie de l'histoire comme un triomphe, comme la preuve d'une intelligence enfantine, mais elle sait ce que cela signifie de tuer quelqu'un, même une sorcière, même pour sauver sa propre vie, et que cet acte l'a façonnée tout autant que la faim l'avait fait auparavant.

Quand elle voit aujourd'hui des enfants jouer dans les bois, insouciants, le ventre plein, elle pense parfois que les contes ne sont pas là pour faire peur aux enfants, mais pour montrer aux adultes combien de violence se cache dans la simple nécessité de survivre, enveloppée de glaçage au sucre pour qu'on puisse la raconter aux petits sans qu'ils se mettent à crier. Elle-même ne raconte plus cette histoire à personne. Certaines vérités, a-t-elle appris, ne perdent rien de leur poids simplement parce qu'on les habille en conte de fées.$t$,
    $t${"Sie":"elle","erinnert":"se souvient","sich":"se","nicht":"ne plus","mehr":"plus","an":"de","den":"la","Wald":"forêt","selbst":"elle-même","nur":"seulement","Hunger":"faim","der":"qui","ihr":"lui","wie":"comme","eine":"une","zweite":"seconde","Haut":"peau","anlag":"collait","während":"tandis que","sie":"elle","und":"et","Bruder":"frère","Kieselsteinen":"cailloux","folgten":"suivaient","die":"qui","im":"au","Mondlicht":"clair de lune","kleine":"petites","kalte":"froides","Versprechen":"promesses","glänzten":"luisaient","Was":"ce que","als":"enfant","Kind":"enfant","für":"pour","Magie":"magie","hielt":"prenait","versteht":"comprend","heute":"aujourd'hui","mit":"à","fünfzig":"cinquante","Jahren":"ans","etwas":"quelque chose","viel":"bien","Nüchterneres":"plus prosaïque","dass":"que","Armut":"pauvreté","Eltern":"parents","zu":"à","Entscheidungen":"décisions","zwingt":"contraint","keine":"aucune","Fabel":"fable","je":"jamais","gerecht":"avec justice","erzählen":"raconter","kann":"peut","Erwachsenen":"adultes","Stich":"abandonnèrent","ließen":"abandonnèrent","Kinder":"enfants","eines":"d'un","Systems":"système","waren":"étaient","das":"qui","ihnen":"leur","andere":"autre","Wahl":"choix","ließ":"laissait","Aussetzen":"abandon","eigenen":"propre","Nachkommen":"progéniture","Das":"la","Haus":"maison","aus":"en","Lebkuchen":"pain d'épices","alle":"tout le monde","erinnern":"se souvient","war":"a été","in":"dans","ihrer":"sa","Erinnerung":"mémoire","nie":"jamais","süß":"sucrée","Es":"c'","Falle":"piège","gewiss":"certes","aber":"mais","auch":"aussi","erste":"première","Mal":"fois","jemand":"quelqu'un","satt":"à sa faim","werden":"manger","diese":"cette","Ambivalenz":"ambivalence","dieses":"ce","Gefühl":"sentiment","gefüttert":"nourrie","zugleich":"en même temps","verzehrt":"dévorée","hat":"a","Leben":"vie","lang":"toute","losgelassen":"quittée","es":"l'","später":"plus tard","jeder":"chaque","Beziehung":"relation","wiedergefunden":"retrouvée","jedem":"chaque","Menschen":"personne","gab":"donnait","brauchte":"avait besoin","dabei":"tout en","genau":"exactement","wusste":"sachant","er":"il","zurückholen":"se faire rembourser","würde":"ferait","Man":"on","nennt":"appelle","Büchern":"livres","liest":"lit","um":"pour","verstehen":"comprendre","was":"ce qui","geschah":"est arrivé","ein":"un","Muster":"schéma","kannte":"connaissait","Geschmack":"goût","von":"de","Zuckerguss":"glaçage au sucre","Angst":"peur","Bauch":"ventre","beide":"tous deux","gleichzeitig":"en même temps","echt":"réels","Ihr":"son","spricht":"parle","darüber":"en","Er":"il","hört":"entend dire","Familie":"famille","gegründet":"fondé","lebt":"vit","so":"comme","sei":"était","jene":"cette","Nacht":"nuit","geschehen":"eu lieu","bekommen":"eu","einer":"une","heraus":"par","ganz":"tout à fait","benennen":"nommer","konnte":"pu","dem":"le","Ofen":"four","tun":"voir","Alte":"vieille femme","gestoßen":"poussé","überleben":"survivre","erzählt":"raconte","diesen":"cette","Teil":"partie","Geschichte":"histoire","immer":"toujours","Triumph":"triomphe","Beweis":"preuve","kindlicher":"enfantine","Klugheit":"intelligence","weiß":"sait","bedeutet":"signifie","jemanden":"quelqu'un","töten":"tuer","Hexe":"sorcière","zur":"pour","Rettung":"sauver","des":"de sa","Lebens":"vie","Tat":"acte","ebenso":"tout autant","geformt":"façonnée","zuvor":"auparavant","Wenn":"quand","spielen":"jouer","sieht":"voit","unbeschwert":"insouciants","vollen":"plein","Bäuchen":"ventre","denkt":"pense","manchmal":"parfois","Märchen":"contes","dazu":"pour cela","da":"là","sind":"sont","Kindern":"aux enfants","machen":"faire","sondern":"mais","zeigen":"montrer","Gewalt":"violence","bloßen":"simple","Notwendigkeit":"nécessité","Überlebens":"survivre","steckt":"se cache","verpackt":"enveloppée","damit":"pour que","man":"on","Kleinen":"petits","ohne":"sans","schreien":"crier","niemandem":"personne","Manche":"certaines","Wahrheiten":"vérités","gelernt":"appris","verlieren":"perdent","nichts":"rien","Gewicht":"poids","weil":"parce que","kleidet":"habille"}$t$::jsonb
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Woran erinnert sich die Erzählerin am deutlichsten aus ihrer Kindheit im Wald?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$An den Hunger$t$, true, 1),
    (v_q, $t$An das schöne Wetter$t$, false, 2),
    (v_q, $t$An die Musik der Vögel$t$, false, 3),
    (v_q, $t$An das Lachen ihres Bruders$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie deutet die erwachsene Erzählerin heute das Verhalten der Eltern, die die Kinder aussetzten?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Als Ergebnis eines Systems, das den Eltern selbst keine andere Wahl ließ$t$, true, 1),
    (v_q, $t$Als reine Grausamkeit ohne erklärbaren Grund$t$, false, 2),
    (v_q, $t$Als Strafe für kindliches Fehlverhalten$t$, false, 3),
    (v_q, $t$Als Missverständnis, das sich später aufklärte$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche erzählerische Funktion hat die Distanz zwischen kindlicher Erinnerung und erwachsener Deutung im Text?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie entlarvt die romantisierte Märchenversion und legt eine sozioökonomische und psychologische Lesart frei$t$, true, 1),
    (v_q, $t$Sie dient allein der Nostalgie und Verklärung der Kindheit$t$, false, 2),
    (v_q, $t$Sie soll beweisen, dass Kindererinnerungen grundsätzlich unzuverlässig sind$t$, false, 3),
    (v_q, $t$Sie hat keine besondere Funktion, sondern ist reine Stilspielerei$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie beschreibt die Erzählerin das Lebkuchenhaus?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Als Falle, aber auch als erste Sättigung$t$, true, 1),
    (v_q, $t$Als reine Bedrohung ohne jede positive Seite$t$, false, 2),
    (v_q, $t$Als Symbol des Reichtums ihrer Familie$t$, false, 3),
    (v_q, $t$Als Ort, den sie nie betreten hat$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie wirkt sich die Erfahrung mit dem Lebkuchenhaus auf das spätere Leben der Erzählerin aus?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie erkennt ein wiederkehrendes Muster in Beziehungen, in denen Geben und Ausnutzen verschmelzen$t$, true, 1),
    (v_q, $t$Sie entwickelt eine Vorliebe für Süßigkeiten$t$, false, 2),
    (v_q, $t$Sie meidet für immer den Kontakt zu anderen Menschen$t$, false, 3),
    (v_q, $t$Sie wird selbst zur Bäckerin$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie lässt sich die Ambivalenz "gefüttert und zugleich verzehrt zu werden" interpretieren?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Als Metapher für toxische Beziehungen, in denen Fürsorge und Ausbeutung untrennbar verbunden sind$t$, true, 1),
    (v_q, $t$Als wörtliche Beschreibung eines kulinarischen Erlebnisses$t$, false, 2),
    (v_q, $t$Als Hinweis auf eine Essstörung der Erzählerin$t$, false, 3),
    (v_q, $t$Als rein märchenhafte Übertreibung ohne psychologische Tiefe$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Hat die Erzählerin selbst Kinder bekommen?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Nein$t$, true, 1),
    (v_q, $t$Ja, drei Kinder$t$, false, 2),
    (v_q, $t$Ja, ein Kind$t$, false, 3),
    (v_q, $t$Das wird im Text nicht erwähnt$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie geht der Bruder mit den traumatischen Erlebnissen um, im Gegensatz zur Erzählerin?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er verdrängt sie und lebt, als sei nichts geschehen$t$, true, 1),
    (v_q, $t$Er spricht offen darüber und verarbeitet sie in Therapie$t$, false, 2),
    (v_q, $t$Er schreibt ein Buch über die Erlebnisse$t$, false, 3),
    (v_q, $t$Er kehrt regelmäßig an den Ort des Geschehens zurück$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche These über die Funktion von Märchen entwickelt der Text am Ende?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Märchen verpacken Erwachsenenwahrheiten über Gewalt und Überlebensnotwendigkeit in erträglicher Form für Kinder$t$, true, 1),
    (v_q, $t$Märchen dienen ausschließlich der moralischen Erziehung von Kindern$t$, false, 2),
    (v_q, $t$Märchen sollten aus Kinderbüchern entfernt werden, weil sie zu grausam sind$t$, false, 3),
    (v_q, $t$Märchen haben keinerlei Bezug zur Realität von Erwachsenen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet "Ambivalenz"?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$gleichzeitiges Vorhandensein widersprüchlicher Gefühle$t$, true, 1),
    (v_q, $t$völlige Gleichgültigkeit$t$, false, 2),
    (v_q, $t$starke Freude$t$, false, 3),
    (v_q, $t$eindeutige Ablehnung$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welches Wort ist im Kontext ein passendes Synonym für "Ambivalenz"?$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Zwiespältigkeit$t$, true, 1),
    (v_q, $t$Eindeutigkeit$t$, false, 2),
    (v_q, $t$Begeisterung$t$, false, 3),
    (v_q, $t$Distanz$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Wirkung erzielt der Begriff "Ambivalenz" im psychologischen Kontext des Textes gegenüber einem einfacheren Wort wie "Verwirrung"?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er benennt präzise das gleichzeitige, nicht auflösbare Nebeneinander zweier gegensätzlicher Gefühle als strukturelles Merkmal, nicht als bloße Konfusion$t$, true, 1),
    (v_q, $t$Er beschreibt lediglich eine vorübergehende emotionale Störung$t$, false, 2),
    (v_q, $t$Er hat eine rein positive Bedeutung$t$, false, 3),
    (v_q, $t$Er ist in diesem Kontext bedeutungsgleich mit "Gleichgültigkeit"$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Vervollständigen Sie: "Man erzählt diesen Teil immer als Triumph, aber sie weiß, was es bedeutet, jemanden zu _____." (Infinitiv)$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$töten$t$, true, 1),
    (v_q, $t$getötet$t$, false, 2),
    (v_q, $t$tötend$t$, false, 3),
    (v_q, $t$tötet$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Form entspricht dem Passiv in: "Sie hat es in jeder Beziehung wiedergefunden, in jedem Menschen, der ihr etwas gab, das sie brauchte, und dabei wusste, wie er es sich zurückholen würde." -- Wählen Sie die passende Konjunktiv-II-Form: "Sie fürchtete, dass er es sich zurück_____."$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$holen würde$t$, true, 1),
    (v_q, $t$geholt hat$t$, false, 2),
    (v_q, $t$holt$t$, false, 3),
    (v_q, $t$hole$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welcher Satz gibt "dass Armut Eltern zu Entscheidungen zwingt, die keine Fabel je gerecht erzählen kann" korrekt als nominalisierte Konstruktion wieder?$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Das Zwingen der Eltern durch Armut zu Entscheidungen entzieht sich einer gerechten fabelhaften Erzählung$t$, true, 1),
    (v_q, $t$Arme Eltern treffen Entscheidungen, die Fabeln nicht mögen$t$, false, 2),
    (v_q, $t$Fabeln erzählen selten von armen Eltern$t$, false, 3),
    (v_q, $t$Eltern werden durch Fabeln zu Entscheidungen gezwungen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$Schreiben Sie einen literarischen Absatz (8-12 Sätze), in dem Sie ein bekanntes Märchen aus einer erwachsenen, psychologisch reflektierten Perspektive neu deuten. Zeigen Sie, wie sich kindliche Erinnerung und erwachsene Einsicht widersprechen.$t$, 1, 'normal', 'production', $t$Als Kind hörte ich die Geschichte vom Rotkäppchen nur als Warnung vor fremden Männern im Wald, eine simple Lektion, die man mir mit erhobenem Zeigefinger erzählte. Heute, viele Jahre später, sehe ich in derselben Geschichte etwas viel Komplizierteres, nämlich die Frage, warum man ein Kind allein durch einen gefährlichen Wald schickt, um Essen zu einer kranken Großmutter zu bringen, anstatt selbst zu gehen. Die Erwachsenen in der Geschichte tragen eine Verantwortung, die das Märchen ihnen nie zuschreibt, während alle Schuld auf den Wolf und indirekt auf das Mädchen selbst abgewälzt wird. Man könnte sagen, das Märchen lehrt Vorsicht, aber tatsächlich lehrt es etwas Subtileres, nämlich dass Kinder für Gefahren verantwortlich gemacht werden, die eigentlich die Erwachsenen um sie herum geschaffen haben. Als Erwachsene erkenne ich in der Großmutter, die im Bett auf Hilfe wartet, eine Figur der Vernachlässigung, nicht nur der Krankheit. Der Jäger, der am Ende rettet, erscheint mir heute weniger als Held denn als Symbol dafür, dass Rettung von außen kommen muss, wenn das eigene Umfeld versagt hat. Diese Verschiebung der Perspektive verändert nicht die Handlung des Märchens, aber sie verändert vollständig, was ich aus ihm lerne. Vielleicht ist das die eigentliche Aufgabe des Erwachsenwerdens, die Geschichten der Kindheit noch einmal zu lesen und darin zu finden, was man als Kind nicht sehen durfte.$t$);

END $block$;

-- 20. Der letzte Kuckuck
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary) VALUES (
    'C2',
    $t$Der letzte Kuckuck$t$,
    $t$Herr Vogt hat in seinem Leben ungefähr viertausend Kuckucksuhren gebaut, und die letzte, an der seine Hände heute zittern, unterscheidet sich äußerlich kaum von der ersten, die er als Sechzehnjähriger unter der Aufsicht seines Vaters fertigte. Dieselben geschnitzten Tannenzweige, derselbe kleine Vogel aus Lindenholz, dieselbe Feder, die ihn zur vollen Stunde aus seinem Türchen treibt, um zu rufen, was er zu rufen hat, ohne je zu wissen, wie viele Stunden seines Herstellers er selbst mitgezählt hat.

Die Werkstatt, in der er arbeitet, gehörte seinem Großvater, und die Werkzeuge an der Wand tragen die Abnutzung dreier Generationen, glatt geschliffen an den Griffen, wo Hände sie gehalten haben, die längst unter der Erde liegen. Sein Sohn ist Programmierer in Stuttgart und kommt zu Weihnachten, um höflich zu bewundern, was der Vater tut, mit einer Freundlichkeit, die Vogt schmerzt, weil sie die Freundlichkeit ist, mit der man ein Museum besucht, nicht die Ehrfurcht, mit der man ein lebendiges Handwerk betrachtet. Die Enkelin allerdings, gerade acht Jahre alt, setzt sich manchmal stundenlang neben ihn und beobachtet, wie er die winzigen Zahnräder unter der Lupe justiert, und in ihren Augen erkennt er manchmal einen Funken von dem, was ihn selbst als Kind gehalten hat, obwohl er weiß, dass ein Funke keine Zukunft garantiert.

Die Uhr, die er jetzt baut, hat ein Kunde aus Japan bestellt, ein Mann, den er nie treffen wird, der aber, wie die Mails verraten, seit zwanzig Jahren spart, um sich ein echtes Stück aus dem Schwarzwald zu leisten, ein Original, wie er schreibt, kein Nachbau aus einer Fabrik in Fernost. Vogt findet diese Ironie bitter und süß zugleich: dass sein Handwerk, das in seiner eigenen Heimat kaum noch jemanden interessiert, am anderen Ende der Welt als Kostbarkeit gilt, aufbewahrt in einer Vitrine, weit entfernt von jedem Wald, in dem einst die Bäume wuchsen, aus denen sie geschnitzt wird.

Er weiß nicht, ob dies wirklich seine letzte Uhr sein wird, aber die Ärzte haben ihm Worte gesagt, die er lieber nicht wiederholt, und so arbeitet er langsamer als früher, nicht aus nachlassender Geschicklichkeit, sondern weil er jeden Handgriff auskosten will, als könnte er, wenn er nur sorgfältig genug ist, die Zeit selbst ein wenig anhalten, so wie die Uhr, die er baut, sie für andere in kleine, wiederkehrende Rufe zerlegt, die man zählen kann, ohne sich vor ihrem Ende zu fürchten.$t$,
    $t$Monsieur Vogt a fabriqué au cours de sa vie environ quatre mille coucous, et le dernier, sur lequel ses mains tremblent aujourd'hui, ne se distingue extérieurement guère du premier, qu'il avait confectionné à seize ans sous la surveillance de son père. Les mêmes branches de sapin sculptées, le même petit oiseau en bois de tilleul, le même ressort qui le pousse, à l'heure pile, hors de sa petite porte pour crier ce qu'il a à crier, sans jamais savoir combien d'heures de son fabricant lui-même il a ainsi comptées.

L'atelier où il travaille appartenait à son grand-père, et les outils accrochés au mur portent l'usure de trois générations, polis et lisses aux manches, là où les mains qui les ont tenus reposent depuis longtemps sous terre. Son fils est programmeur à Stuttgart et vient à Noël admirer poliment ce que fait son père, avec une gentillesse qui blesse Vogt, parce que c'est la gentillesse avec laquelle on visite un musée, non le respect avec lequel on considère un artisanat vivant. Sa petite-fille, en revanche, à peine âgée de huit ans, s'assoit parfois des heures durant à côté de lui et observe comment il ajuste les minuscules rouages sous la loupe, et dans ses yeux, il reconnaît parfois une étincelle de ce qui l'avait lui-même captivé enfant, bien qu'il sache qu'une étincelle ne garantit aucun avenir.

L'horloge qu'il fabrique en ce moment lui a été commandée par un client du Japon, un homme qu'il ne rencontrera jamais, mais qui, comme le révèlent ses courriels, économise depuis vingt ans pour pouvoir s'offrir une pièce authentique de la Forêt-Noire, un original, comme il l'écrit, non une copie sortie d'une usine d'Extrême-Orient. Vogt trouve cette ironie à la fois amère et douce : que son métier, qui n'intéresse presque plus personne dans son propre pays, passe pour un trésor à l'autre bout du monde, conservé dans une vitrine, loin de toute forêt où poussaient jadis les arbres dans lesquels il est sculpté.

Il ne sait pas si celle-ci sera vraiment sa dernière horloge, mais les médecins lui ont dit des mots qu'il préfère ne pas répéter, et il travaille donc plus lentement qu'auparavant, non par dextérité déclinante, mais parce qu'il veut savourer chaque geste, comme s'il pouvait, en étant seulement assez soigneux, retenir un peu le temps lui-même, tout comme l'horloge qu'il fabrique le découpe, pour d'autres, en petits appels récurrents que l'on peut compter sans craindre leur fin.$t$,
    $t${"Herr":"monsieur","Vogt":"Vogt","hat":"a","in":"au cours de","seinem":"sa","Leben":"vie","ungefähr":"environ","viertausend":"quatre mille","Kuckucksuhren":"coucous","gebaut":"fabriqué","und":"et","die":"le","letzte":"dernier","an":"sur","der":"lequel","seine":"ses","Hände":"mains","heute":"aujourd'hui","zittern":"tremblent","unterscheidet":"distingue","sich":"se","äußerlich":"extérieurement","kaum":"guère","von":"du","ersten":"premier","er":"il","als":"à","Sechzehnjähriger":"seize ans","unter":"sous","Aufsicht":"surveillance","seines":"de son","Vaters":"père","fertigte":"confectionné","Dieselben":"les mêmes","geschnitzten":"sculptées","Tannenzweige":"branches de sapin","derselbe":"le même","kleine":"petit","Vogel":"oiseau","aus":"en","Lindenholz":"bois de tilleul","dieselbe":"le même","Feder":"ressort","ihn":"le","zur":"à l'","vollen":"pile","Stunde":"heure","Türchen":"petite porte","treibt":"pousse","um":"pour","zu":"à","rufen":"crier","was":"ce qu'","ohne":"sans","je":"jamais","wissen":"savoir","wie":"combien","viele":"d'","Stunden":"heures","Herstellers":"fabricant","selbst":"lui-même","mitgezählt":"comptées","Die":"l'","Werkstatt":"atelier","arbeitet":"travaille","gehörte":"appartenait","Großvater":"grand-père","Werkzeuge":"outils","Wand":"mur","tragen":"portent","Abnutzung":"usure","dreier":"trois","Generationen":"générations","glatt":"lisses","geschliffen":"polis","den":"les","Griffen":"manches","wo":"là où","gehalten":"tenus","haben":"ont","längst":"depuis longtemps","Erde":"terre","liegen":"reposent","Sein":"son","Sohn":"fils","ist":"est","Programmierer":"programmeur","Stuttgart":"Stuttgart","kommt":"vient","Weihnachten":"Noël","höflich":"poliment","bewundern":"admirer","Vater":"père","tut":"fait","mit":"avec","einer":"une","Freundlichkeit":"gentillesse","schmerzt":"blesse","weil":"parce que","sie":"elle","Museum":"musée","besucht":"visite","nicht":"non","Ehrfurcht":"respect","lebendiges":"vivant","Handwerk":"artisanat","betrachtet":"considère","Enkelin":"petite-fille","allerdings":"en revanche","gerade":"à peine","acht":"huit","Jahre":"ans","alt":"âgée","setzt":"s'assoit","manchmal":"parfois","stundenlang":"des heures durant","neben":"à côté de","beobachtet":"observe","winzigen":"minuscules","Zahnräder":"rouages","Lupe":"loupe","justiert":"ajuste","ihren":"ses","Augen":"yeux","erkennt":"reconnaît","einen":"une","Funken":"étincelle","dem":"ce qui","Kind":"enfant","obwohl":"bien que","weiß":"sache","dass":"qu'","Funke":"étincelle","keine":"aucun","Zukunft":"avenir","garantiert":"garantit","Uhr":"horloge","jetzt":"en ce moment","baut":"fabrique","Kunde":"client","Japan":"Japon","bestellt":"commandée","Mann":"homme","nie":"jamais","treffen":"rencontrera","wird":"sera","aber":"mais","Mails":"courriels","verraten":"révèlent","seit":"depuis","zwanzig":"vingt","Jahren":"ans","spart":"économise","echtes":"authentique","Stück":"pièce","Schwarzwald":"Forêt-Noire","leisten":"s'offrir","Original":"original","schreibt":"écrit","kein":"non une","Nachbau":"copie","Fabrik":"usine","Fernost":"Extrême-Orient","findet":"trouve","diese":"cette","Ironie":"ironie","bitter":"amère","süß":"douce","zugleich":"à la fois","sein":"métier","das":"qui","seiner":"son","eigenen":"propre","Heimat":"pays","noch":"presque","jemanden":"personne","interessiert":"intéresse","am":"à l'","anderen":"autre","Ende":"bout","Welt":"monde","Kostbarkeit":"trésor","gilt":"passe pour","aufbewahrt":"conservé","Vitrine":"vitrine","weit":"loin","entfernt":"loin de","jedem":"toute","Wald":"forêt","einst":"jadis","Bäume":"arbres","wuchsen":"poussaient","denen":"dans lesquels","geschnitzt":"sculpté","Er":"il","ob":"si","dies":"celle-ci","wirklich":"vraiment","Ärzte":"médecins","ihm":"lui","Worte":"mots","gesagt":"dit","lieber":"préfère","wiederholt":"répéter","so":"donc","langsamer":"plus lentement","früher":"qu'auparavant","nachlassender":"déclinante","Geschicklichkeit":"dextérité","sondern":"mais","jeden":"chaque","Handgriff":"geste","auskosten":"savourer","will":"veut","könnte":"pouvait","wenn":"comme si","nur":"seulement","sorgfältig":"soigneux","genug":"assez","Zeit":"temps","wenig":"peu","anhalten":"retenir","für":"pour","andere":"d'autres","wiederkehrende":"récurrents","Rufe":"appels","zerlegt":"découpe","zählen":"compter","kann":"peut","vor":"de","ihrem":"leur","fürchten":"craindre","man":"on","ein":"un"}$t$::jsonb
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie viele Kuckucksuhren hat Herr Vogt in seinem Leben ungefähr gebaut?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Etwa viertausend$t$, true, 1),
    (v_q, $t$Etwa hundert$t$, false, 2),
    (v_q, $t$Etwa zehntausend$t$, false, 3),
    (v_q, $t$Etwa fünfzig$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was unterscheidet die letzte Uhr, an der Vogt arbeitet, von seiner allerersten Uhr?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Äußerlich fast nichts, obwohl seine Hände heute zittern$t$, true, 1),
    (v_q, $t$Sie ist viel größer als die erste$t$, false, 2),
    (v_q, $t$Sie besteht aus anderem Material$t$, false, 3),
    (v_q, $t$Sie hat keinen Vogel$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Bedeutung gewinnt die formale Beständigkeit der Uhr angesichts von Vogts körperlichem Verfall?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie steht als beständige Form im Kontrast zur Vergänglichkeit des Menschen, der sie schafft$t$, true, 1),
    (v_q, $t$Sie zeigt, dass sich das Handwerk über die Jahre nicht weiterentwickelt hat$t$, false, 2),
    (v_q, $t$Sie beweist, dass Vogt keine neuen Techniken gelernt hat$t$, false, 3),
    (v_q, $t$Sie hat keine besondere symbolische Funktion im Text$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was macht der Sohn von Herrn Vogt beruflich?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er ist Programmierer in Stuttgart$t$, true, 1),
    (v_q, $t$Er ist ebenfalls Uhrmacher$t$, false, 2),
    (v_q, $t$Er ist Lehrer$t$, false, 3),
    (v_q, $t$Er lebt im Ausland$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum schmerzt Vogt die Art, wie sein Sohn seine Arbeit bewundert?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Weil es eine höfliche, museale Bewunderung ist statt echter Ehrfurcht vor einem lebendigen Handwerk$t$, true, 1),
    (v_q, $t$Weil der Sohn die Arbeit offen kritisiert$t$, false, 2),
    (v_q, $t$Weil der Sohn nie zu Besuch kommt$t$, false, 3),
    (v_q, $t$Weil der Sohn selbst Uhrmacher werden wollte, es aber nicht durfte$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welchen Kontrast stellt die Enkelin gegenüber dem Sohn im Text dar?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie zeigt echtes, unmittelbares Interesse, während der Sohn nur höfliche Distanz zeigt, auch wenn dieser Funke keine Zukunft garantiert$t$, true, 1),
    (v_q, $t$Sie ist genauso gleichgültig wie ihr Vater$t$, false, 2),
    (v_q, $t$Sie hat bereits beschlossen, das Handwerk zu erlernen$t$, false, 3),
    (v_q, $t$Sie wird im Text nur beiläufig erwähnt, ohne Bedeutung$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Woher kommt der Kunde, für den Vogt die letzte Uhr baut?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Aus Japan$t$, true, 1),
    (v_q, $t$Aus den USA$t$, false, 2),
    (v_q, $t$Aus Frankreich$t$, false, 3),
    (v_q, $t$Aus Österreich$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Worin besteht die von Vogt empfundene Ironie bezüglich seines Handwerks?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Es wird in der eigenen Heimat kaum noch geschätzt, gilt aber am anderen Ende der Welt als Kostbarkeit$t$, true, 1),
    (v_q, $t$Es ist in Deutschland beliebter als im Ausland$t$, false, 2),
    (v_q, $t$Der Kunde aus Japan bezahlt zu wenig für die Uhr$t$, false, 3),
    (v_q, $t$Niemand außerhalb des Schwarzwaldes kennt Kuckucksuhren$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie ist der Schlusssatz über das Anhalten der Zeit zu deuten?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Als Metapher dafür, dass sorgfältige, bewusste Arbeit dem Handwerker hilft, die eigene Sterblichkeit erträglich zu machen$t$, true, 1),
    (v_q, $t$Als wörtliche Aussage, dass Vogt an einer Zeitmaschine arbeitet$t$, false, 2),
    (v_q, $t$Als Hinweis darauf, dass die Uhr fehlerhaft funktioniert$t$, false, 3),
    (v_q, $t$Als reine Redewendung ohne tiefere Bedeutung im Kontext$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet "Ehrfurcht"?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$tiefer Respekt, gemischt mit Staunen$t$, true, 1),
    (v_q, $t$leichte Neugier$t$, false, 2),
    (v_q, $t$starke Angst$t$, false, 3),
    (v_q, $t$völlige Gleichgültigkeit$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welches Wort passt im Kontext als Synonym für "Ehrfurcht"?$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Verehrung$t$, true, 1),
    (v_q, $t$Verachtung$t$, false, 2),
    (v_q, $t$Langeweile$t$, false, 3),
    (v_q, $t$Misstrauen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Nuance unterscheidet "Ehrfurcht" von "Bewunderung" im Kontext des Textes?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$"Ehrfurcht" impliziert eine tiefere, fast demütige Anerkennung eines lebendigen Wertes, während "Bewunderung" auch oberflächlich und distanziert bleiben kann$t$, true, 1),
    (v_q, $t$Beide Begriffe sind in jedem Kontext völlig identisch$t$, false, 2),
    (v_q, $t$"Ehrfurcht" bezieht sich ausschließlich auf religiöse Kontexte$t$, false, 3),
    (v_q, $t$"Bewunderung" ist stets stärker als "Ehrfurcht"$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Vervollständigen Sie: "Er weiß nicht, ob dies wirklich seine letzte Uhr sein _____." (Konjunktiv/Futur)$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$wird$t$, true, 1),
    (v_q, $t$würde$t$, false, 2),
    (v_q, $t$sei$t$, false, 3),
    (v_q, $t$war$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Form entspricht dem irrealen Konjunktiv II in: "Als könnte er, wenn er nur sorgfältig genug _____, die Zeit ein wenig anhalten."$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$wäre$t$, true, 1),
    (v_q, $t$sei$t$, false, 2),
    (v_q, $t$ist$t$, false, 3),
    (v_q, $t$war$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welcher Satz gibt "dass sein Handwerk, das in seiner eigenen Heimat kaum noch jemanden interessiert, am anderen Ende der Welt als Kostbarkeit gilt" am besten als nominalisierte Konstruktion wieder?$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Das Gelten seines in der Heimat kaum noch interessierenden Handwerks als Kostbarkeit am anderen Ende der Welt erscheint ihm bitter und süß$t$, true, 1),
    (v_q, $t$Sein Handwerk interessiert niemanden mehr in der Heimat$t$, false, 2),
    (v_q, $t$Am anderen Ende der Welt gilt sein Handwerk als wertvoll$t$, false, 3),
    (v_q, $t$Er findet sein Handwerk in der Heimat und im Ausland gleich wertvoll$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$Schreiben Sie einen literarischen Absatz (8-12 Sätze) über einen Handwerker, der spürt, dass sein Handwerk mit ihm ausstirbt. Reflektieren Sie über die Beziehung zwischen Vergänglichkeit und dem Wunsch, etwas Bleibendes zu schaffen.$t$, 1, 'normal', 'production', $t$Es gibt einen bestimmten Moment im Leben eines Handwerkers, in dem er begreift, dass die Bewegungen seiner Hände, die er sich über Jahrzehnte angeeignet hat, mit ihm sterben werden, wenn niemand da ist, der sie übernimmt. Dieser Moment kommt selten mit einem lauten Knall, sondern eher leise, etwa wenn ein Sohn höflich nickt, ohne wirklich zuzuhören, oder wenn eine Bestellung ausbleibt, die früher selbstverständlich war. Man beginnt dann, jedes Werkstück anders zu betrachten, nicht mehr als eines von vielen, sondern als möglichen letzten Zeugen einer Fertigkeit, die bald nur noch in Museen erklärt werden wird. Diese Erkenntnis verändert die Arbeit selbst, sie wird langsamer, sorgfältiger, fast andächtig, als könnte die Genauigkeit der Ausführung das drohende Verschwinden aufhalten. Zugleich entsteht eine seltsame Ruhe, denn wer weiß, dass er zu den Letzten gehört, muss sich nicht mehr mit der Zukunft messen, sondern nur noch mit dem, was in seinen Händen entsteht. Manchmal findet sich unerwartet doch noch ein Funke Interesse bei einem jungen Menschen, und dieser Funke genügt, um die Arbeit fortzusetzen, auch ohne Garantie, dass er sich zu einer Flamme entwickelt. So webt sich in jedes Werkstück eine doppelte Zeit ein, die eigene endliche Lebenszeit des Handwerkers und die potenzielle, ungewisse Zukunft seines Wissens. Am Ende bleibt vielleicht nur die Hoffnung, dass wenigstens ein Gegenstand die eigene Sorgfalt über den Tod hinaus bezeugt.$t$);

END $block$;

-- 21. Das Bild unter der Haut
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary) VALUES (
    'C2',
    $t$Das Bild unter der Haut$t$,
    $t$Frau Elisabeth Hartung war siebenundzwanzig, als man sie im Winter 1896 in ein Würzburger Hinterzimmer führte, wo ein Professor mit unruhigen Augen ihr erklärte, er wolle ein Bild von ihrer verletzten Hand machen, nicht mit Tusche und Papier, sondern mit einer unsichtbaren Strahlung, die er selbst erst wenige Wochen zuvor entdeckt und noch nicht einmal ganz benannt hatte. Sie hatte Angst, wie sie später ihrer Tochter erzählte, aber es war eine andere Angst als die vor dem Skalpell, eine Angst vor dem Unbekannten, das keine sichtbare Klinge trug und gerade deshalb umso bedrohlicher schien.

Man bat sie, die Hand für mehrere Minuten still zu halten, während irgendwo hinter ihr ein Apparat summte, der sie an das Knistern eines Gewitters erinnerte, und sie starrte an die Decke und dachte, wie sie später gestand, nicht an die Wissenschaft, sondern an ihren verstorbenen Vater, dessen Hände sie plötzlich, ohne Grund, sehr genau vor sich sah. Als der Professor ihr schließlich die entwickelte Platte zeigte, brauchte sie einen Moment, um zu begreifen, was sie sah: die Knochen ihrer eigenen Hand, grau und fremd, schwebend in einem Feld aus Dunkelheit, mit dem Ring, den ihr verstorbener Mann ihr geschenkt hatte, deutlich sichtbar als schwarzer Schatten um einen Finger, dessen Fleisch verschwunden war.

Sie beschrieb dieses Bild später nicht als medizinisches Wunder, sondern als eine Art Vorwegnahme des eigenen Todes, denn was sie sah, war genau das, was von ihr übrig bleiben würde, wenn alles andere vergangen wäre, und diese Erkenntnis traf sie mit einer Wucht, für die keiner der Ärzte im Raum eine Vorbereitung hatte anbieten können. Der Professor selbst, der Herr Röntgen genannt wurde, entschuldigte sich fast, als er ihre Reaktion sah, und murmelte etwas davon, dass er selbst noch nicht wisse, was diese Entdeckung für die Menschen bedeuten werde, ob Segen oder Fluch, und dass er manchmal nachts nicht schlafen könne vor lauter Fragen, die er sich selbst nicht beantworten könne.

Elisabeth Hartung lebte noch vierzig Jahre nach jenem Nachmittag, und sie erzählte die Geschichte oft, doch nie ohne jenes kurze Zögern, das ihre Tochter später als das eigentliche Zentrum der Erzählung erkannte: den Moment, in dem ein Mensch zum ersten Mal in der Geschichte der Menschheit das eigene Innere sah, bevor er dazu bereit war, es zu sehen, und begriff, dass Wissenschaft nicht nur Krankheiten heilt, sondern auch Gewissheiten zerstört, die man vorher nicht einmal als Gewissheiten erkannt hatte.$t$,
    $t$Madame Elisabeth Hartung avait vingt-sept ans lorsqu'on la conduisit, l'hiver 1896, dans une arrière-salle de Wurtzbourg, où un professeur aux yeux inquiets lui expliqua qu'il voulait faire une image de sa main blessée, non pas à l'encre et au papier, mais au moyen d'un rayonnement invisible que lui-même avait découvert à peine quelques semaines auparavant et n'avait même pas encore tout à fait nommé. Elle avait peur, comme elle le raconta plus tard à sa fille, mais c'était une peur différente de celle du scalpel, une peur de l'inconnu, qui ne portait aucune lame visible et paraissait d'autant plus menaçant pour cette raison même.

On lui demanda de tenir la main immobile pendant plusieurs minutes, tandis que, quelque part derrière elle, bourdonnait un appareil qui lui rappelait le crépitement d'un orage, et elle fixait le plafond et pensait, comme elle l'avoua plus tard, non pas à la science, mais à son père défunt, dont elle voyait soudain, sans raison, les mains avec une extrême précision devant elle. Lorsque le professeur lui montra enfin la plaque développée, il lui fallut un moment pour comprendre ce qu'elle voyait : les os de sa propre main, gris et étrangers, flottant dans un champ d'obscurité, avec la bague que son défunt mari lui avait offerte, nettement visible comme une ombre noire autour d'un doigt dont la chair avait disparu.

Elle décrivit plus tard cette image non pas comme un miracle médical, mais comme une sorte d'anticipation de sa propre mort, car ce qu'elle voyait était exactement ce qui resterait d'elle une fois tout le reste disparu, et cette prise de conscience la frappa avec une force à laquelle aucun des médecins présents dans la pièce n'avait pu la préparer. Le professeur lui-même, que l'on appelait Monsieur Röntgen, s'excusa presque en voyant sa réaction, et murmura quelque chose sur le fait qu'il ne savait pas encore lui-même ce que cette découverte signifierait pour l'humanité, bénédiction ou malédiction, et qu'il ne pouvait parfois pas dormir la nuit à force de questions auxquelles il ne pouvait lui-même répondre.

Elisabeth Hartung vécut encore quarante ans après cet après-midi-là, et elle raconta souvent cette histoire, mais jamais sans cette brève hésitation que sa fille reconnut plus tard comme le véritable centre du récit : le moment où un être humain vit, pour la première fois dans l'histoire de l'humanité, son propre intérieur avant même d'y être prêt, et comprit que la science ne guérit pas seulement les maladies, mais détruit aussi des certitudes que l'on n'avait pas même reconnues auparavant comme telles.$t$,
    $t${"Frau":"madame","Elisabeth":"Elisabeth","Hartung":"Hartung","war":"avait","siebenundzwanzig":"vingt-sept","als":"lorsque","man":"on","sie":"la","im":"l'","Winter":"hiver","in":"dans","ein":"une","Würzburger":"de Wurtzbourg","Hinterzimmer":"arrière-salle","führte":"conduisit","wo":"où","Professor":"professeur","mit":"aux","unruhigen":"inquiets","Augen":"yeux","ihr":"lui","erklärte":"expliqua","er":"il","wolle":"voulait","Bild":"image","von":"de","ihrer":"sa","verletzten":"blessée","Hand":"main","machen":"faire","nicht":"non pas","Tusche":"encre","und":"et","Papier":"papier","sondern":"mais","einer":"un","unsichtbaren":"invisible","Strahlung":"rayonnement","die":"que","selbst":"lui-même","erst":"à peine","wenige":"quelques","Wochen":"semaines","zuvor":"auparavant","entdeckt":"découvert","noch":"encore","einmal":"même","ganz":"tout à fait","benannt":"nommé","hatte":"avait","Sie":"elle","Angst":"peur","wie":"comme","später":"plus tard","Tochter":"fille","erzählte":"raconta","aber":"mais","es":"c'","eine":"une","andere":"différente","vor":"de","dem":"le","Skalpell":"scalpel","Unbekannten":"inconnu","das":"qui","keine":"aucune","sichtbare":"visible","Klinge":"lame","trug":"portait","gerade":"pour cette raison même","deshalb":"pour cela","umso":"d'autant plus","bedrohlicher":"menaçant","schien":"paraissait","Man":"on","bat":"demanda","für":"pendant","mehrere":"plusieurs","Minuten":"minutes","still":"immobile","zu":"à","halten":"tenir","während":"tandis que","irgendwo":"quelque part","hinter":"derrière","Apparat":"appareil","summte":"bourdonnait","der":"qui","an":"à","Knistern":"crépitement","eines":"d'un","Gewitters":"orage","erinnerte":"rappelait","starrte":"fixait","Decke":"plafond","dachte":"pensait","gestand":"avoua","Wissenschaft":"science","ihren":"son","verstorbenen":"défunt","Vater":"père","dessen":"dont","Hände":"mains","plötzlich":"soudain","ohne":"sans","Grund":"raison","sehr":"extrême","genau":"précision","sich":"devant elle","sah":"voyait","Als":"lorsque","schließlich":"enfin","entwickelte":"développée","Platte":"plaque","zeigte":"montra","brauchte":"fallut","einen":"un","Moment":"moment","um":"pour","begreifen":"comprendre","was":"ce qu'","Knochen":"os","eigenen":"propre","grau":"gris","fremd":"étrangers","schwebend":"flottant","einem":"un","Feld":"champ","aus":"d'","Dunkelheit":"obscurité","Ring":"bague","den":"que","verstorbener":"défunt","Mann":"mari","geschenkt":"offerte","deutlich":"nettement","sichtbar":"visible","schwarzer":"noire","Schatten":"ombre","Finger":"doigt","Fleisch":"chair","verschwunden":"disparu","beschrieb":"décrivit","dieses":"cette","medizinisches":"médical","Wunder":"miracle","Art":"sorte","Vorwegnahme":"anticipation","des":"de sa","Todes":"mort","denn":"car","übrig":"reste","bleiben":"rester","würde":"resterait","wenn":"une fois que","alles":"tout","vergangen":"disparu","wäre":"fût","diese":"cette","Erkenntnis":"prise de conscience","traf":"frappa","Wucht":"force","keiner":"aucun","Ärzte":"médecins","Raum":"pièce","Vorbereitung":"préparation","anbieten":"offrir","können":"pu","Der":"le","Herr":"monsieur","Röntgen":"Röntgen","genannt":"appelait","wurde":"appelait","entschuldigte":"excusa","fast":"presque","ihre":"sa","Reaktion":"réaction","murmelte":"murmura","etwas":"quelque chose","davon":"sur le fait","dass":"que","wisse":"savait","Entdeckung":"découverte","Menschen":"humanité","bedeuten":"signifierait","werde":"signifierait","ob":"soit","Segen":"bénédiction","oder":"ou","Fluch":"malédiction","manchmal":"parfois","nachts":"la nuit","schlafen":"dormir","könne":"pouvait","lauter":"tant de","Fragen":"questions","beantworten":"répondre","lebte":"vécut","vierzig":"quarante","Jahre":"ans","nach":"après","jenem":"cet","Nachmittag":"après-midi","Geschichte":"histoire","oft":"souvent","doch":"mais","nie":"jamais","jenes":"cette","kurze":"brève","Zögern":"hésitation","eigentliche":"véritable","Zentrum":"centre","Erzählung":"récit","erkannte":"reconnut","Mensch":"être humain","zum":"pour la","ersten":"première","Mal":"fois","Menschheit":"humanité","eigene":"propre","Innere":"intérieur","bevor":"avant","dazu":"à cela","bereit":"prêt","sehen":"voir","begriff":"comprit","nur":"seulement","Krankheiten":"maladies","heilt":"guérit","auch":"aussi","Gewissheiten":"certitudes","zerstört":"détruit","vorher":"auparavant","erkannt":"reconnues"}$t$::jsonb
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$In welcher Stadt findet die Untersuchung statt?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Würzburg$t$, true, 1),
    (v_q, $t$Berlin$t$, false, 2),
    (v_q, $t$München$t$, false, 3),
    (v_q, $t$Heidelberg$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum hat Frau Hartung Angst vor der Untersuchung?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Weil es eine Angst vor dem Unbekannten ist, das keine sichtbare Bedrohung darstellt$t$, true, 1),
    (v_q, $t$Weil sie Angst vor dem Skalpell hat$t$, false, 2),
    (v_q, $t$Weil der Professor ihr droht$t$, false, 3),
    (v_q, $t$Weil sie den Apparat für gefährlich für ihr Leben hält$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie wird die Unsicherheit der frühen Röntgenforschung im Text literarisch eingefangen?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Durch die Darstellung eines Professors, der selbst Angst und Unwissen zeigt, statt souveräne wissenschaftliche Autorität$t$, true, 1),
    (v_q, $t$Durch eine ausführliche technische Erklärung des Apparats$t$, false, 2),
    (v_q, $t$Durch die vollständige Abwesenheit von Emotionen im Text$t$, false, 3),
    (v_q, $t$Durch eine rein positive Darstellung des wissenschaftlichen Fortschritts$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$An wen denkt Frau Hartung während der Untersuchung?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$An ihren verstorbenen Vater$t$, true, 1),
    (v_q, $t$An ihren Ehemann$t$, false, 2),
    (v_q, $t$An den Professor$t$, false, 3),
    (v_q, $t$An ihre Tochter$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was ist auf dem Röntgenbild ihrer Hand deutlich als Schatten sichtbar?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Der Ring, den ihr verstorbener Mann ihr geschenkt hat$t$, true, 1),
    (v_q, $t$Ein gebrochener Knochen$t$, false, 2),
    (v_q, $t$Eine Narbe$t$, false, 3),
    (v_q, $t$Ein Fremdkörper unter der Haut$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie ist die Formulierung zu verstehen, das Bild sei "genau das, was von ihr übrig bleiben würde, wenn alles andere vergangen wäre"?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Als existenzielle Konfrontation mit der eigenen Sterblichkeit durch den Anblick des eigenen Skeletts$t$, true, 1),
    (v_q, $t$Als rein anatomische Feststellung ohne emotionale Bedeutung$t$, false, 2),
    (v_q, $t$Als Hinweis darauf, dass sie bald sterben wird$t$, false, 3),
    (v_q, $t$Als Kritik an der medizinischen Genauigkeit des Bildes$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie reagiert der Professor, als er Elisabeths Reaktion auf das Bild sieht?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er entschuldigt sich fast$t$, true, 1),
    (v_q, $t$Er lacht$t$, false, 2),
    (v_q, $t$Er ist stolz und zufrieden$t$, false, 3),
    (v_q, $t$Er ignoriert ihre Reaktion$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was gesteht der Professor über seine eigenen Zweifel bezüglich seiner Entdeckung?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er weiß nicht, ob sie Segen oder Fluch für die Menschheit sein wird, und kann nachts oft nicht schlafen$t$, true, 1),
    (v_q, $t$Er ist sich völlig sicher, dass sie nur Gutes bringen wird$t$, false, 2),
    (v_q, $t$Er bereut die Entdeckung bereits vollständig$t$, false, 3),
    (v_q, $t$Er plant, die Entdeckung geheim zu halten$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche allgemeinere These über Wissenschaft formuliert der Schlussabsatz des Textes?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Wissenschaft heilt nicht nur, sondern zerstört auch unbewusste Gewissheiten über die eigene Existenz$t$, true, 1),
    (v_q, $t$Wissenschaft sollte grundsätzlich mit größerer Vorsicht betrieben werden als im 19. Jahrhundert$t$, false, 2),
    (v_q, $t$Röntgens Entdeckung war letztlich bedeutungslos für die Patientin$t$, false, 3),
    (v_q, $t$Medizinischer Fortschritt bringt ausschließlich Vorteile ohne jede Kehrseite$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet "Vorwegnahme"?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$das gedankliche Vorausnehmen von etwas Zukünftigem$t$, true, 1),
    (v_q, $t$eine nachträgliche Erklärung$t$, false, 2),
    (v_q, $t$eine Entschuldigung$t$, false, 3),
    (v_q, $t$eine Wiederholung$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welches Wort ist im Kontext ein passendes Synonym für "Vorwegnahme"?$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Antizipation$t$, true, 1),
    (v_q, $t$Wiederholung$t$, false, 2),
    (v_q, $t$Ablehnung$t$, false, 3),
    (v_q, $t$Bestätigung$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche stilistische und semantische Funktion erfüllt "Vorwegnahme des eigenen Todes" im Vergleich zu einer einfacheren Formulierung wie "Erinnerung an den Tod"?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Es beschreibt ein aktives, gedankliches Vorausgreifen auf ein zukünftiges Ereignis, nicht nur eine rückwärtsgewandte Assoziation$t$, true, 1),
    (v_q, $t$Es hat exakt dieselbe Bedeutung wie "Erinnerung an den Tod"$t$, false, 2),
    (v_q, $t$Es bezieht sich ausschließlich auf religiöse Vorstellungen$t$, false, 3),
    (v_q, $t$Es ist stilistisch neutraler als "Erinnerung an den Tod"$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Vervollständigen Sie (indirekte Rede, Konjunktiv I): "Er sagte, er _____ selbst noch nicht, was diese Entdeckung bedeuten werde."$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$wisse$t$, true, 1),
    (v_q, $t$weiß$t$, false, 2),
    (v_q, $t$wüsste$t$, false, 3),
    (v_q, $t$gewusst$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Form vervollständigt korrekt: "Er murmelte, dass er manchmal nachts nicht schlafen _____, vor lauter Fragen." (Konjunktiv I)$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$könne$t$, true, 1),
    (v_q, $t$kann$t$, false, 2),
    (v_q, $t$könnte$t$, false, 3),
    (v_q, $t$gekonnt$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welcher Satz gibt "den Moment, in dem ein Mensch zum ersten Mal das eigene Innere sah, bevor er dazu bereit war, es zu sehen" am besten als erweitertes Attribut wieder?$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$der Moment des ersten, noch unvorbereiteten Sehens des eigenen Inneren durch einen Menschen$t$, true, 1),
    (v_q, $t$der Moment, als der Mensch bereit war$t$, false, 2),
    (v_q, $t$ein Moment ohne Bedeutung für die Wissenschaft$t$, false, 3),
    (v_q, $t$der Moment, in dem die Wissenschaft geboren wurde$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$Schreiben Sie einen literarischen Absatz (8-12 Sätze) über die erste Begegnung eines Menschen mit einer neuen Technologie, die ihn mit einer unerwarteten, existenziellen Wahrheit konfrontiert.$t$, 1, 'normal', 'production', $t$Es gibt Momente, in denen eine Erfindung, die eigentlich zur Erleichterung des menschlichen Lebens gedacht war, den Menschen stattdessen mit einer Wahrheit konfrontiert, auf die er nicht vorbereitet ist. So erging es jenem Mann, der zum ersten Mal seine eigene Stimme von einem Tonbandgerät hörte und sich selbst kaum wiedererkannte, weil das Ohr sich selbst immer anders hört als das Aufnahmegerät es einfängt. In diesem winzigen Missverhältnis zwischen Selbstbild und Aufzeichnung erkannte er plötzlich, wie sehr sein ganzes Selbstverständnis auf Annahmen beruhte, die er nie hinterfragt hatte. Die Technologie selbst war neutral, ein Apparat aus Spulen und Magnetband, doch das, was sie offenbarte, betraf etwas zutiefst Persönliches, das keine Maschine je beabsichtigt hatte zu berühren. Ähnlich erging es Generationen vor uns, wenn ein Spiegel zum ersten Mal wirklich klar wurde, oder eine Fotografie ein Gesicht festhielt, wie es niemand zuvor je bewusst gesehen hatte. Jede neue Technik, die den Menschen sich selbst zeigt, trägt dieses doppelte Potenzial in sich, Erkenntnis zu bringen und zugleich eine stille Gewissheit zu zerstören. Man könnte sagen, der Fortschritt besteht nicht nur darin, neue Dinge sichtbar zu machen, sondern auch darin, uns zu zwingen, mit dem umzugehen, was wir dabei über uns selbst erfahren. Diese Konfrontation lässt sich nicht rückgängig machen, sobald sie einmal stattgefunden hat, und genau darin liegt vielleicht die eigentliche, unbequeme Kraft jeder wahren Entdeckung.$t$);

END $block$;

-- 22. Der Brief aus Lakehurst
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary) VALUES (
    'C2',
    $t$Der Brief aus Lakehurst$t$,
    $t$Meine Großmutter hat den Brief nie abgeschickt, den sie in jener Nacht in Lakehurst zu schreiben begann, während man die Überlebenden in Decken hüllte und die Luft noch nach verbranntem Wasserstoff und Aluminium roch, ein Geruch, wie sie sagte, den man nie wieder aus der Nase bekommt, selbst wenn man ihn fünfzig Jahre lang nicht mehr gerochen hat. Sie war einundzwanzig, auf dem Weg zu einem Cousin in New Jersey, und hatte die Überfahrt auf der Hindenburg als Geburtstagsgeschenk ihres Vaters erhalten, ein Luxus, den sie sich, wie sie später oft betonte, selbst nie hätte leisten können und den sie sich nie mehr wünschte, nachdem sie ihn erlebt hatte.

In dem Brief, den ich Jahrzehnte später in einer Kiste fand, beschreibt sie den Moment des Absturzes nicht als Explosion, sondern, seltsam poetisch für eine Frau, die sonst keine Poesie in sich trug, als ein Aufblühen, ein orangefarbenes Erblühen über ihrem Kopf, das sie zunächst für ein technisches Schauspiel hielt, bevor der Schrei einer Frau neben ihr sie begreifen ließ, dass etwas Furchtbares geschah. Sie sprang, schrieb sie, aus einer Höhe, die sie nie genau bemessen konnte, weil die Erinnerung selbst die Zeit gedehnt und verkürzt zugleich hatte, und sie landete auf dem weichen, vom Regen durchnässten Boden von Lakehurst, während über ihr das stählerne Gerippe des Luftschiffs in sich zusammenfiel wie, so schrieb sie, ein Tier, dem man die Wirbelsäule bricht.

Der Brief war an ihre Schwester gerichtet, die zu Hause in Frankfurt geblieben war, doch sie schickte ihn nie ab, weil sie, wie eine spätere Notiz am Rand vermerkt, keine Worte fand, die dem Ereignis gerecht wurden, ohne die Schwester unnötig zu ängstigen, und weil sie selbst, so gestand sie sich ein, noch nicht wusste, ob sie glauben sollte, überlebt zu haben, oder ob ein Teil von ihr in jener Nacht auf dem Rollfeld zurückgeblieben war. Sie heiratete später, bekam Kinder, lebte ein langes, äußerlich unauffälliges Leben, aber meine Mutter erzählte mir, dass sie zeitlebens den Geruch von Benzin mied, wo immer sie konnte, und dass sie nie wieder in ein Flugzeug stieg, obwohl sie, anders als viele Überlebende jener Nacht, nie offen über ihre Angst sprach.

Ich habe den Brief nach ihrem Tod gelesen, mehrmals, und jedes Mal frage ich mich, was es bedeutet, ein Leben lang mit einem Erlebnis zu leben, das man nicht in Worte fassen kann, ohne es dabei kleiner zu machen, als es war, und ob das Schweigen, das meine Großmutter über diese Nacht bewahrte, nicht selbst eine Form des Schreibens war, unsichtbar, aber genauso beredt wie die Zeilen, die sie tatsächlich zu Papier brachte.$t$,
    $t$Ma grand-mère n'a jamais envoyé la lettre qu'elle commença à écrire cette nuit-là à Lakehurst, tandis qu'on enveloppait les survivants dans des couvertures et que l'air sentait encore l'hydrogène et l'aluminium brûlés, une odeur, disait-elle, qu'on ne retire jamais plus de son nez, même si on ne l'a plus sentie depuis cinquante ans. Elle avait vingt et un ans, en route pour rendre visite à un cousin dans le New Jersey, et avait reçu la traversée à bord du Hindenburg comme cadeau d'anniversaire de son père, un luxe qu'elle n'aurait, comme elle le souligna souvent plus tard, jamais pu s'offrir elle-même, et qu'elle ne désira plus jamais après l'avoir vécu.

Dans la lettre que je trouvai, des décennies plus tard, dans une boîte, elle décrit le moment de la catastrophe non pas comme une explosion, mais, étrangement poétique pour une femme qui d'ordinaire ne portait aucune poésie en elle, comme un épanouissement, une floraison orangée au-dessus de sa tête, qu'elle prit d'abord pour un spectacle technique, avant que le cri d'une femme à côté d'elle ne lui fasse comprendre qu'il se passait quelque chose de terrible. Elle sauta, écrivit-elle, d'une hauteur qu'elle ne put jamais mesurer avec précision, parce que le souvenir lui-même avait à la fois étiré et raccourci le temps, et elle atterrit sur le sol meuble et détrempé de pluie de Lakehurst, tandis qu'au-dessus d'elle la carcasse d'acier du dirigeable s'effondrait sur elle-même comme, écrivit-elle, un animal à qui l'on brise la colonne vertébrale.

La lettre était adressée à sa sœur, restée chez elle à Francfort, mais elle ne l'envoya jamais, parce que, comme le note une remarque ultérieure ajoutée en marge, elle ne trouvait pas de mots à la hauteur de l'événement sans effrayer inutilement sa sœur, et parce qu'elle-même, comme elle se l'avoua, ne savait pas encore si elle devait croire avoir survécu, ou si une partie d'elle était restée cette nuit-là sur le tarmac. Elle se maria plus tard, eut des enfants, mena une vie longue et extérieurement discrète, mais ma mère me raconta qu'elle évita toute sa vie l'odeur de l'essence, partout où elle le pouvait, et qu'elle ne remonta jamais plus dans un avion, bien que, contrairement à de nombreux survivants de cette nuit-là, elle n'ait jamais parlé ouvertement de sa peur.

J'ai lu la lettre après sa mort, plusieurs fois, et chaque fois je me demande ce que signifie vivre toute une vie avec une expérience qu'on ne peut mettre en mots sans la rendre par là même plus petite qu'elle ne fut, et si le silence que ma grand-mère garda sur cette nuit-là n'était pas lui-même une forme d'écriture, invisible, mais tout aussi éloquente que les lignes qu'elle coucha effectivement sur le papier.$t$,
    $t${"Meine":"ma","Großmutter":"grand-mère","hat":"a","den":"la","Brief":"lettre","nie":"jamais","abgeschickt":"envoyée","sie":"elle","in":"à","jener":"cette","Nacht":"nuit","Lakehurst":"Lakehurst","zu":"à","schreiben":"écrire","begann":"commença","während":"tandis que","man":"on","die":"les","Überlebenden":"survivants","Decken":"couvertures","hüllte":"enveloppait","und":"et","Luft":"air","noch":"encore","nach":"l'odeur de","verbranntem":"brûlés","Wasserstoff":"hydrogène","Aluminium":"aluminium","roch":"sentait","ein":"une","Geruch":"odeur","wie":"comme","sagte":"disait","wieder":"plus","aus":"de","der":"son","Nase":"nez","bekommt":"retire","selbst":"même","wenn":"si","ihn":"l'","fünfzig":"cinquante","Jahre":"ans","lang":"durant","nicht":"ne pas","mehr":"plus","gerochen":"sentie","Sie":"elle","war":"avait","einundzwanzig":"vingt et un","auf":"en","dem":"le","Weg":"route","einem":"un","Cousin":"cousin","New":"New","Jersey":"Jersey","hatte":"avait","Überfahrt":"traversée","Hindenburg":"Hindenburg","als":"comme","Geburtstagsgeschenk":"cadeau d'anniversaire","ihres":"de son","Vaters":"père","erhalten":"reçu","Luxus":"luxe","sich":"elle-même","später":"plus tard","oft":"souvent","betonte":"souligna","hätte":"aurait","leisten":"offrir","können":"pu","wünschte":"désira","nachdem":"après que","erlebt":"vécu","In":"dans","ich":"je","Jahrzehnte":"décennies","einer":"une","Kiste":"boîte","fand":"trouvai","beschreibt":"décrit","Moment":"moment","des":"de la","Absturzes":"catastrophe","Explosion":"explosion","sondern":"mais","seltsam":"étrangement","poetisch":"poétique","für":"pour","eine":"une","Frau":"femme","sonst":"d'ordinaire","keine":"aucune","Poesie":"poésie","trug":"portait","Aufblühen":"épanouissement","orangefarbenes":"orangée","Erblühen":"floraison","über":"au-dessus de","ihrem":"sa","Kopf":"tête","das":"qu'","zunächst":"d'abord","technisches":"technique","Schauspiel":"spectacle","hielt":"prit","bevor":"avant que","Schrei":"cri","neben":"à côté de","ihr":"elle","begreifen":"comprendre","ließ":"fit","dass":"qu'","etwas":"quelque chose","Furchtbares":"de terrible","geschah":"se passait","sprang":"sauta","schrieb":"écrivit","Höhe":"hauteur","genau":"avec précision","bemessen":"mesurer","konnte":"put","weil":"parce que","Erinnerung":"souvenir","Zeit":"temps","gedehnt":"étiré","verkürzt":"raccourci","zugleich":"à la fois","landete":"atterrit","weichen":"meuble","vom":"de","Regen":"pluie","durchnässten":"détrempé","Boden":"sol","von":"de","stählerne":"d'acier","Gerippe":"carcasse","Luftschiffs":"dirigeable","zusammenfiel":"s'effondrait","so":"ainsi","Tier":"animal","Wirbelsäule":"colonne vertébrale","bricht":"brise","Der":"la","an":"à","ihre":"sa","Schwester":"sœur","gerichtet":"adressée","Hause":"chez elle","Frankfurt":"Francfort","geblieben":"restée","doch":"mais","schickte":"envoya","ab":"envoya","spätere":"ultérieure","Notiz":"remarque","am":"en","Rand":"marge","vermerkt":"note","Worte":"mots","Ereignis":"événement","gerecht":"à la hauteur","wurden":"étaient","ohne":"sans","unnötig":"inutilement","ängstigen":"effrayer","gestand":"avoua","wusste":"savait","ob":"si","glauben":"croire","sollte":"devait","überlebt":"survécu","haben":"avoir","oder":"ou","Teil":"partie","Rollfeld":"tarmac","zurückgeblieben":"restée","heiratete":"se maria","bekam":"eut","Kinder":"enfants","lebte":"mena","langes":"longue","äußerlich":"extérieurement","unauffälliges":"discrète","Leben":"vie","aber":"mais","meine":"ma","Mutter":"mère","erzählte":"raconta","mir":"me","zeitlebens":"toute sa vie","Benzin":"essence","mied":"évita","wo":"où","immer":"partout où","Flugzeug":"avion","stieg":"remonta","obwohl":"bien que","anders":"contrairement","viele":"de nombreux","Überlebende":"survivants","offen":"ouvertement","Angst":"peur","sprach":"parla","Ich":"je","habe":"ai","Tod":"mort","gelesen":"lu","mehrmals":"plusieurs fois","jedes":"chaque","Mal":"fois","frage":"demande","mich":"me","was":"ce que","es":"cela","bedeutet":"signifie","mit":"avec","Erlebnis":"expérience","leben":"vivre","fassen":"mettre","kann":"peut","dabei":"par là même","kleiner":"plus petite","machen":"rendre","Schweigen":"silence","diese":"cette","bewahrte":"garda","Form":"forme","Schreibens":"d'écriture","unsichtbar":"invisible","genauso":"tout aussi","beredt":"éloquente","Zeilen":"lignes","tatsächlich":"effectivement","Papier":"papier","brachte":"coucha"}$t$::jsonb
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie alt war die Großmutter, als das Unglück geschah?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Einundzwanzig$t$, true, 1),
    (v_q, $t$Sechzehn$t$, false, 2),
    (v_q, $t$Dreißig$t$, false, 3),
    (v_q, $t$Vierzig$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Aus welchem Anlass befand sich die Großmutter an Bord der Hindenburg?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Als Geburtstagsgeschenk ihres Vaters, um einen Cousin in New Jersey zu besuchen$t$, true, 1),
    (v_q, $t$Um in den USA eine Arbeit anzutreten$t$, false, 2),
    (v_q, $t$Um dort zu heiraten$t$, false, 3),
    (v_q, $t$Sie arbeitete als Stewardess an Bord$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche erzählerische Distanz erzeugt der Umstand, dass die Enkelin den Brief erst nach dem Tod der Großmutter liest?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie macht die Erzählung zu einer nachträglichen, fragmentarischen Rekonstruktion eines nie vollständig mitgeteilten Traumas$t$, true, 1),
    (v_q, $t$Sie beweist, dass die Großmutter nie wirklich an Bord war$t$, false, 2),
    (v_q, $t$Sie hat keine besondere Bedeutung für die Struktur des Textes$t$, false, 3),
    (v_q, $t$Sie zeigt, dass die Enkelin das Ereignis besser versteht als die Großmutter selbst$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie beschreibt die Großmutter im Brief den Moment des Absturzes?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Als ein orangefarbenes Aufblühen$t$, true, 1),
    (v_q, $t$Als einen lauten Knall ohne Licht$t$, false, 2),
    (v_q, $t$Als völlige Dunkelheit$t$, false, 3),
    (v_q, $t$Als ein plötzliches Schweigen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum hielt sie das Geschehen zunächst nicht für eine Katastrophe?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Weil sie es zuerst für ein technisches Schauspiel hielt, bis der Schrei einer Frau sie aufklärte$t$, true, 1),
    (v_q, $t$Weil sie schlief, als es geschah$t$, false, 2),
    (v_q, $t$Weil sie zu weit entfernt war, um etwas zu sehen$t$, false, 3),
    (v_q, $t$Weil die Besatzung sie beruhigte$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Wirkung erzielt der Vergleich des zusammenfallenden Luftschiffs mit "einem Tier, dem man die Wirbelsäule bricht"?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er verleiht der technischen Katastrophe eine körperliche, fast schmerzhaft lebendige Dimension$t$, true, 1),
    (v_q, $t$Er verharmlost die Schwere des Unglücks$t$, false, 2),
    (v_q, $t$Er ist eine rein sachliche technische Beschreibung$t$, false, 3),
    (v_q, $t$Er bezieht sich auf ein tatsächliches Tier an Bord des Luftschiffs$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wurde der Brief jemals abgeschickt?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Nein$t$, true, 1),
    (v_q, $t$Ja, sofort nach der Katastrophe$t$, false, 2),
    (v_q, $t$Ja, aber erst Jahre später$t$, false, 3),
    (v_q, $t$Das bleibt im Text unklar$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum schickte die Großmutter den Brief nie ab?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie fand keine Worte, die dem Ereignis gerecht wurden, ohne die Schwester zu ängstigen$t$, true, 1),
    (v_q, $t$Sie hatte die Adresse ihrer Schwester verloren$t$, false, 2),
    (v_q, $t$Die Post funktionierte nicht mehr$t$, false, 3),
    (v_q, $t$Sie wollte die Schwester überraschen und persönlich erzählen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie deutet die Enkelin am Ende das lebenslange Schweigen der Großmutter über die Katastrophe?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Als eine eigene, unsichtbare Form des Schreibens, ebenso beredt wie die tatsächlich verfassten Zeilen$t$, true, 1),
    (v_q, $t$Als Beweis dafür, dass die Großmutter das Erlebnis völlig verdrängt und vergessen hatte$t$, false, 2),
    (v_q, $t$Als reine Gleichgültigkeit gegenüber dem Ereignis$t$, false, 3),
    (v_q, $t$Als bewusste Entscheidung, die Familie zu belügen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet "beredt" im Satz "unsichtbar, aber genauso beredt wie die Zeilen"?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$ausdrucksstark, aussagekräftig$t$, true, 1),
    (v_q, $t$leise, kaum hörbar$t$, false, 2),
    (v_q, $t$verwirrend$t$, false, 3),
    (v_q, $t$bedeutungslos$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welches Wort passt am besten als Synonym für "beredt" in diesem Kontext?$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$vielsagend$t$, true, 1),
    (v_q, $t$stumm$t$, false, 2),
    (v_q, $t$unklar$t$, false, 3),
    (v_q, $t$gleichgültig$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche paradoxe Wirkung entsteht durch die Kombination "unsichtbar, aber beredt" im Kontext des Schweigens der Großmutter?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie verleiht dem Schweigen selbst eine kommunikative Kraft, die der geschriebenen Sprache gleichwertig ist$t$, true, 1),
    (v_q, $t$Sie zeigt, dass Schweigen grundsätzlich bedeutungslos ist$t$, false, 2),
    (v_q, $t$Sie widerspricht sich selbst und ist stilistisch misslungen$t$, false, 3),
    (v_q, $t$Sie bezieht sich ausschließlich auf die physische Unsichtbarkeit der Tinte$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Vervollständigen Sie (Konjunktiv II der Vergangenheit): "Ein Luxus, den sie sich selbst nie _____ leisten können."$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$hätte$t$, true, 1),
    (v_q, $t$hat$t$, false, 2),
    (v_q, $t$würde$t$, false, 3),
    (v_q, $t$habe$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Form ist korrekt: "Sie wusste nicht, ob sie glauben sollte, überlebt zu _____."$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$haben$t$, true, 1),
    (v_q, $t$hatte$t$, false, 2),
    (v_q, $t$habend$t$, false, 3),
    (v_q, $t$hat$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welcher Satz gibt "was es bedeutet, ein Leben lang mit einem Erlebnis zu leben, das man nicht in Worte fassen kann, ohne es kleiner zu machen" am besten als nominalisierte Konstruktion wieder?$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$die Bedeutung des lebenslangen Lebens mit einem nicht ohne Verkleinerung in Worte zu fassenden Erlebnis$t$, true, 1),
    (v_q, $t$das Leben mit Erlebnissen, die man vergisst$t$, false, 2),
    (v_q, $t$die Unmöglichkeit, überhaupt zu schreiben$t$, false, 3),
    (v_q, $t$das Erlebnis, das keine Worte hat$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$Schreiben Sie einen literarischen Absatz (8-12 Sätze) über ein traumatisches Ereignis, das eine Person überlebt, aber nie ausspricht, gesehen aus der Perspektive eines Nachkommen, der Jahre später Spuren davon entdeckt.$t$, 1, 'normal', 'production', $t$In der Schublade meiner Großtante fand ich, Jahre nach ihrem Tod, ein Fotoalbum, in dem eine ganze Seite fehlte, herausgerissen, ohne Erklärung, und niemand in der Familie konnte mir sagen, was auf jenem verschwundenen Bild zu sehen gewesen war. Diese Leerstelle beschäftigte mich mehr als jedes andere Foto im Album, weil sie mir zeigte, dass Erinnerung nicht nur aus dem besteht, was aufbewahrt wird, sondern auch aus dem, was bewusst entfernt wurde. Meine Mutter erzählte mir schließlich, in Andeutungen, von einem Unglück, das die Großtante als junge Frau erlebt hatte, ohne je die Details preiszugeben, als hätte das Schweigen selbst zur Bewältigung gehört. Ich begann zu verstehen, dass manche Menschen ihre schwersten Erfahrungen nicht verdrängen, sondern bewusst in eine Form bringen, die sie selbst kontrollieren können, und sei es nur durch das, was sie auslassen. Die Lücke im Album wurde für mich zu einem Symbol für all die Geschichten, die in Familien nie erzählt, aber dennoch weitergegeben werden, durch Gesten, durch Vermeidungen, durch das, was am Küchentisch nie zur Sprache kam. Ich habe die Großtante nie danach fragen können, und vielleicht ist das auch besser so, denn manche Fragen verlangen von den Nachkommen mehr Antworten, als sie selbst ertragen könnten. So bleibt mir nur die Leerstelle selbst, die ich respektvoll stehen lasse, als das ehrlichste Zeugnis eines Erlebnisses, das sich der Sprache entzogen hat.$t$);

END $block$;

-- 23. Die letzte Vorlesung
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary) VALUES (
    'C2',
    $t$Die letzte Vorlesung$t$,
    $t$Professor Ohlendorf hatte einundvierzig Jahre lang denselben Hörsaal betreten, denselben mit Kreidestaub geweißten Boden unter den Füßen, dieselbe Aussicht auf den Neckar durch die hohen Fenster, die im Winter kalt zogen und im Sommer die Studenten mit dem Duft blühender Kastanien betäubten, und heute, an einem Dienstag im November, betrat er ihn zum letzten Mal als aktiver Lehrender einer Universität, die ihn geformt hatte, wie er selbst manche seiner Studenten geformt zu haben glaubte, obwohl er wusste, wie trügerisch dieser Glaube nach vier Jahrzehnten Lehrtätigkeit geworden war.

Er hatte sich vorgenommen, keine Rede zu halten, keine Rückschau, keine der sentimentalen Gesten, die er bei Kollegen in ähnlicher Lage stets mit stiller Verachtung beobachtet hatte, und begann die Stunde wie jede andere, mit einer Frage an die Studenten, ob jemand die Hauptthese von Kant zur Kausalität zusammenfassen könne, und eine junge Frau in der dritten Reihe antwortete zögernd, aber richtig, und er nickte, wie er in vierzig Jahren tausendfach genickt hatte, ohne dass ihm bewusst wurde, wie viel Trost in dieser Wiederholung lag.

Erst gegen Ende, als die Uhr über der Tür anzeigte, dass ihm noch zehn Minuten blieben, spürte er, wie sich etwas in seiner Brust zusammenzog, eine Art Panik, die er sich in vierzig Jahren nie erlaubt hatte, weil ein Philosoph, so hatte er stets geglaubt, seine eigenen Affekte zu beherrschen habe, und er begann, gegen seinen eigenen Vorsatz, doch noch von etwas Persönlichem zu sprechen, nicht von sich selbst, sondern von seinem eigenen Lehrer, einem Mann, der in den Fünfzigerjahren in ebendiesem Hörsaal gestanden hatte und der ihm einst gesagt hatte, Philosophie sei keine Ansammlung von Antworten, sondern eine Übung im Ertragen von Fragen, die man nie beantworten werde, und dass jeder gute Lehrer am Ende nichts anderes tue, als diese Übung an eine neue Generation weiterzureichen.

Als er den Hörsaal verließ, applaudierten die Studenten, wie es üblich war bei einer letzten Vorlesung, und er nickte ihnen zu, mit einer Geste, die Dankbarkeit ausdrücken sollte, aber vor allem Erleichterung war, weil er es geschafft hatte, ohne zu weinen, was er sich insgeheim doch gefürchtet hatte. Draußen, auf dem Weg zum Neckar, dachte er, dass die eigentliche Lehre seines Lebens vielleicht gar nicht in den Vorlesungen gelegen hatte, sondern in diesem letzten Gang durch die Stadt, an einem grauen Novembertag, an dem er zum ersten Mal seit einundvierzig Jahren keine Ahnung hatte, was er am nächsten Dienstagmorgen tun würde, und wie befreiend, wie erschreckend befreiend, diese Unwissenheit sich anfühlte.$t$,
    $t$Pendant quarante et un ans, le professeur Ohlendorf était entré dans le même amphithéâtre, avait foulé le même sol blanchi de poussière de craie sous ses pieds, contemplé la même vue sur le Neckar à travers les hautes fenêtres qui laissaient passer le froid en hiver et, en été, engourdissaient les étudiants du parfum des marronniers en fleur, et aujourd'hui, un mardi de novembre, il y entrait pour la dernière fois comme enseignant en activité d'une université qui l'avait formé, tout comme il croyait lui-même en avoir formé certains de ses étudiants, bien qu'il sût combien cette croyance était devenue trompeuse après quatre décennies d'enseignement.

Il s'était promis de ne pas prononcer de discours, pas de rétrospective, aucun de ces gestes sentimentaux qu'il avait toujours observés chez des collègues dans une situation semblable avec un mépris silencieux, et il commença le cours comme n'importe quel autre, par une question aux étudiants : quelqu'un pouvait-il résumer la thèse centrale de Kant sur la causalité, et une jeune femme, au troisième rang, répondit avec hésitation, mais justement, et il hocha la tête, comme il l'avait fait des milliers de fois en quarante ans, sans prendre conscience de tout le réconfort que contenait cette répétition.

Ce n'est que vers la fin, quand la pendule au-dessus de la porte indiqua qu'il lui restait encore dix minutes, qu'il sentit quelque chose se serrer dans sa poitrine, une sorte de panique qu'il ne s'était jamais permise en quarante ans, parce qu'un philosophe, avait-il toujours cru, devait maîtriser ses propres émotions, et il se mit, contre sa propre résolution, à parler tout de même de quelque chose de personnel, non pas de lui-même, mais de son propre professeur, un homme qui s'était tenu, dans les années cinquante, dans ce même amphithéâtre, et qui lui avait dit un jour que la philosophie n'était pas un ensemble de réponses, mais un exercice consistant à supporter des questions auxquelles on ne répondrait jamais, et que tout bon professeur, en fin de compte, ne faisait rien d'autre que transmettre cet exercice à une nouvelle génération.

Lorsqu'il quitta l'amphithéâtre, les étudiants applaudirent, comme c'était l'usage pour un dernier cours, et il les salua d'un signe de tête, un geste censé exprimer de la gratitude, mais qui était surtout du soulagement, parce qu'il avait réussi à ne pas pleurer, ce qu'il avait pourtant secrètement redouté. Dehors, en chemin vers le Neckar, il pensa que la véritable leçon de sa vie n'avait peut-être pas résidé du tout dans les cours magistraux, mais dans cette dernière marche à travers la ville, par une grise journée de novembre où, pour la première fois depuis quarante et un ans, il n'avait aucune idée de ce qu'il ferait le mardi matin suivant, et combien cette ignorance était libératrice, aussi effroyablement libératrice fût-elle.$t$,
    $t${"Professor":"professeur","Ohlendorf":"Ohlendorf","hatte":"avait","einundvierzig":"quarante et un","Jahre":"ans","lang":"pendant","denselben":"le même","Hörsaal":"amphithéâtre","betreten":"entré","mit":"de","Kreidestaub":"poussière de craie","geweißten":"blanchi","Boden":"sol","unter":"sous","den":"ses","Füßen":"pieds","dieselbe":"la même","Aussicht":"vue","auf":"sur","Neckar":"Neckar","durch":"à travers","die":"les","hohen":"hautes","Fenster":"fenêtres","im":"en","Winter":"hiver","kalt":"froid","zogen":"laissaient passer","und":"et","Sommer":"été","Studenten":"étudiants","dem":"du","Duft":"parfum","blühender":"en fleur","Kastanien":"marronniers","betäubten":"engourdissaient","heute":"aujourd'hui","an":"un","einem":"un","Dienstag":"mardi","November":"novembre","betrat":"entrait","er":"il","ihn":"y","zum":"pour la","letzten":"dernière","Mal":"fois","als":"comme","aktiver":"en activité","Lehrender":"enseignant","einer":"d'une","Universität":"université","geformt":"formé","wie":"tout comme","selbst":"lui-même","manche":"certains","seiner":"ses","zu":"avoir","haben":"avoir","glaubte":"croyait","obwohl":"bien que","wusste":"sût","trügerisch":"trompeuse","dieser":"cette","Glaube":"croyance","nach":"après","vier":"quatre","Jahrzehnten":"décennies","Lehrtätigkeit":"enseignement","geworden":"devenue","war":"était","Er":"il","sich":"s'","vorgenommen":"promis","keine":"pas de","Rede":"discours","halten":"prononcer","Rückschau":"rétrospective","der":"de ces","sentimentalen":"sentimentaux","Gesten":"gestes","bei":"chez","Kollegen":"collègues","in":"dans","ähnlicher":"semblable","Lage":"situation","stets":"toujours","stiller":"silencieux","Verachtung":"mépris","beobachtet":"observés","begann":"commença","Stunde":"cours","jede":"n'importe quel","andere":"autre","Frage":"question","ob":"si","jemand":"quelqu'un","Hauptthese":"thèse centrale","von":"de","Kant":"Kant","zur":"sur la","Kausalität":"causalité","zusammenfassen":"résumer","könne":"pouvait","eine":"une","junge":"jeune","Frau":"femme","dritten":"troisième","Reihe":"rang","antwortete":"répondit","zögernd":"avec hésitation","aber":"mais","richtig":"justement","nickte":"hocha la tête","vierzig":"quarante","Jahren":"ans","tausendfach":"des milliers de fois","genickt":"fait","ohne":"sans","dass":"que","ihm":"lui","bewusst":"conscience","wurde":"prendre","viel":"tout le","Trost":"réconfort","Wiederholung":"répétition","lag":"contenait","Erst":"ce n'est que","gegen":"vers","Ende":"fin","Uhr":"pendule","über":"au-dessus de","Tür":"porte","anzeigte":"indiqua","noch":"encore","zehn":"dix","Minuten":"minutes","blieben":"restait","spürte":"sentit","etwas":"quelque chose","Brust":"poitrine","zusammenzog":"se serrer","Art":"sorte","Panik":"panique","nie":"jamais","erlaubt":"permise","weil":"parce que","ein":"un","Philosoph":"philosophe","so":"toujours","geglaubt":"cru","seine":"ses","eigenen":"propres","Affekte":"émotions","beherrschen":"maîtriser","habe":"devait","seinen":"sa","Vorsatz":"résolution","doch":"tout de même","Persönlichem":"personnel","sprechen":"parler","nicht":"non pas","sondern":"mais","seinem":"son","Lehrer":"professeur","Mann":"homme","Fünfzigerjahren":"années cinquante","ebendiesem":"ce même","gestanden":"s'était tenu","einst":"un jour","gesagt":"dit","Philosophie":"philosophie","sei":"était","Ansammlung":"ensemble","Antworten":"réponses","Übung":"exercice","Ertragen":"supporter","Fragen":"questions","man":"on","beantworten":"répondrait","werde":"répondrait","jeder":"tout","gute":"bon","am":"en","nichts":"rien","anderes":"d'autre","tue":"faisait","diese":"cet","neue":"nouvelle","Generation":"génération","weiterzureichen":"transmettre","Als":"lorsqu'","verließ":"quitta","applaudierten":"applaudirent","es":"c'","üblich":"l'usage","Vorlesung":"cours","ihnen":"les","Geste":"geste","Dankbarkeit":"gratitude","ausdrücken":"exprimer","sollte":"censé","vor":"surtout","allem":"tout","Erleichterung":"soulagement","geschafft":"réussi","weinen":"pleurer","was":"ce qu'","insgeheim":"secrètement","gefürchtet":"redouté","Draußen":"dehors","Weg":"chemin","dachte":"pensa","eigentliche":"véritable","Lehre":"leçon","seines":"de sa","Lebens":"vie","vielleicht":"peut-être","gar":"pas du tout","Vorlesungen":"cours magistraux","gelegen":"résidé","diesem":"cette","Gang":"marche","Stadt":"ville","grauen":"grise","Novembertag":"journée de novembre","ersten":"première","seit":"depuis","Ahnung":"idée","nächsten":"suivant","Dienstagmorgen":"mardi matin","tun":"faire","würde":"ferait","befreiend":"libératrice","erschreckend":"effroyablement","Unwissenheit":"ignorance","anfühlte":"était"}$t$::jsonb
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie lange hat Professor Ohlendorf an der Universität gelehrt?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Einundvierzig Jahre$t$, true, 1),
    (v_q, $t$Zehn Jahre$t$, false, 2),
    (v_q, $t$Zwanzig Jahre$t$, false, 3),
    (v_q, $t$Fünf Jahre$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was hatte sich Professor Ohlendorf für seine letzte Vorlesung vorgenommen?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Keine Rede oder sentimentale Rückschau zu halten, sondern normal zu unterrichten$t$, true, 1),
    (v_q, $t$Eine große Abschiedsrede vor der gesamten Universität zu halten$t$, false, 2),
    (v_q, $t$Die Vorlesung ausfallen zu lassen$t$, false, 3),
    (v_q, $t$Einen Nachfolger offiziell vorzustellen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Spannung strukturiert den Text zwischen Ohlendorfs Vorsatz und seinem tatsächlichen Verhalten?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Der Konflikt zwischen rationaler Selbstbeherrschung und unerwartet aufbrechender Emotionalität nach vierzig Jahren Zurückhaltung$t$, true, 1),
    (v_q, $t$Ein Streit zwischen ihm und den Studenten über den Lehrinhalt$t$, false, 2),
    (v_q, $t$Die Frage, ob er die Universität überhaupt verlassen sollte$t$, false, 3),
    (v_q, $t$Ein Konflikt zwischen ihm und der Universitätsleitung$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Womit beginnt Ohlendorf seine letzte Vorlesung?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Mit einer Frage zu Kants Kausalitätstheorie$t$, true, 1),
    (v_q, $t$Mit einer persönlichen Rede$t$, false, 2),
    (v_q, $t$Mit einem Gedicht$t$, false, 3),
    (v_q, $t$Mit einer Schweigeminute$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was empfindet Ohlendorf gegen Ende der Vorlesung, als nur noch zehn Minuten bleiben?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Eine Art Panik, die er sich in vierzig Jahren nie erlaubt hatte$t$, true, 1),
    (v_q, $t$Völlige Gleichgültigkeit$t$, false, 2),
    (v_q, $t$Erleichterung über das nahende Ende$t$, false, 3),
    (v_q, $t$Stolz auf seine Karriere$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Funktion hat die Erinnerung an seinen eigenen Lehrer innerhalb der letzten Vorlesung?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie zeigt, wie sich philosophisches Wissen und Haltung generationenübergreifend als Übung im Ertragen von Fragen weitergeben$t$, true, 1),
    (v_q, $t$Sie dient nur als nostalgische Anekdote ohne inhaltlichen Bezug$t$, false, 2),
    (v_q, $t$Sie widerspricht Kants Philosophie, die zuvor besprochen wurde$t$, false, 3),
    (v_q, $t$Sie zeigt, dass Ohlendorf mit seinem eigenen Lehrer im Streit lag$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie reagieren die Studenten am Ende der Vorlesung?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie applaudieren$t$, true, 1),
    (v_q, $t$Sie verlassen schweigend den Saal$t$, false, 2),
    (v_q, $t$Sie protestieren$t$, false, 3),
    (v_q, $t$Sie stellen weitere Fragen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was empfindet Ohlendorf beim Applaus der Studenten vor allem?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Erleichterung, weil er es geschafft hat, ohne zu weinen$t$, true, 1),
    (v_q, $t$Stolz auf seine wissenschaftlichen Erfolge$t$, false, 2),
    (v_q, $t$Enttäuschung über die geringe Anzahl der Studenten$t$, false, 3),
    (v_q, $t$Wut über die Störung$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie ist der Schluss zu deuten, in dem Ohlendorf die Unwissenheit über den nächsten Tag als "erschreckend befreiend" empfindet?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Als paradoxe Erfahrung, in der der Verlust einer lebenslangen Routine zugleich als Verlust der Identität und als neu gewonnene Freiheit erlebt wird$t$, true, 1),
    (v_q, $t$Als reine Erleichterung ohne jede Ambivalenz$t$, false, 2),
    (v_q, $t$Als Zeichen dafür, dass er die Lehrtätigkeit bereut hat$t$, false, 3),
    (v_q, $t$Als Hinweis darauf, dass er die Universität aus finanziellen Gründen verlassen musste$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet "trügerisch"?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$täuschend, irreführend$t$, true, 1),
    (v_q, $t$vollkommen wahr$t$, false, 2),
    (v_q, $t$sehr klar$t$, false, 3),
    (v_q, $t$beruhigend$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welches Wort passt als Synonym für "trügerisch" im Kontext?$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$irreführend$t$, true, 1),
    (v_q, $t$zuverlässig$t$, false, 2),
    (v_q, $t$eindeutig$t$, false, 3),
    (v_q, $t$offensichtlich$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche semantische Nuance trägt "trügerisch" im Vergleich zu "falsch" im Kontext von Ohlendorfs Selbstwahrnehmung?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$"Trügerisch" impliziert eine verführerische, subtile Täuschung, der man leicht erliegt, während "falsch" nur eine sachliche Unrichtigkeit bezeichnet$t$, true, 1),
    (v_q, $t$Beide Wörter sind hier vollkommen synonym und austauschbar$t$, false, 2),
    (v_q, $t$"Trügerisch" bezieht sich ausschließlich auf optische Täuschungen$t$, false, 3),
    (v_q, $t$"Falsch" ist stilistisch höher als "trügerisch"$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Vervollständigen Sie: "Er wusste nicht, wie trügerisch dieser Glaube geworden _____."$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$war$t$, true, 1),
    (v_q, $t$ist$t$, false, 2),
    (v_q, $t$sei$t$, false, 3),
    (v_q, $t$wäre$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Form ist korrekt: "Sein Lehrer hatte ihm gesagt, Philosophie _____ keine Ansammlung von Antworten." (Konjunktiv I, indirekte Rede)$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$sei$t$, true, 1),
    (v_q, $t$ist$t$, false, 2),
    (v_q, $t$wäre$t$, false, 3),
    (v_q, $t$war$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welcher Satz gibt "dass jeder gute Lehrer am Ende nichts anderes tue, als diese Übung an eine neue Generation weiterzureichen" korrekt als nominalisierte Konstruktion wieder?$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$das Weiterreichen dieser Übung an eine neue Generation als einzige Aufgabe jedes guten Lehrers$t$, true, 1),
    (v_q, $t$gute Lehrer reichen Übungen weiter$t$, false, 2),
    (v_q, $t$Lehrer haben viele Aufgaben, die man nennen könnte$t$, false, 3),
    (v_q, $t$die neue Generation übernimmt automatisch alles vom Lehrer$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$Schreiben Sie einen literarischen Absatz (8-12 Sätze) über den letzten Arbeitstag einer Person nach einer langen Karriere. Reflektieren Sie über den Unterschied zwischen der öffentlichen Geste des Abschieds und dem, was innerlich wirklich geschieht.$t$, 1, 'normal', 'production', $t$Der letzte Arbeitstag beginnt oft wie jeder andere, mit demselben Wecker, demselben Weg, denselben Gesichtern, die einen begrüßen, und gerade diese Gewöhnlichkeit macht ihn so schwer zu ertragen, weil das Ende sich nicht durch äußere Zeichen ankündigt, sondern nur durch das Wissen im eigenen Kopf. Man versucht, sich zusammenzureißen, die vertraute Routine ein letztes Mal auszuführen, ohne sich anmerken zu lassen, wie viel innerer Aufruhr sich hinter der ruhigen Fassade verbirgt. Kollegen bereiten vielleicht eine kleine Feier vor, Blumen, ein paar Worte, Applaus, und all das nimmt man dankbar entgegen, obwohl es kaum das trifft, was tatsächlich in einem vorgeht. Die eigentliche Erschütterung findet meist woanders statt, in einem stillen Moment, wenn man zum letzten Mal eine vertraute Tür schließt oder eine Akte in eine Schublade legt, die man nie wieder öffnen wird. Man merkt dann plötzlich, wie sehr die eigene Identität mit dieser Routine verwoben war, mehr, als man sich je eingestanden hätte, während man arbeitete. Draußen, auf dem Nachhauseweg, wirkt die Welt seltsam unverändert, die Straßen, die Geschäfte, die Menschen, während man selbst das Gefühl hat, als hätte sich der Boden unter einem verschoben. Diese Diskrepanz zwischen äußerer Normalität und innerer Zäsur ist vielleicht das eigentliche Kennzeichen solcher Übergänge, mehr als jede offizielle Abschiedsfeier es je einfangen könnte.$t$);

END $block$;

-- 24. Der Stand am Marktplatz
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary) VALUES (
    'C2',
    $t$Der Stand am Marktplatz$t$,
    $t$Der Wurststand meines Großvaters stand seit 1962 an derselben Ecke des Marktplatzes, zwischen dem Brunnen und der alten Apotheke, und meine früheste Erinnerung an ihn ist der Geruch, süßlich und rauchig zugleich, der sich in meine Kindheitskleidung so tief eingebrannt hatte, dass meine Mutter behauptete, sie könne ihn noch nach dreimaligem Waschen riechen. Er stand dort in Regen und Schnee, mit einer Sturheit, die ich als Kind für Stärke hielt und die ich heute, mit fünfunddreißig Jahren, eher als eine Art stille Verzweiflung erkenne, die Verzweiflung eines Mannes, der keine andere Vorstellung von sich selbst kannte als die des Mannes am Stand.

Er sprach selten über Gefühle, aber er sprach viel über Bratwurst, über die richtige Mischung aus Majoran und Kümmel, über die Temperatur, bei der die Haut der Wurst am appetitlichsten aufplatzt, über die Kunden, die er über Jahrzehnte kennenlernte, deren Kinder er aufwachsen sah, deren Ehen er zerbrechen sah, deren Trauerfälle er in verkürzten, wortkargen Kondolenzen begleitete, während er ihnen die Wurst über den Tresen reichte, als wäre das Grillen selbst eine Form des Trostes, die er anzubieten hatte, weil ihm die Worte fehlten.

Als er starb, übernahm mein Vater den Stand, mehr aus Pflichtgefühl als aus Überzeugung, und ich erinnere mich, wie unwohl er sich hinter dem Grill fühlte, ein Mann, der eigentlich Ingenieur hatte werden wollen und stattdessen zwanzig Jahre lang Würste wendete, mit einer Höflichkeit gegenüber den Kunden, die echt war, aber nie die instinktive Vertrautheit meines Großvaters erreichte. Ich selbst wollte den Stand nicht übernehmen, das war mir schon mit zwanzig klar, und ich studierte etwas anderes, in einer anderen Stadt, und kam nur noch zu Weihnachten zurück, wo ich am Stand vorbeiging und mit einem Gefühl, das zwischen Schuld und Erleichterung schwankte, feststellte, dass ein anderer, ein Mann aus Anatolien, der mit seiner eigenen Wurstrezeptur begonnen hatte, den alten Platz übernommen hatte.

Der neue Stand riecht anders, schärfer, mit Gewürzen, die mein Großvater nie verwendet hätte, aber die Kunden stehen wieder Schlange, wie sie es zu seiner Zeit taten, und wenn ich dort vorbeigehe, denke ich manchmal, dass der Platz selbst mehr über Kontinuität weiß als jede einzelne Familie, die ihn eine Weile besetzt hält. Der Marktplatz vergisst nicht den Namen des Standes, nur die Hände, die die Würste wenden, und vielleicht, denke ich dann, ist das die eigentliche, unsentimentale Wahrheit jeder Tradition: dass sie überlebt, indem sie sich ständig verändert, während sie behauptet, dieselbe zu bleiben.$t$,
    $t$Le stand de saucisses de mon grand-père se trouvait, depuis 1962, au même coin de la place du marché, entre la fontaine et la vieille pharmacie, et mon plus ancien souvenir de lui est cette odeur, à la fois douceâtre et fumée, qui s'était si profondément imprégnée dans mes vêtements d'enfant que ma mère prétendait pouvoir encore la sentir après trois lavages. Il se tenait là, sous la pluie et sous la neige, avec une obstination que je prenais, enfant, pour de la force, et que je reconnais aujourd'hui, à trente-cinq ans, plutôt comme une forme de désespoir silencieux, le désespoir d'un homme qui ne se connaissait pas d'autre image de lui-même que celle de l'homme du stand.

Il parlait rarement de ses sentiments, mais il parlait beaucoup de saucisses grillées, du bon mélange de marjolaine et de cumin, de la température à laquelle la peau de la saucisse éclate le plus appétissamment, des clients qu'il avait connus pendant des décennies, dont il avait vu grandir les enfants, dont il avait vu les mariages se briser, dont il accompagnait les deuils par des condoléances brèves et peu loquaces, tout en leur tendant la saucisse par-dessus le comptoir, comme si le grillage lui-même était une forme de consolation qu'il avait à offrir, parce que les mots lui manquaient.

Quand il mourut, mon père reprit le stand, plus par devoir que par conviction, et je me souviens combien il se sentait mal à l'aise derrière le grill, un homme qui avait en fait voulu devenir ingénieur et qui, à la place, retourna des saucisses pendant vingt ans, avec une politesse envers les clients qui était sincère, mais qui n'atteignit jamais la familiarité instinctive de mon grand-père. Moi-même, je ne voulais pas reprendre le stand, cela m'était déjà clair à vingt ans, et j'ai étudié autre chose, dans une autre ville, et je ne revenais plus qu'à Noël, où je passais devant le stand et constatais, avec un sentiment oscillant entre culpabilité et soulagement, qu'un autre homme, originaire d'Anatolie, qui avait commencé avec sa propre recette de saucisses, avait repris la vieille place.

Le nouveau stand sent différemment, plus fort, avec des épices que mon grand-père n'aurait jamais utilisées, mais les clients font de nouveau la queue, comme ils le faisaient de son temps, et quand je passe par là, je me dis parfois que la place elle-même en sait plus sur la continuité que chaque famille qui l'occupe un moment. La place du marché n'oublie pas le nom du stand, seulement les mains qui retournent les saucisses, et peut-être, me dis-je alors, est-ce là la véritable vérité, dénuée de sentimentalité, de toute tradition : qu'elle survit en se transformant sans cesse, tout en prétendant rester la même.$t$,
    $t${"Der":"le","Wurststand":"stand de saucisses","meines":"de mon","Großvaters":"grand-père","stand":"se trouvait","seit":"depuis","an":"au","derselben":"même","Ecke":"coin","des":"de la","Marktplatzes":"place du marché","zwischen":"entre","dem":"la","Brunnen":"fontaine","und":"et","der":"la","alten":"vieille","Apotheke":"pharmacie","meine":"mon","früheste":"plus ancien","Erinnerung":"souvenir","ihn":"lui","ist":"est","Geruch":"odeur","süßlich":"douceâtre","rauchig":"fumée","zugleich":"à la fois","sich":"s'","in":"dans","Kindheitskleidung":"vêtements d'enfant","so":"si","tief":"profondément","eingebrannt":"imprégnée","hatte":"avait","dass":"que","Mutter":"mère","behauptete":"prétendait","sie":"elle","könne":"pouvait","noch":"encore","nach":"après","dreimaligem":"trois","Waschen":"lavages","riechen":"sentir","Er":"il","dort":"là","Regen":"pluie","Schnee":"neige","mit":"avec","einer":"une","Sturheit":"obstination","die":"que","ich":"je","als":"enfant","Kind":"enfant","für":"pour","Stärke":"force","hielt":"prenais","heute":"aujourd'hui","fünfunddreißig":"trente-cinq","Jahren":"ans","eher":"plutôt","eine":"une","Art":"forme","stille":"silencieux","Verzweiflung":"désespoir","erkenne":"reconnais","eines":"d'un","Mannes":"homme","keine":"pas d'","andere":"autre","Vorstellung":"image","von":"de","selbst":"lui-même","kannte":"connaissait","am":"du","Stand":"stand","sprach":"parlait","selten":"rarement","über":"de","Gefühle":"sentiments","aber":"mais","viel":"beaucoup","Bratwurst":"saucisses grillées","richtige":"bon","Mischung":"mélange","aus":"de","Majoran":"marjolaine","Kümmel":"cumin","Temperatur":"température","bei":"à","Haut":"peau","Wurst":"saucisse","appetitlichsten":"le plus appétissamment","aufplatzt":"éclate","Kunden":"clients","Jahrzehnte":"décennies","kennenlernte":"connus","deren":"dont","Kinder":"enfants","aufwachsen":"grandir","sah":"vu","Ehen":"mariages","zerbrechen":"se briser","Trauerfälle":"deuils","verkürzten":"brèves","wortkargen":"peu loquaces","Kondolenzen":"condoléances","begleitete":"accompagnait","während":"tout en","ihnen":"leur","den":"le","Tresen":"comptoir","reichte":"tendant","wäre":"était","das":"le","Grillen":"grillage","Form":"forme","Trostes":"de consolation","anzubieten":"à offrir","weil":"parce que","ihm":"lui","Worte":"mots","fehlten":"manquaient","Als":"quand","starb":"mourut","übernahm":"reprit","mein":"mon","Vater":"père","mehr":"plus","Pflichtgefühl":"devoir","Überzeugung":"conviction","erinnere":"souviens","mich":"me","wie":"combien","unwohl":"mal à l'aise","hinter":"derrière","Grill":"grill","fühlte":"sentait","ein":"un","Mann":"homme","eigentlich":"en fait","Ingenieur":"ingénieur","werden":"devenir","wollen":"voulu","stattdessen":"à la place","zwanzig":"vingt","Jahre":"ans","lang":"pendant","Würste":"saucisses","wendete":"retourna","Höflichkeit":"politesse","gegenüber":"envers","echt":"sincère","war":"était","nie":"jamais","instinktive":"instinctive","Vertrautheit":"familiarité","erreichte":"atteignit","Ich":"je","wollte":"voulais","nicht":"ne pas","übernehmen":"reprendre","mir":"m'","schon":"déjà","klar":"clair","studierte":"étudié","etwas":"autre chose","anderes":"autre","anderen":"autre","Stadt":"ville","kam":"revenais","nur":"ne...que","zu":"à","Weihnachten":"Noël","zurück":"revenais","wo":"où","vorbeiging":"passais devant","einem":"un","Gefühl":"sentiment","Schuld":"culpabilité","Erleichterung":"soulagement","schwankte":"oscillant","feststellte":"constatais","anderer":"autre","Anatolien":"Anatolie","seiner":"sa","eigenen":"propre","Wurstrezeptur":"recette de saucisses","begonnen":"commencé","Platz":"place","übernommen":"repris","neue":"nouveau","riecht":"sent","anders":"différemment","schärfer":"plus fort","Gewürzen":"épices","Großvater":"grand-père","verwendet":"utilisées","hätte":"aurait","stehen":"font","wieder":"de nouveau","Schlange":"queue","es":"cela","Zeit":"temps","taten":"faisaient","wenn":"quand","vorbeigehe":"passe par là","denke":"dis","manchmal":"parfois","Kontinuität":"continuité","weiß":"sait","jede":"chaque","einzelne":"chaque","Familie":"famille","Weile":"moment","besetzt":"occupe","hält":"occupe","Marktplatz":"place du marché","vergisst":"oublie","Namen":"nom","Standes":"du stand","Hände":"mains","wenden":"retournent","vielleicht":"peut-être","dann":"alors","eigentliche":"véritable","unsentimentale":"dénuée de sentimentalité","Wahrheit":"vérité","jeder":"de toute","Tradition":"tradition","überlebt":"survit","indem":"en","ständig":"sans cesse","verändert":"transformant","behauptet":"prétendant","dieselbe":"la même","bleiben":"rester","er":"il"}$t$::jsonb
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Seit welchem Jahr stand der Wurststand des Großvaters am Marktplatz?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Seit 1962$t$, true, 1),
    (v_q, $t$Seit 1980$t$, false, 2),
    (v_q, $t$Seit 1950$t$, false, 3),
    (v_q, $t$Seit 2000$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie deutet die erwachsene Enkelin die Sturheit ihres Großvaters rückblickend?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Als eine Art stille Verzweiflung, weil er keine andere Selbstvorstellung kannte als die des Standbesitzers$t$, true, 1),
    (v_q, $t$Als reine, unproblematische Stärke$t$, false, 2),
    (v_q, $t$Als Ausdruck von Geiz$t$, false, 3),
    (v_q, $t$Als bewusste geschäftliche Strategie ohne emotionale Tiefe$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Funktion hat der Wechsel der kindlichen zur erwachsenen Perspektive für die Deutung des Großvaters im Text?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er entlarvt eine kindlich bewunderte Eigenschaft als komplexere, ambivalente psychologische Realität$t$, true, 1),
    (v_q, $t$Er zeigt, dass die Erzählerin ihren Großvater als Erwachsene weniger gut versteht als als Kind$t$, false, 2),
    (v_q, $t$Er hat keine erkennbare Funktion für die Textstruktur$t$, false, 3),
    (v_q, $t$Er dient nur der zeitlichen Einordnung der Handlung$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Worüber spricht der Großvater viel, obwohl er selten über Gefühle spricht?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Über Bratwurst und ihre Zubereitung$t$, true, 1),
    (v_q, $t$Über Politik$t$, false, 2),
    (v_q, $t$Über seine Kindheit$t$, false, 3),
    (v_q, $t$Über Geld$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie wird das Verhältnis des Großvaters zu seinen Kunden im Text beschrieben?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Als eine Form emotionaler Nähe, die sich über das Grillen statt über Worte ausdrückt$t$, true, 1),
    (v_q, $t$Als rein geschäftliche, distanzierte Beziehung$t$, false, 2),
    (v_q, $t$Als konfliktreich und misstrauisch$t$, false, 3),
    (v_q, $t$Als Beziehung, die er stets vermied$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche implizite Aussage über männliche Emotionalität einer bestimmten Generation macht der Text durch die Darstellung des Großvaters?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Emotionale Nähe und Trost können sich in nonverbalen, handwerklichen Gesten ausdrücken, wenn Worte fehlen$t$, true, 1),
    (v_q, $t$Männer dieser Generation waren grundsätzlich unfähig zu jeder Form von Empathie$t$, false, 2),
    (v_q, $t$Der Großvater war gegenüber seinen Kunden völlig gleichgültig$t$, false, 3),
    (v_q, $t$Der Text kritisiert ausschließlich das Fehlen verbaler Kommunikation ohne Alternative aufzuzeigen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wer betreibt den Stand nach dem Tod des Großvaters?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Zuerst der Vater, dann ein Mann aus Anatolien$t$, true, 1),
    (v_q, $t$Die Enkelin selbst$t$, false, 2),
    (v_q, $t$Der Stand wird geschlossen$t$, false, 3),
    (v_q, $t$Ein Cousin der Familie$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welches Gefühl empfindet die Enkelin, als sie sieht, dass ein Fremder den Stand übernommen hat?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Ein Gefühl, das zwischen Schuld und Erleichterung schwankt$t$, true, 1),
    (v_q, $t$Reine Wut über den Verlust der Familientradition$t$, false, 2),
    (v_q, $t$Völlige Gleichgültigkeit$t$, false, 3),
    (v_q, $t$Stolz auf die eigene Entscheidung$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche These über Tradition formuliert der Schlussabsatz des Textes?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Tradition überlebt gerade durch ständige Veränderung, während sie behauptet, unverändert zu bleiben$t$, true, 1),
    (v_q, $t$Traditionen sollten unbedingt innerhalb derselben Familie bewahrt werden$t$, false, 2),
    (v_q, $t$Der Marktplatz selbst ist bedeutungslos für die Kontinuität der Tradition$t$, false, 3),
    (v_q, $t$Nur die ursprüngliche Rezeptur garantiert den Fortbestand einer Tradition$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet "wortkarg"?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$wenig redend, schweigsam$t$, true, 1),
    (v_q, $t$sehr gesprächig$t$, false, 2),
    (v_q, $t$laut und deutlich$t$, false, 3),
    (v_q, $t$höflich$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welches Wort ist ein passendes Synonym für "wortkarg" im Kontext?$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$schweigsam$t$, true, 1),
    (v_q, $t$redselig$t$, false, 2),
    (v_q, $t$eloquent$t$, false, 3),
    (v_q, $t$geschwätzig$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Nuance unterscheidet "wortkarg" von "schüchtern" im Kontext der Beschreibung des Großvaters?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$"Wortkarg" beschreibt eine bewusste oder gewohnheitsmäßige Zurückhaltung in der Sprache, während "schüchtern" eine psychologische Befangenheit im sozialen Kontakt insgesamt meint$t$, true, 1),
    (v_q, $t$Beide Begriffe sind in jedem Kontext identisch$t$, false, 2),
    (v_q, $t$"Wortkarg" bezieht sich nur auf schriftliche Kommunikation$t$, false, 3),
    (v_q, $t$"Schüchtern" ist stilistisch niedriger als "wortkarg"$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Vervollständigen Sie: "Er stellte fest, dass ein anderer den alten Platz _____ hatte." (Plusquamperfekt)$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$übernommen$t$, true, 1),
    (v_q, $t$übernehmen$t$, false, 2),
    (v_q, $t$übernimmt$t$, false, 3),
    (v_q, $t$übernahm$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Form ist korrekt: "Es war, als _____ das Grillen selbst eine Form des Trostes." (Konjunktiv II, irrealer Vergleich)$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$wäre$t$, true, 1),
    (v_q, $t$sei$t$, false, 2),
    (v_q, $t$ist$t$, false, 3),
    (v_q, $t$war$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welcher Satz gibt "dass sie überlebt, indem sie sich ständig verändert, während sie behauptet, dieselbe zu bleiben" am besten als nominalisierte Konstruktion wieder?$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$ihr Überleben durch ständige Veränderung bei gleichzeitiger Behauptung der Gleichbleibendheit$t$, true, 1),
    (v_q, $t$Tradition verändert sich nie wirklich$t$, false, 2),
    (v_q, $t$Traditionen behaupten immer, sich zu verändern$t$, false, 3),
    (v_q, $t$das Bleiben einer Tradition ohne jede Veränderung$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$Schreiben Sie einen literarischen Absatz (8-12 Sätze) über einen Ort (Marktstand, Geschäft, Werkstatt), der über Generationen die Hände wechselt. Reflektieren Sie über die Spannung zwischen Kontinuität des Ortes und Wandel der Menschen, die ihn prägen.$t$, 1, 'normal', 'production', $t$An der Ecke unserer Straße gibt es seit meiner Kindheit eine kleine Buchhandlung, deren Name sich nie geändert hat, obwohl die Besitzer inzwischen zum dritten Mal gewechselt haben. Jeder neue Inhaber brachte seine eigenen Vorlieben mit, andere Genres, andere Ordnungssysteme, eine andere Art, die Auslage im Schaufenster zu gestalten, und doch bin ich mir sicher, dass ein Kind, das heute dort einkauft, dasselbe Gefühl von Geborgenheit empfindet, das ich einst empfand. Diese Beobachtung hat mich gelehrt, dass Orte eine Art Gedächtnis besitzen, die unabhängig von den Menschen ist, die sie führen, ein Gedächtnis, das sich in der Architektur, im Licht, im Geruch der Regale festsetzt. Man könnte meinen, ein Ort ohne beständige Besitzer verliere seine Identität, doch tatsächlich scheint gerade das Gegenteil der Fall zu sein, denn der Ort selbst wird zum eigentlichen Träger der Tradition, während die Menschen nur vorübergehende Hüter sind. Diese Erkenntnis mag zunächst ernüchternd wirken, weil sie die Bedeutung des Einzelnen relativiert, doch sie trägt auch einen Trost in sich, denn sie bedeutet, dass das, was uns an einem Ort lieb war, nicht zwangsläufig mit dem Verschwinden einer bestimmten Person untergeht. Vielleicht ist es gerade diese Fähigkeit zur Erneuerung, die einen Ort über Jahrzehnte lebendig hält, während starre Unveränderlichkeit ihn eher zum Museum als zu einem lebendigen Teil des Alltags machen würde. So gehe ich noch heute an jener Buchhandlung vorbei und grüße, ohne es zu merken, nicht nur die aktuelle Inhaberin, sondern auch alle, die vor ihr dort gestanden haben.$t$);

END $block$;

-- 25. Hinter der Dornenhecke
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary) VALUES (
    'C2',
    $t$Hinter der Dornenhecke$t$,
    $t$Man erzählt die Geschichte immer als handle es sich um einen einzigen Moment, einen Kuss, ein Erwachen, aber niemand fragt, was es bedeutet, hundert Jahre lang bei Bewusstsein zu bleiben, während der Körper schläft, gefangen in einem Zustand, für den es kein Wort gibt, weder Tod noch Leben, sondern etwas Drittes, das sie selbst später, als sie wieder sprechen konnte, nur als das Warten bezeichnete, mit einer Betonung, die keinen Widerspruch duldete.

Sie erinnerte sich an alles. Das war das Grausamste an der ganzen Angelegenheit, schlimmer als die Spindel, schlimmer als der Fluch selbst: dass ihr Geist wach blieb, während ihr Körper sich in eine Art Stein verwandelte, und dass sie hundert Jahre lang die Stille des Schlosses hörte, das langsame Verstauben der Möbel, das Wachsen der Dornen draußen vor dem Fenster, Jahr um Jahr, ohne dass sie auch nur mit den Augenlidern hätte blinzeln können, um zu zeigen, dass hinter dem schlafenden Gesicht noch jemand war, der zählte, der wartete, der langsam die Fähigkeit verlor zu unterscheiden, ob es Sekunden oder Jahrzehnte waren, die verstrichen.

Als der Prinz schließlich kam, war er nicht der Erste. Sie hatte, in ihrem langen Bewusstsein, andere kommen hören, Männer, die es versuchten und an den Dornen scheiterten, manche schreiend, manche schweigend, und sie hatte gelernt, ihre Hoffnung so weit zu drosseln, dass sie kaum noch als Hoffnung zu erkennen war, mehr eine Gewohnheit des Wartens als ein tatsächliches Erwarten von Rettung. Als seine Lippen sich schließlich den ihren näherten, empfand sie, entgegen aller Erwartung, keine Erleichterung, sondern eine Art Panik, weil ein Jahrhundert der Stille sie gelehrt hatte, dass Bewegung, dass Zeit selbst, etwas Bedrohliches war, dem sie entwöhnt worden war.

Die Chronisten, die später von ihrer Hochzeit berichteten, erwähnten nichts von den Monaten, in denen sie kaum sprechen konnte, weil ihre Zunge das Sprechen verlernt hatte, nichts von den Nächten, in denen sie aufschreckte, weil sie im Traum wieder die Dornen wachsen hörte, nichts von der stillen Fremdheit, mit der sie eine Welt betrachtete, die für sie stehengeblieben und für alle anderen weitergegangen war. Man erzählt nur den Kuss, das Erwachen, das Happy End, weil eine wache Frau, die hundert Jahre lang bei Bewusstsein gefangen war, eine unbequemere Geschichte ist als ein Mädchen, das einfach schläft. Sie selbst, so heißt es in keiner Fassung, hat nie wieder ohne Licht geschlafen, ihr ganzes restliches Leben lang, aus Angst, im Dunkeln erneut jenes Warten zu finden, das keine Geschichte je richtig zu Ende erzählt hat.$t$,
    $t$On raconte toujours l'histoire comme s'il s'agissait d'un unique instant, un baiser, un réveil, mais personne ne demande ce que signifie rester consciente pendant cent ans tandis que le corps dort, prisonnière d'un état pour lequel il n'existe aucun mot, ni la mort ni la vie, mais une troisième chose, qu'elle-même, plus tard, quand elle put de nouveau parler, ne désigna jamais que comme l'attente, avec une insistance qui ne tolérait aucune contradiction.

Elle se souvenait de tout. C'était le plus cruel de toute cette affaire, pire que le fuseau, pire que la malédiction elle-même : que son esprit soit resté éveillé tandis que son corps se transformait en une sorte de pierre, et que pendant cent ans elle ait entendu le silence du château, l'empoussièrement lent des meubles, la croissance des ronces dehors devant la fenêtre, année après année, sans même pouvoir cligner des paupières pour montrer que, derrière ce visage endormi, il y avait encore quelqu'un qui comptait, qui attendait, qui perdait peu à peu la capacité de distinguer si c'étaient des secondes ou des décennies qui s'écoulaient.

Quand le prince finit par arriver, il n'était pas le premier. Elle avait, dans sa longue conscience, entendu d'autres venir, des hommes qui essayaient et échouaient contre les ronces, certains en criant, certains en silence, et elle avait appris à réduire son espoir à un tel point qu'on pouvait à peine encore le reconnaître comme de l'espoir, plus une habitude d'attente qu'une véritable attente de délivrance. Quand ses lèvres s'approchèrent enfin des siennes, elle ne ressentit, contre toute attente, aucun soulagement, mais une sorte de panique, parce qu'un siècle de silence lui avait appris que le mouvement, que le temps lui-même, était quelque chose de menaçant, dont elle avait été sevrée.

Les chroniqueurs qui rapportèrent plus tard son mariage ne mentionnèrent rien des mois pendant lesquels elle pouvait à peine parler, parce que sa langue avait désappris la parole, rien des nuits où elle sursautait parce qu'elle entendait de nouveau, en rêve, les ronces pousser, rien de l'étrange étrangeté silencieuse avec laquelle elle contemplait un monde qui s'était arrêté pour elle et avait continué pour tous les autres. On ne raconte que le baiser, le réveil, la fin heureuse, parce qu'une femme éveillée, restée prisonnière de sa conscience pendant cent ans, est une histoire plus inconfortable qu'une jeune fille qui dort simplement. Elle-même, dit-on dans aucune version, ne dormit plus jamais sans lumière, pour tout le reste de sa vie, par peur de retrouver dans le noir cette attente qu'aucune histoire n'a jamais vraiment su raconter jusqu'au bout.$t$,
    $t${"Man":"on","erzählt":"raconte","die":"l'","Geschichte":"histoire","immer":"toujours","als":"comme si","handle":"s'agissait","es":"il","sich":"s'","um":"de","einen":"un","einzigen":"unique","Moment":"instant","Kuss":"baiser","ein":"un","Erwachen":"réveil","aber":"mais","niemand":"personne","fragt":"demande","was":"ce que","bedeutet":"signifie","hundert":"cent","Jahre":"ans","lang":"pendant","bei":"consciente","Bewusstsein":"conscience","zu":"rester","bleiben":"rester","während":"tandis que","der":"le","Körper":"corps","schläft":"dort","gefangen":"prisonnière","in":"dans","einem":"un","Zustand":"état","für":"pour","den":"lequel","kein":"aucun","Wort":"mot","gibt":"existe","weder":"ni","Tod":"mort","noch":"encore","Leben":"vie","sondern":"mais","etwas":"une chose","Drittes":"troisième","das":"que","sie":"elle","selbst":"elle-même","später":"plus tard","wieder":"de nouveau","sprechen":"parler","konnte":"put","nur":"jamais que","Warten":"attente","bezeichnete":"désigna","mit":"avec","einer":"une","Betonung":"insistance","keinen":"aucune","Widerspruch":"contradiction","duldete":"tolérait","Sie":"elle","erinnerte":"souvenait","an":"de","alles":"tout","Das":"c'","war":"était","Grausamste":"plus cruel","ganzen":"toute","Angelegenheit":"affaire","schlimmer":"pire","Spindel":"fuseau","Fluch":"malédiction","dass":"que","ihr":"son","Geist":"esprit","wach":"éveillé","blieb":"resté","eine":"une","Art":"sorte","Stein":"pierre","verwandelte":"transformait","und":"et","Stille":"silence","des":"du","Schlosses":"château","hörte":"entendait","langsame":"lent","Verstauben":"empoussièrement","Möbel":"meubles","Wachsen":"croissance","Dornen":"ronces","draußen":"dehors","vor":"devant","dem":"la","Fenster":"fenêtre","Jahr":"année","ohne":"sans","auch":"même","Augenlidern":"paupières","hätte":"aurait pu","blinzeln":"cligner","können":"pouvoir","zeigen":"montrer","hinter":"derrière","schlafenden":"endormi","Gesicht":"visage","jemand":"quelqu'un","zählte":"comptait","wartete":"attendait","langsam":"peu à peu","Fähigkeit":"capacité","verlor":"perdait","unterscheiden":"distinguer","ob":"si","Sekunden":"secondes","oder":"ou","Jahrzehnte":"décennies","waren":"étaient","verstrichen":"écoulaient","Als":"quand","Prinz":"prince","schließlich":"finit par","kam":"arriver","er":"il","nicht":"pas","Erste":"premier","hatte":"avait","ihrem":"sa","langen":"longue","andere":"d'autres","kommen":"venir","hören":"entendu","Männer":"hommes","versuchten":"essayaient","scheiterten":"échouaient","manche":"certains","schreiend":"en criant","schweigend":"en silence","gelernt":"appris","ihre":"son","Hoffnung":"espoir","so":"à tel point","weit":"point","drosseln":"réduire","kaum":"à peine","erkennen":"reconnaître","mehr":"plus","Gewohnheit":"habitude","Wartens":"d'attente","tatsächliches":"véritable","Erwarten":"attente","von":"de","Rettung":"délivrance","seine":"ses","Lippen":"lèvres","näherten":"s'approchèrent","empfand":"ressentit","entgegen":"contre","aller":"toute","Erwartung":"attente","keine":"aucun","Erleichterung":"soulagement","Panik":"panique","weil":"parce que","Jahrhundert":"siècle","gelehrt":"appris","Bewegung":"mouvement","Zeit":"temps","Bedrohliches":"menaçant","entwöhnt":"sevrée","worden":"été","Die":"les","Chronisten":"chroniqueurs","ihrer":"son","Hochzeit":"mariage","berichteten":"rapportèrent","erwähnten":"mentionnèrent","nichts":"rien","Monaten":"mois","denen":"pendant lesquels","Zunge":"langue","Sprechen":"parole","verlernt":"désappris","Nächten":"nuits","aufschreckte":"sursautait","im":"en","Traum":"rêve","wachsen":"pousser","stillen":"silencieuse","Fremdheit":"étrangeté","Welt":"monde","betrachtete":"contemplait","stehengeblieben":"arrêté","alle":"tous","anderen":"autres","weitergegangen":"continué","Happy":"heureuse","End":"fin","wache":"éveillée","Frau":"femme","unbequemere":"plus inconfortable","ist":"est","Mädchen":"jeune fille","einfach":"simplement","heißt":"dit-on","keiner":"aucune","Fassung":"version","hat":"a","nie":"jamais","Licht":"lumière","geschlafen":"dormi","ganzes":"tout","restliches":"reste de sa","aus":"par","Angst":"peur","Dunkeln":"noir","erneut":"de nouveau","jenes":"cette","finden":"retrouver","je":"jamais","richtig":"vraiment","Ende":"bout","ihren":"des siennes"}$t$::jsonb
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bezeichnet die Prinzessin selbst als "das Warten"?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Ihren hundertjährigen Zustand zwischen Schlaf und Bewusstsein$t$, true, 1),
    (v_q, $t$Die Zeit vor dem Fluch$t$, false, 2),
    (v_q, $t$Ihre Kindheit im Schloss$t$, false, 3),
    (v_q, $t$Die Zeit nach der Hochzeit$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was unterscheidet diese Version der Geschichte von der klassischen Erzählung des Märchens?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie zeigt, dass die Prinzessin während des Schlafes bei vollem Bewusstsein blieb$t$, true, 1),
    (v_q, $t$Sie zeigt, dass die Prinzessin nie wirklich einschlief$t$, false, 2),
    (v_q, $t$Sie zeigt, dass es keinen Fluch gab$t$, false, 3),
    (v_q, $t$Sie zeigt, dass der Prinz nie ankam$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche narrative Strategie verfolgt der Text, indem er den Zustand als "weder Tod noch Leben, sondern etwas Drittes" beschreibt?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er entzieht dem Märchen seine binäre Logik von Verzauberung und Erlösung und ersetzt sie durch eine psychologisch komplexere, unbenennbare Erfahrung$t$, true, 1),
    (v_q, $t$Er bestätigt die traditionelle Märchenlogik ohne Abweichung$t$, false, 2),
    (v_q, $t$Er führt eine religiöse Deutung des Fegefeuers ein$t$, false, 3),
    (v_q, $t$Er beschreibt lediglich einen medizinischen Zustand ohne symbolische Bedeutung$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$War der Prinz, der sie schließlich weckte, der erste Mann, der es versuchte?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Nein, andere waren vorher gekommen und gescheitert$t$, true, 1),
    (v_q, $t$Ja, er war der Allererste$t$, false, 2),
    (v_q, $t$Das wird im Text nicht erwähnt$t$, false, 3),
    (v_q, $t$Nein, aber alle anderen kamen erst nach ihm$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie reagiert die Prinzessin, als der Prinz sie schließlich küsst?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Mit einer Art Panik statt der erwarteten Erleichterung$t$, true, 1),
    (v_q, $t$Mit sofortiger, überwältigender Freude$t$, false, 2),
    (v_q, $t$Mit völliger Gleichgültigkeit$t$, false, 3),
    (v_q, $t$Sie erkennt ihn nicht$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie ist die paradoxe Reaktion der Panik statt Erleichterung psychologisch zu deuten?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Als Folge einer erlernten Anpassung an Stillstand, die Bewegung und Zeit selbst als bedrohlich erscheinen lässt$t$, true, 1),
    (v_q, $t$Als Zeichen dafür, dass sie den Prinzen nicht liebt$t$, false, 2),
    (v_q, $t$Als rein körperliche Reaktion ohne psychologische Ursache$t$, false, 3),
    (v_q, $t$Als Ausdruck von Undankbarkeit gegenüber ihrem Retter$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wovon berichten die Chronisten laut Text nichts?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Von den Monaten, in denen sie kaum sprechen konnte$t$, true, 1),
    (v_q, $t$Von der Hochzeit selbst$t$, false, 2),
    (v_q, $t$Von dem Kuss des Prinzen$t$, false, 3),
    (v_q, $t$Von den Dornen um das Schloss$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie schläft die Prinzessin für den Rest ihres Lebens, laut dem Schluss des Textes?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Nie wieder ohne Licht$t$, true, 1),
    (v_q, $t$Immer im Freien$t$, false, 2),
    (v_q, $t$Nur tagsüber$t$, false, 3),
    (v_q, $t$Immer in Begleitung$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Kritik an der traditionellen Erzählweise von Märchen formuliert der Schlussabsatz?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Dass Happy Ends oft die unbequemere, komplexere Wahrheit hinter dem Erwachen verschweigen$t$, true, 1),
    (v_q, $t$Dass Märchen grundsätzlich keine Wahrheit enthalten können$t$, false, 2),
    (v_q, $t$Dass die Chronisten absichtlich gelogen haben, um den Prinzen zu schützen$t$, false, 3),
    (v_q, $t$Dass alle Märchen ursprünglich von realen Ereignissen berichten$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet "drosseln" im Satz "sie hatte gelernt, ihre Hoffnung so weit zu drosseln"?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$stark verringern, einschränken$t$, true, 1),
    (v_q, $t$verstärken, steigern$t$, false, 2),
    (v_q, $t$vollständig zerstören$t$, false, 3),
    (v_q, $t$offen zeigen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welches Wort ist im Kontext ein passendes Synonym für "drosseln"?$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$reduzieren$t$, true, 1),
    (v_q, $t$verstärken$t$, false, 2),
    (v_q, $t$offenbaren$t$, false, 3),
    (v_q, $t$wecken$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Wirkung erzielt das Verb "drosseln", ursprünglich aus dem technischen Bereich (Motor, Fluss), in der Beschreibung eines inneren Gefühlszustands?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Es verleiht der emotionalen Selbstregulierung eine fast mechanische, kontrollierte Nüchternheit, die die Erschöpfung der Figur unterstreicht$t$, true, 1),
    (v_q, $t$Es hat in diesem Kontext eine rein positive, hoffnungsvolle Konnotation$t$, false, 2),
    (v_q, $t$Es bezieht sich ausschließlich auf körperliche Vorgänge$t$, false, 3),
    (v_q, $t$Es ist stilistisch neutral und ohne besondere Wirkung$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Vervollständigen Sie: "Sie hatte gelernt, dass Bewegung etwas Bedrohliches _____, dem sie entwöhnt worden war."$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$war$t$, true, 1),
    (v_q, $t$ist$t$, false, 2),
    (v_q, $t$sei$t$, false, 3),
    (v_q, $t$wäre$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Form ist korrekt: "Man erzählt nur den Kuss, weil eine wache Frau eine unbequemere Geschichte _____, als ein Mädchen, das einfach schläft."$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$ist$t$, true, 1),
    (v_q, $t$sei$t$, false, 2),
    (v_q, $t$wäre$t$, false, 3),
    (v_q, $t$war$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welcher Satz gibt "dass ihr Geist wach blieb, während ihr Körper sich in eine Art Stein verwandelte" am besten als erweitertes Attribut wieder?$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$ihr trotz körperlicher Versteinerung wach bleibender Geist$t$, true, 1),
    (v_q, $t$ihr Geist, der Steine mochte$t$, false, 2),
    (v_q, $t$der Körper, der wach blieb$t$, false, 3),
    (v_q, $t$die Verwandlung ihres Geistes in Stein$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$Schreiben Sie einen literarischen Absatz (8-12 Sätze), in dem Sie ein klassisches Märchenmotiv (Schlaf, Erwachen, Erlösung) aus der inneren, psychologischen Perspektive der betroffenen Figur neu erzählen, jenseits des traditionellen Happy Ends.$t$, 1, 'normal', 'production', $t$Niemand fragt jemals, was mit dem Frosch geschieht, nachdem er sich in den Prinzen zurückverwandelt hat, ob er sich noch an das Gefühl des kalten Wassers erinnert, an die Jahre, in denen er auf vier kurzen Beinen durch den Teich schwamm, unfähig, sich verständlich zu machen, während die Menschen um ihn herum ihn nur als lästiges Tier betrachteten. Man erzählt die Verwandlung als Erlösung, als Rückkehr zu einem eigentlichen, wahren Selbst, aber vielleicht ist es komplizierter, vielleicht trägt der Prinz für immer etwas vom Frosch in sich, eine Erinnerung an Isolation und Missverständnis, die sich nicht einfach abstreifen lässt wie eine feuchte Haut. Ich stelle mir vor, wie er in den ersten Wochen nach der Verwandlung noch immer den Drang verspürt, sich ins Wasser zu stürzen, wie er die menschliche Sprache, die ihm plötzlich wieder zur Verfügung steht, mit einer seltsamen Fremdheit gebraucht, als hätte er sie erst neu erlernen müssen. Die Prinzessin, die ihn küsste, sieht in ihm vielleicht nur den Prinzen, den sie sich erhofft hatte, und übersieht dabei, dass der Mann vor ihr eine Geschichte in sich trägt, die niemand außer ihm selbst je verstehen wird. So endet jedes Märchen an der Stelle, an der die eigentliche psychologische Arbeit erst beginnen müsste, und überlässt es uns, uns vorzustellen, was aus den Verwandelten wird, wenn der letzte Satz bereits geschrieben steht.$t$);

END $block$;

