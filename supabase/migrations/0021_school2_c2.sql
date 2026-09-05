-- Contenu "système scolaire allemand + patrimoine, vague 2" — niveau C2 (6 histoires).
-- Ajoute aussi 3 nouveaux types d'exercices : lueckentext (texte à trous),
-- grammar (grammaire ciblée) et true_false (vrai/faux justifié), ainsi
-- qu'une grille de correction (rubric) pour les questions de production.

-- 1. Der Zeugniszettel
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary, culture_note) VALUES (
    'C2',
    $t$Der Zeugniszettel$t$,
    $t$Als ich die Wohnung meiner Mutter räumte, fiel mir zwischen vergilbten Rezepten und nie verschickten Ansichtskarten ein Umschlag in die Hände, den ich sofort erkannte, obwohl ich ihn seit vierzig Jahren nicht mehr gesehen hatte: mein Zeugnis der neunten Klasse, versehen mit der lapidaren Randbemerkung meines damaligen Klassenlehrers, ich verfüge über „durchschnittliche Begabung bei mangelnder Anstrengungsbereitschaft". Ich erinnere mich, wie dieser Satz sich in mir festsetzte, nicht als Urteil über eine einzelne Leistung, sondern als Diagnose meines gesamten Wesens, die ich fortan mit mir herumtrug wie eine stille Bürde, deren Gewicht mir erst Jahrzehnte später bewusst wurde.

Ich hatte damals, kurz nach jenem Zeugnis, beschlossen, mich nicht mehr sonderlich anzustrengen, weil ich glaubte, ein Urteil, das mir Begabung ohnehin nur mittelmäßig zusprach, lasse sich durch Fleiß kaum widerlegen. Erst mein Onkel, ein Mann ohne Abitur, der eine Tischlerei führte, hatte mir eines Tages entgegnet, Zeugnisse seien Momentaufnahmen eines Erwachsenen, der selten begreife, was in einem Sechzehnjährigen vorgehe, und man solle sich hüten, fremde Diagnosen zur eigenen Biografie zu erklären. Ich hatte ihm damals nicht geglaubt, folgte seinem Rat aber unbewusst, indem ich eine Ausbildung begann, die niemand von mir erwartet hatte, und mich darin, zu aller Überraschung, als überaus fähig erwies.

Nun, den vergilbten Zettel in der Hand, frage ich mich, ob jener Lehrer sich seiner Macht überhaupt bewusst war, ob er ahnte, dass ein einziger, achtlos hingeworfener Satz sich in das Selbstbild eines jungen Menschen einschreiben und dort, unbeirrt von allen späteren Erfolgen, jahrzehntelang fortbestehen könnte. Vielleicht, denke ich, während ich das Papier vorsichtig zusammenfalte, liegt die eigentliche Tragik der Schule nicht in den Fächern, die sie lehrt, sondern in den Sätzen, die sie beiläufig über uns fällt und die wir, ohne es zu merken, für Wahrheiten über uns selbst halten, obwohl sie doch nur die begrenzte Sicht eines einzelnen Beobachters an einem einzigen Nachmittag widerspiegeln. Ich stecke das Zeugnis ein, nicht um es aufzubewahren, sondern um es endlich, nach vierzig Jahren, bewusst wegzuwerfen. Erst beim Verlassen der Wohnung wird mir klar, dass ich es eigentlich meinem Onkel schulde, mich bei ihm zu bedanken, doch er ist längst gestorben, und so bleibt mir nur, seinen Satz an meine eigenen Kinder weiterzugeben, in der Hoffnung, dass sie ihn früher verstehen, als ich es vermocht hatte.$t$,
    $t$En vidant l'appartement de ma mère, je suis tombé, entre des recettes jaunies et des cartes postales jamais envoyées, sur une enveloppe que je reconnus aussitôt, bien que je ne l'eusse pas revue depuis quarante ans : mon bulletin scolaire de la neuvième classe, assorti de la remarque lapidaire de mon professeur principal de l'époque, selon laquelle je disposais d'un « talent moyen assorti d'un manque de volonté de m'appliquer ». Je me souviens comment cette phrase s'incrusta en moi, non comme un jugement sur une performance isolée, mais comme un diagnostic de tout mon être, que je traînai désormais avec moi comme un fardeau silencieux dont je ne pris conscience du poids que des décennies plus tard.

J'avais alors, peu après ce bulletin, décidé de ne plus vraiment m'efforcer, car je croyais qu'un jugement qui ne m'accordait de toute façon qu'un talent médiocre ne pouvait guère être réfuté par le travail. Ce n'est que mon oncle, un homme sans baccalauréat qui dirigeait une menuiserie, qui m'objecta un jour que les bulletins scolaires sont des instantanés pris par un adulte qui comprend rarement ce qui se passe chez un adolescent de seize ans, et qu'il fallait se garder d'ériger des diagnostics étrangers en vérités sur sa propre biographie. Je ne l'avais pas cru à l'époque, mais j'ai suivi son conseil sans m'en rendre compte, en commençant une formation que personne n'attendait de moi, et où je me révélai, à la surprise générale, extrêmement compétent.

Maintenant, ce papier jauni entre les mains, je me demande si ce professeur avait seulement conscience de son pouvoir, s'il se doutait qu'une phrase unique, jetée avec désinvolture, pouvait s'inscrire dans l'image de soi d'un jeune être et y persister pendant des décennies, indifférente à tous les succès ultérieurs. Peut-être, me dis-je en repliant précautionneusement le papier, que la véritable tragédie de l'école ne réside pas dans les matières qu'elle enseigne, mais dans les phrases qu'elle prononce incidemment sur nous et que nous prenons, sans nous en apercevoir, pour des vérités sur nous-mêmes, alors qu'elles ne reflètent que le regard limité d'un seul observateur, un seul après-midi. Je glisse le bulletin dans ma poche, non pour le conserver, mais pour enfin, après quarante ans, le jeter délibérément. Ce n'est qu'en quittant l'appartement que je comprends que je devrais en réalité remercier mon oncle, mais il est mort depuis longtemps, et il ne me reste donc qu'à transmettre sa phrase à mes propres enfants, en espérant qu'ils la comprennent plus tôt que je n'ai pu le faire.$t$,
    $t${"Als":"lorsque","ich":"je","die":"la/les","Wohnung":"l'appartement","meiner":"de ma","Mutter":"mère","räumte":"vidais","fiel":"tomba","mir":"me/à moi","zwischen":"entre","vergilbten":"jaunies","Rezepten":"recettes","und":"et","nie":"jamais","verschickten":"envoyées","Ansichtskarten":"cartes postales","ein":"un","Umschlag":"enveloppe","in":"dans","Hände":"mains","den":"le (acc.)","sofort":"aussitôt","erkannte":"reconnus","obwohl":"bien que","ihn":"le (pronom)","seit":"depuis","vierzig":"quarante","Jahren":"années","nicht":"ne...pas","mehr":"plus","gesehen":"vu","hatte":"avais","mein":"mon","Zeugnis":"bulletin scolaire","der":"le/du/dont","neunten":"neuvième","Klasse":"classe","versehen":"muni","mit":"avec","lapidaren":"lapidaire","Randbemerkung":"remarque marginale","meines":"de mon","damaligen":"d'alors","Klassenlehrers":"professeur principal","verfüge":"je dispose","über":"sur/de","durchschnittliche":"moyen","Begabung":"talent","bei":"en cas de","mangelnder":"manquant","Anstrengungsbereitschaft":"volonté de faire des efforts","Ich":"Je","erinnere":"me souviens","mich":"me","wie":"comment","dieser":"cette","Satz":"phrase","sich":"se","festsetzte":"s'incrusta","als":"comme","Urteil":"jugement","eine":"une","einzelne":"isolée","Leistung":"performance","sondern":"mais plutôt","Diagnose":"diagnostic","gesamten":"entier","Wesens":"être/nature (gén.)","fortan":"désormais","herumtrug":"trimballais","stille":"silencieux","Bürde":"fardeau","deren":"dont","Gewicht":"poids","erst":"seulement","Jahrzehnte":"décennies","später":"plus tard","bewusst":"conscient","wurde":"devint","damals":"à l'époque","kurz":"peu","nach":"après","jenem":"ce (dat.)","beschlossen":"décidé","sonderlich":"particulièrement","anzustrengen":"m'efforcer","weil":"parce que","glaubte":"croyais","das":"le/que","ohnehin":"de toute façon","nur":"seulement","mittelmäßig":"médiocre","zusprach":"attribuait","lasse":"laisse","durch":"par","Fleiß":"assiduité","kaum":"à peine","widerlegen":"réfuter","Erst":"Ce n'est que","Onkel":"oncle","Mann":"homme","ohne":"sans","Abitur":"baccalauréat","Tischlerei":"menuiserie","führte":"dirigeait","eines":"d'un","Tages":"jour","entgegnet":"rétorqua","Zeugnisse":"bulletins scolaires","seien":"seraient (subj. I)","Momentaufnahmen":"instantanés","Erwachsenen":"d'un adulte","selten":"rarement","begreife":"comprenne (subj. I)","was":"ce que","einem":"un","Sechzehnjährigen":"un adolescent de seize ans","vorgehe":"se passe (subj. I)","man":"on","solle":"devrait (subj. I)","hüten":"se garder","fremde":"étrangers","Diagnosen":"diagnostics","zur":"à la","eigenen":"propre","Biografie":"biographie","zu":"à/de","erklären":"déclarer","ihm":"lui","geglaubt":"cru","folgte":"suivis","seinem":"son (dat.)","Rat":"conseil","aber":"mais","unbewusst":"inconsciemment","indem":"en (+gérondif)","Ausbildung":"formation","begann":"commençai","niemand":"personne","von":"de","erwartet":"attendu","darin":"en cela","aller":"de toute","Überraschung":"surprise","überaus":"extrêmement","fähig":"capable","erwies":"révélai (sich erweisen)","Nun":"Maintenant","Zettel":"papier","Hand":"main","frage":"demande (je me demande)","ob":"si","jener":"ce","Lehrer":"professeur","seiner":"de son","Macht":"pouvoir","überhaupt":"vraiment/du tout","war":"était","er":"il","ahnte":"se doutait","dass":"que","einziger":"unique","achtlos":"négligemment","hingeworfener":"jeté avec désinvolture","Selbstbild":"image de soi","jungen":"jeune","Menschen":"être humain","einschreiben":"s'inscrire","dort":"là","unbeirrt":"imperturbable","allen":"tous","späteren":"ultérieurs","Erfolgen":"succès (dat. pl.)","jahrzehntelang":"pendant des décennies","fortbestehen":"persister","könnte":"pourrait","Vielleicht":"Peut-être","denke":"pense","während":"pendant que","Papier":"papier","vorsichtig":"avec précaution","zusammenfalte":"replie","liegt":"réside","eigentliche":"véritable","Tragik":"tragique, tragédie","Schule":"école","Fächern":"matières (dat. pl.)","sie":"elle/ils","lehrt":"enseigne","Sätzen":"phrases (dat. pl.)","beiläufig":"incidemment","uns":"nous","fällt":"prononce","wir":"nous","es":"le/cela","merken":"remarquer","für":"pour","Wahrheiten":"vérités","selbst":"nous-mêmes","halten":"tenir pour","doch":"pourtant","begrenzte":"limitée","Sicht":"vue, perspective","einzelnen":"d'un seul","Beobachters":"d'un observateur","an":"à","einzigen":"unique","Nachmittag":"après-midi","widerspiegeln":"refléter","stecke":"glisse (le bulletin dans ma poche)","um":"pour","aufzubewahren":"conserver","endlich":"enfin","wegzuwerfen":"jeter","beim":"en (+ gérondif)","Verlassen":"le fait de quitter","wird":"devient","klar":"clair","eigentlich":"en fait","meinem":"à mon (dat.)","schulde":"dois (schulden)","bedanken":"remercier","ist":"est","längst":"depuis longtemps","gestorben":"mort","so":"ainsi","bleibt":"reste","seinen":"son (acc.)","meine":"mes","Kinder":"enfants","weiterzugeben":"transmettre","Hoffnung":"espoir","früher":"plus tôt","verstehen":"comprendre","vermocht":"pu (vermögen)"}$t$::jsonb,
    $t$Système scolaire allemand et mémoire personnelle$t$
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was findet der Erzähler beim Räumen der Wohnung seiner Mutter?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Einen Liebesbrief$t$, false, 1),
    (v_q, $t$Sein altes Zeugnis der neunten Klasse$t$, true, 2),
    (v_q, $t$Ein Foto seines Onkels$t$, false, 3),
    (v_q, $t$Eine Geburtsurkunde$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Randbemerkung hatte der Klassenlehrer auf dem Zeugnis notiert?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Der Erzähler sei hochbegabt, aber faul$t$, false, 1),
    (v_q, $t$Der Erzähler habe durchschnittliche Begabung bei mangelnder Anstrengungsbereitschaft$t$, true, 2),
    (v_q, $t$Der Erzähler solle die Schule wechseln$t$, false, 3),
    (v_q, $t$Der Erzähler verdiene ein Lob für seinen Fleiß$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Funktion erfüllt die Formulierung, der Satz sei zur "Diagnose meines gesamten Wesens" geworden, für das Verständnis der Erzählerperspektive?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie zeigt, dass der Erzähler dem Lehrer bis heute dankbar ist$t$, false, 1),
    (v_q, $t$Sie verdeutlicht, wie eine punktuelle schulische Bewertung zu einer dauerhaften, das Selbstbild prägenden Instanz überhöht wurde$t$, true, 2),
    (v_q, $t$Sie beweist, dass die Diagnose des Lehrers medizinisch fundiert war$t$, false, 3),
    (v_q, $t$Sie erklärt, warum der Erzähler das Zeugnis sofort vernichtete$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wer widerspricht der Einschätzung des Lehrers?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Die Mutter$t$, false, 1),
    (v_q, $t$Der Onkel, der eine Tischlerei führt$t$, true, 2),
    (v_q, $t$Ein Mitschüler$t$, false, 3),
    (v_q, $t$Der Rektor$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was rät der Onkel dem Erzähler bezüglich des Zeugnisses?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er solle sich beim Lehrer beschweren$t$, false, 1),
    (v_q, $t$Er solle die Schule wechseln$t$, false, 2),
    (v_q, $t$Er solle fremde Diagnosen nicht zu seiner eigenen Biografie erklären$t$, true, 3),
    (v_q, $t$Er solle das Zeugnis verstecken$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie ist die anfängliche Reaktion des Erzählers auf den Rat des Onkels zu deuten, er habe ihm "nicht geglaubt", sei ihm aber "unbewusst" gefolgt?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie zeigt eine bewusste, rationale Entscheidung von Anfang an$t$, false, 1),
    (v_q, $t$Sie zeigt eine Diskrepanz zwischen kognitiver Ablehnung und tatsächlichem, intuitivem Handeln$t$, true, 2),
    (v_q, $t$Sie beweist, dass der Onkel ihn zur Ausbildung gezwungen hat$t$, false, 3),
    (v_q, $t$Sie belegt, dass der Erzähler den Rat vollständig ignorierte$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was macht der Erzähler am Ende mit dem Zeugnis?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er rahmt es ein$t$, false, 1),
    (v_q, $t$Er wirft es endlich weg$t$, true, 2),
    (v_q, $t$Er schickt es dem Lehrer zurück$t$, false, 3),
    (v_q, $t$Er verschenkt es$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was möchte der Erzähler an seine eigenen Kinder weitergeben?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Das alte Zeugnis selbst$t$, false, 1),
    (v_q, $t$Den Rat, fremde Urteile nicht zur eigenen Wahrheit zu machen$t$, true, 2),
    (v_q, $t$Die Adresse seines Onkels$t$, false, 3),
    (v_q, $t$Seine eigene Ausbildung$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche allgemeinere These über Schule formuliert der Erzähler am Ende des Textes?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Dass Schulnoten stets objektiv und zuverlässig sind$t$, false, 1),
    (v_q, $t$Dass die eigentliche Tragik der Schule in beiläufigen Sätzen liegt, die fälschlich als endgültige Wahrheiten über die Person aufgefasst werden$t$, true, 2),
    (v_q, $t$Dass Lehrer grundsätzlich unfähig sind, Schüler einzuschätzen$t$, false, 3),
    (v_q, $t$Dass nur praktische Ausbildungen einen Wert besitzen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet "räumen" im Satz "Als ich die Wohnung meiner Mutter räumte"?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$putzen$t$, false, 1),
    (v_q, $t$leer machen, ausräumen$t$, true, 2),
    (v_q, $t$renovieren$t$, false, 3),
    (v_q, $t$verkaufen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Bedeutung hat "lapidar" im Kontext der Randbemerkung des Lehrers?$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$ausführlich und einfühlsam$t$, false, 1),
    (v_q, $t$knapp, kurz und schmucklos formuliert$t$, true, 2),
    (v_q, $t$handschriftlich$t$, false, 3),
    (v_q, $t$widersprüchlich$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Nuance trägt der Ausdruck "Bürde", mit dem der Erzähler den Satz des Lehrers beschreibt?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Eine leichte, angenehme Erinnerung$t$, false, 1),
    (v_q, $t$Eine belastende, schwer zu tragende innere Last$t$, true, 2),
    (v_q, $t$Ein juristisches Dokument$t$, false, 3),
    (v_q, $t$Ein finanzieller Vorteil$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$In welcher Zeitform steht "hatte mir eines Tages entgegnet"?$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Präsens$t$, false, 1),
    (v_q, $t$Plusquamperfekt$t$, true, 2),
    (v_q, $t$Futur II$t$, false, 3),
    (v_q, $t$Konjunktiv I$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Form liegt in "lasse sich durch Fleiß kaum widerlegen" vor?$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Reflexives Passiv-Äquivalent mit Modalverb-Ersatz (sich lassen + Infinitiv)$t$, true, 1),
    (v_q, $t$Einfaches Präsens Aktiv$t$, false, 2),
    (v_q, $t$Imperativ$t$, false, 3),
    (v_q, $t$Futur I$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie ist die Konstruktion "die ich fortan mit mir herumtrug" grammatisch und stilistisch einzuordnen?$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Ein Relativsatz im Konjunktiv II zur Kennzeichnung einer Vermutung$t$, false, 1),
    (v_q, $t$Ein Relativsatz im Indikativ Präteritum, der die andauernde, habituelle Natur der psychischen Last betont$t$, true, 2),
    (v_q, $t$Ein selbstständiger Hauptsatz im Imperativ$t$, false, 3),
    (v_q, $t$Eine indirekte Frage im Konjunktiv I$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Ich hatte ihm damals nicht geglaubt, ___ seinem Rat aber unbewusst.$t$, 1, 'facile', 'lueckentext') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$folgte$t$, true, 1),
    (v_q, $t$folgend$t$, false, 2),
    (v_q, $t$gefolgt$t$, false, 3),
    (v_q, $t$folge$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Ein Urteil, das mir Begabung ohnehin nur mittelmäßig zusprach, ___ sich durch Fleiß kaum widerlegen.$t$, 1, 'normal', 'lueckentext') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$lässt$t$, false, 1),
    (v_q, $t$lasse$t$, true, 2),
    (v_q, $t$ließe$t$, false, 3),
    (v_q, $t$lasse$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Zeugnisse seien Momentaufnahmen eines Erwachsenen, der selten ___, was in einem Sechzehnjährigen vorgehe.$t$, 1, 'difficile', 'lueckentext') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$begreift$t$, false, 1),
    (v_q, $t$begriff$t$, false, 2),
    (v_q, $t$begreife$t$, true, 3),
    (v_q, $t$begriffen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welches Tempus dominiert die Rückblende des Erzählers?$t$, 1, 'facile', 'grammar') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Präsens$t$, false, 1),
    (v_q, $t$Präteritum und Plusquamperfekt$t$, true, 2),
    (v_q, $t$Futur I$t$, false, 3),
    (v_q, $t$Imperativ$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche stilistische Funktion hat der Wechsel zwischen Präsens (Rahmenhandlung) und Präteritum/Plusquamperfekt (Rückblende)?$t$, 1, 'normal', 'grammar') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er verwirrt absichtlich die Chronologie ohne erkennbaren Zweck$t$, false, 1),
    (v_q, $t$Er trennt die gegenwärtige Reflexion von der erinnerten Vergangenheit und schafft so erzählerische Distanz$t$, true, 2),
    (v_q, $t$Er zeigt grammatische Unsicherheit des Erzählers$t$, false, 3),
    (v_q, $t$Er signalisiert wörtliche Rede$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie ist die indirekte Rede "Zeugnisse seien Momentaufnahmen eines Erwachsenen" grammatisch korrekt fortzusetzen, wenn man den Konjunktiv I konsequent beibehält?$t$, 1, 'difficile', 'grammar') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$..., der selten begreift, was in einem Sechzehnjährigen vorgeht.$t$, false, 1),
    (v_q, $t$..., der selten begreife, was in einem Sechzehnjährigen vorgehe.$t$, true, 2),
    (v_q, $t$..., der selten begriffen hat, was in einem Sechzehnjährigen vorging.$t$, false, 3),
    (v_q, $t$..., der selten begreifen würde, was in einem Sechzehnjährigen vorgegangen wäre.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, justification)
    VALUES (v_story, $t$Der Erzähler bewahrt das Zeugnis für immer auf.$t$, 1, 'facile', 'true_false', $t$Er wirft es "endlich, nach vierzig Jahren, bewusst" weg.$t$) RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Wahr$t$, false, 1),
    (v_q, $t$Falsch$t$, true, 2);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, justification)
    VALUES (v_story, $t$Der Onkel des Erzählers hatte selbst das Abitur gemacht.$t$, 1, 'normal', 'true_false', $t$Der Text nennt ihn ausdrücklich "ein Mann ohne Abitur".$t$) RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Wahr$t$, false, 1),
    (v_q, $t$Falsch$t$, true, 2);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, justification)
    VALUES (v_story, $t$Der Text legt nahe, dass die Wirkung des Lehrerurteils in keinem Verhältnis zur Kompetenz stand, mit der es gefällt wurde.$t$, 1, 'difficile', 'true_false', $t$Der Erzähler fragt, ob der Lehrer sich seiner Macht bewusst war, und beschreibt das Urteil als "die begrenzte Sicht eines einzelnen Beobachters an einem einzigen Nachmittag", die dennoch jahrzehntelang fortwirkte.$t$) RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Wahr$t$, true, 1),
    (v_q, $t$Falsch$t$, false, 2);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer, rubric)
    VALUES (v_story, $t$Verfassen Sie einen Kommentar (ca. 150 Wörter) zu der These, dass schulische Bewertungen das Selbstbild von Kindern und Jugendlichen oft stärker prägen, als es ihre pädagogische Absicht rechtfertigt.$t$, 1, 'normal', 'production', $t$Schulische Bewertungen beanspruchen eine Autorität, die in einem eklatanten Missverhältnis zu ihrer methodischen Zuverlässigkeit steht. Eine Randbemerkung, in wenigen Sekunden verfasst, kann sich als vermeintlich objektives Urteil über die Gesamtpersönlichkeit eines jungen Menschen festsetzen, obwohl sie lediglich eine punktuelle, subjektiv gefärbte Momentaufnahme darstellt. Problematisch wird dies besonders dann, wenn Kinder noch nicht über die kritische Distanz verfügen, um zwischen einer Leistungsbeurteilung und einem Urteil über den eigenen Wert zu unterscheiden. Lehrkräfte sollten sich dieser Wirkmacht bewusst sein und Formulierungen wählen, die Entwicklungsspielraum lassen, statt vermeintlich endgültige Diagnosen zu stellen. Zugleich trägt auch das Umfeld – Eltern, spätere Bezugspersonen – Verantwortung dafür, solche Urteile zu relativieren, damit ein einzelner Satz nicht über Jahrzehnte hinweg unangefochten bestehen bleibt.$t$, $t$[{"criterion":"Aufgabenerfüllung","description":"Nimmt differenziert Stellung zur These und bezieht sich erkennbar auf die im Text angesprochene Problematik."},{"criterion":"Wortschatz","description":"Verwendet abstrakten, register-angemessenen Wortschatz (Autorität, Momentaufnahme, Wirkmacht, relativieren)."},{"criterion":"Grammatik","description":"Nutzt komplexe Satzgefüge, Konjunktiv und Nominalisierungen korrekt und variantenreich."},{"criterion":"Kohärenz","description":"Entwickelt eine klare Argumentationslinie mit logischen Übergängen zwischen These, Begründung und Schlussfolgerung."}]$t$::jsonb);

END $block$;

-- 2. Die neue Schreibung
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary, culture_note) VALUES (
    'C2',
    $t$Die neue Schreibung$t$,
    $t$Im Sommer 1998 stand meine Großmutter, pensionierte Deutschlehrerin, mit versteinerter Miene vor der Titelseite der Zeitung, auf der stand, dass „daß" fortan „dass" geschrieben werde und dass Wörter wie „Schiffahrt" plötzlich ein drittes „f" verlangten. Sie hatte, wie sie mir vorwurfsvoll erklärte, ihr gesamtes Berufsleben der Vermittlung einer Orthographie gewidmet, die man nun, ohne sie zu fragen, für überholt erklärte, und sie weigerte sich, in ihren letzten Briefen auch nur ein einziges Wort nach den neuen Regeln zu schreiben.

Ich, damals Referendarin an einem Gymnasium in Niedersachsen, befand mich in einer eigentümlichen Zwischenposition: Ich musste meinen Schülern eine Schreibweise beibringen, die meine eigene Großmutter für einen Verrat an der Sprache hielt, während ebendiese Schüler die alte Rechtschreibung, in der ihre Eltern noch unterrichtet worden waren, längst als antiquiert belächelten. Zwischen den Generationen tat sich ein Graben auf, der weit über Kommaregeln hinausging: Für meine Großmutter war die Reform ein Angriff auf eine Ordnung, die Halt gegeben hatte in einem Jahrhundert voller Umbrüche; für meine Schüler war sie schlicht Verwaltungsroutine, kaum der Rede wert.

Was mich bis heute beschäftigt, ist die Beobachtung, dass meine Großmutter, so unversöhnlich sie sich gab, insgeheim wusste, dass Sprache sich immer verändert hatte, dass die von ihr verteidigte Schreibung selbst nur eine von mehreren historischen Etappen war. Ihr Widerstand galt weniger den drei „f" in „Schifffahrt" als vielmehr dem Gefühl, dass ihre Lebensleistung, die mühevolle Vermittlung einer bestimmten Norm an Generationen von Kindern, mit einem Federstrich für obsolet erklärt worden war, ohne dass jemand sie nach ihrer Erfahrung gefragt hätte. Als sie starb, fand ich unter ihren Papieren ein Heft, in dem sie heimlich, in akkurater alter Schrift, sämtliche neuen Regeln notiert hatte, offenbar um ihre Enkelkinder doch noch korrigieren zu können. Ich habe es nie geöffnet gesehen, aber allein sein Vorhandensein erzählt mehr über Versöhnung als jeder Brief, den sie mir je geschrieben hat. Heute, da meine eigenen Schüler die Reform von 1996 nur noch als historische Fußnote im Deutschunterricht kennen, frage ich mich manchmal, welche meiner heutigen Gewissheiten ihnen dereinst ebenso fremd und überholt erscheinen werden, und ob auch ich dann, wie meine Großmutter, insgeheim ein Heft führen werde, aus schierer Angst, den Anschluss an eine Sprache zu verlieren, die längst nicht mehr allein mir gehört.$t$,
    $t$À l'été 1998, ma grand-mère, professeure d'allemand à la retraite, se tenait, le visage pétrifié, devant la une du journal annonçant que « daß » s'écrirait désormais « dass » et que des mots comme « Schiffahrt » exigeaient soudain un troisième « f ». Elle avait, m'expliqua-t-elle d'un ton de reproche, consacré toute sa vie professionnelle à transmettre une orthographe qu'on déclarait maintenant dépassée sans même la consulter, et elle refusait d'écrire ne serait-ce qu'un seul mot selon les nouvelles règles dans ses dernières lettres.

Moi, alors professeure stagiaire dans un lycée de Basse-Saxe, je me trouvais dans une position intermédiaire singulière : je devais enseigner à mes élèves une orthographe que ma propre grand-mère considérait comme une trahison de la langue, tandis que ces mêmes élèves tournaient depuis longtemps en dérision l'ancienne orthographe, dans laquelle leurs parents avaient pourtant été formés, la jugeant désuète. Un fossé s'ouvrait entre les générations, bien au-delà des règles de virgule : pour ma grand-mère, la réforme était une attaque contre un ordre qui avait offert un repère dans un siècle plein de bouleversements ; pour mes élèves, ce n'était qu'une simple routine administrative, à peine digne d'être mentionnée.

Ce qui m'occupe encore aujourd'hui, c'est l'observation que ma grand-mère, aussi intransigeante qu'elle se montrât, savait au fond que la langue avait toujours changé, que l'orthographe qu'elle défendait n'était elle-même qu'une étape parmi d'autres dans l'histoire. Sa résistance concernait moins les trois « f » de « Schifffahrt » que le sentiment que l'œuvre de sa vie, la transmission laborieuse d'une norme précise à des générations d'enfants, avait été déclarée obsolète d'un trait de plume, sans que quiconque lui eût demandé son avis. À sa mort, je trouvai parmi ses papiers un cahier où elle avait noté en secret, d'une écriture ancienne et soignée, toutes les nouvelles règles, apparemment pour pouvoir malgré tout corriger ses petits-enfants. Je ne l'ai jamais vue l'ouvrir, mais sa seule existence en dit plus long sur la réconciliation que toutes les lettres qu'elle m'a jamais écrites. Aujourd'hui, alors que mes propres élèves ne connaissent la réforme de 1996 que comme une note de bas de page historique dans le cours d'allemand, je me demande parfois lesquelles de mes certitudes actuelles leur paraîtront un jour tout aussi étrangères et dépassées, et si moi aussi, comme ma grand-mère, je tiendrai en secret un cahier, par pure peur de perdre le contact avec une langue qui ne m'appartient plus depuis longtemps à moi seule.$t$,
    $t${"Im":"En (l'été)","Sommer":"été","stand":"se tenait","meine":"ma","Großmutter":"grand-mère","pensionierte":"retraitée","Deutschlehrerin":"professeure d'allemand","mit":"avec","versteinerter":"pétrifiée","Miene":"mine, expression","vor":"devant","der":"la/du","Titelseite":"une (première page)","Zeitung":"journal","auf":"sur","dass":"que","daß":"que (ancienne orthographe)","fortan":"désormais","geschrieben":"écrit","werde":"serait (subj. I)","und":"et","Wörter":"mots","wie":"comme","Schiffahrt":"navigation (ancienne orthographe)","plötzlich":"soudain","ein":"un","drittes":"troisième","f":"f (lettre)","verlangten":"exigeaient","Sie":"Elle","hatte":"avait","sie":"elle","mir":"me","vorwurfsvoll":"d'un ton de reproche","erklärte":"expliqua","ihr":"son","gesamtes":"entier","Berufsleben":"vie professionnelle","Vermittlung":"transmission","einer":"d'une","Orthographie":"orthographe","gewidmet":"consacré","die":"la, que","man":"on","nun":"maintenant","ohne":"sans","zu":"de","fragen":"demander","für":"pour","überholt":"dépassé","weigerte":"refusa","sich":"se","in":"dans","ihren":"ses","letzten":"dernières","Briefen":"lettres (dat. pl.)","auch":"même","nur":"seulement","einziges":"un seul","Wort":"mot","nach":"selon","den":"les (acc.)","neuen":"nouvelles","Regeln":"règles","schreiben":"écrire","Ich":"Je","damals":"à l'époque","Referendarin":"professeure stagiaire","an":"dans","einem":"un","Gymnasium":"lycée","Niedersachsen":"Basse-Saxe","befand":"me trouvais","mich":"me","eigentümlichen":"singulière","Zwischenposition":"position intermédiaire","musste":"devais","meinen":"mes (dat.)","Schülern":"élèves (dat. pl.)","eine":"une","Schreibweise":"façon d'écrire","beibringen":"enseigner","eigene":"propre","einen":"un (acc.)","Verrat":"trahison","Sprache":"langue","hielt":"considérait","während":"tandis que","ebendiese":"ces mêmes","Schüler":"élèves","alte":"ancienne","Rechtschreibung":"orthographe","ihre":"leurs","Eltern":"parents","noch":"encore","unterrichtet":"instruits","worden":"été (passif)","waren":"avaient été","längst":"depuis longtemps","als":"comme","antiquiert":"désuète","belächelten":"tournaient en dérision","Zwischen":"Entre","Generationen":"générations","tat":"s'ouvrit (auf)","Graben":"fossé","weit":"largement","über":"au-delà de","Kommaregeln":"règles de virgule","hinausging":"dépassait","Für":"Pour","war":"était","Reform":"réforme","Angriff":"attaque","Ordnung":"ordre","Halt":"un appui","gegeben":"donné","Jahrhundert":"siècle","voller":"plein de","Umbrüche":"bouleversements","schlicht":"simplement","Verwaltungsroutine":"routine administrative","kaum":"à peine","Rede":"mention (der Rede wert)","wert":"digne","Was":"Ce qui","bis":"jusqu'à","heute":"aujourd'hui","beschäftigt":"occupe","ist":"est","Beobachtung":"observation","so":"aussi","unversöhnlich":"intransigeante","gab":"se montrait","insgeheim":"au fond","wusste":"savait","immer":"toujours","verändert":"changé","von":"de","verteidigte":"défendue","Schreibung":"orthographe","selbst":"elle-même","mehreren":"plusieurs","historischen":"historiques","Etappen":"étapes","Ihr":"Sa","Widerstand":"résistance","galt":"visait","weniger":"moins","drei":"trois","Schifffahrt":"navigation (nouvelle orthographe)","vielmehr":"mais plutôt","dem":"au","Gefühl":"sentiment","Lebensleistung":"œuvre d'une vie","mühevolle":"laborieuse","bestimmten":"une certaine","Norm":"norme","Kindern":"enfants (dat. pl.)","Federstrich":"trait de plume","obsolet":"obsolète","erklärt":"déclarée","jemand":"quelqu'un","ihrer":"son","Erfahrung":"expérience","gefragt":"demandé","hätte":"aurait","Als":"Quand","starb":"mourut","fand":"trouvai","ich":"je","unter":"parmi","Papieren":"papiers","Heft":"cahier","heimlich":"en secret","akkurater":"soignée","alter":"ancienne","Schrift":"écriture","sämtliche":"toutes les","notiert":"notées","offenbar":"apparemment","um":"pour","Enkelkinder":"petits-enfants","doch":"quand même","korrigieren":"corriger","können":"pouvoir","habe":"ai (n'ai jamais vu)","es":"le","nie":"jamais","geöffnet":"ouvert","gesehen":"vu","aber":"mais","allein":"seul","sein":"son","Vorhandensein":"existence","erzählt":"raconte","mehr":"plus","Versöhnung":"réconciliation","jeder":"chaque","Brief":"lettre","je":"jamais","hat":"a","Heute":"Aujourd'hui","da":"puisque","eigenen":"propres","historische":"historique","Fußnote":"note de bas de page","im":"dans le","Deutschunterricht":"cours d'allemand","kennen":"connaissent","frage":"me demande","manchmal":"parfois","welche":"lesquelles de","meiner":"mes","heutigen":"actuelles","Gewissheiten":"certitudes","ihnen":"leur","dereinst":"un jour","ebenso":"tout aussi","fremd":"étranger","erscheinen":"paraître","werden":"vont","ob":"si","dann":"alors","führen":"tiendrai","aus":"par","schierer":"pure","Angst":"peur","Anschluss":"contact, lien","verlieren":"perdre","nicht":"ne...pas","gehört":"appartient"}$t$::jsonb,
    $t$Rechtschreibreform von 1996 und Generationenkonflikt$t$
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie reagiert die Großmutter, als sie von der Rechtschreibreform erfährt?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Mit Begeisterung$t$, false, 1),
    (v_q, $t$Mit versteinerter Miene, sie ist entsetzt$t$, true, 2),
    (v_q, $t$Mit Gleichgültigkeit$t$, false, 3),
    (v_q, $t$Sie versteht die Reform nicht$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was verweigert die Großmutter nach der Reform?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Weiterhin Briefe zu schreiben$t$, false, 1),
    (v_q, $t$Auch nur ein Wort nach den neuen Regeln zu schreiben$t$, true, 2),
    (v_q, $t$Mit ihrer Enkelin zu sprechen$t$, false, 3),
    (v_q, $t$Zeitung zu lesen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was verrät die Formulierung, die Großmutter habe "ihr gesamtes Berufsleben der Vermittlung einer Orthographie gewidmet", über die Tiefe ihres Widerstands?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Dass ihr Widerstand rein sprachlich-technischer Natur war$t$, false, 1),
    (v_q, $t$Dass die Reform nicht nur Regeln, sondern eine über Jahrzehnte investierte berufliche Identität in Frage stellte$t$, true, 2),
    (v_q, $t$Dass sie die Reform aus finanziellen Gründen ablehnte$t$, false, 3),
    (v_q, $t$Dass sie nie wirklich als Lehrerin gearbeitet hatte$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welchen Beruf übt die Erzählerin 1998 aus?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie ist Ärztin$t$, false, 1),
    (v_q, $t$Sie ist Referendarin an einem Gymnasium$t$, true, 2),
    (v_q, $t$Sie ist Journalistin$t$, false, 3),
    (v_q, $t$Sie ist Rechtsanwältin$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie stehen die Schüler der Erzählerin zur alten Rechtschreibung ihrer Eltern?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie bewundern sie$t$, false, 1),
    (v_q, $t$Sie belächeln sie als antiquiert$t$, true, 2),
    (v_q, $t$Sie kennen sie nicht$t$, false, 3),
    (v_q, $t$Sie fordern ihre Wiedereinführung$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie ist die Formulierung zu deuten, zwischen den Generationen habe sich "ein Graben aufgetan, der weit über Kommaregeln hinausging"?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Der Konflikt betraf ausschließlich technische Zeichensetzungsfragen$t$, false, 1),
    (v_q, $t$Der orthographische Streit fungiert als Symbol für einen tieferliegenden Bruch im Verhältnis der Generationen zu Tradition und Wandel$t$, true, 2),
    (v_q, $t$Es gab keinen wirklichen Konflikt zwischen den Generationen$t$, false, 3),
    (v_q, $t$Die Schüler und die Großmutter waren sich in der Sache völlig einig$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was findet die Erzählerin nach dem Tod der Großmutter?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Ein altes Zeugnis$t$, false, 1),
    (v_q, $t$Ein Heft mit den neuen Regeln in ihrer Handschrift$t$, true, 2),
    (v_q, $t$Einen unversendeten Brief an die Zeitung$t$, false, 3),
    (v_q, $t$Ein Foto aus ihrer Schulzeit$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wozu, vermutet die Erzählerin, sollte das geheime Heft der Großmutter dienen?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Um die Reform öffentlich anzuprangern$t$, false, 1),
    (v_q, $t$Um die Enkelkinder trotz allem korrigieren zu können$t$, true, 2),
    (v_q, $t$Um es zu veröffentlichen$t$, false, 3),
    (v_q, $t$Um es der Presse zu schicken$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Bedeutung hat der Fund des Heftes für die Deutung der Haltung der Großmutter?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er bestätigt, dass sie die Reform tatsächlich niemals zur Kenntnis genommen hatte$t$, false, 1),
    (v_q, $t$Er offenbart einen stillen, nie ausgesprochenen Widerspruch zwischen öffentlichem Widerstand und heimlicher Anpassungsbereitschaft$t$, true, 2),
    (v_q, $t$Er beweist, dass sie die Reform von Anfang an unterstützt hatte$t$, false, 3),
    (v_q, $t$Er zeigt, dass sie ihre Enkelkinder nie wirklich unterrichten wollte$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet "antiquiert" im Text?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$modern$t$, false, 1),
    (v_q, $t$veraltet, altmodisch$t$, true, 2),
    (v_q, $t$kompliziert$t$, false, 3),
    (v_q, $t$beliebt$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Bedeutung hat "unversöhnlich" im Satz über die Großmutter?$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$leicht zu überzeugen$t$, false, 1),
    (v_q, $t$nicht bereit, einen Kompromiss oder Frieden zu schließen$t$, true, 2),
    (v_q, $t$sehr freundlich$t$, false, 3),
    (v_q, $t$unentschlossen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Nuance trägt der Ausdruck "mit einem Federstrich" im Zusammenhang mit der Reform?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Es bezeichnet eine langwierige, gründliche Prüfung$t$, false, 1),
    (v_q, $t$Es bezeichnet eine scheinbar mühelose, bürokratische Entscheidung mit weitreichenden Folgen für Betroffene$t$, true, 2),
    (v_q, $t$Es bezieht sich wörtlich auf das Schreiben mit der Feder$t$, false, 3),
    (v_q, $t$Es bedeutet, dass die Reform künstlerisch gestaltet wurde$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$In welcher Form steht "werde" in "dass ,daß‘ fortan ,dass‘ geschrieben werde"?$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Konjunktiv I (indirekte Rede)$t$, true, 1),
    (v_q, $t$Konjunktiv II$t$, false, 2),
    (v_q, $t$Präsens Indikativ$t$, false, 3),
    (v_q, $t$Imperativ$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Zeitform liegt in "die von ihr verteidigte Schreibung selbst nur eine von mehreren historischen Etappen war" vor?$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Präteritum$t$, true, 1),
    (v_q, $t$Perfekt$t$, false, 2),
    (v_q, $t$Futur II$t$, false, 3),
    (v_q, $t$Plusquamperfekt$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie ist die Partizipialkonstruktion "die von ihr verteidigte Schreibung" grammatisch zu analysieren?$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Ein erweitertes Partizip-I-Attribut mit aktivischer Bedeutung$t$, false, 1),
    (v_q, $t$Ein erweitertes Partizip-II-Attribut mit passivischer Bedeutung, das einen Relativsatz ersetzt (,die Schreibung, die von ihr verteidigt wurde‘)$t$, true, 2),
    (v_q, $t$Ein Infinitivsatz mit ,zu‘$t$, false, 3),
    (v_q, $t$Eine Apposition ohne Verbbezug$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Sie ___ sich, in ihren letzten Briefen nach den neuen Regeln zu schreiben.$t$, 1, 'facile', 'lueckentext') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$weigerte$t$, true, 1),
    (v_q, $t$weigern$t$, false, 2),
    (v_q, $t$geweigert$t$, false, 3),
    (v_q, $t$weigert$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Für meine Großmutter ___ die Reform ein Angriff auf eine Ordnung gewesen, die Halt gegeben hatte.$t$, 1, 'normal', 'lueckentext') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$ist$t$, false, 1),
    (v_q, $t$war$t$, true, 2),
    (v_q, $t$sei$t$, false, 3),
    (v_q, $t$wäre$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Ihr Widerstand galt weniger den drei ,f‘ als vielmehr dem Gefühl, dass ihre Lebensleistung mit einem Federstrich für obsolet erklärt worden ___.$t$, 1, 'difficile', 'lueckentext') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$war$t$, false, 1),
    (v_q, $t$wird$t$, false, 2),
    (v_q, $t$sei$t$, true, 3),
    (v_q, $t$würde$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche grammatische Form wird häufig verwendet, um die geäußerten Meinungen der Großmutter indirekt wiederzugeben?$t$, 1, 'facile', 'grammar') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Konjunktiv I$t$, true, 1),
    (v_q, $t$Imperativ$t$, false, 2),
    (v_q, $t$Futur I$t$, false, 3),
    (v_q, $t$Passiv Präsens$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum verwendet die Erzählerin an mehreren Stellen den Konjunktiv I statt des Indikativs, wenn sie die Position der Großmutter referiert?$t$, 1, 'normal', 'grammar') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Aus reinem Stilzufall, ohne inhaltliche Funktion$t$, false, 1),
    (v_q, $t$Um deutlich zu markieren, dass es sich um fremde, wiedergegebene Aussagen und nicht um die eigene Bewertung der Erzählerin handelt$t$, true, 2),
    (v_q, $t$Weil der Indikativ in diesem Kontext grammatisch falsch wäre$t$, false, 3),
    (v_q, $t$Um Höflichkeit gegenüber der Großmutter auszudrücken$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche der folgenden Konstruktionen gibt den Satz "Man erklärte die Schreibung für obsolet" korrekt im Konjunktiv I der indirekten Rede wieder?$t$, 1, 'difficile', 'grammar') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie erzählte, man habe die Schreibung für obsolet erklärt.$t$, true, 1),
    (v_q, $t$Sie erzählte, man erklärt die Schreibung für obsolet.$t$, false, 2),
    (v_q, $t$Sie erzählte, man würde die Schreibung für obsolet erklären.$t$, false, 3),
    (v_q, $t$Sie erzählte, man hätte die Schreibung für obsolet erklärt gehabt.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, justification)
    VALUES (v_story, $t$Die Erzählerin ist 1998 bereits eine erfahrene Lehrerin.$t$, 1, 'facile', 'true_false', $t$Sie war damals "Referendarin", also noch in der Ausbildung.$t$) RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Wahr$t$, false, 1),
    (v_q, $t$Falsch$t$, true, 2);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, justification)
    VALUES (v_story, $t$Die Enkelkinder der Großmutter empfinden die alte Rechtschreibung als selbstverständlich modern.$t$, 1, 'normal', 'true_false', $t$Der Text sagt, die Schüler "belächelten" die alte Rechtschreibung "als antiquiert".$t$) RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Wahr$t$, false, 1),
    (v_q, $t$Falsch$t$, true, 2);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, justification)
    VALUES (v_story, $t$Der Text legt nahe, dass der Widerstand der Großmutter letztlich weniger der Sprache selbst als der Entwertung ihrer eigenen Lebensleistung galt.$t$, 1, 'difficile', 'true_false', $t$Es heißt ausdrücklich, ihr Widerstand habe "weniger den drei ,f‘ ... als vielmehr dem Gefühl" gegolten, ihre Lebensleistung sei "mit einem Federstrich für obsolet erklärt worden".$t$) RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Wahr$t$, true, 1),
    (v_q, $t$Falsch$t$, false, 2);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer, rubric)
    VALUES (v_story, $t$Schreiben Sie einen Kommentar (ca. 150 Wörter) darüber, weshalb Sprachreformen häufig auf emotionalen Widerstand stoßen, obwohl sie rein technisch betrachtet oft geringfügig erscheinen.$t$, 1, 'normal', 'production', $t$Sprachreformen berühren selten nur technische Regeln, sondern rütteln an der Identität derjenigen, die eine bestimmte Norm über Jahrzehnte verinnerlicht und weitergegeben haben. Wer, wie die Großmutter der Erzählung, ein Berufsleben der Vermittlung einer Schreibweise gewidmet hat, empfindet deren Änderung nicht als bloße Modernisierung, sondern als nachträgliche Entwertung der eigenen Lebensleistung. Hinzu kommt, dass Rechtschreibung im Alltag ständig sichtbar ist und somit jede Abweichung von der gewohnten Norm unmittelbar ins Auge fällt, anders als etwa Veränderungen in der Verwaltungssprache. Reformierende Institutionen unterschätzen daher oft, dass technische Vereinfachung und emotionale Akzeptanz zwei getrennte Prozesse sind. Eine gelingende Reform müsste demnach nicht nur linguistisch überzeugen, sondern auch jenen Respekt zollen, die die alte Norm mit Überzeugung gelebt haben, um den Generationenbruch, den der Text beschreibt, abzumildern.$t$, $t$[{"criterion":"Aufgabenerfüllung","description":"Erklärt schlüssig, warum Sprachreformen emotionalen Widerstand auslösen, unter Bezug auf die im Text angelegte Problematik."},{"criterion":"Wortschatz","description":"Verwendet differenzierten, abstrakten Wortschatz zu Identität, Norm und Reform angemessen."},{"criterion":"Grammatik","description":"Zeigt sichere Beherrschung komplexer Satzstrukturen, Konjunktiv und Partizipialkonstruktionen."},{"criterion":"Kohärenz","description":"Baut eine klar nachvollziehbare Argumentation mit sinnvollen Übergängen auf."}]$t$::jsonb);

END $block$;

-- 3. Die Klassenkonferenz
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary, culture_note) VALUES (
    'C2',
    $t$Die Klassenkonferenz$t$,
    $t$Am Vorabend der Klassenkonferenz, die über die Versetzung von Kevin B. entscheiden sollte, saß ich, seit zweiundzwanzig Jahren Schulleiterin einer Gesamtschule im Ruhrgebiet, lange über seiner Akte, ohne ein einziges Wort zu lesen, das ich nicht längst auswendig kannte. Die Fachlehrer waren sich einig: Kevins Noten in Mathematik und Physik rechtfertigten keine Versetzung in die zehnte Klasse, und formal betrachtet war ihre Position unangreifbar, gestützt auf Zahlen, die keinen Interpretationsspielraum zu lassen schienen.

Was in der Akte hingegen nicht stand, wusste ich nur, weil Kevin es mir im März anvertraut hatte, unter Tränen, in meinem Büro: dass er seit dem Herbst nachmittags seinen Vater pflegte, der nach einem Schlaganfall halbseitig gelähmt war, während seine Mutter in zwei Jobs arbeitete, um die Familie über Wasser zu halten. Kevin hatte mich gebeten, dies niemandem zu erzählen, aus Scham, wie er sagte, nicht aus Misstrauen, und ich hatte ihm dieses Versprechen gegeben, ohne zu ahnen, in welches Dilemma es mich stürzen würde, sobald es um eine formale Entscheidung ging, die scheinbar nur seine schulischen Leistungen betraf.

Ich wusste, dass ich das Versprechen brechen und die häusliche Situation offenlegen könnte, um eine Ausnahmeregelung zu erwirken, wie sie das Schulgesetz in Härtefällen durchaus vorsieht. Ich wusste aber auch, dass Kevin mir sein Vertrauen ausgesprochen unter der Bedingung des Schweigens geschenkt hatte, und dass ein gebrochenes Versprechen, selbst in guter Absicht, das Verhältnis zwischen uns dauerhaft beschädigen könnte, gerade in einem Alter, in dem Vertrauen zu Erwachsenen ohnehin brüchig ist. In der Konferenz selbst entschied ich mich für einen Mittelweg, der mich bis heute nicht ganz zufriedenstellt: Ich bat, ohne Details zu nennen, um eine erneute Prüfung „außergewöhnlicher familiärer Umstände", eine Formulierung, hinter der sich Kevins Wirklichkeit verbarg, ohne sie preiszugeben. Die Konferenz gewährte eine Nachprüfung im August. Ob ich damit dem Jungen oder lediglich meinem eigenen Gewissen gedient habe, weiß ich bis heute nicht mit Sicherheit zu sagen. Kevin bestand die Nachprüfung im August mit knapper Not, und als er sich Jahre später, bereits mit abgeschlossener Lehre, bei mir für „alles" bedankte, ohne genauer zu werden, verstand ich, dass auch er die Konferenz jenes Sommers nie vergessen hatte, wenngleich wir beide bis heute darüber schweigen, was tatsächlich zwischen den Zeilen jener Formulierung gestanden hatte.$t$,
    $t$La veille du conseil de classe qui devait décider du passage de Kevin B. en classe supérieure, moi, directrice d'un établissement secondaire dans la Ruhr depuis vingt-deux ans, restai longuement penchée sur son dossier, sans lire un seul mot que je ne connaisse déjà par cœur. Les enseignants des matières concernées étaient unanimes : les notes de Kevin en mathématiques et en physique ne justifiaient aucun passage en classe de dixième, et, formellement, leur position était inattaquable, appuyée sur des chiffres qui ne semblaient laisser aucune marge d'interprétation.

Ce qui, en revanche, ne figurait pas dans le dossier, je ne le savais que parce que Kevin me l'avait confié en mars, en larmes, dans mon bureau : que depuis l'automne, il s'occupait l'après-midi de son père, hémiplégique après un accident vasculaire cérébral, tandis que sa mère travaillait deux emplois pour faire vivre la famille. Kevin m'avait demandé de n'en parler à personne, par honte, disait-il, et non par méfiance, et je lui avais fait cette promesse sans me douter du dilemme dans lequel elle allait me plonger dès qu'il s'agirait d'une décision formelle qui, en apparence, ne concernait que ses résultats scolaires.

Je savais que je pouvais rompre ma promesse et révéler la situation familiale pour obtenir un régime d'exception, comme le prévoit d'ailleurs la loi scolaire pour les cas de force majeure. Mais je savais aussi que Kevin m'avait offert sa confiance à la condition expresse du silence, et qu'une promesse rompue, même avec de bonnes intentions, pouvait durablement abîmer notre relation, précisément à un âge où la confiance envers les adultes est déjà fragile. Lors du conseil lui-même, j'optai pour une voie médiane qui, aujourd'hui encore, ne me satisfait pas entièrement : je demandai, sans donner de détails, un nouvel examen des « circonstances familiales exceptionnelles », une formule derrière laquelle se dissimulait la réalité de Kevin sans jamais la dévoiler. Le conseil accorda un examen de rattrapage en août. Ai-je alors servi ce garçon ou simplement ma propre conscience, je ne saurais le dire avec certitude aujourd'hui encore. Kevin réussit l'examen de rattrapage d'août de justesse, et lorsque, des années plus tard, son apprentissage achevé, il me remercia « pour tout », sans plus de précision, je compris que lui non plus n'avait jamais oublié le conseil de classe de cet été-là, bien que nous continuions tous deux à taire ce qui se cachait réellement entre les lignes de cette formule.$t$,
    $t${"Am":"La (veille)","Vorabend":"veille","der":"la/le","Klassenkonferenz":"conseil de classe","die":"qui","über":"sur","Versetzung":"passage en classe supérieure","von":"de","Kevin":"Kevin (prénom)","B":"B. (initiale)","entscheiden":"décider","sollte":"devait","saß":"restai assise","ich":"je","seit":"depuis","zweiundzwanzig":"vingt-deux","Jahren":"ans","Schulleiterin":"directrice d'établissement","einer":"d'une","Gesamtschule":"école secondaire polyvalente","im":"dans le","Ruhrgebiet":"la région de la Ruhr","lange":"longuement","seiner":"son (gén.)","Akte":"dossier","ohne":"sans","ein":"un","einziges":"seul","Wort":"mot","zu":"à","lesen":"lire","das":"que","nicht":"ne...pas","längst":"depuis longtemps","auswendig":"par cœur","kannte":"connaissais","Die":"Les","Fachlehrer":"enseignants de la matière","waren":"étaient","sich":"se (einig)","einig":"d'accord","Kevins":"de Kevin","Noten":"notes","in":"en","Mathematik":"mathématiques","und":"et","Physik":"physique","rechtfertigten":"justifiaient","keine":"aucun","zehnte":"dixième","Klasse":"classe","formal":"formellement","betrachtet":"considéré","war":"était","ihre":"leur","Position":"position","unangreifbar":"inattaquable","gestützt":"appuyée","auf":"sur","Zahlen":"chiffres","keinen":"aucune","Interpretationsspielraum":"marge d'interprétation","lassen":"laisser","schienen":"semblaient","Was":"Ce qui","hingegen":"en revanche","stand":"figurait","wusste":"savais","nur":"seulement","weil":"parce que","es":"le/cela","mir":"me","März":"mars","anvertraut":"confié","hatte":"avait","unter":"sous","Tränen":"larmes","meinem":"mon (dat.)","Büro":"bureau","dass":"que","er":"il","dem":"le (dat.)","Herbst":"automne","nachmittags":"l'après-midi","seinen":"son (acc.)","Vater":"père","pflegte":"soignait","nach":"après","einem":"un (dat.)","Schlaganfall":"accident vasculaire cérébral","halbseitig":"d'un côté du corps","gelähmt":"paralysé","während":"tandis que","seine":"sa","Mutter":"mère","zwei":"deux","Jobs":"emplois","arbeitete":"travaillait","um":"pour","Familie":"famille","Wasser":"eau (über Wasser halten)","halten":"maintenir","mich":"me","gebeten":"demandé","dies":"cela","niemandem":"à personne","erzählen":"raconter","aus":"par","Scham":"honte","wie":"comme","sagte":"disait","Misstrauen":"méfiance","ihm":"lui","dieses":"cette","Versprechen":"promesse","gegeben":"donnée","ahnen":"me douter","welches":"quel","Dilemma":"dilemme","stürzen":"plonger","würde":"allait","sobald":"dès que","eine":"une","formale":"formelle","Entscheidung":"décision","ging":"s'agissait (es ging um)","scheinbar":"en apparence","schulischen":"scolaires","Leistungen":"résultats","betraf":"concernait","Ich":"Je","brechen":"rompre","häusliche":"familiale (domestique)","Situation":"situation","offenlegen":"révéler","könnte":"pourrais","Ausnahmeregelung":"régime d'exception","erwirken":"obtenir","sie":"elle/le (Schulgesetz)","Schulgesetz":"loi scolaire","Härtefällen":"cas de force majeure (dat. pl.)","durchaus":"tout à fait","vorsieht":"prévoit","aber":"mais","auch":"aussi","sein":"son","Vertrauen":"confiance","ausgesprochen":"expressément","Bedingung":"condition","des":"du","Schweigens":"silence (gén.)","geschenkt":"offerte","gebrochenes":"rompue","selbst":"même","guter":"bonne","Absicht":"intention","Verhältnis":"relation","zwischen":"entre","uns":"nous","dauerhaft":"durablement","beschädigen":"endommager","gerade":"précisément","Alter":"âge","Erwachsenen":"envers les adultes","ohnehin":"de toute façon","brüchig":"fragile","ist":"est","In":"Lors de","Konferenz":"conseil (de classe)","entschied":"optai","für":"pour","einen":"une (acc.)","Mittelweg":"voie médiane","bis":"jusqu'à","heute":"aujourd'hui","ganz":"tout à fait","zufriedenstellt":"satisfait","bat":"demandai","Details":"détails","nennen":"citer","erneute":"nouvel","Prüfung":"examen","außergewöhnlicher":"exceptionnelles","familiärer":"familiales","Umstände":"circonstances","Formulierung":"formulation","hinter":"derrière","Wirklichkeit":"réalité","verbarg":"se dissimulait","preiszugeben":"dévoiler","gewährte":"accorda","Nachprüfung":"examen de rattrapage","August":"août","Ob":"Si","damit":"par là","Jungen":"le garçon","oder":"ou","lediglich":"simplement","eigenen":"propre","Gewissen":"conscience","gedient":"servi","habe":"ai","weiß":"sais","mit":"avec","Sicherheit":"certitude","sagen":"dire","bestand":"réussit","knapper":"de justesse","Not":"peine","als":"quand","Jahre":"années","später":"plus tard","bereits":"déjà","abgeschlossener":"achevé","Lehre":"apprentissage","bei":"lors de","alles":"tout","bedankte":"remercia","genauer":"plus précis","werden":"devenir","verstand":"compris","jenes":"de cet","Sommers":"été (gén.)","nie":"jamais","vergessen":"oublié","wenngleich":"bien que","wir":"nous","beide":"tous deux","darüber":"à ce sujet","schweigen":"nous taisons","was":"ce qui","tatsächlich":"réellement","den":"les (acc.)","Zeilen":"lignes","jener":"cette","gestanden":"figurait (gestanden hatte)"}$t$::jsonb,
    $t$Schulalltag, Ethik und Verantwortung von Lehrkräften$t$
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Worüber soll die Klassenkonferenz entscheiden?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Über einen Schulausflug$t$, false, 1),
    (v_q, $t$Über die Versetzung von Kevin B.$t$, true, 2),
    (v_q, $t$Über einen neuen Stundenplan$t$, false, 3),
    (v_q, $t$Über eine Elternbeschwerde$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie ist die Position der Fachlehrer laut Text?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie sind sich uneinig$t$, false, 1),
    (v_q, $t$Sie sind sich einig, dass Kevins Noten keine Versetzung rechtfertigen$t$, true, 2),
    (v_q, $t$Sie befürworten die Versetzung ohne Zweifel$t$, false, 3),
    (v_q, $t$Sie wollen die Entscheidung Kevin selbst überlassen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Funktion hat die Formulierung, die Position der Fachlehrer sei "formal betrachtet unangreifbar", für das im Text angelegte Dilemma?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie zeigt, dass die Erzählerin den Fachlehrern grundsätzlich misstraut$t$, false, 1),
    (v_q, $t$Sie stellt der scheinbaren Objektivität der Notenlage die verborgene, nicht erfasste Wirklichkeit Kevins gegenüber und bereitet so den moralischen Konflikt vor$t$, true, 2),
    (v_q, $t$Sie beweist, dass die Noten manipuliert wurden$t$, false, 3),
    (v_q, $t$Sie signalisiert, dass die Konferenz bereits entschieden hatte$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was hat Kevin der Schulleiterin im März anvertraut?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Dass er die Schule wechseln möchte$t$, false, 1),
    (v_q, $t$Dass er seinen pflegebedürftigen Vater versorgt$t$, true, 2),
    (v_q, $t$Dass er schlechte Noten fälschen wollte$t$, false, 3),
    (v_q, $t$Dass er umziehen wird$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Unter welcher Bedingung hatte Kevin sein Geheimnis anvertraut?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Dass es sofort der Konferenz mitgeteilt wird$t$, false, 1),
    (v_q, $t$Dass die Schulleiterin es niemandem erzählt$t$, true, 2),
    (v_q, $t$Dass es in seiner Akte vermerkt wird$t$, false, 3),
    (v_q, $t$Dass seine Eltern informiert werden$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie ist das Dilemma der Schulleiterin strukturell zu charakterisieren?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Ein Konflikt zwischen zwei rein bürokratischen Vorschriften$t$, false, 1),
    (v_q, $t$Ein Konflikt zwischen der Pflicht zur formal fundierten Entscheidung und der Loyalität gegenüber einem im Vertrauen gegebenen Versprechen$t$, true, 2),
    (v_q, $t$Ein Konflikt zwischen zwei befreundeten Kollegen$t$, false, 3),
    (v_q, $t$Ein rein finanzielles Problem der Schule$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wofür bittet die Schulleiterin in der Konferenz?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Um sofortige Versetzung Kevins$t$, false, 1),
    (v_q, $t$Um eine Nachprüfung wegen "außergewöhnlicher familiärer Umstände"$t$, true, 2),
    (v_q, $t$Um Kevins Schulverweis$t$, false, 3),
    (v_q, $t$Um ein Gespräch mit den Fachlehrern$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie endet die Geschichte in Bezug auf Kevins schulischen Werdegang?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er verlässt die Schule ohne Abschluss$t$, false, 1),
    (v_q, $t$Er besteht die Nachprüfung und schließt später eine Lehre ab$t$, true, 2),
    (v_q, $t$Er wiederholt die gesamte Klasse$t$, false, 3),
    (v_q, $t$Er wechselt auf eine andere Schule$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Bedeutung hat es, dass Kevin sich Jahre später bei der Schulleiterin "für alles" bedankt, "ohne genauer zu werden"?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Es zeigt, dass Kevin die damalige Situation vergessen hat$t$, false, 1),
    (v_q, $t$Es deutet an, dass beide implizit um das damals Verschwiegene wissen, ohne es je offen ansprechen zu müssen$t$, true, 2),
    (v_q, $t$Es beweist, dass Kevin nachträglich alles öffentlich gemacht hat$t$, false, 3),
    (v_q, $t$Es zeigt, dass Kevin der Schulleiterin böse ist$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet "pflegen" im Satz über Kevins Vater?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$besuchen$t$, false, 1),
    (v_q, $t$sich um jemanden kümmern, versorgen$t$, true, 2),
    (v_q, $t$kritisieren$t$, false, 3),
    (v_q, $t$bezahlen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Bedeutung hat "Interpretationsspielraum" im Kontext der Fachlehrer-Position?$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Ein Raum im Schulgebäude$t$, false, 1),
    (v_q, $t$Der Spielraum für unterschiedliche Deutungen einer Sachlage$t$, true, 2),
    (v_q, $t$Ein literarisches Fach$t$, false, 3),
    (v_q, $t$Eine Prüfungsform$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Nuance trägt der Ausdruck "Härtefall" im juristisch-schulischen Kontext des Textes?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Ein besonders schwerer Unfall$t$, false, 1),
    (v_q, $t$Eine Ausnahmesituation, die aufgrund außergewöhnlicher, belastender Umstände eine Abweichung von der Regel rechtfertigt$t$, true, 2),
    (v_q, $t$Ein Disziplinarverfahren gegen einen Schüler$t$, false, 3),
    (v_q, $t$Eine besonders strenge Bewertung$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$In welcher Zeitform steht "hatte anvertraut"?$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Präsens$t$, false, 1),
    (v_q, $t$Plusquamperfekt$t$, true, 2),
    (v_q, $t$Futur I$t$, false, 3),
    (v_q, $t$Konjunktiv II$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Form liegt in "wie sie das Schulgesetz ... durchaus vorsieht" vor?$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Präsens Indikativ$t$, true, 1),
    (v_q, $t$Konjunktiv I$t$, false, 2),
    (v_q, $t$Präteritum$t$, false, 3),
    (v_q, $t$Imperativ$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie ist die Konstruktion "Ob ich damit dem Jungen oder lediglich meinem eigenen Gewissen gedient habe, weiß ich bis heute nicht mit Sicherheit zu sagen" syntaktisch zu analysieren?$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Ein Hauptsatz, gefolgt von einer unabhängigen Frage$t$, false, 1),
    (v_q, $t$Ein indirekter Fragesatz (eingeleitet durch ,ob‘) als Subjekt/Objekt des übergeordneten Hauptsatzes, mit Verbletztstellung im Nebensatz$t$, true, 2),
    (v_q, $t$Ein Konditionalsatz ohne Hauptsatz$t$, false, 3),
    (v_q, $t$Eine Reihung zweier gleichwertiger Hauptsätze$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Kevin hatte mich gebeten, dies niemandem zu ___.$t$, 1, 'facile', 'lueckentext') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$erzählen$t$, true, 1),
    (v_q, $t$erzählt$t$, false, 2),
    (v_q, $t$erzähle$t$, false, 3),
    (v_q, $t$erzählend$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Ich wusste, dass ich das Versprechen brechen und die Situation offenlegen ___.$t$, 1, 'normal', 'lueckentext') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$könnte$t$, true, 1),
    (v_q, $t$kann$t$, false, 2),
    (v_q, $t$könne$t$, false, 3),
    (v_q, $t$konnte$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Ich bat um eine erneute Prüfung außergewöhnlicher familiärer Umstände, eine Formulierung, hinter der sich Kevins Wirklichkeit ___, ohne sie preiszugeben.$t$, 1, 'difficile', 'lueckentext') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$verbarg$t$, true, 1),
    (v_q, $t$verberge$t$, false, 2),
    (v_q, $t$verbirgt$t$, false, 3),
    (v_q, $t$verborgen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Konjunktion leitet den zentralen indirekten Fragesatz am Ende des Textes ein?$t$, 1, 'facile', 'grammar') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Weil$t$, false, 1),
    (v_q, $t$Ob$t$, true, 2),
    (v_q, $t$Damit$t$, false, 3),
    (v_q, $t$Obwohl$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche stilistische Wirkung hat der offene, unbeantwortete indirekte Fragesatz am Textende?$t$, 1, 'normal', 'grammar') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er liefert eine klare moralische Bewertung der Handlung der Schulleiterin$t$, false, 1),
    (v_q, $t$Er lässt die ethische Ambivalenz der Entscheidung bewusst ungelöst und überträgt die Bewertung an die Leserschaft$t$, true, 2),
    (v_q, $t$Er zeigt grammatische Nachlässigkeit der Erzählerin$t$, false, 3),
    (v_q, $t$Er kündigt eine Fortsetzung der Geschichte an$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche der folgenden Umformulierungen von "eine Formulierung, hinter der sich Kevins Wirklichkeit verbarg" ist grammatisch und semantisch am präzisesten äquivalent?$t$, 1, 'difficile', 'grammar') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$eine Formulierung, die Kevins Wirklichkeit offenlegte$t$, false, 1),
    (v_q, $t$eine Formulierung, in der Kevins Wirklichkeit verborgen blieb, ohne explizit genannt zu werden$t$, true, 2),
    (v_q, $t$eine Formulierung, die Kevins Wirklichkeit erfand$t$, false, 3),
    (v_q, $t$eine Formulierung, die von Kevins Wirklichkeit unabhängig war$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, justification)
    VALUES (v_story, $t$Die Fachlehrer wissen von Kevins familiärer Situation.$t$, 1, 'facile', 'true_false', $t$Nur die Schulleiterin kennt die Umstände; die Fachlehrer stützen sich allein auf die Noten.$t$) RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Wahr$t$, false, 1),
    (v_q, $t$Falsch$t$, true, 2);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, justification)
    VALUES (v_story, $t$Die Schulleiterin bricht ihr Versprechen und nennt in der Konferenz Kevins familiäre Situation im Detail.$t$, 1, 'normal', 'true_false', $t$Sie bittet "ohne Details zu nennen" um eine Prüfung "außergewöhnlicher familiärer Umstände", ohne Kevins Wirklichkeit preiszugeben.$t$) RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Wahr$t$, false, 1),
    (v_q, $t$Falsch$t$, true, 2);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, justification)
    VALUES (v_story, $t$Der Text legt nahe, dass die Schulleiterin ihre eigene Entscheidung rückblickend als eindeutig richtig bewertet.$t$, 1, 'difficile', 'true_false', $t$Sie sagt ausdrücklich, sie wisse "bis heute nicht mit Sicherheit", ob sie damit dem Jungen oder nur ihrem eigenen Gewissen gedient habe.$t$) RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Wahr$t$, false, 1),
    (v_q, $t$Falsch$t$, true, 2);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer, rubric)
    VALUES (v_story, $t$Nehmen Sie Stellung (ca. 150 Wörter) zu der Frage, wie Lehrkräfte und Schulleitungen mit vertraulichen Informationen über die familiäre Situation von Schülerinnen und Schülern umgehen sollten, wenn diese Informationen für formale Entscheidungen relevant sein könnten.$t$, 1, 'normal', 'production', $t$Der Umgang mit vertraulichen Schülerinformationen erfordert eine sorgfältige Abwägung zwischen dem Schutz der Privatsphäre und der Pflicht zu einer gerechten, umfassend informierten Entscheidung. Ein pauschales Brechen des Vertrauens würde das ohnehin fragile Verhältnis zwischen Jugendlichen und Erwachsenen nachhaltig beschädigen und könnte dazu führen, dass Schülerinnen und Schüler sich künftig niemandem mehr anvertrauen. Andererseits darf Vertraulichkeit nicht dazu führen, dass strukturelle Benachteiligungen unsichtbar bleiben und rein formale Kriterien über Schicksale entscheiden, die diese Kriterien gar nicht abbilden können. Ein tragfähiger Mittelweg besteht darin, wie im Text beschrieben, allgemein gehaltene Formulierungen zu nutzen, die eine Ausnahmeregelung ermöglichen, ohne die persönliche Geschichte im Detail preiszugeben. Entscheidend bleibt, dass Schulen klare, diskrete Verfahren für solche Härtefälle etablieren, damit Einzelpersonen nicht allein mit derart schwerwiegenden ethischen Abwägungen belastet werden.$t$, $t$[{"criterion":"Aufgabenerfüllung","description":"Erörtert differenziert den Umgang mit vertraulichen Informationen unter Bezug auf das im Text dargestellte Dilemma."},{"criterion":"Wortschatz","description":"Nutzt präzisen, register-angemessenen Wortschatz zu Ethik, Vertraulichkeit und schulischer Verwaltung."},{"criterion":"Grammatik","description":"Verwendet komplexe Nebensatzgefüge, Konjunktiv und Nominalstil sicher und variantenreich."},{"criterion":"Kohärenz","description":"Strukturiert Argumente logisch mit klarer These, Abwägung und Schlussfolgerung."}]$t$::jsonb);

END $block$;

-- 4. Der Übertritt
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary, culture_note) VALUES (
    'C2',
    $t$Der Übertritt$t$,
    $t$Meine Grundschullehrerin, Frau Nettelbeck, hatte mir in der vierten Klasse eine Empfehlung für die Hauptschule ausgestellt, mit der Begründung, ich sei „für theoretische Fächer wenig geeignet", eine Einschätzung, die mein Vater, der selbst nur die Hauptschule besucht hatte, widerspruchslos hinnahm, während meine Mutter, die aus einer Akademikerfamilie stammte, tagelang mit der Schulleitung verhandelte, bis man mir schließlich, gegen die ursprüngliche Empfehlung, den Übertritt aufs Gymnasium gestattete. Ich war neun Jahre alt und begriff nicht, weshalb dieser Kampf so erbittert geführt wurde, ahnte aber, dass mein weiteres Leben von seinem Ausgang abhing.

Erst als Erwachsener verstand ich, wie sehr dieses frühe Sortierverfahren, das in kaum einem anderen Land der Welt in dieser Form existiert, die Chancen von Kindern nicht nach ihrer Begabung, sondern nach der Hartnäckigkeit und dem kulturellen Kapital ihrer Eltern verteilt. Meine Nachbarin Yeliz, die im selben Jahr wie ich eingeschult worden war und in Mathematik regelmäßig bessere Noten hatte als ich, erhielt dieselbe Hauptschulempfehlung, doch ihre Eltern, beide ohne deutschen Schulabschluss und ohne Vertrautheit mit den bürokratischen Wegen eines Widerspruchsverfahrens, akzeptierten die Empfehlung ohne Gegenwehr. Yeliz wechselte auf die Hauptschule, machte später eine Ausbildung zur Arzthelferin und holte mit siebenundzwanzig, neben ihrem Beruf, das Abitur auf dem zweiten Bildungsweg nach, ein Umweg von über fünfzehn Jahren, den ihre gleich begabte Nachbarin, also ich, niemals hatte gehen müssen.

Wenn wir uns heute begegnen, sprechen wir selten über jene vierte Klasse, doch die Asymmetrie unserer Biografien liegt zwischen uns wie ein Fakt, den beide kennen, aber nicht benennen. Ich habe seither begriffen, dass Bildungsgerechtigkeit sich nicht an den Fähigkeiten der Kinder bemisst, sondern an der Frage, wessen Eltern wissen, wie man ein System anficht, das vorgibt, objektiv zu urteilen, während es in Wahrheit vor allem die bereits bestehenden Unterschiede reproduziert und in Zeugnisform gießt, lange bevor die Betroffenen selbst eine Ahnung von ihrer eigenen Zukunft haben können. Manchmal frage ich mich, ob Frau Nettelbeck sich noch an uns beide erinnert, an die zwei neunjährigen Mädchen mit ähnlichen Noten und derart unterschiedlichen Wegen, und ob ihr je aufgefallen ist, dass ihre vermeintlich neutrale Einschätzung in Wirklichkeit über zwei Leben entschieden hat, ohne dass jemand außer den betroffenen Familien selbst dafür je zur Rechenschaft gezogen worden wäre.$t$,
    $t$Mon institutrice de primaire, madame Nettelbeck, m'avait délivré en CM1 une recommandation pour la Hauptschule (l'école secondaire la moins exigeante), au motif que je n'étais « guère apte aux matières théoriques », une appréciation que mon père, qui n'avait lui-même fréquenté que la Hauptschule, accepta sans broncher, tandis que ma mère, issue d'une famille d'universitaires, négocia pendant des jours avec la direction de l'école, jusqu'à ce qu'on m'autorise finalement, contre la recommandation initiale, à passer au lycée. J'avais neuf ans et ne comprenais pas pourquoi ce combat était mené avec un tel acharnement, mais je pressentais que la suite de ma vie en dépendait.

Ce n'est qu'une fois adulte que je compris à quel point ce système de tri précoce, qui n'existe sous cette forme dans presque aucun autre pays du monde, répartit les chances des enfants non pas selon leur talent, mais selon l'obstination et le capital culturel de leurs parents. Ma voisine Yeliz, scolarisée la même année que moi et qui obtenait régulièrement de meilleures notes que moi en mathématiques, reçut la même recommandation pour la Hauptschule, mais ses parents, tous deux sans diplôme scolaire allemand et peu familiers des voies bureaucratiques du recours, l'acceptèrent sans opposition. Yeliz passa à la Hauptschule, fit ensuite une formation d'assistante médicale et rattrapa, à vingt-sept ans, en parallèle de son travail, le baccalauréat par la deuxième voie de formation, un détour de plus de quinze ans que sa voisine, également douée, c'est-à-dire moi, n'avait jamais eu à emprunter.

Quand nous nous rencontrons aujourd'hui, nous parlons rarement de ce CM1, mais l'asymétrie de nos parcours demeure entre nous comme un fait que nous connaissons toutes deux sans jamais le nommer. J'ai fini par comprendre que l'équité scolaire ne se mesure pas aux capacités des enfants, mais à la question de savoir quels parents savent contester un système qui prétend juger objectivement, alors qu'il ne fait en réalité que reproduire des différences déjà existantes et les couler dans la forme d'un bulletin, bien avant que les intéressés eux-mêmes n'aient la moindre idée de leur propre avenir. Je me demande parfois si madame Nettelbeck se souvient encore de nous deux, de ces deux fillettes de neuf ans aux notes semblables et aux parcours si différents, et si elle a jamais réalisé que son appréciation prétendument neutre avait en réalité scellé deux vies, sans que quiconque, hormis les familles concernées elles-mêmes, n'en ait jamais eu à répondre.$t$,
    $t${"Meine":"Mon","Grundschullehrerin":"institutrice de primaire","Frau":"madame","Nettelbeck":"Nettelbeck (nom)","hatte":"avait","mir":"me","in":"en","der":"la","vierten":"quatrième","Klasse":"classe","eine":"une","Empfehlung":"recommandation","für":"pour","die":"la","Hauptschule":"école secondaire de niveau inférieur","ausgestellt":"délivrée","mit":"avec","Begründung":"justification","ich":"je","sei":"serais (subj. I)","theoretische":"théoriques","Fächer":"matières","wenig":"peu","geeignet":"apte","Einschätzung":"appréciation","mein":"mon","Vater":"père","selbst":"lui-même","nur":"seulement","besucht":"fréquenté","widerspruchslos":"sans opposition","hinnahm":"accepta","während":"tandis que","meine":"ma","Mutter":"mère","aus":"issue de","einer":"une","Akademikerfamilie":"famille d'universitaires","stammte":"venait","tagelang":"pendant des jours","Schulleitung":"direction de l'école","verhandelte":"négocia","bis":"jusqu'à ce que","man":"on","schließlich":"finalement","gegen":"contre","ursprüngliche":"initiale","den":"le (acc.)","Übertritt":"passage (à un autre niveau)","aufs":"au","Gymnasium":"lycée","gestattete":"autorisa","Ich":"Je","war":"avais (j'avais neuf ans)","neun":"neuf","Jahre":"ans","alt":"âgée","und":"et","begriff":"comprenais","nicht":"ne...pas","weshalb":"pourquoi","dieser":"ce","Kampf":"combat","so":"si","erbittert":"acharné","geführt":"mené","wurde":"était","ahnte":"pressentais","aber":"mais","dass":"que","weiteres":"le reste de (ma vie)","Leben":"vie","von":"de","seinem":"son","Ausgang":"issue","abhing":"dépendait","Erst":"Ce n'est que","als":"une fois","Erwachsener":"adulte","verstand":"compris","wie":"combien","sehr":"beaucoup","dieses":"ce","frühe":"précoce","Sortierverfahren":"système de tri","das":"qui","kaum":"presque aucun","einem":"un (dat.)","anderen":"autre","Land":"pays","Welt":"monde","Form":"forme","existiert":"existe","Chancen":"chances","Kindern":"des enfants (dat. pl.)","nach":"selon","ihrer":"leur","Begabung":"talent","sondern":"mais","Hartnäckigkeit":"obstination","dem":"le (dat.)","kulturellen":"culturel","Kapital":"capital","Eltern":"parents","verteilt":"répartit","Nachbarin":"voisine","Yeliz":"Yeliz (prénom)","im":"la même (année)","selben":"même","Jahr":"année","eingeschult":"scolarisée","worden":"été (passif)","Mathematik":"mathématiques","regelmäßig":"régulièrement","bessere":"meilleures","Noten":"notes","erhielt":"reçut","dieselbe":"la même","Hauptschulempfehlung":"recommandation pour la Hauptschule","doch":"mais","ihre":"ses","beide":"tous deux","ohne":"sans","deutschen":"allemand","Schulabschluss":"diplôme scolaire","Vertrautheit":"familiarité","bürokratischen":"bureaucratiques","Wegen":"voies (dat. pl.)","eines":"d'une","Widerspruchsverfahrens":"procédure de recours","akzeptierten":"acceptèrent","Gegenwehr":"opposition","wechselte":"passa","auf":"à","machte":"fit","später":"plus tard","Ausbildung":"formation","zur":"d'","Arzthelferin":"assistante médicale","holte":"rattrapa (holte nach)","siebenundzwanzig":"vingt-sept","neben":"en plus de","ihrem":"son","Beruf":"métier","Abitur":"baccalauréat","zweiten":"deuxième","Bildungsweg":"voie de formation","ein":"un","Umweg":"détour","über":"de plus de","fünfzehn":"quinze","Jahren":"années","gleich":"tout aussi","begabte":"douée","also":"c'est-à-dire","niemals":"jamais","gehen":"emprunter","müssen":"devoir","Wenn":"Quand","wir":"nous","uns":"nous (rencontrons)","heute":"aujourd'hui","begegnen":"rencontrons","sprechen":"parlons","selten":"rarement","jene":"ce","vierte":"quatrième","Asymmetrie":"asymétrie","unserer":"de nos","Biografien":"parcours de vie","liegt":"demeure","zwischen":"entre","Fakt":"fait","kennen":"connaissons","benennen":"nommer","habe":"ai","seither":"depuis lors","begriffen":"compris","Bildungsgerechtigkeit":"équité scolaire","sich":"se","an":"à","Fähigkeiten":"capacités","Kinder":"enfants","bemisst":"mesure","Frage":"question","wessen":"de quels","wissen":"savent","System":"système","anficht":"conteste","vorgibt":"prétend","objektiv":"objectivement","zu":"de/à","urteilen":"juger","es":"il","Wahrheit":"vérité","vor":"avant tout (vor allem)","allem":"tout","bereits":"déjà","bestehenden":"existantes","Unterschiede":"différences","reproduziert":"reproduit","Zeugnisform":"forme d'un bulletin","gießt":"coule","lange":"longtemps","bevor":"avant que","Betroffenen":"les intéressés","Ahnung":"idée","eigenen":"propre","Zukunft":"avenir","haben":"avoir","können":"pouvoir","Manchmal":"Parfois","frage":"me demande","mich":"me","ob":"si","noch":"encore","erinnert":"se souvient","zwei":"deux","neunjährigen":"de neuf ans","Mädchen":"fillettes","ähnlichen":"semblables","derart":"aussi","unterschiedlichen":"différents","ihr":"lui (dat.)","je":"jamais","aufgefallen":"remarqué (est-ce qu'il lui est apparu)","ist":"est","vermeintlich":"prétendument","neutrale":"neutre","Wirklichkeit":"réalité","entschieden":"décidé","hat":"a","jemand":"quelqu'un","außer":"hormis","betroffenen":"concernées","Familien":"familles","dafür":"pour cela","Rechenschaft":"responsabilité, comptes","gezogen":"tirés (zur Rechenschaft gezogen = tenu responsable)","wäre":"aurait été"}$t$::jsonb,
    $t$Dreigliedriges Schulsystem und Bildungsgerechtigkeit$t$
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Empfehlung gibt Frau Nettelbeck der Erzählerin in der vierten Klasse?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Eine Empfehlung fürs Gymnasium$t$, false, 1),
    (v_q, $t$Eine Empfehlung für die Hauptschule$t$, true, 2),
    (v_q, $t$Eine Empfehlung für eine Sonderschule$t$, false, 3),
    (v_q, $t$Keine Empfehlung$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie verhalten sich die Eltern der Erzählerin bezüglich dieser Empfehlung unterschiedlich?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Beide protestieren gemeinsam$t$, false, 1),
    (v_q, $t$Der Vater akzeptiert sie, die Mutter kämpft dagegen an$t$, true, 2),
    (v_q, $t$Beide akzeptieren sie ohne Widerspruch$t$, false, 3),
    (v_q, $t$Beide fordern eine Sonderschule$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was deutet die unterschiedliche Reaktion der Eltern auf das gesellschaftliche Verhältnis zur Schulempfehlung hin?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Dass Bildungserfahrung und -herkunft der Eltern beeinflussen, ob eine Schulempfehlung als verbindlich oder anfechtbar wahrgenommen wird$t$, true, 1),
    (v_q, $t$Dass der Vater seine Tochter weniger liebt als die Mutter$t$, false, 2),
    (v_q, $t$Dass die Schulempfehlung rein zufällig zustande kam$t$, false, 3),
    (v_q, $t$Dass die Mutter die Lehrerin persönlich kannte$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wer ist Yeliz?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Die Schwester der Erzählerin$t$, false, 1),
    (v_q, $t$Die Nachbarin, die im gleichen Jahr eingeschult wurde$t$, true, 2),
    (v_q, $t$Die Lehrerin$t$, false, 3),
    (v_q, $t$Die Mutter der Erzählerin$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum akzeptieren Yeliz' Eltern die Hauptschulempfehlung ohne Widerspruch?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Weil sie mit dem System zufrieden waren$t$, false, 1),
    (v_q, $t$Weil sie keinen deutschen Schulabschluss und keine Vertrautheit mit Widerspruchsverfahren hatten$t$, true, 2),
    (v_q, $t$Weil Yeliz selbst darum bat$t$, false, 3),
    (v_q, $t$Weil sie in eine andere Stadt zogen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche strukturelle These über das deutsche Schulsystem wird durch den Vergleich zwischen der Erzählerin und Yeliz veranschaulicht?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Dass beide Mädchen völlig unterschiedliche Begabungen hatten$t$, false, 1),
    (v_q, $t$Dass eine formal neutrale Sortierung faktisch bestehende soziale Ungleichheiten reproduziert, statt reine Leistung abzubilden$t$, true, 2),
    (v_q, $t$Dass das Gymnasium grundsätzlich eine bessere Ausbildung bietet als die Hauptschule$t$, false, 3),
    (v_q, $t$Dass Lehrerinnen absichtlich diskriminieren$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie holt Yeliz das Abitur nach?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie wiederholt die Hauptschule$t$, false, 1),
    (v_q, $t$Auf dem zweiten Bildungsweg neben ihrem Beruf$t$, true, 2),
    (v_q, $t$Sie wechselt direkt aufs Gymnasium$t$, false, 3),
    (v_q, $t$Sie macht es gar nicht$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie beschreibt die Erzählerin die Beziehung der beiden Frauen heute?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie sprechen offen über die vierte Klasse$t$, false, 1),
    (v_q, $t$Sie sprechen selten darüber, obwohl die Asymmetrie ihrer Biografien spürbar bleibt$t$, true, 2),
    (v_q, $t$Sie haben den Kontakt völlig abgebrochen$t$, false, 3),
    (v_q, $t$Sie sind inzwischen beste Freundinnen ohne jede Distanz$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche abschließende Kritik formuliert die Erzählerin am System der Schulempfehlung?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Dass Lehrerinnen grundsätzlich böswillig handeln$t$, false, 1),
    (v_q, $t$Dass vermeintlich objektive Urteile in Wahrheit soziale Unterschiede fortschreiben, ohne dass jemand dafür zur Verantwortung gezogen wird$t$, true, 2),
    (v_q, $t$Dass das Gymnasium abgeschafft werden sollte$t$, false, 3),
    (v_q, $t$Dass Kinder generell zu früh eingeschult werden$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet "widerspruchslos" im Text?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$mit heftigem Protest$t$, false, 1),
    (v_q, $t$ohne Einwand, ohne zu widersprechen$t$, true, 2),
    (v_q, $t$mit Verzögerung$t$, false, 3),
    (v_q, $t$schriftlich$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Bedeutung hat "kulturelles Kapital" im Kontext des Textes?$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Geldvermögen einer Familie$t$, false, 1),
    (v_q, $t$Bildungshintergrund, Vertrautheit mit Institutionen und Wissen, die eine Familie sozial vererbt$t$, true, 2),
    (v_q, $t$Kunstsammlungen$t$, false, 3),
    (v_q, $t$Ein Sparkonto für die Ausbildung$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Nuance trägt der Begriff "Sortierverfahren" im Zusammenhang mit dem deutschen Schulsystem?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Ein neutraler, rein administrativer Vorgang ohne gesellschaftliche Implikationen$t$, false, 1),
    (v_q, $t$Eine kritisch konnotierte Bezeichnung, die die frühe Aufteilung der Kinder als mechanistisch und potenziell ungerecht erscheinen lässt$t$, true, 2),
    (v_q, $t$Ein Begriff aus der Postlogistik$t$, false, 3),
    (v_q, $t$Eine Bezeichnung für die Notenvergabe am Ende des Schuljahres$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$In welcher Zeitform steht "hatte ausgestellt"?$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Präsens$t$, false, 1),
    (v_q, $t$Plusquamperfekt$t$, true, 2),
    (v_q, $t$Futur II$t$, false, 3),
    (v_q, $t$Konjunktiv I$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Form liegt in "bis man mir schließlich ... den Übertritt gestattete" vor?$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Präteritum Passiv$t$, false, 1),
    (v_q, $t$Präteritum Aktiv mit unpersönlichem Subjekt ,man‘$t$, true, 2),
    (v_q, $t$Konjunktiv II$t$, false, 3),
    (v_q, $t$Futur I$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie ist die Konstruktion "ein Umweg von über fünfzehn Jahren, den ihre gleich begabte Nachbarin ... niemals hatte gehen müssen" grammatisch zu analysieren?$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Ein Relativsatz mit doppeltem Infinitiv (Ersatzinfinitiv) im Plusquamperfekt, typisch für Modalverb-Konstruktionen in Nebensätzen$t$, true, 1),
    (v_q, $t$Ein Hauptsatz im Konjunktiv II$t$, false, 2),
    (v_q, $t$Ein unabhängiger Fragesatz$t$, false, 3),
    (v_q, $t$Ein Relativsatz im einfachen Präsens$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Meine Mutter ___ tagelang mit der Schulleitung verhandelt.$t$, 1, 'facile', 'lueckentext') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$hat$t$, false, 1),
    (v_q, $t$hatte$t$, true, 2),
    (v_q, $t$haben$t$, false, 3),
    (v_q, $t$hätte$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Ich begriff nicht, weshalb dieser Kampf so erbittert ___ wurde.$t$, 1, 'normal', 'lueckentext') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$geführt$t$, true, 1),
    (v_q, $t$führen$t$, false, 2),
    (v_q, $t$führte$t$, false, 3),
    (v_q, $t$führend$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Ihre Eltern akzeptierten die Empfehlung, ohne dass jemand ihnen die Möglichkeit eines Widerspruchs ___ hätte.$t$, 1, 'difficile', 'lueckentext') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$erklärt$t$, true, 1),
    (v_q, $t$erkläre$t$, false, 2),
    (v_q, $t$erklärte$t$, false, 3),
    (v_q, $t$erklärend$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welches grammatische Mittel wird verwendet, um zwei gleich begabte Mädchen mit unterschiedlichen Schicksalen zu kontrastieren?$t$, 1, 'facile', 'grammar') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Direkte Rede$t$, false, 1),
    (v_q, $t$Vergleichende Nebensätze und Parallelkonstruktionen (doch, während)$t$, true, 2),
    (v_q, $t$Imperativsätze$t$, false, 3),
    (v_q, $t$Passivkonstruktionen ausschließlich$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche syntaktische Funktion erfüllt der eingeschobene Relativsatz in "dieses frühe Sortierverfahren, das in kaum einem anderen Land der Welt in dieser Form existiert,"?$t$, 1, 'normal', 'grammar') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er liefert eine notwendige, restriktive Bedingung$t$, false, 1),
    (v_q, $t$Er fügt eine erläuternde, nicht-restriktive Zusatzinformation ein, die die Besonderheit des deutschen Systems im internationalen Vergleich hervorhebt$t$, true, 2),
    (v_q, $t$Er leitet einen Konditionalsatz ein$t$, false, 3),
    (v_q, $t$Er drückt einen Widerspruch zum Hauptsatz aus$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche der folgenden Formulierungen gibt "ein Umweg, den sie hatte gehen müssen" grammatisch korrekt im Aktiv-Perfekt (statt Plusquamperfekt) wieder?$t$, 1, 'difficile', 'grammar') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$ein Umweg, den sie hat gehen müssen$t$, true, 1),
    (v_q, $t$ein Umweg, den sie gehen musste hatte$t$, false, 2),
    (v_q, $t$ein Umweg, der sie gegangen ist$t$, false, 3),
    (v_q, $t$ein Umweg, den sie gehen hätte müssen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, justification)
    VALUES (v_story, $t$Die Erzählerin wechselt trotz der Hauptschulempfehlung aufs Gymnasium.$t$, 1, 'facile', 'true_false', $t$Der Text sagt, man habe ihr "gegen die ursprüngliche Empfehlung, den Übertritt aufs Gymnasium gestattete".$t$) RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Wahr$t$, true, 1),
    (v_q, $t$Falsch$t$, false, 2);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, justification)
    VALUES (v_story, $t$Yeliz hatte in Mathematik schlechtere Noten als die Erzählerin.$t$, 1, 'normal', 'true_false', $t$Der Text sagt, Yeliz habe "regelmäßig bessere Noten" in Mathematik gehabt als die Erzählerin.$t$) RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Wahr$t$, false, 1),
    (v_q, $t$Falsch$t$, true, 2);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, justification)
    VALUES (v_story, $t$Der Text stellt implizit infrage, dass schulische Empfehlungen allein auf objektiven Leistungskriterien beruhen.$t$, 1, 'difficile', 'true_false', $t$Die Erzählerin schließt, Bildungsgerechtigkeit bemesse sich nicht an den Fähigkeiten der Kinder, sondern daran, wessen Eltern wissen, "wie man ein System anficht, das vorgibt, objektiv zu urteilen".$t$) RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Wahr$t$, true, 1),
    (v_q, $t$Falsch$t$, false, 2);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer, rubric)
    VALUES (v_story, $t$Erörtern Sie (ca. 150 Wörter), welche Konsequenzen eine frühe schulische Aufteilung von Kindern – wie im deutschen dreigliedrigen Schulsystem – für die Bildungsgerechtigkeit haben kann.$t$, 1, 'normal', 'production', $t$Eine frühe schulische Aufteilung setzt voraus, dass sich Begabung und Potenzial bereits im Alter von neun oder zehn Jahren zuverlässig erkennen lassen, eine Annahme, die empirisch höchst zweifelhaft ist. Tatsächlich hängt der Erfolg einer Schulempfehlung, wie das Beispiel der Erzählung zeigt, häufig stärker von der Bereitschaft und Fähigkeit der Eltern ab, ein Widerspruchsverfahren anzustrengen, als von den tatsächlichen Fähigkeiten des Kindes. Familien mit akademischem Hintergrund verfügen über das nötige institutionelle Wissen und die sprachliche Sicherheit, um Empfehlungen anzufechten, während Familien ohne solche Erfahrung sie oft unwidersprochen hinnehmen. Auf diese Weise reproduziert das System bestehende soziale Ungleichheiten, anstatt sie auszugleichen. Eine spätere, gemeinsame Schulzeit bis mindestens zur sechsten Klasse, wie sie in vielen anderen Ländern üblich ist, könnte solche vorschnellen und folgenreichen Weichenstellungen zumindest teilweise entschärfen.$t$, $t$[{"criterion":"Aufgabenerfüllung","description":"Erörtert differenziert die Konsequenzen früher schulischer Selektion unter Bezug auf den Text."},{"criterion":"Wortschatz","description":"Verwendet präzisen bildungspolitischen und soziologischen Fachwortschatz angemessen."},{"criterion":"Grammatik","description":"Nutzt komplexe Satzgefüge, Nominalstil und Konjunktiv korrekt und variantenreich."},{"criterion":"Kohärenz","description":"Entwickelt eine klar strukturierte Argumentation mit begründeter Schlussfolgerung."}]$t$::jsonb);

END $block$;

-- 5. Das Ideal und der Lebenslauf
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary, culture_note) VALUES (
    'C2',
    $t$Das Ideal und der Lebenslauf$t$,
    $t$Mein Vater, emeritierter Gymnasiallehrer für Altgriechisch, zitierte bei jeder passenden und unpassenden Gelegenheit Wilhelm von Humboldts Überzeugung, wahre Bildung ziele auf „die höchste und proportionierlichste Ausbildung der Kräfte zu einem Ganzen", niemals aber auf bloße Nützlichkeit. Er hatte sein Leben diesem Ideal gewidmet, hatte Generationen von Schülern in eine Sprache eingeführt, die kaum jemand von ihnen je wieder benötigen würde, und betrachtete diese scheinbare Nutzlosigkeit gerade als Beweis für den eigentlichen Wert des Unterrichts: Bildung, die sich rechtfertigen müsse, sei bereits zur Ausbildung verkommen.

Als ich, seine Tochter, nach dem Studium der Betriebswirtschaft meine erste Stelle in einer Unternehmensberatung antrat, empfand ich seine Haltung zunehmend als weltfremd. In meinem Berufsalltag zählte, was sich in Kennzahlen ausdrücken ließ, was einem Projekt, einem Kunden, letztlich dem Unternehmenserfolg unmittelbar diente, und Fragen nach der „proportionierlichsten Ausbildung der Kräfte" hätten in keinem Meeting auch nur eine Sekunde Beachtung gefunden. Ich begann, meinem Vater vorzuwerfen, er habe mich auf ein Leben vorbereitet, das es so, in seiner reinen humanistischen Form, längst nicht mehr gebe, und dass sein geliebter Humboldt in der Realität eines globalisierten Arbeitsmarktes schlicht nichts mehr zu sagen habe.

Erst nach Jahren, während einer Umstrukturierung, die halb meine Abteilung kostete, begriff ich, was mein Vater eigentlich gemeint hatte. Nicht das Griechische selbst hatte mich gerüstet, sondern die Fähigkeit, die es mir beigebracht hatte: komplexe Zusammenhänge geduldig zu durchdenken, anstatt sie vorschnell in Kennzahlen zu pressen, und mich nicht ausschließlich über meine augenblickliche Funktion zu definieren, als diese Funktion plötzlich wegfiel. Bei meinem letzten Besuch erzählte ich ihm davon, vorsichtig, um seinen alten Triumph nicht zu befeuern. Er nickte nur, ohne zu lächeln, und sagte, Bildung zeige ihren Wert stets erst dann, wenn die Nützlichkeit, für die man sie fälschlich gehalten habe, bereits verschwunden sei. Seither überlege ich, ob ich meinen eigenen Kindern, die beide auf ein wirtschaftswissenschaftliches Studium zusteuern, jenen scheinbar altmodischen Satz überhaupt vermitteln kann, ohne dabei denselben belehrenden Tonfall anzuschlagen, den ich meinem Vater jahrelang übelgenommen hatte, und fürchte insgeheim, dass sie ihn, wie ich einst, erst nach einer eigenen Krise wirklich verstehen werden.$t$,
    $t$Mon père, professeur de lycée émérite pour le grec ancien, citait à tout propos, opportun ou non, la conviction de Wilhelm von Humboldt selon laquelle la véritable éducation vise « la formation la plus haute et la plus harmonieuse des forces en un tout », jamais la simple utilité. Il avait consacré sa vie à cet idéal, avait initié des générations d'élèves à une langue dont presque aucun n'aurait plus jamais besoin, et considérait cette apparente inutilité précisément comme la preuve de la valeur réelle de son enseignement : une éducation qui doit se justifier, disait-il, a déjà dégénéré en simple formation professionnelle.

Lorsque moi, sa fille, après des études de gestion, pris mon premier poste dans un cabinet de conseil, je trouvai sa position de plus en plus déconnectée de la réalité. Dans mon quotidien professionnel, ce qui comptait, c'était ce qui pouvait s'exprimer en indicateurs chiffrés, ce qui servait directement un projet, un client, en fin de compte la réussite de l'entreprise, et des questions sur « la formation la plus harmonieuse des forces » n'auraient pas retenu une seconde d'attention dans une seule réunion. Je me mis à reprocher à mon père de m'avoir préparée à une vie qui, sous sa forme humaniste pure, n'existait tout simplement plus, et que son cher Humboldt n'avait plus rien à dire face à la réalité d'un marché du travail mondialisé.

Ce n'est qu'au bout de plusieurs années, lors d'une restructuration qui coûta la moitié de mon service, que je compris ce que mon père voulait réellement dire. Ce n'était pas le grec lui-même qui m'avait armée, mais la capacité qu'il m'avait enseignée : penser patiemment des situations complexes au lieu de les réduire hâtivement à des chiffres, et ne pas me définir uniquement par ma fonction du moment, lorsque cette fonction disparut soudainement. Lors de ma dernière visite, je le lui racontai, avec précaution, pour ne pas raviver son ancien triomphe. Il se contenta d'acquiescer, sans sourire, et dit que l'éducation ne montre sa valeur qu'au moment où l'utilité pour laquelle on l'avait, à tort, prise disparaît. Depuis, je me demande si je pourrai un jour transmettre à mes propres enfants, qui s'orientent tous deux vers des études d'économie, cette phrase apparemment démodée, sans prendre le même ton professoral que je reprochais à mon père pendant des années, et je crains secrètement qu'ils ne la comprennent vraiment, comme moi jadis, qu'après leur propre crise.$t$,
    $t${"Mein":"Mon","Vater":"père","emeritierter":"émérite","Gymnasiallehrer":"professeur de lycée","für":"de","Altgriechisch":"grec ancien","zitierte":"citait","bei":"à","jeder":"chaque","passenden":"opportune","und":"et","unpassenden":"inopportune","Gelegenheit":"occasion","Wilhelm":"Wilhelm","von":"von (particule)","Humboldts":"de Humboldt","Überzeugung":"conviction","wahre":"vraie","Bildung":"éducation","ziele":"vise (subj. I)","auf":"vers","die":"la/les","höchste":"la plus haute","proportionierlichste":"la plus harmonieuse","Ausbildung":"formation","der":"des","Kräfte":"forces","zu":"en","einem":"un","Ganzen":"tout","niemals":"jamais","aber":"mais","bloße":"simple","Nützlichkeit":"utilité","Er":"Il","hatte":"avait","sein":"sa","Leben":"vie","diesem":"cet","Ideal":"idéal","gewidmet":"consacré","Generationen":"générations","Schülern":"élèves (dat. pl.)","in":"à","eine":"une","Sprache":"langue","eingeführt":"initiés","kaum":"presque aucun","jemand":"personne","ihnen":"d'eux","je":"jamais","wieder":"de nouveau","benötigen":"avoir besoin","würde":"n'aurait","betrachtete":"considérait","diese":"cette","scheinbare":"apparente","Nutzlosigkeit":"inutilité","gerade":"justement","als":"comme","Beweis":"preuve","den":"la (acc.)","eigentlichen":"réelle","Wert":"valeur","des":"de l'","Unterrichts":"enseignement","sich":"se","rechtfertigen":"justifier","müsse":"doive (subj. I)","sei":"soit (subj. I)","bereits":"déjà","zur":"en","verkommen":"dégénéré","Als":"Quand","ich":"je","seine":"sa","Tochter":"fille","nach":"après","dem":"le (dat.)","Studium":"études","Betriebswirtschaft":"gestion d'entreprise","meine":"mon","erste":"premier","Stelle":"poste","einer":"un (cabinet)","Unternehmensberatung":"cabinet de conseil","antrat":"pris","empfand":"trouvai","Haltung":"attitude","zunehmend":"de plus en plus","weltfremd":"déconnectée de la réalité","In":"Dans","meinem":"mon","Berufsalltag":"quotidien professionnel","zählte":"comptait","was":"ce qui","Kennzahlen":"indicateurs chiffrés","ausdrücken":"exprimer","ließ":"pouvait (sich ausdrücken ließ)","Projekt":"projet","Kunden":"client","letztlich":"en fin de compte","Unternehmenserfolg":"réussite de l'entreprise","unmittelbar":"directement","diente":"servait","Fragen":"questions","proportionierlichsten":"la plus harmonieuse (forme fléchie)","hätten":"n'auraient","keinem":"aucune","Meeting":"réunion","auch":"même","nur":"seulement","Sekunde":"seconde","Beachtung":"attention","gefunden":"trouvé","Ich":"Je","begann":"commençai","vorzuwerfen":"reprocher","er":"il","habe":"aurait (subj. I)","mich":"me","ein":"une (vie)","vorbereitet":"préparée","das":"qui","es":"cela","so":"ainsi, sous cette forme","seiner":"sa","reinen":"pure","humanistischen":"humaniste","Form":"forme","längst":"depuis longtemps","nicht":"ne...pas","mehr":"plus","gebe":"existe (subj. I)","dass":"que","geliebter":"cher, bien-aimé","Humboldt":"Humboldt","Realität":"réalité","eines":"d'un","globalisierten":"mondialisé","Arbeitsmarktes":"marché du travail (gén.)","schlicht":"tout simplement","nichts":"rien","sagen":"dire","Erst":"Ce n'est que","Jahren":"années","während":"pendant","Umstrukturierung":"restructuration","halb":"la moitié de","Abteilung":"service","kostete":"coûta","begriff":"compris","mein":"mon","eigentlich":"réellement","gemeint":"voulu dire","Nicht":"Ce n'est pas","Griechische":"le grec","selbst":"lui-même","gerüstet":"armée","sondern":"mais","Fähigkeit":"capacité","mir":"m'","beigebracht":"enseignée","komplexe":"complexes","Zusammenhänge":"corrélations","geduldig":"patiemment","durchdenken":"réfléchir en profondeur à","anstatt":"au lieu de","sie":"les","vorschnell":"hâtivement","pressen":"réduire de force","ausschließlich":"exclusivement","über":"par","augenblickliche":"actuelle, du moment","Funktion":"fonction","definieren":"définir","plötzlich":"soudainement","wegfiel":"disparut","Bei":"Lors de","letzten":"dernière","Besuch":"visite","erzählte":"racontai","ihm":"lui","davon":"cela","vorsichtig":"avec précaution","um":"pour","seinen":"son (acc.)","alten":"ancien","Triumph":"triomphe","befeuern":"attiser","nickte":"acquiesça","ohne":"sans","lächeln":"sourire","sagte":"dit","zeige":"montre (subj. I)","ihren":"sa","stets":"toujours","erst":"seulement","dann":"alors","wenn":"quand","man":"on","fälschlich":"à tort","gehalten":"pris (pour)","verschwunden":"disparue","Seither":"Depuis lors","überlege":"me demande","ob":"si","meinen":"mes (dat.)","eigenen":"propres","Kindern":"enfants (dat. pl.)","beide":"tous deux","wirtschaftswissenschaftliches":"en sciences économiques","zusteuern":"s'orientent vers","jenen":"cette","scheinbar":"apparemment","altmodischen":"démodée","Satz":"phrase","überhaupt":"seulement, ne serait-ce que","vermitteln":"transmettre","kann":"peux","dabei":"tout en (faisant cela)","denselben":"le même","belehrenden":"professoral","Tonfall":"ton","anzuschlagen":"adopter (un ton)","jahrelang":"pendant des années","übelgenommen":"reproché, tenu rigueur","fürchte":"crains","insgeheim":"secrètement","ihn":"la (phrase)","wie":"comme","einst":"jadis","Krise":"crise","wirklich":"vraiment","verstehen":"comprendre","werden":"vont"}$t$::jsonb,
    $t$Humboldtsches Bildungsideal und moderne Arbeitswelt$t$
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welchen Beruf hatte der Vater der Erzählerin?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er war Unternehmensberater$t$, false, 1),
    (v_q, $t$Er war Gymnasiallehrer für Altgriechisch$t$, true, 2),
    (v_q, $t$Er war Historiker$t$, false, 3),
    (v_q, $t$Er war Ingenieur$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welches Zitat Humboldts wiederholt der Vater häufig?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Bildung sei reine Nützlichkeit$t$, false, 1),
    (v_q, $t$Wahre Bildung ziele auf die höchste und proportionierlichste Ausbildung der Kräfte zu einem Ganzen$t$, true, 2),
    (v_q, $t$Bildung diene ausschließlich dem Erwerb eines Berufs$t$, false, 3),
    (v_q, $t$Bildung sei Zeitverschwendung$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie interpretiert der Vater die "scheinbare Nutzlosigkeit" des Altgriechischunterrichts?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Als Beweis dafür, dass sein Unterricht wertlos war$t$, false, 1),
    (v_q, $t$Als eigentlichen Beleg für den Wert von Bildung, die sich gerade nicht durch unmittelbaren Nutzen rechtfertigen muss$t$, true, 2),
    (v_q, $t$Als Grund, das Fach abzuschaffen$t$, false, 3),
    (v_q, $t$Als reinen Zufall ohne pädagogische Bedeutung$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was studiert die Erzählerin?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Altgriechisch$t$, false, 1),
    (v_q, $t$Betriebswirtschaft$t$, true, 2),
    (v_q, $t$Medizin$t$, false, 3),
    (v_q, $t$Jura$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie beurteilt die Erzählerin anfangs die Haltung ihres Vaters?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie findet sie zeitgemäß und praktisch$t$, false, 1),
    (v_q, $t$Sie empfindet sie zunehmend als weltfremd$t$, true, 2),
    (v_q, $t$Sie stimmt ihr vollständig zu$t$, false, 3),
    (v_q, $t$Sie ignoriert die Haltung ihres Vaters völlig$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Worin besteht der zentrale Wertkonflikt zwischen Vater und Tochter zu Beginn des Textes?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Zwischen zwei verschiedenen Sprachen, die beide lehren wollen$t$, false, 1),
    (v_q, $t$Zwischen einem humanistischen Bildungsideal ohne unmittelbaren Nutzen und einer auf Kennzahlen und Effizienz ausgerichteten Berufswelt$t$, true, 2),
    (v_q, $t$Zwischen zwei rein finanziellen Interessen$t$, false, 3),
    (v_q, $t$Zwischen unterschiedlichen politischen Ansichten$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was geschieht während der Umstrukturierung in der Firma der Erzählerin?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie wird befördert$t$, false, 1),
    (v_q, $t$Ihre Abteilung wird zur Hälfte abgebaut$t$, true, 2),
    (v_q, $t$Sie kündigt selbst$t$, false, 3),
    (v_q, $t$Sie wechselt die Branche$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was erkennt die Erzählerin rückblickend als eigentlichen Nutzen ihrer humanistischen Prägung?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Die Fähigkeit, Griechisch fließend zu sprechen$t$, false, 1),
    (v_q, $t$Die Fähigkeit, komplexe Zusammenhänge geduldig zu durchdenken und sich nicht nur über die eigene Funktion zu definieren$t$, true, 2),
    (v_q, $t$Ein besseres Gehalt$t$, false, 3),
    (v_q, $t$Bessere Kontakte in der Unternehmensberatung$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie ist die Schlussaussage des Vaters zu deuten, Bildung zeige ihren Wert erst, "wenn die Nützlichkeit ... bereits verschwunden sei"?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Dass Bildung grundsätzlich nutzlos bleibt$t$, false, 1),
    (v_q, $t$Dass der wahre Wert von Bildung sich gerade in Krisenmomenten zeigt, in denen unmittelbarer beruflicher Nutzen wegfällt und andere, tiefere Kompetenzen zum Tragen kommen$t$, true, 2),
    (v_q, $t$Dass der Vater seine Tochter für ihre Berufswahl kritisieren will$t$, false, 3),
    (v_q, $t$Dass Nützlichkeit und Bildung stets identisch sind$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet "weltfremd" im Text?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$sehr modern$t$, false, 1),
    (v_q, $t$realitätsfern, ohne Bezug zur praktischen Welt$t$, true, 2),
    (v_q, $t$international$t$, false, 3),
    (v_q, $t$reiselustig$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Bedeutung hat "Kennzahlen" im beruflichen Kontext des Textes?$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Telefonnummern von Kunden$t$, false, 1),
    (v_q, $t$Messbare, quantitative Größen zur Bewertung von Leistung oder Erfolg$t$, true, 2),
    (v_q, $t$Geheime Codes$t$, false, 3),
    (v_q, $t$Historische Jahreszahlen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Nuance trägt der Ausdruck "verkommen" in "Bildung, die sich rechtfertigen müsse, sei bereits zur Ausbildung verkommen"?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Eine neutrale, wertfreie Entwicklung$t$, false, 1),
    (v_q, $t$Einen abwertenden Bedeutungswandel, der einen Verfall von einem höheren zu einem bloß zweckgebundenen Zustand markiert$t$, true, 2),
    (v_q, $t$Eine positive Weiterentwicklung$t$, false, 3),
    (v_q, $t$Einen rein zeitlichen Ablauf ohne Wertung$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$In welcher Zeitform steht "hatte gewidmet"?$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Präsens$t$, false, 1),
    (v_q, $t$Plusquamperfekt$t$, true, 2),
    (v_q, $t$Futur I$t$, false, 3),
    (v_q, $t$Konjunktiv II$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Form liegt in "sei bereits zur Ausbildung verkommen" vor?$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Konjunktiv I (indirekte Wiedergabe der väterlichen Überzeugung)$t$, true, 1),
    (v_q, $t$Konjunktiv II der Höflichkeit$t$, false, 2),
    (v_q, $t$Indikativ Präsens$t$, false, 3),
    (v_q, $t$Imperativ$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie ist der Satz "Bildung zeige ihren Wert stets erst dann, wenn die Nützlichkeit ... bereits verschwunden sei" hinsichtlich Modus und Zeitverhältnis zu analysieren?$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Hauptsatz im Konjunktiv I (indirekte Rede) mit vorzeitigem Nebensatz im Konjunktiv-I-Perfekt, zur distanzierten Wiedergabe einer fremden Aussage$t$, true, 1),
    (v_q, $t$Hauptsatz im Indikativ mit nachzeitigem Nebensatz im Futur$t$, false, 2),
    (v_q, $t$Beide Sätze stehen im Imperativ$t$, false, 3),
    (v_q, $t$Hauptsatz im Konjunktiv II, Nebensatz im Indikativ Präteritum$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Er hatte sein Leben diesem Ideal ___.$t$, 1, 'facile', 'lueckentext') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$gewidmet$t$, true, 1),
    (v_q, $t$widmen$t$, false, 2),
    (v_q, $t$widmete$t$, false, 3),
    (v_q, $t$widme$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Ich begann, meinem Vater vorzuwerfen, er ___ mich auf ein Leben vorbereitet, das es so nicht mehr gebe.$t$, 1, 'normal', 'lueckentext') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$habe$t$, true, 1),
    (v_q, $t$hat$t$, false, 2),
    (v_q, $t$hätte$t$, false, 3),
    (v_q, $t$hatte$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Nicht das Griechische selbst hatte mich gerüstet, sondern die Fähigkeit, die es mir ___ hatte.$t$, 1, 'difficile', 'lueckentext') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$beigebracht$t$, true, 1),
    (v_q, $t$beibringen$t$, false, 2),
    (v_q, $t$beibrachte$t$, false, 3),
    (v_q, $t$beibringend$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welcher Modus wird verwendet, um die Vorwürfe der Erzählerin an ihren Vater indirekt wiederzugeben?$t$, 1, 'facile', 'grammar') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Konjunktiv I$t$, true, 1),
    (v_q, $t$Imperativ$t$, false, 2),
    (v_q, $t$Futur II$t$, false, 3),
    (v_q, $t$Passiv Präteritum$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche stilistische Funktion hat der Kontrast zwischen den Zitaten Humboldts im Konjunktiv I und der direkten Erzählstimme im Präteritum?$t$, 1, 'normal', 'grammar') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er markiert den Unterschied zwischen fremder, überlieferter Lehre und der eigenen, unmittelbar erlebten Erfahrung der Erzählerin$t$, true, 1),
    (v_q, $t$Er zeigt lediglich eine stilistische Inkonsequenz der Autorin$t$, false, 2),
    (v_q, $t$Er hat keine erkennbare Funktion$t$, false, 3),
    (v_q, $t$Er kennzeichnet wörtliche Zitate ausschließlich in anderen Sprachen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche der folgenden Formulierungen gibt den Gedanken "Er sagte, Bildung zeige ihren Wert erst, wenn die Nützlichkeit verschwunden sei" bei einem Wechsel zum Konjunktiv II (weil Konjunktiv I mit Indikativ identisch wäre) korrekt wieder?$t$, 1, 'difficile', 'grammar') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er sagte, Bildung würde ihren Wert erst zeigen, wenn die Nützlichkeit bereits verschwunden wäre.$t$, true, 1),
    (v_q, $t$Er sagte, Bildung zeigt ihren Wert erst, wenn die Nützlichkeit verschwindet.$t$, false, 2),
    (v_q, $t$Er sagte, Bildung hat ihren Wert erst gezeigt, als die Nützlichkeit verschwunden ist.$t$, false, 3),
    (v_q, $t$Er sagte, Bildung zeige ihren Wert erst, wenn die Nützlichkeit verschwindet.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, justification)
    VALUES (v_story, $t$Die Erzählerin studiert Altgriechisch wie ihr Vater.$t$, 1, 'facile', 'true_false', $t$Sie studiert Betriebswirtschaft und beginnt eine Stelle in einer Unternehmensberatung.$t$) RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Wahr$t$, false, 1),
    (v_q, $t$Falsch$t$, true, 2);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, justification)
    VALUES (v_story, $t$Die Erzählerin teilt von Anfang an vollständig die Überzeugungen ihres Vaters zur Bildung.$t$, 1, 'normal', 'true_false', $t$Sie empfindet seine Haltung zunächst als "weltfremd" und wirft ihm vor, sie auf ein überholtes Leben vorbereitet zu haben.$t$) RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Wahr$t$, false, 1),
    (v_q, $t$Falsch$t$, true, 2);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, justification)
    VALUES (v_story, $t$Der Text legt nahe, dass die Erzählerin die Überzeugungen ihres Vaters erst durch eine berufliche Krisenerfahrung neu bewertet.$t$, 1, 'difficile', 'true_false', $t$Erst "während einer Umstrukturierung, die halb meine Abteilung kostete", begreift sie, was ihr Vater eigentlich gemeint hatte.$t$) RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Wahr$t$, true, 1),
    (v_q, $t$Falsch$t$, false, 2);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer, rubric)
    VALUES (v_story, $t$Diskutieren Sie (ca. 150 Wörter), inwiefern ein humanistisches Bildungsideal wie das Humboldtsche auch in einer stark ökonomisch geprägten Arbeitswelt noch Relevanz besitzen kann.$t$, 1, 'normal', 'production', $t$Das Humboldtsche Bildungsideal, das die allseitige Ausbildung der individuellen Kräfte über den unmittelbaren Nutzen stellt, mag in einer von Kennzahlen dominierten Arbeitswelt zunächst anachronistisch wirken. Dennoch zeigt sich gerade in Umbruchsituationen, dass eng auf Anwendbarkeit zugeschnittene Qualifikationen schnell veralten oder wegfallen können, während Fähigkeiten wie kritisches Denken, Geduld im Umgang mit Komplexität und die Fähigkeit zur Selbstreflexion dauerhaft tragfähig bleiben. Wer sich ausschließlich über eine bestimmte berufliche Funktion definiert, gerät bei deren Wegfall in eine existenzielle Krise, während eine breitere humanistische Prägung Orientierung jenseits des jeweiligen Arbeitsplatzes bietet. Eine kluge Bildungspolitik sollte daher beide Pole miteinander verbinden, statt sie gegeneinander auszuspielen, indem sie fachliche Qualifikation mit jener freien, zweckungebundenen Bildung verknüpft, deren Wert sich, wie die Erzählung zeigt, oft erst rückblickend offenbart.$t$, $t$[{"criterion":"Aufgabenerfüllung","description":"Diskutiert differenziert die Relevanz humanistischer Bildung in der modernen Arbeitswelt unter Bezug auf den Text."},{"criterion":"Wortschatz","description":"Verwendet präzisen, abstrakten Wortschatz zu Bildung, Ökonomie und Kompetenz sicher."},{"criterion":"Grammatik","description":"Nutzt komplexe Satzgefüge, Konjunktiv und Nominalisierungen korrekt und variantenreich."},{"criterion":"Kohärenz","description":"Entwickelt eine klar nachvollziehbare, ausgewogene Argumentation mit Schlussfolgerung."}]$t$::jsonb);

END $block$;

-- 6. Der Nachhall von Bern
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary, culture_note) VALUES (
    'C2',
    $t$Der Nachhall von Bern$t$,
    $t$Mein Großvater sprach von jenem 4. Juli 1954, dem Tag, an dem die deutsche Nationalmannschaft im Berner Wankdorfstadion überraschend Weltmeister wurde, stets im selben ehrfürchtigen Tonfall, mit dem andere von einer religiösen Erweckung berichten. Für ihn, der neun Jahre zuvor aus russischer Kriegsgefangenschaft heimgekehrt war, bedeutete dieser Sieg weit mehr als ein Fußballspiel: Er war, wie er sagte, der Moment, in dem Deutschland „wieder wer sein durfte", der symbolische Neubeginn einer Nation, die sich aus den Trümmern eines selbstverschuldeten Untergangs erhob und der Welt zeigen konnte, dass Fleiß und Zusammenhalt stärker seien als jede Niederlage.

Ich habe diese Erzählung jahrzehntelang unhinterfragt übernommen, bis ich, als Historikerin, während der Recherche zu einer Ausstellung über die frühe Bundesrepublik auf Zeitungsartikel aus jenem Sommer stieß, die ein weitaus zwiespältigeres Bild zeichneten. Viele Kommentatoren der fünfziger Jahre feierten den Titelgewinn zwar euphorisch, warnten aber zugleich vor einem übereilten, unreflektierten Nationalstolz, der die eigentliche Aufarbeitung der jüngsten Vergangenheit bequem überspringen könnte, indem er ein sportliches Ereignis zur moralischen Reinwaschung umdeutete. Das „Wunder von Bern", so eine dieser Stimmen, drohe zu einer Ersatzerzählung zu werden, die den Deutschen erlaube, sich als Opfer des Schicksals und nicht als Täter der Geschichte zu erinnern.

Als ich meinem Großvater, kurz vor seinem Tod, von diesen Fundstücken erzählte, reagierte er zunächst gekränkt, gestand mir aber nach längerem Schweigen ein, dass er selbst, in den Wochen nach jenem Spiel, kaum über die eigene Vergangenheit im Krieg gesprochen habe, weil der kollektive Freudentaumel eine willkommene Gelegenheit geboten habe, unbequeme Fragen zu vermeiden. Der Mythos, den er sein Leben lang gehegt hatte, verlor dadurch nicht seine emotionale Kraft, wohl aber seine Unschuld, und ich begriff, dass Erinnerungskultur selten aus einer einzigen, reinen Wahrheit besteht, sondern fast immer aus dem, was eine Generation zugleich feiern und verschweigen wollte. In der Ausstellung, die ich schließlich kuratierte, hängte ich das berühmte Foto vom Torschuss neben jene vergessenen Zeitungskommentare, ohne eine eindeutige Deutung vorzugeben, weil ich glaube, dass mein Großvater, hätte er die Eröffnung noch erlebt, genau diese Spannung zwischen Stolz und Verdrängung als die ehrlichste Würdigung seiner Erinnerung anerkannt hätte.$t$,
    $t$Mon grand-père parlait de ce 4 juillet 1954, jour où l'équipe nationale allemande devint, contre toute attente, championne du monde de football au stade du Wankdorf à Berne, toujours sur ce même ton de vénération avec lequel d'autres racontent une révélation religieuse. Pour lui, rentré neuf ans plus tôt de captivité en Union soviétique, cette victoire signifiait bien davantage qu'un simple match de football : elle fut, disait-il, le moment où l'Allemagne « avait de nouveau le droit d'être quelqu'un », le renouveau symbolique d'une nation qui se relevait des ruines d'un effondrement dont elle était elle-même responsable et pouvait montrer au monde que le travail et la solidarité étaient plus forts que n'importe quelle défaite.

J'ai repris ce récit pendant des décennies sans le remettre en question, jusqu'à ce que, en tant qu'historienne, en faisant des recherches pour une exposition sur les débuts de la République fédérale, je tombe sur des articles de presse de cet été-là qui dressaient un tableau bien plus ambivalent. De nombreux commentateurs des années cinquante célébraient certes le titre avec euphorie, mais mettaient en garde en même temps contre une fierté nationale précipitée et irréfléchie, qui pourrait permettre d'esquiver confortablement le nécessaire travail de mémoire sur le passé récent, en réinterprétant un événement sportif en une sorte de purification morale. Le « miracle de Berne », selon l'une de ces voix, risquait de devenir un récit de substitution permettant aux Allemands de se souvenir d'eux-mêmes comme des victimes du destin plutôt que comme des acteurs de l'histoire.

Lorsque je racontai ces découvertes à mon grand-père, peu avant sa mort, il réagit d'abord avec dépit, mais finit par m'avouer, après un long silence, que lui-même, dans les semaines suivant ce match, avait à peine parlé de son propre passé pendant la guerre, parce que l'ivresse collective de la joie offrait une occasion bienvenue d'éviter les questions gênantes. Le mythe qu'il avait entretenu toute sa vie n'en perdit pas pour autant sa force émotionnelle, mais il perdit son innocence, et je compris que la culture de la mémoire ne repose presque jamais sur une vérité unique et pure, mais presque toujours sur ce qu'une génération a voulu à la fois célébrer et taire. Dans l'exposition que je finis par organiser, j'accrochai la célèbre photo du tir au but à côté de ces commentaires de presse oubliés, sans imposer d'interprétation univoque, car je crois que mon grand-père, s'il avait pu assister au vernissage, aurait reconnu dans cette tension même entre fierté et refoulement l'hommage le plus honnête que l'on pût rendre à sa mémoire.$t$,
    $t${"Mein":"Mon","Großvater":"grand-père","sprach":"parlait","von":"de","jenem":"ce","Juli":"juillet","dem":"le (jour)","Tag":"jour","an":"où (an dem)","die":"l'","deutsche":"allemande","Nationalmannschaft":"équipe nationale","im":"dans le","Berner":"de Berne","Wankdorfstadion":"stade du Wankdorf","überraschend":"de manière inattendue","Weltmeister":"championne du monde","wurde":"devint","stets":"toujours","selben":"même","ehrfürchtigen":"empreint de vénération","Tonfall":"ton","mit":"avec","andere":"d'autres","einer":"d'une","religiösen":"religieuse","Erweckung":"révélation, réveil","berichten":"racontent","Für":"Pour","ihn":"lui","der":"qui","neun":"neuf","Jahre":"ans","zuvor":"auparavant","aus":"de","russischer":"soviétique (russe)","Kriegsgefangenschaft":"captivité de guerre","heimgekehrt":"rentré","war":"était","bedeutete":"signifiait","dieser":"cette","Sieg":"victoire","weit":"bien","mehr":"plus","als":"que","ein":"un","Fußballspiel":"match de football","Er":"Elle (la victoire)","wie":"comme","er":"il","sagte":"disait","Moment":"moment","in":"en","Deutschland":"Allemagne","wieder":"de nouveau","wer":"quelqu'un","sein":"être","durfte":"avait le droit de","symbolische":"symbolique","Neubeginn":"nouveau départ","Nation":"nation","sich":"se","den":"les (dat. pl.)","Trümmern":"ruines","eines":"d'un","selbstverschuldeten":"dont on est soi-même responsable","Untergangs":"effondrement (gén.)","erhob":"relevait","und":"et","Welt":"monde","zeigen":"montrer","konnte":"pouvait","dass":"que","Fleiß":"travail assidu","Zusammenhalt":"cohésion","stärker":"plus forts","seien":"étaient (subj. I)","jede":"n'importe quelle","Niederlage":"défaite","Ich":"J'","habe":"ai","diese":"ce","Erzählung":"récit","jahrzehntelang":"pendant des décennies","unhinterfragt":"sans le remettre en question","übernommen":"repris","bis":"jusqu'à ce que","ich":"je","Historikerin":"historienne","während":"en faisant (pendant)","Recherche":"recherche","zu":"pour","Ausstellung":"exposition","über":"sur","frühe":"les débuts de","Bundesrepublik":"République fédérale","auf":"sur","Zeitungsartikel":"articles de presse","Sommer":"été","stieß":"tombai (sur)","weitaus":"bien plus","zwiespältigeres":"ambivalent (comparatif)","Bild":"tableau","zeichneten":"dressaient","Viele":"De nombreux","Kommentatoren":"commentateurs","fünfziger":"des années cinquante","feierten":"célébraient","Titelgewinn":"gain du titre","zwar":"certes","euphorisch":"avec euphorie","warnten":"mettaient en garde","aber":"mais","zugleich":"en même temps","vor":"contre","einem":"une","übereilten":"précipitée","unreflektierten":"irréfléchie","Nationalstolz":"fierté nationale","eigentliche":"véritable, nécessaire","Aufarbeitung":"travail de mémoire","jüngsten":"récent","Vergangenheit":"passé","bequem":"commodément","überspringen":"esquiver","könnte":"pourrait","indem":"en","sportliches":"sportif","Ereignis":"événement","zur":"en","moralischen":"morale","Reinwaschung":"purification","umdeutete":"réinterprétait","Das":"Le","Wunder":"miracle","Bern":"Berne","so":"selon","eine":"une (de ces voix)","Stimmen":"voix","drohe":"risquait (subj. I)","Ersatzerzählung":"récit de substitution","werden":"devenir","Deutschen":"aux Allemands","erlaube":"permette (subj. I)","Opfer":"victimes","des":"du","Schicksals":"destin (gén.)","nicht":"et non","Täter":"acteurs","Geschichte":"histoire","erinnern":"se souvenir","Als":"Quand","meinem":"mon","kurz":"peu","seinem":"sa (mort)","Tod":"mort","diesen":"ces","Fundstücken":"découvertes","erzählte":"racontai","reagierte":"réagit","zunächst":"d'abord","gekränkt":"avec dépit","gestand":"avoua","mir":"me","nach":"après","längerem":"un long","Schweigen":"silence","selbst":"lui-même","Wochen":"semaines","Spiel":"match","kaum":"à peine","eigene":"propre","Krieg":"guerre","gesprochen":"parlé","weil":"parce que","kollektive":"collective","Freudentaumel":"ivresse de joie","willkommene":"bienvenue","Gelegenheit":"occasion","geboten":"offerte","unbequeme":"gênantes","Fragen":"questions","vermeiden":"éviter","Der":"Le","Mythos":"mythe","Leben":"vie","lang":"durant","gehegt":"entretenu","hatte":"avait","verlor":"perdit","dadurch":"de ce fait","seine":"sa","emotionale":"émotionnelle","Kraft":"force","wohl":"bien","Unschuld":"innocence","begriff":"compris","Erinnerungskultur":"culture de la mémoire","selten":"rarement","einzigen":"unique","reinen":"pure","Wahrheit":"vérité","besteht":"consiste","sondern":"mais","fast":"presque","immer":"toujours","was":"ce qu'","Generation":"génération","feiern":"célébrer","verschweigen":"taire","wollte":"voulait","In":"Dans","schließlich":"finalement","kuratierte":"organisai","hängte":"accrochai","das":"la","berühmte":"célèbre","Foto":"photo","vom":"du","Torschuss":"tir au but","neben":"à côté de","jene":"ces","vergessenen":"oubliés","Zeitungskommentare":"commentaires de presse","ohne":"sans","eindeutige":"univoque","Deutung":"interprétation","vorzugeben":"imposer","glaube":"crois","mein":"mon","hätte":"aurait","Eröffnung":"vernissage","noch":"encore","erlebt":"vécu, assisté à","genau":"précisément","Spannung":"tension","zwischen":"entre","Stolz":"fierté","Verdrängung":"refoulement","ehrlichste":"la plus honnête","Würdigung":"hommage","seiner":"de sa","Erinnerung":"mémoire","anerkannt":"reconnu"}$t$::jsonb,
    $t$Das Wunder von Bern 1954 als kritisch befragter Gründungsmythos$t$
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was geschah am 4. Juli 1954 im Berner Wankdorfstadion?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Ein Konzert fand statt$t$, false, 1),
    (v_q, $t$Deutschland wurde überraschend Fußballweltmeister$t$, true, 2),
    (v_q, $t$Ein Friedensvertrag wurde unterzeichnet$t$, false, 3),
    (v_q, $t$Ein Museum wurde eröffnet$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutete dieser Sieg für den Großvater der Erzählerin?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er interessierte ihn kaum$t$, false, 1),
    (v_q, $t$Er war der symbolische Moment, in dem Deutschland ,wieder wer sein durfte'$t$, true, 2),
    (v_q, $t$Er erinnerte ihn an eine Niederlage$t$, false, 3),
    (v_q, $t$Er hatte für ihn nur sportliche Bedeutung$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Funktion hat der Vergleich mit einer "religiösen Erweckung" für die Charakterisierung der Erinnerung des Großvaters?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er zeigt, dass der Großvater tatsächlich konvertierte$t$, false, 1),
    (v_q, $t$Er verdeutlicht das quasi-transzendente, identitätsstiftende Ausmaß, das der Sieg für seine persönliche und nationale Selbstwahrnehmung annahm$t$, true, 2),
    (v_q, $t$Er ist rein ironisch gemeint und ohne inhaltliche Bedeutung$t$, false, 3),
    (v_q, $t$Er bezieht sich auf eine tatsächliche Kirchenzeremonie im Stadion$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welchen Beruf übt die Erzählerin aus?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie ist Fußballtrainerin$t$, false, 1),
    (v_q, $t$Sie ist Historikerin$t$, true, 2),
    (v_q, $t$Sie ist Journalistin$t$, false, 3),
    (v_q, $t$Sie ist Ärztin$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was findet die Erzählerin bei ihrer Recherche zu einer Ausstellung?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Beweise, dass das Spiel manipuliert war$t$, false, 1),
    (v_q, $t$Zeitungsartikel aus 1954, die vor unreflektiertem Nationalstolz warnten$t$, true, 2),
    (v_q, $t$Ein unbekanntes Foto des Großvaters$t$, false, 3),
    (v_q, $t$Eine Liste der Spieler$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche kritische These zum "Wunder von Bern" formulieren die von der Erzählerin gefundenen zeitgenössischen Stimmen?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Dass der Sieg politisch inszeniert wurde$t$, false, 1),
    (v_q, $t$Dass das Ereignis zu einer Ersatzerzählung werden könnte, die die notwendige Auseinandersetzung mit der jüngeren Vergangenheit umgeht, indem sie die Deutschen als Opfer statt als Täter erscheinen lässt$t$, true, 2),
    (v_q, $t$Dass die deutsche Mannschaft eigentlich verloren hatte$t$, false, 3),
    (v_q, $t$Dass der Sieg international nicht anerkannt wurde$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie reagiert der Großvater zunächst, als die Erzählerin ihm von ihren Funden erzählt?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Mit Begeisterung$t$, false, 1),
    (v_q, $t$Gekränkt$t$, true, 2),
    (v_q, $t$Mit völliger Gleichgültigkeit$t$, false, 3),
    (v_q, $t$Er widerspricht sofort mit Fakten$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was gesteht der Großvater nach längerem Schweigen ein?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Dass er nie beim Spiel dabei war$t$, false, 1),
    (v_q, $t$Dass er selbst kaum über seine Kriegsvergangenheit sprach, weil der Freudentaumel unbequeme Fragen vermeiden half$t$, true, 2),
    (v_q, $t$Dass er die Nationalmannschaft nie gemocht hatte$t$, false, 3),
    (v_q, $t$Dass er die Zeitungsartikel selbst verfasst hatte$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie deutet die Erzählerin am Ende die Beziehung zwischen dem Mythos ihres Großvaters und der historischen Wahrheit?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie verwirft den Mythos vollständig als reine Lüge$t$, false, 1),
    (v_q, $t$Sie erkennt, dass Erinnerungskultur meist aus dem besteht, was eine Generation zugleich feiern und verschweigen wollte, ohne dass der Mythos dadurch seine emotionale Kraft verliert$t$, true, 2),
    (v_q, $t$Sie erklärt, dass ihr Großvater absichtlich gelogen hatte$t$, false, 3),
    (v_q, $t$Sie behauptet, es habe nie einen Zusammenhang zwischen Sieg und Kriegsvergangenheit gegeben$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet "ehrfürchtig" im Text?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$respektlos$t$, false, 1),
    (v_q, $t$voller Respekt und Achtung$t$, true, 2),
    (v_q, $t$gleichgültig$t$, false, 3),
    (v_q, $t$wütend$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Bedeutung hat "Reinwaschung" im Kontext des Textes?$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Eine tatsächliche Wäsche von Kleidung$t$, false, 1),
    (v_q, $t$Eine symbolische, oft unrechtmäßige Befreiung von moralischer Schuld oder Verantwortung$t$, true, 2),
    (v_q, $t$Eine sportliche Disziplin$t$, false, 3),
    (v_q, $t$Eine juristische Verurteilung$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Nuance trägt der Begriff "Ersatzerzählung" im historischen Kontext des Textes?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Eine zusätzliche, ergänzende, aber gleichwertige Version der Geschichte$t$, false, 1),
    (v_q, $t$Eine Erzählung, die eine unbequemere, eigentlich notwendige Auseinandersetzung verdrängt und an ihre Stelle tritt$t$, true, 2),
    (v_q, $t$Eine rein fiktive Geschichte ohne jeden Wahrheitsgehalt$t$, false, 3),
    (v_q, $t$Eine offizielle, staatlich autorisierte Version der Geschichte$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$In welcher Zeitform steht "war heimgekehrt"?$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Präsens$t$, false, 1),
    (v_q, $t$Plusquamperfekt$t$, true, 2),
    (v_q, $t$Futur I$t$, false, 3),
    (v_q, $t$Konjunktiv II$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Form liegt in "das ,Wunder von Bern', so eine dieser Stimmen, drohe zu einer Ersatzerzählung zu werden" vor?$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Konjunktiv I (indirekte Wiedergabe einer zeitgenössischen Stimme)$t$, true, 1),
    (v_q, $t$Konjunktiv II der Irrealität$t$, false, 2),
    (v_q, $t$Indikativ Futur$t$, false, 3),
    (v_q, $t$Imperativ$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie ist die Konstruktion "indem er ein sportliches Ereignis zur moralischen Reinwaschung umdeutete" grammatisch zu analysieren?$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Ein Finalsatz mit ,damit'$t$, false, 1),
    (v_q, $t$Ein modaler Nebensatz mit ,indem', der die Art und Weise beschreibt, wie der unreflektierte Nationalstolz wirkt$t$, true, 2),
    (v_q, $t$Ein Konzessivsatz mit ,obwohl'$t$, false, 3),
    (v_q, $t$Ein Kausalsatz mit ,weil', der einen Grund nennt$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Ich habe diese Erzählung jahrzehntelang unhinterfragt ___.$t$, 1, 'facile', 'lueckentext') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$übernommen$t$, true, 1),
    (v_q, $t$übernehmen$t$, false, 2),
    (v_q, $t$übernahm$t$, false, 3),
    (v_q, $t$übernehme$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Viele Kommentatoren feierten den Titelgewinn, ___ zugleich vor Nationalstolz warnten.$t$, 1, 'normal', 'lueckentext') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$warnten$t$, false, 1),
    (v_q, $t$warnend$t$, false, 2),
    (v_q, $t$die$t$, false, 3),
    (v_q, $t$wobei die$t$, true, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Der Mythos, den er sein Leben lang gehegt hatte, verlor dadurch nicht seine emotionale Kraft, wohl aber seine ___.$t$, 1, 'difficile', 'lueckentext') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Unschuld$t$, true, 1),
    (v_q, $t$Unschulden$t$, false, 2),
    (v_q, $t$unschuldig$t$, false, 3),
    (v_q, $t$Unschuldigkeit$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Konjunktion leitet einen Nebensatz ein, der eine Art und Weise beschreibt (wie im Titel-Beispiel ,indem')?$t$, 1, 'facile', 'grammar') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$indem$t$, true, 1),
    (v_q, $t$obwohl$t$, false, 2),
    (v_q, $t$weil$t$, false, 3),
    (v_q, $t$damit$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche stilistische Wirkung hat es, dass die kritischen Stimmen der 1950er Jahre im Konjunktiv I wiedergegeben werden, während die eigene Reflexion der Erzählerin im Indikativ steht?$t$, 1, 'normal', 'grammar') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Es entsteht eine klare Markierung zwischen fremder, historisch belegter Position und der eigenen, gegenwärtigen Analyse der Erzählerin$t$, true, 1),
    (v_q, $t$Es zeigt, dass die Erzählerin den historischen Stimmen nicht traut$t$, false, 2),
    (v_q, $t$Es hat keine erkennbare grammatische oder stilistische Funktion$t$, false, 3),
    (v_q, $t$Es kennzeichnet ausschließlich wörtliche Zitate in Anführungszeichen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche der folgenden Formulierungen gibt "Er gestand ein, dass er kaum gesprochen habe" bei durchgängiger Verwendung des Konjunktivs I korrekt wieder?$t$, 1, 'difficile', 'grammar') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er gestand ein, kaum gesprochen zu haben.$t$, true, 1),
    (v_q, $t$Er gestand ein, dass er kaum sprach.$t$, false, 2),
    (v_q, $t$Er gestand ein, dass er kaum spreche.$t$, false, 3),
    (v_q, $t$Er gestand ein, kaum zu sprechen.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, justification)
    VALUES (v_story, $t$Der Großvater der Erzählerin kämpfte 1954 noch im Krieg.$t$, 1, 'facile', 'true_false', $t$Er war "neun Jahre zuvor aus russischer Kriegsgefangenschaft heimgekehrt", der Krieg war also 1954 bereits vorbei.$t$) RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Wahr$t$, false, 1),
    (v_q, $t$Falsch$t$, true, 2);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, justification)
    VALUES (v_story, $t$Alle zeitgenössischen Kommentatoren der 1950er Jahre feierten den Titelgewinn völlig unkritisch.$t$, 1, 'normal', 'true_false', $t$Der Text sagt, viele hätten zwar euphorisch gefeiert, aber zugleich vor unreflektiertem Nationalstolz gewarnt.$t$) RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Wahr$t$, false, 1),
    (v_q, $t$Falsch$t$, true, 2);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, justification)
    VALUES (v_story, $t$Der Text legt nahe, dass der kollektive Jubel von 1954 auch dazu diente, eine unbequeme Auseinandersetzung mit der eigenen Vergangenheit zu vermeiden.$t$, 1, 'difficile', 'true_false', $t$Der Großvater gesteht, der "kollektive Freudentaumel" habe "eine willkommene Gelegenheit geboten, unbequeme Fragen zu vermeiden".$t$) RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Wahr$t$, true, 1),
    (v_q, $t$Falsch$t$, false, 2);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer, rubric)
    VALUES (v_story, $t$Setzen Sie sich (ca. 150 Wörter) mit der Funktion sportlicher Großereignisse als nationale Gründungsmythen auseinander, wie es das ,Wunder von Bern' im Text exemplifiziert.$t$, 1, 'normal', 'production', $t$Sportliche Großereignisse eignen sich in besonderem Maße dazu, zu nationalen Gründungsmythen stilisiert zu werden, weil sie starke kollektive Emotionen erzeugen, ohne unmittelbar an komplexe historische oder moralische Fragen gebunden zu sein. Gerade diese scheinbare Unschuld macht sie anfällig für eine Vereinnahmung, die unbequeme Themen verdrängt: Ein Sieg auf dem Rasen lässt sich leichter feiern als eine ehrliche Auseinandersetzung mit Schuld und Verantwortung. Wie die Erzählung zeigt, kann ein solcher Mythos zugleich echten Trost spenden und eine Ausweichbewegung vor notwendiger Selbstbefragung darstellen, ohne dass sich beide Funktionen widersprechen müssten. Eine reife Erinnerungskultur sollte solche Ereignisse daher nicht entweder verklären oder entlarven, sondern beide Dimensionen nebeneinander bestehen lassen, wie es die Ausstellung der Erzählerin am Ende exemplarisch vorführt, indem sie Stolz und Verdrängung gleichermaßen sichtbar macht.$t$, $t$[{"criterion":"Aufgabenerfüllung","description":"Setzt sich differenziert mit der Mythosfunktion sportlicher Ereignisse auseinander und bezieht sich auf den Text."},{"criterion":"Wortschatz","description":"Verwendet abstrakten, geschichtswissenschaftlich geprägten Wortschatz präzise (Gründungsmythos, Vereinnahmung, Erinnerungskultur)."},{"criterion":"Grammatik","description":"Zeigt sichere Beherrschung komplexer Satzgefüge, Konjunktiv und Nominalstil."},{"criterion":"Kohärenz","description":"Entwickelt eine stringente Argumentation mit klarer, begründeter Schlussthese."}]$t$::jsonb);

END $block$;

