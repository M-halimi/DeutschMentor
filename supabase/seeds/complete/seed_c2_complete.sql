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
  values ('00000000-0000-4000-a000-00006a40dab0', '00000000-0000-4000-a000-000039d176bf', 'Wortbildung: Komposition, Derivation, Konversion', 'Master German word formation mechanisms.', 'Word Formation', 'vocabulary', '["Understand and use vocabulary related to Word Formation","Apply present_tense correctly","Read and comprehend a text about Word Formation","Listen and understand a dialogue about Word Formation","Speak about Word Formation in simple sentences","Write a short text about Word Formation"]', 60, 1, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-00006a40dab0', 'die Linguistik', 'علم اللغة', 'linguistics', 'die', NULL, 'noun', 'Linguistik untersucht die menschliche Sprache.', 'Linguistics studies human language.', 'C1', 1),
  ('00000000-0000-4000-a000-00006a40dab0', 'die Syntax', 'النحو/تركيب الجملة', 'syntax', 'die', NULL, 'noun', 'Die Syntax beschreibt die Satzstruktur.', 'Syntax describes sentence structure.', 'C1', 2),
  ('00000000-0000-4000-a000-00006a40dab0', 'die Semantik', 'علم الدلالة', 'semantics', 'die', NULL, 'noun', 'Die Semantik befasst sich mit Bedeutung.', 'Semantics deals with meaning.', 'C1', 3),
  ('00000000-0000-4000-a000-00006a40dab0', 'die Morphologie', 'الصرف', 'morphology', 'die', NULL, 'noun', 'Die Morphologie untersucht Wortformen.', 'Morphology examines word forms.', 'C1', 4),
  ('00000000-0000-4000-a000-00006a40dab0', 'die Phonetik', 'علم الأصوات', 'phonetics', 'die', NULL, 'noun', 'Die Phonetik untersucht Sprachlaute.', 'Phonetics studies speech sounds.', 'C1', 5),
  ('00000000-0000-4000-a000-00006a40dab0', 'die Pragmatik', 'البراغماتية', 'pragmatics', 'die', NULL, 'noun', 'Pragmatik untersucht Sprachgebrauch.', 'Pragmatics studies language use.', 'C2', 6),
  ('00000000-0000-4000-a000-00006a40dab0', 'die Sprachwissenschaft', 'علم اللغة', 'linguistics', 'die', NULL, 'noun', 'Die germanistische Sprachwissenschaft ist vielfältig.', 'German linguistics is diverse.', 'C1', 7),
  ('00000000-0000-4000-a000-00006a40dab0', 'der Stil', 'الأسلوب', 'style', 'der', 'die Stile', 'noun', 'Der Stil des Textes ist formell.', 'The style of the text is formal.', 'B2', 8),
  ('00000000-0000-4000-a000-00006a40dab0', 'das Register', 'المستوى اللغوي', 'register', 'das', 'die Register', 'noun', 'Das Register passt zur Situation.', 'The register fits the situation.', 'C1', 9),
  ('00000000-0000-4000-a000-00006a40dab0', 'das Stilmittel', 'الأداة الأسلوبية', 'stylistic device', 'das', 'die Stilmittel', 'noun', 'Das Stilmittel unterstreicht die Aussage.', 'The stylistic device emphasizes the statement.', 'C1', 10),
  ('00000000-0000-4000-a000-00006a40dab0', 'die Alliteration', 'الجناس', 'alliteration', 'die', 'die Alliterationen', 'noun', 'Die Alliteration wiederholt den Anlaut.', 'Alliteration repeats the initial sound.', 'C2', 11),
  ('00000000-0000-4000-a000-00006a40dab0', 'die Ellipse', 'الحذف', 'ellipsis', 'die', 'die Ellipsen', 'noun', 'Die Ellipse spart Wörter aus.', 'The ellipsis omits words.', 'C2', 12),
  ('00000000-0000-4000-a000-00006a40dab0', 'die Hyperbel', 'المبالغة', 'hyperbole', 'die', 'die Hyperbeln', 'noun', 'Die Hyperbel übertreibt stark.', 'Hyperbole exaggerates strongly.', 'C2', 13),
  ('00000000-0000-4000-a000-00006a40dab0', 'die Poetik', 'الشعرية', 'poetics', 'die', NULL, 'noun', 'Poetik ist die Theorie der Dichtkunst.', 'Poetics is the theory of poetry.', 'C2', 14),
  ('00000000-0000-4000-a000-00006a40dab0', 'der Vers', 'البيت الشعري', 'verse', 'der', 'die Verse', 'noun', 'Der Vers hat fünf Hebungen.', 'The verse has five stresses.', 'C1', 15),
  ('00000000-0000-4000-a000-00006a40dab0', 'der Reim', 'القافية', 'rhyme', 'der', 'die Reime', 'noun', 'Der Reim verbindet die Zeilen.', 'Rhyme connects the lines.', 'C1', 16),
  ('00000000-0000-4000-a000-00006a40dab0', 'das Metrum', 'الوزن', 'meter', 'das', 'die Metren', 'noun', 'Das Metrum bestimmt den Rhythmus.', 'The meter determines the rhythm.', 'C2', 17),
  ('00000000-0000-4000-a000-00006a40dab0', 'die Gattung', 'النوع الأدبي', 'genre', 'die', 'die Gattungen', 'noun', 'Lyrik ist eine literarische Gattung.', 'Lyric poetry is a literary genre.', 'C1', 18),
  ('00000000-0000-4000-a000-00006a40dab0', 'der Sprechakt', 'فعل الكلام', 'speech act', 'der', 'die Sprechakte', 'noun', 'Der Sprechakt ändert die Wirklichkeit.', 'The speech act changes reality.', 'C2', 19),
  ('00000000-0000-4000-a000-00006a40dab0', 'die Implikatur', 'الاستلزام التخاطبي', 'implicature', 'die', 'die Implikaturen', 'noun', 'Die Implikatur ist die indirekte Bedeutung.', 'Implicature is the indirect meaning.', 'C2', 20),
  ('00000000-0000-4000-a000-00006a40dab0', 'der Kontext', 'السياق', 'context', 'der', 'die Kontexte', 'noun', 'Der Kontext bestimmt die Bedeutung.', 'Context determines meaning.', 'B2', 21),
  ('00000000-0000-4000-a000-00006a40dab0', 'die Höflichkeit', 'الأدب / اللباقة', 'politeness', 'die', NULL, 'noun', 'Höflichkeit ist in Japan sehr wichtig.', 'Politeness is very important in Japan.', 'B2', 22),
  ('00000000-0000-4000-a000-00006a40dab0', 'die Konversationsanalyse', 'تحليل المحادثة', 'conversation analysis', 'die', NULL, 'noun', 'Die Konversationsanalyse untersucht Gespräche.', 'Conversation analysis examines conversations.', 'C2', 23),
  ('00000000-0000-4000-a000-00006a40dab0', 'die Bedeutung', 'المعنى', 'meaning', 'die', 'die Bedeutungen', 'noun', 'Die Bedeutung des Wortes ist klar.', 'The meaning of the word is clear.', 'B2', 24),
  ('00000000-0000-4000-a000-00006a40dab0', 'die Synonymie', 'الترادف', 'synonymy', 'die', NULL, 'noun', 'Synonymie bedeutet Bedeutungsgleichheit.', 'Synonymy means sameness of meaning.', 'C2', 25),
  ('00000000-0000-4000-a000-00006a40dab0', 'die Antonymie', 'التضاد', 'antonymy', 'die', NULL, 'noun', 'Antonymie bezeichnet Gegensätze.', 'Antonymy denotes opposites.', 'C2', 26),
  ('00000000-0000-4000-a000-00006a40dab0', 'die Polysemie', 'تعدد المعاني', 'polysemy', 'die', NULL, 'noun', 'Polysemie hat mehrere Bedeutungen.', 'Polysemy has multiple meanings.', 'C2', 27),
  ('00000000-0000-4000-a000-00006a40dab0', 'die Kompositionalität', 'التركيبية', 'compositionality', 'die', NULL, 'noun', 'Kompositionalität besagt, dass Bedeutung aus Teilen besteht.', 'Compositionality holds that meaning consists of parts.', 'C2', 28),
  ('00000000-0000-4000-a000-00006a40dab0', 'die Übersetzung', 'الترجمة', 'translation', 'die', 'die Übersetzungen', 'noun', 'Die Übersetzung ist gelungen.', 'The translation is successful.', 'B2', 29),
  ('00000000-0000-4000-a000-00006a40dab0', 'übersetzen', 'يترجم', 'to translate', NULL, NULL, 'verb', 'Ich übersetze den Text ins Arabische.', 'I translate the text into Arabic.', 'B1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006a40dab0', 'Präsens der regelmäßigen Verben (Present Tense) / المضارع للأفعال المنتظمة', 'In German, regular verbs follow a consistent pattern. The infinitive ends in -en. Remove the -en and add the personal endings: ich -e, du -st, er/sie/es -t, wir -en, ihr -t, sie/Sie -en. For most Arabic speakers, this is easier than Arabic verb conjugation because German has fewer forms.', '[{"rule":"ich: stem + e","note":"Ich lerne, ich wohne, ich arbeite"},{"rule":"du: stem + st","note":"Du lernst, du wohnst, du arbeitest"},{"rule":"er/sie/es: stem + t","note":"Er lernt, sie wohnt, es arbeitet"},{"rule":"wir: stem + en","note":"Wir lernen, wir wohnen, wir arbeiten"},{"rule":"ihr: stem + t","note":"Ihr lernt, ihr wohnt, ihr arbeitet"},{"rule":"sie/Sie: stem + en","note":"Sie lernen, Sie wohnen"}]', '[{"german":"Ich lerne Deutsch.","arabic":"أنا أتعلم الألمانية.","english":"I am learning German."},{"german":"Du wohnst in Berlin.","arabic":"أنت تسكن في برلين.","english":"You live in Berlin."},{"german":"Er arbeitet bei Siemens.","arabic":"هو يعمل في سيمنز.","english":"He works at Siemens."}]', '[{"mistake":"Ich lernen Deutsch","correction":"Ich lerne Deutsch","explanation":"After \"ich\" we use the stem + e, not the infinitive."},{"mistake":"Er lerne Deutsch","correction":"Er lernt Deutsch","explanation":"After \"er/sie/es\" we add -t, not -e."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006a40dab0', 'multiple_choice', 'What does "die Linguistik" mean?', '["The","A","This","That"]', 'The', 'This is a basic vocabulary item.', 1, 1),
  ('00000000-0000-4000-a000-00006a40dab0', 'fill_gap', 'Complete with the correct form.', '["Option 1","Option 2","Option 3"]', 'Option 1', 'Practice grammar in context.', 1, 2),
  ('00000000-0000-4000-a000-00006a40dab0', 'translation', 'Translate: "I learn German."', '["Ich lerne Deutsch.","Ich lerne Englisch.","Ich lerne Spanisch."]', 'Ich lerne Deutsch.', 'Ich = I, lerne = learn/learning, Deutsch = German.', 2, 3),
  ('00000000-0000-4000-a000-00006a40dab0', 'sentence_order', 'Order the sentence.', '[]', 'Ich lerne Deutsch.', 'Subject + verb + object in German.', 2, 4),
  ('00000000-0000-4000-a000-00006a40dab0', 'matching', 'Match the words with their meanings.', '["Match pairs correctly"]', 'Correct pairs', 'Test your vocabulary knowledge.', 2, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-00006a40dab0', 'multiple_choice', 'What is the main topic of this lesson?', '["Word Formation","Sports","Music","Travel"]', 'Word Formation', 1, 1),
  ('00000000-0000-4000-a000-00006a40dab0', 'true_false', 'This lesson teaches vocabulary about Word Formation.', '["True","False"]', 'True', 1, 2),
  ('00000000-0000-4000-a000-00006a40dab0', 'true_false', 'German word order is always the same as English.', '["True","False"]', 'False', 1, 3),
  ('00000000-0000-4000-a000-00006a40dab0', 'multiple_choice', 'How do you say "please" in German?', '["Danke","Bitte","Tschüss","Hallo"]', 'Bitte', 1, 4),
  ('00000000-0000-4000-a000-00006a40dab0', 'multiple_choice', 'Which article is feminine?', '["der","die","das","den"]', 'die', 1, 5),
  ('00000000-0000-4000-a000-00006a40dab0', 'fill_blank', 'Ich ___ (to be) Student.', '["bin","bist","ist","sind"]', 'bin', 1, 6),
  ('00000000-0000-4000-a000-00006a40dab0', 'multiple_choice', 'What is the correct word order?', '["Ich lerne Deutsch","Ich Deutsch lerne","Lerne ich Deutsch","Deutsch ich lerne"]', 'Ich lerne Deutsch', 1, 7),
  ('00000000-0000-4000-a000-00006a40dab0', 'true_false', 'All German nouns are capitalized.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-00006a40dab0', 'multiple_choice', 'How do you say "thank you" in German?', '["Bitte","Danke","Tschüss","Hallo"]', 'Danke', 1, 9),
  ('00000000-0000-4000-a000-00006a40dab0', 'fill_blank', 'Wo ___ du? (to live)', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 1, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-00006a40dab0', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Linguistik und Stilistik', 'formal', false, 1),
  ('00000000-0000-4000-a000-00006a40dab0', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Linguistik und Stilistik', 'informal', false, 2),
  ('00000000-0000-4000-a000-00006a40dab0', 'Bitte!', 'Please!', 'من فضلك!', 'Used in Linguistik und Stilistik', 'neutral', false, 3),
  ('00000000-0000-4000-a000-00006a40dab0', 'Danke!', 'Thanks!', 'شكراً!', 'Used in Linguistik und Stilistik', 'neutral', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-00006a40dab0', 'Hallo', 'Hello', 'Greeting', 'expression', 1),
  ('00000000-0000-4000-a000-00006a40dab0', 'Danke', 'Thanks', 'Politeness', 'expression', 2),
  ('00000000-0000-4000-a000-00006a40dab0', 'Bitte', 'Please', 'Politeness', 'expression', 3),
  ('00000000-0000-4000-a000-00006a40dab0', 'Tschüss', 'Bye', 'Farewell', 'expression', 4);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-00006a40dab0', 'Wortbildung: Komposition, Derivation, Konversion — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, duration_seconds, speaker_count, scenario) values
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

[Lehrerin]: ممتاز! إلى الغد!', 72, 2, 'Linguistik und Stilistik');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-00006a40dab0', 'Speaking: Wortbildung: Komposition, Derivation, Konversion', 'Practice talking about Word Formation. Answer questions and have a simple conversation.', 'Word Formation', ARRAY['Use full sentences','Speak clearly','Don''t worry about mistakes']::text[], ARRAY['die Linguistik','die Syntax','die Semantik','die Morphologie','die Phonetik']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-00006a40dab0', 'Writing: Wortbildung: Komposition, Derivation, Konversion', 'Write a short text about Word Formation. Use at least 5 vocabulary words from this lesson.', ARRAY['Start with a greeting','Use the vocabulary from this lesson','Check your grammar']::text[], ARRAY['die Linguistik','die Syntax','die Semantik']::text[], '["Sentence structure","Vocabulary usage"]', 50, 150, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00006a40dab0', 'Wortbildung: Komposition, Derivation, Konversion — Roleplay', 'Word Formation', 'Student', 'Teacher', 'Practice conversation about Word Formation', 'Hallo! Lass uns über dieses Thema sprechen.', 'advanced', 1, ARRAY['die Linguistik','die Syntax','die Semantik','die Morphologie','die Phonetik','die Pragmatik','die Sprachwissenschaft','der Stil']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00006a40dab0', 'Wortbildung: Komposition, Derivation, Konversion — Advanced Roleplay', 'Word Formation', 'Customer', 'Assistant', 'Extended conversation about Word Formation', 'Guten Tag! Wie kann ich Ihnen helfen?', 'advanced', 2, ARRAY['die Linguistik','die Syntax','die Semantik','die Morphologie','die Phonetik','die Pragmatik','die Sprachwissenschaft','der Stil']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-00006a40dab0', 'Wortbildung: Komposition, Derivation, Konversion — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Wortbildung: Komposition, Derivation, Konversion".', 'Creative practice for Word Formation', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-00006a40dab0', 'Homework: Wortbildung: Komposition, Derivation, Konversion', 'Complete these tasks to reinforce "Wortbildung: Komposition, Derivation, Konversion".', 'mixed', '[{"description":"Review all vocabulary from this lesson"},{"description":"Write 5 sentences using the grammar structure"},{"description":"Practice the dialogue aloud"}]', 35, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-00006a40dab0', 'In this lesson you learned about Word Formation. You practiced vocabulary related to linguistics and grammar structure present_tense.', '["Mastered vocabulary about Word Formation","Applied present_tense correctly","Read and understood a text about Word Formation","Practiced speaking about Word Formation"]', '[{"title":"Wortbildung: Komposition, Derivation, Konversion Review","summary":"present_tense — the main grammar focus of this lesson."}]', ARRAY['Word Formation core vocabulary','linguistics key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)','Verb is always in second position']::text[], ARRAY['Practice 15-20 minutes daily','Use new vocabulary in real sentences','Speak out loud to improve pronunciation']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006a40dab0', 'translation', 'Translate to German: "This is a translation exercise."', '[]', 'Das ist eine Übersetzungsübung.', 'Use "das ist" for "this is"', 1, 40);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006a40dab0', 'Culture: Word Formation in German-Speaking Countries', 'Learn how Word Formation is approached in German culture.

تعلم كيف يتم التعامل مع Word Formation في الثقافة الألمانية.', '["Tip: Be direct and polite","Tip: Use formal language with strangers","Tip: Respect punctuality"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006a40dab0', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Common error for Arabic speakers","correction":"Correct version","explanation":"Explanation of the error"}]', 30);

  -- Lesson 2: Stilfiguren: Metapher, Metonymie, Ironie (L-C2-01-02)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-00006a40dab1', '00000000-0000-4000-a000-000039d176bf', 'Stilfiguren: Metapher, Metonymie, Ironie', 'Analyze and use rhetorical tropes.', 'Stylistic Figures', 'vocabulary', '["Understand and use vocabulary related to Stylistic Figures","Apply present_tense correctly","Read and comprehend a text about Stylistic Figures","Listen and understand a dialogue about Stylistic Figures","Speak about Stylistic Figures in simple sentences","Write a short text about Stylistic Figures"]', 60, 2, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-00006a40dab1', 'der Stil', 'الأسلوب', 'style', 'der', 'die Stile', 'noun', 'Der Stil des Textes ist formell.', 'The style of the text is formal.', 'B2', 1),
  ('00000000-0000-4000-a000-00006a40dab1', 'das Register', 'المستوى اللغوي', 'register', 'das', 'die Register', 'noun', 'Das Register passt zur Situation.', 'The register fits the situation.', 'C1', 2),
  ('00000000-0000-4000-a000-00006a40dab1', 'das Stilmittel', 'الأداة الأسلوبية', 'stylistic device', 'das', 'die Stilmittel', 'noun', 'Das Stilmittel unterstreicht die Aussage.', 'The stylistic device emphasizes the statement.', 'C1', 3),
  ('00000000-0000-4000-a000-00006a40dab1', 'die Alliteration', 'الجناس', 'alliteration', 'die', 'die Alliterationen', 'noun', 'Die Alliteration wiederholt den Anlaut.', 'Alliteration repeats the initial sound.', 'C2', 4),
  ('00000000-0000-4000-a000-00006a40dab1', 'die Ellipse', 'الحذف', 'ellipsis', 'die', 'die Ellipsen', 'noun', 'Die Ellipse spart Wörter aus.', 'The ellipsis omits words.', 'C2', 5),
  ('00000000-0000-4000-a000-00006a40dab1', 'die Hyperbel', 'المبالغة', 'hyperbole', 'die', 'die Hyperbeln', 'noun', 'Die Hyperbel übertreibt stark.', 'Hyperbole exaggerates strongly.', 'C2', 6),
  ('00000000-0000-4000-a000-00006a40dab1', 'die Poetik', 'الشعرية', 'poetics', 'die', NULL, 'noun', 'Poetik ist die Theorie der Dichtkunst.', 'Poetics is the theory of poetry.', 'C2', 7),
  ('00000000-0000-4000-a000-00006a40dab1', 'der Vers', 'البيت الشعري', 'verse', 'der', 'die Verse', 'noun', 'Der Vers hat fünf Hebungen.', 'The verse has five stresses.', 'C1', 8),
  ('00000000-0000-4000-a000-00006a40dab1', 'der Reim', 'القافية', 'rhyme', 'der', 'die Reime', 'noun', 'Der Reim verbindet die Zeilen.', 'Rhyme connects the lines.', 'C1', 9),
  ('00000000-0000-4000-a000-00006a40dab1', 'das Metrum', 'الوزن', 'meter', 'das', 'die Metren', 'noun', 'Das Metrum bestimmt den Rhythmus.', 'The meter determines the rhythm.', 'C2', 10),
  ('00000000-0000-4000-a000-00006a40dab1', 'die Gattung', 'النوع الأدبي', 'genre', 'die', 'die Gattungen', 'noun', 'Lyrik ist eine literarische Gattung.', 'Lyric poetry is a literary genre.', 'C1', 11),
  ('00000000-0000-4000-a000-00006a40dab1', 'die Pragmatik', 'البراغماتية', 'pragmatics', 'die', NULL, 'noun', 'Pragmatik untersucht Sprache im Kontext.', 'Pragmatics studies language in context.', 'C2', 12),
  ('00000000-0000-4000-a000-00006a40dab1', 'der Sprechakt', 'فعل الكلام', 'speech act', 'der', 'die Sprechakte', 'noun', 'Der Sprechakt ändert die Wirklichkeit.', 'The speech act changes reality.', 'C2', 13),
  ('00000000-0000-4000-a000-00006a40dab1', 'die Implikatur', 'الاستلزام التخاطبي', 'implicature', 'die', 'die Implikaturen', 'noun', 'Die Implikatur ist die indirekte Bedeutung.', 'Implicature is the indirect meaning.', 'C2', 14),
  ('00000000-0000-4000-a000-00006a40dab1', 'der Kontext', 'السياق', 'context', 'der', 'die Kontexte', 'noun', 'Der Kontext bestimmt die Bedeutung.', 'Context determines meaning.', 'B2', 15),
  ('00000000-0000-4000-a000-00006a40dab1', 'die Höflichkeit', 'الأدب / اللباقة', 'politeness', 'die', NULL, 'noun', 'Höflichkeit ist in Japan sehr wichtig.', 'Politeness is very important in Japan.', 'B2', 16),
  ('00000000-0000-4000-a000-00006a40dab1', 'die Konversationsanalyse', 'تحليل المحادثة', 'conversation analysis', 'die', NULL, 'noun', 'Die Konversationsanalyse untersucht Gespräche.', 'Conversation analysis examines conversations.', 'C2', 17),
  ('00000000-0000-4000-a000-00006a40dab1', 'die Bedeutung', 'المعنى', 'meaning', 'die', 'die Bedeutungen', 'noun', 'Die Bedeutung des Wortes ist klar.', 'The meaning of the word is clear.', 'B2', 18),
  ('00000000-0000-4000-a000-00006a40dab1', 'die Synonymie', 'الترادف', 'synonymy', 'die', NULL, 'noun', 'Synonymie bedeutet Bedeutungsgleichheit.', 'Synonymy means sameness of meaning.', 'C2', 19),
  ('00000000-0000-4000-a000-00006a40dab1', 'die Antonymie', 'التضاد', 'antonymy', 'die', NULL, 'noun', 'Antonymie bezeichnet Gegensätze.', 'Antonymy denotes opposites.', 'C2', 20),
  ('00000000-0000-4000-a000-00006a40dab1', 'die Polysemie', 'تعدد المعاني', 'polysemy', 'die', NULL, 'noun', 'Polysemie hat mehrere Bedeutungen.', 'Polysemy has multiple meanings.', 'C2', 21),
  ('00000000-0000-4000-a000-00006a40dab1', 'die Kompositionalität', 'التركيبية', 'compositionality', 'die', NULL, 'noun', 'Kompositionalität besagt, dass Bedeutung aus Teilen besteht.', 'Compositionality holds that meaning consists of parts.', 'C2', 22),
  ('00000000-0000-4000-a000-00006a40dab1', 'die Übersetzung', 'الترجمة', 'translation', 'die', 'die Übersetzungen', 'noun', 'Die Übersetzung ist gelungen.', 'The translation is successful.', 'B2', 23),
  ('00000000-0000-4000-a000-00006a40dab1', 'übersetzen', 'يترجم', 'to translate', NULL, NULL, 'verb', 'Ich übersetze den Text ins Arabische.', 'I translate the text into Arabic.', 'B1', 24),
  ('00000000-0000-4000-a000-00006a40dab1', 'der Dolmetscher', 'المترجم الفوري', 'interpreter', 'der', 'die Dolmetscher', 'noun', 'Der Dolmetscher übersetzt mündlich.', 'The interpreter translates orally.', 'B2', 25),
  ('00000000-0000-4000-a000-00006a40dab1', 'die Muttersprache', 'اللغة الأم', 'native language', 'die', 'die Muttersprachen', 'noun', 'Meine Muttersprache ist Arabisch.', 'My native language is Arabic.', 'B1', 26),
  ('00000000-0000-4000-a000-00006a40dab1', 'falscher Freund', 'الصديق المزيف', 'false friend', NULL, NULL, 'noun', 'Ein falscher Freund sieht ähnlich aus, bedeutet aber etwas anderes.', 'A false friend looks similar but means something different.', 'C1', 27),
  ('00000000-0000-4000-a000-00006a40dab1', 'die Sprachmittlung', 'الوساطة اللغوية', 'language mediation', 'die', NULL, 'noun', 'Sprachmittlung vermittelt zwischen Kulturen.', 'Language mediation bridges between cultures.', 'C2', 28),
  ('00000000-0000-4000-a000-00006a40dab1', 'die Äquivalenz', 'التكافؤ', 'equivalence', 'die', NULL, 'noun', 'Äquivalenz in der Übersetzung ist ein Ideal.', 'Equivalence in translation is an ideal.', 'C2', 29),
  ('00000000-0000-4000-a000-00006a40dab1', 'der Dialekt', 'اللهجة', 'dialect', 'der', 'die Dialekte', 'noun', 'Der bayerische Dialekt ist schwer zu verstehen.', 'The Bavarian dialect is hard to understand.', 'B2', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006a40dab1', 'Präsens der regelmäßigen Verben (Present Tense) / المضارع للأفعال المنتظمة', 'In German, regular verbs follow a consistent pattern. The infinitive ends in -en. Remove the -en and add the personal endings: ich -e, du -st, er/sie/es -t, wir -en, ihr -t, sie/Sie -en. For most Arabic speakers, this is easier than Arabic verb conjugation because German has fewer forms.', '[{"rule":"ich: stem + e","note":"Ich lerne, ich wohne, ich arbeite"},{"rule":"du: stem + st","note":"Du lernst, du wohnst, du arbeitest"},{"rule":"er/sie/es: stem + t","note":"Er lernt, sie wohnt, es arbeitet"},{"rule":"wir: stem + en","note":"Wir lernen, wir wohnen, wir arbeiten"},{"rule":"ihr: stem + t","note":"Ihr lernt, ihr wohnt, ihr arbeitet"},{"rule":"sie/Sie: stem + en","note":"Sie lernen, Sie wohnen"}]', '[{"german":"Ich lerne Deutsch.","arabic":"أنا أتعلم الألمانية.","english":"I am learning German."},{"german":"Du wohnst in Berlin.","arabic":"أنت تسكن في برلين.","english":"You live in Berlin."},{"german":"Er arbeitet bei Siemens.","arabic":"هو يعمل في سيمنز.","english":"He works at Siemens."}]', '[{"mistake":"Ich lernen Deutsch","correction":"Ich lerne Deutsch","explanation":"After \"ich\" we use the stem + e, not the infinitive."},{"mistake":"Er lerne Deutsch","correction":"Er lernt Deutsch","explanation":"After \"er/sie/es\" we add -t, not -e."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006a40dab1', 'multiple_choice', 'What does "der Stil" mean?', '["The","A","This","That"]', 'The', 'This is a basic vocabulary item.', 1, 1),
  ('00000000-0000-4000-a000-00006a40dab1', 'fill_gap', 'Complete with the correct form.', '["Option 1","Option 2","Option 3"]', 'Option 1', 'Practice grammar in context.', 1, 2),
  ('00000000-0000-4000-a000-00006a40dab1', 'translation', 'Translate: "I learn German."', '["Ich lerne Deutsch.","Ich lerne Englisch.","Ich lerne Spanisch."]', 'Ich lerne Deutsch.', 'Ich = I, lerne = learn/learning, Deutsch = German.', 2, 3),
  ('00000000-0000-4000-a000-00006a40dab1', 'sentence_order', 'Order the sentence.', '[]', 'Ich lerne Deutsch.', 'Subject + verb + object in German.', 2, 4),
  ('00000000-0000-4000-a000-00006a40dab1', 'matching', 'Match the words with their meanings.', '["Match pairs correctly"]', 'Correct pairs', 'Test your vocabulary knowledge.', 2, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-00006a40dab1', 'multiple_choice', 'What is the main topic of this lesson?', '["Stylistic Figures","Sports","Music","Travel"]', 'Stylistic Figures', 1, 1),
  ('00000000-0000-4000-a000-00006a40dab1', 'true_false', 'This lesson teaches vocabulary about Stylistic Figures.', '["True","False"]', 'True', 1, 2),
  ('00000000-0000-4000-a000-00006a40dab1', 'true_false', 'German word order is always the same as English.', '["True","False"]', 'False', 1, 3),
  ('00000000-0000-4000-a000-00006a40dab1', 'multiple_choice', 'How do you say "please" in German?', '["Danke","Bitte","Tschüss","Hallo"]', 'Bitte', 1, 4),
  ('00000000-0000-4000-a000-00006a40dab1', 'multiple_choice', 'Which article is feminine?', '["der","die","das","den"]', 'die', 1, 5),
  ('00000000-0000-4000-a000-00006a40dab1', 'fill_blank', 'Ich ___ (to be) Student.', '["bin","bist","ist","sind"]', 'bin', 1, 6),
  ('00000000-0000-4000-a000-00006a40dab1', 'multiple_choice', 'What is the correct word order?', '["Ich lerne Deutsch","Ich Deutsch lerne","Lerne ich Deutsch","Deutsch ich lerne"]', 'Ich lerne Deutsch', 1, 7),
  ('00000000-0000-4000-a000-00006a40dab1', 'true_false', 'All German nouns are capitalized.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-00006a40dab1', 'multiple_choice', 'How do you say "thank you" in German?', '["Bitte","Danke","Tschüss","Hallo"]', 'Danke', 1, 9),
  ('00000000-0000-4000-a000-00006a40dab1', 'fill_blank', 'Wo ___ du? (to live)', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 1, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-00006a40dab1', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Linguistik und Stilistik', 'formal', false, 1),
  ('00000000-0000-4000-a000-00006a40dab1', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Linguistik und Stilistik', 'informal', false, 2),
  ('00000000-0000-4000-a000-00006a40dab1', 'Bitte!', 'Please!', 'من فضلك!', 'Used in Linguistik und Stilistik', 'neutral', false, 3),
  ('00000000-0000-4000-a000-00006a40dab1', 'Danke!', 'Thanks!', 'شكراً!', 'Used in Linguistik und Stilistik', 'neutral', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-00006a40dab1', 'Hallo', 'Hello', 'Greeting', 'expression', 1),
  ('00000000-0000-4000-a000-00006a40dab1', 'Danke', 'Thanks', 'Politeness', 'expression', 2),
  ('00000000-0000-4000-a000-00006a40dab1', 'Bitte', 'Please', 'Politeness', 'expression', 3),
  ('00000000-0000-4000-a000-00006a40dab1', 'Tschüss', 'Bye', 'Farewell', 'expression', 4);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-00006a40dab1', 'Stilfiguren: Metapher, Metonymie, Ironie — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, duration_seconds, speaker_count, scenario) values
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

[Lehrerin]: ممتاز! إلى الغد!', 72, 2, 'Linguistik und Stilistik');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-00006a40dab1', 'Speaking: Stilfiguren: Metapher, Metonymie, Ironie', 'Practice talking about Stylistic Figures. Answer questions and have a simple conversation.', 'Stylistic Figures', ARRAY['Use full sentences','Speak clearly','Don''t worry about mistakes']::text[], ARRAY['der Stil','das Register','das Stilmittel','die Alliteration','die Ellipse']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-00006a40dab1', 'Writing: Stilfiguren: Metapher, Metonymie, Ironie', 'Write a short text about Stylistic Figures. Use at least 5 vocabulary words from this lesson.', ARRAY['Start with a greeting','Use the vocabulary from this lesson','Check your grammar']::text[], ARRAY['der Stil','das Register','das Stilmittel']::text[], '["Sentence structure","Vocabulary usage"]', 50, 150, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00006a40dab1', 'Stilfiguren: Metapher, Metonymie, Ironie — Roleplay', 'Stylistic Figures', 'Student', 'Teacher', 'Practice conversation about Stylistic Figures', 'Hallo! Lass uns über dieses Thema sprechen.', 'advanced', 1, ARRAY['der Stil','das Register','das Stilmittel','die Alliteration','die Ellipse','die Hyperbel','die Poetik','der Vers']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00006a40dab1', 'Stilfiguren: Metapher, Metonymie, Ironie — Advanced Roleplay', 'Stylistic Figures', 'Customer', 'Assistant', 'Extended conversation about Stylistic Figures', 'Guten Tag! Wie kann ich Ihnen helfen?', 'advanced', 2, ARRAY['der Stil','das Register','das Stilmittel','die Alliteration','die Ellipse','die Hyperbel','die Poetik','der Vers']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-00006a40dab1', 'Stilfiguren: Metapher, Metonymie, Ironie — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Stilfiguren: Metapher, Metonymie, Ironie".', 'Creative practice for Stylistic Figures', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-00006a40dab1', 'Homework: Stilfiguren: Metapher, Metonymie, Ironie', 'Complete these tasks to reinforce "Stilfiguren: Metapher, Metonymie, Ironie".', 'mixed', '[{"description":"Review all vocabulary from this lesson"},{"description":"Write 5 sentences using the grammar structure"},{"description":"Practice the dialogue aloud"}]', 35, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-00006a40dab1', 'In this lesson you learned about Stylistic Figures. You practiced vocabulary related to stylistics and grammar structure present_tense.', '["Mastered vocabulary about Stylistic Figures","Applied present_tense correctly","Read and understood a text about Stylistic Figures","Practiced speaking about Stylistic Figures"]', '[{"title":"Stilfiguren: Metapher, Metonymie, Ironie Review","summary":"present_tense — the main grammar focus of this lesson."}]', ARRAY['Stylistic Figures core vocabulary','stylistics key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)','Verb is always in second position']::text[], ARRAY['Practice 15-20 minutes daily','Use new vocabulary in real sentences','Speak out loud to improve pronunciation']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006a40dab1', 'translation', 'Translate to German: "This is a translation exercise."', '[]', 'Das ist eine Übersetzungsübung.', 'Use "das ist" for "this is"', 1, 40);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006a40dab1', 'Culture: Stylistic Figures in German-Speaking Countries', 'Learn how Stylistic Figures is approached in German culture.

تعلم كيف يتم التعامل مع Stylistic Figures في الثقافة الألمانية.', '["Tip: Be direct and polite","Tip: Use formal language with strangers","Tip: Respect punctuality"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006a40dab1', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Common error for Arabic speakers","correction":"Correct version","explanation":"Explanation of the error"}]', 30);

  -- Lesson 3: Sprachvarietäten und Register (L-C2-01-03)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-00006a40dab2', '00000000-0000-4000-a000-000039d176bf', 'Sprachvarietäten und Register', 'Explore language varieties, dialects, and registers.', 'Language Varieties', 'reading', '["Understand and use vocabulary related to Language Varieties","Apply present_tense correctly","Read and comprehend a text about Language Varieties","Listen and understand a dialogue about Language Varieties","Speak about Language Varieties in simple sentences","Write a short text about Language Varieties"]', 60, 3, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-00006a40dab2', 'der Stil', 'الأسلوب', 'style', 'der', 'die Stile', 'noun', 'Der Stil des Textes ist formell.', 'The style of the text is formal.', 'B2', 1),
  ('00000000-0000-4000-a000-00006a40dab2', 'das Register', 'المستوى اللغوي', 'register', 'das', 'die Register', 'noun', 'Das Register passt zur Situation.', 'The register fits the situation.', 'C1', 2),
  ('00000000-0000-4000-a000-00006a40dab2', 'das Stilmittel', 'الأداة الأسلوبية', 'stylistic device', 'das', 'die Stilmittel', 'noun', 'Das Stilmittel unterstreicht die Aussage.', 'The stylistic device emphasizes the statement.', 'C1', 3),
  ('00000000-0000-4000-a000-00006a40dab2', 'die Alliteration', 'الجناس', 'alliteration', 'die', 'die Alliterationen', 'noun', 'Die Alliteration wiederholt den Anlaut.', 'Alliteration repeats the initial sound.', 'C2', 4),
  ('00000000-0000-4000-a000-00006a40dab2', 'die Ellipse', 'الحذف', 'ellipsis', 'die', 'die Ellipsen', 'noun', 'Die Ellipse spart Wörter aus.', 'The ellipsis omits words.', 'C2', 5),
  ('00000000-0000-4000-a000-00006a40dab2', 'die Hyperbel', 'المبالغة', 'hyperbole', 'die', 'die Hyperbeln', 'noun', 'Die Hyperbel übertreibt stark.', 'Hyperbole exaggerates strongly.', 'C2', 6),
  ('00000000-0000-4000-a000-00006a40dab2', 'die Poetik', 'الشعرية', 'poetics', 'die', NULL, 'noun', 'Poetik ist die Theorie der Dichtkunst.', 'Poetics is the theory of poetry.', 'C2', 7),
  ('00000000-0000-4000-a000-00006a40dab2', 'der Vers', 'البيت الشعري', 'verse', 'der', 'die Verse', 'noun', 'Der Vers hat fünf Hebungen.', 'The verse has five stresses.', 'C1', 8),
  ('00000000-0000-4000-a000-00006a40dab2', 'der Reim', 'القافية', 'rhyme', 'der', 'die Reime', 'noun', 'Der Reim verbindet die Zeilen.', 'Rhyme connects the lines.', 'C1', 9),
  ('00000000-0000-4000-a000-00006a40dab2', 'das Metrum', 'الوزن', 'meter', 'das', 'die Metren', 'noun', 'Das Metrum bestimmt den Rhythmus.', 'The meter determines the rhythm.', 'C2', 10),
  ('00000000-0000-4000-a000-00006a40dab2', 'die Gattung', 'النوع الأدبي', 'genre', 'die', 'die Gattungen', 'noun', 'Lyrik ist eine literarische Gattung.', 'Lyric poetry is a literary genre.', 'C1', 11),
  ('00000000-0000-4000-a000-00006a40dab2', 'die Pragmatik', 'البراغماتية', 'pragmatics', 'die', NULL, 'noun', 'Pragmatik untersucht Sprache im Kontext.', 'Pragmatics studies language in context.', 'C2', 12),
  ('00000000-0000-4000-a000-00006a40dab2', 'der Sprechakt', 'فعل الكلام', 'speech act', 'der', 'die Sprechakte', 'noun', 'Der Sprechakt ändert die Wirklichkeit.', 'The speech act changes reality.', 'C2', 13),
  ('00000000-0000-4000-a000-00006a40dab2', 'die Implikatur', 'الاستلزام التخاطبي', 'implicature', 'die', 'die Implikaturen', 'noun', 'Die Implikatur ist die indirekte Bedeutung.', 'Implicature is the indirect meaning.', 'C2', 14),
  ('00000000-0000-4000-a000-00006a40dab2', 'der Kontext', 'السياق', 'context', 'der', 'die Kontexte', 'noun', 'Der Kontext bestimmt die Bedeutung.', 'Context determines meaning.', 'B2', 15),
  ('00000000-0000-4000-a000-00006a40dab2', 'die Höflichkeit', 'الأدب / اللباقة', 'politeness', 'die', NULL, 'noun', 'Höflichkeit ist in Japan sehr wichtig.', 'Politeness is very important in Japan.', 'B2', 16),
  ('00000000-0000-4000-a000-00006a40dab2', 'die Konversationsanalyse', 'تحليل المحادثة', 'conversation analysis', 'die', NULL, 'noun', 'Die Konversationsanalyse untersucht Gespräche.', 'Conversation analysis examines conversations.', 'C2', 17),
  ('00000000-0000-4000-a000-00006a40dab2', 'die Bedeutung', 'المعنى', 'meaning', 'die', 'die Bedeutungen', 'noun', 'Die Bedeutung des Wortes ist klar.', 'The meaning of the word is clear.', 'B2', 18),
  ('00000000-0000-4000-a000-00006a40dab2', 'die Synonymie', 'الترادف', 'synonymy', 'die', NULL, 'noun', 'Synonymie bedeutet Bedeutungsgleichheit.', 'Synonymy means sameness of meaning.', 'C2', 19),
  ('00000000-0000-4000-a000-00006a40dab2', 'die Antonymie', 'التضاد', 'antonymy', 'die', NULL, 'noun', 'Antonymie bezeichnet Gegensätze.', 'Antonymy denotes opposites.', 'C2', 20),
  ('00000000-0000-4000-a000-00006a40dab2', 'die Polysemie', 'تعدد المعاني', 'polysemy', 'die', NULL, 'noun', 'Polysemie hat mehrere Bedeutungen.', 'Polysemy has multiple meanings.', 'C2', 21),
  ('00000000-0000-4000-a000-00006a40dab2', 'die Kompositionalität', 'التركيبية', 'compositionality', 'die', NULL, 'noun', 'Kompositionalität besagt, dass Bedeutung aus Teilen besteht.', 'Compositionality holds that meaning consists of parts.', 'C2', 22),
  ('00000000-0000-4000-a000-00006a40dab2', 'die Übersetzung', 'الترجمة', 'translation', 'die', 'die Übersetzungen', 'noun', 'Die Übersetzung ist gelungen.', 'The translation is successful.', 'B2', 23),
  ('00000000-0000-4000-a000-00006a40dab2', 'übersetzen', 'يترجم', 'to translate', NULL, NULL, 'verb', 'Ich übersetze den Text ins Arabische.', 'I translate the text into Arabic.', 'B1', 24),
  ('00000000-0000-4000-a000-00006a40dab2', 'der Dolmetscher', 'المترجم الفوري', 'interpreter', 'der', 'die Dolmetscher', 'noun', 'Der Dolmetscher übersetzt mündlich.', 'The interpreter translates orally.', 'B2', 25),
  ('00000000-0000-4000-a000-00006a40dab2', 'die Muttersprache', 'اللغة الأم', 'native language', 'die', 'die Muttersprachen', 'noun', 'Meine Muttersprache ist Arabisch.', 'My native language is Arabic.', 'B1', 26),
  ('00000000-0000-4000-a000-00006a40dab2', 'falscher Freund', 'الصديق المزيف', 'false friend', NULL, NULL, 'noun', 'Ein falscher Freund sieht ähnlich aus, bedeutet aber etwas anderes.', 'A false friend looks similar but means something different.', 'C1', 27),
  ('00000000-0000-4000-a000-00006a40dab2', 'die Sprachmittlung', 'الوساطة اللغوية', 'language mediation', 'die', NULL, 'noun', 'Sprachmittlung vermittelt zwischen Kulturen.', 'Language mediation bridges between cultures.', 'C2', 28),
  ('00000000-0000-4000-a000-00006a40dab2', 'die Äquivalenz', 'التكافؤ', 'equivalence', 'die', NULL, 'noun', 'Äquivalenz in der Übersetzung ist ein Ideal.', 'Equivalence in translation is an ideal.', 'C2', 29),
  ('00000000-0000-4000-a000-00006a40dab2', 'der Dialekt', 'اللهجة', 'dialect', 'der', 'die Dialekte', 'noun', 'Der bayerische Dialekt ist schwer zu verstehen.', 'The Bavarian dialect is hard to understand.', 'B2', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006a40dab2', 'Präsens der regelmäßigen Verben (Present Tense) / المضارع للأفعال المنتظمة', 'In German, regular verbs follow a consistent pattern. The infinitive ends in -en. Remove the -en and add the personal endings: ich -e, du -st, er/sie/es -t, wir -en, ihr -t, sie/Sie -en. For most Arabic speakers, this is easier than Arabic verb conjugation because German has fewer forms.', '[{"rule":"ich: stem + e","note":"Ich lerne, ich wohne, ich arbeite"},{"rule":"du: stem + st","note":"Du lernst, du wohnst, du arbeitest"},{"rule":"er/sie/es: stem + t","note":"Er lernt, sie wohnt, es arbeitet"},{"rule":"wir: stem + en","note":"Wir lernen, wir wohnen, wir arbeiten"},{"rule":"ihr: stem + t","note":"Ihr lernt, ihr wohnt, ihr arbeitet"},{"rule":"sie/Sie: stem + en","note":"Sie lernen, Sie wohnen"}]', '[{"german":"Ich lerne Deutsch.","arabic":"أنا أتعلم الألمانية.","english":"I am learning German."},{"german":"Du wohnst in Berlin.","arabic":"أنت تسكن في برلين.","english":"You live in Berlin."},{"german":"Er arbeitet bei Siemens.","arabic":"هو يعمل في سيمنز.","english":"He works at Siemens."}]', '[{"mistake":"Ich lernen Deutsch","correction":"Ich lerne Deutsch","explanation":"After \"ich\" we use the stem + e, not the infinitive."},{"mistake":"Er lerne Deutsch","correction":"Er lernt Deutsch","explanation":"After \"er/sie/es\" we add -t, not -e."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006a40dab2', 'multiple_choice', 'What does "der Stil" mean?', '["The","A","This","That"]', 'The', 'This is a basic vocabulary item.', 1, 1),
  ('00000000-0000-4000-a000-00006a40dab2', 'fill_gap', 'Complete with the correct form.', '["Option 1","Option 2","Option 3"]', 'Option 1', 'Practice grammar in context.', 1, 2),
  ('00000000-0000-4000-a000-00006a40dab2', 'translation', 'Translate: "I learn German."', '["Ich lerne Deutsch.","Ich lerne Englisch.","Ich lerne Spanisch."]', 'Ich lerne Deutsch.', 'Ich = I, lerne = learn/learning, Deutsch = German.', 2, 3),
  ('00000000-0000-4000-a000-00006a40dab2', 'sentence_order', 'Order the sentence.', '[]', 'Ich lerne Deutsch.', 'Subject + verb + object in German.', 2, 4),
  ('00000000-0000-4000-a000-00006a40dab2', 'matching', 'Match the words with their meanings.', '["Match pairs correctly"]', 'Correct pairs', 'Test your vocabulary knowledge.', 2, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-00006a40dab2', 'multiple_choice', 'What is the main topic of this lesson?', '["Language Varieties","Sports","Music","Travel"]', 'Language Varieties', 1, 1),
  ('00000000-0000-4000-a000-00006a40dab2', 'true_false', 'This lesson teaches vocabulary about Language Varieties.', '["True","False"]', 'True', 1, 2),
  ('00000000-0000-4000-a000-00006a40dab2', 'true_false', 'German word order is always the same as English.', '["True","False"]', 'False', 1, 3),
  ('00000000-0000-4000-a000-00006a40dab2', 'multiple_choice', 'How do you say "please" in German?', '["Danke","Bitte","Tschüss","Hallo"]', 'Bitte', 1, 4),
  ('00000000-0000-4000-a000-00006a40dab2', 'multiple_choice', 'Which article is feminine?', '["der","die","das","den"]', 'die', 1, 5),
  ('00000000-0000-4000-a000-00006a40dab2', 'fill_blank', 'Ich ___ (to be) Student.', '["bin","bist","ist","sind"]', 'bin', 1, 6),
  ('00000000-0000-4000-a000-00006a40dab2', 'multiple_choice', 'What is the correct word order?', '["Ich lerne Deutsch","Ich Deutsch lerne","Lerne ich Deutsch","Deutsch ich lerne"]', 'Ich lerne Deutsch', 1, 7),
  ('00000000-0000-4000-a000-00006a40dab2', 'true_false', 'All German nouns are capitalized.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-00006a40dab2', 'multiple_choice', 'How do you say "thank you" in German?', '["Bitte","Danke","Tschüss","Hallo"]', 'Danke', 1, 9),
  ('00000000-0000-4000-a000-00006a40dab2', 'fill_blank', 'Wo ___ du? (to live)', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 1, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-00006a40dab2', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Linguistik und Stilistik', 'formal', false, 1),
  ('00000000-0000-4000-a000-00006a40dab2', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Linguistik und Stilistik', 'informal', false, 2),
  ('00000000-0000-4000-a000-00006a40dab2', 'Bitte!', 'Please!', 'من فضلك!', 'Used in Linguistik und Stilistik', 'neutral', false, 3),
  ('00000000-0000-4000-a000-00006a40dab2', 'Danke!', 'Thanks!', 'شكراً!', 'Used in Linguistik und Stilistik', 'neutral', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-00006a40dab2', 'Hallo', 'Hello', 'Greeting', 'expression', 1),
  ('00000000-0000-4000-a000-00006a40dab2', 'Danke', 'Thanks', 'Politeness', 'expression', 2),
  ('00000000-0000-4000-a000-00006a40dab2', 'Bitte', 'Please', 'Politeness', 'expression', 3),
  ('00000000-0000-4000-a000-00006a40dab2', 'Tschüss', 'Bye', 'Farewell', 'expression', 4);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-00006a40dab2', 'Sprachvarietäten und Register — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, duration_seconds, speaker_count, scenario) values
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

[Lehrerin]: ممتاز! إلى الغد!', 72, 2, 'Linguistik und Stilistik');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-00006a40dab2', 'Speaking: Sprachvarietäten und Register', 'Practice talking about Language Varieties. Answer questions and have a simple conversation.', 'Language Varieties', ARRAY['Use full sentences','Speak clearly','Don''t worry about mistakes']::text[], ARRAY['der Stil','das Register','das Stilmittel','die Alliteration','die Ellipse']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-00006a40dab2', 'Writing: Sprachvarietäten und Register', 'Write a short text about Language Varieties. Use at least 5 vocabulary words from this lesson.', ARRAY['Start with a greeting','Use the vocabulary from this lesson','Check your grammar']::text[], ARRAY['der Stil','das Register','das Stilmittel']::text[], '["Sentence structure","Vocabulary usage"]', 50, 150, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00006a40dab2', 'Sprachvarietäten und Register — Roleplay', 'Language Varieties', 'Student', 'Teacher', 'Practice conversation about Language Varieties', 'Hallo! Lass uns über dieses Thema sprechen.', 'advanced', 1, ARRAY['der Stil','das Register','das Stilmittel','die Alliteration','die Ellipse','die Hyperbel','die Poetik','der Vers']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00006a40dab2', 'Sprachvarietäten und Register — Advanced Roleplay', 'Language Varieties', 'Customer', 'Assistant', 'Extended conversation about Language Varieties', 'Guten Tag! Wie kann ich Ihnen helfen?', 'advanced', 2, ARRAY['der Stil','das Register','das Stilmittel','die Alliteration','die Ellipse','die Hyperbel','die Poetik','der Vers']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-00006a40dab2', 'Sprachvarietäten und Register — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Sprachvarietäten und Register".', 'Creative practice for Language Varieties', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-00006a40dab2', 'Homework: Sprachvarietäten und Register', 'Complete these tasks to reinforce "Sprachvarietäten und Register".', 'mixed', '[{"description":"Review all vocabulary from this lesson"},{"description":"Write 5 sentences using the grammar structure"},{"description":"Practice the dialogue aloud"}]', 35, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-00006a40dab2', 'In this lesson you learned about Language Varieties. You practiced vocabulary related to stylistics and grammar structure present_tense.', '["Mastered vocabulary about Language Varieties","Applied present_tense correctly","Read and understood a text about Language Varieties","Practiced speaking about Language Varieties"]', '[{"title":"Sprachvarietäten und Register Review","summary":"present_tense — the main grammar focus of this lesson."}]', ARRAY['Language Varieties core vocabulary','stylistics key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)','Verb is always in second position']::text[], ARRAY['Practice 15-20 minutes daily','Use new vocabulary in real sentences','Speak out loud to improve pronunciation']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006a40dab2', 'translation', 'Translate to German: "This is a translation exercise."', '[]', 'Das ist eine Übersetzungsübung.', 'Use "das ist" for "this is"', 1, 40);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006a40dab2', 'Culture: Language Varieties in German-Speaking Countries', 'Learn how Language Varieties is approached in German culture.

تعلم كيف يتم التعامل مع Language Varieties في الثقافة الألمانية.', '["Tip: Be direct and polite","Tip: Use formal language with strangers","Tip: Respect punctuality"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006a40dab2', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Common error for Arabic speakers","correction":"Correct version","explanation":"Explanation of the error"}]', 30);

  -- Lesson 4: Test: Linguistik und Stilistik (L-C2-01-04)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-00006a40dab3', '00000000-0000-4000-a000-000039d176bf', 'Test: Linguistik und Stilistik', 'Module test on linguistics and stylistics.', 'Module Test', 'test', '["Understand and use vocabulary related to Module Test","Apply present_tense correctly","Read and comprehend a text about Module Test","Listen and understand a dialogue about Module Test","Speak about Module Test in simple sentences","Write a short text about Module Test"]', 50, 4, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-00006a40dab3', 'die Linguistik', 'علم اللغة', 'linguistics', 'die', NULL, 'noun', 'Linguistik untersucht die menschliche Sprache.', 'Linguistics studies human language.', 'C1', 1),
  ('00000000-0000-4000-a000-00006a40dab3', 'die Syntax', 'النحو/تركيب الجملة', 'syntax', 'die', NULL, 'noun', 'Die Syntax beschreibt die Satzstruktur.', 'Syntax describes sentence structure.', 'C1', 2),
  ('00000000-0000-4000-a000-00006a40dab3', 'die Semantik', 'علم الدلالة', 'semantics', 'die', NULL, 'noun', 'Die Semantik befasst sich mit Bedeutung.', 'Semantics deals with meaning.', 'C1', 3),
  ('00000000-0000-4000-a000-00006a40dab3', 'die Morphologie', 'الصرف', 'morphology', 'die', NULL, 'noun', 'Die Morphologie untersucht Wortformen.', 'Morphology examines word forms.', 'C1', 4),
  ('00000000-0000-4000-a000-00006a40dab3', 'die Phonetik', 'علم الأصوات', 'phonetics', 'die', NULL, 'noun', 'Die Phonetik untersucht Sprachlaute.', 'Phonetics studies speech sounds.', 'C1', 5),
  ('00000000-0000-4000-a000-00006a40dab3', 'die Pragmatik', 'البراغماتية', 'pragmatics', 'die', NULL, 'noun', 'Pragmatik untersucht Sprachgebrauch.', 'Pragmatics studies language use.', 'C2', 6),
  ('00000000-0000-4000-a000-00006a40dab3', 'die Sprachwissenschaft', 'علم اللغة', 'linguistics', 'die', NULL, 'noun', 'Die germanistische Sprachwissenschaft ist vielfältig.', 'German linguistics is diverse.', 'C1', 7),
  ('00000000-0000-4000-a000-00006a40dab3', 'der Stil', 'الأسلوب', 'style', 'der', 'die Stile', 'noun', 'Der Stil des Textes ist formell.', 'The style of the text is formal.', 'B2', 8),
  ('00000000-0000-4000-a000-00006a40dab3', 'das Register', 'المستوى اللغوي', 'register', 'das', 'die Register', 'noun', 'Das Register passt zur Situation.', 'The register fits the situation.', 'C1', 9),
  ('00000000-0000-4000-a000-00006a40dab3', 'das Stilmittel', 'الأداة الأسلوبية', 'stylistic device', 'das', 'die Stilmittel', 'noun', 'Das Stilmittel unterstreicht die Aussage.', 'The stylistic device emphasizes the statement.', 'C1', 10),
  ('00000000-0000-4000-a000-00006a40dab3', 'die Alliteration', 'الجناس', 'alliteration', 'die', 'die Alliterationen', 'noun', 'Die Alliteration wiederholt den Anlaut.', 'Alliteration repeats the initial sound.', 'C2', 11),
  ('00000000-0000-4000-a000-00006a40dab3', 'die Ellipse', 'الحذف', 'ellipsis', 'die', 'die Ellipsen', 'noun', 'Die Ellipse spart Wörter aus.', 'The ellipsis omits words.', 'C2', 12),
  ('00000000-0000-4000-a000-00006a40dab3', 'die Hyperbel', 'المبالغة', 'hyperbole', 'die', 'die Hyperbeln', 'noun', 'Die Hyperbel übertreibt stark.', 'Hyperbole exaggerates strongly.', 'C2', 13),
  ('00000000-0000-4000-a000-00006a40dab3', 'die Poetik', 'الشعرية', 'poetics', 'die', NULL, 'noun', 'Poetik ist die Theorie der Dichtkunst.', 'Poetics is the theory of poetry.', 'C2', 14),
  ('00000000-0000-4000-a000-00006a40dab3', 'der Vers', 'البيت الشعري', 'verse', 'der', 'die Verse', 'noun', 'Der Vers hat fünf Hebungen.', 'The verse has five stresses.', 'C1', 15),
  ('00000000-0000-4000-a000-00006a40dab3', 'der Reim', 'القافية', 'rhyme', 'der', 'die Reime', 'noun', 'Der Reim verbindet die Zeilen.', 'Rhyme connects the lines.', 'C1', 16),
  ('00000000-0000-4000-a000-00006a40dab3', 'das Metrum', 'الوزن', 'meter', 'das', 'die Metren', 'noun', 'Das Metrum bestimmt den Rhythmus.', 'The meter determines the rhythm.', 'C2', 17),
  ('00000000-0000-4000-a000-00006a40dab3', 'die Gattung', 'النوع الأدبي', 'genre', 'die', 'die Gattungen', 'noun', 'Lyrik ist eine literarische Gattung.', 'Lyric poetry is a literary genre.', 'C1', 18),
  ('00000000-0000-4000-a000-00006a40dab3', 'der Sprechakt', 'فعل الكلام', 'speech act', 'der', 'die Sprechakte', 'noun', 'Der Sprechakt ändert die Wirklichkeit.', 'The speech act changes reality.', 'C2', 19),
  ('00000000-0000-4000-a000-00006a40dab3', 'die Implikatur', 'الاستلزام التخاطبي', 'implicature', 'die', 'die Implikaturen', 'noun', 'Die Implikatur ist die indirekte Bedeutung.', 'Implicature is the indirect meaning.', 'C2', 20),
  ('00000000-0000-4000-a000-00006a40dab3', 'der Kontext', 'السياق', 'context', 'der', 'die Kontexte', 'noun', 'Der Kontext bestimmt die Bedeutung.', 'Context determines meaning.', 'B2', 21),
  ('00000000-0000-4000-a000-00006a40dab3', 'die Höflichkeit', 'الأدب / اللباقة', 'politeness', 'die', NULL, 'noun', 'Höflichkeit ist in Japan sehr wichtig.', 'Politeness is very important in Japan.', 'B2', 22),
  ('00000000-0000-4000-a000-00006a40dab3', 'die Konversationsanalyse', 'تحليل المحادثة', 'conversation analysis', 'die', NULL, 'noun', 'Die Konversationsanalyse untersucht Gespräche.', 'Conversation analysis examines conversations.', 'C2', 23),
  ('00000000-0000-4000-a000-00006a40dab3', 'die Bedeutung', 'المعنى', 'meaning', 'die', 'die Bedeutungen', 'noun', 'Die Bedeutung des Wortes ist klar.', 'The meaning of the word is clear.', 'B2', 24),
  ('00000000-0000-4000-a000-00006a40dab3', 'die Synonymie', 'الترادف', 'synonymy', 'die', NULL, 'noun', 'Synonymie bedeutet Bedeutungsgleichheit.', 'Synonymy means sameness of meaning.', 'C2', 25),
  ('00000000-0000-4000-a000-00006a40dab3', 'die Antonymie', 'التضاد', 'antonymy', 'die', NULL, 'noun', 'Antonymie bezeichnet Gegensätze.', 'Antonymy denotes opposites.', 'C2', 26),
  ('00000000-0000-4000-a000-00006a40dab3', 'die Polysemie', 'تعدد المعاني', 'polysemy', 'die', NULL, 'noun', 'Polysemie hat mehrere Bedeutungen.', 'Polysemy has multiple meanings.', 'C2', 27),
  ('00000000-0000-4000-a000-00006a40dab3', 'die Kompositionalität', 'التركيبية', 'compositionality', 'die', NULL, 'noun', 'Kompositionalität besagt, dass Bedeutung aus Teilen besteht.', 'Compositionality holds that meaning consists of parts.', 'C2', 28),
  ('00000000-0000-4000-a000-00006a40dab3', 'die Übersetzung', 'الترجمة', 'translation', 'die', 'die Übersetzungen', 'noun', 'Die Übersetzung ist gelungen.', 'The translation is successful.', 'B2', 29),
  ('00000000-0000-4000-a000-00006a40dab3', 'übersetzen', 'يترجم', 'to translate', NULL, NULL, 'verb', 'Ich übersetze den Text ins Arabische.', 'I translate the text into Arabic.', 'B1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006a40dab3', 'Präsens der regelmäßigen Verben (Present Tense) / المضارع للأفعال المنتظمة', 'In German, regular verbs follow a consistent pattern. The infinitive ends in -en. Remove the -en and add the personal endings: ich -e, du -st, er/sie/es -t, wir -en, ihr -t, sie/Sie -en. For most Arabic speakers, this is easier than Arabic verb conjugation because German has fewer forms.', '[{"rule":"ich: stem + e","note":"Ich lerne, ich wohne, ich arbeite"},{"rule":"du: stem + st","note":"Du lernst, du wohnst, du arbeitest"},{"rule":"er/sie/es: stem + t","note":"Er lernt, sie wohnt, es arbeitet"},{"rule":"wir: stem + en","note":"Wir lernen, wir wohnen, wir arbeiten"},{"rule":"ihr: stem + t","note":"Ihr lernt, ihr wohnt, ihr arbeitet"},{"rule":"sie/Sie: stem + en","note":"Sie lernen, Sie wohnen"}]', '[{"german":"Ich lerne Deutsch.","arabic":"أنا أتعلم الألمانية.","english":"I am learning German."},{"german":"Du wohnst in Berlin.","arabic":"أنت تسكن في برلين.","english":"You live in Berlin."},{"german":"Er arbeitet bei Siemens.","arabic":"هو يعمل في سيمنز.","english":"He works at Siemens."}]', '[{"mistake":"Ich lernen Deutsch","correction":"Ich lerne Deutsch","explanation":"After \"ich\" we use the stem + e, not the infinitive."},{"mistake":"Er lerne Deutsch","correction":"Er lernt Deutsch","explanation":"After \"er/sie/es\" we add -t, not -e."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006a40dab3', 'multiple_choice', 'What does "die Linguistik" mean?', '["The","A","This","That"]', 'The', 'This is a basic vocabulary item.', 1, 1),
  ('00000000-0000-4000-a000-00006a40dab3', 'fill_gap', 'Complete with the correct form.', '["Option 1","Option 2","Option 3"]', 'Option 1', 'Practice grammar in context.', 1, 2),
  ('00000000-0000-4000-a000-00006a40dab3', 'translation', 'Translate: "I learn German."', '["Ich lerne Deutsch.","Ich lerne Englisch.","Ich lerne Spanisch."]', 'Ich lerne Deutsch.', 'Ich = I, lerne = learn/learning, Deutsch = German.', 2, 3),
  ('00000000-0000-4000-a000-00006a40dab3', 'sentence_order', 'Order the sentence.', '[]', 'Ich lerne Deutsch.', 'Subject + verb + object in German.', 2, 4),
  ('00000000-0000-4000-a000-00006a40dab3', 'matching', 'Match the words with their meanings.', '["Match pairs correctly"]', 'Correct pairs', 'Test your vocabulary knowledge.', 2, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-00006a40dab3', 'multiple_choice', 'What is the main topic of this lesson?', '["Module Test","Sports","Music","Travel"]', 'Module Test', 1, 1),
  ('00000000-0000-4000-a000-00006a40dab3', 'true_false', 'This lesson teaches vocabulary about Module Test.', '["True","False"]', 'True', 1, 2),
  ('00000000-0000-4000-a000-00006a40dab3', 'true_false', 'German word order is always the same as English.', '["True","False"]', 'False', 1, 3),
  ('00000000-0000-4000-a000-00006a40dab3', 'multiple_choice', 'How do you say "please" in German?', '["Danke","Bitte","Tschüss","Hallo"]', 'Bitte', 1, 4),
  ('00000000-0000-4000-a000-00006a40dab3', 'multiple_choice', 'Which article is feminine?', '["der","die","das","den"]', 'die', 1, 5),
  ('00000000-0000-4000-a000-00006a40dab3', 'fill_blank', 'Ich ___ (to be) Student.', '["bin","bist","ist","sind"]', 'bin', 1, 6),
  ('00000000-0000-4000-a000-00006a40dab3', 'multiple_choice', 'What is the correct word order?', '["Ich lerne Deutsch","Ich Deutsch lerne","Lerne ich Deutsch","Deutsch ich lerne"]', 'Ich lerne Deutsch', 1, 7),
  ('00000000-0000-4000-a000-00006a40dab3', 'true_false', 'All German nouns are capitalized.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-00006a40dab3', 'multiple_choice', 'How do you say "thank you" in German?', '["Bitte","Danke","Tschüss","Hallo"]', 'Danke', 1, 9),
  ('00000000-0000-4000-a000-00006a40dab3', 'fill_blank', 'Wo ___ du? (to live)', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 1, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-00006a40dab3', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Linguistik und Stilistik', 'formal', false, 1),
  ('00000000-0000-4000-a000-00006a40dab3', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Linguistik und Stilistik', 'informal', false, 2),
  ('00000000-0000-4000-a000-00006a40dab3', 'Bitte!', 'Please!', 'من فضلك!', 'Used in Linguistik und Stilistik', 'neutral', false, 3),
  ('00000000-0000-4000-a000-00006a40dab3', 'Danke!', 'Thanks!', 'شكراً!', 'Used in Linguistik und Stilistik', 'neutral', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-00006a40dab3', 'Hallo', 'Hello', 'Greeting', 'expression', 1),
  ('00000000-0000-4000-a000-00006a40dab3', 'Danke', 'Thanks', 'Politeness', 'expression', 2),
  ('00000000-0000-4000-a000-00006a40dab3', 'Bitte', 'Please', 'Politeness', 'expression', 3),
  ('00000000-0000-4000-a000-00006a40dab3', 'Tschüss', 'Bye', 'Farewell', 'expression', 4);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-00006a40dab3', 'Test: Linguistik und Stilistik — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, duration_seconds, speaker_count, scenario) values
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

[Lehrerin]: ممتاز! إلى الغد!', 72, 2, 'Linguistik und Stilistik');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-00006a40dab3', 'Speaking: Test: Linguistik und Stilistik', 'Practice talking about Module Test. Answer questions and have a simple conversation.', 'Module Test', ARRAY['Use full sentences','Speak clearly','Don''t worry about mistakes']::text[], ARRAY['die Linguistik','die Syntax','die Semantik','die Morphologie','die Phonetik']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-00006a40dab3', 'Writing: Test: Linguistik und Stilistik', 'Write a short text about Module Test. Use at least 5 vocabulary words from this lesson.', ARRAY['Start with a greeting','Use the vocabulary from this lesson','Check your grammar']::text[], ARRAY['die Linguistik','die Syntax','die Semantik']::text[], '["Sentence structure","Vocabulary usage"]', 50, 150, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00006a40dab3', 'Test: Linguistik und Stilistik — Roleplay', 'Module Test', 'Student', 'Teacher', 'Practice conversation about Module Test', 'Hallo! Lass uns über dieses Thema sprechen.', 'advanced', 1, ARRAY['die Linguistik','die Syntax','die Semantik','die Morphologie','die Phonetik','die Pragmatik','die Sprachwissenschaft','der Stil']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00006a40dab3', 'Test: Linguistik und Stilistik — Advanced Roleplay', 'Module Test', 'Customer', 'Assistant', 'Extended conversation about Module Test', 'Guten Tag! Wie kann ich Ihnen helfen?', 'advanced', 2, ARRAY['die Linguistik','die Syntax','die Semantik','die Morphologie','die Phonetik','die Pragmatik','die Sprachwissenschaft','der Stil']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-00006a40dab3', 'Test: Linguistik und Stilistik — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Test: Linguistik und Stilistik".', 'Creative practice for Module Test', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-00006a40dab3', 'Homework: Test: Linguistik und Stilistik', 'Complete these tasks to reinforce "Test: Linguistik und Stilistik".', 'mixed', '[{"description":"Review all vocabulary from this lesson"},{"description":"Write 5 sentences using the grammar structure"},{"description":"Practice the dialogue aloud"}]', 35, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-00006a40dab3', 'In this lesson you learned about Module Test. You practiced vocabulary related to linguistics and grammar structure present_tense.', '["Mastered vocabulary about Module Test","Applied present_tense correctly","Read and understood a text about Module Test","Practiced speaking about Module Test"]', '[{"title":"Test: Linguistik und Stilistik Review","summary":"present_tense — the main grammar focus of this lesson."}]', ARRAY['Module Test core vocabulary','linguistics key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)','Verb is always in second position']::text[], ARRAY['Practice 15-20 minutes daily','Use new vocabulary in real sentences','Speak out loud to improve pronunciation']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006a40dab3', 'translation', 'Translate to German: "This is a translation exercise."', '[]', 'Das ist eine Übersetzungsübung.', 'Use "das ist" for "this is"', 1, 40);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006a40dab3', 'Culture: Module Test in German-Speaking Countries', 'Learn how Module Test is approached in German culture.

تعلم كيف يتم التعامل مع Module Test في الثقافة الألمانية.', '["Tip: Be direct and polite","Tip: Use formal language with strangers","Tip: Respect punctuality"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006a40dab3', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Common error for Arabic speakers","correction":"Correct version","explanation":"Explanation of the error"}]', 30);

  -- Module 2: Literatur und Interpretation
  insert into public.course_modules (id, level_id, title, description, objectives, order_index, estimated_hours, is_published)
  values ('00000000-0000-4000-a000-000039d176c0', 'C2', 'Literatur und Interpretation', 'Analyze German literature and write critical interpretations.', '["Analyze literary texts","Write literary interpretations","Use literary terminology","Compare different literary periods","Write critical essays"]', 2, 5, true)
  on conflict (id) do nothing;

  -- Lesson 1: Literarische Textanalyse (L-C2-02-01)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-00006a414f0f', '00000000-0000-4000-a000-000039d176c0', 'Literarische Textanalyse', 'Analyze literary texts systematically.', 'Literary Analysis', 'reading', '["Understand and use vocabulary related to Literary Analysis","Apply present_tense correctly","Read and comprehend a text about Literary Analysis","Listen and understand a dialogue about Literary Analysis","Speak about Literary Analysis in simple sentences","Write a short text about Literary Analysis"]', 60, 1, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-00006a414f0f', 'der Roman', 'الرواية', 'novel', 'der', 'die Romane', 'noun', 'Der Roman ist ein Bestseller.', 'The novel is a bestseller.', 'B1', 1),
  ('00000000-0000-4000-a000-00006a414f0f', 'der Dichter', 'الشاعر', 'poet', 'der', 'die Dichter', 'noun', 'Goethe war ein großer Dichter.', 'Goethe was a great poet.', 'B2', 2),
  ('00000000-0000-4000-a000-00006a414f0f', 'das Gedicht', 'القصيدة', 'poem', 'das', 'die Gedichte', 'noun', 'Das Gedicht handelt von der Liebe.', 'The poem is about love.', 'B1', 3),
  ('00000000-0000-4000-a000-00006a414f0f', 'der Autor', 'المؤلف', 'author', 'der', 'die Autoren', 'noun', 'Der Autor schreibt einen neuen Roman.', 'The author is writing a new novel.', 'B1', 4),
  ('00000000-0000-4000-a000-00006a414f0f', 'die Literaturgeschichte', 'تاريخ الأدب', 'literary history', 'die', NULL, 'noun', 'Die deutsche Literaturgeschichte ist reich.', 'German literary history is rich.', 'C1', 5),
  ('00000000-0000-4000-a000-00006a414f0f', 'das Drama', 'المسرحية', 'drama', 'das', 'die Dramen', 'noun', 'Das Drama wurde 1920 geschrieben.', 'The drama was written in 1920.', 'B2', 6),
  ('00000000-0000-4000-a000-00006a414f0f', 'die Erzählung', 'القصة القصيرة', 'short story', 'die', 'die Erzählungen', 'noun', 'Die Erzählung ist bewegend.', 'The short story is moving.', 'B2', 7),
  ('00000000-0000-4000-a000-00006a414f0f', 'der Stil', 'الأسلوب', 'style', 'der', 'die Stile', 'noun', 'Der Stil des Textes ist formell.', 'The style of the text is formal.', 'B2', 8),
  ('00000000-0000-4000-a000-00006a414f0f', 'das Register', 'المستوى اللغوي', 'register', 'das', 'die Register', 'noun', 'Das Register passt zur Situation.', 'The register fits the situation.', 'C1', 9),
  ('00000000-0000-4000-a000-00006a414f0f', 'das Stilmittel', 'الأداة الأسلوبية', 'stylistic device', 'das', 'die Stilmittel', 'noun', 'Das Stilmittel unterstreicht die Aussage.', 'The stylistic device emphasizes the statement.', 'C1', 10),
  ('00000000-0000-4000-a000-00006a414f0f', 'die Alliteration', 'الجناس', 'alliteration', 'die', 'die Alliterationen', 'noun', 'Die Alliteration wiederholt den Anlaut.', 'Alliteration repeats the initial sound.', 'C2', 11),
  ('00000000-0000-4000-a000-00006a414f0f', 'die Ellipse', 'الحذف', 'ellipsis', 'die', 'die Ellipsen', 'noun', 'Die Ellipse spart Wörter aus.', 'The ellipsis omits words.', 'C2', 12),
  ('00000000-0000-4000-a000-00006a414f0f', 'die Hyperbel', 'المبالغة', 'hyperbole', 'die', 'die Hyperbeln', 'noun', 'Die Hyperbel übertreibt stark.', 'Hyperbole exaggerates strongly.', 'C2', 13),
  ('00000000-0000-4000-a000-00006a414f0f', 'die Poetik', 'الشعرية', 'poetics', 'die', NULL, 'noun', 'Poetik ist die Theorie der Dichtkunst.', 'Poetics is the theory of poetry.', 'C2', 14),
  ('00000000-0000-4000-a000-00006a414f0f', 'der Vers', 'البيت الشعري', 'verse', 'der', 'die Verse', 'noun', 'Der Vers hat fünf Hebungen.', 'The verse has five stresses.', 'C1', 15),
  ('00000000-0000-4000-a000-00006a414f0f', 'der Reim', 'القافية', 'rhyme', 'der', 'die Reime', 'noun', 'Der Reim verbindet die Zeilen.', 'Rhyme connects the lines.', 'C1', 16),
  ('00000000-0000-4000-a000-00006a414f0f', 'das Metrum', 'الوزن', 'meter', 'das', 'die Metren', 'noun', 'Das Metrum bestimmt den Rhythmus.', 'The meter determines the rhythm.', 'C2', 17),
  ('00000000-0000-4000-a000-00006a414f0f', 'die Gattung', 'النوع الأدبي', 'genre', 'die', 'die Gattungen', 'noun', 'Lyrik ist eine literarische Gattung.', 'Lyric poetry is a literary genre.', 'C1', 18),
  ('00000000-0000-4000-a000-00006a414f0f', 'die Pragmatik', 'البراغماتية', 'pragmatics', 'die', NULL, 'noun', 'Pragmatik untersucht Sprache im Kontext.', 'Pragmatics studies language in context.', 'C2', 19),
  ('00000000-0000-4000-a000-00006a414f0f', 'der Sprechakt', 'فعل الكلام', 'speech act', 'der', 'die Sprechakte', 'noun', 'Der Sprechakt ändert die Wirklichkeit.', 'The speech act changes reality.', 'C2', 20),
  ('00000000-0000-4000-a000-00006a414f0f', 'die Implikatur', 'الاستلزام التخاطبي', 'implicature', 'die', 'die Implikaturen', 'noun', 'Die Implikatur ist die indirekte Bedeutung.', 'Implicature is the indirect meaning.', 'C2', 21),
  ('00000000-0000-4000-a000-00006a414f0f', 'der Kontext', 'السياق', 'context', 'der', 'die Kontexte', 'noun', 'Der Kontext bestimmt die Bedeutung.', 'Context determines meaning.', 'B2', 22),
  ('00000000-0000-4000-a000-00006a414f0f', 'die Höflichkeit', 'الأدب / اللباقة', 'politeness', 'die', NULL, 'noun', 'Höflichkeit ist in Japan sehr wichtig.', 'Politeness is very important in Japan.', 'B2', 23),
  ('00000000-0000-4000-a000-00006a414f0f', 'die Konversationsanalyse', 'تحليل المحادثة', 'conversation analysis', 'die', NULL, 'noun', 'Die Konversationsanalyse untersucht Gespräche.', 'Conversation analysis examines conversations.', 'C2', 24),
  ('00000000-0000-4000-a000-00006a414f0f', 'die Bedeutung', 'المعنى', 'meaning', 'die', 'die Bedeutungen', 'noun', 'Die Bedeutung des Wortes ist klar.', 'The meaning of the word is clear.', 'B2', 25),
  ('00000000-0000-4000-a000-00006a414f0f', 'die Synonymie', 'الترادف', 'synonymy', 'die', NULL, 'noun', 'Synonymie bedeutet Bedeutungsgleichheit.', 'Synonymy means sameness of meaning.', 'C2', 26),
  ('00000000-0000-4000-a000-00006a414f0f', 'die Antonymie', 'التضاد', 'antonymy', 'die', NULL, 'noun', 'Antonymie bezeichnet Gegensätze.', 'Antonymy denotes opposites.', 'C2', 27),
  ('00000000-0000-4000-a000-00006a414f0f', 'die Polysemie', 'تعدد المعاني', 'polysemy', 'die', NULL, 'noun', 'Polysemie hat mehrere Bedeutungen.', 'Polysemy has multiple meanings.', 'C2', 28),
  ('00000000-0000-4000-a000-00006a414f0f', 'die Kompositionalität', 'التركيبية', 'compositionality', 'die', NULL, 'noun', 'Kompositionalität besagt, dass Bedeutung aus Teilen besteht.', 'Compositionality holds that meaning consists of parts.', 'C2', 29),
  ('00000000-0000-4000-a000-00006a414f0f', 'die Übersetzung', 'الترجمة', 'translation', 'die', 'die Übersetzungen', 'noun', 'Die Übersetzung ist gelungen.', 'The translation is successful.', 'B2', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006a414f0f', 'Präsens der regelmäßigen Verben (Present Tense) / المضارع للأفعال المنتظمة', 'In German, regular verbs follow a consistent pattern. The infinitive ends in -en. Remove the -en and add the personal endings: ich -e, du -st, er/sie/es -t, wir -en, ihr -t, sie/Sie -en. For most Arabic speakers, this is easier than Arabic verb conjugation because German has fewer forms.', '[{"rule":"ich: stem + e","note":"Ich lerne, ich wohne, ich arbeite"},{"rule":"du: stem + st","note":"Du lernst, du wohnst, du arbeitest"},{"rule":"er/sie/es: stem + t","note":"Er lernt, sie wohnt, es arbeitet"},{"rule":"wir: stem + en","note":"Wir lernen, wir wohnen, wir arbeiten"},{"rule":"ihr: stem + t","note":"Ihr lernt, ihr wohnt, ihr arbeitet"},{"rule":"sie/Sie: stem + en","note":"Sie lernen, Sie wohnen"}]', '[{"german":"Ich lerne Deutsch.","arabic":"أنا أتعلم الألمانية.","english":"I am learning German."},{"german":"Du wohnst in Berlin.","arabic":"أنت تسكن في برلين.","english":"You live in Berlin."},{"german":"Er arbeitet bei Siemens.","arabic":"هو يعمل في سيمنز.","english":"He works at Siemens."}]', '[{"mistake":"Ich lernen Deutsch","correction":"Ich lerne Deutsch","explanation":"After \"ich\" we use the stem + e, not the infinitive."},{"mistake":"Er lerne Deutsch","correction":"Er lernt Deutsch","explanation":"After \"er/sie/es\" we add -t, not -e."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006a414f0f', 'multiple_choice', 'What does "der Roman" mean?', '["The","A","This","That"]', 'The', 'This is a basic vocabulary item.', 1, 1),
  ('00000000-0000-4000-a000-00006a414f0f', 'fill_gap', 'Complete with the correct form.', '["Option 1","Option 2","Option 3"]', 'Option 1', 'Practice grammar in context.', 1, 2),
  ('00000000-0000-4000-a000-00006a414f0f', 'translation', 'Translate: "I learn German."', '["Ich lerne Deutsch.","Ich lerne Englisch.","Ich lerne Spanisch."]', 'Ich lerne Deutsch.', 'Ich = I, lerne = learn/learning, Deutsch = German.', 2, 3),
  ('00000000-0000-4000-a000-00006a414f0f', 'sentence_order', 'Order the sentence.', '[]', 'Ich lerne Deutsch.', 'Subject + verb + object in German.', 2, 4),
  ('00000000-0000-4000-a000-00006a414f0f', 'matching', 'Match the words with their meanings.', '["Match pairs correctly"]', 'Correct pairs', 'Test your vocabulary knowledge.', 2, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-00006a414f0f', 'multiple_choice', 'What is the main topic of this lesson?', '["Literary Analysis","Sports","Music","Travel"]', 'Literary Analysis', 1, 1),
  ('00000000-0000-4000-a000-00006a414f0f', 'true_false', 'This lesson teaches vocabulary about Literary Analysis.', '["True","False"]', 'True', 1, 2),
  ('00000000-0000-4000-a000-00006a414f0f', 'true_false', 'German word order is always the same as English.', '["True","False"]', 'False', 1, 3),
  ('00000000-0000-4000-a000-00006a414f0f', 'multiple_choice', 'How do you say "please" in German?', '["Danke","Bitte","Tschüss","Hallo"]', 'Bitte', 1, 4),
  ('00000000-0000-4000-a000-00006a414f0f', 'multiple_choice', 'Which article is feminine?', '["der","die","das","den"]', 'die', 1, 5),
  ('00000000-0000-4000-a000-00006a414f0f', 'fill_blank', 'Ich ___ (to be) Student.', '["bin","bist","ist","sind"]', 'bin', 1, 6),
  ('00000000-0000-4000-a000-00006a414f0f', 'multiple_choice', 'What is the correct word order?', '["Ich lerne Deutsch","Ich Deutsch lerne","Lerne ich Deutsch","Deutsch ich lerne"]', 'Ich lerne Deutsch', 1, 7),
  ('00000000-0000-4000-a000-00006a414f0f', 'true_false', 'All German nouns are capitalized.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-00006a414f0f', 'multiple_choice', 'How do you say "thank you" in German?', '["Bitte","Danke","Tschüss","Hallo"]', 'Danke', 1, 9),
  ('00000000-0000-4000-a000-00006a414f0f', 'fill_blank', 'Wo ___ du? (to live)', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 1, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-00006a414f0f', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Literatur und Interpretation', 'formal', false, 1),
  ('00000000-0000-4000-a000-00006a414f0f', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Literatur und Interpretation', 'informal', false, 2),
  ('00000000-0000-4000-a000-00006a414f0f', 'Bitte!', 'Please!', 'من فضلك!', 'Used in Literatur und Interpretation', 'neutral', false, 3),
  ('00000000-0000-4000-a000-00006a414f0f', 'Danke!', 'Thanks!', 'شكراً!', 'Used in Literatur und Interpretation', 'neutral', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-00006a414f0f', 'Hallo', 'Hello', 'Greeting', 'expression', 1),
  ('00000000-0000-4000-a000-00006a414f0f', 'Danke', 'Thanks', 'Politeness', 'expression', 2),
  ('00000000-0000-4000-a000-00006a414f0f', 'Bitte', 'Please', 'Politeness', 'expression', 3),
  ('00000000-0000-4000-a000-00006a414f0f', 'Tschüss', 'Bye', 'Farewell', 'expression', 4);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-00006a414f0f', 'Literarische Textanalyse — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, duration_seconds, speaker_count, scenario) values
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

[Lehrerin]: ممتاز! إلى الغد!', 72, 2, 'Literatur und Interpretation');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-00006a414f0f', 'Speaking: Literarische Textanalyse', 'Practice talking about Literary Analysis. Answer questions and have a simple conversation.', 'Literary Analysis', ARRAY['Use full sentences','Speak clearly','Don''t worry about mistakes']::text[], ARRAY['der Roman','der Dichter','das Gedicht','der Autor','die Literaturgeschichte']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-00006a414f0f', 'Writing: Literarische Textanalyse', 'Write a short text about Literary Analysis. Use at least 5 vocabulary words from this lesson.', ARRAY['Start with a greeting','Use the vocabulary from this lesson','Check your grammar']::text[], ARRAY['der Roman','der Dichter','das Gedicht']::text[], '["Sentence structure","Vocabulary usage"]', 50, 150, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00006a414f0f', 'Literarische Textanalyse — Roleplay', 'Literary Analysis', 'Student', 'Teacher', 'Practice conversation about Literary Analysis', 'Hallo! Lass uns über dieses Thema sprechen.', 'advanced', 1, ARRAY['der Roman','der Dichter','das Gedicht','der Autor','die Literaturgeschichte','das Drama','die Erzählung','der Stil']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00006a414f0f', 'Literarische Textanalyse — Advanced Roleplay', 'Literary Analysis', 'Customer', 'Assistant', 'Extended conversation about Literary Analysis', 'Guten Tag! Wie kann ich Ihnen helfen?', 'advanced', 2, ARRAY['der Roman','der Dichter','das Gedicht','der Autor','die Literaturgeschichte','das Drama','die Erzählung','der Stil']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-00006a414f0f', 'Literarische Textanalyse — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Literarische Textanalyse".', 'Creative practice for Literary Analysis', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-00006a414f0f', 'Homework: Literarische Textanalyse', 'Complete these tasks to reinforce "Literarische Textanalyse".', 'mixed', '[{"description":"Review all vocabulary from this lesson"},{"description":"Write 5 sentences using the grammar structure"},{"description":"Practice the dialogue aloud"}]', 35, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-00006a414f0f', 'In this lesson you learned about Literary Analysis. You practiced vocabulary related to literature and grammar structure present_tense.', '["Mastered vocabulary about Literary Analysis","Applied present_tense correctly","Read and understood a text about Literary Analysis","Practiced speaking about Literary Analysis"]', '[{"title":"Literarische Textanalyse Review","summary":"present_tense — the main grammar focus of this lesson."}]', ARRAY['Literary Analysis core vocabulary','literature key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)','Verb is always in second position']::text[], ARRAY['Practice 15-20 minutes daily','Use new vocabulary in real sentences','Speak out loud to improve pronunciation']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006a414f0f', 'translation', 'Translate to German: "This is a translation exercise."', '[]', 'Das ist eine Übersetzungsübung.', 'Use "das ist" for "this is"', 1, 40);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006a414f0f', 'Culture: Literary Analysis in German-Speaking Countries', 'Learn how Literary Analysis is approached in German culture.

تعلم كيف يتم التعامل مع Literary Analysis في الثقافة الألمانية.', '["Tip: Be direct and polite","Tip: Use formal language with strangers","Tip: Respect punctuality"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006a414f0f', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Common error for Arabic speakers","correction":"Correct version","explanation":"Explanation of the error"}]', 30);

  -- Lesson 2: Interpretation und Kritik (L-C2-02-02)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-00006a414f10', '00000000-0000-4000-a000-000039d176c0', 'Interpretation und Kritik', 'Write critical interpretations of literary works.', 'Literary Criticism', 'writing', '["Understand and use vocabulary related to Literary Criticism","Apply present_tense correctly","Read and comprehend a text about Literary Criticism","Listen and understand a dialogue about Literary Criticism","Speak about Literary Criticism in simple sentences","Write a short text about Literary Criticism"]', 65, 2, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-00006a414f10', 'der Roman', 'الرواية', 'novel', 'der', 'die Romane', 'noun', 'Der Roman ist ein Bestseller.', 'The novel is a bestseller.', 'B1', 1),
  ('00000000-0000-4000-a000-00006a414f10', 'der Dichter', 'الشاعر', 'poet', 'der', 'die Dichter', 'noun', 'Goethe war ein großer Dichter.', 'Goethe was a great poet.', 'B2', 2),
  ('00000000-0000-4000-a000-00006a414f10', 'das Gedicht', 'القصيدة', 'poem', 'das', 'die Gedichte', 'noun', 'Das Gedicht handelt von der Liebe.', 'The poem is about love.', 'B1', 3),
  ('00000000-0000-4000-a000-00006a414f10', 'der Autor', 'المؤلف', 'author', 'der', 'die Autoren', 'noun', 'Der Autor schreibt einen neuen Roman.', 'The author is writing a new novel.', 'B1', 4),
  ('00000000-0000-4000-a000-00006a414f10', 'die Literaturgeschichte', 'تاريخ الأدب', 'literary history', 'die', NULL, 'noun', 'Die deutsche Literaturgeschichte ist reich.', 'German literary history is rich.', 'C1', 5),
  ('00000000-0000-4000-a000-00006a414f10', 'das Drama', 'المسرحية', 'drama', 'das', 'die Dramen', 'noun', 'Das Drama wurde 1920 geschrieben.', 'The drama was written in 1920.', 'B2', 6),
  ('00000000-0000-4000-a000-00006a414f10', 'die Erzählung', 'القصة القصيرة', 'short story', 'die', 'die Erzählungen', 'noun', 'Die Erzählung ist bewegend.', 'The short story is moving.', 'B2', 7),
  ('00000000-0000-4000-a000-00006a414f10', 'der Stil', 'الأسلوب', 'style', 'der', 'die Stile', 'noun', 'Der Stil des Textes ist formell.', 'The style of the text is formal.', 'B2', 8),
  ('00000000-0000-4000-a000-00006a414f10', 'das Register', 'المستوى اللغوي', 'register', 'das', 'die Register', 'noun', 'Das Register passt zur Situation.', 'The register fits the situation.', 'C1', 9),
  ('00000000-0000-4000-a000-00006a414f10', 'das Stilmittel', 'الأداة الأسلوبية', 'stylistic device', 'das', 'die Stilmittel', 'noun', 'Das Stilmittel unterstreicht die Aussage.', 'The stylistic device emphasizes the statement.', 'C1', 10),
  ('00000000-0000-4000-a000-00006a414f10', 'die Alliteration', 'الجناس', 'alliteration', 'die', 'die Alliterationen', 'noun', 'Die Alliteration wiederholt den Anlaut.', 'Alliteration repeats the initial sound.', 'C2', 11),
  ('00000000-0000-4000-a000-00006a414f10', 'die Ellipse', 'الحذف', 'ellipsis', 'die', 'die Ellipsen', 'noun', 'Die Ellipse spart Wörter aus.', 'The ellipsis omits words.', 'C2', 12),
  ('00000000-0000-4000-a000-00006a414f10', 'die Hyperbel', 'المبالغة', 'hyperbole', 'die', 'die Hyperbeln', 'noun', 'Die Hyperbel übertreibt stark.', 'Hyperbole exaggerates strongly.', 'C2', 13),
  ('00000000-0000-4000-a000-00006a414f10', 'die Poetik', 'الشعرية', 'poetics', 'die', NULL, 'noun', 'Poetik ist die Theorie der Dichtkunst.', 'Poetics is the theory of poetry.', 'C2', 14),
  ('00000000-0000-4000-a000-00006a414f10', 'der Vers', 'البيت الشعري', 'verse', 'der', 'die Verse', 'noun', 'Der Vers hat fünf Hebungen.', 'The verse has five stresses.', 'C1', 15),
  ('00000000-0000-4000-a000-00006a414f10', 'der Reim', 'القافية', 'rhyme', 'der', 'die Reime', 'noun', 'Der Reim verbindet die Zeilen.', 'Rhyme connects the lines.', 'C1', 16),
  ('00000000-0000-4000-a000-00006a414f10', 'das Metrum', 'الوزن', 'meter', 'das', 'die Metren', 'noun', 'Das Metrum bestimmt den Rhythmus.', 'The meter determines the rhythm.', 'C2', 17),
  ('00000000-0000-4000-a000-00006a414f10', 'die Gattung', 'النوع الأدبي', 'genre', 'die', 'die Gattungen', 'noun', 'Lyrik ist eine literarische Gattung.', 'Lyric poetry is a literary genre.', 'C1', 18),
  ('00000000-0000-4000-a000-00006a414f10', 'die Pragmatik', 'البراغماتية', 'pragmatics', 'die', NULL, 'noun', 'Pragmatik untersucht Sprache im Kontext.', 'Pragmatics studies language in context.', 'C2', 19),
  ('00000000-0000-4000-a000-00006a414f10', 'der Sprechakt', 'فعل الكلام', 'speech act', 'der', 'die Sprechakte', 'noun', 'Der Sprechakt ändert die Wirklichkeit.', 'The speech act changes reality.', 'C2', 20),
  ('00000000-0000-4000-a000-00006a414f10', 'die Implikatur', 'الاستلزام التخاطبي', 'implicature', 'die', 'die Implikaturen', 'noun', 'Die Implikatur ist die indirekte Bedeutung.', 'Implicature is the indirect meaning.', 'C2', 21),
  ('00000000-0000-4000-a000-00006a414f10', 'der Kontext', 'السياق', 'context', 'der', 'die Kontexte', 'noun', 'Der Kontext bestimmt die Bedeutung.', 'Context determines meaning.', 'B2', 22),
  ('00000000-0000-4000-a000-00006a414f10', 'die Höflichkeit', 'الأدب / اللباقة', 'politeness', 'die', NULL, 'noun', 'Höflichkeit ist in Japan sehr wichtig.', 'Politeness is very important in Japan.', 'B2', 23),
  ('00000000-0000-4000-a000-00006a414f10', 'die Konversationsanalyse', 'تحليل المحادثة', 'conversation analysis', 'die', NULL, 'noun', 'Die Konversationsanalyse untersucht Gespräche.', 'Conversation analysis examines conversations.', 'C2', 24),
  ('00000000-0000-4000-a000-00006a414f10', 'die Bedeutung', 'المعنى', 'meaning', 'die', 'die Bedeutungen', 'noun', 'Die Bedeutung des Wortes ist klar.', 'The meaning of the word is clear.', 'B2', 25),
  ('00000000-0000-4000-a000-00006a414f10', 'die Synonymie', 'الترادف', 'synonymy', 'die', NULL, 'noun', 'Synonymie bedeutet Bedeutungsgleichheit.', 'Synonymy means sameness of meaning.', 'C2', 26),
  ('00000000-0000-4000-a000-00006a414f10', 'die Antonymie', 'التضاد', 'antonymy', 'die', NULL, 'noun', 'Antonymie bezeichnet Gegensätze.', 'Antonymy denotes opposites.', 'C2', 27),
  ('00000000-0000-4000-a000-00006a414f10', 'die Polysemie', 'تعدد المعاني', 'polysemy', 'die', NULL, 'noun', 'Polysemie hat mehrere Bedeutungen.', 'Polysemy has multiple meanings.', 'C2', 28),
  ('00000000-0000-4000-a000-00006a414f10', 'die Kompositionalität', 'التركيبية', 'compositionality', 'die', NULL, 'noun', 'Kompositionalität besagt, dass Bedeutung aus Teilen besteht.', 'Compositionality holds that meaning consists of parts.', 'C2', 29),
  ('00000000-0000-4000-a000-00006a414f10', 'die Übersetzung', 'الترجمة', 'translation', 'die', 'die Übersetzungen', 'noun', 'Die Übersetzung ist gelungen.', 'The translation is successful.', 'B2', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006a414f10', 'Präsens der regelmäßigen Verben (Present Tense) / المضارع للأفعال المنتظمة', 'In German, regular verbs follow a consistent pattern. The infinitive ends in -en. Remove the -en and add the personal endings: ich -e, du -st, er/sie/es -t, wir -en, ihr -t, sie/Sie -en. For most Arabic speakers, this is easier than Arabic verb conjugation because German has fewer forms.', '[{"rule":"ich: stem + e","note":"Ich lerne, ich wohne, ich arbeite"},{"rule":"du: stem + st","note":"Du lernst, du wohnst, du arbeitest"},{"rule":"er/sie/es: stem + t","note":"Er lernt, sie wohnt, es arbeitet"},{"rule":"wir: stem + en","note":"Wir lernen, wir wohnen, wir arbeiten"},{"rule":"ihr: stem + t","note":"Ihr lernt, ihr wohnt, ihr arbeitet"},{"rule":"sie/Sie: stem + en","note":"Sie lernen, Sie wohnen"}]', '[{"german":"Ich lerne Deutsch.","arabic":"أنا أتعلم الألمانية.","english":"I am learning German."},{"german":"Du wohnst in Berlin.","arabic":"أنت تسكن في برلين.","english":"You live in Berlin."},{"german":"Er arbeitet bei Siemens.","arabic":"هو يعمل في سيمنز.","english":"He works at Siemens."}]', '[{"mistake":"Ich lernen Deutsch","correction":"Ich lerne Deutsch","explanation":"After \"ich\" we use the stem + e, not the infinitive."},{"mistake":"Er lerne Deutsch","correction":"Er lernt Deutsch","explanation":"After \"er/sie/es\" we add -t, not -e."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006a414f10', 'multiple_choice', 'What does "der Roman" mean?', '["The","A","This","That"]', 'The', 'This is a basic vocabulary item.', 1, 1),
  ('00000000-0000-4000-a000-00006a414f10', 'fill_gap', 'Complete with the correct form.', '["Option 1","Option 2","Option 3"]', 'Option 1', 'Practice grammar in context.', 1, 2),
  ('00000000-0000-4000-a000-00006a414f10', 'translation', 'Translate: "I learn German."', '["Ich lerne Deutsch.","Ich lerne Englisch.","Ich lerne Spanisch."]', 'Ich lerne Deutsch.', 'Ich = I, lerne = learn/learning, Deutsch = German.', 2, 3),
  ('00000000-0000-4000-a000-00006a414f10', 'sentence_order', 'Order the sentence.', '[]', 'Ich lerne Deutsch.', 'Subject + verb + object in German.', 2, 4),
  ('00000000-0000-4000-a000-00006a414f10', 'matching', 'Match the words with their meanings.', '["Match pairs correctly"]', 'Correct pairs', 'Test your vocabulary knowledge.', 2, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-00006a414f10', 'multiple_choice', 'What is the main topic of this lesson?', '["Literary Criticism","Sports","Music","Travel"]', 'Literary Criticism', 1, 1),
  ('00000000-0000-4000-a000-00006a414f10', 'true_false', 'This lesson teaches vocabulary about Literary Criticism.', '["True","False"]', 'True', 1, 2),
  ('00000000-0000-4000-a000-00006a414f10', 'true_false', 'German word order is always the same as English.', '["True","False"]', 'False', 1, 3),
  ('00000000-0000-4000-a000-00006a414f10', 'multiple_choice', 'How do you say "please" in German?', '["Danke","Bitte","Tschüss","Hallo"]', 'Bitte', 1, 4),
  ('00000000-0000-4000-a000-00006a414f10', 'multiple_choice', 'Which article is feminine?', '["der","die","das","den"]', 'die', 1, 5),
  ('00000000-0000-4000-a000-00006a414f10', 'fill_blank', 'Ich ___ (to be) Student.', '["bin","bist","ist","sind"]', 'bin', 1, 6),
  ('00000000-0000-4000-a000-00006a414f10', 'multiple_choice', 'What is the correct word order?', '["Ich lerne Deutsch","Ich Deutsch lerne","Lerne ich Deutsch","Deutsch ich lerne"]', 'Ich lerne Deutsch', 1, 7),
  ('00000000-0000-4000-a000-00006a414f10', 'true_false', 'All German nouns are capitalized.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-00006a414f10', 'multiple_choice', 'How do you say "thank you" in German?', '["Bitte","Danke","Tschüss","Hallo"]', 'Danke', 1, 9),
  ('00000000-0000-4000-a000-00006a414f10', 'fill_blank', 'Wo ___ du? (to live)', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 1, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-00006a414f10', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Literatur und Interpretation', 'formal', false, 1),
  ('00000000-0000-4000-a000-00006a414f10', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Literatur und Interpretation', 'informal', false, 2),
  ('00000000-0000-4000-a000-00006a414f10', 'Bitte!', 'Please!', 'من فضلك!', 'Used in Literatur und Interpretation', 'neutral', false, 3),
  ('00000000-0000-4000-a000-00006a414f10', 'Danke!', 'Thanks!', 'شكراً!', 'Used in Literatur und Interpretation', 'neutral', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-00006a414f10', 'Hallo', 'Hello', 'Greeting', 'expression', 1),
  ('00000000-0000-4000-a000-00006a414f10', 'Danke', 'Thanks', 'Politeness', 'expression', 2),
  ('00000000-0000-4000-a000-00006a414f10', 'Bitte', 'Please', 'Politeness', 'expression', 3),
  ('00000000-0000-4000-a000-00006a414f10', 'Tschüss', 'Bye', 'Farewell', 'expression', 4);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-00006a414f10', 'Interpretation und Kritik — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, duration_seconds, speaker_count, scenario) values
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

[Lehrerin]: ممتاز! إلى الغد!', 72, 2, 'Literatur und Interpretation');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-00006a414f10', 'Speaking: Interpretation und Kritik', 'Practice talking about Literary Criticism. Answer questions and have a simple conversation.', 'Literary Criticism', ARRAY['Use full sentences','Speak clearly','Don''t worry about mistakes']::text[], ARRAY['der Roman','der Dichter','das Gedicht','der Autor','die Literaturgeschichte']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-00006a414f10', 'Writing: Interpretation und Kritik', 'Write a short text about Literary Criticism. Use at least 5 vocabulary words from this lesson.', ARRAY['Start with a greeting','Use the vocabulary from this lesson','Check your grammar']::text[], ARRAY['der Roman','der Dichter','das Gedicht']::text[], '["Sentence structure","Vocabulary usage"]', 50, 150, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00006a414f10', 'Interpretation und Kritik — Roleplay', 'Literary Criticism', 'Student', 'Teacher', 'Practice conversation about Literary Criticism', 'Hallo! Lass uns über dieses Thema sprechen.', 'advanced', 1, ARRAY['der Roman','der Dichter','das Gedicht','der Autor','die Literaturgeschichte','das Drama','die Erzählung','der Stil']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00006a414f10', 'Interpretation und Kritik — Advanced Roleplay', 'Literary Criticism', 'Customer', 'Assistant', 'Extended conversation about Literary Criticism', 'Guten Tag! Wie kann ich Ihnen helfen?', 'advanced', 2, ARRAY['der Roman','der Dichter','das Gedicht','der Autor','die Literaturgeschichte','das Drama','die Erzählung','der Stil']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-00006a414f10', 'Interpretation und Kritik — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Interpretation und Kritik".', 'Creative practice for Literary Criticism', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-00006a414f10', 'Homework: Interpretation und Kritik', 'Complete these tasks to reinforce "Interpretation und Kritik".', 'mixed', '[{"description":"Review all vocabulary from this lesson"},{"description":"Write 5 sentences using the grammar structure"},{"description":"Practice the dialogue aloud"}]', 35, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-00006a414f10', 'In this lesson you learned about Literary Criticism. You practiced vocabulary related to literature and grammar structure present_tense.', '["Mastered vocabulary about Literary Criticism","Applied present_tense correctly","Read and understood a text about Literary Criticism","Practiced speaking about Literary Criticism"]', '[{"title":"Interpretation und Kritik Review","summary":"present_tense — the main grammar focus of this lesson."}]', ARRAY['Literary Criticism core vocabulary','literature key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)','Verb is always in second position']::text[], ARRAY['Practice 15-20 minutes daily','Use new vocabulary in real sentences','Speak out loud to improve pronunciation']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006a414f10', 'translation', 'Translate to German: "This is a translation exercise."', '[]', 'Das ist eine Übersetzungsübung.', 'Use "das ist" for "this is"', 1, 40);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006a414f10', 'Culture: Literary Criticism in German-Speaking Countries', 'Learn how Literary Criticism is approached in German culture.

تعلم كيف يتم التعامل مع Literary Criticism في الثقافة الألمانية.', '["Tip: Be direct and polite","Tip: Use formal language with strangers","Tip: Respect punctuality"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006a414f10', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Common error for Arabic speakers","correction":"Correct version","explanation":"Explanation of the error"}]', 30);

  -- Lesson 3: Test: Literatur und Analyse (L-C2-02-03)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-00006a414f11', '00000000-0000-4000-a000-000039d176c0', 'Test: Literatur und Analyse', 'Module test on literature and analysis.', 'Module Test', 'test', '["Understand and use vocabulary related to Module Test","Apply present_tense correctly","Read and comprehend a text about Module Test","Listen and understand a dialogue about Module Test","Speak about Module Test in simple sentences","Write a short text about Module Test"]', 50, 3, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-00006a414f11', 'der Roman', 'الرواية', 'novel', 'der', 'die Romane', 'noun', 'Der Roman ist ein Bestseller.', 'The novel is a bestseller.', 'B1', 1),
  ('00000000-0000-4000-a000-00006a414f11', 'der Dichter', 'الشاعر', 'poet', 'der', 'die Dichter', 'noun', 'Goethe war ein großer Dichter.', 'Goethe was a great poet.', 'B2', 2),
  ('00000000-0000-4000-a000-00006a414f11', 'das Gedicht', 'القصيدة', 'poem', 'das', 'die Gedichte', 'noun', 'Das Gedicht handelt von der Liebe.', 'The poem is about love.', 'B1', 3),
  ('00000000-0000-4000-a000-00006a414f11', 'der Autor', 'المؤلف', 'author', 'der', 'die Autoren', 'noun', 'Der Autor schreibt einen neuen Roman.', 'The author is writing a new novel.', 'B1', 4),
  ('00000000-0000-4000-a000-00006a414f11', 'die Literaturgeschichte', 'تاريخ الأدب', 'literary history', 'die', NULL, 'noun', 'Die deutsche Literaturgeschichte ist reich.', 'German literary history is rich.', 'C1', 5),
  ('00000000-0000-4000-a000-00006a414f11', 'das Drama', 'المسرحية', 'drama', 'das', 'die Dramen', 'noun', 'Das Drama wurde 1920 geschrieben.', 'The drama was written in 1920.', 'B2', 6),
  ('00000000-0000-4000-a000-00006a414f11', 'die Erzählung', 'القصة القصيرة', 'short story', 'die', 'die Erzählungen', 'noun', 'Die Erzählung ist bewegend.', 'The short story is moving.', 'B2', 7),
  ('00000000-0000-4000-a000-00006a414f11', 'der Stil', 'الأسلوب', 'style', 'der', 'die Stile', 'noun', 'Der Stil des Textes ist formell.', 'The style of the text is formal.', 'B2', 8),
  ('00000000-0000-4000-a000-00006a414f11', 'das Register', 'المستوى اللغوي', 'register', 'das', 'die Register', 'noun', 'Das Register passt zur Situation.', 'The register fits the situation.', 'C1', 9),
  ('00000000-0000-4000-a000-00006a414f11', 'das Stilmittel', 'الأداة الأسلوبية', 'stylistic device', 'das', 'die Stilmittel', 'noun', 'Das Stilmittel unterstreicht die Aussage.', 'The stylistic device emphasizes the statement.', 'C1', 10),
  ('00000000-0000-4000-a000-00006a414f11', 'die Alliteration', 'الجناس', 'alliteration', 'die', 'die Alliterationen', 'noun', 'Die Alliteration wiederholt den Anlaut.', 'Alliteration repeats the initial sound.', 'C2', 11),
  ('00000000-0000-4000-a000-00006a414f11', 'die Ellipse', 'الحذف', 'ellipsis', 'die', 'die Ellipsen', 'noun', 'Die Ellipse spart Wörter aus.', 'The ellipsis omits words.', 'C2', 12),
  ('00000000-0000-4000-a000-00006a414f11', 'die Hyperbel', 'المبالغة', 'hyperbole', 'die', 'die Hyperbeln', 'noun', 'Die Hyperbel übertreibt stark.', 'Hyperbole exaggerates strongly.', 'C2', 13),
  ('00000000-0000-4000-a000-00006a414f11', 'die Poetik', 'الشعرية', 'poetics', 'die', NULL, 'noun', 'Poetik ist die Theorie der Dichtkunst.', 'Poetics is the theory of poetry.', 'C2', 14),
  ('00000000-0000-4000-a000-00006a414f11', 'der Vers', 'البيت الشعري', 'verse', 'der', 'die Verse', 'noun', 'Der Vers hat fünf Hebungen.', 'The verse has five stresses.', 'C1', 15),
  ('00000000-0000-4000-a000-00006a414f11', 'der Reim', 'القافية', 'rhyme', 'der', 'die Reime', 'noun', 'Der Reim verbindet die Zeilen.', 'Rhyme connects the lines.', 'C1', 16),
  ('00000000-0000-4000-a000-00006a414f11', 'das Metrum', 'الوزن', 'meter', 'das', 'die Metren', 'noun', 'Das Metrum bestimmt den Rhythmus.', 'The meter determines the rhythm.', 'C2', 17),
  ('00000000-0000-4000-a000-00006a414f11', 'die Gattung', 'النوع الأدبي', 'genre', 'die', 'die Gattungen', 'noun', 'Lyrik ist eine literarische Gattung.', 'Lyric poetry is a literary genre.', 'C1', 18),
  ('00000000-0000-4000-a000-00006a414f11', 'die Pragmatik', 'البراغماتية', 'pragmatics', 'die', NULL, 'noun', 'Pragmatik untersucht Sprache im Kontext.', 'Pragmatics studies language in context.', 'C2', 19),
  ('00000000-0000-4000-a000-00006a414f11', 'der Sprechakt', 'فعل الكلام', 'speech act', 'der', 'die Sprechakte', 'noun', 'Der Sprechakt ändert die Wirklichkeit.', 'The speech act changes reality.', 'C2', 20),
  ('00000000-0000-4000-a000-00006a414f11', 'die Implikatur', 'الاستلزام التخاطبي', 'implicature', 'die', 'die Implikaturen', 'noun', 'Die Implikatur ist die indirekte Bedeutung.', 'Implicature is the indirect meaning.', 'C2', 21),
  ('00000000-0000-4000-a000-00006a414f11', 'der Kontext', 'السياق', 'context', 'der', 'die Kontexte', 'noun', 'Der Kontext bestimmt die Bedeutung.', 'Context determines meaning.', 'B2', 22),
  ('00000000-0000-4000-a000-00006a414f11', 'die Höflichkeit', 'الأدب / اللباقة', 'politeness', 'die', NULL, 'noun', 'Höflichkeit ist in Japan sehr wichtig.', 'Politeness is very important in Japan.', 'B2', 23),
  ('00000000-0000-4000-a000-00006a414f11', 'die Konversationsanalyse', 'تحليل المحادثة', 'conversation analysis', 'die', NULL, 'noun', 'Die Konversationsanalyse untersucht Gespräche.', 'Conversation analysis examines conversations.', 'C2', 24),
  ('00000000-0000-4000-a000-00006a414f11', 'die Bedeutung', 'المعنى', 'meaning', 'die', 'die Bedeutungen', 'noun', 'Die Bedeutung des Wortes ist klar.', 'The meaning of the word is clear.', 'B2', 25),
  ('00000000-0000-4000-a000-00006a414f11', 'die Synonymie', 'الترادف', 'synonymy', 'die', NULL, 'noun', 'Synonymie bedeutet Bedeutungsgleichheit.', 'Synonymy means sameness of meaning.', 'C2', 26),
  ('00000000-0000-4000-a000-00006a414f11', 'die Antonymie', 'التضاد', 'antonymy', 'die', NULL, 'noun', 'Antonymie bezeichnet Gegensätze.', 'Antonymy denotes opposites.', 'C2', 27),
  ('00000000-0000-4000-a000-00006a414f11', 'die Polysemie', 'تعدد المعاني', 'polysemy', 'die', NULL, 'noun', 'Polysemie hat mehrere Bedeutungen.', 'Polysemy has multiple meanings.', 'C2', 28),
  ('00000000-0000-4000-a000-00006a414f11', 'die Kompositionalität', 'التركيبية', 'compositionality', 'die', NULL, 'noun', 'Kompositionalität besagt, dass Bedeutung aus Teilen besteht.', 'Compositionality holds that meaning consists of parts.', 'C2', 29),
  ('00000000-0000-4000-a000-00006a414f11', 'die Übersetzung', 'الترجمة', 'translation', 'die', 'die Übersetzungen', 'noun', 'Die Übersetzung ist gelungen.', 'The translation is successful.', 'B2', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006a414f11', 'Präsens der regelmäßigen Verben (Present Tense) / المضارع للأفعال المنتظمة', 'In German, regular verbs follow a consistent pattern. The infinitive ends in -en. Remove the -en and add the personal endings: ich -e, du -st, er/sie/es -t, wir -en, ihr -t, sie/Sie -en. For most Arabic speakers, this is easier than Arabic verb conjugation because German has fewer forms.', '[{"rule":"ich: stem + e","note":"Ich lerne, ich wohne, ich arbeite"},{"rule":"du: stem + st","note":"Du lernst, du wohnst, du arbeitest"},{"rule":"er/sie/es: stem + t","note":"Er lernt, sie wohnt, es arbeitet"},{"rule":"wir: stem + en","note":"Wir lernen, wir wohnen, wir arbeiten"},{"rule":"ihr: stem + t","note":"Ihr lernt, ihr wohnt, ihr arbeitet"},{"rule":"sie/Sie: stem + en","note":"Sie lernen, Sie wohnen"}]', '[{"german":"Ich lerne Deutsch.","arabic":"أنا أتعلم الألمانية.","english":"I am learning German."},{"german":"Du wohnst in Berlin.","arabic":"أنت تسكن في برلين.","english":"You live in Berlin."},{"german":"Er arbeitet bei Siemens.","arabic":"هو يعمل في سيمنز.","english":"He works at Siemens."}]', '[{"mistake":"Ich lernen Deutsch","correction":"Ich lerne Deutsch","explanation":"After \"ich\" we use the stem + e, not the infinitive."},{"mistake":"Er lerne Deutsch","correction":"Er lernt Deutsch","explanation":"After \"er/sie/es\" we add -t, not -e."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006a414f11', 'multiple_choice', 'What does "der Roman" mean?', '["The","A","This","That"]', 'The', 'This is a basic vocabulary item.', 1, 1),
  ('00000000-0000-4000-a000-00006a414f11', 'fill_gap', 'Complete with the correct form.', '["Option 1","Option 2","Option 3"]', 'Option 1', 'Practice grammar in context.', 1, 2),
  ('00000000-0000-4000-a000-00006a414f11', 'translation', 'Translate: "I learn German."', '["Ich lerne Deutsch.","Ich lerne Englisch.","Ich lerne Spanisch."]', 'Ich lerne Deutsch.', 'Ich = I, lerne = learn/learning, Deutsch = German.', 2, 3),
  ('00000000-0000-4000-a000-00006a414f11', 'sentence_order', 'Order the sentence.', '[]', 'Ich lerne Deutsch.', 'Subject + verb + object in German.', 2, 4),
  ('00000000-0000-4000-a000-00006a414f11', 'matching', 'Match the words with their meanings.', '["Match pairs correctly"]', 'Correct pairs', 'Test your vocabulary knowledge.', 2, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-00006a414f11', 'multiple_choice', 'What is the main topic of this lesson?', '["Module Test","Sports","Music","Travel"]', 'Module Test', 1, 1),
  ('00000000-0000-4000-a000-00006a414f11', 'true_false', 'This lesson teaches vocabulary about Module Test.', '["True","False"]', 'True', 1, 2),
  ('00000000-0000-4000-a000-00006a414f11', 'true_false', 'German word order is always the same as English.', '["True","False"]', 'False', 1, 3),
  ('00000000-0000-4000-a000-00006a414f11', 'multiple_choice', 'How do you say "please" in German?', '["Danke","Bitte","Tschüss","Hallo"]', 'Bitte', 1, 4),
  ('00000000-0000-4000-a000-00006a414f11', 'multiple_choice', 'Which article is feminine?', '["der","die","das","den"]', 'die', 1, 5),
  ('00000000-0000-4000-a000-00006a414f11', 'fill_blank', 'Ich ___ (to be) Student.', '["bin","bist","ist","sind"]', 'bin', 1, 6),
  ('00000000-0000-4000-a000-00006a414f11', 'multiple_choice', 'What is the correct word order?', '["Ich lerne Deutsch","Ich Deutsch lerne","Lerne ich Deutsch","Deutsch ich lerne"]', 'Ich lerne Deutsch', 1, 7),
  ('00000000-0000-4000-a000-00006a414f11', 'true_false', 'All German nouns are capitalized.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-00006a414f11', 'multiple_choice', 'How do you say "thank you" in German?', '["Bitte","Danke","Tschüss","Hallo"]', 'Danke', 1, 9),
  ('00000000-0000-4000-a000-00006a414f11', 'fill_blank', 'Wo ___ du? (to live)', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 1, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-00006a414f11', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Literatur und Interpretation', 'formal', false, 1),
  ('00000000-0000-4000-a000-00006a414f11', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Literatur und Interpretation', 'informal', false, 2),
  ('00000000-0000-4000-a000-00006a414f11', 'Bitte!', 'Please!', 'من فضلك!', 'Used in Literatur und Interpretation', 'neutral', false, 3),
  ('00000000-0000-4000-a000-00006a414f11', 'Danke!', 'Thanks!', 'شكراً!', 'Used in Literatur und Interpretation', 'neutral', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-00006a414f11', 'Hallo', 'Hello', 'Greeting', 'expression', 1),
  ('00000000-0000-4000-a000-00006a414f11', 'Danke', 'Thanks', 'Politeness', 'expression', 2),
  ('00000000-0000-4000-a000-00006a414f11', 'Bitte', 'Please', 'Politeness', 'expression', 3),
  ('00000000-0000-4000-a000-00006a414f11', 'Tschüss', 'Bye', 'Farewell', 'expression', 4);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-00006a414f11', 'Test: Literatur und Analyse — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, duration_seconds, speaker_count, scenario) values
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

[Lehrerin]: ممتاز! إلى الغد!', 72, 2, 'Literatur und Interpretation');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-00006a414f11', 'Speaking: Test: Literatur und Analyse', 'Practice talking about Module Test. Answer questions and have a simple conversation.', 'Module Test', ARRAY['Use full sentences','Speak clearly','Don''t worry about mistakes']::text[], ARRAY['der Roman','der Dichter','das Gedicht','der Autor','die Literaturgeschichte']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-00006a414f11', 'Writing: Test: Literatur und Analyse', 'Write a short text about Module Test. Use at least 5 vocabulary words from this lesson.', ARRAY['Start with a greeting','Use the vocabulary from this lesson','Check your grammar']::text[], ARRAY['der Roman','der Dichter','das Gedicht']::text[], '["Sentence structure","Vocabulary usage"]', 50, 150, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00006a414f11', 'Test: Literatur und Analyse — Roleplay', 'Module Test', 'Student', 'Teacher', 'Practice conversation about Module Test', 'Hallo! Lass uns über dieses Thema sprechen.', 'advanced', 1, ARRAY['der Roman','der Dichter','das Gedicht','der Autor','die Literaturgeschichte','das Drama','die Erzählung','der Stil']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00006a414f11', 'Test: Literatur und Analyse — Advanced Roleplay', 'Module Test', 'Customer', 'Assistant', 'Extended conversation about Module Test', 'Guten Tag! Wie kann ich Ihnen helfen?', 'advanced', 2, ARRAY['der Roman','der Dichter','das Gedicht','der Autor','die Literaturgeschichte','das Drama','die Erzählung','der Stil']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-00006a414f11', 'Test: Literatur und Analyse — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Test: Literatur und Analyse".', 'Creative practice for Module Test', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-00006a414f11', 'Homework: Test: Literatur und Analyse', 'Complete these tasks to reinforce "Test: Literatur und Analyse".', 'mixed', '[{"description":"Review all vocabulary from this lesson"},{"description":"Write 5 sentences using the grammar structure"},{"description":"Practice the dialogue aloud"}]', 35, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-00006a414f11', 'In this lesson you learned about Module Test. You practiced vocabulary related to literature and grammar structure present_tense.', '["Mastered vocabulary about Module Test","Applied present_tense correctly","Read and understood a text about Module Test","Practiced speaking about Module Test"]', '[{"title":"Test: Literatur und Analyse Review","summary":"present_tense — the main grammar focus of this lesson."}]', ARRAY['Module Test core vocabulary','literature key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)','Verb is always in second position']::text[], ARRAY['Practice 15-20 minutes daily','Use new vocabulary in real sentences','Speak out loud to improve pronunciation']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006a414f11', 'translation', 'Translate to German: "This is a translation exercise."', '[]', 'Das ist eine Übersetzungsübung.', 'Use "das ist" for "this is"', 1, 40);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006a414f11', 'Culture: Module Test in German-Speaking Countries', 'Learn how Module Test is approached in German culture.

تعلم كيف يتم التعامل مع Module Test في الثقافة الألمانية.', '["Tip: Be direct and polite","Tip: Use formal language with strangers","Tip: Respect punctuality"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006a414f11', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Common error for Arabic speakers","correction":"Correct version","explanation":"Explanation of the error"}]', 30);

  -- Module 3: Pragmatik und Diskursanalyse
  insert into public.course_modules (id, level_id, title, description, objectives, order_index, estimated_hours, is_published)
  values ('00000000-0000-4000-a000-000039d176c1', 'C2', 'Pragmatik und Diskursanalyse', 'Study language in use: pragmatics, discourse analysis, and conversation analysis.', '["Analyze speech acts and implicature","Understand discourse markers","Analyze conversational structure","Use hedging and mitigation strategies","Write discourse analytic papers"]', 3, 5, true)
  on conflict (id) do nothing;

  -- Lesson 1: Sprechakte und Implikaturen (L-C2-03-01)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-00006a41c36e', '00000000-0000-4000-a000-000039d176c1', 'Sprechakte und Implikaturen', 'Learn about speech acts and conversational implicature.', 'Speech Acts', 'vocabulary', '["Understand and use vocabulary related to Speech Acts","Apply present_tense correctly","Read and comprehend a text about Speech Acts","Listen and understand a dialogue about Speech Acts","Speak about Speech Acts in simple sentences","Write a short text about Speech Acts"]', 55, 1, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-00006a41c36e', 'die Pragmatik', 'البراغماتية', 'pragmatics', 'die', NULL, 'noun', 'Pragmatik untersucht Sprache im Kontext.', 'Pragmatics studies language in context.', 'C2', 1),
  ('00000000-0000-4000-a000-00006a41c36e', 'der Sprechakt', 'فعل الكلام', 'speech act', 'der', 'die Sprechakte', 'noun', 'Der Sprechakt ändert die Wirklichkeit.', 'The speech act changes reality.', 'C2', 2),
  ('00000000-0000-4000-a000-00006a41c36e', 'die Implikatur', 'الاستلزام التخاطبي', 'implicature', 'die', 'die Implikaturen', 'noun', 'Die Implikatur ist die indirekte Bedeutung.', 'Implicature is the indirect meaning.', 'C2', 3),
  ('00000000-0000-4000-a000-00006a41c36e', 'der Kontext', 'السياق', 'context', 'der', 'die Kontexte', 'noun', 'Der Kontext bestimmt die Bedeutung.', 'Context determines meaning.', 'B2', 4),
  ('00000000-0000-4000-a000-00006a41c36e', 'die Höflichkeit', 'الأدب / اللباقة', 'politeness', 'die', NULL, 'noun', 'Höflichkeit ist in Japan sehr wichtig.', 'Politeness is very important in Japan.', 'B2', 5),
  ('00000000-0000-4000-a000-00006a41c36e', 'die Konversationsanalyse', 'تحليل المحادثة', 'conversation analysis', 'die', NULL, 'noun', 'Die Konversationsanalyse untersucht Gespräche.', 'Conversation analysis examines conversations.', 'C2', 6),
  ('00000000-0000-4000-a000-00006a41c36e', 'der Stil', 'الأسلوب', 'style', 'der', 'die Stile', 'noun', 'Der Stil des Textes ist formell.', 'The style of the text is formal.', 'B2', 7),
  ('00000000-0000-4000-a000-00006a41c36e', 'das Register', 'المستوى اللغوي', 'register', 'das', 'die Register', 'noun', 'Das Register passt zur Situation.', 'The register fits the situation.', 'C1', 8),
  ('00000000-0000-4000-a000-00006a41c36e', 'das Stilmittel', 'الأداة الأسلوبية', 'stylistic device', 'das', 'die Stilmittel', 'noun', 'Das Stilmittel unterstreicht die Aussage.', 'The stylistic device emphasizes the statement.', 'C1', 9),
  ('00000000-0000-4000-a000-00006a41c36e', 'die Alliteration', 'الجناس', 'alliteration', 'die', 'die Alliterationen', 'noun', 'Die Alliteration wiederholt den Anlaut.', 'Alliteration repeats the initial sound.', 'C2', 10),
  ('00000000-0000-4000-a000-00006a41c36e', 'die Ellipse', 'الحذف', 'ellipsis', 'die', 'die Ellipsen', 'noun', 'Die Ellipse spart Wörter aus.', 'The ellipsis omits words.', 'C2', 11),
  ('00000000-0000-4000-a000-00006a41c36e', 'die Hyperbel', 'المبالغة', 'hyperbole', 'die', 'die Hyperbeln', 'noun', 'Die Hyperbel übertreibt stark.', 'Hyperbole exaggerates strongly.', 'C2', 12),
  ('00000000-0000-4000-a000-00006a41c36e', 'die Poetik', 'الشعرية', 'poetics', 'die', NULL, 'noun', 'Poetik ist die Theorie der Dichtkunst.', 'Poetics is the theory of poetry.', 'C2', 13),
  ('00000000-0000-4000-a000-00006a41c36e', 'der Vers', 'البيت الشعري', 'verse', 'der', 'die Verse', 'noun', 'Der Vers hat fünf Hebungen.', 'The verse has five stresses.', 'C1', 14),
  ('00000000-0000-4000-a000-00006a41c36e', 'der Reim', 'القافية', 'rhyme', 'der', 'die Reime', 'noun', 'Der Reim verbindet die Zeilen.', 'Rhyme connects the lines.', 'C1', 15),
  ('00000000-0000-4000-a000-00006a41c36e', 'das Metrum', 'الوزن', 'meter', 'das', 'die Metren', 'noun', 'Das Metrum bestimmt den Rhythmus.', 'The meter determines the rhythm.', 'C2', 16),
  ('00000000-0000-4000-a000-00006a41c36e', 'die Gattung', 'النوع الأدبي', 'genre', 'die', 'die Gattungen', 'noun', 'Lyrik ist eine literarische Gattung.', 'Lyric poetry is a literary genre.', 'C1', 17),
  ('00000000-0000-4000-a000-00006a41c36e', 'die Bedeutung', 'المعنى', 'meaning', 'die', 'die Bedeutungen', 'noun', 'Die Bedeutung des Wortes ist klar.', 'The meaning of the word is clear.', 'B2', 18),
  ('00000000-0000-4000-a000-00006a41c36e', 'die Synonymie', 'الترادف', 'synonymy', 'die', NULL, 'noun', 'Synonymie bedeutet Bedeutungsgleichheit.', 'Synonymy means sameness of meaning.', 'C2', 19),
  ('00000000-0000-4000-a000-00006a41c36e', 'die Antonymie', 'التضاد', 'antonymy', 'die', NULL, 'noun', 'Antonymie bezeichnet Gegensätze.', 'Antonymy denotes opposites.', 'C2', 20),
  ('00000000-0000-4000-a000-00006a41c36e', 'die Polysemie', 'تعدد المعاني', 'polysemy', 'die', NULL, 'noun', 'Polysemie hat mehrere Bedeutungen.', 'Polysemy has multiple meanings.', 'C2', 21),
  ('00000000-0000-4000-a000-00006a41c36e', 'die Kompositionalität', 'التركيبية', 'compositionality', 'die', NULL, 'noun', 'Kompositionalität besagt, dass Bedeutung aus Teilen besteht.', 'Compositionality holds that meaning consists of parts.', 'C2', 22),
  ('00000000-0000-4000-a000-00006a41c36e', 'die Übersetzung', 'الترجمة', 'translation', 'die', 'die Übersetzungen', 'noun', 'Die Übersetzung ist gelungen.', 'The translation is successful.', 'B2', 23),
  ('00000000-0000-4000-a000-00006a41c36e', 'übersetzen', 'يترجم', 'to translate', NULL, NULL, 'verb', 'Ich übersetze den Text ins Arabische.', 'I translate the text into Arabic.', 'B1', 24),
  ('00000000-0000-4000-a000-00006a41c36e', 'der Dolmetscher', 'المترجم الفوري', 'interpreter', 'der', 'die Dolmetscher', 'noun', 'Der Dolmetscher übersetzt mündlich.', 'The interpreter translates orally.', 'B2', 25),
  ('00000000-0000-4000-a000-00006a41c36e', 'die Muttersprache', 'اللغة الأم', 'native language', 'die', 'die Muttersprachen', 'noun', 'Meine Muttersprache ist Arabisch.', 'My native language is Arabic.', 'B1', 26),
  ('00000000-0000-4000-a000-00006a41c36e', 'falscher Freund', 'الصديق المزيف', 'false friend', NULL, NULL, 'noun', 'Ein falscher Freund sieht ähnlich aus, bedeutet aber etwas anderes.', 'A false friend looks similar but means something different.', 'C1', 27),
  ('00000000-0000-4000-a000-00006a41c36e', 'die Sprachmittlung', 'الوساطة اللغوية', 'language mediation', 'die', NULL, 'noun', 'Sprachmittlung vermittelt zwischen Kulturen.', 'Language mediation bridges between cultures.', 'C2', 28),
  ('00000000-0000-4000-a000-00006a41c36e', 'die Äquivalenz', 'التكافؤ', 'equivalence', 'die', NULL, 'noun', 'Äquivalenz in der Übersetzung ist ein Ideal.', 'Equivalence in translation is an ideal.', 'C2', 29),
  ('00000000-0000-4000-a000-00006a41c36e', 'der Dialekt', 'اللهجة', 'dialect', 'der', 'die Dialekte', 'noun', 'Der bayerische Dialekt ist schwer zu verstehen.', 'The Bavarian dialect is hard to understand.', 'B2', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006a41c36e', 'Präsens der regelmäßigen Verben (Present Tense) / المضارع للأفعال المنتظمة', 'In German, regular verbs follow a consistent pattern. The infinitive ends in -en. Remove the -en and add the personal endings: ich -e, du -st, er/sie/es -t, wir -en, ihr -t, sie/Sie -en. For most Arabic speakers, this is easier than Arabic verb conjugation because German has fewer forms.', '[{"rule":"ich: stem + e","note":"Ich lerne, ich wohne, ich arbeite"},{"rule":"du: stem + st","note":"Du lernst, du wohnst, du arbeitest"},{"rule":"er/sie/es: stem + t","note":"Er lernt, sie wohnt, es arbeitet"},{"rule":"wir: stem + en","note":"Wir lernen, wir wohnen, wir arbeiten"},{"rule":"ihr: stem + t","note":"Ihr lernt, ihr wohnt, ihr arbeitet"},{"rule":"sie/Sie: stem + en","note":"Sie lernen, Sie wohnen"}]', '[{"german":"Ich lerne Deutsch.","arabic":"أنا أتعلم الألمانية.","english":"I am learning German."},{"german":"Du wohnst in Berlin.","arabic":"أنت تسكن في برلين.","english":"You live in Berlin."},{"german":"Er arbeitet bei Siemens.","arabic":"هو يعمل في سيمنز.","english":"He works at Siemens."}]', '[{"mistake":"Ich lernen Deutsch","correction":"Ich lerne Deutsch","explanation":"After \"ich\" we use the stem + e, not the infinitive."},{"mistake":"Er lerne Deutsch","correction":"Er lernt Deutsch","explanation":"After \"er/sie/es\" we add -t, not -e."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006a41c36e', 'multiple_choice', 'What does "die Pragmatik" mean?', '["The","A","This","That"]', 'The', 'This is a basic vocabulary item.', 1, 1),
  ('00000000-0000-4000-a000-00006a41c36e', 'fill_gap', 'Complete with the correct form.', '["Option 1","Option 2","Option 3"]', 'Option 1', 'Practice grammar in context.', 1, 2),
  ('00000000-0000-4000-a000-00006a41c36e', 'translation', 'Translate: "I learn German."', '["Ich lerne Deutsch.","Ich lerne Englisch.","Ich lerne Spanisch."]', 'Ich lerne Deutsch.', 'Ich = I, lerne = learn/learning, Deutsch = German.', 2, 3),
  ('00000000-0000-4000-a000-00006a41c36e', 'sentence_order', 'Order the sentence.', '[]', 'Ich lerne Deutsch.', 'Subject + verb + object in German.', 2, 4),
  ('00000000-0000-4000-a000-00006a41c36e', 'matching', 'Match the words with their meanings.', '["Match pairs correctly"]', 'Correct pairs', 'Test your vocabulary knowledge.', 2, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-00006a41c36e', 'multiple_choice', 'What is the main topic of this lesson?', '["Speech Acts","Sports","Music","Travel"]', 'Speech Acts', 1, 1),
  ('00000000-0000-4000-a000-00006a41c36e', 'true_false', 'This lesson teaches vocabulary about Speech Acts.', '["True","False"]', 'True', 1, 2),
  ('00000000-0000-4000-a000-00006a41c36e', 'true_false', 'German word order is always the same as English.', '["True","False"]', 'False', 1, 3),
  ('00000000-0000-4000-a000-00006a41c36e', 'multiple_choice', 'How do you say "please" in German?', '["Danke","Bitte","Tschüss","Hallo"]', 'Bitte', 1, 4),
  ('00000000-0000-4000-a000-00006a41c36e', 'multiple_choice', 'Which article is feminine?', '["der","die","das","den"]', 'die', 1, 5),
  ('00000000-0000-4000-a000-00006a41c36e', 'fill_blank', 'Ich ___ (to be) Student.', '["bin","bist","ist","sind"]', 'bin', 1, 6),
  ('00000000-0000-4000-a000-00006a41c36e', 'multiple_choice', 'What is the correct word order?', '["Ich lerne Deutsch","Ich Deutsch lerne","Lerne ich Deutsch","Deutsch ich lerne"]', 'Ich lerne Deutsch', 1, 7),
  ('00000000-0000-4000-a000-00006a41c36e', 'true_false', 'All German nouns are capitalized.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-00006a41c36e', 'multiple_choice', 'How do you say "thank you" in German?', '["Bitte","Danke","Tschüss","Hallo"]', 'Danke', 1, 9),
  ('00000000-0000-4000-a000-00006a41c36e', 'fill_blank', 'Wo ___ du? (to live)', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 1, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-00006a41c36e', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Pragmatik und Diskursanalyse', 'formal', false, 1),
  ('00000000-0000-4000-a000-00006a41c36e', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Pragmatik und Diskursanalyse', 'informal', false, 2),
  ('00000000-0000-4000-a000-00006a41c36e', 'Bitte!', 'Please!', 'من فضلك!', 'Used in Pragmatik und Diskursanalyse', 'neutral', false, 3),
  ('00000000-0000-4000-a000-00006a41c36e', 'Danke!', 'Thanks!', 'شكراً!', 'Used in Pragmatik und Diskursanalyse', 'neutral', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-00006a41c36e', 'Hallo', 'Hello', 'Greeting', 'expression', 1),
  ('00000000-0000-4000-a000-00006a41c36e', 'Danke', 'Thanks', 'Politeness', 'expression', 2),
  ('00000000-0000-4000-a000-00006a41c36e', 'Bitte', 'Please', 'Politeness', 'expression', 3),
  ('00000000-0000-4000-a000-00006a41c36e', 'Tschüss', 'Bye', 'Farewell', 'expression', 4);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-00006a41c36e', 'Sprechakte und Implikaturen — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, duration_seconds, speaker_count, scenario) values
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

[Lehrerin]: ممتاز! إلى الغد!', 72, 2, 'Pragmatik und Diskursanalyse');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-00006a41c36e', 'Speaking: Sprechakte und Implikaturen', 'Practice talking about Speech Acts. Answer questions and have a simple conversation.', 'Speech Acts', ARRAY['Use full sentences','Speak clearly','Don''t worry about mistakes']::text[], ARRAY['die Pragmatik','der Sprechakt','die Implikatur','der Kontext','die Höflichkeit']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-00006a41c36e', 'Writing: Sprechakte und Implikaturen', 'Write a short text about Speech Acts. Use at least 5 vocabulary words from this lesson.', ARRAY['Start with a greeting','Use the vocabulary from this lesson','Check your grammar']::text[], ARRAY['die Pragmatik','der Sprechakt','die Implikatur']::text[], '["Sentence structure","Vocabulary usage"]', 50, 150, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00006a41c36e', 'Sprechakte und Implikaturen — Roleplay', 'Speech Acts', 'Student', 'Teacher', 'Practice conversation about Speech Acts', 'Hallo! Lass uns über dieses Thema sprechen.', 'advanced', 1, ARRAY['die Pragmatik','der Sprechakt','die Implikatur','der Kontext','die Höflichkeit','die Konversationsanalyse','der Stil','das Register']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00006a41c36e', 'Sprechakte und Implikaturen — Advanced Roleplay', 'Speech Acts', 'Customer', 'Assistant', 'Extended conversation about Speech Acts', 'Guten Tag! Wie kann ich Ihnen helfen?', 'advanced', 2, ARRAY['die Pragmatik','der Sprechakt','die Implikatur','der Kontext','die Höflichkeit','die Konversationsanalyse','der Stil','das Register']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-00006a41c36e', 'Sprechakte und Implikaturen — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Sprechakte und Implikaturen".', 'Creative practice for Speech Acts', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-00006a41c36e', 'Homework: Sprechakte und Implikaturen', 'Complete these tasks to reinforce "Sprechakte und Implikaturen".', 'mixed', '[{"description":"Review all vocabulary from this lesson"},{"description":"Write 5 sentences using the grammar structure"},{"description":"Practice the dialogue aloud"}]', 35, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-00006a41c36e', 'In this lesson you learned about Speech Acts. You practiced vocabulary related to pragmatics and grammar structure present_tense.', '["Mastered vocabulary about Speech Acts","Applied present_tense correctly","Read and understood a text about Speech Acts","Practiced speaking about Speech Acts"]', '[{"title":"Sprechakte und Implikaturen Review","summary":"present_tense — the main grammar focus of this lesson."}]', ARRAY['Speech Acts core vocabulary','pragmatics key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)','Verb is always in second position']::text[], ARRAY['Practice 15-20 minutes daily','Use new vocabulary in real sentences','Speak out loud to improve pronunciation']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006a41c36e', 'translation', 'Translate to German: "This is a translation exercise."', '[]', 'Das ist eine Übersetzungsübung.', 'Use "das ist" for "this is"', 1, 40);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006a41c36e', 'Culture: Speech Acts in German-Speaking Countries', 'Learn how Speech Acts is approached in German culture.

تعلم كيف يتم التعامل مع Speech Acts في الثقافة الألمانية.', '["Tip: Be direct and polite","Tip: Use formal language with strangers","Tip: Respect punctuality"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006a41c36e', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Common error for Arabic speakers","correction":"Correct version","explanation":"Explanation of the error"}]', 30);

  -- Lesson 2: Diskursmarker und Kohärenz (L-C2-03-02)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-00006a41c36f', '00000000-0000-4000-a000-000039d176c1', 'Diskursmarker und Kohärenz', 'Master discourse markers for text coherence.', 'Discourse Markers', 'grammar', '["Understand and use vocabulary related to Discourse Markers","Apply present_tense correctly","Read and comprehend a text about Discourse Markers","Listen and understand a dialogue about Discourse Markers","Speak about Discourse Markers in simple sentences","Write a short text about Discourse Markers"]', 55, 2, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-00006a41c36f', 'die Pragmatik', 'البراغماتية', 'pragmatics', 'die', NULL, 'noun', 'Pragmatik untersucht Sprache im Kontext.', 'Pragmatics studies language in context.', 'C2', 1),
  ('00000000-0000-4000-a000-00006a41c36f', 'der Sprechakt', 'فعل الكلام', 'speech act', 'der', 'die Sprechakte', 'noun', 'Der Sprechakt ändert die Wirklichkeit.', 'The speech act changes reality.', 'C2', 2),
  ('00000000-0000-4000-a000-00006a41c36f', 'die Implikatur', 'الاستلزام التخاطبي', 'implicature', 'die', 'die Implikaturen', 'noun', 'Die Implikatur ist die indirekte Bedeutung.', 'Implicature is the indirect meaning.', 'C2', 3),
  ('00000000-0000-4000-a000-00006a41c36f', 'der Kontext', 'السياق', 'context', 'der', 'die Kontexte', 'noun', 'Der Kontext bestimmt die Bedeutung.', 'Context determines meaning.', 'B2', 4),
  ('00000000-0000-4000-a000-00006a41c36f', 'die Höflichkeit', 'الأدب / اللباقة', 'politeness', 'die', NULL, 'noun', 'Höflichkeit ist in Japan sehr wichtig.', 'Politeness is very important in Japan.', 'B2', 5),
  ('00000000-0000-4000-a000-00006a41c36f', 'die Konversationsanalyse', 'تحليل المحادثة', 'conversation analysis', 'die', NULL, 'noun', 'Die Konversationsanalyse untersucht Gespräche.', 'Conversation analysis examines conversations.', 'C2', 6),
  ('00000000-0000-4000-a000-00006a41c36f', 'der Stil', 'الأسلوب', 'style', 'der', 'die Stile', 'noun', 'Der Stil des Textes ist formell.', 'The style of the text is formal.', 'B2', 7),
  ('00000000-0000-4000-a000-00006a41c36f', 'das Register', 'المستوى اللغوي', 'register', 'das', 'die Register', 'noun', 'Das Register passt zur Situation.', 'The register fits the situation.', 'C1', 8),
  ('00000000-0000-4000-a000-00006a41c36f', 'das Stilmittel', 'الأداة الأسلوبية', 'stylistic device', 'das', 'die Stilmittel', 'noun', 'Das Stilmittel unterstreicht die Aussage.', 'The stylistic device emphasizes the statement.', 'C1', 9),
  ('00000000-0000-4000-a000-00006a41c36f', 'die Alliteration', 'الجناس', 'alliteration', 'die', 'die Alliterationen', 'noun', 'Die Alliteration wiederholt den Anlaut.', 'Alliteration repeats the initial sound.', 'C2', 10),
  ('00000000-0000-4000-a000-00006a41c36f', 'die Ellipse', 'الحذف', 'ellipsis', 'die', 'die Ellipsen', 'noun', 'Die Ellipse spart Wörter aus.', 'The ellipsis omits words.', 'C2', 11),
  ('00000000-0000-4000-a000-00006a41c36f', 'die Hyperbel', 'المبالغة', 'hyperbole', 'die', 'die Hyperbeln', 'noun', 'Die Hyperbel übertreibt stark.', 'Hyperbole exaggerates strongly.', 'C2', 12),
  ('00000000-0000-4000-a000-00006a41c36f', 'die Poetik', 'الشعرية', 'poetics', 'die', NULL, 'noun', 'Poetik ist die Theorie der Dichtkunst.', 'Poetics is the theory of poetry.', 'C2', 13),
  ('00000000-0000-4000-a000-00006a41c36f', 'der Vers', 'البيت الشعري', 'verse', 'der', 'die Verse', 'noun', 'Der Vers hat fünf Hebungen.', 'The verse has five stresses.', 'C1', 14),
  ('00000000-0000-4000-a000-00006a41c36f', 'der Reim', 'القافية', 'rhyme', 'der', 'die Reime', 'noun', 'Der Reim verbindet die Zeilen.', 'Rhyme connects the lines.', 'C1', 15),
  ('00000000-0000-4000-a000-00006a41c36f', 'das Metrum', 'الوزن', 'meter', 'das', 'die Metren', 'noun', 'Das Metrum bestimmt den Rhythmus.', 'The meter determines the rhythm.', 'C2', 16),
  ('00000000-0000-4000-a000-00006a41c36f', 'die Gattung', 'النوع الأدبي', 'genre', 'die', 'die Gattungen', 'noun', 'Lyrik ist eine literarische Gattung.', 'Lyric poetry is a literary genre.', 'C1', 17),
  ('00000000-0000-4000-a000-00006a41c36f', 'die Bedeutung', 'المعنى', 'meaning', 'die', 'die Bedeutungen', 'noun', 'Die Bedeutung des Wortes ist klar.', 'The meaning of the word is clear.', 'B2', 18),
  ('00000000-0000-4000-a000-00006a41c36f', 'die Synonymie', 'الترادف', 'synonymy', 'die', NULL, 'noun', 'Synonymie bedeutet Bedeutungsgleichheit.', 'Synonymy means sameness of meaning.', 'C2', 19),
  ('00000000-0000-4000-a000-00006a41c36f', 'die Antonymie', 'التضاد', 'antonymy', 'die', NULL, 'noun', 'Antonymie bezeichnet Gegensätze.', 'Antonymy denotes opposites.', 'C2', 20),
  ('00000000-0000-4000-a000-00006a41c36f', 'die Polysemie', 'تعدد المعاني', 'polysemy', 'die', NULL, 'noun', 'Polysemie hat mehrere Bedeutungen.', 'Polysemy has multiple meanings.', 'C2', 21),
  ('00000000-0000-4000-a000-00006a41c36f', 'die Kompositionalität', 'التركيبية', 'compositionality', 'die', NULL, 'noun', 'Kompositionalität besagt, dass Bedeutung aus Teilen besteht.', 'Compositionality holds that meaning consists of parts.', 'C2', 22),
  ('00000000-0000-4000-a000-00006a41c36f', 'die Übersetzung', 'الترجمة', 'translation', 'die', 'die Übersetzungen', 'noun', 'Die Übersetzung ist gelungen.', 'The translation is successful.', 'B2', 23),
  ('00000000-0000-4000-a000-00006a41c36f', 'übersetzen', 'يترجم', 'to translate', NULL, NULL, 'verb', 'Ich übersetze den Text ins Arabische.', 'I translate the text into Arabic.', 'B1', 24),
  ('00000000-0000-4000-a000-00006a41c36f', 'der Dolmetscher', 'المترجم الفوري', 'interpreter', 'der', 'die Dolmetscher', 'noun', 'Der Dolmetscher übersetzt mündlich.', 'The interpreter translates orally.', 'B2', 25),
  ('00000000-0000-4000-a000-00006a41c36f', 'die Muttersprache', 'اللغة الأم', 'native language', 'die', 'die Muttersprachen', 'noun', 'Meine Muttersprache ist Arabisch.', 'My native language is Arabic.', 'B1', 26),
  ('00000000-0000-4000-a000-00006a41c36f', 'falscher Freund', 'الصديق المزيف', 'false friend', NULL, NULL, 'noun', 'Ein falscher Freund sieht ähnlich aus, bedeutet aber etwas anderes.', 'A false friend looks similar but means something different.', 'C1', 27),
  ('00000000-0000-4000-a000-00006a41c36f', 'die Sprachmittlung', 'الوساطة اللغوية', 'language mediation', 'die', NULL, 'noun', 'Sprachmittlung vermittelt zwischen Kulturen.', 'Language mediation bridges between cultures.', 'C2', 28),
  ('00000000-0000-4000-a000-00006a41c36f', 'die Äquivalenz', 'التكافؤ', 'equivalence', 'die', NULL, 'noun', 'Äquivalenz in der Übersetzung ist ein Ideal.', 'Equivalence in translation is an ideal.', 'C2', 29),
  ('00000000-0000-4000-a000-00006a41c36f', 'der Dialekt', 'اللهجة', 'dialect', 'der', 'die Dialekte', 'noun', 'Der bayerische Dialekt ist schwer zu verstehen.', 'The Bavarian dialect is hard to understand.', 'B2', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006a41c36f', 'Präsens der regelmäßigen Verben (Present Tense) / المضارع للأفعال المنتظمة', 'In German, regular verbs follow a consistent pattern. The infinitive ends in -en. Remove the -en and add the personal endings: ich -e, du -st, er/sie/es -t, wir -en, ihr -t, sie/Sie -en. For most Arabic speakers, this is easier than Arabic verb conjugation because German has fewer forms.', '[{"rule":"ich: stem + e","note":"Ich lerne, ich wohne, ich arbeite"},{"rule":"du: stem + st","note":"Du lernst, du wohnst, du arbeitest"},{"rule":"er/sie/es: stem + t","note":"Er lernt, sie wohnt, es arbeitet"},{"rule":"wir: stem + en","note":"Wir lernen, wir wohnen, wir arbeiten"},{"rule":"ihr: stem + t","note":"Ihr lernt, ihr wohnt, ihr arbeitet"},{"rule":"sie/Sie: stem + en","note":"Sie lernen, Sie wohnen"}]', '[{"german":"Ich lerne Deutsch.","arabic":"أنا أتعلم الألمانية.","english":"I am learning German."},{"german":"Du wohnst in Berlin.","arabic":"أنت تسكن في برلين.","english":"You live in Berlin."},{"german":"Er arbeitet bei Siemens.","arabic":"هو يعمل في سيمنز.","english":"He works at Siemens."}]', '[{"mistake":"Ich lernen Deutsch","correction":"Ich lerne Deutsch","explanation":"After \"ich\" we use the stem + e, not the infinitive."},{"mistake":"Er lerne Deutsch","correction":"Er lernt Deutsch","explanation":"After \"er/sie/es\" we add -t, not -e."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006a41c36f', 'multiple_choice', 'What does "die Pragmatik" mean?', '["The","A","This","That"]', 'The', 'This is a basic vocabulary item.', 1, 1),
  ('00000000-0000-4000-a000-00006a41c36f', 'fill_gap', 'Complete with the correct form.', '["Option 1","Option 2","Option 3"]', 'Option 1', 'Practice grammar in context.', 1, 2),
  ('00000000-0000-4000-a000-00006a41c36f', 'translation', 'Translate: "I learn German."', '["Ich lerne Deutsch.","Ich lerne Englisch.","Ich lerne Spanisch."]', 'Ich lerne Deutsch.', 'Ich = I, lerne = learn/learning, Deutsch = German.', 2, 3),
  ('00000000-0000-4000-a000-00006a41c36f', 'sentence_order', 'Order the sentence.', '[]', 'Ich lerne Deutsch.', 'Subject + verb + object in German.', 2, 4),
  ('00000000-0000-4000-a000-00006a41c36f', 'matching', 'Match the words with their meanings.', '["Match pairs correctly"]', 'Correct pairs', 'Test your vocabulary knowledge.', 2, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-00006a41c36f', 'multiple_choice', 'What is the main topic of this lesson?', '["Discourse Markers","Sports","Music","Travel"]', 'Discourse Markers', 1, 1),
  ('00000000-0000-4000-a000-00006a41c36f', 'true_false', 'This lesson teaches vocabulary about Discourse Markers.', '["True","False"]', 'True', 1, 2),
  ('00000000-0000-4000-a000-00006a41c36f', 'true_false', 'German word order is always the same as English.', '["True","False"]', 'False', 1, 3),
  ('00000000-0000-4000-a000-00006a41c36f', 'multiple_choice', 'How do you say "please" in German?', '["Danke","Bitte","Tschüss","Hallo"]', 'Bitte', 1, 4),
  ('00000000-0000-4000-a000-00006a41c36f', 'multiple_choice', 'Which article is feminine?', '["der","die","das","den"]', 'die', 1, 5),
  ('00000000-0000-4000-a000-00006a41c36f', 'fill_blank', 'Ich ___ (to be) Student.', '["bin","bist","ist","sind"]', 'bin', 1, 6),
  ('00000000-0000-4000-a000-00006a41c36f', 'multiple_choice', 'What is the correct word order?', '["Ich lerne Deutsch","Ich Deutsch lerne","Lerne ich Deutsch","Deutsch ich lerne"]', 'Ich lerne Deutsch', 1, 7),
  ('00000000-0000-4000-a000-00006a41c36f', 'true_false', 'All German nouns are capitalized.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-00006a41c36f', 'multiple_choice', 'How do you say "thank you" in German?', '["Bitte","Danke","Tschüss","Hallo"]', 'Danke', 1, 9),
  ('00000000-0000-4000-a000-00006a41c36f', 'fill_blank', 'Wo ___ du? (to live)', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 1, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-00006a41c36f', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Pragmatik und Diskursanalyse', 'formal', false, 1),
  ('00000000-0000-4000-a000-00006a41c36f', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Pragmatik und Diskursanalyse', 'informal', false, 2),
  ('00000000-0000-4000-a000-00006a41c36f', 'Bitte!', 'Please!', 'من فضلك!', 'Used in Pragmatik und Diskursanalyse', 'neutral', false, 3),
  ('00000000-0000-4000-a000-00006a41c36f', 'Danke!', 'Thanks!', 'شكراً!', 'Used in Pragmatik und Diskursanalyse', 'neutral', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-00006a41c36f', 'Hallo', 'Hello', 'Greeting', 'expression', 1),
  ('00000000-0000-4000-a000-00006a41c36f', 'Danke', 'Thanks', 'Politeness', 'expression', 2),
  ('00000000-0000-4000-a000-00006a41c36f', 'Bitte', 'Please', 'Politeness', 'expression', 3),
  ('00000000-0000-4000-a000-00006a41c36f', 'Tschüss', 'Bye', 'Farewell', 'expression', 4);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-00006a41c36f', 'Diskursmarker und Kohärenz — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, duration_seconds, speaker_count, scenario) values
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

[Lehrerin]: ممتاز! إلى الغد!', 72, 2, 'Pragmatik und Diskursanalyse');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-00006a41c36f', 'Speaking: Diskursmarker und Kohärenz', 'Practice talking about Discourse Markers. Answer questions and have a simple conversation.', 'Discourse Markers', ARRAY['Use full sentences','Speak clearly','Don''t worry about mistakes']::text[], ARRAY['die Pragmatik','der Sprechakt','die Implikatur','der Kontext','die Höflichkeit']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-00006a41c36f', 'Writing: Diskursmarker und Kohärenz', 'Write a short text about Discourse Markers. Use at least 5 vocabulary words from this lesson.', ARRAY['Start with a greeting','Use the vocabulary from this lesson','Check your grammar']::text[], ARRAY['die Pragmatik','der Sprechakt','die Implikatur']::text[], '["Sentence structure","Vocabulary usage"]', 50, 150, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00006a41c36f', 'Diskursmarker und Kohärenz — Roleplay', 'Discourse Markers', 'Student', 'Teacher', 'Practice conversation about Discourse Markers', 'Hallo! Lass uns über dieses Thema sprechen.', 'advanced', 1, ARRAY['die Pragmatik','der Sprechakt','die Implikatur','der Kontext','die Höflichkeit','die Konversationsanalyse','der Stil','das Register']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00006a41c36f', 'Diskursmarker und Kohärenz — Advanced Roleplay', 'Discourse Markers', 'Customer', 'Assistant', 'Extended conversation about Discourse Markers', 'Guten Tag! Wie kann ich Ihnen helfen?', 'advanced', 2, ARRAY['die Pragmatik','der Sprechakt','die Implikatur','der Kontext','die Höflichkeit','die Konversationsanalyse','der Stil','das Register']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-00006a41c36f', 'Diskursmarker und Kohärenz — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Diskursmarker und Kohärenz".', 'Creative practice for Discourse Markers', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-00006a41c36f', 'Homework: Diskursmarker und Kohärenz', 'Complete these tasks to reinforce "Diskursmarker und Kohärenz".', 'mixed', '[{"description":"Review all vocabulary from this lesson"},{"description":"Write 5 sentences using the grammar structure"},{"description":"Practice the dialogue aloud"}]', 35, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-00006a41c36f', 'In this lesson you learned about Discourse Markers. You practiced vocabulary related to pragmatics and grammar structure present_tense.', '["Mastered vocabulary about Discourse Markers","Applied present_tense correctly","Read and understood a text about Discourse Markers","Practiced speaking about Discourse Markers"]', '[{"title":"Diskursmarker und Kohärenz Review","summary":"present_tense — the main grammar focus of this lesson."}]', ARRAY['Discourse Markers core vocabulary','pragmatics key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)','Verb is always in second position']::text[], ARRAY['Practice 15-20 minutes daily','Use new vocabulary in real sentences','Speak out loud to improve pronunciation']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006a41c36f', 'translation', 'Translate to German: "This is a translation exercise."', '[]', 'Das ist eine Übersetzungsübung.', 'Use "das ist" for "this is"', 1, 40);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006a41c36f', 'Culture: Discourse Markers in German-Speaking Countries', 'Learn how Discourse Markers is approached in German culture.

تعلم كيف يتم التعامل مع Discourse Markers في الثقافة الألمانية.', '["Tip: Be direct and polite","Tip: Use formal language with strangers","Tip: Respect punctuality"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006a41c36f', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Common error for Arabic speakers","correction":"Correct version","explanation":"Explanation of the error"}]', 30);

  -- Lesson 3: Test: Pragmatik und Diskurs (L-C2-03-03)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-00006a41c370', '00000000-0000-4000-a000-000039d176c1', 'Test: Pragmatik und Diskurs', 'Module test on pragmatics and discourse.', 'Module Test', 'test', '["Understand and use vocabulary related to Module Test","Apply present_tense correctly","Read and comprehend a text about Module Test","Listen and understand a dialogue about Module Test","Speak about Module Test in simple sentences","Write a short text about Module Test"]', 50, 3, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-00006a41c370', 'die Pragmatik', 'البراغماتية', 'pragmatics', 'die', NULL, 'noun', 'Pragmatik untersucht Sprache im Kontext.', 'Pragmatics studies language in context.', 'C2', 1),
  ('00000000-0000-4000-a000-00006a41c370', 'der Sprechakt', 'فعل الكلام', 'speech act', 'der', 'die Sprechakte', 'noun', 'Der Sprechakt ändert die Wirklichkeit.', 'The speech act changes reality.', 'C2', 2),
  ('00000000-0000-4000-a000-00006a41c370', 'die Implikatur', 'الاستلزام التخاطبي', 'implicature', 'die', 'die Implikaturen', 'noun', 'Die Implikatur ist die indirekte Bedeutung.', 'Implicature is the indirect meaning.', 'C2', 3),
  ('00000000-0000-4000-a000-00006a41c370', 'der Kontext', 'السياق', 'context', 'der', 'die Kontexte', 'noun', 'Der Kontext bestimmt die Bedeutung.', 'Context determines meaning.', 'B2', 4),
  ('00000000-0000-4000-a000-00006a41c370', 'die Höflichkeit', 'الأدب / اللباقة', 'politeness', 'die', NULL, 'noun', 'Höflichkeit ist in Japan sehr wichtig.', 'Politeness is very important in Japan.', 'B2', 5),
  ('00000000-0000-4000-a000-00006a41c370', 'die Konversationsanalyse', 'تحليل المحادثة', 'conversation analysis', 'die', NULL, 'noun', 'Die Konversationsanalyse untersucht Gespräche.', 'Conversation analysis examines conversations.', 'C2', 6),
  ('00000000-0000-4000-a000-00006a41c370', 'der Stil', 'الأسلوب', 'style', 'der', 'die Stile', 'noun', 'Der Stil des Textes ist formell.', 'The style of the text is formal.', 'B2', 7),
  ('00000000-0000-4000-a000-00006a41c370', 'das Register', 'المستوى اللغوي', 'register', 'das', 'die Register', 'noun', 'Das Register passt zur Situation.', 'The register fits the situation.', 'C1', 8),
  ('00000000-0000-4000-a000-00006a41c370', 'das Stilmittel', 'الأداة الأسلوبية', 'stylistic device', 'das', 'die Stilmittel', 'noun', 'Das Stilmittel unterstreicht die Aussage.', 'The stylistic device emphasizes the statement.', 'C1', 9),
  ('00000000-0000-4000-a000-00006a41c370', 'die Alliteration', 'الجناس', 'alliteration', 'die', 'die Alliterationen', 'noun', 'Die Alliteration wiederholt den Anlaut.', 'Alliteration repeats the initial sound.', 'C2', 10),
  ('00000000-0000-4000-a000-00006a41c370', 'die Ellipse', 'الحذف', 'ellipsis', 'die', 'die Ellipsen', 'noun', 'Die Ellipse spart Wörter aus.', 'The ellipsis omits words.', 'C2', 11),
  ('00000000-0000-4000-a000-00006a41c370', 'die Hyperbel', 'المبالغة', 'hyperbole', 'die', 'die Hyperbeln', 'noun', 'Die Hyperbel übertreibt stark.', 'Hyperbole exaggerates strongly.', 'C2', 12),
  ('00000000-0000-4000-a000-00006a41c370', 'die Poetik', 'الشعرية', 'poetics', 'die', NULL, 'noun', 'Poetik ist die Theorie der Dichtkunst.', 'Poetics is the theory of poetry.', 'C2', 13),
  ('00000000-0000-4000-a000-00006a41c370', 'der Vers', 'البيت الشعري', 'verse', 'der', 'die Verse', 'noun', 'Der Vers hat fünf Hebungen.', 'The verse has five stresses.', 'C1', 14),
  ('00000000-0000-4000-a000-00006a41c370', 'der Reim', 'القافية', 'rhyme', 'der', 'die Reime', 'noun', 'Der Reim verbindet die Zeilen.', 'Rhyme connects the lines.', 'C1', 15),
  ('00000000-0000-4000-a000-00006a41c370', 'das Metrum', 'الوزن', 'meter', 'das', 'die Metren', 'noun', 'Das Metrum bestimmt den Rhythmus.', 'The meter determines the rhythm.', 'C2', 16),
  ('00000000-0000-4000-a000-00006a41c370', 'die Gattung', 'النوع الأدبي', 'genre', 'die', 'die Gattungen', 'noun', 'Lyrik ist eine literarische Gattung.', 'Lyric poetry is a literary genre.', 'C1', 17),
  ('00000000-0000-4000-a000-00006a41c370', 'die Bedeutung', 'المعنى', 'meaning', 'die', 'die Bedeutungen', 'noun', 'Die Bedeutung des Wortes ist klar.', 'The meaning of the word is clear.', 'B2', 18),
  ('00000000-0000-4000-a000-00006a41c370', 'die Synonymie', 'الترادف', 'synonymy', 'die', NULL, 'noun', 'Synonymie bedeutet Bedeutungsgleichheit.', 'Synonymy means sameness of meaning.', 'C2', 19),
  ('00000000-0000-4000-a000-00006a41c370', 'die Antonymie', 'التضاد', 'antonymy', 'die', NULL, 'noun', 'Antonymie bezeichnet Gegensätze.', 'Antonymy denotes opposites.', 'C2', 20),
  ('00000000-0000-4000-a000-00006a41c370', 'die Polysemie', 'تعدد المعاني', 'polysemy', 'die', NULL, 'noun', 'Polysemie hat mehrere Bedeutungen.', 'Polysemy has multiple meanings.', 'C2', 21),
  ('00000000-0000-4000-a000-00006a41c370', 'die Kompositionalität', 'التركيبية', 'compositionality', 'die', NULL, 'noun', 'Kompositionalität besagt, dass Bedeutung aus Teilen besteht.', 'Compositionality holds that meaning consists of parts.', 'C2', 22),
  ('00000000-0000-4000-a000-00006a41c370', 'die Übersetzung', 'الترجمة', 'translation', 'die', 'die Übersetzungen', 'noun', 'Die Übersetzung ist gelungen.', 'The translation is successful.', 'B2', 23),
  ('00000000-0000-4000-a000-00006a41c370', 'übersetzen', 'يترجم', 'to translate', NULL, NULL, 'verb', 'Ich übersetze den Text ins Arabische.', 'I translate the text into Arabic.', 'B1', 24),
  ('00000000-0000-4000-a000-00006a41c370', 'der Dolmetscher', 'المترجم الفوري', 'interpreter', 'der', 'die Dolmetscher', 'noun', 'Der Dolmetscher übersetzt mündlich.', 'The interpreter translates orally.', 'B2', 25),
  ('00000000-0000-4000-a000-00006a41c370', 'die Muttersprache', 'اللغة الأم', 'native language', 'die', 'die Muttersprachen', 'noun', 'Meine Muttersprache ist Arabisch.', 'My native language is Arabic.', 'B1', 26),
  ('00000000-0000-4000-a000-00006a41c370', 'falscher Freund', 'الصديق المزيف', 'false friend', NULL, NULL, 'noun', 'Ein falscher Freund sieht ähnlich aus, bedeutet aber etwas anderes.', 'A false friend looks similar but means something different.', 'C1', 27),
  ('00000000-0000-4000-a000-00006a41c370', 'die Sprachmittlung', 'الوساطة اللغوية', 'language mediation', 'die', NULL, 'noun', 'Sprachmittlung vermittelt zwischen Kulturen.', 'Language mediation bridges between cultures.', 'C2', 28),
  ('00000000-0000-4000-a000-00006a41c370', 'die Äquivalenz', 'التكافؤ', 'equivalence', 'die', NULL, 'noun', 'Äquivalenz in der Übersetzung ist ein Ideal.', 'Equivalence in translation is an ideal.', 'C2', 29),
  ('00000000-0000-4000-a000-00006a41c370', 'der Dialekt', 'اللهجة', 'dialect', 'der', 'die Dialekte', 'noun', 'Der bayerische Dialekt ist schwer zu verstehen.', 'The Bavarian dialect is hard to understand.', 'B2', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006a41c370', 'Präsens der regelmäßigen Verben (Present Tense) / المضارع للأفعال المنتظمة', 'In German, regular verbs follow a consistent pattern. The infinitive ends in -en. Remove the -en and add the personal endings: ich -e, du -st, er/sie/es -t, wir -en, ihr -t, sie/Sie -en. For most Arabic speakers, this is easier than Arabic verb conjugation because German has fewer forms.', '[{"rule":"ich: stem + e","note":"Ich lerne, ich wohne, ich arbeite"},{"rule":"du: stem + st","note":"Du lernst, du wohnst, du arbeitest"},{"rule":"er/sie/es: stem + t","note":"Er lernt, sie wohnt, es arbeitet"},{"rule":"wir: stem + en","note":"Wir lernen, wir wohnen, wir arbeiten"},{"rule":"ihr: stem + t","note":"Ihr lernt, ihr wohnt, ihr arbeitet"},{"rule":"sie/Sie: stem + en","note":"Sie lernen, Sie wohnen"}]', '[{"german":"Ich lerne Deutsch.","arabic":"أنا أتعلم الألمانية.","english":"I am learning German."},{"german":"Du wohnst in Berlin.","arabic":"أنت تسكن في برلين.","english":"You live in Berlin."},{"german":"Er arbeitet bei Siemens.","arabic":"هو يعمل في سيمنز.","english":"He works at Siemens."}]', '[{"mistake":"Ich lernen Deutsch","correction":"Ich lerne Deutsch","explanation":"After \"ich\" we use the stem + e, not the infinitive."},{"mistake":"Er lerne Deutsch","correction":"Er lernt Deutsch","explanation":"After \"er/sie/es\" we add -t, not -e."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006a41c370', 'multiple_choice', 'What does "die Pragmatik" mean?', '["The","A","This","That"]', 'The', 'This is a basic vocabulary item.', 1, 1),
  ('00000000-0000-4000-a000-00006a41c370', 'fill_gap', 'Complete with the correct form.', '["Option 1","Option 2","Option 3"]', 'Option 1', 'Practice grammar in context.', 1, 2),
  ('00000000-0000-4000-a000-00006a41c370', 'translation', 'Translate: "I learn German."', '["Ich lerne Deutsch.","Ich lerne Englisch.","Ich lerne Spanisch."]', 'Ich lerne Deutsch.', 'Ich = I, lerne = learn/learning, Deutsch = German.', 2, 3),
  ('00000000-0000-4000-a000-00006a41c370', 'sentence_order', 'Order the sentence.', '[]', 'Ich lerne Deutsch.', 'Subject + verb + object in German.', 2, 4),
  ('00000000-0000-4000-a000-00006a41c370', 'matching', 'Match the words with their meanings.', '["Match pairs correctly"]', 'Correct pairs', 'Test your vocabulary knowledge.', 2, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-00006a41c370', 'multiple_choice', 'What is the main topic of this lesson?', '["Module Test","Sports","Music","Travel"]', 'Module Test', 1, 1),
  ('00000000-0000-4000-a000-00006a41c370', 'true_false', 'This lesson teaches vocabulary about Module Test.', '["True","False"]', 'True', 1, 2),
  ('00000000-0000-4000-a000-00006a41c370', 'true_false', 'German word order is always the same as English.', '["True","False"]', 'False', 1, 3),
  ('00000000-0000-4000-a000-00006a41c370', 'multiple_choice', 'How do you say "please" in German?', '["Danke","Bitte","Tschüss","Hallo"]', 'Bitte', 1, 4),
  ('00000000-0000-4000-a000-00006a41c370', 'multiple_choice', 'Which article is feminine?', '["der","die","das","den"]', 'die', 1, 5),
  ('00000000-0000-4000-a000-00006a41c370', 'fill_blank', 'Ich ___ (to be) Student.', '["bin","bist","ist","sind"]', 'bin', 1, 6),
  ('00000000-0000-4000-a000-00006a41c370', 'multiple_choice', 'What is the correct word order?', '["Ich lerne Deutsch","Ich Deutsch lerne","Lerne ich Deutsch","Deutsch ich lerne"]', 'Ich lerne Deutsch', 1, 7),
  ('00000000-0000-4000-a000-00006a41c370', 'true_false', 'All German nouns are capitalized.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-00006a41c370', 'multiple_choice', 'How do you say "thank you" in German?', '["Bitte","Danke","Tschüss","Hallo"]', 'Danke', 1, 9),
  ('00000000-0000-4000-a000-00006a41c370', 'fill_blank', 'Wo ___ du? (to live)', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 1, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-00006a41c370', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Pragmatik und Diskursanalyse', 'formal', false, 1),
  ('00000000-0000-4000-a000-00006a41c370', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Pragmatik und Diskursanalyse', 'informal', false, 2),
  ('00000000-0000-4000-a000-00006a41c370', 'Bitte!', 'Please!', 'من فضلك!', 'Used in Pragmatik und Diskursanalyse', 'neutral', false, 3),
  ('00000000-0000-4000-a000-00006a41c370', 'Danke!', 'Thanks!', 'شكراً!', 'Used in Pragmatik und Diskursanalyse', 'neutral', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-00006a41c370', 'Hallo', 'Hello', 'Greeting', 'expression', 1),
  ('00000000-0000-4000-a000-00006a41c370', 'Danke', 'Thanks', 'Politeness', 'expression', 2),
  ('00000000-0000-4000-a000-00006a41c370', 'Bitte', 'Please', 'Politeness', 'expression', 3),
  ('00000000-0000-4000-a000-00006a41c370', 'Tschüss', 'Bye', 'Farewell', 'expression', 4);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-00006a41c370', 'Test: Pragmatik und Diskurs — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, duration_seconds, speaker_count, scenario) values
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

[Lehrerin]: ممتاز! إلى الغد!', 72, 2, 'Pragmatik und Diskursanalyse');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-00006a41c370', 'Speaking: Test: Pragmatik und Diskurs', 'Practice talking about Module Test. Answer questions and have a simple conversation.', 'Module Test', ARRAY['Use full sentences','Speak clearly','Don''t worry about mistakes']::text[], ARRAY['die Pragmatik','der Sprechakt','die Implikatur','der Kontext','die Höflichkeit']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-00006a41c370', 'Writing: Test: Pragmatik und Diskurs', 'Write a short text about Module Test. Use at least 5 vocabulary words from this lesson.', ARRAY['Start with a greeting','Use the vocabulary from this lesson','Check your grammar']::text[], ARRAY['die Pragmatik','der Sprechakt','die Implikatur']::text[], '["Sentence structure","Vocabulary usage"]', 50, 150, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00006a41c370', 'Test: Pragmatik und Diskurs — Roleplay', 'Module Test', 'Student', 'Teacher', 'Practice conversation about Module Test', 'Hallo! Lass uns über dieses Thema sprechen.', 'advanced', 1, ARRAY['die Pragmatik','der Sprechakt','die Implikatur','der Kontext','die Höflichkeit','die Konversationsanalyse','der Stil','das Register']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00006a41c370', 'Test: Pragmatik und Diskurs — Advanced Roleplay', 'Module Test', 'Customer', 'Assistant', 'Extended conversation about Module Test', 'Guten Tag! Wie kann ich Ihnen helfen?', 'advanced', 2, ARRAY['die Pragmatik','der Sprechakt','die Implikatur','der Kontext','die Höflichkeit','die Konversationsanalyse','der Stil','das Register']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-00006a41c370', 'Test: Pragmatik und Diskurs — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Test: Pragmatik und Diskurs".', 'Creative practice for Module Test', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-00006a41c370', 'Homework: Test: Pragmatik und Diskurs', 'Complete these tasks to reinforce "Test: Pragmatik und Diskurs".', 'mixed', '[{"description":"Review all vocabulary from this lesson"},{"description":"Write 5 sentences using the grammar structure"},{"description":"Practice the dialogue aloud"}]', 35, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-00006a41c370', 'In this lesson you learned about Module Test. You practiced vocabulary related to pragmatics and grammar structure present_tense.', '["Mastered vocabulary about Module Test","Applied present_tense correctly","Read and understood a text about Module Test","Practiced speaking about Module Test"]', '[{"title":"Test: Pragmatik und Diskurs Review","summary":"present_tense — the main grammar focus of this lesson."}]', ARRAY['Module Test core vocabulary','pragmatics key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)','Verb is always in second position']::text[], ARRAY['Practice 15-20 minutes daily','Use new vocabulary in real sentences','Speak out loud to improve pronunciation']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006a41c370', 'translation', 'Translate to German: "This is a translation exercise."', '[]', 'Das ist eine Übersetzungsübung.', 'Use "das ist" for "this is"', 1, 40);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006a41c370', 'Culture: Module Test in German-Speaking Countries', 'Learn how Module Test is approached in German culture.

تعلم كيف يتم التعامل مع Module Test في الثقافة الألمانية.', '["Tip: Be direct and polite","Tip: Use formal language with strangers","Tip: Respect punctuality"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006a41c370', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Common error for Arabic speakers","correction":"Correct version","explanation":"Explanation of the error"}]', 30);

  -- Module 4: Übersetzung und Sprachmittlung
  insert into public.course_modules (id, level_id, title, description, objectives, order_index, estimated_hours, is_published)
  values ('00000000-0000-4000-a000-000039d176c2', 'C2', 'Übersetzung und Sprachmittlung', 'Master translation and language mediation techniques.', '["Translate between German and Arabic","Mediate between languages","Handle false friends and idioms","Use translation technology","Write target-language oriented texts"]', 4, 5, true)
  on conflict (id) do nothing;

  -- Lesson 1: Übersetzungstechniken (L-C2-04-01)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-00006a4237cd', '00000000-0000-4000-a000-000039d176c2', 'Übersetzungstechniken', 'Learn translation methods for German-Arabic pairs.', 'Translation Techniques', 'vocabulary', '["Understand and use vocabulary related to Translation Techniques","Apply present_tense correctly","Read and comprehend a text about Translation Techniques","Listen and understand a dialogue about Translation Techniques","Speak about Translation Techniques in simple sentences","Write a short text about Translation Techniques"]', 60, 1, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-00006a4237cd', 'die Übersetzung', 'الترجمة', 'translation', 'die', 'die Übersetzungen', 'noun', 'Die Übersetzung ist gelungen.', 'The translation is successful.', 'B2', 1),
  ('00000000-0000-4000-a000-00006a4237cd', 'übersetzen', 'يترجم', 'to translate', NULL, NULL, 'verb', 'Ich übersetze den Text ins Arabische.', 'I translate the text into Arabic.', 'B1', 2),
  ('00000000-0000-4000-a000-00006a4237cd', 'der Dolmetscher', 'المترجم الفوري', 'interpreter', 'der', 'die Dolmetscher', 'noun', 'Der Dolmetscher übersetzt mündlich.', 'The interpreter translates orally.', 'B2', 3),
  ('00000000-0000-4000-a000-00006a4237cd', 'die Muttersprache', 'اللغة الأم', 'native language', 'die', 'die Muttersprachen', 'noun', 'Meine Muttersprache ist Arabisch.', 'My native language is Arabic.', 'B1', 4),
  ('00000000-0000-4000-a000-00006a4237cd', 'falscher Freund', 'الصديق المزيف', 'false friend', NULL, NULL, 'noun', 'Ein falscher Freund sieht ähnlich aus, bedeutet aber etwas anderes.', 'A false friend looks similar but means something different.', 'C1', 5),
  ('00000000-0000-4000-a000-00006a4237cd', 'die Sprachmittlung', 'الوساطة اللغوية', 'language mediation', 'die', NULL, 'noun', 'Sprachmittlung vermittelt zwischen Kulturen.', 'Language mediation bridges between cultures.', 'C2', 6),
  ('00000000-0000-4000-a000-00006a4237cd', 'die Äquivalenz', 'التكافؤ', 'equivalence', 'die', NULL, 'noun', 'Äquivalenz in der Übersetzung ist ein Ideal.', 'Equivalence in translation is an ideal.', 'C2', 7),
  ('00000000-0000-4000-a000-00006a4237cd', 'der Stil', 'الأسلوب', 'style', 'der', 'die Stile', 'noun', 'Der Stil des Textes ist formell.', 'The style of the text is formal.', 'B2', 8),
  ('00000000-0000-4000-a000-00006a4237cd', 'das Register', 'المستوى اللغوي', 'register', 'das', 'die Register', 'noun', 'Das Register passt zur Situation.', 'The register fits the situation.', 'C1', 9),
  ('00000000-0000-4000-a000-00006a4237cd', 'das Stilmittel', 'الأداة الأسلوبية', 'stylistic device', 'das', 'die Stilmittel', 'noun', 'Das Stilmittel unterstreicht die Aussage.', 'The stylistic device emphasizes the statement.', 'C1', 10),
  ('00000000-0000-4000-a000-00006a4237cd', 'die Alliteration', 'الجناس', 'alliteration', 'die', 'die Alliterationen', 'noun', 'Die Alliteration wiederholt den Anlaut.', 'Alliteration repeats the initial sound.', 'C2', 11),
  ('00000000-0000-4000-a000-00006a4237cd', 'die Ellipse', 'الحذف', 'ellipsis', 'die', 'die Ellipsen', 'noun', 'Die Ellipse spart Wörter aus.', 'The ellipsis omits words.', 'C2', 12),
  ('00000000-0000-4000-a000-00006a4237cd', 'die Hyperbel', 'المبالغة', 'hyperbole', 'die', 'die Hyperbeln', 'noun', 'Die Hyperbel übertreibt stark.', 'Hyperbole exaggerates strongly.', 'C2', 13),
  ('00000000-0000-4000-a000-00006a4237cd', 'die Poetik', 'الشعرية', 'poetics', 'die', NULL, 'noun', 'Poetik ist die Theorie der Dichtkunst.', 'Poetics is the theory of poetry.', 'C2', 14),
  ('00000000-0000-4000-a000-00006a4237cd', 'der Vers', 'البيت الشعري', 'verse', 'der', 'die Verse', 'noun', 'Der Vers hat fünf Hebungen.', 'The verse has five stresses.', 'C1', 15),
  ('00000000-0000-4000-a000-00006a4237cd', 'der Reim', 'القافية', 'rhyme', 'der', 'die Reime', 'noun', 'Der Reim verbindet die Zeilen.', 'Rhyme connects the lines.', 'C1', 16),
  ('00000000-0000-4000-a000-00006a4237cd', 'das Metrum', 'الوزن', 'meter', 'das', 'die Metren', 'noun', 'Das Metrum bestimmt den Rhythmus.', 'The meter determines the rhythm.', 'C2', 17),
  ('00000000-0000-4000-a000-00006a4237cd', 'die Gattung', 'النوع الأدبي', 'genre', 'die', 'die Gattungen', 'noun', 'Lyrik ist eine literarische Gattung.', 'Lyric poetry is a literary genre.', 'C1', 18),
  ('00000000-0000-4000-a000-00006a4237cd', 'die Pragmatik', 'البراغماتية', 'pragmatics', 'die', NULL, 'noun', 'Pragmatik untersucht Sprache im Kontext.', 'Pragmatics studies language in context.', 'C2', 19),
  ('00000000-0000-4000-a000-00006a4237cd', 'der Sprechakt', 'فعل الكلام', 'speech act', 'der', 'die Sprechakte', 'noun', 'Der Sprechakt ändert die Wirklichkeit.', 'The speech act changes reality.', 'C2', 20),
  ('00000000-0000-4000-a000-00006a4237cd', 'die Implikatur', 'الاستلزام التخاطبي', 'implicature', 'die', 'die Implikaturen', 'noun', 'Die Implikatur ist die indirekte Bedeutung.', 'Implicature is the indirect meaning.', 'C2', 21),
  ('00000000-0000-4000-a000-00006a4237cd', 'der Kontext', 'السياق', 'context', 'der', 'die Kontexte', 'noun', 'Der Kontext bestimmt die Bedeutung.', 'Context determines meaning.', 'B2', 22),
  ('00000000-0000-4000-a000-00006a4237cd', 'die Höflichkeit', 'الأدب / اللباقة', 'politeness', 'die', NULL, 'noun', 'Höflichkeit ist in Japan sehr wichtig.', 'Politeness is very important in Japan.', 'B2', 23),
  ('00000000-0000-4000-a000-00006a4237cd', 'die Konversationsanalyse', 'تحليل المحادثة', 'conversation analysis', 'die', NULL, 'noun', 'Die Konversationsanalyse untersucht Gespräche.', 'Conversation analysis examines conversations.', 'C2', 24),
  ('00000000-0000-4000-a000-00006a4237cd', 'die Bedeutung', 'المعنى', 'meaning', 'die', 'die Bedeutungen', 'noun', 'Die Bedeutung des Wortes ist klar.', 'The meaning of the word is clear.', 'B2', 25),
  ('00000000-0000-4000-a000-00006a4237cd', 'die Synonymie', 'الترادف', 'synonymy', 'die', NULL, 'noun', 'Synonymie bedeutet Bedeutungsgleichheit.', 'Synonymy means sameness of meaning.', 'C2', 26),
  ('00000000-0000-4000-a000-00006a4237cd', 'die Antonymie', 'التضاد', 'antonymy', 'die', NULL, 'noun', 'Antonymie bezeichnet Gegensätze.', 'Antonymy denotes opposites.', 'C2', 27),
  ('00000000-0000-4000-a000-00006a4237cd', 'die Polysemie', 'تعدد المعاني', 'polysemy', 'die', NULL, 'noun', 'Polysemie hat mehrere Bedeutungen.', 'Polysemy has multiple meanings.', 'C2', 28),
  ('00000000-0000-4000-a000-00006a4237cd', 'die Kompositionalität', 'التركيبية', 'compositionality', 'die', NULL, 'noun', 'Kompositionalität besagt, dass Bedeutung aus Teilen besteht.', 'Compositionality holds that meaning consists of parts.', 'C2', 29),
  ('00000000-0000-4000-a000-00006a4237cd', 'der Dialekt', 'اللهجة', 'dialect', 'der', 'die Dialekte', 'noun', 'Der bayerische Dialekt ist schwer zu verstehen.', 'The Bavarian dialect is hard to understand.', 'B2', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006a4237cd', 'Präsens der regelmäßigen Verben (Present Tense) / المضارع للأفعال المنتظمة', 'In German, regular verbs follow a consistent pattern. The infinitive ends in -en. Remove the -en and add the personal endings: ich -e, du -st, er/sie/es -t, wir -en, ihr -t, sie/Sie -en. For most Arabic speakers, this is easier than Arabic verb conjugation because German has fewer forms.', '[{"rule":"ich: stem + e","note":"Ich lerne, ich wohne, ich arbeite"},{"rule":"du: stem + st","note":"Du lernst, du wohnst, du arbeitest"},{"rule":"er/sie/es: stem + t","note":"Er lernt, sie wohnt, es arbeitet"},{"rule":"wir: stem + en","note":"Wir lernen, wir wohnen, wir arbeiten"},{"rule":"ihr: stem + t","note":"Ihr lernt, ihr wohnt, ihr arbeitet"},{"rule":"sie/Sie: stem + en","note":"Sie lernen, Sie wohnen"}]', '[{"german":"Ich lerne Deutsch.","arabic":"أنا أتعلم الألمانية.","english":"I am learning German."},{"german":"Du wohnst in Berlin.","arabic":"أنت تسكن في برلين.","english":"You live in Berlin."},{"german":"Er arbeitet bei Siemens.","arabic":"هو يعمل في سيمنز.","english":"He works at Siemens."}]', '[{"mistake":"Ich lernen Deutsch","correction":"Ich lerne Deutsch","explanation":"After \"ich\" we use the stem + e, not the infinitive."},{"mistake":"Er lerne Deutsch","correction":"Er lernt Deutsch","explanation":"After \"er/sie/es\" we add -t, not -e."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006a4237cd', 'multiple_choice', 'What does "die Übersetzung" mean?', '["The","A","This","That"]', 'The', 'This is a basic vocabulary item.', 1, 1),
  ('00000000-0000-4000-a000-00006a4237cd', 'fill_gap', 'Complete with the correct form.', '["Option 1","Option 2","Option 3"]', 'Option 1', 'Practice grammar in context.', 1, 2),
  ('00000000-0000-4000-a000-00006a4237cd', 'translation', 'Translate: "I learn German."', '["Ich lerne Deutsch.","Ich lerne Englisch.","Ich lerne Spanisch."]', 'Ich lerne Deutsch.', 'Ich = I, lerne = learn/learning, Deutsch = German.', 2, 3),
  ('00000000-0000-4000-a000-00006a4237cd', 'sentence_order', 'Order the sentence.', '[]', 'Ich lerne Deutsch.', 'Subject + verb + object in German.', 2, 4),
  ('00000000-0000-4000-a000-00006a4237cd', 'matching', 'Match the words with their meanings.', '["Match pairs correctly"]', 'Correct pairs', 'Test your vocabulary knowledge.', 2, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-00006a4237cd', 'multiple_choice', 'What is the main topic of this lesson?', '["Translation Techniques","Sports","Music","Travel"]', 'Translation Techniques', 1, 1),
  ('00000000-0000-4000-a000-00006a4237cd', 'true_false', 'This lesson teaches vocabulary about Translation Techniques.', '["True","False"]', 'True', 1, 2),
  ('00000000-0000-4000-a000-00006a4237cd', 'true_false', 'German word order is always the same as English.', '["True","False"]', 'False', 1, 3),
  ('00000000-0000-4000-a000-00006a4237cd', 'multiple_choice', 'How do you say "please" in German?', '["Danke","Bitte","Tschüss","Hallo"]', 'Bitte', 1, 4),
  ('00000000-0000-4000-a000-00006a4237cd', 'multiple_choice', 'Which article is feminine?', '["der","die","das","den"]', 'die', 1, 5),
  ('00000000-0000-4000-a000-00006a4237cd', 'fill_blank', 'Ich ___ (to be) Student.', '["bin","bist","ist","sind"]', 'bin', 1, 6),
  ('00000000-0000-4000-a000-00006a4237cd', 'multiple_choice', 'What is the correct word order?', '["Ich lerne Deutsch","Ich Deutsch lerne","Lerne ich Deutsch","Deutsch ich lerne"]', 'Ich lerne Deutsch', 1, 7),
  ('00000000-0000-4000-a000-00006a4237cd', 'true_false', 'All German nouns are capitalized.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-00006a4237cd', 'multiple_choice', 'How do you say "thank you" in German?', '["Bitte","Danke","Tschüss","Hallo"]', 'Danke', 1, 9),
  ('00000000-0000-4000-a000-00006a4237cd', 'fill_blank', 'Wo ___ du? (to live)', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 1, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-00006a4237cd', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Übersetzung und Sprachmittlung', 'formal', false, 1),
  ('00000000-0000-4000-a000-00006a4237cd', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Übersetzung und Sprachmittlung', 'informal', false, 2),
  ('00000000-0000-4000-a000-00006a4237cd', 'Bitte!', 'Please!', 'من فضلك!', 'Used in Übersetzung und Sprachmittlung', 'neutral', false, 3),
  ('00000000-0000-4000-a000-00006a4237cd', 'Danke!', 'Thanks!', 'شكراً!', 'Used in Übersetzung und Sprachmittlung', 'neutral', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-00006a4237cd', 'Hallo', 'Hello', 'Greeting', 'expression', 1),
  ('00000000-0000-4000-a000-00006a4237cd', 'Danke', 'Thanks', 'Politeness', 'expression', 2),
  ('00000000-0000-4000-a000-00006a4237cd', 'Bitte', 'Please', 'Politeness', 'expression', 3),
  ('00000000-0000-4000-a000-00006a4237cd', 'Tschüss', 'Bye', 'Farewell', 'expression', 4);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-00006a4237cd', 'Übersetzungstechniken — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, duration_seconds, speaker_count, scenario) values
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

[Lehrerin]: ممتاز! إلى الغد!', 72, 2, 'Übersetzung und Sprachmittlung');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-00006a4237cd', 'Speaking: Übersetzungstechniken', 'Practice talking about Translation Techniques. Answer questions and have a simple conversation.', 'Translation Techniques', ARRAY['Use full sentences','Speak clearly','Don''t worry about mistakes']::text[], ARRAY['die Übersetzung','übersetzen','der Dolmetscher','die Muttersprache','falscher Freund']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-00006a4237cd', 'Writing: Übersetzungstechniken', 'Write a short text about Translation Techniques. Use at least 5 vocabulary words from this lesson.', ARRAY['Start with a greeting','Use the vocabulary from this lesson','Check your grammar']::text[], ARRAY['die Übersetzung','übersetzen','der Dolmetscher']::text[], '["Sentence structure","Vocabulary usage"]', 50, 150, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00006a4237cd', 'Übersetzungstechniken — Roleplay', 'Translation Techniques', 'Student', 'Teacher', 'Practice conversation about Translation Techniques', 'Hallo! Lass uns über dieses Thema sprechen.', 'advanced', 1, ARRAY['die Übersetzung','übersetzen','der Dolmetscher','die Muttersprache','falscher Freund','die Sprachmittlung','die Äquivalenz','der Stil']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00006a4237cd', 'Übersetzungstechniken — Advanced Roleplay', 'Translation Techniques', 'Customer', 'Assistant', 'Extended conversation about Translation Techniques', 'Guten Tag! Wie kann ich Ihnen helfen?', 'advanced', 2, ARRAY['die Übersetzung','übersetzen','der Dolmetscher','die Muttersprache','falscher Freund','die Sprachmittlung','die Äquivalenz','der Stil']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-00006a4237cd', 'Übersetzungstechniken — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Übersetzungstechniken".', 'Creative practice for Translation Techniques', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-00006a4237cd', 'Homework: Übersetzungstechniken', 'Complete these tasks to reinforce "Übersetzungstechniken".', 'mixed', '[{"description":"Review all vocabulary from this lesson"},{"description":"Write 5 sentences using the grammar structure"},{"description":"Practice the dialogue aloud"}]', 35, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-00006a4237cd', 'In this lesson you learned about Translation Techniques. You practiced vocabulary related to translation and grammar structure present_tense.', '["Mastered vocabulary about Translation Techniques","Applied present_tense correctly","Read and understood a text about Translation Techniques","Practiced speaking about Translation Techniques"]', '[{"title":"Übersetzungstechniken Review","summary":"present_tense — the main grammar focus of this lesson."}]', ARRAY['Translation Techniques core vocabulary','translation key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)','Verb is always in second position']::text[], ARRAY['Practice 15-20 minutes daily','Use new vocabulary in real sentences','Speak out loud to improve pronunciation']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006a4237cd', 'translation', 'Translate to German: "This is a translation exercise."', '[]', 'Das ist eine Übersetzungsübung.', 'Use "das ist" for "this is"', 1, 40);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006a4237cd', 'Culture: Translation Techniques in German-Speaking Countries', 'Learn how Translation Techniques is approached in German culture.

تعلم كيف يتم التعامل مع Translation Techniques في الثقافة الألمانية.', '["Tip: Be direct and polite","Tip: Use formal language with strangers","Tip: Respect punctuality"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006a4237cd', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Common error for Arabic speakers","correction":"Correct version","explanation":"Explanation of the error"}]', 30);

  -- Lesson 2: False Friends und idiomatische Wendungen (L-C2-04-02)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-00006a4237ce', '00000000-0000-4000-a000-000039d176c2', 'False Friends und idiomatische Wendungen', 'Identify false friends between German and Arabic.', 'False Friends & Idioms', 'vocabulary', '["Understand and use vocabulary related to False Friends & Idioms","Apply present_tense correctly","Read and comprehend a text about False Friends & Idioms","Listen and understand a dialogue about False Friends & Idioms","Speak about False Friends & Idioms in simple sentences","Write a short text about False Friends & Idioms"]', 55, 2, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-00006a4237ce', 'die Übersetzung', 'الترجمة', 'translation', 'die', 'die Übersetzungen', 'noun', 'Die Übersetzung ist gelungen.', 'The translation is successful.', 'B2', 1),
  ('00000000-0000-4000-a000-00006a4237ce', 'übersetzen', 'يترجم', 'to translate', NULL, NULL, 'verb', 'Ich übersetze den Text ins Arabische.', 'I translate the text into Arabic.', 'B1', 2),
  ('00000000-0000-4000-a000-00006a4237ce', 'der Dolmetscher', 'المترجم الفوري', 'interpreter', 'der', 'die Dolmetscher', 'noun', 'Der Dolmetscher übersetzt mündlich.', 'The interpreter translates orally.', 'B2', 3),
  ('00000000-0000-4000-a000-00006a4237ce', 'die Muttersprache', 'اللغة الأم', 'native language', 'die', 'die Muttersprachen', 'noun', 'Meine Muttersprache ist Arabisch.', 'My native language is Arabic.', 'B1', 4),
  ('00000000-0000-4000-a000-00006a4237ce', 'falscher Freund', 'الصديق المزيف', 'false friend', NULL, NULL, 'noun', 'Ein falscher Freund sieht ähnlich aus, bedeutet aber etwas anderes.', 'A false friend looks similar but means something different.', 'C1', 5),
  ('00000000-0000-4000-a000-00006a4237ce', 'die Sprachmittlung', 'الوساطة اللغوية', 'language mediation', 'die', NULL, 'noun', 'Sprachmittlung vermittelt zwischen Kulturen.', 'Language mediation bridges between cultures.', 'C2', 6),
  ('00000000-0000-4000-a000-00006a4237ce', 'die Äquivalenz', 'التكافؤ', 'equivalence', 'die', NULL, 'noun', 'Äquivalenz in der Übersetzung ist ein Ideal.', 'Equivalence in translation is an ideal.', 'C2', 7),
  ('00000000-0000-4000-a000-00006a4237ce', 'der Stil', 'الأسلوب', 'style', 'der', 'die Stile', 'noun', 'Der Stil des Textes ist formell.', 'The style of the text is formal.', 'B2', 8),
  ('00000000-0000-4000-a000-00006a4237ce', 'das Register', 'المستوى اللغوي', 'register', 'das', 'die Register', 'noun', 'Das Register passt zur Situation.', 'The register fits the situation.', 'C1', 9),
  ('00000000-0000-4000-a000-00006a4237ce', 'das Stilmittel', 'الأداة الأسلوبية', 'stylistic device', 'das', 'die Stilmittel', 'noun', 'Das Stilmittel unterstreicht die Aussage.', 'The stylistic device emphasizes the statement.', 'C1', 10),
  ('00000000-0000-4000-a000-00006a4237ce', 'die Alliteration', 'الجناس', 'alliteration', 'die', 'die Alliterationen', 'noun', 'Die Alliteration wiederholt den Anlaut.', 'Alliteration repeats the initial sound.', 'C2', 11),
  ('00000000-0000-4000-a000-00006a4237ce', 'die Ellipse', 'الحذف', 'ellipsis', 'die', 'die Ellipsen', 'noun', 'Die Ellipse spart Wörter aus.', 'The ellipsis omits words.', 'C2', 12),
  ('00000000-0000-4000-a000-00006a4237ce', 'die Hyperbel', 'المبالغة', 'hyperbole', 'die', 'die Hyperbeln', 'noun', 'Die Hyperbel übertreibt stark.', 'Hyperbole exaggerates strongly.', 'C2', 13),
  ('00000000-0000-4000-a000-00006a4237ce', 'die Poetik', 'الشعرية', 'poetics', 'die', NULL, 'noun', 'Poetik ist die Theorie der Dichtkunst.', 'Poetics is the theory of poetry.', 'C2', 14),
  ('00000000-0000-4000-a000-00006a4237ce', 'der Vers', 'البيت الشعري', 'verse', 'der', 'die Verse', 'noun', 'Der Vers hat fünf Hebungen.', 'The verse has five stresses.', 'C1', 15),
  ('00000000-0000-4000-a000-00006a4237ce', 'der Reim', 'القافية', 'rhyme', 'der', 'die Reime', 'noun', 'Der Reim verbindet die Zeilen.', 'Rhyme connects the lines.', 'C1', 16),
  ('00000000-0000-4000-a000-00006a4237ce', 'das Metrum', 'الوزن', 'meter', 'das', 'die Metren', 'noun', 'Das Metrum bestimmt den Rhythmus.', 'The meter determines the rhythm.', 'C2', 17),
  ('00000000-0000-4000-a000-00006a4237ce', 'die Gattung', 'النوع الأدبي', 'genre', 'die', 'die Gattungen', 'noun', 'Lyrik ist eine literarische Gattung.', 'Lyric poetry is a literary genre.', 'C1', 18),
  ('00000000-0000-4000-a000-00006a4237ce', 'die Pragmatik', 'البراغماتية', 'pragmatics', 'die', NULL, 'noun', 'Pragmatik untersucht Sprache im Kontext.', 'Pragmatics studies language in context.', 'C2', 19),
  ('00000000-0000-4000-a000-00006a4237ce', 'der Sprechakt', 'فعل الكلام', 'speech act', 'der', 'die Sprechakte', 'noun', 'Der Sprechakt ändert die Wirklichkeit.', 'The speech act changes reality.', 'C2', 20),
  ('00000000-0000-4000-a000-00006a4237ce', 'die Implikatur', 'الاستلزام التخاطبي', 'implicature', 'die', 'die Implikaturen', 'noun', 'Die Implikatur ist die indirekte Bedeutung.', 'Implicature is the indirect meaning.', 'C2', 21),
  ('00000000-0000-4000-a000-00006a4237ce', 'der Kontext', 'السياق', 'context', 'der', 'die Kontexte', 'noun', 'Der Kontext bestimmt die Bedeutung.', 'Context determines meaning.', 'B2', 22),
  ('00000000-0000-4000-a000-00006a4237ce', 'die Höflichkeit', 'الأدب / اللباقة', 'politeness', 'die', NULL, 'noun', 'Höflichkeit ist in Japan sehr wichtig.', 'Politeness is very important in Japan.', 'B2', 23),
  ('00000000-0000-4000-a000-00006a4237ce', 'die Konversationsanalyse', 'تحليل المحادثة', 'conversation analysis', 'die', NULL, 'noun', 'Die Konversationsanalyse untersucht Gespräche.', 'Conversation analysis examines conversations.', 'C2', 24),
  ('00000000-0000-4000-a000-00006a4237ce', 'die Bedeutung', 'المعنى', 'meaning', 'die', 'die Bedeutungen', 'noun', 'Die Bedeutung des Wortes ist klar.', 'The meaning of the word is clear.', 'B2', 25),
  ('00000000-0000-4000-a000-00006a4237ce', 'die Synonymie', 'الترادف', 'synonymy', 'die', NULL, 'noun', 'Synonymie bedeutet Bedeutungsgleichheit.', 'Synonymy means sameness of meaning.', 'C2', 26),
  ('00000000-0000-4000-a000-00006a4237ce', 'die Antonymie', 'التضاد', 'antonymy', 'die', NULL, 'noun', 'Antonymie bezeichnet Gegensätze.', 'Antonymy denotes opposites.', 'C2', 27),
  ('00000000-0000-4000-a000-00006a4237ce', 'die Polysemie', 'تعدد المعاني', 'polysemy', 'die', NULL, 'noun', 'Polysemie hat mehrere Bedeutungen.', 'Polysemy has multiple meanings.', 'C2', 28),
  ('00000000-0000-4000-a000-00006a4237ce', 'die Kompositionalität', 'التركيبية', 'compositionality', 'die', NULL, 'noun', 'Kompositionalität besagt, dass Bedeutung aus Teilen besteht.', 'Compositionality holds that meaning consists of parts.', 'C2', 29),
  ('00000000-0000-4000-a000-00006a4237ce', 'der Dialekt', 'اللهجة', 'dialect', 'der', 'die Dialekte', 'noun', 'Der bayerische Dialekt ist schwer zu verstehen.', 'The Bavarian dialect is hard to understand.', 'B2', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006a4237ce', 'Präsens der regelmäßigen Verben (Present Tense) / المضارع للأفعال المنتظمة', 'In German, regular verbs follow a consistent pattern. The infinitive ends in -en. Remove the -en and add the personal endings: ich -e, du -st, er/sie/es -t, wir -en, ihr -t, sie/Sie -en. For most Arabic speakers, this is easier than Arabic verb conjugation because German has fewer forms.', '[{"rule":"ich: stem + e","note":"Ich lerne, ich wohne, ich arbeite"},{"rule":"du: stem + st","note":"Du lernst, du wohnst, du arbeitest"},{"rule":"er/sie/es: stem + t","note":"Er lernt, sie wohnt, es arbeitet"},{"rule":"wir: stem + en","note":"Wir lernen, wir wohnen, wir arbeiten"},{"rule":"ihr: stem + t","note":"Ihr lernt, ihr wohnt, ihr arbeitet"},{"rule":"sie/Sie: stem + en","note":"Sie lernen, Sie wohnen"}]', '[{"german":"Ich lerne Deutsch.","arabic":"أنا أتعلم الألمانية.","english":"I am learning German."},{"german":"Du wohnst in Berlin.","arabic":"أنت تسكن في برلين.","english":"You live in Berlin."},{"german":"Er arbeitet bei Siemens.","arabic":"هو يعمل في سيمنز.","english":"He works at Siemens."}]', '[{"mistake":"Ich lernen Deutsch","correction":"Ich lerne Deutsch","explanation":"After \"ich\" we use the stem + e, not the infinitive."},{"mistake":"Er lerne Deutsch","correction":"Er lernt Deutsch","explanation":"After \"er/sie/es\" we add -t, not -e."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006a4237ce', 'multiple_choice', 'What does "die Übersetzung" mean?', '["The","A","This","That"]', 'The', 'This is a basic vocabulary item.', 1, 1),
  ('00000000-0000-4000-a000-00006a4237ce', 'fill_gap', 'Complete with the correct form.', '["Option 1","Option 2","Option 3"]', 'Option 1', 'Practice grammar in context.', 1, 2),
  ('00000000-0000-4000-a000-00006a4237ce', 'translation', 'Translate: "I learn German."', '["Ich lerne Deutsch.","Ich lerne Englisch.","Ich lerne Spanisch."]', 'Ich lerne Deutsch.', 'Ich = I, lerne = learn/learning, Deutsch = German.', 2, 3),
  ('00000000-0000-4000-a000-00006a4237ce', 'sentence_order', 'Order the sentence.', '[]', 'Ich lerne Deutsch.', 'Subject + verb + object in German.', 2, 4),
  ('00000000-0000-4000-a000-00006a4237ce', 'matching', 'Match the words with their meanings.', '["Match pairs correctly"]', 'Correct pairs', 'Test your vocabulary knowledge.', 2, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-00006a4237ce', 'multiple_choice', 'What is the main topic of this lesson?', '["False Friends & Idioms","Sports","Music","Travel"]', 'False Friends & Idioms', 1, 1),
  ('00000000-0000-4000-a000-00006a4237ce', 'true_false', 'This lesson teaches vocabulary about False Friends & Idioms.', '["True","False"]', 'True', 1, 2),
  ('00000000-0000-4000-a000-00006a4237ce', 'true_false', 'German word order is always the same as English.', '["True","False"]', 'False', 1, 3),
  ('00000000-0000-4000-a000-00006a4237ce', 'multiple_choice', 'How do you say "please" in German?', '["Danke","Bitte","Tschüss","Hallo"]', 'Bitte', 1, 4),
  ('00000000-0000-4000-a000-00006a4237ce', 'multiple_choice', 'Which article is feminine?', '["der","die","das","den"]', 'die', 1, 5),
  ('00000000-0000-4000-a000-00006a4237ce', 'fill_blank', 'Ich ___ (to be) Student.', '["bin","bist","ist","sind"]', 'bin', 1, 6),
  ('00000000-0000-4000-a000-00006a4237ce', 'multiple_choice', 'What is the correct word order?', '["Ich lerne Deutsch","Ich Deutsch lerne","Lerne ich Deutsch","Deutsch ich lerne"]', 'Ich lerne Deutsch', 1, 7),
  ('00000000-0000-4000-a000-00006a4237ce', 'true_false', 'All German nouns are capitalized.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-00006a4237ce', 'multiple_choice', 'How do you say "thank you" in German?', '["Bitte","Danke","Tschüss","Hallo"]', 'Danke', 1, 9),
  ('00000000-0000-4000-a000-00006a4237ce', 'fill_blank', 'Wo ___ du? (to live)', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 1, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-00006a4237ce', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Übersetzung und Sprachmittlung', 'formal', false, 1),
  ('00000000-0000-4000-a000-00006a4237ce', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Übersetzung und Sprachmittlung', 'informal', false, 2),
  ('00000000-0000-4000-a000-00006a4237ce', 'Bitte!', 'Please!', 'من فضلك!', 'Used in Übersetzung und Sprachmittlung', 'neutral', false, 3),
  ('00000000-0000-4000-a000-00006a4237ce', 'Danke!', 'Thanks!', 'شكراً!', 'Used in Übersetzung und Sprachmittlung', 'neutral', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-00006a4237ce', 'Hallo', 'Hello', 'Greeting', 'expression', 1),
  ('00000000-0000-4000-a000-00006a4237ce', 'Danke', 'Thanks', 'Politeness', 'expression', 2),
  ('00000000-0000-4000-a000-00006a4237ce', 'Bitte', 'Please', 'Politeness', 'expression', 3),
  ('00000000-0000-4000-a000-00006a4237ce', 'Tschüss', 'Bye', 'Farewell', 'expression', 4);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-00006a4237ce', 'False Friends und idiomatische Wendungen — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, duration_seconds, speaker_count, scenario) values
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

[Lehrerin]: ممتاز! إلى الغد!', 72, 2, 'Übersetzung und Sprachmittlung');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-00006a4237ce', 'Speaking: False Friends und idiomatische Wendungen', 'Practice talking about False Friends & Idioms. Answer questions and have a simple conversation.', 'False Friends & Idioms', ARRAY['Use full sentences','Speak clearly','Don''t worry about mistakes']::text[], ARRAY['die Übersetzung','übersetzen','der Dolmetscher','die Muttersprache','falscher Freund']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-00006a4237ce', 'Writing: False Friends und idiomatische Wendungen', 'Write a short text about False Friends & Idioms. Use at least 5 vocabulary words from this lesson.', ARRAY['Start with a greeting','Use the vocabulary from this lesson','Check your grammar']::text[], ARRAY['die Übersetzung','übersetzen','der Dolmetscher']::text[], '["Sentence structure","Vocabulary usage"]', 50, 150, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00006a4237ce', 'False Friends und idiomatische Wendungen — Roleplay', 'False Friends & Idioms', 'Student', 'Teacher', 'Practice conversation about False Friends & Idioms', 'Hallo! Lass uns über dieses Thema sprechen.', 'advanced', 1, ARRAY['die Übersetzung','übersetzen','der Dolmetscher','die Muttersprache','falscher Freund','die Sprachmittlung','die Äquivalenz','der Stil']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00006a4237ce', 'False Friends und idiomatische Wendungen — Advanced Roleplay', 'False Friends & Idioms', 'Customer', 'Assistant', 'Extended conversation about False Friends & Idioms', 'Guten Tag! Wie kann ich Ihnen helfen?', 'advanced', 2, ARRAY['die Übersetzung','übersetzen','der Dolmetscher','die Muttersprache','falscher Freund','die Sprachmittlung','die Äquivalenz','der Stil']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-00006a4237ce', 'False Friends und idiomatische Wendungen — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "False Friends und idiomatische Wendungen".', 'Creative practice for False Friends & Idioms', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-00006a4237ce', 'Homework: False Friends und idiomatische Wendungen', 'Complete these tasks to reinforce "False Friends und idiomatische Wendungen".', 'mixed', '[{"description":"Review all vocabulary from this lesson"},{"description":"Write 5 sentences using the grammar structure"},{"description":"Practice the dialogue aloud"}]', 35, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-00006a4237ce', 'In this lesson you learned about False Friends & Idioms. You practiced vocabulary related to translation and grammar structure present_tense.', '["Mastered vocabulary about False Friends & Idioms","Applied present_tense correctly","Read and understood a text about False Friends & Idioms","Practiced speaking about False Friends & Idioms"]', '[{"title":"False Friends und idiomatische Wendungen Review","summary":"present_tense — the main grammar focus of this lesson."}]', ARRAY['False Friends & Idioms core vocabulary','translation key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)','Verb is always in second position']::text[], ARRAY['Practice 15-20 minutes daily','Use new vocabulary in real sentences','Speak out loud to improve pronunciation']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006a4237ce', 'translation', 'Translate to German: "This is a translation exercise."', '[]', 'Das ist eine Übersetzungsübung.', 'Use "das ist" for "this is"', 1, 40);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006a4237ce', 'Culture: False Friends & Idioms in German-Speaking Countries', 'Learn how False Friends & Idioms is approached in German culture.

تعلم كيف يتم التعامل مع False Friends & Idioms في الثقافة الألمانية.', '["Tip: Be direct and polite","Tip: Use formal language with strangers","Tip: Respect punctuality"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006a4237ce', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Common error for Arabic speakers","correction":"Correct version","explanation":"Explanation of the error"}]', 30);

  -- Lesson 3: Test: Übersetzung und Sprachmittlung (L-C2-04-03)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-00006a4237cf', '00000000-0000-4000-a000-000039d176c2', 'Test: Übersetzung und Sprachmittlung', 'Module test on translation.', 'Module Test', 'test', '["Understand and use vocabulary related to Module Test","Apply present_tense correctly","Read and comprehend a text about Module Test","Listen and understand a dialogue about Module Test","Speak about Module Test in simple sentences","Write a short text about Module Test"]', 50, 3, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-00006a4237cf', 'die Übersetzung', 'الترجمة', 'translation', 'die', 'die Übersetzungen', 'noun', 'Die Übersetzung ist gelungen.', 'The translation is successful.', 'B2', 1),
  ('00000000-0000-4000-a000-00006a4237cf', 'übersetzen', 'يترجم', 'to translate', NULL, NULL, 'verb', 'Ich übersetze den Text ins Arabische.', 'I translate the text into Arabic.', 'B1', 2),
  ('00000000-0000-4000-a000-00006a4237cf', 'der Dolmetscher', 'المترجم الفوري', 'interpreter', 'der', 'die Dolmetscher', 'noun', 'Der Dolmetscher übersetzt mündlich.', 'The interpreter translates orally.', 'B2', 3),
  ('00000000-0000-4000-a000-00006a4237cf', 'die Muttersprache', 'اللغة الأم', 'native language', 'die', 'die Muttersprachen', 'noun', 'Meine Muttersprache ist Arabisch.', 'My native language is Arabic.', 'B1', 4),
  ('00000000-0000-4000-a000-00006a4237cf', 'falscher Freund', 'الصديق المزيف', 'false friend', NULL, NULL, 'noun', 'Ein falscher Freund sieht ähnlich aus, bedeutet aber etwas anderes.', 'A false friend looks similar but means something different.', 'C1', 5),
  ('00000000-0000-4000-a000-00006a4237cf', 'die Sprachmittlung', 'الوساطة اللغوية', 'language mediation', 'die', NULL, 'noun', 'Sprachmittlung vermittelt zwischen Kulturen.', 'Language mediation bridges between cultures.', 'C2', 6),
  ('00000000-0000-4000-a000-00006a4237cf', 'die Äquivalenz', 'التكافؤ', 'equivalence', 'die', NULL, 'noun', 'Äquivalenz in der Übersetzung ist ein Ideal.', 'Equivalence in translation is an ideal.', 'C2', 7),
  ('00000000-0000-4000-a000-00006a4237cf', 'der Stil', 'الأسلوب', 'style', 'der', 'die Stile', 'noun', 'Der Stil des Textes ist formell.', 'The style of the text is formal.', 'B2', 8),
  ('00000000-0000-4000-a000-00006a4237cf', 'das Register', 'المستوى اللغوي', 'register', 'das', 'die Register', 'noun', 'Das Register passt zur Situation.', 'The register fits the situation.', 'C1', 9),
  ('00000000-0000-4000-a000-00006a4237cf', 'das Stilmittel', 'الأداة الأسلوبية', 'stylistic device', 'das', 'die Stilmittel', 'noun', 'Das Stilmittel unterstreicht die Aussage.', 'The stylistic device emphasizes the statement.', 'C1', 10),
  ('00000000-0000-4000-a000-00006a4237cf', 'die Alliteration', 'الجناس', 'alliteration', 'die', 'die Alliterationen', 'noun', 'Die Alliteration wiederholt den Anlaut.', 'Alliteration repeats the initial sound.', 'C2', 11),
  ('00000000-0000-4000-a000-00006a4237cf', 'die Ellipse', 'الحذف', 'ellipsis', 'die', 'die Ellipsen', 'noun', 'Die Ellipse spart Wörter aus.', 'The ellipsis omits words.', 'C2', 12),
  ('00000000-0000-4000-a000-00006a4237cf', 'die Hyperbel', 'المبالغة', 'hyperbole', 'die', 'die Hyperbeln', 'noun', 'Die Hyperbel übertreibt stark.', 'Hyperbole exaggerates strongly.', 'C2', 13),
  ('00000000-0000-4000-a000-00006a4237cf', 'die Poetik', 'الشعرية', 'poetics', 'die', NULL, 'noun', 'Poetik ist die Theorie der Dichtkunst.', 'Poetics is the theory of poetry.', 'C2', 14),
  ('00000000-0000-4000-a000-00006a4237cf', 'der Vers', 'البيت الشعري', 'verse', 'der', 'die Verse', 'noun', 'Der Vers hat fünf Hebungen.', 'The verse has five stresses.', 'C1', 15),
  ('00000000-0000-4000-a000-00006a4237cf', 'der Reim', 'القافية', 'rhyme', 'der', 'die Reime', 'noun', 'Der Reim verbindet die Zeilen.', 'Rhyme connects the lines.', 'C1', 16),
  ('00000000-0000-4000-a000-00006a4237cf', 'das Metrum', 'الوزن', 'meter', 'das', 'die Metren', 'noun', 'Das Metrum bestimmt den Rhythmus.', 'The meter determines the rhythm.', 'C2', 17),
  ('00000000-0000-4000-a000-00006a4237cf', 'die Gattung', 'النوع الأدبي', 'genre', 'die', 'die Gattungen', 'noun', 'Lyrik ist eine literarische Gattung.', 'Lyric poetry is a literary genre.', 'C1', 18),
  ('00000000-0000-4000-a000-00006a4237cf', 'die Pragmatik', 'البراغماتية', 'pragmatics', 'die', NULL, 'noun', 'Pragmatik untersucht Sprache im Kontext.', 'Pragmatics studies language in context.', 'C2', 19),
  ('00000000-0000-4000-a000-00006a4237cf', 'der Sprechakt', 'فعل الكلام', 'speech act', 'der', 'die Sprechakte', 'noun', 'Der Sprechakt ändert die Wirklichkeit.', 'The speech act changes reality.', 'C2', 20),
  ('00000000-0000-4000-a000-00006a4237cf', 'die Implikatur', 'الاستلزام التخاطبي', 'implicature', 'die', 'die Implikaturen', 'noun', 'Die Implikatur ist die indirekte Bedeutung.', 'Implicature is the indirect meaning.', 'C2', 21),
  ('00000000-0000-4000-a000-00006a4237cf', 'der Kontext', 'السياق', 'context', 'der', 'die Kontexte', 'noun', 'Der Kontext bestimmt die Bedeutung.', 'Context determines meaning.', 'B2', 22),
  ('00000000-0000-4000-a000-00006a4237cf', 'die Höflichkeit', 'الأدب / اللباقة', 'politeness', 'die', NULL, 'noun', 'Höflichkeit ist in Japan sehr wichtig.', 'Politeness is very important in Japan.', 'B2', 23),
  ('00000000-0000-4000-a000-00006a4237cf', 'die Konversationsanalyse', 'تحليل المحادثة', 'conversation analysis', 'die', NULL, 'noun', 'Die Konversationsanalyse untersucht Gespräche.', 'Conversation analysis examines conversations.', 'C2', 24),
  ('00000000-0000-4000-a000-00006a4237cf', 'die Bedeutung', 'المعنى', 'meaning', 'die', 'die Bedeutungen', 'noun', 'Die Bedeutung des Wortes ist klar.', 'The meaning of the word is clear.', 'B2', 25),
  ('00000000-0000-4000-a000-00006a4237cf', 'die Synonymie', 'الترادف', 'synonymy', 'die', NULL, 'noun', 'Synonymie bedeutet Bedeutungsgleichheit.', 'Synonymy means sameness of meaning.', 'C2', 26),
  ('00000000-0000-4000-a000-00006a4237cf', 'die Antonymie', 'التضاد', 'antonymy', 'die', NULL, 'noun', 'Antonymie bezeichnet Gegensätze.', 'Antonymy denotes opposites.', 'C2', 27),
  ('00000000-0000-4000-a000-00006a4237cf', 'die Polysemie', 'تعدد المعاني', 'polysemy', 'die', NULL, 'noun', 'Polysemie hat mehrere Bedeutungen.', 'Polysemy has multiple meanings.', 'C2', 28),
  ('00000000-0000-4000-a000-00006a4237cf', 'die Kompositionalität', 'التركيبية', 'compositionality', 'die', NULL, 'noun', 'Kompositionalität besagt, dass Bedeutung aus Teilen besteht.', 'Compositionality holds that meaning consists of parts.', 'C2', 29),
  ('00000000-0000-4000-a000-00006a4237cf', 'der Dialekt', 'اللهجة', 'dialect', 'der', 'die Dialekte', 'noun', 'Der bayerische Dialekt ist schwer zu verstehen.', 'The Bavarian dialect is hard to understand.', 'B2', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006a4237cf', 'Präsens der regelmäßigen Verben (Present Tense) / المضارع للأفعال المنتظمة', 'In German, regular verbs follow a consistent pattern. The infinitive ends in -en. Remove the -en and add the personal endings: ich -e, du -st, er/sie/es -t, wir -en, ihr -t, sie/Sie -en. For most Arabic speakers, this is easier than Arabic verb conjugation because German has fewer forms.', '[{"rule":"ich: stem + e","note":"Ich lerne, ich wohne, ich arbeite"},{"rule":"du: stem + st","note":"Du lernst, du wohnst, du arbeitest"},{"rule":"er/sie/es: stem + t","note":"Er lernt, sie wohnt, es arbeitet"},{"rule":"wir: stem + en","note":"Wir lernen, wir wohnen, wir arbeiten"},{"rule":"ihr: stem + t","note":"Ihr lernt, ihr wohnt, ihr arbeitet"},{"rule":"sie/Sie: stem + en","note":"Sie lernen, Sie wohnen"}]', '[{"german":"Ich lerne Deutsch.","arabic":"أنا أتعلم الألمانية.","english":"I am learning German."},{"german":"Du wohnst in Berlin.","arabic":"أنت تسكن في برلين.","english":"You live in Berlin."},{"german":"Er arbeitet bei Siemens.","arabic":"هو يعمل في سيمنز.","english":"He works at Siemens."}]', '[{"mistake":"Ich lernen Deutsch","correction":"Ich lerne Deutsch","explanation":"After \"ich\" we use the stem + e, not the infinitive."},{"mistake":"Er lerne Deutsch","correction":"Er lernt Deutsch","explanation":"After \"er/sie/es\" we add -t, not -e."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006a4237cf', 'multiple_choice', 'What does "die Übersetzung" mean?', '["The","A","This","That"]', 'The', 'This is a basic vocabulary item.', 1, 1),
  ('00000000-0000-4000-a000-00006a4237cf', 'fill_gap', 'Complete with the correct form.', '["Option 1","Option 2","Option 3"]', 'Option 1', 'Practice grammar in context.', 1, 2),
  ('00000000-0000-4000-a000-00006a4237cf', 'translation', 'Translate: "I learn German."', '["Ich lerne Deutsch.","Ich lerne Englisch.","Ich lerne Spanisch."]', 'Ich lerne Deutsch.', 'Ich = I, lerne = learn/learning, Deutsch = German.', 2, 3),
  ('00000000-0000-4000-a000-00006a4237cf', 'sentence_order', 'Order the sentence.', '[]', 'Ich lerne Deutsch.', 'Subject + verb + object in German.', 2, 4),
  ('00000000-0000-4000-a000-00006a4237cf', 'matching', 'Match the words with their meanings.', '["Match pairs correctly"]', 'Correct pairs', 'Test your vocabulary knowledge.', 2, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-00006a4237cf', 'multiple_choice', 'What is the main topic of this lesson?', '["Module Test","Sports","Music","Travel"]', 'Module Test', 1, 1),
  ('00000000-0000-4000-a000-00006a4237cf', 'true_false', 'This lesson teaches vocabulary about Module Test.', '["True","False"]', 'True', 1, 2),
  ('00000000-0000-4000-a000-00006a4237cf', 'true_false', 'German word order is always the same as English.', '["True","False"]', 'False', 1, 3),
  ('00000000-0000-4000-a000-00006a4237cf', 'multiple_choice', 'How do you say "please" in German?', '["Danke","Bitte","Tschüss","Hallo"]', 'Bitte', 1, 4),
  ('00000000-0000-4000-a000-00006a4237cf', 'multiple_choice', 'Which article is feminine?', '["der","die","das","den"]', 'die', 1, 5),
  ('00000000-0000-4000-a000-00006a4237cf', 'fill_blank', 'Ich ___ (to be) Student.', '["bin","bist","ist","sind"]', 'bin', 1, 6),
  ('00000000-0000-4000-a000-00006a4237cf', 'multiple_choice', 'What is the correct word order?', '["Ich lerne Deutsch","Ich Deutsch lerne","Lerne ich Deutsch","Deutsch ich lerne"]', 'Ich lerne Deutsch', 1, 7),
  ('00000000-0000-4000-a000-00006a4237cf', 'true_false', 'All German nouns are capitalized.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-00006a4237cf', 'multiple_choice', 'How do you say "thank you" in German?', '["Bitte","Danke","Tschüss","Hallo"]', 'Danke', 1, 9),
  ('00000000-0000-4000-a000-00006a4237cf', 'fill_blank', 'Wo ___ du? (to live)', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 1, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-00006a4237cf', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Übersetzung und Sprachmittlung', 'formal', false, 1),
  ('00000000-0000-4000-a000-00006a4237cf', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Übersetzung und Sprachmittlung', 'informal', false, 2),
  ('00000000-0000-4000-a000-00006a4237cf', 'Bitte!', 'Please!', 'من فضلك!', 'Used in Übersetzung und Sprachmittlung', 'neutral', false, 3),
  ('00000000-0000-4000-a000-00006a4237cf', 'Danke!', 'Thanks!', 'شكراً!', 'Used in Übersetzung und Sprachmittlung', 'neutral', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-00006a4237cf', 'Hallo', 'Hello', 'Greeting', 'expression', 1),
  ('00000000-0000-4000-a000-00006a4237cf', 'Danke', 'Thanks', 'Politeness', 'expression', 2),
  ('00000000-0000-4000-a000-00006a4237cf', 'Bitte', 'Please', 'Politeness', 'expression', 3),
  ('00000000-0000-4000-a000-00006a4237cf', 'Tschüss', 'Bye', 'Farewell', 'expression', 4);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-00006a4237cf', 'Test: Übersetzung und Sprachmittlung — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, duration_seconds, speaker_count, scenario) values
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

[Lehrerin]: ممتاز! إلى الغد!', 72, 2, 'Übersetzung und Sprachmittlung');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-00006a4237cf', 'Speaking: Test: Übersetzung und Sprachmittlung', 'Practice talking about Module Test. Answer questions and have a simple conversation.', 'Module Test', ARRAY['Use full sentences','Speak clearly','Don''t worry about mistakes']::text[], ARRAY['die Übersetzung','übersetzen','der Dolmetscher','die Muttersprache','falscher Freund']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-00006a4237cf', 'Writing: Test: Übersetzung und Sprachmittlung', 'Write a short text about Module Test. Use at least 5 vocabulary words from this lesson.', ARRAY['Start with a greeting','Use the vocabulary from this lesson','Check your grammar']::text[], ARRAY['die Übersetzung','übersetzen','der Dolmetscher']::text[], '["Sentence structure","Vocabulary usage"]', 50, 150, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00006a4237cf', 'Test: Übersetzung und Sprachmittlung — Roleplay', 'Module Test', 'Student', 'Teacher', 'Practice conversation about Module Test', 'Hallo! Lass uns über dieses Thema sprechen.', 'advanced', 1, ARRAY['die Übersetzung','übersetzen','der Dolmetscher','die Muttersprache','falscher Freund','die Sprachmittlung','die Äquivalenz','der Stil']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00006a4237cf', 'Test: Übersetzung und Sprachmittlung — Advanced Roleplay', 'Module Test', 'Customer', 'Assistant', 'Extended conversation about Module Test', 'Guten Tag! Wie kann ich Ihnen helfen?', 'advanced', 2, ARRAY['die Übersetzung','übersetzen','der Dolmetscher','die Muttersprache','falscher Freund','die Sprachmittlung','die Äquivalenz','der Stil']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-00006a4237cf', 'Test: Übersetzung und Sprachmittlung — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Test: Übersetzung und Sprachmittlung".', 'Creative practice for Module Test', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-00006a4237cf', 'Homework: Test: Übersetzung und Sprachmittlung', 'Complete these tasks to reinforce "Test: Übersetzung und Sprachmittlung".', 'mixed', '[{"description":"Review all vocabulary from this lesson"},{"description":"Write 5 sentences using the grammar structure"},{"description":"Practice the dialogue aloud"}]', 35, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-00006a4237cf', 'In this lesson you learned about Module Test. You practiced vocabulary related to translation and grammar structure present_tense.', '["Mastered vocabulary about Module Test","Applied present_tense correctly","Read and understood a text about Module Test","Practiced speaking about Module Test"]', '[{"title":"Test: Übersetzung und Sprachmittlung Review","summary":"present_tense — the main grammar focus of this lesson."}]', ARRAY['Module Test core vocabulary','translation key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)','Verb is always in second position']::text[], ARRAY['Practice 15-20 minutes daily','Use new vocabulary in real sentences','Speak out loud to improve pronunciation']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006a4237cf', 'translation', 'Translate to German: "This is a translation exercise."', '[]', 'Das ist eine Übersetzungsübung.', 'Use "das ist" for "this is"', 1, 40);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006a4237cf', 'Culture: Module Test in German-Speaking Countries', 'Learn how Module Test is approached in German culture.

تعلم كيف يتم التعامل مع Module Test في الثقافة الألمانية.', '["Tip: Be direct and polite","Tip: Use formal language with strangers","Tip: Respect punctuality"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006a4237cf', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Common error for Arabic speakers","correction":"Correct version","explanation":"Explanation of the error"}]', 30);

  -- Module 5: Wissenschaftskommunikation
  insert into public.course_modules (id, level_id, title, description, objectives, order_index, estimated_hours, is_published)
  values ('00000000-0000-4000-a000-000039d176c3', 'C2', 'Wissenschaftskommunikation', 'Learn to communicate complex scientific topics to different audiences.', '["Write scientific papers in German","Present research findings","Communicate science to the public","Use appropriate register for different audiences","Understand publication conventions"]', 5, 5, true)
  on conflict (id) do nothing;

  -- Lesson 1: Wissenschaftliches Publizieren (L-C2-05-01)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-00006a42ac2c', '00000000-0000-4000-a000-000039d176c3', 'Wissenschaftliches Publizieren', 'Learn scientific publishing conventions.', 'Scientific Publishing', 'vocabulary', '["Understand and use vocabulary related to Scientific Publishing","Apply present_tense correctly","Read and comprehend a text about Scientific Publishing","Listen and understand a dialogue about Scientific Publishing","Speak about Scientific Publishing in simple sentences","Write a short text about Scientific Publishing"]', 60, 1, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-00006a42ac2c', 'die Forschung', 'البحث', 'research', 'die', NULL, 'noun', 'Die Forschung ist interdisziplinär.', 'The research is interdisciplinary.', 'B2', 1),
  ('00000000-0000-4000-a000-00006a42ac2c', 'die Analyse', 'التحليل', 'analysis', 'die', 'die Analysen', 'noun', 'Die Analyse der Daten dauert lange.', 'The analysis of the data takes long.', 'B2', 2),
  ('00000000-0000-4000-a000-00006a42ac2c', 'die Methode', 'الطريقة', 'method', 'die', 'die Methoden', 'noun', 'Die Methode ist wissenschaftlich anerkannt.', 'The method is scientifically recognized.', 'B2', 3),
  ('00000000-0000-4000-a000-00006a42ac2c', 'die These', 'الأطروحة', 'thesis', 'die', 'die Thesen', 'noun', 'Die These wird im Kapitel 3 diskutiert.', 'The thesis is discussed in chapter 3.', 'C1', 4),
  ('00000000-0000-4000-a000-00006a42ac2c', 'die Publikation', 'المنشور', 'publication', 'die', 'die Publikationen', 'noun', 'Die Publikation erscheint im Springer Verlag.', 'The publication appears at Springer.', 'C1', 5),
  ('00000000-0000-4000-a000-00006a42ac2c', 'der Diskurs', 'الخطاب', 'discourse', 'der', 'die Diskurse', 'noun', 'Der akademische Diskurs ist vielschichtig.', 'The academic discourse is multilayered.', 'C1', 6),
  ('00000000-0000-4000-a000-00006a42ac2c', 'die Hypothese', 'الفرضية', 'hypothesis', 'die', 'die Hypothesen', 'noun', 'Die Hypothese wurde bestätigt.', 'The hypothesis was confirmed.', 'C1', 7),
  ('00000000-0000-4000-a000-00006a42ac2c', 'die Empirie', 'التجريبية', 'empirical research', 'die', NULL, 'noun', 'Die Empirie liefert Daten.', 'Empirical research provides data.', 'C1', 8),
  ('00000000-0000-4000-a000-00006a42ac2c', 'der Stil', 'الأسلوب', 'style', 'der', 'die Stile', 'noun', 'Der Stil des Textes ist formell.', 'The style of the text is formal.', 'B2', 9),
  ('00000000-0000-4000-a000-00006a42ac2c', 'das Register', 'المستوى اللغوي', 'register', 'das', 'die Register', 'noun', 'Das Register passt zur Situation.', 'The register fits the situation.', 'C1', 10),
  ('00000000-0000-4000-a000-00006a42ac2c', 'das Stilmittel', 'الأداة الأسلوبية', 'stylistic device', 'das', 'die Stilmittel', 'noun', 'Das Stilmittel unterstreicht die Aussage.', 'The stylistic device emphasizes the statement.', 'C1', 11),
  ('00000000-0000-4000-a000-00006a42ac2c', 'die Alliteration', 'الجناس', 'alliteration', 'die', 'die Alliterationen', 'noun', 'Die Alliteration wiederholt den Anlaut.', 'Alliteration repeats the initial sound.', 'C2', 12),
  ('00000000-0000-4000-a000-00006a42ac2c', 'die Ellipse', 'الحذف', 'ellipsis', 'die', 'die Ellipsen', 'noun', 'Die Ellipse spart Wörter aus.', 'The ellipsis omits words.', 'C2', 13),
  ('00000000-0000-4000-a000-00006a42ac2c', 'die Hyperbel', 'المبالغة', 'hyperbole', 'die', 'die Hyperbeln', 'noun', 'Die Hyperbel übertreibt stark.', 'Hyperbole exaggerates strongly.', 'C2', 14),
  ('00000000-0000-4000-a000-00006a42ac2c', 'die Poetik', 'الشعرية', 'poetics', 'die', NULL, 'noun', 'Poetik ist die Theorie der Dichtkunst.', 'Poetics is the theory of poetry.', 'C2', 15),
  ('00000000-0000-4000-a000-00006a42ac2c', 'der Vers', 'البيت الشعري', 'verse', 'der', 'die Verse', 'noun', 'Der Vers hat fünf Hebungen.', 'The verse has five stresses.', 'C1', 16),
  ('00000000-0000-4000-a000-00006a42ac2c', 'der Reim', 'القافية', 'rhyme', 'der', 'die Reime', 'noun', 'Der Reim verbindet die Zeilen.', 'Rhyme connects the lines.', 'C1', 17),
  ('00000000-0000-4000-a000-00006a42ac2c', 'das Metrum', 'الوزن', 'meter', 'das', 'die Metren', 'noun', 'Das Metrum bestimmt den Rhythmus.', 'The meter determines the rhythm.', 'C2', 18),
  ('00000000-0000-4000-a000-00006a42ac2c', 'die Gattung', 'النوع الأدبي', 'genre', 'die', 'die Gattungen', 'noun', 'Lyrik ist eine literarische Gattung.', 'Lyric poetry is a literary genre.', 'C1', 19),
  ('00000000-0000-4000-a000-00006a42ac2c', 'die Pragmatik', 'البراغماتية', 'pragmatics', 'die', NULL, 'noun', 'Pragmatik untersucht Sprache im Kontext.', 'Pragmatics studies language in context.', 'C2', 20),
  ('00000000-0000-4000-a000-00006a42ac2c', 'der Sprechakt', 'فعل الكلام', 'speech act', 'der', 'die Sprechakte', 'noun', 'Der Sprechakt ändert die Wirklichkeit.', 'The speech act changes reality.', 'C2', 21),
  ('00000000-0000-4000-a000-00006a42ac2c', 'die Implikatur', 'الاستلزام التخاطبي', 'implicature', 'die', 'die Implikaturen', 'noun', 'Die Implikatur ist die indirekte Bedeutung.', 'Implicature is the indirect meaning.', 'C2', 22),
  ('00000000-0000-4000-a000-00006a42ac2c', 'der Kontext', 'السياق', 'context', 'der', 'die Kontexte', 'noun', 'Der Kontext bestimmt die Bedeutung.', 'Context determines meaning.', 'B2', 23),
  ('00000000-0000-4000-a000-00006a42ac2c', 'die Höflichkeit', 'الأدب / اللباقة', 'politeness', 'die', NULL, 'noun', 'Höflichkeit ist in Japan sehr wichtig.', 'Politeness is very important in Japan.', 'B2', 24),
  ('00000000-0000-4000-a000-00006a42ac2c', 'die Konversationsanalyse', 'تحليل المحادثة', 'conversation analysis', 'die', NULL, 'noun', 'Die Konversationsanalyse untersucht Gespräche.', 'Conversation analysis examines conversations.', 'C2', 25),
  ('00000000-0000-4000-a000-00006a42ac2c', 'die Bedeutung', 'المعنى', 'meaning', 'die', 'die Bedeutungen', 'noun', 'Die Bedeutung des Wortes ist klar.', 'The meaning of the word is clear.', 'B2', 26),
  ('00000000-0000-4000-a000-00006a42ac2c', 'die Synonymie', 'الترادف', 'synonymy', 'die', NULL, 'noun', 'Synonymie bedeutet Bedeutungsgleichheit.', 'Synonymy means sameness of meaning.', 'C2', 27),
  ('00000000-0000-4000-a000-00006a42ac2c', 'die Antonymie', 'التضاد', 'antonymy', 'die', NULL, 'noun', 'Antonymie bezeichnet Gegensätze.', 'Antonymy denotes opposites.', 'C2', 28),
  ('00000000-0000-4000-a000-00006a42ac2c', 'die Polysemie', 'تعدد المعاني', 'polysemy', 'die', NULL, 'noun', 'Polysemie hat mehrere Bedeutungen.', 'Polysemy has multiple meanings.', 'C2', 29),
  ('00000000-0000-4000-a000-00006a42ac2c', 'die Kompositionalität', 'التركيبية', 'compositionality', 'die', NULL, 'noun', 'Kompositionalität besagt, dass Bedeutung aus Teilen besteht.', 'Compositionality holds that meaning consists of parts.', 'C2', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006a42ac2c', 'Präsens der regelmäßigen Verben (Present Tense) / المضارع للأفعال المنتظمة', 'In German, regular verbs follow a consistent pattern. The infinitive ends in -en. Remove the -en and add the personal endings: ich -e, du -st, er/sie/es -t, wir -en, ihr -t, sie/Sie -en. For most Arabic speakers, this is easier than Arabic verb conjugation because German has fewer forms.', '[{"rule":"ich: stem + e","note":"Ich lerne, ich wohne, ich arbeite"},{"rule":"du: stem + st","note":"Du lernst, du wohnst, du arbeitest"},{"rule":"er/sie/es: stem + t","note":"Er lernt, sie wohnt, es arbeitet"},{"rule":"wir: stem + en","note":"Wir lernen, wir wohnen, wir arbeiten"},{"rule":"ihr: stem + t","note":"Ihr lernt, ihr wohnt, ihr arbeitet"},{"rule":"sie/Sie: stem + en","note":"Sie lernen, Sie wohnen"}]', '[{"german":"Ich lerne Deutsch.","arabic":"أنا أتعلم الألمانية.","english":"I am learning German."},{"german":"Du wohnst in Berlin.","arabic":"أنت تسكن في برلين.","english":"You live in Berlin."},{"german":"Er arbeitet bei Siemens.","arabic":"هو يعمل في سيمنز.","english":"He works at Siemens."}]', '[{"mistake":"Ich lernen Deutsch","correction":"Ich lerne Deutsch","explanation":"After \"ich\" we use the stem + e, not the infinitive."},{"mistake":"Er lerne Deutsch","correction":"Er lernt Deutsch","explanation":"After \"er/sie/es\" we add -t, not -e."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006a42ac2c', 'multiple_choice', 'What does "die Forschung" mean?', '["The","A","This","That"]', 'The', 'This is a basic vocabulary item.', 1, 1),
  ('00000000-0000-4000-a000-00006a42ac2c', 'fill_gap', 'Complete with the correct form.', '["Option 1","Option 2","Option 3"]', 'Option 1', 'Practice grammar in context.', 1, 2),
  ('00000000-0000-4000-a000-00006a42ac2c', 'translation', 'Translate: "I learn German."', '["Ich lerne Deutsch.","Ich lerne Englisch.","Ich lerne Spanisch."]', 'Ich lerne Deutsch.', 'Ich = I, lerne = learn/learning, Deutsch = German.', 2, 3),
  ('00000000-0000-4000-a000-00006a42ac2c', 'sentence_order', 'Order the sentence.', '[]', 'Ich lerne Deutsch.', 'Subject + verb + object in German.', 2, 4),
  ('00000000-0000-4000-a000-00006a42ac2c', 'matching', 'Match the words with their meanings.', '["Match pairs correctly"]', 'Correct pairs', 'Test your vocabulary knowledge.', 2, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-00006a42ac2c', 'multiple_choice', 'What is the main topic of this lesson?', '["Scientific Publishing","Sports","Music","Travel"]', 'Scientific Publishing', 1, 1),
  ('00000000-0000-4000-a000-00006a42ac2c', 'true_false', 'This lesson teaches vocabulary about Scientific Publishing.', '["True","False"]', 'True', 1, 2),
  ('00000000-0000-4000-a000-00006a42ac2c', 'true_false', 'German word order is always the same as English.', '["True","False"]', 'False', 1, 3),
  ('00000000-0000-4000-a000-00006a42ac2c', 'multiple_choice', 'How do you say "please" in German?', '["Danke","Bitte","Tschüss","Hallo"]', 'Bitte', 1, 4),
  ('00000000-0000-4000-a000-00006a42ac2c', 'multiple_choice', 'Which article is feminine?', '["der","die","das","den"]', 'die', 1, 5),
  ('00000000-0000-4000-a000-00006a42ac2c', 'fill_blank', 'Ich ___ (to be) Student.', '["bin","bist","ist","sind"]', 'bin', 1, 6),
  ('00000000-0000-4000-a000-00006a42ac2c', 'multiple_choice', 'What is the correct word order?', '["Ich lerne Deutsch","Ich Deutsch lerne","Lerne ich Deutsch","Deutsch ich lerne"]', 'Ich lerne Deutsch', 1, 7),
  ('00000000-0000-4000-a000-00006a42ac2c', 'true_false', 'All German nouns are capitalized.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-00006a42ac2c', 'multiple_choice', 'How do you say "thank you" in German?', '["Bitte","Danke","Tschüss","Hallo"]', 'Danke', 1, 9),
  ('00000000-0000-4000-a000-00006a42ac2c', 'fill_blank', 'Wo ___ du? (to live)', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 1, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-00006a42ac2c', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Wissenschaftskommunikation', 'formal', false, 1),
  ('00000000-0000-4000-a000-00006a42ac2c', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Wissenschaftskommunikation', 'informal', false, 2),
  ('00000000-0000-4000-a000-00006a42ac2c', 'Bitte!', 'Please!', 'من فضلك!', 'Used in Wissenschaftskommunikation', 'neutral', false, 3),
  ('00000000-0000-4000-a000-00006a42ac2c', 'Danke!', 'Thanks!', 'شكراً!', 'Used in Wissenschaftskommunikation', 'neutral', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-00006a42ac2c', 'Hallo', 'Hello', 'Greeting', 'expression', 1),
  ('00000000-0000-4000-a000-00006a42ac2c', 'Danke', 'Thanks', 'Politeness', 'expression', 2),
  ('00000000-0000-4000-a000-00006a42ac2c', 'Bitte', 'Please', 'Politeness', 'expression', 3),
  ('00000000-0000-4000-a000-00006a42ac2c', 'Tschüss', 'Bye', 'Farewell', 'expression', 4);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-00006a42ac2c', 'Wissenschaftliches Publizieren — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, duration_seconds, speaker_count, scenario) values
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

[Lehrerin]: ممتاز! إلى الغد!', 72, 2, 'Wissenschaftskommunikation');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-00006a42ac2c', 'Speaking: Wissenschaftliches Publizieren', 'Practice talking about Scientific Publishing. Answer questions and have a simple conversation.', 'Scientific Publishing', ARRAY['Use full sentences','Speak clearly','Don''t worry about mistakes']::text[], ARRAY['die Forschung','die Analyse','die Methode','die These','die Publikation']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-00006a42ac2c', 'Writing: Wissenschaftliches Publizieren', 'Write a short text about Scientific Publishing. Use at least 5 vocabulary words from this lesson.', ARRAY['Start with a greeting','Use the vocabulary from this lesson','Check your grammar']::text[], ARRAY['die Forschung','die Analyse','die Methode']::text[], '["Sentence structure","Vocabulary usage"]', 50, 150, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00006a42ac2c', 'Wissenschaftliches Publizieren — Roleplay', 'Scientific Publishing', 'Student', 'Teacher', 'Practice conversation about Scientific Publishing', 'Hallo! Lass uns über dieses Thema sprechen.', 'advanced', 1, ARRAY['die Forschung','die Analyse','die Methode','die These','die Publikation','der Diskurs','die Hypothese','die Empirie']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00006a42ac2c', 'Wissenschaftliches Publizieren — Advanced Roleplay', 'Scientific Publishing', 'Customer', 'Assistant', 'Extended conversation about Scientific Publishing', 'Guten Tag! Wie kann ich Ihnen helfen?', 'advanced', 2, ARRAY['die Forschung','die Analyse','die Methode','die These','die Publikation','der Diskurs','die Hypothese','die Empirie']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-00006a42ac2c', 'Wissenschaftliches Publizieren — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Wissenschaftliches Publizieren".', 'Creative practice for Scientific Publishing', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-00006a42ac2c', 'Homework: Wissenschaftliches Publizieren', 'Complete these tasks to reinforce "Wissenschaftliches Publizieren".', 'mixed', '[{"description":"Review all vocabulary from this lesson"},{"description":"Write 5 sentences using the grammar structure"},{"description":"Practice the dialogue aloud"}]', 35, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-00006a42ac2c', 'In this lesson you learned about Scientific Publishing. You practiced vocabulary related to academic and grammar structure present_tense.', '["Mastered vocabulary about Scientific Publishing","Applied present_tense correctly","Read and understood a text about Scientific Publishing","Practiced speaking about Scientific Publishing"]', '[{"title":"Wissenschaftliches Publizieren Review","summary":"present_tense — the main grammar focus of this lesson."}]', ARRAY['Scientific Publishing core vocabulary','academic key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)','Verb is always in second position']::text[], ARRAY['Practice 15-20 minutes daily','Use new vocabulary in real sentences','Speak out loud to improve pronunciation']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006a42ac2c', 'translation', 'Translate to German: "This is a translation exercise."', '[]', 'Das ist eine Übersetzungsübung.', 'Use "das ist" for "this is"', 1, 40);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006a42ac2c', 'Culture: Scientific Publishing in German-Speaking Countries', 'Learn how Scientific Publishing is approached in German culture.

تعلم كيف يتم التعامل مع Scientific Publishing في الثقافة الألمانية.', '["Tip: Be direct and polite","Tip: Use formal language with strangers","Tip: Respect punctuality"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006a42ac2c', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Common error for Arabic speakers","correction":"Correct version","explanation":"Explanation of the error"}]', 30);

  -- Lesson 2: Wissenschaft verständlich kommunizieren (L-C2-05-02)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-00006a42ac2d', '00000000-0000-4000-a000-000039d176c3', 'Wissenschaft verständlich kommunizieren', 'Communicate complex topics to general audiences.', 'Science Communication', 'speaking', '["Understand and use vocabulary related to Science Communication","Apply present_tense correctly","Read and comprehend a text about Science Communication","Listen and understand a dialogue about Science Communication","Speak about Science Communication in simple sentences","Write a short text about Science Communication"]', 55, 2, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-00006a42ac2d', 'die Forschung', 'البحث', 'research', 'die', NULL, 'noun', 'Die Forschung ist interdisziplinär.', 'The research is interdisciplinary.', 'B2', 1),
  ('00000000-0000-4000-a000-00006a42ac2d', 'die Analyse', 'التحليل', 'analysis', 'die', 'die Analysen', 'noun', 'Die Analyse der Daten dauert lange.', 'The analysis of the data takes long.', 'B2', 2),
  ('00000000-0000-4000-a000-00006a42ac2d', 'die Methode', 'الطريقة', 'method', 'die', 'die Methoden', 'noun', 'Die Methode ist wissenschaftlich anerkannt.', 'The method is scientifically recognized.', 'B2', 3),
  ('00000000-0000-4000-a000-00006a42ac2d', 'die These', 'الأطروحة', 'thesis', 'die', 'die Thesen', 'noun', 'Die These wird im Kapitel 3 diskutiert.', 'The thesis is discussed in chapter 3.', 'C1', 4),
  ('00000000-0000-4000-a000-00006a42ac2d', 'die Publikation', 'المنشور', 'publication', 'die', 'die Publikationen', 'noun', 'Die Publikation erscheint im Springer Verlag.', 'The publication appears at Springer.', 'C1', 5),
  ('00000000-0000-4000-a000-00006a42ac2d', 'der Diskurs', 'الخطاب', 'discourse', 'der', 'die Diskurse', 'noun', 'Der akademische Diskurs ist vielschichtig.', 'The academic discourse is multilayered.', 'C1', 6),
  ('00000000-0000-4000-a000-00006a42ac2d', 'die Hypothese', 'الفرضية', 'hypothesis', 'die', 'die Hypothesen', 'noun', 'Die Hypothese wurde bestätigt.', 'The hypothesis was confirmed.', 'C1', 7),
  ('00000000-0000-4000-a000-00006a42ac2d', 'die Empirie', 'التجريبية', 'empirical research', 'die', NULL, 'noun', 'Die Empirie liefert Daten.', 'Empirical research provides data.', 'C1', 8),
  ('00000000-0000-4000-a000-00006a42ac2d', 'der Stil', 'الأسلوب', 'style', 'der', 'die Stile', 'noun', 'Der Stil des Textes ist formell.', 'The style of the text is formal.', 'B2', 9),
  ('00000000-0000-4000-a000-00006a42ac2d', 'das Register', 'المستوى اللغوي', 'register', 'das', 'die Register', 'noun', 'Das Register passt zur Situation.', 'The register fits the situation.', 'C1', 10),
  ('00000000-0000-4000-a000-00006a42ac2d', 'das Stilmittel', 'الأداة الأسلوبية', 'stylistic device', 'das', 'die Stilmittel', 'noun', 'Das Stilmittel unterstreicht die Aussage.', 'The stylistic device emphasizes the statement.', 'C1', 11),
  ('00000000-0000-4000-a000-00006a42ac2d', 'die Alliteration', 'الجناس', 'alliteration', 'die', 'die Alliterationen', 'noun', 'Die Alliteration wiederholt den Anlaut.', 'Alliteration repeats the initial sound.', 'C2', 12),
  ('00000000-0000-4000-a000-00006a42ac2d', 'die Ellipse', 'الحذف', 'ellipsis', 'die', 'die Ellipsen', 'noun', 'Die Ellipse spart Wörter aus.', 'The ellipsis omits words.', 'C2', 13),
  ('00000000-0000-4000-a000-00006a42ac2d', 'die Hyperbel', 'المبالغة', 'hyperbole', 'die', 'die Hyperbeln', 'noun', 'Die Hyperbel übertreibt stark.', 'Hyperbole exaggerates strongly.', 'C2', 14),
  ('00000000-0000-4000-a000-00006a42ac2d', 'die Poetik', 'الشعرية', 'poetics', 'die', NULL, 'noun', 'Poetik ist die Theorie der Dichtkunst.', 'Poetics is the theory of poetry.', 'C2', 15),
  ('00000000-0000-4000-a000-00006a42ac2d', 'der Vers', 'البيت الشعري', 'verse', 'der', 'die Verse', 'noun', 'Der Vers hat fünf Hebungen.', 'The verse has five stresses.', 'C1', 16),
  ('00000000-0000-4000-a000-00006a42ac2d', 'der Reim', 'القافية', 'rhyme', 'der', 'die Reime', 'noun', 'Der Reim verbindet die Zeilen.', 'Rhyme connects the lines.', 'C1', 17),
  ('00000000-0000-4000-a000-00006a42ac2d', 'das Metrum', 'الوزن', 'meter', 'das', 'die Metren', 'noun', 'Das Metrum bestimmt den Rhythmus.', 'The meter determines the rhythm.', 'C2', 18),
  ('00000000-0000-4000-a000-00006a42ac2d', 'die Gattung', 'النوع الأدبي', 'genre', 'die', 'die Gattungen', 'noun', 'Lyrik ist eine literarische Gattung.', 'Lyric poetry is a literary genre.', 'C1', 19),
  ('00000000-0000-4000-a000-00006a42ac2d', 'die Pragmatik', 'البراغماتية', 'pragmatics', 'die', NULL, 'noun', 'Pragmatik untersucht Sprache im Kontext.', 'Pragmatics studies language in context.', 'C2', 20),
  ('00000000-0000-4000-a000-00006a42ac2d', 'der Sprechakt', 'فعل الكلام', 'speech act', 'der', 'die Sprechakte', 'noun', 'Der Sprechakt ändert die Wirklichkeit.', 'The speech act changes reality.', 'C2', 21),
  ('00000000-0000-4000-a000-00006a42ac2d', 'die Implikatur', 'الاستلزام التخاطبي', 'implicature', 'die', 'die Implikaturen', 'noun', 'Die Implikatur ist die indirekte Bedeutung.', 'Implicature is the indirect meaning.', 'C2', 22),
  ('00000000-0000-4000-a000-00006a42ac2d', 'der Kontext', 'السياق', 'context', 'der', 'die Kontexte', 'noun', 'Der Kontext bestimmt die Bedeutung.', 'Context determines meaning.', 'B2', 23),
  ('00000000-0000-4000-a000-00006a42ac2d', 'die Höflichkeit', 'الأدب / اللباقة', 'politeness', 'die', NULL, 'noun', 'Höflichkeit ist in Japan sehr wichtig.', 'Politeness is very important in Japan.', 'B2', 24),
  ('00000000-0000-4000-a000-00006a42ac2d', 'die Konversationsanalyse', 'تحليل المحادثة', 'conversation analysis', 'die', NULL, 'noun', 'Die Konversationsanalyse untersucht Gespräche.', 'Conversation analysis examines conversations.', 'C2', 25),
  ('00000000-0000-4000-a000-00006a42ac2d', 'die Bedeutung', 'المعنى', 'meaning', 'die', 'die Bedeutungen', 'noun', 'Die Bedeutung des Wortes ist klar.', 'The meaning of the word is clear.', 'B2', 26),
  ('00000000-0000-4000-a000-00006a42ac2d', 'die Synonymie', 'الترادف', 'synonymy', 'die', NULL, 'noun', 'Synonymie bedeutet Bedeutungsgleichheit.', 'Synonymy means sameness of meaning.', 'C2', 27),
  ('00000000-0000-4000-a000-00006a42ac2d', 'die Antonymie', 'التضاد', 'antonymy', 'die', NULL, 'noun', 'Antonymie bezeichnet Gegensätze.', 'Antonymy denotes opposites.', 'C2', 28),
  ('00000000-0000-4000-a000-00006a42ac2d', 'die Polysemie', 'تعدد المعاني', 'polysemy', 'die', NULL, 'noun', 'Polysemie hat mehrere Bedeutungen.', 'Polysemy has multiple meanings.', 'C2', 29),
  ('00000000-0000-4000-a000-00006a42ac2d', 'die Kompositionalität', 'التركيبية', 'compositionality', 'die', NULL, 'noun', 'Kompositionalität besagt, dass Bedeutung aus Teilen besteht.', 'Compositionality holds that meaning consists of parts.', 'C2', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006a42ac2d', 'Präsens der regelmäßigen Verben (Present Tense) / المضارع للأفعال المنتظمة', 'In German, regular verbs follow a consistent pattern. The infinitive ends in -en. Remove the -en and add the personal endings: ich -e, du -st, er/sie/es -t, wir -en, ihr -t, sie/Sie -en. For most Arabic speakers, this is easier than Arabic verb conjugation because German has fewer forms.', '[{"rule":"ich: stem + e","note":"Ich lerne, ich wohne, ich arbeite"},{"rule":"du: stem + st","note":"Du lernst, du wohnst, du arbeitest"},{"rule":"er/sie/es: stem + t","note":"Er lernt, sie wohnt, es arbeitet"},{"rule":"wir: stem + en","note":"Wir lernen, wir wohnen, wir arbeiten"},{"rule":"ihr: stem + t","note":"Ihr lernt, ihr wohnt, ihr arbeitet"},{"rule":"sie/Sie: stem + en","note":"Sie lernen, Sie wohnen"}]', '[{"german":"Ich lerne Deutsch.","arabic":"أنا أتعلم الألمانية.","english":"I am learning German."},{"german":"Du wohnst in Berlin.","arabic":"أنت تسكن في برلين.","english":"You live in Berlin."},{"german":"Er arbeitet bei Siemens.","arabic":"هو يعمل في سيمنز.","english":"He works at Siemens."}]', '[{"mistake":"Ich lernen Deutsch","correction":"Ich lerne Deutsch","explanation":"After \"ich\" we use the stem + e, not the infinitive."},{"mistake":"Er lerne Deutsch","correction":"Er lernt Deutsch","explanation":"After \"er/sie/es\" we add -t, not -e."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006a42ac2d', 'multiple_choice', 'What does "die Forschung" mean?', '["The","A","This","That"]', 'The', 'This is a basic vocabulary item.', 1, 1),
  ('00000000-0000-4000-a000-00006a42ac2d', 'fill_gap', 'Complete with the correct form.', '["Option 1","Option 2","Option 3"]', 'Option 1', 'Practice grammar in context.', 1, 2),
  ('00000000-0000-4000-a000-00006a42ac2d', 'translation', 'Translate: "I learn German."', '["Ich lerne Deutsch.","Ich lerne Englisch.","Ich lerne Spanisch."]', 'Ich lerne Deutsch.', 'Ich = I, lerne = learn/learning, Deutsch = German.', 2, 3),
  ('00000000-0000-4000-a000-00006a42ac2d', 'sentence_order', 'Order the sentence.', '[]', 'Ich lerne Deutsch.', 'Subject + verb + object in German.', 2, 4),
  ('00000000-0000-4000-a000-00006a42ac2d', 'matching', 'Match the words with their meanings.', '["Match pairs correctly"]', 'Correct pairs', 'Test your vocabulary knowledge.', 2, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-00006a42ac2d', 'multiple_choice', 'What is the main topic of this lesson?', '["Science Communication","Sports","Music","Travel"]', 'Science Communication', 1, 1),
  ('00000000-0000-4000-a000-00006a42ac2d', 'true_false', 'This lesson teaches vocabulary about Science Communication.', '["True","False"]', 'True', 1, 2),
  ('00000000-0000-4000-a000-00006a42ac2d', 'true_false', 'German word order is always the same as English.', '["True","False"]', 'False', 1, 3),
  ('00000000-0000-4000-a000-00006a42ac2d', 'multiple_choice', 'How do you say "please" in German?', '["Danke","Bitte","Tschüss","Hallo"]', 'Bitte', 1, 4),
  ('00000000-0000-4000-a000-00006a42ac2d', 'multiple_choice', 'Which article is feminine?', '["der","die","das","den"]', 'die', 1, 5),
  ('00000000-0000-4000-a000-00006a42ac2d', 'fill_blank', 'Ich ___ (to be) Student.', '["bin","bist","ist","sind"]', 'bin', 1, 6),
  ('00000000-0000-4000-a000-00006a42ac2d', 'multiple_choice', 'What is the correct word order?', '["Ich lerne Deutsch","Ich Deutsch lerne","Lerne ich Deutsch","Deutsch ich lerne"]', 'Ich lerne Deutsch', 1, 7),
  ('00000000-0000-4000-a000-00006a42ac2d', 'true_false', 'All German nouns are capitalized.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-00006a42ac2d', 'multiple_choice', 'How do you say "thank you" in German?', '["Bitte","Danke","Tschüss","Hallo"]', 'Danke', 1, 9),
  ('00000000-0000-4000-a000-00006a42ac2d', 'fill_blank', 'Wo ___ du? (to live)', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 1, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-00006a42ac2d', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Wissenschaftskommunikation', 'formal', false, 1),
  ('00000000-0000-4000-a000-00006a42ac2d', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Wissenschaftskommunikation', 'informal', false, 2),
  ('00000000-0000-4000-a000-00006a42ac2d', 'Bitte!', 'Please!', 'من فضلك!', 'Used in Wissenschaftskommunikation', 'neutral', false, 3),
  ('00000000-0000-4000-a000-00006a42ac2d', 'Danke!', 'Thanks!', 'شكراً!', 'Used in Wissenschaftskommunikation', 'neutral', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-00006a42ac2d', 'Hallo', 'Hello', 'Greeting', 'expression', 1),
  ('00000000-0000-4000-a000-00006a42ac2d', 'Danke', 'Thanks', 'Politeness', 'expression', 2),
  ('00000000-0000-4000-a000-00006a42ac2d', 'Bitte', 'Please', 'Politeness', 'expression', 3),
  ('00000000-0000-4000-a000-00006a42ac2d', 'Tschüss', 'Bye', 'Farewell', 'expression', 4);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-00006a42ac2d', 'Wissenschaft verständlich kommunizieren — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, duration_seconds, speaker_count, scenario) values
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

[Lehrerin]: ممتاز! إلى الغد!', 72, 2, 'Wissenschaftskommunikation');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-00006a42ac2d', 'Speaking: Wissenschaft verständlich kommunizieren', 'Practice talking about Science Communication. Answer questions and have a simple conversation.', 'Science Communication', ARRAY['Use full sentences','Speak clearly','Don''t worry about mistakes']::text[], ARRAY['die Forschung','die Analyse','die Methode','die These','die Publikation']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-00006a42ac2d', 'Writing: Wissenschaft verständlich kommunizieren', 'Write a short text about Science Communication. Use at least 5 vocabulary words from this lesson.', ARRAY['Start with a greeting','Use the vocabulary from this lesson','Check your grammar']::text[], ARRAY['die Forschung','die Analyse','die Methode']::text[], '["Sentence structure","Vocabulary usage"]', 50, 150, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00006a42ac2d', 'Wissenschaft verständlich kommunizieren — Roleplay', 'Science Communication', 'Student', 'Teacher', 'Practice conversation about Science Communication', 'Hallo! Lass uns über dieses Thema sprechen.', 'advanced', 1, ARRAY['die Forschung','die Analyse','die Methode','die These','die Publikation','der Diskurs','die Hypothese','die Empirie']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00006a42ac2d', 'Wissenschaft verständlich kommunizieren — Advanced Roleplay', 'Science Communication', 'Customer', 'Assistant', 'Extended conversation about Science Communication', 'Guten Tag! Wie kann ich Ihnen helfen?', 'advanced', 2, ARRAY['die Forschung','die Analyse','die Methode','die These','die Publikation','der Diskurs','die Hypothese','die Empirie']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-00006a42ac2d', 'Wissenschaft verständlich kommunizieren — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Wissenschaft verständlich kommunizieren".', 'Creative practice for Science Communication', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-00006a42ac2d', 'Homework: Wissenschaft verständlich kommunizieren', 'Complete these tasks to reinforce "Wissenschaft verständlich kommunizieren".', 'mixed', '[{"description":"Review all vocabulary from this lesson"},{"description":"Write 5 sentences using the grammar structure"},{"description":"Practice the dialogue aloud"}]', 35, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-00006a42ac2d', 'In this lesson you learned about Science Communication. You practiced vocabulary related to academic and grammar structure present_tense.', '["Mastered vocabulary about Science Communication","Applied present_tense correctly","Read and understood a text about Science Communication","Practiced speaking about Science Communication"]', '[{"title":"Wissenschaft verständlich kommunizieren Review","summary":"present_tense — the main grammar focus of this lesson."}]', ARRAY['Science Communication core vocabulary','academic key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)','Verb is always in second position']::text[], ARRAY['Practice 15-20 minutes daily','Use new vocabulary in real sentences','Speak out loud to improve pronunciation']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006a42ac2d', 'translation', 'Translate to German: "This is a translation exercise."', '[]', 'Das ist eine Übersetzungsübung.', 'Use "das ist" for "this is"', 1, 40);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006a42ac2d', 'Culture: Science Communication in German-Speaking Countries', 'Learn how Science Communication is approached in German culture.

تعلم كيف يتم التعامل مع Science Communication في الثقافة الألمانية.', '["Tip: Be direct and polite","Tip: Use formal language with strangers","Tip: Respect punctuality"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006a42ac2d', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Common error for Arabic speakers","correction":"Correct version","explanation":"Explanation of the error"}]', 30);

  -- Lesson 3: Test: Wissenschaftskommunikation (L-C2-05-03)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-00006a42ac2e', '00000000-0000-4000-a000-000039d176c3', 'Test: Wissenschaftskommunikation', 'Module test on science communication.', 'Module Test', 'test', '["Understand and use vocabulary related to Module Test","Apply present_tense correctly","Read and comprehend a text about Module Test","Listen and understand a dialogue about Module Test","Speak about Module Test in simple sentences","Write a short text about Module Test"]', 50, 3, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-00006a42ac2e', 'die Forschung', 'البحث', 'research', 'die', NULL, 'noun', 'Die Forschung ist interdisziplinär.', 'The research is interdisciplinary.', 'B2', 1),
  ('00000000-0000-4000-a000-00006a42ac2e', 'die Analyse', 'التحليل', 'analysis', 'die', 'die Analysen', 'noun', 'Die Analyse der Daten dauert lange.', 'The analysis of the data takes long.', 'B2', 2),
  ('00000000-0000-4000-a000-00006a42ac2e', 'die Methode', 'الطريقة', 'method', 'die', 'die Methoden', 'noun', 'Die Methode ist wissenschaftlich anerkannt.', 'The method is scientifically recognized.', 'B2', 3),
  ('00000000-0000-4000-a000-00006a42ac2e', 'die These', 'الأطروحة', 'thesis', 'die', 'die Thesen', 'noun', 'Die These wird im Kapitel 3 diskutiert.', 'The thesis is discussed in chapter 3.', 'C1', 4),
  ('00000000-0000-4000-a000-00006a42ac2e', 'die Publikation', 'المنشور', 'publication', 'die', 'die Publikationen', 'noun', 'Die Publikation erscheint im Springer Verlag.', 'The publication appears at Springer.', 'C1', 5),
  ('00000000-0000-4000-a000-00006a42ac2e', 'der Diskurs', 'الخطاب', 'discourse', 'der', 'die Diskurse', 'noun', 'Der akademische Diskurs ist vielschichtig.', 'The academic discourse is multilayered.', 'C1', 6),
  ('00000000-0000-4000-a000-00006a42ac2e', 'die Hypothese', 'الفرضية', 'hypothesis', 'die', 'die Hypothesen', 'noun', 'Die Hypothese wurde bestätigt.', 'The hypothesis was confirmed.', 'C1', 7),
  ('00000000-0000-4000-a000-00006a42ac2e', 'die Empirie', 'التجريبية', 'empirical research', 'die', NULL, 'noun', 'Die Empirie liefert Daten.', 'Empirical research provides data.', 'C1', 8),
  ('00000000-0000-4000-a000-00006a42ac2e', 'der Stil', 'الأسلوب', 'style', 'der', 'die Stile', 'noun', 'Der Stil des Textes ist formell.', 'The style of the text is formal.', 'B2', 9),
  ('00000000-0000-4000-a000-00006a42ac2e', 'das Register', 'المستوى اللغوي', 'register', 'das', 'die Register', 'noun', 'Das Register passt zur Situation.', 'The register fits the situation.', 'C1', 10),
  ('00000000-0000-4000-a000-00006a42ac2e', 'das Stilmittel', 'الأداة الأسلوبية', 'stylistic device', 'das', 'die Stilmittel', 'noun', 'Das Stilmittel unterstreicht die Aussage.', 'The stylistic device emphasizes the statement.', 'C1', 11),
  ('00000000-0000-4000-a000-00006a42ac2e', 'die Alliteration', 'الجناس', 'alliteration', 'die', 'die Alliterationen', 'noun', 'Die Alliteration wiederholt den Anlaut.', 'Alliteration repeats the initial sound.', 'C2', 12),
  ('00000000-0000-4000-a000-00006a42ac2e', 'die Ellipse', 'الحذف', 'ellipsis', 'die', 'die Ellipsen', 'noun', 'Die Ellipse spart Wörter aus.', 'The ellipsis omits words.', 'C2', 13),
  ('00000000-0000-4000-a000-00006a42ac2e', 'die Hyperbel', 'المبالغة', 'hyperbole', 'die', 'die Hyperbeln', 'noun', 'Die Hyperbel übertreibt stark.', 'Hyperbole exaggerates strongly.', 'C2', 14),
  ('00000000-0000-4000-a000-00006a42ac2e', 'die Poetik', 'الشعرية', 'poetics', 'die', NULL, 'noun', 'Poetik ist die Theorie der Dichtkunst.', 'Poetics is the theory of poetry.', 'C2', 15),
  ('00000000-0000-4000-a000-00006a42ac2e', 'der Vers', 'البيت الشعري', 'verse', 'der', 'die Verse', 'noun', 'Der Vers hat fünf Hebungen.', 'The verse has five stresses.', 'C1', 16),
  ('00000000-0000-4000-a000-00006a42ac2e', 'der Reim', 'القافية', 'rhyme', 'der', 'die Reime', 'noun', 'Der Reim verbindet die Zeilen.', 'Rhyme connects the lines.', 'C1', 17),
  ('00000000-0000-4000-a000-00006a42ac2e', 'das Metrum', 'الوزن', 'meter', 'das', 'die Metren', 'noun', 'Das Metrum bestimmt den Rhythmus.', 'The meter determines the rhythm.', 'C2', 18),
  ('00000000-0000-4000-a000-00006a42ac2e', 'die Gattung', 'النوع الأدبي', 'genre', 'die', 'die Gattungen', 'noun', 'Lyrik ist eine literarische Gattung.', 'Lyric poetry is a literary genre.', 'C1', 19),
  ('00000000-0000-4000-a000-00006a42ac2e', 'die Pragmatik', 'البراغماتية', 'pragmatics', 'die', NULL, 'noun', 'Pragmatik untersucht Sprache im Kontext.', 'Pragmatics studies language in context.', 'C2', 20),
  ('00000000-0000-4000-a000-00006a42ac2e', 'der Sprechakt', 'فعل الكلام', 'speech act', 'der', 'die Sprechakte', 'noun', 'Der Sprechakt ändert die Wirklichkeit.', 'The speech act changes reality.', 'C2', 21),
  ('00000000-0000-4000-a000-00006a42ac2e', 'die Implikatur', 'الاستلزام التخاطبي', 'implicature', 'die', 'die Implikaturen', 'noun', 'Die Implikatur ist die indirekte Bedeutung.', 'Implicature is the indirect meaning.', 'C2', 22),
  ('00000000-0000-4000-a000-00006a42ac2e', 'der Kontext', 'السياق', 'context', 'der', 'die Kontexte', 'noun', 'Der Kontext bestimmt die Bedeutung.', 'Context determines meaning.', 'B2', 23),
  ('00000000-0000-4000-a000-00006a42ac2e', 'die Höflichkeit', 'الأدب / اللباقة', 'politeness', 'die', NULL, 'noun', 'Höflichkeit ist in Japan sehr wichtig.', 'Politeness is very important in Japan.', 'B2', 24),
  ('00000000-0000-4000-a000-00006a42ac2e', 'die Konversationsanalyse', 'تحليل المحادثة', 'conversation analysis', 'die', NULL, 'noun', 'Die Konversationsanalyse untersucht Gespräche.', 'Conversation analysis examines conversations.', 'C2', 25),
  ('00000000-0000-4000-a000-00006a42ac2e', 'die Bedeutung', 'المعنى', 'meaning', 'die', 'die Bedeutungen', 'noun', 'Die Bedeutung des Wortes ist klar.', 'The meaning of the word is clear.', 'B2', 26),
  ('00000000-0000-4000-a000-00006a42ac2e', 'die Synonymie', 'الترادف', 'synonymy', 'die', NULL, 'noun', 'Synonymie bedeutet Bedeutungsgleichheit.', 'Synonymy means sameness of meaning.', 'C2', 27),
  ('00000000-0000-4000-a000-00006a42ac2e', 'die Antonymie', 'التضاد', 'antonymy', 'die', NULL, 'noun', 'Antonymie bezeichnet Gegensätze.', 'Antonymy denotes opposites.', 'C2', 28),
  ('00000000-0000-4000-a000-00006a42ac2e', 'die Polysemie', 'تعدد المعاني', 'polysemy', 'die', NULL, 'noun', 'Polysemie hat mehrere Bedeutungen.', 'Polysemy has multiple meanings.', 'C2', 29),
  ('00000000-0000-4000-a000-00006a42ac2e', 'die Kompositionalität', 'التركيبية', 'compositionality', 'die', NULL, 'noun', 'Kompositionalität besagt, dass Bedeutung aus Teilen besteht.', 'Compositionality holds that meaning consists of parts.', 'C2', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006a42ac2e', 'Präsens der regelmäßigen Verben (Present Tense) / المضارع للأفعال المنتظمة', 'In German, regular verbs follow a consistent pattern. The infinitive ends in -en. Remove the -en and add the personal endings: ich -e, du -st, er/sie/es -t, wir -en, ihr -t, sie/Sie -en. For most Arabic speakers, this is easier than Arabic verb conjugation because German has fewer forms.', '[{"rule":"ich: stem + e","note":"Ich lerne, ich wohne, ich arbeite"},{"rule":"du: stem + st","note":"Du lernst, du wohnst, du arbeitest"},{"rule":"er/sie/es: stem + t","note":"Er lernt, sie wohnt, es arbeitet"},{"rule":"wir: stem + en","note":"Wir lernen, wir wohnen, wir arbeiten"},{"rule":"ihr: stem + t","note":"Ihr lernt, ihr wohnt, ihr arbeitet"},{"rule":"sie/Sie: stem + en","note":"Sie lernen, Sie wohnen"}]', '[{"german":"Ich lerne Deutsch.","arabic":"أنا أتعلم الألمانية.","english":"I am learning German."},{"german":"Du wohnst in Berlin.","arabic":"أنت تسكن في برلين.","english":"You live in Berlin."},{"german":"Er arbeitet bei Siemens.","arabic":"هو يعمل في سيمنز.","english":"He works at Siemens."}]', '[{"mistake":"Ich lernen Deutsch","correction":"Ich lerne Deutsch","explanation":"After \"ich\" we use the stem + e, not the infinitive."},{"mistake":"Er lerne Deutsch","correction":"Er lernt Deutsch","explanation":"After \"er/sie/es\" we add -t, not -e."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006a42ac2e', 'multiple_choice', 'What does "die Forschung" mean?', '["The","A","This","That"]', 'The', 'This is a basic vocabulary item.', 1, 1),
  ('00000000-0000-4000-a000-00006a42ac2e', 'fill_gap', 'Complete with the correct form.', '["Option 1","Option 2","Option 3"]', 'Option 1', 'Practice grammar in context.', 1, 2),
  ('00000000-0000-4000-a000-00006a42ac2e', 'translation', 'Translate: "I learn German."', '["Ich lerne Deutsch.","Ich lerne Englisch.","Ich lerne Spanisch."]', 'Ich lerne Deutsch.', 'Ich = I, lerne = learn/learning, Deutsch = German.', 2, 3),
  ('00000000-0000-4000-a000-00006a42ac2e', 'sentence_order', 'Order the sentence.', '[]', 'Ich lerne Deutsch.', 'Subject + verb + object in German.', 2, 4),
  ('00000000-0000-4000-a000-00006a42ac2e', 'matching', 'Match the words with their meanings.', '["Match pairs correctly"]', 'Correct pairs', 'Test your vocabulary knowledge.', 2, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-00006a42ac2e', 'multiple_choice', 'What is the main topic of this lesson?', '["Module Test","Sports","Music","Travel"]', 'Module Test', 1, 1),
  ('00000000-0000-4000-a000-00006a42ac2e', 'true_false', 'This lesson teaches vocabulary about Module Test.', '["True","False"]', 'True', 1, 2),
  ('00000000-0000-4000-a000-00006a42ac2e', 'true_false', 'German word order is always the same as English.', '["True","False"]', 'False', 1, 3),
  ('00000000-0000-4000-a000-00006a42ac2e', 'multiple_choice', 'How do you say "please" in German?', '["Danke","Bitte","Tschüss","Hallo"]', 'Bitte', 1, 4),
  ('00000000-0000-4000-a000-00006a42ac2e', 'multiple_choice', 'Which article is feminine?', '["der","die","das","den"]', 'die', 1, 5),
  ('00000000-0000-4000-a000-00006a42ac2e', 'fill_blank', 'Ich ___ (to be) Student.', '["bin","bist","ist","sind"]', 'bin', 1, 6),
  ('00000000-0000-4000-a000-00006a42ac2e', 'multiple_choice', 'What is the correct word order?', '["Ich lerne Deutsch","Ich Deutsch lerne","Lerne ich Deutsch","Deutsch ich lerne"]', 'Ich lerne Deutsch', 1, 7),
  ('00000000-0000-4000-a000-00006a42ac2e', 'true_false', 'All German nouns are capitalized.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-00006a42ac2e', 'multiple_choice', 'How do you say "thank you" in German?', '["Bitte","Danke","Tschüss","Hallo"]', 'Danke', 1, 9),
  ('00000000-0000-4000-a000-00006a42ac2e', 'fill_blank', 'Wo ___ du? (to live)', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 1, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-00006a42ac2e', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Wissenschaftskommunikation', 'formal', false, 1),
  ('00000000-0000-4000-a000-00006a42ac2e', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Wissenschaftskommunikation', 'informal', false, 2),
  ('00000000-0000-4000-a000-00006a42ac2e', 'Bitte!', 'Please!', 'من فضلك!', 'Used in Wissenschaftskommunikation', 'neutral', false, 3),
  ('00000000-0000-4000-a000-00006a42ac2e', 'Danke!', 'Thanks!', 'شكراً!', 'Used in Wissenschaftskommunikation', 'neutral', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-00006a42ac2e', 'Hallo', 'Hello', 'Greeting', 'expression', 1),
  ('00000000-0000-4000-a000-00006a42ac2e', 'Danke', 'Thanks', 'Politeness', 'expression', 2),
  ('00000000-0000-4000-a000-00006a42ac2e', 'Bitte', 'Please', 'Politeness', 'expression', 3),
  ('00000000-0000-4000-a000-00006a42ac2e', 'Tschüss', 'Bye', 'Farewell', 'expression', 4);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-00006a42ac2e', 'Test: Wissenschaftskommunikation — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, duration_seconds, speaker_count, scenario) values
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

[Lehrerin]: ممتاز! إلى الغد!', 72, 2, 'Wissenschaftskommunikation');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-00006a42ac2e', 'Speaking: Test: Wissenschaftskommunikation', 'Practice talking about Module Test. Answer questions and have a simple conversation.', 'Module Test', ARRAY['Use full sentences','Speak clearly','Don''t worry about mistakes']::text[], ARRAY['die Forschung','die Analyse','die Methode','die These','die Publikation']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-00006a42ac2e', 'Writing: Test: Wissenschaftskommunikation', 'Write a short text about Module Test. Use at least 5 vocabulary words from this lesson.', ARRAY['Start with a greeting','Use the vocabulary from this lesson','Check your grammar']::text[], ARRAY['die Forschung','die Analyse','die Methode']::text[], '["Sentence structure","Vocabulary usage"]', 50, 150, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00006a42ac2e', 'Test: Wissenschaftskommunikation — Roleplay', 'Module Test', 'Student', 'Teacher', 'Practice conversation about Module Test', 'Hallo! Lass uns über dieses Thema sprechen.', 'advanced', 1, ARRAY['die Forschung','die Analyse','die Methode','die These','die Publikation','der Diskurs','die Hypothese','die Empirie']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00006a42ac2e', 'Test: Wissenschaftskommunikation — Advanced Roleplay', 'Module Test', 'Customer', 'Assistant', 'Extended conversation about Module Test', 'Guten Tag! Wie kann ich Ihnen helfen?', 'advanced', 2, ARRAY['die Forschung','die Analyse','die Methode','die These','die Publikation','der Diskurs','die Hypothese','die Empirie']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-00006a42ac2e', 'Test: Wissenschaftskommunikation — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Test: Wissenschaftskommunikation".', 'Creative practice for Module Test', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-00006a42ac2e', 'Homework: Test: Wissenschaftskommunikation', 'Complete these tasks to reinforce "Test: Wissenschaftskommunikation".', 'mixed', '[{"description":"Review all vocabulary from this lesson"},{"description":"Write 5 sentences using the grammar structure"},{"description":"Practice the dialogue aloud"}]', 35, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-00006a42ac2e', 'In this lesson you learned about Module Test. You practiced vocabulary related to academic and grammar structure present_tense.', '["Mastered vocabulary about Module Test","Applied present_tense correctly","Read and understood a text about Module Test","Practiced speaking about Module Test"]', '[{"title":"Test: Wissenschaftskommunikation Review","summary":"present_tense — the main grammar focus of this lesson."}]', ARRAY['Module Test core vocabulary','academic key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)','Verb is always in second position']::text[], ARRAY['Practice 15-20 minutes daily','Use new vocabulary in real sentences','Speak out loud to improve pronunciation']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006a42ac2e', 'translation', 'Translate to German: "This is a translation exercise."', '[]', 'Das ist eine Übersetzungsübung.', 'Use "das ist" for "this is"', 1, 40);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006a42ac2e', 'Culture: Module Test in German-Speaking Countries', 'Learn how Module Test is approached in German culture.

تعلم كيف يتم التعامل مع Module Test في الثقافة الألمانية.', '["Tip: Be direct and polite","Tip: Use formal language with strangers","Tip: Respect punctuality"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006a42ac2e', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Common error for Arabic speakers","correction":"Correct version","explanation":"Explanation of the error"}]', 30);

  -- Module 6: Sprachvariation und Sprachwandel
  insert into public.course_modules (id, level_id, title, description, objectives, order_index, estimated_hours, is_published)
  values ('00000000-0000-4000-a000-000039d176c4', 'C2', 'Sprachvariation und Sprachwandel', 'Study language variation, change, and dialectology at an advanced level.', '["Analyze dialectal variation","Understand language change processes","Use historical linguistics concepts","Analyze sociolinguistic variation","Research language variation"]', 6, 5, true)
  on conflict (id) do nothing;

  -- Lesson 1: Dialekte und regionale Variation (L-C2-06-01)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-00006a43208b', '00000000-0000-4000-a000-000039d176c4', 'Dialekte und regionale Variation', 'Explore German dialects and regional variation.', 'German Dialects', 'vocabulary', '["Understand and use vocabulary related to German Dialects","Apply present_tense correctly","Read and comprehend a text about German Dialects","Listen and understand a dialogue about German Dialects","Speak about German Dialects in simple sentences","Write a short text about German Dialects"]', 55, 1, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-00006a43208b', 'die Linguistik', 'علم اللغة', 'linguistics', 'die', NULL, 'noun', 'Linguistik untersucht die menschliche Sprache.', 'Linguistics studies human language.', 'C1', 1),
  ('00000000-0000-4000-a000-00006a43208b', 'die Syntax', 'النحو/تركيب الجملة', 'syntax', 'die', NULL, 'noun', 'Die Syntax beschreibt die Satzstruktur.', 'Syntax describes sentence structure.', 'C1', 2),
  ('00000000-0000-4000-a000-00006a43208b', 'die Semantik', 'علم الدلالة', 'semantics', 'die', NULL, 'noun', 'Die Semantik befasst sich mit Bedeutung.', 'Semantics deals with meaning.', 'C1', 3),
  ('00000000-0000-4000-a000-00006a43208b', 'die Morphologie', 'الصرف', 'morphology', 'die', NULL, 'noun', 'Die Morphologie untersucht Wortformen.', 'Morphology examines word forms.', 'C1', 4),
  ('00000000-0000-4000-a000-00006a43208b', 'die Phonetik', 'علم الأصوات', 'phonetics', 'die', NULL, 'noun', 'Die Phonetik untersucht Sprachlaute.', 'Phonetics studies speech sounds.', 'C1', 5),
  ('00000000-0000-4000-a000-00006a43208b', 'die Pragmatik', 'البراغماتية', 'pragmatics', 'die', NULL, 'noun', 'Pragmatik untersucht Sprachgebrauch.', 'Pragmatics studies language use.', 'C2', 6),
  ('00000000-0000-4000-a000-00006a43208b', 'die Sprachwissenschaft', 'علم اللغة', 'linguistics', 'die', NULL, 'noun', 'Die germanistische Sprachwissenschaft ist vielfältig.', 'German linguistics is diverse.', 'C1', 7),
  ('00000000-0000-4000-a000-00006a43208b', 'der Stil', 'الأسلوب', 'style', 'der', 'die Stile', 'noun', 'Der Stil des Textes ist formell.', 'The style of the text is formal.', 'B2', 8),
  ('00000000-0000-4000-a000-00006a43208b', 'das Register', 'المستوى اللغوي', 'register', 'das', 'die Register', 'noun', 'Das Register passt zur Situation.', 'The register fits the situation.', 'C1', 9),
  ('00000000-0000-4000-a000-00006a43208b', 'das Stilmittel', 'الأداة الأسلوبية', 'stylistic device', 'das', 'die Stilmittel', 'noun', 'Das Stilmittel unterstreicht die Aussage.', 'The stylistic device emphasizes the statement.', 'C1', 10),
  ('00000000-0000-4000-a000-00006a43208b', 'die Alliteration', 'الجناس', 'alliteration', 'die', 'die Alliterationen', 'noun', 'Die Alliteration wiederholt den Anlaut.', 'Alliteration repeats the initial sound.', 'C2', 11),
  ('00000000-0000-4000-a000-00006a43208b', 'die Ellipse', 'الحذف', 'ellipsis', 'die', 'die Ellipsen', 'noun', 'Die Ellipse spart Wörter aus.', 'The ellipsis omits words.', 'C2', 12),
  ('00000000-0000-4000-a000-00006a43208b', 'die Hyperbel', 'المبالغة', 'hyperbole', 'die', 'die Hyperbeln', 'noun', 'Die Hyperbel übertreibt stark.', 'Hyperbole exaggerates strongly.', 'C2', 13),
  ('00000000-0000-4000-a000-00006a43208b', 'die Poetik', 'الشعرية', 'poetics', 'die', NULL, 'noun', 'Poetik ist die Theorie der Dichtkunst.', 'Poetics is the theory of poetry.', 'C2', 14),
  ('00000000-0000-4000-a000-00006a43208b', 'der Vers', 'البيت الشعري', 'verse', 'der', 'die Verse', 'noun', 'Der Vers hat fünf Hebungen.', 'The verse has five stresses.', 'C1', 15),
  ('00000000-0000-4000-a000-00006a43208b', 'der Reim', 'القافية', 'rhyme', 'der', 'die Reime', 'noun', 'Der Reim verbindet die Zeilen.', 'Rhyme connects the lines.', 'C1', 16),
  ('00000000-0000-4000-a000-00006a43208b', 'das Metrum', 'الوزن', 'meter', 'das', 'die Metren', 'noun', 'Das Metrum bestimmt den Rhythmus.', 'The meter determines the rhythm.', 'C2', 17),
  ('00000000-0000-4000-a000-00006a43208b', 'die Gattung', 'النوع الأدبي', 'genre', 'die', 'die Gattungen', 'noun', 'Lyrik ist eine literarische Gattung.', 'Lyric poetry is a literary genre.', 'C1', 18),
  ('00000000-0000-4000-a000-00006a43208b', 'der Sprechakt', 'فعل الكلام', 'speech act', 'der', 'die Sprechakte', 'noun', 'Der Sprechakt ändert die Wirklichkeit.', 'The speech act changes reality.', 'C2', 19),
  ('00000000-0000-4000-a000-00006a43208b', 'die Implikatur', 'الاستلزام التخاطبي', 'implicature', 'die', 'die Implikaturen', 'noun', 'Die Implikatur ist die indirekte Bedeutung.', 'Implicature is the indirect meaning.', 'C2', 20),
  ('00000000-0000-4000-a000-00006a43208b', 'der Kontext', 'السياق', 'context', 'der', 'die Kontexte', 'noun', 'Der Kontext bestimmt die Bedeutung.', 'Context determines meaning.', 'B2', 21),
  ('00000000-0000-4000-a000-00006a43208b', 'die Höflichkeit', 'الأدب / اللباقة', 'politeness', 'die', NULL, 'noun', 'Höflichkeit ist in Japan sehr wichtig.', 'Politeness is very important in Japan.', 'B2', 22),
  ('00000000-0000-4000-a000-00006a43208b', 'die Konversationsanalyse', 'تحليل المحادثة', 'conversation analysis', 'die', NULL, 'noun', 'Die Konversationsanalyse untersucht Gespräche.', 'Conversation analysis examines conversations.', 'C2', 23),
  ('00000000-0000-4000-a000-00006a43208b', 'die Bedeutung', 'المعنى', 'meaning', 'die', 'die Bedeutungen', 'noun', 'Die Bedeutung des Wortes ist klar.', 'The meaning of the word is clear.', 'B2', 24),
  ('00000000-0000-4000-a000-00006a43208b', 'die Synonymie', 'الترادف', 'synonymy', 'die', NULL, 'noun', 'Synonymie bedeutet Bedeutungsgleichheit.', 'Synonymy means sameness of meaning.', 'C2', 25),
  ('00000000-0000-4000-a000-00006a43208b', 'die Antonymie', 'التضاد', 'antonymy', 'die', NULL, 'noun', 'Antonymie bezeichnet Gegensätze.', 'Antonymy denotes opposites.', 'C2', 26),
  ('00000000-0000-4000-a000-00006a43208b', 'die Polysemie', 'تعدد المعاني', 'polysemy', 'die', NULL, 'noun', 'Polysemie hat mehrere Bedeutungen.', 'Polysemy has multiple meanings.', 'C2', 27),
  ('00000000-0000-4000-a000-00006a43208b', 'die Kompositionalität', 'التركيبية', 'compositionality', 'die', NULL, 'noun', 'Kompositionalität besagt, dass Bedeutung aus Teilen besteht.', 'Compositionality holds that meaning consists of parts.', 'C2', 28),
  ('00000000-0000-4000-a000-00006a43208b', 'die Übersetzung', 'الترجمة', 'translation', 'die', 'die Übersetzungen', 'noun', 'Die Übersetzung ist gelungen.', 'The translation is successful.', 'B2', 29),
  ('00000000-0000-4000-a000-00006a43208b', 'übersetzen', 'يترجم', 'to translate', NULL, NULL, 'verb', 'Ich übersetze den Text ins Arabische.', 'I translate the text into Arabic.', 'B1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006a43208b', 'Präsens der regelmäßigen Verben (Present Tense) / المضارع للأفعال المنتظمة', 'In German, regular verbs follow a consistent pattern. The infinitive ends in -en. Remove the -en and add the personal endings: ich -e, du -st, er/sie/es -t, wir -en, ihr -t, sie/Sie -en. For most Arabic speakers, this is easier than Arabic verb conjugation because German has fewer forms.', '[{"rule":"ich: stem + e","note":"Ich lerne, ich wohne, ich arbeite"},{"rule":"du: stem + st","note":"Du lernst, du wohnst, du arbeitest"},{"rule":"er/sie/es: stem + t","note":"Er lernt, sie wohnt, es arbeitet"},{"rule":"wir: stem + en","note":"Wir lernen, wir wohnen, wir arbeiten"},{"rule":"ihr: stem + t","note":"Ihr lernt, ihr wohnt, ihr arbeitet"},{"rule":"sie/Sie: stem + en","note":"Sie lernen, Sie wohnen"}]', '[{"german":"Ich lerne Deutsch.","arabic":"أنا أتعلم الألمانية.","english":"I am learning German."},{"german":"Du wohnst in Berlin.","arabic":"أنت تسكن في برلين.","english":"You live in Berlin."},{"german":"Er arbeitet bei Siemens.","arabic":"هو يعمل في سيمنز.","english":"He works at Siemens."}]', '[{"mistake":"Ich lernen Deutsch","correction":"Ich lerne Deutsch","explanation":"After \"ich\" we use the stem + e, not the infinitive."},{"mistake":"Er lerne Deutsch","correction":"Er lernt Deutsch","explanation":"After \"er/sie/es\" we add -t, not -e."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006a43208b', 'multiple_choice', 'What does "die Linguistik" mean?', '["The","A","This","That"]', 'The', 'This is a basic vocabulary item.', 1, 1),
  ('00000000-0000-4000-a000-00006a43208b', 'fill_gap', 'Complete with the correct form.', '["Option 1","Option 2","Option 3"]', 'Option 1', 'Practice grammar in context.', 1, 2),
  ('00000000-0000-4000-a000-00006a43208b', 'translation', 'Translate: "I learn German."', '["Ich lerne Deutsch.","Ich lerne Englisch.","Ich lerne Spanisch."]', 'Ich lerne Deutsch.', 'Ich = I, lerne = learn/learning, Deutsch = German.', 2, 3),
  ('00000000-0000-4000-a000-00006a43208b', 'sentence_order', 'Order the sentence.', '[]', 'Ich lerne Deutsch.', 'Subject + verb + object in German.', 2, 4),
  ('00000000-0000-4000-a000-00006a43208b', 'matching', 'Match the words with their meanings.', '["Match pairs correctly"]', 'Correct pairs', 'Test your vocabulary knowledge.', 2, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-00006a43208b', 'multiple_choice', 'What is the main topic of this lesson?', '["German Dialects","Sports","Music","Travel"]', 'German Dialects', 1, 1),
  ('00000000-0000-4000-a000-00006a43208b', 'true_false', 'This lesson teaches vocabulary about German Dialects.', '["True","False"]', 'True', 1, 2),
  ('00000000-0000-4000-a000-00006a43208b', 'true_false', 'German word order is always the same as English.', '["True","False"]', 'False', 1, 3),
  ('00000000-0000-4000-a000-00006a43208b', 'multiple_choice', 'How do you say "please" in German?', '["Danke","Bitte","Tschüss","Hallo"]', 'Bitte', 1, 4),
  ('00000000-0000-4000-a000-00006a43208b', 'multiple_choice', 'Which article is feminine?', '["der","die","das","den"]', 'die', 1, 5),
  ('00000000-0000-4000-a000-00006a43208b', 'fill_blank', 'Ich ___ (to be) Student.', '["bin","bist","ist","sind"]', 'bin', 1, 6),
  ('00000000-0000-4000-a000-00006a43208b', 'multiple_choice', 'What is the correct word order?', '["Ich lerne Deutsch","Ich Deutsch lerne","Lerne ich Deutsch","Deutsch ich lerne"]', 'Ich lerne Deutsch', 1, 7),
  ('00000000-0000-4000-a000-00006a43208b', 'true_false', 'All German nouns are capitalized.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-00006a43208b', 'multiple_choice', 'How do you say "thank you" in German?', '["Bitte","Danke","Tschüss","Hallo"]', 'Danke', 1, 9),
  ('00000000-0000-4000-a000-00006a43208b', 'fill_blank', 'Wo ___ du? (to live)', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 1, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-00006a43208b', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Sprachvariation und Sprachwandel', 'formal', false, 1),
  ('00000000-0000-4000-a000-00006a43208b', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Sprachvariation und Sprachwandel', 'informal', false, 2),
  ('00000000-0000-4000-a000-00006a43208b', 'Bitte!', 'Please!', 'من فضلك!', 'Used in Sprachvariation und Sprachwandel', 'neutral', false, 3),
  ('00000000-0000-4000-a000-00006a43208b', 'Danke!', 'Thanks!', 'شكراً!', 'Used in Sprachvariation und Sprachwandel', 'neutral', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-00006a43208b', 'Hallo', 'Hello', 'Greeting', 'expression', 1),
  ('00000000-0000-4000-a000-00006a43208b', 'Danke', 'Thanks', 'Politeness', 'expression', 2),
  ('00000000-0000-4000-a000-00006a43208b', 'Bitte', 'Please', 'Politeness', 'expression', 3),
  ('00000000-0000-4000-a000-00006a43208b', 'Tschüss', 'Bye', 'Farewell', 'expression', 4);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-00006a43208b', 'Dialekte und regionale Variation — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, duration_seconds, speaker_count, scenario) values
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

[Lehrerin]: ممتاز! إلى الغد!', 72, 2, 'Sprachvariation und Sprachwandel');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-00006a43208b', 'Speaking: Dialekte und regionale Variation', 'Practice talking about German Dialects. Answer questions and have a simple conversation.', 'German Dialects', ARRAY['Use full sentences','Speak clearly','Don''t worry about mistakes']::text[], ARRAY['die Linguistik','die Syntax','die Semantik','die Morphologie','die Phonetik']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-00006a43208b', 'Writing: Dialekte und regionale Variation', 'Write a short text about German Dialects. Use at least 5 vocabulary words from this lesson.', ARRAY['Start with a greeting','Use the vocabulary from this lesson','Check your grammar']::text[], ARRAY['die Linguistik','die Syntax','die Semantik']::text[], '["Sentence structure","Vocabulary usage"]', 50, 150, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00006a43208b', 'Dialekte und regionale Variation — Roleplay', 'German Dialects', 'Student', 'Teacher', 'Practice conversation about German Dialects', 'Hallo! Lass uns über dieses Thema sprechen.', 'advanced', 1, ARRAY['die Linguistik','die Syntax','die Semantik','die Morphologie','die Phonetik','die Pragmatik','die Sprachwissenschaft','der Stil']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00006a43208b', 'Dialekte und regionale Variation — Advanced Roleplay', 'German Dialects', 'Customer', 'Assistant', 'Extended conversation about German Dialects', 'Guten Tag! Wie kann ich Ihnen helfen?', 'advanced', 2, ARRAY['die Linguistik','die Syntax','die Semantik','die Morphologie','die Phonetik','die Pragmatik','die Sprachwissenschaft','der Stil']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-00006a43208b', 'Dialekte und regionale Variation — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Dialekte und regionale Variation".', 'Creative practice for German Dialects', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-00006a43208b', 'Homework: Dialekte und regionale Variation', 'Complete these tasks to reinforce "Dialekte und regionale Variation".', 'mixed', '[{"description":"Review all vocabulary from this lesson"},{"description":"Write 5 sentences using the grammar structure"},{"description":"Practice the dialogue aloud"}]', 35, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-00006a43208b', 'In this lesson you learned about German Dialects. You practiced vocabulary related to linguistics and grammar structure present_tense.', '["Mastered vocabulary about German Dialects","Applied present_tense correctly","Read and understood a text about German Dialects","Practiced speaking about German Dialects"]', '[{"title":"Dialekte und regionale Variation Review","summary":"present_tense — the main grammar focus of this lesson."}]', ARRAY['German Dialects core vocabulary','linguistics key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)','Verb is always in second position']::text[], ARRAY['Practice 15-20 minutes daily','Use new vocabulary in real sentences','Speak out loud to improve pronunciation']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006a43208b', 'translation', 'Translate to German: "This is a translation exercise."', '[]', 'Das ist eine Übersetzungsübung.', 'Use "das ist" for "this is"', 1, 40);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006a43208b', 'Culture: German Dialects in German-Speaking Countries', 'Learn how German Dialects is approached in German culture.

تعلم كيف يتم التعامل مع German Dialects في الثقافة الألمانية.', '["Tip: Be direct and polite","Tip: Use formal language with strangers","Tip: Respect punctuality"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006a43208b', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Common error for Arabic speakers","correction":"Correct version","explanation":"Explanation of the error"}]', 30);

  -- Lesson 2: Sprachwandel und Jugendsprache (L-C2-06-02)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-00006a43208c', '00000000-0000-4000-a000-000039d176c4', 'Sprachwandel und Jugendsprache', 'Study language change and youth language.', 'Language Change', 'reading', '["Understand and use vocabulary related to Language Change","Apply present_tense correctly","Read and comprehend a text about Language Change","Listen and understand a dialogue about Language Change","Speak about Language Change in simple sentences","Write a short text about Language Change"]', 55, 2, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-00006a43208c', 'die Linguistik', 'علم اللغة', 'linguistics', 'die', NULL, 'noun', 'Linguistik untersucht die menschliche Sprache.', 'Linguistics studies human language.', 'C1', 1),
  ('00000000-0000-4000-a000-00006a43208c', 'die Syntax', 'النحو/تركيب الجملة', 'syntax', 'die', NULL, 'noun', 'Die Syntax beschreibt die Satzstruktur.', 'Syntax describes sentence structure.', 'C1', 2),
  ('00000000-0000-4000-a000-00006a43208c', 'die Semantik', 'علم الدلالة', 'semantics', 'die', NULL, 'noun', 'Die Semantik befasst sich mit Bedeutung.', 'Semantics deals with meaning.', 'C1', 3),
  ('00000000-0000-4000-a000-00006a43208c', 'die Morphologie', 'الصرف', 'morphology', 'die', NULL, 'noun', 'Die Morphologie untersucht Wortformen.', 'Morphology examines word forms.', 'C1', 4),
  ('00000000-0000-4000-a000-00006a43208c', 'die Phonetik', 'علم الأصوات', 'phonetics', 'die', NULL, 'noun', 'Die Phonetik untersucht Sprachlaute.', 'Phonetics studies speech sounds.', 'C1', 5),
  ('00000000-0000-4000-a000-00006a43208c', 'die Pragmatik', 'البراغماتية', 'pragmatics', 'die', NULL, 'noun', 'Pragmatik untersucht Sprachgebrauch.', 'Pragmatics studies language use.', 'C2', 6),
  ('00000000-0000-4000-a000-00006a43208c', 'die Sprachwissenschaft', 'علم اللغة', 'linguistics', 'die', NULL, 'noun', 'Die germanistische Sprachwissenschaft ist vielfältig.', 'German linguistics is diverse.', 'C1', 7),
  ('00000000-0000-4000-a000-00006a43208c', 'der Stil', 'الأسلوب', 'style', 'der', 'die Stile', 'noun', 'Der Stil des Textes ist formell.', 'The style of the text is formal.', 'B2', 8),
  ('00000000-0000-4000-a000-00006a43208c', 'das Register', 'المستوى اللغوي', 'register', 'das', 'die Register', 'noun', 'Das Register passt zur Situation.', 'The register fits the situation.', 'C1', 9),
  ('00000000-0000-4000-a000-00006a43208c', 'das Stilmittel', 'الأداة الأسلوبية', 'stylistic device', 'das', 'die Stilmittel', 'noun', 'Das Stilmittel unterstreicht die Aussage.', 'The stylistic device emphasizes the statement.', 'C1', 10),
  ('00000000-0000-4000-a000-00006a43208c', 'die Alliteration', 'الجناس', 'alliteration', 'die', 'die Alliterationen', 'noun', 'Die Alliteration wiederholt den Anlaut.', 'Alliteration repeats the initial sound.', 'C2', 11),
  ('00000000-0000-4000-a000-00006a43208c', 'die Ellipse', 'الحذف', 'ellipsis', 'die', 'die Ellipsen', 'noun', 'Die Ellipse spart Wörter aus.', 'The ellipsis omits words.', 'C2', 12),
  ('00000000-0000-4000-a000-00006a43208c', 'die Hyperbel', 'المبالغة', 'hyperbole', 'die', 'die Hyperbeln', 'noun', 'Die Hyperbel übertreibt stark.', 'Hyperbole exaggerates strongly.', 'C2', 13),
  ('00000000-0000-4000-a000-00006a43208c', 'die Poetik', 'الشعرية', 'poetics', 'die', NULL, 'noun', 'Poetik ist die Theorie der Dichtkunst.', 'Poetics is the theory of poetry.', 'C2', 14),
  ('00000000-0000-4000-a000-00006a43208c', 'der Vers', 'البيت الشعري', 'verse', 'der', 'die Verse', 'noun', 'Der Vers hat fünf Hebungen.', 'The verse has five stresses.', 'C1', 15),
  ('00000000-0000-4000-a000-00006a43208c', 'der Reim', 'القافية', 'rhyme', 'der', 'die Reime', 'noun', 'Der Reim verbindet die Zeilen.', 'Rhyme connects the lines.', 'C1', 16),
  ('00000000-0000-4000-a000-00006a43208c', 'das Metrum', 'الوزن', 'meter', 'das', 'die Metren', 'noun', 'Das Metrum bestimmt den Rhythmus.', 'The meter determines the rhythm.', 'C2', 17),
  ('00000000-0000-4000-a000-00006a43208c', 'die Gattung', 'النوع الأدبي', 'genre', 'die', 'die Gattungen', 'noun', 'Lyrik ist eine literarische Gattung.', 'Lyric poetry is a literary genre.', 'C1', 18),
  ('00000000-0000-4000-a000-00006a43208c', 'der Sprechakt', 'فعل الكلام', 'speech act', 'der', 'die Sprechakte', 'noun', 'Der Sprechakt ändert die Wirklichkeit.', 'The speech act changes reality.', 'C2', 19),
  ('00000000-0000-4000-a000-00006a43208c', 'die Implikatur', 'الاستلزام التخاطبي', 'implicature', 'die', 'die Implikaturen', 'noun', 'Die Implikatur ist die indirekte Bedeutung.', 'Implicature is the indirect meaning.', 'C2', 20),
  ('00000000-0000-4000-a000-00006a43208c', 'der Kontext', 'السياق', 'context', 'der', 'die Kontexte', 'noun', 'Der Kontext bestimmt die Bedeutung.', 'Context determines meaning.', 'B2', 21),
  ('00000000-0000-4000-a000-00006a43208c', 'die Höflichkeit', 'الأدب / اللباقة', 'politeness', 'die', NULL, 'noun', 'Höflichkeit ist in Japan sehr wichtig.', 'Politeness is very important in Japan.', 'B2', 22),
  ('00000000-0000-4000-a000-00006a43208c', 'die Konversationsanalyse', 'تحليل المحادثة', 'conversation analysis', 'die', NULL, 'noun', 'Die Konversationsanalyse untersucht Gespräche.', 'Conversation analysis examines conversations.', 'C2', 23),
  ('00000000-0000-4000-a000-00006a43208c', 'die Bedeutung', 'المعنى', 'meaning', 'die', 'die Bedeutungen', 'noun', 'Die Bedeutung des Wortes ist klar.', 'The meaning of the word is clear.', 'B2', 24),
  ('00000000-0000-4000-a000-00006a43208c', 'die Synonymie', 'الترادف', 'synonymy', 'die', NULL, 'noun', 'Synonymie bedeutet Bedeutungsgleichheit.', 'Synonymy means sameness of meaning.', 'C2', 25),
  ('00000000-0000-4000-a000-00006a43208c', 'die Antonymie', 'التضاد', 'antonymy', 'die', NULL, 'noun', 'Antonymie bezeichnet Gegensätze.', 'Antonymy denotes opposites.', 'C2', 26),
  ('00000000-0000-4000-a000-00006a43208c', 'die Polysemie', 'تعدد المعاني', 'polysemy', 'die', NULL, 'noun', 'Polysemie hat mehrere Bedeutungen.', 'Polysemy has multiple meanings.', 'C2', 27),
  ('00000000-0000-4000-a000-00006a43208c', 'die Kompositionalität', 'التركيبية', 'compositionality', 'die', NULL, 'noun', 'Kompositionalität besagt, dass Bedeutung aus Teilen besteht.', 'Compositionality holds that meaning consists of parts.', 'C2', 28),
  ('00000000-0000-4000-a000-00006a43208c', 'die Übersetzung', 'الترجمة', 'translation', 'die', 'die Übersetzungen', 'noun', 'Die Übersetzung ist gelungen.', 'The translation is successful.', 'B2', 29),
  ('00000000-0000-4000-a000-00006a43208c', 'übersetzen', 'يترجم', 'to translate', NULL, NULL, 'verb', 'Ich übersetze den Text ins Arabische.', 'I translate the text into Arabic.', 'B1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006a43208c', 'Präsens der regelmäßigen Verben (Present Tense) / المضارع للأفعال المنتظمة', 'In German, regular verbs follow a consistent pattern. The infinitive ends in -en. Remove the -en and add the personal endings: ich -e, du -st, er/sie/es -t, wir -en, ihr -t, sie/Sie -en. For most Arabic speakers, this is easier than Arabic verb conjugation because German has fewer forms.', '[{"rule":"ich: stem + e","note":"Ich lerne, ich wohne, ich arbeite"},{"rule":"du: stem + st","note":"Du lernst, du wohnst, du arbeitest"},{"rule":"er/sie/es: stem + t","note":"Er lernt, sie wohnt, es arbeitet"},{"rule":"wir: stem + en","note":"Wir lernen, wir wohnen, wir arbeiten"},{"rule":"ihr: stem + t","note":"Ihr lernt, ihr wohnt, ihr arbeitet"},{"rule":"sie/Sie: stem + en","note":"Sie lernen, Sie wohnen"}]', '[{"german":"Ich lerne Deutsch.","arabic":"أنا أتعلم الألمانية.","english":"I am learning German."},{"german":"Du wohnst in Berlin.","arabic":"أنت تسكن في برلين.","english":"You live in Berlin."},{"german":"Er arbeitet bei Siemens.","arabic":"هو يعمل في سيمنز.","english":"He works at Siemens."}]', '[{"mistake":"Ich lernen Deutsch","correction":"Ich lerne Deutsch","explanation":"After \"ich\" we use the stem + e, not the infinitive."},{"mistake":"Er lerne Deutsch","correction":"Er lernt Deutsch","explanation":"After \"er/sie/es\" we add -t, not -e."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006a43208c', 'multiple_choice', 'What does "die Linguistik" mean?', '["The","A","This","That"]', 'The', 'This is a basic vocabulary item.', 1, 1),
  ('00000000-0000-4000-a000-00006a43208c', 'fill_gap', 'Complete with the correct form.', '["Option 1","Option 2","Option 3"]', 'Option 1', 'Practice grammar in context.', 1, 2),
  ('00000000-0000-4000-a000-00006a43208c', 'translation', 'Translate: "I learn German."', '["Ich lerne Deutsch.","Ich lerne Englisch.","Ich lerne Spanisch."]', 'Ich lerne Deutsch.', 'Ich = I, lerne = learn/learning, Deutsch = German.', 2, 3),
  ('00000000-0000-4000-a000-00006a43208c', 'sentence_order', 'Order the sentence.', '[]', 'Ich lerne Deutsch.', 'Subject + verb + object in German.', 2, 4),
  ('00000000-0000-4000-a000-00006a43208c', 'matching', 'Match the words with their meanings.', '["Match pairs correctly"]', 'Correct pairs', 'Test your vocabulary knowledge.', 2, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-00006a43208c', 'multiple_choice', 'What is the main topic of this lesson?', '["Language Change","Sports","Music","Travel"]', 'Language Change', 1, 1),
  ('00000000-0000-4000-a000-00006a43208c', 'true_false', 'This lesson teaches vocabulary about Language Change.', '["True","False"]', 'True', 1, 2),
  ('00000000-0000-4000-a000-00006a43208c', 'true_false', 'German word order is always the same as English.', '["True","False"]', 'False', 1, 3),
  ('00000000-0000-4000-a000-00006a43208c', 'multiple_choice', 'How do you say "please" in German?', '["Danke","Bitte","Tschüss","Hallo"]', 'Bitte', 1, 4),
  ('00000000-0000-4000-a000-00006a43208c', 'multiple_choice', 'Which article is feminine?', '["der","die","das","den"]', 'die', 1, 5),
  ('00000000-0000-4000-a000-00006a43208c', 'fill_blank', 'Ich ___ (to be) Student.', '["bin","bist","ist","sind"]', 'bin', 1, 6),
  ('00000000-0000-4000-a000-00006a43208c', 'multiple_choice', 'What is the correct word order?', '["Ich lerne Deutsch","Ich Deutsch lerne","Lerne ich Deutsch","Deutsch ich lerne"]', 'Ich lerne Deutsch', 1, 7),
  ('00000000-0000-4000-a000-00006a43208c', 'true_false', 'All German nouns are capitalized.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-00006a43208c', 'multiple_choice', 'How do you say "thank you" in German?', '["Bitte","Danke","Tschüss","Hallo"]', 'Danke', 1, 9),
  ('00000000-0000-4000-a000-00006a43208c', 'fill_blank', 'Wo ___ du? (to live)', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 1, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-00006a43208c', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Sprachvariation und Sprachwandel', 'formal', false, 1),
  ('00000000-0000-4000-a000-00006a43208c', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Sprachvariation und Sprachwandel', 'informal', false, 2),
  ('00000000-0000-4000-a000-00006a43208c', 'Bitte!', 'Please!', 'من فضلك!', 'Used in Sprachvariation und Sprachwandel', 'neutral', false, 3),
  ('00000000-0000-4000-a000-00006a43208c', 'Danke!', 'Thanks!', 'شكراً!', 'Used in Sprachvariation und Sprachwandel', 'neutral', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-00006a43208c', 'Hallo', 'Hello', 'Greeting', 'expression', 1),
  ('00000000-0000-4000-a000-00006a43208c', 'Danke', 'Thanks', 'Politeness', 'expression', 2),
  ('00000000-0000-4000-a000-00006a43208c', 'Bitte', 'Please', 'Politeness', 'expression', 3),
  ('00000000-0000-4000-a000-00006a43208c', 'Tschüss', 'Bye', 'Farewell', 'expression', 4);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-00006a43208c', 'Sprachwandel und Jugendsprache — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, duration_seconds, speaker_count, scenario) values
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

[Lehrerin]: ممتاز! إلى الغد!', 72, 2, 'Sprachvariation und Sprachwandel');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-00006a43208c', 'Speaking: Sprachwandel und Jugendsprache', 'Practice talking about Language Change. Answer questions and have a simple conversation.', 'Language Change', ARRAY['Use full sentences','Speak clearly','Don''t worry about mistakes']::text[], ARRAY['die Linguistik','die Syntax','die Semantik','die Morphologie','die Phonetik']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-00006a43208c', 'Writing: Sprachwandel und Jugendsprache', 'Write a short text about Language Change. Use at least 5 vocabulary words from this lesson.', ARRAY['Start with a greeting','Use the vocabulary from this lesson','Check your grammar']::text[], ARRAY['die Linguistik','die Syntax','die Semantik']::text[], '["Sentence structure","Vocabulary usage"]', 50, 150, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00006a43208c', 'Sprachwandel und Jugendsprache — Roleplay', 'Language Change', 'Student', 'Teacher', 'Practice conversation about Language Change', 'Hallo! Lass uns über dieses Thema sprechen.', 'advanced', 1, ARRAY['die Linguistik','die Syntax','die Semantik','die Morphologie','die Phonetik','die Pragmatik','die Sprachwissenschaft','der Stil']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00006a43208c', 'Sprachwandel und Jugendsprache — Advanced Roleplay', 'Language Change', 'Customer', 'Assistant', 'Extended conversation about Language Change', 'Guten Tag! Wie kann ich Ihnen helfen?', 'advanced', 2, ARRAY['die Linguistik','die Syntax','die Semantik','die Morphologie','die Phonetik','die Pragmatik','die Sprachwissenschaft','der Stil']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-00006a43208c', 'Sprachwandel und Jugendsprache — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Sprachwandel und Jugendsprache".', 'Creative practice for Language Change', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-00006a43208c', 'Homework: Sprachwandel und Jugendsprache', 'Complete these tasks to reinforce "Sprachwandel und Jugendsprache".', 'mixed', '[{"description":"Review all vocabulary from this lesson"},{"description":"Write 5 sentences using the grammar structure"},{"description":"Practice the dialogue aloud"}]', 35, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-00006a43208c', 'In this lesson you learned about Language Change. You practiced vocabulary related to linguistics and grammar structure present_tense.', '["Mastered vocabulary about Language Change","Applied present_tense correctly","Read and understood a text about Language Change","Practiced speaking about Language Change"]', '[{"title":"Sprachwandel und Jugendsprache Review","summary":"present_tense — the main grammar focus of this lesson."}]', ARRAY['Language Change core vocabulary','linguistics key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)','Verb is always in second position']::text[], ARRAY['Practice 15-20 minutes daily','Use new vocabulary in real sentences','Speak out loud to improve pronunciation']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006a43208c', 'translation', 'Translate to German: "This is a translation exercise."', '[]', 'Das ist eine Übersetzungsübung.', 'Use "das ist" for "this is"', 1, 40);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006a43208c', 'Culture: Language Change in German-Speaking Countries', 'Learn how Language Change is approached in German culture.

تعلم كيف يتم التعامل مع Language Change في الثقافة الألمانية.', '["Tip: Be direct and polite","Tip: Use formal language with strangers","Tip: Respect punctuality"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006a43208c', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Common error for Arabic speakers","correction":"Correct version","explanation":"Explanation of the error"}]', 30);

  -- Lesson 3: C2 Abschlusstest (L-C2-06-03)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-00006a43208d', '00000000-0000-4000-a000-000039d176c4', 'C2 Abschlusstest', 'Comprehensive C2 mastery level test.', 'Level Test', 'test', '["Understand and use vocabulary related to Level Test","Apply present_tense correctly","Read and comprehend a text about Level Test","Listen and understand a dialogue about Level Test","Speak about Level Test in simple sentences","Write a short text about Level Test"]', 90, 3, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-00006a43208d', 'die Linguistik', 'علم اللغة', 'linguistics', 'die', NULL, 'noun', 'Linguistik untersucht die menschliche Sprache.', 'Linguistics studies human language.', 'C1', 1),
  ('00000000-0000-4000-a000-00006a43208d', 'die Syntax', 'النحو/تركيب الجملة', 'syntax', 'die', NULL, 'noun', 'Die Syntax beschreibt die Satzstruktur.', 'Syntax describes sentence structure.', 'C1', 2),
  ('00000000-0000-4000-a000-00006a43208d', 'die Semantik', 'علم الدلالة', 'semantics', 'die', NULL, 'noun', 'Die Semantik befasst sich mit Bedeutung.', 'Semantics deals with meaning.', 'C1', 3),
  ('00000000-0000-4000-a000-00006a43208d', 'die Morphologie', 'الصرف', 'morphology', 'die', NULL, 'noun', 'Die Morphologie untersucht Wortformen.', 'Morphology examines word forms.', 'C1', 4),
  ('00000000-0000-4000-a000-00006a43208d', 'die Phonetik', 'علم الأصوات', 'phonetics', 'die', NULL, 'noun', 'Die Phonetik untersucht Sprachlaute.', 'Phonetics studies speech sounds.', 'C1', 5),
  ('00000000-0000-4000-a000-00006a43208d', 'die Pragmatik', 'البراغماتية', 'pragmatics', 'die', NULL, 'noun', 'Pragmatik untersucht Sprachgebrauch.', 'Pragmatics studies language use.', 'C2', 6),
  ('00000000-0000-4000-a000-00006a43208d', 'die Sprachwissenschaft', 'علم اللغة', 'linguistics', 'die', NULL, 'noun', 'Die germanistische Sprachwissenschaft ist vielfältig.', 'German linguistics is diverse.', 'C1', 7),
  ('00000000-0000-4000-a000-00006a43208d', 'der Stil', 'الأسلوب', 'style', 'der', 'die Stile', 'noun', 'Der Stil des Textes ist formell.', 'The style of the text is formal.', 'B2', 8),
  ('00000000-0000-4000-a000-00006a43208d', 'das Register', 'المستوى اللغوي', 'register', 'das', 'die Register', 'noun', 'Das Register passt zur Situation.', 'The register fits the situation.', 'C1', 9),
  ('00000000-0000-4000-a000-00006a43208d', 'das Stilmittel', 'الأداة الأسلوبية', 'stylistic device', 'das', 'die Stilmittel', 'noun', 'Das Stilmittel unterstreicht die Aussage.', 'The stylistic device emphasizes the statement.', 'C1', 10),
  ('00000000-0000-4000-a000-00006a43208d', 'die Alliteration', 'الجناس', 'alliteration', 'die', 'die Alliterationen', 'noun', 'Die Alliteration wiederholt den Anlaut.', 'Alliteration repeats the initial sound.', 'C2', 11),
  ('00000000-0000-4000-a000-00006a43208d', 'die Ellipse', 'الحذف', 'ellipsis', 'die', 'die Ellipsen', 'noun', 'Die Ellipse spart Wörter aus.', 'The ellipsis omits words.', 'C2', 12),
  ('00000000-0000-4000-a000-00006a43208d', 'die Hyperbel', 'المبالغة', 'hyperbole', 'die', 'die Hyperbeln', 'noun', 'Die Hyperbel übertreibt stark.', 'Hyperbole exaggerates strongly.', 'C2', 13),
  ('00000000-0000-4000-a000-00006a43208d', 'die Poetik', 'الشعرية', 'poetics', 'die', NULL, 'noun', 'Poetik ist die Theorie der Dichtkunst.', 'Poetics is the theory of poetry.', 'C2', 14),
  ('00000000-0000-4000-a000-00006a43208d', 'der Vers', 'البيت الشعري', 'verse', 'der', 'die Verse', 'noun', 'Der Vers hat fünf Hebungen.', 'The verse has five stresses.', 'C1', 15),
  ('00000000-0000-4000-a000-00006a43208d', 'der Reim', 'القافية', 'rhyme', 'der', 'die Reime', 'noun', 'Der Reim verbindet die Zeilen.', 'Rhyme connects the lines.', 'C1', 16),
  ('00000000-0000-4000-a000-00006a43208d', 'das Metrum', 'الوزن', 'meter', 'das', 'die Metren', 'noun', 'Das Metrum bestimmt den Rhythmus.', 'The meter determines the rhythm.', 'C2', 17),
  ('00000000-0000-4000-a000-00006a43208d', 'die Gattung', 'النوع الأدبي', 'genre', 'die', 'die Gattungen', 'noun', 'Lyrik ist eine literarische Gattung.', 'Lyric poetry is a literary genre.', 'C1', 18),
  ('00000000-0000-4000-a000-00006a43208d', 'der Sprechakt', 'فعل الكلام', 'speech act', 'der', 'die Sprechakte', 'noun', 'Der Sprechakt ändert die Wirklichkeit.', 'The speech act changes reality.', 'C2', 19),
  ('00000000-0000-4000-a000-00006a43208d', 'die Implikatur', 'الاستلزام التخاطبي', 'implicature', 'die', 'die Implikaturen', 'noun', 'Die Implikatur ist die indirekte Bedeutung.', 'Implicature is the indirect meaning.', 'C2', 20),
  ('00000000-0000-4000-a000-00006a43208d', 'der Kontext', 'السياق', 'context', 'der', 'die Kontexte', 'noun', 'Der Kontext bestimmt die Bedeutung.', 'Context determines meaning.', 'B2', 21),
  ('00000000-0000-4000-a000-00006a43208d', 'die Höflichkeit', 'الأدب / اللباقة', 'politeness', 'die', NULL, 'noun', 'Höflichkeit ist in Japan sehr wichtig.', 'Politeness is very important in Japan.', 'B2', 22),
  ('00000000-0000-4000-a000-00006a43208d', 'die Konversationsanalyse', 'تحليل المحادثة', 'conversation analysis', 'die', NULL, 'noun', 'Die Konversationsanalyse untersucht Gespräche.', 'Conversation analysis examines conversations.', 'C2', 23),
  ('00000000-0000-4000-a000-00006a43208d', 'die Bedeutung', 'المعنى', 'meaning', 'die', 'die Bedeutungen', 'noun', 'Die Bedeutung des Wortes ist klar.', 'The meaning of the word is clear.', 'B2', 24),
  ('00000000-0000-4000-a000-00006a43208d', 'die Synonymie', 'الترادف', 'synonymy', 'die', NULL, 'noun', 'Synonymie bedeutet Bedeutungsgleichheit.', 'Synonymy means sameness of meaning.', 'C2', 25),
  ('00000000-0000-4000-a000-00006a43208d', 'die Antonymie', 'التضاد', 'antonymy', 'die', NULL, 'noun', 'Antonymie bezeichnet Gegensätze.', 'Antonymy denotes opposites.', 'C2', 26),
  ('00000000-0000-4000-a000-00006a43208d', 'die Polysemie', 'تعدد المعاني', 'polysemy', 'die', NULL, 'noun', 'Polysemie hat mehrere Bedeutungen.', 'Polysemy has multiple meanings.', 'C2', 27),
  ('00000000-0000-4000-a000-00006a43208d', 'die Kompositionalität', 'التركيبية', 'compositionality', 'die', NULL, 'noun', 'Kompositionalität besagt, dass Bedeutung aus Teilen besteht.', 'Compositionality holds that meaning consists of parts.', 'C2', 28),
  ('00000000-0000-4000-a000-00006a43208d', 'die Übersetzung', 'الترجمة', 'translation', 'die', 'die Übersetzungen', 'noun', 'Die Übersetzung ist gelungen.', 'The translation is successful.', 'B2', 29),
  ('00000000-0000-4000-a000-00006a43208d', 'übersetzen', 'يترجم', 'to translate', NULL, NULL, 'verb', 'Ich übersetze den Text ins Arabische.', 'I translate the text into Arabic.', 'B1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006a43208d', 'Präsens der regelmäßigen Verben (Present Tense) / المضارع للأفعال المنتظمة', 'In German, regular verbs follow a consistent pattern. The infinitive ends in -en. Remove the -en and add the personal endings: ich -e, du -st, er/sie/es -t, wir -en, ihr -t, sie/Sie -en. For most Arabic speakers, this is easier than Arabic verb conjugation because German has fewer forms.', '[{"rule":"ich: stem + e","note":"Ich lerne, ich wohne, ich arbeite"},{"rule":"du: stem + st","note":"Du lernst, du wohnst, du arbeitest"},{"rule":"er/sie/es: stem + t","note":"Er lernt, sie wohnt, es arbeitet"},{"rule":"wir: stem + en","note":"Wir lernen, wir wohnen, wir arbeiten"},{"rule":"ihr: stem + t","note":"Ihr lernt, ihr wohnt, ihr arbeitet"},{"rule":"sie/Sie: stem + en","note":"Sie lernen, Sie wohnen"}]', '[{"german":"Ich lerne Deutsch.","arabic":"أنا أتعلم الألمانية.","english":"I am learning German."},{"german":"Du wohnst in Berlin.","arabic":"أنت تسكن في برلين.","english":"You live in Berlin."},{"german":"Er arbeitet bei Siemens.","arabic":"هو يعمل في سيمنز.","english":"He works at Siemens."}]', '[{"mistake":"Ich lernen Deutsch","correction":"Ich lerne Deutsch","explanation":"After \"ich\" we use the stem + e, not the infinitive."},{"mistake":"Er lerne Deutsch","correction":"Er lernt Deutsch","explanation":"After \"er/sie/es\" we add -t, not -e."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006a43208d', 'multiple_choice', 'What does "die Linguistik" mean?', '["The","A","This","That"]', 'The', 'This is a basic vocabulary item.', 1, 1),
  ('00000000-0000-4000-a000-00006a43208d', 'fill_gap', 'Complete with the correct form.', '["Option 1","Option 2","Option 3"]', 'Option 1', 'Practice grammar in context.', 1, 2),
  ('00000000-0000-4000-a000-00006a43208d', 'translation', 'Translate: "I learn German."', '["Ich lerne Deutsch.","Ich lerne Englisch.","Ich lerne Spanisch."]', 'Ich lerne Deutsch.', 'Ich = I, lerne = learn/learning, Deutsch = German.', 2, 3),
  ('00000000-0000-4000-a000-00006a43208d', 'sentence_order', 'Order the sentence.', '[]', 'Ich lerne Deutsch.', 'Subject + verb + object in German.', 2, 4),
  ('00000000-0000-4000-a000-00006a43208d', 'matching', 'Match the words with their meanings.', '["Match pairs correctly"]', 'Correct pairs', 'Test your vocabulary knowledge.', 2, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-00006a43208d', 'multiple_choice', 'What is the main topic of this lesson?', '["Level Test","Sports","Music","Travel"]', 'Level Test', 1, 1),
  ('00000000-0000-4000-a000-00006a43208d', 'true_false', 'This lesson teaches vocabulary about Level Test.', '["True","False"]', 'True', 1, 2),
  ('00000000-0000-4000-a000-00006a43208d', 'true_false', 'German word order is always the same as English.', '["True","False"]', 'False', 1, 3),
  ('00000000-0000-4000-a000-00006a43208d', 'multiple_choice', 'How do you say "please" in German?', '["Danke","Bitte","Tschüss","Hallo"]', 'Bitte', 1, 4),
  ('00000000-0000-4000-a000-00006a43208d', 'multiple_choice', 'Which article is feminine?', '["der","die","das","den"]', 'die', 1, 5),
  ('00000000-0000-4000-a000-00006a43208d', 'fill_blank', 'Ich ___ (to be) Student.', '["bin","bist","ist","sind"]', 'bin', 1, 6),
  ('00000000-0000-4000-a000-00006a43208d', 'multiple_choice', 'What is the correct word order?', '["Ich lerne Deutsch","Ich Deutsch lerne","Lerne ich Deutsch","Deutsch ich lerne"]', 'Ich lerne Deutsch', 1, 7),
  ('00000000-0000-4000-a000-00006a43208d', 'true_false', 'All German nouns are capitalized.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-00006a43208d', 'multiple_choice', 'How do you say "thank you" in German?', '["Bitte","Danke","Tschüss","Hallo"]', 'Danke', 1, 9),
  ('00000000-0000-4000-a000-00006a43208d', 'fill_blank', 'Wo ___ du? (to live)', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 1, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-00006a43208d', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Sprachvariation und Sprachwandel', 'formal', false, 1),
  ('00000000-0000-4000-a000-00006a43208d', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Sprachvariation und Sprachwandel', 'informal', false, 2),
  ('00000000-0000-4000-a000-00006a43208d', 'Bitte!', 'Please!', 'من فضلك!', 'Used in Sprachvariation und Sprachwandel', 'neutral', false, 3),
  ('00000000-0000-4000-a000-00006a43208d', 'Danke!', 'Thanks!', 'شكراً!', 'Used in Sprachvariation und Sprachwandel', 'neutral', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-00006a43208d', 'Hallo', 'Hello', 'Greeting', 'expression', 1),
  ('00000000-0000-4000-a000-00006a43208d', 'Danke', 'Thanks', 'Politeness', 'expression', 2),
  ('00000000-0000-4000-a000-00006a43208d', 'Bitte', 'Please', 'Politeness', 'expression', 3),
  ('00000000-0000-4000-a000-00006a43208d', 'Tschüss', 'Bye', 'Farewell', 'expression', 4);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-00006a43208d', 'C2 Abschlusstest — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, duration_seconds, speaker_count, scenario) values
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

[Lehrerin]: ممتاز! إلى الغد!', 72, 2, 'Sprachvariation und Sprachwandel');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-00006a43208d', 'Speaking: C2 Abschlusstest', 'Practice talking about Level Test. Answer questions and have a simple conversation.', 'Level Test', ARRAY['Use full sentences','Speak clearly','Don''t worry about mistakes']::text[], ARRAY['die Linguistik','die Syntax','die Semantik','die Morphologie','die Phonetik']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-00006a43208d', 'Writing: C2 Abschlusstest', 'Write a short text about Level Test. Use at least 5 vocabulary words from this lesson.', ARRAY['Start with a greeting','Use the vocabulary from this lesson','Check your grammar']::text[], ARRAY['die Linguistik','die Syntax','die Semantik']::text[], '["Sentence structure","Vocabulary usage"]', 50, 150, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00006a43208d', 'C2 Abschlusstest — Roleplay', 'Level Test', 'Student', 'Teacher', 'Practice conversation about Level Test', 'Hallo! Lass uns über dieses Thema sprechen.', 'advanced', 1, ARRAY['die Linguistik','die Syntax','die Semantik','die Morphologie','die Phonetik','die Pragmatik','die Sprachwissenschaft','der Stil']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00006a43208d', 'C2 Abschlusstest — Advanced Roleplay', 'Level Test', 'Customer', 'Assistant', 'Extended conversation about Level Test', 'Guten Tag! Wie kann ich Ihnen helfen?', 'advanced', 2, ARRAY['die Linguistik','die Syntax','die Semantik','die Morphologie','die Phonetik','die Pragmatik','die Sprachwissenschaft','der Stil']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-00006a43208d', 'C2 Abschlusstest — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "C2 Abschlusstest".', 'Creative practice for Level Test', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-00006a43208d', 'Homework: C2 Abschlusstest', 'Complete these tasks to reinforce "C2 Abschlusstest".', 'mixed', '[{"description":"Review all vocabulary from this lesson"},{"description":"Write 5 sentences using the grammar structure"},{"description":"Practice the dialogue aloud"}]', 35, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-00006a43208d', 'In this lesson you learned about Level Test. You practiced vocabulary related to linguistics and grammar structure present_tense.', '["Mastered vocabulary about Level Test","Applied present_tense correctly","Read and understood a text about Level Test","Practiced speaking about Level Test"]', '[{"title":"C2 Abschlusstest Review","summary":"present_tense — the main grammar focus of this lesson."}]', ARRAY['Level Test core vocabulary','linguistics key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)','Verb is always in second position']::text[], ARRAY['Practice 15-20 minutes daily','Use new vocabulary in real sentences','Speak out loud to improve pronunciation']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006a43208d', 'translation', 'Translate to German: "This is a translation exercise."', '[]', 'Das ist eine Übersetzungsübung.', 'Use "das ist" for "this is"', 1, 40);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006a43208d', 'Culture: Level Test in German-Speaking Countries', 'Learn how Level Test is approached in German culture.

تعلم كيف يتم التعامل مع Level Test في الثقافة الألمانية.', '["Tip: Be direct and polite","Tip: Use formal language with strangers","Tip: Respect punctuality"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006a43208d', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Common error for Arabic speakers","correction":"Correct version","explanation":"Explanation of the error"}]', 30);

end $$;
