-- ============================================================================
-- COMPLETE CURRICULUM SEED — Level A1 (Beginner)
-- Generated for 6 modules, 36 lessons
-- ============================================================================

do $$
declare
  m_id uuid;
  l_id uuid;
begin

  -- Level: A1 — Beginner
  insert into public.course_levels (id, title, description, image_url, color, order_index)
  values ('A1', 'Beginner', 'Start your German journey from zero. Learn basic greetings, introductions, and everyday phrases. By the end of A1, you can understand and use familiar everyday expressions and very basic phrases.', NULL, 'from-green-500 to-emerald-600', 1)
  on conflict (id) do nothing;

  -- Module 1: Hallo! Erste Schritte
  insert into public.course_modules (id, level_id, title, description, objectives, order_index, estimated_hours, is_published)
  values ('00000000-0000-4000-a000-000039b4d35e', 'A1', 'Hallo! Erste Schritte', 'Learn basic greetings, introductions, the alphabet, and numbers 1-100.', '["Greet people formally and informally","Introduce yourself and ask others their name","Say where you come from","Count from 1 to 100","Spell your name using the German alphabet"]', 1, 4, true)
  on conflict (id) do nothing;

  -- Lesson 1: Begrüßungen und Vorstellungen (L-A1-01-01)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-0000659845b1', '00000000-0000-4000-a000-000039b4d35e', 'Begrüßungen und Vorstellungen', 'Learn how to greet people, say goodbye, and introduce yourself.', 'Greetings & Introductions', 'vocabulary', '["Understand and use vocabulary related to Greetings & Introductions","Apply present_tense correctly","Read and comprehend a text about Greetings & Introductions","Listen and understand a dialogue about Greetings & Introductions","Speak about Greetings & Introductions in simple sentences","Write a short text about Greetings & Introductions"]', 30, 1, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-0000659845b1', 'Hallo', 'مرحباً', 'hello', NULL, NULL, 'interjection', 'Hallo, wie geht es dir?', 'Hello, how are you?', 'A1', 1),
  ('00000000-0000-4000-a000-0000659845b1', 'Guten Morgen', 'صباح الخير', 'good morning', NULL, NULL, 'phrase', 'Guten Morgen, Herr Müller.', 'Good morning, Mr. Müller.', 'A1', 2),
  ('00000000-0000-4000-a000-0000659845b1', 'Guten Tag', 'نهارك سعيد', 'good day', NULL, NULL, 'phrase', 'Guten Tag, Frau Schmidt.', 'Good day, Mrs. Schmidt.', 'A1', 3),
  ('00000000-0000-4000-a000-0000659845b1', 'Tschüss', 'مع السلامة', 'bye', NULL, NULL, 'interjection', 'Tschüss, bis morgen!', 'Bye, see you tomorrow!', 'A1', 4),
  ('00000000-0000-4000-a000-0000659845b1', 'der Name', 'الاسم', 'name', 'der', 'die Namen', 'noun', 'Mein Name ist Anna.', 'My name is Anna.', 'A1', 5),
  ('00000000-0000-4000-a000-0000659845b1', 'wie', 'كيف', 'how', NULL, NULL, 'adverb', 'Wie heißt du?', 'What is your name?', 'A1', 6),
  ('00000000-0000-4000-a000-0000659845b1', 'freuen', 'يسر', 'to be pleased', NULL, NULL, 'verb', 'Ich freue mich, dich kennenzulernen.', 'I am pleased to meet you.', 'A1', 7),
  ('00000000-0000-4000-a000-0000659845b1', 'Willkommen', 'أهلاً وسهلاً', 'welcome', NULL, NULL, 'interjection', 'Willkommen in Deutschland!', 'Welcome to Germany!', 'A1', 8),
  ('00000000-0000-4000-a000-0000659845b1', 'die Familie', 'العائلة', 'family', 'die', 'die Familien', 'noun', 'Meine Familie ist groß.', 'My family is big.', 'A1', 9),
  ('00000000-0000-4000-a000-0000659845b1', 'der Vater', 'الأب', 'father', 'der', 'die Väter', 'noun', 'Mein Vater ist Ingenieur.', 'My father is an engineer.', 'A1', 10),
  ('00000000-0000-4000-a000-0000659845b1', 'die Mutter', 'الأم', 'mother', 'die', 'die Mütter', 'noun', 'Meine Mutter kocht gut.', 'My mother cooks well.', 'A1', 11),
  ('00000000-0000-4000-a000-0000659845b1', 'der Bruder', 'الأخ', 'brother', 'der', 'die Brüder', 'noun', 'Mein Bruder ist 15 Jahre alt.', 'My brother is 15 years old.', 'A1', 12),
  ('00000000-0000-4000-a000-0000659845b1', 'die Schwester', 'الأخت', 'sister', 'die', 'die Schwestern', 'noun', 'Meine Schwester studiert Medizin.', 'My sister studies medicine.', 'A1', 13),
  ('00000000-0000-4000-a000-0000659845b1', 'die Geschwister', 'الإخوة', 'siblings', 'die', NULL, 'noun', 'Hast du Geschwister?', 'Do you have siblings?', 'A1', 14),
  ('00000000-0000-4000-a000-0000659845b1', 'der Sohn', 'الابن', 'son', 'der', 'die Söhne', 'noun', 'Wir haben einen Sohn.', 'We have a son.', 'A1', 15),
  ('00000000-0000-4000-a000-0000659845b1', 'die Tochter', 'الابنة', 'daughter', 'die', 'die Töchter', 'noun', 'Meine Tochter geht zur Schule.', 'My daughter goes to school.', 'A1', 16),
  ('00000000-0000-4000-a000-0000659845b1', 'die Großeltern', 'الأجداد', 'grandparents', 'die', NULL, 'noun', 'Meine Großeltern wohnen auf dem Land.', 'My grandparents live in the countryside.', 'A1', 17),
  ('00000000-0000-4000-a000-0000659845b1', 'verheiratet', 'متزوج', 'married', NULL, NULL, 'adjective', 'Meine Eltern sind verheiratet.', 'My parents are married.', 'A1', 18),
  ('00000000-0000-4000-a000-0000659845b1', 'das Brot', 'الخبز', 'bread', 'das', 'die Brote', 'noun', 'Ich kaufe ein Brot.', 'I buy a loaf of bread.', 'A1', 19),
  ('00000000-0000-4000-a000-0000659845b1', 'die Milch', 'الحليب', 'milk', 'die', NULL, 'noun', 'Die Milch ist frisch.', 'The milk is fresh.', 'A1', 20),
  ('00000000-0000-4000-a000-0000659845b1', 'der Käse', 'الجبن', 'cheese', 'der', NULL, 'noun', 'Der Käse schmeckt gut.', 'The cheese tastes good.', 'A1', 21),
  ('00000000-0000-4000-a000-0000659845b1', 'der Apfel', 'التفاح', 'apple', 'der', 'die Äpfel', 'noun', 'Der Apfel ist rot.', 'The apple is red.', 'A1', 22),
  ('00000000-0000-4000-a000-0000659845b1', 'das Ei', 'البيضة', 'egg', 'das', 'die Eier', 'noun', 'Ich esse ein Ei zum Frühstück.', 'I eat an egg for breakfast.', 'A1', 23),
  ('00000000-0000-4000-a000-0000659845b1', 'das Obst', 'الفاكهة', 'fruit', 'das', NULL, 'noun', 'Obst ist gesund.', 'Fruit is healthy.', 'A1', 24),
  ('00000000-0000-4000-a000-0000659845b1', 'das Gemüse', 'الخضروات', 'vegetables', 'das', NULL, 'noun', 'Ich kaufe Gemüse auf dem Markt.', 'I buy vegetables at the market.', 'A1', 25),
  ('00000000-0000-4000-a000-0000659845b1', 'kochen', 'يطبخ', 'to cook', NULL, NULL, 'verb', 'Meine Mutter kocht gut.', 'My mother cooks well.', 'A1', 26),
  ('00000000-0000-4000-a000-0000659845b1', 'der Fisch', 'السمك', 'fish', 'der', 'die Fische', 'noun', 'Der Fisch ist frisch.', 'The fish is fresh.', 'A1', 27),
  ('00000000-0000-4000-a000-0000659845b1', 'das Fleisch', 'اللحم', 'meat', 'das', NULL, 'noun', 'Ich esse nicht viel Fleisch.', 'I do not eat much meat.', 'A1', 28),
  ('00000000-0000-4000-a000-0000659845b1', 'das Haus', 'البيت', 'house', 'das', 'die Häuser', 'noun', 'Das Haus ist groß.', 'The house is big.', 'A1', 29),
  ('00000000-0000-4000-a000-0000659845b1', 'die Wohnung', 'الشقة', 'apartment', 'die', 'die Wohnungen', 'noun', 'Meine Wohnung hat drei Zimmer.', 'My apartment has three rooms.', 'A1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000659845b1', 'Präsens der regelmäßigen Verben (Present Tense) / المضارع للأفعال المنتظمة', 'In German, regular verbs follow a consistent pattern. The infinitive ends in -en. Remove the -en and add the personal endings: ich -e, du -st, er/sie/es -t, wir -en, ihr -t, sie/Sie -en. For most Arabic speakers, this is easier than Arabic verb conjugation because German has fewer forms.', '[{"rule":"ich: stem + e","note":"Ich lerne, ich wohne, ich arbeite"},{"rule":"du: stem + st","note":"Du lernst, du wohnst, du arbeitest"},{"rule":"er/sie/es: stem + t","note":"Er lernt, sie wohnt, es arbeitet"},{"rule":"wir: stem + en","note":"Wir lernen, wir wohnen, wir arbeiten"},{"rule":"ihr: stem + t","note":"Ihr lernt, ihr wohnt, ihr arbeitet"},{"rule":"sie/Sie: stem + en","note":"Sie lernen, Sie wohnen"}]', '[{"german":"Ich lerne Deutsch.","arabic":"أنا أتعلم الألمانية.","english":"I am learning German."},{"german":"Du wohnst in Berlin.","arabic":"أنت تسكن في برلين.","english":"You live in Berlin."},{"german":"Er arbeitet bei Siemens.","arabic":"هو يعمل في سيمنز.","english":"He works at Siemens."}]', '[{"mistake":"Ich lernen Deutsch","correction":"Ich lerne Deutsch","explanation":"After \"ich\" we use the stem + e, not the infinitive."},{"mistake":"Er lerne Deutsch","correction":"Er lernt Deutsch","explanation":"After \"er/sie/es\" we add -t, not -e."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000659845b1', 'multiple_choice', 'What does "Hallo" mean?', '["The","A","This","That"]', 'The', 'This is a basic vocabulary item.', 1, 1),
  ('00000000-0000-4000-a000-0000659845b1', 'fill_gap', 'Complete with the correct form.', '["Option 1","Option 2","Option 3"]', 'Option 1', 'Practice grammar in context.', 1, 2),
  ('00000000-0000-4000-a000-0000659845b1', 'translation', 'Translate: "I learn German."', '["Ich lerne Deutsch.","Ich lerne Englisch.","Ich lerne Spanisch."]', 'Ich lerne Deutsch.', 'Ich = I, lerne = learn/learning, Deutsch = German.', 2, 3),
  ('00000000-0000-4000-a000-0000659845b1', 'sentence_order', 'Order the sentence.', '[]', 'Ich lerne Deutsch.', 'Subject + verb + object in German.', 2, 4),
  ('00000000-0000-4000-a000-0000659845b1', 'matching', 'Match the words with their meanings.', '["Match pairs correctly"]', 'Correct pairs', 'Test your vocabulary knowledge.', 2, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-0000659845b1', 'multiple_choice', 'What is the main topic of this lesson?', '["Greetings & Introductions","Sports","Music","Travel"]', 'Greetings & Introductions', 1, 1),
  ('00000000-0000-4000-a000-0000659845b1', 'true_false', 'This lesson teaches vocabulary about Greetings & Introductions.', '["True","False"]', 'True', 1, 2),
  ('00000000-0000-4000-a000-0000659845b1', 'true_false', 'German word order is always the same as English.', '["True","False"]', 'False', 1, 3),
  ('00000000-0000-4000-a000-0000659845b1', 'multiple_choice', 'How do you say "please" in German?', '["Danke","Bitte","Tschüss","Hallo"]', 'Bitte', 1, 4),
  ('00000000-0000-4000-a000-0000659845b1', 'multiple_choice', 'Which article is feminine?', '["der","die","das","den"]', 'die', 1, 5),
  ('00000000-0000-4000-a000-0000659845b1', 'fill_blank', 'Ich ___ (to be) Student.', '["bin","bist","ist","sind"]', 'bin', 1, 6),
  ('00000000-0000-4000-a000-0000659845b1', 'multiple_choice', 'What is the correct word order?', '["Ich lerne Deutsch","Ich Deutsch lerne","Lerne ich Deutsch","Deutsch ich lerne"]', 'Ich lerne Deutsch', 1, 7),
  ('00000000-0000-4000-a000-0000659845b1', 'true_false', 'All German nouns are capitalized.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-0000659845b1', 'multiple_choice', 'How do you say "thank you" in German?', '["Bitte","Danke","Tschüss","Hallo"]', 'Danke', 1, 9),
  ('00000000-0000-4000-a000-0000659845b1', 'fill_blank', 'Wo ___ du? (to live)', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 1, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-0000659845b1', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Hallo! Erste Schritte', 'formal', false, 1),
  ('00000000-0000-4000-a000-0000659845b1', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Hallo! Erste Schritte', 'informal', false, 2),
  ('00000000-0000-4000-a000-0000659845b1', 'Bitte!', 'Please!', 'من فضلك!', 'Used in Hallo! Erste Schritte', 'neutral', false, 3),
  ('00000000-0000-4000-a000-0000659845b1', 'Danke!', 'Thanks!', 'شكراً!', 'Used in Hallo! Erste Schritte', 'neutral', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-0000659845b1', 'Hallo', 'Hello', 'Greeting', 'expression', 1),
  ('00000000-0000-4000-a000-0000659845b1', 'Danke', 'Thanks', 'Politeness', 'expression', 2),
  ('00000000-0000-4000-a000-0000659845b1', 'Bitte', 'Please', 'Politeness', 'expression', 3),
  ('00000000-0000-4000-a000-0000659845b1', 'Tschüss', 'Bye', 'Farewell', 'expression', 4);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-0000659845b1', 'Begrüßungen und Vorstellungen — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, duration_seconds, speaker_count, scenario) values
  ('00000000-0000-4000-a000-0000659845b1', 'Begrüßungen und Vorstellungen — Hörverständnis', '[Lehrerin]: Guten Morgen! Heute lernen wir Begrüßungen.

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

[Lehrerin]: ممتاز! إلى الغد!', 72, 2, 'Hallo! Erste Schritte');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-0000659845b1', 'Speaking: Begrüßungen und Vorstellungen', 'Practice talking about Greetings & Introductions. Answer questions and have a simple conversation.', 'Greetings & Introductions', ARRAY['Use full sentences','Speak clearly','Don''t worry about mistakes']::text[], ARRAY['Hallo','Guten Morgen','Guten Tag','Tschüss','der Name']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-0000659845b1', 'Writing: Begrüßungen und Vorstellungen', 'Write a short text about Greetings & Introductions. Use at least 5 vocabulary words from this lesson.', ARRAY['Start with a greeting','Use the vocabulary from this lesson','Check your grammar']::text[], ARRAY['Hallo','Guten Morgen','Guten Tag']::text[], '["Sentence structure","Vocabulary usage"]', 50, 150, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000659845b1', 'Begrüßungen und Vorstellungen — Roleplay', 'Greetings & Introductions', 'Student', 'Teacher', 'Practice conversation about Greetings & Introductions', 'Hallo! Lass uns über dieses Thema sprechen.', 'beginner', 1, ARRAY['Hallo','Guten Morgen','Guten Tag','Tschüss','der Name','wie','freuen','Willkommen']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000659845b1', 'Begrüßungen und Vorstellungen — Advanced Roleplay', 'Greetings & Introductions', 'Customer', 'Assistant', 'Extended conversation about Greetings & Introductions', 'Guten Tag! Wie kann ich Ihnen helfen?', 'beginner', 2, ARRAY['Hallo','Guten Morgen','Guten Tag','Tschüss','der Name','wie','freuen','Willkommen']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-0000659845b1', 'Begrüßungen und Vorstellungen — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Begrüßungen und Vorstellungen".', 'Creative practice for Greetings & Introductions', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-0000659845b1', 'Homework: Begrüßungen und Vorstellungen', 'Complete these tasks to reinforce "Begrüßungen und Vorstellungen".', 'mixed', '[{"description":"Review all vocabulary from this lesson"},{"description":"Write 5 sentences using the grammar structure"},{"description":"Practice the dialogue aloud"}]', 35, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-0000659845b1', 'In this lesson you learned about Greetings & Introductions. You practiced vocabulary related to greetings and grammar structure present_tense.', '["Mastered vocabulary about Greetings & Introductions","Applied present_tense correctly","Read and understood a text about Greetings & Introductions","Practiced speaking about Greetings & Introductions"]', '[{"title":"Begrüßungen und Vorstellungen Review","summary":"present_tense — the main grammar focus of this lesson."}]', ARRAY['Greetings & Introductions core vocabulary','greetings key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)','Verb is always in second position']::text[], ARRAY['Practice 15-20 minutes daily','Use new vocabulary in real sentences','Speak out loud to improve pronunciation']::text[]);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000659845b1', 'Pronunciation: German pronunciation basics', 'German is mostly phonetic. Pronounce each letter.

Common mistake for Arabic speakers: Pronouncing every letter as in English.', '[]', '[{"german":"ja","arabic":"","english":"","phonetic":"/jaː/"},{"german":"nein","arabic":"","english":"","phonetic":"/naɪn/"}]', '[]', 10);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000659845b1', 'translation', 'Translate to German: "This is a translation exercise."', '[]', 'Das ist eine Übersetzungsübung.', 'Use "das ist" for "this is"', 1, 40);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000659845b1', 'Culture: Greetings & Introductions in German-Speaking Countries', 'Learn how Greetings & Introductions is approached in German culture.

تعلم كيف يتم التعامل مع Greetings & Introductions في الثقافة الألمانية.', '["Tip: Be direct and polite","Tip: Use formal language with strangers","Tip: Respect punctuality"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000659845b1', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Common error for Arabic speakers","correction":"Correct version","explanation":"Explanation of the error"}]', 30);

  -- Lesson 2: Das Alphabet (L-A1-01-02)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-0000659845b2', '00000000-0000-4000-a000-000039b4d35e', 'Das Alphabet', 'Learn the German alphabet, letter pronunciation, and spelling.', 'Alphabet', 'pronunciation', '["Understand and use vocabulary related to Alphabet","Apply present_tense correctly","Read and comprehend a text about Alphabet","Listen and understand a dialogue about Alphabet","Speak about Alphabet in simple sentences","Write a short text about Alphabet"]', 30, 2, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-0000659845b2', 'Hallo', 'مرحباً', 'hello', NULL, NULL, 'interjection', 'Hallo, wie geht es dir?', 'Hello, how are you?', 'A1', 1),
  ('00000000-0000-4000-a000-0000659845b2', 'Guten Morgen', 'صباح الخير', 'good morning', NULL, NULL, 'phrase', 'Guten Morgen, Herr Müller.', 'Good morning, Mr. Müller.', 'A1', 2),
  ('00000000-0000-4000-a000-0000659845b2', 'Guten Tag', 'نهارك سعيد', 'good day', NULL, NULL, 'phrase', 'Guten Tag, Frau Schmidt.', 'Good day, Mrs. Schmidt.', 'A1', 3),
  ('00000000-0000-4000-a000-0000659845b2', 'Tschüss', 'مع السلامة', 'bye', NULL, NULL, 'interjection', 'Tschüss, bis morgen!', 'Bye, see you tomorrow!', 'A1', 4),
  ('00000000-0000-4000-a000-0000659845b2', 'der Name', 'الاسم', 'name', 'der', 'die Namen', 'noun', 'Mein Name ist Anna.', 'My name is Anna.', 'A1', 5),
  ('00000000-0000-4000-a000-0000659845b2', 'wie', 'كيف', 'how', NULL, NULL, 'adverb', 'Wie heißt du?', 'What is your name?', 'A1', 6),
  ('00000000-0000-4000-a000-0000659845b2', 'freuen', 'يسر', 'to be pleased', NULL, NULL, 'verb', 'Ich freue mich, dich kennenzulernen.', 'I am pleased to meet you.', 'A1', 7),
  ('00000000-0000-4000-a000-0000659845b2', 'Willkommen', 'أهلاً وسهلاً', 'welcome', NULL, NULL, 'interjection', 'Willkommen in Deutschland!', 'Welcome to Germany!', 'A1', 8),
  ('00000000-0000-4000-a000-0000659845b2', 'die Familie', 'العائلة', 'family', 'die', 'die Familien', 'noun', 'Meine Familie ist groß.', 'My family is big.', 'A1', 9),
  ('00000000-0000-4000-a000-0000659845b2', 'der Vater', 'الأب', 'father', 'der', 'die Väter', 'noun', 'Mein Vater ist Ingenieur.', 'My father is an engineer.', 'A1', 10),
  ('00000000-0000-4000-a000-0000659845b2', 'die Mutter', 'الأم', 'mother', 'die', 'die Mütter', 'noun', 'Meine Mutter kocht gut.', 'My mother cooks well.', 'A1', 11),
  ('00000000-0000-4000-a000-0000659845b2', 'der Bruder', 'الأخ', 'brother', 'der', 'die Brüder', 'noun', 'Mein Bruder ist 15 Jahre alt.', 'My brother is 15 years old.', 'A1', 12),
  ('00000000-0000-4000-a000-0000659845b2', 'die Schwester', 'الأخت', 'sister', 'die', 'die Schwestern', 'noun', 'Meine Schwester studiert Medizin.', 'My sister studies medicine.', 'A1', 13),
  ('00000000-0000-4000-a000-0000659845b2', 'die Geschwister', 'الإخوة', 'siblings', 'die', NULL, 'noun', 'Hast du Geschwister?', 'Do you have siblings?', 'A1', 14),
  ('00000000-0000-4000-a000-0000659845b2', 'der Sohn', 'الابن', 'son', 'der', 'die Söhne', 'noun', 'Wir haben einen Sohn.', 'We have a son.', 'A1', 15),
  ('00000000-0000-4000-a000-0000659845b2', 'die Tochter', 'الابنة', 'daughter', 'die', 'die Töchter', 'noun', 'Meine Tochter geht zur Schule.', 'My daughter goes to school.', 'A1', 16),
  ('00000000-0000-4000-a000-0000659845b2', 'die Großeltern', 'الأجداد', 'grandparents', 'die', NULL, 'noun', 'Meine Großeltern wohnen auf dem Land.', 'My grandparents live in the countryside.', 'A1', 17),
  ('00000000-0000-4000-a000-0000659845b2', 'verheiratet', 'متزوج', 'married', NULL, NULL, 'adjective', 'Meine Eltern sind verheiratet.', 'My parents are married.', 'A1', 18),
  ('00000000-0000-4000-a000-0000659845b2', 'das Brot', 'الخبز', 'bread', 'das', 'die Brote', 'noun', 'Ich kaufe ein Brot.', 'I buy a loaf of bread.', 'A1', 19),
  ('00000000-0000-4000-a000-0000659845b2', 'die Milch', 'الحليب', 'milk', 'die', NULL, 'noun', 'Die Milch ist frisch.', 'The milk is fresh.', 'A1', 20),
  ('00000000-0000-4000-a000-0000659845b2', 'der Käse', 'الجبن', 'cheese', 'der', NULL, 'noun', 'Der Käse schmeckt gut.', 'The cheese tastes good.', 'A1', 21),
  ('00000000-0000-4000-a000-0000659845b2', 'der Apfel', 'التفاح', 'apple', 'der', 'die Äpfel', 'noun', 'Der Apfel ist rot.', 'The apple is red.', 'A1', 22),
  ('00000000-0000-4000-a000-0000659845b2', 'das Ei', 'البيضة', 'egg', 'das', 'die Eier', 'noun', 'Ich esse ein Ei zum Frühstück.', 'I eat an egg for breakfast.', 'A1', 23),
  ('00000000-0000-4000-a000-0000659845b2', 'das Obst', 'الفاكهة', 'fruit', 'das', NULL, 'noun', 'Obst ist gesund.', 'Fruit is healthy.', 'A1', 24),
  ('00000000-0000-4000-a000-0000659845b2', 'das Gemüse', 'الخضروات', 'vegetables', 'das', NULL, 'noun', 'Ich kaufe Gemüse auf dem Markt.', 'I buy vegetables at the market.', 'A1', 25),
  ('00000000-0000-4000-a000-0000659845b2', 'kochen', 'يطبخ', 'to cook', NULL, NULL, 'verb', 'Meine Mutter kocht gut.', 'My mother cooks well.', 'A1', 26),
  ('00000000-0000-4000-a000-0000659845b2', 'der Fisch', 'السمك', 'fish', 'der', 'die Fische', 'noun', 'Der Fisch ist frisch.', 'The fish is fresh.', 'A1', 27),
  ('00000000-0000-4000-a000-0000659845b2', 'das Fleisch', 'اللحم', 'meat', 'das', NULL, 'noun', 'Ich esse nicht viel Fleisch.', 'I do not eat much meat.', 'A1', 28),
  ('00000000-0000-4000-a000-0000659845b2', 'das Haus', 'البيت', 'house', 'das', 'die Häuser', 'noun', 'Das Haus ist groß.', 'The house is big.', 'A1', 29),
  ('00000000-0000-4000-a000-0000659845b2', 'die Wohnung', 'الشقة', 'apartment', 'die', 'die Wohnungen', 'noun', 'Meine Wohnung hat drei Zimmer.', 'My apartment has three rooms.', 'A1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000659845b2', 'Präsens der regelmäßigen Verben (Present Tense) / المضارع للأفعال المنتظمة', 'In German, regular verbs follow a consistent pattern. The infinitive ends in -en. Remove the -en and add the personal endings: ich -e, du -st, er/sie/es -t, wir -en, ihr -t, sie/Sie -en. For most Arabic speakers, this is easier than Arabic verb conjugation because German has fewer forms.', '[{"rule":"ich: stem + e","note":"Ich lerne, ich wohne, ich arbeite"},{"rule":"du: stem + st","note":"Du lernst, du wohnst, du arbeitest"},{"rule":"er/sie/es: stem + t","note":"Er lernt, sie wohnt, es arbeitet"},{"rule":"wir: stem + en","note":"Wir lernen, wir wohnen, wir arbeiten"},{"rule":"ihr: stem + t","note":"Ihr lernt, ihr wohnt, ihr arbeitet"},{"rule":"sie/Sie: stem + en","note":"Sie lernen, Sie wohnen"}]', '[{"german":"Ich lerne Deutsch.","arabic":"أنا أتعلم الألمانية.","english":"I am learning German."},{"german":"Du wohnst in Berlin.","arabic":"أنت تسكن في برلين.","english":"You live in Berlin."},{"german":"Er arbeitet bei Siemens.","arabic":"هو يعمل في سيمنز.","english":"He works at Siemens."}]', '[{"mistake":"Ich lernen Deutsch","correction":"Ich lerne Deutsch","explanation":"After \"ich\" we use the stem + e, not the infinitive."},{"mistake":"Er lerne Deutsch","correction":"Er lernt Deutsch","explanation":"After \"er/sie/es\" we add -t, not -e."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000659845b2', 'multiple_choice', 'What does "Hallo" mean?', '["The","A","This","That"]', 'The', 'This is a basic vocabulary item.', 1, 1),
  ('00000000-0000-4000-a000-0000659845b2', 'fill_gap', 'Complete with the correct form.', '["Option 1","Option 2","Option 3"]', 'Option 1', 'Practice grammar in context.', 1, 2),
  ('00000000-0000-4000-a000-0000659845b2', 'translation', 'Translate: "I learn German."', '["Ich lerne Deutsch.","Ich lerne Englisch.","Ich lerne Spanisch."]', 'Ich lerne Deutsch.', 'Ich = I, lerne = learn/learning, Deutsch = German.', 2, 3),
  ('00000000-0000-4000-a000-0000659845b2', 'sentence_order', 'Order the sentence.', '[]', 'Ich lerne Deutsch.', 'Subject + verb + object in German.', 2, 4),
  ('00000000-0000-4000-a000-0000659845b2', 'matching', 'Match the words with their meanings.', '["Match pairs correctly"]', 'Correct pairs', 'Test your vocabulary knowledge.', 2, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-0000659845b2', 'multiple_choice', 'What is the main topic of this lesson?', '["Alphabet","Sports","Music","Travel"]', 'Alphabet', 1, 1),
  ('00000000-0000-4000-a000-0000659845b2', 'true_false', 'This lesson teaches vocabulary about Alphabet.', '["True","False"]', 'True', 1, 2),
  ('00000000-0000-4000-a000-0000659845b2', 'true_false', 'German word order is always the same as English.', '["True","False"]', 'False', 1, 3),
  ('00000000-0000-4000-a000-0000659845b2', 'multiple_choice', 'How do you say "please" in German?', '["Danke","Bitte","Tschüss","Hallo"]', 'Bitte', 1, 4),
  ('00000000-0000-4000-a000-0000659845b2', 'multiple_choice', 'Which article is feminine?', '["der","die","das","den"]', 'die', 1, 5),
  ('00000000-0000-4000-a000-0000659845b2', 'fill_blank', 'Ich ___ (to be) Student.', '["bin","bist","ist","sind"]', 'bin', 1, 6),
  ('00000000-0000-4000-a000-0000659845b2', 'multiple_choice', 'What is the correct word order?', '["Ich lerne Deutsch","Ich Deutsch lerne","Lerne ich Deutsch","Deutsch ich lerne"]', 'Ich lerne Deutsch', 1, 7),
  ('00000000-0000-4000-a000-0000659845b2', 'true_false', 'All German nouns are capitalized.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-0000659845b2', 'multiple_choice', 'How do you say "thank you" in German?', '["Bitte","Danke","Tschüss","Hallo"]', 'Danke', 1, 9),
  ('00000000-0000-4000-a000-0000659845b2', 'fill_blank', 'Wo ___ du? (to live)', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 1, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-0000659845b2', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Hallo! Erste Schritte', 'formal', false, 1),
  ('00000000-0000-4000-a000-0000659845b2', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Hallo! Erste Schritte', 'informal', false, 2),
  ('00000000-0000-4000-a000-0000659845b2', 'Bitte!', 'Please!', 'من فضلك!', 'Used in Hallo! Erste Schritte', 'neutral', false, 3),
  ('00000000-0000-4000-a000-0000659845b2', 'Danke!', 'Thanks!', 'شكراً!', 'Used in Hallo! Erste Schritte', 'neutral', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-0000659845b2', 'Hallo', 'Hello', 'Greeting', 'expression', 1),
  ('00000000-0000-4000-a000-0000659845b2', 'Danke', 'Thanks', 'Politeness', 'expression', 2),
  ('00000000-0000-4000-a000-0000659845b2', 'Bitte', 'Please', 'Politeness', 'expression', 3),
  ('00000000-0000-4000-a000-0000659845b2', 'Tschüss', 'Bye', 'Farewell', 'expression', 4);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-0000659845b2', 'Das Alphabet — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, duration_seconds, speaker_count, scenario) values
  ('00000000-0000-4000-a000-0000659845b2', 'Das Alphabet — Hörverständnis', '[Lehrerin]: Guten Morgen! Heute lernen wir Begrüßungen.

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

[Lehrerin]: ممتاز! إلى الغد!', 72, 2, 'Hallo! Erste Schritte');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-0000659845b2', 'Speaking: Das Alphabet', 'Practice talking about Alphabet. Answer questions and have a simple conversation.', 'Alphabet', ARRAY['Use full sentences','Speak clearly','Don''t worry about mistakes']::text[], ARRAY['Hallo','Guten Morgen','Guten Tag','Tschüss','der Name']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-0000659845b2', 'Writing: Das Alphabet', 'Write a short text about Alphabet. Use at least 5 vocabulary words from this lesson.', ARRAY['Start with a greeting','Use the vocabulary from this lesson','Check your grammar']::text[], ARRAY['Hallo','Guten Morgen','Guten Tag']::text[], '["Sentence structure","Vocabulary usage"]', 50, 150, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000659845b2', 'Das Alphabet — Roleplay', 'Alphabet', 'Student', 'Teacher', 'Practice conversation about Alphabet', 'Hallo! Lass uns über dieses Thema sprechen.', 'beginner', 1, ARRAY['Hallo','Guten Morgen','Guten Tag','Tschüss','der Name','wie','freuen','Willkommen']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000659845b2', 'Das Alphabet — Advanced Roleplay', 'Alphabet', 'Customer', 'Assistant', 'Extended conversation about Alphabet', 'Guten Tag! Wie kann ich Ihnen helfen?', 'beginner', 2, ARRAY['Hallo','Guten Morgen','Guten Tag','Tschüss','der Name','wie','freuen','Willkommen']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-0000659845b2', 'Das Alphabet — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Das Alphabet".', 'Creative practice for Alphabet', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-0000659845b2', 'Homework: Das Alphabet', 'Complete these tasks to reinforce "Das Alphabet".', 'mixed', '[{"description":"Review all vocabulary from this lesson"},{"description":"Write 5 sentences using the grammar structure"},{"description":"Practice the dialogue aloud"}]', 35, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-0000659845b2', 'In this lesson you learned about Alphabet. You practiced vocabulary related to greetings and grammar structure present_tense.', '["Mastered vocabulary about Alphabet","Applied present_tense correctly","Read and understood a text about Alphabet","Practiced speaking about Alphabet"]', '[{"title":"Das Alphabet Review","summary":"present_tense — the main grammar focus of this lesson."}]', ARRAY['Alphabet core vocabulary','greetings key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)','Verb is always in second position']::text[], ARRAY['Practice 15-20 minutes daily','Use new vocabulary in real sentences','Speak out loud to improve pronunciation']::text[]);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000659845b2', 'Pronunciation: German pronunciation basics', 'German is mostly phonetic. Pronounce each letter.

Common mistake for Arabic speakers: Pronouncing every letter as in English.', '[]', '[{"german":"ja","arabic":"","english":"","phonetic":"/jaː/"},{"german":"nein","arabic":"","english":"","phonetic":"/naɪn/"}]', '[]', 10);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000659845b2', 'translation', 'Translate to German: "This is a translation exercise."', '[]', 'Das ist eine Übersetzungsübung.', 'Use "das ist" for "this is"', 1, 40);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000659845b2', 'Culture: Alphabet in German-Speaking Countries', 'Learn how Alphabet is approached in German culture.

تعلم كيف يتم التعامل مع Alphabet في الثقافة الألمانية.', '["Tip: Be direct and polite","Tip: Use formal language with strangers","Tip: Respect punctuality"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000659845b2', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Common error for Arabic speakers","correction":"Correct version","explanation":"Explanation of the error"}]', 30);

  -- Lesson 3: Zahlen 1-20 (L-A1-01-03)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-0000659845b3', '00000000-0000-4000-a000-000039b4d35e', 'Zahlen 1-20', 'Learn numbers from 1 to 20, age, and phone numbers.', 'Numbers', 'vocabulary', '["Understand and use vocabulary related to Numbers","Apply present_tense correctly","Read and comprehend a text about Numbers","Listen and understand a dialogue about Numbers","Speak about Numbers in simple sentences","Write a short text about Numbers"]', 25, 3, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-0000659845b3', 'eins', 'واحد', 'one', NULL, NULL, 'numeral', 'Ich habe einen Bruder.', 'I have one brother.', 'A1', 1),
  ('00000000-0000-4000-a000-0000659845b3', 'zwei', 'اثنان', 'two', NULL, NULL, 'numeral', 'Wir haben zwei Katzen.', 'We have two cats.', 'A1', 2),
  ('00000000-0000-4000-a000-0000659845b3', 'drei', 'ثلاثة', 'three', NULL, NULL, 'numeral', 'Die Wohnung hat drei Zimmer.', 'The apartment has three rooms.', 'A1', 3),
  ('00000000-0000-4000-a000-0000659845b3', 'die Zahl', 'الرقم', 'number', 'die', 'die Zahlen', 'noun', 'Die Zahl 5 ist meine Glückszahl.', 'The number 5 is my lucky number.', 'A1', 4),
  ('00000000-0000-4000-a000-0000659845b3', 'zählen', 'يعد', 'to count', NULL, NULL, 'verb', 'Kannst du bis 100 zählen?', 'Can you count to 100?', 'A1', 5),
  ('00000000-0000-4000-a000-0000659845b3', 'Hallo', 'مرحباً', 'hello', NULL, NULL, 'interjection', 'Hallo, wie geht es dir?', 'Hello, how are you?', 'A1', 6),
  ('00000000-0000-4000-a000-0000659845b3', 'Guten Morgen', 'صباح الخير', 'good morning', NULL, NULL, 'phrase', 'Guten Morgen, Herr Müller.', 'Good morning, Mr. Müller.', 'A1', 7),
  ('00000000-0000-4000-a000-0000659845b3', 'Guten Tag', 'نهارك سعيد', 'good day', NULL, NULL, 'phrase', 'Guten Tag, Frau Schmidt.', 'Good day, Mrs. Schmidt.', 'A1', 8),
  ('00000000-0000-4000-a000-0000659845b3', 'Tschüss', 'مع السلامة', 'bye', NULL, NULL, 'interjection', 'Tschüss, bis morgen!', 'Bye, see you tomorrow!', 'A1', 9),
  ('00000000-0000-4000-a000-0000659845b3', 'der Name', 'الاسم', 'name', 'der', 'die Namen', 'noun', 'Mein Name ist Anna.', 'My name is Anna.', 'A1', 10),
  ('00000000-0000-4000-a000-0000659845b3', 'wie', 'كيف', 'how', NULL, NULL, 'adverb', 'Wie heißt du?', 'What is your name?', 'A1', 11),
  ('00000000-0000-4000-a000-0000659845b3', 'freuen', 'يسر', 'to be pleased', NULL, NULL, 'verb', 'Ich freue mich, dich kennenzulernen.', 'I am pleased to meet you.', 'A1', 12),
  ('00000000-0000-4000-a000-0000659845b3', 'Willkommen', 'أهلاً وسهلاً', 'welcome', NULL, NULL, 'interjection', 'Willkommen in Deutschland!', 'Welcome to Germany!', 'A1', 13),
  ('00000000-0000-4000-a000-0000659845b3', 'die Familie', 'العائلة', 'family', 'die', 'die Familien', 'noun', 'Meine Familie ist groß.', 'My family is big.', 'A1', 14),
  ('00000000-0000-4000-a000-0000659845b3', 'der Vater', 'الأب', 'father', 'der', 'die Väter', 'noun', 'Mein Vater ist Ingenieur.', 'My father is an engineer.', 'A1', 15),
  ('00000000-0000-4000-a000-0000659845b3', 'die Mutter', 'الأم', 'mother', 'die', 'die Mütter', 'noun', 'Meine Mutter kocht gut.', 'My mother cooks well.', 'A1', 16),
  ('00000000-0000-4000-a000-0000659845b3', 'der Bruder', 'الأخ', 'brother', 'der', 'die Brüder', 'noun', 'Mein Bruder ist 15 Jahre alt.', 'My brother is 15 years old.', 'A1', 17),
  ('00000000-0000-4000-a000-0000659845b3', 'die Schwester', 'الأخت', 'sister', 'die', 'die Schwestern', 'noun', 'Meine Schwester studiert Medizin.', 'My sister studies medicine.', 'A1', 18),
  ('00000000-0000-4000-a000-0000659845b3', 'die Geschwister', 'الإخوة', 'siblings', 'die', NULL, 'noun', 'Hast du Geschwister?', 'Do you have siblings?', 'A1', 19),
  ('00000000-0000-4000-a000-0000659845b3', 'der Sohn', 'الابن', 'son', 'der', 'die Söhne', 'noun', 'Wir haben einen Sohn.', 'We have a son.', 'A1', 20),
  ('00000000-0000-4000-a000-0000659845b3', 'die Tochter', 'الابنة', 'daughter', 'die', 'die Töchter', 'noun', 'Meine Tochter geht zur Schule.', 'My daughter goes to school.', 'A1', 21),
  ('00000000-0000-4000-a000-0000659845b3', 'die Großeltern', 'الأجداد', 'grandparents', 'die', NULL, 'noun', 'Meine Großeltern wohnen auf dem Land.', 'My grandparents live in the countryside.', 'A1', 22),
  ('00000000-0000-4000-a000-0000659845b3', 'verheiratet', 'متزوج', 'married', NULL, NULL, 'adjective', 'Meine Eltern sind verheiratet.', 'My parents are married.', 'A1', 23),
  ('00000000-0000-4000-a000-0000659845b3', 'das Brot', 'الخبز', 'bread', 'das', 'die Brote', 'noun', 'Ich kaufe ein Brot.', 'I buy a loaf of bread.', 'A1', 24),
  ('00000000-0000-4000-a000-0000659845b3', 'die Milch', 'الحليب', 'milk', 'die', NULL, 'noun', 'Die Milch ist frisch.', 'The milk is fresh.', 'A1', 25),
  ('00000000-0000-4000-a000-0000659845b3', 'der Käse', 'الجبن', 'cheese', 'der', NULL, 'noun', 'Der Käse schmeckt gut.', 'The cheese tastes good.', 'A1', 26),
  ('00000000-0000-4000-a000-0000659845b3', 'der Apfel', 'التفاح', 'apple', 'der', 'die Äpfel', 'noun', 'Der Apfel ist rot.', 'The apple is red.', 'A1', 27),
  ('00000000-0000-4000-a000-0000659845b3', 'das Ei', 'البيضة', 'egg', 'das', 'die Eier', 'noun', 'Ich esse ein Ei zum Frühstück.', 'I eat an egg for breakfast.', 'A1', 28),
  ('00000000-0000-4000-a000-0000659845b3', 'das Obst', 'الفاكهة', 'fruit', 'das', NULL, 'noun', 'Obst ist gesund.', 'Fruit is healthy.', 'A1', 29),
  ('00000000-0000-4000-a000-0000659845b3', 'das Gemüse', 'الخضروات', 'vegetables', 'das', NULL, 'noun', 'Ich kaufe Gemüse auf dem Markt.', 'I buy vegetables at the market.', 'A1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000659845b3', 'Präsens der regelmäßigen Verben (Present Tense) / المضارع للأفعال المنتظمة', 'In German, regular verbs follow a consistent pattern. The infinitive ends in -en. Remove the -en and add the personal endings: ich -e, du -st, er/sie/es -t, wir -en, ihr -t, sie/Sie -en. For most Arabic speakers, this is easier than Arabic verb conjugation because German has fewer forms.', '[{"rule":"ich: stem + e","note":"Ich lerne, ich wohne, ich arbeite"},{"rule":"du: stem + st","note":"Du lernst, du wohnst, du arbeitest"},{"rule":"er/sie/es: stem + t","note":"Er lernt, sie wohnt, es arbeitet"},{"rule":"wir: stem + en","note":"Wir lernen, wir wohnen, wir arbeiten"},{"rule":"ihr: stem + t","note":"Ihr lernt, ihr wohnt, ihr arbeitet"},{"rule":"sie/Sie: stem + en","note":"Sie lernen, Sie wohnen"}]', '[{"german":"Ich lerne Deutsch.","arabic":"أنا أتعلم الألمانية.","english":"I am learning German."},{"german":"Du wohnst in Berlin.","arabic":"أنت تسكن في برلين.","english":"You live in Berlin."},{"german":"Er arbeitet bei Siemens.","arabic":"هو يعمل في سيمنز.","english":"He works at Siemens."}]', '[{"mistake":"Ich lernen Deutsch","correction":"Ich lerne Deutsch","explanation":"After \"ich\" we use the stem + e, not the infinitive."},{"mistake":"Er lerne Deutsch","correction":"Er lernt Deutsch","explanation":"After \"er/sie/es\" we add -t, not -e."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000659845b3', 'multiple_choice', 'What does "eins" mean?', '["The","A","This","That"]', 'The', 'This is a basic vocabulary item.', 1, 1),
  ('00000000-0000-4000-a000-0000659845b3', 'fill_gap', 'Complete with the correct form.', '["Option 1","Option 2","Option 3"]', 'Option 1', 'Practice grammar in context.', 1, 2),
  ('00000000-0000-4000-a000-0000659845b3', 'translation', 'Translate: "I learn German."', '["Ich lerne Deutsch.","Ich lerne Englisch.","Ich lerne Spanisch."]', 'Ich lerne Deutsch.', 'Ich = I, lerne = learn/learning, Deutsch = German.', 2, 3),
  ('00000000-0000-4000-a000-0000659845b3', 'sentence_order', 'Order the sentence.', '[]', 'Ich lerne Deutsch.', 'Subject + verb + object in German.', 2, 4),
  ('00000000-0000-4000-a000-0000659845b3', 'matching', 'Match the words with their meanings.', '["Match pairs correctly"]', 'Correct pairs', 'Test your vocabulary knowledge.', 2, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-0000659845b3', 'multiple_choice', 'What is the main topic of this lesson?', '["Numbers","Sports","Music","Travel"]', 'Numbers', 1, 1),
  ('00000000-0000-4000-a000-0000659845b3', 'true_false', 'This lesson teaches vocabulary about Numbers.', '["True","False"]', 'True', 1, 2),
  ('00000000-0000-4000-a000-0000659845b3', 'true_false', 'German word order is always the same as English.', '["True","False"]', 'False', 1, 3),
  ('00000000-0000-4000-a000-0000659845b3', 'multiple_choice', 'How do you say "please" in German?', '["Danke","Bitte","Tschüss","Hallo"]', 'Bitte', 1, 4),
  ('00000000-0000-4000-a000-0000659845b3', 'multiple_choice', 'Which article is feminine?', '["der","die","das","den"]', 'die', 1, 5),
  ('00000000-0000-4000-a000-0000659845b3', 'fill_blank', 'Ich ___ (to be) Student.', '["bin","bist","ist","sind"]', 'bin', 1, 6),
  ('00000000-0000-4000-a000-0000659845b3', 'multiple_choice', 'What is the correct word order?', '["Ich lerne Deutsch","Ich Deutsch lerne","Lerne ich Deutsch","Deutsch ich lerne"]', 'Ich lerne Deutsch', 1, 7),
  ('00000000-0000-4000-a000-0000659845b3', 'true_false', 'All German nouns are capitalized.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-0000659845b3', 'multiple_choice', 'How do you say "thank you" in German?', '["Bitte","Danke","Tschüss","Hallo"]', 'Danke', 1, 9),
  ('00000000-0000-4000-a000-0000659845b3', 'fill_blank', 'Wo ___ du? (to live)', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 1, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-0000659845b3', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Hallo! Erste Schritte', 'formal', false, 1),
  ('00000000-0000-4000-a000-0000659845b3', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Hallo! Erste Schritte', 'informal', false, 2),
  ('00000000-0000-4000-a000-0000659845b3', 'Bitte!', 'Please!', 'من فضلك!', 'Used in Hallo! Erste Schritte', 'neutral', false, 3),
  ('00000000-0000-4000-a000-0000659845b3', 'Danke!', 'Thanks!', 'شكراً!', 'Used in Hallo! Erste Schritte', 'neutral', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-0000659845b3', 'Hallo', 'Hello', 'Greeting', 'expression', 1),
  ('00000000-0000-4000-a000-0000659845b3', 'Danke', 'Thanks', 'Politeness', 'expression', 2),
  ('00000000-0000-4000-a000-0000659845b3', 'Bitte', 'Please', 'Politeness', 'expression', 3),
  ('00000000-0000-4000-a000-0000659845b3', 'Tschüss', 'Bye', 'Farewell', 'expression', 4);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-0000659845b3', 'Zahlen 1-20 — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, duration_seconds, speaker_count, scenario) values
  ('00000000-0000-4000-a000-0000659845b3', 'Zahlen 1-20 — Hörverständnis', '[Lehrerin]: Guten Morgen! Heute lernen wir Begrüßungen.

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

[Lehrerin]: ممتاز! إلى الغد!', 72, 2, 'Hallo! Erste Schritte');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-0000659845b3', 'Speaking: Zahlen 1-20', 'Practice talking about Numbers. Answer questions and have a simple conversation.', 'Numbers', ARRAY['Use full sentences','Speak clearly','Don''t worry about mistakes']::text[], ARRAY['eins','zwei','drei','die Zahl','zählen']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-0000659845b3', 'Writing: Zahlen 1-20', 'Write a short text about Numbers. Use at least 5 vocabulary words from this lesson.', ARRAY['Start with a greeting','Use the vocabulary from this lesson','Check your grammar']::text[], ARRAY['eins','zwei','drei']::text[], '["Sentence structure","Vocabulary usage"]', 50, 150, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000659845b3', 'Zahlen 1-20 — Roleplay', 'Numbers', 'Student', 'Teacher', 'Practice conversation about Numbers', 'Hallo! Lass uns über dieses Thema sprechen.', 'beginner', 1, ARRAY['eins','zwei','drei','die Zahl','zählen','Hallo','Guten Morgen','Guten Tag']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000659845b3', 'Zahlen 1-20 — Advanced Roleplay', 'Numbers', 'Customer', 'Assistant', 'Extended conversation about Numbers', 'Guten Tag! Wie kann ich Ihnen helfen?', 'beginner', 2, ARRAY['eins','zwei','drei','die Zahl','zählen','Hallo','Guten Morgen','Guten Tag']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-0000659845b3', 'Zahlen 1-20 — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Zahlen 1-20".', 'Creative practice for Numbers', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-0000659845b3', 'Homework: Zahlen 1-20', 'Complete these tasks to reinforce "Zahlen 1-20".', 'mixed', '[{"description":"Review all vocabulary from this lesson"},{"description":"Write 5 sentences using the grammar structure"},{"description":"Practice the dialogue aloud"}]', 35, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-0000659845b3', 'In this lesson you learned about Numbers. You practiced vocabulary related to numbers and grammar structure present_tense.', '["Mastered vocabulary about Numbers","Applied present_tense correctly","Read and understood a text about Numbers","Practiced speaking about Numbers"]', '[{"title":"Zahlen 1-20 Review","summary":"present_tense — the main grammar focus of this lesson."}]', ARRAY['Numbers core vocabulary','numbers key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)','Verb is always in second position']::text[], ARRAY['Practice 15-20 minutes daily','Use new vocabulary in real sentences','Speak out loud to improve pronunciation']::text[]);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000659845b3', 'Pronunciation: German pronunciation basics', 'German is mostly phonetic. Pronounce each letter.

Common mistake for Arabic speakers: Pronouncing every letter as in English.', '[]', '[{"german":"ja","arabic":"","english":"","phonetic":"/jaː/"},{"german":"nein","arabic":"","english":"","phonetic":"/naɪn/"}]', '[]', 10);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000659845b3', 'translation', 'Translate to German: "This is a translation exercise."', '[]', 'Das ist eine Übersetzungsübung.', 'Use "das ist" for "this is"', 1, 40);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000659845b3', 'Culture: Numbers in German-Speaking Countries', 'Learn how Numbers is approached in German culture.

تعلم كيف يتم التعامل مع Numbers في الثقافة الألمانية.', '["Tip: Be direct and polite","Tip: Use formal language with strangers","Tip: Respect punctuality"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000659845b3', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Common error for Arabic speakers","correction":"Correct version","explanation":"Explanation of the error"}]', 30);

  -- Lesson 4: Zahlen 21-100 (L-A1-01-04)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-0000659845b4', '00000000-0000-4000-a000-000039b4d35e', 'Zahlen 21-100', 'Learn numbers 21-100, prices, and quantities.', 'Numbers', 'vocabulary', '["Understand and use vocabulary related to Numbers","Apply present_tense correctly","Read and comprehend a text about Numbers","Listen and understand a dialogue about Numbers","Speak about Numbers in simple sentences","Write a short text about Numbers"]', 25, 4, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-0000659845b4', 'eins', 'واحد', 'one', NULL, NULL, 'numeral', 'Ich habe einen Bruder.', 'I have one brother.', 'A1', 1),
  ('00000000-0000-4000-a000-0000659845b4', 'zwei', 'اثنان', 'two', NULL, NULL, 'numeral', 'Wir haben zwei Katzen.', 'We have two cats.', 'A1', 2),
  ('00000000-0000-4000-a000-0000659845b4', 'drei', 'ثلاثة', 'three', NULL, NULL, 'numeral', 'Die Wohnung hat drei Zimmer.', 'The apartment has three rooms.', 'A1', 3),
  ('00000000-0000-4000-a000-0000659845b4', 'die Zahl', 'الرقم', 'number', 'die', 'die Zahlen', 'noun', 'Die Zahl 5 ist meine Glückszahl.', 'The number 5 is my lucky number.', 'A1', 4),
  ('00000000-0000-4000-a000-0000659845b4', 'zählen', 'يعد', 'to count', NULL, NULL, 'verb', 'Kannst du bis 100 zählen?', 'Can you count to 100?', 'A1', 5),
  ('00000000-0000-4000-a000-0000659845b4', 'Hallo', 'مرحباً', 'hello', NULL, NULL, 'interjection', 'Hallo, wie geht es dir?', 'Hello, how are you?', 'A1', 6),
  ('00000000-0000-4000-a000-0000659845b4', 'Guten Morgen', 'صباح الخير', 'good morning', NULL, NULL, 'phrase', 'Guten Morgen, Herr Müller.', 'Good morning, Mr. Müller.', 'A1', 7),
  ('00000000-0000-4000-a000-0000659845b4', 'Guten Tag', 'نهارك سعيد', 'good day', NULL, NULL, 'phrase', 'Guten Tag, Frau Schmidt.', 'Good day, Mrs. Schmidt.', 'A1', 8),
  ('00000000-0000-4000-a000-0000659845b4', 'Tschüss', 'مع السلامة', 'bye', NULL, NULL, 'interjection', 'Tschüss, bis morgen!', 'Bye, see you tomorrow!', 'A1', 9),
  ('00000000-0000-4000-a000-0000659845b4', 'der Name', 'الاسم', 'name', 'der', 'die Namen', 'noun', 'Mein Name ist Anna.', 'My name is Anna.', 'A1', 10),
  ('00000000-0000-4000-a000-0000659845b4', 'wie', 'كيف', 'how', NULL, NULL, 'adverb', 'Wie heißt du?', 'What is your name?', 'A1', 11),
  ('00000000-0000-4000-a000-0000659845b4', 'freuen', 'يسر', 'to be pleased', NULL, NULL, 'verb', 'Ich freue mich, dich kennenzulernen.', 'I am pleased to meet you.', 'A1', 12),
  ('00000000-0000-4000-a000-0000659845b4', 'Willkommen', 'أهلاً وسهلاً', 'welcome', NULL, NULL, 'interjection', 'Willkommen in Deutschland!', 'Welcome to Germany!', 'A1', 13),
  ('00000000-0000-4000-a000-0000659845b4', 'die Familie', 'العائلة', 'family', 'die', 'die Familien', 'noun', 'Meine Familie ist groß.', 'My family is big.', 'A1', 14),
  ('00000000-0000-4000-a000-0000659845b4', 'der Vater', 'الأب', 'father', 'der', 'die Väter', 'noun', 'Mein Vater ist Ingenieur.', 'My father is an engineer.', 'A1', 15),
  ('00000000-0000-4000-a000-0000659845b4', 'die Mutter', 'الأم', 'mother', 'die', 'die Mütter', 'noun', 'Meine Mutter kocht gut.', 'My mother cooks well.', 'A1', 16),
  ('00000000-0000-4000-a000-0000659845b4', 'der Bruder', 'الأخ', 'brother', 'der', 'die Brüder', 'noun', 'Mein Bruder ist 15 Jahre alt.', 'My brother is 15 years old.', 'A1', 17),
  ('00000000-0000-4000-a000-0000659845b4', 'die Schwester', 'الأخت', 'sister', 'die', 'die Schwestern', 'noun', 'Meine Schwester studiert Medizin.', 'My sister studies medicine.', 'A1', 18),
  ('00000000-0000-4000-a000-0000659845b4', 'die Geschwister', 'الإخوة', 'siblings', 'die', NULL, 'noun', 'Hast du Geschwister?', 'Do you have siblings?', 'A1', 19),
  ('00000000-0000-4000-a000-0000659845b4', 'der Sohn', 'الابن', 'son', 'der', 'die Söhne', 'noun', 'Wir haben einen Sohn.', 'We have a son.', 'A1', 20),
  ('00000000-0000-4000-a000-0000659845b4', 'die Tochter', 'الابنة', 'daughter', 'die', 'die Töchter', 'noun', 'Meine Tochter geht zur Schule.', 'My daughter goes to school.', 'A1', 21),
  ('00000000-0000-4000-a000-0000659845b4', 'die Großeltern', 'الأجداد', 'grandparents', 'die', NULL, 'noun', 'Meine Großeltern wohnen auf dem Land.', 'My grandparents live in the countryside.', 'A1', 22),
  ('00000000-0000-4000-a000-0000659845b4', 'verheiratet', 'متزوج', 'married', NULL, NULL, 'adjective', 'Meine Eltern sind verheiratet.', 'My parents are married.', 'A1', 23),
  ('00000000-0000-4000-a000-0000659845b4', 'das Brot', 'الخبز', 'bread', 'das', 'die Brote', 'noun', 'Ich kaufe ein Brot.', 'I buy a loaf of bread.', 'A1', 24),
  ('00000000-0000-4000-a000-0000659845b4', 'die Milch', 'الحليب', 'milk', 'die', NULL, 'noun', 'Die Milch ist frisch.', 'The milk is fresh.', 'A1', 25),
  ('00000000-0000-4000-a000-0000659845b4', 'der Käse', 'الجبن', 'cheese', 'der', NULL, 'noun', 'Der Käse schmeckt gut.', 'The cheese tastes good.', 'A1', 26),
  ('00000000-0000-4000-a000-0000659845b4', 'der Apfel', 'التفاح', 'apple', 'der', 'die Äpfel', 'noun', 'Der Apfel ist rot.', 'The apple is red.', 'A1', 27),
  ('00000000-0000-4000-a000-0000659845b4', 'das Ei', 'البيضة', 'egg', 'das', 'die Eier', 'noun', 'Ich esse ein Ei zum Frühstück.', 'I eat an egg for breakfast.', 'A1', 28),
  ('00000000-0000-4000-a000-0000659845b4', 'das Obst', 'الفاكهة', 'fruit', 'das', NULL, 'noun', 'Obst ist gesund.', 'Fruit is healthy.', 'A1', 29),
  ('00000000-0000-4000-a000-0000659845b4', 'das Gemüse', 'الخضروات', 'vegetables', 'das', NULL, 'noun', 'Ich kaufe Gemüse auf dem Markt.', 'I buy vegetables at the market.', 'A1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000659845b4', 'Präsens der regelmäßigen Verben (Present Tense) / المضارع للأفعال المنتظمة', 'In German, regular verbs follow a consistent pattern. The infinitive ends in -en. Remove the -en and add the personal endings: ich -e, du -st, er/sie/es -t, wir -en, ihr -t, sie/Sie -en. For most Arabic speakers, this is easier than Arabic verb conjugation because German has fewer forms.', '[{"rule":"ich: stem + e","note":"Ich lerne, ich wohne, ich arbeite"},{"rule":"du: stem + st","note":"Du lernst, du wohnst, du arbeitest"},{"rule":"er/sie/es: stem + t","note":"Er lernt, sie wohnt, es arbeitet"},{"rule":"wir: stem + en","note":"Wir lernen, wir wohnen, wir arbeiten"},{"rule":"ihr: stem + t","note":"Ihr lernt, ihr wohnt, ihr arbeitet"},{"rule":"sie/Sie: stem + en","note":"Sie lernen, Sie wohnen"}]', '[{"german":"Ich lerne Deutsch.","arabic":"أنا أتعلم الألمانية.","english":"I am learning German."},{"german":"Du wohnst in Berlin.","arabic":"أنت تسكن في برلين.","english":"You live in Berlin."},{"german":"Er arbeitet bei Siemens.","arabic":"هو يعمل في سيمنز.","english":"He works at Siemens."}]', '[{"mistake":"Ich lernen Deutsch","correction":"Ich lerne Deutsch","explanation":"After \"ich\" we use the stem + e, not the infinitive."},{"mistake":"Er lerne Deutsch","correction":"Er lernt Deutsch","explanation":"After \"er/sie/es\" we add -t, not -e."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000659845b4', 'multiple_choice', 'What does "eins" mean?', '["The","A","This","That"]', 'The', 'This is a basic vocabulary item.', 1, 1),
  ('00000000-0000-4000-a000-0000659845b4', 'fill_gap', 'Complete with the correct form.', '["Option 1","Option 2","Option 3"]', 'Option 1', 'Practice grammar in context.', 1, 2),
  ('00000000-0000-4000-a000-0000659845b4', 'translation', 'Translate: "I learn German."', '["Ich lerne Deutsch.","Ich lerne Englisch.","Ich lerne Spanisch."]', 'Ich lerne Deutsch.', 'Ich = I, lerne = learn/learning, Deutsch = German.', 2, 3),
  ('00000000-0000-4000-a000-0000659845b4', 'sentence_order', 'Order the sentence.', '[]', 'Ich lerne Deutsch.', 'Subject + verb + object in German.', 2, 4),
  ('00000000-0000-4000-a000-0000659845b4', 'matching', 'Match the words with their meanings.', '["Match pairs correctly"]', 'Correct pairs', 'Test your vocabulary knowledge.', 2, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-0000659845b4', 'multiple_choice', 'What is the main topic of this lesson?', '["Numbers","Sports","Music","Travel"]', 'Numbers', 1, 1),
  ('00000000-0000-4000-a000-0000659845b4', 'true_false', 'This lesson teaches vocabulary about Numbers.', '["True","False"]', 'True', 1, 2),
  ('00000000-0000-4000-a000-0000659845b4', 'true_false', 'German word order is always the same as English.', '["True","False"]', 'False', 1, 3),
  ('00000000-0000-4000-a000-0000659845b4', 'multiple_choice', 'How do you say "please" in German?', '["Danke","Bitte","Tschüss","Hallo"]', 'Bitte', 1, 4),
  ('00000000-0000-4000-a000-0000659845b4', 'multiple_choice', 'Which article is feminine?', '["der","die","das","den"]', 'die', 1, 5),
  ('00000000-0000-4000-a000-0000659845b4', 'fill_blank', 'Ich ___ (to be) Student.', '["bin","bist","ist","sind"]', 'bin', 1, 6),
  ('00000000-0000-4000-a000-0000659845b4', 'multiple_choice', 'What is the correct word order?', '["Ich lerne Deutsch","Ich Deutsch lerne","Lerne ich Deutsch","Deutsch ich lerne"]', 'Ich lerne Deutsch', 1, 7),
  ('00000000-0000-4000-a000-0000659845b4', 'true_false', 'All German nouns are capitalized.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-0000659845b4', 'multiple_choice', 'How do you say "thank you" in German?', '["Bitte","Danke","Tschüss","Hallo"]', 'Danke', 1, 9),
  ('00000000-0000-4000-a000-0000659845b4', 'fill_blank', 'Wo ___ du? (to live)', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 1, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-0000659845b4', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Hallo! Erste Schritte', 'formal', false, 1),
  ('00000000-0000-4000-a000-0000659845b4', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Hallo! Erste Schritte', 'informal', false, 2),
  ('00000000-0000-4000-a000-0000659845b4', 'Bitte!', 'Please!', 'من فضلك!', 'Used in Hallo! Erste Schritte', 'neutral', false, 3),
  ('00000000-0000-4000-a000-0000659845b4', 'Danke!', 'Thanks!', 'شكراً!', 'Used in Hallo! Erste Schritte', 'neutral', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-0000659845b4', 'Hallo', 'Hello', 'Greeting', 'expression', 1),
  ('00000000-0000-4000-a000-0000659845b4', 'Danke', 'Thanks', 'Politeness', 'expression', 2),
  ('00000000-0000-4000-a000-0000659845b4', 'Bitte', 'Please', 'Politeness', 'expression', 3),
  ('00000000-0000-4000-a000-0000659845b4', 'Tschüss', 'Bye', 'Farewell', 'expression', 4);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-0000659845b4', 'Zahlen 21-100 — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, duration_seconds, speaker_count, scenario) values
  ('00000000-0000-4000-a000-0000659845b4', 'Zahlen 21-100 — Hörverständnis', '[Lehrerin]: Guten Morgen! Heute lernen wir Begrüßungen.

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

[Lehrerin]: ممتاز! إلى الغد!', 72, 2, 'Hallo! Erste Schritte');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-0000659845b4', 'Speaking: Zahlen 21-100', 'Practice talking about Numbers. Answer questions and have a simple conversation.', 'Numbers', ARRAY['Use full sentences','Speak clearly','Don''t worry about mistakes']::text[], ARRAY['eins','zwei','drei','die Zahl','zählen']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-0000659845b4', 'Writing: Zahlen 21-100', 'Write a short text about Numbers. Use at least 5 vocabulary words from this lesson.', ARRAY['Start with a greeting','Use the vocabulary from this lesson','Check your grammar']::text[], ARRAY['eins','zwei','drei']::text[], '["Sentence structure","Vocabulary usage"]', 50, 150, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000659845b4', 'Zahlen 21-100 — Roleplay', 'Numbers', 'Student', 'Teacher', 'Practice conversation about Numbers', 'Hallo! Lass uns über dieses Thema sprechen.', 'beginner', 1, ARRAY['eins','zwei','drei','die Zahl','zählen','Hallo','Guten Morgen','Guten Tag']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000659845b4', 'Zahlen 21-100 — Advanced Roleplay', 'Numbers', 'Customer', 'Assistant', 'Extended conversation about Numbers', 'Guten Tag! Wie kann ich Ihnen helfen?', 'beginner', 2, ARRAY['eins','zwei','drei','die Zahl','zählen','Hallo','Guten Morgen','Guten Tag']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-0000659845b4', 'Zahlen 21-100 — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Zahlen 21-100".', 'Creative practice for Numbers', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-0000659845b4', 'Homework: Zahlen 21-100', 'Complete these tasks to reinforce "Zahlen 21-100".', 'mixed', '[{"description":"Review all vocabulary from this lesson"},{"description":"Write 5 sentences using the grammar structure"},{"description":"Practice the dialogue aloud"}]', 35, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-0000659845b4', 'In this lesson you learned about Numbers. You practiced vocabulary related to numbers and grammar structure present_tense.', '["Mastered vocabulary about Numbers","Applied present_tense correctly","Read and understood a text about Numbers","Practiced speaking about Numbers"]', '[{"title":"Zahlen 21-100 Review","summary":"present_tense — the main grammar focus of this lesson."}]', ARRAY['Numbers core vocabulary','numbers key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)','Verb is always in second position']::text[], ARRAY['Practice 15-20 minutes daily','Use new vocabulary in real sentences','Speak out loud to improve pronunciation']::text[]);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000659845b4', 'Pronunciation: German pronunciation basics', 'German is mostly phonetic. Pronounce each letter.

Common mistake for Arabic speakers: Pronouncing every letter as in English.', '[]', '[{"german":"ja","arabic":"","english":"","phonetic":"/jaː/"},{"german":"nein","arabic":"","english":"","phonetic":"/naɪn/"}]', '[]', 10);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000659845b4', 'translation', 'Translate to German: "This is a translation exercise."', '[]', 'Das ist eine Übersetzungsübung.', 'Use "das ist" for "this is"', 1, 40);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000659845b4', 'Culture: Numbers in German-Speaking Countries', 'Learn how Numbers is approached in German culture.

تعلم كيف يتم التعامل مع Numbers في الثقافة الألمانية.', '["Tip: Be direct and polite","Tip: Use formal language with strangers","Tip: Respect punctuality"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000659845b4', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Common error for Arabic speakers","correction":"Correct version","explanation":"Explanation of the error"}]', 30);

  -- Lesson 5: Länder und Nationalitäten (L-A1-01-05)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-0000659845b5', '00000000-0000-4000-a000-000039b4d35e', 'Länder und Nationalitäten', 'Learn country names and nationalities in German.', 'Countries & Nationalities', 'vocabulary', '["Understand and use vocabulary related to Countries & Nationalities","Apply present_tense correctly","Read and comprehend a text about Countries & Nationalities","Listen and understand a dialogue about Countries & Nationalities","Speak about Countries & Nationalities in simple sentences","Write a short text about Countries & Nationalities"]', 30, 5, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-0000659845b5', 'Hallo', 'مرحباً', 'hello', NULL, NULL, 'interjection', 'Hallo, wie geht es dir?', 'Hello, how are you?', 'A1', 1),
  ('00000000-0000-4000-a000-0000659845b5', 'Guten Morgen', 'صباح الخير', 'good morning', NULL, NULL, 'phrase', 'Guten Morgen, Herr Müller.', 'Good morning, Mr. Müller.', 'A1', 2),
  ('00000000-0000-4000-a000-0000659845b5', 'Guten Tag', 'نهارك سعيد', 'good day', NULL, NULL, 'phrase', 'Guten Tag, Frau Schmidt.', 'Good day, Mrs. Schmidt.', 'A1', 3),
  ('00000000-0000-4000-a000-0000659845b5', 'Tschüss', 'مع السلامة', 'bye', NULL, NULL, 'interjection', 'Tschüss, bis morgen!', 'Bye, see you tomorrow!', 'A1', 4),
  ('00000000-0000-4000-a000-0000659845b5', 'der Name', 'الاسم', 'name', 'der', 'die Namen', 'noun', 'Mein Name ist Anna.', 'My name is Anna.', 'A1', 5),
  ('00000000-0000-4000-a000-0000659845b5', 'wie', 'كيف', 'how', NULL, NULL, 'adverb', 'Wie heißt du?', 'What is your name?', 'A1', 6),
  ('00000000-0000-4000-a000-0000659845b5', 'freuen', 'يسر', 'to be pleased', NULL, NULL, 'verb', 'Ich freue mich, dich kennenzulernen.', 'I am pleased to meet you.', 'A1', 7),
  ('00000000-0000-4000-a000-0000659845b5', 'Willkommen', 'أهلاً وسهلاً', 'welcome', NULL, NULL, 'interjection', 'Willkommen in Deutschland!', 'Welcome to Germany!', 'A1', 8),
  ('00000000-0000-4000-a000-0000659845b5', 'die Familie', 'العائلة', 'family', 'die', 'die Familien', 'noun', 'Meine Familie ist groß.', 'My family is big.', 'A1', 9),
  ('00000000-0000-4000-a000-0000659845b5', 'der Vater', 'الأب', 'father', 'der', 'die Väter', 'noun', 'Mein Vater ist Ingenieur.', 'My father is an engineer.', 'A1', 10),
  ('00000000-0000-4000-a000-0000659845b5', 'die Mutter', 'الأم', 'mother', 'die', 'die Mütter', 'noun', 'Meine Mutter kocht gut.', 'My mother cooks well.', 'A1', 11),
  ('00000000-0000-4000-a000-0000659845b5', 'der Bruder', 'الأخ', 'brother', 'der', 'die Brüder', 'noun', 'Mein Bruder ist 15 Jahre alt.', 'My brother is 15 years old.', 'A1', 12),
  ('00000000-0000-4000-a000-0000659845b5', 'die Schwester', 'الأخت', 'sister', 'die', 'die Schwestern', 'noun', 'Meine Schwester studiert Medizin.', 'My sister studies medicine.', 'A1', 13),
  ('00000000-0000-4000-a000-0000659845b5', 'die Geschwister', 'الإخوة', 'siblings', 'die', NULL, 'noun', 'Hast du Geschwister?', 'Do you have siblings?', 'A1', 14),
  ('00000000-0000-4000-a000-0000659845b5', 'der Sohn', 'الابن', 'son', 'der', 'die Söhne', 'noun', 'Wir haben einen Sohn.', 'We have a son.', 'A1', 15),
  ('00000000-0000-4000-a000-0000659845b5', 'die Tochter', 'الابنة', 'daughter', 'die', 'die Töchter', 'noun', 'Meine Tochter geht zur Schule.', 'My daughter goes to school.', 'A1', 16),
  ('00000000-0000-4000-a000-0000659845b5', 'die Großeltern', 'الأجداد', 'grandparents', 'die', NULL, 'noun', 'Meine Großeltern wohnen auf dem Land.', 'My grandparents live in the countryside.', 'A1', 17),
  ('00000000-0000-4000-a000-0000659845b5', 'verheiratet', 'متزوج', 'married', NULL, NULL, 'adjective', 'Meine Eltern sind verheiratet.', 'My parents are married.', 'A1', 18),
  ('00000000-0000-4000-a000-0000659845b5', 'das Brot', 'الخبز', 'bread', 'das', 'die Brote', 'noun', 'Ich kaufe ein Brot.', 'I buy a loaf of bread.', 'A1', 19),
  ('00000000-0000-4000-a000-0000659845b5', 'die Milch', 'الحليب', 'milk', 'die', NULL, 'noun', 'Die Milch ist frisch.', 'The milk is fresh.', 'A1', 20),
  ('00000000-0000-4000-a000-0000659845b5', 'der Käse', 'الجبن', 'cheese', 'der', NULL, 'noun', 'Der Käse schmeckt gut.', 'The cheese tastes good.', 'A1', 21),
  ('00000000-0000-4000-a000-0000659845b5', 'der Apfel', 'التفاح', 'apple', 'der', 'die Äpfel', 'noun', 'Der Apfel ist rot.', 'The apple is red.', 'A1', 22),
  ('00000000-0000-4000-a000-0000659845b5', 'das Ei', 'البيضة', 'egg', 'das', 'die Eier', 'noun', 'Ich esse ein Ei zum Frühstück.', 'I eat an egg for breakfast.', 'A1', 23),
  ('00000000-0000-4000-a000-0000659845b5', 'das Obst', 'الفاكهة', 'fruit', 'das', NULL, 'noun', 'Obst ist gesund.', 'Fruit is healthy.', 'A1', 24),
  ('00000000-0000-4000-a000-0000659845b5', 'das Gemüse', 'الخضروات', 'vegetables', 'das', NULL, 'noun', 'Ich kaufe Gemüse auf dem Markt.', 'I buy vegetables at the market.', 'A1', 25),
  ('00000000-0000-4000-a000-0000659845b5', 'kochen', 'يطبخ', 'to cook', NULL, NULL, 'verb', 'Meine Mutter kocht gut.', 'My mother cooks well.', 'A1', 26),
  ('00000000-0000-4000-a000-0000659845b5', 'der Fisch', 'السمك', 'fish', 'der', 'die Fische', 'noun', 'Der Fisch ist frisch.', 'The fish is fresh.', 'A1', 27),
  ('00000000-0000-4000-a000-0000659845b5', 'das Fleisch', 'اللحم', 'meat', 'das', NULL, 'noun', 'Ich esse nicht viel Fleisch.', 'I do not eat much meat.', 'A1', 28),
  ('00000000-0000-4000-a000-0000659845b5', 'das Haus', 'البيت', 'house', 'das', 'die Häuser', 'noun', 'Das Haus ist groß.', 'The house is big.', 'A1', 29),
  ('00000000-0000-4000-a000-0000659845b5', 'die Wohnung', 'الشقة', 'apartment', 'die', 'die Wohnungen', 'noun', 'Meine Wohnung hat drei Zimmer.', 'My apartment has three rooms.', 'A1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000659845b5', 'Präsens der regelmäßigen Verben (Present Tense) / المضارع للأفعال المنتظمة', 'In German, regular verbs follow a consistent pattern. The infinitive ends in -en. Remove the -en and add the personal endings: ich -e, du -st, er/sie/es -t, wir -en, ihr -t, sie/Sie -en. For most Arabic speakers, this is easier than Arabic verb conjugation because German has fewer forms.', '[{"rule":"ich: stem + e","note":"Ich lerne, ich wohne, ich arbeite"},{"rule":"du: stem + st","note":"Du lernst, du wohnst, du arbeitest"},{"rule":"er/sie/es: stem + t","note":"Er lernt, sie wohnt, es arbeitet"},{"rule":"wir: stem + en","note":"Wir lernen, wir wohnen, wir arbeiten"},{"rule":"ihr: stem + t","note":"Ihr lernt, ihr wohnt, ihr arbeitet"},{"rule":"sie/Sie: stem + en","note":"Sie lernen, Sie wohnen"}]', '[{"german":"Ich lerne Deutsch.","arabic":"أنا أتعلم الألمانية.","english":"I am learning German."},{"german":"Du wohnst in Berlin.","arabic":"أنت تسكن في برلين.","english":"You live in Berlin."},{"german":"Er arbeitet bei Siemens.","arabic":"هو يعمل في سيمنز.","english":"He works at Siemens."}]', '[{"mistake":"Ich lernen Deutsch","correction":"Ich lerne Deutsch","explanation":"After \"ich\" we use the stem + e, not the infinitive."},{"mistake":"Er lerne Deutsch","correction":"Er lernt Deutsch","explanation":"After \"er/sie/es\" we add -t, not -e."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000659845b5', 'multiple_choice', 'What does "Hallo" mean?', '["The","A","This","That"]', 'The', 'This is a basic vocabulary item.', 1, 1),
  ('00000000-0000-4000-a000-0000659845b5', 'fill_gap', 'Complete with the correct form.', '["Option 1","Option 2","Option 3"]', 'Option 1', 'Practice grammar in context.', 1, 2),
  ('00000000-0000-4000-a000-0000659845b5', 'translation', 'Translate: "I learn German."', '["Ich lerne Deutsch.","Ich lerne Englisch.","Ich lerne Spanisch."]', 'Ich lerne Deutsch.', 'Ich = I, lerne = learn/learning, Deutsch = German.', 2, 3),
  ('00000000-0000-4000-a000-0000659845b5', 'sentence_order', 'Order the sentence.', '[]', 'Ich lerne Deutsch.', 'Subject + verb + object in German.', 2, 4),
  ('00000000-0000-4000-a000-0000659845b5', 'matching', 'Match the words with their meanings.', '["Match pairs correctly"]', 'Correct pairs', 'Test your vocabulary knowledge.', 2, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-0000659845b5', 'multiple_choice', 'What is the main topic of this lesson?', '["Countries & Nationalities","Sports","Music","Travel"]', 'Countries & Nationalities', 1, 1),
  ('00000000-0000-4000-a000-0000659845b5', 'true_false', 'This lesson teaches vocabulary about Countries & Nationalities.', '["True","False"]', 'True', 1, 2),
  ('00000000-0000-4000-a000-0000659845b5', 'true_false', 'German word order is always the same as English.', '["True","False"]', 'False', 1, 3),
  ('00000000-0000-4000-a000-0000659845b5', 'multiple_choice', 'How do you say "please" in German?', '["Danke","Bitte","Tschüss","Hallo"]', 'Bitte', 1, 4),
  ('00000000-0000-4000-a000-0000659845b5', 'multiple_choice', 'Which article is feminine?', '["der","die","das","den"]', 'die', 1, 5),
  ('00000000-0000-4000-a000-0000659845b5', 'fill_blank', 'Ich ___ (to be) Student.', '["bin","bist","ist","sind"]', 'bin', 1, 6),
  ('00000000-0000-4000-a000-0000659845b5', 'multiple_choice', 'What is the correct word order?', '["Ich lerne Deutsch","Ich Deutsch lerne","Lerne ich Deutsch","Deutsch ich lerne"]', 'Ich lerne Deutsch', 1, 7),
  ('00000000-0000-4000-a000-0000659845b5', 'true_false', 'All German nouns are capitalized.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-0000659845b5', 'multiple_choice', 'How do you say "thank you" in German?', '["Bitte","Danke","Tschüss","Hallo"]', 'Danke', 1, 9),
  ('00000000-0000-4000-a000-0000659845b5', 'fill_blank', 'Wo ___ du? (to live)', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 1, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-0000659845b5', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Hallo! Erste Schritte', 'formal', false, 1),
  ('00000000-0000-4000-a000-0000659845b5', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Hallo! Erste Schritte', 'informal', false, 2),
  ('00000000-0000-4000-a000-0000659845b5', 'Bitte!', 'Please!', 'من فضلك!', 'Used in Hallo! Erste Schritte', 'neutral', false, 3),
  ('00000000-0000-4000-a000-0000659845b5', 'Danke!', 'Thanks!', 'شكراً!', 'Used in Hallo! Erste Schritte', 'neutral', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-0000659845b5', 'Hallo', 'Hello', 'Greeting', 'expression', 1),
  ('00000000-0000-4000-a000-0000659845b5', 'Danke', 'Thanks', 'Politeness', 'expression', 2),
  ('00000000-0000-4000-a000-0000659845b5', 'Bitte', 'Please', 'Politeness', 'expression', 3),
  ('00000000-0000-4000-a000-0000659845b5', 'Tschüss', 'Bye', 'Farewell', 'expression', 4);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-0000659845b5', 'Länder und Nationalitäten — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, duration_seconds, speaker_count, scenario) values
  ('00000000-0000-4000-a000-0000659845b5', 'Länder und Nationalitäten — Hörverständnis', '[Lehrerin]: Guten Morgen! Heute lernen wir Begrüßungen.

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

[Lehrerin]: ممتاز! إلى الغد!', 72, 2, 'Hallo! Erste Schritte');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-0000659845b5', 'Speaking: Länder und Nationalitäten', 'Practice talking about Countries & Nationalities. Answer questions and have a simple conversation.', 'Countries & Nationalities', ARRAY['Use full sentences','Speak clearly','Don''t worry about mistakes']::text[], ARRAY['Hallo','Guten Morgen','Guten Tag','Tschüss','der Name']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-0000659845b5', 'Writing: Länder und Nationalitäten', 'Write a short text about Countries & Nationalities. Use at least 5 vocabulary words from this lesson.', ARRAY['Start with a greeting','Use the vocabulary from this lesson','Check your grammar']::text[], ARRAY['Hallo','Guten Morgen','Guten Tag']::text[], '["Sentence structure","Vocabulary usage"]', 50, 150, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000659845b5', 'Länder und Nationalitäten — Roleplay', 'Countries & Nationalities', 'Student', 'Teacher', 'Practice conversation about Countries & Nationalities', 'Hallo! Lass uns über dieses Thema sprechen.', 'beginner', 1, ARRAY['Hallo','Guten Morgen','Guten Tag','Tschüss','der Name','wie','freuen','Willkommen']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000659845b5', 'Länder und Nationalitäten — Advanced Roleplay', 'Countries & Nationalities', 'Customer', 'Assistant', 'Extended conversation about Countries & Nationalities', 'Guten Tag! Wie kann ich Ihnen helfen?', 'beginner', 2, ARRAY['Hallo','Guten Morgen','Guten Tag','Tschüss','der Name','wie','freuen','Willkommen']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-0000659845b5', 'Länder und Nationalitäten — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Länder und Nationalitäten".', 'Creative practice for Countries & Nationalities', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-0000659845b5', 'Homework: Länder und Nationalitäten', 'Complete these tasks to reinforce "Länder und Nationalitäten".', 'mixed', '[{"description":"Review all vocabulary from this lesson"},{"description":"Write 5 sentences using the grammar structure"},{"description":"Practice the dialogue aloud"}]', 35, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-0000659845b5', 'In this lesson you learned about Countries & Nationalities. You practiced vocabulary related to greetings and grammar structure present_tense.', '["Mastered vocabulary about Countries & Nationalities","Applied present_tense correctly","Read and understood a text about Countries & Nationalities","Practiced speaking about Countries & Nationalities"]', '[{"title":"Länder und Nationalitäten Review","summary":"present_tense — the main grammar focus of this lesson."}]', ARRAY['Countries & Nationalities core vocabulary','greetings key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)','Verb is always in second position']::text[], ARRAY['Practice 15-20 minutes daily','Use new vocabulary in real sentences','Speak out loud to improve pronunciation']::text[]);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000659845b5', 'Pronunciation: German pronunciation basics', 'German is mostly phonetic. Pronounce each letter.

Common mistake for Arabic speakers: Pronouncing every letter as in English.', '[]', '[{"german":"ja","arabic":"","english":"","phonetic":"/jaː/"},{"german":"nein","arabic":"","english":"","phonetic":"/naɪn/"}]', '[]', 10);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000659845b5', 'translation', 'Translate to German: "This is a translation exercise."', '[]', 'Das ist eine Übersetzungsübung.', 'Use "das ist" for "this is"', 1, 40);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000659845b5', 'Culture: Countries & Nationalities in German-Speaking Countries', 'Learn how Countries & Nationalities is approached in German culture.

تعلم كيف يتم التعامل مع Countries & Nationalities في الثقافة الألمانية.', '["Tip: Be direct and polite","Tip: Use formal language with strangers","Tip: Respect punctuality"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000659845b5', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Common error for Arabic speakers","correction":"Correct version","explanation":"Explanation of the error"}]', 30);

  -- Lesson 6: Erste Gespräche führen (L-A1-01-06)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-0000659845b6', '00000000-0000-4000-a000-000039b4d35e', 'Erste Gespräche führen', 'Combine greetings, introductions, and basic questions in simple conversations.', 'Basic Conversations', 'conversation', '["Understand and use vocabulary related to Basic Conversations","Apply present_tense correctly","Read and comprehend a text about Basic Conversations","Listen and understand a dialogue about Basic Conversations","Speak about Basic Conversations in simple sentences","Write a short text about Basic Conversations"]', 35, 6, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-0000659845b6', 'Hallo', 'مرحباً', 'hello', NULL, NULL, 'interjection', 'Hallo, wie geht es dir?', 'Hello, how are you?', 'A1', 1),
  ('00000000-0000-4000-a000-0000659845b6', 'Guten Morgen', 'صباح الخير', 'good morning', NULL, NULL, 'phrase', 'Guten Morgen, Herr Müller.', 'Good morning, Mr. Müller.', 'A1', 2),
  ('00000000-0000-4000-a000-0000659845b6', 'Guten Tag', 'نهارك سعيد', 'good day', NULL, NULL, 'phrase', 'Guten Tag, Frau Schmidt.', 'Good day, Mrs. Schmidt.', 'A1', 3),
  ('00000000-0000-4000-a000-0000659845b6', 'Tschüss', 'مع السلامة', 'bye', NULL, NULL, 'interjection', 'Tschüss, bis morgen!', 'Bye, see you tomorrow!', 'A1', 4),
  ('00000000-0000-4000-a000-0000659845b6', 'der Name', 'الاسم', 'name', 'der', 'die Namen', 'noun', 'Mein Name ist Anna.', 'My name is Anna.', 'A1', 5),
  ('00000000-0000-4000-a000-0000659845b6', 'wie', 'كيف', 'how', NULL, NULL, 'adverb', 'Wie heißt du?', 'What is your name?', 'A1', 6),
  ('00000000-0000-4000-a000-0000659845b6', 'freuen', 'يسر', 'to be pleased', NULL, NULL, 'verb', 'Ich freue mich, dich kennenzulernen.', 'I am pleased to meet you.', 'A1', 7),
  ('00000000-0000-4000-a000-0000659845b6', 'Willkommen', 'أهلاً وسهلاً', 'welcome', NULL, NULL, 'interjection', 'Willkommen in Deutschland!', 'Welcome to Germany!', 'A1', 8),
  ('00000000-0000-4000-a000-0000659845b6', 'die Familie', 'العائلة', 'family', 'die', 'die Familien', 'noun', 'Meine Familie ist groß.', 'My family is big.', 'A1', 9),
  ('00000000-0000-4000-a000-0000659845b6', 'der Vater', 'الأب', 'father', 'der', 'die Väter', 'noun', 'Mein Vater ist Ingenieur.', 'My father is an engineer.', 'A1', 10),
  ('00000000-0000-4000-a000-0000659845b6', 'die Mutter', 'الأم', 'mother', 'die', 'die Mütter', 'noun', 'Meine Mutter kocht gut.', 'My mother cooks well.', 'A1', 11),
  ('00000000-0000-4000-a000-0000659845b6', 'der Bruder', 'الأخ', 'brother', 'der', 'die Brüder', 'noun', 'Mein Bruder ist 15 Jahre alt.', 'My brother is 15 years old.', 'A1', 12),
  ('00000000-0000-4000-a000-0000659845b6', 'die Schwester', 'الأخت', 'sister', 'die', 'die Schwestern', 'noun', 'Meine Schwester studiert Medizin.', 'My sister studies medicine.', 'A1', 13),
  ('00000000-0000-4000-a000-0000659845b6', 'die Geschwister', 'الإخوة', 'siblings', 'die', NULL, 'noun', 'Hast du Geschwister?', 'Do you have siblings?', 'A1', 14),
  ('00000000-0000-4000-a000-0000659845b6', 'der Sohn', 'الابن', 'son', 'der', 'die Söhne', 'noun', 'Wir haben einen Sohn.', 'We have a son.', 'A1', 15),
  ('00000000-0000-4000-a000-0000659845b6', 'die Tochter', 'الابنة', 'daughter', 'die', 'die Töchter', 'noun', 'Meine Tochter geht zur Schule.', 'My daughter goes to school.', 'A1', 16),
  ('00000000-0000-4000-a000-0000659845b6', 'die Großeltern', 'الأجداد', 'grandparents', 'die', NULL, 'noun', 'Meine Großeltern wohnen auf dem Land.', 'My grandparents live in the countryside.', 'A1', 17),
  ('00000000-0000-4000-a000-0000659845b6', 'verheiratet', 'متزوج', 'married', NULL, NULL, 'adjective', 'Meine Eltern sind verheiratet.', 'My parents are married.', 'A1', 18),
  ('00000000-0000-4000-a000-0000659845b6', 'das Brot', 'الخبز', 'bread', 'das', 'die Brote', 'noun', 'Ich kaufe ein Brot.', 'I buy a loaf of bread.', 'A1', 19),
  ('00000000-0000-4000-a000-0000659845b6', 'die Milch', 'الحليب', 'milk', 'die', NULL, 'noun', 'Die Milch ist frisch.', 'The milk is fresh.', 'A1', 20),
  ('00000000-0000-4000-a000-0000659845b6', 'der Käse', 'الجبن', 'cheese', 'der', NULL, 'noun', 'Der Käse schmeckt gut.', 'The cheese tastes good.', 'A1', 21),
  ('00000000-0000-4000-a000-0000659845b6', 'der Apfel', 'التفاح', 'apple', 'der', 'die Äpfel', 'noun', 'Der Apfel ist rot.', 'The apple is red.', 'A1', 22),
  ('00000000-0000-4000-a000-0000659845b6', 'das Ei', 'البيضة', 'egg', 'das', 'die Eier', 'noun', 'Ich esse ein Ei zum Frühstück.', 'I eat an egg for breakfast.', 'A1', 23),
  ('00000000-0000-4000-a000-0000659845b6', 'das Obst', 'الفاكهة', 'fruit', 'das', NULL, 'noun', 'Obst ist gesund.', 'Fruit is healthy.', 'A1', 24),
  ('00000000-0000-4000-a000-0000659845b6', 'das Gemüse', 'الخضروات', 'vegetables', 'das', NULL, 'noun', 'Ich kaufe Gemüse auf dem Markt.', 'I buy vegetables at the market.', 'A1', 25),
  ('00000000-0000-4000-a000-0000659845b6', 'kochen', 'يطبخ', 'to cook', NULL, NULL, 'verb', 'Meine Mutter kocht gut.', 'My mother cooks well.', 'A1', 26),
  ('00000000-0000-4000-a000-0000659845b6', 'der Fisch', 'السمك', 'fish', 'der', 'die Fische', 'noun', 'Der Fisch ist frisch.', 'The fish is fresh.', 'A1', 27),
  ('00000000-0000-4000-a000-0000659845b6', 'das Fleisch', 'اللحم', 'meat', 'das', NULL, 'noun', 'Ich esse nicht viel Fleisch.', 'I do not eat much meat.', 'A1', 28),
  ('00000000-0000-4000-a000-0000659845b6', 'das Haus', 'البيت', 'house', 'das', 'die Häuser', 'noun', 'Das Haus ist groß.', 'The house is big.', 'A1', 29),
  ('00000000-0000-4000-a000-0000659845b6', 'die Wohnung', 'الشقة', 'apartment', 'die', 'die Wohnungen', 'noun', 'Meine Wohnung hat drei Zimmer.', 'My apartment has three rooms.', 'A1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000659845b6', 'Präsens der regelmäßigen Verben (Present Tense) / المضارع للأفعال المنتظمة', 'In German, regular verbs follow a consistent pattern. The infinitive ends in -en. Remove the -en and add the personal endings: ich -e, du -st, er/sie/es -t, wir -en, ihr -t, sie/Sie -en. For most Arabic speakers, this is easier than Arabic verb conjugation because German has fewer forms.', '[{"rule":"ich: stem + e","note":"Ich lerne, ich wohne, ich arbeite"},{"rule":"du: stem + st","note":"Du lernst, du wohnst, du arbeitest"},{"rule":"er/sie/es: stem + t","note":"Er lernt, sie wohnt, es arbeitet"},{"rule":"wir: stem + en","note":"Wir lernen, wir wohnen, wir arbeiten"},{"rule":"ihr: stem + t","note":"Ihr lernt, ihr wohnt, ihr arbeitet"},{"rule":"sie/Sie: stem + en","note":"Sie lernen, Sie wohnen"}]', '[{"german":"Ich lerne Deutsch.","arabic":"أنا أتعلم الألمانية.","english":"I am learning German."},{"german":"Du wohnst in Berlin.","arabic":"أنت تسكن في برلين.","english":"You live in Berlin."},{"german":"Er arbeitet bei Siemens.","arabic":"هو يعمل في سيمنز.","english":"He works at Siemens."}]', '[{"mistake":"Ich lernen Deutsch","correction":"Ich lerne Deutsch","explanation":"After \"ich\" we use the stem + e, not the infinitive."},{"mistake":"Er lerne Deutsch","correction":"Er lernt Deutsch","explanation":"After \"er/sie/es\" we add -t, not -e."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000659845b6', 'multiple_choice', 'What does "Hallo" mean?', '["The","A","This","That"]', 'The', 'This is a basic vocabulary item.', 1, 1),
  ('00000000-0000-4000-a000-0000659845b6', 'fill_gap', 'Complete with the correct form.', '["Option 1","Option 2","Option 3"]', 'Option 1', 'Practice grammar in context.', 1, 2),
  ('00000000-0000-4000-a000-0000659845b6', 'translation', 'Translate: "I learn German."', '["Ich lerne Deutsch.","Ich lerne Englisch.","Ich lerne Spanisch."]', 'Ich lerne Deutsch.', 'Ich = I, lerne = learn/learning, Deutsch = German.', 2, 3),
  ('00000000-0000-4000-a000-0000659845b6', 'sentence_order', 'Order the sentence.', '[]', 'Ich lerne Deutsch.', 'Subject + verb + object in German.', 2, 4),
  ('00000000-0000-4000-a000-0000659845b6', 'matching', 'Match the words with their meanings.', '["Match pairs correctly"]', 'Correct pairs', 'Test your vocabulary knowledge.', 2, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-0000659845b6', 'multiple_choice', 'What is the main topic of this lesson?', '["Basic Conversations","Sports","Music","Travel"]', 'Basic Conversations', 1, 1),
  ('00000000-0000-4000-a000-0000659845b6', 'true_false', 'This lesson teaches vocabulary about Basic Conversations.', '["True","False"]', 'True', 1, 2),
  ('00000000-0000-4000-a000-0000659845b6', 'true_false', 'German word order is always the same as English.', '["True","False"]', 'False', 1, 3),
  ('00000000-0000-4000-a000-0000659845b6', 'multiple_choice', 'How do you say "please" in German?', '["Danke","Bitte","Tschüss","Hallo"]', 'Bitte', 1, 4),
  ('00000000-0000-4000-a000-0000659845b6', 'multiple_choice', 'Which article is feminine?', '["der","die","das","den"]', 'die', 1, 5),
  ('00000000-0000-4000-a000-0000659845b6', 'fill_blank', 'Ich ___ (to be) Student.', '["bin","bist","ist","sind"]', 'bin', 1, 6),
  ('00000000-0000-4000-a000-0000659845b6', 'multiple_choice', 'What is the correct word order?', '["Ich lerne Deutsch","Ich Deutsch lerne","Lerne ich Deutsch","Deutsch ich lerne"]', 'Ich lerne Deutsch', 1, 7),
  ('00000000-0000-4000-a000-0000659845b6', 'true_false', 'All German nouns are capitalized.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-0000659845b6', 'multiple_choice', 'How do you say "thank you" in German?', '["Bitte","Danke","Tschüss","Hallo"]', 'Danke', 1, 9),
  ('00000000-0000-4000-a000-0000659845b6', 'fill_blank', 'Wo ___ du? (to live)', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 1, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-0000659845b6', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Hallo! Erste Schritte', 'formal', false, 1),
  ('00000000-0000-4000-a000-0000659845b6', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Hallo! Erste Schritte', 'informal', false, 2),
  ('00000000-0000-4000-a000-0000659845b6', 'Bitte!', 'Please!', 'من فضلك!', 'Used in Hallo! Erste Schritte', 'neutral', false, 3),
  ('00000000-0000-4000-a000-0000659845b6', 'Danke!', 'Thanks!', 'شكراً!', 'Used in Hallo! Erste Schritte', 'neutral', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-0000659845b6', 'Hallo', 'Hello', 'Greeting', 'expression', 1),
  ('00000000-0000-4000-a000-0000659845b6', 'Danke', 'Thanks', 'Politeness', 'expression', 2),
  ('00000000-0000-4000-a000-0000659845b6', 'Bitte', 'Please', 'Politeness', 'expression', 3),
  ('00000000-0000-4000-a000-0000659845b6', 'Tschüss', 'Bye', 'Farewell', 'expression', 4);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-0000659845b6', 'Erste Gespräche führen — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, duration_seconds, speaker_count, scenario) values
  ('00000000-0000-4000-a000-0000659845b6', 'Erste Gespräche führen — Hörverständnis', '[Lehrerin]: Guten Morgen! Heute lernen wir Begrüßungen.

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

[Lehrerin]: ممتاز! إلى الغد!', 72, 2, 'Hallo! Erste Schritte');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-0000659845b6', 'Speaking: Erste Gespräche führen', 'Practice talking about Basic Conversations. Answer questions and have a simple conversation.', 'Basic Conversations', ARRAY['Use full sentences','Speak clearly','Don''t worry about mistakes']::text[], ARRAY['Hallo','Guten Morgen','Guten Tag','Tschüss','der Name']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-0000659845b6', 'Writing: Erste Gespräche führen', 'Write a short text about Basic Conversations. Use at least 5 vocabulary words from this lesson.', ARRAY['Start with a greeting','Use the vocabulary from this lesson','Check your grammar']::text[], ARRAY['Hallo','Guten Morgen','Guten Tag']::text[], '["Sentence structure","Vocabulary usage"]', 50, 150, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000659845b6', 'Erste Gespräche führen — Roleplay', 'Basic Conversations', 'Student', 'Teacher', 'Practice conversation about Basic Conversations', 'Hallo! Lass uns über dieses Thema sprechen.', 'beginner', 1, ARRAY['Hallo','Guten Morgen','Guten Tag','Tschüss','der Name','wie','freuen','Willkommen']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000659845b6', 'Erste Gespräche führen — Advanced Roleplay', 'Basic Conversations', 'Customer', 'Assistant', 'Extended conversation about Basic Conversations', 'Guten Tag! Wie kann ich Ihnen helfen?', 'beginner', 2, ARRAY['Hallo','Guten Morgen','Guten Tag','Tschüss','der Name','wie','freuen','Willkommen']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-0000659845b6', 'Erste Gespräche führen — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Erste Gespräche führen".', 'Creative practice for Basic Conversations', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-0000659845b6', 'Homework: Erste Gespräche führen', 'Complete these tasks to reinforce "Erste Gespräche führen".', 'mixed', '[{"description":"Review all vocabulary from this lesson"},{"description":"Write 5 sentences using the grammar structure"},{"description":"Practice the dialogue aloud"}]', 35, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-0000659845b6', 'In this lesson you learned about Basic Conversations. You practiced vocabulary related to greetings and grammar structure present_tense.', '["Mastered vocabulary about Basic Conversations","Applied present_tense correctly","Read and understood a text about Basic Conversations","Practiced speaking about Basic Conversations"]', '[{"title":"Erste Gespräche führen Review","summary":"present_tense — the main grammar focus of this lesson."}]', ARRAY['Basic Conversations core vocabulary','greetings key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)','Verb is always in second position']::text[], ARRAY['Practice 15-20 minutes daily','Use new vocabulary in real sentences','Speak out loud to improve pronunciation']::text[]);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000659845b6', 'Pronunciation: German pronunciation basics', 'German is mostly phonetic. Pronounce each letter.

Common mistake for Arabic speakers: Pronouncing every letter as in English.', '[]', '[{"german":"ja","arabic":"","english":"","phonetic":"/jaː/"},{"german":"nein","arabic":"","english":"","phonetic":"/naɪn/"}]', '[]', 10);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000659845b6', 'translation', 'Translate to German: "This is a translation exercise."', '[]', 'Das ist eine Übersetzungsübung.', 'Use "das ist" for "this is"', 1, 40);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000659845b6', 'Culture: Basic Conversations in German-Speaking Countries', 'Learn how Basic Conversations is approached in German culture.

تعلم كيف يتم التعامل مع Basic Conversations في الثقافة الألمانية.', '["Tip: Be direct and polite","Tip: Use formal language with strangers","Tip: Respect punctuality"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000659845b6', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Common error for Arabic speakers","correction":"Correct version","explanation":"Explanation of the error"}]', 30);

  -- Module 2: Familie und Alltag
  insert into public.course_modules (id, level_id, title, description, objectives, order_index, estimated_hours, is_published)
  values ('00000000-0000-4000-a000-000039b4d35f', 'A1', 'Familie und Alltag', 'Talk about your family, describe your daily routine, and tell time.', '["Describe family members and relationships","Use possessive articles mein/dein","Conjugate regular verbs in present tense","Tell time and talk about daily schedules"]', 2, 5, true)
  on conflict (id) do nothing;

  -- Lesson 1: Die Familie (L-A1-02-01)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-00006598ba10', '00000000-0000-4000-a000-000039b4d35f', 'Die Familie', 'Learn family member vocabulary and possessive articles.', 'Family Members', 'vocabulary', '["Understand and use vocabulary related to Family Members","Apply possessive_articles correctly","Read and comprehend a text about Family Members","Listen and understand a dialogue about Family Members","Speak about Family Members in simple sentences","Write a short text about Family Members"]', 30, 1, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-00006598ba10', 'die Familie', 'العائلة', 'family', 'die', 'die Familien', 'noun', 'Meine Familie ist groß.', 'My family is big.', 'A1', 1),
  ('00000000-0000-4000-a000-00006598ba10', 'der Vater', 'الأب', 'father', 'der', 'die Väter', 'noun', 'Mein Vater ist Ingenieur.', 'My father is an engineer.', 'A1', 2),
  ('00000000-0000-4000-a000-00006598ba10', 'die Mutter', 'الأم', 'mother', 'die', 'die Mütter', 'noun', 'Meine Mutter kocht gut.', 'My mother cooks well.', 'A1', 3),
  ('00000000-0000-4000-a000-00006598ba10', 'der Bruder', 'الأخ', 'brother', 'der', 'die Brüder', 'noun', 'Mein Bruder ist 15 Jahre alt.', 'My brother is 15 years old.', 'A1', 4),
  ('00000000-0000-4000-a000-00006598ba10', 'die Schwester', 'الأخت', 'sister', 'die', 'die Schwestern', 'noun', 'Meine Schwester studiert Medizin.', 'My sister studies medicine.', 'A1', 5),
  ('00000000-0000-4000-a000-00006598ba10', 'die Geschwister', 'الإخوة', 'siblings', 'die', NULL, 'noun', 'Hast du Geschwister?', 'Do you have siblings?', 'A1', 6),
  ('00000000-0000-4000-a000-00006598ba10', 'der Sohn', 'الابن', 'son', 'der', 'die Söhne', 'noun', 'Wir haben einen Sohn.', 'We have a son.', 'A1', 7),
  ('00000000-0000-4000-a000-00006598ba10', 'die Tochter', 'الابنة', 'daughter', 'die', 'die Töchter', 'noun', 'Meine Tochter geht zur Schule.', 'My daughter goes to school.', 'A1', 8),
  ('00000000-0000-4000-a000-00006598ba10', 'die Großeltern', 'الأجداد', 'grandparents', 'die', NULL, 'noun', 'Meine Großeltern wohnen auf dem Land.', 'My grandparents live in the countryside.', 'A1', 9),
  ('00000000-0000-4000-a000-00006598ba10', 'verheiratet', 'متزوج', 'married', NULL, NULL, 'adjective', 'Meine Eltern sind verheiratet.', 'My parents are married.', 'A1', 10),
  ('00000000-0000-4000-a000-00006598ba10', 'Hallo', 'مرحباً', 'hello', NULL, NULL, 'interjection', 'Hallo, wie geht es dir?', 'Hello, how are you?', 'A1', 11),
  ('00000000-0000-4000-a000-00006598ba10', 'Guten Morgen', 'صباح الخير', 'good morning', NULL, NULL, 'phrase', 'Guten Morgen, Herr Müller.', 'Good morning, Mr. Müller.', 'A1', 12),
  ('00000000-0000-4000-a000-00006598ba10', 'Guten Tag', 'نهارك سعيد', 'good day', NULL, NULL, 'phrase', 'Guten Tag, Frau Schmidt.', 'Good day, Mrs. Schmidt.', 'A1', 13),
  ('00000000-0000-4000-a000-00006598ba10', 'Tschüss', 'مع السلامة', 'bye', NULL, NULL, 'interjection', 'Tschüss, bis morgen!', 'Bye, see you tomorrow!', 'A1', 14),
  ('00000000-0000-4000-a000-00006598ba10', 'der Name', 'الاسم', 'name', 'der', 'die Namen', 'noun', 'Mein Name ist Anna.', 'My name is Anna.', 'A1', 15),
  ('00000000-0000-4000-a000-00006598ba10', 'wie', 'كيف', 'how', NULL, NULL, 'adverb', 'Wie heißt du?', 'What is your name?', 'A1', 16),
  ('00000000-0000-4000-a000-00006598ba10', 'freuen', 'يسر', 'to be pleased', NULL, NULL, 'verb', 'Ich freue mich, dich kennenzulernen.', 'I am pleased to meet you.', 'A1', 17),
  ('00000000-0000-4000-a000-00006598ba10', 'Willkommen', 'أهلاً وسهلاً', 'welcome', NULL, NULL, 'interjection', 'Willkommen in Deutschland!', 'Welcome to Germany!', 'A1', 18),
  ('00000000-0000-4000-a000-00006598ba10', 'das Brot', 'الخبز', 'bread', 'das', 'die Brote', 'noun', 'Ich kaufe ein Brot.', 'I buy a loaf of bread.', 'A1', 19),
  ('00000000-0000-4000-a000-00006598ba10', 'die Milch', 'الحليب', 'milk', 'die', NULL, 'noun', 'Die Milch ist frisch.', 'The milk is fresh.', 'A1', 20),
  ('00000000-0000-4000-a000-00006598ba10', 'der Käse', 'الجبن', 'cheese', 'der', NULL, 'noun', 'Der Käse schmeckt gut.', 'The cheese tastes good.', 'A1', 21),
  ('00000000-0000-4000-a000-00006598ba10', 'der Apfel', 'التفاح', 'apple', 'der', 'die Äpfel', 'noun', 'Der Apfel ist rot.', 'The apple is red.', 'A1', 22),
  ('00000000-0000-4000-a000-00006598ba10', 'das Ei', 'البيضة', 'egg', 'das', 'die Eier', 'noun', 'Ich esse ein Ei zum Frühstück.', 'I eat an egg for breakfast.', 'A1', 23),
  ('00000000-0000-4000-a000-00006598ba10', 'das Obst', 'الفاكهة', 'fruit', 'das', NULL, 'noun', 'Obst ist gesund.', 'Fruit is healthy.', 'A1', 24),
  ('00000000-0000-4000-a000-00006598ba10', 'das Gemüse', 'الخضروات', 'vegetables', 'das', NULL, 'noun', 'Ich kaufe Gemüse auf dem Markt.', 'I buy vegetables at the market.', 'A1', 25),
  ('00000000-0000-4000-a000-00006598ba10', 'kochen', 'يطبخ', 'to cook', NULL, NULL, 'verb', 'Meine Mutter kocht gut.', 'My mother cooks well.', 'A1', 26),
  ('00000000-0000-4000-a000-00006598ba10', 'der Fisch', 'السمك', 'fish', 'der', 'die Fische', 'noun', 'Der Fisch ist frisch.', 'The fish is fresh.', 'A1', 27),
  ('00000000-0000-4000-a000-00006598ba10', 'das Fleisch', 'اللحم', 'meat', 'das', NULL, 'noun', 'Ich esse nicht viel Fleisch.', 'I do not eat much meat.', 'A1', 28),
  ('00000000-0000-4000-a000-00006598ba10', 'das Haus', 'البيت', 'house', 'das', 'die Häuser', 'noun', 'Das Haus ist groß.', 'The house is big.', 'A1', 29),
  ('00000000-0000-4000-a000-00006598ba10', 'die Wohnung', 'الشقة', 'apartment', 'die', 'die Wohnungen', 'noun', 'Meine Wohnung hat drei Zimmer.', 'My apartment has three rooms.', 'A1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006598ba10', 'Possessivartikel (Possessive Articles) / أدوات الملكية', 'Possessive articles show ownership. They change based on the owner AND the gender of the object. mein (my), dein (your), sein (his), ihr (her), unser (our), euer (your plural), Ihr (your formal). The ending changes: add -e for feminine.', '[{"rule":"mein Vater/meine Mutter","note":"Masculine stays mein, feminine uses meine"},{"rule":"dein Bruder/deine Schwester","note":"Same pattern for all possessive articles"},{"rule":"Ihr (capital I) = formal your","note":"Distinguish from ihr (lowercase) = her"}]', '[{"german":"Mein Vater heißt Thomas.","arabic":"والدي اسمه توماس.","english":"My father is called Thomas."},{"german":"Deine Mutter ist nett.","arabic":"أمك لطيفة.","english":"Your mother is nice."},{"german":"Sein Bruder studiert in Berlin.","arabic":"أخوه يدرس في برلين.","english":"His brother studies in Berlin."}]', '[{"mistake":"Mein Mutter / mein Schwester","correction":"Meine Mutter / meine Schwester","explanation":"Feminine nouns need the -e ending: meine."},{"mistake":"Ihr (capital) vs ihr (lowercase)","correction":"Ihr = formal you, ihr = her","explanation":"Capitalization changes meaning completely!"}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006598ba10', 'multiple_choice', 'What does "die Familie" mean?', '["The","A","This","That"]', 'The', 'This is a basic vocabulary item.', 1, 1),
  ('00000000-0000-4000-a000-00006598ba10', 'fill_gap', 'Complete with the correct form.', '["Option 1","Option 2","Option 3"]', 'Option 1', 'Practice grammar in context.', 1, 2),
  ('00000000-0000-4000-a000-00006598ba10', 'translation', 'Translate: "I learn German."', '["Ich lerne Deutsch.","Ich lerne Englisch.","Ich lerne Spanisch."]', 'Ich lerne Deutsch.', 'Ich = I, lerne = learn/learning, Deutsch = German.', 2, 3),
  ('00000000-0000-4000-a000-00006598ba10', 'sentence_order', 'Order the sentence.', '[]', 'Ich lerne Deutsch.', 'Subject + verb + object in German.', 2, 4),
  ('00000000-0000-4000-a000-00006598ba10', 'matching', 'Match the words with their meanings.', '["Match pairs correctly"]', 'Correct pairs', 'Test your vocabulary knowledge.', 2, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-00006598ba10', 'multiple_choice', 'What is the main topic of this lesson?', '["Family Members","Sports","Music","Travel"]', 'Family Members', 1, 1),
  ('00000000-0000-4000-a000-00006598ba10', 'true_false', 'This lesson teaches vocabulary about Family Members.', '["True","False"]', 'True', 1, 2),
  ('00000000-0000-4000-a000-00006598ba10', 'true_false', 'German word order is always the same as English.', '["True","False"]', 'False', 1, 3),
  ('00000000-0000-4000-a000-00006598ba10', 'multiple_choice', 'How do you say "please" in German?', '["Danke","Bitte","Tschüss","Hallo"]', 'Bitte', 1, 4),
  ('00000000-0000-4000-a000-00006598ba10', 'multiple_choice', 'Which article is feminine?', '["der","die","das","den"]', 'die', 1, 5),
  ('00000000-0000-4000-a000-00006598ba10', 'fill_blank', 'Ich ___ (to be) Student.', '["bin","bist","ist","sind"]', 'bin', 1, 6),
  ('00000000-0000-4000-a000-00006598ba10', 'multiple_choice', 'What is the correct word order?', '["Ich lerne Deutsch","Ich Deutsch lerne","Lerne ich Deutsch","Deutsch ich lerne"]', 'Ich lerne Deutsch', 1, 7),
  ('00000000-0000-4000-a000-00006598ba10', 'true_false', 'All German nouns are capitalized.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-00006598ba10', 'multiple_choice', 'How do you say "thank you" in German?', '["Bitte","Danke","Tschüss","Hallo"]', 'Danke', 1, 9),
  ('00000000-0000-4000-a000-00006598ba10', 'fill_blank', 'Wo ___ du? (to live)', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 1, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-00006598ba10', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Familie und Alltag', 'formal', false, 1),
  ('00000000-0000-4000-a000-00006598ba10', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Familie und Alltag', 'informal', false, 2),
  ('00000000-0000-4000-a000-00006598ba10', 'Bitte!', 'Please!', 'من فضلك!', 'Used in Familie und Alltag', 'neutral', false, 3),
  ('00000000-0000-4000-a000-00006598ba10', 'Danke!', 'Thanks!', 'شكراً!', 'Used in Familie und Alltag', 'neutral', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-00006598ba10', 'Hallo', 'Hello', 'Greeting', 'expression', 1),
  ('00000000-0000-4000-a000-00006598ba10', 'Danke', 'Thanks', 'Politeness', 'expression', 2),
  ('00000000-0000-4000-a000-00006598ba10', 'Bitte', 'Please', 'Politeness', 'expression', 3),
  ('00000000-0000-4000-a000-00006598ba10', 'Tschüss', 'Bye', 'Farewell', 'expression', 4);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-00006598ba10', 'Die Familie — Leseübung', 'Hallo! Ich heiße Ahmed und komme aus Syrien. Meine Familie wohnt in Köln. Ich habe einen Bruder und zwei Schwestern. Mein Bruder heißt Omar und ist 20 Jahre alt. Meine Schwestern heißen Fatima und Aisha. Meine Mutter ist Ärztin. Mein Vater arbeitet als Lehrer. Wir haben auch eine Katze. Sie heißt Mimi. Am Wochenende besuchen wir unsere Großeltern. Meine Großmutter kocht sehr gut. Ich liebe meine Familie.', 'Hello! My name is Ahmed and I come from Syria. My family lives in Cologne. I have one brother and two sisters. My brother is called Omar and is 20 years old. My sisters are called Fatima and Aisha. My mother is a doctor. My father works as a teacher. We also have a cat. She is called Mimi. On weekends we visit our grandparents. My grandmother cooks very well. I love my family.', 'مرحباً! اسمي أحمد وأنا من سوريا. عائلتي تسكن في كولونيا. لدي أخ واحد وأختان. أخي اسمه عمر وعمره 20 سنة. أختاي اسمهما فاطمة وعائشة. أمي طبيبة. والدي يعمل معلماً. لدينا أيضاً قطة. اسمها ميمي. في عطلة نهاية الأسبوع نزور أجدادنا. جدتي تطبخ جيداً جداً. أحب عائلتي.', 67, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, duration_seconds, speaker_count, scenario) values
  ('00000000-0000-4000-a000-00006598ba10', 'Die Familie — Hörverständnis', '[Anna]: Hallo Ben! Hast du Geschwister?

[Ben]: Ja, ich habe einen Bruder und eine Schwester.

[Anna]: Wie alt sind deine Geschwister?

[Ben]: Mein Bruder ist 15 und meine Schwester ist 20.

[Anna]: Und deine Eltern? Was machen sie?

[Ben]: Mein Vater ist Lehrer und meine Mutter ist Ärztin.', '[Anna]: Hello Ben! Do you have siblings?

[Ben]: Yes, I have a brother and a sister.

[Anna]: How old are your siblings?

[Ben]: My brother is 15 and my sister is 20.

[Anna]: And your parents? What do they do?

[Ben]: My father is a teacher and my mother is a doctor.', '[Anna]: مرحباً بن! هل لديك أخوة؟

[Ben]: نعم، لدي أخ وأخت.

[Anna]: كم عمر أخوتك؟

[Ben]: أخي عمره 15 وأختي عمرها 20.

[Anna]: ووالديك؟ ماذا يعملان؟

[Ben]: والدي معلم ووالدتي طبيبة.', 72, 2, 'Familie und Alltag');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-00006598ba10', 'Speaking: Die Familie', 'Practice talking about Family Members. Answer questions and have a simple conversation.', 'Family Members', ARRAY['Use full sentences','Speak clearly','Don''t worry about mistakes']::text[], ARRAY['die Familie','der Vater','die Mutter','der Bruder','die Schwester']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-00006598ba10', 'Writing: Die Familie', 'Write a short text about Family Members. Use at least 5 vocabulary words from this lesson.', ARRAY['Start with a greeting','Use the vocabulary from this lesson','Check your grammar']::text[], ARRAY['die Familie','der Vater','die Mutter']::text[], '["Sentence structure","Vocabulary usage"]', 50, 150, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00006598ba10', 'Die Familie — Roleplay', 'Family Members', 'Student', 'Teacher', 'Practice conversation about Family Members', 'Hallo! Lass uns über dieses Thema sprechen.', 'beginner', 1, ARRAY['die Familie','der Vater','die Mutter','der Bruder','die Schwester','die Geschwister','der Sohn','die Tochter']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00006598ba10', 'Die Familie — Advanced Roleplay', 'Family Members', 'Customer', 'Assistant', 'Extended conversation about Family Members', 'Guten Tag! Wie kann ich Ihnen helfen?', 'beginner', 2, ARRAY['die Familie','der Vater','die Mutter','der Bruder','die Schwester','die Geschwister','der Sohn','die Tochter']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-00006598ba10', 'Die Familie — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Die Familie".', 'Creative practice for Family Members', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-00006598ba10', 'Homework: Die Familie', 'Complete these tasks to reinforce "Die Familie".', 'mixed', '[{"description":"Review all vocabulary from this lesson"},{"description":"Write 5 sentences using the grammar structure"},{"description":"Practice the dialogue aloud"}]', 35, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-00006598ba10', 'In this lesson you learned about Family Members. You practiced vocabulary related to family and grammar structure possessive_articles.', '["Mastered vocabulary about Family Members","Applied possessive_articles correctly","Read and understood a text about Family Members","Practiced speaking about Family Members"]', '[{"title":"Die Familie Review","summary":"possessive_articles — the main grammar focus of this lesson."}]', ARRAY['Family Members core vocabulary','family key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)','Verb is always in second position']::text[], ARRAY['Practice 15-20 minutes daily','Use new vocabulary in real sentences','Speak out loud to improve pronunciation']::text[]);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006598ba10', 'Pronunciation: German pronunciation basics', 'German is mostly phonetic. Pronounce each letter.

Common mistake for Arabic speakers: Pronouncing every letter as in English.', '[]', '[{"german":"ja","arabic":"","english":"","phonetic":"/jaː/"},{"german":"nein","arabic":"","english":"","phonetic":"/naɪn/"}]', '[]', 10);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006598ba10', 'translation', 'Translate to German: "This is a translation exercise."', '[]', 'Das ist eine Übersetzungsübung.', 'Use "das ist" for "this is"', 1, 40);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006598ba10', 'Culture: Family Members in German-Speaking Countries', 'Learn how Family Members is approached in German culture.

تعلم كيف يتم التعامل مع Family Members في الثقافة الألمانية.', '["Tip: Be direct and polite","Tip: Use formal language with strangers","Tip: Respect punctuality"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006598ba10', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Common error for Arabic speakers","correction":"Correct version","explanation":"Explanation of the error"}]', 30);

  -- Lesson 2: Verwandte und Beziehungen (L-A1-02-02)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-00006598ba11', '00000000-0000-4000-a000-000039b4d35f', 'Verwandte und Beziehungen', 'Extended family, relationship terms, and family tree.', 'Relatives', 'vocabulary', '["Understand and use vocabulary related to Relatives","Apply possessive_articles correctly","Read and comprehend a text about Relatives","Listen and understand a dialogue about Relatives","Speak about Relatives in simple sentences","Write a short text about Relatives"]', 25, 2, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-00006598ba11', 'die Familie', 'العائلة', 'family', 'die', 'die Familien', 'noun', 'Meine Familie ist groß.', 'My family is big.', 'A1', 1),
  ('00000000-0000-4000-a000-00006598ba11', 'der Vater', 'الأب', 'father', 'der', 'die Väter', 'noun', 'Mein Vater ist Ingenieur.', 'My father is an engineer.', 'A1', 2),
  ('00000000-0000-4000-a000-00006598ba11', 'die Mutter', 'الأم', 'mother', 'die', 'die Mütter', 'noun', 'Meine Mutter kocht gut.', 'My mother cooks well.', 'A1', 3),
  ('00000000-0000-4000-a000-00006598ba11', 'der Bruder', 'الأخ', 'brother', 'der', 'die Brüder', 'noun', 'Mein Bruder ist 15 Jahre alt.', 'My brother is 15 years old.', 'A1', 4),
  ('00000000-0000-4000-a000-00006598ba11', 'die Schwester', 'الأخت', 'sister', 'die', 'die Schwestern', 'noun', 'Meine Schwester studiert Medizin.', 'My sister studies medicine.', 'A1', 5),
  ('00000000-0000-4000-a000-00006598ba11', 'die Geschwister', 'الإخوة', 'siblings', 'die', NULL, 'noun', 'Hast du Geschwister?', 'Do you have siblings?', 'A1', 6),
  ('00000000-0000-4000-a000-00006598ba11', 'der Sohn', 'الابن', 'son', 'der', 'die Söhne', 'noun', 'Wir haben einen Sohn.', 'We have a son.', 'A1', 7),
  ('00000000-0000-4000-a000-00006598ba11', 'die Tochter', 'الابنة', 'daughter', 'die', 'die Töchter', 'noun', 'Meine Tochter geht zur Schule.', 'My daughter goes to school.', 'A1', 8),
  ('00000000-0000-4000-a000-00006598ba11', 'die Großeltern', 'الأجداد', 'grandparents', 'die', NULL, 'noun', 'Meine Großeltern wohnen auf dem Land.', 'My grandparents live in the countryside.', 'A1', 9),
  ('00000000-0000-4000-a000-00006598ba11', 'verheiratet', 'متزوج', 'married', NULL, NULL, 'adjective', 'Meine Eltern sind verheiratet.', 'My parents are married.', 'A1', 10),
  ('00000000-0000-4000-a000-00006598ba11', 'Hallo', 'مرحباً', 'hello', NULL, NULL, 'interjection', 'Hallo, wie geht es dir?', 'Hello, how are you?', 'A1', 11),
  ('00000000-0000-4000-a000-00006598ba11', 'Guten Morgen', 'صباح الخير', 'good morning', NULL, NULL, 'phrase', 'Guten Morgen, Herr Müller.', 'Good morning, Mr. Müller.', 'A1', 12),
  ('00000000-0000-4000-a000-00006598ba11', 'Guten Tag', 'نهارك سعيد', 'good day', NULL, NULL, 'phrase', 'Guten Tag, Frau Schmidt.', 'Good day, Mrs. Schmidt.', 'A1', 13),
  ('00000000-0000-4000-a000-00006598ba11', 'Tschüss', 'مع السلامة', 'bye', NULL, NULL, 'interjection', 'Tschüss, bis morgen!', 'Bye, see you tomorrow!', 'A1', 14),
  ('00000000-0000-4000-a000-00006598ba11', 'der Name', 'الاسم', 'name', 'der', 'die Namen', 'noun', 'Mein Name ist Anna.', 'My name is Anna.', 'A1', 15),
  ('00000000-0000-4000-a000-00006598ba11', 'wie', 'كيف', 'how', NULL, NULL, 'adverb', 'Wie heißt du?', 'What is your name?', 'A1', 16),
  ('00000000-0000-4000-a000-00006598ba11', 'freuen', 'يسر', 'to be pleased', NULL, NULL, 'verb', 'Ich freue mich, dich kennenzulernen.', 'I am pleased to meet you.', 'A1', 17),
  ('00000000-0000-4000-a000-00006598ba11', 'Willkommen', 'أهلاً وسهلاً', 'welcome', NULL, NULL, 'interjection', 'Willkommen in Deutschland!', 'Welcome to Germany!', 'A1', 18),
  ('00000000-0000-4000-a000-00006598ba11', 'das Brot', 'الخبز', 'bread', 'das', 'die Brote', 'noun', 'Ich kaufe ein Brot.', 'I buy a loaf of bread.', 'A1', 19),
  ('00000000-0000-4000-a000-00006598ba11', 'die Milch', 'الحليب', 'milk', 'die', NULL, 'noun', 'Die Milch ist frisch.', 'The milk is fresh.', 'A1', 20),
  ('00000000-0000-4000-a000-00006598ba11', 'der Käse', 'الجبن', 'cheese', 'der', NULL, 'noun', 'Der Käse schmeckt gut.', 'The cheese tastes good.', 'A1', 21),
  ('00000000-0000-4000-a000-00006598ba11', 'der Apfel', 'التفاح', 'apple', 'der', 'die Äpfel', 'noun', 'Der Apfel ist rot.', 'The apple is red.', 'A1', 22),
  ('00000000-0000-4000-a000-00006598ba11', 'das Ei', 'البيضة', 'egg', 'das', 'die Eier', 'noun', 'Ich esse ein Ei zum Frühstück.', 'I eat an egg for breakfast.', 'A1', 23),
  ('00000000-0000-4000-a000-00006598ba11', 'das Obst', 'الفاكهة', 'fruit', 'das', NULL, 'noun', 'Obst ist gesund.', 'Fruit is healthy.', 'A1', 24),
  ('00000000-0000-4000-a000-00006598ba11', 'das Gemüse', 'الخضروات', 'vegetables', 'das', NULL, 'noun', 'Ich kaufe Gemüse auf dem Markt.', 'I buy vegetables at the market.', 'A1', 25),
  ('00000000-0000-4000-a000-00006598ba11', 'kochen', 'يطبخ', 'to cook', NULL, NULL, 'verb', 'Meine Mutter kocht gut.', 'My mother cooks well.', 'A1', 26),
  ('00000000-0000-4000-a000-00006598ba11', 'der Fisch', 'السمك', 'fish', 'der', 'die Fische', 'noun', 'Der Fisch ist frisch.', 'The fish is fresh.', 'A1', 27),
  ('00000000-0000-4000-a000-00006598ba11', 'das Fleisch', 'اللحم', 'meat', 'das', NULL, 'noun', 'Ich esse nicht viel Fleisch.', 'I do not eat much meat.', 'A1', 28),
  ('00000000-0000-4000-a000-00006598ba11', 'das Haus', 'البيت', 'house', 'das', 'die Häuser', 'noun', 'Das Haus ist groß.', 'The house is big.', 'A1', 29),
  ('00000000-0000-4000-a000-00006598ba11', 'die Wohnung', 'الشقة', 'apartment', 'die', 'die Wohnungen', 'noun', 'Meine Wohnung hat drei Zimmer.', 'My apartment has three rooms.', 'A1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006598ba11', 'Possessivartikel (Possessive Articles) / أدوات الملكية', 'Possessive articles show ownership. They change based on the owner AND the gender of the object. mein (my), dein (your), sein (his), ihr (her), unser (our), euer (your plural), Ihr (your formal). The ending changes: add -e for feminine.', '[{"rule":"mein Vater/meine Mutter","note":"Masculine stays mein, feminine uses meine"},{"rule":"dein Bruder/deine Schwester","note":"Same pattern for all possessive articles"},{"rule":"Ihr (capital I) = formal your","note":"Distinguish from ihr (lowercase) = her"}]', '[{"german":"Mein Vater heißt Thomas.","arabic":"والدي اسمه توماس.","english":"My father is called Thomas."},{"german":"Deine Mutter ist nett.","arabic":"أمك لطيفة.","english":"Your mother is nice."},{"german":"Sein Bruder studiert in Berlin.","arabic":"أخوه يدرس في برلين.","english":"His brother studies in Berlin."}]', '[{"mistake":"Mein Mutter / mein Schwester","correction":"Meine Mutter / meine Schwester","explanation":"Feminine nouns need the -e ending: meine."},{"mistake":"Ihr (capital) vs ihr (lowercase)","correction":"Ihr = formal you, ihr = her","explanation":"Capitalization changes meaning completely!"}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006598ba11', 'multiple_choice', 'What does "die Familie" mean?', '["The","A","This","That"]', 'The', 'This is a basic vocabulary item.', 1, 1),
  ('00000000-0000-4000-a000-00006598ba11', 'fill_gap', 'Complete with the correct form.', '["Option 1","Option 2","Option 3"]', 'Option 1', 'Practice grammar in context.', 1, 2),
  ('00000000-0000-4000-a000-00006598ba11', 'translation', 'Translate: "I learn German."', '["Ich lerne Deutsch.","Ich lerne Englisch.","Ich lerne Spanisch."]', 'Ich lerne Deutsch.', 'Ich = I, lerne = learn/learning, Deutsch = German.', 2, 3),
  ('00000000-0000-4000-a000-00006598ba11', 'sentence_order', 'Order the sentence.', '[]', 'Ich lerne Deutsch.', 'Subject + verb + object in German.', 2, 4),
  ('00000000-0000-4000-a000-00006598ba11', 'matching', 'Match the words with their meanings.', '["Match pairs correctly"]', 'Correct pairs', 'Test your vocabulary knowledge.', 2, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-00006598ba11', 'multiple_choice', 'What is the main topic of this lesson?', '["Relatives","Sports","Music","Travel"]', 'Relatives', 1, 1),
  ('00000000-0000-4000-a000-00006598ba11', 'true_false', 'This lesson teaches vocabulary about Relatives.', '["True","False"]', 'True', 1, 2),
  ('00000000-0000-4000-a000-00006598ba11', 'true_false', 'German word order is always the same as English.', '["True","False"]', 'False', 1, 3),
  ('00000000-0000-4000-a000-00006598ba11', 'multiple_choice', 'How do you say "please" in German?', '["Danke","Bitte","Tschüss","Hallo"]', 'Bitte', 1, 4),
  ('00000000-0000-4000-a000-00006598ba11', 'multiple_choice', 'Which article is feminine?', '["der","die","das","den"]', 'die', 1, 5),
  ('00000000-0000-4000-a000-00006598ba11', 'fill_blank', 'Ich ___ (to be) Student.', '["bin","bist","ist","sind"]', 'bin', 1, 6),
  ('00000000-0000-4000-a000-00006598ba11', 'multiple_choice', 'What is the correct word order?', '["Ich lerne Deutsch","Ich Deutsch lerne","Lerne ich Deutsch","Deutsch ich lerne"]', 'Ich lerne Deutsch', 1, 7),
  ('00000000-0000-4000-a000-00006598ba11', 'true_false', 'All German nouns are capitalized.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-00006598ba11', 'multiple_choice', 'How do you say "thank you" in German?', '["Bitte","Danke","Tschüss","Hallo"]', 'Danke', 1, 9),
  ('00000000-0000-4000-a000-00006598ba11', 'fill_blank', 'Wo ___ du? (to live)', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 1, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-00006598ba11', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Familie und Alltag', 'formal', false, 1),
  ('00000000-0000-4000-a000-00006598ba11', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Familie und Alltag', 'informal', false, 2),
  ('00000000-0000-4000-a000-00006598ba11', 'Bitte!', 'Please!', 'من فضلك!', 'Used in Familie und Alltag', 'neutral', false, 3),
  ('00000000-0000-4000-a000-00006598ba11', 'Danke!', 'Thanks!', 'شكراً!', 'Used in Familie und Alltag', 'neutral', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-00006598ba11', 'Hallo', 'Hello', 'Greeting', 'expression', 1),
  ('00000000-0000-4000-a000-00006598ba11', 'Danke', 'Thanks', 'Politeness', 'expression', 2),
  ('00000000-0000-4000-a000-00006598ba11', 'Bitte', 'Please', 'Politeness', 'expression', 3),
  ('00000000-0000-4000-a000-00006598ba11', 'Tschüss', 'Bye', 'Farewell', 'expression', 4);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-00006598ba11', 'Verwandte und Beziehungen — Leseübung', 'Hallo! Ich heiße Ahmed und komme aus Syrien. Meine Familie wohnt in Köln. Ich habe einen Bruder und zwei Schwestern. Mein Bruder heißt Omar und ist 20 Jahre alt. Meine Schwestern heißen Fatima und Aisha. Meine Mutter ist Ärztin. Mein Vater arbeitet als Lehrer. Wir haben auch eine Katze. Sie heißt Mimi. Am Wochenende besuchen wir unsere Großeltern. Meine Großmutter kocht sehr gut. Ich liebe meine Familie.', 'Hello! My name is Ahmed and I come from Syria. My family lives in Cologne. I have one brother and two sisters. My brother is called Omar and is 20 years old. My sisters are called Fatima and Aisha. My mother is a doctor. My father works as a teacher. We also have a cat. She is called Mimi. On weekends we visit our grandparents. My grandmother cooks very well. I love my family.', 'مرحباً! اسمي أحمد وأنا من سوريا. عائلتي تسكن في كولونيا. لدي أخ واحد وأختان. أخي اسمه عمر وعمره 20 سنة. أختاي اسمهما فاطمة وعائشة. أمي طبيبة. والدي يعمل معلماً. لدينا أيضاً قطة. اسمها ميمي. في عطلة نهاية الأسبوع نزور أجدادنا. جدتي تطبخ جيداً جداً. أحب عائلتي.', 67, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, duration_seconds, speaker_count, scenario) values
  ('00000000-0000-4000-a000-00006598ba11', 'Verwandte und Beziehungen — Hörverständnis', '[Anna]: Hallo Ben! Hast du Geschwister?

[Ben]: Ja, ich habe einen Bruder und eine Schwester.

[Anna]: Wie alt sind deine Geschwister?

[Ben]: Mein Bruder ist 15 und meine Schwester ist 20.

[Anna]: Und deine Eltern? Was machen sie?

[Ben]: Mein Vater ist Lehrer und meine Mutter ist Ärztin.', '[Anna]: Hello Ben! Do you have siblings?

[Ben]: Yes, I have a brother and a sister.

[Anna]: How old are your siblings?

[Ben]: My brother is 15 and my sister is 20.

[Anna]: And your parents? What do they do?

[Ben]: My father is a teacher and my mother is a doctor.', '[Anna]: مرحباً بن! هل لديك أخوة؟

[Ben]: نعم، لدي أخ وأخت.

[Anna]: كم عمر أخوتك؟

[Ben]: أخي عمره 15 وأختي عمرها 20.

[Anna]: ووالديك؟ ماذا يعملان؟

[Ben]: والدي معلم ووالدتي طبيبة.', 72, 2, 'Familie und Alltag');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-00006598ba11', 'Speaking: Verwandte und Beziehungen', 'Practice talking about Relatives. Answer questions and have a simple conversation.', 'Relatives', ARRAY['Use full sentences','Speak clearly','Don''t worry about mistakes']::text[], ARRAY['die Familie','der Vater','die Mutter','der Bruder','die Schwester']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-00006598ba11', 'Writing: Verwandte und Beziehungen', 'Write a short text about Relatives. Use at least 5 vocabulary words from this lesson.', ARRAY['Start with a greeting','Use the vocabulary from this lesson','Check your grammar']::text[], ARRAY['die Familie','der Vater','die Mutter']::text[], '["Sentence structure","Vocabulary usage"]', 50, 150, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00006598ba11', 'Verwandte und Beziehungen — Roleplay', 'Relatives', 'Student', 'Teacher', 'Practice conversation about Relatives', 'Hallo! Lass uns über dieses Thema sprechen.', 'beginner', 1, ARRAY['die Familie','der Vater','die Mutter','der Bruder','die Schwester','die Geschwister','der Sohn','die Tochter']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00006598ba11', 'Verwandte und Beziehungen — Advanced Roleplay', 'Relatives', 'Customer', 'Assistant', 'Extended conversation about Relatives', 'Guten Tag! Wie kann ich Ihnen helfen?', 'beginner', 2, ARRAY['die Familie','der Vater','die Mutter','der Bruder','die Schwester','die Geschwister','der Sohn','die Tochter']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-00006598ba11', 'Verwandte und Beziehungen — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Verwandte und Beziehungen".', 'Creative practice for Relatives', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-00006598ba11', 'Homework: Verwandte und Beziehungen', 'Complete these tasks to reinforce "Verwandte und Beziehungen".', 'mixed', '[{"description":"Review all vocabulary from this lesson"},{"description":"Write 5 sentences using the grammar structure"},{"description":"Practice the dialogue aloud"}]', 35, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-00006598ba11', 'In this lesson you learned about Relatives. You practiced vocabulary related to family and grammar structure possessive_articles.', '["Mastered vocabulary about Relatives","Applied possessive_articles correctly","Read and understood a text about Relatives","Practiced speaking about Relatives"]', '[{"title":"Verwandte und Beziehungen Review","summary":"possessive_articles — the main grammar focus of this lesson."}]', ARRAY['Relatives core vocabulary','family key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)','Verb is always in second position']::text[], ARRAY['Practice 15-20 minutes daily','Use new vocabulary in real sentences','Speak out loud to improve pronunciation']::text[]);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006598ba11', 'Pronunciation: German pronunciation basics', 'German is mostly phonetic. Pronounce each letter.

Common mistake for Arabic speakers: Pronouncing every letter as in English.', '[]', '[{"german":"ja","arabic":"","english":"","phonetic":"/jaː/"},{"german":"nein","arabic":"","english":"","phonetic":"/naɪn/"}]', '[]', 10);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006598ba11', 'translation', 'Translate to German: "This is a translation exercise."', '[]', 'Das ist eine Übersetzungsübung.', 'Use "das ist" for "this is"', 1, 40);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006598ba11', 'Culture: Relatives in German-Speaking Countries', 'Learn how Relatives is approached in German culture.

تعلم كيف يتم التعامل مع Relatives في الثقافة الألمانية.', '["Tip: Be direct and polite","Tip: Use formal language with strangers","Tip: Respect punctuality"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006598ba11', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Common error for Arabic speakers","correction":"Correct version","explanation":"Explanation of the error"}]', 30);

  -- Lesson 3: Mein Tagesablauf (L-A1-02-03)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-00006598ba12', '00000000-0000-4000-a000-000039b4d35f', 'Mein Tagesablauf', 'Describe your daily routine using regular verbs.', 'Daily Routine', 'vocabulary', '["Understand and use vocabulary related to Daily Routine","Apply present_tense correctly","Read and comprehend a text about Daily Routine","Listen and understand a dialogue about Daily Routine","Speak about Daily Routine in simple sentences","Write a short text about Daily Routine"]', 30, 3, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-00006598ba12', 'aufstehen', 'يستيقظ', 'to get up', NULL, NULL, 'verb', 'Ich stehe um 6 Uhr auf.', 'I get up at 6 o''clock.', 'A1', 1),
  ('00000000-0000-4000-a000-00006598ba12', 'frühstücken', 'يتناول الفطور', 'to have breakfast', NULL, NULL, 'verb', 'Ich frühstücke um 7 Uhr.', 'I have breakfast at 7 o''clock.', 'A1', 2),
  ('00000000-0000-4000-a000-00006598ba12', 'arbeiten', 'يعمل', 'to work', NULL, NULL, 'verb', 'Ich arbeite in einem Büro.', 'I work in an office.', 'A1', 3),
  ('00000000-0000-4000-a000-00006598ba12', 'der Morgen', 'الصباح', 'morning', 'der', NULL, 'noun', 'Am Morgen dusche ich.', 'In the morning I shower.', 'A1', 4),
  ('00000000-0000-4000-a000-00006598ba12', 'der Abend', 'المساء', 'evening', 'der', NULL, 'noun', 'Am Abend lese ich ein Buch.', 'In the evening I read a book.', 'A1', 5),
  ('00000000-0000-4000-a000-00006598ba12', 'schlafen', 'ينام', 'to sleep', NULL, NULL, 'verb', 'Ich schlafe um 22 Uhr.', 'I sleep at 10 PM.', 'A1', 6),
  ('00000000-0000-4000-a000-00006598ba12', 'die Arbeit', 'العمل', 'work', 'die', NULL, 'noun', 'Die Arbeit beginnt um 8 Uhr.', 'Work starts at 8 o''clock.', 'A1', 7),
  ('00000000-0000-4000-a000-00006598ba12', 'gehen', 'يذهب', 'to go', NULL, NULL, 'verb', 'Ich gehe zur Arbeit.', 'I go to work.', 'A1', 8),
  ('00000000-0000-4000-a000-00006598ba12', 'die Uhr', 'الساعة', 'clock', 'die', 'die Uhren', 'noun', 'Die Uhr zeigt 7 Uhr.', 'The clock shows 7 o''clock.', 'A1', 9),
  ('00000000-0000-4000-a000-00006598ba12', 'die Zeit', 'الوقت', 'time', 'die', NULL, 'noun', 'Ich habe keine Zeit.', 'I have no time.', 'A1', 10),
  ('00000000-0000-4000-a000-00006598ba12', 'Hallo', 'مرحباً', 'hello', NULL, NULL, 'interjection', 'Hallo, wie geht es dir?', 'Hello, how are you?', 'A1', 11),
  ('00000000-0000-4000-a000-00006598ba12', 'Guten Morgen', 'صباح الخير', 'good morning', NULL, NULL, 'phrase', 'Guten Morgen, Herr Müller.', 'Good morning, Mr. Müller.', 'A1', 12),
  ('00000000-0000-4000-a000-00006598ba12', 'Guten Tag', 'نهارك سعيد', 'good day', NULL, NULL, 'phrase', 'Guten Tag, Frau Schmidt.', 'Good day, Mrs. Schmidt.', 'A1', 13),
  ('00000000-0000-4000-a000-00006598ba12', 'Tschüss', 'مع السلامة', 'bye', NULL, NULL, 'interjection', 'Tschüss, bis morgen!', 'Bye, see you tomorrow!', 'A1', 14),
  ('00000000-0000-4000-a000-00006598ba12', 'der Name', 'الاسم', 'name', 'der', 'die Namen', 'noun', 'Mein Name ist Anna.', 'My name is Anna.', 'A1', 15),
  ('00000000-0000-4000-a000-00006598ba12', 'wie', 'كيف', 'how', NULL, NULL, 'adverb', 'Wie heißt du?', 'What is your name?', 'A1', 16),
  ('00000000-0000-4000-a000-00006598ba12', 'freuen', 'يسر', 'to be pleased', NULL, NULL, 'verb', 'Ich freue mich, dich kennenzulernen.', 'I am pleased to meet you.', 'A1', 17),
  ('00000000-0000-4000-a000-00006598ba12', 'Willkommen', 'أهلاً وسهلاً', 'welcome', NULL, NULL, 'interjection', 'Willkommen in Deutschland!', 'Welcome to Germany!', 'A1', 18),
  ('00000000-0000-4000-a000-00006598ba12', 'die Familie', 'العائلة', 'family', 'die', 'die Familien', 'noun', 'Meine Familie ist groß.', 'My family is big.', 'A1', 19),
  ('00000000-0000-4000-a000-00006598ba12', 'der Vater', 'الأب', 'father', 'der', 'die Väter', 'noun', 'Mein Vater ist Ingenieur.', 'My father is an engineer.', 'A1', 20),
  ('00000000-0000-4000-a000-00006598ba12', 'die Mutter', 'الأم', 'mother', 'die', 'die Mütter', 'noun', 'Meine Mutter kocht gut.', 'My mother cooks well.', 'A1', 21),
  ('00000000-0000-4000-a000-00006598ba12', 'der Bruder', 'الأخ', 'brother', 'der', 'die Brüder', 'noun', 'Mein Bruder ist 15 Jahre alt.', 'My brother is 15 years old.', 'A1', 22),
  ('00000000-0000-4000-a000-00006598ba12', 'die Schwester', 'الأخت', 'sister', 'die', 'die Schwestern', 'noun', 'Meine Schwester studiert Medizin.', 'My sister studies medicine.', 'A1', 23),
  ('00000000-0000-4000-a000-00006598ba12', 'die Geschwister', 'الإخوة', 'siblings', 'die', NULL, 'noun', 'Hast du Geschwister?', 'Do you have siblings?', 'A1', 24),
  ('00000000-0000-4000-a000-00006598ba12', 'der Sohn', 'الابن', 'son', 'der', 'die Söhne', 'noun', 'Wir haben einen Sohn.', 'We have a son.', 'A1', 25),
  ('00000000-0000-4000-a000-00006598ba12', 'die Tochter', 'الابنة', 'daughter', 'die', 'die Töchter', 'noun', 'Meine Tochter geht zur Schule.', 'My daughter goes to school.', 'A1', 26),
  ('00000000-0000-4000-a000-00006598ba12', 'die Großeltern', 'الأجداد', 'grandparents', 'die', NULL, 'noun', 'Meine Großeltern wohnen auf dem Land.', 'My grandparents live in the countryside.', 'A1', 27),
  ('00000000-0000-4000-a000-00006598ba12', 'verheiratet', 'متزوج', 'married', NULL, NULL, 'adjective', 'Meine Eltern sind verheiratet.', 'My parents are married.', 'A1', 28),
  ('00000000-0000-4000-a000-00006598ba12', 'das Brot', 'الخبز', 'bread', 'das', 'die Brote', 'noun', 'Ich kaufe ein Brot.', 'I buy a loaf of bread.', 'A1', 29),
  ('00000000-0000-4000-a000-00006598ba12', 'die Milch', 'الحليب', 'milk', 'die', NULL, 'noun', 'Die Milch ist frisch.', 'The milk is fresh.', 'A1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006598ba12', 'Präsens der regelmäßigen Verben (Present Tense) / المضارع للأفعال المنتظمة', 'In German, regular verbs follow a consistent pattern. The infinitive ends in -en. Remove the -en and add the personal endings: ich -e, du -st, er/sie/es -t, wir -en, ihr -t, sie/Sie -en. For most Arabic speakers, this is easier than Arabic verb conjugation because German has fewer forms.', '[{"rule":"ich: stem + e","note":"Ich lerne, ich wohne, ich arbeite"},{"rule":"du: stem + st","note":"Du lernst, du wohnst, du arbeitest"},{"rule":"er/sie/es: stem + t","note":"Er lernt, sie wohnt, es arbeitet"},{"rule":"wir: stem + en","note":"Wir lernen, wir wohnen, wir arbeiten"},{"rule":"ihr: stem + t","note":"Ihr lernt, ihr wohnt, ihr arbeitet"},{"rule":"sie/Sie: stem + en","note":"Sie lernen, Sie wohnen"}]', '[{"german":"Ich lerne Deutsch.","arabic":"أنا أتعلم الألمانية.","english":"I am learning German."},{"german":"Du wohnst in Berlin.","arabic":"أنت تسكن في برلين.","english":"You live in Berlin."},{"german":"Er arbeitet bei Siemens.","arabic":"هو يعمل في سيمنز.","english":"He works at Siemens."}]', '[{"mistake":"Ich lernen Deutsch","correction":"Ich lerne Deutsch","explanation":"After \"ich\" we use the stem + e, not the infinitive."},{"mistake":"Er lerne Deutsch","correction":"Er lernt Deutsch","explanation":"After \"er/sie/es\" we add -t, not -e."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006598ba12', 'multiple_choice', 'What does "aufstehen" mean?', '["The","A","This","That"]', 'The', 'This is a basic vocabulary item.', 1, 1),
  ('00000000-0000-4000-a000-00006598ba12', 'fill_gap', 'Complete with the correct form.', '["Option 1","Option 2","Option 3"]', 'Option 1', 'Practice grammar in context.', 1, 2),
  ('00000000-0000-4000-a000-00006598ba12', 'translation', 'Translate: "I learn German."', '["Ich lerne Deutsch.","Ich lerne Englisch.","Ich lerne Spanisch."]', 'Ich lerne Deutsch.', 'Ich = I, lerne = learn/learning, Deutsch = German.', 2, 3),
  ('00000000-0000-4000-a000-00006598ba12', 'sentence_order', 'Order the sentence.', '[]', 'Ich lerne Deutsch.', 'Subject + verb + object in German.', 2, 4),
  ('00000000-0000-4000-a000-00006598ba12', 'matching', 'Match the words with their meanings.', '["Match pairs correctly"]', 'Correct pairs', 'Test your vocabulary knowledge.', 2, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-00006598ba12', 'multiple_choice', 'What is the main topic of this lesson?', '["Daily Routine","Sports","Music","Travel"]', 'Daily Routine', 1, 1),
  ('00000000-0000-4000-a000-00006598ba12', 'true_false', 'This lesson teaches vocabulary about Daily Routine.', '["True","False"]', 'True', 1, 2),
  ('00000000-0000-4000-a000-00006598ba12', 'true_false', 'German word order is always the same as English.', '["True","False"]', 'False', 1, 3),
  ('00000000-0000-4000-a000-00006598ba12', 'multiple_choice', 'How do you say "please" in German?', '["Danke","Bitte","Tschüss","Hallo"]', 'Bitte', 1, 4),
  ('00000000-0000-4000-a000-00006598ba12', 'multiple_choice', 'Which article is feminine?', '["der","die","das","den"]', 'die', 1, 5),
  ('00000000-0000-4000-a000-00006598ba12', 'fill_blank', 'Ich ___ (to be) Student.', '["bin","bist","ist","sind"]', 'bin', 1, 6),
  ('00000000-0000-4000-a000-00006598ba12', 'multiple_choice', 'What is the correct word order?', '["Ich lerne Deutsch","Ich Deutsch lerne","Lerne ich Deutsch","Deutsch ich lerne"]', 'Ich lerne Deutsch', 1, 7),
  ('00000000-0000-4000-a000-00006598ba12', 'true_false', 'All German nouns are capitalized.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-00006598ba12', 'multiple_choice', 'How do you say "thank you" in German?', '["Bitte","Danke","Tschüss","Hallo"]', 'Danke', 1, 9),
  ('00000000-0000-4000-a000-00006598ba12', 'fill_blank', 'Wo ___ du? (to live)', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 1, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-00006598ba12', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Familie und Alltag', 'formal', false, 1),
  ('00000000-0000-4000-a000-00006598ba12', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Familie und Alltag', 'informal', false, 2),
  ('00000000-0000-4000-a000-00006598ba12', 'Bitte!', 'Please!', 'من فضلك!', 'Used in Familie und Alltag', 'neutral', false, 3),
  ('00000000-0000-4000-a000-00006598ba12', 'Danke!', 'Thanks!', 'شكراً!', 'Used in Familie und Alltag', 'neutral', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-00006598ba12', 'Hallo', 'Hello', 'Greeting', 'expression', 1),
  ('00000000-0000-4000-a000-00006598ba12', 'Danke', 'Thanks', 'Politeness', 'expression', 2),
  ('00000000-0000-4000-a000-00006598ba12', 'Bitte', 'Please', 'Politeness', 'expression', 3),
  ('00000000-0000-4000-a000-00006598ba12', 'Tschüss', 'Bye', 'Farewell', 'expression', 4);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-00006598ba12', 'Mein Tagesablauf — Leseübung', 'Mein Tagesablauf beginnt um 6 Uhr. Ich stehe auf und dusche. Dann frühstücke ich. Ich esse Brot mit Käse und trinke Kaffee. Um 7 Uhr gehe ich zur Arbeit. Ich arbeite in einem Büro. Um 12 Uhr esse ich zu Mittag. Nach der Arbeit gehe ich nach Hause. Am Abend sehe ich fern oder lese ein Buch. Um 22 Uhr gehe ich ins Bett. Das ist mein Tag.', 'My daily routine starts at 6 o''clock. I get up and shower. Then I have breakfast. I eat bread with cheese and drink coffee. At 7 o''clock I go to work. I work in an office. At 12 o''clock I have lunch. After work I go home. In the evening I watch TV or read a book. At 10 PM I go to bed. That''s my day.', 'روتيني اليومي يبدأ في الساعة 6. أستيقظ وأستحم. ثم أتناول الفطور. آكل خبزاً مع الجبن وأشرب قهوة. في الساعة 7 أذهب إلى العمل. أعمل في مكتب. في الساعة 12 أتناول الغداء. بعد العمل أعود إلى المنزل. في المساء أشاهد التلفاز أو أقرأ كتاباً. في الساعة 10 أذهب إلى النوم. هذا هو يومي.', 68, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, duration_seconds, speaker_count, scenario) values
  ('00000000-0000-4000-a000-00006598ba12', 'Mein Tagesablauf — Hörverständnis', '[Lukas]: Hey Marie, wann stehst du normalerweise auf?

[Marie]: Ich stehe um 6 Uhr auf. Ich dusche und frühstücke dann.

[Lukas]: Und wann gehst du zur Arbeit?

[Marie]: Um 7 Uhr gehe ich los. Die Arbeit beginnt um 8 Uhr.

[Lukas]: Und was machst du am Abend?

[Marie]: Ich treffe Freunde oder lese ein Buch. Um 22 Uhr gehe ich ins Bett.', '[Lukas]: Hey Marie, when do you usually get up?

[Marie]: I get up at 6 o''clock. I shower and then have breakfast.

[Lukas]: And when do you go to work?

[Marie]: I leave at 7 o''clock. Work starts at 8 o''clock.

[Lukas]: And what do you do in the evening?

[Marie]: I meet friends or read a book. At 10 PM I go to bed.', '[Lukas]: مرحباً ماري، متى تستيقظين عادةً؟

[Marie]: أستيقظ في الساعة 6. ثم أستحم وأتناول الفطور.

[Lukas]: ومتى تذهبين إلى العمل؟

[Marie]: أغادر في الساعة 7. العمل يبدأ في الساعة 8.

[Lukas]: وماذا تفعلين في المساء؟

[Marie]: ألتقي بأصدقائي أو أقرأ كتاباً. في الساعة 10 أذهب إلى النوم.', 72, 2, 'Familie und Alltag');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-00006598ba12', 'Speaking: Mein Tagesablauf', 'Practice talking about Daily Routine. Answer questions and have a simple conversation.', 'Daily Routine', ARRAY['Use full sentences','Speak clearly','Don''t worry about mistakes']::text[], ARRAY['aufstehen','frühstücken','arbeiten','der Morgen','der Abend']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-00006598ba12', 'Writing: Mein Tagesablauf', 'Write a short text about Daily Routine. Use at least 5 vocabulary words from this lesson.', ARRAY['Start with a greeting','Use the vocabulary from this lesson','Check your grammar']::text[], ARRAY['aufstehen','frühstücken','arbeiten']::text[], '["Sentence structure","Vocabulary usage"]', 50, 150, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00006598ba12', 'Mein Tagesablauf — Roleplay', 'Daily Routine', 'Student', 'Teacher', 'Practice conversation about Daily Routine', 'Hallo! Lass uns über dieses Thema sprechen.', 'beginner', 1, ARRAY['aufstehen','frühstücken','arbeiten','der Morgen','der Abend','schlafen','die Arbeit','gehen']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00006598ba12', 'Mein Tagesablauf — Advanced Roleplay', 'Daily Routine', 'Customer', 'Assistant', 'Extended conversation about Daily Routine', 'Guten Tag! Wie kann ich Ihnen helfen?', 'beginner', 2, ARRAY['aufstehen','frühstücken','arbeiten','der Morgen','der Abend','schlafen','die Arbeit','gehen']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-00006598ba12', 'Mein Tagesablauf — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Mein Tagesablauf".', 'Creative practice for Daily Routine', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-00006598ba12', 'Homework: Mein Tagesablauf', 'Complete these tasks to reinforce "Mein Tagesablauf".', 'mixed', '[{"description":"Review all vocabulary from this lesson"},{"description":"Write 5 sentences using the grammar structure"},{"description":"Practice the dialogue aloud"}]', 35, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-00006598ba12', 'In this lesson you learned about Daily Routine. You practiced vocabulary related to daily_routine and grammar structure present_tense.', '["Mastered vocabulary about Daily Routine","Applied present_tense correctly","Read and understood a text about Daily Routine","Practiced speaking about Daily Routine"]', '[{"title":"Mein Tagesablauf Review","summary":"present_tense — the main grammar focus of this lesson."}]', ARRAY['Daily Routine core vocabulary','daily_routine key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)','Verb is always in second position']::text[], ARRAY['Practice 15-20 minutes daily','Use new vocabulary in real sentences','Speak out loud to improve pronunciation']::text[]);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006598ba12', 'Pronunciation: German pronunciation basics', 'German is mostly phonetic. Pronounce each letter.

Common mistake for Arabic speakers: Pronouncing every letter as in English.', '[]', '[{"german":"ja","arabic":"","english":"","phonetic":"/jaː/"},{"german":"nein","arabic":"","english":"","phonetic":"/naɪn/"}]', '[]', 10);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006598ba12', 'translation', 'Translate to German: "This is a translation exercise."', '[]', 'Das ist eine Übersetzungsübung.', 'Use "das ist" for "this is"', 1, 40);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006598ba12', 'Culture: Daily Routine in German-Speaking Countries', 'Learn how Daily Routine is approached in German culture.

تعلم كيف يتم التعامل مع Daily Routine في الثقافة الألمانية.', '["Tip: Be direct and polite","Tip: Use formal language with strangers","Tip: Respect punctuality"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006598ba12', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Common error for Arabic speakers","correction":"Correct version","explanation":"Explanation of the error"}]', 30);

  -- Lesson 4: Die Uhrzeit (L-A1-02-04)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-00006598ba13', '00000000-0000-4000-a000-000039b4d35f', 'Die Uhrzeit', 'Learn how to tell time in formal and informal ways.', 'Telling Time', 'vocabulary', '["Understand and use vocabulary related to Telling Time","Apply present_tense correctly","Read and comprehend a text about Telling Time","Listen and understand a dialogue about Telling Time","Speak about Telling Time in simple sentences","Write a short text about Telling Time"]', 25, 4, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-00006598ba13', 'aufstehen', 'يستيقظ', 'to get up', NULL, NULL, 'verb', 'Ich stehe um 6 Uhr auf.', 'I get up at 6 o''clock.', 'A1', 1),
  ('00000000-0000-4000-a000-00006598ba13', 'frühstücken', 'يتناول الفطور', 'to have breakfast', NULL, NULL, 'verb', 'Ich frühstücke um 7 Uhr.', 'I have breakfast at 7 o''clock.', 'A1', 2),
  ('00000000-0000-4000-a000-00006598ba13', 'arbeiten', 'يعمل', 'to work', NULL, NULL, 'verb', 'Ich arbeite in einem Büro.', 'I work in an office.', 'A1', 3),
  ('00000000-0000-4000-a000-00006598ba13', 'der Morgen', 'الصباح', 'morning', 'der', NULL, 'noun', 'Am Morgen dusche ich.', 'In the morning I shower.', 'A1', 4),
  ('00000000-0000-4000-a000-00006598ba13', 'der Abend', 'المساء', 'evening', 'der', NULL, 'noun', 'Am Abend lese ich ein Buch.', 'In the evening I read a book.', 'A1', 5),
  ('00000000-0000-4000-a000-00006598ba13', 'schlafen', 'ينام', 'to sleep', NULL, NULL, 'verb', 'Ich schlafe um 22 Uhr.', 'I sleep at 10 PM.', 'A1', 6),
  ('00000000-0000-4000-a000-00006598ba13', 'die Arbeit', 'العمل', 'work', 'die', NULL, 'noun', 'Die Arbeit beginnt um 8 Uhr.', 'Work starts at 8 o''clock.', 'A1', 7),
  ('00000000-0000-4000-a000-00006598ba13', 'gehen', 'يذهب', 'to go', NULL, NULL, 'verb', 'Ich gehe zur Arbeit.', 'I go to work.', 'A1', 8),
  ('00000000-0000-4000-a000-00006598ba13', 'die Uhr', 'الساعة', 'clock', 'die', 'die Uhren', 'noun', 'Die Uhr zeigt 7 Uhr.', 'The clock shows 7 o''clock.', 'A1', 9),
  ('00000000-0000-4000-a000-00006598ba13', 'die Zeit', 'الوقت', 'time', 'die', NULL, 'noun', 'Ich habe keine Zeit.', 'I have no time.', 'A1', 10),
  ('00000000-0000-4000-a000-00006598ba13', 'Hallo', 'مرحباً', 'hello', NULL, NULL, 'interjection', 'Hallo, wie geht es dir?', 'Hello, how are you?', 'A1', 11),
  ('00000000-0000-4000-a000-00006598ba13', 'Guten Morgen', 'صباح الخير', 'good morning', NULL, NULL, 'phrase', 'Guten Morgen, Herr Müller.', 'Good morning, Mr. Müller.', 'A1', 12),
  ('00000000-0000-4000-a000-00006598ba13', 'Guten Tag', 'نهارك سعيد', 'good day', NULL, NULL, 'phrase', 'Guten Tag, Frau Schmidt.', 'Good day, Mrs. Schmidt.', 'A1', 13),
  ('00000000-0000-4000-a000-00006598ba13', 'Tschüss', 'مع السلامة', 'bye', NULL, NULL, 'interjection', 'Tschüss, bis morgen!', 'Bye, see you tomorrow!', 'A1', 14),
  ('00000000-0000-4000-a000-00006598ba13', 'der Name', 'الاسم', 'name', 'der', 'die Namen', 'noun', 'Mein Name ist Anna.', 'My name is Anna.', 'A1', 15),
  ('00000000-0000-4000-a000-00006598ba13', 'wie', 'كيف', 'how', NULL, NULL, 'adverb', 'Wie heißt du?', 'What is your name?', 'A1', 16),
  ('00000000-0000-4000-a000-00006598ba13', 'freuen', 'يسر', 'to be pleased', NULL, NULL, 'verb', 'Ich freue mich, dich kennenzulernen.', 'I am pleased to meet you.', 'A1', 17),
  ('00000000-0000-4000-a000-00006598ba13', 'Willkommen', 'أهلاً وسهلاً', 'welcome', NULL, NULL, 'interjection', 'Willkommen in Deutschland!', 'Welcome to Germany!', 'A1', 18),
  ('00000000-0000-4000-a000-00006598ba13', 'die Familie', 'العائلة', 'family', 'die', 'die Familien', 'noun', 'Meine Familie ist groß.', 'My family is big.', 'A1', 19),
  ('00000000-0000-4000-a000-00006598ba13', 'der Vater', 'الأب', 'father', 'der', 'die Väter', 'noun', 'Mein Vater ist Ingenieur.', 'My father is an engineer.', 'A1', 20),
  ('00000000-0000-4000-a000-00006598ba13', 'die Mutter', 'الأم', 'mother', 'die', 'die Mütter', 'noun', 'Meine Mutter kocht gut.', 'My mother cooks well.', 'A1', 21),
  ('00000000-0000-4000-a000-00006598ba13', 'der Bruder', 'الأخ', 'brother', 'der', 'die Brüder', 'noun', 'Mein Bruder ist 15 Jahre alt.', 'My brother is 15 years old.', 'A1', 22),
  ('00000000-0000-4000-a000-00006598ba13', 'die Schwester', 'الأخت', 'sister', 'die', 'die Schwestern', 'noun', 'Meine Schwester studiert Medizin.', 'My sister studies medicine.', 'A1', 23),
  ('00000000-0000-4000-a000-00006598ba13', 'die Geschwister', 'الإخوة', 'siblings', 'die', NULL, 'noun', 'Hast du Geschwister?', 'Do you have siblings?', 'A1', 24),
  ('00000000-0000-4000-a000-00006598ba13', 'der Sohn', 'الابن', 'son', 'der', 'die Söhne', 'noun', 'Wir haben einen Sohn.', 'We have a son.', 'A1', 25),
  ('00000000-0000-4000-a000-00006598ba13', 'die Tochter', 'الابنة', 'daughter', 'die', 'die Töchter', 'noun', 'Meine Tochter geht zur Schule.', 'My daughter goes to school.', 'A1', 26),
  ('00000000-0000-4000-a000-00006598ba13', 'die Großeltern', 'الأجداد', 'grandparents', 'die', NULL, 'noun', 'Meine Großeltern wohnen auf dem Land.', 'My grandparents live in the countryside.', 'A1', 27),
  ('00000000-0000-4000-a000-00006598ba13', 'verheiratet', 'متزوج', 'married', NULL, NULL, 'adjective', 'Meine Eltern sind verheiratet.', 'My parents are married.', 'A1', 28),
  ('00000000-0000-4000-a000-00006598ba13', 'das Brot', 'الخبز', 'bread', 'das', 'die Brote', 'noun', 'Ich kaufe ein Brot.', 'I buy a loaf of bread.', 'A1', 29),
  ('00000000-0000-4000-a000-00006598ba13', 'die Milch', 'الحليب', 'milk', 'die', NULL, 'noun', 'Die Milch ist frisch.', 'The milk is fresh.', 'A1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006598ba13', 'Präsens der regelmäßigen Verben (Present Tense) / المضارع للأفعال المنتظمة', 'In German, regular verbs follow a consistent pattern. The infinitive ends in -en. Remove the -en and add the personal endings: ich -e, du -st, er/sie/es -t, wir -en, ihr -t, sie/Sie -en. For most Arabic speakers, this is easier than Arabic verb conjugation because German has fewer forms.', '[{"rule":"ich: stem + e","note":"Ich lerne, ich wohne, ich arbeite"},{"rule":"du: stem + st","note":"Du lernst, du wohnst, du arbeitest"},{"rule":"er/sie/es: stem + t","note":"Er lernt, sie wohnt, es arbeitet"},{"rule":"wir: stem + en","note":"Wir lernen, wir wohnen, wir arbeiten"},{"rule":"ihr: stem + t","note":"Ihr lernt, ihr wohnt, ihr arbeitet"},{"rule":"sie/Sie: stem + en","note":"Sie lernen, Sie wohnen"}]', '[{"german":"Ich lerne Deutsch.","arabic":"أنا أتعلم الألمانية.","english":"I am learning German."},{"german":"Du wohnst in Berlin.","arabic":"أنت تسكن في برلين.","english":"You live in Berlin."},{"german":"Er arbeitet bei Siemens.","arabic":"هو يعمل في سيمنز.","english":"He works at Siemens."}]', '[{"mistake":"Ich lernen Deutsch","correction":"Ich lerne Deutsch","explanation":"After \"ich\" we use the stem + e, not the infinitive."},{"mistake":"Er lerne Deutsch","correction":"Er lernt Deutsch","explanation":"After \"er/sie/es\" we add -t, not -e."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006598ba13', 'multiple_choice', 'What does "aufstehen" mean?', '["The","A","This","That"]', 'The', 'This is a basic vocabulary item.', 1, 1),
  ('00000000-0000-4000-a000-00006598ba13', 'fill_gap', 'Complete with the correct form.', '["Option 1","Option 2","Option 3"]', 'Option 1', 'Practice grammar in context.', 1, 2),
  ('00000000-0000-4000-a000-00006598ba13', 'translation', 'Translate: "I learn German."', '["Ich lerne Deutsch.","Ich lerne Englisch.","Ich lerne Spanisch."]', 'Ich lerne Deutsch.', 'Ich = I, lerne = learn/learning, Deutsch = German.', 2, 3),
  ('00000000-0000-4000-a000-00006598ba13', 'sentence_order', 'Order the sentence.', '[]', 'Ich lerne Deutsch.', 'Subject + verb + object in German.', 2, 4),
  ('00000000-0000-4000-a000-00006598ba13', 'matching', 'Match the words with their meanings.', '["Match pairs correctly"]', 'Correct pairs', 'Test your vocabulary knowledge.', 2, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-00006598ba13', 'multiple_choice', 'What is the main topic of this lesson?', '["Telling Time","Sports","Music","Travel"]', 'Telling Time', 1, 1),
  ('00000000-0000-4000-a000-00006598ba13', 'true_false', 'This lesson teaches vocabulary about Telling Time.', '["True","False"]', 'True', 1, 2),
  ('00000000-0000-4000-a000-00006598ba13', 'true_false', 'German word order is always the same as English.', '["True","False"]', 'False', 1, 3),
  ('00000000-0000-4000-a000-00006598ba13', 'multiple_choice', 'How do you say "please" in German?', '["Danke","Bitte","Tschüss","Hallo"]', 'Bitte', 1, 4),
  ('00000000-0000-4000-a000-00006598ba13', 'multiple_choice', 'Which article is feminine?', '["der","die","das","den"]', 'die', 1, 5),
  ('00000000-0000-4000-a000-00006598ba13', 'fill_blank', 'Ich ___ (to be) Student.', '["bin","bist","ist","sind"]', 'bin', 1, 6),
  ('00000000-0000-4000-a000-00006598ba13', 'multiple_choice', 'What is the correct word order?', '["Ich lerne Deutsch","Ich Deutsch lerne","Lerne ich Deutsch","Deutsch ich lerne"]', 'Ich lerne Deutsch', 1, 7),
  ('00000000-0000-4000-a000-00006598ba13', 'true_false', 'All German nouns are capitalized.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-00006598ba13', 'multiple_choice', 'How do you say "thank you" in German?', '["Bitte","Danke","Tschüss","Hallo"]', 'Danke', 1, 9),
  ('00000000-0000-4000-a000-00006598ba13', 'fill_blank', 'Wo ___ du? (to live)', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 1, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-00006598ba13', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Familie und Alltag', 'formal', false, 1),
  ('00000000-0000-4000-a000-00006598ba13', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Familie und Alltag', 'informal', false, 2),
  ('00000000-0000-4000-a000-00006598ba13', 'Bitte!', 'Please!', 'من فضلك!', 'Used in Familie und Alltag', 'neutral', false, 3),
  ('00000000-0000-4000-a000-00006598ba13', 'Danke!', 'Thanks!', 'شكراً!', 'Used in Familie und Alltag', 'neutral', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-00006598ba13', 'Hallo', 'Hello', 'Greeting', 'expression', 1),
  ('00000000-0000-4000-a000-00006598ba13', 'Danke', 'Thanks', 'Politeness', 'expression', 2),
  ('00000000-0000-4000-a000-00006598ba13', 'Bitte', 'Please', 'Politeness', 'expression', 3),
  ('00000000-0000-4000-a000-00006598ba13', 'Tschüss', 'Bye', 'Farewell', 'expression', 4);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-00006598ba13', 'Die Uhrzeit — Leseübung', 'Mein Tagesablauf beginnt um 6 Uhr. Ich stehe auf und dusche. Dann frühstücke ich. Ich esse Brot mit Käse und trinke Kaffee. Um 7 Uhr gehe ich zur Arbeit. Ich arbeite in einem Büro. Um 12 Uhr esse ich zu Mittag. Nach der Arbeit gehe ich nach Hause. Am Abend sehe ich fern oder lese ein Buch. Um 22 Uhr gehe ich ins Bett. Das ist mein Tag.', 'My daily routine starts at 6 o''clock. I get up and shower. Then I have breakfast. I eat bread with cheese and drink coffee. At 7 o''clock I go to work. I work in an office. At 12 o''clock I have lunch. After work I go home. In the evening I watch TV or read a book. At 10 PM I go to bed. That''s my day.', 'روتيني اليومي يبدأ في الساعة 6. أستيقظ وأستحم. ثم أتناول الفطور. آكل خبزاً مع الجبن وأشرب قهوة. في الساعة 7 أذهب إلى العمل. أعمل في مكتب. في الساعة 12 أتناول الغداء. بعد العمل أعود إلى المنزل. في المساء أشاهد التلفاز أو أقرأ كتاباً. في الساعة 10 أذهب إلى النوم. هذا هو يومي.', 68, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, duration_seconds, speaker_count, scenario) values
  ('00000000-0000-4000-a000-00006598ba13', 'Die Uhrzeit — Hörverständnis', '[Lukas]: Hey Marie, wann stehst du normalerweise auf?

[Marie]: Ich stehe um 6 Uhr auf. Ich dusche und frühstücke dann.

[Lukas]: Und wann gehst du zur Arbeit?

[Marie]: Um 7 Uhr gehe ich los. Die Arbeit beginnt um 8 Uhr.

[Lukas]: Und was machst du am Abend?

[Marie]: Ich treffe Freunde oder lese ein Buch. Um 22 Uhr gehe ich ins Bett.', '[Lukas]: Hey Marie, when do you usually get up?

[Marie]: I get up at 6 o''clock. I shower and then have breakfast.

[Lukas]: And when do you go to work?

[Marie]: I leave at 7 o''clock. Work starts at 8 o''clock.

[Lukas]: And what do you do in the evening?

[Marie]: I meet friends or read a book. At 10 PM I go to bed.', '[Lukas]: مرحباً ماري، متى تستيقظين عادةً؟

[Marie]: أستيقظ في الساعة 6. ثم أستحم وأتناول الفطور.

[Lukas]: ومتى تذهبين إلى العمل؟

[Marie]: أغادر في الساعة 7. العمل يبدأ في الساعة 8.

[Lukas]: وماذا تفعلين في المساء؟

[Marie]: ألتقي بأصدقائي أو أقرأ كتاباً. في الساعة 10 أذهب إلى النوم.', 72, 2, 'Familie und Alltag');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-00006598ba13', 'Speaking: Die Uhrzeit', 'Practice talking about Telling Time. Answer questions and have a simple conversation.', 'Telling Time', ARRAY['Use full sentences','Speak clearly','Don''t worry about mistakes']::text[], ARRAY['aufstehen','frühstücken','arbeiten','der Morgen','der Abend']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-00006598ba13', 'Writing: Die Uhrzeit', 'Write a short text about Telling Time. Use at least 5 vocabulary words from this lesson.', ARRAY['Start with a greeting','Use the vocabulary from this lesson','Check your grammar']::text[], ARRAY['aufstehen','frühstücken','arbeiten']::text[], '["Sentence structure","Vocabulary usage"]', 50, 150, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00006598ba13', 'Die Uhrzeit — Roleplay', 'Telling Time', 'Student', 'Teacher', 'Practice conversation about Telling Time', 'Hallo! Lass uns über dieses Thema sprechen.', 'beginner', 1, ARRAY['aufstehen','frühstücken','arbeiten','der Morgen','der Abend','schlafen','die Arbeit','gehen']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00006598ba13', 'Die Uhrzeit — Advanced Roleplay', 'Telling Time', 'Customer', 'Assistant', 'Extended conversation about Telling Time', 'Guten Tag! Wie kann ich Ihnen helfen?', 'beginner', 2, ARRAY['aufstehen','frühstücken','arbeiten','der Morgen','der Abend','schlafen','die Arbeit','gehen']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-00006598ba13', 'Die Uhrzeit — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Die Uhrzeit".', 'Creative practice for Telling Time', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-00006598ba13', 'Homework: Die Uhrzeit', 'Complete these tasks to reinforce "Die Uhrzeit".', 'mixed', '[{"description":"Review all vocabulary from this lesson"},{"description":"Write 5 sentences using the grammar structure"},{"description":"Practice the dialogue aloud"}]', 35, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-00006598ba13', 'In this lesson you learned about Telling Time. You practiced vocabulary related to daily_routine and grammar structure present_tense.', '["Mastered vocabulary about Telling Time","Applied present_tense correctly","Read and understood a text about Telling Time","Practiced speaking about Telling Time"]', '[{"title":"Die Uhrzeit Review","summary":"present_tense — the main grammar focus of this lesson."}]', ARRAY['Telling Time core vocabulary','daily_routine key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)','Verb is always in second position']::text[], ARRAY['Practice 15-20 minutes daily','Use new vocabulary in real sentences','Speak out loud to improve pronunciation']::text[]);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006598ba13', 'Pronunciation: German pronunciation basics', 'German is mostly phonetic. Pronounce each letter.

Common mistake for Arabic speakers: Pronouncing every letter as in English.', '[]', '[{"german":"ja","arabic":"","english":"","phonetic":"/jaː/"},{"german":"nein","arabic":"","english":"","phonetic":"/naɪn/"}]', '[]', 10);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006598ba13', 'translation', 'Translate to German: "This is a translation exercise."', '[]', 'Das ist eine Übersetzungsübung.', 'Use "das ist" for "this is"', 1, 40);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006598ba13', 'Culture: Telling Time in German-Speaking Countries', 'Learn how Telling Time is approached in German culture.

تعلم كيف يتم التعامل مع Telling Time في الثقافة الألمانية.', '["Tip: Be direct and polite","Tip: Use formal language with strangers","Tip: Respect punctuality"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006598ba13', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Common error for Arabic speakers","correction":"Correct version","explanation":"Explanation of the error"}]', 30);

  -- Lesson 5: Meine Familie vorstellen (L-A1-02-05)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-00006598ba14', '00000000-0000-4000-a000-000039b4d35f', 'Meine Familie vorstellen', 'Practice introducing and describing your family.', 'Family Introduction', 'speaking', '["Understand and use vocabulary related to Family Introduction","Apply possessive_articles correctly","Read and comprehend a text about Family Introduction","Listen and understand a dialogue about Family Introduction","Speak about Family Introduction in simple sentences","Write a short text about Family Introduction"]', 20, 5, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-00006598ba14', 'die Familie', 'العائلة', 'family', 'die', 'die Familien', 'noun', 'Meine Familie ist groß.', 'My family is big.', 'A1', 1),
  ('00000000-0000-4000-a000-00006598ba14', 'der Vater', 'الأب', 'father', 'der', 'die Väter', 'noun', 'Mein Vater ist Ingenieur.', 'My father is an engineer.', 'A1', 2),
  ('00000000-0000-4000-a000-00006598ba14', 'die Mutter', 'الأم', 'mother', 'die', 'die Mütter', 'noun', 'Meine Mutter kocht gut.', 'My mother cooks well.', 'A1', 3),
  ('00000000-0000-4000-a000-00006598ba14', 'der Bruder', 'الأخ', 'brother', 'der', 'die Brüder', 'noun', 'Mein Bruder ist 15 Jahre alt.', 'My brother is 15 years old.', 'A1', 4),
  ('00000000-0000-4000-a000-00006598ba14', 'die Schwester', 'الأخت', 'sister', 'die', 'die Schwestern', 'noun', 'Meine Schwester studiert Medizin.', 'My sister studies medicine.', 'A1', 5),
  ('00000000-0000-4000-a000-00006598ba14', 'die Geschwister', 'الإخوة', 'siblings', 'die', NULL, 'noun', 'Hast du Geschwister?', 'Do you have siblings?', 'A1', 6),
  ('00000000-0000-4000-a000-00006598ba14', 'der Sohn', 'الابن', 'son', 'der', 'die Söhne', 'noun', 'Wir haben einen Sohn.', 'We have a son.', 'A1', 7),
  ('00000000-0000-4000-a000-00006598ba14', 'die Tochter', 'الابنة', 'daughter', 'die', 'die Töchter', 'noun', 'Meine Tochter geht zur Schule.', 'My daughter goes to school.', 'A1', 8),
  ('00000000-0000-4000-a000-00006598ba14', 'die Großeltern', 'الأجداد', 'grandparents', 'die', NULL, 'noun', 'Meine Großeltern wohnen auf dem Land.', 'My grandparents live in the countryside.', 'A1', 9),
  ('00000000-0000-4000-a000-00006598ba14', 'verheiratet', 'متزوج', 'married', NULL, NULL, 'adjective', 'Meine Eltern sind verheiratet.', 'My parents are married.', 'A1', 10),
  ('00000000-0000-4000-a000-00006598ba14', 'Hallo', 'مرحباً', 'hello', NULL, NULL, 'interjection', 'Hallo, wie geht es dir?', 'Hello, how are you?', 'A1', 11),
  ('00000000-0000-4000-a000-00006598ba14', 'Guten Morgen', 'صباح الخير', 'good morning', NULL, NULL, 'phrase', 'Guten Morgen, Herr Müller.', 'Good morning, Mr. Müller.', 'A1', 12),
  ('00000000-0000-4000-a000-00006598ba14', 'Guten Tag', 'نهارك سعيد', 'good day', NULL, NULL, 'phrase', 'Guten Tag, Frau Schmidt.', 'Good day, Mrs. Schmidt.', 'A1', 13),
  ('00000000-0000-4000-a000-00006598ba14', 'Tschüss', 'مع السلامة', 'bye', NULL, NULL, 'interjection', 'Tschüss, bis morgen!', 'Bye, see you tomorrow!', 'A1', 14),
  ('00000000-0000-4000-a000-00006598ba14', 'der Name', 'الاسم', 'name', 'der', 'die Namen', 'noun', 'Mein Name ist Anna.', 'My name is Anna.', 'A1', 15),
  ('00000000-0000-4000-a000-00006598ba14', 'wie', 'كيف', 'how', NULL, NULL, 'adverb', 'Wie heißt du?', 'What is your name?', 'A1', 16),
  ('00000000-0000-4000-a000-00006598ba14', 'freuen', 'يسر', 'to be pleased', NULL, NULL, 'verb', 'Ich freue mich, dich kennenzulernen.', 'I am pleased to meet you.', 'A1', 17),
  ('00000000-0000-4000-a000-00006598ba14', 'Willkommen', 'أهلاً وسهلاً', 'welcome', NULL, NULL, 'interjection', 'Willkommen in Deutschland!', 'Welcome to Germany!', 'A1', 18),
  ('00000000-0000-4000-a000-00006598ba14', 'das Brot', 'الخبز', 'bread', 'das', 'die Brote', 'noun', 'Ich kaufe ein Brot.', 'I buy a loaf of bread.', 'A1', 19),
  ('00000000-0000-4000-a000-00006598ba14', 'die Milch', 'الحليب', 'milk', 'die', NULL, 'noun', 'Die Milch ist frisch.', 'The milk is fresh.', 'A1', 20),
  ('00000000-0000-4000-a000-00006598ba14', 'der Käse', 'الجبن', 'cheese', 'der', NULL, 'noun', 'Der Käse schmeckt gut.', 'The cheese tastes good.', 'A1', 21),
  ('00000000-0000-4000-a000-00006598ba14', 'der Apfel', 'التفاح', 'apple', 'der', 'die Äpfel', 'noun', 'Der Apfel ist rot.', 'The apple is red.', 'A1', 22),
  ('00000000-0000-4000-a000-00006598ba14', 'das Ei', 'البيضة', 'egg', 'das', 'die Eier', 'noun', 'Ich esse ein Ei zum Frühstück.', 'I eat an egg for breakfast.', 'A1', 23),
  ('00000000-0000-4000-a000-00006598ba14', 'das Obst', 'الفاكهة', 'fruit', 'das', NULL, 'noun', 'Obst ist gesund.', 'Fruit is healthy.', 'A1', 24),
  ('00000000-0000-4000-a000-00006598ba14', 'das Gemüse', 'الخضروات', 'vegetables', 'das', NULL, 'noun', 'Ich kaufe Gemüse auf dem Markt.', 'I buy vegetables at the market.', 'A1', 25),
  ('00000000-0000-4000-a000-00006598ba14', 'kochen', 'يطبخ', 'to cook', NULL, NULL, 'verb', 'Meine Mutter kocht gut.', 'My mother cooks well.', 'A1', 26),
  ('00000000-0000-4000-a000-00006598ba14', 'der Fisch', 'السمك', 'fish', 'der', 'die Fische', 'noun', 'Der Fisch ist frisch.', 'The fish is fresh.', 'A1', 27),
  ('00000000-0000-4000-a000-00006598ba14', 'das Fleisch', 'اللحم', 'meat', 'das', NULL, 'noun', 'Ich esse nicht viel Fleisch.', 'I do not eat much meat.', 'A1', 28),
  ('00000000-0000-4000-a000-00006598ba14', 'das Haus', 'البيت', 'house', 'das', 'die Häuser', 'noun', 'Das Haus ist groß.', 'The house is big.', 'A1', 29),
  ('00000000-0000-4000-a000-00006598ba14', 'die Wohnung', 'الشقة', 'apartment', 'die', 'die Wohnungen', 'noun', 'Meine Wohnung hat drei Zimmer.', 'My apartment has three rooms.', 'A1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006598ba14', 'Possessivartikel (Possessive Articles) / أدوات الملكية', 'Possessive articles show ownership. They change based on the owner AND the gender of the object. mein (my), dein (your), sein (his), ihr (her), unser (our), euer (your plural), Ihr (your formal). The ending changes: add -e for feminine.', '[{"rule":"mein Vater/meine Mutter","note":"Masculine stays mein, feminine uses meine"},{"rule":"dein Bruder/deine Schwester","note":"Same pattern for all possessive articles"},{"rule":"Ihr (capital I) = formal your","note":"Distinguish from ihr (lowercase) = her"}]', '[{"german":"Mein Vater heißt Thomas.","arabic":"والدي اسمه توماس.","english":"My father is called Thomas."},{"german":"Deine Mutter ist nett.","arabic":"أمك لطيفة.","english":"Your mother is nice."},{"german":"Sein Bruder studiert in Berlin.","arabic":"أخوه يدرس في برلين.","english":"His brother studies in Berlin."}]', '[{"mistake":"Mein Mutter / mein Schwester","correction":"Meine Mutter / meine Schwester","explanation":"Feminine nouns need the -e ending: meine."},{"mistake":"Ihr (capital) vs ihr (lowercase)","correction":"Ihr = formal you, ihr = her","explanation":"Capitalization changes meaning completely!"}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006598ba14', 'multiple_choice', 'What does "die Familie" mean?', '["The","A","This","That"]', 'The', 'This is a basic vocabulary item.', 1, 1),
  ('00000000-0000-4000-a000-00006598ba14', 'fill_gap', 'Complete with the correct form.', '["Option 1","Option 2","Option 3"]', 'Option 1', 'Practice grammar in context.', 1, 2),
  ('00000000-0000-4000-a000-00006598ba14', 'translation', 'Translate: "I learn German."', '["Ich lerne Deutsch.","Ich lerne Englisch.","Ich lerne Spanisch."]', 'Ich lerne Deutsch.', 'Ich = I, lerne = learn/learning, Deutsch = German.', 2, 3),
  ('00000000-0000-4000-a000-00006598ba14', 'sentence_order', 'Order the sentence.', '[]', 'Ich lerne Deutsch.', 'Subject + verb + object in German.', 2, 4),
  ('00000000-0000-4000-a000-00006598ba14', 'matching', 'Match the words with their meanings.', '["Match pairs correctly"]', 'Correct pairs', 'Test your vocabulary knowledge.', 2, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-00006598ba14', 'multiple_choice', 'What is the main topic of this lesson?', '["Family Introduction","Sports","Music","Travel"]', 'Family Introduction', 1, 1),
  ('00000000-0000-4000-a000-00006598ba14', 'true_false', 'This lesson teaches vocabulary about Family Introduction.', '["True","False"]', 'True', 1, 2),
  ('00000000-0000-4000-a000-00006598ba14', 'true_false', 'German word order is always the same as English.', '["True","False"]', 'False', 1, 3),
  ('00000000-0000-4000-a000-00006598ba14', 'multiple_choice', 'How do you say "please" in German?', '["Danke","Bitte","Tschüss","Hallo"]', 'Bitte', 1, 4),
  ('00000000-0000-4000-a000-00006598ba14', 'multiple_choice', 'Which article is feminine?', '["der","die","das","den"]', 'die', 1, 5),
  ('00000000-0000-4000-a000-00006598ba14', 'fill_blank', 'Ich ___ (to be) Student.', '["bin","bist","ist","sind"]', 'bin', 1, 6),
  ('00000000-0000-4000-a000-00006598ba14', 'multiple_choice', 'What is the correct word order?', '["Ich lerne Deutsch","Ich Deutsch lerne","Lerne ich Deutsch","Deutsch ich lerne"]', 'Ich lerne Deutsch', 1, 7),
  ('00000000-0000-4000-a000-00006598ba14', 'true_false', 'All German nouns are capitalized.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-00006598ba14', 'multiple_choice', 'How do you say "thank you" in German?', '["Bitte","Danke","Tschüss","Hallo"]', 'Danke', 1, 9),
  ('00000000-0000-4000-a000-00006598ba14', 'fill_blank', 'Wo ___ du? (to live)', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 1, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-00006598ba14', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Familie und Alltag', 'formal', false, 1),
  ('00000000-0000-4000-a000-00006598ba14', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Familie und Alltag', 'informal', false, 2),
  ('00000000-0000-4000-a000-00006598ba14', 'Bitte!', 'Please!', 'من فضلك!', 'Used in Familie und Alltag', 'neutral', false, 3),
  ('00000000-0000-4000-a000-00006598ba14', 'Danke!', 'Thanks!', 'شكراً!', 'Used in Familie und Alltag', 'neutral', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-00006598ba14', 'Hallo', 'Hello', 'Greeting', 'expression', 1),
  ('00000000-0000-4000-a000-00006598ba14', 'Danke', 'Thanks', 'Politeness', 'expression', 2),
  ('00000000-0000-4000-a000-00006598ba14', 'Bitte', 'Please', 'Politeness', 'expression', 3),
  ('00000000-0000-4000-a000-00006598ba14', 'Tschüss', 'Bye', 'Farewell', 'expression', 4);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-00006598ba14', 'Meine Familie vorstellen — Leseübung', 'Hallo! Ich heiße Ahmed und komme aus Syrien. Meine Familie wohnt in Köln. Ich habe einen Bruder und zwei Schwestern. Mein Bruder heißt Omar und ist 20 Jahre alt. Meine Schwestern heißen Fatima und Aisha. Meine Mutter ist Ärztin. Mein Vater arbeitet als Lehrer. Wir haben auch eine Katze. Sie heißt Mimi. Am Wochenende besuchen wir unsere Großeltern. Meine Großmutter kocht sehr gut. Ich liebe meine Familie.', 'Hello! My name is Ahmed and I come from Syria. My family lives in Cologne. I have one brother and two sisters. My brother is called Omar and is 20 years old. My sisters are called Fatima and Aisha. My mother is a doctor. My father works as a teacher. We also have a cat. She is called Mimi. On weekends we visit our grandparents. My grandmother cooks very well. I love my family.', 'مرحباً! اسمي أحمد وأنا من سوريا. عائلتي تسكن في كولونيا. لدي أخ واحد وأختان. أخي اسمه عمر وعمره 20 سنة. أختاي اسمهما فاطمة وعائشة. أمي طبيبة. والدي يعمل معلماً. لدينا أيضاً قطة. اسمها ميمي. في عطلة نهاية الأسبوع نزور أجدادنا. جدتي تطبخ جيداً جداً. أحب عائلتي.', 67, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, duration_seconds, speaker_count, scenario) values
  ('00000000-0000-4000-a000-00006598ba14', 'Meine Familie vorstellen — Hörverständnis', '[Anna]: Hallo Ben! Hast du Geschwister?

[Ben]: Ja, ich habe einen Bruder und eine Schwester.

[Anna]: Wie alt sind deine Geschwister?

[Ben]: Mein Bruder ist 15 und meine Schwester ist 20.

[Anna]: Und deine Eltern? Was machen sie?

[Ben]: Mein Vater ist Lehrer und meine Mutter ist Ärztin.', '[Anna]: Hello Ben! Do you have siblings?

[Ben]: Yes, I have a brother and a sister.

[Anna]: How old are your siblings?

[Ben]: My brother is 15 and my sister is 20.

[Anna]: And your parents? What do they do?

[Ben]: My father is a teacher and my mother is a doctor.', '[Anna]: مرحباً بن! هل لديك أخوة؟

[Ben]: نعم، لدي أخ وأخت.

[Anna]: كم عمر أخوتك؟

[Ben]: أخي عمره 15 وأختي عمرها 20.

[Anna]: ووالديك؟ ماذا يعملان؟

[Ben]: والدي معلم ووالدتي طبيبة.', 72, 2, 'Familie und Alltag');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-00006598ba14', 'Speaking: Meine Familie vorstellen', 'Practice talking about Family Introduction. Answer questions and have a simple conversation.', 'Family Introduction', ARRAY['Use full sentences','Speak clearly','Don''t worry about mistakes']::text[], ARRAY['die Familie','der Vater','die Mutter','der Bruder','die Schwester']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-00006598ba14', 'Writing: Meine Familie vorstellen', 'Write a short text about Family Introduction. Use at least 5 vocabulary words from this lesson.', ARRAY['Start with a greeting','Use the vocabulary from this lesson','Check your grammar']::text[], ARRAY['die Familie','der Vater','die Mutter']::text[], '["Sentence structure","Vocabulary usage"]', 50, 150, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00006598ba14', 'Meine Familie vorstellen — Roleplay', 'Family Introduction', 'Student', 'Teacher', 'Practice conversation about Family Introduction', 'Hallo! Lass uns über dieses Thema sprechen.', 'beginner', 1, ARRAY['die Familie','der Vater','die Mutter','der Bruder','die Schwester','die Geschwister','der Sohn','die Tochter']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00006598ba14', 'Meine Familie vorstellen — Advanced Roleplay', 'Family Introduction', 'Customer', 'Assistant', 'Extended conversation about Family Introduction', 'Guten Tag! Wie kann ich Ihnen helfen?', 'beginner', 2, ARRAY['die Familie','der Vater','die Mutter','der Bruder','die Schwester','die Geschwister','der Sohn','die Tochter']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-00006598ba14', 'Meine Familie vorstellen — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Meine Familie vorstellen".', 'Creative practice for Family Introduction', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-00006598ba14', 'Homework: Meine Familie vorstellen', 'Complete these tasks to reinforce "Meine Familie vorstellen".', 'mixed', '[{"description":"Review all vocabulary from this lesson"},{"description":"Write 5 sentences using the grammar structure"},{"description":"Practice the dialogue aloud"}]', 35, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-00006598ba14', 'In this lesson you learned about Family Introduction. You practiced vocabulary related to family and grammar structure possessive_articles.', '["Mastered vocabulary about Family Introduction","Applied possessive_articles correctly","Read and understood a text about Family Introduction","Practiced speaking about Family Introduction"]', '[{"title":"Meine Familie vorstellen Review","summary":"possessive_articles — the main grammar focus of this lesson."}]', ARRAY['Family Introduction core vocabulary','family key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)','Verb is always in second position']::text[], ARRAY['Practice 15-20 minutes daily','Use new vocabulary in real sentences','Speak out loud to improve pronunciation']::text[]);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006598ba14', 'Pronunciation: German pronunciation basics', 'German is mostly phonetic. Pronounce each letter.

Common mistake for Arabic speakers: Pronouncing every letter as in English.', '[]', '[{"german":"ja","arabic":"","english":"","phonetic":"/jaː/"},{"german":"nein","arabic":"","english":"","phonetic":"/naɪn/"}]', '[]', 10);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006598ba14', 'translation', 'Translate to German: "This is a translation exercise."', '[]', 'Das ist eine Übersetzungsübung.', 'Use "das ist" for "this is"', 1, 40);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006598ba14', 'Culture: Family Introduction in German-Speaking Countries', 'Learn how Family Introduction is approached in German culture.

تعلم كيف يتم التعامل مع Family Introduction في الثقافة الألمانية.', '["Tip: Be direct and polite","Tip: Use formal language with strangers","Tip: Respect punctuality"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006598ba14', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Common error for Arabic speakers","correction":"Correct version","explanation":"Explanation of the error"}]', 30);

  -- Lesson 6: Test: Familie und Alltag (L-A1-02-06)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-00006598ba15', '00000000-0000-4000-a000-000039b4d35f', 'Test: Familie und Alltag', 'Test your knowledge of Module 2.', 'Module Test', 'test', '["Understand and use vocabulary related to Module Test","Apply present_tense correctly","Read and comprehend a text about Module Test","Listen and understand a dialogue about Module Test","Speak about Module Test in simple sentences","Write a short text about Module Test"]', 25, 6, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-00006598ba15', 'die Familie', 'العائلة', 'family', 'die', 'die Familien', 'noun', 'Meine Familie ist groß.', 'My family is big.', 'A1', 1),
  ('00000000-0000-4000-a000-00006598ba15', 'der Vater', 'الأب', 'father', 'der', 'die Väter', 'noun', 'Mein Vater ist Ingenieur.', 'My father is an engineer.', 'A1', 2),
  ('00000000-0000-4000-a000-00006598ba15', 'die Mutter', 'الأم', 'mother', 'die', 'die Mütter', 'noun', 'Meine Mutter kocht gut.', 'My mother cooks well.', 'A1', 3),
  ('00000000-0000-4000-a000-00006598ba15', 'der Bruder', 'الأخ', 'brother', 'der', 'die Brüder', 'noun', 'Mein Bruder ist 15 Jahre alt.', 'My brother is 15 years old.', 'A1', 4),
  ('00000000-0000-4000-a000-00006598ba15', 'die Schwester', 'الأخت', 'sister', 'die', 'die Schwestern', 'noun', 'Meine Schwester studiert Medizin.', 'My sister studies medicine.', 'A1', 5),
  ('00000000-0000-4000-a000-00006598ba15', 'die Geschwister', 'الإخوة', 'siblings', 'die', NULL, 'noun', 'Hast du Geschwister?', 'Do you have siblings?', 'A1', 6),
  ('00000000-0000-4000-a000-00006598ba15', 'der Sohn', 'الابن', 'son', 'der', 'die Söhne', 'noun', 'Wir haben einen Sohn.', 'We have a son.', 'A1', 7),
  ('00000000-0000-4000-a000-00006598ba15', 'die Tochter', 'الابنة', 'daughter', 'die', 'die Töchter', 'noun', 'Meine Tochter geht zur Schule.', 'My daughter goes to school.', 'A1', 8),
  ('00000000-0000-4000-a000-00006598ba15', 'die Großeltern', 'الأجداد', 'grandparents', 'die', NULL, 'noun', 'Meine Großeltern wohnen auf dem Land.', 'My grandparents live in the countryside.', 'A1', 9),
  ('00000000-0000-4000-a000-00006598ba15', 'verheiratet', 'متزوج', 'married', NULL, NULL, 'adjective', 'Meine Eltern sind verheiratet.', 'My parents are married.', 'A1', 10),
  ('00000000-0000-4000-a000-00006598ba15', 'Hallo', 'مرحباً', 'hello', NULL, NULL, 'interjection', 'Hallo, wie geht es dir?', 'Hello, how are you?', 'A1', 11),
  ('00000000-0000-4000-a000-00006598ba15', 'Guten Morgen', 'صباح الخير', 'good morning', NULL, NULL, 'phrase', 'Guten Morgen, Herr Müller.', 'Good morning, Mr. Müller.', 'A1', 12),
  ('00000000-0000-4000-a000-00006598ba15', 'Guten Tag', 'نهارك سعيد', 'good day', NULL, NULL, 'phrase', 'Guten Tag, Frau Schmidt.', 'Good day, Mrs. Schmidt.', 'A1', 13),
  ('00000000-0000-4000-a000-00006598ba15', 'Tschüss', 'مع السلامة', 'bye', NULL, NULL, 'interjection', 'Tschüss, bis morgen!', 'Bye, see you tomorrow!', 'A1', 14),
  ('00000000-0000-4000-a000-00006598ba15', 'der Name', 'الاسم', 'name', 'der', 'die Namen', 'noun', 'Mein Name ist Anna.', 'My name is Anna.', 'A1', 15),
  ('00000000-0000-4000-a000-00006598ba15', 'wie', 'كيف', 'how', NULL, NULL, 'adverb', 'Wie heißt du?', 'What is your name?', 'A1', 16),
  ('00000000-0000-4000-a000-00006598ba15', 'freuen', 'يسر', 'to be pleased', NULL, NULL, 'verb', 'Ich freue mich, dich kennenzulernen.', 'I am pleased to meet you.', 'A1', 17),
  ('00000000-0000-4000-a000-00006598ba15', 'Willkommen', 'أهلاً وسهلاً', 'welcome', NULL, NULL, 'interjection', 'Willkommen in Deutschland!', 'Welcome to Germany!', 'A1', 18),
  ('00000000-0000-4000-a000-00006598ba15', 'das Brot', 'الخبز', 'bread', 'das', 'die Brote', 'noun', 'Ich kaufe ein Brot.', 'I buy a loaf of bread.', 'A1', 19),
  ('00000000-0000-4000-a000-00006598ba15', 'die Milch', 'الحليب', 'milk', 'die', NULL, 'noun', 'Die Milch ist frisch.', 'The milk is fresh.', 'A1', 20),
  ('00000000-0000-4000-a000-00006598ba15', 'der Käse', 'الجبن', 'cheese', 'der', NULL, 'noun', 'Der Käse schmeckt gut.', 'The cheese tastes good.', 'A1', 21),
  ('00000000-0000-4000-a000-00006598ba15', 'der Apfel', 'التفاح', 'apple', 'der', 'die Äpfel', 'noun', 'Der Apfel ist rot.', 'The apple is red.', 'A1', 22),
  ('00000000-0000-4000-a000-00006598ba15', 'das Ei', 'البيضة', 'egg', 'das', 'die Eier', 'noun', 'Ich esse ein Ei zum Frühstück.', 'I eat an egg for breakfast.', 'A1', 23),
  ('00000000-0000-4000-a000-00006598ba15', 'das Obst', 'الفاكهة', 'fruit', 'das', NULL, 'noun', 'Obst ist gesund.', 'Fruit is healthy.', 'A1', 24),
  ('00000000-0000-4000-a000-00006598ba15', 'das Gemüse', 'الخضروات', 'vegetables', 'das', NULL, 'noun', 'Ich kaufe Gemüse auf dem Markt.', 'I buy vegetables at the market.', 'A1', 25),
  ('00000000-0000-4000-a000-00006598ba15', 'kochen', 'يطبخ', 'to cook', NULL, NULL, 'verb', 'Meine Mutter kocht gut.', 'My mother cooks well.', 'A1', 26),
  ('00000000-0000-4000-a000-00006598ba15', 'der Fisch', 'السمك', 'fish', 'der', 'die Fische', 'noun', 'Der Fisch ist frisch.', 'The fish is fresh.', 'A1', 27),
  ('00000000-0000-4000-a000-00006598ba15', 'das Fleisch', 'اللحم', 'meat', 'das', NULL, 'noun', 'Ich esse nicht viel Fleisch.', 'I do not eat much meat.', 'A1', 28),
  ('00000000-0000-4000-a000-00006598ba15', 'das Haus', 'البيت', 'house', 'das', 'die Häuser', 'noun', 'Das Haus ist groß.', 'The house is big.', 'A1', 29),
  ('00000000-0000-4000-a000-00006598ba15', 'die Wohnung', 'الشقة', 'apartment', 'die', 'die Wohnungen', 'noun', 'Meine Wohnung hat drei Zimmer.', 'My apartment has three rooms.', 'A1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006598ba15', 'Präsens der regelmäßigen Verben (Present Tense) / المضارع للأفعال المنتظمة', 'In German, regular verbs follow a consistent pattern. The infinitive ends in -en. Remove the -en and add the personal endings: ich -e, du -st, er/sie/es -t, wir -en, ihr -t, sie/Sie -en. For most Arabic speakers, this is easier than Arabic verb conjugation because German has fewer forms.', '[{"rule":"ich: stem + e","note":"Ich lerne, ich wohne, ich arbeite"},{"rule":"du: stem + st","note":"Du lernst, du wohnst, du arbeitest"},{"rule":"er/sie/es: stem + t","note":"Er lernt, sie wohnt, es arbeitet"},{"rule":"wir: stem + en","note":"Wir lernen, wir wohnen, wir arbeiten"},{"rule":"ihr: stem + t","note":"Ihr lernt, ihr wohnt, ihr arbeitet"},{"rule":"sie/Sie: stem + en","note":"Sie lernen, Sie wohnen"}]', '[{"german":"Ich lerne Deutsch.","arabic":"أنا أتعلم الألمانية.","english":"I am learning German."},{"german":"Du wohnst in Berlin.","arabic":"أنت تسكن في برلين.","english":"You live in Berlin."},{"german":"Er arbeitet bei Siemens.","arabic":"هو يعمل في سيمنز.","english":"He works at Siemens."}]', '[{"mistake":"Ich lernen Deutsch","correction":"Ich lerne Deutsch","explanation":"After \"ich\" we use the stem + e, not the infinitive."},{"mistake":"Er lerne Deutsch","correction":"Er lernt Deutsch","explanation":"After \"er/sie/es\" we add -t, not -e."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006598ba15', 'multiple_choice', 'What does "die Familie" mean?', '["The","A","This","That"]', 'The', 'This is a basic vocabulary item.', 1, 1),
  ('00000000-0000-4000-a000-00006598ba15', 'fill_gap', 'Complete with the correct form.', '["Option 1","Option 2","Option 3"]', 'Option 1', 'Practice grammar in context.', 1, 2),
  ('00000000-0000-4000-a000-00006598ba15', 'translation', 'Translate: "I learn German."', '["Ich lerne Deutsch.","Ich lerne Englisch.","Ich lerne Spanisch."]', 'Ich lerne Deutsch.', 'Ich = I, lerne = learn/learning, Deutsch = German.', 2, 3),
  ('00000000-0000-4000-a000-00006598ba15', 'sentence_order', 'Order the sentence.', '[]', 'Ich lerne Deutsch.', 'Subject + verb + object in German.', 2, 4),
  ('00000000-0000-4000-a000-00006598ba15', 'matching', 'Match the words with their meanings.', '["Match pairs correctly"]', 'Correct pairs', 'Test your vocabulary knowledge.', 2, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-00006598ba15', 'multiple_choice', 'What is the main topic of this lesson?', '["Module Test","Sports","Music","Travel"]', 'Module Test', 1, 1),
  ('00000000-0000-4000-a000-00006598ba15', 'true_false', 'This lesson teaches vocabulary about Module Test.', '["True","False"]', 'True', 1, 2),
  ('00000000-0000-4000-a000-00006598ba15', 'true_false', 'German word order is always the same as English.', '["True","False"]', 'False', 1, 3),
  ('00000000-0000-4000-a000-00006598ba15', 'multiple_choice', 'How do you say "please" in German?', '["Danke","Bitte","Tschüss","Hallo"]', 'Bitte', 1, 4),
  ('00000000-0000-4000-a000-00006598ba15', 'multiple_choice', 'Which article is feminine?', '["der","die","das","den"]', 'die', 1, 5),
  ('00000000-0000-4000-a000-00006598ba15', 'fill_blank', 'Ich ___ (to be) Student.', '["bin","bist","ist","sind"]', 'bin', 1, 6),
  ('00000000-0000-4000-a000-00006598ba15', 'multiple_choice', 'What is the correct word order?', '["Ich lerne Deutsch","Ich Deutsch lerne","Lerne ich Deutsch","Deutsch ich lerne"]', 'Ich lerne Deutsch', 1, 7),
  ('00000000-0000-4000-a000-00006598ba15', 'true_false', 'All German nouns are capitalized.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-00006598ba15', 'multiple_choice', 'How do you say "thank you" in German?', '["Bitte","Danke","Tschüss","Hallo"]', 'Danke', 1, 9),
  ('00000000-0000-4000-a000-00006598ba15', 'fill_blank', 'Wo ___ du? (to live)', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 1, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-00006598ba15', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Familie und Alltag', 'formal', false, 1),
  ('00000000-0000-4000-a000-00006598ba15', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Familie und Alltag', 'informal', false, 2),
  ('00000000-0000-4000-a000-00006598ba15', 'Bitte!', 'Please!', 'من فضلك!', 'Used in Familie und Alltag', 'neutral', false, 3),
  ('00000000-0000-4000-a000-00006598ba15', 'Danke!', 'Thanks!', 'شكراً!', 'Used in Familie und Alltag', 'neutral', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-00006598ba15', 'Hallo', 'Hello', 'Greeting', 'expression', 1),
  ('00000000-0000-4000-a000-00006598ba15', 'Danke', 'Thanks', 'Politeness', 'expression', 2),
  ('00000000-0000-4000-a000-00006598ba15', 'Bitte', 'Please', 'Politeness', 'expression', 3),
  ('00000000-0000-4000-a000-00006598ba15', 'Tschüss', 'Bye', 'Farewell', 'expression', 4);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-00006598ba15', 'Test: Familie und Alltag — Leseübung', 'Hallo! Ich heiße Ahmed und komme aus Syrien. Meine Familie wohnt in Köln. Ich habe einen Bruder und zwei Schwestern. Mein Bruder heißt Omar und ist 20 Jahre alt. Meine Schwestern heißen Fatima und Aisha. Meine Mutter ist Ärztin. Mein Vater arbeitet als Lehrer. Wir haben auch eine Katze. Sie heißt Mimi. Am Wochenende besuchen wir unsere Großeltern. Meine Großmutter kocht sehr gut. Ich liebe meine Familie.', 'Hello! My name is Ahmed and I come from Syria. My family lives in Cologne. I have one brother and two sisters. My brother is called Omar and is 20 years old. My sisters are called Fatima and Aisha. My mother is a doctor. My father works as a teacher. We also have a cat. She is called Mimi. On weekends we visit our grandparents. My grandmother cooks very well. I love my family.', 'مرحباً! اسمي أحمد وأنا من سوريا. عائلتي تسكن في كولونيا. لدي أخ واحد وأختان. أخي اسمه عمر وعمره 20 سنة. أختاي اسمهما فاطمة وعائشة. أمي طبيبة. والدي يعمل معلماً. لدينا أيضاً قطة. اسمها ميمي. في عطلة نهاية الأسبوع نزور أجدادنا. جدتي تطبخ جيداً جداً. أحب عائلتي.', 67, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, duration_seconds, speaker_count, scenario) values
  ('00000000-0000-4000-a000-00006598ba15', 'Test: Familie und Alltag — Hörverständnis', '[Anna]: Hallo Ben! Hast du Geschwister?

[Ben]: Ja, ich habe einen Bruder und eine Schwester.

[Anna]: Wie alt sind deine Geschwister?

[Ben]: Mein Bruder ist 15 und meine Schwester ist 20.

[Anna]: Und deine Eltern? Was machen sie?

[Ben]: Mein Vater ist Lehrer und meine Mutter ist Ärztin.', '[Anna]: Hello Ben! Do you have siblings?

[Ben]: Yes, I have a brother and a sister.

[Anna]: How old are your siblings?

[Ben]: My brother is 15 and my sister is 20.

[Anna]: And your parents? What do they do?

[Ben]: My father is a teacher and my mother is a doctor.', '[Anna]: مرحباً بن! هل لديك أخوة؟

[Ben]: نعم، لدي أخ وأخت.

[Anna]: كم عمر أخوتك؟

[Ben]: أخي عمره 15 وأختي عمرها 20.

[Anna]: ووالديك؟ ماذا يعملان؟

[Ben]: والدي معلم ووالدتي طبيبة.', 72, 2, 'Familie und Alltag');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-00006598ba15', 'Speaking: Test: Familie und Alltag', 'Practice talking about Module Test. Answer questions and have a simple conversation.', 'Module Test', ARRAY['Use full sentences','Speak clearly','Don''t worry about mistakes']::text[], ARRAY['die Familie','der Vater','die Mutter','der Bruder','die Schwester']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-00006598ba15', 'Writing: Test: Familie und Alltag', 'Write a short text about Module Test. Use at least 5 vocabulary words from this lesson.', ARRAY['Start with a greeting','Use the vocabulary from this lesson','Check your grammar']::text[], ARRAY['die Familie','der Vater','die Mutter']::text[], '["Sentence structure","Vocabulary usage"]', 50, 150, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00006598ba15', 'Test: Familie und Alltag — Roleplay', 'Module Test', 'Student', 'Teacher', 'Practice conversation about Module Test', 'Hallo! Lass uns über dieses Thema sprechen.', 'beginner', 1, ARRAY['die Familie','der Vater','die Mutter','der Bruder','die Schwester','die Geschwister','der Sohn','die Tochter']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00006598ba15', 'Test: Familie und Alltag — Advanced Roleplay', 'Module Test', 'Customer', 'Assistant', 'Extended conversation about Module Test', 'Guten Tag! Wie kann ich Ihnen helfen?', 'beginner', 2, ARRAY['die Familie','der Vater','die Mutter','der Bruder','die Schwester','die Geschwister','der Sohn','die Tochter']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-00006598ba15', 'Test: Familie und Alltag — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Test: Familie und Alltag".', 'Creative practice for Module Test', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-00006598ba15', 'Homework: Test: Familie und Alltag', 'Complete these tasks to reinforce "Test: Familie und Alltag".', 'mixed', '[{"description":"Review all vocabulary from this lesson"},{"description":"Write 5 sentences using the grammar structure"},{"description":"Practice the dialogue aloud"}]', 35, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-00006598ba15', 'In this lesson you learned about Module Test. You practiced vocabulary related to family and grammar structure present_tense.', '["Mastered vocabulary about Module Test","Applied present_tense correctly","Read and understood a text about Module Test","Practiced speaking about Module Test"]', '[{"title":"Test: Familie und Alltag Review","summary":"present_tense — the main grammar focus of this lesson."}]', ARRAY['Module Test core vocabulary','family key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)','Verb is always in second position']::text[], ARRAY['Practice 15-20 minutes daily','Use new vocabulary in real sentences','Speak out loud to improve pronunciation']::text[]);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006598ba15', 'Pronunciation: German pronunciation basics', 'German is mostly phonetic. Pronounce each letter.

Common mistake for Arabic speakers: Pronouncing every letter as in English.', '[]', '[{"german":"ja","arabic":"","english":"","phonetic":"/jaː/"},{"german":"nein","arabic":"","english":"","phonetic":"/naɪn/"}]', '[]', 10);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006598ba15', 'translation', 'Translate to German: "This is a translation exercise."', '[]', 'Das ist eine Übersetzungsübung.', 'Use "das ist" for "this is"', 1, 40);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006598ba15', 'Culture: Module Test in German-Speaking Countries', 'Learn how Module Test is approached in German culture.

تعلم كيف يتم التعامل مع Module Test في الثقافة الألمانية.', '["Tip: Be direct and polite","Tip: Use formal language with strangers","Tip: Respect punctuality"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006598ba15', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Common error for Arabic speakers","correction":"Correct version","explanation":"Explanation of the error"}]', 30);

  -- Module 3: Wohnen
  insert into public.course_modules (id, level_id, title, description, objectives, order_index, estimated_hours, is_published)
  values ('00000000-0000-4000-a000-000039b4d360', 'A1', 'Wohnen', 'Learn vocabulary about homes, furniture, and describing where you live.', '["Describe your home and rooms","Name furniture and household items","Use definite and indefinite articles","Use adjectives after \"sein\""]', 3, 4, true)
  on conflict (id) do nothing;

  -- Lesson 1: Mein Zuhause (L-A1-03-01)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-000065992e6f', '00000000-0000-4000-a000-000039b4d360', 'Mein Zuhause', 'Learn rooms and basic furniture vocabulary with articles.', 'Home & Rooms', 'vocabulary', '["Understand and use vocabulary related to Home & Rooms","Apply present_tense correctly","Read and comprehend a text about Home & Rooms","Listen and understand a dialogue about Home & Rooms","Speak about Home & Rooms in simple sentences","Write a short text about Home & Rooms"]', 30, 1, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-000065992e6f', 'das Haus', 'البيت', 'house', 'das', 'die Häuser', 'noun', 'Das Haus ist groß.', 'The house is big.', 'A1', 1),
  ('00000000-0000-4000-a000-000065992e6f', 'die Wohnung', 'الشقة', 'apartment', 'die', 'die Wohnungen', 'noun', 'Meine Wohnung hat drei Zimmer.', 'My apartment has three rooms.', 'A1', 2),
  ('00000000-0000-4000-a000-000065992e6f', 'das Zimmer', 'الغرفة', 'room', 'das', 'die Zimmer', 'noun', 'Das Zimmer ist hell.', 'The room is bright.', 'A1', 3),
  ('00000000-0000-4000-a000-000065992e6f', 'die Küche', 'المطبخ', 'kitchen', 'die', 'die Küchen', 'noun', 'Die Küche ist modern.', 'The kitchen is modern.', 'A1', 4),
  ('00000000-0000-4000-a000-000065992e6f', 'das Schlafzimmer', 'غرفة النوم', 'bedroom', 'das', NULL, 'noun', 'Mein Schlafzimmer ist gemütlich.', 'My bedroom is cozy.', 'A1', 5),
  ('00000000-0000-4000-a000-000065992e6f', 'das Bad', 'الحمام', 'bathroom', 'das', 'die Bäder', 'noun', 'Das Bad ist sauber.', 'The bathroom is clean.', 'A1', 6),
  ('00000000-0000-4000-a000-000065992e6f', 'der Tisch', 'الطاولة', 'table', 'der', 'die Tische', 'noun', 'Der Tisch ist aus Holz.', 'The table is made of wood.', 'A1', 7),
  ('00000000-0000-4000-a000-000065992e6f', 'der Stuhl', 'الكرسي', 'chair', 'der', 'die Stühle', 'noun', 'Der Stuhl ist bequem.', 'The chair is comfortable.', 'A1', 8),
  ('00000000-0000-4000-a000-000065992e6f', 'das Bett', 'السرير', 'bed', 'das', 'die Betten', 'noun', 'Das Bett ist groß.', 'The bed is big.', 'A1', 9),
  ('00000000-0000-4000-a000-000065992e6f', 'wohnen', 'يسكن', 'to live', NULL, NULL, 'verb', 'Ich wohne in Berlin.', 'I live in Berlin.', 'A1', 10),
  ('00000000-0000-4000-a000-000065992e6f', 'Hallo', 'مرحباً', 'hello', NULL, NULL, 'interjection', 'Hallo, wie geht es dir?', 'Hello, how are you?', 'A1', 11),
  ('00000000-0000-4000-a000-000065992e6f', 'Guten Morgen', 'صباح الخير', 'good morning', NULL, NULL, 'phrase', 'Guten Morgen, Herr Müller.', 'Good morning, Mr. Müller.', 'A1', 12),
  ('00000000-0000-4000-a000-000065992e6f', 'Guten Tag', 'نهارك سعيد', 'good day', NULL, NULL, 'phrase', 'Guten Tag, Frau Schmidt.', 'Good day, Mrs. Schmidt.', 'A1', 13),
  ('00000000-0000-4000-a000-000065992e6f', 'Tschüss', 'مع السلامة', 'bye', NULL, NULL, 'interjection', 'Tschüss, bis morgen!', 'Bye, see you tomorrow!', 'A1', 14),
  ('00000000-0000-4000-a000-000065992e6f', 'der Name', 'الاسم', 'name', 'der', 'die Namen', 'noun', 'Mein Name ist Anna.', 'My name is Anna.', 'A1', 15),
  ('00000000-0000-4000-a000-000065992e6f', 'wie', 'كيف', 'how', NULL, NULL, 'adverb', 'Wie heißt du?', 'What is your name?', 'A1', 16),
  ('00000000-0000-4000-a000-000065992e6f', 'freuen', 'يسر', 'to be pleased', NULL, NULL, 'verb', 'Ich freue mich, dich kennenzulernen.', 'I am pleased to meet you.', 'A1', 17),
  ('00000000-0000-4000-a000-000065992e6f', 'Willkommen', 'أهلاً وسهلاً', 'welcome', NULL, NULL, 'interjection', 'Willkommen in Deutschland!', 'Welcome to Germany!', 'A1', 18),
  ('00000000-0000-4000-a000-000065992e6f', 'die Familie', 'العائلة', 'family', 'die', 'die Familien', 'noun', 'Meine Familie ist groß.', 'My family is big.', 'A1', 19),
  ('00000000-0000-4000-a000-000065992e6f', 'der Vater', 'الأب', 'father', 'der', 'die Väter', 'noun', 'Mein Vater ist Ingenieur.', 'My father is an engineer.', 'A1', 20),
  ('00000000-0000-4000-a000-000065992e6f', 'die Mutter', 'الأم', 'mother', 'die', 'die Mütter', 'noun', 'Meine Mutter kocht gut.', 'My mother cooks well.', 'A1', 21),
  ('00000000-0000-4000-a000-000065992e6f', 'der Bruder', 'الأخ', 'brother', 'der', 'die Brüder', 'noun', 'Mein Bruder ist 15 Jahre alt.', 'My brother is 15 years old.', 'A1', 22),
  ('00000000-0000-4000-a000-000065992e6f', 'die Schwester', 'الأخت', 'sister', 'die', 'die Schwestern', 'noun', 'Meine Schwester studiert Medizin.', 'My sister studies medicine.', 'A1', 23),
  ('00000000-0000-4000-a000-000065992e6f', 'die Geschwister', 'الإخوة', 'siblings', 'die', NULL, 'noun', 'Hast du Geschwister?', 'Do you have siblings?', 'A1', 24),
  ('00000000-0000-4000-a000-000065992e6f', 'der Sohn', 'الابن', 'son', 'der', 'die Söhne', 'noun', 'Wir haben einen Sohn.', 'We have a son.', 'A1', 25),
  ('00000000-0000-4000-a000-000065992e6f', 'die Tochter', 'الابنة', 'daughter', 'die', 'die Töchter', 'noun', 'Meine Tochter geht zur Schule.', 'My daughter goes to school.', 'A1', 26),
  ('00000000-0000-4000-a000-000065992e6f', 'die Großeltern', 'الأجداد', 'grandparents', 'die', NULL, 'noun', 'Meine Großeltern wohnen auf dem Land.', 'My grandparents live in the countryside.', 'A1', 27),
  ('00000000-0000-4000-a000-000065992e6f', 'verheiratet', 'متزوج', 'married', NULL, NULL, 'adjective', 'Meine Eltern sind verheiratet.', 'My parents are married.', 'A1', 28),
  ('00000000-0000-4000-a000-000065992e6f', 'das Brot', 'الخبز', 'bread', 'das', 'die Brote', 'noun', 'Ich kaufe ein Brot.', 'I buy a loaf of bread.', 'A1', 29),
  ('00000000-0000-4000-a000-000065992e6f', 'die Milch', 'الحليب', 'milk', 'die', NULL, 'noun', 'Die Milch ist frisch.', 'The milk is fresh.', 'A1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000065992e6f', 'Präsens der regelmäßigen Verben (Present Tense) / المضارع للأفعال المنتظمة', 'In German, regular verbs follow a consistent pattern. The infinitive ends in -en. Remove the -en and add the personal endings: ich -e, du -st, er/sie/es -t, wir -en, ihr -t, sie/Sie -en. For most Arabic speakers, this is easier than Arabic verb conjugation because German has fewer forms.', '[{"rule":"ich: stem + e","note":"Ich lerne, ich wohne, ich arbeite"},{"rule":"du: stem + st","note":"Du lernst, du wohnst, du arbeitest"},{"rule":"er/sie/es: stem + t","note":"Er lernt, sie wohnt, es arbeitet"},{"rule":"wir: stem + en","note":"Wir lernen, wir wohnen, wir arbeiten"},{"rule":"ihr: stem + t","note":"Ihr lernt, ihr wohnt, ihr arbeitet"},{"rule":"sie/Sie: stem + en","note":"Sie lernen, Sie wohnen"}]', '[{"german":"Ich lerne Deutsch.","arabic":"أنا أتعلم الألمانية.","english":"I am learning German."},{"german":"Du wohnst in Berlin.","arabic":"أنت تسكن في برلين.","english":"You live in Berlin."},{"german":"Er arbeitet bei Siemens.","arabic":"هو يعمل في سيمنز.","english":"He works at Siemens."}]', '[{"mistake":"Ich lernen Deutsch","correction":"Ich lerne Deutsch","explanation":"After \"ich\" we use the stem + e, not the infinitive."},{"mistake":"Er lerne Deutsch","correction":"Er lernt Deutsch","explanation":"After \"er/sie/es\" we add -t, not -e."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000065992e6f', 'multiple_choice', 'What does "das Haus" mean?', '["The","A","This","That"]', 'The', 'This is a basic vocabulary item.', 1, 1),
  ('00000000-0000-4000-a000-000065992e6f', 'fill_gap', 'Complete with the correct form.', '["Option 1","Option 2","Option 3"]', 'Option 1', 'Practice grammar in context.', 1, 2),
  ('00000000-0000-4000-a000-000065992e6f', 'translation', 'Translate: "I learn German."', '["Ich lerne Deutsch.","Ich lerne Englisch.","Ich lerne Spanisch."]', 'Ich lerne Deutsch.', 'Ich = I, lerne = learn/learning, Deutsch = German.', 2, 3),
  ('00000000-0000-4000-a000-000065992e6f', 'sentence_order', 'Order the sentence.', '[]', 'Ich lerne Deutsch.', 'Subject + verb + object in German.', 2, 4),
  ('00000000-0000-4000-a000-000065992e6f', 'matching', 'Match the words with their meanings.', '["Match pairs correctly"]', 'Correct pairs', 'Test your vocabulary knowledge.', 2, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-000065992e6f', 'multiple_choice', 'What is the main topic of this lesson?', '["Home & Rooms","Sports","Music","Travel"]', 'Home & Rooms', 1, 1),
  ('00000000-0000-4000-a000-000065992e6f', 'true_false', 'This lesson teaches vocabulary about Home & Rooms.', '["True","False"]', 'True', 1, 2),
  ('00000000-0000-4000-a000-000065992e6f', 'true_false', 'German word order is always the same as English.', '["True","False"]', 'False', 1, 3),
  ('00000000-0000-4000-a000-000065992e6f', 'multiple_choice', 'How do you say "please" in German?', '["Danke","Bitte","Tschüss","Hallo"]', 'Bitte', 1, 4),
  ('00000000-0000-4000-a000-000065992e6f', 'multiple_choice', 'Which article is feminine?', '["der","die","das","den"]', 'die', 1, 5),
  ('00000000-0000-4000-a000-000065992e6f', 'fill_blank', 'Ich ___ (to be) Student.', '["bin","bist","ist","sind"]', 'bin', 1, 6),
  ('00000000-0000-4000-a000-000065992e6f', 'multiple_choice', 'What is the correct word order?', '["Ich lerne Deutsch","Ich Deutsch lerne","Lerne ich Deutsch","Deutsch ich lerne"]', 'Ich lerne Deutsch', 1, 7),
  ('00000000-0000-4000-a000-000065992e6f', 'true_false', 'All German nouns are capitalized.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-000065992e6f', 'multiple_choice', 'How do you say "thank you" in German?', '["Bitte","Danke","Tschüss","Hallo"]', 'Danke', 1, 9),
  ('00000000-0000-4000-a000-000065992e6f', 'fill_blank', 'Wo ___ du? (to live)', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 1, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-000065992e6f', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Wohnen', 'formal', false, 1),
  ('00000000-0000-4000-a000-000065992e6f', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Wohnen', 'informal', false, 2),
  ('00000000-0000-4000-a000-000065992e6f', 'Bitte!', 'Please!', 'من فضلك!', 'Used in Wohnen', 'neutral', false, 3),
  ('00000000-0000-4000-a000-000065992e6f', 'Danke!', 'Thanks!', 'شكراً!', 'Used in Wohnen', 'neutral', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-000065992e6f', 'Hallo', 'Hello', 'Greeting', 'expression', 1),
  ('00000000-0000-4000-a000-000065992e6f', 'Danke', 'Thanks', 'Politeness', 'expression', 2),
  ('00000000-0000-4000-a000-000065992e6f', 'Bitte', 'Please', 'Politeness', 'expression', 3),
  ('00000000-0000-4000-a000-000065992e6f', 'Tschüss', 'Bye', 'Farewell', 'expression', 4);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-000065992e6f', 'Mein Zuhause — Leseübung', 'Ich wohne in einer schönen Wohnung in Berlin. Die Wohnung hat drei Zimmer: ein Wohnzimmer, ein Schlafzimmer und eine Küche. Das Wohnzimmer ist groß und gemütlich. Es gibt ein Sofa, einen Tisch und einen Schrank. Die Küche ist modern. Der Herd und der Kühlschrank sind neu. Mein Schlafzimmer ist klein, aber hell. Das Bett ist bequem. Ich fühle mich in meiner Wohnung sehr wohl.', 'I live in a nice apartment in Berlin. The apartment has three rooms: a living room, a bedroom and a kitchen. The living room is big and cozy. There is a sofa, a table and a wardrobe. The kitchen is modern. The stove and refrigerator are new. My bedroom is small but bright. The bed is comfortable. I feel very comfortable in my apartment.', 'أسكن في شقة جميلة في برلين. الشقة فيها ثلاث غرف: غرفة معيشة وغرفة نوم ومطبخ. غرفة المعيشة كبيرة ومريحة. يوجد أريكة وطاولة وخزانة. المطبخ حديث. الموقد والثلاجة جديدان. غرفة نومي صغيرة لكنها مشرقة. السرير مريح. أشعر براحة كبيرة في شقتي.', 64, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, duration_seconds, speaker_count, scenario) values
  ('00000000-0000-4000-a000-000065992e6f', 'Mein Zuhause — Hörverständnis', '[Lehrerin]: Guten Morgen! Heute lernen wir Begrüßungen.

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

[Lehrerin]: ممتاز! إلى الغد!', 72, 2, 'Wohnen');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-000065992e6f', 'Speaking: Mein Zuhause', 'Practice talking about Home & Rooms. Answer questions and have a simple conversation.', 'Home & Rooms', ARRAY['Use full sentences','Speak clearly','Don''t worry about mistakes']::text[], ARRAY['das Haus','die Wohnung','das Zimmer','die Küche','das Schlafzimmer']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-000065992e6f', 'Writing: Mein Zuhause', 'Write a short text about Home & Rooms. Use at least 5 vocabulary words from this lesson.', ARRAY['Start with a greeting','Use the vocabulary from this lesson','Check your grammar']::text[], ARRAY['das Haus','die Wohnung','das Zimmer']::text[], '["Sentence structure","Vocabulary usage"]', 50, 150, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000065992e6f', 'Mein Zuhause — Roleplay', 'Home & Rooms', 'Student', 'Teacher', 'Practice conversation about Home & Rooms', 'Hallo! Lass uns über dieses Thema sprechen.', 'beginner', 1, ARRAY['das Haus','die Wohnung','das Zimmer','die Küche','das Schlafzimmer','das Bad','der Tisch','der Stuhl']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000065992e6f', 'Mein Zuhause — Advanced Roleplay', 'Home & Rooms', 'Customer', 'Assistant', 'Extended conversation about Home & Rooms', 'Guten Tag! Wie kann ich Ihnen helfen?', 'beginner', 2, ARRAY['das Haus','die Wohnung','das Zimmer','die Küche','das Schlafzimmer','das Bad','der Tisch','der Stuhl']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-000065992e6f', 'Mein Zuhause — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Mein Zuhause".', 'Creative practice for Home & Rooms', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-000065992e6f', 'Homework: Mein Zuhause', 'Complete these tasks to reinforce "Mein Zuhause".', 'mixed', '[{"description":"Review all vocabulary from this lesson"},{"description":"Write 5 sentences using the grammar structure"},{"description":"Practice the dialogue aloud"}]', 35, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-000065992e6f', 'In this lesson you learned about Home & Rooms. You practiced vocabulary related to home and grammar structure present_tense.', '["Mastered vocabulary about Home & Rooms","Applied present_tense correctly","Read and understood a text about Home & Rooms","Practiced speaking about Home & Rooms"]', '[{"title":"Mein Zuhause Review","summary":"present_tense — the main grammar focus of this lesson."}]', ARRAY['Home & Rooms core vocabulary','home key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)','Verb is always in second position']::text[], ARRAY['Practice 15-20 minutes daily','Use new vocabulary in real sentences','Speak out loud to improve pronunciation']::text[]);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000065992e6f', 'Pronunciation: German pronunciation basics', 'German is mostly phonetic. Pronounce each letter.

Common mistake for Arabic speakers: Pronouncing every letter as in English.', '[]', '[{"german":"ja","arabic":"","english":"","phonetic":"/jaː/"},{"german":"nein","arabic":"","english":"","phonetic":"/naɪn/"}]', '[]', 10);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000065992e6f', 'translation', 'Translate to German: "This is a translation exercise."', '[]', 'Das ist eine Übersetzungsübung.', 'Use "das ist" for "this is"', 1, 40);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000065992e6f', 'Culture: Home & Rooms in German-Speaking Countries', 'Learn how Home & Rooms is approached in German culture.

تعلم كيف يتم التعامل مع Home & Rooms في الثقافة الألمانية.', '["Tip: Be direct and polite","Tip: Use formal language with strangers","Tip: Respect punctuality"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000065992e6f', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Common error for Arabic speakers","correction":"Correct version","explanation":"Explanation of the error"}]', 30);

  -- Lesson 2: Möbel und Haushaltsgegenstände (L-A1-03-02)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-000065992e70', '00000000-0000-4000-a000-000039b4d360', 'Möbel und Haushaltsgegenstände', 'Detailed furniture and household item vocabulary.', 'Furniture', 'vocabulary', '["Understand and use vocabulary related to Furniture","Apply present_tense correctly","Read and comprehend a text about Furniture","Listen and understand a dialogue about Furniture","Speak about Furniture in simple sentences","Write a short text about Furniture"]', 30, 2, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-000065992e70', 'das Haus', 'البيت', 'house', 'das', 'die Häuser', 'noun', 'Das Haus ist groß.', 'The house is big.', 'A1', 1),
  ('00000000-0000-4000-a000-000065992e70', 'die Wohnung', 'الشقة', 'apartment', 'die', 'die Wohnungen', 'noun', 'Meine Wohnung hat drei Zimmer.', 'My apartment has three rooms.', 'A1', 2),
  ('00000000-0000-4000-a000-000065992e70', 'das Zimmer', 'الغرفة', 'room', 'das', 'die Zimmer', 'noun', 'Das Zimmer ist hell.', 'The room is bright.', 'A1', 3),
  ('00000000-0000-4000-a000-000065992e70', 'die Küche', 'المطبخ', 'kitchen', 'die', 'die Küchen', 'noun', 'Die Küche ist modern.', 'The kitchen is modern.', 'A1', 4),
  ('00000000-0000-4000-a000-000065992e70', 'das Schlafzimmer', 'غرفة النوم', 'bedroom', 'das', NULL, 'noun', 'Mein Schlafzimmer ist gemütlich.', 'My bedroom is cozy.', 'A1', 5),
  ('00000000-0000-4000-a000-000065992e70', 'das Bad', 'الحمام', 'bathroom', 'das', 'die Bäder', 'noun', 'Das Bad ist sauber.', 'The bathroom is clean.', 'A1', 6),
  ('00000000-0000-4000-a000-000065992e70', 'der Tisch', 'الطاولة', 'table', 'der', 'die Tische', 'noun', 'Der Tisch ist aus Holz.', 'The table is made of wood.', 'A1', 7),
  ('00000000-0000-4000-a000-000065992e70', 'der Stuhl', 'الكرسي', 'chair', 'der', 'die Stühle', 'noun', 'Der Stuhl ist bequem.', 'The chair is comfortable.', 'A1', 8),
  ('00000000-0000-4000-a000-000065992e70', 'das Bett', 'السرير', 'bed', 'das', 'die Betten', 'noun', 'Das Bett ist groß.', 'The bed is big.', 'A1', 9),
  ('00000000-0000-4000-a000-000065992e70', 'wohnen', 'يسكن', 'to live', NULL, NULL, 'verb', 'Ich wohne in Berlin.', 'I live in Berlin.', 'A1', 10),
  ('00000000-0000-4000-a000-000065992e70', 'Hallo', 'مرحباً', 'hello', NULL, NULL, 'interjection', 'Hallo, wie geht es dir?', 'Hello, how are you?', 'A1', 11),
  ('00000000-0000-4000-a000-000065992e70', 'Guten Morgen', 'صباح الخير', 'good morning', NULL, NULL, 'phrase', 'Guten Morgen, Herr Müller.', 'Good morning, Mr. Müller.', 'A1', 12),
  ('00000000-0000-4000-a000-000065992e70', 'Guten Tag', 'نهارك سعيد', 'good day', NULL, NULL, 'phrase', 'Guten Tag, Frau Schmidt.', 'Good day, Mrs. Schmidt.', 'A1', 13),
  ('00000000-0000-4000-a000-000065992e70', 'Tschüss', 'مع السلامة', 'bye', NULL, NULL, 'interjection', 'Tschüss, bis morgen!', 'Bye, see you tomorrow!', 'A1', 14),
  ('00000000-0000-4000-a000-000065992e70', 'der Name', 'الاسم', 'name', 'der', 'die Namen', 'noun', 'Mein Name ist Anna.', 'My name is Anna.', 'A1', 15),
  ('00000000-0000-4000-a000-000065992e70', 'wie', 'كيف', 'how', NULL, NULL, 'adverb', 'Wie heißt du?', 'What is your name?', 'A1', 16),
  ('00000000-0000-4000-a000-000065992e70', 'freuen', 'يسر', 'to be pleased', NULL, NULL, 'verb', 'Ich freue mich, dich kennenzulernen.', 'I am pleased to meet you.', 'A1', 17),
  ('00000000-0000-4000-a000-000065992e70', 'Willkommen', 'أهلاً وسهلاً', 'welcome', NULL, NULL, 'interjection', 'Willkommen in Deutschland!', 'Welcome to Germany!', 'A1', 18),
  ('00000000-0000-4000-a000-000065992e70', 'die Familie', 'العائلة', 'family', 'die', 'die Familien', 'noun', 'Meine Familie ist groß.', 'My family is big.', 'A1', 19),
  ('00000000-0000-4000-a000-000065992e70', 'der Vater', 'الأب', 'father', 'der', 'die Väter', 'noun', 'Mein Vater ist Ingenieur.', 'My father is an engineer.', 'A1', 20),
  ('00000000-0000-4000-a000-000065992e70', 'die Mutter', 'الأم', 'mother', 'die', 'die Mütter', 'noun', 'Meine Mutter kocht gut.', 'My mother cooks well.', 'A1', 21),
  ('00000000-0000-4000-a000-000065992e70', 'der Bruder', 'الأخ', 'brother', 'der', 'die Brüder', 'noun', 'Mein Bruder ist 15 Jahre alt.', 'My brother is 15 years old.', 'A1', 22),
  ('00000000-0000-4000-a000-000065992e70', 'die Schwester', 'الأخت', 'sister', 'die', 'die Schwestern', 'noun', 'Meine Schwester studiert Medizin.', 'My sister studies medicine.', 'A1', 23),
  ('00000000-0000-4000-a000-000065992e70', 'die Geschwister', 'الإخوة', 'siblings', 'die', NULL, 'noun', 'Hast du Geschwister?', 'Do you have siblings?', 'A1', 24),
  ('00000000-0000-4000-a000-000065992e70', 'der Sohn', 'الابن', 'son', 'der', 'die Söhne', 'noun', 'Wir haben einen Sohn.', 'We have a son.', 'A1', 25),
  ('00000000-0000-4000-a000-000065992e70', 'die Tochter', 'الابنة', 'daughter', 'die', 'die Töchter', 'noun', 'Meine Tochter geht zur Schule.', 'My daughter goes to school.', 'A1', 26),
  ('00000000-0000-4000-a000-000065992e70', 'die Großeltern', 'الأجداد', 'grandparents', 'die', NULL, 'noun', 'Meine Großeltern wohnen auf dem Land.', 'My grandparents live in the countryside.', 'A1', 27),
  ('00000000-0000-4000-a000-000065992e70', 'verheiratet', 'متزوج', 'married', NULL, NULL, 'adjective', 'Meine Eltern sind verheiratet.', 'My parents are married.', 'A1', 28),
  ('00000000-0000-4000-a000-000065992e70', 'das Brot', 'الخبز', 'bread', 'das', 'die Brote', 'noun', 'Ich kaufe ein Brot.', 'I buy a loaf of bread.', 'A1', 29),
  ('00000000-0000-4000-a000-000065992e70', 'die Milch', 'الحليب', 'milk', 'die', NULL, 'noun', 'Die Milch ist frisch.', 'The milk is fresh.', 'A1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000065992e70', 'Präsens der regelmäßigen Verben (Present Tense) / المضارع للأفعال المنتظمة', 'In German, regular verbs follow a consistent pattern. The infinitive ends in -en. Remove the -en and add the personal endings: ich -e, du -st, er/sie/es -t, wir -en, ihr -t, sie/Sie -en. For most Arabic speakers, this is easier than Arabic verb conjugation because German has fewer forms.', '[{"rule":"ich: stem + e","note":"Ich lerne, ich wohne, ich arbeite"},{"rule":"du: stem + st","note":"Du lernst, du wohnst, du arbeitest"},{"rule":"er/sie/es: stem + t","note":"Er lernt, sie wohnt, es arbeitet"},{"rule":"wir: stem + en","note":"Wir lernen, wir wohnen, wir arbeiten"},{"rule":"ihr: stem + t","note":"Ihr lernt, ihr wohnt, ihr arbeitet"},{"rule":"sie/Sie: stem + en","note":"Sie lernen, Sie wohnen"}]', '[{"german":"Ich lerne Deutsch.","arabic":"أنا أتعلم الألمانية.","english":"I am learning German."},{"german":"Du wohnst in Berlin.","arabic":"أنت تسكن في برلين.","english":"You live in Berlin."},{"german":"Er arbeitet bei Siemens.","arabic":"هو يعمل في سيمنز.","english":"He works at Siemens."}]', '[{"mistake":"Ich lernen Deutsch","correction":"Ich lerne Deutsch","explanation":"After \"ich\" we use the stem + e, not the infinitive."},{"mistake":"Er lerne Deutsch","correction":"Er lernt Deutsch","explanation":"After \"er/sie/es\" we add -t, not -e."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000065992e70', 'multiple_choice', 'What does "das Haus" mean?', '["The","A","This","That"]', 'The', 'This is a basic vocabulary item.', 1, 1),
  ('00000000-0000-4000-a000-000065992e70', 'fill_gap', 'Complete with the correct form.', '["Option 1","Option 2","Option 3"]', 'Option 1', 'Practice grammar in context.', 1, 2),
  ('00000000-0000-4000-a000-000065992e70', 'translation', 'Translate: "I learn German."', '["Ich lerne Deutsch.","Ich lerne Englisch.","Ich lerne Spanisch."]', 'Ich lerne Deutsch.', 'Ich = I, lerne = learn/learning, Deutsch = German.', 2, 3),
  ('00000000-0000-4000-a000-000065992e70', 'sentence_order', 'Order the sentence.', '[]', 'Ich lerne Deutsch.', 'Subject + verb + object in German.', 2, 4),
  ('00000000-0000-4000-a000-000065992e70', 'matching', 'Match the words with their meanings.', '["Match pairs correctly"]', 'Correct pairs', 'Test your vocabulary knowledge.', 2, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-000065992e70', 'multiple_choice', 'What is the main topic of this lesson?', '["Furniture","Sports","Music","Travel"]', 'Furniture', 1, 1),
  ('00000000-0000-4000-a000-000065992e70', 'true_false', 'This lesson teaches vocabulary about Furniture.', '["True","False"]', 'True', 1, 2),
  ('00000000-0000-4000-a000-000065992e70', 'true_false', 'German word order is always the same as English.', '["True","False"]', 'False', 1, 3),
  ('00000000-0000-4000-a000-000065992e70', 'multiple_choice', 'How do you say "please" in German?', '["Danke","Bitte","Tschüss","Hallo"]', 'Bitte', 1, 4),
  ('00000000-0000-4000-a000-000065992e70', 'multiple_choice', 'Which article is feminine?', '["der","die","das","den"]', 'die', 1, 5),
  ('00000000-0000-4000-a000-000065992e70', 'fill_blank', 'Ich ___ (to be) Student.', '["bin","bist","ist","sind"]', 'bin', 1, 6),
  ('00000000-0000-4000-a000-000065992e70', 'multiple_choice', 'What is the correct word order?', '["Ich lerne Deutsch","Ich Deutsch lerne","Lerne ich Deutsch","Deutsch ich lerne"]', 'Ich lerne Deutsch', 1, 7),
  ('00000000-0000-4000-a000-000065992e70', 'true_false', 'All German nouns are capitalized.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-000065992e70', 'multiple_choice', 'How do you say "thank you" in German?', '["Bitte","Danke","Tschüss","Hallo"]', 'Danke', 1, 9),
  ('00000000-0000-4000-a000-000065992e70', 'fill_blank', 'Wo ___ du? (to live)', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 1, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-000065992e70', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Wohnen', 'formal', false, 1),
  ('00000000-0000-4000-a000-000065992e70', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Wohnen', 'informal', false, 2),
  ('00000000-0000-4000-a000-000065992e70', 'Bitte!', 'Please!', 'من فضلك!', 'Used in Wohnen', 'neutral', false, 3),
  ('00000000-0000-4000-a000-000065992e70', 'Danke!', 'Thanks!', 'شكراً!', 'Used in Wohnen', 'neutral', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-000065992e70', 'Hallo', 'Hello', 'Greeting', 'expression', 1),
  ('00000000-0000-4000-a000-000065992e70', 'Danke', 'Thanks', 'Politeness', 'expression', 2),
  ('00000000-0000-4000-a000-000065992e70', 'Bitte', 'Please', 'Politeness', 'expression', 3),
  ('00000000-0000-4000-a000-000065992e70', 'Tschüss', 'Bye', 'Farewell', 'expression', 4);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-000065992e70', 'Möbel und Haushaltsgegenstände — Leseübung', 'Ich wohne in einer schönen Wohnung in Berlin. Die Wohnung hat drei Zimmer: ein Wohnzimmer, ein Schlafzimmer und eine Küche. Das Wohnzimmer ist groß und gemütlich. Es gibt ein Sofa, einen Tisch und einen Schrank. Die Küche ist modern. Der Herd und der Kühlschrank sind neu. Mein Schlafzimmer ist klein, aber hell. Das Bett ist bequem. Ich fühle mich in meiner Wohnung sehr wohl.', 'I live in a nice apartment in Berlin. The apartment has three rooms: a living room, a bedroom and a kitchen. The living room is big and cozy. There is a sofa, a table and a wardrobe. The kitchen is modern. The stove and refrigerator are new. My bedroom is small but bright. The bed is comfortable. I feel very comfortable in my apartment.', 'أسكن في شقة جميلة في برلين. الشقة فيها ثلاث غرف: غرفة معيشة وغرفة نوم ومطبخ. غرفة المعيشة كبيرة ومريحة. يوجد أريكة وطاولة وخزانة. المطبخ حديث. الموقد والثلاجة جديدان. غرفة نومي صغيرة لكنها مشرقة. السرير مريح. أشعر براحة كبيرة في شقتي.', 64, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, duration_seconds, speaker_count, scenario) values
  ('00000000-0000-4000-a000-000065992e70', 'Möbel und Haushaltsgegenstände — Hörverständnis', '[Lehrerin]: Guten Morgen! Heute lernen wir Begrüßungen.

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

[Lehrerin]: ممتاز! إلى الغد!', 72, 2, 'Wohnen');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-000065992e70', 'Speaking: Möbel und Haushaltsgegenstände', 'Practice talking about Furniture. Answer questions and have a simple conversation.', 'Furniture', ARRAY['Use full sentences','Speak clearly','Don''t worry about mistakes']::text[], ARRAY['das Haus','die Wohnung','das Zimmer','die Küche','das Schlafzimmer']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-000065992e70', 'Writing: Möbel und Haushaltsgegenstände', 'Write a short text about Furniture. Use at least 5 vocabulary words from this lesson.', ARRAY['Start with a greeting','Use the vocabulary from this lesson','Check your grammar']::text[], ARRAY['das Haus','die Wohnung','das Zimmer']::text[], '["Sentence structure","Vocabulary usage"]', 50, 150, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000065992e70', 'Möbel und Haushaltsgegenstände — Roleplay', 'Furniture', 'Student', 'Teacher', 'Practice conversation about Furniture', 'Hallo! Lass uns über dieses Thema sprechen.', 'beginner', 1, ARRAY['das Haus','die Wohnung','das Zimmer','die Küche','das Schlafzimmer','das Bad','der Tisch','der Stuhl']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000065992e70', 'Möbel und Haushaltsgegenstände — Advanced Roleplay', 'Furniture', 'Customer', 'Assistant', 'Extended conversation about Furniture', 'Guten Tag! Wie kann ich Ihnen helfen?', 'beginner', 2, ARRAY['das Haus','die Wohnung','das Zimmer','die Küche','das Schlafzimmer','das Bad','der Tisch','der Stuhl']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-000065992e70', 'Möbel und Haushaltsgegenstände — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Möbel und Haushaltsgegenstände".', 'Creative practice for Furniture', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-000065992e70', 'Homework: Möbel und Haushaltsgegenstände', 'Complete these tasks to reinforce "Möbel und Haushaltsgegenstände".', 'mixed', '[{"description":"Review all vocabulary from this lesson"},{"description":"Write 5 sentences using the grammar structure"},{"description":"Practice the dialogue aloud"}]', 35, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-000065992e70', 'In this lesson you learned about Furniture. You practiced vocabulary related to home and grammar structure present_tense.', '["Mastered vocabulary about Furniture","Applied present_tense correctly","Read and understood a text about Furniture","Practiced speaking about Furniture"]', '[{"title":"Möbel und Haushaltsgegenstände Review","summary":"present_tense — the main grammar focus of this lesson."}]', ARRAY['Furniture core vocabulary','home key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)','Verb is always in second position']::text[], ARRAY['Practice 15-20 minutes daily','Use new vocabulary in real sentences','Speak out loud to improve pronunciation']::text[]);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000065992e70', 'Pronunciation: German pronunciation basics', 'German is mostly phonetic. Pronounce each letter.

Common mistake for Arabic speakers: Pronouncing every letter as in English.', '[]', '[{"german":"ja","arabic":"","english":"","phonetic":"/jaː/"},{"german":"nein","arabic":"","english":"","phonetic":"/naɪn/"}]', '[]', 10);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000065992e70', 'translation', 'Translate to German: "This is a translation exercise."', '[]', 'Das ist eine Übersetzungsübung.', 'Use "das ist" for "this is"', 1, 40);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000065992e70', 'Culture: Furniture in German-Speaking Countries', 'Learn how Furniture is approached in German culture.

تعلم كيف يتم التعامل مع Furniture في الثقافة الألمانية.', '["Tip: Be direct and polite","Tip: Use formal language with strangers","Tip: Respect punctuality"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000065992e70', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Common error for Arabic speakers","correction":"Correct version","explanation":"Explanation of the error"}]', 30);

  -- Lesson 3: Die Wohnung beschreiben (L-A1-03-03)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-000065992e71', '00000000-0000-4000-a000-000039b4d360', 'Die Wohnung beschreiben', 'Describe apartments using adjectives and prepositions.', 'Describing Homes', 'grammar', '["Understand and use vocabulary related to Describing Homes","Apply present_tense correctly","Read and comprehend a text about Describing Homes","Listen and understand a dialogue about Describing Homes","Speak about Describing Homes in simple sentences","Write a short text about Describing Homes"]', 30, 3, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-000065992e71', 'das Haus', 'البيت', 'house', 'das', 'die Häuser', 'noun', 'Das Haus ist groß.', 'The house is big.', 'A1', 1),
  ('00000000-0000-4000-a000-000065992e71', 'die Wohnung', 'الشقة', 'apartment', 'die', 'die Wohnungen', 'noun', 'Meine Wohnung hat drei Zimmer.', 'My apartment has three rooms.', 'A1', 2),
  ('00000000-0000-4000-a000-000065992e71', 'das Zimmer', 'الغرفة', 'room', 'das', 'die Zimmer', 'noun', 'Das Zimmer ist hell.', 'The room is bright.', 'A1', 3),
  ('00000000-0000-4000-a000-000065992e71', 'die Küche', 'المطبخ', 'kitchen', 'die', 'die Küchen', 'noun', 'Die Küche ist modern.', 'The kitchen is modern.', 'A1', 4),
  ('00000000-0000-4000-a000-000065992e71', 'das Schlafzimmer', 'غرفة النوم', 'bedroom', 'das', NULL, 'noun', 'Mein Schlafzimmer ist gemütlich.', 'My bedroom is cozy.', 'A1', 5),
  ('00000000-0000-4000-a000-000065992e71', 'das Bad', 'الحمام', 'bathroom', 'das', 'die Bäder', 'noun', 'Das Bad ist sauber.', 'The bathroom is clean.', 'A1', 6),
  ('00000000-0000-4000-a000-000065992e71', 'der Tisch', 'الطاولة', 'table', 'der', 'die Tische', 'noun', 'Der Tisch ist aus Holz.', 'The table is made of wood.', 'A1', 7),
  ('00000000-0000-4000-a000-000065992e71', 'der Stuhl', 'الكرسي', 'chair', 'der', 'die Stühle', 'noun', 'Der Stuhl ist bequem.', 'The chair is comfortable.', 'A1', 8),
  ('00000000-0000-4000-a000-000065992e71', 'das Bett', 'السرير', 'bed', 'das', 'die Betten', 'noun', 'Das Bett ist groß.', 'The bed is big.', 'A1', 9),
  ('00000000-0000-4000-a000-000065992e71', 'wohnen', 'يسكن', 'to live', NULL, NULL, 'verb', 'Ich wohne in Berlin.', 'I live in Berlin.', 'A1', 10),
  ('00000000-0000-4000-a000-000065992e71', 'Hallo', 'مرحباً', 'hello', NULL, NULL, 'interjection', 'Hallo, wie geht es dir?', 'Hello, how are you?', 'A1', 11),
  ('00000000-0000-4000-a000-000065992e71', 'Guten Morgen', 'صباح الخير', 'good morning', NULL, NULL, 'phrase', 'Guten Morgen, Herr Müller.', 'Good morning, Mr. Müller.', 'A1', 12),
  ('00000000-0000-4000-a000-000065992e71', 'Guten Tag', 'نهارك سعيد', 'good day', NULL, NULL, 'phrase', 'Guten Tag, Frau Schmidt.', 'Good day, Mrs. Schmidt.', 'A1', 13),
  ('00000000-0000-4000-a000-000065992e71', 'Tschüss', 'مع السلامة', 'bye', NULL, NULL, 'interjection', 'Tschüss, bis morgen!', 'Bye, see you tomorrow!', 'A1', 14),
  ('00000000-0000-4000-a000-000065992e71', 'der Name', 'الاسم', 'name', 'der', 'die Namen', 'noun', 'Mein Name ist Anna.', 'My name is Anna.', 'A1', 15),
  ('00000000-0000-4000-a000-000065992e71', 'wie', 'كيف', 'how', NULL, NULL, 'adverb', 'Wie heißt du?', 'What is your name?', 'A1', 16),
  ('00000000-0000-4000-a000-000065992e71', 'freuen', 'يسر', 'to be pleased', NULL, NULL, 'verb', 'Ich freue mich, dich kennenzulernen.', 'I am pleased to meet you.', 'A1', 17),
  ('00000000-0000-4000-a000-000065992e71', 'Willkommen', 'أهلاً وسهلاً', 'welcome', NULL, NULL, 'interjection', 'Willkommen in Deutschland!', 'Welcome to Germany!', 'A1', 18),
  ('00000000-0000-4000-a000-000065992e71', 'die Familie', 'العائلة', 'family', 'die', 'die Familien', 'noun', 'Meine Familie ist groß.', 'My family is big.', 'A1', 19),
  ('00000000-0000-4000-a000-000065992e71', 'der Vater', 'الأب', 'father', 'der', 'die Väter', 'noun', 'Mein Vater ist Ingenieur.', 'My father is an engineer.', 'A1', 20),
  ('00000000-0000-4000-a000-000065992e71', 'die Mutter', 'الأم', 'mother', 'die', 'die Mütter', 'noun', 'Meine Mutter kocht gut.', 'My mother cooks well.', 'A1', 21),
  ('00000000-0000-4000-a000-000065992e71', 'der Bruder', 'الأخ', 'brother', 'der', 'die Brüder', 'noun', 'Mein Bruder ist 15 Jahre alt.', 'My brother is 15 years old.', 'A1', 22),
  ('00000000-0000-4000-a000-000065992e71', 'die Schwester', 'الأخت', 'sister', 'die', 'die Schwestern', 'noun', 'Meine Schwester studiert Medizin.', 'My sister studies medicine.', 'A1', 23),
  ('00000000-0000-4000-a000-000065992e71', 'die Geschwister', 'الإخوة', 'siblings', 'die', NULL, 'noun', 'Hast du Geschwister?', 'Do you have siblings?', 'A1', 24),
  ('00000000-0000-4000-a000-000065992e71', 'der Sohn', 'الابن', 'son', 'der', 'die Söhne', 'noun', 'Wir haben einen Sohn.', 'We have a son.', 'A1', 25),
  ('00000000-0000-4000-a000-000065992e71', 'die Tochter', 'الابنة', 'daughter', 'die', 'die Töchter', 'noun', 'Meine Tochter geht zur Schule.', 'My daughter goes to school.', 'A1', 26),
  ('00000000-0000-4000-a000-000065992e71', 'die Großeltern', 'الأجداد', 'grandparents', 'die', NULL, 'noun', 'Meine Großeltern wohnen auf dem Land.', 'My grandparents live in the countryside.', 'A1', 27),
  ('00000000-0000-4000-a000-000065992e71', 'verheiratet', 'متزوج', 'married', NULL, NULL, 'adjective', 'Meine Eltern sind verheiratet.', 'My parents are married.', 'A1', 28),
  ('00000000-0000-4000-a000-000065992e71', 'das Brot', 'الخبز', 'bread', 'das', 'die Brote', 'noun', 'Ich kaufe ein Brot.', 'I buy a loaf of bread.', 'A1', 29),
  ('00000000-0000-4000-a000-000065992e71', 'die Milch', 'الحليب', 'milk', 'die', NULL, 'noun', 'Die Milch ist frisch.', 'The milk is fresh.', 'A1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000065992e71', 'Präsens der regelmäßigen Verben (Present Tense) / المضارع للأفعال المنتظمة', 'In German, regular verbs follow a consistent pattern. The infinitive ends in -en. Remove the -en and add the personal endings: ich -e, du -st, er/sie/es -t, wir -en, ihr -t, sie/Sie -en. For most Arabic speakers, this is easier than Arabic verb conjugation because German has fewer forms.', '[{"rule":"ich: stem + e","note":"Ich lerne, ich wohne, ich arbeite"},{"rule":"du: stem + st","note":"Du lernst, du wohnst, du arbeitest"},{"rule":"er/sie/es: stem + t","note":"Er lernt, sie wohnt, es arbeitet"},{"rule":"wir: stem + en","note":"Wir lernen, wir wohnen, wir arbeiten"},{"rule":"ihr: stem + t","note":"Ihr lernt, ihr wohnt, ihr arbeitet"},{"rule":"sie/Sie: stem + en","note":"Sie lernen, Sie wohnen"}]', '[{"german":"Ich lerne Deutsch.","arabic":"أنا أتعلم الألمانية.","english":"I am learning German."},{"german":"Du wohnst in Berlin.","arabic":"أنت تسكن في برلين.","english":"You live in Berlin."},{"german":"Er arbeitet bei Siemens.","arabic":"هو يعمل في سيمنز.","english":"He works at Siemens."}]', '[{"mistake":"Ich lernen Deutsch","correction":"Ich lerne Deutsch","explanation":"After \"ich\" we use the stem + e, not the infinitive."},{"mistake":"Er lerne Deutsch","correction":"Er lernt Deutsch","explanation":"After \"er/sie/es\" we add -t, not -e."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000065992e71', 'multiple_choice', 'What does "das Haus" mean?', '["The","A","This","That"]', 'The', 'This is a basic vocabulary item.', 1, 1),
  ('00000000-0000-4000-a000-000065992e71', 'fill_gap', 'Complete with the correct form.', '["Option 1","Option 2","Option 3"]', 'Option 1', 'Practice grammar in context.', 1, 2),
  ('00000000-0000-4000-a000-000065992e71', 'translation', 'Translate: "I learn German."', '["Ich lerne Deutsch.","Ich lerne Englisch.","Ich lerne Spanisch."]', 'Ich lerne Deutsch.', 'Ich = I, lerne = learn/learning, Deutsch = German.', 2, 3),
  ('00000000-0000-4000-a000-000065992e71', 'sentence_order', 'Order the sentence.', '[]', 'Ich lerne Deutsch.', 'Subject + verb + object in German.', 2, 4),
  ('00000000-0000-4000-a000-000065992e71', 'matching', 'Match the words with their meanings.', '["Match pairs correctly"]', 'Correct pairs', 'Test your vocabulary knowledge.', 2, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-000065992e71', 'multiple_choice', 'What is the main topic of this lesson?', '["Describing Homes","Sports","Music","Travel"]', 'Describing Homes', 1, 1),
  ('00000000-0000-4000-a000-000065992e71', 'true_false', 'This lesson teaches vocabulary about Describing Homes.', '["True","False"]', 'True', 1, 2),
  ('00000000-0000-4000-a000-000065992e71', 'true_false', 'German word order is always the same as English.', '["True","False"]', 'False', 1, 3),
  ('00000000-0000-4000-a000-000065992e71', 'multiple_choice', 'How do you say "please" in German?', '["Danke","Bitte","Tschüss","Hallo"]', 'Bitte', 1, 4),
  ('00000000-0000-4000-a000-000065992e71', 'multiple_choice', 'Which article is feminine?', '["der","die","das","den"]', 'die', 1, 5),
  ('00000000-0000-4000-a000-000065992e71', 'fill_blank', 'Ich ___ (to be) Student.', '["bin","bist","ist","sind"]', 'bin', 1, 6),
  ('00000000-0000-4000-a000-000065992e71', 'multiple_choice', 'What is the correct word order?', '["Ich lerne Deutsch","Ich Deutsch lerne","Lerne ich Deutsch","Deutsch ich lerne"]', 'Ich lerne Deutsch', 1, 7),
  ('00000000-0000-4000-a000-000065992e71', 'true_false', 'All German nouns are capitalized.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-000065992e71', 'multiple_choice', 'How do you say "thank you" in German?', '["Bitte","Danke","Tschüss","Hallo"]', 'Danke', 1, 9),
  ('00000000-0000-4000-a000-000065992e71', 'fill_blank', 'Wo ___ du? (to live)', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 1, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-000065992e71', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Wohnen', 'formal', false, 1),
  ('00000000-0000-4000-a000-000065992e71', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Wohnen', 'informal', false, 2),
  ('00000000-0000-4000-a000-000065992e71', 'Bitte!', 'Please!', 'من فضلك!', 'Used in Wohnen', 'neutral', false, 3),
  ('00000000-0000-4000-a000-000065992e71', 'Danke!', 'Thanks!', 'شكراً!', 'Used in Wohnen', 'neutral', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-000065992e71', 'Hallo', 'Hello', 'Greeting', 'expression', 1),
  ('00000000-0000-4000-a000-000065992e71', 'Danke', 'Thanks', 'Politeness', 'expression', 2),
  ('00000000-0000-4000-a000-000065992e71', 'Bitte', 'Please', 'Politeness', 'expression', 3),
  ('00000000-0000-4000-a000-000065992e71', 'Tschüss', 'Bye', 'Farewell', 'expression', 4);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-000065992e71', 'Die Wohnung beschreiben — Leseübung', 'Ich wohne in einer schönen Wohnung in Berlin. Die Wohnung hat drei Zimmer: ein Wohnzimmer, ein Schlafzimmer und eine Küche. Das Wohnzimmer ist groß und gemütlich. Es gibt ein Sofa, einen Tisch und einen Schrank. Die Küche ist modern. Der Herd und der Kühlschrank sind neu. Mein Schlafzimmer ist klein, aber hell. Das Bett ist bequem. Ich fühle mich in meiner Wohnung sehr wohl.', 'I live in a nice apartment in Berlin. The apartment has three rooms: a living room, a bedroom and a kitchen. The living room is big and cozy. There is a sofa, a table and a wardrobe. The kitchen is modern. The stove and refrigerator are new. My bedroom is small but bright. The bed is comfortable. I feel very comfortable in my apartment.', 'أسكن في شقة جميلة في برلين. الشقة فيها ثلاث غرف: غرفة معيشة وغرفة نوم ومطبخ. غرفة المعيشة كبيرة ومريحة. يوجد أريكة وطاولة وخزانة. المطبخ حديث. الموقد والثلاجة جديدان. غرفة نومي صغيرة لكنها مشرقة. السرير مريح. أشعر براحة كبيرة في شقتي.', 64, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, duration_seconds, speaker_count, scenario) values
  ('00000000-0000-4000-a000-000065992e71', 'Die Wohnung beschreiben — Hörverständnis', '[Lehrerin]: Guten Morgen! Heute lernen wir Begrüßungen.

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

[Lehrerin]: ممتاز! إلى الغد!', 72, 2, 'Wohnen');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-000065992e71', 'Speaking: Die Wohnung beschreiben', 'Practice talking about Describing Homes. Answer questions and have a simple conversation.', 'Describing Homes', ARRAY['Use full sentences','Speak clearly','Don''t worry about mistakes']::text[], ARRAY['das Haus','die Wohnung','das Zimmer','die Küche','das Schlafzimmer']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-000065992e71', 'Writing: Die Wohnung beschreiben', 'Write a short text about Describing Homes. Use at least 5 vocabulary words from this lesson.', ARRAY['Start with a greeting','Use the vocabulary from this lesson','Check your grammar']::text[], ARRAY['das Haus','die Wohnung','das Zimmer']::text[], '["Sentence structure","Vocabulary usage"]', 50, 150, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000065992e71', 'Die Wohnung beschreiben — Roleplay', 'Describing Homes', 'Student', 'Teacher', 'Practice conversation about Describing Homes', 'Hallo! Lass uns über dieses Thema sprechen.', 'beginner', 1, ARRAY['das Haus','die Wohnung','das Zimmer','die Küche','das Schlafzimmer','das Bad','der Tisch','der Stuhl']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000065992e71', 'Die Wohnung beschreiben — Advanced Roleplay', 'Describing Homes', 'Customer', 'Assistant', 'Extended conversation about Describing Homes', 'Guten Tag! Wie kann ich Ihnen helfen?', 'beginner', 2, ARRAY['das Haus','die Wohnung','das Zimmer','die Küche','das Schlafzimmer','das Bad','der Tisch','der Stuhl']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-000065992e71', 'Die Wohnung beschreiben — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Die Wohnung beschreiben".', 'Creative practice for Describing Homes', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-000065992e71', 'Homework: Die Wohnung beschreiben', 'Complete these tasks to reinforce "Die Wohnung beschreiben".', 'mixed', '[{"description":"Review all vocabulary from this lesson"},{"description":"Write 5 sentences using the grammar structure"},{"description":"Practice the dialogue aloud"}]', 35, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-000065992e71', 'In this lesson you learned about Describing Homes. You practiced vocabulary related to home and grammar structure present_tense.', '["Mastered vocabulary about Describing Homes","Applied present_tense correctly","Read and understood a text about Describing Homes","Practiced speaking about Describing Homes"]', '[{"title":"Die Wohnung beschreiben Review","summary":"present_tense — the main grammar focus of this lesson."}]', ARRAY['Describing Homes core vocabulary','home key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)','Verb is always in second position']::text[], ARRAY['Practice 15-20 minutes daily','Use new vocabulary in real sentences','Speak out loud to improve pronunciation']::text[]);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000065992e71', 'Pronunciation: German pronunciation basics', 'German is mostly phonetic. Pronounce each letter.

Common mistake for Arabic speakers: Pronouncing every letter as in English.', '[]', '[{"german":"ja","arabic":"","english":"","phonetic":"/jaː/"},{"german":"nein","arabic":"","english":"","phonetic":"/naɪn/"}]', '[]', 10);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000065992e71', 'translation', 'Translate to German: "This is a translation exercise."', '[]', 'Das ist eine Übersetzungsübung.', 'Use "das ist" for "this is"', 1, 40);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000065992e71', 'Culture: Describing Homes in German-Speaking Countries', 'Learn how Describing Homes is approached in German culture.

تعلم كيف يتم التعامل مع Describing Homes في الثقافة الألمانية.', '["Tip: Be direct and polite","Tip: Use formal language with strangers","Tip: Respect punctuality"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000065992e71', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Common error for Arabic speakers","correction":"Correct version","explanation":"Explanation of the error"}]', 30);

  -- Lesson 4: Wohnungssuche (L-A1-03-04)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-000065992e72', '00000000-0000-4000-a000-000039b4d360', 'Wohnungssuche', 'Learn how to read apartment ads and talk about housing.', 'Apartment Hunting', 'reading', '["Understand and use vocabulary related to Apartment Hunting","Apply present_tense correctly","Read and comprehend a text about Apartment Hunting","Listen and understand a dialogue about Apartment Hunting","Speak about Apartment Hunting in simple sentences","Write a short text about Apartment Hunting"]', 25, 4, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-000065992e72', 'das Haus', 'البيت', 'house', 'das', 'die Häuser', 'noun', 'Das Haus ist groß.', 'The house is big.', 'A1', 1),
  ('00000000-0000-4000-a000-000065992e72', 'die Wohnung', 'الشقة', 'apartment', 'die', 'die Wohnungen', 'noun', 'Meine Wohnung hat drei Zimmer.', 'My apartment has three rooms.', 'A1', 2),
  ('00000000-0000-4000-a000-000065992e72', 'das Zimmer', 'الغرفة', 'room', 'das', 'die Zimmer', 'noun', 'Das Zimmer ist hell.', 'The room is bright.', 'A1', 3),
  ('00000000-0000-4000-a000-000065992e72', 'die Küche', 'المطبخ', 'kitchen', 'die', 'die Küchen', 'noun', 'Die Küche ist modern.', 'The kitchen is modern.', 'A1', 4),
  ('00000000-0000-4000-a000-000065992e72', 'das Schlafzimmer', 'غرفة النوم', 'bedroom', 'das', NULL, 'noun', 'Mein Schlafzimmer ist gemütlich.', 'My bedroom is cozy.', 'A1', 5),
  ('00000000-0000-4000-a000-000065992e72', 'das Bad', 'الحمام', 'bathroom', 'das', 'die Bäder', 'noun', 'Das Bad ist sauber.', 'The bathroom is clean.', 'A1', 6),
  ('00000000-0000-4000-a000-000065992e72', 'der Tisch', 'الطاولة', 'table', 'der', 'die Tische', 'noun', 'Der Tisch ist aus Holz.', 'The table is made of wood.', 'A1', 7),
  ('00000000-0000-4000-a000-000065992e72', 'der Stuhl', 'الكرسي', 'chair', 'der', 'die Stühle', 'noun', 'Der Stuhl ist bequem.', 'The chair is comfortable.', 'A1', 8),
  ('00000000-0000-4000-a000-000065992e72', 'das Bett', 'السرير', 'bed', 'das', 'die Betten', 'noun', 'Das Bett ist groß.', 'The bed is big.', 'A1', 9),
  ('00000000-0000-4000-a000-000065992e72', 'wohnen', 'يسكن', 'to live', NULL, NULL, 'verb', 'Ich wohne in Berlin.', 'I live in Berlin.', 'A1', 10),
  ('00000000-0000-4000-a000-000065992e72', 'Hallo', 'مرحباً', 'hello', NULL, NULL, 'interjection', 'Hallo, wie geht es dir?', 'Hello, how are you?', 'A1', 11),
  ('00000000-0000-4000-a000-000065992e72', 'Guten Morgen', 'صباح الخير', 'good morning', NULL, NULL, 'phrase', 'Guten Morgen, Herr Müller.', 'Good morning, Mr. Müller.', 'A1', 12),
  ('00000000-0000-4000-a000-000065992e72', 'Guten Tag', 'نهارك سعيد', 'good day', NULL, NULL, 'phrase', 'Guten Tag, Frau Schmidt.', 'Good day, Mrs. Schmidt.', 'A1', 13),
  ('00000000-0000-4000-a000-000065992e72', 'Tschüss', 'مع السلامة', 'bye', NULL, NULL, 'interjection', 'Tschüss, bis morgen!', 'Bye, see you tomorrow!', 'A1', 14),
  ('00000000-0000-4000-a000-000065992e72', 'der Name', 'الاسم', 'name', 'der', 'die Namen', 'noun', 'Mein Name ist Anna.', 'My name is Anna.', 'A1', 15),
  ('00000000-0000-4000-a000-000065992e72', 'wie', 'كيف', 'how', NULL, NULL, 'adverb', 'Wie heißt du?', 'What is your name?', 'A1', 16),
  ('00000000-0000-4000-a000-000065992e72', 'freuen', 'يسر', 'to be pleased', NULL, NULL, 'verb', 'Ich freue mich, dich kennenzulernen.', 'I am pleased to meet you.', 'A1', 17),
  ('00000000-0000-4000-a000-000065992e72', 'Willkommen', 'أهلاً وسهلاً', 'welcome', NULL, NULL, 'interjection', 'Willkommen in Deutschland!', 'Welcome to Germany!', 'A1', 18),
  ('00000000-0000-4000-a000-000065992e72', 'die Familie', 'العائلة', 'family', 'die', 'die Familien', 'noun', 'Meine Familie ist groß.', 'My family is big.', 'A1', 19),
  ('00000000-0000-4000-a000-000065992e72', 'der Vater', 'الأب', 'father', 'der', 'die Väter', 'noun', 'Mein Vater ist Ingenieur.', 'My father is an engineer.', 'A1', 20),
  ('00000000-0000-4000-a000-000065992e72', 'die Mutter', 'الأم', 'mother', 'die', 'die Mütter', 'noun', 'Meine Mutter kocht gut.', 'My mother cooks well.', 'A1', 21),
  ('00000000-0000-4000-a000-000065992e72', 'der Bruder', 'الأخ', 'brother', 'der', 'die Brüder', 'noun', 'Mein Bruder ist 15 Jahre alt.', 'My brother is 15 years old.', 'A1', 22),
  ('00000000-0000-4000-a000-000065992e72', 'die Schwester', 'الأخت', 'sister', 'die', 'die Schwestern', 'noun', 'Meine Schwester studiert Medizin.', 'My sister studies medicine.', 'A1', 23),
  ('00000000-0000-4000-a000-000065992e72', 'die Geschwister', 'الإخوة', 'siblings', 'die', NULL, 'noun', 'Hast du Geschwister?', 'Do you have siblings?', 'A1', 24),
  ('00000000-0000-4000-a000-000065992e72', 'der Sohn', 'الابن', 'son', 'der', 'die Söhne', 'noun', 'Wir haben einen Sohn.', 'We have a son.', 'A1', 25),
  ('00000000-0000-4000-a000-000065992e72', 'die Tochter', 'الابنة', 'daughter', 'die', 'die Töchter', 'noun', 'Meine Tochter geht zur Schule.', 'My daughter goes to school.', 'A1', 26),
  ('00000000-0000-4000-a000-000065992e72', 'die Großeltern', 'الأجداد', 'grandparents', 'die', NULL, 'noun', 'Meine Großeltern wohnen auf dem Land.', 'My grandparents live in the countryside.', 'A1', 27),
  ('00000000-0000-4000-a000-000065992e72', 'verheiratet', 'متزوج', 'married', NULL, NULL, 'adjective', 'Meine Eltern sind verheiratet.', 'My parents are married.', 'A1', 28),
  ('00000000-0000-4000-a000-000065992e72', 'das Brot', 'الخبز', 'bread', 'das', 'die Brote', 'noun', 'Ich kaufe ein Brot.', 'I buy a loaf of bread.', 'A1', 29),
  ('00000000-0000-4000-a000-000065992e72', 'die Milch', 'الحليب', 'milk', 'die', NULL, 'noun', 'Die Milch ist frisch.', 'The milk is fresh.', 'A1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000065992e72', 'Präsens der regelmäßigen Verben (Present Tense) / المضارع للأفعال المنتظمة', 'In German, regular verbs follow a consistent pattern. The infinitive ends in -en. Remove the -en and add the personal endings: ich -e, du -st, er/sie/es -t, wir -en, ihr -t, sie/Sie -en. For most Arabic speakers, this is easier than Arabic verb conjugation because German has fewer forms.', '[{"rule":"ich: stem + e","note":"Ich lerne, ich wohne, ich arbeite"},{"rule":"du: stem + st","note":"Du lernst, du wohnst, du arbeitest"},{"rule":"er/sie/es: stem + t","note":"Er lernt, sie wohnt, es arbeitet"},{"rule":"wir: stem + en","note":"Wir lernen, wir wohnen, wir arbeiten"},{"rule":"ihr: stem + t","note":"Ihr lernt, ihr wohnt, ihr arbeitet"},{"rule":"sie/Sie: stem + en","note":"Sie lernen, Sie wohnen"}]', '[{"german":"Ich lerne Deutsch.","arabic":"أنا أتعلم الألمانية.","english":"I am learning German."},{"german":"Du wohnst in Berlin.","arabic":"أنت تسكن في برلين.","english":"You live in Berlin."},{"german":"Er arbeitet bei Siemens.","arabic":"هو يعمل في سيمنز.","english":"He works at Siemens."}]', '[{"mistake":"Ich lernen Deutsch","correction":"Ich lerne Deutsch","explanation":"After \"ich\" we use the stem + e, not the infinitive."},{"mistake":"Er lerne Deutsch","correction":"Er lernt Deutsch","explanation":"After \"er/sie/es\" we add -t, not -e."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000065992e72', 'multiple_choice', 'What does "das Haus" mean?', '["The","A","This","That"]', 'The', 'This is a basic vocabulary item.', 1, 1),
  ('00000000-0000-4000-a000-000065992e72', 'fill_gap', 'Complete with the correct form.', '["Option 1","Option 2","Option 3"]', 'Option 1', 'Practice grammar in context.', 1, 2),
  ('00000000-0000-4000-a000-000065992e72', 'translation', 'Translate: "I learn German."', '["Ich lerne Deutsch.","Ich lerne Englisch.","Ich lerne Spanisch."]', 'Ich lerne Deutsch.', 'Ich = I, lerne = learn/learning, Deutsch = German.', 2, 3),
  ('00000000-0000-4000-a000-000065992e72', 'sentence_order', 'Order the sentence.', '[]', 'Ich lerne Deutsch.', 'Subject + verb + object in German.', 2, 4),
  ('00000000-0000-4000-a000-000065992e72', 'matching', 'Match the words with their meanings.', '["Match pairs correctly"]', 'Correct pairs', 'Test your vocabulary knowledge.', 2, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-000065992e72', 'multiple_choice', 'What is the main topic of this lesson?', '["Apartment Hunting","Sports","Music","Travel"]', 'Apartment Hunting', 1, 1),
  ('00000000-0000-4000-a000-000065992e72', 'true_false', 'This lesson teaches vocabulary about Apartment Hunting.', '["True","False"]', 'True', 1, 2),
  ('00000000-0000-4000-a000-000065992e72', 'true_false', 'German word order is always the same as English.', '["True","False"]', 'False', 1, 3),
  ('00000000-0000-4000-a000-000065992e72', 'multiple_choice', 'How do you say "please" in German?', '["Danke","Bitte","Tschüss","Hallo"]', 'Bitte', 1, 4),
  ('00000000-0000-4000-a000-000065992e72', 'multiple_choice', 'Which article is feminine?', '["der","die","das","den"]', 'die', 1, 5),
  ('00000000-0000-4000-a000-000065992e72', 'fill_blank', 'Ich ___ (to be) Student.', '["bin","bist","ist","sind"]', 'bin', 1, 6),
  ('00000000-0000-4000-a000-000065992e72', 'multiple_choice', 'What is the correct word order?', '["Ich lerne Deutsch","Ich Deutsch lerne","Lerne ich Deutsch","Deutsch ich lerne"]', 'Ich lerne Deutsch', 1, 7),
  ('00000000-0000-4000-a000-000065992e72', 'true_false', 'All German nouns are capitalized.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-000065992e72', 'multiple_choice', 'How do you say "thank you" in German?', '["Bitte","Danke","Tschüss","Hallo"]', 'Danke', 1, 9),
  ('00000000-0000-4000-a000-000065992e72', 'fill_blank', 'Wo ___ du? (to live)', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 1, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-000065992e72', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Wohnen', 'formal', false, 1),
  ('00000000-0000-4000-a000-000065992e72', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Wohnen', 'informal', false, 2),
  ('00000000-0000-4000-a000-000065992e72', 'Bitte!', 'Please!', 'من فضلك!', 'Used in Wohnen', 'neutral', false, 3),
  ('00000000-0000-4000-a000-000065992e72', 'Danke!', 'Thanks!', 'شكراً!', 'Used in Wohnen', 'neutral', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-000065992e72', 'Hallo', 'Hello', 'Greeting', 'expression', 1),
  ('00000000-0000-4000-a000-000065992e72', 'Danke', 'Thanks', 'Politeness', 'expression', 2),
  ('00000000-0000-4000-a000-000065992e72', 'Bitte', 'Please', 'Politeness', 'expression', 3),
  ('00000000-0000-4000-a000-000065992e72', 'Tschüss', 'Bye', 'Farewell', 'expression', 4);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-000065992e72', 'Wohnungssuche — Leseübung', 'Ich wohne in einer schönen Wohnung in Berlin. Die Wohnung hat drei Zimmer: ein Wohnzimmer, ein Schlafzimmer und eine Küche. Das Wohnzimmer ist groß und gemütlich. Es gibt ein Sofa, einen Tisch und einen Schrank. Die Küche ist modern. Der Herd und der Kühlschrank sind neu. Mein Schlafzimmer ist klein, aber hell. Das Bett ist bequem. Ich fühle mich in meiner Wohnung sehr wohl.', 'I live in a nice apartment in Berlin. The apartment has three rooms: a living room, a bedroom and a kitchen. The living room is big and cozy. There is a sofa, a table and a wardrobe. The kitchen is modern. The stove and refrigerator are new. My bedroom is small but bright. The bed is comfortable. I feel very comfortable in my apartment.', 'أسكن في شقة جميلة في برلين. الشقة فيها ثلاث غرف: غرفة معيشة وغرفة نوم ومطبخ. غرفة المعيشة كبيرة ومريحة. يوجد أريكة وطاولة وخزانة. المطبخ حديث. الموقد والثلاجة جديدان. غرفة نومي صغيرة لكنها مشرقة. السرير مريح. أشعر براحة كبيرة في شقتي.', 64, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, duration_seconds, speaker_count, scenario) values
  ('00000000-0000-4000-a000-000065992e72', 'Wohnungssuche — Hörverständnis', '[Lehrerin]: Guten Morgen! Heute lernen wir Begrüßungen.

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

[Lehrerin]: ممتاز! إلى الغد!', 72, 2, 'Wohnen');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-000065992e72', 'Speaking: Wohnungssuche', 'Practice talking about Apartment Hunting. Answer questions and have a simple conversation.', 'Apartment Hunting', ARRAY['Use full sentences','Speak clearly','Don''t worry about mistakes']::text[], ARRAY['das Haus','die Wohnung','das Zimmer','die Küche','das Schlafzimmer']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-000065992e72', 'Writing: Wohnungssuche', 'Write a short text about Apartment Hunting. Use at least 5 vocabulary words from this lesson.', ARRAY['Start with a greeting','Use the vocabulary from this lesson','Check your grammar']::text[], ARRAY['das Haus','die Wohnung','das Zimmer']::text[], '["Sentence structure","Vocabulary usage"]', 50, 150, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000065992e72', 'Wohnungssuche — Roleplay', 'Apartment Hunting', 'Student', 'Teacher', 'Practice conversation about Apartment Hunting', 'Hallo! Lass uns über dieses Thema sprechen.', 'beginner', 1, ARRAY['das Haus','die Wohnung','das Zimmer','die Küche','das Schlafzimmer','das Bad','der Tisch','der Stuhl']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000065992e72', 'Wohnungssuche — Advanced Roleplay', 'Apartment Hunting', 'Customer', 'Assistant', 'Extended conversation about Apartment Hunting', 'Guten Tag! Wie kann ich Ihnen helfen?', 'beginner', 2, ARRAY['das Haus','die Wohnung','das Zimmer','die Küche','das Schlafzimmer','das Bad','der Tisch','der Stuhl']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-000065992e72', 'Wohnungssuche — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Wohnungssuche".', 'Creative practice for Apartment Hunting', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-000065992e72', 'Homework: Wohnungssuche', 'Complete these tasks to reinforce "Wohnungssuche".', 'mixed', '[{"description":"Review all vocabulary from this lesson"},{"description":"Write 5 sentences using the grammar structure"},{"description":"Practice the dialogue aloud"}]', 35, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-000065992e72', 'In this lesson you learned about Apartment Hunting. You practiced vocabulary related to home and grammar structure present_tense.', '["Mastered vocabulary about Apartment Hunting","Applied present_tense correctly","Read and understood a text about Apartment Hunting","Practiced speaking about Apartment Hunting"]', '[{"title":"Wohnungssuche Review","summary":"present_tense — the main grammar focus of this lesson."}]', ARRAY['Apartment Hunting core vocabulary','home key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)','Verb is always in second position']::text[], ARRAY['Practice 15-20 minutes daily','Use new vocabulary in real sentences','Speak out loud to improve pronunciation']::text[]);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000065992e72', 'Pronunciation: German pronunciation basics', 'German is mostly phonetic. Pronounce each letter.

Common mistake for Arabic speakers: Pronouncing every letter as in English.', '[]', '[{"german":"ja","arabic":"","english":"","phonetic":"/jaː/"},{"german":"nein","arabic":"","english":"","phonetic":"/naɪn/"}]', '[]', 10);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000065992e72', 'translation', 'Translate to German: "This is a translation exercise."', '[]', 'Das ist eine Übersetzungsübung.', 'Use "das ist" for "this is"', 1, 40);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000065992e72', 'Culture: Apartment Hunting in German-Speaking Countries', 'Learn how Apartment Hunting is approached in German culture.

تعلم كيف يتم التعامل مع Apartment Hunting في الثقافة الألمانية.', '["Tip: Be direct and polite","Tip: Use formal language with strangers","Tip: Respect punctuality"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000065992e72', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Common error for Arabic speakers","correction":"Correct version","explanation":"Explanation of the error"}]', 30);

  -- Lesson 5: Meine Wohnung präsentieren (L-A1-03-05)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-000065992e73', '00000000-0000-4000-a000-000039b4d360', 'Meine Wohnung präsentieren', 'Present your apartment or ideal home.', 'Presenting Home', 'speaking', '["Understand and use vocabulary related to Presenting Home","Apply present_tense correctly","Read and comprehend a text about Presenting Home","Listen and understand a dialogue about Presenting Home","Speak about Presenting Home in simple sentences","Write a short text about Presenting Home"]', 20, 5, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-000065992e73', 'das Haus', 'البيت', 'house', 'das', 'die Häuser', 'noun', 'Das Haus ist groß.', 'The house is big.', 'A1', 1),
  ('00000000-0000-4000-a000-000065992e73', 'die Wohnung', 'الشقة', 'apartment', 'die', 'die Wohnungen', 'noun', 'Meine Wohnung hat drei Zimmer.', 'My apartment has three rooms.', 'A1', 2),
  ('00000000-0000-4000-a000-000065992e73', 'das Zimmer', 'الغرفة', 'room', 'das', 'die Zimmer', 'noun', 'Das Zimmer ist hell.', 'The room is bright.', 'A1', 3),
  ('00000000-0000-4000-a000-000065992e73', 'die Küche', 'المطبخ', 'kitchen', 'die', 'die Küchen', 'noun', 'Die Küche ist modern.', 'The kitchen is modern.', 'A1', 4),
  ('00000000-0000-4000-a000-000065992e73', 'das Schlafzimmer', 'غرفة النوم', 'bedroom', 'das', NULL, 'noun', 'Mein Schlafzimmer ist gemütlich.', 'My bedroom is cozy.', 'A1', 5),
  ('00000000-0000-4000-a000-000065992e73', 'das Bad', 'الحمام', 'bathroom', 'das', 'die Bäder', 'noun', 'Das Bad ist sauber.', 'The bathroom is clean.', 'A1', 6),
  ('00000000-0000-4000-a000-000065992e73', 'der Tisch', 'الطاولة', 'table', 'der', 'die Tische', 'noun', 'Der Tisch ist aus Holz.', 'The table is made of wood.', 'A1', 7),
  ('00000000-0000-4000-a000-000065992e73', 'der Stuhl', 'الكرسي', 'chair', 'der', 'die Stühle', 'noun', 'Der Stuhl ist bequem.', 'The chair is comfortable.', 'A1', 8),
  ('00000000-0000-4000-a000-000065992e73', 'das Bett', 'السرير', 'bed', 'das', 'die Betten', 'noun', 'Das Bett ist groß.', 'The bed is big.', 'A1', 9),
  ('00000000-0000-4000-a000-000065992e73', 'wohnen', 'يسكن', 'to live', NULL, NULL, 'verb', 'Ich wohne in Berlin.', 'I live in Berlin.', 'A1', 10),
  ('00000000-0000-4000-a000-000065992e73', 'Hallo', 'مرحباً', 'hello', NULL, NULL, 'interjection', 'Hallo, wie geht es dir?', 'Hello, how are you?', 'A1', 11),
  ('00000000-0000-4000-a000-000065992e73', 'Guten Morgen', 'صباح الخير', 'good morning', NULL, NULL, 'phrase', 'Guten Morgen, Herr Müller.', 'Good morning, Mr. Müller.', 'A1', 12),
  ('00000000-0000-4000-a000-000065992e73', 'Guten Tag', 'نهارك سعيد', 'good day', NULL, NULL, 'phrase', 'Guten Tag, Frau Schmidt.', 'Good day, Mrs. Schmidt.', 'A1', 13),
  ('00000000-0000-4000-a000-000065992e73', 'Tschüss', 'مع السلامة', 'bye', NULL, NULL, 'interjection', 'Tschüss, bis morgen!', 'Bye, see you tomorrow!', 'A1', 14),
  ('00000000-0000-4000-a000-000065992e73', 'der Name', 'الاسم', 'name', 'der', 'die Namen', 'noun', 'Mein Name ist Anna.', 'My name is Anna.', 'A1', 15),
  ('00000000-0000-4000-a000-000065992e73', 'wie', 'كيف', 'how', NULL, NULL, 'adverb', 'Wie heißt du?', 'What is your name?', 'A1', 16),
  ('00000000-0000-4000-a000-000065992e73', 'freuen', 'يسر', 'to be pleased', NULL, NULL, 'verb', 'Ich freue mich, dich kennenzulernen.', 'I am pleased to meet you.', 'A1', 17),
  ('00000000-0000-4000-a000-000065992e73', 'Willkommen', 'أهلاً وسهلاً', 'welcome', NULL, NULL, 'interjection', 'Willkommen in Deutschland!', 'Welcome to Germany!', 'A1', 18),
  ('00000000-0000-4000-a000-000065992e73', 'die Familie', 'العائلة', 'family', 'die', 'die Familien', 'noun', 'Meine Familie ist groß.', 'My family is big.', 'A1', 19),
  ('00000000-0000-4000-a000-000065992e73', 'der Vater', 'الأب', 'father', 'der', 'die Väter', 'noun', 'Mein Vater ist Ingenieur.', 'My father is an engineer.', 'A1', 20),
  ('00000000-0000-4000-a000-000065992e73', 'die Mutter', 'الأم', 'mother', 'die', 'die Mütter', 'noun', 'Meine Mutter kocht gut.', 'My mother cooks well.', 'A1', 21),
  ('00000000-0000-4000-a000-000065992e73', 'der Bruder', 'الأخ', 'brother', 'der', 'die Brüder', 'noun', 'Mein Bruder ist 15 Jahre alt.', 'My brother is 15 years old.', 'A1', 22),
  ('00000000-0000-4000-a000-000065992e73', 'die Schwester', 'الأخت', 'sister', 'die', 'die Schwestern', 'noun', 'Meine Schwester studiert Medizin.', 'My sister studies medicine.', 'A1', 23),
  ('00000000-0000-4000-a000-000065992e73', 'die Geschwister', 'الإخوة', 'siblings', 'die', NULL, 'noun', 'Hast du Geschwister?', 'Do you have siblings?', 'A1', 24),
  ('00000000-0000-4000-a000-000065992e73', 'der Sohn', 'الابن', 'son', 'der', 'die Söhne', 'noun', 'Wir haben einen Sohn.', 'We have a son.', 'A1', 25),
  ('00000000-0000-4000-a000-000065992e73', 'die Tochter', 'الابنة', 'daughter', 'die', 'die Töchter', 'noun', 'Meine Tochter geht zur Schule.', 'My daughter goes to school.', 'A1', 26),
  ('00000000-0000-4000-a000-000065992e73', 'die Großeltern', 'الأجداد', 'grandparents', 'die', NULL, 'noun', 'Meine Großeltern wohnen auf dem Land.', 'My grandparents live in the countryside.', 'A1', 27),
  ('00000000-0000-4000-a000-000065992e73', 'verheiratet', 'متزوج', 'married', NULL, NULL, 'adjective', 'Meine Eltern sind verheiratet.', 'My parents are married.', 'A1', 28),
  ('00000000-0000-4000-a000-000065992e73', 'das Brot', 'الخبز', 'bread', 'das', 'die Brote', 'noun', 'Ich kaufe ein Brot.', 'I buy a loaf of bread.', 'A1', 29),
  ('00000000-0000-4000-a000-000065992e73', 'die Milch', 'الحليب', 'milk', 'die', NULL, 'noun', 'Die Milch ist frisch.', 'The milk is fresh.', 'A1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000065992e73', 'Präsens der regelmäßigen Verben (Present Tense) / المضارع للأفعال المنتظمة', 'In German, regular verbs follow a consistent pattern. The infinitive ends in -en. Remove the -en and add the personal endings: ich -e, du -st, er/sie/es -t, wir -en, ihr -t, sie/Sie -en. For most Arabic speakers, this is easier than Arabic verb conjugation because German has fewer forms.', '[{"rule":"ich: stem + e","note":"Ich lerne, ich wohne, ich arbeite"},{"rule":"du: stem + st","note":"Du lernst, du wohnst, du arbeitest"},{"rule":"er/sie/es: stem + t","note":"Er lernt, sie wohnt, es arbeitet"},{"rule":"wir: stem + en","note":"Wir lernen, wir wohnen, wir arbeiten"},{"rule":"ihr: stem + t","note":"Ihr lernt, ihr wohnt, ihr arbeitet"},{"rule":"sie/Sie: stem + en","note":"Sie lernen, Sie wohnen"}]', '[{"german":"Ich lerne Deutsch.","arabic":"أنا أتعلم الألمانية.","english":"I am learning German."},{"german":"Du wohnst in Berlin.","arabic":"أنت تسكن في برلين.","english":"You live in Berlin."},{"german":"Er arbeitet bei Siemens.","arabic":"هو يعمل في سيمنز.","english":"He works at Siemens."}]', '[{"mistake":"Ich lernen Deutsch","correction":"Ich lerne Deutsch","explanation":"After \"ich\" we use the stem + e, not the infinitive."},{"mistake":"Er lerne Deutsch","correction":"Er lernt Deutsch","explanation":"After \"er/sie/es\" we add -t, not -e."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000065992e73', 'multiple_choice', 'What does "das Haus" mean?', '["The","A","This","That"]', 'The', 'This is a basic vocabulary item.', 1, 1),
  ('00000000-0000-4000-a000-000065992e73', 'fill_gap', 'Complete with the correct form.', '["Option 1","Option 2","Option 3"]', 'Option 1', 'Practice grammar in context.', 1, 2),
  ('00000000-0000-4000-a000-000065992e73', 'translation', 'Translate: "I learn German."', '["Ich lerne Deutsch.","Ich lerne Englisch.","Ich lerne Spanisch."]', 'Ich lerne Deutsch.', 'Ich = I, lerne = learn/learning, Deutsch = German.', 2, 3),
  ('00000000-0000-4000-a000-000065992e73', 'sentence_order', 'Order the sentence.', '[]', 'Ich lerne Deutsch.', 'Subject + verb + object in German.', 2, 4),
  ('00000000-0000-4000-a000-000065992e73', 'matching', 'Match the words with their meanings.', '["Match pairs correctly"]', 'Correct pairs', 'Test your vocabulary knowledge.', 2, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-000065992e73', 'multiple_choice', 'What is the main topic of this lesson?', '["Presenting Home","Sports","Music","Travel"]', 'Presenting Home', 1, 1),
  ('00000000-0000-4000-a000-000065992e73', 'true_false', 'This lesson teaches vocabulary about Presenting Home.', '["True","False"]', 'True', 1, 2),
  ('00000000-0000-4000-a000-000065992e73', 'true_false', 'German word order is always the same as English.', '["True","False"]', 'False', 1, 3),
  ('00000000-0000-4000-a000-000065992e73', 'multiple_choice', 'How do you say "please" in German?', '["Danke","Bitte","Tschüss","Hallo"]', 'Bitte', 1, 4),
  ('00000000-0000-4000-a000-000065992e73', 'multiple_choice', 'Which article is feminine?', '["der","die","das","den"]', 'die', 1, 5),
  ('00000000-0000-4000-a000-000065992e73', 'fill_blank', 'Ich ___ (to be) Student.', '["bin","bist","ist","sind"]', 'bin', 1, 6),
  ('00000000-0000-4000-a000-000065992e73', 'multiple_choice', 'What is the correct word order?', '["Ich lerne Deutsch","Ich Deutsch lerne","Lerne ich Deutsch","Deutsch ich lerne"]', 'Ich lerne Deutsch', 1, 7),
  ('00000000-0000-4000-a000-000065992e73', 'true_false', 'All German nouns are capitalized.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-000065992e73', 'multiple_choice', 'How do you say "thank you" in German?', '["Bitte","Danke","Tschüss","Hallo"]', 'Danke', 1, 9),
  ('00000000-0000-4000-a000-000065992e73', 'fill_blank', 'Wo ___ du? (to live)', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 1, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-000065992e73', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Wohnen', 'formal', false, 1),
  ('00000000-0000-4000-a000-000065992e73', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Wohnen', 'informal', false, 2),
  ('00000000-0000-4000-a000-000065992e73', 'Bitte!', 'Please!', 'من فضلك!', 'Used in Wohnen', 'neutral', false, 3),
  ('00000000-0000-4000-a000-000065992e73', 'Danke!', 'Thanks!', 'شكراً!', 'Used in Wohnen', 'neutral', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-000065992e73', 'Hallo', 'Hello', 'Greeting', 'expression', 1),
  ('00000000-0000-4000-a000-000065992e73', 'Danke', 'Thanks', 'Politeness', 'expression', 2),
  ('00000000-0000-4000-a000-000065992e73', 'Bitte', 'Please', 'Politeness', 'expression', 3),
  ('00000000-0000-4000-a000-000065992e73', 'Tschüss', 'Bye', 'Farewell', 'expression', 4);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-000065992e73', 'Meine Wohnung präsentieren — Leseübung', 'Ich wohne in einer schönen Wohnung in Berlin. Die Wohnung hat drei Zimmer: ein Wohnzimmer, ein Schlafzimmer und eine Küche. Das Wohnzimmer ist groß und gemütlich. Es gibt ein Sofa, einen Tisch und einen Schrank. Die Küche ist modern. Der Herd und der Kühlschrank sind neu. Mein Schlafzimmer ist klein, aber hell. Das Bett ist bequem. Ich fühle mich in meiner Wohnung sehr wohl.', 'I live in a nice apartment in Berlin. The apartment has three rooms: a living room, a bedroom and a kitchen. The living room is big and cozy. There is a sofa, a table and a wardrobe. The kitchen is modern. The stove and refrigerator are new. My bedroom is small but bright. The bed is comfortable. I feel very comfortable in my apartment.', 'أسكن في شقة جميلة في برلين. الشقة فيها ثلاث غرف: غرفة معيشة وغرفة نوم ومطبخ. غرفة المعيشة كبيرة ومريحة. يوجد أريكة وطاولة وخزانة. المطبخ حديث. الموقد والثلاجة جديدان. غرفة نومي صغيرة لكنها مشرقة. السرير مريح. أشعر براحة كبيرة في شقتي.', 64, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, duration_seconds, speaker_count, scenario) values
  ('00000000-0000-4000-a000-000065992e73', 'Meine Wohnung präsentieren — Hörverständnis', '[Lehrerin]: Guten Morgen! Heute lernen wir Begrüßungen.

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

[Lehrerin]: ممتاز! إلى الغد!', 72, 2, 'Wohnen');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-000065992e73', 'Speaking: Meine Wohnung präsentieren', 'Practice talking about Presenting Home. Answer questions and have a simple conversation.', 'Presenting Home', ARRAY['Use full sentences','Speak clearly','Don''t worry about mistakes']::text[], ARRAY['das Haus','die Wohnung','das Zimmer','die Küche','das Schlafzimmer']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-000065992e73', 'Writing: Meine Wohnung präsentieren', 'Write a short text about Presenting Home. Use at least 5 vocabulary words from this lesson.', ARRAY['Start with a greeting','Use the vocabulary from this lesson','Check your grammar']::text[], ARRAY['das Haus','die Wohnung','das Zimmer']::text[], '["Sentence structure","Vocabulary usage"]', 50, 150, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000065992e73', 'Meine Wohnung präsentieren — Roleplay', 'Presenting Home', 'Student', 'Teacher', 'Practice conversation about Presenting Home', 'Hallo! Lass uns über dieses Thema sprechen.', 'beginner', 1, ARRAY['das Haus','die Wohnung','das Zimmer','die Küche','das Schlafzimmer','das Bad','der Tisch','der Stuhl']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000065992e73', 'Meine Wohnung präsentieren — Advanced Roleplay', 'Presenting Home', 'Customer', 'Assistant', 'Extended conversation about Presenting Home', 'Guten Tag! Wie kann ich Ihnen helfen?', 'beginner', 2, ARRAY['das Haus','die Wohnung','das Zimmer','die Küche','das Schlafzimmer','das Bad','der Tisch','der Stuhl']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-000065992e73', 'Meine Wohnung präsentieren — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Meine Wohnung präsentieren".', 'Creative practice for Presenting Home', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-000065992e73', 'Homework: Meine Wohnung präsentieren', 'Complete these tasks to reinforce "Meine Wohnung präsentieren".', 'mixed', '[{"description":"Review all vocabulary from this lesson"},{"description":"Write 5 sentences using the grammar structure"},{"description":"Practice the dialogue aloud"}]', 35, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-000065992e73', 'In this lesson you learned about Presenting Home. You practiced vocabulary related to home and grammar structure present_tense.', '["Mastered vocabulary about Presenting Home","Applied present_tense correctly","Read and understood a text about Presenting Home","Practiced speaking about Presenting Home"]', '[{"title":"Meine Wohnung präsentieren Review","summary":"present_tense — the main grammar focus of this lesson."}]', ARRAY['Presenting Home core vocabulary','home key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)','Verb is always in second position']::text[], ARRAY['Practice 15-20 minutes daily','Use new vocabulary in real sentences','Speak out loud to improve pronunciation']::text[]);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000065992e73', 'Pronunciation: German pronunciation basics', 'German is mostly phonetic. Pronounce each letter.

Common mistake for Arabic speakers: Pronouncing every letter as in English.', '[]', '[{"german":"ja","arabic":"","english":"","phonetic":"/jaː/"},{"german":"nein","arabic":"","english":"","phonetic":"/naɪn/"}]', '[]', 10);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000065992e73', 'translation', 'Translate to German: "This is a translation exercise."', '[]', 'Das ist eine Übersetzungsübung.', 'Use "das ist" for "this is"', 1, 40);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000065992e73', 'Culture: Presenting Home in German-Speaking Countries', 'Learn how Presenting Home is approached in German culture.

تعلم كيف يتم التعامل مع Presenting Home في الثقافة الألمانية.', '["Tip: Be direct and polite","Tip: Use formal language with strangers","Tip: Respect punctuality"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000065992e73', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Common error for Arabic speakers","correction":"Correct version","explanation":"Explanation of the error"}]', 30);

  -- Lesson 6: Test: Wohnen (L-A1-03-06)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-000065992e74', '00000000-0000-4000-a000-000039b4d360', 'Test: Wohnen', 'Test your knowledge of Module 3.', 'Module Test', 'test', '["Understand and use vocabulary related to Module Test","Apply present_tense correctly","Read and comprehend a text about Module Test","Listen and understand a dialogue about Module Test","Speak about Module Test in simple sentences","Write a short text about Module Test"]', 20, 6, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-000065992e74', 'das Haus', 'البيت', 'house', 'das', 'die Häuser', 'noun', 'Das Haus ist groß.', 'The house is big.', 'A1', 1),
  ('00000000-0000-4000-a000-000065992e74', 'die Wohnung', 'الشقة', 'apartment', 'die', 'die Wohnungen', 'noun', 'Meine Wohnung hat drei Zimmer.', 'My apartment has three rooms.', 'A1', 2),
  ('00000000-0000-4000-a000-000065992e74', 'das Zimmer', 'الغرفة', 'room', 'das', 'die Zimmer', 'noun', 'Das Zimmer ist hell.', 'The room is bright.', 'A1', 3),
  ('00000000-0000-4000-a000-000065992e74', 'die Küche', 'المطبخ', 'kitchen', 'die', 'die Küchen', 'noun', 'Die Küche ist modern.', 'The kitchen is modern.', 'A1', 4),
  ('00000000-0000-4000-a000-000065992e74', 'das Schlafzimmer', 'غرفة النوم', 'bedroom', 'das', NULL, 'noun', 'Mein Schlafzimmer ist gemütlich.', 'My bedroom is cozy.', 'A1', 5),
  ('00000000-0000-4000-a000-000065992e74', 'das Bad', 'الحمام', 'bathroom', 'das', 'die Bäder', 'noun', 'Das Bad ist sauber.', 'The bathroom is clean.', 'A1', 6),
  ('00000000-0000-4000-a000-000065992e74', 'der Tisch', 'الطاولة', 'table', 'der', 'die Tische', 'noun', 'Der Tisch ist aus Holz.', 'The table is made of wood.', 'A1', 7),
  ('00000000-0000-4000-a000-000065992e74', 'der Stuhl', 'الكرسي', 'chair', 'der', 'die Stühle', 'noun', 'Der Stuhl ist bequem.', 'The chair is comfortable.', 'A1', 8),
  ('00000000-0000-4000-a000-000065992e74', 'das Bett', 'السرير', 'bed', 'das', 'die Betten', 'noun', 'Das Bett ist groß.', 'The bed is big.', 'A1', 9),
  ('00000000-0000-4000-a000-000065992e74', 'wohnen', 'يسكن', 'to live', NULL, NULL, 'verb', 'Ich wohne in Berlin.', 'I live in Berlin.', 'A1', 10),
  ('00000000-0000-4000-a000-000065992e74', 'Hallo', 'مرحباً', 'hello', NULL, NULL, 'interjection', 'Hallo, wie geht es dir?', 'Hello, how are you?', 'A1', 11),
  ('00000000-0000-4000-a000-000065992e74', 'Guten Morgen', 'صباح الخير', 'good morning', NULL, NULL, 'phrase', 'Guten Morgen, Herr Müller.', 'Good morning, Mr. Müller.', 'A1', 12),
  ('00000000-0000-4000-a000-000065992e74', 'Guten Tag', 'نهارك سعيد', 'good day', NULL, NULL, 'phrase', 'Guten Tag, Frau Schmidt.', 'Good day, Mrs. Schmidt.', 'A1', 13),
  ('00000000-0000-4000-a000-000065992e74', 'Tschüss', 'مع السلامة', 'bye', NULL, NULL, 'interjection', 'Tschüss, bis morgen!', 'Bye, see you tomorrow!', 'A1', 14),
  ('00000000-0000-4000-a000-000065992e74', 'der Name', 'الاسم', 'name', 'der', 'die Namen', 'noun', 'Mein Name ist Anna.', 'My name is Anna.', 'A1', 15),
  ('00000000-0000-4000-a000-000065992e74', 'wie', 'كيف', 'how', NULL, NULL, 'adverb', 'Wie heißt du?', 'What is your name?', 'A1', 16),
  ('00000000-0000-4000-a000-000065992e74', 'freuen', 'يسر', 'to be pleased', NULL, NULL, 'verb', 'Ich freue mich, dich kennenzulernen.', 'I am pleased to meet you.', 'A1', 17),
  ('00000000-0000-4000-a000-000065992e74', 'Willkommen', 'أهلاً وسهلاً', 'welcome', NULL, NULL, 'interjection', 'Willkommen in Deutschland!', 'Welcome to Germany!', 'A1', 18),
  ('00000000-0000-4000-a000-000065992e74', 'die Familie', 'العائلة', 'family', 'die', 'die Familien', 'noun', 'Meine Familie ist groß.', 'My family is big.', 'A1', 19),
  ('00000000-0000-4000-a000-000065992e74', 'der Vater', 'الأب', 'father', 'der', 'die Väter', 'noun', 'Mein Vater ist Ingenieur.', 'My father is an engineer.', 'A1', 20),
  ('00000000-0000-4000-a000-000065992e74', 'die Mutter', 'الأم', 'mother', 'die', 'die Mütter', 'noun', 'Meine Mutter kocht gut.', 'My mother cooks well.', 'A1', 21),
  ('00000000-0000-4000-a000-000065992e74', 'der Bruder', 'الأخ', 'brother', 'der', 'die Brüder', 'noun', 'Mein Bruder ist 15 Jahre alt.', 'My brother is 15 years old.', 'A1', 22),
  ('00000000-0000-4000-a000-000065992e74', 'die Schwester', 'الأخت', 'sister', 'die', 'die Schwestern', 'noun', 'Meine Schwester studiert Medizin.', 'My sister studies medicine.', 'A1', 23),
  ('00000000-0000-4000-a000-000065992e74', 'die Geschwister', 'الإخوة', 'siblings', 'die', NULL, 'noun', 'Hast du Geschwister?', 'Do you have siblings?', 'A1', 24),
  ('00000000-0000-4000-a000-000065992e74', 'der Sohn', 'الابن', 'son', 'der', 'die Söhne', 'noun', 'Wir haben einen Sohn.', 'We have a son.', 'A1', 25),
  ('00000000-0000-4000-a000-000065992e74', 'die Tochter', 'الابنة', 'daughter', 'die', 'die Töchter', 'noun', 'Meine Tochter geht zur Schule.', 'My daughter goes to school.', 'A1', 26),
  ('00000000-0000-4000-a000-000065992e74', 'die Großeltern', 'الأجداد', 'grandparents', 'die', NULL, 'noun', 'Meine Großeltern wohnen auf dem Land.', 'My grandparents live in the countryside.', 'A1', 27),
  ('00000000-0000-4000-a000-000065992e74', 'verheiratet', 'متزوج', 'married', NULL, NULL, 'adjective', 'Meine Eltern sind verheiratet.', 'My parents are married.', 'A1', 28),
  ('00000000-0000-4000-a000-000065992e74', 'das Brot', 'الخبز', 'bread', 'das', 'die Brote', 'noun', 'Ich kaufe ein Brot.', 'I buy a loaf of bread.', 'A1', 29),
  ('00000000-0000-4000-a000-000065992e74', 'die Milch', 'الحليب', 'milk', 'die', NULL, 'noun', 'Die Milch ist frisch.', 'The milk is fresh.', 'A1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000065992e74', 'Präsens der regelmäßigen Verben (Present Tense) / المضارع للأفعال المنتظمة', 'In German, regular verbs follow a consistent pattern. The infinitive ends in -en. Remove the -en and add the personal endings: ich -e, du -st, er/sie/es -t, wir -en, ihr -t, sie/Sie -en. For most Arabic speakers, this is easier than Arabic verb conjugation because German has fewer forms.', '[{"rule":"ich: stem + e","note":"Ich lerne, ich wohne, ich arbeite"},{"rule":"du: stem + st","note":"Du lernst, du wohnst, du arbeitest"},{"rule":"er/sie/es: stem + t","note":"Er lernt, sie wohnt, es arbeitet"},{"rule":"wir: stem + en","note":"Wir lernen, wir wohnen, wir arbeiten"},{"rule":"ihr: stem + t","note":"Ihr lernt, ihr wohnt, ihr arbeitet"},{"rule":"sie/Sie: stem + en","note":"Sie lernen, Sie wohnen"}]', '[{"german":"Ich lerne Deutsch.","arabic":"أنا أتعلم الألمانية.","english":"I am learning German."},{"german":"Du wohnst in Berlin.","arabic":"أنت تسكن في برلين.","english":"You live in Berlin."},{"german":"Er arbeitet bei Siemens.","arabic":"هو يعمل في سيمنز.","english":"He works at Siemens."}]', '[{"mistake":"Ich lernen Deutsch","correction":"Ich lerne Deutsch","explanation":"After \"ich\" we use the stem + e, not the infinitive."},{"mistake":"Er lerne Deutsch","correction":"Er lernt Deutsch","explanation":"After \"er/sie/es\" we add -t, not -e."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000065992e74', 'multiple_choice', 'What does "das Haus" mean?', '["The","A","This","That"]', 'The', 'This is a basic vocabulary item.', 1, 1),
  ('00000000-0000-4000-a000-000065992e74', 'fill_gap', 'Complete with the correct form.', '["Option 1","Option 2","Option 3"]', 'Option 1', 'Practice grammar in context.', 1, 2),
  ('00000000-0000-4000-a000-000065992e74', 'translation', 'Translate: "I learn German."', '["Ich lerne Deutsch.","Ich lerne Englisch.","Ich lerne Spanisch."]', 'Ich lerne Deutsch.', 'Ich = I, lerne = learn/learning, Deutsch = German.', 2, 3),
  ('00000000-0000-4000-a000-000065992e74', 'sentence_order', 'Order the sentence.', '[]', 'Ich lerne Deutsch.', 'Subject + verb + object in German.', 2, 4),
  ('00000000-0000-4000-a000-000065992e74', 'matching', 'Match the words with their meanings.', '["Match pairs correctly"]', 'Correct pairs', 'Test your vocabulary knowledge.', 2, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-000065992e74', 'multiple_choice', 'What is the main topic of this lesson?', '["Module Test","Sports","Music","Travel"]', 'Module Test', 1, 1),
  ('00000000-0000-4000-a000-000065992e74', 'true_false', 'This lesson teaches vocabulary about Module Test.', '["True","False"]', 'True', 1, 2),
  ('00000000-0000-4000-a000-000065992e74', 'true_false', 'German word order is always the same as English.', '["True","False"]', 'False', 1, 3),
  ('00000000-0000-4000-a000-000065992e74', 'multiple_choice', 'How do you say "please" in German?', '["Danke","Bitte","Tschüss","Hallo"]', 'Bitte', 1, 4),
  ('00000000-0000-4000-a000-000065992e74', 'multiple_choice', 'Which article is feminine?', '["der","die","das","den"]', 'die', 1, 5),
  ('00000000-0000-4000-a000-000065992e74', 'fill_blank', 'Ich ___ (to be) Student.', '["bin","bist","ist","sind"]', 'bin', 1, 6),
  ('00000000-0000-4000-a000-000065992e74', 'multiple_choice', 'What is the correct word order?', '["Ich lerne Deutsch","Ich Deutsch lerne","Lerne ich Deutsch","Deutsch ich lerne"]', 'Ich lerne Deutsch', 1, 7),
  ('00000000-0000-4000-a000-000065992e74', 'true_false', 'All German nouns are capitalized.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-000065992e74', 'multiple_choice', 'How do you say "thank you" in German?', '["Bitte","Danke","Tschüss","Hallo"]', 'Danke', 1, 9),
  ('00000000-0000-4000-a000-000065992e74', 'fill_blank', 'Wo ___ du? (to live)', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 1, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-000065992e74', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Wohnen', 'formal', false, 1),
  ('00000000-0000-4000-a000-000065992e74', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Wohnen', 'informal', false, 2),
  ('00000000-0000-4000-a000-000065992e74', 'Bitte!', 'Please!', 'من فضلك!', 'Used in Wohnen', 'neutral', false, 3),
  ('00000000-0000-4000-a000-000065992e74', 'Danke!', 'Thanks!', 'شكراً!', 'Used in Wohnen', 'neutral', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-000065992e74', 'Hallo', 'Hello', 'Greeting', 'expression', 1),
  ('00000000-0000-4000-a000-000065992e74', 'Danke', 'Thanks', 'Politeness', 'expression', 2),
  ('00000000-0000-4000-a000-000065992e74', 'Bitte', 'Please', 'Politeness', 'expression', 3),
  ('00000000-0000-4000-a000-000065992e74', 'Tschüss', 'Bye', 'Farewell', 'expression', 4);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-000065992e74', 'Test: Wohnen — Leseübung', 'Ich wohne in einer schönen Wohnung in Berlin. Die Wohnung hat drei Zimmer: ein Wohnzimmer, ein Schlafzimmer und eine Küche. Das Wohnzimmer ist groß und gemütlich. Es gibt ein Sofa, einen Tisch und einen Schrank. Die Küche ist modern. Der Herd und der Kühlschrank sind neu. Mein Schlafzimmer ist klein, aber hell. Das Bett ist bequem. Ich fühle mich in meiner Wohnung sehr wohl.', 'I live in a nice apartment in Berlin. The apartment has three rooms: a living room, a bedroom and a kitchen. The living room is big and cozy. There is a sofa, a table and a wardrobe. The kitchen is modern. The stove and refrigerator are new. My bedroom is small but bright. The bed is comfortable. I feel very comfortable in my apartment.', 'أسكن في شقة جميلة في برلين. الشقة فيها ثلاث غرف: غرفة معيشة وغرفة نوم ومطبخ. غرفة المعيشة كبيرة ومريحة. يوجد أريكة وطاولة وخزانة. المطبخ حديث. الموقد والثلاجة جديدان. غرفة نومي صغيرة لكنها مشرقة. السرير مريح. أشعر براحة كبيرة في شقتي.', 64, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, duration_seconds, speaker_count, scenario) values
  ('00000000-0000-4000-a000-000065992e74', 'Test: Wohnen — Hörverständnis', '[Lehrerin]: Guten Morgen! Heute lernen wir Begrüßungen.

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

[Lehrerin]: ممتاز! إلى الغد!', 72, 2, 'Wohnen');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-000065992e74', 'Speaking: Test: Wohnen', 'Practice talking about Module Test. Answer questions and have a simple conversation.', 'Module Test', ARRAY['Use full sentences','Speak clearly','Don''t worry about mistakes']::text[], ARRAY['das Haus','die Wohnung','das Zimmer','die Küche','das Schlafzimmer']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-000065992e74', 'Writing: Test: Wohnen', 'Write a short text about Module Test. Use at least 5 vocabulary words from this lesson.', ARRAY['Start with a greeting','Use the vocabulary from this lesson','Check your grammar']::text[], ARRAY['das Haus','die Wohnung','das Zimmer']::text[], '["Sentence structure","Vocabulary usage"]', 50, 150, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000065992e74', 'Test: Wohnen — Roleplay', 'Module Test', 'Student', 'Teacher', 'Practice conversation about Module Test', 'Hallo! Lass uns über dieses Thema sprechen.', 'beginner', 1, ARRAY['das Haus','die Wohnung','das Zimmer','die Küche','das Schlafzimmer','das Bad','der Tisch','der Stuhl']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000065992e74', 'Test: Wohnen — Advanced Roleplay', 'Module Test', 'Customer', 'Assistant', 'Extended conversation about Module Test', 'Guten Tag! Wie kann ich Ihnen helfen?', 'beginner', 2, ARRAY['das Haus','die Wohnung','das Zimmer','die Küche','das Schlafzimmer','das Bad','der Tisch','der Stuhl']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-000065992e74', 'Test: Wohnen — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Test: Wohnen".', 'Creative practice for Module Test', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-000065992e74', 'Homework: Test: Wohnen', 'Complete these tasks to reinforce "Test: Wohnen".', 'mixed', '[{"description":"Review all vocabulary from this lesson"},{"description":"Write 5 sentences using the grammar structure"},{"description":"Practice the dialogue aloud"}]', 35, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-000065992e74', 'In this lesson you learned about Module Test. You practiced vocabulary related to home and grammar structure present_tense.', '["Mastered vocabulary about Module Test","Applied present_tense correctly","Read and understood a text about Module Test","Practiced speaking about Module Test"]', '[{"title":"Test: Wohnen Review","summary":"present_tense — the main grammar focus of this lesson."}]', ARRAY['Module Test core vocabulary','home key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)','Verb is always in second position']::text[], ARRAY['Practice 15-20 minutes daily','Use new vocabulary in real sentences','Speak out loud to improve pronunciation']::text[]);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000065992e74', 'Pronunciation: German pronunciation basics', 'German is mostly phonetic. Pronounce each letter.

Common mistake for Arabic speakers: Pronouncing every letter as in English.', '[]', '[{"german":"ja","arabic":"","english":"","phonetic":"/jaː/"},{"german":"nein","arabic":"","english":"","phonetic":"/naɪn/"}]', '[]', 10);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000065992e74', 'translation', 'Translate to German: "This is a translation exercise."', '[]', 'Das ist eine Übersetzungsübung.', 'Use "das ist" for "this is"', 1, 40);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000065992e74', 'Culture: Module Test in German-Speaking Countries', 'Learn how Module Test is approached in German culture.

تعلم كيف يتم التعامل مع Module Test في الثقافة الألمانية.', '["Tip: Be direct and polite","Tip: Use formal language with strangers","Tip: Respect punctuality"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000065992e74', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Common error for Arabic speakers","correction":"Correct version","explanation":"Explanation of the error"}]', 30);

  -- Module 4: Essen und Einkaufen
  insert into public.course_modules (id, level_id, title, description, objectives, order_index, estimated_hours, is_published)
  values ('00000000-0000-4000-a000-000039b4d361', 'A1', 'Essen und Einkaufen', 'Learn shopping vocabulary, food names, and how to order in restaurants.', '["Name foods and drinks","Shop for groceries","Order in a restaurant","Understand prices and pay","Use \"möchten\" for polite requests"]', 4, 5, true)
  on conflict (id) do nothing;

  -- Lesson 1: Lebensmittel (L-A1-04-01)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-00006599a2ce', '00000000-0000-4000-a000-000039b4d361', 'Lebensmittel', 'Learn food and grocery vocabulary with articles.', 'Food & Groceries', 'vocabulary', '["Understand and use vocabulary related to Food & Groceries","Apply present_tense correctly","Read and comprehend a text about Food & Groceries","Listen and understand a dialogue about Food & Groceries","Speak about Food & Groceries in simple sentences","Write a short text about Food & Groceries"]', 30, 1, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-00006599a2ce', 'das Brot', 'الخبز', 'bread', 'das', 'die Brote', 'noun', 'Ich kaufe ein Brot.', 'I buy a loaf of bread.', 'A1', 1),
  ('00000000-0000-4000-a000-00006599a2ce', 'die Milch', 'الحليب', 'milk', 'die', NULL, 'noun', 'Die Milch ist frisch.', 'The milk is fresh.', 'A1', 2),
  ('00000000-0000-4000-a000-00006599a2ce', 'der Käse', 'الجبن', 'cheese', 'der', NULL, 'noun', 'Der Käse schmeckt gut.', 'The cheese tastes good.', 'A1', 3),
  ('00000000-0000-4000-a000-00006599a2ce', 'der Apfel', 'التفاح', 'apple', 'der', 'die Äpfel', 'noun', 'Der Apfel ist rot.', 'The apple is red.', 'A1', 4),
  ('00000000-0000-4000-a000-00006599a2ce', 'das Ei', 'البيضة', 'egg', 'das', 'die Eier', 'noun', 'Ich esse ein Ei zum Frühstück.', 'I eat an egg for breakfast.', 'A1', 5),
  ('00000000-0000-4000-a000-00006599a2ce', 'das Obst', 'الفاكهة', 'fruit', 'das', NULL, 'noun', 'Obst ist gesund.', 'Fruit is healthy.', 'A1', 6),
  ('00000000-0000-4000-a000-00006599a2ce', 'das Gemüse', 'الخضروات', 'vegetables', 'das', NULL, 'noun', 'Ich kaufe Gemüse auf dem Markt.', 'I buy vegetables at the market.', 'A1', 7),
  ('00000000-0000-4000-a000-00006599a2ce', 'kochen', 'يطبخ', 'to cook', NULL, NULL, 'verb', 'Meine Mutter kocht gut.', 'My mother cooks well.', 'A1', 8),
  ('00000000-0000-4000-a000-00006599a2ce', 'der Fisch', 'السمك', 'fish', 'der', 'die Fische', 'noun', 'Der Fisch ist frisch.', 'The fish is fresh.', 'A1', 9),
  ('00000000-0000-4000-a000-00006599a2ce', 'das Fleisch', 'اللحم', 'meat', 'das', NULL, 'noun', 'Ich esse nicht viel Fleisch.', 'I do not eat much meat.', 'A1', 10),
  ('00000000-0000-4000-a000-00006599a2ce', 'Hallo', 'مرحباً', 'hello', NULL, NULL, 'interjection', 'Hallo, wie geht es dir?', 'Hello, how are you?', 'A1', 11),
  ('00000000-0000-4000-a000-00006599a2ce', 'Guten Morgen', 'صباح الخير', 'good morning', NULL, NULL, 'phrase', 'Guten Morgen, Herr Müller.', 'Good morning, Mr. Müller.', 'A1', 12),
  ('00000000-0000-4000-a000-00006599a2ce', 'Guten Tag', 'نهارك سعيد', 'good day', NULL, NULL, 'phrase', 'Guten Tag, Frau Schmidt.', 'Good day, Mrs. Schmidt.', 'A1', 13),
  ('00000000-0000-4000-a000-00006599a2ce', 'Tschüss', 'مع السلامة', 'bye', NULL, NULL, 'interjection', 'Tschüss, bis morgen!', 'Bye, see you tomorrow!', 'A1', 14),
  ('00000000-0000-4000-a000-00006599a2ce', 'der Name', 'الاسم', 'name', 'der', 'die Namen', 'noun', 'Mein Name ist Anna.', 'My name is Anna.', 'A1', 15),
  ('00000000-0000-4000-a000-00006599a2ce', 'wie', 'كيف', 'how', NULL, NULL, 'adverb', 'Wie heißt du?', 'What is your name?', 'A1', 16),
  ('00000000-0000-4000-a000-00006599a2ce', 'freuen', 'يسر', 'to be pleased', NULL, NULL, 'verb', 'Ich freue mich, dich kennenzulernen.', 'I am pleased to meet you.', 'A1', 17),
  ('00000000-0000-4000-a000-00006599a2ce', 'Willkommen', 'أهلاً وسهلاً', 'welcome', NULL, NULL, 'interjection', 'Willkommen in Deutschland!', 'Welcome to Germany!', 'A1', 18),
  ('00000000-0000-4000-a000-00006599a2ce', 'die Familie', 'العائلة', 'family', 'die', 'die Familien', 'noun', 'Meine Familie ist groß.', 'My family is big.', 'A1', 19),
  ('00000000-0000-4000-a000-00006599a2ce', 'der Vater', 'الأب', 'father', 'der', 'die Väter', 'noun', 'Mein Vater ist Ingenieur.', 'My father is an engineer.', 'A1', 20),
  ('00000000-0000-4000-a000-00006599a2ce', 'die Mutter', 'الأم', 'mother', 'die', 'die Mütter', 'noun', 'Meine Mutter kocht gut.', 'My mother cooks well.', 'A1', 21),
  ('00000000-0000-4000-a000-00006599a2ce', 'der Bruder', 'الأخ', 'brother', 'der', 'die Brüder', 'noun', 'Mein Bruder ist 15 Jahre alt.', 'My brother is 15 years old.', 'A1', 22),
  ('00000000-0000-4000-a000-00006599a2ce', 'die Schwester', 'الأخت', 'sister', 'die', 'die Schwestern', 'noun', 'Meine Schwester studiert Medizin.', 'My sister studies medicine.', 'A1', 23),
  ('00000000-0000-4000-a000-00006599a2ce', 'die Geschwister', 'الإخوة', 'siblings', 'die', NULL, 'noun', 'Hast du Geschwister?', 'Do you have siblings?', 'A1', 24),
  ('00000000-0000-4000-a000-00006599a2ce', 'der Sohn', 'الابن', 'son', 'der', 'die Söhne', 'noun', 'Wir haben einen Sohn.', 'We have a son.', 'A1', 25),
  ('00000000-0000-4000-a000-00006599a2ce', 'die Tochter', 'الابنة', 'daughter', 'die', 'die Töchter', 'noun', 'Meine Tochter geht zur Schule.', 'My daughter goes to school.', 'A1', 26),
  ('00000000-0000-4000-a000-00006599a2ce', 'die Großeltern', 'الأجداد', 'grandparents', 'die', NULL, 'noun', 'Meine Großeltern wohnen auf dem Land.', 'My grandparents live in the countryside.', 'A1', 27),
  ('00000000-0000-4000-a000-00006599a2ce', 'verheiratet', 'متزوج', 'married', NULL, NULL, 'adjective', 'Meine Eltern sind verheiratet.', 'My parents are married.', 'A1', 28),
  ('00000000-0000-4000-a000-00006599a2ce', 'das Haus', 'البيت', 'house', 'das', 'die Häuser', 'noun', 'Das Haus ist groß.', 'The house is big.', 'A1', 29),
  ('00000000-0000-4000-a000-00006599a2ce', 'die Wohnung', 'الشقة', 'apartment', 'die', 'die Wohnungen', 'noun', 'Meine Wohnung hat drei Zimmer.', 'My apartment has three rooms.', 'A1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006599a2ce', 'Präsens der regelmäßigen Verben (Present Tense) / المضارع للأفعال المنتظمة', 'In German, regular verbs follow a consistent pattern. The infinitive ends in -en. Remove the -en and add the personal endings: ich -e, du -st, er/sie/es -t, wir -en, ihr -t, sie/Sie -en. For most Arabic speakers, this is easier than Arabic verb conjugation because German has fewer forms.', '[{"rule":"ich: stem + e","note":"Ich lerne, ich wohne, ich arbeite"},{"rule":"du: stem + st","note":"Du lernst, du wohnst, du arbeitest"},{"rule":"er/sie/es: stem + t","note":"Er lernt, sie wohnt, es arbeitet"},{"rule":"wir: stem + en","note":"Wir lernen, wir wohnen, wir arbeiten"},{"rule":"ihr: stem + t","note":"Ihr lernt, ihr wohnt, ihr arbeitet"},{"rule":"sie/Sie: stem + en","note":"Sie lernen, Sie wohnen"}]', '[{"german":"Ich lerne Deutsch.","arabic":"أنا أتعلم الألمانية.","english":"I am learning German."},{"german":"Du wohnst in Berlin.","arabic":"أنت تسكن في برلين.","english":"You live in Berlin."},{"german":"Er arbeitet bei Siemens.","arabic":"هو يعمل في سيمنز.","english":"He works at Siemens."}]', '[{"mistake":"Ich lernen Deutsch","correction":"Ich lerne Deutsch","explanation":"After \"ich\" we use the stem + e, not the infinitive."},{"mistake":"Er lerne Deutsch","correction":"Er lernt Deutsch","explanation":"After \"er/sie/es\" we add -t, not -e."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006599a2ce', 'multiple_choice', 'What does "das Brot" mean?', '["The","A","This","That"]', 'The', 'This is a basic vocabulary item.', 1, 1),
  ('00000000-0000-4000-a000-00006599a2ce', 'fill_gap', 'Complete with the correct form.', '["Option 1","Option 2","Option 3"]', 'Option 1', 'Practice grammar in context.', 1, 2),
  ('00000000-0000-4000-a000-00006599a2ce', 'translation', 'Translate: "I learn German."', '["Ich lerne Deutsch.","Ich lerne Englisch.","Ich lerne Spanisch."]', 'Ich lerne Deutsch.', 'Ich = I, lerne = learn/learning, Deutsch = German.', 2, 3),
  ('00000000-0000-4000-a000-00006599a2ce', 'sentence_order', 'Order the sentence.', '[]', 'Ich lerne Deutsch.', 'Subject + verb + object in German.', 2, 4),
  ('00000000-0000-4000-a000-00006599a2ce', 'matching', 'Match the words with their meanings.', '["Match pairs correctly"]', 'Correct pairs', 'Test your vocabulary knowledge.', 2, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-00006599a2ce', 'multiple_choice', 'What is the main topic of this lesson?', '["Food & Groceries","Sports","Music","Travel"]', 'Food & Groceries', 1, 1),
  ('00000000-0000-4000-a000-00006599a2ce', 'true_false', 'This lesson teaches vocabulary about Food & Groceries.', '["True","False"]', 'True', 1, 2),
  ('00000000-0000-4000-a000-00006599a2ce', 'true_false', 'German word order is always the same as English.', '["True","False"]', 'False', 1, 3),
  ('00000000-0000-4000-a000-00006599a2ce', 'multiple_choice', 'How do you say "please" in German?', '["Danke","Bitte","Tschüss","Hallo"]', 'Bitte', 1, 4),
  ('00000000-0000-4000-a000-00006599a2ce', 'multiple_choice', 'Which article is feminine?', '["der","die","das","den"]', 'die', 1, 5),
  ('00000000-0000-4000-a000-00006599a2ce', 'fill_blank', 'Ich ___ (to be) Student.', '["bin","bist","ist","sind"]', 'bin', 1, 6),
  ('00000000-0000-4000-a000-00006599a2ce', 'multiple_choice', 'What is the correct word order?', '["Ich lerne Deutsch","Ich Deutsch lerne","Lerne ich Deutsch","Deutsch ich lerne"]', 'Ich lerne Deutsch', 1, 7),
  ('00000000-0000-4000-a000-00006599a2ce', 'true_false', 'All German nouns are capitalized.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-00006599a2ce', 'multiple_choice', 'How do you say "thank you" in German?', '["Bitte","Danke","Tschüss","Hallo"]', 'Danke', 1, 9),
  ('00000000-0000-4000-a000-00006599a2ce', 'fill_blank', 'Wo ___ du? (to live)', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 1, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-00006599a2ce', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Essen und Einkaufen', 'formal', false, 1),
  ('00000000-0000-4000-a000-00006599a2ce', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Essen und Einkaufen', 'informal', false, 2),
  ('00000000-0000-4000-a000-00006599a2ce', 'Bitte!', 'Please!', 'من فضلك!', 'Used in Essen und Einkaufen', 'neutral', false, 3),
  ('00000000-0000-4000-a000-00006599a2ce', 'Danke!', 'Thanks!', 'شكراً!', 'Used in Essen und Einkaufen', 'neutral', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-00006599a2ce', 'Hallo', 'Hello', 'Greeting', 'expression', 1),
  ('00000000-0000-4000-a000-00006599a2ce', 'Danke', 'Thanks', 'Politeness', 'expression', 2),
  ('00000000-0000-4000-a000-00006599a2ce', 'Bitte', 'Please', 'Politeness', 'expression', 3),
  ('00000000-0000-4000-a000-00006599a2ce', 'Tschüss', 'Bye', 'Farewell', 'expression', 4);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-00006599a2ce', 'Lebensmittel — Leseübung', 'Heute gehe ich einkaufen. Ich brauche Lebensmittel. Ich gehe zum Supermarkt. Ich kaufe Brot, Milch, Käse und Eier. Auch Obst und Gemüse brauche ich. Die Äpfel sehen gut aus. Ich nehme fünf Äpfel. Der Käse kostet 3 Euro. Alles zusammen kostet 15 Euro. Ich bezahle an der Kasse. Die Verkäuferin ist freundlich. Dann gehe ich nach Hause.', 'Today I go shopping. I need groceries. I go to the supermarket. I buy bread, milk, cheese and eggs. I also need fruit and vegetables. The apples look good. I take five apples. The cheese costs 3 euros. Everything together costs 15 euros. I pay at the checkout. The saleswoman is friendly. Then I go home.', 'اليوم أذهب للتسوق. أحتاج مواد غذائية. أذهب إلى السوبرماركت. أشتري خبزاً وحليباً وجبناً وبيضاً. أحتاج أيضاً فاكهة وخضروات. التفاح يبدو جيداً. آخذ خمس تفاحات. الجبن يكلف 3 يورو. المجموع الكلي 15 يورو. أدفع عند الصندوق. البائعة ودودة. ثم أعود إلى المنزل.', 57, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, duration_seconds, speaker_count, scenario) values
  ('00000000-0000-4000-a000-00006599a2ce', 'Lebensmittel — Hörverständnis', '[Kellner]: Guten Abend! Haben Sie schon gewählt?

[Gast]: Ja, ich möchte die Pizza Margherita und ein Glas Wasser.

[Kellner]: Sehr gut. Und als Vorspeise?

[Gast]: Einen gemischten Salat, bitte.

[Kellner]: Kommt sofort. Guten Appetit!', '[Kellner]: Good evening! Have you already chosen?

[Gast]: Yes, I would like the Pizza Margherita and a glass of water.

[Kellner]: Very good. And as a starter?

[Gast]: A mixed salad, please.

[Kellner]: Coming right away. Enjoy your meal!', '[Kellner]: مساء الخير! هل اخترتم؟

[Gast]: نعم، أريدبيتزا مارغريتا وكأس ماء.

[Kellner]: جيد جداً. وماذا عن المقبلات؟

[Gast]: سلطة مشكلة من فضلك.

[Kellner]: فوراً. شهية طيبة!', 60, 2, 'Essen und Einkaufen');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-00006599a2ce', 'Speaking: Lebensmittel', 'Practice talking about Food & Groceries. Answer questions and have a simple conversation.', 'Food & Groceries', ARRAY['Use full sentences','Speak clearly','Don''t worry about mistakes']::text[], ARRAY['das Brot','die Milch','der Käse','der Apfel','das Ei']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-00006599a2ce', 'Writing: Lebensmittel', 'Write a short text about Food & Groceries. Use at least 5 vocabulary words from this lesson.', ARRAY['Start with a greeting','Use the vocabulary from this lesson','Check your grammar']::text[], ARRAY['das Brot','die Milch','der Käse']::text[], '["Sentence structure","Vocabulary usage"]', 50, 150, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00006599a2ce', 'Lebensmittel — Roleplay', 'Food & Groceries', 'Student', 'Teacher', 'Practice conversation about Food & Groceries', 'Hallo! Lass uns über dieses Thema sprechen.', 'beginner', 1, ARRAY['das Brot','die Milch','der Käse','der Apfel','das Ei','das Obst','das Gemüse','kochen']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00006599a2ce', 'Lebensmittel — Advanced Roleplay', 'Food & Groceries', 'Customer', 'Assistant', 'Extended conversation about Food & Groceries', 'Guten Tag! Wie kann ich Ihnen helfen?', 'beginner', 2, ARRAY['das Brot','die Milch','der Käse','der Apfel','das Ei','das Obst','das Gemüse','kochen']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-00006599a2ce', 'Lebensmittel — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Lebensmittel".', 'Creative practice for Food & Groceries', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-00006599a2ce', 'Homework: Lebensmittel', 'Complete these tasks to reinforce "Lebensmittel".', 'mixed', '[{"description":"Review all vocabulary from this lesson"},{"description":"Write 5 sentences using the grammar structure"},{"description":"Practice the dialogue aloud"}]', 35, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-00006599a2ce', 'In this lesson you learned about Food & Groceries. You practiced vocabulary related to food and grammar structure present_tense.', '["Mastered vocabulary about Food & Groceries","Applied present_tense correctly","Read and understood a text about Food & Groceries","Practiced speaking about Food & Groceries"]', '[{"title":"Lebensmittel Review","summary":"present_tense — the main grammar focus of this lesson."}]', ARRAY['Food & Groceries core vocabulary','food key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)','Verb is always in second position']::text[], ARRAY['Practice 15-20 minutes daily','Use new vocabulary in real sentences','Speak out loud to improve pronunciation']::text[]);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006599a2ce', 'Pronunciation: German pronunciation basics', 'German is mostly phonetic. Pronounce each letter.

Common mistake for Arabic speakers: Pronouncing every letter as in English.', '[]', '[{"german":"ja","arabic":"","english":"","phonetic":"/jaː/"},{"german":"nein","arabic":"","english":"","phonetic":"/naɪn/"}]', '[]', 10);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006599a2ce', 'translation', 'Translate to German: "This is a translation exercise."', '[]', 'Das ist eine Übersetzungsübung.', 'Use "das ist" for "this is"', 1, 40);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006599a2ce', 'Culture: Food & Groceries in German-Speaking Countries', 'Learn how Food & Groceries is approached in German culture.

تعلم كيف يتم التعامل مع Food & Groceries في الثقافة الألمانية.', '["Tip: Be direct and polite","Tip: Use formal language with strangers","Tip: Respect punctuality"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006599a2ce', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Common error for Arabic speakers","correction":"Correct version","explanation":"Explanation of the error"}]', 30);

  -- Lesson 2: Getränke und Mahlzeiten (L-A1-04-02)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-00006599a2cf', '00000000-0000-4000-a000-000039b4d361', 'Getränke und Mahlzeiten', 'Learn drinks and meal names.', 'Drinks & Meals', 'vocabulary', '["Understand and use vocabulary related to Drinks & Meals","Apply present_tense correctly","Read and comprehend a text about Drinks & Meals","Listen and understand a dialogue about Drinks & Meals","Speak about Drinks & Meals in simple sentences","Write a short text about Drinks & Meals"]', 25, 2, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-00006599a2cf', 'das Brot', 'الخبز', 'bread', 'das', 'die Brote', 'noun', 'Ich kaufe ein Brot.', 'I buy a loaf of bread.', 'A1', 1),
  ('00000000-0000-4000-a000-00006599a2cf', 'die Milch', 'الحليب', 'milk', 'die', NULL, 'noun', 'Die Milch ist frisch.', 'The milk is fresh.', 'A1', 2),
  ('00000000-0000-4000-a000-00006599a2cf', 'der Käse', 'الجبن', 'cheese', 'der', NULL, 'noun', 'Der Käse schmeckt gut.', 'The cheese tastes good.', 'A1', 3),
  ('00000000-0000-4000-a000-00006599a2cf', 'der Apfel', 'التفاح', 'apple', 'der', 'die Äpfel', 'noun', 'Der Apfel ist rot.', 'The apple is red.', 'A1', 4),
  ('00000000-0000-4000-a000-00006599a2cf', 'das Ei', 'البيضة', 'egg', 'das', 'die Eier', 'noun', 'Ich esse ein Ei zum Frühstück.', 'I eat an egg for breakfast.', 'A1', 5),
  ('00000000-0000-4000-a000-00006599a2cf', 'das Obst', 'الفاكهة', 'fruit', 'das', NULL, 'noun', 'Obst ist gesund.', 'Fruit is healthy.', 'A1', 6),
  ('00000000-0000-4000-a000-00006599a2cf', 'das Gemüse', 'الخضروات', 'vegetables', 'das', NULL, 'noun', 'Ich kaufe Gemüse auf dem Markt.', 'I buy vegetables at the market.', 'A1', 7),
  ('00000000-0000-4000-a000-00006599a2cf', 'kochen', 'يطبخ', 'to cook', NULL, NULL, 'verb', 'Meine Mutter kocht gut.', 'My mother cooks well.', 'A1', 8),
  ('00000000-0000-4000-a000-00006599a2cf', 'der Fisch', 'السمك', 'fish', 'der', 'die Fische', 'noun', 'Der Fisch ist frisch.', 'The fish is fresh.', 'A1', 9),
  ('00000000-0000-4000-a000-00006599a2cf', 'das Fleisch', 'اللحم', 'meat', 'das', NULL, 'noun', 'Ich esse nicht viel Fleisch.', 'I do not eat much meat.', 'A1', 10),
  ('00000000-0000-4000-a000-00006599a2cf', 'Hallo', 'مرحباً', 'hello', NULL, NULL, 'interjection', 'Hallo, wie geht es dir?', 'Hello, how are you?', 'A1', 11),
  ('00000000-0000-4000-a000-00006599a2cf', 'Guten Morgen', 'صباح الخير', 'good morning', NULL, NULL, 'phrase', 'Guten Morgen, Herr Müller.', 'Good morning, Mr. Müller.', 'A1', 12),
  ('00000000-0000-4000-a000-00006599a2cf', 'Guten Tag', 'نهارك سعيد', 'good day', NULL, NULL, 'phrase', 'Guten Tag, Frau Schmidt.', 'Good day, Mrs. Schmidt.', 'A1', 13),
  ('00000000-0000-4000-a000-00006599a2cf', 'Tschüss', 'مع السلامة', 'bye', NULL, NULL, 'interjection', 'Tschüss, bis morgen!', 'Bye, see you tomorrow!', 'A1', 14),
  ('00000000-0000-4000-a000-00006599a2cf', 'der Name', 'الاسم', 'name', 'der', 'die Namen', 'noun', 'Mein Name ist Anna.', 'My name is Anna.', 'A1', 15),
  ('00000000-0000-4000-a000-00006599a2cf', 'wie', 'كيف', 'how', NULL, NULL, 'adverb', 'Wie heißt du?', 'What is your name?', 'A1', 16),
  ('00000000-0000-4000-a000-00006599a2cf', 'freuen', 'يسر', 'to be pleased', NULL, NULL, 'verb', 'Ich freue mich, dich kennenzulernen.', 'I am pleased to meet you.', 'A1', 17),
  ('00000000-0000-4000-a000-00006599a2cf', 'Willkommen', 'أهلاً وسهلاً', 'welcome', NULL, NULL, 'interjection', 'Willkommen in Deutschland!', 'Welcome to Germany!', 'A1', 18),
  ('00000000-0000-4000-a000-00006599a2cf', 'die Familie', 'العائلة', 'family', 'die', 'die Familien', 'noun', 'Meine Familie ist groß.', 'My family is big.', 'A1', 19),
  ('00000000-0000-4000-a000-00006599a2cf', 'der Vater', 'الأب', 'father', 'der', 'die Väter', 'noun', 'Mein Vater ist Ingenieur.', 'My father is an engineer.', 'A1', 20),
  ('00000000-0000-4000-a000-00006599a2cf', 'die Mutter', 'الأم', 'mother', 'die', 'die Mütter', 'noun', 'Meine Mutter kocht gut.', 'My mother cooks well.', 'A1', 21),
  ('00000000-0000-4000-a000-00006599a2cf', 'der Bruder', 'الأخ', 'brother', 'der', 'die Brüder', 'noun', 'Mein Bruder ist 15 Jahre alt.', 'My brother is 15 years old.', 'A1', 22),
  ('00000000-0000-4000-a000-00006599a2cf', 'die Schwester', 'الأخت', 'sister', 'die', 'die Schwestern', 'noun', 'Meine Schwester studiert Medizin.', 'My sister studies medicine.', 'A1', 23),
  ('00000000-0000-4000-a000-00006599a2cf', 'die Geschwister', 'الإخوة', 'siblings', 'die', NULL, 'noun', 'Hast du Geschwister?', 'Do you have siblings?', 'A1', 24),
  ('00000000-0000-4000-a000-00006599a2cf', 'der Sohn', 'الابن', 'son', 'der', 'die Söhne', 'noun', 'Wir haben einen Sohn.', 'We have a son.', 'A1', 25),
  ('00000000-0000-4000-a000-00006599a2cf', 'die Tochter', 'الابنة', 'daughter', 'die', 'die Töchter', 'noun', 'Meine Tochter geht zur Schule.', 'My daughter goes to school.', 'A1', 26),
  ('00000000-0000-4000-a000-00006599a2cf', 'die Großeltern', 'الأجداد', 'grandparents', 'die', NULL, 'noun', 'Meine Großeltern wohnen auf dem Land.', 'My grandparents live in the countryside.', 'A1', 27),
  ('00000000-0000-4000-a000-00006599a2cf', 'verheiratet', 'متزوج', 'married', NULL, NULL, 'adjective', 'Meine Eltern sind verheiratet.', 'My parents are married.', 'A1', 28),
  ('00000000-0000-4000-a000-00006599a2cf', 'das Haus', 'البيت', 'house', 'das', 'die Häuser', 'noun', 'Das Haus ist groß.', 'The house is big.', 'A1', 29),
  ('00000000-0000-4000-a000-00006599a2cf', 'die Wohnung', 'الشقة', 'apartment', 'die', 'die Wohnungen', 'noun', 'Meine Wohnung hat drei Zimmer.', 'My apartment has three rooms.', 'A1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006599a2cf', 'Präsens der regelmäßigen Verben (Present Tense) / المضارع للأفعال المنتظمة', 'In German, regular verbs follow a consistent pattern. The infinitive ends in -en. Remove the -en and add the personal endings: ich -e, du -st, er/sie/es -t, wir -en, ihr -t, sie/Sie -en. For most Arabic speakers, this is easier than Arabic verb conjugation because German has fewer forms.', '[{"rule":"ich: stem + e","note":"Ich lerne, ich wohne, ich arbeite"},{"rule":"du: stem + st","note":"Du lernst, du wohnst, du arbeitest"},{"rule":"er/sie/es: stem + t","note":"Er lernt, sie wohnt, es arbeitet"},{"rule":"wir: stem + en","note":"Wir lernen, wir wohnen, wir arbeiten"},{"rule":"ihr: stem + t","note":"Ihr lernt, ihr wohnt, ihr arbeitet"},{"rule":"sie/Sie: stem + en","note":"Sie lernen, Sie wohnen"}]', '[{"german":"Ich lerne Deutsch.","arabic":"أنا أتعلم الألمانية.","english":"I am learning German."},{"german":"Du wohnst in Berlin.","arabic":"أنت تسكن في برلين.","english":"You live in Berlin."},{"german":"Er arbeitet bei Siemens.","arabic":"هو يعمل في سيمنز.","english":"He works at Siemens."}]', '[{"mistake":"Ich lernen Deutsch","correction":"Ich lerne Deutsch","explanation":"After \"ich\" we use the stem + e, not the infinitive."},{"mistake":"Er lerne Deutsch","correction":"Er lernt Deutsch","explanation":"After \"er/sie/es\" we add -t, not -e."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006599a2cf', 'multiple_choice', 'What does "das Brot" mean?', '["The","A","This","That"]', 'The', 'This is a basic vocabulary item.', 1, 1),
  ('00000000-0000-4000-a000-00006599a2cf', 'fill_gap', 'Complete with the correct form.', '["Option 1","Option 2","Option 3"]', 'Option 1', 'Practice grammar in context.', 1, 2),
  ('00000000-0000-4000-a000-00006599a2cf', 'translation', 'Translate: "I learn German."', '["Ich lerne Deutsch.","Ich lerne Englisch.","Ich lerne Spanisch."]', 'Ich lerne Deutsch.', 'Ich = I, lerne = learn/learning, Deutsch = German.', 2, 3),
  ('00000000-0000-4000-a000-00006599a2cf', 'sentence_order', 'Order the sentence.', '[]', 'Ich lerne Deutsch.', 'Subject + verb + object in German.', 2, 4),
  ('00000000-0000-4000-a000-00006599a2cf', 'matching', 'Match the words with their meanings.', '["Match pairs correctly"]', 'Correct pairs', 'Test your vocabulary knowledge.', 2, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-00006599a2cf', 'multiple_choice', 'What is the main topic of this lesson?', '["Drinks & Meals","Sports","Music","Travel"]', 'Drinks & Meals', 1, 1),
  ('00000000-0000-4000-a000-00006599a2cf', 'true_false', 'This lesson teaches vocabulary about Drinks & Meals.', '["True","False"]', 'True', 1, 2),
  ('00000000-0000-4000-a000-00006599a2cf', 'true_false', 'German word order is always the same as English.', '["True","False"]', 'False', 1, 3),
  ('00000000-0000-4000-a000-00006599a2cf', 'multiple_choice', 'How do you say "please" in German?', '["Danke","Bitte","Tschüss","Hallo"]', 'Bitte', 1, 4),
  ('00000000-0000-4000-a000-00006599a2cf', 'multiple_choice', 'Which article is feminine?', '["der","die","das","den"]', 'die', 1, 5),
  ('00000000-0000-4000-a000-00006599a2cf', 'fill_blank', 'Ich ___ (to be) Student.', '["bin","bist","ist","sind"]', 'bin', 1, 6),
  ('00000000-0000-4000-a000-00006599a2cf', 'multiple_choice', 'What is the correct word order?', '["Ich lerne Deutsch","Ich Deutsch lerne","Lerne ich Deutsch","Deutsch ich lerne"]', 'Ich lerne Deutsch', 1, 7),
  ('00000000-0000-4000-a000-00006599a2cf', 'true_false', 'All German nouns are capitalized.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-00006599a2cf', 'multiple_choice', 'How do you say "thank you" in German?', '["Bitte","Danke","Tschüss","Hallo"]', 'Danke', 1, 9),
  ('00000000-0000-4000-a000-00006599a2cf', 'fill_blank', 'Wo ___ du? (to live)', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 1, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-00006599a2cf', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Essen und Einkaufen', 'formal', false, 1),
  ('00000000-0000-4000-a000-00006599a2cf', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Essen und Einkaufen', 'informal', false, 2),
  ('00000000-0000-4000-a000-00006599a2cf', 'Bitte!', 'Please!', 'من فضلك!', 'Used in Essen und Einkaufen', 'neutral', false, 3),
  ('00000000-0000-4000-a000-00006599a2cf', 'Danke!', 'Thanks!', 'شكراً!', 'Used in Essen und Einkaufen', 'neutral', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-00006599a2cf', 'Hallo', 'Hello', 'Greeting', 'expression', 1),
  ('00000000-0000-4000-a000-00006599a2cf', 'Danke', 'Thanks', 'Politeness', 'expression', 2),
  ('00000000-0000-4000-a000-00006599a2cf', 'Bitte', 'Please', 'Politeness', 'expression', 3),
  ('00000000-0000-4000-a000-00006599a2cf', 'Tschüss', 'Bye', 'Farewell', 'expression', 4);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-00006599a2cf', 'Getränke und Mahlzeiten — Leseübung', 'Heute gehe ich einkaufen. Ich brauche Lebensmittel. Ich gehe zum Supermarkt. Ich kaufe Brot, Milch, Käse und Eier. Auch Obst und Gemüse brauche ich. Die Äpfel sehen gut aus. Ich nehme fünf Äpfel. Der Käse kostet 3 Euro. Alles zusammen kostet 15 Euro. Ich bezahle an der Kasse. Die Verkäuferin ist freundlich. Dann gehe ich nach Hause.', 'Today I go shopping. I need groceries. I go to the supermarket. I buy bread, milk, cheese and eggs. I also need fruit and vegetables. The apples look good. I take five apples. The cheese costs 3 euros. Everything together costs 15 euros. I pay at the checkout. The saleswoman is friendly. Then I go home.', 'اليوم أذهب للتسوق. أحتاج مواد غذائية. أذهب إلى السوبرماركت. أشتري خبزاً وحليباً وجبناً وبيضاً. أحتاج أيضاً فاكهة وخضروات. التفاح يبدو جيداً. آخذ خمس تفاحات. الجبن يكلف 3 يورو. المجموع الكلي 15 يورو. أدفع عند الصندوق. البائعة ودودة. ثم أعود إلى المنزل.', 57, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, duration_seconds, speaker_count, scenario) values
  ('00000000-0000-4000-a000-00006599a2cf', 'Getränke und Mahlzeiten — Hörverständnis', '[Kellner]: Guten Abend! Haben Sie schon gewählt?

[Gast]: Ja, ich möchte die Pizza Margherita und ein Glas Wasser.

[Kellner]: Sehr gut. Und als Vorspeise?

[Gast]: Einen gemischten Salat, bitte.

[Kellner]: Kommt sofort. Guten Appetit!', '[Kellner]: Good evening! Have you already chosen?

[Gast]: Yes, I would like the Pizza Margherita and a glass of water.

[Kellner]: Very good. And as a starter?

[Gast]: A mixed salad, please.

[Kellner]: Coming right away. Enjoy your meal!', '[Kellner]: مساء الخير! هل اخترتم؟

[Gast]: نعم، أريدبيتزا مارغريتا وكأس ماء.

[Kellner]: جيد جداً. وماذا عن المقبلات؟

[Gast]: سلطة مشكلة من فضلك.

[Kellner]: فوراً. شهية طيبة!', 60, 2, 'Essen und Einkaufen');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-00006599a2cf', 'Speaking: Getränke und Mahlzeiten', 'Practice talking about Drinks & Meals. Answer questions and have a simple conversation.', 'Drinks & Meals', ARRAY['Use full sentences','Speak clearly','Don''t worry about mistakes']::text[], ARRAY['das Brot','die Milch','der Käse','der Apfel','das Ei']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-00006599a2cf', 'Writing: Getränke und Mahlzeiten', 'Write a short text about Drinks & Meals. Use at least 5 vocabulary words from this lesson.', ARRAY['Start with a greeting','Use the vocabulary from this lesson','Check your grammar']::text[], ARRAY['das Brot','die Milch','der Käse']::text[], '["Sentence structure","Vocabulary usage"]', 50, 150, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00006599a2cf', 'Getränke und Mahlzeiten — Roleplay', 'Drinks & Meals', 'Student', 'Teacher', 'Practice conversation about Drinks & Meals', 'Hallo! Lass uns über dieses Thema sprechen.', 'beginner', 1, ARRAY['das Brot','die Milch','der Käse','der Apfel','das Ei','das Obst','das Gemüse','kochen']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00006599a2cf', 'Getränke und Mahlzeiten — Advanced Roleplay', 'Drinks & Meals', 'Customer', 'Assistant', 'Extended conversation about Drinks & Meals', 'Guten Tag! Wie kann ich Ihnen helfen?', 'beginner', 2, ARRAY['das Brot','die Milch','der Käse','der Apfel','das Ei','das Obst','das Gemüse','kochen']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-00006599a2cf', 'Getränke und Mahlzeiten — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Getränke und Mahlzeiten".', 'Creative practice for Drinks & Meals', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-00006599a2cf', 'Homework: Getränke und Mahlzeiten', 'Complete these tasks to reinforce "Getränke und Mahlzeiten".', 'mixed', '[{"description":"Review all vocabulary from this lesson"},{"description":"Write 5 sentences using the grammar structure"},{"description":"Practice the dialogue aloud"}]', 35, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-00006599a2cf', 'In this lesson you learned about Drinks & Meals. You practiced vocabulary related to food and grammar structure present_tense.', '["Mastered vocabulary about Drinks & Meals","Applied present_tense correctly","Read and understood a text about Drinks & Meals","Practiced speaking about Drinks & Meals"]', '[{"title":"Getränke und Mahlzeiten Review","summary":"present_tense — the main grammar focus of this lesson."}]', ARRAY['Drinks & Meals core vocabulary','food key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)','Verb is always in second position']::text[], ARRAY['Practice 15-20 minutes daily','Use new vocabulary in real sentences','Speak out loud to improve pronunciation']::text[]);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006599a2cf', 'Pronunciation: German pronunciation basics', 'German is mostly phonetic. Pronounce each letter.

Common mistake for Arabic speakers: Pronouncing every letter as in English.', '[]', '[{"german":"ja","arabic":"","english":"","phonetic":"/jaː/"},{"german":"nein","arabic":"","english":"","phonetic":"/naɪn/"}]', '[]', 10);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006599a2cf', 'translation', 'Translate to German: "This is a translation exercise."', '[]', 'Das ist eine Übersetzungsübung.', 'Use "das ist" for "this is"', 1, 40);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006599a2cf', 'Culture: Drinks & Meals in German-Speaking Countries', 'Learn how Drinks & Meals is approached in German culture.

تعلم كيف يتم التعامل مع Drinks & Meals في الثقافة الألمانية.', '["Tip: Be direct and polite","Tip: Use formal language with strangers","Tip: Respect punctuality"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006599a2cf', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Common error for Arabic speakers","correction":"Correct version","explanation":"Explanation of the error"}]', 30);

  -- Lesson 3: Im Supermarkt (L-A1-04-03)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-00006599a2d0', '00000000-0000-4000-a000-000039b4d361', 'Im Supermarkt', 'Practice shopping conversations and understand prices.', 'Shopping', 'dialogue', '["Understand and use vocabulary related to Shopping","Apply present_tense correctly","Read and comprehend a text about Shopping","Listen and understand a dialogue about Shopping","Speak about Shopping in simple sentences","Write a short text about Shopping"]', 30, 3, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-00006599a2d0', 'das Brot', 'الخبز', 'bread', 'das', 'die Brote', 'noun', 'Ich kaufe ein Brot.', 'I buy a loaf of bread.', 'A1', 1),
  ('00000000-0000-4000-a000-00006599a2d0', 'die Milch', 'الحليب', 'milk', 'die', NULL, 'noun', 'Die Milch ist frisch.', 'The milk is fresh.', 'A1', 2),
  ('00000000-0000-4000-a000-00006599a2d0', 'der Käse', 'الجبن', 'cheese', 'der', NULL, 'noun', 'Der Käse schmeckt gut.', 'The cheese tastes good.', 'A1', 3),
  ('00000000-0000-4000-a000-00006599a2d0', 'der Apfel', 'التفاح', 'apple', 'der', 'die Äpfel', 'noun', 'Der Apfel ist rot.', 'The apple is red.', 'A1', 4),
  ('00000000-0000-4000-a000-00006599a2d0', 'das Ei', 'البيضة', 'egg', 'das', 'die Eier', 'noun', 'Ich esse ein Ei zum Frühstück.', 'I eat an egg for breakfast.', 'A1', 5),
  ('00000000-0000-4000-a000-00006599a2d0', 'das Obst', 'الفاكهة', 'fruit', 'das', NULL, 'noun', 'Obst ist gesund.', 'Fruit is healthy.', 'A1', 6),
  ('00000000-0000-4000-a000-00006599a2d0', 'das Gemüse', 'الخضروات', 'vegetables', 'das', NULL, 'noun', 'Ich kaufe Gemüse auf dem Markt.', 'I buy vegetables at the market.', 'A1', 7),
  ('00000000-0000-4000-a000-00006599a2d0', 'kochen', 'يطبخ', 'to cook', NULL, NULL, 'verb', 'Meine Mutter kocht gut.', 'My mother cooks well.', 'A1', 8),
  ('00000000-0000-4000-a000-00006599a2d0', 'der Fisch', 'السمك', 'fish', 'der', 'die Fische', 'noun', 'Der Fisch ist frisch.', 'The fish is fresh.', 'A1', 9),
  ('00000000-0000-4000-a000-00006599a2d0', 'das Fleisch', 'اللحم', 'meat', 'das', NULL, 'noun', 'Ich esse nicht viel Fleisch.', 'I do not eat much meat.', 'A1', 10),
  ('00000000-0000-4000-a000-00006599a2d0', 'Hallo', 'مرحباً', 'hello', NULL, NULL, 'interjection', 'Hallo, wie geht es dir?', 'Hello, how are you?', 'A1', 11),
  ('00000000-0000-4000-a000-00006599a2d0', 'Guten Morgen', 'صباح الخير', 'good morning', NULL, NULL, 'phrase', 'Guten Morgen, Herr Müller.', 'Good morning, Mr. Müller.', 'A1', 12),
  ('00000000-0000-4000-a000-00006599a2d0', 'Guten Tag', 'نهارك سعيد', 'good day', NULL, NULL, 'phrase', 'Guten Tag, Frau Schmidt.', 'Good day, Mrs. Schmidt.', 'A1', 13),
  ('00000000-0000-4000-a000-00006599a2d0', 'Tschüss', 'مع السلامة', 'bye', NULL, NULL, 'interjection', 'Tschüss, bis morgen!', 'Bye, see you tomorrow!', 'A1', 14),
  ('00000000-0000-4000-a000-00006599a2d0', 'der Name', 'الاسم', 'name', 'der', 'die Namen', 'noun', 'Mein Name ist Anna.', 'My name is Anna.', 'A1', 15),
  ('00000000-0000-4000-a000-00006599a2d0', 'wie', 'كيف', 'how', NULL, NULL, 'adverb', 'Wie heißt du?', 'What is your name?', 'A1', 16),
  ('00000000-0000-4000-a000-00006599a2d0', 'freuen', 'يسر', 'to be pleased', NULL, NULL, 'verb', 'Ich freue mich, dich kennenzulernen.', 'I am pleased to meet you.', 'A1', 17),
  ('00000000-0000-4000-a000-00006599a2d0', 'Willkommen', 'أهلاً وسهلاً', 'welcome', NULL, NULL, 'interjection', 'Willkommen in Deutschland!', 'Welcome to Germany!', 'A1', 18),
  ('00000000-0000-4000-a000-00006599a2d0', 'die Familie', 'العائلة', 'family', 'die', 'die Familien', 'noun', 'Meine Familie ist groß.', 'My family is big.', 'A1', 19),
  ('00000000-0000-4000-a000-00006599a2d0', 'der Vater', 'الأب', 'father', 'der', 'die Väter', 'noun', 'Mein Vater ist Ingenieur.', 'My father is an engineer.', 'A1', 20),
  ('00000000-0000-4000-a000-00006599a2d0', 'die Mutter', 'الأم', 'mother', 'die', 'die Mütter', 'noun', 'Meine Mutter kocht gut.', 'My mother cooks well.', 'A1', 21),
  ('00000000-0000-4000-a000-00006599a2d0', 'der Bruder', 'الأخ', 'brother', 'der', 'die Brüder', 'noun', 'Mein Bruder ist 15 Jahre alt.', 'My brother is 15 years old.', 'A1', 22),
  ('00000000-0000-4000-a000-00006599a2d0', 'die Schwester', 'الأخت', 'sister', 'die', 'die Schwestern', 'noun', 'Meine Schwester studiert Medizin.', 'My sister studies medicine.', 'A1', 23),
  ('00000000-0000-4000-a000-00006599a2d0', 'die Geschwister', 'الإخوة', 'siblings', 'die', NULL, 'noun', 'Hast du Geschwister?', 'Do you have siblings?', 'A1', 24),
  ('00000000-0000-4000-a000-00006599a2d0', 'der Sohn', 'الابن', 'son', 'der', 'die Söhne', 'noun', 'Wir haben einen Sohn.', 'We have a son.', 'A1', 25),
  ('00000000-0000-4000-a000-00006599a2d0', 'die Tochter', 'الابنة', 'daughter', 'die', 'die Töchter', 'noun', 'Meine Tochter geht zur Schule.', 'My daughter goes to school.', 'A1', 26),
  ('00000000-0000-4000-a000-00006599a2d0', 'die Großeltern', 'الأجداد', 'grandparents', 'die', NULL, 'noun', 'Meine Großeltern wohnen auf dem Land.', 'My grandparents live in the countryside.', 'A1', 27),
  ('00000000-0000-4000-a000-00006599a2d0', 'verheiratet', 'متزوج', 'married', NULL, NULL, 'adjective', 'Meine Eltern sind verheiratet.', 'My parents are married.', 'A1', 28),
  ('00000000-0000-4000-a000-00006599a2d0', 'das Haus', 'البيت', 'house', 'das', 'die Häuser', 'noun', 'Das Haus ist groß.', 'The house is big.', 'A1', 29),
  ('00000000-0000-4000-a000-00006599a2d0', 'die Wohnung', 'الشقة', 'apartment', 'die', 'die Wohnungen', 'noun', 'Meine Wohnung hat drei Zimmer.', 'My apartment has three rooms.', 'A1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006599a2d0', 'Präsens der regelmäßigen Verben (Present Tense) / المضارع للأفعال المنتظمة', 'In German, regular verbs follow a consistent pattern. The infinitive ends in -en. Remove the -en and add the personal endings: ich -e, du -st, er/sie/es -t, wir -en, ihr -t, sie/Sie -en. For most Arabic speakers, this is easier than Arabic verb conjugation because German has fewer forms.', '[{"rule":"ich: stem + e","note":"Ich lerne, ich wohne, ich arbeite"},{"rule":"du: stem + st","note":"Du lernst, du wohnst, du arbeitest"},{"rule":"er/sie/es: stem + t","note":"Er lernt, sie wohnt, es arbeitet"},{"rule":"wir: stem + en","note":"Wir lernen, wir wohnen, wir arbeiten"},{"rule":"ihr: stem + t","note":"Ihr lernt, ihr wohnt, ihr arbeitet"},{"rule":"sie/Sie: stem + en","note":"Sie lernen, Sie wohnen"}]', '[{"german":"Ich lerne Deutsch.","arabic":"أنا أتعلم الألمانية.","english":"I am learning German."},{"german":"Du wohnst in Berlin.","arabic":"أنت تسكن في برلين.","english":"You live in Berlin."},{"german":"Er arbeitet bei Siemens.","arabic":"هو يعمل في سيمنز.","english":"He works at Siemens."}]', '[{"mistake":"Ich lernen Deutsch","correction":"Ich lerne Deutsch","explanation":"After \"ich\" we use the stem + e, not the infinitive."},{"mistake":"Er lerne Deutsch","correction":"Er lernt Deutsch","explanation":"After \"er/sie/es\" we add -t, not -e."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006599a2d0', 'multiple_choice', 'What does "das Brot" mean?', '["The","A","This","That"]', 'The', 'This is a basic vocabulary item.', 1, 1),
  ('00000000-0000-4000-a000-00006599a2d0', 'fill_gap', 'Complete with the correct form.', '["Option 1","Option 2","Option 3"]', 'Option 1', 'Practice grammar in context.', 1, 2),
  ('00000000-0000-4000-a000-00006599a2d0', 'translation', 'Translate: "I learn German."', '["Ich lerne Deutsch.","Ich lerne Englisch.","Ich lerne Spanisch."]', 'Ich lerne Deutsch.', 'Ich = I, lerne = learn/learning, Deutsch = German.', 2, 3),
  ('00000000-0000-4000-a000-00006599a2d0', 'sentence_order', 'Order the sentence.', '[]', 'Ich lerne Deutsch.', 'Subject + verb + object in German.', 2, 4),
  ('00000000-0000-4000-a000-00006599a2d0', 'matching', 'Match the words with their meanings.', '["Match pairs correctly"]', 'Correct pairs', 'Test your vocabulary knowledge.', 2, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-00006599a2d0', 'multiple_choice', 'What is the main topic of this lesson?', '["Shopping","Sports","Music","Travel"]', 'Shopping', 1, 1),
  ('00000000-0000-4000-a000-00006599a2d0', 'true_false', 'This lesson teaches vocabulary about Shopping.', '["True","False"]', 'True', 1, 2),
  ('00000000-0000-4000-a000-00006599a2d0', 'true_false', 'German word order is always the same as English.', '["True","False"]', 'False', 1, 3),
  ('00000000-0000-4000-a000-00006599a2d0', 'multiple_choice', 'How do you say "please" in German?', '["Danke","Bitte","Tschüss","Hallo"]', 'Bitte', 1, 4),
  ('00000000-0000-4000-a000-00006599a2d0', 'multiple_choice', 'Which article is feminine?', '["der","die","das","den"]', 'die', 1, 5),
  ('00000000-0000-4000-a000-00006599a2d0', 'fill_blank', 'Ich ___ (to be) Student.', '["bin","bist","ist","sind"]', 'bin', 1, 6),
  ('00000000-0000-4000-a000-00006599a2d0', 'multiple_choice', 'What is the correct word order?', '["Ich lerne Deutsch","Ich Deutsch lerne","Lerne ich Deutsch","Deutsch ich lerne"]', 'Ich lerne Deutsch', 1, 7),
  ('00000000-0000-4000-a000-00006599a2d0', 'true_false', 'All German nouns are capitalized.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-00006599a2d0', 'multiple_choice', 'How do you say "thank you" in German?', '["Bitte","Danke","Tschüss","Hallo"]', 'Danke', 1, 9),
  ('00000000-0000-4000-a000-00006599a2d0', 'fill_blank', 'Wo ___ du? (to live)', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 1, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-00006599a2d0', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Essen und Einkaufen', 'formal', false, 1),
  ('00000000-0000-4000-a000-00006599a2d0', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Essen und Einkaufen', 'informal', false, 2),
  ('00000000-0000-4000-a000-00006599a2d0', 'Bitte!', 'Please!', 'من فضلك!', 'Used in Essen und Einkaufen', 'neutral', false, 3),
  ('00000000-0000-4000-a000-00006599a2d0', 'Danke!', 'Thanks!', 'شكراً!', 'Used in Essen und Einkaufen', 'neutral', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-00006599a2d0', 'Hallo', 'Hello', 'Greeting', 'expression', 1),
  ('00000000-0000-4000-a000-00006599a2d0', 'Danke', 'Thanks', 'Politeness', 'expression', 2),
  ('00000000-0000-4000-a000-00006599a2d0', 'Bitte', 'Please', 'Politeness', 'expression', 3),
  ('00000000-0000-4000-a000-00006599a2d0', 'Tschüss', 'Bye', 'Farewell', 'expression', 4);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-00006599a2d0', 'Im Supermarkt — Leseübung', 'Heute gehe ich einkaufen. Ich brauche Lebensmittel. Ich gehe zum Supermarkt. Ich kaufe Brot, Milch, Käse und Eier. Auch Obst und Gemüse brauche ich. Die Äpfel sehen gut aus. Ich nehme fünf Äpfel. Der Käse kostet 3 Euro. Alles zusammen kostet 15 Euro. Ich bezahle an der Kasse. Die Verkäuferin ist freundlich. Dann gehe ich nach Hause.', 'Today I go shopping. I need groceries. I go to the supermarket. I buy bread, milk, cheese and eggs. I also need fruit and vegetables. The apples look good. I take five apples. The cheese costs 3 euros. Everything together costs 15 euros. I pay at the checkout. The saleswoman is friendly. Then I go home.', 'اليوم أذهب للتسوق. أحتاج مواد غذائية. أذهب إلى السوبرماركت. أشتري خبزاً وحليباً وجبناً وبيضاً. أحتاج أيضاً فاكهة وخضروات. التفاح يبدو جيداً. آخذ خمس تفاحات. الجبن يكلف 3 يورو. المجموع الكلي 15 يورو. أدفع عند الصندوق. البائعة ودودة. ثم أعود إلى المنزل.', 57, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, duration_seconds, speaker_count, scenario) values
  ('00000000-0000-4000-a000-00006599a2d0', 'Im Supermarkt — Hörverständnis', '[Kellner]: Guten Abend! Haben Sie schon gewählt?

[Gast]: Ja, ich möchte die Pizza Margherita und ein Glas Wasser.

[Kellner]: Sehr gut. Und als Vorspeise?

[Gast]: Einen gemischten Salat, bitte.

[Kellner]: Kommt sofort. Guten Appetit!', '[Kellner]: Good evening! Have you already chosen?

[Gast]: Yes, I would like the Pizza Margherita and a glass of water.

[Kellner]: Very good. And as a starter?

[Gast]: A mixed salad, please.

[Kellner]: Coming right away. Enjoy your meal!', '[Kellner]: مساء الخير! هل اخترتم؟

[Gast]: نعم، أريدبيتزا مارغريتا وكأس ماء.

[Kellner]: جيد جداً. وماذا عن المقبلات؟

[Gast]: سلطة مشكلة من فضلك.

[Kellner]: فوراً. شهية طيبة!', 60, 2, 'Essen und Einkaufen');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-00006599a2d0', 'Speaking: Im Supermarkt', 'Practice talking about Shopping. Answer questions and have a simple conversation.', 'Shopping', ARRAY['Use full sentences','Speak clearly','Don''t worry about mistakes']::text[], ARRAY['das Brot','die Milch','der Käse','der Apfel','das Ei']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-00006599a2d0', 'Writing: Im Supermarkt', 'Write a short text about Shopping. Use at least 5 vocabulary words from this lesson.', ARRAY['Start with a greeting','Use the vocabulary from this lesson','Check your grammar']::text[], ARRAY['das Brot','die Milch','der Käse']::text[], '["Sentence structure","Vocabulary usage"]', 50, 150, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00006599a2d0', 'Im Supermarkt — Roleplay', 'Shopping', 'Student', 'Teacher', 'Practice conversation about Shopping', 'Hallo! Lass uns über dieses Thema sprechen.', 'beginner', 1, ARRAY['das Brot','die Milch','der Käse','der Apfel','das Ei','das Obst','das Gemüse','kochen']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00006599a2d0', 'Im Supermarkt — Advanced Roleplay', 'Shopping', 'Customer', 'Assistant', 'Extended conversation about Shopping', 'Guten Tag! Wie kann ich Ihnen helfen?', 'beginner', 2, ARRAY['das Brot','die Milch','der Käse','der Apfel','das Ei','das Obst','das Gemüse','kochen']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-00006599a2d0', 'Im Supermarkt — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Im Supermarkt".', 'Creative practice for Shopping', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-00006599a2d0', 'Homework: Im Supermarkt', 'Complete these tasks to reinforce "Im Supermarkt".', 'mixed', '[{"description":"Review all vocabulary from this lesson"},{"description":"Write 5 sentences using the grammar structure"},{"description":"Practice the dialogue aloud"}]', 35, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-00006599a2d0', 'In this lesson you learned about Shopping. You practiced vocabulary related to food and grammar structure present_tense.', '["Mastered vocabulary about Shopping","Applied present_tense correctly","Read and understood a text about Shopping","Practiced speaking about Shopping"]', '[{"title":"Im Supermarkt Review","summary":"present_tense — the main grammar focus of this lesson."}]', ARRAY['Shopping core vocabulary','food key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)','Verb is always in second position']::text[], ARRAY['Practice 15-20 minutes daily','Use new vocabulary in real sentences','Speak out loud to improve pronunciation']::text[]);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006599a2d0', 'Pronunciation: German pronunciation basics', 'German is mostly phonetic. Pronounce each letter.

Common mistake for Arabic speakers: Pronouncing every letter as in English.', '[]', '[{"german":"ja","arabic":"","english":"","phonetic":"/jaː/"},{"german":"nein","arabic":"","english":"","phonetic":"/naɪn/"}]', '[]', 10);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006599a2d0', 'translation', 'Translate to German: "This is a translation exercise."', '[]', 'Das ist eine Übersetzungsübung.', 'Use "das ist" for "this is"', 1, 40);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006599a2d0', 'Culture: Shopping in German-Speaking Countries', 'Learn how Shopping is approached in German culture.

تعلم كيف يتم التعامل مع Shopping في الثقافة الألمانية.', '["Tip: Be direct and polite","Tip: Use formal language with strangers","Tip: Respect punctuality"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006599a2d0', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Common error for Arabic speakers","correction":"Correct version","explanation":"Explanation of the error"}]', 30);

  -- Lesson 4: Im Restaurant (L-A1-04-04)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-00006599a2d1', '00000000-0000-4000-a000-000039b4d361', 'Im Restaurant', 'Learn how to order food and interact in restaurants.', 'Restaurant', 'dialogue', '["Understand and use vocabulary related to Restaurant","Apply present_tense correctly","Read and comprehend a text about Restaurant","Listen and understand a dialogue about Restaurant","Speak about Restaurant in simple sentences","Write a short text about Restaurant"]', 30, 4, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-00006599a2d1', 'das Brot', 'الخبز', 'bread', 'das', 'die Brote', 'noun', 'Ich kaufe ein Brot.', 'I buy a loaf of bread.', 'A1', 1),
  ('00000000-0000-4000-a000-00006599a2d1', 'die Milch', 'الحليب', 'milk', 'die', NULL, 'noun', 'Die Milch ist frisch.', 'The milk is fresh.', 'A1', 2),
  ('00000000-0000-4000-a000-00006599a2d1', 'der Käse', 'الجبن', 'cheese', 'der', NULL, 'noun', 'Der Käse schmeckt gut.', 'The cheese tastes good.', 'A1', 3),
  ('00000000-0000-4000-a000-00006599a2d1', 'der Apfel', 'التفاح', 'apple', 'der', 'die Äpfel', 'noun', 'Der Apfel ist rot.', 'The apple is red.', 'A1', 4),
  ('00000000-0000-4000-a000-00006599a2d1', 'das Ei', 'البيضة', 'egg', 'das', 'die Eier', 'noun', 'Ich esse ein Ei zum Frühstück.', 'I eat an egg for breakfast.', 'A1', 5),
  ('00000000-0000-4000-a000-00006599a2d1', 'das Obst', 'الفاكهة', 'fruit', 'das', NULL, 'noun', 'Obst ist gesund.', 'Fruit is healthy.', 'A1', 6),
  ('00000000-0000-4000-a000-00006599a2d1', 'das Gemüse', 'الخضروات', 'vegetables', 'das', NULL, 'noun', 'Ich kaufe Gemüse auf dem Markt.', 'I buy vegetables at the market.', 'A1', 7),
  ('00000000-0000-4000-a000-00006599a2d1', 'kochen', 'يطبخ', 'to cook', NULL, NULL, 'verb', 'Meine Mutter kocht gut.', 'My mother cooks well.', 'A1', 8),
  ('00000000-0000-4000-a000-00006599a2d1', 'der Fisch', 'السمك', 'fish', 'der', 'die Fische', 'noun', 'Der Fisch ist frisch.', 'The fish is fresh.', 'A1', 9),
  ('00000000-0000-4000-a000-00006599a2d1', 'das Fleisch', 'اللحم', 'meat', 'das', NULL, 'noun', 'Ich esse nicht viel Fleisch.', 'I do not eat much meat.', 'A1', 10),
  ('00000000-0000-4000-a000-00006599a2d1', 'Hallo', 'مرحباً', 'hello', NULL, NULL, 'interjection', 'Hallo, wie geht es dir?', 'Hello, how are you?', 'A1', 11),
  ('00000000-0000-4000-a000-00006599a2d1', 'Guten Morgen', 'صباح الخير', 'good morning', NULL, NULL, 'phrase', 'Guten Morgen, Herr Müller.', 'Good morning, Mr. Müller.', 'A1', 12),
  ('00000000-0000-4000-a000-00006599a2d1', 'Guten Tag', 'نهارك سعيد', 'good day', NULL, NULL, 'phrase', 'Guten Tag, Frau Schmidt.', 'Good day, Mrs. Schmidt.', 'A1', 13),
  ('00000000-0000-4000-a000-00006599a2d1', 'Tschüss', 'مع السلامة', 'bye', NULL, NULL, 'interjection', 'Tschüss, bis morgen!', 'Bye, see you tomorrow!', 'A1', 14),
  ('00000000-0000-4000-a000-00006599a2d1', 'der Name', 'الاسم', 'name', 'der', 'die Namen', 'noun', 'Mein Name ist Anna.', 'My name is Anna.', 'A1', 15),
  ('00000000-0000-4000-a000-00006599a2d1', 'wie', 'كيف', 'how', NULL, NULL, 'adverb', 'Wie heißt du?', 'What is your name?', 'A1', 16),
  ('00000000-0000-4000-a000-00006599a2d1', 'freuen', 'يسر', 'to be pleased', NULL, NULL, 'verb', 'Ich freue mich, dich kennenzulernen.', 'I am pleased to meet you.', 'A1', 17),
  ('00000000-0000-4000-a000-00006599a2d1', 'Willkommen', 'أهلاً وسهلاً', 'welcome', NULL, NULL, 'interjection', 'Willkommen in Deutschland!', 'Welcome to Germany!', 'A1', 18),
  ('00000000-0000-4000-a000-00006599a2d1', 'die Familie', 'العائلة', 'family', 'die', 'die Familien', 'noun', 'Meine Familie ist groß.', 'My family is big.', 'A1', 19),
  ('00000000-0000-4000-a000-00006599a2d1', 'der Vater', 'الأب', 'father', 'der', 'die Väter', 'noun', 'Mein Vater ist Ingenieur.', 'My father is an engineer.', 'A1', 20),
  ('00000000-0000-4000-a000-00006599a2d1', 'die Mutter', 'الأم', 'mother', 'die', 'die Mütter', 'noun', 'Meine Mutter kocht gut.', 'My mother cooks well.', 'A1', 21),
  ('00000000-0000-4000-a000-00006599a2d1', 'der Bruder', 'الأخ', 'brother', 'der', 'die Brüder', 'noun', 'Mein Bruder ist 15 Jahre alt.', 'My brother is 15 years old.', 'A1', 22),
  ('00000000-0000-4000-a000-00006599a2d1', 'die Schwester', 'الأخت', 'sister', 'die', 'die Schwestern', 'noun', 'Meine Schwester studiert Medizin.', 'My sister studies medicine.', 'A1', 23),
  ('00000000-0000-4000-a000-00006599a2d1', 'die Geschwister', 'الإخوة', 'siblings', 'die', NULL, 'noun', 'Hast du Geschwister?', 'Do you have siblings?', 'A1', 24),
  ('00000000-0000-4000-a000-00006599a2d1', 'der Sohn', 'الابن', 'son', 'der', 'die Söhne', 'noun', 'Wir haben einen Sohn.', 'We have a son.', 'A1', 25),
  ('00000000-0000-4000-a000-00006599a2d1', 'die Tochter', 'الابنة', 'daughter', 'die', 'die Töchter', 'noun', 'Meine Tochter geht zur Schule.', 'My daughter goes to school.', 'A1', 26),
  ('00000000-0000-4000-a000-00006599a2d1', 'die Großeltern', 'الأجداد', 'grandparents', 'die', NULL, 'noun', 'Meine Großeltern wohnen auf dem Land.', 'My grandparents live in the countryside.', 'A1', 27),
  ('00000000-0000-4000-a000-00006599a2d1', 'verheiratet', 'متزوج', 'married', NULL, NULL, 'adjective', 'Meine Eltern sind verheiratet.', 'My parents are married.', 'A1', 28),
  ('00000000-0000-4000-a000-00006599a2d1', 'das Haus', 'البيت', 'house', 'das', 'die Häuser', 'noun', 'Das Haus ist groß.', 'The house is big.', 'A1', 29),
  ('00000000-0000-4000-a000-00006599a2d1', 'die Wohnung', 'الشقة', 'apartment', 'die', 'die Wohnungen', 'noun', 'Meine Wohnung hat drei Zimmer.', 'My apartment has three rooms.', 'A1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006599a2d1', 'Präsens der regelmäßigen Verben (Present Tense) / المضارع للأفعال المنتظمة', 'In German, regular verbs follow a consistent pattern. The infinitive ends in -en. Remove the -en and add the personal endings: ich -e, du -st, er/sie/es -t, wir -en, ihr -t, sie/Sie -en. For most Arabic speakers, this is easier than Arabic verb conjugation because German has fewer forms.', '[{"rule":"ich: stem + e","note":"Ich lerne, ich wohne, ich arbeite"},{"rule":"du: stem + st","note":"Du lernst, du wohnst, du arbeitest"},{"rule":"er/sie/es: stem + t","note":"Er lernt, sie wohnt, es arbeitet"},{"rule":"wir: stem + en","note":"Wir lernen, wir wohnen, wir arbeiten"},{"rule":"ihr: stem + t","note":"Ihr lernt, ihr wohnt, ihr arbeitet"},{"rule":"sie/Sie: stem + en","note":"Sie lernen, Sie wohnen"}]', '[{"german":"Ich lerne Deutsch.","arabic":"أنا أتعلم الألمانية.","english":"I am learning German."},{"german":"Du wohnst in Berlin.","arabic":"أنت تسكن في برلين.","english":"You live in Berlin."},{"german":"Er arbeitet bei Siemens.","arabic":"هو يعمل في سيمنز.","english":"He works at Siemens."}]', '[{"mistake":"Ich lernen Deutsch","correction":"Ich lerne Deutsch","explanation":"After \"ich\" we use the stem + e, not the infinitive."},{"mistake":"Er lerne Deutsch","correction":"Er lernt Deutsch","explanation":"After \"er/sie/es\" we add -t, not -e."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006599a2d1', 'multiple_choice', 'What does "das Brot" mean?', '["The","A","This","That"]', 'The', 'This is a basic vocabulary item.', 1, 1),
  ('00000000-0000-4000-a000-00006599a2d1', 'fill_gap', 'Complete with the correct form.', '["Option 1","Option 2","Option 3"]', 'Option 1', 'Practice grammar in context.', 1, 2),
  ('00000000-0000-4000-a000-00006599a2d1', 'translation', 'Translate: "I learn German."', '["Ich lerne Deutsch.","Ich lerne Englisch.","Ich lerne Spanisch."]', 'Ich lerne Deutsch.', 'Ich = I, lerne = learn/learning, Deutsch = German.', 2, 3),
  ('00000000-0000-4000-a000-00006599a2d1', 'sentence_order', 'Order the sentence.', '[]', 'Ich lerne Deutsch.', 'Subject + verb + object in German.', 2, 4),
  ('00000000-0000-4000-a000-00006599a2d1', 'matching', 'Match the words with their meanings.', '["Match pairs correctly"]', 'Correct pairs', 'Test your vocabulary knowledge.', 2, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-00006599a2d1', 'multiple_choice', 'What is the main topic of this lesson?', '["Restaurant","Sports","Music","Travel"]', 'Restaurant', 1, 1),
  ('00000000-0000-4000-a000-00006599a2d1', 'true_false', 'This lesson teaches vocabulary about Restaurant.', '["True","False"]', 'True', 1, 2),
  ('00000000-0000-4000-a000-00006599a2d1', 'true_false', 'German word order is always the same as English.', '["True","False"]', 'False', 1, 3),
  ('00000000-0000-4000-a000-00006599a2d1', 'multiple_choice', 'How do you say "please" in German?', '["Danke","Bitte","Tschüss","Hallo"]', 'Bitte', 1, 4),
  ('00000000-0000-4000-a000-00006599a2d1', 'multiple_choice', 'Which article is feminine?', '["der","die","das","den"]', 'die', 1, 5),
  ('00000000-0000-4000-a000-00006599a2d1', 'fill_blank', 'Ich ___ (to be) Student.', '["bin","bist","ist","sind"]', 'bin', 1, 6),
  ('00000000-0000-4000-a000-00006599a2d1', 'multiple_choice', 'What is the correct word order?', '["Ich lerne Deutsch","Ich Deutsch lerne","Lerne ich Deutsch","Deutsch ich lerne"]', 'Ich lerne Deutsch', 1, 7),
  ('00000000-0000-4000-a000-00006599a2d1', 'true_false', 'All German nouns are capitalized.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-00006599a2d1', 'multiple_choice', 'How do you say "thank you" in German?', '["Bitte","Danke","Tschüss","Hallo"]', 'Danke', 1, 9),
  ('00000000-0000-4000-a000-00006599a2d1', 'fill_blank', 'Wo ___ du? (to live)', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 1, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-00006599a2d1', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Essen und Einkaufen', 'formal', false, 1),
  ('00000000-0000-4000-a000-00006599a2d1', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Essen und Einkaufen', 'informal', false, 2),
  ('00000000-0000-4000-a000-00006599a2d1', 'Bitte!', 'Please!', 'من فضلك!', 'Used in Essen und Einkaufen', 'neutral', false, 3),
  ('00000000-0000-4000-a000-00006599a2d1', 'Danke!', 'Thanks!', 'شكراً!', 'Used in Essen und Einkaufen', 'neutral', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-00006599a2d1', 'Hallo', 'Hello', 'Greeting', 'expression', 1),
  ('00000000-0000-4000-a000-00006599a2d1', 'Danke', 'Thanks', 'Politeness', 'expression', 2),
  ('00000000-0000-4000-a000-00006599a2d1', 'Bitte', 'Please', 'Politeness', 'expression', 3),
  ('00000000-0000-4000-a000-00006599a2d1', 'Tschüss', 'Bye', 'Farewell', 'expression', 4);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-00006599a2d1', 'Im Restaurant — Leseübung', 'Heute gehe ich einkaufen. Ich brauche Lebensmittel. Ich gehe zum Supermarkt. Ich kaufe Brot, Milch, Käse und Eier. Auch Obst und Gemüse brauche ich. Die Äpfel sehen gut aus. Ich nehme fünf Äpfel. Der Käse kostet 3 Euro. Alles zusammen kostet 15 Euro. Ich bezahle an der Kasse. Die Verkäuferin ist freundlich. Dann gehe ich nach Hause.', 'Today I go shopping. I need groceries. I go to the supermarket. I buy bread, milk, cheese and eggs. I also need fruit and vegetables. The apples look good. I take five apples. The cheese costs 3 euros. Everything together costs 15 euros. I pay at the checkout. The saleswoman is friendly. Then I go home.', 'اليوم أذهب للتسوق. أحتاج مواد غذائية. أذهب إلى السوبرماركت. أشتري خبزاً وحليباً وجبناً وبيضاً. أحتاج أيضاً فاكهة وخضروات. التفاح يبدو جيداً. آخذ خمس تفاحات. الجبن يكلف 3 يورو. المجموع الكلي 15 يورو. أدفع عند الصندوق. البائعة ودودة. ثم أعود إلى المنزل.', 57, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, duration_seconds, speaker_count, scenario) values
  ('00000000-0000-4000-a000-00006599a2d1', 'Im Restaurant — Hörverständnis', '[Kellner]: Guten Abend! Haben Sie schon gewählt?

[Gast]: Ja, ich möchte die Pizza Margherita und ein Glas Wasser.

[Kellner]: Sehr gut. Und als Vorspeise?

[Gast]: Einen gemischten Salat, bitte.

[Kellner]: Kommt sofort. Guten Appetit!', '[Kellner]: Good evening! Have you already chosen?

[Gast]: Yes, I would like the Pizza Margherita and a glass of water.

[Kellner]: Very good. And as a starter?

[Gast]: A mixed salad, please.

[Kellner]: Coming right away. Enjoy your meal!', '[Kellner]: مساء الخير! هل اخترتم؟

[Gast]: نعم، أريدبيتزا مارغريتا وكأس ماء.

[Kellner]: جيد جداً. وماذا عن المقبلات؟

[Gast]: سلطة مشكلة من فضلك.

[Kellner]: فوراً. شهية طيبة!', 60, 2, 'Essen und Einkaufen');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-00006599a2d1', 'Speaking: Im Restaurant', 'Practice talking about Restaurant. Answer questions and have a simple conversation.', 'Restaurant', ARRAY['Use full sentences','Speak clearly','Don''t worry about mistakes']::text[], ARRAY['das Brot','die Milch','der Käse','der Apfel','das Ei']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-00006599a2d1', 'Writing: Im Restaurant', 'Write a short text about Restaurant. Use at least 5 vocabulary words from this lesson.', ARRAY['Start with a greeting','Use the vocabulary from this lesson','Check your grammar']::text[], ARRAY['das Brot','die Milch','der Käse']::text[], '["Sentence structure","Vocabulary usage"]', 50, 150, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00006599a2d1', 'Im Restaurant — Roleplay', 'Restaurant', 'Student', 'Teacher', 'Practice conversation about Restaurant', 'Hallo! Lass uns über dieses Thema sprechen.', 'beginner', 1, ARRAY['das Brot','die Milch','der Käse','der Apfel','das Ei','das Obst','das Gemüse','kochen']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00006599a2d1', 'Im Restaurant — Advanced Roleplay', 'Restaurant', 'Customer', 'Assistant', 'Extended conversation about Restaurant', 'Guten Tag! Wie kann ich Ihnen helfen?', 'beginner', 2, ARRAY['das Brot','die Milch','der Käse','der Apfel','das Ei','das Obst','das Gemüse','kochen']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-00006599a2d1', 'Im Restaurant — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Im Restaurant".', 'Creative practice for Restaurant', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-00006599a2d1', 'Homework: Im Restaurant', 'Complete these tasks to reinforce "Im Restaurant".', 'mixed', '[{"description":"Review all vocabulary from this lesson"},{"description":"Write 5 sentences using the grammar structure"},{"description":"Practice the dialogue aloud"}]', 35, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-00006599a2d1', 'In this lesson you learned about Restaurant. You practiced vocabulary related to food and grammar structure present_tense.', '["Mastered vocabulary about Restaurant","Applied present_tense correctly","Read and understood a text about Restaurant","Practiced speaking about Restaurant"]', '[{"title":"Im Restaurant Review","summary":"present_tense — the main grammar focus of this lesson."}]', ARRAY['Restaurant core vocabulary','food key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)','Verb is always in second position']::text[], ARRAY['Practice 15-20 minutes daily','Use new vocabulary in real sentences','Speak out loud to improve pronunciation']::text[]);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006599a2d1', 'Pronunciation: German pronunciation basics', 'German is mostly phonetic. Pronounce each letter.

Common mistake for Arabic speakers: Pronouncing every letter as in English.', '[]', '[{"german":"ja","arabic":"","english":"","phonetic":"/jaː/"},{"german":"nein","arabic":"","english":"","phonetic":"/naɪn/"}]', '[]', 10);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006599a2d1', 'translation', 'Translate to German: "This is a translation exercise."', '[]', 'Das ist eine Übersetzungsübung.', 'Use "das ist" for "this is"', 1, 40);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006599a2d1', 'Culture: Restaurant in German-Speaking Countries', 'Learn how Restaurant is approached in German culture.

تعلم كيف يتم التعامل مع Restaurant في الثقافة الألمانية.', '["Tip: Be direct and polite","Tip: Use formal language with strangers","Tip: Respect punctuality"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006599a2d1', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Common error for Arabic speakers","correction":"Correct version","explanation":"Explanation of the error"}]', 30);

  -- Lesson 5: Mengen und Preise (L-A1-04-05)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-00006599a2d2', '00000000-0000-4000-a000-000039b4d361', 'Mengen und Preise', 'Learn quantities, weights, and how to talk about prices.', 'Quantities & Prices', 'vocabulary', '["Understand and use vocabulary related to Quantities & Prices","Apply present_tense correctly","Read and comprehend a text about Quantities & Prices","Listen and understand a dialogue about Quantities & Prices","Speak about Quantities & Prices in simple sentences","Write a short text about Quantities & Prices"]', 25, 5, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-00006599a2d2', 'das Brot', 'الخبز', 'bread', 'das', 'die Brote', 'noun', 'Ich kaufe ein Brot.', 'I buy a loaf of bread.', 'A1', 1),
  ('00000000-0000-4000-a000-00006599a2d2', 'die Milch', 'الحليب', 'milk', 'die', NULL, 'noun', 'Die Milch ist frisch.', 'The milk is fresh.', 'A1', 2),
  ('00000000-0000-4000-a000-00006599a2d2', 'der Käse', 'الجبن', 'cheese', 'der', NULL, 'noun', 'Der Käse schmeckt gut.', 'The cheese tastes good.', 'A1', 3),
  ('00000000-0000-4000-a000-00006599a2d2', 'der Apfel', 'التفاح', 'apple', 'der', 'die Äpfel', 'noun', 'Der Apfel ist rot.', 'The apple is red.', 'A1', 4),
  ('00000000-0000-4000-a000-00006599a2d2', 'das Ei', 'البيضة', 'egg', 'das', 'die Eier', 'noun', 'Ich esse ein Ei zum Frühstück.', 'I eat an egg for breakfast.', 'A1', 5),
  ('00000000-0000-4000-a000-00006599a2d2', 'das Obst', 'الفاكهة', 'fruit', 'das', NULL, 'noun', 'Obst ist gesund.', 'Fruit is healthy.', 'A1', 6),
  ('00000000-0000-4000-a000-00006599a2d2', 'das Gemüse', 'الخضروات', 'vegetables', 'das', NULL, 'noun', 'Ich kaufe Gemüse auf dem Markt.', 'I buy vegetables at the market.', 'A1', 7),
  ('00000000-0000-4000-a000-00006599a2d2', 'kochen', 'يطبخ', 'to cook', NULL, NULL, 'verb', 'Meine Mutter kocht gut.', 'My mother cooks well.', 'A1', 8),
  ('00000000-0000-4000-a000-00006599a2d2', 'der Fisch', 'السمك', 'fish', 'der', 'die Fische', 'noun', 'Der Fisch ist frisch.', 'The fish is fresh.', 'A1', 9),
  ('00000000-0000-4000-a000-00006599a2d2', 'das Fleisch', 'اللحم', 'meat', 'das', NULL, 'noun', 'Ich esse nicht viel Fleisch.', 'I do not eat much meat.', 'A1', 10),
  ('00000000-0000-4000-a000-00006599a2d2', 'Hallo', 'مرحباً', 'hello', NULL, NULL, 'interjection', 'Hallo, wie geht es dir?', 'Hello, how are you?', 'A1', 11),
  ('00000000-0000-4000-a000-00006599a2d2', 'Guten Morgen', 'صباح الخير', 'good morning', NULL, NULL, 'phrase', 'Guten Morgen, Herr Müller.', 'Good morning, Mr. Müller.', 'A1', 12),
  ('00000000-0000-4000-a000-00006599a2d2', 'Guten Tag', 'نهارك سعيد', 'good day', NULL, NULL, 'phrase', 'Guten Tag, Frau Schmidt.', 'Good day, Mrs. Schmidt.', 'A1', 13),
  ('00000000-0000-4000-a000-00006599a2d2', 'Tschüss', 'مع السلامة', 'bye', NULL, NULL, 'interjection', 'Tschüss, bis morgen!', 'Bye, see you tomorrow!', 'A1', 14),
  ('00000000-0000-4000-a000-00006599a2d2', 'der Name', 'الاسم', 'name', 'der', 'die Namen', 'noun', 'Mein Name ist Anna.', 'My name is Anna.', 'A1', 15),
  ('00000000-0000-4000-a000-00006599a2d2', 'wie', 'كيف', 'how', NULL, NULL, 'adverb', 'Wie heißt du?', 'What is your name?', 'A1', 16),
  ('00000000-0000-4000-a000-00006599a2d2', 'freuen', 'يسر', 'to be pleased', NULL, NULL, 'verb', 'Ich freue mich, dich kennenzulernen.', 'I am pleased to meet you.', 'A1', 17),
  ('00000000-0000-4000-a000-00006599a2d2', 'Willkommen', 'أهلاً وسهلاً', 'welcome', NULL, NULL, 'interjection', 'Willkommen in Deutschland!', 'Welcome to Germany!', 'A1', 18),
  ('00000000-0000-4000-a000-00006599a2d2', 'die Familie', 'العائلة', 'family', 'die', 'die Familien', 'noun', 'Meine Familie ist groß.', 'My family is big.', 'A1', 19),
  ('00000000-0000-4000-a000-00006599a2d2', 'der Vater', 'الأب', 'father', 'der', 'die Väter', 'noun', 'Mein Vater ist Ingenieur.', 'My father is an engineer.', 'A1', 20),
  ('00000000-0000-4000-a000-00006599a2d2', 'die Mutter', 'الأم', 'mother', 'die', 'die Mütter', 'noun', 'Meine Mutter kocht gut.', 'My mother cooks well.', 'A1', 21),
  ('00000000-0000-4000-a000-00006599a2d2', 'der Bruder', 'الأخ', 'brother', 'der', 'die Brüder', 'noun', 'Mein Bruder ist 15 Jahre alt.', 'My brother is 15 years old.', 'A1', 22),
  ('00000000-0000-4000-a000-00006599a2d2', 'die Schwester', 'الأخت', 'sister', 'die', 'die Schwestern', 'noun', 'Meine Schwester studiert Medizin.', 'My sister studies medicine.', 'A1', 23),
  ('00000000-0000-4000-a000-00006599a2d2', 'die Geschwister', 'الإخوة', 'siblings', 'die', NULL, 'noun', 'Hast du Geschwister?', 'Do you have siblings?', 'A1', 24),
  ('00000000-0000-4000-a000-00006599a2d2', 'der Sohn', 'الابن', 'son', 'der', 'die Söhne', 'noun', 'Wir haben einen Sohn.', 'We have a son.', 'A1', 25),
  ('00000000-0000-4000-a000-00006599a2d2', 'die Tochter', 'الابنة', 'daughter', 'die', 'die Töchter', 'noun', 'Meine Tochter geht zur Schule.', 'My daughter goes to school.', 'A1', 26),
  ('00000000-0000-4000-a000-00006599a2d2', 'die Großeltern', 'الأجداد', 'grandparents', 'die', NULL, 'noun', 'Meine Großeltern wohnen auf dem Land.', 'My grandparents live in the countryside.', 'A1', 27),
  ('00000000-0000-4000-a000-00006599a2d2', 'verheiratet', 'متزوج', 'married', NULL, NULL, 'adjective', 'Meine Eltern sind verheiratet.', 'My parents are married.', 'A1', 28),
  ('00000000-0000-4000-a000-00006599a2d2', 'das Haus', 'البيت', 'house', 'das', 'die Häuser', 'noun', 'Das Haus ist groß.', 'The house is big.', 'A1', 29),
  ('00000000-0000-4000-a000-00006599a2d2', 'die Wohnung', 'الشقة', 'apartment', 'die', 'die Wohnungen', 'noun', 'Meine Wohnung hat drei Zimmer.', 'My apartment has three rooms.', 'A1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006599a2d2', 'Präsens der regelmäßigen Verben (Present Tense) / المضارع للأفعال المنتظمة', 'In German, regular verbs follow a consistent pattern. The infinitive ends in -en. Remove the -en and add the personal endings: ich -e, du -st, er/sie/es -t, wir -en, ihr -t, sie/Sie -en. For most Arabic speakers, this is easier than Arabic verb conjugation because German has fewer forms.', '[{"rule":"ich: stem + e","note":"Ich lerne, ich wohne, ich arbeite"},{"rule":"du: stem + st","note":"Du lernst, du wohnst, du arbeitest"},{"rule":"er/sie/es: stem + t","note":"Er lernt, sie wohnt, es arbeitet"},{"rule":"wir: stem + en","note":"Wir lernen, wir wohnen, wir arbeiten"},{"rule":"ihr: stem + t","note":"Ihr lernt, ihr wohnt, ihr arbeitet"},{"rule":"sie/Sie: stem + en","note":"Sie lernen, Sie wohnen"}]', '[{"german":"Ich lerne Deutsch.","arabic":"أنا أتعلم الألمانية.","english":"I am learning German."},{"german":"Du wohnst in Berlin.","arabic":"أنت تسكن في برلين.","english":"You live in Berlin."},{"german":"Er arbeitet bei Siemens.","arabic":"هو يعمل في سيمنز.","english":"He works at Siemens."}]', '[{"mistake":"Ich lernen Deutsch","correction":"Ich lerne Deutsch","explanation":"After \"ich\" we use the stem + e, not the infinitive."},{"mistake":"Er lerne Deutsch","correction":"Er lernt Deutsch","explanation":"After \"er/sie/es\" we add -t, not -e."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006599a2d2', 'multiple_choice', 'What does "das Brot" mean?', '["The","A","This","That"]', 'The', 'This is a basic vocabulary item.', 1, 1),
  ('00000000-0000-4000-a000-00006599a2d2', 'fill_gap', 'Complete with the correct form.', '["Option 1","Option 2","Option 3"]', 'Option 1', 'Practice grammar in context.', 1, 2),
  ('00000000-0000-4000-a000-00006599a2d2', 'translation', 'Translate: "I learn German."', '["Ich lerne Deutsch.","Ich lerne Englisch.","Ich lerne Spanisch."]', 'Ich lerne Deutsch.', 'Ich = I, lerne = learn/learning, Deutsch = German.', 2, 3),
  ('00000000-0000-4000-a000-00006599a2d2', 'sentence_order', 'Order the sentence.', '[]', 'Ich lerne Deutsch.', 'Subject + verb + object in German.', 2, 4),
  ('00000000-0000-4000-a000-00006599a2d2', 'matching', 'Match the words with their meanings.', '["Match pairs correctly"]', 'Correct pairs', 'Test your vocabulary knowledge.', 2, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-00006599a2d2', 'multiple_choice', 'What is the main topic of this lesson?', '["Quantities & Prices","Sports","Music","Travel"]', 'Quantities & Prices', 1, 1),
  ('00000000-0000-4000-a000-00006599a2d2', 'true_false', 'This lesson teaches vocabulary about Quantities & Prices.', '["True","False"]', 'True', 1, 2),
  ('00000000-0000-4000-a000-00006599a2d2', 'true_false', 'German word order is always the same as English.', '["True","False"]', 'False', 1, 3),
  ('00000000-0000-4000-a000-00006599a2d2', 'multiple_choice', 'How do you say "please" in German?', '["Danke","Bitte","Tschüss","Hallo"]', 'Bitte', 1, 4),
  ('00000000-0000-4000-a000-00006599a2d2', 'multiple_choice', 'Which article is feminine?', '["der","die","das","den"]', 'die', 1, 5),
  ('00000000-0000-4000-a000-00006599a2d2', 'fill_blank', 'Ich ___ (to be) Student.', '["bin","bist","ist","sind"]', 'bin', 1, 6),
  ('00000000-0000-4000-a000-00006599a2d2', 'multiple_choice', 'What is the correct word order?', '["Ich lerne Deutsch","Ich Deutsch lerne","Lerne ich Deutsch","Deutsch ich lerne"]', 'Ich lerne Deutsch', 1, 7),
  ('00000000-0000-4000-a000-00006599a2d2', 'true_false', 'All German nouns are capitalized.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-00006599a2d2', 'multiple_choice', 'How do you say "thank you" in German?', '["Bitte","Danke","Tschüss","Hallo"]', 'Danke', 1, 9),
  ('00000000-0000-4000-a000-00006599a2d2', 'fill_blank', 'Wo ___ du? (to live)', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 1, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-00006599a2d2', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Essen und Einkaufen', 'formal', false, 1),
  ('00000000-0000-4000-a000-00006599a2d2', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Essen und Einkaufen', 'informal', false, 2),
  ('00000000-0000-4000-a000-00006599a2d2', 'Bitte!', 'Please!', 'من فضلك!', 'Used in Essen und Einkaufen', 'neutral', false, 3),
  ('00000000-0000-4000-a000-00006599a2d2', 'Danke!', 'Thanks!', 'شكراً!', 'Used in Essen und Einkaufen', 'neutral', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-00006599a2d2', 'Hallo', 'Hello', 'Greeting', 'expression', 1),
  ('00000000-0000-4000-a000-00006599a2d2', 'Danke', 'Thanks', 'Politeness', 'expression', 2),
  ('00000000-0000-4000-a000-00006599a2d2', 'Bitte', 'Please', 'Politeness', 'expression', 3),
  ('00000000-0000-4000-a000-00006599a2d2', 'Tschüss', 'Bye', 'Farewell', 'expression', 4);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-00006599a2d2', 'Mengen und Preise — Leseübung', 'Heute gehe ich einkaufen. Ich brauche Lebensmittel. Ich gehe zum Supermarkt. Ich kaufe Brot, Milch, Käse und Eier. Auch Obst und Gemüse brauche ich. Die Äpfel sehen gut aus. Ich nehme fünf Äpfel. Der Käse kostet 3 Euro. Alles zusammen kostet 15 Euro. Ich bezahle an der Kasse. Die Verkäuferin ist freundlich. Dann gehe ich nach Hause.', 'Today I go shopping. I need groceries. I go to the supermarket. I buy bread, milk, cheese and eggs. I also need fruit and vegetables. The apples look good. I take five apples. The cheese costs 3 euros. Everything together costs 15 euros. I pay at the checkout. The saleswoman is friendly. Then I go home.', 'اليوم أذهب للتسوق. أحتاج مواد غذائية. أذهب إلى السوبرماركت. أشتري خبزاً وحليباً وجبناً وبيضاً. أحتاج أيضاً فاكهة وخضروات. التفاح يبدو جيداً. آخذ خمس تفاحات. الجبن يكلف 3 يورو. المجموع الكلي 15 يورو. أدفع عند الصندوق. البائعة ودودة. ثم أعود إلى المنزل.', 57, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, duration_seconds, speaker_count, scenario) values
  ('00000000-0000-4000-a000-00006599a2d2', 'Mengen und Preise — Hörverständnis', '[Kellner]: Guten Abend! Haben Sie schon gewählt?

[Gast]: Ja, ich möchte die Pizza Margherita und ein Glas Wasser.

[Kellner]: Sehr gut. Und als Vorspeise?

[Gast]: Einen gemischten Salat, bitte.

[Kellner]: Kommt sofort. Guten Appetit!', '[Kellner]: Good evening! Have you already chosen?

[Gast]: Yes, I would like the Pizza Margherita and a glass of water.

[Kellner]: Very good. And as a starter?

[Gast]: A mixed salad, please.

[Kellner]: Coming right away. Enjoy your meal!', '[Kellner]: مساء الخير! هل اخترتم؟

[Gast]: نعم، أريدبيتزا مارغريتا وكأس ماء.

[Kellner]: جيد جداً. وماذا عن المقبلات؟

[Gast]: سلطة مشكلة من فضلك.

[Kellner]: فوراً. شهية طيبة!', 60, 2, 'Essen und Einkaufen');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-00006599a2d2', 'Speaking: Mengen und Preise', 'Practice talking about Quantities & Prices. Answer questions and have a simple conversation.', 'Quantities & Prices', ARRAY['Use full sentences','Speak clearly','Don''t worry about mistakes']::text[], ARRAY['das Brot','die Milch','der Käse','der Apfel','das Ei']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-00006599a2d2', 'Writing: Mengen und Preise', 'Write a short text about Quantities & Prices. Use at least 5 vocabulary words from this lesson.', ARRAY['Start with a greeting','Use the vocabulary from this lesson','Check your grammar']::text[], ARRAY['das Brot','die Milch','der Käse']::text[], '["Sentence structure","Vocabulary usage"]', 50, 150, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00006599a2d2', 'Mengen und Preise — Roleplay', 'Quantities & Prices', 'Student', 'Teacher', 'Practice conversation about Quantities & Prices', 'Hallo! Lass uns über dieses Thema sprechen.', 'beginner', 1, ARRAY['das Brot','die Milch','der Käse','der Apfel','das Ei','das Obst','das Gemüse','kochen']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00006599a2d2', 'Mengen und Preise — Advanced Roleplay', 'Quantities & Prices', 'Customer', 'Assistant', 'Extended conversation about Quantities & Prices', 'Guten Tag! Wie kann ich Ihnen helfen?', 'beginner', 2, ARRAY['das Brot','die Milch','der Käse','der Apfel','das Ei','das Obst','das Gemüse','kochen']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-00006599a2d2', 'Mengen und Preise — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Mengen und Preise".', 'Creative practice for Quantities & Prices', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-00006599a2d2', 'Homework: Mengen und Preise', 'Complete these tasks to reinforce "Mengen und Preise".', 'mixed', '[{"description":"Review all vocabulary from this lesson"},{"description":"Write 5 sentences using the grammar structure"},{"description":"Practice the dialogue aloud"}]', 35, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-00006599a2d2', 'In this lesson you learned about Quantities & Prices. You practiced vocabulary related to food and grammar structure present_tense.', '["Mastered vocabulary about Quantities & Prices","Applied present_tense correctly","Read and understood a text about Quantities & Prices","Practiced speaking about Quantities & Prices"]', '[{"title":"Mengen und Preise Review","summary":"present_tense — the main grammar focus of this lesson."}]', ARRAY['Quantities & Prices core vocabulary','food key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)','Verb is always in second position']::text[], ARRAY['Practice 15-20 minutes daily','Use new vocabulary in real sentences','Speak out loud to improve pronunciation']::text[]);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006599a2d2', 'Pronunciation: German pronunciation basics', 'German is mostly phonetic. Pronounce each letter.

Common mistake for Arabic speakers: Pronouncing every letter as in English.', '[]', '[{"german":"ja","arabic":"","english":"","phonetic":"/jaː/"},{"german":"nein","arabic":"","english":"","phonetic":"/naɪn/"}]', '[]', 10);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006599a2d2', 'translation', 'Translate to German: "This is a translation exercise."', '[]', 'Das ist eine Übersetzungsübung.', 'Use "das ist" for "this is"', 1, 40);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006599a2d2', 'Culture: Quantities & Prices in German-Speaking Countries', 'Learn how Quantities & Prices is approached in German culture.

تعلم كيف يتم التعامل مع Quantities & Prices في الثقافة الألمانية.', '["Tip: Be direct and polite","Tip: Use formal language with strangers","Tip: Respect punctuality"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006599a2d2', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Common error for Arabic speakers","correction":"Correct version","explanation":"Explanation of the error"}]', 30);

  -- Lesson 6: Test: Essen und Einkaufen (L-A1-04-06)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-00006599a2d3', '00000000-0000-4000-a000-000039b4d361', 'Test: Essen und Einkaufen', 'Test your knowledge of Module 4.', 'Module Test', 'test', '["Understand and use vocabulary related to Module Test","Apply present_tense correctly","Read and comprehend a text about Module Test","Listen and understand a dialogue about Module Test","Speak about Module Test in simple sentences","Write a short text about Module Test"]', 25, 6, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-00006599a2d3', 'das Brot', 'الخبز', 'bread', 'das', 'die Brote', 'noun', 'Ich kaufe ein Brot.', 'I buy a loaf of bread.', 'A1', 1),
  ('00000000-0000-4000-a000-00006599a2d3', 'die Milch', 'الحليب', 'milk', 'die', NULL, 'noun', 'Die Milch ist frisch.', 'The milk is fresh.', 'A1', 2),
  ('00000000-0000-4000-a000-00006599a2d3', 'der Käse', 'الجبن', 'cheese', 'der', NULL, 'noun', 'Der Käse schmeckt gut.', 'The cheese tastes good.', 'A1', 3),
  ('00000000-0000-4000-a000-00006599a2d3', 'der Apfel', 'التفاح', 'apple', 'der', 'die Äpfel', 'noun', 'Der Apfel ist rot.', 'The apple is red.', 'A1', 4),
  ('00000000-0000-4000-a000-00006599a2d3', 'das Ei', 'البيضة', 'egg', 'das', 'die Eier', 'noun', 'Ich esse ein Ei zum Frühstück.', 'I eat an egg for breakfast.', 'A1', 5),
  ('00000000-0000-4000-a000-00006599a2d3', 'das Obst', 'الفاكهة', 'fruit', 'das', NULL, 'noun', 'Obst ist gesund.', 'Fruit is healthy.', 'A1', 6),
  ('00000000-0000-4000-a000-00006599a2d3', 'das Gemüse', 'الخضروات', 'vegetables', 'das', NULL, 'noun', 'Ich kaufe Gemüse auf dem Markt.', 'I buy vegetables at the market.', 'A1', 7),
  ('00000000-0000-4000-a000-00006599a2d3', 'kochen', 'يطبخ', 'to cook', NULL, NULL, 'verb', 'Meine Mutter kocht gut.', 'My mother cooks well.', 'A1', 8),
  ('00000000-0000-4000-a000-00006599a2d3', 'der Fisch', 'السمك', 'fish', 'der', 'die Fische', 'noun', 'Der Fisch ist frisch.', 'The fish is fresh.', 'A1', 9),
  ('00000000-0000-4000-a000-00006599a2d3', 'das Fleisch', 'اللحم', 'meat', 'das', NULL, 'noun', 'Ich esse nicht viel Fleisch.', 'I do not eat much meat.', 'A1', 10),
  ('00000000-0000-4000-a000-00006599a2d3', 'Hallo', 'مرحباً', 'hello', NULL, NULL, 'interjection', 'Hallo, wie geht es dir?', 'Hello, how are you?', 'A1', 11),
  ('00000000-0000-4000-a000-00006599a2d3', 'Guten Morgen', 'صباح الخير', 'good morning', NULL, NULL, 'phrase', 'Guten Morgen, Herr Müller.', 'Good morning, Mr. Müller.', 'A1', 12),
  ('00000000-0000-4000-a000-00006599a2d3', 'Guten Tag', 'نهارك سعيد', 'good day', NULL, NULL, 'phrase', 'Guten Tag, Frau Schmidt.', 'Good day, Mrs. Schmidt.', 'A1', 13),
  ('00000000-0000-4000-a000-00006599a2d3', 'Tschüss', 'مع السلامة', 'bye', NULL, NULL, 'interjection', 'Tschüss, bis morgen!', 'Bye, see you tomorrow!', 'A1', 14),
  ('00000000-0000-4000-a000-00006599a2d3', 'der Name', 'الاسم', 'name', 'der', 'die Namen', 'noun', 'Mein Name ist Anna.', 'My name is Anna.', 'A1', 15),
  ('00000000-0000-4000-a000-00006599a2d3', 'wie', 'كيف', 'how', NULL, NULL, 'adverb', 'Wie heißt du?', 'What is your name?', 'A1', 16),
  ('00000000-0000-4000-a000-00006599a2d3', 'freuen', 'يسر', 'to be pleased', NULL, NULL, 'verb', 'Ich freue mich, dich kennenzulernen.', 'I am pleased to meet you.', 'A1', 17),
  ('00000000-0000-4000-a000-00006599a2d3', 'Willkommen', 'أهلاً وسهلاً', 'welcome', NULL, NULL, 'interjection', 'Willkommen in Deutschland!', 'Welcome to Germany!', 'A1', 18),
  ('00000000-0000-4000-a000-00006599a2d3', 'die Familie', 'العائلة', 'family', 'die', 'die Familien', 'noun', 'Meine Familie ist groß.', 'My family is big.', 'A1', 19),
  ('00000000-0000-4000-a000-00006599a2d3', 'der Vater', 'الأب', 'father', 'der', 'die Väter', 'noun', 'Mein Vater ist Ingenieur.', 'My father is an engineer.', 'A1', 20),
  ('00000000-0000-4000-a000-00006599a2d3', 'die Mutter', 'الأم', 'mother', 'die', 'die Mütter', 'noun', 'Meine Mutter kocht gut.', 'My mother cooks well.', 'A1', 21),
  ('00000000-0000-4000-a000-00006599a2d3', 'der Bruder', 'الأخ', 'brother', 'der', 'die Brüder', 'noun', 'Mein Bruder ist 15 Jahre alt.', 'My brother is 15 years old.', 'A1', 22),
  ('00000000-0000-4000-a000-00006599a2d3', 'die Schwester', 'الأخت', 'sister', 'die', 'die Schwestern', 'noun', 'Meine Schwester studiert Medizin.', 'My sister studies medicine.', 'A1', 23),
  ('00000000-0000-4000-a000-00006599a2d3', 'die Geschwister', 'الإخوة', 'siblings', 'die', NULL, 'noun', 'Hast du Geschwister?', 'Do you have siblings?', 'A1', 24),
  ('00000000-0000-4000-a000-00006599a2d3', 'der Sohn', 'الابن', 'son', 'der', 'die Söhne', 'noun', 'Wir haben einen Sohn.', 'We have a son.', 'A1', 25),
  ('00000000-0000-4000-a000-00006599a2d3', 'die Tochter', 'الابنة', 'daughter', 'die', 'die Töchter', 'noun', 'Meine Tochter geht zur Schule.', 'My daughter goes to school.', 'A1', 26),
  ('00000000-0000-4000-a000-00006599a2d3', 'die Großeltern', 'الأجداد', 'grandparents', 'die', NULL, 'noun', 'Meine Großeltern wohnen auf dem Land.', 'My grandparents live in the countryside.', 'A1', 27),
  ('00000000-0000-4000-a000-00006599a2d3', 'verheiratet', 'متزوج', 'married', NULL, NULL, 'adjective', 'Meine Eltern sind verheiratet.', 'My parents are married.', 'A1', 28),
  ('00000000-0000-4000-a000-00006599a2d3', 'das Haus', 'البيت', 'house', 'das', 'die Häuser', 'noun', 'Das Haus ist groß.', 'The house is big.', 'A1', 29),
  ('00000000-0000-4000-a000-00006599a2d3', 'die Wohnung', 'الشقة', 'apartment', 'die', 'die Wohnungen', 'noun', 'Meine Wohnung hat drei Zimmer.', 'My apartment has three rooms.', 'A1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006599a2d3', 'Präsens der regelmäßigen Verben (Present Tense) / المضارع للأفعال المنتظمة', 'In German, regular verbs follow a consistent pattern. The infinitive ends in -en. Remove the -en and add the personal endings: ich -e, du -st, er/sie/es -t, wir -en, ihr -t, sie/Sie -en. For most Arabic speakers, this is easier than Arabic verb conjugation because German has fewer forms.', '[{"rule":"ich: stem + e","note":"Ich lerne, ich wohne, ich arbeite"},{"rule":"du: stem + st","note":"Du lernst, du wohnst, du arbeitest"},{"rule":"er/sie/es: stem + t","note":"Er lernt, sie wohnt, es arbeitet"},{"rule":"wir: stem + en","note":"Wir lernen, wir wohnen, wir arbeiten"},{"rule":"ihr: stem + t","note":"Ihr lernt, ihr wohnt, ihr arbeitet"},{"rule":"sie/Sie: stem + en","note":"Sie lernen, Sie wohnen"}]', '[{"german":"Ich lerne Deutsch.","arabic":"أنا أتعلم الألمانية.","english":"I am learning German."},{"german":"Du wohnst in Berlin.","arabic":"أنت تسكن في برلين.","english":"You live in Berlin."},{"german":"Er arbeitet bei Siemens.","arabic":"هو يعمل في سيمنز.","english":"He works at Siemens."}]', '[{"mistake":"Ich lernen Deutsch","correction":"Ich lerne Deutsch","explanation":"After \"ich\" we use the stem + e, not the infinitive."},{"mistake":"Er lerne Deutsch","correction":"Er lernt Deutsch","explanation":"After \"er/sie/es\" we add -t, not -e."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006599a2d3', 'multiple_choice', 'What does "das Brot" mean?', '["The","A","This","That"]', 'The', 'This is a basic vocabulary item.', 1, 1),
  ('00000000-0000-4000-a000-00006599a2d3', 'fill_gap', 'Complete with the correct form.', '["Option 1","Option 2","Option 3"]', 'Option 1', 'Practice grammar in context.', 1, 2),
  ('00000000-0000-4000-a000-00006599a2d3', 'translation', 'Translate: "I learn German."', '["Ich lerne Deutsch.","Ich lerne Englisch.","Ich lerne Spanisch."]', 'Ich lerne Deutsch.', 'Ich = I, lerne = learn/learning, Deutsch = German.', 2, 3),
  ('00000000-0000-4000-a000-00006599a2d3', 'sentence_order', 'Order the sentence.', '[]', 'Ich lerne Deutsch.', 'Subject + verb + object in German.', 2, 4),
  ('00000000-0000-4000-a000-00006599a2d3', 'matching', 'Match the words with their meanings.', '["Match pairs correctly"]', 'Correct pairs', 'Test your vocabulary knowledge.', 2, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-00006599a2d3', 'multiple_choice', 'What is the main topic of this lesson?', '["Module Test","Sports","Music","Travel"]', 'Module Test', 1, 1),
  ('00000000-0000-4000-a000-00006599a2d3', 'true_false', 'This lesson teaches vocabulary about Module Test.', '["True","False"]', 'True', 1, 2),
  ('00000000-0000-4000-a000-00006599a2d3', 'true_false', 'German word order is always the same as English.', '["True","False"]', 'False', 1, 3),
  ('00000000-0000-4000-a000-00006599a2d3', 'multiple_choice', 'How do you say "please" in German?', '["Danke","Bitte","Tschüss","Hallo"]', 'Bitte', 1, 4),
  ('00000000-0000-4000-a000-00006599a2d3', 'multiple_choice', 'Which article is feminine?', '["der","die","das","den"]', 'die', 1, 5),
  ('00000000-0000-4000-a000-00006599a2d3', 'fill_blank', 'Ich ___ (to be) Student.', '["bin","bist","ist","sind"]', 'bin', 1, 6),
  ('00000000-0000-4000-a000-00006599a2d3', 'multiple_choice', 'What is the correct word order?', '["Ich lerne Deutsch","Ich Deutsch lerne","Lerne ich Deutsch","Deutsch ich lerne"]', 'Ich lerne Deutsch', 1, 7),
  ('00000000-0000-4000-a000-00006599a2d3', 'true_false', 'All German nouns are capitalized.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-00006599a2d3', 'multiple_choice', 'How do you say "thank you" in German?', '["Bitte","Danke","Tschüss","Hallo"]', 'Danke', 1, 9),
  ('00000000-0000-4000-a000-00006599a2d3', 'fill_blank', 'Wo ___ du? (to live)', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 1, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-00006599a2d3', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Essen und Einkaufen', 'formal', false, 1),
  ('00000000-0000-4000-a000-00006599a2d3', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Essen und Einkaufen', 'informal', false, 2),
  ('00000000-0000-4000-a000-00006599a2d3', 'Bitte!', 'Please!', 'من فضلك!', 'Used in Essen und Einkaufen', 'neutral', false, 3),
  ('00000000-0000-4000-a000-00006599a2d3', 'Danke!', 'Thanks!', 'شكراً!', 'Used in Essen und Einkaufen', 'neutral', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-00006599a2d3', 'Hallo', 'Hello', 'Greeting', 'expression', 1),
  ('00000000-0000-4000-a000-00006599a2d3', 'Danke', 'Thanks', 'Politeness', 'expression', 2),
  ('00000000-0000-4000-a000-00006599a2d3', 'Bitte', 'Please', 'Politeness', 'expression', 3),
  ('00000000-0000-4000-a000-00006599a2d3', 'Tschüss', 'Bye', 'Farewell', 'expression', 4);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-00006599a2d3', 'Test: Essen und Einkaufen — Leseübung', 'Heute gehe ich einkaufen. Ich brauche Lebensmittel. Ich gehe zum Supermarkt. Ich kaufe Brot, Milch, Käse und Eier. Auch Obst und Gemüse brauche ich. Die Äpfel sehen gut aus. Ich nehme fünf Äpfel. Der Käse kostet 3 Euro. Alles zusammen kostet 15 Euro. Ich bezahle an der Kasse. Die Verkäuferin ist freundlich. Dann gehe ich nach Hause.', 'Today I go shopping. I need groceries. I go to the supermarket. I buy bread, milk, cheese and eggs. I also need fruit and vegetables. The apples look good. I take five apples. The cheese costs 3 euros. Everything together costs 15 euros. I pay at the checkout. The saleswoman is friendly. Then I go home.', 'اليوم أذهب للتسوق. أحتاج مواد غذائية. أذهب إلى السوبرماركت. أشتري خبزاً وحليباً وجبناً وبيضاً. أحتاج أيضاً فاكهة وخضروات. التفاح يبدو جيداً. آخذ خمس تفاحات. الجبن يكلف 3 يورو. المجموع الكلي 15 يورو. أدفع عند الصندوق. البائعة ودودة. ثم أعود إلى المنزل.', 57, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, duration_seconds, speaker_count, scenario) values
  ('00000000-0000-4000-a000-00006599a2d3', 'Test: Essen und Einkaufen — Hörverständnis', '[Kellner]: Guten Abend! Haben Sie schon gewählt?

[Gast]: Ja, ich möchte die Pizza Margherita und ein Glas Wasser.

[Kellner]: Sehr gut. Und als Vorspeise?

[Gast]: Einen gemischten Salat, bitte.

[Kellner]: Kommt sofort. Guten Appetit!', '[Kellner]: Good evening! Have you already chosen?

[Gast]: Yes, I would like the Pizza Margherita and a glass of water.

[Kellner]: Very good. And as a starter?

[Gast]: A mixed salad, please.

[Kellner]: Coming right away. Enjoy your meal!', '[Kellner]: مساء الخير! هل اخترتم؟

[Gast]: نعم، أريدبيتزا مارغريتا وكأس ماء.

[Kellner]: جيد جداً. وماذا عن المقبلات؟

[Gast]: سلطة مشكلة من فضلك.

[Kellner]: فوراً. شهية طيبة!', 60, 2, 'Essen und Einkaufen');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-00006599a2d3', 'Speaking: Test: Essen und Einkaufen', 'Practice talking about Module Test. Answer questions and have a simple conversation.', 'Module Test', ARRAY['Use full sentences','Speak clearly','Don''t worry about mistakes']::text[], ARRAY['das Brot','die Milch','der Käse','der Apfel','das Ei']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-00006599a2d3', 'Writing: Test: Essen und Einkaufen', 'Write a short text about Module Test. Use at least 5 vocabulary words from this lesson.', ARRAY['Start with a greeting','Use the vocabulary from this lesson','Check your grammar']::text[], ARRAY['das Brot','die Milch','der Käse']::text[], '["Sentence structure","Vocabulary usage"]', 50, 150, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00006599a2d3', 'Test: Essen und Einkaufen — Roleplay', 'Module Test', 'Student', 'Teacher', 'Practice conversation about Module Test', 'Hallo! Lass uns über dieses Thema sprechen.', 'beginner', 1, ARRAY['das Brot','die Milch','der Käse','der Apfel','das Ei','das Obst','das Gemüse','kochen']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00006599a2d3', 'Test: Essen und Einkaufen — Advanced Roleplay', 'Module Test', 'Customer', 'Assistant', 'Extended conversation about Module Test', 'Guten Tag! Wie kann ich Ihnen helfen?', 'beginner', 2, ARRAY['das Brot','die Milch','der Käse','der Apfel','das Ei','das Obst','das Gemüse','kochen']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-00006599a2d3', 'Test: Essen und Einkaufen — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Test: Essen und Einkaufen".', 'Creative practice for Module Test', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-00006599a2d3', 'Homework: Test: Essen und Einkaufen', 'Complete these tasks to reinforce "Test: Essen und Einkaufen".', 'mixed', '[{"description":"Review all vocabulary from this lesson"},{"description":"Write 5 sentences using the grammar structure"},{"description":"Practice the dialogue aloud"}]', 35, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-00006599a2d3', 'In this lesson you learned about Module Test. You practiced vocabulary related to food and grammar structure present_tense.', '["Mastered vocabulary about Module Test","Applied present_tense correctly","Read and understood a text about Module Test","Practiced speaking about Module Test"]', '[{"title":"Test: Essen und Einkaufen Review","summary":"present_tense — the main grammar focus of this lesson."}]', ARRAY['Module Test core vocabulary','food key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)','Verb is always in second position']::text[], ARRAY['Practice 15-20 minutes daily','Use new vocabulary in real sentences','Speak out loud to improve pronunciation']::text[]);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006599a2d3', 'Pronunciation: German pronunciation basics', 'German is mostly phonetic. Pronounce each letter.

Common mistake for Arabic speakers: Pronouncing every letter as in English.', '[]', '[{"german":"ja","arabic":"","english":"","phonetic":"/jaː/"},{"german":"nein","arabic":"","english":"","phonetic":"/naɪn/"}]', '[]', 10);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006599a2d3', 'translation', 'Translate to German: "This is a translation exercise."', '[]', 'Das ist eine Übersetzungsübung.', 'Use "das ist" for "this is"', 1, 40);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006599a2d3', 'Culture: Module Test in German-Speaking Countries', 'Learn how Module Test is approached in German culture.

تعلم كيف يتم التعامل مع Module Test في الثقافة الألمانية.', '["Tip: Be direct and polite","Tip: Use formal language with strangers","Tip: Respect punctuality"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006599a2d3', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Common error for Arabic speakers","correction":"Correct version","explanation":"Explanation of the error"}]', 30);

  -- Module 5: Arbeit und Berufe
  insert into public.course_modules (id, level_id, title, description, objectives, order_index, estimated_hours, is_published)
  values ('00000000-0000-4000-a000-000039b4d362', 'A1', 'Arbeit und Berufe', 'Learn vocabulary for jobs, workplaces, and basic professional communication.', '["Name common professions","Talk about your job","Use the verb \"sein\" for professions","Use the verb \"haben\" for possession","Use numbers for phone and email"]', 5, 4, true)
  on conflict (id) do nothing;

  -- Lesson 1: Berufe (L-A1-05-01)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-0000659a172d', '00000000-0000-4000-a000-000039b4d362', 'Berufe', 'Learn common job titles and profession vocabulary.', 'Professions', 'vocabulary', '["Understand and use vocabulary related to Professions","Apply sein_haben correctly","Read and comprehend a text about Professions","Listen and understand a dialogue about Professions","Speak about Professions in simple sentences","Write a short text about Professions"]', 30, 1, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-0000659a172d', 'der Beruf', 'المهنة', 'profession', 'der', 'die Berufe', 'noun', 'Was ist dein Beruf?', 'What is your profession?', 'A1', 1),
  ('00000000-0000-4000-a000-0000659a172d', 'die Firma', 'الشركة', 'company', 'die', 'die Firmen', 'noun', 'Die Firma ist in Berlin.', 'The company is in Berlin.', 'A1', 2),
  ('00000000-0000-4000-a000-0000659a172d', 'der Kollege', 'الزميل', 'colleague', 'der', 'die Kollegen', 'noun', 'Mein Kollege hilft mir.', 'My colleague helps me.', 'A1', 3),
  ('00000000-0000-4000-a000-0000659a172d', 'das Büro', 'المكتب', 'office', 'das', 'die Büros', 'noun', 'Das Büro ist im dritten Stock.', 'The office is on the third floor.', 'A1', 4),
  ('00000000-0000-4000-a000-0000659a172d', 'die Besprechung', 'الاجتماع', 'meeting', 'die', 'die Besprechungen', 'noun', 'Wir haben eine Besprechung.', 'We have a meeting.', 'B1', 5),
  ('00000000-0000-4000-a000-0000659a172d', 'der Chef', 'المدير', 'boss', 'der', 'die Chefs', 'noun', 'Mein Chef ist freundlich.', 'My boss is friendly.', 'A1', 6),
  ('00000000-0000-4000-a000-0000659a172d', 'das Gehalt', 'الراتب', 'salary', 'das', 'die Gehälter', 'noun', 'Das Gehalt ist gut.', 'The salary is good.', 'B1', 7),
  ('00000000-0000-4000-a000-0000659a172d', 'die Stelle', 'الوظيفة', 'position', 'die', 'die Stellen', 'noun', 'Ich suche eine neue Stelle.', 'I am looking for a new position.', 'B1', 8),
  ('00000000-0000-4000-a000-0000659a172d', 'Hallo', 'مرحباً', 'hello', NULL, NULL, 'interjection', 'Hallo, wie geht es dir?', 'Hello, how are you?', 'A1', 9),
  ('00000000-0000-4000-a000-0000659a172d', 'Guten Morgen', 'صباح الخير', 'good morning', NULL, NULL, 'phrase', 'Guten Morgen, Herr Müller.', 'Good morning, Mr. Müller.', 'A1', 10),
  ('00000000-0000-4000-a000-0000659a172d', 'Guten Tag', 'نهارك سعيد', 'good day', NULL, NULL, 'phrase', 'Guten Tag, Frau Schmidt.', 'Good day, Mrs. Schmidt.', 'A1', 11),
  ('00000000-0000-4000-a000-0000659a172d', 'Tschüss', 'مع السلامة', 'bye', NULL, NULL, 'interjection', 'Tschüss, bis morgen!', 'Bye, see you tomorrow!', 'A1', 12),
  ('00000000-0000-4000-a000-0000659a172d', 'der Name', 'الاسم', 'name', 'der', 'die Namen', 'noun', 'Mein Name ist Anna.', 'My name is Anna.', 'A1', 13),
  ('00000000-0000-4000-a000-0000659a172d', 'wie', 'كيف', 'how', NULL, NULL, 'adverb', 'Wie heißt du?', 'What is your name?', 'A1', 14),
  ('00000000-0000-4000-a000-0000659a172d', 'freuen', 'يسر', 'to be pleased', NULL, NULL, 'verb', 'Ich freue mich, dich kennenzulernen.', 'I am pleased to meet you.', 'A1', 15),
  ('00000000-0000-4000-a000-0000659a172d', 'Willkommen', 'أهلاً وسهلاً', 'welcome', NULL, NULL, 'interjection', 'Willkommen in Deutschland!', 'Welcome to Germany!', 'A1', 16),
  ('00000000-0000-4000-a000-0000659a172d', 'die Familie', 'العائلة', 'family', 'die', 'die Familien', 'noun', 'Meine Familie ist groß.', 'My family is big.', 'A1', 17),
  ('00000000-0000-4000-a000-0000659a172d', 'der Vater', 'الأب', 'father', 'der', 'die Väter', 'noun', 'Mein Vater ist Ingenieur.', 'My father is an engineer.', 'A1', 18),
  ('00000000-0000-4000-a000-0000659a172d', 'die Mutter', 'الأم', 'mother', 'die', 'die Mütter', 'noun', 'Meine Mutter kocht gut.', 'My mother cooks well.', 'A1', 19),
  ('00000000-0000-4000-a000-0000659a172d', 'der Bruder', 'الأخ', 'brother', 'der', 'die Brüder', 'noun', 'Mein Bruder ist 15 Jahre alt.', 'My brother is 15 years old.', 'A1', 20),
  ('00000000-0000-4000-a000-0000659a172d', 'die Schwester', 'الأخت', 'sister', 'die', 'die Schwestern', 'noun', 'Meine Schwester studiert Medizin.', 'My sister studies medicine.', 'A1', 21),
  ('00000000-0000-4000-a000-0000659a172d', 'die Geschwister', 'الإخوة', 'siblings', 'die', NULL, 'noun', 'Hast du Geschwister?', 'Do you have siblings?', 'A1', 22),
  ('00000000-0000-4000-a000-0000659a172d', 'der Sohn', 'الابن', 'son', 'der', 'die Söhne', 'noun', 'Wir haben einen Sohn.', 'We have a son.', 'A1', 23),
  ('00000000-0000-4000-a000-0000659a172d', 'die Tochter', 'الابنة', 'daughter', 'die', 'die Töchter', 'noun', 'Meine Tochter geht zur Schule.', 'My daughter goes to school.', 'A1', 24),
  ('00000000-0000-4000-a000-0000659a172d', 'die Großeltern', 'الأجداد', 'grandparents', 'die', NULL, 'noun', 'Meine Großeltern wohnen auf dem Land.', 'My grandparents live in the countryside.', 'A1', 25),
  ('00000000-0000-4000-a000-0000659a172d', 'verheiratet', 'متزوج', 'married', NULL, NULL, 'adjective', 'Meine Eltern sind verheiratet.', 'My parents are married.', 'A1', 26),
  ('00000000-0000-4000-a000-0000659a172d', 'das Brot', 'الخبز', 'bread', 'das', 'die Brote', 'noun', 'Ich kaufe ein Brot.', 'I buy a loaf of bread.', 'A1', 27),
  ('00000000-0000-4000-a000-0000659a172d', 'die Milch', 'الحليب', 'milk', 'die', NULL, 'noun', 'Die Milch ist frisch.', 'The milk is fresh.', 'A1', 28),
  ('00000000-0000-4000-a000-0000659a172d', 'der Käse', 'الجبن', 'cheese', 'der', NULL, 'noun', 'Der Käse schmeckt gut.', 'The cheese tastes good.', 'A1', 29),
  ('00000000-0000-4000-a000-0000659a172d', 'der Apfel', 'التفاح', 'apple', 'der', 'die Äpfel', 'noun', 'Der Apfel ist rot.', 'The apple is red.', 'A1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000659a172d', 'Die Verben "sein" und "haben" (To be and To have) / فعلي "يكون" و "يملك"', '"Sein" (to be) and "haben" (to have) are the two most important irregular verbs in German. They are used as main verbs and also as helping verbs for the perfect tense. You must memorize their forms because they are completely irregular.', '[{"rule":"sein: ich bin, du bist, er/sie/es ist, wir sind, ihr seid, sie/Sie sind","note":"Completely irregular - memorize them!"},{"rule":"haben: ich habe, du hast, er/sie/es hat, wir haben, ihr habt, sie/Sie haben","note":"Stem changes in du and er/sie/es"}]', '[{"german":"Ich bin Student.","arabic":"أنا طالب.","english":"I am a student."},{"german":"Du hast einen Bruder.","arabic":"لديك أخ.","english":"You have a brother."},{"german":"Er ist Arzt.","arabic":"هو طبيب.","english":"He is a doctor."},{"german":"Wir haben Hunger.","arabic":"نحن جائعون.","english":"We are hungry."}]', '[{"mistake":"Ich bin haben","correction":"Ich habe","explanation":"Don''t mix sein and haben. \"Ich habe\" = I have."},{"mistake":"Er hat 20 Jahre","correction":"Er ist 20 Jahre alt","explanation":"For age, use \"sein\" not \"haben\"."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000659a172d', 'multiple_choice', 'What does "der Beruf" mean?', '["The","A","This","That"]', 'The', 'This is a basic vocabulary item.', 1, 1),
  ('00000000-0000-4000-a000-0000659a172d', 'fill_gap', 'Complete with the correct form.', '["Option 1","Option 2","Option 3"]', 'Option 1', 'Practice grammar in context.', 1, 2),
  ('00000000-0000-4000-a000-0000659a172d', 'translation', 'Translate: "I learn German."', '["Ich lerne Deutsch.","Ich lerne Englisch.","Ich lerne Spanisch."]', 'Ich lerne Deutsch.', 'Ich = I, lerne = learn/learning, Deutsch = German.', 2, 3),
  ('00000000-0000-4000-a000-0000659a172d', 'sentence_order', 'Order the sentence.', '[]', 'Ich lerne Deutsch.', 'Subject + verb + object in German.', 2, 4),
  ('00000000-0000-4000-a000-0000659a172d', 'matching', 'Match the words with their meanings.', '["Match pairs correctly"]', 'Correct pairs', 'Test your vocabulary knowledge.', 2, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-0000659a172d', 'multiple_choice', 'What is the main topic of this lesson?', '["Professions","Sports","Music","Travel"]', 'Professions', 1, 1),
  ('00000000-0000-4000-a000-0000659a172d', 'true_false', 'This lesson teaches vocabulary about Professions.', '["True","False"]', 'True', 1, 2),
  ('00000000-0000-4000-a000-0000659a172d', 'true_false', 'German word order is always the same as English.', '["True","False"]', 'False', 1, 3),
  ('00000000-0000-4000-a000-0000659a172d', 'multiple_choice', 'How do you say "please" in German?', '["Danke","Bitte","Tschüss","Hallo"]', 'Bitte', 1, 4),
  ('00000000-0000-4000-a000-0000659a172d', 'multiple_choice', 'Which article is feminine?', '["der","die","das","den"]', 'die', 1, 5),
  ('00000000-0000-4000-a000-0000659a172d', 'fill_blank', 'Ich ___ (to be) Student.', '["bin","bist","ist","sind"]', 'bin', 1, 6),
  ('00000000-0000-4000-a000-0000659a172d', 'multiple_choice', 'What is the correct word order?', '["Ich lerne Deutsch","Ich Deutsch lerne","Lerne ich Deutsch","Deutsch ich lerne"]', 'Ich lerne Deutsch', 1, 7),
  ('00000000-0000-4000-a000-0000659a172d', 'true_false', 'All German nouns are capitalized.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-0000659a172d', 'multiple_choice', 'How do you say "thank you" in German?', '["Bitte","Danke","Tschüss","Hallo"]', 'Danke', 1, 9),
  ('00000000-0000-4000-a000-0000659a172d', 'fill_blank', 'Wo ___ du? (to live)', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 1, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-0000659a172d', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Arbeit und Berufe', 'formal', false, 1),
  ('00000000-0000-4000-a000-0000659a172d', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Arbeit und Berufe', 'informal', false, 2),
  ('00000000-0000-4000-a000-0000659a172d', 'Bitte!', 'Please!', 'من فضلك!', 'Used in Arbeit und Berufe', 'neutral', false, 3),
  ('00000000-0000-4000-a000-0000659a172d', 'Danke!', 'Thanks!', 'شكراً!', 'Used in Arbeit und Berufe', 'neutral', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-0000659a172d', 'Hallo', 'Hello', 'Greeting', 'expression', 1),
  ('00000000-0000-4000-a000-0000659a172d', 'Danke', 'Thanks', 'Politeness', 'expression', 2),
  ('00000000-0000-4000-a000-0000659a172d', 'Bitte', 'Please', 'Politeness', 'expression', 3),
  ('00000000-0000-4000-a000-0000659a172d', 'Tschüss', 'Bye', 'Farewell', 'expression', 4);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-0000659a172d', 'Berufe — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, duration_seconds, speaker_count, scenario) values
  ('00000000-0000-4000-a000-0000659a172d', 'Berufe — Hörverständnis', '[Chef]: Guten Morgen, Herr Schmidt. Haben Sie die Präsentation fertig?

[Angestellter]: Ja, ich habe sie gestern Abend fertig gemacht.

[Chef]: Ausgezeichnet. Wir besprechen die Details um 10 Uhr im Besprechungsraum.

[Angestellter]: Ich bin vorbereitet. Soll ich den Beamer mitbringen?

[Chef]: Ja, gute Idee. Und vergessen Sie die Unterlagen nicht.', '[Chef]: Good morning, Mr. Schmidt. Have you finished the presentation?

[Angestellter]: Yes, I finished it last evening.

[Chef]: Excellent. We will discuss the details at 10 o''clock in the meeting room.

[Angestellter]: I am prepared. Should I bring the projector?

[Chef]: Yes, good idea. And don''t forget the documents.', '[Chef]: صباح الخير سيد شميت. هل انتهيتم من العرض التقديمي؟

[Angestellter]: نعم، أنهيته البارحة مساءً.

[Chef]: ممتاز. سنناقش التفاصيل في الساعة 10 في غرفة الاجتماعات.

[Angestellter]: أنا مستعد. هل أحضر جهاز العرض؟

[Chef]: نعم، فكرة جيدة. ولا تنسوا المستندات.', 60, 2, 'Arbeit und Berufe');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-0000659a172d', 'Speaking: Berufe', 'Practice talking about Professions. Answer questions and have a simple conversation.', 'Professions', ARRAY['Use full sentences','Speak clearly','Don''t worry about mistakes']::text[], ARRAY['der Beruf','die Firma','der Kollege','das Büro','die Besprechung']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-0000659a172d', 'Writing: Berufe', 'Write a short text about Professions. Use at least 5 vocabulary words from this lesson.', ARRAY['Start with a greeting','Use the vocabulary from this lesson','Check your grammar']::text[], ARRAY['der Beruf','die Firma','der Kollege']::text[], '["Sentence structure","Vocabulary usage"]', 50, 150, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000659a172d', 'Berufe — Roleplay', 'Professions', 'Student', 'Teacher', 'Practice conversation about Professions', 'Hallo! Lass uns über dieses Thema sprechen.', 'beginner', 1, ARRAY['der Beruf','die Firma','der Kollege','das Büro','die Besprechung','der Chef','das Gehalt','die Stelle']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000659a172d', 'Berufe — Advanced Roleplay', 'Professions', 'Customer', 'Assistant', 'Extended conversation about Professions', 'Guten Tag! Wie kann ich Ihnen helfen?', 'beginner', 2, ARRAY['der Beruf','die Firma','der Kollege','das Büro','die Besprechung','der Chef','das Gehalt','die Stelle']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-0000659a172d', 'Berufe — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Berufe".', 'Creative practice for Professions', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-0000659a172d', 'Homework: Berufe', 'Complete these tasks to reinforce "Berufe".', 'mixed', '[{"description":"Review all vocabulary from this lesson"},{"description":"Write 5 sentences using the grammar structure"},{"description":"Practice the dialogue aloud"}]', 35, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-0000659a172d', 'In this lesson you learned about Professions. You practiced vocabulary related to work and grammar structure sein_haben.', '["Mastered vocabulary about Professions","Applied sein_haben correctly","Read and understood a text about Professions","Practiced speaking about Professions"]', '[{"title":"Berufe Review","summary":"sein_haben — the main grammar focus of this lesson."}]', ARRAY['Professions core vocabulary','work key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)','Verb is always in second position']::text[], ARRAY['Practice 15-20 minutes daily','Use new vocabulary in real sentences','Speak out loud to improve pronunciation']::text[]);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000659a172d', 'Pronunciation: German pronunciation basics', 'German is mostly phonetic. Pronounce each letter.

Common mistake for Arabic speakers: Pronouncing every letter as in English.', '[]', '[{"german":"ja","arabic":"","english":"","phonetic":"/jaː/"},{"german":"nein","arabic":"","english":"","phonetic":"/naɪn/"}]', '[]', 10);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000659a172d', 'translation', 'Translate to German: "This is a translation exercise."', '[]', 'Das ist eine Übersetzungsübung.', 'Use "das ist" for "this is"', 1, 40);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000659a172d', 'Culture: Professions in German-Speaking Countries', 'Learn how Professions is approached in German culture.

تعلم كيف يتم التعامل مع Professions في الثقافة الألمانية.', '["Tip: Be direct and polite","Tip: Use formal language with strangers","Tip: Respect punctuality"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000659a172d', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Common error for Arabic speakers","correction":"Correct version","explanation":"Explanation of the error"}]', 30);

  -- Lesson 2: Am Arbeitsplatz (L-A1-05-02)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-0000659a172e', '00000000-0000-4000-a000-000039b4d362', 'Am Arbeitsplatz', 'Learn workplace and office vocabulary.', 'Workplace', 'vocabulary', '["Understand and use vocabulary related to Workplace","Apply present_tense correctly","Read and comprehend a text about Workplace","Listen and understand a dialogue about Workplace","Speak about Workplace in simple sentences","Write a short text about Workplace"]', 30, 2, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-0000659a172e', 'der Beruf', 'المهنة', 'profession', 'der', 'die Berufe', 'noun', 'Was ist dein Beruf?', 'What is your profession?', 'A1', 1),
  ('00000000-0000-4000-a000-0000659a172e', 'die Firma', 'الشركة', 'company', 'die', 'die Firmen', 'noun', 'Die Firma ist in Berlin.', 'The company is in Berlin.', 'A1', 2),
  ('00000000-0000-4000-a000-0000659a172e', 'der Kollege', 'الزميل', 'colleague', 'der', 'die Kollegen', 'noun', 'Mein Kollege hilft mir.', 'My colleague helps me.', 'A1', 3),
  ('00000000-0000-4000-a000-0000659a172e', 'das Büro', 'المكتب', 'office', 'das', 'die Büros', 'noun', 'Das Büro ist im dritten Stock.', 'The office is on the third floor.', 'A1', 4),
  ('00000000-0000-4000-a000-0000659a172e', 'die Besprechung', 'الاجتماع', 'meeting', 'die', 'die Besprechungen', 'noun', 'Wir haben eine Besprechung.', 'We have a meeting.', 'B1', 5),
  ('00000000-0000-4000-a000-0000659a172e', 'der Chef', 'المدير', 'boss', 'der', 'die Chefs', 'noun', 'Mein Chef ist freundlich.', 'My boss is friendly.', 'A1', 6),
  ('00000000-0000-4000-a000-0000659a172e', 'das Gehalt', 'الراتب', 'salary', 'das', 'die Gehälter', 'noun', 'Das Gehalt ist gut.', 'The salary is good.', 'B1', 7),
  ('00000000-0000-4000-a000-0000659a172e', 'die Stelle', 'الوظيفة', 'position', 'die', 'die Stellen', 'noun', 'Ich suche eine neue Stelle.', 'I am looking for a new position.', 'B1', 8),
  ('00000000-0000-4000-a000-0000659a172e', 'Hallo', 'مرحباً', 'hello', NULL, NULL, 'interjection', 'Hallo, wie geht es dir?', 'Hello, how are you?', 'A1', 9),
  ('00000000-0000-4000-a000-0000659a172e', 'Guten Morgen', 'صباح الخير', 'good morning', NULL, NULL, 'phrase', 'Guten Morgen, Herr Müller.', 'Good morning, Mr. Müller.', 'A1', 10),
  ('00000000-0000-4000-a000-0000659a172e', 'Guten Tag', 'نهارك سعيد', 'good day', NULL, NULL, 'phrase', 'Guten Tag, Frau Schmidt.', 'Good day, Mrs. Schmidt.', 'A1', 11),
  ('00000000-0000-4000-a000-0000659a172e', 'Tschüss', 'مع السلامة', 'bye', NULL, NULL, 'interjection', 'Tschüss, bis morgen!', 'Bye, see you tomorrow!', 'A1', 12),
  ('00000000-0000-4000-a000-0000659a172e', 'der Name', 'الاسم', 'name', 'der', 'die Namen', 'noun', 'Mein Name ist Anna.', 'My name is Anna.', 'A1', 13),
  ('00000000-0000-4000-a000-0000659a172e', 'wie', 'كيف', 'how', NULL, NULL, 'adverb', 'Wie heißt du?', 'What is your name?', 'A1', 14),
  ('00000000-0000-4000-a000-0000659a172e', 'freuen', 'يسر', 'to be pleased', NULL, NULL, 'verb', 'Ich freue mich, dich kennenzulernen.', 'I am pleased to meet you.', 'A1', 15),
  ('00000000-0000-4000-a000-0000659a172e', 'Willkommen', 'أهلاً وسهلاً', 'welcome', NULL, NULL, 'interjection', 'Willkommen in Deutschland!', 'Welcome to Germany!', 'A1', 16),
  ('00000000-0000-4000-a000-0000659a172e', 'die Familie', 'العائلة', 'family', 'die', 'die Familien', 'noun', 'Meine Familie ist groß.', 'My family is big.', 'A1', 17),
  ('00000000-0000-4000-a000-0000659a172e', 'der Vater', 'الأب', 'father', 'der', 'die Väter', 'noun', 'Mein Vater ist Ingenieur.', 'My father is an engineer.', 'A1', 18),
  ('00000000-0000-4000-a000-0000659a172e', 'die Mutter', 'الأم', 'mother', 'die', 'die Mütter', 'noun', 'Meine Mutter kocht gut.', 'My mother cooks well.', 'A1', 19),
  ('00000000-0000-4000-a000-0000659a172e', 'der Bruder', 'الأخ', 'brother', 'der', 'die Brüder', 'noun', 'Mein Bruder ist 15 Jahre alt.', 'My brother is 15 years old.', 'A1', 20),
  ('00000000-0000-4000-a000-0000659a172e', 'die Schwester', 'الأخت', 'sister', 'die', 'die Schwestern', 'noun', 'Meine Schwester studiert Medizin.', 'My sister studies medicine.', 'A1', 21),
  ('00000000-0000-4000-a000-0000659a172e', 'die Geschwister', 'الإخوة', 'siblings', 'die', NULL, 'noun', 'Hast du Geschwister?', 'Do you have siblings?', 'A1', 22),
  ('00000000-0000-4000-a000-0000659a172e', 'der Sohn', 'الابن', 'son', 'der', 'die Söhne', 'noun', 'Wir haben einen Sohn.', 'We have a son.', 'A1', 23),
  ('00000000-0000-4000-a000-0000659a172e', 'die Tochter', 'الابنة', 'daughter', 'die', 'die Töchter', 'noun', 'Meine Tochter geht zur Schule.', 'My daughter goes to school.', 'A1', 24),
  ('00000000-0000-4000-a000-0000659a172e', 'die Großeltern', 'الأجداد', 'grandparents', 'die', NULL, 'noun', 'Meine Großeltern wohnen auf dem Land.', 'My grandparents live in the countryside.', 'A1', 25),
  ('00000000-0000-4000-a000-0000659a172e', 'verheiratet', 'متزوج', 'married', NULL, NULL, 'adjective', 'Meine Eltern sind verheiratet.', 'My parents are married.', 'A1', 26),
  ('00000000-0000-4000-a000-0000659a172e', 'das Brot', 'الخبز', 'bread', 'das', 'die Brote', 'noun', 'Ich kaufe ein Brot.', 'I buy a loaf of bread.', 'A1', 27),
  ('00000000-0000-4000-a000-0000659a172e', 'die Milch', 'الحليب', 'milk', 'die', NULL, 'noun', 'Die Milch ist frisch.', 'The milk is fresh.', 'A1', 28),
  ('00000000-0000-4000-a000-0000659a172e', 'der Käse', 'الجبن', 'cheese', 'der', NULL, 'noun', 'Der Käse schmeckt gut.', 'The cheese tastes good.', 'A1', 29),
  ('00000000-0000-4000-a000-0000659a172e', 'der Apfel', 'التفاح', 'apple', 'der', 'die Äpfel', 'noun', 'Der Apfel ist rot.', 'The apple is red.', 'A1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000659a172e', 'Präsens der regelmäßigen Verben (Present Tense) / المضارع للأفعال المنتظمة', 'In German, regular verbs follow a consistent pattern. The infinitive ends in -en. Remove the -en and add the personal endings: ich -e, du -st, er/sie/es -t, wir -en, ihr -t, sie/Sie -en. For most Arabic speakers, this is easier than Arabic verb conjugation because German has fewer forms.', '[{"rule":"ich: stem + e","note":"Ich lerne, ich wohne, ich arbeite"},{"rule":"du: stem + st","note":"Du lernst, du wohnst, du arbeitest"},{"rule":"er/sie/es: stem + t","note":"Er lernt, sie wohnt, es arbeitet"},{"rule":"wir: stem + en","note":"Wir lernen, wir wohnen, wir arbeiten"},{"rule":"ihr: stem + t","note":"Ihr lernt, ihr wohnt, ihr arbeitet"},{"rule":"sie/Sie: stem + en","note":"Sie lernen, Sie wohnen"}]', '[{"german":"Ich lerne Deutsch.","arabic":"أنا أتعلم الألمانية.","english":"I am learning German."},{"german":"Du wohnst in Berlin.","arabic":"أنت تسكن في برلين.","english":"You live in Berlin."},{"german":"Er arbeitet bei Siemens.","arabic":"هو يعمل في سيمنز.","english":"He works at Siemens."}]', '[{"mistake":"Ich lernen Deutsch","correction":"Ich lerne Deutsch","explanation":"After \"ich\" we use the stem + e, not the infinitive."},{"mistake":"Er lerne Deutsch","correction":"Er lernt Deutsch","explanation":"After \"er/sie/es\" we add -t, not -e."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000659a172e', 'multiple_choice', 'What does "der Beruf" mean?', '["The","A","This","That"]', 'The', 'This is a basic vocabulary item.', 1, 1),
  ('00000000-0000-4000-a000-0000659a172e', 'fill_gap', 'Complete with the correct form.', '["Option 1","Option 2","Option 3"]', 'Option 1', 'Practice grammar in context.', 1, 2),
  ('00000000-0000-4000-a000-0000659a172e', 'translation', 'Translate: "I learn German."', '["Ich lerne Deutsch.","Ich lerne Englisch.","Ich lerne Spanisch."]', 'Ich lerne Deutsch.', 'Ich = I, lerne = learn/learning, Deutsch = German.', 2, 3),
  ('00000000-0000-4000-a000-0000659a172e', 'sentence_order', 'Order the sentence.', '[]', 'Ich lerne Deutsch.', 'Subject + verb + object in German.', 2, 4),
  ('00000000-0000-4000-a000-0000659a172e', 'matching', 'Match the words with their meanings.', '["Match pairs correctly"]', 'Correct pairs', 'Test your vocabulary knowledge.', 2, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-0000659a172e', 'multiple_choice', 'What is the main topic of this lesson?', '["Workplace","Sports","Music","Travel"]', 'Workplace', 1, 1),
  ('00000000-0000-4000-a000-0000659a172e', 'true_false', 'This lesson teaches vocabulary about Workplace.', '["True","False"]', 'True', 1, 2),
  ('00000000-0000-4000-a000-0000659a172e', 'true_false', 'German word order is always the same as English.', '["True","False"]', 'False', 1, 3),
  ('00000000-0000-4000-a000-0000659a172e', 'multiple_choice', 'How do you say "please" in German?', '["Danke","Bitte","Tschüss","Hallo"]', 'Bitte', 1, 4),
  ('00000000-0000-4000-a000-0000659a172e', 'multiple_choice', 'Which article is feminine?', '["der","die","das","den"]', 'die', 1, 5),
  ('00000000-0000-4000-a000-0000659a172e', 'fill_blank', 'Ich ___ (to be) Student.', '["bin","bist","ist","sind"]', 'bin', 1, 6),
  ('00000000-0000-4000-a000-0000659a172e', 'multiple_choice', 'What is the correct word order?', '["Ich lerne Deutsch","Ich Deutsch lerne","Lerne ich Deutsch","Deutsch ich lerne"]', 'Ich lerne Deutsch', 1, 7),
  ('00000000-0000-4000-a000-0000659a172e', 'true_false', 'All German nouns are capitalized.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-0000659a172e', 'multiple_choice', 'How do you say "thank you" in German?', '["Bitte","Danke","Tschüss","Hallo"]', 'Danke', 1, 9),
  ('00000000-0000-4000-a000-0000659a172e', 'fill_blank', 'Wo ___ du? (to live)', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 1, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-0000659a172e', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Arbeit und Berufe', 'formal', false, 1),
  ('00000000-0000-4000-a000-0000659a172e', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Arbeit und Berufe', 'informal', false, 2),
  ('00000000-0000-4000-a000-0000659a172e', 'Bitte!', 'Please!', 'من فضلك!', 'Used in Arbeit und Berufe', 'neutral', false, 3),
  ('00000000-0000-4000-a000-0000659a172e', 'Danke!', 'Thanks!', 'شكراً!', 'Used in Arbeit und Berufe', 'neutral', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-0000659a172e', 'Hallo', 'Hello', 'Greeting', 'expression', 1),
  ('00000000-0000-4000-a000-0000659a172e', 'Danke', 'Thanks', 'Politeness', 'expression', 2),
  ('00000000-0000-4000-a000-0000659a172e', 'Bitte', 'Please', 'Politeness', 'expression', 3),
  ('00000000-0000-4000-a000-0000659a172e', 'Tschüss', 'Bye', 'Farewell', 'expression', 4);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-0000659a172e', 'Am Arbeitsplatz — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, duration_seconds, speaker_count, scenario) values
  ('00000000-0000-4000-a000-0000659a172e', 'Am Arbeitsplatz — Hörverständnis', '[Chef]: Guten Morgen, Herr Schmidt. Haben Sie die Präsentation fertig?

[Angestellter]: Ja, ich habe sie gestern Abend fertig gemacht.

[Chef]: Ausgezeichnet. Wir besprechen die Details um 10 Uhr im Besprechungsraum.

[Angestellter]: Ich bin vorbereitet. Soll ich den Beamer mitbringen?

[Chef]: Ja, gute Idee. Und vergessen Sie die Unterlagen nicht.', '[Chef]: Good morning, Mr. Schmidt. Have you finished the presentation?

[Angestellter]: Yes, I finished it last evening.

[Chef]: Excellent. We will discuss the details at 10 o''clock in the meeting room.

[Angestellter]: I am prepared. Should I bring the projector?

[Chef]: Yes, good idea. And don''t forget the documents.', '[Chef]: صباح الخير سيد شميت. هل انتهيتم من العرض التقديمي؟

[Angestellter]: نعم، أنهيته البارحة مساءً.

[Chef]: ممتاز. سنناقش التفاصيل في الساعة 10 في غرفة الاجتماعات.

[Angestellter]: أنا مستعد. هل أحضر جهاز العرض؟

[Chef]: نعم، فكرة جيدة. ولا تنسوا المستندات.', 60, 2, 'Arbeit und Berufe');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-0000659a172e', 'Speaking: Am Arbeitsplatz', 'Practice talking about Workplace. Answer questions and have a simple conversation.', 'Workplace', ARRAY['Use full sentences','Speak clearly','Don''t worry about mistakes']::text[], ARRAY['der Beruf','die Firma','der Kollege','das Büro','die Besprechung']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-0000659a172e', 'Writing: Am Arbeitsplatz', 'Write a short text about Workplace. Use at least 5 vocabulary words from this lesson.', ARRAY['Start with a greeting','Use the vocabulary from this lesson','Check your grammar']::text[], ARRAY['der Beruf','die Firma','der Kollege']::text[], '["Sentence structure","Vocabulary usage"]', 50, 150, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000659a172e', 'Am Arbeitsplatz — Roleplay', 'Workplace', 'Student', 'Teacher', 'Practice conversation about Workplace', 'Hallo! Lass uns über dieses Thema sprechen.', 'beginner', 1, ARRAY['der Beruf','die Firma','der Kollege','das Büro','die Besprechung','der Chef','das Gehalt','die Stelle']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000659a172e', 'Am Arbeitsplatz — Advanced Roleplay', 'Workplace', 'Customer', 'Assistant', 'Extended conversation about Workplace', 'Guten Tag! Wie kann ich Ihnen helfen?', 'beginner', 2, ARRAY['der Beruf','die Firma','der Kollege','das Büro','die Besprechung','der Chef','das Gehalt','die Stelle']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-0000659a172e', 'Am Arbeitsplatz — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Am Arbeitsplatz".', 'Creative practice for Workplace', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-0000659a172e', 'Homework: Am Arbeitsplatz', 'Complete these tasks to reinforce "Am Arbeitsplatz".', 'mixed', '[{"description":"Review all vocabulary from this lesson"},{"description":"Write 5 sentences using the grammar structure"},{"description":"Practice the dialogue aloud"}]', 35, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-0000659a172e', 'In this lesson you learned about Workplace. You practiced vocabulary related to work and grammar structure present_tense.', '["Mastered vocabulary about Workplace","Applied present_tense correctly","Read and understood a text about Workplace","Practiced speaking about Workplace"]', '[{"title":"Am Arbeitsplatz Review","summary":"present_tense — the main grammar focus of this lesson."}]', ARRAY['Workplace core vocabulary','work key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)','Verb is always in second position']::text[], ARRAY['Practice 15-20 minutes daily','Use new vocabulary in real sentences','Speak out loud to improve pronunciation']::text[]);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000659a172e', 'Pronunciation: German pronunciation basics', 'German is mostly phonetic. Pronounce each letter.

Common mistake for Arabic speakers: Pronouncing every letter as in English.', '[]', '[{"german":"ja","arabic":"","english":"","phonetic":"/jaː/"},{"german":"nein","arabic":"","english":"","phonetic":"/naɪn/"}]', '[]', 10);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000659a172e', 'translation', 'Translate to German: "This is a translation exercise."', '[]', 'Das ist eine Übersetzungsübung.', 'Use "das ist" for "this is"', 1, 40);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000659a172e', 'Culture: Workplace in German-Speaking Countries', 'Learn how Workplace is approached in German culture.

تعلم كيف يتم التعامل مع Workplace في الثقافة الألمانية.', '["Tip: Be direct and polite","Tip: Use formal language with strangers","Tip: Respect punctuality"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000659a172e', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Common error for Arabic speakers","correction":"Correct version","explanation":"Explanation of the error"}]', 30);

  -- Lesson 3: Telefonnummer und E-Mail (L-A1-05-03)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-0000659a172f', '00000000-0000-4000-a000-000039b4d362', 'Telefonnummer und E-Mail', 'Practice giving phone numbers and email addresses.', 'Contact Details', 'vocabulary', '["Understand and use vocabulary related to Contact Details","Apply present_tense correctly","Read and comprehend a text about Contact Details","Listen and understand a dialogue about Contact Details","Speak about Contact Details in simple sentences","Write a short text about Contact Details"]', 25, 3, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-0000659a172f', 'der Beruf', 'المهنة', 'profession', 'der', 'die Berufe', 'noun', 'Was ist dein Beruf?', 'What is your profession?', 'A1', 1),
  ('00000000-0000-4000-a000-0000659a172f', 'die Firma', 'الشركة', 'company', 'die', 'die Firmen', 'noun', 'Die Firma ist in Berlin.', 'The company is in Berlin.', 'A1', 2),
  ('00000000-0000-4000-a000-0000659a172f', 'der Kollege', 'الزميل', 'colleague', 'der', 'die Kollegen', 'noun', 'Mein Kollege hilft mir.', 'My colleague helps me.', 'A1', 3),
  ('00000000-0000-4000-a000-0000659a172f', 'das Büro', 'المكتب', 'office', 'das', 'die Büros', 'noun', 'Das Büro ist im dritten Stock.', 'The office is on the third floor.', 'A1', 4),
  ('00000000-0000-4000-a000-0000659a172f', 'die Besprechung', 'الاجتماع', 'meeting', 'die', 'die Besprechungen', 'noun', 'Wir haben eine Besprechung.', 'We have a meeting.', 'B1', 5),
  ('00000000-0000-4000-a000-0000659a172f', 'der Chef', 'المدير', 'boss', 'der', 'die Chefs', 'noun', 'Mein Chef ist freundlich.', 'My boss is friendly.', 'A1', 6),
  ('00000000-0000-4000-a000-0000659a172f', 'das Gehalt', 'الراتب', 'salary', 'das', 'die Gehälter', 'noun', 'Das Gehalt ist gut.', 'The salary is good.', 'B1', 7),
  ('00000000-0000-4000-a000-0000659a172f', 'die Stelle', 'الوظيفة', 'position', 'die', 'die Stellen', 'noun', 'Ich suche eine neue Stelle.', 'I am looking for a new position.', 'B1', 8),
  ('00000000-0000-4000-a000-0000659a172f', 'Hallo', 'مرحباً', 'hello', NULL, NULL, 'interjection', 'Hallo, wie geht es dir?', 'Hello, how are you?', 'A1', 9),
  ('00000000-0000-4000-a000-0000659a172f', 'Guten Morgen', 'صباح الخير', 'good morning', NULL, NULL, 'phrase', 'Guten Morgen, Herr Müller.', 'Good morning, Mr. Müller.', 'A1', 10),
  ('00000000-0000-4000-a000-0000659a172f', 'Guten Tag', 'نهارك سعيد', 'good day', NULL, NULL, 'phrase', 'Guten Tag, Frau Schmidt.', 'Good day, Mrs. Schmidt.', 'A1', 11),
  ('00000000-0000-4000-a000-0000659a172f', 'Tschüss', 'مع السلامة', 'bye', NULL, NULL, 'interjection', 'Tschüss, bis morgen!', 'Bye, see you tomorrow!', 'A1', 12),
  ('00000000-0000-4000-a000-0000659a172f', 'der Name', 'الاسم', 'name', 'der', 'die Namen', 'noun', 'Mein Name ist Anna.', 'My name is Anna.', 'A1', 13),
  ('00000000-0000-4000-a000-0000659a172f', 'wie', 'كيف', 'how', NULL, NULL, 'adverb', 'Wie heißt du?', 'What is your name?', 'A1', 14),
  ('00000000-0000-4000-a000-0000659a172f', 'freuen', 'يسر', 'to be pleased', NULL, NULL, 'verb', 'Ich freue mich, dich kennenzulernen.', 'I am pleased to meet you.', 'A1', 15),
  ('00000000-0000-4000-a000-0000659a172f', 'Willkommen', 'أهلاً وسهلاً', 'welcome', NULL, NULL, 'interjection', 'Willkommen in Deutschland!', 'Welcome to Germany!', 'A1', 16),
  ('00000000-0000-4000-a000-0000659a172f', 'die Familie', 'العائلة', 'family', 'die', 'die Familien', 'noun', 'Meine Familie ist groß.', 'My family is big.', 'A1', 17),
  ('00000000-0000-4000-a000-0000659a172f', 'der Vater', 'الأب', 'father', 'der', 'die Väter', 'noun', 'Mein Vater ist Ingenieur.', 'My father is an engineer.', 'A1', 18),
  ('00000000-0000-4000-a000-0000659a172f', 'die Mutter', 'الأم', 'mother', 'die', 'die Mütter', 'noun', 'Meine Mutter kocht gut.', 'My mother cooks well.', 'A1', 19),
  ('00000000-0000-4000-a000-0000659a172f', 'der Bruder', 'الأخ', 'brother', 'der', 'die Brüder', 'noun', 'Mein Bruder ist 15 Jahre alt.', 'My brother is 15 years old.', 'A1', 20),
  ('00000000-0000-4000-a000-0000659a172f', 'die Schwester', 'الأخت', 'sister', 'die', 'die Schwestern', 'noun', 'Meine Schwester studiert Medizin.', 'My sister studies medicine.', 'A1', 21),
  ('00000000-0000-4000-a000-0000659a172f', 'die Geschwister', 'الإخوة', 'siblings', 'die', NULL, 'noun', 'Hast du Geschwister?', 'Do you have siblings?', 'A1', 22),
  ('00000000-0000-4000-a000-0000659a172f', 'der Sohn', 'الابن', 'son', 'der', 'die Söhne', 'noun', 'Wir haben einen Sohn.', 'We have a son.', 'A1', 23),
  ('00000000-0000-4000-a000-0000659a172f', 'die Tochter', 'الابنة', 'daughter', 'die', 'die Töchter', 'noun', 'Meine Tochter geht zur Schule.', 'My daughter goes to school.', 'A1', 24),
  ('00000000-0000-4000-a000-0000659a172f', 'die Großeltern', 'الأجداد', 'grandparents', 'die', NULL, 'noun', 'Meine Großeltern wohnen auf dem Land.', 'My grandparents live in the countryside.', 'A1', 25),
  ('00000000-0000-4000-a000-0000659a172f', 'verheiratet', 'متزوج', 'married', NULL, NULL, 'adjective', 'Meine Eltern sind verheiratet.', 'My parents are married.', 'A1', 26),
  ('00000000-0000-4000-a000-0000659a172f', 'das Brot', 'الخبز', 'bread', 'das', 'die Brote', 'noun', 'Ich kaufe ein Brot.', 'I buy a loaf of bread.', 'A1', 27),
  ('00000000-0000-4000-a000-0000659a172f', 'die Milch', 'الحليب', 'milk', 'die', NULL, 'noun', 'Die Milch ist frisch.', 'The milk is fresh.', 'A1', 28),
  ('00000000-0000-4000-a000-0000659a172f', 'der Käse', 'الجبن', 'cheese', 'der', NULL, 'noun', 'Der Käse schmeckt gut.', 'The cheese tastes good.', 'A1', 29),
  ('00000000-0000-4000-a000-0000659a172f', 'der Apfel', 'التفاح', 'apple', 'der', 'die Äpfel', 'noun', 'Der Apfel ist rot.', 'The apple is red.', 'A1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000659a172f', 'Präsens der regelmäßigen Verben (Present Tense) / المضارع للأفعال المنتظمة', 'In German, regular verbs follow a consistent pattern. The infinitive ends in -en. Remove the -en and add the personal endings: ich -e, du -st, er/sie/es -t, wir -en, ihr -t, sie/Sie -en. For most Arabic speakers, this is easier than Arabic verb conjugation because German has fewer forms.', '[{"rule":"ich: stem + e","note":"Ich lerne, ich wohne, ich arbeite"},{"rule":"du: stem + st","note":"Du lernst, du wohnst, du arbeitest"},{"rule":"er/sie/es: stem + t","note":"Er lernt, sie wohnt, es arbeitet"},{"rule":"wir: stem + en","note":"Wir lernen, wir wohnen, wir arbeiten"},{"rule":"ihr: stem + t","note":"Ihr lernt, ihr wohnt, ihr arbeitet"},{"rule":"sie/Sie: stem + en","note":"Sie lernen, Sie wohnen"}]', '[{"german":"Ich lerne Deutsch.","arabic":"أنا أتعلم الألمانية.","english":"I am learning German."},{"german":"Du wohnst in Berlin.","arabic":"أنت تسكن في برلين.","english":"You live in Berlin."},{"german":"Er arbeitet bei Siemens.","arabic":"هو يعمل في سيمنز.","english":"He works at Siemens."}]', '[{"mistake":"Ich lernen Deutsch","correction":"Ich lerne Deutsch","explanation":"After \"ich\" we use the stem + e, not the infinitive."},{"mistake":"Er lerne Deutsch","correction":"Er lernt Deutsch","explanation":"After \"er/sie/es\" we add -t, not -e."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000659a172f', 'multiple_choice', 'What does "der Beruf" mean?', '["The","A","This","That"]', 'The', 'This is a basic vocabulary item.', 1, 1),
  ('00000000-0000-4000-a000-0000659a172f', 'fill_gap', 'Complete with the correct form.', '["Option 1","Option 2","Option 3"]', 'Option 1', 'Practice grammar in context.', 1, 2),
  ('00000000-0000-4000-a000-0000659a172f', 'translation', 'Translate: "I learn German."', '["Ich lerne Deutsch.","Ich lerne Englisch.","Ich lerne Spanisch."]', 'Ich lerne Deutsch.', 'Ich = I, lerne = learn/learning, Deutsch = German.', 2, 3),
  ('00000000-0000-4000-a000-0000659a172f', 'sentence_order', 'Order the sentence.', '[]', 'Ich lerne Deutsch.', 'Subject + verb + object in German.', 2, 4),
  ('00000000-0000-4000-a000-0000659a172f', 'matching', 'Match the words with their meanings.', '["Match pairs correctly"]', 'Correct pairs', 'Test your vocabulary knowledge.', 2, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-0000659a172f', 'multiple_choice', 'What is the main topic of this lesson?', '["Contact Details","Sports","Music","Travel"]', 'Contact Details', 1, 1),
  ('00000000-0000-4000-a000-0000659a172f', 'true_false', 'This lesson teaches vocabulary about Contact Details.', '["True","False"]', 'True', 1, 2),
  ('00000000-0000-4000-a000-0000659a172f', 'true_false', 'German word order is always the same as English.', '["True","False"]', 'False', 1, 3),
  ('00000000-0000-4000-a000-0000659a172f', 'multiple_choice', 'How do you say "please" in German?', '["Danke","Bitte","Tschüss","Hallo"]', 'Bitte', 1, 4),
  ('00000000-0000-4000-a000-0000659a172f', 'multiple_choice', 'Which article is feminine?', '["der","die","das","den"]', 'die', 1, 5),
  ('00000000-0000-4000-a000-0000659a172f', 'fill_blank', 'Ich ___ (to be) Student.', '["bin","bist","ist","sind"]', 'bin', 1, 6),
  ('00000000-0000-4000-a000-0000659a172f', 'multiple_choice', 'What is the correct word order?', '["Ich lerne Deutsch","Ich Deutsch lerne","Lerne ich Deutsch","Deutsch ich lerne"]', 'Ich lerne Deutsch', 1, 7),
  ('00000000-0000-4000-a000-0000659a172f', 'true_false', 'All German nouns are capitalized.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-0000659a172f', 'multiple_choice', 'How do you say "thank you" in German?', '["Bitte","Danke","Tschüss","Hallo"]', 'Danke', 1, 9),
  ('00000000-0000-4000-a000-0000659a172f', 'fill_blank', 'Wo ___ du? (to live)', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 1, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-0000659a172f', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Arbeit und Berufe', 'formal', false, 1),
  ('00000000-0000-4000-a000-0000659a172f', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Arbeit und Berufe', 'informal', false, 2),
  ('00000000-0000-4000-a000-0000659a172f', 'Bitte!', 'Please!', 'من فضلك!', 'Used in Arbeit und Berufe', 'neutral', false, 3),
  ('00000000-0000-4000-a000-0000659a172f', 'Danke!', 'Thanks!', 'شكراً!', 'Used in Arbeit und Berufe', 'neutral', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-0000659a172f', 'Hallo', 'Hello', 'Greeting', 'expression', 1),
  ('00000000-0000-4000-a000-0000659a172f', 'Danke', 'Thanks', 'Politeness', 'expression', 2),
  ('00000000-0000-4000-a000-0000659a172f', 'Bitte', 'Please', 'Politeness', 'expression', 3),
  ('00000000-0000-4000-a000-0000659a172f', 'Tschüss', 'Bye', 'Farewell', 'expression', 4);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-0000659a172f', 'Telefonnummer und E-Mail — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, duration_seconds, speaker_count, scenario) values
  ('00000000-0000-4000-a000-0000659a172f', 'Telefonnummer und E-Mail — Hörverständnis', '[Chef]: Guten Morgen, Herr Schmidt. Haben Sie die Präsentation fertig?

[Angestellter]: Ja, ich habe sie gestern Abend fertig gemacht.

[Chef]: Ausgezeichnet. Wir besprechen die Details um 10 Uhr im Besprechungsraum.

[Angestellter]: Ich bin vorbereitet. Soll ich den Beamer mitbringen?

[Chef]: Ja, gute Idee. Und vergessen Sie die Unterlagen nicht.', '[Chef]: Good morning, Mr. Schmidt. Have you finished the presentation?

[Angestellter]: Yes, I finished it last evening.

[Chef]: Excellent. We will discuss the details at 10 o''clock in the meeting room.

[Angestellter]: I am prepared. Should I bring the projector?

[Chef]: Yes, good idea. And don''t forget the documents.', '[Chef]: صباح الخير سيد شميت. هل انتهيتم من العرض التقديمي؟

[Angestellter]: نعم، أنهيته البارحة مساءً.

[Chef]: ممتاز. سنناقش التفاصيل في الساعة 10 في غرفة الاجتماعات.

[Angestellter]: أنا مستعد. هل أحضر جهاز العرض؟

[Chef]: نعم، فكرة جيدة. ولا تنسوا المستندات.', 60, 2, 'Arbeit und Berufe');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-0000659a172f', 'Speaking: Telefonnummer und E-Mail', 'Practice talking about Contact Details. Answer questions and have a simple conversation.', 'Contact Details', ARRAY['Use full sentences','Speak clearly','Don''t worry about mistakes']::text[], ARRAY['der Beruf','die Firma','der Kollege','das Büro','die Besprechung']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-0000659a172f', 'Writing: Telefonnummer und E-Mail', 'Write a short text about Contact Details. Use at least 5 vocabulary words from this lesson.', ARRAY['Start with a greeting','Use the vocabulary from this lesson','Check your grammar']::text[], ARRAY['der Beruf','die Firma','der Kollege']::text[], '["Sentence structure","Vocabulary usage"]', 50, 150, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000659a172f', 'Telefonnummer und E-Mail — Roleplay', 'Contact Details', 'Student', 'Teacher', 'Practice conversation about Contact Details', 'Hallo! Lass uns über dieses Thema sprechen.', 'beginner', 1, ARRAY['der Beruf','die Firma','der Kollege','das Büro','die Besprechung','der Chef','das Gehalt','die Stelle']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000659a172f', 'Telefonnummer und E-Mail — Advanced Roleplay', 'Contact Details', 'Customer', 'Assistant', 'Extended conversation about Contact Details', 'Guten Tag! Wie kann ich Ihnen helfen?', 'beginner', 2, ARRAY['der Beruf','die Firma','der Kollege','das Büro','die Besprechung','der Chef','das Gehalt','die Stelle']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-0000659a172f', 'Telefonnummer und E-Mail — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Telefonnummer und E-Mail".', 'Creative practice for Contact Details', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-0000659a172f', 'Homework: Telefonnummer und E-Mail', 'Complete these tasks to reinforce "Telefonnummer und E-Mail".', 'mixed', '[{"description":"Review all vocabulary from this lesson"},{"description":"Write 5 sentences using the grammar structure"},{"description":"Practice the dialogue aloud"}]', 35, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-0000659a172f', 'In this lesson you learned about Contact Details. You practiced vocabulary related to work and grammar structure present_tense.', '["Mastered vocabulary about Contact Details","Applied present_tense correctly","Read and understood a text about Contact Details","Practiced speaking about Contact Details"]', '[{"title":"Telefonnummer und E-Mail Review","summary":"present_tense — the main grammar focus of this lesson."}]', ARRAY['Contact Details core vocabulary','work key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)','Verb is always in second position']::text[], ARRAY['Practice 15-20 minutes daily','Use new vocabulary in real sentences','Speak out loud to improve pronunciation']::text[]);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000659a172f', 'Pronunciation: German pronunciation basics', 'German is mostly phonetic. Pronounce each letter.

Common mistake for Arabic speakers: Pronouncing every letter as in English.', '[]', '[{"german":"ja","arabic":"","english":"","phonetic":"/jaː/"},{"german":"nein","arabic":"","english":"","phonetic":"/naɪn/"}]', '[]', 10);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000659a172f', 'translation', 'Translate to German: "This is a translation exercise."', '[]', 'Das ist eine Übersetzungsübung.', 'Use "das ist" for "this is"', 1, 40);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000659a172f', 'Culture: Contact Details in German-Speaking Countries', 'Learn how Contact Details is approached in German culture.

تعلم كيف يتم التعامل مع Contact Details في الثقافة الألمانية.', '["Tip: Be direct and polite","Tip: Use formal language with strangers","Tip: Respect punctuality"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000659a172f', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Common error for Arabic speakers","correction":"Correct version","explanation":"Explanation of the error"}]', 30);

  -- Lesson 4: Im Büro (L-A1-05-04)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-0000659a1730', '00000000-0000-4000-a000-000039b4d362', 'Im Büro', 'Learn office routines and basic workplace communication.', 'Office Life', 'dialogue', '["Understand and use vocabulary related to Office Life","Apply present_tense correctly","Read and comprehend a text about Office Life","Listen and understand a dialogue about Office Life","Speak about Office Life in simple sentences","Write a short text about Office Life"]', 30, 4, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-0000659a1730', 'der Beruf', 'المهنة', 'profession', 'der', 'die Berufe', 'noun', 'Was ist dein Beruf?', 'What is your profession?', 'A1', 1),
  ('00000000-0000-4000-a000-0000659a1730', 'die Firma', 'الشركة', 'company', 'die', 'die Firmen', 'noun', 'Die Firma ist in Berlin.', 'The company is in Berlin.', 'A1', 2),
  ('00000000-0000-4000-a000-0000659a1730', 'der Kollege', 'الزميل', 'colleague', 'der', 'die Kollegen', 'noun', 'Mein Kollege hilft mir.', 'My colleague helps me.', 'A1', 3),
  ('00000000-0000-4000-a000-0000659a1730', 'das Büro', 'المكتب', 'office', 'das', 'die Büros', 'noun', 'Das Büro ist im dritten Stock.', 'The office is on the third floor.', 'A1', 4),
  ('00000000-0000-4000-a000-0000659a1730', 'die Besprechung', 'الاجتماع', 'meeting', 'die', 'die Besprechungen', 'noun', 'Wir haben eine Besprechung.', 'We have a meeting.', 'B1', 5),
  ('00000000-0000-4000-a000-0000659a1730', 'der Chef', 'المدير', 'boss', 'der', 'die Chefs', 'noun', 'Mein Chef ist freundlich.', 'My boss is friendly.', 'A1', 6),
  ('00000000-0000-4000-a000-0000659a1730', 'das Gehalt', 'الراتب', 'salary', 'das', 'die Gehälter', 'noun', 'Das Gehalt ist gut.', 'The salary is good.', 'B1', 7),
  ('00000000-0000-4000-a000-0000659a1730', 'die Stelle', 'الوظيفة', 'position', 'die', 'die Stellen', 'noun', 'Ich suche eine neue Stelle.', 'I am looking for a new position.', 'B1', 8),
  ('00000000-0000-4000-a000-0000659a1730', 'Hallo', 'مرحباً', 'hello', NULL, NULL, 'interjection', 'Hallo, wie geht es dir?', 'Hello, how are you?', 'A1', 9),
  ('00000000-0000-4000-a000-0000659a1730', 'Guten Morgen', 'صباح الخير', 'good morning', NULL, NULL, 'phrase', 'Guten Morgen, Herr Müller.', 'Good morning, Mr. Müller.', 'A1', 10),
  ('00000000-0000-4000-a000-0000659a1730', 'Guten Tag', 'نهارك سعيد', 'good day', NULL, NULL, 'phrase', 'Guten Tag, Frau Schmidt.', 'Good day, Mrs. Schmidt.', 'A1', 11),
  ('00000000-0000-4000-a000-0000659a1730', 'Tschüss', 'مع السلامة', 'bye', NULL, NULL, 'interjection', 'Tschüss, bis morgen!', 'Bye, see you tomorrow!', 'A1', 12),
  ('00000000-0000-4000-a000-0000659a1730', 'der Name', 'الاسم', 'name', 'der', 'die Namen', 'noun', 'Mein Name ist Anna.', 'My name is Anna.', 'A1', 13),
  ('00000000-0000-4000-a000-0000659a1730', 'wie', 'كيف', 'how', NULL, NULL, 'adverb', 'Wie heißt du?', 'What is your name?', 'A1', 14),
  ('00000000-0000-4000-a000-0000659a1730', 'freuen', 'يسر', 'to be pleased', NULL, NULL, 'verb', 'Ich freue mich, dich kennenzulernen.', 'I am pleased to meet you.', 'A1', 15),
  ('00000000-0000-4000-a000-0000659a1730', 'Willkommen', 'أهلاً وسهلاً', 'welcome', NULL, NULL, 'interjection', 'Willkommen in Deutschland!', 'Welcome to Germany!', 'A1', 16),
  ('00000000-0000-4000-a000-0000659a1730', 'die Familie', 'العائلة', 'family', 'die', 'die Familien', 'noun', 'Meine Familie ist groß.', 'My family is big.', 'A1', 17),
  ('00000000-0000-4000-a000-0000659a1730', 'der Vater', 'الأب', 'father', 'der', 'die Väter', 'noun', 'Mein Vater ist Ingenieur.', 'My father is an engineer.', 'A1', 18),
  ('00000000-0000-4000-a000-0000659a1730', 'die Mutter', 'الأم', 'mother', 'die', 'die Mütter', 'noun', 'Meine Mutter kocht gut.', 'My mother cooks well.', 'A1', 19),
  ('00000000-0000-4000-a000-0000659a1730', 'der Bruder', 'الأخ', 'brother', 'der', 'die Brüder', 'noun', 'Mein Bruder ist 15 Jahre alt.', 'My brother is 15 years old.', 'A1', 20),
  ('00000000-0000-4000-a000-0000659a1730', 'die Schwester', 'الأخت', 'sister', 'die', 'die Schwestern', 'noun', 'Meine Schwester studiert Medizin.', 'My sister studies medicine.', 'A1', 21),
  ('00000000-0000-4000-a000-0000659a1730', 'die Geschwister', 'الإخوة', 'siblings', 'die', NULL, 'noun', 'Hast du Geschwister?', 'Do you have siblings?', 'A1', 22),
  ('00000000-0000-4000-a000-0000659a1730', 'der Sohn', 'الابن', 'son', 'der', 'die Söhne', 'noun', 'Wir haben einen Sohn.', 'We have a son.', 'A1', 23),
  ('00000000-0000-4000-a000-0000659a1730', 'die Tochter', 'الابنة', 'daughter', 'die', 'die Töchter', 'noun', 'Meine Tochter geht zur Schule.', 'My daughter goes to school.', 'A1', 24),
  ('00000000-0000-4000-a000-0000659a1730', 'die Großeltern', 'الأجداد', 'grandparents', 'die', NULL, 'noun', 'Meine Großeltern wohnen auf dem Land.', 'My grandparents live in the countryside.', 'A1', 25),
  ('00000000-0000-4000-a000-0000659a1730', 'verheiratet', 'متزوج', 'married', NULL, NULL, 'adjective', 'Meine Eltern sind verheiratet.', 'My parents are married.', 'A1', 26),
  ('00000000-0000-4000-a000-0000659a1730', 'das Brot', 'الخبز', 'bread', 'das', 'die Brote', 'noun', 'Ich kaufe ein Brot.', 'I buy a loaf of bread.', 'A1', 27),
  ('00000000-0000-4000-a000-0000659a1730', 'die Milch', 'الحليب', 'milk', 'die', NULL, 'noun', 'Die Milch ist frisch.', 'The milk is fresh.', 'A1', 28),
  ('00000000-0000-4000-a000-0000659a1730', 'der Käse', 'الجبن', 'cheese', 'der', NULL, 'noun', 'Der Käse schmeckt gut.', 'The cheese tastes good.', 'A1', 29),
  ('00000000-0000-4000-a000-0000659a1730', 'der Apfel', 'التفاح', 'apple', 'der', 'die Äpfel', 'noun', 'Der Apfel ist rot.', 'The apple is red.', 'A1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000659a1730', 'Präsens der regelmäßigen Verben (Present Tense) / المضارع للأفعال المنتظمة', 'In German, regular verbs follow a consistent pattern. The infinitive ends in -en. Remove the -en and add the personal endings: ich -e, du -st, er/sie/es -t, wir -en, ihr -t, sie/Sie -en. For most Arabic speakers, this is easier than Arabic verb conjugation because German has fewer forms.', '[{"rule":"ich: stem + e","note":"Ich lerne, ich wohne, ich arbeite"},{"rule":"du: stem + st","note":"Du lernst, du wohnst, du arbeitest"},{"rule":"er/sie/es: stem + t","note":"Er lernt, sie wohnt, es arbeitet"},{"rule":"wir: stem + en","note":"Wir lernen, wir wohnen, wir arbeiten"},{"rule":"ihr: stem + t","note":"Ihr lernt, ihr wohnt, ihr arbeitet"},{"rule":"sie/Sie: stem + en","note":"Sie lernen, Sie wohnen"}]', '[{"german":"Ich lerne Deutsch.","arabic":"أنا أتعلم الألمانية.","english":"I am learning German."},{"german":"Du wohnst in Berlin.","arabic":"أنت تسكن في برلين.","english":"You live in Berlin."},{"german":"Er arbeitet bei Siemens.","arabic":"هو يعمل في سيمنز.","english":"He works at Siemens."}]', '[{"mistake":"Ich lernen Deutsch","correction":"Ich lerne Deutsch","explanation":"After \"ich\" we use the stem + e, not the infinitive."},{"mistake":"Er lerne Deutsch","correction":"Er lernt Deutsch","explanation":"After \"er/sie/es\" we add -t, not -e."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000659a1730', 'multiple_choice', 'What does "der Beruf" mean?', '["The","A","This","That"]', 'The', 'This is a basic vocabulary item.', 1, 1),
  ('00000000-0000-4000-a000-0000659a1730', 'fill_gap', 'Complete with the correct form.', '["Option 1","Option 2","Option 3"]', 'Option 1', 'Practice grammar in context.', 1, 2),
  ('00000000-0000-4000-a000-0000659a1730', 'translation', 'Translate: "I learn German."', '["Ich lerne Deutsch.","Ich lerne Englisch.","Ich lerne Spanisch."]', 'Ich lerne Deutsch.', 'Ich = I, lerne = learn/learning, Deutsch = German.', 2, 3),
  ('00000000-0000-4000-a000-0000659a1730', 'sentence_order', 'Order the sentence.', '[]', 'Ich lerne Deutsch.', 'Subject + verb + object in German.', 2, 4),
  ('00000000-0000-4000-a000-0000659a1730', 'matching', 'Match the words with their meanings.', '["Match pairs correctly"]', 'Correct pairs', 'Test your vocabulary knowledge.', 2, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-0000659a1730', 'multiple_choice', 'What is the main topic of this lesson?', '["Office Life","Sports","Music","Travel"]', 'Office Life', 1, 1),
  ('00000000-0000-4000-a000-0000659a1730', 'true_false', 'This lesson teaches vocabulary about Office Life.', '["True","False"]', 'True', 1, 2),
  ('00000000-0000-4000-a000-0000659a1730', 'true_false', 'German word order is always the same as English.', '["True","False"]', 'False', 1, 3),
  ('00000000-0000-4000-a000-0000659a1730', 'multiple_choice', 'How do you say "please" in German?', '["Danke","Bitte","Tschüss","Hallo"]', 'Bitte', 1, 4),
  ('00000000-0000-4000-a000-0000659a1730', 'multiple_choice', 'Which article is feminine?', '["der","die","das","den"]', 'die', 1, 5),
  ('00000000-0000-4000-a000-0000659a1730', 'fill_blank', 'Ich ___ (to be) Student.', '["bin","bist","ist","sind"]', 'bin', 1, 6),
  ('00000000-0000-4000-a000-0000659a1730', 'multiple_choice', 'What is the correct word order?', '["Ich lerne Deutsch","Ich Deutsch lerne","Lerne ich Deutsch","Deutsch ich lerne"]', 'Ich lerne Deutsch', 1, 7),
  ('00000000-0000-4000-a000-0000659a1730', 'true_false', 'All German nouns are capitalized.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-0000659a1730', 'multiple_choice', 'How do you say "thank you" in German?', '["Bitte","Danke","Tschüss","Hallo"]', 'Danke', 1, 9),
  ('00000000-0000-4000-a000-0000659a1730', 'fill_blank', 'Wo ___ du? (to live)', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 1, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-0000659a1730', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Arbeit und Berufe', 'formal', false, 1),
  ('00000000-0000-4000-a000-0000659a1730', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Arbeit und Berufe', 'informal', false, 2),
  ('00000000-0000-4000-a000-0000659a1730', 'Bitte!', 'Please!', 'من فضلك!', 'Used in Arbeit und Berufe', 'neutral', false, 3),
  ('00000000-0000-4000-a000-0000659a1730', 'Danke!', 'Thanks!', 'شكراً!', 'Used in Arbeit und Berufe', 'neutral', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-0000659a1730', 'Hallo', 'Hello', 'Greeting', 'expression', 1),
  ('00000000-0000-4000-a000-0000659a1730', 'Danke', 'Thanks', 'Politeness', 'expression', 2),
  ('00000000-0000-4000-a000-0000659a1730', 'Bitte', 'Please', 'Politeness', 'expression', 3),
  ('00000000-0000-4000-a000-0000659a1730', 'Tschüss', 'Bye', 'Farewell', 'expression', 4);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-0000659a1730', 'Im Büro — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, duration_seconds, speaker_count, scenario) values
  ('00000000-0000-4000-a000-0000659a1730', 'Im Büro — Hörverständnis', '[Chef]: Guten Morgen, Herr Schmidt. Haben Sie die Präsentation fertig?

[Angestellter]: Ja, ich habe sie gestern Abend fertig gemacht.

[Chef]: Ausgezeichnet. Wir besprechen die Details um 10 Uhr im Besprechungsraum.

[Angestellter]: Ich bin vorbereitet. Soll ich den Beamer mitbringen?

[Chef]: Ja, gute Idee. Und vergessen Sie die Unterlagen nicht.', '[Chef]: Good morning, Mr. Schmidt. Have you finished the presentation?

[Angestellter]: Yes, I finished it last evening.

[Chef]: Excellent. We will discuss the details at 10 o''clock in the meeting room.

[Angestellter]: I am prepared. Should I bring the projector?

[Chef]: Yes, good idea. And don''t forget the documents.', '[Chef]: صباح الخير سيد شميت. هل انتهيتم من العرض التقديمي؟

[Angestellter]: نعم، أنهيته البارحة مساءً.

[Chef]: ممتاز. سنناقش التفاصيل في الساعة 10 في غرفة الاجتماعات.

[Angestellter]: أنا مستعد. هل أحضر جهاز العرض؟

[Chef]: نعم، فكرة جيدة. ولا تنسوا المستندات.', 60, 2, 'Arbeit und Berufe');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-0000659a1730', 'Speaking: Im Büro', 'Practice talking about Office Life. Answer questions and have a simple conversation.', 'Office Life', ARRAY['Use full sentences','Speak clearly','Don''t worry about mistakes']::text[], ARRAY['der Beruf','die Firma','der Kollege','das Büro','die Besprechung']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-0000659a1730', 'Writing: Im Büro', 'Write a short text about Office Life. Use at least 5 vocabulary words from this lesson.', ARRAY['Start with a greeting','Use the vocabulary from this lesson','Check your grammar']::text[], ARRAY['der Beruf','die Firma','der Kollege']::text[], '["Sentence structure","Vocabulary usage"]', 50, 150, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000659a1730', 'Im Büro — Roleplay', 'Office Life', 'Student', 'Teacher', 'Practice conversation about Office Life', 'Hallo! Lass uns über dieses Thema sprechen.', 'beginner', 1, ARRAY['der Beruf','die Firma','der Kollege','das Büro','die Besprechung','der Chef','das Gehalt','die Stelle']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000659a1730', 'Im Büro — Advanced Roleplay', 'Office Life', 'Customer', 'Assistant', 'Extended conversation about Office Life', 'Guten Tag! Wie kann ich Ihnen helfen?', 'beginner', 2, ARRAY['der Beruf','die Firma','der Kollege','das Büro','die Besprechung','der Chef','das Gehalt','die Stelle']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-0000659a1730', 'Im Büro — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Im Büro".', 'Creative practice for Office Life', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-0000659a1730', 'Homework: Im Büro', 'Complete these tasks to reinforce "Im Büro".', 'mixed', '[{"description":"Review all vocabulary from this lesson"},{"description":"Write 5 sentences using the grammar structure"},{"description":"Practice the dialogue aloud"}]', 35, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-0000659a1730', 'In this lesson you learned about Office Life. You practiced vocabulary related to work and grammar structure present_tense.', '["Mastered vocabulary about Office Life","Applied present_tense correctly","Read and understood a text about Office Life","Practiced speaking about Office Life"]', '[{"title":"Im Büro Review","summary":"present_tense — the main grammar focus of this lesson."}]', ARRAY['Office Life core vocabulary','work key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)','Verb is always in second position']::text[], ARRAY['Practice 15-20 minutes daily','Use new vocabulary in real sentences','Speak out loud to improve pronunciation']::text[]);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000659a1730', 'Pronunciation: German pronunciation basics', 'German is mostly phonetic. Pronounce each letter.

Common mistake for Arabic speakers: Pronouncing every letter as in English.', '[]', '[{"german":"ja","arabic":"","english":"","phonetic":"/jaː/"},{"german":"nein","arabic":"","english":"","phonetic":"/naɪn/"}]', '[]', 10);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000659a1730', 'translation', 'Translate to German: "This is a translation exercise."', '[]', 'Das ist eine Übersetzungsübung.', 'Use "das ist" for "this is"', 1, 40);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000659a1730', 'Culture: Office Life in German-Speaking Countries', 'Learn how Office Life is approached in German culture.

تعلم كيف يتم التعامل مع Office Life في الثقافة الألمانية.', '["Tip: Be direct and polite","Tip: Use formal language with strangers","Tip: Respect punctuality"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000659a1730', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Common error for Arabic speakers","correction":"Correct version","explanation":"Explanation of the error"}]', 30);

  -- Lesson 5: Was sind Sie von Beruf? (L-A1-05-05)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-0000659a1731', '00000000-0000-4000-a000-000039b4d362', 'Was sind Sie von Beruf?', 'Practice talking about professions and workplaces.', 'Talking About Jobs', 'speaking', '["Understand and use vocabulary related to Talking About Jobs","Apply sein_haben correctly","Read and comprehend a text about Talking About Jobs","Listen and understand a dialogue about Talking About Jobs","Speak about Talking About Jobs in simple sentences","Write a short text about Talking About Jobs"]', 20, 5, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-0000659a1731', 'der Beruf', 'المهنة', 'profession', 'der', 'die Berufe', 'noun', 'Was ist dein Beruf?', 'What is your profession?', 'A1', 1),
  ('00000000-0000-4000-a000-0000659a1731', 'die Firma', 'الشركة', 'company', 'die', 'die Firmen', 'noun', 'Die Firma ist in Berlin.', 'The company is in Berlin.', 'A1', 2),
  ('00000000-0000-4000-a000-0000659a1731', 'der Kollege', 'الزميل', 'colleague', 'der', 'die Kollegen', 'noun', 'Mein Kollege hilft mir.', 'My colleague helps me.', 'A1', 3),
  ('00000000-0000-4000-a000-0000659a1731', 'das Büro', 'المكتب', 'office', 'das', 'die Büros', 'noun', 'Das Büro ist im dritten Stock.', 'The office is on the third floor.', 'A1', 4),
  ('00000000-0000-4000-a000-0000659a1731', 'die Besprechung', 'الاجتماع', 'meeting', 'die', 'die Besprechungen', 'noun', 'Wir haben eine Besprechung.', 'We have a meeting.', 'B1', 5),
  ('00000000-0000-4000-a000-0000659a1731', 'der Chef', 'المدير', 'boss', 'der', 'die Chefs', 'noun', 'Mein Chef ist freundlich.', 'My boss is friendly.', 'A1', 6),
  ('00000000-0000-4000-a000-0000659a1731', 'das Gehalt', 'الراتب', 'salary', 'das', 'die Gehälter', 'noun', 'Das Gehalt ist gut.', 'The salary is good.', 'B1', 7),
  ('00000000-0000-4000-a000-0000659a1731', 'die Stelle', 'الوظيفة', 'position', 'die', 'die Stellen', 'noun', 'Ich suche eine neue Stelle.', 'I am looking for a new position.', 'B1', 8),
  ('00000000-0000-4000-a000-0000659a1731', 'Hallo', 'مرحباً', 'hello', NULL, NULL, 'interjection', 'Hallo, wie geht es dir?', 'Hello, how are you?', 'A1', 9),
  ('00000000-0000-4000-a000-0000659a1731', 'Guten Morgen', 'صباح الخير', 'good morning', NULL, NULL, 'phrase', 'Guten Morgen, Herr Müller.', 'Good morning, Mr. Müller.', 'A1', 10),
  ('00000000-0000-4000-a000-0000659a1731', 'Guten Tag', 'نهارك سعيد', 'good day', NULL, NULL, 'phrase', 'Guten Tag, Frau Schmidt.', 'Good day, Mrs. Schmidt.', 'A1', 11),
  ('00000000-0000-4000-a000-0000659a1731', 'Tschüss', 'مع السلامة', 'bye', NULL, NULL, 'interjection', 'Tschüss, bis morgen!', 'Bye, see you tomorrow!', 'A1', 12),
  ('00000000-0000-4000-a000-0000659a1731', 'der Name', 'الاسم', 'name', 'der', 'die Namen', 'noun', 'Mein Name ist Anna.', 'My name is Anna.', 'A1', 13),
  ('00000000-0000-4000-a000-0000659a1731', 'wie', 'كيف', 'how', NULL, NULL, 'adverb', 'Wie heißt du?', 'What is your name?', 'A1', 14),
  ('00000000-0000-4000-a000-0000659a1731', 'freuen', 'يسر', 'to be pleased', NULL, NULL, 'verb', 'Ich freue mich, dich kennenzulernen.', 'I am pleased to meet you.', 'A1', 15),
  ('00000000-0000-4000-a000-0000659a1731', 'Willkommen', 'أهلاً وسهلاً', 'welcome', NULL, NULL, 'interjection', 'Willkommen in Deutschland!', 'Welcome to Germany!', 'A1', 16),
  ('00000000-0000-4000-a000-0000659a1731', 'die Familie', 'العائلة', 'family', 'die', 'die Familien', 'noun', 'Meine Familie ist groß.', 'My family is big.', 'A1', 17),
  ('00000000-0000-4000-a000-0000659a1731', 'der Vater', 'الأب', 'father', 'der', 'die Väter', 'noun', 'Mein Vater ist Ingenieur.', 'My father is an engineer.', 'A1', 18),
  ('00000000-0000-4000-a000-0000659a1731', 'die Mutter', 'الأم', 'mother', 'die', 'die Mütter', 'noun', 'Meine Mutter kocht gut.', 'My mother cooks well.', 'A1', 19),
  ('00000000-0000-4000-a000-0000659a1731', 'der Bruder', 'الأخ', 'brother', 'der', 'die Brüder', 'noun', 'Mein Bruder ist 15 Jahre alt.', 'My brother is 15 years old.', 'A1', 20),
  ('00000000-0000-4000-a000-0000659a1731', 'die Schwester', 'الأخت', 'sister', 'die', 'die Schwestern', 'noun', 'Meine Schwester studiert Medizin.', 'My sister studies medicine.', 'A1', 21),
  ('00000000-0000-4000-a000-0000659a1731', 'die Geschwister', 'الإخوة', 'siblings', 'die', NULL, 'noun', 'Hast du Geschwister?', 'Do you have siblings?', 'A1', 22),
  ('00000000-0000-4000-a000-0000659a1731', 'der Sohn', 'الابن', 'son', 'der', 'die Söhne', 'noun', 'Wir haben einen Sohn.', 'We have a son.', 'A1', 23),
  ('00000000-0000-4000-a000-0000659a1731', 'die Tochter', 'الابنة', 'daughter', 'die', 'die Töchter', 'noun', 'Meine Tochter geht zur Schule.', 'My daughter goes to school.', 'A1', 24),
  ('00000000-0000-4000-a000-0000659a1731', 'die Großeltern', 'الأجداد', 'grandparents', 'die', NULL, 'noun', 'Meine Großeltern wohnen auf dem Land.', 'My grandparents live in the countryside.', 'A1', 25),
  ('00000000-0000-4000-a000-0000659a1731', 'verheiratet', 'متزوج', 'married', NULL, NULL, 'adjective', 'Meine Eltern sind verheiratet.', 'My parents are married.', 'A1', 26),
  ('00000000-0000-4000-a000-0000659a1731', 'das Brot', 'الخبز', 'bread', 'das', 'die Brote', 'noun', 'Ich kaufe ein Brot.', 'I buy a loaf of bread.', 'A1', 27),
  ('00000000-0000-4000-a000-0000659a1731', 'die Milch', 'الحليب', 'milk', 'die', NULL, 'noun', 'Die Milch ist frisch.', 'The milk is fresh.', 'A1', 28),
  ('00000000-0000-4000-a000-0000659a1731', 'der Käse', 'الجبن', 'cheese', 'der', NULL, 'noun', 'Der Käse schmeckt gut.', 'The cheese tastes good.', 'A1', 29),
  ('00000000-0000-4000-a000-0000659a1731', 'der Apfel', 'التفاح', 'apple', 'der', 'die Äpfel', 'noun', 'Der Apfel ist rot.', 'The apple is red.', 'A1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000659a1731', 'Die Verben "sein" und "haben" (To be and To have) / فعلي "يكون" و "يملك"', '"Sein" (to be) and "haben" (to have) are the two most important irregular verbs in German. They are used as main verbs and also as helping verbs for the perfect tense. You must memorize their forms because they are completely irregular.', '[{"rule":"sein: ich bin, du bist, er/sie/es ist, wir sind, ihr seid, sie/Sie sind","note":"Completely irregular - memorize them!"},{"rule":"haben: ich habe, du hast, er/sie/es hat, wir haben, ihr habt, sie/Sie haben","note":"Stem changes in du and er/sie/es"}]', '[{"german":"Ich bin Student.","arabic":"أنا طالب.","english":"I am a student."},{"german":"Du hast einen Bruder.","arabic":"لديك أخ.","english":"You have a brother."},{"german":"Er ist Arzt.","arabic":"هو طبيب.","english":"He is a doctor."},{"german":"Wir haben Hunger.","arabic":"نحن جائعون.","english":"We are hungry."}]', '[{"mistake":"Ich bin haben","correction":"Ich habe","explanation":"Don''t mix sein and haben. \"Ich habe\" = I have."},{"mistake":"Er hat 20 Jahre","correction":"Er ist 20 Jahre alt","explanation":"For age, use \"sein\" not \"haben\"."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000659a1731', 'multiple_choice', 'What does "der Beruf" mean?', '["The","A","This","That"]', 'The', 'This is a basic vocabulary item.', 1, 1),
  ('00000000-0000-4000-a000-0000659a1731', 'fill_gap', 'Complete with the correct form.', '["Option 1","Option 2","Option 3"]', 'Option 1', 'Practice grammar in context.', 1, 2),
  ('00000000-0000-4000-a000-0000659a1731', 'translation', 'Translate: "I learn German."', '["Ich lerne Deutsch.","Ich lerne Englisch.","Ich lerne Spanisch."]', 'Ich lerne Deutsch.', 'Ich = I, lerne = learn/learning, Deutsch = German.', 2, 3),
  ('00000000-0000-4000-a000-0000659a1731', 'sentence_order', 'Order the sentence.', '[]', 'Ich lerne Deutsch.', 'Subject + verb + object in German.', 2, 4),
  ('00000000-0000-4000-a000-0000659a1731', 'matching', 'Match the words with their meanings.', '["Match pairs correctly"]', 'Correct pairs', 'Test your vocabulary knowledge.', 2, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-0000659a1731', 'multiple_choice', 'What is the main topic of this lesson?', '["Talking About Jobs","Sports","Music","Travel"]', 'Talking About Jobs', 1, 1),
  ('00000000-0000-4000-a000-0000659a1731', 'true_false', 'This lesson teaches vocabulary about Talking About Jobs.', '["True","False"]', 'True', 1, 2),
  ('00000000-0000-4000-a000-0000659a1731', 'true_false', 'German word order is always the same as English.', '["True","False"]', 'False', 1, 3),
  ('00000000-0000-4000-a000-0000659a1731', 'multiple_choice', 'How do you say "please" in German?', '["Danke","Bitte","Tschüss","Hallo"]', 'Bitte', 1, 4),
  ('00000000-0000-4000-a000-0000659a1731', 'multiple_choice', 'Which article is feminine?', '["der","die","das","den"]', 'die', 1, 5),
  ('00000000-0000-4000-a000-0000659a1731', 'fill_blank', 'Ich ___ (to be) Student.', '["bin","bist","ist","sind"]', 'bin', 1, 6),
  ('00000000-0000-4000-a000-0000659a1731', 'multiple_choice', 'What is the correct word order?', '["Ich lerne Deutsch","Ich Deutsch lerne","Lerne ich Deutsch","Deutsch ich lerne"]', 'Ich lerne Deutsch', 1, 7),
  ('00000000-0000-4000-a000-0000659a1731', 'true_false', 'All German nouns are capitalized.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-0000659a1731', 'multiple_choice', 'How do you say "thank you" in German?', '["Bitte","Danke","Tschüss","Hallo"]', 'Danke', 1, 9),
  ('00000000-0000-4000-a000-0000659a1731', 'fill_blank', 'Wo ___ du? (to live)', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 1, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-0000659a1731', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Arbeit und Berufe', 'formal', false, 1),
  ('00000000-0000-4000-a000-0000659a1731', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Arbeit und Berufe', 'informal', false, 2),
  ('00000000-0000-4000-a000-0000659a1731', 'Bitte!', 'Please!', 'من فضلك!', 'Used in Arbeit und Berufe', 'neutral', false, 3),
  ('00000000-0000-4000-a000-0000659a1731', 'Danke!', 'Thanks!', 'شكراً!', 'Used in Arbeit und Berufe', 'neutral', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-0000659a1731', 'Hallo', 'Hello', 'Greeting', 'expression', 1),
  ('00000000-0000-4000-a000-0000659a1731', 'Danke', 'Thanks', 'Politeness', 'expression', 2),
  ('00000000-0000-4000-a000-0000659a1731', 'Bitte', 'Please', 'Politeness', 'expression', 3),
  ('00000000-0000-4000-a000-0000659a1731', 'Tschüss', 'Bye', 'Farewell', 'expression', 4);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-0000659a1731', 'Was sind Sie von Beruf? — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, duration_seconds, speaker_count, scenario) values
  ('00000000-0000-4000-a000-0000659a1731', 'Was sind Sie von Beruf? — Hörverständnis', '[Chef]: Guten Morgen, Herr Schmidt. Haben Sie die Präsentation fertig?

[Angestellter]: Ja, ich habe sie gestern Abend fertig gemacht.

[Chef]: Ausgezeichnet. Wir besprechen die Details um 10 Uhr im Besprechungsraum.

[Angestellter]: Ich bin vorbereitet. Soll ich den Beamer mitbringen?

[Chef]: Ja, gute Idee. Und vergessen Sie die Unterlagen nicht.', '[Chef]: Good morning, Mr. Schmidt. Have you finished the presentation?

[Angestellter]: Yes, I finished it last evening.

[Chef]: Excellent. We will discuss the details at 10 o''clock in the meeting room.

[Angestellter]: I am prepared. Should I bring the projector?

[Chef]: Yes, good idea. And don''t forget the documents.', '[Chef]: صباح الخير سيد شميت. هل انتهيتم من العرض التقديمي؟

[Angestellter]: نعم، أنهيته البارحة مساءً.

[Chef]: ممتاز. سنناقش التفاصيل في الساعة 10 في غرفة الاجتماعات.

[Angestellter]: أنا مستعد. هل أحضر جهاز العرض؟

[Chef]: نعم، فكرة جيدة. ولا تنسوا المستندات.', 60, 2, 'Arbeit und Berufe');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-0000659a1731', 'Speaking: Was sind Sie von Beruf?', 'Practice talking about Talking About Jobs. Answer questions and have a simple conversation.', 'Talking About Jobs', ARRAY['Use full sentences','Speak clearly','Don''t worry about mistakes']::text[], ARRAY['der Beruf','die Firma','der Kollege','das Büro','die Besprechung']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-0000659a1731', 'Writing: Was sind Sie von Beruf?', 'Write a short text about Talking About Jobs. Use at least 5 vocabulary words from this lesson.', ARRAY['Start with a greeting','Use the vocabulary from this lesson','Check your grammar']::text[], ARRAY['der Beruf','die Firma','der Kollege']::text[], '["Sentence structure","Vocabulary usage"]', 50, 150, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000659a1731', 'Was sind Sie von Beruf? — Roleplay', 'Talking About Jobs', 'Student', 'Teacher', 'Practice conversation about Talking About Jobs', 'Hallo! Lass uns über dieses Thema sprechen.', 'beginner', 1, ARRAY['der Beruf','die Firma','der Kollege','das Büro','die Besprechung','der Chef','das Gehalt','die Stelle']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000659a1731', 'Was sind Sie von Beruf? — Advanced Roleplay', 'Talking About Jobs', 'Customer', 'Assistant', 'Extended conversation about Talking About Jobs', 'Guten Tag! Wie kann ich Ihnen helfen?', 'beginner', 2, ARRAY['der Beruf','die Firma','der Kollege','das Büro','die Besprechung','der Chef','das Gehalt','die Stelle']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-0000659a1731', 'Was sind Sie von Beruf? — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Was sind Sie von Beruf?".', 'Creative practice for Talking About Jobs', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-0000659a1731', 'Homework: Was sind Sie von Beruf?', 'Complete these tasks to reinforce "Was sind Sie von Beruf?".', 'mixed', '[{"description":"Review all vocabulary from this lesson"},{"description":"Write 5 sentences using the grammar structure"},{"description":"Practice the dialogue aloud"}]', 35, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-0000659a1731', 'In this lesson you learned about Talking About Jobs. You practiced vocabulary related to work and grammar structure sein_haben.', '["Mastered vocabulary about Talking About Jobs","Applied sein_haben correctly","Read and understood a text about Talking About Jobs","Practiced speaking about Talking About Jobs"]', '[{"title":"Was sind Sie von Beruf? Review","summary":"sein_haben — the main grammar focus of this lesson."}]', ARRAY['Talking About Jobs core vocabulary','work key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)','Verb is always in second position']::text[], ARRAY['Practice 15-20 minutes daily','Use new vocabulary in real sentences','Speak out loud to improve pronunciation']::text[]);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000659a1731', 'Pronunciation: German pronunciation basics', 'German is mostly phonetic. Pronounce each letter.

Common mistake for Arabic speakers: Pronouncing every letter as in English.', '[]', '[{"german":"ja","arabic":"","english":"","phonetic":"/jaː/"},{"german":"nein","arabic":"","english":"","phonetic":"/naɪn/"}]', '[]', 10);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000659a1731', 'translation', 'Translate to German: "This is a translation exercise."', '[]', 'Das ist eine Übersetzungsübung.', 'Use "das ist" for "this is"', 1, 40);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000659a1731', 'Culture: Talking About Jobs in German-Speaking Countries', 'Learn how Talking About Jobs is approached in German culture.

تعلم كيف يتم التعامل مع Talking About Jobs في الثقافة الألمانية.', '["Tip: Be direct and polite","Tip: Use formal language with strangers","Tip: Respect punctuality"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000659a1731', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Common error for Arabic speakers","correction":"Correct version","explanation":"Explanation of the error"}]', 30);

  -- Lesson 6: Test: Arbeit und Berufe (L-A1-05-06)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-0000659a1732', '00000000-0000-4000-a000-000039b4d362', 'Test: Arbeit und Berufe', 'Test your knowledge of Module 5.', 'Module Test', 'test', '["Understand and use vocabulary related to Module Test","Apply present_tense correctly","Read and comprehend a text about Module Test","Listen and understand a dialogue about Module Test","Speak about Module Test in simple sentences","Write a short text about Module Test"]', 20, 6, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-0000659a1732', 'der Beruf', 'المهنة', 'profession', 'der', 'die Berufe', 'noun', 'Was ist dein Beruf?', 'What is your profession?', 'A1', 1),
  ('00000000-0000-4000-a000-0000659a1732', 'die Firma', 'الشركة', 'company', 'die', 'die Firmen', 'noun', 'Die Firma ist in Berlin.', 'The company is in Berlin.', 'A1', 2),
  ('00000000-0000-4000-a000-0000659a1732', 'der Kollege', 'الزميل', 'colleague', 'der', 'die Kollegen', 'noun', 'Mein Kollege hilft mir.', 'My colleague helps me.', 'A1', 3),
  ('00000000-0000-4000-a000-0000659a1732', 'das Büro', 'المكتب', 'office', 'das', 'die Büros', 'noun', 'Das Büro ist im dritten Stock.', 'The office is on the third floor.', 'A1', 4),
  ('00000000-0000-4000-a000-0000659a1732', 'die Besprechung', 'الاجتماع', 'meeting', 'die', 'die Besprechungen', 'noun', 'Wir haben eine Besprechung.', 'We have a meeting.', 'B1', 5),
  ('00000000-0000-4000-a000-0000659a1732', 'der Chef', 'المدير', 'boss', 'der', 'die Chefs', 'noun', 'Mein Chef ist freundlich.', 'My boss is friendly.', 'A1', 6),
  ('00000000-0000-4000-a000-0000659a1732', 'das Gehalt', 'الراتب', 'salary', 'das', 'die Gehälter', 'noun', 'Das Gehalt ist gut.', 'The salary is good.', 'B1', 7),
  ('00000000-0000-4000-a000-0000659a1732', 'die Stelle', 'الوظيفة', 'position', 'die', 'die Stellen', 'noun', 'Ich suche eine neue Stelle.', 'I am looking for a new position.', 'B1', 8),
  ('00000000-0000-4000-a000-0000659a1732', 'Hallo', 'مرحباً', 'hello', NULL, NULL, 'interjection', 'Hallo, wie geht es dir?', 'Hello, how are you?', 'A1', 9),
  ('00000000-0000-4000-a000-0000659a1732', 'Guten Morgen', 'صباح الخير', 'good morning', NULL, NULL, 'phrase', 'Guten Morgen, Herr Müller.', 'Good morning, Mr. Müller.', 'A1', 10),
  ('00000000-0000-4000-a000-0000659a1732', 'Guten Tag', 'نهارك سعيد', 'good day', NULL, NULL, 'phrase', 'Guten Tag, Frau Schmidt.', 'Good day, Mrs. Schmidt.', 'A1', 11),
  ('00000000-0000-4000-a000-0000659a1732', 'Tschüss', 'مع السلامة', 'bye', NULL, NULL, 'interjection', 'Tschüss, bis morgen!', 'Bye, see you tomorrow!', 'A1', 12),
  ('00000000-0000-4000-a000-0000659a1732', 'der Name', 'الاسم', 'name', 'der', 'die Namen', 'noun', 'Mein Name ist Anna.', 'My name is Anna.', 'A1', 13),
  ('00000000-0000-4000-a000-0000659a1732', 'wie', 'كيف', 'how', NULL, NULL, 'adverb', 'Wie heißt du?', 'What is your name?', 'A1', 14),
  ('00000000-0000-4000-a000-0000659a1732', 'freuen', 'يسر', 'to be pleased', NULL, NULL, 'verb', 'Ich freue mich, dich kennenzulernen.', 'I am pleased to meet you.', 'A1', 15),
  ('00000000-0000-4000-a000-0000659a1732', 'Willkommen', 'أهلاً وسهلاً', 'welcome', NULL, NULL, 'interjection', 'Willkommen in Deutschland!', 'Welcome to Germany!', 'A1', 16),
  ('00000000-0000-4000-a000-0000659a1732', 'die Familie', 'العائلة', 'family', 'die', 'die Familien', 'noun', 'Meine Familie ist groß.', 'My family is big.', 'A1', 17),
  ('00000000-0000-4000-a000-0000659a1732', 'der Vater', 'الأب', 'father', 'der', 'die Väter', 'noun', 'Mein Vater ist Ingenieur.', 'My father is an engineer.', 'A1', 18),
  ('00000000-0000-4000-a000-0000659a1732', 'die Mutter', 'الأم', 'mother', 'die', 'die Mütter', 'noun', 'Meine Mutter kocht gut.', 'My mother cooks well.', 'A1', 19),
  ('00000000-0000-4000-a000-0000659a1732', 'der Bruder', 'الأخ', 'brother', 'der', 'die Brüder', 'noun', 'Mein Bruder ist 15 Jahre alt.', 'My brother is 15 years old.', 'A1', 20),
  ('00000000-0000-4000-a000-0000659a1732', 'die Schwester', 'الأخت', 'sister', 'die', 'die Schwestern', 'noun', 'Meine Schwester studiert Medizin.', 'My sister studies medicine.', 'A1', 21),
  ('00000000-0000-4000-a000-0000659a1732', 'die Geschwister', 'الإخوة', 'siblings', 'die', NULL, 'noun', 'Hast du Geschwister?', 'Do you have siblings?', 'A1', 22),
  ('00000000-0000-4000-a000-0000659a1732', 'der Sohn', 'الابن', 'son', 'der', 'die Söhne', 'noun', 'Wir haben einen Sohn.', 'We have a son.', 'A1', 23),
  ('00000000-0000-4000-a000-0000659a1732', 'die Tochter', 'الابنة', 'daughter', 'die', 'die Töchter', 'noun', 'Meine Tochter geht zur Schule.', 'My daughter goes to school.', 'A1', 24),
  ('00000000-0000-4000-a000-0000659a1732', 'die Großeltern', 'الأجداد', 'grandparents', 'die', NULL, 'noun', 'Meine Großeltern wohnen auf dem Land.', 'My grandparents live in the countryside.', 'A1', 25),
  ('00000000-0000-4000-a000-0000659a1732', 'verheiratet', 'متزوج', 'married', NULL, NULL, 'adjective', 'Meine Eltern sind verheiratet.', 'My parents are married.', 'A1', 26),
  ('00000000-0000-4000-a000-0000659a1732', 'das Brot', 'الخبز', 'bread', 'das', 'die Brote', 'noun', 'Ich kaufe ein Brot.', 'I buy a loaf of bread.', 'A1', 27),
  ('00000000-0000-4000-a000-0000659a1732', 'die Milch', 'الحليب', 'milk', 'die', NULL, 'noun', 'Die Milch ist frisch.', 'The milk is fresh.', 'A1', 28),
  ('00000000-0000-4000-a000-0000659a1732', 'der Käse', 'الجبن', 'cheese', 'der', NULL, 'noun', 'Der Käse schmeckt gut.', 'The cheese tastes good.', 'A1', 29),
  ('00000000-0000-4000-a000-0000659a1732', 'der Apfel', 'التفاح', 'apple', 'der', 'die Äpfel', 'noun', 'Der Apfel ist rot.', 'The apple is red.', 'A1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000659a1732', 'Präsens der regelmäßigen Verben (Present Tense) / المضارع للأفعال المنتظمة', 'In German, regular verbs follow a consistent pattern. The infinitive ends in -en. Remove the -en and add the personal endings: ich -e, du -st, er/sie/es -t, wir -en, ihr -t, sie/Sie -en. For most Arabic speakers, this is easier than Arabic verb conjugation because German has fewer forms.', '[{"rule":"ich: stem + e","note":"Ich lerne, ich wohne, ich arbeite"},{"rule":"du: stem + st","note":"Du lernst, du wohnst, du arbeitest"},{"rule":"er/sie/es: stem + t","note":"Er lernt, sie wohnt, es arbeitet"},{"rule":"wir: stem + en","note":"Wir lernen, wir wohnen, wir arbeiten"},{"rule":"ihr: stem + t","note":"Ihr lernt, ihr wohnt, ihr arbeitet"},{"rule":"sie/Sie: stem + en","note":"Sie lernen, Sie wohnen"}]', '[{"german":"Ich lerne Deutsch.","arabic":"أنا أتعلم الألمانية.","english":"I am learning German."},{"german":"Du wohnst in Berlin.","arabic":"أنت تسكن في برلين.","english":"You live in Berlin."},{"german":"Er arbeitet bei Siemens.","arabic":"هو يعمل في سيمنز.","english":"He works at Siemens."}]', '[{"mistake":"Ich lernen Deutsch","correction":"Ich lerne Deutsch","explanation":"After \"ich\" we use the stem + e, not the infinitive."},{"mistake":"Er lerne Deutsch","correction":"Er lernt Deutsch","explanation":"After \"er/sie/es\" we add -t, not -e."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000659a1732', 'multiple_choice', 'What does "der Beruf" mean?', '["The","A","This","That"]', 'The', 'This is a basic vocabulary item.', 1, 1),
  ('00000000-0000-4000-a000-0000659a1732', 'fill_gap', 'Complete with the correct form.', '["Option 1","Option 2","Option 3"]', 'Option 1', 'Practice grammar in context.', 1, 2),
  ('00000000-0000-4000-a000-0000659a1732', 'translation', 'Translate: "I learn German."', '["Ich lerne Deutsch.","Ich lerne Englisch.","Ich lerne Spanisch."]', 'Ich lerne Deutsch.', 'Ich = I, lerne = learn/learning, Deutsch = German.', 2, 3),
  ('00000000-0000-4000-a000-0000659a1732', 'sentence_order', 'Order the sentence.', '[]', 'Ich lerne Deutsch.', 'Subject + verb + object in German.', 2, 4),
  ('00000000-0000-4000-a000-0000659a1732', 'matching', 'Match the words with their meanings.', '["Match pairs correctly"]', 'Correct pairs', 'Test your vocabulary knowledge.', 2, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-0000659a1732', 'multiple_choice', 'What is the main topic of this lesson?', '["Module Test","Sports","Music","Travel"]', 'Module Test', 1, 1),
  ('00000000-0000-4000-a000-0000659a1732', 'true_false', 'This lesson teaches vocabulary about Module Test.', '["True","False"]', 'True', 1, 2),
  ('00000000-0000-4000-a000-0000659a1732', 'true_false', 'German word order is always the same as English.', '["True","False"]', 'False', 1, 3),
  ('00000000-0000-4000-a000-0000659a1732', 'multiple_choice', 'How do you say "please" in German?', '["Danke","Bitte","Tschüss","Hallo"]', 'Bitte', 1, 4),
  ('00000000-0000-4000-a000-0000659a1732', 'multiple_choice', 'Which article is feminine?', '["der","die","das","den"]', 'die', 1, 5),
  ('00000000-0000-4000-a000-0000659a1732', 'fill_blank', 'Ich ___ (to be) Student.', '["bin","bist","ist","sind"]', 'bin', 1, 6),
  ('00000000-0000-4000-a000-0000659a1732', 'multiple_choice', 'What is the correct word order?', '["Ich lerne Deutsch","Ich Deutsch lerne","Lerne ich Deutsch","Deutsch ich lerne"]', 'Ich lerne Deutsch', 1, 7),
  ('00000000-0000-4000-a000-0000659a1732', 'true_false', 'All German nouns are capitalized.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-0000659a1732', 'multiple_choice', 'How do you say "thank you" in German?', '["Bitte","Danke","Tschüss","Hallo"]', 'Danke', 1, 9),
  ('00000000-0000-4000-a000-0000659a1732', 'fill_blank', 'Wo ___ du? (to live)', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 1, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-0000659a1732', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Arbeit und Berufe', 'formal', false, 1),
  ('00000000-0000-4000-a000-0000659a1732', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Arbeit und Berufe', 'informal', false, 2),
  ('00000000-0000-4000-a000-0000659a1732', 'Bitte!', 'Please!', 'من فضلك!', 'Used in Arbeit und Berufe', 'neutral', false, 3),
  ('00000000-0000-4000-a000-0000659a1732', 'Danke!', 'Thanks!', 'شكراً!', 'Used in Arbeit und Berufe', 'neutral', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-0000659a1732', 'Hallo', 'Hello', 'Greeting', 'expression', 1),
  ('00000000-0000-4000-a000-0000659a1732', 'Danke', 'Thanks', 'Politeness', 'expression', 2),
  ('00000000-0000-4000-a000-0000659a1732', 'Bitte', 'Please', 'Politeness', 'expression', 3),
  ('00000000-0000-4000-a000-0000659a1732', 'Tschüss', 'Bye', 'Farewell', 'expression', 4);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-0000659a1732', 'Test: Arbeit und Berufe — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, duration_seconds, speaker_count, scenario) values
  ('00000000-0000-4000-a000-0000659a1732', 'Test: Arbeit und Berufe — Hörverständnis', '[Chef]: Guten Morgen, Herr Schmidt. Haben Sie die Präsentation fertig?

[Angestellter]: Ja, ich habe sie gestern Abend fertig gemacht.

[Chef]: Ausgezeichnet. Wir besprechen die Details um 10 Uhr im Besprechungsraum.

[Angestellter]: Ich bin vorbereitet. Soll ich den Beamer mitbringen?

[Chef]: Ja, gute Idee. Und vergessen Sie die Unterlagen nicht.', '[Chef]: Good morning, Mr. Schmidt. Have you finished the presentation?

[Angestellter]: Yes, I finished it last evening.

[Chef]: Excellent. We will discuss the details at 10 o''clock in the meeting room.

[Angestellter]: I am prepared. Should I bring the projector?

[Chef]: Yes, good idea. And don''t forget the documents.', '[Chef]: صباح الخير سيد شميت. هل انتهيتم من العرض التقديمي؟

[Angestellter]: نعم، أنهيته البارحة مساءً.

[Chef]: ممتاز. سنناقش التفاصيل في الساعة 10 في غرفة الاجتماعات.

[Angestellter]: أنا مستعد. هل أحضر جهاز العرض؟

[Chef]: نعم، فكرة جيدة. ولا تنسوا المستندات.', 60, 2, 'Arbeit und Berufe');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-0000659a1732', 'Speaking: Test: Arbeit und Berufe', 'Practice talking about Module Test. Answer questions and have a simple conversation.', 'Module Test', ARRAY['Use full sentences','Speak clearly','Don''t worry about mistakes']::text[], ARRAY['der Beruf','die Firma','der Kollege','das Büro','die Besprechung']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-0000659a1732', 'Writing: Test: Arbeit und Berufe', 'Write a short text about Module Test. Use at least 5 vocabulary words from this lesson.', ARRAY['Start with a greeting','Use the vocabulary from this lesson','Check your grammar']::text[], ARRAY['der Beruf','die Firma','der Kollege']::text[], '["Sentence structure","Vocabulary usage"]', 50, 150, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000659a1732', 'Test: Arbeit und Berufe — Roleplay', 'Module Test', 'Student', 'Teacher', 'Practice conversation about Module Test', 'Hallo! Lass uns über dieses Thema sprechen.', 'beginner', 1, ARRAY['der Beruf','die Firma','der Kollege','das Büro','die Besprechung','der Chef','das Gehalt','die Stelle']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000659a1732', 'Test: Arbeit und Berufe — Advanced Roleplay', 'Module Test', 'Customer', 'Assistant', 'Extended conversation about Module Test', 'Guten Tag! Wie kann ich Ihnen helfen?', 'beginner', 2, ARRAY['der Beruf','die Firma','der Kollege','das Büro','die Besprechung','der Chef','das Gehalt','die Stelle']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-0000659a1732', 'Test: Arbeit und Berufe — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Test: Arbeit und Berufe".', 'Creative practice for Module Test', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-0000659a1732', 'Homework: Test: Arbeit und Berufe', 'Complete these tasks to reinforce "Test: Arbeit und Berufe".', 'mixed', '[{"description":"Review all vocabulary from this lesson"},{"description":"Write 5 sentences using the grammar structure"},{"description":"Practice the dialogue aloud"}]', 35, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-0000659a1732', 'In this lesson you learned about Module Test. You practiced vocabulary related to work and grammar structure present_tense.', '["Mastered vocabulary about Module Test","Applied present_tense correctly","Read and understood a text about Module Test","Practiced speaking about Module Test"]', '[{"title":"Test: Arbeit und Berufe Review","summary":"present_tense — the main grammar focus of this lesson."}]', ARRAY['Module Test core vocabulary','work key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)','Verb is always in second position']::text[], ARRAY['Practice 15-20 minutes daily','Use new vocabulary in real sentences','Speak out loud to improve pronunciation']::text[]);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000659a1732', 'Pronunciation: German pronunciation basics', 'German is mostly phonetic. Pronounce each letter.

Common mistake for Arabic speakers: Pronouncing every letter as in English.', '[]', '[{"german":"ja","arabic":"","english":"","phonetic":"/jaː/"},{"german":"nein","arabic":"","english":"","phonetic":"/naɪn/"}]', '[]', 10);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000659a1732', 'translation', 'Translate to German: "This is a translation exercise."', '[]', 'Das ist eine Übersetzungsübung.', 'Use "das ist" for "this is"', 1, 40);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000659a1732', 'Culture: Module Test in German-Speaking Countries', 'Learn how Module Test is approached in German culture.

تعلم كيف يتم التعامل مع Module Test في الثقافة الألمانية.', '["Tip: Be direct and polite","Tip: Use formal language with strangers","Tip: Respect punctuality"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000659a1732', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Common error for Arabic speakers","correction":"Correct version","explanation":"Explanation of the error"}]', 30);

  -- Module 6: Reisen und Freizeit
  insert into public.course_modules (id, level_id, title, description, objectives, order_index, estimated_hours, is_published)
  values ('00000000-0000-4000-a000-000039b4d363', 'A1', 'Reisen und Freizeit', 'Learn travel vocabulary, transportation, and leisure activities.', '["Book accommodations and transportation","Ask for and give directions","Talk about hobbies and free time","Use separable prefix verbs","Use \"gern\" to express likes"]', 6, 5, true)
  on conflict (id) do nothing;

  -- Lesson 1: Verkehrsmittel (L-A1-06-01)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-0000659a8b8c', '00000000-0000-4000-a000-000039b4d363', 'Verkehrsmittel', 'Learn transportation vocabulary: trains, buses, cars, planes.', 'Transportation', 'vocabulary', '["Understand and use vocabulary related to Transportation","Apply present_tense correctly","Read and comprehend a text about Transportation","Listen and understand a dialogue about Transportation","Speak about Transportation in simple sentences","Write a short text about Transportation"]', 30, 1, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-0000659a8b8c', 'die Reise', 'الرحلة', 'trip', 'die', 'die Reisen', 'noun', 'Die Reise nach München war schön.', 'The trip to Munich was nice.', 'A1', 1),
  ('00000000-0000-4000-a000-0000659a8b8c', 'der Zug', 'القطار', 'train', 'der', 'die Züge', 'noun', 'Der Zug kommt um 10 Uhr an.', 'The train arrives at 10 o''clock.', 'A1', 2),
  ('00000000-0000-4000-a000-0000659a8b8c', 'das Ticket', 'التذكرة', 'ticket', 'das', 'die Tickets', 'noun', 'Ein Ticket nach Berlin, bitte.', 'A ticket to Berlin, please.', 'A1', 3),
  ('00000000-0000-4000-a000-0000659a8b8c', 'der Bahnhof', 'محطة القطار', 'train station', 'der', 'die Bahnhöfe', 'noun', 'Der Bahnhof ist groß.', 'The train station is big.', 'A1', 4),
  ('00000000-0000-4000-a000-0000659a8b8c', 'der Flughafen', 'المطار', 'airport', 'der', 'die Flughäfen', 'noun', 'Ich fahre zum Flughafen.', 'I drive to the airport.', 'A1', 5),
  ('00000000-0000-4000-a000-0000659a8b8c', 'das Hotel', 'الفندق', 'hotel', 'das', 'die Hotels', 'noun', 'Das Hotel ist günstig.', 'The hotel is affordable.', 'A1', 6),
  ('00000000-0000-4000-a000-0000659a8b8c', 'der Pass', 'جواز السفر', 'passport', 'der', 'die Pässe', 'noun', 'Ich brauche meinen Pass.', 'I need my passport.', 'A1', 7),
  ('00000000-0000-4000-a000-0000659a8b8c', 'der Koffer', 'الحقيبة', 'suitcase', 'der', 'die Koffer', 'noun', 'Mein Koffer ist schwer.', 'My suitcase is heavy.', 'A1', 8),
  ('00000000-0000-4000-a000-0000659a8b8c', 'Hallo', 'مرحباً', 'hello', NULL, NULL, 'interjection', 'Hallo, wie geht es dir?', 'Hello, how are you?', 'A1', 9),
  ('00000000-0000-4000-a000-0000659a8b8c', 'Guten Morgen', 'صباح الخير', 'good morning', NULL, NULL, 'phrase', 'Guten Morgen, Herr Müller.', 'Good morning, Mr. Müller.', 'A1', 10),
  ('00000000-0000-4000-a000-0000659a8b8c', 'Guten Tag', 'نهارك سعيد', 'good day', NULL, NULL, 'phrase', 'Guten Tag, Frau Schmidt.', 'Good day, Mrs. Schmidt.', 'A1', 11),
  ('00000000-0000-4000-a000-0000659a8b8c', 'Tschüss', 'مع السلامة', 'bye', NULL, NULL, 'interjection', 'Tschüss, bis morgen!', 'Bye, see you tomorrow!', 'A1', 12),
  ('00000000-0000-4000-a000-0000659a8b8c', 'der Name', 'الاسم', 'name', 'der', 'die Namen', 'noun', 'Mein Name ist Anna.', 'My name is Anna.', 'A1', 13),
  ('00000000-0000-4000-a000-0000659a8b8c', 'wie', 'كيف', 'how', NULL, NULL, 'adverb', 'Wie heißt du?', 'What is your name?', 'A1', 14),
  ('00000000-0000-4000-a000-0000659a8b8c', 'freuen', 'يسر', 'to be pleased', NULL, NULL, 'verb', 'Ich freue mich, dich kennenzulernen.', 'I am pleased to meet you.', 'A1', 15),
  ('00000000-0000-4000-a000-0000659a8b8c', 'Willkommen', 'أهلاً وسهلاً', 'welcome', NULL, NULL, 'interjection', 'Willkommen in Deutschland!', 'Welcome to Germany!', 'A1', 16),
  ('00000000-0000-4000-a000-0000659a8b8c', 'die Familie', 'العائلة', 'family', 'die', 'die Familien', 'noun', 'Meine Familie ist groß.', 'My family is big.', 'A1', 17),
  ('00000000-0000-4000-a000-0000659a8b8c', 'der Vater', 'الأب', 'father', 'der', 'die Väter', 'noun', 'Mein Vater ist Ingenieur.', 'My father is an engineer.', 'A1', 18),
  ('00000000-0000-4000-a000-0000659a8b8c', 'die Mutter', 'الأم', 'mother', 'die', 'die Mütter', 'noun', 'Meine Mutter kocht gut.', 'My mother cooks well.', 'A1', 19),
  ('00000000-0000-4000-a000-0000659a8b8c', 'der Bruder', 'الأخ', 'brother', 'der', 'die Brüder', 'noun', 'Mein Bruder ist 15 Jahre alt.', 'My brother is 15 years old.', 'A1', 20),
  ('00000000-0000-4000-a000-0000659a8b8c', 'die Schwester', 'الأخت', 'sister', 'die', 'die Schwestern', 'noun', 'Meine Schwester studiert Medizin.', 'My sister studies medicine.', 'A1', 21),
  ('00000000-0000-4000-a000-0000659a8b8c', 'die Geschwister', 'الإخوة', 'siblings', 'die', NULL, 'noun', 'Hast du Geschwister?', 'Do you have siblings?', 'A1', 22),
  ('00000000-0000-4000-a000-0000659a8b8c', 'der Sohn', 'الابن', 'son', 'der', 'die Söhne', 'noun', 'Wir haben einen Sohn.', 'We have a son.', 'A1', 23),
  ('00000000-0000-4000-a000-0000659a8b8c', 'die Tochter', 'الابنة', 'daughter', 'die', 'die Töchter', 'noun', 'Meine Tochter geht zur Schule.', 'My daughter goes to school.', 'A1', 24),
  ('00000000-0000-4000-a000-0000659a8b8c', 'die Großeltern', 'الأجداد', 'grandparents', 'die', NULL, 'noun', 'Meine Großeltern wohnen auf dem Land.', 'My grandparents live in the countryside.', 'A1', 25),
  ('00000000-0000-4000-a000-0000659a8b8c', 'verheiratet', 'متزوج', 'married', NULL, NULL, 'adjective', 'Meine Eltern sind verheiratet.', 'My parents are married.', 'A1', 26),
  ('00000000-0000-4000-a000-0000659a8b8c', 'das Brot', 'الخبز', 'bread', 'das', 'die Brote', 'noun', 'Ich kaufe ein Brot.', 'I buy a loaf of bread.', 'A1', 27),
  ('00000000-0000-4000-a000-0000659a8b8c', 'die Milch', 'الحليب', 'milk', 'die', NULL, 'noun', 'Die Milch ist frisch.', 'The milk is fresh.', 'A1', 28),
  ('00000000-0000-4000-a000-0000659a8b8c', 'der Käse', 'الجبن', 'cheese', 'der', NULL, 'noun', 'Der Käse schmeckt gut.', 'The cheese tastes good.', 'A1', 29),
  ('00000000-0000-4000-a000-0000659a8b8c', 'der Apfel', 'التفاح', 'apple', 'der', 'die Äpfel', 'noun', 'Der Apfel ist rot.', 'The apple is red.', 'A1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000659a8b8c', 'Präsens der regelmäßigen Verben (Present Tense) / المضارع للأفعال المنتظمة', 'In German, regular verbs follow a consistent pattern. The infinitive ends in -en. Remove the -en and add the personal endings: ich -e, du -st, er/sie/es -t, wir -en, ihr -t, sie/Sie -en. For most Arabic speakers, this is easier than Arabic verb conjugation because German has fewer forms.', '[{"rule":"ich: stem + e","note":"Ich lerne, ich wohne, ich arbeite"},{"rule":"du: stem + st","note":"Du lernst, du wohnst, du arbeitest"},{"rule":"er/sie/es: stem + t","note":"Er lernt, sie wohnt, es arbeitet"},{"rule":"wir: stem + en","note":"Wir lernen, wir wohnen, wir arbeiten"},{"rule":"ihr: stem + t","note":"Ihr lernt, ihr wohnt, ihr arbeitet"},{"rule":"sie/Sie: stem + en","note":"Sie lernen, Sie wohnen"}]', '[{"german":"Ich lerne Deutsch.","arabic":"أنا أتعلم الألمانية.","english":"I am learning German."},{"german":"Du wohnst in Berlin.","arabic":"أنت تسكن في برلين.","english":"You live in Berlin."},{"german":"Er arbeitet bei Siemens.","arabic":"هو يعمل في سيمنز.","english":"He works at Siemens."}]', '[{"mistake":"Ich lernen Deutsch","correction":"Ich lerne Deutsch","explanation":"After \"ich\" we use the stem + e, not the infinitive."},{"mistake":"Er lerne Deutsch","correction":"Er lernt Deutsch","explanation":"After \"er/sie/es\" we add -t, not -e."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000659a8b8c', 'multiple_choice', 'What does "die Reise" mean?', '["The","A","This","That"]', 'The', 'This is a basic vocabulary item.', 1, 1),
  ('00000000-0000-4000-a000-0000659a8b8c', 'fill_gap', 'Complete with the correct form.', '["Option 1","Option 2","Option 3"]', 'Option 1', 'Practice grammar in context.', 1, 2),
  ('00000000-0000-4000-a000-0000659a8b8c', 'translation', 'Translate: "I learn German."', '["Ich lerne Deutsch.","Ich lerne Englisch.","Ich lerne Spanisch."]', 'Ich lerne Deutsch.', 'Ich = I, lerne = learn/learning, Deutsch = German.', 2, 3),
  ('00000000-0000-4000-a000-0000659a8b8c', 'sentence_order', 'Order the sentence.', '[]', 'Ich lerne Deutsch.', 'Subject + verb + object in German.', 2, 4),
  ('00000000-0000-4000-a000-0000659a8b8c', 'matching', 'Match the words with their meanings.', '["Match pairs correctly"]', 'Correct pairs', 'Test your vocabulary knowledge.', 2, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-0000659a8b8c', 'multiple_choice', 'What is the main topic of this lesson?', '["Transportation","Sports","Music","Travel"]', 'Transportation', 1, 1),
  ('00000000-0000-4000-a000-0000659a8b8c', 'true_false', 'This lesson teaches vocabulary about Transportation.', '["True","False"]', 'True', 1, 2),
  ('00000000-0000-4000-a000-0000659a8b8c', 'true_false', 'German word order is always the same as English.', '["True","False"]', 'False', 1, 3),
  ('00000000-0000-4000-a000-0000659a8b8c', 'multiple_choice', 'How do you say "please" in German?', '["Danke","Bitte","Tschüss","Hallo"]', 'Bitte', 1, 4),
  ('00000000-0000-4000-a000-0000659a8b8c', 'multiple_choice', 'Which article is feminine?', '["der","die","das","den"]', 'die', 1, 5),
  ('00000000-0000-4000-a000-0000659a8b8c', 'fill_blank', 'Ich ___ (to be) Student.', '["bin","bist","ist","sind"]', 'bin', 1, 6),
  ('00000000-0000-4000-a000-0000659a8b8c', 'multiple_choice', 'What is the correct word order?', '["Ich lerne Deutsch","Ich Deutsch lerne","Lerne ich Deutsch","Deutsch ich lerne"]', 'Ich lerne Deutsch', 1, 7),
  ('00000000-0000-4000-a000-0000659a8b8c', 'true_false', 'All German nouns are capitalized.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-0000659a8b8c', 'multiple_choice', 'How do you say "thank you" in German?', '["Bitte","Danke","Tschüss","Hallo"]', 'Danke', 1, 9),
  ('00000000-0000-4000-a000-0000659a8b8c', 'fill_blank', 'Wo ___ du? (to live)', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 1, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-0000659a8b8c', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Reisen und Freizeit', 'formal', false, 1),
  ('00000000-0000-4000-a000-0000659a8b8c', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Reisen und Freizeit', 'informal', false, 2),
  ('00000000-0000-4000-a000-0000659a8b8c', 'Bitte!', 'Please!', 'من فضلك!', 'Used in Reisen und Freizeit', 'neutral', false, 3),
  ('00000000-0000-4000-a000-0000659a8b8c', 'Danke!', 'Thanks!', 'شكراً!', 'Used in Reisen und Freizeit', 'neutral', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-0000659a8b8c', 'Hallo', 'Hello', 'Greeting', 'expression', 1),
  ('00000000-0000-4000-a000-0000659a8b8c', 'Danke', 'Thanks', 'Politeness', 'expression', 2),
  ('00000000-0000-4000-a000-0000659a8b8c', 'Bitte', 'Please', 'Politeness', 'expression', 3),
  ('00000000-0000-4000-a000-0000659a8b8c', 'Tschüss', 'Bye', 'Farewell', 'expression', 4);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-0000659a8b8c', 'Verkehrsmittel — Leseübung', 'Nächste Woche mache ich eine Reise nach München. Ich fahre mit dem Zug. Ich kaufe ein Ticket am Bahnhof. Der Zug fährt um 8 Uhr ab. Die Fahrt dauert 4 Stunden. In München besuche ich meine Tante. Sie wohnt in der Nähe des Hauptbahnhofs. Wir gehen zusammen in ein Restaurant. Dann besuchen wir das Deutsche Museum. Die Reise wird schön.', 'Next week I am taking a trip to Munich. I am going by train. I buy a ticket at the train station. The train departs at 8 o''clock. The journey takes 4 hours. In Munich I visit my aunt. She lives near the main train station. We go to a restaurant together. Then we visit the German Museum. The trip will be nice.', 'الأسبوع القادم سأسافر إلى ميونخ. سأذهب بالقطار. أشتري تذكرة من محطة القطار. القطار يغادر في الساعة 8. الرحلة تستغرق 4 ساعات. في ميونخ أزور عمتي. تسكن بالقرب من المحطة الرئيسية. نذهب معاً إلى مطعم. ثم نزور المتحف الألماني. الرحلة ستكون جميلة.', 60, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, duration_seconds, speaker_count, scenario) values
  ('00000000-0000-4000-a000-0000659a8b8c', 'Verkehrsmittel — Hörverständnis', '[Kunde]: Guten Tag! Ich möchte eine Fahrkarte nach München kaufen.

[Mitarbeiter]: Einfach oder hin und zurück?

[Kunde]: Hin und zurück, bitte. Zweite Klasse.

[Mitarbeiter]: Das macht 98 Euro. Mit BahnCard 25 bekommen Sie 25 Prozent Rabatt.

[Kunde]: Ich habe eine BahnCard. Hier ist sie.

[Mitarbeiter]: Dann kostet es 73,50 Euro. Der Zug fährt um 10 Uhr ab.', '[Kunde]: Good day! I would like to buy a ticket to Munich.

[Mitarbeiter]: One way or round trip?

[Kunde]: Round trip, please. Second class.

[Mitarbeiter]: That comes to 98 euros. With BahnCard 25 you get 25 percent discount.

[Kunde]: I have a BahnCard. Here it is.

[Mitarbeiter]: Then it costs 73.50 euros. The train departs at 10 o''clock.', '[Kunde]: نهارك سعيد! أريد شراء تذكرة إلى ميونخ.

[Mitarbeiter]: ذهاب أم ذهاب وعودة؟

[Kunde]: ذهاب وعودة من فضلك. الدرجة الثانية.

[Mitarbeiter]: المجموع 98 يورو. مع بطاقة السكة الحديد 25 تحصلون على خصم 25 بالمئة.

[Kunde]: لدي بطاقة السكة الحديد. ها هي.

[Mitarbeiter]: إذاً التكلفة 73.50 يورو. القطار يغادر في الساعة 10.', 72, 2, 'Reisen und Freizeit');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-0000659a8b8c', 'Speaking: Verkehrsmittel', 'Practice talking about Transportation. Answer questions and have a simple conversation.', 'Transportation', ARRAY['Use full sentences','Speak clearly','Don''t worry about mistakes']::text[], ARRAY['die Reise','der Zug','das Ticket','der Bahnhof','der Flughafen']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-0000659a8b8c', 'Writing: Verkehrsmittel', 'Write a short text about Transportation. Use at least 5 vocabulary words from this lesson.', ARRAY['Start with a greeting','Use the vocabulary from this lesson','Check your grammar']::text[], ARRAY['die Reise','der Zug','das Ticket']::text[], '["Sentence structure","Vocabulary usage"]', 50, 150, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000659a8b8c', 'Verkehrsmittel — Roleplay', 'Transportation', 'Student', 'Teacher', 'Practice conversation about Transportation', 'Hallo! Lass uns über dieses Thema sprechen.', 'beginner', 1, ARRAY['die Reise','der Zug','das Ticket','der Bahnhof','der Flughafen','das Hotel','der Pass','der Koffer']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000659a8b8c', 'Verkehrsmittel — Advanced Roleplay', 'Transportation', 'Customer', 'Assistant', 'Extended conversation about Transportation', 'Guten Tag! Wie kann ich Ihnen helfen?', 'beginner', 2, ARRAY['die Reise','der Zug','das Ticket','der Bahnhof','der Flughafen','das Hotel','der Pass','der Koffer']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-0000659a8b8c', 'Verkehrsmittel — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Verkehrsmittel".', 'Creative practice for Transportation', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-0000659a8b8c', 'Homework: Verkehrsmittel', 'Complete these tasks to reinforce "Verkehrsmittel".', 'mixed', '[{"description":"Review all vocabulary from this lesson"},{"description":"Write 5 sentences using the grammar structure"},{"description":"Practice the dialogue aloud"}]', 35, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-0000659a8b8c', 'In this lesson you learned about Transportation. You practiced vocabulary related to travel and grammar structure present_tense.', '["Mastered vocabulary about Transportation","Applied present_tense correctly","Read and understood a text about Transportation","Practiced speaking about Transportation"]', '[{"title":"Verkehrsmittel Review","summary":"present_tense — the main grammar focus of this lesson."}]', ARRAY['Transportation core vocabulary','travel key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)','Verb is always in second position']::text[], ARRAY['Practice 15-20 minutes daily','Use new vocabulary in real sentences','Speak out loud to improve pronunciation']::text[]);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000659a8b8c', 'Pronunciation: German pronunciation basics', 'German is mostly phonetic. Pronounce each letter.

Common mistake for Arabic speakers: Pronouncing every letter as in English.', '[]', '[{"german":"ja","arabic":"","english":"","phonetic":"/jaː/"},{"german":"nein","arabic":"","english":"","phonetic":"/naɪn/"}]', '[]', 10);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000659a8b8c', 'translation', 'Translate to German: "This is a translation exercise."', '[]', 'Das ist eine Übersetzungsübung.', 'Use "das ist" for "this is"', 1, 40);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000659a8b8c', 'Culture: Transportation in German-Speaking Countries', 'Learn how Transportation is approached in German culture.

تعلم كيف يتم التعامل مع Transportation في الثقافة الألمانية.', '["Tip: Be direct and polite","Tip: Use formal language with strangers","Tip: Respect punctuality"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000659a8b8c', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Common error for Arabic speakers","correction":"Correct version","explanation":"Explanation of the error"}]', 30);

  -- Lesson 2: Am Bahnhof (L-A1-06-02)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-0000659a8b8d', '00000000-0000-4000-a000-000039b4d363', 'Am Bahnhof', 'Learn how to buy tickets and navigate train stations.', 'Train Station', 'dialogue', '["Understand and use vocabulary related to Train Station","Apply present_tense correctly","Read and comprehend a text about Train Station","Listen and understand a dialogue about Train Station","Speak about Train Station in simple sentences","Write a short text about Train Station"]', 30, 2, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-0000659a8b8d', 'die Reise', 'الرحلة', 'trip', 'die', 'die Reisen', 'noun', 'Die Reise nach München war schön.', 'The trip to Munich was nice.', 'A1', 1),
  ('00000000-0000-4000-a000-0000659a8b8d', 'der Zug', 'القطار', 'train', 'der', 'die Züge', 'noun', 'Der Zug kommt um 10 Uhr an.', 'The train arrives at 10 o''clock.', 'A1', 2),
  ('00000000-0000-4000-a000-0000659a8b8d', 'das Ticket', 'التذكرة', 'ticket', 'das', 'die Tickets', 'noun', 'Ein Ticket nach Berlin, bitte.', 'A ticket to Berlin, please.', 'A1', 3),
  ('00000000-0000-4000-a000-0000659a8b8d', 'der Bahnhof', 'محطة القطار', 'train station', 'der', 'die Bahnhöfe', 'noun', 'Der Bahnhof ist groß.', 'The train station is big.', 'A1', 4),
  ('00000000-0000-4000-a000-0000659a8b8d', 'der Flughafen', 'المطار', 'airport', 'der', 'die Flughäfen', 'noun', 'Ich fahre zum Flughafen.', 'I drive to the airport.', 'A1', 5),
  ('00000000-0000-4000-a000-0000659a8b8d', 'das Hotel', 'الفندق', 'hotel', 'das', 'die Hotels', 'noun', 'Das Hotel ist günstig.', 'The hotel is affordable.', 'A1', 6),
  ('00000000-0000-4000-a000-0000659a8b8d', 'der Pass', 'جواز السفر', 'passport', 'der', 'die Pässe', 'noun', 'Ich brauche meinen Pass.', 'I need my passport.', 'A1', 7),
  ('00000000-0000-4000-a000-0000659a8b8d', 'der Koffer', 'الحقيبة', 'suitcase', 'der', 'die Koffer', 'noun', 'Mein Koffer ist schwer.', 'My suitcase is heavy.', 'A1', 8),
  ('00000000-0000-4000-a000-0000659a8b8d', 'Hallo', 'مرحباً', 'hello', NULL, NULL, 'interjection', 'Hallo, wie geht es dir?', 'Hello, how are you?', 'A1', 9),
  ('00000000-0000-4000-a000-0000659a8b8d', 'Guten Morgen', 'صباح الخير', 'good morning', NULL, NULL, 'phrase', 'Guten Morgen, Herr Müller.', 'Good morning, Mr. Müller.', 'A1', 10),
  ('00000000-0000-4000-a000-0000659a8b8d', 'Guten Tag', 'نهارك سعيد', 'good day', NULL, NULL, 'phrase', 'Guten Tag, Frau Schmidt.', 'Good day, Mrs. Schmidt.', 'A1', 11),
  ('00000000-0000-4000-a000-0000659a8b8d', 'Tschüss', 'مع السلامة', 'bye', NULL, NULL, 'interjection', 'Tschüss, bis morgen!', 'Bye, see you tomorrow!', 'A1', 12),
  ('00000000-0000-4000-a000-0000659a8b8d', 'der Name', 'الاسم', 'name', 'der', 'die Namen', 'noun', 'Mein Name ist Anna.', 'My name is Anna.', 'A1', 13),
  ('00000000-0000-4000-a000-0000659a8b8d', 'wie', 'كيف', 'how', NULL, NULL, 'adverb', 'Wie heißt du?', 'What is your name?', 'A1', 14),
  ('00000000-0000-4000-a000-0000659a8b8d', 'freuen', 'يسر', 'to be pleased', NULL, NULL, 'verb', 'Ich freue mich, dich kennenzulernen.', 'I am pleased to meet you.', 'A1', 15),
  ('00000000-0000-4000-a000-0000659a8b8d', 'Willkommen', 'أهلاً وسهلاً', 'welcome', NULL, NULL, 'interjection', 'Willkommen in Deutschland!', 'Welcome to Germany!', 'A1', 16),
  ('00000000-0000-4000-a000-0000659a8b8d', 'die Familie', 'العائلة', 'family', 'die', 'die Familien', 'noun', 'Meine Familie ist groß.', 'My family is big.', 'A1', 17),
  ('00000000-0000-4000-a000-0000659a8b8d', 'der Vater', 'الأب', 'father', 'der', 'die Väter', 'noun', 'Mein Vater ist Ingenieur.', 'My father is an engineer.', 'A1', 18),
  ('00000000-0000-4000-a000-0000659a8b8d', 'die Mutter', 'الأم', 'mother', 'die', 'die Mütter', 'noun', 'Meine Mutter kocht gut.', 'My mother cooks well.', 'A1', 19),
  ('00000000-0000-4000-a000-0000659a8b8d', 'der Bruder', 'الأخ', 'brother', 'der', 'die Brüder', 'noun', 'Mein Bruder ist 15 Jahre alt.', 'My brother is 15 years old.', 'A1', 20),
  ('00000000-0000-4000-a000-0000659a8b8d', 'die Schwester', 'الأخت', 'sister', 'die', 'die Schwestern', 'noun', 'Meine Schwester studiert Medizin.', 'My sister studies medicine.', 'A1', 21),
  ('00000000-0000-4000-a000-0000659a8b8d', 'die Geschwister', 'الإخوة', 'siblings', 'die', NULL, 'noun', 'Hast du Geschwister?', 'Do you have siblings?', 'A1', 22),
  ('00000000-0000-4000-a000-0000659a8b8d', 'der Sohn', 'الابن', 'son', 'der', 'die Söhne', 'noun', 'Wir haben einen Sohn.', 'We have a son.', 'A1', 23),
  ('00000000-0000-4000-a000-0000659a8b8d', 'die Tochter', 'الابنة', 'daughter', 'die', 'die Töchter', 'noun', 'Meine Tochter geht zur Schule.', 'My daughter goes to school.', 'A1', 24),
  ('00000000-0000-4000-a000-0000659a8b8d', 'die Großeltern', 'الأجداد', 'grandparents', 'die', NULL, 'noun', 'Meine Großeltern wohnen auf dem Land.', 'My grandparents live in the countryside.', 'A1', 25),
  ('00000000-0000-4000-a000-0000659a8b8d', 'verheiratet', 'متزوج', 'married', NULL, NULL, 'adjective', 'Meine Eltern sind verheiratet.', 'My parents are married.', 'A1', 26),
  ('00000000-0000-4000-a000-0000659a8b8d', 'das Brot', 'الخبز', 'bread', 'das', 'die Brote', 'noun', 'Ich kaufe ein Brot.', 'I buy a loaf of bread.', 'A1', 27),
  ('00000000-0000-4000-a000-0000659a8b8d', 'die Milch', 'الحليب', 'milk', 'die', NULL, 'noun', 'Die Milch ist frisch.', 'The milk is fresh.', 'A1', 28),
  ('00000000-0000-4000-a000-0000659a8b8d', 'der Käse', 'الجبن', 'cheese', 'der', NULL, 'noun', 'Der Käse schmeckt gut.', 'The cheese tastes good.', 'A1', 29),
  ('00000000-0000-4000-a000-0000659a8b8d', 'der Apfel', 'التفاح', 'apple', 'der', 'die Äpfel', 'noun', 'Der Apfel ist rot.', 'The apple is red.', 'A1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000659a8b8d', 'Präsens der regelmäßigen Verben (Present Tense) / المضارع للأفعال المنتظمة', 'In German, regular verbs follow a consistent pattern. The infinitive ends in -en. Remove the -en and add the personal endings: ich -e, du -st, er/sie/es -t, wir -en, ihr -t, sie/Sie -en. For most Arabic speakers, this is easier than Arabic verb conjugation because German has fewer forms.', '[{"rule":"ich: stem + e","note":"Ich lerne, ich wohne, ich arbeite"},{"rule":"du: stem + st","note":"Du lernst, du wohnst, du arbeitest"},{"rule":"er/sie/es: stem + t","note":"Er lernt, sie wohnt, es arbeitet"},{"rule":"wir: stem + en","note":"Wir lernen, wir wohnen, wir arbeiten"},{"rule":"ihr: stem + t","note":"Ihr lernt, ihr wohnt, ihr arbeitet"},{"rule":"sie/Sie: stem + en","note":"Sie lernen, Sie wohnen"}]', '[{"german":"Ich lerne Deutsch.","arabic":"أنا أتعلم الألمانية.","english":"I am learning German."},{"german":"Du wohnst in Berlin.","arabic":"أنت تسكن في برلين.","english":"You live in Berlin."},{"german":"Er arbeitet bei Siemens.","arabic":"هو يعمل في سيمنز.","english":"He works at Siemens."}]', '[{"mistake":"Ich lernen Deutsch","correction":"Ich lerne Deutsch","explanation":"After \"ich\" we use the stem + e, not the infinitive."},{"mistake":"Er lerne Deutsch","correction":"Er lernt Deutsch","explanation":"After \"er/sie/es\" we add -t, not -e."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000659a8b8d', 'multiple_choice', 'What does "die Reise" mean?', '["The","A","This","That"]', 'The', 'This is a basic vocabulary item.', 1, 1),
  ('00000000-0000-4000-a000-0000659a8b8d', 'fill_gap', 'Complete with the correct form.', '["Option 1","Option 2","Option 3"]', 'Option 1', 'Practice grammar in context.', 1, 2),
  ('00000000-0000-4000-a000-0000659a8b8d', 'translation', 'Translate: "I learn German."', '["Ich lerne Deutsch.","Ich lerne Englisch.","Ich lerne Spanisch."]', 'Ich lerne Deutsch.', 'Ich = I, lerne = learn/learning, Deutsch = German.', 2, 3),
  ('00000000-0000-4000-a000-0000659a8b8d', 'sentence_order', 'Order the sentence.', '[]', 'Ich lerne Deutsch.', 'Subject + verb + object in German.', 2, 4),
  ('00000000-0000-4000-a000-0000659a8b8d', 'matching', 'Match the words with their meanings.', '["Match pairs correctly"]', 'Correct pairs', 'Test your vocabulary knowledge.', 2, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-0000659a8b8d', 'multiple_choice', 'What is the main topic of this lesson?', '["Train Station","Sports","Music","Travel"]', 'Train Station', 1, 1),
  ('00000000-0000-4000-a000-0000659a8b8d', 'true_false', 'This lesson teaches vocabulary about Train Station.', '["True","False"]', 'True', 1, 2),
  ('00000000-0000-4000-a000-0000659a8b8d', 'true_false', 'German word order is always the same as English.', '["True","False"]', 'False', 1, 3),
  ('00000000-0000-4000-a000-0000659a8b8d', 'multiple_choice', 'How do you say "please" in German?', '["Danke","Bitte","Tschüss","Hallo"]', 'Bitte', 1, 4),
  ('00000000-0000-4000-a000-0000659a8b8d', 'multiple_choice', 'Which article is feminine?', '["der","die","das","den"]', 'die', 1, 5),
  ('00000000-0000-4000-a000-0000659a8b8d', 'fill_blank', 'Ich ___ (to be) Student.', '["bin","bist","ist","sind"]', 'bin', 1, 6),
  ('00000000-0000-4000-a000-0000659a8b8d', 'multiple_choice', 'What is the correct word order?', '["Ich lerne Deutsch","Ich Deutsch lerne","Lerne ich Deutsch","Deutsch ich lerne"]', 'Ich lerne Deutsch', 1, 7),
  ('00000000-0000-4000-a000-0000659a8b8d', 'true_false', 'All German nouns are capitalized.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-0000659a8b8d', 'multiple_choice', 'How do you say "thank you" in German?', '["Bitte","Danke","Tschüss","Hallo"]', 'Danke', 1, 9),
  ('00000000-0000-4000-a000-0000659a8b8d', 'fill_blank', 'Wo ___ du? (to live)', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 1, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-0000659a8b8d', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Reisen und Freizeit', 'formal', false, 1),
  ('00000000-0000-4000-a000-0000659a8b8d', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Reisen und Freizeit', 'informal', false, 2),
  ('00000000-0000-4000-a000-0000659a8b8d', 'Bitte!', 'Please!', 'من فضلك!', 'Used in Reisen und Freizeit', 'neutral', false, 3),
  ('00000000-0000-4000-a000-0000659a8b8d', 'Danke!', 'Thanks!', 'شكراً!', 'Used in Reisen und Freizeit', 'neutral', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-0000659a8b8d', 'Hallo', 'Hello', 'Greeting', 'expression', 1),
  ('00000000-0000-4000-a000-0000659a8b8d', 'Danke', 'Thanks', 'Politeness', 'expression', 2),
  ('00000000-0000-4000-a000-0000659a8b8d', 'Bitte', 'Please', 'Politeness', 'expression', 3),
  ('00000000-0000-4000-a000-0000659a8b8d', 'Tschüss', 'Bye', 'Farewell', 'expression', 4);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-0000659a8b8d', 'Am Bahnhof — Leseübung', 'Nächste Woche mache ich eine Reise nach München. Ich fahre mit dem Zug. Ich kaufe ein Ticket am Bahnhof. Der Zug fährt um 8 Uhr ab. Die Fahrt dauert 4 Stunden. In München besuche ich meine Tante. Sie wohnt in der Nähe des Hauptbahnhofs. Wir gehen zusammen in ein Restaurant. Dann besuchen wir das Deutsche Museum. Die Reise wird schön.', 'Next week I am taking a trip to Munich. I am going by train. I buy a ticket at the train station. The train departs at 8 o''clock. The journey takes 4 hours. In Munich I visit my aunt. She lives near the main train station. We go to a restaurant together. Then we visit the German Museum. The trip will be nice.', 'الأسبوع القادم سأسافر إلى ميونخ. سأذهب بالقطار. أشتري تذكرة من محطة القطار. القطار يغادر في الساعة 8. الرحلة تستغرق 4 ساعات. في ميونخ أزور عمتي. تسكن بالقرب من المحطة الرئيسية. نذهب معاً إلى مطعم. ثم نزور المتحف الألماني. الرحلة ستكون جميلة.', 60, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, duration_seconds, speaker_count, scenario) values
  ('00000000-0000-4000-a000-0000659a8b8d', 'Am Bahnhof — Hörverständnis', '[Kunde]: Guten Tag! Ich möchte eine Fahrkarte nach München kaufen.

[Mitarbeiter]: Einfach oder hin und zurück?

[Kunde]: Hin und zurück, bitte. Zweite Klasse.

[Mitarbeiter]: Das macht 98 Euro. Mit BahnCard 25 bekommen Sie 25 Prozent Rabatt.

[Kunde]: Ich habe eine BahnCard. Hier ist sie.

[Mitarbeiter]: Dann kostet es 73,50 Euro. Der Zug fährt um 10 Uhr ab.', '[Kunde]: Good day! I would like to buy a ticket to Munich.

[Mitarbeiter]: One way or round trip?

[Kunde]: Round trip, please. Second class.

[Mitarbeiter]: That comes to 98 euros. With BahnCard 25 you get 25 percent discount.

[Kunde]: I have a BahnCard. Here it is.

[Mitarbeiter]: Then it costs 73.50 euros. The train departs at 10 o''clock.', '[Kunde]: نهارك سعيد! أريد شراء تذكرة إلى ميونخ.

[Mitarbeiter]: ذهاب أم ذهاب وعودة؟

[Kunde]: ذهاب وعودة من فضلك. الدرجة الثانية.

[Mitarbeiter]: المجموع 98 يورو. مع بطاقة السكة الحديد 25 تحصلون على خصم 25 بالمئة.

[Kunde]: لدي بطاقة السكة الحديد. ها هي.

[Mitarbeiter]: إذاً التكلفة 73.50 يورو. القطار يغادر في الساعة 10.', 72, 2, 'Reisen und Freizeit');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-0000659a8b8d', 'Speaking: Am Bahnhof', 'Practice talking about Train Station. Answer questions and have a simple conversation.', 'Train Station', ARRAY['Use full sentences','Speak clearly','Don''t worry about mistakes']::text[], ARRAY['die Reise','der Zug','das Ticket','der Bahnhof','der Flughafen']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-0000659a8b8d', 'Writing: Am Bahnhof', 'Write a short text about Train Station. Use at least 5 vocabulary words from this lesson.', ARRAY['Start with a greeting','Use the vocabulary from this lesson','Check your grammar']::text[], ARRAY['die Reise','der Zug','das Ticket']::text[], '["Sentence structure","Vocabulary usage"]', 50, 150, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000659a8b8d', 'Am Bahnhof — Roleplay', 'Train Station', 'Student', 'Teacher', 'Practice conversation about Train Station', 'Hallo! Lass uns über dieses Thema sprechen.', 'beginner', 1, ARRAY['die Reise','der Zug','das Ticket','der Bahnhof','der Flughafen','das Hotel','der Pass','der Koffer']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000659a8b8d', 'Am Bahnhof — Advanced Roleplay', 'Train Station', 'Customer', 'Assistant', 'Extended conversation about Train Station', 'Guten Tag! Wie kann ich Ihnen helfen?', 'beginner', 2, ARRAY['die Reise','der Zug','das Ticket','der Bahnhof','der Flughafen','das Hotel','der Pass','der Koffer']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-0000659a8b8d', 'Am Bahnhof — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Am Bahnhof".', 'Creative practice for Train Station', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-0000659a8b8d', 'Homework: Am Bahnhof', 'Complete these tasks to reinforce "Am Bahnhof".', 'mixed', '[{"description":"Review all vocabulary from this lesson"},{"description":"Write 5 sentences using the grammar structure"},{"description":"Practice the dialogue aloud"}]', 35, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-0000659a8b8d', 'In this lesson you learned about Train Station. You practiced vocabulary related to travel and grammar structure present_tense.', '["Mastered vocabulary about Train Station","Applied present_tense correctly","Read and understood a text about Train Station","Practiced speaking about Train Station"]', '[{"title":"Am Bahnhof Review","summary":"present_tense — the main grammar focus of this lesson."}]', ARRAY['Train Station core vocabulary','travel key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)','Verb is always in second position']::text[], ARRAY['Practice 15-20 minutes daily','Use new vocabulary in real sentences','Speak out loud to improve pronunciation']::text[]);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000659a8b8d', 'Pronunciation: German pronunciation basics', 'German is mostly phonetic. Pronounce each letter.

Common mistake for Arabic speakers: Pronouncing every letter as in English.', '[]', '[{"german":"ja","arabic":"","english":"","phonetic":"/jaː/"},{"german":"nein","arabic":"","english":"","phonetic":"/naɪn/"}]', '[]', 10);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000659a8b8d', 'translation', 'Translate to German: "This is a translation exercise."', '[]', 'Das ist eine Übersetzungsübung.', 'Use "das ist" for "this is"', 1, 40);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000659a8b8d', 'Culture: Train Station in German-Speaking Countries', 'Learn how Train Station is approached in German culture.

تعلم كيف يتم التعامل مع Train Station في الثقافة الألمانية.', '["Tip: Be direct and polite","Tip: Use formal language with strangers","Tip: Respect punctuality"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000659a8b8d', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Common error for Arabic speakers","correction":"Correct version","explanation":"Explanation of the error"}]', 30);

  -- Lesson 3: Hobbys und Freizeit (L-A1-06-03)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-0000659a8b8e', '00000000-0000-4000-a000-000039b4d363', 'Hobbys und Freizeit', 'Learn vocabulary for hobbies, sports, and free time activities.', 'Hobbies', 'vocabulary', '["Understand and use vocabulary related to Hobbies","Apply present_tense correctly","Read and comprehend a text about Hobbies","Listen and understand a dialogue about Hobbies","Speak about Hobbies in simple sentences","Write a short text about Hobbies"]', 30, 3, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-0000659a8b8e', 'das Hobby', 'الهواية', 'hobby', 'das', 'die Hobbys', 'noun', 'Mein Hobby ist Lesen.', 'My hobby is reading.', 'A1', 1),
  ('00000000-0000-4000-a000-0000659a8b8e', 'der Sport', 'الرياضة', 'sports', 'der', NULL, 'noun', 'Ich treibe gerne Sport.', 'I like to do sports.', 'A1', 2),
  ('00000000-0000-4000-a000-0000659a8b8e', 'lesen', 'يقرأ', 'to read', NULL, NULL, 'verb', 'Ich lese gerne Bücher.', 'I like to read books.', 'A1', 3),
  ('00000000-0000-4000-a000-0000659a8b8e', 'reisen', 'يسافر', 'to travel', NULL, NULL, 'verb', 'Ich reise gerne.', 'I like to travel.', 'A1', 4),
  ('00000000-0000-4000-a000-0000659a8b8e', 'schwimmen', 'يسبح', 'to swim', NULL, NULL, 'verb', 'Ich schwimme im See.', 'I swim in the lake.', 'A1', 5),
  ('00000000-0000-4000-a000-0000659a8b8e', 'der Fußball', 'كرة القدم', 'soccer', 'der', NULL, 'noun', 'Fußball ist beliebt in Deutschland.', 'Soccer is popular in Germany.', 'A1', 6),
  ('00000000-0000-4000-a000-0000659a8b8e', 'die Musik', 'الموسيقى', 'music', 'die', NULL, 'noun', 'Ich höre gerne Musik.', 'I like to listen to music.', 'A1', 7),
  ('00000000-0000-4000-a000-0000659a8b8e', 'Hallo', 'مرحباً', 'hello', NULL, NULL, 'interjection', 'Hallo, wie geht es dir?', 'Hello, how are you?', 'A1', 8),
  ('00000000-0000-4000-a000-0000659a8b8e', 'Guten Morgen', 'صباح الخير', 'good morning', NULL, NULL, 'phrase', 'Guten Morgen, Herr Müller.', 'Good morning, Mr. Müller.', 'A1', 9),
  ('00000000-0000-4000-a000-0000659a8b8e', 'Guten Tag', 'نهارك سعيد', 'good day', NULL, NULL, 'phrase', 'Guten Tag, Frau Schmidt.', 'Good day, Mrs. Schmidt.', 'A1', 10),
  ('00000000-0000-4000-a000-0000659a8b8e', 'Tschüss', 'مع السلامة', 'bye', NULL, NULL, 'interjection', 'Tschüss, bis morgen!', 'Bye, see you tomorrow!', 'A1', 11),
  ('00000000-0000-4000-a000-0000659a8b8e', 'der Name', 'الاسم', 'name', 'der', 'die Namen', 'noun', 'Mein Name ist Anna.', 'My name is Anna.', 'A1', 12),
  ('00000000-0000-4000-a000-0000659a8b8e', 'wie', 'كيف', 'how', NULL, NULL, 'adverb', 'Wie heißt du?', 'What is your name?', 'A1', 13),
  ('00000000-0000-4000-a000-0000659a8b8e', 'freuen', 'يسر', 'to be pleased', NULL, NULL, 'verb', 'Ich freue mich, dich kennenzulernen.', 'I am pleased to meet you.', 'A1', 14),
  ('00000000-0000-4000-a000-0000659a8b8e', 'Willkommen', 'أهلاً وسهلاً', 'welcome', NULL, NULL, 'interjection', 'Willkommen in Deutschland!', 'Welcome to Germany!', 'A1', 15),
  ('00000000-0000-4000-a000-0000659a8b8e', 'die Familie', 'العائلة', 'family', 'die', 'die Familien', 'noun', 'Meine Familie ist groß.', 'My family is big.', 'A1', 16),
  ('00000000-0000-4000-a000-0000659a8b8e', 'der Vater', 'الأب', 'father', 'der', 'die Väter', 'noun', 'Mein Vater ist Ingenieur.', 'My father is an engineer.', 'A1', 17),
  ('00000000-0000-4000-a000-0000659a8b8e', 'die Mutter', 'الأم', 'mother', 'die', 'die Mütter', 'noun', 'Meine Mutter kocht gut.', 'My mother cooks well.', 'A1', 18),
  ('00000000-0000-4000-a000-0000659a8b8e', 'der Bruder', 'الأخ', 'brother', 'der', 'die Brüder', 'noun', 'Mein Bruder ist 15 Jahre alt.', 'My brother is 15 years old.', 'A1', 19),
  ('00000000-0000-4000-a000-0000659a8b8e', 'die Schwester', 'الأخت', 'sister', 'die', 'die Schwestern', 'noun', 'Meine Schwester studiert Medizin.', 'My sister studies medicine.', 'A1', 20),
  ('00000000-0000-4000-a000-0000659a8b8e', 'die Geschwister', 'الإخوة', 'siblings', 'die', NULL, 'noun', 'Hast du Geschwister?', 'Do you have siblings?', 'A1', 21),
  ('00000000-0000-4000-a000-0000659a8b8e', 'der Sohn', 'الابن', 'son', 'der', 'die Söhne', 'noun', 'Wir haben einen Sohn.', 'We have a son.', 'A1', 22),
  ('00000000-0000-4000-a000-0000659a8b8e', 'die Tochter', 'الابنة', 'daughter', 'die', 'die Töchter', 'noun', 'Meine Tochter geht zur Schule.', 'My daughter goes to school.', 'A1', 23),
  ('00000000-0000-4000-a000-0000659a8b8e', 'die Großeltern', 'الأجداد', 'grandparents', 'die', NULL, 'noun', 'Meine Großeltern wohnen auf dem Land.', 'My grandparents live in the countryside.', 'A1', 24),
  ('00000000-0000-4000-a000-0000659a8b8e', 'verheiratet', 'متزوج', 'married', NULL, NULL, 'adjective', 'Meine Eltern sind verheiratet.', 'My parents are married.', 'A1', 25),
  ('00000000-0000-4000-a000-0000659a8b8e', 'das Brot', 'الخبز', 'bread', 'das', 'die Brote', 'noun', 'Ich kaufe ein Brot.', 'I buy a loaf of bread.', 'A1', 26),
  ('00000000-0000-4000-a000-0000659a8b8e', 'die Milch', 'الحليب', 'milk', 'die', NULL, 'noun', 'Die Milch ist frisch.', 'The milk is fresh.', 'A1', 27),
  ('00000000-0000-4000-a000-0000659a8b8e', 'der Käse', 'الجبن', 'cheese', 'der', NULL, 'noun', 'Der Käse schmeckt gut.', 'The cheese tastes good.', 'A1', 28),
  ('00000000-0000-4000-a000-0000659a8b8e', 'der Apfel', 'التفاح', 'apple', 'der', 'die Äpfel', 'noun', 'Der Apfel ist rot.', 'The apple is red.', 'A1', 29),
  ('00000000-0000-4000-a000-0000659a8b8e', 'das Ei', 'البيضة', 'egg', 'das', 'die Eier', 'noun', 'Ich esse ein Ei zum Frühstück.', 'I eat an egg for breakfast.', 'A1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000659a8b8e', 'Präsens der regelmäßigen Verben (Present Tense) / المضارع للأفعال المنتظمة', 'In German, regular verbs follow a consistent pattern. The infinitive ends in -en. Remove the -en and add the personal endings: ich -e, du -st, er/sie/es -t, wir -en, ihr -t, sie/Sie -en. For most Arabic speakers, this is easier than Arabic verb conjugation because German has fewer forms.', '[{"rule":"ich: stem + e","note":"Ich lerne, ich wohne, ich arbeite"},{"rule":"du: stem + st","note":"Du lernst, du wohnst, du arbeitest"},{"rule":"er/sie/es: stem + t","note":"Er lernt, sie wohnt, es arbeitet"},{"rule":"wir: stem + en","note":"Wir lernen, wir wohnen, wir arbeiten"},{"rule":"ihr: stem + t","note":"Ihr lernt, ihr wohnt, ihr arbeitet"},{"rule":"sie/Sie: stem + en","note":"Sie lernen, Sie wohnen"}]', '[{"german":"Ich lerne Deutsch.","arabic":"أنا أتعلم الألمانية.","english":"I am learning German."},{"german":"Du wohnst in Berlin.","arabic":"أنت تسكن في برلين.","english":"You live in Berlin."},{"german":"Er arbeitet bei Siemens.","arabic":"هو يعمل في سيمنز.","english":"He works at Siemens."}]', '[{"mistake":"Ich lernen Deutsch","correction":"Ich lerne Deutsch","explanation":"After \"ich\" we use the stem + e, not the infinitive."},{"mistake":"Er lerne Deutsch","correction":"Er lernt Deutsch","explanation":"After \"er/sie/es\" we add -t, not -e."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000659a8b8e', 'multiple_choice', 'What does "das Hobby" mean?', '["The","A","This","That"]', 'The', 'This is a basic vocabulary item.', 1, 1),
  ('00000000-0000-4000-a000-0000659a8b8e', 'fill_gap', 'Complete with the correct form.', '["Option 1","Option 2","Option 3"]', 'Option 1', 'Practice grammar in context.', 1, 2),
  ('00000000-0000-4000-a000-0000659a8b8e', 'translation', 'Translate: "I learn German."', '["Ich lerne Deutsch.","Ich lerne Englisch.","Ich lerne Spanisch."]', 'Ich lerne Deutsch.', 'Ich = I, lerne = learn/learning, Deutsch = German.', 2, 3),
  ('00000000-0000-4000-a000-0000659a8b8e', 'sentence_order', 'Order the sentence.', '[]', 'Ich lerne Deutsch.', 'Subject + verb + object in German.', 2, 4),
  ('00000000-0000-4000-a000-0000659a8b8e', 'matching', 'Match the words with their meanings.', '["Match pairs correctly"]', 'Correct pairs', 'Test your vocabulary knowledge.', 2, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-0000659a8b8e', 'multiple_choice', 'What is the main topic of this lesson?', '["Hobbies","Sports","Music","Travel"]', 'Hobbies', 1, 1),
  ('00000000-0000-4000-a000-0000659a8b8e', 'true_false', 'This lesson teaches vocabulary about Hobbies.', '["True","False"]', 'True', 1, 2),
  ('00000000-0000-4000-a000-0000659a8b8e', 'true_false', 'German word order is always the same as English.', '["True","False"]', 'False', 1, 3),
  ('00000000-0000-4000-a000-0000659a8b8e', 'multiple_choice', 'How do you say "please" in German?', '["Danke","Bitte","Tschüss","Hallo"]', 'Bitte', 1, 4),
  ('00000000-0000-4000-a000-0000659a8b8e', 'multiple_choice', 'Which article is feminine?', '["der","die","das","den"]', 'die', 1, 5),
  ('00000000-0000-4000-a000-0000659a8b8e', 'fill_blank', 'Ich ___ (to be) Student.', '["bin","bist","ist","sind"]', 'bin', 1, 6),
  ('00000000-0000-4000-a000-0000659a8b8e', 'multiple_choice', 'What is the correct word order?', '["Ich lerne Deutsch","Ich Deutsch lerne","Lerne ich Deutsch","Deutsch ich lerne"]', 'Ich lerne Deutsch', 1, 7),
  ('00000000-0000-4000-a000-0000659a8b8e', 'true_false', 'All German nouns are capitalized.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-0000659a8b8e', 'multiple_choice', 'How do you say "thank you" in German?', '["Bitte","Danke","Tschüss","Hallo"]', 'Danke', 1, 9),
  ('00000000-0000-4000-a000-0000659a8b8e', 'fill_blank', 'Wo ___ du? (to live)', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 1, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-0000659a8b8e', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Reisen und Freizeit', 'formal', false, 1),
  ('00000000-0000-4000-a000-0000659a8b8e', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Reisen und Freizeit', 'informal', false, 2),
  ('00000000-0000-4000-a000-0000659a8b8e', 'Bitte!', 'Please!', 'من فضلك!', 'Used in Reisen und Freizeit', 'neutral', false, 3),
  ('00000000-0000-4000-a000-0000659a8b8e', 'Danke!', 'Thanks!', 'شكراً!', 'Used in Reisen und Freizeit', 'neutral', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-0000659a8b8e', 'Hallo', 'Hello', 'Greeting', 'expression', 1),
  ('00000000-0000-4000-a000-0000659a8b8e', 'Danke', 'Thanks', 'Politeness', 'expression', 2),
  ('00000000-0000-4000-a000-0000659a8b8e', 'Bitte', 'Please', 'Politeness', 'expression', 3),
  ('00000000-0000-4000-a000-0000659a8b8e', 'Tschüss', 'Bye', 'Farewell', 'expression', 4);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-0000659a8b8e', 'Hobbys und Freizeit — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, duration_seconds, speaker_count, scenario) values
  ('00000000-0000-4000-a000-0000659a8b8e', 'Hobbys und Freizeit — Hörverständnis', '[Lehrerin]: Guten Morgen! Heute lernen wir Begrüßungen.

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

[Lehrerin]: ممتاز! إلى الغد!', 72, 2, 'Reisen und Freizeit');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-0000659a8b8e', 'Speaking: Hobbys und Freizeit', 'Practice talking about Hobbies. Answer questions and have a simple conversation.', 'Hobbies', ARRAY['Use full sentences','Speak clearly','Don''t worry about mistakes']::text[], ARRAY['das Hobby','der Sport','lesen','reisen','schwimmen']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-0000659a8b8e', 'Writing: Hobbys und Freizeit', 'Write a short text about Hobbies. Use at least 5 vocabulary words from this lesson.', ARRAY['Start with a greeting','Use the vocabulary from this lesson','Check your grammar']::text[], ARRAY['das Hobby','der Sport','lesen']::text[], '["Sentence structure","Vocabulary usage"]', 50, 150, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000659a8b8e', 'Hobbys und Freizeit — Roleplay', 'Hobbies', 'Student', 'Teacher', 'Practice conversation about Hobbies', 'Hallo! Lass uns über dieses Thema sprechen.', 'beginner', 1, ARRAY['das Hobby','der Sport','lesen','reisen','schwimmen','der Fußball','die Musik','Hallo']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000659a8b8e', 'Hobbys und Freizeit — Advanced Roleplay', 'Hobbies', 'Customer', 'Assistant', 'Extended conversation about Hobbies', 'Guten Tag! Wie kann ich Ihnen helfen?', 'beginner', 2, ARRAY['das Hobby','der Sport','lesen','reisen','schwimmen','der Fußball','die Musik','Hallo']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-0000659a8b8e', 'Hobbys und Freizeit — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Hobbys und Freizeit".', 'Creative practice for Hobbies', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-0000659a8b8e', 'Homework: Hobbys und Freizeit', 'Complete these tasks to reinforce "Hobbys und Freizeit".', 'mixed', '[{"description":"Review all vocabulary from this lesson"},{"description":"Write 5 sentences using the grammar structure"},{"description":"Practice the dialogue aloud"}]', 35, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-0000659a8b8e', 'In this lesson you learned about Hobbies. You practiced vocabulary related to hobbies and grammar structure present_tense.', '["Mastered vocabulary about Hobbies","Applied present_tense correctly","Read and understood a text about Hobbies","Practiced speaking about Hobbies"]', '[{"title":"Hobbys und Freizeit Review","summary":"present_tense — the main grammar focus of this lesson."}]', ARRAY['Hobbies core vocabulary','hobbies key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)','Verb is always in second position']::text[], ARRAY['Practice 15-20 minutes daily','Use new vocabulary in real sentences','Speak out loud to improve pronunciation']::text[]);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000659a8b8e', 'Pronunciation: German pronunciation basics', 'German is mostly phonetic. Pronounce each letter.

Common mistake for Arabic speakers: Pronouncing every letter as in English.', '[]', '[{"german":"ja","arabic":"","english":"","phonetic":"/jaː/"},{"german":"nein","arabic":"","english":"","phonetic":"/naɪn/"}]', '[]', 10);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000659a8b8e', 'translation', 'Translate to German: "This is a translation exercise."', '[]', 'Das ist eine Übersetzungsübung.', 'Use "das ist" for "this is"', 1, 40);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000659a8b8e', 'Culture: Hobbies in German-Speaking Countries', 'Learn how Hobbies is approached in German culture.

تعلم كيف يتم التعامل مع Hobbies في الثقافة الألمانية.', '["Tip: Be direct and polite","Tip: Use formal language with strangers","Tip: Respect punctuality"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000659a8b8e', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Common error for Arabic speakers","correction":"Correct version","explanation":"Explanation of the error"}]', 30);

  -- Lesson 4: Das Wetter (L-A1-06-04)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-0000659a8b8f', '00000000-0000-4000-a000-000039b4d363', 'Das Wetter', 'Learn basic weather expressions and seasons.', 'Weather', 'vocabulary', '["Understand and use vocabulary related to Weather","Apply present_tense correctly","Read and comprehend a text about Weather","Listen and understand a dialogue about Weather","Speak about Weather in simple sentences","Write a short text about Weather"]', 25, 4, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-0000659a8b8f', 'das Wetter', 'الطقس', 'weather', 'das', NULL, 'noun', 'Das Wetter ist schön.', 'The weather is nice.', 'A1', 1),
  ('00000000-0000-4000-a000-0000659a8b8f', 'die Sonne', 'الشمس', 'sun', 'die', NULL, 'noun', 'Die Sonne scheint.', 'The sun is shining.', 'A1', 2),
  ('00000000-0000-4000-a000-0000659a8b8f', 'der Regen', 'المطر', 'rain', 'der', NULL, 'noun', 'Es regnet.', 'It is raining.', 'A1', 3),
  ('00000000-0000-4000-a000-0000659a8b8f', 'der Schnee', 'الثلج', 'snow', 'der', NULL, 'noun', 'Es schneit.', 'It is snowing.', 'A1', 4),
  ('00000000-0000-4000-a000-0000659a8b8f', 'warm', 'دافئ', 'warm', NULL, NULL, 'adjective', 'Heute ist es warm.', 'Today it is warm.', 'A1', 5),
  ('00000000-0000-4000-a000-0000659a8b8f', 'kalt', 'بارد', 'cold', NULL, NULL, 'adjective', 'Im Winter ist es kalt.', 'In winter it is cold.', 'A1', 6),
  ('00000000-0000-4000-a000-0000659a8b8f', 'der Frühling', 'الربيع', 'spring', 'der', NULL, 'noun', 'Im Frühling blühen die Blumen.', 'In spring the flowers bloom.', 'A1', 7),
  ('00000000-0000-4000-a000-0000659a8b8f', 'der Winter', 'الشتاء', 'winter', 'der', NULL, 'noun', 'Im Winter schneit es.', 'In winter it snows.', 'A1', 8),
  ('00000000-0000-4000-a000-0000659a8b8f', 'Hallo', 'مرحباً', 'hello', NULL, NULL, 'interjection', 'Hallo, wie geht es dir?', 'Hello, how are you?', 'A1', 9),
  ('00000000-0000-4000-a000-0000659a8b8f', 'Guten Morgen', 'صباح الخير', 'good morning', NULL, NULL, 'phrase', 'Guten Morgen, Herr Müller.', 'Good morning, Mr. Müller.', 'A1', 10),
  ('00000000-0000-4000-a000-0000659a8b8f', 'Guten Tag', 'نهارك سعيد', 'good day', NULL, NULL, 'phrase', 'Guten Tag, Frau Schmidt.', 'Good day, Mrs. Schmidt.', 'A1', 11),
  ('00000000-0000-4000-a000-0000659a8b8f', 'Tschüss', 'مع السلامة', 'bye', NULL, NULL, 'interjection', 'Tschüss, bis morgen!', 'Bye, see you tomorrow!', 'A1', 12),
  ('00000000-0000-4000-a000-0000659a8b8f', 'der Name', 'الاسم', 'name', 'der', 'die Namen', 'noun', 'Mein Name ist Anna.', 'My name is Anna.', 'A1', 13),
  ('00000000-0000-4000-a000-0000659a8b8f', 'wie', 'كيف', 'how', NULL, NULL, 'adverb', 'Wie heißt du?', 'What is your name?', 'A1', 14),
  ('00000000-0000-4000-a000-0000659a8b8f', 'freuen', 'يسر', 'to be pleased', NULL, NULL, 'verb', 'Ich freue mich, dich kennenzulernen.', 'I am pleased to meet you.', 'A1', 15),
  ('00000000-0000-4000-a000-0000659a8b8f', 'Willkommen', 'أهلاً وسهلاً', 'welcome', NULL, NULL, 'interjection', 'Willkommen in Deutschland!', 'Welcome to Germany!', 'A1', 16),
  ('00000000-0000-4000-a000-0000659a8b8f', 'die Familie', 'العائلة', 'family', 'die', 'die Familien', 'noun', 'Meine Familie ist groß.', 'My family is big.', 'A1', 17),
  ('00000000-0000-4000-a000-0000659a8b8f', 'der Vater', 'الأب', 'father', 'der', 'die Väter', 'noun', 'Mein Vater ist Ingenieur.', 'My father is an engineer.', 'A1', 18),
  ('00000000-0000-4000-a000-0000659a8b8f', 'die Mutter', 'الأم', 'mother', 'die', 'die Mütter', 'noun', 'Meine Mutter kocht gut.', 'My mother cooks well.', 'A1', 19),
  ('00000000-0000-4000-a000-0000659a8b8f', 'der Bruder', 'الأخ', 'brother', 'der', 'die Brüder', 'noun', 'Mein Bruder ist 15 Jahre alt.', 'My brother is 15 years old.', 'A1', 20),
  ('00000000-0000-4000-a000-0000659a8b8f', 'die Schwester', 'الأخت', 'sister', 'die', 'die Schwestern', 'noun', 'Meine Schwester studiert Medizin.', 'My sister studies medicine.', 'A1', 21),
  ('00000000-0000-4000-a000-0000659a8b8f', 'die Geschwister', 'الإخوة', 'siblings', 'die', NULL, 'noun', 'Hast du Geschwister?', 'Do you have siblings?', 'A1', 22),
  ('00000000-0000-4000-a000-0000659a8b8f', 'der Sohn', 'الابن', 'son', 'der', 'die Söhne', 'noun', 'Wir haben einen Sohn.', 'We have a son.', 'A1', 23),
  ('00000000-0000-4000-a000-0000659a8b8f', 'die Tochter', 'الابنة', 'daughter', 'die', 'die Töchter', 'noun', 'Meine Tochter geht zur Schule.', 'My daughter goes to school.', 'A1', 24),
  ('00000000-0000-4000-a000-0000659a8b8f', 'die Großeltern', 'الأجداد', 'grandparents', 'die', NULL, 'noun', 'Meine Großeltern wohnen auf dem Land.', 'My grandparents live in the countryside.', 'A1', 25),
  ('00000000-0000-4000-a000-0000659a8b8f', 'verheiratet', 'متزوج', 'married', NULL, NULL, 'adjective', 'Meine Eltern sind verheiratet.', 'My parents are married.', 'A1', 26),
  ('00000000-0000-4000-a000-0000659a8b8f', 'das Brot', 'الخبز', 'bread', 'das', 'die Brote', 'noun', 'Ich kaufe ein Brot.', 'I buy a loaf of bread.', 'A1', 27),
  ('00000000-0000-4000-a000-0000659a8b8f', 'die Milch', 'الحليب', 'milk', 'die', NULL, 'noun', 'Die Milch ist frisch.', 'The milk is fresh.', 'A1', 28),
  ('00000000-0000-4000-a000-0000659a8b8f', 'der Käse', 'الجبن', 'cheese', 'der', NULL, 'noun', 'Der Käse schmeckt gut.', 'The cheese tastes good.', 'A1', 29),
  ('00000000-0000-4000-a000-0000659a8b8f', 'der Apfel', 'التفاح', 'apple', 'der', 'die Äpfel', 'noun', 'Der Apfel ist rot.', 'The apple is red.', 'A1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000659a8b8f', 'Präsens der regelmäßigen Verben (Present Tense) / المضارع للأفعال المنتظمة', 'In German, regular verbs follow a consistent pattern. The infinitive ends in -en. Remove the -en and add the personal endings: ich -e, du -st, er/sie/es -t, wir -en, ihr -t, sie/Sie -en. For most Arabic speakers, this is easier than Arabic verb conjugation because German has fewer forms.', '[{"rule":"ich: stem + e","note":"Ich lerne, ich wohne, ich arbeite"},{"rule":"du: stem + st","note":"Du lernst, du wohnst, du arbeitest"},{"rule":"er/sie/es: stem + t","note":"Er lernt, sie wohnt, es arbeitet"},{"rule":"wir: stem + en","note":"Wir lernen, wir wohnen, wir arbeiten"},{"rule":"ihr: stem + t","note":"Ihr lernt, ihr wohnt, ihr arbeitet"},{"rule":"sie/Sie: stem + en","note":"Sie lernen, Sie wohnen"}]', '[{"german":"Ich lerne Deutsch.","arabic":"أنا أتعلم الألمانية.","english":"I am learning German."},{"german":"Du wohnst in Berlin.","arabic":"أنت تسكن في برلين.","english":"You live in Berlin."},{"german":"Er arbeitet bei Siemens.","arabic":"هو يعمل في سيمنز.","english":"He works at Siemens."}]', '[{"mistake":"Ich lernen Deutsch","correction":"Ich lerne Deutsch","explanation":"After \"ich\" we use the stem + e, not the infinitive."},{"mistake":"Er lerne Deutsch","correction":"Er lernt Deutsch","explanation":"After \"er/sie/es\" we add -t, not -e."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000659a8b8f', 'multiple_choice', 'What does "das Wetter" mean?', '["The","A","This","That"]', 'The', 'This is a basic vocabulary item.', 1, 1),
  ('00000000-0000-4000-a000-0000659a8b8f', 'fill_gap', 'Complete with the correct form.', '["Option 1","Option 2","Option 3"]', 'Option 1', 'Practice grammar in context.', 1, 2),
  ('00000000-0000-4000-a000-0000659a8b8f', 'translation', 'Translate: "I learn German."', '["Ich lerne Deutsch.","Ich lerne Englisch.","Ich lerne Spanisch."]', 'Ich lerne Deutsch.', 'Ich = I, lerne = learn/learning, Deutsch = German.', 2, 3),
  ('00000000-0000-4000-a000-0000659a8b8f', 'sentence_order', 'Order the sentence.', '[]', 'Ich lerne Deutsch.', 'Subject + verb + object in German.', 2, 4),
  ('00000000-0000-4000-a000-0000659a8b8f', 'matching', 'Match the words with their meanings.', '["Match pairs correctly"]', 'Correct pairs', 'Test your vocabulary knowledge.', 2, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-0000659a8b8f', 'multiple_choice', 'What is the main topic of this lesson?', '["Weather","Sports","Music","Travel"]', 'Weather', 1, 1),
  ('00000000-0000-4000-a000-0000659a8b8f', 'true_false', 'This lesson teaches vocabulary about Weather.', '["True","False"]', 'True', 1, 2),
  ('00000000-0000-4000-a000-0000659a8b8f', 'true_false', 'German word order is always the same as English.', '["True","False"]', 'False', 1, 3),
  ('00000000-0000-4000-a000-0000659a8b8f', 'multiple_choice', 'How do you say "please" in German?', '["Danke","Bitte","Tschüss","Hallo"]', 'Bitte', 1, 4),
  ('00000000-0000-4000-a000-0000659a8b8f', 'multiple_choice', 'Which article is feminine?', '["der","die","das","den"]', 'die', 1, 5),
  ('00000000-0000-4000-a000-0000659a8b8f', 'fill_blank', 'Ich ___ (to be) Student.', '["bin","bist","ist","sind"]', 'bin', 1, 6),
  ('00000000-0000-4000-a000-0000659a8b8f', 'multiple_choice', 'What is the correct word order?', '["Ich lerne Deutsch","Ich Deutsch lerne","Lerne ich Deutsch","Deutsch ich lerne"]', 'Ich lerne Deutsch', 1, 7),
  ('00000000-0000-4000-a000-0000659a8b8f', 'true_false', 'All German nouns are capitalized.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-0000659a8b8f', 'multiple_choice', 'How do you say "thank you" in German?', '["Bitte","Danke","Tschüss","Hallo"]', 'Danke', 1, 9),
  ('00000000-0000-4000-a000-0000659a8b8f', 'fill_blank', 'Wo ___ du? (to live)', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 1, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-0000659a8b8f', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Reisen und Freizeit', 'formal', false, 1),
  ('00000000-0000-4000-a000-0000659a8b8f', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Reisen und Freizeit', 'informal', false, 2),
  ('00000000-0000-4000-a000-0000659a8b8f', 'Bitte!', 'Please!', 'من فضلك!', 'Used in Reisen und Freizeit', 'neutral', false, 3),
  ('00000000-0000-4000-a000-0000659a8b8f', 'Danke!', 'Thanks!', 'شكراً!', 'Used in Reisen und Freizeit', 'neutral', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-0000659a8b8f', 'Hallo', 'Hello', 'Greeting', 'expression', 1),
  ('00000000-0000-4000-a000-0000659a8b8f', 'Danke', 'Thanks', 'Politeness', 'expression', 2),
  ('00000000-0000-4000-a000-0000659a8b8f', 'Bitte', 'Please', 'Politeness', 'expression', 3),
  ('00000000-0000-4000-a000-0000659a8b8f', 'Tschüss', 'Bye', 'Farewell', 'expression', 4);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-0000659a8b8f', 'Das Wetter — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, duration_seconds, speaker_count, scenario) values
  ('00000000-0000-4000-a000-0000659a8b8f', 'Das Wetter — Hörverständnis', '[Lehrerin]: Guten Morgen! Heute lernen wir Begrüßungen.

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

[Lehrerin]: ممتاز! إلى الغد!', 72, 2, 'Reisen und Freizeit');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-0000659a8b8f', 'Speaking: Das Wetter', 'Practice talking about Weather. Answer questions and have a simple conversation.', 'Weather', ARRAY['Use full sentences','Speak clearly','Don''t worry about mistakes']::text[], ARRAY['das Wetter','die Sonne','der Regen','der Schnee','warm']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-0000659a8b8f', 'Writing: Das Wetter', 'Write a short text about Weather. Use at least 5 vocabulary words from this lesson.', ARRAY['Start with a greeting','Use the vocabulary from this lesson','Check your grammar']::text[], ARRAY['das Wetter','die Sonne','der Regen']::text[], '["Sentence structure","Vocabulary usage"]', 50, 150, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000659a8b8f', 'Das Wetter — Roleplay', 'Weather', 'Student', 'Teacher', 'Practice conversation about Weather', 'Hallo! Lass uns über dieses Thema sprechen.', 'beginner', 1, ARRAY['das Wetter','die Sonne','der Regen','der Schnee','warm','kalt','der Frühling','der Winter']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000659a8b8f', 'Das Wetter — Advanced Roleplay', 'Weather', 'Customer', 'Assistant', 'Extended conversation about Weather', 'Guten Tag! Wie kann ich Ihnen helfen?', 'beginner', 2, ARRAY['das Wetter','die Sonne','der Regen','der Schnee','warm','kalt','der Frühling','der Winter']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-0000659a8b8f', 'Das Wetter — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Das Wetter".', 'Creative practice for Weather', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-0000659a8b8f', 'Homework: Das Wetter', 'Complete these tasks to reinforce "Das Wetter".', 'mixed', '[{"description":"Review all vocabulary from this lesson"},{"description":"Write 5 sentences using the grammar structure"},{"description":"Practice the dialogue aloud"}]', 35, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-0000659a8b8f', 'In this lesson you learned about Weather. You practiced vocabulary related to weather and grammar structure present_tense.', '["Mastered vocabulary about Weather","Applied present_tense correctly","Read and understood a text about Weather","Practiced speaking about Weather"]', '[{"title":"Das Wetter Review","summary":"present_tense — the main grammar focus of this lesson."}]', ARRAY['Weather core vocabulary','weather key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)','Verb is always in second position']::text[], ARRAY['Practice 15-20 minutes daily','Use new vocabulary in real sentences','Speak out loud to improve pronunciation']::text[]);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000659a8b8f', 'Pronunciation: German pronunciation basics', 'German is mostly phonetic. Pronounce each letter.

Common mistake for Arabic speakers: Pronouncing every letter as in English.', '[]', '[{"german":"ja","arabic":"","english":"","phonetic":"/jaː/"},{"german":"nein","arabic":"","english":"","phonetic":"/naɪn/"}]', '[]', 10);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000659a8b8f', 'translation', 'Translate to German: "This is a translation exercise."', '[]', 'Das ist eine Übersetzungsübung.', 'Use "das ist" for "this is"', 1, 40);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000659a8b8f', 'Culture: Weather in German-Speaking Countries', 'Learn how Weather is approached in German culture.

تعلم كيف يتم التعامل مع Weather في الثقافة الألمانية.', '["Tip: Be direct and polite","Tip: Use formal language with strangers","Tip: Respect punctuality"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000659a8b8f', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Common error for Arabic speakers","correction":"Correct version","explanation":"Explanation of the error"}]', 30);

  -- Lesson 5: Im Hotel (L-A1-06-05)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-0000659a8b90', '00000000-0000-4000-a000-000039b4d363', 'Im Hotel', 'Learn how to book a room and interact at hotels.', 'Hotel', 'dialogue', '["Understand and use vocabulary related to Hotel","Apply present_tense correctly","Read and comprehend a text about Hotel","Listen and understand a dialogue about Hotel","Speak about Hotel in simple sentences","Write a short text about Hotel"]', 30, 5, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-0000659a8b90', 'die Reise', 'الرحلة', 'trip', 'die', 'die Reisen', 'noun', 'Die Reise nach München war schön.', 'The trip to Munich was nice.', 'A1', 1),
  ('00000000-0000-4000-a000-0000659a8b90', 'der Zug', 'القطار', 'train', 'der', 'die Züge', 'noun', 'Der Zug kommt um 10 Uhr an.', 'The train arrives at 10 o''clock.', 'A1', 2),
  ('00000000-0000-4000-a000-0000659a8b90', 'das Ticket', 'التذكرة', 'ticket', 'das', 'die Tickets', 'noun', 'Ein Ticket nach Berlin, bitte.', 'A ticket to Berlin, please.', 'A1', 3),
  ('00000000-0000-4000-a000-0000659a8b90', 'der Bahnhof', 'محطة القطار', 'train station', 'der', 'die Bahnhöfe', 'noun', 'Der Bahnhof ist groß.', 'The train station is big.', 'A1', 4),
  ('00000000-0000-4000-a000-0000659a8b90', 'der Flughafen', 'المطار', 'airport', 'der', 'die Flughäfen', 'noun', 'Ich fahre zum Flughafen.', 'I drive to the airport.', 'A1', 5),
  ('00000000-0000-4000-a000-0000659a8b90', 'das Hotel', 'الفندق', 'hotel', 'das', 'die Hotels', 'noun', 'Das Hotel ist günstig.', 'The hotel is affordable.', 'A1', 6),
  ('00000000-0000-4000-a000-0000659a8b90', 'der Pass', 'جواز السفر', 'passport', 'der', 'die Pässe', 'noun', 'Ich brauche meinen Pass.', 'I need my passport.', 'A1', 7),
  ('00000000-0000-4000-a000-0000659a8b90', 'der Koffer', 'الحقيبة', 'suitcase', 'der', 'die Koffer', 'noun', 'Mein Koffer ist schwer.', 'My suitcase is heavy.', 'A1', 8),
  ('00000000-0000-4000-a000-0000659a8b90', 'Hallo', 'مرحباً', 'hello', NULL, NULL, 'interjection', 'Hallo, wie geht es dir?', 'Hello, how are you?', 'A1', 9),
  ('00000000-0000-4000-a000-0000659a8b90', 'Guten Morgen', 'صباح الخير', 'good morning', NULL, NULL, 'phrase', 'Guten Morgen, Herr Müller.', 'Good morning, Mr. Müller.', 'A1', 10),
  ('00000000-0000-4000-a000-0000659a8b90', 'Guten Tag', 'نهارك سعيد', 'good day', NULL, NULL, 'phrase', 'Guten Tag, Frau Schmidt.', 'Good day, Mrs. Schmidt.', 'A1', 11),
  ('00000000-0000-4000-a000-0000659a8b90', 'Tschüss', 'مع السلامة', 'bye', NULL, NULL, 'interjection', 'Tschüss, bis morgen!', 'Bye, see you tomorrow!', 'A1', 12),
  ('00000000-0000-4000-a000-0000659a8b90', 'der Name', 'الاسم', 'name', 'der', 'die Namen', 'noun', 'Mein Name ist Anna.', 'My name is Anna.', 'A1', 13),
  ('00000000-0000-4000-a000-0000659a8b90', 'wie', 'كيف', 'how', NULL, NULL, 'adverb', 'Wie heißt du?', 'What is your name?', 'A1', 14),
  ('00000000-0000-4000-a000-0000659a8b90', 'freuen', 'يسر', 'to be pleased', NULL, NULL, 'verb', 'Ich freue mich, dich kennenzulernen.', 'I am pleased to meet you.', 'A1', 15),
  ('00000000-0000-4000-a000-0000659a8b90', 'Willkommen', 'أهلاً وسهلاً', 'welcome', NULL, NULL, 'interjection', 'Willkommen in Deutschland!', 'Welcome to Germany!', 'A1', 16),
  ('00000000-0000-4000-a000-0000659a8b90', 'die Familie', 'العائلة', 'family', 'die', 'die Familien', 'noun', 'Meine Familie ist groß.', 'My family is big.', 'A1', 17),
  ('00000000-0000-4000-a000-0000659a8b90', 'der Vater', 'الأب', 'father', 'der', 'die Väter', 'noun', 'Mein Vater ist Ingenieur.', 'My father is an engineer.', 'A1', 18),
  ('00000000-0000-4000-a000-0000659a8b90', 'die Mutter', 'الأم', 'mother', 'die', 'die Mütter', 'noun', 'Meine Mutter kocht gut.', 'My mother cooks well.', 'A1', 19),
  ('00000000-0000-4000-a000-0000659a8b90', 'der Bruder', 'الأخ', 'brother', 'der', 'die Brüder', 'noun', 'Mein Bruder ist 15 Jahre alt.', 'My brother is 15 years old.', 'A1', 20),
  ('00000000-0000-4000-a000-0000659a8b90', 'die Schwester', 'الأخت', 'sister', 'die', 'die Schwestern', 'noun', 'Meine Schwester studiert Medizin.', 'My sister studies medicine.', 'A1', 21),
  ('00000000-0000-4000-a000-0000659a8b90', 'die Geschwister', 'الإخوة', 'siblings', 'die', NULL, 'noun', 'Hast du Geschwister?', 'Do you have siblings?', 'A1', 22),
  ('00000000-0000-4000-a000-0000659a8b90', 'der Sohn', 'الابن', 'son', 'der', 'die Söhne', 'noun', 'Wir haben einen Sohn.', 'We have a son.', 'A1', 23),
  ('00000000-0000-4000-a000-0000659a8b90', 'die Tochter', 'الابنة', 'daughter', 'die', 'die Töchter', 'noun', 'Meine Tochter geht zur Schule.', 'My daughter goes to school.', 'A1', 24),
  ('00000000-0000-4000-a000-0000659a8b90', 'die Großeltern', 'الأجداد', 'grandparents', 'die', NULL, 'noun', 'Meine Großeltern wohnen auf dem Land.', 'My grandparents live in the countryside.', 'A1', 25),
  ('00000000-0000-4000-a000-0000659a8b90', 'verheiratet', 'متزوج', 'married', NULL, NULL, 'adjective', 'Meine Eltern sind verheiratet.', 'My parents are married.', 'A1', 26),
  ('00000000-0000-4000-a000-0000659a8b90', 'das Brot', 'الخبز', 'bread', 'das', 'die Brote', 'noun', 'Ich kaufe ein Brot.', 'I buy a loaf of bread.', 'A1', 27),
  ('00000000-0000-4000-a000-0000659a8b90', 'die Milch', 'الحليب', 'milk', 'die', NULL, 'noun', 'Die Milch ist frisch.', 'The milk is fresh.', 'A1', 28),
  ('00000000-0000-4000-a000-0000659a8b90', 'der Käse', 'الجبن', 'cheese', 'der', NULL, 'noun', 'Der Käse schmeckt gut.', 'The cheese tastes good.', 'A1', 29),
  ('00000000-0000-4000-a000-0000659a8b90', 'der Apfel', 'التفاح', 'apple', 'der', 'die Äpfel', 'noun', 'Der Apfel ist rot.', 'The apple is red.', 'A1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000659a8b90', 'Präsens der regelmäßigen Verben (Present Tense) / المضارع للأفعال المنتظمة', 'In German, regular verbs follow a consistent pattern. The infinitive ends in -en. Remove the -en and add the personal endings: ich -e, du -st, er/sie/es -t, wir -en, ihr -t, sie/Sie -en. For most Arabic speakers, this is easier than Arabic verb conjugation because German has fewer forms.', '[{"rule":"ich: stem + e","note":"Ich lerne, ich wohne, ich arbeite"},{"rule":"du: stem + st","note":"Du lernst, du wohnst, du arbeitest"},{"rule":"er/sie/es: stem + t","note":"Er lernt, sie wohnt, es arbeitet"},{"rule":"wir: stem + en","note":"Wir lernen, wir wohnen, wir arbeiten"},{"rule":"ihr: stem + t","note":"Ihr lernt, ihr wohnt, ihr arbeitet"},{"rule":"sie/Sie: stem + en","note":"Sie lernen, Sie wohnen"}]', '[{"german":"Ich lerne Deutsch.","arabic":"أنا أتعلم الألمانية.","english":"I am learning German."},{"german":"Du wohnst in Berlin.","arabic":"أنت تسكن في برلين.","english":"You live in Berlin."},{"german":"Er arbeitet bei Siemens.","arabic":"هو يعمل في سيمنز.","english":"He works at Siemens."}]', '[{"mistake":"Ich lernen Deutsch","correction":"Ich lerne Deutsch","explanation":"After \"ich\" we use the stem + e, not the infinitive."},{"mistake":"Er lerne Deutsch","correction":"Er lernt Deutsch","explanation":"After \"er/sie/es\" we add -t, not -e."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000659a8b90', 'multiple_choice', 'What does "die Reise" mean?', '["The","A","This","That"]', 'The', 'This is a basic vocabulary item.', 1, 1),
  ('00000000-0000-4000-a000-0000659a8b90', 'fill_gap', 'Complete with the correct form.', '["Option 1","Option 2","Option 3"]', 'Option 1', 'Practice grammar in context.', 1, 2),
  ('00000000-0000-4000-a000-0000659a8b90', 'translation', 'Translate: "I learn German."', '["Ich lerne Deutsch.","Ich lerne Englisch.","Ich lerne Spanisch."]', 'Ich lerne Deutsch.', 'Ich = I, lerne = learn/learning, Deutsch = German.', 2, 3),
  ('00000000-0000-4000-a000-0000659a8b90', 'sentence_order', 'Order the sentence.', '[]', 'Ich lerne Deutsch.', 'Subject + verb + object in German.', 2, 4),
  ('00000000-0000-4000-a000-0000659a8b90', 'matching', 'Match the words with their meanings.', '["Match pairs correctly"]', 'Correct pairs', 'Test your vocabulary knowledge.', 2, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-0000659a8b90', 'multiple_choice', 'What is the main topic of this lesson?', '["Hotel","Sports","Music","Travel"]', 'Hotel', 1, 1),
  ('00000000-0000-4000-a000-0000659a8b90', 'true_false', 'This lesson teaches vocabulary about Hotel.', '["True","False"]', 'True', 1, 2),
  ('00000000-0000-4000-a000-0000659a8b90', 'true_false', 'German word order is always the same as English.', '["True","False"]', 'False', 1, 3),
  ('00000000-0000-4000-a000-0000659a8b90', 'multiple_choice', 'How do you say "please" in German?', '["Danke","Bitte","Tschüss","Hallo"]', 'Bitte', 1, 4),
  ('00000000-0000-4000-a000-0000659a8b90', 'multiple_choice', 'Which article is feminine?', '["der","die","das","den"]', 'die', 1, 5),
  ('00000000-0000-4000-a000-0000659a8b90', 'fill_blank', 'Ich ___ (to be) Student.', '["bin","bist","ist","sind"]', 'bin', 1, 6),
  ('00000000-0000-4000-a000-0000659a8b90', 'multiple_choice', 'What is the correct word order?', '["Ich lerne Deutsch","Ich Deutsch lerne","Lerne ich Deutsch","Deutsch ich lerne"]', 'Ich lerne Deutsch', 1, 7),
  ('00000000-0000-4000-a000-0000659a8b90', 'true_false', 'All German nouns are capitalized.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-0000659a8b90', 'multiple_choice', 'How do you say "thank you" in German?', '["Bitte","Danke","Tschüss","Hallo"]', 'Danke', 1, 9),
  ('00000000-0000-4000-a000-0000659a8b90', 'fill_blank', 'Wo ___ du? (to live)', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 1, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-0000659a8b90', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Reisen und Freizeit', 'formal', false, 1),
  ('00000000-0000-4000-a000-0000659a8b90', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Reisen und Freizeit', 'informal', false, 2),
  ('00000000-0000-4000-a000-0000659a8b90', 'Bitte!', 'Please!', 'من فضلك!', 'Used in Reisen und Freizeit', 'neutral', false, 3),
  ('00000000-0000-4000-a000-0000659a8b90', 'Danke!', 'Thanks!', 'شكراً!', 'Used in Reisen und Freizeit', 'neutral', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-0000659a8b90', 'Hallo', 'Hello', 'Greeting', 'expression', 1),
  ('00000000-0000-4000-a000-0000659a8b90', 'Danke', 'Thanks', 'Politeness', 'expression', 2),
  ('00000000-0000-4000-a000-0000659a8b90', 'Bitte', 'Please', 'Politeness', 'expression', 3),
  ('00000000-0000-4000-a000-0000659a8b90', 'Tschüss', 'Bye', 'Farewell', 'expression', 4);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-0000659a8b90', 'Im Hotel — Leseübung', 'Nächste Woche mache ich eine Reise nach München. Ich fahre mit dem Zug. Ich kaufe ein Ticket am Bahnhof. Der Zug fährt um 8 Uhr ab. Die Fahrt dauert 4 Stunden. In München besuche ich meine Tante. Sie wohnt in der Nähe des Hauptbahnhofs. Wir gehen zusammen in ein Restaurant. Dann besuchen wir das Deutsche Museum. Die Reise wird schön.', 'Next week I am taking a trip to Munich. I am going by train. I buy a ticket at the train station. The train departs at 8 o''clock. The journey takes 4 hours. In Munich I visit my aunt. She lives near the main train station. We go to a restaurant together. Then we visit the German Museum. The trip will be nice.', 'الأسبوع القادم سأسافر إلى ميونخ. سأذهب بالقطار. أشتري تذكرة من محطة القطار. القطار يغادر في الساعة 8. الرحلة تستغرق 4 ساعات. في ميونخ أزور عمتي. تسكن بالقرب من المحطة الرئيسية. نذهب معاً إلى مطعم. ثم نزور المتحف الألماني. الرحلة ستكون جميلة.', 60, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, duration_seconds, speaker_count, scenario) values
  ('00000000-0000-4000-a000-0000659a8b90', 'Im Hotel — Hörverständnis', '[Kunde]: Guten Tag! Ich möchte eine Fahrkarte nach München kaufen.

[Mitarbeiter]: Einfach oder hin und zurück?

[Kunde]: Hin und zurück, bitte. Zweite Klasse.

[Mitarbeiter]: Das macht 98 Euro. Mit BahnCard 25 bekommen Sie 25 Prozent Rabatt.

[Kunde]: Ich habe eine BahnCard. Hier ist sie.

[Mitarbeiter]: Dann kostet es 73,50 Euro. Der Zug fährt um 10 Uhr ab.', '[Kunde]: Good day! I would like to buy a ticket to Munich.

[Mitarbeiter]: One way or round trip?

[Kunde]: Round trip, please. Second class.

[Mitarbeiter]: That comes to 98 euros. With BahnCard 25 you get 25 percent discount.

[Kunde]: I have a BahnCard. Here it is.

[Mitarbeiter]: Then it costs 73.50 euros. The train departs at 10 o''clock.', '[Kunde]: نهارك سعيد! أريد شراء تذكرة إلى ميونخ.

[Mitarbeiter]: ذهاب أم ذهاب وعودة؟

[Kunde]: ذهاب وعودة من فضلك. الدرجة الثانية.

[Mitarbeiter]: المجموع 98 يورو. مع بطاقة السكة الحديد 25 تحصلون على خصم 25 بالمئة.

[Kunde]: لدي بطاقة السكة الحديد. ها هي.

[Mitarbeiter]: إذاً التكلفة 73.50 يورو. القطار يغادر في الساعة 10.', 72, 2, 'Reisen und Freizeit');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-0000659a8b90', 'Speaking: Im Hotel', 'Practice talking about Hotel. Answer questions and have a simple conversation.', 'Hotel', ARRAY['Use full sentences','Speak clearly','Don''t worry about mistakes']::text[], ARRAY['die Reise','der Zug','das Ticket','der Bahnhof','der Flughafen']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-0000659a8b90', 'Writing: Im Hotel', 'Write a short text about Hotel. Use at least 5 vocabulary words from this lesson.', ARRAY['Start with a greeting','Use the vocabulary from this lesson','Check your grammar']::text[], ARRAY['die Reise','der Zug','das Ticket']::text[], '["Sentence structure","Vocabulary usage"]', 50, 150, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000659a8b90', 'Im Hotel — Roleplay', 'Hotel', 'Student', 'Teacher', 'Practice conversation about Hotel', 'Hallo! Lass uns über dieses Thema sprechen.', 'beginner', 1, ARRAY['die Reise','der Zug','das Ticket','der Bahnhof','der Flughafen','das Hotel','der Pass','der Koffer']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000659a8b90', 'Im Hotel — Advanced Roleplay', 'Hotel', 'Customer', 'Assistant', 'Extended conversation about Hotel', 'Guten Tag! Wie kann ich Ihnen helfen?', 'beginner', 2, ARRAY['die Reise','der Zug','das Ticket','der Bahnhof','der Flughafen','das Hotel','der Pass','der Koffer']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-0000659a8b90', 'Im Hotel — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Im Hotel".', 'Creative practice for Hotel', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-0000659a8b90', 'Homework: Im Hotel', 'Complete these tasks to reinforce "Im Hotel".', 'mixed', '[{"description":"Review all vocabulary from this lesson"},{"description":"Write 5 sentences using the grammar structure"},{"description":"Practice the dialogue aloud"}]', 35, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-0000659a8b90', 'In this lesson you learned about Hotel. You practiced vocabulary related to travel and grammar structure present_tense.', '["Mastered vocabulary about Hotel","Applied present_tense correctly","Read and understood a text about Hotel","Practiced speaking about Hotel"]', '[{"title":"Im Hotel Review","summary":"present_tense — the main grammar focus of this lesson."}]', ARRAY['Hotel core vocabulary','travel key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)','Verb is always in second position']::text[], ARRAY['Practice 15-20 minutes daily','Use new vocabulary in real sentences','Speak out loud to improve pronunciation']::text[]);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000659a8b90', 'Pronunciation: German pronunciation basics', 'German is mostly phonetic. Pronounce each letter.

Common mistake for Arabic speakers: Pronouncing every letter as in English.', '[]', '[{"german":"ja","arabic":"","english":"","phonetic":"/jaː/"},{"german":"nein","arabic":"","english":"","phonetic":"/naɪn/"}]', '[]', 10);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000659a8b90', 'translation', 'Translate to German: "This is a translation exercise."', '[]', 'Das ist eine Übersetzungsübung.', 'Use "das ist" for "this is"', 1, 40);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000659a8b90', 'Culture: Hotel in German-Speaking Countries', 'Learn how Hotel is approached in German culture.

تعلم كيف يتم التعامل مع Hotel في الثقافة الألمانية.', '["Tip: Be direct and polite","Tip: Use formal language with strangers","Tip: Respect punctuality"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000659a8b90', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Common error for Arabic speakers","correction":"Correct version","explanation":"Explanation of the error"}]', 30);

  -- Lesson 6: A1 Abschlusstest (L-A1-06-06)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-0000659a8b91', '00000000-0000-4000-a000-000039b4d363', 'A1 Abschlusstest', 'Comprehensive A1 level test.', 'Level Test', 'test', '["Understand and use vocabulary related to Level Test","Apply present_tense correctly","Read and comprehend a text about Level Test","Listen and understand a dialogue about Level Test","Speak about Level Test in simple sentences","Write a short text about Level Test"]', 45, 6, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-0000659a8b91', 'die Reise', 'الرحلة', 'trip', 'die', 'die Reisen', 'noun', 'Die Reise nach München war schön.', 'The trip to Munich was nice.', 'A1', 1),
  ('00000000-0000-4000-a000-0000659a8b91', 'der Zug', 'القطار', 'train', 'der', 'die Züge', 'noun', 'Der Zug kommt um 10 Uhr an.', 'The train arrives at 10 o''clock.', 'A1', 2),
  ('00000000-0000-4000-a000-0000659a8b91', 'das Ticket', 'التذكرة', 'ticket', 'das', 'die Tickets', 'noun', 'Ein Ticket nach Berlin, bitte.', 'A ticket to Berlin, please.', 'A1', 3),
  ('00000000-0000-4000-a000-0000659a8b91', 'der Bahnhof', 'محطة القطار', 'train station', 'der', 'die Bahnhöfe', 'noun', 'Der Bahnhof ist groß.', 'The train station is big.', 'A1', 4),
  ('00000000-0000-4000-a000-0000659a8b91', 'der Flughafen', 'المطار', 'airport', 'der', 'die Flughäfen', 'noun', 'Ich fahre zum Flughafen.', 'I drive to the airport.', 'A1', 5),
  ('00000000-0000-4000-a000-0000659a8b91', 'das Hotel', 'الفندق', 'hotel', 'das', 'die Hotels', 'noun', 'Das Hotel ist günstig.', 'The hotel is affordable.', 'A1', 6),
  ('00000000-0000-4000-a000-0000659a8b91', 'der Pass', 'جواز السفر', 'passport', 'der', 'die Pässe', 'noun', 'Ich brauche meinen Pass.', 'I need my passport.', 'A1', 7),
  ('00000000-0000-4000-a000-0000659a8b91', 'der Koffer', 'الحقيبة', 'suitcase', 'der', 'die Koffer', 'noun', 'Mein Koffer ist schwer.', 'My suitcase is heavy.', 'A1', 8),
  ('00000000-0000-4000-a000-0000659a8b91', 'Hallo', 'مرحباً', 'hello', NULL, NULL, 'interjection', 'Hallo, wie geht es dir?', 'Hello, how are you?', 'A1', 9),
  ('00000000-0000-4000-a000-0000659a8b91', 'Guten Morgen', 'صباح الخير', 'good morning', NULL, NULL, 'phrase', 'Guten Morgen, Herr Müller.', 'Good morning, Mr. Müller.', 'A1', 10),
  ('00000000-0000-4000-a000-0000659a8b91', 'Guten Tag', 'نهارك سعيد', 'good day', NULL, NULL, 'phrase', 'Guten Tag, Frau Schmidt.', 'Good day, Mrs. Schmidt.', 'A1', 11),
  ('00000000-0000-4000-a000-0000659a8b91', 'Tschüss', 'مع السلامة', 'bye', NULL, NULL, 'interjection', 'Tschüss, bis morgen!', 'Bye, see you tomorrow!', 'A1', 12),
  ('00000000-0000-4000-a000-0000659a8b91', 'der Name', 'الاسم', 'name', 'der', 'die Namen', 'noun', 'Mein Name ist Anna.', 'My name is Anna.', 'A1', 13),
  ('00000000-0000-4000-a000-0000659a8b91', 'wie', 'كيف', 'how', NULL, NULL, 'adverb', 'Wie heißt du?', 'What is your name?', 'A1', 14),
  ('00000000-0000-4000-a000-0000659a8b91', 'freuen', 'يسر', 'to be pleased', NULL, NULL, 'verb', 'Ich freue mich, dich kennenzulernen.', 'I am pleased to meet you.', 'A1', 15),
  ('00000000-0000-4000-a000-0000659a8b91', 'Willkommen', 'أهلاً وسهلاً', 'welcome', NULL, NULL, 'interjection', 'Willkommen in Deutschland!', 'Welcome to Germany!', 'A1', 16),
  ('00000000-0000-4000-a000-0000659a8b91', 'die Familie', 'العائلة', 'family', 'die', 'die Familien', 'noun', 'Meine Familie ist groß.', 'My family is big.', 'A1', 17),
  ('00000000-0000-4000-a000-0000659a8b91', 'der Vater', 'الأب', 'father', 'der', 'die Väter', 'noun', 'Mein Vater ist Ingenieur.', 'My father is an engineer.', 'A1', 18),
  ('00000000-0000-4000-a000-0000659a8b91', 'die Mutter', 'الأم', 'mother', 'die', 'die Mütter', 'noun', 'Meine Mutter kocht gut.', 'My mother cooks well.', 'A1', 19),
  ('00000000-0000-4000-a000-0000659a8b91', 'der Bruder', 'الأخ', 'brother', 'der', 'die Brüder', 'noun', 'Mein Bruder ist 15 Jahre alt.', 'My brother is 15 years old.', 'A1', 20),
  ('00000000-0000-4000-a000-0000659a8b91', 'die Schwester', 'الأخت', 'sister', 'die', 'die Schwestern', 'noun', 'Meine Schwester studiert Medizin.', 'My sister studies medicine.', 'A1', 21),
  ('00000000-0000-4000-a000-0000659a8b91', 'die Geschwister', 'الإخوة', 'siblings', 'die', NULL, 'noun', 'Hast du Geschwister?', 'Do you have siblings?', 'A1', 22),
  ('00000000-0000-4000-a000-0000659a8b91', 'der Sohn', 'الابن', 'son', 'der', 'die Söhne', 'noun', 'Wir haben einen Sohn.', 'We have a son.', 'A1', 23),
  ('00000000-0000-4000-a000-0000659a8b91', 'die Tochter', 'الابنة', 'daughter', 'die', 'die Töchter', 'noun', 'Meine Tochter geht zur Schule.', 'My daughter goes to school.', 'A1', 24),
  ('00000000-0000-4000-a000-0000659a8b91', 'die Großeltern', 'الأجداد', 'grandparents', 'die', NULL, 'noun', 'Meine Großeltern wohnen auf dem Land.', 'My grandparents live in the countryside.', 'A1', 25),
  ('00000000-0000-4000-a000-0000659a8b91', 'verheiratet', 'متزوج', 'married', NULL, NULL, 'adjective', 'Meine Eltern sind verheiratet.', 'My parents are married.', 'A1', 26),
  ('00000000-0000-4000-a000-0000659a8b91', 'das Brot', 'الخبز', 'bread', 'das', 'die Brote', 'noun', 'Ich kaufe ein Brot.', 'I buy a loaf of bread.', 'A1', 27),
  ('00000000-0000-4000-a000-0000659a8b91', 'die Milch', 'الحليب', 'milk', 'die', NULL, 'noun', 'Die Milch ist frisch.', 'The milk is fresh.', 'A1', 28),
  ('00000000-0000-4000-a000-0000659a8b91', 'der Käse', 'الجبن', 'cheese', 'der', NULL, 'noun', 'Der Käse schmeckt gut.', 'The cheese tastes good.', 'A1', 29),
  ('00000000-0000-4000-a000-0000659a8b91', 'der Apfel', 'التفاح', 'apple', 'der', 'die Äpfel', 'noun', 'Der Apfel ist rot.', 'The apple is red.', 'A1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000659a8b91', 'Präsens der regelmäßigen Verben (Present Tense) / المضارع للأفعال المنتظمة', 'In German, regular verbs follow a consistent pattern. The infinitive ends in -en. Remove the -en and add the personal endings: ich -e, du -st, er/sie/es -t, wir -en, ihr -t, sie/Sie -en. For most Arabic speakers, this is easier than Arabic verb conjugation because German has fewer forms.', '[{"rule":"ich: stem + e","note":"Ich lerne, ich wohne, ich arbeite"},{"rule":"du: stem + st","note":"Du lernst, du wohnst, du arbeitest"},{"rule":"er/sie/es: stem + t","note":"Er lernt, sie wohnt, es arbeitet"},{"rule":"wir: stem + en","note":"Wir lernen, wir wohnen, wir arbeiten"},{"rule":"ihr: stem + t","note":"Ihr lernt, ihr wohnt, ihr arbeitet"},{"rule":"sie/Sie: stem + en","note":"Sie lernen, Sie wohnen"}]', '[{"german":"Ich lerne Deutsch.","arabic":"أنا أتعلم الألمانية.","english":"I am learning German."},{"german":"Du wohnst in Berlin.","arabic":"أنت تسكن في برلين.","english":"You live in Berlin."},{"german":"Er arbeitet bei Siemens.","arabic":"هو يعمل في سيمنز.","english":"He works at Siemens."}]', '[{"mistake":"Ich lernen Deutsch","correction":"Ich lerne Deutsch","explanation":"After \"ich\" we use the stem + e, not the infinitive."},{"mistake":"Er lerne Deutsch","correction":"Er lernt Deutsch","explanation":"After \"er/sie/es\" we add -t, not -e."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000659a8b91', 'multiple_choice', 'What does "die Reise" mean?', '["The","A","This","That"]', 'The', 'This is a basic vocabulary item.', 1, 1),
  ('00000000-0000-4000-a000-0000659a8b91', 'fill_gap', 'Complete with the correct form.', '["Option 1","Option 2","Option 3"]', 'Option 1', 'Practice grammar in context.', 1, 2),
  ('00000000-0000-4000-a000-0000659a8b91', 'translation', 'Translate: "I learn German."', '["Ich lerne Deutsch.","Ich lerne Englisch.","Ich lerne Spanisch."]', 'Ich lerne Deutsch.', 'Ich = I, lerne = learn/learning, Deutsch = German.', 2, 3),
  ('00000000-0000-4000-a000-0000659a8b91', 'sentence_order', 'Order the sentence.', '[]', 'Ich lerne Deutsch.', 'Subject + verb + object in German.', 2, 4),
  ('00000000-0000-4000-a000-0000659a8b91', 'matching', 'Match the words with their meanings.', '["Match pairs correctly"]', 'Correct pairs', 'Test your vocabulary knowledge.', 2, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-0000659a8b91', 'multiple_choice', 'What is the main topic of this lesson?', '["Level Test","Sports","Music","Travel"]', 'Level Test', 1, 1),
  ('00000000-0000-4000-a000-0000659a8b91', 'true_false', 'This lesson teaches vocabulary about Level Test.', '["True","False"]', 'True', 1, 2),
  ('00000000-0000-4000-a000-0000659a8b91', 'true_false', 'German word order is always the same as English.', '["True","False"]', 'False', 1, 3),
  ('00000000-0000-4000-a000-0000659a8b91', 'multiple_choice', 'How do you say "please" in German?', '["Danke","Bitte","Tschüss","Hallo"]', 'Bitte', 1, 4),
  ('00000000-0000-4000-a000-0000659a8b91', 'multiple_choice', 'Which article is feminine?', '["der","die","das","den"]', 'die', 1, 5),
  ('00000000-0000-4000-a000-0000659a8b91', 'fill_blank', 'Ich ___ (to be) Student.', '["bin","bist","ist","sind"]', 'bin', 1, 6),
  ('00000000-0000-4000-a000-0000659a8b91', 'multiple_choice', 'What is the correct word order?', '["Ich lerne Deutsch","Ich Deutsch lerne","Lerne ich Deutsch","Deutsch ich lerne"]', 'Ich lerne Deutsch', 1, 7),
  ('00000000-0000-4000-a000-0000659a8b91', 'true_false', 'All German nouns are capitalized.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-0000659a8b91', 'multiple_choice', 'How do you say "thank you" in German?', '["Bitte","Danke","Tschüss","Hallo"]', 'Danke', 1, 9),
  ('00000000-0000-4000-a000-0000659a8b91', 'fill_blank', 'Wo ___ du? (to live)', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 1, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-0000659a8b91', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Reisen und Freizeit', 'formal', false, 1),
  ('00000000-0000-4000-a000-0000659a8b91', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Reisen und Freizeit', 'informal', false, 2),
  ('00000000-0000-4000-a000-0000659a8b91', 'Bitte!', 'Please!', 'من فضلك!', 'Used in Reisen und Freizeit', 'neutral', false, 3),
  ('00000000-0000-4000-a000-0000659a8b91', 'Danke!', 'Thanks!', 'شكراً!', 'Used in Reisen und Freizeit', 'neutral', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-0000659a8b91', 'Hallo', 'Hello', 'Greeting', 'expression', 1),
  ('00000000-0000-4000-a000-0000659a8b91', 'Danke', 'Thanks', 'Politeness', 'expression', 2),
  ('00000000-0000-4000-a000-0000659a8b91', 'Bitte', 'Please', 'Politeness', 'expression', 3),
  ('00000000-0000-4000-a000-0000659a8b91', 'Tschüss', 'Bye', 'Farewell', 'expression', 4);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-0000659a8b91', 'A1 Abschlusstest — Leseübung', 'Nächste Woche mache ich eine Reise nach München. Ich fahre mit dem Zug. Ich kaufe ein Ticket am Bahnhof. Der Zug fährt um 8 Uhr ab. Die Fahrt dauert 4 Stunden. In München besuche ich meine Tante. Sie wohnt in der Nähe des Hauptbahnhofs. Wir gehen zusammen in ein Restaurant. Dann besuchen wir das Deutsche Museum. Die Reise wird schön.', 'Next week I am taking a trip to Munich. I am going by train. I buy a ticket at the train station. The train departs at 8 o''clock. The journey takes 4 hours. In Munich I visit my aunt. She lives near the main train station. We go to a restaurant together. Then we visit the German Museum. The trip will be nice.', 'الأسبوع القادم سأسافر إلى ميونخ. سأذهب بالقطار. أشتري تذكرة من محطة القطار. القطار يغادر في الساعة 8. الرحلة تستغرق 4 ساعات. في ميونخ أزور عمتي. تسكن بالقرب من المحطة الرئيسية. نذهب معاً إلى مطعم. ثم نزور المتحف الألماني. الرحلة ستكون جميلة.', 60, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, duration_seconds, speaker_count, scenario) values
  ('00000000-0000-4000-a000-0000659a8b91', 'A1 Abschlusstest — Hörverständnis', '[Kunde]: Guten Tag! Ich möchte eine Fahrkarte nach München kaufen.

[Mitarbeiter]: Einfach oder hin und zurück?

[Kunde]: Hin und zurück, bitte. Zweite Klasse.

[Mitarbeiter]: Das macht 98 Euro. Mit BahnCard 25 bekommen Sie 25 Prozent Rabatt.

[Kunde]: Ich habe eine BahnCard. Hier ist sie.

[Mitarbeiter]: Dann kostet es 73,50 Euro. Der Zug fährt um 10 Uhr ab.', '[Kunde]: Good day! I would like to buy a ticket to Munich.

[Mitarbeiter]: One way or round trip?

[Kunde]: Round trip, please. Second class.

[Mitarbeiter]: That comes to 98 euros. With BahnCard 25 you get 25 percent discount.

[Kunde]: I have a BahnCard. Here it is.

[Mitarbeiter]: Then it costs 73.50 euros. The train departs at 10 o''clock.', '[Kunde]: نهارك سعيد! أريد شراء تذكرة إلى ميونخ.

[Mitarbeiter]: ذهاب أم ذهاب وعودة؟

[Kunde]: ذهاب وعودة من فضلك. الدرجة الثانية.

[Mitarbeiter]: المجموع 98 يورو. مع بطاقة السكة الحديد 25 تحصلون على خصم 25 بالمئة.

[Kunde]: لدي بطاقة السكة الحديد. ها هي.

[Mitarbeiter]: إذاً التكلفة 73.50 يورو. القطار يغادر في الساعة 10.', 72, 2, 'Reisen und Freizeit');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-0000659a8b91', 'Speaking: A1 Abschlusstest', 'Practice talking about Level Test. Answer questions and have a simple conversation.', 'Level Test', ARRAY['Use full sentences','Speak clearly','Don''t worry about mistakes']::text[], ARRAY['die Reise','der Zug','das Ticket','der Bahnhof','der Flughafen']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-0000659a8b91', 'Writing: A1 Abschlusstest', 'Write a short text about Level Test. Use at least 5 vocabulary words from this lesson.', ARRAY['Start with a greeting','Use the vocabulary from this lesson','Check your grammar']::text[], ARRAY['die Reise','der Zug','das Ticket']::text[], '["Sentence structure","Vocabulary usage"]', 50, 150, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000659a8b91', 'A1 Abschlusstest — Roleplay', 'Level Test', 'Student', 'Teacher', 'Practice conversation about Level Test', 'Hallo! Lass uns über dieses Thema sprechen.', 'beginner', 1, ARRAY['die Reise','der Zug','das Ticket','der Bahnhof','der Flughafen','das Hotel','der Pass','der Koffer']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000659a8b91', 'A1 Abschlusstest — Advanced Roleplay', 'Level Test', 'Customer', 'Assistant', 'Extended conversation about Level Test', 'Guten Tag! Wie kann ich Ihnen helfen?', 'beginner', 2, ARRAY['die Reise','der Zug','das Ticket','der Bahnhof','der Flughafen','das Hotel','der Pass','der Koffer']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-0000659a8b91', 'A1 Abschlusstest — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "A1 Abschlusstest".', 'Creative practice for Level Test', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-0000659a8b91', 'Homework: A1 Abschlusstest', 'Complete these tasks to reinforce "A1 Abschlusstest".', 'mixed', '[{"description":"Review all vocabulary from this lesson"},{"description":"Write 5 sentences using the grammar structure"},{"description":"Practice the dialogue aloud"}]', 35, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-0000659a8b91', 'In this lesson you learned about Level Test. You practiced vocabulary related to travel and grammar structure present_tense.', '["Mastered vocabulary about Level Test","Applied present_tense correctly","Read and understood a text about Level Test","Practiced speaking about Level Test"]', '[{"title":"A1 Abschlusstest Review","summary":"present_tense — the main grammar focus of this lesson."}]', ARRAY['Level Test core vocabulary','travel key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)','Verb is always in second position']::text[], ARRAY['Practice 15-20 minutes daily','Use new vocabulary in real sentences','Speak out loud to improve pronunciation']::text[]);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000659a8b91', 'Pronunciation: German pronunciation basics', 'German is mostly phonetic. Pronounce each letter.

Common mistake for Arabic speakers: Pronouncing every letter as in English.', '[]', '[{"german":"ja","arabic":"","english":"","phonetic":"/jaː/"},{"german":"nein","arabic":"","english":"","phonetic":"/naɪn/"}]', '[]', 10);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000659a8b91', 'translation', 'Translate to German: "This is a translation exercise."', '[]', 'Das ist eine Übersetzungsübung.', 'Use "das ist" for "this is"', 1, 40);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000659a8b91', 'Culture: Level Test in German-Speaking Countries', 'Learn how Level Test is approached in German culture.

تعلم كيف يتم التعامل مع Level Test في الثقافة الألمانية.', '["Tip: Be direct and polite","Tip: Use formal language with strangers","Tip: Respect punctuality"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000659a8b91', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Common error for Arabic speakers","correction":"Correct version","explanation":"Explanation of the error"}]', 30);

end $$;
