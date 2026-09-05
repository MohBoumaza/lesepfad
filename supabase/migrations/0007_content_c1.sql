-- Contenu réel — niveau C1 (25 histoires). Chaque histoire a :
-- - 3 questions de compréhension (position 1-3) x 3 difficultés
-- - 1 question de vocabulaire (position 1) x 3 difficultés
-- - 1 question de conjugaison/grammaire (position 1) x 3 difficultés
-- - 1 tâche de production écrite (position 1, difficulty 'normal', pas de choix, model_answer)

-- 1. Der Preis des Schweigens
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary) VALUES (
    'C1',
    $t$Der Preis des Schweigens$t$,
    $t$In beinahe jeder größeren Organisation lässt sich früher oder später eine Situation beobachten, in der Mitarbeitende vor der Entscheidung stehen, ob sie ein Fehlverhalten offen ansprechen oder aus Bequemlichkeit beziehungsweise Angst vor Konsequenzen lieber schweigen. Genau diese Zwickmühle erlebte die Ingenieurin Helena, als sie im Rahmen einer internen Qualitätsprüfung auf gravierende Sicherheitsmängel bei einem bereits ausgelieferten Produkt stieß. Obwohl ihr sofort bewusst war, welche potenziellen Konsequenzen eine Meldung dieser Mängel nach sich ziehen könnte – sowohl für das Unternehmen als auch für ihre eigene Karriere –, konnte sie sich mit dem Gedanken nicht abfinden, wissentlich Kundinnen und Kunden einem Risiko auszusetzen. Zunächst versuchte sie, das Problem auf dem kleinen Dienstweg zu lösen, indem sie ihren direkten Vorgesetzten diskret informierte, in der Hoffnung, dass dieser die nötigen Schritte einleiten würde. Zu ihrer Enttäuschung wurde ihr jedoch mitgeteilt, dass eine Rückrufaktion aus wirtschaftlichen Gründen derzeit nicht in Betracht gezogen werde und dass sie die Angelegenheit als erledigt betrachten solle. Helena stand daraufhin vor der Wahl, sich dieser Entscheidung zu fügen oder den deutlich riskanteren Weg zu gehen und die Öffentlichkeit beziehungsweise die zuständige Aufsichtsbehörde zu informieren. Nach reiflicher Überlegung, in der sie sowohl ihre berufliche Existenz als auch ihre persönliche Integrität gegeneinander abwog, entschied sie sich für Letzteres. Die darauffolgenden Monate waren von erheblichem beruflichem wie privatem Druck geprägt: Sie wurde innerhalb des Unternehmens zunehmend isoliert, und es kursierten Gerüchte, die ihre fachliche Kompetenz infrage stellten. Dennoch führte ihre Meldung letztlich dazu, dass die Behörde eine umfassende Überprüfung einleitete, in deren Folge die betroffenen Produkte zurückgerufen wurden, bevor größerer Schaden entstehen konnte. Rückblickend beschreibt Helena diese Zeit als die schwierigste ihres Berufslebens, betont jedoch zugleich, dass sie keinen einzigen Moment lang bereut habe, sich gegen das Schweigen und für ihre Überzeugungen entschieden zu haben.$t$,
    $t$Dans presque toute organisation de grande taille, on peut observer tôt ou tard une situation où des collaborateurs se trouvent confrontés à la décision de dénoncer ouvertement une faute ou de préférer se taire par confort ou par peur des conséquences. C'est exactement ce dilemme qu'a vécu l'ingénieure Helena lorsque, dans le cadre d'un contrôle qualité interne, elle est tombée sur de graves défauts de sécurité concernant un produit déjà livré. Bien qu'elle ait immédiatement pris conscience des conséquences potentielles qu'un signalement de ces défauts pourrait entraîner – tant pour l'entreprise que pour sa propre carrière –, elle ne pouvait se résoudre à exposer sciemment des clientes et des clients à un risque. Elle a d'abord tenté de résoudre le problème par la voie hiérarchique habituelle, en informant discrètement son supérieur direct, dans l'espoir que celui-ci engagerait les démarches nécessaires. À sa grande déception, on lui a toutefois fait savoir qu'un rappel de produit n'était actuellement pas envisagé pour des raisons économiques et qu'elle devait considérer l'affaire comme close. Helena s'est alors trouvée face au choix de se plier à cette décision ou d'emprunter la voie nettement plus risquée consistant à informer le public ou l'autorité de surveillance compétente. Après mûre réflexion, au cours de laquelle elle a mis en balance à la fois son existence professionnelle et son intégrité personnelle, elle a opté pour cette seconde solution. Les mois qui ont suivi ont été marqués par une pression considérable, tant professionnelle que privée : elle a été de plus en plus isolée au sein de l'entreprise, et des rumeurs mettant en doute sa compétence professionnelle ont circulé. Néanmoins, son signalement a finalement conduit l'autorité à ouvrir un contrôle approfondi, à l'issue duquel les produits concernés ont été rappelés avant qu'un dommage plus important ne survienne. Rétrospectivement, Helena décrit cette période comme la plus difficile de sa vie professionnelle, tout en soulignant qu'elle n'a pas regretté un seul instant d'avoir choisi ses convictions plutôt que le silence.$t$,
    $t${"In":"dans","beinahe":"presque","jeder":"chaque","größeren":"plus grande","Organisation":"organisation","lässt":"laisse (on peut)","sich":"se","früher":"plus tôt","oder":"ou","später":"plus tard","eine":"une","Situation":"situation","beobachten":"observer","in":"dans","der":"la","Mitarbeitende":"collaborateurs","vor":"devant/face à","Entscheidung":"décision","stehen":"se trouver","ob":"si","sie":"ils/elle","ein":"un","Fehlverhalten":"faute","offen":"ouvertement","ansprechen":"dénoncer","aus":"par","Bequemlichkeit":"confort","beziehungsweise":"ou bien","Angst":"peur","Konsequenzen":"conséquences","lieber":"plutôt","schweigen":"se taire","Genau":"exactement","diese":"ce","Zwickmühle":"dilemme","erlebte":"a vécu","die":"la","Ingenieurin":"ingénieure","Helena":"Helena","als":"lorsque","im":"dans le","Rahmen":"cadre","einer":"d'un","internen":"interne","Qualitätsprüfung":"contrôle qualité","auf":"sur","gravierende":"graves","Sicherheitsmängel":"défauts de sécurité","bei":"concernant","einem":"un","bereits":"déjà","ausgelieferten":"livré","Produkt":"produit","stieß":"est tombée sur","Obwohl":"bien que","ihr":"lui","sofort":"immédiatement","bewusst":"conscient","war":"était","welche":"quelles","potenziellen":"potentielles","Meldung":"signalement","dieser":"de ces","Mängel":"défauts","nach":"à la suite de","ziehen":"entraîner","könnte":"pourrait","sowohl":"aussi bien","für":"pour","das":"le","Unternehmen":"l'entreprise","auch":"aussi","ihre":"sa","eigene":"propre","Karriere":"carrière","konnte":"pouvait","mit":"avec","dem":"le","Gedanken":"pensée","nicht":"ne pas","abfinden":"se résigner","wissentlich":"sciemment","Kundinnen":"clientes","und":"et","Kunden":"clients","Risiko":"risque","auszusetzen":"exposer","Zunächst":"d'abord","versuchte":"a tenté","Problem":"problème","kleinen":"petit","Dienstweg":"voie hiérarchique","zu":"de","lösen":"résoudre","indem":"en","ihren":"son","direkten":"direct","Vorgesetzten":"supérieur","diskret":"discrètement","informierte":"a informé","Hoffnung":"espoir","dass":"que","nötigen":"nécessaires","Schritte":"démarches","einleiten":"engager","würde":"engagerait","Zu":"à","ihrer":"sa","Enttäuschung":"déception","wurde":"a été","jedoch":"cependant","mitgeteilt":"communiqué","Rückrufaktion":"rappel de produit","wirtschaftlichen":"économiques","Gründen":"raisons","derzeit":"actuellement","Betracht":"considération","gezogen":"envisagé","werde":"serait","Angelegenheit":"affaire","erledigt":"close","betrachten":"considérer","solle":"devrait","stand":"se trouvait","daraufhin":"alors","Wahl":"choix","fügen":"se plier","den":"la","deutlich":"nettement","riskanteren":"plus risquée","Weg":"voie","gehen":"prendre","Öffentlichkeit":"public","zuständige":"compétente","Aufsichtsbehörde":"autorité de surveillance","informieren":"informer","Nach":"après","reiflicher":"mûre","Überlegung":"réflexion","berufliche":"professionnelle","Existenz":"existence","persönliche":"personnelle","Integrität":"intégrité","gegeneinander":"l'une contre l'autre","abwog":"a mis en balance","entschied":"a décidé","Letzteres":"cette dernière option","Die":"les","darauffolgenden":"suivants","Monate":"mois","waren":"étaient","von":"par","erheblichem":"considérable","beruflichem":"professionnel","wie":"ainsi que","privatem":"privé","Druck":"pression","geprägt":"marqués","Sie":"elle","innerhalb":"au sein de","des":"de l'","Unternehmens":"l'entreprise","zunehmend":"de plus en plus","isoliert":"isolée","es":"il","kursierten":"circulaient","Gerüchte":"rumeurs","fachliche":"professionnelle","Kompetenz":"compétence","infrage":"en question","stellten":"mettaient","Dennoch":"néanmoins","führte":"a conduit","letztlich":"finalement","dazu":"à cela","Behörde":"autorité","umfassende":"approfondi","Überprüfung":"contrôle","einleitete":"a ouvert","deren":"dont","Folge":"suite","betroffenen":"concernés","Produkte":"produits","zurückgerufen":"rappelés","wurden":"ont été","bevor":"avant que","größerer":"plus important","Schaden":"dommage","entstehen":"survenir","Rückblickend":"rétrospectivement","beschreibt":"décrit","Zeit":"période","schwierigste":"la plus difficile","ihres":"de sa","Berufslebens":"vie professionnelle","betont":"souligne","zugleich":"en même temps","keinen":"aucun","einzigen":"seul","Moment":"instant","lang":"pendant","bereut":"regretté","habe":"a","gegen":"contre","Schweigen":"silence","Überzeugungen":"convictions","entschieden":"décidé","haben":"avoir"}$t$::jsonb
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was fand Helena bei der internen Prüfung heraus?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Dass die Buchhaltung Fehler enthielt$t$, false, 1),
    (v_q, $t$Dass ein bereits verkauftes Produkt schwere Sicherheitsmängel aufwies$t$, true, 2),
    (v_q, $t$Dass ein Kollege log$t$, false, 3),
    (v_q, $t$Dass die Firma zu wenig verdiente$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Worauf stieß Helena während der internen Qualitätsprüfung?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Auf finanzielle Unregelmäßigkeiten$t$, false, 1),
    (v_q, $t$Auf gravierende Sicherheitsmängel bei einem Produkt$t$, true, 2),
    (v_q, $t$Auf einen Streit zwischen Kollegen$t$, false, 3),
    (v_q, $t$Auf einen Fehler in ihrem eigenen Bericht$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was genau verleiht der von Helena entdeckten Situation ihre besondere Brisanz?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Die Mängel betrafen ein rein internes Verfahren ohne Außenwirkung$t$, false, 1),
    (v_q, $t$Es handelte sich um ein Produkt, das bereits an Kundinnen und Kunden ausgeliefert war und somit eine reale Gefährdung darstellte$t$, true, 2),
    (v_q, $t$Helena hatte die Mängel selbst verursacht$t$, false, 3),
    (v_q, $t$Die Mängel wurden bereits öffentlich diskutiert, bevor Helena sie fand$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie reagierte der Vorgesetzte auf Helenas Meldung?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er leitete sofort einen Rückruf ein$t$, false, 1),
    (v_q, $t$Er sagte, ein Rückruf komme aus wirtschaftlichen Gründen nicht infrage$t$, true, 2),
    (v_q, $t$Er entließ Helena$t$, false, 3),
    (v_q, $t$Er informierte selbst die Presse$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was teilte man Helena mit, nachdem sie ihren Vorgesetzten informiert hatte?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Dass sofort ein Rückruf gestartet werde$t$, false, 1),
    (v_q, $t$Dass ein Rückruf aus wirtschaftlichen Gründen nicht infrage komme$t$, true, 2),
    (v_q, $t$Dass sie befördert werde$t$, false, 3),
    (v_q, $t$Dass sie die Behörde selbst informieren solle$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was lässt die Reaktion des Vorgesetzten über die Prioritäten des Unternehmens erkennen?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Dass Sicherheit über wirtschaftlichen Erwägungen stand$t$, false, 1),
    (v_q, $t$Dass wirtschaftliche Überlegungen schwerer wogen als das von Helena aufgezeigte Risiko für Kundinnen und Kunden$t$, true, 2),
    (v_q, $t$Dass der Vorgesetzte Helenas Befund grundsätzlich anzweifelte$t$, false, 3),
    (v_q, $t$Dass das Unternehmen die Entscheidung an die Behörde delegierte$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Bereut Helena rückblickend ihre Entscheidung?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Ja, sehr$t$, false, 1),
    (v_q, $t$Nein, trotz der Schwierigkeiten bereut sie sie nicht$t$, true, 2),
    (v_q, $t$Sie hat sich dazu nie geäußert$t$, false, 3),
    (v_q, $t$Sie ist sich unsicher$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie beschreibt Helena rückblickend ihre Entscheidung?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Als einen großen Fehler$t$, false, 1),
    (v_q, $t$Als etwas, das sie nicht bereut, trotz der Schwierigkeiten$t$, true, 2),
    (v_q, $t$Als unwichtig$t$, false, 3),
    (v_q, $t$Als von Anfang an einfach$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was verrät der Kontrast zwischen der 'schwierigsten Zeit ihres Berufslebens' und ihrer ausbleibenden Reue über Helenas Haltung?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Dass sie den persönlichen Preis als hoch, ihre moralische Entscheidung aber dennoch als richtig empfindet$t$, true, 1),
    (v_q, $t$Dass sie die erlebten Schwierigkeiten im Nachhinein für übertrieben hält$t$, false, 2),
    (v_q, $t$Dass sie ihre Isolation damals nicht ernst genug genommen hat$t$, false, 3),
    (v_q, $t$Dass sie ihre Entscheidung nur aus heutiger, verklärter Sicht rechtfertigt$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Dans le texte, Helena se trouve dans « eine Zwickmühle ». Quel mot allemand correspond le mieux au sens de « Zwickmühle » ici ?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$das Dilemma$t$, true, 1),
    (v_q, $t$die Freude$t$, false, 2),
    (v_q, $t$der Erfolg$t$, false, 3),
    (v_q, $t$die Ruhe$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$« Genau diese Zwickmühle erlebte die Ingenieurin Helena... » Quel synonyme convient le mieux à « Zwickmühle » dans ce contexte ?$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$die Zwangslage$t$, true, 1),
    (v_q, $t$der Kompromiss$t$, false, 2),
    (v_q, $t$die Ausrede$t$, false, 3),
    (v_q, $t$der Vorteil$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Choisissez, parmi ces expressions proches en sens, celle qui rend le mieux la nuance de « Zwickmühle » (situation où chaque choix comporte un coût) telle qu'employée dans le texte.$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$der Zwiespalt zwischen zwei unangenehmen Optionen$t$, true, 1),
    (v_q, $t$die Gelegenheit zu einem Vorteil$t$, false, 2),
    (v_q, $t$die Aussicht auf Erfolg$t$, false, 3),
    (v_q, $t$der Wunsch nach Anerkennung$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Complétez au discours indirect (Konjunktiv I) : 'Man teilte ihr mit, dass eine Rückrufaktion derzeit nicht in Betracht gezogen ___.'$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$werde$t$, true, 1),
    (v_q, $t$wird$t$, false, 2),
    (v_q, $t$würde werden$t$, false, 3),
    (v_q, $t$wurde$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Le texte utilise le discours indirect pour rapporter la décision de la direction. Identifiez la forme correcte du Konjunktiv I passif présent dans : 'dass eine Rückrufaktion ... nicht in Betracht gezogen ___.'$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$werde$t$, true, 1),
    (v_q, $t$werden$t$, false, 2),
    (v_q, $t$würden$t$, false, 3),
    (v_q, $t$worden$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Transformez au discours indirect (Konjunktiv I) la phrase suivante : direct : 'Wir ziehen eine Rückrufaktion nicht in Betracht.' → indirect : 'Man teilte ihr mit, dass eine Rückrufaktion ___.'$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$nicht in Betracht gezogen werde$t$, true, 1),
    (v_q, $t$nicht in Betracht gezogen worden sei$t$, false, 2),
    (v_q, $t$nicht in Betracht gezogen würde$t$, false, 3),
    (v_q, $t$nicht in Betracht zu ziehen sei$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$En vous appuyant sur l'histoire de Helena (« Der Preis des Schweigens »), rédigez en allemand un paragraphe argumentatif de 8 à 12 phrases dans lequel vous discutez : dans quelles circonstances est-il justifié de devenir un/e lanceur/lanceuse d'alerte (Whistleblower), et quels risques personnels cela implique-t-il ? Utilisez au moins une fois le discours indirect (Konjunktiv I).$t$, 1, 'normal', 'production', $t$In der Geschichte 'Der Preis des Schweigens' steht Helena vor der Frage, ob persönliche Loyalität gegenüber dem Arbeitgeber wichtiger sei als die Sicherheit der Kundinnen und Kunden. Meiner Ansicht nach ist Whistleblowing dann gerechtfertigt, wenn interne Meldewege nachweislich versagt haben und eine konkrete Gefahr für Dritte besteht. Im vorliegenden Fall hatte Helena zunächst den kleinen Dienstweg gewählt, doch ihr Vorgesetzter erklärte, eine Rückrufaktion werde aus wirtschaftlichen Gründen nicht in Betracht gezogen. Erst als dieser interne Weg endgültig gescheitert war, entschied sie sich, die Aufsichtsbehörde zu informieren. Ein solches Vorgehen erfordert erhebliche Zivilcourage, da es fast immer mit beruflichen und sozialen Konsequenzen verbunden ist, wie die zunehmende Isolation Helenas im Unternehmen zeigt. Dennoch überwiegt meines Erachtens das öffentliche Interesse an Sicherheit gegenüber dem kurzfristigen wirtschaftlichen Interesse eines Unternehmens. Kritiker könnten einwenden, dass Whistleblower oft voreilig handelten und dem Ruf eines Unternehmens unnötig schadeten. Diesem Einwand ist jedoch entgegenzuhalten, dass Helena erst nach reiflicher Abwägung und nach dem Scheitern interner Kanäle handelte. Gesetzlicher Schutz für Hinweisgeberinnen und Hinweisgeber, wie er in vielen Ländern inzwischen existiert, sollte solche Risiken künftig verringern. Letztlich zeigt die Geschichte, dass individuelle Integrität manchmal einen hohen Preis fordert, dieser Preis aber gerechtfertigt sein kann, wenn dadurch größerer Schaden verhindert wird.$t$);

END $block$;

-- 2. Generationenkonflikt
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary) VALUES (
    'C1',
    $t$Generationenkonflikt$t$,
    $t$Als Familie Hoffmann beschloss, gemeinsam das siebzigste Jubiläum der Großmutter zu feiern, ahnte niemand, dass ausgerechnet dieses freudige Ereignis einen seit Langem schwelenden Generationenkonflikt an die Oberfläche bringen würde. Der Streit entzündete sich zunächst an einer scheinbar belanglosen Frage: Sollte die Feier in traditionellem Rahmen mit klassischer Musik und förmlicher Kleidung stattfinden, wie es die ältere Generation für angemessen hielt, oder eher zwanglos und modern gestaltet werden, wie es sich die Enkelkinder wünschten? Was zunächst wie eine oberflächliche Meinungsverschiedenheit über Organisatorisches erschien, entpuppte sich bei genauerer Betrachtung als Ausdruck tieferliegender unterschiedlicher Wertvorstellungen zwischen den Generationen. Die Großeltern empfanden die Vorschläge der jüngeren Generation teilweise als respektlos gegenüber Traditionen, die ihnen selbst viel bedeuteten, während die Enkelkinder das Beharren auf alten Konventionen als unnötig steif und wenig authentisch wahrnahmen. Die Situation eskalierte, als die Mutter der Familie, hin- und hergerissen zwischen ihren eigenen Eltern und ihren Kindern, versuchte, einen Kompromiss vorzuschlagen, der jedoch von beiden Seiten zunächst zurückgewiesen wurde. Erst als der jüngste Enkel, ein für sein Alter bemerkenswert einfühlsames zwölfjähriges Kind, vorschlug, dass jede Generation einen Teil der Feier nach ihren eigenen Vorstellungen gestalten dürfe, fand die Familie einen Ausweg aus der festgefahrenen Situation. So wurde der offizielle Teil der Feier traditionell gehalten, während im Anschluss ein informellerer Teil mit Musik nach dem Geschmack der jüngeren Generation folgte. Rückblickend betrachtete die gesamte Familie diesen anfänglichen Konflikt als lehrreiche Erfahrung, die verdeutlichte, wie wichtig es ist, unterschiedliche Perspektiven nicht als Bedrohung, sondern als Bereicherung wahrzunehmen.$t$,
    $t$Lorsque la famille Hoffmann décida de fêter ensemble le soixante-dixième anniversaire de la grand-mère, personne ne se doutait que cet événement pourtant joyeux allait précisément faire remonter à la surface un conflit de générations qui couvait depuis longtemps. La dispute s'alluma d'abord autour d'une question apparemment insignifiante : la fête devait-elle se dérouler dans un cadre traditionnel, avec de la musique classique et une tenue formelle, comme le jugeait approprié la génération plus âgée, ou bien être organisée de façon décontractée et moderne, comme le souhaitaient les petits-enfants ? Ce qui semblait au premier abord un simple désaccord superficiel sur l'organisation s'est révélé, à y regarder de plus près, être l'expression de valeurs profondément différentes entre les générations. Les grands-parents percevaient certaines propositions de la jeune génération comme irrespectueuses envers des traditions qui comptaient beaucoup pour eux, tandis que les petits-enfants trouvaient que s'accrocher aux vieilles conventions était inutilement rigide et peu authentique. La situation s'est envenimée lorsque la mère de famille, tiraillée entre ses propres parents et ses enfants, a tenté de proposer un compromis, qui fut cependant rejeté d'abord par les deux camps. Ce n'est que lorsque le plus jeune petit-fils, un enfant de douze ans remarquablement sensible pour son âge, proposa que chaque génération puisse organiser une partie de la fête selon ses propres idées, que la famille trouva une issue à cette situation bloquée. Ainsi, la partie officielle de la fête resta traditionnelle, tandis qu'une partie plus informelle suivit ensuite, avec de la musique au goût de la jeune génération. Rétrospectivement, toute la famille considéra ce conflit initial comme une expérience instructive, qui montra combien il est important de percevoir les perspectives différentes non pas comme une menace, mais comme un enrichissement.$t$,
    $t${"Als":"lorsque","Familie":"famille","Hoffmann":"Hoffmann","beschloss":"décida","gemeinsam":"ensemble","das":"le","siebzigste":"soixante-dixième","Jubiläum":"anniversaire","der":"la","Großmutter":"grand-mère","zu":"de","feiern":"fêter","ahnte":"se doutait","niemand":"personne","dass":"que","ausgerechnet":"précisément","dieses":"cet","freudige":"joyeux","Ereignis":"événement","einen":"un","seit":"depuis","Langem":"longtemps","schwelenden":"qui couvait","Generationenkonflikt":"conflit de générations","an":"à","die":"la","Oberfläche":"surface","bringen":"faire remonter","würde":"allait","Der":"la","Streit":"dispute","entzündete":"s'est allumée","sich":"se","zunächst":"d'abord","einer":"d'une","scheinbar":"apparemment","belanglosen":"insignifiante","Frage":"question","Sollte":"devait","Feier":"fête","in":"dans","traditionellem":"traditionnel","Rahmen":"cadre","mit":"avec","klassischer":"classique","Musik":"musique","und":"et","förmlicher":"formelle","Kleidung":"tenue","stattfinden":"avoir lieu","wie":"comme","es":"cela","ältere":"plus âgée","Generation":"génération","für":"pour","angemessen":"approprié","hielt":"jugeait","oder":"ou","eher":"plutôt","zwanglos":"décontracté","modern":"moderne","gestaltet":"organisée","werden":"être","Enkelkinder":"petits-enfants","wünschten":"souhaitaient","Was":"ce qui","eine":"un","oberflächliche":"superficiel","Meinungsverschiedenheit":"désaccord","über":"sur","Organisatorisches":"questions d'organisation","erschien":"semblait","entpuppte":"s'est révélé","bei":"à","genauerer":"plus précise","Betrachtung":"examen","als":"comme","Ausdruck":"expression","tieferliegender":"plus profondes","unterschiedlicher":"différentes","Wertvorstellungen":"valeurs","zwischen":"entre","den":"les","Generationen":"générations","Die":"les","Großeltern":"grands-parents","empfanden":"percevaient","Vorschläge":"propositions","jüngeren":"plus jeune","teilweise":"en partie","respektlos":"irrespectueux","gegenüber":"envers","Traditionen":"traditions","ihnen":"à eux","selbst":"eux-mêmes","viel":"beaucoup","bedeuteten":"signifiaient","während":"tandis que","Beharren":"insistance","auf":"sur","alten":"vieilles","Konventionen":"conventions","unnötig":"inutilement","steif":"rigide","wenig":"peu","authentisch":"authentique","wahrnahmen":"percevaient","Situation":"situation","eskalierte":"s'est envenimée","Mutter":"mère","hin-":"tiraillée","hergerissen":"déchirée","ihren":"ses","eigenen":"propres","Eltern":"parents","Kindern":"enfants","versuchte":"a tenté","Kompromiss":"compromis","vorzuschlagen":"de proposer","jedoch":"cependant","von":"par","beiden":"les deux","Seiten":"camps","zurückgewiesen":"rejeté","wurde":"fut","Erst":"ce n'est que","jüngste":"le plus jeune","Enkel":"petit-fils","ein":"un","sein":"son","Alter":"âge","bemerkenswert":"remarquablement","einfühlsames":"sensible","zwölfjähriges":"de douze ans","Kind":"enfant","vorschlug":"proposa","jede":"chaque","Teil":"partie","nach":"selon","Vorstellungen":"idées","gestalten":"organiser","dürfe":"puisse","fand":"trouva","Ausweg":"issue","aus":"hors de","festgefahrenen":"bloquée","So":"ainsi","offizielle":"officielle","traditionell":"traditionnelle","gehalten":"tenue","im":"dans le","Anschluss":"à la suite","informellerer":"plus informelle","dem":"au","Geschmack":"goût","folgte":"suivit","Rückblickend":"rétrospectivement","betrachtete":"considéra","gesamte":"toute","diesen":"ce","anfänglichen":"initial","Konflikt":"conflit","lehrreiche":"instructive","Erfahrung":"expérience","verdeutlichte":"montra","wichtig":"important","ist":"est","unterschiedliche":"différentes","Perspektiven":"perspectives","nicht":"ne pas","Bedrohung":"menace","sondern":"mais","Bereicherung":"enrichissement","wahrzunehmen":"de percevoir"}$t$::jsonb
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Worüber stritt die Familie zuerst?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Über den Ort der Feier$t$, false, 1),
    (v_q, $t$Darüber, ob die Feier traditionell oder modern sein sollte$t$, true, 2),
    (v_q, $t$Über die Kosten der Feier$t$, false, 3),
    (v_q, $t$Über die Anzahl der Gäste$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Woran entzündete sich der ursprüngliche Streit?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$An der Frage, wo die Feier stattfinden sollte$t$, false, 1),
    (v_q, $t$An der Frage, ob die Feier traditionell oder modern sein sollte$t$, true, 2),
    (v_q, $t$An finanziellen Fragen$t$, false, 3),
    (v_q, $t$An der Gästeliste$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was zeigt der Streit über die Gestaltung der Feier eigentlich, jenseits der reinen Musikfrage?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Einen grundsätzlichen Konflikt darüber, wessen Vorstellung von Respekt und Angemessenheit gelten soll$t$, true, 1),
    (v_q, $t$Eine finanzielle Uneinigkeit über das Budget der Feier$t$, false, 2),
    (v_q, $t$Ein Missverständnis über das Datum der Feier$t$, false, 3),
    (v_q, $t$Eine Rivalität zwischen den Enkelkindern$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wer hatte die Idee, die den Streit beendete?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Die Großmutter$t$, false, 1),
    (v_q, $t$Die Mutter$t$, false, 2),
    (v_q, $t$Der jüngste Enkel$t$, true, 3),
    (v_q, $t$Ein Freund der Familie$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wer schlug schließlich die Lösung vor, die den Konflikt beendete?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Die Großmutter selbst$t$, false, 1),
    (v_q, $t$Die Mutter der Familie$t$, false, 2),
    (v_q, $t$Der jüngste Enkel$t$, true, 3),
    (v_q, $t$Ein außenstehender Freund der Familie$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was ist an der Herkunft der letztlich erfolgreichen Lösung bemerkenswert?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie kam von der Mutter, deren erster Kompromissversuch zuvor gescheitert war$t$, false, 1),
    (v_q, $t$Sie stammte ausgerechnet vom jüngsten und somit unerfahrensten Familienmitglied, nicht von den zuvor verhandelnden Erwachsenen$t$, true, 2),
    (v_q, $t$Sie wurde von den Großeltern selbst vorgeschlagen, um nachzugeben$t$, false, 3),
    (v_q, $t$Sie entstand durch einen Zufall während der Feier selbst$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie wurde die Feier am Ende organisiert?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Nur traditionell$t$, false, 1),
    (v_q, $t$Nur modern$t$, false, 2),
    (v_q, $t$Mit einem traditionellen und einem informellen Teil$t$, true, 3),
    (v_q, $t$Sie fand gar nicht statt$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie wurde die Feier letztendlich gestaltet?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Nur traditionell$t$, false, 1),
    (v_q, $t$Nur modern$t$, false, 2),
    (v_q, $t$Mit einem traditionellen und einem informellen Teil$t$, true, 3),
    (v_q, $t$Sie wurde ganz abgesagt$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Inwiefern spiegelt die endgültige Struktur der Feier den Lösungsansatz des jüngsten Enkels wider?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Beide Generationen mussten auf ihre jeweiligen Vorstellungen vollständig verzichten$t$, false, 1),
    (v_q, $t$Die zeitliche Trennung in zwei Teile erlaubte es, beide Vorstellungen nacheinander statt gegeneinander umzusetzen$t$, true, 2),
    (v_q, $t$Nur die jüngere Generation konnte ihre Wünsche letztlich verwirklichen$t$, false, 3),
    (v_q, $t$Die Lösung bestand darin, künftige Feiern ganz zu vermeiden$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Que signifie l'adjectif « schwelend » dans « ein seit Langem schwelender Generationenkonflikt » ?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$latent vorhanden$t$, true, 1),
    (v_q, $t$gerade entstanden$t$, false, 2),
    (v_q, $t$bereits gelöst$t$, false, 3),
    (v_q, $t$allgemein bekannt$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welches Wort ist ein passendes Synonym für „schwelend“ im Ausdruck „ein seit Langem schwelender Konflikt“?$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$unterschwellig$t$, true, 1),
    (v_q, $t$offensichtlich$t$, false, 2),
    (v_q, $t$beendet$t$, false, 3),
    (v_q, $t$harmlos$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Im übertragenen Sinn beschreibt „schwelend“ einen Konflikt, der ... Welche Umschreibung trifft die Bedeutung am genauesten?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$im Verborgenen langsam fortbesteht, ohne offen auszubrechen$t$, true, 1),
    (v_q, $t$plötzlich und heftig ausbricht$t$, false, 2),
    (v_q, $t$öffentlich und lautstark ausgetragen wird$t$, false, 3),
    (v_q, $t$endgültig beigelegt wurde$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Identifiez la forme correcte de l'attribut participial étendu : 'ein für sein Alter bemerkenswert ___ Kind' (einfühlsam sein).$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$einfühlsames$t$, true, 1),
    (v_q, $t$einfühlsam$t$, false, 2),
    (v_q, $t$einfühlsamen$t$, false, 3),
    (v_q, $t$eingefühlt$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Complétez l'attribut participial étendu tiré du texte : 'der jüngste Enkel, ein für sein Alter bemerkenswert einfühlsames zwölfjähriges Kind' — quelle transformation en proposition relative est correcte ?$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$ein Kind, das für sein Alter bemerkenswert einfühlsam war$t$, true, 1),
    (v_q, $t$ein Kind, das für sein Alter bemerkenswert einfühlsam gewesen wird$t$, false, 2),
    (v_q, $t$ein Kind, welches für sein Alter einfühlsam werden wird$t$, false, 3),
    (v_q, $t$ein Kind, das für sein Alter einfühlsam sein würde$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Transformez la proposition relative en attribut participial étendu (Partizipialattribut), au bon cas : 'der jüngste Enkel, der für sein Alter bemerkenswert einfühlsam war' → 'der jüngste Enkel, ___'$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$ein für sein Alter bemerkenswert einfühlsames Kind$t$, true, 1),
    (v_q, $t$ein für sein Alter bemerkenswert einfühlsame Kind$t$, false, 2),
    (v_q, $t$ein für sein Alter bemerkenswert einfühlsamen Kind$t$, false, 3),
    (v_q, $t$ein für sein Alter bemerkenswert einfühlsamer Kind$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$En vous appuyant sur « Generationenkonflikt », rédigez en allemand un paragraphe de 8 à 12 phrases sur le thème suivant : comment les familles peuvent-elles concilier des valeurs différentes entre générations sans que cela ne dégénère en conflit ouvert ? Employez au moins un attribut participial étendu.$t$, 1, 'normal', 'production', $t$Der Text 'Generationenkonflikt' zeigt exemplarisch, wie unterschiedliche Wertvorstellungen zwischen Generationen selbst bei freudigen Anlässen zu Spannungen führen können. Ein zentraler Grund dafür liegt darin, dass ältere und jüngere Familienmitglieder Traditionen unterschiedlich bewerten: Was den Großeltern als respektvolle Form erscheint, wirkt auf die Enkelkinder oft als steif und überholt. Meiner Meinung nach lässt sich ein solcher Konflikt am besten vermeiden, indem alle Beteiligten frühzeitig und offen über ihre Erwartungen sprechen, anstatt Differenzen erst bei der Umsetzung eines Ereignisses zu entdecken. Besonders aufschlussreich ist im Text die Rolle des jüngsten Enkels, eines für sein Alter bemerkenswert einfühlsamen Kindes, das einen pragmatischen Kompromiss vorschlägt. Dieses Beispiel verdeutlicht, dass Lösungen nicht zwingend von den vermeintlich Erfahrensten kommen müssen, sondern von denjenigen, die unvoreingenommen zwischen den Fronten vermitteln können. Ein wesentlicher Faktor für eine gelungene Verständigung ist zudem die Bereitschaft, Traditionen nicht als unveränderliche Regeln, sondern als anpassungsfähige Rahmen zu begreifen. Familien, die sich bewusst Zeit für einen offenen Austausch nehmen, können Generationenkonflikte häufig in eine Bereicherung verwandeln, anstatt sie als Bedrohung zu erleben. Letztlich zeigt die Geschichte, dass Kompromissbereitschaft auf beiden Seiten notwendig ist, damit weder Tradition noch Modernität vollständig verdrängt werden. Ich bin daher überzeugt, dass echte gegenseitige Wertschätzung, mehr als starre Regeln, der Schlüssel zu einem harmonischen Miteinander der Generationen ist.$t$);

END $block$;

-- 3. Die Stadt, die nie schläft
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary) VALUES (
    'C1',
    $t$Die Stadt, die nie schläft$t$,
    $t$Als Robert vor drei Jahren aus einem beschaulichen Dorf in eine der größten Metropolen des Landes zog, um dort eine vielversprechende berufliche Chance wahrzunehmen, war er von der schieren Geschwindigkeit und Dichte des urbanen Lebens zunächst überwältigt. Die ständige Geräuschkulisse, die niemals gänzlich verstummenden Straßen und die schiere Anonymität, mit der man sich täglich unter Tausenden von Menschen bewegte, ohne dabei auch nur eine einzige vertraute Person zu erblicken, erschienen ihm anfangs zutiefst befremdlich. Mit der Zeit jedoch begann sich in ihm eine eigentümliche Ambivalenz zu entwickeln, die er zunächst selbst nur schwer in Worte fassen konnte. Einerseits sehnte er sich in stillen Momenten nach der Vertrautheit und Ruhe seines Heimatdorfes, in dem jeder jeden kannte und man sich gegenseitiger Unterstützung gewiss sein konnte. Andererseits erkannte er zunehmend, dass genau jene Anonymität, die ihm zunächst als kalt und entfremdend erschienen war, ihm zugleich eine bis dahin ungekannte Freiheit verlieh: die Freiheit, sich neu zu erfinden, ohne von den Erwartungen einer Gemeinschaft eingeengt zu werden, die einen von Kindheit an zu kennen glaubte. In seinem Heimatdorf, so wurde ihm nun klar, war er stets in erster Linie „der Sohn des Bäckers" gewesen, während er in der Stadt schlichtweg als er selbst wahrgenommen wurde, unbelastet von jahrzehntealten Erwartungen und Zuschreibungen. Diese Erkenntnis veränderte seine Wahrnehmung des urbanen Lebens grundlegend. Was ihm zuvor als bedrohliche Anonymität erschienen war, begann er zunehmend als befreienden Freiraum zu deuten, innerhalb dessen er sich selbst neu definieren konnte, ohne dabei völlig auf jene Formen von Nähe und Zugehörigkeit verzichten zu müssen, die er sich bewusst und gezielt in seinem neuen Umfeld aufzubauen begann, etwa durch ein Ehrenamt in einem Nachbarschaftsverein.$t$,
    $t$Lorsque Robert quitta, il y a trois ans, un paisible village pour s'installer dans l'une des plus grandes métropoles du pays afin d'y saisir une opportunité professionnelle prometteuse, il fut d'abord submergé par la vitesse et la densité pures de la vie urbaine. Le bruit ambiant permanent, les rues qui ne se taisaient jamais complètement et l'anonymat total avec lequel on se déplaçait chaque jour parmi des milliers de personnes sans jamais apercevoir un seul visage familier, lui paraissaient au début profondément déroutants. Avec le temps, cependant, une étrange ambivalence commença à se développer en lui, qu'il eut d'abord lui-même du mal à mettre en mots. D'une part, il aspirait, dans les moments de calme, à la familiarité et à la tranquillité de son village natal, où tout le monde connaissait tout le monde et où l'on pouvait être sûr d'un soutien mutuel. D'autre part, il reconnaissait de plus en plus que cet anonymat même, qui lui avait d'abord semblé froid et aliénant, lui conférait en même temps une liberté jusque-là inconnue : la liberté de se réinventer, sans être enfermé par les attentes d'une communauté qui croyait le connaître depuis l'enfance. Dans son village natal, comprit-il alors, il avait toujours été avant tout « le fils du boulanger », tandis qu'en ville, il était perçu simplement comme lui-même, libéré d'attentes et d'étiquettes vieilles de plusieurs décennies. Cette prise de conscience transforma fondamentalement sa perception de la vie urbaine. Ce qui lui était auparavant apparu comme un anonymat menaçant, il commença de plus en plus à l'interpréter comme un espace de liberté libérateur, à l'intérieur duquel il pouvait se redéfinir lui-même, sans pour autant devoir totalement renoncer à ces formes de proximité et d'appartenance qu'il commença à construire consciemment et délibérément dans son nouvel environnement, par exemple à travers un engagement bénévole dans une association de quartier.$t$,
    $t${"Als":"lorsque","Robert":"Robert","vor":"il y a","drei":"trois","Jahren":"ans","aus":"de","einem":"un","beschaulichen":"paisible","Dorf":"village","in":"dans","eine":"une","der":"des","größten":"plus grandes","Metropolen":"métropoles","des":"du","Landes":"pays","zog":"déménagea","um":"pour","dort":"là-bas","vielversprechende":"prometteuse","berufliche":"professionnelle","Chance":"opportunité","wahrzunehmen":"saisir","war":"fut","er":"il","von":"par","schieren":"pure","Geschwindigkeit":"vitesse","und":"et","Dichte":"densité","urbanen":"urbaine","Lebens":"de la vie","zunächst":"d'abord","überwältigt":"submergé","Die":"le","ständige":"permanent","Geräuschkulisse":"bruit ambiant","die":"qui","niemals":"jamais","gänzlich":"complètement","verstummenden":"qui se taisaient","Straßen":"rues","schiere":"total","Anonymität":"anonymat","mit":"avec","man":"on","sich":"se","täglich":"quotidiennement","unter":"parmi","Tausenden":"des milliers","Menschen":"de personnes","bewegte":"se déplaçait","ohne":"sans","dabei":"ce faisant","auch":"même","nur":"seulement","einzige":"un seul","vertraute":"familier","Person":"personne","zu":"à","erblicken":"apercevoir","erschienen":"paraissaient","ihm":"lui","anfangs":"au début","zutiefst":"profondément","befremdlich":"déroutant","Mit":"avec","Zeit":"le temps","jedoch":"cependant","begann":"commença","eigentümliche":"étrange","Ambivalenz":"ambivalence","entwickeln":"se développer","selbst":"lui-même","schwer":"difficilement","Worte":"mots","fassen":"mettre en mots","konnte":"pouvait","Einerseits":"d'une part","sehnte":"aspirait","stillen":"calmes","Momenten":"moments","nach":"à","Vertrautheit":"familiarité","Ruhe":"tranquillité","seines":"de son","Heimatdorfes":"village natal","dem":"où","jeder":"chacun","jeden":"chacun","kannte":"connaissait","gegenseitiger":"mutuel","Unterstützung":"soutien","gewiss":"sûr","sein":"être","Andererseits":"d'autre part","erkannte":"reconnaissait","zunehmend":"de plus en plus","dass":"que","genau":"justement","jene":"cet","als":"comme","kalt":"froid","entfremdend":"aliénant","zugleich":"en même temps","bis":"jusque","dahin":"là","ungekannte":"inconnue","Freiheit":"liberté","verlieh":"conférait","neu":"à nouveau","erfinden":"réinventer","den":"les","Erwartungen":"attentes","einer":"d'une","Gemeinschaft":"communauté","eingeengt":"enfermé","werden":"être","einen":"le","Kindheit":"enfance","an":"depuis","kennen":"connaître","glaubte":"croyait","In":"dans","seinem":"son","Heimatdorf":"village natal","so":"ainsi","wurde":"devint","nun":"maintenant","klar":"clair","stets":"toujours","erster":"premier","Linie":"ligne","Sohn":"fils","Bäckers":"du boulanger","gewesen":"été","während":"tandis que","Stadt":"ville","schlichtweg":"simplement","wahrgenommen":"perçu","unbelastet":"libéré","jahrzehntealten":"vieilles de décennies","Zuschreibungen":"étiquettes","Diese":"cette","Erkenntnis":"prise de conscience","veränderte":"transforma","seine":"sa","Wahrnehmung":"perception","grundlegend":"fondamentalement","Was":"ce qui","zuvor":"auparavant","bedrohliche":"menaçant","befreienden":"libérateur","Freiraum":"espace de liberté","deuten":"interpréter","innerhalb":"à l'intérieur","dessen":"duquel","definieren":"redéfinir","völlig":"totalement","auf":"à","Formen":"formes","Nähe":"proximité","Zugehörigkeit":"appartenance","verzichten":"renoncer","müssen":"devoir","bewusst":"consciemment","gezielt":"délibérément","neuen":"nouvel","Umfeld":"environnement","aufzubauen":"à construire","etwa":"par exemple","durch":"à travers","ein":"un","Ehrenamt":"engagement bénévole","Nachbarschaftsverein":"association de quartier"}$t$::jsonb
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie fand Robert die Stadt am Anfang?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Vertraut und angenehm$t$, false, 1),
    (v_q, $t$Überwältigend und befremdlich$t$, true, 2),
    (v_q, $t$Langweilig$t$, false, 3),
    (v_q, $t$Er liebte sie sofort$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie hat Robert die Stadt anfangs wahrgenommen?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Als vertraut und angenehm$t$, false, 1),
    (v_q, $t$Als überwältigend und befremdlich$t$, true, 2),
    (v_q, $t$Als langweilig$t$, false, 3),
    (v_q, $t$Er hat sie sofort geliebt$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie verändert sich im Lauf des Textes Roberts Bewertung dessen, was ihn anfangs an der Stadt befremdete?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Was ihm zunächst als bedrohliche Anonymität erschien, deutet er später als befreienden Freiraum um$t$, true, 1),
    (v_q, $t$Er gewöhnt sich lediglich an die Geschwindigkeit, ohne seine Einstellung zur Anonymität zu ändern$t$, false, 2),
    (v_q, $t$Seine anfängliche Faszination weicht einer zunehmenden Ablehnung der Stadt$t$, false, 3),
    (v_q, $t$Er verdrängt seine anfänglichen Eindrücke vollständig und erinnert sich nicht mehr an sie$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie wurde Robert in seinem Heimatdorf wahrgenommen?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Als völlig freie Person$t$, false, 1),
    (v_q, $t$Vor allem als 'der Sohn des Bäckers'$t$, true, 2),
    (v_q, $t$Als Fremder$t$, false, 3),
    (v_q, $t$Er wurde dort kaum wahrgenommen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Erkenntnis hatte Robert über sein Heimatdorf?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Dass er dort völlig frei war$t$, false, 1),
    (v_q, $t$Dass er dort vor allem als „der Sohn des Bäckers" wahrgenommen wurde$t$, true, 2),
    (v_q, $t$Dass er dort unbekannt war$t$, false, 3),
    (v_q, $t$Dass es dort keine Gemeinschaft gab$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was verdeutlicht der Kontrast zwischen 'der Sohn des Bäckers' und der Wahrnehmung 'als er selbst' über Roberts Verhältnis zu Gemeinschaft?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Dass ihm im Dorf eine Identität durch Herkunft zugeschrieben wurde, während ihn die Stadt von solchen Zuschreibungen löste$t$, true, 1),
    (v_q, $t$Dass er in der Stadt genauso stark durch seine Familie definiert wird wie im Dorf$t$, false, 2),
    (v_q, $t$Dass er im Dorf keinerlei soziale Bindungen hatte$t$, false, 3),
    (v_q, $t$Dass auch die Stadtbewohner ihn nach seiner Herkunft benennen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was hat Robert getan, um in der Stadt Nähe zu finden?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er ist zurück aufs Dorf gezogen$t$, false, 1),
    (v_q, $t$Er ist einem Nachbarschaftsverein beigetreten$t$, true, 2),
    (v_q, $t$Er hat gar keine Nähe gesucht$t$, false, 3),
    (v_q, $t$Er hat nur mit Kollegen gesprochen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie hat Robert schließlich versucht, Nähe in der Stadt aufzubauen?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Indem er zurück aufs Dorf gezogen ist$t$, false, 1),
    (v_q, $t$Durch ein Ehrenamt in einem Nachbarschaftsverein$t$, true, 2),
    (v_q, $t$Er hat gar keine Nähe gesucht$t$, false, 3),
    (v_q, $t$Indem er nur mit Kollegen sprach$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was zeigt Roberts Beitritt zum Nachbarschaftsverein über die Art, wie er seine neu gewonnene Freiheit lebt?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Dass er die Anonymität der Stadt letztlich doch als Mangel empfindet und ins Dorf zurückkehren möchte$t$, false, 1),
    (v_q, $t$Dass er die Freiheit der Anonymität schätzt, ohne deshalb ganz auf Gemeinschaft verzichten zu wollen$t$, true, 2),
    (v_q, $t$Dass er ausschließlich berufliche Netzwerke aufbauen wollte$t$, false, 3),
    (v_q, $t$Dass er die Vereinsarbeit nur aus Pflichtgefühl gegenüber seiner Familie aufnahm$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet „befremdlich“ in „erschienen ihm anfangs zutiefst befremdlich“?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$fremd und irritierend$t$, true, 1),
    (v_q, $t$vertraut und angenehm$t$, false, 2),
    (v_q, $t$lustig$t$, false, 3),
    (v_q, $t$gefährlich$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welches Wort passt als Synonym zu „befremdlich“ im Kontext des Textes?$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$verstörend$t$, true, 1),
    (v_q, $t$erfreulich$t$, false, 2),
    (v_q, $t$gewohnt$t$, false, 3),
    (v_q, $t$spannend$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Umschreibung erfasst die Bedeutungsnuance von „befremdlich“ am treffendsten, wie sie Robert zu Beginn empfindet?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$etwas löst ein Gefühl der Verunsicherung aus, weil es der eigenen Norm widerspricht$t$, true, 1),
    (v_q, $t$etwas ist offensichtlich falsch und moralisch verwerflich$t$, false, 2),
    (v_q, $t$etwas erscheint interessant und aufregend neu$t$, false, 3),
    (v_q, $t$etwas wird als gefährlich für die eigene Gesundheit empfunden$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Complétez l'attribut participial : 'die niemals gänzlich ___ Straßen' (verstummen, présent).$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$verstummenden$t$, true, 1),
    (v_q, $t$verstummten$t$, false, 2),
    (v_q, $t$verstummen$t$, false, 3),
    (v_q, $t$verstummend$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Quelle est la transformation correcte en proposition relative de : 'die niemals gänzlich verstummenden Straßen'?$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$die Straßen, die niemals gänzlich verstummen$t$, true, 1),
    (v_q, $t$die Straßen, die niemals gänzlich verstummt sind$t$, false, 2),
    (v_q, $t$die Straßen, die niemals gänzlich verstummt werden$t$, false, 3),
    (v_q, $t$die Straßen, die niemals gänzlich verstummen würden$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Transformez en attribut participial étendu (Partizip I) : 'die Anonymität, die ihm zunächst als kalt und entfremdend erschienen war' → 'die ihm zunächst als kalt und entfremdend ___ Anonymität'$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$erschienene$t$, true, 1),
    (v_q, $t$erscheinende$t$, false, 2),
    (v_q, $t$erschienende$t$, false, 3),
    (v_q, $t$erscheinte$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$En vous appuyant sur « Die Stadt, die nie schläft », rédigez en allemand un paragraphe de 8 à 12 phrases dans lequel vous discutez les avantages et les inconvénients de l'anonymat dans les grandes villes, en vous référant à l'expérience de Robert. Utilisez au moins un attribut participial étendu.$t$, 1, 'normal', 'production', $t$In 'Die Stadt, die nie schläft' erlebt Robert die für Großstädte typische Anonymität zunächst als belastend, später jedoch zunehmend als befreiend. Diese Ambivalenz halte ich für charakteristisch für das urbane Leben insgesamt, da Anonymität stets zwei Seiten besitzt. Einerseits kann das Fehlen vertrauter Gesichter, wie es Robert in den niemals gänzlich verstummenden Straßen der Stadt erfährt, zu Einsamkeit und Entwurzelung führen. Andererseits ermöglicht genau diese Distanz zu anderen Menschen eine Freiheit, sich unabhängig von festgelegten sozialen Rollen neu zu erfinden. In Roberts Heimatdorf war er zeitlebens 'der Sohn des Bäckers', während er in der Stadt allein für sich selbst wahrgenommen wird. Dieser Wechsel zeigt, dass Anonymität nicht zwangsläufig Isolation bedeuten muss, sondern auch Raum für persönliche Entwicklung schaffen kann. Entscheidend ist jedoch, dass Menschen sich aktiv um neue Formen von Nähe bemühen, wie Robert es durch sein Ehrenamt tut, damit Freiheit nicht in Vereinsamung umschlägt. Städte sollten daher gezielt Räume und Gemeinschaftsinitiativen fördern, die es Neuankömmlingen erleichtern, trotz Anonymität Verbindungen aufzubauen. Insgesamt zeigt Roberts Geschichte, dass die Großstadt sowohl entfremdend als auch befreiend wirken kann, je nachdem, wie aktiv der Einzelne mit ihrer Anonymität umgeht.$t$);

END $block$;

-- 4. Ein Brief an mein früheres Ich
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary) VALUES (
    'C1',
    $t$Ein Brief an mein früheres Ich$t$,
    $t$Liebe Katharina von vor zehn Jahren, wenn du diesen Brief lesen könntest, würdest du vermutlich nicht glauben, wie sehr sich dein Leben seither verändert hat – und noch weniger würdest du glauben, aus welchen unerwarteten Gründen diese Veränderungen eingetreten sind. Du stehst gerade kurz davor, dein Studium abzuschließen, und bist fest davon überzeugt, dass dein weiterer Lebensweg bereits in allen Einzelheiten feststeht: eine sichere Anstellung in einem renommierten Unternehmen, eine geradlinige Karriere und ein Leben, das genau jenem Plan entspricht, den du dir seit der Schulzeit zurechtgelegt hast. Was du zu diesem Zeitpunkt noch nicht ahnst, ist, dass ausgerechnet eine Verkettung scheinbar unglücklicher Zufälle – eine geplatzte Bewerbung, eine zufällige Begegnung während einer Zugverspätung und eine spontane Entscheidung, die dir im Nachhinein völlig irrational erscheinen wird – dich auf einen vollkommen anderen Weg führen werden, als du ihn dir je hättest vorstellen können. Ich möchte dir nicht verraten, wie genau sich alles entwickeln wird, denn ich glaube fest daran, dass gerade die Ungewissheit, mit der du dich damals auseinandersetzen musstest, entscheidend dazu beigetragen hat, dass du zu der Person geworden bist, die du heute bist. Was ich dir jedoch mit auf den Weg geben möchte, ist Folgendes: Vertraue darauf, dass ein Abweichen von deinem ursprünglichen Plan keineswegs ein Scheitern bedeutet, sondern vielmehr eine Gelegenheit sein kann, Facetten deiner selbst zu entdecken, von deren Existenz du bislang nichts geahnt hast. Die Ängste, die dich in schlaflosen Nächten plagen werden, wenn sich dein Leben nicht so entwickelt, wie du es geplant hattest, werden sich rückblickend als vollkommen unbegründet erweisen. In Wirklichkeit wird gerade diese Zeit der Unsicherheit zu einer der prägendsten und bereicherndsten Phasen deines gesamten Lebens werden. Mit größter Zuneigung, Katharina von heute.$t$,
    $t$Chère Katharina d'il y a dix ans, si tu pouvais lire cette lettre, tu ne croirais sans doute pas à quel point ta vie a changé depuis – et tu croirais encore moins pour quelles raisons inattendues ces changements sont survenus. Tu es actuellement sur le point de terminer tes études, et tu es fermement convaincue que la suite de ton parcours de vie est déjà fixée dans les moindres détails : un emploi sûr dans une entreprise renommée, une carrière toute tracée et une vie qui correspond exactement à ce plan que tu t'es fixé depuis l'école. Ce que tu ne soupçonnes pas encore à ce moment-là, c'est que ce sera précisément un enchaînement de coïncidences apparemment malheureuses – une candidature qui échoue, une rencontre fortuite lors d'un retard de train et une décision spontanée qui te paraîtra rétrospectivement totalement irrationnelle – qui te conduira sur une voie complètement différente de celle que tu aurais jamais pu imaginer. Je ne veux pas te révéler comment tout va exactement se dérouler, car je crois fermement que c'est précisément l'incertitude à laquelle tu as dû faire face à l'époque qui a contribué de façon décisive à faire de toi la personne que tu es aujourd'hui. Ce que je veux cependant te transmettre, c'est ceci : aie confiance dans le fait que s'écarter de ton plan initial ne signifie nullement un échec, mais peut au contraire être une occasion de découvrir des facettes de toi-même dont tu n'avais jusqu'ici pas soupçonné l'existence. Les peurs qui te tourmenteront lors de nuits blanches, quand ta vie ne se déroulera pas comme tu l'avais prévu, se révéleront rétrospectivement tout à fait infondées. En réalité, c'est précisément cette période d'incertitude qui deviendra l'une des phases les plus marquantes et les plus enrichissantes de toute ta vie. Avec toute mon affection, Katharina d'aujourd'hui.$t$,
    $t${"Liebe":"chère","Katharina":"Katharina","von":"d'","vor":"il y a","zehn":"dix","Jahren":"ans","wenn":"si","du":"tu","diesen":"cette","Brief":"lettre","lesen":"lire","könntest":"pouvais","würdest":"croirais","vermutlich":"sans doute","nicht":"ne pas","glauben":"croire","wie":"à quel point","sehr":"tellement","sich":"se","dein":"ta","Leben":"vie","seither":"depuis","verändert":"changé","hat":"a","und":"et","noch":"encore","weniger":"moins","aus":"pour","welchen":"quelles","unerwarteten":"inattendues","Gründen":"raisons","diese":"ces","Veränderungen":"changements","eingetreten":"survenus","sind":"sont","Du":"tu","stehst":"es sur le point","gerade":"justement","kurz":"juste","davor":"avant de","Studium":"études","abzuschließen":"de terminer","bist":"es","fest":"fermement","davon":"de cela","überzeugt":"convaincue","dass":"que","weiterer":"la suite de","Lebensweg":"parcours de vie","bereits":"déjà","in":"dans","allen":"tous","Einzelheiten":"détails","feststeht":"est fixé","eine":"un","sichere":"sûr","Anstellung":"emploi","einem":"une","renommierten":"renommée","Unternehmen":"entreprise","geradlinige":"toute tracée","Karriere":"carrière","ein":"une","das":"qui","genau":"exactement","jenem":"à ce","Plan":"plan","entspricht":"correspond","den":"que","dir":"tu","seit":"depuis","der":"l'","Schulzeit":"école","zurechtgelegt":"fixé","hast":"as","Was":"ce que","zu":"à","diesem":"ce","Zeitpunkt":"moment","ahnst":"soupçonnes","ist":"est","ausgerechnet":"précisément","Verkettung":"enchaînement","scheinbar":"apparemment","unglücklicher":"malheureuses","Zufälle":"coïncidences","geplatzte":"échouée","Bewerbung":"candidature","zufällige":"fortuite","Begegnung":"rencontre","während":"lors de","einer":"d'un","Zugverspätung":"retard de train","spontane":"spontanée","Entscheidung":"décision","die":"qui","im":"dans le","Nachhinein":"après coup","völlig":"totalement","irrational":"irrationnelle","erscheinen":"paraître","wird":"sera","dich":"te","auf":"sur","einen":"une","vollkommen":"complètement","anderen":"différente","Weg":"voie","führen":"conduire","werden":"(futur)","als":"que","ihn":"la","je":"jamais","hättest":"aurais","vorstellen":"imaginer","können":"pu","Ich":"je","möchte":"veux","verraten":"révéler","alles":"tout","entwickeln":"se dérouler","denn":"car","ich":"je","glaube":"crois","daran":"à cela","Ungewissheit":"incertitude","mit":"avec","damals":"à l'époque","auseinandersetzen":"faire face","musstest":"as dû","entscheidend":"de façon décisive","dazu":"à cela","beigetragen":"contribué","Person":"personne","geworden":"devenue","heute":"aujourd'hui","jedoch":"cependant","geben":"transmettre","Folgendes":"ceci","Vertraue":"aie confiance","darauf":"dans le fait que","Abweichen":"le fait de s'écarter","deinem":"ton","ursprünglichen":"initial","keineswegs":"nullement","Scheitern":"échec","bedeutet":"signifie","sondern":"mais","vielmehr":"plutôt","Gelegenheit":"occasion","sein":"être","kann":"peut","Facetten":"facettes","deiner":"de toi","selbst":"même","entdecken":"découvrir","deren":"dont","Existenz":"existence","bislang":"jusqu'ici","nichts":"rien","geahnt":"soupçonné","Die":"les","Ängste":"peurs","schlaflosen":"blanches","Nächten":"nuits","plagen":"tourmenteront","so":"ainsi","entwickelt":"se déroule","es":"cela","geplant":"prévu","hattest":"avais","rückblickend":"rétrospectivement","unbegründet":"infondées","erweisen":"se révéler","In":"en","Wirklichkeit":"réalité","Zeit":"période","Unsicherheit":"incertitude","prägendsten":"les plus marquantes","bereicherndsten":"les plus enrichissantes","Phasen":"phases","deines":"de ta","gesamten":"toute","Lebens":"vie","Mit":"avec","größter":"la plus grande","Zuneigung":"affection"}$t$::jsonb
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was dachte die junge Katharina über ihre Zukunft?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Dass sie völlig ungewiss sei$t$, false, 1),
    (v_q, $t$Dass sie schon feststehe$t$, true, 2),
    (v_q, $t$Dass sie nie einen Job finden würde$t$, false, 3),
    (v_q, $t$Dass sie ins Ausland ziehen würde$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was glaubte die junge Katharina über ihren zukünftigen Lebensweg?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Dass er völlig ungewiss sei$t$, false, 1),
    (v_q, $t$Dass er bereits genau feststehe$t$, true, 2),
    (v_q, $t$Dass sie nie einen Job finden würde$t$, false, 3),
    (v_q, $t$Dass sie ins Ausland ziehen würde$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie verhält sich die vermeintliche Gewissheit der jungen Katharina zu dem, was der Text als tatsächlich entscheidend für ihre Entwicklung darstellt?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Die vermeintliche Gewissheit steht im Gegensatz zu der Ungewissheit, die rückblickend als prägend gilt$t$, true, 1),
    (v_q, $t$Ihre Gewissheit wurde von Anfang an durch die späteren Zufälle bestätigt$t$, false, 2),
    (v_q, $t$Die Ungewissheit bezog sich nur auf ihre Studienwahl, nicht auf den Berufsweg$t$, false, 3),
    (v_q, $t$Katharina hatte damals nie eine klare Vorstellung von ihrer Zukunft$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was hat Katharinas Leben in eine neue Richtung gelenkt?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Eine langfristige Planung$t$, false, 1),
    (v_q, $t$Eine Reihe scheinbar zufälliger Ereignisse$t$, true, 2),
    (v_q, $t$Der Rat ihrer Eltern$t$, false, 3),
    (v_q, $t$Ein Buch, das sie gelesen hat$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was hat laut dem Brief Katharinas Leben tatsächlich in eine andere Richtung gelenkt?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Eine sorgfältige, langfristige Planung$t$, false, 1),
    (v_q, $t$Eine Reihe scheinbar zufälliger Ereignisse$t$, true, 2),
    (v_q, $t$Der Rat ihrer Eltern$t$, false, 3),
    (v_q, $t$Ein Buch, das sie gelesen hat$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Funktion erfüllen die im Brief genannten Einzelereignisse (geplatzte Bewerbung, Zugbegegnung, spontane Entscheidung) im Argument des Textes?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie dienen als Beispiele dafür, wie scheinbar unglückliche Zufälle sich rückblickend als entscheidende Wendepunkte erweisen können$t$, true, 1),
    (v_q, $t$Sie belegen, dass Katharinas ursprünglicher Plan im Wesentlichen doch aufgegangen ist$t$, false, 2),
    (v_q, $t$Sie zeigen, dass Katharina ihre Entscheidungen stets sorgfältig vorbereitet hatte$t$, false, 3),
    (v_q, $t$Sie sind bloße Nebensächlichkeiten ohne Einfluss auf ihren weiteren Weg$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was möchte Katharina ihrem jüngeren Ich vor allem sagen?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Dass Abweichungen vom Plan ein Scheitern sind$t$, false, 1),
    (v_q, $t$Dass Unsicherheit unbedingt vermieden werden sollte$t$, false, 2),
    (v_q, $t$Dass ein anderer Weg als geplant bereichernd sein kann$t$, true, 3),
    (v_q, $t$Dass sie alles genauso wieder machen würde$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was möchte die ältere Katharina ihrem jüngeren Ich vor allem vermitteln?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Dass Abweichungen vom Plan ein Scheitern sind$t$, false, 1),
    (v_q, $t$Dass Unsicherheit vermieden werden sollte$t$, false, 2),
    (v_q, $t$Dass ein anderer Weg als geplant bereichernd sein kann$t$, true, 3),
    (v_q, $t$Dass sie alles genauso wieder machen würde$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie begründet der Text die These, dass ein Abweichen vom Plan kein Scheitern bedeutet?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Damit, dass sich die damaligen Ängste im Rückblick als unbegründet erweisen und die Unsicherheit zu einer prägenden Lebensphase wurde$t$, true, 1),
    (v_q, $t$Damit, dass Katharina ihren ursprünglichen Plan letztlich doch noch verwirklichte$t$, false, 2),
    (v_q, $t$Damit, dass Planung grundsätzlich nutzlos sei$t$, false, 3),
    (v_q, $t$Damit, dass sich ihre Ängste später als berechtigt herausstellten$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet „die Verkettung“ in „eine Verkettung scheinbar unglücklicher Zufälle“?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$eine Aneinanderreihung/Verbindung von Ereignissen$t$, true, 1),
    (v_q, $t$ein einzelnes Ereignis$t$, false, 2),
    (v_q, $t$ein glücklicher Zufall$t$, false, 3),
    (v_q, $t$eine bewusste Entscheidung$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welches Wort ist ein Synonym für „Verkettung“ im Sinne von „eine Verkettung von Zufällen“?$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$die Abfolge$t$, true, 1),
    (v_q, $t$die Ausnahme$t$, false, 2),
    (v_q, $t$der Widerspruch$t$, false, 3),
    (v_q, $t$die Wiederholung$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Umschreibung trifft die Bedeutung von „Verkettung“ am genauesten, wie sie im Text verwendet wird?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$mehrere scheinbar unabhängige Ereignisse, die sich gegenseitig bedingen und zu einem Ergebnis führen$t$, true, 1),
    (v_q, $t$ein einzelnes, isoliert betrachtetes Ereignis ohne Folgen$t$, false, 2),
    (v_q, $t$eine geplante und bewusst herbeigeführte Ereigniskette$t$, false, 3),
    (v_q, $t$ein wiederkehrendes, immer gleiches Muster$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Complétez la phrase irréelle au Konjunktiv II : 'Wenn du diesen Brief lesen ___, würdest du es nicht glauben.'$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$könntest$t$, true, 1),
    (v_q, $t$kannst$t$, false, 2),
    (v_q, $t$konntest$t$, false, 3),
    (v_q, $t$könnest$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Quelle est la forme correcte du Konjunktiv II dans la phrase conditionnelle : 'wenn du diesen Brief lesen könntest, ___ du vermutlich nicht glauben.'$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$würdest$t$, true, 1),
    (v_q, $t$wirst$t$, false, 2),
    (v_q, $t$würdest werden$t$, false, 3),
    (v_q, $t$hättest$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Réécrivez au Konjunktiv II passé (irréel du passé) : 'Wenn du diesen Brief gelesen hättest, ___ du es nicht geglaubt.'$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$hättest$t$, true, 1),
    (v_q, $t$würdest$t$, false, 2),
    (v_q, $t$hast$t$, false, 3),
    (v_q, $t$wärst$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$En vous inspirant de « Ein Brief an mein früheres Ich », rédigez en allemand, à la première personne, un paragraphe de 8 à 12 phrases sous forme de lettre à votre « moi » plus jeune, dans lequel vous réfléchissez au rôle du hasard et de l'incertitude dans les décisions de vie importantes. Utilisez au moins une phrase au Konjunktiv II.$t$, 1, 'normal', 'production', $t$Liebe/r du von vor zehn Jahren, wenn du wüsstest, wie sehr sich dein Leben seither verändert hat, würdest du es kaum glauben. Damals warst du fest davon überzeugt, dass sich dein Weg exakt so entwickeln würde, wie du ihn dir vorgestellt hattest. In Wirklichkeit waren es gerade die ungeplanten Momente, eine verpasste Gelegenheit, eine zufällige Begegnung, die deinem Leben eine ganz neue Richtung gegeben haben. Ich glaube heute, dass Unsicherheit kein Zeichen von Scheitern ist, sondern oft der Ausgangspunkt für echtes persönliches Wachstum. Hättest du damals gewusst, wie viel Gutes aus scheinbaren Rückschlägen entstehen würde, hättest du dir vermutlich viele schlaflose Nächte erspart. Dennoch bin ich überzeugt, dass gerade diese Ungewissheit dich gelehrt hat, flexibel zu bleiben und Chancen zu erkennen, die außerhalb deines ursprünglichen Plans lagen. Ein Leben, das vollständig planbar wäre, böte vermutlich weniger Raum für Überraschung und persönliche Entfaltung. Deshalb möchte ich dir raten: Vertraue darauf, dass ein Abweichen vom Plan nicht das Ende, sondern oft der Anfang von etwas Wertvollem sein kann. Mit dieser Gewissheit blicke ich heute dankbar auf jene Zeit der Unsicherheit zurück, die mich zu der Person gemacht hat, die ich heute bin.$t$);

END $block$;

-- 5. Die Kunst des Verzichts
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary) VALUES (
    'C1',
    $t$Die Kunst des Verzichts$t$,
    $t$Es mag paradox erscheinen, doch in einer Gesellschaft, die vom stetigen Konsum und der permanenten Verfügbarkeit nahezu grenzenloser Möglichkeiten geprägt ist, entscheiden sich zunehmend mehr Menschen bewusst dafür, auf Überfluss zu verzichten und ein Leben zu führen, das sich an Genügsamkeit statt an Maximierung orientiert. Der Journalist Fabian, der über mehrere Jahre hinweg einen ausgesprochen konsumorientierten Lebensstil gepflegt hatte, beschreibt in seinem kürzlich erschienenen Buch eindrücklich, wie eine gesundheitliche Krise ihn dazu veranlasste, sein gesamtes Verhältnis zu materiellem Besitz grundlegend zu überdenken. Nachdem er wochenlang ans Krankenbett gefesselt gewesen war, wurde ihm auf schmerzhafte Weise bewusst, wie wenig die zahllosen Gegenstände, die er im Laufe der Jahre angehäuft hatte, tatsächlich zu seinem Wohlbefinden beigetragen hatten. Nach seiner Genesung begann er, systematisch seinen gesamten Besitz zu überprüfen, und trennte sich in den folgenden Monaten von weit über der Hälfte seiner Habseligkeiten. Anfänglich, so gesteht er offen ein, sei dieser Prozess von erheblichen Ängsten begleitet gewesen, insbesondere von der Sorge, sich später einmal an etwas zu erinnern, das er unwiederbringlich weggegeben hatte, und dies dann zu bereuen. Diese befürchtete Reue blieb jedoch, entgegen seiner Erwartung, größtenteils aus. Stattdessen berichtet Fabian von einem zunehmenden Gefühl der Erleichterung sowie einer neu gewonnenen Klarheit im Denken, die er auf die deutlich reduzierte Anzahl an Entscheidungen zurückführt, die er im Alltag treffen muss, wenn deutlich weniger Besitz zur Verfügung steht. Er betont jedoch ausdrücklich, dass es ihm keineswegs um eine dogmatische Ablehnung jeglichen Konsums gehe, sondern vielmehr um eine bewusste, reflektierte Auseinandersetzung mit der Frage, welche Dinge tatsächlich zu einem erfüllten Leben beitragen und welche lediglich aus Gewohnheit oder gesellschaftlichem Druck angeschafft wurden.$t$,
    $t$Cela peut sembler paradoxal, mais dans une société marquée par la consommation constante et la disponibilité permanente de possibilités quasi illimitées, un nombre croissant de personnes choisissent délibérément de renoncer à l'abondance et de mener une vie orientée vers la sobriété plutôt que vers la maximisation. Le journaliste Fabian, qui avait mené pendant plusieurs années un style de vie résolument consumériste, décrit de façon saisissante dans son livre récemment paru comment une crise de santé l'a amené à repenser fondamentalement tout son rapport aux biens matériels. Après avoir été cloué à son lit d'hôpital pendant des semaines, il a pris douloureusement conscience de la faible mesure dans laquelle les innombrables objets qu'il avait accumulés au fil des années avaient réellement contribué à son bien-être. Après sa guérison, il a commencé à passer systématiquement en revue tous ses biens et s'est séparé, au cours des mois suivants, de bien plus de la moitié de ses possessions. Au début, avoue-t-il ouvertement, ce processus s'est accompagné d'angoisses considérables, notamment la crainte de se souvenir plus tard d'un objet qu'il avait donné de façon irrémédiable, et de le regretter alors. Ce regret redouté, cependant, contrairement à ses attentes, ne s'est en grande partie pas produit. Fabian rapporte au contraire un sentiment croissant de soulagement ainsi qu'une clarté d'esprit nouvellement acquise, qu'il attribue au nombre nettement réduit de décisions qu'il doit prendre au quotidien lorsqu'on dispose de nettement moins de biens. Il souligne cependant expressément qu'il ne s'agit nullement pour lui d'un rejet dogmatique de toute consommation, mais plutôt d'une réflexion consciente et posée sur la question de savoir quelles choses contribuent réellement à une vie accomplie et lesquelles n'ont été acquises que par habitude ou sous la pression sociale.$t$,
    $t${"Es":"il","mag":"peut","paradox":"paradoxal","erscheinen":"sembler","doch":"mais","in":"dans","einer":"une","Gesellschaft":"société","die":"qui","vom":"par le","stetigen":"constant","Konsum":"consommation","und":"et","der":"la","permanenten":"permanente","Verfügbarkeit":"disponibilité","nahezu":"quasi","grenzenloser":"illimitées","Möglichkeiten":"possibilités","geprägt":"marquée","ist":"est","entscheiden":"choisissent","sich":"se","zunehmend":"de plus en plus","mehr":"davantage de","Menschen":"personnes","bewusst":"délibérément","dafür":"pour cela","auf":"à","Überfluss":"abondance","zu":"de","verzichten":"renoncer","ein":"une","Leben":"vie","führen":"mener","das":"qui","an":"vers","Genügsamkeit":"sobriété","statt":"plutôt que","Maximierung":"maximisation","orientiert":"orientée","Der":"le","Journalist":"journaliste","Fabian":"Fabian","über":"pendant","mehrere":"plusieurs","Jahre":"années","hinweg":"durant","einen":"un","ausgesprochen":"résolument","konsumorientierten":"consumériste","Lebensstil":"style de vie","gepflegt":"mené","hatte":"avait","beschreibt":"décrit","seinem":"son","kürzlich":"récemment","erschienenen":"paru","Buch":"livre","eindrücklich":"de façon saisissante","wie":"comment","eine":"une","gesundheitliche":"de santé","Krise":"crise","ihn":"le","dazu":"à cela","veranlasste":"a amené","sein":"son","gesamtes":"tout son","Verhältnis":"rapport","materiellem":"matériel","Besitz":"biens","grundlegend":"fondamentalement","überdenken":"repenser","Nachdem":"après que","er":"il","wochenlang":"pendant des semaines","ans":"au","Krankenbett":"lit d'hôpital","gefesselt":"cloué","gewesen":"été","war":"avait été","wurde":"est devenu","ihm":"lui","schmerzhafte":"douloureuse","Weise":"manière","wenig":"peu","zahllosen":"innombrables","Gegenstände":"objets","im":"au","Laufe":"cours","angehäuft":"accumulés","tatsächlich":"réellement","Wohlbefinden":"bien-être","beigetragen":"contribué","hatten":"avaient","Nach":"après","seiner":"sa","Genesung":"guérison","begann":"a commencé","systematisch":"systématiquement","seinen":"ses","gesamten":"tous ses","überprüfen":"passer en revue","trennte":"s'est séparé","den":"les","folgenden":"suivants","Monaten":"mois","von":"de","weit":"bien","Hälfte":"moitié","Habseligkeiten":"possessions","Anfänglich":"au début","so":"ainsi","gesteht":"avoue","offen":"ouvertement","sei":"fut","dieser":"ce","Prozess":"processus","erheblichen":"considérables","Ängsten":"angoisses","begleitet":"accompagné","insbesondere":"notamment","Sorge":"crainte","später":"plus tard","einmal":"un jour","etwas":"quelque chose","erinnern":"se souvenir","unwiederbringlich":"irrémédiablement","weggegeben":"donné","dies":"cela","dann":"alors","bereuen":"regretter","Diese":"ce","befürchtete":"redouté","Reue":"regret","blieb":"ne s'est pas produit","jedoch":"cependant","entgegen":"contrairement à","Erwartung":"attente","größtenteils":"en grande partie","aus":"(ne pas se produire)","Stattdessen":"au contraire","berichtet":"rapporte","einem":"un","zunehmenden":"croissant","Gefühl":"sentiment","Erleichterung":"soulagement","sowie":"ainsi que","neu":"nouvellement","gewonnenen":"acquise","Klarheit":"clarté","Denken":"esprit","deutlich":"nettement","reduzierte":"réduit","Anzahl":"nombre","Entscheidungen":"décisions","zurückführt":"attribue","Alltag":"quotidien","treffen":"prendre","muss":"doit","wenn":"lorsque","weniger":"moins","zur":"à","Verfügung":"disposition","steht":"est","Er":"il","betont":"souligne","ausdrücklich":"expressément","dass":"que","es":"il","keineswegs":"nullement","um":"de","dogmatische":"dogmatique","Ablehnung":"rejet","jeglichen":"de toute","Konsums":"consommation","gehe":"s'agit","sondern":"mais","vielmehr":"plutôt","bewusste":"consciente","reflektierte":"posée","Auseinandersetzung":"réflexion","mit":"sur","Frage":"question","welche":"quelles","Dinge":"choses","erfüllten":"accomplie","beitragen":"contribuent","lediglich":"seulement","Gewohnheit":"habitude","oder":"ou","gesellschaftlichem":"sociale","Druck":"pression","angeschafft":"acquises","wurden":"ont été"}$t$::jsonb
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was hat Fabian dazu gebracht, über seinen Besitz nachzudenken?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Ein Ratschlag eines Freundes$t$, false, 1),
    (v_q, $t$Eine gesundheitliche Krise$t$, true, 2),
    (v_q, $t$Finanzielle Probleme$t$, false, 3),
    (v_q, $t$Ein Umzug ins Ausland$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was hat Fabian dazu veranlasst, sein Verhältnis zu Besitz zu überdenken?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Ein Ratschlag eines Freundes$t$, false, 1),
    (v_q, $t$Eine gesundheitliche Krise$t$, true, 2),
    (v_q, $t$Finanzielle Probleme$t$, false, 3),
    (v_q, $t$Ein Umzug ins Ausland$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welchen Zusammenhang stellt der Text zwischen Fabians Bettlägerigkeit und seiner späteren Haltung zu Besitz her?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Die erzwungene Passivität ließ ihn erkennen, wie wenig seine angehäuften Gegenstände tatsächlich zu seinem Wohlbefinden beitrugen$t$, true, 1),
    (v_q, $t$Die Krankheit zwang ihn, seinen Besitz aus finanzieller Not zu verkaufen$t$, false, 2),
    (v_q, $t$Während der Krankheit kaufte er aus Langeweile zusätzliche Gegenstände$t$, false, 3),
    (v_q, $t$Die Bettlägerigkeit hatte keinen erkennbaren Einfluss auf seine spätere Einstellung$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wovor hatte Fabian anfangs Angst, als er seinen Besitz reduzierte?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Davor, arm zu werden$t$, false, 1),
    (v_q, $t$Davor, später etwas zu vermissen und es zu bereuen$t$, true, 2),
    (v_q, $t$Davor, seine Arbeit zu verlieren$t$, false, 3),
    (v_q, $t$Davor, dass ihn niemand mehr besuchen würde$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wovor hatte Fabian anfangs Angst, als er begann, seinen Besitz zu reduzieren?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Davor, arm zu werden$t$, false, 1),
    (v_q, $t$Davor, später etwas zu vermissen und es zu bereuen$t$, true, 2),
    (v_q, $t$Davor, seine Arbeit zu verlieren$t$, false, 3),
    (v_q, $t$Davor, dass ihn niemand mehr besuchen würde$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie verhält sich Fabians anfängliche Furcht zu dem, was er später tatsächlich erlebte?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Seine Furcht vor Reue bestätigte sich weitgehend nicht; stattdessen erlebte er Erleichterung und Klarheit$t$, true, 1),
    (v_q, $t$Seine Furcht erwies sich als berechtigt, weshalb er einen Teil seines Besitzes zurückkaufte$t$, false, 2),
    (v_q, $t$Er verspürte weder vorher Angst noch nachher Erleichterung$t$, false, 3),
    (v_q, $t$Seine Furcht bezog sich ausschließlich auf finanzielle Aspekte und bestätigte sich vollständig$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was ist Fabians Botschaft laut dem Text?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Für die vollständige Ablehnung jeglichen Konsums$t$, false, 1),
    (v_q, $t$Für eine bewusste Auseinandersetzung damit, was zu einem erfüllten Leben beiträgt$t$, true, 2),
    (v_q, $t$Dass jeder genauso leben sollte wie er$t$, false, 3),
    (v_q, $t$Für mehr Konsum als Ausgleich$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wofür plädiert Fabian laut dem Text?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Für die vollständige Ablehnung jeglichen Konsums$t$, false, 1),
    (v_q, $t$Für eine bewusste Auseinandersetzung damit, was wirklich zu einem erfüllten Leben beiträgt$t$, true, 2),
    (v_q, $t$Dafür, dass jeder genauso leben sollte wie er$t$, false, 3),
    (v_q, $t$Für mehr Konsum als Ausgleich$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie unterscheidet der Text Fabians Haltung von einer dogmatischen Konsumkritik?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Indem betont wird, dass es ihm nicht um pauschale Ablehnung von Konsum, sondern um eine reflektierte Prüfung dessen geht, was wirklich zum Wohlbefinden beiträgt$t$, true, 1),
    (v_q, $t$Indem er fordert, dass alle Menschen genauso wenig besitzen sollten wie er$t$, false, 2),
    (v_q, $t$Indem er erklärt, dass Konsum grundsätzlich schädlich sei$t$, false, 3),
    (v_q, $t$Indem er seine Haltung als vorübergehende Phase relativiert, die er bald wieder aufgeben will$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet „die Genügsamkeit“?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$die Bescheidenheit, mit wenig zufrieden sein$t$, true, 1),
    (v_q, $t$der Überfluss$t$, false, 2),
    (v_q, $t$die Gier$t$, false, 3),
    (v_q, $t$die Verschwendung$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welches Wort ist ein passendes Synonym für „Genügsamkeit“ im Kontext des Textes?$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$die Anspruchslosigkeit$t$, true, 1),
    (v_q, $t$der Luxus$t$, false, 2),
    (v_q, $t$die Maßlosigkeit$t$, false, 3),
    (v_q, $t$der Konsum$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Umschreibung erfasst die Bedeutung von „Genügsamkeit“ am präzisesten, wie sie im Text dem „Überfluss“ gegenübergestellt wird?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$die bewusste Zufriedenheit mit dem, was ausreicht, ohne nach mehr zu streben$t$, true, 1),
    (v_q, $t$das Streben nach immer größerem materiellem Besitz$t$, false, 2),
    (v_q, $t$die Unfähigkeit, sich etwas zu leisten$t$, false, 3),
    (v_q, $t$die Ablehnung jeglicher sozialer Kontakte$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Complétez le discours indirect (Konjunktiv I passé) : 'Er gesteht ein, dass dieser Prozess von Ängsten begleitet ___.'$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$gewesen sei$t$, true, 1),
    (v_q, $t$gewesen ist$t$, false, 2),
    (v_q, $t$gewesen wäre$t$, false, 3),
    (v_q, $t$gewesen wird$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Identifiez la forme correcte du Konjunktiv I (passé, passif) dans : 'so gesteht er offen ein, ___ dieser Prozess von erheblichen Ängsten begleitet gewesen.'$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$sei$t$, true, 1),
    (v_q, $t$war$t$, false, 2),
    (v_q, $t$wäre$t$, false, 3),
    (v_q, $t$würde$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Transformez au discours indirect (Konjunktiv I, forme passée passive) : direct : 'Dieser Prozess war von erheblichen Ängsten begleitet.' → indirect : 'Er gestand ein, dass dieser Prozess ___.'$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$von erheblichen Ängsten begleitet gewesen sei$t$, true, 1),
    (v_q, $t$von erheblichen Ängsten begleitet worden sei$t$, false, 2),
    (v_q, $t$von erheblichen Ängsten begleitet sei$t$, false, 3),
    (v_q, $t$von erheblichen Ängsten begleitet werde$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$En vous appuyant sur « Die Kunst des Verzichts », rédigez en allemand un paragraphe de 8 à 12 phrases dans lequel vous discutez si la renonciation volontaire au superflu (Minimalismus) peut réellement rendre plus heureux. Utilisez au moins une phrase au discours indirect (Konjunktiv I).$t$, 1, 'normal', 'production', $t$Der Text 'Die Kunst des Verzichts' schildert, wie Fabian nach einer gesundheitlichen Krise sein Verhältnis zu materiellem Besitz grundlegend überdenkt. Er berichtet, der Prozess der Trennung von seinem Besitz sei anfangs von erheblichen Ängsten begleitet gewesen, habe sich jedoch letztlich als befreiend erwiesen. Meiner Meinung nach kann bewusster Verzicht tatsächlich zu größerer Zufriedenheit führen, da weniger Besitz häufig auch weniger alltägliche Entscheidungen und damit weniger mentale Belastung bedeutet. Allerdings sollte Genügsamkeit nicht als Selbstzweck oder als dogmatisches Prinzip missverstanden werden, sondern als individuelle Reflexion darüber, welche Dinge wirklich zum eigenen Wohlbefinden beitragen. Kritiker könnten einwenden, dass Minimalismus vor allem ein Privileg wohlhabender Menschen sei, die es sich leisten können, auf Besitz zu verzichten. Dieser Einwand ist nicht ganz von der Hand zu weisen, doch zeigt Fabians Beispiel, dass es letztlich um eine innere Haltung geht, nicht allein um materielle Verhältnisse. Entscheidend erscheint mir, dass Verzicht freiwillig und reflektiert erfolgt, anstatt aus gesellschaftlichem Druck oder reiner Konsumkritik heraus. Insgesamt halte ich es für sinnvoll, regelmäßig zu hinterfragen, welche Gegenstände tatsächlich einen Mehrwert bieten, um ein bewussteres und zufriedeneres Leben zu führen.$t$);

END $block$;

-- 6. Die zweite Lektüre
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary) VALUES (
    'C1',
    $t$Die zweite Lektüre$t$,
    $t$Als Professorin Helene Brandt im Alter von siebzig Jahren erneut zu jenem Buch griff, das sie einst als Studentin verschlungen hatte, ahnte sie nicht, wie sehr sich ihre Wahrnehmung des Stoffes verändert haben würde. Damals, in den überheizten Bibliothekssälen ihrer Jugend, hatte sie in der Geschichte des rastlosen Gelehrten vor allem eine Feier des menschlichen Erkenntnisdrangs gesehen, eine Bestätigung ihres eigenen unbändigen Ehrgeizes, der sie durch Promotion und Habilitation getrieben hatte. Das Streben, so glaubte sie damals, sei an sich schon etwas Edles, unabhängig davon, wohin es führe.

Nun, da die eigene Laufbahn sich dem Ende zuneigte, entdeckte sie in denselben Zeilen eine Ambivalenz, die ihr zuvor entgangen war. Was sie einst als reine Größe gedeutet hatte, erschien ihr nun als Warnung vor jener Selbstüberschätzung, die keine Grenze anerkennen will. Die Tragik der Figur, so dachte sie, liege nicht im Scheitern selbst, sondern in der Unfähigkeit, innezuhalten – eine Eigenschaft, die sie an sich selbst wiedererkannte, wenn sie an die Kollegen dachte, die sie im Wettlauf um akademische Anerkennung rücksichtslos übergangen hatte.

Diese Neubewertung erschütterte sie zunächst, denn sie stellte die Grundlage ihres gesamten Berufslebens infrage. Doch allmählich begriff sie, dass gerade diese Wandlung der Lektüre deren eigentlichen Wert ausmachte: Ein Text, der nach Jahrzehnten dieselbe Bedeutung behielte, wäre kaum der Rede wert. Die Wiederbegegnung mit einem einst vertrauten Werk offenbare weniger etwas über den Text als über die Leserin selbst, über die Schichten von Erfahrung, die sich zwischen die Zeilen gelegt hätten.

In ihren letzten Vorlesungen versuchte Helene Brandt, den Studierenden diese Einsicht zu vermitteln: dass das Streben, sofern es sich nicht der Selbstprüfung stelle, in Blindheit münde. Manche Zuhörer nickten höflich, ohne zu ahnen, dass sie selbst dieselbe Erkenntnis erst nach einem langen Leben würden erlangen können.$t$,
    $t$Lorsque la professeure Helene Brandt, à l'âge de soixante-dix ans, reprit en main ce livre qu'elle avait jadis dévoré comme étudiante, elle ne se doutait pas à quel point sa perception de la matière allait avoir changé. À l'époque, dans les salles de bibliothèque surchauffées de sa jeunesse, elle avait vu dans l'histoire de ce savant sans repos avant tout une célébration de la soif de connaissance humaine, une confirmation de sa propre ambition effrénée, celle qui l'avait poussée à travers son doctorat et son habilitation. L'aspiration, croyait-elle alors, était en soi quelque chose de noble, indépendamment de là où elle menait.

À présent, alors que sa propre carrière touchait à sa fin, elle découvrit dans ces mêmes lignes une ambivalence qui lui avait auparavant échappé. Ce qu'elle avait autrefois interprété comme une pure grandeur lui apparaissait maintenant comme une mise en garde contre cette surestimation de soi qui ne veut reconnaître aucune limite. La tragédie du personnage, pensait-elle, ne résidait pas dans l'échec lui-même, mais dans l'incapacité à s'arrêter – un trait qu'elle reconnaissait en elle-même lorsqu'elle pensait aux collègues qu'elle avait sans égard écartés dans la course à la reconnaissance académique.

Cette réévaluation l'ébranla tout d'abord, car elle remettait en question le fondement de toute sa vie professionnelle. Mais peu à peu, elle comprit que c'était précisément cette transformation de la lecture qui en faisait la valeur véritable : un texte qui, après des décennies, conserverait le même sens ne mériterait guère qu'on en parle. Retrouver une œuvre autrefois familière en révèle moins sur le texte lui-même que sur la lectrice elle-même, sur les strates d'expérience qui se sont déposées entre les lignes.

Dans ses dernières leçons, Helene Brandt tenta de transmettre cette intuition aux étudiants : que l'aspiration, si elle ne se soumet pas à l'examen de soi, débouche sur l'aveuglement. Certains auditeurs hochaient poliment la tête, sans se douter qu'ils ne parviendraient eux-mêmes à cette même prise de conscience qu'après une longue vie.$t$,
    $t${"Als":"lorsque","Professorin":"professeure","Helene":"Helene","Brandt":"Brandt","im":"à l'","Alter":"âge","von":"de","siebzig":"soixante-dix","Jahren":"ans","erneut":"de nouveau","zu":"à","jenem":"à ce","Buch":"livre","griff":"reprit","das":"qu'","sie":"elle","einst":"jadis","als":"comme","Studentin":"étudiante","verschlungen":"dévoré","hatte":"avait","ahnte":"se doutait","nicht":"ne pas","wie":"à quel point","sehr":"tellement","sich":"se","ihre":"sa","Wahrnehmung":"perception","des":"de la","Stoffes":"matière","verändert":"changé","haben":"avoir","würde":"allait","Damals":"à l'époque","in":"dans","den":"les","überheizten":"surchauffées","Bibliothekssälen":"salles de bibliothèque","ihrer":"de sa","Jugend":"jeunesse","der":"de l'","Geschichte":"histoire","rastlosen":"sans repos","Gelehrten":"savant","vor":"avant","allem":"tout","eine":"une","Feier":"célébration","menschlichen":"humaine","Erkenntnisdrangs":"soif de connaissance","gesehen":"vu","Bestätigung":"confirmation","ihres":"de sa","eigenen":"propre","unbändigen":"effrénée","Ehrgeizes":"ambition","durch":"à travers","Promotion":"doctorat","und":"et","Habilitation":"habilitation","getrieben":"poussée","Das":"l'","Streben":"aspiration","so":"ainsi","glaubte":"croyait","damals":"alors","sei":"était","an":"en","schon":"déjà","etwas":"quelque chose","Edles":"de noble","unabhängig":"indépendamment","davon":"de cela","wohin":"où","es":"cela","führe":"menait","Nun":"à présent","da":"alors que","die":"la","eigene":"propre","Laufbahn":"carrière","dem":"à sa","Ende":"fin","zuneigte":"touchait à sa fin","entdeckte":"découvrit","denselben":"ces mêmes","Zeilen":"lignes","Ambivalenz":"ambivalence","ihr":"lui","zuvor":"auparavant","entgangen":"échappé","war":"avait été","Was":"ce que","reine":"pure","Größe":"grandeur","gedeutet":"interprété","erschien":"apparaissait","nun":"maintenant","Warnung":"mise en garde","jener":"contre cette","Selbstüberschätzung":"surestimation de soi","keine":"aucune","Grenze":"limite","anerkennen":"reconnaître","will":"veut","Die":"la","Tragik":"tragédie","Figur":"personnage","dachte":"pensait","liege":"résidait","Scheitern":"échec","selbst":"lui-même","sondern":"mais","Unfähigkeit":"incapacité","innezuhalten":"à s'arrêter","Eigenschaft":"trait","wiedererkannte":"reconnaissait","wenn":"lorsque","Kollegen":"collègues","Wettlauf":"course","um":"à","akademische":"académique","Anerkennung":"reconnaissance","rücksichtslos":"sans égard","übergangen":"écartés","Diese":"cette","Neubewertung":"réévaluation","erschütterte":"ébranla","zunächst":"tout d'abord","denn":"car","stellte":"remettait","Grundlage":"fondement","gesamten":"toute","Berufslebens":"vie professionnelle","infrage":"en question","Doch":"mais","allmählich":"peu à peu","begriff":"comprit","dass":"que","gerade":"précisément","diese":"cette","Wandlung":"transformation","Lektüre":"lecture","deren":"dont","eigentlichen":"véritable","Wert":"valeur","ausmachte":"faisait","Ein":"un","Text":"texte","nach":"après","Jahrzehnten":"décennies","dieselbe":"le même","Bedeutung":"sens","behielte":"conserverait","wäre":"serait","kaum":"guère","Rede":"qu'on en parle","wert":"digne","Wiederbegegnung":"le fait de retrouver","mit":"avec","einem":"une","vertrauten":"familière","Werk":"œuvre","offenbare":"révèle","weniger":"moins","über":"sur","Leserin":"lectrice","Schichten":"strates","Erfahrung":"d'expérience","zwischen":"entre","gelegt":"déposées","hätten":"se seraient","In":"dans","ihren":"ses","letzten":"dernières","Vorlesungen":"leçons","versuchte":"tenta","Studierenden":"étudiants","Einsicht":"intuition","vermitteln":"transmettre","sofern":"si","Selbstprüfung":"examen de soi","stelle":"se soumet","Blindheit":"aveuglement","münde":"débouche","Manche":"certains","Zuhörer":"auditeurs","nickten":"hochaient la tête","höflich":"poliment","ohne":"sans","ahnen":"se douter","Erkenntnis":"prise de conscience","erst":"seulement","langen":"longue","Leben":"vie","würden":"parviendraient","erlangen":"parvenir à","können":"pouvoir"}$t$::jsonb
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was glaubte Helene Brandt in ihrer Jugend über das Streben?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Dass es unabhängig vom Ziel etwas Edles sei$t$, true, 1),
    (v_q, $t$Dass es stets zum Scheitern führe$t$, false, 2),
    (v_q, $t$Dass es nur für Männer angemessen sei$t$, false, 3),
    (v_q, $t$Dass es der akademischen Laufbahn schade$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Funktion hatte die Lektüre des Buches für die junge Helene Brandt?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie diente als reine Unterhaltung ohne persönlichen Bezug$t$, false, 1),
    (v_q, $t$Sie bestätigte und rechtfertigte ihren eigenen Ehrgeiz$t$, true, 2),
    (v_q, $t$Sie warnte sie frühzeitig vor Selbstüberschätzung$t$, false, 3),
    (v_q, $t$Sie überzeugte sie, die akademische Laufbahn aufzugeben$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was legt der Text implizit über das Verhältnis zwischen Helenes früherer Lektüre und ihrem späteren Berufsleben nahe?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie interpretierte den Text stets im Einklang mit ihren jeweiligen Lebensumständen, ohne dies zu bemerken$t$, true, 1),
    (v_q, $t$Ihre frühe Interpretation war objektiv korrekt und wurde später nur ergänzt$t$, false, 2),
    (v_q, $t$Sie hatte den Text in der Jugend absichtlich missverstanden, um ihre Karriereambitionen zu rechtfertigen$t$, false, 3),
    (v_q, $t$Ihre akademische Karriere hatte keinerlei Einfluss auf ihre Lektüreerfahrung$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was entdeckt Helene Brandt bei der erneuten Lektüre im Alter?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Eine Ambivalenz, die sie zuvor übersehen hatte$t$, true, 1),
    (v_q, $t$Dass der Text schlecht geschrieben war$t$, false, 2),
    (v_q, $t$Dass ihre Jugendmeinung völlig falsch war$t$, false, 3),
    (v_q, $t$Dass sie den Text nun gar nicht mehr versteht$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Worin sieht Helene Brandt nun die eigentliche Tragik der Hauptfigur?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Im äußeren Scheitern der Figur$t$, false, 1),
    (v_q, $t$In der Unfähigkeit, im Streben innezuhalten$t$, true, 2),
    (v_q, $t$In der mangelnden Anerkennung durch die Gesellschaft$t$, false, 3),
    (v_q, $t$Im Verlust materieller Güter$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Verbindung stellt der Text zwischen Helenes neuer Interpretation und ihrem eigenen Verhalten gegenüber Kollegen her?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie erkennt in der Textfigur rückblickend eine rein literarische Gestalt ohne Bezug zu sich selbst$t$, false, 1),
    (v_q, $t$Sie erkennt in der eigenen rücksichtslosen Konkurrenz um Anerkennung dieselbe Unfähigkeit zum Innehalten, die sie nun in der Figur sieht$t$, true, 2),
    (v_q, $t$Sie wirft ihren Kollegen vor, denselben Fehler wie die Figur begangen zu haben, ohne sich selbst einzubeziehen$t$, false, 3),
    (v_q, $t$Sie distanziert sich vollständig von ihrer früheren akademischen Konkurrenz$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was versucht Helene Brandt ihren Studierenden in den letzten Vorlesungen zu vermitteln?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Dass Streben ohne Selbstprüfung in Blindheit münden kann$t$, true, 1),
    (v_q, $t$Dass man auf jegliches Streben verzichten sollte$t$, false, 2),
    (v_q, $t$Dass literarische Texte keine praktische Bedeutung haben$t$, false, 3),
    (v_q, $t$Dass ältere Menschen Texte besser verstehen als junge$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche allgemeine Erkenntnis über das Lesen literarischer Werke zieht Helene Brandt aus ihrer Erfahrung?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Ein guter Text sollte bei jeder Lektüre dieselbe Bedeutung vermitteln$t$, false, 1),
    (v_q, $t$Der Wert eines Textes liege gerade darin, dass sich seine Bedeutung mit der Lebenserfahrung des Lesers wandeln könne$t$, true, 2),
    (v_q, $t$Nur junge Leser können die eigentliche Bedeutung eines Textes erfassen$t$, false, 3),
    (v_q, $t$Die Bedeutung eines Textes ist unabhängig vom Leser objektiv festgelegt$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was deutet der letzte Satz des Textes über die Studierenden an, die höflich nicken?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Dass sie die Lehre bereits vollständig verinnerlicht haben$t$, false, 1),
    (v_q, $t$Dass sie die Tragweite der Einsicht mangels eigener Lebenserfahrung wohl erst später wirklich begreifen werden$t$, true, 2),
    (v_q, $t$Dass sie mit dem Thema der Vorlesung nicht einverstanden sind$t$, false, 3),
    (v_q, $t$Dass sie das Buch, um das es geht, nicht gelesen haben$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet „unbändig“ in „ihres eigenen unbändigen Ehrgeizes“?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$nicht zu zügeln, sehr stark$t$, true, 1),
    (v_q, $t$schwach$t$, false, 2),
    (v_q, $t$gemäßigt$t$, false, 3),
    (v_q, $t$gelegentlich$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welches Wort ist ein Synonym für „unbändig“ im Kontext des Textes?$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$ungezügelt$t$, true, 1),
    (v_q, $t$bescheiden$t$, false, 2),
    (v_q, $t$zurückhaltend$t$, false, 3),
    (v_q, $t$gelassen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Umschreibung erfasst die Bedeutungsnuance von „unbändig“ am treffendsten, bezogen auf den Ehrgeiz der Professorin?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$ein Antrieb, der sich kaum kontrollieren oder begrenzen lässt$t$, true, 1),
    (v_q, $t$ein Antrieb, der nur gelegentlich auftritt$t$, false, 2),
    (v_q, $t$ein Antrieb, der bewusst gezügelt wird$t$, false, 3),
    (v_q, $t$ein Antrieb, der auf äußerem Druck beruht$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Complétez au Konjunktiv II : 'Ein Text, der dieselbe Bedeutung ___, wäre kaum der Rede wert.'$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$behielte$t$, true, 1),
    (v_q, $t$behält$t$, false, 2),
    (v_q, $t$behalten hat$t$, false, 3),
    (v_q, $t$behielt$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Quelle forme complète correctement le Konjunktiv II dans : 'Ein Text, der nach Jahrzehnten dieselbe Bedeutung behielte, ___ kaum der Rede wert.'$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$wäre$t$, true, 1),
    (v_q, $t$ist$t$, false, 2),
    (v_q, $t$war$t$, false, 3),
    (v_q, $t$sei$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Le texte contient aussi le discours indirect suivant : 'dass das Streben, sofern es sich nicht der Selbstprüfung stelle, in Blindheit münde.' Quelle est la forme correcte du Konjunktiv I du verbe 'münden' ici ?$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$münde$t$, true, 1),
    (v_q, $t$mündet$t$, false, 2),
    (v_q, $t$mündete$t$, false, 3),
    (v_q, $t$würde münden$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$En vous appuyant sur « Die zweite Lektüre », rédigez en allemand un paragraphe de 8 à 12 phrases sur le thème suivant : pourquoi relire un livre marquant à différentes périodes de la vie peut-il changer notre interprétation de celui-ci ? Utilisez au moins une phrase au Konjunktiv II.$t$, 1, 'normal', 'production', $t$In 'Die zweite Lektüre' entdeckt Professorin Helene Brandt beim erneuten Lesen eines Jugendbuchs eine völlig andere Bedeutung als bei ihrer ersten Lektüre. Dieses Phänomen halte ich für ein anschauliches Beispiel dafür, dass Texte nicht ausschließlich vom Autor, sondern maßgeblich auch von der Leserin oder dem Leser Bedeutung erhalten. Während Helene das Streben der Hauptfigur in ihrer Jugend als edel und bewundernswert empfand, erkennt sie darin nun eine Warnung vor Selbstüberschätzung. Diese Verschiebung lässt sich meiner Ansicht nach dadurch erklären, dass jede Lebenserfahrung neue Interpretationsrahmen eröffnet, durch die ein Text gelesen wird. Ein Buch, das nach Jahrzehnten dieselbe Bedeutung behielte, wäre demnach kaum der Rede wert, denn es spräche nicht mit der veränderten Wirklichkeit der Leserschaft. Besonders eindrücklich finde ich, dass Helene ihre eigene berufliche Rücksichtslosigkeit erst durch die neue Lektüre klar erkennt. Dies zeigt, dass literarische Werke als eine Art Spiegel fungieren können, in dem sich veränderte Werte und Erfahrungen widerspiegeln. Eine erneute Lektüre lohnt sich daher besonders bei Büchern, die existenzielle Fragen wie Ehrgeiz, Scheitern oder Selbsterkenntnis behandeln. Insgesamt zeigt der Text, dass gute Literatur nicht statisch ist, sondern mit ihren Leserinnen und Lesern mitwächst.$t$);

END $block$;

-- 7. Im Schatten der Märchen
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary) VALUES (
    'C1',
    $t$Im Schatten der Märchen$t$,
    $t$Der Schriftsteller Matthias Vogler saß seit Wochen über einem Essay, der ihm zunehmend schwerer von der Hand ging, denn das Thema, mit dem er sich befasste, hatte sich als vertrackter erwiesen, als er zunächst angenommen hatte. Es ging ihm um die beiden Brüder, deren Namen untrennbar mit jenen Sammlungen von Volkserzählungen verbunden sind, die in nahezu jedem Kinderzimmer Europas ihren Platz gefunden haben. Was die wenigsten Leser jedoch wüssten, so notierte er, sei, dass die eigentliche Lebensleistung der beiden Gelehrten in einem gänzlich anderen Bereich gelegen habe: in jener minutiösen sprachwissenschaftlichen Arbeit, die sie über Jahrzehnte hinweg der Erforschung der deutschen Sprache in ihrer historischen Tiefe gewidmet hätten.

Vogler empfand dabei ein seltsames Unbehagen, das er nur schwer in Worte fassen konnte. Es schien ihm, als sei den beiden Männern ein Schicksal widerfahren, das paradoxerweise gerade demjenigen entspreche, das sie selbst in vielen ihrer gesammelten Erzählungen thematisiert hätten: das Schicksal des Verkennens, der Verschiebung von Bedeutung, der Übermalung des Eigentlichen durch das Auffälligere. Ihr sprachhistorisches Lebenswerk, mühsam erarbeitet und von größter wissenschaftlicher Tragweite, sei von der Nachwelt beiseitegeschoben worden zugunsten jener Geschichten, die sie eher als Nebenprodukt ihrer volkskundlichen Sammeltätigkeit begriffen hätten.

Je länger Vogler über diese Verschiebung nachdachte, desto mehr erkannte er darin ein allgemeineres Muster, das auch sein eigenes Schaffen betraf: dass die Öffentlichkeit stets das Zugänglichere dem Anspruchsvolleren vorziehe, dass Wirkung und Bedeutung selten in einem proportionalen Verhältnis zueinander stünden. Er fragte sich, ob es einen Trost darstelle, dass wenigstens die Erzählungen selbst überdauert hätten, wenn auch um den Preis, dass ihre Urheber auf eine einzige, vereinfachte Rolle reduziert worden seien.

Am Ende beschloss er, seinen Essay nicht als Klage, sondern als Würdigung zu schreiben – als Versuch, der verdrängten Hälfte eines Lebenswerks wenigstens auf dem Papier wieder Gehör zu verschaffen.$t$,
    $t$L'écrivain Matthias Vogler travaillait depuis des semaines sur un essai qui lui devenait de plus en plus difficile à rédiger, car le sujet dont il s'occupait s'était révélé plus retors qu'il ne l'avait d'abord supposé. Il s'agissait des deux frères dont les noms sont indissociablement liés à ces recueils de contes populaires qui ont trouvé leur place dans presque toutes les chambres d'enfants d'Europe. Ce que peu de lecteurs sauraient, notait-il, c'est que la véritable œuvre de la vie de ces deux savants se situait dans un tout autre domaine : dans ce travail linguistique minutieux qu'ils avaient consacré pendant des décennies à l'étude de la langue allemande dans sa profondeur historique.

Vogler éprouvait à ce sujet un malaise étrange qu'il avait du mal à mettre en mots. Il lui semblait que ces deux hommes avaient subi un sort qui correspondait, paradoxalement, précisément à celui qu'ils avaient eux-mêmes thématisé dans nombre de leurs contes recueillis : le sort de la méconnaissance, du déplacement de sens, de l'effacement de l'essentiel par le plus voyant. Leur œuvre de linguistique historique, laborieusement élaborée et d'une portée scientifique considérable, avait été mise de côté par la postérité au profit de ces histoires qu'ils considéraient plutôt comme un sous-produit de leur activité de collecte folklorique.

Plus Vogler réfléchissait à ce déplacement, plus il y reconnaissait un schéma plus général qui concernait aussi sa propre œuvre : que le public préfère toujours ce qui est plus accessible à ce qui est plus exigeant, que l'impact et la signification sont rarement dans un rapport proportionnel entre eux. Il se demandait si c'était une consolation qu'au moins les récits eux-mêmes aient survécu, même au prix que leurs créateurs aient été réduits à un rôle unique et simplifié.

Finalement, il décida d'écrire son essai non comme une plainte, mais comme un hommage – comme une tentative de redonner voix, du moins sur le papier, à la moitié refoulée d'une œuvre de toute une vie.$t$,
    $t${"Der":"l'","Schriftsteller":"écrivain","Matthias":"Matthias","Vogler":"Vogler","saß":"travaillait","seit":"depuis","Wochen":"semaines","über":"sur","einem":"un","Essay":"essai","der":"qui","ihm":"lui","zunehmend":"de plus en plus","schwerer":"plus difficile","von":"de","Hand":"main","ging":"allait","denn":"car","das":"le","Thema":"sujet","mit":"dont","dem":"lequel","er":"il","sich":"s'","befasste":"occupait","hatte":"avait","als":"que","vertrackter":"plus retors","erwiesen":"révélé","zunächst":"d'abord","angenommen":"supposé","Es":"il","um":"il s'agissait de","die":"les","beiden":"deux","Brüder":"frères","deren":"dont","Namen":"noms","untrennbar":"indissociablement","jenen":"à ces","Sammlungen":"recueils","Volkserzählungen":"contes populaires","verbunden":"liés","sind":"sont","in":"dans","nahezu":"presque","jedem":"chaque","Kinderzimmer":"chambre d'enfants","Europas":"d'Europe","ihren":"leur","Platz":"place","gefunden":"trouvé","haben":"ont","Was":"ce que","wenigsten":"peu de","Leser":"lecteurs","jedoch":"cependant","wüssten":"sauraient","so":"ainsi","notierte":"notait","sei":"est","dass":"que","eigentliche":"véritable","Lebensleistung":"œuvre de toute une vie","Gelehrten":"savants","gänzlich":"tout à fait","anderen":"autre","Bereich":"domaine","gelegen":"situé","habe":"avait","jener":"dans ce","minutiösen":"minutieux","sprachwissenschaftlichen":"linguistique","Arbeit":"travail","sie":"ils","Jahrzehnte":"décennies","hinweg":"durant","Erforschung":"étude","deutschen":"allemande","Sprache":"langue","ihrer":"de sa","historischen":"historique","Tiefe":"profondeur","gewidmet":"consacré","hätten":"avaient","empfand":"éprouvait","dabei":"à ce sujet","ein":"un","seltsames":"étrange","Unbehagen":"malaise","nur":"seulement","schwer":"difficilement","Worte":"mots","fassen":"mettre en mots","konnte":"pouvait","schien":"semblait","den":"aux","Männern":"hommes","Schicksal":"sort","widerfahren":"subi","paradoxerweise":"paradoxalement","gerade":"précisément","demjenigen":"à celui","entspreche":"correspondait","selbst":"eux-mêmes","vielen":"nombre de","gesammelten":"recueillis","Erzählungen":"contes","thematisiert":"thématisé","des":"de la","Verkennens":"méconnaissance","Verschiebung":"déplacement","Bedeutung":"sens","Übermalung":"effacement","Eigentlichen":"de l'essentiel","durch":"par","Auffälligere":"le plus voyant","Ihr":"leur","sprachhistorisches":"de linguistique historique","Lebenswerk":"œuvre de toute une vie","mühsam":"laborieusement","erarbeitet":"élaborée","und":"et","größter":"considérable","wissenschaftlicher":"scientifique","Tragweite":"portée","Nachwelt":"postérité","beiseitegeschoben":"mise de côté","worden":"été","zugunsten":"au profit de","Geschichten":"histoires","eher":"plutôt","Nebenprodukt":"sous-produit","volkskundlichen":"folklorique","Sammeltätigkeit":"activité de collecte","begriffen":"considérées","Je":"plus","länger":"longtemps","diese":"à ce","nachdachte":"réfléchissait","desto":"plus","mehr":"davantage","erkannte":"reconnaissait","darin":"en cela","allgemeineres":"plus général","Muster":"schéma","auch":"aussi","sein":"son","eigenes":"propre","Schaffen":"œuvre","betraf":"concernait","Öffentlichkeit":"public","stets":"toujours","Zugänglichere":"le plus accessible","Anspruchsvolleren":"le plus exigeant","vorziehe":"préfère","Wirkung":"impact","selten":"rarement","proportionalen":"proportionnel","Verhältnis":"rapport","zueinander":"entre eux","stünden":"étaient","Er":"il","fragte":"se demandait","ob":"si","es":"cela","einen":"une","Trost":"consolation","darstelle":"constituait","wenigstens":"au moins","überdauert":"survécu","wenn":"même si","Preis":"prix","ihre":"leurs","Urheber":"créateurs","auf":"à","eine":"un","einzige":"unique","vereinfachte":"simplifié","Rolle":"rôle","reduziert":"réduits","seien":"étaient","Am":"à la","Ende":"fin","beschloss":"décida","seinen":"son","nicht":"ne pas","Klage":"plainte","sondern":"mais","Würdigung":"hommage","zu":"à","schreiben":"écrire","Versuch":"tentative","verdrängten":"refoulée","Hälfte":"moitié","eines":"d'une","Lebenswerks":"œuvre de toute une vie","Papier":"papier","wieder":"à nouveau","Gehör":"voix","verschaffen":"redonner"}$t$::jsonb
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Woran arbeitet Matthias Vogler?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$An einem Essay über zwei Brüder, deren sprachwissenschaftliche Arbeit weniger bekannt ist als ihre Märchensammlungen$t$, true, 1),
    (v_q, $t$An einer neuen Märchensammlung$t$, false, 2),
    (v_q, $t$An einer Biografie über sich selbst$t$, false, 3),
    (v_q, $t$An einem Theaterstück über deutsche Geschichte$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was ist den meisten Lesern laut Vogler über die beiden Brüder nicht bekannt?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Dass sie niemals Märchen gesammelt haben$t$, false, 1),
    (v_q, $t$Dass ihre eigentliche Lebensleistung in der sprachwissenschaftlichen Erforschung des Deutschen lag$t$, true, 2),
    (v_q, $t$Dass sie nie miteinander zusammengearbeitet haben$t$, false, 3),
    (v_q, $t$Dass ihre Märchen von einem anderen Autor stammen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was setzt der Text als implizite Voraussetzung für Voglers Verständnis der beiden Brüder voraus?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Dass die breite Leserschaft mit den Namen der Brüder nur die Märchensammlungen verbindet, nicht aber deren wissenschaftliches Werk$t$, true, 1),
    (v_q, $t$Dass die Brüder ausschließlich für ihre wissenschaftliche Arbeit bekannt waren$t$, false, 2),
    (v_q, $t$Dass ihre sprachwissenschaftliche Arbeit noch unveröffentlicht ist$t$, false, 3),
    (v_q, $t$Dass die Märchen erst nach ihrem Tod entdeckt wurden$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welches Gefühl empfindet Vogler bei seinen Überlegungen?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Ein seltsames Unbehagen$t$, true, 1),
    (v_q, $t$Reine Begeisterung$t$, false, 2),
    (v_q, $t$Gleichgültigkeit$t$, false, 3),
    (v_q, $t$Wut auf die Brüder$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Parallele erkennt Vogler zwischen dem Schicksal der Brüder und den Themen ihrer eigenen Sammlungen?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Beide handeln von Königen und Prinzessinnen$t$, false, 1),
    (v_q, $t$Ihr wissenschaftliches Werk wurde ähnlich wie Motive in ihren Erzählungen verkannt und durch Auffälligeres verdrängt$t$, true, 2),
    (v_q, $t$Beide zeigen, dass Fleiß immer belohnt wird$t$, false, 3),
    (v_q, $t$Beide betonen die Bedeutung von Familienzusammenhalt$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was impliziert der Vergleich zwischen dem Verkennen in den Erzählungen und dem Schicksal des wissenschaftlichen Werks der Brüder?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Dass die Brüder ihre Märchen bewusst als Kommentar zu ihrer eigenen künftigen Rezeption verfasst hätten$t$, false, 1),
    (v_q, $t$Dass sich ein in ihren eigenen Stoffen wiederkehrendes Muster der verschobenen Bedeutung ironischerweise auch an ihrem eigenen Nachruhm bestätigt hat$t$, true, 2),
    (v_q, $t$Dass die wissenschaftliche Arbeit der Brüder inhaltlich den Märchen widersprach$t$, false, 3),
    (v_q, $t$Dass die Öffentlichkeit die sprachwissenschaftliche Arbeit von Anfang an besser kannte als die Märchen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie beschließt Vogler, seinen Essay zu schreiben?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Als Klage$t$, false, 1),
    (v_q, $t$Als Würdigung$t$, true, 2),
    (v_q, $t$Als Satire$t$, false, 3),
    (v_q, $t$Als reine Biografie ohne persönliche Wertung$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche allgemeinere Erkenntnis gewinnt Vogler aus seiner Beschäftigung mit den Brüdern?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Dass Öffentlichkeit und wissenschaftliche Bedeutung stets übereinstimmen$t$, false, 1),
    (v_q, $t$Dass die Öffentlichkeit oft das Zugänglichere dem Anspruchsvolleren vorzieht, unabhängig von dessen tatsächlicher Bedeutung$t$, true, 2),
    (v_q, $t$Dass Märchen grundsätzlich wertloser sind als wissenschaftliche Texte$t$, false, 3),
    (v_q, $t$Dass nur Sprachwissenschaftler die wahre Bedeutung von Texten erkennen können$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Haltung nimmt Vogler am Ende gegenüber dem möglichen Trost ein, dass wenigstens die Märchen überdauert haben?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er verwirft den Gedanken vollständig als bedeutungslos$t$, false, 1),
    (v_q, $t$Er erkennt darin einen zwiespältigen Trost, der nur um den Preis einer verkürzten Wahrnehmung der Urheber erkauft wurde$t$, true, 2),
    (v_q, $t$Er ist der Meinung, dass dieser Trost jeglichen Verlust vollständig aufwiegt$t$, false, 3),
    (v_q, $t$Er entscheidet, dass die wissenschaftliche Arbeit ohnehin unwichtiger war als die Märchen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet „vertrackt“ in „das Thema hatte sich als vertrackter erwiesen“?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$kompliziert, schwierig zu lösen$t$, true, 1),
    (v_q, $t$einfach$t$, false, 2),
    (v_q, $t$langweilig$t$, false, 3),
    (v_q, $t$bekannt$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welches Wort ist ein Synonym für „vertrackt“ im Kontext des Textes?$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$verzwickt$t$, true, 1),
    (v_q, $t$eindeutig$t$, false, 2),
    (v_q, $t$harmlos$t$, false, 3),
    (v_q, $t$offensichtlich$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Umschreibung trifft die Bedeutungsnuance von „vertrackt“ am genauesten?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$ein Sachverhalt, der sich bei näherer Betrachtung als überraschend schwer durchschaubar erweist$t$, true, 1),
    (v_q, $t$ein Sachverhalt, der von Anfang an klar verständlich ist$t$, false, 2),
    (v_q, $t$ein Sachverhalt, der keinerlei praktische Relevanz besitzt$t$, false, 3),
    (v_q, $t$ein Sachverhalt, der ausschließlich positive Aspekte aufweist$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Complétez au discours indirect (Konjunktiv I, passif passé) : 'dass ihre Urheber auf eine einzige Rolle reduziert worden ___.'$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$seien$t$, true, 1),
    (v_q, $t$sind$t$, false, 2),
    (v_q, $t$wären$t$, false, 3),
    (v_q, $t$werden$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Identifiez la forme correcte du Konjunktiv I passif (Perfekt) dans : 'dass ihre Urheber auf eine einzige, vereinfachte Rolle reduziert worden seien.'$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$reduziert worden seien$t$, true, 1),
    (v_q, $t$reduziert worden sind$t$, false, 2),
    (v_q, $t$reduziert worden wären$t$, false, 3),
    (v_q, $t$reduziert werden seien$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Transformez au discours indirect (Konjunktiv I passé passif) : direct : 'Die Urheber wurden auf eine einzige Rolle reduziert.' → indirect : 'Er fragte sich, ob die Urheber ___.'$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$auf eine einzige Rolle reduziert worden seien$t$, true, 1),
    (v_q, $t$auf eine einzige Rolle reduziert worden wären$t$, false, 2),
    (v_q, $t$auf eine einzige Rolle reduziert seien$t$, false, 3),
    (v_q, $t$auf eine einzige Rolle reduziert werden$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$En vous appuyant sur « Im Schatten der Märchen », rédigez en allemand un paragraphe de 8 à 12 phrases sur le thème : pourquoi l'œuvre la plus connue d'une personne éclipse-t-elle parfois son travail le plus important ? Utilisez au moins une phrase au discours indirect (Konjunktiv I).$t$, 1, 'normal', 'production', $t$In 'Im Schatten der Märchen' beschäftigt sich der Schriftsteller Matthias Vogler mit der Tatsache, dass die Brüder, deren Märchen weltbekannt sind, vor allem für ihre sprachwissenschaftliche Forschung geschätzt werden wollten. Er notiert, ihre eigentliche Lebensleistung liege in jener sprachhistorischen Arbeit, die von der Nachwelt jedoch weitgehend übersehen worden sei. Dieses Phänomen, dass zugängliche Werke bedeutendere, aber anspruchsvollere Leistungen überschatten, lässt sich meiner Meinung nach in vielen Bereichen beobachten. Öffentlichkeit und mediale Aufmerksamkeit orientieren sich häufig eher an Unterhaltungswert als an fachlicher Tiefe, wodurch komplexe Leistungen leicht in Vergessenheit geraten. Vogler vermutet zudem, die Urheber der Märchen seien dadurch auf eine einzige, vereinfachte Rolle reduziert worden, obwohl ihr eigentliches Werk weitaus vielschichtiger gewesen sei. Ich halte diese Beobachtung für plausibel, da einprägsame und leicht zugängliche Inhalte sich naturgemäß schneller verbreiten als spezialisierte Fachliteratur. Dennoch sollte dies kein Grund sein, auf differenzierte Würdigung zu verzichten, denn gerade das Verborgene verdient oft besondere Aufmerksamkeit. Institutionen wie Museen und Bildungseinrichtungen tragen eine gewisse Verantwortung, auch die weniger bekannten Facetten bedeutender Persönlichkeiten sichtbar zu machen. Voglers Entscheidung, seinen Essay als Würdigung statt als Klage zu verfassen, erscheint mir daher als sinnvoller Beitrag zu einer ausgewogeneren Erinnerungskultur.$t$);

END $block$;

-- 8. Die Formel und ihre Grenzen
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary) VALUES (
    'C1',
    $t$Die Formel und ihre Grenzen$t$,
    $t$Der Architekt Julian Reinhardt stand vor dem halbfertigen Rohbau eines Kulturzentrums und dachte, wie so oft in den letzten Monaten, über jene Formel nach, die seit seinem Studium sein gesamtes berufliches Denken geprägt hatte: dass die Gestalt eines Gebäudes sich aus dessen Zweck ergeben müsse, dass jedes überflüssige Ornament als Verrat an der Wahrhaftigkeit der Konstruktion zu gelten habe. Diese Überzeugung, die er einst mit der Inbrunst eines Bekehrten vertreten hatte, war ihm über die Jahre der praktischen Arbeit zunehmend fragwürdig erschienen.

Was ihn beschäftigte, war ein Widerspruch, den er in der Bewegung selbst angelegt sah, aus der jene Formel stammte: Die Architekten und Gestalter, die einst angetreten waren, das Ornamentale zugunsten des rein Funktionalen zu verbannen, hätten damit unweigerlich einen neuen ästhetischen Kanon geschaffen, der ebenso sehr Geschmacksfrage wie Notwendigkeit gewesen sei. Die vermeintlich objektive Reinheit der Form, so erkannte Reinhardt, habe sich selbst als eine Art Stil etabliert, mit eigenen Konventionen, eigenen Vorlieben, eigener Willkür – nur eben getarnt als bloße Konsequenz der Vernunft.

Diese Einsicht hätte ihn zynisch machen können, doch stattdessen empfand er sie als befreiend. Wenn die Funktion allein niemals eine Form zwingend vorschreibe, dann liege in jeder architektonischen Entscheidung ein unhintergehbares Element der Interpretation, der persönlichen Verantwortung. Der Bau, an dem er gerade arbeitete, sollte davon zeugen: Er hatte sich entschieden, den kalten Funktionalismus seiner Ausbildung mit einer wärmeren, beinahe erzählerischen Geste zu verbinden, ohne dabei die Prinzipien der Klarheit und Ehrlichkeit preiszugeben, die ihm nach wie vor teuer waren.

In seinen Vorlesungen an der Hochschule mahnte er die Studierenden inzwischen, jede vermeintlich zeitlose Regel als das zu erkennen, was sie tatsächlich sei: eine historisch gewordene Antwort auf die Fragen einer bestimmten Epoche, die es zu verstehen, nicht aber blind zu wiederholen gelte.$t$,
    $t$L'architecte Julian Reinhardt se tenait devant le gros œuvre à moitié achevé d'un centre culturel et réfléchissait, comme si souvent ces derniers mois, à cette formule qui, depuis ses études, avait marqué toute sa pensée professionnelle : que la forme d'un bâtiment doit découler de sa fonction, que tout ornement superflu doit être considéré comme une trahison de la vérité de la construction. Cette conviction, qu'il avait autrefois défendue avec la ferveur d'un converti, lui était apparue, au fil des années de travail pratique, de plus en plus discutable.

Ce qui le préoccupait était une contradiction qu'il voyait inscrite dans le mouvement même dont provenait cette formule : les architectes et designers qui s'étaient jadis mis en devoir de bannir l'ornemental au profit du purement fonctionnel avaient, ce faisant, inévitablement créé un nouveau canon esthétique, qui était tout autant une question de goût qu'une nécessité. La prétendue pureté objective de la forme, comprit Reinhardt, s'était elle-même établie comme une sorte de style, avec ses propres conventions, ses propres préférences, son propre arbitraire – seulement déguisé en simple conséquence de la raison.

Cette prise de conscience aurait pu le rendre cynique, mais il la ressentait au contraire comme libératrice. Si la fonction seule ne prescrit jamais impérativement une forme, alors chaque décision architecturale comporte un élément incontournable d'interprétation, de responsabilité personnelle. Le bâtiment sur lequel il travaillait devait en témoigner : il avait décidé d'unir le fonctionnalisme froid de sa formation à un geste plus chaleureux, presque narratif, sans pour autant abandonner les principes de clarté et d'honnêteté qui lui restaient chers.

Dans ses cours à l'université, il exhortait désormais les étudiants à reconnaître toute règle prétendument intemporelle pour ce qu'elle était réellement : une réponse historiquement constituée aux questions d'une époque déterminée, qu'il convient de comprendre, mais non de répéter aveuglément.$t$,
    $t${"Der":"l'","Architekt":"architecte","Julian":"Julian","Reinhardt":"Reinhardt","stand":"se tenait","vor":"devant","dem":"le","halbfertigen":"à moitié achevé","Rohbau":"gros œuvre","eines":"d'un","Kulturzentrums":"centre culturel","und":"et","dachte":"réfléchissait","wie":"comme","so":"si","oft":"souvent","in":"ces","den":"les","letzten":"derniers","Monaten":"mois","über":"à","jene":"cette","Formel":"formule","nach":"réfléchissait à","die":"qui","seit":"depuis","seinem":"ses","Studium":"études","sein":"sa","gesamtes":"toute","berufliches":"professionnelle","Denken":"pensée","geprägt":"marqué","hatte":"avait","dass":"que","Gestalt":"forme","Gebäudes":"d'un bâtiment","sich":"se","aus":"de","dessen":"sa","Zweck":"fonction","ergeben":"découler","müsse":"doit","jedes":"tout","überflüssige":"superflu","Ornament":"ornement","als":"comme","Verrat":"trahison","an":"à","der":"la","Wahrhaftigkeit":"vérité","Konstruktion":"construction","zu":"à","gelten":"être considéré","habe":"devait","Diese":"cette","Überzeugung":"conviction","er":"il","einst":"autrefois","mit":"avec","Inbrunst":"ferveur","Bekehrten":"converti","vertreten":"défendue","war":"était","ihm":"lui","Jahre":"années","praktischen":"pratique","Arbeit":"travail","zunehmend":"de plus en plus","fragwürdig":"discutable","erschienen":"apparue","Was":"ce qui","ihn":"le","beschäftigte":"préoccupait","ein":"une","Widerspruch":"contradiction","Bewegung":"mouvement","selbst":"même","angelegt":"inscrite","sah":"voyait","stammte":"provenait","Die":"les","Architekten":"architectes","Gestalter":"designers","angetreten":"entrepris","waren":"avaient","das":"l'","Ornamentale":"ornemental","zugunsten":"au profit de","des":"du","rein":"purement","Funktionalen":"fonctionnel","verbannen":"bannir","hätten":"avaient","damit":"ce faisant","unweigerlich":"inévitablement","einen":"un","neuen":"nouveau","ästhetischen":"esthétique","Kanon":"canon","geschaffen":"créé","ebenso":"tout autant","sehr":"beaucoup","Geschmacksfrage":"question de goût","Notwendigkeit":"nécessité","gewesen":"été","sei":"était","vermeintlich":"prétendue","objektive":"objective","Reinheit":"pureté","Form":"forme","erkannte":"comprit","eine":"une","Art":"sorte","Stil":"style","etabliert":"établie","eigenen":"propres","Konventionen":"conventions","Vorlieben":"préférences","eigener":"propre","Willkür":"arbitraire","nur":"seulement","eben":"justement","getarnt":"déguisé","bloße":"simple","Konsequenz":"conséquence","Vernunft":"raison","Einsicht":"prise de conscience","hätte":"aurait","zynisch":"cynique","machen":"rendre","können":"pu","doch":"mais","stattdessen":"au contraire","empfand":"ressentait","sie":"la","befreiend":"libératrice","Wenn":"si","Funktion":"fonction","allein":"seule","niemals":"jamais","zwingend":"impérativement","vorschreibe":"prescrit","dann":"alors","liege":"comporte","jeder":"chaque","architektonischen":"architecturale","Entscheidung":"décision","unhintergehbares":"incontournable","Element":"élément","Interpretation":"interprétation","persönlichen":"personnelle","Verantwortung":"responsabilité","Bau":"bâtiment","gerade":"sur lequel","arbeitete":"travaillait","sollte":"devait","davon":"en","zeugen":"témoigner","Er":"il","entschieden":"décidé","kalten":"froid","Funktionalismus":"fonctionnalisme","seiner":"sa","Ausbildung":"formation","einer":"à un","wärmeren":"plus chaleureux","beinahe":"presque","erzählerischen":"narratif","Geste":"geste","verbinden":"unir","ohne":"sans","dabei":"pour autant","Prinzipien":"principes","Klarheit":"clarté","Ehrlichkeit":"honnêteté","preiszugeben":"abandonner","teuer":"chers","In":"dans","seinen":"ses","Vorlesungen":"cours","Hochschule":"université","mahnte":"exhortait","Studierenden":"étudiants","inzwischen":"désormais","jede":"toute","zeitlose":"intemporelle","Regel":"règle","erkennen":"reconnaître","was":"ce qu'","tatsächlich":"réellement","historisch":"historiquement","gewordene":"constituée","Antwort":"réponse","auf":"à","Fragen":"questions","bestimmten":"déterminée","Epoche":"époque","es":"il","verstehen":"comprendre","nicht":"non","aber":"mais","blind":"aveuglément","wiederholen":"répéter","gelte":"convient"}$t$::jsonb
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Formel hat Julian Reinhardts berufliches Denken seit dem Studium geprägt?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Dass die Form eines Gebäudes sich aus seinem Zweck ergeben müsse$t$, true, 1),
    (v_q, $t$Dass jedes Gebäude möglichst viele Ornamente tragen sollte$t$, false, 2),
    (v_q, $t$Dass Gebäude ausschließlich aus Glas bestehen sollten$t$, false, 3),
    (v_q, $t$Dass Funktionalität weniger wichtig ist als Schönheit$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie hat sich Reinhardts Haltung zu dieser Formel im Laufe seiner praktischen Arbeit verändert?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie ist unverändert geblieben$t$, false, 1),
    (v_q, $t$Sie ist ihm zunehmend fragwürdig erschienen$t$, true, 2),
    (v_q, $t$Er hat sie vollständig verworfen und lehnt jede Funktionalität ab$t$, false, 3),
    (v_q, $t$Er hat sie erst durch dieses Projekt kennengelernt$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was genau bezweifelt Reinhardt an der ursprünglichen Formel, ohne sie vollständig zu verwerfen?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Dass Funktionalität überhaupt eine Rolle in der Architektur spielen sollte$t$, false, 1),
    (v_q, $t$Dass sie als rein objektive Notwendigkeit erscheint, obwohl sie selbst zu einem Stil mit eigenen Konventionen geworden ist$t$, true, 2),
    (v_q, $t$Dass sie in der Praxis überhaupt nicht umsetzbar sei$t$, false, 3),
    (v_q, $t$Dass sie nur für öffentliche Gebäude gilt, nicht für private$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was, so erkennt Reinhardt, haben die Architekten geschaffen, die das Ornament verbannen wollten?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Einen neuen ästhetischen Kanon$t$, true, 1),
    (v_q, $t$Ein völlig ornamentfreies, stilloses Bauen$t$, false, 2),
    (v_q, $t$Eine internationale Bauvorschrift$t$, false, 3),
    (v_q, $t$Ein Verbot jeglicher Kunst$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie beschreibt der Text die vermeintlich reine Form des Funktionalismus?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Als eine tatsächlich objektive und zwingende Konsequenz der Vernunft$t$, false, 1),
    (v_q, $t$Als eine Art Stil mit eigenen Vorlieben und Willkür, nur getarnt als bloße Vernunftfolge$t$, true, 2),
    (v_q, $t$Als eine vollkommen zufällige, bedeutungslose Entwicklung$t$, false, 3),
    (v_q, $t$Als eine Form, die keinerlei ästhetische Wirkung hat$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Schlussfolgerung zieht Reinhardt aus der Erkenntnis, dass Funktion niemals zwingend eine Form vorschreibt?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Dass Architektur grundsätzlich willkürlich und ohne jede Verantwortung sei$t$, false, 1),
    (v_q, $t$Dass in jeder architektonischen Entscheidung ein unvermeidliches Element persönlicher Interpretation und Verantwortung liege$t$, true, 2),
    (v_q, $t$Dass er zukünftig auf jegliche funktionale Überlegung verzichten werde$t$, false, 3),
    (v_q, $t$Dass die Lehre seiner Ausbildung vollständig falsch gewesen sei$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was hat Reinhardt bei seinem aktuellen Bauprojekt entschieden?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Kalten Funktionalismus mit einer wärmeren, erzählerischen Geste zu verbinden$t$, true, 1),
    (v_q, $t$Ausschließlich historische Stile zu kopieren$t$, false, 2),
    (v_q, $t$Auf jede Funktionalität zu verzichten$t$, false, 3),
    (v_q, $t$Das Gebäude ohne jegliche persönliche Note zu bauen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was mahnt Reinhardt seine Studierenden in seinen Vorlesungen?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Jede architektonische Regel unhinterfragt zu übernehmen$t$, false, 1),
    (v_q, $t$Jede vermeintlich zeitlose Regel als historisch bedingte Antwort zu verstehen, die es zu begreifen, nicht blind zu wiederholen gilt$t$, true, 2),
    (v_q, $t$Sich ausschließlich auf das eigene Gefühl zu verlassen$t$, false, 3),
    (v_q, $t$Ornamente in jedem Gebäude verpflichtend einzusetzen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Inwiefern widerspricht sich Reinhardts eigene Praxis nicht mit den Prinzipien seiner Ausbildung, obwohl er deren Formel infrage stellt?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Weil er die Prinzipien der Klarheit und Ehrlichkeit beibehält, während er lediglich deren dogmatische, ornamentfeindliche Auslegung erweitert$t$, true, 1),
    (v_q, $t$Weil er inzwischen ausschließlich ornamentale Gebäude ohne jede Funktion entwirft$t$, false, 2),
    (v_q, $t$Weil er die Prinzipien seiner Ausbildung vollständig aufgegeben hat$t$, false, 3),
    (v_q, $t$Weil seine neuen Gebäude keinerlei Bezug mehr zur Funktion haben$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet „die Willkür“?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$eine Entscheidung ohne objektive Regel oder Begründung$t$, true, 1),
    (v_q, $t$eine streng logische Entscheidung$t$, false, 2),
    (v_q, $t$eine demokratische Abstimmung$t$, false, 3),
    (v_q, $t$eine wissenschaftliche Beweisführung$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welches Wort ist ein Synonym für „Willkür“ im Kontext des Textes?$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$die Beliebigkeit$t$, true, 1),
    (v_q, $t$die Notwendigkeit$t$, false, 2),
    (v_q, $t$die Objektivität$t$, false, 3),
    (v_q, $t$die Gesetzmäßigkeit$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Umschreibung trifft die Bedeutungsnuance von „Willkür“ am treffendsten, wie sie Reinhardt in Bezug auf ästhetische Regeln erkennt?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$eine subjektive Vorliebe, die fälschlich als objektive Notwendigkeit ausgegeben wird$t$, true, 1),
    (v_q, $t$eine streng nachvollziehbare, wissenschaftlich begründete Regel$t$, false, 2),
    (v_q, $t$eine gesetzlich verbindliche Vorschrift$t$, false, 3),
    (v_q, $t$eine allgemein anerkannte, unumstößliche Wahrheit$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Complétez au discours indirect (Konjunktiv II passé) : 'Die Architekten ___ damit unweigerlich einen neuen Kanon geschaffen.'$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$hätten$t$, true, 1),
    (v_q, $t$haben$t$, false, 2),
    (v_q, $t$hatten$t$, false, 3),
    (v_q, $t$würden$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Identifiez la forme correcte pour rapporter au discours indirect : 'Die Architekten hätten damit unweigerlich einen neuen ästhetischen Kanon geschaffen.' Quel temps/mode est-ce ?$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Konjunktiv II der Vergangenheit$t$, true, 1),
    (v_q, $t$Konjunktiv I Präsens$t$, false, 2),
    (v_q, $t$Indikativ Perfekt$t$, false, 3),
    (v_q, $t$Futur II$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Transformez au discours indirect en respectant la concordance : direct : 'Wir haben damit einen neuen Kanon geschaffen.' → indirect : 'Reinhardt erkannte, dass sie damit ___.'$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$einen neuen Kanon geschaffen hätten$t$, true, 1),
    (v_q, $t$einen neuen Kanon geschaffen haben$t$, false, 2),
    (v_q, $t$einen neuen Kanon schaffen würden$t$, false, 3),
    (v_q, $t$einen neuen Kanon geschaffen worden seien$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$En vous appuyant sur « Die Formel und ihre Grenzen », rédigez en allemand un paragraphe de 8 à 12 phrases sur le thème : dans quelle mesure des règles esthétiques ou professionnelles présentées comme objectives sont-elles en réalité des choix subjectifs ? Utilisez au moins une phrase au Konjunktiv II.$t$, 1, 'normal', 'production', $t$In 'Die Formel und ihre Grenzen' stellt der Architekt Julian Reinhardt die vermeintlich objektive Regel infrage, dass die Form eines Gebäudes stets zwingend aus dessen Funktion folgen müsse. Er erkennt, dass diejenigen, die einst gegen das Ornament kämpften, damit selbst unweigerlich einen neuen ästhetischen Kanon geschaffen hätten, der ebenso subjektiv sei wie die Stile, die er ablösen sollte. Diese Einsicht halte ich für ein wichtiges Beispiel dafür, dass vermeintlich neutrale Regeln oft verborgene Wertentscheidungen enthalten. In vielen professionellen Bereichen, nicht nur in der Architektur, werden Konventionen häufig als objektive Notwendigkeiten dargestellt, obwohl sie tatsächlich historisch gewachsene Geschmacksurteile widerspiegeln. Wäre eine Regel wirklich rein funktional begründet, gäbe es vermutlich keine unterschiedlichen nationalen oder epochalen Stilrichtungen innerhalb derselben Funktion. Reinhardts Schlussfolgerung, dass jede gestalterische Entscheidung ein Element persönlicher Verantwortung enthält, erscheint mir daher überzeugend. Anstatt Regeln blind zu befolgen, sollten Fachleute meiner Meinung nach stets reflektieren, welche Werte und Vorlieben hinter einer scheinbar zwingenden Norm stehen. Dies bedeutet nicht, auf Prinzipien wie Klarheit oder Funktionalität zu verzichten, sondern sie bewusst und begründet mit eigenen gestalterischen Entscheidungen zu verbinden. Reinhardts Haltung, Studierende zur kritischen Reflexion über vermeintlich zeitlose Regeln anzuhalten, halte ich für einen wichtigen pädagogischen Ansatz in jedem Fachgebiet.$t$);

END $block$;

-- 9. Die Linie, die durch ein Leben ging
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary) VALUES (
    'C1',
    $t$Die Linie, die durch ein Leben ging$t$,
    $t$Die Historikerin Anneliese Wolf hatte in ihrer langjährigen Laufbahn zahlreiche Zeitzeugengespräche geführt, doch selten war ihr eine Begegnung so nachhaltig im Gedächtnis geblieben wie jene mit dem neunzigjährigen Herrn Kaufmann, der in einer kleinen Wohnung nahe der ehemaligen Grenze lebte, die einst sein Land in zwei einander feindlich gesinnte Hälften geteilt hatte. Sie war gekommen, um für ihr Forschungsprojekt über die Erfahrung der Teilung Material zu sammeln, doch das Gespräch geriet bald zu etwas, das über die reine Dokumentation hinausging.

Herr Kaufmann erzählte ihr, wie er als junger Mann über Nacht von seiner Schwester getrennt worden war, ohne dass eine Verabschiedung im eigentlichen Sinne stattgefunden hätte, und wie diese Trennung sich über Jahrzehnte erstreckt habe, während derer Briefe zensiert, Besuche verweigert und selbst Telefonate abgehört worden seien. Was Wolf besonders berührte, war nicht die Schilderung der äußeren Umstände, so bedrückend sie auch waren, sondern die Art, wie ihr Gesprächspartner die innere Zerrissenheit beschrieb, die sich aus einem solchen Zustand ergebe: das beständige Gefühl, ein halbiertes Leben zu führen, dessen andere Hälfte an einem Ort existiere, der zugleich vertraut und unerreichbar geworden sei.

Als die Historikerin am Ende des Gesprächs die naheliegende Frage stellte, was die Wiedervereinigung für ihn bedeutet habe, zögerte Herr Kaufmann lange, bevor er antwortete, dass die politische Grenze zwar gefallen sei, die innere jedoch, die sich in drei Jahrzehnten getrennter Erfahrung eingegraben habe, sich nicht mit derselben Geschwindigkeit auflösen lasse. Diese Bemerkung ließ Wolf noch lange nicht los, denn sie begriff, dass ihre Aufgabe als Historikerin nicht allein darin bestehe, Ereignisse chronologisch festzuhalten, sondern jene subtileren, langsameren Prozesse zu erfassen, mit denen Menschen die Narben einer zerrissenen Geschichte in sich selbst weitertrügen, lange nachdem die äußeren Wunden vernarbt zu sein schienen.$t$,
    $t$L'historienne Anneliese Wolf avait mené, au cours de sa longue carrière, de nombreux entretiens avec des témoins de l'époque, mais rarement une rencontre était restée aussi durablement gravée dans sa mémoire que celle avec le nonagénaire Monsieur Kaufmann, qui vivait dans un petit appartement proche de l'ancienne frontière qui avait jadis divisé son pays en deux moitiés hostiles l'une envers l'autre. Elle était venue rassembler du matériel pour son projet de recherche sur l'expérience de la division, mais l'entretien devint bientôt quelque chose qui dépassait la simple documentation.

Monsieur Kaufmann lui raconta comment, jeune homme, il avait été séparé de sa sœur du jour au lendemain, sans qu'il y ait eu de véritables adieux, et comment cette séparation s'était étendue sur des décennies, durant lesquelles des lettres avaient été censurées, des visites refusées et même des appels téléphoniques surveillés. Ce qui toucha particulièrement Wolf, ce n'était pas le récit des circonstances extérieures, aussi accablantes fussent-elles, mais la manière dont son interlocuteur décrivait le déchirement intérieur qui résultait d'un tel état : le sentiment constant de mener une vie à moitié, dont l'autre moitié existait en un lieu devenu à la fois familier et inaccessible.

Lorsque l'historienne, à la fin de l'entretien, posa la question évidente de savoir ce que la réunification avait signifié pour lui, Monsieur Kaufmann hésita longtemps avant de répondre que si la frontière politique était certes tombée, la frontière intérieure, elle, gravée par trois décennies d'expérience séparée, ne pouvait se dissoudre à la même vitesse. Cette remarque ne lâcha pas Wolf pendant longtemps, car elle comprit que sa tâche d'historienne ne consistait pas seulement à fixer chronologiquement des événements, mais à saisir ces processus plus subtils et plus lents par lesquels les gens continuent de porter en eux les cicatrices d'une histoire déchirée, longtemps après que les blessures extérieures semblent avoir cicatrisé.$t$,
    $t${"Die":"l'","Historikerin":"historienne","Anneliese":"Anneliese","Wolf":"Wolf","hatte":"avait","in":"au cours de","ihrer":"sa","langjährigen":"longue","Laufbahn":"carrière","zahlreiche":"nombreux","Zeitzeugengespräche":"entretiens avec des témoins de l'époque","geführt":"mené","doch":"mais","selten":"rarement","war":"était","ihr":"lui","eine":"une","Begegnung":"rencontre","so":"aussi","nachhaltig":"durablement","im":"dans la","Gedächtnis":"mémoire","geblieben":"restée","wie":"que","jene":"celle","mit":"avec","dem":"le","neunzigjährigen":"nonagénaire","Herrn":"monsieur","Kaufmann":"Kaufmann","der":"qui","einer":"un","kleinen":"petit","Wohnung":"appartement","nahe":"proche de","ehemaligen":"ancienne","Grenze":"frontière","lebte":"vivait","die":"qui","einst":"jadis","sein":"son","Land":"pays","zwei":"deux","einander":"l'une envers l'autre","feindlich":"hostiles","gesinnte":"disposées","Hälften":"moitiés","geteilt":"divisé","Sie":"elle","gekommen":"venue","um":"pour","für":"pour","Forschungsprojekt":"projet de recherche","über":"sur","Erfahrung":"expérience","Teilung":"division","Material":"matériel","zu":"à","sammeln":"rassembler","das":"l'","Gespräch":"entretien","geriet":"devint","bald":"bientôt","etwas":"quelque chose","reine":"simple","Dokumentation":"documentation","hinausging":"dépassait","Herr":"monsieur","erzählte":"raconta","er":"il","als":"comme","junger":"jeune","Mann":"homme","Nacht":"nuit","von":"de","seiner":"sa","Schwester":"sœur","getrennt":"séparé","worden":"été","ohne":"sans","dass":"que","Verabschiedung":"adieux","eigentlichen":"véritable","Sinne":"sens","stattgefunden":"eu lieu","hätte":"eût","und":"et","diese":"cette","Trennung":"séparation","sich":"s'","Jahrzehnte":"décennies","erstreckt":"étendue","habe":"avait","während":"durant","derer":"lesquelles","Briefe":"lettres","zensiert":"censurées","Besuche":"visites","verweigert":"refusées","selbst":"même","Telefonate":"appels téléphoniques","abgehört":"surveillés","seien":"étaient","Was":"ce qui","besonders":"particulièrement","berührte":"toucha","nicht":"ne pas","Schilderung":"récit","äußeren":"extérieures","Umstände":"circonstances","bedrückend":"accablantes","sie":"elles","auch":"aussi","waren":"étaient","sondern":"mais","Art":"manière","Gesprächspartner":"interlocuteur","innere":"intérieur","Zerrissenheit":"déchirement","beschrieb":"décrivait","aus":"d'","einem":"un","solchen":"tel","Zustand":"état","ergebe":"résultait","beständige":"constant","Gefühl":"sentiment","ein":"une","halbiertes":"à moitié","Leben":"vie","führen":"mener","dessen":"dont","andere":"l'autre","Hälfte":"moitié","an":"en","Ort":"lieu","existiere":"existait","zugleich":"à la fois","vertraut":"familier","unerreichbar":"inaccessible","geworden":"devenu","sei":"était","Als":"lorsque","am":"à la","Ende":"fin","des":"de l'","Gesprächs":"entretien","naheliegende":"évidente","Frage":"question","stellte":"posa","was":"ce que","Wiedervereinigung":"réunification","ihn":"pour lui","bedeutet":"signifié","zögerte":"hésita","lange":"longtemps","bevor":"avant","antwortete":"répondit","politische":"politique","zwar":"certes","gefallen":"tombée","jedoch":"toutefois","drei":"trois","Jahrzehnten":"décennies","getrennter":"séparée","eingegraben":"gravée","derselben":"la même","Geschwindigkeit":"vitesse","auflösen":"se dissoudre","lasse":"pouvait","Diese":"cette","Bemerkung":"remarque","ließ":"laissa","noch":"encore","los":"lâcher","denn":"car","begriff":"comprit","ihre":"sa","Aufgabe":"tâche","allein":"seulement","darin":"en cela","bestehe":"consistait","Ereignisse":"événements","chronologisch":"chronologiquement","festzuhalten":"fixer","subtileren":"plus subtils","langsameren":"plus lents","Prozesse":"processus","erfassen":"saisir","denen":"lesquels","Menschen":"gens","Narben":"cicatrices","zerrissenen":"déchirée","Geschichte":"histoire","weitertrügen":"continuent de porter","nachdem":"après que","Wunden":"blessures","vernarbt":"cicatrisées","schienen":"semblaient"}$t$::jsonb
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wen interviewt Anneliese Wolf für ihr Forschungsprojekt?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Einen neunzigjährigen Zeitzeugen der Teilung seines Landes$t$, true, 1),
    (v_q, $t$Einen jungen Politiker$t$, false, 2),
    (v_q, $t$Eine Kollegin aus der Universität$t$, false, 3),
    (v_q, $t$Einen Architekten der Grenzanlagen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was war ursprünglich der Zweck von Wolfs Besuch bei Herrn Kaufmann?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Material für ihr Forschungsprojekt über die Erfahrung der Teilung zu sammeln$t$, true, 1),
    (v_q, $t$Ihm bei einem Umzug zu helfen$t$, false, 2),
    (v_q, $t$Ein Interview für das Fernsehen zu führen$t$, false, 3),
    (v_q, $t$Seine Memoiren zu verfassen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie verändert sich im Verlauf des Textes die Art des Gesprächs zwischen Wolf und Herrn Kaufmann?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Es bleibt durchgehend eine rein sachliche Materialsammlung$t$, false, 1),
    (v_q, $t$Es entwickelt sich von reiner Dokumentation zu etwas, das über die bloße Erfassung von Fakten hinausgeht$t$, true, 2),
    (v_q, $t$Es endet abrupt, ohne dass Wolf brauchbares Material erhält$t$, false, 3),
    (v_q, $t$Es wird zunehmend förmlicher und distanzierter$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wovon wurde Herr Kaufmann als junger Mann plötzlich getrennt?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Von seiner Schwester$t$, true, 1),
    (v_q, $t$Von seinen Eltern$t$, false, 2),
    (v_q, $t$Von seiner Ehefrau$t$, false, 3),
    (v_q, $t$Von seinem besten Freund$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was berührte Wolf an Herrn Kaufmanns Schilderung am meisten?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Die genaue Beschreibung der Zensurmaßnahmen$t$, false, 1),
    (v_q, $t$Die Art, wie er die innere Zerrissenheit eines gefühlt halbierten Lebens beschrieb$t$, true, 2),
    (v_q, $t$Die Häufigkeit seiner Briefe an die Schwester$t$, false, 3),
    (v_q, $t$Die politischen Details der Grenzsicherung$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was legt die Formulierung ein halbiertes Leben zu führen über Herrn Kaufmanns Selbstverständnis nahe?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Dass er sich als vollständige, unabhängige Person empfand, der die Schwester gleichgültig war$t$, false, 1),
    (v_q, $t$Dass die Trennung nicht nur äußere Umstände betraf, sondern sein Selbstgefühl dauerhaft in zwei unvereinbare Teile spaltete$t$, true, 2),
    (v_q, $t$Dass er körperlich krank wurde infolge der Trennung$t$, false, 3),
    (v_q, $t$Dass er die Schwester nach der Trennung völlig vergessen hatte$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was antwortet Herr Kaufmann auf die Frage nach der Bedeutung der Wiedervereinigung?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Dass die politische Grenze gefallen sei, die innere sich aber nicht so schnell auflöse$t$, true, 1),
    (v_q, $t$Dass für ihn gar nichts sich verändert habe$t$, false, 2),
    (v_q, $t$Dass er die Wiedervereinigung nie erlebt habe$t$, false, 3),
    (v_q, $t$Dass die innere Grenze sofort verschwunden sei$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Erkenntnis gewinnt Wolf am Ende des Gesprächs über ihre Aufgabe als Historikerin?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Dass es genügt, Ereignisse chronologisch festzuhalten$t$, false, 1),
    (v_q, $t$Dass sie auch die langsameren, inneren Prozesse erfassen muss, mit denen Menschen die Geschichte in sich weitertragen$t$, true, 2),
    (v_q, $t$Dass Zeitzeugengespräche für die Forschung unbrauchbar sind$t$, false, 3),
    (v_q, $t$Dass nur offizielle Dokumente relevant sind$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche implizite Kritik an einer rein ereignisgeschichtlichen Geschichtsschreibung lässt sich aus Wolfs abschließender Reflexion ableiten?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Dass eine Beschränkung auf äußere Ereignisse und Daten die fortdauernden, unsichtbaren Nachwirkungen historischer Zäsuren im Innenleben der Betroffenen zu erfassen versäumt$t$, true, 1),
    (v_q, $t$Dass Ereignisgeschichte grundsätzlich falsch und durch reine Emotionsgeschichte zu ersetzen sei$t$, false, 2),
    (v_q, $t$Dass Zeitzeugenberichte objektiver seien als Archivquellen$t$, false, 3),
    (v_q, $t$Dass die Geschichte der Teilung bereits vollständig erforscht sei$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet „die Zerrissenheit“?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$ein innerer Zustand von Gespaltenheit und Konflikt$t$, true, 1),
    (v_q, $t$ein Zustand völliger Ruhe$t$, false, 2),
    (v_q, $t$ein Gefühl von Freude$t$, false, 3),
    (v_q, $t$eine körperliche Verletzung$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welches Wort ist ein Synonym für „Zerrissenheit“ im Kontext des Textes?$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$der Zwiespalt$t$, true, 1),
    (v_q, $t$die Einigkeit$t$, false, 2),
    (v_q, $t$die Gelassenheit$t$, false, 3),
    (v_q, $t$die Sicherheit$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Umschreibung trifft die Bedeutungsnuance von „Zerrissenheit“ am genauesten, wie sie Herr Kaufmann beschreibt?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$das Gefühl, innerlich zwischen zwei unvereinbaren Teilen der eigenen Existenz gespalten zu sein$t$, true, 1),
    (v_q, $t$ein vorübergehendes Gefühl leichter Verwirrung$t$, false, 2),
    (v_q, $t$eine bewusste, rational getroffene Entscheidung$t$, false, 3),
    (v_q, $t$ein Gefühl tiefer Dankbarkeit$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Complétez au discours indirect (Konjunktiv I) : 'Er erzählte, die andere Hälfte seines Lebens ___ an einem unerreichbaren Ort.'$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$existiere$t$, true, 1),
    (v_q, $t$existiert$t$, false, 2),
    (v_q, $t$existierte$t$, false, 3),
    (v_q, $t$würde existieren$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Identifiez la forme correcte du Konjunktiv I dans : 'dessen andere Hälfte an einem Ort existiere, der zugleich vertraut und unerreichbar geworden ___.'$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$sei$t$, true, 1),
    (v_q, $t$ist$t$, false, 2),
    (v_q, $t$wäre$t$, false, 3),
    (v_q, $t$werde$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Transformez au discours indirect (Konjunktiv I) : direct : 'Die politische Grenze ist gefallen, aber die innere Grenze löst sich nicht mit derselben Geschwindigkeit auf.' → indirect : 'Er antwortete, die politische Grenze sei zwar gefallen, die innere jedoch ___.'$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$löse sich nicht mit derselben Geschwindigkeit auf$t$, true, 1),
    (v_q, $t$löst sich nicht mit derselben Geschwindigkeit auf$t$, false, 2),
    (v_q, $t$hätte sich nicht mit derselben Geschwindigkeit aufgelöst$t$, false, 3),
    (v_q, $t$würde sich nicht auflösen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$En vous appuyant sur « Die Linie, die durch ein Leben ging », rédigez en allemand un paragraphe de 8 à 12 phrases sur le thème : les frontières politiques peuvent-elles vraiment disparaître entièrement une fois abolies officiellement ? Utilisez au moins une phrase au discours indirect (Konjunktiv I).$t$, 1, 'normal', 'production', $t$In 'Die Linie, die durch ein Leben ging' erzählt Herr Kaufmann der Historikerin Anneliese Wolf, wie eine politische Grenze sein Leben und das seiner Schwester über Jahrzehnte hinweg trennte. Auf die Frage, was die Wiedervereinigung für ihn bedeutet habe, antwortet er, die politische Grenze sei zwar gefallen, die innere jedoch löse sich nicht mit derselben Geschwindigkeit auf. Diese Aussage verdeutlicht meiner Meinung nach, dass historische Trennungen weit mehr hinterlassen als bloße geographische oder administrative Spuren. Menschen, die über Jahre getrennt lebten, entwickeln oft unterschiedliche Erfahrungen, Erinnerungen und Gewohnheiten, die sich nicht durch einen einzigen politischen Akt aufheben lassen. Auch wenn Grenzen offiziell verschwinden, bleiben psychologische und soziale Nachwirkungen häufig über Generationen hinweg bestehen. Historikerinnen wie Wolf tragen daher eine wichtige Verantwortung, nicht nur äußere Ereignisse zu dokumentieren, sondern auch die inneren, oft unsichtbaren Folgen von Teilung sichtbar zu machen. Gesellschaften, die eine Trennung überwunden haben, sollten sich meiner Ansicht nach bewusst Zeit für Austausch und gegenseitiges Verständnis nehmen, anstatt Wiedervereinigung als abgeschlossenen Prozess zu betrachten. Nur durch echtes Zuhören, wie es Wolf in ihrem Gespräch mit Herrn Kaufmann praktiziert, lassen sich die subtileren Narben einer geteilten Geschichte erkennen und langfristig heilen. Kaufmanns Geschichte zeigt eindrucksvoll, dass wahre Versöhnung mehr erfordert als die bloße Aufhebung einer physischen Grenze.$t$);

END $block$;

-- 10. Die Kunst der gegenläufigen Stimmen
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary) VALUES (
    'C1',
    $t$Die Kunst der gegenläufigen Stimmen$t$,
    $t$Der Dirigent Thomas Ehrlich bereitete sich seit Monaten auf eine Aufführung jener kontrapunktischen Kompositionen vor, mit denen der Thomaskantor aus Leipzig einst die Möglichkeiten mehrstimmiger Musik bis an ihre äußersten Grenzen ausgelotet hatte, und je vertiefter er sich in die Partituren einarbeitete, desto mehr erkannte er darin ein Prinzip, das weit über die Musik hinausreichte. In diesen Werken, so schien ihm, verliefen mehrere selbstständige Stimmen gleichzeitig, jede mit eigener melodischer Logik, eigenem Eigensinn, und dennoch fügten sie sich, bei aller Unabhängigkeit, zu einem Ganzen, das keine der Einzelstimmen unterdrückte, sondern gerade aus ihrer Verschiedenheit seine Spannung und Schönheit gewann.

Ehrlich, der in seinem persönlichen Leben mit einer langwierigen Entfremdung von seinem erwachsenen Sohn zu ringen hatte, begann diese musikalische Struktur zunehmend als Sinnbild für eine Lebenshaltung zu begreifen, die er selbst lange vermisst hatte. Zu oft, so gestand er sich ein, habe er Meinungsverschiedenheiten als Wettstreit begriffen, den es zu gewinnen gelte, anstatt als gleichberechtigtes Nebeneinander verschiedener Wahrheiten, die miteinander in ein produktives Verhältnis zu bringen wären, ohne dass eine die andere zum Schweigen bringen müsse.

Bei den Proben mit dem Orchester versuchte er, diese Einsicht auch musikalisch zu vermitteln, indem er die Musiker anhielt, nicht auf Kosten der übrigen Stimmen zu dominieren, sondern einander aufmerksam zuzuhören, sodass jede Stimme in dem Moment hervortreten könne, in dem sie es der Gesamtstruktur nach verdiene. Diese Zurückhaltung, die zugleich eine Form von Aufmerksamkeit sei, erschien ihm zunehmend als das eigentliche Geheimnis jener Musik – und, wie er hoffte, auch als möglicher Weg zu einer Versöhnung mit seinem Sohn, mit dem er sich vorgenommen hatte, nach dem Konzert endlich wieder das Gespräch zu suchen, nicht um recht zu behalten, sondern um zuzuhören.$t$,
    $t$Le chef d'orchestre Thomas Ehrlich se préparait depuis des mois à une exécution de ces compositions contrapuntiques avec lesquelles le cantor de Leipzig avait autrefois exploré les possibilités de la musique polyphonique jusqu'à leurs limites extrêmes, et plus il approfondissait son travail sur les partitions, plus il y reconnaissait un principe qui allait bien au-delà de la musique. Dans ces œuvres, lui semblait-il, plusieurs voix indépendantes se déroulaient simultanément, chacune avec sa propre logique mélodique, sa propre obstination, et pourtant elles s'assemblaient, malgré toute leur indépendance, en un tout qui n'étouffait aucune des voix individuelles, mais qui tirait précisément de leur diversité sa tension et sa beauté.

Ehrlich, qui luttait dans sa vie personnelle contre un long éloignement d'avec son fils adulte, en vint à comprendre de plus en plus cette structure musicale comme le symbole d'une attitude envers la vie qu'il avait lui-même longtemps regrettée. Trop souvent, s'avouait-il, il avait conçu les désaccords comme une compétition qu'il fallait gagner, plutôt que comme une coexistence à égalité de vérités différentes, qu'il aurait fallu mettre en relation productive les unes avec les autres, sans que l'une doive réduire l'autre au silence.

Lors des répétitions avec l'orchestre, il essayait de transmettre aussi musicalement cette intuition, en incitant les musiciens à ne pas dominer aux dépens des autres voix, mais à s'écouter mutuellement avec attention, de sorte que chaque voix puisse se détacher au moment où elle le méritait selon la structure d'ensemble. Cette retenue, qui était en même temps une forme d'attention, lui apparaissait de plus en plus comme le véritable secret de cette musique – et, espérait-il, aussi comme une voie possible vers une réconciliation avec son fils, avec lequel il s'était promis, après le concert, de renouer enfin le dialogue, non pas pour avoir raison, mais pour écouter.$t$,
    $t${"Der":"le","Dirigent":"chef d'orchestre","Thomas":"Thomas","Ehrlich":"Ehrlich","bereitete":"préparait","sich":"se","seit":"depuis","Monaten":"mois","auf":"à","eine":"une","Aufführung":"exécution","jener":"de ces","kontrapunktischen":"contrapuntiques","Kompositionen":"compositions","vor":"préparait","mit":"avec","denen":"lesquelles","der":"le","Thomaskantor":"cantor de Leipzig","aus":"de","Leipzig":"Leipzig","einst":"autrefois","die":"les","Möglichkeiten":"possibilités","mehrstimmiger":"polyphonique","Musik":"musique","bis":"jusqu'à","an":"à","ihre":"leurs","äußersten":"extrêmes","Grenzen":"limites","ausgelotet":"explorées","hatte":"avait","und":"et","je":"plus","vertiefter":"plus approfondi","er":"il","in":"dans","Partituren":"partitions","einarbeitete":"travaillait","desto":"plus","mehr":"davantage","erkannte":"reconnaissait","darin":"en cela","ein":"un","Prinzip":"principe","das":"qui","weit":"bien","über":"au-delà","hinausreichte":"allait","In":"dans","diesen":"ces","Werken":"œuvres","so":"ainsi","schien":"semblait","ihm":"lui","verliefen":"se déroulaient","mehrere":"plusieurs","selbstständige":"indépendantes","Stimmen":"voix","gleichzeitig":"simultanément","jede":"chacune","eigener":"sa propre","melodischer":"mélodique","Logik":"logique","eigenem":"son propre","Eigensinn":"obstination","dennoch":"pourtant","fügten":"assemblaient","sie":"elles","bei":"malgré","aller":"toute","Unabhängigkeit":"indépendance","zu":"en","einem":"un","Ganzen":"tout","keine":"aucune","Einzelstimmen":"voix individuelles","unterdrückte":"étouffait","sondern":"mais","gerade":"précisément","ihrer":"de leur","Verschiedenheit":"diversité","seine":"sa","Spannung":"tension","Schönheit":"beauté","gewann":"tirait","seinem":"sa","persönlichen":"personnelle","Leben":"vie","einer":"un","langwierigen":"long","Entfremdung":"éloignement","von":"d'avec","erwachsenen":"adulte","Sohn":"fils","ringen":"lutter","begann":"en vint","diese":"cette","musikalische":"musicale","Struktur":"structure","zunehmend":"de plus en plus","als":"comme","Sinnbild":"symbole","für":"pour","Lebenshaltung":"attitude envers la vie","begreifen":"comprendre","selbst":"lui-même","lange":"longtemps","vermisst":"regretté","Zu":"trop","oft":"souvent","gestand":"s'avouait","habe":"avait","Meinungsverschiedenheiten":"désaccords","Wettstreit":"compétition","begriffen":"conçu","den":"qu'","es":"il","gewinnen":"gagner","gelte":"fallait","anstatt":"plutôt que","gleichberechtigtes":"à égalité","Nebeneinander":"coexistence","verschiedener":"différentes","Wahrheiten":"vérités","miteinander":"les unes avec les autres","produktives":"productive","Verhältnis":"relation","bringen":"mettre","wären":"aurait fallu","ohne":"sans","dass":"que","andere":"l'autre","zum":"au","Schweigen":"silence","müsse":"doive","Bei":"lors de","Proben":"répétitions","dem":"l'","Orchester":"orchestre","versuchte":"essayait","Einsicht":"intuition","auch":"aussi","musikalisch":"musicalement","vermitteln":"transmettre","indem":"en","Musiker":"musiciens","anhielt":"incitait","nicht":"ne pas","Kosten":"dépens","übrigen":"autres","dominieren":"dominer","einander":"mutuellement","aufmerksam":"avec attention","zuzuhören":"s'écouter","sodass":"de sorte que","Stimme":"voix","Moment":"moment","hervortreten":"se détacher","könne":"puisse","Gesamtstruktur":"structure d'ensemble","nach":"selon","verdiene":"méritait","Diese":"cette","Zurückhaltung":"retenue","zugleich":"en même temps","Form":"forme","Aufmerksamkeit":"attention","sei":"était","erschien":"apparaissait","eigentliche":"véritable","Geheimnis":"secret","wie":"comme","hoffte":"espérait","möglicher":"possible","Weg":"voie","Versöhnung":"réconciliation","vorgenommen":"promis","Konzert":"concert","endlich":"enfin","wieder":"à nouveau","Gespräch":"dialogue","suchen":"renouer","um":"pour","recht":"raison","behalten":"avoir"}$t$::jsonb
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Worauf bereitet sich Dirigent Thomas Ehrlich vor?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Auf die Aufführung kontrapunktischer Werke$t$, true, 1),
    (v_q, $t$Auf eine Opernpremiere$t$, false, 2),
    (v_q, $t$Auf seine Pensionierung$t$, false, 3),
    (v_q, $t$Auf ein Gespräch mit einem Musikkritiker$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was erkennt Ehrlich als Prinzip in der kontrapunktischen Struktur der Musik?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Dass eine Stimme immer alle anderen dominieren muss$t$, false, 1),
    (v_q, $t$Dass mehrere unabhängige Stimmen sich zu einem Ganzen fügen, ohne einander zu unterdrücken$t$, true, 2),
    (v_q, $t$Dass Kontrapunkt bedeutet, nur eine einzige Melodie zu spielen$t$, false, 3),
    (v_q, $t$Dass Dissonanzen grundsätzlich vermieden werden müssen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie lässt sich die Beschreibung der kontrapunktischen Stimmen als eigensinnig, doch nicht unterdrückend auf Ehrlichs persönliche Situation übertragen, ohne dass der Text dies explizit ausformuliert?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie bleibt eine rein musiktheoretische Beobachtung ohne jeden Bezug zu seinem Leben$t$, false, 1),
    (v_q, $t$Sie präfiguriert implizit die Art gleichberechtigten Nebeneinanders, die er sich für die Beziehung zu seinem Sohn erst noch aneignen muss$t$, true, 2),
    (v_q, $t$Sie zeigt, dass Ehrlich Konflikte grundsätzlich vermeiden will$t$, false, 3),
    (v_q, $t$Sie beweist, dass Ehrlich die Musik seinem Privatleben immer schon vorgezogen hat$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Mit wem hat Ehrlich eine langwierige Entfremdung?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Mit seinem erwachsenen Sohn$t$, true, 1),
    (v_q, $t$Mit seiner Ehefrau$t$, false, 2),
    (v_q, $t$Mit einem Orchestermusiker$t$, false, 3),
    (v_q, $t$Mit seinem Bruder$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was gesteht sich Ehrlich rückblickend über seinen Umgang mit Meinungsverschiedenheiten ein?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Dass er sie stets erfolgreich vermieden hat$t$, false, 1),
    (v_q, $t$Dass er sie zu oft als Wettstreit begriffen hat, den es zu gewinnen gelte$t$, true, 2),
    (v_q, $t$Dass er nie eine eigene Meinung vertreten hat$t$, false, 3),
    (v_q, $t$Dass er Konflikte ausschließlich musikalisch gelöst hat$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Verschiebung in Ehrlichs Selbstverständnis deutet sich in seiner neuen Interpretation von Meinungsverschiedenheiten an?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er bewegt sich von einem Verständnis des Rechthabens als Ziel hin zu einem Verständnis gleichberechtigter, koexistierender Wahrheiten, die keinen Sieger benötigen$t$, true, 1),
    (v_q, $t$Er gibt jede eigene Überzeugung vollständig zugunsten der Meinung seines Sohnes auf$t$, false, 2),
    (v_q, $t$Er beschließt, Konflikte künftig vollständig zu meiden statt sie auszutragen$t$, false, 3),
    (v_q, $t$Er überträgt seine musikalische Autorität unverändert auf seine familiären Beziehungen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wozu hält Ehrlich die Musiker bei den Proben an?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Einander aufmerksam zuzuhören, statt einander zu dominieren$t$, true, 1),
    (v_q, $t$So laut wie möglich zu spielen$t$, false, 2),
    (v_q, $t$Jede Stimme einzeln, ohne die anderen, zu üben$t$, false, 3),
    (v_q, $t$Die Partitur wörtlich auswendig zu lernen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was hofft Ehrlich, nach dem Konzert mit seinem Sohn zu erreichen?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Ihm endgültig zu beweisen, dass er im Recht war$t$, false, 1),
    (v_q, $t$Das Gespräch zu suchen, nicht um recht zu behalten, sondern um zuzuhören$t$, true, 2),
    (v_q, $t$Die Beziehung endgültig zu beenden$t$, false, 3),
    (v_q, $t$Ihn zu einem Berufswechsel zu überreden$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Inwiefern verbindet der Text die musikalische Zurückhaltung, die Ehrlich den Musikern beibringt, mit seinem persönlichen Vorhaben gegenüber dem Sohn?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Beide werden als voneinander unabhängige, unverbundene Lebensbereiche dargestellt$t$, false, 1),
    (v_q, $t$Die Zurückhaltung als eine Form aufmerksamen Zuhörens erscheint als dieselbe Haltung, die er sich für die Versöhnung mit seinem Sohn erhofft$t$, true, 2),
    (v_q, $t$Der Text stellt die musikalische Zurückhaltung als Gegensatz zu der gewünschten familiären Offenheit dar$t$, false, 3),
    (v_q, $t$Die Musiker werden angewiesen, aggressiver zu spielen, um Ehrlichs familiäre Konflikte zu spiegeln$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet „der Eigensinn“?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$eine eigenständige, unabhängige Art$t$, true, 1),
    (v_q, $t$völlige Anpassung an andere$t$, false, 2),
    (v_q, $t$Gehorsam$t$, false, 3),
    (v_q, $t$Gleichgültigkeit$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welches Wort ist ein Synonym für „Eigensinn“ im Kontext des Textes?$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$die Eigenständigkeit$t$, true, 1),
    (v_q, $t$die Unterordnung$t$, false, 2),
    (v_q, $t$die Beliebigkeit$t$, false, 3),
    (v_q, $t$die Anpassungsfähigkeit$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Umschreibung trifft die Bedeutungsnuance von „Eigensinn“ am genauesten, bezogen auf die einzelnen Stimmen in der Musik?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$eine eigene, sich nicht unterordnende Logik, die dennoch zum Ganzen beiträgt$t$, true, 1),
    (v_q, $t$ein Fehler, der die Gesamtharmonie stört$t$, false, 2),
    (v_q, $t$völlige Gleichförmigkeit mit den anderen Stimmen$t$, false, 3),
    (v_q, $t$eine bewusste Missachtung der Partitur$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Complétez au Konjunktiv I : 'sodass jede Stimme in dem Moment hervortreten ___, in dem sie es verdiene.'$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$könne$t$, true, 1),
    (v_q, $t$kann$t$, false, 2),
    (v_q, $t$könnte$t$, false, 3),
    (v_q, $t$konnte$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Identifiez la forme correcte du Konjunktiv I (verbe 'verdienen') dans : 'in dem Moment, in dem sie es der Gesamtstruktur nach ___.'$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$verdiene$t$, true, 1),
    (v_q, $t$verdient$t$, false, 2),
    (v_q, $t$verdiente$t$, false, 3),
    (v_q, $t$würde verdienen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Transformez au discours indirect (Konjunktiv I) : direct : 'Jede Stimme kann in dem Moment hervortreten, in dem sie es verdient.' → indirect : 'Er versuchte zu vermitteln, dass jede Stimme in dem Moment hervortreten ___, in dem sie es verdiene.'$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$könne$t$, true, 1),
    (v_q, $t$kann$t$, false, 2),
    (v_q, $t$könnte$t$, false, 3),
    (v_q, $t$würde können$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$En vous appuyant sur « Die Kunst der gegenläufigen Stimmen », rédigez en allemand un paragraphe de 8 à 12 phrases sur le thème : que peut nous apprendre le contrepoint musical sur la manière de gérer des désaccords dans les relations humaines ? Utilisez au moins une phrase au Konjunktiv I.$t$, 1, 'normal', 'production', $t$In 'Die Kunst der gegenläufigen Stimmen' entdeckt der Dirigent Thomas Ehrlich in den kontrapunktischen Werken des Thomaskantors ein Prinzip, das weit über die Musik hinausreicht. Mehrere selbstständige Stimmen verlaufen dort gleichzeitig, ohne dass eine die andere zum Schweigen bringt, und genau darin erkennt Ehrlich ein Vorbild für zwischenmenschliche Beziehungen. Meiner Meinung nach lässt sich dieses musikalische Prinzip tatsächlich auf menschliche Konflikte übertragen, insbesondere auf die Kommunikation zwischen Generationen oder innerhalb von Familien. Zu oft wird ein Streitgespräch als Wettbewerb verstanden, den es zu gewinnen gilt, anstatt als Raum, in dem unterschiedliche Perspektiven nebeneinander bestehen können. Ehrlich versucht den Musikerinnen und Musikern zu vermitteln, dass jede Stimme in dem Moment hervortreten könne, in dem sie es der Gesamtstruktur nach verdiene, was im übertragenen Sinne bedeutet, jedem Gesprächspartner zur richtigen Zeit Gehör zu schenken. Diese Haltung erfordert Geduld und die Bereitschaft, eigene Standpunkte zurückzustellen, ohne sie vollständig aufzugeben. Besonders eindrücklich finde ich, dass Ehrlich diese musikalische Einsicht auf seine eigene Entfremdung von seinem Sohn überträgt und beschließt, künftig zuzuhören, anstatt recht behalten zu wollen. Diese Verbindung zwischen künstlerischer und persönlicher Reifung zeigt, dass echtes Zuhören keine Schwäche, sondern eine hohe kommunikative Kompetenz darstellt. Der Kontrapunkt lehrt somit, dass Vielstimmigkeit und Harmonie einander nicht ausschließen, sondern sich gegenseitig bedingen können.$t$);

END $block$;

-- 11. Die Stille hinter den Noten
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary) VALUES (
    'C1',
    $t$Die Stille hinter den Noten$t$,
    $t$Wenn ich das Orchester durch den letzten Satz des Streichquartetts opus 131 führe, denke ich unweigerlich an jenen Mann, der diese Musik ersann, ohne sie je mit den Ohren zu vernehmen. Beethoven war zu jener Zeit vollständig ertaubt, ein Zustand, den sich ein Dirigent kaum vorzustellen wagt, und doch entstanden gerade in dieser Stille die kühnsten, introspektivsten seiner Werke. Ich habe mir oft die Frage gestellt, was es überhaupt bedeutet, Musik zu "hören", wenn selbst ihr Schöpfer sie nur innerlich, als reine Vorstellung, erfassen konnte. Vielleicht liegt darin die eigentliche Provokation dieser späten Quartette: Sie verweigern sich dem bloßen Wohlklang, dem, was das Ohr mühelos aufnimmt, und verlangen stattdessen eine Art des Hörens, die dem Denken näher ist als dem Sinnesreiz. Wenn ich die Probenarbeit leite, spüre ich, wie die Musiker zunächst nach vertrauten Mustern suchen und wie sie scheitern, denn Beethoven hat hier jede Konvention der Harmonik beiseitegeschoben, als habe ihn die äußere Taubheit von der Rücksicht auf ein Publikum befreit. Er komponierte, so scheint mir, nicht mehr für ein Ohr, sondern für ein Bewusstsein, das die Musik als Struktur, als Bewegung von Spannung und Lösung begreift. Darin liegt eine paradoxe Freiheit: Der Verlust des physischen Gehörs zwang ihn, sich ganz auf die innere Architektur der Klänge zu verlassen, und diese Architektur ist bis heute von einer Kompromisslosigkeit, die kein hörender Komponist sich vermutlich erlaubt hätte. Als ich vor Jahren zum ersten Mal die cavatina des Quartetts opus 130 dirigierte, jenen Satz, den Beethoven selbst als seinen ergreifendsten bezeichnet haben soll, begriff ich, dass wahres Hören nicht an das Trommelfell gebunden ist, sondern an die Fähigkeit, sich von einer Ordnung berühren zu lassen, die man erahnt, bevor man sie versteht. Seither betrachte ich meine Aufgabe als Dirigent anders: Ich versuche nicht, den Musikern beizubringen, wie es klingen soll, sondern ihnen jenen inneren Ort zu zeigen, von dem aus Beethoven, taub und dennoch hellhörig wie kein Zweiter, in die Zukunft komponierte.$t$,
    $t$Lorsque je conduis l'orchestre à travers le dernier mouvement du quatuor à cordes opus 131, je pense inévitablement à cet homme qui conçut cette musique sans jamais l'entendre de ses oreilles. Beethoven était, à cette époque, complètement sourd, un état qu'un chef d'orchestre ose à peine imaginer, et pourtant c'est précisément dans ce silence que naquirent les plus audacieuses, les plus introspectives de ses œuvres. Je me suis souvent posé la question de savoir ce que signifie réellement « entendre » de la musique, quand même son créateur ne pouvait la saisir qu'intérieurement, comme pure représentation. C'est peut-être là que réside la véritable provocation de ces derniers quatuors : ils se refusent à la simple euphonie, à ce que l'oreille perçoit sans effort, et exigent au contraire une manière d'écouter plus proche de la pensée que du stimulus sensoriel. Lorsque je dirige le travail de répétition, je sens comment les musiciens cherchent d'abord des schémas familiers et comment ils échouent, car Beethoven a ici écarté toute convention de l'harmonie, comme si la surdité extérieure l'avait libéré de tout égard pour un public. Il composait, me semble-t-il, non plus pour une oreille, mais pour une conscience qui appréhende la musique comme structure, comme mouvement de tension et de résolution. Il y a là une liberté paradoxale : la perte de l'ouïe physique l'obligea à s'en remettre entièrement à l'architecture intérieure des sons, et cette architecture est, jusqu'à aujourd'hui, empreinte d'une intransigeance qu'aucun compositeur entendant ne se serait probablement permise. Lorsque, il y a des années, j'ai dirigé pour la première fois la cavatine du quatuor opus 130, ce mouvement que Beethoven lui-même aurait qualifié de le plus poignant, j'ai compris que la véritable écoute n'est pas liée au tympan, mais à la capacité de se laisser toucher par un ordre qu'on pressent avant de le comprendre. Depuis, je considère ma tâche de chef d'orchestre autrement : je n'essaie pas d'apprendre aux musiciens comment cela doit sonner, mais de leur montrer ce lieu intérieur d'où Beethoven, sourd et pourtant plus clairvoyant que quiconque, composait vers l'avenir.$t$,
    $t${"130":"130","131":"131","Wenn":"lorsque","ich":"je","das":"l'","Orchester":"orchestre","durch":"à travers","den":"le","letzten":"dernier","Satz":"mouvement","des":"du","Streichquartetts":"quatuor à cordes","opus":"opus","führe":"conduis","denke":"pense","unweigerlich":"inévitablement","an":"à","jenen":"cet","Mann":"homme","der":"qui","diese":"cette","Musik":"musique","ersann":"conçut","ohne":"sans","sie":"la","je":"jamais","mit":"de","Ohren":"oreilles","zu":"à","vernehmen":"entendre","Beethoven":"Beethoven","war":"était","jener":"cette","Zeit":"époque","vollständig":"complètement","ertaubt":"sourd","ein":"un","Zustand":"état","sich":"s'","Dirigent":"chef d'orchestre","kaum":"à peine","vorzustellen":"imaginer","wagt":"ose","und":"et","doch":"pourtant","entstanden":"naquirent","gerade":"précisément","in":"dans","dieser":"ce","Stille":"silence","die":"les","kühnsten":"plus audacieuses","introspektivsten":"plus introspectives","seiner":"de ses","Werke":"œuvres","Ich":"je","habe":"ai","mir":"me","oft":"souvent","Frage":"question","gestellt":"posé","was":"ce que","es":"il","überhaupt":"réellement","bedeutet":"signifie","hören":"entendre","wenn":"quand","selbst":"même","ihr":"son","Schöpfer":"créateur","nur":"seulement","innerlich":"intérieurement","als":"comme","reine":"pure","Vorstellung":"représentation","erfassen":"saisir","konnte":"pouvait","Vielleicht":"peut-être","liegt":"réside","darin":"là","eigentliche":"véritable","Provokation":"provocation","späten":"derniers","Quartette":"quatuors","Sie":"ils","verweigern":"se refusent","dem":"à la","bloßen":"simple","Wohlklang":"euphonie","Ohr":"oreille","mühelos":"sans effort","aufnimmt":"perçoit","verlangen":"exigent","stattdessen":"au contraire","eine":"une","Art":"manière","Hörens":"d'écouter","Denken":"pensée","näher":"plus proche","ist":"est","Sinnesreiz":"stimulus sensoriel","Probenarbeit":"travail de répétition","leite":"dirige","spüre":"sens","wie":"comment","Musiker":"musiciens","zunächst":"d'abord","nach":"des","vertrauten":"familiers","Mustern":"schémas","suchen":"cherchent","scheitern":"échouent","denn":"car","hat":"a","hier":"ici","jede":"toute","Konvention":"convention","Harmonik":"harmonie","beiseitegeschoben":"écartée","ihn":"le","äußere":"extérieure","Taubheit":"surdité","von":"de","Rücksicht":"égard","auf":"pour","Publikum":"public","befreit":"libéré","Er":"il","komponierte":"composait","so":"me semble-t-il","scheint":"semble","nicht":"ne pas","mehr":"plus","für":"pour","sondern":"mais","Bewusstsein":"conscience","Struktur":"structure","Bewegung":"mouvement","Spannung":"tension","Lösung":"résolution","begreift":"appréhende","Darin":"là","paradoxe":"paradoxale","Freiheit":"liberté","Der":"la","Verlust":"perte","physischen":"physique","Gehörs":"ouïe","zwang":"obligea","ganz":"entièrement","innere":"intérieure","Architektur":"architecture","Klänge":"sons","verlassen":"s'en remettre","bis":"jusqu'à","heute":"aujourd'hui","einer":"d'une","Kompromisslosigkeit":"intransigeance","kein":"aucun","hörender":"entendant","Komponist":"compositeur","vermutlich":"probablement","erlaubt":"permise","hätte":"se serait","Als":"lorsque","vor":"il y a","Jahren":"des années","zum":"pour la","ersten":"première","Mal":"fois","cavatina":"cavatine","Quartetts":"quatuor","dirigierte":"j'ai dirigé","seinen":"son","ergreifendsten":"le plus poignant","bezeichnet":"qualifié","haben":"(aux.)","soll":"aurait","begriff":"j'ai compris","dass":"que","wahres":"véritable","Hören":"écoute","Trommelfell":"tympan","gebunden":"liée","Fähigkeit":"capacité","Ordnung":"ordre","berühren":"toucher","lassen":"se laisser","man":"on","erahnt":"pressent","bevor":"avant","versteht":"comprend","Seither":"depuis","betrachte":"considère","meine":"ma","Aufgabe":"tâche","anders":"autrement","versuche":"essaie","Musikern":"aux musiciens","beizubringen":"d'apprendre","klingen":"sonner","ihnen":"à eux","inneren":"intérieur","Ort":"lieu","zeigen":"montrer","aus":"d'où","taub":"sourd","dennoch":"pourtant","hellhörig":"clairvoyant","Zweiter":"quiconque","Zukunft":"avenir"}$t$::jsonb
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$In welchem Zustand befand sich Beethoven, als er die späten Streichquartette komponierte?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er war vollständig ertaubt.$t$, true, 1),
    (v_q, $t$Er war schwer erkrankt an einer Augenkrankheit.$t$, false, 2),
    (v_q, $t$Er hatte gerade sein Gehör wiedererlangt.$t$, false, 3),
    (v_q, $t$Er komponierte in völliger Isolation von der Musikwelt, aber mit gutem Gehör.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum stellt der Dirigent die Frage, was es bedeutet, Musik zu "hören"?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Weil das Orchester schlecht spielt.$t$, false, 1),
    (v_q, $t$Weil Beethoven die Musik nur innerlich erfassen konnte, nicht mit den Ohren.$t$, true, 2),
    (v_q, $t$Weil er selbst schwerhörig ist.$t$, false, 3),
    (v_q, $t$Weil die Partitur unleserlich ist.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche tiefere Implikation zieht der Erzähler aus Beethovens Taubheit während der Komposition der späten Quartette?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Dass Taubheit die musikalische Qualität grundsätzlich mindert.$t$, false, 1),
    (v_q, $t$Dass wahres Hören eine rein körperliche Fähigkeit ist.$t$, false, 2),
    (v_q, $t$Dass der Verlust des physischen Gehörs eine kompromisslose innere Klangarchitektur ermöglichte.$t$, true, 3),
    (v_q, $t$Dass Beethoven die Quartette nur aus finanzieller Not komponierte.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie reagieren die Musiker laut Text zunächst auf die späten Quartette?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie spielen sie mühelos und vertraut.$t$, false, 1),
    (v_q, $t$Sie suchen nach vertrauten Mustern und scheitern zunächst.$t$, true, 2),
    (v_q, $t$Sie lehnen die Musik komplett ab.$t$, false, 3),
    (v_q, $t$Sie finden sie zu einfach.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was unterscheidet laut dem Erzähler die späten Quartette von konventioneller Musik jener Zeit?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie verweigern sich dem bloßen Wohlklang und gängigen harmonischen Konventionen.$t$, true, 1),
    (v_q, $t$Sie sind kürzer als übliche Werke.$t$, false, 2),
    (v_q, $t$Sie wurden für ein größeres Orchester geschrieben.$t$, false, 3),
    (v_q, $t$Sie folgen strikt den Regeln der Klassik.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Interpretation legt der Text nahe hinsichtlich des Zusammenhangs zwischen Beethovens Isolation und musikalischer Konvention?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Die Isolation vom Publikum hatte keinerlei Einfluss auf seine Kompositionsweise.$t$, false, 1),
    (v_q, $t$Die Taubheit befreite ihn von Rücksichtnahme auf ein hörendes Publikum und ermöglichte radikalere Formen.$t$, true, 2),
    (v_q, $t$Die Konventionen wurden bewusst beibehalten, um das Publikum nicht zu verschrecken.$t$, false, 3),
    (v_q, $t$Beethoven wollte durch Konventionsbruch finanziellen Erfolg erzielen.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was versteht der Dirigent heute unter seiner Aufgabe?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Den Musikern zu zeigen, wie es exakt klingen soll.$t$, false, 1),
    (v_q, $t$Den Musikern einen inneren Ort zu zeigen, von dem aus Beethoven komponierte.$t$, true, 2),
    (v_q, $t$Nur die Lautstärke zu kontrollieren.$t$, false, 3),
    (v_q, $t$Die Musiker möglichst schnell proben zu lassen.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Erkenntnis gewinnt der Erzähler beim Dirigieren der Cavatina aus opus 130?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Dass Musik ausschließlich technische Präzision erfordert.$t$, false, 1),
    (v_q, $t$Dass wahres Hören nicht an das Trommelfell gebunden ist, sondern an eine ahnende Berührung durch eine Ordnung.$t$, true, 2),
    (v_q, $t$Dass diese Musik weniger bedeutsam ist als frühere Werke.$t$, false, 3),
    (v_q, $t$Dass das Publikum die Musik nicht verstehen kann.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Inwiefern verändert die Erfahrung mit der Cavatina die Selbstauffassung des Dirigenten als Vermittler?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er gibt seine Dirigententätigkeit ganz auf.$t$, false, 1),
    (v_q, $t$Er verschiebt sein Verständnis von reiner Klanglehre hin zur Vermittlung eines inneren, vorbegrifflichen Erahnens.$t$, true, 2),
    (v_q, $t$Er beginnt, nur noch frühe Werke Beethovens zu dirigieren.$t$, false, 3),
    (v_q, $t$Er verlangt von den Musikern absolute technische Perfektion statt innerer Nähe.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet „die Kompromisslosigkeit“?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$die Unnachgiebigkeit, keine Zugeständnisse machen$t$, true, 1),
    (v_q, $t$die Nachgiebigkeit$t$, false, 2),
    (v_q, $t$die Unentschlossenheit$t$, false, 3),
    (v_q, $t$die Gleichgültigkeit$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welches Wort ist ein Synonym für „Kompromisslosigkeit“ im Kontext des Textes?$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$die Konsequenz$t$, true, 1),
    (v_q, $t$die Beliebigkeit$t$, false, 2),
    (v_q, $t$die Zurückhaltung$t$, false, 3),
    (v_q, $t$die Anpassung$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Umschreibung trifft die Bedeutungsnuance von „Kompromisslosigkeit“ am genauesten, bezogen auf Beethovens späte Quartette?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$eine konsequente künstlerische Haltung, die keine Rücksicht auf Erwartungen des Publikums nimmt$t$, true, 1),
    (v_q, $t$eine Unfähigkeit, überhaupt Musik zu komponieren$t$, false, 2),
    (v_q, $t$eine bewusste Anpassung an den Publikumsgeschmack$t$, false, 3),
    (v_q, $t$ein Zeichen mangelnder kompositorischer Erfahrung$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Complétez au Konjunktiv II passé (irréel) : 'die kein hörender Komponist sich vermutlich erlaubt ___.'$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$hätte$t$, true, 1),
    (v_q, $t$hat$t$, false, 2),
    (v_q, $t$habe$t$, false, 3),
    (v_q, $t$würde$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Identifiez la structure correcte du Konjunktiv II passé dans : 'eine Kompromisslosigkeit, die kein hörender Komponist sich vermutlich erlaubt hätte.' Quelle est sa fonction ?$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$exprimer une hypothèse irréelle sur le passé$t$, true, 1),
    (v_q, $t$exprimer un fait certain du passé$t$, false, 2),
    (v_q, $t$exprimer un ordre au passé$t$, false, 3),
    (v_q, $t$exprimer une action future$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Transformez la phrase suivante au Konjunktiv II passé : indicatif : 'Ein hörender Komponist hat sich das nicht erlaubt.' → irréel : 'Kein hörender Komponist ___ sich das vermutlich erlaubt.'$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$hätte$t$, true, 1),
    (v_q, $t$habe$t$, false, 2),
    (v_q, $t$würde$t$, false, 3),
    (v_q, $t$hat$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$En vous appuyant sur « Die Stille hinter den Noten », rédigez en allemand un paragraphe de 8 à 12 phrases sur le thème : dans quelle mesure une limitation personnelle (comme la surdité de Beethoven) peut-elle paradoxalement favoriser la créativité artistique ? Utilisez au moins une phrase au Konjunktiv II.$t$, 1, 'normal', 'production', $t$In 'Die Stille hinter den Noten' reflektiert ein Dirigent darüber, wie Beethoven trotz seiner vollständigen Taubheit einige seiner kühnsten und introspektivsten Werke komponierte. Diese scheinbar paradoxe Verbindung zwischen Verlust und künstlerischer Freiheit halte ich für eines der faszinierendsten Beispiele dafür, wie Einschränkungen kreatives Schaffen verändern können. Der Text vermutet, ein hörender Komponist hätte sich die radikale Missachtung konventioneller Harmonik in den späten Quartetten vermutlich nicht erlaubt, da er stets Rücksicht auf das Publikum genommen hätte. Beethovens Taubheit befreite ihn hingegen von dieser Rücksichtnahme und zwang ihn, sich ausschließlich auf die innere Architektur der Musik zu verlassen. Diese Beobachtung lässt sich meiner Meinung nach auf viele kreative Prozesse übertragen: Manchmal entstehen die innovativsten Werke gerade dann, wenn äußere Erwartungen wegfallen. Gleichzeitig sollte man diesen Zusammenhang nicht romantisieren, denn eine Behinderung wie Taubheit bringt für die betroffene Person zunächst erhebliches Leid mit sich. Dennoch zeigt Beethovens Beispiel, dass der Mensch unter extremen Bedingungen manchmal zu ungewöhnlicher künstlerischer Klarheit findet. Der Dirigent selbst beschreibt, wie sich seine eigene Auffassung von 'Hören' durch die Auseinandersetzung mit diesen Werken verändert hat. Letztlich lehrt uns diese Geschichte, dass wahre künstlerische Innovation oft gerade dort entsteht, wo gewohnte Sinneswahrnehmungen versagen und durch eine tiefere, innere Vorstellungskraft ersetzt werden müssen.$t$);

END $block$;

-- 12. Die unsichtbaren Jahre
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary) VALUES (
    'C1',
    $t$Die unsichtbaren Jahre$t$,
    $t$In meinem Arbeitszimmer hängt eine vergilbte Fotografie des Berner Patentamtes, jenes unscheinbaren Gebäudes, in dem ein junger, kaum beachteter Angestellter namens Albert Einstein Tag für Tag Patentanträge auf technische Stichhaltigkeit prüfte. Ich habe mein ganzes Leben der theoretischen Physik gewidmet, und doch kehre ich in späten Jahren immer wieder zu dieser Episode zurück, weil sie mir mehr über das Wesen der Erkenntnis zu sagen scheint als jede Formel. Einstein war zu jener Zeit kein anerkannter Wissenschaftler; er hatte keine Universitätsstelle gefunden, seine Bewerbungen waren wiederholt abgelehnt worden, und er verdiente seinen Lebensunterhalt, indem er die Erfindungen anderer beurteilte. Man könnte meinen, diese Jahre der institutionellen Unsichtbarkeit hätten sein Denken gelähmt. Das Gegenteil scheint der Fall gewesen zu sein. Fern von akademischen Zwängen, von Lehrverpflichtungen und dem Druck, sich in etablierte Denkschulen einzufügen, konnte er sich Gedankenexperimenten hingeben, die kein etablierter Professor sich damals erlaubt hätte. Das Jahr 1905, in dem er binnen weniger Monate vier Arbeiten veröffentlichte, die unter anderem die spezielle Relativitätstheorie begründeten, entstand nicht trotz, sondern vielleicht gerade wegen dieser Randständigkeit. Ich habe selbst erlebt, wie sehr Institutionen dazu neigen, Anerkennung mit Originalität zu verwechseln, wie oft ein Gedanke erst dann als bedeutend gilt, wenn er von der richtigen Stelle kommt. Als junger Physiker litt ich darunter, dass meine frühen Arbeiten kaum Beachtung fanden, und ich fragte mich, ob ich auf dem falschen Weg sei. Erst später begriff ich, dass die Geschichte der Physik voller Beispiele ist, in denen die tiefste Einsicht abseits der etablierten Zentren reifte. Das bedeutet nicht, dass Institutionen wertlos wären; sie ermöglichen den Austausch, die Prüfung, die Weitergabe von Wissen. Aber sie können auch träge werden, sich selbst genügen, das Neue zunächst abwehren. Wenn ich heute jungen Forschern begegne, die an ihrer fehlenden Anerkennung verzweifeln, erinnere ich sie an jenen Angestellten im Patentamt, der die Zeit zwischen den Anträgen nutzte, um das Universum neu zu denken.$t$,
    $t$Dans mon bureau est accrochée une photographie jaunie de l'Office des brevets de Berne, ce bâtiment discret où un jeune employé peu remarqué du nom d'Albert Einstein vérifiait jour après jour la validité technique des demandes de brevet. J'ai consacré toute ma vie à la physique théorique, et pourtant je reviens sans cesse, dans mes dernières années, à cet épisode, parce qu'il me semble en dire plus sur la nature de la connaissance qu'aucune formule. Einstein n'était, à cette époque, aucun scientifique reconnu ; il n'avait trouvé aucun poste universitaire, ses candidatures avaient été refusées à plusieurs reprises, et il gagnait sa vie en jugeant les inventions des autres. On pourrait croire que ces années d'invisibilité institutionnelle avaient paralysé sa pensée. Le contraire semble avoir été le cas. Loin des contraintes académiques, des obligations d'enseignement et de la pression de devoir s'insérer dans des écoles de pensée établies, il pouvait se livrer à des expériences de pensée qu'aucun professeur établi ne se serait alors permises. L'année 1905, où en quelques mois il publia quatre articles qui fondèrent entre autres la théorie de la relativité restreinte, naquit non pas malgré, mais peut-être justement à cause de cette marginalité. J'ai moi-même constaté à quel point les institutions ont tendance à confondre reconnaissance et originalité, à quel point une idée n'est souvent jugée importante que lorsqu'elle vient du bon endroit. Jeune physicien, j'ai souffert de ce que mes premiers travaux ne trouvaient guère d'écho, et je me suis demandé si j'étais sur la mauvaise voie. Ce n'est que plus tard que j'ai compris que l'histoire de la physique est pleine d'exemples où l'intuition la plus profonde a mûri à l'écart des centres établis. Cela ne signifie pas que les institutions soient sans valeur ; elles permettent l'échange, la vérification, la transmission du savoir. Mais elles peuvent aussi devenir léthargiques, se suffire à elles-mêmes, repousser d'abord la nouveauté. Quand je rencontre aujourd'hui de jeunes chercheurs désespérés par le manque de reconnaissance, je leur rappelle cet employé du bureau des brevets qui utilisait le temps entre les demandes pour repenser l'univers.$t$,
    $t${"1905":"1905","In":"dans","meinem":"mon","Arbeitszimmer":"bureau","hängt":"est accrochée","eine":"une","vergilbte":"jaunie","Fotografie":"photographie","des":"de l'","Berner":"de Berne","Patentamtes":"office des brevets","jenes":"ce","unscheinbaren":"discret","Gebäudes":"bâtiment","ein":"un","junger":"jeune","kaum":"peu","beachteter":"remarqué","Angestellter":"employé","namens":"du nom de","in":"dans","dem":"où","ich":"je","Zeit":"époque","Jahre":"années","Albert":"Albert","Einstein":"Einstein","Tag":"jour","für":"pour","Patentanträge":"demandes de brevet","auf":"sur","technische":"technique","Stichhaltigkeit":"validité","prüfte":"vérifiait","Ich":"je","habe":"ai","mein":"ma","ganzes":"toute","Leben":"vie","der":"à la","theoretischen":"théorique","Physik":"physique","gewidmet":"consacré","und":"et","doch":"pourtant","kehre":"reviens","späten":"dernières","Jahren":"années","immer":"sans cesse","wieder":"encore","zu":"à","dieser":"cet","Episode":"épisode","zurück":"reviens","weil":"parce que","sie":"il","mir":"me","mehr":"plus","über":"sur","das":"la","Wesen":"nature","Erkenntnis":"connaissance","sagen":"dire","scheint":"semble","als":"que","jede":"aucune","Formel":"formule","war":"était","jener":"cette","kein":"aucun","anerkannter":"reconnu","Wissenschaftler":"scientifique","er":"il","hatte":"avait","keine":"aucun","Universitätsstelle":"poste universitaire","gefunden":"trouvé","seine":"ses","Bewerbungen":"candidatures","waren":"avaient été","wiederholt":"à plusieurs reprises","abgelehnt":"refusées","worden":"été","verdiente":"gagnait","seinen":"sa","Lebensunterhalt":"vie","indem":"en","die":"les","Erfindungen":"inventions","anderer":"des autres","beurteilte":"jugeant","Man":"on","könnte":"pourrait","meinen":"croire","diese":"ces","institutionellen":"institutionnelle","Unsichtbarkeit":"invisibilité","hätten":"avaient","sein":"sa","Denken":"pensée","gelähmt":"paralysé","Das":"le","Gegenteil":"contraire","Fall":"cas","gewesen":"été","Fern":"loin","von":"de","akademischen":"académiques","Zwängen":"contraintes","Lehrverpflichtungen":"obligations d'enseignement","Druck":"pression","sich":"se","etablierte":"établies","Denkschulen":"écoles de pensée","einzufügen":"s'insérer","konnte":"pouvait","Gedankenexperimenten":"expériences de pensée","hingeben":"se livrer","etablierter":"établi","Professor":"professeur","damals":"alors","erlaubt":"permises","hätte":"se serait","Jahr":"année","binnen":"en l'espace de","weniger":"quelques","Monate":"mois","vier":"quatre","Arbeiten":"articles","veröffentlichte":"publia","unter":"entre","anderem":"autres","spezielle":"restreinte","Relativitätstheorie":"théorie de la relativité","begründeten":"fondèrent","entstand":"naquit","nicht":"non","trotz":"malgré","sondern":"mais","vielleicht":"peut-être","gerade":"justement","wegen":"à cause de","Randständigkeit":"marginalité","selbst":"moi-même","erlebt":"constaté","wie":"à quel point","sehr":"tellement","Institutionen":"institutions","dazu":"à cela","neigen":"tendance","Anerkennung":"reconnaissance","mit":"avec","Originalität":"originalité","verwechseln":"confondre","oft":"souvent","Gedanke":"idée","erst":"seulement","dann":"alors","bedeutend":"importante","gilt":"est jugée","wenn":"lorsque","richtigen":"bon","Stelle":"endroit","kommt":"vient","Als":"comme","Physiker":"physicien","litt":"ai souffert","darunter":"de cela","dass":"que","meine":"mes","frühen":"premiers","Beachtung":"écho","fanden":"trouvaient","fragte":"ai demandé","mich":"me","ob":"si","falschen":"mauvaise","Weg":"voie","sei":"étais","Erst":"ce n'est que","später":"plus tard","begriff":"ai compris","Geschichte":"histoire","voller":"pleine","Beispiele":"exemples","ist":"est","denen":"où","tiefste":"la plus profonde","Einsicht":"intuition","abseits":"à l'écart","etablierten":"établis","Zentren":"centres","reifte":"a mûri","bedeutet":"signifie","wertlos":"sans valeur","wären":"seraient","ermöglichen":"permettent","den":"l'","Austausch":"échange","Prüfung":"vérification","Weitergabe":"transmission","Wissen":"savoir","Aber":"mais","können":"peuvent","auch":"aussi","träge":"léthargiques","werden":"devenir","genügen":"se suffire","Neue":"nouveauté","zunächst":"d'abord","abwehren":"repousser","Wenn":"quand","heute":"aujourd'hui","jungen":"jeunes","Forschern":"chercheurs","begegne":"rencontre","an":"à","ihrer":"leur","fehlenden":"manque","verzweifeln":"désespérés","erinnere":"rappelle","jenen":"cet","Angestellten":"employé","im":"au","Patentamt":"bureau des brevets","zwischen":"entre","Anträgen":"demandes","nutzte":"utilisait","um":"pour","Universum":"univers","neu":"à nouveau","denken":"penser"}$t$::jsonb
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wo arbeitete Einstein, bevor er berühmt wurde?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$An einer Universität als Professor.$t$, false, 1),
    (v_q, $t$Im Patentamt in Bern.$t$, true, 2),
    (v_q, $t$In einem physikalischen Forschungsinstitut.$t$, false, 3),
    (v_q, $t$Als Lehrer an einer Schule.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum landete Einstein im Patentamt statt an einer Universität?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er wollte bewusst nicht wissenschaftlich arbeiten.$t$, false, 1),
    (v_q, $t$Seine Bewerbungen um eine Universitätsstelle waren wiederholt abgelehnt worden.$t$, true, 2),
    (v_q, $t$Er hatte kein Interesse an Physik.$t$, false, 3),
    (v_q, $t$Das Patentamt bot ihm ein höheres Gehalt als jede Universität.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was deutet der Erzähler mit der Formulierung an, Einsteins Jahre seien "institutionelle Unsichtbarkeit" gewesen?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Dass Einstein während dieser Zeit keine wissenschaftliche Tätigkeit ausübte.$t$, false, 1),
    (v_q, $t$Dass Einstein zwar geistig aktiv war, aber vom akademischen Anerkennungssystem nicht wahrgenommen wurde.$t$, true, 2),
    (v_q, $t$Dass Einstein absichtlich anonym bleiben wollte.$t$, false, 3),
    (v_q, $t$Dass die Institutionen seine Arbeit aktiv sabotierten.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was geschah im Jahr 1905?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Einstein erhielt den Nobelpreis.$t$, false, 1),
    (v_q, $t$Einstein veröffentlichte mehrere bedeutende Arbeiten, darunter zur Relativitätstheorie.$t$, true, 2),
    (v_q, $t$Einstein verlor seine Stelle im Patentamt.$t$, false, 3),
    (v_q, $t$Einstein begann sein Physikstudium.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wieso vermutet der Erzähler, dass die Randständigkeit Einsteins Kreativität eher förderte als hemmte?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Weil er ohne akademischen Druck und Lehrverpflichtungen freier denken konnte.$t$, true, 1),
    (v_q, $t$Weil das Patentamt ihm spezielle physikalische Ausbildung bot.$t$, false, 2),
    (v_q, $t$Weil Kollegen im Patentamt ihn wissenschaftlich unterstützten.$t$, false, 3),
    (v_q, $t$Weil er dort Zugang zu besseren Laboren hatte.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche allgemeinere These über wissenschaftliche Innovation leitet der Erzähler aus Einsteins Fall ab?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Nur institutionslose Forscher können Bedeutendes leisten.$t$, false, 1),
    (v_q, $t$Tiefe Einsicht kann gerade abseits etablierter, oft träger Zentren reifen, ohne dass Institutionen dadurch wertlos würden.$t$, true, 2),
    (v_q, $t$Institutionen sind für wissenschaftlichen Fortschritt vollkommen überflüssig.$t$, false, 3),
    (v_q, $t$Anerkennung und Originalität sind stets deckungsgleich.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was tut der Erzähler heute, wenn er jungen Forschern begegnet, die an fehlender Anerkennung leiden?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er rät ihnen, das Forschungsfeld zu wechseln.$t$, false, 1),
    (v_q, $t$Er erinnert sie an Einsteins Zeit im Patentamt.$t$, true, 2),
    (v_q, $t$Er ignoriert ihre Sorgen.$t$, false, 3),
    (v_q, $t$Er verweist sie an bekannte Professoren.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie erging es dem Erzähler selbst als jungem Physiker?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er wurde sofort für seine Arbeiten gefeiert.$t$, false, 1),
    (v_q, $t$Seine frühen Arbeiten fanden kaum Beachtung, was ihn zweifeln ließ.$t$, true, 2),
    (v_q, $t$Er hatte nie Zweifel an seinem Weg.$t$, false, 3),
    (v_q, $t$Er wechselte früh in die Industrie.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Spannung zwischen zwei Werten durchzieht den gesamten Text als zentrales Thema?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Die Spannung zwischen Theorie und Experiment in der Physik.$t$, false, 1),
    (v_q, $t$Die Spannung zwischen institutioneller Anerkennung und genuiner, oft unbeachteter Einsicht.$t$, true, 2),
    (v_q, $t$Die Spannung zwischen Lehre und Forschung an Universitäten.$t$, false, 3),
    (v_q, $t$Die Spannung zwischen Einsteins Privatleben und seiner Karriere.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet „die Randständigkeit“?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$eine Position am Rand, außerhalb des Zentrums oder Mainstreams$t$, true, 1),
    (v_q, $t$eine zentrale, anerkannte Stellung$t$, false, 2),
    (v_q, $t$großer Reichtum$t$, false, 3),
    (v_q, $t$internationale Berühmtheit$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welches Wort ist ein Synonym für „Randständigkeit“ im Kontext des Textes?$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$die Marginalität$t$, true, 1),
    (v_q, $t$die Anerkennung$t$, false, 2),
    (v_q, $t$die Zentralität$t$, false, 3),
    (v_q, $t$der Ruhm$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Umschreibung trifft die Bedeutungsnuance von „Randständigkeit“ am genauesten, wie sie im Text auf Einsteins Situation bezogen wird?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$eine Position außerhalb etablierter Institutionen, die paradoxerweise kreative Freiheit ermöglichte$t$, true, 1),
    (v_q, $t$eine bewusst gewählte Isolation aus Misstrauen gegenüber anderen$t$, false, 2),
    (v_q, $t$ein vorübergehender Zustand ohne jede Bedeutung für das spätere Werk$t$, false, 3),
    (v_q, $t$ein Ausdruck mangelnder wissenschaftlicher Fähigkeiten$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Complétez au passif plus-que-parfait (Plusquamperfekt Passiv) : 'seine Bewerbungen ___ wiederholt abgelehnt worden.'$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$waren$t$, true, 1),
    (v_q, $t$hatten$t$, false, 2),
    (v_q, $t$wurden$t$, false, 3),
    (v_q, $t$sind$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Identifiez le temps et la voix corrects de : 'seine Bewerbungen waren wiederholt abgelehnt worden.'$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Plusquamperfekt Passiv$t$, true, 1),
    (v_q, $t$Präsens Passiv$t$, false, 2),
    (v_q, $t$Perfekt Aktiv$t$, false, 3),
    (v_q, $t$Futur Passiv$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Transformez à la voix active la phrase passive suivante en respectant le Plusquamperfekt : 'Seine Bewerbungen waren wiederholt abgelehnt worden.' → aktiv : 'Man ___ seine Bewerbungen wiederholt abgelehnt.'$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$hatte$t$, true, 1),
    (v_q, $t$hat$t$, false, 2),
    (v_q, $t$war$t$, false, 3),
    (v_q, $t$wurde$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$En vous appuyant sur « Die unsichtbaren Jahre », rédigez en allemand un paragraphe de 8 à 12 phrases sur le thème : les institutions favorisent-elles ou freinent-elles réellement l'innovation et la créativité ? Utilisez au moins une phrase au passif (n'importe quel temps).$t$, 1, 'normal', 'production', $t$In 'Die unsichtbaren Jahre' wird geschildert, wie der junge Albert Einstein, dessen Bewerbungen um eine Universitätsstelle wiederholt abgelehnt worden waren, seine bedeutendsten wissenschaftlichen Einsichten fernab akademischer Institutionen entwickelte. Diese Geschichte wirft meiner Meinung nach eine wichtige Frage auf: Fördern etablierte Institutionen tatsächlich immer Innovation, oder können sie diese unter bestimmten Umständen auch behindern? Einerseits bieten Universitäten und Forschungseinrichtungen wichtige Strukturen für Austausch, Überprüfung und Weitergabe von Wissen, die für wissenschaftlichen Fortschritt unverzichtbar sind. Andererseits neigen Institutionen, wie im Text beschrieben, gelegentlich dazu, unkonventionelle Ideen zunächst abzulehnen, weil sie nicht in etablierte Denkschulen passen. Einsteins Randständigkeit im Patentamt ermöglichte ihm paradoxerweise Gedankenexperimente, die ein etablierter Professor sich damals kaum erlaubt hätte. Dies zeigt, dass ein gewisser Abstand zu institutionellem Druck manchmal notwendig sein kann, um wirklich originelle Ideen zu entwickeln. Gleichzeitig sollte man nicht den Fehlschluss ziehen, Institutionen seien grundsätzlich hinderlich, denn ohne spätere akademische Anerkennung wäre Einsteins Werk kaum verbreitet worden. Ich bin daher der Ansicht, dass Institutionen idealerweise Räume schaffen sollten, in denen auch unkonventionelle, randständige Ideen ernsthaft geprüft werden, anstatt sie vorschnell abzulehnen. Einsteins Geschichte erinnert uns letztlich daran, dass fehlende Anerkennung nicht zwangsläufig fehlende Qualität bedeutet.$t$);

END $block$;

-- 13. Das alte Netz, neu geknüpft
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary) VALUES (
    'C1',
    $t$Das alte Netz, neu geknüpft$t$,
    $t$Nach Jahrzehnten in der internationalen Handelsdiplomatie ertappe ich mich zunehmend dabei, Verhandlungssäle mit den Kontoren der alten Hanse zu vergleichen. Jenes Bündnis norddeutscher und baltischer Städte, das vom dreizehnten bis zum siebzehnten Jahrhundert Handelswege von London bis Nowgorod kontrollierte, wirkt aus heutiger Perspektive wie ein Vorläufer dessen, was wir heute Freihandelszonen oder Wirtschaftsallianzen nennen. Lübeck, Hamburg, Danzig, Riga: Städte, die sich zu keinem gemeinsamen Staat zusammenschlossen, sondern ihre Souveränität bewahrten und dennoch durch gemeinsame Interessen, gemeinsame Rechtsnormen und ein Netz von Handelsniederlassungen verbunden waren. Es gibt Momente in meiner Arbeit, in denen mir diese Parallele tröstlich erscheint. Wenn ich sehe, wie heutige Staatenbünde trotz unterschiedlicher politischer Systeme zu pragmatischen Übereinkünften finden, denke ich an die hansischen Kaufleute, die trotz konkurrierender Interessen ein funktionierendes System der gegenseitigen Absicherung schufen. Doch die Parallele hat eine Schattenseite, die ich nicht verschweigen will. Die Hanse war kein demokratisches Gebilde; sie vertrat die Interessen einer kaufmännischen Elite, oft gegen die Bevölkerung der eigenen Städte und erst recht gegen jene Regionen, die sie wirtschaftlich beherrschte, ohne ihnen gleichberechtigten Zugang zu gewähren. Ihre Macht beruhte auf Handelsembargos, auf der Fähigkeit, unbotmäßige Städte oder Fürsten durch wirtschaftliche Blockaden zu disziplinieren, eine Praxis, die mich unweigerlich an heutige Sanktionsregime erinnert. Und die Hanse zerfiel schließlich, weil sie sich nicht an die veränderte Weltordnung anpassen konnte, weil starke Nationalstaaten mit eigenen Flotten und eigener Zollpolitik ihr überlegen wurden. Wenn ich heute an Verträgen mitwirke, die Lieferketten zwischen Kontinenten regeln, frage ich mich manchmal, ob wir nicht ähnlich blind gegenüber unserer eigenen Vergänglichkeit sind. Vielleicht liegt die eigentliche Lehre der Hanse nicht in ihrem Erfolg, sondern in ihrem langsamen, fast unbemerkten Niedergang: Netzwerke, die auf gemeinsamem Nutzen beruhen, sind stabil, solange dieser Nutzen für alle Beteiligten erkennbar bleibt, und zerbrechlich in dem Moment, in dem einzelne Knoten des Netzes ihn nicht mehr erkennen.$t$,
    $t$Après des décennies passées dans la diplomatie commerciale internationale, je me surprends de plus en plus à comparer les salles de négociation aux comptoirs de l'ancienne Hanse. Cette alliance de villes d'Allemagne du Nord et de la Baltique, qui contrôla du treizième au dix-septième siècle les routes commerciales de Londres à Novgorod, apparaît, vue d'aujourd'hui, comme un précurseur de ce que nous appelons aujourd'hui zones de libre-échange ou alliances économiques. Lübeck, Hambourg, Dantzig, Riga : des villes qui ne se sont regroupées en aucun État commun, mais qui ont préservé leur souveraineté tout en étant reliées par des intérêts communs, des normes juridiques communes et un réseau de comptoirs commerciaux. Il y a des moments dans mon travail où cette parallèle me paraît réconfortante. Quand je vois comment les alliances d'États actuelles parviennent, malgré des systèmes politiques différents, à des accords pragmatiques, je pense aux marchands hanséatiques qui, malgré des intérêts concurrents, ont créé un système fonctionnel de sécurisation mutuelle. Mais le parallèle a un côté sombre que je ne veux pas taire. La Hanse n'était pas une structure démocratique ; elle représentait les intérêts d'une élite marchande, souvent contre la population de ses propres villes, et plus encore contre ces régions qu'elle dominait économiquement, sans leur accorder un accès à égalité de droits. Son pouvoir reposait sur des embargos commerciaux, sur sa capacité à discipliner par des blocus économiques des villes ou des princes récalcitrants, une pratique qui me rappelle inévitablement les régimes de sanctions actuels. Et la Hanse a finalement décliné parce qu'elle n'a pas su s'adapter à l'ordre mondial changeant, parce que des États-nations puissants, dotés de leurs propres flottes et de leur propre politique douanière, se sont révélés supérieurs à elle. Quand je travaille aujourd'hui sur des accords régissant les chaînes d'approvisionnement entre continents, je me demande parfois si nous ne sommes pas nous-mêmes, de façon similaire, aveugles à notre propre caducité. La véritable leçon de la Hanse réside peut-être non pas dans son succès, mais dans son déclin lent, presque imperceptible : les réseaux fondés sur un bénéfice commun sont stables tant que ce bénéfice reste perceptible pour toutes les parties concernées, et fragiles dès l'instant où certains nœuds du réseau cessent de le reconnaître.$t$,
    $t${"Nach":"après","Jahrzehnten":"décennies","kein":"aucune","in":"dans","der":"la","internationalen":"internationale","Handelsdiplomatie":"diplomatie commerciale","ertappe":"surprends","ich":"je","mich":"me","zunehmend":"de plus en plus","dabei":"à","Verhandlungssäle":"salles de négociation","mit":"à","den":"les","Kontoren":"comptoirs","alten":"ancienne","Hanse":"Hanse","zu":"à","vergleichen":"comparer","Jenes":"cette","Bündnis":"alliance","norddeutscher":"d'Allemagne du Nord","und":"et","baltischer":"de la Baltique","Städte":"villes","das":"qui","vom":"du","dreizehnten":"treizième","bis":"jusqu'au","zum":"au","siebzehnten":"dix-septième","Jahrhundert":"siècle","Handelswege":"routes commerciales","von":"de","London":"Londres","Nowgorod":"Novgorod","kontrollierte":"contrôla","wirkt":"apparaît","aus":"vue de","heutiger":"d'aujourd'hui","Perspektive":"perspective","wie":"comme","ein":"un","Vorläufer":"précurseur","dessen":"de ce que","was":"que","wir":"nous","heute":"aujourd'hui","Freihandelszonen":"zones de libre-échange","oder":"ou","Wirtschaftsallianzen":"alliances économiques","nennen":"appelons","Lübeck":"Lübeck","Hamburg":"Hambourg","Danzig":"Dantzig","Riga":"Riga","die":"qui","sich":"se","keinem":"à aucun","gemeinsamen":"commun","Staat":"État","zusammenschlossen":"regroupées","sondern":"mais","ihre":"leur","Souveränität":"souveraineté","bewahrten":"préservé","dennoch":"pourtant","durch":"par","gemeinsame":"communs","Interessen":"intérêts","Rechtsnormen":"normes juridiques","Netz":"réseau","Handelsniederlassungen":"comptoirs commerciaux","verbunden":"reliées","waren":"étaient","Es":"il","gibt":"y a","Momente":"moments","meiner":"mon","Arbeit":"travail","denen":"où","mir":"me","diese":"cette","Parallele":"parallèle","tröstlich":"réconfortante","erscheint":"paraît","Wenn":"quand","sehe":"vois","heutige":"actuelles","Staatenbünde":"alliances d'États","trotz":"malgré","unterschiedlicher":"différents","politischer":"politiques","Systeme":"systèmes","pragmatischen":"pragmatiques","Übereinkünften":"accords","finden":"parviennent","denke":"pense","an":"à","hansischen":"hanséatiques","Kaufleute":"marchands","konkurrierender":"concurrents","funktionierendes":"fonctionnel","System":"système","gegenseitigen":"mutuelle","Absicherung":"sécurisation","schufen":"ont créé","Doch":"mais","hat":"a","eine":"un","Schattenseite":"côté sombre","nicht":"ne pas","verschweigen":"taire","will":"veux","Die":"la","war":"était","demokratisches":"démocratique","Gebilde":"structure","sie":"elle","vertrat":"représentait","einer":"d'une","kaufmännischen":"marchande","Elite":"élite","oft":"souvent","gegen":"contre","Bevölkerung":"population","eigenen":"propres","erst":"plus","recht":"encore","jene":"ces","Regionen":"régions","wirtschaftlich":"économiquement","beherrschte":"dominait","ohne":"sans","ihnen":"leur","gleichberechtigten":"à égalité de droits","Zugang":"accès","gewähren":"accorder","Ihre":"son","Macht":"pouvoir","beruhte":"reposait","auf":"sur","Handelsembargos":"embargos commerciaux","Fähigkeit":"capacité","unbotmäßige":"récalcitrantes","Fürsten":"princes","wirtschaftliche":"économiques","Blockaden":"blocus","disziplinieren":"discipliner","Praxis":"pratique","unweigerlich":"inévitablement","Sanktionsregime":"régimes de sanctions","erinnert":"rappelle","Und":"et","zerfiel":"a décliné","schließlich":"finalement","weil":"parce que","veränderte":"changeant","Weltordnung":"ordre mondial","anpassen":"s'adapter","konnte":"a su","starke":"puissants","Nationalstaaten":"États-nations","Flotten":"flottes","eigener":"propre","Zollpolitik":"politique douanière","ihr":"à elle","überlegen":"supérieurs","wurden":"se sont révélés","Verträgen":"accords","mitwirke":"travaille sur","Lieferketten":"chaînes d'approvisionnement","zwischen":"entre","Kontinenten":"continents","regeln":"régissant","frage":"me demande","manchmal":"parfois","ob":"si","ähnlich":"de façon similaire","blind":"aveugles","gegenüber":"à","unserer":"notre","Vergänglichkeit":"caducité","sind":"sommes","Vielleicht":"peut-être","liegt":"réside","eigentliche":"véritable","Lehre":"leçon","ihrem":"son","Erfolg":"succès","langsamen":"lent","fast":"presque","unbemerkten":"imperceptible","Niedergang":"déclin","Netzwerke":"réseaux","gemeinsamem":"commun","Nutzen":"bénéfice","beruhen":"fondés","stabil":"stables","solange":"tant que","dieser":"ce","für":"pour","alle":"toutes","Beteiligten":"parties concernées","erkennbar":"perceptible","bleibt":"reste","zerbrechlich":"fragiles","dem":"l'","Moment":"instant","einzelne":"certains","Knoten":"nœuds","des":"du","Netzes":"réseau","ihn":"le","mehr":"plus","erkennen":"reconnaître"}$t$::jsonb
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was war die Hanse laut Text?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Ein Bündnis norddeutscher und baltischer Handelsstädte.$t$, true, 1),
    (v_q, $t$Ein einheitlicher deutscher Nationalstaat.$t$, false, 2),
    (v_q, $t$Eine militärische Allianz gegen Frankreich.$t$, false, 3),
    (v_q, $t$Eine religiöse Bewegung.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Worin sieht der Erzähler die Ähnlichkeit zwischen der Hanse und heutigen Wirtschaftsallianzen?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Beide beruhten auf einem gemeinsamen Staat mit einer Zentralregierung.$t$, false, 1),
    (v_q, $t$Beide beruhten auf souveränen Einheiten, die durch gemeinsame Interessen und Regeln verbunden sind, ohne sich staatlich zu vereinigen.$t$, true, 2),
    (v_q, $t$Beide entstanden ausschließlich aus militärischer Notwendigkeit.$t$, false, 3),
    (v_q, $t$Beide wurden von einem einzelnen Herrscher kontrolliert.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Funktion erfüllt der Vergleich mit der Hanse in der Argumentation des Erzählers insgesamt?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er dient ausschließlich der historischen Belehrung ohne Bezug zur Gegenwart.$t$, false, 1),
    (v_q, $t$Er liefert sowohl ein tröstliches Vorbild pragmatischer Kooperation als auch eine mahnende Warnung vor deren strukturellen Schwächen.$t$, true, 2),
    (v_q, $t$Er soll beweisen, dass heutige Allianzen der Hanse in jeder Hinsicht überlegen sind.$t$, false, 3),
    (v_q, $t$Er wird verwendet, um für die Wiedererrichtung der Hanse zu plädieren.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$War die Hanse demokratisch organisiert?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Ja, alle Bürger hatten gleiches Mitspracherecht.$t$, false, 1),
    (v_q, $t$Nein, sie vertrat vor allem die Interessen einer kaufmännischen Elite.$t$, true, 2),
    (v_q, $t$Ja, sie wurde durch freie Wahlen gelenkt.$t$, false, 3),
    (v_q, $t$Nein, sie wurde von einem einzelnen König regiert.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welches Mittel setzte die Hanse laut Text ein, um widerspenstige Städte oder Fürsten zu disziplinieren?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Militärische Invasionen.$t$, false, 1),
    (v_q, $t$Wirtschaftliche Blockaden bzw. Handelsembargos.$t$, true, 2),
    (v_q, $t$Diplomatische Bestechung.$t$, false, 3),
    (v_q, $t$Religiöse Exkommunikation.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie bewertet der Erzähler implizit die moralische Ambivalenz der Hanse gegenüber heutigen Sanktionsregimen?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er stellt keinerlei Verbindung zwischen beiden her.$t$, false, 1),
    (v_q, $t$Er deutet an, dass wirtschaftlicher Zwang als Machtmittel eine historische Kontinuität hat, die kritisch zu reflektieren ist.$t$, true, 2),
    (v_q, $t$Er behauptet, moderne Sanktionen seien grundsätzlich gerechter als hansische Embargos.$t$, false, 3),
    (v_q, $t$Er lobt die Hanse uneingeschränkt für ihre disziplinierenden Maßnahmen.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum zerfiel die Hanse laut Text schließlich?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Weil sie von einer Naturkatastrophe zerstört wurde.$t$, false, 1),
    (v_q, $t$Weil sie sich nicht an die veränderte Weltordnung mit starken Nationalstaaten anpassen konnte.$t$, true, 2),
    (v_q, $t$Weil alle Mitgliedsstädte freiwillig austraten.$t$, false, 3),
    (v_q, $t$Weil sie von der katholischen Kirche verboten wurde.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Lehre zieht der Erzähler aus dem Niedergang der Hanse für heutige Netzwerke?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Netzwerke sind stabil, solange der gemeinsame Nutzen für alle Beteiligten erkennbar bleibt.$t$, true, 1),
    (v_q, $t$Netzwerke scheitern immer an äußeren militärischen Bedrohungen.$t$, false, 2),
    (v_q, $t$Netzwerke sind grundsätzlich instabiler als Nationalstaaten.$t$, false, 3),
    (v_q, $t$Netzwerke benötigen zwingend eine gemeinsame Währung, um zu überleben.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet die abschließende Formulierung, man könnte "ähnlich blind gegenüber unserer eigenen Vergänglichkeit" sein?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Dass heutige Wirtschaftsakteure den Tod fürchten wie mittelalterliche Kaufleute.$t$, false, 1),
    (v_q, $t$Dass heutige Allianzen möglicherweise ebenso wenig ihren eigenen langsamen Niedergang erkennen wie einst die Hanse.$t$, true, 2),
    (v_q, $t$Dass die Vergänglichkeit ausschließlich ein biologisches Phänomen ist.$t$, false, 3),
    (v_q, $t$Dass der Erzähler an ein baldiges Ende der Weltwirtschaft glaubt.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet „unbotmäßig“ in „unbotmäßige Städte oder Fürsten“?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$ungehorsam, sich nicht fügend$t$, true, 1),
    (v_q, $t$gehorsam$t$, false, 2),
    (v_q, $t$freundlich$t$, false, 3),
    (v_q, $t$reich$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welches Wort ist ein Synonym für „unbotmäßig“ im Kontext des Textes?$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$widerspenstig$t$, true, 1),
    (v_q, $t$folgsam$t$, false, 2),
    (v_q, $t$loyal$t$, false, 3),
    (v_q, $t$bescheiden$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Umschreibung trifft die Bedeutungsnuance von „unbotmäßig“ am genauesten, bezogen auf die Praxis der Hanse?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Akteure, die sich den Interessen des Bündnisses widersetzen und dafür wirtschaftlich diszipliniert werden$t$, true, 1),
    (v_q, $t$Akteure, die sich vollständig den Regeln des Bündnisses unterordnen$t$, false, 2),
    (v_q, $t$Akteure, die freiwillig aus dem Bündnis austreten$t$, false, 3),
    (v_q, $t$Akteure, die das Bündnis finanziell unterstützen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Complétez l'attribut participial étendu (Partizip I) : 'ein Bündnis, das Handelswege kontrollierte' → 'ein Handelswege ___ Bündnis'$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$kontrollierendes$t$, true, 1),
    (v_q, $t$kontrollierte$t$, false, 2),
    (v_q, $t$kontrolliertes$t$, false, 3),
    (v_q, $t$kontrollierend$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Transformez la proposition relative en attribut participial étendu, en accordant correctement : 'ein Bündnis norddeutscher Städte, das vom 13. bis zum 17. Jahrhundert Handelswege kontrollierte' → 'ein vom 13. bis zum 17. Jahrhundert Handelswege ___ Bündnis norddeutscher Städte'$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$kontrollierendes$t$, true, 1),
    (v_q, $t$kontrollierende$t$, false, 2),
    (v_q, $t$kontrollierender$t$, false, 3),
    (v_q, $t$kontrollierenden$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Le texte emploie aussi la forme passive suivante : 'starke Nationalstaaten... wurden ihr überlegen.' Transformez cette phrase au Plusquamperfekt actif équivalent en sens : 'starke Nationalstaaten ___ ihr überlegen geworden.'$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$waren$t$, true, 1),
    (v_q, $t$hatten$t$, false, 2),
    (v_q, $t$wurden$t$, false, 3),
    (v_q, $t$sind$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$En vous appuyant sur « Das alte Netz, neu geknüpft », rédigez en allemand un paragraphe de 8 à 12 phrases dans lequel vous comparez les alliances économiques historiques (comme la Hanse) aux alliances économiques actuelles, en discutant leurs forces et leurs faiblesses. Utilisez au moins un attribut participial étendu.$t$, 1, 'normal', 'production', $t$In 'Das alte Netz, neu geknüpft' vergleicht ein erfahrener Handelsdiplomat die mittelalterliche Hanse, jenes vom dreizehnten bis zum siebzehnten Jahrhundert Handelswege kontrollierende Städtebündnis, mit heutigen Wirtschaftsallianzen. Diese Parallele halte ich für aufschlussreich, da beide Formen von Bündnissen auf gemeinsamem wirtschaftlichem Nutzen beruhen, ohne dabei die politische Souveränität der beteiligten Akteure vollständig aufzuheben. Ein wesentlicher Vorteil solcher Netzwerke besteht darin, dass sie trotz unterschiedlicher politischer Systeme pragmatische Zusammenarbeit ermöglichen, wie es die Hanse zwischen konkurrierenden Städten vorexerzierte. Allerdings zeigt der Text auch die Schattenseiten dieses Modells: Die Hanse vertrat vor allem die Interessen einer kaufmännischen Elite und disziplinierte unbotmäßige Städte oder Fürsten mittels wirtschaftlicher Blockaden, ähnlich heutigen Sanktionsregimen. Diese Machtasymmetrie lässt sich meiner Ansicht nach auch in gegenwärtigen Wirtschaftsbündnissen wiederfinden, in denen wirtschaftlich stärkere Mitglieder oft überproportionalen Einfluss ausüben. Besonders lehrreich finde ich den historischen Niedergang der Hanse, der nicht durch einen plötzlichen Konflikt, sondern durch die schleichende Unfähigkeit erfolgte, sich an eine veränderte Weltordnung mit aufstrebenden Nationalstaaten anzupassen. Diese Beobachtung sollte heutige internationale Bündnisse zur Vorsicht mahnen, da auch scheinbar stabile Netzwerke zerbrechlich werden, sobald einzelne Mitglieder den gemeinsamen Nutzen nicht mehr erkennen. Insgesamt zeigt der Vergleich, dass wirtschaftliche Allianzen historisch wie heute ein Gleichgewicht zwischen gemeinsamem Interesse und individueller Machtverteilung finden müssen, um dauerhaft Bestand zu haben.$t$);

END $block$;

-- 14. Der Gesang auf dem Felsen
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary) VALUES (
    'C1',
    $t$Der Gesang auf dem Felsen$t$,
    $t$Es gibt wenige Bilder in der deutschen Literatur, die sich so hartnäckig in das kollektive Gedächtnis eingeschrieben haben wie jener Felsen am Rhein, auf dem eine schöne Frau sitzt und singt, während die Schiffer unten, von ihrer Stimme betört, ihr Boot gegen das Gestein lenken und untergehen. Die Loreley, wie sie durch Clemens Brentano zuerst literarisch geformt und später durch Heinrich Heine unsterblich gemacht wurde, ist keine historische Gestalt, sondern eine Erfindung der Romantik, und doch fragt man sich, warum ausgerechnet dieser Ort, diese Flusslandschaft, einen solchen Mythos hervorbringen musste. Ich glaube, die Antwort liegt in der besonderen Beschaffenheit des Rheins selbst an dieser Stelle: Bei Sankt Goarshausen verengt sich der Fluss, das Wasser wird unruhig, Felsen ragen unter der Oberfläche, und tatsächlich sind hier über Jahrhunderte Schiffe verunglückt. Die Romantiker fanden in dieser geographischen Gefahr eine Entsprechung für etwas, das ihr gesamtes Verhältnis zur Natur durchzog: die Überzeugung, dass Schönheit und Gefahr keine Gegensätze, sondern zwei Seiten derselben Erfahrung seien. Anders als die Aufklärung, die die Natur als berechenbaren, dem Menschen unterworfenen Mechanismus begriff, suchten die Romantiker in ihr das Erhabene, jenes Gefühl, das aus der Konfrontation mit einer Macht entsteht, die den Menschen übersteigt und ihn zugleich in ihren Bann zieht. Die Loreley verkörpert diese Ambivalenz in menschlicher, ja weiblicher Gestalt: Ihre Schönheit ist nicht trotz, sondern wegen ihrer tödlichen Wirkung ergreifend. Heines berühmtes Gedicht, das mit der resignierten Zeile beginnt, er wisse nicht, was es bedeuten solle, dass er so traurig sei, fügt der Sage noch eine weitere Ebene hinzu: die Ohnmacht des modernen, reflektierenden Subjekts gegenüber einer Verführung, die es durchschaut und der es dennoch erliegt. Vielleicht ist das der eigentliche Grund, warum der Mythos bis heute nachwirkt. Er erzählt nicht nur von einem gefährlichen Fluss, sondern von jener Erfahrung, die jede Generation neu macht: dass das, was uns am tiefsten berührt, selten ungefährlich ist, und dass wir uns dieser Gefahr oft wissend und dennoch willig aussetzen.$t$,
    $t$Il existe peu d'images dans la littérature allemande qui se soient inscrites aussi durablement dans la mémoire collective que ce rocher sur le Rhin où une belle femme est assise et chante, tandis qu'en contrebas les bateliers, envoûtés par sa voix, dirigent leur bateau contre les rochers et sombrent. La Loreley, telle qu'elle fut d'abord façonnée littérairement par Clemens Brentano puis rendue immortelle par Heinrich Heine, n'est pas une figure historique, mais une invention du romantisme, et pourtant on se demande pourquoi c'est précisément ce lieu, ce paysage fluvial, qui devait faire naître un tel mythe. Je crois que la réponse réside dans la nature particulière du Rhin lui-même à cet endroit : près de Sankt Goarshausen, le fleuve se rétrécit, l'eau devient agitée, des rochers affleurent sous la surface, et de fait, des bateaux ont fait naufrage ici pendant des siècles. Les romantiques trouvèrent dans ce danger géographique une correspondance à quelque chose qui traversait tout leur rapport à la nature : la conviction que beauté et danger n'étaient pas des contraires, mais les deux faces d'une même expérience. Contrairement aux Lumières, qui concevaient la nature comme un mécanisme calculable, soumis à l'homme, les romantiques cherchaient en elle le sublime, ce sentiment qui naît de la confrontation avec une puissance qui dépasse l'homme et le captive en même temps. La Loreley incarne cette ambivalence sous une forme humaine, voire féminine : sa beauté est saisissante non pas malgré, mais à cause de son effet mortel. Le célèbre poème de Heine, qui commence par cette ligne résignée où il dit ne pas savoir ce que cela signifie qu'il soit si triste, ajoute à la légende encore un autre niveau : l'impuissance du sujet moderne, réflexif, face à une séduction qu'il perce à jour et à laquelle il succombe malgré tout. C'est peut-être là la véritable raison pour laquelle ce mythe continue d'agir aujourd'hui. Il ne raconte pas seulement l'histoire d'un fleuve dangereux, mais celle de cette expérience que chaque génération refait : que ce qui nous touche le plus profondément est rarement inoffensif, et que nous nous exposons souvent à ce danger sciemment et pourtant volontiers.$t$,
    $t${"Es":"il","gibt":"existe","wenige":"peu de","Bilder":"images","in":"dans","der":"la","deutschen":"allemande","Literatur":"littérature","die":"qui","sich":"se","so":"aussi","hartnäckig":"durablement","das":"la","kollektive":"collective","Gedächtnis":"mémoire","eingeschrieben":"inscrites","haben":"ont","wie":"que","jener":"ce","Felsen":"rocher","am":"sur le","Rhein":"Rhin","auf":"sur","dem":"lequel","eine":"une","schöne":"belle","Frau":"femme","sitzt":"est assise","und":"et","singt":"chante","während":"tandis que","Schiffer":"bateliers","unten":"en contrebas","von":"par","ihrer":"sa","Stimme":"voix","betört":"envoûtés","ihr":"leur","Boot":"bateau","gegen":"contre","Gestein":"rochers","lenken":"dirigent","untergehen":"sombrent","Die":"la","Loreley":"Loreley","sie":"elle","durch":"par","Clemens":"Clemens","Brentano":"Brentano","zuerst":"d'abord","literarisch":"littérairement","geformt":"façonnée","später":"puis","Heinrich":"Heinrich","Heine":"Heine","unsterblich":"immortelle","gemacht":"rendue","wurde":"fut","ist":"est","keine":"pas une","historische":"historique","Gestalt":"figure","sondern":"mais","Erfindung":"invention","Romantik":"romantisme","doch":"pourtant","fragt":"se demande","man":"on","warum":"pourquoi","ausgerechnet":"précisément","dieser":"ce","Ort":"lieu","diese":"ce","Flusslandschaft":"paysage fluvial","einen":"un","solchen":"tel","Mythos":"mythe","hervorbringen":"faire naître","musste":"devait","Ich":"je","glaube":"crois","Antwort":"réponse","liegt":"réside","besonderen":"particulière","Beschaffenheit":"nature","des":"du","Rheins":"Rhin","selbst":"lui-même","an":"à","Stelle":"endroit","Bei":"près de","Sankt":"Sankt","Goarshausen":"Goarshausen","verengt":"se rétrécit","Fluss":"fleuve","Wasser":"eau","wird":"devient","unruhig":"agitée","ragen":"affleurent","unter":"sous","Oberfläche":"surface","tatsächlich":"de fait","sind":"ont","hier":"ici","über":"pendant","Jahrhunderte":"siècles","Schiffe":"bateaux","verunglückt":"fait naufrage","Romantiker":"romantiques","fanden":"trouvèrent","geographischen":"géographique","Gefahr":"danger","Entsprechung":"correspondance","für":"à","etwas":"quelque chose","gesamtes":"tout","Verhältnis":"rapport","zur":"à la","Natur":"nature","durchzog":"traversait","Überzeugung":"conviction","dass":"que","Schönheit":"beauté","Gegensätze":"contraires","zwei":"deux","Seiten":"faces","derselben":"d'une même","Erfahrung":"expérience","seien":"étaient","Anders":"contrairement","als":"à","Aufklärung":"Lumières","berechenbaren":"calculable","Menschen":"à l'homme","unterworfenen":"soumis","Mechanismus":"mécanisme","begriff":"concevaient","suchten":"cherchaient","Erhabene":"sublime","jenes":"ce","Gefühl":"sentiment","aus":"de","Konfrontation":"confrontation","mit":"avec","einer":"une","Macht":"puissance","entsteht":"naît","den":"qui","übersteigt":"dépasse","ihn":"le","zugleich":"en même temps","ihren":"son","Bann":"captive","zieht":"captive","verkörpert":"incarne","Ambivalenz":"ambivalence","menschlicher":"humaine","ja":"voire","weiblicher":"féminine","Ihre":"sa","nicht":"non pas","trotz":"malgré","wegen":"à cause de","tödlichen":"mortel","Wirkung":"effet","ergreifend":"saisissante","Heines":"de Heine","berühmtes":"célèbre","Gedicht":"poème","resignierten":"résignée","Zeile":"ligne","beginnt":"commence","er":"il","wisse":"sache","was":"ce que","es":"cela","bedeuten":"signifier","solle":"doive","traurig":"triste","sei":"soit","fügt":"ajoute","Sage":"légende","noch":"encore","weitere":"un autre","Ebene":"niveau","hinzu":"ajoute","Ohnmacht":"impuissance","modernen":"moderne","reflektierenden":"réflexif","Subjekts":"sujet","gegenüber":"face à","Verführung":"séduction","durchschaut":"perce à jour","dennoch":"malgré tout","erliegt":"succombe","Vielleicht":"peut-être","eigentliche":"véritable","Grund":"raison","bis":"jusqu'à","heute":"aujourd'hui","nachwirkt":"continue d'agir","Er":"il","erzählt":"raconte","nur":"seulement","einem":"un","gefährlichen":"dangereux","jede":"chaque","Generation":"génération","neu":"à nouveau","macht":"refait","uns":"nous","tiefsten":"le plus profondément","berührt":"touche","selten":"rarement","ungefährlich":"inoffensif","wir":"nous","oft":"souvent","wissend":"sciemment","willig":"volontiers","aussetzen":"exposons"}$t$::jsonb
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wer hat den Loreley-Mythos literarisch geprägt?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Clemens Brentano und später Heinrich Heine.$t$, true, 1),
    (v_q, $t$Johann Wolfgang von Goethe allein.$t$, false, 2),
    (v_q, $t$Die Brüder Grimm.$t$, false, 3),
    (v_q, $t$Friedrich Schiller.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Woher stammt laut Text die geographische Grundlage des Mythos?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Von einer Quelle, die angeblich Wunder bewirkte.$t$, false, 1),
    (v_q, $t$Von der Verengung und Gefährlichkeit des Rheins bei Sankt Goarshausen mit tatsächlichen Schiffsunglücken.$t$, true, 2),
    (v_q, $t$Von einem historisch belegten Piratenüberfall.$t$, false, 3),
    (v_q, $t$Von einer alten römischen Festung an dieser Stelle.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Beziehung stellt der Text zwischen der geographischen Realität des Rheins und der romantischen Weltanschauung her?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Es gibt keinen Zusammenhang, der Mythos ist rein erfunden.$t$, false, 1),
    (v_q, $t$Die reale Gefahr der Flussstelle bot eine sinnliche Entsprechung für die romantische Überzeugung, Schönheit und Gefahr seien untrennbar verbunden.$t$, true, 2),
    (v_q, $t$Die Romantiker ignorierten die geographischen Gegebenheiten bewusst.$t$, false, 3),
    (v_q, $t$Der Rhein wurde erst durch den Mythos gefährlich gemacht.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie unterscheidet sich laut Text die Haltung der Romantik von der der Aufklärung gegenüber der Natur?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Beide sahen die Natur identisch als berechenbaren Mechanismus.$t$, false, 1),
    (v_q, $t$Die Aufklärung sah die Natur als berechenbaren Mechanismus, die Romantik suchte in ihr das Erhabene.$t$, true, 2),
    (v_q, $t$Die Romantik lehnte jede Beschäftigung mit Natur ab.$t$, false, 3),
    (v_q, $t$Die Aufklärung idealisierte die Natur, die Romantik verachtete sie.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet im Text der Begriff des "Erhabenen" in Bezug auf die Natur?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Ein rein ästhetisches Vergnügen ohne jede Bedrohung.$t$, false, 1),
    (v_q, $t$Ein Gefühl, das aus der Konfrontation mit einer den Menschen übersteigenden, zugleich anziehenden Macht entsteht.$t$, true, 2),
    (v_q, $t$Eine wissenschaftliche Kategorie zur Klassifizierung von Landschaften.$t$, false, 3),
    (v_q, $t$Ein Synonym für gewöhnliche Schönheit.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Inwiefern verkörpert die Figur der Loreley laut Text die romantische Ambivalenz von Schönheit und Gefahr besser als die bloße Flusslandschaft?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Weil sie als menschliche, weibliche Gestalt die tödliche Wirkung untrennbar mit persönlicher Anziehungskraft verbindet, statt Gefahr abstrakt zu lassen.$t$, true, 1),
    (v_q, $t$Weil sie historisch belegt ist und dadurch glaubwürdiger wirkt.$t$, false, 2),
    (v_q, $t$Weil sie in der Sage stets gerettet wird und so ein Happy End bietet.$t$, false, 3),
    (v_q, $t$Weil sie keinerlei Bezug zur Gefährlichkeit des Flusses hat.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Womit beginnt Heines berühmtes Gedicht laut Text?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Mit einer Beschreibung des Rheins bei Sonnenuntergang.$t$, false, 1),
    (v_q, $t$Mit der Aussage, er wisse nicht, was es bedeuten solle, dass er so traurig sei.$t$, true, 2),
    (v_q, $t$Mit einer direkten Warnung an die Schiffer.$t$, false, 3),
    (v_q, $t$Mit einer Anrufung der Götter.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche zusätzliche Ebene fügt Heines Gedicht dem Mythos laut Text hinzu?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Eine rein komische Umdeutung der Sage.$t$, false, 1),
    (v_q, $t$Die Ohnmacht des reflektierenden Subjekts gegenüber einer durchschauten, aber dennoch wirksamen Verführung.$t$, true, 2),
    (v_q, $t$Eine historische Datierung der Ereignisse.$t$, false, 3),
    (v_q, $t$Eine Kritik an der Schifffahrt auf dem Rhein.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche generationenübergreifende Deutung des Mythos schlägt der Text abschließend vor?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Dass der Mythos nur für das neunzehnte Jahrhundert Gültigkeit besaß.$t$, false, 1),
    (v_q, $t$Dass jede Generation die Erfahrung wiederholt, sich wissend und dennoch willig einer Anziehungskraft auszusetzen, die zugleich Gefahr bedeutet.$t$, true, 2),
    (v_q, $t$Dass der Mythos ausschließlich vor der Schifffahrt auf dem Rhein warnen sollte.$t$, false, 3),
    (v_q, $t$Dass die Loreley eine reine Warnung vor Frauen im Allgemeinen darstellt.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet „die Verführung“?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$das Verlocken, jemanden zu etwas Gefährlichem oder Verbotenem bewegen$t$, true, 1),
    (v_q, $t$die Ablehnung$t$, false, 2),
    (v_q, $t$die Warnung$t$, false, 3),
    (v_q, $t$die Bestrafung$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welches Wort ist ein Synonym für „Verführung“ im Kontext des Textes?$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$die Verlockung$t$, true, 1),
    (v_q, $t$die Zurückweisung$t$, false, 2),
    (v_q, $t$die Ermahnung$t$, false, 3),
    (v_q, $t$die Gleichgültigkeit$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Umschreibung trifft die Bedeutungsnuance von „Verführung“ am genauesten, wie sie im Zusammenhang mit dem modernen Subjekt beschrieben wird?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$ein Reiz, dem man trotz bewusster Erkenntnis seiner Gefahr dennoch nachgibt$t$, true, 1),
    (v_q, $t$ein Reiz, der objektiv völlig ungefährlich ist$t$, false, 2),
    (v_q, $t$eine Handlung, die ausschließlich unbewusst und unfreiwillig geschieht$t$, false, 3),
    (v_q, $t$eine Warnung, die jede Gefahr wirksam abwendet$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Complétez l'attribut participial (Partizip II) : 'die Schiffer, von ihrer Stimme ___, lenken ihr Boot gegen das Gestein.'$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$betört$t$, true, 1),
    (v_q, $t$betörend$t$, false, 2),
    (v_q, $t$betören$t$, false, 3),
    (v_q, $t$betörte$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Transformez la proposition relative en attribut participial : 'die Schiffer, die von ihrer Stimme betört wurden' → 'die ___ Schiffer'$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$von ihrer Stimme betörten$t$, true, 1),
    (v_q, $t$von ihrer Stimme betörenden$t$, false, 2),
    (v_q, $t$von ihrer Stimme betörende$t$, false, 3),
    (v_q, $t$von ihrer Stimme betören$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Quelle serait la forme correcte à l'irréel du présent (Konjunktiv II) : 'Wenn die Schiffer nicht betört ___, würden sie ihr Boot nicht gegen das Gestein lenken.'$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$würden$t$, true, 1),
    (v_q, $t$werden$t$, false, 2),
    (v_q, $t$sind$t$, false, 3),
    (v_q, $t$wurden$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$En vous appuyant sur « Der Gesang auf dem Felsen », rédigez en allemand un paragraphe de 8 à 12 phrases sur le thème : pourquoi les mythes romantiques associant beauté et danger fascinent-ils encore aujourd'hui ? Utilisez au moins un attribut participial.$t$, 1, 'normal', 'production', $t$In 'Der Gesang auf dem Felsen' wird der Mythos der Loreley als Ausdruck einer typisch romantischen Vorstellung gedeutet, nach der Schönheit und Gefahr keine Gegensätze, sondern zwei Seiten derselben Erfahrung darstellen. Die von ihrer Stimme betörten Schiffer, die ihr Boot gegen das Gestein lenken, verkörpern dabei eine Faszination, die trotz erkannter Gefahr nicht widerstanden werden kann. Diese Verbindung von Schönheit und Untergang halte ich für ein zeitloses Motiv, das bis heute in Literatur, Film und Popkultur nachwirkt. Meiner Meinung nach liegt die anhaltende Faszination solcher Mythen darin begründet, dass sie eine grundlegende menschliche Erfahrung widerspiegeln: das Wissen um eine Gefahr, dem dennoch die Anziehungskraft nicht gemindert wird. Anders als die nüchterne, rationale Weltsicht der Aufklärung eröffnet die Romantik einen Zugang zum Erhabenen, jener überwältigenden Erfahrung, die den Menschen sowohl bedroht als auch in ihren Bann zieht. Heinrich Heines berühmtes Gedicht fügt dieser Ambivalenz zudem eine reflexive Ebene hinzu, indem das lyrische Ich seine eigene Verführbarkeit erkennt und dennoch nicht widerstehen kann. Diese Selbsterkenntnis bei gleichzeitiger Unfähigkeit zum Widerstand erscheint mir besonders modern, da sie menschliche Schwäche nicht verurteilt, sondern als Teil der menschlichen Erfahrung akzeptiert. Solche Mythen bleiben relevant, weil sie universelle Spannungsfelder zwischen Vernunft und Begehren, Sicherheit und Risiko, immer wieder neu zur Sprache bringen.$t$);

END $block$;

-- 15. Was aus den Trümmern entstand
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary) VALUES (
    'C1',
    $t$Was aus den Trümmern entstand$t$,
    $t$Als ich im Frühjahr 1947 zum ersten Mal durch die Hallen jenes Werkes ging, das später zu einem der bekanntesten Namen der deutschen Industrie werden sollte, war von den glänzenden Fließbändern, die man heute damit verbindet, nichts zu sehen. Die Dächer waren von Bomben durchlöchert, Maschinen lagen zerstört oder waren als Reparationsgut demontiert worden, und zwischen den Trümmern arbeiteten Männer, deren Gesichter von Hunger und Erschöpfung gezeichnet waren. Ich war jung, gerade aus britischer Kriegsgefangenschaft entlassen, und man bot mir eine Stelle als Ingenieur an, weil kaum jemand übrig war, der die technischen Zeichnungen noch lesen konnte. Was mich damals antrieb, war zunächst schlicht die Notwendigkeit, zu überleben, ein Volk zu ernähren, das keine Zukunft zu haben schien. Erst später, im Rückblick eines langen Lebens, begreife ich, wie sehr diese Arbeit auch eine Auseinandersetzung mit Schuld war, ohne dass wir sie damals so genannt hätten. Wir bauten wieder auf, was unter einem Regime entstanden war, das Zwangsarbeiter ausgebeutet und Menschen in den Tod getrieben hatte, und wir taten dies, ohne die notwendigen Fragen zu stellen, weil das Überleben aller Kraft verschlang. Die britischen Offiziere, die das Werk zunächst verwalteten, sprachen von einem Neuanfang, von einer Chance für Deutschland, sich durch ehrliche Arbeit zu rehabilitieren, und ich habe lange geglaubt, dass dies möglich sei, dass ein Auto, das rollt, gewissermaßen auch eine Nation wieder ins Rollen bringen könne. Heute, mit dem Abstand von Jahrzehnten, sehe ich die Dinge komplizierter. Der wirtschaftliche Wiederaufbau war real, er gab Millionen Menschen Arbeit und Würde zurück, aber er verlief parallel zu einem oft zu raschen Verdrängen der eigenen Vergangenheit. Wir sprachen über Stückzahlen, Materialengpässe, technische Verbesserungen, aber selten über die, die unter den vorherigen Besitzern des Werkes gelitten hatten. Erst als jüngere Kollegen in den siebziger Jahren begannen, die Archive zu öffnen und die Geschichte des Werkes schonungslos aufzuarbeiten, verstand ich, dass echter Neuanfang nicht im Verdrängen liegen kann, sondern nur darin, die eigene Geschichte, so schwer sie wiegt, in die Zukunft mitzunehmen.$t$,
    $t$Lorsque, au printemps 1947, je traversai pour la première fois les halles de cette usine qui allait plus tard devenir l'un des noms les plus connus de l'industrie allemande, il n'y avait rien à voir des chaînes de montage brillantes que l'on y associe aujourd'hui. Les toits étaient percés par les bombes, des machines gisaient détruites ou avaient été démontées comme biens de réparation, et entre les décombres travaillaient des hommes dont les visages portaient les marques de la faim et de l'épuisement. J'étais jeune, tout juste libéré de la captivité britannique, et on m'offrit un poste d'ingénieur parce qu'il ne restait presque personne capable de lire encore les plans techniques. Ce qui me poussait alors, c'était d'abord tout simplement la nécessité de survivre, de nourrir un peuple qui semblait n'avoir aucun avenir. Ce n'est que plus tard, avec le recul d'une longue vie, que je comprends à quel point ce travail était aussi une confrontation avec la culpabilité, sans que nous l'ayons alors nommée ainsi. Nous reconstruisions ce qui était né sous un régime qui avait exploité des travailleurs forcés et conduit des gens à la mort, et nous le faisions sans poser les questions nécessaires, parce que la survie absorbait toute notre énergie. Les officiers britanniques qui administraient d'abord l'usine parlaient d'un nouveau départ, d'une chance pour l'Allemagne de se réhabiliter par un travail honnête, et j'ai longtemps cru que cela était possible, qu'une voiture qui roule pouvait, en quelque sorte, remettre aussi une nation en marche. Aujourd'hui, avec le recul des décennies, je vois les choses de façon plus compliquée. La reconstruction économique était réelle, elle a rendu à des millions de personnes travail et dignité, mais elle s'est déroulée parallèlement à un refoulement souvent trop rapide de son propre passé. Nous parlions de chiffres de production, de pénuries de matériaux, d'améliorations techniques, mais rarement de ceux qui avaient souffert sous les précédents propriétaires de l'usine. Ce n'est que lorsque, dans les années soixante-dix, des collègues plus jeunes commencèrent à ouvrir les archives et à traiter sans complaisance l'histoire de l'usine que j'ai compris qu'un véritable nouveau départ ne peut résider dans le refoulement, mais seulement dans le fait d'emporter avec soi vers l'avenir sa propre histoire, aussi lourde soit-elle.$t$,
    $t${"1947":"1947","Als":"lorsque","ich":"je","im":"au","Frühjahr":"printemps","zum":"pour la","ersten":"première","Mal":"fois","durch":"à travers","die":"les","Hallen":"halles","jenes":"de cette","Werkes":"usine","ging":"traversai","das":"qui","später":"plus tard","zu":"en","einem":"un","der":"des","bekanntesten":"plus connus","Namen":"noms","deutschen":"allemande","Industrie":"industrie","werden":"devenir","sollte":"allait","war":"était","von":"des","den":"les","glänzenden":"brillantes","Fließbändern":"chaînes de montage","man":"on","heute":"aujourd'hui","damit":"y","verbindet":"associe","nichts":"rien","sehen":"voir","Die":"les","Dächer":"toits","waren":"étaient","Bomben":"bombes","durchlöchert":"percés","Maschinen":"machines","lagen":"gisaient","zerstört":"détruites","oder":"ou","als":"comme","Reparationsgut":"biens de réparation","demontiert":"démontées","worden":"été","und":"et","zwischen":"entre","Trümmern":"décombres","arbeiteten":"travaillaient","Männer":"hommes","deren":"dont","Gesichter":"visages","Hunger":"faim","Erschöpfung":"épuisement","gezeichnet":"marqués","Ich":"je","jung":"jeune","gerade":"tout juste","aus":"de","britischer":"britannique","Kriegsgefangenschaft":"captivité","entlassen":"libéré","bot":"offrit","mir":"me","eine":"un","Stelle":"poste","Ingenieur":"ingénieur","an":"offrit","weil":"parce que","kaum":"presque personne","jemand":"quelqu'un","übrig":"restait","technischen":"techniques","Zeichnungen":"plans","noch":"encore","lesen":"lire","konnte":"pouvait","Was":"ce qui","mich":"me","damals":"alors","antrieb":"poussait","zunächst":"d'abord","schlicht":"tout simplement","Notwendigkeit":"nécessité","überleben":"survivre","ein":"un","Volk":"peuple","ernähren":"nourrir","keine":"aucun","Zukunft":"avenir","haben":"avoir","schien":"semblait","Erst":"ce n'est que","Rückblick":"recul","eines":"d'une","langen":"longue","Lebens":"vie","begreife":"comprends","wie":"à quel point","sehr":"tellement","diese":"ce","Arbeit":"travail","auch":"aussi","Auseinandersetzung":"confrontation","mit":"avec","Schuld":"culpabilité","ohne":"sans","dass":"que","wir":"nous","sie":"l'","so":"ainsi","genannt":"nommée","hätten":"aurions","Wir":"nous","bauten":"reconstruisions","wieder":"à nouveau","auf":"reconstruisions","was":"ce qui","unter":"sous","Regime":"régime","entstanden":"né","Zwangsarbeiter":"travailleurs forcés","ausgebeutet":"exploité","Menschen":"gens","in":"à","Tod":"mort","getrieben":"conduit","hatte":"avait","taten":"faisions","dies":"cela","notwendigen":"nécessaires","Fragen":"questions","stellen":"poser","Überleben":"survie","aller":"toute","Kraft":"énergie","verschlang":"absorbait","britischen":"britanniques","Offiziere":"officiers","Werk":"usine","verwalteten":"administraient","sprachen":"parlaient","Neuanfang":"nouveau départ","einer":"une","Chance":"chance","für":"pour","Deutschland":"Allemagne","sich":"se","ehrliche":"honnête","rehabilitieren":"réhabiliter","habe":"ai","lange":"longtemps","geglaubt":"cru","möglich":"possible","sei":"était","Auto":"voiture","rollt":"roule","gewissermaßen":"en quelque sorte","Nation":"nation","ins":"en","Rollen":"marche","bringen":"remettre","könne":"pouvait","Heute":"aujourd'hui","dem":"le","Abstand":"recul","Jahrzehnten":"décennies","sehe":"vois","Dinge":"choses","komplizierter":"plus compliquée","Der":"la","wirtschaftliche":"économique","Wiederaufbau":"reconstruction","real":"réelle","er":"elle","gab":"a rendu","Millionen":"millions","Würde":"dignité","zurück":"rendu","aber":"mais","verlief":"s'est déroulée","parallel":"parallèlement","oft":"souvent","raschen":"rapide","Verdrängen":"refoulement","eigenen":"propre","Vergangenheit":"passé","über":"de","Stückzahlen":"chiffres de production","Materialengpässe":"pénuries de matériaux","technische":"techniques","Verbesserungen":"améliorations","selten":"rarement","vorherigen":"précédents","Besitzern":"propriétaires","des":"de l'","gelitten":"souffert","hatten":"avaient","jüngere":"plus jeunes","Kollegen":"collègues","siebziger":"soixante-dix","Jahren":"années","begannen":"commencèrent","Archive":"archives","öffnen":"ouvrir","Geschichte":"histoire","schonungslos":"sans complaisance","aufzuarbeiten":"traiter","verstand":"ai compris","echter":"véritable","nicht":"ne pas","liegen":"résider","kann":"peut","sondern":"mais","nur":"seulement","darin":"en cela","eigene":"propre","schwer":"lourde","wiegt":"pèse","mitzunehmen":"emporter avec soi"}$t$::jsonb
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$In welchem Zustand befand sich das Werk, als der Erzähler dort ankam?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Es war vollständig intakt und produktionsbereit.$t$, false, 1),
    (v_q, $t$Es war stark zerstört, Dächer durchlöchert, Maschinen demontiert oder zerstört.$t$, true, 2),
    (v_q, $t$Es war neu erbaut worden.$t$, false, 3),
    (v_q, $t$Es wurde gerade offiziell eröffnet.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum erhielt der Erzähler damals die Stelle als Ingenieur?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Weil er beste Beziehungen zur Werksleitung hatte.$t$, false, 1),
    (v_q, $t$Weil kaum noch jemand übrig war, der die technischen Zeichnungen lesen konnte.$t$, true, 2),
    (v_q, $t$Weil er zuvor bereits dort gearbeitet hatte.$t$, false, 3),
    (v_q, $t$Weil er ein Studium im Ausland abgeschlossen hatte.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was verrät die Beschreibung der Ankunftsszene über die Motivation des Erzählers zu jener Zeit?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er handelte primär aus einem tiefen politischen Idealismus.$t$, false, 1),
    (v_q, $t$Sein Handeln war zunächst von blanker Überlebensnotwendigkeit geprägt, nicht von reflektierter historischer Verantwortung.$t$, true, 2),
    (v_q, $t$Er war von Anfang an vor allem an persönlichem Reichtum interessiert.$t$, false, 3),
    (v_q, $t$Er wollte in erster Linie internationale Anerkennung als Ingenieur erlangen.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was hatten die britischen Offiziere laut Text mit dem Wiederaufbau verbunden?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Die Hoffnung auf einen Neuanfang und eine Rehabilitierung Deutschlands durch ehrliche Arbeit.$t$, true, 1),
    (v_q, $t$Den Plan, das Werk vollständig stillzulegen.$t$, false, 2),
    (v_q, $t$Die Absicht, das Werk nach Großbritannien zu verlegen.$t$, false, 3),
    (v_q, $t$Die Forderung nach sofortiger Bezahlung von Reparationen in Gold.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was meint der Erzähler, wenn er sagt, sie hätten "nicht die notwendigen Fragen" gestellt?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie hätten technische Fragen zur Produktion vernachlässigt.$t$, false, 1),
    (v_q, $t$Sie hätten die Auseinandersetzung mit der Ausbeutung von Zwangsarbeitern unter dem vorherigen Regime nicht geführt.$t$, true, 2),
    (v_q, $t$Sie hätten sich nicht ausreichend um Exportmärkte gekümmert.$t$, false, 3),
    (v_q, $t$Sie hätten die britische Besatzungsmacht nicht kritisch hinterfragt.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie bewertet der Erzähler rückblickend das Verhältnis von wirtschaftlichem Wiederaufbau und moralischer Aufarbeitung?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er sieht beide als völlig unabhängige, sich nicht berührende Prozesse.$t$, false, 1),
    (v_q, $t$Er erkennt, dass der reale wirtschaftliche Erfolg oft parallel zu einem zu raschen Verdrängen der Vergangenheit verlief.$t$, true, 2),
    (v_q, $t$Er behauptet, wirtschaftlicher Erfolg habe die moralische Aufarbeitung automatisch mit sich gebracht.$t$, false, 3),
    (v_q, $t$Er lehnt jede Verbindung zwischen Wirtschaft und Erinnerungskultur grundsätzlich ab.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was geschah in den siebziger Jahren laut Text?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Das Werk wurde geschlossen.$t$, false, 1),
    (v_q, $t$Jüngere Kollegen begannen, die Archive zu öffnen und die Geschichte des Werkes aufzuarbeiten.$t$, true, 2),
    (v_q, $t$Der Erzähler ging in den Ruhestand.$t$, false, 3),
    (v_q, $t$Es kam zu einem großen Streik der Belegschaft.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Zu welcher Einsicht gelangt der Erzähler am Ende des Textes?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Dass echter Neuanfang nur im vollständigen Vergessen der Vergangenheit liegen kann.$t$, false, 1),
    (v_q, $t$Dass echter Neuanfang nur darin liegen kann, die eigene, schwere Geschichte in die Zukunft mitzunehmen statt sie zu verdrängen.$t$, true, 2),
    (v_q, $t$Dass die Vergangenheit für die Zukunft irrelevant ist.$t$, false, 3),
    (v_q, $t$Dass nur jüngere Generationen zur Aufarbeitung fähig sind.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche zentrale Spannung durchzieht die gesamte Reflexion des Erzählers über sein berufliches Lebenswerk?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Die Spannung zwischen technischer Innovation und Umweltschutz.$t$, false, 1),
    (v_q, $t$Die Spannung zwischen dem legitimen Wert wirtschaftlichen Wiederaufbaus und der moralischen Notwendigkeit, die eigene historische Schuld nicht zu verdrängen.$t$, true, 2),
    (v_q, $t$Die Spannung zwischen deutscher und britischer Ingenieurskunst.$t$, false, 3),
    (v_q, $t$Die Spannung zwischen Handarbeit und Automatisierung in der Fertigung.$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet „die Verdrängung“ (verdrängen) im Kontext „das Verdrängen der eigenen Vergangenheit“?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$das bewusste oder unbewusste Nicht-Wahrhaben-Wollen von etwas Unangenehmem$t$, true, 1),
    (v_q, $t$die aktive Aufarbeitung von etwas$t$, false, 2),
    (v_q, $t$die Erinnerung an etwas$t$, false, 3),
    (v_q, $t$das öffentliche Eingeständnis von etwas$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welches Wort ist ein Synonym für „Verdrängung“ im Kontext des Textes?$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$das Verleugnen$t$, true, 1),
    (v_q, $t$das Eingestehen$t$, false, 2),
    (v_q, $t$die Aufarbeitung$t$, false, 3),
    (v_q, $t$die Anerkennung$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Umschreibung trifft die Bedeutungsnuance von „Verdrängung“ am genauesten, wie sie im Text auf die Nachkriegszeit bezogen wird?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$das Vermeiden, sich mit einer belastenden Vergangenheit aktiv auseinanderzusetzen, um handlungsfähig zu bleiben$t$, true, 1),
    (v_q, $t$das systematische und öffentliche Aufarbeiten historischer Schuld$t$, false, 2),
    (v_q, $t$eine gesetzlich verordnete Form der Erinnerung$t$, false, 3),
    (v_q, $t$ein vollständiges Vergessen ohne jede spätere Konsequenz$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Complétez au passif plus-que-parfait (Plusquamperfekt Passiv) : 'Maschinen ___ als Reparationsgut demontiert worden.'$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$waren$t$, true, 1),
    (v_q, $t$hatten$t$, false, 2),
    (v_q, $t$wurden$t$, false, 3),
    (v_q, $t$sind$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Identifiez le temps et la voix corrects de : 'Maschinen ... waren als Reparationsgut demontiert worden.'$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Plusquamperfekt Passiv$t$, true, 1),
    (v_q, $t$Perfekt Aktiv$t$, false, 2),
    (v_q, $t$Präteritum Passiv$t$, false, 3),
    (v_q, $t$Futur I$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Transformez à la voix active (Plusquamperfekt) : 'Maschinen waren als Reparationsgut demontiert worden.' → aktiv : 'Man ___ die Maschinen als Reparationsgut demontiert.'$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$hatte$t$, true, 1),
    (v_q, $t$hat$t$, false, 2),
    (v_q, $t$war$t$, false, 3),
    (v_q, $t$wurde$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$En vous appuyant sur « Was aus den Trümmern entstand », rédigez en allemand un paragraphe de 8 à 12 phrases sur le thème : est-il possible de reconstruire économiquement une société sans affronter immédiatement son passé moralement chargé ? Utilisez au moins une phrase au passif.$t$, 1, 'normal', 'production', $t$In 'Was aus den Trümmern entstand' schildert ein ehemaliger Ingenieur den Wiederaufbau eines deutschen Industriewerks nach 1945, dessen Maschinen zuvor zerstört oder als Reparationsgut demontiert worden waren. Er berichtet, wie der wirtschaftliche Wiederaufbau zunächst vor allem dem nackten Überleben diente, während die moralische Auseinandersetzung mit der eigenen Vergangenheit lange Zeit im Hintergrund blieb. Diese Beobachtung wirft meiner Meinung nach eine wichtige gesellschaftliche Frage auf: Kann wirtschaftlicher Wiederaufbau gleichzeitig mit moralischer Aufarbeitung erfolgen, oder verdrängt das eine notwendigerweise das andere? Der Text legt nahe, dass unmittelbar nach einer Katastrophe häufig zunächst das physische Überleben im Vordergrund steht, wodurch eine vollständige moralische Auseinandersetzung praktisch kaum möglich erscheint. Dennoch zeigt die Geschichte auch, dass ein zu langes Aufschieben dieser Auseinandersetzung problematisch ist, da Verdrängung selten spurlos bleibt und irgendwann nachgeholt werden muss. Erst als jüngere Kollegen Jahrzehnte später begannen, die Archive des Werkes zu öffnen, wurde die Geschichte der Zwangsarbeit dort schonungslos aufgearbeitet. Ich halte diesen späten, aber konsequenten Schritt für unverzichtbar, da echte gesellschaftliche Erneuerung ohne ehrliche Auseinandersetzung mit der eigenen Vergangenheit langfristig nicht gelingen kann. Gleichzeitig sollte man den unmittelbaren Nachkriegsakteuren nicht pauschal Vorwürfe machen, da ihre Handlungsspielräume unter den damaligen existenziellen Bedingungen erheblich eingeschränkt waren. Die Geschichte des Werkes zeigt letztlich, dass wirtschaftlicher Wiederaufbau und moralische Aufarbeitung keine gleichzeitigen, aber notwendigerweise aufeinanderfolgende Prozesse sein können, wenn eine Gesellschaft dauerhaft aus ihrer Vergangenheit lernen will.$t$);

END $block$;

-- 16. Die Sprache, die er schuf
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary) VALUES (
    'C1',
    $t$Die Sprache, die er schuf$t$,
    $t$Als ich vor Jahren zum ersten Mal die Wartburg besuchte, stand ich lange vor jenem schmalen Zimmer, in dem ein Mönch, geächtet und unter falschem Namen versteckt, binnen weniger Monate ein Buch übersetzte, das die deutsche Sprache für immer verändern sollte. Ich bin Sprachwissenschaftlerin, keine Theologin, und doch lässt mich diese Geschichte nicht los, weil sie zeigt, wie eng Glaube und Grammatik miteinander verwoben sein können.

Luther stand vor einer Aufgabe, die weit über das bloße Übersetzen hinausging. Es gab kein einheitliches Deutsch, sondern ein Flickwerk aus Dialekten, das von Region zu Region kaum verständlich war. Er musste also nicht nur ein fremdes Wort in ein deutsches verwandeln, sondern eine Sprache erst erschaffen, die alle verstehen konnten – Bauern ebenso wie Fürsten. Sein Ansatz war denkbar einfach und zugleich revolutionär: Er hörte den Menschen beim Sprechen zu, auf dem Markt, in der Küche, und schrieb, wie das Volk dachte, nicht wie die Gelehrten es forderten.

Was mich als Linguistin fasziniert, ist die Wirkung, die weit über den religiösen Zweck hinausreichte. Durch den Buchdruck verbreitete sich diese neue Schriftsprache in einem Tempo, das vorher undenkbar gewesen wäre, und sie wurde zur Grundlage dessen, was wir heute Hochdeutsch nennen. Eine Übersetzung, geboren aus theologischer Notwendigkeit, wurde so zum Fundament einer nationalen Identität, die sich erst Jahrhunderte später politisch formen sollte.

Manchmal frage ich mich, ob Luther selbst geahnt hat, welche Tragweite sein Werk haben würde. Vermutlich nicht. Er wollte, dass jeder Mensch die heiligen Texte selbst lesen konnte, ohne den Umweg über einen Priester. Dass daraus ein sprachliches Fundament für ein ganzes Volk erwuchs, war wohl ein Nebeneffekt seines eigentlichen Anliegens. Wenn ich heute mit Studierenden über Sprachwandel spreche, kehre ich immer wieder zu diesem einsamen Zimmer auf der Wartburg zurück – als Beweis dafür, dass Sprache nie nur Werkzeug ist, sondern immer auch Akt der Befreiung.$t$,
    $t$Lorsque je visitai la Wartburg pour la première fois, il y a des années, je restai longtemps devant cette petite pièce où un moine, mis au ban et caché sous un faux nom, traduisit en quelques mois seulement un livre qui allait changer à jamais la langue allemande. Je suis linguiste, pas théologienne, et pourtant cette histoire ne me lâche pas, parce qu'elle montre à quel point la foi et la grammaire peuvent être étroitement entrelacées.

Luther se trouvait devant une tâche qui dépassait de loin la simple traduction. Il n'existait pas d'allemand unifié, mais un patchwork de dialectes, à peine compréhensible d'une région à l'autre. Il devait donc non seulement transformer un mot étranger en mot allemand, mais bien créer d'abord une langue que tous pourraient comprendre – les paysans comme les princes. Sa démarche était d'une simplicité déconcertante et en même temps révolutionnaire : il écoutait les gens parler, sur le marché, dans la cuisine, et écrivait comme le peuple pensait, non comme l'exigeaient les savants.

Ce qui me fascine comme linguiste, c'est l'effet qui dépassait largement le but religieux. Grâce à l'imprimerie, cette nouvelle langue écrite se répandit à une vitesse auparavant impensable, et elle devint le fondement de ce que nous appelons aujourd'hui le haut-allemand. Une traduction, née d'une nécessité théologique, devint ainsi le fondement d'une identité nationale qui ne devait se former politiquement que des siècles plus tard.

Je me demande parfois si Luther lui-même avait pressenti la portée que son œuvre aurait. Probablement pas. Il voulait que chaque être humain puisse lire lui-même les textes sacrés, sans le détour par un prêtre. Que naisse de là un fondement linguistique pour tout un peuple était sans doute un effet secondaire de son véritable propos. Quand je parle aujourd'hui avec des étudiants du changement linguistique, je reviens toujours à cette pièce solitaire de la Wartburg – comme preuve que le langage n'est jamais seulement un outil, mais toujours aussi un acte de libération.$t$,
    $t${"Als":"lorsque","ich":"je","vor":"il y a","Jahren":"des années","zum":"pour la","ersten":"première","Mal":"fois","die":"la","Wartburg":"Wartburg","besuchte":"visitai","stand":"restai","lange":"longtemps","jenem":"cette","schmalen":"petite","Zimmer":"pièce","in":"dans","dem":"laquelle","ein":"un","Mönch":"moine","geächtet":"mis au ban","und":"et","unter":"sous","falschem":"faux","Namen":"nom","versteckt":"caché","binnen":"en l'espace de","weniger":"quelques","Monate":"mois","Buch":"livre","übersetzte":"traduisit","das":"qui","deutsche":"allemande","Sprache":"langue","für":"pour","immer":"toujours","verändern":"changer","sollte":"allait","Ich":"je","bin":"suis","Sprachwissenschaftlerin":"linguiste","keine":"pas","Theologin":"théologienne","doch":"et pourtant","lässt":"lâche","mich":"me","diese":"cette","Geschichte":"histoire","nicht":"ne pas","los":"lâcher","weil":"parce que","sie":"elle","zeigt":"montre","wie":"à quel point","eng":"étroitement","Glaube":"foi","Grammatik":"grammaire","miteinander":"entre elles","verwoben":"entrelacées","sein":"être","können":"peuvent","Luther":"Luther","einer":"à une","Aufgabe":"tâche","weit":"loin","über":"au-delà","bloße":"simple","Übersetzen":"traduction","hinausging":"dépassait","Es":"il","gab":"existait","kein":"pas d'","einheitliches":"unifié","Deutsch":"allemand","sondern":"mais","Flickwerk":"patchwork","aus":"de","Dialekten":"dialectes","von":"d'","Region":"région","zu":"à","kaum":"à peine","verständlich":"compréhensible","war":"était","Er":"il","musste":"devait","also":"donc","nur":"seulement","fremdes":"étranger","Wort":"mot","deutsches":"allemand","verwandeln":"transformer","eine":"une","erst":"d'abord","erschaffen":"créer","alle":"tous","verstehen":"comprendre","konnten":"pouvaient","Bauern":"paysans","ebenso":"autant","Fürsten":"princes","Sein":"sa","Ansatz":"démarche","denkbar":"d'une simplicité","einfach":"simple","zugleich":"en même temps","revolutionär":"révolutionnaire","hörte":"écoutait","den":"les","Menschen":"gens","beim":"en train de","Sprechen":"parler","auf":"sur","Markt":"marché","der":"la","Küche":"cuisine","schrieb":"écrivait","Volk":"peuple","dachte":"pensait","Gelehrten":"savants","es":"le","forderten":"exigeaient","Was":"ce qui","als":"comme","Linguistin":"linguiste","fasziniert":"fascine","ist":"est","Wirkung":"effet","religiösen":"religieux","Zweck":"but","hinausreichte":"dépassait","Durch":"grâce à","Buchdruck":"imprimerie","verbreitete":"répandit","sich":"se","neue":"nouvelle","Schriftsprache":"langue écrite","einem":"à une","Tempo":"vitesse","vorher":"auparavant","undenkbar":"impensable","gewesen":"été","wäre":"aurait été","wurde":"devint","zur":"au","Grundlage":"fondement","dessen":"de ce que","was":"que","wir":"nous","heute":"aujourd'hui","Hochdeutsch":"haut-allemand","nennen":"appelons","Eine":"une","Übersetzung":"traduction","geboren":"née","theologischer":"théologique","Notwendigkeit":"nécessité","so":"ainsi","Fundament":"fondement","nationalen":"nationale","Identität":"identité","Jahrhunderte":"des siècles","später":"plus tard","politisch":"politiquement","formen":"se former","Manchmal":"parfois","frage":"me demande","ob":"si","selbst":"lui-même","geahnt":"pressenti","hat":"avait","welche":"quelle","Tragweite":"portée","Werk":"œuvre","haben":"aurait","würde":"allait","Vermutlich":"probablement","wollte":"voulait","dass":"que","jeder":"chaque","Mensch":"être humain","heiligen":"sacrés","Texte":"textes","lesen":"lire","konnte":"puisse","ohne":"sans","Umweg":"détour","einen":"un","Priester":"prêtre","Dass":"que","daraus":"de là","sprachliches":"linguistique","ganzes":"tout un","erwuchs":"naisse","wohl":"sans doute","Nebeneffekt":"effet secondaire","seines":"de son","eigentlichen":"véritable","Anliegens":"propos","Wenn":"quand","mit":"avec","Studierenden":"étudiants","Sprachwandel":"changement linguistique","spreche":"parle","kehre":"reviens","wieder":"toujours","diesem":"à cette","einsamen":"solitaire","zurück":"reviens","Beweis":"preuve","dafür":"de cela","nie":"jamais","Werkzeug":"outil","auch":"aussi","Akt":"acte","Befreiung":"libération"}$t$::jsonb
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum musste Luther eine neue Schriftsprache schaffen?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Weil es kein einheitliches Deutsch gab, sondern viele Dialekte$t$, true, 1),
    (v_q, $t$Weil er kein Latein konnte$t$, false, 2),
    (v_q, $t$Weil ihm die Kirche das befohlen hatte$t$, false, 3),
    (v_q, $t$Weil er ein neues Alphabet erfinden wollte$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Worin bestand die eigentliche Herausforderung von Luthers Übersetzungsarbeit?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er musste eine Sprache schaffen, die für alle Menschen verständlich war$t$, true, 1),
    (v_q, $t$Er musste das Buch heimlich drucken lassen$t$, false, 2),
    (v_q, $t$Er musste die Bibel ins Lateinische übersetzen$t$, false, 3),
    (v_q, $t$Er musste die Zustimmung des Papstes einholen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Deutung von Luthers Vorgehen legt der Text nahe?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er orientierte sich bewusst an der gesprochenen Alltagssprache statt an der Gelehrtensprache$t$, true, 1),
    (v_q, $t$Er hielt sich strikt an die lateinische Wortstellung$t$, false, 2),
    (v_q, $t$Er verfasste den Text zunächst für eine akademische Elite$t$, false, 3),
    (v_q, $t$Er übernahm die Sprache der Fürstenhöfe unverändert$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was geschah mit Luthers Übersetzung durch den Buchdruck?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie verbreitete sich sehr schnell im ganzen Land$t$, true, 1),
    (v_q, $t$Sie wurde verboten$t$, false, 2),
    (v_q, $t$Sie blieb nur wenigen Gelehrten bekannt$t$, false, 3),
    (v_q, $t$Sie wurde nie gedruckt$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Rolle spielte der Buchdruck laut der Erzählerin?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er ermöglichte eine ungewöhnlich schnelle Verbreitung der neuen Schriftsprache$t$, true, 1),
    (v_q, $t$Er verhinderte, dass die Übersetzung bekannt wurde$t$, false, 2),
    (v_q, $t$Er war für die Übersetzung selbst nicht relevant$t$, false, 3),
    (v_q, $t$Er machte die Übersetzung teurer und exklusiver$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie verknüpft der Text Buchdruck, Sprache und Identität?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Die durch den Druck verbreitete Schriftsprache wurde später zur Grundlage einer nationalen Identität$t$, true, 1),
    (v_q, $t$Der Buchdruck schwächte die religiöse Wirkung des Textes$t$, false, 2),
    (v_q, $t$Die nationale Identität entstand unabhängig von Luthers Werk$t$, false, 3),
    (v_q, $t$Der Buchdruck diente vor allem der Verbreitung lateinischer Texte$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was wollte Luther laut der Erzählerin vor allem erreichen?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Dass jeder Mensch die heiligen Texte selbst lesen kann$t$, true, 1),
    (v_q, $t$Dass er selbst berühmt wird$t$, false, 2),
    (v_q, $t$Dass die Fürsten mehr Macht bekommen$t$, false, 3),
    (v_q, $t$Dass Latein die einzige Kirchensprache bleibt$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie bewertet die Erzählerin die weitreichende sprachliche Wirkung von Luthers Werk?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Als vermutlich unbeabsichtigten Nebeneffekt seines eigentlichen religiösen Anliegens$t$, true, 1),
    (v_q, $t$Als von Anfang an geplantes politisches Projekt$t$, false, 2),
    (v_q, $t$Als Zufall ohne jede Bedeutung$t$, false, 3),
    (v_q, $t$Als Ergebnis einer Anordnung der Kirche$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche abschließende These vertritt die Erzählerin über Sprache?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sprache ist nie nur Werkzeug, sondern kann auch ein Akt der Befreiung sein$t$, true, 1),
    (v_q, $t$Sprache verändert sich nur durch politische Entscheidungen$t$, false, 2),
    (v_q, $t$Sprache bleibt unabhängig von gesellschaftlichen Umbrüchen stabil$t$, false, 3),
    (v_q, $t$Sprache dient in erster Linie der Abgrenzung sozialer Klassen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'die Tragweite' (eines Werks)?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$die Bedeutung und die weitreichenden Folgen$t$, true, 1),
    (v_q, $t$die Lautstärke$t$, false, 2),
    (v_q, $t$die Farbe des Papiers$t$, false, 3),
    (v_q, $t$die Länge eines Textes$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$'Ob Luther selbst geahnt hat, welche Tragweite sein Werk haben würde' – welches Wort passt als Ersatz für 'Tragweite'?$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Reichweite und Bedeutsamkeit$t$, true, 1),
    (v_q, $t$Geschwindigkeit$t$, false, 2),
    (v_q, $t$Kürze$t$, false, 3),
    (v_q, $t$Beliebtheit$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$In welchem Satz wird 'Tragweite' korrekt im Sinn des Textes verwendet?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Niemand konnte die Tragweite dieser Entscheidung für die kommenden Jahrhunderte absehen$t$, true, 1),
    (v_q, $t$Die Tragweite des Zimmers betrug nur wenige Quadratmeter$t$, false, 2),
    (v_q, $t$Er sprach mit auffälliger Tragweite in der Stimme$t$, false, 3),
    (v_q, $t$Die Tragweite des Buches lag bei über tausend Seiten$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Ergänzen Sie die indirekte Rede: Sie sagte, Luther ___ nicht geahnt, welche Tragweite sein Werk haben werde. (Konjunktiv I, 'haben')$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$habe$t$, true, 1),
    (v_q, $t$hat$t$, false, 2),
    (v_q, $t$hätte gehabt$t$, false, 3),
    (v_q, $t$haben$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Formulieren Sie in indirekter Rede: 'Ich wollte, dass jeder Mensch die Texte selbst lesen kann', sagte Luther. → Luther sagte, er ___, dass jeder Mensch die Texte selbst lesen könne.$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$habe gewollt$t$, true, 1),
    (v_q, $t$wollte$t$, false, 2),
    (v_q, $t$hat gewollt$t$, false, 3),
    (v_q, $t$wolle$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welcher Satz gibt die Aussage 'Er wollte, dass jeder Mensch die Texte lesen kann' korrekt in der indirekten Rede (Konjunktiv I der Vergangenheit) wieder?$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er habe gewollt, dass jeder Mensch die Texte habe lesen können$t$, true, 1),
    (v_q, $t$Er wollte, dass jeder Mensch die Texte lesen konnte$t$, false, 2),
    (v_q, $t$Er will, dass jeder Mensch die Texte liest$t$, false, 3),
    (v_q, $t$Er hätte gewollt, dass jeder Mensch die Texte liest$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$Erörtern Sie in 8 bis 12 Sätzen, inwiefern eine Übersetzung mehr sein kann als eine sprachliche Übertragung – nehmen Sie dabei Bezug auf Luthers Bibelübersetzung als Beispiel für die Entstehung einer gemeinsamen Sprache und Identität.$t$, 1, 'normal', 'production', $t$Eine Übersetzung wird oft als rein technischer Vorgang verstanden, bei dem ein Text von einer Sprache in eine andere übertragen wird. Luthers Bibelübersetzung zeigt jedoch, dass eine Übersetzung weit mehr leisten kann als das. Da es zu seiner Zeit kein einheitliches Deutsch gab, musste Luther zunächst eine gemeinsame Sprachform schaffen, bevor er überhaupt übersetzen konnte. Diese Sprachform orientierte sich bewusst an der gesprochenen Alltagssprache, damit auch einfache Menschen den Text verstehen konnten. Dadurch wurde die Übersetzung zu einem Instrument sozialer Öffnung, das den exklusiven Zugang der Gelehrten zur Religion aufbrach. Gleichzeitig legte diese Schriftsprache durch die schnelle Verbreitung mittels Buchdruck den Grundstein für ein gemeinsames sprachliches Bewusstsein. Man kann daher sagen, dass Übersetzung hier zugleich Sprachschöpfung und Identitätsstiftung war. Diese Wirkung war wohl kaum vollständig beabsichtigt, sondern entstand als Nebeneffekt eines religiösen Anliegens. Dennoch zeigt das Beispiel, dass Sprache und Machtverhältnisse eng zusammenhängen, denn wer eine Sprache mitgestaltet, beeinflusst auch, wer am gesellschaftlichen Diskurs teilhaben kann. Insgesamt macht Luthers Werk deutlich, dass Übersetzungen historische Wendepunkte markieren können, weit über ihren ursprünglichen Zweck hinaus.$t$);

END $block$;

-- 17. Der Dom, der nie fertig wird
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary) VALUES (
    'C1',
    $t$Der Dom, der nie fertig wird$t$,
    $t$Ich arbeite seit über zwanzig Jahren in der Dombauhütte des Kölner Doms, und wenn Bekannte mich fragen, wann die Kathedrale endlich fertig wird, lache ich meist nur. Sie wird es nie sein. Das ist keine Klage, sondern die Grundbedingung meines Berufs, und mit den Jahren bin ich ihr dankbar geworden, statt sie zu bedauern.

Der Dom wurde im dreizehnten Jahrhundert begonnen und erst im neunzehnten vollendet, doch selbst diese Vollendung war eine Illusion. Der Sandstein, aus dem die Fassade besteht, zerfällt unter Regen, Frost und Abgasen schneller, als wir ihn ersetzen können. Während ich an einer Fiale arbeite, die vor hundertfünfzig Jahren gehauen wurde, weiß ich bereits, dass ein Nachfolger, den ich nie kennenlernen werde, in fünfzig Jahren an genau derselben Stelle wieder ansetzen muss. Wir bauen nicht für eine Vollendung, sondern für eine Kontinuität.

Am Anfang empfand ich das als bedrückend. Wozu die Mühe, wenn das Ergebnis ohnehin vergänglich ist? Erst mit der Zeit verstand ich, dass genau diese Vergänglichkeit den Sinn der Arbeit ausmacht. Jeder Stein, den ich behaue, ist Teil eines Gesprächs zwischen Generationen, die sich nie begegnen werden, verbunden nur durch das gemeinsame Werkzeug und die gemeinsame Geduld.

Manche Besucher stellen sich unter Restaurierung etwas Statisches vor, ein einmaliges Ausbessern. Tatsächlich ist es ein fortwährender Prozess ohne Endpunkt, fast wie das Leben selbst. Wenn ich abends nach Hause gehe und den Turm im Licht der untergehenden Sonne sehe, denke ich nicht mehr an das, was fertig werden soll, sondern an das, was gerade jetzt weitergegeben wird. Vielleicht ist das die eigentliche Lehre der Kathedrale: dass manche Werke ihren Wert gerade daraus beziehen, dass sie niemals abgeschlossen sind, sondern immer weitergereicht werden müssen an Hände, die noch kommen.$t$,
    $t$Je travaille depuis plus de vingt ans à la Dombauhütte de la cathédrale de Cologne, et quand des connaissances me demandent quand la cathédrale sera enfin terminée, je me contente le plus souvent d'en rire. Elle ne le sera jamais. Ce n'est pas une plainte, mais la condition fondamentale de mon métier, et avec les années, j'en suis devenu reconnaissant plutôt que de le regretter.

La cathédrale fut commencée au treizième siècle et achevée seulement au dix-neuvième, mais même cet achèvement était une illusion. Le grès dont est faite la façade se dégrade sous la pluie, le gel et les gaz d'échappement plus vite que nous ne pouvons le remplacer. Pendant que je travaille sur un pinacle taillé il y a cent cinquante ans, je sais déjà qu'un successeur que je ne connaîtrai jamais devra, dans cinquante ans, reprendre exactement au même endroit. Nous ne construisons pas pour un achèvement, mais pour une continuité.

Au début, je trouvais cela oppressant. À quoi bon la peine, si le résultat est de toute façon éphémère ? Ce n'est qu'avec le temps que j'ai compris que c'est précisément cette impermanence qui donne son sens au travail. Chaque pierre que je taille fait partie d'une conversation entre des générations qui ne se rencontreront jamais, reliées seulement par l'outil commun et la patience commune.

Certains visiteurs imaginent la restauration comme quelque chose de statique, une remise en état ponctuelle. En réalité, c'est un processus continu, sans point final, presque comme la vie elle-même. Quand je rentre chez moi le soir et que je vois la tour dans la lumière du soleil couchant, je ne pense plus à ce qui doit être terminé, mais à ce qui, précisément maintenant, est transmis. C'est peut-être là la véritable leçon de la cathédrale : que certaines œuvres tirent leur valeur précisément du fait qu'elles ne sont jamais achevées, mais doivent toujours être transmises à des mains qui viendront encore.$t$,
    $t${"Ich":"je","arbeite":"travaille","seit":"depuis","über":"plus de","zwanzig":"vingt","Jahren":"ans","in":"à","der":"la","Dombauhütte":"loge de la cathédrale","des":"de la","Kölner":"de Cologne","Doms":"cathédrale","und":"et","wenn":"quand","Bekannte":"connaissances","mich":"me","fragen":"demandent","wann":"quand","die":"la","Kathedrale":"cathédrale","endlich":"enfin","fertig":"terminée","wird":"sera","lache":"ris","ich":"je","meist":"le plus souvent","nur":"seulement","Sie":"elle","sie":"la","es":"le","nie":"jamais","sein":"être","Das":"ce","ist":"est","keine":"pas une","Klage":"plainte","sondern":"mais","Grundbedingung":"condition fondamentale","meines":"de mon","Berufs":"métier","mit":"avec","den":"les","bin":"suis","ihr":"lui","dankbar":"reconnaissant","geworden":"devenu","statt":"plutôt que","zu":"de","bedauern":"regretter","Der":"la","Dom":"cathédrale","wurde":"fut","im":"au","dreizehnten":"treizième","Jahrhundert":"siècle","begonnen":"commencée","erst":"seulement","neunzehnten":"dix-neuvième","vollendet":"achevée","doch":"mais","selbst":"même","diese":"cet","Vollendung":"achèvement","war":"était","eine":"une","Illusion":"illusion","Sandstein":"grès","aus":"dont","dem":"est faite","Fassade":"façade","besteht":"est faite","zerfällt":"se dégrade","unter":"sous","Regen":"pluie","Frost":"gel","Abgasen":"gaz d'échappement","schneller":"plus vite","als":"que","wir":"nous","ihn":"le","ersetzen":"remplacer","können":"pouvons","Während":"pendant que","an":"sur","einer":"un","Fiale":"pinacle","vor":"il y a","hundertfünfzig":"cent cinquante","gehauen":"taillé","weiß":"sais","bereits":"déjà","dass":"que","ein":"un","Nachfolger":"successeur","kennenlernen":"connaître","werde":"jamais","fünfzig":"cinquante","genau":"exactement","derselben":"au même","Stelle":"endroit","wieder":"à nouveau","ansetzen":"reprendre","muss":"devra","Wir":"nous","bauen":"construisons","nicht":"ne pas","für":"pour","Kontinuität":"continuité","Am":"au","Anfang":"début","empfand":"trouvais","das":"cela","bedrückend":"oppressant","Wozu":"à quoi bon","Mühe":"peine","Ergebnis":"résultat","ohnehin":"de toute façon","vergänglich":"éphémère","Erst":"ce n'est que","Zeit":"temps","verstand":"ai compris","Vergänglichkeit":"impermanence","Sinn":"sens","Arbeit":"travail","ausmacht":"donne","Jeder":"chaque","Stein":"pierre","behaue":"je taille","Teil":"partie","eines":"d'une","Gesprächs":"conversation","zwischen":"entre","Generationen":"générations","sich":"se","begegnen":"rencontreront","werden":"(aux)","verbunden":"reliées","durch":"par","gemeinsame":"commun","Werkzeug":"outil","Geduld":"patience","Manche":"certains","Besucher":"visiteurs","stellen":"imaginent","Restaurierung":"restauration","etwas":"quelque chose","Statisches":"de statique","einmaliges":"ponctuelle","Ausbessern":"remise en état","Tatsächlich":"en réalité","fortwährender":"continu","Prozess":"processus","ohne":"sans","Endpunkt":"point final","fast":"presque","wie":"comme","Leben":"vie","Wenn":"quand","abends":"le soir","nach":"chez","Hause":"chez soi","gehe":"rentre","Turm":"tour","Licht":"lumière","untergehenden":"couchant","Sonne":"soleil","sehe":"vois","denke":"pense","mehr":"plus","was":"ce qui","soll":"doit","gerade":"précisément","jetzt":"maintenant","weitergegeben":"transmis","Vielleicht":"peut-être","eigentliche":"véritable","Lehre":"leçon","manche":"certaines","Werke":"œuvres","ihren":"leur","Wert":"valeur","daraus":"de cela","beziehen":"tirent","niemals":"jamais","abgeschlossen":"achevées","sind":"sont","immer":"toujours","weitergereicht":"transmises","müssen":"doivent","Hände":"mains","noch":"encore","kommen":"viendront"}$t$::jsonb
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum ist der Kölner Dom laut dem Erzähler nie wirklich fertig?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Weil der Sandstein ständig verwittert und ersetzt werden muss$t$, true, 1),
    (v_q, $t$Weil die Baupläne verloren gegangen sind$t$, false, 2),
    (v_q, $t$Weil zu wenig Geld für den Bau vorhanden war$t$, false, 3),
    (v_q, $t$Weil die Kirche den Bau immer wieder verzögert hat$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was beschreibt der Erzähler als 'Grundbedingung' seines Berufs?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Dass die Restaurierung nie abgeschlossen sein kann$t$, true, 1),
    (v_q, $t$Dass er nur an einem einzigen Bauteil arbeitet$t$, false, 2),
    (v_q, $t$Dass er die Arbeit an jüngere Kollegen abgibt$t$, false, 3),
    (v_q, $t$Dass der Dom bald komplett neu gebaut wird$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Haltung zur Vergänglichkeit des Materials entwickelt der Erzähler im Lauf der Zeit?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er akzeptiert die Vergänglichkeit als sinnstiftenden Teil seiner Arbeit$t$, true, 1),
    (v_q, $t$Er versucht, mit haltbareren Materialien zu arbeiten, um das Problem zu lösen$t$, false, 2),
    (v_q, $t$Er hält die Vergänglichkeit für ein vermeidbares technisches Versagen$t$, false, 3),
    (v_q, $t$Er glaubt, dass künftige Generationen das Problem endgültig lösen werden$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was macht der Erzähler an einer Fiale, die vor 150 Jahren gehauen wurde?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er restauriert und bearbeitet sie erneut$t$, true, 1),
    (v_q, $t$Er zerstört sie, um sie neu zu bauen$t$, false, 2),
    (v_q, $t$Er stellt sie ins Museum$t$, false, 3),
    (v_q, $t$Er lässt sie unberührt$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet der Satz 'Wir bauen nicht für eine Vollendung, sondern für eine Kontinuität'?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Die Arbeit dient dem ununterbrochenen Weitergeben an künftige Generationen, nicht einem Abschluss$t$, true, 1),
    (v_q, $t$Die Arbeiter wollen die Bauzeit so weit wie möglich verkürzen$t$, false, 2),
    (v_q, $t$Der Dom soll möglichst bald fertiggestellt werden$t$, false, 3),
    (v_q, $t$Kontinuität bedeutet hier finanzielle Stabilität des Projekts$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie lässt sich die Beziehung zwischen den Generationen von Steinmetzen laut Text am besten charakterisieren?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Als ein Dialog über die Zeit hinweg, verbunden durch gemeinsames Werkzeug und Geduld, ohne persönliche Begegnung$t$, true, 1),
    (v_q, $t$Als direkte Zusammenarbeit mehrerer Generationen am selben Bauteil$t$, false, 2),
    (v_q, $t$Als Konkurrenz um Anerkennung zwischen den Generationen$t$, false, 3),
    (v_q, $t$Als rein wirtschaftliche Beziehung ohne emotionale Bedeutung$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie stellen sich manche Besucher die Restaurierung fälschlicherweise vor?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Als etwas Einmaliges und Abgeschlossenes$t$, true, 1),
    (v_q, $t$Als etwas, das nie beginnt$t$, false, 2),
    (v_q, $t$Als reine Geldverschwendung$t$, false, 3),
    (v_q, $t$Als Aufgabe für Maschinen allein$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was versteht der Erzähler unter der 'eigentlichen Lehre der Kathedrale'?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Manche Werke gewinnen ihren Wert gerade dadurch, dass sie nie abgeschlossen sind$t$, true, 1),
    (v_q, $t$Ein Bauwerk sollte möglichst schnell fertiggestellt werden$t$, false, 2),
    (v_q, $t$Historische Bauwerke sollten nicht mehr restauriert werden$t$, false, 3),
    (v_q, $t$Nur vollendete Werke haben einen dauerhaften Wert$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche implizite Analogie zieht der Text zwischen der Kathedrale und dem menschlichen Leben?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Beide sind fortwährende, nie ganz abgeschlossene Prozesse$t$, true, 1),
    (v_q, $t$Beide erreichen irgendwann einen klar definierten Endpunkt$t$, false, 2),
    (v_q, $t$Beide sind unabhängig vom Handeln nachfolgender Generationen$t$, false, 3),
    (v_q, $t$Beide werden ausschließlich durch äußere Zerstörung beendet$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'vergänglich'?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$nicht von Dauer, dem Verfall unterworfen$t$, true, 1),
    (v_q, $t$sehr wertvoll$t$, false, 2),
    (v_q, $t$besonders stabil$t$, false, 3),
    (v_q, $t$unsichtbar$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$'Genau diese Vergänglichkeit den Sinn der Arbeit ausmacht' – welches Wort ersetzt 'Vergänglichkeit' sinngemäß am besten?$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Kurzlebigkeit / Flüchtigkeit$t$, true, 1),
    (v_q, $t$Beständigkeit$t$, false, 2),
    (v_q, $t$Genauigkeit$t$, false, 3),
    (v_q, $t$Feierlichkeit$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$In welchem Satz wird 'Vergänglichkeit' im übertragenen Sinn korrekt verwendet?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Die Vergänglichkeit des Ruhmes zeigt sich darin, wie schnell er vergessen wird$t$, true, 1),
    (v_q, $t$Die Vergänglichkeit des Steins bedeutet, dass er unzerstörbar ist$t$, false, 2),
    (v_q, $t$Seine Vergänglichkeit als Handwerker machte ihn besonders gefragt$t$, false, 3),
    (v_q, $t$Die Vergänglichkeit des Turms sorgte für seine jahrhundertelange Stabilität$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Vervollständigen Sie den Passivsatz: Die Fiale ___ vor 150 Jahren gehauen.$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$wurde$t$, true, 1),
    (v_q, $t$hat$t$, false, 2),
    (v_q, $t$ist$t$, false, 3),
    (v_q, $t$wird$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welcher Satz zeigt korrekt das Vorgangspassiv im Perfekt?$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Der Stein ist von meinem Vorgänger bearbeitet worden$t$, true, 1),
    (v_q, $t$Der Stein hat meinen Vorgänger bearbeitet$t$, false, 2),
    (v_q, $t$Der Stein wird meinen Vorgänger bearbeiten$t$, false, 3),
    (v_q, $t$Der Stein bearbeitete meinen Vorgänger$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welcher Satz formuliert korrekt den erweiterten Partizipialattribut-Ausdruck 'ein von einem Nachfolger, den ich nie kennenlernen werde, fortgeführtes Werk'?$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$ein von einem mir unbekannt bleibenden Nachfolger fortgeführtes Werk$t$, true, 1),
    (v_q, $t$ein Werk, das von einem Nachfolger fortführen wird$t$, false, 2),
    (v_q, $t$ein Werk, das einen Nachfolger fortführen wird kennenlernen$t$, false, 3),
    (v_q, $t$ein fortgeführtes Werk, das einen Nachfolger nie kennenlernen wird$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$Schreiben Sie 8 bis 12 Sätze darüber, welchen Wert eine Arbeit haben kann, deren Ergebnis man selbst nie vollständig sehen wird. Beziehen Sie sich auf das Beispiel der Dombauhütte.$t$, 1, 'normal', 'production', $t$Die Arbeit an einem Bauwerk wie dem Kölner Dom stellt die übliche Vorstellung von Arbeit als zielgerichtetem, abschließbarem Vorgang infrage. Ein Steinmetz, der weiß, dass sein Werk in fünfzig Jahren erneut bearbeitet werden muss, kann seinen Sinn nicht aus der Vollendung ziehen, sondern muss ihn anderswo finden. Genau darin liegt eine bemerkenswerte Haltung, die sich von der modernen Fixierung auf schnelle Ergebnisse unterscheidet. Wer an einer Kathedrale arbeitet, tritt in eine Kette von Generationen ein, die einander nie begegnen, aber durch dasselbe Handwerk verbunden sind. Diese Kontinuität verleiht der Arbeit eine Bedeutung, die über das Individuum hinausreicht. Man könnte einwenden, dass eine solche Haltung entmutigend wirkt, weil der eigene Beitrag im Vergleich zur Gesamtaufgabe verschwindend klein erscheint. Doch gerade diese Bescheidenheit kann auch befreiend sein, weil sie den Druck nimmt, alles selbst vollenden zu müssen. Übertragen auf andere Lebensbereiche zeigt dieses Beispiel, dass nicht jede sinnvolle Tätigkeit ein sichtbares Endergebnis braucht. Manchmal besteht der eigentliche Wert einer Handlung darin, etwas an kommende Generationen weiterzugeben, ohne den Ausgang zu kennen. Diese Perspektive verlangt Geduld, aber sie eröffnet auch eine Form von Sinn, die nicht von unmittelbarer Bestätigung abhängt.$t$);

END $block$;

-- 18. Das Fest und sein Spiegel
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary) VALUES (
    'C1',
    $t$Das Fest und sein Spiegel$t$,
    $t$Als Ethnologin habe ich das Oktoberfest über zehn Jahre lang untersucht, jedes Jahr mit demselben Notizbuch in der Hand, zwischen Bierzelten und Blaskapellen, und trotzdem überrascht es mich noch immer, wie schwer es ist, dieses Fest einfach zu erklären.

Für die einen ist es Heimat: die Tracht, die man vom Großvater geerbt hat, das Lied, das man seit der Kindheit mitsingt, ein Ritual, das Generationen verbindet und dem Jahr eine feste Zäsur gibt. Für die anderen ist es ein Produkt, sorgfältig vermarktet, mit Eintrittspreisen, Reservierungslisten und einem globalen Publikum, das nach München reist, um ein Bild zu bestätigen, das es aus Filmen kennt. Beide Beschreibungen sind wahr, und genau das macht das Fest so aufschlussreich für meine Forschung.

Was mich am meisten interessiert, ist die Art, wie Einheimische und Besucher denselben Raum völlig unterschiedlich erleben, ohne dass einer der beiden im Unrecht wäre. Eine Familie aus dem Umland betritt das Zelt mit derselben Selbstverständlichkeit, mit der sie zur Kirche geht; ein Tourist aus Übersee betritt es wie ein Museum, das man begehen und fotografieren darf. Die Kellnerinnen, die Maßkrüge balancieren, bewegen sich zwischen beiden Welten, als wäre es das Natürlichste überhaupt.

Kritiker werfen dem Fest vor, zur Karikatur seiner selbst geworden zu sein, zu einem Ort, an dem Identität verkauft statt gelebt wird. Ich teile diese Sorge nur teilweise. Rituale waren nie rein, sie haben sich schon immer mit ihrer Zeit verändert, mit Handel, mit Politik, mit Migration. Das Oktoberfest, wie es heute existiert, ist vielleicht kommerzieller als vor hundert Jahren, aber es hat dadurch nicht aufgehört, echt zu sein. Es hat nur gelernt, mehreren Bedeutungen gleichzeitig zu dienen – Heimat für die einen, Bühne für die anderen, und für mich als Forscherin ein unerschöpfliches Feld.$t$,
    $t$En tant qu'ethnologue, j'ai étudié la fête de la bière de Munich pendant plus de dix ans, chaque année avec le même carnet à la main, entre les tentes à bière et les fanfares, et pourtant cela me surprend encore de voir à quel point il est difficile d'expliquer simplement cette fête.

Pour les uns, c'est le pays natal : le costume traditionnel hérité du grand-père, la chanson que l'on chante depuis l'enfance, un rituel qui relie les générations et donne à l'année une césure fixe. Pour les autres, c'est un produit, soigneusement commercialisé, avec des prix d'entrée, des listes de réservation et un public mondial qui voyage jusqu'à Munich pour confirmer une image qu'il connaît par les films. Les deux descriptions sont vraies, et c'est précisément cela qui rend cette fête si instructive pour ma recherche.

Ce qui m'intéresse le plus, c'est la manière dont les habitants et les visiteurs vivent le même espace de façon totalement différente, sans qu'aucun des deux ait tort. Une famille des environs entre sous la tente avec la même évidence qu'elle irait à l'église ; un touriste venu d'outre-mer y entre comme dans un musée que l'on peut parcourir et photographier. Les serveuses, qui font l'équilibriste avec les chopes d'un litre, se déplacent entre les deux mondes comme si c'était la chose la plus naturelle du monde.

Des critiques reprochent à la fête d'être devenue la caricature d'elle-même, un lieu où l'identité se vend au lieu de se vivre. Je ne partage cette inquiétude qu'en partie. Les rituels n'ont jamais été purs, ils se sont toujours transformés avec leur époque, avec le commerce, avec la politique, avec la migration. La fête de la bière, telle qu'elle existe aujourd'hui, est peut-être plus commerciale qu'il y a cent ans, mais elle n'a pas pour autant cessé d'être authentique. Elle a seulement appris à servir plusieurs significations à la fois – pays natal pour les uns, scène pour les autres, et pour moi, en tant que chercheuse, un champ d'étude inépuisable.$t$,
    $t${"Als":"en tant qu'","Ethnologin":"ethnologue","habe":"ai","ich":"je","das":"le","Oktoberfest":"fête de la bière","über":"pendant plus de","zehn":"dix","Jahre":"ans","lang":"durant","untersucht":"étudié","jedes":"chaque","Jahr":"année","mit":"avec","demselben":"le même","Notizbuch":"carnet","in":"à","der":"la","Hand":"main","zwischen":"entre","Bierzelten":"tentes à bière","und":"et","Blaskapellen":"fanfares","trotzdem":"pourtant","überrascht":"surprend","es":"cela","mich":"me","noch":"encore","immer":"toujours","wie":"à quel point","schwer":"difficile","ist":"est","dieses":"cette","Fest":"fête","einfach":"simplement","zu":"à","erklären":"expliquer","Für":"pour","die":"les","einen":"uns","Heimat":"pays natal","Tracht":"costume traditionnel","man":"on","vom":"du","Großvater":"grand-père","geerbt":"hérité","hat":"a","Lied":"chanson","seit":"depuis","Kindheit":"enfance","mitsingt":"chante","ein":"un","Ritual":"rituel","Generationen":"générations","verbindet":"relie","dem":"à qui","eine":"une","feste":"fixe","Zäsur":"césure","gibt":"donne","anderen":"autres","Produkt":"produit","sorgfältig":"soigneusement","vermarktet":"commercialisé","Eintrittspreisen":"prix d'entrée","Reservierungslisten":"listes de réservation","einem":"un","globalen":"mondial","Publikum":"public","nach":"jusqu'à","München":"Munich","reist":"voyage","um":"pour","Bild":"image","bestätigen":"confirmer","aus":"par","Filmen":"films","kennt":"connaît","Beide":"les deux","Beschreibungen":"descriptions","sind":"sont","wahr":"vraies","genau":"précisément","macht":"rend","so":"si","aufschlussreich":"instructive","für":"pour","meine":"ma","Forschung":"recherche","Was":"ce qui","am":"le plus","meisten":"le plus","interessiert":"intéresse","Art":"manière","Einheimische":"habitants","Besucher":"visiteurs","denselben":"le même","Raum":"espace","völlig":"totalement","unterschiedlich":"différemment","erleben":"vivent","ohne":"sans","dass":"que","einer":"l'un","beiden":"des deux","im":"dans le","Unrecht":"tort","wäre":"ait","Eine":"une","Familie":"famille","Umland":"environs","betritt":"entre","Zelt":"tente","derselben":"la même","Selbstverständlichkeit":"évidence","sie":"elle","zur":"à l'","Kirche":"église","geht":"va","Tourist":"touriste","Übersee":"outre-mer","Museum":"musée","begehen":"parcourir","fotografieren":"photographier","darf":"peut","Die":"les","Kellnerinnen":"serveuses","Maßkrüge":"chopes d'un litre","balancieren":"font l'équilibriste avec","bewegen":"déplacent","sich":"se","Welten":"mondes","als":"comme si","Natürlichste":"chose la plus naturelle","überhaupt":"du tout","Kritiker":"critiques","werfen":"reprochent","vor":"reprochent","Karikatur":"caricature","seiner":"d'elle-même","selbst":"même","geworden":"devenue","sein":"être","Ort":"lieu","an":"où","Identität":"identité","verkauft":"vend","statt":"au lieu de","gelebt":"vécue","wird":"est","Ich":"je","teile":"partage","diese":"cette","Sorge":"inquiétude","nur":"seulement","teilweise":"en partie","Rituale":"rituels","waren":"ont été","nie":"jamais","rein":"purs","haben":"ont","schon":"toujours","ihrer":"de leur","Zeit":"époque","verändert":"transformés","Handel":"commerce","Politik":"politique","Migration":"migration","Das":"la","heute":"aujourd'hui","existiert":"existe","vielleicht":"peut-être","kommerzieller":"plus commerciale","hundert":"cent","Jahren":"ans","aber":"mais","dadurch":"pour autant","nicht":"ne pas","aufgehört":"cessé","echt":"authentique","Es":"elle","gelernt":"appris","mehreren":"plusieurs","Bedeutungen":"significations","gleichzeitig":"à la fois","dienen":"servir","Bühne":"scène","Forscherin":"chercheuse","unerschöpfliches":"inépuisable","Feld":"champ"}$t$::jsonb
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet das Oktoberfest für die Einheimischen laut Text?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Ein vertrautes Ritual, das mit der Familie und der Kindheit verbunden ist$t$, true, 1),
    (v_q, $t$Eine reine Geschäftsveranstaltung ohne persönliche Bedeutung$t$, false, 2),
    (v_q, $t$Ein Fest, das sie meiden$t$, false, 3),
    (v_q, $t$Eine rein touristische Attraktion$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie unterscheiden sich die Wahrnehmungen von Einheimischen und Touristen laut der Erzählerin?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Einheimische erleben es als vertrautes Ritual, Touristen eher wie ein Museum, das man besucht$t$, true, 1),
    (v_q, $t$Beide Gruppen erleben das Fest auf identische Weise$t$, false, 2),
    (v_q, $t$Nur Touristen empfinden das Fest als Heimat$t$, false, 3),
    (v_q, $t$Einheimische meiden das Fest wegen der Touristen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche methodische Haltung nimmt die Erzählerin gegenüber den widersprüchlichen Deutungen des Festes ein?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie erkennt beide Deutungen als gleichzeitig gültig an, statt eine für falsch zu erklären$t$, true, 1),
    (v_q, $t$Sie hält nur die touristische Deutung für wissenschaftlich haltbar$t$, false, 2),
    (v_q, $t$Sie lehnt jede kommerzielle Deutung des Festes ab$t$, false, 3),
    (v_q, $t$Sie versucht, eine einzige objektive Definition des Festes zu finden$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was kritisieren manche Beobachter am heutigen Oktoberfest?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Dass es zu kommerziell geworden sei$t$, true, 1),
    (v_q, $t$Dass es zu wenig Besucher anziehe$t$, false, 2),
    (v_q, $t$Dass es zu wenig Bier gebe$t$, false, 3),
    (v_q, $t$Dass es verboten werden solle$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie reagiert die Erzählerin auf den Vorwurf, das Fest sei zur 'Karikatur seiner selbst' geworden?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie teilt die Sorge nur teilweise und verweist darauf, dass Rituale sich schon immer verändert haben$t$, true, 1),
    (v_q, $t$Sie stimmt der Kritik vollständig zu$t$, false, 2),
    (v_q, $t$Sie hält die Kritik für völlig unbegründet$t$, false, 3),
    (v_q, $t$Sie meint, das Fest habe sich seit hundert Jahren gar nicht verändert$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welches Argument nutzt die Erzählerin, um die Kommerzialisierung des Festes zu relativieren?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Rituale waren historisch nie 'rein', sondern haben sich stets mit Handel und Politik verändert$t$, true, 1),
    (v_q, $t$Kommerzialisierung ist ein rein modernes Phänomen ohne historischen Vorläufer$t$, false, 2),
    (v_q, $t$Nur unkommerzialisierte Rituale können als authentisch gelten$t$, false, 3),
    (v_q, $t$Die Kommerzialisierung habe das Fest vollständig seiner Bedeutung beraubt$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie beschreibt die Erzählerin das Fest am Ende des Textes?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Als ein Fest, das mehreren Bedeutungen gleichzeitig dient$t$, true, 1),
    (v_q, $t$Als ausschließlich touristisches Ereignis$t$, false, 2),
    (v_q, $t$Als bedeutungslose Massenveranstaltung$t$, false, 3),
    (v_q, $t$Als rein religiöses Ritual$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Rolle spielen die Kellnerinnen im Text?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie symbolisieren die Vermittlung zwischen den beiden Erlebniswelten von Einheimischen und Touristen$t$, true, 1),
    (v_q, $t$Sie stehen für die Ablehnung des Festes durch die Einheimischen$t$, false, 2),
    (v_q, $t$Sie repräsentieren ausschließlich die touristische Perspektive$t$, false, 3),
    (v_q, $t$Sie sind laut Text die Hauptkritikerinnen der Kommerzialisierung$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was macht das Oktoberfest laut Schlussfolgerung des Textes zu einem 'unerschöpflichen Feld' für die Forschung?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Die Fähigkeit des Festes, gleichzeitig als Heimat, Bühne und kommerzielles Produkt zu funktionieren$t$, true, 1),
    (v_q, $t$Die Tatsache, dass es jedes Jahr identisch abläuft$t$, false, 2),
    (v_q, $t$Die geringe Anzahl an Besuchern, die es erforschbar macht$t$, false, 3),
    (v_q, $t$Die fehlende historische Dokumentation des Festes$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'die Zäsur' (im Jahr)?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$ein deutlicher Einschnitt oder Wendepunkt$t$, true, 1),
    (v_q, $t$ein finanzieller Verlust$t$, false, 2),
    (v_q, $t$eine Art Tanz$t$, false, 3),
    (v_q, $t$ein Bierkrug$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$'Ein Ritual, das dem Jahr eine feste Zäsur gibt' – welche Umschreibung passt am besten?$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$einen wiederkehrenden Einschnitt / Orientierungspunkt$t$, true, 1),
    (v_q, $t$eine finanzielle Belastung$t$, false, 2),
    (v_q, $t$eine touristische Attraktion$t$, false, 3),
    (v_q, $t$eine gesetzliche Vorschrift$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$In welchem Satz wird 'Zäsur' sinngemäß korrekt verwendet?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Der Umzug in eine andere Stadt bedeutete für sie eine tiefe Zäsur in ihrem Leben$t$, true, 1),
    (v_q, $t$Die Zäsur des Bieres machte das Fest besonders beliebt$t$, false, 2),
    (v_q, $t$Er kaufte sich eine neue Zäsur für das Fest$t$, false, 3),
    (v_q, $t$Die Zäsur der Kapelle spielte bis Mitternacht$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Ergänzen Sie: Kritiker werfen dem Fest vor, zur Karikatur seiner selbst geworden ___.$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$zu sein$t$, true, 1),
    (v_q, $t$zu haben$t$, false, 2),
    (v_q, $t$gewesen sein$t$, false, 3),
    (v_q, $t$sein$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Formulieren Sie in indirekter Rede: 'Das Fest ist kommerzieller geworden', sagen die Kritiker. → Die Kritiker sagen, das Fest ___ kommerzieller geworden.$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$sei$t$, true, 1),
    (v_q, $t$ist$t$, false, 2),
    (v_q, $t$wäre gewesen$t$, false, 3),
    (v_q, $t$wird$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welcher Satz gibt den Vorwurf der Kritiker korrekt als Konjunktiv-I-Konstruktion mit Modalverb wieder: 'Identität werde hier verkauft statt gelebt'?$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Die Kritiker meinen, Identität werde hier eher verkauft als gelebt$t$, true, 1),
    (v_q, $t$Die Kritiker meinen, Identität wird hier eher verkauft als gelebt$t$, false, 2),
    (v_q, $t$Die Kritiker meinten, Identität verkaufte man statt zu leben$t$, false, 3),
    (v_q, $t$Die Kritiker meinen, Identität hat man verkauft statt gelebt$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$Diskutieren Sie in 8 bis 12 Sätzen, ob die Kommerzialisierung eines traditionellen Festes automatisch dessen Authentizität zerstört.$t$, 1, 'normal', 'production', $t$Die Frage, ob Kommerzialisierung Authentizität zerstört, lässt sich nicht pauschal beantworten, da beide Begriffe selbst schwer eindeutig zu fassen sind. Traditionen und Rituale haben sich historisch nie in einem geschützten, unveränderlichen Raum entwickelt, sondern standen stets im Austausch mit Handel, Politik und gesellschaftlichem Wandel. Insofern ist die Vorstellung eines ursprünglich 'reinen' Festes, das später von wirtschaftlichen Interessen korrumpiert wurde, selbst eine Konstruktion. Andererseits kann eine zu starke Kommerzialisierung tatsächlich dazu führen, dass ein Fest primär für ein externes Publikum inszeniert wird, wodurch die ursprüngliche Bedeutung für die lokale Bevölkerung in den Hintergrund tritt. Entscheidend erscheint mir, ob ein Fest weiterhin mehreren Gruppen gleichzeitig dienen kann, ohne dass eine Bedeutungsebene die andere vollständig verdrängt. Solange Einheimische das Ritual weiterhin mit persönlicher und familiärer Bedeutung füllen, bleibt es für sie authentisch, auch wenn Touristen es anders erleben. Problematisch wird es erst, wenn die kommerzielle Logik so dominant wird, dass die lokale Bevölkerung sich vom eigenen Fest entfremdet fühlt. Insgesamt scheint mir Authentizität weniger eine Frage der Abwesenheit von Kommerz zu sein als eine Frage der Vielschichtigkeit, die ein Fest bewahren kann.$t$);

END $block$;

-- 19. Der Wald in uns
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary) VALUES (
    'C1',
    $t$Der Wald in uns$t$,
    $t$In meiner Praxis begegne ich oft Erwachsenen, die sich als Kinder von ihren Eltern verlassen fühlten, und seit einigen Jahren nutze ich mit ihnen ein Märchen, das viele bereits aus der Kindheit kennen, um über genau dieses Gefühl zu sprechen: Hänsel und Gretel.

Auf den ersten Blick ist es eine Geschichte über Hunger und eine böse Hexe. Wer genauer hinschaut, erkennt jedoch ein Muster, das sich in vielen Biografien wiederfindet: Kinder, die von den eigenen Eltern in den Wald geführt werden, weil die Erwachsenen mit ihrer eigenen Not überfordert sind. Die Stiefmutter handelt nicht aus Bosheit allein, sondern aus Verzweiflung angesichts einer Hungersnot, die sie nicht anders zu bewältigen weiß. Diese Ambivalenz macht die Geschichte für meine Arbeit so wertvoll, denn Verlassenwerden ist selten das Werk eines Monsters, sondern meist das Ergebnis überforderter Menschen.

Was die Geschwister rettet, ist nicht ein Erwachsener, der eingreift, sondern ihre eigene Findigkeit. Die Kieselsteine, das Brot, der Mut, sich der Hexe zu widersetzen – all das entsteht aus der Not selbst. Genau darin sehe ich das eigentliche Thema des Märchens: nicht Verlassenheit als Endpunkt, sondern als Ausgangspunkt einer Handlungsfähigkeit, die vorher nicht nötig war.

Wenn ich das Märchen mit meinen Klientinnen und Klienten bespreche, geht es mir nie darum, das Trauma zu verharmlosen, indem ich es in ein Happy End verwandle. Es geht darum, einen Raum zu schaffen, in dem das verlassene Kind in ihnen erkennt, dass es überlebt hat, aus eigener Kraft, mit den Mitteln, die ihm zur Verfügung standen. Der Wald verschwindet dabei nicht aus der Erzählung, aber er wird durchquerbar. Und das Lebkuchenhaus, so verlockend es wirkt, erinnert daran, dass nicht jede Zuflucht, die sich anbietet, auch sicher ist. Vielleicht ist das die eigentliche therapeutische Kraft alter Märchen: Sie geben dem Unaussprechlichen eine Form, die man gemeinsam betrachten kann, ohne von ihr überwältigt zu werden.$t$,
    $t$Dans mon cabinet, je rencontre souvent des adultes qui se sont sentis abandonnés par leurs parents lorsqu'ils étaient enfants, et depuis quelques années, j'utilise avec eux un conte que beaucoup connaissent déjà depuis l'enfance pour parler précisément de ce sentiment : Hänsel et Gretel.

À première vue, c'est une histoire de faim et de méchante sorcière. Mais qui regarde de plus près reconnaît pourtant un schéma qui se retrouve dans de nombreuses biographies : des enfants menés dans la forêt par leurs propres parents parce que les adultes sont dépassés par leur propre détresse. La belle-mère n'agit pas par pure méchanceté, mais par désespoir face à une famine qu'elle ne sait pas surmonter autrement. Cette ambivalence rend l'histoire si précieuse pour mon travail, car être abandonné est rarement l'œuvre d'un monstre, mais le plus souvent le résultat de personnes dépassées.

Ce qui sauve les enfants, ce n'est pas un adulte qui intervient, mais leur propre ingéniosité. Les cailloux, le pain, le courage de résister à la sorcière – tout cela naît de la détresse elle-même. C'est précisément là que je vois le véritable thème du conte : non pas l'abandon comme point final, mais comme point de départ d'une capacité d'agir qui n'était pas nécessaire auparavant.

Quand je discute du conte avec mes clientes et clients, il ne s'agit jamais pour moi de banaliser le traumatisme en le transformant en happy end. Il s'agit de créer un espace où l'enfant abandonné en eux reconnaît qu'il a survécu, par sa propre force, avec les moyens dont il disposait. La forêt ne disparaît pas pour autant du récit, mais elle devient traversable. Et la maison en pain d'épices, aussi séduisante soit-elle, rappelle que tout refuge qui s'offre n'est pas forcément sûr. C'est peut-être là la véritable force thérapeutique des vieux contes : ils donnent une forme à l'indicible, une forme que l'on peut regarder ensemble, sans en être submergé.$t$,
    $t${"In":"dans","meiner":"mon","Praxis":"cabinet","begegne":"rencontre","ich":"je","oft":"souvent","Erwachsenen":"adultes","die":"qui","sich":"se","als":"lorsqu'ils étaient","Kinder":"enfants","von":"par","ihren":"leurs","Eltern":"parents","verlassen":"abandonnés","fühlten":"sentis","und":"et","seit":"depuis","einigen":"quelques","Jahren":"années","nutze":"utilise","mit":"avec","ihnen":"eux","ein":"un","Märchen":"conte","das":"que","viele":"beaucoup","bereits":"déjà","aus":"depuis","der":"l'","Kindheit":"enfance","kennen":"connaissent","um":"pour","über":"de","genau":"précisément","dieses":"ce","Gefühl":"sentiment","zu":"à","sprechen":"parler","Hänsel":"Hänsel","Gretel":"Gretel","Auf":"à","den":"le","ersten":"premier","Blick":"regard","ist":"est","es":"c'","eine":"une","Geschichte":"histoire","Hunger":"faim","böse":"méchante","Hexe":"sorcière","Wer":"qui","genauer":"de plus près","hinschaut":"regarde","erkennt":"reconnaît","jedoch":"pourtant","Muster":"schéma","in":"dans","vielen":"de nombreuses","Biografien":"biographies","wiederfindet":"se retrouve","eigenen":"propres","Wald":"forêt","geführt":"menés","werden":"sont","weil":"parce que","ihrer":"leur","Not":"détresse","überfordert":"dépassés","sind":"sont","Die":"la","Stiefmutter":"belle-mère","handelt":"agit","nicht":"ne pas","Bosheit":"méchanceté","allein":"seule","sondern":"mais","Verzweiflung":"désespoir","angesichts":"face à","einer":"une","Hungersnot":"famine","sie":"elle","anders":"autrement","bewältigen":"surmonter","weiß":"sait","Diese":"cette","Ambivalenz":"ambivalence","macht":"rend","für":"pour","meine":"mon","Arbeit":"travail","so":"si","wertvoll":"précieuse","denn":"car","Verlassenwerden":"être abandonné","selten":"rarement","Werk":"œuvre","eines":"d'un","Monsters":"monstre","meist":"le plus souvent","Ergebnis":"résultat","überforderter":"dépassées","Menschen":"personnes","Was":"ce qui","Geschwister":"enfants","rettet":"sauve","Erwachsener":"un adulte","eingreift":"intervient","ihre":"leur","eigene":"propre","Findigkeit":"ingéniosité","Kieselsteine":"cailloux","Brot":"pain","Mut":"courage","widersetzen":"résister","all":"tout","entsteht":"naît","selbst":"elle-même","Genau":"précisément","darin":"c'est là","sehe":"vois","eigentliche":"véritable","Thema":"thème","des":"du","Märchens":"conte","Verlassenheit":"abandon","Endpunkt":"point final","Ausgangspunkt":"point de départ","Handlungsfähigkeit":"capacité d'agir","vorher":"auparavant","nötig":"nécessaire","war":"était","Wenn":"quand","meinen":"mes","Klientinnen":"clientes","Klienten":"clients","bespreche":"discute","geht":"s'agit","mir":"pour moi","nie":"jamais","darum":"de cela","Trauma":"traumatisme","verharmlosen":"banaliser","indem":"en","Happy":"happy","End":"end","verwandle":"transformant","Es":"il","einen":"un","Raum":"espace","schaffen":"créer","dem":"où","verlassene":"abandonné","Kind":"enfant","dass":"que","überlebt":"survécu","hat":"a","eigener":"propre","Kraft":"force","Mitteln":"moyens","ihm":"dont il","zur":"à sa","Verfügung":"disposition","standen":"disposait","Der":"la","verschwindet":"disparaît","dabei":"pour autant","Erzählung":"récit","aber":"mais","er":"elle","wird":"devient","durchquerbar":"traversable","Und":"et","Lebkuchenhaus":"maison en pain d'épices","verlockend":"séduisante","wirkt":"soit-elle","erinnert":"rappelle","daran":"que","jede":"tout","Zuflucht":"refuge","anbietet":"s'offre","auch":"aussi","sicher":"sûr","Vielleicht":"peut-être","therapeutische":"thérapeutique","alter":"vieux","Sie":"ils","geben":"donnent","Unaussprechlichen":"à l'indicible","Form":"forme","man":"l'on","gemeinsam":"ensemble","betrachten":"regarder","kann":"peut","ohne":"sans","ihr":"en être","überwältigt":"submergé"}$t$::jsonb
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Mit welchen Klientinnen und Klienten arbeitet die Erzählerin besonders mit diesem Märchen?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Mit Erwachsenen, die sich als Kinder verlassen fühlten$t$, true, 1),
    (v_q, $t$Mit Kindern, die Angst vor dem Wald haben$t$, false, 2),
    (v_q, $t$Mit Menschen, die zu viel essen$t$, false, 3),
    (v_q, $t$Mit Paaren in Beziehungskrisen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was erkennt die Erzählerin bei genauerem Hinsehen im Märchen?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Ein Muster, das sich in vielen realen Biografien wiederfindet$t$, true, 1),
    (v_q, $t$Eine reine Fantasiegeschichte ohne Bezug zur Realität$t$, false, 2),
    (v_q, $t$Eine Warnung vor dem Wald als solchem$t$, false, 3),
    (v_q, $t$Eine Geschichte, die nur von Hunger handelt$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie deutet die Erzählerin das Handeln der Stiefmutter?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Als Ausdruck von Überforderung und Verzweiflung, nicht reiner Bosheit$t$, true, 1),
    (v_q, $t$Als Beweis für die grundsätzliche Bösartigkeit von Stiefeltern$t$, false, 2),
    (v_q, $t$Als bewusst geplante Grausamkeit ohne jede Notlage$t$, false, 3),
    (v_q, $t$Als Handlung, die im Märchen keine Erklärung findet$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wer rettet die Kinder im Märchen laut dem Text?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie retten sich durch ihre eigene Findigkeit$t$, true, 1),
    (v_q, $t$Ein Jäger rettet sie$t$, false, 2),
    (v_q, $t$Die Stiefmutter rettet sie im letzten Moment$t$, false, 3),
    (v_q, $t$Ein Zauberer greift ein$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was versteht die Erzählerin unter dem 'eigentlichen Thema' des Märchens?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Verlassenheit als Ausgangspunkt für neu entstehende Handlungsfähigkeit$t$, true, 1),
    (v_q, $t$Die endgültige Bestrafung böser Erwachsener$t$, false, 2),
    (v_q, $t$Die Gefährlichkeit von Wäldern im Allgemeinen$t$, false, 3),
    (v_q, $t$Die Bedeutung von Süßigkeiten in Notzeiten$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Funktion schreibt die Erzählerin den Kieselsteinen und dem Brot im Märchen zu?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie symbolisieren die aus der Not geborene Selbstwirksamkeit der Kinder$t$, true, 1),
    (v_q, $t$Sie zeigen, dass Erwachsene den Kindern immer helfen$t$, false, 2),
    (v_q, $t$Sie beweisen die Nutzlosigkeit kindlicher Findigkeit$t$, false, 3),
    (v_q, $t$Sie stehen für die endgültige Rettung durch die Hexe$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wozu dient das Märchen in der Therapie laut der Erzählerin?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Um dem verlassenen Kind im Erwachsenen einen Raum zur Verarbeitung zu geben$t$, true, 1),
    (v_q, $t$Um das Trauma vollständig zu verharmlosen$t$, false, 2),
    (v_q, $t$Um Kinder vor Wäldern zu warnen$t$, false, 3),
    (v_q, $t$Um Rezepte für Lebkuchen zu vermitteln$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wofür steht das Lebkuchenhaus laut der Interpretation der Erzählerin?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Dafür, dass nicht jede verlockende Zuflucht auch sicher ist$t$, true, 1),
    (v_q, $t$Dafür, dass alle Zufluchtsorte vertrauenswürdig sind$t$, false, 2),
    (v_q, $t$Für die endgültige Erlösung der Kinder$t$, false, 3),
    (v_q, $t$Für die Großzügigkeit der Hexe$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Worin sieht die Erzählerin die 'eigentliche therapeutische Kraft alter Märchen'?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie geben dem Unaussprechlichen eine gemeinsam betrachtbare Form$t$, true, 1),
    (v_q, $t$Sie liefern klare moralische Lehren ohne Interpretationsspielraum$t$, false, 2),
    (v_q, $t$Sie ersetzen die klassische Gesprächstherapie vollständig$t$, false, 3),
    (v_q, $t$Sie lenken von traumatischen Erfahrungen bewusst ab$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'die Findigkeit'?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$die Fähigkeit, clevere Lösungen zu finden$t$, true, 1),
    (v_q, $t$die Angst vor dem Unbekannten$t$, false, 2),
    (v_q, $t$die Traurigkeit nach einem Verlust$t$, false, 3),
    (v_q, $t$die Größe eines Waldes$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$'Was die Geschwister rettet, ist ihre eigene Findigkeit' – welches Wort passt als Synonym?$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Erfindungsreichtum / Cleverness$t$, true, 1),
    (v_q, $t$Gehorsam$t$, false, 2),
    (v_q, $t$Zufall$t$, false, 3),
    (v_q, $t$Verzweiflung$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$In welchem Satz wird 'Findigkeit' korrekt und sinngemäß verwendet?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Mit bemerkenswerter Findigkeit fand sie trotz fehlender Mittel einen Ausweg aus der Notlage$t$, true, 1),
    (v_q, $t$Ihre Findigkeit machte sie im Wald besonders langsam$t$, false, 2),
    (v_q, $t$Die Findigkeit des Waldes erschreckte die Kinder$t$, false, 3),
    (v_q, $t$Er verlor seine Findigkeit und wurde dadurch mutiger$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Ergänzen Sie den Relativsatz mit erweitertem Attribut: ein von den Eltern in den Wald ___ Kind$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$geführtes$t$, true, 1),
    (v_q, $t$führendes$t$, false, 2),
    (v_q, $t$geführt$t$, false, 3),
    (v_q, $t$führen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welcher Satz enthält ein korrektes Partizipialattribut zu 'ein Kind, das von seinen Eltern verlassen wurde'?$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$ein von seinen Eltern verlassenes Kind$t$, true, 1),
    (v_q, $t$ein seine Eltern verlassendes Kind$t$, false, 2),
    (v_q, $t$ein Kind, verlassen seine Eltern$t$, false, 3),
    (v_q, $t$ein verlassenwerdendes Eltern-Kind$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welcher Satz formuliert korrekt: 'Kinder, die von überforderten Eltern in den Wald geführt werden' als erweitertes Attribut vor dem Substantiv?$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$von überforderten Eltern in den Wald geführte Kinder$t$, true, 1),
    (v_q, $t$von überforderten Eltern in den Wald führende Kinder$t$, false, 2),
    (v_q, $t$in den Wald überforderte geführte Eltern-Kinder$t$, false, 3),
    (v_q, $t$geführte von überforderten Eltern Wald-Kinder$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$Erörtern Sie in 8 bis 12 Sätzen, welchen Nutzen alte Märchen für die psychologische Verarbeitung realer Erfahrungen haben können, ausgehend vom Beispiel Hänsel und Gretel.$t$, 1, 'normal', 'production', $t$Märchen wie Hänsel und Gretel scheinen auf den ersten Blick reine Fantasiegeschichten für Kinder zu sein, doch bei genauerer Betrachtung enthalten sie oft Muster, die sich auch in realen menschlichen Erfahrungen wiederfinden lassen. Das Motiv des Verlassenwerdens durch überforderte Erwachsene spricht ein Thema an, das viele Menschen aus ihrer eigenen Kindheit kennen, auch wenn die Umstände weit weniger dramatisch waren als im Märchen. Der besondere Wert solcher Geschichten liegt darin, dass sie emotional belastende Erfahrungen in eine Form bringen, die man betrachten kann, ohne unmittelbar von ihr überwältigt zu werden. Die symbolische Distanz des Märchens erlaubt es, über schwierige Gefühle zu sprechen, ohne die eigene Biografie sofort offenlegen zu müssen. Zudem zeigt die Geschichte, dass Kinder trotz widriger Umstände über eigene Ressourcen verfügen können, was für die therapeutische Arbeit ein wichtiger Anknüpfungspunkt ist. Kritisch anzumerken ist jedoch, dass Märchen nie eine vollständige Erklärung realer Traumata liefern können und die therapeutische Nutzung entsprechend behutsam erfolgen muss. Dennoch bietet die gemeinsame Interpretation eines bekannten Märchens einen zugänglichen Einstieg in Themen, die sonst schwer zu versprachlichen wären. Insofern können alte Erzählungen als kollektives kulturelles Werkzeug verstanden werden, das individuelle Verarbeitungsprozesse unterstützen kann.$t$);

END $block$;

-- 20. Der Vogel, der die Zeit ruft
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary) VALUES (
    'C1',
    $t$Der Vogel, der die Zeit ruft$t$,
    $t$In meiner Werkstatt im Schwarzwald stehen Uhren, an denen mein Großvater schon gearbeitet hat, und wenn ich abends das letzte Rädchen einsetze und der Vogel zum ersten Mal ruft, empfinde ich jedes Mal denselben stillen Stolz, den er wohl auch empfunden haben muss.

Die Kuckucksuhr gilt heute vielen als Souvenir, als Klischee für Touristen, die ein Stück vermeintlich echtes Deutschland mit nach Hause nehmen wollen. Ich verstehe diesen Vorwurf, denn tatsächlich werden die meisten Uhren, die in Souvenirläden hängen, industriell gefertigt, mit Plastikteilen und ohne die Präzision, die eine echte Schwarzwälder Uhr auszeichnet. Doch die Handwerkstradition, aus der sie stammt, ist etwas grundlegend anderes: Sie entstand im achtzehnten Jahrhundert aus der Notwendigkeit, den kargen Wintern der Region ein zusätzliches Einkommen abzuringen, mit Werkzeugen, die über Generationen weitergegeben wurden.

Was mich an meiner Arbeit am meisten beschäftigt, ist das Verhältnis zwischen dieser alten Handwerkskunst und der industriellen Zeitmessung, die uns heute umgibt. Eine mechanische Kuckucksuhr misst die Zeit nicht neutral, sie inszeniert sie, mit einem Klang, der an die Natur erinnert, an einen Wald, der längst kein Alltag mehr ist für die meisten Menschen. Eine digitale Anzeige dagegen verschwindet in ihrer eigenen Selbstverständlichkeit, sie fordert keine Aufmerksamkeit, sie unterbricht nichts.

Ich baue meine Uhren langsamer, als es wirtschaftlich sinnvoll wäre, weil ich glaube, dass die Zeit, die in ein Objekt investiert wird, sich in seiner Wirkung niederschlägt. Kunden, die eine meiner Uhren kaufen, kaufen nicht nur ein Zeitmessgerät, sondern eine Erinnerung an eine Zeit, in der Zeit selbst noch etwas Handwerkliches hatte, statt bloß gemessen zu werden. Vielleicht ist das der eigentliche Luxus, den ich verkaufe: nicht Genauigkeit, sondern die bewusste Verlangsamung eines Augenblicks, jedes Mal, wenn der kleine Vogel aus seiner Tür tritt und die Stunde verkündet.$t$,
    $t$Dans mon atelier de la Forêt-Noire se trouvent des horloges sur lesquelles mon grand-père a déjà travaillé, et quand, le soir, je place le dernier petit rouage et que l'oiseau chante pour la première fois, je ressens à chaque fois la même fierté silencieuse que lui aussi a dû ressentir.

L'horloge à coucou est aujourd'hui considérée par beaucoup comme un souvenir, un cliché pour les touristes qui veulent rapporter chez eux un morceau d'Allemagne soi-disant authentique. Je comprends ce reproche, car en effet, la plupart des horloges qui sont accrochées dans les boutiques de souvenirs sont fabriquées industriellement, avec des pièces en plastique et sans la précision qui caractérise une véritable horloge de la Forêt-Noire. Mais la tradition artisanale dont elles sont issues est quelque chose de fondamentalement différent : elle est née au dix-huitième siècle de la nécessité d'arracher un revenu supplémentaire aux hivers rudes de la région, avec des outils transmis de génération en génération.

Ce qui m'occupe le plus dans mon travail, c'est la relation entre cet ancien art artisanal et la mesure industrielle du temps qui nous entoure aujourd'hui. Une horloge à coucou mécanique ne mesure pas le temps de façon neutre, elle le met en scène, avec un son qui rappelle la nature, une forêt qui n'est plus depuis longtemps le quotidien de la plupart des gens. Un affichage numérique, en revanche, disparaît dans sa propre évidence, il n'exige aucune attention, il n'interrompt rien.

Je fabrique mes horloges plus lentement qu'il ne serait économiquement raisonnable, parce que je crois que le temps investi dans un objet se retrouve dans son effet. Les clients qui achètent une de mes horloges n'achètent pas seulement un instrument de mesure du temps, mais un souvenir d'une époque où le temps lui-même avait encore quelque chose d'artisanal, au lieu d'être seulement mesuré. C'est peut-être là le véritable luxe que je vends : non pas la précision, mais le ralentissement conscient d'un instant, chaque fois que le petit oiseau sort de sa porte et annonce l'heure.$t$,
    $t${"In":"dans","meiner":"mon","Werkstatt":"atelier","im":"dans la","Schwarzwald":"Forêt-Noire","stehen":"se trouvent","Uhren":"horloges","an":"sur","denen":"lesquelles","mein":"mon","Großvater":"grand-père","schon":"déjà","gearbeitet":"travaillé","hat":"a","und":"et","wenn":"quand","ich":"je","abends":"le soir","das":"le","letzte":"dernier","Rädchen":"petit rouage","einsetze":"place","der":"l'","Vogel":"oiseau","zum":"pour la","ersten":"première","Mal":"fois","ruft":"chante","empfinde":"ressens","jedes":"chaque fois","denselben":"la même","stillen":"silencieuse","Stolz":"fierté","den":"que","er":"lui","wohl":"sans doute","auch":"aussi","empfunden":"ressenti","haben":"a","muss":"dû","Die":"l'","Kuckucksuhr":"horloge à coucou","gilt":"est considérée","heute":"aujourd'hui","vielen":"par beaucoup","als":"comme","Souvenir":"souvenir","Klischee":"cliché","für":"pour","Touristen":"touristes","die":"qui","ein":"un","Stück":"morceau","vermeintlich":"soi-disant","echtes":"authentique","Deutschland":"Allemagne","mit":"avec","nach":"chez","Hause":"eux","nehmen":"rapporter","wollen":"veulent","Ich":"je","verstehe":"comprends","diesen":"ce","Vorwurf":"reproche","denn":"car","tatsächlich":"en effet","werden":"sont","meisten":"la plupart","in":"dans","Souvenirläden":"boutiques de souvenirs","hängen":"accrochées","industriell":"industriellement","gefertigt":"fabriquées","Plastikteilen":"pièces en plastique","ohne":"sans","Präzision":"précision","eine":"une","echte":"véritable","Schwarzwälder":"de la Forêt-Noire","Uhr":"horloge","auszeichnet":"caractérise","Doch":"mais","Handwerkstradition":"tradition artisanale","aus":"dont","sie":"elles","stammt":"sont issues","ist":"est","etwas":"quelque chose","grundlegend":"fondamentalement","anderes":"différent","Sie":"elle","entstand":"est née","achtzehnten":"dix-huitième","Jahrhundert":"siècle","Notwendigkeit":"nécessité","kargen":"rudes","Wintern":"hivers","Region":"région","zusätzliches":"supplémentaire","Einkommen":"revenu","abzuringen":"arracher","Werkzeugen":"outils","über":"de génération en génération","Generationen":"générations","weitergegeben":"transmis","wurden":"furent","Was":"ce qui","mich":"m'","Arbeit":"travail","am":"le plus","beschäftigt":"occupe","Verhältnis":"relation","zwischen":"entre","dieser":"cet","alten":"ancien","Handwerkskunst":"art artisanal","industriellen":"industrielle","Zeitmessung":"mesure du temps","uns":"nous","umgibt":"entoure","Eine":"une","mechanische":"mécanique","misst":"mesure","Zeit":"temps","nicht":"ne pas","neutral":"neutre","inszeniert":"met en scène","einem":"avec un","Klang":"son","Natur":"nature","erinnert":"rappelle","einen":"une","Wald":"forêt","längst":"depuis longtemps","kein":"plus","Alltag":"quotidien","mehr":"plus","Menschen":"gens","digitale":"numérique","Anzeige":"affichage","dagegen":"en revanche","verschwindet":"disparaît","ihrer":"sa","eigenen":"propre","Selbstverständlichkeit":"évidence","fordert":"exige","keine":"aucune","Aufmerksamkeit":"attention","unterbricht":"interrompt","nichts":"rien","baue":"fabrique","meine":"mes","langsamer":"plus lentement","es":"il","wirtschaftlich":"économiquement","sinnvoll":"raisonnable","wäre":"serait","weil":"parce que","glaube":"crois","dass":"que","Objekt":"objet","investiert":"investi","wird":"est","sich":"se","seiner":"son","Wirkung":"effet","niederschlägt":"retrouve","Kunden":"clients","kaufen":"achètent","nur":"seulement","Zeitmessgerät":"instrument de mesure du temps","sondern":"mais","Erinnerung":"souvenir","selbst":"lui-même","noch":"encore","Handwerkliches":"d'artisanal","hatte":"avait","statt":"au lieu de","bloß":"seulement","gemessen":"mesuré","zu":"être","Vielleicht":"peut-être","eigentliche":"véritable","Luxus":"luxe","verkaufe":"vends","Genauigkeit":"précision","bewusste":"conscient","Verlangsamung":"ralentissement","eines":"d'un","Augenblicks":"instant","kleine":"petit","Tür":"porte","tritt":"sort","Stunde":"heure","verkündet":"annonce"}$t$::jsonb
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Woher stammen die meisten Souvenir-Kuckucksuhren laut dem Erzähler?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Aus industrieller Fertigung mit Plastikteilen$t$, true, 1),
    (v_q, $t$Aus reiner Handarbeit im Schwarzwald$t$, false, 2),
    (v_q, $t$Von seinem Großvater persönlich$t$, false, 3),
    (v_q, $t$Aus dem neunzehnten Jahrhundert$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie erklärt der Text die Entstehung der Schwarzwälder Uhrmachertradition?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie entstand aus der Notwendigkeit, in kargen Wintern ein Zusatzeinkommen zu erwirtschaften$t$, true, 1),
    (v_q, $t$Sie entstand aus rein künstlerischem Interesse ohne wirtschaftlichen Grund$t$, false, 2),
    (v_q, $t$Sie wurde von der Regierung im 20. Jahrhundert eingeführt$t$, false, 3),
    (v_q, $t$Sie entstand als Reaktion auf den Tourismus$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie positioniert sich der Erzähler zur Kritik, die Kuckucksuhr sei nur ein touristisches Klischee?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er versteht die Kritik an Souvenirware, unterscheidet sie aber von der eigentlichen Handwerkstradition$t$, true, 1),
    (v_q, $t$Er weist jede Kritik an der Kuckucksuhr entschieden zurück$t$, false, 2),
    (v_q, $t$Er stimmt zu, dass die gesamte Tradition wertlos geworden ist$t$, false, 3),
    (v_q, $t$Er meint, die Kritik betreffe nur Uhren aus dem 18. Jahrhundert$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was macht eine mechanische Kuckucksuhr laut dem Erzähler mit der Zeit?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie inszeniert sie mit einem an die Natur erinnernden Klang$t$, true, 1),
    (v_q, $t$Sie zeigt sie unauffällig und stumm an$t$, false, 2),
    (v_q, $t$Sie misst sie ungenauer als eine digitale Uhr$t$, false, 3),
    (v_q, $t$Sie stoppt die Zeit für einen Moment$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Worin unterscheidet sich laut Text eine mechanische Kuckucksuhr von einer digitalen Anzeige?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Die Kuckucksuhr unterbricht den Alltag bewusst, während die digitale Anzeige unauffällig bleibt$t$, true, 1),
    (v_q, $t$Beide fordern in gleicher Weise Aufmerksamkeit$t$, false, 2),
    (v_q, $t$Die digitale Anzeige erinnert stärker an die Natur$t$, false, 3),
    (v_q, $t$Die Kuckucksuhr ist grundsätzlich ungenauer als jede digitale Uhr$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche implizite Kritik an moderner Zeitmessung lässt sich aus dem Text ableiten?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Digitale Zeitanzeigen lassen die Zeit unbemerkt verstreichen, ohne bewusste Wahrnehmung zu erzeugen$t$, true, 1),
    (v_q, $t$Digitale Anzeigen sind technisch unzuverlässiger als mechanische Uhren$t$, false, 2),
    (v_q, $t$Mechanische Uhren sind grundsätzlich überlegen in der Genauigkeit$t$, false, 3),
    (v_q, $t$Der Erzähler lehnt jede Form moderner Technik grundsätzlich ab$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum baut der Uhrmacher seine Uhren langsamer, als es wirtschaftlich sinnvoll wäre?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Weil die investierte Zeit sich seiner Meinung nach in der Wirkung des Objekts zeigt$t$, true, 1),
    (v_q, $t$Weil ihm die nötigen Werkzeuge fehlen$t$, false, 2),
    (v_q, $t$Weil er keine Kunden finden möchte$t$, false, 3),
    (v_q, $t$Weil schnelleres Arbeiten gesetzlich verboten ist$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was verkaufen die Kunden laut dem Erzähler eigentlich, wenn sie eine seiner Uhren kaufen?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Eine Erinnerung an eine Zeit, in der Zeit noch etwas Handwerkliches hatte$t$, true, 1),
    (v_q, $t$Ein rein technisch überlegenes Zeitmessgerät$t$, false, 2),
    (v_q, $t$Ein Statussymbol ohne emotionalen Wert$t$, false, 3),
    (v_q, $t$Ein Produkt, das ausschließlich für Touristen gedacht ist$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie lässt sich der 'eigentliche Luxus', von dem am Ende die Rede ist, am treffendsten interpretieren?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Als bewusste Verlangsamung und Wertschätzung eines Augenblicks statt reiner Präzision$t$, true, 1),
    (v_q, $t$Als hoher materieller Wert der verwendeten Werkstoffe$t$, false, 2),
    (v_q, $t$Als besonders schnelle Herstellung der Uhren$t$, false, 3),
    (v_q, $t$Als Exklusivität durch einen hohen Verkaufspreis allein$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'karg' (z. B. 'karge Winter')?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$arm an Ressourcen, wenig ertragreich$t$, true, 1),
    (v_q, $t$besonders warm und mild$t$, false, 2),
    (v_q, $t$reich an Nahrung$t$, false, 3),
    (v_q, $t$modern und technisiert$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$'Den kargen Wintern der Region ein zusätzliches Einkommen abzuringen' – welches Wort passt als Synonym für 'karg'?$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$dürftig / entbehrungsreich$t$, true, 1),
    (v_q, $t$üppig$t$, false, 2),
    (v_q, $t$gemütlich$t$, false, 3),
    (v_q, $t$kurz$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$In welchem Satz wird 'karg' korrekt im übertragenen Sinn verwendet?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Die karge Landschaft bot den Bauern kaum genug zum Überleben$t$, true, 1),
    (v_q, $t$Sein karges Lächeln verriet große Freude$t$, false, 2),
    (v_q, $t$Die karge Feier dauerte bis in die frühen Morgenstunden$t$, false, 3),
    (v_q, $t$Ihre karge Sammlung umfasste tausende Exponate$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Ergänzen Sie: Werkzeuge, die über Generationen ___ wurden.$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$weitergegeben$t$, true, 1),
    (v_q, $t$weitergeben$t$, false, 2),
    (v_q, $t$weitergebend$t$, false, 3),
    (v_q, $t$weitergegeb$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welcher Satz zeigt korrekt ein Partizipialattribut zu 'Werkzeuge, die über Generationen weitergegeben wurden'?$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$über Generationen weitergegebene Werkzeuge$t$, true, 1),
    (v_q, $t$über Generationen weitergebende Werkzeuge$t$, false, 2),
    (v_q, $t$weiterzugebende über Generationen Werkzeuge$t$, false, 3),
    (v_q, $t$Werkzeuge, weiterzugeben über Generationen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welcher Satz gibt korrekt indirekt wieder: 'Ich baue meine Uhren langsamer, als es wirtschaftlich sinnvoll wäre', sagt der Uhrmacher?$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Der Uhrmacher sagt, er baue seine Uhren langsamer, als es wirtschaftlich sinnvoll sei$t$, true, 1),
    (v_q, $t$Der Uhrmacher sagt, er baut seine Uhren langsamer, als es wirtschaftlich sinnvoll wäre$t$, false, 2),
    (v_q, $t$Der Uhrmacher sagte, er hätte seine Uhren langsamer gebaut$t$, false, 3),
    (v_q, $t$Der Uhrmacher sagt, er habe seine Uhren langsamer gebaut, als es sinnvoll ist$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$Schreiben Sie 8 bis 12 Sätze über das Spannungsverhältnis zwischen traditionellem Handwerk und moderner, effizienzorientierter Produktion, ausgehend vom Beispiel der Kuckucksuhr.$t$, 1, 'normal', 'production', $t$Das Beispiel der Kuckucksuhr macht deutlich, dass traditionelles Handwerk und moderne, effizienzorientierte Produktion nicht nur unterschiedliche Herstellungsverfahren, sondern auch unterschiedliche Werthaltungen repräsentieren. Während industrielle Fertigung auf Geschwindigkeit, Standardisierung und Kosteneffizienz ausgerichtet ist, beruht die handwerkliche Tradition auf Langsamkeit, individueller Sorgfalt und der Weitergabe von Wissen über Generationen. Diese beiden Logiken stehen sich nicht zwangsläufig feindlich gegenüber, doch sie erzeugen sehr unterschiedliche Produkte mit unterschiedlicher symbolischer Bedeutung. Eine industriell gefertigte Souveniruhr mag denselben äußeren Anschein erwecken wie ein handgefertigtes Stück, doch ihr fehlt die investierte Zeit, die dem Objekt laut dem Uhrmacher seine eigentliche Wirkung verleiht. Interessant ist zudem der Gedanke, dass mechanische Zeitmessung selbst eine Haltung zur Zeit transportiert, die sich von der unauffälligen Präsenz digitaler Anzeigen unterscheidet. Während digitale Uhren die Zeit unbemerkt verstreichen lassen, macht der Ruf des Kuckucks jeden Moment bewusst erlebbar. Kritiker könnten einwenden, dass eine solche Romantisierung des Handwerks wirtschaftlich naiv sei, da sie sich in einem globalisierten Markt kaum durchsetzen lässt. Dennoch zeigt das Beispiel, dass Konsumentscheidungen nicht nur funktionale, sondern auch kulturelle und emotionale Bedürfnisse befriedigen können, was traditionellem Handwerk auch in einer industrialisierten Welt einen legitimen Platz sichert.$t$);

END $block$;

-- 21. Das Licht, das durch alles ging
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary) VALUES (
    'C1',
    $t$Das Licht, das durch alles ging$t$,
    $t$Als ich vor vielen Jahren mein erstes Röntgenbild in den Händen hielt, das Skelett eines Patienten, klar und unmissverständlich auf grauem Film, dachte ich kurz an den Mann, dessen Namen dieses Verfahren bis heute trägt, und an die Last, die eine solche Entdeckung mit sich bringen musste.

Wilhelm Conrad Röntgen entdeckte 1895 in seinem Labor in Würzburg eine Strahlung, die feste Materie durchdringen konnte, fast zufällig, während er mit Kathodenstrahlen experimentierte. Innerhalb weniger Wochen fertigte er das berühmte Bild der Hand seiner Frau an, auf dem die Knochen und der Ehering deutlich sichtbar wurden. Was ihn von vielen anderen Wissenschaftlern seiner Zeit unterschied, war nicht nur die Entdeckung selbst, sondern seine Entscheidung, sie nicht patentieren zu lassen. Er wollte, dass die ganze Menschheit von diesem Wissen profitieren konnte, ohne dass ein Einzelner daran verdiente.

Als Ärztin frage ich mich oft, ob Röntgen die Tragweite seiner Entscheidung wirklich abschätzen konnte. Innerhalb weniger Jahre revolutionierte seine Entdeckung die Diagnostik, machte Brüche, Tumore und Fremdkörper sichtbar, ohne dass ein Skalpell nötig war. Gleichzeitig wusste damals niemand um die Gefahren der Strahlung selbst, und viele frühe Anwender, Ärzte wie Techniker, bezahlten diese Unwissenheit mit ihrer Gesundheit.

Diese Ambivalenz begleitet mich in meinem eigenen Beruf. Jede neue Technologie, die ich in der Praxis einsetze, trägt dasselbe Versprechen und dasselbe Risiko in sich: die Möglichkeit, tiefer in den Körper zu blicken, als es je zuvor möglich war, und die Verantwortung, dieses Wissen nicht leichtfertig einzusetzen. Röntgen selbst blieb bescheiden bis zu seinem Lebensende, lehnte finanzielle Vorteile ab und starb verarmt. Wenn ich heute ein Bild betrachte, das seine Entdeckung erst möglich gemacht hat, sehe ich darin nicht nur ein diagnostisches Werkzeug, sondern eine Erinnerung daran, dass echte wissenschaftliche Größe sich manchmal gerade im Verzicht zeigt.$t$,
    $t$Lorsque j'ai tenu dans mes mains, il y a de nombreuses années, ma première radiographie, le squelette d'un patient, clair et sans équivoque sur un film gris, j'ai pensé un instant à l'homme dont le nom porte encore aujourd'hui ce procédé, et au fardeau qu'une telle découverte devait entraîner avec elle.

Wilhelm Conrad Röntgen découvrit en 1895, dans son laboratoire de Würzburg, un rayonnement capable de traverser la matière solide, presque par hasard, alors qu'il expérimentait avec des rayons cathodiques. En l'espace de quelques semaines, il réalisa la célèbre image de la main de son épouse, sur laquelle les os et l'alliance devinrent nettement visibles. Ce qui le distinguait de nombreux autres scientifiques de son temps, ce n'était pas seulement la découverte elle-même, mais sa décision de ne pas la faire breveter. Il voulait que l'humanité tout entière puisse profiter de ce savoir, sans qu'un seul individu n'en tire profit.

En tant que médecin, je me demande souvent si Röntgen pouvait vraiment mesurer la portée de sa décision. En quelques années, sa découverte révolutionna le diagnostic, rendant visibles fractures, tumeurs et corps étrangers, sans qu'un scalpel ne soit nécessaire. En même temps, personne ne connaissait alors les dangers du rayonnement lui-même, et de nombreux utilisateurs précoces, médecins comme techniciens, payèrent cette ignorance de leur santé.

Cette ambivalence m'accompagne dans mon propre métier. Chaque nouvelle technologie que j'utilise dans ma pratique porte en elle la même promesse et le même risque : la possibilité de voir plus profondément dans le corps qu'il n'avait jamais été possible auparavant, et la responsabilité de ne pas utiliser ce savoir à la légère. Röntgen lui-même resta modeste jusqu'à la fin de sa vie, refusa des avantages financiers et mourut dans le dénuement. Quand je regarde aujourd'hui une image que sa découverte a d'abord rendue possible, j'y vois non seulement un outil diagnostique, mais aussi le rappel que la véritable grandeur scientifique se manifeste parfois précisément dans le renoncement.$t$,
    $t${"1895":"1895","Als":"lorsque","ich":"je","vor":"il y a","vielen":"de nombreuses","Jahren":"années","mein":"ma","erstes":"première","Röntgenbild":"radiographie","in":"dans","den":"les","Händen":"mains","hielt":"tenais","das":"le","Skelett":"squelette","eines":"d'un","Patienten":"patient","klar":"clair","und":"et","unmissverständlich":"sans équivoque","auf":"sur","grauem":"gris","Film":"film","dachte":"ai pensé","kurz":"un instant","an":"à","Mann":"homme","dessen":"dont","Namen":"nom","dieses":"ce","Verfahren":"procédé","bis":"jusqu'à","heute":"aujourd'hui","trägt":"porte","die":"le","Last":"fardeau","eine":"une","solche":"telle","Entdeckung":"découverte","mit":"avec","sich":"elle","bringen":"entraîner","musste":"devait","Wilhelm":"Wilhelm","Conrad":"Conrad","Röntgen":"Röntgen","entdeckte":"découvrit","seinem":"son","Labor":"laboratoire","Würzburg":"Würzburg","Strahlung":"rayonnement","feste":"solide","Materie":"matière","durchdringen":"traverser","konnte":"pouvait","fast":"presque","zufällig":"par hasard","während":"alors que","er":"il","Kathodenstrahlen":"rayons cathodiques","experimentierte":"expérimentait","Innerhalb":"en l'espace de","weniger":"quelques","Wochen":"semaines","fertigte":"réalisa","berühmte":"célèbre","Bild":"image","der":"de la","Hand":"main","seiner":"de son","Frau":"épouse","dem":"sur laquelle","Knochen":"os","Ehering":"alliance","deutlich":"nettement","sichtbar":"visibles","wurden":"devinrent","Was":"ce qui","ihn":"le","von":"de","anderen":"nombreux autres","Wissenschaftlern":"scientifiques","Zeit":"temps","unterschied":"distinguait","war":"était","nicht":"non","nur":"seulement","selbst":"elle-même","sondern":"mais","seine":"sa","Entscheidung":"décision","sie":"la","patentieren":"breveter","zu":"de","lassen":"faire","Er":"il","wollte":"voulait","dass":"que","ganze":"tout entière","Menschheit":"humanité","diesem":"de ce","Wissen":"savoir","profitieren":"profiter","ohne":"sans","ein":"un","Einzelner":"individu","daran":"en","verdiente":"tire profit","Ärztin":"médecin","frage":"me demande","mich":"me","oft":"souvent","ob":"si","Tragweite":"portée","wirklich":"vraiment","abschätzen":"mesurer","Jahre":"années","revolutionierte":"révolutionna","Diagnostik":"diagnostic","machte":"rendit","Brüche":"fractures","Tumore":"tumeurs","Fremdkörper":"corps étrangers","Skalpell":"scalpel","nötig":"nécessaire","Gleichzeitig":"en même temps","wusste":"savait","damals":"alors","niemand":"personne","um":"sur","Gefahren":"dangers","viele":"de nombreux","frühe":"précoces","Anwender":"utilisateurs","Ärzte":"médecins","wie":"comme","Techniker":"techniciens","bezahlten":"payèrent","diese":"cette","Unwissenheit":"ignorance","ihrer":"leur","Gesundheit":"santé","Diese":"cette","Ambivalenz":"ambivalence","begleitet":"accompagne","meinem":"mon","eigenen":"propre","Beruf":"métier","Jede":"chaque","neue":"nouvelle","Technologie":"technologie","Praxis":"pratique","einsetze":"utilise","dasselbe":"la même","Versprechen":"promesse","Risiko":"risque","Möglichkeit":"possibilité","tiefer":"plus profondément","Körper":"corps","blicken":"voir","als":"qu'","es":"il","je":"jamais","zuvor":"auparavant","möglich":"possible","Verantwortung":"responsabilité","leichtfertig":"à la légère","einzusetzen":"utiliser","blieb":"resta","bescheiden":"modeste","Lebensende":"fin de sa vie","lehnte":"refusa","finanzielle":"financiers","Vorteile":"avantages","ab":"refusa","starb":"mourut","verarmt":"dans le dénuement","Wenn":"quand","betrachte":"regarde","erst":"d'abord","gemacht":"rendue","hat":"a","sehe":"vois","darin":"en cela","diagnostisches":"diagnostique","Werkzeug":"outil","Erinnerung":"rappel","echte":"véritable","wissenschaftliche":"scientifique","Größe":"grandeur","manchmal":"parfois","gerade":"précisément","im":"dans le","Verzicht":"renoncement","zeigt":"se manifeste"}$t$::jsonb
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie entdeckte Röntgen die nach ihm benannte Strahlung?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Eher zufällig, während er mit Kathodenstrahlen experimentierte$t$, true, 1),
    (v_q, $t$Durch jahrelange gezielte Planung eines Diagnosegeräts$t$, false, 2),
    (v_q, $t$Durch einen Hinweis eines Kollegen$t$, false, 3),
    (v_q, $t$Durch einen Unfall im Krankenhaus$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was zeigte das berühmte erste Röntgenbild?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Die Hand von Röntgens Frau mit sichtbaren Knochen und Ehering$t$, true, 1),
    (v_q, $t$Ein Röntgenbild von Röntgens eigenem Schädel$t$, false, 2),
    (v_q, $t$Eine Landschaftsaufnahme aus Würzburg$t$, false, 3),
    (v_q, $t$Ein Bild seines Labors$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was unterschied Röntgen laut der Erzählerin von vielen anderen Wissenschaftlern seiner Zeit?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Seine Entscheidung, die Entdeckung nicht patentieren zu lassen, um sie der Menschheit zugänglich zu machen$t$, true, 1),
    (v_q, $t$Seine Weigerung, die Entdeckung überhaupt zu veröffentlichen$t$, false, 2),
    (v_q, $t$Seine ausschließlich kommerzielle Nutzung der Entdeckung$t$, false, 3),
    (v_q, $t$Seine Zusammenarbeit mit internationalen Patentämtern$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was ermöglichte die Entdeckung für die medizinische Diagnostik?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Brüche und Fremdkörper sichtbar zu machen, ohne zu operieren$t$, true, 1),
    (v_q, $t$Krankheiten vollständig zu heilen$t$, false, 2),
    (v_q, $t$Operationen schneller durchzuführen$t$, false, 3),
    (v_q, $t$Medikamente wirksamer zu machen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welches Risiko war zur Zeit der Entdeckung noch unbekannt?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Die gesundheitlichen Gefahren der Strahlung selbst$t$, true, 1),
    (v_q, $t$Die Möglichkeit, Knochen sichtbar zu machen$t$, false, 2),
    (v_q, $t$Die Kosten der neuen Technologie$t$, false, 3),
    (v_q, $t$Die internationale Verbreitung der Erfindung$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie beschreibt die Erzählerin die Folgen der Unwissenheit über die Strahlengefahren?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Viele frühe Anwender bezahlten diese Unwissenheit mit ihrer eigenen Gesundheit$t$, true, 1),
    (v_q, $t$Die Unwissenheit hatte keinerlei praktische Folgen$t$, false, 2),
    (v_q, $t$Nur Patienten, nie medizinisches Personal, waren betroffen$t$, false, 3),
    (v_q, $t$Die Gefahren wurden von Anfang an korrekt eingeschätzt$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie verhielt sich Röntgen in Bezug auf finanzielle Vorteile aus seiner Entdeckung?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Er lehnte sie ab und starb verarmt$t$, true, 1),
    (v_q, $t$Er wurde durch Patente sehr reich$t$, false, 2),
    (v_q, $t$Er verkaufte seine Entdeckung an ein Unternehmen$t$, false, 3),
    (v_q, $t$Er forderte hohe Lizenzgebühren$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Ambivalenz beschreibt die Erzählerin in Bezug auf ihren eigenen Beruf?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Neue Technologien bieten sowohl tieferen Einblick als auch die Verantwortung, sie nicht leichtfertig einzusetzen$t$, true, 1),
    (v_q, $t$Neue Technologien sind in der Medizin grundsätzlich risikofrei$t$, false, 2),
    (v_q, $t$Ihr Beruf hat keinerlei Bezug zu Röntgens Entdeckung$t$, false, 3),
    (v_q, $t$Sie lehnt jede neue Technologie in ihrer Praxis grundsätzlich ab$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie deutet die Erzählerin abschließend Röntgens Bescheidenheit?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Als Beweis dafür, dass sich echte wissenschaftliche Größe manchmal gerade im Verzicht zeigt$t$, true, 1),
    (v_q, $t$Als Fehler, der die medizinische Entwicklung verzögert habe$t$, false, 2),
    (v_q, $t$Als Zeichen mangelnden Interesses an seiner eigenen Entdeckung$t$, false, 3),
    (v_q, $t$Als Strategie, um später doch noch finanziell zu profitieren$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'leichtfertig' (etwas leichtfertig einsetzen)?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$unüberlegt und ohne genügend Vorsicht$t$, true, 1),
    (v_q, $t$besonders sorgfältig und vorsichtig$t$, false, 2),
    (v_q, $t$kostenlos$t$, false, 3),
    (v_q, $t$mit großem finanziellem Aufwand$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$'Dieses Wissen nicht leichtfertig einzusetzen' – welches Wort ersetzt 'leichtfertig' sinngemäß?$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$unbedacht / verantwortungslos$t$, true, 1),
    (v_q, $t$gründlich$t$, false, 2),
    (v_q, $t$langsam$t$, false, 3),
    (v_q, $t$kostenpflichtig$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$In welchem Satz wird 'leichtfertig' korrekt verwendet?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Es wäre leichtfertig, eine neue Behandlungsmethode ohne ausreichende Prüfung einzusetzen$t$, true, 1),
    (v_q, $t$Seine leichtfertige Vorbereitung auf die Prüfung führte zu einer Bestnote$t$, false, 2),
    (v_q, $t$Die leichtfertige Analyse der Daten dauerte mehrere Monate$t$, false, 3),
    (v_q, $t$Ihr leichtfertiges Verhalten zeigte außergewöhnliche Sorgfalt$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Ergänzen Sie den Passivsatz: Die Strahlung ___ 1895 von Röntgen entdeckt.$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$wurde$t$, true, 1),
    (v_q, $t$hat$t$, false, 2),
    (v_q, $t$ist$t$, false, 3),
    (v_q, $t$wird$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welcher Satz gibt korrekt indirekt wieder: 'Ich möchte, dass die Menschheit davon profitiert', sagte Röntgen?$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Röntgen sagte, er möchte, dass die Menschheit davon profitiere$t$, true, 1),
    (v_q, $t$Röntgen sagte, er möchte, dass die Menschheit davon profitiert$t$, false, 2),
    (v_q, $t$Röntgen sagt, er habe gewollt, dass die Menschheit profitiert$t$, false, 3),
    (v_q, $t$Röntgen sagte, die Menschheit hätte davon profitiert$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welcher Satz drückt korrekt ein Zustandspassiv aus: 'Die Knochen sind auf dem Bild sichtbar gemacht worden und bleiben es' (Ergebniszustand)?$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Die Knochen sind auf dem Bild deutlich sichtbar$t$, true, 1),
    (v_q, $t$Die Knochen werden auf dem Bild sichtbar gemacht$t$, false, 2),
    (v_q, $t$Die Knochen sind von Röntgen sichtbar gemacht worden geworden$t$, false, 3),
    (v_q, $t$Die Knochen wurden sichtbar gemacht haben$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$Erörtern Sie in 8 bis 12 Sätzen die ethische Verantwortung, die mit einer bahnbrechenden wissenschaftlichen Entdeckung einhergeht, ausgehend vom Beispiel Röntgens.$t$, 1, 'normal', 'production', $t$Wissenschaftliche Entdeckungen wie die Röntgens werfen grundsätzliche Fragen nach der Verantwortung von Forschenden auf, sobald ihre Erkenntnisse die Welt jenseits des Labors erreichen. Röntgens Entscheidung, seine Entdeckung nicht patentieren zu lassen, zeigt ein Verständnis von Wissenschaft als gemeinschaftlichem Gut, das dem individuellen wirtschaftlichen Nutzen übergeordnet wird. Gleichzeitig macht die Geschichte deutlich, dass selbst wohlmeinende Entscheidungen unvorhergesehene Risiken bergen können, da die gesundheitlichen Gefahren der Strahlung zum Zeitpunkt der Entdeckung noch unbekannt waren. Diese Konstellation zeigt exemplarisch, dass wissenschaftlicher Fortschritt selten eindeutig gut oder schlecht ist, sondern fast immer mit Unsicherheiten verbunden bleibt. Verantwortungsvolles Handeln kann daher nicht bedeuten, jedes Risiko im Voraus vollständig auszuschließen, sondern vielmehr, mit neuem Wissen behutsam und selbstkritisch umzugehen. Besonders bemerkenswert erscheint mir, dass Röntgen persönlich auf finanziellen Gewinn verzichtete, was seine Motivation als am Gemeinwohl orientiert erscheinen lässt. Diese Haltung steht in einem interessanten Kontrast zu vielen heutigen wissenschaftlichen und technologischen Entwicklungen, die stark von kommerziellen Interessen geprägt sind. Insgesamt zeigt das Beispiel, dass wissenschaftliche Größe sich nicht allein an der Originalität einer Entdeckung bemisst, sondern auch daran, wie verantwortungsbewusst mit ihren Folgen umgegangen wird.$t$);

END $block$;

-- 22. Der Traum, der brannte
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary) VALUES (
    'C1',
    $t$Der Traum, der brannte$t$,
    $t$Mein Großvater arbeitete als junger Ingenieur an den Luftschiffen, die einst den Himmel über dem Bodensee durchquerten, und die Fotografien, die er hinterließ, hängen noch immer in meinem Arbeitszimmer: gewaltige silberne Zigarren, die scheinbar mühelos über den Wolken schwebten.

Als Historiker, der sich seit Jahren mit der Geschichte der Luftfahrt beschäftigt, verstehe ich die Faszination, die von diesen Maschinen ausging. Graf Zeppelin verfolgte seine Idee eines lenkbaren Starrluftschiffs mit einer Hartnäckigkeit, die viele seiner Zeitgenossen für Wahnsinn hielten. Erst nach zahlreichen gescheiterten Versuchen und beinahe ruinierten Finanzen gelang der Durchbruch, und binnen weniger Jahrzehnte verkehrten diese Schiffe transatlantisch, mit einem Komfort, den kein Flugzeug jener Zeit bieten konnte.

Was mich an dieser Geschichte am meisten beschäftigt, ist das Verhältnis zwischen technischem Fortschritt und Risikobereitschaft. Die Ingenieure jener Zeit bewegten sich in einem Bereich, in dem Sicherheit noch kaum erforscht war, in dem jeder Flug zugleich ein Experiment blieb. Der brennbare Wasserstoff, der die Schiffe trug, war seit Jahren als Gefahr bekannt, wurde jedoch aus wirtschaftlichen und politischen Gründen weiterverwendet, weil das sicherere Helium den Vereinigten Staaten vorbehalten blieb.

Als die Hindenburg 1937 in Lakehurst in Flammen aufging, endete nicht nur ein einzelnes Kapitel der Luftfahrtgeschichte, sondern eine ganze Ära des Vertrauens in eine Technologie, die als unaufhaltsam gegolten hatte. Mein Großvater sprach selten über jenen Tag, aber wenn er es tat, beschrieb er weniger die Katastrophe selbst als das plötzliche Verstummen einer ganzen Branche, die sich zuvor für unbesiegbar gehalten hatte.

Heute, wenn ich über autonome Fahrzeuge oder neue Energietechnologien schreibe, denke ich oft an jene Bilder brennender Luftschiffe. Fortschritt, so lehrt mich diese Geschichte, ist nie nur eine Frage des Könnens, sondern immer auch eine Frage dessen, welches Risiko eine Gesellschaft bereit ist, im Namen des Fortschritts zu tragen.$t$,
    $t$Mon grand-père travaillait comme jeune ingénieur sur les dirigeables qui autrefois traversaient le ciel au-dessus du lac de Constance, et les photographies qu'il a laissées sont encore accrochées dans mon bureau : d'immenses cigares argentés qui semblaient flotter sans effort au-dessus des nuages.

En tant qu'historien qui s'occupe depuis des années de l'histoire de l'aviation, je comprends la fascination qu'exerçaient ces machines. Le comte Zeppelin poursuivit son idée d'un dirigeable rigide et manœuvrable avec une obstination que beaucoup de ses contemporains prenaient pour de la folie. Ce n'est qu'après de nombreuses tentatives échouées et des finances presque ruinées que la percée eut lieu, et en quelques décennies, ces vaisseaux assurèrent des liaisons transatlantiques, avec un confort qu'aucun avion de l'époque ne pouvait offrir.

Ce qui m'occupe le plus dans cette histoire, c'est la relation entre le progrès technique et la propension au risque. Les ingénieurs de l'époque évoluaient dans un domaine où la sécurité était encore à peine étudiée, où chaque vol restait en même temps une expérience. L'hydrogène inflammable qui portait ces vaisseaux était connu depuis des années comme un danger, mais il continua d'être utilisé pour des raisons économiques et politiques, parce que l'hélium, plus sûr, était réservé aux États-Unis.

Lorsque le Hindenburg s'embrasa en 1937 à Lakehurst, ce n'est pas seulement un chapitre unique de l'histoire de l'aviation qui prit fin, mais toute une ère de confiance dans une technologie qui avait été tenue pour imparable. Mon grand-père parlait rarement de ce jour-là, mais quand il le faisait, il décrivait moins la catastrophe elle-même que le silence soudain d'une industrie entière qui, jusque-là, s'était crue invincible.

Aujourd'hui, quand j'écris sur les véhicules autonomes ou les nouvelles technologies énergétiques, je pense souvent à ces images de dirigeables en flammes. Le progrès, m'enseigne cette histoire, n'est jamais seulement une question de savoir-faire, mais toujours aussi une question du risque qu'une société est prête à assumer au nom du progrès.$t$,
    $t${"1937":"1937","Mein":"mon","Großvater":"grand-père","arbeitete":"travaillait","als":"comme","junger":"jeune","Ingenieur":"ingénieur","an":"sur","den":"les","Luftschiffen":"dirigeables","die":"qui","einst":"autrefois","Himmel":"ciel","über":"au-dessus de","dem":"le","Bodensee":"lac de Constance","durchquerten":"traversaient","und":"et","Fotografien":"photographies","er":"il","hinterließ":"a laissées","hängen":"sont accrochées","noch":"encore","immer":"encore","in":"dans","meinem":"mon","Arbeitszimmer":"bureau","gewaltige":"d'immenses","silberne":"argentés","Zigarren":"cigares","scheinbar":"semblaient","mühelos":"sans effort","Wolken":"nuages","schwebten":"flottaient","Als":"en tant qu'","Historiker":"historien","der":"qui","sich":"s'","seit":"depuis","Jahren":"années","mit":"de","Geschichte":"histoire","Luftfahrt":"aviation","beschäftigt":"occupe","verstehe":"comprends","ich":"je","Faszination":"fascination","von":"de","diesen":"ces","Maschinen":"machines","ausging":"exerçaient","Graf":"comte","Zeppelin":"Zeppelin","verfolgte":"poursuivit","seine":"son","Idee":"idée","eines":"d'un","lenkbaren":"manœuvrable","Starrluftschiffs":"dirigeable rigide","einer":"avec une","Hartnäckigkeit":"obstination","viele":"beaucoup","seiner":"de ses","Zeitgenossen":"contemporains","für":"pour","Wahnsinn":"folie","hielten":"prenaient","Erst":"ce n'est qu'","nach":"après","zahlreichen":"de nombreuses","gescheiterten":"échouées","Versuchen":"tentatives","beinahe":"presque","ruinierten":"ruinées","Finanzen":"finances","gelang":"eut lieu","Durchbruch":"percée","binnen":"en l'espace de","weniger":"quelques","Jahrzehnte":"décennies","verkehrten":"assurèrent des liaisons","diese":"ces","Schiffe":"vaisseaux","transatlantisch":"transatlantiques","einem":"avec un","Komfort":"confort","kein":"aucun","Flugzeug":"avion","jener":"de l'époque","Zeit":"époque","bieten":"offrir","konnte":"pouvait","Was":"ce qui","mich":"m'","dieser":"dans cette","am":"le plus","meisten":"le plus","ist":"est","das":"la","Verhältnis":"relation","zwischen":"entre","technischem":"technique","Fortschritt":"progrès","Risikobereitschaft":"propension au risque","Die":"les","Ingenieure":"ingénieurs","bewegten":"évoluaient","Bereich":"domaine","Sicherheit":"sécurité","kaum":"à peine","erforscht":"étudiée","war":"était","jeder":"chaque","Flug":"vol","zugleich":"en même temps","ein":"une","Experiment":"expérience","blieb":"restait","Der":"l'","brennbare":"inflammable","Wasserstoff":"hydrogène","trug":"portait","Gefahr":"danger","bekannt":"connu","wurde":"fut","jedoch":"mais","aus":"pour","wirtschaftlichen":"économiques","politischen":"politiques","Gründen":"raisons","weiterverwendet":"continué d'être utilisé","weil":"parce que","sicherere":"plus sûr","Helium":"hélium","Vereinigten":"Unis","Staaten":"États","vorbehalten":"réservé","Hindenburg":"Hindenburg","Lakehurst":"Lakehurst","Flammen":"flammes","aufging":"s'embrasa","endete":"prit fin","nicht":"ne pas","nur":"seulement","einzelnes":"unique","Kapitel":"chapitre","Luftfahrtgeschichte":"histoire de l'aviation","sondern":"mais","eine":"une","ganze":"toute","Ära":"ère","des":"de","Vertrauens":"confiance","Technologie":"technologie","unaufhaltsam":"imparable","gegolten":"tenue","hatte":"avait","sprach":"parlait","selten":"rarement","jenen":"ce","Tag":"jour","aber":"mais","wenn":"quand","es":"il","tat":"faisait","beschrieb":"décrivait","Katastrophe":"catastrophe","selbst":"elle-même","plötzliche":"soudain","Verstummen":"silence","ganzen":"entière","Branche":"industrie","zuvor":"jusque-là","unbesiegbar":"invincible","gehalten":"crue","Heute":"aujourd'hui","autonome":"autonomes","Fahrzeuge":"véhicules","oder":"ou","neue":"nouvelles","Energietechnologien":"technologies énergétiques","schreibe":"écris","denke":"pense","oft":"souvent","jene":"ces","Bilder":"images","brennender":"en flammes","Luftschiffe":"dirigeables","so":"ainsi","lehrt":"enseigne","nie":"jamais","Frage":"question","Könnens":"de savoir-faire","auch":"aussi","dessen":"question de","welches":"quel","Risiko":"risque","Gesellschaft":"société","bereit":"prête","im":"au","Namen":"nom","Fortschritts":"progrès","zu":"à","tragen":"assumer"}$t$::jsonb
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie reagierten viele Zeitgenossen zunächst auf Graf Zeppelins Idee?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie hielten sie für Wahnsinn$t$, true, 1),
    (v_q, $t$Sie unterstützten sie sofort finanziell$t$, false, 2),
    (v_q, $t$Sie fanden die Idee zu wenig ehrgeizig$t$, false, 3),
    (v_q, $t$Sie ignorierten sie vollständig$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie gelang schließlich der technische Durchbruch der Luftschiffe?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Erst nach zahlreichen gescheiterten Versuchen und finanziellen Krisen$t$, true, 1),
    (v_q, $t$Sofort beim ersten Versuch ohne Rückschläge$t$, false, 2),
    (v_q, $t$Durch staatliche Enteignung des Projekts$t$, false, 3),
    (v_q, $t$Durch Zufall ohne gezielte Anstrengung$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie charakterisiert der Erzähler die Hartnäckigkeit Graf Zeppelins im Kontext seiner Zeit?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Als ein Verhalten, das von vielen Zeitgenossen zunächst als irrational wahrgenommen wurde, sich jedoch als wegweisend erwies$t$, true, 1),
    (v_q, $t$Als typisches, allgemein akzeptiertes Verhalten der Ingenieure seiner Epoche$t$, false, 2),
    (v_q, $t$Als Ergebnis staatlicher Anordnung ohne persönliches Engagement$t$, false, 3),
    (v_q, $t$Als Reaktion auf bereits etablierte, erfolgreiche Konkurrenzprojekte$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum wurde weiterhin der brennbare Wasserstoff statt des sichereren Heliums verwendet?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Aus wirtschaftlichen und politischen Gründen, da Helium den USA vorbehalten war$t$, true, 1),
    (v_q, $t$Weil Wasserstoff billiger in der Herstellung war als Helium$t$, false, 2),
    (v_q, $t$Weil niemand von der Gefahr des Wasserstoffs wusste$t$, false, 3),
    (v_q, $t$Weil Helium technisch nicht verfügbar war$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie beschreibt der Text die Arbeitsbedingungen der frühen Luftschiff-Ingenieure?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie bewegten sich in einem Bereich, in dem jeder Flug faktisch ein Experiment war$t$, true, 1),
    (v_q, $t$Sie arbeiteten nach vollständig etablierten Sicherheitsstandards$t$, false, 2),
    (v_q, $t$Sie hatten keinerlei Risiko zu befürchten$t$, false, 3),
    (v_q, $t$Sie waren ausschließlich mit theoretischer Forschung beschäftigt$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Kritik lässt sich implizit aus der Erwähnung des Wasserstoffproblems ableiten?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Wirtschaftliche und politische Zwänge führten dazu, ein bekanntes Sicherheitsrisiko bewusst in Kauf zu nehmen$t$, true, 1),
    (v_q, $t$Die Gefahr des Wasserstoffs war zur damaligen Zeit gänzlich unbekannt$t$, false, 2),
    (v_q, $t$Die amerikanische Heliumpolitik hatte keinerlei Einfluss auf die Katastrophe$t$, false, 3),
    (v_q, $t$Technische Alternativen zum Wasserstoff existierten damals nicht$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was geschah 1937 mit der Hindenburg?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie ging in Lakehurst in Flammen auf$t$, true, 1),
    (v_q, $t$Sie landete erfolgreich in New York$t$, false, 2),
    (v_q, $t$Sie wurde zum letzten Mal in Deutschland gezeigt$t$, false, 3),
    (v_q, $t$Sie wurde nach Europa zurückgeschickt$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutete die Katastrophe von 1937 laut dem Text für die gesamte Branche?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Ein plötzliches Ende des Vertrauens in eine zuvor als unaufhaltsam geltende Technologie$t$, true, 1),
    (v_q, $t$Lediglich einen kurzfristigen finanziellen Rückschlag ohne weitere Folgen$t$, false, 2),
    (v_q, $t$Den Beginn einer neuen, noch erfolgreicheren Phase der Luftschifffahrt$t$, false, 3),
    (v_q, $t$Keine wesentliche Veränderung der öffentlichen Wahrnehmung$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche abschließende Lehre zieht der Erzähler aus der Geschichte der Zeppeline für heutige Technologien?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Fortschritt ist stets auch eine Frage, welches Risiko eine Gesellschaft im Namen des Fortschritts zu tragen bereit ist$t$, true, 1),
    (v_q, $t$Neue Technologien sollten grundsätzlich vermieden werden, um Katastrophen zu verhindern$t$, false, 2),
    (v_q, $t$Historische Katastrophen haben keine Relevanz für heutige technologische Entscheidungen$t$, false, 3),
    (v_q, $t$Technischer Fortschritt ist ausschließlich eine Frage des ingenieurtechnischen Könnens$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'die Hartnäckigkeit'?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$das beharrliche Festhalten an einem Ziel trotz Widerständen$t$, true, 1),
    (v_q, $t$die schnelle Aufgabe eines Vorhabens$t$, false, 2),
    (v_q, $t$die finanzielle Unterstützung eines Projekts$t$, false, 3),
    (v_q, $t$die technische Fehlerquote einer Maschine$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$'Graf Zeppelin verfolgte seine Idee mit einer Hartnäckigkeit, die viele für Wahnsinn hielten' – welches Wort passt als Synonym?$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Beharrlichkeit / Ausdauer$t$, true, 1),
    (v_q, $t$Gleichgültigkeit$t$, false, 2),
    (v_q, $t$Vorsicht$t$, false, 3),
    (v_q, $t$Zufälligkeit$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$In welchem Satz wird 'Hartnäckigkeit' korrekt und sinngemäß verwendet?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Nur dank ihrer Hartnäckigkeit gelang es ihr, das Projekt trotz zahlreicher Rückschläge zu retten$t$, true, 1),
    (v_q, $t$Seine Hartnäckigkeit führte dazu, dass er das Vorhaben nach dem ersten Hindernis sofort aufgab$t$, false, 2),
    (v_q, $t$Die Hartnäckigkeit des Materials machte es besonders leicht formbar$t$, false, 3),
    (v_q, $t$Ihre Hartnäckigkeit zeigte sich in der schnellen Zustimmung zu jedem Vorschlag$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Ergänzen Sie den Passivsatz: Das sichere Helium ___ den Vereinigten Staaten vorbehalten.$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$war$t$, true, 1),
    (v_q, $t$hatte$t$, false, 2),
    (v_q, $t$hat$t$, false, 3),
    (v_q, $t$wurde gewesen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welcher Satz gibt korrekt indirekt wieder, was Zeitgenossen dachten: 'Das Projekt ist Wahnsinn', dachten viele. → Viele dachten, das Projekt ___ Wahnsinn.$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$sei$t$, true, 1),
    (v_q, $t$ist$t$, false, 2),
    (v_q, $t$wäre gewesen$t$, false, 3),
    (v_q, $t$war gewesen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welcher Satz drückt korrekt ein erweitertes Partizipialattribut aus: 'ein Wasserstoff, der seit Jahren als Gefahr bekannt war, aber weiterverwendet wurde'?$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$ein seit Jahren als Gefahr bekannter, dennoch weiterverwendeter Wasserstoff$t$, true, 1),
    (v_q, $t$ein als Gefahr seit Jahren bekannt weiterverwendender Wasserstoff$t$, false, 2),
    (v_q, $t$ein Wasserstoff, bekannt weiterzuverwenden als Gefahr$t$, false, 3),
    (v_q, $t$ein weiterverwendeter, seit Jahren gefährdender bekannter Wasserstoff$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$Diskutieren Sie in 8 bis 12 Sätzen, inwiefern die Geschichte der Zeppeline als Lehrstück für den Umgang mit technologischem Risiko heute dienen kann.$t$, 1, 'normal', 'production', $t$Die Geschichte der Zeppeline verdeutlicht exemplarisch, wie technologischer Fortschritt und gesellschaftliche Risikobereitschaft eng miteinander verknüpft sind. Graf Zeppelins Hartnäckigkeit gegenüber anfänglichem Spott zeigt, dass bahnbrechende Innovationen oft erst im Nachhinein als visionär gelten, während sie zur Zeit ihrer Entstehung als riskant oder sogar unsinnig wahrgenommen werden. Besonders aufschlussreich ist der Umgang mit dem bekannten Risiko des brennbaren Wasserstoffs, das aus wirtschaftlichen und politischen Erwägungen in Kauf genommen wurde, obwohl eine sicherere Alternative existierte. Dieses Muster lässt sich auch in heutigen technologischen Debatten wiederfinden, etwa wenn wirtschaftliche Interessen bekannte Sicherheitsrisiken neuer Technologien überlagern. Die Katastrophe der Hindenburg zeigt zudem, wie schnell öffentliches Vertrauen in eine als unaufhaltsam geltende Technologie zusammenbrechen kann, sobald ein einzelnes Ereignis die zugrunde liegenden Risiken sichtbar macht. Daraus lässt sich die Lehre ziehen, dass technologischer Fortschritt stets von einer ehrlichen Risikoabwägung begleitet werden sollte, statt Risiken aus kurzfristigen Interessen zu verharmlosen. Gleichzeitig warnt die Geschichte davor, aus einer einzelnen Katastrophe voreilig ein generelles Verdikt gegen eine ganze Technologie abzuleiten. Insgesamt zeigt das Beispiel, dass verantwortungsvoller Fortschritt technisches Können mit gesellschaftlicher Reflexion über akzeptable Risiken verbinden muss.$t$);

END $block$;

-- 23. Ein Hörsaal mit Jahrhunderten
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary) VALUES (
    'C1',
    $t$Ein Hörsaal mit Jahrhunderten$t$,
    $t$Wenn ich morgens durch die Altstadt zur Universität gehe, vorbei an Gassen, die seit Jahrhunderten kaum ihre Form verändert haben, spüre ich manchmal eine seltsame Doppelung der Zeit: Ich bin auf dem Weg zu einer Vorlesung über moderne Philosophie, und doch laufe ich über Pflastersteine, die schon Studenten vor sechshundert Jahren betreten haben.

Die Universität Heidelberg wurde 1386 gegründet, als eine der ersten ihrer Art im deutschsprachigen Raum, und ich unterrichte seit über zwanzig Jahren in Hörsälen, deren Wände von Generationen von Gelehrten geprägt wurden. Manche Kollegen empfinden diese Tradition als Last, als etwas, dem man ständig gerecht werden muss. Ich empfinde sie eher als stillen Dialog, der über die Zeit hinweg geführt wird, mit Denkern, die längst gestorben sind, deren Fragen aber erstaunlich aktuell bleiben.

Besonders bewegt mich der Gedanke, dass diese Institution Kriege, Reformationen und politische Umbrüche überdauert hat, ohne ihre grundlegende Funktion zu verlieren: einen Raum zu bieten, in dem junge Menschen lernen, selbstständig zu denken. Natürlich hat sich vieles verändert. Wo einst nur wenige privilegierte Männer studieren durften, sitzen heute Studierende aus aller Welt in denselben Räumen, mit Zugang zu einem Wissen, von dem frühere Generationen nicht einmal träumen konnten.

Und doch bleibt etwas erstaunlich konstant: die Bereitschaft, eine Frage länger auszuhalten, als es bequem wäre, bevor man eine Antwort sucht. Wenn ich mit meinen Studierenden diskutiere, erinnere ich mich oft daran, dass ich nur ein vorübergehender Teil einer viel längeren Kette bin. Meine Aufgabe besteht nicht darin, endgültige Wahrheiten weiterzugeben, sondern die Fähigkeit zu vermitteln, überhaupt fragen zu können. Vielleicht ist genau das die eigentliche Bedeutung einer Universität, die seit über sechshundert Jahren besteht: nicht die Antworten, die sie hervorgebracht hat, sondern die ununterbrochene Übung im Zweifeln, die sie von einer Generation zur nächsten weiterreicht.$t$,
    $t$Quand je vais le matin à travers la vieille ville jusqu'à l'université, passant devant des ruelles qui n'ont presque pas changé de forme depuis des siècles, je ressens parfois un étrange dédoublement du temps : je suis en route vers un cours sur la philosophie moderne, et pourtant je marche sur des pavés que des étudiants ont déjà foulés il y a six cents ans.

L'université de Heidelberg fut fondée en 1386, comme l'une des premières de son genre dans l'espace germanophone, et j'enseigne depuis plus de vingt ans dans des amphithéâtres dont les murs ont été marqués par des générations de savants. Certains collègues ressentent cette tradition comme un fardeau, comme quelque chose à quoi il faut sans cesse se montrer à la hauteur. Je la ressens plutôt comme un dialogue silencieux, mené à travers le temps, avec des penseurs morts depuis longtemps, dont les questions restent pourtant étonnamment actuelles.

Ce qui me touche particulièrement, c'est l'idée que cette institution a traversé guerres, réformes et bouleversements politiques sans perdre sa fonction fondamentale : offrir un espace où de jeunes gens apprennent à penser de façon autonome. Bien sûr, beaucoup de choses ont changé. Là où autrefois seuls quelques hommes privilégiés avaient le droit d'étudier, des étudiants du monde entier siègent aujourd'hui dans les mêmes salles, avec accès à un savoir dont les générations précédentes ne pouvaient même pas rêver.

Et pourtant, quelque chose demeure étonnamment constant : la disposition à supporter une question plus longtemps qu'il ne serait confortable, avant d'en chercher la réponse. Quand je discute avec mes étudiants, je me rappelle souvent que je ne suis qu'une partie passagère d'une chaîne bien plus longue. Ma tâche ne consiste pas à transmettre des vérités définitives, mais à faire passer la capacité de pouvoir seulement poser des questions. C'est peut-être précisément là la véritable signification d'une université qui existe depuis plus de six cents ans : non pas les réponses qu'elle a produites, mais l'exercice ininterrompu du doute qu'elle transmet d'une génération à la suivante.$t$,
    $t${"1386":"1386","Wenn":"quand","ich":"je","morgens":"le matin","durch":"à travers","die":"la","Altstadt":"vieille ville","zur":"vers l'","Universität":"université","gehe":"vais","vorbei":"devant","an":"devant","Gassen":"ruelles","seit":"depuis","Jahrhunderten":"siècles","kaum":"presque pas","ihre":"leur","Form":"forme","verändert":"changé","haben":"ont","spüre":"ressens","manchmal":"parfois","eine":"un","seltsame":"étrange","Doppelung":"dédoublement","der":"du","Zeit":"temps","Ich":"je","bin":"suis","auf":"en route","dem":"le","Weg":"chemin","zu":"vers","einer":"un","Vorlesung":"cours","über":"sur","moderne":"moderne","Philosophie":"philosophie","und":"et","doch":"pourtant","laufe":"marche","Pflastersteine":"pavés","schon":"déjà","Studenten":"étudiants","vor":"il y a","sechshundert":"six cents","Jahren":"ans","betreten":"foulés","Die":"l'","Heidelberg":"Heidelberg","wurde":"fut","gegründet":"fondée","als":"comme","ersten":"une des premières","ihrer":"de son","Art":"genre","im":"dans l'","deutschsprachigen":"germanophone","Raum":"espace","unterrichte":"enseigne","zwanzig":"vingt","in":"dans","Hörsälen":"amphithéâtres","deren":"dont","Wände":"murs","von":"par","Generationen":"générations","Gelehrten":"savants","geprägt":"marqués","wurden":"ont été","Manche":"certains","Kollegen":"collègues","empfinden":"ressentent","diese":"cette","Tradition":"tradition","Last":"fardeau","etwas":"quelque chose","man":"on","ständig":"sans cesse","gerecht":"à la hauteur","werden":"se montrer","muss":"faut","empfinde":"ressens","sie":"la","eher":"plutôt","stillen":"silencieux","Dialog":"dialogue","hinweg":"à travers","geführt":"mené","wird":"est","mit":"avec","Denkern":"penseurs","längst":"depuis longtemps","gestorben":"morts","sind":"sont","Fragen":"questions","aber":"mais","erstaunlich":"étonnamment","aktuell":"actuelles","bleiben":"restent","Besonders":"particulièrement","bewegt":"touche","mich":"me","Gedanke":"idée","dass":"que","Institution":"institution","Kriege":"guerres","Reformationen":"réformes","politische":"politiques","Umbrüche":"bouleversements","überdauert":"traversé","hat":"a","ohne":"sans","grundlegende":"fondamentale","Funktion":"fonction","verlieren":"perdre","einen":"un","bieten":"offrir","junge":"jeunes","Menschen":"gens","lernen":"apprennent","selbstständig":"de façon autonome","denken":"penser","Natürlich":"bien sûr","sich":"a changé","vieles":"beaucoup de choses","Wo":"là où","einst":"autrefois","nur":"seulement","wenige":"quelques","privilegierte":"privilégiés","Männer":"hommes","studieren":"étudier","durften":"avaient le droit","sitzen":"siègent","heute":"aujourd'hui","Studierende":"étudiants","aus":"du","aller":"entier","Welt":"monde","denselben":"les mêmes","Räumen":"salles","Zugang":"accès","einem":"à un","Wissen":"savoir","frühere":"précédentes","nicht":"ne pas","einmal":"même","träumen":"rêver","konnten":"pouvaient","Und":"et","bleibt":"demeure","konstant":"constant","Bereitschaft":"disposition","Frage":"question","länger":"plus longtemps","auszuhalten":"supporter","es":"il","bequem":"confortable","wäre":"serait","bevor":"avant","Antwort":"réponse","sucht":"chercher","meinen":"mes","Studierenden":"étudiants","diskutiere":"discute","erinnere":"rappelle","oft":"souvent","daran":"que","ein":"une","vorübergehender":"passagère","Teil":"partie","viel":"bien","längeren":"plus longue","Kette":"chaîne","Meine":"ma","Aufgabe":"tâche","besteht":"consiste","darin":"en cela","endgültige":"définitives","Wahrheiten":"vérités","weiterzugeben":"transmettre","sondern":"mais","Fähigkeit":"capacité","vermitteln":"faire passer","überhaupt":"seulement","fragen":"poser des questions","können":"pouvoir","Vielleicht":"peut-être","ist":"est","genau":"précisément","das":"la","eigentliche":"véritable","Bedeutung":"signification","Antworten":"réponses","hervorgebracht":"produites","ununterbrochene":"ininterrompu","Übung":"exercice","Zweifeln":"doute","Generation":"génération","nächsten":"suivante","weiterreicht":"transmet"}$t$::jsonb
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wann wurde die Universität Heidelberg gegründet?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$1386$t$, true, 1),
    (v_q, $t$1517$t$, false, 2),
    (v_q, $t$1789$t$, false, 3),
    (v_q, $t$1900$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie empfindet die Erzählerin die lange Tradition der Universität?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Als stillen Dialog mit Denkern vergangener Zeiten, nicht als Last$t$, true, 1),
    (v_q, $t$Als überwältigende Last, der man kaum gerecht werden kann$t$, false, 2),
    (v_q, $t$Als bedeutungslos für ihre heutige Lehre$t$, false, 3),
    (v_q, $t$Als Hindernis für moderne Forschung$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie unterscheidet sich die Haltung der Erzählerin von der 'mancher Kollegen' gegenüber der Tradition?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Während manche Kollegen die Tradition als Last empfinden, sieht sie darin einen bereichernden Dialog über die Zeit hinweg$t$, true, 1),
    (v_q, $t$Beide Positionen fallen im Text vollkommen zusammen$t$, false, 2),
    (v_q, $t$Die Erzählerin lehnt jede Form von Tradition entschieden ab$t$, false, 3),
    (v_q, $t$Die Kollegen sehen in der Tradition ausschließlich einen touristischen Vorteil$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was hat die Universität laut Text überdauert?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Kriege, Reformationen und politische Umbrüche$t$, true, 1),
    (v_q, $t$Nur wirtschaftliche Krisen$t$, false, 2),
    (v_q, $t$Ausschließlich religiöse Konflikte$t$, false, 3),
    (v_q, $t$Keine besonderen historischen Ereignisse$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie hat sich der Zugang zur Universität seit ihrer Gründung verändert?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Früher durften nur wenige privilegierte Männer studieren, heute Studierende aus aller Welt$t$, true, 1),
    (v_q, $t$Der Zugang war schon immer für alle Menschen gleichermaßen offen$t$, false, 2),
    (v_q, $t$Der Zugang ist heute stärker eingeschränkt als früher$t$, false, 3),
    (v_q, $t$Es gab nie nennenswerte Veränderungen beim Zugang$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche grundlegende Funktion der Universität sieht die Erzählerin trotz aller historischen Veränderungen als konstant an?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Einen Raum zu bieten, in dem junge Menschen lernen, selbstständig zu denken$t$, true, 1),
    (v_q, $t$Die Ausbildung einer kleinen privilegierten Elite$t$, false, 2),
    (v_q, $t$Die reine Bewahrung historischer Gebäude$t$, false, 3),
    (v_q, $t$Die Vermittlung ausschließlich religiösen Wissens$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was sieht die Erzählerin als ihre eigentliche Aufgabe als Professorin?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Die Fähigkeit zu vermitteln, überhaupt fragen zu können$t$, true, 1),
    (v_q, $t$Möglichst viele endgültige Antworten zu liefern$t$, false, 2),
    (v_q, $t$Die Studierenden vor allem zu prüfen$t$, false, 3),
    (v_q, $t$Die alten Gebäude der Universität zu erhalten$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet der Ausdruck, sie sei 'nur ein vorübergehender Teil einer viel längeren Kette'?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie versteht sich als Glied einer über Generationen fortgesetzten intellektuellen Tradition$t$, true, 1),
    (v_q, $t$Sie plant, die Universität bald zu verlassen$t$, false, 2),
    (v_q, $t$Sie hält ihre eigene Rolle für bedeutungslos$t$, false, 3),
    (v_q, $t$Sie sieht sich als letzte Vertreterin einer endenden Tradition$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie interpretiert die Erzählerin abschließend die 'eigentliche Bedeutung' der jahrhundertealten Universität?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Nicht in den hervorgebrachten Antworten, sondern in der weitergereichten Übung im Zweifeln$t$, true, 1),
    (v_q, $t$Ausschließlich in der Anzahl bedeutender Absolventen$t$, false, 2),
    (v_q, $t$In der architektonischen Schönheit der Gebäude$t$, false, 3),
    (v_q, $t$In der finanziellen Bedeutung für die Stadt Heidelberg$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'überdauern'?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$über einen langen Zeitraum bestehen bleiben, trotz Widrigkeiten$t$, true, 1),
    (v_q, $t$plötzlich verschwinden$t$, false, 2),
    (v_q, $t$sich stark verändern$t$, false, 3),
    (v_q, $t$finanziell scheitern$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$'Diese Institution hat Kriege und Umbrüche überdauert' – welches Wort passt als Synonym für 'überdauern'?$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$überstehen / fortbestehen$t$, true, 1),
    (v_q, $t$sich auflösen$t$, false, 2),
    (v_q, $t$untergehen$t$, false, 3),
    (v_q, $t$sich beschleunigen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$In welchem Satz wird 'überdauern' korrekt verwendet?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Trotz zahlreicher politischer Krisen hat die Institution alle Umbrüche überdauert$t$, true, 1),
    (v_q, $t$Die Institution überdauerte innerhalb weniger Monate ihre eigene Gründung$t$, false, 2),
    (v_q, $t$Er überdauerte die Prüfung mit Bestnoten$t$, false, 3),
    (v_q, $t$Das Gebäude überdauerte gestern seine Eröffnung$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Ergänzen Sie: Die Universität ___ 1386 gegründet.$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$wurde$t$, true, 1),
    (v_q, $t$hat$t$, false, 2),
    (v_q, $t$ist$t$, false, 3),
    (v_q, $t$wird$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welcher Satz enthält ein korrektes erweitertes Attribut zu 'Hörsäle, deren Wände von Generationen von Gelehrten geprägt wurden'?$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$von Generationen von Gelehrten geprägte Hörsäle$t$, true, 1),
    (v_q, $t$von Generationen von Gelehrten prägende Hörsäle$t$, false, 2),
    (v_q, $t$geprägte Gelehrte von Hörsälen Generationen$t$, false, 3),
    (v_q, $t$Hörsäle, prägend Generationen von Gelehrten$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welcher Satz gibt korrekt indirekt wieder: 'Ich bin nur ein vorübergehender Teil einer längeren Kette', sagt die Professorin?$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Die Professorin sagt, sie sei nur ein vorübergehender Teil einer längeren Kette$t$, true, 1),
    (v_q, $t$Die Professorin sagt, sie ist nur ein vorübergehender Teil einer längeren Kette$t$, false, 2),
    (v_q, $t$Die Professorin sagte, sie wäre ein vorübergehender Teil gewesen$t$, false, 3),
    (v_q, $t$Die Professorin sagt, sie hat nur einen vorübergehenden Teil gehabt$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$Erörtern Sie in 8 bis 12 Sätzen, welche Bedeutung jahrhundertealte Bildungsinstitutionen für die heutige Gesellschaft noch haben können.$t$, 1, 'normal', 'production', $t$Jahrhundertealte Bildungsinstitutionen wie die Universität Heidelberg stellen eine besondere Form kultureller Kontinuität dar, die über einzelne politische Systeme und historische Epochen hinausreicht. Ihr Wert liegt nicht allein in der physischen Bewahrung historischer Gebäude, sondern in der ununterbrochenen Weitergabe einer intellektuellen Haltung von einer Generation zur nächsten. Besonders bemerkenswert erscheint mir der Gedanke, dass sich die grundlegende Funktion einer solchen Institution kaum verändert hat, obwohl sich Zugang, Lehrinhalte und gesellschaftlicher Kontext radikal gewandelt haben. Während früher nur eine kleine privilegierte Gruppe studieren durfte, ermöglichen solche Universitäten heute einer viel breiteren und internationaleren Studierendenschaft den Zugang zu Wissen. Diese demokratisierende Entwicklung zeigt, dass Tradition und Fortschritt sich nicht zwangsläufig widersprechen müssen, sondern sich gegenseitig ergänzen können. Gleichzeitig besteht die Gefahr, dass alte Institutionen sich zu sehr auf ihre Geschichte berufen, statt sich den Herausforderungen der Gegenwart zu stellen. Entscheidend scheint mir daher, dass eine Universität ihre Tradition nicht als starres Erbe versteht, sondern als lebendigen Prozess des Fragens, der stets neu angeeignet werden muss. Insofern liegt der eigentliche Wert solcher Institutionen weniger in bewahrten Antworten als in der fortgesetzten Fähigkeit, relevante Fragen zu stellen.$t$);

END $block$;

-- 24. Der Geschmack der Herkunft
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary) VALUES (
    'C1',
    $t$Der Geschmack der Herkunft$t$,
    $t$Meine Großmutter stellte ihre Bratwürste noch selbst her, in einer kleinen Küche in Thüringen, mit einem Rezept, das angeblich seit Jahrhunderten in der Familie weitergegeben wurde, obwohl ich bis heute nicht sicher bin, wie viel davon Legende und wie viel Wahrheit ist.

Als Köchin, die inzwischen selbst ein kleines Lokal führt, beschäftigt mich diese Unsicherheit weniger, als man annehmen könnte. Die deutsche Wurstkultur, so vielfältig sie regional erscheint, mit über tausend registrierten Sorten, lebt ohnehin von einer Mischung aus Überlieferung und Erfindung. Jede Region beharrt darauf, die einzig authentische Bratwurst zu besitzen, Thüringen ebenso wie Nürnberg oder Franken, und jede dieser Behauptungen ist zugleich wahr und konstruiert, geformt durch Marketing, Stadtgeschichte und schlicht durch Stolz.

Was mich an dieser Küche fasziniert, ist ihre Funktion als Träger von Erinnerung. Wenn ich heute eine Wurst nach dem Rezept meiner Großmutter zubereite, rieche ich nicht nur Majoran und geräuchertes Fleisch, sondern erinnere mich an eine Küche, einen Tisch, ein Gespräch, das längst verklungen ist. Essen speichert Vergangenheit auf eine Weise, die kein Foto und kein Text leisten kann, weil es den Körper unmittelbar einbezieht.

Gleichzeitig beobachte ich mit einer gewissen Skepsis, wie diese Tradition zunehmend zur Marke wird, verpackt und exportiert, oft weit entfernt von den Bedingungen, unter denen sie einst entstand. Eine Bratwurst, industriell gefertigt und weltweit verschifft, trägt zwar denselben Namen, aber nicht mehr dieselbe Geschichte. Ich will diese Entwicklung nicht pauschal verurteilen, denn auch meine Großmutter hätte sich vermutlich über den heutigen Wohlstand gefreut. Doch wenn ich in meiner Küche stehe, versuche ich bewusst, mehr zu vermitteln als einen Geschmack: eine Verbindung zu einem Ort, einer Zeit, einer Herkunft, die sich nicht beliebig reproduzieren lässt, so sehr sich der Markt auch darum bemüht.$t$,
    $t$Ma grand-mère faisait elle-même ses saucisses grillées, dans une petite cuisine de Thuringe, selon une recette soi-disant transmise depuis des siècles dans la famille, bien que je ne sois toujours pas sûre aujourd'hui de la part de légende et de la part de vérité qu'il y a là-dedans.

En tant que cuisinière qui tient désormais elle-même un petit restaurant, cette incertitude me préoccupe moins qu'on pourrait le penser. La culture allemande de la saucisse, aussi diverse qu'elle paraisse selon les régions, avec plus de mille variétés enregistrées, vit de toute façon d'un mélange de tradition et d'invention. Chaque région insiste pour posséder la seule et unique saucisse grillée authentique, la Thuringe autant que Nuremberg ou la Franconie, et chacune de ces affirmations est à la fois vraie et construite, façonnée par le marketing, l'histoire de la ville et tout simplement par la fierté.

Ce qui me fascine dans cette cuisine, c'est sa fonction de porteuse de mémoire. Quand je prépare aujourd'hui une saucisse selon la recette de ma grand-mère, je ne sens pas seulement la marjolaine et la viande fumée, mais je me souviens d'une cuisine, d'une table, d'une conversation depuis longtemps éteinte. La nourriture conserve le passé d'une manière qu'aucune photo et aucun texte ne peuvent atteindre, parce qu'elle implique directement le corps.

En même temps, j'observe avec un certain scepticisme comment cette tradition devient de plus en plus une marque, emballée et exportée, souvent bien loin des conditions dans lesquelles elle est née autrefois. Une saucisse grillée, fabriquée industriellement et expédiée dans le monde entier, porte certes le même nom, mais plus la même histoire. Je ne veux pas condamner cette évolution en bloc, car ma grand-mère elle-même se serait sans doute réjouie de la prospérité d'aujourd'hui. Mais quand je me tiens dans ma cuisine, j'essaie consciemment de transmettre plus qu'un goût : un lien avec un lieu, une époque, une origine qui ne se laisse pas reproduire à volonté, si fort que le marché s'y efforce.$t$,
    $t${"Meine":"ma","Großmutter":"grand-mère","stellte":"faisait","ihre":"ses","Bratwürste":"saucisses grillées","noch":"encore","selbst":"elle-même","her":"faire","in":"dans","einer":"une","kleinen":"petite","Küche":"cuisine","Thüringen":"Thuringe","mit":"avec","einem":"une","Rezept":"recette","das":"qui","angeblich":"soi-disant","seit":"depuis","Jahrhunderten":"siècles","der":"la","Familie":"famille","weitergegeben":"transmise","wurde":"était","obwohl":"bien que","ich":"je","bis":"jusqu'à","heute":"aujourd'hui","nicht":"ne pas","sicher":"sûre","bin":"suis","wie":"combien","viel":"beaucoup","davon":"de cela","Legende":"légende","und":"et","Wahrheit":"vérité","ist":"est","Als":"en tant que","Köchin":"cuisinière","die":"qui","inzwischen":"désormais","ein":"un","kleines":"petit","Lokal":"restaurant","führt":"tient","beschäftigt":"préoccupe","mich":"me","diese":"cette","Unsicherheit":"incertitude","weniger":"moins","als":"qu'","man":"on","annehmen":"penser","könnte":"pourrait","Die":"la","deutsche":"allemande","Wurstkultur":"culture de la saucisse","so":"aussi","vielfältig":"diverse","sie":"elle","regional":"selon les régions","erscheint":"paraisse","über":"plus de","tausend":"mille","registrierten":"enregistrées","Sorten":"variétés","lebt":"vit","ohnehin":"de toute façon","von":"de","Mischung":"mélange","aus":"de","Überlieferung":"tradition","Erfindung":"invention","Jede":"chaque","Region":"région","beharrt":"insiste","darauf":"pour","einzig":"seule","authentische":"authentique","Bratwurst":"saucisse grillée","zu":"à","besitzen":"posséder","ebenso":"autant","Nürnberg":"Nuremberg","oder":"ou","Franken":"Franconie","jede":"chacune","dieser":"de ces","Behauptungen":"affirmations","zugleich":"à la fois","wahr":"vraie","konstruiert":"construite","geformt":"façonnée","durch":"par","Marketing":"marketing","Stadtgeschichte":"histoire de la ville","schlicht":"tout simplement","Stolz":"fierté","Was":"ce qui","an":"dans","fasziniert":"fascine","Funktion":"fonction","Träger":"porteuse","Erinnerung":"mémoire","Wenn":"quand","eine":"une","Wurst":"saucisse","nach":"selon","dem":"la","meiner":"de ma","zubereite":"prépare","rieche":"sens","nur":"seulement","Majoran":"marjolaine","geräuchertes":"fumée","Fleisch":"viande","sondern":"mais","erinnere":"souviens","einen":"une","Tisch":"table","Gespräch":"conversation","längst":"depuis longtemps","verklungen":"éteinte","Essen":"nourriture","speichert":"conserve","Vergangenheit":"passé","auf":"d'une","Weise":"manière","kein":"aucune","Foto":"photo","Text":"texte","leisten":"atteindre","kann":"peut","weil":"parce que","es":"elle","den":"le","Körper":"corps","unmittelbar":"directement","einbezieht":"implique","Gleichzeitig":"en même temps","beobachte":"observe","gewissen":"certain","Skepsis":"scepticisme","Tradition":"tradition","zunehmend":"de plus en plus","zur":"en","Marke":"marque","wird":"devient","verpackt":"emballée","exportiert":"exportée","oft":"souvent","weit":"bien","entfernt":"loin","Bedingungen":"conditions","unter":"dans","denen":"lesquelles","einst":"autrefois","entstand":"est née","Eine":"une","industriell":"industriellement","gefertigt":"fabriquée","weltweit":"dans le monde entier","verschifft":"expédiée","trägt":"porte","zwar":"certes","denselben":"le même","Namen":"nom","aber":"mais","mehr":"plus","dieselbe":"la même","Geschichte":"histoire","Ich":"je","will":"veux","Entwicklung":"évolution","pauschal":"en bloc","verurteilen":"condamner","denn":"car","auch":"aussi","meine":"ma","hätte":"se serait","vermutlich":"sans doute","heutigen":"d'aujourd'hui","Wohlstand":"prospérité","gefreut":"réjouie","Doch":"mais","wenn":"quand","sich":"se","stehe":"me tiens","versuche":"essaie","bewusst":"consciemment","vermitteln":"transmettre","Geschmack":"goût","Verbindung":"lien","Ort":"lieu","Zeit":"époque","Herkunft":"origine","beliebig":"à volonté","reproduzieren":"reproduire","lässt":"laisse","sehr":"si fort","Markt":"marché","darum":"s'y","bemüht":"efforce"}$t$::jsonb
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wo lernte die Erzählerin ursprünglich die Bratwurstzubereitung kennen?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$In der Küche ihrer Großmutter in Thüringen$t$, true, 1),
    (v_q, $t$In einer Kochschule in Berlin$t$, false, 2),
    (v_q, $t$Aus einem Kochbuch, das sie zufällig fand$t$, false, 3),
    (v_q, $t$Von einem befreundeten Koch in Nürnberg$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie beschreibt die Erzählerin die deutsche Wurstkultur allgemein?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Als eine Mischung aus Überlieferung und Erfindung mit großer regionaler Vielfalt$t$, true, 1),
    (v_q, $t$Als eine einheitliche, überall identische Tradition$t$, false, 2),
    (v_q, $t$Als eine rein moderne Erfindung ohne historische Wurzeln$t$, false, 3),
    (v_q, $t$Als eine ausschließlich auf Thüringen beschränkte Tradition$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie bewertet die Erzählerin die konkurrierenden regionalen Ansprüche auf die 'einzig authentische' Bratwurst?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie hält diese Ansprüche für zugleich wahr und konstruiert, geprägt von Marketing und Stolz$t$, true, 1),
    (v_q, $t$Sie hält nur den Anspruch Thüringens für berechtigt$t$, false, 2),
    (v_q, $t$Sie hält alle regionalen Ansprüche für vollständig frei erfunden$t$, false, 3),
    (v_q, $t$Sie meint, es gebe historisch belegbar nur eine einzige echte Bratwurst$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Woran erinnert sich die Erzählerin, wenn sie die Wurst nach dem Rezept der Großmutter zubereitet?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$An eine Küche, einen Tisch und ein vergangenes Gespräch$t$, true, 1),
    (v_q, $t$An eine Reise ins Ausland$t$, false, 2),
    (v_q, $t$An ein bestimmtes Kochbuch$t$, false, 3),
    (v_q, $t$An ihre erste Anstellung als Köchin$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche besondere Funktion schreibt die Erzählerin dem Essen im Vergleich zu Fotos oder Texten zu?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Essen speichert Vergangenheit auf eine Weise, die den Körper unmittelbar einbezieht$t$, true, 1),
    (v_q, $t$Essen ist als Erinnerungsträger generell weniger wirksam als Fotos$t$, false, 2),
    (v_q, $t$Essen kann Vergangenheit nur symbolisch, nie sinnlich vermitteln$t$, false, 3),
    (v_q, $t$Essen hat für sie keinerlei Bezug zur Erinnerung$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie lässt sich die Aussage 'Essen speichert Vergangenheit... weil es den Körper unmittelbar einbezieht' interpretieren?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sinnliche, körperlich erfahrbare Erinnerungen wie Geruch und Geschmack wirken unmittelbarer als rein visuelle oder textliche Aufzeichnungen$t$, true, 1),
    (v_q, $t$Fotos und Texte sind grundsätzlich unzuverlässiger als kulinarische Erinnerungen$t$, false, 2),
    (v_q, $t$Der Körper speichert Erinnerungen unabhängig von jeder sinnlichen Erfahrung$t$, false, 3),
    (v_q, $t$Essen kann Erinnerungen nur bei professionellen Köchen wachrufen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was beobachtet die Erzählerin mit einer gewissen Skepsis?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Dass die Tradition zunehmend zur exportierten Marke wird$t$, true, 1),
    (v_q, $t$Dass niemand mehr Bratwurst isst$t$, false, 2),
    (v_q, $t$Dass ihre Großmutter das Rezept geheim hielt$t$, false, 3),
    (v_q, $t$Dass Bratwurst in Deutschland verboten wird$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was versucht die Erzählerin bewusst zu vermitteln, wenn sie in ihrer eigenen Küche kocht?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Mehr als nur einen Geschmack – eine Verbindung zu einem Ort, einer Zeit und einer Herkunft$t$, true, 1),
    (v_q, $t$Ausschließlich einen möglichst hohen wirtschaftlichen Gewinn$t$, false, 2),
    (v_q, $t$Eine vollständig neue, von der Tradition losgelöste Küche$t$, false, 3),
    (v_q, $t$Eine exakte, unveränderte Kopie des großmütterlichen Rezepts$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie positioniert sich die Erzählerin abschließend zur Kommerzialisierung der Wursttradition?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie verurteilt sie nicht pauschal, betont aber, dass eine industrielle Version nicht dieselbe Geschichte trägt wie das Original$t$, true, 1),
    (v_q, $t$Sie lehnt jede Form der Kommerzialisierung kategorisch ab$t$, false, 2),
    (v_q, $t$Sie sieht keinerlei Unterschied zwischen industrieller und handwerklicher Herstellung$t$, false, 3),
    (v_q, $t$Sie befürwortet uneingeschränkt die vollständige Industrialisierung der Tradition$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'verklungen' (ein Gespräch, das längst verklungen ist)?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$schon lange vorbei und nur noch als Erinnerung präsent$t$, true, 1),
    (v_q, $t$gerade erst begonnen$t$, false, 2),
    (v_q, $t$besonders laut$t$, false, 3),
    (v_q, $t$schriftlich festgehalten$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$'Ein Gespräch, das längst verklungen ist' – welches Wort passt als Synonym für 'verklungen'?$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$verhallt / vergangen$t$, true, 1),
    (v_q, $t$aktuell$t$, false, 2),
    (v_q, $t$wiederholt$t$, false, 3),
    (v_q, $t$aufgezeichnet$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$In welchem Satz wird 'verklingen' korrekt im übertragenen Sinn verwendet?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Die Erinnerung an jenes Gespräch war längst verklungen, blieb aber im Geschmack lebendig$t$, true, 1),
    (v_q, $t$Das Rezept verklang schriftlich in einem alten Kochbuch$t$, false, 2),
    (v_q, $t$Die Bratwurst verklang auf dem Teller in wenigen Minuten$t$, false, 3),
    (v_q, $t$Ihre Küche verklang durch den intensiven Geruch von Majoran$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Ergänzen Sie: Ein Rezept, das seit Jahrhunderten in der Familie ___ wurde.$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$weitergegeben$t$, true, 1),
    (v_q, $t$weitergeben$t$, false, 2),
    (v_q, $t$weitergebend$t$, false, 3),
    (v_q, $t$weitergegeb$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welcher Satz enthält korrekt ein Partizipialattribut zu 'eine Bratwurst, die industriell gefertigt und weltweit verschifft wird'?$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$eine industriell gefertigte und weltweit verschiffte Bratwurst$t$, true, 1),
    (v_q, $t$eine industriell fertigende und weltweit verschiffende Bratwurst$t$, false, 2),
    (v_q, $t$eine Bratwurst, fertigend industriell verschifft weltweit$t$, false, 3),
    (v_q, $t$eine weltweit zu verschiffende, industriell fertigende Bratwurst$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welcher Satz gibt korrekt indirekt wieder: 'Meine Großmutter hätte sich über den heutigen Wohlstand gefreut', denkt die Erzählerin?$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Die Erzählerin denkt, ihre Großmutter hätte sich über den heutigen Wohlstand gefreut$t$, true, 1),
    (v_q, $t$Die Erzählerin denkt, ihre Großmutter freut sich über den heutigen Wohlstand$t$, false, 2),
    (v_q, $t$Die Erzählerin dachte, ihre Großmutter freue sich gefreut$t$, false, 3),
    (v_q, $t$Die Erzählerin denkt, ihre Großmutter habe sich freuen werden$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$Schreiben Sie 8 bis 12 Sätze darüber, wie kulinarische Traditionen zugleich persönliche Erinnerung und regionale Identität stiften können, und welche Spannungen dabei mit ihrer kommerziellen Vermarktung entstehen.$t$, 1, 'normal', 'production', $t$Kulinarische Traditionen wie die deutsche Wurstkultur zeigen eindrücklich, wie eng persönliche Erinnerung und kollektive Identität miteinander verwoben sein können. Ein Rezept, das über Generationen weitergegeben wird, transportiert nicht nur eine bestimmte Zubereitungsweise, sondern auch die emotionale Bedeutung der Menschen und Orte, mit denen es verbunden ist. Gerade weil Geschmack und Geruch unmittelbar sinnlich erfahrbar sind, können sie Erinnerungen auf eine Weise wachrufen, die rein visuelle oder textliche Aufzeichnungen kaum leisten. Gleichzeitig dient dieselbe Tradition auch der Konstruktion regionaler Identität, wenn verschiedene Städte oder Regionen für sich beanspruchen, die einzig authentische Version eines Gerichts zu besitzen. Diese Ansprüche sind selten historisch eindeutig belegbar, sondern entstehen im Zusammenspiel aus tatsächlicher Überlieferung, lokalem Stolz und gezieltem Marketing. Problematisch wird diese Dynamik vor allem dann, wenn eine Tradition zunehmend industriell reproduziert und global vermarktet wird, wodurch der ursprüngliche Kontext, aus dem sie entstand, zunehmend verloren geht. Ein industriell gefertigtes Produkt mag denselben Namen tragen wie das Originalrezept, vermittelt jedoch nicht mehr dieselbe persönliche und historische Geschichte. Dennoch erscheint es mir zu einfach, jede Kommerzialisierung grundsätzlich abzulehnen, da sie auch Zugang und wirtschaftlichen Erfolg ermöglichen kann. Entscheidend bleibt daher, ob es gelingt, neben dem reinen Geschmack auch die kulturelle Bedeutung einer Tradition weiterzugeben.$t$);

END $block$;

-- 25. Die Jahre hinter der Hecke
DO $block$
DECLARE
  v_story uuid; v_q uuid;
BEGIN
  INSERT INTO public.stories (level_code, title, body, translation_fr, glossary) VALUES (
    'C1',
    $t$Die Jahre hinter der Hecke$t$,
    $t$Wenn ich das Märchen von Dornröschen heute lese, meiner Tochter vor dem Einschlafen, fällt mir eine Frage ein, die mich schon lange begleitet: Warum feiern wir eine Geschichte, in der die Heldin hundert Jahre lang nichts tut, außer zu schlafen?

Als Literaturwissenschaftlerin habe ich mich lange mit den Grimmschen Märchen beschäftigt, und Dornröschen galt mir zunächst als Paradebeispiel für ein überholtes Frauenbild: die passive Prinzessin, die auf einen Prinzen wartet, der sie durch einen Kuss erlöst. Bei genauerer Betrachtung erscheint mir diese Lesart jedoch zu einfach. Der Schlaf, in den Dornröschen fällt, ist keine freiwillige Untätigkeit, sondern die einzige verfügbare Antwort auf eine Bedrohung, gegen die sie sich als Kind nicht wehren konnte. Der Fluch trifft sie, bevor sie überhaupt handeln kann, und der Schlaf ist paradoxerweise auch ein Schutz: Die ganze Welt um sie herum ruht mit ihr, wird eingehegt in Dornen, unberührt von der Zeit.

Was mich heute mehr interessiert als die Frage der Erlösung, ist die Frage des Wartens selbst. Wir leben in einer Kultur, die Handeln über Geduld stellt, die jede Form von Stillstand als Versagen deutet. Dornröschens hundert Jahre lassen sich auch als eine Art erzwungene Pause lesen, aus der am Ende dennoch etwas Neues entsteht, nicht durch ihre eigene Aktivität, aber auch nicht ohne ihre stille Fortdauer.

Der Kuss des Prinzen bleibt problematisch, keine Frage, und ich bespreche das offen mit meiner Tochter. Doch ich versuche ihr auch zu vermitteln, dass nicht jede Geschichte über Passivität eine Geschichte über Ohnmacht sein muss. Manchmal besteht die eigentliche Handlungsmacht einer Figur darin, eine Zeit zu überdauern, die sie nicht gewählt hat, bis die Bedingungen sich ändern. Vielleicht ist das die zeitgemäßeste Lesart des alten Märchens: nicht als Lob des Wartens, sondern als Erinnerung daran, dass Zeit selbst eine Form von Widerstand sein kann.$t$,
    $t$Quand je lis aujourd'hui à ma fille, avant qu'elle ne s'endorme, le conte de la Belle au bois dormant, une question me vient à l'esprit, une question qui m'accompagne depuis longtemps : pourquoi célébrons-nous une histoire où l'héroïne ne fait rien pendant cent ans, sinon dormir ?

En tant que spécialiste de littérature, je me suis longtemps occupée des contes de Grimm, et la Belle au bois dormant m'a d'abord semblé un exemple type d'une image dépassée de la femme : la princesse passive, qui attend un prince destiné à la délivrer par un baiser. Mais à y regarder de plus près, cette lecture me paraît pourtant trop simple. Le sommeil dans lequel tombe la Belle au bois dormant n'est pas une inactivité volontaire, mais la seule réponse disponible face à une menace contre laquelle elle ne pouvait pas se défendre en tant qu'enfant. La malédiction la frappe avant même qu'elle puisse agir, et le sommeil est paradoxalement aussi une protection : le monde entier autour d'elle se repose avec elle, enveloppé dans les épines, intouché par le temps.

Ce qui m'intéresse aujourd'hui plus que la question de la délivrance, c'est la question de l'attente elle-même. Nous vivons dans une culture qui place l'action au-dessus de la patience, qui interprète toute forme d'immobilité comme un échec. Les cent ans de la Belle au bois dormant peuvent aussi se lire comme une sorte de pause forcée, d'où naît finalement quelque chose de nouveau, non pas par sa propre activité, mais pas non plus sans sa persistance silencieuse.

Le baiser du prince reste problématique, sans aucun doute, et j'en discute ouvertement avec ma fille. Mais j'essaie aussi de lui faire comprendre que toute histoire sur la passivité ne doit pas forcément être une histoire sur l'impuissance. Parfois, le véritable pouvoir d'agir d'un personnage consiste à traverser une période qu'il n'a pas choisie, jusqu'à ce que les conditions changent. C'est peut-être là la lecture la plus contemporaine de ce vieux conte : non pas comme un éloge de l'attente, mais comme un rappel que le temps lui-même peut être une forme de résistance.$t$,
    $t${"Wenn":"quand","ich":"je","das":"le","Märchen":"conte","von":"de","Dornröschen":"Belle au bois dormant","heute":"aujourd'hui","lese":"lis","meiner":"à ma","Tochter":"fille","vor":"avant","dem":"qu'elle","Einschlafen":"s'endormir","fällt":"vient","mir":"à moi","eine":"une","Frage":"question","ein":"vient","die":"qui","mich":"m'","schon":"déjà","lange":"longtemps","begleitet":"accompagne","Warum":"pourquoi","feiern":"célébrons","wir":"nous","Geschichte":"histoire","in":"dans","der":"laquelle","Heldin":"héroïne","hundert":"cent","Jahre":"ans","lang":"pendant","nichts":"rien","tut":"fait","außer":"sinon","zu":"à","schlafen":"dormir","Als":"en tant que","Literaturwissenschaftlerin":"spécialiste de littérature","habe":"ai","mit":"de","den":"les","Grimmschen":"de Grimm","beschäftigt":"occupée","und":"et","galt":"a semblé","zunächst":"d'abord","als":"comme","Paradebeispiel":"exemple type","für":"de","überholtes":"dépassée","Frauenbild":"image de la femme","passive":"passive","Prinzessin":"princesse","auf":"attend","einen":"un","Prinzen":"prince","wartet":"attend","sie":"elle","durch":"par","Kuss":"baiser","erlöst":"délivrer","Bei":"à","genauerer":"plus précise","Betrachtung":"regard","erscheint":"paraît","diese":"cette","Lesart":"lecture","jedoch":"pourtant","einfach":"simple","Der":"le","Schlaf":"sommeil","ist":"est","keine":"pas une","freiwillige":"volontaire","Untätigkeit":"inactivité","sondern":"mais","einzige":"seule","verfügbare":"disponible","Antwort":"réponse","Bedrohung":"menace","gegen":"contre","sich":"se","Kind":"enfant","nicht":"ne pas","wehren":"défendre","konnte":"pouvait","Fluch":"malédiction","trifft":"frappe","bevor":"avant","überhaupt":"même","handeln":"agir","kann":"puisse","paradoxerweise":"paradoxalement","auch":"aussi","Schutz":"protection","Die":"le","ganze":"entier","Welt":"monde","um":"autour","herum":"autour d'elle","ruht":"se repose","ihr":"avec elle","wird":"est","eingehegt":"enveloppé","Dornen":"épines","unberührt":"intouché","Zeit":"temps","Was":"ce qui","mehr":"plus","interessiert":"intéresse","Erlösung":"délivrance","des":"de l'","Wartens":"attente","selbst":"elle-même","Wir":"nous","leben":"vivons","einer":"dans une","Kultur":"culture","Handeln":"action","über":"au-dessus de","Geduld":"patience","stellt":"place","jede":"toute","Form":"forme","Stillstand":"immobilité","Versagen":"échec","deutet":"interprète","Dornröschens":"de la Belle au bois dormant","lassen":"peuvent","Art":"sorte","erzwungene":"forcée","Pause":"pause","lesen":"lire","aus":"lire","am":"à la","Ende":"fin","dennoch":"finalement","etwas":"quelque chose","Neues":"nouveau","entsteht":"naît","ihre":"sa","eigene":"propre","Aktivität":"activité","aber":"mais","ohne":"sans","stille":"silencieuse","Fortdauer":"persistance","bleibt":"reste","problematisch":"problématique","bespreche":"discute","offen":"ouvertement","Doch":"mais","versuche":"essaie","vermitteln":"faire comprendre","dass":"que","Passivität":"passivité","Ohnmacht":"impuissance","sein":"être","muss":"doit","Manchmal":"parfois","besteht":"consiste","eigentliche":"véritable","Handlungsmacht":"pouvoir d'agir","Figur":"personnage","darin":"en cela","überdauern":"traverser","gewählt":"choisie","hat":"a","bis":"jusqu'à","Bedingungen":"conditions","ändern":"changent","Vielleicht":"peut-être","zeitgemäßeste":"la plus contemporaine","alten":"vieux","Märchens":"conte","Lob":"éloge","Erinnerung":"rappel","daran":"que","Widerstand":"résistance"}$t$::jsonb
  ) RETURNING id INTO v_story;

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche Frage beschäftigt die Erzählerin am Anfang des Textes?$t$, 1, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Warum eine Heldin gefeiert wird, die hundert Jahre lang schläft$t$, true, 1),
    (v_q, $t$Warum das Märchen keine Prinzessin hat$t$, false, 2),
    (v_q, $t$Warum der Prinz zu spät kommt$t$, false, 3),
    (v_q, $t$Warum die Hecke aus Dornen besteht$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie deutete die Erzählerin das Märchen zunächst?$t$, 1, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Als Paradebeispiel für ein überholtes, passives Frauenbild$t$, true, 1),
    (v_q, $t$Als Geschichte über weibliche Stärke und Unabhängigkeit$t$, false, 2),
    (v_q, $t$Als reine Naturbeschreibung ohne symbolische Bedeutung$t$, false, 3),
    (v_q, $t$Als moderne Kritik an patriarchalen Strukturen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Warum bezeichnet die Erzählerin ihre ursprüngliche Lesart des Märchens als 'zu einfach'?$t$, 1, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Weil sie den Schlaf als bloße Untätigkeit deutete, statt ihn als erzwungene, aber auch schützende Reaktion auf eine Bedrohung zu verstehen$t$, true, 1),
    (v_q, $t$Weil sie das Märchen zunächst gar nicht kannte$t$, false, 2),
    (v_q, $t$Weil sie den Prinzen fälschlich als Hauptfigur ansah$t$, false, 3),
    (v_q, $t$Weil sie die Existenz des Fluchs anzweifelte$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was geschieht laut Text mit der Welt um Dornröschen herum, während sie schläft?$t$, 2, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie ruht mit ihr und wird von Dornen eingehegt$t$, true, 1),
    (v_q, $t$Sie verändert sich rasant weiter$t$, false, 2),
    (v_q, $t$Sie wird komplett zerstört$t$, false, 3),
    (v_q, $t$Sie wird von anderen Prinzessinnen übernommen$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie beschreibt die Erzählerin die heutige Kultur im Verhältnis zu Geduld und Stillstand?$t$, 2, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Als eine Kultur, die Handeln über Geduld stellt und Stillstand als Versagen deutet$t$, true, 1),
    (v_q, $t$Als eine Kultur, die Geduld grundsätzlich höher schätzt als Aktivität$t$, false, 2),
    (v_q, $t$Als eine Kultur ohne jede Beziehung zum Thema Zeit$t$, false, 3),
    (v_q, $t$Als eine Kultur, die Stillstand generell positiv bewertet$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie interpretiert die Erzählerin die 'hundert Jahre' des Schlafs im Kontext heutiger Zeitvorstellungen?$t$, 2, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Als eine erzwungene Pause, aus der dennoch etwas Neues entstehen kann, ohne aktives Zutun$t$, true, 1),
    (v_q, $t$Als reine Zeitverschwendung ohne jede positive Bedeutung$t$, false, 2),
    (v_q, $t$Als Beweis dafür, dass Warten grundsätzlich einer aktiven Lebensgestaltung überlegen ist$t$, false, 3),
    (v_q, $t$Als historisch exakt belegtes Ereignis ohne symbolischen Gehalt$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie geht die Erzählerin mit dem problematischen Kuss des Prinzen um?$t$, 3, 'facile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie thematisiert das Problem offen im Gespräch mit ihrer Tochter$t$, true, 1),
    (v_q, $t$Sie verschweigt das Problem bewusst$t$, false, 2),
    (v_q, $t$Sie streicht diese Szene aus der Erzählung$t$, false, 3),
    (v_q, $t$Sie hält den Kuss für völlig unproblematisch$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welche neue Lesart der Passivität schlägt die Erzählerin vor?$t$, 3, 'normal', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Passivität kann auch eine eigene Form von Handlungsmacht sein, wenn eine ungewählte Zeit überdauert wird$t$, true, 1),
    (v_q, $t$Passivität ist immer gleichbedeutend mit völliger Ohnmacht$t$, false, 2),
    (v_q, $t$Passivität sollte in Märchen grundsätzlich vermieden werden$t$, false, 3),
    (v_q, $t$Passivität hat mit Handlungsmacht nichts zu tun$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Wie lässt sich die abschließende These, 'Zeit selbst kann eine Form von Widerstand sein', im Kontext des gesamten Textes deuten?$t$, 3, 'difficile', 'comprehension') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Das bloße Überdauern einer ungewählten, bedrohlichen Zeit kann selbst als eine Art aktiver Selbstbehauptung verstanden werden$t$, true, 1),
    (v_q, $t$Widerstand ist im Märchen ausschließlich durch den Prinzen möglich$t$, false, 2),
    (v_q, $t$Zeit hat im Märchen keinerlei symbolische Funktion$t$, false, 3),
    (v_q, $t$Die Autorin lehnt die Vorstellung von Zeit als Widerstand vollständig ab$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Was bedeutet 'eingehegt' (von Dornen eingehegt)?$t$, 1, 'facile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$umschlossen und abgeschirmt$t$, true, 1),
    (v_q, $t$zerstört und vernichtet$t$, false, 2),
    (v_q, $t$beleuchtet und sichtbar gemacht$t$, false, 3),
    (v_q, $t$vergessen und verloren$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$'Die Welt wird eingehegt in Dornen' – welches Wort passt als Synonym für 'eingehegt'?$t$, 1, 'normal', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$umschlossen / abgegrenzt$t$, true, 1),
    (v_q, $t$geöffnet$t$, false, 2),
    (v_q, $t$beschleunigt$t$, false, 3),
    (v_q, $t$verkauft$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$In welchem Satz wird 'eingehegt' korrekt im übertragenen Sinn verwendet?$t$, 1, 'difficile', 'vocabulary') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Ihr Schmerz blieb über Jahre in Schweigen eingehegt, ohne dass sie darüber sprach$t$, true, 1),
    (v_q, $t$Die Wiese wurde von Blumen eingehegt und blühte prächtig$t$, false, 2),
    (v_q, $t$Der Fluss war von der Dürre eingehegt worden$t$, false, 3),
    (v_q, $t$Ihre Karriere wurde durch den Erfolg eingehegt$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Ergänzen Sie den Passivsatz: Die Welt ___ in Dornen eingehegt.$t$, 1, 'facile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$wird$t$, true, 1),
    (v_q, $t$hat$t$, false, 2),
    (v_q, $t$ist gehabt$t$, false, 3),
    (v_q, $t$wurde haben$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welcher Satz enthält korrekt ein erweitertes Partizipialattribut zu 'ein Fluch, der sie trifft, bevor sie handeln kann'?$t$, 1, 'normal', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$ein sie vor jeder Handlungsmöglichkeit treffender Fluch$t$, true, 1),
    (v_q, $t$ein sie treffender, gehandelt habender Fluch$t$, false, 2),
    (v_q, $t$ein Fluch, treffend sie handeln bevor kann$t$, false, 3),
    (v_q, $t$ein zu treffender vor dem Handeln Fluch$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category)
    VALUES (v_story, $t$Welcher Satz gibt korrekt indirekt wieder: 'Nicht jede Geschichte über Passivität ist eine Geschichte über Ohnmacht', sagt die Erzählerin ihrer Tochter?$t$, 1, 'difficile', 'conjugation') RETURNING id INTO v_q;
  INSERT INTO public.choices (question_id, label, is_correct, position) VALUES
    (v_q, $t$Sie sagt ihrer Tochter, nicht jede Geschichte über Passivität sei eine Geschichte über Ohnmacht$t$, true, 1),
    (v_q, $t$Sie sagt ihrer Tochter, nicht jede Geschichte über Passivität ist eine Geschichte über Ohnmacht$t$, false, 2),
    (v_q, $t$Sie sagte ihrer Tochter, keine Geschichte wäre über Ohnmacht gewesen$t$, false, 3),
    (v_q, $t$Sie sagt ihrer Tochter, jede Geschichte habe Ohnmacht bedeutet$t$, false, 4);

  INSERT INTO public.questions (story_id, prompt, position, difficulty, category, model_answer)
    VALUES (v_story, $t$Erörtern Sie in 8 bis 12 Sätzen, ob Warten und scheinbare Passivität in bestimmten Situationen auch als eine Form von Handlungsmacht verstanden werden können.$t$, 1, 'normal', 'production', $t$Die gängige Vorstellung von Handlungsmacht ist meist eng mit sichtbarer Aktivität verknüpft, während Warten häufig als Ausdruck von Ohnmacht oder Untätigkeit gilt. Das Beispiel von Dornröschen zeigt jedoch, dass diese Gleichsetzung zu kurz greift, sobald man die Umstände genauer betrachtet, unter denen Warten überhaupt entsteht. Wenn eine Person mit einer Bedrohung konfrontiert wird, der sie sich nicht aktiv entziehen kann, kann das Aushalten dieser Situation selbst zu einer Form von Widerstand werden, auch wenn es von außen als Passivität erscheint. Entscheidend ist dabei, ob das Überdauern einer schwierigen Zeit aus eigener innerer Stärke erfolgt oder tatsächlich vollständige Fremdbestimmung bedeutet. In vielen realen Lebenssituationen, etwa bei Krankheit, Exil oder gesellschaftlicher Unterdrückung, haben Menschen keine unmittelbare Möglichkeit, aktiv einzugreifen, und dennoch zeigt sich Handlungsmacht darin, wie sie mit dieser erzwungenen Wartezeit umgehen. Eine solche Perspektive stellt die in vielen modernen Gesellschaften vorherrschende Überbewertung permanenter Aktivität infrage, die Stillstand fast automatisch als Scheitern deutet. Gleichzeitig darf diese Umdeutung nicht dazu führen, tatsächliche Ohnmacht zu beschönigen oder strukturelle Unterdrückung zu verharmlosen. Eine differenzierte Betrachtung erkennt daher an, dass Warten manchmal erzwungen und schmerzhaft bleibt, während es in anderen Fällen tatsächlich eine bewusste, würdevolle Form des Umgangs mit nicht wählbaren Umständen darstellen kann.$t$);

END $block$;

