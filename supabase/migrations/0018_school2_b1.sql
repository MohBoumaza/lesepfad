-- Contenu "système scolaire allemand + patrimoine, vague 2" — niveau B1 (6 histoires).
-- Ajoute aussi 3 nouveaux types d'exercices : lueckentext (texte à trous),
-- grammar (grammaire ciblée) et true_false (vrai/faux justifié), ainsi
-- qu'une grille de correction (rubric) pour les questions de production.

-- 1. Drei Wege nach der vierten Klasse
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary, culture_note) VALUES (
    'B1',
    $t$Drei Wege nach der vierten Klasse$t$,
    $t$Lena ging in die vierte Klasse einer Grundschule in Stuttgart, und bald musste sie eine wichtige Entscheidung treffen. In Deutschland wechseln die Schüler nach der Grundschule auf eine weiterführende Schule, und es gibt normalerweise drei Wege: die Hauptschule, die Realschule und das Gymnasium. Lenas Lehrerin erklärte, dass das Gymnasium acht oder neun Jahre dauert und danach das Abitur bringt, mit dem man studieren kann. Die Realschule dauert sechs Jahre und endet mit einem mittleren Abschluss, während die Hauptschule oft direkt zu einer Ausbildung führt. Lenas Eltern waren unterschiedlicher Meinung. Ihr Vater fand, dass sie unbedingt aufs Gymnasium gehen sollte, weil er selbst nie studiert hatte. Ihre Mutter meinte dagegen, dass man auch über die Realschule und später eine Fachoberschule studieren könne. Lena selbst hatte Angst, dass sie auf dem Gymnasium überfordert wäre, obwohl ihre Noten eigentlich gut waren. Schließlich sprach sie lange mit ihrer Lehrerin, die ihr riet, ihren eigenen Interessen zu folgen statt dem Druck der Eltern. Am Ende entschied sich Lena für die Realschule, weil sie dort praktischer lernen und trotzdem später weitermachen konnte. Ihre Eltern akzeptierten ihre Wahl, auch wenn ihr Vater anfangs enttäuscht war.$t$,
    $t$Léna était en quatrième année d'une école primaire à Stuttgart, et elle devait bientôt prendre une décision importante. En Allemagne, les élèves changent d'école après le primaire pour aller dans un établissement secondaire, et il existe normalement trois voies : la Hauptschule, la Realschule et le Gymnasium. La maîtresse de Léna expliqua que le Gymnasium dure huit ou neuf ans et débouche ensuite sur l'Abitur, avec lequel on peut faire des études supérieures. La Realschule dure six ans et se termine par un diplôme intermédiaire, tandis que la Hauptschule mène souvent directement à un apprentissage. Les parents de Léna étaient d'avis différents. Son père trouvait qu'elle devait absolument aller au Gymnasium, parce que lui-même n'avait jamais étudié. Sa mère pensait au contraire qu'on pouvait aussi étudier en passant par la Realschule puis une école supérieure spécialisée. Léna elle-même avait peur d'être dépassée au Gymnasium, bien que ses notes fussent bonnes. Finalement, elle parla longuement avec sa maîtresse, qui lui conseilla de suivre ses propres intérêts plutôt que la pression des parents. À la fin, Léna choisit la Realschule, parce qu'elle pouvait y apprendre de façon plus pratique tout en continuant plus tard. Ses parents acceptèrent son choix, même si son père fut d'abord déçu.$t$,
    $t${"Lena":"Léna (prénom)","ging":"allait","in":"dans/en","die":"la/les","vierte":"quatrième","Klasse":"classe","einer":"d'une","Grundschule":"école primaire","Stuttgart":"Stuttgart (ville)","und":"et","bald":"bientôt","musste":"devait","sie":"elle","eine":"une","wichtige":"importante","Entscheidung":"décision","treffen":"prendre","In":"En","Deutschland":"Allemagne","wechseln":"changent","Schüler":"élèves","nach":"après","der":"la/le","auf":"sur/vers","weiterführende":"secondaire (établissement)","Schule":"école","es":"il (impersonnel)","gibt":"y a","normalerweise":"normalement","drei":"trois","Wege":"voies/chemins","Hauptschule":"école secondaire courte","Realschule":"école secondaire intermédiaire","das":"le","Gymnasium":"lycée","Lenas":"de Léna","Lehrerin":"institutrice/professeure","erklärte":"expliqua","dass":"que","acht":"huit","oder":"ou","neun":"neuf","Jahre":"années","dauert":"dure","danach":"ensuite","Abitur":"baccalauréat allemand","bringt":"apporte","mit":"avec","dem":"le/lui","man":"on","studieren":"faire des études supérieures","kann":"peut","Die":"La/Les","sechs":"six","endet":"se termine","einem":"un","mittleren":"intermédiaire","Abschluss":"diplôme","während":"tandis que","oft":"souvent","direkt":"directement","zu":"à/vers","Ausbildung":"formation professionnelle","führt":"mène","Eltern":"parents","waren":"étaient","unterschiedlicher":"différent(e)","Meinung":"avis/opinion","Ihr":"Son/Leur","Vater":"père","fand":"trouvait","unbedingt":"absolument","aufs":"sur le (contraction auf+das)","gehen":"aller","sollte":"devrait","weil":"parce que","er":"il","selbst":"lui-même","nie":"jamais","studiert":"étudié","hatte":"avait","Ihre":"Sa/Leur","Mutter":"mère","meinte":"pensait/estimait","dagegen":"en revanche","auch":"aussi","über":"via/par","später":"plus tard","Fachoberschule":"école supérieure technique","könne":"pourrait (subj.)","Angst":"peur","überfordert":"dépassée/submergée","wäre":"serait","obwohl":"bien que","ihre":"ses","Noten":"notes","eigentlich":"en réalité","gut":"bonnes","Schließlich":"finalement","sprach":"parla","lange":"longtemps","ihrer":"sa (à elle)","ihr":"lui/sa","riet":"conseilla","ihren":"ses","eigenen":"propres","Interessen":"intérêts","folgen":"suivre","statt":"au lieu de","Druck":"pression","Am":"Au","Ende":"fin","entschied":"décida","sich":"se","für":"pour","dort":"là-bas","praktischer":"plus pratique","lernen":"apprendre","trotzdem":"quand même","weitermachen":"continuer","konnte":"pouvait","akzeptierten":"acceptèrent","Wahl":"choix","wenn":"si/quand","anfangs":"au début","enttäuscht":"déçu","war":"était"}$t$::jsonb,
    $t$Système scolaire allemand : les trois voies$t$
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$In welcher Klasse war Lena?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$In der zweiten Klasse$t$, false, 1),
    (v_q, $t$In der vierten Klasse$t$, true, 2),
    (v_q, $t$In der sechsten Klasse$t$, false, 3),
    (v_q, $t$In der achten Klasse$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie viele Wege gibt es normalerweise nach der Grundschule?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Zwei$t$, false, 1),
    (v_q, $t$Drei$t$, true, 2),
    (v_q, $t$Vier$t$, false, 3),
    (v_q, $t$Fünf$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was führt laut Text besonders oft zu einer Ausbildung?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Das Gymnasium$t$, false, 1),
    (v_q, $t$Die Realschule$t$, false, 2),
    (v_q, $t$Die Hauptschule$t$, true, 3),
    (v_q, $t$Die Fachoberschule$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie lange dauert das Gymnasium?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Vier Jahre$t$, false, 1),
    (v_q, $t$Sechs Jahre$t$, false, 2),
    (v_q, $t$Acht oder neun Jahre$t$, true, 3),
    (v_q, $t$Zwölf Jahre$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum wollte Lenas Vater, dass sie aufs Gymnasium geht?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Weil er selbst nie studiert hatte$t$, true, 1),
    (v_q, $t$Weil die Realschule teuer ist$t$, false, 2),
    (v_q, $t$Weil er Lehrer war$t$, false, 3),
    (v_q, $t$Weil ihre Freunde dort hingingen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wovor hatte Lena Angst, obwohl ihre Noten gut waren?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Vor der Hauptschule$t$, false, 1),
    (v_q, $t$Davor, auf dem Gymnasium überfordert zu sein$t$, true, 2),
    (v_q, $t$Davor, keine Freunde zu finden$t$, false, 3),
    (v_q, $t$Vor der Ausbildung$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Für welche Schule entschied sich Lena am Ende?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Für das Gymnasium$t$, false, 1),
    (v_q, $t$Für die Hauptschule$t$, false, 2),
    (v_q, $t$Für die Realschule$t$, true, 3),
    (v_q, $t$Für keine Schule$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wer riet Lena, ihren eigenen Interessen zu folgen?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Ihr Vater$t$, false, 1),
    (v_q, $t$Ihre Mutter$t$, false, 2),
    (v_q, $t$Ihre Lehrerin$t$, true, 3),
    (v_q, $t$Ihre Freundin$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie reagierte Lenas Vater am Ende auf ihre Entscheidung?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er war wütend und stritt weiter$t$, false, 1),
    (v_q, $t$Er akzeptierte sie, obwohl er anfangs enttäuscht war$t$, true, 2),
    (v_q, $t$Er zwang sie, doch aufs Gymnasium zu gehen$t$, false, 3),
    (v_q, $t$Er wechselte selbst die Schule$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'die Entscheidung'?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$La décision$t$, true, 1),
    (v_q, $t$L'école$t$, false, 2),
    (v_q, $t$L'examen$t$, false, 3),
    (v_q, $t$L'ambition$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'weiterführende Schule'?$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$École primaire$t$, false, 1),
    (v_q, $t$École secondaire (après le primaire)$t$, true, 2),
    (v_q, $t$Université$t$, false, 3),
    (v_q, $t$École maternelle$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'überfordert sein'?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Être motivé$t$, false, 1),
    (v_q, $t$Être dépassé, submergé$t$, true, 2),
    (v_q, $t$Être en retard$t$, false, 3),
    (v_q, $t$Être fier$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$'Sie ___ eine wichtige Entscheidung treffen.' (müssen, Präteritum, sie=Lena)$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$musste$t$, true, 1),
    (v_q, $t$mussten$t$, false, 2),
    (v_q, $t$muss$t$, false, 3),
    (v_q, $t$müsst$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$'Ihre Eltern ___ ihre Wahl.' (akzeptieren, Präteritum)$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$akzeptierte$t$, false, 1),
    (v_q, $t$akzeptierten$t$, true, 2),
    (v_q, $t$akzeptiert$t$, false, 3),
    (v_q, $t$akzeptiere$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$'..., auch wenn ihr Vater anfangs enttäuscht ___.' (sein, Präteritum)$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$war$t$, true, 1),
    (v_q, $t$wäre$t$, false, 2),
    (v_q, $t$gewesen$t$, false, 3),
    (v_q, $t$ist$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Lena ging in die vierte Klasse einer ___ in Stuttgart.$t$, 1, 'facile', 'lueckentext') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Grundschule$t$, true, 1),
    (v_q, $t$Universität$t$, false, 2),
    (v_q, $t$Hauptschule$t$, false, 3),
    (v_q, $t$Bibliothek$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Die Realschule dauert sechs Jahre und endet mit einem ___ Abschluss.$t$, 1, 'normal', 'lueckentext') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$mittleren$t$, true, 1),
    (v_q, $t$kleinen$t$, false, 2),
    (v_q, $t$großen$t$, false, 3),
    (v_q, $t$letzten$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Schließlich sprach sie lange mit ihrer Lehrerin, die ihr riet, ihren eigenen Interessen zu ___ statt dem Druck der Eltern.$t$, 1, 'difficile', 'lueckentext') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$folgen$t$, true, 1),
    (v_q, $t$widersprechen$t$, false, 2),
    (v_q, $t$vergessen$t$, false, 3),
    (v_q, $t$fürchten$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$'Sie wechseln nach ___ Grundschule.' Welche Präposition + Fall?$t$, 1, 'facile', 'grammar') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$nach + Dativ$t$, true, 1),
    (v_q, $t$nach + Akkusativ$t$, false, 2),
    (v_q, $t$nach + Genitiv$t$, false, 3),
    (v_q, $t$nach + Nominativ$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$'..., weil er selbst nie studiert hatte.' Wo steht das konjugierte Verb im weil-Satz?$t$, 1, 'normal', 'grammar') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$An zweiter Stelle$t$, false, 1),
    (v_q, $t$Am Satzende$t$, true, 2),
    (v_q, $t$Am Satzanfang$t$, false, 3),
    (v_q, $t$Vor dem Subjekt$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$'Lena hatte Angst, dass sie überfordert wäre, obwohl ihre Noten gut waren.' Welcher Modus wird nach 'dass sie ... wäre' verwendet?$t$, 1, 'difficile', 'grammar') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Indikativ$t$, false, 1),
    (v_q, $t$Konjunktiv II$t$, true, 2),
    (v_q, $t$Imperativ$t$, false, 3),
    (v_q, $t$Futur I$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, justification)
    VALUES (v_story, $t$Lena ging in die vierte Klasse.$t$, 1, 'facile', 'true_false', $t$Lena ging in die vierte Klasse einer Grundschule in Stuttgart.$t$) RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Wahr$t$, true, 1),
    (v_q, $t$Falsch$t$, false, 2);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, justification)
    VALUES (v_story, $t$Lenas Mutter fand, dass man nur über das Gymnasium studieren kann.$t$, 1, 'normal', 'true_false', $t$Die Mutter meinte, man könne auch über die Realschule und eine Fachoberschule studieren.$t$) RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Wahr$t$, false, 1),
    (v_q, $t$Falsch$t$, true, 2);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, justification)
    VALUES (v_story, $t$Lena entschied sich am Ende gegen den Rat ihrer Lehrerin.$t$, 1, 'difficile', 'true_false', $t$Lena folgte dem Rat der Lehrerin, ihren eigenen Interessen zu folgen, und wählte die Realschule.$t$) RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Wahr$t$, false, 1),
    (v_q, $t$Falsch$t$, true, 2);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer, rubric)
    VALUES (v_story, $t$Beschreibe (ca. 80-100 Wörter), welche Schulform du an Lenas Stelle gewählt hättest und warum. Nutze mindestens einen weil-Satz und einen wenn-Satz.$t$, 1, 'normal', 'production', $t$An Lenas Stelle hätte ich wahrscheinlich auch die Realschule gewählt, weil sie sowohl praktisches Lernen als auch spätere Möglichkeiten bietet. Wenn ich sicher wäre, dass ich viel Zeit zum Lernen habe, würde ich vielleicht das Gymnasium wählen. Aber ich finde es wichtig, dass man selbst entscheidet und nicht nur dem Druck der Eltern folgt. Lena hat gut daran getan, mit ihrer Lehrerin zu sprechen, weil diese die Klasse gut kennt. Am Ende zählt, dass man sich in der Schule wohlfühlt.$t$, $t$[{"criterion":"Aufgabenerfüllung","description":"Eigene Wahl wird klar genannt und begründet"},{"criterion":"Wortschatz","description":"Nutzt Vokabular zum Schulsystem korrekt"},{"criterion":"Grammatik","description":"Mindestens ein weil-Satz und ein wenn-Satz korrekt gebildet"},{"criterion":"Kohärenz","description":"Argumentation ist logisch aufgebaut"}]$t$::jsonb);

END $block$;

-- 2. Eine Fünf in Mathe
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary, culture_note) VALUES (
    'B1',
    $t$Eine Fünf in Mathe$t$,
    $t$Paul saß am Küchentisch und starrte auf sein Mathe-Heft. Er hatte gerade eine Fünf in der letzten Klassenarbeit bekommen, die schlechteste Note im deutschen System. Wenn er im Zeugnis zwei Fünfer in Hauptfächern hätte, müsste er vielleicht das ganze Schuljahr wiederholen. Diese Möglichkeit, in Deutschland Sitzenbleiben genannt, machte ihm große Angst, weil er dann seine Freunde in der nächsten Klasse verlieren würde. Seine Eltern reagierten unterschiedlich auf die schlechte Note. Seine Mutter war ruhig und schlug vor, einen Nachhilfelehrer zu suchen, der ihm bei den Hausaufgaben helfen könnte. Sein Vater dagegen wurde laut und sagte, dass Paul einfach mehr lernen müsse, statt so viel Zeit mit seinem Handy zu verbringen. Paul fühlte sich unter enormem Druck, obwohl er eigentlich gar nicht faul war. Er verstand die Formeln in Algebra einfach nicht richtig und traute sich nicht, im Unterricht Fragen zu stellen, weil er Angst vor Spott hatte. Am nächsten Tag sprach er mit seinem Lehrer nach der Stunde. Der Lehrer erklärte ihm geduldig die schwierigen Aufgaben und bot an, dass Paul in der Mittagspause zusätzliche Übungen machen könnte. Langsam fühlte sich Paul wieder etwas sicherer und hoffte, dass er die nächste Arbeit besser schreiben würde.$t$,
    $t$Paul était assis à la table de la cuisine et fixait son cahier de mathématiques. Il venait de recevoir un cinq au dernier contrôle, la pire note dans le système allemand. S'il avait deux cinq dans des matières principales sur son bulletin, il devrait peut-être redoubler toute l'année scolaire. Cette possibilité, appelée en Allemagne le redoublement, lui faisait très peur, parce qu'il perdrait alors ses amis dans la classe suivante. Ses parents réagirent différemment à la mauvaise note. Sa mère resta calme et proposa de chercher un professeur particulier qui pourrait l'aider pour les devoirs. Son père, au contraire, haussa le ton et dit que Paul devait simplement travailler plus, au lieu de passer autant de temps sur son téléphone. Paul se sentait sous une pression énorme, bien qu'il ne fût pas du tout paresseux. Il ne comprenait tout simplement pas bien les formules d'algèbre et n'osait pas poser de questions en cours, parce qu'il avait peur des moqueries. Le lendemain, il parla avec son professeur après le cours. Le professeur lui expliqua patiemment les exercices difficiles et proposa que Paul fasse des exercices supplémentaires pendant la pause déjeuner. Peu à peu, Paul se sentit un peu plus en confiance et espéra qu'il ferait mieux au prochain contrôle.$t$,
    $t${"Paul":"Paul (prénom)","saß":"était assis","am":"au/à la","Küchentisch":"table de cuisine","und":"et","starrte":"fixait","auf":"sur","sein":"son","Mathe-Heft":"cahier de maths","Er":"Il","hatte":"avait","gerade":"justement","eine":"un(e)","Fünf":"cinq (note)","in":"en/dans","der":"le/la","letzten":"dernier(ère)","Klassenarbeit":"contrôle écrit","bekommen":"reçu","die":"la","schlechteste":"la pire","Note":"note","im":"dans le","deutschen":"allemand","System":"système","Wenn":"Si","er":"il","Zeugnis":"bulletin scolaire","zwei":"deux","Fünfer":"des cinq (notes)","Hauptfächern":"matières principales","hätte":"avait (subj.)","müsste":"devrait","vielleicht":"peut-être","das":"le/l'","ganze":"toute","Schuljahr":"année scolaire","wiederholen":"redoubler","Diese":"Cette","Möglichkeit":"possibilité","Deutschland":"Allemagne","Sitzenbleiben":"redoublement","genannt":"appelé","machte":"faisait","ihm":"lui","große":"grande","Angst":"peur","weil":"parce que","dann":"alors","seine":"ses","Freunde":"amis","nächsten":"prochaine/suivante","Klasse":"classe","verlieren":"perdre","würde":"ferait/serait (cond.)","Seine":"Ses","Eltern":"parents","reagierten":"réagirent","unterschiedlich":"différemment","schlechte":"mauvaise","Mutter":"mère","war":"était","ruhig":"calme","schlug":"proposa (schlagen vor)","vor":"avant/en avant (part.)","einen":"un","Nachhilfelehrer":"professeur particulier","zu":"à/de","suchen":"chercher","bei":"pour/chez","den":"les","Hausaufgaben":"devoirs","helfen":"aider","könnte":"pourrait","Sein":"Son","Vater":"père","dagegen":"en revanche","wurde":"devint","laut":"fort/bruyant","sagte":"dit","dass":"que","einfach":"simplement","mehr":"plus","lernen":"apprendre/étudier","müsse":"devrait (subj.)","statt":"au lieu de","so":"si/tellement","viel":"beaucoup","Zeit":"temps","mit":"avec","seinem":"son","Handy":"téléphone portable","verbringen":"passer (du temps)","fühlte":"sentait","sich":"se","unter":"sous","enormem":"énorme","Druck":"pression","obwohl":"bien que","eigentlich":"en réalité","gar":"du tout","nicht":"pas","faul":"paresseux","verstand":"comprenait","Formeln":"formules","Algebra":"algèbre","richtig":"correctement","traute":"osait (sich trauen)","Unterricht":"cours","Fragen":"questions","stellen":"poser","Spott":"moquerie","Am":"Le/Au","Tag":"jour","sprach":"parla","Lehrer":"professeur","nach":"après","Stunde":"heure/cours","Der":"Le","erklärte":"expliqua","geduldig":"patiemment","schwierigen":"difficiles","Aufgaben":"exercices/devoirs","bot":"proposa (bieten an)","an":"(particule de bieten an)","Mittagspause":"pause déjeuner","zusätzliche":"supplémentaires","Übungen":"exercices","machen":"faire","Langsam":"Lentement","wieder":"de nouveau","etwas":"un peu","sicherer":"plus sûr","hoffte":"espérait","nächste":"prochain","Arbeit":"contrôle/travail","besser":"mieux","schreiben":"écrire"}$t$::jsonb,
    $t$Système de notation et redoublement en Allemagne$t$
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Note hatte Paul in der Klassenarbeit bekommen?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Eine Eins$t$, false, 1),
    (v_q, $t$Eine Drei$t$, false, 2),
    (v_q, $t$Eine Fünf$t$, true, 3),
    (v_q, $t$Eine Zwei$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was könnte passieren, wenn Paul zwei Fünfer in Hauptfächern hätte?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er müsste die Schule wechseln$t$, false, 1),
    (v_q, $t$Er müsste das Schuljahr wiederholen$t$, true, 2),
    (v_q, $t$Er bekäme ein Handyverbot$t$, false, 3),
    (v_q, $t$Er müsste die Klasse verlassen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie wird das Wiederholen eines Schuljahres in Deutschland genannt?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Umschulen$t$, false, 1),
    (v_q, $t$Sitzenbleiben$t$, true, 2),
    (v_q, $t$Abbrechen$t$, false, 3),
    (v_q, $t$Durchfallen lassen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was schlug Pauls Mutter vor?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Die Schule zu wechseln$t$, false, 1),
    (v_q, $t$Einen Nachhilfelehrer zu suchen$t$, true, 2),
    (v_q, $t$Mit dem Lehrer zu streiten$t$, false, 3),
    (v_q, $t$Mathe aufzugeben$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum traute sich Paul nicht, im Unterricht Fragen zu stellen?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Weil der Lehrer streng war$t$, false, 1),
    (v_q, $t$Weil er Angst vor Spott hatte$t$, true, 2),
    (v_q, $t$Weil er keine Zeit hatte$t$, false, 3),
    (v_q, $t$Weil er die Sprache nicht verstand$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bot der Lehrer Paul zusätzlich an?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Nachsitzen nach der Schule$t$, false, 1),
    (v_q, $t$Übungen in der Mittagspause$t$, true, 2),
    (v_q, $t$Eine bessere Note ohne Grund$t$, false, 3),
    (v_q, $t$Einen Schulwechsel$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Womit verbrachte Paul laut seinem Vater zu viel Zeit?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Mit Sport$t$, false, 1),
    (v_q, $t$Mit seinem Handy$t$, true, 2),
    (v_q, $t$Mit Lesen$t$, false, 3),
    (v_q, $t$Mit Freunden im Park$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie fühlte sich Paul, obwohl er nicht faul war?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Gelangweilt$t$, false, 1),
    (v_q, $t$Unter enormem Druck$t$, true, 2),
    (v_q, $t$Stolz$t$, false, 3),
    (v_q, $t$Gleichgültig$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was verstand Paul nicht richtig?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Die Grammatik im Deutschunterricht$t$, false, 1),
    (v_q, $t$Die Formeln in Algebra$t$, true, 2),
    (v_q, $t$Die Geschichte Deutschlands$t$, false, 3),
    (v_q, $t$Die Regeln im Sport$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'die Note'?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$La note (scolaire)$t$, true, 1),
    (v_q, $t$Le devoir$t$, false, 2),
    (v_q, $t$La classe$t$, false, 3),
    (v_q, $t$Le professeur$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'sitzenbleiben' (im Schulkontext)?$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Rester assis en classe$t$, false, 1),
    (v_q, $t$Redoubler une année$t$, true, 2),
    (v_q, $t$Réussir un examen$t$, false, 3),
    (v_q, $t$Changer d'école$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'der Spott'?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Le respect$t$, false, 1),
    (v_q, $t$La moquerie$t$, true, 2),
    (v_q, $t$L'aide$t$, false, 3),
    (v_q, $t$La récompense$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$'Paul ___ gerade eine Fünf bekommen.' (haben, Perfekt-Hilfsverb, Präteritum)$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$hatte$t$, true, 1),
    (v_q, $t$hatten$t$, false, 2),
    (v_q, $t$hat$t$, false, 3),
    (v_q, $t$habt$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$'Er ___ die Formeln in Algebra einfach nicht richtig.' (verstehen, Präteritum)$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$verstand$t$, true, 1),
    (v_q, $t$verstehen$t$, false, 2),
    (v_q, $t$verstanden$t$, false, 3),
    (v_q, $t$versteht$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$'..., dass er die nächste Arbeit besser schreiben ___.' (werden, Konjunktiv II)$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$würde$t$, true, 1),
    (v_q, $t$wird$t$, false, 2),
    (v_q, $t$wurde$t$, false, 3),
    (v_q, $t$werde$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Paul saß am Küchentisch und ___ auf sein Mathe-Heft.$t$, 1, 'facile', 'lueckentext') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$starrte$t$, true, 1),
    (v_q, $t$kochte$t$, false, 2),
    (v_q, $t$schlief$t$, false, 3),
    (v_q, $t$lachte$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Seine Mutter war ruhig und ___ vor, einen Nachhilfelehrer zu suchen.$t$, 1, 'normal', 'lueckentext') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$schlug$t$, true, 1),
    (v_q, $t$verbot$t$, false, 2),
    (v_q, $t$vergaß$t$, false, 3),
    (v_q, $t$fürchtete$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Er traute sich nicht, im Unterricht Fragen zu stellen, weil er Angst vor ___ hatte.$t$, 1, 'difficile', 'lueckentext') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Spott$t$, true, 1),
    (v_q, $t$Prüfungen$t$, false, 2),
    (v_q, $t$Lehrern$t$, false, 3),
    (v_q, $t$Noten$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$'Er hatte Angst vor ___ Spott.' Welcher Fall folgt auf 'vor'?$t$, 1, 'facile', 'grammar') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Dativ$t$, true, 1),
    (v_q, $t$Akkusativ$t$, false, 2),
    (v_q, $t$Genitiv$t$, false, 3),
    (v_q, $t$Nominativ$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$'..., weil er dann seine Freunde verlieren würde.' Wo steht das konjugierte Verb 'würde'?$t$, 1, 'normal', 'grammar') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$An zweiter Stelle$t$, false, 1),
    (v_q, $t$Am Satzende$t$, true, 2),
    (v_q, $t$Am Anfang$t$, false, 3),
    (v_q, $t$Direkt nach 'weil'$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$'Wenn er zwei Fünfer hätte, müsste er wiederholen.' Welche Satzform ist das?$t$, 1, 'difficile', 'grammar') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Ein Relativsatz$t$, false, 1),
    (v_q, $t$Ein irrealer Bedingungssatz (Konjunktiv II)$t$, true, 2),
    (v_q, $t$Ein Fragesatz$t$, false, 3),
    (v_q, $t$Ein Imperativsatz$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, justification)
    VALUES (v_story, $t$Paul bekam eine gute Note in Mathe.$t$, 1, 'facile', 'true_false', $t$Paul hatte gerade eine Fünf bekommen, die schlechteste Note im deutschen System.$t$) RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Wahr$t$, false, 1),
    (v_q, $t$Falsch$t$, true, 2);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, justification)
    VALUES (v_story, $t$Pauls Vater blieb ruhig und gelassen.$t$, 1, 'normal', 'true_false', $t$Sein Vater wurde laut und sagte, dass Paul mehr lernen müsse.$t$) RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Wahr$t$, false, 1),
    (v_q, $t$Falsch$t$, true, 2);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, justification)
    VALUES (v_story, $t$Der Lehrer half Paul und bot zusätzliche Übungen an.$t$, 1, 'difficile', 'true_false', $t$Der Lehrer erklärte ihm geduldig die Aufgaben und bot Übungen in der Mittagspause an.$t$) RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Wahr$t$, true, 1),
    (v_q, $t$Falsch$t$, false, 2);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer, rubric)
    VALUES (v_story, $t$Schreibe (ca. 80-100 Wörter) einen Rat an Paul, wie er mit dem Notendruck umgehen könnte. Nutze mindestens einen dass-Satz und einen wenn-Satz.$t$, 1, 'normal', 'production', $t$Lieber Paul, ich finde es wichtig, dass du keine Angst hast, deinen Lehrer um Hilfe zu bitten. Wenn du etwas nicht verstehst, solltest du sofort Fragen stellen, denn das ist völlig normal. Es hilft auch, dass du dir jeden Tag ein bisschen Zeit zum Üben nimmst, statt alles vor der Arbeit zu lernen. Wenn deine Eltern zu viel Druck machen, kannst du ihnen erklären, dass Druck dir eher schadet als hilft. Am wichtigsten ist, dass du an dich glaubst.$t$, $t$[{"criterion":"Aufgabenerfüllung","description":"Konkreter, hilfreicher Rat wird formuliert"},{"criterion":"Wortschatz","description":"Vokabular zu Schule, Noten und Druck korrekt verwendet"},{"criterion":"Grammatik","description":"Mindestens ein dass-Satz und ein wenn-Satz korrekt"},{"criterion":"Kohärenz","description":"Ratschläge sind klar und logisch geordnet"}]$t$::jsonb);

END $block$;

-- 3. Lehre statt Abitur
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary, culture_note) VALUES (
    'B1',
    $t$Lehre statt Abitur$t$,
    $t$Als Jonas in die zehnte Klasse eines Gymnasiums ging, spürte er, dass ihm der Schulalltag immer schwerer fiel. Er interessierte sich mehr für praktische Arbeit als für Theorie, und die vielen Klausuren machten ihm keinen Spaß. Deshalb überlegte er, ob er nach der zehnten Klasse eine duale Ausbildung beginnen sollte, statt bis zum Abitur weiterzumachen. In Deutschland bedeutet eine duale Ausbildung, dass man abwechselnd in einem Betrieb arbeitet und in der Berufsschule lernt. Jonas' Klassenlehrerin war überrascht, weil seine Noten eigentlich gut genug für das Abitur wären. Trotzdem unterstützte sie ihn, nachdem er ihr erklärt hatte, dass er lieber Elektroniker werden wolle. Seine Großeltern waren zunächst skeptisch, weil sie glaubten, dass nur das Abitur zu einem guten Leben führt. Jonas erklärte ihnen geduldig, dass eine Ausbildung in Deutschland sehr angesehen ist und man später sogar ohne Abitur studieren kann, wenn man genug Berufserfahrung sammelt. Er bewarb sich bei mehreren Firmen und bekam schließlich einen Ausbildungsplatz bei einem großen Elektronikunternehmen in seiner Stadt. Am ersten Tag war er nervös, aber auch stolz, weil er endlich etwas Praktisches lernen durfte. Seine Familie war am Ende froh, dass er seinen eigenen Weg gefunden hatte.$t$,
    $t$Lorsque Jonas entra en classe de seconde d'un Gymnasium, il sentit que le quotidien scolaire lui pesait de plus en plus. Il s'intéressait davantage au travail pratique qu'à la théorie, et les nombreux contrôles ne lui plaisaient pas. C'est pourquoi il réfléchissait à commencer une formation en alternance après la dixième classe, plutôt que de continuer jusqu'au baccalauréat. En Allemagne, une formation en alternance signifie que l'on travaille alternativement dans une entreprise et que l'on apprend à l'école professionnelle. La professeure principale de Jonas fut surprise, parce que ses notes étaient en réalité assez bonnes pour l'Abitur. Elle le soutint néanmoins, après qu'il lui eut expliqué qu'il préférait devenir électronicien. Ses grands-parents étaient d'abord sceptiques, parce qu'ils croyaient que seul l'Abitur menait à une bonne vie. Jonas leur expliqua patiemment qu'une formation professionnelle est très respectée en Allemagne et que l'on peut même étudier plus tard sans Abitur, si l'on accumule assez d'expérience professionnelle. Il postula auprès de plusieurs entreprises et obtint finalement une place de formation dans une grande entreprise d'électronique de sa ville. Le premier jour, il était nerveux, mais aussi fier, parce qu'il pouvait enfin apprendre quelque chose de pratique. Sa famille fut finalement heureuse qu'il ait trouvé sa propre voie.$t$,
    $t${"Als":"Lorsque","Jonas":"Jonas (prénom)","in":"en/dans","die":"la","zehnte":"dixième","Klasse":"classe","eines":"d'un","Gymnasiums":"lycée","ging":"allait","spürte":"sentait","er":"il","dass":"que","ihm":"lui","der":"le","Schulalltag":"quotidien scolaire","immer":"toujours/de plus en plus","schwerer":"plus difficile","fiel":"tombait/pesait","Er":"Il","interessierte":"s'intéressait","sich":"se","mehr":"plus","für":"pour","praktische":"pratique","Arbeit":"travail","als":"que","Theorie":"théorie","und":"et","vielen":"nombreux","Klausuren":"examens écrits","machten":"faisaient","keinen":"aucun","Spaß":"plaisir","Deshalb":"C'est pourquoi","überlegte":"réfléchissait","ob":"si (interrogatif)","nach":"après","zehnten":"dixième","eine":"une","duale":"duale (en alternance)","Ausbildung":"formation en alternance","beginnen":"commencer","sollte":"devrait","statt":"au lieu de","bis":"jusqu'à","zum":"au","Abitur":"baccalauréat allemand","weiterzumachen":"continuer","In":"En","Deutschland":"Allemagne","bedeutet":"signifie","man":"on","abwechselnd":"alternativement","einem":"un","Betrieb":"entreprise","arbeitet":"travaille","Berufsschule":"école professionnelle","lernt":"apprend","Jonas'":"de Jonas","Klassenlehrerin":"professeure principale","war":"était","überrascht":"surprise","weil":"parce que","seine":"ses","Noten":"notes","eigentlich":"en réalité","gut":"bonnes","genug":"assez","das":"le/cela","wären":"seraient","Trotzdem":"quand même","unterstützte":"soutint","sie":"elle/il/ils","ihn":"le (accusatif)","nachdem":"après que","ihr":"lui","erklärt":"expliqué","hatte":"avait","lieber":"préférer","Elektroniker":"électronicien","werden":"devenir","wolle":"veuille (subj.)","Seine":"Ses","Großeltern":"grands-parents","waren":"étaient","zunächst":"d'abord","skeptisch":"sceptiques","glaubten":"croyaient","nur":"seulement","zu":"à/vers","guten":"bonne","Leben":"vie","führt":"mène","erklärte":"expliqua","ihnen":"leur","geduldig":"patiemment","sehr":"très","angesehen":"respectée","ist":"est","später":"plus tard","sogar":"même","ohne":"sans","studieren":"faire des études","kann":"peut","wenn":"si","Berufserfahrung":"expérience professionnelle","sammelt":"accumule","bewarb":"postula (sich bewerben)","bei":"auprès de","mehreren":"plusieurs","Firmen":"entreprises","bekam":"obtint","schließlich":"finalement","einen":"un","Ausbildungsplatz":"place de formation","großen":"grande","Elektronikunternehmen":"entreprise d'électronique","seiner":"de sa","Stadt":"ville","Am":"Le/Au","ersten":"premier","Tag":"jour","nervös":"nerveux","aber":"mais","auch":"aussi","stolz":"fier","endlich":"enfin","etwas":"quelque chose","Praktisches":"de pratique","lernen":"apprendre","durfte":"avait le droit de","Familie":"famille","am":"à la","Ende":"fin","froh":"heureuse","seinen":"son","eigenen":"propre","Weg":"chemin/voie","gefunden":"trouvé"}$t$::jsonb,
    $t$Formation en alternance (duale Ausbildung)$t$
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$In welcher Klasse war Jonas?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$In der achten Klasse$t$, false, 1),
    (v_q, $t$In der zehnten Klasse$t$, true, 2),
    (v_q, $t$In der zwölften Klasse$t$, false, 3),
    (v_q, $t$In der sechsten Klasse$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wofür interessierte sich Jonas mehr als für Theorie?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Für Musik$t$, false, 1),
    (v_q, $t$Für praktische Arbeit$t$, true, 2),
    (v_q, $t$Für Sprachen$t$, false, 3),
    (v_q, $t$Für Sport$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet eine duale Ausbildung laut Text?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Nur Theorie an der Uni$t$, false, 1),
    (v_q, $t$Abwechselnd Arbeit im Betrieb und Berufsschule$t$, true, 2),
    (v_q, $t$Zwei Berufe gleichzeitig lernen$t$, false, 3),
    (v_q, $t$Ausbildung im Ausland$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welchen Beruf wollte Jonas lernen?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Bäcker$t$, false, 1),
    (v_q, $t$Elektroniker$t$, true, 2),
    (v_q, $t$Lehrer$t$, false, 3),
    (v_q, $t$Arzt$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum war die Klassenlehrerin überrascht?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Weil Jonas schlechte Noten hatte$t$, false, 1),
    (v_q, $t$Weil seine Noten gut genug für das Abitur wären$t$, true, 2),
    (v_q, $t$Weil er die Schule wechseln wollte$t$, false, 3),
    (v_q, $t$Weil er ins Ausland gehen wollte$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was glaubten Jonas' Großeltern zunächst?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Dass nur das Abitur zu einem guten Leben führt$t$, true, 1),
    (v_q, $t$Dass eine Ausbildung besser ist als Abitur$t$, false, 2),
    (v_q, $t$Dass Jonas die Schule abbrechen sollte$t$, false, 3),
    (v_q, $t$Dass er zu jung für eine Entscheidung sei$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Bei wem bekam Jonas einen Ausbildungsplatz?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Bei einer Bäckerei$t$, false, 1),
    (v_q, $t$Bei einem Elektronikunternehmen$t$, true, 2),
    (v_q, $t$Bei einer Schule$t$, false, 3),
    (v_q, $t$Bei einem Krankenhaus$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie fühlte sich Jonas am ersten Tag?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Gelangweilt$t$, false, 1),
    (v_q, $t$Nervös, aber auch stolz$t$, true, 2),
    (v_q, $t$Wütend$t$, false, 3),
    (v_q, $t$Gleichgültig$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was erklärte Jonas seinen Großeltern über spätere Studienmöglichkeiten?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Dass man nie ohne Abitur studieren kann$t$, false, 1),
    (v_q, $t$Dass man mit genug Berufserfahrung auch ohne Abitur studieren kann$t$, true, 2),
    (v_q, $t$Dass eine Ausbildung das Studium ersetzt$t$, false, 3),
    (v_q, $t$Dass er nie studieren wollte$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'die Ausbildung'?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$La formation professionnelle$t$, true, 1),
    (v_q, $t$Le lycée$t$, false, 2),
    (v_q, $t$L'université$t$, false, 3),
    (v_q, $t$Le diplôme final$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'der Betrieb'?$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$L'école$t$, false, 1),
    (v_q, $t$L'entreprise$t$, true, 2),
    (v_q, $t$Le bureau du directeur$t$, false, 3),
    (v_q, $t$La salle de classe$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'angesehen sein'?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Être invisible$t$, false, 1),
    (v_q, $t$Être respecté/estimé$t$, true, 2),
    (v_q, $t$Être interdit$t$, false, 3),
    (v_q, $t$Être ignoré$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$'Er ___, ob er eine Ausbildung beginnen sollte.' (überlegen, Präteritum)$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$überlegte$t$, true, 1),
    (v_q, $t$überlegten$t$, false, 2),
    (v_q, $t$überlegt$t$, false, 3),
    (v_q, $t$überlege$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$'Seine Großeltern ___ zunächst skeptisch.' (sein, Präteritum)$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$war$t$, false, 1),
    (v_q, $t$waren$t$, true, 2),
    (v_q, $t$wären$t$, false, 3),
    (v_q, $t$gewesen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$'..., nachdem er ihr erklärt ___, dass er Elektroniker werden wolle.' (haben, Plusquamperfekt)$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$hatte$t$, true, 1),
    (v_q, $t$hätte$t$, false, 2),
    (v_q, $t$hat$t$, false, 3),
    (v_q, $t$habe$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Jonas interessierte sich mehr für praktische Arbeit als für ___.$t$, 1, 'facile', 'lueckentext') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Theorie$t$, true, 1),
    (v_q, $t$Freizeit$t$, false, 2),
    (v_q, $t$Musik$t$, false, 3),
    (v_q, $t$Sport$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Er ___ sich bei mehreren Firmen.$t$, 1, 'normal', 'lueckentext') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$bewarb$t$, true, 1),
    (v_q, $t$beschwerte$t$, false, 2),
    (v_q, $t$verabschiedete$t$, false, 3),
    (v_q, $t$erinnerte$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Seine Familie war am Ende froh, dass er seinen eigenen Weg ___ hatte.$t$, 1, 'difficile', 'lueckentext') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$gefunden$t$, true, 1),
    (v_q, $t$verloren$t$, false, 2),
    (v_q, $t$vergessen$t$, false, 3),
    (v_q, $t$verlassen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$'Er lernt in der Berufsschule.' Welcher Fall/Präposition wird hier verwendet?$t$, 1, 'facile', 'grammar') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$in + Dativ$t$, true, 1),
    (v_q, $t$in + Akkusativ$t$, false, 2),
    (v_q, $t$in + Genitiv$t$, false, 3),
    (v_q, $t$in + Nominativ$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$'..., wenn man genug Berufserfahrung sammelt.' Welche Satzart ist das?$t$, 1, 'normal', 'grammar') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Ein Konditionalsatz$t$, true, 1),
    (v_q, $t$Ein Relativsatz$t$, false, 2),
    (v_q, $t$Ein Fragesatz$t$, false, 3),
    (v_q, $t$Ein Hauptsatz$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$'Er bewarb sich bei mehreren Firmen und bekam schließlich einen Ausbildungsplatz.' Welche Zeitform wird hier verwendet?$t$, 1, 'difficile', 'grammar') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Präsens$t$, false, 1),
    (v_q, $t$Präteritum$t$, true, 2),
    (v_q, $t$Futur II$t$, false, 3),
    (v_q, $t$Konjunktiv I$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, justification)
    VALUES (v_story, $t$Jonas wollte lieber Elektroniker werden als Abitur machen.$t$, 1, 'facile', 'true_false', $t$Er erklärte, dass er lieber Elektroniker werden wolle, statt bis zum Abitur weiterzumachen.$t$) RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Wahr$t$, true, 1),
    (v_q, $t$Falsch$t$, false, 2);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, justification)
    VALUES (v_story, $t$Jonas' Großeltern unterstützten seine Entscheidung sofort ohne Zweifel.$t$, 1, 'normal', 'true_false', $t$Seine Großeltern waren zunächst skeptisch, bevor Jonas sie überzeugen konnte.$t$) RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Wahr$t$, false, 1),
    (v_q, $t$Falsch$t$, true, 2);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, justification)
    VALUES (v_story, $t$Laut Text kann man in Deutschland nie ohne Abitur studieren.$t$, 1, 'difficile', 'true_false', $t$Jonas erklärte, dass man später auch ohne Abitur studieren kann, wenn man genug Berufserfahrung sammelt.$t$) RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Wahr$t$, false, 1),
    (v_q, $t$Falsch$t$, true, 2);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer, rubric)
    VALUES (v_story, $t$Schreibe (ca. 80-100 Wörter) darüber, was du an einer dualen Ausbildung interessant oder schwierig findest. Nutze mindestens einen weil-Satz und einen wenn-Satz.$t$, 1, 'normal', 'production', $t$Ich finde eine duale Ausbildung interessant, weil man von Anfang an praktische Erfahrung im Betrieb sammelt und trotzdem etwas Geld verdient. Wenn man genau weiß, welchen Beruf man ausüben möchte, ist das ein großer Vorteil gegenüber der Schule. Trotzdem finde ich es schwierig, weil man mit sechzehn oder siebzehn Jahren schon eine wichtige Entscheidung treffen muss. Wenn ich unsicher wäre, würde ich zuerst mit meinen Eltern und Lehrern sprechen, bevor ich mich entscheide.$t$, $t$[{"criterion":"Aufgabenerfüllung","description":"Eigene Meinung zur Ausbildung wird ausgedrückt"},{"criterion":"Wortschatz","description":"Vokabular zu Ausbildung und Beruf korrekt verwendet"},{"criterion":"Grammatik","description":"Mindestens ein weil-Satz und ein wenn-Satz korrekt"},{"criterion":"Kohärenz","description":"Argumentation klar strukturiert"}]$t$::jsonb);

END $block$;

-- 4. Ein Jahr in Lyon
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary, culture_note) VALUES (
    'B1',
    $t$Ein Jahr in Lyon$t$,
    $t$Mila besuchte die neunte Klasse eines Gymnasiums in Freiburg, als sie beschloss, ein Schuljahr im Ausland zu verbringen. Sie hatte sich für einen Schüleraustausch nach Lyon beworben, weil sie schon lange Französisch lernte und die Kultur besser kennenlernen wollte. Ihre Eltern hatten anfangs Bedenken, weil sie sich Sorgen um Milas Schulnoten und um die lange Trennung machten. Trotzdem unterschrieben sie schließlich die Papiere, nachdem die Austauschorganisation ihnen alles genau erklärt hatte. In Lyon wohnte Mila bei einer Gastfamilie, deren Tochter Chloé genauso alt war wie sie. Die ersten Wochen waren schwierig, weil Mila nicht alles im Unterricht verstand und sich manchmal einsam fühlte, obwohl alle sehr freundlich zu ihr waren. Nach und nach verbesserte sich ihr Französisch deutlich, und sie freundete sich mit mehreren Mitschülern an. Besonders beeindruckt war sie davon, wie anders der Schulalltag in Frankreich organisiert war, zum Beispiel mit längeren Schultagen und kürzeren Ferien. Als Mila nach einem Jahr wieder nach Freiburg zurückkehrte, hatte sie sich sehr verändert. Sie war selbstbewusster geworden und sprach fast fließend Französisch. Ihre Lehrer bemerkten, dass sie viel offener geworden war, seit sie so lange in einem anderen Land gelebt hatte.$t$,
    $t$Mila était en troisième d'un Gymnasium à Fribourg-en-Brisgau lorsqu'elle décida de passer une année scolaire à l'étranger. Elle avait postulé pour un échange scolaire à Lyon, parce qu'elle apprenait le français depuis longtemps et voulait mieux connaître la culture. Ses parents avaient d'abord des réserves, car ils s'inquiétaient pour les notes de Mila et pour la longue séparation. Ils signèrent néanmoins finalement les papiers, après que l'organisation d'échange leur eut tout expliqué en détail. À Lyon, Mila logeait chez une famille d'accueil dont la fille, Chloé, avait exactement le même âge qu'elle. Les premières semaines furent difficiles, parce que Mila ne comprenait pas tout en cours et se sentait parfois seule, bien que tout le monde fût très gentil avec elle. Peu à peu, son français s'améliora nettement, et elle se lia d'amitié avec plusieurs camarades de classe. Elle fut particulièrement impressionnée par la manière dont le quotidien scolaire était organisé différemment en France, par exemple avec des journées plus longues et des vacances plus courtes. Quand Mila revint à Fribourg après un an, elle avait beaucoup changé. Elle était devenue plus sûre d'elle et parlait presque couramment français. Ses professeurs remarquèrent qu'elle était devenue beaucoup plus ouverte depuis qu'elle avait vécu si longtemps dans un autre pays.$t$,
    $t${"Mila":"Mila (prénom)","besuchte":"fréquentait","die":"la","neunte":"neuvième","Klasse":"classe","eines":"d'un","Gymnasiums":"lycée","in":"à/en","Freiburg":"Fribourg-en-Brisgau","als":"lorsque","sie":"elle","beschloss":"décida","ein":"une","Schuljahr":"année scolaire","im":"à l'","Ausland":"étranger","zu":"de/à","verbringen":"passer","Sie":"Elle","hatte":"avait","sich":"se","für":"pour","einen":"un","Schüleraustausch":"échange scolaire","nach":"vers","Lyon":"Lyon (ville)","beworben":"postulé","weil":"parce que","schon":"déjà","lange":"longtemps","Französisch":"le français","lernte":"apprenait","und":"et","Kultur":"culture","besser":"mieux","kennenlernen":"connaître","wollte":"voulait","Ihre":"Ses","Eltern":"parents","hatten":"avaient","anfangs":"au début","Bedenken":"réserves/inquiétudes","Sorgen":"soucis","um":"pour/au sujet de","Milas":"de Mila","Schulnoten":"notes scolaires","Trennung":"séparation","machten":"faisaient (sich Sorgen machen)","Trotzdem":"quand même","unterschrieben":"signèrent","schließlich":"finalement","Papiere":"papiers","nachdem":"après que","Austauschorganisation":"organisation d'échange","ihnen":"leur","alles":"tout","genau":"précisément","erklärt":"expliqué","In":"À","wohnte":"logeait","bei":"chez","einer":"une","Gastfamilie":"famille d'accueil","deren":"dont (la)","Tochter":"fille","Chloé":"Chloé (prénom)","genauso":"tout aussi","alt":"âgée","war":"était","wie":"que","Die":"Les","ersten":"premières","Wochen":"semaines","waren":"étaient","schwierig":"difficiles","nicht":"pas","Unterricht":"cours","verstand":"comprenait","manchmal":"parfois","einsam":"seule","fühlte":"sentait","obwohl":"bien que","alle":"tous","sehr":"très","freundlich":"gentils","ihr":"elle/lui","Nach":"Après","verbesserte":"s'améliora","deutlich":"nettement","freundete":"se lia (sich anfreunden)","mit":"avec","mehreren":"plusieurs","Mitschülern":"camarades de classe","an":"(particule de anfreunden)","Besonders":"Particulièrement","beeindruckt":"impressionnée","davon":"par cela","anders":"différemment","der":"le","Schulalltag":"quotidien scolaire","Frankreich":"France","organisiert":"organisé","zum":"par","Beispiel":"exemple","längeren":"plus longues","Schultagen":"journées d'école","kürzeren":"plus courtes","Ferien":"vacances","Als":"Lorsque","einem":"un","Jahr":"an/année","wieder":"de nouveau","zurückkehrte":"revint","verändert":"changée","selbstbewusster":"plus sûre d'elle","geworden":"devenue","sprach":"parlait","fast":"presque","fließend":"couramment","Lehrer":"professeurs","bemerkten":"remarquèrent","dass":"que","viel":"beaucoup","offener":"plus ouverte","seit":"depuis que","so":"si","anderen":"autre","Land":"pays","gelebt":"vécu"}$t$::jsonb,
    $t$Échange scolaire international$t$
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$In welche Stadt ging Mila für den Austausch?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Nach Paris$t$, false, 1),
    (v_q, $t$Nach Lyon$t$, true, 2),
    (v_q, $t$Nach Marseille$t$, false, 3),
    (v_q, $t$Nach Nizza$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum hatte sich Mila für den Austausch beworben?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Weil sie Deutschland verlassen wollte$t$, false, 1),
    (v_q, $t$Weil sie schon lange Französisch lernte und die Kultur kennenlernen wollte$t$, true, 2),
    (v_q, $t$Weil ihre Eltern es verlangten$t$, false, 3),
    (v_q, $t$Weil sie schlechte Noten hatte$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was machte den Eltern anfangs Sorgen?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Die Kosten der Reise$t$, false, 1),
    (v_q, $t$Milas Schulnoten und die lange Trennung$t$, true, 2),
    (v_q, $t$Die Sprache Französisch$t$, false, 3),
    (v_q, $t$Die Sicherheit in Lyon$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie hieß die Tochter der Gastfamilie?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Chloé$t$, true, 1),
    (v_q, $t$Marie$t$, false, 2),
    (v_q, $t$Sophie$t$, false, 3),
    (v_q, $t$Léa$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum waren die ersten Wochen schwierig für Mila?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Weil das Essen ihr nicht schmeckte$t$, false, 1),
    (v_q, $t$Weil sie nicht alles im Unterricht verstand und sich einsam fühlte$t$, true, 2),
    (v_q, $t$Weil die Gastfamilie unfreundlich war$t$, false, 3),
    (v_q, $t$Weil sie krank wurde$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was war laut Text am französischen Schulalltag anders?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Es gab keine Hausaufgaben$t$, false, 1),
    (v_q, $t$Längere Schultage und kürzere Ferien$t$, true, 2),
    (v_q, $t$Weniger Fächer$t$, false, 3),
    (v_q, $t$Keine Klassenarbeiten$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie lange blieb Mila im Ausland?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Einen Monat$t$, false, 1),
    (v_q, $t$Ein Schuljahr$t$, true, 2),
    (v_q, $t$Eine Woche$t$, false, 3),
    (v_q, $t$Zwei Jahre$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie hatte sich Mila laut Text verändert?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie war schüchterner geworden$t$, false, 1),
    (v_q, $t$Sie war selbstbewusster geworden$t$, true, 2),
    (v_q, $t$Sie hatte das Interesse an Sprachen verloren$t$, false, 3),
    (v_q, $t$Sie wollte nie wieder verreisen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bemerkten Milas Lehrer nach ihrer Rückkehr?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Dass sie schlechtere Noten hatte$t$, false, 1),
    (v_q, $t$Dass sie viel offener geworden war$t$, true, 2),
    (v_q, $t$Dass sie kein Deutsch mehr sprach$t$, false, 3),
    (v_q, $t$Dass sie die Schule wechseln wollte$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'der Schüleraustausch'?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$L'échange scolaire$t$, true, 1),
    (v_q, $t$Le devoir de vacances$t$, false, 2),
    (v_q, $t$La cantine scolaire$t$, false, 3),
    (v_q, $t$Le conseil de classe$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'die Gastfamilie'?$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$La famille d'accueil$t$, true, 1),
    (v_q, $t$La famille nombreuse$t$, false, 2),
    (v_q, $t$La famille éloignée$t$, false, 3),
    (v_q, $t$La famille d'origine$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'selbstbewusst'?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Timide$t$, false, 1),
    (v_q, $t$Sûr de soi/confiant$t$, true, 2),
    (v_q, $t$Distrait$t$, false, 3),
    (v_q, $t$Fatigué$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$'Sie ___ sich für einen Austausch beworben.' (haben, Perfekt)$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$hatte$t$, true, 1),
    (v_q, $t$hatten$t$, false, 2),
    (v_q, $t$hat$t$, false, 3),
    (v_q, $t$habe$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$'Ihre Eltern ___ anfangs Bedenken.' (haben, Präteritum)$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$hatte$t$, false, 1),
    (v_q, $t$hatten$t$, true, 2),
    (v_q, $t$haben$t$, false, 3),
    (v_q, $t$hätten$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$'..., seit sie so lange in einem anderen Land gelebt ___.' (haben, Plusquamperfekt)$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$hatte$t$, true, 1),
    (v_q, $t$hätte$t$, false, 2),
    (v_q, $t$hat$t$, false, 3),
    (v_q, $t$habe$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Mila wohnte in Lyon bei einer ___.$t$, 1, 'facile', 'lueckentext') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Gastfamilie$t$, true, 1),
    (v_q, $t$Schulklasse$t$, false, 2),
    (v_q, $t$Lehrerin$t$, false, 3),
    (v_q, $t$Nachbarin$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Nach und nach ___ sich ihr Französisch deutlich.$t$, 1, 'normal', 'lueckentext') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$verbesserte$t$, true, 1),
    (v_q, $t$verschlechterte$t$, false, 2),
    (v_q, $t$verlor$t$, false, 3),
    (v_q, $t$vergaß$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Sie freundete sich mit mehreren ___ an.$t$, 1, 'difficile', 'lueckentext') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Mitschülern$t$, true, 1),
    (v_q, $t$Lehrern$t$, false, 2),
    (v_q, $t$Nachbarn$t$, false, 3),
    (v_q, $t$Fremden$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$'Sie wohnte bei ___ Gastfamilie.' Welcher Fall folgt auf 'bei'?$t$, 1, 'facile', 'grammar') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Dativ$t$, true, 1),
    (v_q, $t$Akkusativ$t$, false, 2),
    (v_q, $t$Genitiv$t$, false, 3),
    (v_q, $t$Nominativ$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$'..., deren Tochter genauso alt war wie sie.' Was ist 'deren' hier?$t$, 1, 'normal', 'grammar') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Ein Relativpronomen im Genitiv$t$, true, 1),
    (v_q, $t$Ein Fragewort$t$, false, 2),
    (v_q, $t$Ein Personalpronomen$t$, false, 3),
    (v_q, $t$Ein Artikel$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$'..., obwohl alle sehr freundlich zu ihr waren.' Welche Satzverbindung drückt 'obwohl' aus?$t$, 1, 'difficile', 'grammar') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Grund$t$, false, 1),
    (v_q, $t$Konzessiv (Gegensatz)$t$, true, 2),
    (v_q, $t$Bedingung$t$, false, 3),
    (v_q, $t$Zeit$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, justification)
    VALUES (v_story, $t$Mila ging für ein Schuljahr nach Lyon.$t$, 1, 'facile', 'true_false', $t$Sie beschloss, ein Schuljahr im Ausland zu verbringen, und ging nach Lyon.$t$) RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Wahr$t$, true, 1),
    (v_q, $t$Falsch$t$, false, 2);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, justification)
    VALUES (v_story, $t$Milas Eltern waren von Anfang an begeistert von der Idee.$t$, 1, 'normal', 'true_false', $t$Ihre Eltern hatten anfangs Bedenken wegen der Noten und der Trennung.$t$) RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Wahr$t$, false, 1),
    (v_q, $t$Falsch$t$, true, 2);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, justification)
    VALUES (v_story, $t$Nach der Rückkehr sprach Mila fast fließend Französisch.$t$, 1, 'difficile', 'true_false', $t$Sie war selbstbewusster geworden und sprach fast fließend Französisch.$t$) RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Wahr$t$, true, 1),
    (v_q, $t$Falsch$t$, false, 2);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer, rubric)
    VALUES (v_story, $t$Schreibe (ca. 80-100 Wörter) über die Vor- und Nachteile eines Schüleraustauschs. Nutze mindestens einen obwohl-Satz und einen weil-Satz.$t$, 1, 'normal', 'production', $t$Ein Schüleraustausch hat viele Vorteile, weil man eine neue Sprache und Kultur direkt im Alltag erlebt. Obwohl es am Anfang schwierig sein kann, weil man die Sprache noch nicht perfekt beherrscht, gewöhnt man sich meistens schnell daran. Ein Nachteil ist, dass man seine Familie und Freunde für lange Zeit vermisst. Trotzdem finde ich, dass die positiven Erfahrungen überwiegen, weil man selbstständiger und offener wird. Deshalb würde ich jedem einen Austausch empfehlen.$t$, $t$[{"criterion":"Aufgabenerfüllung","description":"Vor- und Nachteile werden klar dargestellt"},{"criterion":"Wortschatz","description":"Vokabular zu Austausch und Kultur korrekt genutzt"},{"criterion":"Grammatik","description":"Mindestens ein obwohl-Satz und ein weil-Satz korrekt"},{"criterion":"Kohärenz","description":"Argumente sind gut verbunden"}]$t$::jsonb);

END $block$;

-- 5. Die Fahrt an die Ostsee
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary, culture_note) VALUES (
    'B1',
    $t$Die Fahrt an die Ostsee$t$,
    $t$Endlich war es so weit: Die Klasse 8b fuhr für fünf Tage auf Klassenfahrt an die Ostsee, und alle Schüler waren aufgeregt. Herr Bauer, ihr Klassenlehrer, hatte die Fahrt monatelang geplant und viele Regeln aufgestellt, damit alles reibungslos ablaufen würde. Die Jugendherberge lag direkt am Strand, und die Zimmer wurden nach dem Zufallsprinzip verteilt, was zu einigem Chaos führte, weil manche Freunde nicht zusammen wohnen durften. Am zweiten Abend passierte etwas, das niemand erwartet hatte. Zwei Jungen aus der Klasse schlichen sich nach der offiziellen Bettruhe heimlich aus dem Zimmer, um an den Strand zu gehen. Als Herr Bauer die beiden bei der nächtlichen Kontrolle vermisste, wurde er sehr besorgt und weckte sofort die anderen Betreuer. Nach einer Stunde bangen Wartens fand man die beiden Jungen wohlbehalten am Strand, wo sie nur die Sterne beobachten wollten. Herr Bauer war erleichtert, aber auch wütend, weil er große Angst gehabt hatte. Am nächsten Morgen mussten die beiden vor der ganzen Klasse erklären, warum ihr Verhalten so gefährlich gewesen war. Trotz dieses Vorfalls blieb die Klassenfahrt für alle unvergesslich, weil die Schüler danach als Gruppe viel enger zusammenhielten.$t$,
    $t$Ça y était enfin : la classe de 8b partait pour cinq jours en voyage scolaire sur la mer Baltique, et tous les élèves étaient très excités. Monsieur Bauer, leur professeur principal, avait planifié le voyage pendant des mois et établi de nombreuses règles pour que tout se déroule sans accroc. L'auberge de jeunesse se trouvait directement sur la plage, et les chambres furent réparties au hasard, ce qui provoqua un certain chaos, car certains amis ne purent pas loger ensemble. Le deuxième soir, quelque chose que personne n'avait prévu se produisit. Deux garçons de la classe se faufilèrent hors de leur chambre en cachette après le couvre-feu officiel pour aller sur la plage. Quand Monsieur Bauer remarqua leur absence lors du contrôle nocturne, il devint très inquiet et réveilla aussitôt les autres accompagnateurs. Après une heure d'attente angoissante, on retrouva les deux garçons sains et saufs sur la plage, où ils voulaient seulement observer les étoiles. Monsieur Bauer fut soulagé, mais aussi furieux, parce qu'il avait eu très peur. Le lendemain matin, les deux garçons durent expliquer devant toute la classe pourquoi leur comportement avait été si dangereux. Malgré cet incident, le voyage scolaire resta inoubliable pour tous, parce que les élèves se sont ensuite beaucoup plus soudés en tant que groupe.$t$,
    $t${"Endlich":"Enfin","war":"était/fut","es":"il/ce","so":"tellement","weit":"loin (soweit=là)","Die":"La","Klasse":"classe","8b":"8b (nom de classe)","fuhr":"partit","für":"pour","fünf":"cinq","Tage":"jours","auf":"en (voyage)","Klassenfahrt":"voyage scolaire","an":"sur/vers","die":"la","Ostsee":"mer Baltique","und":"et","alle":"tous","Schüler":"élèves","waren":"étaient","aufgeregt":"excités","Herr":"Monsieur","Bauer":"Bauer (nom)","ihr":"leur","Klassenlehrer":"professeur principal","hatte":"avait","Fahrt":"voyage","monatelang":"pendant des mois","geplant":"planifié","viele":"de nombreuses","Regeln":"règles","aufgestellt":"établies","damit":"pour que","alles":"tout","reibungslos":"sans accroc","ablaufen":"se dérouler","würde":"se déroulerait (cond.)","Jugendherberge":"auberge de jeunesse","lag":"se trouvait","direkt":"directement","am":"sur le","Strand":"plage","Zimmer":"chambres","wurden":"furent","nach":"selon","dem":"le","Zufallsprinzip":"principe du hasard","verteilt":"réparties","was":"ce qui","zu":"à/vers","einigem":"un certain","Chaos":"chaos","führte":"mena","weil":"parce que","manche":"certains","Freunde":"amis","nicht":"pas","zusammen":"ensemble","wohnen":"loger","durften":"avaient le droit de","Am":"Le","zweiten":"deuxième","Abend":"soir","passierte":"se produisit","etwas":"quelque chose","das":"que","niemand":"personne","erwartet":"attendu","Zwei":"Deux","Jungen":"garçons","aus":"de","der":"la","schlichen":"se faufilèrent","sich":"se","offiziellen":"officiel","Bettruhe":"couvre-feu","heimlich":"en cachette","um":"pour","den":"le","gehen":"aller","Als":"Quand","beiden":"les deux","bei":"lors de","nächtlichen":"nocturne","Kontrolle":"contrôle","vermisste":"constata l'absence de","wurde":"devint","er":"il","sehr":"très","besorgt":"inquiet","weckte":"réveilla","sofort":"aussitôt","anderen":"autres","Betreuer":"accompagnateurs","Nach":"Après","einer":"une","Stunde":"heure","bangen":"angoissée","Wartens":"d'attente","fand":"trouva","man":"on","wohlbehalten":"sains et saufs","wo":"où","sie":"ils/elles","nur":"seulement","Sterne":"étoiles","beobachten":"observer","wollten":"voulaient","erleichtert":"soulagé","aber":"mais","auch":"aussi","wütend":"furieux","große":"grande","Angst":"peur","gehabt":"eu","nächsten":"suivant","Morgen":"matin","mussten":"durent","vor":"devant","ganzen":"toute","erklären":"expliquer","warum":"pourquoi","Verhalten":"comportement","gefährlich":"dangereux","gewesen":"été","Trotz":"Malgré","dieses":"cet","Vorfalls":"incident","blieb":"resta","unvergesslich":"inoubliable","danach":"ensuite","als":"comme/en tant que","Gruppe":"groupe","viel":"beaucoup","enger":"plus étroitement","zusammenhielten":"restèrent soudés"}$t$::jsonb,
    $t$Voyage scolaire (Klassenfahrt) et vie de groupe$t$
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wohin fuhr die Klasse 8b?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$An die Ostsee$t$, true, 1),
    (v_q, $t$In die Alpen$t$, false, 2),
    (v_q, $t$Nach Berlin$t$, false, 3),
    (v_q, $t$An den Rhein$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie lange dauerte die Klassenfahrt?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Zwei Tage$t$, false, 1),
    (v_q, $t$Fünf Tage$t$, true, 2),
    (v_q, $t$Eine Woche$t$, false, 3),
    (v_q, $t$Zehn Tage$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie wurden die Zimmer in der Jugendherberge verteilt?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Nach Wunsch der Schüler$t$, false, 1),
    (v_q, $t$Nach dem Zufallsprinzip$t$, true, 2),
    (v_q, $t$Nach den Noten$t$, false, 3),
    (v_q, $t$Nach dem Alter$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was machten die zwei Jungen nach der Bettruhe?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie schliefen sofort ein$t$, false, 1),
    (v_q, $t$Sie schlichen sich zum Strand$t$, true, 2),
    (v_q, $t$Sie riefen ihre Eltern an$t$, false, 3),
    (v_q, $t$Sie aßen in der Küche$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum wurde Herr Bauer sehr besorgt?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Weil das Wetter schlecht wurde$t$, false, 1),
    (v_q, $t$Weil er die beiden Jungen bei der Kontrolle vermisste$t$, true, 2),
    (v_q, $t$Weil ein Schüler krank wurde$t$, false, 3),
    (v_q, $t$Weil der Bus kaputt war$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum waren die Jungen zum Strand gegangen?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Um zu schwimmen$t$, false, 1),
    (v_q, $t$Um die Sterne zu beobachten$t$, true, 2),
    (v_q, $t$Um Freunde zu treffen$t$, false, 3),
    (v_q, $t$Um Fotos zu machen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie fühlte sich Herr Bauer, als die Jungen gefunden wurden?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Gleichgültig$t$, false, 1),
    (v_q, $t$Erleichtert, aber auch wütend$t$, true, 2),
    (v_q, $t$Traurig$t$, false, 3),
    (v_q, $t$Stolz$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was mussten die beiden Jungen am nächsten Morgen tun?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Die Klassenfahrt sofort verlassen$t$, false, 1),
    (v_q, $t$Vor der Klasse ihr Verhalten erklären$t$, true, 2),
    (v_q, $t$Einen Brief an die Eltern schreiben$t$, false, 3),
    (v_q, $t$Zusätzliche Hausaufgaben machen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum blieb die Klassenfahrt trotz des Vorfalls unvergesslich?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Weil das Wetter perfekt war$t$, false, 1),
    (v_q, $t$Weil die Schüler danach als Gruppe enger zusammenhielten$t$, true, 2),
    (v_q, $t$Weil sie ein Konzert besuchten$t$, false, 3),
    (v_q, $t$Weil sie eine Note dafür bekamen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'die Klassenfahrt'?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Le voyage scolaire$t$, true, 1),
    (v_q, $t$L'examen de fin d'année$t$, false, 2),
    (v_q, $t$La réunion de parents$t$, false, 3),
    (v_q, $t$Le cours de sport$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'die Bettruhe'?$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$L'heure du coucher/couvre-feu$t$, true, 1),
    (v_q, $t$La pause déjeuner$t$, false, 2),
    (v_q, $t$Le réveil du matin$t$, false, 3),
    (v_q, $t$La sieste$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'erleichtert sein'?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Être soulagé$t$, true, 1),
    (v_q, $t$Être fâché$t$, false, 2),
    (v_q, $t$Être fatigué$t$, false, 3),
    (v_q, $t$Être triste$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$'Herr Bauer ___ die Fahrt monatelang geplant.' (haben, Plusquamperfekt)$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$hatte$t$, true, 1),
    (v_q, $t$hatten$t$, false, 2),
    (v_q, $t$hat$t$, false, 3),
    (v_q, $t$habe$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$'Zwei Jungen ___ sich heimlich aus dem Zimmer.' (schleichen, Präteritum)$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$schlichen$t$, true, 1),
    (v_q, $t$schleichten$t$, false, 2),
    (v_q, $t$schleicht$t$, false, 3),
    (v_q, $t$schlich$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$'Nach einer Stunde bangen Wartens ___ man die beiden Jungen.' (finden, Präteritum)$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$fand$t$, true, 1),
    (v_q, $t$fanden$t$, false, 2),
    (v_q, $t$findet$t$, false, 3),
    (v_q, $t$fänden$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Die Jugendherberge lag direkt am ___.$t$, 1, 'facile', 'lueckentext') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Strand$t$, true, 1),
    (v_q, $t$Wald$t$, false, 2),
    (v_q, $t$Bahnhof$t$, false, 3),
    (v_q, $t$Marktplatz$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Herr Bauer hatte viele Regeln ___, damit alles reibungslos ablaufen würde.$t$, 1, 'normal', 'lueckentext') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$aufgestellt$t$, true, 1),
    (v_q, $t$vergessen$t$, false, 2),
    (v_q, $t$gebrochen$t$, false, 3),
    (v_q, $t$erfunden$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Trotz dieses Vorfalls blieb die Klassenfahrt für alle ___.$t$, 1, 'difficile', 'lueckentext') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$unvergesslich$t$, true, 1),
    (v_q, $t$langweilig$t$, false, 2),
    (v_q, $t$gefährlich$t$, false, 3),
    (v_q, $t$unwichtig$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$'Sie fuhren an ___ Ostsee.' Welcher Fall/welche Form bei Richtung?$t$, 1, 'facile', 'grammar') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$an + Akkusativ (die Ostsee)$t$, true, 1),
    (v_q, $t$an + Dativ (der Ostsee)$t$, false, 2),
    (v_q, $t$an + Genitiv$t$, false, 3),
    (v_q, $t$an + Nominativ$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$'..., damit alles reibungslos ablaufen würde.' Welche Satzart drückt 'damit' aus?$t$, 1, 'normal', 'grammar') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Grund$t$, false, 1),
    (v_q, $t$Zweck/Absicht$t$, true, 2),
    (v_q, $t$Bedingung$t$, false, 3),
    (v_q, $t$Zeit$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$'..., wo sie nur die Sterne beobachten wollten.' Was für ein Nebensatz ist das?$t$, 1, 'difficile', 'grammar') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Ein Relativsatz mit Ortsangabe$t$, true, 1),
    (v_q, $t$Ein Konditionalsatz$t$, false, 2),
    (v_q, $t$Ein Vergleichssatz$t$, false, 3),
    (v_q, $t$Ein Konzessivsatz$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, justification)
    VALUES (v_story, $t$Die Klasse 8b fuhr an die Ostsee.$t$, 1, 'facile', 'true_false', $t$Die Klasse 8b fuhr für fünf Tage auf Klassenfahrt an die Ostsee.$t$) RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Wahr$t$, true, 1),
    (v_q, $t$Falsch$t$, false, 2);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, justification)
    VALUES (v_story, $t$Die Zimmer wurden nach Wunsch der Schüler verteilt.$t$, 1, 'normal', 'true_false', $t$Die Zimmer wurden nach dem Zufallsprinzip verteilt.$t$) RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Wahr$t$, false, 1),
    (v_q, $t$Falsch$t$, true, 2);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, justification)
    VALUES (v_story, $t$Die beiden Jungen wurden verletzt am Strand gefunden.$t$, 1, 'difficile', 'true_false', $t$Man fand die beiden Jungen wohlbehalten am Strand, sie wollten nur die Sterne beobachten.$t$) RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Wahr$t$, false, 1),
    (v_q, $t$Falsch$t$, true, 2);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer, rubric)
    VALUES (v_story, $t$Schreibe (ca. 80-100 Wörter) über eine eigene Erfahrung mit einer Klassenfahrt oder wie du dir eine ideale Klassenfahrt vorstellst. Nutze mindestens einen weil-Satz und einen damit-Satz.$t$, 1, 'normal', 'production', $t$Ich stelle mir eine ideale Klassenfahrt so vor, dass wir viel Zeit in der Natur verbringen, weil man dort am besten abschalten kann. Es wäre schön, wenn wir gemeinsame Aktivitäten wie Wandern oder Kanufahren machen würden, damit die ganze Klasse zusammenwächst. Natürlich braucht man auch klare Regeln, weil sonst Chaos entstehen könnte. Trotzdem finde ich es wichtig, dass die Lehrer den Schülern auch etwas Freiheit lassen, damit die Fahrt nicht wie normaler Unterricht wirkt.$t$, $t$[{"criterion":"Aufgabenerfüllung","description":"Eigene Erfahrung oder Vorstellung wird beschrieben"},{"criterion":"Wortschatz","description":"Vokabular zu Klassenfahrt und Gruppenleben korrekt"},{"criterion":"Grammatik","description":"Mindestens ein weil-Satz und ein damit-Satz korrekt"},{"criterion":"Kohärenz","description":"Text ist logisch und flüssig aufgebaut"}]$t$::jsonb);

END $block$;

-- 6. Narren in Köln
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary, culture_note) VALUES (
    'B1',
    $t$Narren in Köln$t$,
    $t$Jedes Jahr im Februar verwandelt sich die Stadt Köln für einige Tage komplett, denn dann beginnt der Karneval, den die Menschen dort liebevoll die fünfte Jahreszeit nennen. Für Tim, der zum ersten Mal seine Verwandten in Köln besuchte, war das ein völlig neues Erlebnis. Sein Cousin Jan erklärte ihm, dass der Karneval eigentlich schon im November mit dem elften Tag des elften Monats beginnt, aber die eigentlichen Feierlichkeiten erst im Februar oder März stattfinden. Der wichtigste Tag ist der Rosenmontag, wenn ein riesiger Umzug durch die Straßen zieht und Tausende Menschen bunte Kostüme tragen. Tim war überrascht, dass sich sogar Erwachsene mit ernsten Berufen als Clowns, Piraten oder Tiere verkleideten, weil während des Karnevals die normalen Regeln des Alltags für kurze Zeit außer Kraft gesetzt werden. Jan erzählte ihm auch, dass der Kölner Karneval eine lange Tradition hat, die bis ins Mittelalter zurückreicht, obwohl die heutige Form erst im neunzehnten Jahrhundert entstand. Am Rosenmontag standen Tim und Jan stundenlang am Straßenrand und fingen Süßigkeiten, die von den Wagen geworfen wurden. Tim verstand am Ende, warum die Menschen in Köln diese Tage im Jahr so sehr lieben: Es geht darum, gemeinsam zu lachen und den Alltag für einen Moment zu vergessen.$t$,
    $t$Chaque année en février, la ville de Cologne se transforme complètement pendant quelques jours, car c'est alors que commence le carnaval, que les habitants appellent affectueusement la cinquième saison. Pour Tim, qui rendait visite pour la première fois à ses parents à Cologne, ce fut une expérience totalement nouvelle. Son cousin Jan lui expliqua que le carnaval commence en réalité dès novembre, le onzième jour du onzième mois, mais que les vraies festivités n'ont lieu qu'en février ou mars. Le jour le plus important est le lundi des roses (Rosenmontag), quand un immense défilé traverse les rues et que des milliers de personnes portent des costumes colorés. Tim fut surpris que même des adultes exerçant des métiers sérieux se déguisent en clowns, pirates ou animaux, car pendant le carnaval, les règles normales du quotidien sont suspendues pour un court moment. Jan lui raconta aussi que le carnaval de Cologne a une longue tradition remontant au Moyen Âge, bien que sa forme actuelle ne soit apparue qu'au dix-neuvième siècle. Le lundi des roses, Tim et Jan restèrent des heures au bord de la rue et attrapèrent des bonbons lancés depuis les chars. Tim comprit finalement pourquoi les habitants de Cologne aiment tant ces jours de l'année : il s'agit de rire ensemble et d'oublier le quotidien pour un moment.$t$,
    $t${"Jedes":"Chaque","Jahr":"année","im":"en/au","Februar":"février","verwandelt":"transforme","sich":"se","die":"la","Stadt":"ville","Köln":"Cologne","für":"pour/pendant","einige":"quelques","Tage":"jours","komplett":"complètement","denn":"car","dann":"alors","beginnt":"commence","der":"le","Karneval":"carnaval","den":"que","Menschen":"gens","dort":"là-bas","liebevoll":"affectueusement","fünfte":"cinquième","Jahreszeit":"saison","nennen":"appellent","Für":"Pour","Tim":"Tim (prénom)","zum":"pour la","ersten":"première","Mal":"fois","seine":"ses","Verwandten":"parents/proches","in":"à","besuchte":"rendait visite","war":"était","das":"ce/cela","ein":"une","völlig":"totalement","neues":"nouvelle","Erlebnis":"expérience","Sein":"Son","Cousin":"cousin","Jan":"Jan (prénom)","erklärte":"expliqua","ihm":"lui","dass":"que","eigentlich":"en réalité","schon":"déjà","November":"novembre","mit":"avec","dem":"le","elften":"onzième","Tag":"jour","des":"du","Monats":"mois","aber":"mais","eigentlichen":"véritables","Feierlichkeiten":"festivités","erst":"seulement","oder":"ou","März":"mars","stattfinden":"ont lieu","Der":"Le","wichtigste":"plus important","ist":"est","Rosenmontag":"lundi des roses","wenn":"quand","riesiger":"immense","Umzug":"défilé","durch":"à travers","Straßen":"rues","zieht":"traverse","und":"et","Tausende":"des milliers","bunte":"colorés","Kostüme":"costumes","tragen":"portent","überrascht":"surpris","sogar":"même","Erwachsene":"adultes","ernsten":"sérieux","Berufen":"métiers","als":"comme/en","Clowns":"clowns","Piraten":"pirates","Tiere":"animaux","verkleideten":"déguisaient","weil":"parce que","während":"pendant","Karnevals":"du carnaval","normalen":"normales","Regeln":"règles","Alltags":"du quotidien","kurze":"courte","Zeit":"durée/temps","außer":"hors de","Kraft":"vigueur","gesetzt":"mises (hors vigueur)","werden":"sont (passif)","erzählte":"raconta","auch":"aussi","Kölner":"de Cologne","eine":"une","lange":"longue","Tradition":"tradition","hat":"a","bis":"jusque","ins":"dans le","Mittelalter":"Moyen Âge","zurückreicht":"remonte","obwohl":"bien que","heutige":"actuelle","Form":"forme","neunzehnten":"dix-neuvième","Jahrhundert":"siècle","entstand":"apparut","Am":"Le","standen":"restèrent debout","stundenlang":"pendant des heures","am":"au","Straßenrand":"bord de la rue","fingen":"attrapèrent","Süßigkeiten":"bonbons","von":"depuis","Wagen":"chars","geworfen":"lancés","wurden":"furent","verstand":"comprit","Ende":"fin","warum":"pourquoi","diese":"ces","so":"si","sehr":"tant","lieben":"aiment","Es":"Il (impersonnel)","geht":"s'agit","darum":"de cela","gemeinsam":"ensemble","zu":"à/de","lachen":"rire","Alltag":"quotidien","einen":"un","Moment":"instant","vergessen":"oublier"}$t$::jsonb,
    $t$Le carnaval de Cologne (Karneval/Fasching)$t$
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$In welcher Stadt findet der bekannte Karneval statt, um den es im Text geht?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$In München$t$, false, 1),
    (v_q, $t$In Köln$t$, true, 2),
    (v_q, $t$In Berlin$t$, false, 3),
    (v_q, $t$In Hamburg$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie nennt man den Karneval liebevoll?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Die vierte Jahreszeit$t$, false, 1),
    (v_q, $t$Die fünfte Jahreszeit$t$, true, 2),
    (v_q, $t$Die Sommerzeit$t$, false, 3),
    (v_q, $t$Die stille Zeit$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wann beginnt der Karneval eigentlich, laut Jan?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Am ersten Januar$t$, false, 1),
    (v_q, $t$Am elften Tag des elften Monats$t$, true, 2),
    (v_q, $t$Am ersten Mai$t$, false, 3),
    (v_q, $t$Am dreißigsten Oktober$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie heißt der wichtigste Tag des Karnevals?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Der Rosenmontag$t$, true, 1),
    (v_q, $t$Der Aschermittwoch$t$, false, 2),
    (v_q, $t$Der Karnevalssonntag$t$, false, 3),
    (v_q, $t$Der Faschingsdienstag$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was war für Tim überraschend?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Dass es keine Kostüme gab$t$, false, 1),
    (v_q, $t$Dass sich sogar Erwachsene verkleideten$t$, true, 2),
    (v_q, $t$Dass niemand feierte$t$, false, 3),
    (v_q, $t$Dass es keine Umzüge gab$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Woher stammt die lange Tradition des Kölner Karnevals laut Text?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Aus dem zwanzigsten Jahrhundert$t$, false, 1),
    (v_q, $t$Aus dem Mittelalter, mit heutiger Form aus dem neunzehnten Jahrhundert$t$, true, 2),
    (v_q, $t$Aus der Antike$t$, false, 3),
    (v_q, $t$Aus dem sechzehnten Jahrhundert$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was fingen Tim und Jan am Straßenrand?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Blumen$t$, false, 1),
    (v_q, $t$Süßigkeiten$t$, true, 2),
    (v_q, $t$Bücher$t$, false, 3),
    (v_q, $t$Luftballons$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was wird während des Karnevals laut Text für kurze Zeit außer Kraft gesetzt?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Die Verkehrsregeln$t$, false, 1),
    (v_q, $t$Die normalen Regeln des Alltags$t$, true, 2),
    (v_q, $t$Die Gesetze der Stadt$t$, false, 3),
    (v_q, $t$Die Schulpflicht$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was verstand Tim am Ende über den Karneval?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Dass er nur für Kinder ist$t$, false, 1),
    (v_q, $t$Dass es darum geht, gemeinsam zu lachen und den Alltag zu vergessen$t$, true, 2),
    (v_q, $t$Dass er zu teuer ist$t$, false, 3),
    (v_q, $t$Dass er nur in Köln existiert$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'der Umzug' (im Karnevalskontext)?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Le défilé$t$, true, 1),
    (v_q, $t$Le déménagement$t$, false, 2),
    (v_q, $t$Le voyage$t$, false, 3),
    (v_q, $t$Le rassemblement calme$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'sich verkleiden'?$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Se déguiser$t$, true, 1),
    (v_q, $t$Se maquiller uniquement$t$, false, 2),
    (v_q, $t$Se dépêcher$t$, false, 3),
    (v_q, $t$Se reposer$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'außer Kraft gesetzt werden'?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Être renforcé$t$, false, 1),
    (v_q, $t$Être suspendu/ne plus s'appliquer$t$, true, 2),
    (v_q, $t$Être célébré$t$, false, 3),
    (v_q, $t$Être interdit à vie$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$'Die Stadt Köln ___ sich für einige Tage komplett.' (verwandeln, Präsens)$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$verwandelt$t$, true, 1),
    (v_q, $t$verwandeln$t$, false, 2),
    (v_q, $t$verwandelte$t$, false, 3),
    (v_q, $t$verwandelst$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$'Ein riesiger Umzug ___ durch die Straßen.' (ziehen, Präsens)$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$zieht$t$, true, 1),
    (v_q, $t$zog$t$, false, 2),
    (v_q, $t$zöge$t$, false, 3),
    (v_q, $t$gezogen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$'Tim ___ am Ende, warum die Menschen diese Tage lieben.' (verstehen, Präteritum)$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$verstand$t$, true, 1),
    (v_q, $t$verstehen$t$, false, 2),
    (v_q, $t$verstanden$t$, false, 3),
    (v_q, $t$versteht$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Der Karneval wird liebevoll die ___ Jahreszeit genannt.$t$, 1, 'facile', 'lueckentext') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$fünfte$t$, true, 1),
    (v_q, $t$dritte$t$, false, 2),
    (v_q, $t$erste$t$, false, 3),
    (v_q, $t$zweite$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Am Rosenmontag zieht ein riesiger ___ durch die Straßen.$t$, 1, 'normal', 'lueckentext') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Umzug$t$, true, 1),
    (v_q, $t$Zug$t$, false, 2),
    (v_q, $t$Markt$t$, false, 3),
    (v_q, $t$Fluss$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Die heutige Form des Karnevals entstand erst im ___ Jahrhundert.$t$, 1, 'difficile', 'lueckentext') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$neunzehnten$t$, true, 1),
    (v_q, $t$zwölften$t$, false, 2),
    (v_q, $t$sechzehnten$t$, false, 3),
    (v_q, $t$zwanzigsten$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$'Sie warfen Süßigkeiten von ___ Wagen.' Welcher Fall folgt auf 'von'?$t$, 1, 'facile', 'grammar') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Dativ$t$, true, 1),
    (v_q, $t$Akkusativ$t$, false, 2),
    (v_q, $t$Genitiv$t$, false, 3),
    (v_q, $t$Nominativ$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$'..., obwohl die heutige Form erst im neunzehnten Jahrhundert entstand.' Was drückt 'obwohl' hier aus?$t$, 1, 'normal', 'grammar') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Einen Gegensatz$t$, true, 1),
    (v_q, $t$Einen Grund$t$, false, 2),
    (v_q, $t$Eine Bedingung$t$, false, 3),
    (v_q, $t$Eine Zeitangabe ohne Kontrast$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$'..., weil während des Karnevals die normalen Regeln außer Kraft gesetzt werden.' Welche Verbform ist 'werden gesetzt'?$t$, 1, 'difficile', 'grammar') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Aktiv Präsens$t$, false, 1),
    (v_q, $t$Passiv Präsens$t$, true, 2),
    (v_q, $t$Perfekt Aktiv$t$, false, 3),
    (v_q, $t$Konjunktiv II$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, justification)
    VALUES (v_story, $t$Der Karneval in Köln findet im Februar statt.$t$, 1, 'facile', 'true_false', $t$Die eigentlichen Feierlichkeiten finden im Februar oder März statt.$t$) RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Wahr$t$, true, 1),
    (v_q, $t$Falsch$t$, false, 2);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, justification)
    VALUES (v_story, $t$Nur Kinder verkleiden sich beim Kölner Karneval.$t$, 1, 'normal', 'true_false', $t$Tim war überrascht, dass sich sogar Erwachsene mit ernsten Berufen verkleideten.$t$) RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Wahr$t$, false, 1),
    (v_q, $t$Falsch$t$, true, 2);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, justification)
    VALUES (v_story, $t$Der Kölner Karneval hat laut Text keine lange Tradition.$t$, 1, 'difficile', 'true_false', $t$Jan erzählte, dass der Karneval eine lange Tradition hat, die bis ins Mittelalter zurückreicht.$t$) RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Wahr$t$, false, 1),
    (v_q, $t$Falsch$t$, true, 2);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer, rubric)
    VALUES (v_story, $t$Beschreibe (ca. 80-100 Wörter) ein Fest oder eine Tradition aus deinem Land, das dem Karneval ähnelt. Nutze mindestens einen weil-Satz und einen obwohl-Satz.$t$, 1, 'normal', 'production', $t$In meinem Land gibt es auch ein Fest, bei dem sich viele Menschen verkleiden und gemeinsam feiern, weil es eine alte Tradition ist. Obwohl das Fest nicht so groß ist wie der Kölner Karneval, hat es trotzdem eine ähnliche Funktion, denn die Menschen vergessen für ein paar Tage ihren Alltag. Ich finde es schön, weil Jung und Alt zusammen feiern und viel gelacht wird. Obwohl manche Traditionen alt sind, bleiben sie bis heute lebendig, weil sie den Menschen wichtig sind.$t$, $t$[{"criterion":"Aufgabenerfüllung","description":"Eigenes Fest wird klar beschrieben und mit dem Karneval verglichen"},{"criterion":"Wortschatz","description":"Vokabular zu Festen und Traditionen korrekt verwendet"},{"criterion":"Grammatik","description":"Mindestens ein weil-Satz und ein obwohl-Satz korrekt"},{"criterion":"Kohärenz","description":"Text ist gut strukturiert und verständlich"}]$t$::jsonb);

END $block$;

