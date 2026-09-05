-- Contenu "patrimoine culturel allemand" — niveau B1 (8 histoires).
-- Contes/légendes du domaine public réécrits, ou fictions originales inspirées
-- de genres/thèmes majeurs de la culture et de l'école allemandes.

-- 1. Siegfried und der Drache
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary, culture_note) VALUES (
    'B1',
    $t$Siegfried und der Drache$t$,
    $t$Vor langer Zeit lebte in Xanten ein junger Held namens Siegfried. Er war stark und mutig, und er wollte die Welt sehen. Eines Tages ritt er durch einen dunklen Wald und hörte ein lautes Brüllen. Ein riesiger Drache lag dort und bewachte einen alten Schatz. Das Ungeheuer spuckte Feuer und Rauch, aber Siegfried hatte keine Angst. Er zog sein Schwert und griff den Drachen mutig an. Der Kampf dauerte lange, denn der Drache war sehr stark. Schließlich traf Siegfried das Herz des Ungeheuers, und der Drache fiel tot zu Boden. Ein weiser alter Mann, der den Kampf beobachtet hatte, erzählte Siegfried ein Geheimnis: Wer im Blut des Drachen badete, wurde unverwundbar. Siegfried zog sich aus und badete im warmen Blut. Doch ein einziges Lindenblatt fiel auf seinen Rücken, genau zwischen die Schultern. Diese kleine Stelle blieb ungeschützt. Später, in einer anderen Geschichte, wurde genau diese Stelle sein Verhängnis. Trotzdem war Siegfried von diesem Tag an fast unbesiegbar. Die Menschen im ganzen Land erzählten sich die Geschichte von seinem Mut. So wurde Siegfried zu einem der größten Helden der deutschen Sagen, und sein Name lebt bis heute in Liedern und Erzählungen weiter.$t$,
    $t$Il y a longtemps, vivait à Xanten un jeune héros nommé Siegfried. Il était fort et courageux, et il voulait voir le monde. Un jour, il chevauchait à travers une forêt sombre et entendit un rugissement bruyant. Un dragon énorme se trouvait là et gardait un vieux trésor. Le monstre crachait du feu et de la fumée, mais Siegfried n'avait pas peur. Il tira son épée et attaqua courageusement le dragon. Le combat dura longtemps, car le dragon était très fort. Finalement, Siegfried atteignit le cœur du monstre, et le dragon tomba mort au sol. Un vieil homme sage, qui avait observé le combat, raconta à Siegfried un secret : celui qui se baignait dans le sang du dragon devenait invulnérable. Siegfried se déshabilla et se baigna dans le sang chaud. Mais une seule feuille de tilleul tomba sur son dos, exactement entre les épaules. Ce petit endroit resta sans protection. Plus tard, dans une autre histoire, cet endroit devint précisément sa perte. Malgré cela, Siegfried était à partir de ce jour presque invincible. Les gens de tout le pays se racontaient l'histoire de son courage. Ainsi Siegfried devint l'un des plus grands héros des légendes allemandes, et son nom continue de vivre aujourd'hui dans les chants et les récits.$t$,
    $t${"Vor":"avant / il y a","langer":"long","Zeit":"temps","lebte":"vivait","in":"à/dans","Xanten":"Xanten (ville)","ein":"un","junger":"jeune","Held":"héros","namens":"nommé","Siegfried":"Siegfried","Er":"il","war":"était","stark":"fort","und":"et","mutig":"courageux","er":"il","wollte":"voulait","die":"le/la","Welt":"monde","sehen":"voir","Eines":"un (jour)","Tages":"jour","ritt":"chevauchait","durch":"à travers","einen":"un","dunklen":"sombre","Wald":"forêt","hörte":"entendit","lautes":"bruyant","Brüllen":"rugissement","Ein":"un","riesiger":"énorme","Drache":"dragon","lag":"gisait","dort":"là","bewachte":"gardait","alten":"vieux","Schatz":"trésor","Das":"le","Ungeheuer":"monstre","spuckte":"crachait","Feuer":"feu","Rauch":"fumée","aber":"mais","hatte":"avait","keine":"aucune","Angst":"peur","zog":"tira","sein":"son","Schwert":"épée","griff":"attaqua","den":"le","Drachen":"dragon","an":"(part. de griff...an)","Der":"le","Kampf":"combat","dauerte":"dura","lange":"longtemps","denn":"car","der":"le","sehr":"très","Schließlich":"finalement","traf":"atteignit","das":"le","Herz":"cœur","des":"du","Ungeheuers":"du monstre","fiel":"tomba","tot":"mort","zu":"à","Boden":"sol","weiser":"sage","alter":"vieux","Mann":"homme","beobachtet":"observé","erzählte":"raconta","Geheimnis":"secret","Wer":"celui qui","im":"dans le","Blut":"sang","badete":"se baignait","wurde":"devint","unverwundbar":"invulnérable","sich":"se","aus":"(part. de zog sich aus)","warmen":"chaud","Doch":"mais","einziges":"unique","Lindenblatt":"feuille de tilleul","auf":"sur","seinen":"son","Rücken":"dos","genau":"exactement","zwischen":"entre","Schultern":"épaules","Diese":"cette","kleine":"petite","Stelle":"endroit","blieb":"resta","ungeschützt":"non protégé","Später":"plus tard","einer":"une","anderen":"autre","Geschichte":"histoire","diese":"cette","Verhängnis":"perte / destin funeste","Trotzdem":"malgré tout","von":"à partir de","diesem":"ce","Tag":"jour","fast":"presque","unbesiegbar":"invincible","Die":"les","Menschen":"gens","ganzen":"tout entier","Land":"pays","erzählten":"racontaient","seinem":"son","Mut":"courage","So":"ainsi","einem":"un","größten":"plus grands","Helden":"héros","deutschen":"allemandes","Sagen":"légendes","Name":"nom","lebt":"vit","bis":"jusqu'à","heute":"aujourd'hui","Liedern":"chants","Erzählungen":"récits","weiter":"encore/plus loin"}$t$::jsonb,
    $t$Épopée médiévale allemande$t$
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wogegen kämpfte Siegfried im Wald?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Gegen einen Ritter$t$, false, 1),
    (v_q, $t$Gegen einen Drachen$t$, true, 2),
    (v_q, $t$Gegen einen Bären$t$, false, 3),
    (v_q, $t$Gegen einen anderen Helden$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bewachte der Drache?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Ein Schwert$t$, false, 1),
    (v_q, $t$Eine Prinzessin$t$, false, 2),
    (v_q, $t$Einen alten Schatz$t$, true, 3),
    (v_q, $t$Ein Dorf$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie besiegte Siegfried das Ungeheuer letztlich?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er traf sein Herz mit dem Schwert$t$, true, 1),
    (v_q, $t$Er verbrannte es mit Feuer$t$, false, 2),
    (v_q, $t$Er ließ es verhungern$t$, false, 3),
    (v_q, $t$Er überredete es$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was passierte, als Siegfried im Blut des Drachen badete?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er wurde krank$t$, false, 1),
    (v_q, $t$Er wurde unverwundbar$t$, true, 2),
    (v_q, $t$Er wurde unsichtbar$t$, false, 3),
    (v_q, $t$Er wurde König$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum blieb eine Stelle auf Siegfrieds Rücken ungeschützt?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er hatte dort ein Hemd an$t$, false, 1),
    (v_q, $t$Ein Lindenblatt fiel darauf$t$, true, 2),
    (v_q, $t$Er badete zu kurz$t$, false, 3),
    (v_q, $t$Der Drache berührte ihn dort$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutete diese ungeschützte Stelle für Siegfrieds weiteres Schicksal laut dem Text?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie war ohne jede Bedeutung$t$, false, 1),
    (v_q, $t$Sie wurde später sein Verhängnis$t$, true, 2),
    (v_q, $t$Sie machte ihn noch stärker$t$, false, 3),
    (v_q, $t$Sie heilte von selbst$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wer erzählte Siegfried das Geheimnis über das Blut?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Ein weiser alter Mann$t$, true, 1),
    (v_q, $t$Ein König$t$, false, 2),
    (v_q, $t$Seine Mutter$t$, false, 3),
    (v_q, $t$Ein anderer Drache$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie wurde Siegfried am Ende der Geschichte beschrieben?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Als schwacher Bauer$t$, false, 1),
    (v_q, $t$Als einer der größten Helden der deutschen Sagen$t$, true, 2),
    (v_q, $t$Als vergessener Mann$t$, false, 3),
    (v_q, $t$Als feiger Ritter$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was zeigt der letzte Satz über die Bedeutung von Siegfrieds Geschichte?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Die Geschichte wurde schnell vergessen$t$, false, 1),
    (v_q, $t$Sein Name lebt bis heute in Liedern weiter$t$, true, 2),
    (v_q, $t$Niemand glaubte der Geschichte$t$, false, 3),
    (v_q, $t$Sie wurde nie aufgeschrieben$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'der Drache' auf Französisch?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$le chevalier$t$, false, 1),
    (v_q, $t$le dragon$t$, true, 2),
    (v_q, $t$le trésor$t$, false, 3),
    (v_q, $t$l'épée$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'unverwundbar' im Kontext des Textes?$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$sehr schwach$t$, false, 1),
    (v_q, $t$man kann ihn nicht verletzen$t$, true, 2),
    (v_q, $t$unsichtbar$t$, false, 3),
    (v_q, $t$sehr freundlich$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welches Wort passt am besten als Synonym zu 'das Verhängnis' im Text?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$das Glück$t$, false, 1),
    (v_q, $t$das Schicksal / der Untergang$t$, true, 2),
    (v_q, $t$der Sieg$t$, false, 3),
    (v_q, $t$die Belohnung$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Form ist das Präteritum von 'sein' in 'Er war stark'?$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$ist$t$, false, 1),
    (v_q, $t$war$t$, true, 2),
    (v_q, $t$sei$t$, false, 3),
    (v_q, $t$wird$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Im Satz 'Er zog sein Schwert' steht das Verb im Präteritum. Wie lautet der Infinitiv?$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$zeigen$t$, false, 1),
    (v_q, $t$ziehen$t$, true, 2),
    (v_q, $t$zwingen$t$, false, 3),
    (v_q, $t$zeugen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Im Satz 'Ein weiser alter Mann, der den Kampf beobachtet hatte' steht 'beobachtet hatte' in welcher Zeitform?$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Perfekt$t$, false, 1),
    (v_q, $t$Präteritum$t$, false, 2),
    (v_q, $t$Plusquamperfekt$t$, true, 3),
    (v_q, $t$Futur I$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$Stell dir vor, du triffst Siegfried nach seinem Sieg über den Drachen. Schreibe 4-6 Sätze: Was würdest du ihn fragen, und was denkst du, würde er antworten?$t$, 1, 'normal', 'production', $t$Ich würde Siegfried fragen, ob er vor dem Kampf Angst hatte. Er würde wahrscheinlich sagen, dass er zwar nervös war, aber trotzdem kämpfen musste. Ich würde auch wissen wollen, warum er im Blut des Drachen badete. Er würde erklären, dass er dadurch unverwundbar werden wollte. Zum Schluss würde ich ihm sagen, dass seine Geschichte auch heute noch viele Menschen fasziniert.$t$);

END $block$;

-- 2. Der Handel des Doktor Faust
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary, culture_note) VALUES (
    'B1',
    $t$Der Handel des Doktor Faust$t$,
    $t$In der Stadt Wittenberg lebte einst ein berühmter Gelehrter namens Doktor Faust. Er hatte sein ganzes Leben dem Studium gewidmet und kannte Medizin, Philosophie und Theologie. Trotzdem war er nicht zufrieden, denn er wollte alles Wissen der Welt besitzen. Eines Nachts, als er allein in seinem Arbeitszimmer saß, erschien ihm eine geheimnisvolle Gestalt. Sie versprach ihm unbegrenztes Wissen und ewige Jugend, wenn er dafür seine Seele opferte. Faust zögerte lange, doch seine Neugier war stärker als seine Vorsicht. Er unterschrieb den Vertrag mit seinem eigenen Blut. In den folgenden Jahren reiste Faust durch viele Länder, lernte Geheimnisse der Natur und erlebte Abenteuer, von denen andere Menschen nur träumten. Doch mit der Zeit merkte er, dass ihm etwas fehlte: echte Freude und innerer Frieden. Sein Wissen machte ihn nicht glücklich, sondern einsam. Als die vereinbarte Zeit ablief, musste Faust den Preis für seinen Handel bezahlen. Die alte Geschichte warnt bis heute davor, den eigenen Ehrgeiz über alles andere zu stellen. Wer nur nach Macht und Wissen strebt, vergisst leicht, was im Leben wirklich zählt: Liebe, Freundschaft und Zufriedenheit.$t$,
    $t$Dans la ville de Wittenberg vivait autrefois un savant célèbre nommé le docteur Faust. Il avait consacré toute sa vie à l'étude et connaissait la médecine, la philosophie et la théologie. Pourtant, il n'était pas satisfait, car il voulait posséder tout le savoir du monde. Une nuit, alors qu'il était assis seul dans son bureau, une silhouette mystérieuse lui apparut. Elle lui promit un savoir illimité et une jeunesse éternelle, s'il sacrifiait pour cela son âme. Faust hésita longtemps, mais sa curiosité était plus forte que sa prudence. Il signa le contrat avec son propre sang. Dans les années qui suivirent, Faust voyagea à travers de nombreux pays, apprit les secrets de la nature et vécut des aventures dont d'autres personnes ne faisaient que rêver. Mais avec le temps, il remarqua qu'il lui manquait quelque chose : une joie véritable et une paix intérieure. Son savoir ne le rendait pas heureux, mais solitaire. Quand le temps convenu expira, Faust dut payer le prix de son marché. La vieille histoire avertit encore aujourd'hui de ne pas placer sa propre ambition au-dessus de tout le reste. Celui qui ne vise que le pouvoir et le savoir oublie facilement ce qui compte vraiment dans la vie : l'amour, l'amitié et le contentement.$t$,
    $t${"In":"dans","in":"dans","der":"la","Stadt":"ville","Wittenberg":"Wittenberg","lebte":"vivait","einst":"autrefois","ein":"un","berühmter":"célèbre","Gelehrter":"savant","namens":"nommé","Doktor":"docteur","Faust":"Faust","Er":"il","hatte":"avait","sein":"sa","ganzes":"toute (entière)","Leben":"vie","dem":"à l'","Studium":"étude","gewidmet":"consacré","und":"et","kannte":"connaissait","Medizin":"médecine","Philosophie":"philosophie","Theologie":"théologie","Trotzdem":"pourtant","war":"était","er":"il","nicht":"ne...pas","zufrieden":"satisfait","denn":"car","wollte":"voulait","alles":"tout","Wissen":"savoir","Welt":"monde","besitzen":"posséder","Eines":"une (nuit)","Nachts":"de nuit","als":"alors que","allein":"seul","seinem":"son","Arbeitszimmer":"bureau","saß":"était assis","erschien":"apparut","ihm":"à lui","eine":"une","geheimnisvolle":"mystérieuse","Gestalt":"silhouette","Sie":"elle","versprach":"promit","unbegrenztes":"illimité","ewige":"éternelle","Jugend":"jeunesse","wenn":"si","dafür":"en échange","seine":"son/sa","Seele":"âme","opferte":"sacrifiait","zögerte":"hésita","lange":"longtemps","doch":"mais","Neugier":"curiosité","stärker":"plus forte","Vorsicht":"prudence","unterschrieb":"signa","den":"le","Vertrag":"contrat","mit":"avec","eigenen":"propre","Blut":"sang","folgenden":"suivantes","Jahren":"années","reiste":"voyagea","durch":"à travers","viele":"de nombreux","Länder":"pays","lernte":"apprit","Geheimnisse":"secrets","Natur":"nature","erlebte":"vécut","Abenteuer":"aventures","von":"dont","denen":"dont","andere":"d'autres","Menschen":"gens","nur":"seulement","träumten":"rêvaient","Doch":"mais","Zeit":"temps","merkte":"remarqua","dass":"que","etwas":"quelque chose","fehlte":"manquait","echte":"véritable","Freude":"joie","innerer":"intérieure","Frieden":"paix","Sein":"son","machte":"rendait","ihn":"le","glücklich":"heureux","sondern":"mais","einsam":"solitaire","Als":"quand","die":"le","vereinbarte":"convenu","ablief":"expira","musste":"dut","Preis":"prix","für":"pour","seinen":"son","Handel":"marché","bezahlen":"payer","Die":"la","alte":"vieille","Geschichte":"histoire","warnt":"avertit","bis":"jusqu'à","heute":"aujourd'hui","davor":"contre cela","Ehrgeiz":"ambition","über":"au-dessus de","zu":"à","stellen":"placer","Wer":"celui qui","nach":"vers","Macht":"pouvoir","strebt":"aspire","vergisst":"oublie","leicht":"facilement","was":"ce qui","im":"dans la","wirklich":"vraiment","zählt":"compte","Liebe":"amour","Freundschaft":"amitié","Zufriedenheit":"contentement"}$t$::jsonb,
    $t$Légende allemande$t$
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was war Doktor Faust von Beruf?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Ein Bauer$t$, false, 1),
    (v_q, $t$Ein Gelehrter$t$, true, 2),
    (v_q, $t$Ein Soldat$t$, false, 3),
    (v_q, $t$Ein Priester$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum war Faust trotz seines Wissens nicht zufrieden?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er hatte kein Geld$t$, false, 1),
    (v_q, $t$Er wollte alles Wissen der Welt besitzen$t$, true, 2),
    (v_q, $t$Er war krank$t$, false, 3),
    (v_q, $t$Er hatte keine Freunde in Wittenberg$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was genau versprach die geheimnisvolle Gestalt Faust im Austausch für seine Seele?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Reichtum und ein großes Haus$t$, false, 1),
    (v_q, $t$Unbegrenztes Wissen und ewige Jugend$t$, true, 2),
    (v_q, $t$Macht über das ganze Land$t$, false, 3),
    (v_q, $t$Einen Platz im Himmel$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Womit unterschrieb Faust den Vertrag?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Mit Tinte$t$, false, 1),
    (v_q, $t$Mit seinem eigenen Blut$t$, true, 2),
    (v_q, $t$Mit einem Bleistift$t$, false, 3),
    (v_q, $t$Er unterschrieb gar nicht$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was tat Faust in den Jahren nach dem Vertrag?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er blieb zu Hause in Wittenberg$t$, false, 1),
    (v_q, $t$Er reiste durch viele Länder und erlebte Abenteuer$t$, true, 2),
    (v_q, $t$Er wurde Bauer$t$, false, 3),
    (v_q, $t$Er verlor sein ganzes Wissen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was erkannte Faust trotz all seiner Abenteuer und seines Wissens?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Dass er endlich glücklich war$t$, false, 1),
    (v_q, $t$Dass ihm echte Freude und innerer Frieden fehlten$t$, true, 2),
    (v_q, $t$Dass er unsterblich geworden war$t$, false, 3),
    (v_q, $t$Dass sein Vertrag ungültig war$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was musste Faust tun, als die vereinbarte Zeit ablief?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Den Preis für seinen Handel bezahlen$t$, true, 1),
    (v_q, $t$Noch mehr Wissen sammeln$t$, false, 2),
    (v_q, $t$Wieder studieren$t$, false, 3),
    (v_q, $t$Nach Wittenberg zurückkehren$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wovor warnt die Geschichte laut dem Text bis heute?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Vor dem Reisen$t$, false, 1),
    (v_q, $t$Davor, den eigenen Ehrgeiz über alles andere zu stellen$t$, true, 2),
    (v_q, $t$Vor der Medizin$t$, false, 3),
    (v_q, $t$Vor der Philosophie$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was zählt laut dem letzten Satz im Leben wirklich?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Macht und Wissen$t$, false, 1),
    (v_q, $t$Reichtum und Ruhm$t$, false, 2),
    (v_q, $t$Liebe, Freundschaft und Zufriedenheit$t$, true, 3),
    (v_q, $t$Ewige Jugend$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'der Gelehrte' auf Französisch?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$le paysan$t$, false, 1),
    (v_q, $t$le savant$t$, true, 2),
    (v_q, $t$le soldat$t$, false, 3),
    (v_q, $t$le voisin$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'opfern' im Satz 'wenn er dafür seine Seele opferte'?$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$gewinnen$t$, false, 1),
    (v_q, $t$sacrifier$t$, true, 2),
    (v_q, $t$verkaufen$t$, false, 3),
    (v_q, $t$verstecken$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welches Wort ist im Text ein passendes Synonym für 'der Ehrgeiz'?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$die Zufriedenheit$t$, false, 1),
    (v_q, $t$das Streben nach Erfolg$t$, true, 2),
    (v_q, $t$die Ruhe$t$, false, 3),
    (v_q, $t$die Freundschaft$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Zeitform ist 'Er hatte sein ganzes Leben dem Studium gewidmet'?$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Präsens$t$, false, 1),
    (v_q, $t$Perfekt$t$, false, 2),
    (v_q, $t$Plusquamperfekt$t$, true, 3),
    (v_q, $t$Futur$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie lautet der Infinitiv von 'unterschrieb' in 'Er unterschrieb den Vertrag'?$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$unterschreiben$t$, true, 1),
    (v_q, $t$unterschreien$t$, false, 2),
    (v_q, $t$unterscheiden$t$, false, 3),
    (v_q, $t$unterstreichen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Im Satz 'Als die vereinbarte Zeit ablief' ist 'vereinbarte' welche Verbform?$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Partizip Präsens als Adjektiv$t$, false, 1),
    (v_q, $t$Partizip Perfekt als Adjektiv$t$, true, 2),
    (v_q, $t$Präteritum$t$, false, 3),
    (v_q, $t$Imperativ$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$Was hättest du an Faustes Stelle getan? Schreibe 4-6 Sätze darüber, ob du den Vertrag unterschrieben hättest und warum.$t$, 1, 'normal', 'production', $t$Ich glaube, ich hätte den Vertrag nicht unterschrieben, weil mir meine Familie und meine Freunde wichtiger sind als unbegrenztes Wissen. Faust wollte alles wissen, aber er vergaß, dass Wissen allein nicht glücklich macht. Ich denke, echte Zufriedenheit kommt aus einfachen Dingen wie Freundschaft und Liebe. Wenn ich in seiner Situation gewesen wäre, hätte ich versucht, mit meinem eigenen Wissen zufrieden zu sein. Die Geschichte zeigt gut, dass zu großer Ehrgeiz gefährlich sein kann.$t$);

END $block$;

-- 3. Wilhelm Tell und der Apfelschuss
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary, culture_note) VALUES (
    'B1',
    $t$Wilhelm Tell und der Apfelschuss$t$,
    $t$In der Schweiz, im Kanton Uri, lebte im Mittelalter ein einfacher Bauer namens Wilhelm Tell. Er war bekannt für seine Geschicklichkeit mit der Armbrust. Zu dieser Zeit regierte der österreichische Vogt Gessler streng und ungerecht über das Volk. Er ließ auf dem Marktplatz einen Hut auf eine Stange stecken und befahl, dass jeder Bürger vor dem Hut seinen Respekt zeigen musste. Tell weigerte sich, den Hut zu grüßen, denn er hielt diese Regel für dumm und unwürdig. Wütend ließ Gessler ihn festnehmen. Als Strafe verlangte der Vogt etwas Grausames: Tell sollte einen Apfel vom Kopf seines eigenen Sohnes schießen. Der ganze Marktplatz war still. Tell nahm zwei Pfeile, spannte seine Armbrust und zielte sorgfältig. Der erste Pfeil traf den Apfel genau in der Mitte, und der Junge blieb unverletzt. Gessler fragte neugierig, wofür der zweite Pfeil gedacht war. Tell antwortete mutig, dass dieser Pfeil für den Vogt bestimmt gewesen wäre, falls sein Sohn verletzt worden wäre. Diese ehrliche Antwort machte Gessler wütend, und er ließ Tell gefangen nehmen. Später gelang Tell die Flucht, und er wurde zum Symbol für Freiheit und Widerstand der Schweizer gegen fremde Herrschaft.$t$,
    $t$En Suisse, dans le canton d'Uri, vivait au Moyen Âge un simple paysan nommé Wilhelm Tell. Il était connu pour son habileté avec l'arbalète. À cette époque, le bailli autrichien Gessler régnait sévèrement et injustement sur le peuple. Il fit planter un chapeau sur une perche sur la place du marché et ordonna que chaque citoyen montre du respect devant le chapeau. Tell refusa de saluer le chapeau, car il considérait cette règle comme stupide et indigne. Furieux, Gessler le fit arrêter. Comme punition, le bailli exigea quelque chose de cruel : Tell devait tirer une pomme sur la tête de son propre fils. Toute la place du marché resta silencieuse. Tell prit deux flèches, banda son arbalète et visa soigneusement. La première flèche atteignit la pomme exactement en son milieu, et le garçon resta indemne. Gessler demanda, curieux, à quoi était destinée la deuxième flèche. Tell répondit courageusement que cette flèche aurait été destinée au bailli si son fils avait été blessé. Cette réponse honnête rendit Gessler furieux, et il fit capturer Tell. Plus tard, Tell réussit à s'enfuir, et il devint le symbole de la liberté et de la résistance des Suisses contre une domination étrangère.$t$,
    $t${"In":"en","der":"le/la","Schweiz":"Suisse","im":"dans le","Kanton":"canton","Uri":"Uri","lebte":"vivait","Mittelalter":"Moyen Âge","ein":"un","einfacher":"simple","Bauer":"paysan","namens":"nommé","Wilhelm":"Wilhelm","Tell":"Tell","Er":"il","war":"était","bekannt":"connu","für":"pour","seine":"son","Geschicklichkeit":"habileté","mit":"avec","Armbrust":"arbalète","Zu":"à","dieser":"cette","Zeit":"époque","regierte":"régnait","österreichische":"autrichien","Vogt":"bailli","Gessler":"Gessler","streng":"sévèrement","und":"et","ungerecht":"injustement","über":"sur","das":"le","Volk":"peuple","ließ":"fit","auf":"sur","dem":"le","Marktplatz":"place du marché","einen":"un","Hut":"chapeau","eine":"une","Stange":"perche","stecken":"planter","befahl":"ordonna","dass":"que","jeder":"chaque","Bürger":"citoyen","vor":"devant","seinen":"son","Respekt":"respect","zeigen":"montrer","musste":"devait","weigerte":"refusa","sich":"se","den":"le","zu":"de","grüßen":"saluer","denn":"car","er":"il","hielt":"considérait","diese":"cette","Regel":"règle","dumm":"stupide","unwürdig":"indigne","Wütend":"furieux","ihn":"le","festnehmen":"arrêter","Als":"comme","Strafe":"punition","verlangte":"exigea","etwas":"quelque chose","Grausames":"de cruel","sollte":"devait","Apfel":"pomme","vom":"de la","Kopf":"tête","seines":"de son","eigenen":"propre","Sohnes":"fils","schießen":"tirer","Der":"le","ganze":"tout","still":"silencieux","nahm":"prit","zwei":"deux","Pfeile":"flèches","spannte":"banda","zielte":"visa","sorgfältig":"soigneusement","erste":"première","Pfeil":"flèche","traf":"atteignit","genau":"exactement","in":"dans","Mitte":"milieu","Junge":"garçon","blieb":"resta","unverletzt":"indemne","fragte":"demanda","neugierig":"curieux","wofür":"à quoi","zweite":"deuxième","gedacht":"destinée","antwortete":"répondit","mutig":"courageusement","bestimmt":"destinée","gewesen":"été","wäre":"serait","falls":"au cas où","sein":"son","Sohn":"fils","verletzt":"blessé","worden":"été (passif)","Diese":"cette","ehrliche":"honnête","Antwort":"réponse","machte":"rendit","wütend":"furieux","gefangen":"captif","nehmen":"prendre","Später":"plus tard","gelang":"réussit","die":"la","Flucht":"fuite","wurde":"devint","zum":"au","Symbol":"symbole","Freiheit":"liberté","Widerstand":"résistance","Schweizer":"Suisses","gegen":"contre","fremde":"étrangère","Herrschaft":"domination"}$t$::jsonb,
    $t$Légende allemande$t$
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Womit war Wilhelm Tell besonders geschickt?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Mit dem Schwert$t$, false, 1),
    (v_q, $t$Mit der Armbrust$t$, true, 2),
    (v_q, $t$Mit dem Pferd$t$, false, 3),
    (v_q, $t$Mit dem Messer$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was befahl der Vogt Gessler auf dem Marktplatz?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Ein Fest zu feiern$t$, false, 1),
    (v_q, $t$Vor einem Hut auf einer Stange Respekt zu zeigen$t$, true, 2),
    (v_q, $t$Steuern zu zahlen$t$, false, 3),
    (v_q, $t$Die Armbrust abzugeben$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum weigerte sich Tell, den Hut zu grüßen?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er kannte die Regel nicht$t$, false, 1),
    (v_q, $t$Er hielt die Regel für dumm und unwürdig$t$, true, 2),
    (v_q, $t$Er hatte keine Zeit$t$, false, 3),
    (v_q, $t$Er wollte Gessler beeindrucken$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was musste Tell als Strafe tun?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Einen Apfel vom Kopf seines Sohnes schießen$t$, true, 1),
    (v_q, $t$Das Land verlassen$t$, false, 2),
    (v_q, $t$Geld bezahlen$t$, false, 3),
    (v_q, $t$Im Gefängnis bleiben$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was geschah mit dem ersten Pfeil?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er verfehlte den Apfel$t$, false, 1),
    (v_q, $t$Er traf den Apfel genau in der Mitte$t$, true, 2),
    (v_q, $t$Er verletzte den Jungen$t$, false, 3),
    (v_q, $t$Er traf Gessler$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wofür war laut Tells eigener Antwort der zweite Pfeil bestimmt gewesen?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Für einen Vogel$t$, false, 1),
    (v_q, $t$Für Gessler, falls sein Sohn verletzt worden wäre$t$, true, 2),
    (v_q, $t$Für einen anderen Apfel$t$, false, 3),
    (v_q, $t$Für sich selbst$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was tat Gessler, nachdem er Tells ehrliche Antwort gehört hatte?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er ließ Tell frei$t$, false, 1),
    (v_q, $t$Er ließ Tell gefangen nehmen$t$, true, 2),
    (v_q, $t$Er lachte nur$t$, false, 3),
    (v_q, $t$Er bedankte sich$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was gelang Tell später in der Geschichte?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Die Flucht$t$, true, 1),
    (v_q, $t$Ein Sieg im Kampf$t$, false, 2),
    (v_q, $t$Eine Versöhnung mit Gessler$t$, false, 3),
    (v_q, $t$Eine Reise nach Österreich$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wofür wurde Wilhelm Tell laut dem letzten Satz zum Symbol?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Für Reichtum und Macht$t$, false, 1),
    (v_q, $t$Für Freiheit und Widerstand der Schweizer$t$, true, 2),
    (v_q, $t$Für die österreichische Herrschaft$t$, false, 3),
    (v_q, $t$Für die Kunst des Bogenschießens allein$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'die Armbrust'?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$l'épée$t$, false, 1),
    (v_q, $t$l'arbalète$t$, true, 2),
    (v_q, $t$le bouclier$t$, false, 3),
    (v_q, $t$la lance$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'ungerecht' im Satz über den Vogt Gessler?$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$injuste$t$, true, 1),
    (v_q, $t$généreux$t$, false, 2),
    (v_q, $t$prudent$t$, false, 3),
    (v_q, $t$patient$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welches Wort passt als Synonym zu 'die Herrschaft' im letzten Satz?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$die Freiheit$t$, false, 1),
    (v_q, $t$die Domination / le pouvoir exercé$t$, true, 2),
    (v_q, $t$die Freundschaft$t$, false, 3),
    (v_q, $t$der Frieden$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Zeitform ist 'lebte' in 'lebte im Mittelalter ein einfacher Bauer'?$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Präsens$t$, false, 1),
    (v_q, $t$Präteritum$t$, true, 2),
    (v_q, $t$Perfekt$t$, false, 3),
    (v_q, $t$Futur$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie lautet der Infinitiv von 'weigerte sich' in 'Tell weigerte sich, den Hut zu grüßen'?$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$sich weigern$t$, true, 1),
    (v_q, $t$sich wiegen$t$, false, 2),
    (v_q, $t$sich wagen$t$, false, 3),
    (v_q, $t$sich wenden$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Im Satz 'falls sein Sohn verletzt worden wäre' handelt es sich um welche Konstruktion?$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Präsens Passiv$t$, false, 1),
    (v_q, $t$Konjunktiv II Passiv der Vergangenheit$t$, true, 2),
    (v_q, $t$Imperativ$t$, false, 3),
    (v_q, $t$Futur I$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$Was denkst du: War es richtig, dass Tell sich weigerte, den Hut zu grüßen? Schreibe 4-6 Sätze mit deiner Meinung.$t$, 1, 'normal', 'production', $t$Ich finde, dass Tell mutig gehandelt hat, weil er sich einer ungerechten Regel widersetzte. Gleichzeitig war seine Entscheidung sehr riskant, denn er brachte seinen eigenen Sohn in Gefahr. Trotzdem zeigt seine Geschichte, wie wichtig es ist, für seine Überzeugungen einzustehen. Ohne solchen Widerstand hätte sich die Situation für das Volk vielleicht nie verändert. Deshalb verstehe ich, warum Tell bis heute als Symbol für Freiheit gilt.$t$);

END $block$;

-- 4. Der Zauberlehrling
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary, culture_note) VALUES (
    'B1',
    $t$Der Zauberlehrling$t$,
    $t$Ein alter Zauberer verließ eines Tages sein Haus und ließ seinen jungen Lehrling allein zurück. Der Lehrling hatte viele lästige Aufgaben zu erledigen, vor allem musste er Wasser aus dem Brunnen holen. Er war müde von der Arbeit und erinnerte sich an einen Zauberspruch, den er heimlich beobachtet hatte. Voller Übermut nahm er einen alten Besen und sprach die magischen Worte. Sofort erwachte der Besen zum Leben, bekam Arme und Beine und begann, Eimer für Eimer Wasser zu holen. Zuerst war der Lehrling begeistert, denn die Arbeit ging plötzlich viel schneller. Doch der Besen hörte nicht auf zu arbeiten. Das Wasser stieg immer höher, und bald stand das ganze Haus unter Wasser. Der Lehrling geriet in Panik, denn er hatte das Zauberwort vergessen, mit dem man den Besen wieder stoppen konnte. Verzweifelt griff er zu einer Axt und spaltete den Besen in zwei Teile. Doch aus jedem Stück wurde sofort ein neuer Besen, und beide trugen weiter Wasser herbei. Die Überschwemmung wurde immer schlimmer. Im letzten Moment kehrte der alte Zauberer zurück, sprach den richtigen Zauberspruch, und sofort hörten die Besen auf. Der Meister ermahnte seinen Lehrling, nie wieder Kräfte zu wecken, die er nicht beherrschen konnte.$t$,
    $t$Un vieux magicien quitta un jour sa maison et laissa son jeune apprenti seul. L'apprenti avait de nombreuses tâches fastidieuses à accomplir, il devait surtout aller chercher de l'eau au puits. Il était fatigué du travail et se souvint d'une formule magique qu'il avait observée en secret. Plein de témérité, il prit un vieux balai et prononça les mots magiques. Aussitôt le balai s'anima, obtint des bras et des jambes et commença à apporter de l'eau, seau après seau. Au début, l'apprenti était enthousiaste, car le travail avançait soudain beaucoup plus vite. Mais le balai ne cessait pas de travailler. L'eau montait de plus en plus haut, et bientôt toute la maison fut sous l'eau. L'apprenti paniqua, car il avait oublié le mot magique avec lequel on pouvait arrêter le balai. Désespéré, il saisit une hache et fendit le balai en deux morceaux. Mais de chaque morceau naquit aussitôt un nouveau balai, et tous deux continuèrent à apporter de l'eau. L'inondation devenait de pire en pire. Au dernier moment, le vieux magicien revint, prononça la bonne formule magique, et aussitôt les balais s'arrêtèrent. Le maître avertit son apprenti de ne plus jamais réveiller des forces qu'il ne pouvait pas maîtriser.$t$,
    $t${"Ein":"un","alter":"vieux","Zauberer":"magicien","verließ":"quitta","eines":"un (jour)","Tages":"jour","sein":"sa","Haus":"maison","und":"et","ließ":"laissa","seinen":"son","jungen":"jeune","Lehrling":"apprenti","allein":"seul","zurück":"en arrière","Der":"l'/le","hatte":"avait","viele":"beaucoup de","lästige":"fastidieuses","Aufgaben":"tâches","zu":"à","erledigen":"accomplir","vor":"avant (surtout)","allem":"tout","musste":"devait","er":"il","Wasser":"eau","aus":"de","dem":"le","Brunnen":"puits","holen":"chercher","Er":"il","war":"était","müde":"fatigué","von":"de","der":"le","Arbeit":"travail","erinnerte":"se souvint","sich":"se","an":"de","einen":"une (formule)","Zauberspruch":"formule magique","den":"que","heimlich":"en secret","beobachtet":"observée","Voller":"plein de","Übermut":"témérité","nahm":"prit","alten":"vieux","Besen":"balai","sprach":"prononça","die":"les","magischen":"magiques","Worte":"mots","Sofort":"aussitôt","erwachte":"s'anima","zum":"à la","Leben":"vie","bekam":"obtint","Arme":"bras","Beine":"jambes","begann":"commença","Eimer":"seau","für":"par","Zuerst":"d'abord","begeistert":"enthousiaste","denn":"car","ging":"avançait","plötzlich":"soudain","viel":"beaucoup","schneller":"plus vite","Doch":"mais","hörte":"cessait","nicht":"ne...pas","auf":"(part.)","arbeiten":"travailler","Das":"l'","stieg":"montait","immer":"toujours (de plus en plus)","höher":"plus haut","bald":"bientôt","stand":"était","das":"la","ganze":"toute","unter":"sous","geriet":"tomba (en panique)","in":"en","Panik":"panique","Zauberwort":"mot magique","vergessen":"oublié","mit":"avec (lequel)","man":"on","wieder":"de nouveau","stoppen":"arrêter","konnte":"pouvait","Verzweifelt":"désespéré","griff":"saisit","einer":"une","Axt":"hache","spaltete":"fendit","zwei":"deux","Teile":"morceaux","jedem":"chaque","Stück":"morceau","wurde":"devint","sofort":"aussitôt","ein":"un","neuer":"nouveau","beide":"les deux","trugen":"apportaient","weiter":"encore","herbei":"(particule)","Die":"l'","Überschwemmung":"inondation","schlimmer":"pire","Im":"au","letzten":"dernier","Moment":"moment","kehrte":"revint","alte":"vieux","richtigen":"bonne","hörten":"cessèrent","Meister":"maître","ermahnte":"avertit","nie":"jamais","Kräfte":"forces","wecken":"réveiller","beherrschen":"maîtriser"}$t$::jsonb,
    $t$D'après une ballade de Goethe$t$
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was musste der Lehrling holen?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Holz$t$, false, 1),
    (v_q, $t$Wasser$t$, true, 2),
    (v_q, $t$Brot$t$, false, 3),
    (v_q, $t$Geld$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was tat der Lehrling mit dem alten Besen?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er verkaufte ihn$t$, false, 1),
    (v_q, $t$Er sprach einen Zauberspruch, damit er Wasser holt$t$, true, 2),
    (v_q, $t$Er verbrannte ihn$t$, false, 3),
    (v_q, $t$Er reparierte ihn$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Woher kannte der Lehrling den Zauberspruch?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er hatte ihn selbst erfunden$t$, false, 1),
    (v_q, $t$Er hatte ihn heimlich vom Zauberer beobachtet$t$, true, 2),
    (v_q, $t$Er hatte ihn in einem Buch gelesen$t$, false, 3),
    (v_q, $t$Ein anderer Lehrling hatte ihn ihm gesagt$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was geschah, nachdem der Besen begann, Wasser zu holen?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er hörte sofort wieder auf$t$, false, 1),
    (v_q, $t$Er hörte nicht mehr auf zu arbeiten$t$, true, 2),
    (v_q, $t$Er ging kaputt$t$, false, 3),
    (v_q, $t$Er wurde zu einem Menschen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum geriet der Lehrling in Panik?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Der Zauberer kam zurück$t$, false, 1),
    (v_q, $t$Er hatte das Wort zum Stoppen des Besens vergessen$t$, true, 2),
    (v_q, $t$Das Haus brannte$t$, false, 3),
    (v_q, $t$Der Besen sprach mit ihm$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was passierte, als der Lehrling den Besen mit einer Axt spaltete?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Der Besen verschwand$t$, false, 1),
    (v_q, $t$Aus jedem Stück wurde sofort ein neuer Besen$t$, true, 2),
    (v_q, $t$Das Wasser hörte auf zu steigen$t$, false, 3),
    (v_q, $t$Der Zauberer wurde wütend$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wer beendete am Ende die Überschwemmung?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Der Lehrling selbst$t$, false, 1),
    (v_q, $t$Der alte Zauberer$t$, true, 2),
    (v_q, $t$Ein Nachbar$t$, false, 3),
    (v_q, $t$Niemand$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was ermahnte der Meister seinen Lehrling am Ende?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Mehr Wasser zu holen$t$, false, 1),
    (v_q, $t$Nie wieder Kräfte zu wecken, die er nicht beherrschen konnte$t$, true, 2),
    (v_q, $t$Öfter Zaubersprüche zu üben$t$, false, 3),
    (v_q, $t$Das Haus zu verlassen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Lehre lässt sich am besten aus der ganzen Geschichte ziehen?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Magie ist immer gefährlich und sollte verboten werden$t$, false, 1),
    (v_q, $t$Man sollte keine Kräfte benutzen, die man nicht kontrollieren kann$t$, true, 2),
    (v_q, $t$Besen sind nützlicher als Menschen$t$, false, 3),
    (v_q, $t$Zauberer sollten nie Urlaub machen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'der Besen'?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$le seau$t$, false, 1),
    (v_q, $t$le balai$t$, true, 2),
    (v_q, $t$le puits$t$, false, 3),
    (v_q, $t$la hache$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'die Überschwemmung' im Text?$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$l'incendie$t$, false, 1),
    (v_q, $t$l'inondation$t$, true, 2),
    (v_q, $t$la tempête$t$, false, 3),
    (v_q, $t$le tremblement de terre$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'beherrschen' im letzten Satz des Textes?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$oublier$t$, false, 1),
    (v_q, $t$maîtriser / contrôler$t$, true, 2),
    (v_q, $t$détruire$t$, false, 3),
    (v_q, $t$vendre$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Zeitform ist 'verließ' in 'Ein alter Zauberer verließ eines Tages sein Haus'?$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Präsens$t$, false, 1),
    (v_q, $t$Präteritum$t$, true, 2),
    (v_q, $t$Perfekt$t$, false, 3),
    (v_q, $t$Konjunktiv$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie lautet der Infinitiv von 'spaltete' in 'er spaltete den Besen'?$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$spalten$t$, true, 1),
    (v_q, $t$spielen$t$, false, 2),
    (v_q, $t$splittern$t$, false, 3),
    (v_q, $t$spulen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Im Satz 'er hatte das Zauberwort vergessen' steht 'hatte...vergessen' in welcher Zeitform, und warum wird sie hier verwendet?$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Perfekt, weil es die Gegenwart beschreibt$t$, false, 1),
    (v_q, $t$Plusquamperfekt, weil es ein Ereignis vor einem anderen Ereignis in der Vergangenheit beschreibt$t$, true, 2),
    (v_q, $t$Futur II, weil es eine Vermutung ausdrückt$t$, false, 3),
    (v_q, $t$Präteritum, weil es eine einmalige Handlung ist$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$Stell dir vor, du hättest für einen Tag Zauberkräfte wie im Text. Schreibe 4-6 Sätze darüber, was du tun würdest und was dabei schiefgehen könnte.$t$, 1, 'normal', 'production', $t$Wenn ich für einen Tag zaubern könnte, würde ich zuerst meine Hausaufgaben von selbst erledigen lassen. Ich würde auch versuchen, mein Zimmer automatisch aufräumen zu lassen. Aber wie der Lehrling in der Geschichte könnte ich vielleicht das Zauberwort vergessen, um alles wieder zu stoppen. Dann würde vielleicht mein ganzes Zimmer aus dem Fenster fliegen. Deshalb würde ich am Ende wahrscheinlich lieber vorsichtig sein und nur kleine Zauber ausprobieren.$t$);

END $block$;

-- 5. Die geheime Freundschaft
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary, culture_note) VALUES (
    'B1',
    $t$Die geheime Freundschaft$t$,
    $t$Berlin, 1936. Anna und Ruth wohnten im selben Haus und waren seit der ersten Klasse beste Freundinnen. Anna war Christin, Ruth war Jüdin, aber für die beiden Mädchen spielte das nie eine Rolle. Sie spielten zusammen im Hof, tauschten Bücher und träumten von der Zukunft. Doch die politische Lage in Deutschland veränderte sich. Neue Gesetze verboten jüdischen Familien immer mehr Dinge, und Ruth durfte plötzlich nicht mehr mit Anna in dieselbe Schule gehen. Viele Nachbarn wandten sich von Ruths Familie ab, aus Angst oder aus Überzeugung. Annas Eltern warnten sie: "Sei vorsichtig, mit wem du sprichst." Trotzdem traf sich Anna heimlich mit Ruth, oft abends im Hinterhof, wo niemand sie sehen konnte. Sie tauschten weiterhin Geschichten und lachten zusammen, auch wenn die Welt um sie herum immer bedrohlicher wurde. Eines Abends erzählte Ruth flüsternd, dass ihre Familie bald das Land verlassen wollte. Anna weinte, aber sie verstand, dass es die einzige sichere Möglichkeit war. Zum Abschied schenkte Anna ihrer Freundin ein kleines Foto von ihnen beiden. Jahre später, nach dem Krieg, erhielt Anna einen Brief aus einem fernen Land. Es war Ruth, die ihre alte Freundin nie vergessen hatte.$t$,
    $t$Berlin, 1936. Anna et Ruth habitaient dans le même immeuble et étaient les meilleures amies depuis la première année d'école. Anna était chrétienne, Ruth était juive, mais pour les deux filles, cela n'avait jamais d'importance. Elles jouaient ensemble dans la cour, échangeaient des livres et rêvaient de l'avenir. Mais la situation politique en Allemagne changeait. De nouvelles lois interdisaient de plus en plus de choses aux familles juives, et Ruth n'eut soudain plus le droit d'aller à la même école qu'Anna. Beaucoup de voisins se détournèrent de la famille de Ruth, par peur ou par conviction. Les parents d'Anna l'avertirent : « Sois prudente quant à qui tu parles. » Malgré cela, Anna continuait de retrouver Ruth en secret, souvent le soir dans l'arrière-cour, où personne ne pouvait les voir. Elles continuaient d'échanger des histoires et de rire ensemble, même si le monde autour d'elles devenait de plus en plus menaçant. Un soir, Ruth raconta en chuchotant que sa famille voulait bientôt quitter le pays. Anna pleura, mais elle comprit que c'était la seule possibilité sûre. Pour leurs adieux, Anna offrit à son amie une petite photo d'elles deux. Des années plus tard, après la guerre, Anna reçut une lettre d'un pays lointain. C'était Ruth, qui n'avait jamais oublié sa vieille amie.$t$,
    $t${"1936":"1936","Berlin":"Berlin","Anna":"Anna","und":"et","Ruth":"Ruth","wohnten":"habitaient","im":"dans le","selben":"même","Haus":"immeuble","waren":"étaient","seit":"depuis","der":"la","ersten":"première","Klasse":"classe","beste":"meilleures","Freundinnen":"amies","war":"était","Christin":"chrétienne","Jüdin":"juive","aber":"mais","für":"pour","die":"les","beiden":"deux","Mädchen":"filles","spielte":"jouait","das":"cela","nie":"jamais","eine":"un","Rolle":"rôle","Sie":"elles","spielten":"jouaient","zusammen":"ensemble","Hof":"cour","tauschten":"échangeaient","Bücher":"livres","träumten":"rêvaient","von":"de","Zukunft":"avenir","Doch":"mais","politische":"politique","Lage":"situation","in":"en","Deutschland":"Allemagne","veränderte":"changeait","sich":"se","Neue":"nouvelles","Gesetze":"lois","verboten":"interdisaient","jüdischen":"juives","Familien":"familles","immer":"toujours (de plus en plus)","mehr":"plus","Dinge":"choses","durfte":"avait le droit","plötzlich":"soudain","nicht":"ne...pas","mit":"avec","dieselbe":"la même","Schule":"école","gehen":"aller","Viele":"beaucoup de","Nachbarn":"voisins","wandten":"détournaient","Ruths":"de Ruth","Familie":"famille","ab":"(particule)","aus":"par","Angst":"peur","oder":"ou","Überzeugung":"conviction","Annas":"d'Anna","Eltern":"parents","warnten":"avertirent","sie":"elle","Sei":"sois","vorsichtig":"prudente","wem":"à qui","du":"tu","sprichst":"parles","Trotzdem":"malgré tout","traf":"retrouvait","heimlich":"en secret","oft":"souvent","abends":"le soir","Hinterhof":"arrière-cour","wo":"où","niemand":"personne","sehen":"voir","konnte":"pouvait","weiterhin":"continuaient de","Geschichten":"histoires","lachten":"riaient","auch":"même","wenn":"quand","Welt":"monde","um":"autour","herum":"autour","bedrohlicher":"plus menaçant","wurde":"devenait","Eines":"un (soir)","Abends":"soir","erzählte":"raconta","flüsternd":"en chuchotant","dass":"que","ihre":"sa","bald":"bientôt","Land":"pays","verlassen":"quitter","wollte":"voulait","weinte":"pleura","verstand":"comprit","es":"que c'était","einzige":"seule","sichere":"sûre","Möglichkeit":"possibilité","Zum":"pour (leurs)","Abschied":"adieu","schenkte":"offrit","ihrer":"à son","Freundin":"amie","ein":"une","kleines":"petite","Foto":"photo","ihnen":"elles","Jahre":"années","später":"plus tard","nach":"après","dem":"la","Krieg":"guerre","erhielt":"reçut","einen":"une","Brief":"lettre","einem":"un","fernen":"lointain","Es":"c'","alte":"vieille","vergessen":"oublié","hatte":"avait"}$t$::jsonb,
    $t$Inspiré de l'histoire allemande du XXe siècle$t$
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wo wohnten Anna und Ruth?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$In München$t$, false, 1),
    (v_q, $t$Im selben Haus in Berlin$t$, true, 2),
    (v_q, $t$In verschiedenen Städten$t$, false, 3),
    (v_q, $t$Auf dem Land$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum spielte der Unterschied zwischen Christin und Jüdin für die beiden Mädchen zunächst keine Rolle?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie kannten sich nicht gut$t$, false, 1),
    (v_q, $t$Sie waren einfach seit der ersten Klasse beste Freundinnen$t$, true, 2),
    (v_q, $t$Ihre Eltern hatten es ihnen verboten, darüber zu sprechen$t$, false, 3),
    (v_q, $t$Sie wussten nichts über Religion$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was änderte sich für Ruth durch die neuen Gesetze in Deutschland?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie musste umziehen$t$, false, 1),
    (v_q, $t$Sie durfte nicht mehr in dieselbe Schule wie Anna gehen$t$, true, 2),
    (v_q, $t$Sie musste ihren Namen ändern$t$, false, 3),
    (v_q, $t$Sie durfte kein Deutsch mehr sprechen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wovor warnten Annas Eltern sie?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Vor dem Wetter$t$, false, 1),
    (v_q, $t$Davor, vorsichtig zu sein, mit wem sie spricht$t$, true, 2),
    (v_q, $t$Vor der Schule$t$, false, 3),
    (v_q, $t$Vor dem Hof$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wo trafen sich Anna und Ruth trotz der Gefahr weiterhin?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$In der Schule$t$, false, 1),
    (v_q, $t$Oft abends heimlich im Hinterhof$t$, true, 2),
    (v_q, $t$Auf dem Marktplatz$t$, false, 3),
    (v_q, $t$Bei den Nachbarn$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie reagierten viele Nachbarn auf die Situation von Ruths Familie?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie halfen ihnen offen$t$, false, 1),
    (v_q, $t$Sie wandten sich aus Angst oder Überzeugung von der Familie ab$t$, true, 2),
    (v_q, $t$Sie luden sie öfter ein$t$, false, 3),
    (v_q, $t$Sie bemerkten nichts$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was schenkte Anna Ruth zum Abschied?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Ein Buch$t$, false, 1),
    (v_q, $t$Ein kleines Foto von ihnen beiden$t$, true, 2),
    (v_q, $t$Geld$t$, false, 3),
    (v_q, $t$Einen Brief$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum musste Ruths Familie das Land verlassen?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Wegen der Arbeit des Vaters$t$, false, 1),
    (v_q, $t$Weil die Lage für jüdische Familien immer gefährlicher wurde$t$, true, 2),
    (v_q, $t$Weil sie umziehen wollten$t$, false, 3),
    (v_q, $t$Wegen einer Krankheit$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was zeigt der Brief, den Anna Jahre später erhielt?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Dass Ruth sie vergessen hatte$t$, false, 1),
    (v_q, $t$Dass Ruth ihre alte Freundin nie vergessen hatte$t$, true, 2),
    (v_q, $t$Dass Ruth nie ausgewandert war$t$, false, 3),
    (v_q, $t$Dass Anna und Ruth sich nie wiedersahen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'die Freundin'?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$l'amie$t$, true, 1),
    (v_q, $t$la voisine$t$, false, 2),
    (v_q, $t$l'école$t$, false, 3),
    (v_q, $t$la famille$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'heimlich' im Satz 'traf sich Anna heimlich mit Ruth'?$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$ouvertement$t$, false, 1),
    (v_q, $t$en secret$t$, true, 2),
    (v_q, $t$rarement$t$, false, 3),
    (v_q, $t$joyeusement$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'bedrohlicher' im Satz 'die Welt um sie herum immer bedrohlicher wurde'?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$plus calme$t$, false, 1),
    (v_q, $t$plus menaçante$t$, true, 2),
    (v_q, $t$plus colorée$t$, false, 3),
    (v_q, $t$plus lointaine$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Zeitform ist 'wohnten' in 'Anna und Ruth wohnten im selben Haus'?$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Präsens$t$, false, 1),
    (v_q, $t$Präteritum$t$, true, 2),
    (v_q, $t$Perfekt$t$, false, 3),
    (v_q, $t$Futur$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie lautet der Infinitiv von 'verboten' in 'Neue Gesetze verboten jüdischen Familien...Dinge'?$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$verbinden$t$, false, 1),
    (v_q, $t$verbieten$t$, true, 2),
    (v_q, $t$verbergen$t$, false, 3),
    (v_q, $t$verbrauchen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Im Satz 'Es war Ruth, die ihre alte Freundin nie vergessen hatte' steht 'vergessen hatte' im Plusquamperfekt. Warum wird hier diese Zeitform benutzt?$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Um eine Vermutung auszudrücken$t$, false, 1),
    (v_q, $t$Weil das Vergessen-nicht vor dem Erhalt des Briefes lag, also vorzeitig zur Haupthandlung ist$t$, true, 2),
    (v_q, $t$Weil es sich um direkte Rede handelt$t$, false, 3),
    (v_q, $t$Weil das Verb im Konjunktiv steht$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$Was würdest du tun, wenn eine Freundschaft wie die von Anna und Ruth durch die Politik bedroht wäre? Schreibe 4-6 Sätze mit deiner Meinung.$t$, 1, 'normal', 'production', $t$Ich finde, echte Freundschaft sollte stärker sein als Angst oder ungerechte Gesetze. An Annas Stelle hätte ich wahrscheinlich auch versucht, meine Freundin heimlich weiter zu treffen. Es erfordert viel Mut, sich gegen die Meinung der Gesellschaft zu stellen. Gleichzeitig verstehe ich, dass viele Menschen damals aus Angst schwiegen. Die Geschichte zeigt, wie wichtig Solidarität in schwierigen Zeiten ist.$t$);

END $block$;

-- 6. Zwei Freunde und ein alter Käfer
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary, culture_note) VALUES (
    'B1',
    $t$Zwei Freunde und ein alter Käfer$t$,
    $t$Jonas und Felix kannten sich kaum, obwohl sie im selben Dorf aufgewachsen waren. Jonas war ruhig und vorsichtig, Felix war spontan und liebte Abenteuer. An einem sonnigen Samstagmorgen im Juli klopfte Felix plötzlich an Jonas' Tür. "Ich habe den alten Käfer meines Opas repariert", rief er aufgeregt. "Lass uns ans Meer fahren!" Jonas zögerte, denn er hatte eigentlich für eine Prüfung lernen wollen. Doch etwas an Felix' Begeisterung überzeugte ihn, und wenig später saßen beide im knatternden alten Auto. Die Fahrt war alles andere als perfekt: Der Käfer hatte keine Klimaanlage, das Radio funktionierte nur manchmal, und einmal mussten sie sogar anhalten, weil der Motor überhitzte. Trotzdem lachten die beiden mehr, als sie es erwartet hatten. Sie hielten an einem kleinen See an, aßen Eis und sprachen über ihre Träume und Ängste. Jonas erzählte, dass er eigentlich Musik studieren wollte, sich aber nicht traute, es seinen Eltern zu sagen. Felix hörte aufmerksam zu und ermutigte ihn. Als sie spätabends endlich das Meer erreichten, saßen sie am Strand und schauten auf die Sterne. Aus zwei Bekannten waren an diesem einen Tag echte Freunde geworden, verbunden durch einen alten Käfer und eine spontane Idee.$t$,
    $t$Jonas et Felix se connaissaient à peine, bien qu'ils aient grandi dans le même village. Jonas était calme et prudent, Felix était spontané et aimait l'aventure. Par un samedi matin ensoleillé de juillet, Felix frappa soudain à la porte de Jonas. « J'ai réparé la vieille Coccinelle de mon grand-père », s'écria-t-il tout excité. « Allons à la mer ! » Jonas hésita, car il avait en fait prévu de réviser pour un examen. Mais quelque chose dans l'enthousiasme de Felix le convainquit, et peu après, tous deux étaient assis dans la vieille voiture pétaradante. Le trajet était loin d'être parfait : la Coccinelle n'avait pas de climatisation, la radio ne fonctionnait que parfois, et une fois ils durent même s'arrêter parce que le moteur surchauffait. Malgré cela, les deux riaient plus qu'ils ne l'avaient prévu. Ils s'arrêtèrent près d'un petit lac, mangèrent une glace et parlèrent de leurs rêves et de leurs peurs. Jonas raconta qu'il voulait en fait étudier la musique, mais qu'il n'osait pas le dire à ses parents. Felix l'écouta attentivement et l'encouragea. Quand ils atteignirent enfin la mer tard le soir, ils s'assirent sur la plage et regardèrent les étoiles. De deux simples connaissances, ils étaient devenus, en une seule journée, de vrais amis, unis par une vieille Coccinelle et une idée spontanée.$t$,
    $t${"Jonas":"Jonas","und":"et","Felix":"Felix","kannten":"connaissaient","sich":"se","kaum":"à peine","obwohl":"bien que","sie":"ils","im":"dans le","selben":"même","Dorf":"village","aufgewachsen":"grandi","waren":"étaient","war":"était","ruhig":"calme","vorsichtig":"prudent","spontan":"spontané","liebte":"aimait","Abenteuer":"aventure","An":"par (un matin)","einem":"un","sonnigen":"ensoleillé","Samstagmorgen":"matin de samedi","Juli":"juillet","klopfte":"frappa","plötzlich":"soudain","an":"à","Tür":"porte","Ich":"je","habe":"ai","den":"la","alten":"vieille","Käfer":"Coccinelle","meines":"de mon","Opas":"grand-père","repariert":"réparée","rief":"s'écria","er":"il","aufgeregt":"tout excité","Lass":"laisse (allons)","uns":"nous","ans":"à la","Meer":"mer","fahren":"aller (en voiture)","zögerte":"hésita","denn":"car","hatte":"avait","eigentlich":"en fait","für":"pour","eine":"un","Prüfung":"examen","lernen":"réviser","wollen":"vouloir","Doch":"mais","etwas":"quelque chose","Begeisterung":"enthousiasme","überzeugte":"convainquit","ihn":"le","wenig":"peu","später":"plus tard","saßen":"étaient assis","beide":"les deux","knatternden":"pétaradante","Auto":"voiture","Die":"le","Fahrt":"trajet","alles":"tout","andere":"autre (que)","als":"que","perfekt":"parfait","Der":"la","keine":"pas de","Klimaanlage":"climatisation","das":"la","Radio":"radio","funktionierte":"fonctionnait","nur":"que","manchmal":"parfois","einmal":"une fois","mussten":"durent","sogar":"même","anhalten":"s'arrêter","weil":"parce que","der":"le","Motor":"moteur","überhitzte":"surchauffait","Trotzdem":"malgré tout","lachten":"riaient","die":"les","beiden":"deux","mehr":"plus","es":"que","erwartet":"attendu","hatten":"avaient","Sie":"ils","hielten":"s'arrêtèrent","kleinen":"petit","See":"lac","aßen":"mangèrent","Eis":"une glace","sprachen":"parlèrent","über":"de","ihre":"leurs","Träume":"rêves","Ängste":"peurs","erzählte":"raconta","dass":"que","Musik":"musique","studieren":"étudier","wollte":"voulait","aber":"mais","nicht":"ne...pas","traute":"osait","seinen":"à ses","Eltern":"parents","zu":"à","sagen":"dire","hörte":"écouta","aufmerksam":"attentivement","ermutigte":"encouragea","Als":"quand","spätabends":"tard le soir","endlich":"enfin","erreichten":"atteignirent","am":"sur la","Strand":"plage","schauten":"regardèrent","auf":"vers","Sterne":"étoiles","Aus":"de","zwei":"deux","Bekannten":"connaissances","diesem":"ce","einen":"un","Tag":"jour","echte":"de vrais","Freunde":"amis","geworden":"devenus","verbunden":"unis","durch":"par","spontane":"spontanée","Idee":"idée"}$t$::jsonb,
    $t$Inspiré d'un classique de la littérature jeunesse allemande$t$
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was hatte Felix repariert?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Ein Fahrrad$t$, false, 1),
    (v_q, $t$Den alten Käfer seines Opas$t$, true, 2),
    (v_q, $t$Ein Motorrad$t$, false, 3),
    (v_q, $t$Ein Boot$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum zögerte Jonas zuerst mitzufahren?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er hatte Angst vor Autos$t$, false, 1),
    (v_q, $t$Er wollte eigentlich für eine Prüfung lernen$t$, true, 2),
    (v_q, $t$Er mochte Felix nicht$t$, false, 3),
    (v_q, $t$Er hatte kein Geld$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was überzeugte Jonas schließlich, mitzufahren?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sein Vater befahl es ihm$t$, false, 1),
    (v_q, $t$Etwas an Felix' Begeisterung überzeugte ihn$t$, true, 2),
    (v_q, $t$Er hatte die Prüfung schon bestanden$t$, false, 3),
    (v_q, $t$Felix bezahlte ihm Geld$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was funktionierte im Auto nicht gut?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Die Türen$t$, false, 1),
    (v_q, $t$Die Klimaanlage und manchmal das Radio$t$, true, 2),
    (v_q, $t$Die Sitze$t$, false, 3),
    (v_q, $t$Die Fenster$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was mussten Jonas und Felix während der Fahrt einmal tun?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Zurückfahren$t$, false, 1),
    (v_q, $t$Anhalten, weil der Motor überhitzte$t$, true, 2),
    (v_q, $t$Tanken$t$, false, 3),
    (v_q, $t$Ein anderes Auto nehmen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Worüber sprachen die beiden am kleinen See?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Über Autos und Motoren$t$, false, 1),
    (v_q, $t$Über ihre Träume und Ängste$t$, true, 2),
    (v_q, $t$Über die Schule allgemein$t$, false, 3),
    (v_q, $t$Über das Wetter$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was wollte Jonas eigentlich studieren?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Medizin$t$, false, 1),
    (v_q, $t$Musik$t$, true, 2),
    (v_q, $t$Jura$t$, false, 3),
    (v_q, $t$Geschichte$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie reagierte Felix, als Jonas von seinem Traum erzählte?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er lachte ihn aus$t$, false, 1),
    (v_q, $t$Er hörte aufmerksam zu und ermutigte ihn$t$, true, 2),
    (v_q, $t$Er wechselte das Thema$t$, false, 3),
    (v_q, $t$Er war eifersüchtig$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was zeigt der letzte Satz über die Beziehung zwischen Jonas und Felix?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie blieben einander fremd$t$, false, 1),
    (v_q, $t$Aus zwei Bekannten waren echte Freunde geworden$t$, true, 2),
    (v_q, $t$Sie stritten sich am Ende$t$, false, 3),
    (v_q, $t$Sie fuhren nie wieder zusammen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'das Meer'?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$la montagne$t$, false, 1),
    (v_q, $t$la mer$t$, true, 2),
    (v_q, $t$la forêt$t$, false, 3),
    (v_q, $t$le lac$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'ermutigen' im Satz 'Felix hörte aufmerksam zu und ermutigte ihn'?$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$décourager$t$, false, 1),
    (v_q, $t$encourager$t$, true, 2),
    (v_q, $t$ignorer$t$, false, 3),
    (v_q, $t$critiquer$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'sich trauen' im Satz 'sich aber nicht traute, es seinen Eltern zu sagen'?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$oser$t$, true, 1),
    (v_q, $t$oublier$t$, false, 2),
    (v_q, $t$refuser$t$, false, 3),
    (v_q, $t$espérer$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Zeitform ist 'klopfte' in 'klopfte Felix plötzlich an Jonas' Tür'?$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Präsens$t$, false, 1),
    (v_q, $t$Präteritum$t$, true, 2),
    (v_q, $t$Perfekt$t$, false, 3),
    (v_q, $t$Futur$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie lautet der Infinitiv von 'überzeugte' in 'etwas...überzeugte ihn'?$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$überziehen$t$, false, 1),
    (v_q, $t$überzeugen$t$, true, 2),
    (v_q, $t$überqueren$t$, false, 3),
    (v_q, $t$übersetzen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Im Satz 'er hatte eigentlich für eine Prüfung lernen wollen' steht das Modalverb im Plusquamperfekt mit einem doppelten Infinitiv. Wie nennt man diese Konstruktion?$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Zustandspassiv$t$, false, 1),
    (v_q, $t$Ersatzinfinitiv-Konstruktion$t$, true, 2),
    (v_q, $t$Konjunktiv I$t$, false, 3),
    (v_q, $t$Futur II$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$Erzähle von einem spontanen Ausflug, den du selbst schon einmal gemacht hast (oder gerne machen würdest). Schreibe 4-6 Sätze auf Deutsch.$t$, 1, 'normal', 'production', $t$Letzten Sommer bin ich spontan mit meiner Freundin ans Meer gefahren, ohne vorher lange zu planen. Wir hatten kein festes Ziel, sondern sind einfach der Straße gefolgt. Unterwegs haben wir an einem See angehalten und Eis gegessen. Am Abend haben wir am Strand gesessen und über unsere Zukunft gesprochen. Dieser Tag war einer der schönsten des ganzen Sommers, weil alles so unerwartet war.$t$);

END $block$;

-- 7. Der Erlkönig
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary, culture_note) VALUES (
    'B1',
    $t$Der Erlkönig$t$,
    $t$In einer stürmischen Nacht ritt ein Vater durch den dunklen Wald. Fest hielt er seinen kleinen Sohn in den Armen, denn das Kind war krank und fieberte. Der Junge zitterte vor Angst und rief plötzlich: "Vater, siehst du den Erlkönig dort mit Krone und Schweif?" Der Vater beruhigte ihn und sagte, es sei nur ein Nebelstreifen zwischen den Bäumen. Doch die geheimnisvolle Gestalt sprach zu dem Kind mit sanfter, verlockender Stimme und versprach ihm goldene Spiele und schöne Blumen, wenn es mit ihm käme. Der Junge klammerte sich ängstlich an seinen Vater und flüsterte, dass der Erlkönig ihm etwas Böses zuflüstere. Wieder versuchte der Vater, das Kind zu trösten, doch die unheimliche Stimme wurde immer eindringlicher. Der Erlkönig versprach nun, seine Töchter würden mit dem Jungen singen und tanzen. Der Junge schrie vor Schreck, denn er sah die Töchter im Dunkeln stehen. Der Vater trieb sein Pferd zur Eile an, das Herz voller Angst. Schließlich rief der Junge, dass der Erlkönig ihn berühre und ihm wehtue. Verzweifelt ritt der Vater so schnell er konnte zu seinem Hof. Doch als er endlich ankam, lag das Kind still und leblos in seinen Armen.$t$,
    $t$Par une nuit orageuse, un père chevauchait à travers la forêt sombre. Il tenait fermement son petit fils dans ses bras, car l'enfant était malade et fiévreux. Le garçon tremblait de peur et s'écria soudain : « Père, vois-tu le Roi des Aulnes là-bas, avec sa couronne et sa traîne ? » Le père le rassura et dit que ce n'était qu'une bande de brouillard entre les arbres. Mais la silhouette mystérieuse parlait à l'enfant d'une voix douce et séduisante, et lui promettait des jeux dorés et de belles fleurs s'il venait avec lui. Le garçon s'accrocha anxieusement à son père et chuchota que le Roi des Aulnes lui chuchotait quelque chose de mal. Le père essaya à nouveau de consoler l'enfant, mais la voix inquiétante devenait de plus en plus insistante. Le Roi des Aulnes promit alors que ses filles chanteraient et danseraient avec le garçon. Le garçon cria d'effroi, car il voyait les filles se tenir dans l'obscurité. Le père éperonna son cheval pour se hâter, le cœur plein d'angoisse. Finalement, le garçon cria que le Roi des Aulnes le touchait et lui faisait mal. Désespéré, le père chevaucha aussi vite qu'il le put jusqu'à sa ferme. Mais quand il arriva enfin, l'enfant gisait immobile et sans vie dans ses bras.$t$,
    $t${"In":"par (une nuit)","einer":"une","stürmischen":"orageuse","Nacht":"nuit","ritt":"chevauchait","ein":"un","Vater":"père","durch":"à travers","den":"la","dunklen":"sombre","Wald":"forêt","Fest":"fermement","hielt":"tenait","er":"il","seinen":"son","kleinen":"petit","Sohn":"fils","in":"dans","Armen":"bras","denn":"car","das":"l'","Kind":"enfant","war":"était","krank":"malade","und":"et","fieberte":"avait de la fièvre","Der":"le","Junge":"garçon","zitterte":"tremblait","vor":"de","Angst":"peur","rief":"s'écria","plötzlich":"soudain","siehst":"vois-tu","du":"tu","Erlkönig":"Roi des Aulnes","dort":"là-bas","mit":"avec","Krone":"couronne","Schweif":"traîne","beruhigte":"rassura","ihn":"le","sagte":"dit","es":"que c'","sei":"était","nur":"qu'une simple","Nebelstreifen":"bande de brouillard","zwischen":"entre","Bäumen":"arbres","Doch":"mais","die":"la","geheimnisvolle":"mystérieuse","Gestalt":"silhouette","sprach":"parla","zu":"à","dem":"l'","sanfter":"d'une voix douce","verlockender":"séduisante","Stimme":"voix","versprach":"promit","ihm":"lui","goldene":"dorés","Spiele":"jeux","schöne":"belles","Blumen":"fleurs","wenn":"si","käme":"venait","klammerte":"s'accrocha","sich":"se","ängstlich":"anxieusement","an":"à","flüsterte":"chuchota","dass":"que","der":"le","etwas":"quelque chose","Böses":"de mal","zuflüstere":"lui chuchotait","Wieder":"à nouveau","versuchte":"essaya","trösten":"consoler","doch":"mais","unheimliche":"inquiétante","wurde":"devenait","immer":"de plus en plus","eindringlicher":"insistante","nun":"alors","seine":"ses","Töchter":"filles","würden":"allaient (chanter)","Jungen":"garçon","singen":"chanter","tanzen":"danser","schrie":"cria","Schreck":"effroi","sah":"voyait","im":"dans le","Dunkeln":"obscurité","stehen":"se tenir","trieb":"éperonna","sein":"son","Pferd":"cheval","zur":"pour","Eile":"hâte","Herz":"cœur","voller":"plein de","Schließlich":"finalement","berühre":"touchait","wehtue":"faisait mal","Verzweifelt":"désespéré","so":"aussi","schnell":"vite","konnte":"pouvait","seinem":"sa","Hof":"ferme","als":"quand","endlich":"enfin","ankam":"arriva","lag":"gisait","still":"immobile","leblos":"sans vie"}$t$::jsonb,
    $t$D'après la ballade de Goethe (fin tragique, ton sombre)$t$
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wodurch ritt der Vater in der Nacht?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Durch die Stadt$t$, false, 1),
    (v_q, $t$Durch den dunklen Wald$t$, true, 2),
    (v_q, $t$Über einen Fluss$t$, false, 3),
    (v_q, $t$Durch ein Dorf$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum hielt der Vater seinen Sohn so fest in den Armen?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Aus Freude$t$, false, 1),
    (v_q, $t$Weil das Kind krank war und fieberte$t$, true, 2),
    (v_q, $t$Weil es sehr kalt war$t$, false, 3),
    (v_q, $t$Weil der Sohn schlief$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was sagte der Vater, als der Junge den Erlkönig zum ersten Mal erwähnte?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er stimmte dem Jungen sofort zu$t$, false, 1),
    (v_q, $t$Er sagte, es sei nur ein Nebelstreifen zwischen den Bäumen$t$, true, 2),
    (v_q, $t$Er hielt sofort an$t$, false, 3),
    (v_q, $t$Er wurde selbst ängstlich$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was versprach der Erlkönig dem Jungen zuerst?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Geld und Macht$t$, false, 1),
    (v_q, $t$Goldene Spiele und schöne Blumen$t$, true, 2),
    (v_q, $t$Ein neues Pferd$t$, false, 3),
    (v_q, $t$Eine Reise$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was flüsterte der Junge seinem Vater über den Erlkönig zu?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Dass er freundlich sei$t$, false, 1),
    (v_q, $t$Dass er ihm etwas Böses zuflüstere$t$, true, 2),
    (v_q, $t$Dass er verschwunden sei$t$, false, 3),
    (v_q, $t$Dass er singen wolle$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was versprach der Erlkönig dem Jungen als Nächstes, um ihn zu locken?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Reichtum$t$, false, 1),
    (v_q, $t$Dass seine Töchter mit ihm singen und tanzen würden$t$, true, 2),
    (v_q, $t$Ein eigenes Königreich$t$, false, 3),
    (v_q, $t$Ewige Gesundheit$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wohin ritt der Vater verzweifelt so schnell er konnte?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$In die Stadt$t$, false, 1),
    (v_q, $t$Zu seinem Hof$t$, true, 2),
    (v_q, $t$In den Wald hinein$t$, false, 3),
    (v_q, $t$Zu einem Arzt in einer anderen Stadt$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was rief der Junge kurz bevor sie ankamen?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Dass ihm kalt sei$t$, false, 1),
    (v_q, $t$Dass der Erlkönig ihn berühre und ihm wehtue$t$, true, 2),
    (v_q, $t$Dass er müde sei$t$, false, 3),
    (v_q, $t$Dass er den Wald nicht möge$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was fand der Vater, als er endlich zu Hause ankam?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Das Kind schlief friedlich$t$, false, 1),
    (v_q, $t$Das Kind lag still und leblos in seinen Armen$t$, true, 2),
    (v_q, $t$Der Erlkönig wartete auf ihn$t$, false, 3),
    (v_q, $t$Das Kind war verschwunden$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'die Stimme'?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$la voix$t$, true, 1),
    (v_q, $t$l'ombre$t$, false, 2),
    (v_q, $t$le vent$t$, false, 3),
    (v_q, $t$le rêve$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'unheimlich' im Satz über die Stimme des Erlkönigs?$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$joyeux$t$, false, 1),
    (v_q, $t$inquiétant$t$, true, 2),
    (v_q, $t$familier$t$, false, 3),
    (v_q, $t$calme$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'leblos' im letzten Satz des Textes?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$plein de vie$t$, false, 1),
    (v_q, $t$sans vie$t$, true, 2),
    (v_q, $t$endormi$t$, false, 3),
    (v_q, $t$en bonne santé$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Zeitform ist 'ritt' in 'ritt ein Vater durch den dunklen Wald'?$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Präsens$t$, false, 1),
    (v_q, $t$Präteritum$t$, true, 2),
    (v_q, $t$Perfekt$t$, false, 3),
    (v_q, $t$Konjunktiv$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie lautet der Infinitiv von 'trieb' in 'Der Vater trieb sein Pferd zur Eile an'?$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$treiben$t$, true, 1),
    (v_q, $t$tragen$t$, false, 2),
    (v_q, $t$träumen$t$, false, 3),
    (v_q, $t$treffen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Im Satz 'wenn es mit ihm käme' steht 'käme' in welcher Form, und warum?$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Präteritum, weil es eine Tatsache beschreibt$t$, false, 1),
    (v_q, $t$Konjunktiv II, weil es eine hypothetische Möglichkeit ausdrückt, die der Erlkönig anbietet$t$, true, 2),
    (v_q, $t$Imperativ, weil es ein Befehl ist$t$, false, 3),
    (v_q, $t$Futur I, weil es die Zukunft beschreibt$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$War der Erlkönig für dich real, oder war er nur ein Fiebertraum des kranken Kindes? Schreibe 4-6 Sätze mit deiner Interpretation.$t$, 1, 'normal', 'production', $t$Ich denke, der Erlkönig war wahrscheinlich eine Erscheinung, die durch das hohe Fieber des Kindes entstand. Der Vater sah nichts Ungewöhnliches, während der Junge immer mehr Angst bekam. Diese Doppelperspektive macht die Geschichte besonders spannend, weil man nie ganz sicher sein kann, was wirklich geschah. Vielleicht wollte der Dichter zeigen, wie hilflos Eltern manchmal sind, wenn ihr Kind schwer krank ist. Am Ende bleibt die Interpretation jedem Leser selbst überlassen.$t$);

END $block$;

-- 8. Die Mühle am schwarzen Fluss
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary, culture_note) VALUES (
    'B1',
    $t$Die Mühle am schwarzen Fluss$t$,
    $t$Der junge Anton war Waise und suchte Arbeit, als er von einer Mühle am schwarzen Fluss hörte. Der Müller nehme jeden Winter einen neuen Lehrling auf, hieß es im Dorf. Anton machte sich auf den Weg und fand die Mühle tief im Wald, umgeben von Nebel. Der Meister, ein schweigsamer Mann mit dunklen Augen, nahm ihn ohne viele Fragen auf. In der Mühle arbeiteten elf weitere Lehrlinge, alle blass und schweigend. Tagsüber lernte Anton das Müllerhandwerk, doch nachts hörte er seltsame Stimmen und sah Lichter, die durch die Wände schienen. Ein älterer Lehrling namens Markus warnte ihn heimlich: "Frag nicht, was der Meister nachts in der Kammer tut." Anton bemerkte, dass jedes Jahr im Frühling ein Lehrling verschwand und nie wieder gesehen wurde. Die Angst wuchs in ihm, doch die anderen wirkten wie gefangen, unfähig zu gehen. Eines Nachts schlich Anton zur verbotenen Kammer und sah den Meister bei einem unheimlichen Ritual mit alten Büchern und seltsamen Zeichen. Erschrocken floh er durch den Wald, ohne sich umzudrehen. Erst im Morgengrauen, weit von der Mühle entfernt, wagte er stehenzubleiben. Anton hatte überlebt, aber er wusste, dass er die dunklen Geheimnisse der Mühle nie vergessen würde.$t$,
    $t$Le jeune Anton était orphelin et cherchait du travail lorsqu'il entendit parler d'un moulin au bord d'un fleuve noir. Le meunier prenait, disait-on au village, chaque hiver un nouvel apprenti. Anton se mit en route et trouva le moulin au fond de la forêt, entouré de brouillard. Le maître, un homme taciturne aux yeux sombres, l'engagea sans poser beaucoup de questions. Au moulin travaillaient onze autres apprentis, tous pâles et silencieux. Le jour, Anton apprenait le métier de meunier, mais la nuit il entendait d'étranges voix et voyait des lumières qui brillaient à travers les murs. Un apprenti plus âgé nommé Markus l'avertit en secret : « Ne demande pas ce que le maître fait la nuit dans la chambre. » Anton remarqua que chaque année, au printemps, un apprenti disparaissait et n'était plus jamais revu. La peur grandissait en lui, mais les autres semblaient comme prisonniers, incapables de partir. Une nuit, Anton se faufila jusqu'à la chambre interdite et vit le maître en train d'accomplir un rituel inquiétant avec de vieux livres et d'étranges signes. Épouvanté, il s'enfuit à travers la forêt sans se retourner. Ce n'est qu'à l'aube, loin du moulin, qu'il osa s'arrêter. Anton avait survécu, mais il savait qu'il n'oublierait jamais les sombres secrets du moulin.$t$,
    $t${"Der":"le","junge":"jeune","Anton":"Anton","war":"était","Waise":"orphelin","und":"et","suchte":"cherchait","Arbeit":"travail","als":"quand","er":"il","von":"de","einer":"un","Mühle":"moulin","am":"au bord du","schwarzen":"noir","Fluss":"fleuve","hörte":"entendit parler","Müller":"meunier","nehme":"prend","jeden":"chaque","Winter":"hiver","einen":"un","neuen":"nouvel","Lehrling":"apprenti","auf":"(part.)","hieß":"disait-on","es":"on","im":"dans le","Dorf":"village","machte":"se mit","sich":"se","den":"le","Weg":"chemin","fand":"trouva","die":"le","tief":"au fond de","Wald":"forêt","umgeben":"entouré","Nebel":"brouillard","Meister":"maître","ein":"un","schweigsamer":"taciturne","Mann":"homme","mit":"aux","dunklen":"sombres","Augen":"yeux","nahm":"engagea","ihn":"le","ohne":"sans","viele":"beaucoup de","Fragen":"questions","In":"dans","der":"le","arbeiteten":"travaillaient","elf":"onze","weitere":"autres","Lehrlinge":"apprentis","alle":"tous","blass":"pâles","schweigend":"silencieux","Tagsüber":"le jour","lernte":"apprit","das":"le","Müllerhandwerk":"métier de meunier","doch":"mais","nachts":"la nuit","seltsame":"étranges","Stimmen":"voix","sah":"vit","Lichter":"lumières","durch":"à travers","Wände":"murs","schienen":"brillaient","Ein":"un","älterer":"plus âgé","namens":"nommé","Markus":"Markus","warnte":"avertit","heimlich":"en secret","Frag":"ne demande pas","nicht":"pas","was":"ce que","in":"dans","Kammer":"chambre","tut":"fait","bemerkte":"remarqua","dass":"que","jedes":"chaque","Jahr":"année","Frühling":"printemps","verschwand":"disparaissait","nie":"jamais","wieder":"de nouveau","gesehen":"vu","wurde":"était","Die":"la","Angst":"peur","wuchs":"grandissait","ihm":"en lui","anderen":"autres","wirkten":"semblaient","wie":"comme","gefangen":"prisonniers","unfähig":"incapables","zu":"de","gehen":"partir","Eines":"une (nuit)","Nachts":"nuit","schlich":"se faufila","zur":"vers la","verbotenen":"interdite","bei":"lors de","einem":"un","unheimlichen":"inquiétant","Ritual":"rituel","alten":"vieux","Büchern":"livres","seltsamen":"étranges","Zeichen":"signes","Erschrocken":"épouvanté","floh":"s'enfuit","umzudrehen":"se retourner","Erst":"ce n'est... que","Morgengrauen":"aube","weit":"loin","entfernt":"éloigné","wagte":"osa","stehenzubleiben":"s'arrêter","hatte":"avait","überlebt":"survécu","aber":"mais","wusste":"savait","Geheimnisse":"secrets","vergessen":"oublier","würde":"n'oublierait jamais"}$t$::jsonb,
    $t$Conte sombre inspiré du folklore de Lusace (ambiance inquiétante)$t$
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was suchte Anton, als er von der Mühle hörte?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Ein Pferd$t$, false, 1),
    (v_q, $t$Arbeit$t$, true, 2),
    (v_q, $t$Geld$t$, false, 3),
    (v_q, $t$Freunde$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie war der Meister der Mühle beschrieben?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Als fröhlich und offen$t$, false, 1),
    (v_q, $t$Als schweigsamer Mann mit dunklen Augen$t$, true, 2),
    (v_q, $t$Als sehr alt und krank$t$, false, 3),
    (v_q, $t$Als jung und freundlich$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bemerkte Anton nachts in der Mühle?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Nichts Besonderes$t$, false, 1),
    (v_q, $t$Seltsame Stimmen und Lichter, die durch die Wände schienen$t$, true, 2),
    (v_q, $t$Musik und Gesang$t$, false, 3),
    (v_q, $t$Andere Lehrlinge, die schliefen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wovor warnte Markus Anton?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Vor dem Fluss$t$, false, 1),
    (v_q, $t$Davor, zu fragen, was der Meister nachts in der Kammer tut$t$, true, 2),
    (v_q, $t$Vor dem Wald$t$, false, 3),
    (v_q, $t$Vor den anderen Lehrlingen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bemerkte Anton über die Lehrlinge, die jedes Jahr im Frühling verschwanden?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie kehrten immer zurück$t$, false, 1),
    (v_q, $t$Sie wurden nie wieder gesehen$t$, true, 2),
    (v_q, $t$Sie wurden Meister$t$, false, 3),
    (v_q, $t$Sie zogen einfach um$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum konnten die anderen Lehrlinge laut dem Text die Mühle nicht einfach verlassen?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie hatten keinen Grund zu gehen$t$, false, 1),
    (v_q, $t$Sie wirkten wie gefangen und unfähig zu gehen$t$, true, 2),
    (v_q, $t$Der Meister bezahlte sie zu gut$t$, false, 3),
    (v_q, $t$Es gab keinen Weg aus dem Wald$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was sah Anton, als er zur verbotenen Kammer schlich?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Ein leeres Zimmer$t$, false, 1),
    (v_q, $t$Den Meister bei einem unheimlichen Ritual$t$, true, 2),
    (v_q, $t$Einen schlafenden Lehrling$t$, false, 3),
    (v_q, $t$Nichts, die Tür war verschlossen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was tat Anton, nachdem er das Ritual gesehen hatte?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er blieb und beobachtete weiter$t$, false, 1),
    (v_q, $t$Er floh erschrocken durch den Wald$t$, true, 2),
    (v_q, $t$Er sprach mit dem Meister darüber$t$, false, 3),
    (v_q, $t$Er weckte die anderen Lehrlinge$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was wusste Anton am Ende, obwohl er überlebt hatte?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Dass er zurückkehren wollte$t$, false, 1),
    (v_q, $t$Dass er die dunklen Geheimnisse der Mühle nie vergessen würde$t$, true, 2),
    (v_q, $t$Dass der Meister ihn verfolgen würde$t$, false, 3),
    (v_q, $t$Dass die anderen Lehrlinge gerettet wurden$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'die Mühle'?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$le moulin$t$, true, 1),
    (v_q, $t$la rivière$t$, false, 2),
    (v_q, $t$la forêt$t$, false, 3),
    (v_q, $t$le village$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'schweigsam' im Satz über den Meister?$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$bavard$t$, false, 1),
    (v_q, $t$taciturne$t$, true, 2),
    (v_q, $t$joyeux$t$, false, 3),
    (v_q, $t$curieux$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'unfähig' im Satz 'die anderen wirkten wie gefangen, unfähig zu gehen'?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$capable$t$, false, 1),
    (v_q, $t$incapable$t$, true, 2),
    (v_q, $t$désireux$t$, false, 3),
    (v_q, $t$obligé$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Zeitform ist 'suchte' in 'Der junge Anton war Waise und suchte Arbeit'?$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Präsens$t$, false, 1),
    (v_q, $t$Präteritum$t$, true, 2),
    (v_q, $t$Perfekt$t$, false, 3),
    (v_q, $t$Futur$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie lautet der Infinitiv von 'verschwand' in 'ein Lehrling verschwand'?$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$verschwinden$t$, true, 1),
    (v_q, $t$verschweigen$t$, false, 2),
    (v_q, $t$verschieben$t$, false, 3),
    (v_q, $t$verschenken$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Im Satz 'Der Müller nehme jeden Winter einen neuen Lehrling auf, hieß es im Dorf' steht 'nehme' im Konjunktiv I. Wofür wird diese Form hier verwendet?$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Für einen direkten Befehl$t$, false, 1),
    (v_q, $t$Für die indirekte Rede, um zu zeigen, dass es sich um ein Gerücht im Dorf handelt$t$, true, 2),
    (v_q, $t$Für die Höflichkeitsform$t$, false, 3),
    (v_q, $t$Für eine reine Vermutung über die Zukunft$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$Was hättest du an Antons Stelle getan, als du das seltsame Ritual des Meisters gesehen hast? Schreibe 4-6 Sätze mit deiner Meinung.$t$, 1, 'normal', 'production', $t$Ich glaube, ich hätte genau wie Anton große Angst gehabt und wäre ebenfalls sofort geflohen. Es wäre gefährlich gewesen, dem Meister direkt gegenüberzutreten oder die anderen Lehrlinge zu warnen. Trotzdem finde ich es traurig, dass Anton die anderen Lehrlinge in der Mühle zurücklassen musste. Vielleicht hätte er später versuchen können, Hilfe von außerhalb zu holen. Diese Geschichte zeigt, wie schwer es ist, zwischen Angst und Verantwortung zu entscheiden.$t$);

END $block$;

