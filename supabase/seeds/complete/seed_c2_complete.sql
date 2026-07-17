-- ============================================================================
-- COMPLETE CURRICULUM SEED — Level C2 (Mastery)
-- Generated for 6 modules, 19 lessons
-- ============================================================================

do $$
declare
  m_id uuid;
  l_id uuid;
begin

  -- Level: C2 — Mastery
  insert into public.course_levels (id, title, description, image_url, color, order_index)
  values ('C2', 'Mastery', 'Near-native proficiency. Understand virtually everything heard or read. Express yourself spontaneously with precision.', NULL, 'from-amber-500 to-yellow-600', 6)
  on conflict (id) do nothing;

  -- Module 1: Linguistik und Stilistik
  insert into public.course_modules (id, level_id, title, description, objectives, order_index, estimated_hours, is_published)
  values ('00000000-0000-4000-a000-000039d176bf', 'C2', 'Linguistik und Stilistik', 'Word formation, stylistics, and linguistic analysis at the highest level.', '["Analyze word formation processes","Identify and use stylistic figures","Analyze language variation","Use Register and style consciously","Analyze literary and journalistic texts"]', 1, 6, true)
  on conflict (id) do nothing;

  -- Lesson 1: Wortbildung: Komposition, Derivation, Konversion (L-C2-01-01)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-00006a40dab0', '00000000-0000-4000-a000-000039d176bf', 'Wortbildung: Komposition, Derivation, Konversion', 'Master German word formation mechanisms.', 'Word Formation', 'vocabulary', '["Understand and use 66 key vocabulary words about Word Formation","Apply present_tense correctly in sentences","Read and comprehend a text about Word Formation","Listen and understand a natural dialogue about Word Formation","Speak about Word Formation with confidence","Write a short text about Word Formation using new vocabulary"]', 60, 1, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, french_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-00006a40dab0', 'die Linguistik', 'علم اللغة', 'linguistics', NULL, 'die', NULL, 'noun', 'Linguistik untersucht die menschliche Sprache.', 'Linguistics studies human language.', 'C1', 1),
  ('00000000-0000-4000-a000-00006a40dab0', 'die Syntax', 'النحو/تركيب الجملة', 'syntax', NULL, 'die', NULL, 'noun', 'Die Syntax beschreibt die Satzstruktur.', 'Syntax describes sentence structure.', 'C1', 2),
  ('00000000-0000-4000-a000-00006a40dab0', 'die Semantik', 'علم الدلالة', 'semantics', NULL, 'die', NULL, 'noun', 'Die Semantik befasst sich mit Bedeutung.', 'Semantics deals with meaning.', 'C1', 3),
  ('00000000-0000-4000-a000-00006a40dab0', 'die Morphologie', 'الصرف', 'morphology', NULL, 'die', NULL, 'noun', 'Die Morphologie untersucht Wortformen.', 'Morphology examines word forms.', 'C1', 4),
  ('00000000-0000-4000-a000-00006a40dab0', 'die Phonetik', 'علم الأصوات', 'phonetics', NULL, 'die', NULL, 'noun', 'Die Phonetik untersucht Sprachlaute.', 'Phonetics studies speech sounds.', 'C1', 5),
  ('00000000-0000-4000-a000-00006a40dab0', 'die Pragmatik', 'البراغماتية', 'pragmatics', NULL, 'die', NULL, 'noun', 'Pragmatik untersucht Sprachgebrauch.', 'Pragmatics studies language use.', 'C2', 6),
  ('00000000-0000-4000-a000-00006a40dab0', 'die Sprachwissenschaft', 'علم اللغة', 'linguistics', NULL, 'die', NULL, 'noun', 'Die germanistische Sprachwissenschaft ist vielfältig.', 'German linguistics is diverse.', 'C1', 7),
  ('00000000-0000-4000-a000-00006a40dab0', 'der Stil', 'الأسلوب', 'style', NULL, 'der', 'die Stile', 'noun', 'Der Stil des Textes ist formell.', 'The style of the text is formal.', 'B2', 8),
  ('00000000-0000-4000-a000-00006a40dab0', 'das Register', 'المستوى اللغوي', 'register', NULL, 'das', 'die Register', 'noun', 'Das Register passt zur Situation.', 'The register fits the situation.', 'C1', 9),
  ('00000000-0000-4000-a000-00006a40dab0', 'das Stilmittel', 'الأداة الأسلوبية', 'stylistic device', NULL, 'das', 'die Stilmittel', 'noun', 'Das Stilmittel unterstreicht die Aussage.', 'The stylistic device emphasizes the statement.', 'C1', 10),
  ('00000000-0000-4000-a000-00006a40dab0', 'die Alliteration', 'الجناس', 'alliteration', NULL, 'die', 'die Alliterationen', 'noun', 'Die Alliteration wiederholt den Anlaut.', 'Alliteration repeats the initial sound.', 'C2', 11),
  ('00000000-0000-4000-a000-00006a40dab0', 'die Ellipse', 'الحذف', 'ellipsis', NULL, 'die', 'die Ellipsen', 'noun', 'Die Ellipse spart Wörter aus.', 'The ellipsis omits words.', 'C2', 12),
  ('00000000-0000-4000-a000-00006a40dab0', 'die Hyperbel', 'المبالغة', 'hyperbole', NULL, 'die', 'die Hyperbeln', 'noun', 'Die Hyperbel übertreibt stark.', 'Hyperbole exaggerates strongly.', 'C2', 13),
  ('00000000-0000-4000-a000-00006a40dab0', 'die Poetik', 'الشعرية', 'poetics', NULL, 'die', NULL, 'noun', 'Poetik ist die Theorie der Dichtkunst.', 'Poetics is the theory of poetry.', 'C2', 14),
  ('00000000-0000-4000-a000-00006a40dab0', 'der Vers', 'البيت الشعري', 'verse', NULL, 'der', 'die Verse', 'noun', 'Der Vers hat fünf Hebungen.', 'The verse has five stresses.', 'C1', 15),
  ('00000000-0000-4000-a000-00006a40dab0', 'der Reim', 'القافية', 'rhyme', NULL, 'der', 'die Reime', 'noun', 'Der Reim verbindet die Zeilen.', 'Rhyme connects the lines.', 'C1', 16),
  ('00000000-0000-4000-a000-00006a40dab0', 'das Metrum', 'الوزن', 'meter', NULL, 'das', 'die Metren', 'noun', 'Das Metrum bestimmt den Rhythmus.', 'The meter determines the rhythm.', 'C2', 17),
  ('00000000-0000-4000-a000-00006a40dab0', 'die Gattung', 'النوع الأدبي', 'genre', NULL, 'die', 'die Gattungen', 'noun', 'Lyrik ist eine literarische Gattung.', 'Lyric poetry is a literary genre.', 'C1', 18),
  ('00000000-0000-4000-a000-00006a40dab0', 'der Sprechakt', 'فعل الكلام', 'speech act', NULL, 'der', 'die Sprechakte', 'noun', 'Der Sprechakt ändert die Wirklichkeit.', 'The speech act changes reality.', 'C2', 19),
  ('00000000-0000-4000-a000-00006a40dab0', 'die Implikatur', 'الاستلزام التخاطبي', 'implicature', NULL, 'die', 'die Implikaturen', 'noun', 'Die Implikatur ist die indirekte Bedeutung.', 'Implicature is the indirect meaning.', 'C2', 20),
  ('00000000-0000-4000-a000-00006a40dab0', 'der Kontext', 'السياق', 'context', NULL, 'der', 'die Kontexte', 'noun', 'Der Kontext bestimmt die Bedeutung.', 'Context determines meaning.', 'B2', 21),
  ('00000000-0000-4000-a000-00006a40dab0', 'die Höflichkeit', 'الأدب / اللباقة', 'politeness', NULL, 'die', NULL, 'noun', 'Höflichkeit ist in Japan sehr wichtig.', 'Politeness is very important in Japan.', 'B2', 22),
  ('00000000-0000-4000-a000-00006a40dab0', 'die Konversationsanalyse', 'تحليل المحادثة', 'conversation analysis', NULL, 'die', NULL, 'noun', 'Die Konversationsanalyse untersucht Gespräche.', 'Conversation analysis examines conversations.', 'C2', 23),
  ('00000000-0000-4000-a000-00006a40dab0', 'die Bedeutung', 'المعنى', 'meaning', NULL, 'die', 'die Bedeutungen', 'noun', 'Die Bedeutung des Wortes ist klar.', 'The meaning of the word is clear.', 'B2', 24),
  ('00000000-0000-4000-a000-00006a40dab0', 'die Synonymie', 'الترادف', 'synonymy', NULL, 'die', NULL, 'noun', 'Synonymie bedeutet Bedeutungsgleichheit.', 'Synonymy means sameness of meaning.', 'C2', 25),
  ('00000000-0000-4000-a000-00006a40dab0', 'die Antonymie', 'التضاد', 'antonymy', NULL, 'die', NULL, 'noun', 'Antonymie bezeichnet Gegensätze.', 'Antonymy denotes opposites.', 'C2', 26),
  ('00000000-0000-4000-a000-00006a40dab0', 'die Polysemie', 'تعدد المعاني', 'polysemy', NULL, 'die', NULL, 'noun', 'Polysemie hat mehrere Bedeutungen.', 'Polysemy has multiple meanings.', 'C2', 27),
  ('00000000-0000-4000-a000-00006a40dab0', 'die Kompositionalität', 'التركيبية', 'compositionality', NULL, 'die', NULL, 'noun', 'Kompositionalität besagt, dass Bedeutung aus Teilen besteht.', 'Compositionality holds that meaning consists of parts.', 'C2', 28),
  ('00000000-0000-4000-a000-00006a40dab0', 'die Übersetzung', 'الترجمة', 'translation', NULL, 'die', 'die Übersetzungen', 'noun', 'Die Übersetzung ist gelungen.', 'The translation is successful.', 'B2', 29),
  ('00000000-0000-4000-a000-00006a40dab0', 'übersetzen', 'يترجم', 'to translate', NULL, NULL, NULL, 'verb', 'Ich übersetze den Text ins Arabische.', 'I translate the text into Arabic.', 'B1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006a40dab0', 'Module Partikeln und Satzgliedstellung (Modal Particles and Word Order Nuances) / الجزيئات النمطية وترتيب الكلمات الدقيق', 'Modal particles (doch, ja, eben, halt, wohl, eigentlich, denn, mal) add nuance and emotion to statements. They are almost impossible to translate directly but are essential for natural German. At C2, their correct placement and usage distinguishes near-native from advanced learners.', '[{"rule":"doch: contradiction or emphasis","note":"Das ist doch nicht wahr! (That''s just not true!)"},{"rule":"ja: shared knowledge reminder","note":"Das ist ja interessant! (That IS interesting! — as we both know)"},{"rule":"denn: in W-questions (casual)","note":"Was machst du denn da? (What are you doing there? — curious, not accusatory)"}]', '[{"german":"Das ist doch eine gute Idee, oder?","arabic":"هذه فكرة جيدة، أليس كذلك؟ (تأكيد)","english":"That IS a good idea, isn''t it?"},{"german":"Komm mal her, bitte.","arabic":"تعال إلى هنا من فضلك. (طلاقة)","english":"Come here, please. (softening)"},{"german":"Was hast du eigentlich studiert?","arabic":"ماذا درست بالمناسبة؟","english":"What did you study, by the way?"}]', '[{"mistake":"Speaking without modal particles (too textbook-like)","correction":"Das ist doch klar! (not just \"Das ist klar\")","explanation":"Without modal particles, German sounds robotic. At C2, particles show naturalness."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006a40dab0', 'multiple_choice', 'Welches deutsche Wort bedeutet "linguistics"?', '["die Syntax","die Phonetik","die Linguistik","die Semantik"]', 'die Linguistik', '"linguistics" = "die Linguistik" in German. Article: die ', 1, 1),
  ('00000000-0000-4000-a000-00006a40dab0', 'multiple_choice', 'Welches deutsche Wort bedeutet "syntax"?', '["die Semantik","die Phonetik","die Linguistik","die Morphologie"]', 'die Syntax', '"syntax" = "die Syntax" in German. Article: die ', 1, 2),
  ('00000000-0000-4000-a000-00006a40dab0', 'multiple_choice', 'Welches deutsche Wort bedeutet "semantics"?', '["die Semantik","die Morphologie","die Phonetik","die Linguistik"]', 'die Semantik', '"semantics" = "die Semantik" in German. Article: die ', 1, 3),
  ('00000000-0000-4000-a000-00006a40dab0', 'multiple_choice', 'Welches deutsche Wort bedeutet "morphology"?', '["die Semantik","die Syntax","die Morphologie","die Linguistik"]', 'die Morphologie', '"morphology" = "die Morphologie" in German. Article: die ', 1, 4),
  ('00000000-0000-4000-a000-00006a40dab0', 'multiple_choice', 'Welches deutsche Wort bedeutet "phonetics"?', '["die Phonetik","die Semantik","die Morphologie","die Linguistik"]', 'die Phonetik', '"phonetics" = "die Phonetik" in German. Article: die ', 1, 5),
  ('00000000-0000-4000-a000-00006a40dab0', 'fill_gap', 'Ergänzen Sie den Satz: Ich ___ gern über Word Formation. (sprechen)', '["spreche","sprichst","spricht","sprechen"]', 'spreche', 'ich spreche gern = I like to speak. Stem: sprech- + e.', 2, 6),
  ('00000000-0000-4000-a000-00006a40dab0', 'translation', 'Übersetzen Sie ins Deutsche: "I am learning about Word Formation."', '["Ich lerne über Word Formation.","Ich lerne Word Formation.","Lerne ich Word Formation."]', 'Ich lerne über Word Formation.', '"Ich lerne über..." = "I am learning about..."', 2, 7),
  ('00000000-0000-4000-a000-00006a40dab0', 'matching', 'Match: Which word pairs are correct?', '["die Linguistik - linguistics, die Syntax - syntax"]', 'Matched correctly', 'Each German word has a unique English equivalent.', 2, 8);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-00006a40dab0', 'multiple_choice', 'Was bedeutet "die Linguistik" auf Deutsch?', '["linguistics","to run","beautiful","yesterday"]', 'linguistics', 1, 1),
  ('00000000-0000-4000-a000-00006a40dab0', 'multiple_choice', 'Welcher Artikel gehört zu "die Syntax"?', '["der","die","das","den"]', 'die', 1, 2),
  ('00000000-0000-4000-a000-00006a40dab0', 'true_false', 'Das Wort "die Semantik" gehört zum Thema Word Formation.', '["True","False"]', 'True', 1, 3),
  ('00000000-0000-4000-a000-00006a40dab0', 'multiple_choice', 'Welcher Satz verwendet present_tense?', '["Das ist doch eine gute Idee, oder?","Komm mal her, bitte.","Was hast du eigentlich studiert?"]', 'Das ist doch eine gute Idee, oder?', 2, 4),
  ('00000000-0000-4000-a000-00006a40dab0', 'true_false', ''Im Deutschen steht das Verb an zweiter Position im Hauptsatz.', '["True","False"]', 'True', 1, 5),
  ('00000000-0000-4000-a000-00006a40dab0', 'fill_blank', 'Complete: Ich ___ (morphology) Deutsch.', '["die Morphologie","lernt","lernst","lernen"]', 'lerne', 2, 6),
  ('00000000-0000-4000-a000-00006a40dab0', 'multiple_choice', 'Wie lautet das deutsche Wort für "phonetics"?', '["die Phonetik","die Pragmatik","die Sprachwissenschaft","der Stil"]', 'die Phonetik', 1, 7),
  ('00000000-0000-4000-a000-00006a40dab0', 'true_false', 'Im Deutschen werden alle Nomen großgeschrieben.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-00006a40dab0', 'multiple_choice', 'How do you say "please" in a restaurant in Germany?', '["Bitte","Danke","Tschüss","Hallo"]', 'Bitte', 1, 9),
  ('00000000-0000-4000-a000-00006a40dab0', 'fill_blank', 'Wo ___ (to live) du?', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 2, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, french_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-00006a40dab0', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', NULL, 'Used in Linguistik und Stilistik', 'formal', false, 1),
  ('00000000-0000-4000-a000-00006a40dab0', 'Guten Tag!', 'Good day!', 'نهارك سعيد!', NULL, 'Used in Linguistik und Stilistik', 'formal', false, 2),
  ('00000000-0000-4000-a000-00006a40dab0', 'Hallo, wie geht es Ihnen?', 'Hello, how are you?', 'مرحباً، كيف حالكم؟', NULL, 'Used in Linguistik und Stilistik', 'formal', false, 3),
  ('00000000-0000-4000-a000-00006a40dab0', 'Schön, Sie kennenzulernen!', 'Nice to meet you!', 'سعيد بلقائكم!', NULL, 'Used in Linguistik und Stilistik', 'formal', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-00006a40dab0', 'die die Linguistik', 'linguistics — علم اللغة', 'noun', 'vocabulary', 1),
  ('00000000-0000-4000-a000-00006a40dab0', 'die die Syntax', 'syntax — النحو/تركيب الجملة', 'noun', 'vocabulary', 2),
  ('00000000-0000-4000-a000-00006a40dab0', 'die die Semantik', 'semantics — علم الدلالة', 'noun', 'vocabulary', 3),
  ('00000000-0000-4000-a000-00006a40dab0', 'die die Morphologie', 'morphology — الصرف', 'noun', 'vocabulary', 4),
  ('00000000-0000-4000-a000-00006a40dab0', 'die die Phonetik', 'phonetics — علم الأصوات', 'noun', 'vocabulary', 5),
  ('00000000-0000-4000-a000-00006a40dab0', 'die die Pragmatik', 'pragmatics — البراغماتية', 'noun', 'vocabulary', 6),
  ('00000000-0000-4000-a000-00006a40dab0', 'die die Sprachwissenschaft', 'linguistics — علم اللغة', 'noun', 'vocabulary', 7),
  ('00000000-0000-4000-a000-00006a40dab0', 'der der Stil (die Stile)', 'style — الأسلوب', 'noun', 'vocabulary', 8),
  ('00000000-0000-4000-a000-00006a40dab0', 'das das Register (die Register)', 'register — المستوى اللغوي', 'noun', 'vocabulary', 9),
  ('00000000-0000-4000-a000-00006a40dab0', 'das das Stilmittel (die Stilmittel)', 'stylistic device — الأداة الأسلوبية', 'noun', 'vocabulary', 10),
  ('00000000-0000-4000-a000-00006a40dab0', 'die die Alliteration (die Alliterationen)', 'alliteration — الجناس', 'noun', 'vocabulary', 11),
  ('00000000-0000-4000-a000-00006a40dab0', 'die die Ellipse (die Ellipsen)', 'ellipsis — الحذف', 'noun', 'vocabulary', 12),
  ('00000000-0000-4000-a000-00006a40dab0', 'die die Hyperbel (die Hyperbeln)', 'hyperbole — المبالغة', 'noun', 'vocabulary', 13),
  ('00000000-0000-4000-a000-00006a40dab0', 'die die Poetik', 'poetics — الشعرية', 'noun', 'vocabulary', 14),
  ('00000000-0000-4000-a000-00006a40dab0', 'der der Vers (die Verse)', 'verse — البيت الشعري', 'noun', 'vocabulary', 15),
  ('00000000-0000-4000-a000-00006a40dab0', 'Das ist doch eine gute Idee, oder?', 'That IS a good idea, isn''t it?', 'Module Partikeln und Satzgliedstellung (Modal Particles and Word Order Nuances)', 'grammar', 16),
  ('00000000-0000-4000-a000-00006a40dab0', 'Komm mal her, bitte.', 'Come here, please. (softening)', 'Module Partikeln und Satzgliedstellung (Modal Particles and Word Order Nuances)', 'grammar', 17),
  ('00000000-0000-4000-a000-00006a40dab0', 'Was hast du eigentlich studiert?', 'What did you study, by the way?', 'Module Partikeln und Satzgliedstellung (Modal Particles and Word Order Nuances)', 'grammar', 18);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, french_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-00006a40dab0', 'Wortbildung: Komposition, Derivation, Konversion — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', NULL, 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, french_translation, duration_seconds, speaker_count, scenario) values
  ('00000000-0000-4000-a000-00006a40dab0', 'Wortbildung: Komposition, Derivation, Konversion — Hörverständnis', '[Lehrerin]: Guten Morgen! Heute lernen wir Begrüßungen.

[Lehrerin]: Wiederholen Sie: Guten Morgen!

[Student]: Guten Morgen!

[Lehrerin]: Sehr gut! Und wie sagt man "Goodbye"?

[Student]: Auf Wiedersehen!

[Lehrerin]: Perfekt! Bis morgen!', '[Lehrerin]: Good morning! Today we learn greetings.

[Lehrerin]: Repeat: Good morning!

[Student]: Good morning!

[Lehrerin]: Very good! And how do you say goodbye?

[Student]: Goodbye!

[Lehrerin]: Perfect! See you tomorrow!', '[Lehrerin]: صباح الخير! اليوم نتعلم التحيات.

[Lehrerin]: كرروا: صباح الخير!

[Student]: صباح الخير!

[Lehrerin]: جيد جداً! وكيف نقول "وداعاً"؟

[Student]: إلى اللقاء!

[Lehrerin]: ممتاز! إلى الغد!', '[Lehrerin]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: ', 72, 2, 'Linguistik und Stilistik');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-00006a40dab0', '🔊 Sprechen: Wortbildung: Komposition, Derivation, Konversion', 'Presentation: Prepare a 2-minute presentation on "Word Formation im deutschsprachigen Raum". Use discourse markers like "zunächst", "darüber hinaus", "abschließend". Your AI partner will ask critical questions afterwards.', 'Word Formation', ARRAY['Use discourse markers (also, jedoch, außerdem)','React naturally: "Ach so!", "Echt?", "Das stimmt!"','Paraphrase when you don''t know a word']::text[], ARRAY['die Linguistik','die Syntax','die Semantik','die Morphologie','die Phonetik','die Pragmatik','die Sprachwissenschaft','der Stil']::text[], 120, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-00006a40dab0', '✏️ Schreiben: Wortbildung: Komposition, Derivation, Konversion', 'Write a discursive essay (300-350 words) analyzing "Word Formation in modern German society". Present both advantages and disadvantages. Use complex sentence structures (Nebensätze mit "obwohl", "trotzdem", "während") and formal register. Conclude with your own position.', ARRAY['Use paragraph breaks for structure','Connect ideas with "außerdem", "deshalb", "jedoch"','Check your verb position in Nebensätze']::text[], ARRAY['die Linguistik','die Syntax','die Semantik','die Morphologie','die Phonetik','die Pragmatik','die Sprachwissenschaft','der Stil']::text[], ARRAY['Sentence structure','Vocabulary usage']::text[], 250, 350, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00006a40dab0', 'Wortbildung: Komposition, Derivation, Konversion — Roleplay', 'Word Formation', 'Student', 'Teacher', 'Practice conversation about Word Formation', 'Hallo! Lass uns über dieses Thema sprechen.', 'advanced', 1, ARRAY['die Linguistik','die Syntax','die Semantik','die Morphologie','die Phonetik','die Pragmatik','die Sprachwissenschaft','der Stil']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00006a40dab0', 'Wortbildung: Komposition, Derivation, Konversion — Advanced Roleplay', 'Word Formation', 'Customer', 'Assistant', 'Extended conversation about Word Formation', 'Guten Tag! Wie kann ich Ihnen helfen?', 'advanced', 2, ARRAY['die Linguistik','die Syntax','die Semantik','die Morphologie','die Phonetik','die Pragmatik','die Sprachwissenschaft','der Stil']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-00006a40dab0', 'Wortbildung: Komposition, Derivation, Konversion — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Wortbildung: Komposition, Derivation, Konversion".', 'Creative practice for Word Formation', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-00006a40dab0', '📚 Hausaufgabe: Wortbildung: Komposition, Derivation, Konversion', 'Complete these tasks to reinforce "Wortbildung: Komposition, Derivation, Konversion".', 'mixed', '[{"description":"Create 10 flashcards from this lesson''s vocabulary — write German on one side, Arabic on the other. Test yourself 3 times."},{"description":"Write 6 sentences about Word Formation: 2 statements, 2 questions, 2 negations — all using present_tense."},{"description":"Record yourself reading the dialogue aloud. Listen to the recording and note 3 things to improve."},{"description":"Find 3 real German websites, videos, or articles about Word Formation. Note 5 new words you discovered."}]', 50, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-00006a40dab0', '🎯 Excellent progress! This lesson covered Word Formation (66 vocabulary items) and present_tense. You developed reading, listening, speaking, and writing skills in the context of linguistics. Focus on your common mistakes area for maximum improvement.', '["66 vocabulary items about Word Formation","present_tense — grammar explanation and practice","Reading comprehension: text about Word Formation","Listening comprehension: dialogue about Word Formation","Speaking practice: roleplay/discussion about Word Formation","Writing task: text about Word Formation"]', '[{"title":"Wortbildung: Komposition, Derivation, Konversion Review","summary":"present_tense — the main grammar focus. Focus on nuanced usage, exceptions, and stylistic variation."}]', ARRAY['die Linguistik (linguistics)','die Syntax (syntax)','die Semantik (semantics)','die Morphologie (morphology)','die Phonetik (phonetics)']::text[], ARRAY['Don''t translate from Arabic word-for-word — German has different sentence structure','Learn every noun with its article: NEVER learn "Tisch" alone, always "der Tisch"','Pay attention to Konjunktiv I/II distinction']::text[], ARRAY['Practice 15-20 minutes daily — consistency beats intensity','Speak out loud: German pronunciation needs muscle memory','Use the new vocabulary within 24 hours or you''ll forget it','Watch German YouTube videos about Word Formation for authentic input']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006a40dab0', 'translation', 'Translate to German: "I use the word "linguistics" in a sentence about Word Formation."', '[]', 'Linguistik untersucht die menschliche Sprache.', 'Use die  "die Linguistik" with the correct present_tense form.', 1, 40);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006a40dab0', 'translation', 'Translate to German: "I use the word "syntax" in a sentence about Word Formation."', '[]', 'Die Syntax beschreibt die Satzstruktur.', 'Use die  "die Syntax" with the correct present_tense form.', 1, 41);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006a40dab0', 'translation', 'Translate to German: "I use the word "semantics" in a sentence about Word Formation."', '[]', 'Die Semantik befasst sich mit Bedeutung.', 'Use die  "die Semantik" with the correct present_tense form.', 1, 42);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006a40dab0', 'Culture: 🇩🇪 Deutsche Kultur: Word Formation', 'The German approach to Word Formation reflects deeper cultural values: Ordnung (order), Gründlichkeit (thoroughness), and Sachlichkeit (objectivity). Debates about Word Formation in German media are characterised by factual argumentation. Understanding these discourse norms is essential for C1/C2 learners who want to participate in academic or professional discussions.

لدى Word Formation في ألمانيا فروق ثقافية دقيقة تختلف عن البلدان العربية. الألمان يفصلون بين حياتهم الخاصة والمهنية بشكل صارم.', '["Tip: Always use \"Sie\" (formal) with strangers and colleagues","Tip: Germans appreciate punctuality — arrive 5 minutes early","Tip: Direct feedback is a sign of respect, not criticism","Tip: Prepare factual arguments, not emotional appeals"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006a40dab0', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Incorrect preposition usage after verbs","correction":"Learn which preposition each verb requires (sich freuen auf, warten auf, denken an)","explanation":"Arabic and German have different sentence structures. Arabic is VSO, German is SVO with verb in position 2."},{"mistake":"Incorrect use of Konjunktiv II in polite requests","correction":"Ich hätte gern... (I would like...)","explanation":"Konjunktiv II is often replaced with würde + infinitive in speech"}]', 30);

  -- Lesson 2: Stilfiguren: Metapher, Metonymie, Ironie (L-C2-01-02)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-00006a40dab1', '00000000-0000-4000-a000-000039d176bf', 'Stilfiguren: Metapher, Metonymie, Ironie', 'Analyze and use rhetorical tropes.', 'Stylistic Figures', 'vocabulary', '["Understand and use 60 key vocabulary words about Stylistic Figures","Apply present_tense correctly in sentences","Read and comprehend a text about Stylistic Figures","Listen and understand a natural dialogue about Stylistic Figures","Speak about Stylistic Figures with confidence","Write a short text about Stylistic Figures using new vocabulary"]', 60, 2, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, french_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-00006a40dab1', 'der Stil', 'الأسلوب', 'style', NULL, 'der', 'die Stile', 'noun', 'Der Stil des Textes ist formell.', 'The style of the text is formal.', 'B2', 1),
  ('00000000-0000-4000-a000-00006a40dab1', 'das Register', 'المستوى اللغوي', 'register', NULL, 'das', 'die Register', 'noun', 'Das Register passt zur Situation.', 'The register fits the situation.', 'C1', 2),
  ('00000000-0000-4000-a000-00006a40dab1', 'das Stilmittel', 'الأداة الأسلوبية', 'stylistic device', NULL, 'das', 'die Stilmittel', 'noun', 'Das Stilmittel unterstreicht die Aussage.', 'The stylistic device emphasizes the statement.', 'C1', 3),
  ('00000000-0000-4000-a000-00006a40dab1', 'die Alliteration', 'الجناس', 'alliteration', NULL, 'die', 'die Alliterationen', 'noun', 'Die Alliteration wiederholt den Anlaut.', 'Alliteration repeats the initial sound.', 'C2', 4),
  ('00000000-0000-4000-a000-00006a40dab1', 'die Ellipse', 'الحذف', 'ellipsis', NULL, 'die', 'die Ellipsen', 'noun', 'Die Ellipse spart Wörter aus.', 'The ellipsis omits words.', 'C2', 5),
  ('00000000-0000-4000-a000-00006a40dab1', 'die Hyperbel', 'المبالغة', 'hyperbole', NULL, 'die', 'die Hyperbeln', 'noun', 'Die Hyperbel übertreibt stark.', 'Hyperbole exaggerates strongly.', 'C2', 6),
  ('00000000-0000-4000-a000-00006a40dab1', 'die Poetik', 'الشعرية', 'poetics', NULL, 'die', NULL, 'noun', 'Poetik ist die Theorie der Dichtkunst.', 'Poetics is the theory of poetry.', 'C2', 7),
  ('00000000-0000-4000-a000-00006a40dab1', 'der Vers', 'البيت الشعري', 'verse', NULL, 'der', 'die Verse', 'noun', 'Der Vers hat fünf Hebungen.', 'The verse has five stresses.', 'C1', 8),
  ('00000000-0000-4000-a000-00006a40dab1', 'der Reim', 'القافية', 'rhyme', NULL, 'der', 'die Reime', 'noun', 'Der Reim verbindet die Zeilen.', 'Rhyme connects the lines.', 'C1', 9),
  ('00000000-0000-4000-a000-00006a40dab1', 'das Metrum', 'الوزن', 'meter', NULL, 'das', 'die Metren', 'noun', 'Das Metrum bestimmt den Rhythmus.', 'The meter determines the rhythm.', 'C2', 10),
  ('00000000-0000-4000-a000-00006a40dab1', 'die Gattung', 'النوع الأدبي', 'genre', NULL, 'die', 'die Gattungen', 'noun', 'Lyrik ist eine literarische Gattung.', 'Lyric poetry is a literary genre.', 'C1', 11),
  ('00000000-0000-4000-a000-00006a40dab1', 'die Pragmatik', 'البراغماتية', 'pragmatics', NULL, 'die', NULL, 'noun', 'Pragmatik untersucht Sprache im Kontext.', 'Pragmatics studies language in context.', 'C2', 12),
  ('00000000-0000-4000-a000-00006a40dab1', 'der Sprechakt', 'فعل الكلام', 'speech act', NULL, 'der', 'die Sprechakte', 'noun', 'Der Sprechakt ändert die Wirklichkeit.', 'The speech act changes reality.', 'C2', 13),
  ('00000000-0000-4000-a000-00006a40dab1', 'die Implikatur', 'الاستلزام التخاطبي', 'implicature', NULL, 'die', 'die Implikaturen', 'noun', 'Die Implikatur ist die indirekte Bedeutung.', 'Implicature is the indirect meaning.', 'C2', 14),
  ('00000000-0000-4000-a000-00006a40dab1', 'der Kontext', 'السياق', 'context', NULL, 'der', 'die Kontexte', 'noun', 'Der Kontext bestimmt die Bedeutung.', 'Context determines meaning.', 'B2', 15),
  ('00000000-0000-4000-a000-00006a40dab1', 'die Höflichkeit', 'الأدب / اللباقة', 'politeness', NULL, 'die', NULL, 'noun', 'Höflichkeit ist in Japan sehr wichtig.', 'Politeness is very important in Japan.', 'B2', 16),
  ('00000000-0000-4000-a000-00006a40dab1', 'die Konversationsanalyse', 'تحليل المحادثة', 'conversation analysis', NULL, 'die', NULL, 'noun', 'Die Konversationsanalyse untersucht Gespräche.', 'Conversation analysis examines conversations.', 'C2', 17),
  ('00000000-0000-4000-a000-00006a40dab1', 'die Bedeutung', 'المعنى', 'meaning', NULL, 'die', 'die Bedeutungen', 'noun', 'Die Bedeutung des Wortes ist klar.', 'The meaning of the word is clear.', 'B2', 18),
  ('00000000-0000-4000-a000-00006a40dab1', 'die Synonymie', 'الترادف', 'synonymy', NULL, 'die', NULL, 'noun', 'Synonymie bedeutet Bedeutungsgleichheit.', 'Synonymy means sameness of meaning.', 'C2', 19),
  ('00000000-0000-4000-a000-00006a40dab1', 'die Antonymie', 'التضاد', 'antonymy', NULL, 'die', NULL, 'noun', 'Antonymie bezeichnet Gegensätze.', 'Antonymy denotes opposites.', 'C2', 20),
  ('00000000-0000-4000-a000-00006a40dab1', 'die Polysemie', 'تعدد المعاني', 'polysemy', NULL, 'die', NULL, 'noun', 'Polysemie hat mehrere Bedeutungen.', 'Polysemy has multiple meanings.', 'C2', 21),
  ('00000000-0000-4000-a000-00006a40dab1', 'die Kompositionalität', 'التركيبية', 'compositionality', NULL, 'die', NULL, 'noun', 'Kompositionalität besagt, dass Bedeutung aus Teilen besteht.', 'Compositionality holds that meaning consists of parts.', 'C2', 22),
  ('00000000-0000-4000-a000-00006a40dab1', 'die Übersetzung', 'الترجمة', 'translation', NULL, 'die', 'die Übersetzungen', 'noun', 'Die Übersetzung ist gelungen.', 'The translation is successful.', 'B2', 23),
  ('00000000-0000-4000-a000-00006a40dab1', 'übersetzen', 'يترجم', 'to translate', NULL, NULL, NULL, 'verb', 'Ich übersetze den Text ins Arabische.', 'I translate the text into Arabic.', 'B1', 24),
  ('00000000-0000-4000-a000-00006a40dab1', 'der Dolmetscher', 'المترجم الفوري', 'interpreter', NULL, 'der', 'die Dolmetscher', 'noun', 'Der Dolmetscher übersetzt mündlich.', 'The interpreter translates orally.', 'B2', 25),
  ('00000000-0000-4000-a000-00006a40dab1', 'die Muttersprache', 'اللغة الأم', 'native language', NULL, 'die', 'die Muttersprachen', 'noun', 'Meine Muttersprache ist Arabisch.', 'My native language is Arabic.', 'B1', 26),
  ('00000000-0000-4000-a000-00006a40dab1', 'falscher Freund', 'الصديق المزيف', 'false friend', NULL, NULL, NULL, 'noun', 'Ein falscher Freund sieht ähnlich aus, bedeutet aber etwas anderes.', 'A false friend looks similar but means something different.', 'C1', 27),
  ('00000000-0000-4000-a000-00006a40dab1', 'die Sprachmittlung', 'الوساطة اللغوية', 'language mediation', NULL, 'die', NULL, 'noun', 'Sprachmittlung vermittelt zwischen Kulturen.', 'Language mediation bridges between cultures.', 'C2', 28),
  ('00000000-0000-4000-a000-00006a40dab1', 'die Äquivalenz', 'التكافؤ', 'equivalence', NULL, 'die', NULL, 'noun', 'Äquivalenz in der Übersetzung ist ein Ideal.', 'Equivalence in translation is an ideal.', 'C2', 29),
  ('00000000-0000-4000-a000-00006a40dab1', 'der Dialekt', 'اللهجة', 'dialect', NULL, 'der', 'die Dialekte', 'noun', 'Der bayerische Dialekt ist schwer zu verstehen.', 'The Bavarian dialect is hard to understand.', 'B2', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006a40dab1', 'Erweiterte Partizipialattribute (Extended Participle Attributes) / الصفات المشتقة الموسعة', 'Extended participle attributes are a hallmark of sophisticated German. Instead of a relative clause, German can place a long phrase between the article and the noun: "der von der Regierung vorgeschlagene Plan" (the plan proposed by the government). These structures condense information and are very common in academic and legal German.', '[{"rule":"Article + (expanded phrase) + noun","note":"der [von der Regierung vorgeschlagene] Plan"},{"rule":"Participle can be Partizip I (aktiv, gleichzeitig) or Partizip II (passiv, vorzeitig)","note":"der lesende Student (the reading student — Partizip I), das gelesene Buch (the read book — Partizip II)"}]', '[{"german":"Der von der Bundesregierung vorgeschlagene Gesetzesentwurf wurde diskutiert.","arabic":"تمت مناقشة مشروع القانون الذي اقترحته الحكومة الاتحادية.","english":"The bill proposed by the federal government was discussed."},{"german":"Die in den letzten Jahren stark gestiegenen Mieten belasten viele Familien.","arabic":"الإيجارات التي ارتفعت بشدة في السنوات الأخيرة تثقل كاهل العائلات.","english":"The rents that have risen sharply in recent years burden many families."}]', '[{"mistake":"Der Plan, der von der Regierung vorgeschlagen wurde (relative clause instead of extended attribute)","correction":"Der von der Regierung vorgeschlagene Plan","explanation":"At C2, extended attributes are preferred over relative clauses for conciseness."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006a40dab1', 'multiple_choice', 'Welches deutsche Wort bedeutet "style"?', '["die Alliteration","der Stil","die Ellipse","das Register"]', 'der Stil', '"style" = "der Stil" in German. Article: der Plural: die Stile', 1, 1),
  ('00000000-0000-4000-a000-00006a40dab1', 'multiple_choice', 'Welches deutsche Wort bedeutet "register"?', '["die Ellipse","das Register","der Stil","das Stilmittel"]', 'das Register', '"register" = "das Register" in German. Article: das Plural: die Register', 1, 2),
  ('00000000-0000-4000-a000-00006a40dab1', 'multiple_choice', 'Welches deutsche Wort bedeutet "stylistic device"?', '["der Stil","das Stilmittel","das Register","die Ellipse"]', 'das Stilmittel', '"stylistic device" = "das Stilmittel" in German. Article: das Plural: die Stilmittel', 1, 3),
  ('00000000-0000-4000-a000-00006a40dab1', 'multiple_choice', 'Welches deutsche Wort bedeutet "alliteration"?', '["der Stil","das Register","die Ellipse","die Alliteration"]', 'die Alliteration', '"alliteration" = "die Alliteration" in German. Article: die Plural: die Alliterationen', 1, 4),
  ('00000000-0000-4000-a000-00006a40dab1', 'multiple_choice', 'Welches deutsche Wort bedeutet "ellipsis"?', '["das Stilmittel","das Register","der Stil","die Alliteration"]', 'die Ellipse', '"ellipsis" = "die Ellipse" in German. Article: die Plural: die Ellipsen', 1, 5),
  ('00000000-0000-4000-a000-00006a40dab1', 'fill_gap', 'Ergänzen Sie den Satz: Ich ___ gern über Stylistic Figures. (sprechen)', '["spreche","sprichst","spricht","sprechen"]', 'spreche', 'ich spreche gern = I like to speak. Stem: sprech- + e.', 2, 6),
  ('00000000-0000-4000-a000-00006a40dab1', 'translation', 'Übersetzen Sie ins Deutsche: "I am learning about Stylistic Figures."', '["Ich lerne über Stylistic Figures.","Ich lerne Stylistic Figures.","Lerne ich Stylistic Figures."]', 'Ich lerne über Stylistic Figures.', '"Ich lerne über..." = "I am learning about..."', 2, 7),
  ('00000000-0000-4000-a000-00006a40dab1', 'matching', 'Match: Which word pairs are correct?', '["der Stil - style, das Register - register"]', 'Matched correctly', 'Each German word has a unique English equivalent.', 2, 8);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-00006a40dab1', 'multiple_choice', 'Was bedeutet "der Stil" auf Deutsch?', '["style","to run","beautiful","yesterday"]', 'style', 1, 1),
  ('00000000-0000-4000-a000-00006a40dab1', 'multiple_choice', 'Welcher Artikel gehört zu "das Register"?', '["der","die","das","den"]', 'das', 1, 2),
  ('00000000-0000-4000-a000-00006a40dab1', 'true_false', 'Das Wort "das Stilmittel" gehört zum Thema Stylistic Figures.', '["True","False"]', 'True', 1, 3),
  ('00000000-0000-4000-a000-00006a40dab1', 'multiple_choice', 'Welcher Satz verwendet present_tense?', '["Der von der Bundesregierung vorgeschlagene Gesetzesentwurf wurde diskutiert.","Die in den letzten Jahren stark gestiegenen Mieten belasten viele Familien."]', 'Der von der Bundesregierung vorgeschlagene Gesetzesentwurf wurde diskutiert.', 2, 4),
  ('00000000-0000-4000-a000-00006a40dab1', 'true_false', ''Im Deutschen steht das Verb an zweiter Position im Hauptsatz.', '["True","False"]', 'True', 1, 5),
  ('00000000-0000-4000-a000-00006a40dab1', 'fill_blank', 'Complete: Ich ___ (alliteration) Deutsch.', '["die Alliteration","lernt","lernst","lernen"]', 'lerne', 2, 6),
  ('00000000-0000-4000-a000-00006a40dab1', 'multiple_choice', 'Wie lautet das deutsche Wort für "ellipsis"?', '["die Ellipse","die Hyperbel","die Poetik","der Vers"]', 'die Ellipse', 1, 7),
  ('00000000-0000-4000-a000-00006a40dab1', 'true_false', 'Im Deutschen werden alle Nomen großgeschrieben.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-00006a40dab1', 'multiple_choice', 'How do you say "please" in a restaurant in Germany?', '["Bitte","Danke","Tschüss","Hallo"]', 'Bitte', 1, 9),
  ('00000000-0000-4000-a000-00006a40dab1', 'fill_blank', 'Wo ___ (to live) du?', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 2, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, french_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-00006a40dab1', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', NULL, 'Used in Linguistik und Stilistik', 'formal', false, 1),
  ('00000000-0000-4000-a000-00006a40dab1', 'Guten Tag!', 'Good day!', 'نهارك سعيد!', NULL, 'Used in Linguistik und Stilistik', 'formal', false, 2),
  ('00000000-0000-4000-a000-00006a40dab1', 'Hallo, wie geht es Ihnen?', 'Hello, how are you?', 'مرحباً، كيف حالكم؟', NULL, 'Used in Linguistik und Stilistik', 'formal', false, 3),
  ('00000000-0000-4000-a000-00006a40dab1', 'Schön, Sie kennenzulernen!', 'Nice to meet you!', 'سعيد بلقائكم!', NULL, 'Used in Linguistik und Stilistik', 'formal', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-00006a40dab1', 'der der Stil (die Stile)', 'style — الأسلوب', 'noun', 'vocabulary', 1),
  ('00000000-0000-4000-a000-00006a40dab1', 'das das Register (die Register)', 'register — المستوى اللغوي', 'noun', 'vocabulary', 2),
  ('00000000-0000-4000-a000-00006a40dab1', 'das das Stilmittel (die Stilmittel)', 'stylistic device — الأداة الأسلوبية', 'noun', 'vocabulary', 3),
  ('00000000-0000-4000-a000-00006a40dab1', 'die die Alliteration (die Alliterationen)', 'alliteration — الجناس', 'noun', 'vocabulary', 4),
  ('00000000-0000-4000-a000-00006a40dab1', 'die die Ellipse (die Ellipsen)', 'ellipsis — الحذف', 'noun', 'vocabulary', 5),
  ('00000000-0000-4000-a000-00006a40dab1', 'die die Hyperbel (die Hyperbeln)', 'hyperbole — المبالغة', 'noun', 'vocabulary', 6),
  ('00000000-0000-4000-a000-00006a40dab1', 'die die Poetik', 'poetics — الشعرية', 'noun', 'vocabulary', 7),
  ('00000000-0000-4000-a000-00006a40dab1', 'der der Vers (die Verse)', 'verse — البيت الشعري', 'noun', 'vocabulary', 8),
  ('00000000-0000-4000-a000-00006a40dab1', 'der der Reim (die Reime)', 'rhyme — القافية', 'noun', 'vocabulary', 9),
  ('00000000-0000-4000-a000-00006a40dab1', 'das das Metrum (die Metren)', 'meter — الوزن', 'noun', 'vocabulary', 10),
  ('00000000-0000-4000-a000-00006a40dab1', 'die die Gattung (die Gattungen)', 'genre — النوع الأدبي', 'noun', 'vocabulary', 11),
  ('00000000-0000-4000-a000-00006a40dab1', 'die die Pragmatik', 'pragmatics — البراغماتية', 'noun', 'vocabulary', 12),
  ('00000000-0000-4000-a000-00006a40dab1', 'der der Sprechakt (die Sprechakte)', 'speech act — فعل الكلام', 'noun', 'vocabulary', 13),
  ('00000000-0000-4000-a000-00006a40dab1', 'die die Implikatur (die Implikaturen)', 'implicature — الاستلزام التخاطبي', 'noun', 'vocabulary', 14),
  ('00000000-0000-4000-a000-00006a40dab1', 'der der Kontext (die Kontexte)', 'context — السياق', 'noun', 'vocabulary', 15),
  ('00000000-0000-4000-a000-00006a40dab1', 'Der von der Bundesregierung vorgeschlagene Gesetzesentwurf wurde diskutiert.', 'The bill proposed by the federal government was discussed.', 'Erweiterte Partizipialattribute (Extended Participle Attributes)', 'grammar', 16),
  ('00000000-0000-4000-a000-00006a40dab1', 'Die in den letzten Jahren stark gestiegenen Mieten belasten viele Familien.', 'The rents that have risen sharply in recent years burden many families.', 'Erweiterte Partizipialattribute (Extended Participle Attributes)', 'grammar', 17);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, french_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-00006a40dab1', 'Stilfiguren: Metapher, Metonymie, Ironie — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', NULL, 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, french_translation, duration_seconds, speaker_count, scenario) values
  ('00000000-0000-4000-a000-00006a40dab1', 'Stilfiguren: Metapher, Metonymie, Ironie — Hörverständnis', '[Lehrerin]: Guten Morgen! Heute lernen wir Begrüßungen.

[Lehrerin]: Wiederholen Sie: Guten Morgen!

[Student]: Guten Morgen!

[Lehrerin]: Sehr gut! Und wie sagt man "Goodbye"?

[Student]: Auf Wiedersehen!

[Lehrerin]: Perfekt! Bis morgen!', '[Lehrerin]: Good morning! Today we learn greetings.

[Lehrerin]: Repeat: Good morning!

[Student]: Good morning!

[Lehrerin]: Very good! And how do you say goodbye?

[Student]: Goodbye!

[Lehrerin]: Perfect! See you tomorrow!', '[Lehrerin]: صباح الخير! اليوم نتعلم التحيات.

[Lehrerin]: كرروا: صباح الخير!

[Student]: صباح الخير!

[Lehrerin]: جيد جداً! وكيف نقول "وداعاً"؟

[Student]: إلى اللقاء!

[Lehrerin]: ممتاز! إلى الغد!', '[Lehrerin]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: ', 72, 2, 'Linguistik und Stilistik');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-00006a40dab1', '🔊 Sprechen: Stilfiguren: Metapher, Metonymie, Ironie', 'Presentation: Prepare a 2-minute presentation on "Stylistic Figures im deutschsprachigen Raum". Use discourse markers like "zunächst", "darüber hinaus", "abschließend". Your AI partner will ask critical questions afterwards.', 'Stylistic Figures', ARRAY['Use discourse markers (also, jedoch, außerdem)','React naturally: "Ach so!", "Echt?", "Das stimmt!"','Paraphrase when you don''t know a word']::text[], ARRAY['der Stil','das Register','das Stilmittel','die Alliteration','die Ellipse','die Hyperbel','die Poetik','der Vers']::text[], 120, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-00006a40dab1', '✏️ Schreiben: Stilfiguren: Metapher, Metonymie, Ironie', 'Write a discursive essay (300-350 words) analyzing "Stylistic Figures in modern German society". Present both advantages and disadvantages. Use complex sentence structures (Nebensätze mit "obwohl", "trotzdem", "während") and formal register. Conclude with your own position.', ARRAY['Use paragraph breaks for structure','Connect ideas with "außerdem", "deshalb", "jedoch"','Check your verb position in Nebensätze']::text[], ARRAY['der Stil','das Register','das Stilmittel','die Alliteration','die Ellipse','die Hyperbel','die Poetik','der Vers']::text[], ARRAY['Sentence structure','Vocabulary usage']::text[], 250, 350, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00006a40dab1', 'Stilfiguren: Metapher, Metonymie, Ironie — Roleplay', 'Stylistic Figures', 'Student', 'Teacher', 'Practice conversation about Stylistic Figures', 'Hallo! Lass uns über dieses Thema sprechen.', 'advanced', 1, ARRAY['der Stil','das Register','das Stilmittel','die Alliteration','die Ellipse','die Hyperbel','die Poetik','der Vers']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00006a40dab1', 'Stilfiguren: Metapher, Metonymie, Ironie — Advanced Roleplay', 'Stylistic Figures', 'Customer', 'Assistant', 'Extended conversation about Stylistic Figures', 'Guten Tag! Wie kann ich Ihnen helfen?', 'advanced', 2, ARRAY['der Stil','das Register','das Stilmittel','die Alliteration','die Ellipse','die Hyperbel','die Poetik','der Vers']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-00006a40dab1', 'Stilfiguren: Metapher, Metonymie, Ironie — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Stilfiguren: Metapher, Metonymie, Ironie".', 'Creative practice for Stylistic Figures', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-00006a40dab1', '📚 Hausaufgabe: Stilfiguren: Metapher, Metonymie, Ironie', 'Complete these tasks to reinforce "Stilfiguren: Metapher, Metonymie, Ironie".', 'mixed', '[{"description":"Create 10 flashcards from this lesson''s vocabulary — write German on one side, Arabic on the other. Test yourself 3 times."},{"description":"Write 6 sentences about Stylistic Figures: 2 statements, 2 questions, 2 negations — all using present_tense."},{"description":"Record yourself reading the dialogue aloud. Listen to the recording and note 3 things to improve."},{"description":"Find 3 real German websites, videos, or articles about Stylistic Figures. Note 5 new words you discovered."}]', 50, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-00006a40dab1', '🎯 Excellent progress! This lesson covered Stylistic Figures (60 vocabulary items) and present_tense. You developed reading, listening, speaking, and writing skills in the context of stylistics. Focus on your common mistakes area for maximum improvement.', '["60 vocabulary items about Stylistic Figures","present_tense — grammar explanation and practice","Reading comprehension: text about Stylistic Figures","Listening comprehension: dialogue about Stylistic Figures","Speaking practice: roleplay/discussion about Stylistic Figures","Writing task: text about Stylistic Figures"]', '[{"title":"Stilfiguren: Metapher, Metonymie, Ironie Review","summary":"present_tense — the main grammar focus. Focus on nuanced usage, exceptions, and stylistic variation."}]', ARRAY['der Stil (style)','das Register (register)','das Stilmittel (stylistic device)','die Alliteration (alliteration)','die Ellipse (ellipsis)']::text[], ARRAY['Don''t translate from Arabic word-for-word — German has different sentence structure','Learn every noun with its article: NEVER learn "Tisch" alone, always "der Tisch"','Pay attention to Konjunktiv I/II distinction']::text[], ARRAY['Practice 15-20 minutes daily — consistency beats intensity','Speak out loud: German pronunciation needs muscle memory','Use the new vocabulary within 24 hours or you''ll forget it','Watch German YouTube videos about Stylistic Figures for authentic input']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006a40dab1', 'translation', 'Translate to German: "I use the word "style" in a sentence about Stylistic Figures."', '[]', 'Der Stil des Textes ist formell.', 'Use der  "der Stil" with the correct present_tense form.', 1, 40);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006a40dab1', 'translation', 'Translate to German: "I use the word "register" in a sentence about Stylistic Figures."', '[]', 'Das Register passt zur Situation.', 'Use das  "das Register" with the correct present_tense form.', 1, 41);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006a40dab1', 'translation', 'Translate to German: "I use the word "stylistic device" in a sentence about Stylistic Figures."', '[]', 'Das Stilmittel unterstreicht die Aussage.', 'Use das  "das Stilmittel" with the correct present_tense form.', 1, 42);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006a40dab1', 'Culture: 🇩🇪 Deutsche Kultur: Stylistic Figures', 'The German approach to Stylistic Figures reflects deeper cultural values: Ordnung (order), Gründlichkeit (thoroughness), and Sachlichkeit (objectivity). Debates about Stylistic Figures in German media are characterised by factual argumentation. Understanding these discourse norms is essential for C1/C2 learners who want to participate in academic or professional discussions.

لدى Stylistic Figures في ألمانيا فروق ثقافية دقيقة تختلف عن البلدان العربية. الألمان يفصلون بين حياتهم الخاصة والمهنية بشكل صارم.', '["Tip: Always use \"Sie\" (formal) with strangers and colleagues","Tip: Germans appreciate punctuality — arrive 5 minutes early","Tip: Direct feedback is a sign of respect, not criticism","Tip: Prepare factual arguments, not emotional appeals"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006a40dab1', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Incorrect preposition usage after verbs","correction":"Learn which preposition each verb requires (sich freuen auf, warten auf, denken an)","explanation":"Arabic and German have different sentence structures. Arabic is VSO, German is SVO with verb in position 2."},{"mistake":"Incorrect use of Konjunktiv II in polite requests","correction":"Ich hätte gern... (I would like...)","explanation":"Konjunktiv II is often replaced with würde + infinitive in speech"}]', 30);

  -- Lesson 3: Sprachvarietäten und Register (L-C2-01-03)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-00006a40dab2', '00000000-0000-4000-a000-000039d176bf', 'Sprachvarietäten und Register', 'Explore language varieties, dialects, and registers.', 'Language Varieties', 'reading', '["Understand and apply present_tense rules correctly","Use present_tense in real conversations","Avoid common mistakes Arabic speakers make with present_tense","Read and understand present_tense in context","Listen and identify present_tense in speech","Write sentences using present_tense correctly"]', 60, 3, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, french_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-00006a40dab2', 'der Stil', 'الأسلوب', 'style', NULL, 'der', 'die Stile', 'noun', 'Der Stil des Textes ist formell.', 'The style of the text is formal.', 'B2', 1),
  ('00000000-0000-4000-a000-00006a40dab2', 'das Register', 'المستوى اللغوي', 'register', NULL, 'das', 'die Register', 'noun', 'Das Register passt zur Situation.', 'The register fits the situation.', 'C1', 2),
  ('00000000-0000-4000-a000-00006a40dab2', 'das Stilmittel', 'الأداة الأسلوبية', 'stylistic device', NULL, 'das', 'die Stilmittel', 'noun', 'Das Stilmittel unterstreicht die Aussage.', 'The stylistic device emphasizes the statement.', 'C1', 3),
  ('00000000-0000-4000-a000-00006a40dab2', 'die Alliteration', 'الجناس', 'alliteration', NULL, 'die', 'die Alliterationen', 'noun', 'Die Alliteration wiederholt den Anlaut.', 'Alliteration repeats the initial sound.', 'C2', 4),
  ('00000000-0000-4000-a000-00006a40dab2', 'die Ellipse', 'الحذف', 'ellipsis', NULL, 'die', 'die Ellipsen', 'noun', 'Die Ellipse spart Wörter aus.', 'The ellipsis omits words.', 'C2', 5),
  ('00000000-0000-4000-a000-00006a40dab2', 'die Hyperbel', 'المبالغة', 'hyperbole', NULL, 'die', 'die Hyperbeln', 'noun', 'Die Hyperbel übertreibt stark.', 'Hyperbole exaggerates strongly.', 'C2', 6),
  ('00000000-0000-4000-a000-00006a40dab2', 'die Poetik', 'الشعرية', 'poetics', NULL, 'die', NULL, 'noun', 'Poetik ist die Theorie der Dichtkunst.', 'Poetics is the theory of poetry.', 'C2', 7),
  ('00000000-0000-4000-a000-00006a40dab2', 'der Vers', 'البيت الشعري', 'verse', NULL, 'der', 'die Verse', 'noun', 'Der Vers hat fünf Hebungen.', 'The verse has five stresses.', 'C1', 8),
  ('00000000-0000-4000-a000-00006a40dab2', 'der Reim', 'القافية', 'rhyme', NULL, 'der', 'die Reime', 'noun', 'Der Reim verbindet die Zeilen.', 'Rhyme connects the lines.', 'C1', 9),
  ('00000000-0000-4000-a000-00006a40dab2', 'das Metrum', 'الوزن', 'meter', NULL, 'das', 'die Metren', 'noun', 'Das Metrum bestimmt den Rhythmus.', 'The meter determines the rhythm.', 'C2', 10),
  ('00000000-0000-4000-a000-00006a40dab2', 'die Gattung', 'النوع الأدبي', 'genre', NULL, 'die', 'die Gattungen', 'noun', 'Lyrik ist eine literarische Gattung.', 'Lyric poetry is a literary genre.', 'C1', 11),
  ('00000000-0000-4000-a000-00006a40dab2', 'die Pragmatik', 'البراغماتية', 'pragmatics', NULL, 'die', NULL, 'noun', 'Pragmatik untersucht Sprache im Kontext.', 'Pragmatics studies language in context.', 'C2', 12),
  ('00000000-0000-4000-a000-00006a40dab2', 'der Sprechakt', 'فعل الكلام', 'speech act', NULL, 'der', 'die Sprechakte', 'noun', 'Der Sprechakt ändert die Wirklichkeit.', 'The speech act changes reality.', 'C2', 13),
  ('00000000-0000-4000-a000-00006a40dab2', 'die Implikatur', 'الاستلزام التخاطبي', 'implicature', NULL, 'die', 'die Implikaturen', 'noun', 'Die Implikatur ist die indirekte Bedeutung.', 'Implicature is the indirect meaning.', 'C2', 14),
  ('00000000-0000-4000-a000-00006a40dab2', 'der Kontext', 'السياق', 'context', NULL, 'der', 'die Kontexte', 'noun', 'Der Kontext bestimmt die Bedeutung.', 'Context determines meaning.', 'B2', 15),
  ('00000000-0000-4000-a000-00006a40dab2', 'die Höflichkeit', 'الأدب / اللباقة', 'politeness', NULL, 'die', NULL, 'noun', 'Höflichkeit ist in Japan sehr wichtig.', 'Politeness is very important in Japan.', 'B2', 16),
  ('00000000-0000-4000-a000-00006a40dab2', 'die Konversationsanalyse', 'تحليل المحادثة', 'conversation analysis', NULL, 'die', NULL, 'noun', 'Die Konversationsanalyse untersucht Gespräche.', 'Conversation analysis examines conversations.', 'C2', 17),
  ('00000000-0000-4000-a000-00006a40dab2', 'die Bedeutung', 'المعنى', 'meaning', NULL, 'die', 'die Bedeutungen', 'noun', 'Die Bedeutung des Wortes ist klar.', 'The meaning of the word is clear.', 'B2', 18),
  ('00000000-0000-4000-a000-00006a40dab2', 'die Synonymie', 'الترادف', 'synonymy', NULL, 'die', NULL, 'noun', 'Synonymie bedeutet Bedeutungsgleichheit.', 'Synonymy means sameness of meaning.', 'C2', 19),
  ('00000000-0000-4000-a000-00006a40dab2', 'die Antonymie', 'التضاد', 'antonymy', NULL, 'die', NULL, 'noun', 'Antonymie bezeichnet Gegensätze.', 'Antonymy denotes opposites.', 'C2', 20),
  ('00000000-0000-4000-a000-00006a40dab2', 'die Polysemie', 'تعدد المعاني', 'polysemy', NULL, 'die', NULL, 'noun', 'Polysemie hat mehrere Bedeutungen.', 'Polysemy has multiple meanings.', 'C2', 21),
  ('00000000-0000-4000-a000-00006a40dab2', 'die Kompositionalität', 'التركيبية', 'compositionality', NULL, 'die', NULL, 'noun', 'Kompositionalität besagt, dass Bedeutung aus Teilen besteht.', 'Compositionality holds that meaning consists of parts.', 'C2', 22),
  ('00000000-0000-4000-a000-00006a40dab2', 'die Übersetzung', 'الترجمة', 'translation', NULL, 'die', 'die Übersetzungen', 'noun', 'Die Übersetzung ist gelungen.', 'The translation is successful.', 'B2', 23),
  ('00000000-0000-4000-a000-00006a40dab2', 'übersetzen', 'يترجم', 'to translate', NULL, NULL, NULL, 'verb', 'Ich übersetze den Text ins Arabische.', 'I translate the text into Arabic.', 'B1', 24),
  ('00000000-0000-4000-a000-00006a40dab2', 'der Dolmetscher', 'المترجم الفوري', 'interpreter', NULL, 'der', 'die Dolmetscher', 'noun', 'Der Dolmetscher übersetzt mündlich.', 'The interpreter translates orally.', 'B2', 25),
  ('00000000-0000-4000-a000-00006a40dab2', 'die Muttersprache', 'اللغة الأم', 'native language', NULL, 'die', 'die Muttersprachen', 'noun', 'Meine Muttersprache ist Arabisch.', 'My native language is Arabic.', 'B1', 26),
  ('00000000-0000-4000-a000-00006a40dab2', 'falscher Freund', 'الصديق المزيف', 'false friend', NULL, NULL, NULL, 'noun', 'Ein falscher Freund sieht ähnlich aus, bedeutet aber etwas anderes.', 'A false friend looks similar but means something different.', 'C1', 27),
  ('00000000-0000-4000-a000-00006a40dab2', 'die Sprachmittlung', 'الوساطة اللغوية', 'language mediation', NULL, 'die', NULL, 'noun', 'Sprachmittlung vermittelt zwischen Kulturen.', 'Language mediation bridges between cultures.', 'C2', 28),
  ('00000000-0000-4000-a000-00006a40dab2', 'die Äquivalenz', 'التكافؤ', 'equivalence', NULL, 'die', NULL, 'noun', 'Äquivalenz in der Übersetzung ist ein Ideal.', 'Equivalence in translation is an ideal.', 'C2', 29),
  ('00000000-0000-4000-a000-00006a40dab2', 'der Dialekt', 'اللهجة', 'dialect', NULL, 'der', 'die Dialekte', 'noun', 'Der bayerische Dialekt ist schwer zu verstehen.', 'The Bavarian dialect is hard to understand.', 'B2', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006a40dab2', 'Module Partikeln und Satzgliedstellung (Modal Particles and Word Order Nuances) / الجزيئات النمطية وترتيب الكلمات الدقيق', 'Modal particles (doch, ja, eben, halt, wohl, eigentlich, denn, mal) add nuance and emotion to statements. They are almost impossible to translate directly but are essential for natural German. At C2, their correct placement and usage distinguishes near-native from advanced learners.', '[{"rule":"doch: contradiction or emphasis","note":"Das ist doch nicht wahr! (That''s just not true!)"},{"rule":"ja: shared knowledge reminder","note":"Das ist ja interessant! (That IS interesting! — as we both know)"},{"rule":"denn: in W-questions (casual)","note":"Was machst du denn da? (What are you doing there? — curious, not accusatory)"}]', '[{"german":"Das ist doch eine gute Idee, oder?","arabic":"هذه فكرة جيدة، أليس كذلك؟ (تأكيد)","english":"That IS a good idea, isn''t it?"},{"german":"Komm mal her, bitte.","arabic":"تعال إلى هنا من فضلك. (طلاقة)","english":"Come here, please. (softening)"},{"german":"Was hast du eigentlich studiert?","arabic":"ماذا درست بالمناسبة؟","english":"What did you study, by the way?"}]', '[{"mistake":"Speaking without modal particles (too textbook-like)","correction":"Das ist doch klar! (not just \"Das ist klar\")","explanation":"Without modal particles, German sounds robotic. At C2, particles show naturalness."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006a40dab2', 'multiple_choice', 'Welches deutsche Wort bedeutet "style"?', '["das Stilmittel","das Register","die Alliteration","der Stil"]', 'der Stil', '"style" = "der Stil" in German. Article: der Plural: die Stile', 1, 1),
  ('00000000-0000-4000-a000-00006a40dab2', 'multiple_choice', 'Welches deutsche Wort bedeutet "register"?', '["die Alliteration","das Register","die Ellipse","der Stil"]', 'das Register', '"register" = "das Register" in German. Article: das Plural: die Register', 1, 2),
  ('00000000-0000-4000-a000-00006a40dab2', 'multiple_choice', 'Welches deutsche Wort bedeutet "stylistic device"?', '["das Stilmittel","die Alliteration","der Stil","das Register"]', 'das Stilmittel', '"stylistic device" = "das Stilmittel" in German. Article: das Plural: die Stilmittel', 1, 3),
  ('00000000-0000-4000-a000-00006a40dab2', 'multiple_choice', 'Welches deutsche Wort bedeutet "alliteration"?', '["die Alliteration","die Ellipse","das Stilmittel","das Register"]', 'die Alliteration', '"alliteration" = "die Alliteration" in German. Article: die Plural: die Alliterationen', 1, 4),
  ('00000000-0000-4000-a000-00006a40dab2', 'multiple_choice', 'Welches deutsche Wort bedeutet "ellipsis"?', '["das Stilmittel","das Register","der Stil","die Alliteration"]', 'die Ellipse', '"ellipsis" = "die Ellipse" in German. Article: die Plural: die Ellipsen', 1, 5),
  ('00000000-0000-4000-a000-00006a40dab2', 'fill_gap', 'Ergänzen Sie den Satz: Ich ___ gern über Language Varieties. (sprechen)', '["spreche","sprichst","spricht","sprechen"]', 'spreche', 'ich spreche gern = I like to speak. Stem: sprech- + e.', 2, 6),
  ('00000000-0000-4000-a000-00006a40dab2', 'translation', 'Übersetzen Sie ins Deutsche: "I am learning about Language Varieties."', '["Ich lerne über Language Varieties.","Ich lerne Language Varieties.","Lerne ich Language Varieties."]', 'Ich lerne über Language Varieties.', '"Ich lerne über..." = "I am learning about..."', 2, 7),
  ('00000000-0000-4000-a000-00006a40dab2', 'matching', 'Match: Which word pairs are correct?', '["der Stil - style, das Register - register"]', 'Matched correctly', 'Each German word has a unique English equivalent.', 2, 8);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-00006a40dab2', 'multiple_choice', 'Was bedeutet "der Stil" auf Deutsch?', '["style","to run","beautiful","yesterday"]', 'style', 1, 1),
  ('00000000-0000-4000-a000-00006a40dab2', 'multiple_choice', 'Welcher Artikel gehört zu "das Register"?', '["der","die","das","den"]', 'das', 1, 2),
  ('00000000-0000-4000-a000-00006a40dab2', 'true_false', 'Das Wort "das Stilmittel" gehört zum Thema Language Varieties.', '["True","False"]', 'True', 1, 3),
  ('00000000-0000-4000-a000-00006a40dab2', 'multiple_choice', 'Welcher Satz verwendet present_tense?', '["Das ist doch eine gute Idee, oder?","Komm mal her, bitte.","Was hast du eigentlich studiert?"]', 'Das ist doch eine gute Idee, oder?', 2, 4),
  ('00000000-0000-4000-a000-00006a40dab2', 'true_false', ''Im Deutschen steht das Verb an zweiter Position im Hauptsatz.', '["True","False"]', 'True', 1, 5),
  ('00000000-0000-4000-a000-00006a40dab2', 'fill_blank', 'Complete: Ich ___ (alliteration) Deutsch.', '["die Alliteration","lernt","lernst","lernen"]', 'lerne', 2, 6),
  ('00000000-0000-4000-a000-00006a40dab2', 'multiple_choice', 'Wie lautet das deutsche Wort für "ellipsis"?', '["die Ellipse","die Hyperbel","die Poetik","der Vers"]', 'die Ellipse', 1, 7),
  ('00000000-0000-4000-a000-00006a40dab2', 'true_false', 'Im Deutschen werden alle Nomen großgeschrieben.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-00006a40dab2', 'multiple_choice', 'How do you say "please" in a restaurant in Germany?', '["Bitte","Danke","Tschüss","Hallo"]', 'Bitte', 1, 9),
  ('00000000-0000-4000-a000-00006a40dab2', 'fill_blank', 'Wo ___ (to live) du?', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 2, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, french_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-00006a40dab2', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', NULL, 'Used in Linguistik und Stilistik', 'formal', false, 1),
  ('00000000-0000-4000-a000-00006a40dab2', 'Guten Tag!', 'Good day!', 'نهارك سعيد!', NULL, 'Used in Linguistik und Stilistik', 'formal', false, 2),
  ('00000000-0000-4000-a000-00006a40dab2', 'Hallo, wie geht es Ihnen?', 'Hello, how are you?', 'مرحباً، كيف حالكم؟', NULL, 'Used in Linguistik und Stilistik', 'formal', false, 3),
  ('00000000-0000-4000-a000-00006a40dab2', 'Schön, Sie kennenzulernen!', 'Nice to meet you!', 'سعيد بلقائكم!', NULL, 'Used in Linguistik und Stilistik', 'formal', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-00006a40dab2', 'der der Stil (die Stile)', 'style — الأسلوب', 'noun', 'vocabulary', 1),
  ('00000000-0000-4000-a000-00006a40dab2', 'das das Register (die Register)', 'register — المستوى اللغوي', 'noun', 'vocabulary', 2),
  ('00000000-0000-4000-a000-00006a40dab2', 'das das Stilmittel (die Stilmittel)', 'stylistic device — الأداة الأسلوبية', 'noun', 'vocabulary', 3),
  ('00000000-0000-4000-a000-00006a40dab2', 'die die Alliteration (die Alliterationen)', 'alliteration — الجناس', 'noun', 'vocabulary', 4),
  ('00000000-0000-4000-a000-00006a40dab2', 'die die Ellipse (die Ellipsen)', 'ellipsis — الحذف', 'noun', 'vocabulary', 5),
  ('00000000-0000-4000-a000-00006a40dab2', 'die die Hyperbel (die Hyperbeln)', 'hyperbole — المبالغة', 'noun', 'vocabulary', 6),
  ('00000000-0000-4000-a000-00006a40dab2', 'die die Poetik', 'poetics — الشعرية', 'noun', 'vocabulary', 7),
  ('00000000-0000-4000-a000-00006a40dab2', 'der der Vers (die Verse)', 'verse — البيت الشعري', 'noun', 'vocabulary', 8),
  ('00000000-0000-4000-a000-00006a40dab2', 'der der Reim (die Reime)', 'rhyme — القافية', 'noun', 'vocabulary', 9),
  ('00000000-0000-4000-a000-00006a40dab2', 'das das Metrum (die Metren)', 'meter — الوزن', 'noun', 'vocabulary', 10),
  ('00000000-0000-4000-a000-00006a40dab2', 'die die Gattung (die Gattungen)', 'genre — النوع الأدبي', 'noun', 'vocabulary', 11),
  ('00000000-0000-4000-a000-00006a40dab2', 'die die Pragmatik', 'pragmatics — البراغماتية', 'noun', 'vocabulary', 12),
  ('00000000-0000-4000-a000-00006a40dab2', 'der der Sprechakt (die Sprechakte)', 'speech act — فعل الكلام', 'noun', 'vocabulary', 13),
  ('00000000-0000-4000-a000-00006a40dab2', 'die die Implikatur (die Implikaturen)', 'implicature — الاستلزام التخاطبي', 'noun', 'vocabulary', 14),
  ('00000000-0000-4000-a000-00006a40dab2', 'der der Kontext (die Kontexte)', 'context — السياق', 'noun', 'vocabulary', 15),
  ('00000000-0000-4000-a000-00006a40dab2', 'Das ist doch eine gute Idee, oder?', 'That IS a good idea, isn''t it?', 'Module Partikeln und Satzgliedstellung (Modal Particles and Word Order Nuances)', 'grammar', 16),
  ('00000000-0000-4000-a000-00006a40dab2', 'Komm mal her, bitte.', 'Come here, please. (softening)', 'Module Partikeln und Satzgliedstellung (Modal Particles and Word Order Nuances)', 'grammar', 17),
  ('00000000-0000-4000-a000-00006a40dab2', 'Was hast du eigentlich studiert?', 'What did you study, by the way?', 'Module Partikeln und Satzgliedstellung (Modal Particles and Word Order Nuances)', 'grammar', 18);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, french_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-00006a40dab2', 'Sprachvarietäten und Register — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', NULL, 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, french_translation, duration_seconds, speaker_count, scenario) values
  ('00000000-0000-4000-a000-00006a40dab2', 'Sprachvarietäten und Register — Hörverständnis', '[Lehrerin]: Guten Morgen! Heute lernen wir Begrüßungen.

[Lehrerin]: Wiederholen Sie: Guten Morgen!

[Student]: Guten Morgen!

[Lehrerin]: Sehr gut! Und wie sagt man "Goodbye"?

[Student]: Auf Wiedersehen!

[Lehrerin]: Perfekt! Bis morgen!', '[Lehrerin]: Good morning! Today we learn greetings.

[Lehrerin]: Repeat: Good morning!

[Student]: Good morning!

[Lehrerin]: Very good! And how do you say goodbye?

[Student]: Goodbye!

[Lehrerin]: Perfect! See you tomorrow!', '[Lehrerin]: صباح الخير! اليوم نتعلم التحيات.

[Lehrerin]: كرروا: صباح الخير!

[Student]: صباح الخير!

[Lehrerin]: جيد جداً! وكيف نقول "وداعاً"؟

[Student]: إلى اللقاء!

[Lehrerin]: ممتاز! إلى الغد!', '[Lehrerin]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: ', 72, 2, 'Linguistik und Stilistik');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-00006a40dab2', '🔊 Sprechen: Sprachvarietäten und Register', 'Presentation: Prepare a 2-minute presentation on "Language Varieties im deutschsprachigen Raum". Use discourse markers like "zunächst", "darüber hinaus", "abschließend". Your AI partner will ask critical questions afterwards.', 'Language Varieties', ARRAY['Use discourse markers (also, jedoch, außerdem)','React naturally: "Ach so!", "Echt?", "Das stimmt!"','Paraphrase when you don''t know a word']::text[], ARRAY['der Stil','das Register','das Stilmittel','die Alliteration','die Ellipse','die Hyperbel','die Poetik','der Vers']::text[], 120, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-00006a40dab2', '✏️ Schreiben: Sprachvarietäten und Register', 'Write a discursive essay (300-350 words) analyzing "Language Varieties in modern German society". Present both advantages and disadvantages. Use complex sentence structures (Nebensätze mit "obwohl", "trotzdem", "während") and formal register. Conclude with your own position.', ARRAY['Use paragraph breaks for structure','Connect ideas with "außerdem", "deshalb", "jedoch"','Check your verb position in Nebensätze']::text[], ARRAY['der Stil','das Register','das Stilmittel','die Alliteration','die Ellipse','die Hyperbel','die Poetik','der Vers']::text[], ARRAY['Sentence structure','Vocabulary usage']::text[], 250, 350, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00006a40dab2', 'Sprachvarietäten und Register — Roleplay', 'Language Varieties', 'Student', 'Teacher', 'Practice conversation about Language Varieties', 'Hallo! Lass uns über dieses Thema sprechen.', 'advanced', 1, ARRAY['der Stil','das Register','das Stilmittel','die Alliteration','die Ellipse','die Hyperbel','die Poetik','der Vers']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00006a40dab2', 'Sprachvarietäten und Register — Advanced Roleplay', 'Language Varieties', 'Customer', 'Assistant', 'Extended conversation about Language Varieties', 'Guten Tag! Wie kann ich Ihnen helfen?', 'advanced', 2, ARRAY['der Stil','das Register','das Stilmittel','die Alliteration','die Ellipse','die Hyperbel','die Poetik','der Vers']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-00006a40dab2', 'Sprachvarietäten und Register — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Sprachvarietäten und Register".', 'Creative practice for Language Varieties', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-00006a40dab2', '📚 Hausaufgabe: Sprachvarietäten und Register', 'Complete these tasks to reinforce "Sprachvarietäten und Register".', 'mixed', '[{"description":"Create 10 flashcards from this lesson''s vocabulary — write German on one side, Arabic on the other. Test yourself 3 times."},{"description":"Write 6 sentences about Language Varieties: 2 statements, 2 questions, 2 negations — all using present_tense."},{"description":"Record yourself reading the dialogue aloud. Listen to the recording and note 3 things to improve."},{"description":"Find 3 real German websites, videos, or articles about Language Varieties. Note 5 new words you discovered."}]', 50, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-00006a40dab2', '🎯 Excellent progress! This lesson covered Language Varieties (60 vocabulary items) and present_tense. You developed reading, listening, speaking, and writing skills in the context of stylistics. Focus on your common mistakes area for maximum improvement.', '["60 vocabulary items about Language Varieties","present_tense — grammar explanation and practice","Reading comprehension: text about Language Varieties","Listening comprehension: dialogue about Language Varieties","Speaking practice: roleplay/discussion about Language Varieties","Writing task: text about Language Varieties"]', '[{"title":"Sprachvarietäten und Register Review","summary":"present_tense — the main grammar focus. Focus on nuanced usage, exceptions, and stylistic variation."}]', ARRAY['der Stil (style)','das Register (register)','das Stilmittel (stylistic device)','die Alliteration (alliteration)','die Ellipse (ellipsis)']::text[], ARRAY['Don''t translate from Arabic word-for-word — German has different sentence structure','Learn every noun with its article: NEVER learn "Tisch" alone, always "der Tisch"','Pay attention to Konjunktiv I/II distinction']::text[], ARRAY['Practice 15-20 minutes daily — consistency beats intensity','Speak out loud: German pronunciation needs muscle memory','Use the new vocabulary within 24 hours or you''ll forget it','Watch German YouTube videos about Language Varieties for authentic input']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006a40dab2', 'translation', 'Translate to German: "I use the word "style" in a sentence about Language Varieties."', '[]', 'Der Stil des Textes ist formell.', 'Use der  "der Stil" with the correct present_tense form.', 1, 40);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006a40dab2', 'translation', 'Translate to German: "I use the word "register" in a sentence about Language Varieties."', '[]', 'Das Register passt zur Situation.', 'Use das  "das Register" with the correct present_tense form.', 1, 41);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006a40dab2', 'translation', 'Translate to German: "I use the word "stylistic device" in a sentence about Language Varieties."', '[]', 'Das Stilmittel unterstreicht die Aussage.', 'Use das  "das Stilmittel" with the correct present_tense form.', 1, 42);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006a40dab2', 'Culture: 🇩🇪 Deutsche Kultur: Language Varieties', 'The German approach to Language Varieties reflects deeper cultural values: Ordnung (order), Gründlichkeit (thoroughness), and Sachlichkeit (objectivity). Debates about Language Varieties in German media are characterised by factual argumentation. Understanding these discourse norms is essential for C1/C2 learners who want to participate in academic or professional discussions.

لدى Language Varieties في ألمانيا فروق ثقافية دقيقة تختلف عن البلدان العربية. الألمان يفصلون بين حياتهم الخاصة والمهنية بشكل صارم.', '["Tip: Always use \"Sie\" (formal) with strangers and colleagues","Tip: Germans appreciate punctuality — arrive 5 minutes early","Tip: Direct feedback is a sign of respect, not criticism","Tip: Prepare factual arguments, not emotional appeals"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006a40dab2', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Incorrect preposition usage after verbs","correction":"Learn which preposition each verb requires (sich freuen auf, warten auf, denken an)","explanation":"Arabic and German have different sentence structures. Arabic is VSO, German is SVO with verb in position 2."},{"mistake":"Incorrect use of Konjunktiv II in polite requests","correction":"Ich hätte gern... (I would like...)","explanation":"Konjunktiv II is often replaced with würde + infinitive in speech"}]', 30);

  -- Lesson 4: Test: Linguistik und Stilistik (L-C2-01-04)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-00006a40dab3', '00000000-0000-4000-a000-000039d176bf', 'Test: Linguistik und Stilistik', 'Module test on linguistics and stylistics.', 'Module Test', 'test', '["Understand and apply present_tense rules correctly","Use present_tense in real conversations","Avoid common mistakes Arabic speakers make with present_tense","Read and understand present_tense in context","Listen and identify present_tense in speech","Write sentences using present_tense correctly"]', 50, 4, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, french_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-00006a40dab3', 'die Linguistik', 'علم اللغة', 'linguistics', NULL, 'die', NULL, 'noun', 'Linguistik untersucht die menschliche Sprache.', 'Linguistics studies human language.', 'C1', 1),
  ('00000000-0000-4000-a000-00006a40dab3', 'die Syntax', 'النحو/تركيب الجملة', 'syntax', NULL, 'die', NULL, 'noun', 'Die Syntax beschreibt die Satzstruktur.', 'Syntax describes sentence structure.', 'C1', 2),
  ('00000000-0000-4000-a000-00006a40dab3', 'die Semantik', 'علم الدلالة', 'semantics', NULL, 'die', NULL, 'noun', 'Die Semantik befasst sich mit Bedeutung.', 'Semantics deals with meaning.', 'C1', 3),
  ('00000000-0000-4000-a000-00006a40dab3', 'die Morphologie', 'الصرف', 'morphology', NULL, 'die', NULL, 'noun', 'Die Morphologie untersucht Wortformen.', 'Morphology examines word forms.', 'C1', 4),
  ('00000000-0000-4000-a000-00006a40dab3', 'die Phonetik', 'علم الأصوات', 'phonetics', NULL, 'die', NULL, 'noun', 'Die Phonetik untersucht Sprachlaute.', 'Phonetics studies speech sounds.', 'C1', 5),
  ('00000000-0000-4000-a000-00006a40dab3', 'die Pragmatik', 'البراغماتية', 'pragmatics', NULL, 'die', NULL, 'noun', 'Pragmatik untersucht Sprachgebrauch.', 'Pragmatics studies language use.', 'C2', 6),
  ('00000000-0000-4000-a000-00006a40dab3', 'die Sprachwissenschaft', 'علم اللغة', 'linguistics', NULL, 'die', NULL, 'noun', 'Die germanistische Sprachwissenschaft ist vielfältig.', 'German linguistics is diverse.', 'C1', 7),
  ('00000000-0000-4000-a000-00006a40dab3', 'der Stil', 'الأسلوب', 'style', NULL, 'der', 'die Stile', 'noun', 'Der Stil des Textes ist formell.', 'The style of the text is formal.', 'B2', 8),
  ('00000000-0000-4000-a000-00006a40dab3', 'das Register', 'المستوى اللغوي', 'register', NULL, 'das', 'die Register', 'noun', 'Das Register passt zur Situation.', 'The register fits the situation.', 'C1', 9),
  ('00000000-0000-4000-a000-00006a40dab3', 'das Stilmittel', 'الأداة الأسلوبية', 'stylistic device', NULL, 'das', 'die Stilmittel', 'noun', 'Das Stilmittel unterstreicht die Aussage.', 'The stylistic device emphasizes the statement.', 'C1', 10),
  ('00000000-0000-4000-a000-00006a40dab3', 'die Alliteration', 'الجناس', 'alliteration', NULL, 'die', 'die Alliterationen', 'noun', 'Die Alliteration wiederholt den Anlaut.', 'Alliteration repeats the initial sound.', 'C2', 11),
  ('00000000-0000-4000-a000-00006a40dab3', 'die Ellipse', 'الحذف', 'ellipsis', NULL, 'die', 'die Ellipsen', 'noun', 'Die Ellipse spart Wörter aus.', 'The ellipsis omits words.', 'C2', 12),
  ('00000000-0000-4000-a000-00006a40dab3', 'die Hyperbel', 'المبالغة', 'hyperbole', NULL, 'die', 'die Hyperbeln', 'noun', 'Die Hyperbel übertreibt stark.', 'Hyperbole exaggerates strongly.', 'C2', 13),
  ('00000000-0000-4000-a000-00006a40dab3', 'die Poetik', 'الشعرية', 'poetics', NULL, 'die', NULL, 'noun', 'Poetik ist die Theorie der Dichtkunst.', 'Poetics is the theory of poetry.', 'C2', 14),
  ('00000000-0000-4000-a000-00006a40dab3', 'der Vers', 'البيت الشعري', 'verse', NULL, 'der', 'die Verse', 'noun', 'Der Vers hat fünf Hebungen.', 'The verse has five stresses.', 'C1', 15),
  ('00000000-0000-4000-a000-00006a40dab3', 'der Reim', 'القافية', 'rhyme', NULL, 'der', 'die Reime', 'noun', 'Der Reim verbindet die Zeilen.', 'Rhyme connects the lines.', 'C1', 16),
  ('00000000-0000-4000-a000-00006a40dab3', 'das Metrum', 'الوزن', 'meter', NULL, 'das', 'die Metren', 'noun', 'Das Metrum bestimmt den Rhythmus.', 'The meter determines the rhythm.', 'C2', 17),
  ('00000000-0000-4000-a000-00006a40dab3', 'die Gattung', 'النوع الأدبي', 'genre', NULL, 'die', 'die Gattungen', 'noun', 'Lyrik ist eine literarische Gattung.', 'Lyric poetry is a literary genre.', 'C1', 18),
  ('00000000-0000-4000-a000-00006a40dab3', 'der Sprechakt', 'فعل الكلام', 'speech act', NULL, 'der', 'die Sprechakte', 'noun', 'Der Sprechakt ändert die Wirklichkeit.', 'The speech act changes reality.', 'C2', 19),
  ('00000000-0000-4000-a000-00006a40dab3', 'die Implikatur', 'الاستلزام التخاطبي', 'implicature', NULL, 'die', 'die Implikaturen', 'noun', 'Die Implikatur ist die indirekte Bedeutung.', 'Implicature is the indirect meaning.', 'C2', 20),
  ('00000000-0000-4000-a000-00006a40dab3', 'der Kontext', 'السياق', 'context', NULL, 'der', 'die Kontexte', 'noun', 'Der Kontext bestimmt die Bedeutung.', 'Context determines meaning.', 'B2', 21),
  ('00000000-0000-4000-a000-00006a40dab3', 'die Höflichkeit', 'الأدب / اللباقة', 'politeness', NULL, 'die', NULL, 'noun', 'Höflichkeit ist in Japan sehr wichtig.', 'Politeness is very important in Japan.', 'B2', 22),
  ('00000000-0000-4000-a000-00006a40dab3', 'die Konversationsanalyse', 'تحليل المحادثة', 'conversation analysis', NULL, 'die', NULL, 'noun', 'Die Konversationsanalyse untersucht Gespräche.', 'Conversation analysis examines conversations.', 'C2', 23),
  ('00000000-0000-4000-a000-00006a40dab3', 'die Bedeutung', 'المعنى', 'meaning', NULL, 'die', 'die Bedeutungen', 'noun', 'Die Bedeutung des Wortes ist klar.', 'The meaning of the word is clear.', 'B2', 24),
  ('00000000-0000-4000-a000-00006a40dab3', 'die Synonymie', 'الترادف', 'synonymy', NULL, 'die', NULL, 'noun', 'Synonymie bedeutet Bedeutungsgleichheit.', 'Synonymy means sameness of meaning.', 'C2', 25),
  ('00000000-0000-4000-a000-00006a40dab3', 'die Antonymie', 'التضاد', 'antonymy', NULL, 'die', NULL, 'noun', 'Antonymie bezeichnet Gegensätze.', 'Antonymy denotes opposites.', 'C2', 26),
  ('00000000-0000-4000-a000-00006a40dab3', 'die Polysemie', 'تعدد المعاني', 'polysemy', NULL, 'die', NULL, 'noun', 'Polysemie hat mehrere Bedeutungen.', 'Polysemy has multiple meanings.', 'C2', 27),
  ('00000000-0000-4000-a000-00006a40dab3', 'die Kompositionalität', 'التركيبية', 'compositionality', NULL, 'die', NULL, 'noun', 'Kompositionalität besagt, dass Bedeutung aus Teilen besteht.', 'Compositionality holds that meaning consists of parts.', 'C2', 28),
  ('00000000-0000-4000-a000-00006a40dab3', 'die Übersetzung', 'الترجمة', 'translation', NULL, 'die', 'die Übersetzungen', 'noun', 'Die Übersetzung ist gelungen.', 'The translation is successful.', 'B2', 29),
  ('00000000-0000-4000-a000-00006a40dab3', 'übersetzen', 'يترجم', 'to translate', NULL, NULL, NULL, 'verb', 'Ich übersetze den Text ins Arabische.', 'I translate the text into Arabic.', 'B1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006a40dab3', 'Erweiterte Partizipialattribute (Extended Participle Attributes) / الصفات المشتقة الموسعة', 'Extended participle attributes are a hallmark of sophisticated German. Instead of a relative clause, German can place a long phrase between the article and the noun: "der von der Regierung vorgeschlagene Plan" (the plan proposed by the government). These structures condense information and are very common in academic and legal German.', '[{"rule":"Article + (expanded phrase) + noun","note":"der [von der Regierung vorgeschlagene] Plan"},{"rule":"Participle can be Partizip I (aktiv, gleichzeitig) or Partizip II (passiv, vorzeitig)","note":"der lesende Student (the reading student — Partizip I), das gelesene Buch (the read book — Partizip II)"}]', '[{"german":"Der von der Bundesregierung vorgeschlagene Gesetzesentwurf wurde diskutiert.","arabic":"تمت مناقشة مشروع القانون الذي اقترحته الحكومة الاتحادية.","english":"The bill proposed by the federal government was discussed."},{"german":"Die in den letzten Jahren stark gestiegenen Mieten belasten viele Familien.","arabic":"الإيجارات التي ارتفعت بشدة في السنوات الأخيرة تثقل كاهل العائلات.","english":"The rents that have risen sharply in recent years burden many families."}]', '[{"mistake":"Der Plan, der von der Regierung vorgeschlagen wurde (relative clause instead of extended attribute)","correction":"Der von der Regierung vorgeschlagene Plan","explanation":"At C2, extended attributes are preferred over relative clauses for conciseness."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006a40dab3', 'multiple_choice', 'Welches deutsche Wort bedeutet "linguistics"?', '["die Linguistik","die Syntax","die Morphologie","die Semantik"]', 'die Linguistik', '"linguistics" = "die Linguistik" in German. Article: die ', 1, 1),
  ('00000000-0000-4000-a000-00006a40dab3', 'multiple_choice', 'Welches deutsche Wort bedeutet "syntax"?', '["die Syntax","die Phonetik","die Morphologie","die Linguistik"]', 'die Syntax', '"syntax" = "die Syntax" in German. Article: die ', 1, 2),
  ('00000000-0000-4000-a000-00006a40dab3', 'multiple_choice', 'Welches deutsche Wort bedeutet "semantics"?', '["die Semantik","die Linguistik","die Syntax","die Morphologie"]', 'die Semantik', '"semantics" = "die Semantik" in German. Article: die ', 1, 3),
  ('00000000-0000-4000-a000-00006a40dab3', 'multiple_choice', 'Welches deutsche Wort bedeutet "morphology"?', '["die Morphologie","die Linguistik","die Syntax","die Semantik"]', 'die Morphologie', '"morphology" = "die Morphologie" in German. Article: die ', 1, 4),
  ('00000000-0000-4000-a000-00006a40dab3', 'multiple_choice', 'Welches deutsche Wort bedeutet "phonetics"?', '["die Morphologie","die Phonetik","die Semantik","die Linguistik"]', 'die Phonetik', '"phonetics" = "die Phonetik" in German. Article: die ', 1, 5),
  ('00000000-0000-4000-a000-00006a40dab3', 'fill_gap', 'Ergänzen Sie den Satz: Ich ___ gern über Module Test. (sprechen)', '["spreche","sprichst","spricht","sprechen"]', 'spreche', 'ich spreche gern = I like to speak. Stem: sprech- + e.', 2, 6),
  ('00000000-0000-4000-a000-00006a40dab3', 'translation', 'Übersetzen Sie ins Deutsche: "I am learning about Module Test."', '["Ich lerne über Module Test.","Ich lerne Module Test.","Lerne ich Module Test."]', 'Ich lerne über Module Test.', '"Ich lerne über..." = "I am learning about..."', 2, 7),
  ('00000000-0000-4000-a000-00006a40dab3', 'matching', 'Match: Which word pairs are correct?', '["die Linguistik - linguistics, die Syntax - syntax"]', 'Matched correctly', 'Each German word has a unique English equivalent.', 2, 8);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-00006a40dab3', 'multiple_choice', 'Was bedeutet "die Linguistik" auf Deutsch?', '["linguistics","to run","beautiful","yesterday"]', 'linguistics', 1, 1),
  ('00000000-0000-4000-a000-00006a40dab3', 'multiple_choice', 'Welcher Artikel gehört zu "die Syntax"?', '["der","die","das","den"]', 'die', 1, 2),
  ('00000000-0000-4000-a000-00006a40dab3', 'true_false', 'Das Wort "die Semantik" gehört zum Thema Module Test.', '["True","False"]', 'True', 1, 3),
  ('00000000-0000-4000-a000-00006a40dab3', 'multiple_choice', 'Welcher Satz verwendet present_tense?', '["Der von der Bundesregierung vorgeschlagene Gesetzesentwurf wurde diskutiert.","Die in den letzten Jahren stark gestiegenen Mieten belasten viele Familien."]', 'Der von der Bundesregierung vorgeschlagene Gesetzesentwurf wurde diskutiert.', 2, 4),
  ('00000000-0000-4000-a000-00006a40dab3', 'true_false', ''Im Deutschen steht das Verb an zweiter Position im Hauptsatz.', '["True","False"]', 'True', 1, 5),
  ('00000000-0000-4000-a000-00006a40dab3', 'fill_blank', 'Complete: Ich ___ (morphology) Deutsch.', '["die Morphologie","lernt","lernst","lernen"]', 'lerne', 2, 6),
  ('00000000-0000-4000-a000-00006a40dab3', 'multiple_choice', 'Wie lautet das deutsche Wort für "phonetics"?', '["die Phonetik","die Pragmatik","die Sprachwissenschaft","der Stil"]', 'die Phonetik', 1, 7),
  ('00000000-0000-4000-a000-00006a40dab3', 'true_false', 'Im Deutschen werden alle Nomen großgeschrieben.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-00006a40dab3', 'multiple_choice', 'How do you say "please" in a restaurant in Germany?', '["Bitte","Danke","Tschüss","Hallo"]', 'Bitte', 1, 9),
  ('00000000-0000-4000-a000-00006a40dab3', 'fill_blank', 'Wo ___ (to live) du?', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 2, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, french_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-00006a40dab3', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', NULL, 'Used in Linguistik und Stilistik', 'formal', false, 1),
  ('00000000-0000-4000-a000-00006a40dab3', 'Guten Tag!', 'Good day!', 'نهارك سعيد!', NULL, 'Used in Linguistik und Stilistik', 'formal', false, 2),
  ('00000000-0000-4000-a000-00006a40dab3', 'Hallo, wie geht es Ihnen?', 'Hello, how are you?', 'مرحباً، كيف حالكم؟', NULL, 'Used in Linguistik und Stilistik', 'formal', false, 3),
  ('00000000-0000-4000-a000-00006a40dab3', 'Schön, Sie kennenzulernen!', 'Nice to meet you!', 'سعيد بلقائكم!', NULL, 'Used in Linguistik und Stilistik', 'formal', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-00006a40dab3', 'die die Linguistik', 'linguistics — علم اللغة', 'noun', 'vocabulary', 1),
  ('00000000-0000-4000-a000-00006a40dab3', 'die die Syntax', 'syntax — النحو/تركيب الجملة', 'noun', 'vocabulary', 2),
  ('00000000-0000-4000-a000-00006a40dab3', 'die die Semantik', 'semantics — علم الدلالة', 'noun', 'vocabulary', 3),
  ('00000000-0000-4000-a000-00006a40dab3', 'die die Morphologie', 'morphology — الصرف', 'noun', 'vocabulary', 4),
  ('00000000-0000-4000-a000-00006a40dab3', 'die die Phonetik', 'phonetics — علم الأصوات', 'noun', 'vocabulary', 5),
  ('00000000-0000-4000-a000-00006a40dab3', 'die die Pragmatik', 'pragmatics — البراغماتية', 'noun', 'vocabulary', 6),
  ('00000000-0000-4000-a000-00006a40dab3', 'die die Sprachwissenschaft', 'linguistics — علم اللغة', 'noun', 'vocabulary', 7),
  ('00000000-0000-4000-a000-00006a40dab3', 'der der Stil (die Stile)', 'style — الأسلوب', 'noun', 'vocabulary', 8),
  ('00000000-0000-4000-a000-00006a40dab3', 'das das Register (die Register)', 'register — المستوى اللغوي', 'noun', 'vocabulary', 9),
  ('00000000-0000-4000-a000-00006a40dab3', 'das das Stilmittel (die Stilmittel)', 'stylistic device — الأداة الأسلوبية', 'noun', 'vocabulary', 10),
  ('00000000-0000-4000-a000-00006a40dab3', 'die die Alliteration (die Alliterationen)', 'alliteration — الجناس', 'noun', 'vocabulary', 11),
  ('00000000-0000-4000-a000-00006a40dab3', 'die die Ellipse (die Ellipsen)', 'ellipsis — الحذف', 'noun', 'vocabulary', 12),
  ('00000000-0000-4000-a000-00006a40dab3', 'die die Hyperbel (die Hyperbeln)', 'hyperbole — المبالغة', 'noun', 'vocabulary', 13),
  ('00000000-0000-4000-a000-00006a40dab3', 'die die Poetik', 'poetics — الشعرية', 'noun', 'vocabulary', 14),
  ('00000000-0000-4000-a000-00006a40dab3', 'der der Vers (die Verse)', 'verse — البيت الشعري', 'noun', 'vocabulary', 15),
  ('00000000-0000-4000-a000-00006a40dab3', 'Der von der Bundesregierung vorgeschlagene Gesetzesentwurf wurde diskutiert.', 'The bill proposed by the federal government was discussed.', 'Erweiterte Partizipialattribute (Extended Participle Attributes)', 'grammar', 16),
  ('00000000-0000-4000-a000-00006a40dab3', 'Die in den letzten Jahren stark gestiegenen Mieten belasten viele Familien.', 'The rents that have risen sharply in recent years burden many families.', 'Erweiterte Partizipialattribute (Extended Participle Attributes)', 'grammar', 17);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, french_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-00006a40dab3', 'Test: Linguistik und Stilistik — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', NULL, 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, french_translation, duration_seconds, speaker_count, scenario) values
  ('00000000-0000-4000-a000-00006a40dab3', 'Test: Linguistik und Stilistik — Hörverständnis', '[Lehrerin]: Guten Morgen! Heute lernen wir Begrüßungen.

[Lehrerin]: Wiederholen Sie: Guten Morgen!

[Student]: Guten Morgen!

[Lehrerin]: Sehr gut! Und wie sagt man "Goodbye"?

[Student]: Auf Wiedersehen!

[Lehrerin]: Perfekt! Bis morgen!', '[Lehrerin]: Good morning! Today we learn greetings.

[Lehrerin]: Repeat: Good morning!

[Student]: Good morning!

[Lehrerin]: Very good! And how do you say goodbye?

[Student]: Goodbye!

[Lehrerin]: Perfect! See you tomorrow!', '[Lehrerin]: صباح الخير! اليوم نتعلم التحيات.

[Lehrerin]: كرروا: صباح الخير!

[Student]: صباح الخير!

[Lehrerin]: جيد جداً! وكيف نقول "وداعاً"؟

[Student]: إلى اللقاء!

[Lehrerin]: ممتاز! إلى الغد!', '[Lehrerin]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: ', 72, 2, 'Linguistik und Stilistik');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-00006a40dab3', '🔊 Sprechen: Test: Linguistik und Stilistik', 'Presentation: Prepare a 2-minute presentation on "Module Test im deutschsprachigen Raum". Use discourse markers like "zunächst", "darüber hinaus", "abschließend". Your AI partner will ask critical questions afterwards.', 'Module Test', ARRAY['Use discourse markers (also, jedoch, außerdem)','React naturally: "Ach so!", "Echt?", "Das stimmt!"','Paraphrase when you don''t know a word']::text[], ARRAY['die Linguistik','die Syntax','die Semantik','die Morphologie','die Phonetik','die Pragmatik','die Sprachwissenschaft','der Stil']::text[], 120, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-00006a40dab3', '✏️ Schreiben: Test: Linguistik und Stilistik', 'Write a discursive essay (300-350 words) analyzing "Module Test in modern German society". Present both advantages and disadvantages. Use complex sentence structures (Nebensätze mit "obwohl", "trotzdem", "während") and formal register. Conclude with your own position.', ARRAY['Use paragraph breaks for structure','Connect ideas with "außerdem", "deshalb", "jedoch"','Check your verb position in Nebensätze']::text[], ARRAY['die Linguistik','die Syntax','die Semantik','die Morphologie','die Phonetik','die Pragmatik','die Sprachwissenschaft','der Stil']::text[], ARRAY['Sentence structure','Vocabulary usage']::text[], 250, 350, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00006a40dab3', 'Test: Linguistik und Stilistik — Roleplay', 'Module Test', 'Student', 'Teacher', 'Practice conversation about Module Test', 'Hallo! Lass uns über dieses Thema sprechen.', 'advanced', 1, ARRAY['die Linguistik','die Syntax','die Semantik','die Morphologie','die Phonetik','die Pragmatik','die Sprachwissenschaft','der Stil']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00006a40dab3', 'Test: Linguistik und Stilistik — Advanced Roleplay', 'Module Test', 'Customer', 'Assistant', 'Extended conversation about Module Test', 'Guten Tag! Wie kann ich Ihnen helfen?', 'advanced', 2, ARRAY['die Linguistik','die Syntax','die Semantik','die Morphologie','die Phonetik','die Pragmatik','die Sprachwissenschaft','der Stil']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-00006a40dab3', 'Test: Linguistik und Stilistik — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Test: Linguistik und Stilistik".', 'Creative practice for Module Test', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-00006a40dab3', '📚 Hausaufgabe: Test: Linguistik und Stilistik', 'Complete these tasks to reinforce "Test: Linguistik und Stilistik".', 'mixed', '[{"description":"Create 10 flashcards from this lesson''s vocabulary — write German on one side, Arabic on the other. Test yourself 3 times."},{"description":"Write 6 sentences about Module Test: 2 statements, 2 questions, 2 negations — all using present_tense."},{"description":"Record yourself reading the dialogue aloud. Listen to the recording and note 3 things to improve."},{"description":"Find 3 real German websites, videos, or articles about Module Test. Note 5 new words you discovered."}]', 50, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-00006a40dab3', '🎯 Excellent progress! This lesson covered Module Test (66 vocabulary items) and present_tense. You developed reading, listening, speaking, and writing skills in the context of linguistics. Focus on your common mistakes area for maximum improvement.', '["66 vocabulary items about Module Test","present_tense — grammar explanation and practice","Reading comprehension: text about Module Test","Listening comprehension: dialogue about Module Test","Speaking practice: roleplay/discussion about Module Test","Writing task: text about Module Test"]', '[{"title":"Test: Linguistik und Stilistik Review","summary":"present_tense — the main grammar focus. Focus on nuanced usage, exceptions, and stylistic variation."}]', ARRAY['die Linguistik (linguistics)','die Syntax (syntax)','die Semantik (semantics)','die Morphologie (morphology)','die Phonetik (phonetics)']::text[], ARRAY['Don''t translate from Arabic word-for-word — German has different sentence structure','Learn every noun with its article: NEVER learn "Tisch" alone, always "der Tisch"','Pay attention to Konjunktiv I/II distinction']::text[], ARRAY['Practice 15-20 minutes daily — consistency beats intensity','Speak out loud: German pronunciation needs muscle memory','Use the new vocabulary within 24 hours or you''ll forget it','Watch German YouTube videos about Module Test for authentic input']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006a40dab3', 'translation', 'Translate to German: "I use the word "linguistics" in a sentence about Module Test."', '[]', 'Linguistik untersucht die menschliche Sprache.', 'Use die  "die Linguistik" with the correct present_tense form.', 1, 40);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006a40dab3', 'translation', 'Translate to German: "I use the word "syntax" in a sentence about Module Test."', '[]', 'Die Syntax beschreibt die Satzstruktur.', 'Use die  "die Syntax" with the correct present_tense form.', 1, 41);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006a40dab3', 'translation', 'Translate to German: "I use the word "semantics" in a sentence about Module Test."', '[]', 'Die Semantik befasst sich mit Bedeutung.', 'Use die  "die Semantik" with the correct present_tense form.', 1, 42);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006a40dab3', 'Culture: 🇩🇪 Deutsche Kultur: Module Test', 'The German approach to Module Test reflects deeper cultural values: Ordnung (order), Gründlichkeit (thoroughness), and Sachlichkeit (objectivity). Debates about Module Test in German media are characterised by factual argumentation. Understanding these discourse norms is essential for C1/C2 learners who want to participate in academic or professional discussions.

لدى Module Test في ألمانيا فروق ثقافية دقيقة تختلف عن البلدان العربية. الألمان يفصلون بين حياتهم الخاصة والمهنية بشكل صارم.', '["Tip: Always use \"Sie\" (formal) with strangers and colleagues","Tip: Germans appreciate punctuality — arrive 5 minutes early","Tip: Direct feedback is a sign of respect, not criticism","Tip: Prepare factual arguments, not emotional appeals"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006a40dab3', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Incorrect preposition usage after verbs","correction":"Learn which preposition each verb requires (sich freuen auf, warten auf, denken an)","explanation":"Arabic and German have different sentence structures. Arabic is VSO, German is SVO with verb in position 2."},{"mistake":"Incorrect use of Konjunktiv II in polite requests","correction":"Ich hätte gern... (I would like...)","explanation":"Konjunktiv II is often replaced with würde + infinitive in speech"}]', 30);

  -- Module 2: Literatur und Interpretation
  insert into public.course_modules (id, level_id, title, description, objectives, order_index, estimated_hours, is_published)
  values ('00000000-0000-4000-a000-000039d176c0', 'C2', 'Literatur und Interpretation', 'Analyze German literature and write critical interpretations.', '["Analyze literary texts","Write literary interpretations","Use literary terminology","Compare different literary periods","Write critical essays"]', 2, 5, true)
  on conflict (id) do nothing;

  -- Lesson 1: Literarische Textanalyse (L-C2-02-01)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-00006a414f0f', '00000000-0000-4000-a000-000039d176c0', 'Literarische Textanalyse', 'Analyze literary texts systematically.', 'Literary Analysis', 'reading', '["Understand and apply present_tense rules correctly","Use present_tense in real conversations","Avoid common mistakes Arabic speakers make with present_tense","Read and understand present_tense in context","Listen and identify present_tense in speech","Write sentences using present_tense correctly"]', 60, 1, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, french_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-00006a414f0f', 'der Roman', 'الرواية', 'novel', NULL, 'der', 'die Romane', 'noun', 'Der Roman ist ein Bestseller.', 'The novel is a bestseller.', 'B1', 1),
  ('00000000-0000-4000-a000-00006a414f0f', 'der Dichter', 'الشاعر', 'poet', NULL, 'der', 'die Dichter', 'noun', 'Goethe war ein großer Dichter.', 'Goethe was a great poet.', 'B2', 2),
  ('00000000-0000-4000-a000-00006a414f0f', 'das Gedicht', 'القصيدة', 'poem', NULL, 'das', 'die Gedichte', 'noun', 'Das Gedicht handelt von der Liebe.', 'The poem is about love.', 'B1', 3),
  ('00000000-0000-4000-a000-00006a414f0f', 'der Autor', 'المؤلف', 'author', NULL, 'der', 'die Autoren', 'noun', 'Der Autor schreibt einen neuen Roman.', 'The author is writing a new novel.', 'B1', 4),
  ('00000000-0000-4000-a000-00006a414f0f', 'die Literaturgeschichte', 'تاريخ الأدب', 'literary history', NULL, 'die', NULL, 'noun', 'Die deutsche Literaturgeschichte ist reich.', 'German literary history is rich.', 'C1', 5),
  ('00000000-0000-4000-a000-00006a414f0f', 'das Drama', 'المسرحية', 'drama', NULL, 'das', 'die Dramen', 'noun', 'Das Drama wurde 1920 geschrieben.', 'The drama was written in 1920.', 'B2', 6),
  ('00000000-0000-4000-a000-00006a414f0f', 'die Erzählung', 'القصة القصيرة', 'short story', NULL, 'die', 'die Erzählungen', 'noun', 'Die Erzählung ist bewegend.', 'The short story is moving.', 'B2', 7),
  ('00000000-0000-4000-a000-00006a414f0f', 'der Stil', 'الأسلوب', 'style', NULL, 'der', 'die Stile', 'noun', 'Der Stil des Textes ist formell.', 'The style of the text is formal.', 'B2', 8),
  ('00000000-0000-4000-a000-00006a414f0f', 'das Register', 'المستوى اللغوي', 'register', NULL, 'das', 'die Register', 'noun', 'Das Register passt zur Situation.', 'The register fits the situation.', 'C1', 9),
  ('00000000-0000-4000-a000-00006a414f0f', 'das Stilmittel', 'الأداة الأسلوبية', 'stylistic device', NULL, 'das', 'die Stilmittel', 'noun', 'Das Stilmittel unterstreicht die Aussage.', 'The stylistic device emphasizes the statement.', 'C1', 10),
  ('00000000-0000-4000-a000-00006a414f0f', 'die Alliteration', 'الجناس', 'alliteration', NULL, 'die', 'die Alliterationen', 'noun', 'Die Alliteration wiederholt den Anlaut.', 'Alliteration repeats the initial sound.', 'C2', 11),
  ('00000000-0000-4000-a000-00006a414f0f', 'die Ellipse', 'الحذف', 'ellipsis', NULL, 'die', 'die Ellipsen', 'noun', 'Die Ellipse spart Wörter aus.', 'The ellipsis omits words.', 'C2', 12),
  ('00000000-0000-4000-a000-00006a414f0f', 'die Hyperbel', 'المبالغة', 'hyperbole', NULL, 'die', 'die Hyperbeln', 'noun', 'Die Hyperbel übertreibt stark.', 'Hyperbole exaggerates strongly.', 'C2', 13),
  ('00000000-0000-4000-a000-00006a414f0f', 'die Poetik', 'الشعرية', 'poetics', NULL, 'die', NULL, 'noun', 'Poetik ist die Theorie der Dichtkunst.', 'Poetics is the theory of poetry.', 'C2', 14),
  ('00000000-0000-4000-a000-00006a414f0f', 'der Vers', 'البيت الشعري', 'verse', NULL, 'der', 'die Verse', 'noun', 'Der Vers hat fünf Hebungen.', 'The verse has five stresses.', 'C1', 15),
  ('00000000-0000-4000-a000-00006a414f0f', 'der Reim', 'القافية', 'rhyme', NULL, 'der', 'die Reime', 'noun', 'Der Reim verbindet die Zeilen.', 'Rhyme connects the lines.', 'C1', 16),
  ('00000000-0000-4000-a000-00006a414f0f', 'das Metrum', 'الوزن', 'meter', NULL, 'das', 'die Metren', 'noun', 'Das Metrum bestimmt den Rhythmus.', 'The meter determines the rhythm.', 'C2', 17),
  ('00000000-0000-4000-a000-00006a414f0f', 'die Gattung', 'النوع الأدبي', 'genre', NULL, 'die', 'die Gattungen', 'noun', 'Lyrik ist eine literarische Gattung.', 'Lyric poetry is a literary genre.', 'C1', 18),
  ('00000000-0000-4000-a000-00006a414f0f', 'die Pragmatik', 'البراغماتية', 'pragmatics', NULL, 'die', NULL, 'noun', 'Pragmatik untersucht Sprache im Kontext.', 'Pragmatics studies language in context.', 'C2', 19),
  ('00000000-0000-4000-a000-00006a414f0f', 'der Sprechakt', 'فعل الكلام', 'speech act', NULL, 'der', 'die Sprechakte', 'noun', 'Der Sprechakt ändert die Wirklichkeit.', 'The speech act changes reality.', 'C2', 20),
  ('00000000-0000-4000-a000-00006a414f0f', 'die Implikatur', 'الاستلزام التخاطبي', 'implicature', NULL, 'die', 'die Implikaturen', 'noun', 'Die Implikatur ist die indirekte Bedeutung.', 'Implicature is the indirect meaning.', 'C2', 21),
  ('00000000-0000-4000-a000-00006a414f0f', 'der Kontext', 'السياق', 'context', NULL, 'der', 'die Kontexte', 'noun', 'Der Kontext bestimmt die Bedeutung.', 'Context determines meaning.', 'B2', 22),
  ('00000000-0000-4000-a000-00006a414f0f', 'die Höflichkeit', 'الأدب / اللباقة', 'politeness', NULL, 'die', NULL, 'noun', 'Höflichkeit ist in Japan sehr wichtig.', 'Politeness is very important in Japan.', 'B2', 23),
  ('00000000-0000-4000-a000-00006a414f0f', 'die Konversationsanalyse', 'تحليل المحادثة', 'conversation analysis', NULL, 'die', NULL, 'noun', 'Die Konversationsanalyse untersucht Gespräche.', 'Conversation analysis examines conversations.', 'C2', 24),
  ('00000000-0000-4000-a000-00006a414f0f', 'die Bedeutung', 'المعنى', 'meaning', NULL, 'die', 'die Bedeutungen', 'noun', 'Die Bedeutung des Wortes ist klar.', 'The meaning of the word is clear.', 'B2', 25),
  ('00000000-0000-4000-a000-00006a414f0f', 'die Synonymie', 'الترادف', 'synonymy', NULL, 'die', NULL, 'noun', 'Synonymie bedeutet Bedeutungsgleichheit.', 'Synonymy means sameness of meaning.', 'C2', 26),
  ('00000000-0000-4000-a000-00006a414f0f', 'die Antonymie', 'التضاد', 'antonymy', NULL, 'die', NULL, 'noun', 'Antonymie bezeichnet Gegensätze.', 'Antonymy denotes opposites.', 'C2', 27),
  ('00000000-0000-4000-a000-00006a414f0f', 'die Polysemie', 'تعدد المعاني', 'polysemy', NULL, 'die', NULL, 'noun', 'Polysemie hat mehrere Bedeutungen.', 'Polysemy has multiple meanings.', 'C2', 28),
  ('00000000-0000-4000-a000-00006a414f0f', 'die Kompositionalität', 'التركيبية', 'compositionality', NULL, 'die', NULL, 'noun', 'Kompositionalität besagt, dass Bedeutung aus Teilen besteht.', 'Compositionality holds that meaning consists of parts.', 'C2', 29),
  ('00000000-0000-4000-a000-00006a414f0f', 'die Übersetzung', 'الترجمة', 'translation', NULL, 'die', 'die Übersetzungen', 'noun', 'Die Übersetzung ist gelungen.', 'The translation is successful.', 'B2', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006a414f0f', 'Module Partikeln und Satzgliedstellung (Modal Particles and Word Order Nuances) / الجزيئات النمطية وترتيب الكلمات الدقيق', 'Modal particles (doch, ja, eben, halt, wohl, eigentlich, denn, mal) add nuance and emotion to statements. They are almost impossible to translate directly but are essential for natural German. At C2, their correct placement and usage distinguishes near-native from advanced learners.', '[{"rule":"doch: contradiction or emphasis","note":"Das ist doch nicht wahr! (That''s just not true!)"},{"rule":"ja: shared knowledge reminder","note":"Das ist ja interessant! (That IS interesting! — as we both know)"},{"rule":"denn: in W-questions (casual)","note":"Was machst du denn da? (What are you doing there? — curious, not accusatory)"}]', '[{"german":"Das ist doch eine gute Idee, oder?","arabic":"هذه فكرة جيدة، أليس كذلك؟ (تأكيد)","english":"That IS a good idea, isn''t it?"},{"german":"Komm mal her, bitte.","arabic":"تعال إلى هنا من فضلك. (طلاقة)","english":"Come here, please. (softening)"},{"german":"Was hast du eigentlich studiert?","arabic":"ماذا درست بالمناسبة؟","english":"What did you study, by the way?"}]', '[{"mistake":"Speaking without modal particles (too textbook-like)","correction":"Das ist doch klar! (not just \"Das ist klar\")","explanation":"Without modal particles, German sounds robotic. At C2, particles show naturalness."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006a414f0f', 'multiple_choice', 'Welches deutsche Wort bedeutet "novel"?', '["das Gedicht","der Autor","die Literaturgeschichte","der Dichter"]', 'der Roman', '"novel" = "der Roman" in German. Article: der Plural: die Romane', 1, 1),
  ('00000000-0000-4000-a000-00006a414f0f', 'multiple_choice', 'Welches deutsche Wort bedeutet "poet"?', '["die Literaturgeschichte","der Dichter","der Roman","das Gedicht"]', 'der Dichter', '"poet" = "der Dichter" in German. Article: der Plural: die Dichter', 1, 2),
  ('00000000-0000-4000-a000-00006a414f0f', 'multiple_choice', 'Welches deutsche Wort bedeutet "poem"?', '["der Roman","das Gedicht","der Dichter","die Literaturgeschichte"]', 'das Gedicht', '"poem" = "das Gedicht" in German. Article: das Plural: die Gedichte', 1, 3),
  ('00000000-0000-4000-a000-00006a414f0f', 'multiple_choice', 'Welches deutsche Wort bedeutet "author"?', '["der Roman","das Gedicht","der Dichter","der Autor"]', 'der Autor', '"author" = "der Autor" in German. Article: der Plural: die Autoren', 1, 4),
  ('00000000-0000-4000-a000-00006a414f0f', 'multiple_choice', 'Welches deutsche Wort bedeutet "literary history"?', '["die Literaturgeschichte","das Gedicht","der Autor","der Dichter"]', 'die Literaturgeschichte', '"literary history" = "die Literaturgeschichte" in German. Article: die ', 1, 5),
  ('00000000-0000-4000-a000-00006a414f0f', 'fill_gap', 'Ergänzen Sie den Satz: Ich ___ gern über Literary Analysis. (sprechen)', '["spreche","sprichst","spricht","sprechen"]', 'spreche', 'ich spreche gern = I like to speak. Stem: sprech- + e.', 2, 6),
  ('00000000-0000-4000-a000-00006a414f0f', 'translation', 'Übersetzen Sie ins Deutsche: "I am learning about Literary Analysis."', '["Ich lerne über Literary Analysis.","Ich lerne Literary Analysis.","Lerne ich Literary Analysis."]', 'Ich lerne über Literary Analysis.', '"Ich lerne über..." = "I am learning about..."', 2, 7),
  ('00000000-0000-4000-a000-00006a414f0f', 'matching', 'Match: Which word pairs are correct?', '["der Roman - novel, der Dichter - poet"]', 'Matched correctly', 'Each German word has a unique English equivalent.', 2, 8);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-00006a414f0f', 'multiple_choice', 'Was bedeutet "der Roman" auf Deutsch?', '["novel","to run","beautiful","yesterday"]', 'novel', 1, 1),
  ('00000000-0000-4000-a000-00006a414f0f', 'multiple_choice', 'Welcher Artikel gehört zu "der Dichter"?', '["der","die","das","den"]', 'der', 1, 2),
  ('00000000-0000-4000-a000-00006a414f0f', 'true_false', 'Das Wort "das Gedicht" gehört zum Thema Literary Analysis.', '["True","False"]', 'True', 1, 3),
  ('00000000-0000-4000-a000-00006a414f0f', 'multiple_choice', 'Welcher Satz verwendet present_tense?', '["Das ist doch eine gute Idee, oder?","Komm mal her, bitte.","Was hast du eigentlich studiert?"]', 'Das ist doch eine gute Idee, oder?', 2, 4),
  ('00000000-0000-4000-a000-00006a414f0f', 'true_false', ''Im Deutschen steht das Verb an zweiter Position im Hauptsatz.', '["True","False"]', 'True', 1, 5),
  ('00000000-0000-4000-a000-00006a414f0f', 'fill_blank', 'Complete: Ich ___ (author) Deutsch.', '["der Autor","lernt","lernst","lernen"]', 'lerne', 2, 6),
  ('00000000-0000-4000-a000-00006a414f0f', 'multiple_choice', 'Wie lautet das deutsche Wort für "literary history"?', '["die Literaturgeschichte","das Drama","die Erzählung","der Stil"]', 'die Literaturgeschichte', 1, 7),
  ('00000000-0000-4000-a000-00006a414f0f', 'true_false', 'Im Deutschen werden alle Nomen großgeschrieben.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-00006a414f0f', 'multiple_choice', 'How do you say "please" in a restaurant in Germany?', '["Bitte","Danke","Tschüss","Hallo"]', 'Bitte', 1, 9),
  ('00000000-0000-4000-a000-00006a414f0f', 'fill_blank', 'Wo ___ (to live) du?', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 2, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, french_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-00006a414f0f', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', NULL, 'Used in Literatur und Interpretation', 'formal', false, 1),
  ('00000000-0000-4000-a000-00006a414f0f', 'Guten Tag!', 'Good day!', 'نهارك سعيد!', NULL, 'Used in Literatur und Interpretation', 'formal', false, 2),
  ('00000000-0000-4000-a000-00006a414f0f', 'Hallo, wie geht es Ihnen?', 'Hello, how are you?', 'مرحباً، كيف حالكم؟', NULL, 'Used in Literatur und Interpretation', 'formal', false, 3),
  ('00000000-0000-4000-a000-00006a414f0f', 'Schön, Sie kennenzulernen!', 'Nice to meet you!', 'سعيد بلقائكم!', NULL, 'Used in Literatur und Interpretation', 'formal', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-00006a414f0f', 'der der Roman (die Romane)', 'novel — الرواية', 'noun', 'vocabulary', 1),
  ('00000000-0000-4000-a000-00006a414f0f', 'der der Dichter (die Dichter)', 'poet — الشاعر', 'noun', 'vocabulary', 2),
  ('00000000-0000-4000-a000-00006a414f0f', 'das das Gedicht (die Gedichte)', 'poem — القصيدة', 'noun', 'vocabulary', 3),
  ('00000000-0000-4000-a000-00006a414f0f', 'der der Autor (die Autoren)', 'author — المؤلف', 'noun', 'vocabulary', 4),
  ('00000000-0000-4000-a000-00006a414f0f', 'die die Literaturgeschichte', 'literary history — تاريخ الأدب', 'noun', 'vocabulary', 5),
  ('00000000-0000-4000-a000-00006a414f0f', 'das das Drama (die Dramen)', 'drama — المسرحية', 'noun', 'vocabulary', 6),
  ('00000000-0000-4000-a000-00006a414f0f', 'die die Erzählung (die Erzählungen)', 'short story — القصة القصيرة', 'noun', 'vocabulary', 7),
  ('00000000-0000-4000-a000-00006a414f0f', 'der der Stil (die Stile)', 'style — الأسلوب', 'noun', 'vocabulary', 8),
  ('00000000-0000-4000-a000-00006a414f0f', 'das das Register (die Register)', 'register — المستوى اللغوي', 'noun', 'vocabulary', 9),
  ('00000000-0000-4000-a000-00006a414f0f', 'das das Stilmittel (die Stilmittel)', 'stylistic device — الأداة الأسلوبية', 'noun', 'vocabulary', 10),
  ('00000000-0000-4000-a000-00006a414f0f', 'die die Alliteration (die Alliterationen)', 'alliteration — الجناس', 'noun', 'vocabulary', 11),
  ('00000000-0000-4000-a000-00006a414f0f', 'die die Ellipse (die Ellipsen)', 'ellipsis — الحذف', 'noun', 'vocabulary', 12),
  ('00000000-0000-4000-a000-00006a414f0f', 'die die Hyperbel (die Hyperbeln)', 'hyperbole — المبالغة', 'noun', 'vocabulary', 13),
  ('00000000-0000-4000-a000-00006a414f0f', 'die die Poetik', 'poetics — الشعرية', 'noun', 'vocabulary', 14),
  ('00000000-0000-4000-a000-00006a414f0f', 'der der Vers (die Verse)', 'verse — البيت الشعري', 'noun', 'vocabulary', 15),
  ('00000000-0000-4000-a000-00006a414f0f', 'Das ist doch eine gute Idee, oder?', 'That IS a good idea, isn''t it?', 'Module Partikeln und Satzgliedstellung (Modal Particles and Word Order Nuances)', 'grammar', 16),
  ('00000000-0000-4000-a000-00006a414f0f', 'Komm mal her, bitte.', 'Come here, please. (softening)', 'Module Partikeln und Satzgliedstellung (Modal Particles and Word Order Nuances)', 'grammar', 17),
  ('00000000-0000-4000-a000-00006a414f0f', 'Was hast du eigentlich studiert?', 'What did you study, by the way?', 'Module Partikeln und Satzgliedstellung (Modal Particles and Word Order Nuances)', 'grammar', 18);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, french_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-00006a414f0f', 'Literarische Textanalyse — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', NULL, 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, french_translation, duration_seconds, speaker_count, scenario) values
  ('00000000-0000-4000-a000-00006a414f0f', 'Literarische Textanalyse — Hörverständnis', '[Lehrerin]: Guten Morgen! Heute lernen wir Begrüßungen.

[Lehrerin]: Wiederholen Sie: Guten Morgen!

[Student]: Guten Morgen!

[Lehrerin]: Sehr gut! Und wie sagt man "Goodbye"?

[Student]: Auf Wiedersehen!

[Lehrerin]: Perfekt! Bis morgen!', '[Lehrerin]: Good morning! Today we learn greetings.

[Lehrerin]: Repeat: Good morning!

[Student]: Good morning!

[Lehrerin]: Very good! And how do you say goodbye?

[Student]: Goodbye!

[Lehrerin]: Perfect! See you tomorrow!', '[Lehrerin]: صباح الخير! اليوم نتعلم التحيات.

[Lehrerin]: كرروا: صباح الخير!

[Student]: صباح الخير!

[Lehrerin]: جيد جداً! وكيف نقول "وداعاً"؟

[Student]: إلى اللقاء!

[Lehrerin]: ممتاز! إلى الغد!', '[Lehrerin]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: ', 72, 2, 'Literatur und Interpretation');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-00006a414f0f', '🔊 Sprechen: Literarische Textanalyse', 'Presentation: Prepare a 2-minute presentation on "Literary Analysis im deutschsprachigen Raum". Use discourse markers like "zunächst", "darüber hinaus", "abschließend". Your AI partner will ask critical questions afterwards.', 'Literary Analysis', ARRAY['Use discourse markers (also, jedoch, außerdem)','React naturally: "Ach so!", "Echt?", "Das stimmt!"','Paraphrase when you don''t know a word']::text[], ARRAY['der Roman','der Dichter','das Gedicht','der Autor','die Literaturgeschichte','das Drama','die Erzählung','der Stil']::text[], 120, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-00006a414f0f', '✏️ Schreiben: Literarische Textanalyse', 'Write a discursive essay (300-350 words) analyzing "Literary Analysis in modern German society". Present both advantages and disadvantages. Use complex sentence structures (Nebensätze mit "obwohl", "trotzdem", "während") and formal register. Conclude with your own position.', ARRAY['Use paragraph breaks for structure','Connect ideas with "außerdem", "deshalb", "jedoch"','Check your verb position in Nebensätze']::text[], ARRAY['der Roman','der Dichter','das Gedicht','der Autor','die Literaturgeschichte','das Drama','die Erzählung','der Stil']::text[], ARRAY['Sentence structure','Vocabulary usage']::text[], 250, 350, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00006a414f0f', 'Literarische Textanalyse — Roleplay', 'Literary Analysis', 'Student', 'Teacher', 'Practice conversation about Literary Analysis', 'Hallo! Lass uns über dieses Thema sprechen.', 'advanced', 1, ARRAY['der Roman','der Dichter','das Gedicht','der Autor','die Literaturgeschichte','das Drama','die Erzählung','der Stil']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00006a414f0f', 'Literarische Textanalyse — Advanced Roleplay', 'Literary Analysis', 'Customer', 'Assistant', 'Extended conversation about Literary Analysis', 'Guten Tag! Wie kann ich Ihnen helfen?', 'advanced', 2, ARRAY['der Roman','der Dichter','das Gedicht','der Autor','die Literaturgeschichte','das Drama','die Erzählung','der Stil']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-00006a414f0f', 'Literarische Textanalyse — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Literarische Textanalyse".', 'Creative practice for Literary Analysis', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-00006a414f0f', '📚 Hausaufgabe: Literarische Textanalyse', 'Complete these tasks to reinforce "Literarische Textanalyse".', 'mixed', '[{"description":"Create 10 flashcards from this lesson''s vocabulary — write German on one side, Arabic on the other. Test yourself 3 times."},{"description":"Write 6 sentences about Literary Analysis: 2 statements, 2 questions, 2 negations — all using present_tense."},{"description":"Record yourself reading the dialogue aloud. Listen to the recording and note 3 things to improve."},{"description":"Find 3 real German websites, videos, or articles about Literary Analysis. Note 5 new words you discovered."}]', 50, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-00006a414f0f', '🎯 Excellent progress! This lesson covered Literary Analysis (67 vocabulary items) and present_tense. You developed reading, listening, speaking, and writing skills in the context of literature. Focus on your common mistakes area for maximum improvement.', '["67 vocabulary items about Literary Analysis","present_tense — grammar explanation and practice","Reading comprehension: text about Literary Analysis","Listening comprehension: dialogue about Literary Analysis","Speaking practice: roleplay/discussion about Literary Analysis","Writing task: text about Literary Analysis"]', '[{"title":"Literarische Textanalyse Review","summary":"present_tense — the main grammar focus. Focus on nuanced usage, exceptions, and stylistic variation."}]', ARRAY['der Roman (novel)','der Dichter (poet)','das Gedicht (poem)','der Autor (author)','die Literaturgeschichte (literary history)']::text[], ARRAY['Don''t translate from Arabic word-for-word — German has different sentence structure','Learn every noun with its article: NEVER learn "Tisch" alone, always "der Tisch"','Pay attention to Konjunktiv I/II distinction']::text[], ARRAY['Practice 15-20 minutes daily — consistency beats intensity','Speak out loud: German pronunciation needs muscle memory','Use the new vocabulary within 24 hours or you''ll forget it','Watch German YouTube videos about Literary Analysis for authentic input']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006a414f0f', 'translation', 'Translate to German: "I use the word "novel" in a sentence about Literary Analysis."', '[]', 'Der Roman ist ein Bestseller.', 'Use der  "der Roman" with the correct present_tense form.', 1, 40);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006a414f0f', 'translation', 'Translate to German: "I use the word "poet" in a sentence about Literary Analysis."', '[]', 'Goethe war ein großer Dichter.', 'Use der  "der Dichter" with the correct present_tense form.', 1, 41);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006a414f0f', 'translation', 'Translate to German: "I use the word "poem" in a sentence about Literary Analysis."', '[]', 'Das Gedicht handelt von der Liebe.', 'Use das  "das Gedicht" with the correct present_tense form.', 1, 42);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006a414f0f', 'Culture: 🇩🇪 Deutsche Kultur: Literary Analysis', 'The German approach to Literary Analysis reflects deeper cultural values: Ordnung (order), Gründlichkeit (thoroughness), and Sachlichkeit (objectivity). Debates about Literary Analysis in German media are characterised by factual argumentation. Understanding these discourse norms is essential for C1/C2 learners who want to participate in academic or professional discussions.

لدى Literary Analysis في ألمانيا فروق ثقافية دقيقة تختلف عن البلدان العربية. الألمان يفصلون بين حياتهم الخاصة والمهنية بشكل صارم.', '["Tip: Always use \"Sie\" (formal) with strangers and colleagues","Tip: Germans appreciate punctuality — arrive 5 minutes early","Tip: Direct feedback is a sign of respect, not criticism","Tip: Prepare factual arguments, not emotional appeals"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006a414f0f', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Incorrect preposition usage after verbs","correction":"Learn which preposition each verb requires (sich freuen auf, warten auf, denken an)","explanation":"Arabic and German have different sentence structures. Arabic is VSO, German is SVO with verb in position 2."},{"mistake":"Incorrect use of Konjunktiv II in polite requests","correction":"Ich hätte gern... (I would like...)","explanation":"Konjunktiv II is often replaced with würde + infinitive in speech"}]', 30);

  -- Lesson 2: Interpretation und Kritik (L-C2-02-02)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-00006a414f10', '00000000-0000-4000-a000-000039d176c0', 'Interpretation und Kritik', 'Write critical interpretations of literary works.', 'Literary Criticism', 'writing', '["Understand and apply present_tense rules correctly","Use present_tense in real conversations","Avoid common mistakes Arabic speakers make with present_tense","Read and understand present_tense in context","Listen and identify present_tense in speech","Write sentences using present_tense correctly"]', 65, 2, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, french_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-00006a414f10', 'der Roman', 'الرواية', 'novel', NULL, 'der', 'die Romane', 'noun', 'Der Roman ist ein Bestseller.', 'The novel is a bestseller.', 'B1', 1),
  ('00000000-0000-4000-a000-00006a414f10', 'der Dichter', 'الشاعر', 'poet', NULL, 'der', 'die Dichter', 'noun', 'Goethe war ein großer Dichter.', 'Goethe was a great poet.', 'B2', 2),
  ('00000000-0000-4000-a000-00006a414f10', 'das Gedicht', 'القصيدة', 'poem', NULL, 'das', 'die Gedichte', 'noun', 'Das Gedicht handelt von der Liebe.', 'The poem is about love.', 'B1', 3),
  ('00000000-0000-4000-a000-00006a414f10', 'der Autor', 'المؤلف', 'author', NULL, 'der', 'die Autoren', 'noun', 'Der Autor schreibt einen neuen Roman.', 'The author is writing a new novel.', 'B1', 4),
  ('00000000-0000-4000-a000-00006a414f10', 'die Literaturgeschichte', 'تاريخ الأدب', 'literary history', NULL, 'die', NULL, 'noun', 'Die deutsche Literaturgeschichte ist reich.', 'German literary history is rich.', 'C1', 5),
  ('00000000-0000-4000-a000-00006a414f10', 'das Drama', 'المسرحية', 'drama', NULL, 'das', 'die Dramen', 'noun', 'Das Drama wurde 1920 geschrieben.', 'The drama was written in 1920.', 'B2', 6),
  ('00000000-0000-4000-a000-00006a414f10', 'die Erzählung', 'القصة القصيرة', 'short story', NULL, 'die', 'die Erzählungen', 'noun', 'Die Erzählung ist bewegend.', 'The short story is moving.', 'B2', 7),
  ('00000000-0000-4000-a000-00006a414f10', 'der Stil', 'الأسلوب', 'style', NULL, 'der', 'die Stile', 'noun', 'Der Stil des Textes ist formell.', 'The style of the text is formal.', 'B2', 8),
  ('00000000-0000-4000-a000-00006a414f10', 'das Register', 'المستوى اللغوي', 'register', NULL, 'das', 'die Register', 'noun', 'Das Register passt zur Situation.', 'The register fits the situation.', 'C1', 9),
  ('00000000-0000-4000-a000-00006a414f10', 'das Stilmittel', 'الأداة الأسلوبية', 'stylistic device', NULL, 'das', 'die Stilmittel', 'noun', 'Das Stilmittel unterstreicht die Aussage.', 'The stylistic device emphasizes the statement.', 'C1', 10),
  ('00000000-0000-4000-a000-00006a414f10', 'die Alliteration', 'الجناس', 'alliteration', NULL, 'die', 'die Alliterationen', 'noun', 'Die Alliteration wiederholt den Anlaut.', 'Alliteration repeats the initial sound.', 'C2', 11),
  ('00000000-0000-4000-a000-00006a414f10', 'die Ellipse', 'الحذف', 'ellipsis', NULL, 'die', 'die Ellipsen', 'noun', 'Die Ellipse spart Wörter aus.', 'The ellipsis omits words.', 'C2', 12),
  ('00000000-0000-4000-a000-00006a414f10', 'die Hyperbel', 'المبالغة', 'hyperbole', NULL, 'die', 'die Hyperbeln', 'noun', 'Die Hyperbel übertreibt stark.', 'Hyperbole exaggerates strongly.', 'C2', 13),
  ('00000000-0000-4000-a000-00006a414f10', 'die Poetik', 'الشعرية', 'poetics', NULL, 'die', NULL, 'noun', 'Poetik ist die Theorie der Dichtkunst.', 'Poetics is the theory of poetry.', 'C2', 14),
  ('00000000-0000-4000-a000-00006a414f10', 'der Vers', 'البيت الشعري', 'verse', NULL, 'der', 'die Verse', 'noun', 'Der Vers hat fünf Hebungen.', 'The verse has five stresses.', 'C1', 15),
  ('00000000-0000-4000-a000-00006a414f10', 'der Reim', 'القافية', 'rhyme', NULL, 'der', 'die Reime', 'noun', 'Der Reim verbindet die Zeilen.', 'Rhyme connects the lines.', 'C1', 16),
  ('00000000-0000-4000-a000-00006a414f10', 'das Metrum', 'الوزن', 'meter', NULL, 'das', 'die Metren', 'noun', 'Das Metrum bestimmt den Rhythmus.', 'The meter determines the rhythm.', 'C2', 17),
  ('00000000-0000-4000-a000-00006a414f10', 'die Gattung', 'النوع الأدبي', 'genre', NULL, 'die', 'die Gattungen', 'noun', 'Lyrik ist eine literarische Gattung.', 'Lyric poetry is a literary genre.', 'C1', 18),
  ('00000000-0000-4000-a000-00006a414f10', 'die Pragmatik', 'البراغماتية', 'pragmatics', NULL, 'die', NULL, 'noun', 'Pragmatik untersucht Sprache im Kontext.', 'Pragmatics studies language in context.', 'C2', 19),
  ('00000000-0000-4000-a000-00006a414f10', 'der Sprechakt', 'فعل الكلام', 'speech act', NULL, 'der', 'die Sprechakte', 'noun', 'Der Sprechakt ändert die Wirklichkeit.', 'The speech act changes reality.', 'C2', 20),
  ('00000000-0000-4000-a000-00006a414f10', 'die Implikatur', 'الاستلزام التخاطبي', 'implicature', NULL, 'die', 'die Implikaturen', 'noun', 'Die Implikatur ist die indirekte Bedeutung.', 'Implicature is the indirect meaning.', 'C2', 21),
  ('00000000-0000-4000-a000-00006a414f10', 'der Kontext', 'السياق', 'context', NULL, 'der', 'die Kontexte', 'noun', 'Der Kontext bestimmt die Bedeutung.', 'Context determines meaning.', 'B2', 22),
  ('00000000-0000-4000-a000-00006a414f10', 'die Höflichkeit', 'الأدب / اللباقة', 'politeness', NULL, 'die', NULL, 'noun', 'Höflichkeit ist in Japan sehr wichtig.', 'Politeness is very important in Japan.', 'B2', 23),
  ('00000000-0000-4000-a000-00006a414f10', 'die Konversationsanalyse', 'تحليل المحادثة', 'conversation analysis', NULL, 'die', NULL, 'noun', 'Die Konversationsanalyse untersucht Gespräche.', 'Conversation analysis examines conversations.', 'C2', 24),
  ('00000000-0000-4000-a000-00006a414f10', 'die Bedeutung', 'المعنى', 'meaning', NULL, 'die', 'die Bedeutungen', 'noun', 'Die Bedeutung des Wortes ist klar.', 'The meaning of the word is clear.', 'B2', 25),
  ('00000000-0000-4000-a000-00006a414f10', 'die Synonymie', 'الترادف', 'synonymy', NULL, 'die', NULL, 'noun', 'Synonymie bedeutet Bedeutungsgleichheit.', 'Synonymy means sameness of meaning.', 'C2', 26),
  ('00000000-0000-4000-a000-00006a414f10', 'die Antonymie', 'التضاد', 'antonymy', NULL, 'die', NULL, 'noun', 'Antonymie bezeichnet Gegensätze.', 'Antonymy denotes opposites.', 'C2', 27),
  ('00000000-0000-4000-a000-00006a414f10', 'die Polysemie', 'تعدد المعاني', 'polysemy', NULL, 'die', NULL, 'noun', 'Polysemie hat mehrere Bedeutungen.', 'Polysemy has multiple meanings.', 'C2', 28),
  ('00000000-0000-4000-a000-00006a414f10', 'die Kompositionalität', 'التركيبية', 'compositionality', NULL, 'die', NULL, 'noun', 'Kompositionalität besagt, dass Bedeutung aus Teilen besteht.', 'Compositionality holds that meaning consists of parts.', 'C2', 29),
  ('00000000-0000-4000-a000-00006a414f10', 'die Übersetzung', 'الترجمة', 'translation', NULL, 'die', 'die Übersetzungen', 'noun', 'Die Übersetzung ist gelungen.', 'The translation is successful.', 'B2', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006a414f10', 'Erweiterte Partizipialattribute (Extended Participle Attributes) / الصفات المشتقة الموسعة', 'Extended participle attributes are a hallmark of sophisticated German. Instead of a relative clause, German can place a long phrase between the article and the noun: "der von der Regierung vorgeschlagene Plan" (the plan proposed by the government). These structures condense information and are very common in academic and legal German.', '[{"rule":"Article + (expanded phrase) + noun","note":"der [von der Regierung vorgeschlagene] Plan"},{"rule":"Participle can be Partizip I (aktiv, gleichzeitig) or Partizip II (passiv, vorzeitig)","note":"der lesende Student (the reading student — Partizip I), das gelesene Buch (the read book — Partizip II)"}]', '[{"german":"Der von der Bundesregierung vorgeschlagene Gesetzesentwurf wurde diskutiert.","arabic":"تمت مناقشة مشروع القانون الذي اقترحته الحكومة الاتحادية.","english":"The bill proposed by the federal government was discussed."},{"german":"Die in den letzten Jahren stark gestiegenen Mieten belasten viele Familien.","arabic":"الإيجارات التي ارتفعت بشدة في السنوات الأخيرة تثقل كاهل العائلات.","english":"The rents that have risen sharply in recent years burden many families."}]', '[{"mistake":"Der Plan, der von der Regierung vorgeschlagen wurde (relative clause instead of extended attribute)","correction":"Der von der Regierung vorgeschlagene Plan","explanation":"At C2, extended attributes are preferred over relative clauses for conciseness."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006a414f10', 'multiple_choice', 'Welches deutsche Wort bedeutet "novel"?', '["die Literaturgeschichte","der Autor","der Roman","der Dichter"]', 'der Roman', '"novel" = "der Roman" in German. Article: der Plural: die Romane', 1, 1),
  ('00000000-0000-4000-a000-00006a414f10', 'multiple_choice', 'Welches deutsche Wort bedeutet "poet"?', '["der Roman","die Literaturgeschichte","der Dichter","das Gedicht"]', 'der Dichter', '"poet" = "der Dichter" in German. Article: der Plural: die Dichter', 1, 2),
  ('00000000-0000-4000-a000-00006a414f10', 'multiple_choice', 'Welches deutsche Wort bedeutet "poem"?', '["das Gedicht","der Roman","der Dichter","der Autor"]', 'das Gedicht', '"poem" = "das Gedicht" in German. Article: das Plural: die Gedichte', 1, 3),
  ('00000000-0000-4000-a000-00006a414f10', 'multiple_choice', 'Welches deutsche Wort bedeutet "author"?', '["der Autor","der Roman","die Literaturgeschichte","das Gedicht"]', 'der Autor', '"author" = "der Autor" in German. Article: der Plural: die Autoren', 1, 4),
  ('00000000-0000-4000-a000-00006a414f10', 'multiple_choice', 'Welches deutsche Wort bedeutet "literary history"?', '["der Autor","das Gedicht","der Dichter","der Roman"]', 'die Literaturgeschichte', '"literary history" = "die Literaturgeschichte" in German. Article: die ', 1, 5),
  ('00000000-0000-4000-a000-00006a414f10', 'fill_gap', 'Ergänzen Sie den Satz: Ich ___ gern über Literary Criticism. (sprechen)', '["spreche","sprichst","spricht","sprechen"]', 'spreche', 'ich spreche gern = I like to speak. Stem: sprech- + e.', 2, 6),
  ('00000000-0000-4000-a000-00006a414f10', 'translation', 'Übersetzen Sie ins Deutsche: "I am learning about Literary Criticism."', '["Ich lerne über Literary Criticism.","Ich lerne Literary Criticism.","Lerne ich Literary Criticism."]', 'Ich lerne über Literary Criticism.', '"Ich lerne über..." = "I am learning about..."', 2, 7),
  ('00000000-0000-4000-a000-00006a414f10', 'matching', 'Match: Which word pairs are correct?', '["der Roman - novel, der Dichter - poet"]', 'Matched correctly', 'Each German word has a unique English equivalent.', 2, 8);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-00006a414f10', 'multiple_choice', 'Was bedeutet "der Roman" auf Deutsch?', '["novel","to run","beautiful","yesterday"]', 'novel', 1, 1),
  ('00000000-0000-4000-a000-00006a414f10', 'multiple_choice', 'Welcher Artikel gehört zu "der Dichter"?', '["der","die","das","den"]', 'der', 1, 2),
  ('00000000-0000-4000-a000-00006a414f10', 'true_false', 'Das Wort "das Gedicht" gehört zum Thema Literary Criticism.', '["True","False"]', 'True', 1, 3),
  ('00000000-0000-4000-a000-00006a414f10', 'multiple_choice', 'Welcher Satz verwendet present_tense?', '["Der von der Bundesregierung vorgeschlagene Gesetzesentwurf wurde diskutiert.","Die in den letzten Jahren stark gestiegenen Mieten belasten viele Familien."]', 'Der von der Bundesregierung vorgeschlagene Gesetzesentwurf wurde diskutiert.', 2, 4),
  ('00000000-0000-4000-a000-00006a414f10', 'true_false', ''Im Deutschen steht das Verb an zweiter Position im Hauptsatz.', '["True","False"]', 'True', 1, 5),
  ('00000000-0000-4000-a000-00006a414f10', 'fill_blank', 'Complete: Ich ___ (author) Deutsch.', '["der Autor","lernt","lernst","lernen"]', 'lerne', 2, 6),
  ('00000000-0000-4000-a000-00006a414f10', 'multiple_choice', 'Wie lautet das deutsche Wort für "literary history"?', '["die Literaturgeschichte","das Drama","die Erzählung","der Stil"]', 'die Literaturgeschichte', 1, 7),
  ('00000000-0000-4000-a000-00006a414f10', 'true_false', 'Im Deutschen werden alle Nomen großgeschrieben.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-00006a414f10', 'multiple_choice', 'How do you say "please" in a restaurant in Germany?', '["Bitte","Danke","Tschüss","Hallo"]', 'Bitte', 1, 9),
  ('00000000-0000-4000-a000-00006a414f10', 'fill_blank', 'Wo ___ (to live) du?', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 2, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, french_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-00006a414f10', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', NULL, 'Used in Literatur und Interpretation', 'formal', false, 1),
  ('00000000-0000-4000-a000-00006a414f10', 'Guten Tag!', 'Good day!', 'نهارك سعيد!', NULL, 'Used in Literatur und Interpretation', 'formal', false, 2),
  ('00000000-0000-4000-a000-00006a414f10', 'Hallo, wie geht es Ihnen?', 'Hello, how are you?', 'مرحباً، كيف حالكم؟', NULL, 'Used in Literatur und Interpretation', 'formal', false, 3),
  ('00000000-0000-4000-a000-00006a414f10', 'Schön, Sie kennenzulernen!', 'Nice to meet you!', 'سعيد بلقائكم!', NULL, 'Used in Literatur und Interpretation', 'formal', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-00006a414f10', 'der der Roman (die Romane)', 'novel — الرواية', 'noun', 'vocabulary', 1),
  ('00000000-0000-4000-a000-00006a414f10', 'der der Dichter (die Dichter)', 'poet — الشاعر', 'noun', 'vocabulary', 2),
  ('00000000-0000-4000-a000-00006a414f10', 'das das Gedicht (die Gedichte)', 'poem — القصيدة', 'noun', 'vocabulary', 3),
  ('00000000-0000-4000-a000-00006a414f10', 'der der Autor (die Autoren)', 'author — المؤلف', 'noun', 'vocabulary', 4),
  ('00000000-0000-4000-a000-00006a414f10', 'die die Literaturgeschichte', 'literary history — تاريخ الأدب', 'noun', 'vocabulary', 5),
  ('00000000-0000-4000-a000-00006a414f10', 'das das Drama (die Dramen)', 'drama — المسرحية', 'noun', 'vocabulary', 6),
  ('00000000-0000-4000-a000-00006a414f10', 'die die Erzählung (die Erzählungen)', 'short story — القصة القصيرة', 'noun', 'vocabulary', 7),
  ('00000000-0000-4000-a000-00006a414f10', 'der der Stil (die Stile)', 'style — الأسلوب', 'noun', 'vocabulary', 8),
  ('00000000-0000-4000-a000-00006a414f10', 'das das Register (die Register)', 'register — المستوى اللغوي', 'noun', 'vocabulary', 9),
  ('00000000-0000-4000-a000-00006a414f10', 'das das Stilmittel (die Stilmittel)', 'stylistic device — الأداة الأسلوبية', 'noun', 'vocabulary', 10),
  ('00000000-0000-4000-a000-00006a414f10', 'die die Alliteration (die Alliterationen)', 'alliteration — الجناس', 'noun', 'vocabulary', 11),
  ('00000000-0000-4000-a000-00006a414f10', 'die die Ellipse (die Ellipsen)', 'ellipsis — الحذف', 'noun', 'vocabulary', 12),
  ('00000000-0000-4000-a000-00006a414f10', 'die die Hyperbel (die Hyperbeln)', 'hyperbole — المبالغة', 'noun', 'vocabulary', 13),
  ('00000000-0000-4000-a000-00006a414f10', 'die die Poetik', 'poetics — الشعرية', 'noun', 'vocabulary', 14),
  ('00000000-0000-4000-a000-00006a414f10', 'der der Vers (die Verse)', 'verse — البيت الشعري', 'noun', 'vocabulary', 15),
  ('00000000-0000-4000-a000-00006a414f10', 'Der von der Bundesregierung vorgeschlagene Gesetzesentwurf wurde diskutiert.', 'The bill proposed by the federal government was discussed.', 'Erweiterte Partizipialattribute (Extended Participle Attributes)', 'grammar', 16),
  ('00000000-0000-4000-a000-00006a414f10', 'Die in den letzten Jahren stark gestiegenen Mieten belasten viele Familien.', 'The rents that have risen sharply in recent years burden many families.', 'Erweiterte Partizipialattribute (Extended Participle Attributes)', 'grammar', 17);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, french_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-00006a414f10', 'Interpretation und Kritik — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', NULL, 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, french_translation, duration_seconds, speaker_count, scenario) values
  ('00000000-0000-4000-a000-00006a414f10', 'Interpretation und Kritik — Hörverständnis', '[Lehrerin]: Guten Morgen! Heute lernen wir Begrüßungen.

[Lehrerin]: Wiederholen Sie: Guten Morgen!

[Student]: Guten Morgen!

[Lehrerin]: Sehr gut! Und wie sagt man "Goodbye"?

[Student]: Auf Wiedersehen!

[Lehrerin]: Perfekt! Bis morgen!', '[Lehrerin]: Good morning! Today we learn greetings.

[Lehrerin]: Repeat: Good morning!

[Student]: Good morning!

[Lehrerin]: Very good! And how do you say goodbye?

[Student]: Goodbye!

[Lehrerin]: Perfect! See you tomorrow!', '[Lehrerin]: صباح الخير! اليوم نتعلم التحيات.

[Lehrerin]: كرروا: صباح الخير!

[Student]: صباح الخير!

[Lehrerin]: جيد جداً! وكيف نقول "وداعاً"؟

[Student]: إلى اللقاء!

[Lehrerin]: ممتاز! إلى الغد!', '[Lehrerin]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: ', 72, 2, 'Literatur und Interpretation');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-00006a414f10', '🔊 Sprechen: Interpretation und Kritik', 'Presentation: Prepare a 2-minute presentation on "Literary Criticism im deutschsprachigen Raum". Use discourse markers like "zunächst", "darüber hinaus", "abschließend". Your AI partner will ask critical questions afterwards.', 'Literary Criticism', ARRAY['Use discourse markers (also, jedoch, außerdem)','React naturally: "Ach so!", "Echt?", "Das stimmt!"','Paraphrase when you don''t know a word']::text[], ARRAY['der Roman','der Dichter','das Gedicht','der Autor','die Literaturgeschichte','das Drama','die Erzählung','der Stil']::text[], 120, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-00006a414f10', '✏️ Schreiben: Interpretation und Kritik', 'Write a discursive essay (300-350 words) analyzing "Literary Criticism in modern German society". Present both advantages and disadvantages. Use complex sentence structures (Nebensätze mit "obwohl", "trotzdem", "während") and formal register. Conclude with your own position.', ARRAY['Use paragraph breaks for structure','Connect ideas with "außerdem", "deshalb", "jedoch"','Check your verb position in Nebensätze']::text[], ARRAY['der Roman','der Dichter','das Gedicht','der Autor','die Literaturgeschichte','das Drama','die Erzählung','der Stil']::text[], ARRAY['Sentence structure','Vocabulary usage']::text[], 250, 350, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00006a414f10', 'Interpretation und Kritik — Roleplay', 'Literary Criticism', 'Student', 'Teacher', 'Practice conversation about Literary Criticism', 'Hallo! Lass uns über dieses Thema sprechen.', 'advanced', 1, ARRAY['der Roman','der Dichter','das Gedicht','der Autor','die Literaturgeschichte','das Drama','die Erzählung','der Stil']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00006a414f10', 'Interpretation und Kritik — Advanced Roleplay', 'Literary Criticism', 'Customer', 'Assistant', 'Extended conversation about Literary Criticism', 'Guten Tag! Wie kann ich Ihnen helfen?', 'advanced', 2, ARRAY['der Roman','der Dichter','das Gedicht','der Autor','die Literaturgeschichte','das Drama','die Erzählung','der Stil']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-00006a414f10', 'Interpretation und Kritik — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Interpretation und Kritik".', 'Creative practice for Literary Criticism', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-00006a414f10', '📚 Hausaufgabe: Interpretation und Kritik', 'Complete these tasks to reinforce "Interpretation und Kritik".', 'mixed', '[{"description":"Create 10 flashcards from this lesson''s vocabulary — write German on one side, Arabic on the other. Test yourself 3 times."},{"description":"Write 6 sentences about Literary Criticism: 2 statements, 2 questions, 2 negations — all using present_tense."},{"description":"Record yourself reading the dialogue aloud. Listen to the recording and note 3 things to improve."},{"description":"Find 3 real German websites, videos, or articles about Literary Criticism. Note 5 new words you discovered."}]', 50, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-00006a414f10', '🎯 Excellent progress! This lesson covered Literary Criticism (67 vocabulary items) and present_tense. You developed reading, listening, speaking, and writing skills in the context of literature. Focus on your common mistakes area for maximum improvement.', '["67 vocabulary items about Literary Criticism","present_tense — grammar explanation and practice","Reading comprehension: text about Literary Criticism","Listening comprehension: dialogue about Literary Criticism","Speaking practice: roleplay/discussion about Literary Criticism","Writing task: text about Literary Criticism"]', '[{"title":"Interpretation und Kritik Review","summary":"present_tense — the main grammar focus. Focus on nuanced usage, exceptions, and stylistic variation."}]', ARRAY['der Roman (novel)','der Dichter (poet)','das Gedicht (poem)','der Autor (author)','die Literaturgeschichte (literary history)']::text[], ARRAY['Don''t translate from Arabic word-for-word — German has different sentence structure','Learn every noun with its article: NEVER learn "Tisch" alone, always "der Tisch"','Pay attention to Konjunktiv I/II distinction']::text[], ARRAY['Practice 15-20 minutes daily — consistency beats intensity','Speak out loud: German pronunciation needs muscle memory','Use the new vocabulary within 24 hours or you''ll forget it','Watch German YouTube videos about Literary Criticism for authentic input']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006a414f10', 'translation', 'Translate to German: "I use the word "novel" in a sentence about Literary Criticism."', '[]', 'Der Roman ist ein Bestseller.', 'Use der  "der Roman" with the correct present_tense form.', 1, 40);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006a414f10', 'translation', 'Translate to German: "I use the word "poet" in a sentence about Literary Criticism."', '[]', 'Goethe war ein großer Dichter.', 'Use der  "der Dichter" with the correct present_tense form.', 1, 41);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006a414f10', 'translation', 'Translate to German: "I use the word "poem" in a sentence about Literary Criticism."', '[]', 'Das Gedicht handelt von der Liebe.', 'Use das  "das Gedicht" with the correct present_tense form.', 1, 42);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006a414f10', 'Culture: 🇩🇪 Deutsche Kultur: Literary Criticism', 'The German approach to Literary Criticism reflects deeper cultural values: Ordnung (order), Gründlichkeit (thoroughness), and Sachlichkeit (objectivity). Debates about Literary Criticism in German media are characterised by factual argumentation. Understanding these discourse norms is essential for C1/C2 learners who want to participate in academic or professional discussions.

لدى Literary Criticism في ألمانيا فروق ثقافية دقيقة تختلف عن البلدان العربية. الألمان يفصلون بين حياتهم الخاصة والمهنية بشكل صارم.', '["Tip: Always use \"Sie\" (formal) with strangers and colleagues","Tip: Germans appreciate punctuality — arrive 5 minutes early","Tip: Direct feedback is a sign of respect, not criticism","Tip: Prepare factual arguments, not emotional appeals"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006a414f10', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Incorrect preposition usage after verbs","correction":"Learn which preposition each verb requires (sich freuen auf, warten auf, denken an)","explanation":"Arabic and German have different sentence structures. Arabic is VSO, German is SVO with verb in position 2."},{"mistake":"Incorrect use of Konjunktiv II in polite requests","correction":"Ich hätte gern... (I would like...)","explanation":"Konjunktiv II is often replaced with würde + infinitive in speech"}]', 30);

  -- Lesson 3: Test: Literatur und Analyse (L-C2-02-03)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-00006a414f11', '00000000-0000-4000-a000-000039d176c0', 'Test: Literatur und Analyse', 'Module test on literature and analysis.', 'Module Test', 'test', '["Understand and apply present_tense rules correctly","Use present_tense in real conversations","Avoid common mistakes Arabic speakers make with present_tense","Read and understand present_tense in context","Listen and identify present_tense in speech","Write sentences using present_tense correctly"]', 50, 3, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, french_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-00006a414f11', 'der Roman', 'الرواية', 'novel', NULL, 'der', 'die Romane', 'noun', 'Der Roman ist ein Bestseller.', 'The novel is a bestseller.', 'B1', 1),
  ('00000000-0000-4000-a000-00006a414f11', 'der Dichter', 'الشاعر', 'poet', NULL, 'der', 'die Dichter', 'noun', 'Goethe war ein großer Dichter.', 'Goethe was a great poet.', 'B2', 2),
  ('00000000-0000-4000-a000-00006a414f11', 'das Gedicht', 'القصيدة', 'poem', NULL, 'das', 'die Gedichte', 'noun', 'Das Gedicht handelt von der Liebe.', 'The poem is about love.', 'B1', 3),
  ('00000000-0000-4000-a000-00006a414f11', 'der Autor', 'المؤلف', 'author', NULL, 'der', 'die Autoren', 'noun', 'Der Autor schreibt einen neuen Roman.', 'The author is writing a new novel.', 'B1', 4),
  ('00000000-0000-4000-a000-00006a414f11', 'die Literaturgeschichte', 'تاريخ الأدب', 'literary history', NULL, 'die', NULL, 'noun', 'Die deutsche Literaturgeschichte ist reich.', 'German literary history is rich.', 'C1', 5),
  ('00000000-0000-4000-a000-00006a414f11', 'das Drama', 'المسرحية', 'drama', NULL, 'das', 'die Dramen', 'noun', 'Das Drama wurde 1920 geschrieben.', 'The drama was written in 1920.', 'B2', 6),
  ('00000000-0000-4000-a000-00006a414f11', 'die Erzählung', 'القصة القصيرة', 'short story', NULL, 'die', 'die Erzählungen', 'noun', 'Die Erzählung ist bewegend.', 'The short story is moving.', 'B2', 7),
  ('00000000-0000-4000-a000-00006a414f11', 'der Stil', 'الأسلوب', 'style', NULL, 'der', 'die Stile', 'noun', 'Der Stil des Textes ist formell.', 'The style of the text is formal.', 'B2', 8),
  ('00000000-0000-4000-a000-00006a414f11', 'das Register', 'المستوى اللغوي', 'register', NULL, 'das', 'die Register', 'noun', 'Das Register passt zur Situation.', 'The register fits the situation.', 'C1', 9),
  ('00000000-0000-4000-a000-00006a414f11', 'das Stilmittel', 'الأداة الأسلوبية', 'stylistic device', NULL, 'das', 'die Stilmittel', 'noun', 'Das Stilmittel unterstreicht die Aussage.', 'The stylistic device emphasizes the statement.', 'C1', 10),
  ('00000000-0000-4000-a000-00006a414f11', 'die Alliteration', 'الجناس', 'alliteration', NULL, 'die', 'die Alliterationen', 'noun', 'Die Alliteration wiederholt den Anlaut.', 'Alliteration repeats the initial sound.', 'C2', 11),
  ('00000000-0000-4000-a000-00006a414f11', 'die Ellipse', 'الحذف', 'ellipsis', NULL, 'die', 'die Ellipsen', 'noun', 'Die Ellipse spart Wörter aus.', 'The ellipsis omits words.', 'C2', 12),
  ('00000000-0000-4000-a000-00006a414f11', 'die Hyperbel', 'المبالغة', 'hyperbole', NULL, 'die', 'die Hyperbeln', 'noun', 'Die Hyperbel übertreibt stark.', 'Hyperbole exaggerates strongly.', 'C2', 13),
  ('00000000-0000-4000-a000-00006a414f11', 'die Poetik', 'الشعرية', 'poetics', NULL, 'die', NULL, 'noun', 'Poetik ist die Theorie der Dichtkunst.', 'Poetics is the theory of poetry.', 'C2', 14),
  ('00000000-0000-4000-a000-00006a414f11', 'der Vers', 'البيت الشعري', 'verse', NULL, 'der', 'die Verse', 'noun', 'Der Vers hat fünf Hebungen.', 'The verse has five stresses.', 'C1', 15),
  ('00000000-0000-4000-a000-00006a414f11', 'der Reim', 'القافية', 'rhyme', NULL, 'der', 'die Reime', 'noun', 'Der Reim verbindet die Zeilen.', 'Rhyme connects the lines.', 'C1', 16),
  ('00000000-0000-4000-a000-00006a414f11', 'das Metrum', 'الوزن', 'meter', NULL, 'das', 'die Metren', 'noun', 'Das Metrum bestimmt den Rhythmus.', 'The meter determines the rhythm.', 'C2', 17),
  ('00000000-0000-4000-a000-00006a414f11', 'die Gattung', 'النوع الأدبي', 'genre', NULL, 'die', 'die Gattungen', 'noun', 'Lyrik ist eine literarische Gattung.', 'Lyric poetry is a literary genre.', 'C1', 18),
  ('00000000-0000-4000-a000-00006a414f11', 'die Pragmatik', 'البراغماتية', 'pragmatics', NULL, 'die', NULL, 'noun', 'Pragmatik untersucht Sprache im Kontext.', 'Pragmatics studies language in context.', 'C2', 19),
  ('00000000-0000-4000-a000-00006a414f11', 'der Sprechakt', 'فعل الكلام', 'speech act', NULL, 'der', 'die Sprechakte', 'noun', 'Der Sprechakt ändert die Wirklichkeit.', 'The speech act changes reality.', 'C2', 20),
  ('00000000-0000-4000-a000-00006a414f11', 'die Implikatur', 'الاستلزام التخاطبي', 'implicature', NULL, 'die', 'die Implikaturen', 'noun', 'Die Implikatur ist die indirekte Bedeutung.', 'Implicature is the indirect meaning.', 'C2', 21),
  ('00000000-0000-4000-a000-00006a414f11', 'der Kontext', 'السياق', 'context', NULL, 'der', 'die Kontexte', 'noun', 'Der Kontext bestimmt die Bedeutung.', 'Context determines meaning.', 'B2', 22),
  ('00000000-0000-4000-a000-00006a414f11', 'die Höflichkeit', 'الأدب / اللباقة', 'politeness', NULL, 'die', NULL, 'noun', 'Höflichkeit ist in Japan sehr wichtig.', 'Politeness is very important in Japan.', 'B2', 23),
  ('00000000-0000-4000-a000-00006a414f11', 'die Konversationsanalyse', 'تحليل المحادثة', 'conversation analysis', NULL, 'die', NULL, 'noun', 'Die Konversationsanalyse untersucht Gespräche.', 'Conversation analysis examines conversations.', 'C2', 24),
  ('00000000-0000-4000-a000-00006a414f11', 'die Bedeutung', 'المعنى', 'meaning', NULL, 'die', 'die Bedeutungen', 'noun', 'Die Bedeutung des Wortes ist klar.', 'The meaning of the word is clear.', 'B2', 25),
  ('00000000-0000-4000-a000-00006a414f11', 'die Synonymie', 'الترادف', 'synonymy', NULL, 'die', NULL, 'noun', 'Synonymie bedeutet Bedeutungsgleichheit.', 'Synonymy means sameness of meaning.', 'C2', 26),
  ('00000000-0000-4000-a000-00006a414f11', 'die Antonymie', 'التضاد', 'antonymy', NULL, 'die', NULL, 'noun', 'Antonymie bezeichnet Gegensätze.', 'Antonymy denotes opposites.', 'C2', 27),
  ('00000000-0000-4000-a000-00006a414f11', 'die Polysemie', 'تعدد المعاني', 'polysemy', NULL, 'die', NULL, 'noun', 'Polysemie hat mehrere Bedeutungen.', 'Polysemy has multiple meanings.', 'C2', 28),
  ('00000000-0000-4000-a000-00006a414f11', 'die Kompositionalität', 'التركيبية', 'compositionality', NULL, 'die', NULL, 'noun', 'Kompositionalität besagt, dass Bedeutung aus Teilen besteht.', 'Compositionality holds that meaning consists of parts.', 'C2', 29),
  ('00000000-0000-4000-a000-00006a414f11', 'die Übersetzung', 'الترجمة', 'translation', NULL, 'die', 'die Übersetzungen', 'noun', 'Die Übersetzung ist gelungen.', 'The translation is successful.', 'B2', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006a414f11', 'Module Partikeln und Satzgliedstellung (Modal Particles and Word Order Nuances) / الجزيئات النمطية وترتيب الكلمات الدقيق', 'Modal particles (doch, ja, eben, halt, wohl, eigentlich, denn, mal) add nuance and emotion to statements. They are almost impossible to translate directly but are essential for natural German. At C2, their correct placement and usage distinguishes near-native from advanced learners.', '[{"rule":"doch: contradiction or emphasis","note":"Das ist doch nicht wahr! (That''s just not true!)"},{"rule":"ja: shared knowledge reminder","note":"Das ist ja interessant! (That IS interesting! — as we both know)"},{"rule":"denn: in W-questions (casual)","note":"Was machst du denn da? (What are you doing there? — curious, not accusatory)"}]', '[{"german":"Das ist doch eine gute Idee, oder?","arabic":"هذه فكرة جيدة، أليس كذلك؟ (تأكيد)","english":"That IS a good idea, isn''t it?"},{"german":"Komm mal her, bitte.","arabic":"تعال إلى هنا من فضلك. (طلاقة)","english":"Come here, please. (softening)"},{"german":"Was hast du eigentlich studiert?","arabic":"ماذا درست بالمناسبة؟","english":"What did you study, by the way?"}]', '[{"mistake":"Speaking without modal particles (too textbook-like)","correction":"Das ist doch klar! (not just \"Das ist klar\")","explanation":"Without modal particles, German sounds robotic. At C2, particles show naturalness."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006a414f11', 'multiple_choice', 'Welches deutsche Wort bedeutet "novel"?', '["der Autor","die Literaturgeschichte","das Gedicht","der Dichter"]', 'der Roman', '"novel" = "der Roman" in German. Article: der Plural: die Romane', 1, 1),
  ('00000000-0000-4000-a000-00006a414f11', 'multiple_choice', 'Welches deutsche Wort bedeutet "poet"?', '["das Gedicht","der Roman","der Autor","der Dichter"]', 'der Dichter', '"poet" = "der Dichter" in German. Article: der Plural: die Dichter', 1, 2),
  ('00000000-0000-4000-a000-00006a414f11', 'multiple_choice', 'Welches deutsche Wort bedeutet "poem"?', '["das Gedicht","der Roman","der Dichter","der Autor"]', 'das Gedicht', '"poem" = "das Gedicht" in German. Article: das Plural: die Gedichte', 1, 3),
  ('00000000-0000-4000-a000-00006a414f11', 'multiple_choice', 'Welches deutsche Wort bedeutet "author"?', '["der Autor","das Gedicht","der Roman","die Literaturgeschichte"]', 'der Autor', '"author" = "der Autor" in German. Article: der Plural: die Autoren', 1, 4),
  ('00000000-0000-4000-a000-00006a414f11', 'multiple_choice', 'Welches deutsche Wort bedeutet "literary history"?', '["die Literaturgeschichte","der Autor","der Roman","der Dichter"]', 'die Literaturgeschichte', '"literary history" = "die Literaturgeschichte" in German. Article: die ', 1, 5),
  ('00000000-0000-4000-a000-00006a414f11', 'fill_gap', 'Ergänzen Sie den Satz: Ich ___ gern über Module Test. (sprechen)', '["spreche","sprichst","spricht","sprechen"]', 'spreche', 'ich spreche gern = I like to speak. Stem: sprech- + e.', 2, 6),
  ('00000000-0000-4000-a000-00006a414f11', 'translation', 'Übersetzen Sie ins Deutsche: "I am learning about Module Test."', '["Ich lerne über Module Test.","Ich lerne Module Test.","Lerne ich Module Test."]', 'Ich lerne über Module Test.', '"Ich lerne über..." = "I am learning about..."', 2, 7),
  ('00000000-0000-4000-a000-00006a414f11', 'matching', 'Match: Which word pairs are correct?', '["der Roman - novel, der Dichter - poet"]', 'Matched correctly', 'Each German word has a unique English equivalent.', 2, 8);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-00006a414f11', 'multiple_choice', 'Was bedeutet "der Roman" auf Deutsch?', '["novel","to run","beautiful","yesterday"]', 'novel', 1, 1),
  ('00000000-0000-4000-a000-00006a414f11', 'multiple_choice', 'Welcher Artikel gehört zu "der Dichter"?', '["der","die","das","den"]', 'der', 1, 2),
  ('00000000-0000-4000-a000-00006a414f11', 'true_false', 'Das Wort "das Gedicht" gehört zum Thema Module Test.', '["True","False"]', 'True', 1, 3),
  ('00000000-0000-4000-a000-00006a414f11', 'multiple_choice', 'Welcher Satz verwendet present_tense?', '["Das ist doch eine gute Idee, oder?","Komm mal her, bitte.","Was hast du eigentlich studiert?"]', 'Das ist doch eine gute Idee, oder?', 2, 4),
  ('00000000-0000-4000-a000-00006a414f11', 'true_false', ''Im Deutschen steht das Verb an zweiter Position im Hauptsatz.', '["True","False"]', 'True', 1, 5),
  ('00000000-0000-4000-a000-00006a414f11', 'fill_blank', 'Complete: Ich ___ (author) Deutsch.', '["der Autor","lernt","lernst","lernen"]', 'lerne', 2, 6),
  ('00000000-0000-4000-a000-00006a414f11', 'multiple_choice', 'Wie lautet das deutsche Wort für "literary history"?', '["die Literaturgeschichte","das Drama","die Erzählung","der Stil"]', 'die Literaturgeschichte', 1, 7),
  ('00000000-0000-4000-a000-00006a414f11', 'true_false', 'Im Deutschen werden alle Nomen großgeschrieben.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-00006a414f11', 'multiple_choice', 'How do you say "please" in a restaurant in Germany?', '["Bitte","Danke","Tschüss","Hallo"]', 'Bitte', 1, 9),
  ('00000000-0000-4000-a000-00006a414f11', 'fill_blank', 'Wo ___ (to live) du?', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 2, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, french_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-00006a414f11', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', NULL, 'Used in Literatur und Interpretation', 'formal', false, 1),
  ('00000000-0000-4000-a000-00006a414f11', 'Guten Tag!', 'Good day!', 'نهارك سعيد!', NULL, 'Used in Literatur und Interpretation', 'formal', false, 2),
  ('00000000-0000-4000-a000-00006a414f11', 'Hallo, wie geht es Ihnen?', 'Hello, how are you?', 'مرحباً، كيف حالكم؟', NULL, 'Used in Literatur und Interpretation', 'formal', false, 3),
  ('00000000-0000-4000-a000-00006a414f11', 'Schön, Sie kennenzulernen!', 'Nice to meet you!', 'سعيد بلقائكم!', NULL, 'Used in Literatur und Interpretation', 'formal', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-00006a414f11', 'der der Roman (die Romane)', 'novel — الرواية', 'noun', 'vocabulary', 1),
  ('00000000-0000-4000-a000-00006a414f11', 'der der Dichter (die Dichter)', 'poet — الشاعر', 'noun', 'vocabulary', 2),
  ('00000000-0000-4000-a000-00006a414f11', 'das das Gedicht (die Gedichte)', 'poem — القصيدة', 'noun', 'vocabulary', 3),
  ('00000000-0000-4000-a000-00006a414f11', 'der der Autor (die Autoren)', 'author — المؤلف', 'noun', 'vocabulary', 4),
  ('00000000-0000-4000-a000-00006a414f11', 'die die Literaturgeschichte', 'literary history — تاريخ الأدب', 'noun', 'vocabulary', 5),
  ('00000000-0000-4000-a000-00006a414f11', 'das das Drama (die Dramen)', 'drama — المسرحية', 'noun', 'vocabulary', 6),
  ('00000000-0000-4000-a000-00006a414f11', 'die die Erzählung (die Erzählungen)', 'short story — القصة القصيرة', 'noun', 'vocabulary', 7),
  ('00000000-0000-4000-a000-00006a414f11', 'der der Stil (die Stile)', 'style — الأسلوب', 'noun', 'vocabulary', 8),
  ('00000000-0000-4000-a000-00006a414f11', 'das das Register (die Register)', 'register — المستوى اللغوي', 'noun', 'vocabulary', 9),
  ('00000000-0000-4000-a000-00006a414f11', 'das das Stilmittel (die Stilmittel)', 'stylistic device — الأداة الأسلوبية', 'noun', 'vocabulary', 10),
  ('00000000-0000-4000-a000-00006a414f11', 'die die Alliteration (die Alliterationen)', 'alliteration — الجناس', 'noun', 'vocabulary', 11),
  ('00000000-0000-4000-a000-00006a414f11', 'die die Ellipse (die Ellipsen)', 'ellipsis — الحذف', 'noun', 'vocabulary', 12),
  ('00000000-0000-4000-a000-00006a414f11', 'die die Hyperbel (die Hyperbeln)', 'hyperbole — المبالغة', 'noun', 'vocabulary', 13),
  ('00000000-0000-4000-a000-00006a414f11', 'die die Poetik', 'poetics — الشعرية', 'noun', 'vocabulary', 14),
  ('00000000-0000-4000-a000-00006a414f11', 'der der Vers (die Verse)', 'verse — البيت الشعري', 'noun', 'vocabulary', 15),
  ('00000000-0000-4000-a000-00006a414f11', 'Das ist doch eine gute Idee, oder?', 'That IS a good idea, isn''t it?', 'Module Partikeln und Satzgliedstellung (Modal Particles and Word Order Nuances)', 'grammar', 16),
  ('00000000-0000-4000-a000-00006a414f11', 'Komm mal her, bitte.', 'Come here, please. (softening)', 'Module Partikeln und Satzgliedstellung (Modal Particles and Word Order Nuances)', 'grammar', 17),
  ('00000000-0000-4000-a000-00006a414f11', 'Was hast du eigentlich studiert?', 'What did you study, by the way?', 'Module Partikeln und Satzgliedstellung (Modal Particles and Word Order Nuances)', 'grammar', 18);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, french_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-00006a414f11', 'Test: Literatur und Analyse — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', NULL, 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, french_translation, duration_seconds, speaker_count, scenario) values
  ('00000000-0000-4000-a000-00006a414f11', 'Test: Literatur und Analyse — Hörverständnis', '[Lehrerin]: Guten Morgen! Heute lernen wir Begrüßungen.

[Lehrerin]: Wiederholen Sie: Guten Morgen!

[Student]: Guten Morgen!

[Lehrerin]: Sehr gut! Und wie sagt man "Goodbye"?

[Student]: Auf Wiedersehen!

[Lehrerin]: Perfekt! Bis morgen!', '[Lehrerin]: Good morning! Today we learn greetings.

[Lehrerin]: Repeat: Good morning!

[Student]: Good morning!

[Lehrerin]: Very good! And how do you say goodbye?

[Student]: Goodbye!

[Lehrerin]: Perfect! See you tomorrow!', '[Lehrerin]: صباح الخير! اليوم نتعلم التحيات.

[Lehrerin]: كرروا: صباح الخير!

[Student]: صباح الخير!

[Lehrerin]: جيد جداً! وكيف نقول "وداعاً"؟

[Student]: إلى اللقاء!

[Lehrerin]: ممتاز! إلى الغد!', '[Lehrerin]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: ', 72, 2, 'Literatur und Interpretation');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-00006a414f11', '🔊 Sprechen: Test: Literatur und Analyse', 'Presentation: Prepare a 2-minute presentation on "Module Test im deutschsprachigen Raum". Use discourse markers like "zunächst", "darüber hinaus", "abschließend". Your AI partner will ask critical questions afterwards.', 'Module Test', ARRAY['Use discourse markers (also, jedoch, außerdem)','React naturally: "Ach so!", "Echt?", "Das stimmt!"','Paraphrase when you don''t know a word']::text[], ARRAY['der Roman','der Dichter','das Gedicht','der Autor','die Literaturgeschichte','das Drama','die Erzählung','der Stil']::text[], 120, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-00006a414f11', '✏️ Schreiben: Test: Literatur und Analyse', 'Write a discursive essay (300-350 words) analyzing "Module Test in modern German society". Present both advantages and disadvantages. Use complex sentence structures (Nebensätze mit "obwohl", "trotzdem", "während") and formal register. Conclude with your own position.', ARRAY['Use paragraph breaks for structure','Connect ideas with "außerdem", "deshalb", "jedoch"','Check your verb position in Nebensätze']::text[], ARRAY['der Roman','der Dichter','das Gedicht','der Autor','die Literaturgeschichte','das Drama','die Erzählung','der Stil']::text[], ARRAY['Sentence structure','Vocabulary usage']::text[], 250, 350, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00006a414f11', 'Test: Literatur und Analyse — Roleplay', 'Module Test', 'Student', 'Teacher', 'Practice conversation about Module Test', 'Hallo! Lass uns über dieses Thema sprechen.', 'advanced', 1, ARRAY['der Roman','der Dichter','das Gedicht','der Autor','die Literaturgeschichte','das Drama','die Erzählung','der Stil']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00006a414f11', 'Test: Literatur und Analyse — Advanced Roleplay', 'Module Test', 'Customer', 'Assistant', 'Extended conversation about Module Test', 'Guten Tag! Wie kann ich Ihnen helfen?', 'advanced', 2, ARRAY['der Roman','der Dichter','das Gedicht','der Autor','die Literaturgeschichte','das Drama','die Erzählung','der Stil']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-00006a414f11', 'Test: Literatur und Analyse — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Test: Literatur und Analyse".', 'Creative practice for Module Test', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-00006a414f11', '📚 Hausaufgabe: Test: Literatur und Analyse', 'Complete these tasks to reinforce "Test: Literatur und Analyse".', 'mixed', '[{"description":"Create 10 flashcards from this lesson''s vocabulary — write German on one side, Arabic on the other. Test yourself 3 times."},{"description":"Write 6 sentences about Module Test: 2 statements, 2 questions, 2 negations — all using present_tense."},{"description":"Record yourself reading the dialogue aloud. Listen to the recording and note 3 things to improve."},{"description":"Find 3 real German websites, videos, or articles about Module Test. Note 5 new words you discovered."}]', 50, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-00006a414f11', '🎯 Excellent progress! This lesson covered Module Test (67 vocabulary items) and present_tense. You developed reading, listening, speaking, and writing skills in the context of literature. Focus on your common mistakes area for maximum improvement.', '["67 vocabulary items about Module Test","present_tense — grammar explanation and practice","Reading comprehension: text about Module Test","Listening comprehension: dialogue about Module Test","Speaking practice: roleplay/discussion about Module Test","Writing task: text about Module Test"]', '[{"title":"Test: Literatur und Analyse Review","summary":"present_tense — the main grammar focus. Focus on nuanced usage, exceptions, and stylistic variation."}]', ARRAY['der Roman (novel)','der Dichter (poet)','das Gedicht (poem)','der Autor (author)','die Literaturgeschichte (literary history)']::text[], ARRAY['Don''t translate from Arabic word-for-word — German has different sentence structure','Learn every noun with its article: NEVER learn "Tisch" alone, always "der Tisch"','Pay attention to Konjunktiv I/II distinction']::text[], ARRAY['Practice 15-20 minutes daily — consistency beats intensity','Speak out loud: German pronunciation needs muscle memory','Use the new vocabulary within 24 hours or you''ll forget it','Watch German YouTube videos about Module Test for authentic input']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006a414f11', 'translation', 'Translate to German: "I use the word "novel" in a sentence about Module Test."', '[]', 'Der Roman ist ein Bestseller.', 'Use der  "der Roman" with the correct present_tense form.', 1, 40);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006a414f11', 'translation', 'Translate to German: "I use the word "poet" in a sentence about Module Test."', '[]', 'Goethe war ein großer Dichter.', 'Use der  "der Dichter" with the correct present_tense form.', 1, 41);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006a414f11', 'translation', 'Translate to German: "I use the word "poem" in a sentence about Module Test."', '[]', 'Das Gedicht handelt von der Liebe.', 'Use das  "das Gedicht" with the correct present_tense form.', 1, 42);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006a414f11', 'Culture: 🇩🇪 Deutsche Kultur: Module Test', 'The German approach to Module Test reflects deeper cultural values: Ordnung (order), Gründlichkeit (thoroughness), and Sachlichkeit (objectivity). Debates about Module Test in German media are characterised by factual argumentation. Understanding these discourse norms is essential for C1/C2 learners who want to participate in academic or professional discussions.

لدى Module Test في ألمانيا فروق ثقافية دقيقة تختلف عن البلدان العربية. الألمان يفصلون بين حياتهم الخاصة والمهنية بشكل صارم.', '["Tip: Always use \"Sie\" (formal) with strangers and colleagues","Tip: Germans appreciate punctuality — arrive 5 minutes early","Tip: Direct feedback is a sign of respect, not criticism","Tip: Prepare factual arguments, not emotional appeals"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006a414f11', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Incorrect preposition usage after verbs","correction":"Learn which preposition each verb requires (sich freuen auf, warten auf, denken an)","explanation":"Arabic and German have different sentence structures. Arabic is VSO, German is SVO with verb in position 2."},{"mistake":"Incorrect use of Konjunktiv II in polite requests","correction":"Ich hätte gern... (I would like...)","explanation":"Konjunktiv II is often replaced with würde + infinitive in speech"}]', 30);

  -- Module 3: Pragmatik und Diskursanalyse
  insert into public.course_modules (id, level_id, title, description, objectives, order_index, estimated_hours, is_published)
  values ('00000000-0000-4000-a000-000039d176c1', 'C2', 'Pragmatik und Diskursanalyse', 'Study language in use: pragmatics, discourse analysis, and conversation analysis.', '["Analyze speech acts and implicature","Understand discourse markers","Analyze conversational structure","Use hedging and mitigation strategies","Write discourse analytic papers"]', 3, 5, true)
  on conflict (id) do nothing;

  -- Lesson 1: Sprechakte und Implikaturen (L-C2-03-01)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-00006a41c36e', '00000000-0000-4000-a000-000039d176c1', 'Sprechakte und Implikaturen', 'Learn about speech acts and conversational implicature.', 'Speech Acts', 'vocabulary', '["Understand and use 60 key vocabulary words about Speech Acts","Apply present_tense correctly in sentences","Read and comprehend a text about Speech Acts","Listen and understand a natural dialogue about Speech Acts","Speak about Speech Acts with confidence","Write a short text about Speech Acts using new vocabulary"]', 55, 1, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, french_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-00006a41c36e', 'die Pragmatik', 'البراغماتية', 'pragmatics', NULL, 'die', NULL, 'noun', 'Pragmatik untersucht Sprache im Kontext.', 'Pragmatics studies language in context.', 'C2', 1),
  ('00000000-0000-4000-a000-00006a41c36e', 'der Sprechakt', 'فعل الكلام', 'speech act', NULL, 'der', 'die Sprechakte', 'noun', 'Der Sprechakt ändert die Wirklichkeit.', 'The speech act changes reality.', 'C2', 2),
  ('00000000-0000-4000-a000-00006a41c36e', 'die Implikatur', 'الاستلزام التخاطبي', 'implicature', NULL, 'die', 'die Implikaturen', 'noun', 'Die Implikatur ist die indirekte Bedeutung.', 'Implicature is the indirect meaning.', 'C2', 3),
  ('00000000-0000-4000-a000-00006a41c36e', 'der Kontext', 'السياق', 'context', NULL, 'der', 'die Kontexte', 'noun', 'Der Kontext bestimmt die Bedeutung.', 'Context determines meaning.', 'B2', 4),
  ('00000000-0000-4000-a000-00006a41c36e', 'die Höflichkeit', 'الأدب / اللباقة', 'politeness', NULL, 'die', NULL, 'noun', 'Höflichkeit ist in Japan sehr wichtig.', 'Politeness is very important in Japan.', 'B2', 5),
  ('00000000-0000-4000-a000-00006a41c36e', 'die Konversationsanalyse', 'تحليل المحادثة', 'conversation analysis', NULL, 'die', NULL, 'noun', 'Die Konversationsanalyse untersucht Gespräche.', 'Conversation analysis examines conversations.', 'C2', 6),
  ('00000000-0000-4000-a000-00006a41c36e', 'der Stil', 'الأسلوب', 'style', NULL, 'der', 'die Stile', 'noun', 'Der Stil des Textes ist formell.', 'The style of the text is formal.', 'B2', 7),
  ('00000000-0000-4000-a000-00006a41c36e', 'das Register', 'المستوى اللغوي', 'register', NULL, 'das', 'die Register', 'noun', 'Das Register passt zur Situation.', 'The register fits the situation.', 'C1', 8),
  ('00000000-0000-4000-a000-00006a41c36e', 'das Stilmittel', 'الأداة الأسلوبية', 'stylistic device', NULL, 'das', 'die Stilmittel', 'noun', 'Das Stilmittel unterstreicht die Aussage.', 'The stylistic device emphasizes the statement.', 'C1', 9),
  ('00000000-0000-4000-a000-00006a41c36e', 'die Alliteration', 'الجناس', 'alliteration', NULL, 'die', 'die Alliterationen', 'noun', 'Die Alliteration wiederholt den Anlaut.', 'Alliteration repeats the initial sound.', 'C2', 10),
  ('00000000-0000-4000-a000-00006a41c36e', 'die Ellipse', 'الحذف', 'ellipsis', NULL, 'die', 'die Ellipsen', 'noun', 'Die Ellipse spart Wörter aus.', 'The ellipsis omits words.', 'C2', 11),
  ('00000000-0000-4000-a000-00006a41c36e', 'die Hyperbel', 'المبالغة', 'hyperbole', NULL, 'die', 'die Hyperbeln', 'noun', 'Die Hyperbel übertreibt stark.', 'Hyperbole exaggerates strongly.', 'C2', 12),
  ('00000000-0000-4000-a000-00006a41c36e', 'die Poetik', 'الشعرية', 'poetics', NULL, 'die', NULL, 'noun', 'Poetik ist die Theorie der Dichtkunst.', 'Poetics is the theory of poetry.', 'C2', 13),
  ('00000000-0000-4000-a000-00006a41c36e', 'der Vers', 'البيت الشعري', 'verse', NULL, 'der', 'die Verse', 'noun', 'Der Vers hat fünf Hebungen.', 'The verse has five stresses.', 'C1', 14),
  ('00000000-0000-4000-a000-00006a41c36e', 'der Reim', 'القافية', 'rhyme', NULL, 'der', 'die Reime', 'noun', 'Der Reim verbindet die Zeilen.', 'Rhyme connects the lines.', 'C1', 15),
  ('00000000-0000-4000-a000-00006a41c36e', 'das Metrum', 'الوزن', 'meter', NULL, 'das', 'die Metren', 'noun', 'Das Metrum bestimmt den Rhythmus.', 'The meter determines the rhythm.', 'C2', 16),
  ('00000000-0000-4000-a000-00006a41c36e', 'die Gattung', 'النوع الأدبي', 'genre', NULL, 'die', 'die Gattungen', 'noun', 'Lyrik ist eine literarische Gattung.', 'Lyric poetry is a literary genre.', 'C1', 17),
  ('00000000-0000-4000-a000-00006a41c36e', 'die Bedeutung', 'المعنى', 'meaning', NULL, 'die', 'die Bedeutungen', 'noun', 'Die Bedeutung des Wortes ist klar.', 'The meaning of the word is clear.', 'B2', 18),
  ('00000000-0000-4000-a000-00006a41c36e', 'die Synonymie', 'الترادف', 'synonymy', NULL, 'die', NULL, 'noun', 'Synonymie bedeutet Bedeutungsgleichheit.', 'Synonymy means sameness of meaning.', 'C2', 19),
  ('00000000-0000-4000-a000-00006a41c36e', 'die Antonymie', 'التضاد', 'antonymy', NULL, 'die', NULL, 'noun', 'Antonymie bezeichnet Gegensätze.', 'Antonymy denotes opposites.', 'C2', 20),
  ('00000000-0000-4000-a000-00006a41c36e', 'die Polysemie', 'تعدد المعاني', 'polysemy', NULL, 'die', NULL, 'noun', 'Polysemie hat mehrere Bedeutungen.', 'Polysemy has multiple meanings.', 'C2', 21),
  ('00000000-0000-4000-a000-00006a41c36e', 'die Kompositionalität', 'التركيبية', 'compositionality', NULL, 'die', NULL, 'noun', 'Kompositionalität besagt, dass Bedeutung aus Teilen besteht.', 'Compositionality holds that meaning consists of parts.', 'C2', 22),
  ('00000000-0000-4000-a000-00006a41c36e', 'die Übersetzung', 'الترجمة', 'translation', NULL, 'die', 'die Übersetzungen', 'noun', 'Die Übersetzung ist gelungen.', 'The translation is successful.', 'B2', 23),
  ('00000000-0000-4000-a000-00006a41c36e', 'übersetzen', 'يترجم', 'to translate', NULL, NULL, NULL, 'verb', 'Ich übersetze den Text ins Arabische.', 'I translate the text into Arabic.', 'B1', 24),
  ('00000000-0000-4000-a000-00006a41c36e', 'der Dolmetscher', 'المترجم الفوري', 'interpreter', NULL, 'der', 'die Dolmetscher', 'noun', 'Der Dolmetscher übersetzt mündlich.', 'The interpreter translates orally.', 'B2', 25),
  ('00000000-0000-4000-a000-00006a41c36e', 'die Muttersprache', 'اللغة الأم', 'native language', NULL, 'die', 'die Muttersprachen', 'noun', 'Meine Muttersprache ist Arabisch.', 'My native language is Arabic.', 'B1', 26),
  ('00000000-0000-4000-a000-00006a41c36e', 'falscher Freund', 'الصديق المزيف', 'false friend', NULL, NULL, NULL, 'noun', 'Ein falscher Freund sieht ähnlich aus, bedeutet aber etwas anderes.', 'A false friend looks similar but means something different.', 'C1', 27),
  ('00000000-0000-4000-a000-00006a41c36e', 'die Sprachmittlung', 'الوساطة اللغوية', 'language mediation', NULL, 'die', NULL, 'noun', 'Sprachmittlung vermittelt zwischen Kulturen.', 'Language mediation bridges between cultures.', 'C2', 28),
  ('00000000-0000-4000-a000-00006a41c36e', 'die Äquivalenz', 'التكافؤ', 'equivalence', NULL, 'die', NULL, 'noun', 'Äquivalenz in der Übersetzung ist ein Ideal.', 'Equivalence in translation is an ideal.', 'C2', 29),
  ('00000000-0000-4000-a000-00006a41c36e', 'der Dialekt', 'اللهجة', 'dialect', NULL, 'der', 'die Dialekte', 'noun', 'Der bayerische Dialekt ist schwer zu verstehen.', 'The Bavarian dialect is hard to understand.', 'B2', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006a41c36e', 'Module Partikeln und Satzgliedstellung (Modal Particles and Word Order Nuances) / الجزيئات النمطية وترتيب الكلمات الدقيق', 'Modal particles (doch, ja, eben, halt, wohl, eigentlich, denn, mal) add nuance and emotion to statements. They are almost impossible to translate directly but are essential for natural German. At C2, their correct placement and usage distinguishes near-native from advanced learners.', '[{"rule":"doch: contradiction or emphasis","note":"Das ist doch nicht wahr! (That''s just not true!)"},{"rule":"ja: shared knowledge reminder","note":"Das ist ja interessant! (That IS interesting! — as we both know)"},{"rule":"denn: in W-questions (casual)","note":"Was machst du denn da? (What are you doing there? — curious, not accusatory)"}]', '[{"german":"Das ist doch eine gute Idee, oder?","arabic":"هذه فكرة جيدة، أليس كذلك؟ (تأكيد)","english":"That IS a good idea, isn''t it?"},{"german":"Komm mal her, bitte.","arabic":"تعال إلى هنا من فضلك. (طلاقة)","english":"Come here, please. (softening)"},{"german":"Was hast du eigentlich studiert?","arabic":"ماذا درست بالمناسبة؟","english":"What did you study, by the way?"}]', '[{"mistake":"Speaking without modal particles (too textbook-like)","correction":"Das ist doch klar! (not just \"Das ist klar\")","explanation":"Without modal particles, German sounds robotic. At C2, particles show naturalness."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006a41c36e', 'multiple_choice', 'Welches deutsche Wort bedeutet "pragmatics"?', '["die Implikatur","die Pragmatik","der Kontext","der Sprechakt"]', 'die Pragmatik', '"pragmatics" = "die Pragmatik" in German. Article: die ', 1, 1),
  ('00000000-0000-4000-a000-00006a41c36e', 'multiple_choice', 'Welches deutsche Wort bedeutet "speech act"?', '["der Sprechakt","die Höflichkeit","die Pragmatik","die Implikatur"]', 'der Sprechakt', '"speech act" = "der Sprechakt" in German. Article: der Plural: die Sprechakte', 1, 2),
  ('00000000-0000-4000-a000-00006a41c36e', 'multiple_choice', 'Welches deutsche Wort bedeutet "implicature"?', '["die Implikatur","die Pragmatik","der Sprechakt","der Kontext"]', 'die Implikatur', '"implicature" = "die Implikatur" in German. Article: die Plural: die Implikaturen', 1, 3),
  ('00000000-0000-4000-a000-00006a41c36e', 'multiple_choice', 'Welches deutsche Wort bedeutet "context"?', '["die Pragmatik","der Kontext","die Höflichkeit","die Implikatur"]', 'der Kontext', '"context" = "der Kontext" in German. Article: der Plural: die Kontexte', 1, 4),
  ('00000000-0000-4000-a000-00006a41c36e', 'multiple_choice', 'Welches deutsche Wort bedeutet "politeness"?', '["die Höflichkeit","die Pragmatik","der Sprechakt","die Implikatur"]', 'die Höflichkeit', '"politeness" = "die Höflichkeit" in German. Article: die ', 1, 5),
  ('00000000-0000-4000-a000-00006a41c36e', 'fill_gap', 'Ergänzen Sie den Satz: Ich ___ gern über Speech Acts. (sprechen)', '["spreche","sprichst","spricht","sprechen"]', 'spreche', 'ich spreche gern = I like to speak. Stem: sprech- + e.', 2, 6),
  ('00000000-0000-4000-a000-00006a41c36e', 'translation', 'Übersetzen Sie ins Deutsche: "I am learning about Speech Acts."', '["Ich lerne über Speech Acts.","Ich lerne Speech Acts.","Lerne ich Speech Acts."]', 'Ich lerne über Speech Acts.', '"Ich lerne über..." = "I am learning about..."', 2, 7),
  ('00000000-0000-4000-a000-00006a41c36e', 'matching', 'Match: Which word pairs are correct?', '["die Pragmatik - pragmatics, der Sprechakt - speech act"]', 'Matched correctly', 'Each German word has a unique English equivalent.', 2, 8);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-00006a41c36e', 'multiple_choice', 'Was bedeutet "die Pragmatik" auf Deutsch?', '["pragmatics","to run","beautiful","yesterday"]', 'pragmatics', 1, 1),
  ('00000000-0000-4000-a000-00006a41c36e', 'multiple_choice', 'Welcher Artikel gehört zu "der Sprechakt"?', '["der","die","das","den"]', 'der', 1, 2),
  ('00000000-0000-4000-a000-00006a41c36e', 'true_false', 'Das Wort "die Implikatur" gehört zum Thema Speech Acts.', '["True","False"]', 'True', 1, 3),
  ('00000000-0000-4000-a000-00006a41c36e', 'multiple_choice', 'Welcher Satz verwendet present_tense?', '["Das ist doch eine gute Idee, oder?","Komm mal her, bitte.","Was hast du eigentlich studiert?"]', 'Das ist doch eine gute Idee, oder?', 2, 4),
  ('00000000-0000-4000-a000-00006a41c36e', 'true_false', ''Im Deutschen steht das Verb an zweiter Position im Hauptsatz.', '["True","False"]', 'True', 1, 5),
  ('00000000-0000-4000-a000-00006a41c36e', 'fill_blank', 'Complete: Ich ___ (context) Deutsch.', '["der Kontext","lernt","lernst","lernen"]', 'lerne', 2, 6),
  ('00000000-0000-4000-a000-00006a41c36e', 'multiple_choice', 'Wie lautet das deutsche Wort für "politeness"?', '["die Höflichkeit","die Konversationsanalyse","der Stil","das Register"]', 'die Höflichkeit', 1, 7),
  ('00000000-0000-4000-a000-00006a41c36e', 'true_false', 'Im Deutschen werden alle Nomen großgeschrieben.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-00006a41c36e', 'multiple_choice', 'How do you say "please" in a restaurant in Germany?', '["Bitte","Danke","Tschüss","Hallo"]', 'Bitte', 1, 9),
  ('00000000-0000-4000-a000-00006a41c36e', 'fill_blank', 'Wo ___ (to live) du?', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 2, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, french_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-00006a41c36e', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', NULL, 'Used in Pragmatik und Diskursanalyse', 'formal', false, 1),
  ('00000000-0000-4000-a000-00006a41c36e', 'Guten Tag!', 'Good day!', 'نهارك سعيد!', NULL, 'Used in Pragmatik und Diskursanalyse', 'formal', false, 2),
  ('00000000-0000-4000-a000-00006a41c36e', 'Hallo, wie geht es Ihnen?', 'Hello, how are you?', 'مرحباً، كيف حالكم؟', NULL, 'Used in Pragmatik und Diskursanalyse', 'formal', false, 3),
  ('00000000-0000-4000-a000-00006a41c36e', 'Schön, Sie kennenzulernen!', 'Nice to meet you!', 'سعيد بلقائكم!', NULL, 'Used in Pragmatik und Diskursanalyse', 'formal', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-00006a41c36e', 'die die Pragmatik', 'pragmatics — البراغماتية', 'noun', 'vocabulary', 1),
  ('00000000-0000-4000-a000-00006a41c36e', 'der der Sprechakt (die Sprechakte)', 'speech act — فعل الكلام', 'noun', 'vocabulary', 2),
  ('00000000-0000-4000-a000-00006a41c36e', 'die die Implikatur (die Implikaturen)', 'implicature — الاستلزام التخاطبي', 'noun', 'vocabulary', 3),
  ('00000000-0000-4000-a000-00006a41c36e', 'der der Kontext (die Kontexte)', 'context — السياق', 'noun', 'vocabulary', 4),
  ('00000000-0000-4000-a000-00006a41c36e', 'die die Höflichkeit', 'politeness — الأدب / اللباقة', 'noun', 'vocabulary', 5),
  ('00000000-0000-4000-a000-00006a41c36e', 'die die Konversationsanalyse', 'conversation analysis — تحليل المحادثة', 'noun', 'vocabulary', 6),
  ('00000000-0000-4000-a000-00006a41c36e', 'der der Stil (die Stile)', 'style — الأسلوب', 'noun', 'vocabulary', 7),
  ('00000000-0000-4000-a000-00006a41c36e', 'das das Register (die Register)', 'register — المستوى اللغوي', 'noun', 'vocabulary', 8),
  ('00000000-0000-4000-a000-00006a41c36e', 'das das Stilmittel (die Stilmittel)', 'stylistic device — الأداة الأسلوبية', 'noun', 'vocabulary', 9),
  ('00000000-0000-4000-a000-00006a41c36e', 'die die Alliteration (die Alliterationen)', 'alliteration — الجناس', 'noun', 'vocabulary', 10),
  ('00000000-0000-4000-a000-00006a41c36e', 'die die Ellipse (die Ellipsen)', 'ellipsis — الحذف', 'noun', 'vocabulary', 11),
  ('00000000-0000-4000-a000-00006a41c36e', 'die die Hyperbel (die Hyperbeln)', 'hyperbole — المبالغة', 'noun', 'vocabulary', 12),
  ('00000000-0000-4000-a000-00006a41c36e', 'die die Poetik', 'poetics — الشعرية', 'noun', 'vocabulary', 13),
  ('00000000-0000-4000-a000-00006a41c36e', 'der der Vers (die Verse)', 'verse — البيت الشعري', 'noun', 'vocabulary', 14),
  ('00000000-0000-4000-a000-00006a41c36e', 'der der Reim (die Reime)', 'rhyme — القافية', 'noun', 'vocabulary', 15),
  ('00000000-0000-4000-a000-00006a41c36e', 'Das ist doch eine gute Idee, oder?', 'That IS a good idea, isn''t it?', 'Module Partikeln und Satzgliedstellung (Modal Particles and Word Order Nuances)', 'grammar', 16),
  ('00000000-0000-4000-a000-00006a41c36e', 'Komm mal her, bitte.', 'Come here, please. (softening)', 'Module Partikeln und Satzgliedstellung (Modal Particles and Word Order Nuances)', 'grammar', 17),
  ('00000000-0000-4000-a000-00006a41c36e', 'Was hast du eigentlich studiert?', 'What did you study, by the way?', 'Module Partikeln und Satzgliedstellung (Modal Particles and Word Order Nuances)', 'grammar', 18);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, french_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-00006a41c36e', 'Sprechakte und Implikaturen — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', NULL, 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, french_translation, duration_seconds, speaker_count, scenario) values
  ('00000000-0000-4000-a000-00006a41c36e', 'Sprechakte und Implikaturen — Hörverständnis', '[Lehrerin]: Guten Morgen! Heute lernen wir Begrüßungen.

[Lehrerin]: Wiederholen Sie: Guten Morgen!

[Student]: Guten Morgen!

[Lehrerin]: Sehr gut! Und wie sagt man "Goodbye"?

[Student]: Auf Wiedersehen!

[Lehrerin]: Perfekt! Bis morgen!', '[Lehrerin]: Good morning! Today we learn greetings.

[Lehrerin]: Repeat: Good morning!

[Student]: Good morning!

[Lehrerin]: Very good! And how do you say goodbye?

[Student]: Goodbye!

[Lehrerin]: Perfect! See you tomorrow!', '[Lehrerin]: صباح الخير! اليوم نتعلم التحيات.

[Lehrerin]: كرروا: صباح الخير!

[Student]: صباح الخير!

[Lehrerin]: جيد جداً! وكيف نقول "وداعاً"؟

[Student]: إلى اللقاء!

[Lehrerin]: ممتاز! إلى الغد!', '[Lehrerin]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: ', 72, 2, 'Pragmatik und Diskursanalyse');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-00006a41c36e', '🔊 Sprechen: Sprechakte und Implikaturen', 'Presentation: Prepare a 2-minute presentation on "Speech Acts im deutschsprachigen Raum". Use discourse markers like "zunächst", "darüber hinaus", "abschließend". Your AI partner will ask critical questions afterwards.', 'Speech Acts', ARRAY['Use discourse markers (also, jedoch, außerdem)','React naturally: "Ach so!", "Echt?", "Das stimmt!"','Paraphrase when you don''t know a word']::text[], ARRAY['die Pragmatik','der Sprechakt','die Implikatur','der Kontext','die Höflichkeit','die Konversationsanalyse','der Stil','das Register']::text[], 120, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-00006a41c36e', '✏️ Schreiben: Sprechakte und Implikaturen', 'Write a discursive essay (300-350 words) analyzing "Speech Acts in modern German society". Present both advantages and disadvantages. Use complex sentence structures (Nebensätze mit "obwohl", "trotzdem", "während") and formal register. Conclude with your own position.', ARRAY['Use paragraph breaks for structure','Connect ideas with "außerdem", "deshalb", "jedoch"','Check your verb position in Nebensätze']::text[], ARRAY['die Pragmatik','der Sprechakt','die Implikatur','der Kontext','die Höflichkeit','die Konversationsanalyse','der Stil','das Register']::text[], ARRAY['Sentence structure','Vocabulary usage']::text[], 250, 350, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00006a41c36e', 'Sprechakte und Implikaturen — Roleplay', 'Speech Acts', 'Student', 'Teacher', 'Practice conversation about Speech Acts', 'Hallo! Lass uns über dieses Thema sprechen.', 'advanced', 1, ARRAY['die Pragmatik','der Sprechakt','die Implikatur','der Kontext','die Höflichkeit','die Konversationsanalyse','der Stil','das Register']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00006a41c36e', 'Sprechakte und Implikaturen — Advanced Roleplay', 'Speech Acts', 'Customer', 'Assistant', 'Extended conversation about Speech Acts', 'Guten Tag! Wie kann ich Ihnen helfen?', 'advanced', 2, ARRAY['die Pragmatik','der Sprechakt','die Implikatur','der Kontext','die Höflichkeit','die Konversationsanalyse','der Stil','das Register']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-00006a41c36e', 'Sprechakte und Implikaturen — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Sprechakte und Implikaturen".', 'Creative practice for Speech Acts', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-00006a41c36e', '📚 Hausaufgabe: Sprechakte und Implikaturen', 'Complete these tasks to reinforce "Sprechakte und Implikaturen".', 'mixed', '[{"description":"Create 10 flashcards from this lesson''s vocabulary — write German on one side, Arabic on the other. Test yourself 3 times."},{"description":"Write 6 sentences about Speech Acts: 2 statements, 2 questions, 2 negations — all using present_tense."},{"description":"Record yourself reading the dialogue aloud. Listen to the recording and note 3 things to improve."},{"description":"Find 3 real German websites, videos, or articles about Speech Acts. Note 5 new words you discovered."}]', 50, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-00006a41c36e', '🎯 Excellent progress! This lesson covered Speech Acts (60 vocabulary items) and present_tense. You developed reading, listening, speaking, and writing skills in the context of pragmatics. Focus on your common mistakes area for maximum improvement.', '["60 vocabulary items about Speech Acts","present_tense — grammar explanation and practice","Reading comprehension: text about Speech Acts","Listening comprehension: dialogue about Speech Acts","Speaking practice: roleplay/discussion about Speech Acts","Writing task: text about Speech Acts"]', '[{"title":"Sprechakte und Implikaturen Review","summary":"present_tense — the main grammar focus. Focus on nuanced usage, exceptions, and stylistic variation."}]', ARRAY['die Pragmatik (pragmatics)','der Sprechakt (speech act)','die Implikatur (implicature)','der Kontext (context)','die Höflichkeit (politeness)']::text[], ARRAY['Don''t translate from Arabic word-for-word — German has different sentence structure','Learn every noun with its article: NEVER learn "Tisch" alone, always "der Tisch"','Pay attention to Konjunktiv I/II distinction']::text[], ARRAY['Practice 15-20 minutes daily — consistency beats intensity','Speak out loud: German pronunciation needs muscle memory','Use the new vocabulary within 24 hours or you''ll forget it','Watch German YouTube videos about Speech Acts for authentic input']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006a41c36e', 'translation', 'Translate to German: "I use the word "pragmatics" in a sentence about Speech Acts."', '[]', 'Pragmatik untersucht Sprache im Kontext.', 'Use die  "die Pragmatik" with the correct present_tense form.', 1, 40);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006a41c36e', 'translation', 'Translate to German: "I use the word "speech act" in a sentence about Speech Acts."', '[]', 'Der Sprechakt ändert die Wirklichkeit.', 'Use der  "der Sprechakt" with the correct present_tense form.', 1, 41);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006a41c36e', 'translation', 'Translate to German: "I use the word "implicature" in a sentence about Speech Acts."', '[]', 'Die Implikatur ist die indirekte Bedeutung.', 'Use die  "die Implikatur" with the correct present_tense form.', 1, 42);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006a41c36e', 'Culture: 🇩🇪 Deutsche Kultur: Speech Acts', 'The German approach to Speech Acts reflects deeper cultural values: Ordnung (order), Gründlichkeit (thoroughness), and Sachlichkeit (objectivity). Debates about Speech Acts in German media are characterised by factual argumentation. Understanding these discourse norms is essential for C1/C2 learners who want to participate in academic or professional discussions.

لدى Speech Acts في ألمانيا فروق ثقافية دقيقة تختلف عن البلدان العربية. الألمان يفصلون بين حياتهم الخاصة والمهنية بشكل صارم.', '["Tip: Always use \"Sie\" (formal) with strangers and colleagues","Tip: Germans appreciate punctuality — arrive 5 minutes early","Tip: Direct feedback is a sign of respect, not criticism","Tip: Prepare factual arguments, not emotional appeals"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006a41c36e', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Incorrect preposition usage after verbs","correction":"Learn which preposition each verb requires (sich freuen auf, warten auf, denken an)","explanation":"Arabic and German have different sentence structures. Arabic is VSO, German is SVO with verb in position 2."},{"mistake":"Incorrect use of Konjunktiv II in polite requests","correction":"Ich hätte gern... (I would like...)","explanation":"Konjunktiv II is often replaced with würde + infinitive in speech"}]', 30);

  -- Lesson 2: Diskursmarker und Kohärenz (L-C2-03-02)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-00006a41c36f', '00000000-0000-4000-a000-000039d176c1', 'Diskursmarker und Kohärenz', 'Master discourse markers for text coherence.', 'Discourse Markers', 'grammar', '["Understand and apply present_tense rules correctly","Use present_tense in real conversations","Avoid common mistakes Arabic speakers make with present_tense","Read and understand present_tense in context","Listen and identify present_tense in speech","Write sentences using present_tense correctly"]', 55, 2, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, french_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-00006a41c36f', 'die Pragmatik', 'البراغماتية', 'pragmatics', NULL, 'die', NULL, 'noun', 'Pragmatik untersucht Sprache im Kontext.', 'Pragmatics studies language in context.', 'C2', 1),
  ('00000000-0000-4000-a000-00006a41c36f', 'der Sprechakt', 'فعل الكلام', 'speech act', NULL, 'der', 'die Sprechakte', 'noun', 'Der Sprechakt ändert die Wirklichkeit.', 'The speech act changes reality.', 'C2', 2),
  ('00000000-0000-4000-a000-00006a41c36f', 'die Implikatur', 'الاستلزام التخاطبي', 'implicature', NULL, 'die', 'die Implikaturen', 'noun', 'Die Implikatur ist die indirekte Bedeutung.', 'Implicature is the indirect meaning.', 'C2', 3),
  ('00000000-0000-4000-a000-00006a41c36f', 'der Kontext', 'السياق', 'context', NULL, 'der', 'die Kontexte', 'noun', 'Der Kontext bestimmt die Bedeutung.', 'Context determines meaning.', 'B2', 4),
  ('00000000-0000-4000-a000-00006a41c36f', 'die Höflichkeit', 'الأدب / اللباقة', 'politeness', NULL, 'die', NULL, 'noun', 'Höflichkeit ist in Japan sehr wichtig.', 'Politeness is very important in Japan.', 'B2', 5),
  ('00000000-0000-4000-a000-00006a41c36f', 'die Konversationsanalyse', 'تحليل المحادثة', 'conversation analysis', NULL, 'die', NULL, 'noun', 'Die Konversationsanalyse untersucht Gespräche.', 'Conversation analysis examines conversations.', 'C2', 6),
  ('00000000-0000-4000-a000-00006a41c36f', 'der Stil', 'الأسلوب', 'style', NULL, 'der', 'die Stile', 'noun', 'Der Stil des Textes ist formell.', 'The style of the text is formal.', 'B2', 7),
  ('00000000-0000-4000-a000-00006a41c36f', 'das Register', 'المستوى اللغوي', 'register', NULL, 'das', 'die Register', 'noun', 'Das Register passt zur Situation.', 'The register fits the situation.', 'C1', 8),
  ('00000000-0000-4000-a000-00006a41c36f', 'das Stilmittel', 'الأداة الأسلوبية', 'stylistic device', NULL, 'das', 'die Stilmittel', 'noun', 'Das Stilmittel unterstreicht die Aussage.', 'The stylistic device emphasizes the statement.', 'C1', 9),
  ('00000000-0000-4000-a000-00006a41c36f', 'die Alliteration', 'الجناس', 'alliteration', NULL, 'die', 'die Alliterationen', 'noun', 'Die Alliteration wiederholt den Anlaut.', 'Alliteration repeats the initial sound.', 'C2', 10),
  ('00000000-0000-4000-a000-00006a41c36f', 'die Ellipse', 'الحذف', 'ellipsis', NULL, 'die', 'die Ellipsen', 'noun', 'Die Ellipse spart Wörter aus.', 'The ellipsis omits words.', 'C2', 11),
  ('00000000-0000-4000-a000-00006a41c36f', 'die Hyperbel', 'المبالغة', 'hyperbole', NULL, 'die', 'die Hyperbeln', 'noun', 'Die Hyperbel übertreibt stark.', 'Hyperbole exaggerates strongly.', 'C2', 12),
  ('00000000-0000-4000-a000-00006a41c36f', 'die Poetik', 'الشعرية', 'poetics', NULL, 'die', NULL, 'noun', 'Poetik ist die Theorie der Dichtkunst.', 'Poetics is the theory of poetry.', 'C2', 13),
  ('00000000-0000-4000-a000-00006a41c36f', 'der Vers', 'البيت الشعري', 'verse', NULL, 'der', 'die Verse', 'noun', 'Der Vers hat fünf Hebungen.', 'The verse has five stresses.', 'C1', 14),
  ('00000000-0000-4000-a000-00006a41c36f', 'der Reim', 'القافية', 'rhyme', NULL, 'der', 'die Reime', 'noun', 'Der Reim verbindet die Zeilen.', 'Rhyme connects the lines.', 'C1', 15),
  ('00000000-0000-4000-a000-00006a41c36f', 'das Metrum', 'الوزن', 'meter', NULL, 'das', 'die Metren', 'noun', 'Das Metrum bestimmt den Rhythmus.', 'The meter determines the rhythm.', 'C2', 16),
  ('00000000-0000-4000-a000-00006a41c36f', 'die Gattung', 'النوع الأدبي', 'genre', NULL, 'die', 'die Gattungen', 'noun', 'Lyrik ist eine literarische Gattung.', 'Lyric poetry is a literary genre.', 'C1', 17),
  ('00000000-0000-4000-a000-00006a41c36f', 'die Bedeutung', 'المعنى', 'meaning', NULL, 'die', 'die Bedeutungen', 'noun', 'Die Bedeutung des Wortes ist klar.', 'The meaning of the word is clear.', 'B2', 18),
  ('00000000-0000-4000-a000-00006a41c36f', 'die Synonymie', 'الترادف', 'synonymy', NULL, 'die', NULL, 'noun', 'Synonymie bedeutet Bedeutungsgleichheit.', 'Synonymy means sameness of meaning.', 'C2', 19),
  ('00000000-0000-4000-a000-00006a41c36f', 'die Antonymie', 'التضاد', 'antonymy', NULL, 'die', NULL, 'noun', 'Antonymie bezeichnet Gegensätze.', 'Antonymy denotes opposites.', 'C2', 20),
  ('00000000-0000-4000-a000-00006a41c36f', 'die Polysemie', 'تعدد المعاني', 'polysemy', NULL, 'die', NULL, 'noun', 'Polysemie hat mehrere Bedeutungen.', 'Polysemy has multiple meanings.', 'C2', 21),
  ('00000000-0000-4000-a000-00006a41c36f', 'die Kompositionalität', 'التركيبية', 'compositionality', NULL, 'die', NULL, 'noun', 'Kompositionalität besagt, dass Bedeutung aus Teilen besteht.', 'Compositionality holds that meaning consists of parts.', 'C2', 22),
  ('00000000-0000-4000-a000-00006a41c36f', 'die Übersetzung', 'الترجمة', 'translation', NULL, 'die', 'die Übersetzungen', 'noun', 'Die Übersetzung ist gelungen.', 'The translation is successful.', 'B2', 23),
  ('00000000-0000-4000-a000-00006a41c36f', 'übersetzen', 'يترجم', 'to translate', NULL, NULL, NULL, 'verb', 'Ich übersetze den Text ins Arabische.', 'I translate the text into Arabic.', 'B1', 24),
  ('00000000-0000-4000-a000-00006a41c36f', 'der Dolmetscher', 'المترجم الفوري', 'interpreter', NULL, 'der', 'die Dolmetscher', 'noun', 'Der Dolmetscher übersetzt mündlich.', 'The interpreter translates orally.', 'B2', 25),
  ('00000000-0000-4000-a000-00006a41c36f', 'die Muttersprache', 'اللغة الأم', 'native language', NULL, 'die', 'die Muttersprachen', 'noun', 'Meine Muttersprache ist Arabisch.', 'My native language is Arabic.', 'B1', 26),
  ('00000000-0000-4000-a000-00006a41c36f', 'falscher Freund', 'الصديق المزيف', 'false friend', NULL, NULL, NULL, 'noun', 'Ein falscher Freund sieht ähnlich aus, bedeutet aber etwas anderes.', 'A false friend looks similar but means something different.', 'C1', 27),
  ('00000000-0000-4000-a000-00006a41c36f', 'die Sprachmittlung', 'الوساطة اللغوية', 'language mediation', NULL, 'die', NULL, 'noun', 'Sprachmittlung vermittelt zwischen Kulturen.', 'Language mediation bridges between cultures.', 'C2', 28),
  ('00000000-0000-4000-a000-00006a41c36f', 'die Äquivalenz', 'التكافؤ', 'equivalence', NULL, 'die', NULL, 'noun', 'Äquivalenz in der Übersetzung ist ein Ideal.', 'Equivalence in translation is an ideal.', 'C2', 29),
  ('00000000-0000-4000-a000-00006a41c36f', 'der Dialekt', 'اللهجة', 'dialect', NULL, 'der', 'die Dialekte', 'noun', 'Der bayerische Dialekt ist schwer zu verstehen.', 'The Bavarian dialect is hard to understand.', 'B2', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006a41c36f', 'Erweiterte Partizipialattribute (Extended Participle Attributes) / الصفات المشتقة الموسعة', 'Extended participle attributes are a hallmark of sophisticated German. Instead of a relative clause, German can place a long phrase between the article and the noun: "der von der Regierung vorgeschlagene Plan" (the plan proposed by the government). These structures condense information and are very common in academic and legal German.', '[{"rule":"Article + (expanded phrase) + noun","note":"der [von der Regierung vorgeschlagene] Plan"},{"rule":"Participle can be Partizip I (aktiv, gleichzeitig) or Partizip II (passiv, vorzeitig)","note":"der lesende Student (the reading student — Partizip I), das gelesene Buch (the read book — Partizip II)"}]', '[{"german":"Der von der Bundesregierung vorgeschlagene Gesetzesentwurf wurde diskutiert.","arabic":"تمت مناقشة مشروع القانون الذي اقترحته الحكومة الاتحادية.","english":"The bill proposed by the federal government was discussed."},{"german":"Die in den letzten Jahren stark gestiegenen Mieten belasten viele Familien.","arabic":"الإيجارات التي ارتفعت بشدة في السنوات الأخيرة تثقل كاهل العائلات.","english":"The rents that have risen sharply in recent years burden many families."}]', '[{"mistake":"Der Plan, der von der Regierung vorgeschlagen wurde (relative clause instead of extended attribute)","correction":"Der von der Regierung vorgeschlagene Plan","explanation":"At C2, extended attributes are preferred over relative clauses for conciseness."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006a41c36f', 'multiple_choice', 'Welches deutsche Wort bedeutet "pragmatics"?', '["die Höflichkeit","der Kontext","der Sprechakt","die Implikatur"]', 'die Pragmatik', '"pragmatics" = "die Pragmatik" in German. Article: die ', 1, 1),
  ('00000000-0000-4000-a000-00006a41c36f', 'multiple_choice', 'Welches deutsche Wort bedeutet "speech act"?', '["der Sprechakt","die Pragmatik","die Implikatur","die Höflichkeit"]', 'der Sprechakt', '"speech act" = "der Sprechakt" in German. Article: der Plural: die Sprechakte', 1, 2),
  ('00000000-0000-4000-a000-00006a41c36f', 'multiple_choice', 'Welches deutsche Wort bedeutet "implicature"?', '["die Pragmatik","der Sprechakt","die Höflichkeit","der Kontext"]', 'die Implikatur', '"implicature" = "die Implikatur" in German. Article: die Plural: die Implikaturen', 1, 3),
  ('00000000-0000-4000-a000-00006a41c36f', 'multiple_choice', 'Welches deutsche Wort bedeutet "context"?', '["die Implikatur","der Sprechakt","der Kontext","die Pragmatik"]', 'der Kontext', '"context" = "der Kontext" in German. Article: der Plural: die Kontexte', 1, 4),
  ('00000000-0000-4000-a000-00006a41c36f', 'multiple_choice', 'Welches deutsche Wort bedeutet "politeness"?', '["der Sprechakt","der Kontext","die Implikatur","die Höflichkeit"]', 'die Höflichkeit', '"politeness" = "die Höflichkeit" in German. Article: die ', 1, 5),
  ('00000000-0000-4000-a000-00006a41c36f', 'fill_gap', 'Ergänzen Sie den Satz: Ich ___ gern über Discourse Markers. (sprechen)', '["spreche","sprichst","spricht","sprechen"]', 'spreche', 'ich spreche gern = I like to speak. Stem: sprech- + e.', 2, 6),
  ('00000000-0000-4000-a000-00006a41c36f', 'translation', 'Übersetzen Sie ins Deutsche: "I am learning about Discourse Markers."', '["Ich lerne über Discourse Markers.","Ich lerne Discourse Markers.","Lerne ich Discourse Markers."]', 'Ich lerne über Discourse Markers.', '"Ich lerne über..." = "I am learning about..."', 2, 7),
  ('00000000-0000-4000-a000-00006a41c36f', 'matching', 'Match: Which word pairs are correct?', '["die Pragmatik - pragmatics, der Sprechakt - speech act"]', 'Matched correctly', 'Each German word has a unique English equivalent.', 2, 8);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-00006a41c36f', 'multiple_choice', 'Was bedeutet "die Pragmatik" auf Deutsch?', '["pragmatics","to run","beautiful","yesterday"]', 'pragmatics', 1, 1),
  ('00000000-0000-4000-a000-00006a41c36f', 'multiple_choice', 'Welcher Artikel gehört zu "der Sprechakt"?', '["der","die","das","den"]', 'der', 1, 2),
  ('00000000-0000-4000-a000-00006a41c36f', 'true_false', 'Das Wort "die Implikatur" gehört zum Thema Discourse Markers.', '["True","False"]', 'True', 1, 3),
  ('00000000-0000-4000-a000-00006a41c36f', 'multiple_choice', 'Welcher Satz verwendet present_tense?', '["Der von der Bundesregierung vorgeschlagene Gesetzesentwurf wurde diskutiert.","Die in den letzten Jahren stark gestiegenen Mieten belasten viele Familien."]', 'Der von der Bundesregierung vorgeschlagene Gesetzesentwurf wurde diskutiert.', 2, 4),
  ('00000000-0000-4000-a000-00006a41c36f', 'true_false', ''Im Deutschen steht das Verb an zweiter Position im Hauptsatz.', '["True","False"]', 'True', 1, 5),
  ('00000000-0000-4000-a000-00006a41c36f', 'fill_blank', 'Complete: Ich ___ (context) Deutsch.', '["der Kontext","lernt","lernst","lernen"]', 'lerne', 2, 6),
  ('00000000-0000-4000-a000-00006a41c36f', 'multiple_choice', 'Wie lautet das deutsche Wort für "politeness"?', '["die Höflichkeit","die Konversationsanalyse","der Stil","das Register"]', 'die Höflichkeit', 1, 7),
  ('00000000-0000-4000-a000-00006a41c36f', 'true_false', 'Im Deutschen werden alle Nomen großgeschrieben.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-00006a41c36f', 'multiple_choice', 'How do you say "please" in a restaurant in Germany?', '["Bitte","Danke","Tschüss","Hallo"]', 'Bitte', 1, 9),
  ('00000000-0000-4000-a000-00006a41c36f', 'fill_blank', 'Wo ___ (to live) du?', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 2, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, french_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-00006a41c36f', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', NULL, 'Used in Pragmatik und Diskursanalyse', 'formal', false, 1),
  ('00000000-0000-4000-a000-00006a41c36f', 'Guten Tag!', 'Good day!', 'نهارك سعيد!', NULL, 'Used in Pragmatik und Diskursanalyse', 'formal', false, 2),
  ('00000000-0000-4000-a000-00006a41c36f', 'Hallo, wie geht es Ihnen?', 'Hello, how are you?', 'مرحباً، كيف حالكم؟', NULL, 'Used in Pragmatik und Diskursanalyse', 'formal', false, 3),
  ('00000000-0000-4000-a000-00006a41c36f', 'Schön, Sie kennenzulernen!', 'Nice to meet you!', 'سعيد بلقائكم!', NULL, 'Used in Pragmatik und Diskursanalyse', 'formal', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-00006a41c36f', 'die die Pragmatik', 'pragmatics — البراغماتية', 'noun', 'vocabulary', 1),
  ('00000000-0000-4000-a000-00006a41c36f', 'der der Sprechakt (die Sprechakte)', 'speech act — فعل الكلام', 'noun', 'vocabulary', 2),
  ('00000000-0000-4000-a000-00006a41c36f', 'die die Implikatur (die Implikaturen)', 'implicature — الاستلزام التخاطبي', 'noun', 'vocabulary', 3),
  ('00000000-0000-4000-a000-00006a41c36f', 'der der Kontext (die Kontexte)', 'context — السياق', 'noun', 'vocabulary', 4),
  ('00000000-0000-4000-a000-00006a41c36f', 'die die Höflichkeit', 'politeness — الأدب / اللباقة', 'noun', 'vocabulary', 5),
  ('00000000-0000-4000-a000-00006a41c36f', 'die die Konversationsanalyse', 'conversation analysis — تحليل المحادثة', 'noun', 'vocabulary', 6),
  ('00000000-0000-4000-a000-00006a41c36f', 'der der Stil (die Stile)', 'style — الأسلوب', 'noun', 'vocabulary', 7),
  ('00000000-0000-4000-a000-00006a41c36f', 'das das Register (die Register)', 'register — المستوى اللغوي', 'noun', 'vocabulary', 8),
  ('00000000-0000-4000-a000-00006a41c36f', 'das das Stilmittel (die Stilmittel)', 'stylistic device — الأداة الأسلوبية', 'noun', 'vocabulary', 9),
  ('00000000-0000-4000-a000-00006a41c36f', 'die die Alliteration (die Alliterationen)', 'alliteration — الجناس', 'noun', 'vocabulary', 10),
  ('00000000-0000-4000-a000-00006a41c36f', 'die die Ellipse (die Ellipsen)', 'ellipsis — الحذف', 'noun', 'vocabulary', 11),
  ('00000000-0000-4000-a000-00006a41c36f', 'die die Hyperbel (die Hyperbeln)', 'hyperbole — المبالغة', 'noun', 'vocabulary', 12),
  ('00000000-0000-4000-a000-00006a41c36f', 'die die Poetik', 'poetics — الشعرية', 'noun', 'vocabulary', 13),
  ('00000000-0000-4000-a000-00006a41c36f', 'der der Vers (die Verse)', 'verse — البيت الشعري', 'noun', 'vocabulary', 14),
  ('00000000-0000-4000-a000-00006a41c36f', 'der der Reim (die Reime)', 'rhyme — القافية', 'noun', 'vocabulary', 15),
  ('00000000-0000-4000-a000-00006a41c36f', 'Der von der Bundesregierung vorgeschlagene Gesetzesentwurf wurde diskutiert.', 'The bill proposed by the federal government was discussed.', 'Erweiterte Partizipialattribute (Extended Participle Attributes)', 'grammar', 16),
  ('00000000-0000-4000-a000-00006a41c36f', 'Die in den letzten Jahren stark gestiegenen Mieten belasten viele Familien.', 'The rents that have risen sharply in recent years burden many families.', 'Erweiterte Partizipialattribute (Extended Participle Attributes)', 'grammar', 17);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, french_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-00006a41c36f', 'Diskursmarker und Kohärenz — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', NULL, 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, french_translation, duration_seconds, speaker_count, scenario) values
  ('00000000-0000-4000-a000-00006a41c36f', 'Diskursmarker und Kohärenz — Hörverständnis', '[Lehrerin]: Guten Morgen! Heute lernen wir Begrüßungen.

[Lehrerin]: Wiederholen Sie: Guten Morgen!

[Student]: Guten Morgen!

[Lehrerin]: Sehr gut! Und wie sagt man "Goodbye"?

[Student]: Auf Wiedersehen!

[Lehrerin]: Perfekt! Bis morgen!', '[Lehrerin]: Good morning! Today we learn greetings.

[Lehrerin]: Repeat: Good morning!

[Student]: Good morning!

[Lehrerin]: Very good! And how do you say goodbye?

[Student]: Goodbye!

[Lehrerin]: Perfect! See you tomorrow!', '[Lehrerin]: صباح الخير! اليوم نتعلم التحيات.

[Lehrerin]: كرروا: صباح الخير!

[Student]: صباح الخير!

[Lehrerin]: جيد جداً! وكيف نقول "وداعاً"؟

[Student]: إلى اللقاء!

[Lehrerin]: ممتاز! إلى الغد!', '[Lehrerin]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: ', 72, 2, 'Pragmatik und Diskursanalyse');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-00006a41c36f', '🔊 Sprechen: Diskursmarker und Kohärenz', 'Presentation: Prepare a 2-minute presentation on "Discourse Markers im deutschsprachigen Raum". Use discourse markers like "zunächst", "darüber hinaus", "abschließend". Your AI partner will ask critical questions afterwards.', 'Discourse Markers', ARRAY['Use discourse markers (also, jedoch, außerdem)','React naturally: "Ach so!", "Echt?", "Das stimmt!"','Paraphrase when you don''t know a word']::text[], ARRAY['die Pragmatik','der Sprechakt','die Implikatur','der Kontext','die Höflichkeit','die Konversationsanalyse','der Stil','das Register']::text[], 120, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-00006a41c36f', '✏️ Schreiben: Diskursmarker und Kohärenz', 'Write a discursive essay (300-350 words) analyzing "Discourse Markers in modern German society". Present both advantages and disadvantages. Use complex sentence structures (Nebensätze mit "obwohl", "trotzdem", "während") and formal register. Conclude with your own position.', ARRAY['Use paragraph breaks for structure','Connect ideas with "außerdem", "deshalb", "jedoch"','Check your verb position in Nebensätze']::text[], ARRAY['die Pragmatik','der Sprechakt','die Implikatur','der Kontext','die Höflichkeit','die Konversationsanalyse','der Stil','das Register']::text[], ARRAY['Sentence structure','Vocabulary usage']::text[], 250, 350, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00006a41c36f', 'Diskursmarker und Kohärenz — Roleplay', 'Discourse Markers', 'Student', 'Teacher', 'Practice conversation about Discourse Markers', 'Hallo! Lass uns über dieses Thema sprechen.', 'advanced', 1, ARRAY['die Pragmatik','der Sprechakt','die Implikatur','der Kontext','die Höflichkeit','die Konversationsanalyse','der Stil','das Register']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00006a41c36f', 'Diskursmarker und Kohärenz — Advanced Roleplay', 'Discourse Markers', 'Customer', 'Assistant', 'Extended conversation about Discourse Markers', 'Guten Tag! Wie kann ich Ihnen helfen?', 'advanced', 2, ARRAY['die Pragmatik','der Sprechakt','die Implikatur','der Kontext','die Höflichkeit','die Konversationsanalyse','der Stil','das Register']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-00006a41c36f', 'Diskursmarker und Kohärenz — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Diskursmarker und Kohärenz".', 'Creative practice for Discourse Markers', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-00006a41c36f', '📚 Hausaufgabe: Diskursmarker und Kohärenz', 'Complete these tasks to reinforce "Diskursmarker und Kohärenz".', 'mixed', '[{"description":"Create 10 flashcards from this lesson''s vocabulary — write German on one side, Arabic on the other. Test yourself 3 times."},{"description":"Write 6 sentences about Discourse Markers: 2 statements, 2 questions, 2 negations — all using present_tense."},{"description":"Record yourself reading the dialogue aloud. Listen to the recording and note 3 things to improve."},{"description":"Find 3 real German websites, videos, or articles about Discourse Markers. Note 5 new words you discovered."}]', 50, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-00006a41c36f', '🎯 Excellent progress! This lesson covered Discourse Markers (60 vocabulary items) and present_tense. You developed reading, listening, speaking, and writing skills in the context of pragmatics. Focus on your common mistakes area for maximum improvement.', '["60 vocabulary items about Discourse Markers","present_tense — grammar explanation and practice","Reading comprehension: text about Discourse Markers","Listening comprehension: dialogue about Discourse Markers","Speaking practice: roleplay/discussion about Discourse Markers","Writing task: text about Discourse Markers"]', '[{"title":"Diskursmarker und Kohärenz Review","summary":"present_tense — the main grammar focus. Focus on nuanced usage, exceptions, and stylistic variation."}]', ARRAY['die Pragmatik (pragmatics)','der Sprechakt (speech act)','die Implikatur (implicature)','der Kontext (context)','die Höflichkeit (politeness)']::text[], ARRAY['Don''t translate from Arabic word-for-word — German has different sentence structure','Learn every noun with its article: NEVER learn "Tisch" alone, always "der Tisch"','Pay attention to Konjunktiv I/II distinction']::text[], ARRAY['Practice 15-20 minutes daily — consistency beats intensity','Speak out loud: German pronunciation needs muscle memory','Use the new vocabulary within 24 hours or you''ll forget it','Watch German YouTube videos about Discourse Markers for authentic input']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006a41c36f', 'translation', 'Translate to German: "I use the word "pragmatics" in a sentence about Discourse Markers."', '[]', 'Pragmatik untersucht Sprache im Kontext.', 'Use die  "die Pragmatik" with the correct present_tense form.', 1, 40);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006a41c36f', 'translation', 'Translate to German: "I use the word "speech act" in a sentence about Discourse Markers."', '[]', 'Der Sprechakt ändert die Wirklichkeit.', 'Use der  "der Sprechakt" with the correct present_tense form.', 1, 41);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006a41c36f', 'translation', 'Translate to German: "I use the word "implicature" in a sentence about Discourse Markers."', '[]', 'Die Implikatur ist die indirekte Bedeutung.', 'Use die  "die Implikatur" with the correct present_tense form.', 1, 42);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006a41c36f', 'Culture: 🇩🇪 Deutsche Kultur: Discourse Markers', 'The German approach to Discourse Markers reflects deeper cultural values: Ordnung (order), Gründlichkeit (thoroughness), and Sachlichkeit (objectivity). Debates about Discourse Markers in German media are characterised by factual argumentation. Understanding these discourse norms is essential for C1/C2 learners who want to participate in academic or professional discussions.

لدى Discourse Markers في ألمانيا فروق ثقافية دقيقة تختلف عن البلدان العربية. الألمان يفصلون بين حياتهم الخاصة والمهنية بشكل صارم.', '["Tip: Always use \"Sie\" (formal) with strangers and colleagues","Tip: Germans appreciate punctuality — arrive 5 minutes early","Tip: Direct feedback is a sign of respect, not criticism","Tip: Prepare factual arguments, not emotional appeals"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006a41c36f', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Incorrect preposition usage after verbs","correction":"Learn which preposition each verb requires (sich freuen auf, warten auf, denken an)","explanation":"Arabic and German have different sentence structures. Arabic is VSO, German is SVO with verb in position 2."},{"mistake":"Incorrect use of Konjunktiv II in polite requests","correction":"Ich hätte gern... (I would like...)","explanation":"Konjunktiv II is often replaced with würde + infinitive in speech"}]', 30);

  -- Lesson 3: Test: Pragmatik und Diskurs (L-C2-03-03)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-00006a41c370', '00000000-0000-4000-a000-000039d176c1', 'Test: Pragmatik und Diskurs', 'Module test on pragmatics and discourse.', 'Module Test', 'test', '["Understand and apply present_tense rules correctly","Use present_tense in real conversations","Avoid common mistakes Arabic speakers make with present_tense","Read and understand present_tense in context","Listen and identify present_tense in speech","Write sentences using present_tense correctly"]', 50, 3, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, french_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-00006a41c370', 'die Pragmatik', 'البراغماتية', 'pragmatics', NULL, 'die', NULL, 'noun', 'Pragmatik untersucht Sprache im Kontext.', 'Pragmatics studies language in context.', 'C2', 1),
  ('00000000-0000-4000-a000-00006a41c370', 'der Sprechakt', 'فعل الكلام', 'speech act', NULL, 'der', 'die Sprechakte', 'noun', 'Der Sprechakt ändert die Wirklichkeit.', 'The speech act changes reality.', 'C2', 2),
  ('00000000-0000-4000-a000-00006a41c370', 'die Implikatur', 'الاستلزام التخاطبي', 'implicature', NULL, 'die', 'die Implikaturen', 'noun', 'Die Implikatur ist die indirekte Bedeutung.', 'Implicature is the indirect meaning.', 'C2', 3),
  ('00000000-0000-4000-a000-00006a41c370', 'der Kontext', 'السياق', 'context', NULL, 'der', 'die Kontexte', 'noun', 'Der Kontext bestimmt die Bedeutung.', 'Context determines meaning.', 'B2', 4),
  ('00000000-0000-4000-a000-00006a41c370', 'die Höflichkeit', 'الأدب / اللباقة', 'politeness', NULL, 'die', NULL, 'noun', 'Höflichkeit ist in Japan sehr wichtig.', 'Politeness is very important in Japan.', 'B2', 5),
  ('00000000-0000-4000-a000-00006a41c370', 'die Konversationsanalyse', 'تحليل المحادثة', 'conversation analysis', NULL, 'die', NULL, 'noun', 'Die Konversationsanalyse untersucht Gespräche.', 'Conversation analysis examines conversations.', 'C2', 6),
  ('00000000-0000-4000-a000-00006a41c370', 'der Stil', 'الأسلوب', 'style', NULL, 'der', 'die Stile', 'noun', 'Der Stil des Textes ist formell.', 'The style of the text is formal.', 'B2', 7),
  ('00000000-0000-4000-a000-00006a41c370', 'das Register', 'المستوى اللغوي', 'register', NULL, 'das', 'die Register', 'noun', 'Das Register passt zur Situation.', 'The register fits the situation.', 'C1', 8),
  ('00000000-0000-4000-a000-00006a41c370', 'das Stilmittel', 'الأداة الأسلوبية', 'stylistic device', NULL, 'das', 'die Stilmittel', 'noun', 'Das Stilmittel unterstreicht die Aussage.', 'The stylistic device emphasizes the statement.', 'C1', 9),
  ('00000000-0000-4000-a000-00006a41c370', 'die Alliteration', 'الجناس', 'alliteration', NULL, 'die', 'die Alliterationen', 'noun', 'Die Alliteration wiederholt den Anlaut.', 'Alliteration repeats the initial sound.', 'C2', 10),
  ('00000000-0000-4000-a000-00006a41c370', 'die Ellipse', 'الحذف', 'ellipsis', NULL, 'die', 'die Ellipsen', 'noun', 'Die Ellipse spart Wörter aus.', 'The ellipsis omits words.', 'C2', 11),
  ('00000000-0000-4000-a000-00006a41c370', 'die Hyperbel', 'المبالغة', 'hyperbole', NULL, 'die', 'die Hyperbeln', 'noun', 'Die Hyperbel übertreibt stark.', 'Hyperbole exaggerates strongly.', 'C2', 12),
  ('00000000-0000-4000-a000-00006a41c370', 'die Poetik', 'الشعرية', 'poetics', NULL, 'die', NULL, 'noun', 'Poetik ist die Theorie der Dichtkunst.', 'Poetics is the theory of poetry.', 'C2', 13),
  ('00000000-0000-4000-a000-00006a41c370', 'der Vers', 'البيت الشعري', 'verse', NULL, 'der', 'die Verse', 'noun', 'Der Vers hat fünf Hebungen.', 'The verse has five stresses.', 'C1', 14),
  ('00000000-0000-4000-a000-00006a41c370', 'der Reim', 'القافية', 'rhyme', NULL, 'der', 'die Reime', 'noun', 'Der Reim verbindet die Zeilen.', 'Rhyme connects the lines.', 'C1', 15),
  ('00000000-0000-4000-a000-00006a41c370', 'das Metrum', 'الوزن', 'meter', NULL, 'das', 'die Metren', 'noun', 'Das Metrum bestimmt den Rhythmus.', 'The meter determines the rhythm.', 'C2', 16),
  ('00000000-0000-4000-a000-00006a41c370', 'die Gattung', 'النوع الأدبي', 'genre', NULL, 'die', 'die Gattungen', 'noun', 'Lyrik ist eine literarische Gattung.', 'Lyric poetry is a literary genre.', 'C1', 17),
  ('00000000-0000-4000-a000-00006a41c370', 'die Bedeutung', 'المعنى', 'meaning', NULL, 'die', 'die Bedeutungen', 'noun', 'Die Bedeutung des Wortes ist klar.', 'The meaning of the word is clear.', 'B2', 18),
  ('00000000-0000-4000-a000-00006a41c370', 'die Synonymie', 'الترادف', 'synonymy', NULL, 'die', NULL, 'noun', 'Synonymie bedeutet Bedeutungsgleichheit.', 'Synonymy means sameness of meaning.', 'C2', 19),
  ('00000000-0000-4000-a000-00006a41c370', 'die Antonymie', 'التضاد', 'antonymy', NULL, 'die', NULL, 'noun', 'Antonymie bezeichnet Gegensätze.', 'Antonymy denotes opposites.', 'C2', 20),
  ('00000000-0000-4000-a000-00006a41c370', 'die Polysemie', 'تعدد المعاني', 'polysemy', NULL, 'die', NULL, 'noun', 'Polysemie hat mehrere Bedeutungen.', 'Polysemy has multiple meanings.', 'C2', 21),
  ('00000000-0000-4000-a000-00006a41c370', 'die Kompositionalität', 'التركيبية', 'compositionality', NULL, 'die', NULL, 'noun', 'Kompositionalität besagt, dass Bedeutung aus Teilen besteht.', 'Compositionality holds that meaning consists of parts.', 'C2', 22),
  ('00000000-0000-4000-a000-00006a41c370', 'die Übersetzung', 'الترجمة', 'translation', NULL, 'die', 'die Übersetzungen', 'noun', 'Die Übersetzung ist gelungen.', 'The translation is successful.', 'B2', 23),
  ('00000000-0000-4000-a000-00006a41c370', 'übersetzen', 'يترجم', 'to translate', NULL, NULL, NULL, 'verb', 'Ich übersetze den Text ins Arabische.', 'I translate the text into Arabic.', 'B1', 24),
  ('00000000-0000-4000-a000-00006a41c370', 'der Dolmetscher', 'المترجم الفوري', 'interpreter', NULL, 'der', 'die Dolmetscher', 'noun', 'Der Dolmetscher übersetzt mündlich.', 'The interpreter translates orally.', 'B2', 25),
  ('00000000-0000-4000-a000-00006a41c370', 'die Muttersprache', 'اللغة الأم', 'native language', NULL, 'die', 'die Muttersprachen', 'noun', 'Meine Muttersprache ist Arabisch.', 'My native language is Arabic.', 'B1', 26),
  ('00000000-0000-4000-a000-00006a41c370', 'falscher Freund', 'الصديق المزيف', 'false friend', NULL, NULL, NULL, 'noun', 'Ein falscher Freund sieht ähnlich aus, bedeutet aber etwas anderes.', 'A false friend looks similar but means something different.', 'C1', 27),
  ('00000000-0000-4000-a000-00006a41c370', 'die Sprachmittlung', 'الوساطة اللغوية', 'language mediation', NULL, 'die', NULL, 'noun', 'Sprachmittlung vermittelt zwischen Kulturen.', 'Language mediation bridges between cultures.', 'C2', 28),
  ('00000000-0000-4000-a000-00006a41c370', 'die Äquivalenz', 'التكافؤ', 'equivalence', NULL, 'die', NULL, 'noun', 'Äquivalenz in der Übersetzung ist ein Ideal.', 'Equivalence in translation is an ideal.', 'C2', 29),
  ('00000000-0000-4000-a000-00006a41c370', 'der Dialekt', 'اللهجة', 'dialect', NULL, 'der', 'die Dialekte', 'noun', 'Der bayerische Dialekt ist schwer zu verstehen.', 'The Bavarian dialect is hard to understand.', 'B2', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006a41c370', 'Module Partikeln und Satzgliedstellung (Modal Particles and Word Order Nuances) / الجزيئات النمطية وترتيب الكلمات الدقيق', 'Modal particles (doch, ja, eben, halt, wohl, eigentlich, denn, mal) add nuance and emotion to statements. They are almost impossible to translate directly but are essential for natural German. At C2, their correct placement and usage distinguishes near-native from advanced learners.', '[{"rule":"doch: contradiction or emphasis","note":"Das ist doch nicht wahr! (That''s just not true!)"},{"rule":"ja: shared knowledge reminder","note":"Das ist ja interessant! (That IS interesting! — as we both know)"},{"rule":"denn: in W-questions (casual)","note":"Was machst du denn da? (What are you doing there? — curious, not accusatory)"}]', '[{"german":"Das ist doch eine gute Idee, oder?","arabic":"هذه فكرة جيدة، أليس كذلك؟ (تأكيد)","english":"That IS a good idea, isn''t it?"},{"german":"Komm mal her, bitte.","arabic":"تعال إلى هنا من فضلك. (طلاقة)","english":"Come here, please. (softening)"},{"german":"Was hast du eigentlich studiert?","arabic":"ماذا درست بالمناسبة؟","english":"What did you study, by the way?"}]', '[{"mistake":"Speaking without modal particles (too textbook-like)","correction":"Das ist doch klar! (not just \"Das ist klar\")","explanation":"Without modal particles, German sounds robotic. At C2, particles show naturalness."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006a41c370', 'multiple_choice', 'Welches deutsche Wort bedeutet "pragmatics"?', '["der Kontext","die Höflichkeit","die Implikatur","der Sprechakt"]', 'die Pragmatik', '"pragmatics" = "die Pragmatik" in German. Article: die ', 1, 1),
  ('00000000-0000-4000-a000-00006a41c370', 'multiple_choice', 'Welches deutsche Wort bedeutet "speech act"?', '["der Sprechakt","die Implikatur","die Höflichkeit","der Kontext"]', 'der Sprechakt', '"speech act" = "der Sprechakt" in German. Article: der Plural: die Sprechakte', 1, 2),
  ('00000000-0000-4000-a000-00006a41c370', 'multiple_choice', 'Welches deutsche Wort bedeutet "implicature"?', '["die Höflichkeit","der Sprechakt","der Kontext","die Pragmatik"]', 'die Implikatur', '"implicature" = "die Implikatur" in German. Article: die Plural: die Implikaturen', 1, 3),
  ('00000000-0000-4000-a000-00006a41c370', 'multiple_choice', 'Welches deutsche Wort bedeutet "context"?', '["der Sprechakt","die Pragmatik","der Kontext","die Höflichkeit"]', 'der Kontext', '"context" = "der Kontext" in German. Article: der Plural: die Kontexte', 1, 4),
  ('00000000-0000-4000-a000-00006a41c370', 'multiple_choice', 'Welches deutsche Wort bedeutet "politeness"?', '["die Höflichkeit","der Kontext","die Pragmatik","der Sprechakt"]', 'die Höflichkeit', '"politeness" = "die Höflichkeit" in German. Article: die ', 1, 5),
  ('00000000-0000-4000-a000-00006a41c370', 'fill_gap', 'Ergänzen Sie den Satz: Ich ___ gern über Module Test. (sprechen)', '["spreche","sprichst","spricht","sprechen"]', 'spreche', 'ich spreche gern = I like to speak. Stem: sprech- + e.', 2, 6),
  ('00000000-0000-4000-a000-00006a41c370', 'translation', 'Übersetzen Sie ins Deutsche: "I am learning about Module Test."', '["Ich lerne über Module Test.","Ich lerne Module Test.","Lerne ich Module Test."]', 'Ich lerne über Module Test.', '"Ich lerne über..." = "I am learning about..."', 2, 7),
  ('00000000-0000-4000-a000-00006a41c370', 'matching', 'Match: Which word pairs are correct?', '["die Pragmatik - pragmatics, der Sprechakt - speech act"]', 'Matched correctly', 'Each German word has a unique English equivalent.', 2, 8);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-00006a41c370', 'multiple_choice', 'Was bedeutet "die Pragmatik" auf Deutsch?', '["pragmatics","to run","beautiful","yesterday"]', 'pragmatics', 1, 1),
  ('00000000-0000-4000-a000-00006a41c370', 'multiple_choice', 'Welcher Artikel gehört zu "der Sprechakt"?', '["der","die","das","den"]', 'der', 1, 2),
  ('00000000-0000-4000-a000-00006a41c370', 'true_false', 'Das Wort "die Implikatur" gehört zum Thema Module Test.', '["True","False"]', 'True', 1, 3),
  ('00000000-0000-4000-a000-00006a41c370', 'multiple_choice', 'Welcher Satz verwendet present_tense?', '["Das ist doch eine gute Idee, oder?","Komm mal her, bitte.","Was hast du eigentlich studiert?"]', 'Das ist doch eine gute Idee, oder?', 2, 4),
  ('00000000-0000-4000-a000-00006a41c370', 'true_false', ''Im Deutschen steht das Verb an zweiter Position im Hauptsatz.', '["True","False"]', 'True', 1, 5),
  ('00000000-0000-4000-a000-00006a41c370', 'fill_blank', 'Complete: Ich ___ (context) Deutsch.', '["der Kontext","lernt","lernst","lernen"]', 'lerne', 2, 6),
  ('00000000-0000-4000-a000-00006a41c370', 'multiple_choice', 'Wie lautet das deutsche Wort für "politeness"?', '["die Höflichkeit","die Konversationsanalyse","der Stil","das Register"]', 'die Höflichkeit', 1, 7),
  ('00000000-0000-4000-a000-00006a41c370', 'true_false', 'Im Deutschen werden alle Nomen großgeschrieben.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-00006a41c370', 'multiple_choice', 'How do you say "please" in a restaurant in Germany?', '["Bitte","Danke","Tschüss","Hallo"]', 'Bitte', 1, 9),
  ('00000000-0000-4000-a000-00006a41c370', 'fill_blank', 'Wo ___ (to live) du?', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 2, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, french_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-00006a41c370', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', NULL, 'Used in Pragmatik und Diskursanalyse', 'formal', false, 1),
  ('00000000-0000-4000-a000-00006a41c370', 'Guten Tag!', 'Good day!', 'نهارك سعيد!', NULL, 'Used in Pragmatik und Diskursanalyse', 'formal', false, 2),
  ('00000000-0000-4000-a000-00006a41c370', 'Hallo, wie geht es Ihnen?', 'Hello, how are you?', 'مرحباً، كيف حالكم؟', NULL, 'Used in Pragmatik und Diskursanalyse', 'formal', false, 3),
  ('00000000-0000-4000-a000-00006a41c370', 'Schön, Sie kennenzulernen!', 'Nice to meet you!', 'سعيد بلقائكم!', NULL, 'Used in Pragmatik und Diskursanalyse', 'formal', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-00006a41c370', 'die die Pragmatik', 'pragmatics — البراغماتية', 'noun', 'vocabulary', 1),
  ('00000000-0000-4000-a000-00006a41c370', 'der der Sprechakt (die Sprechakte)', 'speech act — فعل الكلام', 'noun', 'vocabulary', 2),
  ('00000000-0000-4000-a000-00006a41c370', 'die die Implikatur (die Implikaturen)', 'implicature — الاستلزام التخاطبي', 'noun', 'vocabulary', 3),
  ('00000000-0000-4000-a000-00006a41c370', 'der der Kontext (die Kontexte)', 'context — السياق', 'noun', 'vocabulary', 4),
  ('00000000-0000-4000-a000-00006a41c370', 'die die Höflichkeit', 'politeness — الأدب / اللباقة', 'noun', 'vocabulary', 5),
  ('00000000-0000-4000-a000-00006a41c370', 'die die Konversationsanalyse', 'conversation analysis — تحليل المحادثة', 'noun', 'vocabulary', 6),
  ('00000000-0000-4000-a000-00006a41c370', 'der der Stil (die Stile)', 'style — الأسلوب', 'noun', 'vocabulary', 7),
  ('00000000-0000-4000-a000-00006a41c370', 'das das Register (die Register)', 'register — المستوى اللغوي', 'noun', 'vocabulary', 8),
  ('00000000-0000-4000-a000-00006a41c370', 'das das Stilmittel (die Stilmittel)', 'stylistic device — الأداة الأسلوبية', 'noun', 'vocabulary', 9),
  ('00000000-0000-4000-a000-00006a41c370', 'die die Alliteration (die Alliterationen)', 'alliteration — الجناس', 'noun', 'vocabulary', 10),
  ('00000000-0000-4000-a000-00006a41c370', 'die die Ellipse (die Ellipsen)', 'ellipsis — الحذف', 'noun', 'vocabulary', 11),
  ('00000000-0000-4000-a000-00006a41c370', 'die die Hyperbel (die Hyperbeln)', 'hyperbole — المبالغة', 'noun', 'vocabulary', 12),
  ('00000000-0000-4000-a000-00006a41c370', 'die die Poetik', 'poetics — الشعرية', 'noun', 'vocabulary', 13),
  ('00000000-0000-4000-a000-00006a41c370', 'der der Vers (die Verse)', 'verse — البيت الشعري', 'noun', 'vocabulary', 14),
  ('00000000-0000-4000-a000-00006a41c370', 'der der Reim (die Reime)', 'rhyme — القافية', 'noun', 'vocabulary', 15),
  ('00000000-0000-4000-a000-00006a41c370', 'Das ist doch eine gute Idee, oder?', 'That IS a good idea, isn''t it?', 'Module Partikeln und Satzgliedstellung (Modal Particles and Word Order Nuances)', 'grammar', 16),
  ('00000000-0000-4000-a000-00006a41c370', 'Komm mal her, bitte.', 'Come here, please. (softening)', 'Module Partikeln und Satzgliedstellung (Modal Particles and Word Order Nuances)', 'grammar', 17),
  ('00000000-0000-4000-a000-00006a41c370', 'Was hast du eigentlich studiert?', 'What did you study, by the way?', 'Module Partikeln und Satzgliedstellung (Modal Particles and Word Order Nuances)', 'grammar', 18);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, french_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-00006a41c370', 'Test: Pragmatik und Diskurs — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', NULL, 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, french_translation, duration_seconds, speaker_count, scenario) values
  ('00000000-0000-4000-a000-00006a41c370', 'Test: Pragmatik und Diskurs — Hörverständnis', '[Lehrerin]: Guten Morgen! Heute lernen wir Begrüßungen.

[Lehrerin]: Wiederholen Sie: Guten Morgen!

[Student]: Guten Morgen!

[Lehrerin]: Sehr gut! Und wie sagt man "Goodbye"?

[Student]: Auf Wiedersehen!

[Lehrerin]: Perfekt! Bis morgen!', '[Lehrerin]: Good morning! Today we learn greetings.

[Lehrerin]: Repeat: Good morning!

[Student]: Good morning!

[Lehrerin]: Very good! And how do you say goodbye?

[Student]: Goodbye!

[Lehrerin]: Perfect! See you tomorrow!', '[Lehrerin]: صباح الخير! اليوم نتعلم التحيات.

[Lehrerin]: كرروا: صباح الخير!

[Student]: صباح الخير!

[Lehrerin]: جيد جداً! وكيف نقول "وداعاً"؟

[Student]: إلى اللقاء!

[Lehrerin]: ممتاز! إلى الغد!', '[Lehrerin]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: ', 72, 2, 'Pragmatik und Diskursanalyse');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-00006a41c370', '🔊 Sprechen: Test: Pragmatik und Diskurs', 'Presentation: Prepare a 2-minute presentation on "Module Test im deutschsprachigen Raum". Use discourse markers like "zunächst", "darüber hinaus", "abschließend". Your AI partner will ask critical questions afterwards.', 'Module Test', ARRAY['Use discourse markers (also, jedoch, außerdem)','React naturally: "Ach so!", "Echt?", "Das stimmt!"','Paraphrase when you don''t know a word']::text[], ARRAY['die Pragmatik','der Sprechakt','die Implikatur','der Kontext','die Höflichkeit','die Konversationsanalyse','der Stil','das Register']::text[], 120, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-00006a41c370', '✏️ Schreiben: Test: Pragmatik und Diskurs', 'Write a discursive essay (300-350 words) analyzing "Module Test in modern German society". Present both advantages and disadvantages. Use complex sentence structures (Nebensätze mit "obwohl", "trotzdem", "während") and formal register. Conclude with your own position.', ARRAY['Use paragraph breaks for structure','Connect ideas with "außerdem", "deshalb", "jedoch"','Check your verb position in Nebensätze']::text[], ARRAY['die Pragmatik','der Sprechakt','die Implikatur','der Kontext','die Höflichkeit','die Konversationsanalyse','der Stil','das Register']::text[], ARRAY['Sentence structure','Vocabulary usage']::text[], 250, 350, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00006a41c370', 'Test: Pragmatik und Diskurs — Roleplay', 'Module Test', 'Student', 'Teacher', 'Practice conversation about Module Test', 'Hallo! Lass uns über dieses Thema sprechen.', 'advanced', 1, ARRAY['die Pragmatik','der Sprechakt','die Implikatur','der Kontext','die Höflichkeit','die Konversationsanalyse','der Stil','das Register']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00006a41c370', 'Test: Pragmatik und Diskurs — Advanced Roleplay', 'Module Test', 'Customer', 'Assistant', 'Extended conversation about Module Test', 'Guten Tag! Wie kann ich Ihnen helfen?', 'advanced', 2, ARRAY['die Pragmatik','der Sprechakt','die Implikatur','der Kontext','die Höflichkeit','die Konversationsanalyse','der Stil','das Register']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-00006a41c370', 'Test: Pragmatik und Diskurs — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Test: Pragmatik und Diskurs".', 'Creative practice for Module Test', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-00006a41c370', '📚 Hausaufgabe: Test: Pragmatik und Diskurs', 'Complete these tasks to reinforce "Test: Pragmatik und Diskurs".', 'mixed', '[{"description":"Create 10 flashcards from this lesson''s vocabulary — write German on one side, Arabic on the other. Test yourself 3 times."},{"description":"Write 6 sentences about Module Test: 2 statements, 2 questions, 2 negations — all using present_tense."},{"description":"Record yourself reading the dialogue aloud. Listen to the recording and note 3 things to improve."},{"description":"Find 3 real German websites, videos, or articles about Module Test. Note 5 new words you discovered."}]', 50, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-00006a41c370', '🎯 Excellent progress! This lesson covered Module Test (60 vocabulary items) and present_tense. You developed reading, listening, speaking, and writing skills in the context of pragmatics. Focus on your common mistakes area for maximum improvement.', '["60 vocabulary items about Module Test","present_tense — grammar explanation and practice","Reading comprehension: text about Module Test","Listening comprehension: dialogue about Module Test","Speaking practice: roleplay/discussion about Module Test","Writing task: text about Module Test"]', '[{"title":"Test: Pragmatik und Diskurs Review","summary":"present_tense — the main grammar focus. Focus on nuanced usage, exceptions, and stylistic variation."}]', ARRAY['die Pragmatik (pragmatics)','der Sprechakt (speech act)','die Implikatur (implicature)','der Kontext (context)','die Höflichkeit (politeness)']::text[], ARRAY['Don''t translate from Arabic word-for-word — German has different sentence structure','Learn every noun with its article: NEVER learn "Tisch" alone, always "der Tisch"','Pay attention to Konjunktiv I/II distinction']::text[], ARRAY['Practice 15-20 minutes daily — consistency beats intensity','Speak out loud: German pronunciation needs muscle memory','Use the new vocabulary within 24 hours or you''ll forget it','Watch German YouTube videos about Module Test for authentic input']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006a41c370', 'translation', 'Translate to German: "I use the word "pragmatics" in a sentence about Module Test."', '[]', 'Pragmatik untersucht Sprache im Kontext.', 'Use die  "die Pragmatik" with the correct present_tense form.', 1, 40);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006a41c370', 'translation', 'Translate to German: "I use the word "speech act" in a sentence about Module Test."', '[]', 'Der Sprechakt ändert die Wirklichkeit.', 'Use der  "der Sprechakt" with the correct present_tense form.', 1, 41);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006a41c370', 'translation', 'Translate to German: "I use the word "implicature" in a sentence about Module Test."', '[]', 'Die Implikatur ist die indirekte Bedeutung.', 'Use die  "die Implikatur" with the correct present_tense form.', 1, 42);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006a41c370', 'Culture: 🇩🇪 Deutsche Kultur: Module Test', 'The German approach to Module Test reflects deeper cultural values: Ordnung (order), Gründlichkeit (thoroughness), and Sachlichkeit (objectivity). Debates about Module Test in German media are characterised by factual argumentation. Understanding these discourse norms is essential for C1/C2 learners who want to participate in academic or professional discussions.

لدى Module Test في ألمانيا فروق ثقافية دقيقة تختلف عن البلدان العربية. الألمان يفصلون بين حياتهم الخاصة والمهنية بشكل صارم.', '["Tip: Always use \"Sie\" (formal) with strangers and colleagues","Tip: Germans appreciate punctuality — arrive 5 minutes early","Tip: Direct feedback is a sign of respect, not criticism","Tip: Prepare factual arguments, not emotional appeals"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006a41c370', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Incorrect preposition usage after verbs","correction":"Learn which preposition each verb requires (sich freuen auf, warten auf, denken an)","explanation":"Arabic and German have different sentence structures. Arabic is VSO, German is SVO with verb in position 2."},{"mistake":"Incorrect use of Konjunktiv II in polite requests","correction":"Ich hätte gern... (I would like...)","explanation":"Konjunktiv II is often replaced with würde + infinitive in speech"}]', 30);

  -- Module 4: Übersetzung und Sprachmittlung
  insert into public.course_modules (id, level_id, title, description, objectives, order_index, estimated_hours, is_published)
  values ('00000000-0000-4000-a000-000039d176c2', 'C2', 'Übersetzung und Sprachmittlung', 'Master translation and language mediation techniques.', '["Translate between German and Arabic","Mediate between languages","Handle false friends and idioms","Use translation technology","Write target-language oriented texts"]', 4, 5, true)
  on conflict (id) do nothing;

  -- Lesson 1: Übersetzungstechniken (L-C2-04-01)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-00006a4237cd', '00000000-0000-4000-a000-000039d176c2', 'Übersetzungstechniken', 'Learn translation methods for German-Arabic pairs.', 'Translation Techniques', 'vocabulary', '["Understand and use 60 key vocabulary words about Translation Techniques","Apply present_tense correctly in sentences","Read and comprehend a text about Translation Techniques","Listen and understand a natural dialogue about Translation Techniques","Speak about Translation Techniques with confidence","Write a short text about Translation Techniques using new vocabulary"]', 60, 1, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, french_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-00006a4237cd', 'die Übersetzung', 'الترجمة', 'translation', NULL, 'die', 'die Übersetzungen', 'noun', 'Die Übersetzung ist gelungen.', 'The translation is successful.', 'B2', 1),
  ('00000000-0000-4000-a000-00006a4237cd', 'übersetzen', 'يترجم', 'to translate', NULL, NULL, NULL, 'verb', 'Ich übersetze den Text ins Arabische.', 'I translate the text into Arabic.', 'B1', 2),
  ('00000000-0000-4000-a000-00006a4237cd', 'der Dolmetscher', 'المترجم الفوري', 'interpreter', NULL, 'der', 'die Dolmetscher', 'noun', 'Der Dolmetscher übersetzt mündlich.', 'The interpreter translates orally.', 'B2', 3),
  ('00000000-0000-4000-a000-00006a4237cd', 'die Muttersprache', 'اللغة الأم', 'native language', NULL, 'die', 'die Muttersprachen', 'noun', 'Meine Muttersprache ist Arabisch.', 'My native language is Arabic.', 'B1', 4),
  ('00000000-0000-4000-a000-00006a4237cd', 'falscher Freund', 'الصديق المزيف', 'false friend', NULL, NULL, NULL, 'noun', 'Ein falscher Freund sieht ähnlich aus, bedeutet aber etwas anderes.', 'A false friend looks similar but means something different.', 'C1', 5),
  ('00000000-0000-4000-a000-00006a4237cd', 'die Sprachmittlung', 'الوساطة اللغوية', 'language mediation', NULL, 'die', NULL, 'noun', 'Sprachmittlung vermittelt zwischen Kulturen.', 'Language mediation bridges between cultures.', 'C2', 6),
  ('00000000-0000-4000-a000-00006a4237cd', 'die Äquivalenz', 'التكافؤ', 'equivalence', NULL, 'die', NULL, 'noun', 'Äquivalenz in der Übersetzung ist ein Ideal.', 'Equivalence in translation is an ideal.', 'C2', 7),
  ('00000000-0000-4000-a000-00006a4237cd', 'der Stil', 'الأسلوب', 'style', NULL, 'der', 'die Stile', 'noun', 'Der Stil des Textes ist formell.', 'The style of the text is formal.', 'B2', 8),
  ('00000000-0000-4000-a000-00006a4237cd', 'das Register', 'المستوى اللغوي', 'register', NULL, 'das', 'die Register', 'noun', 'Das Register passt zur Situation.', 'The register fits the situation.', 'C1', 9),
  ('00000000-0000-4000-a000-00006a4237cd', 'das Stilmittel', 'الأداة الأسلوبية', 'stylistic device', NULL, 'das', 'die Stilmittel', 'noun', 'Das Stilmittel unterstreicht die Aussage.', 'The stylistic device emphasizes the statement.', 'C1', 10),
  ('00000000-0000-4000-a000-00006a4237cd', 'die Alliteration', 'الجناس', 'alliteration', NULL, 'die', 'die Alliterationen', 'noun', 'Die Alliteration wiederholt den Anlaut.', 'Alliteration repeats the initial sound.', 'C2', 11),
  ('00000000-0000-4000-a000-00006a4237cd', 'die Ellipse', 'الحذف', 'ellipsis', NULL, 'die', 'die Ellipsen', 'noun', 'Die Ellipse spart Wörter aus.', 'The ellipsis omits words.', 'C2', 12),
  ('00000000-0000-4000-a000-00006a4237cd', 'die Hyperbel', 'المبالغة', 'hyperbole', NULL, 'die', 'die Hyperbeln', 'noun', 'Die Hyperbel übertreibt stark.', 'Hyperbole exaggerates strongly.', 'C2', 13),
  ('00000000-0000-4000-a000-00006a4237cd', 'die Poetik', 'الشعرية', 'poetics', NULL, 'die', NULL, 'noun', 'Poetik ist die Theorie der Dichtkunst.', 'Poetics is the theory of poetry.', 'C2', 14),
  ('00000000-0000-4000-a000-00006a4237cd', 'der Vers', 'البيت الشعري', 'verse', NULL, 'der', 'die Verse', 'noun', 'Der Vers hat fünf Hebungen.', 'The verse has five stresses.', 'C1', 15),
  ('00000000-0000-4000-a000-00006a4237cd', 'der Reim', 'القافية', 'rhyme', NULL, 'der', 'die Reime', 'noun', 'Der Reim verbindet die Zeilen.', 'Rhyme connects the lines.', 'C1', 16),
  ('00000000-0000-4000-a000-00006a4237cd', 'das Metrum', 'الوزن', 'meter', NULL, 'das', 'die Metren', 'noun', 'Das Metrum bestimmt den Rhythmus.', 'The meter determines the rhythm.', 'C2', 17),
  ('00000000-0000-4000-a000-00006a4237cd', 'die Gattung', 'النوع الأدبي', 'genre', NULL, 'die', 'die Gattungen', 'noun', 'Lyrik ist eine literarische Gattung.', 'Lyric poetry is a literary genre.', 'C1', 18),
  ('00000000-0000-4000-a000-00006a4237cd', 'die Pragmatik', 'البراغماتية', 'pragmatics', NULL, 'die', NULL, 'noun', 'Pragmatik untersucht Sprache im Kontext.', 'Pragmatics studies language in context.', 'C2', 19),
  ('00000000-0000-4000-a000-00006a4237cd', 'der Sprechakt', 'فعل الكلام', 'speech act', NULL, 'der', 'die Sprechakte', 'noun', 'Der Sprechakt ändert die Wirklichkeit.', 'The speech act changes reality.', 'C2', 20),
  ('00000000-0000-4000-a000-00006a4237cd', 'die Implikatur', 'الاستلزام التخاطبي', 'implicature', NULL, 'die', 'die Implikaturen', 'noun', 'Die Implikatur ist die indirekte Bedeutung.', 'Implicature is the indirect meaning.', 'C2', 21),
  ('00000000-0000-4000-a000-00006a4237cd', 'der Kontext', 'السياق', 'context', NULL, 'der', 'die Kontexte', 'noun', 'Der Kontext bestimmt die Bedeutung.', 'Context determines meaning.', 'B2', 22),
  ('00000000-0000-4000-a000-00006a4237cd', 'die Höflichkeit', 'الأدب / اللباقة', 'politeness', NULL, 'die', NULL, 'noun', 'Höflichkeit ist in Japan sehr wichtig.', 'Politeness is very important in Japan.', 'B2', 23),
  ('00000000-0000-4000-a000-00006a4237cd', 'die Konversationsanalyse', 'تحليل المحادثة', 'conversation analysis', NULL, 'die', NULL, 'noun', 'Die Konversationsanalyse untersucht Gespräche.', 'Conversation analysis examines conversations.', 'C2', 24),
  ('00000000-0000-4000-a000-00006a4237cd', 'die Bedeutung', 'المعنى', 'meaning', NULL, 'die', 'die Bedeutungen', 'noun', 'Die Bedeutung des Wortes ist klar.', 'The meaning of the word is clear.', 'B2', 25),
  ('00000000-0000-4000-a000-00006a4237cd', 'die Synonymie', 'الترادف', 'synonymy', NULL, 'die', NULL, 'noun', 'Synonymie bedeutet Bedeutungsgleichheit.', 'Synonymy means sameness of meaning.', 'C2', 26),
  ('00000000-0000-4000-a000-00006a4237cd', 'die Antonymie', 'التضاد', 'antonymy', NULL, 'die', NULL, 'noun', 'Antonymie bezeichnet Gegensätze.', 'Antonymy denotes opposites.', 'C2', 27),
  ('00000000-0000-4000-a000-00006a4237cd', 'die Polysemie', 'تعدد المعاني', 'polysemy', NULL, 'die', NULL, 'noun', 'Polysemie hat mehrere Bedeutungen.', 'Polysemy has multiple meanings.', 'C2', 28),
  ('00000000-0000-4000-a000-00006a4237cd', 'die Kompositionalität', 'التركيبية', 'compositionality', NULL, 'die', NULL, 'noun', 'Kompositionalität besagt, dass Bedeutung aus Teilen besteht.', 'Compositionality holds that meaning consists of parts.', 'C2', 29),
  ('00000000-0000-4000-a000-00006a4237cd', 'der Dialekt', 'اللهجة', 'dialect', NULL, 'der', 'die Dialekte', 'noun', 'Der bayerische Dialekt ist schwer zu verstehen.', 'The Bavarian dialect is hard to understand.', 'B2', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006a4237cd', 'Module Partikeln und Satzgliedstellung (Modal Particles and Word Order Nuances) / الجزيئات النمطية وترتيب الكلمات الدقيق', 'Modal particles (doch, ja, eben, halt, wohl, eigentlich, denn, mal) add nuance and emotion to statements. They are almost impossible to translate directly but are essential for natural German. At C2, their correct placement and usage distinguishes near-native from advanced learners.', '[{"rule":"doch: contradiction or emphasis","note":"Das ist doch nicht wahr! (That''s just not true!)"},{"rule":"ja: shared knowledge reminder","note":"Das ist ja interessant! (That IS interesting! — as we both know)"},{"rule":"denn: in W-questions (casual)","note":"Was machst du denn da? (What are you doing there? — curious, not accusatory)"}]', '[{"german":"Das ist doch eine gute Idee, oder?","arabic":"هذه فكرة جيدة، أليس كذلك؟ (تأكيد)","english":"That IS a good idea, isn''t it?"},{"german":"Komm mal her, bitte.","arabic":"تعال إلى هنا من فضلك. (طلاقة)","english":"Come here, please. (softening)"},{"german":"Was hast du eigentlich studiert?","arabic":"ماذا درست بالمناسبة؟","english":"What did you study, by the way?"}]', '[{"mistake":"Speaking without modal particles (too textbook-like)","correction":"Das ist doch klar! (not just \"Das ist klar\")","explanation":"Without modal particles, German sounds robotic. At C2, particles show naturalness."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006a4237cd', 'multiple_choice', 'Welches deutsche Wort bedeutet "translation"?', '["die Übersetzung","übersetzen","der Dolmetscher","falscher Freund"]', 'die Übersetzung', '"translation" = "die Übersetzung" in German. Article: die Plural: die Übersetzungen', 1, 1),
  ('00000000-0000-4000-a000-00006a4237cd', 'multiple_choice', 'Welches deutsche Wort bedeutet "to translate"?', '["die Muttersprache","die Übersetzung","übersetzen","der Dolmetscher"]', 'übersetzen', '"to translate" bedeutet auf Deutsch "to translate".  ', 1, 2),
  ('00000000-0000-4000-a000-00006a4237cd', 'multiple_choice', 'Welches deutsche Wort bedeutet "interpreter"?', '["der Dolmetscher","die Übersetzung","die Muttersprache","übersetzen"]', 'der Dolmetscher', '"interpreter" = "der Dolmetscher" in German. Article: der Plural: die Dolmetscher', 1, 3),
  ('00000000-0000-4000-a000-00006a4237cd', 'multiple_choice', 'Welches deutsche Wort bedeutet "native language"?', '["übersetzen","die Übersetzung","falscher Freund","die Muttersprache"]', 'die Muttersprache', '"native language" = "die Muttersprache" in German. Article: die Plural: die Muttersprachen', 1, 4),
  ('00000000-0000-4000-a000-00006a4237cd', 'multiple_choice', 'Welches deutsche Wort bedeutet "false friend"?', '["der Dolmetscher","übersetzen","die Übersetzung","falscher Freund"]', 'falscher Freund', '"false friend" bedeutet auf Deutsch "false friend".  ', 1, 5),
  ('00000000-0000-4000-a000-00006a4237cd', 'fill_gap', 'Ergänzen Sie den Satz: Ich ___ gern über Translation Techniques. (sprechen)', '["spreche","sprichst","spricht","sprechen"]', 'spreche', 'ich spreche gern = I like to speak. Stem: sprech- + e.', 2, 6),
  ('00000000-0000-4000-a000-00006a4237cd', 'translation', 'Übersetzen Sie ins Deutsche: "I am learning about Translation Techniques."', '["Ich lerne über Translation Techniques.","Ich lerne Translation Techniques.","Lerne ich Translation Techniques."]', 'Ich lerne über Translation Techniques.', '"Ich lerne über..." = "I am learning about..."', 2, 7),
  ('00000000-0000-4000-a000-00006a4237cd', 'matching', 'Match: Which word pairs are correct?', '["die Übersetzung - translation, übersetzen - to translate"]', 'Matched correctly', 'Each German word has a unique English equivalent.', 2, 8);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-00006a4237cd', 'multiple_choice', 'Was bedeutet "die Übersetzung" auf Deutsch?', '["translation","to run","beautiful","yesterday"]', 'translation', 1, 1),
  ('00000000-0000-4000-a000-00006a4237cd', 'multiple_choice', 'Welcher Artikel gehört zu "übersetzen"?', '["der","die","das","den"]', 'der', 1, 2),
  ('00000000-0000-4000-a000-00006a4237cd', 'true_false', 'Das Wort "der Dolmetscher" gehört zum Thema Translation Techniques.', '["True","False"]', 'True', 1, 3),
  ('00000000-0000-4000-a000-00006a4237cd', 'multiple_choice', 'Welcher Satz verwendet present_tense?', '["Das ist doch eine gute Idee, oder?","Komm mal her, bitte.","Was hast du eigentlich studiert?"]', 'Das ist doch eine gute Idee, oder?', 2, 4),
  ('00000000-0000-4000-a000-00006a4237cd', 'true_false', ''Im Deutschen steht das Verb an zweiter Position im Hauptsatz.', '["True","False"]', 'True', 1, 5),
  ('00000000-0000-4000-a000-00006a4237cd', 'fill_blank', 'Complete: Ich ___ (native language) Deutsch.', '["die Muttersprache","lernt","lernst","lernen"]', 'lerne', 2, 6),
  ('00000000-0000-4000-a000-00006a4237cd', 'multiple_choice', 'Wie lautet das deutsche Wort für "false friend"?', '["falscher Freund","die Sprachmittlung","die Äquivalenz","der Stil"]', 'falscher Freund', 1, 7),
  ('00000000-0000-4000-a000-00006a4237cd', 'true_false', 'Im Deutschen werden alle Nomen großgeschrieben.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-00006a4237cd', 'multiple_choice', 'How do you say "please" in a restaurant in Germany?', '["Bitte","Danke","Tschüss","Hallo"]', 'Bitte', 1, 9),
  ('00000000-0000-4000-a000-00006a4237cd', 'fill_blank', 'Wo ___ (to live) du?', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 2, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, french_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-00006a4237cd', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', NULL, 'Used in Übersetzung und Sprachmittlung', 'formal', false, 1),
  ('00000000-0000-4000-a000-00006a4237cd', 'Guten Tag!', 'Good day!', 'نهارك سعيد!', NULL, 'Used in Übersetzung und Sprachmittlung', 'formal', false, 2),
  ('00000000-0000-4000-a000-00006a4237cd', 'Hallo, wie geht es Ihnen?', 'Hello, how are you?', 'مرحباً، كيف حالكم؟', NULL, 'Used in Übersetzung und Sprachmittlung', 'formal', false, 3),
  ('00000000-0000-4000-a000-00006a4237cd', 'Schön, Sie kennenzulernen!', 'Nice to meet you!', 'سعيد بلقائكم!', NULL, 'Used in Übersetzung und Sprachmittlung', 'formal', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-00006a4237cd', 'die die Übersetzung (die Übersetzungen)', 'translation — الترجمة', 'noun', 'vocabulary', 1),
  ('00000000-0000-4000-a000-00006a4237cd', 'übersetzen', 'to translate — يترجم', 'verb', 'vocabulary', 2),
  ('00000000-0000-4000-a000-00006a4237cd', 'der der Dolmetscher (die Dolmetscher)', 'interpreter — المترجم الفوري', 'noun', 'vocabulary', 3),
  ('00000000-0000-4000-a000-00006a4237cd', 'die die Muttersprache (die Muttersprachen)', 'native language — اللغة الأم', 'noun', 'vocabulary', 4),
  ('00000000-0000-4000-a000-00006a4237cd', 'falscher Freund', 'false friend — الصديق المزيف', 'noun', 'vocabulary', 5),
  ('00000000-0000-4000-a000-00006a4237cd', 'die die Sprachmittlung', 'language mediation — الوساطة اللغوية', 'noun', 'vocabulary', 6),
  ('00000000-0000-4000-a000-00006a4237cd', 'die die Äquivalenz', 'equivalence — التكافؤ', 'noun', 'vocabulary', 7),
  ('00000000-0000-4000-a000-00006a4237cd', 'der der Stil (die Stile)', 'style — الأسلوب', 'noun', 'vocabulary', 8),
  ('00000000-0000-4000-a000-00006a4237cd', 'das das Register (die Register)', 'register — المستوى اللغوي', 'noun', 'vocabulary', 9),
  ('00000000-0000-4000-a000-00006a4237cd', 'das das Stilmittel (die Stilmittel)', 'stylistic device — الأداة الأسلوبية', 'noun', 'vocabulary', 10),
  ('00000000-0000-4000-a000-00006a4237cd', 'die die Alliteration (die Alliterationen)', 'alliteration — الجناس', 'noun', 'vocabulary', 11),
  ('00000000-0000-4000-a000-00006a4237cd', 'die die Ellipse (die Ellipsen)', 'ellipsis — الحذف', 'noun', 'vocabulary', 12),
  ('00000000-0000-4000-a000-00006a4237cd', 'die die Hyperbel (die Hyperbeln)', 'hyperbole — المبالغة', 'noun', 'vocabulary', 13),
  ('00000000-0000-4000-a000-00006a4237cd', 'die die Poetik', 'poetics — الشعرية', 'noun', 'vocabulary', 14),
  ('00000000-0000-4000-a000-00006a4237cd', 'der der Vers (die Verse)', 'verse — البيت الشعري', 'noun', 'vocabulary', 15),
  ('00000000-0000-4000-a000-00006a4237cd', 'Das ist doch eine gute Idee, oder?', 'That IS a good idea, isn''t it?', 'Module Partikeln und Satzgliedstellung (Modal Particles and Word Order Nuances)', 'grammar', 16),
  ('00000000-0000-4000-a000-00006a4237cd', 'Komm mal her, bitte.', 'Come here, please. (softening)', 'Module Partikeln und Satzgliedstellung (Modal Particles and Word Order Nuances)', 'grammar', 17),
  ('00000000-0000-4000-a000-00006a4237cd', 'Was hast du eigentlich studiert?', 'What did you study, by the way?', 'Module Partikeln und Satzgliedstellung (Modal Particles and Word Order Nuances)', 'grammar', 18);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, french_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-00006a4237cd', 'Übersetzungstechniken — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', NULL, 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, french_translation, duration_seconds, speaker_count, scenario) values
  ('00000000-0000-4000-a000-00006a4237cd', 'Übersetzungstechniken — Hörverständnis', '[Lehrerin]: Guten Morgen! Heute lernen wir Begrüßungen.

[Lehrerin]: Wiederholen Sie: Guten Morgen!

[Student]: Guten Morgen!

[Lehrerin]: Sehr gut! Und wie sagt man "Goodbye"?

[Student]: Auf Wiedersehen!

[Lehrerin]: Perfekt! Bis morgen!', '[Lehrerin]: Good morning! Today we learn greetings.

[Lehrerin]: Repeat: Good morning!

[Student]: Good morning!

[Lehrerin]: Very good! And how do you say goodbye?

[Student]: Goodbye!

[Lehrerin]: Perfect! See you tomorrow!', '[Lehrerin]: صباح الخير! اليوم نتعلم التحيات.

[Lehrerin]: كرروا: صباح الخير!

[Student]: صباح الخير!

[Lehrerin]: جيد جداً! وكيف نقول "وداعاً"؟

[Student]: إلى اللقاء!

[Lehrerin]: ممتاز! إلى الغد!', '[Lehrerin]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: ', 72, 2, 'Übersetzung und Sprachmittlung');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-00006a4237cd', '🔊 Sprechen: Übersetzungstechniken', 'Presentation: Prepare a 2-minute presentation on "Translation Techniques im deutschsprachigen Raum". Use discourse markers like "zunächst", "darüber hinaus", "abschließend". Your AI partner will ask critical questions afterwards.', 'Translation Techniques', ARRAY['Use discourse markers (also, jedoch, außerdem)','React naturally: "Ach so!", "Echt?", "Das stimmt!"','Paraphrase when you don''t know a word']::text[], ARRAY['die Übersetzung','übersetzen','der Dolmetscher','die Muttersprache','falscher Freund','die Sprachmittlung','die Äquivalenz','der Stil']::text[], 120, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-00006a4237cd', '✏️ Schreiben: Übersetzungstechniken', 'Write a discursive essay (300-350 words) analyzing "Translation Techniques in modern German society". Present both advantages and disadvantages. Use complex sentence structures (Nebensätze mit "obwohl", "trotzdem", "während") and formal register. Conclude with your own position.', ARRAY['Use paragraph breaks for structure','Connect ideas with "außerdem", "deshalb", "jedoch"','Check your verb position in Nebensätze']::text[], ARRAY['die Übersetzung','übersetzen','der Dolmetscher','die Muttersprache','falscher Freund','die Sprachmittlung','die Äquivalenz','der Stil']::text[], ARRAY['Sentence structure','Vocabulary usage']::text[], 250, 350, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00006a4237cd', 'Übersetzungstechniken — Roleplay', 'Translation Techniques', 'Student', 'Teacher', 'Practice conversation about Translation Techniques', 'Hallo! Lass uns über dieses Thema sprechen.', 'advanced', 1, ARRAY['die Übersetzung','übersetzen','der Dolmetscher','die Muttersprache','falscher Freund','die Sprachmittlung','die Äquivalenz','der Stil']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00006a4237cd', 'Übersetzungstechniken — Advanced Roleplay', 'Translation Techniques', 'Customer', 'Assistant', 'Extended conversation about Translation Techniques', 'Guten Tag! Wie kann ich Ihnen helfen?', 'advanced', 2, ARRAY['die Übersetzung','übersetzen','der Dolmetscher','die Muttersprache','falscher Freund','die Sprachmittlung','die Äquivalenz','der Stil']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-00006a4237cd', 'Übersetzungstechniken — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Übersetzungstechniken".', 'Creative practice for Translation Techniques', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-00006a4237cd', '📚 Hausaufgabe: Übersetzungstechniken', 'Complete these tasks to reinforce "Übersetzungstechniken".', 'mixed', '[{"description":"Create 10 flashcards from this lesson''s vocabulary — write German on one side, Arabic on the other. Test yourself 3 times."},{"description":"Write 6 sentences about Translation Techniques: 2 statements, 2 questions, 2 negations — all using present_tense."},{"description":"Record yourself reading the dialogue aloud. Listen to the recording and note 3 things to improve."},{"description":"Find 3 real German websites, videos, or articles about Translation Techniques. Note 5 new words you discovered."}]', 50, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-00006a4237cd', '🎯 Excellent progress! This lesson covered Translation Techniques (60 vocabulary items) and present_tense. You developed reading, listening, speaking, and writing skills in the context of translation. Focus on your common mistakes area for maximum improvement.', '["60 vocabulary items about Translation Techniques","present_tense — grammar explanation and practice","Reading comprehension: text about Translation Techniques","Listening comprehension: dialogue about Translation Techniques","Speaking practice: roleplay/discussion about Translation Techniques","Writing task: text about Translation Techniques"]', '[{"title":"Übersetzungstechniken Review","summary":"present_tense — the main grammar focus. Focus on nuanced usage, exceptions, and stylistic variation."}]', ARRAY['die Übersetzung (translation)','übersetzen (to translate)','der Dolmetscher (interpreter)','die Muttersprache (native language)','falscher Freund (false friend)']::text[], ARRAY['Don''t translate from Arabic word-for-word — German has different sentence structure','Learn every noun with its article: NEVER learn "Tisch" alone, always "der Tisch"','Pay attention to Konjunktiv I/II distinction']::text[], ARRAY['Practice 15-20 minutes daily — consistency beats intensity','Speak out loud: German pronunciation needs muscle memory','Use the new vocabulary within 24 hours or you''ll forget it','Watch German YouTube videos about Translation Techniques for authentic input']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006a4237cd', 'translation', 'Translate to German: "I use the word "translation" in a sentence about Translation Techniques."', '[]', 'Die Übersetzung ist gelungen.', 'Use die  "die Übersetzung" with the correct present_tense form.', 1, 40);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006a4237cd', 'translation', 'Translate to German: "I use the word "to translate" in a sentence about Translation Techniques."', '[]', 'Ich übersetze den Text ins Arabische.', 'Use  "übersetzen" with the correct present_tense form.', 1, 41);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006a4237cd', 'translation', 'Translate to German: "I use the word "interpreter" in a sentence about Translation Techniques."', '[]', 'Der Dolmetscher übersetzt mündlich.', 'Use der  "der Dolmetscher" with the correct present_tense form.', 1, 42);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006a4237cd', 'Culture: 🇩🇪 Deutsche Kultur: Translation Techniques', 'The German approach to Translation Techniques reflects deeper cultural values: Ordnung (order), Gründlichkeit (thoroughness), and Sachlichkeit (objectivity). Debates about Translation Techniques in German media are characterised by factual argumentation. Understanding these discourse norms is essential for C1/C2 learners who want to participate in academic or professional discussions.

لدى Translation Techniques في ألمانيا فروق ثقافية دقيقة تختلف عن البلدان العربية. الألمان يفصلون بين حياتهم الخاصة والمهنية بشكل صارم.', '["Tip: Always use \"Sie\" (formal) with strangers and colleagues","Tip: Germans appreciate punctuality — arrive 5 minutes early","Tip: Direct feedback is a sign of respect, not criticism","Tip: Prepare factual arguments, not emotional appeals"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006a4237cd', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Incorrect preposition usage after verbs","correction":"Learn which preposition each verb requires (sich freuen auf, warten auf, denken an)","explanation":"Arabic and German have different sentence structures. Arabic is VSO, German is SVO with verb in position 2."},{"mistake":"Incorrect use of Konjunktiv II in polite requests","correction":"Ich hätte gern... (I would like...)","explanation":"Konjunktiv II is often replaced with würde + infinitive in speech"}]', 30);

  -- Lesson 2: False Friends und idiomatische Wendungen (L-C2-04-02)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-00006a4237ce', '00000000-0000-4000-a000-000039d176c2', 'False Friends und idiomatische Wendungen', 'Identify false friends between German and Arabic.', 'False Friends & Idioms', 'vocabulary', '["Understand and use 60 key vocabulary words about False Friends & Idioms","Apply present_tense correctly in sentences","Read and comprehend a text about False Friends & Idioms","Listen and understand a natural dialogue about False Friends & Idioms","Speak about False Friends & Idioms with confidence","Write a short text about False Friends & Idioms using new vocabulary"]', 55, 2, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, french_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-00006a4237ce', 'die Übersetzung', 'الترجمة', 'translation', NULL, 'die', 'die Übersetzungen', 'noun', 'Die Übersetzung ist gelungen.', 'The translation is successful.', 'B2', 1),
  ('00000000-0000-4000-a000-00006a4237ce', 'übersetzen', 'يترجم', 'to translate', NULL, NULL, NULL, 'verb', 'Ich übersetze den Text ins Arabische.', 'I translate the text into Arabic.', 'B1', 2),
  ('00000000-0000-4000-a000-00006a4237ce', 'der Dolmetscher', 'المترجم الفوري', 'interpreter', NULL, 'der', 'die Dolmetscher', 'noun', 'Der Dolmetscher übersetzt mündlich.', 'The interpreter translates orally.', 'B2', 3),
  ('00000000-0000-4000-a000-00006a4237ce', 'die Muttersprache', 'اللغة الأم', 'native language', NULL, 'die', 'die Muttersprachen', 'noun', 'Meine Muttersprache ist Arabisch.', 'My native language is Arabic.', 'B1', 4),
  ('00000000-0000-4000-a000-00006a4237ce', 'falscher Freund', 'الصديق المزيف', 'false friend', NULL, NULL, NULL, 'noun', 'Ein falscher Freund sieht ähnlich aus, bedeutet aber etwas anderes.', 'A false friend looks similar but means something different.', 'C1', 5),
  ('00000000-0000-4000-a000-00006a4237ce', 'die Sprachmittlung', 'الوساطة اللغوية', 'language mediation', NULL, 'die', NULL, 'noun', 'Sprachmittlung vermittelt zwischen Kulturen.', 'Language mediation bridges between cultures.', 'C2', 6),
  ('00000000-0000-4000-a000-00006a4237ce', 'die Äquivalenz', 'التكافؤ', 'equivalence', NULL, 'die', NULL, 'noun', 'Äquivalenz in der Übersetzung ist ein Ideal.', 'Equivalence in translation is an ideal.', 'C2', 7),
  ('00000000-0000-4000-a000-00006a4237ce', 'der Stil', 'الأسلوب', 'style', NULL, 'der', 'die Stile', 'noun', 'Der Stil des Textes ist formell.', 'The style of the text is formal.', 'B2', 8),
  ('00000000-0000-4000-a000-00006a4237ce', 'das Register', 'المستوى اللغوي', 'register', NULL, 'das', 'die Register', 'noun', 'Das Register passt zur Situation.', 'The register fits the situation.', 'C1', 9),
  ('00000000-0000-4000-a000-00006a4237ce', 'das Stilmittel', 'الأداة الأسلوبية', 'stylistic device', NULL, 'das', 'die Stilmittel', 'noun', 'Das Stilmittel unterstreicht die Aussage.', 'The stylistic device emphasizes the statement.', 'C1', 10),
  ('00000000-0000-4000-a000-00006a4237ce', 'die Alliteration', 'الجناس', 'alliteration', NULL, 'die', 'die Alliterationen', 'noun', 'Die Alliteration wiederholt den Anlaut.', 'Alliteration repeats the initial sound.', 'C2', 11),
  ('00000000-0000-4000-a000-00006a4237ce', 'die Ellipse', 'الحذف', 'ellipsis', NULL, 'die', 'die Ellipsen', 'noun', 'Die Ellipse spart Wörter aus.', 'The ellipsis omits words.', 'C2', 12),
  ('00000000-0000-4000-a000-00006a4237ce', 'die Hyperbel', 'المبالغة', 'hyperbole', NULL, 'die', 'die Hyperbeln', 'noun', 'Die Hyperbel übertreibt stark.', 'Hyperbole exaggerates strongly.', 'C2', 13),
  ('00000000-0000-4000-a000-00006a4237ce', 'die Poetik', 'الشعرية', 'poetics', NULL, 'die', NULL, 'noun', 'Poetik ist die Theorie der Dichtkunst.', 'Poetics is the theory of poetry.', 'C2', 14),
  ('00000000-0000-4000-a000-00006a4237ce', 'der Vers', 'البيت الشعري', 'verse', NULL, 'der', 'die Verse', 'noun', 'Der Vers hat fünf Hebungen.', 'The verse has five stresses.', 'C1', 15),
  ('00000000-0000-4000-a000-00006a4237ce', 'der Reim', 'القافية', 'rhyme', NULL, 'der', 'die Reime', 'noun', 'Der Reim verbindet die Zeilen.', 'Rhyme connects the lines.', 'C1', 16),
  ('00000000-0000-4000-a000-00006a4237ce', 'das Metrum', 'الوزن', 'meter', NULL, 'das', 'die Metren', 'noun', 'Das Metrum bestimmt den Rhythmus.', 'The meter determines the rhythm.', 'C2', 17),
  ('00000000-0000-4000-a000-00006a4237ce', 'die Gattung', 'النوع الأدبي', 'genre', NULL, 'die', 'die Gattungen', 'noun', 'Lyrik ist eine literarische Gattung.', 'Lyric poetry is a literary genre.', 'C1', 18),
  ('00000000-0000-4000-a000-00006a4237ce', 'die Pragmatik', 'البراغماتية', 'pragmatics', NULL, 'die', NULL, 'noun', 'Pragmatik untersucht Sprache im Kontext.', 'Pragmatics studies language in context.', 'C2', 19),
  ('00000000-0000-4000-a000-00006a4237ce', 'der Sprechakt', 'فعل الكلام', 'speech act', NULL, 'der', 'die Sprechakte', 'noun', 'Der Sprechakt ändert die Wirklichkeit.', 'The speech act changes reality.', 'C2', 20),
  ('00000000-0000-4000-a000-00006a4237ce', 'die Implikatur', 'الاستلزام التخاطبي', 'implicature', NULL, 'die', 'die Implikaturen', 'noun', 'Die Implikatur ist die indirekte Bedeutung.', 'Implicature is the indirect meaning.', 'C2', 21),
  ('00000000-0000-4000-a000-00006a4237ce', 'der Kontext', 'السياق', 'context', NULL, 'der', 'die Kontexte', 'noun', 'Der Kontext bestimmt die Bedeutung.', 'Context determines meaning.', 'B2', 22),
  ('00000000-0000-4000-a000-00006a4237ce', 'die Höflichkeit', 'الأدب / اللباقة', 'politeness', NULL, 'die', NULL, 'noun', 'Höflichkeit ist in Japan sehr wichtig.', 'Politeness is very important in Japan.', 'B2', 23),
  ('00000000-0000-4000-a000-00006a4237ce', 'die Konversationsanalyse', 'تحليل المحادثة', 'conversation analysis', NULL, 'die', NULL, 'noun', 'Die Konversationsanalyse untersucht Gespräche.', 'Conversation analysis examines conversations.', 'C2', 24),
  ('00000000-0000-4000-a000-00006a4237ce', 'die Bedeutung', 'المعنى', 'meaning', NULL, 'die', 'die Bedeutungen', 'noun', 'Die Bedeutung des Wortes ist klar.', 'The meaning of the word is clear.', 'B2', 25),
  ('00000000-0000-4000-a000-00006a4237ce', 'die Synonymie', 'الترادف', 'synonymy', NULL, 'die', NULL, 'noun', 'Synonymie bedeutet Bedeutungsgleichheit.', 'Synonymy means sameness of meaning.', 'C2', 26),
  ('00000000-0000-4000-a000-00006a4237ce', 'die Antonymie', 'التضاد', 'antonymy', NULL, 'die', NULL, 'noun', 'Antonymie bezeichnet Gegensätze.', 'Antonymy denotes opposites.', 'C2', 27),
  ('00000000-0000-4000-a000-00006a4237ce', 'die Polysemie', 'تعدد المعاني', 'polysemy', NULL, 'die', NULL, 'noun', 'Polysemie hat mehrere Bedeutungen.', 'Polysemy has multiple meanings.', 'C2', 28),
  ('00000000-0000-4000-a000-00006a4237ce', 'die Kompositionalität', 'التركيبية', 'compositionality', NULL, 'die', NULL, 'noun', 'Kompositionalität besagt, dass Bedeutung aus Teilen besteht.', 'Compositionality holds that meaning consists of parts.', 'C2', 29),
  ('00000000-0000-4000-a000-00006a4237ce', 'der Dialekt', 'اللهجة', 'dialect', NULL, 'der', 'die Dialekte', 'noun', 'Der bayerische Dialekt ist schwer zu verstehen.', 'The Bavarian dialect is hard to understand.', 'B2', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006a4237ce', 'Erweiterte Partizipialattribute (Extended Participle Attributes) / الصفات المشتقة الموسعة', 'Extended participle attributes are a hallmark of sophisticated German. Instead of a relative clause, German can place a long phrase between the article and the noun: "der von der Regierung vorgeschlagene Plan" (the plan proposed by the government). These structures condense information and are very common in academic and legal German.', '[{"rule":"Article + (expanded phrase) + noun","note":"der [von der Regierung vorgeschlagene] Plan"},{"rule":"Participle can be Partizip I (aktiv, gleichzeitig) or Partizip II (passiv, vorzeitig)","note":"der lesende Student (the reading student — Partizip I), das gelesene Buch (the read book — Partizip II)"}]', '[{"german":"Der von der Bundesregierung vorgeschlagene Gesetzesentwurf wurde diskutiert.","arabic":"تمت مناقشة مشروع القانون الذي اقترحته الحكومة الاتحادية.","english":"The bill proposed by the federal government was discussed."},{"german":"Die in den letzten Jahren stark gestiegenen Mieten belasten viele Familien.","arabic":"الإيجارات التي ارتفعت بشدة في السنوات الأخيرة تثقل كاهل العائلات.","english":"The rents that have risen sharply in recent years burden many families."}]', '[{"mistake":"Der Plan, der von der Regierung vorgeschlagen wurde (relative clause instead of extended attribute)","correction":"Der von der Regierung vorgeschlagene Plan","explanation":"At C2, extended attributes are preferred over relative clauses for conciseness."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006a4237ce', 'multiple_choice', 'Welches deutsche Wort bedeutet "translation"?', '["die Übersetzung","übersetzen","der Dolmetscher","die Muttersprache"]', 'die Übersetzung', '"translation" = "die Übersetzung" in German. Article: die Plural: die Übersetzungen', 1, 1),
  ('00000000-0000-4000-a000-00006a4237ce', 'multiple_choice', 'Welches deutsche Wort bedeutet "to translate"?', '["die Übersetzung","übersetzen","die Muttersprache","falscher Freund"]', 'übersetzen', '"to translate" bedeutet auf Deutsch "to translate".  ', 1, 2),
  ('00000000-0000-4000-a000-00006a4237ce', 'multiple_choice', 'Welches deutsche Wort bedeutet "interpreter"?', '["die Muttersprache","übersetzen","der Dolmetscher","die Übersetzung"]', 'der Dolmetscher', '"interpreter" = "der Dolmetscher" in German. Article: der Plural: die Dolmetscher', 1, 3),
  ('00000000-0000-4000-a000-00006a4237ce', 'multiple_choice', 'Welches deutsche Wort bedeutet "native language"?', '["die Übersetzung","die Muttersprache","übersetzen","der Dolmetscher"]', 'die Muttersprache', '"native language" = "die Muttersprache" in German. Article: die Plural: die Muttersprachen', 1, 4),
  ('00000000-0000-4000-a000-00006a4237ce', 'multiple_choice', 'Welches deutsche Wort bedeutet "false friend"?', '["falscher Freund","übersetzen","der Dolmetscher","die Übersetzung"]', 'falscher Freund', '"false friend" bedeutet auf Deutsch "false friend".  ', 1, 5),
  ('00000000-0000-4000-a000-00006a4237ce', 'fill_gap', 'Ergänzen Sie den Satz: Ich ___ gern False Friends & Idioms. (sprechen)', '["spreche","sprichst","spricht","sprechen"]', 'spreche', 'ich spreche gern = I like to speak. Stem: sprech- + e.', 2, 6),
  ('00000000-0000-4000-a000-00006a4237ce', 'translation', 'Übersetzen Sie ins Deutsche: "I am learning about False Friends & Idioms."', '["Ich lerne über False Friends & Idioms.","Ich lerne False Friends & Idioms.","Lerne ich False Friends & Idioms."]', 'Ich lerne über False Friends & Idioms.', '"Ich lerne über..." = "I am learning about..."', 2, 7),
  ('00000000-0000-4000-a000-00006a4237ce', 'matching', 'Match: Which word pairs are correct?', '["die Übersetzung - translation, übersetzen - to translate"]', 'Matched correctly', 'Each German word has a unique English equivalent.', 2, 8);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-00006a4237ce', 'multiple_choice', 'Was bedeutet "die Übersetzung" auf Deutsch?', '["translation","to run","beautiful","yesterday"]', 'translation', 1, 1),
  ('00000000-0000-4000-a000-00006a4237ce', 'multiple_choice', 'Welcher Artikel gehört zu "übersetzen"?', '["der","die","das","den"]', 'der', 1, 2),
  ('00000000-0000-4000-a000-00006a4237ce', 'true_false', 'Das Wort "der Dolmetscher" gehört zum Thema False Friends & Idioms.', '["True","False"]', 'True', 1, 3),
  ('00000000-0000-4000-a000-00006a4237ce', 'multiple_choice', 'Welcher Satz verwendet present_tense?', '["Der von der Bundesregierung vorgeschlagene Gesetzesentwurf wurde diskutiert.","Die in den letzten Jahren stark gestiegenen Mieten belasten viele Familien."]', 'Der von der Bundesregierung vorgeschlagene Gesetzesentwurf wurde diskutiert.', 2, 4),
  ('00000000-0000-4000-a000-00006a4237ce', 'true_false', ''Im Deutschen steht das Verb an zweiter Position im Hauptsatz.', '["True","False"]', 'True', 1, 5),
  ('00000000-0000-4000-a000-00006a4237ce', 'fill_blank', 'Complete: Ich ___ (native language) Deutsch.', '["die Muttersprache","lernt","lernst","lernen"]', 'lerne', 2, 6),
  ('00000000-0000-4000-a000-00006a4237ce', 'multiple_choice', 'Wie lautet das deutsche Wort für "false friend"?', '["falscher Freund","die Sprachmittlung","die Äquivalenz","der Stil"]', 'falscher Freund', 1, 7),
  ('00000000-0000-4000-a000-00006a4237ce', 'true_false', 'Im Deutschen werden alle Nomen großgeschrieben.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-00006a4237ce', 'multiple_choice', 'How do you say "please" in a restaurant in Germany?', '["Bitte","Danke","Tschüss","Hallo"]', 'Bitte', 1, 9),
  ('00000000-0000-4000-a000-00006a4237ce', 'fill_blank', 'Wo ___ (to live) du?', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 2, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, french_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-00006a4237ce', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', NULL, 'Used in Übersetzung und Sprachmittlung', 'formal', false, 1),
  ('00000000-0000-4000-a000-00006a4237ce', 'Guten Tag!', 'Good day!', 'نهارك سعيد!', NULL, 'Used in Übersetzung und Sprachmittlung', 'formal', false, 2),
  ('00000000-0000-4000-a000-00006a4237ce', 'Hallo, wie geht es Ihnen?', 'Hello, how are you?', 'مرحباً، كيف حالكم؟', NULL, 'Used in Übersetzung und Sprachmittlung', 'formal', false, 3),
  ('00000000-0000-4000-a000-00006a4237ce', 'Schön, Sie kennenzulernen!', 'Nice to meet you!', 'سعيد بلقائكم!', NULL, 'Used in Übersetzung und Sprachmittlung', 'formal', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-00006a4237ce', 'die die Übersetzung (die Übersetzungen)', 'translation — الترجمة', 'noun', 'vocabulary', 1),
  ('00000000-0000-4000-a000-00006a4237ce', 'übersetzen', 'to translate — يترجم', 'verb', 'vocabulary', 2),
  ('00000000-0000-4000-a000-00006a4237ce', 'der der Dolmetscher (die Dolmetscher)', 'interpreter — المترجم الفوري', 'noun', 'vocabulary', 3),
  ('00000000-0000-4000-a000-00006a4237ce', 'die die Muttersprache (die Muttersprachen)', 'native language — اللغة الأم', 'noun', 'vocabulary', 4),
  ('00000000-0000-4000-a000-00006a4237ce', 'falscher Freund', 'false friend — الصديق المزيف', 'noun', 'vocabulary', 5),
  ('00000000-0000-4000-a000-00006a4237ce', 'die die Sprachmittlung', 'language mediation — الوساطة اللغوية', 'noun', 'vocabulary', 6),
  ('00000000-0000-4000-a000-00006a4237ce', 'die die Äquivalenz', 'equivalence — التكافؤ', 'noun', 'vocabulary', 7),
  ('00000000-0000-4000-a000-00006a4237ce', 'der der Stil (die Stile)', 'style — الأسلوب', 'noun', 'vocabulary', 8),
  ('00000000-0000-4000-a000-00006a4237ce', 'das das Register (die Register)', 'register — المستوى اللغوي', 'noun', 'vocabulary', 9),
  ('00000000-0000-4000-a000-00006a4237ce', 'das das Stilmittel (die Stilmittel)', 'stylistic device — الأداة الأسلوبية', 'noun', 'vocabulary', 10),
  ('00000000-0000-4000-a000-00006a4237ce', 'die die Alliteration (die Alliterationen)', 'alliteration — الجناس', 'noun', 'vocabulary', 11),
  ('00000000-0000-4000-a000-00006a4237ce', 'die die Ellipse (die Ellipsen)', 'ellipsis — الحذف', 'noun', 'vocabulary', 12),
  ('00000000-0000-4000-a000-00006a4237ce', 'die die Hyperbel (die Hyperbeln)', 'hyperbole — المبالغة', 'noun', 'vocabulary', 13),
  ('00000000-0000-4000-a000-00006a4237ce', 'die die Poetik', 'poetics — الشعرية', 'noun', 'vocabulary', 14),
  ('00000000-0000-4000-a000-00006a4237ce', 'der der Vers (die Verse)', 'verse — البيت الشعري', 'noun', 'vocabulary', 15),
  ('00000000-0000-4000-a000-00006a4237ce', 'Der von der Bundesregierung vorgeschlagene Gesetzesentwurf wurde diskutiert.', 'The bill proposed by the federal government was discussed.', 'Erweiterte Partizipialattribute (Extended Participle Attributes)', 'grammar', 16),
  ('00000000-0000-4000-a000-00006a4237ce', 'Die in den letzten Jahren stark gestiegenen Mieten belasten viele Familien.', 'The rents that have risen sharply in recent years burden many families.', 'Erweiterte Partizipialattribute (Extended Participle Attributes)', 'grammar', 17);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, french_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-00006a4237ce', 'False Friends und idiomatische Wendungen — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', NULL, 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, french_translation, duration_seconds, speaker_count, scenario) values
  ('00000000-0000-4000-a000-00006a4237ce', 'False Friends und idiomatische Wendungen — Hörverständnis', '[Lehrerin]: Guten Morgen! Heute lernen wir Begrüßungen.

[Lehrerin]: Wiederholen Sie: Guten Morgen!

[Student]: Guten Morgen!

[Lehrerin]: Sehr gut! Und wie sagt man "Goodbye"?

[Student]: Auf Wiedersehen!

[Lehrerin]: Perfekt! Bis morgen!', '[Lehrerin]: Good morning! Today we learn greetings.

[Lehrerin]: Repeat: Good morning!

[Student]: Good morning!

[Lehrerin]: Very good! And how do you say goodbye?

[Student]: Goodbye!

[Lehrerin]: Perfect! See you tomorrow!', '[Lehrerin]: صباح الخير! اليوم نتعلم التحيات.

[Lehrerin]: كرروا: صباح الخير!

[Student]: صباح الخير!

[Lehrerin]: جيد جداً! وكيف نقول "وداعاً"؟

[Student]: إلى اللقاء!

[Lehrerin]: ممتاز! إلى الغد!', '[Lehrerin]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: ', 72, 2, 'Übersetzung und Sprachmittlung');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-00006a4237ce', '🔊 Sprechen: False Friends und idiomatische Wendungen', 'Presentation: Prepare a 2-minute presentation on "False Friends & Idioms im deutschsprachigen Raum". Use discourse markers like "zunächst", "darüber hinaus", "abschließend". Your AI partner will ask critical questions afterwards.', 'False Friends & Idioms', ARRAY['Use discourse markers (also, jedoch, außerdem)','React naturally: "Ach so!", "Echt?", "Das stimmt!"','Paraphrase when you don''t know a word']::text[], ARRAY['die Übersetzung','übersetzen','der Dolmetscher','die Muttersprache','falscher Freund','die Sprachmittlung','die Äquivalenz','der Stil']::text[], 120, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-00006a4237ce', '✏️ Schreiben: False Friends und idiomatische Wendungen', 'Write a discursive essay (300-350 words) analyzing "False Friends & Idioms in modern German society". Present both advantages and disadvantages. Use complex sentence structures (Nebensätze mit "obwohl", "trotzdem", "während") and formal register. Conclude with your own position.', ARRAY['Use paragraph breaks for structure','Connect ideas with "außerdem", "deshalb", "jedoch"','Check your verb position in Nebensätze']::text[], ARRAY['die Übersetzung','übersetzen','der Dolmetscher','die Muttersprache','falscher Freund','die Sprachmittlung','die Äquivalenz','der Stil']::text[], ARRAY['Sentence structure','Vocabulary usage']::text[], 250, 350, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00006a4237ce', 'False Friends und idiomatische Wendungen — Roleplay', 'False Friends & Idioms', 'Student', 'Teacher', 'Practice conversation about False Friends & Idioms', 'Hallo! Lass uns über dieses Thema sprechen.', 'advanced', 1, ARRAY['die Übersetzung','übersetzen','der Dolmetscher','die Muttersprache','falscher Freund','die Sprachmittlung','die Äquivalenz','der Stil']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00006a4237ce', 'False Friends und idiomatische Wendungen — Advanced Roleplay', 'False Friends & Idioms', 'Customer', 'Assistant', 'Extended conversation about False Friends & Idioms', 'Guten Tag! Wie kann ich Ihnen helfen?', 'advanced', 2, ARRAY['die Übersetzung','übersetzen','der Dolmetscher','die Muttersprache','falscher Freund','die Sprachmittlung','die Äquivalenz','der Stil']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-00006a4237ce', 'False Friends und idiomatische Wendungen — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "False Friends und idiomatische Wendungen".', 'Creative practice for False Friends & Idioms', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-00006a4237ce', '📚 Hausaufgabe: False Friends und idiomatische Wendungen', 'Complete these tasks to reinforce "False Friends und idiomatische Wendungen".', 'mixed', '[{"description":"Create 10 flashcards from this lesson''s vocabulary — write German on one side, Arabic on the other. Test yourself 3 times."},{"description":"Write 6 sentences about False Friends & Idioms: 2 statements, 2 questions, 2 negations — all using present_tense."},{"description":"Record yourself reading the dialogue aloud. Listen to the recording and note 3 things to improve."},{"description":"Find 3 real German websites, videos, or articles about False Friends & Idioms. Note 5 new words you discovered."}]', 50, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-00006a4237ce', '🎯 Excellent progress! This lesson covered False Friends & Idioms (60 vocabulary items) and present_tense. You developed reading, listening, speaking, and writing skills in the context of translation. Focus on your common mistakes area for maximum improvement.', '["60 vocabulary items about False Friends & Idioms","present_tense — grammar explanation and practice","Reading comprehension: text about False Friends & Idioms","Listening comprehension: dialogue about False Friends & Idioms","Speaking practice: roleplay/discussion about False Friends & Idioms","Writing task: text about False Friends & Idioms"]', '[{"title":"False Friends und idiomatische Wendungen Review","summary":"present_tense — the main grammar focus. Focus on nuanced usage, exceptions, and stylistic variation."}]', ARRAY['die Übersetzung (translation)','übersetzen (to translate)','der Dolmetscher (interpreter)','die Muttersprache (native language)','falscher Freund (false friend)']::text[], ARRAY['Don''t translate from Arabic word-for-word — German has different sentence structure','Learn every noun with its article: NEVER learn "Tisch" alone, always "der Tisch"','Pay attention to Konjunktiv I/II distinction']::text[], ARRAY['Practice 15-20 minutes daily — consistency beats intensity','Speak out loud: German pronunciation needs muscle memory','Use the new vocabulary within 24 hours or you''ll forget it','Watch German YouTube videos about False Friends & Idioms for authentic input']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006a4237ce', 'translation', 'Translate to German: "I use the word "translation" in a sentence about False Friends & Idioms."', '[]', 'Die Übersetzung ist gelungen.', 'Use die  "die Übersetzung" with the correct present_tense form.', 1, 40);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006a4237ce', 'translation', 'Translate to German: "I use the word "to translate" in a sentence about False Friends & Idioms."', '[]', 'Ich übersetze den Text ins Arabische.', 'Use  "übersetzen" with the correct present_tense form.', 1, 41);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006a4237ce', 'translation', 'Translate to German: "I use the word "interpreter" in a sentence about False Friends & Idioms."', '[]', 'Der Dolmetscher übersetzt mündlich.', 'Use der  "der Dolmetscher" with the correct present_tense form.', 1, 42);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006a4237ce', 'Culture: 🇩🇪 Deutsche Kultur: False Friends & Idioms', 'The German approach to False Friends & Idioms reflects deeper cultural values: Ordnung (order), Gründlichkeit (thoroughness), and Sachlichkeit (objectivity). Debates about False Friends & Idioms in German media are characterised by factual argumentation. Understanding these discourse norms is essential for C1/C2 learners who want to participate in academic or professional discussions.

لدى False Friends & Idioms في ألمانيا فروق ثقافية دقيقة تختلف عن البلدان العربية. الألمان يفصلون بين حياتهم الخاصة والمهنية بشكل صارم.', '["Tip: Always use \"Sie\" (formal) with strangers and colleagues","Tip: Germans appreciate punctuality — arrive 5 minutes early","Tip: Direct feedback is a sign of respect, not criticism","Tip: Prepare factual arguments, not emotional appeals"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006a4237ce', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Incorrect preposition usage after verbs","correction":"Learn which preposition each verb requires (sich freuen auf, warten auf, denken an)","explanation":"Arabic and German have different sentence structures. Arabic is VSO, German is SVO with verb in position 2."},{"mistake":"Incorrect use of Konjunktiv II in polite requests","correction":"Ich hätte gern... (I would like...)","explanation":"Konjunktiv II is often replaced with würde + infinitive in speech"}]', 30);

  -- Lesson 3: Test: Übersetzung und Sprachmittlung (L-C2-04-03)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-00006a4237cf', '00000000-0000-4000-a000-000039d176c2', 'Test: Übersetzung und Sprachmittlung', 'Module test on translation.', 'Module Test', 'test', '["Understand and apply present_tense rules correctly","Use present_tense in real conversations","Avoid common mistakes Arabic speakers make with present_tense","Read and understand present_tense in context","Listen and identify present_tense in speech","Write sentences using present_tense correctly"]', 50, 3, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, french_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-00006a4237cf', 'die Übersetzung', 'الترجمة', 'translation', NULL, 'die', 'die Übersetzungen', 'noun', 'Die Übersetzung ist gelungen.', 'The translation is successful.', 'B2', 1),
  ('00000000-0000-4000-a000-00006a4237cf', 'übersetzen', 'يترجم', 'to translate', NULL, NULL, NULL, 'verb', 'Ich übersetze den Text ins Arabische.', 'I translate the text into Arabic.', 'B1', 2),
  ('00000000-0000-4000-a000-00006a4237cf', 'der Dolmetscher', 'المترجم الفوري', 'interpreter', NULL, 'der', 'die Dolmetscher', 'noun', 'Der Dolmetscher übersetzt mündlich.', 'The interpreter translates orally.', 'B2', 3),
  ('00000000-0000-4000-a000-00006a4237cf', 'die Muttersprache', 'اللغة الأم', 'native language', NULL, 'die', 'die Muttersprachen', 'noun', 'Meine Muttersprache ist Arabisch.', 'My native language is Arabic.', 'B1', 4),
  ('00000000-0000-4000-a000-00006a4237cf', 'falscher Freund', 'الصديق المزيف', 'false friend', NULL, NULL, NULL, 'noun', 'Ein falscher Freund sieht ähnlich aus, bedeutet aber etwas anderes.', 'A false friend looks similar but means something different.', 'C1', 5),
  ('00000000-0000-4000-a000-00006a4237cf', 'die Sprachmittlung', 'الوساطة اللغوية', 'language mediation', NULL, 'die', NULL, 'noun', 'Sprachmittlung vermittelt zwischen Kulturen.', 'Language mediation bridges between cultures.', 'C2', 6),
  ('00000000-0000-4000-a000-00006a4237cf', 'die Äquivalenz', 'التكافؤ', 'equivalence', NULL, 'die', NULL, 'noun', 'Äquivalenz in der Übersetzung ist ein Ideal.', 'Equivalence in translation is an ideal.', 'C2', 7),
  ('00000000-0000-4000-a000-00006a4237cf', 'der Stil', 'الأسلوب', 'style', NULL, 'der', 'die Stile', 'noun', 'Der Stil des Textes ist formell.', 'The style of the text is formal.', 'B2', 8),
  ('00000000-0000-4000-a000-00006a4237cf', 'das Register', 'المستوى اللغوي', 'register', NULL, 'das', 'die Register', 'noun', 'Das Register passt zur Situation.', 'The register fits the situation.', 'C1', 9),
  ('00000000-0000-4000-a000-00006a4237cf', 'das Stilmittel', 'الأداة الأسلوبية', 'stylistic device', NULL, 'das', 'die Stilmittel', 'noun', 'Das Stilmittel unterstreicht die Aussage.', 'The stylistic device emphasizes the statement.', 'C1', 10),
  ('00000000-0000-4000-a000-00006a4237cf', 'die Alliteration', 'الجناس', 'alliteration', NULL, 'die', 'die Alliterationen', 'noun', 'Die Alliteration wiederholt den Anlaut.', 'Alliteration repeats the initial sound.', 'C2', 11),
  ('00000000-0000-4000-a000-00006a4237cf', 'die Ellipse', 'الحذف', 'ellipsis', NULL, 'die', 'die Ellipsen', 'noun', 'Die Ellipse spart Wörter aus.', 'The ellipsis omits words.', 'C2', 12),
  ('00000000-0000-4000-a000-00006a4237cf', 'die Hyperbel', 'المبالغة', 'hyperbole', NULL, 'die', 'die Hyperbeln', 'noun', 'Die Hyperbel übertreibt stark.', 'Hyperbole exaggerates strongly.', 'C2', 13),
  ('00000000-0000-4000-a000-00006a4237cf', 'die Poetik', 'الشعرية', 'poetics', NULL, 'die', NULL, 'noun', 'Poetik ist die Theorie der Dichtkunst.', 'Poetics is the theory of poetry.', 'C2', 14),
  ('00000000-0000-4000-a000-00006a4237cf', 'der Vers', 'البيت الشعري', 'verse', NULL, 'der', 'die Verse', 'noun', 'Der Vers hat fünf Hebungen.', 'The verse has five stresses.', 'C1', 15),
  ('00000000-0000-4000-a000-00006a4237cf', 'der Reim', 'القافية', 'rhyme', NULL, 'der', 'die Reime', 'noun', 'Der Reim verbindet die Zeilen.', 'Rhyme connects the lines.', 'C1', 16),
  ('00000000-0000-4000-a000-00006a4237cf', 'das Metrum', 'الوزن', 'meter', NULL, 'das', 'die Metren', 'noun', 'Das Metrum bestimmt den Rhythmus.', 'The meter determines the rhythm.', 'C2', 17),
  ('00000000-0000-4000-a000-00006a4237cf', 'die Gattung', 'النوع الأدبي', 'genre', NULL, 'die', 'die Gattungen', 'noun', 'Lyrik ist eine literarische Gattung.', 'Lyric poetry is a literary genre.', 'C1', 18),
  ('00000000-0000-4000-a000-00006a4237cf', 'die Pragmatik', 'البراغماتية', 'pragmatics', NULL, 'die', NULL, 'noun', 'Pragmatik untersucht Sprache im Kontext.', 'Pragmatics studies language in context.', 'C2', 19),
  ('00000000-0000-4000-a000-00006a4237cf', 'der Sprechakt', 'فعل الكلام', 'speech act', NULL, 'der', 'die Sprechakte', 'noun', 'Der Sprechakt ändert die Wirklichkeit.', 'The speech act changes reality.', 'C2', 20),
  ('00000000-0000-4000-a000-00006a4237cf', 'die Implikatur', 'الاستلزام التخاطبي', 'implicature', NULL, 'die', 'die Implikaturen', 'noun', 'Die Implikatur ist die indirekte Bedeutung.', 'Implicature is the indirect meaning.', 'C2', 21),
  ('00000000-0000-4000-a000-00006a4237cf', 'der Kontext', 'السياق', 'context', NULL, 'der', 'die Kontexte', 'noun', 'Der Kontext bestimmt die Bedeutung.', 'Context determines meaning.', 'B2', 22),
  ('00000000-0000-4000-a000-00006a4237cf', 'die Höflichkeit', 'الأدب / اللباقة', 'politeness', NULL, 'die', NULL, 'noun', 'Höflichkeit ist in Japan sehr wichtig.', 'Politeness is very important in Japan.', 'B2', 23),
  ('00000000-0000-4000-a000-00006a4237cf', 'die Konversationsanalyse', 'تحليل المحادثة', 'conversation analysis', NULL, 'die', NULL, 'noun', 'Die Konversationsanalyse untersucht Gespräche.', 'Conversation analysis examines conversations.', 'C2', 24),
  ('00000000-0000-4000-a000-00006a4237cf', 'die Bedeutung', 'المعنى', 'meaning', NULL, 'die', 'die Bedeutungen', 'noun', 'Die Bedeutung des Wortes ist klar.', 'The meaning of the word is clear.', 'B2', 25),
  ('00000000-0000-4000-a000-00006a4237cf', 'die Synonymie', 'الترادف', 'synonymy', NULL, 'die', NULL, 'noun', 'Synonymie bedeutet Bedeutungsgleichheit.', 'Synonymy means sameness of meaning.', 'C2', 26),
  ('00000000-0000-4000-a000-00006a4237cf', 'die Antonymie', 'التضاد', 'antonymy', NULL, 'die', NULL, 'noun', 'Antonymie bezeichnet Gegensätze.', 'Antonymy denotes opposites.', 'C2', 27),
  ('00000000-0000-4000-a000-00006a4237cf', 'die Polysemie', 'تعدد المعاني', 'polysemy', NULL, 'die', NULL, 'noun', 'Polysemie hat mehrere Bedeutungen.', 'Polysemy has multiple meanings.', 'C2', 28),
  ('00000000-0000-4000-a000-00006a4237cf', 'die Kompositionalität', 'التركيبية', 'compositionality', NULL, 'die', NULL, 'noun', 'Kompositionalität besagt, dass Bedeutung aus Teilen besteht.', 'Compositionality holds that meaning consists of parts.', 'C2', 29),
  ('00000000-0000-4000-a000-00006a4237cf', 'der Dialekt', 'اللهجة', 'dialect', NULL, 'der', 'die Dialekte', 'noun', 'Der bayerische Dialekt ist schwer zu verstehen.', 'The Bavarian dialect is hard to understand.', 'B2', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006a4237cf', 'Module Partikeln und Satzgliedstellung (Modal Particles and Word Order Nuances) / الجزيئات النمطية وترتيب الكلمات الدقيق', 'Modal particles (doch, ja, eben, halt, wohl, eigentlich, denn, mal) add nuance and emotion to statements. They are almost impossible to translate directly but are essential for natural German. At C2, their correct placement and usage distinguishes near-native from advanced learners.', '[{"rule":"doch: contradiction or emphasis","note":"Das ist doch nicht wahr! (That''s just not true!)"},{"rule":"ja: shared knowledge reminder","note":"Das ist ja interessant! (That IS interesting! — as we both know)"},{"rule":"denn: in W-questions (casual)","note":"Was machst du denn da? (What are you doing there? — curious, not accusatory)"}]', '[{"german":"Das ist doch eine gute Idee, oder?","arabic":"هذه فكرة جيدة، أليس كذلك؟ (تأكيد)","english":"That IS a good idea, isn''t it?"},{"german":"Komm mal her, bitte.","arabic":"تعال إلى هنا من فضلك. (طلاقة)","english":"Come here, please. (softening)"},{"german":"Was hast du eigentlich studiert?","arabic":"ماذا درست بالمناسبة؟","english":"What did you study, by the way?"}]', '[{"mistake":"Speaking without modal particles (too textbook-like)","correction":"Das ist doch klar! (not just \"Das ist klar\")","explanation":"Without modal particles, German sounds robotic. At C2, particles show naturalness."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006a4237cf', 'multiple_choice', 'Welches deutsche Wort bedeutet "translation"?', '["die Übersetzung","übersetzen","der Dolmetscher","die Muttersprache"]', 'die Übersetzung', '"translation" = "die Übersetzung" in German. Article: die Plural: die Übersetzungen', 1, 1),
  ('00000000-0000-4000-a000-00006a4237cf', 'multiple_choice', 'Welches deutsche Wort bedeutet "to translate"?', '["die Muttersprache","die Übersetzung","falscher Freund","übersetzen"]', 'übersetzen', '"to translate" bedeutet auf Deutsch "to translate".  ', 1, 2),
  ('00000000-0000-4000-a000-00006a4237cf', 'multiple_choice', 'Welches deutsche Wort bedeutet "interpreter"?', '["der Dolmetscher","die Übersetzung","übersetzen","die Muttersprache"]', 'der Dolmetscher', '"interpreter" = "der Dolmetscher" in German. Article: der Plural: die Dolmetscher', 1, 3),
  ('00000000-0000-4000-a000-00006a4237cf', 'multiple_choice', 'Welches deutsche Wort bedeutet "native language"?', '["falscher Freund","die Muttersprache","die Übersetzung","übersetzen"]', 'die Muttersprache', '"native language" = "die Muttersprache" in German. Article: die Plural: die Muttersprachen', 1, 4),
  ('00000000-0000-4000-a000-00006a4237cf', 'multiple_choice', 'Welches deutsche Wort bedeutet "false friend"?', '["die Muttersprache","die Übersetzung","übersetzen","der Dolmetscher"]', 'falscher Freund', '"false friend" bedeutet auf Deutsch "false friend".  ', 1, 5),
  ('00000000-0000-4000-a000-00006a4237cf', 'fill_gap', 'Ergänzen Sie den Satz: Ich ___ gern über Module Test. (sprechen)', '["spreche","sprichst","spricht","sprechen"]', 'spreche', 'ich spreche gern = I like to speak. Stem: sprech- + e.', 2, 6),
  ('00000000-0000-4000-a000-00006a4237cf', 'translation', 'Übersetzen Sie ins Deutsche: "I am learning about Module Test."', '["Ich lerne über Module Test.","Ich lerne Module Test.","Lerne ich Module Test."]', 'Ich lerne über Module Test.', '"Ich lerne über..." = "I am learning about..."', 2, 7),
  ('00000000-0000-4000-a000-00006a4237cf', 'matching', 'Match: Which word pairs are correct?', '["die Übersetzung - translation, übersetzen - to translate"]', 'Matched correctly', 'Each German word has a unique English equivalent.', 2, 8);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-00006a4237cf', 'multiple_choice', 'Was bedeutet "die Übersetzung" auf Deutsch?', '["translation","to run","beautiful","yesterday"]', 'translation', 1, 1),
  ('00000000-0000-4000-a000-00006a4237cf', 'multiple_choice', 'Welcher Artikel gehört zu "übersetzen"?', '["der","die","das","den"]', 'der', 1, 2),
  ('00000000-0000-4000-a000-00006a4237cf', 'true_false', 'Das Wort "der Dolmetscher" gehört zum Thema Module Test.', '["True","False"]', 'True', 1, 3),
  ('00000000-0000-4000-a000-00006a4237cf', 'multiple_choice', 'Welcher Satz verwendet present_tense?', '["Das ist doch eine gute Idee, oder?","Komm mal her, bitte.","Was hast du eigentlich studiert?"]', 'Das ist doch eine gute Idee, oder?', 2, 4),
  ('00000000-0000-4000-a000-00006a4237cf', 'true_false', ''Im Deutschen steht das Verb an zweiter Position im Hauptsatz.', '["True","False"]', 'True', 1, 5),
  ('00000000-0000-4000-a000-00006a4237cf', 'fill_blank', 'Complete: Ich ___ (native language) Deutsch.', '["die Muttersprache","lernt","lernst","lernen"]', 'lerne', 2, 6),
  ('00000000-0000-4000-a000-00006a4237cf', 'multiple_choice', 'Wie lautet das deutsche Wort für "false friend"?', '["falscher Freund","die Sprachmittlung","die Äquivalenz","der Stil"]', 'falscher Freund', 1, 7),
  ('00000000-0000-4000-a000-00006a4237cf', 'true_false', 'Im Deutschen werden alle Nomen großgeschrieben.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-00006a4237cf', 'multiple_choice', 'How do you say "please" in a restaurant in Germany?', '["Bitte","Danke","Tschüss","Hallo"]', 'Bitte', 1, 9),
  ('00000000-0000-4000-a000-00006a4237cf', 'fill_blank', 'Wo ___ (to live) du?', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 2, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, french_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-00006a4237cf', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', NULL, 'Used in Übersetzung und Sprachmittlung', 'formal', false, 1),
  ('00000000-0000-4000-a000-00006a4237cf', 'Guten Tag!', 'Good day!', 'نهارك سعيد!', NULL, 'Used in Übersetzung und Sprachmittlung', 'formal', false, 2),
  ('00000000-0000-4000-a000-00006a4237cf', 'Hallo, wie geht es Ihnen?', 'Hello, how are you?', 'مرحباً، كيف حالكم؟', NULL, 'Used in Übersetzung und Sprachmittlung', 'formal', false, 3),
  ('00000000-0000-4000-a000-00006a4237cf', 'Schön, Sie kennenzulernen!', 'Nice to meet you!', 'سعيد بلقائكم!', NULL, 'Used in Übersetzung und Sprachmittlung', 'formal', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-00006a4237cf', 'die die Übersetzung (die Übersetzungen)', 'translation — الترجمة', 'noun', 'vocabulary', 1),
  ('00000000-0000-4000-a000-00006a4237cf', 'übersetzen', 'to translate — يترجم', 'verb', 'vocabulary', 2),
  ('00000000-0000-4000-a000-00006a4237cf', 'der der Dolmetscher (die Dolmetscher)', 'interpreter — المترجم الفوري', 'noun', 'vocabulary', 3),
  ('00000000-0000-4000-a000-00006a4237cf', 'die die Muttersprache (die Muttersprachen)', 'native language — اللغة الأم', 'noun', 'vocabulary', 4),
  ('00000000-0000-4000-a000-00006a4237cf', 'falscher Freund', 'false friend — الصديق المزيف', 'noun', 'vocabulary', 5),
  ('00000000-0000-4000-a000-00006a4237cf', 'die die Sprachmittlung', 'language mediation — الوساطة اللغوية', 'noun', 'vocabulary', 6),
  ('00000000-0000-4000-a000-00006a4237cf', 'die die Äquivalenz', 'equivalence — التكافؤ', 'noun', 'vocabulary', 7),
  ('00000000-0000-4000-a000-00006a4237cf', 'der der Stil (die Stile)', 'style — الأسلوب', 'noun', 'vocabulary', 8),
  ('00000000-0000-4000-a000-00006a4237cf', 'das das Register (die Register)', 'register — المستوى اللغوي', 'noun', 'vocabulary', 9),
  ('00000000-0000-4000-a000-00006a4237cf', 'das das Stilmittel (die Stilmittel)', 'stylistic device — الأداة الأسلوبية', 'noun', 'vocabulary', 10),
  ('00000000-0000-4000-a000-00006a4237cf', 'die die Alliteration (die Alliterationen)', 'alliteration — الجناس', 'noun', 'vocabulary', 11),
  ('00000000-0000-4000-a000-00006a4237cf', 'die die Ellipse (die Ellipsen)', 'ellipsis — الحذف', 'noun', 'vocabulary', 12),
  ('00000000-0000-4000-a000-00006a4237cf', 'die die Hyperbel (die Hyperbeln)', 'hyperbole — المبالغة', 'noun', 'vocabulary', 13),
  ('00000000-0000-4000-a000-00006a4237cf', 'die die Poetik', 'poetics — الشعرية', 'noun', 'vocabulary', 14),
  ('00000000-0000-4000-a000-00006a4237cf', 'der der Vers (die Verse)', 'verse — البيت الشعري', 'noun', 'vocabulary', 15),
  ('00000000-0000-4000-a000-00006a4237cf', 'Das ist doch eine gute Idee, oder?', 'That IS a good idea, isn''t it?', 'Module Partikeln und Satzgliedstellung (Modal Particles and Word Order Nuances)', 'grammar', 16),
  ('00000000-0000-4000-a000-00006a4237cf', 'Komm mal her, bitte.', 'Come here, please. (softening)', 'Module Partikeln und Satzgliedstellung (Modal Particles and Word Order Nuances)', 'grammar', 17),
  ('00000000-0000-4000-a000-00006a4237cf', 'Was hast du eigentlich studiert?', 'What did you study, by the way?', 'Module Partikeln und Satzgliedstellung (Modal Particles and Word Order Nuances)', 'grammar', 18);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, french_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-00006a4237cf', 'Test: Übersetzung und Sprachmittlung — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', NULL, 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, french_translation, duration_seconds, speaker_count, scenario) values
  ('00000000-0000-4000-a000-00006a4237cf', 'Test: Übersetzung und Sprachmittlung — Hörverständnis', '[Lehrerin]: Guten Morgen! Heute lernen wir Begrüßungen.

[Lehrerin]: Wiederholen Sie: Guten Morgen!

[Student]: Guten Morgen!

[Lehrerin]: Sehr gut! Und wie sagt man "Goodbye"?

[Student]: Auf Wiedersehen!

[Lehrerin]: Perfekt! Bis morgen!', '[Lehrerin]: Good morning! Today we learn greetings.

[Lehrerin]: Repeat: Good morning!

[Student]: Good morning!

[Lehrerin]: Very good! And how do you say goodbye?

[Student]: Goodbye!

[Lehrerin]: Perfect! See you tomorrow!', '[Lehrerin]: صباح الخير! اليوم نتعلم التحيات.

[Lehrerin]: كرروا: صباح الخير!

[Student]: صباح الخير!

[Lehrerin]: جيد جداً! وكيف نقول "وداعاً"؟

[Student]: إلى اللقاء!

[Lehrerin]: ممتاز! إلى الغد!', '[Lehrerin]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: ', 72, 2, 'Übersetzung und Sprachmittlung');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-00006a4237cf', '🔊 Sprechen: Test: Übersetzung und Sprachmittlung', 'Presentation: Prepare a 2-minute presentation on "Module Test im deutschsprachigen Raum". Use discourse markers like "zunächst", "darüber hinaus", "abschließend". Your AI partner will ask critical questions afterwards.', 'Module Test', ARRAY['Use discourse markers (also, jedoch, außerdem)','React naturally: "Ach so!", "Echt?", "Das stimmt!"','Paraphrase when you don''t know a word']::text[], ARRAY['die Übersetzung','übersetzen','der Dolmetscher','die Muttersprache','falscher Freund','die Sprachmittlung','die Äquivalenz','der Stil']::text[], 120, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-00006a4237cf', '✏️ Schreiben: Test: Übersetzung und Sprachmittlung', 'Write a discursive essay (300-350 words) analyzing "Module Test in modern German society". Present both advantages and disadvantages. Use complex sentence structures (Nebensätze mit "obwohl", "trotzdem", "während") and formal register. Conclude with your own position.', ARRAY['Use paragraph breaks for structure','Connect ideas with "außerdem", "deshalb", "jedoch"','Check your verb position in Nebensätze']::text[], ARRAY['die Übersetzung','übersetzen','der Dolmetscher','die Muttersprache','falscher Freund','die Sprachmittlung','die Äquivalenz','der Stil']::text[], ARRAY['Sentence structure','Vocabulary usage']::text[], 250, 350, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00006a4237cf', 'Test: Übersetzung und Sprachmittlung — Roleplay', 'Module Test', 'Student', 'Teacher', 'Practice conversation about Module Test', 'Hallo! Lass uns über dieses Thema sprechen.', 'advanced', 1, ARRAY['die Übersetzung','übersetzen','der Dolmetscher','die Muttersprache','falscher Freund','die Sprachmittlung','die Äquivalenz','der Stil']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00006a4237cf', 'Test: Übersetzung und Sprachmittlung — Advanced Roleplay', 'Module Test', 'Customer', 'Assistant', 'Extended conversation about Module Test', 'Guten Tag! Wie kann ich Ihnen helfen?', 'advanced', 2, ARRAY['die Übersetzung','übersetzen','der Dolmetscher','die Muttersprache','falscher Freund','die Sprachmittlung','die Äquivalenz','der Stil']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-00006a4237cf', 'Test: Übersetzung und Sprachmittlung — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Test: Übersetzung und Sprachmittlung".', 'Creative practice for Module Test', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-00006a4237cf', '📚 Hausaufgabe: Test: Übersetzung und Sprachmittlung', 'Complete these tasks to reinforce "Test: Übersetzung und Sprachmittlung".', 'mixed', '[{"description":"Create 10 flashcards from this lesson''s vocabulary — write German on one side, Arabic on the other. Test yourself 3 times."},{"description":"Write 6 sentences about Module Test: 2 statements, 2 questions, 2 negations — all using present_tense."},{"description":"Record yourself reading the dialogue aloud. Listen to the recording and note 3 things to improve."},{"description":"Find 3 real German websites, videos, or articles about Module Test. Note 5 new words you discovered."}]', 50, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-00006a4237cf', '🎯 Excellent progress! This lesson covered Module Test (60 vocabulary items) and present_tense. You developed reading, listening, speaking, and writing skills in the context of translation. Focus on your common mistakes area for maximum improvement.', '["60 vocabulary items about Module Test","present_tense — grammar explanation and practice","Reading comprehension: text about Module Test","Listening comprehension: dialogue about Module Test","Speaking practice: roleplay/discussion about Module Test","Writing task: text about Module Test"]', '[{"title":"Test: Übersetzung und Sprachmittlung Review","summary":"present_tense — the main grammar focus. Focus on nuanced usage, exceptions, and stylistic variation."}]', ARRAY['die Übersetzung (translation)','übersetzen (to translate)','der Dolmetscher (interpreter)','die Muttersprache (native language)','falscher Freund (false friend)']::text[], ARRAY['Don''t translate from Arabic word-for-word — German has different sentence structure','Learn every noun with its article: NEVER learn "Tisch" alone, always "der Tisch"','Pay attention to Konjunktiv I/II distinction']::text[], ARRAY['Practice 15-20 minutes daily — consistency beats intensity','Speak out loud: German pronunciation needs muscle memory','Use the new vocabulary within 24 hours or you''ll forget it','Watch German YouTube videos about Module Test for authentic input']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006a4237cf', 'translation', 'Translate to German: "I use the word "translation" in a sentence about Module Test."', '[]', 'Die Übersetzung ist gelungen.', 'Use die  "die Übersetzung" with the correct present_tense form.', 1, 40);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006a4237cf', 'translation', 'Translate to German: "I use the word "to translate" in a sentence about Module Test."', '[]', 'Ich übersetze den Text ins Arabische.', 'Use  "übersetzen" with the correct present_tense form.', 1, 41);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006a4237cf', 'translation', 'Translate to German: "I use the word "interpreter" in a sentence about Module Test."', '[]', 'Der Dolmetscher übersetzt mündlich.', 'Use der  "der Dolmetscher" with the correct present_tense form.', 1, 42);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006a4237cf', 'Culture: 🇩🇪 Deutsche Kultur: Module Test', 'The German approach to Module Test reflects deeper cultural values: Ordnung (order), Gründlichkeit (thoroughness), and Sachlichkeit (objectivity). Debates about Module Test in German media are characterised by factual argumentation. Understanding these discourse norms is essential for C1/C2 learners who want to participate in academic or professional discussions.

لدى Module Test في ألمانيا فروق ثقافية دقيقة تختلف عن البلدان العربية. الألمان يفصلون بين حياتهم الخاصة والمهنية بشكل صارم.', '["Tip: Always use \"Sie\" (formal) with strangers and colleagues","Tip: Germans appreciate punctuality — arrive 5 minutes early","Tip: Direct feedback is a sign of respect, not criticism","Tip: Prepare factual arguments, not emotional appeals"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006a4237cf', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Incorrect preposition usage after verbs","correction":"Learn which preposition each verb requires (sich freuen auf, warten auf, denken an)","explanation":"Arabic and German have different sentence structures. Arabic is VSO, German is SVO with verb in position 2."},{"mistake":"Incorrect use of Konjunktiv II in polite requests","correction":"Ich hätte gern... (I would like...)","explanation":"Konjunktiv II is often replaced with würde + infinitive in speech"}]', 30);

  -- Module 5: Wissenschaftskommunikation
  insert into public.course_modules (id, level_id, title, description, objectives, order_index, estimated_hours, is_published)
  values ('00000000-0000-4000-a000-000039d176c3', 'C2', 'Wissenschaftskommunikation', 'Learn to communicate complex scientific topics to different audiences.', '["Write scientific papers in German","Present research findings","Communicate science to the public","Use appropriate register for different audiences","Understand publication conventions"]', 5, 5, true)
  on conflict (id) do nothing;

  -- Lesson 1: Wissenschaftliches Publizieren (L-C2-05-01)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-00006a42ac2c', '00000000-0000-4000-a000-000039d176c3', 'Wissenschaftliches Publizieren', 'Learn scientific publishing conventions.', 'Scientific Publishing', 'vocabulary', '["Understand and use 68 key vocabulary words about Scientific Publishing","Apply present_tense correctly in sentences","Read and comprehend a text about Scientific Publishing","Listen and understand a natural dialogue about Scientific Publishing","Speak about Scientific Publishing with confidence","Write a short text about Scientific Publishing using new vocabulary"]', 60, 1, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, french_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-00006a42ac2c', 'die Forschung', 'البحث', 'research', NULL, 'die', NULL, 'noun', 'Die Forschung ist interdisziplinär.', 'The research is interdisciplinary.', 'B2', 1),
  ('00000000-0000-4000-a000-00006a42ac2c', 'die Analyse', 'التحليل', 'analysis', NULL, 'die', 'die Analysen', 'noun', 'Die Analyse der Daten dauert lange.', 'The analysis of the data takes long.', 'B2', 2),
  ('00000000-0000-4000-a000-00006a42ac2c', 'die Methode', 'الطريقة', 'method', NULL, 'die', 'die Methoden', 'noun', 'Die Methode ist wissenschaftlich anerkannt.', 'The method is scientifically recognized.', 'B2', 3),
  ('00000000-0000-4000-a000-00006a42ac2c', 'die These', 'الأطروحة', 'thesis', NULL, 'die', 'die Thesen', 'noun', 'Die These wird im Kapitel 3 diskutiert.', 'The thesis is discussed in chapter 3.', 'C1', 4),
  ('00000000-0000-4000-a000-00006a42ac2c', 'die Publikation', 'المنشور', 'publication', NULL, 'die', 'die Publikationen', 'noun', 'Die Publikation erscheint im Springer Verlag.', 'The publication appears at Springer.', 'C1', 5),
  ('00000000-0000-4000-a000-00006a42ac2c', 'der Diskurs', 'الخطاب', 'discourse', NULL, 'der', 'die Diskurse', 'noun', 'Der akademische Diskurs ist vielschichtig.', 'The academic discourse is multilayered.', 'C1', 6),
  ('00000000-0000-4000-a000-00006a42ac2c', 'die Hypothese', 'الفرضية', 'hypothesis', NULL, 'die', 'die Hypothesen', 'noun', 'Die Hypothese wurde bestätigt.', 'The hypothesis was confirmed.', 'C1', 7),
  ('00000000-0000-4000-a000-00006a42ac2c', 'die Empirie', 'التجريبية', 'empirical research', NULL, 'die', NULL, 'noun', 'Die Empirie liefert Daten.', 'Empirical research provides data.', 'C1', 8),
  ('00000000-0000-4000-a000-00006a42ac2c', 'der Stil', 'الأسلوب', 'style', NULL, 'der', 'die Stile', 'noun', 'Der Stil des Textes ist formell.', 'The style of the text is formal.', 'B2', 9),
  ('00000000-0000-4000-a000-00006a42ac2c', 'das Register', 'المستوى اللغوي', 'register', NULL, 'das', 'die Register', 'noun', 'Das Register passt zur Situation.', 'The register fits the situation.', 'C1', 10),
  ('00000000-0000-4000-a000-00006a42ac2c', 'das Stilmittel', 'الأداة الأسلوبية', 'stylistic device', NULL, 'das', 'die Stilmittel', 'noun', 'Das Stilmittel unterstreicht die Aussage.', 'The stylistic device emphasizes the statement.', 'C1', 11),
  ('00000000-0000-4000-a000-00006a42ac2c', 'die Alliteration', 'الجناس', 'alliteration', NULL, 'die', 'die Alliterationen', 'noun', 'Die Alliteration wiederholt den Anlaut.', 'Alliteration repeats the initial sound.', 'C2', 12),
  ('00000000-0000-4000-a000-00006a42ac2c', 'die Ellipse', 'الحذف', 'ellipsis', NULL, 'die', 'die Ellipsen', 'noun', 'Die Ellipse spart Wörter aus.', 'The ellipsis omits words.', 'C2', 13),
  ('00000000-0000-4000-a000-00006a42ac2c', 'die Hyperbel', 'المبالغة', 'hyperbole', NULL, 'die', 'die Hyperbeln', 'noun', 'Die Hyperbel übertreibt stark.', 'Hyperbole exaggerates strongly.', 'C2', 14),
  ('00000000-0000-4000-a000-00006a42ac2c', 'die Poetik', 'الشعرية', 'poetics', NULL, 'die', NULL, 'noun', 'Poetik ist die Theorie der Dichtkunst.', 'Poetics is the theory of poetry.', 'C2', 15),
  ('00000000-0000-4000-a000-00006a42ac2c', 'der Vers', 'البيت الشعري', 'verse', NULL, 'der', 'die Verse', 'noun', 'Der Vers hat fünf Hebungen.', 'The verse has five stresses.', 'C1', 16),
  ('00000000-0000-4000-a000-00006a42ac2c', 'der Reim', 'القافية', 'rhyme', NULL, 'der', 'die Reime', 'noun', 'Der Reim verbindet die Zeilen.', 'Rhyme connects the lines.', 'C1', 17),
  ('00000000-0000-4000-a000-00006a42ac2c', 'das Metrum', 'الوزن', 'meter', NULL, 'das', 'die Metren', 'noun', 'Das Metrum bestimmt den Rhythmus.', 'The meter determines the rhythm.', 'C2', 18),
  ('00000000-0000-4000-a000-00006a42ac2c', 'die Gattung', 'النوع الأدبي', 'genre', NULL, 'die', 'die Gattungen', 'noun', 'Lyrik ist eine literarische Gattung.', 'Lyric poetry is a literary genre.', 'C1', 19),
  ('00000000-0000-4000-a000-00006a42ac2c', 'die Pragmatik', 'البراغماتية', 'pragmatics', NULL, 'die', NULL, 'noun', 'Pragmatik untersucht Sprache im Kontext.', 'Pragmatics studies language in context.', 'C2', 20),
  ('00000000-0000-4000-a000-00006a42ac2c', 'der Sprechakt', 'فعل الكلام', 'speech act', NULL, 'der', 'die Sprechakte', 'noun', 'Der Sprechakt ändert die Wirklichkeit.', 'The speech act changes reality.', 'C2', 21),
  ('00000000-0000-4000-a000-00006a42ac2c', 'die Implikatur', 'الاستلزام التخاطبي', 'implicature', NULL, 'die', 'die Implikaturen', 'noun', 'Die Implikatur ist die indirekte Bedeutung.', 'Implicature is the indirect meaning.', 'C2', 22),
  ('00000000-0000-4000-a000-00006a42ac2c', 'der Kontext', 'السياق', 'context', NULL, 'der', 'die Kontexte', 'noun', 'Der Kontext bestimmt die Bedeutung.', 'Context determines meaning.', 'B2', 23),
  ('00000000-0000-4000-a000-00006a42ac2c', 'die Höflichkeit', 'الأدب / اللباقة', 'politeness', NULL, 'die', NULL, 'noun', 'Höflichkeit ist in Japan sehr wichtig.', 'Politeness is very important in Japan.', 'B2', 24),
  ('00000000-0000-4000-a000-00006a42ac2c', 'die Konversationsanalyse', 'تحليل المحادثة', 'conversation analysis', NULL, 'die', NULL, 'noun', 'Die Konversationsanalyse untersucht Gespräche.', 'Conversation analysis examines conversations.', 'C2', 25),
  ('00000000-0000-4000-a000-00006a42ac2c', 'die Bedeutung', 'المعنى', 'meaning', NULL, 'die', 'die Bedeutungen', 'noun', 'Die Bedeutung des Wortes ist klar.', 'The meaning of the word is clear.', 'B2', 26),
  ('00000000-0000-4000-a000-00006a42ac2c', 'die Synonymie', 'الترادف', 'synonymy', NULL, 'die', NULL, 'noun', 'Synonymie bedeutet Bedeutungsgleichheit.', 'Synonymy means sameness of meaning.', 'C2', 27),
  ('00000000-0000-4000-a000-00006a42ac2c', 'die Antonymie', 'التضاد', 'antonymy', NULL, 'die', NULL, 'noun', 'Antonymie bezeichnet Gegensätze.', 'Antonymy denotes opposites.', 'C2', 28),
  ('00000000-0000-4000-a000-00006a42ac2c', 'die Polysemie', 'تعدد المعاني', 'polysemy', NULL, 'die', NULL, 'noun', 'Polysemie hat mehrere Bedeutungen.', 'Polysemy has multiple meanings.', 'C2', 29),
  ('00000000-0000-4000-a000-00006a42ac2c', 'die Kompositionalität', 'التركيبية', 'compositionality', NULL, 'die', NULL, 'noun', 'Kompositionalität besagt, dass Bedeutung aus Teilen besteht.', 'Compositionality holds that meaning consists of parts.', 'C2', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006a42ac2c', 'Module Partikeln und Satzgliedstellung (Modal Particles and Word Order Nuances) / الجزيئات النمطية وترتيب الكلمات الدقيق', 'Modal particles (doch, ja, eben, halt, wohl, eigentlich, denn, mal) add nuance and emotion to statements. They are almost impossible to translate directly but are essential for natural German. At C2, their correct placement and usage distinguishes near-native from advanced learners.', '[{"rule":"doch: contradiction or emphasis","note":"Das ist doch nicht wahr! (That''s just not true!)"},{"rule":"ja: shared knowledge reminder","note":"Das ist ja interessant! (That IS interesting! — as we both know)"},{"rule":"denn: in W-questions (casual)","note":"Was machst du denn da? (What are you doing there? — curious, not accusatory)"}]', '[{"german":"Das ist doch eine gute Idee, oder?","arabic":"هذه فكرة جيدة، أليس كذلك؟ (تأكيد)","english":"That IS a good idea, isn''t it?"},{"german":"Komm mal her, bitte.","arabic":"تعال إلى هنا من فضلك. (طلاقة)","english":"Come here, please. (softening)"},{"german":"Was hast du eigentlich studiert?","arabic":"ماذا درست بالمناسبة؟","english":"What did you study, by the way?"}]', '[{"mistake":"Speaking without modal particles (too textbook-like)","correction":"Das ist doch klar! (not just \"Das ist klar\")","explanation":"Without modal particles, German sounds robotic. At C2, particles show naturalness."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006a42ac2c', 'multiple_choice', 'Welches deutsche Wort bedeutet "research"?', '["die Publikation","die These","die Methode","die Analyse"]', 'die Forschung', '"research" = "die Forschung" in German. Article: die ', 1, 1),
  ('00000000-0000-4000-a000-00006a42ac2c', 'multiple_choice', 'Welches deutsche Wort bedeutet "analysis"?', '["die These","die Publikation","die Analyse","die Forschung"]', 'die Analyse', '"analysis" = "die Analyse" in German. Article: die Plural: die Analysen', 1, 2),
  ('00000000-0000-4000-a000-00006a42ac2c', 'multiple_choice', 'Welches deutsche Wort bedeutet "method"?', '["die Methode","die Analyse","die Forschung","die Publikation"]', 'die Methode', '"method" = "die Methode" in German. Article: die Plural: die Methoden', 1, 3),
  ('00000000-0000-4000-a000-00006a42ac2c', 'multiple_choice', 'Welches deutsche Wort bedeutet "thesis"?', '["die Methode","die Analyse","die Forschung","die Publikation"]', 'die These', '"thesis" = "die These" in German. Article: die Plural: die Thesen', 1, 4),
  ('00000000-0000-4000-a000-00006a42ac2c', 'multiple_choice', 'Welches deutsche Wort bedeutet "publication"?', '["die Publikation","die Forschung","die Methode","die These"]', 'die Publikation', '"publication" = "die Publikation" in German. Article: die Plural: die Publikationen', 1, 5),
  ('00000000-0000-4000-a000-00006a42ac2c', 'fill_gap', 'Ergänzen Sie den Satz: Ich ___ gern Scientific Publishing. (sprechen)', '["spreche","sprichst","spricht","sprechen"]', 'spreche', 'ich spreche gern = I like to speak. Stem: sprech- + e.', 2, 6),
  ('00000000-0000-4000-a000-00006a42ac2c', 'translation', 'Übersetzen Sie ins Deutsche: "I am learning about Scientific Publishing."', '["Ich lerne über Scientific Publishing.","Ich lerne Scientific Publishing.","Lerne ich Scientific Publishing."]', 'Ich lerne über Scientific Publishing.', '"Ich lerne über..." = "I am learning about..."', 2, 7),
  ('00000000-0000-4000-a000-00006a42ac2c', 'matching', 'Match: Which word pairs are correct?', '["die Forschung - research, die Analyse - analysis"]', 'Matched correctly', 'Each German word has a unique English equivalent.', 2, 8);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-00006a42ac2c', 'multiple_choice', 'Was bedeutet "die Forschung" auf Deutsch?', '["research","to run","beautiful","yesterday"]', 'research', 1, 1),
  ('00000000-0000-4000-a000-00006a42ac2c', 'multiple_choice', 'Welcher Artikel gehört zu "die Analyse"?', '["der","die","das","den"]', 'die', 1, 2),
  ('00000000-0000-4000-a000-00006a42ac2c', 'true_false', 'Das Wort "die Methode" gehört zum Thema Scientific Publishing.', '["True","False"]', 'True', 1, 3),
  ('00000000-0000-4000-a000-00006a42ac2c', 'multiple_choice', 'Welcher Satz verwendet present_tense?', '["Das ist doch eine gute Idee, oder?","Komm mal her, bitte.","Was hast du eigentlich studiert?"]', 'Das ist doch eine gute Idee, oder?', 2, 4),
  ('00000000-0000-4000-a000-00006a42ac2c', 'true_false', ''Im Deutschen steht das Verb an zweiter Position im Hauptsatz.', '["True","False"]', 'True', 1, 5),
  ('00000000-0000-4000-a000-00006a42ac2c', 'fill_blank', 'Complete: Ich ___ (thesis) Deutsch.', '["die These","lernt","lernst","lernen"]', 'lerne', 2, 6),
  ('00000000-0000-4000-a000-00006a42ac2c', 'multiple_choice', 'Wie lautet das deutsche Wort für "publication"?', '["die Publikation","der Diskurs","die Hypothese","die Empirie"]', 'die Publikation', 1, 7),
  ('00000000-0000-4000-a000-00006a42ac2c', 'true_false', 'Im Deutschen werden alle Nomen großgeschrieben.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-00006a42ac2c', 'multiple_choice', 'How do you say "please" in a restaurant in Germany?', '["Bitte","Danke","Tschüss","Hallo"]', 'Bitte', 1, 9),
  ('00000000-0000-4000-a000-00006a42ac2c', 'fill_blank', 'Wo ___ (to live) du?', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 2, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, french_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-00006a42ac2c', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', NULL, 'Used in Wissenschaftskommunikation', 'formal', false, 1),
  ('00000000-0000-4000-a000-00006a42ac2c', 'Guten Tag!', 'Good day!', 'نهارك سعيد!', NULL, 'Used in Wissenschaftskommunikation', 'formal', false, 2),
  ('00000000-0000-4000-a000-00006a42ac2c', 'Hallo, wie geht es Ihnen?', 'Hello, how are you?', 'مرحباً، كيف حالكم؟', NULL, 'Used in Wissenschaftskommunikation', 'formal', false, 3),
  ('00000000-0000-4000-a000-00006a42ac2c', 'Schön, Sie kennenzulernen!', 'Nice to meet you!', 'سعيد بلقائكم!', NULL, 'Used in Wissenschaftskommunikation', 'formal', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-00006a42ac2c', 'die die Forschung', 'research — البحث', 'noun', 'vocabulary', 1),
  ('00000000-0000-4000-a000-00006a42ac2c', 'die die Analyse (die Analysen)', 'analysis — التحليل', 'noun', 'vocabulary', 2),
  ('00000000-0000-4000-a000-00006a42ac2c', 'die die Methode (die Methoden)', 'method — الطريقة', 'noun', 'vocabulary', 3),
  ('00000000-0000-4000-a000-00006a42ac2c', 'die die These (die Thesen)', 'thesis — الأطروحة', 'noun', 'vocabulary', 4),
  ('00000000-0000-4000-a000-00006a42ac2c', 'die die Publikation (die Publikationen)', 'publication — المنشور', 'noun', 'vocabulary', 5),
  ('00000000-0000-4000-a000-00006a42ac2c', 'der der Diskurs (die Diskurse)', 'discourse — الخطاب', 'noun', 'vocabulary', 6),
  ('00000000-0000-4000-a000-00006a42ac2c', 'die die Hypothese (die Hypothesen)', 'hypothesis — الفرضية', 'noun', 'vocabulary', 7),
  ('00000000-0000-4000-a000-00006a42ac2c', 'die die Empirie', 'empirical research — التجريبية', 'noun', 'vocabulary', 8),
  ('00000000-0000-4000-a000-00006a42ac2c', 'der der Stil (die Stile)', 'style — الأسلوب', 'noun', 'vocabulary', 9),
  ('00000000-0000-4000-a000-00006a42ac2c', 'das das Register (die Register)', 'register — المستوى اللغوي', 'noun', 'vocabulary', 10),
  ('00000000-0000-4000-a000-00006a42ac2c', 'das das Stilmittel (die Stilmittel)', 'stylistic device — الأداة الأسلوبية', 'noun', 'vocabulary', 11),
  ('00000000-0000-4000-a000-00006a42ac2c', 'die die Alliteration (die Alliterationen)', 'alliteration — الجناس', 'noun', 'vocabulary', 12),
  ('00000000-0000-4000-a000-00006a42ac2c', 'die die Ellipse (die Ellipsen)', 'ellipsis — الحذف', 'noun', 'vocabulary', 13),
  ('00000000-0000-4000-a000-00006a42ac2c', 'die die Hyperbel (die Hyperbeln)', 'hyperbole — المبالغة', 'noun', 'vocabulary', 14),
  ('00000000-0000-4000-a000-00006a42ac2c', 'die die Poetik', 'poetics — الشعرية', 'noun', 'vocabulary', 15),
  ('00000000-0000-4000-a000-00006a42ac2c', 'Das ist doch eine gute Idee, oder?', 'That IS a good idea, isn''t it?', 'Module Partikeln und Satzgliedstellung (Modal Particles and Word Order Nuances)', 'grammar', 16),
  ('00000000-0000-4000-a000-00006a42ac2c', 'Komm mal her, bitte.', 'Come here, please. (softening)', 'Module Partikeln und Satzgliedstellung (Modal Particles and Word Order Nuances)', 'grammar', 17),
  ('00000000-0000-4000-a000-00006a42ac2c', 'Was hast du eigentlich studiert?', 'What did you study, by the way?', 'Module Partikeln und Satzgliedstellung (Modal Particles and Word Order Nuances)', 'grammar', 18);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, french_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-00006a42ac2c', 'Wissenschaftliches Publizieren — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', NULL, 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, french_translation, duration_seconds, speaker_count, scenario) values
  ('00000000-0000-4000-a000-00006a42ac2c', 'Wissenschaftliches Publizieren — Hörverständnis', '[Lehrerin]: Guten Morgen! Heute lernen wir Begrüßungen.

[Lehrerin]: Wiederholen Sie: Guten Morgen!

[Student]: Guten Morgen!

[Lehrerin]: Sehr gut! Und wie sagt man "Goodbye"?

[Student]: Auf Wiedersehen!

[Lehrerin]: Perfekt! Bis morgen!', '[Lehrerin]: Good morning! Today we learn greetings.

[Lehrerin]: Repeat: Good morning!

[Student]: Good morning!

[Lehrerin]: Very good! And how do you say goodbye?

[Student]: Goodbye!

[Lehrerin]: Perfect! See you tomorrow!', '[Lehrerin]: صباح الخير! اليوم نتعلم التحيات.

[Lehrerin]: كرروا: صباح الخير!

[Student]: صباح الخير!

[Lehrerin]: جيد جداً! وكيف نقول "وداعاً"؟

[Student]: إلى اللقاء!

[Lehrerin]: ممتاز! إلى الغد!', '[Lehrerin]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: ', 72, 2, 'Wissenschaftskommunikation');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-00006a42ac2c', '🔊 Sprechen: Wissenschaftliches Publizieren', 'Presentation: Prepare a 2-minute presentation on "Scientific Publishing im deutschsprachigen Raum". Use discourse markers like "zunächst", "darüber hinaus", "abschließend". Your AI partner will ask critical questions afterwards.', 'Scientific Publishing', ARRAY['Use discourse markers (also, jedoch, außerdem)','React naturally: "Ach so!", "Echt?", "Das stimmt!"','Paraphrase when you don''t know a word']::text[], ARRAY['die Forschung','die Analyse','die Methode','die These','die Publikation','der Diskurs','die Hypothese','die Empirie']::text[], 120, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-00006a42ac2c', '✏️ Schreiben: Wissenschaftliches Publizieren', 'Write a discursive essay (300-350 words) analyzing "Scientific Publishing in modern German society". Present both advantages and disadvantages. Use complex sentence structures (Nebensätze mit "obwohl", "trotzdem", "während") and formal register. Conclude with your own position.', ARRAY['Use paragraph breaks for structure','Connect ideas with "außerdem", "deshalb", "jedoch"','Check your verb position in Nebensätze']::text[], ARRAY['die Forschung','die Analyse','die Methode','die These','die Publikation','der Diskurs','die Hypothese','die Empirie']::text[], ARRAY['Sentence structure','Vocabulary usage']::text[], 250, 350, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00006a42ac2c', 'Wissenschaftliches Publizieren — Roleplay', 'Scientific Publishing', 'Student', 'Teacher', 'Practice conversation about Scientific Publishing', 'Hallo! Lass uns über dieses Thema sprechen.', 'advanced', 1, ARRAY['die Forschung','die Analyse','die Methode','die These','die Publikation','der Diskurs','die Hypothese','die Empirie']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00006a42ac2c', 'Wissenschaftliches Publizieren — Advanced Roleplay', 'Scientific Publishing', 'Customer', 'Assistant', 'Extended conversation about Scientific Publishing', 'Guten Tag! Wie kann ich Ihnen helfen?', 'advanced', 2, ARRAY['die Forschung','die Analyse','die Methode','die These','die Publikation','der Diskurs','die Hypothese','die Empirie']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-00006a42ac2c', 'Wissenschaftliches Publizieren — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Wissenschaftliches Publizieren".', 'Creative practice for Scientific Publishing', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-00006a42ac2c', '📚 Hausaufgabe: Wissenschaftliches Publizieren', 'Complete these tasks to reinforce "Wissenschaftliches Publizieren".', 'mixed', '[{"description":"Create 10 flashcards from this lesson''s vocabulary — write German on one side, Arabic on the other. Test yourself 3 times."},{"description":"Write 6 sentences about Scientific Publishing: 2 statements, 2 questions, 2 negations — all using present_tense."},{"description":"Record yourself reading the dialogue aloud. Listen to the recording and note 3 things to improve."},{"description":"Find 3 real German websites, videos, or articles about Scientific Publishing. Note 5 new words you discovered."}]', 50, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-00006a42ac2c', '🎯 Excellent progress! This lesson covered Scientific Publishing (68 vocabulary items) and present_tense. You developed reading, listening, speaking, and writing skills in the context of academic. Focus on your common mistakes area for maximum improvement.', '["68 vocabulary items about Scientific Publishing","present_tense — grammar explanation and practice","Reading comprehension: text about Scientific Publishing","Listening comprehension: dialogue about Scientific Publishing","Speaking practice: roleplay/discussion about Scientific Publishing","Writing task: text about Scientific Publishing"]', '[{"title":"Wissenschaftliches Publizieren Review","summary":"present_tense — the main grammar focus. Focus on nuanced usage, exceptions, and stylistic variation."}]', ARRAY['die Forschung (research)','die Analyse (analysis)','die Methode (method)','die These (thesis)','die Publikation (publication)']::text[], ARRAY['Don''t translate from Arabic word-for-word — German has different sentence structure','Learn every noun with its article: NEVER learn "Tisch" alone, always "der Tisch"','Pay attention to Konjunktiv I/II distinction']::text[], ARRAY['Practice 15-20 minutes daily — consistency beats intensity','Speak out loud: German pronunciation needs muscle memory','Use the new vocabulary within 24 hours or you''ll forget it','Watch German YouTube videos about Scientific Publishing for authentic input']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006a42ac2c', 'translation', 'Translate to German: "I use the word "research" in a sentence about Scientific Publishing."', '[]', 'Die Forschung ist interdisziplinär.', 'Use die  "die Forschung" with the correct present_tense form.', 1, 40);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006a42ac2c', 'translation', 'Translate to German: "I use the word "analysis" in a sentence about Scientific Publishing."', '[]', 'Die Analyse der Daten dauert lange.', 'Use die  "die Analyse" with the correct present_tense form.', 1, 41);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006a42ac2c', 'translation', 'Translate to German: "I use the word "method" in a sentence about Scientific Publishing."', '[]', 'Die Methode ist wissenschaftlich anerkannt.', 'Use die  "die Methode" with the correct present_tense form.', 1, 42);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006a42ac2c', 'Culture: 🇩🇪 Deutsche Kultur: Scientific Publishing', 'The German approach to Scientific Publishing reflects deeper cultural values: Ordnung (order), Gründlichkeit (thoroughness), and Sachlichkeit (objectivity). Debates about Scientific Publishing in German media are characterised by factual argumentation. Understanding these discourse norms is essential for C1/C2 learners who want to participate in academic or professional discussions.

لدى Scientific Publishing في ألمانيا فروق ثقافية دقيقة تختلف عن البلدان العربية. الألمان يفصلون بين حياتهم الخاصة والمهنية بشكل صارم.', '["Tip: Always use \"Sie\" (formal) with strangers and colleagues","Tip: Germans appreciate punctuality — arrive 5 minutes early","Tip: Direct feedback is a sign of respect, not criticism","Tip: Prepare factual arguments, not emotional appeals"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006a42ac2c', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Incorrect preposition usage after verbs","correction":"Learn which preposition each verb requires (sich freuen auf, warten auf, denken an)","explanation":"Arabic and German have different sentence structures. Arabic is VSO, German is SVO with verb in position 2."},{"mistake":"Incorrect use of Konjunktiv II in polite requests","correction":"Ich hätte gern... (I would like...)","explanation":"Konjunktiv II is often replaced with würde + infinitive in speech"}]', 30);

  -- Lesson 2: Wissenschaft verständlich kommunizieren (L-C2-05-02)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-00006a42ac2d', '00000000-0000-4000-a000-000039d176c3', 'Wissenschaft verständlich kommunizieren', 'Communicate complex topics to general audiences.', 'Science Communication', 'speaking', '["Understand and apply present_tense rules correctly","Use present_tense in real conversations","Avoid common mistakes Arabic speakers make with present_tense","Read and understand present_tense in context","Listen and identify present_tense in speech","Write sentences using present_tense correctly"]', 55, 2, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, french_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-00006a42ac2d', 'die Forschung', 'البحث', 'research', NULL, 'die', NULL, 'noun', 'Die Forschung ist interdisziplinär.', 'The research is interdisciplinary.', 'B2', 1),
  ('00000000-0000-4000-a000-00006a42ac2d', 'die Analyse', 'التحليل', 'analysis', NULL, 'die', 'die Analysen', 'noun', 'Die Analyse der Daten dauert lange.', 'The analysis of the data takes long.', 'B2', 2),
  ('00000000-0000-4000-a000-00006a42ac2d', 'die Methode', 'الطريقة', 'method', NULL, 'die', 'die Methoden', 'noun', 'Die Methode ist wissenschaftlich anerkannt.', 'The method is scientifically recognized.', 'B2', 3),
  ('00000000-0000-4000-a000-00006a42ac2d', 'die These', 'الأطروحة', 'thesis', NULL, 'die', 'die Thesen', 'noun', 'Die These wird im Kapitel 3 diskutiert.', 'The thesis is discussed in chapter 3.', 'C1', 4),
  ('00000000-0000-4000-a000-00006a42ac2d', 'die Publikation', 'المنشور', 'publication', NULL, 'die', 'die Publikationen', 'noun', 'Die Publikation erscheint im Springer Verlag.', 'The publication appears at Springer.', 'C1', 5),
  ('00000000-0000-4000-a000-00006a42ac2d', 'der Diskurs', 'الخطاب', 'discourse', NULL, 'der', 'die Diskurse', 'noun', 'Der akademische Diskurs ist vielschichtig.', 'The academic discourse is multilayered.', 'C1', 6),
  ('00000000-0000-4000-a000-00006a42ac2d', 'die Hypothese', 'الفرضية', 'hypothesis', NULL, 'die', 'die Hypothesen', 'noun', 'Die Hypothese wurde bestätigt.', 'The hypothesis was confirmed.', 'C1', 7),
  ('00000000-0000-4000-a000-00006a42ac2d', 'die Empirie', 'التجريبية', 'empirical research', NULL, 'die', NULL, 'noun', 'Die Empirie liefert Daten.', 'Empirical research provides data.', 'C1', 8),
  ('00000000-0000-4000-a000-00006a42ac2d', 'der Stil', 'الأسلوب', 'style', NULL, 'der', 'die Stile', 'noun', 'Der Stil des Textes ist formell.', 'The style of the text is formal.', 'B2', 9),
  ('00000000-0000-4000-a000-00006a42ac2d', 'das Register', 'المستوى اللغوي', 'register', NULL, 'das', 'die Register', 'noun', 'Das Register passt zur Situation.', 'The register fits the situation.', 'C1', 10),
  ('00000000-0000-4000-a000-00006a42ac2d', 'das Stilmittel', 'الأداة الأسلوبية', 'stylistic device', NULL, 'das', 'die Stilmittel', 'noun', 'Das Stilmittel unterstreicht die Aussage.', 'The stylistic device emphasizes the statement.', 'C1', 11),
  ('00000000-0000-4000-a000-00006a42ac2d', 'die Alliteration', 'الجناس', 'alliteration', NULL, 'die', 'die Alliterationen', 'noun', 'Die Alliteration wiederholt den Anlaut.', 'Alliteration repeats the initial sound.', 'C2', 12),
  ('00000000-0000-4000-a000-00006a42ac2d', 'die Ellipse', 'الحذف', 'ellipsis', NULL, 'die', 'die Ellipsen', 'noun', 'Die Ellipse spart Wörter aus.', 'The ellipsis omits words.', 'C2', 13),
  ('00000000-0000-4000-a000-00006a42ac2d', 'die Hyperbel', 'المبالغة', 'hyperbole', NULL, 'die', 'die Hyperbeln', 'noun', 'Die Hyperbel übertreibt stark.', 'Hyperbole exaggerates strongly.', 'C2', 14),
  ('00000000-0000-4000-a000-00006a42ac2d', 'die Poetik', 'الشعرية', 'poetics', NULL, 'die', NULL, 'noun', 'Poetik ist die Theorie der Dichtkunst.', 'Poetics is the theory of poetry.', 'C2', 15),
  ('00000000-0000-4000-a000-00006a42ac2d', 'der Vers', 'البيت الشعري', 'verse', NULL, 'der', 'die Verse', 'noun', 'Der Vers hat fünf Hebungen.', 'The verse has five stresses.', 'C1', 16),
  ('00000000-0000-4000-a000-00006a42ac2d', 'der Reim', 'القافية', 'rhyme', NULL, 'der', 'die Reime', 'noun', 'Der Reim verbindet die Zeilen.', 'Rhyme connects the lines.', 'C1', 17),
  ('00000000-0000-4000-a000-00006a42ac2d', 'das Metrum', 'الوزن', 'meter', NULL, 'das', 'die Metren', 'noun', 'Das Metrum bestimmt den Rhythmus.', 'The meter determines the rhythm.', 'C2', 18),
  ('00000000-0000-4000-a000-00006a42ac2d', 'die Gattung', 'النوع الأدبي', 'genre', NULL, 'die', 'die Gattungen', 'noun', 'Lyrik ist eine literarische Gattung.', 'Lyric poetry is a literary genre.', 'C1', 19),
  ('00000000-0000-4000-a000-00006a42ac2d', 'die Pragmatik', 'البراغماتية', 'pragmatics', NULL, 'die', NULL, 'noun', 'Pragmatik untersucht Sprache im Kontext.', 'Pragmatics studies language in context.', 'C2', 20),
  ('00000000-0000-4000-a000-00006a42ac2d', 'der Sprechakt', 'فعل الكلام', 'speech act', NULL, 'der', 'die Sprechakte', 'noun', 'Der Sprechakt ändert die Wirklichkeit.', 'The speech act changes reality.', 'C2', 21),
  ('00000000-0000-4000-a000-00006a42ac2d', 'die Implikatur', 'الاستلزام التخاطبي', 'implicature', NULL, 'die', 'die Implikaturen', 'noun', 'Die Implikatur ist die indirekte Bedeutung.', 'Implicature is the indirect meaning.', 'C2', 22),
  ('00000000-0000-4000-a000-00006a42ac2d', 'der Kontext', 'السياق', 'context', NULL, 'der', 'die Kontexte', 'noun', 'Der Kontext bestimmt die Bedeutung.', 'Context determines meaning.', 'B2', 23),
  ('00000000-0000-4000-a000-00006a42ac2d', 'die Höflichkeit', 'الأدب / اللباقة', 'politeness', NULL, 'die', NULL, 'noun', 'Höflichkeit ist in Japan sehr wichtig.', 'Politeness is very important in Japan.', 'B2', 24),
  ('00000000-0000-4000-a000-00006a42ac2d', 'die Konversationsanalyse', 'تحليل المحادثة', 'conversation analysis', NULL, 'die', NULL, 'noun', 'Die Konversationsanalyse untersucht Gespräche.', 'Conversation analysis examines conversations.', 'C2', 25),
  ('00000000-0000-4000-a000-00006a42ac2d', 'die Bedeutung', 'المعنى', 'meaning', NULL, 'die', 'die Bedeutungen', 'noun', 'Die Bedeutung des Wortes ist klar.', 'The meaning of the word is clear.', 'B2', 26),
  ('00000000-0000-4000-a000-00006a42ac2d', 'die Synonymie', 'الترادف', 'synonymy', NULL, 'die', NULL, 'noun', 'Synonymie bedeutet Bedeutungsgleichheit.', 'Synonymy means sameness of meaning.', 'C2', 27),
  ('00000000-0000-4000-a000-00006a42ac2d', 'die Antonymie', 'التضاد', 'antonymy', NULL, 'die', NULL, 'noun', 'Antonymie bezeichnet Gegensätze.', 'Antonymy denotes opposites.', 'C2', 28),
  ('00000000-0000-4000-a000-00006a42ac2d', 'die Polysemie', 'تعدد المعاني', 'polysemy', NULL, 'die', NULL, 'noun', 'Polysemie hat mehrere Bedeutungen.', 'Polysemy has multiple meanings.', 'C2', 29),
  ('00000000-0000-4000-a000-00006a42ac2d', 'die Kompositionalität', 'التركيبية', 'compositionality', NULL, 'die', NULL, 'noun', 'Kompositionalität besagt, dass Bedeutung aus Teilen besteht.', 'Compositionality holds that meaning consists of parts.', 'C2', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006a42ac2d', 'Erweiterte Partizipialattribute (Extended Participle Attributes) / الصفات المشتقة الموسعة', 'Extended participle attributes are a hallmark of sophisticated German. Instead of a relative clause, German can place a long phrase between the article and the noun: "der von der Regierung vorgeschlagene Plan" (the plan proposed by the government). These structures condense information and are very common in academic and legal German.', '[{"rule":"Article + (expanded phrase) + noun","note":"der [von der Regierung vorgeschlagene] Plan"},{"rule":"Participle can be Partizip I (aktiv, gleichzeitig) or Partizip II (passiv, vorzeitig)","note":"der lesende Student (the reading student — Partizip I), das gelesene Buch (the read book — Partizip II)"}]', '[{"german":"Der von der Bundesregierung vorgeschlagene Gesetzesentwurf wurde diskutiert.","arabic":"تمت مناقشة مشروع القانون الذي اقترحته الحكومة الاتحادية.","english":"The bill proposed by the federal government was discussed."},{"german":"Die in den letzten Jahren stark gestiegenen Mieten belasten viele Familien.","arabic":"الإيجارات التي ارتفعت بشدة في السنوات الأخيرة تثقل كاهل العائلات.","english":"The rents that have risen sharply in recent years burden many families."}]', '[{"mistake":"Der Plan, der von der Regierung vorgeschlagen wurde (relative clause instead of extended attribute)","correction":"Der von der Regierung vorgeschlagene Plan","explanation":"At C2, extended attributes are preferred over relative clauses for conciseness."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006a42ac2d', 'multiple_choice', 'Welches deutsche Wort bedeutet "research"?', '["die Methode","die Publikation","die These","die Analyse"]', 'die Forschung', '"research" = "die Forschung" in German. Article: die ', 1, 1),
  ('00000000-0000-4000-a000-00006a42ac2d', 'multiple_choice', 'Welches deutsche Wort bedeutet "analysis"?', '["die Analyse","die These","die Forschung","die Methode"]', 'die Analyse', '"analysis" = "die Analyse" in German. Article: die Plural: die Analysen', 1, 2),
  ('00000000-0000-4000-a000-00006a42ac2d', 'multiple_choice', 'Welches deutsche Wort bedeutet "method"?', '["die Methode","die Analyse","die These","die Forschung"]', 'die Methode', '"method" = "die Methode" in German. Article: die Plural: die Methoden', 1, 3),
  ('00000000-0000-4000-a000-00006a42ac2d', 'multiple_choice', 'Welches deutsche Wort bedeutet "thesis"?', '["die Analyse","die Forschung","die Publikation","die Methode"]', 'die These', '"thesis" = "die These" in German. Article: die Plural: die Thesen', 1, 4),
  ('00000000-0000-4000-a000-00006a42ac2d', 'multiple_choice', 'Welches deutsche Wort bedeutet "publication"?', '["die Methode","die Publikation","die Forschung","die These"]', 'die Publikation', '"publication" = "die Publikation" in German. Article: die Plural: die Publikationen', 1, 5),
  ('00000000-0000-4000-a000-00006a42ac2d', 'fill_gap', 'Ergänzen Sie den Satz: Ich ___ gern Science Communication. (sprechen)', '["spreche","sprichst","spricht","sprechen"]', 'spreche', 'ich spreche gern = I like to speak. Stem: sprech- + e.', 2, 6),
  ('00000000-0000-4000-a000-00006a42ac2d', 'translation', 'Übersetzen Sie ins Deutsche: "I am learning about Science Communication."', '["Ich lerne über Science Communication.","Ich lerne Science Communication.","Lerne ich Science Communication."]', 'Ich lerne über Science Communication.', '"Ich lerne über..." = "I am learning about..."', 2, 7),
  ('00000000-0000-4000-a000-00006a42ac2d', 'matching', 'Match: Which word pairs are correct?', '["die Forschung - research, die Analyse - analysis"]', 'Matched correctly', 'Each German word has a unique English equivalent.', 2, 8);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-00006a42ac2d', 'multiple_choice', 'Was bedeutet "die Forschung" auf Deutsch?', '["research","to run","beautiful","yesterday"]', 'research', 1, 1),
  ('00000000-0000-4000-a000-00006a42ac2d', 'multiple_choice', 'Welcher Artikel gehört zu "die Analyse"?', '["der","die","das","den"]', 'die', 1, 2),
  ('00000000-0000-4000-a000-00006a42ac2d', 'true_false', 'Das Wort "die Methode" gehört zum Thema Science Communication.', '["True","False"]', 'True', 1, 3),
  ('00000000-0000-4000-a000-00006a42ac2d', 'multiple_choice', 'Welcher Satz verwendet present_tense?', '["Der von der Bundesregierung vorgeschlagene Gesetzesentwurf wurde diskutiert.","Die in den letzten Jahren stark gestiegenen Mieten belasten viele Familien."]', 'Der von der Bundesregierung vorgeschlagene Gesetzesentwurf wurde diskutiert.', 2, 4),
  ('00000000-0000-4000-a000-00006a42ac2d', 'true_false', ''Im Deutschen steht das Verb an zweiter Position im Hauptsatz.', '["True","False"]', 'True', 1, 5),
  ('00000000-0000-4000-a000-00006a42ac2d', 'fill_blank', 'Complete: Ich ___ (thesis) Deutsch.', '["die These","lernt","lernst","lernen"]', 'lerne', 2, 6),
  ('00000000-0000-4000-a000-00006a42ac2d', 'multiple_choice', 'Wie lautet das deutsche Wort für "publication"?', '["die Publikation","der Diskurs","die Hypothese","die Empirie"]', 'die Publikation', 1, 7),
  ('00000000-0000-4000-a000-00006a42ac2d', 'true_false', 'Im Deutschen werden alle Nomen großgeschrieben.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-00006a42ac2d', 'multiple_choice', 'How do you say "please" in a restaurant in Germany?', '["Bitte","Danke","Tschüss","Hallo"]', 'Bitte', 1, 9),
  ('00000000-0000-4000-a000-00006a42ac2d', 'fill_blank', 'Wo ___ (to live) du?', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 2, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, french_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-00006a42ac2d', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', NULL, 'Used in Wissenschaftskommunikation', 'formal', false, 1),
  ('00000000-0000-4000-a000-00006a42ac2d', 'Guten Tag!', 'Good day!', 'نهارك سعيد!', NULL, 'Used in Wissenschaftskommunikation', 'formal', false, 2),
  ('00000000-0000-4000-a000-00006a42ac2d', 'Hallo, wie geht es Ihnen?', 'Hello, how are you?', 'مرحباً، كيف حالكم؟', NULL, 'Used in Wissenschaftskommunikation', 'formal', false, 3),
  ('00000000-0000-4000-a000-00006a42ac2d', 'Schön, Sie kennenzulernen!', 'Nice to meet you!', 'سعيد بلقائكم!', NULL, 'Used in Wissenschaftskommunikation', 'formal', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-00006a42ac2d', 'die die Forschung', 'research — البحث', 'noun', 'vocabulary', 1),
  ('00000000-0000-4000-a000-00006a42ac2d', 'die die Analyse (die Analysen)', 'analysis — التحليل', 'noun', 'vocabulary', 2),
  ('00000000-0000-4000-a000-00006a42ac2d', 'die die Methode (die Methoden)', 'method — الطريقة', 'noun', 'vocabulary', 3),
  ('00000000-0000-4000-a000-00006a42ac2d', 'die die These (die Thesen)', 'thesis — الأطروحة', 'noun', 'vocabulary', 4),
  ('00000000-0000-4000-a000-00006a42ac2d', 'die die Publikation (die Publikationen)', 'publication — المنشور', 'noun', 'vocabulary', 5),
  ('00000000-0000-4000-a000-00006a42ac2d', 'der der Diskurs (die Diskurse)', 'discourse — الخطاب', 'noun', 'vocabulary', 6),
  ('00000000-0000-4000-a000-00006a42ac2d', 'die die Hypothese (die Hypothesen)', 'hypothesis — الفرضية', 'noun', 'vocabulary', 7),
  ('00000000-0000-4000-a000-00006a42ac2d', 'die die Empirie', 'empirical research — التجريبية', 'noun', 'vocabulary', 8),
  ('00000000-0000-4000-a000-00006a42ac2d', 'der der Stil (die Stile)', 'style — الأسلوب', 'noun', 'vocabulary', 9),
  ('00000000-0000-4000-a000-00006a42ac2d', 'das das Register (die Register)', 'register — المستوى اللغوي', 'noun', 'vocabulary', 10),
  ('00000000-0000-4000-a000-00006a42ac2d', 'das das Stilmittel (die Stilmittel)', 'stylistic device — الأداة الأسلوبية', 'noun', 'vocabulary', 11),
  ('00000000-0000-4000-a000-00006a42ac2d', 'die die Alliteration (die Alliterationen)', 'alliteration — الجناس', 'noun', 'vocabulary', 12),
  ('00000000-0000-4000-a000-00006a42ac2d', 'die die Ellipse (die Ellipsen)', 'ellipsis — الحذف', 'noun', 'vocabulary', 13),
  ('00000000-0000-4000-a000-00006a42ac2d', 'die die Hyperbel (die Hyperbeln)', 'hyperbole — المبالغة', 'noun', 'vocabulary', 14),
  ('00000000-0000-4000-a000-00006a42ac2d', 'die die Poetik', 'poetics — الشعرية', 'noun', 'vocabulary', 15),
  ('00000000-0000-4000-a000-00006a42ac2d', 'Der von der Bundesregierung vorgeschlagene Gesetzesentwurf wurde diskutiert.', 'The bill proposed by the federal government was discussed.', 'Erweiterte Partizipialattribute (Extended Participle Attributes)', 'grammar', 16),
  ('00000000-0000-4000-a000-00006a42ac2d', 'Die in den letzten Jahren stark gestiegenen Mieten belasten viele Familien.', 'The rents that have risen sharply in recent years burden many families.', 'Erweiterte Partizipialattribute (Extended Participle Attributes)', 'grammar', 17);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, french_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-00006a42ac2d', 'Wissenschaft verständlich kommunizieren — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', NULL, 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, french_translation, duration_seconds, speaker_count, scenario) values
  ('00000000-0000-4000-a000-00006a42ac2d', 'Wissenschaft verständlich kommunizieren — Hörverständnis', '[Lehrerin]: Guten Morgen! Heute lernen wir Begrüßungen.

[Lehrerin]: Wiederholen Sie: Guten Morgen!

[Student]: Guten Morgen!

[Lehrerin]: Sehr gut! Und wie sagt man "Goodbye"?

[Student]: Auf Wiedersehen!

[Lehrerin]: Perfekt! Bis morgen!', '[Lehrerin]: Good morning! Today we learn greetings.

[Lehrerin]: Repeat: Good morning!

[Student]: Good morning!

[Lehrerin]: Very good! And how do you say goodbye?

[Student]: Goodbye!

[Lehrerin]: Perfect! See you tomorrow!', '[Lehrerin]: صباح الخير! اليوم نتعلم التحيات.

[Lehrerin]: كرروا: صباح الخير!

[Student]: صباح الخير!

[Lehrerin]: جيد جداً! وكيف نقول "وداعاً"؟

[Student]: إلى اللقاء!

[Lehrerin]: ممتاز! إلى الغد!', '[Lehrerin]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: ', 72, 2, 'Wissenschaftskommunikation');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-00006a42ac2d', '🔊 Sprechen: Wissenschaft verständlich kommunizieren', 'Presentation: Prepare a 2-minute presentation on "Science Communication im deutschsprachigen Raum". Use discourse markers like "zunächst", "darüber hinaus", "abschließend". Your AI partner will ask critical questions afterwards.', 'Science Communication', ARRAY['Use discourse markers (also, jedoch, außerdem)','React naturally: "Ach so!", "Echt?", "Das stimmt!"','Paraphrase when you don''t know a word']::text[], ARRAY['die Forschung','die Analyse','die Methode','die These','die Publikation','der Diskurs','die Hypothese','die Empirie']::text[], 120, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-00006a42ac2d', '✏️ Schreiben: Wissenschaft verständlich kommunizieren', 'Write a discursive essay (300-350 words) analyzing "Science Communication in modern German society". Present both advantages and disadvantages. Use complex sentence structures (Nebensätze mit "obwohl", "trotzdem", "während") and formal register. Conclude with your own position.', ARRAY['Use paragraph breaks for structure','Connect ideas with "außerdem", "deshalb", "jedoch"','Check your verb position in Nebensätze']::text[], ARRAY['die Forschung','die Analyse','die Methode','die These','die Publikation','der Diskurs','die Hypothese','die Empirie']::text[], ARRAY['Sentence structure','Vocabulary usage']::text[], 250, 350, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00006a42ac2d', 'Wissenschaft verständlich kommunizieren — Roleplay', 'Science Communication', 'Student', 'Teacher', 'Practice conversation about Science Communication', 'Hallo! Lass uns über dieses Thema sprechen.', 'advanced', 1, ARRAY['die Forschung','die Analyse','die Methode','die These','die Publikation','der Diskurs','die Hypothese','die Empirie']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00006a42ac2d', 'Wissenschaft verständlich kommunizieren — Advanced Roleplay', 'Science Communication', 'Customer', 'Assistant', 'Extended conversation about Science Communication', 'Guten Tag! Wie kann ich Ihnen helfen?', 'advanced', 2, ARRAY['die Forschung','die Analyse','die Methode','die These','die Publikation','der Diskurs','die Hypothese','die Empirie']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-00006a42ac2d', 'Wissenschaft verständlich kommunizieren — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Wissenschaft verständlich kommunizieren".', 'Creative practice for Science Communication', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-00006a42ac2d', '📚 Hausaufgabe: Wissenschaft verständlich kommunizieren', 'Complete these tasks to reinforce "Wissenschaft verständlich kommunizieren".', 'mixed', '[{"description":"Create 10 flashcards from this lesson''s vocabulary — write German on one side, Arabic on the other. Test yourself 3 times."},{"description":"Write 6 sentences about Science Communication: 2 statements, 2 questions, 2 negations — all using present_tense."},{"description":"Record yourself reading the dialogue aloud. Listen to the recording and note 3 things to improve."},{"description":"Find 3 real German websites, videos, or articles about Science Communication. Note 5 new words you discovered."}]', 50, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-00006a42ac2d', '🎯 Excellent progress! This lesson covered Science Communication (68 vocabulary items) and present_tense. You developed reading, listening, speaking, and writing skills in the context of academic. Focus on your common mistakes area for maximum improvement.', '["68 vocabulary items about Science Communication","present_tense — grammar explanation and practice","Reading comprehension: text about Science Communication","Listening comprehension: dialogue about Science Communication","Speaking practice: roleplay/discussion about Science Communication","Writing task: text about Science Communication"]', '[{"title":"Wissenschaft verständlich kommunizieren Review","summary":"present_tense — the main grammar focus. Focus on nuanced usage, exceptions, and stylistic variation."}]', ARRAY['die Forschung (research)','die Analyse (analysis)','die Methode (method)','die These (thesis)','die Publikation (publication)']::text[], ARRAY['Don''t translate from Arabic word-for-word — German has different sentence structure','Learn every noun with its article: NEVER learn "Tisch" alone, always "der Tisch"','Pay attention to Konjunktiv I/II distinction']::text[], ARRAY['Practice 15-20 minutes daily — consistency beats intensity','Speak out loud: German pronunciation needs muscle memory','Use the new vocabulary within 24 hours or you''ll forget it','Watch German YouTube videos about Science Communication for authentic input']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006a42ac2d', 'translation', 'Translate to German: "I use the word "research" in a sentence about Science Communication."', '[]', 'Die Forschung ist interdisziplinär.', 'Use die  "die Forschung" with the correct present_tense form.', 1, 40);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006a42ac2d', 'translation', 'Translate to German: "I use the word "analysis" in a sentence about Science Communication."', '[]', 'Die Analyse der Daten dauert lange.', 'Use die  "die Analyse" with the correct present_tense form.', 1, 41);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006a42ac2d', 'translation', 'Translate to German: "I use the word "method" in a sentence about Science Communication."', '[]', 'Die Methode ist wissenschaftlich anerkannt.', 'Use die  "die Methode" with the correct present_tense form.', 1, 42);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006a42ac2d', 'Culture: 🇩🇪 Deutsche Kultur: Science Communication', 'The German approach to Science Communication reflects deeper cultural values: Ordnung (order), Gründlichkeit (thoroughness), and Sachlichkeit (objectivity). Debates about Science Communication in German media are characterised by factual argumentation. Understanding these discourse norms is essential for C1/C2 learners who want to participate in academic or professional discussions.

لدى Science Communication في ألمانيا فروق ثقافية دقيقة تختلف عن البلدان العربية. الألمان يفصلون بين حياتهم الخاصة والمهنية بشكل صارم.', '["Tip: Always use \"Sie\" (formal) with strangers and colleagues","Tip: Germans appreciate punctuality — arrive 5 minutes early","Tip: Direct feedback is a sign of respect, not criticism","Tip: Prepare factual arguments, not emotional appeals"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006a42ac2d', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Incorrect preposition usage after verbs","correction":"Learn which preposition each verb requires (sich freuen auf, warten auf, denken an)","explanation":"Arabic and German have different sentence structures. Arabic is VSO, German is SVO with verb in position 2."},{"mistake":"Incorrect use of Konjunktiv II in polite requests","correction":"Ich hätte gern... (I would like...)","explanation":"Konjunktiv II is often replaced with würde + infinitive in speech"}]', 30);

  -- Lesson 3: Test: Wissenschaftskommunikation (L-C2-05-03)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-00006a42ac2e', '00000000-0000-4000-a000-000039d176c3', 'Test: Wissenschaftskommunikation', 'Module test on science communication.', 'Module Test', 'test', '["Understand and apply present_tense rules correctly","Use present_tense in real conversations","Avoid common mistakes Arabic speakers make with present_tense","Read and understand present_tense in context","Listen and identify present_tense in speech","Write sentences using present_tense correctly"]', 50, 3, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, french_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-00006a42ac2e', 'die Forschung', 'البحث', 'research', NULL, 'die', NULL, 'noun', 'Die Forschung ist interdisziplinär.', 'The research is interdisciplinary.', 'B2', 1),
  ('00000000-0000-4000-a000-00006a42ac2e', 'die Analyse', 'التحليل', 'analysis', NULL, 'die', 'die Analysen', 'noun', 'Die Analyse der Daten dauert lange.', 'The analysis of the data takes long.', 'B2', 2),
  ('00000000-0000-4000-a000-00006a42ac2e', 'die Methode', 'الطريقة', 'method', NULL, 'die', 'die Methoden', 'noun', 'Die Methode ist wissenschaftlich anerkannt.', 'The method is scientifically recognized.', 'B2', 3),
  ('00000000-0000-4000-a000-00006a42ac2e', 'die These', 'الأطروحة', 'thesis', NULL, 'die', 'die Thesen', 'noun', 'Die These wird im Kapitel 3 diskutiert.', 'The thesis is discussed in chapter 3.', 'C1', 4),
  ('00000000-0000-4000-a000-00006a42ac2e', 'die Publikation', 'المنشور', 'publication', NULL, 'die', 'die Publikationen', 'noun', 'Die Publikation erscheint im Springer Verlag.', 'The publication appears at Springer.', 'C1', 5),
  ('00000000-0000-4000-a000-00006a42ac2e', 'der Diskurs', 'الخطاب', 'discourse', NULL, 'der', 'die Diskurse', 'noun', 'Der akademische Diskurs ist vielschichtig.', 'The academic discourse is multilayered.', 'C1', 6),
  ('00000000-0000-4000-a000-00006a42ac2e', 'die Hypothese', 'الفرضية', 'hypothesis', NULL, 'die', 'die Hypothesen', 'noun', 'Die Hypothese wurde bestätigt.', 'The hypothesis was confirmed.', 'C1', 7),
  ('00000000-0000-4000-a000-00006a42ac2e', 'die Empirie', 'التجريبية', 'empirical research', NULL, 'die', NULL, 'noun', 'Die Empirie liefert Daten.', 'Empirical research provides data.', 'C1', 8),
  ('00000000-0000-4000-a000-00006a42ac2e', 'der Stil', 'الأسلوب', 'style', NULL, 'der', 'die Stile', 'noun', 'Der Stil des Textes ist formell.', 'The style of the text is formal.', 'B2', 9),
  ('00000000-0000-4000-a000-00006a42ac2e', 'das Register', 'المستوى اللغوي', 'register', NULL, 'das', 'die Register', 'noun', 'Das Register passt zur Situation.', 'The register fits the situation.', 'C1', 10),
  ('00000000-0000-4000-a000-00006a42ac2e', 'das Stilmittel', 'الأداة الأسلوبية', 'stylistic device', NULL, 'das', 'die Stilmittel', 'noun', 'Das Stilmittel unterstreicht die Aussage.', 'The stylistic device emphasizes the statement.', 'C1', 11),
  ('00000000-0000-4000-a000-00006a42ac2e', 'die Alliteration', 'الجناس', 'alliteration', NULL, 'die', 'die Alliterationen', 'noun', 'Die Alliteration wiederholt den Anlaut.', 'Alliteration repeats the initial sound.', 'C2', 12),
  ('00000000-0000-4000-a000-00006a42ac2e', 'die Ellipse', 'الحذف', 'ellipsis', NULL, 'die', 'die Ellipsen', 'noun', 'Die Ellipse spart Wörter aus.', 'The ellipsis omits words.', 'C2', 13),
  ('00000000-0000-4000-a000-00006a42ac2e', 'die Hyperbel', 'المبالغة', 'hyperbole', NULL, 'die', 'die Hyperbeln', 'noun', 'Die Hyperbel übertreibt stark.', 'Hyperbole exaggerates strongly.', 'C2', 14),
  ('00000000-0000-4000-a000-00006a42ac2e', 'die Poetik', 'الشعرية', 'poetics', NULL, 'die', NULL, 'noun', 'Poetik ist die Theorie der Dichtkunst.', 'Poetics is the theory of poetry.', 'C2', 15),
  ('00000000-0000-4000-a000-00006a42ac2e', 'der Vers', 'البيت الشعري', 'verse', NULL, 'der', 'die Verse', 'noun', 'Der Vers hat fünf Hebungen.', 'The verse has five stresses.', 'C1', 16),
  ('00000000-0000-4000-a000-00006a42ac2e', 'der Reim', 'القافية', 'rhyme', NULL, 'der', 'die Reime', 'noun', 'Der Reim verbindet die Zeilen.', 'Rhyme connects the lines.', 'C1', 17),
  ('00000000-0000-4000-a000-00006a42ac2e', 'das Metrum', 'الوزن', 'meter', NULL, 'das', 'die Metren', 'noun', 'Das Metrum bestimmt den Rhythmus.', 'The meter determines the rhythm.', 'C2', 18),
  ('00000000-0000-4000-a000-00006a42ac2e', 'die Gattung', 'النوع الأدبي', 'genre', NULL, 'die', 'die Gattungen', 'noun', 'Lyrik ist eine literarische Gattung.', 'Lyric poetry is a literary genre.', 'C1', 19),
  ('00000000-0000-4000-a000-00006a42ac2e', 'die Pragmatik', 'البراغماتية', 'pragmatics', NULL, 'die', NULL, 'noun', 'Pragmatik untersucht Sprache im Kontext.', 'Pragmatics studies language in context.', 'C2', 20),
  ('00000000-0000-4000-a000-00006a42ac2e', 'der Sprechakt', 'فعل الكلام', 'speech act', NULL, 'der', 'die Sprechakte', 'noun', 'Der Sprechakt ändert die Wirklichkeit.', 'The speech act changes reality.', 'C2', 21),
  ('00000000-0000-4000-a000-00006a42ac2e', 'die Implikatur', 'الاستلزام التخاطبي', 'implicature', NULL, 'die', 'die Implikaturen', 'noun', 'Die Implikatur ist die indirekte Bedeutung.', 'Implicature is the indirect meaning.', 'C2', 22),
  ('00000000-0000-4000-a000-00006a42ac2e', 'der Kontext', 'السياق', 'context', NULL, 'der', 'die Kontexte', 'noun', 'Der Kontext bestimmt die Bedeutung.', 'Context determines meaning.', 'B2', 23),
  ('00000000-0000-4000-a000-00006a42ac2e', 'die Höflichkeit', 'الأدب / اللباقة', 'politeness', NULL, 'die', NULL, 'noun', 'Höflichkeit ist in Japan sehr wichtig.', 'Politeness is very important in Japan.', 'B2', 24),
  ('00000000-0000-4000-a000-00006a42ac2e', 'die Konversationsanalyse', 'تحليل المحادثة', 'conversation analysis', NULL, 'die', NULL, 'noun', 'Die Konversationsanalyse untersucht Gespräche.', 'Conversation analysis examines conversations.', 'C2', 25),
  ('00000000-0000-4000-a000-00006a42ac2e', 'die Bedeutung', 'المعنى', 'meaning', NULL, 'die', 'die Bedeutungen', 'noun', 'Die Bedeutung des Wortes ist klar.', 'The meaning of the word is clear.', 'B2', 26),
  ('00000000-0000-4000-a000-00006a42ac2e', 'die Synonymie', 'الترادف', 'synonymy', NULL, 'die', NULL, 'noun', 'Synonymie bedeutet Bedeutungsgleichheit.', 'Synonymy means sameness of meaning.', 'C2', 27),
  ('00000000-0000-4000-a000-00006a42ac2e', 'die Antonymie', 'التضاد', 'antonymy', NULL, 'die', NULL, 'noun', 'Antonymie bezeichnet Gegensätze.', 'Antonymy denotes opposites.', 'C2', 28),
  ('00000000-0000-4000-a000-00006a42ac2e', 'die Polysemie', 'تعدد المعاني', 'polysemy', NULL, 'die', NULL, 'noun', 'Polysemie hat mehrere Bedeutungen.', 'Polysemy has multiple meanings.', 'C2', 29),
  ('00000000-0000-4000-a000-00006a42ac2e', 'die Kompositionalität', 'التركيبية', 'compositionality', NULL, 'die', NULL, 'noun', 'Kompositionalität besagt, dass Bedeutung aus Teilen besteht.', 'Compositionality holds that meaning consists of parts.', 'C2', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006a42ac2e', 'Module Partikeln und Satzgliedstellung (Modal Particles and Word Order Nuances) / الجزيئات النمطية وترتيب الكلمات الدقيق', 'Modal particles (doch, ja, eben, halt, wohl, eigentlich, denn, mal) add nuance and emotion to statements. They are almost impossible to translate directly but are essential for natural German. At C2, their correct placement and usage distinguishes near-native from advanced learners.', '[{"rule":"doch: contradiction or emphasis","note":"Das ist doch nicht wahr! (That''s just not true!)"},{"rule":"ja: shared knowledge reminder","note":"Das ist ja interessant! (That IS interesting! — as we both know)"},{"rule":"denn: in W-questions (casual)","note":"Was machst du denn da? (What are you doing there? — curious, not accusatory)"}]', '[{"german":"Das ist doch eine gute Idee, oder?","arabic":"هذه فكرة جيدة، أليس كذلك؟ (تأكيد)","english":"That IS a good idea, isn''t it?"},{"german":"Komm mal her, bitte.","arabic":"تعال إلى هنا من فضلك. (طلاقة)","english":"Come here, please. (softening)"},{"german":"Was hast du eigentlich studiert?","arabic":"ماذا درست بالمناسبة؟","english":"What did you study, by the way?"}]', '[{"mistake":"Speaking without modal particles (too textbook-like)","correction":"Das ist doch klar! (not just \"Das ist klar\")","explanation":"Without modal particles, German sounds robotic. At C2, particles show naturalness."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006a42ac2e', 'multiple_choice', 'Welches deutsche Wort bedeutet "research"?', '["die Methode","die Analyse","die Publikation","die Forschung"]', 'die Forschung', '"research" = "die Forschung" in German. Article: die ', 1, 1),
  ('00000000-0000-4000-a000-00006a42ac2e', 'multiple_choice', 'Welches deutsche Wort bedeutet "analysis"?', '["die Methode","die These","die Publikation","die Forschung"]', 'die Analyse', '"analysis" = "die Analyse" in German. Article: die Plural: die Analysen', 1, 2),
  ('00000000-0000-4000-a000-00006a42ac2e', 'multiple_choice', 'Welches deutsche Wort bedeutet "method"?', '["die Methode","die Forschung","die Analyse","die These"]', 'die Methode', '"method" = "die Methode" in German. Article: die Plural: die Methoden', 1, 3),
  ('00000000-0000-4000-a000-00006a42ac2e', 'multiple_choice', 'Welches deutsche Wort bedeutet "thesis"?', '["die These","die Publikation","die Methode","die Forschung"]', 'die These', '"thesis" = "die These" in German. Article: die Plural: die Thesen', 1, 4),
  ('00000000-0000-4000-a000-00006a42ac2e', 'multiple_choice', 'Welches deutsche Wort bedeutet "publication"?', '["die Publikation","die Forschung","die These","die Methode"]', 'die Publikation', '"publication" = "die Publikation" in German. Article: die Plural: die Publikationen', 1, 5),
  ('00000000-0000-4000-a000-00006a42ac2e', 'fill_gap', 'Ergänzen Sie den Satz: Ich ___ gern über Module Test. (sprechen)', '["spreche","sprichst","spricht","sprechen"]', 'spreche', 'ich spreche gern = I like to speak. Stem: sprech- + e.', 2, 6),
  ('00000000-0000-4000-a000-00006a42ac2e', 'translation', 'Übersetzen Sie ins Deutsche: "I am learning about Module Test."', '["Ich lerne über Module Test.","Ich lerne Module Test.","Lerne ich Module Test."]', 'Ich lerne über Module Test.', '"Ich lerne über..." = "I am learning about..."', 2, 7),
  ('00000000-0000-4000-a000-00006a42ac2e', 'matching', 'Match: Which word pairs are correct?', '["die Forschung - research, die Analyse - analysis"]', 'Matched correctly', 'Each German word has a unique English equivalent.', 2, 8);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-00006a42ac2e', 'multiple_choice', 'Was bedeutet "die Forschung" auf Deutsch?', '["research","to run","beautiful","yesterday"]', 'research', 1, 1),
  ('00000000-0000-4000-a000-00006a42ac2e', 'multiple_choice', 'Welcher Artikel gehört zu "die Analyse"?', '["der","die","das","den"]', 'die', 1, 2),
  ('00000000-0000-4000-a000-00006a42ac2e', 'true_false', 'Das Wort "die Methode" gehört zum Thema Module Test.', '["True","False"]', 'True', 1, 3),
  ('00000000-0000-4000-a000-00006a42ac2e', 'multiple_choice', 'Welcher Satz verwendet present_tense?', '["Das ist doch eine gute Idee, oder?","Komm mal her, bitte.","Was hast du eigentlich studiert?"]', 'Das ist doch eine gute Idee, oder?', 2, 4),
  ('00000000-0000-4000-a000-00006a42ac2e', 'true_false', ''Im Deutschen steht das Verb an zweiter Position im Hauptsatz.', '["True","False"]', 'True', 1, 5),
  ('00000000-0000-4000-a000-00006a42ac2e', 'fill_blank', 'Complete: Ich ___ (thesis) Deutsch.', '["die These","lernt","lernst","lernen"]', 'lerne', 2, 6),
  ('00000000-0000-4000-a000-00006a42ac2e', 'multiple_choice', 'Wie lautet das deutsche Wort für "publication"?', '["die Publikation","der Diskurs","die Hypothese","die Empirie"]', 'die Publikation', 1, 7),
  ('00000000-0000-4000-a000-00006a42ac2e', 'true_false', 'Im Deutschen werden alle Nomen großgeschrieben.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-00006a42ac2e', 'multiple_choice', 'How do you say "please" in a restaurant in Germany?', '["Bitte","Danke","Tschüss","Hallo"]', 'Bitte', 1, 9),
  ('00000000-0000-4000-a000-00006a42ac2e', 'fill_blank', 'Wo ___ (to live) du?', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 2, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, french_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-00006a42ac2e', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', NULL, 'Used in Wissenschaftskommunikation', 'formal', false, 1),
  ('00000000-0000-4000-a000-00006a42ac2e', 'Guten Tag!', 'Good day!', 'نهارك سعيد!', NULL, 'Used in Wissenschaftskommunikation', 'formal', false, 2),
  ('00000000-0000-4000-a000-00006a42ac2e', 'Hallo, wie geht es Ihnen?', 'Hello, how are you?', 'مرحباً، كيف حالكم؟', NULL, 'Used in Wissenschaftskommunikation', 'formal', false, 3),
  ('00000000-0000-4000-a000-00006a42ac2e', 'Schön, Sie kennenzulernen!', 'Nice to meet you!', 'سعيد بلقائكم!', NULL, 'Used in Wissenschaftskommunikation', 'formal', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-00006a42ac2e', 'die die Forschung', 'research — البحث', 'noun', 'vocabulary', 1),
  ('00000000-0000-4000-a000-00006a42ac2e', 'die die Analyse (die Analysen)', 'analysis — التحليل', 'noun', 'vocabulary', 2),
  ('00000000-0000-4000-a000-00006a42ac2e', 'die die Methode (die Methoden)', 'method — الطريقة', 'noun', 'vocabulary', 3),
  ('00000000-0000-4000-a000-00006a42ac2e', 'die die These (die Thesen)', 'thesis — الأطروحة', 'noun', 'vocabulary', 4),
  ('00000000-0000-4000-a000-00006a42ac2e', 'die die Publikation (die Publikationen)', 'publication — المنشور', 'noun', 'vocabulary', 5),
  ('00000000-0000-4000-a000-00006a42ac2e', 'der der Diskurs (die Diskurse)', 'discourse — الخطاب', 'noun', 'vocabulary', 6),
  ('00000000-0000-4000-a000-00006a42ac2e', 'die die Hypothese (die Hypothesen)', 'hypothesis — الفرضية', 'noun', 'vocabulary', 7),
  ('00000000-0000-4000-a000-00006a42ac2e', 'die die Empirie', 'empirical research — التجريبية', 'noun', 'vocabulary', 8),
  ('00000000-0000-4000-a000-00006a42ac2e', 'der der Stil (die Stile)', 'style — الأسلوب', 'noun', 'vocabulary', 9),
  ('00000000-0000-4000-a000-00006a42ac2e', 'das das Register (die Register)', 'register — المستوى اللغوي', 'noun', 'vocabulary', 10),
  ('00000000-0000-4000-a000-00006a42ac2e', 'das das Stilmittel (die Stilmittel)', 'stylistic device — الأداة الأسلوبية', 'noun', 'vocabulary', 11),
  ('00000000-0000-4000-a000-00006a42ac2e', 'die die Alliteration (die Alliterationen)', 'alliteration — الجناس', 'noun', 'vocabulary', 12),
  ('00000000-0000-4000-a000-00006a42ac2e', 'die die Ellipse (die Ellipsen)', 'ellipsis — الحذف', 'noun', 'vocabulary', 13),
  ('00000000-0000-4000-a000-00006a42ac2e', 'die die Hyperbel (die Hyperbeln)', 'hyperbole — المبالغة', 'noun', 'vocabulary', 14),
  ('00000000-0000-4000-a000-00006a42ac2e', 'die die Poetik', 'poetics — الشعرية', 'noun', 'vocabulary', 15),
  ('00000000-0000-4000-a000-00006a42ac2e', 'Das ist doch eine gute Idee, oder?', 'That IS a good idea, isn''t it?', 'Module Partikeln und Satzgliedstellung (Modal Particles and Word Order Nuances)', 'grammar', 16),
  ('00000000-0000-4000-a000-00006a42ac2e', 'Komm mal her, bitte.', 'Come here, please. (softening)', 'Module Partikeln und Satzgliedstellung (Modal Particles and Word Order Nuances)', 'grammar', 17),
  ('00000000-0000-4000-a000-00006a42ac2e', 'Was hast du eigentlich studiert?', 'What did you study, by the way?', 'Module Partikeln und Satzgliedstellung (Modal Particles and Word Order Nuances)', 'grammar', 18);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, french_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-00006a42ac2e', 'Test: Wissenschaftskommunikation — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', NULL, 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, french_translation, duration_seconds, speaker_count, scenario) values
  ('00000000-0000-4000-a000-00006a42ac2e', 'Test: Wissenschaftskommunikation — Hörverständnis', '[Lehrerin]: Guten Morgen! Heute lernen wir Begrüßungen.

[Lehrerin]: Wiederholen Sie: Guten Morgen!

[Student]: Guten Morgen!

[Lehrerin]: Sehr gut! Und wie sagt man "Goodbye"?

[Student]: Auf Wiedersehen!

[Lehrerin]: Perfekt! Bis morgen!', '[Lehrerin]: Good morning! Today we learn greetings.

[Lehrerin]: Repeat: Good morning!

[Student]: Good morning!

[Lehrerin]: Very good! And how do you say goodbye?

[Student]: Goodbye!

[Lehrerin]: Perfect! See you tomorrow!', '[Lehrerin]: صباح الخير! اليوم نتعلم التحيات.

[Lehrerin]: كرروا: صباح الخير!

[Student]: صباح الخير!

[Lehrerin]: جيد جداً! وكيف نقول "وداعاً"؟

[Student]: إلى اللقاء!

[Lehrerin]: ممتاز! إلى الغد!', '[Lehrerin]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: ', 72, 2, 'Wissenschaftskommunikation');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-00006a42ac2e', '🔊 Sprechen: Test: Wissenschaftskommunikation', 'Presentation: Prepare a 2-minute presentation on "Module Test im deutschsprachigen Raum". Use discourse markers like "zunächst", "darüber hinaus", "abschließend". Your AI partner will ask critical questions afterwards.', 'Module Test', ARRAY['Use discourse markers (also, jedoch, außerdem)','React naturally: "Ach so!", "Echt?", "Das stimmt!"','Paraphrase when you don''t know a word']::text[], ARRAY['die Forschung','die Analyse','die Methode','die These','die Publikation','der Diskurs','die Hypothese','die Empirie']::text[], 120, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-00006a42ac2e', '✏️ Schreiben: Test: Wissenschaftskommunikation', 'Write a discursive essay (300-350 words) analyzing "Module Test in modern German society". Present both advantages and disadvantages. Use complex sentence structures (Nebensätze mit "obwohl", "trotzdem", "während") and formal register. Conclude with your own position.', ARRAY['Use paragraph breaks for structure','Connect ideas with "außerdem", "deshalb", "jedoch"','Check your verb position in Nebensätze']::text[], ARRAY['die Forschung','die Analyse','die Methode','die These','die Publikation','der Diskurs','die Hypothese','die Empirie']::text[], ARRAY['Sentence structure','Vocabulary usage']::text[], 250, 350, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00006a42ac2e', 'Test: Wissenschaftskommunikation — Roleplay', 'Module Test', 'Student', 'Teacher', 'Practice conversation about Module Test', 'Hallo! Lass uns über dieses Thema sprechen.', 'advanced', 1, ARRAY['die Forschung','die Analyse','die Methode','die These','die Publikation','der Diskurs','die Hypothese','die Empirie']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00006a42ac2e', 'Test: Wissenschaftskommunikation — Advanced Roleplay', 'Module Test', 'Customer', 'Assistant', 'Extended conversation about Module Test', 'Guten Tag! Wie kann ich Ihnen helfen?', 'advanced', 2, ARRAY['die Forschung','die Analyse','die Methode','die These','die Publikation','der Diskurs','die Hypothese','die Empirie']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-00006a42ac2e', 'Test: Wissenschaftskommunikation — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Test: Wissenschaftskommunikation".', 'Creative practice for Module Test', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-00006a42ac2e', '📚 Hausaufgabe: Test: Wissenschaftskommunikation', 'Complete these tasks to reinforce "Test: Wissenschaftskommunikation".', 'mixed', '[{"description":"Create 10 flashcards from this lesson''s vocabulary — write German on one side, Arabic on the other. Test yourself 3 times."},{"description":"Write 6 sentences about Module Test: 2 statements, 2 questions, 2 negations — all using present_tense."},{"description":"Record yourself reading the dialogue aloud. Listen to the recording and note 3 things to improve."},{"description":"Find 3 real German websites, videos, or articles about Module Test. Note 5 new words you discovered."}]', 50, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-00006a42ac2e', '🎯 Excellent progress! This lesson covered Module Test (68 vocabulary items) and present_tense. You developed reading, listening, speaking, and writing skills in the context of academic. Focus on your common mistakes area for maximum improvement.', '["68 vocabulary items about Module Test","present_tense — grammar explanation and practice","Reading comprehension: text about Module Test","Listening comprehension: dialogue about Module Test","Speaking practice: roleplay/discussion about Module Test","Writing task: text about Module Test"]', '[{"title":"Test: Wissenschaftskommunikation Review","summary":"present_tense — the main grammar focus. Focus on nuanced usage, exceptions, and stylistic variation."}]', ARRAY['die Forschung (research)','die Analyse (analysis)','die Methode (method)','die These (thesis)','die Publikation (publication)']::text[], ARRAY['Don''t translate from Arabic word-for-word — German has different sentence structure','Learn every noun with its article: NEVER learn "Tisch" alone, always "der Tisch"','Pay attention to Konjunktiv I/II distinction']::text[], ARRAY['Practice 15-20 minutes daily — consistency beats intensity','Speak out loud: German pronunciation needs muscle memory','Use the new vocabulary within 24 hours or you''ll forget it','Watch German YouTube videos about Module Test for authentic input']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006a42ac2e', 'translation', 'Translate to German: "I use the word "research" in a sentence about Module Test."', '[]', 'Die Forschung ist interdisziplinär.', 'Use die  "die Forschung" with the correct present_tense form.', 1, 40);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006a42ac2e', 'translation', 'Translate to German: "I use the word "analysis" in a sentence about Module Test."', '[]', 'Die Analyse der Daten dauert lange.', 'Use die  "die Analyse" with the correct present_tense form.', 1, 41);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006a42ac2e', 'translation', 'Translate to German: "I use the word "method" in a sentence about Module Test."', '[]', 'Die Methode ist wissenschaftlich anerkannt.', 'Use die  "die Methode" with the correct present_tense form.', 1, 42);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006a42ac2e', 'Culture: 🇩🇪 Deutsche Kultur: Module Test', 'The German approach to Module Test reflects deeper cultural values: Ordnung (order), Gründlichkeit (thoroughness), and Sachlichkeit (objectivity). Debates about Module Test in German media are characterised by factual argumentation. Understanding these discourse norms is essential for C1/C2 learners who want to participate in academic or professional discussions.

لدى Module Test في ألمانيا فروق ثقافية دقيقة تختلف عن البلدان العربية. الألمان يفصلون بين حياتهم الخاصة والمهنية بشكل صارم.', '["Tip: Always use \"Sie\" (formal) with strangers and colleagues","Tip: Germans appreciate punctuality — arrive 5 minutes early","Tip: Direct feedback is a sign of respect, not criticism","Tip: Prepare factual arguments, not emotional appeals"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006a42ac2e', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Incorrect preposition usage after verbs","correction":"Learn which preposition each verb requires (sich freuen auf, warten auf, denken an)","explanation":"Arabic and German have different sentence structures. Arabic is VSO, German is SVO with verb in position 2."},{"mistake":"Incorrect use of Konjunktiv II in polite requests","correction":"Ich hätte gern... (I would like...)","explanation":"Konjunktiv II is often replaced with würde + infinitive in speech"}]', 30);

  -- Module 6: Sprachvariation und Sprachwandel
  insert into public.course_modules (id, level_id, title, description, objectives, order_index, estimated_hours, is_published)
  values ('00000000-0000-4000-a000-000039d176c4', 'C2', 'Sprachvariation und Sprachwandel', 'Study language variation, change, and dialectology at an advanced level.', '["Analyze dialectal variation","Understand language change processes","Use historical linguistics concepts","Analyze sociolinguistic variation","Research language variation"]', 6, 5, true)
  on conflict (id) do nothing;

  -- Lesson 1: Dialekte und regionale Variation (L-C2-06-01)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-00006a43208b', '00000000-0000-4000-a000-000039d176c4', 'Dialekte und regionale Variation', 'Explore German dialects and regional variation.', 'German Dialects', 'vocabulary', '["Understand and use 66 key vocabulary words about German Dialects","Apply present_tense correctly in sentences","Read and comprehend a text about German Dialects","Listen and understand a natural dialogue about German Dialects","Speak about German Dialects with confidence","Write a short text about German Dialects using new vocabulary"]', 55, 1, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, french_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-00006a43208b', 'die Linguistik', 'علم اللغة', 'linguistics', NULL, 'die', NULL, 'noun', 'Linguistik untersucht die menschliche Sprache.', 'Linguistics studies human language.', 'C1', 1),
  ('00000000-0000-4000-a000-00006a43208b', 'die Syntax', 'النحو/تركيب الجملة', 'syntax', NULL, 'die', NULL, 'noun', 'Die Syntax beschreibt die Satzstruktur.', 'Syntax describes sentence structure.', 'C1', 2),
  ('00000000-0000-4000-a000-00006a43208b', 'die Semantik', 'علم الدلالة', 'semantics', NULL, 'die', NULL, 'noun', 'Die Semantik befasst sich mit Bedeutung.', 'Semantics deals with meaning.', 'C1', 3),
  ('00000000-0000-4000-a000-00006a43208b', 'die Morphologie', 'الصرف', 'morphology', NULL, 'die', NULL, 'noun', 'Die Morphologie untersucht Wortformen.', 'Morphology examines word forms.', 'C1', 4),
  ('00000000-0000-4000-a000-00006a43208b', 'die Phonetik', 'علم الأصوات', 'phonetics', NULL, 'die', NULL, 'noun', 'Die Phonetik untersucht Sprachlaute.', 'Phonetics studies speech sounds.', 'C1', 5),
  ('00000000-0000-4000-a000-00006a43208b', 'die Pragmatik', 'البراغماتية', 'pragmatics', NULL, 'die', NULL, 'noun', 'Pragmatik untersucht Sprachgebrauch.', 'Pragmatics studies language use.', 'C2', 6),
  ('00000000-0000-4000-a000-00006a43208b', 'die Sprachwissenschaft', 'علم اللغة', 'linguistics', NULL, 'die', NULL, 'noun', 'Die germanistische Sprachwissenschaft ist vielfältig.', 'German linguistics is diverse.', 'C1', 7),
  ('00000000-0000-4000-a000-00006a43208b', 'der Stil', 'الأسلوب', 'style', NULL, 'der', 'die Stile', 'noun', 'Der Stil des Textes ist formell.', 'The style of the text is formal.', 'B2', 8),
  ('00000000-0000-4000-a000-00006a43208b', 'das Register', 'المستوى اللغوي', 'register', NULL, 'das', 'die Register', 'noun', 'Das Register passt zur Situation.', 'The register fits the situation.', 'C1', 9),
  ('00000000-0000-4000-a000-00006a43208b', 'das Stilmittel', 'الأداة الأسلوبية', 'stylistic device', NULL, 'das', 'die Stilmittel', 'noun', 'Das Stilmittel unterstreicht die Aussage.', 'The stylistic device emphasizes the statement.', 'C1', 10),
  ('00000000-0000-4000-a000-00006a43208b', 'die Alliteration', 'الجناس', 'alliteration', NULL, 'die', 'die Alliterationen', 'noun', 'Die Alliteration wiederholt den Anlaut.', 'Alliteration repeats the initial sound.', 'C2', 11),
  ('00000000-0000-4000-a000-00006a43208b', 'die Ellipse', 'الحذف', 'ellipsis', NULL, 'die', 'die Ellipsen', 'noun', 'Die Ellipse spart Wörter aus.', 'The ellipsis omits words.', 'C2', 12),
  ('00000000-0000-4000-a000-00006a43208b', 'die Hyperbel', 'المبالغة', 'hyperbole', NULL, 'die', 'die Hyperbeln', 'noun', 'Die Hyperbel übertreibt stark.', 'Hyperbole exaggerates strongly.', 'C2', 13),
  ('00000000-0000-4000-a000-00006a43208b', 'die Poetik', 'الشعرية', 'poetics', NULL, 'die', NULL, 'noun', 'Poetik ist die Theorie der Dichtkunst.', 'Poetics is the theory of poetry.', 'C2', 14),
  ('00000000-0000-4000-a000-00006a43208b', 'der Vers', 'البيت الشعري', 'verse', NULL, 'der', 'die Verse', 'noun', 'Der Vers hat fünf Hebungen.', 'The verse has five stresses.', 'C1', 15),
  ('00000000-0000-4000-a000-00006a43208b', 'der Reim', 'القافية', 'rhyme', NULL, 'der', 'die Reime', 'noun', 'Der Reim verbindet die Zeilen.', 'Rhyme connects the lines.', 'C1', 16),
  ('00000000-0000-4000-a000-00006a43208b', 'das Metrum', 'الوزن', 'meter', NULL, 'das', 'die Metren', 'noun', 'Das Metrum bestimmt den Rhythmus.', 'The meter determines the rhythm.', 'C2', 17),
  ('00000000-0000-4000-a000-00006a43208b', 'die Gattung', 'النوع الأدبي', 'genre', NULL, 'die', 'die Gattungen', 'noun', 'Lyrik ist eine literarische Gattung.', 'Lyric poetry is a literary genre.', 'C1', 18),
  ('00000000-0000-4000-a000-00006a43208b', 'der Sprechakt', 'فعل الكلام', 'speech act', NULL, 'der', 'die Sprechakte', 'noun', 'Der Sprechakt ändert die Wirklichkeit.', 'The speech act changes reality.', 'C2', 19),
  ('00000000-0000-4000-a000-00006a43208b', 'die Implikatur', 'الاستلزام التخاطبي', 'implicature', NULL, 'die', 'die Implikaturen', 'noun', 'Die Implikatur ist die indirekte Bedeutung.', 'Implicature is the indirect meaning.', 'C2', 20),
  ('00000000-0000-4000-a000-00006a43208b', 'der Kontext', 'السياق', 'context', NULL, 'der', 'die Kontexte', 'noun', 'Der Kontext bestimmt die Bedeutung.', 'Context determines meaning.', 'B2', 21),
  ('00000000-0000-4000-a000-00006a43208b', 'die Höflichkeit', 'الأدب / اللباقة', 'politeness', NULL, 'die', NULL, 'noun', 'Höflichkeit ist in Japan sehr wichtig.', 'Politeness is very important in Japan.', 'B2', 22),
  ('00000000-0000-4000-a000-00006a43208b', 'die Konversationsanalyse', 'تحليل المحادثة', 'conversation analysis', NULL, 'die', NULL, 'noun', 'Die Konversationsanalyse untersucht Gespräche.', 'Conversation analysis examines conversations.', 'C2', 23),
  ('00000000-0000-4000-a000-00006a43208b', 'die Bedeutung', 'المعنى', 'meaning', NULL, 'die', 'die Bedeutungen', 'noun', 'Die Bedeutung des Wortes ist klar.', 'The meaning of the word is clear.', 'B2', 24),
  ('00000000-0000-4000-a000-00006a43208b', 'die Synonymie', 'الترادف', 'synonymy', NULL, 'die', NULL, 'noun', 'Synonymie bedeutet Bedeutungsgleichheit.', 'Synonymy means sameness of meaning.', 'C2', 25),
  ('00000000-0000-4000-a000-00006a43208b', 'die Antonymie', 'التضاد', 'antonymy', NULL, 'die', NULL, 'noun', 'Antonymie bezeichnet Gegensätze.', 'Antonymy denotes opposites.', 'C2', 26),
  ('00000000-0000-4000-a000-00006a43208b', 'die Polysemie', 'تعدد المعاني', 'polysemy', NULL, 'die', NULL, 'noun', 'Polysemie hat mehrere Bedeutungen.', 'Polysemy has multiple meanings.', 'C2', 27),
  ('00000000-0000-4000-a000-00006a43208b', 'die Kompositionalität', 'التركيبية', 'compositionality', NULL, 'die', NULL, 'noun', 'Kompositionalität besagt, dass Bedeutung aus Teilen besteht.', 'Compositionality holds that meaning consists of parts.', 'C2', 28),
  ('00000000-0000-4000-a000-00006a43208b', 'die Übersetzung', 'الترجمة', 'translation', NULL, 'die', 'die Übersetzungen', 'noun', 'Die Übersetzung ist gelungen.', 'The translation is successful.', 'B2', 29),
  ('00000000-0000-4000-a000-00006a43208b', 'übersetzen', 'يترجم', 'to translate', NULL, NULL, NULL, 'verb', 'Ich übersetze den Text ins Arabische.', 'I translate the text into Arabic.', 'B1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006a43208b', 'Module Partikeln und Satzgliedstellung (Modal Particles and Word Order Nuances) / الجزيئات النمطية وترتيب الكلمات الدقيق', 'Modal particles (doch, ja, eben, halt, wohl, eigentlich, denn, mal) add nuance and emotion to statements. They are almost impossible to translate directly but are essential for natural German. At C2, their correct placement and usage distinguishes near-native from advanced learners.', '[{"rule":"doch: contradiction or emphasis","note":"Das ist doch nicht wahr! (That''s just not true!)"},{"rule":"ja: shared knowledge reminder","note":"Das ist ja interessant! (That IS interesting! — as we both know)"},{"rule":"denn: in W-questions (casual)","note":"Was machst du denn da? (What are you doing there? — curious, not accusatory)"}]', '[{"german":"Das ist doch eine gute Idee, oder?","arabic":"هذه فكرة جيدة، أليس كذلك؟ (تأكيد)","english":"That IS a good idea, isn''t it?"},{"german":"Komm mal her, bitte.","arabic":"تعال إلى هنا من فضلك. (طلاقة)","english":"Come here, please. (softening)"},{"german":"Was hast du eigentlich studiert?","arabic":"ماذا درست بالمناسبة؟","english":"What did you study, by the way?"}]', '[{"mistake":"Speaking without modal particles (too textbook-like)","correction":"Das ist doch klar! (not just \"Das ist klar\")","explanation":"Without modal particles, German sounds robotic. At C2, particles show naturalness."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006a43208b', 'multiple_choice', 'Welches deutsche Wort bedeutet "linguistics"?', '["die Semantik","die Syntax","die Phonetik","die Morphologie"]', 'die Linguistik', '"linguistics" = "die Linguistik" in German. Article: die ', 1, 1),
  ('00000000-0000-4000-a000-00006a43208b', 'multiple_choice', 'Welches deutsche Wort bedeutet "syntax"?', '["die Linguistik","die Semantik","die Phonetik","die Morphologie"]', 'die Syntax', '"syntax" = "die Syntax" in German. Article: die ', 1, 2),
  ('00000000-0000-4000-a000-00006a43208b', 'multiple_choice', 'Welches deutsche Wort bedeutet "semantics"?', '["die Semantik","die Linguistik","die Phonetik","die Syntax"]', 'die Semantik', '"semantics" = "die Semantik" in German. Article: die ', 1, 3),
  ('00000000-0000-4000-a000-00006a43208b', 'multiple_choice', 'Welches deutsche Wort bedeutet "morphology"?', '["die Morphologie","die Semantik","die Linguistik","die Phonetik"]', 'die Morphologie', '"morphology" = "die Morphologie" in German. Article: die ', 1, 4),
  ('00000000-0000-4000-a000-00006a43208b', 'multiple_choice', 'Welches deutsche Wort bedeutet "phonetics"?', '["die Syntax","die Linguistik","die Phonetik","die Semantik"]', 'die Phonetik', '"phonetics" = "die Phonetik" in German. Article: die ', 1, 5),
  ('00000000-0000-4000-a000-00006a43208b', 'fill_gap', 'Ergänzen Sie den Satz: Ich ___ gern über German Dialects. (sprechen)', '["spreche","sprichst","spricht","sprechen"]', 'spreche', 'ich spreche gern = I like to speak. Stem: sprech- + e.', 2, 6),
  ('00000000-0000-4000-a000-00006a43208b', 'translation', 'Übersetzen Sie ins Deutsche: "I am learning about German Dialects."', '["Ich lerne über German Dialects.","Ich lerne German Dialects.","Lerne ich German Dialects."]', 'Ich lerne über German Dialects.', '"Ich lerne über..." = "I am learning about..."', 2, 7),
  ('00000000-0000-4000-a000-00006a43208b', 'matching', 'Match: Which word pairs are correct?', '["die Linguistik - linguistics, die Syntax - syntax"]', 'Matched correctly', 'Each German word has a unique English equivalent.', 2, 8);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-00006a43208b', 'multiple_choice', 'Was bedeutet "die Linguistik" auf Deutsch?', '["linguistics","to run","beautiful","yesterday"]', 'linguistics', 1, 1),
  ('00000000-0000-4000-a000-00006a43208b', 'multiple_choice', 'Welcher Artikel gehört zu "die Syntax"?', '["der","die","das","den"]', 'die', 1, 2),
  ('00000000-0000-4000-a000-00006a43208b', 'true_false', 'Das Wort "die Semantik" gehört zum Thema German Dialects.', '["True","False"]', 'True', 1, 3),
  ('00000000-0000-4000-a000-00006a43208b', 'multiple_choice', 'Welcher Satz verwendet present_tense?', '["Das ist doch eine gute Idee, oder?","Komm mal her, bitte.","Was hast du eigentlich studiert?"]', 'Das ist doch eine gute Idee, oder?', 2, 4),
  ('00000000-0000-4000-a000-00006a43208b', 'true_false', ''Im Deutschen steht das Verb an zweiter Position im Hauptsatz.', '["True","False"]', 'True', 1, 5),
  ('00000000-0000-4000-a000-00006a43208b', 'fill_blank', 'Complete: Ich ___ (morphology) Deutsch.', '["die Morphologie","lernt","lernst","lernen"]', 'lerne', 2, 6),
  ('00000000-0000-4000-a000-00006a43208b', 'multiple_choice', 'Wie lautet das deutsche Wort für "phonetics"?', '["die Phonetik","die Pragmatik","die Sprachwissenschaft","der Stil"]', 'die Phonetik', 1, 7),
  ('00000000-0000-4000-a000-00006a43208b', 'true_false', 'Im Deutschen werden alle Nomen großgeschrieben.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-00006a43208b', 'multiple_choice', 'How do you say "please" in a restaurant in Germany?', '["Bitte","Danke","Tschüss","Hallo"]', 'Bitte', 1, 9),
  ('00000000-0000-4000-a000-00006a43208b', 'fill_blank', 'Wo ___ (to live) du?', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 2, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, french_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-00006a43208b', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', NULL, 'Used in Sprachvariation und Sprachwandel', 'formal', false, 1),
  ('00000000-0000-4000-a000-00006a43208b', 'Guten Tag!', 'Good day!', 'نهارك سعيد!', NULL, 'Used in Sprachvariation und Sprachwandel', 'formal', false, 2),
  ('00000000-0000-4000-a000-00006a43208b', 'Hallo, wie geht es Ihnen?', 'Hello, how are you?', 'مرحباً، كيف حالكم؟', NULL, 'Used in Sprachvariation und Sprachwandel', 'formal', false, 3),
  ('00000000-0000-4000-a000-00006a43208b', 'Schön, Sie kennenzulernen!', 'Nice to meet you!', 'سعيد بلقائكم!', NULL, 'Used in Sprachvariation und Sprachwandel', 'formal', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-00006a43208b', 'die die Linguistik', 'linguistics — علم اللغة', 'noun', 'vocabulary', 1),
  ('00000000-0000-4000-a000-00006a43208b', 'die die Syntax', 'syntax — النحو/تركيب الجملة', 'noun', 'vocabulary', 2),
  ('00000000-0000-4000-a000-00006a43208b', 'die die Semantik', 'semantics — علم الدلالة', 'noun', 'vocabulary', 3),
  ('00000000-0000-4000-a000-00006a43208b', 'die die Morphologie', 'morphology — الصرف', 'noun', 'vocabulary', 4),
  ('00000000-0000-4000-a000-00006a43208b', 'die die Phonetik', 'phonetics — علم الأصوات', 'noun', 'vocabulary', 5),
  ('00000000-0000-4000-a000-00006a43208b', 'die die Pragmatik', 'pragmatics — البراغماتية', 'noun', 'vocabulary', 6),
  ('00000000-0000-4000-a000-00006a43208b', 'die die Sprachwissenschaft', 'linguistics — علم اللغة', 'noun', 'vocabulary', 7),
  ('00000000-0000-4000-a000-00006a43208b', 'der der Stil (die Stile)', 'style — الأسلوب', 'noun', 'vocabulary', 8),
  ('00000000-0000-4000-a000-00006a43208b', 'das das Register (die Register)', 'register — المستوى اللغوي', 'noun', 'vocabulary', 9),
  ('00000000-0000-4000-a000-00006a43208b', 'das das Stilmittel (die Stilmittel)', 'stylistic device — الأداة الأسلوبية', 'noun', 'vocabulary', 10),
  ('00000000-0000-4000-a000-00006a43208b', 'die die Alliteration (die Alliterationen)', 'alliteration — الجناس', 'noun', 'vocabulary', 11),
  ('00000000-0000-4000-a000-00006a43208b', 'die die Ellipse (die Ellipsen)', 'ellipsis — الحذف', 'noun', 'vocabulary', 12),
  ('00000000-0000-4000-a000-00006a43208b', 'die die Hyperbel (die Hyperbeln)', 'hyperbole — المبالغة', 'noun', 'vocabulary', 13),
  ('00000000-0000-4000-a000-00006a43208b', 'die die Poetik', 'poetics — الشعرية', 'noun', 'vocabulary', 14),
  ('00000000-0000-4000-a000-00006a43208b', 'der der Vers (die Verse)', 'verse — البيت الشعري', 'noun', 'vocabulary', 15),
  ('00000000-0000-4000-a000-00006a43208b', 'Das ist doch eine gute Idee, oder?', 'That IS a good idea, isn''t it?', 'Module Partikeln und Satzgliedstellung (Modal Particles and Word Order Nuances)', 'grammar', 16),
  ('00000000-0000-4000-a000-00006a43208b', 'Komm mal her, bitte.', 'Come here, please. (softening)', 'Module Partikeln und Satzgliedstellung (Modal Particles and Word Order Nuances)', 'grammar', 17),
  ('00000000-0000-4000-a000-00006a43208b', 'Was hast du eigentlich studiert?', 'What did you study, by the way?', 'Module Partikeln und Satzgliedstellung (Modal Particles and Word Order Nuances)', 'grammar', 18);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, french_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-00006a43208b', 'Dialekte und regionale Variation — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', NULL, 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, french_translation, duration_seconds, speaker_count, scenario) values
  ('00000000-0000-4000-a000-00006a43208b', 'Dialekte und regionale Variation — Hörverständnis', '[Lehrerin]: Guten Morgen! Heute lernen wir Begrüßungen.

[Lehrerin]: Wiederholen Sie: Guten Morgen!

[Student]: Guten Morgen!

[Lehrerin]: Sehr gut! Und wie sagt man "Goodbye"?

[Student]: Auf Wiedersehen!

[Lehrerin]: Perfekt! Bis morgen!', '[Lehrerin]: Good morning! Today we learn greetings.

[Lehrerin]: Repeat: Good morning!

[Student]: Good morning!

[Lehrerin]: Very good! And how do you say goodbye?

[Student]: Goodbye!

[Lehrerin]: Perfect! See you tomorrow!', '[Lehrerin]: صباح الخير! اليوم نتعلم التحيات.

[Lehrerin]: كرروا: صباح الخير!

[Student]: صباح الخير!

[Lehrerin]: جيد جداً! وكيف نقول "وداعاً"؟

[Student]: إلى اللقاء!

[Lehrerin]: ممتاز! إلى الغد!', '[Lehrerin]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: ', 72, 2, 'Sprachvariation und Sprachwandel');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-00006a43208b', '🔊 Sprechen: Dialekte und regionale Variation', 'Presentation: Prepare a 2-minute presentation on "German Dialects im deutschsprachigen Raum". Use discourse markers like "zunächst", "darüber hinaus", "abschließend". Your AI partner will ask critical questions afterwards.', 'German Dialects', ARRAY['Use discourse markers (also, jedoch, außerdem)','React naturally: "Ach so!", "Echt?", "Das stimmt!"','Paraphrase when you don''t know a word']::text[], ARRAY['die Linguistik','die Syntax','die Semantik','die Morphologie','die Phonetik','die Pragmatik','die Sprachwissenschaft','der Stil']::text[], 120, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-00006a43208b', '✏️ Schreiben: Dialekte und regionale Variation', 'Write a discursive essay (300-350 words) analyzing "German Dialects in modern German society". Present both advantages and disadvantages. Use complex sentence structures (Nebensätze mit "obwohl", "trotzdem", "während") and formal register. Conclude with your own position.', ARRAY['Use paragraph breaks for structure','Connect ideas with "außerdem", "deshalb", "jedoch"','Check your verb position in Nebensätze']::text[], ARRAY['die Linguistik','die Syntax','die Semantik','die Morphologie','die Phonetik','die Pragmatik','die Sprachwissenschaft','der Stil']::text[], ARRAY['Sentence structure','Vocabulary usage']::text[], 250, 350, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00006a43208b', 'Dialekte und regionale Variation — Roleplay', 'German Dialects', 'Student', 'Teacher', 'Practice conversation about German Dialects', 'Hallo! Lass uns über dieses Thema sprechen.', 'advanced', 1, ARRAY['die Linguistik','die Syntax','die Semantik','die Morphologie','die Phonetik','die Pragmatik','die Sprachwissenschaft','der Stil']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00006a43208b', 'Dialekte und regionale Variation — Advanced Roleplay', 'German Dialects', 'Customer', 'Assistant', 'Extended conversation about German Dialects', 'Guten Tag! Wie kann ich Ihnen helfen?', 'advanced', 2, ARRAY['die Linguistik','die Syntax','die Semantik','die Morphologie','die Phonetik','die Pragmatik','die Sprachwissenschaft','der Stil']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-00006a43208b', 'Dialekte und regionale Variation — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Dialekte und regionale Variation".', 'Creative practice for German Dialects', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-00006a43208b', '📚 Hausaufgabe: Dialekte und regionale Variation', 'Complete these tasks to reinforce "Dialekte und regionale Variation".', 'mixed', '[{"description":"Create 10 flashcards from this lesson''s vocabulary — write German on one side, Arabic on the other. Test yourself 3 times."},{"description":"Write 6 sentences about German Dialects: 2 statements, 2 questions, 2 negations — all using present_tense."},{"description":"Record yourself reading the dialogue aloud. Listen to the recording and note 3 things to improve."},{"description":"Find 3 real German websites, videos, or articles about German Dialects. Note 5 new words you discovered."}]', 50, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-00006a43208b', '🎯 Excellent progress! This lesson covered German Dialects (66 vocabulary items) and present_tense. You developed reading, listening, speaking, and writing skills in the context of linguistics. Focus on your common mistakes area for maximum improvement.', '["66 vocabulary items about German Dialects","present_tense — grammar explanation and practice","Reading comprehension: text about German Dialects","Listening comprehension: dialogue about German Dialects","Speaking practice: roleplay/discussion about German Dialects","Writing task: text about German Dialects"]', '[{"title":"Dialekte und regionale Variation Review","summary":"present_tense — the main grammar focus. Focus on nuanced usage, exceptions, and stylistic variation."}]', ARRAY['die Linguistik (linguistics)','die Syntax (syntax)','die Semantik (semantics)','die Morphologie (morphology)','die Phonetik (phonetics)']::text[], ARRAY['Don''t translate from Arabic word-for-word — German has different sentence structure','Learn every noun with its article: NEVER learn "Tisch" alone, always "der Tisch"','Pay attention to Konjunktiv I/II distinction']::text[], ARRAY['Practice 15-20 minutes daily — consistency beats intensity','Speak out loud: German pronunciation needs muscle memory','Use the new vocabulary within 24 hours or you''ll forget it','Watch German YouTube videos about German Dialects for authentic input']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006a43208b', 'translation', 'Translate to German: "I use the word "linguistics" in a sentence about German Dialects."', '[]', 'Linguistik untersucht die menschliche Sprache.', 'Use die  "die Linguistik" with the correct present_tense form.', 1, 40);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006a43208b', 'translation', 'Translate to German: "I use the word "syntax" in a sentence about German Dialects."', '[]', 'Die Syntax beschreibt die Satzstruktur.', 'Use die  "die Syntax" with the correct present_tense form.', 1, 41);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006a43208b', 'translation', 'Translate to German: "I use the word "semantics" in a sentence about German Dialects."', '[]', 'Die Semantik befasst sich mit Bedeutung.', 'Use die  "die Semantik" with the correct present_tense form.', 1, 42);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006a43208b', 'Culture: 🇩🇪 Deutsche Kultur: German Dialects', 'The German approach to German Dialects reflects deeper cultural values: Ordnung (order), Gründlichkeit (thoroughness), and Sachlichkeit (objectivity). Debates about German Dialects in German media are characterised by factual argumentation. Understanding these discourse norms is essential for C1/C2 learners who want to participate in academic or professional discussions.

لدى German Dialects في ألمانيا فروق ثقافية دقيقة تختلف عن البلدان العربية. الألمان يفصلون بين حياتهم الخاصة والمهنية بشكل صارم.', '["Tip: Always use \"Sie\" (formal) with strangers and colleagues","Tip: Germans appreciate punctuality — arrive 5 minutes early","Tip: Direct feedback is a sign of respect, not criticism","Tip: Prepare factual arguments, not emotional appeals"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006a43208b', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Incorrect preposition usage after verbs","correction":"Learn which preposition each verb requires (sich freuen auf, warten auf, denken an)","explanation":"Arabic and German have different sentence structures. Arabic is VSO, German is SVO with verb in position 2."},{"mistake":"Incorrect use of Konjunktiv II in polite requests","correction":"Ich hätte gern... (I would like...)","explanation":"Konjunktiv II is often replaced with würde + infinitive in speech"}]', 30);

  -- Lesson 2: Sprachwandel und Jugendsprache (L-C2-06-02)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-00006a43208c', '00000000-0000-4000-a000-000039d176c4', 'Sprachwandel und Jugendsprache', 'Study language change and youth language.', 'Language Change', 'reading', '["Understand and apply present_tense rules correctly","Use present_tense in real conversations","Avoid common mistakes Arabic speakers make with present_tense","Read and understand present_tense in context","Listen and identify present_tense in speech","Write sentences using present_tense correctly"]', 55, 2, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, french_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-00006a43208c', 'die Linguistik', 'علم اللغة', 'linguistics', NULL, 'die', NULL, 'noun', 'Linguistik untersucht die menschliche Sprache.', 'Linguistics studies human language.', 'C1', 1),
  ('00000000-0000-4000-a000-00006a43208c', 'die Syntax', 'النحو/تركيب الجملة', 'syntax', NULL, 'die', NULL, 'noun', 'Die Syntax beschreibt die Satzstruktur.', 'Syntax describes sentence structure.', 'C1', 2),
  ('00000000-0000-4000-a000-00006a43208c', 'die Semantik', 'علم الدلالة', 'semantics', NULL, 'die', NULL, 'noun', 'Die Semantik befasst sich mit Bedeutung.', 'Semantics deals with meaning.', 'C1', 3),
  ('00000000-0000-4000-a000-00006a43208c', 'die Morphologie', 'الصرف', 'morphology', NULL, 'die', NULL, 'noun', 'Die Morphologie untersucht Wortformen.', 'Morphology examines word forms.', 'C1', 4),
  ('00000000-0000-4000-a000-00006a43208c', 'die Phonetik', 'علم الأصوات', 'phonetics', NULL, 'die', NULL, 'noun', 'Die Phonetik untersucht Sprachlaute.', 'Phonetics studies speech sounds.', 'C1', 5),
  ('00000000-0000-4000-a000-00006a43208c', 'die Pragmatik', 'البراغماتية', 'pragmatics', NULL, 'die', NULL, 'noun', 'Pragmatik untersucht Sprachgebrauch.', 'Pragmatics studies language use.', 'C2', 6),
  ('00000000-0000-4000-a000-00006a43208c', 'die Sprachwissenschaft', 'علم اللغة', 'linguistics', NULL, 'die', NULL, 'noun', 'Die germanistische Sprachwissenschaft ist vielfältig.', 'German linguistics is diverse.', 'C1', 7),
  ('00000000-0000-4000-a000-00006a43208c', 'der Stil', 'الأسلوب', 'style', NULL, 'der', 'die Stile', 'noun', 'Der Stil des Textes ist formell.', 'The style of the text is formal.', 'B2', 8),
  ('00000000-0000-4000-a000-00006a43208c', 'das Register', 'المستوى اللغوي', 'register', NULL, 'das', 'die Register', 'noun', 'Das Register passt zur Situation.', 'The register fits the situation.', 'C1', 9),
  ('00000000-0000-4000-a000-00006a43208c', 'das Stilmittel', 'الأداة الأسلوبية', 'stylistic device', NULL, 'das', 'die Stilmittel', 'noun', 'Das Stilmittel unterstreicht die Aussage.', 'The stylistic device emphasizes the statement.', 'C1', 10),
  ('00000000-0000-4000-a000-00006a43208c', 'die Alliteration', 'الجناس', 'alliteration', NULL, 'die', 'die Alliterationen', 'noun', 'Die Alliteration wiederholt den Anlaut.', 'Alliteration repeats the initial sound.', 'C2', 11),
  ('00000000-0000-4000-a000-00006a43208c', 'die Ellipse', 'الحذف', 'ellipsis', NULL, 'die', 'die Ellipsen', 'noun', 'Die Ellipse spart Wörter aus.', 'The ellipsis omits words.', 'C2', 12),
  ('00000000-0000-4000-a000-00006a43208c', 'die Hyperbel', 'المبالغة', 'hyperbole', NULL, 'die', 'die Hyperbeln', 'noun', 'Die Hyperbel übertreibt stark.', 'Hyperbole exaggerates strongly.', 'C2', 13),
  ('00000000-0000-4000-a000-00006a43208c', 'die Poetik', 'الشعرية', 'poetics', NULL, 'die', NULL, 'noun', 'Poetik ist die Theorie der Dichtkunst.', 'Poetics is the theory of poetry.', 'C2', 14),
  ('00000000-0000-4000-a000-00006a43208c', 'der Vers', 'البيت الشعري', 'verse', NULL, 'der', 'die Verse', 'noun', 'Der Vers hat fünf Hebungen.', 'The verse has five stresses.', 'C1', 15),
  ('00000000-0000-4000-a000-00006a43208c', 'der Reim', 'القافية', 'rhyme', NULL, 'der', 'die Reime', 'noun', 'Der Reim verbindet die Zeilen.', 'Rhyme connects the lines.', 'C1', 16),
  ('00000000-0000-4000-a000-00006a43208c', 'das Metrum', 'الوزن', 'meter', NULL, 'das', 'die Metren', 'noun', 'Das Metrum bestimmt den Rhythmus.', 'The meter determines the rhythm.', 'C2', 17),
  ('00000000-0000-4000-a000-00006a43208c', 'die Gattung', 'النوع الأدبي', 'genre', NULL, 'die', 'die Gattungen', 'noun', 'Lyrik ist eine literarische Gattung.', 'Lyric poetry is a literary genre.', 'C1', 18),
  ('00000000-0000-4000-a000-00006a43208c', 'der Sprechakt', 'فعل الكلام', 'speech act', NULL, 'der', 'die Sprechakte', 'noun', 'Der Sprechakt ändert die Wirklichkeit.', 'The speech act changes reality.', 'C2', 19),
  ('00000000-0000-4000-a000-00006a43208c', 'die Implikatur', 'الاستلزام التخاطبي', 'implicature', NULL, 'die', 'die Implikaturen', 'noun', 'Die Implikatur ist die indirekte Bedeutung.', 'Implicature is the indirect meaning.', 'C2', 20),
  ('00000000-0000-4000-a000-00006a43208c', 'der Kontext', 'السياق', 'context', NULL, 'der', 'die Kontexte', 'noun', 'Der Kontext bestimmt die Bedeutung.', 'Context determines meaning.', 'B2', 21),
  ('00000000-0000-4000-a000-00006a43208c', 'die Höflichkeit', 'الأدب / اللباقة', 'politeness', NULL, 'die', NULL, 'noun', 'Höflichkeit ist in Japan sehr wichtig.', 'Politeness is very important in Japan.', 'B2', 22),
  ('00000000-0000-4000-a000-00006a43208c', 'die Konversationsanalyse', 'تحليل المحادثة', 'conversation analysis', NULL, 'die', NULL, 'noun', 'Die Konversationsanalyse untersucht Gespräche.', 'Conversation analysis examines conversations.', 'C2', 23),
  ('00000000-0000-4000-a000-00006a43208c', 'die Bedeutung', 'المعنى', 'meaning', NULL, 'die', 'die Bedeutungen', 'noun', 'Die Bedeutung des Wortes ist klar.', 'The meaning of the word is clear.', 'B2', 24),
  ('00000000-0000-4000-a000-00006a43208c', 'die Synonymie', 'الترادف', 'synonymy', NULL, 'die', NULL, 'noun', 'Synonymie bedeutet Bedeutungsgleichheit.', 'Synonymy means sameness of meaning.', 'C2', 25),
  ('00000000-0000-4000-a000-00006a43208c', 'die Antonymie', 'التضاد', 'antonymy', NULL, 'die', NULL, 'noun', 'Antonymie bezeichnet Gegensätze.', 'Antonymy denotes opposites.', 'C2', 26),
  ('00000000-0000-4000-a000-00006a43208c', 'die Polysemie', 'تعدد المعاني', 'polysemy', NULL, 'die', NULL, 'noun', 'Polysemie hat mehrere Bedeutungen.', 'Polysemy has multiple meanings.', 'C2', 27),
  ('00000000-0000-4000-a000-00006a43208c', 'die Kompositionalität', 'التركيبية', 'compositionality', NULL, 'die', NULL, 'noun', 'Kompositionalität besagt, dass Bedeutung aus Teilen besteht.', 'Compositionality holds that meaning consists of parts.', 'C2', 28),
  ('00000000-0000-4000-a000-00006a43208c', 'die Übersetzung', 'الترجمة', 'translation', NULL, 'die', 'die Übersetzungen', 'noun', 'Die Übersetzung ist gelungen.', 'The translation is successful.', 'B2', 29),
  ('00000000-0000-4000-a000-00006a43208c', 'übersetzen', 'يترجم', 'to translate', NULL, NULL, NULL, 'verb', 'Ich übersetze den Text ins Arabische.', 'I translate the text into Arabic.', 'B1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006a43208c', 'Erweiterte Partizipialattribute (Extended Participle Attributes) / الصفات المشتقة الموسعة', 'Extended participle attributes are a hallmark of sophisticated German. Instead of a relative clause, German can place a long phrase between the article and the noun: "der von der Regierung vorgeschlagene Plan" (the plan proposed by the government). These structures condense information and are very common in academic and legal German.', '[{"rule":"Article + (expanded phrase) + noun","note":"der [von der Regierung vorgeschlagene] Plan"},{"rule":"Participle can be Partizip I (aktiv, gleichzeitig) or Partizip II (passiv, vorzeitig)","note":"der lesende Student (the reading student — Partizip I), das gelesene Buch (the read book — Partizip II)"}]', '[{"german":"Der von der Bundesregierung vorgeschlagene Gesetzesentwurf wurde diskutiert.","arabic":"تمت مناقشة مشروع القانون الذي اقترحته الحكومة الاتحادية.","english":"The bill proposed by the federal government was discussed."},{"german":"Die in den letzten Jahren stark gestiegenen Mieten belasten viele Familien.","arabic":"الإيجارات التي ارتفعت بشدة في السنوات الأخيرة تثقل كاهل العائلات.","english":"The rents that have risen sharply in recent years burden many families."}]', '[{"mistake":"Der Plan, der von der Regierung vorgeschlagen wurde (relative clause instead of extended attribute)","correction":"Der von der Regierung vorgeschlagene Plan","explanation":"At C2, extended attributes are preferred over relative clauses for conciseness."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006a43208c', 'multiple_choice', 'Welches deutsche Wort bedeutet "linguistics"?', '["die Morphologie","die Linguistik","die Syntax","die Semantik"]', 'die Linguistik', '"linguistics" = "die Linguistik" in German. Article: die ', 1, 1),
  ('00000000-0000-4000-a000-00006a43208c', 'multiple_choice', 'Welches deutsche Wort bedeutet "syntax"?', '["die Syntax","die Linguistik","die Semantik","die Morphologie"]', 'die Syntax', '"syntax" = "die Syntax" in German. Article: die ', 1, 2),
  ('00000000-0000-4000-a000-00006a43208c', 'multiple_choice', 'Welches deutsche Wort bedeutet "semantics"?', '["die Syntax","die Linguistik","die Phonetik","die Morphologie"]', 'die Semantik', '"semantics" = "die Semantik" in German. Article: die ', 1, 3),
  ('00000000-0000-4000-a000-00006a43208c', 'multiple_choice', 'Welches deutsche Wort bedeutet "morphology"?', '["die Semantik","die Syntax","die Linguistik","die Phonetik"]', 'die Morphologie', '"morphology" = "die Morphologie" in German. Article: die ', 1, 4),
  ('00000000-0000-4000-a000-00006a43208c', 'multiple_choice', 'Welches deutsche Wort bedeutet "phonetics"?', '["die Linguistik","die Morphologie","die Phonetik","die Semantik"]', 'die Phonetik', '"phonetics" = "die Phonetik" in German. Article: die ', 1, 5),
  ('00000000-0000-4000-a000-00006a43208c', 'fill_gap', 'Ergänzen Sie den Satz: Ich ___ gern über Language Change. (sprechen)', '["spreche","sprichst","spricht","sprechen"]', 'spreche', 'ich spreche gern = I like to speak. Stem: sprech- + e.', 2, 6),
  ('00000000-0000-4000-a000-00006a43208c', 'translation', 'Übersetzen Sie ins Deutsche: "I am learning about Language Change."', '["Ich lerne über Language Change.","Ich lerne Language Change.","Lerne ich Language Change."]', 'Ich lerne über Language Change.', '"Ich lerne über..." = "I am learning about..."', 2, 7),
  ('00000000-0000-4000-a000-00006a43208c', 'matching', 'Match: Which word pairs are correct?', '["die Linguistik - linguistics, die Syntax - syntax"]', 'Matched correctly', 'Each German word has a unique English equivalent.', 2, 8);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-00006a43208c', 'multiple_choice', 'Was bedeutet "die Linguistik" auf Deutsch?', '["linguistics","to run","beautiful","yesterday"]', 'linguistics', 1, 1),
  ('00000000-0000-4000-a000-00006a43208c', 'multiple_choice', 'Welcher Artikel gehört zu "die Syntax"?', '["der","die","das","den"]', 'die', 1, 2),
  ('00000000-0000-4000-a000-00006a43208c', 'true_false', 'Das Wort "die Semantik" gehört zum Thema Language Change.', '["True","False"]', 'True', 1, 3),
  ('00000000-0000-4000-a000-00006a43208c', 'multiple_choice', 'Welcher Satz verwendet present_tense?', '["Der von der Bundesregierung vorgeschlagene Gesetzesentwurf wurde diskutiert.","Die in den letzten Jahren stark gestiegenen Mieten belasten viele Familien."]', 'Der von der Bundesregierung vorgeschlagene Gesetzesentwurf wurde diskutiert.', 2, 4),
  ('00000000-0000-4000-a000-00006a43208c', 'true_false', ''Im Deutschen steht das Verb an zweiter Position im Hauptsatz.', '["True","False"]', 'True', 1, 5),
  ('00000000-0000-4000-a000-00006a43208c', 'fill_blank', 'Complete: Ich ___ (morphology) Deutsch.', '["die Morphologie","lernt","lernst","lernen"]', 'lerne', 2, 6),
  ('00000000-0000-4000-a000-00006a43208c', 'multiple_choice', 'Wie lautet das deutsche Wort für "phonetics"?', '["die Phonetik","die Pragmatik","die Sprachwissenschaft","der Stil"]', 'die Phonetik', 1, 7),
  ('00000000-0000-4000-a000-00006a43208c', 'true_false', 'Im Deutschen werden alle Nomen großgeschrieben.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-00006a43208c', 'multiple_choice', 'How do you say "please" in a restaurant in Germany?', '["Bitte","Danke","Tschüss","Hallo"]', 'Bitte', 1, 9),
  ('00000000-0000-4000-a000-00006a43208c', 'fill_blank', 'Wo ___ (to live) du?', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 2, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, french_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-00006a43208c', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', NULL, 'Used in Sprachvariation und Sprachwandel', 'formal', false, 1),
  ('00000000-0000-4000-a000-00006a43208c', 'Guten Tag!', 'Good day!', 'نهارك سعيد!', NULL, 'Used in Sprachvariation und Sprachwandel', 'formal', false, 2),
  ('00000000-0000-4000-a000-00006a43208c', 'Hallo, wie geht es Ihnen?', 'Hello, how are you?', 'مرحباً، كيف حالكم؟', NULL, 'Used in Sprachvariation und Sprachwandel', 'formal', false, 3),
  ('00000000-0000-4000-a000-00006a43208c', 'Schön, Sie kennenzulernen!', 'Nice to meet you!', 'سعيد بلقائكم!', NULL, 'Used in Sprachvariation und Sprachwandel', 'formal', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-00006a43208c', 'die die Linguistik', 'linguistics — علم اللغة', 'noun', 'vocabulary', 1),
  ('00000000-0000-4000-a000-00006a43208c', 'die die Syntax', 'syntax — النحو/تركيب الجملة', 'noun', 'vocabulary', 2),
  ('00000000-0000-4000-a000-00006a43208c', 'die die Semantik', 'semantics — علم الدلالة', 'noun', 'vocabulary', 3),
  ('00000000-0000-4000-a000-00006a43208c', 'die die Morphologie', 'morphology — الصرف', 'noun', 'vocabulary', 4),
  ('00000000-0000-4000-a000-00006a43208c', 'die die Phonetik', 'phonetics — علم الأصوات', 'noun', 'vocabulary', 5),
  ('00000000-0000-4000-a000-00006a43208c', 'die die Pragmatik', 'pragmatics — البراغماتية', 'noun', 'vocabulary', 6),
  ('00000000-0000-4000-a000-00006a43208c', 'die die Sprachwissenschaft', 'linguistics — علم اللغة', 'noun', 'vocabulary', 7),
  ('00000000-0000-4000-a000-00006a43208c', 'der der Stil (die Stile)', 'style — الأسلوب', 'noun', 'vocabulary', 8),
  ('00000000-0000-4000-a000-00006a43208c', 'das das Register (die Register)', 'register — المستوى اللغوي', 'noun', 'vocabulary', 9),
  ('00000000-0000-4000-a000-00006a43208c', 'das das Stilmittel (die Stilmittel)', 'stylistic device — الأداة الأسلوبية', 'noun', 'vocabulary', 10),
  ('00000000-0000-4000-a000-00006a43208c', 'die die Alliteration (die Alliterationen)', 'alliteration — الجناس', 'noun', 'vocabulary', 11),
  ('00000000-0000-4000-a000-00006a43208c', 'die die Ellipse (die Ellipsen)', 'ellipsis — الحذف', 'noun', 'vocabulary', 12),
  ('00000000-0000-4000-a000-00006a43208c', 'die die Hyperbel (die Hyperbeln)', 'hyperbole — المبالغة', 'noun', 'vocabulary', 13),
  ('00000000-0000-4000-a000-00006a43208c', 'die die Poetik', 'poetics — الشعرية', 'noun', 'vocabulary', 14),
  ('00000000-0000-4000-a000-00006a43208c', 'der der Vers (die Verse)', 'verse — البيت الشعري', 'noun', 'vocabulary', 15),
  ('00000000-0000-4000-a000-00006a43208c', 'Der von der Bundesregierung vorgeschlagene Gesetzesentwurf wurde diskutiert.', 'The bill proposed by the federal government was discussed.', 'Erweiterte Partizipialattribute (Extended Participle Attributes)', 'grammar', 16),
  ('00000000-0000-4000-a000-00006a43208c', 'Die in den letzten Jahren stark gestiegenen Mieten belasten viele Familien.', 'The rents that have risen sharply in recent years burden many families.', 'Erweiterte Partizipialattribute (Extended Participle Attributes)', 'grammar', 17);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, french_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-00006a43208c', 'Sprachwandel und Jugendsprache — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', NULL, 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, french_translation, duration_seconds, speaker_count, scenario) values
  ('00000000-0000-4000-a000-00006a43208c', 'Sprachwandel und Jugendsprache — Hörverständnis', '[Lehrerin]: Guten Morgen! Heute lernen wir Begrüßungen.

[Lehrerin]: Wiederholen Sie: Guten Morgen!

[Student]: Guten Morgen!

[Lehrerin]: Sehr gut! Und wie sagt man "Goodbye"?

[Student]: Auf Wiedersehen!

[Lehrerin]: Perfekt! Bis morgen!', '[Lehrerin]: Good morning! Today we learn greetings.

[Lehrerin]: Repeat: Good morning!

[Student]: Good morning!

[Lehrerin]: Very good! And how do you say goodbye?

[Student]: Goodbye!

[Lehrerin]: Perfect! See you tomorrow!', '[Lehrerin]: صباح الخير! اليوم نتعلم التحيات.

[Lehrerin]: كرروا: صباح الخير!

[Student]: صباح الخير!

[Lehrerin]: جيد جداً! وكيف نقول "وداعاً"؟

[Student]: إلى اللقاء!

[Lehrerin]: ممتاز! إلى الغد!', '[Lehrerin]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: ', 72, 2, 'Sprachvariation und Sprachwandel');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-00006a43208c', '🔊 Sprechen: Sprachwandel und Jugendsprache', 'Presentation: Prepare a 2-minute presentation on "Language Change im deutschsprachigen Raum". Use discourse markers like "zunächst", "darüber hinaus", "abschließend". Your AI partner will ask critical questions afterwards.', 'Language Change', ARRAY['Use discourse markers (also, jedoch, außerdem)','React naturally: "Ach so!", "Echt?", "Das stimmt!"','Paraphrase when you don''t know a word']::text[], ARRAY['die Linguistik','die Syntax','die Semantik','die Morphologie','die Phonetik','die Pragmatik','die Sprachwissenschaft','der Stil']::text[], 120, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-00006a43208c', '✏️ Schreiben: Sprachwandel und Jugendsprache', 'Write a discursive essay (300-350 words) analyzing "Language Change in modern German society". Present both advantages and disadvantages. Use complex sentence structures (Nebensätze mit "obwohl", "trotzdem", "während") and formal register. Conclude with your own position.', ARRAY['Use paragraph breaks for structure','Connect ideas with "außerdem", "deshalb", "jedoch"','Check your verb position in Nebensätze']::text[], ARRAY['die Linguistik','die Syntax','die Semantik','die Morphologie','die Phonetik','die Pragmatik','die Sprachwissenschaft','der Stil']::text[], ARRAY['Sentence structure','Vocabulary usage']::text[], 250, 350, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00006a43208c', 'Sprachwandel und Jugendsprache — Roleplay', 'Language Change', 'Student', 'Teacher', 'Practice conversation about Language Change', 'Hallo! Lass uns über dieses Thema sprechen.', 'advanced', 1, ARRAY['die Linguistik','die Syntax','die Semantik','die Morphologie','die Phonetik','die Pragmatik','die Sprachwissenschaft','der Stil']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00006a43208c', 'Sprachwandel und Jugendsprache — Advanced Roleplay', 'Language Change', 'Customer', 'Assistant', 'Extended conversation about Language Change', 'Guten Tag! Wie kann ich Ihnen helfen?', 'advanced', 2, ARRAY['die Linguistik','die Syntax','die Semantik','die Morphologie','die Phonetik','die Pragmatik','die Sprachwissenschaft','der Stil']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-00006a43208c', 'Sprachwandel und Jugendsprache — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Sprachwandel und Jugendsprache".', 'Creative practice for Language Change', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-00006a43208c', '📚 Hausaufgabe: Sprachwandel und Jugendsprache', 'Complete these tasks to reinforce "Sprachwandel und Jugendsprache".', 'mixed', '[{"description":"Create 10 flashcards from this lesson''s vocabulary — write German on one side, Arabic on the other. Test yourself 3 times."},{"description":"Write 6 sentences about Language Change: 2 statements, 2 questions, 2 negations — all using present_tense."},{"description":"Record yourself reading the dialogue aloud. Listen to the recording and note 3 things to improve."},{"description":"Find 3 real German websites, videos, or articles about Language Change. Note 5 new words you discovered."}]', 50, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-00006a43208c', '🎯 Excellent progress! This lesson covered Language Change (66 vocabulary items) and present_tense. You developed reading, listening, speaking, and writing skills in the context of linguistics. Focus on your common mistakes area for maximum improvement.', '["66 vocabulary items about Language Change","present_tense — grammar explanation and practice","Reading comprehension: text about Language Change","Listening comprehension: dialogue about Language Change","Speaking practice: roleplay/discussion about Language Change","Writing task: text about Language Change"]', '[{"title":"Sprachwandel und Jugendsprache Review","summary":"present_tense — the main grammar focus. Focus on nuanced usage, exceptions, and stylistic variation."}]', ARRAY['die Linguistik (linguistics)','die Syntax (syntax)','die Semantik (semantics)','die Morphologie (morphology)','die Phonetik (phonetics)']::text[], ARRAY['Don''t translate from Arabic word-for-word — German has different sentence structure','Learn every noun with its article: NEVER learn "Tisch" alone, always "der Tisch"','Pay attention to Konjunktiv I/II distinction']::text[], ARRAY['Practice 15-20 minutes daily — consistency beats intensity','Speak out loud: German pronunciation needs muscle memory','Use the new vocabulary within 24 hours or you''ll forget it','Watch German YouTube videos about Language Change for authentic input']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006a43208c', 'translation', 'Translate to German: "I use the word "linguistics" in a sentence about Language Change."', '[]', 'Linguistik untersucht die menschliche Sprache.', 'Use die  "die Linguistik" with the correct present_tense form.', 1, 40);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006a43208c', 'translation', 'Translate to German: "I use the word "syntax" in a sentence about Language Change."', '[]', 'Die Syntax beschreibt die Satzstruktur.', 'Use die  "die Syntax" with the correct present_tense form.', 1, 41);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006a43208c', 'translation', 'Translate to German: "I use the word "semantics" in a sentence about Language Change."', '[]', 'Die Semantik befasst sich mit Bedeutung.', 'Use die  "die Semantik" with the correct present_tense form.', 1, 42);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006a43208c', 'Culture: 🇩🇪 Deutsche Kultur: Language Change', 'The German approach to Language Change reflects deeper cultural values: Ordnung (order), Gründlichkeit (thoroughness), and Sachlichkeit (objectivity). Debates about Language Change in German media are characterised by factual argumentation. Understanding these discourse norms is essential for C1/C2 learners who want to participate in academic or professional discussions.

لدى Language Change في ألمانيا فروق ثقافية دقيقة تختلف عن البلدان العربية. الألمان يفصلون بين حياتهم الخاصة والمهنية بشكل صارم.', '["Tip: Always use \"Sie\" (formal) with strangers and colleagues","Tip: Germans appreciate punctuality — arrive 5 minutes early","Tip: Direct feedback is a sign of respect, not criticism","Tip: Prepare factual arguments, not emotional appeals"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006a43208c', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Incorrect preposition usage after verbs","correction":"Learn which preposition each verb requires (sich freuen auf, warten auf, denken an)","explanation":"Arabic and German have different sentence structures. Arabic is VSO, German is SVO with verb in position 2."},{"mistake":"Incorrect use of Konjunktiv II in polite requests","correction":"Ich hätte gern... (I would like...)","explanation":"Konjunktiv II is often replaced with würde + infinitive in speech"}]', 30);

  -- Lesson 3: C2 Abschlusstest (L-C2-06-03)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-00006a43208d', '00000000-0000-4000-a000-000039d176c4', 'C2 Abschlusstest', 'Comprehensive C2 mastery level test.', 'Level Test', 'test', '["Understand and apply present_tense rules correctly","Use present_tense in real conversations","Avoid common mistakes Arabic speakers make with present_tense","Read and understand present_tense in context","Listen and identify present_tense in speech","Write sentences using present_tense correctly"]', 90, 3, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, french_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-00006a43208d', 'die Linguistik', 'علم اللغة', 'linguistics', NULL, 'die', NULL, 'noun', 'Linguistik untersucht die menschliche Sprache.', 'Linguistics studies human language.', 'C1', 1),
  ('00000000-0000-4000-a000-00006a43208d', 'die Syntax', 'النحو/تركيب الجملة', 'syntax', NULL, 'die', NULL, 'noun', 'Die Syntax beschreibt die Satzstruktur.', 'Syntax describes sentence structure.', 'C1', 2),
  ('00000000-0000-4000-a000-00006a43208d', 'die Semantik', 'علم الدلالة', 'semantics', NULL, 'die', NULL, 'noun', 'Die Semantik befasst sich mit Bedeutung.', 'Semantics deals with meaning.', 'C1', 3),
  ('00000000-0000-4000-a000-00006a43208d', 'die Morphologie', 'الصرف', 'morphology', NULL, 'die', NULL, 'noun', 'Die Morphologie untersucht Wortformen.', 'Morphology examines word forms.', 'C1', 4),
  ('00000000-0000-4000-a000-00006a43208d', 'die Phonetik', 'علم الأصوات', 'phonetics', NULL, 'die', NULL, 'noun', 'Die Phonetik untersucht Sprachlaute.', 'Phonetics studies speech sounds.', 'C1', 5),
  ('00000000-0000-4000-a000-00006a43208d', 'die Pragmatik', 'البراغماتية', 'pragmatics', NULL, 'die', NULL, 'noun', 'Pragmatik untersucht Sprachgebrauch.', 'Pragmatics studies language use.', 'C2', 6),
  ('00000000-0000-4000-a000-00006a43208d', 'die Sprachwissenschaft', 'علم اللغة', 'linguistics', NULL, 'die', NULL, 'noun', 'Die germanistische Sprachwissenschaft ist vielfältig.', 'German linguistics is diverse.', 'C1', 7),
  ('00000000-0000-4000-a000-00006a43208d', 'der Stil', 'الأسلوب', 'style', NULL, 'der', 'die Stile', 'noun', 'Der Stil des Textes ist formell.', 'The style of the text is formal.', 'B2', 8),
  ('00000000-0000-4000-a000-00006a43208d', 'das Register', 'المستوى اللغوي', 'register', NULL, 'das', 'die Register', 'noun', 'Das Register passt zur Situation.', 'The register fits the situation.', 'C1', 9),
  ('00000000-0000-4000-a000-00006a43208d', 'das Stilmittel', 'الأداة الأسلوبية', 'stylistic device', NULL, 'das', 'die Stilmittel', 'noun', 'Das Stilmittel unterstreicht die Aussage.', 'The stylistic device emphasizes the statement.', 'C1', 10),
  ('00000000-0000-4000-a000-00006a43208d', 'die Alliteration', 'الجناس', 'alliteration', NULL, 'die', 'die Alliterationen', 'noun', 'Die Alliteration wiederholt den Anlaut.', 'Alliteration repeats the initial sound.', 'C2', 11),
  ('00000000-0000-4000-a000-00006a43208d', 'die Ellipse', 'الحذف', 'ellipsis', NULL, 'die', 'die Ellipsen', 'noun', 'Die Ellipse spart Wörter aus.', 'The ellipsis omits words.', 'C2', 12),
  ('00000000-0000-4000-a000-00006a43208d', 'die Hyperbel', 'المبالغة', 'hyperbole', NULL, 'die', 'die Hyperbeln', 'noun', 'Die Hyperbel übertreibt stark.', 'Hyperbole exaggerates strongly.', 'C2', 13),
  ('00000000-0000-4000-a000-00006a43208d', 'die Poetik', 'الشعرية', 'poetics', NULL, 'die', NULL, 'noun', 'Poetik ist die Theorie der Dichtkunst.', 'Poetics is the theory of poetry.', 'C2', 14),
  ('00000000-0000-4000-a000-00006a43208d', 'der Vers', 'البيت الشعري', 'verse', NULL, 'der', 'die Verse', 'noun', 'Der Vers hat fünf Hebungen.', 'The verse has five stresses.', 'C1', 15),
  ('00000000-0000-4000-a000-00006a43208d', 'der Reim', 'القافية', 'rhyme', NULL, 'der', 'die Reime', 'noun', 'Der Reim verbindet die Zeilen.', 'Rhyme connects the lines.', 'C1', 16),
  ('00000000-0000-4000-a000-00006a43208d', 'das Metrum', 'الوزن', 'meter', NULL, 'das', 'die Metren', 'noun', 'Das Metrum bestimmt den Rhythmus.', 'The meter determines the rhythm.', 'C2', 17),
  ('00000000-0000-4000-a000-00006a43208d', 'die Gattung', 'النوع الأدبي', 'genre', NULL, 'die', 'die Gattungen', 'noun', 'Lyrik ist eine literarische Gattung.', 'Lyric poetry is a literary genre.', 'C1', 18),
  ('00000000-0000-4000-a000-00006a43208d', 'der Sprechakt', 'فعل الكلام', 'speech act', NULL, 'der', 'die Sprechakte', 'noun', 'Der Sprechakt ändert die Wirklichkeit.', 'The speech act changes reality.', 'C2', 19),
  ('00000000-0000-4000-a000-00006a43208d', 'die Implikatur', 'الاستلزام التخاطبي', 'implicature', NULL, 'die', 'die Implikaturen', 'noun', 'Die Implikatur ist die indirekte Bedeutung.', 'Implicature is the indirect meaning.', 'C2', 20),
  ('00000000-0000-4000-a000-00006a43208d', 'der Kontext', 'السياق', 'context', NULL, 'der', 'die Kontexte', 'noun', 'Der Kontext bestimmt die Bedeutung.', 'Context determines meaning.', 'B2', 21),
  ('00000000-0000-4000-a000-00006a43208d', 'die Höflichkeit', 'الأدب / اللباقة', 'politeness', NULL, 'die', NULL, 'noun', 'Höflichkeit ist in Japan sehr wichtig.', 'Politeness is very important in Japan.', 'B2', 22),
  ('00000000-0000-4000-a000-00006a43208d', 'die Konversationsanalyse', 'تحليل المحادثة', 'conversation analysis', NULL, 'die', NULL, 'noun', 'Die Konversationsanalyse untersucht Gespräche.', 'Conversation analysis examines conversations.', 'C2', 23),
  ('00000000-0000-4000-a000-00006a43208d', 'die Bedeutung', 'المعنى', 'meaning', NULL, 'die', 'die Bedeutungen', 'noun', 'Die Bedeutung des Wortes ist klar.', 'The meaning of the word is clear.', 'B2', 24),
  ('00000000-0000-4000-a000-00006a43208d', 'die Synonymie', 'الترادف', 'synonymy', NULL, 'die', NULL, 'noun', 'Synonymie bedeutet Bedeutungsgleichheit.', 'Synonymy means sameness of meaning.', 'C2', 25),
  ('00000000-0000-4000-a000-00006a43208d', 'die Antonymie', 'التضاد', 'antonymy', NULL, 'die', NULL, 'noun', 'Antonymie bezeichnet Gegensätze.', 'Antonymy denotes opposites.', 'C2', 26),
  ('00000000-0000-4000-a000-00006a43208d', 'die Polysemie', 'تعدد المعاني', 'polysemy', NULL, 'die', NULL, 'noun', 'Polysemie hat mehrere Bedeutungen.', 'Polysemy has multiple meanings.', 'C2', 27),
  ('00000000-0000-4000-a000-00006a43208d', 'die Kompositionalität', 'التركيبية', 'compositionality', NULL, 'die', NULL, 'noun', 'Kompositionalität besagt, dass Bedeutung aus Teilen besteht.', 'Compositionality holds that meaning consists of parts.', 'C2', 28),
  ('00000000-0000-4000-a000-00006a43208d', 'die Übersetzung', 'الترجمة', 'translation', NULL, 'die', 'die Übersetzungen', 'noun', 'Die Übersetzung ist gelungen.', 'The translation is successful.', 'B2', 29),
  ('00000000-0000-4000-a000-00006a43208d', 'übersetzen', 'يترجم', 'to translate', NULL, NULL, NULL, 'verb', 'Ich übersetze den Text ins Arabische.', 'I translate the text into Arabic.', 'B1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006a43208d', 'Module Partikeln und Satzgliedstellung (Modal Particles and Word Order Nuances) / الجزيئات النمطية وترتيب الكلمات الدقيق', 'Modal particles (doch, ja, eben, halt, wohl, eigentlich, denn, mal) add nuance and emotion to statements. They are almost impossible to translate directly but are essential for natural German. At C2, their correct placement and usage distinguishes near-native from advanced learners.', '[{"rule":"doch: contradiction or emphasis","note":"Das ist doch nicht wahr! (That''s just not true!)"},{"rule":"ja: shared knowledge reminder","note":"Das ist ja interessant! (That IS interesting! — as we both know)"},{"rule":"denn: in W-questions (casual)","note":"Was machst du denn da? (What are you doing there? — curious, not accusatory)"}]', '[{"german":"Das ist doch eine gute Idee, oder?","arabic":"هذه فكرة جيدة، أليس كذلك؟ (تأكيد)","english":"That IS a good idea, isn''t it?"},{"german":"Komm mal her, bitte.","arabic":"تعال إلى هنا من فضلك. (طلاقة)","english":"Come here, please. (softening)"},{"german":"Was hast du eigentlich studiert?","arabic":"ماذا درست بالمناسبة؟","english":"What did you study, by the way?"}]', '[{"mistake":"Speaking without modal particles (too textbook-like)","correction":"Das ist doch klar! (not just \"Das ist klar\")","explanation":"Without modal particles, German sounds robotic. At C2, particles show naturalness."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006a43208d', 'multiple_choice', 'Welches deutsche Wort bedeutet "linguistics"?', '["die Phonetik","die Morphologie","die Semantik","die Syntax"]', 'die Linguistik', '"linguistics" = "die Linguistik" in German. Article: die ', 1, 1),
  ('00000000-0000-4000-a000-00006a43208d', 'multiple_choice', 'Welches deutsche Wort bedeutet "syntax"?', '["die Phonetik","die Morphologie","die Semantik","die Linguistik"]', 'die Syntax', '"syntax" = "die Syntax" in German. Article: die ', 1, 2),
  ('00000000-0000-4000-a000-00006a43208d', 'multiple_choice', 'Welches deutsche Wort bedeutet "semantics"?', '["die Linguistik","die Semantik","die Morphologie","die Phonetik"]', 'die Semantik', '"semantics" = "die Semantik" in German. Article: die ', 1, 3),
  ('00000000-0000-4000-a000-00006a43208d', 'multiple_choice', 'Welches deutsche Wort bedeutet "morphology"?', '["die Syntax","die Semantik","die Linguistik","die Phonetik"]', 'die Morphologie', '"morphology" = "die Morphologie" in German. Article: die ', 1, 4),
  ('00000000-0000-4000-a000-00006a43208d', 'multiple_choice', 'Welches deutsche Wort bedeutet "phonetics"?', '["die Semantik","die Syntax","die Morphologie","die Linguistik"]', 'die Phonetik', '"phonetics" = "die Phonetik" in German. Article: die ', 1, 5),
  ('00000000-0000-4000-a000-00006a43208d', 'fill_gap', 'Ergänzen Sie den Satz: Ich ___ gern über Level Test. (sprechen)', '["spreche","sprichst","spricht","sprechen"]', 'spreche', 'ich spreche gern = I like to speak. Stem: sprech- + e.', 2, 6),
  ('00000000-0000-4000-a000-00006a43208d', 'translation', 'Übersetzen Sie ins Deutsche: "I am learning about Level Test."', '["Ich lerne über Level Test.","Ich lerne Level Test.","Lerne ich Level Test."]', 'Ich lerne über Level Test.', '"Ich lerne über..." = "I am learning about..."', 2, 7),
  ('00000000-0000-4000-a000-00006a43208d', 'matching', 'Match: Which word pairs are correct?', '["die Linguistik - linguistics, die Syntax - syntax"]', 'Matched correctly', 'Each German word has a unique English equivalent.', 2, 8);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-00006a43208d', 'multiple_choice', 'Was bedeutet "die Linguistik" auf Deutsch?', '["linguistics","to run","beautiful","yesterday"]', 'linguistics', 1, 1),
  ('00000000-0000-4000-a000-00006a43208d', 'multiple_choice', 'Welcher Artikel gehört zu "die Syntax"?', '["der","die","das","den"]', 'die', 1, 2),
  ('00000000-0000-4000-a000-00006a43208d', 'true_false', 'Das Wort "die Semantik" gehört zum Thema Level Test.', '["True","False"]', 'True', 1, 3),
  ('00000000-0000-4000-a000-00006a43208d', 'multiple_choice', 'Welcher Satz verwendet present_tense?', '["Das ist doch eine gute Idee, oder?","Komm mal her, bitte.","Was hast du eigentlich studiert?"]', 'Das ist doch eine gute Idee, oder?', 2, 4),
  ('00000000-0000-4000-a000-00006a43208d', 'true_false', ''Im Deutschen steht das Verb an zweiter Position im Hauptsatz.', '["True","False"]', 'True', 1, 5),
  ('00000000-0000-4000-a000-00006a43208d', 'fill_blank', 'Complete: Ich ___ (morphology) Deutsch.', '["die Morphologie","lernt","lernst","lernen"]', 'lerne', 2, 6),
  ('00000000-0000-4000-a000-00006a43208d', 'multiple_choice', 'Wie lautet das deutsche Wort für "phonetics"?', '["die Phonetik","die Pragmatik","die Sprachwissenschaft","der Stil"]', 'die Phonetik', 1, 7),
  ('00000000-0000-4000-a000-00006a43208d', 'true_false', 'Im Deutschen werden alle Nomen großgeschrieben.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-00006a43208d', 'multiple_choice', 'How do you say "please" in a restaurant in Germany?', '["Bitte","Danke","Tschüss","Hallo"]', 'Bitte', 1, 9),
  ('00000000-0000-4000-a000-00006a43208d', 'fill_blank', 'Wo ___ (to live) du?', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 2, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, french_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-00006a43208d', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', NULL, 'Used in Sprachvariation und Sprachwandel', 'formal', false, 1),
  ('00000000-0000-4000-a000-00006a43208d', 'Guten Tag!', 'Good day!', 'نهارك سعيد!', NULL, 'Used in Sprachvariation und Sprachwandel', 'formal', false, 2),
  ('00000000-0000-4000-a000-00006a43208d', 'Hallo, wie geht es Ihnen?', 'Hello, how are you?', 'مرحباً، كيف حالكم؟', NULL, 'Used in Sprachvariation und Sprachwandel', 'formal', false, 3),
  ('00000000-0000-4000-a000-00006a43208d', 'Schön, Sie kennenzulernen!', 'Nice to meet you!', 'سعيد بلقائكم!', NULL, 'Used in Sprachvariation und Sprachwandel', 'formal', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-00006a43208d', 'die die Linguistik', 'linguistics — علم اللغة', 'noun', 'vocabulary', 1),
  ('00000000-0000-4000-a000-00006a43208d', 'die die Syntax', 'syntax — النحو/تركيب الجملة', 'noun', 'vocabulary', 2),
  ('00000000-0000-4000-a000-00006a43208d', 'die die Semantik', 'semantics — علم الدلالة', 'noun', 'vocabulary', 3),
  ('00000000-0000-4000-a000-00006a43208d', 'die die Morphologie', 'morphology — الصرف', 'noun', 'vocabulary', 4),
  ('00000000-0000-4000-a000-00006a43208d', 'die die Phonetik', 'phonetics — علم الأصوات', 'noun', 'vocabulary', 5),
  ('00000000-0000-4000-a000-00006a43208d', 'die die Pragmatik', 'pragmatics — البراغماتية', 'noun', 'vocabulary', 6),
  ('00000000-0000-4000-a000-00006a43208d', 'die die Sprachwissenschaft', 'linguistics — علم اللغة', 'noun', 'vocabulary', 7),
  ('00000000-0000-4000-a000-00006a43208d', 'der der Stil (die Stile)', 'style — الأسلوب', 'noun', 'vocabulary', 8),
  ('00000000-0000-4000-a000-00006a43208d', 'das das Register (die Register)', 'register — المستوى اللغوي', 'noun', 'vocabulary', 9),
  ('00000000-0000-4000-a000-00006a43208d', 'das das Stilmittel (die Stilmittel)', 'stylistic device — الأداة الأسلوبية', 'noun', 'vocabulary', 10),
  ('00000000-0000-4000-a000-00006a43208d', 'die die Alliteration (die Alliterationen)', 'alliteration — الجناس', 'noun', 'vocabulary', 11),
  ('00000000-0000-4000-a000-00006a43208d', 'die die Ellipse (die Ellipsen)', 'ellipsis — الحذف', 'noun', 'vocabulary', 12),
  ('00000000-0000-4000-a000-00006a43208d', 'die die Hyperbel (die Hyperbeln)', 'hyperbole — المبالغة', 'noun', 'vocabulary', 13),
  ('00000000-0000-4000-a000-00006a43208d', 'die die Poetik', 'poetics — الشعرية', 'noun', 'vocabulary', 14),
  ('00000000-0000-4000-a000-00006a43208d', 'der der Vers (die Verse)', 'verse — البيت الشعري', 'noun', 'vocabulary', 15),
  ('00000000-0000-4000-a000-00006a43208d', 'Das ist doch eine gute Idee, oder?', 'That IS a good idea, isn''t it?', 'Module Partikeln und Satzgliedstellung (Modal Particles and Word Order Nuances)', 'grammar', 16),
  ('00000000-0000-4000-a000-00006a43208d', 'Komm mal her, bitte.', 'Come here, please. (softening)', 'Module Partikeln und Satzgliedstellung (Modal Particles and Word Order Nuances)', 'grammar', 17),
  ('00000000-0000-4000-a000-00006a43208d', 'Was hast du eigentlich studiert?', 'What did you study, by the way?', 'Module Partikeln und Satzgliedstellung (Modal Particles and Word Order Nuances)', 'grammar', 18);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, french_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-00006a43208d', 'C2 Abschlusstest — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', NULL, 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, french_translation, duration_seconds, speaker_count, scenario) values
  ('00000000-0000-4000-a000-00006a43208d', 'C2 Abschlusstest — Hörverständnis', '[Lehrerin]: Guten Morgen! Heute lernen wir Begrüßungen.

[Lehrerin]: Wiederholen Sie: Guten Morgen!

[Student]: Guten Morgen!

[Lehrerin]: Sehr gut! Und wie sagt man "Goodbye"?

[Student]: Auf Wiedersehen!

[Lehrerin]: Perfekt! Bis morgen!', '[Lehrerin]: Good morning! Today we learn greetings.

[Lehrerin]: Repeat: Good morning!

[Student]: Good morning!

[Lehrerin]: Very good! And how do you say goodbye?

[Student]: Goodbye!

[Lehrerin]: Perfect! See you tomorrow!', '[Lehrerin]: صباح الخير! اليوم نتعلم التحيات.

[Lehrerin]: كرروا: صباح الخير!

[Student]: صباح الخير!

[Lehrerin]: جيد جداً! وكيف نقول "وداعاً"؟

[Student]: إلى اللقاء!

[Lehrerin]: ممتاز! إلى الغد!', '[Lehrerin]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: ', 72, 2, 'Sprachvariation und Sprachwandel');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-00006a43208d', '🔊 Sprechen: C2 Abschlusstest', 'Presentation: Prepare a 2-minute presentation on "Level Test im deutschsprachigen Raum". Use discourse markers like "zunächst", "darüber hinaus", "abschließend". Your AI partner will ask critical questions afterwards.', 'Level Test', ARRAY['Use discourse markers (also, jedoch, außerdem)','React naturally: "Ach so!", "Echt?", "Das stimmt!"','Paraphrase when you don''t know a word']::text[], ARRAY['die Linguistik','die Syntax','die Semantik','die Morphologie','die Phonetik','die Pragmatik','die Sprachwissenschaft','der Stil']::text[], 120, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-00006a43208d', '✏️ Schreiben: C2 Abschlusstest', 'Write a discursive essay (300-350 words) analyzing "Level Test in modern German society". Present both advantages and disadvantages. Use complex sentence structures (Nebensätze mit "obwohl", "trotzdem", "während") and formal register. Conclude with your own position.', ARRAY['Use paragraph breaks for structure','Connect ideas with "außerdem", "deshalb", "jedoch"','Check your verb position in Nebensätze']::text[], ARRAY['die Linguistik','die Syntax','die Semantik','die Morphologie','die Phonetik','die Pragmatik','die Sprachwissenschaft','der Stil']::text[], ARRAY['Sentence structure','Vocabulary usage']::text[], 250, 350, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00006a43208d', 'C2 Abschlusstest — Roleplay', 'Level Test', 'Student', 'Teacher', 'Practice conversation about Level Test', 'Hallo! Lass uns über dieses Thema sprechen.', 'advanced', 1, ARRAY['die Linguistik','die Syntax','die Semantik','die Morphologie','die Phonetik','die Pragmatik','die Sprachwissenschaft','der Stil']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00006a43208d', 'C2 Abschlusstest — Advanced Roleplay', 'Level Test', 'Customer', 'Assistant', 'Extended conversation about Level Test', 'Guten Tag! Wie kann ich Ihnen helfen?', 'advanced', 2, ARRAY['die Linguistik','die Syntax','die Semantik','die Morphologie','die Phonetik','die Pragmatik','die Sprachwissenschaft','der Stil']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-00006a43208d', 'C2 Abschlusstest — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "C2 Abschlusstest".', 'Creative practice for Level Test', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-00006a43208d', '📚 Hausaufgabe: C2 Abschlusstest', 'Complete these tasks to reinforce "C2 Abschlusstest".', 'mixed', '[{"description":"Create 10 flashcards from this lesson''s vocabulary — write German on one side, Arabic on the other. Test yourself 3 times."},{"description":"Write 6 sentences about Level Test: 2 statements, 2 questions, 2 negations — all using present_tense."},{"description":"Record yourself reading the dialogue aloud. Listen to the recording and note 3 things to improve."},{"description":"Find 3 real German websites, videos, or articles about Level Test. Note 5 new words you discovered."}]', 50, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-00006a43208d', '🎯 Excellent progress! This lesson covered Level Test (66 vocabulary items) and present_tense. You developed reading, listening, speaking, and writing skills in the context of linguistics. Focus on your common mistakes area for maximum improvement.', '["66 vocabulary items about Level Test","present_tense — grammar explanation and practice","Reading comprehension: text about Level Test","Listening comprehension: dialogue about Level Test","Speaking practice: roleplay/discussion about Level Test","Writing task: text about Level Test"]', '[{"title":"C2 Abschlusstest Review","summary":"present_tense — the main grammar focus. Focus on nuanced usage, exceptions, and stylistic variation."}]', ARRAY['die Linguistik (linguistics)','die Syntax (syntax)','die Semantik (semantics)','die Morphologie (morphology)','die Phonetik (phonetics)']::text[], ARRAY['Don''t translate from Arabic word-for-word — German has different sentence structure','Learn every noun with its article: NEVER learn "Tisch" alone, always "der Tisch"','Pay attention to Konjunktiv I/II distinction']::text[], ARRAY['Practice 15-20 minutes daily — consistency beats intensity','Speak out loud: German pronunciation needs muscle memory','Use the new vocabulary within 24 hours or you''ll forget it','Watch German YouTube videos about Level Test for authentic input']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006a43208d', 'translation', 'Translate to German: "I use the word "linguistics" in a sentence about Level Test."', '[]', 'Linguistik untersucht die menschliche Sprache.', 'Use die  "die Linguistik" with the correct present_tense form.', 1, 40);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006a43208d', 'translation', 'Translate to German: "I use the word "syntax" in a sentence about Level Test."', '[]', 'Die Syntax beschreibt die Satzstruktur.', 'Use die  "die Syntax" with the correct present_tense form.', 1, 41);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006a43208d', 'translation', 'Translate to German: "I use the word "semantics" in a sentence about Level Test."', '[]', 'Die Semantik befasst sich mit Bedeutung.', 'Use die  "die Semantik" with the correct present_tense form.', 1, 42);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006a43208d', 'Culture: 🇩🇪 Deutsche Kultur: Level Test', 'The German approach to Level Test reflects deeper cultural values: Ordnung (order), Gründlichkeit (thoroughness), and Sachlichkeit (objectivity). Debates about Level Test in German media are characterised by factual argumentation. Understanding these discourse norms is essential for C1/C2 learners who want to participate in academic or professional discussions.

لدى Level Test في ألمانيا فروق ثقافية دقيقة تختلف عن البلدان العربية. الألمان يفصلون بين حياتهم الخاصة والمهنية بشكل صارم.', '["Tip: Always use \"Sie\" (formal) with strangers and colleagues","Tip: Germans appreciate punctuality — arrive 5 minutes early","Tip: Direct feedback is a sign of respect, not criticism","Tip: Prepare factual arguments, not emotional appeals"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006a43208d', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Incorrect preposition usage after verbs","correction":"Learn which preposition each verb requires (sich freuen auf, warten auf, denken an)","explanation":"Arabic and German have different sentence structures. Arabic is VSO, German is SVO with verb in position 2."},{"mistake":"Incorrect use of Konjunktiv II in polite requests","correction":"Ich hätte gern... (I would like...)","explanation":"Konjunktiv II is often replaced with würde + infinitive in speech"}]', 30);

end $$;
