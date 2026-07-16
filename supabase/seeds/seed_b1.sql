-- ============================================================================
-- SEED: B1 (Intermediate) - 6 modules
-- Generated curriculum following CEFR standards
-- ============================================================================

do $$
declare
  m_id uuid;
  l_id uuid;
begin

  -- Module 1: Alltag und Gesellschaft
  insert into public.course_modules (level_id, title, description, objectives, order_index, estimated_hours, is_published)
  values ('B1', 'Alltag und Gesellschaft', 'über den Alltag, Termine und gesellschaftliches Leben sprechen. Das Präteritum, Nebensätze und Vergleichsformen sicher anwenden.', '["Das Präteritum von sein, haben, wissen und Modalverben sicher anwenden","Nebensätze mit weil, da und obwohl korrekt bilden","Den Komparativ und Superlativ auch bei unregelmässigen Formen verwenden","über Alltagsroutinen und gesellschaftliche Termine sprechen","Einladungen und Verabredungen formulieren und verstehen"]', 1, 5.0, true)
  returning id into m_id;

  -- Lesson 1.1: Tagesablauf und Alltag
  insert into public.course_lessons (module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published)
  values (m_id, 'Tagesablauf und Alltag', 'Wichtige Vokabeln für den täglichen Ablauf und Alltagssituationen lernen', 'Alltag und Gesellschaft', 'vocabulary', '["Learn key vocabulary","Practice grammar structures","Build comprehension skills","Apply in context","Review and reinforce"]', 45, 1, true)
  returning id into l_id;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, order_index) values
  (l_id, 'der Tagesablauf', 'alrruytin alyawmi', 'daily routine', 'der', 'die Tagesabläufe', 'noun', 'Mein Tagesablauf beginnt um sechs Uhr.', 'My daily routine starts at six o''clock.', 1),
  (l_id, 'der Alltag', 'alhaya alyawmiya', 'everyday life', 'der', NULL, 'noun', 'Der Alltag ist manchmal stressig.', 'Everyday life is sometimes stressful.', 2),
  (l_id, 'der Termin', 'maw`id', 'appointment', 'der', 'die Termine', 'noun', 'Ich habe morgen einen Termin beim Arzt.', 'I have an appointment at the doctor''s tomorrow.', 3),
  (l_id, 'die Verabredung', 'maw`id/liqa''', 'meeting/date', 'die', 'die Verabredungen', 'noun', 'Wir haben eine Verabredung zum Kaffee.', 'We have a date for coffee.', 4),
  (l_id, 'der Haushalt', 'al-a`mal al-manziliya', 'household', 'der', 'die Haushalte', 'noun', 'Ich mache am Wochenende den Haushalt.', 'I do the housework on the weekend.', 5),
  (l_id, 'die Aufgabe', 'muhima/wajib', 'task', 'die', 'die Aufgaben', 'noun', 'Diese Aufgabe muss ich heute erledigen.', 'I have to complete this task today.', 6),
  (l_id, 'die Gewohnheit', '`ada', 'habit', 'die', 'die Gewohnheiten', 'noun', 'Das ist eine schlechte Gewohnheit.', 'That is a bad habit.', 7),
  (l_id, 'die Freizeit', 'waqt al-faragh', 'free time', 'die', NULL, 'noun', 'In meiner Freizeit lese ich gerne.', 'In my free time I like to read.', 8);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  (l_id, 'Präteritum - sein, haben, wissen', 'Das Präteritum ist die einfache Vergangenheitsform im Deutschen. Im B1-Niveau ist es wichtig, das Präteritum besonders für "sein", "haben", "wissen" und die Modalverben zu beherrschen. Im gesprochenen Deutsch verwendet man oft das Perfekt, aber in der Schriftsprache und bei diesen Verben ist das Präteritum üblich.', '[{"rule":"\"sein\" im Präteritum: ich war, du warst, er/sie/es war, wir waren, ihr wart, sie/Sie waren.","note":"Sein ist unregelmässig - die Formen müssen auswendig gelernt werden."},{"rule":"\"haben\" im Präteritum: ich hatte, du hattest, er/sie/es hatte, wir hatten, ihr hattet, sie/Sie hatten.","note":"Regelmässig gebildet: Stamm \"hat-\" + Endungen."},{"rule":"\"wissen\" im Präteritum: ich wusste, du wusstest, er/sie/es wusste, wir wussten, ihr wusstet, sie/Sie wussten.","note":"Wissen ist unregelmässig: wissen - wusste - gewusst."},{"rule":"Das Präteritum wird in der Schriftsprache (Berichte, Nachrichten, Literatur) verwendet.","note":"Im Gesprochenen verwendet man meist das Perfekt, ausser bei sein, haben und Modalverben."},{"rule":"Die Endungen im Präteritum sind bei regelmässigen Verben: -te, -test, -te, -ten, -tet, -ten.","note":"z.B. machen - ich machte, du machtest, er machte ..."}]', '[{"german":"Ich war gestern im Buro.","arabic":"kuntu fi almaktab ams.","english":"I was at the office yesterday."},{"german":"Er hatte einen wichtigen Termin.","arabic":"kana ladayhi maw`id muhim.","english":"He had an important appointment."},{"german":"Wir wussten die Antwort nicht.","arabic":"lam na`rif al-ijaba.","english":"We did not know the answer."},{"german":"Sie war gestern sehr mude.","arabic":"kanat mut`iba jiddan ams.","english":"She was very tired yesterday."},{"german":"Ich hatte viel Arbeit im Haushalt.","arabic":"kana ladayya alkathir min al-a`mal al-manziliya.","english":"I had a lot of housework."}]', '[{"mistake":"Ich war gestern im Kino. (falsch: nichts, ist korrekt)","correction":"Ich war gestern im Kino. (korrekt)","explanation":"Achtung: Lerner denken oft, Präteritum sei falsch im Gesprochenen - aber bei sein, haben, Modalverben ist es normal."},{"mistake":"Ich hatte kalt.","correction":"Mir war kalt.","explanation":"\"Kalt sein\" verwendet den Dativ: \"Mir war kalt\", nicht \"Ich hatte kalt\"."},{"mistake":"Er wusste die Wahrheit nicht. (falsch geschrieben \"wuste\")","correction":"Er wusste die Wahrheit nicht.","explanation":"Rechtschreibung: \"wusste\" mit Doppel-s, nicht \"wuste\"."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  (l_id, 'fill_gap', 'Gestern _____ ich sehr beschaftigt. (sein - Präteritum)', '["war","hatte","wusste","bin"]', 'war', '"Ich war" ist die korrekte Präteritum-Form von "sein".', 1, 1),
  (l_id, 'fill_gap', 'Er _____ keine Zeit fur den Haushalt. (haben - Präteritum)', '["hatte","habte","hat","hatte"]', 'hatte', '"Er hatte" ist das Präteritum von "haben".', 1, 2),
  (l_id, 'translation', 'Ubersetze: "I knew the answer."', '["Ich wusste die Antwort.","Ich weiss die Antwort.","Ich wusste die Frage.","Ich kannte die Antwort."]', 'Ich wusste die Antwort.', '"Ich wusste" ist Präteritum von "wissen".', 1, 3),
  (l_id, 'multiple_choice', 'Was ist die richtige Form von "sein" fur "ihr"?', '["wart","warst","waren","war"]', 'wart', 'Ihr wart - die 2. Person Plural von "sein" im Präteritum.', 1, 4),
  (l_id, 'fill_gap', 'Wir _____ gestern keine Zeit. (haben - Präteritum)', '["hatten","hatten","habten","hat"]', 'hatten', '"Wir hatten" ist Präteritum von "haben".', 1, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  (l_id, 'multiple_choice', 'Was bedeutet "der Alltag"?', '["alhaya alyawmiya","al-`utla","alrruytin","al`amal"]', 'alhaya alyawmiya', 1, 1),
  (l_id, 'fill_blank', 'Präteritum von "sein" fur "ich": ich _____.', '["war","warst","waren","wart"]', 'war', 1, 2),
  (l_id, 'true_false', '"Ich hatte" ist Präteritum von "haben".', '["Richtig","Falsch"]', 'Richtig', 1, 3),
  (l_id, 'multiple_choice', 'Was ist "die Verabredung" auf Arabisch?', '["maw`id/liqa''","`amal","manzil","muhima"]', 'maw`id/liqa''', 1, 4),
  (l_id, 'fill_blank', 'Er _____ nicht, wo der Termin war. (wissen - Präteritum)', '["wusste","wusste","weisste","wusste"]', 'wusste', 1, 5),
  (l_id, 'true_false', 'Das Präteritum wird im Deutschen hauptsachlich in der gesprochenen Sprache verwendet.', '["Richtig","Falsch"]', 'Falsch', 1, 6);

  -- Lesson 1.2: Gesellschaft und Zusammenleben
  insert into public.course_lessons (module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published)
  values (m_id, 'Gesellschaft und Zusammenleben', 'Vokabular zu Gesellschaft, Nachbarschaft und sozialem Miteinander lernen', 'Alltag und Gesellschaft', 'vocabulary', '["Learn key vocabulary","Practice grammar structures","Build comprehension skills","Apply in context","Review and reinforce"]', 45, 2, true)
  returning id into l_id;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, order_index) values
  (l_id, 'die Gesellschaft', 'almujtama`', 'society', 'die', 'die Gesellschaften', 'noun', 'Die Gesellschaft verandert sich standig.', 'Society is constantly changing.', 1),
  (l_id, 'der Nachbar', 'aljar', 'neighbor', 'der', 'die Nachbarn', 'noun', 'Mein Nachbar hilft mir oft beim Einkaufen.', 'My neighbor often helps me with shopping.', 2),
  (l_id, 'die Nachbarschaft', 'aljiwar/alhay', 'neighborhood', 'die', 'die Nachbarschaften', 'noun', 'In unserer Nachbarschaft gibt es ein Fest.', 'There is a festival in our neighborhood.', 3),
  (l_id, 'der Verein', 'alnadi/aljami`a', 'club/association', 'der', 'die Vereine', 'noun', 'Er ist Mitglied in einem Sportverein.', 'He is a member of a sports club.', 4),
  (l_id, 'die Veranstaltung', 'alfi`aliya/almunasaba', 'event', 'die', 'die Veranstaltungen', 'noun', 'Die Veranstaltung beginnt um 19 Uhr.', 'The event starts at 7 pm.', 5),
  (l_id, 'das Zusammenleben', 'alta`ayush', 'cöxistence', 'das', NULL, 'noun', 'Das Zusammenleben in der Stadt ist manchmal laut.', 'Coexistence in the city is sometimes loud.', 6),
  (l_id, 'die Einladung', 'da`wa', 'invitation', 'die', 'die Einladungen', 'noun', 'Ich habe eine Einladung zur Party bekommen.', 'I received an invitation to the party.', 7),
  (l_id, 'der Respekt', 'alihtiram', 'respect', 'der', NULL, 'noun', 'Respekt ist wichtig fur das Zusammenleben.', 'Respect is important for cöxistence.', 8);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  (l_id, 'Nebensatze mit weil, da und obwohl', 'Nebensatze mit "weil", "da" und "obwohl" sind kausale bzw. konzessive Nebensatze. Das konjugierte Verb steht am Ende des Nebensatzes. "Weil" und "da" bedeuten "li''anna", aber "da" wird eher am Satzanfang verwendet. "Obwohl" bedeutet "`ala al-raghm min".', '[{"rule":"\"weil\" (li''anna) - leitet einen Kausalsatz ein. Das Verb steht am Ende.","note":"Hauptsatz + Nebensatz: Ich bin mude, weil ich viel gearbeitet habe."},{"rule":"\"da\" (bima anna/li''anna) - wie \"weil\", aber oft am Satzanfang fur bekannte Grunde.","note":"Da ich krank war, bin ich zu Hause geblieben."},{"rule":"\"obwohl\" (`ala al-raghm min) - leitet einen konzessiven Nebensatz ein.","note":"Obwohl es regnete, gingen wir spazieren."},{"rule":"Das Verb steht im Nebensatz immer an letzter Position.","note":"weil ich Hunger habe / obwohl er mude ist"},{"rule":"Bei Satzanfang mit Nebensatz steht das Verb im Hauptsatz direkt nach dem Komma.","note":"Weil ich krank bin, bleibe ich zu Hause."}]', '[{"german":"Ich bleibe zu Hause, weil ich krank bin.","arabic":"abqa fi almanzil li''anni mariad.","english":"I stay at home because I am sick."},{"german":"Da wir keine Zeit hatten, haben wir den Termin verschoben.","arabic":"bima annahu lam yakun ladayna waqt, ajjalna almaw`id.","english":"Since we had no time, we postponed the appointment."},{"german":"Obwohl er mude war, ging er zum Sport.","arabic":"`ala al-raghm min annahu kana mut`iban, dhahab ila al-riyada.","english":"Although he was tired, he went to sports."},{"german":"Ich mag meinen Nachbarn, weil er sehr freundlich ist.","arabic":"uhibbu jari li''annahu latif jiddan.","english":"I like my neighbor because he is very friendly."},{"german":"Da sie viel zu tun hatte, kam sie spater zur Veranstaltung.","arabic":"bima annahu kana ladayha alkathir min al-`amal, ja''at muta''akhiran ila al-fi`aliya.","english":"Since she had a lot to do, she came later to the event."}]', '[{"mistake":"Ich bin mude, weil ich habe viel gearbeitet.","correction":"Ich bin mude, weil ich viel gearbeitet habe.","explanation":"Das Verb muss im Nebensatz am Ende stehen: \"habe\" ans Ende."},{"mistake":"Weil ich krank bin, bleibe ich zu Hause. (falsch: \"Weil ich bin krank\")","correction":"Weil ich krank bin, ...","explanation":"Verb am Ende: \"bin\" kommt nach \"krank\"."},{"mistake":"Obwohl es geregnet hat, wir sind spazieren gegangen.","correction":"Obwohl es geregnet hat, sind wir spazieren gegangen.","explanation":"Nach dem Nebensatz folgt das Verb direkt im Hauptsatz: \"sind wir\"."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  (l_id, 'fill_gap', 'Ich bleibe zu Hause, _____ ich krank bin.', '["weil","obwohl","trotzdem","wenn"]', 'weil', '"Weil" leitet einen Kausalsatz ein: "weil ich krank bin".', 1, 1),
  (l_id, 'fill_gap', '_____ es kalt war, ging er ohne Jacke aus.', '["Weil","Da","Obwohl","Denn"]', 'Obwohl', '"Obwohl" druckt einen Gegengrund aus: trotz der Kalte.', 1, 2),
  (l_id, 'translation', 'Ubersetze: "Although she had an appointment, she came."', '["Obwohl sie einen Termin hatte, kam sie.","Weil sie einen Termin hatte, kam sie.","Da sie einen Termin hatte, kam sie.","Obwohl sie einen Termin hat, kam sie."]', 'Obwohl sie einen Termin hatte, kam sie.', '"Obwohl" + Verb am Ende: "hatte" am Satzende im Nebensatz.', 1, 3),
  (l_id, 'multiple_choice', 'Welcher Satz ist korrekt?', '["Ich komme, weil ich habe Zeit.","Ich komme, weil ich Zeit habe.","Ich komme, weil ich Zeit habe?","Ich komme, weil habe ich Zeit."]', 'Ich komme, weil ich Zeit habe.', 'Verb am Ende des Nebensatzes nach "weil": "habe".', 1, 4),
  (l_id, 'fill_gap', 'Da ich _____ (krank sein), konnte ich nicht kommen.', '["krank war","war krank","krank hatte","hatte krank"]', 'krank war', 'Verb am Ende: "da ich krank war".', 1, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  (l_id, 'multiple_choice', 'Was bedeutet "der Verein"?', '["alnadi/aljami`a","alhay","aljar","alfi`aliya"]', 'alnadi/aljami`a', 1, 1),
  (l_id, 'fill_blank', '_____ (Although) es regnete, gingen wir spazieren.', '["Weil","Obwohl","Da","Trotzdem"]', 'Obwohl', 1, 2),
  (l_id, 'true_false', 'In Nebensatzen mit "weil" steht das Verb am Ende.', '["Richtig","Falsch"]', 'Richtig', 1, 3),
  (l_id, 'multiple_choice', 'Was bedeutet "die Nachbarschaft"?', '["aljar","aljiwar","almanzil","alshari`"]', 'aljiwar', 1, 4),
  (l_id, 'fill_blank', 'Er kommt nicht, _____ er keine Zeit hat.', '["obwohl","weil","trotzdem","wenn"]', 'weil', 1, 5),
  (l_id, 'true_false', '"Da" und "weil" haben die gleiche Bedeutung.', '["Richtig","Falsch"]', 'Richtig', 1, 6);

  -- Lesson 1.3: Präteritum der Modalverben und Vergleichsformen
  insert into public.course_lessons (module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published)
  values (m_id, 'Präteritum der Modalverben und Vergleichsformen', 'Das Präteritum der Modalverben sowie der Komparativ und Superlativ unregelmässiger Adjektive', 'Alltag und Gesellschaft', 'grammar', '["Learn key vocabulary","Practice grammar structures","Build comprehension skills","Apply in context","Review and reinforce"]', 60, 3, true)
  returning id into l_id;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, order_index) values
  (l_id, 'konnen - konnte', 'yastati` - kana yastati`', 'can - could', NULL, NULL, 'verb', 'Er konnte gestern nicht kommen.', 'He could not come yesterday.', 1),
  (l_id, 'mussen - musste', 'yajib - kana yajib', 'must - had to', NULL, NULL, 'verb', 'Ich musste fruh aufstehen.', 'I had to get up early.', 2),
  (l_id, 'durfen - durfte', 'yusmah - kana masmuha', 'may - was allowed to', NULL, NULL, 'verb', 'Wir durften ins Kino gehen.', 'We were allowed to go to the cinema.', 3),
  (l_id, 'sollen - sollte', 'yajib/min al-muftarad - kan min al-muftarad', 'should - was supposed to', NULL, NULL, 'verb', 'Ich sollte meine Hausaufgaben machen.', 'I was supposed to do my homework.', 4),
  (l_id, 'wollen - wollte', 'yurid - arad', 'want - wanted', NULL, NULL, 'verb', 'Sie wollte Arztin werden.', 'She wanted to become a doctor.', 5),
  (l_id, 'besser', 'afdal', 'better', NULL, NULL, 'adjective', 'Dieser Termin passt mir besser.', 'This appointment suits me better.', 6),
  (l_id, 'lieber', 'tafdil/akthar hubba', 'rather/prefer', NULL, NULL, 'adjective', 'Ich trinke lieber Tee als Kaffee.', 'I prefer to drink tea rather than coffee.', 7),
  (l_id, 'am meisten', 'al-akthar', 'the most', NULL, NULL, 'adjective', 'Am meisten mag ich meine Freizeit.', 'I like my free time the most.', 8);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  (l_id, 'Präteritum der Modalverben und unregelmässiger Komparativ/Superlativ', 'Modalverben im Präteritum werden haufig verwendet, besonders in der gesprochenen und geschriebenen Sprache. Der Stamm andert sich, und die Endungen sind wie bei regelmässigen Verben (ohne Umlaut im Präteritum). Der Komparativ und Superlativ unregelmässiger Adjektive wie "gut - besser - am besten" und "viel - mehr - am meisten" mussen auswendig gelernt werden.', '[{"rule":"Modalverben im Präteritum: Der Umlaut fallt weg. Stamm + Endung -te, -test, -te, -ten, -tet, -ten.","note":"konnen - konnte, mussen - musste, durfen - durfte, sollen - sollte, wollen - wollte"},{"rule":"Modalverben im Präteritum werden wie regelmässige Verben konjugiert.","note":"ich konnte, du konntest, er konnte, wir konnten, ihr konntet, sie konnten"},{"rule":"Unregelmässiger Komparativ: gut - besser, viel - mehr, gern - lieber, hoch - hoher, nah - naher.","note":"Diese Formen sind unregelmässig und mussen gelernt werden."},{"rule":"Unregelmässiger Superlativ: am besten, am meisten, am liebsten, am hochsten, am nachsten.","note":"Mit \"am\" + -sten (unregelmässiger Stamm)."},{"rule":"Vergleich mit \"als\": Peter ist grosser als Hans. (Komparativ + als)","note":"Nach dem Komparativ kommt \"als\" (nicht \"wie\" fur Vergleiche)."}]', '[{"german":"Ich konnte gestern nicht kommen.","arabic":"lam astati` alhudur ams.","english":"I could not come yesterday."},{"german":"Er musste fruh aufstehen.","arabic":"kana `alayhi al-istiqadh mubakkiran.","english":"He had to get up early."},{"german":"Deutsch ist besser als Franzosisch.","arabic":"al-almaniya afdal min al-faransiya.","english":"German is better than French."},{"german":"Sie ist die beste Schulerin in der Klasse.","arabic":"hiya afdal taliba fi al-fasl.","english":"She is the best student in the class."},{"german":"Ich mag Fussball am liebsten.","arabic":"uhibbu kurat al-qadam akthar min ghayriha.","english":"I like football the most."}]', '[{"mistake":"Ich konnte gestern nicht kommen. (falsch geschrieben \"konnte\" mit Doppel-n)","correction":"Ich konnte gestern nicht kommen.","explanation":"Es heisst \"konnte\" (ein n), nicht \"konnte\" mit Doppel-n."},{"mistake":"Er ist gut als ich.","correction":"Er ist besser als ich.","explanation":"Komparativ \"besser\" + \"als\" (nicht \"gut als\")."},{"mistake":"Ich mag am meisten Fussball.","correction":"Ich mag Fussball am liebsten.","explanation":"\"Am liebsten\" ist der Superlativ von \"gern\", nicht \"am meisten\"."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  (l_id, 'fill_gap', 'Er _____ gestern nicht kommen. (konnen - Präteritum)', '["konnte","konnte","konnte","kannte"]', 'konnte', '"Konnte" ist Präteritum von "konnen" (ohne Umlaut).', 1, 1),
  (l_id, 'fill_gap', 'Wir _____ fruh aufstehen. (mussen - Präteritum)', '["mussten","mussten","mussteten","mussten"]', 'mussten', '"Mussten" ist das Präteritum von "mussen".', 1, 2),
  (l_id, 'multiple_choice', 'Was ist der Komparativ von "gut"?', '["guter","besser","mehr gut","die beste"]', 'besser', '"Gut" hat den unregelmässigen Komparativ "besser".', 1, 3),
  (l_id, 'translation', 'Ubersetze: "She wanted to learn German."', '["Sie wollte Deutsch lernen.","Sie will Deutsch lernen.","Sie mochte Deutsch lernen.","Sie sollte Deutsch lernen."]', 'Sie wollte Deutsch lernen.', '"Wollte" ist Präteritum von "wollen".', 1, 4),
  (l_id, 'fill_gap', 'Von allen Sportarten mag ich Schwimmen _____.', '["am besten","am meisten","besser","am liebsten"]', 'am liebsten', '"Am liebsten" = "most of all" bei Vorlieben (gern - lieber - am liebsten).', 1, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  (l_id, 'multiple_choice', 'Was ist die Präteritum-Form von "durfen" fur "ich"?', '["ich durfte","ich durfte","ich durftete","ich darf"]', 'ich durfte', 1, 1),
  (l_id, 'fill_blank', 'Präteritum von "wollen" fur "sie" (plural): sie _____.', '["wollten","wolltet","wollte","wollen"]', 'wollten', 1, 2),
  (l_id, 'true_false', 'Der Komparativ von "viel" ist "vieler".', '["Richtig","Falsch"]', 'Falsch', 1, 3),
  (l_id, 'multiple_choice', 'Was ist der Superlativ von "gern"?', '["am besten","am liebsten","am meisten","besser"]', 'am liebsten', 1, 4),
  (l_id, 'fill_blank', 'Deutsch ist _____ als Englisch? (schwer - Komparativ)', '["schwerer","schwerer","schwrer","mehr schwer"]', 'schwerer', 1, 5),
  (l_id, 'true_false', 'Modalverben haben im Präteritum keinen Umlaut.', '["Richtig","Falsch"]', 'Richtig', 1, 6);

  -- Lesson 1.4: Mein Alltag: Ein Tag in Deutschland
  insert into public.course_lessons (module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published)
  values (m_id, 'Mein Alltag: Ein Tag in Deutschland', 'Einen Lesetext uber einen typischen deutschen Alltag verstehen und Fragen beantworten', 'Alltag und Gesellschaft', 'reading', '["Learn key vocabulary","Practice grammar structures","Build comprehension skills","Apply in context","Review and reinforce"]', 50, 4, true)
  returning id into l_id;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, order_index) values
  (l_id, 'der Berufstatige', 'almuwadhaf/al`amil', 'working person', 'der', 'die Berufstatigen', 'noun', 'Ein Berufstatiger hat wenig Freizeit.', 'A working person has little free time.', 1),
  (l_id, 'die Pause', 'alistiraha', 'break', 'die', 'die Pausen', 'noun', 'In der Mittagspause esse ich etwas.', 'During the lunch break I eat something.', 2),
  (l_id, 'der Feierabend', 'nihayat yawm al-`amal', 'end of workday', 'der', 'die Feierabende', 'noun', 'Um 17 Uhr habe ich Feierabend.', 'At 5 pm my workday ends.', 3),
  (l_id, 'entspannen', 'yastarkhi', 'to relax', NULL, NULL, 'verb', 'Am Abend entspanne ich mich auf der Couch.', 'In the evening I relax on the couch.', 4),
  (l_id, 'erledigen', 'yunjiz', 'to accomplish/to do', NULL, NULL, 'verb', 'Ich muss noch einige Aufgaben erledigen.', 'I still have to do some tasks.', 5),
  (l_id, 'der Pendler', 'al-musafir yawmiyyan lil`amal', 'commuter', 'der', 'die Pendler', 'noun', 'Viele Pendler fahren mit der Bahn zur Arbeit.', 'Many commuters take the train to work.', 6),
  (l_id, 'die Hausarbeit', 'al`amal al-manzili', 'housework', 'die', 'die Hausarbeiten', 'noun', 'Am Samstag mache ich die Hausarbeit.', 'On Saturday I do the housework.', 7);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  (l_id, 'Präteritum und Nebensatze im Kontext', 'In diesem Lesetext kombinieren wir das Präteritum mit Nebensatzen (weil, da, obwohl). Im B1-Niveau solltest du beide Strukturen in einem Text erkennen und anwenden konnen.', '[{"rule":"Präteritum wird fur abgeschlossene Handlungen in der Vergangenheit verwendet, besonders bei sein, haben, wissen und Modalverben.","note":"Er war mude, weil er viel arbeiten musste."},{"rule":"Nebensatze geben zusatzliche Informationen: warum (weil), trotzdem (obwohl), oder Grund (da).","note":"Da er kein Auto hatte, fuhr er mit dem Bus."},{"rule":"Temporale Angaben: gestern, letzte Woche, vor einem Jahr.","note":"Gestern war ich im Buro, obwohl ich krank war."},{"rule":"Die Wortstellung im Satz: Hauptsatz - Komma - Nebensatz (Verb am Ende).","note":"Ich ging nach Hause, weil ich mude war."}]', '[{"german":"Gestern war ich im Buro, obwohl ich krank war.","arabic":"kuntu fi almaktab ams `ala al-raghm min anni kuntu maridan.","english":"Yesterday I was at the office although I was sick."},{"german":"Weil er einen Termin beim Arzt hatte, kam er spater zur Arbeit.","arabic":"li''anna kana ladayhi maw`id `inda altabib, ja''a muta''akhiran ila al-`amal.","english":"Because he had a doctor''s appointment, he came to work later."},{"german":"Da es regnete, blieben wir zu Hause.","arabic":"bima annaha kanat tumtir, baqina fi almanzil.","english":"Since it was raining, we stayed at home."},{"german":"Sie wollte fruher gehen, weil sie mude war.","arabic":"aradat almugadara mubakkiran li''annaha kanat mut`iba.","english":"She wanted to leave early because she was tired."}]', '[{"mistake":"Gestern ich war im Buro.","correction":"Gestern war ich im Buro.","explanation":"Bei Zeitangabe am Satzanfang steht das Verb an Position 2: \"Gestern war ich\"."},{"mistake":"Weil er war krank, er blieb zu Hause.","correction":"Weil er krank war, blieb er zu Hause.","explanation":"Verb im Nebensatz am Ende (\"war\") und Verb im Hauptsatz direkt nach Komma (\"blieb\")."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  (l_id, 'multiple_choice', 'Was bedeutet "der Feierabend"?', '["bidayat al-`amal","nihayat yawm al-`amal","istirahat al-ghada''","al-`utla al-usbu`iya"]', 'nihayat yawm al-`amal', '"Feierabend" ist das Ende des Arbeitstages.', 1, 1),
  (l_id, 'fill_gap', 'Gestern _____ ich mude, _____ ich viel gearbeitet _____.', '["war / weil / hatte","war / weil / habe","bin / weil / habe","war / obwohl / hatte"]', 'war / weil / habe', 'Präteritum "war" + Nebensatz "weil ich viel gearbeitet habe".', 1, 2),
  (l_id, 'translation', 'Ubersetze: "Although he was tired, he went to the gym."', '["Obwohl er mude war, ging er ins Fitnessstudio.","Weil er mude war, ging er ins Fitnessstudio.","Da er mude war, ging er ins Fitnessstudio.","Obwohl er mude ist, geht er ins Fitnessstudio."]', 'Obwohl er mude war, ging er ins Fitnessstudio.', '"Obwohl" + Nebensatz mit Verb am Ende + Hauptsatz.', 1, 3),
  (l_id, 'multiple_choice', 'Was bedeutet "der Pendler"?', '["almuwadhaf","al-musafir yawmiyyan","almudir","almustakhdim"]', 'al-musafir yawmiyyan', '"Der Pendler" ist jemand, der taglich zur Arbeit fahrt.', 1, 4),
  (l_id, 'fill_gap', 'Da es _____ (regnen), blieben wir zu Hause.', '["regnete","regnet","geregnet","regnen"]', 'regnete', 'Präteritum von "regnen": "es regnete".', 1, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  (l_id, 'multiple_choice', 'Was bedeutet "sich entspannen"?', '["yastarkhi","ya`mal","yanam","ya''kul"]', 'yastarkhi', 1, 1),
  (l_id, 'fill_blank', '_____ (Because) ich krank war, blieb ich zu Hause.', '["Weil","Obwohl","Trotzdem","Denn"]', 'Weil', 1, 2),
  (l_id, 'true_false', 'Im Nebensatz steht das Verb an erster Position.', '["Richtig","Falsch"]', 'Falsch', 1, 3),
  (l_id, 'multiple_choice', 'Welche Zeitform verwendet man fur "war" und "hatte"?', '["Prasens","Perfekt","Präteritum","Futur"]', 'Präteritum', 1, 4),
  (l_id, 'fill_blank', 'Ich _____ gestern einen langen Tag. (haben - Präteritum)', '["habte","hatte","hatte","hat"]', 'hatte', 1, 5),
  (l_id, 'true_false', '"Die Pause" bedeutet "alistiraha".', '["Richtig","Falsch"]', 'Richtig', 1, 6);

  -- Lesson 1.5: Wiederholung: Alltag und Gesellschaft
  insert into public.course_lessons (module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published)
  values (m_id, 'Wiederholung: Alltag und Gesellschaft', 'Alle Themen aus Modul 1 wiederholen und festigen', 'Alltag und Gesellschaft', 'review', '["Learn key vocabulary","Practice grammar structures","Build comprehension skills","Apply in context","Review and reinforce"]', 45, 5, true)
  returning id into l_id;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, order_index) values
  (l_id, 'die Routine', 'rutin', 'routine', 'die', 'die Routinen', 'noun', 'Meine Morgenroutine ist immer gleich.', 'My morning routine is always the same.', 1),
  (l_id, 'der Bekannte', 'ma`arif', 'acquaintance', 'der', 'die Bekannten', 'noun', 'Ich habe einen Bekannten in dieser Stadt.', 'I have an acquaintance in this city.', 2),
  (l_id, 'einladen', 'yad`u', 'to invite', NULL, NULL, 'verb', 'Ich lade dich zu meiner Party ein.', 'I invite you to my party.', 3),
  (l_id, 'absagen', 'ya`tadhir/yulghi', 'to cancel', NULL, NULL, 'verb', 'Ich musste den Termin absagen.', 'I had to cancel the appointment.', 4),
  (l_id, 'verschieben', 'yu''ajjil', 'to postpone', NULL, NULL, 'verb', 'Wir haben das Treffen auf nachste Woche verschoben.', 'We postponed the meeting to next week.', 5),
  (l_id, 'die Hochlichkeit', 'al-adab/allabaqa', 'politeness', 'die', NULL, 'noun', 'Hochlichkeit ist im Alltag sehr wichtig.', 'Politeness is very important in daily life.', 6),
  (l_id, 'die Punktlichkeit', 'al-iltizam bil-mawa`id', 'punctuality', 'die', NULL, 'noun', 'In Deutschland ist Punktlichkeit wichtig.', 'In Germany punctuality is important.', 7);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  (l_id, 'Wiederholung: Präteritum, Nebensatze, Komparativ/Superlativ', 'In dieser Wiederholungslektion fassen wir die drei Hauptgrammatikthemen von Modul 1 zusammen: das Präteritum (besonders von sein, haben, wissen und Modalverben), die Nebensatze mit weil/da/obwohl, und den Komparativ/Superlativ (auch unregelmässig).', '[{"rule":"Präteritum von sein: war, warst, war, waren, wart, waren. Von haben: hatte, hattest, hatte, hatten, hattet, hatten.","note":"Wissen: ich wusste, du wusstest, er wusste ..."},{"rule":"Modalverben im Präteritum: Umlaut fallt weg + Endungen -te, -test, -te, -ten, -tet, -ten.","note":"konnte (ware Konjunktiv II) - konnte (Präteritum)"},{"rule":"Nebensatze mit weil/da/obwohl: Verb am Ende des Nebensatzes.","note":"weil ich krank war / obwohl es regnete / da wir keine Zeit hatten"},{"rule":"Unregelmässiger Komparativ/Superlativ: gut - besser - am besten, viel - mehr - am meisten.","note":"gern - lieber - am liebsten, hoch - hoher - am hochsten"}]', '[{"german":"Ich war gestern mude, weil ich lange arbeiten musste.","arabic":"kuntu mut`iban ams li''anna idtarturrt lil`amal tawilan.","english":"I was tired yesterday because I had to work long."},{"german":"Obwohl er wenig Zeit hatte, half er seinem Nachbarn.","arabic":"`ala al-raghm min anna waqtahu kana qalilan, sa`ada jarahu.","english":"Although he had little time, he helped his neighbor."},{"german":"Deutsch ist besser als ich dachte.","arabic":"al-almaniya afdal mimma kuntu a`taqid.","english":"German is better than I thought."},{"german":"Sie wollte kommen, aber sie hatte keine Zeit.","arabic":"aradat almaji'' lakin lam yakun ladayha waqt.","english":"She wanted to come but she had no time."}]', '[{"mistake":"Weil ich war mude, ich bin zu Hause geblieben.","correction":"Weil ich mude war, bin ich zu Hause geblieben.","explanation":"Verb im Nebensatz am Ende (\"war\"), Verb im Hauptsatz an Position 1 nach Komma (\"bin\")."},{"mistake":"Er ist besser wie ich.","correction":"Er ist besser als ich.","explanation":"Nach Komparativ kommt \"als\", nicht \"wie\"."},{"mistake":"Ich musste gestern arbeiten. (falsch geschrieben: \"muste\")","correction":"Ich musste gestern arbeiten.","explanation":"\"Musste\" mit Doppel-s, nicht \"muste\"."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  (l_id, 'multiple_choice', 'Was bedeutet "einladen"?', '["yad`u","yulghi","yu''ajjil","yadhhab"]', 'yad`u', '"Einladen" bedeutet jemanden zu etwas einladen (invite).', 1, 1),
  (l_id, 'fill_gap', 'Ich _____ gestern nicht kommen, weil ich krank _____.', '["konnte / war","konnte / hatte","kann / bin","konnte / war"]', 'konnte / war', 'Präteritum "konnte" + Präteritum "war" im Nebensatz.', 1, 2),
  (l_id, 'translation', 'Ubersetze: "She is the best student."', '["Sie ist die beste Schulerin.","Sie ist eine gute Schulerin.","Sie ist besser als Schulerin.","Sie ist am besten Schulerin."]', 'Sie ist die beste Schulerin.', 'Superlativ mit bestimmtem Artikel: "die beste Schulerin".', 1, 3),
  (l_id, 'fill_gap', '_____ (Although) es kalt war, gingen wir spazieren.', '["Weil","Obwohl","Da","Trotzdem"]', 'Obwohl', '"Obwohl" druckt einen Gegensatz aus.', 1, 4),
  (l_id, 'multiple_choice', 'Welcher Satz ist korrekt?', '["Ich war mude, weil ich gearbeitet habe.","Ich war mude, weil ich habe gearbeitet.","Ich war mude, weil gearbeitet ich habe.","Ich war mude, weil gearbeitet habe ich."]', 'Ich war mude, weil ich gearbeitet habe.', 'Verb im Nebensatz am Ende: "weil ich gearbeitet habe".', 1, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  (l_id, 'multiple_choice', 'Was ist die Präteritum-Form von "konnen" fur "er"?', '["er konnte","er konnte","er kannte","er konnt"]', 'er konnte', 1, 1),
  (l_id, 'fill_blank', 'Superlativ von "gut": am _____.', '["guten","besten","besseren","guter"]', 'besten', 1, 2),
  (l_id, 'true_false', '"Absagen" bedeutet "yad`u".', '["Richtig","Falsch"]', 'Falsch', 1, 3),
  (l_id, 'multiple_choice', 'Welche Konjunktion bedeutet "`ala al-raghm min"?', '["weil","obwohl","da","denn"]', 'obwohl', 1, 4),
  (l_id, 'fill_blank', 'Wir _____ den Termin auf nachste Woche verschoben. (haben - Präteritum)', '["hatten","hatten","habten","haben"]', 'hatten', 1, 5),
  (l_id, 'true_false', 'Im Deutschen steht das Verb im Nebensatz am Ende.', '["Richtig","Falsch"]', 'Richtig', 1, 6);

  -- Lesson 1.6: Test: Alltag und Gesellschaft
  insert into public.course_lessons (module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published)
  values (m_id, 'Test: Alltag und Gesellschaft', 'Abschlusstest fur Modul 1 - Alltag und Gesellschaft', 'Alltag und Gesellschaft', 'test', '["Learn key vocabulary","Practice grammar structures","Build comprehension skills","Apply in context","Review and reinforce"]', 40, 6, true)
  returning id into l_id;

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  (l_id, 'fill_gap', 'Gestern _____ ich einen langen Tag im Buro. (haben - Präteritum)', '["hatte","habte","hatte","hat"]', 'hatte', '"Ich hatte" ist Präteritum von "haben".', 1, 1),
  (l_id, 'fill_gap', 'Er _____ nicht kommen, weil er krank _____. (konnen, sein - Präteritum)', '["konnte / war","kann / ist","konnte / ware","konnte / hatte"]', 'konnte / war', 'Modalverb "konnte" + "war" (Präteritum) im Nebensatz.', 1, 2),
  (l_id, 'translation', 'Ubersetze: "Although it rained, we went for a walk."', '["Obwohl es regnete, gingen wir spazieren.","Weil es regnete, gingen wir spazieren.","Da es regnete, gingen wir spazieren.","Obwohl es regnet, gehen wir spazieren."]', 'Obwohl es regnete, gingen wir spazieren.', '"Obwohl" mit Präteritum "regnete" und Hauptsatz "gingen wir".', 1, 3),
  (l_id, 'multiple_choice', 'Was ist der Komparativ von "viel"?', '["vieler","mehr","vielcher","am meisten"]', 'mehr', 'Unregelmässiger Komparativ: viel - mehr - am meisten.', 1, 4),
  (l_id, 'fill_gap', 'Da ich keine Zeit _____, konnte ich nicht kommen. (haben - Präteritum)', '["hatte","habe","hatte","habt"]', 'hatte', 'Präteritum "hatte" im Nebensatz mit "da".', 1, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  (l_id, 'multiple_choice', 'Was bedeutet "der Verein"?', '["aljami`a","aljar","almaw`id","alrruytin"]', 'aljami`a', 1, 1),
  (l_id, 'true_false', '"Besser" ist der Komparativ von "gut".', '["Richtig","Falsch"]', 'Richtig', 1, 2),
  (l_id, 'fill_blank', 'Präteritum von "wissen" fur "ich": ich _____.', '["weisste","wusste","wusste","wisse"]', 'wusste', 1, 3),
  (l_id, 'multiple_choice', 'Welcher Satz ist korrekt?', '["Obwohl er mude ist, geht er ins Bett.","Obwohl er mude ist, geht er nicht ins Bett.","Obwohl er mude ist, er geht ins Bett.","Obwohl er mude ist, er geht nicht ins Bett."]', 'Obwohl er mude ist, geht er nicht ins Bett.', 1, 4),
  (l_id, 'true_false', 'Im Präteritum fallt der Umlaut bei Modalverben weg.', '["Richtig","Falsch"]', 'Richtig', 1, 5),
  (l_id, 'multiple_choice', 'Was bedeutet "die Gewohnheit"?', '["al-`ada","almuhima","alrruytin","almaw`id"]', 'al-`ada', 1, 6),
  (l_id, 'fill_blank', 'Superlativ von "gern": am _____.', '["gernsten","liebsten","besten","meisten"]', 'liebsten', 1, 7),
  (l_id, 'multiple_choice', 'Was ist die arabische Ubersetzung von "obwohl"?', '["`ala al-raghm min","li''anna","bima anna","`indama"]', '`ala al-raghm min', 1, 8);

  -- Module 2: Arbeit und Karriere
  insert into public.course_modules (level_id, title, description, objectives, order_index, estimated_hours, is_published)
  values ('B1', 'Arbeit und Karriere', 'über Berufe, Bewerbungen und Karriere sprechen. Den Konjunktiv II und das Passiv im Prasens anwenden.', '["Konjunktiv II mit wurde + Infinitiv sowie hatte und ware korrekt bilden","Das Passiv im Prasens sicher anwenden","Eine Bewerbung und einen Lebenslauf auf Deutsch verfassen","Ein Vorstellungsgesprach fuhren","über Berufe, Arbeitsbedingungen und Karriereziele sprechen"]', 2, 5.0, true)
  returning id into m_id;

  -- Lesson 2.1: Berufe und Arbeitsplatze
  insert into public.course_lessons (module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published)
  values (m_id, 'Berufe und Arbeitsplatze', 'Wichtige Berufe und Arbeitsplatz-Vokabeln lernen', 'Arbeit und Karriere', 'vocabulary', '["Learn key vocabulary","Practice grammar structures","Build comprehension skills","Apply in context","Review and reinforce"]', 45, 1, true)
  returning id into l_id;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, order_index) values
  (l_id, 'der Beruf', 'almihna', 'profession', 'der', 'die Berufe', 'noun', 'Was ist dein Beruf?', 'What is your profession?', 1),
  (l_id, 'der Arbeitgeber', 'sahib al-`amal', 'employer', 'der', 'die Arbeitgeber', 'noun', 'Mein Arbeitgeber bietet flexible Arbeitszeiten.', 'My employer offers flexible working hours.', 2),
  (l_id, 'der Arbeitnehmer', 'almuwadhaf', 'employee', 'der', 'die Arbeitnehmer', 'noun', 'Die Arbeitnehmer haben eine Gehaltserhohung bekommen.', 'The employees received a salary increase.', 3),
  (l_id, 'die Stelle', 'alwadhifa', 'position', 'die', 'die Stellen', 'noun', 'Ich habe eine neue Stelle gefunden.', 'I found a new position.', 4),
  (l_id, 'die Firma', 'alsharika', 'company', 'die', 'die Firmen', 'noun', 'Die Firma sucht neue Mitarbeiter.', 'The company is looking for new employees.', 5),
  (l_id, 'die Abteilung', 'alqism', 'department', 'die', 'die Abteilungen', 'noun', 'Er arbeitet in der Marketingabteilung.', 'He works in the marketing department.', 6),
  (l_id, 'der Kollege', 'alzamil', 'colleague', 'der', 'die Kollegen', 'noun', 'Meine Kollegen sind sehr hilfsbereit.', 'My colleagüs are very helpful.', 7),
  (l_id, 'das Gehalt', 'alratib', 'salary', 'das', 'die Gehalter', 'noun', 'Das Gehalt wird am Ende des Monats gezahlt.', 'The salary is paid at the end of the month.', 8);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  (l_id, 'Konjunktiv II - wurde + Infinitiv', 'Der Konjunktiv II wird fur irreale Wunsche, Hochlichkeit und hypothetische Situationen verwendet. Die haufigste Form ist "wurde + Infinitiv". "Wurde" ist der Konjunktiv II von "werden".', '[{"rule":"Bildung: wurden (konjugiert) + Infinitiv des Vollverbs.","note":"Ich wurde kommen, du wurdest kommen, er wurde kommen, wir wurden kommen, ihr wurdet kommen, sie wurden kommen."},{"rule":"Verwendung fur hoflich- Bitten: \"Ich wurde gern ...\"","note":"Ich wurde gern einen Termin vereinbaren."},{"rule":"Verwendung fur irreale Bedingungen: \"Wenn ich Zeit hatte, wurde ich kommen.\"","note":"Oft mit \"wenn\"-Satz kombiniert."},{"rule":"Verwendung fur irreale Wunsche: \"Ich ware gern zu Hause.\"","note":"Auch mit \"hatte\" und \"ware\" moglich."},{"rule":"Die Form \"wurde\" steht an Position 2 im Hauptsatz, der Infinitiv am Ende.","note":"Ich wurde morgen gern kommen."}]', '[{"german":"Ich wurde gern einen Termin vereinbaren.","arabic":"awaddu ta`did maw`id.","english":"I would like to make an appointment."},{"german":"Wurden Sie mir bitte helfen?","arabic":"hal tumkinunni musa`adati min fadlikum?","english":"Would you please help me?"},{"german":"Wenn ich mehr Geld hatte, wurde ich ein Auto kaufen.","arabic":"idha kana ladayya mal akthar, kuntu sa''ashtari sayara.","english":"If I had more money, I would buy a car."},{"german":"Ich wurde gern in einer grossen Firma arbeiten.","arabic":"awaddu al-`amal fi sharika kabira.","english":"I would like to work in a large company."},{"german":"Was wurdest du tun?","arabic":"maza kuntu sataf`al?","english":"What would you do?"}]', '[{"mistake":"Ich mochte gern einen Termin vereinbaren. (hoflich, aber nicht Konjunktiv II)","correction":"Ich wurde gern einen Termin vereinbaren.","explanation":"Beides ist hoflich, aber \"wurde\" + Infinitiv ist die typische Konjunktiv-II-Form."},{"mistake":"Ich wurde kommen, wenn ich Zeit habe.","correction":"Ich wurde kommen, wenn ich Zeit hatte.","explanation":"Im Wenn-Satz braucht man auch Konjunktiv II: \"hatte\" (nicht \"habe\" im Prasens)."},{"mistake":"Wenn ich Zeit hatte, ich wurde kommen.","correction":"Wenn ich Zeit hatte, wurde ich kommen.","explanation":"Nach dem Nebensatz folgt das Verb direkt: \"wurde ich kommen\"."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  (l_id, 'fill_gap', 'Ich _____ gern in einer grossen Firma _____. (arbeiten - Konjunktiv II)', '["wurde / arbeiten","werde / arbeiten","will / arbeiten","wurde / gearbeitet"]', 'wurde / arbeiten', 'Konjunktiv II mit "wurde" + Infinitiv: "wurde arbeiten".', 1, 1),
  (l_id, 'multiple_choice', 'Was bedeutet "der Arbeitgeber"?', '["almuwadhaf","sahib al-`amal","alratib","alqism"]', 'sahib al-`amal', '"Der Arbeitgeber" ist der employer.', 1, 2),
  (l_id, 'translation', 'Ubersetze: "I would like to apply for this position."', '["Ich wurde gern fur diese Stelle bewerben.","Ich bewerbe mich fur diese Stelle.","Ich werde mich fur diese Stelle bewerben.","Ich habe mich fur diese Stelle beworben."]', 'Ich wurde gern fur diese Stelle bewerben.', 'Konjunktiv II "wurde gern" fur hoflich- Aussage.', 1, 3),
  (l_id, 'fill_gap', 'Wenn ich Zeit _____, wurde ich kommen. (haben - Konjunktiv II)', '["hatte","habe","hatte","wurde haben"]', 'hatte', 'Im wenn-Satz braucht man Konjunktiv II: "hatte".', 1, 4),
  (l_id, 'multiple_choice', 'Wie bildet man den Konjunktiv II fur hoflich- Bitten?', '["wurde + Infinitiv","werden + Infinitiv","hatte + Partizip","ware + Partizip"]', 'wurde + Infinitiv', 'Hoflich- Bitten: "Ich wurde gern ..." + Infinitiv.', 1, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  (l_id, 'multiple_choice', 'Was bedeutet "die Abteilung"?', '["alqism","alsharika","alratib","almuwadhaf"]', 'alqism', 1, 1),
  (l_id, 'fill_blank', 'Konjunktiv II von "werden" fur "ich": ich _____.', '["wurde","werde","wurde","worden"]', 'wurde', 1, 2),
  (l_id, 'true_false', 'Der Konjunktiv II wird fur reale Situationen verwendet.', '["Richtig","Falsch"]', 'Falsch', 1, 3),
  (l_id, 'multiple_choice', 'Was ist die Konjunktiv-II-Form von "haben" fur "er"?', '["er hat","er hatte","er hatte","er habe"]', 'er hatte', 1, 4),
  (l_id, 'fill_blank', 'Ich _____ gern Arzt _____. (werden - Konjunktiv II)', '["wurde / werden","werde / werden","wurde / geworden","wurde / sein"]', 'wurde / werden', 1, 5),
  (l_id, 'true_false', '"Das Gehalt" bedeutet "alratib".', '["Richtig","Falsch"]', 'Richtig', 1, 6);

  -- Lesson 2.2: Bewerbung und Lebenslauf
  insert into public.course_lessons (module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published)
  values (m_id, 'Bewerbung und Lebenslauf', 'Vokabular rund um Bewerbung, Lebenslauf und Einstellungsprozess lernen', 'Arbeit und Karriere', 'vocabulary', '["Learn key vocabulary","Practice grammar structures","Build comprehension skills","Apply in context","Review and reinforce"]', 45, 2, true)
  returning id into l_id;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, order_index) values
  (l_id, 'die Bewerbung', 'altaqdim/altalab', 'application', 'die', 'die Bewerbungen', 'noun', 'Ich habe meine Bewerbung abgeschickt.', 'I sent my application.', 1),
  (l_id, 'der Lebenslauf', 'alsira al-dhatiya', 'CV/resume', 'der', 'die Lebenslaufe', 'noun', 'Mein Lebenslauf ist auf dem neüsten Stand.', 'My CV is up to date.', 2),
  (l_id, 'das Vorstellungsgesprach', 'muqabalat al-`amal', 'job interview', 'das', 'die Vorstellungsgesprache', 'noun', 'Morgen habe ich ein Vorstellungsgesprach.', 'Tomorrow I have a job interview.', 3),
  (l_id, 'die Qualifikation', 'almu''ahhil', 'qualification', 'die', 'die Qualifikationen', 'noun', 'Meine Qualifikationen passen gut zur Stelle.', 'My qualifications fit the position well.', 4),
  (l_id, 'die Erfahrung', 'alkhibra', 'experience', 'die', 'die Erfahrungen', 'noun', 'Ich habe viel Erfahrung im Vertrieb.', 'I have a lot of experience in sales.', 5),
  (l_id, 'die Fahigkeit', 'almahara', 'ability/skill', 'die', 'die Fahigkeiten', 'noun', 'Zu meinen Fahigkeiten gehoren Teamarbeit und Kommunikation.', 'My skills include teamwork and communication.', 6),
  (l_id, 'das Praktikum', 'altadrib/altamrin', 'internship', 'das', 'die Praktika', 'noun', 'Wahrend des Praktikums habe ich viel gelernt.', 'During the internship I learned a lot.', 7),
  (l_id, 'die Stellenanzeige', 'i`lan alwadhifa', 'job advertisement', 'die', 'die Stellenanzeigen', 'noun', 'Die Stellenanzeige fordert drei Jahre Erfahrung.', 'The job advertisement requires three years of experience.', 8);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  (l_id, 'Passiv Prasens', 'Das Passiv wird verwendet, wenn die Handlung wichtiger ist als der Handelnde. Im Prasens Passiv: "werden" (konjugiert) + Partizip Perfekt.', '[{"rule":"Passiv Prasens: werden (konjugiert) + Partizip Perfekt.","note":"Ich werde gefragt, du wirst gefragt, er wird gefragt, wir werden gefragt, ihr werdet gefragt, sie werden gefragt."},{"rule":"Der Handelnde (die Person, die etwas tut) wird mit \"von\" + Dativ eingefuhrt.","note":"Das wird von der Firma organisiert."},{"rule":"Bei Sachen/Abstrakta verwendet man \"durch\" + Akkusativ.","note":"Die Nachricht wurde durch die Medien verbreitet."},{"rule":"Das Passiv wird oft verwendet, wenn der Handelnde unbekannt oder unwichtig ist.","note":"Hier wird Deutsch gesprochen."},{"rule":"Im Prasens Passiv wird das Partizip Perfekt nicht verandert.","note":"Das Formular wird ausgefullt. (ausfullen - ausgefullt)"}]', '[{"german":"Die Bewerbung wird vom Personalchef gepruft.","arabic":"yatim fahs altalab min qibal mudir almawarid albashariya.","english":"The application is checked by the HR manager."},{"german":"Hier wird Deutsch gesprochen.","arabic":"yatim al-tahaduth bil-almaniya huna.","english":"German is spoken here."},{"german":"Das Gehalt wird am Ende des Monats gezahlt.","arabic":"yatim daf` alratib fi nihayat alshahr.","english":"The salary is paid at the end of the month."},{"german":"Die Stellenanzeige wird in der Zeitung veroffentlicht.","arabic":"yatim nashr i`lan alwadhifa fi aljarida.","english":"The job advertisement is published in the newspaper."},{"german":"Von wem wird das Vorstellungsgesprach gefuhrt?","arabic":"man yaqum bi-ijra'' muqabalat al-`amal?","english":"By whom is the job interview conducted?"}]', '[{"mistake":"Das wird von die Firma organisiert.","correction":"Das wird von der Firma organisiert.","explanation":"Nach \"von\" kommt Dativ: \"von der Firma\" (nicht \"von die Firma\")."},{"mistake":"Ich werde gefragt. (verwechselt mit \"werde\" als Futur)","correction":"Ich werde gefragt. (ist korrekt)","explanation":"Kontext entscheidet: \"Ich werde gefragt\" = Passiv (I am asked), nicht Futur."},{"mistake":"Das Passiv: Das Formular wird ausgefullt. (aber: Das Formular fullt aus.)","correction":"Das Formular wird ausgefullt.","explanation":"Im Passiv kommt das Partizip ans Ende, \"wird\" an Position 2."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  (l_id, 'fill_gap', 'Die Bewerbung _____ vom Chef _____. (prufen - Passiv)', '["wird / gepruft","ist / gepruft","hat / gepruft","werden / gepruft"]', 'wird / gepruft', 'Passiv Prasens: "wird" + Partizip "gepruft".', 1, 1),
  (l_id, 'multiple_choice', 'Was bedeutet "der Lebenslauf"?', '["alsira al-dhatiya","alratib","alkhibra","altalab"]', 'alsira al-dhatiya', '"Der Lebenslauf" ist der CV oder die Biografie.', 1, 2),
  (l_id, 'translation', 'Ubersetze ins Passiv: "The salary is paid monthly."', '["Das Gehalt wird monatlich gezahlt.","Das Gehalt zahlt monatlich.","Das Gehalt hat monatlich gezahlt.","Das Gehalt ist monatlich gezahlt."]', 'Das Gehalt wird monatlich gezahlt.', 'Passiv Prasens: "wird ... gezahlt".', 1, 3),
  (l_id, 'fill_gap', 'Hier _____ Englisch und Deutsch _____. (sprechen - Passiv)', '["wird / gesprochen","werden / gesprochen","ist / gesprochen","wird / spricht"]', 'wird / gesprochen', 'Passiv: "wird gesprochen" (Singular, da "Englisch und Deutsch" als Einheit).', 1, 4),
  (l_id, 'multiple_choice', 'Mit welcher Prap- wird der Handelnde im Passiv eingefuhrt?', '["von + Dativ","von + Akkusativ","durch + Dativ","mit + Dativ"]', 'von + Dativ', 'Der Handelnde wird im Passiv mit "von" + Dativ eingefuhrt.', 1, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  (l_id, 'multiple_choice', 'Was bedeutet "die Qualifikation"?', '["almu''ahhil","alratib","alkhibra","almuqabala"]', 'almu''ahhil', 1, 1),
  (l_id, 'fill_blank', 'Passiv Prasens von "fragen": ich _____ _____. (werden)', '["werde gefragt","wird gefragt","werde fragen","bin gefragt"]', 'werde gefragt', 1, 2),
  (l_id, 'true_false', 'Im Passiv steht "werden" an Position 2.', '["Richtig","Falsch"]', 'Richtig', 1, 3),
  (l_id, 'multiple_choice', 'Wie heisst "job interview" auf Deutsch?', '["die Bewerbung","das Vorstellungsgesprach","der Lebenslauf","die Stelle"]', 'das Vorstellungsgesprach', 1, 4),
  (l_id, 'fill_blank', 'Die Stellenanzeige _____ in der Zeitung veroffentlicht. (Passiv)', '["wird","werden","ist","hat"]', 'wird', 1, 5),
  (l_id, 'true_false', 'Nach "von" im Passiv kommt der Akkusativ.', '["Richtig","Falsch"]', 'Falsch', 1, 6);

  -- Lesson 2.3: Konjunktiv II - hatte, ware und Hochlichkeitsformen
  insert into public.course_lessons (module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published)
  values (m_id, 'Konjunktiv II - hatte, ware und Hochlichkeitsformen', 'Die Konjunktiv-II-Formen von haben und sein sowie hoflich- Formulierungen fur Beruf und Alltag', 'Arbeit und Karriere', 'grammar', '["Learn key vocabulary","Practice grammar structures","Build comprehension skills","Apply in context","Review and reinforce"]', 60, 3, true)
  returning id into l_id;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, order_index) values
  (l_id, 'hatte', 'kana ladayya/sayakun ladayya (ghayr waqi`i)', 'would have', NULL, NULL, 'verb', 'Ich hatte gern mehr Freizeit.', 'I would like to have more free time.', 1),
  (l_id, 'ware', 'sayakun/kuntu sa''akun (ghayr waqi`i)', 'would be', NULL, NULL, 'verb', 'Das ware grossartig.', 'That would be great.', 2),
  (l_id, 'der Vorschlag', 'aliqtirah', 'suggestion', 'der', 'die Vorschlage', 'noun', 'Ich mache einen Vorschlag.', 'I make a suggestion.', 3),
  (l_id, 'die Moglichkeit', 'al-imkaniya/alfursa', 'possibility', 'die', 'die Moglichkeiten', 'noun', 'Gibt es eine Moglichkeit, im Homeoffice zu arbeiten?', 'Is there a possibility to work from home?', 4),
  (l_id, 'die Bedingung', 'alshart', 'condition', 'die', 'die Bedingungen', 'noun', 'Die Arbeitsbedingungen sind sehr gut.', 'The working conditions are very good.', 5),
  (l_id, 'die Beforderung', 'altarqiya', 'promotion', 'die', 'die Beforderungen', 'noun', 'Er hat eine Beforderung bekommen.', 'He got a promotion.', 6),
  (l_id, 'kundigen', 'yastaqil', 'to resign/quit', NULL, NULL, 'verb', 'Sie hat gekundigt und einen neün Job gefunden.', 'She quit and found a new job.', 7);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  (l_id, 'Konjunktiv II - hatte, ware und wurde im Vergleich', 'Neben "wurde + Infinitiv" gibt es den Konjunktiv II von "haben" (hatte) und "sein" (ware). Diese Formen sind sehr wichtig fur hoflich- Aussagen, irreale Wunsche und Bedingungssatze.', '[{"rule":"Konjunktiv II von \"haben\": ich hatte, du hattest, er hatte, wir hatten, ihr hattet, sie hatten.","note":"Mit Umlaut: hatte (nicht: hatte, das ist Präteritum)."},{"rule":"Konjunktiv II von \"sein\": ich ware, du warst, er ware, wir waren, ihr wart, sie waren.","note":"Ware = wurde sein (beides moglich, \"ware\" ist kurzer)."},{"rule":"Bedingungssatze: \"Wenn ich ... hatte/ware, wurde ich ...\"","note":"Wenn ich mehr Zeit hatte, wurde ich Sport machen."},{"rule":"Hoflich- Fragen: \"Hatten Sie ...?\" / \"Waren Sie so freundlich ...?\"","note":"Hatten Sie morgen Zeit fur ein Gesprach?"},{"rule":"Irrealer Wunsch: \"Ich ware gern ...\" / \"Ich hatte gern ...\"","note":"Ich ware gern selbststandig. Ich hatte gern mehr Urlaub."}]', '[{"german":"Ich hatte gern mehr Geld.","arabic":"kuntu awaddu an yakun ladayya mal akthar.","english":"I would like to have more money."},{"german":"Das ware eine gute Idee.","arabic":"satakun tilka fikra jayyida.","english":"That would be a good idea."},{"german":"Wenn ich mehr Zeit hatte, wurde ich reisen.","arabic":"idha kana ladayya waqt akthar, kuntu sa''usafir.","english":"If I had more time, I would travel."},{"german":"Hatten Sie morgen um 14 Uhr Zeit?","arabic":"hal sayakun ladaykum waqt ghadan al-sa`a al-thaniya?","english":"Would you have time tomorrow at 2 pm?"},{"german":"Ich ware gern bei dieser Firma angestellt.","arabic":"kuntu awaddu an akun muwadhafan fi hadhihi alsharika.","english":"I would like to be employed at this company."}]', '[{"mistake":"Ich hatte gern ein Meeting.","correction":"Ich hatte gern ein Meeting.","explanation":"\"Hatte\" ist Präteritum (Vergangenheit), \"hatte\" ist Konjunktiv II (hoflich/irreal)."},{"mistake":"Wenn ich mehr Zeit hatte, wurde ich Sport machen. (aber: \"Wenn ich mehr Zeit hatte, ich wurde Sport machen.\")","correction":"Wenn ich mehr Zeit hatte, wurde ich Sport machen.","explanation":"Verb im Hauptsatz direkt nach dem Komma: \"wurde ich\"."},{"mistake":"Ich ware gern zu Hause. (verwechselt mit \"wurde\" + sein)","correction":"Ich ware gern zu Hause. (ist korrekt)","explanation":"\"Ware\" ist der Konjunktiv II von \"sein\", das ist die korrekte Form."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  (l_id, 'fill_gap', 'Ich _____ gern mehr Urlaub. (haben - Konjunktiv II)', '["hatte","hatte","habe","wurde haben"]', 'hatte', 'Konjunktiv II von "haben": "hatte".', 1, 1),
  (l_id, 'fill_gap', 'Das _____ eine tolle Moglichkeit. (sein - Konjunktiv II)', '["ware","wird","ist","wurde sein"]', 'ware', 'Konjunktiv II von "sein": "ware".', 1, 2),
  (l_id, 'translation', 'Ubersetze: "That would be a good suggestion."', '["Das ware ein guter Vorschlag.","Das ist ein guter Vorschlag.","Das war ein guter Vorschlag.","Das wurde guter Vorschlag sein."]', 'Das ware ein guter Vorschlag.', 'Konjunktiv II: "Das ware".', 1, 3),
  (l_id, 'multiple_choice', 'Was ist die korrekte Form? "_____ Sie Zeit fur ein Gesprach?"', '["Hatten","Hatten","Haben","Hattet"]', 'Hatten', 'Hoflich- Frage im Konjunktiv II: "Hatten Sie ...?"', 1, 4),
  (l_id, 'fill_gap', 'Wenn ich mehr Erfahrung _____, wurde ich mich bewerben.', '["hatte","habe","hatte","wurde haben"]', 'hatte', 'Im wenn-Satz: Konjunktiv II "hatte" (nicht "habe").', 1, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  (l_id, 'multiple_choice', 'Was bedeutet "hatte" im Konjunktiv II?', '["kana ladayya (ghayr waqi`i)","kana ladayya (haqiqi)","sayakun","ladayya"]', 'kana ladayya (ghayr waqi`i)', 1, 1),
  (l_id, 'fill_blank', 'Konjunktiv II von "sein" fur "wir": wir _____.', '["waren","waren","wurden sein","sind"]', 'waren', 1, 2),
  (l_id, 'true_false', '"Hatte" ist das Präteritum von "haben".', '["Richtig","Falsch"]', 'Falsch', 1, 3),
  (l_id, 'multiple_choice', 'Was bedeutet "die Beforderung"?', '["alratib","altarqiya","alistiqala","almuqabala"]', 'altarqiya', 1, 4),
  (l_id, 'fill_blank', 'Wenn ich mehr Geld _____, wurde ich reisen. (haben - Konjunktiv II)', '["hatte","habe","hatte","wurde haben"]', 'hatte', 1, 5),
  (l_id, 'true_false', 'Konjunktiv II wird fur hoflich- Fragen verwendet.', '["Richtig","Falsch"]', 'Richtig', 1, 6);

  -- Lesson 2.4: Das Vorstellungsgesprach
  insert into public.course_lessons (module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published)
  values (m_id, 'Das Vorstellungsgesprach', 'Ein Vorstellungsgesprach fuhren - typische Fragen und Antworten uben', 'Arbeit und Karriere', 'speaking', '["Learn key vocabulary","Practice grammar structures","Build comprehension skills","Apply in context","Review and reinforce"]', 50, 4, true)
  returning id into l_id;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, order_index) values
  (l_id, 'die Starke', 'alquwwa/nuqtat alquwwa', 'strength', 'die', 'die Starken', 'noun', 'Meine Starke ist die Kommunikation.', 'My strength is communication.', 1),
  (l_id, 'die Schwache', 'aldu`f/nuqtat al-du`f', 'weakness', 'die', 'die Schwachen', 'noun', 'Ich arbeite an meinen Schwachen.', 'I work on my weaknesses.', 2),
  (l_id, 'die Motivation', 'aldafi`', 'motivation', 'die', 'die Motivationen', 'noun', 'Meine Motivation ist, neue Herausforderungen zu meistern.', 'My motivation is to master new challenges.', 3),
  (l_id, 'die Herausforderung', 'altahaddi', 'challenge', 'die', 'die Herausforderungen', 'noun', 'Ich suche neue Herausforderungen.', 'I am looking for new challenges.', 4),
  (l_id, 'die Verantwortung', 'almas''uliya', 'responsibility', 'die', 'die Verantwortungen', 'noun', 'Ich mochte mehr Verantwortung ubernehmen.', 'I would like to take on more responsibility.', 5),
  (l_id, 'sich bewerben', 'yataqaddam/yatlub', 'to apply', NULL, NULL, 'verb', 'Ich bewerbe mich um die Stelle als Ingenieur.', 'I am applying for the position as an engineer.', 6),
  (l_id, 'der Personalchef', 'mudir almawarid albashariya', 'HR manager', 'der', 'die Personalchefs', 'noun', 'Der Personalchef fuhrt das Gesprach.', 'The HR manager conducts the interview.', 7);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  (l_id, 'Konjunktiv II und Passiv im Vorstellungsgesprach', 'Im Vorstellungsgesprach verwendest du den Konjunktiv II fur hoflich- Formulierungen ("Ich wurde gern ...") und das Passiv, um uber Prozesse zu sprechen ("Die Bewerbung wird gepruft"). Kombiniere beide Strukturen fur professionelle Kommunikation.', '[{"rule":"Hoflich- Antworten mit Konjunktiv II: \"Ich wurde sagen, dass ...\"","note":"Ich wurde sagen, dass meine Starke die Teamarbeit ist."},{"rule":"über Fahigkeiten sprechen: \"Ich hatte gern die Moglichkeit, ...\"","note":"Ich hatte gern die Moglichkeit, mich weiterzüntwickeln."},{"rule":"Passiv im Gesprach: \"Die Position wird neu besetzt.\"","note":"Die Stelle wird ab Marz neu besetzt."},{"rule":"Irreale Satze uber die Zukunft: \"Wenn ich die Stelle beka- me, wurde ich ...\"","note":"Wenn ich die Stelle beka me, wurde ich mein Bestes geben."}]', '[{"german":"Ich wurde gern in Ihrem Unternehmen arbeiten.","arabic":"awaddu al-`amal fi sharikatikum.","english":"I would like to work in your company."},{"german":"Meine Starken sind Teamarbeit und Kommunikation.","arabic":"nuqat quwwati hiya al-`amal al-jama`i wa-al-tawasul.","english":"My strengths are teamwork and communication."},{"german":"Die Bewerbung wird von der Personalabteilung gepruft.","arabic":"yatim fahs altalab min qibal qism almawarid albashariya.","english":"The application is checked by the HR department."},{"german":"Wenn ich die Stelle beka me, wurde ich mich sehr freün.","arabic":"idha hasaltu `ala alwadhifa, kuntu sa''akun sa`idan jiddan.","english":"If I got the position, I would be very happy."}]', '[{"mistake":"Ich wurde gern in Ihr Unternehmen arbeiten.","correction":"Ich wurde gern in Ihrem Unternehmen arbeiten.","explanation":"Nach \"in\" mit Unternehmen (Dativ): \"in Ihrem Unternehmen\"."},{"mistake":"Meine Starke ist, dass ich bin teamfahig.","correction":"Meine Starke ist, dass ich teamfahig bin.","explanation":"Verb im \"dass\"-Satz am Ende: \"dass ich teamfahig bin\"."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  (l_id, 'multiple_choice', 'Was bedeutet "die Starke" im Bewerbungskontext?', '["nuqtat alquwwa","nuqtat al-du`f","alkhibra","almu''ahhil"]', 'nuqtat alquwwa', '"Starke" ist eine positive Eigenschaft (strength).', 1, 1),
  (l_id, 'fill_gap', 'Ich _____ gern in Ihrem Unternehmen _____. (arbeiten - Konjunktiv II)', '["wurde / arbeiten","werde / arbeiten","will / arbeiten","hatte / gearbeitet"]', 'wurde / arbeiten', 'Hoflich- Aussage im Konjunktiv II: "wurde ... arbeiten".', 1, 2),
  (l_id, 'translation', 'Ubersetze: "The application will be reviewed by the HR manager."', '["Die Bewerbung wird vom Personalchef gepruft.","Die Bewerbung pruft der Personalchef.","Die Bewerbung hat der Personalchef gepruft.","Die Bewerbung ist vom Personalchef gepruft."]', 'Die Bewerbung wird vom Personalchef gepruft.', 'Passiv Prasens: "wird ... gepruft".', 1, 3),
  (l_id, 'multiple_choice', 'Was fragt man im Vorstellungsgesprach nicht?', '["Was sind Ihre Starken?","Wo wohnen Sie genau?","Warum mochten Sie diese Stelle?","Was sind Ihre Gehaltsvorstellungen?"]', 'Wo wohnen Sie genau?', 'Die genaue Adresse ist im Vorstellungsgesprach weniger relevant.', 1, 4),
  (l_id, 'fill_gap', 'Wenn ich die Stelle _____, wurde ich sofort anfangen. (bekommen - Konjunktiv II)', '["beka me","bekomme","bekam","bekommen wurde"]', 'beka me', 'Konjunktiv II von "bekommen": "beka me".', 1, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  (l_id, 'multiple_choice', 'Was bedeutet "die Herausforderung"?', '["altahaddi","almas''uliya","almahara","alquwwa"]', 'altahaddi', 1, 1),
  (l_id, 'fill_blank', 'Meine Starke _____, dass ich gut im Team arbeiten kann. (sein - Prasens)', '["ware","ist","wird","war"]', 'ist', 1, 2),
  (l_id, 'true_false', 'Im Vorstellungsgesprach sollte man nur uber Starken sprechen.', '["Richtig","Falsch"]', 'Falsch', 1, 3),
  (l_id, 'multiple_choice', 'Wie sagt man "I would like to apply" auf Deutsch?', '["Ich mochte mich bewerben.","Ich wurde gern mich bewerben.","Ich bewerbe gern.","Ich mochte bewerben."]', 'Ich mochte mich bewerben.', 1, 4),
  (l_id, 'fill_blank', 'Die Stelle _____ ab sofort besetzt. (Passiv)', '["wird","ist","hat","wurde"]', 'wird', 1, 5),
  (l_id, 'true_false', '"Die Verantwortung" bedeutet "responsibility".', '["Richtig","Falsch"]', 'Richtig', 1, 6);

  -- Lesson 2.5: Wiederholung: Arbeit und Karriere
  insert into public.course_lessons (module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published)
  values (m_id, 'Wiederholung: Arbeit und Karriere', 'Alle Themen aus Modul 2 wiederholen und festigen', 'Arbeit und Karriere', 'review', '["Learn key vocabulary","Practice grammar structures","Build comprehension skills","Apply in context","Review and reinforce"]', 45, 5, true)
  returning id into l_id;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, order_index) values
  (l_id, 'der Mitarbeiter', 'almuwadhaf/al`amil', 'employee', 'der', 'die Mitarbeiter', 'noun', 'Die Firma hat 200 Mitarbeiter.', 'The company has 200 employees.', 1),
  (l_id, 'das Buro', 'almaktab', 'office', 'das', 'die Buros', 'noun', 'Das Buro ist im dritten Stock.', 'The office is on the third floor.', 2),
  (l_id, 'die Karriere', 'almasira almihniya', 'career', 'die', 'die Karrieren', 'noun', 'Sie macht eine gute Karriere.', 'She is making a good career.', 3),
  (l_id, 'das Ziel', 'alhadaf', 'goal', 'das', 'die Ziele', 'noun', 'Mein Karriereziel ist ein eigenes Unternehmen.', 'My career goal is my own company.', 4),
  (l_id, 'der Erfolg', 'alnajah', 'success', 'der', 'die Erfolge', 'noun', 'Der Erfolg kommt mit harter Arbeit.', 'Success comes with hard work.', 5),
  (l_id, 'die Weiterbildung', 'altatwir almihni', 'further training', 'die', 'die Weiterbildungen', 'noun', 'Weiterbildung ist wichtig fur die Karriere.', 'Further training is important for the career.', 6),
  (l_id, 'spezialisieren', 'yatakhassas', 'to specialize', NULL, NULL, 'verb', 'Ich mochte mich im Bereich Marketing spezialisieren.', 'I would like to specialize in marketing.', 7);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  (l_id, 'Wiederholung: Konjunktiv II und Passiv Prasens', 'In dieser Lektion wiederholen wir den Konjunktiv II (wurde + Infinitiv, hatte, ware) und das Passiv Prasens - die beiden Hauptgrammatikthemen von Modul 2.', '[{"rule":"Konjunktiv II: wurde + Infinitiv (fur die meisten Verben), hatte/ware (fur haben/sein).","note":"Ich wurde kommen. Ich hatte Zeit. Das ware gut."},{"rule":"Bedingungssatze: Wenn + Konjunktiv II (Nebensatz), Konjunktiv II (Hauptsatz).","note":"Wenn ich mehr Geld hatte, wurde ich reisen."},{"rule":"Passiv Prasens: werden (konjugiert) + Partizip Perfekt.","note":"Die Bewerbung wird gepruft. Die Gehalter werden gezahlt."},{"rule":"Von + Dativ fur den Handelnden im Passiv.","note":"Das wird vom Chef entschieden."}]', '[{"german":"Wenn ich die Stelle beka me, wurde ich mich sehr freün.","arabic":"idha hasaltu `ala alwadhifa, kuntu sa''akun sa`idan jiddan.","english":"If I got the position, I would be very happy."},{"german":"Die Bewerbung wird von der Personalabteilung gepruft.","arabic":"yatim fahs altalab min qibal qism almawarid albashariya.","english":"The application is checked by the HR department."},{"german":"Ich hatte gern mehr Verantwortung.","arabic":"awaddu tahammul mas''uliya akbar.","english":"I would like to have more responsibility."},{"german":"Hier wird Deutsch gesprochen.","arabic":"yatim al-tahaduth bil-almaniya huna.","english":"German is spoken here."}]', '[{"mistake":"Die Bewerbung wird von der Personalchef gepruft.","correction":"Die Bewerbung wird vom Personalchef gepruft.","explanation":"Nach \"von\" Dativ: \"vom Personalchef\" (von + dem)."},{"mistake":"Wenn ich mehr Zeit hatte, ich wurde kommen.","correction":"Wenn ich mehr Zeit hatte, wurde ich kommen.","explanation":"Verb im Hauptsatz direkt nach Komma: \"wurde ich\"."},{"mistake":"Ich wurde gern mehr verdienen. (falsch: \"Ich wurde gern mehr verdienen.\")","correction":"Ich wurde gern mehr verdienen.","explanation":"\"Wurde\" (Konjunktiv II), nicht \"wurde\" (Präteritum Passiv von werden)."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  (l_id, 'multiple_choice', 'Was bedeutet "die Weiterbildung"?', '["altatwir almihni","alratib","almuqabala","alistiqala"]', 'altatwir almihni', '"Weiterbildung" ist zusatzliche Bildung fur den Beruf.', 1, 1),
  (l_id, 'fill_gap', 'Die Gehalter _____ am Ende des Monats _____. (zahlen - Passiv)', '["werden / gezahlt","wird / gezahlt","werden / zahlen","sind / gezahlt"]', 'werden / gezahlt', 'Passiv Prasens, Plural: "werden ... gezahlt".', 1, 2),
  (l_id, 'translation', 'Ubersetze: "I would like to have a promotion."', '["Ich hatte gern eine Beforderung.","Ich habe eine Beforderung.","Ich hatte eine Beforderung.","Ich mochte eine Beforderung haben."]', 'Ich hatte gern eine Beforderung.', 'Konjunktiv II mit "hatte" fur hoflich- Wunsch.', 1, 3),
  (l_id, 'fill_gap', 'Wenn ich mehr Geld _____, wurde ich ein Haus kaufen.', '["hatte","habe","hatte","wurde haben"]', 'hatte', 'Konjunktiv II im wenn-Satz: "hatte".', 1, 4),
  (l_id, 'multiple_choice', 'Welcher Satz ist korrekt?', '["Die Stelle wird neu besetzt.","Die Stelle wird neu besetzen.","Die Stelle ist neu besetzen.","Die Stelle hat neu besetzt."]', 'Die Stelle wird neu besetzt.', 'Passiv Prasens: "wird ... besetzt".', 1, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  (l_id, 'multiple_choice', 'Was ist der Konjunktiv II von "haben" fur "wir"?', '["wir hatten","wir hatten","wir haben","wir wurden haben"]', 'wir hatten', 1, 1),
  (l_id, 'fill_blank', 'Das _____ eine tolle Moglichkeit! (sein - Konjunktiv II)', '["ware","ist","war","wurde sein"]', 'ware', 1, 2),
  (l_id, 'true_false', 'Im Passiv wird "werden" als Hilfsverb verwendet.', '["Richtig","Falsch"]', 'Richtig', 1, 3),
  (l_id, 'multiple_choice', 'Was bedeutet "der Erfolg"?', '["alnajah","alhadaf","alratib","alqism"]', 'alnajah', 1, 4),
  (l_id, 'fill_blank', 'Wenn ich die Stelle _____, ware ich sehr glucklich. (bekommen - Konjunktiv II)', '["beka me","bekam","bekomme","bekommen wurde"]', 'beka me', 1, 5),
  (l_id, 'true_false', '"Die Verantwortung" ist ein Synonym fur "die Aufgabe".', '["Richtig","Falsch"]', 'Falsch', 1, 6);

  -- Lesson 2.6: Test: Arbeit und Karriere
  insert into public.course_lessons (module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published)
  values (m_id, 'Test: Arbeit und Karriere', 'Abschlusstest fur Modul 2 - Arbeit und Karriere', 'Arbeit und Karriere', 'test', '["Learn key vocabulary","Practice grammar structures","Build comprehension skills","Apply in context","Review and reinforce"]', 40, 6, true)
  returning id into l_id;

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  (l_id, 'fill_gap', 'Ich _____ gern bei dieser Firma _____. (arbeiten - Konjunktiv II)', '["wurde / arbeiten","werde / arbeiten","will / arbeiten","hatte / gearbeitet"]', 'wurde / arbeiten', 'Konjunktiv II "wurde ... arbeiten" fur hoflich- Aussage.', 1, 1),
  (l_id, 'fill_gap', 'Die Bewerbung _____ vom Chef _____. (prufen - Passiv)', '["wird / gepruft","wurde / gepruft","ist / gepruft","hat / gepruft"]', 'wird / gepruft', 'Passiv Prasens: "wird ... gepruft".', 1, 2),
  (l_id, 'translation', 'Ubersetze: "If I had more experience, I would apply."', '["Wenn ich mehr Erfahrung hatte, wurde ich mich bewerben.","Wenn ich mehr Erfahrung habe, bewerbe ich mich.","Wenn ich mehr Erfahrung hatte, bewarb ich mich.","Wenn ich mehr Erfahrung hatte, bewerbe ich mich."]', 'Wenn ich mehr Erfahrung hatte, wurde ich mich bewerben.', 'Konjunktiv II in beiden Satzteilen: "hatte ... wurde ... bewerben".', 1, 3),
  (l_id, 'multiple_choice', 'Was ist die korrekte Form? "_____ Sie morgen Zeit?" (hoflich)', '["Hatten","Hatten","Haben","Hattet"]', 'Hatten', 'Hoflich- Frage im Konjunktiv II: "Hatten Sie ...?"', 1, 4),
  (l_id, 'fill_gap', 'Die Stelle _____ ab Mai neu besetzt. (Passiv)', '["wird","werden","ist","hat"]', 'wird', 'Passiv Prasens: "wird besetzt" (3. Person Singular).', 1, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  (l_id, 'multiple_choice', 'Was bedeutet "die Qualifikation"?', '["almu''ahhil","alkhibra","almuqabala","alratib"]', 'almu''ahhil', 1, 1),
  (l_id, 'true_false', 'Konjunktiv II wird nur fur die Vergangenheit verwendet.', '["Richtig","Falsch"]', 'Falsch', 1, 2),
  (l_id, 'fill_blank', 'Konjunktiv II von "sein" fur "ich": ich _____.', '["ware","ware","wurde sein","war"]', 'ware', 1, 3),
  (l_id, 'multiple_choice', 'Mit welcher Prap- wird der Handelnde im Passiv eingefuhrt?', '["von","mit","durch","fur"]', 'von', 1, 4),
  (l_id, 'true_false', '"Der Lebenslauf" bedeutet "alsira al-dhatiya".', '["Richtig","Falsch"]', 'Richtig', 1, 5),
  (l_id, 'multiple_choice', 'Was ist das Partizip von "prufen"?', '["pruft","gepruft","prufen","geprufen"]', 'gepruft', 1, 6),
  (l_id, 'fill_blank', 'Wenn ich die Stelle _____, wurde ich sofort anfangen. (bekommen - Konjunktiv II)', '["bekomme","beka me","bekam","bekommen wurde"]', 'beka me', 1, 7),
  (l_id, 'multiple_choice', 'Wie sagt man "I would like to work" auf Deutsch?', '["Ich wurde gern arbeiten.","Ich mochte gern arbeiten.","Ich will arbeiten.","Ich werde arbeiten."]', 'Ich wurde gern arbeiten.', 1, 8);

  -- Module 3: Medien und Technologie
  insert into public.course_modules (level_id, title, description, objectives, order_index, estimated_hours, is_published)
  values ('B1', 'Medien und Technologie', 'über Medien, Technologie und digitale Kommunikation sprechen. Relativsatze und Passiv mit Modalverben anwenden.', '["Relativsatze im Nominativ, Akkusativ und Dativ bilden","Die Relativpronomen der/die/das und welcher korrekt verwenden","Passiv mit Modalverben anwenden","über Medien, Technologie und soziale Netzwerke diskutieren","Einen technischen Sachverhalt beschreiben und erklaren"]', 3, 5.0, true)
  returning id into m_id;

  -- Lesson 3.1: Medien und Nachrichten
  insert into public.course_lessons (module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published)
  values (m_id, 'Medien und Nachrichten', 'Wichtige Vokabeln zu Medien, Presse und Nachrichten lernen', 'Medien und Technologie', 'vocabulary', '["Learn key vocabulary","Practice grammar structures","Build comprehension skills","Apply in context","Review and reinforce"]', 45, 1, true)
  returning id into l_id;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, order_index) values
  (l_id, 'die Medien', 'wasa''il al-i`lam', 'media', 'die', 'die Medien', 'noun', 'Die Medien berichten uber die Nachrichten.', 'The media report on the news.', 1),
  (l_id, 'die Zeitung', 'aljarida', 'newspaper', 'die', 'die Zeitungen', 'noun', 'Ich lese jeden Morgen die Zeitung.', 'I read the newspaper every morning.', 2),
  (l_id, 'die Zeitschrift', 'almajalla', 'magazine', 'die', 'die Zeitschriften', 'noun', 'Diese Zeitschrift erscheint monatlich.', 'This magazine is published monthly.', 3),
  (l_id, 'der Beitrag', 'almusahama/al-taqrir', 'contribution/article', 'der', 'die Beitrage', 'noun', 'Der Beitrag uber Technologie war sehr interessant.', 'The article about technology was very interesting.', 4),
  (l_id, 'der Sender', 'alqanat/almahatta', 'channel/station', 'der', 'die Sender', 'noun', 'Welcher Sender zeigt die Nachrichten?', 'Which channel broadcasts the news?', 5),
  (l_id, 'die Sendung', 'albarnamaj', 'broadcast/program', 'die', 'die Sendungen', 'noun', 'Die Sendung beginnt um 20 Uhr.', 'The program starts at 8 pm.', 6),
  (l_id, 'der Journalist', 'alsuhufi', 'journalist', 'der', 'die Journalisten', 'noun', 'Der Journalist recherchiert die Geschichte.', 'The journalist researches the story.', 7),
  (l_id, 'die Nachrichten', 'al-akhbar', 'news', 'die', 'die Nachrichten', 'noun', 'Die Nachrichten sind um 18 Uhr.', 'The news is at 6 pm.', 8);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  (l_id, 'Relativsatze - Nominativ und Akkusativ', 'Relativsatze geben zusatzliche Informationen uber eine Person oder Sache. Das Relativpronomen richtet sich nach Genus und Numerus des Bezugsworts und nach dem Kasus im Relativsatz.', '[{"rule":"Relativpronomen Nominativ: der (m), die (f), das (n), die (Pl).","note":"Der Mann, der dort steht, ist mein Chef."},{"rule":"Relativpronomen Akkusativ: den (m), die (f), das (n), die (Pl).","note":"Der Film, den ich gesehen habe, war gut."},{"rule":"Das Relativpronomen steht immer am Anfang des Relativsatzes.","note":"Das Buch, das ich lese, ist spannend."},{"rule":"Das Verb im Relativsatz steht am Ende.","note":"Die Frau, die neben mir wohnt, ist Arztin."},{"rule":"Bei Prap- im Relativsatz steht die Prap- vor dem Relativpronomen.","note":"Der Stuhl, auf dem ich sitze, ist beqüm."}]', '[{"german":"Der Mann, der dort arbeitet, ist Journalist.","arabic":"alrajul aldhi ya`mal hunaka huwa suhufi.","english":"The man who works there is a journalist."},{"german":"Die Zeitung, die ich lese, ist sehr bekannt.","arabic":"aljarida allati aqra''uha mashhura jiddan.","english":"The newspaper that I read is very well-known."},{"german":"Das Programm, das um 20 Uhr kommt, ist interessant.","arabic":"albarnamaj aldhi ya''ti alsa`a 8 muthir lil-ihtimam.","english":"The program that comes at 8 pm is interesting."},{"german":"Der Beitrag, den ich geschrieben habe, wurde veroffentlicht.","arabic":"altaqrir aldhi katabtuhu tumm nashruhu.","english":"The article that I wrote was published."},{"german":"Die Journalisten, die die Recherche machten, gewannen einen Preis.","arabic":"alsuhufiyun aldhi qamu bilibhath fau bi-ja''iza.","english":"The journalists who did the research won an award."}]', '[{"mistake":"Der Mann, der dort steht. (falsch: \"Der Mann, welcher dort steht.\")","correction":"Beides ist korrekt: \"der\" oder \"welcher\".","explanation":"\"Welcher\" ist formeller, aber \"der\" ist gebrauchlicher."},{"mistake":"Der Film, den ich habe gesehen, war gut.","correction":"Der Film, den ich gesehen habe, war gut.","explanation":"Verb im Relativsatz am Ende: \"gesehen habe\"."},{"mistake":"Die Frau, die ich gesehen habe. (falscher Kasus: \"die\" statt \"die\" - Nominativ = Akkusativ hier)","correction":"Die Frau, die ich gesehen habe. (ist korrekt)","explanation":"Im Akkusativ bleibt \"die\" fur feminin gleich."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  (l_id, 'fill_gap', 'Der Mann, _____ dort arbeitet, ist mein Kollege.', '["der","den","dem","die"]', 'der', 'Nominativ: "der Mann, der dort arbeitet".', 1, 1),
  (l_id, 'fill_gap', 'Die Zeitung, _____ ich kaufe, ist die Suddeutsche.', '["die","der","den","das"]', 'die', '"Die Zeitung" (feminin), Akkusativ: "die ich kaufe".', 1, 2),
  (l_id, 'translation', 'Ubersetze: "The article that I read was interesting."', '["Der Beitrag, den ich gelesen habe, war interessant.","Der Beitrag, der ich gelesen habe, war interessant.","Der Beitrag, dem ich gelesen habe, war interessant.","Der Beitrag, das ich gelesen habe, war interessant."]', 'Der Beitrag, den ich gelesen habe, war interessant.', 'Beitrag (m), Akkusativ: "den ich gelesen habe".', 1, 3),
  (l_id, 'multiple_choice', 'Was bedeutet "der Sender"?', '["almursil","alqanat/almahatta","alrisala","alsuhufi"]', 'alqanat/almahatta', '"Der Sender" ist der Fernseh- oder Radiosender.', 1, 4),
  (l_id, 'fill_gap', 'Das ist die Sendung, _____ ich am liebsten mag.', '["die","der","den","das"]', 'die', '"Die Sendung" (feminin), Akkusativ: "die ich mag".', 1, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  (l_id, 'multiple_choice', 'Was bedeutet "der Beitrag"?', '["altaqrir/almusahama","albarnamaj","almajalla","alsuhufi"]', 'altaqrir/almusahama', 1, 1),
  (l_id, 'fill_blank', 'Der Film, _____ ich gesehen habe, war spannend. (Relativpronomen Akkusativ)', '["den","der","dem","die"]', 'den', 1, 2),
  (l_id, 'true_false', 'Im Relativsatz steht das Verb am Satzanfang.', '["Richtig","Falsch"]', 'Falsch', 1, 3),
  (l_id, 'multiple_choice', 'Welches Relativpronomen ist korrekt fur "die Zeitung" im Nominativ?', '["der","die","das","den"]', 'die', 1, 4),
  (l_id, 'fill_blank', 'Die Nachrichten, _____ um 18 Uhr kommen, sind wichtig.', '["die","der","den","das"]', 'die', 1, 5),
  (l_id, 'true_false', '"Der Journalist" bedeutet "alsuhufi".', '["Richtig","Falsch"]', 'Richtig', 1, 6);

  -- Lesson 3.2: Technologie und digitale Welt
  insert into public.course_lessons (module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published)
  values (m_id, 'Technologie und digitale Welt', 'Vokabular zu Computern, Internet und digitaler Technologie lernen', 'Medien und Technologie', 'vocabulary', '["Learn key vocabulary","Practice grammar structures","Build comprehension skills","Apply in context","Review and reinforce"]', 45, 2, true)
  returning id into l_id;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, order_index) values
  (l_id, 'der Computer', 'alkumbiyutar', 'computer', 'der', 'die Computer', 'noun', 'Mein Computer ist sehr schnell.', 'My computer is very fast.', 1),
  (l_id, 'das Internet', 'al-internet', 'internet', 'das', NULL, 'noun', 'Das Internet verbindet Menschen weltweit.', 'The internet connects people worldwide.', 2),
  (l_id, 'die Software', 'albarmajiyat', 'software', 'die', 'die Softwares', 'noun', 'Die Software muss aktualisiert werden.', 'The software needs to be updated.', 3),
  (l_id, 'das Handy', 'alhatif almahmul', 'mobile phone', 'das', 'die Handys', 'noun', 'Ohne mein Handy bin ich verloren.', 'Without my mobile phone I am lost.', 4),
  (l_id, 'die App', 'altatbiq', 'app', 'die', 'die Apps', 'noun', 'Diese App hilft beim Deutschlernen.', 'This app helps with learning German.', 5),
  (l_id, 'die Website', 'almawqi'' al-ilktruni', 'website', 'die', 'die Websites', 'noun', 'Die Website ist sehr benutzerfreundlich.', 'The website is very user-friendly.', 6),
  (l_id, 'das Passwort', 'kalimat almurur', 'password', 'das', 'die Passworter', 'noun', 'Ich habe mein Passwort vergessen.', 'I forgot my password.', 7),
  (l_id, 'die Datei', 'almalaf', 'file', 'die', 'die Dateien', 'noun', 'Die Datei ist zu gross zum Anhangen.', 'The file is too large to attach.', 8);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  (l_id, 'Relativsatze - Dativ und Relativpronomen "welcher"', 'Im Dativ werden die Relativpronomen zu "dem" (m/n), "der" (f) und "denen" (Pl). Die Alternative "welcher/welche/welches" ist formeller und wird besonders in der Schriftsprache verwendet.', '[{"rule":"Relativpronomen Dativ: dem (m/n), der (f), denen (Pl).","note":"Der Mann, dem ich geholfen habe, dankte mir."},{"rule":"Nach Prap- im Relativsatz: Prap- + Relativpronomen im Dativ oder Akkusativ.","note":"Die Firma, bei der ich arbeite, ist international."},{"rule":"\"welcher/welche/welches\" ist synonym zu \"der/die/das\", aber formeller.","note":"Der Mann, welcher dort steht = Der Mann, der dort steht."},{"rule":"\"welcher\" wird dekliniert: welcher (m), welche (f), welches (n), welche (Pl).","note":"welcher - welchen - welchem, welche - welche - welcher, welches - welches - welchem"},{"rule":"Im Genitiv: dessen (m/n), deren (f/Pl) - für Besitzverhältnisse.","note":"Der Mann, dessen Auto gestohlen wurde, rief die Polizei."}]', '[{"german":"Der Kollege, dem ich vertraue, hilft mir oft.","arabic":"alzamil aldhi athiq bihi yusa`iduni kathiran.","english":"The colleague whom I trust often helps me."},{"german":"Die Firma, fur die ich arbeite, ist erfolgreich.","arabic":"alsharika allati a`mal ladayha najiha.","english":"The company I work for is successful."},{"german":"Das Programm, mit dem ich arbeite, ist neu.","arabic":"albarnamaj aldhi a`mal bihi jadid.","english":"The program I work with is new."},{"german":"Die Kunden, denen wir helfen, sind zufrieden.","arabic":"al`umala'' aldhi nusa`iduhum radun.","english":"The customers whom we help are satisfied."},{"german":"Der Journalist, welcher den Artikel schrieb, gewann einen Preis.","arabic":"alsuhufi aldhi katab almaqal faza bi-ja''iza.","english":"The journalist who wrote the article won an award."}]', '[{"mistake":"Der Mann, dem ich helfe. (aber: \"Der Mann, den ich helfe\")","correction":"Der Mann, dem ich helfe.","explanation":"\"Helfen\" verlangt den Dativ: \"dem Mann\"."},{"mistake":"Die Firma, die ich arbeite. (falsch - fehlende Prap-)","correction":"Die Firma, bei der ich arbeite.","explanation":"\"Bei der Firma\" - die Prap- \"bei\" muss im Relativsatz stehen."},{"mistake":"Der Mann, welcher ich gesehen habe.","correction":"Der Mann, den ich gesehen habe. (oder: welchen)","explanation":"Im Akkusativ: \"den\" (oder \"welchen\"), nicht \"welcher\" (Nominativ)."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  (l_id, 'fill_gap', 'Der Computer, _____ ich arbeite, ist sehr alt.', '["mit dem","mit den","mit der","mit das"]', 'mit dem', '"Der Computer" (m), Dativ nach "mit": "mit dem Computer - mit dem ich arbeite".', 1, 1),
  (l_id, 'fill_gap', 'Die App, _____ ich taglich nutze, ist praktisch.', '["die","der","dem","den"]', 'die', '"Die App" (f), Akkusativ: "die ich taglich nutze".', 1, 2),
  (l_id, 'translation', 'Ubersetze: "The man whom I helped is my neighbor."', '["Der Mann, dem ich geholfen habe, ist mein Nachbar.","Der Mann, den ich geholfen habe, ist mein Nachbar.","Der Mann, der ich geholfen habe, ist mein Nachbar.","Der Mann, welcher ich geholfen habe, ist mein Nachbar."]', 'Der Mann, dem ich geholfen habe, ist mein Nachbar.', '"Helfen" + Dativ: "dem ich geholfen habe".', 1, 3),
  (l_id, 'multiple_choice', 'Was bedeutet "die Datei"?', '["almalaf","albayanat","altatbiq","kalimat almurur"]', 'almalaf', '"Die Datei" ist eine computer file.', 1, 4),
  (l_id, 'fill_gap', 'Die Kunden, _____ wir einen Service bieten, sind zufrieden.', '["denen","den","der","die"]', 'denen', 'Dativ Plural: "denen" (den Kunden).', 1, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  (l_id, 'multiple_choice', 'Was bedeutet "das Passwort"?', '["kalimat almurur","almalaf","altatbiq","albayanat"]', 'kalimat almurur', 1, 1),
  (l_id, 'fill_blank', 'Die Website, _____ ich besuche, ist sehr nutzlich. (Relativpronomen)', '["die","der","den","das"]', 'die', 1, 2),
  (l_id, 'true_false', '"Welcher" ist ein Synonym fur "der" in Relativsatzen.', '["Richtig","Falsch"]', 'Richtig', 1, 3),
  (l_id, 'multiple_choice', 'Dativ Plural des Relativpronomens?', '["denen","den","der","die"]', 'denen', 1, 4),
  (l_id, 'fill_blank', 'Der Arzt, _____ ich vertraue, ist sehr kompetent. (Dativ)', '["dem","den","der","die"]', 'dem', 1, 5),
  (l_id, 'true_false', '"Die Software" bedeutet "albarmajiyat".', '["Richtig","Falsch"]', 'Richtig', 1, 6);

  -- Lesson 3.3: Relativsatze und Passiv mit Modalverben
  insert into public.course_lessons (module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published)
  values (m_id, 'Relativsatze und Passiv mit Modalverben', 'Relativsatze in allen Fallen und das Passiv mit Modalverben sicher anwenden', 'Medien und Technologie', 'grammar', '["Learn key vocabulary","Practice grammar structures","Build comprehension skills","Apply in context","Review and reinforce"]', 60, 3, true)
  returning id into l_id;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, order_index) values
  (l_id, 'herunterladen', 'yuhammil/yunazzil', 'to download', NULL, NULL, 'verb', 'Ich lade die Datei herunter.', 'I download the file.', 1),
  (l_id, 'hochladen', 'yarfa`', 'to upload', NULL, NULL, 'verb', 'Er ladet ein Video auf YouTube hoch.', 'He uploads a video to YouTube.', 2),
  (l_id, 'aktualisieren', 'yuhaddith', 'to update', NULL, NULL, 'verb', 'Die Software muss aktualisiert werden.', 'The software must be updated.', 3),
  (l_id, 'installieren', 'yuthabbit', 'to install', NULL, NULL, 'verb', 'Ich installiere ein neüs Programm.', 'I install a new program.', 4),
  (l_id, 'lÃ¶schen', 'yamsah/yuhdhif', 'to delete', NULL, NULL, 'verb', 'Ich lÃ¶sche die alten Dateien.', 'I delete the old files.', 5),
  (l_id, 'speichern', 'yahfadh', 'to save', NULL, NULL, 'verb', 'Vergiss nicht, die Datei zu speichern!', 'Do not forget to save the file!', 6),
  (l_id, 'die Verbindung', 'al-ittisal', 'connection', 'die', 'die Verbindungen', 'noun', 'Die Internetverbindung ist langsam.', 'The internet connection is slow.', 7);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  (l_id, 'Passiv mit Modalverben und Relativsatze im Genitiv', 'Das Passiv mit Modalverben druckt aus, was getan werden muss, kann, darf oder soll. Bildung: Modalverb (konjugiert) + Partizip Perfekt + "werden". Der Relativsatz im Genitiv (dessen/deren) zeigt Besitz an.', '[{"rule":"Passiv mit Modalverben: Modalverb + Partizip Perfekt + werden (am Satzende).","note":"Die Software muss installiert werden."},{"rule":"Konjugation: Das Modalverb wird konjugiert, \"werden\" bleibt im Infinitiv.","note":"Das kann gemacht werden. / Die Dateien kÃ¶nnen gelÃ¶scht werden."},{"rule":"Position: Modalverb an Position 2, Partizip + werden am Satzende.","note":"Das Passwort muÃŸ geÃ¤ndert werden."},{"rule":"Relativpronomen im Genitiv: dessen (m/n Singular), deren (f Singular + Plural).","note":"Der Mann, dessen Computer kaputt ist ... Die Frau, deren Handy klingelt ..."},{"rule":"Der Genitiv zeigt Besitz an: \"der Computer des Mannes\" â†’ \"der Mann, dessen Computer\".","note":"Der Kunde, dessen Daten gestohlen wurden, ist verargert."}]', '[{"german":"Die Software muÃŸ aktualisiert werden.","arabic":"yajib tahdith albarmajiyat.","english":"The software must be updated."},{"german":"Die Dateien kÃ¶nnen gelÃ¶scht werden.","arabic":"yumkin hadhf almalafat.","english":"The files can be deleted."},{"german":"Das Passwort darf nicht weitergegeben werden.","arabic":"la yajuz mubadala kalimat almurur.","english":"The password must not be shared."},{"german":"Der Mann, dessen Computer gestohlen wurde, ist verzweifelt.","arabic":"alrajul alladhi suriqa hasubuhu ya''is.","english":"The man whose computer was stolen is desperate."},{"german":"Die Firma, deren Website aktualisiert wird, ist erfolgreich.","arabic":"alsharika allati yatim tahdith mawqi`iha iliktruni najiha.","english":"The company whose website is being updated is successful."}]', '[{"mistake":"Die Software muÃŸ aktualisiert werden. (falsch: \"Die Software muÃŸ werden aktualisiert\")","correction":"Die Software muÃŸ aktualisiert werden.","explanation":"Partizip + \"werden\" stehen zusammen am Satzende."},{"mistake":"Der Mann, dessen Computer ist kaputt.","correction":"Der Mann, dessen Computer kaputt ist.","explanation":"Verb im Relativsatz am Ende: \"kaputt ist\"."},{"mistake":"Das kann gemacht werden. (Verwechslung: \"Das kann gemacht sein.\")","correction":"Das kann gemacht werden.","explanation":"Passiv mit Modalverb braucht \"werden\" (nicht \"sein\")."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  (l_id, 'fill_gap', 'Die Software _____ installiert _____. (mÃ¼ssen - Passiv)', '["muÃŸ / werden","muÃŸ / sein","muÃŸ / worden","mÃ¼ssen / werden"]', 'muÃŸ / werden', 'Passiv mit Modalverb: "muÃŸ ... installiert werden".', 1, 1),
  (l_id, 'fill_gap', 'Die Dateien _____ gelÃ¶scht _____. (kÃ¶nnen - Passiv)', '["kÃ¶nnen / werden","kann / werden","kÃ¶nnen / sein","kÃ¶nnen / geworden"]', 'kÃ¶nnen / werden', 'Plural: "kÃ¶nnen ... gelÃ¶scht werden".', 1, 2),
  (l_id, 'translation', 'Ãœbersetze: "The man whose laptop is broken."', '["Der Mann, dessen Laptop kaputt ist.","Der Mann, deren Laptop kaputt ist.","Der Mann, den Laptop kaputt ist.","Der Mann, dem Laptop kaputt ist."]', 'Der Mann, dessen Laptop kaputt ist.', 'Maskulin Singular Genitiv: "dessen Laptop".', 1, 3),
  (l_id, 'multiple_choice', 'Was bedeutet "aktualisieren"?', '["yuthabbit","yuhaddith","yahdhif","yahfadh"]', 'yuhaddith', '"Aktualisieren" bedeutet auf den neüsten Stand bringen (update).', 1, 4),
  (l_id, 'fill_gap', 'Das Passwort _____ geÃ¤ndert _____. (sollen - Passiv)', '["soll / werden","soll / sein","sollte / werden","sollen / werden"]', 'soll / werden', '"Soll ... geÃ¤ndert werden" = should be changed.', 1, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  (l_id, 'multiple_choice', 'Was bedeutet "lÃ¶schen"?', '["yamsah","yahfadh","yuthabbit","yarfa`"]', 'yamsah', 1, 1),
  (l_id, 'fill_blank', 'Die App _____ heruntergeladen _____. (kÃ¶nnen - Passiv)', '["kann / werden","kann / sein","kÃ¶nnen / werden","kann / geworden"]', 'kann / werden', 1, 2),
  (l_id, 'true_false', 'Im Passiv mit Modalverben steht "werden" im Infinitiv am Satzende.', '["Richtig","Falsch"]', 'Richtig', 1, 3),
  (l_id, 'multiple_choice', 'Genitiv-Relativpronomen fÃ¼r feminin Singular?', '["deren","dessen","der","die"]', 'deren', 1, 4),
  (l_id, 'fill_blank', 'Der Kunde, _____ Daten gestohlen wurden, ist verÃ¤rgert. (Genitiv)', '["dessen","deren","dem","den"]', 'dessen', 1, 5),
  (l_id, 'true_false', '"Herunterladen" bedeutet "yarfa`".', '["Richtig","Falsch"]', 'Falsch', 1, 6);

  -- Lesson 3.4: Diskussion Ã¼ber Medien und Technologie
  insert into public.course_lessons (module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published)
  values (m_id, 'Diskussion Ã¼ber Medien und Technologie', 'Ãœber Medienkonsum und Technologie diskutieren â€“ HÃ¶r- und SprechÃ¼bungen', 'Medien und Technologie', 'listening', '["Learn key vocabulary","Practice grammar structures","Build comprehension skills","Apply in context","Review and reinforce"]', 50, 4, true)
  returning id into l_id;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, order_index) values
  (l_id, 'die Diskussion', 'al-munaqasha', 'discussion', 'die', 'die Diskussionen', 'noun', 'Wir hatten eine interessante Diskussion Ã¼ber Medien.', 'We had an interesting discussion about media.', 1),
  (l_id, 'die Meinung', 'al-ra''y', 'opinion', 'die', 'die Meinungen', 'noun', 'Meiner Meinung nach ist Technologie wichtig.', 'In my opinion, technology is important.', 2),
  (l_id, 'der EinfluÃŸ', 'al-ta''thir', 'inflünce', 'der', 'die EinflÃ¼sse', 'noun', 'Die Medien haben einen groÃŸen EinfluÃŸ auf die Gesellschaft.', 'The media have a great inflünce on society.', 3),
  (l_id, 'die Sucht', 'al-idman', 'addiction', 'die', 'die SÃ¼chte', 'noun', 'Handysucht ist ein wachsendes Problem.', 'Smartphone addiction is a growing problem.', 4),
  (l_id, 'die PrivatsphÃ¤re', 'al-khususiya', 'privacy', 'die', NULL, 'noun', 'Die PrivatsphÃ¤re im Internet ist wichtig.', 'Privacy on the internet is important.', 5),
  (l_id, 'der Datenschutz', 'himayat albayanat', 'data protection', 'der', NULL, 'noun', 'Datenschutz wird immer wichtiger.', 'Data protection is becoming more and more important.', 6),
  (l_id, 'die Nachricht', 'alrisala/alkhabar', 'message/news item', 'die', 'die Nachrichten', 'noun', 'Ich habe eine Nachricht von meinem Freund bekommen.', 'I got a message from my friend.', 7);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  (l_id, 'RelativsÃ¤tze und Passiv mit Modalverben in Diskussionen', 'In Diskussionen Ã¼ber Medien und Technologie verwendest du RelativsÃ¤tze, um genau zu beschreiben, worÃ¼ber du sprichst, und das Passiv mit Modalverben, um auszudrÃ¼cken, was erlaubt, verboten oder notwendig ist.', '[{"rule":"RelativsÃ¤tze in Diskussionen: \"Die Medien, die wir tÃ¤glich nutzen, beeinflussen uns.\"","note":"Verwende RelativsÃ¤tze, um deine Aussagen zu prÃ¤zisieren."},{"rule":"Passiv mit Modalverben in Argumenten: \"Die PrivatsphÃ¤re muÃŸ geschÃ¼tzt werden.\"","note":"DrÃ¼ckt Notwendigkeit oder MÃ¶glichkeit aus."},{"rule":"Meinungen mit Konjunktiv II: \"Ich wÃ¼rde sagen, dass ...\"","note":"HÃ¶fliche DiskussionsbeitrÃ¤ge mit Konjunktiv II."},{"rule":"Widerspruch: \"Obwohl die Technologie Vorteile hat, ...\"","note":"NebensÃ¤tze mit obwohl fÃ¼r Gegenargumente."}]', '[{"german":"Die Medien, die wir tÃ¤glich nutzen, haben einen groÃŸen EinfluÃŸ.","arabic":"wasa''il al-i`lam allati nastakhdimuha yawmiyyan laha ta''thir kabir.","english":"The media that we use daily have a great inflünce."},{"german":"Die PrivatsphÃ¤re muÃŸ im Internet geschÃ¼tzt werden.","arabic":"yajib himayat alkhususiya `ala al-internet.","english":"Privacy must be protected on the internet."},{"german":"Meiner Meinung nach kann Technologie positiv genutzt werden.","arabic":"bira''yi, yumkin istikhdam altiknulujiya bi-shakl ijabi.","english":"In my opinion, technology can be used positively."},{"german":"Obwohl Handys praktisch sind, kÃ¶nnen sie sÃ¼chtig machen.","arabic":"`ala al-raghm min an al-hawatif al-mahmula `amaliya, illa annaha yumkin an tusabbib al-idman.","english":"Although mobile phones are practical, they can be addictive."}]', '[{"mistake":"Meiner Meinung nach kann Technologie positiv genutzt werden. (Wortstellung)","correction":"Meiner Meinung nach kann Technologie positiv genutzt werden. (korrekt)","explanation":"\"Meiner Meinung nach\" ist korrekt am Satzanfang mit Verb an Position 2."},{"mistake":"Ich wÃ¼rde sagen, dass die Medien EinfluÃŸ haben.","correction":"Ich wÃ¼rde sagen, dass die Medien EinfluÃŸ haben.","explanation":"\"DaÃŸ\"-Satz mit Verb am Ende: \"daÃŸ die Medien EinfluÃŸ haben\"."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  (l_id, 'multiple_choice', 'Was bedeutet "die PrivatsphÃ¤re"?', '["al-khususiya","al-`alan","al-huriya","almusharaka"]', 'al-khususiya', '"PrivatsphÃ¤re" ist der private Bereich (privacy).', 1, 1),
  (l_id, 'fill_gap', 'Die PrivatsphÃ¤re _____ geschÃ¼tzt _____. (mÃ¼ssen - Passiv)', '["muÃŸ / werden","muÃŸ / sein","mÃ¼ssen / werden","muÃŸ / geworden"]', 'muÃŸ / werden', 'Die PrivatsphÃ¤re (Singular): "muÃŸ ... geschÃ¼tzt werden".', 1, 2),
  (l_id, 'translation', 'Ãœbersetze: "The data must be protected."', '["Die Daten mÃ¼ssen geschÃ¼tzt werden.","Die Daten mÃ¼ssen schÃ¼tzen.","Die Daten mÃ¼ssen geschÃ¼tzt sein.","Die Daten mÃ¼ssen beschÃ¼tzt werden."]', 'Die Daten mÃ¼ssen geschÃ¼tzt werden.', 'Plural: "Die Daten mÃ¼ssen geschÃ¼tzt werden."', 1, 3),
  (l_id, 'multiple_choice', 'Was bedeutet "die Sucht"?', '["al-idman","al-huriya","al-ra''y","al-ta''thir"]', 'al-idman', '"Die Sucht" ist eine starke Abhangigkeit.', 1, 4),
  (l_id, 'fill_gap', 'Technologie _____ sinnvoll genutzt _____. (kÃ¶nnen - Passiv)', '["kann / werden","kann / sein","kÃ¶nnen / werden","kann / geworden"]', 'kann / werden', '"Kann ... genutzt werden" = can be used.', 1, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  (l_id, 'multiple_choice', 'Was bedeutet "die Diskussion"?', '["al-munaqasha","almuhadatha","al-risala","al-ra''y"]', 'al-munaqasha', 1, 1),
  (l_id, 'fill_blank', 'Der Datenschutz _____ verbessert _____. (sollen - Passiv)', '["soll / werden","soll / sein","sollte / werden","sollen / werden"]', 'soll / werden', 1, 2),
  (l_id, 'true_false', '"Die Meinung" bedeutet "al-ra''y".', '["Richtig","Falsch"]', 'Richtig', 1, 3),
  (l_id, 'multiple_choice', 'Welches Relativpronomen ist korrekt fÃ¼r "die Medien" im Nominativ?', '["die","der","das","den"]', 'die', 1, 4),
  (l_id, 'fill_blank', 'Das Gesetz, _____ der Datenschutz geregelt wird, ist wichtig. (PrÃ¤position + Relativpronomen)', '["mit dem","in dem","durch das","fÃ¼r das"]', 'in dem', 1, 5),
  (l_id, 'true_false', '"Der EinfluÃŸ" bedeutet "al-ta''thir".', '["Richtig","Falsch"]', 'Richtig', 1, 6);

  -- Lesson 3.5: Wiederholung: Medien und Technologie
  insert into public.course_lessons (module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published)
  values (m_id, 'Wiederholung: Medien und Technologie', 'Alle Themen aus Modul 3 wiederholen und festigen', 'Medien und Technologie', 'review', '["Learn key vocabulary","Practice grammar structures","Build comprehension skills","Apply in context","Review and reinforce"]', 45, 5, true)
  returning id into l_id;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, order_index) values
  (l_id, 'die Soziale Medien', 'wasa''il al-tawasul al-ijtima`i', 'social media', 'die', NULL, 'noun', 'Soziale Medien sind heute sehr wichtig.', 'Social media are very important today.', 1),
  (l_id, 'der Algorithmus', 'al-khawarizmiya', 'algorithm', 'der', 'die Algorithmen', 'noun', 'Der Algorithmus zeigt mir interessante Inhalte.', 'The algorithm shows me interesting content.', 2),
  (l_id, 'die Firewall', 'jadar al-nar', 'firewall', 'die', 'die Firewalls', 'noun', 'Die Firewall schÃ¼tzt den Computer.', 'The firewall protects the computer.', 3),
  (l_id, 'das Netzwerk', 'al-shabaka', 'network', 'das', 'die Netzwerke', 'noun', 'Das Netzwerk ist sicher.', 'The network is secure.', 4),
  (l_id, 'die Cloud', 'alsahabat', 'cloud', 'die', 'die Clouds', 'noun', 'Meine Dateien sind in der Cloud gespeichert.', 'My files are stored in the cloud.', 5),
  (l_id, 'drucken', 'yatba`', 'to print', NULL, NULL, 'verb', 'Ich drucke das Dokument aus.', 'I print the document.', 6),
  (l_id, 'abstÃ¼rzen', 'yata`attal/yatam', 'to crash', NULL, NULL, 'verb', 'Mein Computer ist abgestÃ¼rzt.', 'My computer crashed.', 7);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  (l_id, 'Wiederholung: RelativsÃ¤tze und Passiv mit Modalverben', 'In dieser Lektion wiederholen wir die RelativsÃ¤tze in allen FÃ¤llen (Nominativ, Akkusativ, Dativ, Genitiv) und das Passiv mit Modalverben.', '[{"rule":"Relativpronomen: Nominativ (der/die/das/die), Akkusativ (den/die/das/die), Dativ (dem/der/dem/denen).","note":"Welcher/welche/welches als formelle Alternative."},{"rule":"Im Relativsatz steht das Verb am Ende.","note":"Der Film, den ich gesehen habe, war gut."},{"rule":"Relativpronomen im Genitiv: dessen (m/n), deren (f/Pl) fÃ¼r Besitz.","note":"Der Kunde, dessen Daten gestohlen wurden ..."},{"rule":"Passiv mit Modalverben: Modalverb + Partizip + werden.","note":"Das muÃŸ gemacht werden. / Das kann geÃ¤ndert werden."}]', '[{"german":"Der Computer, mit dem ich arbeite, ist neu.","arabic":"alkumbiyutar aldhi a`mal bihi jadid.","english":"The computer I work with is new."},{"german":"Die Daten mÃ¼ssen geschÃ¼tzt werden.","arabic":"yajib himayat albayanat.","english":"The data must be protected."},{"german":"Der Journalist, dessen Artikel ich gelesen habe, ist bekannt.","arabic":"alsuhufi aldhi qara''tu maqalahu mashhur.","english":"The journalist whose article I read is famous."},{"german":"Die App, die ich installiert habe, funktioniert gut.","arabic":"altatbiq aldhi qumtu bitashbihii ya`mal jayyidan.","english":"The app I installed works well."},{"german":"Die PasswÃ¶rter sollten regelmÃ¤ÃŸig geÃ¤ndert werden.","arabic":"yajib taghyir kalimat almurur bintidam.","english":"Passwords should be changed regularly."}]', '[{"mistake":"Der Mann den ich sehe (falsch: Kasus)","correction":"Der Mann, den ich sehe.","explanation":"Akkusativ: \"den\" (nicht \"der\") nach transitive-n Verben."},{"mistake":"Die Frau deren Computer kaputt ist (falsch fÃ¼r Mann)","correction":"Die Frau, deren Computer kaputt ist.","explanation":"Feminin: \"deren\" (nicht \"dessen\")."},{"mistake":"Die Daten mÃ¼ssen geschÃ¼tzt werden. (aber: Die Datei muÃŸ gelÃ¶scht werden.)","correction":"Die Daten mÃ¼ssen geschÃ¼tzt werden.","explanation":"Plural: \"mÃ¼ssen\" - Singular: \"muÃŸ\"."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  (l_id, 'multiple_choice', 'Was bedeutet "das Netzwerk"?', '["al-shabaka","almalaf","alsahabat","altatbiq"]', 'al-shabaka', '"Netzwerk" ist ein Netzwerk von Computern.', 1, 1),
  (l_id, 'fill_gap', 'Der Film, _____ ich gesehen habe, war spannend.', '["den","der","dem","die"]', 'den', 'Film (m), Akkusativ: "den ich gesehen habe".', 1, 2),
  (l_id, 'translation', 'Ãœbersetze: "The password must be changed."', '["Das Passwort muÃŸ geÃ¤ndert werden.","Das Passwort muÃŸ Ã¤ndern.","Das Passwort muÃŸ geÃ¤ndert sein.","Das Passwort Ã¤ndert werden."]', 'Das Passwort muÃŸ geÃ¤ndert werden.', 'Passiv mit Modalverb: "muÃŸ ... geÃ¤ndert werden".', 1, 3),
  (l_id, 'fill_gap', 'Der Kunde, _____ Rechnung nicht bezahlt wurde, erhielt eine Mahnung.', '["dessen","deren","dem","den"]', 'dessen', 'Maskulin Genitiv: "dessen Rechnung".', 1, 4),
  (l_id, 'multiple_choice', 'Welcher Satz ist korrekt?', '["Die Software muÃŸ installiert werden.","Die Software muÃŸ werden installiert.","Die Software muÃŸ installiert sein.","Die Software muÃŸ installiert geworden."]', 'Die Software muÃŸ installiert werden.', 'Passiv: Modalverb + Partizip + werden (am Ende).', 1, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  (l_id, 'multiple_choice', 'Was ist der Dativ von "der" im Relativpronomen?', '["dem","den","der","die"]', 'dem', 1, 1),
  (l_id, 'fill_blank', 'Passiv mit "kÃ¶nnen": Die Datei _____ gelÃ¶scht _____.', '["kann / werden","kann / sein","kÃ¶nnen / werden","kann / geworden"]', 'kann / werden', 1, 2),
  (l_id, 'true_false', 'Relativpronomen im Genitiv fÃ¼r feminin ist "deren".', '["Richtig","Falsch"]', 'Richtig', 1, 3),
  (l_id, 'multiple_choice', 'Was bedeutet "die Cloud"?', '["alsahabat","al-shabaka","almalaf","kalimat almurur"]', 'alsahabat', 1, 4),
  (l_id, 'fill_blank', 'Der Mann, _____ ich vertraue, ist ehrlich. (Dativ)', '["dem","den","der","dessen"]', 'dem', 1, 5),
  (l_id, 'true_false', 'Im Relativsatz steht das konjugierte Verb an Position 2.', '["Richtig","Falsch"]', 'Falsch', 1, 6);

  -- Lesson 3.6: Test: Medien und Technologie
  insert into public.course_lessons (module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published)
  values (m_id, 'Test: Medien und Technologie', 'Abschlusstest fÃ¼r Modul 3 â€“ Medien und Technologie', 'Medien und Technologie', 'test', '["Learn key vocabulary","Practice grammar structures","Build comprehension skills","Apply in context","Review and reinforce"]', 40, 6, true)
  returning id into l_id;

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  (l_id, 'fill_gap', 'Der Journalist, _____ den Artikel schrieb, ist bekannt.', '["der","den","dem","die"]', 'der', 'Nominativ Relativpronomen: "der den Artikel schrieb".', 1, 1),
  (l_id, 'fill_gap', 'Die Daten _____ geschÃ¼tzt _____. (mÃ¼ssen - Passiv)', '["mÃ¼ssen / werden","muÃŸ / werden","mÃ¼ssen / sein","mÃ¼ssen / geworden"]', 'mÃ¼ssen / werden', 'Passiv mit Modalverb, Plural: "mÃ¼ssen ... geschÃ¼tzt werden".', 1, 2),
  (l_id, 'translation', 'Ãœbersetze: "The app that I use daily is very helpful."', '["Die App, die ich tÃ¤glich nutze, ist sehr hilfreich.","Die App, der ich tÃ¤glich nutze, ist sehr hilfreich.","Die App, den ich tÃ¤glich nutze, ist sehr hilfreich.","Die App, das ich tÃ¤glich nutze, ist sehr hilfreich."]', 'Die App, die ich tÃ¤glich nutze, ist sehr hilfreich.', 'App (f), Akkusativ: "die ich tÃ¤glich nutze".', 1, 3),
  (l_id, 'multiple_choice', 'Was ist der Genitiv von "die Journalisten" im Relativpronomen?', '["deren","dessen","der","denen"]', 'deren', 'Plural Genitiv: "deren".', 1, 4),
  (l_id, 'fill_gap', 'Das Passwort _____ regelmÃ¤ÃŸig geÃ¤ndert _____. (sollen - Passiv)', '["soll / werden","soll / sein","sollte / werden","sollen / werden"]', 'soll / werden', 'Passiv mit Modalverb: "soll ... geÃ¤ndert werden".', 1, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  (l_id, 'multiple_choice', 'Was bedeutet "der Sender"?', '["alqanat/almahatta","aljarida","almajalla","albarnamaj"]', 'alqanat/almahatta', 1, 1),
  (l_id, 'true_false', 'Relativpronomen im Dativ maskulin ist "dem".', '["Richtig","Falsch"]', 'Richtig', 1, 2),
  (l_id, 'fill_blank', 'Das Programm, _____ ich arbeite, ist sehr gut. (PrÃ¤position + Relativpronomen, Dativ)', '["mit dem","mit den","mit der","mit das"]', 'mit dem', 1, 3),
  (l_id, 'multiple_choice', 'Welcher Satz ist korrekt?', '["Die Firma, bei der ich arbeite, ist groÃŸ.","Die Firma, bei die ich arbeite, ist groÃŸ.","Die Firma, bei dem ich arbeite, ist groÃŸ.","Die Firma, bei den ich arbeite, ist groÃŸ."]', 'Die Firma, bei der ich arbeite, ist groÃŸ.', 1, 4),
  (l_id, 'true_false', 'Im Passiv mit Modalverben steht "werden" am Satzende.', '["Richtig","Falsch"]', 'Richtig', 1, 5),
  (l_id, 'multiple_choice', 'Was ist die arabische Ãœbersetzung von "herunterladen"?', '["yuhammil","yarfa`","yahfadh","yamsah"]', 'yuhammil', 1, 6),
  (l_id, 'fill_blank', 'Genitiv-Relativpronomen fÃ¼r "der Kunde": _____', '["dessen","deren","dem","der"]', 'dessen', 1, 7),
  (l_id, 'multiple_choice', 'Was bedeutet "die Sucht"?', '["al-idman","al-ta''thir","al-huriya","al-`ada"]', 'al-idman', 1, 8);

  -- Module 4: Umwelt und Natur
  insert into public.course_modules (level_id, title, description, objectives, order_index, estimated_hours, is_published)
  values ('B1', 'Umwelt und Natur', 'Ãœber Umwelt, Natur und Klimaschutz sprechen. Die Adjektivdeklination und zweiteilige Konnektoren anwenden.', '["Die Adjektivdeklination nach bestimmtem, unbestimmtem und Nullartikel sicher anwenden","Zweiteilige Konnektoren (nicht nur ... sondern auch, sowohl ... als auch, entweder ... oder) korrekt verwenden","Ãœber Umweltprobleme und Naturschutz diskutieren","Bitten und Forderungen zum Umweltschutz formulieren","Einen Blogbeitrag zum Thema Umwelt schreiben"]', 4, 5.0, true)
  returning id into m_id;

  -- Lesson 4.1: Umwelt und Klima
  insert into public.course_lessons (module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published)
  values (m_id, 'Umwelt und Klima', 'Wichtige Vokabeln zu Umwelt, Klima und Umweltschutz lernen', 'Umwelt und Natur', 'vocabulary', '["Learn key vocabulary","Practice grammar structures","Build comprehension skills","Apply in context","Review and reinforce"]', 45, 1, true)
  returning id into l_id;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, order_index) values
  (l_id, 'die Umwelt', 'al-bi''a', 'environment', 'die', 'die Umwelten', 'noun', 'Wir mÃ¼ssen die Umwelt schÃ¼tzen.', 'We must protect the environment.', 1),
  (l_id, 'der Klimawandel', 'taghayyur al-munakh', 'climate change', 'der', NULL, 'noun', 'Der Klimawandel ist ein groÃŸes Problem.', 'Climate change is a big problem.', 2),
  (l_id, 'die Verschmutzung', 'al-talwuth', 'pollution', 'die', 'die Verschmutzungen', 'noun', 'Die Luftverschmutzung ist in der Stadt hoch.', 'Air pollution is high in the city.', 3),
  (l_id, 'der MÃ¼ll', 'al-nufayat', 'garbage', 'der', NULL, 'noun', 'Wir sollten weniger MÃ¼ll produzieren.', 'We should produce less garbage.', 4),
  (l_id, 'die Energie', 'al-taqa', 'energy', 'die', 'die Energien', 'noun', 'Erneürbare Energie ist wichtig fÃ¼r die Zukunft.', 'Renewable energy is important for the future.', 5),
  (l_id, 'die Ressource', 'al-mawrid', 'resource', 'die', 'die Ressourcen', 'noun', 'Wir mÃ¼ssen natÃ¼rliche Ressourcen schonen.', 'We must conserve natural resources.', 6),
  (l_id, 'der Umweltschutz', 'himayat al-bi''a', 'environmental protection', 'der', NULL, 'noun', 'Umweltschutz geht uns alle an.', 'Environmental protection concerns us all.', 7),
  (l_id, 'die Nachhaltigkeit', 'al-istidama', 'sustainability', 'die', NULL, 'noun', 'Nachhaltigkeit ist ein wichtiges Thema.', 'Sustainability is an important topic.', 8);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  (l_id, 'Adjektivdeklination nach bestimmtem Artikel', 'Nach dem bestimmten Artikel (der, die, das) werden Adjektive schwach dekliniert. Die Endung ist meist -e oder -en. FÃ¼r arabische Lernende: nach "der/die/das" bekommt das Adjektiv die Endung -e im Nominativ und -en in den anderen FÃ¤llen (auÃŸer Nominativ Singular und Akkusativ Singular feminin/neutrum).', '[{"rule":"Nach bestimmtem Artikel (der/die/das): schwache Deklination.","note":"Endungen: -e (Nom. Sg.), -en (restliche FÃ¤lle)"},{"rule":"Nominativ Singular: der gute Mann, die gute Frau, das gute Kind.","note":"Alle Genera: Endung -e."},{"rule":"Akkusativ Singular Maskulin: den guten Mann (Endung -en).","note":"Feminin und Neutrum: die gute Frau, das gute Kind (Endung -e)."},{"rule":"Dativ Singular: dem guten Mann, der guten Frau, dem guten Kind.","note":"Immer Endung -en im Dativ."},{"rule":"Plural (alle FÃ¤lle): die guten MÃ¤nner, der guten Fraün, den guten Kindern.","note":"Immer Endung -en im Plural."}]', '[{"german":"Der grÃ¼ne Wald ist wunderschÃ¶n.","arabic":"alghaba alkhadra'' jamilat jiddan.","english":"The green forest is beautiful."},{"german":"Ich schÃ¼tze die saubere Umwelt.","arabic":"ana ahmi al-bi''a al-nazifa.","english":"I protect the clean environment."},{"german":"Das erneürbare Energieprojekt ist wichtig.","arabic":"mashru` al-taqa al-mutajaddida muhim.","english":"The renewable energy project is important."},{"german":"Mit dem Ã¶ffentlichen Verkehr fahren.","arabic":"al-safar bi-wasitat al-naql al-`am.","english":"Travel by public transport."},{"german":"Die natÃ¼rlichen Ressourcen sind begrenzt.","arabic":"almawarid altabi`iya mahduda.","english":"The natural resources are limited."}]', '[{"mistake":"Der grÃ¼ne Wald (falsch: \"grÃ¼ner Wald\" nach bestimmtem Artikel)","correction":"Der grÃ¼ne Wald.","explanation":"Nach bestimmtem Artikel: Endung -e (nicht -er)."},{"mistake":"Ich sehe den grÃ¼nen Wald. (falsch: \"den grÃ¼ne Wald\")","correction":"Ich sehe den grÃ¼nen Wald.","explanation":"Akkusativ Maskulin: Endung -en."},{"mistake":"Mit den grÃ¼nen WÃ¤ldern (falsch: \"mit den grÃ¼ne WÃ¤ldern\")","correction":"Mit den grÃ¼nen WÃ¤ldern.","explanation":"Dativ Plural: immer Endung -en."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  (l_id, 'fill_gap', 'Der _____ Wald ist wichtig fÃ¼r das Klima. (grÃ¼n)', '["grÃ¼ne","grÃ¼ner","grÃ¼nen","grÃ¼nes"]', 'grÃ¼ne', 'Nach bestimmtem Artikel Nominativ: "der grÃ¼ne Wald".', 1, 1),
  (l_id, 'fill_gap', 'Ich schÃ¼tze die _____ Umwelt. (sauber)', '["saubere","sauberer","sauberen","sauberes"]', 'saubere', 'Akkusativ feminin nach bestimmtem Artikel: "die saubere Umwelt".', 1, 2),
  (l_id, 'translation', 'Ãœbersetze: "The clean water is important."', '["Das saubere Wasser ist wichtig.","Der saubere Wasser ist wichtig.","Die saubere Wasser ist wichtig.","Den sauberen Wasser ist wichtig."]', 'Das saubere Wasser ist wichtig.', 'Neutrum Nominativ: "das saubere Wasser".', 1, 3),
  (l_id, 'multiple_choice', 'Was bedeutet "die Nachhaltigkeit"?', '["al-istidama","al-bi''a","al-mawrid","al-taqa"]', 'al-istidama', '"Nachhaltigkeit" bedeutet Nachhaltigkeit (sustainability).', 1, 4),
  (l_id, 'fill_gap', 'Mit dem _____ Auto zur Arbeit fahren. (elektrisch)', '["elektrischen","elektrische","elektrischer","elektrisches"]', 'elektrischen', 'Dativ Maskulin: "mit dem elektrischen Auto".', 1, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  (l_id, 'multiple_choice', 'Was bedeutet "die Umwelt"?', '["al-bi''a","al-taqa","al-mawrid","al-talwuth"]', 'al-bi''a', 1, 1),
  (l_id, 'fill_blank', 'Der _____ MÃ¼ll sollte recycelt werden. (alt)', '["alte","alter","alten","altes"]', 'alte', 1, 2),
  (l_id, 'true_false', 'Nach bestimmtem Artikel hat das Adjektiv im Nominativ Singular die Endung -e.', '["Richtig","Falsch"]', 'Richtig', 1, 3),
  (l_id, 'multiple_choice', 'Was ist die richtige Endung? "Die _____ Energie ist teür. (erneürbar)"', '["erneürbare","erneürbarer","erneürbaren","erneürbares"]', 'erneürbare', 1, 4),
  (l_id, 'fill_blank', 'Ich sehe den _____ Wald. (dicht)', '["dichten","dichte","dichter","dichtes"]', 'dichten', 1, 5),
  (l_id, 'true_false', '"Der Klimawandel" bedeutet "taghayyur al-munakh".', '["Richtig","Falsch"]', 'Richtig', 1, 6);

  -- Lesson 4.2: Natur und Jahreszeiten
  insert into public.course_lessons (module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published)
  values (m_id, 'Natur und Jahreszeiten', 'Vokabular zu Natur, Wetter und Jahreszeiten lernen', 'Umwelt und Natur', 'vocabulary', '["Learn key vocabulary","Practice grammar structures","Build comprehension skills","Apply in context","Review and reinforce"]', 45, 2, true)
  returning id into l_id;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, order_index) values
  (l_id, 'die Natur', 'al-tabi`a', 'nature', 'die', NULL, 'noun', 'Die Natur ist wunderschÃ¶n.', 'Nature is beautiful.', 1),
  (l_id, 'der Wald', 'al-ghaba', 'forest', 'der', 'die WÃ¤lder', 'noun', 'Im Wald kann man spazieren gehen.', 'You can go for a walk in the forest.', 2),
  (l_id, 'das Wetter', 'al-taqs', 'weather', 'das', NULL, 'noun', 'Das Wetter ist heute schÃ¶n.', 'The weather is nice today.', 3),
  (l_id, 'die Jahreszeit', 'al-fasl', 'season', 'die', 'die Jahreszeiten', 'noun', 'Der FrÃ¼hling ist meine Lieblingsjahreszeit.', 'Spring is my favorite season.', 4),
  (l_id, 'die Pflanze', 'al-nabat', 'plant', 'die', 'die Pflanzen', 'noun', 'Die Pflanzen brauchen Wasser und Sonne.', 'Plants need water and sun.', 5),
  (l_id, 'das Tier', 'al-hayawan', 'animal', 'das', 'die Tiere', 'noun', 'Im Wald leben viele Tiere.', 'Many animals live in the forest.', 6),
  (l_id, 'die Luft', 'al-hawa''', 'air', 'die', NULL, 'noun', 'Die Luft auf dem Land ist sauberer.', 'The air in the countryside is cleaner.', 7),
  (l_id, 'der Boden', 'al-tura/al-ard', 'soil/ground', 'der', 'die BÃ¶den', 'noun', 'Der Boden ist nach dem Regen nass.', 'The ground is wet after the rain.', 8);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  (l_id, 'Adjektivdeklination nach unbestimmtem und Nullartikel', 'Nach dem unbestimmten Artikel (ein, eine, ein) folgt die gemischte Deklination. Nach dem Nullartikel (kein Artikel) folgt die starke Deklination. Die Endungen sind stÃ¤rker, um das Genus zu kennzeichnen.', '[{"rule":"Nach unbestimmtem Artikel (ein/eine/ein): gemischte Deklination.","note":"Ein grÃ¼ner Wald, eine saubere Umwelt, ein neüs Projekt."},{"rule":"Nach unbestimmtem Artikel: Endung -er (Nom. m), -e (Nom./Akk. f), -es (Nom./Akk. n).","note":"Im Akkusativ Maskulin: einen grÃ¼nen Wald (Endung -en)."},{"rule":"Ohne Artikel (Nullartikel): starke Deklination.","note":"GrÃ¼ner Wald, saubere Umwelt, neüs Projekt."},{"rule":"Starke Deklination Ã¼bernimmt die Endungen des bestimmten Artikels.","note":"-er (m), -e (f), -es (n), -e (Pl) im Nominativ."},{"rule":"Keine Endung: Dativ Singular (mit frischem Wasser) und Genitiv Singular.","note":"Endung -en im Dativ und -en in allen Pluralformen."}]', '[{"german":"Ein groÃŸer Wald bedeckt die Landschaft.","arabic":"ghaba kabir taghuti al-mashhad altabi`i.","english":"A large forest covers the landscape."},{"german":"Ich mÃ¶chte eine saubere Umwelt.","arabic":"ana urid bi''a nazifa.","english":"I want a clean environment."},{"german":"Erneürbare Energie ist wichtig.","arabic":"al-taqa al-mutajaddida muhima.","english":"Renewable energy is important."},{"german":"Mit frischer Luft spazieren gehen.","arabic":"almashi bi-hawa'' naqi.","english":"Walk with fresh air."},{"german":"GroÃŸe Tiere leben im Wald.","arabic":"hayawanat kabira ta`ish fi al-ghaba.","english":"Large animals live in the forest."}]', '[{"mistake":"Ein grÃ¼ner Wald (falsch: \"ein grÃ¼ne Wald\")","correction":"Ein grÃ¼ner Wald.","explanation":"Nach \"ein\" (Maskulin): starke Endung -er."},{"mistake":"Ich mÃ¶chte einen sauberen Fluss. (falsch: \"einen saubere Fluss\")","correction":"Ich mÃ¶chte einen sauberen Fluss.","explanation":"Akkusativ Maskulin: \"einen sauberen Fluss\"."},{"mistake":"GroÃŸe Tiere (falsch: \"GroÃŸen Tiere\" im Nominativ)","correction":"GroÃŸe Tiere.","explanation":"Nominativ Plural ohne Artikel: Endung -e (starke Deklination)."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  (l_id, 'fill_gap', 'Ein _____ Wald ist wichtig fÃ¼r die Natur. (groÃŸ)', '["groÃŸer","groÃŸe","groÃŸen","groÃŸes"]', 'groÃŸer', 'Nominativ Maskulin nach "ein": "ein groÃŸer Wald".', 1, 1),
  (l_id, 'fill_gap', 'Ich mÃ¶chte eine _____ Umwelt. (sauber)', '["saubere","sauberer","sauberen","sauberes"]', 'saubere', 'Akkusativ feminin nach "eine": "eine saubere Umwelt".', 1, 2),
  (l_id, 'translation', 'Ãœbersetze: "Fresh air is healthy."', '["Frische Luft ist gesund.","Frischer Luft ist gesund.","Frisches Luft ist gesund.","Frischen Luft ist gesund."]', 'Frische Luft ist gesund.', 'Nominativ feminin ohne Artikel: "frische Luft".', 1, 3),
  (l_id, 'multiple_choice', 'Was bedeutet "die Pflanze"?', '["al-nabat","al-hayawan","al-ghaba","al-hawa''"]', 'al-nabat', '"Die Pflanze" ist eine Pflanze.', 1, 4),
  (l_id, 'fill_gap', 'Mit _____ Wasser sollte man sparsam umgehen. (sauber)', '["sauberem","sauberen","sauberer","sauberes"]', 'sauberem', 'Dativ ohne Artikel: "mit sauberem Wasser" (starke Endung -em).', 1, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  (l_id, 'multiple_choice', 'Was bedeutet "die Jahreszeit"?', '["al-fasl","al-taqs","al-tabi`a","al-nabat"]', 'al-fasl', 1, 1),
  (l_id, 'fill_blank', 'Ein _____ Tier lebt im Wald. (wild)', '["wildes","wilder","wilde","wilden"]', 'wildes', 1, 2),
  (l_id, 'true_false', 'Nach Nullartikel folgt die schwache Deklination.', '["Richtig","Falsch"]', 'Falsch', 1, 3),
  (l_id, 'multiple_choice', 'Welche Endung ist korrekt? "Ich sehe _____ schÃ¶ne Blume." (eine)', '["eine","einer","einen","ein"]', 'eine', 1, 4),
  (l_id, 'fill_blank', '_____ sauberes Wasser ist wichtig. (Nominativ)', '["Sauberes","Sauberer","Saubere","Sauberen"]', 'Sauberes', 1, 5),
  (l_id, 'true_false', '"Der Boden" bedeutet "al-ard/al-tura".', '["Richtig","Falsch"]', 'Richtig', 1, 6);

  -- Lesson 4.3: Zweiteilige Konnektoren und Adjektivdeklination
  insert into public.course_lessons (module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published)
  values (m_id, 'Zweiteilige Konnektoren und Adjektivdeklination', 'Zweiteilige Konnektoren wie nicht nur ... sondern auch, sowohl ... als auch, entweder ... oder', 'Umwelt und Natur', 'grammar', '["Learn key vocabulary","Practice grammar structures","Build comprehension skills","Apply in context","Review and reinforce"]', 60, 3, true)
  returning id into l_id;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, order_index) values
  (l_id, 'recyceln', 'yu`id al-tadwir', 'to recycle', NULL, NULL, 'verb', 'Wir sollten Plastik recyceln.', 'We should recycle plastic.', 1),
  (l_id, 'vermeiden', 'yatajannab', 'to avoid', NULL, NULL, 'verb', 'Man sollte PlastikmÃ¼ll vermeiden.', 'One should avoid plastic waste.', 2),
  (l_id, 'einsparen', 'yuwaffir', 'to save/conserve', NULL, NULL, 'verb', 'Wir kÃ¶nnen Energie einsparen.', 'We can save energy.', 3),
  (l_id, 'schonen', 'yahfadh `ala/yuhafidh', 'to conserve', NULL, NULL, 'verb', 'Wir mÃ¼ssen die Ressourcen schonen.', 'We must conserve the resources.', 4),
  (l_id, 'die Umweltverschmutzung', 'talwuth al-bi''a', 'environmental pollution', 'die', 'die Umweltverschmutzungen', 'noun', 'Die Umweltverschmutzung nimmt zu.', 'Environmental pollution is increasing.', 5),
  (l_id, 'der CO2-AusstoÃŸ', 'intibath thani uksid alkarbun', 'CO2 emissions', 'der', 'die CO2-AusstÃ¶ÃŸe', 'noun', 'Der CO2-AusstoÃŸ muÃŸ reduziert werden.', 'CO2 emissions must be reduced.', 6),
  (l_id, 'reduzieren', 'yukhaffidh', 'to reduce', NULL, NULL, 'verb', 'Wir mÃ¼ssen den Energieverbrauch reduzieren.', 'We must reduce energy consumption.', 7);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  (l_id, 'Zweiteilige Konnektoren', 'Zweiteilige Konnektoren verbinden zwei Satzteile oder SÃ¤tze miteinander. "Nicht nur ... sondern auch" bedeutet "laysa faqat ... bal ay''dan". "Sowohl ... als auch" bedeutet "kilan min ... wa - ay''dan". "Entweder ... oder" bedeutet "imma ... aw". Sie folgen bestimmten Wortstellungsregeln.', '[{"rule":"\"nicht nur ... sondern auch\": Verbindet zwei gleichrangige Elemente. (nicht nur A, sondern auch B).","note":"Er ist nicht nur fleiÃŸig, sondern auch kreativ."},{"rule":"\"sowohl ... als auch\": Bedeutet \"beide\". Die Wortstellung bleibt normal.","note":"Sowohl die Luft als auch das Wasser sind verschmutzt."},{"rule":"\"entweder ... oder\": Bedeutet \"eine Option von zwei\".","note":"Entweder wir recyceln mehr, oder die Umwelt leidet."},{"rule":"Bei \"entweder ... oder\" mit zwei HauptsÃ¤tzen: V2-Stellung in beiden SÃ¤tzen.","note":"Entweder fahre ich mit dem Bus, oder ich gehe zu FuÃŸ."},{"rule":"Diese Konnektoren kÃ¶nnen auch innerhalb eines Satzteils stehen.","note":"Ich trinke sowohl Tee als auch Kaffee."}]', '[{"german":"Wir brauchen nicht weniger, sondern mehr Umweltschutz.","arabic":"la nahtaj ila himayat bi''a aqall, bal akthar.","english":"We do not need less, but more environmental protection."},{"german":"Sowohl die Luft als auch das Wasser sind verschmutzt.","arabic":"kilan min al-hawa'' wa-al-ma'' mulawwathan.","english":"Both the air and the water are polluted."},{"german":"Entweder wir nutzen erneürbare Energie oder wir zerstÃ¶ren die Umwelt.","arabic":"imma an nastakhdima al-taqa al-mutajaddida aw nudamir al-bi''a.","english":"Either we use renewable energy or we destroy the environment."},{"german":"Nicht nur die Industrie, sondern auch die Haushalte mÃ¼ssen Energie sparen.","arabic":"laysa faqat al-sina`a, bal ay''dan al-manazil yajib an tuwaffir al-taqa.","english":"Not only industry but also households must save energy."},{"german":"Ich fahre entweder mit dem Rad oder mit dem Bus.","arabic":"ana imma an adhab bil-daraja aw bil-hafila.","english":"I either go by bike or by bus."}]', '[{"mistake":"Nicht nur ich trinke Kaffee, sondern auch Tee.","correction":"Ich trinke nicht nur Kaffee, sondern auch Tee.","explanation":"\"Nicht nur\" steht vor dem ersten Element, das betont wird."},{"mistake":"Entweder ich fahre mit dem Bus oder ich fahre mit dem Rad. (Wortstellung)","correction":"Entweder fahre ich mit dem Bus oder ich fahre mit dem Rad.","explanation":"Nach \"entweder\" steht das Verb an Position 2."},{"mistake":"Sowohl die Luft als auch das Wasser ist verschmutzt.","correction":"Sowohl die Luft als auch das Wasser sind verschmutzt.","explanation":"Bei \"sowohl ... als auch\" (Subjekt Plural) wird das Verb plural: \"sind\"."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  (l_id, 'fill_gap', 'Wir brauchen _____ mehr Windenergie _____ mehr Solarenergie. (sowohl ... als auch)', '["sowohl / als auch","nicht nur / sondern auch","entweder / oder","weder / noch"]', 'sowohl / als auch', '"Sowohl ... als auch" = beide Energieformen.', 1, 1),
  (l_id, 'fill_gap', '_____ wir recyceln mehr _____ die Umwelt wird weiter verschmutzt. (entweder ... oder)', '["Entweder / oder","Nicht nur / sondern auch","Sowohl / als auch","Weder / noch"]', 'Entweder / oder', '"Entweder ... oder" = eine von zwei Optionen.', 1, 2),
  (l_id, 'translation', 'Ãœbersetze: "Not only the air but also the water is polluted."', '["Nicht nur die Luft, sondern auch das Wasser ist verschmutzt.","Sowohl die Luft als auch das Wasser ist verschmutzt.","Entweder die Luft oder das Wasser ist verschmutzt.","Weder die Luft noch das Wasser ist verschmutzt."]', 'Nicht nur die Luft, sondern auch das Wasser ist verschmutzt.', '"Nicht nur ... sondern auch" verbindet zwei Elemente.', 1, 3),
  (l_id, 'multiple_choice', 'Was bedeutet "recyceln"?', '["yu`id al-tadwir","yukhaffidh","yatajannab","yuwaffir"]', 'yu`id al-tadwir', '"Recyceln" bedeutet, AbfÃ¤lle wiederzuverwerten.', 1, 4),
  (l_id, 'fill_gap', '_____ die Industrie _____ die Haushalte mÃ¼ssen Energie sparen. (sowohl ... als auch)', '["Sowohl / als auch","Nicht nur / sondern auch","Entweder / oder","Weder / noch"]', 'Sowohl / als auch', '"Sowohl die Industrie als auch die Haushalte" = beide.', 1, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  (l_id, 'multiple_choice', 'Was bedeutet "entweder ... oder"?', '["imma ... aw","laysa faqat ... bal ay''dan","kilan min ... wa - ay''dan","la ... wa-la"]', 'imma ... aw', 1, 1),
  (l_id, 'fill_blank', 'Nicht nur der CO2-AusstoÃŸ _____ auch der MÃ¼ll ist ein Problem. (sondern)', '["sondern","aber","oder","und"]', 'sondern', 1, 2),
  (l_id, 'true_false', 'Bei "entweder ... oder" steht das Verb im ersten Satz an Position 2.', '["Richtig","Falsch"]', 'Richtig', 1, 3),
  (l_id, 'multiple_choice', 'Welcher Satz ist korrekt?', '["Entweder fahre ich mit dem Rad oder ich nehme den Bus.","Entweder ich fahre mit dem Rad oder nehme ich den Bus.","Entweder fahre ich mit dem Rad oder ich Bus nehme.","Entweder ich Rad fahre oder nehme ich den Bus."]', 'Entweder fahre ich mit dem Rad oder ich nehme den Bus.', 1, 4),
  (l_id, 'fill_blank', 'Sowohl die _____ (schÃ¤dlich) Abgase als auch der MÃ¼ll schaden der Umwelt.', '["schÃ¤dlichen","schÃ¤dliche","schÃ¤dlicher","schÃ¤dliches"]', 'schÃ¤dlichen', 1, 5),
  (l_id, 'true_false', '"Vermeiden" bedeutet "yatajannab".', '["Richtig","Falsch"]', 'Richtig', 1, 6);

  -- Lesson 4.4: Blogbeitrag: Umweltschutz im Alltag
  insert into public.course_lessons (module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published)
  values (m_id, 'Blogbeitrag: Umweltschutz im Alltag', 'Einen Blogbeitrag zum Thema Umweltschutz schreiben â€“ Adjektivdeklination und Konnektoren anwenden', 'Umwelt und Natur', 'writing', '["Learn key vocabulary","Practice grammar structures","Build comprehension skills","Apply in context","Review and reinforce"]', 50, 4, true)
  returning id into l_id;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, order_index) values
  (l_id, 'der Beitrag', 'al-taqrir/almusharaka', 'post/contribution', 'der', 'die BeitrÃ¤ge', 'noun', 'Ich schreibe einen Beitrag zum Umweltschutz.', 'I am writing a post about environmental protection.', 1),
  (l_id, 'der Tipp', 'al-nasiha', 'tip', 'der', 'die Tipps', 'noun', 'Hier sind einige Tipps fÃ¼r den Alltag.', 'Here are some tips for everyday life.', 2),
  (l_id, 'die MaÃŸnahme', 'al-ijra''/al-tadbir', 'measure', 'die', 'die MaÃŸnahmen', 'noun', 'Diese MaÃŸnahme hilft der Umwelt.', 'This measure helps the environment.', 3),
  (l_id, 'der Verbrauch', 'al-istihlak', 'consumption', 'der', 'die VerbrÃ¤uche', 'noun', 'Der Energieverbrauch muÃŸ sinken.', 'Energy consumption must decrease.', 4),
  (l_id, 'die MÃ¼lltrennung', 'fars al-nufayat', 'waste separation', 'die', NULL, 'noun', 'MÃ¼lltrennung ist in Deutschland Pflicht.', 'Waste separation is mandatory in Germany.', 5),
  (l_id, 'der Strom', 'altayar alkahraba''i', 'electricity', 'der', NULL, 'noun', 'Wir sollten Strom sparen.', 'We should save electricity.', 6),
  (l_id, 'die Solaranlage', 'munshaa'' shamsiya', 'solar system', 'die', 'die Solaranlagen', 'noun', 'Eine Solaranlage auf dem Dach produziert Energie.', 'A solar system on the roof produces energy.', 7);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  (l_id, 'Adjektivdeklination und Konnektoren im Text', 'In einem Blogbeitrag kombinierst du die Adjektivdeklination (bestimmt/unbestimmt/null) mit zweiteiligen Konnektoren, um komplexe SÃ¤tze zu bilden. Dies ist typisch fÃ¼r B1-Niveau.', '[{"rule":"Verwende bestimmte Adjektivendungen nach Artikeln: der grÃ¼ne ... / ein grÃ¼ner ... / grÃ¼ne ...","note":"Je nach Artikeltyp (bestimmt/unbestimmt/null) Ã¤ndern sich die Endungen."},{"rule":"Zweiteilige Konnektoren fÃ¼r AufzÃ¤hlungen: sowohl ... als auch, nicht nur ... sondern auch.","note":"Sowohl die Ã¶ffentlichen Verkehrsmittel als auch das Fahrrad sind umweltfreundlich."},{"rule":"Alternativen aufzeigen: entweder ... oder.","note":"Entweder wir reduzieren den Verbrauch oder wir zerstÃ¶ren die Umwelt."},{"rule":"Konnektoren am Satzanfang mit Inversion: Das Verb rÃ¼ckt auf Position 2.","note":"Nicht nur die Industrie, sondern auch die Haushalte mÃ¼ssen sparen."}]', '[{"german":"Sowohl die erneürbare Energie als auch die Energieeinsparung sind wichtig.","arabic":"kilan min al-taqa al-mutajaddida wa-tawfir al-taqa muhiman.","english":"Both renewable energy and energy saving are important."},{"german":"Nicht nur der groÃŸe Konzern, sondern auch der kleine Haushalt kann etwas tun.","arabic":"laysa faqat al-sharika alkabira, bal ay''dan al-manzil al-saghir yumkinuhu an yaf`al shay''an.","english":"Not only the big corporation but also the small household can do something."},{"german":"Entweder wir trennen den MÃ¼ll oder er wird nicht recycelt.","arabic":"imma an nafris al-nufayat aw lan yu`ad tadwiruhu.","english":"Either we separate waste or it will not be recycled."},{"german":"Ein guter Tipp ist, auf Plastik zu verzichten.","arabic":"al-nasiha aljayyida hiya al-istighna'' `an al-blastik.","english":"A good tip is to avoid plastic."}]', '[{"mistake":"Beide die erneürbare Energie und die Einsparung (falsche Ãœbersetzung von \"both\")","correction":"Sowohl die erneürbare Energie als auch die Einsparung ...","explanation":"\"Sowohl ... als auch\" ist die korrekte Struktur fÃ¼r \"both ... and\"."},{"mistake":"Nicht nur die Industrie sondern auch die Haushalte mussen sparen. (fehlendes Komma)","correction":"Nicht nur die Industrie, sondern auch die Haushalte mussen sparen.","explanation":"Zwischen den beiden Teilen steht ein Komma."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  (l_id, 'multiple_choice', 'Was bedeutet "die MÃ¼lltrennung"?', '["fars al-nufayat","istihlak al-nufayat","tadwir al-nufayat","talwuth al-bi''a"]', 'fars al-nufayat', '"MÃ¼lltrennung" ist die Trennung von AbfÃ¤llen.', 1, 1),
  (l_id, 'fill_gap', 'Sowohl _____ erneürbare Energie _____ auch die Energieeinsparung sind wichtig.', '["die / als","der / als","das / als","den / als"]', 'die / als', '"Sowohl die ... als auch die ..." - feminin: "die erneürbare Energie".', 1, 2),
  (l_id, 'translation', 'Ãœbersetze: "Either we separate waste or we damage the environment."', '["Entweder wir trennen den MÃ¼ll oder wir schaden der Umwelt.","Sowohl wir trennen den MÃ¼ll als auch schaden der Umwelt.","Nicht nur wir trennen den MÃ¼ll sondern auch schaden der Umwelt.","Weder trennen wir den MÃ¼ll noch schaden wir der Umwelt."]', 'Entweder wir trennen den MÃ¼ll oder wir schaden der Umwelt.', '', 1, 3),
  (l_id, 'fill_gap', 'Ein _____ Tipp ist, das Licht auszuschalten. (gut)', '["guter","gute","guten","gutes"]', 'guter', 'Nominativ Maskulin nach "ein": "ein guter Tipp".', 1, 4),
  (l_id, 'multiple_choice', 'Was gehÃ¶rt nicht in einen Blogbeitrag zum Umweltschutz?', '["Tipps zum Stromsparen","Wie man MÃ¼ll trennt","Die neüste Mode","Vorteile von Solaranlagen"]', 'Die neüste Mode', 'Mode hat nichts mit Umweltschutz zu tun.', 1, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  (l_id, 'multiple_choice', 'Was bedeutet "der Strom"?', '["altayar alkahraba''i","al-ma''","al-hawa''","al-nar"]', 'altayar alkahraba''i', 1, 1),
  (l_id, 'fill_blank', '_____ die Luft _____ das Wasser sind verschmutzt. (both ... and)', '["Sowohl / als auch","Nicht nur / sondern auch","Entweder / oder","Weder / noch"]', 'Sowohl / als auch', 1, 2),
  (l_id, 'true_false', 'Nach "ein" im Nominativ Maskulin bekommt das Adjektiv die Endung -er.', '["Richtig","Falsch"]', 'Richtig', 1, 3),
  (l_id, 'multiple_choice', 'Welcher Satz ist korrekt?', '["Sowohl die Luft als auch das Wasser sind verschmutzt.","Sowohl die Luft als auch das Wasser ist verschmutzt.","Sowohl die Luft als auch das Wasser seid verschmutzt.","Sowohl die Luft als auch das Wasser bin verschmutzt."]', 'Sowohl die Luft als auch das Wasser sind verschmutzt.', 1, 4),
  (l_id, 'fill_blank', '_____ nur die Industrie, _____ auch die Haushalte mÃ¼ssen Energie sparen.', '["Nicht / sondern","Weder / noch","Entweder / oder","Sowohl / als"]', 'Nicht / sondern', 1, 5),
  (l_id, 'true_false', '"Die Solaranlage" produziert Energie aus der Sonne.', '["Richtig","Falsch"]', 'Richtig', 1, 6);

  -- Lesson 4.5: Wiederholung: Umwelt und Natur
  insert into public.course_lessons (module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published)
  values (m_id, 'Wiederholung: Umwelt und Natur', 'Alle Themen aus Modul 4 wiederholen und festigen', 'Umwelt und Natur', 'review', '["Learn key vocabulary","Practice grammar structures","Build comprehension skills","Apply in context","Review and reinforce"]', 45, 5, true)
  returning id into l_id;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, order_index) values
  (l_id, 'der Lebensraum', 'almawtin/al-maskan', 'habitat', 'der', 'die LebensrÃ¤ume', 'noun', 'Der Wald ist der Lebensraum vieler Tiere.', 'The forest is the habitat of many animals.', 1),
  (l_id, 'die Art', 'al-naw`', 'species', 'die', 'die Arten', 'noun', 'Viele Tierarten sind vom Aussterben bedroht.', 'Many animal species are threatened with extinction.', 2),
  (l_id, 'der Naturschutz', 'himayat al-tabi`a', 'nature conservation', 'der', NULL, 'noun', 'Naturschutz ist ein wichtiges Anliegen.', 'Nature conservation is an important concern.', 3),
  (l_id, 'verzichten', 'yastaghni `an', 'to do without', NULL, NULL, 'verb', 'Ich versuche, auf Plastik zu verzichten.', 'I try to do without plastic.', 4),
  (l_id, 'fÃ¶rdern', 'yud`am/yushajji`', 'to promote', NULL, NULL, 'verb', 'Die Regierung fÃ¶rdert erneürbare Energien.', 'The government promotes renewable energies.', 5),
  (l_id, 'der Ã¶kologische FuÃŸabdruck', 'al-basmat al-i''kuliujiya', 'ecological footprint', 'der', 'die Ã¶kologischen FuÃŸabdrÃ¼cke', 'noun', 'Unser Ã¶kologischer FuÃŸabdruck ist zu groÃŸ.', 'Our ecological footprint is too large.', 6),
  (l_id, 'die Klimaziele', 'ahdaf al-munakh', 'climate goals', 'die', 'die Klimaziele', 'noun', 'Die Klimaziele mÃ¼ssen erreicht werden.', 'The climate goals must be achieved.', 7);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  (l_id, 'Wiederholung: Adjektivdeklination und zweiteilige Konnektoren', 'In dieser Lektion wiederholen wir die Adjektivdeklination nach bestimmtem, unbestimmtem und Nullartikel sowie die zweiteiligen Konnektoren (nicht nur ... sondern auch, sowohl ... als auch, entweder ... oder).', '[{"rule":"Bestimmter Artikel: der gute Mann (Nom.), den guten Mann (Akk.), dem guten Mann (Dat.)","note":"Endungen: -e (Nom./Akk. Sg. auÃŸer m. Akk.), -en (rest)."},{"rule":"Unbestimmter Artikel: ein guter Mann (Nom.), einen guten Mann (Akk.), einem guten Mann (Dat.)","note":"Gemischte Deklination: starke Endungen im Nom., schwache im Dat./Gen."},{"rule":"Nullartikel: guter Mann (Nom.), guten Mann (Akk.), gutem Mann (Dat.)","note":"Starke Deklination mit Endungen des Artikels."},{"rule":"nicht nur ... sondern auch = both A and not only A but also B","note":"Nicht nur der Mensch, sondern auch das Tier braucht eine saubere Umwelt."},{"rule":"sowohl ... als auch = both ... and, entweder ... oder = either ... or","note":"Sowohl der Wald als auch die Wiese sind wichtig."}]', '[{"german":"Der Ã¶kologische FuÃŸabdruck muÃŸ reduziert werden.","arabic":"yajib takhfidh al-basmat al-i''kuliujiya.","english":"The ecological footprint must be reduced."},{"german":"Ein nachhaltiger Lebensstil ist wichtig.","arabic":"namat haya mustadam muhim.","english":"A sustainable lifestyle is important."},{"german":"Nicht nur die Regierung, sondern auch jeder einzelne kann etwas tun.","arabic":"laysa faqat al-hukuma, bal ay''dan kull fard yumkinuhu an yaf`al shay''an.","english":"Not only the government but also every individual can do something."},{"german":"Saubere Luft ist wichtig.","arabic":"al-hawa'' al-nazi muhim.","english":"Clean air is important."},{"german":"Entweder wir handeln jetzt oder es ist zu spÃ¤t.","arabic":"imma an nataharrak al-an aw qad yakun al-awan qad fat.","english":"Either we act now or it will be too late."}]', '[{"mistake":"Ein Ã¶kologischer FuÃŸabdruck (falsch: \"ein Ã¶kologische FuÃŸabdruck\")","correction":"Ein Ã¶kologischer FuÃŸabdruck.","explanation":"Nach \"ein\" Maskulin Nominativ: Endung -er."},{"mistake":"Entweder ich fahre mit dem Rad oder nehme den Bus. (falsche Wortstellung)","correction":"Entweder fahre ich mit dem Rad oder ich nehme den Bus.","explanation":"Nach \"entweder\" V2, nach \"oder\" auch V2 mit Subjekt."},{"mistake":"Sowohl die Luft und das Wasser (falscher Konnektor)","correction":"Sowohl die Luft als auch das Wasser.","explanation":"Die korrekte Form ist \"sowohl ... als auch\"."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  (l_id, 'multiple_choice', 'Was bedeutet "der Lebensraum"?', '["almawtin","al-naw`","al-ghaba","al-bi''a"]', 'almawtin', '"Der Lebensraum" ist der Lebensraum (habitat).', 1, 1),
  (l_id, 'fill_gap', 'Die _____ Energie ist _____ fÃ¼r die Zukunft wichtig. (erneürbar, sowohl ... als auch)', '["erneürbare / sowohl / als","erneürbarer / sowohl / als","erneürbaren / sowohl / als","erneürbares / sowohl / als"]', 'erneürbare / sowohl / als', 'Feminin Nominativ: "die erneürbare Energie sowohl ... als auch".', 1, 2),
  (l_id, 'translation', 'Ãœbersetze: "A sustainable lifestyle is good for the environment."', '["Ein nachhaltiger Lebensstil ist gut fÃ¼r die Umwelt.","Eine nachhaltige Lebensstil ist gut fÃ¼r die Umwelt.","Einen nachhaltigen Lebensstil ist gut fÃ¼r die Umwelt.","Nachhaltiger Lebensstil ist gut fÃ¼r die Umwelt."]', 'Ein nachhaltiger Lebensstil ist gut fÃ¼r die Umwelt.', 'Maskulin Nominativ nach "ein": "ein nachhaltiger Lebensstil".', 1, 3),
  (l_id, 'fill_gap', '_____ die Industrie _____ die Haushalte mÃ¼ssen Energie sparen. (nicht nur ... sondern auch)', '["Nicht nur / sondern auch","Sowohl / als auch","Entweder / oder","Weder / noch"]', 'Nicht nur / sondern auch', '', 1, 4),
  (l_id, 'multiple_choice', 'Welche Endung ist korrekt? "Ein _____ Tipp ist MÃ¼lltrennung. (gut)"', '["guter","gute","gÃ¼ten","gutes"]', 'guter', '', 1, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  (l_id, 'multiple_choice', 'Was bedeutet "das Tier"?', '["al-hayawan","al-nabat","al-ghaba","al-hawa''"]', 'al-hayawan', 1, 1),
  (l_id, 'fill_blank', 'Der _____ (schnell) Klimawandel ist besorgniserregend.', '["schnelle","schneller","schnellen","schnelles"]', 'schnelle', 1, 2),
  (l_id, 'true_false', '"Nicht nur ... sondern auch" bedeutet "imma ... aw".', '["Richtig","Falsch"]', 'Falsch', 1, 3),
  (l_id, 'multiple_choice', 'Was ist die korrekte Form? "_____ sauberes Wasser ist wichtig."', '["Sauberes","Sauberer","Saubere","Sauberen"]', 'Sauberes', 1, 4),
  (l_id, 'fill_blank', 'Sowohl der _____ (groÃŸ) Wald als auch die Wiesen sind Lebensraum fÃ¼r Tiere.', '["groÃŸe","groÃŸer","groÃŸen","groÃŸes"]', 'groÃŸe', 1, 5),
  (l_id, 'true_false', 'Nach unbestimmtem Artikel folgt die starke Adjektivdeklination.', '["Richtig","Falsch"]', 'Falsch', 1, 6);

  -- Lesson 4.6: Test: Umwelt und Natur
  insert into public.course_lessons (module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published)
  values (m_id, 'Test: Umwelt und Natur', 'Abschlusstest fÃ¼r Modul 4 â€“ Umwelt und Natur', 'Umwelt und Natur', 'test', '["Learn key vocabulary","Practice grammar structures","Build comprehension skills","Apply in context","Review and reinforce"]', 40, 6, true)
  returning id into l_id;

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  (l_id, 'fill_gap', 'Der _____ Wald ist wichtig fÃ¼r das Ã–kosystem. (dicht)', '["dichte","dichter","dichten","dichtes"]', 'dichte', 'Nominativ Maskulin nach bestimmtem Artikel: "der dichte Wald".', 1, 1),
  (l_id, 'fill_gap', '_____ wir sparen Energie _____ wir zahlen mehr. (entweder ... oder)', '["Entweder / oder","Nicht nur / sondern auch","Sowohl / als auch","Weder / noch"]', 'Entweder / oder', '"Entweder ... oder" gibt zwei mÃ¶gliche Optionen.', 1, 2),
  (l_id, 'translation', 'Ãœbersetze: "Both air and water must be protected."', '["Sowohl die Luft als auch das Wasser mÃ¼ssen geschÃ¼tzt werden.","Nicht nur die Luft sondern auch das Wasser muÃŸ geschÃ¼tzt werden.","Entweder die Luft oder das Wasser muÃŸ geschÃ¼tzt werden.","Weder die Luft noch das Wasser muÃŸ geschÃ¼tzt werden."]', 'Sowohl die Luft als auch das Wasser mÃ¼ssen geschÃ¼tzt werden.', '"Sowohl ... als auch" + Passiv: "mÃ¼ssen geschÃ¼tzt werden".', 1, 3),
  (l_id, 'multiple_choice', 'Welche Endung ist korrekt? "Das _____ Wasser ist verschmutzt. (sauber)"', '["saubere","sauberer","sauberen","sauberes"]', 'saubere', 'Neutrum nach bestimmtem Artikel: "das saubere Wasser".', 1, 4),
  (l_id, 'fill_gap', 'Nicht nur die Regierung, _____ auch die BÃ¼rger mÃ¼ssen handeln.', '["sondern","aber","oder","und"]', 'sondern', '"Nicht nur ... sondern auch".', 1, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  (l_id, 'multiple_choice', 'Was bedeutet "die Verschmutzung"?', '["al-talwuth","al-taqa","al-bi''a","al-mawrid"]', 'al-talwuth', 1, 1),
  (l_id, 'true_false', 'Nach "dem" (Dativ Maskulin) hat das Adjektiv die Endung -en.', '["Richtig","Falsch"]', 'Richtig', 1, 2),
  (l_id, 'fill_blank', '_____ erneürbare Energie _____ fossile Brennstoffe sind wichtig. (sowohl ... als auch)', '["Sowohl / als auch","Nicht nur / sondern auch","Entweder / oder","Weder / noch"]', 'Sowohl / als auch', 1, 3),
  (l_id, 'multiple_choice', 'Was ist die richtige Endung? "Ein _____ Projekt ist die Solaranlage. (neu)"', '["neüs","neue","neür","neün"]', 'neüs', 1, 4),
  (l_id, 'true_false', '"Die Nachhaltigkeit" bedeutet "al-istidama".', '["Richtig","Falsch"]', 'Richtig', 1, 5),
  (l_id, 'multiple_choice', 'Welcher Satz ist korrekt?', '["Wir mÃ¼ssen sowohl den Strom als auch das Wasser sparen.","Wir mÃ¼ssen sowohl den Strom oder das Wasser sparen.","Wir mÃ¼ssen sowohl den Strom sondern auch das Wasser sparen.","Wir mÃ¼ssen entweder den Strom als auch das Wasser sparen."]', 'Wir mÃ¼ssen sowohl den Strom als auch das Wasser sparen.', 1, 6),
  (l_id, 'fill_blank', '_____ Tierarten sind vom Aussterben bedroht. (viel)', '["Viele","Vieler","Vielen","Vieles"]', 'Viele', 1, 7),
  (l_id, 'multiple_choice', 'Was ist "der CO2-AusstoÃŸ"?', '["intibath thani uksid alkarbun","al-taqa al-shamsiya","talwuth alma''","tadwir al-nufayat"]', 'intibath thani uksid alkarbun', 1, 8);

  -- Module 5: Gesundheit und ErnÃ¤hrung
  insert into public.course_modules (level_id, title, description, objectives, order_index, estimated_hours, is_published)
  values ('B1', 'Gesundheit und ErnÃ¤hrung', 'Ãœber Gesundheit, Krankheiten und gesunde ErnÃ¤hrung sprechen. FinalsÃ¤tze, Indefinitpronomen und PrÃ¤positionaladverbien anwenden.', '["FinalsÃ¤tze mit um ... zu und damit korrekt bilden","Indefinitpronomen (man, jemand, niemand, etwas, nichts) sicher verwenden","PrÃ¤positionaladverbien (dafÃ¼r, damit, darÃ¼ber) anwenden","Ãœber Gesundheit, Krankheiten und Arztbesuche sprechen","ErnÃ¤hrungsgewohnheiten beschreiben und RatschlÃ¤ge geben"]', 5, 5.0, true)
  returning id into m_id;

  -- Lesson 5.1: Gesundheit und Krankheit
  insert into public.course_lessons (module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published)
  values (m_id, 'Gesundheit und Krankheit', 'Wichtige Vokabeln zu Gesundheit, Symptomen und Arztbesuchen lernen', 'Gesundheit und ErnÃ¤hrung', 'vocabulary', '["Learn key vocabulary","Practice grammar structures","Build comprehension skills","Apply in context","Review and reinforce"]', 45, 1, true)
  returning id into l_id;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, order_index) values
  (l_id, 'die Gesundheit', 'al-sihha', 'health', 'die', NULL, 'noun', 'Die Gesundheit ist das Wichtigste.', 'Health is the most important thing.', 1),
  (l_id, 'die Krankheit', 'al-marad', 'illness', 'die', 'die Krankheiten', 'noun', 'Diese Krankheit ist ansteckend.', 'This illness is contagious.', 2),
  (l_id, 'der Schmerz', 'al-alam', 'pain', 'der', 'die Schmerzen', 'noun', 'Ich habe starke Kopfschmerzen.', 'I have a severe headache.', 3),
  (l_id, 'der Arzt', 'al-tabib', 'doctor', 'der', 'die Ã„rzte', 'noun', 'Der Arzt verschreibt mir ein Medikament.', 'The doctor prescribes me a medication.', 4),
  (l_id, 'die Untersuchung', 'al-fahs', 'examination', 'die', 'die Untersuchungen', 'noun', 'Die Untersuchung daürt eine Stunde.', 'The examination takes one hour.', 5),
  (l_id, 'die Behandlung', 'al-`ilaj', 'treatment', 'die', 'die Behandlungen', 'noun', 'Die Behandlung war erfolgreich.', 'The treatment was successful.', 6),
  (l_id, 'das Medikament', 'al-dawa''', 'medication', 'das', 'die Medikamente', 'noun', 'Ich muÃŸ das Medikament zweimal tÃ¤glich nehmen.', 'I must take the medication twice a day.', 7),
  (l_id, 'die Versicherung', 'al-ta''min', 'insurance', 'die', 'die Versicherungen', 'noun', 'Die Krankenversicherung zahlt die Behandlung.', 'The health insurance pays for the treatment.', 8);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  (l_id, 'FinalsÃ¤tze mit um ... zu und damit', 'FinalsÃ¤tze drÃ¼cken einen Zweck oder ein Ziel aus. "Um ... zu" wird verwendet, wenn das Subjekt im Haupt- und Nebensatz gleich ist. "Damit" wird verwendet, wenn die Subjekte unterschiedlich sind. FÃ¼r arabische Lernende: "um ... zu" entspricht "li/hatta" mit gleichem Subjekt, "damit" entspricht "li-kay" mit unterschiedlichem Subjekt.', '[{"rule":"\"um ... zu\" + Infinitiv: gleiches Subjekt in Haupt- und Nebensatz.","note":"Ich gehe zum Arzt, um mich untersuchen zu lassen."},{"rule":"\"damit\" + Nebensatz (Verb am Ende): unterschiedliche Subjekte.","note":"Ich rufe den Arzt an, damit er mich untersucht."},{"rule":"\"um ... zu\" kann kein separates Subjekt haben. Das Subjekt ist implizit.","note":"Er trainiert, um fit zu bleiben. (Er bleibt fit.)"},{"rule":"Nach \"um ... zu\" steht der Infinitiv mit \"zu\" am Satzende.","note":"um gesund zu bleiben / um besser zu schlafen"},{"rule":"Bei trennbaren Verben steht \"zu\" zwischen PrÃ¤fix und Stamm.","note":"um rechtzeitig aufzustehen / um die Medikamente einzunehmen"}]', '[{"german":"Ich gehe zum Arzt, um mich untersuchen zu lassen.","arabic":"adhhab ila al-tabib li-ajli fahsi.","english":"I go to the doctor to get examined."},{"german":"Ich rufe den Arzt an, damit er mir einen Termin gibt.","arabic":"atasil bil-tabib hatta yu`tini maw`idan.","english":"I call the doctor so that he gives me an appointment."},{"german":"Sie trainiert tÃ¤glich, um fit zu bleiben.","arabic":"hiya tatamarrin yawmiyyan li-tabqa fi liyaqa.","english":"She trains daily to stay fit."},{"german":"Ich esse gesund, um mein Immunsystem zu stÃ¤rken.","arabic":"akul bi-shakl sihi li-taqwiyat jihazi al-mana`i.","english":"I eat healthily to strengthen my immune system."},{"german":"Der Arzt gab mir ein Rezept, damit ich das Medikament bekomme.","arabic":"a`tani al-tabib wasfan tabiyyan li-kay ahsul `ala al-dawa''.","english":"The doctor gave me a prescription so that I get the medication."}]', '[{"mistake":"Ich gehe zum Arzt, um ich mich untersuchen lasse.","correction":"Ich gehe zum Arzt, um mich untersuchen zu lassen.","explanation":"Nach \"um ... zu\" kommt der Infinitiv, kein konjugiertes Verb."},{"mistake":"Ich rufe den Arzt an, um er mir hilft.","correction":"Ich rufe den Arzt an, damit er mir hilft.","explanation":"Verschiedene Subjekte (ich/er) brauchen \"damit\", nicht \"um ... zu\"."},{"mistake":"um fit bleiben (fehlendes \"zu\")","correction":"um fit zu bleiben.","explanation":"\"zu\" gehÃ¶rt zwischen \"um\" und den Infinitiv: \"um fit zu bleiben\"."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  (l_id, 'fill_gap', 'Ich esse gesund, _____ fit zu bleiben.', '["um","damit","zu","um ... zu"]', 'um ... zu', 'Gleiches Subjekt (ich): "um ... zu".', 1, 1),
  (l_id, 'fill_gap', 'Ich rufe den Arzt an, _____ er mir einen Termin gibt.', '["damit","um ... zu","weil","obwohl"]', 'damit', 'Verschiedene Subjekte (ich/er): "damit".', 1, 2),
  (l_id, 'translation', 'Ãœbersetze: "I go to the doctor to get a prescription."', '["Ich gehe zum Arzt, um ein Rezept zu bekommen.","Ich gehe zum Arzt, damit ein Rezept zu bekommen.","Ich gehe zum Arzt, um ich ein Rezept bekomme.","Ich gehe zum Arzt, damit ich ein Rezept bekomme."]', 'Ich gehe zum Arzt, um ein Rezept zu bekommen.', 'Gleiches Subjekt: "um ... zu".', 1, 3),
  (l_id, 'multiple_choice', 'Was bedeutet "die Untersuchung"?', '["al-fahs","al-`ilaj","al-dawa''","al-alam"]', 'al-fahs', '"Die Untersuchung" ist die Ã¤rztliche Untersuchung.', 1, 4),
  (l_id, 'fill_gap', 'Sie trainiert, _____ stark zu werden.', '["um","damit","weil","sodass"]', 'um', 'Gleiches Subjekt: "um stark zu werden".', 1, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  (l_id, 'multiple_choice', 'Was bedeutet "der Schmerz"?', '["al-alam","al-sihha","al-marad","al-`ilaj"]', 'al-alam', 1, 1),
  (l_id, 'fill_blank', 'Ich gehe zum Arzt, _____ mich zu untersuchen.', '["um","damit","zu","sodass"]', 'um', 1, 2),
  (l_id, 'true_false', '"Um ... zu" wird bei verschiedenen Subjekten verwendet.', '["Richtig","Falsch"]', 'Falsch', 1, 3),
  (l_id, 'multiple_choice', 'Was setzt man bei FinalsÃ¤tzen mit "damit" ein?', '["Nebensatz mit Verb am Ende","Infinitiv mit zu","Hauptsatz mit Verb an Position 1","Partizip Perfekt"]', 'Nebensatz mit Verb am Ende', 1, 4),
  (l_id, 'fill_blank', 'Die Krankenversicherung zahlt, _____ ich behandelt werde.', '["damit","um ... zu","weil","obwohl"]', 'damit', 1, 5),
  (l_id, 'true_false', '"Die Behandlung" bedeutet "al-`ilaj".', '["Richtig","Falsch"]', 'Richtig', 1, 6);

  -- Lesson 5.2: ErnÃ¤hrung und NÃ¤hrstoffe
  insert into public.course_lessons (module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published)
  values (m_id, 'ErnÃ¤hrung und NÃ¤hrstoffe', 'Vokabular zu Lebensmitteln, NÃ¤hrstoffen und gesunder ErnÃ¤hrung lernen', 'Gesundheit und ErnÃ¤hrung', 'vocabulary', '["Learn key vocabulary","Practice grammar structures","Build comprehension skills","Apply in context","Review and reinforce"]', 45, 2, true)
  returning id into l_id;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, order_index) values
  (l_id, 'die ErnÃ¤hrung', 'al-taghdhiya', 'nutrition', 'die', NULL, 'noun', 'Eine ausgewogene ErnÃ¤hrung ist wichtig.', 'A balanced diet is important.', 1),
  (l_id, 'das Vitamin', 'alfitamin', 'vitamin', 'das', 'die Vitamine', 'noun', 'Vitamine sind wichtig fÃ¼r das Immunsystem.', 'Vitamins are important for the immune system.', 2),
  (l_id, 'das EiweiÃŸ', 'albrutin', 'protein', 'das', 'die EiweiÃŸe', 'noun', 'EiweiÃŸ ist in Fleisch und HÃ¼lsenfrÃ¼chten enthalten.', 'Protein is found in meat and legumes.', 3),
  (l_id, 'das Fett', 'al-duhun', 'fat', 'das', 'die Fette', 'noun', 'Nicht alle Fette sind ungesund.', 'Not all fats are unhealthy.', 4),
  (l_id, 'das Kohlenhydrat', 'alkarbuhidrat', 'carbohydrate', 'das', 'die Kohlenhydrate', 'noun', 'Kohlenhydrate liefern Energie.', 'Carbohydrates provide energy.', 5),
  (l_id, 'die Kalorie', 'alsu`rat al-harariya', 'calorie', 'die', 'die Kalorien', 'noun', 'Ich achte auf meine Kalorienzufuhr.', 'I watch my calorie intake.', 6),
  (l_id, 'der NÃ¤hrstoff', 'almughadhdhi', 'nutrient', 'der', 'die NÃ¤hrstoffe', 'noun', 'Der KÃ¶rper braucht verschiedene NÃ¤hrstoffe.', 'The body needs different nutrients.', 7),
  (l_id, 'die DiÃ¤t', 'al-himiya', 'diet', 'die', 'die DiÃ¤ten', 'noun', 'Eine ausgewogene DiÃ¤t ist besser als eine RadikaldiÃ¤t.', 'A balanced diet is better than a crash diet.', 8);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  (l_id, 'Indefinitpronomen (man, jemand, niemand, etwas, nichts)', 'Indefinitpronomen beziehen sich auf unbestimmte Personen oder Dinge. "Man" bedeutet "man/mart a7ad" (generell), "jemand" bedeutet "a7ad ma", "niemand" bedeutet "la a7ad/lam". "Etwas" bedeutet "shay'' ma" und "nichts" bedeutet "la shay''/lam". FÃ¼r arabische Lernende: "man" ist unpersÃ¶nlich wie "al-mar''" oder "al-insan".', '[{"rule":"\"man\" (= man / man) â€“ generelle Aussagen, unpersÃ¶nlich. Wird wie \"er\" konjugiert (3. Sg.).","note":"\"Man\" verwendet man fÃ¼r allgemeine Aussagen: Man sollte gesund essen."},{"rule":"\"jemand\" (= someone, irgendeine Person) â€“ positiv, \"niemand\" (= no one, keiner) â€“ negativ.","note":"Jemand hat geklopft. / Niemand war zu Hause."},{"rule":"Dativ/Akkusativ von \"jemand/niemand\": jemandem/niemandem (Dat.), jemanden/niemanden (Akk.).","note":"Ich kenne niemanden in dieser Stadt."},{"rule":"\"etwas\" (= something) â€“ positiv, \"nichts\" (= nothing) â€“ negativ.","note":"Ich mÃ¶chte etwas essen. / Ich habe nichts gegessen."},{"rule":"\"man\" kann nicht dekliniert werden. Im Akkusativ heiÃŸt es \"einen\", im Dativ \"einem\".","note":"Das hilft einem dabei, fit zu bleiben."}]', '[{"german":"Man sollte tÃ¤glich Obst und GemÃ¼se essen.","arabic":"yajib `ala al-mar'' an ya''kul alfawakih wa-al-khudrawat yawmiyyan.","english":"One should eat fruits and vegetables daily."},{"german":"Jemand hat an die TÃ¼r geklopft.","arabic":"a7ad ma qara`a `ala al-bab.","english":"Someone knocked on the door."},{"german":"Niemand kam zu dem Termin.","arabic":"lam ya''ti a7ad ila almaw`id.","english":"No one came to the appointment."},{"german":"Ich mÃ¶chte etwas Gesundes essen.","arabic":"uridu an a''kula shay''an sihiyyan.","english":"I would like to eat something healthy."},{"german":"Er hat nichts gegessen, weil er krank war.","arabic":"lam ya''kul shay''an li''annahu kana maridan.","english":"He ate nothing because he was sick."}]', '[{"mistake":"Man kann seine Gesundheit verbessern. (falsche Konjugation: \"man kÃ¶nnen\")","correction":"Man kann seine Gesundheit verbessern.","explanation":"\"Man\" wird wie die 3. Person Singular konjugiert: \"man kann\", nicht \"man kÃ¶nnen\"."},{"mistake":"Ich habe jemand im Park gesehen.","correction":"Ich habe jemanden im Park gesehen.","explanation":"Akkusativ: \"jemanden\" (nicht \"jemand\")."},{"mistake":"Ich habe nicht etwas gesehen.","correction":"Ich habe nichts gesehen.","explanation":"Negative Form ist \"nichts\" (nicht \"nicht etwas\")."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  (l_id, 'fill_gap', '_____ sollte jeden Morgen frÃ¼hstÃ¼cken.', '["Man","Jemand","Niemand","Etwas"]', 'Man', '"Man" = allgemeine Aussage, generell.', 1, 1),
  (l_id, 'fill_gap', '_____ hat an die TÃ¼r geklopft. (someone)', '["Jemand","Niemand","Man","Etwas"]', 'Jemand', '"Jemand" = eine unbestimmte Person.', 1, 2),
  (l_id, 'translation', 'Ãœbersetze: "No one came to the appointment."', '["Niemand kam zu dem Termin.","Jemand kam zu dem Termin.","Man kam zu dem Termin.","Etwas kam zu dem Termin."]', 'Niemand kam zu dem Termin.', '"Niemand" = no one.', 1, 3),
  (l_id, 'multiple_choice', 'Was bedeutet "die Kalorie"?', '["alsu`rat al-harariya","alfitamin","albrutin","alkarbuhidrat"]', 'alsu`rat al-harariya', '"Kalorie" ist eine MaÃŸeinheit fÃ¼r Energie.', 1, 4),
  (l_id, 'fill_gap', 'Ich habe _____ zu essen. (nothing)', '["nichts","etwas","niemand","man"]', 'nichts', '"Nichts" = nothing. "Ich habe nichts zu essen."', 1, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  (l_id, 'multiple_choice', 'Was bedeutet "die DiÃ¤t"?', '["al-himiya","al-taghdhiya","al-sihha","al-marad"]', 'al-himiya', 1, 1),
  (l_id, 'fill_blank', 'Einem _____ sollte man nicht vertraün. (niemand)', '["niemandem","niemanden","niemand","niemanndem"]', 'niemandem', 1, 2),
  (l_id, 'true_false', '"Man" wird wie die 3. Person Plural konjugiert.', '["Richtig","Falsch"]', 'Falsch', 1, 3),
  (l_id, 'multiple_choice', 'Was ist der Akkusativ von "jemand"?', '["jemanden","jemandem","jemands","jemandes"]', 'jemanden', 1, 4),
  (l_id, 'fill_blank', 'Ich mÃ¶chte _____ essen, aber nichts Ungesundes.', '["etwas","nichts","jemand","man"]', 'etwas', 1, 5),
  (l_id, 'true_false', '"Das EiweiÃŸ" bedeutet "albrutin".', '["Richtig","Falsch"]', 'Richtig', 1, 6);

  -- Lesson 5.3: PrÃ¤positionaladverbien und FinalsÃ¤tze
  insert into public.course_lessons (module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published)
  values (m_id, 'PrÃ¤positionaladverbien und FinalsÃ¤tze', 'PrÃ¤positionaladverbien (dafÃ¼r, damit, darÃ¼ber) und deren Verwendung im Kontext von Gesundheit', 'Gesundheit und ErnÃ¤hrung', 'grammar', '["Learn key vocabulary","Practice grammar structures","Build comprehension skills","Apply in context","Review and reinforce"]', 60, 3, true)
  returning id into l_id;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, order_index) values
  (l_id, 'achten auf', 'yantabih li/yahuth `ala', 'to pay attention to', NULL, NULL, 'verb', 'Ich achte auf meine ErnÃ¤hrung.', 'I pay attention to my diet.', 1),
  (l_id, 'leiden unter', 'yu`ani min', 'to suffer from', NULL, NULL, 'verb', 'Er leidet unter Allergien.', 'He suffers from allergies.', 2),
  (l_id, 'sich kÃ¼mmern um', 'ya`tani bi', 'to take care of', NULL, NULL, 'verb', 'Ich kÃ¼mmere mich um meine Gesundheit.', 'I take care of my health.', 3),
  (l_id, 'verzichten auf', 'yastaghni `an', 'to abstain from', NULL, NULL, 'verb', 'Ich verzichte auf Zucker.', 'I abstain from sugar.', 4),
  (l_id, 'sich gewÃ¶hnen an', 'yat`awwad `ala', 'to get used to', NULL, NULL, 'verb', 'Ich gewÃ¶hne mich an die neue DiÃ¤t.', 'I am getting used to the new diet.', 5),
  (l_id, 'die Allergie', 'al-hasasiya', 'allergy', 'die', 'die Allergien', 'noun', 'Meine Allergie gegen Pollen ist stark.', 'My allergy to pollen is strong.', 6),
  (l_id, 'das Immunsystem', 'al-jihaz al-mana`i', 'immune system', 'das', 'die Immunsysteme', 'noun', 'Ein starkes Immunsystem ist wichtig.', 'A strong immune system is important.', 7);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  (l_id, 'PrÃ¤positionaladverbien (dafÃ¼r, damit, darÃ¼ber)', 'PrÃ¤positionaladverbien ersetzen eine PrÃ¤position + Nomen/Pronomen. Sie werden mit "da-" + PrÃ¤position gebildet (auÃŸer wenn die PrÃ¤position mit einem Vokal beginnt, dann "dar-"). "Worauf, womit, wofÃ¼r" sind die Frageformen. FÃ¼r arabische Lernende: "dafÃ¼r" = "li-dhalik", "damit" = "bi-dhalik", "darÃ¼ber" = "`an dhalik".', '[{"rule":"Bildung: da- + PrÃ¤position (dafÃ¼r, damit, darin, darauf, darÃ¼ber, daran, danach).","note":"Bei Vokal: dar- (darauf, daran, darin, daraus)."},{"rule":"PrÃ¤positionaladverbien beziehen sich auf Sachen/Abstrakta, nicht auf Personen.","note":"Ich denke darÃ¼ber nach. (Ã¼ber die Gesundheit) â€“ nicht fÃ¼r Personen: Ich denke an ihn."},{"rule":"Frageformen: wo(r)- + PrÃ¤position (womit, wofÃ¼r, worauf, worÃ¼ber).","note":"WofÃ¼r interessierst du dich? â€“ FÃ¼r gesunde ErnÃ¤hrung."},{"rule":"Bei Verben mit PrÃ¤position: die PrÃ¤position wird durch das Adverb ersetzt.","note":"Ich sorge fÃ¼r meine Gesundheit. â†’ Ich sorge dafÃ¼r."},{"rule":"Bei Personen: PrÃ¤position + Personalpronomen (fÃ¼r ihn, mit ihr, an sie).","note":"Ich kÃ¼mmere mich um ihn. (Person) â€“ Ich kÃ¼mmere mich darum. (Sache)"}]', '[{"german":"Ich sorge fÃ¼r meine Gesundheit. Ich sorge dafÃ¼r.","arabic":"ana a`tani bi-sihhati. ana a`tani bi-dhalik.","english":"I care for my health. I care for it."},{"german":"Worauf achtest du bei der ErnÃ¤hrung?","arabic":"bi-ma dha tahtammu fi al-taghdhiya?","english":"What do you pay attention to in nutrition?"},{"german":"Ich denke darÃ¼ber nach, meine ErnÃ¤hrung umzustellen.","arabic":"ana ufakkir fi taghyir taghdhiyati.","english":"I am thinking about changing my diet."},{"german":"Womit kann ich dir helfen?","arabic":"bi-ma dha yumkinuni musa`adatuka?","english":"What can I help you with?"},{"german":"Er leidet darunter, dass er Allergien hat.","arabic":"huwa yu`ani min anna ladayhi hasasiya.","english":"He suffers from having allergies."}]', '[{"mistake":"Ich sorge dafÃ¼r gesunde ErnÃ¤hrung (falsche Verwendung eines Nebensatzes)","correction":"Ich sorge fÃ¼r gesunde ErnÃ¤hrung. / Ich sorge dafÃ¼r.","explanation":"PrÃ¤positionaladverbien kÃ¶nnen nicht direkt durch ein Nomen ergÃ¤nzt werden."},{"mistake":"Worauf wartest du? â€“ FÃ¼r den Bus. (falsche PrÃ¤position in der Antwort)","correction":"Worauf wartest du? â€“ Auf den Bus.","explanation":"Die PrÃ¤position in der Antwort muÃŸ der FrageprÃ¤position entsprechen."},{"mistake":"Ich denke dran. (informell, aber mÃ¶glich)","correction":"Ich denke daran. (korrekte formelle Form)","explanation":"In formellem Deutsch: \"daran\" (nicht \"dran\")."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  (l_id, 'fill_gap', 'Ich interessiere mich fÃ¼r gesunde ErnÃ¤hrung. Ich interessiere mich _____.', '["dafÃ¼r","darauf","darin","damit"]', 'dafÃ¼r', '"FÃ¼r etwas" â†’ "dafÃ¼r".', 1, 1),
  (l_id, 'fill_gap', '_____ achtest du bei der ErnÃ¤hrung?', '["Worauf","WofÃ¼r","Womit","Woran"]', 'Worauf', '"Achten auf" â†’ "worauf".', 1, 2),
  (l_id, 'translation', 'Ãœbersetze: "What are you thinking about?"', '["WorÃ¼ber denkst du nach?","Worauf denkst du nach?","Womit denkst du nach?","WofÃ¼r denkst du nach?"]', 'WorÃ¼ber denkst du nach?', '"Nachdenken Ã¼ber" â†’ "WorÃ¼ber?".', 1, 3),
  (l_id, 'multiple_choice', 'Was bedeutet "sich kÃ¼mmern um"?', '["ya`tani bi","yu`ani min","yastaghni `an","yat`awwad `ala"]', 'ya`tani bi', '"Sich kÃ¼mmern um" = sich um etwas/jemanden kÃ¼mmern.', 1, 4),
  (l_id, 'fill_gap', 'Er leidet _____, dass er keine Milchprodukte vertrÃ¤gt.', '["darunter","dafÃ¼r","darauf","dabei"]', 'darunter', '"Leiden unter" â†’ "darunter", dass ...', 1, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  (l_id, 'multiple_choice', 'Was bedeutet "dafÃ¼r"?', '["li-dhalik","bi-dhalik","an dhalik","ala dhalik"]', 'li-dhalik', 1, 1),
  (l_id, 'fill_blank', '_____ kann ich dir helfen? (mit was?)', '["Womit","WofÃ¼r","Worauf","Woran"]', 'Womit', 1, 2),
  (l_id, 'true_false', 'PrÃ¤positionaladverbien werden fÃ¼r Personen verwendet.', '["Richtig","Falsch"]', 'Falsch', 1, 3),
  (l_id, 'multiple_choice', 'Was ist die Frageform zu "an" + Sache?', '["woran","wodran","worander","woan"]', 'woran', 1, 4),
  (l_id, 'fill_blank', 'Ich denke _____, meine ErnÃ¤hrung umzustellen. (darÃ¼ber nach / darÃ¼ber / daran)', '["darÃ¼ber nach","darÃ¼ber","daran","dadurch"]', 'darÃ¼ber nach', 1, 5),
  (l_id, 'true_false', '"Bei Vokal wird dar-: darauf, daran."', '["Richtig","Falsch"]', 'Richtig', 1, 6);

  -- Lesson 5.4: Beim Arzt â€“ Ein GesprÃ¤ch fÃ¼hren
  insert into public.course_lessons (module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published)
  values (m_id, 'Beim Arzt â€“ Ein GesprÃ¤ch fÃ¼hren', 'Ein ArztgesprÃ¤ch verstehen und fÃ¼hren â€“ HÃ¶r- und SprechÃ¼bungen zu Symptomen und Behandlungen', 'Gesundheit und ErnÃ¤hrung', 'listening', '["Learn key vocabulary","Practice grammar structures","Build comprehension skills","Apply in context","Review and reinforce"]', 50, 4, true)
  returning id into l_id;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, order_index) values
  (l_id, 'das Symptom', 'al-`arad', 'symptom', 'das', 'die Symptome', 'noun', 'Die Symptome sind Husten und Fieber.', 'The symptoms are cough and fever.', 1),
  (l_id, 'das Fieber', 'al-humma', 'fever', 'das', NULL, 'noun', 'Ich habe 39 Grad Fieber.', 'I have a fever of 39 degrees.', 2),
  (l_id, 'der Husten', 'al-su`al', 'cough', 'der', NULL, 'noun', 'Der Husten ist sehr stark.', 'The cough is very strong.', 3),
  (l_id, 'die ErkÃ¤ltung', 'al-bard/zukam', 'cold', 'die', 'die ErkÃ¤ltungen', 'noun', 'Ich habe eine ErkÃ¤ltung.', 'I have a cold.', 4),
  (l_id, 'die Allergie', 'al-hasasiya', 'allergy', 'die', 'die Allergien', 'noun', 'Meine Allergie gegen Pollen ist schlimm.', 'My allergy to pollen is bad.', 5),
  (l_id, 'die Spritze', 'al-ibra', 'injection/shot', 'die', 'die Spritzen', 'noun', 'Der Arzt gab mir eine Spritze.', 'The doctor gave me an injection.', 6),
  (l_id, 'der Rat', 'al-nasiha', 'advice', 'der', 'die RatschlÃ¤ge', 'noun', 'Der Arzt gab mir einen guten Rat.', 'The doctor gave me good advice.', 7);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  (l_id, 'FinalsÃ¤tze, Indefinitpronomen und PrÃ¤positionaladverbien im ArztgesprÃ¤ch', 'Im ArztgesprÃ¤ch verwendest du FinalsÃ¤tze, um Ziele auszudrÃ¼cken ("Ich komme, um mich untersuchen zu lassen"), Indefinitpronomen fÃ¼r unbestimmte Angaben ("Jemand hat gehustet") und PrÃ¤positionaladverbien ("Ich leide darunter").', '[{"rule":"FinalsÃ¤tze beim Arzt: \"Ich komme, um mich untersuchen zu lassen.\"","note":"Hauptsatz + um ... zu + Infinitiv (gleiches Subjekt)."},{"rule":"Indefinitpronomen fÃ¼r Symptome: \"Jemand hat geniest.\" / \"Niemand hatte Fieber.\"","note":"Jemand (positiv), niemand (negativ)."},{"rule":"PrÃ¤positionaladverbien: \"Ich leide darunter\" / \"Ich achte darauf.\"","note":"Ersetzt PrÃ¤position + Sache/Abstraktum."},{"rule":"Fragen mit PrÃ¤positionaladverbien: \"Worunter leiden Sie?\" / \"Wogegen sind Sie allergisch?\"","note":"Formelle Fragen beim Arzt."}]', '[{"german":"Ich bin gekommen, um mich untersuchen zu lassen.","arabic":"ji''tu li-ajli an afhas nafsi.","english":"I came to get examined."},{"german":"Jemand in meiner Familie hat Husten.","arabic":"a7ad ma fi `a''ilati yus`al.","english":"Someone in my family has a cough."},{"german":"Ich leide darunter, dass ich schlecht schlafe.","arabic":"ana u`ani min anna namati radi`a.","english":"I suffer from poor sleep."},{"german":"Wogegen sind Sie allergisch?","arabic":"ma dha ladayka hasasiya minhu?","english":"What are you allergic to?"},{"german":"Ich verzichte auf Zucker, um gesÃ¼nder zu leben.","arabic":"ana astaghni `an al-sukkar li-a`ish bi-shakl asihh.","english":"I avoid sugar to live healthier."}]', '[{"mistake":"Ich komme, um der Arzt mich untersucht.","correction":"Ich komme, um mich untersuchen zu lassen.","explanation":"Finalsatz mit \"um ... zu\" + Infinitiv (kein konjugiertes Verb)."},{"mistake":"Worunter leiden Sie? â€“ Ich leide unter Allergien. (antwortet mit Nomen)","correction":"Ich leide darunter.","explanation":"PrÃ¤positionaladverb fÃ¼r Sache: \"darunter\" (nicht \"darunter Allergien\")."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  (l_id, 'multiple_choice', 'Was bedeutet "das Fieber"?', '["al-humma","al-su`al","al-zukam","al-`arad"]', 'al-humma', '"Fieber" = erhÃ¶hte KÃ¶rpertemperatur.', 1, 1),
  (l_id, 'fill_gap', 'Ich bin gekommen, _____ mich untersuchen zu lassen.', '["um","damit","weil","sodass"]', 'um', 'Gleiches Subjekt (ich): "um ... zu".', 1, 2),
  (l_id, 'translation', 'Ãœbersetze: "Someone is waiting in the waiting room."', '["Jemand wartet im Wartezimmer.","Niemand wartet im Wartezimmer.","Man wartet im Wartezimmer.","Etwas wartet im Wartezimmer."]', 'Jemand wartet im Wartezimmer.', '"Jemand" = someone.', 1, 3),
  (l_id, 'multiple_choice', 'Was sagt der Arzt am Anfang?', '["Was fehlt Ihnen?","Geht es Ihnen gut?","Haben Sie Hunger?","Wie heiÃŸen Sie?"]', 'Was fehlt Ihnen?', '"Was fehlt Ihnen?" ist die typische Frage des Arztes.', 1, 4),
  (l_id, 'fill_gap', 'Ich leide _____, dass ich oft krank bin.', '["darunter","dafÃ¼r","darauf","worunter"]', 'darunter', '"Leiden unter" â†’ "darunter".', 1, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  (l_id, 'multiple_choice', 'Was bedeutet "die ErkÃ¤ltung"?', '["al-bard/al-zukam","al-humma","al-hasasiya","al-`ilaj"]', 'al-bard/al-zukam', 1, 1),
  (l_id, 'fill_blank', 'Ich verzichte auf Fleisch, _____ gesÃ¼nder zu leben.', '["um","damit","weil","obwohl"]', 'um', 1, 2),
  (l_id, 'true_false', 'Der Arzt sagt "Was fehlt Ihnen?" um nach Symptomen zu fragen.', '["Richtig","Falsch"]', 'Richtig', 1, 3),
  (l_id, 'multiple_choice', 'Welches Indefinitpronomen ist negativ?', '["niemand","jemand","man","etwas"]', 'niemand', 1, 4),
  (l_id, 'fill_blank', '___ gegen sind Sie allergisch?', '["Wogegen","Woran","WofÃ¼r","Womit"]', 'Wogegen', 1, 5),
  (l_id, 'true_false', '"Der Rat" bedeutet "al-nasiha".', '["Richtig","Falsch"]', 'Richtig', 1, 6);

  -- Lesson 5.5: Wiederholung: Gesundheit und ErnÃ¤hrung
  insert into public.course_lessons (module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published)
  values (m_id, 'Wiederholung: Gesundheit und ErnÃ¤hrung', 'Alle Themen aus Modul 5 wiederholen und festigen', 'Gesundheit und ErnÃ¤hrung', 'review', '["Learn key vocabulary","Practice grammar structures","Build comprehension skills","Apply in context","Review and reinforce"]', 45, 5, true)
  returning id into l_id;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, order_index) values
  (l_id, 'das Wohlbefinden', 'al-shu`ur bi-al-rtiya', 'well-being', 'das', NULL, 'noun', 'Sport verbessert das Wohlbefinden.', 'Sports improve well-being.', 1),
  (l_id, 'die Vorsorge', 'al-wiqaya', 'precaution/prevention', 'die', NULL, 'noun', 'Vorsorge ist besser als Nachsorge.', 'Prevention is better than cure.', 2),
  (l_id, 'der Blutdruck', 'dagh al-dam', 'blood pressure', 'der', 'die BlutdrÃ¼cke', 'noun', 'Mein Blutdruck ist normal.', 'My blood pressure is normal.', 3),
  (l_id, 'der Cholesterinspiegel', 'mustawa alkulumistirul', 'cholesterol level', 'der', 'die Cholesterinspiegel', 'noun', 'Der Cholesterinspiegel sollte nicht zu hoch sein.', 'Cholesterol level should not be too high.', 4),
  (l_id, 'das KÃ¶rpergewicht', 'wazn al-jism', 'body weight', 'das', 'die KÃ¶rpergewichte', 'noun', 'Ein gesundes KÃ¶rpergewicht ist wichtig.', 'A healthy body weight is important.', 5),
  (l_id, 'der Stoffwechsel', 'al-istiqab/al-tamthil', 'metabolism', 'der', NULL, 'noun', 'Sport kurbelt den Stoffwechsel an.', 'Sports boost the metabolism.', 6),
  (l_id, 'verdaulich', 'sahl al-hadm', 'digestible', NULL, NULL, 'adjective', 'Leichtes Essen ist gut verdaulich.', 'Light food is easily digestible.', 7);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  (l_id, 'Wiederholung: FinalsÃ¤tze, Indefinitpronomen, PrÃ¤positionaladverbien', 'In dieser Lektion wiederholen wir die drei Hauptgrammatikthemen von Modul 5: FinalsÃ¤tze (um ... zu / damit), Indefinitpronomen (man, jemand, niemand, etwas, nichts) und PrÃ¤positionaladverbien (dafÃ¼r, damit, darÃ¼ber).', '[{"rule":"um ... zu + Infinitiv (gleiches Subjekt) / damit + Nebensatz (verschiedene Subjekte).","note":"Ich trainiere, um fit zu bleiben. / Ich trainiere, damit mein Herz gesund bleibt."},{"rule":"man = allgemein/generell (3. Sg.), jemand = someone (positiv), niemand = no one (negativ).","note":"Man sollte auf seine Gesundheit achten. Jemand wartet. Niemand raucht hier."},{"rule":"etwas = something (positiv), nichts = nothing (negativ).","note":"Ich mÃ¶chte etwas essen. Ich habe nichts gegessen."},{"rule":"PrÃ¤positionaladverbien: da- + PrÃ¤position (dafÃ¼r, damit, darauf, darÃ¼ber).","note":"Ich sorge fÃ¼r meine Gesundheit. â†’ Ich sorge dafÃ¼r."}]', '[{"german":"Ich treibe Sport, um fit zu bleiben.","arabic":"ana amaris al-riyada li-abqa fi liyaqa.","english":"I exercise to stay fit."},{"german":"Man sollte genug Wasser trinken.","arabic":"yajib `ala al-mar'' an yashrab kifayan min alma''.","english":"One should drink enough water."},{"german":"Ich achte darauf, was ich esse.","arabic":"ana antabih li-ma akuluhu.","english":"I pay attention to what I eat."},{"german":"Niemand sollte allein leiden.","arabic":"la yajib li-a7ad an yu`ani wahdahu.","english":"No one should suffer alone."},{"german":"WofÃ¼r interessierst du dich? â€“ FÃ¼r gesunde ErnÃ¤hrung.","arabic":"bi-ma dha tahtamm? - Bi-al-taghdhiya al-sihiya.","english":"What are you interested in? - In healthy nutrition."}]', '[{"mistake":"Ich treibe Sport, um ich fit bleibe.","correction":"Ich treibe Sport, um fit zu bleiben.","explanation":"\"um ... zu\" + Infinitiv, nicht + konjugiertes Verb."},{"mistake":"Man kÃ¶nnen gesund essen.","correction":"Man kann gesund essen.","explanation":"\"Man\" = 3. Person Singular: \"man kann\"."},{"mistake":"Ich interessiere mich fÃ¼r gesunde ErnÃ¤hrung. â€“ Ich interessiere mich dafÃ¼r. (nicht: \"Ich interessiere mich fÃ¼r sie\")","correction":"Ich interessiere mich dafÃ¼r.","explanation":"Bei Sachen: PrÃ¤positionaladverb (dafÃ¼r), nicht Personalpronomen (fÃ¼r sie)."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  (l_id, 'multiple_choice', 'Was bedeutet "das Wohlbefinden"?', '["al-shu`ur bi-al-rtiya","al-sihha","al-marad","al-`ilaj"]', 'al-shu`ur bi-al-rtiya', '"Wohlbefinden" = das GefÃ¼hl, gesund und wohl zu sein.', 1, 1),
  (l_id, 'fill_gap', 'Ich trinke viel Wasser, _____ hydriert zu bleiben.', '["um","damit","weil","obwohl"]', 'um', 'Gleiches Subjekt (ich): "um ... zu".', 1, 2),
  (l_id, 'translation', 'Ãœbersetze: "One should not smoke."', '["Man sollte nicht rauchen.","Jemand sollte nicht rauchen.","Niemand sollte nicht rauchen.","Man rauchen nicht."]', 'Man sollte nicht rauchen.', 'Generelle Aussage mit "man" + Modalverb.', 1, 3),
  (l_id, 'fill_gap', 'Ich achte _____, dass ich genug schlafe.', '["darauf","dafÃ¼r","darin","damit"]', 'darauf', '"Achten auf" â†’ "darauf".', 1, 4),
  (l_id, 'multiple_choice', 'Welcher Satz ist korrekt?', '["Ich habe nichts gegessen.","Ich habe nicht etwas gegessen.","Ich habe nicht gegessen nichts.","Ich habe etwas nicht gegessen."]', 'Ich habe nichts gegessen.', '"Nichts" = nothing, im Deutschen einfache Negation.', 1, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  (l_id, 'multiple_choice', 'Was bedeutet "die Vorsorge"?', '["al-wiqaya","al-`ilaj","al-fahs","al-sihha"]', 'al-wiqaya', 1, 1),
  (l_id, 'fill_blank', '_____ sollte tÃ¤glich Obst essen. (one)', '["Man","Jemand","Niemand","Etwas"]', 'Man', 1, 2),
  (l_id, 'true_false', '"Damit" wird bei unterschiedlichen Subjekten verwendet.', '["Richtig","Falsch"]', 'Richtig', 1, 3),
  (l_id, 'multiple_choice', 'Was ist das PrÃ¤positionaladverb von "fÃ¼r"?', '["dafÃ¼r","darin","darauf","darÃ¼ber"]', 'dafÃ¼r', 1, 4),
  (l_id, 'fill_blank', 'Ich leide _____, dass ich RÃ¼ckenschmerzen habe.', '["darunter","dafÃ¼r","darauf","damit"]', 'darunter', 1, 5),
  (l_id, 'true_false', '"Jemand" ist die negative Form von "niemand".', '["Richtig","Falsch"]', 'Falsch', 1, 6);

  -- Lesson 5.6: Test: Gesundheit und ErnÃ¤hrung
  insert into public.course_lessons (module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published)
  values (m_id, 'Test: Gesundheit und ErnÃ¤hrung', 'Abschlusstest fÃ¼r Modul 5 â€“ Gesundheit und ErnÃ¤hrung', 'Gesundheit und ErnÃ¤hrung', 'test', '["Learn key vocabulary","Practice grammar structures","Build comprehension skills","Apply in context","Review and reinforce"]', 40, 6, true)
  returning id into l_id;

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  (l_id, 'fill_gap', 'Ich gehe zum Arzt, _____ ein Rezept zu bekommen.', '["um","damit","weil","obwohl"]', 'um', 'Gleiches Subjekt (ich): "um ... zu".', 1, 1),
  (l_id, 'fill_gap', '_____ sollte regelmÃ¤ÃŸig Sport treiben.', '["Man","Jemand","Niemand","Etwas"]', 'Man', 'Generelle Aussage mit "man".', 1, 2),
  (l_id, 'translation', 'Ãœbersetze: "I am interested in healthy eating."', '["Ich interessiere mich fÃ¼r gesunde ErnÃ¤hrung.","Ich interessiere mich dafÃ¼r gesunde ErnÃ¤hrung.","Ich interessiere an gesunder ErnÃ¤hrung.","Ich interessiere mich um gesunde ErnÃ¤hrung."]', 'Ich interessiere mich fÃ¼r gesunde ErnÃ¤hrung.', '"Sich interessieren fÃ¼r" â†’ richtige PrÃ¤position.', 1, 3),
  (l_id, 'multiple_choice', 'Was ist das PrÃ¤positionaladverb fÃ¼r "auf"?', '["darauf","dafÃ¼r","damit","darin"]', 'darauf', '"Auf" â†’ "darauf".', 1, 4),
  (l_id, 'fill_gap', 'Ich rufe den Arzt an, _____ er mir hilft.', '["damit","um ... zu","weil","und"]', 'damit', 'Verschiedene Subjekte (ich/er): "damit".', 1, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  (l_id, 'multiple_choice', 'Was bedeutet "die Behandlung"?', '["al-`ilaj","al-fahs","al-marad","al-dawa''"]', 'al-`ilaj', 1, 1),
  (l_id, 'true_false', '"Man" wird wie die 3. Person Singular konjugiert.', '["Richtig","Falsch"]', 'Richtig', 1, 2),
  (l_id, 'fill_blank', 'Dativ von "jemand": jemande___.', '["m","n","s","r"]', 'm', 1, 3),
  (l_id, 'multiple_choice', 'Welches Wort bedeutet "nothing"?', '["nichts","etwas","niemand","man"]', 'nichts', 1, 4),
  (l_id, 'true_false', '"Um ... zu" erfordert ein konjugiertes Verb im Nebensatz.', '["Richtig","Falsch"]', 'Falsch', 1, 5),
  (l_id, 'multiple_choice', 'Was ist die Frageform fÃ¼r "an etwas denken"?', '["woran","womit","wofÃ¼r","worauf"]', 'woran', 1, 6),
  (l_id, 'fill_blank', 'Ich verzichte _____ Zucker, um abzunehmen.', '["auf","fÃ¼r","an","Ã¼ber"]', 'auf', 1, 7),
  (l_id, 'multiple_choice', 'Was bedeutet "das Immunsystem"?', '["al-jihaz al-mana`i","dagh al-dam","al-istiqab","wazn al-jism"]', 'al-jihaz al-mana`i', 1, 8);

  -- Module 6: Beziehungen und Kommunikation
  insert into public.course_modules (level_id, title, description, objectives, order_index, estimated_hours, is_published)
  values ('B1', 'Beziehungen und Kommunikation', 'Ãœber Beziehungen, GefÃ¼hle und Kommunikation sprechen. Indirekte Fragen, Konjunktiv I und Modalverben zur subjektiven Bedeutung anwenden.', '["Indirekte Fragen mit ob und FragewÃ¶rtern korrekt bilden","Den Konjunktiv I fÃ¼r indirekte Rede sicher anwenden","Modalverben zur subjektiven Bedeutung (Vermutung, Behauptung) verwenden","Ãœber Beziehungen, Freundschaft und Familie sprechen","Meinungen hÃ¶flich ausdrÃ¼cken und wiedergeben"]', 6, 5.0, true)
  returning id into m_id;

  -- Lesson 6.1: Beziehungen und Familie
  insert into public.course_lessons (module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published)
  values (m_id, 'Beziehungen und Familie', 'Wichtige Vokabeln zu Beziehungen, Familie und Freundschaft lernen', 'Beziehungen und Kommunikation', 'vocabulary', '["Learn key vocabulary","Practice grammar structures","Build comprehension skills","Apply in context","Review and reinforce"]', 45, 1, true)
  returning id into l_id;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, order_index) values
  (l_id, 'die Beziehung', 'al-`ilaqa', 'relationship', 'die', 'die Beziehungen', 'noun', 'Eine gute Beziehung braucht Vertraün.', 'A good relationship needs trust.', 1),
  (l_id, 'die Freundschaft', 'al-sadaqa', 'friendship', 'die', 'die Freundschaften', 'noun', 'Unsere Freundschaft hÃ¤lt schon Jahre.', 'Our friendship has lasted for years.', 2),
  (l_id, 'der Partner', 'al-sharik', 'partner', 'der', 'die Partner', 'noun', 'Mein Partner unterstÃ¼tzt mich sehr.', 'My partner supports me a lot.', 3),
  (l_id, 'der Freund', 'al-sadiq', 'friend', 'der', 'die Freunde', 'noun', 'Meine Freunde sind wie Familie.', 'My friends are like family.', 4),
  (l_id, 'die Familie', 'al-`a''ila', 'family', 'die', 'die Familien', 'noun', 'Die Familie ist mir sehr wichtig.', 'Family is very important to me.', 5),
  (l_id, 'das Vertraün', 'al-thiqa', 'trust', 'das', NULL, 'noun', 'Vertraün ist die Basis jeder Beziehung.', 'Trust is the basis of every relationship.', 6),
  (l_id, 'die Liebe', 'al-hubb', 'love', 'die', NULL, 'noun', 'Die Liebe verbindet Menschen.', 'Love connects people.', 7),
  (l_id, 'die Bekanntschaft', 'al-ma`rifa', 'acquaintance', 'die', 'die Bekanntschaften', 'noun', 'Ich habe viele Bekanntschaften, aber wenige Freunde.', 'I have many acquaintances but few friends.', 8);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  (l_id, 'Indirekte Fragen', 'Indirekte Fragen sind hÃ¶fliche oder berichtete Fragen. Sie werden mit "ob" (fÃ¼r Ja/Nein-Fragen) oder mit einem Fragewort (wer, was, wo, wann, warum) eingeleitet. Das Verb steht am Ende des indirekten Fragesatzes. FÃ¼r arabische Lernende: "ob" = "hal" (ØºÙŠØ± Ù…Ø¨Ø§Ø´Ø±Ø©), und das konjugierte Verb verschiebt sich ans Ende wie im "dass"-Satz.', '[{"rule":"Indirekte Ja/Nein-Fragen werden mit \"ob\" eingeleitet.","note":"Direkt: \"Kommst du?\" â†’ Indirekt: \"Ich frage, ob du kommst.\""},{"rule":"Indirekte W-Fragen behalten das Fragewort.","note":"Direkt: \"Wo wohnst du?\" â†’ Indirekt: \"Ich mÃ¶chte wissen, wo du wohnst.\""},{"rule":"Das konjugierte Verb steht am Ende des indirekten Fragesatzes.","note":"Ich frage mich, ob er mich mag. / Er fragt, wann der Termin ist."},{"rule":"Indirekte Fragen sind NebensÃ¤tze und werden durch Komma getrennt.","note":"Sie fragt, ob ich Zeit habe."},{"rule":"HÃ¶fliche indirekte Fragen: \"KÃ¶nnten Sie mir sagen, ...\" / \"Ich wÃ¼rde gern wissen, ...\"","note":"KÃ¶nnten Sie mir sagen, wo der nÃ¤chste Arzt ist?"}]', '[{"german":"Ich mÃ¶chte wissen, ob du Zeit hast.","arabic":"uridu an a`rifa hal ladayka waqt.","english":"I would like to know if you have time."},{"german":"Kannst du mir sagen, wann die Party beginnt?","arabic":"hal tastati` an takhbirani mata tabda'' al-hafla?","english":"Can you tell me when the party starts?"},{"german":"Er fragt, wo die nÃ¤chste U-Bahn ist.","arabic":"yas''al ayna muhafazat al-metro al-aqrab.","english":"He asks where the nearest subway is."},{"german":"Ich frage mich, warum er nicht gekommen ist.","arabic":"atasa''al lima lam ya''ti.","english":"I wonder why he did not come."},{"german":"Sie wollte wissen, ob ich sie mag.","arabic":"aradat an ta`rifa hal ana uhibbuha.","english":"She wanted to know if I like her."}]', '[{"mistake":"Ich frage, ob du hast Zeit? (keine Inversion, aber Verb am Ende?)","correction":"Ich frage, ob du Zeit hast.","explanation":"Verb in der indirekten Frage am Ende: \"ob du Zeit hast\"."},{"mistake":"Er fragt, wo ist die nÃ¤chste U-Bahn? (Fragezeichen + Inversion)","correction":"Er fragt, wo die nÃ¤chste U-Bahn ist.","explanation":"Indirekte Frage = Nebensatz (Verb am Ende, kein Fragezeichen)."},{"mistake":"Kannst du mir sagen, ob kommst du?","correction":"Kannst du mir sagen, ob du kommst?","explanation":"Nach \"ob\" kommt das Subjekt, dann die weiteren Satzteile, dann das Verb."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  (l_id, 'fill_gap', 'Ich mÃ¶chte wissen, _____ du morgen Zeit hast.', '["ob","wann","wo","warum"]', 'ob', '"Ob" fÃ¼r Ja/Nein-Fragen in indirekter Rede.', 1, 1),
  (l_id, 'fill_gap', 'Kannst du mir sagen, _____ der Termin ist? (when)', '["wann","ob","wo","warum"]', 'wann', 'W-Frage wird mit "wann" eingeleitet.', 1, 2),
  (l_id, 'translation', 'Ãœbersetze: "Can you tell me if he is coming?"', '["Kannst du mir sagen, ob er kommt?","Kannst du mir sagen, ob kommt er?","Kannst du mir sagen, ob er kommt?","Kannst du mir sagen, ob er kommt oder nicht?"]', 'Kannst du mir sagen, ob er kommt?', 'Indirekte Frage mit "ob" + Verb am Ende.', 1, 3),
  (l_id, 'multiple_choice', 'Was bedeutet "das Vertraün"?', '["al-thiqa","al-hubb","al-sadaqa","al-`ilaqa"]', 'al-thiqa', '"Vertraün" = trust.', 1, 4),
  (l_id, 'fill_gap', 'Sie fragt, _____ ich sie mag.', '["ob","wann","wo","warum"]', 'ob', 'Ja/Nein-Frage: "ob ich sie mag".', 1, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  (l_id, 'multiple_choice', 'Was bedeutet "die Bekanntschaft"?', '["al-ma`rifa","al-sadaqa","al-`a''ila","al-thiqa"]', 'al-ma`rifa', 1, 1),
  (l_id, 'fill_blank', 'Ich weiss nicht, _____ er kommt. (if)', '["ob","wann","wo","warum"]', 'ob', 1, 2),
  (l_id, 'true_false', 'In indirekten Fragen steht das Verb am Ende des Satzes.', '["Richtig","Falsch"]', 'Richtig', 1, 3),
  (l_id, 'multiple_choice', 'Welches Wort leitet eine indirekte Ja/Nein-Frage ein?', '["ob","dass","weil","denn"]', 'ob', 1, 4),
  (l_id, 'fill_blank', 'Kannst du mir sagen, _____ die nÃ¤chste Station ist?', '["wo","ob","wann","wer"]', 'wo', 1, 5),
  (l_id, 'true_false', 'Indirekte Fragen enden mit einem Fragezeichen.', '["Richtig","Falsch"]', 'Falsch', 1, 6);

  -- Lesson 6.2: Kommunikation und GesprÃ¤che
  insert into public.course_lessons (module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published)
  values (m_id, 'Kommunikation und GesprÃ¤che', 'Vokabular zu Kommunikation, Meinungsaustausch und Diskussion lernen', 'Beziehungen und Kommunikation', 'vocabulary', '["Learn key vocabulary","Practice grammar structures","Build comprehension skills","Apply in context","Review and reinforce"]', 45, 2, true)
  returning id into l_id;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, order_index) values
  (l_id, 'die Kommunikation', 'al-tawasul', 'communication', 'die', 'die Kommunikationen', 'noun', 'Gute Kommunikation ist wichtig.', 'Good communication is important.', 1),
  (l_id, 'das GesprÃ¤ch', 'al-muhadatha', 'conversation', 'das', 'die GesprÃ¤che', 'noun', 'Wir hatten ein langes GesprÃ¤ch.', 'We had a long conversation.', 2),
  (l_id, 'der Austausch', 'al-tabadul', 'exchange', 'der', 'die Austausche', 'noun', 'Der kulturelle Austausch ist bereichernd.', 'Cultural exchange is enriching.', 3),
  (l_id, 'die Meinung', 'al-ra''y', 'opinion', 'die', 'die Meinungen', 'noun', 'Meiner Meinung nach ist Ehrlichkeit wichtig.', 'In my opinion, honesty is important.', 4),
  (l_id, 'der Kompromiss', 'al-taswiya/al-hal al-awsat', 'compromise', 'der', 'die Kompromisse', 'noun', 'In einer Beziehung muss man Kompromisse machen.', 'In a relationship you have to make compromises.', 5),
  (l_id, 'das VerstÃ¤ndnis', 'al-tafahum', 'understanding', 'das', NULL, 'noun', 'VerstÃ¤ndnis fÃ¼reinander ist sehr wichtig.', 'Understanding for each other is very important.', 6),
  (l_id, 'die Diskussion', 'al-munaqasha', 'discussion', 'die', 'die Diskussionen', 'noun', 'Wir hatten eine hitzige Diskussion.', 'We had a heated discussion.', 7),
  (l_id, 'die Vereinbarung', 'al-ittifaq', 'agreement', 'die', 'die Vereinbarungen', 'noun', 'Wir haben eine Vereinbarung getroffen.', 'We reached an agreement.', 8);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  (l_id, 'Konjunktiv I â€“ Indirekte Rede', 'Der Konjunktiv I wird in der indirekten Rede verwendet, um eine Aussage einer anderen Person wiederzugeben, ohne sie zu bewerten. Er zeigt an, dass der Sprecher die Aussage lediglich berichtet. FÃ¼r arabische Lernende: der Konjunktiv I in der indirekten Rede entspricht "qala inna/yaz`umu anna" â€“ die wiedergegebene Information wird als Zitat markiert.', '[{"rule":"Konjunktiv I wird aus dem Verbstamm + Endungen gebildet: -e, -est, -e, -en, -et, -en.","note":"er sag-e, er hab-e, er kÃ¶nn-e, er sei, er werd-e"},{"rule":"Konjunktiv I von sein: ich sei, du seiest, er/sie/es sei, wir seien, ihr seiet, sie seien.","note":"Einzige unregelmÃ¤ÃŸige Form im Konjunktiv I."},{"rule":"Wenn Konjunktiv I = Indikativ (z.B. wir/sie), verwendet man Konjunktiv II als Ersatzform.","note":"Sie sagen, sie hÃ¤tten (statt: sie haben) keine Zeit."},{"rule":"Indirekte Rede steht oft nach Verben wie sagen, behaupten, meinen, berichten, erzÃ¤hlen.","note":"Er sagt, er komme morgen."},{"rule":"Hauptsatz + Nebensatz mit \"dass\" oder ohne Konjunktion (Verb an Position 2 mÃ¶glich).","note":"Er sagt, dass er morgen komme. / Er sagt, er komme morgen."}]', '[{"german":"Er sagt, er komme morgen.","arabic":"yaqul inna sayata`a ghadan.","english":"He says he will come tomorrow."},{"german":"Sie behauptet, sie sei krank.","arabic":"taz`umu annaha marida.","english":"She claims she is sick."},{"german":"Er meint, dass das Essen gut sei.","arabic":"yaz`umu anna al-ta`am jayyid.","english":"He thinks the food is good."},{"german":"Sie sagen, sie hÃ¤tten keine Zeit.","arabic":"yaqulun inna laysa ladayhim waqt.","english":"They say they have no time."},{"german":"Der Arzt sagte, ich solle mehr trinken.","arabic":"qala al-tabib yajib an ashrab akthar.","english":"The doctor said I should drink more."}]', '[{"mistake":"Er sagt, er kommt morgen. (Indikativ = normale Rede)","correction":"Er sagt, er komme morgen.","explanation":"Indirekte Rede im Konjunktiv I: \"er komme\" (nicht \"er kommt\")."},{"mistake":"Sie sagen, sie haben keine Zeit. (Konjunktiv I = Indikativ)","correction":"Sie sagen, sie hÃ¤tten keine Zeit.","explanation":"Ersatzform mit Konjunktiv II: \"hÃ¤tten\" (da Konjunktiv I = Indikativ)."},{"mistake":"Er sagt, dass er kommt. (Mischt Indikativ mit dass-Satz)","correction":"Er sagt, dass er komme. / Er sagt, er komme.","explanation":"Auch nach \"dass\" steht Konjunktiv I: \"dass er komme\"."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  (l_id, 'fill_gap', 'Er sagt, er _____ morgen. (kommen â€“ Konjunktiv I)', '["komme","kommt","kÃ¤me","kommen"]', 'komme', 'Konjunktiv I: "er komme".', 1, 1),
  (l_id, 'fill_gap', 'Sie behauptet, sie _____ krank. (sein â€“ Konjunktiv I)', '["sei","ist","wÃ¤re","seist"]', 'sei', 'Konjunktiv I von sein: "sie sei".', 1, 2),
  (l_id, 'translation', 'Ãœbersetze: "He says he has no time."', '["Er sagt, er habe keine Zeit.","Er sagt, er hat keine Zeit.","Er sagt, er hÃ¤tte keine Zeit.","Er sagt, er hatte keine Zeit."]', 'Er sagt, er habe keine Zeit.', 'Konjunktiv I: "er habe keine Zeit".', 1, 3),
  (l_id, 'multiple_choice', 'Was bedeutet "der Austausch"?', '["al-tabadul","al-tafahum","al-munaqasha","al-ittifaq"]', 'al-tabadul', '"Austausch" = exchange.', 1, 4),
  (l_id, 'fill_gap', 'Sie sagen, sie _____ keine Zeit. (haben â€“ Konjunktiv II als Ersatz)', '["hÃ¤tten","haben","hÃ¤ttet","haben"]', 'hÃ¤tten', 'Ersatzform (Konjunktiv II) weil Konjunktiv I = Indikativ.', 1, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  (l_id, 'multiple_choice', 'Was bedeutet "der Kompromiss"?', '["al-taswiya","al-tawasul","al-munaqasha","al-ittifaq"]', 'al-taswiya', 1, 1),
  (l_id, 'fill_blank', 'Konjunktiv I von "sein" fÃ¼r "er": er _____.', '["sei","ist","wÃ¤re","seie"]', 'sei', 1, 2),
  (l_id, 'true_false', 'Konjunktiv I wird fÃ¼r die indirekte Rede verwendet.', '["Richtig","Falsch"]', 'Richtig', 1, 3),
  (l_id, 'multiple_choice', 'Wann verwendet man Konjunktiv II als Ersatz fÃ¼r Konjunktiv I?', '["Wenn Konjunktiv I = Indikativ","Wenn Konjunktiv I nicht existiert","Immer in der indirekten Rede","Nur bei sein"]', 'Wenn Konjunktiv I = Indikativ', 1, 4),
  (l_id, 'fill_blank', 'Er sagt, er _____ morgen kommen. (werden â€“ Konjunktiv I)', '["werde","wird","wÃ¼rde","worden"]', 'werde', 1, 5),
  (l_id, 'true_false', 'Nach "dass" in der indirekten Rede steht das Verb im Indikativ.', '["Richtig","Falsch"]', 'Falsch', 1, 6);

  -- Lesson 6.3: Modalverben zur subjektiven Bedeutung
  insert into public.course_lessons (module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published)
  values (m_id, 'Modalverben zur subjektiven Bedeutung', 'Modalverben in subjektiver Bedeutung: Vermutung, Behauptung und HÃ¶rensagen ausdrÃ¼cken', 'Beziehungen und Kommunikation', 'grammar', '["Learn key vocabulary","Practice grammar structures","Build comprehension skills","Apply in context","Review and reinforce"]', 60, 3, true)
  returning id into l_id;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, order_index) values
  (l_id, 'vermuten', 'yaftarid/yashum', 'to assume/suspect', NULL, NULL, 'verb', 'Ich vermute, dass er lÃ¼gt.', 'I suspect he is lying.', 1),
  (l_id, 'behaupten', 'yaz`um', 'to claim', NULL, NULL, 'verb', 'Er behauptet, die Wahrheit zu sagen.', 'He claims to tell the truth.', 2),
  (l_id, 'bezweifeln', 'yashuk fi', 'to doubt', NULL, NULL, 'verb', 'Ich bezweifle, dass das stimmt.', 'I doubt that is true.', 3),
  (l_id, 'annehmen', 'yaftarid', 'to assume', NULL, NULL, 'verb', 'Ich nehme an, dass du Recht hast.', 'I assume you are right.', 4),
  (l_id, 'glauben an', 'yu''min bi', 'to believe in', NULL, NULL, 'verb', 'Ich glaube an die Ehrlichkeit meiner Freunde.', 'I believe in the honesty of my friends.', 5),
  (l_id, 'die Ehrlichkeit', 'al-sidaq/al-aman', 'honesty', 'die', NULL, 'noun', 'Ehrlichkeit ist in einer Beziehung essenziell.', 'Honesty is essential in a relationship.', 6),
  (l_id, 'die Behauptung', 'al-za`m/al-da`wa', 'claim/assertion', 'die', 'die Behauptungen', 'noun', 'Seine Behauptung ist nicht bewiesen.', 'His claim is not proven.', 7);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  (l_id, 'Modalverben zur subjektiven Bedeutung', 'Modalverben kÃ¶nnen nicht nur objektive (FÃ¤higkeit, Erlaubnis, Pflicht), sondern auch subjektive Bedeutung haben: Vermutung, Behauptung oder HÃ¶rensagen ausdrÃ¼cken. "KÃ¶nnen" drÃ¼ckt eine Vermutung aus (es kÃ¶nnte sein), "mÃ¼ssen" eine logische Schlussfolgerung, "dÃ¼rfen" eine Vermutung in der Negation, "sollen" die Wiederholung einer Behauptung.', '[{"rule":"\"kÃ¶nnen\" (subjektiv) = Vermutung, MÃ¶glichkeit: Es kÃ¶nnte sein, dass ... (Kann das stimmen?)","note":"Das kann sein. / Er kann krank sein. (Es ist mÃ¶glich.)"},{"rule":"\"mÃ¼ssen\" (subjektiv) = logische Schlussfolgerung: Es muss so sein (sehr wahrscheinlich).","note":"Er muss krank sein. (Er ist sicher krank.)"},{"rule":"\"dÃ¼rfen\" in der Negation = Vermutung, dass etwas nicht mÃ¶glich ist.","note":"Das darf nicht wahr sein. (Das kann nicht sein.)"},{"rule":"\"sollen\" (subjektiv) = Wiederholung einer Behauptung (HÃ¶rensagen).","note":"Er soll krank sein. (Das habe ich gehÃ¶rt.)"},{"rule":"\"wollen\" (subjektiv) = Behauptung der Person selbst.","note":"Er will der Beste sein. (Er behauptet es selbst.)"}]', '[{"german":"Das kann sein, dass er lÃ¼gt.","arabic":"qad yakun sahibaan annahu yakdhib.","english":"It could be that he is lying."},{"german":"Sie muss zu Hause sein, das Licht ist an.","arabic":"la budda annaha fi al-manzil, al-daw'' fi al-ghurfa.","english":"She must be at home, the light is on."},{"german":"Das darf nicht wahr sein!","arabic":"la yumkin an yakun hadha sahiban!","english":"That cannot be true!"},{"german":"Er soll sehr reich sein.","arabic":"yaz`umu anna tharwiyyan jiddan.","english":"He is said to be very rich."},{"german":"Sie will die Wahrheit gesagt haben.","arabic":"taz`umu annaha qalat al-haqiqa.","english":"She claims to have told the truth."}]', '[{"mistake":"Er soll krank sein. (verwechselt mit: \"Er soll krank sein\" = Er hat die Pflicht, krank zu sein?)","correction":"Er soll krank sein = Man sagt, er sei krank.","explanation":"Kontext klÃ¤rt: \"sollen\" subjektiv = HÃ¶rensagen."},{"mistake":"Das kann sein. (falsch: \"Das kann sein\" ist zwei WÃ¶rter)","correction":"Das kann sein. (korrekt)","explanation":"\"Das kann sein\" ist korrekt geschrieben."},{"mistake":"Er muss der TÃ¤ter sein. (subjektive Bedeutung: logische Folgerung)","correction":"Er muss der TÃ¤ter sein. (subjektiv = es ist logisch.)","explanation":"Kontext: Objektives mÃ¼ssen (Pflicht) vs. subjektives mÃ¼ssen (Schlussfolgerung)."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  (l_id, 'fill_gap', 'Er _____ krank sein, er hat Fieber. (logische Folgerung)', '["muss","kann","darf","soll"]', 'muss', '"Muss" subjektiv = logische Schlussfolgerung.', 1, 1),
  (l_id, 'fill_gap', 'Das _____ nicht sein! Ich glaube es nicht.', '["darf","muss","kann","soll"]', 'darf', '"Darf nicht" subjektiv = das kann unmÃ¶glich sein.', 1, 2),
  (l_id, 'translation', 'Ãœbersetze: "He is said to be very rich."', '["Er soll sehr reich sein.","Er muss sehr reich sein.","Er kann sehr reich sein.","Er darf sehr reich sein."]', 'Er soll sehr reich sein.', '"Sollen" subjektiv = HÃ¶rensagen.', 1, 3),
  (l_id, 'multiple_choice', 'Was drÃ¼ckt "mÃ¼ssen" in subjektiver Bedeutung aus?', '["logische Folgerung","Pflicht","Erlaubnis","FÃ¤higkeit"]', 'logische Folgerung', '"MÃ¼ssen" subjektiv = es ist sehr wahrscheinlich.', 1, 4),
  (l_id, 'fill_gap', 'Das _____ wahr sein, es ist mÃ¶glich.', '["kann","muss","darf","soll"]', 'kann', '"Kann" subjektiv = Vermutung, MÃ¶glichkeit.', 1, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  (l_id, 'multiple_choice', 'Was bedeutet "behaupten"?', '["yaz`um","yaftarid","yashuk","yu''min"]', 'yaz`um', 1, 1),
  (l_id, 'fill_blank', 'Er _____ der Gewinner sein, er hat die meisten Punkte. (muss/kann/darf/soll)', '["muss","kann","darf","soll"]', 'muss', 1, 2),
  (l_id, 'true_false', '"Sollen" in subjektiver Bedeutung drÃ¼ckt HÃ¶rensagen aus.', '["Richtig","Falsch"]', 'Richtig', 1, 3),
  (l_id, 'multiple_choice', 'Welche Bedeutung hat "kÃ¶nnen" subjektiv?', '["Vermutung","FÃ¤higkeit","Erlaubnis","Pflicht"]', 'Vermutung', 1, 4),
  (l_id, 'fill_blank', 'Das _____ nicht wahr sein! (dÃ¼rfen â€“ subjektiv negativ)', '["darf","kann","muss","soll"]', 'darf', 1, 5),
  (l_id, 'true_false', 'Subjektive Modalverben brauchen eine andere Satzstellung als objektive.', '["Richtig","Falsch"]', 'Falsch', 1, 6);

  -- Lesson 6.4: Eine formelle E-Mail schreiben
  insert into public.course_lessons (module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published)
  values (m_id, 'Eine formelle E-Mail schreiben', 'Eine formelle E-Mail oder Anfrage auf Deutsch verfassen â€“ indirekte Fragen und Konjunktiv I anwenden', 'Beziehungen und Kommunikation', 'writing', '["Learn key vocabulary","Practice grammar structures","Build comprehension skills","Apply in context","Review and reinforce"]', 50, 4, true)
  returning id into l_id;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, order_index) values
  (l_id, 'die Anfrage', 'al-istifham/al-taalub', 'inquiry/reqüst', 'die', 'die Anfragen', 'noun', 'Ich sende eine Anfrage an die Firma.', 'I send an inquiry to the company.', 1),
  (l_id, 'die BestÃ¤tigung', 'al-ta''kid', 'confirmation', 'die', 'die BestÃ¤tigungen', 'noun', 'Ich warte auf eine BestÃ¤tigung.', 'I am waiting for a confirmation.', 2),
  (l_id, 'die RÃ¼ckmeldung', 'al-irad/al-taghdiya', 'feedback/response', 'die', 'die RÃ¼ckmeldungen', 'noun', 'Ich freue mich auf Ihre RÃ¼ckmeldung.', 'I look forward to your response.', 3),
  (l_id, 'der Betreff', 'mawdu` al-risala', 'subject line', 'der', 'die Betreffe', 'noun', 'Der Betreff der E-Mail ist "Anfrage".', 'The subject of the email is "Inquiry".', 4),
  (l_id, 'der Anhang', 'almurfaq/al-mulhaq', 'attachment', 'der', 'die AnhÃ¤nge', 'noun', 'Im Anhang finden Sie den Lebenslauf.', 'In the attachment you will find the CV.', 5),
  (l_id, 'hÃ¶flich', 'mu''addab/latiif', 'polite', NULL, NULL, 'adjective', 'In einer formellen E-Mail sollte man hÃ¶flich sein.', 'In a formal email you should be polite.', 6),
  (l_id, 'der Ausdruck', 'al-ta`bir', 'expression', 'der', 'die AusdrÃ¼cke', 'noun', 'Dieser Ausdruck ist sehr formell.', 'This expression is very formal.', 7);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  (l_id, 'Indirekte Fragen und Konjunktiv I in der formellen Kommunikation', 'In formellen E-Mails verwendest du indirekte Fragen (hÃ¶flich: "Ich mÃ¶chte fragen, ob ...") und Konjunktiv I, um Aussagen Dritter wiederzugeben ("Herr Meier sagt, dass die Rechnung bereits bezahlt sei."). Modalverben subjektiv helfen, vorsichtige Aussagen zu machen.', '[{"rule":"HÃ¶fliche indirekte Fragen in E-Mails: \"Ich mÃ¶chte fragen, ob ...\"","note":"Ich mÃ¶chte fragen, ob Sie mein Anschreiben erhalten haben."},{"rule":"Konjunktiv I fÃ¼r wiedergebene Aussagen: \"Sie teilen mit, dass ...\"","note":"Sie teilen mit, dass die Bewerbung eingegangen sei."},{"rule":"HÃ¶fliche Bitten mit Konjunktiv II: \"Ich wÃ¤re Ihnen dankbar, wenn ...\"","note":"Ich wÃ¤re Ihnen dankbar, wenn Sie mir bald antworten kÃ¶nnten."},{"rule":"Modalverben subjektiv fÃ¼r Vorsicht: \"Das kÃ¶nnte ein MissverstÃ¤ndnis sein.\"","note":"Es kÃ¶nnte sein, dass meine E-Mail nicht angekommen ist."}]', '[{"german":"Ich mÃ¶chte hÃ¶flich fragen, ob Sie meine Bewerbung erhalten haben.","arabic":"uridu an as''al bi-adab hal talaqqaytum talabi.","english":"I would like to politely ask if you have received my application."},{"german":"Herr MÃ¼ller teilt mit, dass die Rechnung bereits bezahlt sei.","arabic":"yu`lin al-sayyid mular anna al-fatira qad dummat.","english":"Mr. MÃ¼ller informs that the invoice has already been paid."},{"german":"Ich wÃ¤re Ihnen sehr dankbar, wenn Sie mir bald antworten kÃ¶nnten.","arabic":"sa''akun mumtannan lakum idha ajabtumuni qariban.","english":"I would be very grateful if you could reply soon."},{"german":"Es kÃ¶nnte sein, dass ein MissverstÃ¤ndnis vorliegt.","arabic":"qad yakun hunaka su'' tafahum.","english":"It could be that there is a misunderstanding."}]', '[{"mistake":"Ich mÃ¶chte fragen, ob haben Sie meine E-Mail bekommen?","correction":"Ich mÃ¶chte fragen, ob Sie meine E-Mail bekommen haben.","explanation":"Verb in der indirekten Frage am Ende: \"ob Sie ... bekommen haben\"."},{"mistake":"In der E-Mail: \"Sie sagen, die Rechnung ist bezahlt.\"","correction":"Sie teilen mit, dass die Rechnung bezahlt sei.","explanation":"In formellem Kontext Konjunktiv I: \"dass ... bezahlt sei\"."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  (l_id, 'multiple_choice', 'Was bedeutet "der Anhang" in einer E-Mail?', '["almurfaq","almawdu`","al-irad","alta''kid"]', 'almurfaq', '"Der Anhang" ist die attachment.', 1, 1),
  (l_id, 'fill_gap', 'Ich mÃ¶chte fragen, _____ Sie meine Bewerbung erhalten haben.', '["ob","wann","wo","warum"]', 'ob', 'Indirekte Frage mit "ob".', 1, 2),
  (l_id, 'translation', 'Ãœbersetze: "I would be grateful if you could reply."', '["Ich wÃ¤re dankbar, wenn Sie antworten kÃ¶nnten.","Ich bin dankbar, wenn Sie antworten.","Ich war dankbar, wenn Sie antworteten.","Ich wÃ¼rde dankbar, wenn Sie antworten."]', 'Ich wÃ¤re dankbar, wenn Sie antworten kÃ¶nnten.', 'Konjunktiv II: "wÃ¤re ... kÃ¶nnten".', 1, 3),
  (l_id, 'multiple_choice', 'Was ist ein formeller GruÃŸ am Ende einer E-Mail?', '["Mit freundlichen GrÃ¼ÃŸen","TschÃ¼ss","Bis bald","Hallo"]', 'Mit freundlichen GrÃ¼ÃŸen', '"Mit freundlichen GrÃ¼ÃŸen" ist formell.', 1, 4),
  (l_id, 'fill_gap', 'Herr MÃ¼ller teilt mit, dass die Zahlung eingegangen _____. (Konjunktiv I)', '["sei","ist","wÃ¤re","wird"]', 'sei', 'Konjunktiv I: "dass die Zahlung eingegangen sei".', 1, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  (l_id, 'multiple_choice', 'Was bedeutet "die BestÃ¤tigung"?', '["al-ta''kid","al-taalub","al-murfaq","al-mawdu`"]', 'al-ta''kid', 1, 1),
  (l_id, 'fill_blank', 'Ich mÃ¶chte _____, ob Sie morgen Zeit haben. (fragen)', '["fragen","fragte","wÃ¼rde fragen","fragten"]', 'fragen', 1, 2),
  (l_id, 'true_false', 'In formellen E-Mails verwendet man direkte Fragen.', '["Richtig","Falsch"]', 'Falsch', 1, 3),
  (l_id, 'multiple_choice', 'Welcher Satz ist formell korrekt?', '["Ich wÃ¤re Ihnen dankbar fÃ¼r eine RÃ¼ckmeldung.","Ich bin Ihnen dankbar fÃ¼r eine RÃ¼ckmeldung.","Danke fÃ¼r RÃ¼ckmeldung.","Gib mir RÃ¼ckmeldung."]', 'Ich wÃ¤re Ihnen dankbar fÃ¼r eine RÃ¼ckmeldung.', 1, 4),
  (l_id, 'fill_blank', 'Es _____ sein, dass die E-Mail nicht angekommen ist. (kÃ¶nnen subjektiv)', '["kÃ¶nnte","kann","kÃ¶nnen","kÃ¶nntet"]', 'kÃ¶nnte', 1, 5),
  (l_id, 'true_false', '"Mit freundlichen GrÃ¼ÃŸen" ist ein formeller GruÃŸ.', '["Richtig","Falsch"]', 'Richtig', 1, 6);

  -- Lesson 6.5: Wiederholung: Beziehungen und Kommunikation
  insert into public.course_lessons (module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published)
  values (m_id, 'Wiederholung: Beziehungen und Kommunikation', 'Alle Themen aus Modul 6 wiederholen und festigen', 'Beziehungen und Kommunikation', 'review', '["Learn key vocabulary","Practice grammar structures","Build comprehension skills","Apply in context","Review and reinforce"]', 45, 5, true)
  returning id into l_id;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, order_index) values
  (l_id, 'die Auseinandersetzung', 'al-muwajaha/al-niza`', 'confrontation', 'die', 'die Auseinandersetzungen', 'noun', 'Nach einer Auseinandersetzung sollte man reden.', 'After a confrontation one should talk.', 1),
  (l_id, 'die VersÃ¶hnung', 'al-musalaha', 'reconciliation', 'die', 'die VersÃ¶hnungen', 'noun', 'Die VersÃ¶hnung war ein wichtiger Schritt.', 'The reconciliation was an important step.', 2),
  (l_id, 'der Streit', 'al-shijar', 'argument', 'der', 'die Streitereien', 'noun', 'Jeder Streit kann gelÃ¶st werden.', 'Every argument can be resolved.', 3),
  (l_id, 'die Entschuldigung', 'al-i`tidhar', 'apology', 'die', 'die Entschuldigungen', 'noun', 'Ich habe mich entschuldigt.', 'I apologized.', 4),
  (l_id, 'verzeihen', 'yasamuh/ya`fu `an', 'to forgive', NULL, NULL, 'verb', 'Kannst du mir verzeihen?', 'Can you forgive me?', 5),
  (l_id, 'unterstÃ¼tzen', 'yad`am/yusa`id', 'to support', NULL, NULL, 'verb', 'Meine Familie unterstÃ¼tzt mich immer.', 'My family always supports me.', 6),
  (l_id, 'respektieren', 'yahtaram', 'to respect', NULL, NULL, 'verb', 'Wir mÃ¼ssen einander respektieren.', 'We must respect each other.', 7);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  (l_id, 'Wiederholung: Indirekte Fragen, Konjunktiv I, Modalverben subjektiv', 'In dieser Lektion wiederholen wir die drei Hauptgrammatikthemen von Modul 6: indirekte Fragen, Konjunktiv I fÃ¼r indirekte Rede und Modalverben mit subjektiver Bedeutung.', '[{"rule":"Indirekte Fragen: ob (Ja/Nein) oder Fragewort + Verb am Ende.","note":"Ich frage mich, ob er kommt. / Er fragt, wann sie kommt."},{"rule":"Konjunktiv I fÃ¼r indirekte Rede: Stamm + -e, -est, -e, -en, -et, -en.","note":"Er sagt, er komme. / Sie sagt, sie sei krank."},{"rule":"Bei Formgleichheit mit Indikativ: Ersatz durch Konjunktiv II.","note":"Sie sagen, sie hÃ¤tten (statt haben) keine Zeit."},{"rule":"Modalverben subjektiv: kÃ¶nnen (Vermutung), mÃ¼ssen (Schlussfolgerung), dÃ¼rfen nicht (Unwahrscheinlichkeit), sollen (HÃ¶rensagen).","note":"Das kann sein. / Er muss krank sein. / Er soll reich sein."}]', '[{"german":"Ich mÃ¶chte wissen, ob du mich verstehst.","arabic":"uridu an a`rifa hal tafhamuni.","english":"I want to know if you understand me."},{"german":"Er sagt, er respektiere seine Kollegen.","arabic":"yaqul inna yahtaram zamala''ahu.","english":"He says he respects his colleagüs."},{"german":"Sie soll die Wahrheit gesagt haben.","arabic":"yaz`umu annaha qalat al-haqiqa.","english":"She is said to have told the truth."},{"german":"Das kÃ¶nnte ein MissverstÃ¤ndnis sein.","arabic":"qad yakun hadha su'' tafahum.","english":"That could be a misunderstanding."},{"german":"KÃ¶nntest du mir sagen, wie spÃ¤t es ist?","arabic":"hal tastati` an takhbiri kam alsa`a?","english":"Could you tell me what time it is?"}]', '[{"mistake":"Ich weiss nicht, ob er hat Zeit.","correction":"Ich weiss nicht, ob er Zeit hat.","explanation":"Verb am Ende der indirekten Frage."},{"mistake":"Er sagt, er wird kommen. (Indikativ statt Konjunktiv)","correction":"Er sagt, er werde kommen.","explanation":"Indirekte Rede im Konjunktiv I: \"er werde kommen\"."},{"mistake":"Er muss reich sein. (objektiv: Pflicht? subjektiv: sicher?)","correction":"Im Kontext: Wenn es eine Schlussfolgerung ist, ist es subjektiv.","explanation":"Kontext entscheidet Ã¼ber objektive oder subjektive Bedeutung."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  (l_id, 'multiple_choice', 'Was bedeutet "die VersÃ¶hnung"?', '["al-musalaha","al-niza`","al-i`tidhar","al-da`m"]', 'al-musalaha', '"VersÃ¶hnung" = reconciliation.', 1, 1),
  (l_id, 'fill_gap', 'Ich mÃ¶chte wissen, _____ du mich verstehst.', '["ob","wann","wo","wer"]', 'ob', 'Ja/Nein-Frage indirekt: "ob".', 1, 2),
  (l_id, 'translation', 'Ãœbersetze: "He says he supports his family."', '["Er sagt, er unterstÃ¼tze seine Familie.","Er sagt, er unterstÃ¼tzt seine Familie.","Er sagt, er hat seine Familie unterstÃ¼tzt.","Er sagt, er unterstÃ¼tzte seine Familie."]', 'Er sagt, er unterstÃ¼tze seine Familie.', 'Konjunktiv I: "er unterstÃ¼tze".', 1, 3),
  (l_id, 'fill_gap', 'Das _____ ein MissverstÃ¤ndnis sein. (kÃ¶nnen subjektiv)', '["kÃ¶nnte","kann","kÃ¶nnen","kÃ¶nntest"]', 'kÃ¶nnte', 'Konjunktiv II von kÃ¶nnen fÃ¼r vorsichtige Vermutung.', 1, 4),
  (l_id, 'multiple_choice', 'Welche Modalverb-Bedeutung ist subjektiv?', '["Er soll sehr klug sein. (HÃ¶rensagen)","Er soll seine Hausaufgaben machen. (Pflicht)","Er kann Deutsch. (FÃ¤higkeit)","Er darf ins Kino. (Erlaubnis)"]', 'Er soll sehr klug sein. (HÃ¶rensagen)', '"Sollen" subjektiv = HÃ¶rensagen/Behauptung.', 1, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  (l_id, 'multiple_choice', 'Was bedeutet "der Streit"?', '["al-shijar","al-musalaha","al-da`m","al-i`tidhar"]', 'al-shijar', 1, 1),
  (l_id, 'fill_blank', 'Konjunktiv I von "machen" fÃ¼r "er": er _____.', '["mache","macht","machte","wÃ¼rde machen"]', 'mache', 1, 2),
  (l_id, 'true_false', 'Indirekte Fragen enden mit einem Fragezeichen.', '["Richtig","Falsch"]', 'Falsch', 1, 3),
  (l_id, 'multiple_choice', 'Was drÃ¼ckt "mÃ¼ssen" in subjektiver Bedeutung aus?', '["logische Folgerung","Pflicht","Vermutung","FÃ¤higkeit"]', 'logische Folgerung', 1, 4),
  (l_id, 'fill_blank', 'Er sagt, er _____ Zeit. (haben â€“ Konjunktiv I)', '["habe","hat","hÃ¤tte","haben"]', 'habe', 1, 5),
  (l_id, 'true_false', '"KÃ¶nnten Sie mir sagen, wo der Bahnhof ist?" ist eine indirekte Frage.', '["Richtig","Falsch"]', 'Richtig', 1, 6);

  -- Lesson 6.6: Test: Beziehungen und Kommunikation
  insert into public.course_lessons (module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published)
  values (m_id, 'Test: Beziehungen und Kommunikation', 'Abschlusstest fÃ¼r Modul 6 â€“ Beziehungen und Kommunikation', 'Beziehungen und Kommunikation', 'test', '["Learn key vocabulary","Practice grammar structures","Build comprehension skills","Apply in context","Review and reinforce"]', 40, 6, true)
  returning id into l_id;

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  (l_id, 'fill_gap', 'Ich mÃ¶chte wissen, _____ du mich liebst.', '["ob","wann","wo","warum"]', 'ob', 'Indirekte Ja/Nein-Frage: "ob".', 1, 1),
  (l_id, 'fill_gap', 'Er sagt, er _____ morgen kommen. (werden â€“ Konjunktiv I)', '["werde","wird","wÃ¼rde","worden"]', 'werde', 'Konjunktiv I: "er werde kommen".', 1, 2),
  (l_id, 'translation', 'Ãœbersetze: "She claims she is right."', '["Sie behauptet, sie habe Recht.","Sie sagt, sie hat Recht.","Sie meint, sie hat Recht.","Sie glaubt, sie ist Recht."]', 'Sie behauptet, sie habe Recht.', 'Konjunktiv I in der indirekten Rede: "sie habe Recht".', 1, 3),
  (l_id, 'multiple_choice', 'Was drÃ¼ckt "sollen" in subjektiver Bedeutung aus?', '["HÃ¶rensagen","Vermutung","logische Folgerung","Unwahrscheinlichkeit"]', 'HÃ¶rensagen', '"Sollen" subjektiv = man sagt / es heiÃŸt.', 1, 4),
  (l_id, 'fill_gap', 'Das _____ wahr sein. (kÃ¶nnen subjektiv â€“ Vermutung)', '["kann","muss","darf","soll"]', 'kann', '"Kann" = MÃ¶glichkeit/Vermutung.', 1, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  (l_id, 'multiple_choice', 'Was bedeutet "die Auseinandersetzung"?', '["al-muwajaha","al-musalaha","al-i`tidhar","al-sadaqa"]', 'al-muwajaha', 1, 1),
  (l_id, 'true_false', 'Konjunktiv I wird fÃ¼r die indirekte Rede verwendet.', '["Richtig","Falsch"]', 'Richtig', 1, 2),
  (l_id, 'fill_blank', 'Indirekte Frage: Kannst du mir sagen, _____ der Bahnhof ist? (where)', '["wo","ob","wann","wer"]', 'wo', 1, 3),
  (l_id, 'multiple_choice', 'Welche Ersatzform verwendet man, wenn Konjunktiv I = Indikativ?', '["Konjunktiv II","Indikativ","Imperativ","Infinitiv"]', 'Konjunktiv II', 1, 4),
  (l_id, 'true_false', '"Er will der Beste sein" bedeutet, dass er selbst behauptet, der Beste zu sein.', '["Richtig","Falsch"]', 'Richtig', 1, 5),
  (l_id, 'multiple_choice', 'Was ist der Konjunktiv I von "sein" fÃ¼r "sie" (Plural)?', '["seien","sind","wÃ¤ren","seist"]', 'seien', 1, 6),
  (l_id, 'fill_blank', 'Er sagt, er _____ keine Zeit. (haben â€“ Konjunktiv I)', '["habe","hat","hÃ¤tte","haben"]', 'habe', 1, 7),
  (l_id, 'multiple_choice', 'Welcher Satz ist korrekt?', '["KÃ¶nntest du mir sagen, wie spÃ¤t es ist?","KÃ¶nntest du mir sagen, wie spÃ¤t ist es?","KÃ¶nntest du mir sagen, wie spÃ¤t es ist?","KÃ¶nntest du mir sagen, wie spÃ¤t ist es?"]', 'KÃ¶nntest du mir sagen, wie spÃ¤t es ist?', 1, 8);

end $$;
