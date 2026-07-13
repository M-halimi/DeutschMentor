-- ============================================================================
-- SEED: C1 (Advanced) - 6 modules
-- Generated curriculum following CEFR standards
-- ============================================================================

do $$
declare
  m_id uuid;
  l_id uuid;
begin

  -- Module 1: Akademische Sprache
  insert into public.course_modules (level_id, title, description, objectives, order_index, estimated_hours, is_published)
  values ('C1', 'Akademische Sprache', 'Beherrsche die Sprache der Wissenschaft und akademischen Kommunikation. Lerne Nominal- und Verbalstile, Nomen-Verb-Verbindungen und komplexe Satzstrukturen.', '["Nominalstil und Verbalstil unterscheiden und situationsgerecht anwenden","Nomen-Verb-Verbindungen erkennen und aktiv nutzen","Komplexe Schachtelsätze verstehen und selbst bilden","Akademische Texte auf C1-Niveau analysieren und verfassen","Formelle und wissenschaftliche Sprachregister beherrschen"]', 1, 5.0, true)
  returning id into m_id;

  -- Lesson 1.1: Wissenschaftliche Grundbegriffe
  insert into public.course_lessons (module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published)
  values (m_id, 'Wissenschaftliche Grundbegriffe', 'Zentrale Begriffe der Wissenschaftssprache auf C1-Niveau', 'Akademische Sprache', 'vocabulary', '["Learn key vocabulary","Practice grammar structures","Build comprehension skills","Apply in context","Review and reinforce"]', 50, 1, true)
  returning id into l_id;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, order_index) values
  (l_id, 'die Bildung', 'التعليم/التكوين', 'education', 'die', 'die Bildungen', 'noun', 'Die akademische Bildung ist der Schlüssel zum beruflichen Erfolg.', 'Academic education is the key to professional success.', 1),
  (l_id, 'die Wissenschaft', 'العلم', 'science', 'die', 'die Wissenschaften', 'noun', 'Die Wissenschaft strebt nach objektiver Erkenntnis.', 'Science strives for objective knowledge.', 2),
  (l_id, 'die Forschung', 'البحث العلمي', 'research', 'die', 'die Forschungen', 'noun', 'Die Forschung auf diesem Gebiet hat enorme Fortschritte erzielt.', 'Research in this field has made enormous progress.', 3),
  (l_id, 'die Analyse', 'التحليل', 'analysis', 'die', 'die Analysen', 'noun', 'Eine detaillierte Analyse der Daten ist unerlässlich.', 'A detailed analysis of the data is essential.', 4),
  (l_id, 'die Methode', 'المنهج/الطريقة', 'method', 'die', 'die Methoden', 'noun', 'Diese Methode hat sich in der empirischen Forschung bewährt.', 'This method has proven itself in empirical research.', 5),
  (l_id, 'der Kontext', 'السياق', 'context', 'der', 'die Kontexte', 'noun', 'Die Aussage muss im historischen Kontext betrachtet werden.', 'The statement must be viewed in its historical context.', 6),
  (l_id, 'die Theorie', 'النظرية', 'theory', 'die', 'die Theorien', 'noun', 'Die Theorie bildet die Grundlage für weitere Untersuchungen.', 'The theory forms the basis for further investigations.', 7);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  (l_id, 'Nominalstil vs. Verbalstil', 'Im akademischen Deutsch wird häufig der Nominalstil bevorzugt, bei dem Handlungen und Prozesse durch Nomen (statt Verben) ausgedrückt werden. Der Verbalstil ist eher alltagssprachlich. Für arabischsprachige Lernende: Der Nominalstil entspricht im Deutschen der Verwendung von Masdaren, ist aber deutlich frequenter als im Arabischen.', '[{"rule":"Nominalstil: Nomen drücken Handlungen/Prozesse aus, Verben haben schwächere Bedeutung.","note":"Die Durchführung der Analyse erfolgte durch das Team."},{"rule":"Verbalstil: Das Verb trägt die Hauptaussage, konkreter und direkter.","note":"Das Team führte die Analyse durch."},{"rule":"Typische Nominalisierungen: -ung, -tion, -heit, -keit, -ität.","note":"untersuchen -> die Untersuchung"},{"rule":"Funktionsverbgefüge (Nomen-Verb-Verbindungen) ersetzen einfache Verben.","note":"zur Anwendung bringen, in Betracht ziehen"},{"rule":"Nominalstil wirkt distanzierter, objektiver und formaler.","note":"Die Überprüfung der Hypothese erfolgte mittels statistischer Verfahren."}]', '[{"german":"Die Durchführung der Experimente erfolgte unter kontrollierten Bedingungen.","arabic":"تم إجراء التجارب تحت ظروف محكومة.","english":"The experiments were carried out under controlled conditions."},{"german":"Die Analyse der Daten führt zu neuen Erkenntnissen.","arabic":"يؤدي تحليل البيانات إلى استنتاجات جديدة.","english":"The analysis of the data leads to new insights."},{"german":"Der Wissenschaftler führte eine gründliche Untersuchung durch.","arabic":"أجرى العالم بحثاً دقيقاً.","english":"The scientist conducted a thorough investigation."},{"german":"Die Bildung spielt eine zentrale Rolle in der modernen Gesellschaft.","arabic":"يلعب التعليم دوراً محورياً في المجتمع الحديث.","english":"Education plays a central role in modern society."}]', '[{"mistake":"Das Team hat die Analyse durchgeführt von den Daten.","correction":"Das Team hat die Analyse der Daten durchgeführt.","explanation":"Im Nominalstil wird \"der Daten\" als Genitivattribut an \"Analyse\" angeschlossen."},{"mistake":"Die Forschung wurde gemacht.","correction":"Die Forschung wurde betrieben.","explanation":"\"Forschung machen\" ist umgangssprachlich. Fachlich: Forschung betreiben."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  (l_id, 'multiple_choice', 'Was ist die Nominalisierung von "untersuchen"?', '["die Untersuchung","die Untersucher","das Untersuch","der Untersucher"]', 'die Untersuchung', 'Das Verb "untersuchen" wird nominalisiert zu "die Untersuchung" (-ung).', 1, 1),
  (l_id, 'fill_gap', '_____ spielt eine zentrale Rolle in der Wissenschaft.', '["Die Bildung","Die Schule","Der Unterricht","Das Studium"]', 'Die Bildung', 'Der Überbegriff für Lernen und Lehren ist "die Bildung".', 1, 2),
  (l_id, 'translation', 'Übersetze: "Research in this context leads to new theories."', '["Die Forschung in diesem Kontext führt zu neuen Theorien.","Die Forschung in diesem Kontext bringt neue Theorien.","Die Forschung in diesem Kontext macht neue Theorien.","Die Forschung in diesem Kontext gibt neue Theorien."]', 'Die Forschung in diesem Kontext führt zu neuen Theorien.', '"Zu etwas führen" ist die korrekte Nomen-Verb-Verbindung.', 1, 3),
  (l_id, 'multiple_choice', 'Welche Form ist typisch für den Nominalstil?', '["Die Durchführung der Analyse erfolgte.","Das Team führte die Analyse durch.","Die Analyse wurde durchgeführt.","Man führte die Analyse durch."]', 'Die Durchführung der Analyse erfolgte.', 'Im Nominalstil wird das Verb zum Nomen.', 1, 4),
  (l_id, 'fill_gap', 'Die Methode _____ sich in der Praxis bewährt.', '["hat","ist","wird","wurde"]', 'hat', '"Sich bewähren" bildet das Perfekt mit "haben".', 1, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  (l_id, 'multiple_choice', 'Was bedeutet "der Kontext"?', '["النظرية","السياق","المنهج","التحليل"]', 'السياق', 1, 1),
  (l_id, 'multiple_choice', 'Das Suffix "-ung" bildet welche Wortart?', '["Verben","Nomen","Adjektive","Adverbien"]', 'Nomen', 1, 2),
  (l_id, 'true_false', 'Der Nominalstil ist typisch für die Alltagssprache.', '["Richtig","Falsch"]', 'Falsch', 1, 3),
  (l_id, 'fill_blank', 'Die _____ der Daten ergab interessante Ergebnisse.', '["Analyse","Analysierung","Analytik","Analytisierung"]', 'Analyse', 1, 4),
  (l_id, 'multiple_choice', 'Welches Wort ist ein Synonym für "die Wissenschaft"?', '["die Bildung","die Forschung","die Lehre","das Wissen"]', 'die Forschung', 1, 5),
  (l_id, 'true_false', '"Die Theorie" bedeutet auf Arabisch "التجربة".', '["Richtig","Falsch"]', 'Falsch', 1, 6);

  -- Lesson 1.2: Akademisches Schreiben
  insert into public.course_lessons (module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published)
  values (m_id, 'Akademisches Schreiben', 'Wortschatz und Formulierungen für wissenschaftliche Texte', 'Akademische Sprache', 'vocabulary', '["Learn key vocabulary","Practice grammar structures","Build comprehension skills","Apply in context","Review and reinforce"]', 50, 2, true)
  returning id into l_id;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, order_index) values
  (l_id, 'die These', 'الأطروحة', 'thesis', 'die', 'die Thesen', 'noun', 'Die These des Autors ist gut begründet.', 'The author thesis is well-founded.', 1),
  (l_id, 'die Hypothese', 'الفرضية', 'hypothesis', 'die', 'die Hypothesen', 'noun', 'Die Hypothese muss empirisch überprüft werden.', 'The hypothesis must be empirically tested.', 2),
  (l_id, 'die Quelle', 'المصدر', 'source', 'die', 'die Quellen', 'noun', 'Alle verwendeten Quellen sind im Literaturverzeichnis aufgeführt.', 'All sources used are listed in the bibliography.', 3),
  (l_id, 'das Argument', 'الحجة', 'argument', 'das', 'die Argumente', 'noun', 'Dieses Argument überzeugt nicht vollständig.', 'This argument is not entirely convincing.', 4),
  (l_id, 'die Schlussfolgerung', 'الاستنتاج', 'conclusion', 'die', 'die Schlussfolgerungen', 'noun', 'Die Schlussfolgerung ergibt sich logisch aus den Fakten.', 'The conclusion follows logically from the facts.', 5),
  (l_id, 'die Perspektive', 'المنظور', 'perspective', 'die', 'die Perspektiven', 'noun', 'Aus wissenschaftlicher Perspektive ist diese These fragwürdig.', 'From a scientific perspective, this thesis is questionable.', 6),
  (l_id, 'die Definition', 'التعريف', 'definition', 'die', 'die Definitionen', 'noun', 'Eine präzise Definition der Begriffe ist unerlässlich.', 'A precise definition of the terms is essential.', 7);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  (l_id, 'Nomen-Verb-Verbindungen (Funktionsverbgefüge)', 'Nomen-Verb-Verbindungen (auch Funktionsverbgefüge) sind feste Verbindungen aus einem Nomen und einem Verb, bei denen das Verb seine ursprüngliche Bedeutung verliert und die Bedeutung hauptsächlich vom Nomen getragen wird.', '[{"rule":"Typische Funktionsverben: bringen, kommen, stellen, setzen, nehmen, geben, führen.","note":"zum Ausdruck bringen (ausdrücken), in Gang setzen (beginnen)"},{"rule":"Das Nomen steht oft mit Präposition + bestimmtem oder unbestimmtem Artikel.","note":"zur Diskussion stellen, in Betracht ziehen"},{"rule":"Viele Nomen-Verb-Verbindungen sind idiomatisch und nicht wörtlich übersetzbar.","note":"zur Kenntnis nehmen = العلم بالشيء"},{"rule":"Die Wahl des Funktionsverbs bestimmt die Nuance.","note":"zur Anwendung kommen (passivisch), zur Anwendung bringen (aktiv)"}]', '[{"german":"Der Wissenschaftler stellte eine interessante These zur Diskussion.","arabic":"طرح العالم أطروحة مثيرة للاهتمام للنقاش.","english":"The scientist put forward an interesting thesis for discussion."},{"german":"Diese Hypothese bedarf einer gründlichen Überprüfung.","arabic":"هذه الفرضية تحتاج إلى فحص دقيق.","english":"This hypothesis requires a thorough examination."},{"german":"Der Autor bringt seine Kritik zum Ausdruck.","arabic":"يعبر المؤلف عن انتقاده.","english":"The author expresses his criticism."},{"german":"Die Forschungsergebnisse fanden in der Fachwelt große Anerkennung.","arabic":"حظيت نتائج البحث باعتراف كبير في الأوساط المتخصصة.","english":"The research findings received great recognition."}]', '[{"mistake":"Der Wissenschaftler machte eine Untersuchung.","correction":"Der Wissenschaftler führte eine Untersuchung durch.","explanation":"\"Eine Untersuchung machen\" ist umgangssprachlich."},{"mistake":"Er gab eine Antwort auf die Frage.","correction":"Er erteilte eine Antwort auf die Frage.","explanation":"Auf C1-Niveau sollte man variieren: \"eine Antwort erteilen\" ist akademischer."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  (l_id, 'multiple_choice', 'Welche Nomen-Verb-Verbindung bedeutet "diskutieren"?', '["zur Diskussion stellen","zur Kenntnis nehmen","in Betracht ziehen","unter Beweis stellen"]', 'zur Diskussion stellen', '"Zur Diskussion stellen" bedeutet "to put up for discussion".', 1, 1),
  (l_id, 'fill_gap', 'Der Autor _____ seine Kritik zum Ausdruck.', '["bringt","nimmt","stellt","setzt"]', 'bringt', '"Zum Ausdruck bringen" ist die korrekte Verbindung.', 1, 2),
  (l_id, 'translation', 'Übersetze: "The hypothesis requires thorough testing."', '["Die Hypothese bedarf einer gründlichen Überprüfung.","Die Hypothese braucht eine gründliche Überprüfung.","Die Hypothese benötigt gründliche Überprüfung.","Die Hypothese verlangt gründliche Überprüfung."]', 'Die Hypothese bedarf einer gründlichen Überprüfung.', '"Bedarfen + Genitiv" ist die formellste Variante.', 1, 3),
  (l_id, 'fill_gap', 'Die Ergebnisse _____ in der Fachwelt große Anerkennung.', '["fanden","finden","findet","fand"]', 'fanden', 'Ergebnisse ist Plural -> "fanden".', 1, 4),
  (l_id, 'multiple_choice', 'Welche Verbindung ist KEINE Nomen-Verb-Verbindung?', '["einen Apfel essen","zur Anwendung bringen","in Betracht ziehen","unter Beweis stellen"]', 'einen Apfel essen', '"Einen Apfel essen" ist wörtlich, kein Funktionsverbgefüge.', 1, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  (l_id, 'multiple_choice', 'Was bedeutet "die Schlussfolgerung"?', '["الفرضية","الاستنتاج","المقدمة","المنهج"]', 'الاستنتاج', 1, 1),
  (l_id, 'true_false', '"Die Quelle" bedeutet auf Arabisch "المصدر".', '["Richtig","Falsch"]', 'Richtig', 1, 2),
  (l_id, 'multiple_choice', 'Welches Funktionsverb passt zu "zum Ausdruck _____"?', '["bringen","nehmen","geben","stellen"]', 'bringen', 1, 3),
  (l_id, 'multiple_choice', 'Was bedeutet "eine These aufstellen"?', '["نصب لوحة","طرح أطروحة","رفع علم","بناء منزل"]', 'طرح أطروحة', 1, 4),
  (l_id, 'true_false', 'Nomen-Verb-Verbindungen werden auch Funktionsverbgefüge genannt.', '["Richtig","Falsch"]', 'Richtig', 1, 5);

  -- Lesson 1.3: Nominalstil und Schachtelsätze
  insert into public.course_lessons (module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published)
  values (m_id, 'Nominalstil und Schachtelsätze', 'Vertiefung Nominalstil - komplexe Satzstrukturen verstehen und bilden', 'Akademische Sprache', 'grammar', '["Learn key vocabulary","Practice grammar structures","Build comprehension skills","Apply in context","Review and reinforce"]', 60, 3, true)
  returning id into l_id;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, order_index) values
  (l_id, 'der Sachverhalt', 'الواقعة/الحالة', 'fact/matter', 'der', 'die Sachverhalte', 'noun', 'Der Sachverhalt ist komplexer, als er zunächst scheint.', 'The matter is more complex than it first appears.', 1),
  (l_id, 'die Korrelation', 'الارتباط', 'correlation', 'die', 'die Korrelationen', 'noun', 'Die Korrelation zwischen den Variablen ist signifikant.', 'The correlation between the variables is significant.', 2),
  (l_id, 'die Differenzierung', 'التمايز/التفريق', 'differentiation', 'die', 'die Differenzierungen', 'noun', 'Eine sprachliche Differenzierung ist notwendig.', 'A linguistic differentiation is necessary.', 3),
  (l_id, 'die Implikation', 'التضمين/الآثار', 'implication', 'die', 'die Implikationen', 'noun', 'Die Implikationen dieser Studie sind weitreichend.', 'The implications of this study are far-reaching.', 4),
  (l_id, 'die Kontroverse', 'الجدل/الخلاف', 'controversy', 'die', 'die Kontroversen', 'noun', 'In der Fachwelt gibt es eine Kontroverse über diese Methode.', 'There is a controversy among experts about this method.', 5);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  (l_id, 'Schachtelsätze verstehen und bilden', 'Schachtelsätze (komplexe Satzgefüge) sind ein Merkmal des akademischen Deutschen. Sie enthalten mehrere Nebensätze, die ineinander verschachtelt sind.', '[{"rule":"Ein Schachtelsatz enthält mindestens zwei Nebensätze, die einander untergeordnet sind.","note":"Hauptsatz [Nebensatz 1 [Nebensatz 2 ...]]"},{"rule":"Relativsätze können innerhalb anderer Nebensätze stehen.","note":"Die Theorie, die der Wissenschaftler, der den Nobelpreis erhielt, entwickelte, ist bahnbrechend."},{"rule":"Die Verbklammer wird extrem: Hilfsverb/Konjunktion am Anfang, Vollverb am Ende.","note":"..., dass die Studie, die vor zwei Jahren begann, abgeschlossen werden konnte."},{"rule":"Strategie zum Bilden: Beginne mit dem Hauptsatz, füge Nebensätze ein.","note":"Die These ist umstritten. -> Die These, die der Autor vertritt, ist umstritten."}]', '[{"german":"Die Studie, die der Forscher, der an der Universität lehrt, durchgeführt hat, zeigt signifikante Ergebnisse.","arabic":"تظهر الدراسة التي أجراها الباحث الذي يدرس في الجامعة نتائج مهمة.","english":"The study that the researcher who teaches at the university conducted shows significant results."},{"german":"Es bleibt fraglich, ob die Methode, die in der Studie zur Anwendung kam, den Kriterien genügt.","arabic":"يبقى موضع شك ما إذا كانت الطريقة تستوفي المعايير.","english":"It remains questionable whether the method meets the criteria."},{"german":"Dass die Ergebnisse, die unter Laborbedingungen erzielt wurden, nicht ohne Weiteres übertragbar sind, ist bekannt.","arabic":"من المعروف أن النتائج التي تم تحقيقها تحت الظروف المختبرية لا يمكن نقلها ببساطة.","english":"That the results achieved under lab conditions are not readily transferable is known."},{"german":"Der Sachverhalt, der Gegenstand der Kontroverse ist, bedarf einer sorgfältigen Differenzierung.","arabic":"الواقعة التي هي موضوع الجدل تحتاج إلى تمايز دقيق.","english":"The matter that is the subject of controversy requires careful differentiation."}]', '[{"mistake":"Die Studie die der Forscher hat durchgeführt ist interessant.","correction":"Die Studie, die der Forscher durchgeführt hat, ist interessant.","explanation":"Im Relativsatz steht das konjugierte Verb am Ende."},{"mistake":"Der Autor behauptet, dass die These, die er hat aufgestellt, ist richtig.","correction":"Der Autor behauptet, dass die These, die er aufgestellt hat, richtig ist.","explanation":"Im Nebensatz steht das finite Verb ganz am Ende."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  (l_id, 'fill_gap', 'Die These, _____ der Autor in seiner Publikation vertritt, ist umstritten.', '["die","der","den","das"]', 'die', '"Die These" ist feminin, daher Relativpronomen "die".', 1, 1),
  (l_id, 'multiple_choice', 'Welcher Satz ist ein korrekter Schachtelsatz?', '["Die Studie, die der Forscher durchgeführt hat und die bahnbrechend ist, wurde publiziert.","Die Studie wurde publiziert, die der Forscher durchgeführt hat.","Die Studie, die der Forscher durchgeführt hat, wurde publiziert."]', 'Die Studie, die der Forscher durchgeführt hat und die bahnbrechend ist, wurde publiziert.', 'Zwei Relativsätze können mit "und" verbunden im Mittelfeld stehen.', 1, 2),
  (l_id, 'fill_gap', 'Es bleibt fraglich, ob die Methode den Kriterien _____.', '["genügt","genügen","genügte","genügen wird"]', 'genügt', 'Im "ob"-Nebensatz steht das konjugierte Verb am Ende.', 1, 3),
  (l_id, 'translation', 'Übersetze: "The correlation between the variables is significant."', '["Die Korrelation zwischen den Variablen ist signifikant.","Die Korrelation zwischen den Variablen wird signifikant.","Die Korrelation zwischen den Variablen war signifikant.","Die Korrelation zwischen den Variablen ist bedeutend."]', 'Die Korrelation zwischen den Variablen ist signifikant.', '', 1, 4),
  (l_id, 'multiple_choice', 'Was versteht man unter einem Schachtelsatz?', '["Mehrere ineinander verschachtelte Nebensätze","Einen sehr langen Hauptsatz","Einen Satz im Passiv","Einen Satz mit vielen Kommas"]', 'Mehrere ineinander verschachtelte Nebensätze', '', 1, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  (l_id, 'multiple_choice', 'Was bedeutet "die Kontroverse"?', '["الاتفاق","الجدل","التعاون","التطوير"]', 'الجدل', 1, 1),
  (l_id, 'true_false', 'Im deutschen Nebensatz steht das finite Verb an erster Position.', '["Richtig","Falsch"]', 'Falsch', 1, 2),
  (l_id, 'fill_blank', 'Der Sachverhalt, der _____ der Kontroverse ist, bedarf einer Klärung.', '["Gegenstand","Gegenstands","Gegenstande","Gegenstandes"]', 'Gegenstand', 1, 3),
  (l_id, 'multiple_choice', 'Wie beginnt ein Relativsatz im Deutschen?', '["mit einem Relativpronomen","mit \"dass\"","mit \"weil\"","mit \"ob\""]', 'mit einem Relativpronomen', 1, 4),
  (l_id, 'true_false', 'Nominalstil ist typisch für mündliche Kommunikation.', '["Richtig","Falsch"]', 'Falsch', 1, 5);

  -- Lesson 1.4: Wissenschaftlichen Text verfassen
  insert into public.course_lessons (module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published)
  values (m_id, 'Wissenschaftlichen Text verfassen', 'Einen akademischen Text auf C1-Niveau schreiben - Analyse und Argumentation', 'Akademische Sprache', 'writing', '["Learn key vocabulary","Practice grammar structures","Build comprehension skills","Apply in context","Review and reinforce"]', 60, 4, true)
  returning id into l_id;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, order_index) values
  (l_id, 'die Argumentation', 'الحجاج/المنطق', 'argumentation', 'die', 'die Argumentationen', 'noun', 'Die Argumentation des Autors ist schlüssig und gut strukturiert.', 'The author argumentation is coherent and well-structured.', 1),
  (l_id, 'die Kohärenz', 'الترابط', 'coherence', 'die', NULL, 'noun', 'Ein guter akademischer Text zeichnet sich durch Kohärenz aus.', 'A good academic text is characterized by coherence.', 2),
  (l_id, 'die Relevanz', 'الأهمية/الصلة', 'relevance', 'die', NULL, 'noun', 'Die Relevanz dieser Fragestellung ist offensichtlich.', 'The relevance of this question is obvious.', 3),
  (l_id, 'die Diskrepanz', 'التفاوت/التناقض', 'discrepancy', 'die', 'die Diskrepanzen', 'noun', 'Zwischen Theorie und Praxis besteht eine erhebliche Diskrepanz.', 'There is a considerable discrepancy between theory and practice.', 4),
  (l_id, 'die Synthese', 'التركيب/التوليف', 'synthesis', 'die', 'die Synthesen', 'noun', 'Eine Synthese der verschiedenen Forschungsansätze ist notwendig.', 'A synthesis of the various research approaches is necessary.', 5),
  (l_id, 'die Kontrastierung', 'المقابلة', 'contrasting', 'die', 'die Kontrastierungen', 'noun', 'Durch die Kontrastierung der Theorien werden die Unterschiede deutlich.', 'The contrasting of the theories makes the differences clear.', 6);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  (l_id, 'Textkohärenz durch Proformen und Wiederaufnahme', 'Proformen (Pronomen, Pro-Adverbien) und lexikalische Wiederaufnahme sind zentrale Mittel der Textkohärenz. Sie verhindern Wiederholungen und stellen inhaltliche Bezüge her.', '[{"rule":"Proformen ersetzen bereits genannte Satzteile.","note":"Die Studie wurde 2023 veröffentlicht. Sie zeigt... Daraus folgt..."},{"rule":"Lexikalische Wiederaufnahme: Synonyme, Oberbegriffe oder Paraphrasen.","note":"Der Forscher -> Der Wissenschaftler -> Der Autor"},{"rule":"Das Korrelat \"es\" verweist auf einen folgenden Nebensatz oder Infinitiv.","note":"Es ist wichtig, dass die Methode validiert wird."},{"rule":"Pro-Adverbien (davon, darauf, hierüber) ersetzen Präposition + Nomen.","note":"Der Autor argumentiert. Darauf bezieht sich die Kritik."}]', '[{"german":"Die Studie untersucht den Einfluss von Bildung auf die Gesellschaft. Sie kommt zu dem Ergebnis, dass Bildung eine zentrale Rolle spielt.","arabic":"تدرس الدراسة تأثير التعليم على المجتمع.","english":"The study examines the influence of education on society."},{"german":"Die Theorie wurde vielfach kritisiert. Dennoch wird sie von vielen Wissenschaftlern vertreten.","arabic":"تعرضت النظرية لانتقادات كثيرة.","english":"The theory has been criticized many times."},{"german":"Es handelt sich um ein Phänomen, das bisher kaum erforscht wurde.","arabic":"إنها ظاهرة لم تدرس إلا قليلاً.","english":"It is a phenomenon that has hardly been researched."},{"german":"Der Forscher stellt eine These auf. Diese wird von seinen Kollegen angezweifelt.","arabic":"يطرح العالم أطروحة لكن زملاءه يشككون فيها.","english":"The researcher puts forward a thesis."}]', '[{"mistake":"Die Studie zeigt Ergebnisse. Die Ergebnisse zeigen, dass...","correction":"Die Studie zeigt Ergebnisse. Diese belegen, dass...","explanation":"Statt \"Ergebnisse\" zu wiederholen, verwendet man \"diese\" als Proform."},{"mistake":"Es ist wichtig die Methode zu validieren.","correction":"Es ist wichtig, die Methode zu validieren.","explanation":"Das Korrelat \"es\" verweist auf den Infinitivsatz, abgetrennt durch Komma."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  (l_id, 'multiple_choice', 'Welche Proform ersetzt "die Studie"?', '["Sie","Es","Diese","Das"]', 'Sie', '"Sie" ist das Personalpronomen für feminin Singular.', 1, 1),
  (l_id, 'fill_gap', 'Der Autor argumentiert. _____ bezieht sich die gesamte Diskussion.', '["Darauf","Daran","Damit","Dafür"]', 'Darauf', '"Sich auf etwas beziehen" -> Pro-Adverb: darauf.', 1, 2),
  (l_id, 'fill_gap', '_____ ist bekannt, dass Bildung eine zentrale Rolle spielt.', '["Es","Sie","Man","Dies"]', 'Es', '"Es" fungiert als Korrelat für den dass-Satz.', 1, 3),
  (l_id, 'translation', 'Übersetze: "The relevance of this question is obvious."', '["Die Relevanz dieser Fragestellung ist offensichtlich.","Die Relevanz dieser Fragestellung ist sichtbar.","Die Relevanz dieser Frage ist klar.","Die Relevanz der Frage ist deutlich."]', 'Die Relevanz dieser Fragestellung ist offensichtlich.', '', 1, 4),
  (l_id, 'multiple_choice', 'Was ist ein Beispiel für lexikalische Wiederaufnahme?', '["Der Forscher -> Der Wissenschaftler","Die Studie -> Sie","Die Methode -> Diese","Das Ergebnis -> Es"]', 'Der Forscher -> Der Wissenschaftler', '', 1, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  (l_id, 'multiple_choice', 'Was bedeutet "die Kohärenz"?', '["الترابط","التعقيد","الطول","الوضوح"]', 'الترابط', 1, 1),
  (l_id, 'true_false', 'Proformen dienen der Vermeidung von Wiederholungen.', '["Richtig","Falsch"]', 'Richtig', 1, 2),
  (l_id, 'fill_blank', '_____ handelt sich um ein komplexes Phänomen.', '["Es","Sie","Er","Man"]', 'Es', 1, 3),
  (l_id, 'multiple_choice', 'Was ist das Pro-Adverb für "auf diese Theorie"?', '["darauf","davon","darin","dadurch"]', 'darauf', 1, 4),
  (l_id, 'true_false', 'Pauschalaussagen sind in der Wissenschaft erwünscht.', '["Richtig","Falsch"]', 'Falsch', 1, 5);

  -- Lesson 1.5: Wiederholung: Akademische Sprache
  insert into public.course_lessons (module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published)
  values (m_id, 'Wiederholung: Akademische Sprache', 'Alle Themen aus Modul 1 wiederholen und festigen', 'Akademische Sprache', 'review', '["Learn key vocabulary","Practice grammar structures","Build comprehension skills","Apply in context","Review and reinforce"]', 50, 5, true)
  returning id into l_id;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, order_index) values
  (l_id, 'die Validität', 'الصدق/الصلاحية', 'validity', 'die', NULL, 'noun', 'Die Validität der Testergebnisse muss sichergestellt sein.', 'The validity of the test results must be ensured.', 1),
  (l_id, 'die Reliabilität', 'الثبات/الموثوقية', 'reliability', 'die', NULL, 'noun', 'Die Reliabilität des Messinstruments ist hoch.', 'The reliability of the measuring instrument is high.', 2),
  (l_id, 'die Objektivität', 'الموضوعية', 'objectivity', 'die', NULL, 'noun', 'Objektivität ist ein zentrales Gütekriterium der Wissenschaft.', 'Objectivity is a central quality criterion of science.', 3),
  (l_id, 'die Abstraktion', 'التجريد', 'abstraction', 'die', 'die Abstraktionen', 'noun', 'Das Modell basiert auf einem hohen Grad an Abstraktion.', 'The model is based on a high degree of abstraction.', 4),
  (l_id, 'die Differenz', 'الفرق', 'difference', 'die', 'die Differenzen', 'noun', 'Die Differenz zwischen den Messwerten ist minimal.', 'The difference between the measured values is minimal.', 5);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  (l_id, 'Wiederholung: Nominalstil, Nomen-Verb-Verbindungen, Schachtelsätze und Proformen', 'Wiederholung der zentralen Grammatikthemen aus Modul 1.', '[{"rule":"Nominalstil: Handlungen werden durch Nomen ausgedrückt.","note":"Die Durchführung der Studie erfolgte..."},{"rule":"Nomen-Verb-Verbindungen: zum Ausdruck bringen, in Betracht ziehen.","note":"Diese Wendungen ersetzen einfache Verben."},{"rule":"Schachtelsätze: HS [NS1 [NS2 ...]] - Verben am Ende.","note":"Die These, die der Autor aufgestellt hat, ist..."},{"rule":"Proformen: Pronomen, Pro-Adverbien (darauf, hiermit, davon).","note":"Sie schaffen Textkohärenz."}]', '[{"german":"Die Validität der Ergebnisse steht außer Frage.","arabic":"صدق النتائج لا شك فيه.","english":"The validity of the results is beyond question."},{"german":"Der Forscher stellt die Hypothese zur Diskussion.","arabic":"يطرح الباحث الفرضية للنقاش.","english":"The researcher puts the hypothesis up for discussion."},{"german":"Die Reliabilität des Verfahrens, das in der Studie eingesetzt wurde, ist hoch.","arabic":"موثوقية الإجراء الذي استخدم في الدراسة عالية.","english":"The reliability of the procedure is high."}]', '[{"mistake":"Die Validität der Ergebnisse kann man nicht sicherstellen leicht.","correction":"Die Validität der Ergebnisse kann man nicht leicht sicherstellen.","explanation":"\"Nicht leicht\" steht vor dem infiniten Verb."},{"mistake":"Die Studie, die der Forscher, die an der Universität arbeitet, durchführte.","correction":"Die Studie, die der Forscher, der an der Universität arbeitet, durchführte.","explanation":"Forscher ist maskulin, daher \"der\"."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  (l_id, 'multiple_choice', 'Welche Nomen-Verb-Verbindung ersetzt "etwas vorschlagen"?', '["zur Diskussion stellen","in Betracht ziehen","zum Ausdruck bringen","unter Beweis stellen"]', 'zur Diskussion stellen', '', 1, 1),
  (l_id, 'fill_gap', 'Die _____ der Ergebnisse ist ein zentrales Gütekriterium.', '["Validität","Validierung","Validheit","Validitätlichkeit"]', 'Validität', '', 1, 2),
  (l_id, 'fill_gap', 'Die These, _____ der Autor aufgestellt hat, ist kontrovers.', '["die","der","den","das"]', 'die', '', 1, 3),
  (l_id, 'translation', 'Übersetze: "The objectivity of the research is ensured."', '["Die Objektivität der Forschung wird sichergestellt.","Die Objektivität der Forschung ist sicher.","Die Objektivität der Forschung macht sicher.","Die Objektivität der Forschung hat sicher."]', 'Die Objektivität der Forschung wird sichergestellt.', '', 1, 4),
  (l_id, 'multiple_choice', 'Welches Pro-Adverb passt: "Die Reliabilität ist hoch. _____ besteht kein Zweifel."', '["Daran","Darauf","Daraus","Dafür"]', 'Daran', '', 1, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  (l_id, 'multiple_choice', 'Was bedeutet "die Validität"?', '["الموثوقية","الصدق","الموضوعية","التجريد"]', 'الصدق', 1, 1),
  (l_id, 'true_false', '"Die Reliabilität" bezieht sich auf die Zuverlässigkeit.', '["Richtig","Falsch"]', 'Richtig', 1, 2),
  (l_id, 'fill_blank', 'Die _____ zwischen Theorie und Praxis ist erheblich.', '["Differenz","Differenzierung","Differenzial","Differenziertheit"]', 'Differenz', 1, 3),
  (l_id, 'multiple_choice', 'Welche Nomen-Verb-Verbindung bedeutet "to express"?', '["zum Ausdruck bringen","in Betracht ziehen","zur Anwendung bringen","unter Beweis stellen"]', 'zum Ausdruck bringen', 1, 4),
  (l_id, 'true_false', 'Ein Schachtelsatz besteht aus mehreren Hauptsätzen.', '["Richtig","Falsch"]', 'Falsch', 1, 5);

  -- Lesson 1.6: Test: Akademische Sprache
  insert into public.course_lessons (module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published)
  values (m_id, 'Test: Akademische Sprache', 'Abschlusstest für Modul 1', 'Akademische Sprache', 'test', '["Learn key vocabulary","Practice grammar structures","Build comprehension skills","Apply in context","Review and reinforce"]', 45, 6, true)
  returning id into l_id;

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  (l_id, 'multiple_choice', 'Was ist die Nominalisierung von "analysieren"?', '["die Analyse","die Analysierung","der Analytiker","das Analysat"]', 'die Analyse', '', 1, 1),
  (l_id, 'fill_gap', 'Der Autor _____ seine Theorie zur Diskussion.', '["stellt","bringt","setzt","legt"]', 'stellt', '', 1, 2),
  (l_id, 'translation', 'Übersetze: "The correlation is significant."', '["Die Korrelation ist signifikant.","Die Korrelation ist groß.","Die Korrelation ist sichtbar.","Die Korrelation ist stark."]', 'Die Korrelation ist signifikant.', '', 1, 3),
  (l_id, 'multiple_choice', 'Was ist ein Merkmal des Nominalstils?', '["Nomen drücken Handlungen aus.","Viele Verben drücken Handlungen aus.","Viele Adjektive werden verwendet.","Kurze Hauptsätze dominieren."]', 'Nomen drücken Handlungen aus.', '', 1, 4),
  (l_id, 'fill_gap', 'Es besteht eine erhebliche Diskrepanz _____ Theorie und Praxis.', '["zwischen","unter","über","von"]', 'zwischen', '', 1, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  (l_id, 'multiple_choice', 'Was bedeutet "die Implikation"?', '["التضمين","التطبيق","التقدير","التعريف"]', 'التضمين', 1, 1),
  (l_id, 'true_false', 'Der Nominalstil ist im akademischen Deutsch verbreitet.', '["Richtig","Falsch"]', 'Richtig', 1, 2),
  (l_id, 'fill_blank', 'Die _____ der Methode muss gewährleistet sein.', '["Reliabilität","Validität","Objektivität","Relevanz"]', 'Reliabilität', 1, 3),
  (l_id, 'multiple_choice', 'Welche Verbindung passt zu "berücksichtigen"?', '["in Betracht ziehen","zur Kenntnis nehmen","unter Beweis stellen","zur Anwendung bringen"]', 'in Betracht ziehen', 1, 4),
  (l_id, 'true_false', 'Pro-Adverbien ersetzen Präposition + Nomen.', '["Richtig","Falsch"]', 'Richtig', 1, 5),
  (l_id, 'multiple_choice', 'Was ist "die Synthese"?', '["التحليل","التركيب","التجريب","القياس"]', 'التركيب', 1, 6);

  -- Module 2: Wissenschaft und Forschung
  insert into public.course_modules (level_id, title, description, objectives, order_index, estimated_hours, is_published)
  values ('C1', 'Wissenschaft und Forschung', 'Vertiefe deine wissenschaftliche Sprachkompetenz. Partizipialattribute, Passivumschreibungen und indirekte Rede in Forschungskontexten.', '["Erweiterte Partizipialattribute verstehen und anwenden","Passivumschreibungen (sein + zu + Infinitiv, sich lassen + Infinitiv) aktiv nutzen","Indirekte Rede in wissenschaftlichen Texten korrekt verwenden","Forschungsterminologie sicher beherrschen"]', 2, 5.0, true)
  returning id into m_id;

  -- Lesson 2.1: Forschungsterminologie
  insert into public.course_lessons (module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published)
  values (m_id, 'Forschungsterminologie', 'Zentrale Begriffe der wissenschaftlichen Forschung', 'Wissenschaft und Forschung', 'vocabulary', '["Learn key vocabulary","Practice grammar structures","Build comprehension skills","Apply in context","Review and reinforce"]', 50, 1, true)
  returning id into l_id;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, order_index) values
  (l_id, 'das Phänomen', 'الظاهرة', 'phenomenon', 'das', 'die Phänomene', 'noun', 'Bei diesem Phänomen handelt es sich um eine seltene Wechselwirkung.', 'This phenomenon is a rare interaction.', 1),
  (l_id, 'die Variable', 'المتغير', 'variable', 'die', 'die Variablen', 'noun', 'Die abhängige Variable wurde unter kontrollierten Bedingungen gemessen.', 'The dependent variable was measured under controlled conditions.', 2),
  (l_id, 'das Kriterium', 'المعيار', 'criterion', 'das', 'die Kriterien', 'noun', 'Die Kriterien für die Auswahl der Probanden waren streng definiert.', 'The criteria for selecting the subjects were strictly defined.', 3),
  (l_id, 'die Statistik', 'الإحصاء', 'statistics', 'die', 'die Statistiken', 'noun', 'Die Statistik belegt einen signifikanten Zusammenhang.', 'The statistics show a significant correlation.', 4),
  (l_id, 'die Repräsentativität', 'التمثيلية', 'representativeness', 'die', NULL, 'noun', 'Die Repräsentativität der Stichprobe ist gegeben.', 'The representativeness of the sample is given.', 5),
  (l_id, 'die Stichprobe', 'العينة', 'sample', 'die', 'die Stichproben', 'noun', 'Die Stichprobe umfasste 1000 Teilnehmer.', 'The sample included 1000 participants.', 6),
  (l_id, 'die Signifikanz', 'الدلالة الإحصائية', 'significance', 'die', 'die Signifikanzen', 'noun', 'Die Signifikanz der Ergebnisse wurde statistisch nachgewiesen.', 'The significance of the results was statistically proven.', 7);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  (l_id, 'Erweiterte Partizipialattribute', 'Erweiterte Partizipialattribute sind komplexe Attributkonstruktionen, bei denen ein Partizip (Partizip I oder II) mit weiteren Satzgliedern erweitert wird. Sie ersetzen häufig Relativsätze und sind typisch für die Wissenschaftssprache.', '[{"rule":"Partizip I (aktiv, gleichzeitig): Erweiterung + Partizip I + Nomen.","note":"der die Ergebnisse analysierende Forscher"},{"rule":"Partizip II (passiv, vorzeitig): Erweiterung + Partizip II + Nomen.","note":"die im letzten Jahr durchgeführte Studie"},{"rule":"Die Erweiterung steht zwischen Artikel und Nomen, vor dem Partizip.","note":"die kürzlich veröffentlichte Studie"},{"rule":"Partizipialattribute wirken komprimiert und formal.","note":"Die unter Laborbedingungen gewonnenen Daten wurden ausgewertet."}]', '[{"german":"Die im letzten Jahr durchgeführte Studie zeigt eindeutige Ergebnisse.","arabic":"تظهر الدراسة التي أجريت العام الماضي نتائج واضحة.","english":"The study conducted last year shows clear results."},{"german":"Der für seine Forschung bekannte Wissenschaftler erhielt einen Preis.","arabic":"حصل العالم المعروف بأبحاثه على جائزة.","english":"The scientist known for his research received an award."},{"german":"Die unter kontrollierten Bedingungen erhobenen Daten wurden ausgewertet.","arabic":"تم تحليل البيانات التي تم جمعها تحت ظروف محكومة.","english":"The data collected under controlled conditions were evaluated."},{"german":"Die für die Studie ausgewählte Stichprobe ist repräsentativ.","arabic":"العينة المختارة للدراسة تمثيلية.","english":"The sample selected for the study is representative."}]', '[{"mistake":"Die Studie wurde durchgeführt im letzten Jahr. (should be attributive)","correction":"Die im letzten Jahr durchgeführte Studie...","explanation":"Statt Relativsatz ein Partizipialattribut verwenden."},{"mistake":"Der Forscher analysierend die Daten.","correction":"Der die Daten analysierende Forscher.","explanation":"Das Partizip I hat die Endung -end, die Erweiterung steht davor."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  (l_id, 'multiple_choice', 'Was ist ein erweitertes Partizipialattribut?', '["Eine Attributkonstruktion mit Partizip","Ein einfaches Adjektiv","Ein Relativsatz","Ein Nebensatz mit \"dass\""]', 'Eine Attributkonstruktion mit Partizip', '', 1, 1),
  (l_id, 'fill_gap', 'Die _____ Studie wurde 2024 veröffentlicht. (im Jahr 2023 durchführen)', '["im Jahr 2023 durchgeführte","2023 durchgeführten","durchgeführte 2023","2023 durchgeführte die"]', 'im Jahr 2023 durchgeführte', '', 1, 2),
  (l_id, 'translation', 'Übersetze: "The sample selected for the study is representative."', '["Die für die Studie ausgewählte Stichprobe ist repräsentativ.","Die Stichprobe für die Studie ist repräsentativ.","Die Studie ausgewählte Stichprobe ist repräsentativ."]', 'Die für die Studie ausgewählte Stichprobe ist repräsentativ.', '', 1, 3),
  (l_id, 'multiple_choice', 'Welches Partizip verwendet man für eine passive, vorzeitige Handlung?', '["Partizip II","Partizip I","Partizip Präsens","Infinitiv"]', 'Partizip II', '', 1, 4),
  (l_id, 'fill_gap', 'Der _____ Forscher arbeitet an einer neuen Theorie. (sich mit Klimaforschung beschäftigen)', '["sich mit Klimaforschung beschäftigende","sich mit Klimaforschung beschäftigte","mit Klimaforschung beschäftigende sich"]', 'sich mit Klimaforschung beschäftigende', '', 1, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  (l_id, 'multiple_choice', 'Was bedeutet "die Stichprobe"?', '["العينة","الفحص","الاختبار","القياس"]', 'العينة', 1, 1),
  (l_id, 'true_false', 'Partizipialattribute ersetzen oft Relativsätze.', '["Richtig","Falsch"]', 'Richtig', 1, 2),
  (l_id, 'fill_blank', 'Die von der WHO _____ Richtlinien wurden aktualisiert.', '["herausgegebenen","herausgebenden","herausgegebene","herausgebene"]', 'herausgegebenen', 1, 3),
  (l_id, 'multiple_choice', 'Partizip I drückt eine ... Handlung aus.', '["aktive, gleichzeitige","passive, vorzeitige","aktive, vorzeitige","passive, gleichzeitige"]', 'aktive, gleichzeitige', 1, 4),
  (l_id, 'true_false', 'Der Plural von "das Phänomen" ist "die Phänomene".', '["Richtig","Falsch"]', 'Richtig', 1, 5);

  -- Lesson 2.2: Wissenschaftliche Methoden
  insert into public.course_lessons (module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published)
  values (m_id, 'Wissenschaftliche Methoden', 'Methodische Begriffe und Verfahren der wissenschaftlichen Arbeit', 'Wissenschaft und Forschung', 'vocabulary', '["Learn key vocabulary","Practice grammar structures","Build comprehension skills","Apply in context","Review and reinforce"]', 50, 2, true)
  returning id into l_id;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, order_index) values
  (l_id, 'die Empirie', 'التجريبية/المعاينة', 'empiricism', 'die', NULL, 'noun', 'Die Empirie bildet die Grundlage der naturwissenschaftlichen Forschung.', 'Empiricism forms the basis of scientific research.', 1),
  (l_id, 'die Datenerhebung', 'جمع البيانات', 'data collection', 'die', 'die Datenerhebungen', 'noun', 'Die Datenerhebung erfolgte mittels standardisierter Fragebögen.', 'The data collection was carried out using standardized questionnaires.', 2),
  (l_id, 'die Auswertung', 'التقييم/التحليل', 'evaluation', 'die', 'die Auswertungen', 'noun', 'Die Auswertung der Daten dauerte mehrere Wochen.', 'The evaluation of the data took several weeks.', 3),
  (l_id, 'die Probandengruppe', 'مجموعة المشاركين', 'subject group', 'die', 'die Probandengruppen', 'noun', 'Die Probandengruppe setzte sich aus Freiwilligen zusammen.', 'The subject group consisted of volunteers.', 4),
  (l_id, 'die Kontrollgruppe', 'المجموعة الضابطة', 'control group', 'die', 'die Kontrollgruppen', 'noun', 'Die Kontrollgruppe erhielt ein Placebo.', 'The control group received a placebo.', 5),
  (l_id, 'die Extrapolation', 'الاستقراء/التوقع', 'extrapolation', 'die', 'die Extrapolationen', 'noun', 'Eine Extrapolation der Daten lässt auf einen positiven Trend schließen.', 'An extrapolation of the data suggests a positive trend.', 6);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  (l_id, 'Passivumschreibungen: sein + zu + Infinitiv, sich lassen + Infinitiv', 'Neben dem werden-Passiv gibt es im Deutschen Passivumschreibungen mit modaler Bedeutung. "sein + zu + Infinitiv" drückt Notwendigkeit oder Möglichkeit aus; "sich lassen + Infinitiv" drückt Möglichkeit aus.', '[{"rule":"\"sein + zu + Infinitiv\" = müssen (Notwendigkeit) oder können (Möglichkeit).","note":"Der Fehler ist zu korrigieren. / Das ist nicht zu übersehen."},{"rule":"\"sich lassen + Infinitiv\" = Möglichkeit (wie können + Passiv).","note":"Die Daten lassen sich leicht auswerten."},{"rule":"Negation: \"nicht zu + Infinitiv\" = unmöglich.","note":"Das Phänomen ist nicht zu erklären."},{"rule":"\"sein + zu + Infinitiv\" ist formeller als \"sich lassen + Infinitiv\".","note":"Die Hypothese ist zu verifizieren. (formeller)"}]', '[{"german":"Die Ergebnisse der Studie sind zu überprüfen.","arabic":"يجب فحص نتائج الدراسة.","english":"The results of the study must be checked."},{"german":"Diese Daten lassen sich statistisch auswerten.","arabic":"يمكن تحليل هذه البيانات إحصائياً.","english":"These data can be evaluated statistically."},{"german":"Der Zusammenhang ist nicht zu leugnen.","arabic":"لا يمكن إنكار العلاقة.","english":"The connection cannot be denied."},{"german":"Die Variable lässt sich unter Laborbedingungen kontrollieren.","arabic":"يمكن التحكم في المتغير.","english":"The variable can be controlled under laboratory conditions."}]', '[{"mistake":"Die Daten sind zu ausgewertet werden.","correction":"Die Daten sind auszuwerten.","explanation":"\"sein + zu + Infinitiv\" verwendet den Infinitiv mit \"zu\", nicht Partizip + \"werden\"."},{"mistake":"Die Methode lässt sich zu überprüfen.","correction":"Die Methode lässt sich überprüfen.","explanation":"\"sich lassen\" verwendet den reinen Infinitiv (ohne \"zu\")."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  (l_id, 'multiple_choice', 'Welche Bedeutung hat "sein + zu + Infinitiv"?', '["Notwendigkeit oder Möglichkeit","Nur Vergangenheit","Nur Zukunft","Nur Wunsch"]', 'Notwendigkeit oder Möglichkeit', '', 1, 1),
  (l_id, 'fill_gap', 'Die Daten _____ sich leicht auswerten.', '["lassen","sind","werden","haben"]', 'lassen', '', 1, 2),
  (l_id, 'fill_gap', 'Die Methode ist kritisch zu _____.', '["überprüfen","überprüft","überprüfend","überprüfbar"]', 'überprüfen', '', 1, 3),
  (l_id, 'translation', 'Übersetze: "This phenomenon cannot be denied."', '["Dieses Phänomen ist nicht zu leugnen.","Dieses Phänomen ist nicht geleugnet.","Dieses Phänomen wird nicht geleugnet.","Dieses Phänomen hat nicht geleugnet."]', 'Dieses Phänomen ist nicht zu leugnen.', '', 1, 4),
  (l_id, 'multiple_choice', 'Welche Umschreibung ist formeller?', '["sein + zu + Infinitiv","sich lassen + Infinitiv","werden + Partizip II","haben + Partizip II"]', 'sein + zu + Infinitiv', '', 1, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  (l_id, 'multiple_choice', 'Was bedeutet "die Datenerhebung"?', '["جمع البيانات","تحليل البيانات","تفسير البيانات","عرض البيانات"]', 'جمع البيانات', 1, 1),
  (l_id, 'true_false', '"Sich lassen + Infinitiv" drückt eine Notwendigkeit aus.', '["Richtig","Falsch"]', 'Falsch', 1, 2),
  (l_id, 'fill_blank', 'Die Ergebnisse lassen sich nicht _____.', '["leugnen","leugnet","geleugnet","zu leugnen"]', 'leugnen', 1, 3),
  (l_id, 'true_false', '"Die Probandengruppe" ist die Kontrollgruppe.', '["Richtig","Falsch"]', 'Falsch', 1, 4),
  (l_id, 'multiple_choice', 'Welche Präposition passt: "Die Daten wurden _____ Fragebögen erhoben."', '["mittels","mit","durch","von"]', 'mittels', 1, 5);

  -- Lesson 2.3: Partizipialattribute und Passivumschreibungen
  insert into public.course_lessons (module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published)
  values (m_id, 'Partizipialattribute und Passivumschreibungen', 'Vertiefung der attributiven und passiven Konstruktionen im Forschungsdiskurs', 'Wissenschaft und Forschung', 'grammar', '["Learn key vocabulary","Practice grammar structures","Build comprehension skills","Apply in context","Review and reinforce"]', 60, 3, true)
  returning id into l_id;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, order_index) values
  (l_id, 'die Verifizierung', 'التحقق', 'verification', 'die', 'die Verifizierungen', 'noun', 'Die Verifizierung der Hypothese steht noch aus.', 'The verification of the hypothesis is still pending.', 1),
  (l_id, 'die Falsifizierung', 'التفنيد/الإبطال', 'falsification', 'die', 'die Falsifizierungen', 'noun', 'Nach Popper ist die Falsifizierung ein zentrales Prinzip.', 'According to Popper, falsification is a central principle.', 2),
  (l_id, 'die Reproduzierbarkeit', 'قابلية التكرار', 'reproducibility', 'die', NULL, 'noun', 'Die Reproduzierbarkeit der Ergebnisse ist ein Gütekriterium.', 'The reproducibility of the results is a quality criterion.', 3),
  (l_id, 'die Korrelation', 'الارتباط', 'correlation', 'die', 'die Korrelationen', 'noun', 'Die Korrelation zwischen den Faktoren ist signifikant.', 'The correlation between the factors is significant.', 4),
  (l_id, 'die Kausalität', 'السببية', 'causality', 'die', 'die Kausalitäten', 'noun', 'Korrelation impliziert nicht zwangsläufig Kausalität.', 'Correlation does not necessarily imply causality.', 5);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  (l_id, 'Indirekte Rede in wissenschaftlichen Texten', 'Die indirekte Rede (Konjunktiv I) wird verwendet, um Aussagen Dritter wiederzugeben, ohne sie selbst zu bewerten. In wissenschaftlichen Texten ist sie essenziell für die Zitation und Wiedergabe von Forschungspositionen.', '[{"rule":"Konjunktiv I für indirekte Rede (Neutralität, Distanz).","note":"Der Autor behauptet, die Ergebnisse seien signifikant."},{"rule":"Bildung: Stamm + -e, -est, -e, -en, -et, -en.","note":"er habe, er sei, er werde, er könne, er müsse"},{"rule":"Wenn Konjunktiv I = Indikativ, weicht man auf Konjunktiv II aus.","note":"Sie sagen, sie hätten (statt: haben) die Studie durchgeführt."},{"rule":"Typische Verben: behaupten, annehmen, postulieren, betonen, einräumen.","note":"Der Forscher postuliert, dass ein Zusammenhang bestehe."}]', '[{"german":"Der Wissenschaftler behauptet, die Ergebnisse seien reproduzierbar.","arabic":"يدعي العالم أن النتائج قابلة للتكرار.","english":"The scientist claims that the results are reproducible."},{"german":"Die Autoren postulieren, dass ein kausaler Zusammenhang bestehe.","arabic":"يفترض المؤلفون وجود علاقة سببية.","english":"The authors postulate that a causal relationship exists."},{"german":"Kritiker wenden ein, die Stichprobe sei nicht repräsentativ.","arabic":"يعترض النقاد بأن العينة ليست تمثيلية.","english":"Critics object that the sample is not representative."},{"german":"Der Forscher räumt ein, dass die Variable nicht kontrollierbar gewesen sei.","arabic":"يعترف الباحث بأن المتغير لم يكن قابلاً للتحكم.","english":"The researcher concedes that the variable was not controllable."}]', '[{"mistake":"Der Autor sagt, dass die Ergebnisse sind signifikant.","correction":"Der Autor sagt, dass die Ergebnisse signifikant seien.","explanation":"In der indirekten Rede mit \"dass\" steht der Konjunktiv am Ende."},{"mistake":"Die Forscher meinen, die Daten wären ausreichend. (Konj. II statt I)","correction":"Die Forscher meinen, die Daten seien ausreichend.","explanation":"Konjunktiv I (seien) ist korrekt, Konjunktiv II (wären) würde Irrealis ausdrücken."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  (l_id, 'multiple_choice', 'Welcher Modus wird für die indirekte Rede verwendet?', '["Konjunktiv I","Konjunktiv II","Indikativ","Imperativ"]', 'Konjunktiv I', '', 1, 1),
  (l_id, 'fill_gap', 'Der Autor behauptet, die Ergebnisse _____ signifikant.', '["seien","sind","wären","waren"]', 'seien', '', 1, 2),
  (l_id, 'fill_gap', 'Die Forscher postulieren, dass ein Zusammenhang _____.', '["bestehe","besteht","bestand","bestünde"]', 'bestehe', '', 1, 3),
  (l_id, 'translation', 'Übersetze: "The author argues that the method is valid."', '["Der Autor argumentiert, die Methode sei valide.","Der Autor argumentiert, die Methode ist valide.","Der Autor argumentiert, die Methode wäre valide."]', 'Der Autor argumentiert, die Methode sei valide.', '', 1, 4),
  (l_id, 'multiple_choice', 'Was drückt die indirekte Rede im wissenschaftlichen Kontext aus?', '["Neutralität und Distanz","Zustimmung","Ablehnung","Emotion"]', 'Neutralität und Distanz', '', 1, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  (l_id, 'multiple_choice', 'Was bedeutet "die Falsifizierung"?', '["التحقق","التكرار","الإبطال","التأكيد"]', 'الإبطال', 1, 1),
  (l_id, 'true_false', 'Konjunktiv I wird für die indirekte Rede verwendet.', '["Richtig","Falsch"]', 'Richtig', 1, 2),
  (l_id, 'fill_blank', 'Der Kritiker wendet ein, die Methode _____ nicht angemessen.', '["sei","ist","wäre","war"]', 'sei', 1, 3),
  (l_id, 'multiple_choice', 'Welches Verb passt NICHT zur indirekten Rede?', '["argumentieren","postulieren","befehlen","behaupten"]', 'befehlen', 1, 4),
  (l_id, 'true_false', 'Korrelation impliziert immer Kausalität.', '["Richtig","Falsch"]', 'Falsch', 1, 5);

  -- Lesson 2.4: Forschungsartikel lesen und analysieren
  insert into public.course_lessons (module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published)
  values (m_id, 'Forschungsartikel lesen und analysieren', 'Einen wissenschaftlichen Fachartikel auf Deutsch verstehen und auswerten', 'Wissenschaft und Forschung', 'reading', '["Learn key vocabulary","Practice grammar structures","Build comprehension skills","Apply in context","Review and reinforce"]', 60, 4, true)
  returning id into l_id;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, order_index) values
  (l_id, 'der Abstract', 'الملخص', 'abstract', 'der', 'die Abstracts', 'noun', 'Der Abstract fasst die wichtigsten Ergebnisse zusammen.', 'The abstract summarizes the most important results.', 1),
  (l_id, 'die Einleitung', 'المقدمة', 'introduction', 'die', 'die Einleitungen', 'noun', 'In der Einleitung wird die Forschungsfrage hergeleitet.', 'The introduction derives the research question.', 2),
  (l_id, 'die Methodik', 'المنهجية', 'methodology', 'die', 'die Methodiken', 'noun', 'Die Methodik wird im dritten Kapitel beschrieben.', 'The methodology is described in the third chapter.', 3),
  (l_id, 'die Diskussion', 'المناقشة', 'discussion', 'die', 'die Diskussionen', 'noun', 'In der Diskussion werden die Ergebnisse interpretiert.', 'In the discussion, the results are interpreted.', 4),
  (l_id, 'das Literaturverzeichnis', 'قائمة المراجع', 'bibliography', 'das', 'die Literaturverzeichnisse', 'noun', 'Das Literaturverzeichnis umfasst 50 Quellen.', 'The bibliography includes 50 sources.', 5),
  (l_id, 'die Publikation', 'النشر', 'publication', 'die', 'die Publikationen', 'noun', 'Die Publikation in einem renommierten Journal ist ein wichtiger Meilenstein.', 'Publication in a renowned journal is an important milestone.', 6);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  (l_id, 'Passiv in wissenschaftlichen Texten - Varianten und Funktionen', 'In wissenschaftlichen Texten wird Passiv häufig verwendet, um den Fokus auf die Handlung oder das Ergebnis zu legen, nicht auf die handelnde Person.', '[{"rule":"Vorgangspassiv (werden + Partizip II): fokussiert den Prozess.","note":"Die Daten werden analysiert."},{"rule":"Zustandspassiv (sein + Partizip II): fokussiert das Resultat.","note":"Die Daten sind analysiert."},{"rule":"Passiv mit Modalverb: müssen/können + Partizip II + werden.","note":"Die Ergebnisse müssen überprüft werden."},{"rule":"Passivumschreibungen: sein + zu (müssen/können), sich lassen (können).","note":"Die Daten sind zu überprüfen."}]', '[{"german":"Die Studie wurde unter kontrollierten Bedingungen durchgeführt.","arabic":"تم إجراء الدراسة تحت ظروف محكومة.","english":"The study was conducted under controlled conditions."},{"german":"Die Ergebnisse sind in der folgenden Tabelle zusammengefasst.","arabic":"تم تلخيص النتائج في الجدول التالي.","english":"The results are summarized in the following table."},{"german":"Die Reproduzierbarkeit der Daten muss gewährleistet werden.","arabic":"يجب ضمان قابلية تكرار البيانات.","english":"The reproducibility of the data must be ensured."}]', '[{"mistake":"Die Daten können analysiert werden. (correct but verbose)","correction":"Die Daten lassen sich analysieren.","explanation":"Auf C1-Niveau ist \"lassen sich\" oft eleganter als \"können ... werden\"."},{"mistake":"Die Studie ist durchgeführt worden. (Vorgangspassiv Perfekt)","correction":"Die Studie ist durchgeführt. (Zustandspassiv für Resultat)","explanation":"Will man das Resultat betonen, verwendet man das Zustandspassiv."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  (l_id, 'multiple_choice', 'Welche Passivform fokussiert das Resultat?', '["Zustandspassiv","Vorgangspassiv","Passiv mit Modalverb","Passivumschreibung"]', 'Zustandspassiv', '', 1, 1),
  (l_id, 'fill_gap', 'Der Artikel _____ in einem Journal veröffentlicht.', '["wurde","ist","hat","wird"]', 'wurde', '', 1, 2),
  (l_id, 'fill_gap', 'Die Ergebnisse müssen _____ werden.', '["überprüft","überprüfen","überprüfend","zu überprüfen"]', 'überprüft', '', 1, 3),
  (l_id, 'translation', 'Übersetze: "The reproducibility must be ensured."', '["Die Reproduzierbarkeit muss gewährleistet werden.","Die Reproduzierbarkeit muss gewährleisten.","Die Reproduzierbarkeit muss gewährleistet sein."]', 'Die Reproduzierbarkeit muss gewährleistet werden.', '', 1, 4),
  (l_id, 'multiple_choice', 'Was ist der Unterschied: "ist durchgeführt" vs "wurde durchgeführt"?', '["Zustand vs. Vorgang","Präsens vs. Präteritum","Aktiv vs. Passiv","formal vs. informell"]', 'Zustand vs. Vorgang', '', 1, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  (l_id, 'multiple_choice', 'Was bedeutet "der Abstract"?', '["الملخص","المقدمة","المنهجية","المناقشة"]', 'الملخص', 1, 1),
  (l_id, 'true_false', 'Das Zustandspassiv wird mit "werden" gebildet.', '["Richtig","Falsch"]', 'Falsch', 1, 2),
  (l_id, 'fill_blank', 'In der Diskussion werden die Ergebnisse _____.', '["interpretiert","interpretieren","interpretierend","zu interpretieren"]', 'interpretiert', 1, 3),
  (l_id, 'multiple_choice', 'Was steht am Ende eines wissenschaftlichen Artikels?', '["das Literaturverzeichnis","die Einleitung","der Abstract","die Methodik"]', 'das Literaturverzeichnis', 1, 4),
  (l_id, 'true_false', 'Im Vorgangspassiv wird der Prozess betont.', '["Richtig","Falsch"]', 'Richtig', 1, 5);

  -- Lesson 2.5: Wiederholung: Wissenschaft und Forschung
  insert into public.course_lessons (module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published)
  values (m_id, 'Wiederholung: Wissenschaft und Forschung', 'Alle Themen aus Modul 2 wiederholen und festigen', 'Wissenschaft und Forschung', 'review', '["Learn key vocabulary","Practice grammar structures","Build comprehension skills","Apply in context","Review and reinforce"]', 50, 5, true)
  returning id into l_id;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, order_index) values
  (l_id, 'die Plausibilität', 'المعقولية', 'plausibility', 'die', NULL, 'noun', 'Die Plausibilität der Hypothese muss geprüft werden.', 'The plausibility of the hypothesis must be checked.', 1),
  (l_id, 'die Toleranzgrenze', 'حد التسامح', 'tolerance limit', 'die', 'die Toleranzgrenzen', 'noun', 'Die Werte liegen innerhalb der Toleranzgrenze.', 'The values are within the tolerance limit.', 2),
  (l_id, 'die Induktion', 'الاستقراء', 'induction', 'die', 'die Induktionen', 'noun', 'Durch Induktion gelangt man vom Speziellen zum Allgemeinen.', 'Through induction, one moves from the specific to the general.', 3),
  (l_id, 'die Deduktion', 'الاستنباط', 'deduction', 'die', 'die Deduktionen', 'noun', 'Die Deduktion leitet vom Allgemeinen auf das Spezielle.', 'Deduction moves from the general to the specific.', 4),
  (l_id, 'die Replikation', 'التكرار', 'replication', 'die', 'die Replikationen', 'noun', 'Die Replikation der Studie bestätigte die Ergebnisse.', 'The replication of the study confirmed the results.', 5);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  (l_id, 'Wiederholung: Partizipialattribute, Passivumschreibungen, indirekte Rede', 'Wiederholung der Grammatikthemen aus Modul 2.', '[{"rule":"Partizipialattribute: Artikel + [Erweiterung] + Partizip + Nomen.","note":"die unter Laborbedingungen gewonnenen Daten"},{"rule":"sein + zu + Infinitiv = Notwendigkeit oder Möglichkeit.","note":"Die Methode ist zu validieren."},{"rule":"sich lassen + Infinitiv = Möglichkeit.","note":"Die Ergebnisse lassen sich reproduzieren."},{"rule":"Indirekte Rede: Konjunktiv I.","note":"Der Autor behauptet, die Ergebnisse seien signifikant."}]', '[{"german":"Die unter standardisierten Bedingungen erhobenen Daten sind zu überprüfen.","arabic":"يجب فحص البيانات التي تم جمعها.","english":"The data collected under standardized conditions must be checked."},{"german":"Die Korrelation zwischen den Variablen lässt sich statistisch belegen.","arabic":"يمكن إثبات الارتباط.","english":"The correlation can be statistically proven."},{"german":"Der Forscher postuliert, dass ein kausaler Zusammenhang bestehe.","arabic":"يفترض الباحث وجود علاقة سببية.","english":"The researcher postulates that a causal relationship exists."}]', '[{"mistake":"Die Daten sind zu überprüft.","correction":"Die Daten sind zu überprüfen.","explanation":"\"sein + zu\" verwendet den Infinitiv, nicht Partizip II."},{"mistake":"Der Autor sagt, dass die Methode ist valide.","correction":"Der Autor sagt, dass die Methode valide sei.","explanation":"Konjunktiv am Ende des Nebensatzes."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  (l_id, 'multiple_choice', 'Welche Bedeutung hat "sein + zu + Infinitiv"?', '["Notwendigkeit oder Möglichkeit","Nur Vergangenheit","Nur Wunsch","Nur Zukunft"]', 'Notwendigkeit oder Möglichkeit', '', 1, 1),
  (l_id, 'fill_gap', 'Die _____ Studie wurde mehrfach zitiert. (2022 veröffentlichen)', '["2022 veröffentlichte","2022 veröffentlichende","2022 veröffentlichen","2022 veröffentlichter"]', '2022 veröffentlichte', '', 1, 2),
  (l_id, 'fill_gap', 'Die Daten _____ sich nicht reproduzieren.', '["lassen","sind","werden","haben"]', 'lassen', '', 1, 3),
  (l_id, 'translation', 'Übersetze: "The author claims that the sample is representative."', '["Der Autor behauptet, die Stichprobe sei repräsentativ.","Der Autor behauptet, die Stichprobe ist repräsentativ.","Der Autor behauptet, die Stichprobe wäre repräsentativ."]', 'Der Autor behauptet, die Stichprobe sei repräsentativ.', '', 1, 4),
  (l_id, 'multiple_choice', 'Welcher Satz enthält ein Partizipialattribut?', '["Die von der WHO entwickelten Richtlinien sind verbindlich.","Die WHO entwickelte Richtlinien.","Die Richtlinien wurden entwickelt."]', 'Die von der WHO entwickelten Richtlinien sind verbindlich.', '', 1, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  (l_id, 'multiple_choice', 'Was bedeutet "die Plausibilität"?', '["المعقولية","الموثوقية","التمثيلية","السببية"]', 'المعقولية', 1, 1),
  (l_id, 'true_false', 'Indirekte Rede verwendet den Konjunktiv I.', '["Richtig","Falsch"]', 'Richtig', 1, 2),
  (l_id, 'fill_blank', 'Die Replikation der Studie _____ die Ergebnisse.', '["bestätigte","bestätigt","bestätigen","bestätigt hat"]', 'bestätigte', 1, 3),
  (l_id, 'multiple_choice', 'Was ist "sein + zu + Infinitiv"?', '["Passivumschreibung","Aktivsatz","Tempus","Modus"]', 'Passivumschreibung', 1, 4),
  (l_id, 'true_false', '"Induktion" bewegt sich vom Allgemeinen zum Speziellen.', '["Richtig","Falsch"]', 'Falsch', 1, 5);

  -- Lesson 2.6: Test: Wissenschaft und Forschung
  insert into public.course_lessons (module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published)
  values (m_id, 'Test: Wissenschaft und Forschung', 'Abschlusstest für Modul 2', 'Wissenschaft und Forschung', 'test', '["Learn key vocabulary","Practice grammar structures","Build comprehension skills","Apply in context","Review and reinforce"]', 45, 6, true)
  returning id into l_id;

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  (l_id, 'multiple_choice', 'Was ist ein erweitertes Partizipialattribut?', '["Attribut mit Partizip I/II und Erweiterung","Einfaches Adjektiv","Relativsatz","dass-Satz"]', 'Attribut mit Partizip I/II und Erweiterung', '', 1, 1),
  (l_id, 'fill_gap', 'Die _____ Studie wurde beachtet. (2023 durchführen)', '["2023 durchgeführte","2023 durchgeführten","2023 durchführende","2023 durchgeführte die"]', '2023 durchgeführte', '', 1, 2),
  (l_id, 'translation', 'Übersetze: "The hypothesis must be verified."', '["Die Hypothese ist zu verifizieren.","Die Hypothese muss verifizieren.","Die Hypothese hat verifiziert.","Die Hypothese wird verifizieren."]', 'Die Hypothese ist zu verifizieren.', '', 1, 3),
  (l_id, 'multiple_choice', 'Was drückt "sich lassen + Infinitiv" aus?', '["Möglichkeit","Notwendigkeit","Vergangenheit","Befehl"]', 'Möglichkeit', '', 1, 4),
  (l_id, 'fill_gap', 'Der Autor argumentiert, die Ergebnisse _____ signifikant.', '["seien","sind","wären","waren"]', 'seien', '', 1, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  (l_id, 'multiple_choice', 'Was bedeutet "die Reproduzierbarkeit"?', '["قابلية التكرار","قابلية القياس","التحقق","التعميم"]', 'قابلية التكرار', 1, 1),
  (l_id, 'true_false', 'Im Zustandspassiv wird der Vorgang betont.', '["Richtig","Falsch"]', 'Falsch', 1, 2),
  (l_id, 'fill_blank', 'Die Variable _____ sich kontrollieren.', '["lässt","ist","wird","hat"]', 'lässt', 1, 3),
  (l_id, 'multiple_choice', 'Welcher Modus für neutrale Wiedergabe?', '["Konjunktiv I","Konjunktiv II","Indikativ","Imperativ"]', 'Konjunktiv I', 1, 4),
  (l_id, 'true_false', '"Die Einleitung" steht am Anfang eines Artikels.', '["Richtig","Falsch"]', 'Richtig', 1, 5),
  (l_id, 'fill_blank', 'Die Ergebnisse sind in der Tabelle _____.', '["zusammengefasst","zusammenfassend","zusammenfassen","zusammenzufassen"]', 'zusammengefasst', 1, 6);

  -- Module 3: Medienanalyse
  insert into public.course_modules (level_id, title, description, objectives, order_index, estimated_hours, is_published)
  values ('C1', 'Medienanalyse', 'Analysiere Medieninhalte auf Deutsch. Lerne Konnektoren der Argumentation, Redewiedergabe und die Intensivierung durch Gradpartikeln.', '["Konnektoren der Argumentation (zwar...aber, einerseits...andererseits) sicher verwenden","Redewiedergabe in Medienkontexten korrekt anwenden","Gradpartikeln (äußerst, durchaus, keineswegs) differenziert nutzen","Medieninhalte kritisch analysieren und kommentieren","Komplexe Argumentationsstrukturen in Medientexten verstehen"]', 3, 5.0, true)
  returning id into m_id;

  -- Lesson 3.1: Medienlandschaft
  insert into public.course_lessons (module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published)
  values (m_id, 'Medienlandschaft', 'Zentrale Begriffe der Medien und Kommunikation', 'Medienanalyse', 'vocabulary', '["Learn key vocabulary","Practice grammar structures","Build comprehension skills","Apply in context","Review and reinforce"]', 50, 1, true)
  returning id into l_id;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, order_index) values
  (l_id, 'die Medienlandschaft', 'المشهد الإعلامي', 'media landscape', 'die', 'die Medienlandschaften', 'noun', 'Die digitale Medienlandschaft verändert sich rasant.', 'The digital media landscape is changing rapidly.', 1),
  (l_id, 'die Berichterstattung', 'التغطية الإخبارية', 'reporting', 'die', 'die Berichterstattungen', 'noun', 'Die Berichterstattung über das Ereignis war ausgewogen.', 'The reporting on the event was balanced.', 2),
  (l_id, 'die Redaktion', 'هيئة التحرير', 'editorial department', 'die', 'die Redaktionen', 'noun', 'Die Redaktion prüft jeden Artikel auf seine Richtigkeit.', 'The editorial department checks every article for accuracy.', 3),
  (l_id, 'der Journalismus', 'الصحافة', 'journalism', 'der', NULL, 'noun', 'Der investigative Journalismus deckt Missstände auf.', 'Investigative journalism exposes grievances.', 4),
  (l_id, 'die Objektivität', 'الموضوعية', 'objectivity', 'die', NULL, 'noun', 'Objektivität ist ein zentrales Ideal des Journalismus.', 'Objectivity is a central ideal of journalism.', 5),
  (l_id, 'die Tendenz', 'الميول/النزعة', 'tendency', 'die', 'die Tendenzen', 'noun', 'Der Artikel zeigt eine deutliche politische Tendenz.', 'The article shows a clear political tendency.', 6),
  (l_id, 'die Schlagzeile', 'العنوان الرئيسي', 'headline', 'die', 'die Schlagzeilen', 'noun', 'Die Schlagzeile ist reißerisch formuliert.', 'The headline is sensationally worded.', 7);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  (l_id, 'Konnektoren der Argumentation', 'Konnektoren verbinden Sätze und Argumente. Auf C1-Niveau beherrscht man differenzierte Konnektoren für komplexe Argumentationen.', '[{"rule":"Zweiteilige Konnektoren: zwar...aber, einerseits...andererseits.","note":"Zwar ist die Berichterstattung objektiv, aber die Schlagzeile ist reißerisch."},{"rule":"Gegensatz: während, hingegen, demgegenüber.","note":"Während die Qualitätspresse ausgewogen berichtet, neigt die Boulevardpresse zur Übertreibung."},{"rule":"Einschränkung: allerdings, jedoch, dennoch.","note":"Die Berichterstattung ist umfassend. Allerdings fehlt der kritische Tiefgang."},{"rule":"Konzessiv: obwohl, obgleich, wenngleich.","note":"Obgleich die Nachricht bestätigt wurde, bleibt sie umstritten."}]', '[{"german":"Zwar ist die Berichterstattung umfassend, aber sie mangelt an kritischer Tiefe.","arabic":"على الرغم من أن التغطية شاملة، إلا أنها تفتقر إلى العمق.","english":"Although the reporting is comprehensive, it lacks critical depth."},{"german":"Einerseits muss die Presse objektiv sein, andererseits hat sie gesellschaftliche Verantwortung.","arabic":"من ناحية، يجب أن تكون الصحافة موضوعية، ومن ناحية أخرى، تتحمل مسؤولية.","english":"On the one hand, the press must be objective; on the other hand, it has responsibility."},{"german":"Während die Qualitätszeitung differenziert berichtet, vereinfacht die Boulevardpresse stark.","arabic":"بينما تقدم الصحيفة تقارير متمايزة، تبسط الصحافة الشعبية الأمور.","english":"While the quality newspaper reports in a differentiated manner, the tabloid press simplifies."},{"german":"Die Tendenz des Artikels ist offensichtlich, dennoch wird sie von vielen nicht erkannt.","arabic":"اتجاه المقال واضح، ومع ذلك لا يلاحظه الكثيرون.","english":"The tendency of the article is obvious, yet it is not recognized by many."}]', '[{"mistake":"Zwar die Berichterstattung ist objektiv, aber...","correction":"Zwar ist die Berichterstattung objektiv, aber...","explanation":"Nach \"zwar\" folgt das finite Verb (Verbzweitstellung)."},{"mistake":"Obwohl die Berichterstattung ist umfassend, aber sie ist nicht objektiv.","correction":"Obwohl die Berichterstattung umfassend ist, ist sie nicht objektiv.","explanation":"\"Obwohl\" und \"aber\" sind nicht kombinierbar."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  (l_id, 'multiple_choice', 'Welcher Konnektor drückt einen Gegensatz aus?', '["während","denn","obwohl","zumal"]', 'während', '', 1, 1),
  (l_id, 'fill_gap', 'Zwar ist die Berichterstattung ausgewogen, _____ fehlt der Tiefgang.', '["aber","obwohl","weil","und"]', 'aber', '', 1, 2),
  (l_id, 'fill_gap', '_____ die Qualitätspresse differenziert berichtet, vereinfacht die Boulevardpresse.', '["Während","Weil","Obwohl","Denn"]', 'Während', '', 1, 3),
  (l_id, 'translation', 'Übersetze: "On the one hand, the press must be objective; on the other hand, it has responsibility."', '["Einerseits muss die Presse objektiv sein, andererseits hat sie Verantwortung.","Zwar muss die Presse objektiv sein, aber sie hat Verantwortung.","Obwohl die Presse objektiv sein muss, hat sie Verantwortung."]', 'Einerseits muss die Presse objektiv sein, andererseits hat sie Verantwortung.', '', 1, 4),
  (l_id, 'multiple_choice', 'Welcher Konnektor ist konzessiv?', '["obgleich","während","denn","nämlich"]', 'obgleich', '', 1, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  (l_id, 'multiple_choice', 'Was bedeutet "die Berichterstattung"?', '["التغطية الإخبارية","هيئة التحرير","الصحافة","الموضوعية"]', 'التغطية الإخبارية', 1, 1),
  (l_id, 'true_false', 'Nach "zwar" steht das Verb an Position 2.', '["Richtig","Falsch"]', 'Richtig', 1, 2),
  (l_id, 'fill_blank', 'Die Schlagzeile ist reißerisch _____.', '["formuliert","formuliert worden","formulierend","formulierte"]', 'formuliert', 1, 3),
  (l_id, 'true_false', '"Obwohl" und "aber" können im selben Satz verwendet werden.', '["Richtig","Falsch"]', 'Falsch', 1, 4),
  (l_id, 'multiple_choice', 'Was bedeutet "die Tendenz" im Medienkontext?', '["الميول","التغطية","النشر","التحرير"]', 'الميول', 1, 5);

  -- Lesson 3.2: Nachrichten und Berichterstattung
  insert into public.course_lessons (module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published)
  values (m_id, 'Nachrichten und Berichterstattung', 'Wortschatz für Nachrichtenanalyse und kritische Medienkompetenz', 'Medienanalyse', 'vocabulary', '["Learn key vocabulary","Practice grammar structures","Build comprehension skills","Apply in context","Review and reinforce"]', 50, 2, true)
  returning id into l_id;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, order_index) values
  (l_id, 'die Nachrichtenagentur', 'وكالة الأنباء', 'news agency', 'die', 'die Nachrichtenagenturen', 'noun', 'Die Nachrichtenagentur verbreitet die Meldung weltweit.', 'The news agency disseminates the report worldwide.', 1),
  (l_id, 'die Meldung', 'الخبر/النبأ', 'report', 'die', 'die Meldungen', 'noun', 'Die Meldung wurde von mehreren Quellen bestätigt.', 'The report was confirmed by several sources.', 2),
  (l_id, 'die Quelle', 'المصدر', 'source', 'die', 'die Quellen', 'noun', 'Die Quelle des Artikels ist anonym.', 'The source of the article is anonymous.', 3),
  (l_id, 'der Faktencheck', 'التحقق من الحقائق', 'fact check', 'der', 'die Faktenchecks', 'noun', 'Ein gründlicher Faktencheck ist essenziell.', 'A thorough fact check is essential.', 4),
  (l_id, 'die Desinformation', 'المعلومات المضللة', 'disinformation', 'die', 'die Desinformationen', 'noun', 'Die Verbreitung von Desinformation ist eine ernsthafte Bedrohung.', 'The spread of disinformation is a serious threat.', 5),
  (l_id, 'die Massenmedien', 'وسائل الإعلام', 'mass media', 'die', 'die Massenmedien', 'noun', 'Die Massenmedien prägen die öffentliche Meinung.', 'The mass media shape public opinion.', 6);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  (l_id, 'Redewiedergabe in Medienkontexten', 'In Medien wird die Rede von Dritten auf verschiedene Weise wiedergegeben: direkte Rede (Zitat), indirekte Rede (Konjunktiv I) und zusammenfassende Wiedergabe.', '[{"rule":"Direkte Rede (wörtliches Zitat) in Anführungszeichen.","note":"Der Minister sagte: \"Wir werden die Reform umsetzen.\""},{"rule":"Indirekte Rede (Konjunktiv I): neutrale Wiedergabe.","note":"Der Minister erklärte, die Regierung werde die Reform umsetzen."},{"rule":"Zusammenfassend: laut + Dativ / zufolge + Dativ.","note":"Laut dem Minister wird die Reform umgesetzt."},{"rule":"Verben der Redewiedergabe: betonen, einräumen, bestreiten.","note":"Der Sprecher räumte ein, dass es Probleme gegeben habe."}]', '[{"german":"Der Minister betonte: \"Die Reform ist notwendig.\"","arabic":"أكد الوزير: \"الإصلاح ضروري\".","english":"The minister emphasized: \"The reform is necessary.\""},{"german":"Der Sprecher erklärte, die Regierung werde eine Entscheidung treffen.","arabic":"أوضح المتحدث أن الحكومة ستتخذ قراراً.","english":"The spokesperson explained that the government would make a decision."},{"german":"Laut einer Studie des Instituts nimmt die Medienkompetenz ab.","arabic":"وفقاً لدراسة المعهد، تنخفض الكفاءة الإعلامية.","english":"According to a study, media literacy is declining."},{"german":"Der Chefredakteur räumte ein, dass die Berichterstattung fehlerhaft gewesen sei.","arabic":"اعترف رئيس التحرير بأن التغطية كانت خاطئة.","english":"The editor-in-chief acknowledged that the reporting had been flawed."}]', '[{"mistake":"Laut des Ministers die Reform ist notwendig.","correction":"Laut dem Minister ist die Reform notwendig.","explanation":"Nach \"laut\" steht der Dativ, und das finite Verb steht an Position 2."},{"mistake":"Der Sprecher sagte, dass die Regierung wird die Reform umsetzen.","correction":"Der Sprecher sagte, dass die Regierung die Reform umsetzen werde.","explanation":"Im Nebensatz mit \"dass\" steht der Konjunktiv am Ende."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  (l_id, 'multiple_choice', 'Welche Redewiedergabe ist neutral?', '["Indirekte Rede (Konjunktiv I)","Nur direkte Rede","Nur \"laut\"","Alle drei"]', 'Alle drei', '', 1, 1),
  (l_id, 'fill_gap', '_____ einer Studie nimmt die Medienkompetenz ab.', '["Laut","Nach","Von","Aus"]', 'Laut', '', 1, 2),
  (l_id, 'fill_gap', 'Der Sprecher erklärte, die Regierung _____ entscheiden.', '["werde","wird","würde","worden"]', 'werde', '', 1, 3),
  (l_id, 'translation', 'Übersetze: "The editor-in-chief acknowledged the reporting was flawed."', '["Der Chefredakteur räumte ein, dass die Berichterstattung fehlerhaft gewesen sei.","Der Chefredakteur sagte, die Berichterstattung war fehlerhaft.","Der Chefredakteur bestreitet, dass die Berichterstattung fehlerhaft war."]', 'Der Chefredakteur räumte ein, dass die Berichterstattung fehlerhaft gewesen sei.', '', 1, 4),
  (l_id, 'multiple_choice', 'Welches Verb drückt Bestätigung aus?', '["betonen","bestreiten","bezweifeln","widerrufen"]', 'betonen', '', 1, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  (l_id, 'multiple_choice', 'Was bedeutet "die Desinformation"?', '["المعلومات المضللة","المعلومات الصحيحة","التحقق","النشر"]', 'المعلومات المضللة', 1, 1),
  (l_id, 'true_false', 'Direkte Rede wird in Anführungszeichen gesetzt.', '["Richtig","Falsch"]', 'Richtig', 1, 2),
  (l_id, 'fill_blank', 'Laut _____ Minister wird die Reform umgesetzt.', '["dem","der","den","des"]', 'dem', 1, 3),
  (l_id, 'multiple_choice', 'Welcher Konjunktiv für neutrale indirekte Rede?', '["Konjunktiv I","Konjunktiv II","Konditional I","Indikativ"]', 'Konjunktiv I', 1, 4),
  (l_id, 'true_false', '"Bestreiten" bedeutet dasselbe wie "behaupten".', '["Richtig","Falsch"]', 'Falsch', 1, 5);

  -- Lesson 3.3: Argumentation und Intensivierung
  insert into public.course_lessons (module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published)
  values (m_id, 'Argumentation und Intensivierung', 'Konnektoren der Argumentation vertiefen und Gradpartikeln der Intensivierung', 'Medienanalyse', 'grammar', '["Learn key vocabulary","Practice grammar structures","Build comprehension skills","Apply in context","Review and reinforce"]', 60, 3, true)
  returning id into l_id;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, order_index) values
  (l_id, 'die Intensivierung', 'التكثيف', 'intensification', 'die', 'die Intensivierungen', 'noun', 'Die Intensivierung der Darstellung dient der emotionalen Aufladung.', 'The intensification of the portrayal serves emotional charging.', 1),
  (l_id, 'die Nuancierung', 'التدرج/الفروق الدقيقة', 'nuancing', 'die', 'die Nuancierungen', 'noun', 'Eine differenzierte Nuancierung der Aussage ist notwendig.', 'A differentiated nuancing of the statement is necessary.', 2),
  (l_id, 'die Polemik', 'الجدال/المهاجمة', 'polemic', 'die', 'die Polemiken', 'noun', 'Der Artikel ist voller Polemik und persönlicher Angriffe.', 'The article is full of polemic and personal attacks.', 3),
  (l_id, 'die Übertreibung', 'المبالغة', 'exaggeration', 'die', 'die Übertreibungen', 'noun', 'Die Übertreibung in der Darstellung ist offensichtlich.', 'The exaggeration in the portrayal is obvious.', 4),
  (l_id, 'die Sachlichkeit', 'الموضوعية/الواقعية', 'objectivity/factuality', 'die', NULL, 'noun', 'Die Sachlichkeit der Berichterstattung ist zu loben.', 'The objectivity of the reporting is commendable.', 5);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  (l_id, 'Intensivierung durch Gradpartikeln', 'Gradpartikeln (auch Fokuspartikeln genannt) modifizieren die Intensität einer Aussage. Auf C1-Niveau verwendet man differenzierte Partikeln wie "äußerst", "durchaus", "keineswegs", "höchst", "überaus".', '[{"rule":"Äußerst / höchst / überaus = very / extremely (hohe Intensität).","note":"Die Berichterstattung ist äußerst tendenziös."},{"rule":"Durchaus = quite / indeed (bestätigende Intensität).","note":"Diese Kritik ist durchaus berechtigt."},{"rule":"Keineswegs / keinesfalls = by no means (starke Verneinung).","note":"Der Artikel ist keineswegs objektiv."},{"rule":"Durchaus nicht / ganz und gar nicht = absolute Negation.","note":"Das ist durchaus nicht akzeptabel."}]', '[{"german":"Die Berichterstattung ist äußerst tendenziös und einseitig.","arabic":"التغطية متحيزة للغاية ومنحازة.","english":"The reporting is extremely biased and one-sided."},{"german":"Diese Kritik an den Medien ist durchaus berechtigt.","arabic":"هذا النقد لوسائل الإعلام له ما يبرره.","english":"This criticism of the media is quite justified."},{"german":"Der Vorwurf der Manipulation ist keineswegs neu.","arabic":"اتهام التلاعب ليس جديداً بأي حال.","english":"The accusation of manipulation is by no means new."},{"german":"Der Artikel ist höchst problematisch in seiner Darstellung.","arabic":"المقال إشكالي للغاية في عرضه.","english":"The article is highly problematic in its portrayal."}]', '[{"mistake":"Die Berichterstattung ist äußerst nicht objektiv.","correction":"Die Berichterstattung ist keineswegs objektiv.","explanation":"\"Äußerst nicht\" ist nicht idiomatisch. Für starke Verneinung: \"keineswegs\"."},{"mistake":"Der Artikel ist durchaus nicht schlecht. (ambiguous)","correction":"Der Artikel ist keineswegs schlecht. (clearer negation)","explanation":"\"Durchaus nicht\" ist korrekt, aber \"keineswegs\" ist eindeutiger."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  (l_id, 'multiple_choice', 'Welche Gradpartikel drückt die höchste Intensität aus?', '["äußerst","durchaus","keineswegs","ziemlich"]', 'äußerst', '', 1, 1),
  (l_id, 'fill_gap', 'Die Kritik an den Medien ist _____ berechtigt. (quite / indeed)', '["durchaus","äußerst","keineswegs","höchst"]', 'durchaus', '', 1, 2),
  (l_id, 'fill_gap', 'Der Artikel ist _____ objektiv. (by no means)', '["keineswegs","durchaus","äußerst","höchst"]', 'keineswegs', '', 1, 3),
  (l_id, 'translation', 'Übersetze: "The reporting is extremely biased."', '["Die Berichterstattung ist äußerst tendenziös.","Die Berichterstattung ist durchaus tendenziös.","Die Berichterstattung ist keineswegs tendenziös.","Die Berichterstattung ist ziemlich tendenziös."]', 'Die Berichterstattung ist äußerst tendenziös.', '', 1, 4),
  (l_id, 'multiple_choice', 'Welche Partikel drückt bestätigende Intensität aus?', '["durchaus","äußerst","keineswegs","höchst"]', 'durchaus', '', 1, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  (l_id, 'multiple_choice', 'Was bedeutet "die Polemik"?', '["الجدال","الموضوعية","التغطية","التحليل"]', 'الجدال', 1, 1),
  (l_id, 'true_false', '"Äußerst" drückt eine hohe Intensität aus.', '["Richtig","Falsch"]', 'Richtig', 1, 2),
  (l_id, 'fill_blank', 'Der Vorwurf ist _____ neu. (by no means)', '["keineswegs","äußerst","durchaus","höchst"]', 'keineswegs', 1, 3),
  (l_id, 'multiple_choice', 'Wogegen wird "durchaus" verwendet?', '["Bestätigende Intensität","Starke Verneinung","Höchste Intensität","Zweifel"]', 'Bestätigende Intensität', 1, 4),
  (l_id, 'true_false', '"Die Sachlichkeit" bedeutet "المبالغة".', '["Richtig","Falsch"]', 'Falsch', 1, 5);

  -- Lesson 3.4: Mediendiskussion führen
  insert into public.course_lessons (module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published)
  values (m_id, 'Mediendiskussion führen', 'Eine Diskussion über Medieninhalte auf Deutsch führen - argumentieren und positionieren', 'Medienanalyse', 'speaking', '["Learn key vocabulary","Practice grammar structures","Build comprehension skills","Apply in context","Review and reinforce"]', 60, 4, true)
  returning id into l_id;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, order_index) values
  (l_id, 'die Meinungsäußerung', 'التعبير عن الرأي', 'expression of opinion', 'die', 'die Meinungsäußerungen', 'noun', 'Die Meinungsäußerung ist ein Grundrecht.', 'Freedom of expression is a fundamental right.', 1),
  (l_id, 'die Manipulation', 'التلاعب', 'manipulation', 'die', 'die Manipulationen', 'noun', 'Die Manipulation der öffentlichen Meinung ist gefährlich.', 'The manipulation of public opinion is dangerous.', 2),
  (l_id, 'die Glaubwürdigkeit', 'المصداقية', 'credibility', 'die', NULL, 'noun', 'Die Glaubwürdigkeit der Quelle ist zweifelhaft.', 'The credibility of the source is questionable.', 3),
  (l_id, 'die Medienkompetenz', 'الكفاءة الإعلامية', 'media literacy', 'die', NULL, 'noun', 'Medienkompetenz sollte in der Schule vermittelt werden.', 'Media literacy should be taught in schools.', 4),
  (l_id, 'der Ethikkodex', 'مدونة الأخلاقيات', 'code of ethics', 'der', 'die Ethikkodizes', 'noun', 'Der Ethikkodex des Journalismus verbietet Falschmeldungen.', 'The journalistic code of ethics prohibits false reports.', 5);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  (l_id, 'Redewiedergabe mit Modalfaktor - Distanzierung und Bewertung', 'In der Medienanalyse kann die Redewiedergabe durch bestimmte Verben und Modalverben eine distanzierende oder bewertende Funktion erhalten.', '[{"rule":"Distanzierende Verben: angeblich, vorgeblich, behaupten (oft negativ konnotiert).","note":"Angeblich soll der Minister zurückgetreten sein."},{"rule":"Modalverben in der Redewiedergabe: sollen (Gerücht), wollen (behaupten).","note":"Der Zeuge will den Unfall gesehen haben."},{"rule":"Konjunktiv II statt I zur signalfreien Distanz.","note":"Der Autor meine, die Studie wäre (statt: sei) fehlerhaft."},{"rule":"Bewertende Redekommentare: zu Recht, zu Unrecht, fälschlicherweise.","note":"Der Journalist behauptet zu Unrecht, die Daten seien manipuliert."}]', '[{"german":"Angeblich soll die Redaktion die Falschmeldung bewusst verbreitet haben.","arabic":"يُزعم أن هيئة التحرير نشرت الخبر الكاذب عمداً.","english":"The editorial department allegedly spread the false report deliberately."},{"german":"Der Zeuge will den Vorfall beobachtet haben.","arabic":"يدعي الشاهد أنه رأى الحادث.","english":"The witness claims to have observed the incident."},{"german":"Der Journalist behauptet zu Unrecht, die Quelle sei vertrauenswürdig.","arabic":"يدعي الصحفي زوراً أن المصدر جدير بالثقة.","english":"The journalist wrongly claims that the source is trustworthy."},{"german":"Die Medien hätten angeblich die Nachricht erfunden, so der Politiker.","arabic":"يزعم السياسي أن وسائل الإعلام اختلقت الخبر.","english":"The media allegedly invented the news, according to the politician."}]', '[{"mistake":"Angeblich der Minister ist zurückgetreten.","correction":"Angeblich ist der Minister zurückgetreten.","explanation":"\"Angeblich\" steht am Satzanfang, das finite Verb folgt an Position 2."},{"mistake":"Er will den Unfall gesehen haben. (meaning intention, not claim)","correction":"Er will den Unfall gesehen haben. (hier: \"behaupten\")","explanation":"\"Wollen\" + Perfekt-Infinitiv bedeutet \"behaupten\", nicht \"wollen (Intention)\"."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  (l_id, 'multiple_choice', 'Welches Verb signalisiert Distanz zur Aussage?', '["angeblich","offiziell","nachweislich","tatsächlich"]', 'angeblich', '', 1, 1),
  (l_id, 'fill_gap', 'Der Politiker _____ den Skandal vorhergesehen haben.', '["will","soll","kann","muss"]', 'will', '"Wollen" + Infinitiv Perfekt = behaupten.', 1, 2),
  (l_id, 'fill_gap', 'Angeblich _____ die Redaktion die Falschmeldung verbreitet.', '["soll","will","hat","wird"]', 'soll', '', 1, 3),
  (l_id, 'translation', 'Übersetze: "The journalist wrongly claims the source is trustworthy."', '["Der Journalist behauptet zu Unrecht, die Quelle sei vertrauenswürdig.","Der Journalist behauptet richtig, die Quelle sei vertrauenswürdig.","Der Journalist behauptet, die Quelle ist vertrauenswürdig."]', 'Der Journalist behauptet zu Unrecht, die Quelle sei vertrauenswürdig.', '', 1, 4),
  (l_id, 'multiple_choice', 'Was bedeutet "angeblich" in der Medienanalyse?', '["Distanz zur Aussage","Bestätigung der Aussage","Neutralität","Zustimmung"]', 'Distanz zur Aussage', '', 1, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  (l_id, 'multiple_choice', 'Was bedeutet "die Glaubwürdigkeit"?', '["المصداقية","المبالغة","الموضوعية","الحرية"]', 'المصداقية', 1, 1),
  (l_id, 'true_false', '"Wollen" + Infinitiv Perfekt drückt ein Gerücht aus.', '["Richtig","Falsch"]', 'Falsch', 1, 2),
  (l_id, 'fill_blank', '_____ hat die Redaktion die Meldung nicht geprüft.', '["Angeblich","Wirklich","Tatsächlich","Nachweislich"]', 'Angeblich', 1, 3),
  (l_id, 'multiple_choice', '"Medienkompetenz" bedeutet...', '["الكفاءة الإعلامية","حرية الصحافة","الرقابة","النشر"]', 'الكفاءة الإعلامية', 1, 4),
  (l_id, 'true_false', 'Ein Ethikkodex verbietet Falschmeldungen.', '["Richtig","Falsch"]', 'Richtig', 1, 5);

  -- Lesson 3.5: Wiederholung: Medienanalyse
  insert into public.course_lessons (module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published)
  values (m_id, 'Wiederholung: Medienanalyse', 'Alle Themen aus Modul 3 wiederholen und festigen', 'Medienanalyse', 'review', '["Learn key vocabulary","Practice grammar structures","Build comprehension skills","Apply in context","Review and reinforce"]', 50, 5, true)
  returning id into l_id;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, order_index) values
  (l_id, 'die Zensur', 'الرقابة', 'censorship', 'die', NULL, 'noun', 'Die Zensur der Presse ist in einer Demokratie nicht akzeptabel.', 'Censorship of the press is not acceptable in a democracy.', 1),
  (l_id, 'die Pressefreiheit', 'حرية الصحافة', 'freedom of the press', 'die', NULL, 'noun', 'Die Pressefreiheit ist ein hohes Gut.', 'Freedom of the press is a precious good.', 2),
  (l_id, 'die Recherche', 'التحري/البحث', 'research/investigation', 'die', 'die Recherchen', 'noun', 'Die journalistische Recherche dauerte mehrere Monate.', 'The journalistic investigation took several months.', 3),
  (l_id, 'die Nische', 'الزاوية/المجال المتخصص', 'niche', 'die', 'die Nischen', 'noun', 'Das Medium hat sich auf eine Nische spezialisiert.', 'The medium has specialized in a niche.', 4),
  (l_id, 'das Boulevardmedium', 'وسيلة إعلام شعبية', 'tabloid medium', 'das', 'die Boulevardmedien', 'noun', 'Boulevardmedien neigen zur Übertreibung.', 'Tabloid media tend to exaggerate.', 5);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  (l_id, 'Wiederholung: Konnektoren, Redewiedergabe und Gradpartikeln', 'Wiederholung der Grammatikthemen aus Modul 3.', '[{"rule":"Konnektoren: zwar...aber, einerseits...andererseits, während, obwohl.","note":"Zwar ist die Berichterstattung umfassend, aber..."},{"rule":"Redewiedergabe: Konjunktiv I, laut + Dativ, direkte Rede.","note":"Der Minister erklärte, die Reform sei notwendig."},{"rule":"Gradpartikeln: äußerst, durchaus, keineswegs, höchst.","note":"Der Artikel ist äußerst tendenziös."},{"rule":"Distanz: angeblich, sollen, wollen.","note":"Angeblich soll die Meldung falsch sein."}]', '[{"german":"Zwar ist die Pressefreiheit geschützt, aber die Zensur nimmt zu.","arabic":"على الرغم من حماية حرية الصحافة، إلا أن الرقابة تتزايد.","english":"Although freedom of the press is protected, censorship is increasing."},{"german":"Die Recherche war äußerst gründlich und durchaus aufschlussreich.","arabic":"كان التحري دقيقاً للغاية ومفيداً جداً.","english":"The investigation was extremely thorough and quite revealing."},{"german":"Laut dem Chefredakteur sei die Quelle keineswegs vertrauenswürdig.","arabic":"وفقاً لرئيس التحرير، المصدر ليس جديراً بالثقة.","english":"According to the editor-in-chief, the source is by no means trustworthy."}]', '[{"mistake":"Während die Presse berichtet, aber die Zensur nimmt zu.","correction":"Während die Presse berichtet, nimmt die Zensur zu.","explanation":"\"Während\" ersetzt \"aber\" - nicht kombinieren."},{"mistake":"Der Minister sagte, dass die Reform ist notwendig.","correction":"Der Minister sagte, dass die Reform notwendig sei.","explanation":"Konjunktiv I am Ende des Nebensatzes."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  (l_id, 'multiple_choice', 'Welcher Konnektor drückt einen Gegensatz aus?', '["während","denn","weil","und"]', 'während', '', 1, 1),
  (l_id, 'fill_gap', 'Die Recherche war _____ gründlich. (extremely)', '["äußerst","durchaus","keineswegs","ziemlich"]', 'äußerst', '', 1, 2),
  (l_id, 'fill_gap', '_____ soll die Redaktion die Meldung nicht geprüft haben.', '["Angeblich","Nachweislich","Tatsächlich","Bestimmt"]', 'Angeblich', '', 1, 3),
  (l_id, 'translation', 'Übersetze: "The accusation is by no means new."', '["Der Vorwurf ist keineswegs neu.","Der Vorwurf ist äußerst neu.","Der Vorwurf ist durchaus neu.","Der Vorwurf ist neu."]', 'Der Vorwurf ist keineswegs neu.', '', 1, 4),
  (l_id, 'multiple_choice', 'Welches Verb signalisiert Distanz?', '["angeblich","offiziell","nachweislich","eindeutig"]', 'angeblich', '', 1, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  (l_id, 'multiple_choice', 'Was bedeutet "die Zensur"?', '["الرقابة","حرية الصحافة","النشر","التحرير"]', 'الرقابة', 1, 1),
  (l_id, 'true_false', '"Äußerst" ist eine Gradpartikel.', '["Richtig","Falsch"]', 'Richtig', 1, 2),
  (l_id, 'fill_blank', 'Der Chefredakteur räumte ein, die Berichterstattung _____ fehlerhaft _____.', '["sei / gewesen","ist / gewesen","war / gewesen","wäre / gewesen"]', 'sei / gewesen', 1, 3),
  (l_id, 'multiple_choice', 'Was drückt "sollen" in der Medienberichterstattung aus?', '["Gerücht/Behauptung","Notwendigkeit","Empfehlung","Erlaubnis"]', 'Gerücht/Behauptung', 1, 4),
  (l_id, 'true_false', '"Boulevardmedien" sind für ihren Qualitätsjournalismus bekannt.', '["Richtig","Falsch"]', 'Falsch', 1, 5);

  -- Lesson 3.6: Test: Medienanalyse
  insert into public.course_lessons (module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published)
  values (m_id, 'Test: Medienanalyse', 'Abschlusstest für Modul 3', 'Medienanalyse', 'test', '["Learn key vocabulary","Practice grammar structures","Build comprehension skills","Apply in context","Review and reinforce"]', 45, 6, true)
  returning id into l_id;

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  (l_id, 'multiple_choice', 'Welche Konnektoren sind zweiteilig?', '["zwar...aber","während...denn","obwohl...trotzdem","weil...denn"]', 'zwar...aber', '', 1, 1),
  (l_id, 'fill_gap', '_____ ist die Berichterstattung objektiv, _____ fehlt Tiefe.', '["Zwar / aber","Einerseits / andererseits","Während / hingegen","Obwohl / dennoch"]', 'Zwar / aber', '', 1, 2),
  (l_id, 'translation', 'Übersetze: "The criticism is quite justified."', '["Die Kritik ist durchaus berechtigt.","Die Kritik ist äußerst berechtigt.","Die Kritik ist keineswegs berechtigt.","Die Kritik ist berechtigt."]', 'Die Kritik ist durchaus berechtigt.', '', 1, 3),
  (l_id, 'multiple_choice', 'Welche Gradpartikel drückt starke Verneinung aus?', '["keineswegs","äußerst","durchaus","höchst"]', 'keineswegs', '', 1, 4),
  (l_id, 'fill_gap', 'Der Minister erklärte, die Reform _____ umgesetzt.', '["werde","wird","würde","wurde"]', 'werde', '', 1, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  (l_id, 'multiple_choice', 'Was bedeutet "die Pressefreiheit"?', '["حرية الصحافة","الرقابة","النشر","التحرير"]', 'حرية الصحافة', 1, 1),
  (l_id, 'true_false', 'Gradpartikeln modifizieren die Intensität einer Aussage.', '["Richtig","Falsch"]', 'Richtig', 1, 2),
  (l_id, 'fill_blank', 'Die Berichterstattung war _____ tendenziös. (extremely)', '["äußerst","durchaus","keineswegs","tatsächlich"]', 'äußerst', 1, 3),
  (l_id, 'multiple_choice', 'Welcher Modus wird für indirekte Rede verwendet?', '["Konjunktiv I","Konjunktiv II","Indikativ","Imperativ"]', 'Konjunktiv I', 1, 4),
  (l_id, 'true_false', 'Nach "obwohl" steht das Verb in Position 2.', '["Richtig","Falsch"]', 'Falsch', 1, 5),
  (l_id, 'fill_blank', 'Der Journalist behauptet zu _____, die Quelle sei vertrauenswürdig.', '["Unrecht","Recht","Unrechtens","Rechtens"]', 'Unrecht', 1, 6);

  -- Module 4: Politische Diskurse
  insert into public.course_modules (level_id, title, description, objectives, order_index, estimated_hours, is_published)
  values ('C1', 'Politische Diskurse', 'Verstehe und analysiere politische Kommunikation auf Deutsch. Konjunktiv in der Politik, Modalverben und komplexe Satzstrukturen.', '["Funktion des Konjunktivs in politischer Kommunikation verstehen","Modalverben in der politischen Sprache differenziert anwenden","Komplexe Satzstrukturen mit mehreren Nebensätzen bilden","Politische Reden und Texte kritisch analysieren","Sich differenziert zu politischen Themen äußern"]', 4, 5.0, true)
  returning id into m_id;

  -- Lesson 4.1: Politische Systeme
  insert into public.course_lessons (module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published)
  values (m_id, 'Politische Systeme', 'Grundbegriffe der Politik und politischen Systeme', 'Politische Diskurse', 'vocabulary', '["Learn key vocabulary","Practice grammar structures","Build comprehension skills","Apply in context","Review and reinforce"]', 50, 1, true)
  returning id into l_id;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, order_index) values
  (l_id, 'die Demokratie', 'الديمقراطية', 'democracy', 'die', 'die Demokratien', 'noun', 'Die Demokratie lebt von der Beteiligung ihrer Bürger.', 'Democracy lives from the participation of its citizens.', 1),
  (l_id, 'die Legislative', 'السلطة التشريعية', 'legislative branch', 'die', NULL, 'noun', 'Die Legislative verabschiedet Gesetze.', 'The legislative branch passes laws.', 2),
  (l_id, 'die Exekutive', 'السلطة التنفيذية', 'executive branch', 'die', NULL, 'noun', 'Die Exekutive setzt die Gesetze um.', 'The executive branch implements the laws.', 3),
  (l_id, 'die Judikative', 'السلطة القضائية', 'judiciary', 'die', NULL, 'noun', 'Die Judikative überwacht die Einhaltung der Gesetze.', 'The judiciary monitors compliance with the laws.', 4),
  (l_id, 'die Gewaltenteilung', 'الفصل بين السلطات', 'separation of powers', 'die', NULL, 'noun', 'Die Gewaltenteilung ist ein Grundprinzip der Demokratie.', 'The separation of powers is a basic principle of democracy.', 5),
  (l_id, 'die Opposition', 'المعارضة', 'opposition', 'die', 'die Oppositionen', 'noun', 'Die Opposition übt Kritik an der Regierungspolitik.', 'The opposition criticizes the government policy.', 6),
  (l_id, 'das Grundgesetz', 'القانون الأساسي', 'Basic Law', 'das', 'die Grundgesetze', 'noun', 'Das Grundgesetz ist die Verfassung Deutschlands.', 'The Basic Law is the constitution of Germany.', 7);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  (l_id, 'Funktion des Konjunktivs in politischer Kommunikation', 'Der Konjunktiv hat in der politischen Sprache verschiedene Funktionen: indirekte Rede (Neutralität), Irrealis (Hypothesen, Alternativszenarien) und Höflichkeit (vorsichtige Forderungen).', '[{"rule":"Konjunktiv I: Neutrale Wiedergabe von Aussagen anderer.","note":"Der Minister erklärte, die Regierung werde die Reform umsetzen."},{"rule":"Konjunktiv II (Irrealis): Hypothetische Szenarien, alternative Entwicklungen.","note":"Wenn die Opposition an der Regierung wäre, würde die Politik anders aussehen."},{"rule":"Konjunktiv II für vorsichtige Forderungen: man müsste, es wäre notwendig.","note":"Man müsste die Steuerpolitik grundlegend reformieren."},{"rule":"Konjunktiv II in der politischen Analyse: kontrafaktische Aussagen.","note":"Ohne die Reform wäre die Arbeitslosigkeit höher gewesen."}]', '[{"german":"Der Kanzler betonte, die Regierung werde die geplanten Reformen umsetzen.","arabic":"أكد المستشار أن الحكومة ستنفذ الإصلاحات المخطط لها.","english":"The chancellor emphasized that the government would implement the planned reforms."},{"german":"Wenn die Wahlbeteiligung höher wäre, sähe das Ergebnis anders aus.","arabic":"لو كانت نسبة المشاركة في الانتخابات أعلى، لكانت النتيجة مختلفة.","english":"If voter turnout were higher, the result would look different."},{"german":"Man müsste die Gewaltenteilung stärken, um Machtmissbrauch zu verhindern.","arabic":"يجب تعزيز الفصل بين السلطات لمنع إساءة استخدام السلطة.","english":"One would have to strengthen the separation of powers to prevent abuse of power."},{"german":"Die Opposition kritisiert, die Regierung habe die Folgen nicht bedacht.","arabic":"تعارض المعارضة بأن الحكومة لم تأخذ العواقب في الاعتبار.","english":"The opposition criticizes that the government has not considered the consequences."}]', '[{"mistake":"Der Kanzler sagte, dass die Regierung wird die Reform umsetzen.","correction":"Der Kanzler sagte, dass die Regierung die Reform umsetzen werde.","explanation":"Indirekte Rede erfordert Konjunktiv, nicht Indikativ."},{"mistake":"Wenn die Wahlbeteiligung höher wäre, das Ergebnis würde anders aussehen.","correction":"Wenn die Wahlbeteiligung höher wäre, würde das Ergebnis anders aussehen.","explanation":"Im Hauptsatz des Irrealis steht das finite Verb an Position 2: \"würde\"."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  (l_id, 'multiple_choice', 'Welche Funktion hat Konjunktiv II im politischen Diskurs?', '["Irrealis und Höflichkeit","Nur Vergangenheit","Nur Zukunft","Befehl"]', 'Irrealis und Höflichkeit', '', 1, 1),
  (l_id, 'fill_gap', 'Der Minister erklärte, die Regierung _____ die Reform umsetzen.', '["werde","wird","würde","worden"]', 'werde', '', 1, 2),
  (l_id, 'fill_gap', 'Wenn die Opposition an der Regierung _____, _____ die Politik anders aussehen.', '["wäre / würde","ist / wird","würde / wäre","sei / werde"]', 'wäre / würde', '', 1, 3),
  (l_id, 'translation', 'Übersetze: "If voter turnout were higher, the result would look different."', '["Wenn die Wahlbeteiligung höher wäre, sähe das Ergebnis anders aus.","Wenn die Wahlbeteiligung höher ist, sieht das Ergebnis anders aus.","Wenn die Wahlbeteiligung höher gewesen wäre, hätte das Ergebnis anders ausgesehen."]', 'Wenn die Wahlbeteiligung höher wäre, sähe das Ergebnis anders aus.', '', 1, 4),
  (l_id, 'multiple_choice', 'Welche Gewalt erlässt Gesetze?', '["Legislative","Exekutive","Judikative","Medien"]', 'Legislative', '', 1, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  (l_id, 'multiple_choice', 'Was bedeutet "die Gewaltenteilung"?', '["الفصل بين السلطات","السلطة التشريعية","السلطة التنفيذية","السلطة القضائية"]', 'الفصل بين السلطات', 1, 1),
  (l_id, 'true_false', 'Konjunktiv I wird für neutrale Redewiedergabe verwendet.', '["Richtig","Falsch"]', 'Richtig', 1, 2),
  (l_id, 'fill_blank', 'Man _____ die Steuerpolitik grundlegend reformieren.', '["müsste","muss","musste","müsse"]', 'müsste', 1, 3),
  (l_id, 'multiple_choice', 'Was ist die Opposition?', '["المعارضة","الحكومة","البرلمان","الدستور"]', 'المعارضة', 1, 4),
  (l_id, 'true_false', 'Das Grundgesetz ist die Verfassung Deutschlands.', '["Richtig","Falsch"]', 'Richtig', 1, 5);

  -- Lesson 4.2: Politische Debatten
  insert into public.course_lessons (module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published)
  values (m_id, 'Politische Debatten', 'Wortschatz für politische Debatten, Verhandlungen und parlamentarische Prozesse', 'Politische Diskurse', 'vocabulary', '["Learn key vocabulary","Practice grammar structures","Build comprehension skills","Apply in context","Review and reinforce"]', 50, 2, true)
  returning id into l_id;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, order_index) values
  (l_id, 'die Debatte', 'المناظرة/النقاش', 'debate', 'die', 'die Debatten', 'noun', 'Die Debatte im Bundestag war kontrovers und leidenschaftlich.', 'The debate in the Bundestag was controversial and passionate.', 1),
  (l_id, 'der Kompromiss', 'الحل الوسط', 'compromise', 'der', 'die Kompromisse', 'noun', 'Nach langen Verhandlungen wurde ein Kompromiss erzielt.', 'After long negotiations, a compromise was reached.', 2),
  (l_id, 'das Mandat', 'التفويض/الولاية', 'mandate', 'das', 'die Mandate', 'noun', 'Die Regierung hat ein klares Mandat für ihre Politik.', 'The government has a clear mandate for its policy.', 3),
  (l_id, 'die Koalition', 'الائتلاف', 'coalition', 'die', 'die Koalitionen', 'noun', 'Die Koalition aus zwei Parteien hat eine knappe Mehrheit.', 'The coalition of two parties has a slim majority.', 4),
  (l_id, 'die Legitimation', 'الشرعية', 'legitimacy', 'die', 'die Legitimationen', 'noun', 'Die Legitimation der Regierung wurde durch die Wahl bestätigt.', 'The legitimacy of the government was confirmed by the election.', 5),
  (l_id, 'der Konsens', 'الإجماع/التوافق', 'consensus', 'der', 'die Konsense', 'noun', 'In der Gesellschaft besteht ein breiter Konsens über diese Frage.', 'There is a broad consensus in society on this issue.', 6);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  (l_id, 'Modalverben in der politischen Sprache', 'Modalverben haben in der politischen Kommunikation spezifische Funktionen: "müssen" drückt politischen Druck aus, "dürfen" Grenzen des Erlaubten, "sollen" politische Forderungen, "können" Handlungsspielräume.', '[{"rule":"müssen: Politischer Druck oder Sachzwang.","note":"Die Regierung muss jetzt handeln. / Die Steuern müssen erhöht werden."},{"rule":"dürfen: Erlaubnis, Verbot oder Grenzen des politisch Akzeptablen.","note":"Das darf in einer Demokratie nicht passieren."},{"rule":"sollen: Forderungen, Empfehlungen oder politische Ziele.","note":"Der Staat soll die Bürger schützen."},{"rule":"können: Handlungsspielräume, Optionen und Alternativen.","note":"Die Koalition kann verschiedene Wege gehen."}]', '[{"german":"Die Regierung muss dringend Maßnahmen gegen den Klimawandel ergreifen.","arabic":"يجب على الحكومة اتخاذ إجراءات عاجلة ضد تغير المناخ.","english":"The government must urgently take measures against climate change."},{"german":"So etwas darf in einer funktionierenden Demokratie nicht vorkommen.","arabic":"لا ينبغي أن يحدث مثل هذا الشيء في ديمقراطية فعالة.","english":"Such a thing must not happen in a functioning democracy."},{"german":"Der Staat soll die Grundrechte seiner Bürger schützen.","arabic":"يجب على الدولة حماية الحقوق الأساسية لمواطنيها.","english":"The state should protect the fundamental rights of its citizens."},{"german":"Die Koalition kann auf verschiedene Weise einen Kompromiss erzielen.","arabic":"يمكن للائتلاف التوصل إلى حل وسط بطرق مختلفة.","english":"The coalition can reach a compromise in various ways."}]', '[{"mistake":"Das darf in einer Demokratie nicht passieren. (meaning \"must not\", not \"may not\")","correction":"Das darf in einer Demokratie nicht passieren. (correct - here \"darf nicht\" = \"muss vermieden werden\")","explanation":"Im politischen Kontext drückt \"darf nicht\" oft eine starke normative Ablehnung aus."},{"mistake":"Die Regierung müssen die Reform umsetzen.","correction":"Die Regierung muss die Reform umsetzen.","explanation":"Regierung ist Singular (3. Pers. Sg.) -> muss."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  (l_id, 'multiple_choice', 'Welches Modalverb drückt politischen Druck aus?', '["müssen","dürfen","sollen","können"]', 'müssen', '', 1, 1),
  (l_id, 'fill_gap', 'So etwas _____ in einer Demokratie nicht vorkommen.', '["darf","muss","soll","kann"]', 'darf', '', 1, 2),
  (l_id, 'fill_gap', 'Der Staat _____ die Grundrechte schützen.', '["soll","muss","darf","kann"]', 'soll', '', 1, 3),
  (l_id, 'translation', 'Übersetze: "The government must act now."', '["Die Regierung muss jetzt handeln.","Die Regierung darf jetzt handeln.","Die Regierung soll jetzt handeln.","Die Regierung kann jetzt handeln."]', 'Die Regierung muss jetzt handeln.', '', 1, 4),
  (l_id, 'multiple_choice', 'Was drückt "können" im politischen Kontext aus?', '["Handlungsspielräume","Zwang","Verbot","Befehl"]', 'Handlungsspielräume', '', 1, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  (l_id, 'multiple_choice', 'Was bedeutet "der Kompromiss"?', '["الحل الوسط","الائتلاف","النقاش","التفويض"]', 'الحل الوسط', 1, 1),
  (l_id, 'true_false', '"Müssen" drückt im politischen Diskurs oft Sachzwang aus.', '["Richtig","Falsch"]', 'Richtig', 1, 2),
  (l_id, 'fill_blank', 'Nach langen Verhandlungen wurde ein Kompromiss _____.', '["erzielt","erzielen","erzieht","erzielend"]', 'erzielt', 1, 3),
  (l_id, 'multiple_choice', 'Was ist eine Koalition?', '["ائتلاف","معارضة","حكومة","برلمان"]', 'ائتلاف', 1, 4),
  (l_id, 'true_false', '"Können" drückt im politischen Kontext Druck aus.', '["Richtig","Falsch"]', 'Falsch', 1, 5);

  -- Lesson 4.3: Konjunktiv und Modalverben in der Politik
  insert into public.course_lessons (module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published)
  values (m_id, 'Konjunktiv und Modalverben in der Politik', 'Vertiefung: Konjunktiv- und Modalverbfunktionen in komplexen politischen Satzstrukturen', 'Politische Diskurse', 'grammar', '["Learn key vocabulary","Practice grammar structures","Build comprehension skills","Apply in context","Review and reinforce"]', 60, 3, true)
  returning id into l_id;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, order_index) values
  (l_id, 'die Souveränität', 'السيادة', 'sovereignty', 'die', 'die Souveränitäten', 'noun', 'Die nationale Souveränität wird durch internationale Verträge eingeschränkt.', 'National sovereignty is limited by international treaties.', 1),
  (l_id, 'die Säkularisierung', 'العلمنة', 'secularization', 'die', 'die Säkularisierungen', 'noun', 'Die Säkularisierung des Staates war ein langer Prozess.', 'The secularization of the state was a long process.', 2),
  (l_id, 'die Partizipation', 'المشاركة', 'participation', 'die', 'die Partizipationen', 'noun', 'Die politische Partizipation der Bürger ist essenziell.', 'The political participation of citizens is essential.', 3),
  (l_id, 'die Legitimität', 'الشرعية', 'legitimacy', 'die', 'die Legitimitäten', 'noun', 'Die Legitimität der Entscheidung wurde angezweifelt.', 'The legitimacy of the decision was questioned.', 4),
  (l_id, 'die Souveränität', 'السيادة', 'sovereignty', 'die', NULL, 'noun', 'Die Souveränität des Volkes ist das Fundament der Demokratie.', 'The sovereignty of the people is the foundation of democracy.', 5);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  (l_id, 'Komplexe Satzstrukturen mit mehreren Nebensätzen', 'Politische Texte enthalten oft komplexe Satzgefüge mit mehreren Nebensätzen verschiedener Art (dass-Sätze, weil-Sätze, wenn-Sätze, Relativsätze). Diese müssen logisch aufgebaut sein, um verständlich zu bleiben.', '[{"rule":"Mehrere Nebensätze können kumulativ oder verschachtelt auftreten.","note":"HS [NS1] und [NS2], weil [NS3]. / HS [NS1 [NS2]]."},{"rule":"Nebensätze können gleichrangig (koordiniert) sein.","note":"Dass die Regierung handelt und dass die Opposition zustimmt, ist zu erwarten."},{"rule":"Nebensätze können untergeordnet (subordiniert/verschachtelt) sein.","note":"Der Politiker sagte, dass er, obwohl die Opposition widerspricht, an seinem Kurs festhalte."},{"rule":"Präpositionalattribute und Nominalisierungen reduzieren Komplexität.","note":"Trotz des Widerstands der Opposition (statt: Obwohl die Opposition Widerstand leistet)."}]', '[{"german":"Der Kanzler betonte, dass die Regierung, obwohl die Opposition heftigen Widerstand leiste, an der Reform festhalten werde.","arabic":"أكد المستشار أن الحكومة، على الرغم من المعارضة الشرسة، ستتمسك بالإصلاح.","english":"The chancellor emphasized that the government, although the opposition puts up fierce resistance, would stick to the reform."},{"german":"Es bleibt abzuwarten, ob die Koalition, die nur eine knappe Mehrheit hat, den Kompromiss durchsetzen kann.","arabic":"يبقى أن نرى ما إذا كان الائتلاف ذو الأغلبية الضئيلة يمكنه فرض الحل الوسط.","english":"It remains to be seen whether the coalition, which only has a slim majority, can enforce the compromise."},{"german":"Dass die Wahlbeteiligung, die in den letzten Jahren gesunken ist, wieder steigt, ist ein positives Signal.","arabic":"أن ترتفع نسبة المشاركة التي انخفضت في السنوات الأخيرة هو إشارة إيجابية.","english":"That voter turnout, which has declined in recent years, is rising again is a positive signal."}]', '[{"mistake":"Der Politiker sagte dass obwohl die Opposition widerspricht er an seinem Kurs festhält.","correction":"Der Politiker sagte, dass er, obwohl die Opposition widerspricht, an seinem Kurs festhält.","explanation":"Das Subjekt \"er\" muss vor dem eingeschobenen Nebensatz stehen."},{"mistake":"Dass die Wahlbeteiligung steigt, es ist ein positives Signal.","correction":"Dass die Wahlbeteiligung steigt, ist ein positives Signal.","explanation":"Der dass-Satz ist das Subjekt, das finite Verb \"ist\" folgt ohne \"es\"."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  (l_id, 'multiple_choice', 'Was ist ein komplexes Satzgefüge?', '["Mehrere Nebensätze in einem Hauptsatz","Ein einfacher Hauptsatz","Ein Satz ohne Nebensätze","Ein kurzer Satz"]', 'Mehrere Nebensätze in einem Hauptsatz', '', 1, 1),
  (l_id, 'fill_gap', 'Der Kanzler betonte, dass die Regierung an der Reform festhalten _____.', '["werde","wird","würde","will"]', 'werde', '', 1, 2),
  (l_id, 'fill_gap', 'Es bleibt abzuwarten, _____ die Koalition den Kompromiss durchsetzen kann.', '["ob","dass","wenn","weil"]', 'ob', '', 1, 3),
  (l_id, 'translation', 'Übersetze: "It remains to be seen whether the coalition can enforce the compromise."', '["Es bleibt abzuwarten, ob die Koalition den Kompromiss durchsetzen kann.","Es bleibt abzuwarten, dass die Koalition den Kompromiss durchsetzen kann.","Es bleibt abzuwarten, wenn die Koalition den Kompromiss durchsetzen kann."]', 'Es bleibt abzuwarten, ob die Koalition den Kompromiss durchsetzen kann.', '', 1, 4),
  (l_id, 'multiple_choice', 'Welche Funktion haben Nominalisierungen in komplexen Sätzen?', '["Reduktion der Komplexität","Erhöhung der Komplexität","Verschönerung","Vereinfachung der Grammatik"]', 'Reduktion der Komplexität', '', 1, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  (l_id, 'multiple_choice', 'Was bedeutet "die Souveränität"?', '["السيادة","المشاركة","الشرعية","العلمنة"]', 'السيادة', 1, 1),
  (l_id, 'true_false', 'Nominalisierungen können Satzkomplexität reduzieren.', '["Richtig","Falsch"]', 'Richtig', 1, 2),
  (l_id, 'fill_blank', 'Die Regierung, _____ nur eine knappe Mehrheit hat, muss Kompromisse eingehen.', '["die","der","den","das"]', 'die', 1, 3),
  (l_id, 'multiple_choice', 'Welche Wortstellung hat der Hauptsatz im Irrealis?', '["Verb an Position 2","Verb am Ende","Verb an Position 1","Verb an Position 3"]', 'Verb an Position 2', 1, 4),
  (l_id, 'true_false', 'Mehrere Nebensätze können nur koordiniert, nicht subordiniert werden.', '["Richtig","Falsch"]', 'Falsch', 1, 5);

  -- Lesson 4.4: Politische Rede analysieren
  insert into public.course_lessons (module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published)
  values (m_id, 'Politische Rede analysieren', 'Eine politische Rede auf Deutsch verstehen und analysieren', 'Politische Diskurse', 'listening', '["Learn key vocabulary","Practice grammar structures","Build comprehension skills","Apply in context","Review and reinforce"]', 60, 4, true)
  returning id into l_id;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, order_index) values
  (l_id, 'die Rhetorik', 'البلاغة/الخطابة', 'rhetoric', 'die', 'die Rhetoriken', 'noun', 'Die Rhetorik des Politikers ist überzeugend und mitreißend.', 'The politician rhetoric is convincing and stirring.', 1),
  (l_id, 'die Argumentationslinie', 'خط الحجاج', 'line of argument', 'die', 'die Argumentationslinien', 'noun', 'Die Argumentationslinie der Rede war klar strukturiert.', 'The line of argument of the speech was clearly structured.', 2),
  (l_id, 'die Überzeugungsstrategie', 'استراتيجية الإقناع', 'persuasion strategy', 'die', 'die Überzeugungsstrategien', 'noun', 'Die Überzeugungsstrategie basierte auf emotionalen Appellen.', 'The persuasion strategy was based on emotional appeals.', 3),
  (l_id, 'der Appell', 'النداء/المناشدة', 'appeal', 'der', 'die Appelle', 'noun', 'Der Appell des Redners richtete sich an die Vernunft der Zuhörer.', 'The speaker appeal was directed at the reason of the listeners.', 4),
  (l_id, 'die Polarisierung', 'الاستقطاب', 'polarization', 'die', 'die Polarisierungen', 'noun', 'Die Polarisierung der Gesellschaft nimmt zu.', 'The polarization of society is increasing.', 5);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  (l_id, 'Indirekte Rede in der politischen Analyse - Vertiefung', 'In der politischen Analyse wird die indirekte Rede extensiv genutzt, um Positionen verschiedener Akteure wiederzugeben und zu kommentieren.', '[{"rule":"Kombination aus Konjunktiv I und II: I für neutrale, II für distanzierte Wiedergabe.","note":"Der Politiker behauptete, die Wirtschaft wachse (I). Kritiker meinten, das sei (I) zweifelhaft, weil die Daten eine Rezession zeigten (II)."},{"rule":"Temporale Verschiebung in der indirekten Rede: Vorzeitigkeit mit Konjunktiv Perfekt.","note":"Der Zeuge sagte, der Politiker habe (Konj. I Perfekt) gelogen."},{"rule":"Module Distanz: \"würde\" + Infinitiv statt Konjunktiv II bei schwachen Verben.","note":"Der Redner argumentierte, die Maßnahmen würden (statt: gedächten) helfen."},{"rule":"Indirekte Rede in Hypothesen: wenn + Konjunktiv II, dann + Konjunktiv II.","note":"Wenn die Regierung, so der Analyst, mehr investieren würde, würde die Wirtschaft wachsen."}]', '[{"german":"Der Redner appellierte an die Vernunft der Wähler. Diese sollten, so seine Botschaft, die langfristigen Folgen bedenken.","arabic":"ناشد المتحدث عقلانية الناخبين. يجب عليهم، حسب رسالته، التفكير في العواقب طويلة المدى.","english":"The speaker appealed to the reason of the voters. They should, according to his message, consider the long-term consequences."},{"german":"Der Analyst argumentierte, die Polarisierung der Gesellschaft habe zugenommen und werde weiter zunehmen.","arabic":"جادل المحلل بأن استقطاب المجتمع قد ازداد وسيزداد.","english":"The analyst argued that the polarization of society has increased and will continue to increase."}]', '[{"mistake":"Der Politiker sagte, dass die Wirtschaft wächst (Indikativ).","correction":"Der Politiker sagte, dass die Wirtschaft wachse (Konjunktiv I).","explanation":"In der indirekten Rede muss der Konjunktiv verwendet werden."},{"mistake":"Der Analyst argumentierte, die Polarisierung nimmt zu und wird weiter zunehmen.","correction":"Der Analyst argumentierte, die Polarisierung nehme zu und werde weiter zunehmen.","explanation":"Konjunktiv I für beide Teile der indirekten Rede."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  (l_id, 'multiple_choice', 'Welcher Modus drückt neutrale Redewiedergabe aus?', '["Konjunktiv I","Konjunktiv II","Indikativ","Imperativ"]', 'Konjunktiv I', '', 1, 1),
  (l_id, 'fill_gap', 'Der Zeuge sagte, der Politiker _____ gelogen.', '["habe","hat","hätte","hatte"]', 'habe', '', 1, 2),
  (l_id, 'fill_gap', 'Der Analyst argumentierte, die Polarisierung _____ zugenommen.', '["habe","hat","hätte","hatte"]', 'habe', '', 1, 3),
  (l_id, 'translation', 'Übersetze: "The speaker appealed to the reason of the voters."', '["Der Redner appellierte an die Vernunft der Wähler.","Der Redner appellierte an die Emotion der Wähler.","Der Redner appellierte an das Gefühl der Wähler."]', 'Der Redner appellierte an die Vernunft der Wähler.', '', 1, 4),
  (l_id, 'multiple_choice', 'Was ist eine Überzeugungsstrategie?', '["استراتيجية الإقناع","استراتيجية الهجوم","استراتيجية الدفاع","استراتيجية الانسحاب"]', 'استراتيجية الإقناع', '', 1, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  (l_id, 'multiple_choice', 'Was bedeutet "die Rhetorik"?', '["البلاغة","الاستقطاب","النداء","المناظرة"]', 'البلاغة', 1, 1),
  (l_id, 'true_false', 'Konjunktiv I wird für distanzierte Wiedergabe verwendet.', '["Richtig","Falsch"]', 'Falsch', 1, 2),
  (l_id, 'fill_blank', 'Der Redner appellierte an die _____ der Zuhörer.', '["Vernunft","Emotion","Gefühl","Leidenschaft"]', 'Vernunft', 1, 3),
  (l_id, 'multiple_choice', 'Was bedeutet "Polarisierung"?', '["الاستقطاب","التوافق","الإجماع","المشاركة"]', 'الاستقطاب', 1, 4),
  (l_id, 'true_false', 'Indirekte Rede im Konjunktiv I ist typisch für die politische Analyse.', '["Richtig","Falsch"]', 'Richtig', 1, 5);

  -- Lesson 4.5: Wiederholung: Politische Diskurse
  insert into public.course_lessons (module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published)
  values (m_id, 'Wiederholung: Politische Diskurse', 'Alle Themen aus Modul 4 wiederholen und festigen', 'Politische Diskurse', 'review', '["Learn key vocabulary","Practice grammar structures","Build comprehension skills","Apply in context","Review and reinforce"]', 50, 5, true)
  returning id into l_id;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, order_index) values
  (l_id, 'der Populismus', 'الشعبوية', 'populism', 'der', NULL, 'noun', 'Der Populismus vereinfacht komplexe politische Zusammenhänge.', 'Populism simplifies complex political contexts.', 1),
  (l_id, 'die Demokratiefähigkeit', 'الكفاءة الديمقراطية', 'democratic capacity', 'die', NULL, 'noun', 'Die Demokratiefähigkeit der Gesellschaft muss gestärkt werden.', 'The democratic capacity of society must be strengthened.', 2),
  (l_id, 'das Misstrauensvotum', 'تصويت بحجب الثقة', 'vote of no confidence', 'das', 'die Misstrauensvoten', 'noun', 'Die Opposition beantragte ein Misstrauensvotum gegen den Minister.', 'The opposition requested a vote of no confidence against the minister.', 3),
  (l_id, 'die Verhältnismäßigkeit', 'التناسب', 'proportionality', 'die', NULL, 'noun', 'Die Verhältnismäßigkeit der Maßnahme wurde juristisch geprüft.', 'The proportionality of the measure was legally reviewed.', 4),
  (l_id, 'der Föderalismus', 'الفيدرالية', 'federalism', 'der', NULL, 'noun', 'Der Föderalismus ist ein Strukturprinzip der Bundesrepublik.', 'Federalism is a structural principle of the Federal Republic.', 5);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  (l_id, 'Wiederholung: Konjunktiv, Modalverben und komplexe Satzstrukturen', 'Wiederholung der Grammatikthemen aus Modul 4.', '[{"rule":"Konjunktiv I: indirekte Rede. Konjunktiv II: Irrealis.","note":"Er sagte, die Regierung handle. / Wenn er Kanzler wäre..."},{"rule":"Modalverben: müssen (Druck), dürfen (Verbot), sollen (Forderung), können (Option).","note":"Die Regierung muss handeln. / So etwas darf nicht passieren."},{"rule":"Komplexe Satzstrukturen: Koordination und Subordination von Nebensätzen.","note":"Dass die Regierung, obwohl die Opposition widerspricht, handelt, ist wichtig."}]', '[{"german":"Der Politiker sagte, die Regierung werde, obwohl die Opposition Widerstand leiste, die Reform durchsetzen.","arabic":"قال السياسي إن الحكومة، على الرغم من مقاومة المعارضة، ستفرض الإصلاح.","english":"The politician said the government would enforce the reform, although the opposition resists."},{"german":"Wenn die Demokratiefähigkeit gestärkt würde, könnte der Populismus eingedämmt werden.","arabic":"إذا تم تعزيز الكفاءة الديمقراطية، يمكن احتواء الشعبوية.","english":"If democratic capacity were strengthened, populism could be curbed."}]', '[{"mistake":"Der Politiker sagt, das Gesetz ist notwendig.","correction":"Der Politiker sagt, das Gesetz sei notwendig.","explanation":"Indirekte Rede erfordert Konjunktiv I."},{"mistake":"Wenn die Opposition an der Regierung wäre dann die Politik würde anders aussehen.","correction":"Wenn die Opposition an der Regierung wäre, würde die Politik anders aussehen.","explanation":"Komma zwischen NS und HS, Verb im HS an Position 2."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  (l_id, 'multiple_choice', 'Welche Funktion hat Konjunktiv II?', '["Irrealis (Hypothesen)","Indirekte Rede","Zukunft","Befehl"]', 'Irrealis (Hypothesen)', '', 1, 1),
  (l_id, 'fill_gap', 'Die Regierung _____ dringend handeln.', '["muss","darf","soll","kann"]', 'muss', '', 1, 2),
  (l_id, 'fill_gap', 'Der Politiker sagte, die Regierung _____ die Reform durchsetzen.', '["werde","wird","würde","worden"]', 'werde', '', 1, 3),
  (l_id, 'translation', 'Übersetze: "If democratic capacity were strengthened, populism could be curbed."', '["Wenn die Demokratiefähigkeit gestärkt würde, könnte der Populismus eingedämmt werden.","Wenn die Demokratiefähigkeit gestärkt wird, kann der Populismus eingedämmt werden.","Wenn die Demokratiefähigkeit gestärkt wurde, konnte der Populismus eingedämmt werden."]', 'Wenn die Demokratiefähigkeit gestärkt würde, könnte der Populismus eingedämmt werden.', '', 1, 4),
  (l_id, 'multiple_choice', 'Was bezeichnet "Föderalismus"?', '["الفيدرالية","المركزية","الديمقراطية","الجمهورية"]', 'الفيدرالية', '', 1, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  (l_id, 'multiple_choice', 'Was bedeutet "das Misstrauensvotum"?', '["تصويت بحجب الثقة","تصويت بالثقة","انتخابات","استفتاء"]', 'تصويت بحجب الثقة', 1, 1),
  (l_id, 'true_false', 'Konjunktiv I wird für neutrale Redewiedergabe verwendet.', '["Richtig","Falsch"]', 'Richtig', 1, 2),
  (l_id, 'fill_blank', 'Der Populismus _____ komplexe Zusammenhänge.', '["vereinfacht","verkompliziert","analysiert","erklärt"]', 'vereinfacht', 1, 3),
  (l_id, 'multiple_choice', 'Welches Modalverb drückt ein Verbot aus?', '["dürfen (nicht)","müssen","sollen","können"]', 'dürfen (nicht)', 1, 4),
  (l_id, 'true_false', 'Komplexe Satzstrukturen haben nur koordinierte Nebensätze.', '["Richtig","Falsch"]', 'Falsch', 1, 5);

  -- Lesson 4.6: Test: Politische Diskurse
  insert into public.course_lessons (module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published)
  values (m_id, 'Test: Politische Diskurse', 'Abschlusstest für Modul 4', 'Politische Diskurse', 'test', '["Learn key vocabulary","Practice grammar structures","Build comprehension skills","Apply in context","Review and reinforce"]', 45, 6, true)
  returning id into l_id;

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  (l_id, 'multiple_choice', 'Welche Funktion hat Konjunktiv II in der Politik?', '["Irrealis / Hypothesen","Indirekte Rede","Zukunft","Befehl"]', 'Irrealis / Hypothesen', '', 1, 1),
  (l_id, 'fill_gap', 'Der Minister erklärte, die Regierung _____ die Reform umsetzen.', '["werde","wird","würde","worden"]', 'werde', '', 1, 2),
  (l_id, 'translation', 'Übersetze: "The government must act now."', '["Die Regierung muss jetzt handeln.","Die Regierung darf jetzt handeln.","Die Regierung soll jetzt handeln.","Die Regierung kann jetzt handeln."]', 'Die Regierung muss jetzt handeln.', '', 1, 3),
  (l_id, 'multiple_choice', 'Welches Modalverb drückt politische Forderungen aus?', '["sollen","müssen","dürfen","können"]', 'sollen', '', 1, 4),
  (l_id, 'fill_gap', 'Es bleibt abzuwarten, _____ die Koalition die Reform durchsetzt.', '["ob","dass","wenn","weil"]', 'ob', '', 1, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  (l_id, 'multiple_choice', 'Was bedeutet "die Legislative"?', '["السلطة التشريعية","السلطة التنفيذية","السلطة القضائية","الحكومة"]', 'السلطة التشريعية', 1, 1),
  (l_id, 'true_false', 'Soziale Medien haben keinen Einfluss auf politische Diskurse.', '["Richtig","Falsch"]', 'Falsch', 1, 2),
  (l_id, 'fill_blank', 'Die Koalition aus zwei Parteien hat eine knappe _____.', '["Mehrheit","Minderheit","Opposition","Koalition"]', 'Mehrheit', 1, 3),
  (l_id, 'multiple_choice', 'Welche Wortstellung hat der Hauptsatz im Irrealis?', '["Verb an Position 2","Verb am Ende","Verb an Position 1","Verb an Position 3"]', 'Verb an Position 2', 1, 4),
  (l_id, 'true_false', '"Der Konsens" bedeutet "الإجماع".', '["Richtig","Falsch"]', 'Richtig', 1, 5),
  (l_id, 'fill_blank', 'Die Opposition beantragte ein _____ gegen den Minister.', '["Misstrauensvotum","Vertrauensvotum","Referendum","Plebiszit"]', 'Misstrauensvotum', 1, 6);

  -- Module 5: Wirtschaftsdeutsch
  insert into public.course_modules (level_id, title, description, objectives, order_index, estimated_hours, is_published)
  values ('C1', 'Wirtschaftsdeutsch', 'Beherrsche die deutsche Wirtschaftssprache. Vergleiche, Negation durch Präfixe und Synonymie in der Geschäftskommunikation.', '["Vergleiche mit als/als ob/als wenn im Wirtschaftskontext korrekt anwenden","Negation durch Präfixe (un-, in-, des-) verstehen und nutzen","Synonymie und Nuancen in der Geschäftssprache unterscheiden","Wirtschaftstexte auf C1-Niveau verstehen und verfassen","Komplexe wirtschaftliche Zusammenhänge sprachlich präzise darstellen"]', 5, 5.0, true)
  returning id into m_id;

  -- Lesson 5.1: Wirtschaftsbegriffe
  insert into public.course_lessons (module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published)
  values (m_id, 'Wirtschaftsbegriffe', 'Zentrale Begriffe der Volks- und Betriebswirtschaftslehre', 'Wirtschaftsdeutsch', 'vocabulary', '["Learn key vocabulary","Practice grammar structures","Build comprehension skills","Apply in context","Review and reinforce"]', 50, 1, true)
  returning id into l_id;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, order_index) values
  (l_id, 'die Konjunktur', 'الدورة الاقتصادية', 'economic cycle', 'die', 'die Konjunkturen', 'noun', 'Die Konjunktur befindet sich in einer Abschwungphase.', 'The economy is in a downturn phase.', 1),
  (l_id, 'die Investition', 'الاستثمار', 'investment', 'die', 'die Investitionen', 'noun', 'Die Investition in erneuerbare Energien nimmt zu.', 'Investment in renewable energies is increasing.', 2),
  (l_id, 'das Bruttoinlandsprodukt', 'الناتج المحلي الإجمالي', 'gross domestic product', 'das', 'die Bruttoinlandsprodukte', 'noun', 'Das Bruttoinlandsprodukt ist im letzten Quartal gewachsen.', 'The gross domestic product grew in the last quarter.', 3),
  (l_id, 'die Liquidität', 'السيولة', 'liquidity', 'die', 'die Liquiditäten', 'noun', 'Die Liquidität des Unternehmens ist gesichert.', 'The liquidity of the company is secured.', 4),
  (l_id, 'die Rendite', 'العائد', 'yield/return', 'die', 'die Renditen', 'noun', 'Die Rendite der Anleihe beträgt 4 Prozent.', 'The yield of the bond is 4 percent.', 5),
  (l_id, 'der Marktanteil', 'الحصة السوقية', 'market share', 'der', 'die Marktanteile', 'noun', 'Das Unternehmen konnte seinen Marktanteil ausbauen.', 'The company was able to expand its market share.', 6),
  (l_id, 'die Diversifikation', 'التنويع', 'diversification', 'die', 'die Diversifikationen', 'noun', 'Die Diversifikation in neue Märkte reduziert Risiken.', 'Diversification into new markets reduces risks.', 7);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  (l_id, 'Vergleiche mit als/als ob/als wenn im Wirtschaftskontext', 'Im Wirtschaftsdeutsch werden irreale Vergleichssätze verwendet, um hypothetische Szenarien oder nicht erfüllte Bedingungen auszudrücken. "als" / "als ob" / "als wenn" leiten diese Sätze ein und erfordern den Konjunktiv II.', '[{"rule":"\"als\" + Konjunktiv II (ohne \"ob/wenn\"): verkürzte Form des irrealen Vergleichs.","note":"Der Markt entwickelt sich, als gäbe es keine Krise."},{"rule":"\"als ob\" / \"als wenn\" + Konjunktiv II: vollständige Form.","note":"Das Unternehmen tut so, als ob die Konjunktur boomt."},{"rule":"Gleichzeitigkeit: Konjunktiv II Präsens (wäre, hätte, gäbe).","note":"Die Aktie fällt, als ob es keine Erholung gäbe."},{"rule":"Vorzeitigkeit: Konjunktiv II Plusquamperfekt (wäre gewesen, hätte gehabt).","note":"Die Bilanz sah aus, als ob das Unternehmen nie Gewinne erzielt hätte."}]', '[{"german":"Die Aktie steigt, als ob es keinen Konjunkturrückgang gäbe.","arabic":"يرتفع السهم وكأنه لا يوجد انكماش اقتصادي.","english":"The stock is rising as if there were no economic downturn."},{"german":"Der Vorstand tat so, als ob die Liquidität gesichert wäre.","arabic":"تصرفت الإدارة كما لو كانت السيولة مضمونة.","english":"The board acted as if liquidity were secured."},{"german":"Die Rendite entwickelt sich, als wäre die Investition risikolos.","arabic":"يتطور العائد كما لو كان الاستثمار خالياً من المخاطر.","english":"The return is developing as if the investment were risk-free."},{"german":"Die Märkte reagieren, als hätte es die Krise nie gegeben.","arabic":"تتفاعل الأسواق كما لو لم تكن هناك أزمة.","english":"The markets are reacting as if the crisis had never happened."}]', '[{"mistake":"Der Markt entwickelt sich, als ob es gibt keine Krise.","correction":"Der Markt entwickelt sich, als ob es keine Krise gäbe.","explanation":"Nach \"als ob\" steht der Konjunktiv II, nicht Indikativ."},{"mistake":"Die Aktie steigt, als ob es keinen Konjunkturrückgang gibt.","correction":"Die Aktie steigt, als ob es keinen Konjunkturrückgang gäbe.","explanation":"Irrealer Vergleich erfordert Konjunktiv II (gäbe statt gibt)."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  (l_id, 'multiple_choice', 'Welchen Modus erfordert "als ob"?', '["Konjunktiv II","Konjunktiv I","Indikativ","Imperativ"]', 'Konjunktiv II', '', 1, 1),
  (l_id, 'fill_gap', 'Die Aktie steigt, als _____ es keine Krise _____.', '["ob / gäbe","ob / gibt","wenn / gibt","ob / gab"]', 'ob / gäbe', '', 1, 2),
  (l_id, 'fill_gap', 'Der Vorstand tat so, als _____ die Liquidität gesichert.', '["wäre","ist","wird","sei"]', 'wäre', '', 1, 3),
  (l_id, 'translation', 'Übersetze: "The stock is rising as if there were no economic downturn."', '["Die Aktie steigt, als ob es keinen Konjunkturrückgang gäbe.","Die Aktie steigt, als ob es keinen Konjunkturrückgang gibt.","Die Aktie steigt, obwohl es einen Konjunkturrückgang gibt."]', 'Die Aktie steigt, als ob es keinen Konjunkturrückgang gäbe.', '', 1, 4),
  (l_id, 'multiple_choice', 'Was ist die Vorzeitigkeit von "als ob"?', '["Konjunktiv II Plusquamperfekt","Konjunktiv II Präsens","Indikativ Perfekt","Konjunktiv I"]', 'Konjunktiv II Plusquamperfekt', '', 1, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  (l_id, 'multiple_choice', 'Was bedeutet "die Liquidität"?', '["السيولة","الربحية","الاستثمار","العائد"]', 'السيولة', 1, 1),
  (l_id, 'true_false', '"Als ob" erfordert den Konjunktiv II.', '["Richtig","Falsch"]', 'Richtig', 1, 2),
  (l_id, 'fill_blank', 'Die Konjunktur befindet sich in einer _____phase.', '["Abschwung","Aufschwung","Hoch","Tief"]', 'Abschwung', 1, 3),
  (l_id, 'multiple_choice', 'Was ist "die Rendite"?', '["العائد","الاستثمار","السيولة","السوق"]', 'العائد', 1, 4),
  (l_id, 'true_false', 'Diversifikation reduziert unternehmerische Risiken.', '["Richtig","Falsch"]', 'Richtig', 1, 5);

  -- Lesson 5.2: Unternehmenskommunikation
  insert into public.course_lessons (module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published)
  values (m_id, 'Unternehmenskommunikation', 'Wortschatz für Geschäftskorrespondenz und Unternehmenskommunikation', 'Wirtschaftsdeutsch', 'vocabulary', '["Learn key vocabulary","Practice grammar structures","Build comprehension skills","Apply in context","Review and reinforce"]', 50, 2, true)
  returning id into l_id;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, order_index) values
  (l_id, 'die Bilanz', 'الميزانية العمومية', 'balance sheet', 'die', 'die Bilanzen', 'noun', 'Die Bilanz weist einen Gewinn von 5 Millionen Euro aus.', 'The balance sheet shows a profit of 5 million euros.', 1),
  (l_id, 'die Gewinnprognose', 'توقعات الأرباح', 'profit forecast', 'die', 'die Gewinnprognosen', 'noun', 'Die Gewinnprognose musste nach unten korrigiert werden.', 'The profit forecast had to be revised downward.', 2),
  (l_id, 'die Kostenexplosion', 'انفجار التكاليف', 'cost explosion', 'die', 'die Kostenexplosionen', 'noun', 'Die Kostenexplosion gefährdet die Rentabilität des Projekts.', 'The cost explosion endangers the profitability of the project.', 3),
  (l_id, 'das Joint Venture', 'المشروع المشترك', 'joint venture', 'das', 'die Joint Ventures', 'noun', 'Das Joint Venture erschließt neue Märkte in Asien.', 'The joint venture opens up new markets in Asia.', 4),
  (l_id, 'die Fusion', 'الاندماج', 'merger', 'die', 'die Fusionen', 'noun', 'Die Fusion der beiden Unternehmen schuf einen Marktführer.', 'The merger of the two companies created a market leader.', 5),
  (l_id, 'die Umsatzrendite', 'العائد على المبيعات', 'return on sales', 'die', 'die Umsatzrenditen', 'noun', 'Die Umsatzrendite liegt bei 12 Prozent im letzten Geschäftsjahr.', 'The return on sales is 12 percent in the last fiscal year.', 6);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  (l_id, 'Negation durch Präfixe (un-, in-, des-)', 'Im Wirtschaftsdeutsch werden häufig Präfixe zur Negation von Adjektiven und Nomen verwendet. "un-" ist das häufigste Negationspräfix, "in-" (mit Varianten il-, im-, ir-) und "des-" sind seltener und oft lateinischen Ursprungs.', '[{"rule":"un-: produktivstes Negationspräfix, oft bei germanischen Wörtern.","note":"unabhängig, unrentabel, unprofitabel, unverhältnismäßig"},{"rule":"in- (il-, im-, ir-): bei Adjektiven lateinischen Ursprungs.","note":"ineffizient, illegal, immateriell, irrational"},{"rule":"des-: bei Nomen und Adjektiven, Bedeutung \"Gegenteil/Entzug\".","note":"destabilisieren, desinvestieren, desinteressiert"},{"rule":"Nicht alle Wörter mit diesen Präfixen sind negiert (z.B. \"Investition\").","note":"Kontext beachten: \"un-\" in \"Untersuchung\" ist nicht negierend."}]', '[{"german":"Die ineffiziente Produktion führt zu unrentablen Ergebnissen.","arabic":"الإنتاج غير الفعال يؤدي إلى نتائج غير مربحة.","english":"Inefficient production leads to unprofitable results."},{"german":"Das Unternehmen musste desinvestieren, um Liquidität zu sichern.","arabic":"اضطرت الشركة إلى سحب الاستثمارات لضمان السيولة.","english":"The company had to disinvest to secure liquidity."},{"german":"Die illegalen Absprachen führten zu einer Kartellstrafe.","arabic":"أدت الاتفاقات غير القانونية إلى غرامة احتكار.","english":"The illegal agreements led to a cartel fine."},{"german":"Der Markt zeigt sich unabhängig von konjunkturellen Schwankungen.","arabic":"يظهر السوق استقلالاً عن التقلبات الدورية.","english":"The market appears independent of cyclical fluctuations."}]', '[{"mistake":"Das ist unlegal.","correction":"Das ist illegal.","explanation":"Bei Adjektiven lateinischen Ursprungs verwendet man \"il-\" statt \"un-\"."},{"mistake":"Die Produktion ist ineffizient. (correct - \"in-\" + effizient)","correction":"Die Produktion ist ineffizient. (This is correct)","explanation":"\"Ineffizient\" ist die korrekte Negation von \"effizient\"."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  (l_id, 'multiple_choice', 'Welches Negationspräfix verwendet man bei Adjektiven lateinischen Ursprungs?', '["in- (il-, im-, ir-)","un-","des-","miss-"]', 'in- (il-, im-, ir-)', '', 1, 1),
  (l_id, 'fill_gap', 'Die _____ Produktion führt zu Verlusten. (nicht effizient)', '["ineffiziente","uneffiziente","deseffiziente","ineffiziente"]', 'ineffiziente', '', 1, 2),
  (l_id, 'fill_gap', 'Das Unternehmen musste _____, um Liquidität zu sichern. (Investitionen rückgängig machen)', '["desinvestieren","uninvestieren","ininvestieren","missinvestieren"]', 'desinvestieren', '', 1, 3),
  (l_id, 'translation', 'Übersetze: "Inefficient production leads to unprofitable results."', '["Die ineffiziente Produktion führt zu unrentablen Ergebnissen.","Die uneffiziente Produktion führt zu unrentablen Ergebnissen.","Die ineffiziente Produktion führt zu unprofitablen Ergebnissen."]', 'Die ineffiziente Produktion führt zu unrentablen Ergebnissen.', '', 1, 4),
  (l_id, 'multiple_choice', 'Welche Negation von "legal" ist korrekt?', '["illegal","unlegal","deslegal","inlegal"]', 'illegal', '', 1, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  (l_id, 'multiple_choice', 'Was bedeutet "die Bilanz"?', '["الميزانية العمومية","توقعات الأرباح","الاندماج","الاستثمار"]', 'الميزانية العمومية', 1, 1),
  (l_id, 'true_false', '"In-" ist ein Negationspräfix bei Wörtern lateinischen Ursprungs.', '["Richtig","Falsch"]', 'Richtig', 1, 2),
  (l_id, 'fill_blank', 'Die _____ Absprachen führten zu einer Strafe.', '["illegalen","unlegalen","deslegalen","inlegalen"]', 'illegalen', 1, 3),
  (l_id, 'multiple_choice', 'Was ist eine Fusion?', '["اندماج","استثمار","تصفية","إفلاس"]', 'اندماج', 1, 4),
  (l_id, 'true_false', '"Un-" ist das produktivste Negationspräfix im Deutschen.', '["Richtig","Falsch"]', 'Richtig', 1, 5);

  -- Lesson 5.3: Vergleiche und Negation im Wirtschaftsdeutsch
  insert into public.course_lessons (module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published)
  values (m_id, 'Vergleiche und Negation im Wirtschaftsdeutsch', 'Vertiefung: irreale Vergleichssätze und differenzierte Negationsstrukturen', 'Wirtschaftsdeutsch', 'grammar', '["Learn key vocabulary","Practice grammar structures","Build comprehension skills","Apply in context","Review and reinforce"]', 60, 3, true)
  returning id into l_id;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, order_index) values
  (l_id, 'der Konkurrenzdruck', 'الضغط التنافسي', 'competitive pressure', 'der', 'die Konkurrenzdrucke', 'noun', 'Der Konkurrenzdruck zwingt die Unternehmen zu Innovationen.', 'Competitive pressure forces companies to innovate.', 1),
  (l_id, 'die Abschreibung', 'الإهلاك/الاستهلاك', 'depreciation/amortization', 'die', 'die Abschreibungen', 'noun', 'Die Abschreibung des Anlagevermögens ist steuerlich absetzbar.', 'The depreciation of fixed assets is tax-deductible.', 2),
  (l_id, 'die Preisstabilität', 'استقرار الأسعار', 'price stability', 'die', NULL, 'noun', 'Die Preisstabilität ist ein zentrales Ziel der Zentralbank.', 'Price stability is a central goal of the central bank.', 3),
  (l_id, 'der Kapitalfluss', 'تدفق رأس المال', 'capital flow', 'der', 'die Kapitalflüsse', 'noun', 'Der Kapitalfluss in die Schwellenländer hat zugenommen.', 'The capital flow into emerging markets has increased.', 4),
  (l_id, 'das Ausschüttungsverhältnis', 'نسبة التوزيع', 'payout ratio', 'das', 'die Ausschüttungsverhältnisse', 'noun', 'Das Ausschüttungsverhältnis der Dividende beträgt 40 Prozent.', 'The dividend payout ratio is 40 percent.', 5);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  (l_id, 'Synonymie und Nuancen in der Geschäftssprache', 'Die Wirtschaftssprache zeichnet sich durch eine Vielzahl von Synonymen mit feinen Nuancen aus. Die Wahl des richtigen Wortes signalisiert Sprachkompetenz auf C1-Niveau.', '[{"rule":"steigen / ansteigen / zunehmen / wachsen: unterschiedliche Nuancen.","note":"Die Aktie steigt. / Die Kosten nehmen zu. / Der Markt wächst."},{"rule":"sinken / fallen / zurückgehen / abnehmen: unterschiedliche Kontexte.","note":"Die Kurse fallen. / Die Nachfrage geht zurück. / Die Rendite sinkt."},{"rule":"Formelle vs. informelle Synonyme: kaufen / erwerben / akquirieren.","note":"Das Unternehmen akquiriert einen Konkurrenten (formell) vs. kauft (neutral)."},{"rule":"Kollokationen: bestimmte Verben passen nur zu bestimmten Nomen.","note":"Eine Bilanz aufstellen (nicht: machen). Eine Prognose abgeben (nicht: sagen)."}]', '[{"german":"Die Unternehmensgewinne sind im Vergleich zum Vorjahr deutlich gestiegen.","arabic":"ارتفعت أرباح الشركات بشكل ملحوظ مقارنة بالعام السابق.","english":"Corporate profits have risen significantly compared to the previous year."},{"german":"Die Nachfrage nach Rohstoffen ist aufgrund der Konjunkturflaute zurückgegangen.","arabic":"انخفض الطلب على المواد الخام بسبب الركود.","english":"Demand for raw materials has declined due to the economic slowdown."},{"german":"Der Vorstand hat beschlossen, einen Konkurrenten zu akquirieren.","arabic":"قرر مجلس الإدارة الاستحواذ على منافس.","english":"The board has decided to acquire a competitor."},{"german":"Die Bilanz wurde fristgerecht aufgestellt und veröffentlicht.","arabic":"تم إعداد الميزانية العمومية ونشرها في الوقت المحدد.","english":"The balance sheet was prepared and published on time."}]', '[{"mistake":"Die Bilanz machen. (too informal)","correction":"Die Bilanz aufstellen / erstellen.","explanation":"Kollokation: \"eine Bilanz aufstellen/erstellen\", nicht \"machen\"."},{"mistake":"Die Aktie wächst. (wrong collocation)","correction":"Die Aktie steigt. / Der Aktienkurs steigt.","explanation":"\"Wachsen\" verwendet man für Unternehmen oder Märkte, nicht für Aktienkurse."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  (l_id, 'multiple_choice', 'Welches Synonym ist formeller?', '["akquirieren","kaufen","erwerben","holen"]', 'akquirieren', '', 1, 1),
  (l_id, 'fill_gap', 'Die Nachfrage ist aufgrund der Konjunkturflaute _____ (gesunken/gewachsen).', '["zurückgegangen","gestiegen","gewachsen","explodiert"]', 'zurückgegangen', '', 1, 2),
  (l_id, 'fill_gap', 'Der Vorstand hat beschlossen, einen Konkurrenten zu _____.', '["akquirieren","kaufen","erwerben","nehmen"]', 'akquirieren', '', 1, 3),
  (l_id, 'translation', 'Übersetze: "Corporate profits have risen significantly compared to the previous year."', '["Die Unternehmensgewinne sind deutlich gestiegen.","Die Unternehmensgewinne sind deutlich gesunken.","Die Unternehmensgewinne sind deutlich gewachsen."]', 'Die Unternehmensgewinne sind deutlich gestiegen.', '', 1, 4),
  (l_id, 'multiple_choice', 'Welche Kollokation ist korrekt?', '["eine Bilanz aufstellen","eine Bilanz machen","eine Bilanz sagen","eine Bilanz geben"]', 'eine Bilanz aufstellen', '', 1, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  (l_id, 'multiple_choice', 'Was bedeutet "der Konkurrenzdruck"?', '["الضغط التنافسي","الضغط المالي","الضغط السياسي","الضغط الاجتماعي"]', 'الضغط التنافسي', 1, 1),
  (l_id, 'true_false', '"Eine Bilanz machen" ist die korrekte Kollokation.', '["Richtig","Falsch"]', 'Falsch', 1, 2),
  (l_id, 'fill_blank', 'Die Rendite ist im letzten Jahr deutlich _____.', '["gesunken","gewachsen","explodiert","gestiegen"]', 'gesunken', 1, 3),
  (l_id, 'multiple_choice', 'Welches Wort ist ein Synonym für "sinken"?', '["zurückgehen","steigen","wachsen","zunehmen"]', 'zurückgehen', 1, 4),
  (l_id, 'true_false', '"Akquirieren" ist informeller als "kaufen".', '["Richtig","Falsch"]', 'Falsch', 1, 5);

  -- Lesson 5.4: Wirtschaftsartikel analysieren
  insert into public.course_lessons (module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published)
  values (m_id, 'Wirtschaftsartikel analysieren', 'Einen Wirtschaftsartikel auf Deutsch lesen, verstehen und analysieren', 'Wirtschaftsdeutsch', 'reading', '["Learn key vocabulary","Practice grammar structures","Build comprehension skills","Apply in context","Review and reinforce"]', 60, 4, true)
  returning id into l_id;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, order_index) values
  (l_id, 'die Zinserhöhung', 'رفع سعر الفائدة', 'interest rate hike', 'die', 'die Zinserhöhungen', 'noun', 'Die Zinserhöhung der Zentralbank bremst die Konjunktur.', 'The central bank interest rate hike slows the economy.', 1),
  (l_id, 'die Inflation', 'التضخم', 'inflation', 'die', 'die Inflationen', 'noun', 'Die Inflation liegt bei über 5 Prozent.', 'Inflation is at over 5 percent.', 2),
  (l_id, 'das Wirtschaftswachstum', 'النمو الاقتصادي', 'economic growth', 'das', NULL, 'noun', 'Das Wirtschaftswachstum hat sich im dritten Quartal verlangsamt.', 'Economic growth slowed in the third quarter.', 3),
  (l_id, 'die Geldpolitik', 'السياسة النقدية', 'monetary policy', 'die', 'die Geldpolitiken', 'noun', 'Die Geldpolitik der EZB beeinflusst die Zinsen.', 'The ECB monetary policy influences interest rates.', 4),
  (l_id, 'der Leitzins', 'سعر الفائدة الأساسي', 'key interest rate', 'der', 'die Leitzinsen', 'noun', 'Der Leitzins wurde um 0,25 Prozentpunkte gesenkt.', 'The key interest rate was lowered by 0.25 percentage points.', 5);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  (l_id, 'Komplexe Nominalphrasen im Wirtschaftsdeutsch', 'Wirtschaftstexte enthalten häufig komplexe Nominalphrasen mit mehreren Attributen (Genitiv, Präpositionalattribute, Partizipialattribute), die das Verständnis erschweren können.', '[{"rule":"Genitivketten: mehrere Genitivattribute hintereinander.","note":"die Erhöhung des Leitzinses der Europäischen Zentralbank"},{"rule":"Komplexe Partizipialattribute: Artikel + [Erweiterung] + Partizip + Nomen + Genitiv.","note":"die von der Zentralbank beschlossene Erhöhung des Leitzinses"},{"rule":"Nominalstil im Wirtschaftsdeutsch: Verben werden nominalisiert.","note":"Die Senkung des Leitzinses erfolgte... (statt: Der Leitzins wurde gesenkt.)"},{"rule":"Fachbegriffe als Komposita: mehrere Nomen werden zusammengesetzt.","note":"das Zinserhöhungsrisiko, die Inflationserwartung"}]', '[{"german":"Die von der Europäischen Zentralbank beschlossene Erhöhung des Leitzinses zeigt erste Wirkungen.","arabic":"يظهر رفع سعر الفائدة الأساسي الذي قرره البنك المركزي الأوروبي تأثيراته الأولى.","english":"The key interest rate hike decided by the European Central Bank is showing first effects."},{"german":"Die aufgrund der hohen Inflation erwartete Zinserhöhung beeinflusst die Investitionsentscheidungen.","arabic":"رفع سعر الفائدة المتوقع بسبب التضخم المرتفع يؤثر على قرارات الاستثمار.","english":"The interest rate hike expected due to high inflation influences investment decisions."},{"german":"Das Wirtschaftswachstum der Eurozone hat sich im dritten Quartal verlangsamt.","arabic":"تباطأ النمو الاقتصادي في منطقة اليورو في الربع الثالث.","english":"Economic growth in the eurozone slowed in the third quarter."}]', '[{"mistake":"Die Zinserhöhung von der Zentralbank beschlossen wurde.","correction":"Die von der Zentralbank beschlossene Zinserhöhung...","explanation":"Partizipialattribut: \"von der Zentralbank beschlossene\" steht zwischen Artikel und Nomen."},{"mistake":"Das Wirtschaftswachstum der Eurozone langsam sich. (wrong word order)","correction":"Das Wirtschaftswachstum der Eurozone hat sich verlangsamt.","explanation":"Trennbare Verben: \"sich verlangsamen\", nicht \"langsam sich\"."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  (l_id, 'multiple_choice', 'Was ist eine Genitivkette?', '["Mehrere Genitivattribute hintereinander","Mehrere Nomen","Mehrere Verben","Mehrere Adjektive"]', 'Mehrere Genitivattribute hintereinander', '', 1, 1),
  (l_id, 'fill_gap', 'Die _____ Zinserhöhung zeigt Wirkungen. (von der Zentralbank beschließen)', '["von der Zentralbank beschlossene","von der Zentralbank beschlossen","von der Zentralbank beschließende","von der Zentralbank beschlossene die"]', 'von der Zentralbank beschlossene', '', 1, 2),
  (l_id, 'fill_gap', 'Die Inflation _____ bei über 5 Prozent.', '["liegt","steht","ist","hat"]', 'liegt', '', 1, 3),
  (l_id, 'translation', 'Übersetze: "The interest rate hike decided by the ECB influences investment decisions."', '["Die von der EZB beschlossene Zinserhöhung beeinflusst die Investitionsentscheidungen.","Die EZB beschlossene Zinserhöhung beeinflusst die Investitionsentscheidungen.","Die Zinserhöhung von der EZB beeinflusst die Investitionsentscheidungen."]', 'Die von der EZB beschlossene Zinserhöhung beeinflusst die Investitionsentscheidungen.', '', 1, 4),
  (l_id, 'multiple_choice', 'Wie heißt der Prozess der Nominalisierung im Wirtschaftsdeutsch?', '["Verben werden zu Nomen","Nomen werden zu Verben","Adjektive werden zu Nomen","Adverbien werden zu Nomen"]', 'Verben werden zu Nomen', '', 1, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  (l_id, 'multiple_choice', 'Was bedeutet "die Inflation"?', '["التضخم","الانكماش","الاستثمار","السيولة"]', 'التضخم', 1, 1),
  (l_id, 'true_false', 'Genitivketten sind typisch für Wirtschaftstexte.', '["Richtig","Falsch"]', 'Richtig', 1, 2),
  (l_id, 'fill_blank', 'Der Leitzins wurde um 0,25 _____ gesenkt.', '["Prozentpunkte","Prozent","Punkte","Prozente"]', 'Prozentpunkte', 1, 3),
  (l_id, 'multiple_choice', 'Was beeinflusst die Geldpolitik?', '["Die Zinsen","Die Steuern","Die Löhne","Die Mieten"]', 'Die Zinsen', 1, 4),
  (l_id, 'true_false', 'Die Inflation liegt bei über 5 Prozent.', '["Richtig","Falsch"]', 'Richtig', 1, 5);

  -- Lesson 5.5: Wiederholung: Wirtschaftsdeutsch
  insert into public.course_lessons (module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published)
  values (m_id, 'Wiederholung: Wirtschaftsdeutsch', 'Alle Themen aus Modul 5 wiederholen und festigen', 'Wirtschaftsdeutsch', 'review', '["Learn key vocabulary","Practice grammar structures","Build comprehension skills","Apply in context","Review and reinforce"]', 50, 5, true)
  returning id into l_id;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, order_index) values
  (l_id, 'die Lohnnebenkosten', 'التكاليف الإضافية للأجور', 'ancillary wage costs', 'die', 'die Lohnnebenkosten', 'noun', 'Die Lohnnebenkosten belasten die Unternehmen.', 'Ancillary wage costs burden companies.', 1),
  (l_id, 'die Wettbewerbsfähigkeit', 'القدرة التنافسية', 'competitiveness', 'die', NULL, 'noun', 'Die Wettbewerbsfähigkeit der Industrie muss gestärkt werden.', 'The competitiveness of the industry must be strengthened.', 2),
  (l_id, 'die Steuerprogression', 'التصاعد الضريبي', 'tax progression', 'die', 'die Steuerprogressionen', 'noun', 'Die Steuerprogression führt zu höheren Abgaben bei steigendem Einkommen.', 'Tax progression leads to higher taxes with rising income.', 3),
  (l_id, 'der Börsengang', 'الاكتتاب العام', 'initial public offering', 'der', 'die Börsengänge', 'noun', 'Der Börsengang des Start-ups war ein großer Erfolg.', 'The IPO of the start-up was a great success.', 4),
  (l_id, 'die Unternehmensbewertung', 'تقييم الشركة', 'company valuation', 'die', 'die Unternehmensbewertungen', 'noun', 'Die Unternehmensbewertung liegt bei einer Milliarde Euro.', 'The company valuation is one billion euros.', 5);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  (l_id, 'Wiederholung: Vergleiche, Negationspräfixe und Synonymie', 'Wiederholung der Grammatikthemen aus Modul 5.', '[{"rule":"als/als ob/als wenn + Konjunktiv II für irreale Vergleiche.","note":"Der Markt entwickelt sich, als gäbe es keine Krise."},{"rule":"Negationspräfixe: un- (häufigstes), in-/il-/im-/ir- (lat.), des-.","note":"unrentabel, illegal, desinvestieren"},{"rule":"Synonymie: steigen/wachsen/zunehmen, sinken/zurückgehen/fallen.","note":"Kontextabhängige Wahl der richtigen Nuance."},{"rule":"Kollokationen: eine Bilanz aufstellen, eine Prognose abgeben.","note":"Feste Verbindungen beachten."}]', '[{"german":"Die Aktie steigt, als ob es keine Inflation gäbe.","arabic":"يرتفع السهم وكأنه لا يوجد تضخم.","english":"The stock is rising as if there were no inflation."},{"german":"Die ineffiziente Produktion und die illegalen Absprachen führten zu unrentablen Ergebnissen.","arabic":"الإنتاج غير الفعال والاتفاقات غير القانونية أدت إلى نتائج غير مربحة.","english":"Inefficient production and illegal agreements led to unprofitable results."}]', '[{"mistake":"Die Aktie steigt, als ob es keine Inflation gibt.","correction":"Die Aktie steigt, als ob es keine Inflation gäbe.","explanation":"Nach \"als ob\" steht Konjunktiv II."},{"mistake":"Die Bilanz machen.","correction":"Die Bilanz aufstellen.","explanation":"Korrekte Kollokation: \"eine Bilanz aufstellen\"."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  (l_id, 'multiple_choice', 'Welche Negation von "effizient" ist korrekt?', '["ineffizient","uneffizient","deseffizient","ineffizient"]', 'ineffizient', '', 1, 1),
  (l_id, 'fill_gap', 'Der Markt entwickelt sich, als _____ es keine Krise _____.', '["ob / gäbe","ob / gibt","wenn / gibt","ob / gab"]', 'ob / gäbe', '', 1, 2),
  (l_id, 'fill_gap', 'Das Unternehmen musste _____, um Liquidität zu sichern.', '["desinvestieren","uninvestieren","ininvestieren","missinvestieren"]', 'desinvestieren', '', 1, 3),
  (l_id, 'translation', 'Übersetze: "The stock is rising as if there were no inflation."', '["Die Aktie steigt, als ob es keine Inflation gäbe.","Die Aktie steigt, als ob es keine Inflation gibt.","Die Aktie steigt, obwohl es Inflation gibt."]', 'Die Aktie steigt, als ob es keine Inflation gäbe.', '', 1, 4),
  (l_id, 'multiple_choice', 'Welche Kollokation ist korrekt?', '["eine Bilanz aufstellen","eine Bilanz machen","eine Bilanz stellen","eine Bilanz herstellen"]', 'eine Bilanz aufstellen', '', 1, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  (l_id, 'multiple_choice', 'Was bedeutet "die Wettbewerbsfähigkeit"?', '["القدرة التنافسية","التضخم","الاستثمار","السيولة"]', 'القدرة التنافسية', 1, 1),
  (l_id, 'true_false', 'Nach "als ob" steht der Indikativ.', '["Richtig","Falsch"]', 'Falsch', 1, 2),
  (l_id, 'fill_blank', 'Der Börsengang war ein großer _____.', '["Erfolg","Misserfolg","Fehlschlag","Verlust"]', 'Erfolg', 1, 3),
  (l_id, 'multiple_choice', 'Welches Wort hat das Negationspräfix "des-"?', '["desinvestieren","unrentabel","illegal","ineffizient"]', 'desinvestieren', 1, 4),
  (l_id, 'true_false', '"Steigen" und "wachsen" sind immer austauschbar.', '["Richtig","Falsch"]', 'Falsch', 1, 5);

  -- Lesson 5.6: Test: Wirtschaftsdeutsch
  insert into public.course_lessons (module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published)
  values (m_id, 'Test: Wirtschaftsdeutsch', 'Abschlusstest für Modul 5', 'Wirtschaftsdeutsch', 'test', '["Learn key vocabulary","Practice grammar structures","Build comprehension skills","Apply in context","Review and reinforce"]', 45, 6, true)
  returning id into l_id;

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  (l_id, 'multiple_choice', 'Welchen Modus erfordert "als ob"?', '["Konjunktiv II","Konjunktiv I","Indikativ","Imperativ"]', 'Konjunktiv II', '', 1, 1),
  (l_id, 'fill_gap', 'Die Aktie steigt, als ob es keinen _____ gäbe.', '["Konjunkturrückgang","Aufschwung","Wachstum","Boom"]', 'Konjunkturrückgang', '', 1, 2),
  (l_id, 'translation', 'Übersetze: "The company had to disinvest to secure liquidity."', '["Das Unternehmen musste desinvestieren, um Liquidität zu sichern.","Das Unternehmen musste investieren, um Liquidität zu sichern.","Das Unternehmen musste desinvestieren, um die Bilanz zu sichern."]', 'Das Unternehmen musste desinvestieren, um Liquidität zu sichern.', '', 1, 3),
  (l_id, 'multiple_choice', 'Welche Negation von "legal" ist korrekt?', '["illegal","unlegal","deslegal","inlegal"]', 'illegal', '', 1, 4),
  (l_id, 'fill_gap', 'Die _____ Produktion führt zu Verlusten.', '["ineffiziente","uneffiziente","deseffiziente","ineffiziente"]', 'ineffiziente', '', 1, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  (l_id, 'multiple_choice', 'Was bedeutet "die Rendite"?', '["العائد","السيولة","الاستثمار","التضخم"]', 'العائد', 1, 1),
  (l_id, 'true_false', '"Als ob" kann mit Konjunktiv II Präsens und Plusquamperfekt verwendet werden.', '["Richtig","Falsch"]', 'Richtig', 1, 2),
  (l_id, 'fill_blank', 'Die _____ der EZB beeinflusst die Zinsen.', '["Geldpolitik","Steuerpolitik","Finanzpolitik","Sozialpolitik"]', 'Geldpolitik', 1, 3),
  (l_id, 'multiple_choice', 'Was ist ein Synonym für "erwerben" im formellen Kontext?', '["akquirieren","kaufen","holen","nehmen"]', 'akquirieren', 1, 4),
  (l_id, 'true_false', 'Eine Genitivkette besteht aus mehreren Genitivattributen.', '["Richtig","Falsch"]', 'Richtig', 1, 5),
  (l_id, 'fill_blank', 'Die Unternehmensbewertung _____ bei einer Milliarde Euro.', '["liegt","steht","ist","hat"]', 'liegt', 1, 6);

  -- Module 6: Literatur und Kunst
  insert into public.course_modules (level_id, title, description, objectives, order_index, estimated_hours, is_published)
  values ('C1', 'Literatur und Kunst', 'Entdecke die deutsche Literatur und Kunst auf C1-Niveau. Stilistische Mittel, Sprachregister und Textkohärenz in literarischen Werken.', '["Stilistische Mittel (Metapher, Ironie, Hyperbel) erkennen und anwenden","Sprachregister (formell/informell) unterscheiden und situationsgerecht nutzen","Textkohärenz durch Proformen und Wiederaufnahme verstehen","Literarische Texte auf C1-Niveau analysieren und interpretieren","Über Kunst und Literatur differenziert diskutieren"]', 6, 5.0, true)
  returning id into m_id;

  -- Lesson 6.1: Literaturwissenschaftliche Grundbegriffe
  insert into public.course_lessons (module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published)
  values (m_id, 'Literaturwissenschaftliche Grundbegriffe', 'Zentrale Begriffe der Literaturwissenschaft und Textanalyse', 'Literatur und Kunst', 'vocabulary', '["Learn key vocabulary","Practice grammar structures","Build comprehension skills","Apply in context","Review and reinforce"]', 50, 1, true)
  returning id into l_id;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, order_index) values
  (l_id, 'die Prosa', 'النثر', 'prose', 'die', 'die Prosawerke', 'noun', 'Die Prosa des Autors ist klar und präzise.', 'The author prose is clear and precise.', 1),
  (l_id, 'die Lyrik', 'الشعر الغنائي', 'poetry/lyric poetry', 'die', 'die Lyriken', 'noun', 'Die Lyrik der Romantik ist reich an Metaphern.', 'Romantic poetry is rich in metaphors.', 2),
  (l_id, 'die Erzählperspektive', 'منظور السرد', 'narrative perspective', 'die', 'die Erzählperspektiven', 'noun', 'Die Erzählperspektive wechselt zwischen Ich- und personalem Erzähler.', 'The narrative perspective switches between first-person and personal narrator.', 3),
  (l_id, 'die Symbolik', 'الرمزية', 'symbolism', 'die', 'die Symboliken', 'noun', 'Die Symbolik im Roman ist vielschichtig und interpretationsbedürftig.', 'The symbolism in the novel is multi-layered and requires interpretation.', 4),
  (l_id, 'das Motiv', 'الموضوع/الفكرة المتكررة', 'motif', 'das', 'die Motive', 'noun', 'Das Motiv des Wandels zieht sich durch den gesamten Roman.', 'The motif of change runs through the entire novel.', 5),
  (l_id, 'die Gattung', 'النوع الأدبي', 'genre', 'die', 'die Gattungen', 'noun', 'Der Roman gehört zur Gattung der phantastischen Literatur.', 'The novel belongs to the genre of fantastic literature.', 6),
  (l_id, 'die Interpretation', 'التفسير/التأويل', 'interpretation', 'die', 'die Interpretationen', 'noun', 'Die Interpretation des Gedichts erfordert literaturwissenschaftliche Kenntnisse.', 'The interpretation of the poem requires literary knowledge.', 7);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  (l_id, 'Stilistische Mittel: Metapher, Ironie, Hyperbel', 'Stilistische Mittel (auch rhetorische Figuren) sind sprachliche Ausdrucksformen, die über die wörtliche Bedeutung hinausgehen. In der Literatur und Kunst werden sie bewusst eingesetzt, um bestimmte Wirkungen zu erzielen.', '[{"rule":"Metapher: Sprachliches Bild - ein Wort wird in übertragener Bedeutung verwendet.","note":"\"Ein Meer von Sorgen\" - die Sorgen werden mit einem Meer verglichen."},{"rule":"Ironie: Aussage meint das Gegenteil des Gesagten (erkennbar am Kontext).","note":"\"Das hast du ja großartig gemacht!\" (wenn etwas schiefgegangen ist)"},{"rule":"Hyperbel: Starke Übertreibung zur Verstärkung der Aussage.","note":"\"Ich bin gestorben vor Langeweile.\" (übertriebene Darstellung)"},{"rule":"Weitere Mittel: Personifikation, Vergleich, Ellipse, rhetorische Frage.","note":"Der Wind flüstert (Personifikation). / Ist das nicht offensichtlich? (rhet. Frage)"}]', '[{"german":"Die Metapher \"ein Meer von Tränen\" veranschaulicht das große Leid der Figur.","arabic":"استعارة \"بحر من الدموع\" توضح معاناة الشخصية الكبيرة.","english":"The metaphor \"a sea of tears\" illustrates the character great suffering."},{"german":"Der Autor verwendet Ironie, um die gesellschaftlichen Missstände zu kritisieren.","arabic":"يستخدم المؤلف السخرية لانتقاد العيوب الاجتماعية.","english":"The author uses irony to criticize social grievances."},{"german":"Die Hyperbel \"tausendmal gesagt\" unterstreicht die Dringlichkeit der Botschaft.","arabic":"المبالغة \"قيل ألف مرة\" تؤكد إلحاح الرسالة.","english":"The hyperbole \"said a thousand times\" emphasizes the urgency of the message."},{"german":"Der Roman ist reich an Metaphern und Symbolen, die der Interpretation bedürfen.","arabic":"الرواية غنية بالاستعارات والرموز التي تحتاج إلى تفسير.","english":"The novel is rich in metaphors and symbols that require interpretation."}]', '[{"mistake":"Der Autor meint das Gegenteil von dem, was er sagt. (Verwechslung Ironie/Lüge)","correction":"Der Autor verwendet Ironie: Er sagt das Gegenteil, meint es aber nicht ernst.","explanation":"Ironie ist ein stilistisches Mittel der Übertreibung des Gegenteils, nicht eine Lüge."},{"mistake":"Die Hyperbel ist eine Untertreibung.","correction":"Die Hyperbel ist eine Übertreibung.","explanation":"Hyperbel = Übertreibung (z.B. \"ein Meer von...\"), nicht Untertreibung (Litotes)."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  (l_id, 'multiple_choice', 'Welches Stilmittel bezeichnet eine Übertreibung?', '["Hyperbel","Metapher","Ironie","Personifikation"]', 'Hyperbel', '', 1, 1),
  (l_id, 'fill_gap', '"Ein Meer von Sorgen" ist eine _____.', '["Metapher","Hyperbel","Ironie","Personifikation"]', 'Metapher', '', 1, 2),
  (l_id, 'fill_gap', 'Wenn jemand "Das hast du toll gemacht!" sagt, obwohl etwas schiefging, ist das _____.', '["Ironie","Hyperbel","Metapher","Litotes"]', 'Ironie', '', 1, 3),
  (l_id, 'translation', 'Übersetze: "The novel is rich in metaphors and symbols."', '["Der Roman ist reich an Metaphern und Symbolen.","Der Roman ist reich an Metaphern und Symbolik.","Der Roman ist voller Metaphern und Symbole."]', 'Der Roman ist reich an Metaphern und Symbolen.', '', 1, 4),
  (l_id, 'multiple_choice', 'Welche Gattung umfasst Romane und Erzählungen?', '["Prosa","Lyrik","Drama","Epik"]', 'Prosa', '', 1, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  (l_id, 'multiple_choice', 'Was bedeutet "die Interpretation"?', '["التفسير","السرد","الرمزية","النوع"]', 'التفسير', 1, 1),
  (l_id, 'true_false', 'Ironie meint das Gegenteil des Gesagten.', '["Richtig","Falsch"]', 'Richtig', 1, 2),
  (l_id, 'fill_blank', 'Die _____ der Romantik ist reich an Metaphern.', '["Lyrik","Prosa","Drama","Epik"]', 'Lyrik', 1, 3),
  (l_id, 'multiple_choice', 'Was ist eine Hyperbel?', '["Übertreibung","Untertreibung","Vergleich","Frage"]', 'Übertreibung', 1, 4),
  (l_id, 'true_false', '"Das Motiv" ist die handelnde Person in einem Roman.', '["Richtig","Falsch"]', 'Falsch', 1, 5);

  -- Lesson 6.2: Kunst und Ästhetik
  insert into public.course_lessons (module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published)
  values (m_id, 'Kunst und Ästhetik', 'Wortschatz für Kunstbetrachtung, Bildbeschreibung und ästhetische Urteile', 'Literatur und Kunst', 'vocabulary', '["Learn key vocabulary","Practice grammar structures","Build comprehension skills","Apply in context","Review and reinforce"]', 50, 2, true)
  returning id into l_id;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, order_index) values
  (l_id, 'die Ästhetik', 'علم الجمال', 'aesthetics', 'die', 'die Ästhetiken', 'noun', 'Die Ästhetik des Werkes ist vom Barock beeinflusst.', 'The aesthetics of the work are influenced by the Baroque.', 1),
  (l_id, 'die Komposition', 'التكوين/التركيب', 'composition', 'die', 'die Kompositionen', 'noun', 'Die Komposition des Gemäldes ist ausgewogen und harmonisch.', 'The composition of the painting is balanced and harmonious.', 2),
  (l_id, 'die Abstraktion', 'التجريد', 'abstraction', 'die', 'die Abstraktionen', 'noun', 'Die Abstraktion in der modernen Kunst fordert den Betrachter heraus.', 'Abstraction in modern art challenges the viewer.', 3),
  (l_id, 'die Kontroverse', 'الجدل', 'controversy', 'die', 'die Kontroversen', 'noun', 'Das Kunstwerk löste eine heftige Kontroverse aus.', 'The artwork triggered a heated controversy.', 4),
  (l_id, 'die Rezeption', 'التلقي/الاستقبال', 'reception', 'die', 'die Rezeptionen', 'noun', 'Die Rezeption des Werkes war zunächst negativ.', 'The reception of the work was initially negative.', 5),
  (l_id, 'die Subjektivität', 'الذاتية', 'subjectivity', 'die', 'die Subjektivitäten', 'noun', 'Die Subjektivität der Kunstwahrnehmung macht jede Interpretation einzigartig.', 'The subjectivity of art perception makes each interpretation unique.', 6);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  (l_id, 'Sprachregister: formell und informell', 'Sprachregister bezeichnen die Ebene des Sprachgebrauchs, die je nach Situation, Adressat und Medium variiert. In der Literatur- und Kunstkritik wird überwiegend ein formelles Register verwendet.', '[{"rule":"Formelles Register: Nominalstil, Passiv, Konjunktiv I, komplexe Syntax.","note":"Die Rezeption des Werkes war von Kontroversen geprägt."},{"rule":"Informelles Register: kurze Sätze, Aktiv, einfache Konnektoren, Alltagswortschatz.","note":"Das Bild gefällt mir einfach gut."},{"rule":"Literaturkritik: formell, fachsprachlich, mit Stilmitteln.","note":"Der Autor bedient sich einer vielschichtigen Symbolik."},{"rule":"Registerwechsel als Stilmittel: bewusster Bruch erzeugt Aufmerksamkeit.","note":"Wechsel von formell zu informell kann Ironie signalisieren."}]', '[{"german":"Die Komposition des Gemäldes zeugt von einer hohen künstlerischen Meisterschaft.","arabic":"تكوين اللوحة يدل على إتقان فني عالٍ.","english":"The composition of the painting shows a high artistic mastery."},{"german":"Der Künstler bedient sich einer expressiven Farbgebung, um Emotionen hervorzurufen.","arabic":"يستخدم الفنان ألواناً تعبيرية لإثارة المشاعر.","english":"The artist uses expressive coloring to evoke emotions."},{"german":"Das Bild gefällt mir. (informell) vs. Das Kunstwerk findet meine Zustimmung. (formell)","arabic":"اللوحة تعجبني. (غير رسمي) مقابل العمل الفني يحظى بموافقتي. (رسمي)","english":"I like the picture. (informal) vs. The artwork meets with my approval. (formal)"},{"german":"Die Abstraktion in der modernen Kunst fordert den Betrachter zur aktiven Auseinandersetzung auf.","arabic":"التجريد في الفن الحديث يدعو المشاهد إلى تفاعل نشط.","english":"Abstraction in modern art calls the viewer to active engagement."}]', '[{"mistake":"Das Bild ist voll krass! (too informal for art critique)","correction":"Das Gemälde hinterlässt einen starken Eindruck.","explanation":"In der Kunstkritik verwendet man formelle Ausdrücke."},{"mistake":"Der Autor hat das Buch geschrieben. (too simple for literary analysis)","correction":"Der Autor verfasste den Roman in einer Phase kreativer Schaffenskraft.","explanation":"In der Literaturanalyse verwendet man differenziertere Formulierungen."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  (l_id, 'multiple_choice', 'Welches Register verwendet die Literaturkritik?', '["formell, fachsprachlich","informell, umgangssprachlich","dialektal","jugendsprachlich"]', 'formell, fachsprachlich', '', 1, 1),
  (l_id, 'fill_gap', 'Der Künstler _____ sich einer expressiven Farbgebung.', '["bedient","benutzt","verwendet","gebraucht"]', 'bedient', '', 1, 2),
  (l_id, 'fill_gap', 'Die Komposition des Gemäldes _____ von Meisterschaft.', '["zeugt","spricht","sagt","erzählt"]', 'zeugt', '', 1, 3),
  (l_id, 'translation', 'Übersetze: (formal) "The artist uses expressive coloring."', '["Der Künstler bedient sich einer expressiven Farbgebung.","Der Künstler benutzt expressive Farben.","Der Künstler nimmt expressive Farben."]', 'Der Künstler bedient sich einer expressiven Farbgebung.', '', 1, 4),
  (l_id, 'multiple_choice', 'Was bedeutet "die Rezeption" im Kunstkontext?', '["التلقي","الإبداع","النقد","التجريد"]', 'التلقي', '', 1, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  (l_id, 'multiple_choice', 'Was bedeutet "die Ästhetik"?', '["علم الجمال","التجريد","الذاتية","التلقي"]', 'علم الجمال', 1, 1),
  (l_id, 'true_false', 'Im formellen Register verwendet man kurze Sätze.', '["Richtig","Falsch"]', 'Falsch', 1, 2),
  (l_id, 'fill_blank', 'Die _____ des Werkes war zunächst negativ.', '["Rezeption","Komposition","Abstraktion","Ästhetik"]', 'Rezeption', 1, 3),
  (l_id, 'multiple_choice', 'Welches Verb ist formeller?', '["verfassen","schreiben","machen","tun"]', 'verfassen', 1, 4),
  (l_id, 'true_false', 'Registerwechsel kann als Stilmittel eingesetzt werden.', '["Richtig","Falsch"]', 'Richtig', 1, 5);

  -- Lesson 6.3: Stilmittel und Sprachregister
  insert into public.course_lessons (module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published)
  values (m_id, 'Stilmittel und Sprachregister', 'Vertiefung: Stilistische Mittel analysieren und Register bewusst einsetzen', 'Literatur und Kunst', 'grammar', '["Learn key vocabulary","Practice grammar structures","Build comprehension skills","Apply in context","Review and reinforce"]', 60, 3, true)
  returning id into l_id;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, order_index) values
  (l_id, 'die Allegorie', 'الرمزية/الإشارة', 'allegory', 'die', 'die Allegorien', 'noun', 'Die Allegorie des Sisyphos steht für sinnlose Mühe.', 'The allegory of Sisyphus stands for futile effort.', 1),
  (l_id, 'die Parodie', 'المحاكاة الساخرة', 'parody', 'die', 'die Parodien', 'noun', 'Die Parodie nimmt die Stilmittel des Originals aufs Korn.', 'The parody makes fun of the stylistic devices of the original.', 2),
  (l_id, 'die Intertextualität', 'التناص', 'intertextuality', 'die', 'die Intertextualitäten', 'noun', 'Die Intertextualität des Romans verweist auf klassische Werke.', 'The intertextuality of the novel refers to classical works.', 3),
  (l_id, 'der Pathos', 'الشعور الجارف/الشفقة', 'pathos', 'der', NULL, 'noun', 'Der Pathos der Rede wirkt auf das Publikum überwältigend.', 'The pathos of the speech has an overwhelming effect on the audience.', 4),
  (l_id, 'das Oxymoron', 'المتناقضات', 'oxymoron', 'das', 'die Oxymora', 'noun', '"Bittersüß" ist ein bekanntes Oxymoron.', '"Bittersweet" is a well-known oxymoron.', 5);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  (l_id, 'Textkohärenz durch Proformen und Wiederaufnahme', 'Proformen und lexikalische Wiederaufnahme sind zentrale Mittel der Textkohärenz. In literarischen Texten werden sie bewusst eingesetzt, um Spannung aufzubauen oder thematische Bezüge herzustellen.', '[{"rule":"Pronominale Wiederaufnahme: Personalpronomen, Demonstrativpronomen.","note":"Der Protagonist zögerte. Er wusste nicht, ob er gehen sollte."},{"rule":"Lexikalische Wiederaufnahme: Synonyme, Oberbegriffe, Teilbegriffe.","note":"Der Dichter -> Der Lyriker -> Der Künstler -> Er"},{"rule":"Pro-Adverbien: damit, davon, darauf, hierüber im Textzusammenhang.","note":"Der Roman handelt von der Liebe. Darüber hinaus thematisiert er den Tod."},{"rule":"Wiederaufnahme durch Nominalisierung: Verben werden aufgegriffen.","note":"Sie beschloss zu gehen. Dieser Entschluss fiel ihr nicht leicht."}]', '[{"german":"Der Protagonist zögerte einen Moment. Dann fasste er einen Entschluss. Dieser sollte sein Leben verändern.","arabic":"تردد بطل الرواية لحظة. ثم اتخذ قراراً. كان من شأنه أن يغير حياته.","english":"The protagonist hesitated for a moment. Then he made a decision. This was to change his life."},{"german":"Der Roman thematisiert die Vergänglichkeit. Dieses Motiv zieht sich durch das gesamte Werk.","arabic":"تتناول الرواية الفناء. هذا الموضوع يتكرر في العمل بأكمله.","english":"The novel addresses transience. This motif runs through the entire work."},{"german":"Der Dichter schrieb über die Liebe. Darüber hinaus thematisierte er den Tod.","arabic":"كتب الشاعر عن الحب. بالإضافة إلى ذلك، تناول الموت.","english":"The poet wrote about love. In addition, he thematized death."},{"german":"Sie beschloss, die Stadt zu verlassen. Dieser Entschluss veränderte alles.","arabic":"قررت مغادرة المدينة. هذا القرار غير كل شيء.","english":"She decided to leave the city. This decision changed everything."}]', '[{"mistake":"Der Protagonist zögerte. Der Protagonist wusste nicht, was der Protagonist tun sollte.","correction":"Der Protagonist zögerte. Er wusste nicht, was er tun sollte.","explanation":"Wiederholung von \"der Protagonist\" ist stilistisch schlecht. Pronomen verwenden."},{"mistake":"Der Roman handelt von der Liebe. Der Roman thematisiert auch den Tod.","correction":"Der Roman handelt von der Liebe. Darüber hinaus thematisiert er den Tod.","explanation":"Pro-Adverb \"darüber hinaus\" und Pronomen \"er\" vermeiden die Wiederholung."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  (l_id, 'multiple_choice', 'Was ist pronominale Wiederaufnahme?', '["Verwendung von Pronomen zur Vermeidung von Wiederholungen","Wiederholung desselben Wortes","Verwendung von Synonymen","Verwendung von Oberbegriffen"]', 'Verwendung von Pronomen zur Vermeidung von Wiederholungen', '', 1, 1),
  (l_id, 'fill_gap', 'Der Protagonist zögerte. _____ wusste nicht, ob er gehen sollte.', '["Er","Sie","Es","Man"]', 'Er', '', 1, 2),
  (l_id, 'fill_gap', 'Der Roman thematisiert die Vergänglichkeit. _____ Motiv zieht sich durch das ganze Werk.', '["Dieses","Sein","Ihr","Welches"]', 'Dieses', '', 1, 3),
  (l_id, 'translation', 'Übersetze: "The poet wrote about love. In addition, he thematized death."', '["Der Dichter schrieb über die Liebe. Darüber hinaus thematisierte er den Tod.","Der Dichter schrieb über Liebe und Tod.","Der Dichter schrieb über die Liebe und auch den Tod."]', 'Der Dichter schrieb über die Liebe. Darüber hinaus thematisierte er den Tod.', '', 1, 4),
  (l_id, 'multiple_choice', 'Was ist ein Oxymoron?', '["Verbindung von Gegensätzen","Übertreibung","Untertreibung","Vergleich"]', 'Verbindung von Gegensätzen', '', 1, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  (l_id, 'multiple_choice', 'Was bedeutet "die Allegorie"?', '["الرمزية","المحاكاة الساخرة","التناص","المتناقضات"]', 'الرمزية', 1, 1),
  (l_id, 'true_false', 'Lexikalische Wiederaufnahme verwendet Pronomen.', '["Richtig","Falsch"]', 'Falsch', 1, 2),
  (l_id, 'fill_blank', 'Der Roman handelt von der Liebe. _____ hinaus thematisiert er den Tod.', '["Darüber","Darunter","Darin","Dadurch"]', 'Darüber', 1, 3),
  (l_id, 'multiple_choice', 'Was bedeutet "Intertextualität"?', '["التناص","النص الداخلي","النص الموازي","النص الأصلي"]', 'التناص', 1, 4),
  (l_id, 'true_false', 'Personifikation ist ein stilistisches Mittel.', '["Richtig","Falsch"]', 'Richtig', 1, 5);

  -- Lesson 6.4: Literarische Analyse schreiben
  insert into public.course_lessons (module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published)
  values (m_id, 'Literarische Analyse schreiben', 'Eine literarische Analyse auf Deutsch verfassen - Interpretation und Argumentation', 'Literatur und Kunst', 'writing', '["Learn key vocabulary","Practice grammar structures","Build comprehension skills","Apply in context","Review and reinforce"]', 60, 4, true)
  returning id into l_id;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, order_index) values
  (l_id, 'die Deutungshypothese', 'فرضية التفسير', 'interpretive hypothesis', 'die', 'die Deutungshypothesen', 'noun', 'Die Deutungshypothese bildet den Ausgangspunkt der Analyse.', 'The interpretive hypothesis forms the starting point of the analysis.', 1),
  (l_id, 'die Textstelle', 'المقطع النصي', 'text passage', 'die', 'die Textstellen', 'noun', 'Die relevante Textstelle befindet sich im dritten Kapitel.', 'The relevant text passage is in the third chapter.', 2),
  (l_id, 'die Werkanalyse', 'تحليل العمل', 'work analysis', 'die', 'die Werkanalysen', 'noun', 'Die Werkanalyse umfasst Form, Inhalt und Kontext.', 'The work analysis includes form, content and context.', 3),
  (l_id, 'der Vergleichsaspekt', 'جانب المقارنة', 'comparison aspect', 'der', 'die Vergleichsaspekte', 'noun', 'Ein wichtiger Vergleichsaspekt ist die Entwicklung der Hauptfigur.', 'An important comparison aspect is the development of the main character.', 4),
  (l_id, 'die Schlüsselszene', 'المشهد الرئيسي', 'key scene', 'die', 'die Schlüsselszenen', 'noun', 'Die Schlüsselszene markiert den Wendepunkt der Handlung.', 'The key scene marks the turning point of the plot.', 5);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  (l_id, 'Tempusgebrauch in der literarischen Analyse', 'In literarischen Analysen wird das Präsens als Grundtempus verwendet (analytisches Präsens). Vergangene Handlungen im Werk werden im Präsens beschrieben, historische Kontexte im Perfekt oder Präteritum.', '[{"rule":"Analytisches Präsens: Handlungen der Erzählung werden im Präsens beschrieben.","note":"Der Protagonist verlässt die Stadt und beginnt ein neues Leben."},{"rule":"Vorzeitigkeit innerhalb der Erzählung: Perfekt oder Plusquamperfekt.","note":"Er erinnert sich, was er zuvor erlebt hat."},{"rule":"Historischer Kontext des Werkes: Präteritum.","note":"Goethe schrieb den Faust über mehrere Jahrzehnte."},{"rule":"Zitierte Stellen aus dem Werk: Präsens (wie im Werk selbst).","note":"Im Gedicht heißt es: \"Die Welt wird Traum, der Traum wird Welt.\""}]', '[{"german":"Der Protagonist verlässt die Stadt, weil er die Vergangenheit hinter sich lassen will.","arabic":"يغادر بطل الرواية المدينة لأنه يريد ترك الماضي وراءه.","english":"The protagonist leaves the city because he wants to leave the past behind."},{"german":"Goethe veröffentlichte den Faust 1808. Das Werk gilt als Höhepunkt der deutschen Klassik.","arabic":"نشر غوته فاوست عام 1808. يعتبر العمل ذروة الكلاسيكية الألمانية.","english":"Goethe published Faust in 1808. The work is considered the pinnacle of German Classicism."},{"german":"Die Hauptfigur erinnert sich an das, was sie in ihrer Kindheit erlebt hat.","arabic":"تتذكر الشخصية الرئيسية ما عاشته في طفولتها.","english":"The main character remembers what she experienced in her childhood."}]', '[{"mistake":"Der Protagonist verließ die Stadt (Präteritum statt Präsens).","correction":"Der Protagonist verlässt die Stadt.","explanation":"In der literarischen Analyse verwendet man das analytische Präsens."},{"mistake":"Goethe hat den Faust geschrieben. (Perfekt statt Präteritum für historischen Kontext)","correction":"Goethe schrieb den Faust 1808.","explanation":"Für historische Fakten verwendet man Präteritum, nicht Perfekt."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  (l_id, 'multiple_choice', 'Welches Tempus verwendet man für Handlungen der Erzählung?', '["analytisches Präsens","Präteritum","Perfekt","Futur"]', 'analytisches Präsens', '', 1, 1),
  (l_id, 'fill_gap', 'Der Protagonist _____ die Stadt. (verlassen - analytisches Präsens)', '["verlässt","verließ","hat verlassen","werde verlassen"]', 'verlässt', '', 1, 2),
  (l_id, 'fill_gap', 'Goethe _____ den Faust 1808. (historischer Kontext)', '["veröffentlichte","veröffentlicht","hat veröffentlicht","wird veröffentlichen"]', 'veröffentlichte', '', 1, 3),
  (l_id, 'translation', 'Übersetze: "Goethe published Faust in 1808. The work is considered the pinnacle of German Classicism."', '["Goethe veröffentlichte den Faust 1808. Das Werk gilt als Höhepunkt der deutschen Klassik.","Goethe hat den Faust 1808 veröffentlicht. Das Werk galt als Höhepunkt.","Goethe veröffentlicht den Faust 1808. Das Werk galt als Höhepunkt."]', 'Goethe veröffentlichte den Faust 1808. Das Werk gilt als Höhepunkt der deutschen Klassik.', '', 1, 4),
  (l_id, 'multiple_choice', 'Was ist eine Deutungshypothese?', '["فرضية التفسير","تحليل العمل","المقطع النصي","المشهد الرئيسي"]', 'فرضية التفسير', '', 1, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  (l_id, 'multiple_choice', 'Was bedeutet "die Textstelle"?', '["المقطع النصي","المشهد الرئيسي","تحليل العمل","النوع الأدبي"]', 'المقطع النصي', 1, 1),
  (l_id, 'true_false', 'In literarischen Analysen verwendet man Präteritum für Handlungen.', '["Richtig","Falsch"]', 'Falsch', 1, 2),
  (l_id, 'fill_blank', 'Die _____ markiert den Wendepunkt der Handlung.', '["Schlüsselszene","Textstelle","Deutungshypothese","Werkanalyse"]', 'Schlüsselszene', 1, 3),
  (l_id, 'multiple_choice', 'Welches Tempus für historischen Kontext eines Werkes?', '["Präteritum","Präsens","Perfekt","Plusquamperfekt"]', 'Präteritum', 1, 4),
  (l_id, 'true_false', 'Eine Werkanalyse umfasst Form, Inhalt und Kontext.', '["Richtig","Falsch"]', 'Richtig', 1, 5);

  -- Lesson 6.5: Wiederholung: Literatur und Kunst
  insert into public.course_lessons (module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published)
  values (m_id, 'Wiederholung: Literatur und Kunst', 'Alle Themen aus Modul 6 wiederholen und festigen', 'Literatur und Kunst', 'review', '["Learn key vocabulary","Practice grammar structures","Build comprehension skills","Apply in context","Review and reinforce"]', 50, 5, true)
  returning id into l_id;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, order_index) values
  (l_id, 'die Poetik', 'الشعرية/علم الشعر', 'poetics', 'die', 'die Poetiken', 'noun', 'Die Poetik des Autors ist geprägt von sprachlicher Experimentierfreude.', 'The author poetics is characterized by linguistic experimentation.', 1),
  (l_id, 'die Künstlerische Freiheit', 'الحرية الفنية', 'artistic freedom', 'die', 'die künstlerischen Freiheiten', 'noun', 'Der Künstler nahm sich große künstlerische Freiheit.', 'The artist took great artistic freedom.', 2),
  (l_id, 'die Rezeptionsästhetik', 'جماليات التلقي', 'reception aesthetics', 'die', NULL, 'noun', 'Die Rezeptionsästhetik untersucht die Wirkung von Kunst auf den Betrachter.', 'Reception aesthetics examines the effect of art on the viewer.', 3),
  (l_id, 'der Kunstbegriff', 'مفهوم الفن', 'concept of art', 'der', 'die Kunstbegriffe', 'noun', 'Der Kunstbegriff hat sich im Laufe der Geschichte gewandelt.', 'The concept of art has changed over the course of history.', 4),
  (l_id, 'die Stilrichtung', 'الاتجاه الأسلوبي', 'style movement', 'die', 'die Stilrichtungen', 'noun', 'Der Impressionismus ist eine wichtige Stilrichtung der Kunstgeschichte.', 'Impressionism is an important style movement in art history.', 5);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  (l_id, 'Wiederholung: Stilmittel, Sprachregister, Textkohärenz und Tempusgebrauch', 'Wiederholung der Grammatikthemen aus Modul 6.', '[{"rule":"Stilmittel: Metapher (Bild), Ironie (Gegenteil), Hyperbel (Übertreibung).","note":"Ein Meer von Gefühlen (Metapher)."},{"rule":"Sprachregister: formell (Literaturkritik) vs. informell (Alltag).","note":"sich einer Sache bedienen (formell) vs. etwas benutzen (neutral)"},{"rule":"Textkohärenz: Pronomen, Synonyme, Pro-Adverbien.","note":"Der Protagonist -> Er / Der Roman -> Dieses Werk"},{"rule":"Tempus: analytisches Präsens für Werkhandlung, Präteritum für historischen Kontext.","note":"Der Held verlässt die Stadt. Goethe schrieb..."}]', '[{"german":"Der Autor bedient sich einer metaphorischen Sprache. Diese ist reich an Bildern und Symbolen.","arabic":"يستخدم المؤلف لغة استعارية. هذه غنية بالصور والرموز.","english":"The author uses metaphorical language. This is rich in images and symbols."},{"german":"Die Schlüsselszene des Romans markiert den Wendepunkt. Der Protagonist verlässt die Stadt.","arabic":"المشهد الرئيسي في الرواية يمثل نقطة التحول. يغادر بطل الرواية المدينة.","english":"The key scene of the novel marks the turning point. The protagonist leaves the city."}]', '[{"mistake":"Der Autor benutzt eine metaphorische Sprache. (too informal for analysis)","correction":"Der Autor bedient sich einer metaphorischen Sprache.","explanation":"In der Literaturanalyse formellere Ausdrucksweise verwenden."},{"mistake":"Der Protagonist hat die Stadt verlassen. (Perfekt statt analytisches Präsens)","correction":"Der Protagonist verlässt die Stadt.","explanation":"Analytisches Präsens für Handlungen im Werk."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  (l_id, 'multiple_choice', '"Ein Meer von Tränen" ist eine _____.', '["Metapher","Hyperbel","Ironie","Personifikation"]', 'Metapher', '', 1, 1),
  (l_id, 'fill_gap', 'Der Autor _____ sich einer komplexen Symbolik.', '["bedient","benutzt","verwendet","gebraucht"]', 'bedient', '', 1, 2),
  (l_id, 'fill_gap', 'Der Roman handelt von der Vergänglichkeit. _____ Motiv zieht sich durch das Werk.', '["Dieses","Sein","Ihr","Welches"]', 'Dieses', '', 1, 3),
  (l_id, 'translation', 'Übersetze: "The author uses metaphorical language. This is rich in images."', '["Der Autor bedient sich einer metaphorischen Sprache. Diese ist reich an Bildern.","Der Autor benutzt metaphorische Sprache. Diese ist reich an Bildern.","Der Autor nimmt metaphorische Sprache. Diese ist reich an Bildern."]', 'Der Autor bedient sich einer metaphorischen Sprache. Diese ist reich an Bildern.', '', 1, 4),
  (l_id, 'multiple_choice', 'Welches Stilmittel bezeichnet die Verbindung von Gegensätzen?', '["Oxymoron","Metapher","Hyperbel","Ironie"]', 'Oxymoron', '', 1, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  (l_id, 'multiple_choice', 'Was bedeutet "die Poetik"?', '["الشعرية","الجمالية","البلاغة","النقد"]', 'الشعرية', 1, 1),
  (l_id, 'true_false', 'Analytisches Präsens wird für Handlungen im literarischen Werk verwendet.', '["Richtig","Falsch"]', 'Richtig', 1, 2),
  (l_id, 'fill_blank', 'Der Impressionismus ist eine wichtige _____ der Kunstgeschichte.', '["Stilrichtung","Stilart","Stilschule","Stilform"]', 'Stilrichtung', 1, 3),
  (l_id, 'multiple_choice', 'Was ist das formelle Verb für "benutzen"?', '["sich bedienen","nehmen","tun","machen"]', 'sich bedienen', 1, 4),
  (l_id, 'true_false', 'Die Rezeption eines Kunstwerks ist immer positiv.', '["Richtig","Falsch"]', 'Falsch', 1, 5);

  -- Lesson 6.6: Test: Literatur und Kunst
  insert into public.course_lessons (module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published)
  values (m_id, 'Test: Literatur und Kunst', 'Abschlusstest für Modul 6', 'Literatur und Kunst', 'test', '["Learn key vocabulary","Practice grammar structures","Build comprehension skills","Apply in context","Review and reinforce"]', 45, 6, true)
  returning id into l_id;

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  (l_id, 'multiple_choice', '"Ein Meer von Sorgen" ist eine _____.', '["Metapher","Hyperbel","Ironie","Litotes"]', 'Metapher', '', 1, 1),
  (l_id, 'fill_gap', 'Der Protagonist _____ die Stadt. (analytisches Präsens)', '["verlässt","verließ","hat verlassen","wird verlassen"]', 'verlässt', '', 1, 2),
  (l_id, 'translation', 'Übersetze: "The author uses metaphorical language."', '["Der Autor bedient sich einer metaphorischen Sprache.","Der Autor benutzt metaphorische Sprache.","Der Autor macht metaphorische Sprache."]', 'Der Autor bedient sich einer metaphorischen Sprache.', '', 1, 3),
  (l_id, 'multiple_choice', 'Welches Tempus für historischen Kontext?', '["Präteritum","Präsens","Perfekt","Futur"]', 'Präteritum', '', 1, 4),
  (l_id, 'fill_gap', 'Die _____ des Romans markiert den Wendepunkt.', '["Schlüsselszene","Deutungshypothese","Werkanalyse","Textstelle"]', 'Schlüsselszene', '', 1, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  (l_id, 'multiple_choice', 'Was bedeutet "die Interpretation"?', '["التفسير","السرد","الرمزية","النقد"]', 'التفسير', 1, 1),
  (l_id, 'true_false', 'Ironie meint das Gegenteil des Gesagten.', '["Richtig","Falsch"]', 'Richtig', 1, 2),
  (l_id, 'fill_blank', 'Der Roman ist reich an Metaphern und _____.', '["Symbolen","Symbolik","Symbolismus","Symbolheiten"]', 'Symbolen', 1, 3),
  (l_id, 'multiple_choice', 'Was ist ein Beispiel für ein Oxymoron?', '["bittersüß","groß","klein","schnell"]', 'bittersüß', 1, 4),
  (l_id, 'true_false', 'In literarischen Analysen verwendet man Perfekt für Haupthandlungen.', '["Richtig","Falsch"]', 'Falsch', 1, 5),
  (l_id, 'multiple_choice', 'Welches Verb ist formeller?', '["verfassen","schreiben","tippen","notieren"]', 'verfassen', 1, 6),
  (l_id, 'fill_blank', 'Der Künstler _____ sich einer expressiven Farbgebung.', '["bedient","benutzt","nimmt","tut"]', 'bedient', 1, 7);

end $$;
