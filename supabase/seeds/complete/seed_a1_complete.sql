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
  values ('00000000-0000-4000-a000-0000659845b1', '00000000-0000-4000-a000-000039b4d35e', 'Begrüßungen und Vorstellungen', 'Learn how to greet people, say goodbye, and introduce yourself.', 'Greetings & Introductions', 'vocabulary', '["Understand and use 142 key vocabulary words about Greetings & Introductions","Apply present_tense correctly in sentences","Read and comprehend a text about Greetings & Introductions","Listen and understand a natural dialogue about Greetings & Introductions","Speak about Greetings & Introductions with confidence","Write a short text about Greetings & Introductions using new vocabulary"]', 30, 1, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, french_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-0000659845b1', 'Hallo', 'مرحباً', 'hello', 'bonjour', NULL, NULL, 'interjection', 'Hallo, wie geht es dir?', 'Hello, how are you?', 'A1', 1),
  ('00000000-0000-4000-a000-0000659845b1', 'Guten Morgen', 'صباح الخير', 'good morning', 'bonjour (le matin)', NULL, NULL, 'phrase', 'Guten Morgen, Herr Müller.', 'Good morning, Mr. Müller.', 'A1', 2),
  ('00000000-0000-4000-a000-0000659845b1', 'Guten Tag', 'نهارك سعيد', 'good day', 'bonjour (l''après-midi)', NULL, NULL, 'phrase', 'Guten Tag, Frau Schmidt.', 'Good day, Mrs. Schmidt.', 'A1', 3),
  ('00000000-0000-4000-a000-0000659845b1', 'Tschüss', 'مع السلامة', 'bye', 'au revoir / salut', NULL, NULL, 'interjection', 'Tschüss, bis morgen!', 'Bye, see you tomorrow!', 'A1', 4),
  ('00000000-0000-4000-a000-0000659845b1', 'der Name', 'الاسم', 'name', 'le nom', 'der', 'die Namen', 'noun', 'Mein Name ist Anna.', 'My name is Anna.', 'A1', 5),
  ('00000000-0000-4000-a000-0000659845b1', 'wie', 'كيف', 'how', 'comment', NULL, NULL, 'adverb', 'Wie heißt du?', 'What is your name?', 'A1', 6),
  ('00000000-0000-4000-a000-0000659845b1', 'freuen', 'يسر', 'to be pleased', 'se réjouir', NULL, NULL, 'verb', 'Ich freue mich, dich kennenzulernen.', 'I am pleased to meet you.', 'A1', 7),
  ('00000000-0000-4000-a000-0000659845b1', 'Willkommen', 'أهلاً وسهلاً', 'welcome', 'bienvenue', NULL, NULL, 'interjection', 'Willkommen in Deutschland!', 'Welcome to Germany!', 'A1', 8),
  ('00000000-0000-4000-a000-0000659845b1', 'die Familie', 'العائلة', 'family', 'la famille', 'die', 'die Familien', 'noun', 'Meine Familie ist groß.', 'My family is big.', 'A1', 9),
  ('00000000-0000-4000-a000-0000659845b1', 'der Vater', 'الأب', 'father', 'le père', 'der', 'die Väter', 'noun', 'Mein Vater ist Ingenieur.', 'My father is an engineer.', 'A1', 10),
  ('00000000-0000-4000-a000-0000659845b1', 'die Mutter', 'الأم', 'mother', 'la mère', 'die', 'die Mütter', 'noun', 'Meine Mutter kocht gut.', 'My mother cooks well.', 'A1', 11),
  ('00000000-0000-4000-a000-0000659845b1', 'der Bruder', 'الأخ', 'brother', 'le frère', 'der', 'die Brüder', 'noun', 'Mein Bruder ist 15 Jahre alt.', 'My brother is 15 years old.', 'A1', 12),
  ('00000000-0000-4000-a000-0000659845b1', 'die Schwester', 'الأخت', 'sister', 'la sœur', 'die', 'die Schwestern', 'noun', 'Meine Schwester studiert Medizin.', 'My sister studies medicine.', 'A1', 13),
  ('00000000-0000-4000-a000-0000659845b1', 'die Geschwister', 'الإخوة', 'siblings', 'les frères et sœurs', 'die', NULL, 'noun', 'Hast du Geschwister?', 'Do you have siblings?', 'A1', 14),
  ('00000000-0000-4000-a000-0000659845b1', 'der Sohn', 'الابن', 'son', 'le fils', 'der', 'die Söhne', 'noun', 'Wir haben einen Sohn.', 'We have a son.', 'A1', 15),
  ('00000000-0000-4000-a000-0000659845b1', 'die Tochter', 'الابنة', 'daughter', 'la fille', 'die', 'die Töchter', 'noun', 'Meine Tochter geht zur Schule.', 'My daughter goes to school.', 'A1', 16),
  ('00000000-0000-4000-a000-0000659845b1', 'die Großeltern', 'الأجداد', 'grandparents', 'les grands-parents', 'die', NULL, 'noun', 'Meine Großeltern wohnen auf dem Land.', 'My grandparents live in the countryside.', 'A1', 17),
  ('00000000-0000-4000-a000-0000659845b1', 'verheiratet', 'متزوج', 'married', 'marié(e)', NULL, NULL, 'adjective', 'Meine Eltern sind verheiratet.', 'My parents are married.', 'A1', 18),
  ('00000000-0000-4000-a000-0000659845b1', 'das Brot', 'الخبز', 'bread', 'le pain', 'das', 'die Brote', 'noun', 'Ich kaufe ein Brot.', 'I buy a loaf of bread.', 'A1', 19),
  ('00000000-0000-4000-a000-0000659845b1', 'die Milch', 'الحليب', 'milk', 'le lait', 'die', NULL, 'noun', 'Die Milch ist frisch.', 'The milk is fresh.', 'A1', 20),
  ('00000000-0000-4000-a000-0000659845b1', 'der Käse', 'الجبن', 'cheese', 'le fromage', 'der', NULL, 'noun', 'Der Käse schmeckt gut.', 'The cheese tastes good.', 'A1', 21),
  ('00000000-0000-4000-a000-0000659845b1', 'der Apfel', 'التفاح', 'apple', 'la pomme', 'der', 'die Äpfel', 'noun', 'Der Apfel ist rot.', 'The apple is red.', 'A1', 22),
  ('00000000-0000-4000-a000-0000659845b1', 'das Ei', 'البيضة', 'egg', 'l''œuf', 'das', 'die Eier', 'noun', 'Ich esse ein Ei zum Frühstück.', 'I eat an egg for breakfast.', 'A1', 23),
  ('00000000-0000-4000-a000-0000659845b1', 'das Obst', 'الفاكهة', 'fruit', 'les fruits', 'das', NULL, 'noun', 'Obst ist gesund.', 'Fruit is healthy.', 'A1', 24),
  ('00000000-0000-4000-a000-0000659845b1', 'das Gemüse', 'الخضروات', 'vegetables', 'les légumes', 'das', NULL, 'noun', 'Ich kaufe Gemüse auf dem Markt.', 'I buy vegetables at the market.', 'A1', 25),
  ('00000000-0000-4000-a000-0000659845b1', 'kochen', 'يطبخ', 'to cook', 'cuisiner', NULL, NULL, 'verb', 'Meine Mutter kocht gut.', 'My mother cooks well.', 'A1', 26),
  ('00000000-0000-4000-a000-0000659845b1', 'der Fisch', 'السمك', 'fish', 'le poisson', 'der', 'die Fische', 'noun', 'Der Fisch ist frisch.', 'The fish is fresh.', 'A1', 27),
  ('00000000-0000-4000-a000-0000659845b1', 'das Fleisch', 'اللحم', 'meat', 'la viande', 'das', NULL, 'noun', 'Ich esse nicht viel Fleisch.', 'I do not eat much meat.', 'A1', 28),
  ('00000000-0000-4000-a000-0000659845b1', 'das Haus', 'البيت', 'house', 'la maison', 'das', 'die Häuser', 'noun', 'Das Haus ist groß.', 'The house is big.', 'A1', 29),
  ('00000000-0000-4000-a000-0000659845b1', 'die Wohnung', 'الشقة', 'apartment', 'l''appartement', 'die', 'die Wohnungen', 'noun', 'Meine Wohnung hat drei Zimmer.', 'My apartment has three rooms.', 'A1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000659845b1', 'Präsens der regelmäßigen Verben (Present Tense) / المضارع للأفعال المنتظمة', 'In German, regular verbs follow a consistent pattern. The infinitive ends in -en. Remove the -en and add the personal endings: ich -e, du -st, er/sie/es -t, wir -en, ihr -t, sie/Sie -en. For most Arabic speakers, this is easier than Arabic verb conjugation because German has fewer forms.', '[{"rule":"ich: stem + e","note":"Ich lerne, ich wohne, ich arbeite"},{"rule":"du: stem + st","note":"Du lernst, du wohnst, du arbeitest"},{"rule":"er/sie/es: stem + t","note":"Er lernt, sie wohnt, es arbeitet"},{"rule":"wir: stem + en","note":"Wir lernen, wir wohnen, wir arbeiten"},{"rule":"ihr: stem + t","note":"Ihr lernt, ihr wohnt, ihr arbeitet"},{"rule":"sie/Sie: stem + en","note":"Sie lernen, Sie wohnen"}]', '[{"german":"Ich lerne Deutsch.","arabic":"أنا أتعلم الألمانية.","english":"I am learning German."},{"german":"Du wohnst in Berlin.","arabic":"أنت تسكن في برلين.","english":"You live in Berlin."},{"german":"Er arbeitet bei Siemens.","arabic":"هو يعمل في سيمنز.","english":"He works at Siemens."}]', '[{"mistake":"Ich lernen Deutsch","correction":"Ich lerne Deutsch","explanation":"After \"ich\" we use the stem + e, not the infinitive."},{"mistake":"Er lerne Deutsch","correction":"Er lernt Deutsch","explanation":"After \"er/sie/es\" we add -t, not -e."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000659845b1', 'multiple_choice', 'Which German word matches "hello"?', '["Guten Tag","Guten Morgen","der Name","Tschüss"]', 'Hallo', '"hello" = "Hallo" in German.  ', 1, 1),
  ('00000000-0000-4000-a000-0000659845b1', 'multiple_choice', 'Which German word matches "good morning"?', '["Tschüss","der Name","Guten Tag","Hallo"]', 'Guten Morgen', '"good morning" = "Guten Morgen" in German.  ', 1, 2),
  ('00000000-0000-4000-a000-0000659845b1', 'multiple_choice', 'Which German word matches "good day"?', '["Guten Tag","Tschüss","Hallo","Guten Morgen"]', 'Guten Tag', '"good day" = "Guten Tag" in German.  ', 1, 3),
  ('00000000-0000-4000-a000-0000659845b1', 'multiple_choice', 'Which German word matches "bye"?', '["Tschüss","Hallo","der Name","Guten Morgen"]', 'Tschüss', '"bye" = "Tschüss" in German.  ', 1, 4),
  ('00000000-0000-4000-a000-0000659845b1', 'multiple_choice', 'Which German word matches "name"?', '["Guten Morgen","Tschüss","Guten Tag","Hallo"]', 'der Name', '"name" = "der Name" in German. Article: der Plural: die Namen', 1, 5),
  ('00000000-0000-4000-a000-0000659845b1', 'fill_gap', 'Complete the sentence: Ich ___ gern über Greetings & Introductions. (sprechen)', '["spreche","sprichst","spricht","sprechen"]', 'spreche', 'ich spreche gern = I like to speak. Stem: sprech- + e.', 2, 6),
  ('00000000-0000-4000-a000-0000659845b1', 'translation', 'Translate to German: "I am learning about Greetings & Introductions."', '["Ich lerne über Greetings & Introductions.","Ich lerne Greetings & Introductions.","Lerne ich Greetings & Introductions."]', 'Ich lerne über Greetings & Introductions.', '"Ich lerne über..." = "I am learning about..."', 2, 7),
  ('00000000-0000-4000-a000-0000659845b1', 'matching', 'Match: Which word pairs are correct?', '["Hallo - hello, Guten Morgen - good morning"]', 'Matched correctly', 'Each German word has a unique English equivalent.', 2, 8);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-0000659845b1', 'multiple_choice', 'What does "Hallo" mean in English?', '["hello","to run","beautiful","yesterday"]', 'hello', 1, 1),
  ('00000000-0000-4000-a000-0000659845b1', 'multiple_choice', 'What is the correct article for "Guten Morgen"?', '["der","die","das","den"]', 'der', 1, 2),
  ('00000000-0000-4000-a000-0000659845b1', 'true_false', 'The word "Guten Tag" is related to Greetings & Introductions.', '["True","False"]', 'True', 1, 3),
  ('00000000-0000-4000-a000-0000659845b1', 'multiple_choice', 'Which sentence correctly uses present_tense?', '["Ich lerne Deutsch.","Du wohnst in Berlin.","Er arbeitet bei Siemens."]', 'Ich lerne Deutsch.', 2, 4),
  ('00000000-0000-4000-a000-0000659845b1', 'true_false', 'German word order puts the verb in second position in main clauses.', '["True","False"]', 'True', 1, 5),
  ('00000000-0000-4000-a000-0000659845b1', 'fill_blank', 'Complete: Ich ___ (bye) Deutsch.', '["Tschüss","lernt","lernst","lernen"]', 'lerne', 2, 6),
  ('00000000-0000-4000-a000-0000659845b1', 'multiple_choice', 'What is the German word for "name"?', '["der Name","wie","freuen","Willkommen"]', 'der Name', 1, 7),
  ('00000000-0000-4000-a000-0000659845b1', 'true_false', 'In German, ALL nouns are always capitalised.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-0000659845b1', 'multiple_choice', 'How do you say "please" in a restaurant in Germany?', '["Bitte","Danke","Tschüss","Hallo"]', 'Bitte', 1, 9),
  ('00000000-0000-4000-a000-0000659845b1', 'fill_blank', 'Wo ___ (to live) du?', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 2, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, french_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-0000659845b1', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', NULL, 'Used in Hallo! Erste Schritte', 'formal', false, 1),
  ('00000000-0000-4000-a000-0000659845b1', 'Guten Tag!', 'Good day!', 'نهارك سعيد!', NULL, 'Used in Hallo! Erste Schritte', 'formal', false, 2),
  ('00000000-0000-4000-a000-0000659845b1', 'Hallo, wie geht es Ihnen?', 'Hello, how are you?', 'مرحباً، كيف حالكم؟', NULL, 'Used in Hallo! Erste Schritte', 'formal', false, 3),
  ('00000000-0000-4000-a000-0000659845b1', 'Schön, Sie kennenzulernen!', 'Nice to meet you!', 'سعيد بلقائكم!', NULL, 'Used in Hallo! Erste Schritte', 'formal', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-0000659845b1', 'Hallo', 'hello — مرحباً', 'interjection', 'vocabulary', 1),
  ('00000000-0000-4000-a000-0000659845b1', 'Guten Morgen', 'good morning — صباح الخير', 'phrase', 'vocabulary', 2),
  ('00000000-0000-4000-a000-0000659845b1', 'Guten Tag', 'good day — نهارك سعيد', 'phrase', 'vocabulary', 3),
  ('00000000-0000-4000-a000-0000659845b1', 'Tschüss', 'bye — مع السلامة', 'interjection', 'vocabulary', 4),
  ('00000000-0000-4000-a000-0000659845b1', 'der der Name (die Namen)', 'name — الاسم', 'noun', 'vocabulary', 5),
  ('00000000-0000-4000-a000-0000659845b1', 'wie', 'how — كيف', 'adverb', 'vocabulary', 6),
  ('00000000-0000-4000-a000-0000659845b1', 'freuen', 'to be pleased — يسر', 'verb', 'vocabulary', 7),
  ('00000000-0000-4000-a000-0000659845b1', 'Willkommen', 'welcome — أهلاً وسهلاً', 'interjection', 'vocabulary', 8),
  ('00000000-0000-4000-a000-0000659845b1', 'die die Familie (die Familien)', 'family — العائلة', 'noun', 'vocabulary', 9),
  ('00000000-0000-4000-a000-0000659845b1', 'der der Vater (die Väter)', 'father — الأب', 'noun', 'vocabulary', 10),
  ('00000000-0000-4000-a000-0000659845b1', 'die die Mutter (die Mütter)', 'mother — الأم', 'noun', 'vocabulary', 11),
  ('00000000-0000-4000-a000-0000659845b1', 'der der Bruder (die Brüder)', 'brother — الأخ', 'noun', 'vocabulary', 12),
  ('00000000-0000-4000-a000-0000659845b1', 'die die Schwester (die Schwestern)', 'sister — الأخت', 'noun', 'vocabulary', 13),
  ('00000000-0000-4000-a000-0000659845b1', 'die die Geschwister', 'siblings — الإخوة', 'noun', 'vocabulary', 14),
  ('00000000-0000-4000-a000-0000659845b1', 'der der Sohn (die Söhne)', 'son — الابن', 'noun', 'vocabulary', 15),
  ('00000000-0000-4000-a000-0000659845b1', 'Ich lerne Deutsch.', 'I am learning German.', 'Präsens der regelmäßigen Verben (Present Tense)', 'grammar', 16),
  ('00000000-0000-4000-a000-0000659845b1', 'Du wohnst in Berlin.', 'You live in Berlin.', 'Präsens der regelmäßigen Verben (Present Tense)', 'grammar', 17),
  ('00000000-0000-4000-a000-0000659845b1', 'Er arbeitet bei Siemens.', 'He works at Siemens.', 'Präsens der regelmäßigen Verben (Present Tense)', 'grammar', 18);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, french_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-0000659845b1', 'Begrüßungen und Vorstellungen — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', NULL, 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, french_translation, duration_seconds, speaker_count, scenario) values
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

[Lehrerin]: ممتاز! إلى الغد!', '[Lehrerin]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: ', 72, 2, 'Hallo! Erste Schritte');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-0000659845b1', '🔊 Sprechen: Begrüßungen und Vorstellungen', 'Roleplay: You are in a Hamburg office. Introduce yourself and talk about Greetings & Introductions. Your partner (AI) will respond naturally.', 'Greetings & Introductions', ARRAY['Use complete sentences — not single words','Pause between phrases, not between words','Don''t translate from Arabic word-for-word']::text[], ARRAY['Hallo','Guten Morgen','Guten Tag','Tschüss','der Name','wie','freuen','Willkommen']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-0000659845b1', '✏️ Schreiben: Begrüßungen und Vorstellungen', 'Write an email to a German friend about "Greetings & Introductions". Tell them what you learned, what you found interesting, and ask two questions about their experience with this topic. Use at least 8 vocabulary words from this lesson. Sign off naturally ("Viele Grüße", "Liebe Grüße").', ARRAY['Start with "Hallo" or "Liebe/r"','Keep sentences short (Subject-Verb-Object)','End with a friendly farewell']::text[], ARRAY['Hallo','Guten Morgen','Guten Tag','Tschüss','der Name','wie','freuen','Willkommen']::text[], ARRAY['Sentence structure','Vocabulary usage']::text[], 50, 100, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000659845b1', 'Begrüßungen und Vorstellungen — Roleplay', 'Greetings & Introductions', 'Student', 'Teacher', 'Practice conversation about Greetings & Introductions', 'Hallo! Lass uns über dieses Thema sprechen.', 'beginner', 1, ARRAY['Hallo','Guten Morgen','Guten Tag','Tschüss','der Name','wie','freuen','Willkommen']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000659845b1', 'Begrüßungen und Vorstellungen — Advanced Roleplay', 'Greetings & Introductions', 'Customer', 'Assistant', 'Extended conversation about Greetings & Introductions', 'Guten Tag! Wie kann ich Ihnen helfen?', 'beginner', 2, ARRAY['Hallo','Guten Morgen','Guten Tag','Tschüss','der Name','wie','freuen','Willkommen']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-0000659845b1', 'Begrüßungen und Vorstellungen — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Begrüßungen und Vorstellungen".', 'Creative practice for Greetings & Introductions', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-0000659845b1', '📚 Hausaufgabe: Begrüßungen und Vorstellungen', 'Complete these tasks to reinforce "Begrüßungen und Vorstellungen".', 'mixed', '[{"description":"Create 10 flashcards from this lesson''s vocabulary — write German on one side, Arabic on the other. Test yourself 3 times."},{"description":"Write 6 sentences about Greetings & Introductions: 2 statements, 2 questions, 2 negations — all using present_tense."},{"description":"Record yourself reading the dialogue aloud. Listen to the recording and note 3 things to improve."},{"description":"Find 3 real German websites, videos, or articles about Greetings & Introductions. Note 5 new words you discovered."}]', 50, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-0000659845b1', '🎯 Great work! In this lesson you learned 142 new words about Greetings & Introductions. You practiced present_tense — an important grammar topic for A1 level. You read a text, listened to a dialogue, and practiced speaking and writing. Keep going!', '["142 vocabulary items about Greetings & Introductions","present_tense — grammar explanation and practice","Reading comprehension: text about Greetings & Introductions","Listening comprehension: dialogue about Greetings & Introductions","Speaking practice: roleplay/discussion about Greetings & Introductions","Writing task: text about Greetings & Introductions"]', '[{"title":"Begrüßungen und Vorstellungen Review","summary":"present_tense — the main grammar focus. Focus on understanding when to use this structure and forming basic sentences."}]', ARRAY['Hallo (hello)','Guten Morgen (good morning)','Guten Tag (good day)','Tschüss (bye)','der Name (name)']::text[], ARRAY['Don''t translate from Arabic word-for-word — German has different sentence structure','Learn every noun with its article: NEVER learn "Tisch" alone, always "der Tisch"','Verb always in position 2 in main clauses']::text[], ARRAY['Practice 15-20 minutes daily — consistency beats intensity','Speak out loud: German pronunciation needs muscle memory','Use the new vocabulary within 24 hours or you''ll forget it','Watch German YouTube videos about Greetings & Introductions for authentic input']::text[]);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000659845b1', 'Pronunciation: German sounds for "greetings"', 'In German, vowels are pure — unlike English diphthongs. The "ch" sound after a, o, u is guttural (like Arabic خ). After e, i, ä, ö, ü it''s soft (like English "huge" without the "u").

Common mistake for Arabic speakers: Arabic speakers tend to over-emphasise consonants. German flows — connect words smoothly (e.g., "Ich habe" becomes /ɪçabə/ not /ɪç ˈhaːbə/).', '[]', '[{"german":"Hallo","arabic":"","english":"","phonetic":""},{"german":"Guten Morgen","arabic":"","english":"","phonetic":""},{"german":"Guten Tag","arabic":"","english":"","phonetic":""},{"german":"Tschüss","arabic":"","english":"","phonetic":""}]', '[]', 10);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000659845b1', 'translation', 'Translate to German: "I use the word "hello" in a sentence about Greetings & Introductions."', '[]', 'Hallo, wie geht es dir?', 'Use  "Hallo" with the correct present_tense form.', 1, 40);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000659845b1', 'translation', 'Translate to German: "I use the word "good morning" in a sentence about Greetings & Introductions."', '[]', 'Guten Morgen, Herr Müller.', 'Use  "Guten Morgen" with the correct present_tense form.', 1, 41);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000659845b1', 'translation', 'Translate to German: "I use the word "good day" in a sentence about Greetings & Introductions."', '[]', 'Guten Tag, Frau Schmidt.', 'Use  "Guten Tag" with the correct present_tense form.', 1, 42);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000659845b1', 'Culture: 🇩🇪 Deutsche Kultur: Greetings & Introductions', 'In Germany, Greetings & Introductions is approached with typical German directness and efficiency. Germans value clarity over small talk. When discussing Greetings & Introductions, expect honest feedback and straightforward questions. This is not rudeness — it''s cultural. Arabic speakers often find this too direct at first, but you''ll appreciate it once you get used to it.

في ألمانيا، يتم التعامل مع Greetings & Introductions بوضوح وكفاءة. الألمان يقدرون الوضوح أكثر من المجاملات. لا تعتبر هذه وقاحة - إنها ثقافة مختلفة.', '["Tip: Always use \"Sie\" (formal) with strangers and colleagues","Tip: Germans appreciate punctuality — arrive 5 minutes early","Tip: Direct feedback is a sign of respect, not criticism","Tip: Prepare factual arguments, not emotional appeals"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000659845b1', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Saying \"Guten Morgen\" in the afternoon","correction":"Use \"Guten Tag\" from 10am-6pm, \"Guten Abend\" after 6pm","explanation":"Arabic \"Sabah el-kheir\" works all day. German has strict time-based greetings."},{"mistake":"Using the wrong article (der/die/das) for nouns","correction":"Learn each noun with its article as one piece","explanation":"Arabic has no articles for nouns without gender connection"}]', 30);

  -- Lesson 2: Das Alphabet (L-A1-01-02)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-0000659845b2', '00000000-0000-4000-a000-000039b4d35e', 'Das Alphabet', 'Learn the German alphabet, letter pronunciation, and spelling.', 'Alphabet', 'vocabulary', '["Understand and apply present_tense rules correctly","Use present_tense in real conversations","Avoid common mistakes Arabic speakers make with present_tense","Read and understand present_tense in context","Listen and identify present_tense in speech","Write sentences using present_tense correctly"]', 30, 2, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, french_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-0000659845b2', 'Hallo', 'مرحباً', 'hello', 'bonjour', NULL, NULL, 'interjection', 'Hallo, wie geht es dir?', 'Hello, how are you?', 'A1', 1),
  ('00000000-0000-4000-a000-0000659845b2', 'Guten Morgen', 'صباح الخير', 'good morning', 'bonjour (le matin)', NULL, NULL, 'phrase', 'Guten Morgen, Herr Müller.', 'Good morning, Mr. Müller.', 'A1', 2),
  ('00000000-0000-4000-a000-0000659845b2', 'Guten Tag', 'نهارك سعيد', 'good day', 'bonjour (l''après-midi)', NULL, NULL, 'phrase', 'Guten Tag, Frau Schmidt.', 'Good day, Mrs. Schmidt.', 'A1', 3),
  ('00000000-0000-4000-a000-0000659845b2', 'Tschüss', 'مع السلامة', 'bye', 'au revoir / salut', NULL, NULL, 'interjection', 'Tschüss, bis morgen!', 'Bye, see you tomorrow!', 'A1', 4),
  ('00000000-0000-4000-a000-0000659845b2', 'der Name', 'الاسم', 'name', 'le nom', 'der', 'die Namen', 'noun', 'Mein Name ist Anna.', 'My name is Anna.', 'A1', 5),
  ('00000000-0000-4000-a000-0000659845b2', 'wie', 'كيف', 'how', 'comment', NULL, NULL, 'adverb', 'Wie heißt du?', 'What is your name?', 'A1', 6),
  ('00000000-0000-4000-a000-0000659845b2', 'freuen', 'يسر', 'to be pleased', 'se réjouir', NULL, NULL, 'verb', 'Ich freue mich, dich kennenzulernen.', 'I am pleased to meet you.', 'A1', 7),
  ('00000000-0000-4000-a000-0000659845b2', 'Willkommen', 'أهلاً وسهلاً', 'welcome', 'bienvenue', NULL, NULL, 'interjection', 'Willkommen in Deutschland!', 'Welcome to Germany!', 'A1', 8),
  ('00000000-0000-4000-a000-0000659845b2', 'die Familie', 'العائلة', 'family', 'la famille', 'die', 'die Familien', 'noun', 'Meine Familie ist groß.', 'My family is big.', 'A1', 9),
  ('00000000-0000-4000-a000-0000659845b2', 'der Vater', 'الأب', 'father', 'le père', 'der', 'die Väter', 'noun', 'Mein Vater ist Ingenieur.', 'My father is an engineer.', 'A1', 10),
  ('00000000-0000-4000-a000-0000659845b2', 'die Mutter', 'الأم', 'mother', 'la mère', 'die', 'die Mütter', 'noun', 'Meine Mutter kocht gut.', 'My mother cooks well.', 'A1', 11),
  ('00000000-0000-4000-a000-0000659845b2', 'der Bruder', 'الأخ', 'brother', 'le frère', 'der', 'die Brüder', 'noun', 'Mein Bruder ist 15 Jahre alt.', 'My brother is 15 years old.', 'A1', 12),
  ('00000000-0000-4000-a000-0000659845b2', 'die Schwester', 'الأخت', 'sister', 'la sœur', 'die', 'die Schwestern', 'noun', 'Meine Schwester studiert Medizin.', 'My sister studies medicine.', 'A1', 13),
  ('00000000-0000-4000-a000-0000659845b2', 'die Geschwister', 'الإخوة', 'siblings', 'les frères et sœurs', 'die', NULL, 'noun', 'Hast du Geschwister?', 'Do you have siblings?', 'A1', 14),
  ('00000000-0000-4000-a000-0000659845b2', 'der Sohn', 'الابن', 'son', 'le fils', 'der', 'die Söhne', 'noun', 'Wir haben einen Sohn.', 'We have a son.', 'A1', 15),
  ('00000000-0000-4000-a000-0000659845b2', 'die Tochter', 'الابنة', 'daughter', 'la fille', 'die', 'die Töchter', 'noun', 'Meine Tochter geht zur Schule.', 'My daughter goes to school.', 'A1', 16),
  ('00000000-0000-4000-a000-0000659845b2', 'die Großeltern', 'الأجداد', 'grandparents', 'les grands-parents', 'die', NULL, 'noun', 'Meine Großeltern wohnen auf dem Land.', 'My grandparents live in the countryside.', 'A1', 17),
  ('00000000-0000-4000-a000-0000659845b2', 'verheiratet', 'متزوج', 'married', 'marié(e)', NULL, NULL, 'adjective', 'Meine Eltern sind verheiratet.', 'My parents are married.', 'A1', 18),
  ('00000000-0000-4000-a000-0000659845b2', 'das Brot', 'الخبز', 'bread', 'le pain', 'das', 'die Brote', 'noun', 'Ich kaufe ein Brot.', 'I buy a loaf of bread.', 'A1', 19),
  ('00000000-0000-4000-a000-0000659845b2', 'die Milch', 'الحليب', 'milk', 'le lait', 'die', NULL, 'noun', 'Die Milch ist frisch.', 'The milk is fresh.', 'A1', 20),
  ('00000000-0000-4000-a000-0000659845b2', 'der Käse', 'الجبن', 'cheese', 'le fromage', 'der', NULL, 'noun', 'Der Käse schmeckt gut.', 'The cheese tastes good.', 'A1', 21),
  ('00000000-0000-4000-a000-0000659845b2', 'der Apfel', 'التفاح', 'apple', 'la pomme', 'der', 'die Äpfel', 'noun', 'Der Apfel ist rot.', 'The apple is red.', 'A1', 22),
  ('00000000-0000-4000-a000-0000659845b2', 'das Ei', 'البيضة', 'egg', 'l''œuf', 'das', 'die Eier', 'noun', 'Ich esse ein Ei zum Frühstück.', 'I eat an egg for breakfast.', 'A1', 23),
  ('00000000-0000-4000-a000-0000659845b2', 'das Obst', 'الفاكهة', 'fruit', 'les fruits', 'das', NULL, 'noun', 'Obst ist gesund.', 'Fruit is healthy.', 'A1', 24),
  ('00000000-0000-4000-a000-0000659845b2', 'das Gemüse', 'الخضروات', 'vegetables', 'les légumes', 'das', NULL, 'noun', 'Ich kaufe Gemüse auf dem Markt.', 'I buy vegetables at the market.', 'A1', 25),
  ('00000000-0000-4000-a000-0000659845b2', 'kochen', 'يطبخ', 'to cook', 'cuisiner', NULL, NULL, 'verb', 'Meine Mutter kocht gut.', 'My mother cooks well.', 'A1', 26),
  ('00000000-0000-4000-a000-0000659845b2', 'der Fisch', 'السمك', 'fish', 'le poisson', 'der', 'die Fische', 'noun', 'Der Fisch ist frisch.', 'The fish is fresh.', 'A1', 27),
  ('00000000-0000-4000-a000-0000659845b2', 'das Fleisch', 'اللحم', 'meat', 'la viande', 'das', NULL, 'noun', 'Ich esse nicht viel Fleisch.', 'I do not eat much meat.', 'A1', 28),
  ('00000000-0000-4000-a000-0000659845b2', 'das Haus', 'البيت', 'house', 'la maison', 'das', 'die Häuser', 'noun', 'Das Haus ist groß.', 'The house is big.', 'A1', 29),
  ('00000000-0000-4000-a000-0000659845b2', 'die Wohnung', 'الشقة', 'apartment', 'l''appartement', 'die', 'die Wohnungen', 'noun', 'Meine Wohnung hat drei Zimmer.', 'My apartment has three rooms.', 'A1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000659845b2', 'Präsens der regelmäßigen Verben (Present Tense) / المضارع للأفعال المنتظمة', 'In German, regular verbs follow a consistent pattern. The infinitive ends in -en. Remove the -en and add the personal endings: ich -e, du -st, er/sie/es -t, wir -en, ihr -t, sie/Sie -en. For most Arabic speakers, this is easier than Arabic verb conjugation because German has fewer forms.', '[{"rule":"ich: stem + e","note":"Ich lerne, ich wohne, ich arbeite"},{"rule":"du: stem + st","note":"Du lernst, du wohnst, du arbeitest"},{"rule":"er/sie/es: stem + t","note":"Er lernt, sie wohnt, es arbeitet"},{"rule":"wir: stem + en","note":"Wir lernen, wir wohnen, wir arbeiten"},{"rule":"ihr: stem + t","note":"Ihr lernt, ihr wohnt, ihr arbeitet"},{"rule":"sie/Sie: stem + en","note":"Sie lernen, Sie wohnen"}]', '[{"german":"Ich lerne Deutsch.","arabic":"أنا أتعلم الألمانية.","english":"I am learning German."},{"german":"Du wohnst in Berlin.","arabic":"أنت تسكن في برلين.","english":"You live in Berlin."},{"german":"Er arbeitet bei Siemens.","arabic":"هو يعمل في سيمنز.","english":"He works at Siemens."}]', '[{"mistake":"Ich lernen Deutsch","correction":"Ich lerne Deutsch","explanation":"After \"ich\" we use the stem + e, not the infinitive."},{"mistake":"Er lerne Deutsch","correction":"Er lernt Deutsch","explanation":"After \"er/sie/es\" we add -t, not -e."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000659845b2', 'multiple_choice', 'Which German word matches "hello"?', '["Hallo","Guten Morgen","Guten Tag","Tschüss"]', 'Hallo', '"hello" = "Hallo" in German.  ', 1, 1),
  ('00000000-0000-4000-a000-0000659845b2', 'multiple_choice', 'Which German word matches "good morning"?', '["Tschüss","Hallo","Guten Morgen","der Name"]', 'Guten Morgen', '"good morning" = "Guten Morgen" in German.  ', 1, 2),
  ('00000000-0000-4000-a000-0000659845b2', 'multiple_choice', 'Which German word matches "good day"?', '["der Name","Guten Morgen","Tschüss","Hallo"]', 'Guten Tag', '"good day" = "Guten Tag" in German.  ', 1, 3),
  ('00000000-0000-4000-a000-0000659845b2', 'multiple_choice', 'Which German word matches "bye"?', '["Hallo","der Name","Guten Tag","Tschüss"]', 'Tschüss', '"bye" = "Tschüss" in German.  ', 1, 4),
  ('00000000-0000-4000-a000-0000659845b2', 'multiple_choice', 'Which German word matches "name"?', '["Hallo","der Name","Tschüss","Guten Morgen"]', 'der Name', '"name" = "der Name" in German. Article: der Plural: die Namen', 1, 5),
  ('00000000-0000-4000-a000-0000659845b2', 'fill_gap', 'Complete the sentence: Ich ___ gern über Alphabet. (sprechen)', '["spreche","sprichst","spricht","sprechen"]', 'spreche', 'ich spreche gern = I like to speak. Stem: sprech- + e.', 2, 6),
  ('00000000-0000-4000-a000-0000659845b2', 'translation', 'Translate to German: "I am learning about Alphabet."', '["Ich lerne über Alphabet.","Ich lerne Alphabet.","Lerne ich Alphabet."]', 'Ich lerne über Alphabet.', '"Ich lerne über..." = "I am learning about..."', 2, 7),
  ('00000000-0000-4000-a000-0000659845b2', 'matching', 'Match: Which word pairs are correct?', '["Hallo - hello, Guten Morgen - good morning"]', 'Matched correctly', 'Each German word has a unique English equivalent.', 2, 8);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-0000659845b2', 'multiple_choice', 'What does "Hallo" mean in English?', '["hello","to run","beautiful","yesterday"]', 'hello', 1, 1),
  ('00000000-0000-4000-a000-0000659845b2', 'multiple_choice', 'What is the correct article for "Guten Morgen"?', '["der","die","das","den"]', 'der', 1, 2),
  ('00000000-0000-4000-a000-0000659845b2', 'true_false', 'The word "Guten Tag" is related to Alphabet.', '["True","False"]', 'True', 1, 3),
  ('00000000-0000-4000-a000-0000659845b2', 'multiple_choice', 'Which sentence correctly uses present_tense?', '["Ich lerne Deutsch.","Du wohnst in Berlin.","Er arbeitet bei Siemens."]', 'Ich lerne Deutsch.', 2, 4),
  ('00000000-0000-4000-a000-0000659845b2', 'true_false', 'German word order puts the verb in second position in main clauses.', '["True","False"]', 'True', 1, 5),
  ('00000000-0000-4000-a000-0000659845b2', 'fill_blank', 'Complete: Ich ___ (bye) Deutsch.', '["Tschüss","lernt","lernst","lernen"]', 'lerne', 2, 6),
  ('00000000-0000-4000-a000-0000659845b2', 'multiple_choice', 'What is the German word for "name"?', '["der Name","wie","freuen","Willkommen"]', 'der Name', 1, 7),
  ('00000000-0000-4000-a000-0000659845b2', 'true_false', 'In German, ALL nouns are always capitalised.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-0000659845b2', 'multiple_choice', 'How do you say "please" in a restaurant in Germany?', '["Bitte","Danke","Tschüss","Hallo"]', 'Bitte', 1, 9),
  ('00000000-0000-4000-a000-0000659845b2', 'fill_blank', 'Wo ___ (to live) du?', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 2, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, french_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-0000659845b2', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', NULL, 'Used in Hallo! Erste Schritte', 'formal', false, 1),
  ('00000000-0000-4000-a000-0000659845b2', 'Guten Tag!', 'Good day!', 'نهارك سعيد!', NULL, 'Used in Hallo! Erste Schritte', 'formal', false, 2),
  ('00000000-0000-4000-a000-0000659845b2', 'Hallo, wie geht es Ihnen?', 'Hello, how are you?', 'مرحباً، كيف حالكم؟', NULL, 'Used in Hallo! Erste Schritte', 'formal', false, 3),
  ('00000000-0000-4000-a000-0000659845b2', 'Schön, Sie kennenzulernen!', 'Nice to meet you!', 'سعيد بلقائكم!', NULL, 'Used in Hallo! Erste Schritte', 'formal', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-0000659845b2', 'Hallo', 'hello — مرحباً', 'interjection', 'vocabulary', 1),
  ('00000000-0000-4000-a000-0000659845b2', 'Guten Morgen', 'good morning — صباح الخير', 'phrase', 'vocabulary', 2),
  ('00000000-0000-4000-a000-0000659845b2', 'Guten Tag', 'good day — نهارك سعيد', 'phrase', 'vocabulary', 3),
  ('00000000-0000-4000-a000-0000659845b2', 'Tschüss', 'bye — مع السلامة', 'interjection', 'vocabulary', 4),
  ('00000000-0000-4000-a000-0000659845b2', 'der der Name (die Namen)', 'name — الاسم', 'noun', 'vocabulary', 5),
  ('00000000-0000-4000-a000-0000659845b2', 'wie', 'how — كيف', 'adverb', 'vocabulary', 6),
  ('00000000-0000-4000-a000-0000659845b2', 'freuen', 'to be pleased — يسر', 'verb', 'vocabulary', 7),
  ('00000000-0000-4000-a000-0000659845b2', 'Willkommen', 'welcome — أهلاً وسهلاً', 'interjection', 'vocabulary', 8),
  ('00000000-0000-4000-a000-0000659845b2', 'die die Familie (die Familien)', 'family — العائلة', 'noun', 'vocabulary', 9),
  ('00000000-0000-4000-a000-0000659845b2', 'der der Vater (die Väter)', 'father — الأب', 'noun', 'vocabulary', 10),
  ('00000000-0000-4000-a000-0000659845b2', 'die die Mutter (die Mütter)', 'mother — الأم', 'noun', 'vocabulary', 11),
  ('00000000-0000-4000-a000-0000659845b2', 'der der Bruder (die Brüder)', 'brother — الأخ', 'noun', 'vocabulary', 12),
  ('00000000-0000-4000-a000-0000659845b2', 'die die Schwester (die Schwestern)', 'sister — الأخت', 'noun', 'vocabulary', 13),
  ('00000000-0000-4000-a000-0000659845b2', 'die die Geschwister', 'siblings — الإخوة', 'noun', 'vocabulary', 14),
  ('00000000-0000-4000-a000-0000659845b2', 'der der Sohn (die Söhne)', 'son — الابن', 'noun', 'vocabulary', 15),
  ('00000000-0000-4000-a000-0000659845b2', 'Ich lerne Deutsch.', 'I am learning German.', 'Präsens der regelmäßigen Verben (Present Tense)', 'grammar', 16),
  ('00000000-0000-4000-a000-0000659845b2', 'Du wohnst in Berlin.', 'You live in Berlin.', 'Präsens der regelmäßigen Verben (Present Tense)', 'grammar', 17),
  ('00000000-0000-4000-a000-0000659845b2', 'Er arbeitet bei Siemens.', 'He works at Siemens.', 'Präsens der regelmäßigen Verben (Present Tense)', 'grammar', 18);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, french_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-0000659845b2', 'Das Alphabet — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', NULL, 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, french_translation, duration_seconds, speaker_count, scenario) values
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

[Lehrerin]: ممتاز! إلى الغد!', '[Lehrerin]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: ', 72, 2, 'Hallo! Erste Schritte');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-0000659845b2', '🔊 Sprechen: Das Alphabet', 'Roleplay: You are in a Hamburg office. Introduce yourself and talk about Alphabet. Your partner (AI) will respond naturally.', 'Alphabet', ARRAY['Use complete sentences — not single words','Pause between phrases, not between words','Don''t translate from Arabic word-for-word']::text[], ARRAY['Hallo','Guten Morgen','Guten Tag','Tschüss','der Name','wie','freuen','Willkommen']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-0000659845b2', '✏️ Schreiben: Das Alphabet', 'Write an email to a German friend about "Alphabet". Tell them what you learned, what you found interesting, and ask two questions about their experience with this topic. Use at least 8 vocabulary words from this lesson. Sign off naturally ("Viele Grüße", "Liebe Grüße").', ARRAY['Start with "Hallo" or "Liebe/r"','Keep sentences short (Subject-Verb-Object)','End with a friendly farewell']::text[], ARRAY['Hallo','Guten Morgen','Guten Tag','Tschüss','der Name','wie','freuen','Willkommen']::text[], ARRAY['Sentence structure','Vocabulary usage']::text[], 50, 100, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000659845b2', 'Das Alphabet — Roleplay', 'Alphabet', 'Student', 'Teacher', 'Practice conversation about Alphabet', 'Hallo! Lass uns über dieses Thema sprechen.', 'beginner', 1, ARRAY['Hallo','Guten Morgen','Guten Tag','Tschüss','der Name','wie','freuen','Willkommen']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000659845b2', 'Das Alphabet — Advanced Roleplay', 'Alphabet', 'Customer', 'Assistant', 'Extended conversation about Alphabet', 'Guten Tag! Wie kann ich Ihnen helfen?', 'beginner', 2, ARRAY['Hallo','Guten Morgen','Guten Tag','Tschüss','der Name','wie','freuen','Willkommen']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-0000659845b2', 'Das Alphabet — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Das Alphabet".', 'Creative practice for Alphabet', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-0000659845b2', '📚 Hausaufgabe: Das Alphabet', 'Complete these tasks to reinforce "Das Alphabet".', 'mixed', '[{"description":"Create 10 flashcards from this lesson''s vocabulary — write German on one side, Arabic on the other. Test yourself 3 times."},{"description":"Write 6 sentences about Alphabet: 2 statements, 2 questions, 2 negations — all using present_tense."},{"description":"Record yourself reading the dialogue aloud. Listen to the recording and note 3 things to improve."},{"description":"Find 3 real German websites, videos, or articles about Alphabet. Note 5 new words you discovered."}]', 50, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-0000659845b2', '🎯 Great work! In this lesson you learned 142 new words about Alphabet. You practiced present_tense — an important grammar topic for A1 level. You read a text, listened to a dialogue, and practiced speaking and writing. Keep going!', '["142 vocabulary items about Alphabet","present_tense — grammar explanation and practice","Reading comprehension: text about Alphabet","Listening comprehension: dialogue about Alphabet","Speaking practice: roleplay/discussion about Alphabet","Writing task: text about Alphabet"]', '[{"title":"Das Alphabet Review","summary":"present_tense — the main grammar focus. Focus on understanding when to use this structure and forming basic sentences."}]', ARRAY['Hallo (hello)','Guten Morgen (good morning)','Guten Tag (good day)','Tschüss (bye)','der Name (name)']::text[], ARRAY['Don''t translate from Arabic word-for-word — German has different sentence structure','Learn every noun with its article: NEVER learn "Tisch" alone, always "der Tisch"','Verb always in position 2 in main clauses']::text[], ARRAY['Practice 15-20 minutes daily — consistency beats intensity','Speak out loud: German pronunciation needs muscle memory','Use the new vocabulary within 24 hours or you''ll forget it','Watch German YouTube videos about Alphabet for authentic input']::text[]);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000659845b2', 'Pronunciation: German sounds for "greetings"', 'In German, vowels are pure — unlike English diphthongs. The "ch" sound after a, o, u is guttural (like Arabic خ). After e, i, ä, ö, ü it''s soft (like English "huge" without the "u").

Common mistake for Arabic speakers: Arabic speakers tend to over-emphasise consonants. German flows — connect words smoothly (e.g., "Ich habe" becomes /ɪçabə/ not /ɪç ˈhaːbə/).', '[]', '[{"german":"Hallo","arabic":"","english":"","phonetic":""},{"german":"Guten Morgen","arabic":"","english":"","phonetic":""},{"german":"Guten Tag","arabic":"","english":"","phonetic":""},{"german":"Tschüss","arabic":"","english":"","phonetic":""}]', '[]', 10);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000659845b2', 'translation', 'Translate to German: "I use the word "hello" in a sentence about Alphabet."', '[]', 'Hallo, wie geht es dir?', 'Use  "Hallo" with the correct present_tense form.', 1, 40);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000659845b2', 'translation', 'Translate to German: "I use the word "good morning" in a sentence about Alphabet."', '[]', 'Guten Morgen, Herr Müller.', 'Use  "Guten Morgen" with the correct present_tense form.', 1, 41);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000659845b2', 'translation', 'Translate to German: "I use the word "good day" in a sentence about Alphabet."', '[]', 'Guten Tag, Frau Schmidt.', 'Use  "Guten Tag" with the correct present_tense form.', 1, 42);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000659845b2', 'Culture: 🇩🇪 Deutsche Kultur: Alphabet', 'In Germany, Alphabet is approached with typical German directness and efficiency. Germans value clarity over small talk. When discussing Alphabet, expect honest feedback and straightforward questions. This is not rudeness — it''s cultural. Arabic speakers often find this too direct at first, but you''ll appreciate it once you get used to it.

في ألمانيا، يتم التعامل مع Alphabet بوضوح وكفاءة. الألمان يقدرون الوضوح أكثر من المجاملات. لا تعتبر هذه وقاحة - إنها ثقافة مختلفة.', '["Tip: Always use \"Sie\" (formal) with strangers and colleagues","Tip: Germans appreciate punctuality — arrive 5 minutes early","Tip: Direct feedback is a sign of respect, not criticism","Tip: Prepare factual arguments, not emotional appeals"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000659845b2', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Saying \"Guten Morgen\" in the afternoon","correction":"Use \"Guten Tag\" from 10am-6pm, \"Guten Abend\" after 6pm","explanation":"Arabic \"Sabah el-kheir\" works all day. German has strict time-based greetings."},{"mistake":"Using the wrong article (der/die/das) for nouns","correction":"Learn each noun with its article as one piece","explanation":"Arabic has no articles for nouns without gender connection"}]', 30);

  -- Lesson 3: Zahlen 1-20 (L-A1-01-03)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-0000659845b3', '00000000-0000-4000-a000-000039b4d35e', 'Zahlen 1-20', 'Learn numbers from 1 to 20, age, and phone numbers.', 'Numbers', 'vocabulary', '["Understand and use 142 key vocabulary words about Numbers","Apply present_tense correctly in sentences","Read and comprehend a text about Numbers","Listen and understand a natural dialogue about Numbers","Speak about Numbers with confidence","Write a short text about Numbers using new vocabulary"]', 25, 3, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, french_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-0000659845b3', 'eins', 'واحد', 'one', NULL, NULL, NULL, 'numeral', 'Ich habe einen Bruder.', 'I have one brother.', 'A1', 1),
  ('00000000-0000-4000-a000-0000659845b3', 'zwei', 'اثنان', 'two', NULL, NULL, NULL, 'numeral', 'Wir haben zwei Katzen.', 'We have two cats.', 'A1', 2),
  ('00000000-0000-4000-a000-0000659845b3', 'drei', 'ثلاثة', 'three', NULL, NULL, NULL, 'numeral', 'Die Wohnung hat drei Zimmer.', 'The apartment has three rooms.', 'A1', 3),
  ('00000000-0000-4000-a000-0000659845b3', 'die Zahl', 'الرقم', 'number', NULL, 'die', 'die Zahlen', 'noun', 'Die Zahl 5 ist meine Glückszahl.', 'The number 5 is my lucky number.', 'A1', 4),
  ('00000000-0000-4000-a000-0000659845b3', 'zählen', 'يعد', 'to count', NULL, NULL, NULL, 'verb', 'Kannst du bis 100 zählen?', 'Can you count to 100?', 'A1', 5),
  ('00000000-0000-4000-a000-0000659845b3', 'Hallo', 'مرحباً', 'hello', 'bonjour', NULL, NULL, 'interjection', 'Hallo, wie geht es dir?', 'Hello, how are you?', 'A1', 6),
  ('00000000-0000-4000-a000-0000659845b3', 'Guten Morgen', 'صباح الخير', 'good morning', 'bonjour (le matin)', NULL, NULL, 'phrase', 'Guten Morgen, Herr Müller.', 'Good morning, Mr. Müller.', 'A1', 7),
  ('00000000-0000-4000-a000-0000659845b3', 'Guten Tag', 'نهارك سعيد', 'good day', 'bonjour (l''après-midi)', NULL, NULL, 'phrase', 'Guten Tag, Frau Schmidt.', 'Good day, Mrs. Schmidt.', 'A1', 8),
  ('00000000-0000-4000-a000-0000659845b3', 'Tschüss', 'مع السلامة', 'bye', 'au revoir / salut', NULL, NULL, 'interjection', 'Tschüss, bis morgen!', 'Bye, see you tomorrow!', 'A1', 9),
  ('00000000-0000-4000-a000-0000659845b3', 'der Name', 'الاسم', 'name', 'le nom', 'der', 'die Namen', 'noun', 'Mein Name ist Anna.', 'My name is Anna.', 'A1', 10),
  ('00000000-0000-4000-a000-0000659845b3', 'wie', 'كيف', 'how', 'comment', NULL, NULL, 'adverb', 'Wie heißt du?', 'What is your name?', 'A1', 11),
  ('00000000-0000-4000-a000-0000659845b3', 'freuen', 'يسر', 'to be pleased', 'se réjouir', NULL, NULL, 'verb', 'Ich freue mich, dich kennenzulernen.', 'I am pleased to meet you.', 'A1', 12),
  ('00000000-0000-4000-a000-0000659845b3', 'Willkommen', 'أهلاً وسهلاً', 'welcome', 'bienvenue', NULL, NULL, 'interjection', 'Willkommen in Deutschland!', 'Welcome to Germany!', 'A1', 13),
  ('00000000-0000-4000-a000-0000659845b3', 'die Familie', 'العائلة', 'family', 'la famille', 'die', 'die Familien', 'noun', 'Meine Familie ist groß.', 'My family is big.', 'A1', 14),
  ('00000000-0000-4000-a000-0000659845b3', 'der Vater', 'الأب', 'father', 'le père', 'der', 'die Väter', 'noun', 'Mein Vater ist Ingenieur.', 'My father is an engineer.', 'A1', 15),
  ('00000000-0000-4000-a000-0000659845b3', 'die Mutter', 'الأم', 'mother', 'la mère', 'die', 'die Mütter', 'noun', 'Meine Mutter kocht gut.', 'My mother cooks well.', 'A1', 16),
  ('00000000-0000-4000-a000-0000659845b3', 'der Bruder', 'الأخ', 'brother', 'le frère', 'der', 'die Brüder', 'noun', 'Mein Bruder ist 15 Jahre alt.', 'My brother is 15 years old.', 'A1', 17),
  ('00000000-0000-4000-a000-0000659845b3', 'die Schwester', 'الأخت', 'sister', 'la sœur', 'die', 'die Schwestern', 'noun', 'Meine Schwester studiert Medizin.', 'My sister studies medicine.', 'A1', 18),
  ('00000000-0000-4000-a000-0000659845b3', 'die Geschwister', 'الإخوة', 'siblings', 'les frères et sœurs', 'die', NULL, 'noun', 'Hast du Geschwister?', 'Do you have siblings?', 'A1', 19),
  ('00000000-0000-4000-a000-0000659845b3', 'der Sohn', 'الابن', 'son', 'le fils', 'der', 'die Söhne', 'noun', 'Wir haben einen Sohn.', 'We have a son.', 'A1', 20),
  ('00000000-0000-4000-a000-0000659845b3', 'die Tochter', 'الابنة', 'daughter', 'la fille', 'die', 'die Töchter', 'noun', 'Meine Tochter geht zur Schule.', 'My daughter goes to school.', 'A1', 21),
  ('00000000-0000-4000-a000-0000659845b3', 'die Großeltern', 'الأجداد', 'grandparents', 'les grands-parents', 'die', NULL, 'noun', 'Meine Großeltern wohnen auf dem Land.', 'My grandparents live in the countryside.', 'A1', 22),
  ('00000000-0000-4000-a000-0000659845b3', 'verheiratet', 'متزوج', 'married', 'marié(e)', NULL, NULL, 'adjective', 'Meine Eltern sind verheiratet.', 'My parents are married.', 'A1', 23),
  ('00000000-0000-4000-a000-0000659845b3', 'das Brot', 'الخبز', 'bread', 'le pain', 'das', 'die Brote', 'noun', 'Ich kaufe ein Brot.', 'I buy a loaf of bread.', 'A1', 24),
  ('00000000-0000-4000-a000-0000659845b3', 'die Milch', 'الحليب', 'milk', 'le lait', 'die', NULL, 'noun', 'Die Milch ist frisch.', 'The milk is fresh.', 'A1', 25),
  ('00000000-0000-4000-a000-0000659845b3', 'der Käse', 'الجبن', 'cheese', 'le fromage', 'der', NULL, 'noun', 'Der Käse schmeckt gut.', 'The cheese tastes good.', 'A1', 26),
  ('00000000-0000-4000-a000-0000659845b3', 'der Apfel', 'التفاح', 'apple', 'la pomme', 'der', 'die Äpfel', 'noun', 'Der Apfel ist rot.', 'The apple is red.', 'A1', 27),
  ('00000000-0000-4000-a000-0000659845b3', 'das Ei', 'البيضة', 'egg', 'l''œuf', 'das', 'die Eier', 'noun', 'Ich esse ein Ei zum Frühstück.', 'I eat an egg for breakfast.', 'A1', 28),
  ('00000000-0000-4000-a000-0000659845b3', 'das Obst', 'الفاكهة', 'fruit', 'les fruits', 'das', NULL, 'noun', 'Obst ist gesund.', 'Fruit is healthy.', 'A1', 29),
  ('00000000-0000-4000-a000-0000659845b3', 'das Gemüse', 'الخضروات', 'vegetables', 'les légumes', 'das', NULL, 'noun', 'Ich kaufe Gemüse auf dem Markt.', 'I buy vegetables at the market.', 'A1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000659845b3', 'Präsens der regelmäßigen Verben (Present Tense) / المضارع للأفعال المنتظمة', 'In German, regular verbs follow a consistent pattern. The infinitive ends in -en. Remove the -en and add the personal endings: ich -e, du -st, er/sie/es -t, wir -en, ihr -t, sie/Sie -en. For most Arabic speakers, this is easier than Arabic verb conjugation because German has fewer forms.', '[{"rule":"ich: stem + e","note":"Ich lerne, ich wohne, ich arbeite"},{"rule":"du: stem + st","note":"Du lernst, du wohnst, du arbeitest"},{"rule":"er/sie/es: stem + t","note":"Er lernt, sie wohnt, es arbeitet"},{"rule":"wir: stem + en","note":"Wir lernen, wir wohnen, wir arbeiten"},{"rule":"ihr: stem + t","note":"Ihr lernt, ihr wohnt, ihr arbeitet"},{"rule":"sie/Sie: stem + en","note":"Sie lernen, Sie wohnen"}]', '[{"german":"Ich lerne Deutsch.","arabic":"أنا أتعلم الألمانية.","english":"I am learning German."},{"german":"Du wohnst in Berlin.","arabic":"أنت تسكن في برلين.","english":"You live in Berlin."},{"german":"Er arbeitet bei Siemens.","arabic":"هو يعمل في سيمنز.","english":"He works at Siemens."}]', '[{"mistake":"Ich lernen Deutsch","correction":"Ich lerne Deutsch","explanation":"After \"ich\" we use the stem + e, not the infinitive."},{"mistake":"Er lerne Deutsch","correction":"Er lernt Deutsch","explanation":"After \"er/sie/es\" we add -t, not -e."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000659845b3', 'multiple_choice', 'Which German word matches "one"?', '["zählen","die Zahl","drei","zwei"]', 'eins', '"one" = "eins" in German.  ', 1, 1),
  ('00000000-0000-4000-a000-0000659845b3', 'multiple_choice', 'Which German word matches "two"?', '["die Zahl","drei","zwei","eins"]', 'zwei', '"two" = "zwei" in German.  ', 1, 2),
  ('00000000-0000-4000-a000-0000659845b3', 'multiple_choice', 'Which German word matches "three"?', '["drei","die Zahl","zählen","eins"]', 'drei', '"three" = "drei" in German.  ', 1, 3),
  ('00000000-0000-4000-a000-0000659845b3', 'multiple_choice', 'Which German word matches "number"?', '["eins","zählen","die Zahl","drei"]', 'die Zahl', '"number" = "die Zahl" in German. Article: die Plural: die Zahlen', 1, 4),
  ('00000000-0000-4000-a000-0000659845b3', 'multiple_choice', 'Which German word matches "to count"?', '["die Zahl","eins","drei","zählen"]', 'zählen', '"to count" = "zählen" in German.  ', 1, 5),
  ('00000000-0000-4000-a000-0000659845b3', 'fill_gap', 'Complete the sentence: Ich ___ gern über Numbers. (sprechen)', '["spreche","sprichst","spricht","sprechen"]', 'spreche', 'ich spreche gern = I like to speak. Stem: sprech- + e.', 2, 6),
  ('00000000-0000-4000-a000-0000659845b3', 'translation', 'Translate to German: "I am learning about Numbers."', '["Ich lerne über Numbers.","Ich lerne Numbers.","Lerne ich Numbers."]', 'Ich lerne über Numbers.', '"Ich lerne über..." = "I am learning about..."', 2, 7),
  ('00000000-0000-4000-a000-0000659845b3', 'matching', 'Match: Which word pairs are correct?', '["eins - one, zwei - two"]', 'Matched correctly', 'Each German word has a unique English equivalent.', 2, 8);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-0000659845b3', 'multiple_choice', 'What does "eins" mean in English?', '["one","to run","beautiful","yesterday"]', 'one', 1, 1),
  ('00000000-0000-4000-a000-0000659845b3', 'multiple_choice', 'What is the correct article for "zwei"?', '["der","die","das","den"]', 'der', 1, 2),
  ('00000000-0000-4000-a000-0000659845b3', 'true_false', 'The word "drei" is related to Numbers.', '["True","False"]', 'True', 1, 3),
  ('00000000-0000-4000-a000-0000659845b3', 'multiple_choice', 'Which sentence correctly uses present_tense?', '["Ich lerne Deutsch.","Du wohnst in Berlin.","Er arbeitet bei Siemens."]', 'Ich lerne Deutsch.', 2, 4),
  ('00000000-0000-4000-a000-0000659845b3', 'true_false', 'German word order puts the verb in second position in main clauses.', '["True","False"]', 'True', 1, 5),
  ('00000000-0000-4000-a000-0000659845b3', 'fill_blank', 'Complete: Ich ___ (number) Deutsch.', '["die Zahl","lernt","lernst","lernen"]', 'lerne', 2, 6),
  ('00000000-0000-4000-a000-0000659845b3', 'multiple_choice', 'What is the German word for "to count"?', '["zählen","Hallo","Guten Morgen","Guten Tag"]', 'zählen', 1, 7),
  ('00000000-0000-4000-a000-0000659845b3', 'true_false', 'In German, ALL nouns are always capitalised.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-0000659845b3', 'multiple_choice', 'How do you say "please" in a restaurant in Germany?', '["Bitte","Danke","Tschüss","Hallo"]', 'Bitte', 1, 9),
  ('00000000-0000-4000-a000-0000659845b3', 'fill_blank', 'Wo ___ (to live) du?', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 2, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, french_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-0000659845b3', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', NULL, 'Used in Hallo! Erste Schritte', 'formal', false, 1),
  ('00000000-0000-4000-a000-0000659845b3', 'Guten Tag!', 'Good day!', 'نهارك سعيد!', NULL, 'Used in Hallo! Erste Schritte', 'formal', false, 2),
  ('00000000-0000-4000-a000-0000659845b3', 'Hallo, wie geht es Ihnen?', 'Hello, how are you?', 'مرحباً، كيف حالكم؟', NULL, 'Used in Hallo! Erste Schritte', 'formal', false, 3),
  ('00000000-0000-4000-a000-0000659845b3', 'Schön, Sie kennenzulernen!', 'Nice to meet you!', 'سعيد بلقائكم!', NULL, 'Used in Hallo! Erste Schritte', 'formal', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-0000659845b3', 'eins', 'one — واحد', 'numeral', 'vocabulary', 1),
  ('00000000-0000-4000-a000-0000659845b3', 'zwei', 'two — اثنان', 'numeral', 'vocabulary', 2),
  ('00000000-0000-4000-a000-0000659845b3', 'drei', 'three — ثلاثة', 'numeral', 'vocabulary', 3),
  ('00000000-0000-4000-a000-0000659845b3', 'die die Zahl (die Zahlen)', 'number — الرقم', 'noun', 'vocabulary', 4),
  ('00000000-0000-4000-a000-0000659845b3', 'zählen', 'to count — يعد', 'verb', 'vocabulary', 5),
  ('00000000-0000-4000-a000-0000659845b3', 'Hallo', 'hello — مرحباً', 'interjection', 'vocabulary', 6),
  ('00000000-0000-4000-a000-0000659845b3', 'Guten Morgen', 'good morning — صباح الخير', 'phrase', 'vocabulary', 7),
  ('00000000-0000-4000-a000-0000659845b3', 'Guten Tag', 'good day — نهارك سعيد', 'phrase', 'vocabulary', 8),
  ('00000000-0000-4000-a000-0000659845b3', 'Tschüss', 'bye — مع السلامة', 'interjection', 'vocabulary', 9),
  ('00000000-0000-4000-a000-0000659845b3', 'der der Name (die Namen)', 'name — الاسم', 'noun', 'vocabulary', 10),
  ('00000000-0000-4000-a000-0000659845b3', 'wie', 'how — كيف', 'adverb', 'vocabulary', 11),
  ('00000000-0000-4000-a000-0000659845b3', 'freuen', 'to be pleased — يسر', 'verb', 'vocabulary', 12),
  ('00000000-0000-4000-a000-0000659845b3', 'Willkommen', 'welcome — أهلاً وسهلاً', 'interjection', 'vocabulary', 13),
  ('00000000-0000-4000-a000-0000659845b3', 'die die Familie (die Familien)', 'family — العائلة', 'noun', 'vocabulary', 14),
  ('00000000-0000-4000-a000-0000659845b3', 'der der Vater (die Väter)', 'father — الأب', 'noun', 'vocabulary', 15),
  ('00000000-0000-4000-a000-0000659845b3', 'Ich lerne Deutsch.', 'I am learning German.', 'Präsens der regelmäßigen Verben (Present Tense)', 'grammar', 16),
  ('00000000-0000-4000-a000-0000659845b3', 'Du wohnst in Berlin.', 'You live in Berlin.', 'Präsens der regelmäßigen Verben (Present Tense)', 'grammar', 17),
  ('00000000-0000-4000-a000-0000659845b3', 'Er arbeitet bei Siemens.', 'He works at Siemens.', 'Präsens der regelmäßigen Verben (Present Tense)', 'grammar', 18);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, french_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-0000659845b3', 'Zahlen 1-20 — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', NULL, 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, french_translation, duration_seconds, speaker_count, scenario) values
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

[Lehrerin]: ممتاز! إلى الغد!', '[Lehrerin]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: ', 72, 2, 'Hallo! Erste Schritte');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-0000659845b3', '🔊 Sprechen: Zahlen 1-20', 'Roleplay: You are in a Hamburg office. Introduce yourself and talk about Numbers. Your partner (AI) will respond naturally.', 'Numbers', ARRAY['Use complete sentences — not single words','Pause between phrases, not between words','Don''t translate from Arabic word-for-word']::text[], ARRAY['eins','zwei','drei','die Zahl','zählen','Hallo','Guten Morgen','Guten Tag']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-0000659845b3', '✏️ Schreiben: Zahlen 1-20', 'Write an email to a German friend about "Numbers". Tell them what you learned, what you found interesting, and ask two questions about their experience with this topic. Use at least 8 vocabulary words from this lesson. Sign off naturally ("Viele Grüße", "Liebe Grüße").', ARRAY['Start with "Hallo" or "Liebe/r"','Keep sentences short (Subject-Verb-Object)','End with a friendly farewell']::text[], ARRAY['eins','zwei','drei','die Zahl','zählen','Hallo','Guten Morgen','Guten Tag']::text[], ARRAY['Sentence structure','Vocabulary usage']::text[], 50, 100, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000659845b3', 'Zahlen 1-20 — Roleplay', 'Numbers', 'Student', 'Teacher', 'Practice conversation about Numbers', 'Hallo! Lass uns über dieses Thema sprechen.', 'beginner', 1, ARRAY['eins','zwei','drei','die Zahl','zählen','Hallo','Guten Morgen','Guten Tag']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000659845b3', 'Zahlen 1-20 — Advanced Roleplay', 'Numbers', 'Customer', 'Assistant', 'Extended conversation about Numbers', 'Guten Tag! Wie kann ich Ihnen helfen?', 'beginner', 2, ARRAY['eins','zwei','drei','die Zahl','zählen','Hallo','Guten Morgen','Guten Tag']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-0000659845b3', 'Zahlen 1-20 — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Zahlen 1-20".', 'Creative practice for Numbers', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-0000659845b3', '📚 Hausaufgabe: Zahlen 1-20', 'Complete these tasks to reinforce "Zahlen 1-20".', 'mixed', '[{"description":"Create 10 flashcards from this lesson''s vocabulary — write German on one side, Arabic on the other. Test yourself 3 times."},{"description":"Write 6 sentences about Numbers: 2 statements, 2 questions, 2 negations — all using present_tense."},{"description":"Record yourself reading the dialogue aloud. Listen to the recording and note 3 things to improve."},{"description":"Find 3 real German websites, videos, or articles about Numbers. Note 5 new words you discovered."}]', 50, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-0000659845b3', '🎯 Great work! In this lesson you learned 142 new words about Numbers. You practiced present_tense — an important grammar topic for A1 level. You read a text, listened to a dialogue, and practiced speaking and writing. Keep going!', '["142 vocabulary items about Numbers","present_tense — grammar explanation and practice","Reading comprehension: text about Numbers","Listening comprehension: dialogue about Numbers","Speaking practice: roleplay/discussion about Numbers","Writing task: text about Numbers"]', '[{"title":"Zahlen 1-20 Review","summary":"present_tense — the main grammar focus. Focus on understanding when to use this structure and forming basic sentences."}]', ARRAY['eins (one)','zwei (two)','drei (three)','die Zahl (number)','zählen (to count)']::text[], ARRAY['Don''t translate from Arabic word-for-word — German has different sentence structure','Learn every noun with its article: NEVER learn "Tisch" alone, always "der Tisch"','Verb always in position 2 in main clauses']::text[], ARRAY['Practice 15-20 minutes daily — consistency beats intensity','Speak out loud: German pronunciation needs muscle memory','Use the new vocabulary within 24 hours or you''ll forget it','Watch German YouTube videos about Numbers for authentic input']::text[]);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000659845b3', 'Pronunciation: German sounds for "numbers"', 'In German, vowels are pure — unlike English diphthongs. The "ch" sound after a, o, u is guttural (like Arabic خ). After e, i, ä, ö, ü it''s soft (like English "huge" without the "u").

Common mistake for Arabic speakers: Arabic speakers tend to over-emphasise consonants. German flows — connect words smoothly (e.g., "Ich habe" becomes /ɪçabə/ not /ɪç ˈhaːbə/).', '[]', '[{"german":"eins","arabic":"","english":"","phonetic":""},{"german":"zwei","arabic":"","english":"","phonetic":""},{"german":"drei","arabic":"","english":"","phonetic":""},{"german":"die Zahl","arabic":"","english":"","phonetic":""}]', '[]', 10);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000659845b3', 'translation', 'Translate to German: "I use the word "one" in a sentence about Numbers."', '[]', 'Ich habe einen Bruder.', 'Use  "eins" with the correct present_tense form.', 1, 40);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000659845b3', 'translation', 'Translate to German: "I use the word "two" in a sentence about Numbers."', '[]', 'Wir haben zwei Katzen.', 'Use  "zwei" with the correct present_tense form.', 1, 41);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000659845b3', 'translation', 'Translate to German: "I use the word "three" in a sentence about Numbers."', '[]', 'Die Wohnung hat drei Zimmer.', 'Use  "drei" with the correct present_tense form.', 1, 42);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000659845b3', 'Culture: 🇩🇪 Deutsche Kultur: Numbers', 'In Germany, Numbers is approached with typical German directness and efficiency. Germans value clarity over small talk. When discussing Numbers, expect honest feedback and straightforward questions. This is not rudeness — it''s cultural. Arabic speakers often find this too direct at first, but you''ll appreciate it once you get used to it.

في ألمانيا، يتم التعامل مع Numbers بوضوح وكفاءة. الألمان يقدرون الوضوح أكثر من المجاملات. لا تعتبر هذه وقاحة - إنها ثقافة مختلفة.', '["Tip: Always use \"Sie\" (formal) with strangers and colleagues","Tip: Germans appreciate punctuality — arrive 5 minutes early","Tip: Direct feedback is a sign of respect, not criticism","Tip: Prepare factual arguments, not emotional appeals"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000659845b3', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Using Arabic word order in German sentences","correction":"Verb must be in position 2: Subject + Verb + Object","explanation":"Arabic and German have different sentence structures. Arabic is VSO, German is SVO with verb in position 2."},{"mistake":"Using the wrong article (der/die/das) for nouns","correction":"Learn each noun with its article as one piece","explanation":"Arabic has no articles for nouns without gender connection"}]', 30);

  -- Lesson 4: Zahlen 21-100 (L-A1-01-04)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-0000659845b4', '00000000-0000-4000-a000-000039b4d35e', 'Zahlen 21-100', 'Learn numbers 21-100, prices, and quantities.', 'Numbers', 'vocabulary', '["Understand and use 142 key vocabulary words about Numbers","Apply present_tense correctly in sentences","Read and comprehend a text about Numbers","Listen and understand a natural dialogue about Numbers","Speak about Numbers with confidence","Write a short text about Numbers using new vocabulary"]', 25, 4, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, french_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-0000659845b4', 'eins', 'واحد', 'one', NULL, NULL, NULL, 'numeral', 'Ich habe einen Bruder.', 'I have one brother.', 'A1', 1),
  ('00000000-0000-4000-a000-0000659845b4', 'zwei', 'اثنان', 'two', NULL, NULL, NULL, 'numeral', 'Wir haben zwei Katzen.', 'We have two cats.', 'A1', 2),
  ('00000000-0000-4000-a000-0000659845b4', 'drei', 'ثلاثة', 'three', NULL, NULL, NULL, 'numeral', 'Die Wohnung hat drei Zimmer.', 'The apartment has three rooms.', 'A1', 3),
  ('00000000-0000-4000-a000-0000659845b4', 'die Zahl', 'الرقم', 'number', NULL, 'die', 'die Zahlen', 'noun', 'Die Zahl 5 ist meine Glückszahl.', 'The number 5 is my lucky number.', 'A1', 4),
  ('00000000-0000-4000-a000-0000659845b4', 'zählen', 'يعد', 'to count', NULL, NULL, NULL, 'verb', 'Kannst du bis 100 zählen?', 'Can you count to 100?', 'A1', 5),
  ('00000000-0000-4000-a000-0000659845b4', 'Hallo', 'مرحباً', 'hello', 'bonjour', NULL, NULL, 'interjection', 'Hallo, wie geht es dir?', 'Hello, how are you?', 'A1', 6),
  ('00000000-0000-4000-a000-0000659845b4', 'Guten Morgen', 'صباح الخير', 'good morning', 'bonjour (le matin)', NULL, NULL, 'phrase', 'Guten Morgen, Herr Müller.', 'Good morning, Mr. Müller.', 'A1', 7),
  ('00000000-0000-4000-a000-0000659845b4', 'Guten Tag', 'نهارك سعيد', 'good day', 'bonjour (l''après-midi)', NULL, NULL, 'phrase', 'Guten Tag, Frau Schmidt.', 'Good day, Mrs. Schmidt.', 'A1', 8),
  ('00000000-0000-4000-a000-0000659845b4', 'Tschüss', 'مع السلامة', 'bye', 'au revoir / salut', NULL, NULL, 'interjection', 'Tschüss, bis morgen!', 'Bye, see you tomorrow!', 'A1', 9),
  ('00000000-0000-4000-a000-0000659845b4', 'der Name', 'الاسم', 'name', 'le nom', 'der', 'die Namen', 'noun', 'Mein Name ist Anna.', 'My name is Anna.', 'A1', 10),
  ('00000000-0000-4000-a000-0000659845b4', 'wie', 'كيف', 'how', 'comment', NULL, NULL, 'adverb', 'Wie heißt du?', 'What is your name?', 'A1', 11),
  ('00000000-0000-4000-a000-0000659845b4', 'freuen', 'يسر', 'to be pleased', 'se réjouir', NULL, NULL, 'verb', 'Ich freue mich, dich kennenzulernen.', 'I am pleased to meet you.', 'A1', 12),
  ('00000000-0000-4000-a000-0000659845b4', 'Willkommen', 'أهلاً وسهلاً', 'welcome', 'bienvenue', NULL, NULL, 'interjection', 'Willkommen in Deutschland!', 'Welcome to Germany!', 'A1', 13),
  ('00000000-0000-4000-a000-0000659845b4', 'die Familie', 'العائلة', 'family', 'la famille', 'die', 'die Familien', 'noun', 'Meine Familie ist groß.', 'My family is big.', 'A1', 14),
  ('00000000-0000-4000-a000-0000659845b4', 'der Vater', 'الأب', 'father', 'le père', 'der', 'die Väter', 'noun', 'Mein Vater ist Ingenieur.', 'My father is an engineer.', 'A1', 15),
  ('00000000-0000-4000-a000-0000659845b4', 'die Mutter', 'الأم', 'mother', 'la mère', 'die', 'die Mütter', 'noun', 'Meine Mutter kocht gut.', 'My mother cooks well.', 'A1', 16),
  ('00000000-0000-4000-a000-0000659845b4', 'der Bruder', 'الأخ', 'brother', 'le frère', 'der', 'die Brüder', 'noun', 'Mein Bruder ist 15 Jahre alt.', 'My brother is 15 years old.', 'A1', 17),
  ('00000000-0000-4000-a000-0000659845b4', 'die Schwester', 'الأخت', 'sister', 'la sœur', 'die', 'die Schwestern', 'noun', 'Meine Schwester studiert Medizin.', 'My sister studies medicine.', 'A1', 18),
  ('00000000-0000-4000-a000-0000659845b4', 'die Geschwister', 'الإخوة', 'siblings', 'les frères et sœurs', 'die', NULL, 'noun', 'Hast du Geschwister?', 'Do you have siblings?', 'A1', 19),
  ('00000000-0000-4000-a000-0000659845b4', 'der Sohn', 'الابن', 'son', 'le fils', 'der', 'die Söhne', 'noun', 'Wir haben einen Sohn.', 'We have a son.', 'A1', 20),
  ('00000000-0000-4000-a000-0000659845b4', 'die Tochter', 'الابنة', 'daughter', 'la fille', 'die', 'die Töchter', 'noun', 'Meine Tochter geht zur Schule.', 'My daughter goes to school.', 'A1', 21),
  ('00000000-0000-4000-a000-0000659845b4', 'die Großeltern', 'الأجداد', 'grandparents', 'les grands-parents', 'die', NULL, 'noun', 'Meine Großeltern wohnen auf dem Land.', 'My grandparents live in the countryside.', 'A1', 22),
  ('00000000-0000-4000-a000-0000659845b4', 'verheiratet', 'متزوج', 'married', 'marié(e)', NULL, NULL, 'adjective', 'Meine Eltern sind verheiratet.', 'My parents are married.', 'A1', 23),
  ('00000000-0000-4000-a000-0000659845b4', 'das Brot', 'الخبز', 'bread', 'le pain', 'das', 'die Brote', 'noun', 'Ich kaufe ein Brot.', 'I buy a loaf of bread.', 'A1', 24),
  ('00000000-0000-4000-a000-0000659845b4', 'die Milch', 'الحليب', 'milk', 'le lait', 'die', NULL, 'noun', 'Die Milch ist frisch.', 'The milk is fresh.', 'A1', 25),
  ('00000000-0000-4000-a000-0000659845b4', 'der Käse', 'الجبن', 'cheese', 'le fromage', 'der', NULL, 'noun', 'Der Käse schmeckt gut.', 'The cheese tastes good.', 'A1', 26),
  ('00000000-0000-4000-a000-0000659845b4', 'der Apfel', 'التفاح', 'apple', 'la pomme', 'der', 'die Äpfel', 'noun', 'Der Apfel ist rot.', 'The apple is red.', 'A1', 27),
  ('00000000-0000-4000-a000-0000659845b4', 'das Ei', 'البيضة', 'egg', 'l''œuf', 'das', 'die Eier', 'noun', 'Ich esse ein Ei zum Frühstück.', 'I eat an egg for breakfast.', 'A1', 28),
  ('00000000-0000-4000-a000-0000659845b4', 'das Obst', 'الفاكهة', 'fruit', 'les fruits', 'das', NULL, 'noun', 'Obst ist gesund.', 'Fruit is healthy.', 'A1', 29),
  ('00000000-0000-4000-a000-0000659845b4', 'das Gemüse', 'الخضروات', 'vegetables', 'les légumes', 'das', NULL, 'noun', 'Ich kaufe Gemüse auf dem Markt.', 'I buy vegetables at the market.', 'A1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000659845b4', 'Präsens der regelmäßigen Verben (Present Tense) / المضارع للأفعال المنتظمة', 'In German, regular verbs follow a consistent pattern. The infinitive ends in -en. Remove the -en and add the personal endings: ich -e, du -st, er/sie/es -t, wir -en, ihr -t, sie/Sie -en. For most Arabic speakers, this is easier than Arabic verb conjugation because German has fewer forms.', '[{"rule":"ich: stem + e","note":"Ich lerne, ich wohne, ich arbeite"},{"rule":"du: stem + st","note":"Du lernst, du wohnst, du arbeitest"},{"rule":"er/sie/es: stem + t","note":"Er lernt, sie wohnt, es arbeitet"},{"rule":"wir: stem + en","note":"Wir lernen, wir wohnen, wir arbeiten"},{"rule":"ihr: stem + t","note":"Ihr lernt, ihr wohnt, ihr arbeitet"},{"rule":"sie/Sie: stem + en","note":"Sie lernen, Sie wohnen"}]', '[{"german":"Ich lerne Deutsch.","arabic":"أنا أتعلم الألمانية.","english":"I am learning German."},{"german":"Du wohnst in Berlin.","arabic":"أنت تسكن في برلين.","english":"You live in Berlin."},{"german":"Er arbeitet bei Siemens.","arabic":"هو يعمل في سيمنز.","english":"He works at Siemens."}]', '[{"mistake":"Ich lernen Deutsch","correction":"Ich lerne Deutsch","explanation":"After \"ich\" we use the stem + e, not the infinitive."},{"mistake":"Er lerne Deutsch","correction":"Er lernt Deutsch","explanation":"After \"er/sie/es\" we add -t, not -e."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000659845b4', 'multiple_choice', 'Which German word matches "one"?', '["zwei","eins","die Zahl","drei"]', 'eins', '"one" = "eins" in German.  ', 1, 1),
  ('00000000-0000-4000-a000-0000659845b4', 'multiple_choice', 'Which German word matches "two"?', '["zwei","eins","die Zahl","zählen"]', 'zwei', '"two" = "zwei" in German.  ', 1, 2),
  ('00000000-0000-4000-a000-0000659845b4', 'multiple_choice', 'Which German word matches "three"?', '["drei","eins","zwei","die Zahl"]', 'drei', '"three" = "drei" in German.  ', 1, 3),
  ('00000000-0000-4000-a000-0000659845b4', 'multiple_choice', 'Which German word matches "number"?', '["die Zahl","eins","zwei","zählen"]', 'die Zahl', '"number" = "die Zahl" in German. Article: die Plural: die Zahlen', 1, 4),
  ('00000000-0000-4000-a000-0000659845b4', 'multiple_choice', 'Which German word matches "to count"?', '["drei","die Zahl","zwei","zählen"]', 'zählen', '"to count" = "zählen" in German.  ', 1, 5),
  ('00000000-0000-4000-a000-0000659845b4', 'fill_gap', 'Complete the sentence: Ich ___ gern über Numbers. (sprechen)', '["spreche","sprichst","spricht","sprechen"]', 'spreche', 'ich spreche gern = I like to speak. Stem: sprech- + e.', 2, 6),
  ('00000000-0000-4000-a000-0000659845b4', 'translation', 'Translate to German: "I am learning about Numbers."', '["Ich lerne über Numbers.","Ich lerne Numbers.","Lerne ich Numbers."]', 'Ich lerne über Numbers.', '"Ich lerne über..." = "I am learning about..."', 2, 7),
  ('00000000-0000-4000-a000-0000659845b4', 'matching', 'Match: Which word pairs are correct?', '["eins - one, zwei - two"]', 'Matched correctly', 'Each German word has a unique English equivalent.', 2, 8);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-0000659845b4', 'multiple_choice', 'What does "eins" mean in English?', '["one","to run","beautiful","yesterday"]', 'one', 1, 1),
  ('00000000-0000-4000-a000-0000659845b4', 'multiple_choice', 'What is the correct article for "zwei"?', '["der","die","das","den"]', 'der', 1, 2),
  ('00000000-0000-4000-a000-0000659845b4', 'true_false', 'The word "drei" is related to Numbers.', '["True","False"]', 'True', 1, 3),
  ('00000000-0000-4000-a000-0000659845b4', 'multiple_choice', 'Which sentence correctly uses present_tense?', '["Ich lerne Deutsch.","Du wohnst in Berlin.","Er arbeitet bei Siemens."]', 'Ich lerne Deutsch.', 2, 4),
  ('00000000-0000-4000-a000-0000659845b4', 'true_false', 'German word order puts the verb in second position in main clauses.', '["True","False"]', 'True', 1, 5),
  ('00000000-0000-4000-a000-0000659845b4', 'fill_blank', 'Complete: Ich ___ (number) Deutsch.', '["die Zahl","lernt","lernst","lernen"]', 'lerne', 2, 6),
  ('00000000-0000-4000-a000-0000659845b4', 'multiple_choice', 'What is the German word for "to count"?', '["zählen","Hallo","Guten Morgen","Guten Tag"]', 'zählen', 1, 7),
  ('00000000-0000-4000-a000-0000659845b4', 'true_false', 'In German, ALL nouns are always capitalised.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-0000659845b4', 'multiple_choice', 'How do you say "please" in a restaurant in Germany?', '["Bitte","Danke","Tschüss","Hallo"]', 'Bitte', 1, 9),
  ('00000000-0000-4000-a000-0000659845b4', 'fill_blank', 'Wo ___ (to live) du?', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 2, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, french_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-0000659845b4', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', NULL, 'Used in Hallo! Erste Schritte', 'formal', false, 1),
  ('00000000-0000-4000-a000-0000659845b4', 'Guten Tag!', 'Good day!', 'نهارك سعيد!', NULL, 'Used in Hallo! Erste Schritte', 'formal', false, 2),
  ('00000000-0000-4000-a000-0000659845b4', 'Hallo, wie geht es Ihnen?', 'Hello, how are you?', 'مرحباً، كيف حالكم؟', NULL, 'Used in Hallo! Erste Schritte', 'formal', false, 3),
  ('00000000-0000-4000-a000-0000659845b4', 'Schön, Sie kennenzulernen!', 'Nice to meet you!', 'سعيد بلقائكم!', NULL, 'Used in Hallo! Erste Schritte', 'formal', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-0000659845b4', 'eins', 'one — واحد', 'numeral', 'vocabulary', 1),
  ('00000000-0000-4000-a000-0000659845b4', 'zwei', 'two — اثنان', 'numeral', 'vocabulary', 2),
  ('00000000-0000-4000-a000-0000659845b4', 'drei', 'three — ثلاثة', 'numeral', 'vocabulary', 3),
  ('00000000-0000-4000-a000-0000659845b4', 'die die Zahl (die Zahlen)', 'number — الرقم', 'noun', 'vocabulary', 4),
  ('00000000-0000-4000-a000-0000659845b4', 'zählen', 'to count — يعد', 'verb', 'vocabulary', 5),
  ('00000000-0000-4000-a000-0000659845b4', 'Hallo', 'hello — مرحباً', 'interjection', 'vocabulary', 6),
  ('00000000-0000-4000-a000-0000659845b4', 'Guten Morgen', 'good morning — صباح الخير', 'phrase', 'vocabulary', 7),
  ('00000000-0000-4000-a000-0000659845b4', 'Guten Tag', 'good day — نهارك سعيد', 'phrase', 'vocabulary', 8),
  ('00000000-0000-4000-a000-0000659845b4', 'Tschüss', 'bye — مع السلامة', 'interjection', 'vocabulary', 9),
  ('00000000-0000-4000-a000-0000659845b4', 'der der Name (die Namen)', 'name — الاسم', 'noun', 'vocabulary', 10),
  ('00000000-0000-4000-a000-0000659845b4', 'wie', 'how — كيف', 'adverb', 'vocabulary', 11),
  ('00000000-0000-4000-a000-0000659845b4', 'freuen', 'to be pleased — يسر', 'verb', 'vocabulary', 12),
  ('00000000-0000-4000-a000-0000659845b4', 'Willkommen', 'welcome — أهلاً وسهلاً', 'interjection', 'vocabulary', 13),
  ('00000000-0000-4000-a000-0000659845b4', 'die die Familie (die Familien)', 'family — العائلة', 'noun', 'vocabulary', 14),
  ('00000000-0000-4000-a000-0000659845b4', 'der der Vater (die Väter)', 'father — الأب', 'noun', 'vocabulary', 15),
  ('00000000-0000-4000-a000-0000659845b4', 'Ich lerne Deutsch.', 'I am learning German.', 'Präsens der regelmäßigen Verben (Present Tense)', 'grammar', 16),
  ('00000000-0000-4000-a000-0000659845b4', 'Du wohnst in Berlin.', 'You live in Berlin.', 'Präsens der regelmäßigen Verben (Present Tense)', 'grammar', 17),
  ('00000000-0000-4000-a000-0000659845b4', 'Er arbeitet bei Siemens.', 'He works at Siemens.', 'Präsens der regelmäßigen Verben (Present Tense)', 'grammar', 18);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, french_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-0000659845b4', 'Zahlen 21-100 — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', NULL, 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, french_translation, duration_seconds, speaker_count, scenario) values
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

[Lehrerin]: ممتاز! إلى الغد!', '[Lehrerin]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: ', 72, 2, 'Hallo! Erste Schritte');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-0000659845b4', '🔊 Sprechen: Zahlen 21-100', 'Roleplay: You are in a Hamburg office. Introduce yourself and talk about Numbers. Your partner (AI) will respond naturally.', 'Numbers', ARRAY['Use complete sentences — not single words','Pause between phrases, not between words','Don''t translate from Arabic word-for-word']::text[], ARRAY['eins','zwei','drei','die Zahl','zählen','Hallo','Guten Morgen','Guten Tag']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-0000659845b4', '✏️ Schreiben: Zahlen 21-100', 'Write an email to a German friend about "Numbers". Tell them what you learned, what you found interesting, and ask two questions about their experience with this topic. Use at least 8 vocabulary words from this lesson. Sign off naturally ("Viele Grüße", "Liebe Grüße").', ARRAY['Start with "Hallo" or "Liebe/r"','Keep sentences short (Subject-Verb-Object)','End with a friendly farewell']::text[], ARRAY['eins','zwei','drei','die Zahl','zählen','Hallo','Guten Morgen','Guten Tag']::text[], ARRAY['Sentence structure','Vocabulary usage']::text[], 50, 100, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000659845b4', 'Zahlen 21-100 — Roleplay', 'Numbers', 'Student', 'Teacher', 'Practice conversation about Numbers', 'Hallo! Lass uns über dieses Thema sprechen.', 'beginner', 1, ARRAY['eins','zwei','drei','die Zahl','zählen','Hallo','Guten Morgen','Guten Tag']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000659845b4', 'Zahlen 21-100 — Advanced Roleplay', 'Numbers', 'Customer', 'Assistant', 'Extended conversation about Numbers', 'Guten Tag! Wie kann ich Ihnen helfen?', 'beginner', 2, ARRAY['eins','zwei','drei','die Zahl','zählen','Hallo','Guten Morgen','Guten Tag']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-0000659845b4', 'Zahlen 21-100 — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Zahlen 21-100".', 'Creative practice for Numbers', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-0000659845b4', '📚 Hausaufgabe: Zahlen 21-100', 'Complete these tasks to reinforce "Zahlen 21-100".', 'mixed', '[{"description":"Create 10 flashcards from this lesson''s vocabulary — write German on one side, Arabic on the other. Test yourself 3 times."},{"description":"Write 6 sentences about Numbers: 2 statements, 2 questions, 2 negations — all using present_tense."},{"description":"Record yourself reading the dialogue aloud. Listen to the recording and note 3 things to improve."},{"description":"Find 3 real German websites, videos, or articles about Numbers. Note 5 new words you discovered."}]', 50, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-0000659845b4', '🎯 Great work! In this lesson you learned 142 new words about Numbers. You practiced present_tense — an important grammar topic for A1 level. You read a text, listened to a dialogue, and practiced speaking and writing. Keep going!', '["142 vocabulary items about Numbers","present_tense — grammar explanation and practice","Reading comprehension: text about Numbers","Listening comprehension: dialogue about Numbers","Speaking practice: roleplay/discussion about Numbers","Writing task: text about Numbers"]', '[{"title":"Zahlen 21-100 Review","summary":"present_tense — the main grammar focus. Focus on understanding when to use this structure and forming basic sentences."}]', ARRAY['eins (one)','zwei (two)','drei (three)','die Zahl (number)','zählen (to count)']::text[], ARRAY['Don''t translate from Arabic word-for-word — German has different sentence structure','Learn every noun with its article: NEVER learn "Tisch" alone, always "der Tisch"','Verb always in position 2 in main clauses']::text[], ARRAY['Practice 15-20 minutes daily — consistency beats intensity','Speak out loud: German pronunciation needs muscle memory','Use the new vocabulary within 24 hours or you''ll forget it','Watch German YouTube videos about Numbers for authentic input']::text[]);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000659845b4', 'Pronunciation: German sounds for "numbers"', 'In German, vowels are pure — unlike English diphthongs. The "ch" sound after a, o, u is guttural (like Arabic خ). After e, i, ä, ö, ü it''s soft (like English "huge" without the "u").

Common mistake for Arabic speakers: Arabic speakers tend to over-emphasise consonants. German flows — connect words smoothly (e.g., "Ich habe" becomes /ɪçabə/ not /ɪç ˈhaːbə/).', '[]', '[{"german":"eins","arabic":"","english":"","phonetic":""},{"german":"zwei","arabic":"","english":"","phonetic":""},{"german":"drei","arabic":"","english":"","phonetic":""},{"german":"die Zahl","arabic":"","english":"","phonetic":""}]', '[]', 10);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000659845b4', 'translation', 'Translate to German: "I use the word "one" in a sentence about Numbers."', '[]', 'Ich habe einen Bruder.', 'Use  "eins" with the correct present_tense form.', 1, 40);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000659845b4', 'translation', 'Translate to German: "I use the word "two" in a sentence about Numbers."', '[]', 'Wir haben zwei Katzen.', 'Use  "zwei" with the correct present_tense form.', 1, 41);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000659845b4', 'translation', 'Translate to German: "I use the word "three" in a sentence about Numbers."', '[]', 'Die Wohnung hat drei Zimmer.', 'Use  "drei" with the correct present_tense form.', 1, 42);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000659845b4', 'Culture: 🇩🇪 Deutsche Kultur: Numbers', 'In Germany, Numbers is approached with typical German directness and efficiency. Germans value clarity over small talk. When discussing Numbers, expect honest feedback and straightforward questions. This is not rudeness — it''s cultural. Arabic speakers often find this too direct at first, but you''ll appreciate it once you get used to it.

في ألمانيا، يتم التعامل مع Numbers بوضوح وكفاءة. الألمان يقدرون الوضوح أكثر من المجاملات. لا تعتبر هذه وقاحة - إنها ثقافة مختلفة.', '["Tip: Always use \"Sie\" (formal) with strangers and colleagues","Tip: Germans appreciate punctuality — arrive 5 minutes early","Tip: Direct feedback is a sign of respect, not criticism","Tip: Prepare factual arguments, not emotional appeals"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000659845b4', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Using Arabic word order in German sentences","correction":"Verb must be in position 2: Subject + Verb + Object","explanation":"Arabic and German have different sentence structures. Arabic is VSO, German is SVO with verb in position 2."},{"mistake":"Using the wrong article (der/die/das) for nouns","correction":"Learn each noun with its article as one piece","explanation":"Arabic has no articles for nouns without gender connection"}]', 30);

  -- Lesson 5: Länder und Nationalitäten (L-A1-01-05)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-0000659845b5', '00000000-0000-4000-a000-000039b4d35e', 'Länder und Nationalitäten', 'Learn country names and nationalities in German.', 'Countries & Nationalities', 'vocabulary', '["Understand and use 142 key vocabulary words about Countries & Nationalities","Apply sein_haben correctly in sentences","Read and comprehend a text about Countries & Nationalities","Listen and understand a natural dialogue about Countries & Nationalities","Speak about Countries & Nationalities with confidence","Write a short text about Countries & Nationalities using new vocabulary"]', 30, 5, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, french_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-0000659845b5', 'Hallo', 'مرحباً', 'hello', 'bonjour', NULL, NULL, 'interjection', 'Hallo, wie geht es dir?', 'Hello, how are you?', 'A1', 1),
  ('00000000-0000-4000-a000-0000659845b5', 'Guten Morgen', 'صباح الخير', 'good morning', 'bonjour (le matin)', NULL, NULL, 'phrase', 'Guten Morgen, Herr Müller.', 'Good morning, Mr. Müller.', 'A1', 2),
  ('00000000-0000-4000-a000-0000659845b5', 'Guten Tag', 'نهارك سعيد', 'good day', 'bonjour (l''après-midi)', NULL, NULL, 'phrase', 'Guten Tag, Frau Schmidt.', 'Good day, Mrs. Schmidt.', 'A1', 3),
  ('00000000-0000-4000-a000-0000659845b5', 'Tschüss', 'مع السلامة', 'bye', 'au revoir / salut', NULL, NULL, 'interjection', 'Tschüss, bis morgen!', 'Bye, see you tomorrow!', 'A1', 4),
  ('00000000-0000-4000-a000-0000659845b5', 'der Name', 'الاسم', 'name', 'le nom', 'der', 'die Namen', 'noun', 'Mein Name ist Anna.', 'My name is Anna.', 'A1', 5),
  ('00000000-0000-4000-a000-0000659845b5', 'wie', 'كيف', 'how', 'comment', NULL, NULL, 'adverb', 'Wie heißt du?', 'What is your name?', 'A1', 6),
  ('00000000-0000-4000-a000-0000659845b5', 'freuen', 'يسر', 'to be pleased', 'se réjouir', NULL, NULL, 'verb', 'Ich freue mich, dich kennenzulernen.', 'I am pleased to meet you.', 'A1', 7),
  ('00000000-0000-4000-a000-0000659845b5', 'Willkommen', 'أهلاً وسهلاً', 'welcome', 'bienvenue', NULL, NULL, 'interjection', 'Willkommen in Deutschland!', 'Welcome to Germany!', 'A1', 8),
  ('00000000-0000-4000-a000-0000659845b5', 'die Familie', 'العائلة', 'family', 'la famille', 'die', 'die Familien', 'noun', 'Meine Familie ist groß.', 'My family is big.', 'A1', 9),
  ('00000000-0000-4000-a000-0000659845b5', 'der Vater', 'الأب', 'father', 'le père', 'der', 'die Väter', 'noun', 'Mein Vater ist Ingenieur.', 'My father is an engineer.', 'A1', 10),
  ('00000000-0000-4000-a000-0000659845b5', 'die Mutter', 'الأم', 'mother', 'la mère', 'die', 'die Mütter', 'noun', 'Meine Mutter kocht gut.', 'My mother cooks well.', 'A1', 11),
  ('00000000-0000-4000-a000-0000659845b5', 'der Bruder', 'الأخ', 'brother', 'le frère', 'der', 'die Brüder', 'noun', 'Mein Bruder ist 15 Jahre alt.', 'My brother is 15 years old.', 'A1', 12),
  ('00000000-0000-4000-a000-0000659845b5', 'die Schwester', 'الأخت', 'sister', 'la sœur', 'die', 'die Schwestern', 'noun', 'Meine Schwester studiert Medizin.', 'My sister studies medicine.', 'A1', 13),
  ('00000000-0000-4000-a000-0000659845b5', 'die Geschwister', 'الإخوة', 'siblings', 'les frères et sœurs', 'die', NULL, 'noun', 'Hast du Geschwister?', 'Do you have siblings?', 'A1', 14),
  ('00000000-0000-4000-a000-0000659845b5', 'der Sohn', 'الابن', 'son', 'le fils', 'der', 'die Söhne', 'noun', 'Wir haben einen Sohn.', 'We have a son.', 'A1', 15),
  ('00000000-0000-4000-a000-0000659845b5', 'die Tochter', 'الابنة', 'daughter', 'la fille', 'die', 'die Töchter', 'noun', 'Meine Tochter geht zur Schule.', 'My daughter goes to school.', 'A1', 16),
  ('00000000-0000-4000-a000-0000659845b5', 'die Großeltern', 'الأجداد', 'grandparents', 'les grands-parents', 'die', NULL, 'noun', 'Meine Großeltern wohnen auf dem Land.', 'My grandparents live in the countryside.', 'A1', 17),
  ('00000000-0000-4000-a000-0000659845b5', 'verheiratet', 'متزوج', 'married', 'marié(e)', NULL, NULL, 'adjective', 'Meine Eltern sind verheiratet.', 'My parents are married.', 'A1', 18),
  ('00000000-0000-4000-a000-0000659845b5', 'das Brot', 'الخبز', 'bread', 'le pain', 'das', 'die Brote', 'noun', 'Ich kaufe ein Brot.', 'I buy a loaf of bread.', 'A1', 19),
  ('00000000-0000-4000-a000-0000659845b5', 'die Milch', 'الحليب', 'milk', 'le lait', 'die', NULL, 'noun', 'Die Milch ist frisch.', 'The milk is fresh.', 'A1', 20),
  ('00000000-0000-4000-a000-0000659845b5', 'der Käse', 'الجبن', 'cheese', 'le fromage', 'der', NULL, 'noun', 'Der Käse schmeckt gut.', 'The cheese tastes good.', 'A1', 21),
  ('00000000-0000-4000-a000-0000659845b5', 'der Apfel', 'التفاح', 'apple', 'la pomme', 'der', 'die Äpfel', 'noun', 'Der Apfel ist rot.', 'The apple is red.', 'A1', 22),
  ('00000000-0000-4000-a000-0000659845b5', 'das Ei', 'البيضة', 'egg', 'l''œuf', 'das', 'die Eier', 'noun', 'Ich esse ein Ei zum Frühstück.', 'I eat an egg for breakfast.', 'A1', 23),
  ('00000000-0000-4000-a000-0000659845b5', 'das Obst', 'الفاكهة', 'fruit', 'les fruits', 'das', NULL, 'noun', 'Obst ist gesund.', 'Fruit is healthy.', 'A1', 24),
  ('00000000-0000-4000-a000-0000659845b5', 'das Gemüse', 'الخضروات', 'vegetables', 'les légumes', 'das', NULL, 'noun', 'Ich kaufe Gemüse auf dem Markt.', 'I buy vegetables at the market.', 'A1', 25),
  ('00000000-0000-4000-a000-0000659845b5', 'kochen', 'يطبخ', 'to cook', 'cuisiner', NULL, NULL, 'verb', 'Meine Mutter kocht gut.', 'My mother cooks well.', 'A1', 26),
  ('00000000-0000-4000-a000-0000659845b5', 'der Fisch', 'السمك', 'fish', 'le poisson', 'der', 'die Fische', 'noun', 'Der Fisch ist frisch.', 'The fish is fresh.', 'A1', 27),
  ('00000000-0000-4000-a000-0000659845b5', 'das Fleisch', 'اللحم', 'meat', 'la viande', 'das', NULL, 'noun', 'Ich esse nicht viel Fleisch.', 'I do not eat much meat.', 'A1', 28),
  ('00000000-0000-4000-a000-0000659845b5', 'das Haus', 'البيت', 'house', 'la maison', 'das', 'die Häuser', 'noun', 'Das Haus ist groß.', 'The house is big.', 'A1', 29),
  ('00000000-0000-4000-a000-0000659845b5', 'die Wohnung', 'الشقة', 'apartment', 'l''appartement', 'die', 'die Wohnungen', 'noun', 'Meine Wohnung hat drei Zimmer.', 'My apartment has three rooms.', 'A1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000659845b5', 'sein und haben (To Be and To Have) / يكون ويملك', '"Sein" (to be) and "haben" (to have) are the two most important verbs in German. They are irregular and used as auxiliary verbs too. sein: ich bin, du bist, er/sie/es ist, wir sind, ihr seid, sie/Sie sind. haben: ich habe, du hast, er/sie/es hat, wir haben, ihr habt, sie/Sie haben.', '[{"rule":"sein: ich bin, du bist, er/sie/es ist, wir sind, ihr seid, sie/Sie sind","note":"Ich bin Ahmed. Du bist Student. Er ist Arzt."},{"rule":"haben: ich habe, du hast, er/sie/es hat, wir haben, ihr habt, sie/Sie haben","note":"Ich habe einen Bruder. Sie hat keine Zeit."},{"rule":"Use sein for: profession, nationality, location, description","note":"Ich bin Lehrer. Wir sind in Berlin. Das ist wichtig."},{"rule":"Use haben for: possession, age, feelings","note":"Ich habe Hunger. Sie hat 20 Jahre."}]', '[{"german":"Ich bin Student und lerne Deutsch.","arabic":"أنا طالب وأتعلم الألمانية.","english":"I am a student and I learn German."},{"german":"Du hast eine schöne Wohnung.","arabic":"لديك شقة جميلة.","english":"You have a nice apartment."},{"german":"Er ist Arzt und hat viel Arbeit.","arabic":"هو طبيب ولديه الكثير من العمل.","english":"He is a doctor and has a lot of work."},{"german":"Wir sind in Berlin und haben Zeit.","arabic":"نحن في برلين ولدينا وقت.","english":"We are in Berlin and have time."}]', '[{"mistake":"Ich bin 20 Jahre (using sein for age)","correction":"Ich habe 20 Jahre / Ich bin 20 Jahre alt","explanation":"In German, \"haben\" is used for age: \"Wie alt bist du?\" uses \"sein\" for age too. Confusing but important."},{"mistake":"Er hat krank (using haben for condition)","correction":"Er ist krank","explanation":"Health conditions use \"sein\", not \"haben\" in German."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000659845b5', 'multiple_choice', 'Which German word matches "hello"?', '["Hallo","Guten Morgen","Guten Tag","Tschüss"]', 'Hallo', '"hello" = "Hallo" in German.  ', 1, 1),
  ('00000000-0000-4000-a000-0000659845b5', 'multiple_choice', 'Which German word matches "good morning"?', '["der Name","Tschüss","Guten Tag","Hallo"]', 'Guten Morgen', '"good morning" = "Guten Morgen" in German.  ', 1, 2),
  ('00000000-0000-4000-a000-0000659845b5', 'multiple_choice', 'Which German word matches "good day"?', '["der Name","Guten Tag","Tschüss","Hallo"]', 'Guten Tag', '"good day" = "Guten Tag" in German.  ', 1, 3),
  ('00000000-0000-4000-a000-0000659845b5', 'multiple_choice', 'Which German word matches "bye"?', '["Tschüss","Hallo","Guten Morgen","Guten Tag"]', 'Tschüss', '"bye" = "Tschüss" in German.  ', 1, 4),
  ('00000000-0000-4000-a000-0000659845b5', 'multiple_choice', 'Which German word matches "name"?', '["Guten Morgen","Guten Tag","Tschüss","Hallo"]', 'der Name', '"name" = "der Name" in German. Article: der Plural: die Namen', 1, 5),
  ('00000000-0000-4000-a000-0000659845b5', 'fill_gap', 'Complete the sentence: Ich ___ gern über Countries & Nationalities. (sprechen)', '["spreche","sprichst","spricht","sprechen"]', 'spreche', 'ich spreche gern = I like to speak. Stem: sprech- + e.', 2, 6),
  ('00000000-0000-4000-a000-0000659845b5', 'translation', 'Translate to German: "I am learning about Countries & Nationalities."', '["Ich lerne über Countries & Nationalities.","Ich lerne Countries & Nationalities.","Lerne ich Countries & Nationalities."]', 'Ich lerne über Countries & Nationalities.', '"Ich lerne über..." = "I am learning about..."', 2, 7),
  ('00000000-0000-4000-a000-0000659845b5', 'matching', 'Match: Which word pairs are correct?', '["Hallo - hello, Guten Morgen - good morning"]', 'Matched correctly', 'Each German word has a unique English equivalent.', 2, 8);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-0000659845b5', 'multiple_choice', 'What does "Hallo" mean in English?', '["hello","to run","beautiful","yesterday"]', 'hello', 1, 1),
  ('00000000-0000-4000-a000-0000659845b5', 'multiple_choice', 'What is the correct article for "Guten Morgen"?', '["der","die","das","den"]', 'der', 1, 2),
  ('00000000-0000-4000-a000-0000659845b5', 'true_false', 'The word "Guten Tag" is related to Countries & Nationalities.', '["True","False"]', 'True', 1, 3),
  ('00000000-0000-4000-a000-0000659845b5', 'multiple_choice', 'Which sentence correctly uses sein_haben?', '["Ich bin Student und lerne Deutsch.","Du hast eine schöne Wohnung.","Er ist Arzt und hat viel Arbeit.","Wir sind in Berlin und haben Zeit."]', 'Ich bin Student und lerne Deutsch.', 2, 4),
  ('00000000-0000-4000-a000-0000659845b5', 'true_false', 'German word order puts the verb in second position in main clauses.', '["True","False"]', 'True', 1, 5),
  ('00000000-0000-4000-a000-0000659845b5', 'fill_blank', 'Complete: Ich ___ (bye) Deutsch.', '["Tschüss","lernt","lernst","lernen"]', 'lerne', 2, 6),
  ('00000000-0000-4000-a000-0000659845b5', 'multiple_choice', 'What is the German word for "name"?', '["der Name","wie","freuen","Willkommen"]', 'der Name', 1, 7),
  ('00000000-0000-4000-a000-0000659845b5', 'true_false', 'In German, ALL nouns are always capitalised.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-0000659845b5', 'multiple_choice', 'How do you say "please" in a restaurant in Germany?', '["Bitte","Danke","Tschüss","Hallo"]', 'Bitte', 1, 9),
  ('00000000-0000-4000-a000-0000659845b5', 'fill_blank', 'Wo ___ (to live) du?', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 2, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, french_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-0000659845b5', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', NULL, 'Used in Hallo! Erste Schritte', 'formal', false, 1),
  ('00000000-0000-4000-a000-0000659845b5', 'Guten Tag!', 'Good day!', 'نهارك سعيد!', NULL, 'Used in Hallo! Erste Schritte', 'formal', false, 2),
  ('00000000-0000-4000-a000-0000659845b5', 'Hallo, wie geht es Ihnen?', 'Hello, how are you?', 'مرحباً، كيف حالكم؟', NULL, 'Used in Hallo! Erste Schritte', 'formal', false, 3),
  ('00000000-0000-4000-a000-0000659845b5', 'Schön, Sie kennenzulernen!', 'Nice to meet you!', 'سعيد بلقائكم!', NULL, 'Used in Hallo! Erste Schritte', 'formal', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-0000659845b5', 'Hallo', 'hello — مرحباً', 'interjection', 'vocabulary', 1),
  ('00000000-0000-4000-a000-0000659845b5', 'Guten Morgen', 'good morning — صباح الخير', 'phrase', 'vocabulary', 2),
  ('00000000-0000-4000-a000-0000659845b5', 'Guten Tag', 'good day — نهارك سعيد', 'phrase', 'vocabulary', 3),
  ('00000000-0000-4000-a000-0000659845b5', 'Tschüss', 'bye — مع السلامة', 'interjection', 'vocabulary', 4),
  ('00000000-0000-4000-a000-0000659845b5', 'der der Name (die Namen)', 'name — الاسم', 'noun', 'vocabulary', 5),
  ('00000000-0000-4000-a000-0000659845b5', 'wie', 'how — كيف', 'adverb', 'vocabulary', 6),
  ('00000000-0000-4000-a000-0000659845b5', 'freuen', 'to be pleased — يسر', 'verb', 'vocabulary', 7),
  ('00000000-0000-4000-a000-0000659845b5', 'Willkommen', 'welcome — أهلاً وسهلاً', 'interjection', 'vocabulary', 8),
  ('00000000-0000-4000-a000-0000659845b5', 'die die Familie (die Familien)', 'family — العائلة', 'noun', 'vocabulary', 9),
  ('00000000-0000-4000-a000-0000659845b5', 'der der Vater (die Väter)', 'father — الأب', 'noun', 'vocabulary', 10),
  ('00000000-0000-4000-a000-0000659845b5', 'die die Mutter (die Mütter)', 'mother — الأم', 'noun', 'vocabulary', 11),
  ('00000000-0000-4000-a000-0000659845b5', 'der der Bruder (die Brüder)', 'brother — الأخ', 'noun', 'vocabulary', 12),
  ('00000000-0000-4000-a000-0000659845b5', 'die die Schwester (die Schwestern)', 'sister — الأخت', 'noun', 'vocabulary', 13),
  ('00000000-0000-4000-a000-0000659845b5', 'die die Geschwister', 'siblings — الإخوة', 'noun', 'vocabulary', 14),
  ('00000000-0000-4000-a000-0000659845b5', 'der der Sohn (die Söhne)', 'son — الابن', 'noun', 'vocabulary', 15),
  ('00000000-0000-4000-a000-0000659845b5', 'Ich bin Student und lerne Deutsch.', 'I am a student and I learn German.', 'sein und haben (To Be and To Have)', 'grammar', 16),
  ('00000000-0000-4000-a000-0000659845b5', 'Du hast eine schöne Wohnung.', 'You have a nice apartment.', 'sein und haben (To Be and To Have)', 'grammar', 17),
  ('00000000-0000-4000-a000-0000659845b5', 'Er ist Arzt und hat viel Arbeit.', 'He is a doctor and has a lot of work.', 'sein und haben (To Be and To Have)', 'grammar', 18);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, french_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-0000659845b5', 'Länder und Nationalitäten — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', NULL, 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, french_translation, duration_seconds, speaker_count, scenario) values
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

[Lehrerin]: ممتاز! إلى الغد!', '[Lehrerin]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: ', 72, 2, 'Hallo! Erste Schritte');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-0000659845b5', '🔊 Sprechen: Länder und Nationalitäten', 'Roleplay: You are in a Hamburg office. Introduce yourself and talk about Countries & Nationalities. Your partner (AI) will respond naturally.', 'Countries & Nationalities', ARRAY['Use complete sentences — not single words','Pause between phrases, not between words','Don''t translate from Arabic word-for-word']::text[], ARRAY['Hallo','Guten Morgen','Guten Tag','Tschüss','der Name','wie','freuen','Willkommen']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-0000659845b5', '✏️ Schreiben: Länder und Nationalitäten', 'Write an email to a German friend about "Countries & Nationalities". Tell them what you learned, what you found interesting, and ask two questions about their experience with this topic. Use at least 8 vocabulary words from this lesson. Sign off naturally ("Viele Grüße", "Liebe Grüße").', ARRAY['Start with "Hallo" or "Liebe/r"','Keep sentences short (Subject-Verb-Object)','End with a friendly farewell']::text[], ARRAY['Hallo','Guten Morgen','Guten Tag','Tschüss','der Name','wie','freuen','Willkommen']::text[], ARRAY['Sentence structure','Vocabulary usage']::text[], 50, 100, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000659845b5', 'Länder und Nationalitäten — Roleplay', 'Countries & Nationalities', 'Student', 'Teacher', 'Practice conversation about Countries & Nationalities', 'Hallo! Lass uns über dieses Thema sprechen.', 'beginner', 1, ARRAY['Hallo','Guten Morgen','Guten Tag','Tschüss','der Name','wie','freuen','Willkommen']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000659845b5', 'Länder und Nationalitäten — Advanced Roleplay', 'Countries & Nationalities', 'Customer', 'Assistant', 'Extended conversation about Countries & Nationalities', 'Guten Tag! Wie kann ich Ihnen helfen?', 'beginner', 2, ARRAY['Hallo','Guten Morgen','Guten Tag','Tschüss','der Name','wie','freuen','Willkommen']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-0000659845b5', 'Länder und Nationalitäten — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Länder und Nationalitäten".', 'Creative practice for Countries & Nationalities', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-0000659845b5', '📚 Hausaufgabe: Länder und Nationalitäten', 'Complete these tasks to reinforce "Länder und Nationalitäten".', 'mixed', '[{"description":"Create 10 flashcards from this lesson''s vocabulary — write German on one side, Arabic on the other. Test yourself 3 times."},{"description":"Write 6 sentences about Countries & Nationalities: 2 statements, 2 questions, 2 negations — all using sein_haben."},{"description":"Record yourself reading the dialogue aloud. Listen to the recording and note 3 things to improve."},{"description":"Find 3 real German websites, videos, or articles about Countries & Nationalities. Note 5 new words you discovered."}]', 50, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-0000659845b5', '🎯 Great work! In this lesson you learned 142 new words about Countries & Nationalities. You practiced sein_haben — an important grammar topic for A1 level. You read a text, listened to a dialogue, and practiced speaking and writing. Keep going!', '["142 vocabulary items about Countries & Nationalities","sein_haben — grammar explanation and practice","Reading comprehension: text about Countries & Nationalities","Listening comprehension: dialogue about Countries & Nationalities","Speaking practice: roleplay/discussion about Countries & Nationalities","Writing task: text about Countries & Nationalities"]', '[{"title":"Länder und Nationalitäten Review","summary":"sein_haben — the main grammar focus. Focus on understanding when to use this structure and forming basic sentences."}]', ARRAY['Hallo (hello)','Guten Morgen (good morning)','Guten Tag (good day)','Tschüss (bye)','der Name (name)']::text[], ARRAY['Don''t translate from Arabic word-for-word — German has different sentence structure','Learn every noun with its article: NEVER learn "Tisch" alone, always "der Tisch"','Verb always in position 2 in main clauses']::text[], ARRAY['Practice 15-20 minutes daily — consistency beats intensity','Speak out loud: German pronunciation needs muscle memory','Use the new vocabulary within 24 hours or you''ll forget it','Watch German YouTube videos about Countries & Nationalities for authentic input']::text[]);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000659845b5', 'Pronunciation: German sounds for "greetings"', 'In German, vowels are pure — unlike English diphthongs. The "ch" sound after a, o, u is guttural (like Arabic خ). After e, i, ä, ö, ü it''s soft (like English "huge" without the "u").

Common mistake for Arabic speakers: Arabic speakers tend to over-emphasise consonants. German flows — connect words smoothly (e.g., "Ich habe" becomes /ɪçabə/ not /ɪç ˈhaːbə/).', '[]', '[{"german":"Hallo","arabic":"","english":"","phonetic":""},{"german":"Guten Morgen","arabic":"","english":"","phonetic":""},{"german":"Guten Tag","arabic":"","english":"","phonetic":""},{"german":"Tschüss","arabic":"","english":"","phonetic":""}]', '[]', 10);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000659845b5', 'translation', 'Translate to German: "I use the word "hello" in a sentence about Countries & Nationalities."', '[]', 'Hallo, wie geht es dir?', 'Use  "Hallo" with the correct sein_haben form.', 1, 40);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000659845b5', 'translation', 'Translate to German: "I use the word "good morning" in a sentence about Countries & Nationalities."', '[]', 'Guten Morgen, Herr Müller.', 'Use  "Guten Morgen" with the correct sein_haben form.', 1, 41);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000659845b5', 'translation', 'Translate to German: "I use the word "good day" in a sentence about Countries & Nationalities."', '[]', 'Guten Tag, Frau Schmidt.', 'Use  "Guten Tag" with the correct sein_haben form.', 1, 42);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000659845b5', 'Culture: 🇩🇪 Deutsche Kultur: Countries & Nationalities', 'In Germany, Countries & Nationalities is approached with typical German directness and efficiency. Germans value clarity over small talk. When discussing Countries & Nationalities, expect honest feedback and straightforward questions. This is not rudeness — it''s cultural. Arabic speakers often find this too direct at first, but you''ll appreciate it once you get used to it.

في ألمانيا، يتم التعامل مع Countries & Nationalities بوضوح وكفاءة. الألمان يقدرون الوضوح أكثر من المجاملات. لا تعتبر هذه وقاحة - إنها ثقافة مختلفة.', '["Tip: Always use \"Sie\" (formal) with strangers and colleagues","Tip: Germans appreciate punctuality — arrive 5 minutes early","Tip: Direct feedback is a sign of respect, not criticism","Tip: Prepare factual arguments, not emotional appeals"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000659845b5', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Saying \"Guten Morgen\" in the afternoon","correction":"Use \"Guten Tag\" from 10am-6pm, \"Guten Abend\" after 6pm","explanation":"Arabic \"Sabah el-kheir\" works all day. German has strict time-based greetings."},{"mistake":"Using the wrong article (der/die/das) for nouns","correction":"Learn each noun with its article as one piece","explanation":"Arabic has no articles for nouns without gender connection"}]', 30);

  -- Lesson 6: Erste Gespräche führen (L-A1-01-06)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-0000659845b6', '00000000-0000-4000-a000-000039b4d35e', 'Erste Gespräche führen', 'Combine greetings, introductions, and basic questions in simple conversations.', 'Basic Conversations', 'speaking', '["Understand and apply question_words rules correctly","Use question_words in real conversations","Avoid common mistakes Arabic speakers make with question_words","Read and understand question_words in context","Listen and identify question_words in speech","Write sentences using question_words correctly"]', 35, 6, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, french_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-0000659845b6', 'Hallo', 'مرحباً', 'hello', 'bonjour', NULL, NULL, 'interjection', 'Hallo, wie geht es dir?', 'Hello, how are you?', 'A1', 1),
  ('00000000-0000-4000-a000-0000659845b6', 'Guten Morgen', 'صباح الخير', 'good morning', 'bonjour (le matin)', NULL, NULL, 'phrase', 'Guten Morgen, Herr Müller.', 'Good morning, Mr. Müller.', 'A1', 2),
  ('00000000-0000-4000-a000-0000659845b6', 'Guten Tag', 'نهارك سعيد', 'good day', 'bonjour (l''après-midi)', NULL, NULL, 'phrase', 'Guten Tag, Frau Schmidt.', 'Good day, Mrs. Schmidt.', 'A1', 3),
  ('00000000-0000-4000-a000-0000659845b6', 'Tschüss', 'مع السلامة', 'bye', 'au revoir / salut', NULL, NULL, 'interjection', 'Tschüss, bis morgen!', 'Bye, see you tomorrow!', 'A1', 4),
  ('00000000-0000-4000-a000-0000659845b6', 'der Name', 'الاسم', 'name', 'le nom', 'der', 'die Namen', 'noun', 'Mein Name ist Anna.', 'My name is Anna.', 'A1', 5),
  ('00000000-0000-4000-a000-0000659845b6', 'wie', 'كيف', 'how', 'comment', NULL, NULL, 'adverb', 'Wie heißt du?', 'What is your name?', 'A1', 6),
  ('00000000-0000-4000-a000-0000659845b6', 'freuen', 'يسر', 'to be pleased', 'se réjouir', NULL, NULL, 'verb', 'Ich freue mich, dich kennenzulernen.', 'I am pleased to meet you.', 'A1', 7),
  ('00000000-0000-4000-a000-0000659845b6', 'Willkommen', 'أهلاً وسهلاً', 'welcome', 'bienvenue', NULL, NULL, 'interjection', 'Willkommen in Deutschland!', 'Welcome to Germany!', 'A1', 8),
  ('00000000-0000-4000-a000-0000659845b6', 'die Familie', 'العائلة', 'family', 'la famille', 'die', 'die Familien', 'noun', 'Meine Familie ist groß.', 'My family is big.', 'A1', 9),
  ('00000000-0000-4000-a000-0000659845b6', 'der Vater', 'الأب', 'father', 'le père', 'der', 'die Väter', 'noun', 'Mein Vater ist Ingenieur.', 'My father is an engineer.', 'A1', 10),
  ('00000000-0000-4000-a000-0000659845b6', 'die Mutter', 'الأم', 'mother', 'la mère', 'die', 'die Mütter', 'noun', 'Meine Mutter kocht gut.', 'My mother cooks well.', 'A1', 11),
  ('00000000-0000-4000-a000-0000659845b6', 'der Bruder', 'الأخ', 'brother', 'le frère', 'der', 'die Brüder', 'noun', 'Mein Bruder ist 15 Jahre alt.', 'My brother is 15 years old.', 'A1', 12),
  ('00000000-0000-4000-a000-0000659845b6', 'die Schwester', 'الأخت', 'sister', 'la sœur', 'die', 'die Schwestern', 'noun', 'Meine Schwester studiert Medizin.', 'My sister studies medicine.', 'A1', 13),
  ('00000000-0000-4000-a000-0000659845b6', 'die Geschwister', 'الإخوة', 'siblings', 'les frères et sœurs', 'die', NULL, 'noun', 'Hast du Geschwister?', 'Do you have siblings?', 'A1', 14),
  ('00000000-0000-4000-a000-0000659845b6', 'der Sohn', 'الابن', 'son', 'le fils', 'der', 'die Söhne', 'noun', 'Wir haben einen Sohn.', 'We have a son.', 'A1', 15),
  ('00000000-0000-4000-a000-0000659845b6', 'die Tochter', 'الابنة', 'daughter', 'la fille', 'die', 'die Töchter', 'noun', 'Meine Tochter geht zur Schule.', 'My daughter goes to school.', 'A1', 16),
  ('00000000-0000-4000-a000-0000659845b6', 'die Großeltern', 'الأجداد', 'grandparents', 'les grands-parents', 'die', NULL, 'noun', 'Meine Großeltern wohnen auf dem Land.', 'My grandparents live in the countryside.', 'A1', 17),
  ('00000000-0000-4000-a000-0000659845b6', 'verheiratet', 'متزوج', 'married', 'marié(e)', NULL, NULL, 'adjective', 'Meine Eltern sind verheiratet.', 'My parents are married.', 'A1', 18),
  ('00000000-0000-4000-a000-0000659845b6', 'das Brot', 'الخبز', 'bread', 'le pain', 'das', 'die Brote', 'noun', 'Ich kaufe ein Brot.', 'I buy a loaf of bread.', 'A1', 19),
  ('00000000-0000-4000-a000-0000659845b6', 'die Milch', 'الحليب', 'milk', 'le lait', 'die', NULL, 'noun', 'Die Milch ist frisch.', 'The milk is fresh.', 'A1', 20),
  ('00000000-0000-4000-a000-0000659845b6', 'der Käse', 'الجبن', 'cheese', 'le fromage', 'der', NULL, 'noun', 'Der Käse schmeckt gut.', 'The cheese tastes good.', 'A1', 21),
  ('00000000-0000-4000-a000-0000659845b6', 'der Apfel', 'التفاح', 'apple', 'la pomme', 'der', 'die Äpfel', 'noun', 'Der Apfel ist rot.', 'The apple is red.', 'A1', 22),
  ('00000000-0000-4000-a000-0000659845b6', 'das Ei', 'البيضة', 'egg', 'l''œuf', 'das', 'die Eier', 'noun', 'Ich esse ein Ei zum Frühstück.', 'I eat an egg for breakfast.', 'A1', 23),
  ('00000000-0000-4000-a000-0000659845b6', 'das Obst', 'الفاكهة', 'fruit', 'les fruits', 'das', NULL, 'noun', 'Obst ist gesund.', 'Fruit is healthy.', 'A1', 24),
  ('00000000-0000-4000-a000-0000659845b6', 'das Gemüse', 'الخضروات', 'vegetables', 'les légumes', 'das', NULL, 'noun', 'Ich kaufe Gemüse auf dem Markt.', 'I buy vegetables at the market.', 'A1', 25),
  ('00000000-0000-4000-a000-0000659845b6', 'kochen', 'يطبخ', 'to cook', 'cuisiner', NULL, NULL, 'verb', 'Meine Mutter kocht gut.', 'My mother cooks well.', 'A1', 26),
  ('00000000-0000-4000-a000-0000659845b6', 'der Fisch', 'السمك', 'fish', 'le poisson', 'der', 'die Fische', 'noun', 'Der Fisch ist frisch.', 'The fish is fresh.', 'A1', 27),
  ('00000000-0000-4000-a000-0000659845b6', 'das Fleisch', 'اللحم', 'meat', 'la viande', 'das', NULL, 'noun', 'Ich esse nicht viel Fleisch.', 'I do not eat much meat.', 'A1', 28),
  ('00000000-0000-4000-a000-0000659845b6', 'das Haus', 'البيت', 'house', 'la maison', 'das', 'die Häuser', 'noun', 'Das Haus ist groß.', 'The house is big.', 'A1', 29),
  ('00000000-0000-4000-a000-0000659845b6', 'die Wohnung', 'الشقة', 'apartment', 'l''appartement', 'die', 'die Wohnungen', 'noun', 'Meine Wohnung hat drei Zimmer.', 'My apartment has three rooms.', 'A1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000659845b6', 'W-Fragen (Question Words) / أدوات الاستفهام', 'German question words (W-Wörter) all start with W. They ask for specific information. wer (who), was (what), wo (where), woher (where from), wohin (where to), wie (how), wann (when), warum (why), wie viel (how much). The verb stays in position 2, the question word is in position 1.', '[{"rule":"Question word + verb + subject + rest","note":"Wo wohnst du? Was machst du? Wie heißt du?"},{"rule":"wer (who) changes case: wer (Nom), wen (Akk), wem (Dat)","note":"Wer ist das? Wen siehst du? Wem hilfst du?"},{"rule":"wie = how, wo = where, wann = when, warum = why","note":"Wie geht es dir? Wo ist der Bahnhof? Wann kommst du?"}]', '[{"german":"Wie heißt du?","arabic":"ما اسمك؟","english":"What is your name?"},{"german":"Wo wohnst du?","arabic":"أين تسكن؟","english":"Where do you live?"},{"german":"Woher kommst du?","arabic":"من أين أنت؟","english":"Where do you come from?"},{"german":"Was machst du beruflich?","arabic":"ماذا تعمل؟","english":"What do you do for a living?"}]', '[{"mistake":"Du wohnst wo? (putting question word at the end)","correction":"Wo wohnst du?","explanation":"The question word ALWAYS comes first in German W-questions."},{"mistake":"Was ist dein Name? (too literal from English)","correction":"Wie heißt du?","explanation":"German uses \"Wie heißt du?\" (How are you called?) not \"Was ist dein Name?\""}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000659845b6', 'multiple_choice', 'Which German word matches "hello"?', '["Tschüss","Hallo","Guten Morgen","Guten Tag"]', 'Hallo', '"hello" = "Hallo" in German.  ', 1, 1),
  ('00000000-0000-4000-a000-0000659845b6', 'multiple_choice', 'Which German word matches "good morning"?', '["Guten Morgen","Hallo","Guten Tag","Tschüss"]', 'Guten Morgen', '"good morning" = "Guten Morgen" in German.  ', 1, 2),
  ('00000000-0000-4000-a000-0000659845b6', 'multiple_choice', 'Which German word matches "good day"?', '["Guten Tag","Hallo","Tschüss","Guten Morgen"]', 'Guten Tag', '"good day" = "Guten Tag" in German.  ', 1, 3),
  ('00000000-0000-4000-a000-0000659845b6', 'multiple_choice', 'Which German word matches "bye"?', '["Tschüss","Hallo","Guten Morgen","Guten Tag"]', 'Tschüss', '"bye" = "Tschüss" in German.  ', 1, 4),
  ('00000000-0000-4000-a000-0000659845b6', 'multiple_choice', 'Which German word matches "name"?', '["Tschüss","Guten Morgen","Hallo","der Name"]', 'der Name', '"name" = "der Name" in German. Article: der Plural: die Namen', 1, 5),
  ('00000000-0000-4000-a000-0000659845b6', 'fill_gap', 'Complete the sentence: Ich ___ gern über Basic Conversations. (sprechen)', '["spreche","sprichst","spricht","sprechen"]', 'spreche', 'ich spreche gern = I like to speak. Stem: sprech- + e.', 2, 6),
  ('00000000-0000-4000-a000-0000659845b6', 'translation', 'Translate to German: "I am learning about Basic Conversations."', '["Ich lerne über Basic Conversations.","Ich lerne Basic Conversations.","Lerne ich Basic Conversations."]', 'Ich lerne über Basic Conversations.', '"Ich lerne über..." = "I am learning about..."', 2, 7),
  ('00000000-0000-4000-a000-0000659845b6', 'matching', 'Match: Which word pairs are correct?', '["Hallo - hello, Guten Morgen - good morning"]', 'Matched correctly', 'Each German word has a unique English equivalent.', 2, 8);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-0000659845b6', 'multiple_choice', 'What does "Hallo" mean in English?', '["hello","to run","beautiful","yesterday"]', 'hello', 1, 1),
  ('00000000-0000-4000-a000-0000659845b6', 'multiple_choice', 'What is the correct article for "Guten Morgen"?', '["der","die","das","den"]', 'der', 1, 2),
  ('00000000-0000-4000-a000-0000659845b6', 'true_false', 'The word "Guten Tag" is related to Basic Conversations.', '["True","False"]', 'True', 1, 3),
  ('00000000-0000-4000-a000-0000659845b6', 'multiple_choice', 'Which sentence correctly uses question_words?', '["Wie heißt du?","Wo wohnst du?","Woher kommst du?","Was machst du beruflich?"]', 'Wie heißt du?', 2, 4),
  ('00000000-0000-4000-a000-0000659845b6', 'true_false', 'German word order puts the verb in second position in main clauses.', '["True","False"]', 'True', 1, 5),
  ('00000000-0000-4000-a000-0000659845b6', 'fill_blank', 'Complete: Ich ___ (bye) Deutsch.', '["Tschüss","lernt","lernst","lernen"]', 'lerne', 2, 6),
  ('00000000-0000-4000-a000-0000659845b6', 'multiple_choice', 'What is the German word for "name"?', '["der Name","wie","freuen","Willkommen"]', 'der Name', 1, 7),
  ('00000000-0000-4000-a000-0000659845b6', 'true_false', 'In German, ALL nouns are always capitalised.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-0000659845b6', 'multiple_choice', 'How do you say "please" in a restaurant in Germany?', '["Bitte","Danke","Tschüss","Hallo"]', 'Bitte', 1, 9),
  ('00000000-0000-4000-a000-0000659845b6', 'fill_blank', 'Wo ___ (to live) du?', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 2, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, french_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-0000659845b6', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', NULL, 'Used in Hallo! Erste Schritte', 'formal', false, 1),
  ('00000000-0000-4000-a000-0000659845b6', 'Guten Tag!', 'Good day!', 'نهارك سعيد!', NULL, 'Used in Hallo! Erste Schritte', 'formal', false, 2),
  ('00000000-0000-4000-a000-0000659845b6', 'Hallo, wie geht es Ihnen?', 'Hello, how are you?', 'مرحباً، كيف حالكم؟', NULL, 'Used in Hallo! Erste Schritte', 'formal', false, 3),
  ('00000000-0000-4000-a000-0000659845b6', 'Schön, Sie kennenzulernen!', 'Nice to meet you!', 'سعيد بلقائكم!', NULL, 'Used in Hallo! Erste Schritte', 'formal', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-0000659845b6', 'Hallo', 'hello — مرحباً', 'interjection', 'vocabulary', 1),
  ('00000000-0000-4000-a000-0000659845b6', 'Guten Morgen', 'good morning — صباح الخير', 'phrase', 'vocabulary', 2),
  ('00000000-0000-4000-a000-0000659845b6', 'Guten Tag', 'good day — نهارك سعيد', 'phrase', 'vocabulary', 3),
  ('00000000-0000-4000-a000-0000659845b6', 'Tschüss', 'bye — مع السلامة', 'interjection', 'vocabulary', 4),
  ('00000000-0000-4000-a000-0000659845b6', 'der der Name (die Namen)', 'name — الاسم', 'noun', 'vocabulary', 5),
  ('00000000-0000-4000-a000-0000659845b6', 'wie', 'how — كيف', 'adverb', 'vocabulary', 6),
  ('00000000-0000-4000-a000-0000659845b6', 'freuen', 'to be pleased — يسر', 'verb', 'vocabulary', 7),
  ('00000000-0000-4000-a000-0000659845b6', 'Willkommen', 'welcome — أهلاً وسهلاً', 'interjection', 'vocabulary', 8),
  ('00000000-0000-4000-a000-0000659845b6', 'die die Familie (die Familien)', 'family — العائلة', 'noun', 'vocabulary', 9),
  ('00000000-0000-4000-a000-0000659845b6', 'der der Vater (die Väter)', 'father — الأب', 'noun', 'vocabulary', 10),
  ('00000000-0000-4000-a000-0000659845b6', 'die die Mutter (die Mütter)', 'mother — الأم', 'noun', 'vocabulary', 11),
  ('00000000-0000-4000-a000-0000659845b6', 'der der Bruder (die Brüder)', 'brother — الأخ', 'noun', 'vocabulary', 12),
  ('00000000-0000-4000-a000-0000659845b6', 'die die Schwester (die Schwestern)', 'sister — الأخت', 'noun', 'vocabulary', 13),
  ('00000000-0000-4000-a000-0000659845b6', 'die die Geschwister', 'siblings — الإخوة', 'noun', 'vocabulary', 14),
  ('00000000-0000-4000-a000-0000659845b6', 'der der Sohn (die Söhne)', 'son — الابن', 'noun', 'vocabulary', 15),
  ('00000000-0000-4000-a000-0000659845b6', 'Wie heißt du?', 'What is your name?', 'W-Fragen (Question Words)', 'grammar', 16),
  ('00000000-0000-4000-a000-0000659845b6', 'Wo wohnst du?', 'Where do you live?', 'W-Fragen (Question Words)', 'grammar', 17),
  ('00000000-0000-4000-a000-0000659845b6', 'Woher kommst du?', 'Where do you come from?', 'W-Fragen (Question Words)', 'grammar', 18);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, french_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-0000659845b6', 'Erste Gespräche führen — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', NULL, 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, french_translation, duration_seconds, speaker_count, scenario) values
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

[Lehrerin]: ممتاز! إلى الغد!', '[Lehrerin]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: ', 72, 2, 'Hallo! Erste Schritte');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-0000659845b6', '🔊 Sprechen: Erste Gespräche führen', 'Roleplay: You are in a Hamburg office. Introduce yourself and talk about Basic Conversations. Your partner (AI) will respond naturally.', 'Basic Conversations', ARRAY['Use complete sentences — not single words','Pause between phrases, not between words','Don''t translate from Arabic word-for-word']::text[], ARRAY['Hallo','Guten Morgen','Guten Tag','Tschüss','der Name','wie','freuen','Willkommen']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-0000659845b6', '✏️ Schreiben: Erste Gespräche führen', 'Write an email to a German friend about "Basic Conversations". Tell them what you learned, what you found interesting, and ask two questions about their experience with this topic. Use at least 8 vocabulary words from this lesson. Sign off naturally ("Viele Grüße", "Liebe Grüße").', ARRAY['Start with "Hallo" or "Liebe/r"','Keep sentences short (Subject-Verb-Object)','End with a friendly farewell']::text[], ARRAY['Hallo','Guten Morgen','Guten Tag','Tschüss','der Name','wie','freuen','Willkommen']::text[], ARRAY['Sentence structure','Vocabulary usage']::text[], 50, 100, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000659845b6', 'Erste Gespräche führen — Roleplay', 'Basic Conversations', 'Student', 'Teacher', 'Practice conversation about Basic Conversations', 'Hallo! Lass uns über dieses Thema sprechen.', 'beginner', 1, ARRAY['Hallo','Guten Morgen','Guten Tag','Tschüss','der Name','wie','freuen','Willkommen']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000659845b6', 'Erste Gespräche führen — Advanced Roleplay', 'Basic Conversations', 'Customer', 'Assistant', 'Extended conversation about Basic Conversations', 'Guten Tag! Wie kann ich Ihnen helfen?', 'beginner', 2, ARRAY['Hallo','Guten Morgen','Guten Tag','Tschüss','der Name','wie','freuen','Willkommen']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-0000659845b6', 'Erste Gespräche führen — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Erste Gespräche führen".', 'Creative practice for Basic Conversations', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-0000659845b6', '📚 Hausaufgabe: Erste Gespräche führen', 'Complete these tasks to reinforce "Erste Gespräche führen".', 'mixed', '[{"description":"Create 10 flashcards from this lesson''s vocabulary — write German on one side, Arabic on the other. Test yourself 3 times."},{"description":"Write 6 sentences about Basic Conversations: 2 statements, 2 questions, 2 negations — all using question_words."},{"description":"Record yourself reading the dialogue aloud. Listen to the recording and note 3 things to improve."},{"description":"Find 3 real German websites, videos, or articles about Basic Conversations. Note 5 new words you discovered."}]', 50, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-0000659845b6', '🎯 Great work! In this lesson you learned 142 new words about Basic Conversations. You practiced question_words — an important grammar topic for A1 level. You read a text, listened to a dialogue, and practiced speaking and writing. Keep going!', '["142 vocabulary items about Basic Conversations","question_words — grammar explanation and practice","Reading comprehension: text about Basic Conversations","Listening comprehension: dialogue about Basic Conversations","Speaking practice: roleplay/discussion about Basic Conversations","Writing task: text about Basic Conversations"]', '[{"title":"Erste Gespräche führen Review","summary":"question_words — the main grammar focus. Focus on understanding when to use this structure and forming basic sentences."}]', ARRAY['Hallo (hello)','Guten Morgen (good morning)','Guten Tag (good day)','Tschüss (bye)','der Name (name)']::text[], ARRAY['Don''t translate from Arabic word-for-word — German has different sentence structure','Learn every noun with its article: NEVER learn "Tisch" alone, always "der Tisch"','Verb always in position 2 in main clauses']::text[], ARRAY['Practice 15-20 minutes daily — consistency beats intensity','Speak out loud: German pronunciation needs muscle memory','Use the new vocabulary within 24 hours or you''ll forget it','Watch German YouTube videos about Basic Conversations for authentic input']::text[]);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000659845b6', 'Pronunciation: German sounds for "greetings"', 'In German, vowels are pure — unlike English diphthongs. The "ch" sound after a, o, u is guttural (like Arabic خ). After e, i, ä, ö, ü it''s soft (like English "huge" without the "u").

Common mistake for Arabic speakers: Arabic speakers tend to over-emphasise consonants. German flows — connect words smoothly (e.g., "Ich habe" becomes /ɪçabə/ not /ɪç ˈhaːbə/).', '[]', '[{"german":"Hallo","arabic":"","english":"","phonetic":""},{"german":"Guten Morgen","arabic":"","english":"","phonetic":""},{"german":"Guten Tag","arabic":"","english":"","phonetic":""},{"german":"Tschüss","arabic":"","english":"","phonetic":""}]', '[]', 10);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000659845b6', 'translation', 'Translate to German: "I use the word "hello" in a sentence about Basic Conversations."', '[]', 'Hallo, wie geht es dir?', 'Use  "Hallo" with the correct question_words form.', 1, 40);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000659845b6', 'translation', 'Translate to German: "I use the word "good morning" in a sentence about Basic Conversations."', '[]', 'Guten Morgen, Herr Müller.', 'Use  "Guten Morgen" with the correct question_words form.', 1, 41);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000659845b6', 'translation', 'Translate to German: "I use the word "good day" in a sentence about Basic Conversations."', '[]', 'Guten Tag, Frau Schmidt.', 'Use  "Guten Tag" with the correct question_words form.', 1, 42);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000659845b6', 'Culture: 🇩🇪 Deutsche Kultur: Basic Conversations', 'In Germany, Basic Conversations is approached with typical German directness and efficiency. Germans value clarity over small talk. When discussing Basic Conversations, expect honest feedback and straightforward questions. This is not rudeness — it''s cultural. Arabic speakers often find this too direct at first, but you''ll appreciate it once you get used to it.

في ألمانيا، يتم التعامل مع Basic Conversations بوضوح وكفاءة. الألمان يقدرون الوضوح أكثر من المجاملات. لا تعتبر هذه وقاحة - إنها ثقافة مختلفة.', '["Tip: Always use \"Sie\" (formal) with strangers and colleagues","Tip: Germans appreciate punctuality — arrive 5 minutes early","Tip: Direct feedback is a sign of respect, not criticism","Tip: Prepare factual arguments, not emotional appeals"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000659845b6', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Saying \"Guten Morgen\" in the afternoon","correction":"Use \"Guten Tag\" from 10am-6pm, \"Guten Abend\" after 6pm","explanation":"Arabic \"Sabah el-kheir\" works all day. German has strict time-based greetings."},{"mistake":"Using the wrong article (der/die/das) for nouns","correction":"Learn each noun with its article as one piece","explanation":"Arabic has no articles for nouns without gender connection"}]', 30);

  -- Module 2: Familie und Alltag
  insert into public.course_modules (id, level_id, title, description, objectives, order_index, estimated_hours, is_published)
  values ('00000000-0000-4000-a000-000039b4d35f', 'A1', 'Familie und Alltag', 'Talk about your family, describe your daily routine, and tell time.', '["Describe family members and relationships","Use possessive articles mein/dein","Conjugate regular verbs in present tense","Tell time and talk about daily schedules"]', 2, 5, true)
  on conflict (id) do nothing;

  -- Lesson 1: Die Familie (L-A1-02-01)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-00006598ba10', '00000000-0000-4000-a000-000039b4d35f', 'Die Familie', 'Learn family member vocabulary and possessive articles.', 'Family Members', 'vocabulary', '["Understand and use 142 key vocabulary words about Family Members","Apply possessive_articles correctly in sentences","Read and comprehend a text about Family Members","Listen and understand a natural dialogue about Family Members","Speak about Family Members with confidence","Write a short text about Family Members using new vocabulary"]', 30, 1, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, french_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-00006598ba10', 'die Familie', 'العائلة', 'family', 'la famille', 'die', 'die Familien', 'noun', 'Meine Familie ist groß.', 'My family is big.', 'A1', 1),
  ('00000000-0000-4000-a000-00006598ba10', 'der Vater', 'الأب', 'father', 'le père', 'der', 'die Väter', 'noun', 'Mein Vater ist Ingenieur.', 'My father is an engineer.', 'A1', 2),
  ('00000000-0000-4000-a000-00006598ba10', 'die Mutter', 'الأم', 'mother', 'la mère', 'die', 'die Mütter', 'noun', 'Meine Mutter kocht gut.', 'My mother cooks well.', 'A1', 3),
  ('00000000-0000-4000-a000-00006598ba10', 'der Bruder', 'الأخ', 'brother', 'le frère', 'der', 'die Brüder', 'noun', 'Mein Bruder ist 15 Jahre alt.', 'My brother is 15 years old.', 'A1', 4),
  ('00000000-0000-4000-a000-00006598ba10', 'die Schwester', 'الأخت', 'sister', 'la sœur', 'die', 'die Schwestern', 'noun', 'Meine Schwester studiert Medizin.', 'My sister studies medicine.', 'A1', 5),
  ('00000000-0000-4000-a000-00006598ba10', 'die Geschwister', 'الإخوة', 'siblings', 'les frères et sœurs', 'die', NULL, 'noun', 'Hast du Geschwister?', 'Do you have siblings?', 'A1', 6),
  ('00000000-0000-4000-a000-00006598ba10', 'der Sohn', 'الابن', 'son', 'le fils', 'der', 'die Söhne', 'noun', 'Wir haben einen Sohn.', 'We have a son.', 'A1', 7),
  ('00000000-0000-4000-a000-00006598ba10', 'die Tochter', 'الابنة', 'daughter', 'la fille', 'die', 'die Töchter', 'noun', 'Meine Tochter geht zur Schule.', 'My daughter goes to school.', 'A1', 8),
  ('00000000-0000-4000-a000-00006598ba10', 'die Großeltern', 'الأجداد', 'grandparents', 'les grands-parents', 'die', NULL, 'noun', 'Meine Großeltern wohnen auf dem Land.', 'My grandparents live in the countryside.', 'A1', 9),
  ('00000000-0000-4000-a000-00006598ba10', 'verheiratet', 'متزوج', 'married', 'marié(e)', NULL, NULL, 'adjective', 'Meine Eltern sind verheiratet.', 'My parents are married.', 'A1', 10),
  ('00000000-0000-4000-a000-00006598ba10', 'Hallo', 'مرحباً', 'hello', 'bonjour', NULL, NULL, 'interjection', 'Hallo, wie geht es dir?', 'Hello, how are you?', 'A1', 11),
  ('00000000-0000-4000-a000-00006598ba10', 'Guten Morgen', 'صباح الخير', 'good morning', 'bonjour (le matin)', NULL, NULL, 'phrase', 'Guten Morgen, Herr Müller.', 'Good morning, Mr. Müller.', 'A1', 12),
  ('00000000-0000-4000-a000-00006598ba10', 'Guten Tag', 'نهارك سعيد', 'good day', 'bonjour (l''après-midi)', NULL, NULL, 'phrase', 'Guten Tag, Frau Schmidt.', 'Good day, Mrs. Schmidt.', 'A1', 13),
  ('00000000-0000-4000-a000-00006598ba10', 'Tschüss', 'مع السلامة', 'bye', 'au revoir / salut', NULL, NULL, 'interjection', 'Tschüss, bis morgen!', 'Bye, see you tomorrow!', 'A1', 14),
  ('00000000-0000-4000-a000-00006598ba10', 'der Name', 'الاسم', 'name', 'le nom', 'der', 'die Namen', 'noun', 'Mein Name ist Anna.', 'My name is Anna.', 'A1', 15),
  ('00000000-0000-4000-a000-00006598ba10', 'wie', 'كيف', 'how', 'comment', NULL, NULL, 'adverb', 'Wie heißt du?', 'What is your name?', 'A1', 16),
  ('00000000-0000-4000-a000-00006598ba10', 'freuen', 'يسر', 'to be pleased', 'se réjouir', NULL, NULL, 'verb', 'Ich freue mich, dich kennenzulernen.', 'I am pleased to meet you.', 'A1', 17),
  ('00000000-0000-4000-a000-00006598ba10', 'Willkommen', 'أهلاً وسهلاً', 'welcome', 'bienvenue', NULL, NULL, 'interjection', 'Willkommen in Deutschland!', 'Welcome to Germany!', 'A1', 18),
  ('00000000-0000-4000-a000-00006598ba10', 'das Brot', 'الخبز', 'bread', 'le pain', 'das', 'die Brote', 'noun', 'Ich kaufe ein Brot.', 'I buy a loaf of bread.', 'A1', 19),
  ('00000000-0000-4000-a000-00006598ba10', 'die Milch', 'الحليب', 'milk', 'le lait', 'die', NULL, 'noun', 'Die Milch ist frisch.', 'The milk is fresh.', 'A1', 20),
  ('00000000-0000-4000-a000-00006598ba10', 'der Käse', 'الجبن', 'cheese', 'le fromage', 'der', NULL, 'noun', 'Der Käse schmeckt gut.', 'The cheese tastes good.', 'A1', 21),
  ('00000000-0000-4000-a000-00006598ba10', 'der Apfel', 'التفاح', 'apple', 'la pomme', 'der', 'die Äpfel', 'noun', 'Der Apfel ist rot.', 'The apple is red.', 'A1', 22),
  ('00000000-0000-4000-a000-00006598ba10', 'das Ei', 'البيضة', 'egg', 'l''œuf', 'das', 'die Eier', 'noun', 'Ich esse ein Ei zum Frühstück.', 'I eat an egg for breakfast.', 'A1', 23),
  ('00000000-0000-4000-a000-00006598ba10', 'das Obst', 'الفاكهة', 'fruit', 'les fruits', 'das', NULL, 'noun', 'Obst ist gesund.', 'Fruit is healthy.', 'A1', 24),
  ('00000000-0000-4000-a000-00006598ba10', 'das Gemüse', 'الخضروات', 'vegetables', 'les légumes', 'das', NULL, 'noun', 'Ich kaufe Gemüse auf dem Markt.', 'I buy vegetables at the market.', 'A1', 25),
  ('00000000-0000-4000-a000-00006598ba10', 'kochen', 'يطبخ', 'to cook', 'cuisiner', NULL, NULL, 'verb', 'Meine Mutter kocht gut.', 'My mother cooks well.', 'A1', 26),
  ('00000000-0000-4000-a000-00006598ba10', 'der Fisch', 'السمك', 'fish', 'le poisson', 'der', 'die Fische', 'noun', 'Der Fisch ist frisch.', 'The fish is fresh.', 'A1', 27),
  ('00000000-0000-4000-a000-00006598ba10', 'das Fleisch', 'اللحم', 'meat', 'la viande', 'das', NULL, 'noun', 'Ich esse nicht viel Fleisch.', 'I do not eat much meat.', 'A1', 28),
  ('00000000-0000-4000-a000-00006598ba10', 'das Haus', 'البيت', 'house', 'la maison', 'das', 'die Häuser', 'noun', 'Das Haus ist groß.', 'The house is big.', 'A1', 29),
  ('00000000-0000-4000-a000-00006598ba10', 'die Wohnung', 'الشقة', 'apartment', 'l''appartement', 'die', 'die Wohnungen', 'noun', 'Meine Wohnung hat drei Zimmer.', 'My apartment has three rooms.', 'A1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006598ba10', 'Possessivartikel: mein, dein, sein, ihr (Possessive Articles) / أدوات الملكية', 'German possessive articles agree with the noun they modify (gender of the owned item), not the owner. mein (my), dein (your, informal), sein (his/its), ihr (her/their), unser (our), euer (your plural), Ihr (your formal). They follow the same endings as "ein" in nominative and accusative.', '[{"rule":"mein + masculine (Nom): mein Vater","note":"Mein Vater ist Arzt."},{"rule":"mein + feminine (Nom): meine Mutter","note":"Meine Mutter ist Lehrerin."},{"rule":"mein + neuter (Nom): mein Kind","note":"Mein Kind ist klein."},{"rule":"Possessive follows \"ein\" pattern: no ending in Nom masc/neut, add -e in Nom fem/plural","note":"mein (masc/neut), meine (fem/plural)"}]', '[{"german":"Mein Bruder heißt Max.","arabic":"أخي اسمه ماكس.","english":"My brother is called Max."},{"german":"Meine Mutter kocht gut.","arabic":"أمي تطبخ جيداً.","english":"My mother cooks well."},{"german":"Dein Hund ist süß.","arabic":"كلبك لطيف.","english":"Your dog is cute."},{"german":"Ihre Schwester studiert in Berlin.","arabic":"أختها (أختهم) تدرس في برلين.","english":"Her/Their sister studies in Berlin."}]', '[{"mistake":"Mein Mutter (using mein for feminine)","correction":"Meine Mutter","explanation":"With feminine nouns, possessive adds -e: meine."},{"mistake":"Mein Schwester (wrong ending)","correction":"Meine Schwester","explanation":"\"Schwester\" is feminine → meine."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006598ba10', 'multiple_choice', 'Which German word matches "family"?', '["der Bruder","der Vater","die Familie","die Mutter"]', 'die Familie', '"family" = "die Familie" in German. Article: die Plural: die Familien', 1, 1),
  ('00000000-0000-4000-a000-00006598ba10', 'multiple_choice', 'Which German word matches "father"?', '["der Vater","die Familie","die Mutter","der Bruder"]', 'der Vater', '"father" = "der Vater" in German. Article: der Plural: die Väter', 1, 2),
  ('00000000-0000-4000-a000-00006598ba10', 'multiple_choice', 'Which German word matches "mother"?', '["der Vater","die Schwester","der Bruder","die Mutter"]', 'die Mutter', '"mother" = "die Mutter" in German. Article: die Plural: die Mütter', 1, 3),
  ('00000000-0000-4000-a000-00006598ba10', 'multiple_choice', 'Which German word matches "brother"?', '["die Schwester","die Familie","der Vater","die Mutter"]', 'der Bruder', '"brother" = "der Bruder" in German. Article: der Plural: die Brüder', 1, 4),
  ('00000000-0000-4000-a000-00006598ba10', 'multiple_choice', 'Which German word matches "sister"?', '["die Schwester","die Mutter","der Bruder","die Familie"]', 'die Schwester', '"sister" = "die Schwester" in German. Article: die Plural: die Schwestern', 1, 5),
  ('00000000-0000-4000-a000-00006598ba10', 'fill_gap', 'Complete the sentence: Ich ___ gern über Family Members. (sprechen)', '["spreche","sprichst","spricht","sprechen"]', 'spreche', 'ich spreche gern = I like to speak. Stem: sprech- + e.', 2, 6),
  ('00000000-0000-4000-a000-00006598ba10', 'translation', 'Translate to German: "I am learning about Family Members."', '["Ich lerne über Family Members.","Ich lerne Family Members.","Lerne ich Family Members."]', 'Ich lerne über Family Members.', '"Ich lerne über..." = "I am learning about..."', 2, 7),
  ('00000000-0000-4000-a000-00006598ba10', 'matching', 'Match: Which word pairs are correct?', '["die Familie - family, der Vater - father"]', 'Matched correctly', 'Each German word has a unique English equivalent.', 2, 8);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-00006598ba10', 'multiple_choice', 'What does "die Familie" mean in English?', '["family","to run","beautiful","yesterday"]', 'family', 1, 1),
  ('00000000-0000-4000-a000-00006598ba10', 'multiple_choice', 'What is the correct article for "der Vater"?', '["der","die","das","den"]', 'der', 1, 2),
  ('00000000-0000-4000-a000-00006598ba10', 'true_false', 'The word "die Mutter" is related to Family Members.', '["True","False"]', 'True', 1, 3),
  ('00000000-0000-4000-a000-00006598ba10', 'multiple_choice', 'Which sentence correctly uses possessive_articles?', '["Mein Bruder heißt Max.","Meine Mutter kocht gut.","Dein Hund ist süß.","Ihre Schwester studiert in Berlin."]', 'Mein Bruder heißt Max.', 2, 4),
  ('00000000-0000-4000-a000-00006598ba10', 'true_false', 'German word order puts the verb in second position in main clauses.', '["True","False"]', 'True', 1, 5),
  ('00000000-0000-4000-a000-00006598ba10', 'fill_blank', 'Complete: Ich ___ (brother) Deutsch.', '["der Bruder","lernt","lernst","lernen"]', 'lerne', 2, 6),
  ('00000000-0000-4000-a000-00006598ba10', 'multiple_choice', 'What is the German word for "sister"?', '["die Schwester","die Geschwister","der Sohn","die Tochter"]', 'die Schwester', 1, 7),
  ('00000000-0000-4000-a000-00006598ba10', 'true_false', 'In German, ALL nouns are always capitalised.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-00006598ba10', 'multiple_choice', 'How do you say "please" in a restaurant in Germany?', '["Bitte","Danke","Tschüss","Hallo"]', 'Bitte', 1, 9),
  ('00000000-0000-4000-a000-00006598ba10', 'fill_blank', 'Wo ___ (to live) du?', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 2, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, french_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-00006598ba10', 'Hast du Geschwister?', 'Do you have siblings?', 'هل لديك أخوة؟', NULL, 'Used in Familie und Alltag', 'informal', false, 1),
  ('00000000-0000-4000-a000-00006598ba10', 'Meine Familie kommt aus Syrien.', 'My family comes from Syria.', 'عائلتي من سوريا.', NULL, 'Used in Familie und Alltag', 'neutral', false, 2),
  ('00000000-0000-4000-a000-00006598ba10', 'Ich habe einen Bruder und zwei Schwestern.', 'I have one brother and two sisters.', 'لدي أخ واحد وأختان.', NULL, 'Used in Familie und Alltag', 'neutral', false, 3),
  ('00000000-0000-4000-a000-00006598ba10', 'Wir wohnen zusammen in Köln.', 'We live together in Cologne.', 'نعيش معاً في كولونيا.', NULL, 'Used in Familie und Alltag', 'neutral', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-00006598ba10', 'die die Familie (die Familien)', 'family — العائلة', 'noun', 'vocabulary', 1),
  ('00000000-0000-4000-a000-00006598ba10', 'der der Vater (die Väter)', 'father — الأب', 'noun', 'vocabulary', 2),
  ('00000000-0000-4000-a000-00006598ba10', 'die die Mutter (die Mütter)', 'mother — الأم', 'noun', 'vocabulary', 3),
  ('00000000-0000-4000-a000-00006598ba10', 'der der Bruder (die Brüder)', 'brother — الأخ', 'noun', 'vocabulary', 4),
  ('00000000-0000-4000-a000-00006598ba10', 'die die Schwester (die Schwestern)', 'sister — الأخت', 'noun', 'vocabulary', 5),
  ('00000000-0000-4000-a000-00006598ba10', 'die die Geschwister', 'siblings — الإخوة', 'noun', 'vocabulary', 6),
  ('00000000-0000-4000-a000-00006598ba10', 'der der Sohn (die Söhne)', 'son — الابن', 'noun', 'vocabulary', 7),
  ('00000000-0000-4000-a000-00006598ba10', 'die die Tochter (die Töchter)', 'daughter — الابنة', 'noun', 'vocabulary', 8),
  ('00000000-0000-4000-a000-00006598ba10', 'die die Großeltern', 'grandparents — الأجداد', 'noun', 'vocabulary', 9),
  ('00000000-0000-4000-a000-00006598ba10', 'verheiratet', 'married — متزوج', 'adjective', 'vocabulary', 10),
  ('00000000-0000-4000-a000-00006598ba10', 'Hallo', 'hello — مرحباً', 'interjection', 'vocabulary', 11),
  ('00000000-0000-4000-a000-00006598ba10', 'Guten Morgen', 'good morning — صباح الخير', 'phrase', 'vocabulary', 12),
  ('00000000-0000-4000-a000-00006598ba10', 'Guten Tag', 'good day — نهارك سعيد', 'phrase', 'vocabulary', 13),
  ('00000000-0000-4000-a000-00006598ba10', 'Tschüss', 'bye — مع السلامة', 'interjection', 'vocabulary', 14),
  ('00000000-0000-4000-a000-00006598ba10', 'der der Name (die Namen)', 'name — الاسم', 'noun', 'vocabulary', 15),
  ('00000000-0000-4000-a000-00006598ba10', 'Mein Bruder heißt Max.', 'My brother is called Max.', 'Possessivartikel: mein, dein, sein, ihr (Possessive Articles)', 'grammar', 16),
  ('00000000-0000-4000-a000-00006598ba10', 'Meine Mutter kocht gut.', 'My mother cooks well.', 'Possessivartikel: mein, dein, sein, ihr (Possessive Articles)', 'grammar', 17),
  ('00000000-0000-4000-a000-00006598ba10', 'Dein Hund ist süß.', 'Your dog is cute.', 'Possessivartikel: mein, dein, sein, ihr (Possessive Articles)', 'grammar', 18);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, french_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-00006598ba10', 'Die Familie — Leseübung', 'Hallo! Ich heiße Ahmed und komme aus Syrien. Meine Familie wohnt in Köln. Ich habe einen Bruder und zwei Schwestern. Mein Bruder heißt Omar und ist 20 Jahre alt. Meine Schwestern heißen Fatima und Aisha. Meine Mutter ist Ärztin. Mein Vater arbeitet als Lehrer. Wir haben auch eine Katze. Sie heißt Mimi. Am Wochenende besuchen wir unsere Großeltern. Meine Großmutter kocht sehr gut. Ich liebe meine Familie.', 'Hello! My name is Ahmed and I come from Syria. My family lives in Cologne. I have one brother and two sisters. My brother is called Omar and is 20 years old. My sisters are called Fatima and Aisha. My mother is a doctor. My father works as a teacher. We also have a cat. She is called Mimi. On weekends we visit our grandparents. My grandmother cooks very well. I love my family.', 'مرحباً! اسمي أحمد وأنا من سوريا. عائلتي تسكن في كولونيا. لدي أخ واحد وأختان. أخي اسمه عمر وعمره 20 سنة. أختاي اسمهما فاطمة وعائشة. أمي طبيبة. والدي يعمل معلماً. لدينا أيضاً قطة. اسمها ميمي. في عطلة نهاية الأسبوع نزور أجدادنا. جدتي تطبخ جيداً جداً. أحب عائلتي.', NULL, 67, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, french_translation, duration_seconds, speaker_count, scenario) values
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

[Ben]: والدي معلم ووالدتي طبيبة.', '[Anna]: 

[Ben]: 

[Anna]: 

[Ben]: 

[Anna]: 

[Ben]: ', 72, 2, 'Familie und Alltag');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-00006598ba10', '🔊 Sprechen: Die Familie', 'Roleplay: You are in a Hamburg office. Introduce yourself and talk about Family Members. Your partner (AI) will respond naturally.', 'Family Members', ARRAY['Use complete sentences — not single words','Pause between phrases, not between words','Don''t translate from Arabic word-for-word']::text[], ARRAY['die Familie','der Vater','die Mutter','der Bruder','die Schwester','die Geschwister','der Sohn','die Tochter']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-00006598ba10', '✏️ Schreiben: Die Familie', 'Write an email to a German friend about "Family Members". Tell them what you learned, what you found interesting, and ask two questions about their experience with this topic. Use at least 8 vocabulary words from this lesson. Sign off naturally ("Viele Grüße", "Liebe Grüße").', ARRAY['Start with "Hallo" or "Liebe/r"','Keep sentences short (Subject-Verb-Object)','End with a friendly farewell']::text[], ARRAY['die Familie','der Vater','die Mutter','der Bruder','die Schwester','die Geschwister','der Sohn','die Tochter']::text[], ARRAY['Sentence structure','Vocabulary usage']::text[], 50, 100, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00006598ba10', 'Die Familie — Roleplay', 'Family Members', 'Student', 'Teacher', 'Practice conversation about Family Members', 'Hallo! Lass uns über dieses Thema sprechen.', 'beginner', 1, ARRAY['die Familie','der Vater','die Mutter','der Bruder','die Schwester','die Geschwister','der Sohn','die Tochter']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00006598ba10', 'Die Familie — Advanced Roleplay', 'Family Members', 'Customer', 'Assistant', 'Extended conversation about Family Members', 'Guten Tag! Wie kann ich Ihnen helfen?', 'beginner', 2, ARRAY['die Familie','der Vater','die Mutter','der Bruder','die Schwester','die Geschwister','der Sohn','die Tochter']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-00006598ba10', 'Die Familie — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Die Familie".', 'Creative practice for Family Members', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-00006598ba10', '📚 Hausaufgabe: Die Familie', 'Complete these tasks to reinforce "Die Familie".', 'mixed', '[{"description":"Create 10 flashcards from this lesson''s vocabulary — write German on one side, Arabic on the other. Test yourself 3 times."},{"description":"Write 6 sentences about Family Members: 2 statements, 2 questions, 2 negations — all using possessive_articles."},{"description":"Record yourself reading the dialogue aloud. Listen to the recording and note 3 things to improve."},{"description":"Find 3 real German websites, videos, or articles about Family Members. Note 5 new words you discovered."}]', 50, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-00006598ba10', '🎯 Great work! In this lesson you learned 142 new words about Family Members. You practiced possessive_articles — an important grammar topic for A1 level. You read a text, listened to a dialogue, and practiced speaking and writing. Keep going!', '["142 vocabulary items about Family Members","possessive_articles — grammar explanation and practice","Reading comprehension: text about Family Members","Listening comprehension: dialogue about Family Members","Speaking practice: roleplay/discussion about Family Members","Writing task: text about Family Members"]', '[{"title":"Die Familie Review","summary":"possessive_articles — the main grammar focus. Focus on understanding when to use this structure and forming basic sentences."}]', ARRAY['die Familie (family)','der Vater (father)','die Mutter (mother)','der Bruder (brother)','die Schwester (sister)']::text[], ARRAY['Don''t translate from Arabic word-for-word — German has different sentence structure','Learn every noun with its article: NEVER learn "Tisch" alone, always "der Tisch"','Verb always in position 2 in main clauses']::text[], ARRAY['Practice 15-20 minutes daily — consistency beats intensity','Speak out loud: German pronunciation needs muscle memory','Use the new vocabulary within 24 hours or you''ll forget it','Watch German YouTube videos about Family Members for authentic input']::text[]);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006598ba10', 'Pronunciation: German sounds for "family"', 'In German, vowels are pure — unlike English diphthongs. The "ch" sound after a, o, u is guttural (like Arabic خ). After e, i, ä, ö, ü it''s soft (like English "huge" without the "u").

Common mistake for Arabic speakers: Arabic speakers tend to over-emphasise consonants. German flows — connect words smoothly (e.g., "Ich habe" becomes /ɪçabə/ not /ɪç ˈhaːbə/).', '[]', '[{"german":"die Familie","arabic":"","english":"","phonetic":""},{"german":"der Vater","arabic":"","english":"","phonetic":""},{"german":"die Mutter","arabic":"","english":"","phonetic":""},{"german":"der Bruder","arabic":"","english":"","phonetic":""}]', '[]', 10);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006598ba10', 'translation', 'Translate to German: "I use the word "family" in a sentence about Family Members."', '[]', 'Meine Familie ist groß.', 'Use die  "die Familie" with the correct possessive_articles form.', 1, 40);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006598ba10', 'translation', 'Translate to German: "I use the word "father" in a sentence about Family Members."', '[]', 'Mein Vater ist Ingenieur.', 'Use der  "der Vater" with the correct possessive_articles form.', 1, 41);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006598ba10', 'translation', 'Translate to German: "I use the word "mother" in a sentence about Family Members."', '[]', 'Meine Mutter kocht gut.', 'Use die  "die Mutter" with the correct possessive_articles form.', 1, 42);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006598ba10', 'Culture: 🇩🇪 Deutsche Kultur: Family Members', 'In Germany, Family Members is approached with typical German directness and efficiency. Germans value clarity over small talk. When discussing Family Members, expect honest feedback and straightforward questions. This is not rudeness — it''s cultural. Arabic speakers often find this too direct at first, but you''ll appreciate it once you get used to it.

في ألمانيا، يتم التعامل مع Family Members بوضوح وكفاءة. الألمان يقدرون الوضوح أكثر من المجاملات. لا تعتبر هذه وقاحة - إنها ثقافة مختلفة.', '["Tip: Always use \"Sie\" (formal) with strangers and colleagues","Tip: Germans appreciate punctuality — arrive 5 minutes early","Tip: Direct feedback is a sign of respect, not criticism","Tip: Prepare factual arguments, not emotional appeals"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006598ba10', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Confusing \"mein\" and \"meine\"","correction":"mein for masculine/neuter, meine for feminine/plural","explanation":"Arabic has no grammatical gender in possessive particles."},{"mistake":"Using the wrong article (der/die/das) for nouns","correction":"Learn each noun with its article as one piece","explanation":"Arabic has no articles for nouns without gender connection"}]', 30);

  -- Lesson 2: Verwandte und Beziehungen (L-A1-02-02)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-00006598ba11', '00000000-0000-4000-a000-000039b4d35f', 'Verwandte und Beziehungen', 'Extended family, relationship terms, and family tree.', 'Relatives', 'vocabulary', '["Understand and use 142 key vocabulary words about Relatives","Apply possessive_articles correctly in sentences","Read and comprehend a text about Relatives","Listen and understand a natural dialogue about Relatives","Speak about Relatives with confidence","Write a short text about Relatives using new vocabulary"]', 25, 2, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, french_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-00006598ba11', 'die Familie', 'العائلة', 'family', 'la famille', 'die', 'die Familien', 'noun', 'Meine Familie ist groß.', 'My family is big.', 'A1', 1),
  ('00000000-0000-4000-a000-00006598ba11', 'der Vater', 'الأب', 'father', 'le père', 'der', 'die Väter', 'noun', 'Mein Vater ist Ingenieur.', 'My father is an engineer.', 'A1', 2),
  ('00000000-0000-4000-a000-00006598ba11', 'die Mutter', 'الأم', 'mother', 'la mère', 'die', 'die Mütter', 'noun', 'Meine Mutter kocht gut.', 'My mother cooks well.', 'A1', 3),
  ('00000000-0000-4000-a000-00006598ba11', 'der Bruder', 'الأخ', 'brother', 'le frère', 'der', 'die Brüder', 'noun', 'Mein Bruder ist 15 Jahre alt.', 'My brother is 15 years old.', 'A1', 4),
  ('00000000-0000-4000-a000-00006598ba11', 'die Schwester', 'الأخت', 'sister', 'la sœur', 'die', 'die Schwestern', 'noun', 'Meine Schwester studiert Medizin.', 'My sister studies medicine.', 'A1', 5),
  ('00000000-0000-4000-a000-00006598ba11', 'die Geschwister', 'الإخوة', 'siblings', 'les frères et sœurs', 'die', NULL, 'noun', 'Hast du Geschwister?', 'Do you have siblings?', 'A1', 6),
  ('00000000-0000-4000-a000-00006598ba11', 'der Sohn', 'الابن', 'son', 'le fils', 'der', 'die Söhne', 'noun', 'Wir haben einen Sohn.', 'We have a son.', 'A1', 7),
  ('00000000-0000-4000-a000-00006598ba11', 'die Tochter', 'الابنة', 'daughter', 'la fille', 'die', 'die Töchter', 'noun', 'Meine Tochter geht zur Schule.', 'My daughter goes to school.', 'A1', 8),
  ('00000000-0000-4000-a000-00006598ba11', 'die Großeltern', 'الأجداد', 'grandparents', 'les grands-parents', 'die', NULL, 'noun', 'Meine Großeltern wohnen auf dem Land.', 'My grandparents live in the countryside.', 'A1', 9),
  ('00000000-0000-4000-a000-00006598ba11', 'verheiratet', 'متزوج', 'married', 'marié(e)', NULL, NULL, 'adjective', 'Meine Eltern sind verheiratet.', 'My parents are married.', 'A1', 10),
  ('00000000-0000-4000-a000-00006598ba11', 'Hallo', 'مرحباً', 'hello', 'bonjour', NULL, NULL, 'interjection', 'Hallo, wie geht es dir?', 'Hello, how are you?', 'A1', 11),
  ('00000000-0000-4000-a000-00006598ba11', 'Guten Morgen', 'صباح الخير', 'good morning', 'bonjour (le matin)', NULL, NULL, 'phrase', 'Guten Morgen, Herr Müller.', 'Good morning, Mr. Müller.', 'A1', 12),
  ('00000000-0000-4000-a000-00006598ba11', 'Guten Tag', 'نهارك سعيد', 'good day', 'bonjour (l''après-midi)', NULL, NULL, 'phrase', 'Guten Tag, Frau Schmidt.', 'Good day, Mrs. Schmidt.', 'A1', 13),
  ('00000000-0000-4000-a000-00006598ba11', 'Tschüss', 'مع السلامة', 'bye', 'au revoir / salut', NULL, NULL, 'interjection', 'Tschüss, bis morgen!', 'Bye, see you tomorrow!', 'A1', 14),
  ('00000000-0000-4000-a000-00006598ba11', 'der Name', 'الاسم', 'name', 'le nom', 'der', 'die Namen', 'noun', 'Mein Name ist Anna.', 'My name is Anna.', 'A1', 15),
  ('00000000-0000-4000-a000-00006598ba11', 'wie', 'كيف', 'how', 'comment', NULL, NULL, 'adverb', 'Wie heißt du?', 'What is your name?', 'A1', 16),
  ('00000000-0000-4000-a000-00006598ba11', 'freuen', 'يسر', 'to be pleased', 'se réjouir', NULL, NULL, 'verb', 'Ich freue mich, dich kennenzulernen.', 'I am pleased to meet you.', 'A1', 17),
  ('00000000-0000-4000-a000-00006598ba11', 'Willkommen', 'أهلاً وسهلاً', 'welcome', 'bienvenue', NULL, NULL, 'interjection', 'Willkommen in Deutschland!', 'Welcome to Germany!', 'A1', 18),
  ('00000000-0000-4000-a000-00006598ba11', 'das Brot', 'الخبز', 'bread', 'le pain', 'das', 'die Brote', 'noun', 'Ich kaufe ein Brot.', 'I buy a loaf of bread.', 'A1', 19),
  ('00000000-0000-4000-a000-00006598ba11', 'die Milch', 'الحليب', 'milk', 'le lait', 'die', NULL, 'noun', 'Die Milch ist frisch.', 'The milk is fresh.', 'A1', 20),
  ('00000000-0000-4000-a000-00006598ba11', 'der Käse', 'الجبن', 'cheese', 'le fromage', 'der', NULL, 'noun', 'Der Käse schmeckt gut.', 'The cheese tastes good.', 'A1', 21),
  ('00000000-0000-4000-a000-00006598ba11', 'der Apfel', 'التفاح', 'apple', 'la pomme', 'der', 'die Äpfel', 'noun', 'Der Apfel ist rot.', 'The apple is red.', 'A1', 22),
  ('00000000-0000-4000-a000-00006598ba11', 'das Ei', 'البيضة', 'egg', 'l''œuf', 'das', 'die Eier', 'noun', 'Ich esse ein Ei zum Frühstück.', 'I eat an egg for breakfast.', 'A1', 23),
  ('00000000-0000-4000-a000-00006598ba11', 'das Obst', 'الفاكهة', 'fruit', 'les fruits', 'das', NULL, 'noun', 'Obst ist gesund.', 'Fruit is healthy.', 'A1', 24),
  ('00000000-0000-4000-a000-00006598ba11', 'das Gemüse', 'الخضروات', 'vegetables', 'les légumes', 'das', NULL, 'noun', 'Ich kaufe Gemüse auf dem Markt.', 'I buy vegetables at the market.', 'A1', 25),
  ('00000000-0000-4000-a000-00006598ba11', 'kochen', 'يطبخ', 'to cook', 'cuisiner', NULL, NULL, 'verb', 'Meine Mutter kocht gut.', 'My mother cooks well.', 'A1', 26),
  ('00000000-0000-4000-a000-00006598ba11', 'der Fisch', 'السمك', 'fish', 'le poisson', 'der', 'die Fische', 'noun', 'Der Fisch ist frisch.', 'The fish is fresh.', 'A1', 27),
  ('00000000-0000-4000-a000-00006598ba11', 'das Fleisch', 'اللحم', 'meat', 'la viande', 'das', NULL, 'noun', 'Ich esse nicht viel Fleisch.', 'I do not eat much meat.', 'A1', 28),
  ('00000000-0000-4000-a000-00006598ba11', 'das Haus', 'البيت', 'house', 'la maison', 'das', 'die Häuser', 'noun', 'Das Haus ist groß.', 'The house is big.', 'A1', 29),
  ('00000000-0000-4000-a000-00006598ba11', 'die Wohnung', 'الشقة', 'apartment', 'l''appartement', 'die', 'die Wohnungen', 'noun', 'Meine Wohnung hat drei Zimmer.', 'My apartment has three rooms.', 'A1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006598ba11', 'Possessivartikel: mein, dein, sein, ihr (Possessive Articles) / أدوات الملكية', 'German possessive articles agree with the noun they modify (gender of the owned item), not the owner. mein (my), dein (your, informal), sein (his/its), ihr (her/their), unser (our), euer (your plural), Ihr (your formal). They follow the same endings as "ein" in nominative and accusative.', '[{"rule":"mein + masculine (Nom): mein Vater","note":"Mein Vater ist Arzt."},{"rule":"mein + feminine (Nom): meine Mutter","note":"Meine Mutter ist Lehrerin."},{"rule":"mein + neuter (Nom): mein Kind","note":"Mein Kind ist klein."},{"rule":"Possessive follows \"ein\" pattern: no ending in Nom masc/neut, add -e in Nom fem/plural","note":"mein (masc/neut), meine (fem/plural)"}]', '[{"german":"Mein Bruder heißt Max.","arabic":"أخي اسمه ماكس.","english":"My brother is called Max."},{"german":"Meine Mutter kocht gut.","arabic":"أمي تطبخ جيداً.","english":"My mother cooks well."},{"german":"Dein Hund ist süß.","arabic":"كلبك لطيف.","english":"Your dog is cute."},{"german":"Ihre Schwester studiert in Berlin.","arabic":"أختها (أختهم) تدرس في برلين.","english":"Her/Their sister studies in Berlin."}]', '[{"mistake":"Mein Mutter (using mein for feminine)","correction":"Meine Mutter","explanation":"With feminine nouns, possessive adds -e: meine."},{"mistake":"Mein Schwester (wrong ending)","correction":"Meine Schwester","explanation":"\"Schwester\" is feminine → meine."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006598ba11', 'multiple_choice', 'Which German word matches "family"?', '["die Familie","der Vater","die Schwester","der Bruder"]', 'die Familie', '"family" = "die Familie" in German. Article: die Plural: die Familien', 1, 1),
  ('00000000-0000-4000-a000-00006598ba11', 'multiple_choice', 'Which German word matches "father"?', '["die Mutter","die Familie","der Vater","der Bruder"]', 'der Vater', '"father" = "der Vater" in German. Article: der Plural: die Väter', 1, 2),
  ('00000000-0000-4000-a000-00006598ba11', 'multiple_choice', 'Which German word matches "mother"?', '["der Bruder","die Mutter","der Vater","die Schwester"]', 'die Mutter', '"mother" = "die Mutter" in German. Article: die Plural: die Mütter', 1, 3),
  ('00000000-0000-4000-a000-00006598ba11', 'multiple_choice', 'Which German word matches "brother"?', '["der Bruder","der Vater","die Schwester","die Familie"]', 'der Bruder', '"brother" = "der Bruder" in German. Article: der Plural: die Brüder', 1, 4),
  ('00000000-0000-4000-a000-00006598ba11', 'multiple_choice', 'Which German word matches "sister"?', '["die Schwester","die Familie","der Vater","die Mutter"]', 'die Schwester', '"sister" = "die Schwester" in German. Article: die Plural: die Schwestern', 1, 5),
  ('00000000-0000-4000-a000-00006598ba11', 'fill_gap', 'Complete the sentence: Ich ___ gern über Relatives. (sprechen)', '["spreche","sprichst","spricht","sprechen"]', 'spreche', 'ich spreche gern = I like to speak. Stem: sprech- + e.', 2, 6),
  ('00000000-0000-4000-a000-00006598ba11', 'translation', 'Translate to German: "I am learning about Relatives."', '["Ich lerne über Relatives.","Ich lerne Relatives.","Lerne ich Relatives."]', 'Ich lerne über Relatives.', '"Ich lerne über..." = "I am learning about..."', 2, 7),
  ('00000000-0000-4000-a000-00006598ba11', 'matching', 'Match: Which word pairs are correct?', '["die Familie - family, der Vater - father"]', 'Matched correctly', 'Each German word has a unique English equivalent.', 2, 8);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-00006598ba11', 'multiple_choice', 'What does "die Familie" mean in English?', '["family","to run","beautiful","yesterday"]', 'family', 1, 1),
  ('00000000-0000-4000-a000-00006598ba11', 'multiple_choice', 'What is the correct article for "der Vater"?', '["der","die","das","den"]', 'der', 1, 2),
  ('00000000-0000-4000-a000-00006598ba11', 'true_false', 'The word "die Mutter" is related to Relatives.', '["True","False"]', 'True', 1, 3),
  ('00000000-0000-4000-a000-00006598ba11', 'multiple_choice', 'Which sentence correctly uses possessive_articles?', '["Mein Bruder heißt Max.","Meine Mutter kocht gut.","Dein Hund ist süß.","Ihre Schwester studiert in Berlin."]', 'Mein Bruder heißt Max.', 2, 4),
  ('00000000-0000-4000-a000-00006598ba11', 'true_false', 'German word order puts the verb in second position in main clauses.', '["True","False"]', 'True', 1, 5),
  ('00000000-0000-4000-a000-00006598ba11', 'fill_blank', 'Complete: Ich ___ (brother) Deutsch.', '["der Bruder","lernt","lernst","lernen"]', 'lerne', 2, 6),
  ('00000000-0000-4000-a000-00006598ba11', 'multiple_choice', 'What is the German word for "sister"?', '["die Schwester","die Geschwister","der Sohn","die Tochter"]', 'die Schwester', 1, 7),
  ('00000000-0000-4000-a000-00006598ba11', 'true_false', 'In German, ALL nouns are always capitalised.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-00006598ba11', 'multiple_choice', 'How do you say "please" in a restaurant in Germany?', '["Bitte","Danke","Tschüss","Hallo"]', 'Bitte', 1, 9),
  ('00000000-0000-4000-a000-00006598ba11', 'fill_blank', 'Wo ___ (to live) du?', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 2, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, french_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-00006598ba11', 'Hast du Geschwister?', 'Do you have siblings?', 'هل لديك أخوة؟', NULL, 'Used in Familie und Alltag', 'informal', false, 1),
  ('00000000-0000-4000-a000-00006598ba11', 'Meine Familie kommt aus Syrien.', 'My family comes from Syria.', 'عائلتي من سوريا.', NULL, 'Used in Familie und Alltag', 'neutral', false, 2),
  ('00000000-0000-4000-a000-00006598ba11', 'Ich habe einen Bruder und zwei Schwestern.', 'I have one brother and two sisters.', 'لدي أخ واحد وأختان.', NULL, 'Used in Familie und Alltag', 'neutral', false, 3),
  ('00000000-0000-4000-a000-00006598ba11', 'Wir wohnen zusammen in Köln.', 'We live together in Cologne.', 'نعيش معاً في كولونيا.', NULL, 'Used in Familie und Alltag', 'neutral', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-00006598ba11', 'die die Familie (die Familien)', 'family — العائلة', 'noun', 'vocabulary', 1),
  ('00000000-0000-4000-a000-00006598ba11', 'der der Vater (die Väter)', 'father — الأب', 'noun', 'vocabulary', 2),
  ('00000000-0000-4000-a000-00006598ba11', 'die die Mutter (die Mütter)', 'mother — الأم', 'noun', 'vocabulary', 3),
  ('00000000-0000-4000-a000-00006598ba11', 'der der Bruder (die Brüder)', 'brother — الأخ', 'noun', 'vocabulary', 4),
  ('00000000-0000-4000-a000-00006598ba11', 'die die Schwester (die Schwestern)', 'sister — الأخت', 'noun', 'vocabulary', 5),
  ('00000000-0000-4000-a000-00006598ba11', 'die die Geschwister', 'siblings — الإخوة', 'noun', 'vocabulary', 6),
  ('00000000-0000-4000-a000-00006598ba11', 'der der Sohn (die Söhne)', 'son — الابن', 'noun', 'vocabulary', 7),
  ('00000000-0000-4000-a000-00006598ba11', 'die die Tochter (die Töchter)', 'daughter — الابنة', 'noun', 'vocabulary', 8),
  ('00000000-0000-4000-a000-00006598ba11', 'die die Großeltern', 'grandparents — الأجداد', 'noun', 'vocabulary', 9),
  ('00000000-0000-4000-a000-00006598ba11', 'verheiratet', 'married — متزوج', 'adjective', 'vocabulary', 10),
  ('00000000-0000-4000-a000-00006598ba11', 'Hallo', 'hello — مرحباً', 'interjection', 'vocabulary', 11),
  ('00000000-0000-4000-a000-00006598ba11', 'Guten Morgen', 'good morning — صباح الخير', 'phrase', 'vocabulary', 12),
  ('00000000-0000-4000-a000-00006598ba11', 'Guten Tag', 'good day — نهارك سعيد', 'phrase', 'vocabulary', 13),
  ('00000000-0000-4000-a000-00006598ba11', 'Tschüss', 'bye — مع السلامة', 'interjection', 'vocabulary', 14),
  ('00000000-0000-4000-a000-00006598ba11', 'der der Name (die Namen)', 'name — الاسم', 'noun', 'vocabulary', 15),
  ('00000000-0000-4000-a000-00006598ba11', 'Mein Bruder heißt Max.', 'My brother is called Max.', 'Possessivartikel: mein, dein, sein, ihr (Possessive Articles)', 'grammar', 16),
  ('00000000-0000-4000-a000-00006598ba11', 'Meine Mutter kocht gut.', 'My mother cooks well.', 'Possessivartikel: mein, dein, sein, ihr (Possessive Articles)', 'grammar', 17),
  ('00000000-0000-4000-a000-00006598ba11', 'Dein Hund ist süß.', 'Your dog is cute.', 'Possessivartikel: mein, dein, sein, ihr (Possessive Articles)', 'grammar', 18);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, french_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-00006598ba11', 'Verwandte und Beziehungen — Leseübung', 'Hallo! Ich heiße Ahmed und komme aus Syrien. Meine Familie wohnt in Köln. Ich habe einen Bruder und zwei Schwestern. Mein Bruder heißt Omar und ist 20 Jahre alt. Meine Schwestern heißen Fatima und Aisha. Meine Mutter ist Ärztin. Mein Vater arbeitet als Lehrer. Wir haben auch eine Katze. Sie heißt Mimi. Am Wochenende besuchen wir unsere Großeltern. Meine Großmutter kocht sehr gut. Ich liebe meine Familie.', 'Hello! My name is Ahmed and I come from Syria. My family lives in Cologne. I have one brother and two sisters. My brother is called Omar and is 20 years old. My sisters are called Fatima and Aisha. My mother is a doctor. My father works as a teacher. We also have a cat. She is called Mimi. On weekends we visit our grandparents. My grandmother cooks very well. I love my family.', 'مرحباً! اسمي أحمد وأنا من سوريا. عائلتي تسكن في كولونيا. لدي أخ واحد وأختان. أخي اسمه عمر وعمره 20 سنة. أختاي اسمهما فاطمة وعائشة. أمي طبيبة. والدي يعمل معلماً. لدينا أيضاً قطة. اسمها ميمي. في عطلة نهاية الأسبوع نزور أجدادنا. جدتي تطبخ جيداً جداً. أحب عائلتي.', NULL, 67, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, french_translation, duration_seconds, speaker_count, scenario) values
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

[Ben]: والدي معلم ووالدتي طبيبة.', '[Anna]: 

[Ben]: 

[Anna]: 

[Ben]: 

[Anna]: 

[Ben]: ', 72, 2, 'Familie und Alltag');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-00006598ba11', '🔊 Sprechen: Verwandte und Beziehungen', 'Roleplay: You are in a Hamburg office. Introduce yourself and talk about Relatives. Your partner (AI) will respond naturally.', 'Relatives', ARRAY['Use complete sentences — not single words','Pause between phrases, not between words','Don''t translate from Arabic word-for-word']::text[], ARRAY['die Familie','der Vater','die Mutter','der Bruder','die Schwester','die Geschwister','der Sohn','die Tochter']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-00006598ba11', '✏️ Schreiben: Verwandte und Beziehungen', 'Write an email to a German friend about "Relatives". Tell them what you learned, what you found interesting, and ask two questions about their experience with this topic. Use at least 8 vocabulary words from this lesson. Sign off naturally ("Viele Grüße", "Liebe Grüße").', ARRAY['Start with "Hallo" or "Liebe/r"','Keep sentences short (Subject-Verb-Object)','End with a friendly farewell']::text[], ARRAY['die Familie','der Vater','die Mutter','der Bruder','die Schwester','die Geschwister','der Sohn','die Tochter']::text[], ARRAY['Sentence structure','Vocabulary usage']::text[], 50, 100, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00006598ba11', 'Verwandte und Beziehungen — Roleplay', 'Relatives', 'Student', 'Teacher', 'Practice conversation about Relatives', 'Hallo! Lass uns über dieses Thema sprechen.', 'beginner', 1, ARRAY['die Familie','der Vater','die Mutter','der Bruder','die Schwester','die Geschwister','der Sohn','die Tochter']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00006598ba11', 'Verwandte und Beziehungen — Advanced Roleplay', 'Relatives', 'Customer', 'Assistant', 'Extended conversation about Relatives', 'Guten Tag! Wie kann ich Ihnen helfen?', 'beginner', 2, ARRAY['die Familie','der Vater','die Mutter','der Bruder','die Schwester','die Geschwister','der Sohn','die Tochter']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-00006598ba11', 'Verwandte und Beziehungen — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Verwandte und Beziehungen".', 'Creative practice for Relatives', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-00006598ba11', '📚 Hausaufgabe: Verwandte und Beziehungen', 'Complete these tasks to reinforce "Verwandte und Beziehungen".', 'mixed', '[{"description":"Create 10 flashcards from this lesson''s vocabulary — write German on one side, Arabic on the other. Test yourself 3 times."},{"description":"Write 6 sentences about Relatives: 2 statements, 2 questions, 2 negations — all using possessive_articles."},{"description":"Record yourself reading the dialogue aloud. Listen to the recording and note 3 things to improve."},{"description":"Find 3 real German websites, videos, or articles about Relatives. Note 5 new words you discovered."}]', 50, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-00006598ba11', '🎯 Great work! In this lesson you learned 142 new words about Relatives. You practiced possessive_articles — an important grammar topic for A1 level. You read a text, listened to a dialogue, and practiced speaking and writing. Keep going!', '["142 vocabulary items about Relatives","possessive_articles — grammar explanation and practice","Reading comprehension: text about Relatives","Listening comprehension: dialogue about Relatives","Speaking practice: roleplay/discussion about Relatives","Writing task: text about Relatives"]', '[{"title":"Verwandte und Beziehungen Review","summary":"possessive_articles — the main grammar focus. Focus on understanding when to use this structure and forming basic sentences."}]', ARRAY['die Familie (family)','der Vater (father)','die Mutter (mother)','der Bruder (brother)','die Schwester (sister)']::text[], ARRAY['Don''t translate from Arabic word-for-word — German has different sentence structure','Learn every noun with its article: NEVER learn "Tisch" alone, always "der Tisch"','Verb always in position 2 in main clauses']::text[], ARRAY['Practice 15-20 minutes daily — consistency beats intensity','Speak out loud: German pronunciation needs muscle memory','Use the new vocabulary within 24 hours or you''ll forget it','Watch German YouTube videos about Relatives for authentic input']::text[]);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006598ba11', 'Pronunciation: German sounds for "family"', 'In German, vowels are pure — unlike English diphthongs. The "ch" sound after a, o, u is guttural (like Arabic خ). After e, i, ä, ö, ü it''s soft (like English "huge" without the "u").

Common mistake for Arabic speakers: Arabic speakers tend to over-emphasise consonants. German flows — connect words smoothly (e.g., "Ich habe" becomes /ɪçabə/ not /ɪç ˈhaːbə/).', '[]', '[{"german":"die Familie","arabic":"","english":"","phonetic":""},{"german":"der Vater","arabic":"","english":"","phonetic":""},{"german":"die Mutter","arabic":"","english":"","phonetic":""},{"german":"der Bruder","arabic":"","english":"","phonetic":""}]', '[]', 10);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006598ba11', 'translation', 'Translate to German: "I use the word "family" in a sentence about Relatives."', '[]', 'Meine Familie ist groß.', 'Use die  "die Familie" with the correct possessive_articles form.', 1, 40);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006598ba11', 'translation', 'Translate to German: "I use the word "father" in a sentence about Relatives."', '[]', 'Mein Vater ist Ingenieur.', 'Use der  "der Vater" with the correct possessive_articles form.', 1, 41);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006598ba11', 'translation', 'Translate to German: "I use the word "mother" in a sentence about Relatives."', '[]', 'Meine Mutter kocht gut.', 'Use die  "die Mutter" with the correct possessive_articles form.', 1, 42);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006598ba11', 'Culture: 🇩🇪 Deutsche Kultur: Relatives', 'In Germany, Relatives is approached with typical German directness and efficiency. Germans value clarity over small talk. When discussing Relatives, expect honest feedback and straightforward questions. This is not rudeness — it''s cultural. Arabic speakers often find this too direct at first, but you''ll appreciate it once you get used to it.

في ألمانيا، يتم التعامل مع Relatives بوضوح وكفاءة. الألمان يقدرون الوضوح أكثر من المجاملات. لا تعتبر هذه وقاحة - إنها ثقافة مختلفة.', '["Tip: Always use \"Sie\" (formal) with strangers and colleagues","Tip: Germans appreciate punctuality — arrive 5 minutes early","Tip: Direct feedback is a sign of respect, not criticism","Tip: Prepare factual arguments, not emotional appeals"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006598ba11', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Confusing \"mein\" and \"meine\"","correction":"mein for masculine/neuter, meine for feminine/plural","explanation":"Arabic has no grammatical gender in possessive particles."},{"mistake":"Using the wrong article (der/die/das) for nouns","correction":"Learn each noun with its article as one piece","explanation":"Arabic has no articles for nouns without gender connection"}]', 30);

  -- Lesson 3: Mein Tagesablauf (L-A1-02-03)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-00006598ba12', '00000000-0000-4000-a000-000039b4d35f', 'Mein Tagesablauf', 'Describe your daily routine using regular verbs.', 'Daily Routine', 'vocabulary', '["Understand and use 142 key vocabulary words about Daily Routine","Apply present_tense correctly in sentences","Read and comprehend a text about Daily Routine","Listen and understand a natural dialogue about Daily Routine","Speak about Daily Routine with confidence","Write a short text about Daily Routine using new vocabulary"]', 30, 3, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, french_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-00006598ba12', 'aufstehen', 'يستيقظ', 'to get up', 'se lever', NULL, NULL, 'verb', 'Ich stehe um 6 Uhr auf.', 'I get up at 6 o''clock.', 'A1', 1),
  ('00000000-0000-4000-a000-00006598ba12', 'frühstücken', 'يتناول الفطور', 'to have breakfast', 'prendre le petit déjeuner', NULL, NULL, 'verb', 'Ich frühstücke um 7 Uhr.', 'I have breakfast at 7 o''clock.', 'A1', 2),
  ('00000000-0000-4000-a000-00006598ba12', 'arbeiten', 'يعمل', 'to work', 'travailler', NULL, NULL, 'verb', 'Ich arbeite in einem Büro.', 'I work in an office.', 'A1', 3),
  ('00000000-0000-4000-a000-00006598ba12', 'der Morgen', 'الصباح', 'morning', 'le matin', 'der', NULL, 'noun', 'Am Morgen dusche ich.', 'In the morning I shower.', 'A1', 4),
  ('00000000-0000-4000-a000-00006598ba12', 'der Abend', 'المساء', 'evening', 'le soir', 'der', NULL, 'noun', 'Am Abend lese ich ein Buch.', 'In the evening I read a book.', 'A1', 5),
  ('00000000-0000-4000-a000-00006598ba12', 'schlafen', 'ينام', 'to sleep', 'dormir', NULL, NULL, 'verb', 'Ich schlafe um 22 Uhr.', 'I sleep at 10 PM.', 'A1', 6),
  ('00000000-0000-4000-a000-00006598ba12', 'die Arbeit', 'العمل', 'work', 'le travail', 'die', NULL, 'noun', 'Die Arbeit beginnt um 8 Uhr.', 'Work starts at 8 o''clock.', 'A1', 7),
  ('00000000-0000-4000-a000-00006598ba12', 'gehen', 'يذهب', 'to go', 'aller', NULL, NULL, 'verb', 'Ich gehe zur Arbeit.', 'I go to work.', 'A1', 8),
  ('00000000-0000-4000-a000-00006598ba12', 'die Uhr', 'الساعة', 'clock', 'l''horloge', 'die', 'die Uhren', 'noun', 'Die Uhr zeigt 7 Uhr.', 'The clock shows 7 o''clock.', 'A1', 9),
  ('00000000-0000-4000-a000-00006598ba12', 'die Zeit', 'الوقت', 'time', 'le temps', 'die', NULL, 'noun', 'Ich habe keine Zeit.', 'I have no time.', 'A1', 10),
  ('00000000-0000-4000-a000-00006598ba12', 'Hallo', 'مرحباً', 'hello', 'bonjour', NULL, NULL, 'interjection', 'Hallo, wie geht es dir?', 'Hello, how are you?', 'A1', 11),
  ('00000000-0000-4000-a000-00006598ba12', 'Guten Morgen', 'صباح الخير', 'good morning', 'bonjour (le matin)', NULL, NULL, 'phrase', 'Guten Morgen, Herr Müller.', 'Good morning, Mr. Müller.', 'A1', 12),
  ('00000000-0000-4000-a000-00006598ba12', 'Guten Tag', 'نهارك سعيد', 'good day', 'bonjour (l''après-midi)', NULL, NULL, 'phrase', 'Guten Tag, Frau Schmidt.', 'Good day, Mrs. Schmidt.', 'A1', 13),
  ('00000000-0000-4000-a000-00006598ba12', 'Tschüss', 'مع السلامة', 'bye', 'au revoir / salut', NULL, NULL, 'interjection', 'Tschüss, bis morgen!', 'Bye, see you tomorrow!', 'A1', 14),
  ('00000000-0000-4000-a000-00006598ba12', 'der Name', 'الاسم', 'name', 'le nom', 'der', 'die Namen', 'noun', 'Mein Name ist Anna.', 'My name is Anna.', 'A1', 15),
  ('00000000-0000-4000-a000-00006598ba12', 'wie', 'كيف', 'how', 'comment', NULL, NULL, 'adverb', 'Wie heißt du?', 'What is your name?', 'A1', 16),
  ('00000000-0000-4000-a000-00006598ba12', 'freuen', 'يسر', 'to be pleased', 'se réjouir', NULL, NULL, 'verb', 'Ich freue mich, dich kennenzulernen.', 'I am pleased to meet you.', 'A1', 17),
  ('00000000-0000-4000-a000-00006598ba12', 'Willkommen', 'أهلاً وسهلاً', 'welcome', 'bienvenue', NULL, NULL, 'interjection', 'Willkommen in Deutschland!', 'Welcome to Germany!', 'A1', 18),
  ('00000000-0000-4000-a000-00006598ba12', 'die Familie', 'العائلة', 'family', 'la famille', 'die', 'die Familien', 'noun', 'Meine Familie ist groß.', 'My family is big.', 'A1', 19),
  ('00000000-0000-4000-a000-00006598ba12', 'der Vater', 'الأب', 'father', 'le père', 'der', 'die Väter', 'noun', 'Mein Vater ist Ingenieur.', 'My father is an engineer.', 'A1', 20),
  ('00000000-0000-4000-a000-00006598ba12', 'die Mutter', 'الأم', 'mother', 'la mère', 'die', 'die Mütter', 'noun', 'Meine Mutter kocht gut.', 'My mother cooks well.', 'A1', 21),
  ('00000000-0000-4000-a000-00006598ba12', 'der Bruder', 'الأخ', 'brother', 'le frère', 'der', 'die Brüder', 'noun', 'Mein Bruder ist 15 Jahre alt.', 'My brother is 15 years old.', 'A1', 22),
  ('00000000-0000-4000-a000-00006598ba12', 'die Schwester', 'الأخت', 'sister', 'la sœur', 'die', 'die Schwestern', 'noun', 'Meine Schwester studiert Medizin.', 'My sister studies medicine.', 'A1', 23),
  ('00000000-0000-4000-a000-00006598ba12', 'die Geschwister', 'الإخوة', 'siblings', 'les frères et sœurs', 'die', NULL, 'noun', 'Hast du Geschwister?', 'Do you have siblings?', 'A1', 24),
  ('00000000-0000-4000-a000-00006598ba12', 'der Sohn', 'الابن', 'son', 'le fils', 'der', 'die Söhne', 'noun', 'Wir haben einen Sohn.', 'We have a son.', 'A1', 25),
  ('00000000-0000-4000-a000-00006598ba12', 'die Tochter', 'الابنة', 'daughter', 'la fille', 'die', 'die Töchter', 'noun', 'Meine Tochter geht zur Schule.', 'My daughter goes to school.', 'A1', 26),
  ('00000000-0000-4000-a000-00006598ba12', 'die Großeltern', 'الأجداد', 'grandparents', 'les grands-parents', 'die', NULL, 'noun', 'Meine Großeltern wohnen auf dem Land.', 'My grandparents live in the countryside.', 'A1', 27),
  ('00000000-0000-4000-a000-00006598ba12', 'verheiratet', 'متزوج', 'married', 'marié(e)', NULL, NULL, 'adjective', 'Meine Eltern sind verheiratet.', 'My parents are married.', 'A1', 28),
  ('00000000-0000-4000-a000-00006598ba12', 'das Brot', 'الخبز', 'bread', 'le pain', 'das', 'die Brote', 'noun', 'Ich kaufe ein Brot.', 'I buy a loaf of bread.', 'A1', 29),
  ('00000000-0000-4000-a000-00006598ba12', 'die Milch', 'الحليب', 'milk', 'le lait', 'die', NULL, 'noun', 'Die Milch ist frisch.', 'The milk is fresh.', 'A1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006598ba12', 'Präsens der regelmäßigen Verben (Present Tense) / المضارع للأفعال المنتظمة', 'In German, regular verbs follow a consistent pattern. The infinitive ends in -en. Remove the -en and add the personal endings: ich -e, du -st, er/sie/es -t, wir -en, ihr -t, sie/Sie -en. For most Arabic speakers, this is easier than Arabic verb conjugation because German has fewer forms.', '[{"rule":"ich: stem + e","note":"Ich lerne, ich wohne, ich arbeite"},{"rule":"du: stem + st","note":"Du lernst, du wohnst, du arbeitest"},{"rule":"er/sie/es: stem + t","note":"Er lernt, sie wohnt, es arbeitet"},{"rule":"wir: stem + en","note":"Wir lernen, wir wohnen, wir arbeiten"},{"rule":"ihr: stem + t","note":"Ihr lernt, ihr wohnt, ihr arbeitet"},{"rule":"sie/Sie: stem + en","note":"Sie lernen, Sie wohnen"}]', '[{"german":"Ich lerne Deutsch.","arabic":"أنا أتعلم الألمانية.","english":"I am learning German."},{"german":"Du wohnst in Berlin.","arabic":"أنت تسكن في برلين.","english":"You live in Berlin."},{"german":"Er arbeitet bei Siemens.","arabic":"هو يعمل في سيمنز.","english":"He works at Siemens."}]', '[{"mistake":"Ich lernen Deutsch","correction":"Ich lerne Deutsch","explanation":"After \"ich\" we use the stem + e, not the infinitive."},{"mistake":"Er lerne Deutsch","correction":"Er lernt Deutsch","explanation":"After \"er/sie/es\" we add -t, not -e."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006598ba12', 'multiple_choice', 'Which German word matches "to get up"?', '["der Abend","arbeiten","frühstücken","der Morgen"]', 'aufstehen', '"to get up" = "aufstehen" in German.  ', 1, 1),
  ('00000000-0000-4000-a000-00006598ba12', 'multiple_choice', 'Which German word matches "to have breakfast"?', '["der Abend","der Morgen","arbeiten","aufstehen"]', 'frühstücken', '"to have breakfast" = "frühstücken" in German.  ', 1, 2),
  ('00000000-0000-4000-a000-00006598ba12', 'multiple_choice', 'Which German word matches "to work"?', '["der Morgen","der Abend","frühstücken","aufstehen"]', 'arbeiten', '"to work" = "arbeiten" in German.  ', 1, 3),
  ('00000000-0000-4000-a000-00006598ba12', 'multiple_choice', 'Which German word matches "morning"?', '["der Morgen","aufstehen","frühstücken","arbeiten"]', 'der Morgen', '"morning" = "der Morgen" in German. Article: der ', 1, 4),
  ('00000000-0000-4000-a000-00006598ba12', 'multiple_choice', 'Which German word matches "evening"?', '["der Abend","arbeiten","aufstehen","frühstücken"]', 'der Abend', '"evening" = "der Abend" in German. Article: der ', 1, 5),
  ('00000000-0000-4000-a000-00006598ba12', 'fill_gap', 'Complete the sentence: Ich ___ gern über Daily Routine. (sprechen)', '["spreche","sprichst","spricht","sprechen"]', 'spreche', 'ich spreche gern = I like to speak. Stem: sprech- + e.', 2, 6),
  ('00000000-0000-4000-a000-00006598ba12', 'translation', 'Translate to German: "I am learning about Daily Routine."', '["Ich lerne über Daily Routine.","Ich lerne Daily Routine.","Lerne ich Daily Routine."]', 'Ich lerne über Daily Routine.', '"Ich lerne über..." = "I am learning about..."', 2, 7),
  ('00000000-0000-4000-a000-00006598ba12', 'matching', 'Match: Which word pairs are correct?', '["aufstehen - to get up, frühstücken - to have breakfast"]', 'Matched correctly', 'Each German word has a unique English equivalent.', 2, 8);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-00006598ba12', 'multiple_choice', 'What does "aufstehen" mean in English?', '["to get up","to run","beautiful","yesterday"]', 'to get up', 1, 1),
  ('00000000-0000-4000-a000-00006598ba12', 'multiple_choice', 'What is the correct article for "frühstücken"?', '["der","die","das","den"]', 'der', 1, 2),
  ('00000000-0000-4000-a000-00006598ba12', 'true_false', 'The word "arbeiten" is related to Daily Routine.', '["True","False"]', 'True', 1, 3),
  ('00000000-0000-4000-a000-00006598ba12', 'multiple_choice', 'Which sentence correctly uses present_tense?', '["Ich lerne Deutsch.","Du wohnst in Berlin.","Er arbeitet bei Siemens."]', 'Ich lerne Deutsch.', 2, 4),
  ('00000000-0000-4000-a000-00006598ba12', 'true_false', 'German word order puts the verb in second position in main clauses.', '["True","False"]', 'True', 1, 5),
  ('00000000-0000-4000-a000-00006598ba12', 'fill_blank', 'Complete: Ich ___ (morning) Deutsch.', '["der Morgen","lernt","lernst","lernen"]', 'der morge', 2, 6),
  ('00000000-0000-4000-a000-00006598ba12', 'multiple_choice', 'What is the German word for "evening"?', '["der Abend","schlafen","die Arbeit","gehen"]', 'der Abend', 1, 7),
  ('00000000-0000-4000-a000-00006598ba12', 'true_false', 'In German, ALL nouns are always capitalised.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-00006598ba12', 'multiple_choice', 'How do you say "please" in a restaurant in Germany?', '["Bitte","Danke","Tschüss","Hallo"]', 'Bitte', 1, 9),
  ('00000000-0000-4000-a000-00006598ba12', 'fill_blank', 'Wo ___ (to live) du?', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 2, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, french_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-00006598ba12', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', NULL, 'Used in Familie und Alltag', 'formal', false, 1),
  ('00000000-0000-4000-a000-00006598ba12', 'Guten Tag!', 'Good day!', 'نهارك سعيد!', NULL, 'Used in Familie und Alltag', 'formal', false, 2),
  ('00000000-0000-4000-a000-00006598ba12', 'Hallo, wie geht es Ihnen?', 'Hello, how are you?', 'مرحباً، كيف حالكم؟', NULL, 'Used in Familie und Alltag', 'formal', false, 3),
  ('00000000-0000-4000-a000-00006598ba12', 'Schön, Sie kennenzulernen!', 'Nice to meet you!', 'سعيد بلقائكم!', NULL, 'Used in Familie und Alltag', 'formal', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-00006598ba12', 'aufstehen', 'to get up — يستيقظ', 'verb', 'vocabulary', 1),
  ('00000000-0000-4000-a000-00006598ba12', 'frühstücken', 'to have breakfast — يتناول الفطور', 'verb', 'vocabulary', 2),
  ('00000000-0000-4000-a000-00006598ba12', 'arbeiten', 'to work — يعمل', 'verb', 'vocabulary', 3),
  ('00000000-0000-4000-a000-00006598ba12', 'der der Morgen', 'morning — الصباح', 'noun', 'vocabulary', 4),
  ('00000000-0000-4000-a000-00006598ba12', 'der der Abend', 'evening — المساء', 'noun', 'vocabulary', 5),
  ('00000000-0000-4000-a000-00006598ba12', 'schlafen', 'to sleep — ينام', 'verb', 'vocabulary', 6),
  ('00000000-0000-4000-a000-00006598ba12', 'die die Arbeit', 'work — العمل', 'noun', 'vocabulary', 7),
  ('00000000-0000-4000-a000-00006598ba12', 'gehen', 'to go — يذهب', 'verb', 'vocabulary', 8),
  ('00000000-0000-4000-a000-00006598ba12', 'die die Uhr (die Uhren)', 'clock — الساعة', 'noun', 'vocabulary', 9),
  ('00000000-0000-4000-a000-00006598ba12', 'die die Zeit', 'time — الوقت', 'noun', 'vocabulary', 10),
  ('00000000-0000-4000-a000-00006598ba12', 'Hallo', 'hello — مرحباً', 'interjection', 'vocabulary', 11),
  ('00000000-0000-4000-a000-00006598ba12', 'Guten Morgen', 'good morning — صباح الخير', 'phrase', 'vocabulary', 12),
  ('00000000-0000-4000-a000-00006598ba12', 'Guten Tag', 'good day — نهارك سعيد', 'phrase', 'vocabulary', 13),
  ('00000000-0000-4000-a000-00006598ba12', 'Tschüss', 'bye — مع السلامة', 'interjection', 'vocabulary', 14),
  ('00000000-0000-4000-a000-00006598ba12', 'der der Name (die Namen)', 'name — الاسم', 'noun', 'vocabulary', 15),
  ('00000000-0000-4000-a000-00006598ba12', 'Ich lerne Deutsch.', 'I am learning German.', 'Präsens der regelmäßigen Verben (Present Tense)', 'grammar', 16),
  ('00000000-0000-4000-a000-00006598ba12', 'Du wohnst in Berlin.', 'You live in Berlin.', 'Präsens der regelmäßigen Verben (Present Tense)', 'grammar', 17),
  ('00000000-0000-4000-a000-00006598ba12', 'Er arbeitet bei Siemens.', 'He works at Siemens.', 'Präsens der regelmäßigen Verben (Present Tense)', 'grammar', 18);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, french_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-00006598ba12', 'Mein Tagesablauf — Leseübung', 'Mein Tagesablauf beginnt um 6 Uhr. Ich stehe auf und dusche. Dann frühstücke ich. Ich esse Brot mit Käse und trinke Kaffee. Um 7 Uhr gehe ich zur Arbeit. Ich arbeite in einem Büro. Um 12 Uhr esse ich zu Mittag. Nach der Arbeit gehe ich nach Hause. Am Abend sehe ich fern oder lese ein Buch. Um 22 Uhr gehe ich ins Bett. Das ist mein Tag.', 'My daily routine starts at 6 o''clock. I get up and shower. Then I have breakfast. I eat bread with cheese and drink coffee. At 7 o''clock I go to work. I work in an office. At 12 o''clock I have lunch. After work I go home. In the evening I watch TV or read a book. At 10 PM I go to bed. That''s my day.', 'روتيني اليومي يبدأ في الساعة 6. أستيقظ وأستحم. ثم أتناول الفطور. آكل خبزاً مع الجبن وأشرب قهوة. في الساعة 7 أذهب إلى العمل. أعمل في مكتب. في الساعة 12 أتناول الغداء. بعد العمل أعود إلى المنزل. في المساء أشاهد التلفاز أو أقرأ كتاباً. في الساعة 10 أذهب إلى النوم. هذا هو يومي.', NULL, 68, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, french_translation, duration_seconds, speaker_count, scenario) values
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

[Marie]: ألتقي بأصدقائي أو أقرأ كتاباً. في الساعة 10 أذهب إلى النوم.', '[Lukas]: 

[Marie]: 

[Lukas]: 

[Marie]: 

[Lukas]: 

[Marie]: ', 72, 2, 'Familie und Alltag');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-00006598ba12', '🔊 Sprechen: Mein Tagesablauf', 'Roleplay: You are in a Hamburg office. Introduce yourself and talk about Daily Routine. Your partner (AI) will respond naturally.', 'Daily Routine', ARRAY['Use complete sentences — not single words','Pause between phrases, not between words','Don''t translate from Arabic word-for-word']::text[], ARRAY['aufstehen','frühstücken','arbeiten','der Morgen','der Abend','schlafen','die Arbeit','gehen']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-00006598ba12', '✏️ Schreiben: Mein Tagesablauf', 'Write an email to a German friend about "Daily Routine". Tell them what you learned, what you found interesting, and ask two questions about their experience with this topic. Use at least 8 vocabulary words from this lesson. Sign off naturally ("Viele Grüße", "Liebe Grüße").', ARRAY['Start with "Hallo" or "Liebe/r"','Keep sentences short (Subject-Verb-Object)','End with a friendly farewell']::text[], ARRAY['aufstehen','frühstücken','arbeiten','der Morgen','der Abend','schlafen','die Arbeit','gehen']::text[], ARRAY['Sentence structure','Vocabulary usage']::text[], 50, 100, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00006598ba12', 'Mein Tagesablauf — Roleplay', 'Daily Routine', 'Student', 'Teacher', 'Practice conversation about Daily Routine', 'Hallo! Lass uns über dieses Thema sprechen.', 'beginner', 1, ARRAY['aufstehen','frühstücken','arbeiten','der Morgen','der Abend','schlafen','die Arbeit','gehen']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00006598ba12', 'Mein Tagesablauf — Advanced Roleplay', 'Daily Routine', 'Customer', 'Assistant', 'Extended conversation about Daily Routine', 'Guten Tag! Wie kann ich Ihnen helfen?', 'beginner', 2, ARRAY['aufstehen','frühstücken','arbeiten','der Morgen','der Abend','schlafen','die Arbeit','gehen']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-00006598ba12', 'Mein Tagesablauf — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Mein Tagesablauf".', 'Creative practice for Daily Routine', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-00006598ba12', '📚 Hausaufgabe: Mein Tagesablauf', 'Complete these tasks to reinforce "Mein Tagesablauf".', 'mixed', '[{"description":"Create 10 flashcards from this lesson''s vocabulary — write German on one side, Arabic on the other. Test yourself 3 times."},{"description":"Write 6 sentences about Daily Routine: 2 statements, 2 questions, 2 negations — all using present_tense."},{"description":"Record yourself reading the dialogue aloud. Listen to the recording and note 3 things to improve."},{"description":"Find 3 real German websites, videos, or articles about Daily Routine. Note 5 new words you discovered."}]', 50, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-00006598ba12', '🎯 Great work! In this lesson you learned 142 new words about Daily Routine. You practiced present_tense — an important grammar topic for A1 level. You read a text, listened to a dialogue, and practiced speaking and writing. Keep going!', '["142 vocabulary items about Daily Routine","present_tense — grammar explanation and practice","Reading comprehension: text about Daily Routine","Listening comprehension: dialogue about Daily Routine","Speaking practice: roleplay/discussion about Daily Routine","Writing task: text about Daily Routine"]', '[{"title":"Mein Tagesablauf Review","summary":"present_tense — the main grammar focus. Focus on understanding when to use this structure and forming basic sentences."}]', ARRAY['aufstehen (to get up)','frühstücken (to have breakfast)','arbeiten (to work)','der Morgen (morning)','der Abend (evening)']::text[], ARRAY['Don''t translate from Arabic word-for-word — German has different sentence structure','Learn every noun with its article: NEVER learn "Tisch" alone, always "der Tisch"','Verb always in position 2 in main clauses']::text[], ARRAY['Practice 15-20 minutes daily — consistency beats intensity','Speak out loud: German pronunciation needs muscle memory','Use the new vocabulary within 24 hours or you''ll forget it','Watch German YouTube videos about Daily Routine for authentic input']::text[]);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006598ba12', 'Pronunciation: German sounds for "daily_routine"', 'In German, vowels are pure — unlike English diphthongs. The "ch" sound after a, o, u is guttural (like Arabic خ). After e, i, ä, ö, ü it''s soft (like English "huge" without the "u").

Common mistake for Arabic speakers: Arabic speakers tend to over-emphasise consonants. German flows — connect words smoothly (e.g., "Ich habe" becomes /ɪçabə/ not /ɪç ˈhaːbə/).', '[]', '[{"german":"aufstehen","arabic":"","english":"","phonetic":""},{"german":"frühstücken","arabic":"","english":"","phonetic":""},{"german":"arbeiten","arabic":"","english":"","phonetic":""},{"german":"der Morgen","arabic":"","english":"","phonetic":""}]', '[]', 10);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006598ba12', 'translation', 'Translate to German: "I use the word "to get up" in a sentence about Daily Routine."', '[]', 'Ich stehe um 6 Uhr auf.', 'Use  "aufstehen" with the correct present_tense form.', 1, 40);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006598ba12', 'translation', 'Translate to German: "I use the word "to have breakfast" in a sentence about Daily Routine."', '[]', 'Ich frühstücke um 7 Uhr.', 'Use  "frühstücken" with the correct present_tense form.', 1, 41);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006598ba12', 'translation', 'Translate to German: "I use the word "to work" in a sentence about Daily Routine."', '[]', 'Ich arbeite in einem Büro.', 'Use  "arbeiten" with the correct present_tense form.', 1, 42);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006598ba12', 'Culture: 🇩🇪 Deutsche Kultur: Daily Routine', 'In Germany, Daily Routine is approached with typical German directness and efficiency. Germans value clarity over small talk. When discussing Daily Routine, expect honest feedback and straightforward questions. This is not rudeness — it''s cultural. Arabic speakers often find this too direct at first, but you''ll appreciate it once you get used to it.

في ألمانيا، يتم التعامل مع Daily Routine بوضوح وكفاءة. الألمان يقدرون الوضوح أكثر من المجاملات. لا تعتبر هذه وقاحة - إنها ثقافة مختلفة.', '["Tip: Always use \"Sie\" (formal) with strangers and colleagues","Tip: Germans appreciate punctuality — arrive 5 minutes early","Tip: Direct feedback is a sign of respect, not criticism","Tip: Prepare factual arguments, not emotional appeals"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006598ba12', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Using \"machen\" for every action","correction":"Use specific verbs: frühstücken (eat breakfast), duschen (shower), anziehen (get dressed)","explanation":"Arabic uses \"aamal\" (do/make) + noun. German has specific verbs for daily actions."},{"mistake":"Using the wrong article (der/die/das) for nouns","correction":"Learn each noun with its article as one piece","explanation":"Arabic has no articles for nouns without gender connection"}]', 30);

  -- Lesson 4: Die Uhrzeit (L-A1-02-04)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-00006598ba13', '00000000-0000-4000-a000-000039b4d35f', 'Die Uhrzeit', 'Learn how to tell time in formal and informal ways.', 'Telling Time', 'vocabulary', '["Understand and use 142 key vocabulary words about Telling Time","Apply present_tense correctly in sentences","Read and comprehend a text about Telling Time","Listen and understand a natural dialogue about Telling Time","Speak about Telling Time with confidence","Write a short text about Telling Time using new vocabulary"]', 25, 4, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, french_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-00006598ba13', 'aufstehen', 'يستيقظ', 'to get up', 'se lever', NULL, NULL, 'verb', 'Ich stehe um 6 Uhr auf.', 'I get up at 6 o''clock.', 'A1', 1),
  ('00000000-0000-4000-a000-00006598ba13', 'frühstücken', 'يتناول الفطور', 'to have breakfast', 'prendre le petit déjeuner', NULL, NULL, 'verb', 'Ich frühstücke um 7 Uhr.', 'I have breakfast at 7 o''clock.', 'A1', 2),
  ('00000000-0000-4000-a000-00006598ba13', 'arbeiten', 'يعمل', 'to work', 'travailler', NULL, NULL, 'verb', 'Ich arbeite in einem Büro.', 'I work in an office.', 'A1', 3),
  ('00000000-0000-4000-a000-00006598ba13', 'der Morgen', 'الصباح', 'morning', 'le matin', 'der', NULL, 'noun', 'Am Morgen dusche ich.', 'In the morning I shower.', 'A1', 4),
  ('00000000-0000-4000-a000-00006598ba13', 'der Abend', 'المساء', 'evening', 'le soir', 'der', NULL, 'noun', 'Am Abend lese ich ein Buch.', 'In the evening I read a book.', 'A1', 5),
  ('00000000-0000-4000-a000-00006598ba13', 'schlafen', 'ينام', 'to sleep', 'dormir', NULL, NULL, 'verb', 'Ich schlafe um 22 Uhr.', 'I sleep at 10 PM.', 'A1', 6),
  ('00000000-0000-4000-a000-00006598ba13', 'die Arbeit', 'العمل', 'work', 'le travail', 'die', NULL, 'noun', 'Die Arbeit beginnt um 8 Uhr.', 'Work starts at 8 o''clock.', 'A1', 7),
  ('00000000-0000-4000-a000-00006598ba13', 'gehen', 'يذهب', 'to go', 'aller', NULL, NULL, 'verb', 'Ich gehe zur Arbeit.', 'I go to work.', 'A1', 8),
  ('00000000-0000-4000-a000-00006598ba13', 'die Uhr', 'الساعة', 'clock', 'l''horloge', 'die', 'die Uhren', 'noun', 'Die Uhr zeigt 7 Uhr.', 'The clock shows 7 o''clock.', 'A1', 9),
  ('00000000-0000-4000-a000-00006598ba13', 'die Zeit', 'الوقت', 'time', 'le temps', 'die', NULL, 'noun', 'Ich habe keine Zeit.', 'I have no time.', 'A1', 10),
  ('00000000-0000-4000-a000-00006598ba13', 'Hallo', 'مرحباً', 'hello', 'bonjour', NULL, NULL, 'interjection', 'Hallo, wie geht es dir?', 'Hello, how are you?', 'A1', 11),
  ('00000000-0000-4000-a000-00006598ba13', 'Guten Morgen', 'صباح الخير', 'good morning', 'bonjour (le matin)', NULL, NULL, 'phrase', 'Guten Morgen, Herr Müller.', 'Good morning, Mr. Müller.', 'A1', 12),
  ('00000000-0000-4000-a000-00006598ba13', 'Guten Tag', 'نهارك سعيد', 'good day', 'bonjour (l''après-midi)', NULL, NULL, 'phrase', 'Guten Tag, Frau Schmidt.', 'Good day, Mrs. Schmidt.', 'A1', 13),
  ('00000000-0000-4000-a000-00006598ba13', 'Tschüss', 'مع السلامة', 'bye', 'au revoir / salut', NULL, NULL, 'interjection', 'Tschüss, bis morgen!', 'Bye, see you tomorrow!', 'A1', 14),
  ('00000000-0000-4000-a000-00006598ba13', 'der Name', 'الاسم', 'name', 'le nom', 'der', 'die Namen', 'noun', 'Mein Name ist Anna.', 'My name is Anna.', 'A1', 15),
  ('00000000-0000-4000-a000-00006598ba13', 'wie', 'كيف', 'how', 'comment', NULL, NULL, 'adverb', 'Wie heißt du?', 'What is your name?', 'A1', 16),
  ('00000000-0000-4000-a000-00006598ba13', 'freuen', 'يسر', 'to be pleased', 'se réjouir', NULL, NULL, 'verb', 'Ich freue mich, dich kennenzulernen.', 'I am pleased to meet you.', 'A1', 17),
  ('00000000-0000-4000-a000-00006598ba13', 'Willkommen', 'أهلاً وسهلاً', 'welcome', 'bienvenue', NULL, NULL, 'interjection', 'Willkommen in Deutschland!', 'Welcome to Germany!', 'A1', 18),
  ('00000000-0000-4000-a000-00006598ba13', 'die Familie', 'العائلة', 'family', 'la famille', 'die', 'die Familien', 'noun', 'Meine Familie ist groß.', 'My family is big.', 'A1', 19),
  ('00000000-0000-4000-a000-00006598ba13', 'der Vater', 'الأب', 'father', 'le père', 'der', 'die Väter', 'noun', 'Mein Vater ist Ingenieur.', 'My father is an engineer.', 'A1', 20),
  ('00000000-0000-4000-a000-00006598ba13', 'die Mutter', 'الأم', 'mother', 'la mère', 'die', 'die Mütter', 'noun', 'Meine Mutter kocht gut.', 'My mother cooks well.', 'A1', 21),
  ('00000000-0000-4000-a000-00006598ba13', 'der Bruder', 'الأخ', 'brother', 'le frère', 'der', 'die Brüder', 'noun', 'Mein Bruder ist 15 Jahre alt.', 'My brother is 15 years old.', 'A1', 22),
  ('00000000-0000-4000-a000-00006598ba13', 'die Schwester', 'الأخت', 'sister', 'la sœur', 'die', 'die Schwestern', 'noun', 'Meine Schwester studiert Medizin.', 'My sister studies medicine.', 'A1', 23),
  ('00000000-0000-4000-a000-00006598ba13', 'die Geschwister', 'الإخوة', 'siblings', 'les frères et sœurs', 'die', NULL, 'noun', 'Hast du Geschwister?', 'Do you have siblings?', 'A1', 24),
  ('00000000-0000-4000-a000-00006598ba13', 'der Sohn', 'الابن', 'son', 'le fils', 'der', 'die Söhne', 'noun', 'Wir haben einen Sohn.', 'We have a son.', 'A1', 25),
  ('00000000-0000-4000-a000-00006598ba13', 'die Tochter', 'الابنة', 'daughter', 'la fille', 'die', 'die Töchter', 'noun', 'Meine Tochter geht zur Schule.', 'My daughter goes to school.', 'A1', 26),
  ('00000000-0000-4000-a000-00006598ba13', 'die Großeltern', 'الأجداد', 'grandparents', 'les grands-parents', 'die', NULL, 'noun', 'Meine Großeltern wohnen auf dem Land.', 'My grandparents live in the countryside.', 'A1', 27),
  ('00000000-0000-4000-a000-00006598ba13', 'verheiratet', 'متزوج', 'married', 'marié(e)', NULL, NULL, 'adjective', 'Meine Eltern sind verheiratet.', 'My parents are married.', 'A1', 28),
  ('00000000-0000-4000-a000-00006598ba13', 'das Brot', 'الخبز', 'bread', 'le pain', 'das', 'die Brote', 'noun', 'Ich kaufe ein Brot.', 'I buy a loaf of bread.', 'A1', 29),
  ('00000000-0000-4000-a000-00006598ba13', 'die Milch', 'الحليب', 'milk', 'le lait', 'die', NULL, 'noun', 'Die Milch ist frisch.', 'The milk is fresh.', 'A1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006598ba13', 'Präsens der regelmäßigen Verben (Present Tense) / المضارع للأفعال المنتظمة', 'In German, regular verbs follow a consistent pattern. The infinitive ends in -en. Remove the -en and add the personal endings: ich -e, du -st, er/sie/es -t, wir -en, ihr -t, sie/Sie -en. For most Arabic speakers, this is easier than Arabic verb conjugation because German has fewer forms.', '[{"rule":"ich: stem + e","note":"Ich lerne, ich wohne, ich arbeite"},{"rule":"du: stem + st","note":"Du lernst, du wohnst, du arbeitest"},{"rule":"er/sie/es: stem + t","note":"Er lernt, sie wohnt, es arbeitet"},{"rule":"wir: stem + en","note":"Wir lernen, wir wohnen, wir arbeiten"},{"rule":"ihr: stem + t","note":"Ihr lernt, ihr wohnt, ihr arbeitet"},{"rule":"sie/Sie: stem + en","note":"Sie lernen, Sie wohnen"}]', '[{"german":"Ich lerne Deutsch.","arabic":"أنا أتعلم الألمانية.","english":"I am learning German."},{"german":"Du wohnst in Berlin.","arabic":"أنت تسكن في برلين.","english":"You live in Berlin."},{"german":"Er arbeitet bei Siemens.","arabic":"هو يعمل في سيمنز.","english":"He works at Siemens."}]', '[{"mistake":"Ich lernen Deutsch","correction":"Ich lerne Deutsch","explanation":"After \"ich\" we use the stem + e, not the infinitive."},{"mistake":"Er lerne Deutsch","correction":"Er lernt Deutsch","explanation":"After \"er/sie/es\" we add -t, not -e."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006598ba13', 'multiple_choice', 'Which German word matches "to get up"?', '["der Morgen","aufstehen","der Abend","frühstücken"]', 'aufstehen', '"to get up" = "aufstehen" in German.  ', 1, 1),
  ('00000000-0000-4000-a000-00006598ba13', 'multiple_choice', 'Which German word matches "to have breakfast"?', '["frühstücken","der Morgen","aufstehen","der Abend"]', 'frühstücken', '"to have breakfast" = "frühstücken" in German.  ', 1, 2),
  ('00000000-0000-4000-a000-00006598ba13', 'multiple_choice', 'Which German word matches "to work"?', '["der Morgen","arbeiten","frühstücken","der Abend"]', 'arbeiten', '"to work" = "arbeiten" in German.  ', 1, 3),
  ('00000000-0000-4000-a000-00006598ba13', 'multiple_choice', 'Which German word matches "morning"?', '["arbeiten","frühstücken","der Abend","aufstehen"]', 'der Morgen', '"morning" = "der Morgen" in German. Article: der ', 1, 4),
  ('00000000-0000-4000-a000-00006598ba13', 'multiple_choice', 'Which German word matches "evening"?', '["der Abend","frühstücken","der Morgen","aufstehen"]', 'der Abend', '"evening" = "der Abend" in German. Article: der ', 1, 5),
  ('00000000-0000-4000-a000-00006598ba13', 'fill_gap', 'Complete the sentence: Ich ___ gern über Telling Time. (sprechen)', '["spreche","sprichst","spricht","sprechen"]', 'spreche', 'ich spreche gern = I like to speak. Stem: sprech- + e.', 2, 6),
  ('00000000-0000-4000-a000-00006598ba13', 'translation', 'Translate to German: "I am learning about Telling Time."', '["Ich lerne über Telling Time.","Ich lerne Telling Time.","Lerne ich Telling Time."]', 'Ich lerne über Telling Time.', '"Ich lerne über..." = "I am learning about..."', 2, 7),
  ('00000000-0000-4000-a000-00006598ba13', 'matching', 'Match: Which word pairs are correct?', '["aufstehen - to get up, frühstücken - to have breakfast"]', 'Matched correctly', 'Each German word has a unique English equivalent.', 2, 8);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-00006598ba13', 'multiple_choice', 'What does "aufstehen" mean in English?', '["to get up","to run","beautiful","yesterday"]', 'to get up', 1, 1),
  ('00000000-0000-4000-a000-00006598ba13', 'multiple_choice', 'What is the correct article for "frühstücken"?', '["der","die","das","den"]', 'der', 1, 2),
  ('00000000-0000-4000-a000-00006598ba13', 'true_false', 'The word "arbeiten" is related to Telling Time.', '["True","False"]', 'True', 1, 3),
  ('00000000-0000-4000-a000-00006598ba13', 'multiple_choice', 'Which sentence correctly uses present_tense?', '["Ich lerne Deutsch.","Du wohnst in Berlin.","Er arbeitet bei Siemens."]', 'Ich lerne Deutsch.', 2, 4),
  ('00000000-0000-4000-a000-00006598ba13', 'true_false', 'German word order puts the verb in second position in main clauses.', '["True","False"]', 'True', 1, 5),
  ('00000000-0000-4000-a000-00006598ba13', 'fill_blank', 'Complete: Ich ___ (morning) Deutsch.', '["der Morgen","lernt","lernst","lernen"]', 'der morge', 2, 6),
  ('00000000-0000-4000-a000-00006598ba13', 'multiple_choice', 'What is the German word for "evening"?', '["der Abend","schlafen","die Arbeit","gehen"]', 'der Abend', 1, 7),
  ('00000000-0000-4000-a000-00006598ba13', 'true_false', 'In German, ALL nouns are always capitalised.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-00006598ba13', 'multiple_choice', 'How do you say "please" in a restaurant in Germany?', '["Bitte","Danke","Tschüss","Hallo"]', 'Bitte', 1, 9),
  ('00000000-0000-4000-a000-00006598ba13', 'fill_blank', 'Wo ___ (to live) du?', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 2, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, french_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-00006598ba13', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', NULL, 'Used in Familie und Alltag', 'formal', false, 1),
  ('00000000-0000-4000-a000-00006598ba13', 'Guten Tag!', 'Good day!', 'نهارك سعيد!', NULL, 'Used in Familie und Alltag', 'formal', false, 2),
  ('00000000-0000-4000-a000-00006598ba13', 'Hallo, wie geht es Ihnen?', 'Hello, how are you?', 'مرحباً، كيف حالكم؟', NULL, 'Used in Familie und Alltag', 'formal', false, 3),
  ('00000000-0000-4000-a000-00006598ba13', 'Schön, Sie kennenzulernen!', 'Nice to meet you!', 'سعيد بلقائكم!', NULL, 'Used in Familie und Alltag', 'formal', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-00006598ba13', 'aufstehen', 'to get up — يستيقظ', 'verb', 'vocabulary', 1),
  ('00000000-0000-4000-a000-00006598ba13', 'frühstücken', 'to have breakfast — يتناول الفطور', 'verb', 'vocabulary', 2),
  ('00000000-0000-4000-a000-00006598ba13', 'arbeiten', 'to work — يعمل', 'verb', 'vocabulary', 3),
  ('00000000-0000-4000-a000-00006598ba13', 'der der Morgen', 'morning — الصباح', 'noun', 'vocabulary', 4),
  ('00000000-0000-4000-a000-00006598ba13', 'der der Abend', 'evening — المساء', 'noun', 'vocabulary', 5),
  ('00000000-0000-4000-a000-00006598ba13', 'schlafen', 'to sleep — ينام', 'verb', 'vocabulary', 6),
  ('00000000-0000-4000-a000-00006598ba13', 'die die Arbeit', 'work — العمل', 'noun', 'vocabulary', 7),
  ('00000000-0000-4000-a000-00006598ba13', 'gehen', 'to go — يذهب', 'verb', 'vocabulary', 8),
  ('00000000-0000-4000-a000-00006598ba13', 'die die Uhr (die Uhren)', 'clock — الساعة', 'noun', 'vocabulary', 9),
  ('00000000-0000-4000-a000-00006598ba13', 'die die Zeit', 'time — الوقت', 'noun', 'vocabulary', 10),
  ('00000000-0000-4000-a000-00006598ba13', 'Hallo', 'hello — مرحباً', 'interjection', 'vocabulary', 11),
  ('00000000-0000-4000-a000-00006598ba13', 'Guten Morgen', 'good morning — صباح الخير', 'phrase', 'vocabulary', 12),
  ('00000000-0000-4000-a000-00006598ba13', 'Guten Tag', 'good day — نهارك سعيد', 'phrase', 'vocabulary', 13),
  ('00000000-0000-4000-a000-00006598ba13', 'Tschüss', 'bye — مع السلامة', 'interjection', 'vocabulary', 14),
  ('00000000-0000-4000-a000-00006598ba13', 'der der Name (die Namen)', 'name — الاسم', 'noun', 'vocabulary', 15),
  ('00000000-0000-4000-a000-00006598ba13', 'Ich lerne Deutsch.', 'I am learning German.', 'Präsens der regelmäßigen Verben (Present Tense)', 'grammar', 16),
  ('00000000-0000-4000-a000-00006598ba13', 'Du wohnst in Berlin.', 'You live in Berlin.', 'Präsens der regelmäßigen Verben (Present Tense)', 'grammar', 17),
  ('00000000-0000-4000-a000-00006598ba13', 'Er arbeitet bei Siemens.', 'He works at Siemens.', 'Präsens der regelmäßigen Verben (Present Tense)', 'grammar', 18);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, french_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-00006598ba13', 'Die Uhrzeit — Leseübung', 'Mein Tagesablauf beginnt um 6 Uhr. Ich stehe auf und dusche. Dann frühstücke ich. Ich esse Brot mit Käse und trinke Kaffee. Um 7 Uhr gehe ich zur Arbeit. Ich arbeite in einem Büro. Um 12 Uhr esse ich zu Mittag. Nach der Arbeit gehe ich nach Hause. Am Abend sehe ich fern oder lese ein Buch. Um 22 Uhr gehe ich ins Bett. Das ist mein Tag.', 'My daily routine starts at 6 o''clock. I get up and shower. Then I have breakfast. I eat bread with cheese and drink coffee. At 7 o''clock I go to work. I work in an office. At 12 o''clock I have lunch. After work I go home. In the evening I watch TV or read a book. At 10 PM I go to bed. That''s my day.', 'روتيني اليومي يبدأ في الساعة 6. أستيقظ وأستحم. ثم أتناول الفطور. آكل خبزاً مع الجبن وأشرب قهوة. في الساعة 7 أذهب إلى العمل. أعمل في مكتب. في الساعة 12 أتناول الغداء. بعد العمل أعود إلى المنزل. في المساء أشاهد التلفاز أو أقرأ كتاباً. في الساعة 10 أذهب إلى النوم. هذا هو يومي.', NULL, 68, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, french_translation, duration_seconds, speaker_count, scenario) values
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

[Marie]: ألتقي بأصدقائي أو أقرأ كتاباً. في الساعة 10 أذهب إلى النوم.', '[Lukas]: 

[Marie]: 

[Lukas]: 

[Marie]: 

[Lukas]: 

[Marie]: ', 72, 2, 'Familie und Alltag');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-00006598ba13', '🔊 Sprechen: Die Uhrzeit', 'Roleplay: You are in a Hamburg office. Introduce yourself and talk about Telling Time. Your partner (AI) will respond naturally.', 'Telling Time', ARRAY['Use complete sentences — not single words','Pause between phrases, not between words','Don''t translate from Arabic word-for-word']::text[], ARRAY['aufstehen','frühstücken','arbeiten','der Morgen','der Abend','schlafen','die Arbeit','gehen']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-00006598ba13', '✏️ Schreiben: Die Uhrzeit', 'Write an email to a German friend about "Telling Time". Tell them what you learned, what you found interesting, and ask two questions about their experience with this topic. Use at least 8 vocabulary words from this lesson. Sign off naturally ("Viele Grüße", "Liebe Grüße").', ARRAY['Start with "Hallo" or "Liebe/r"','Keep sentences short (Subject-Verb-Object)','End with a friendly farewell']::text[], ARRAY['aufstehen','frühstücken','arbeiten','der Morgen','der Abend','schlafen','die Arbeit','gehen']::text[], ARRAY['Sentence structure','Vocabulary usage']::text[], 50, 100, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00006598ba13', 'Die Uhrzeit — Roleplay', 'Telling Time', 'Student', 'Teacher', 'Practice conversation about Telling Time', 'Hallo! Lass uns über dieses Thema sprechen.', 'beginner', 1, ARRAY['aufstehen','frühstücken','arbeiten','der Morgen','der Abend','schlafen','die Arbeit','gehen']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00006598ba13', 'Die Uhrzeit — Advanced Roleplay', 'Telling Time', 'Customer', 'Assistant', 'Extended conversation about Telling Time', 'Guten Tag! Wie kann ich Ihnen helfen?', 'beginner', 2, ARRAY['aufstehen','frühstücken','arbeiten','der Morgen','der Abend','schlafen','die Arbeit','gehen']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-00006598ba13', 'Die Uhrzeit — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Die Uhrzeit".', 'Creative practice for Telling Time', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-00006598ba13', '📚 Hausaufgabe: Die Uhrzeit', 'Complete these tasks to reinforce "Die Uhrzeit".', 'mixed', '[{"description":"Create 10 flashcards from this lesson''s vocabulary — write German on one side, Arabic on the other. Test yourself 3 times."},{"description":"Write 6 sentences about Telling Time: 2 statements, 2 questions, 2 negations — all using present_tense."},{"description":"Record yourself reading the dialogue aloud. Listen to the recording and note 3 things to improve."},{"description":"Find 3 real German websites, videos, or articles about Telling Time. Note 5 new words you discovered."}]', 50, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-00006598ba13', '🎯 Great work! In this lesson you learned 142 new words about Telling Time. You practiced present_tense — an important grammar topic for A1 level. You read a text, listened to a dialogue, and practiced speaking and writing. Keep going!', '["142 vocabulary items about Telling Time","present_tense — grammar explanation and practice","Reading comprehension: text about Telling Time","Listening comprehension: dialogue about Telling Time","Speaking practice: roleplay/discussion about Telling Time","Writing task: text about Telling Time"]', '[{"title":"Die Uhrzeit Review","summary":"present_tense — the main grammar focus. Focus on understanding when to use this structure and forming basic sentences."}]', ARRAY['aufstehen (to get up)','frühstücken (to have breakfast)','arbeiten (to work)','der Morgen (morning)','der Abend (evening)']::text[], ARRAY['Don''t translate from Arabic word-for-word — German has different sentence structure','Learn every noun with its article: NEVER learn "Tisch" alone, always "der Tisch"','Verb always in position 2 in main clauses']::text[], ARRAY['Practice 15-20 minutes daily — consistency beats intensity','Speak out loud: German pronunciation needs muscle memory','Use the new vocabulary within 24 hours or you''ll forget it','Watch German YouTube videos about Telling Time for authentic input']::text[]);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006598ba13', 'Pronunciation: German sounds for "daily_routine"', 'In German, vowels are pure — unlike English diphthongs. The "ch" sound after a, o, u is guttural (like Arabic خ). After e, i, ä, ö, ü it''s soft (like English "huge" without the "u").

Common mistake for Arabic speakers: Arabic speakers tend to over-emphasise consonants. German flows — connect words smoothly (e.g., "Ich habe" becomes /ɪçabə/ not /ɪç ˈhaːbə/).', '[]', '[{"german":"aufstehen","arabic":"","english":"","phonetic":""},{"german":"frühstücken","arabic":"","english":"","phonetic":""},{"german":"arbeiten","arabic":"","english":"","phonetic":""},{"german":"der Morgen","arabic":"","english":"","phonetic":""}]', '[]', 10);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006598ba13', 'translation', 'Translate to German: "I use the word "to get up" in a sentence about Telling Time."', '[]', 'Ich stehe um 6 Uhr auf.', 'Use  "aufstehen" with the correct present_tense form.', 1, 40);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006598ba13', 'translation', 'Translate to German: "I use the word "to have breakfast" in a sentence about Telling Time."', '[]', 'Ich frühstücke um 7 Uhr.', 'Use  "frühstücken" with the correct present_tense form.', 1, 41);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006598ba13', 'translation', 'Translate to German: "I use the word "to work" in a sentence about Telling Time."', '[]', 'Ich arbeite in einem Büro.', 'Use  "arbeiten" with the correct present_tense form.', 1, 42);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006598ba13', 'Culture: 🇩🇪 Deutsche Kultur: Telling Time', 'In Germany, Telling Time is approached with typical German directness and efficiency. Germans value clarity over small talk. When discussing Telling Time, expect honest feedback and straightforward questions. This is not rudeness — it''s cultural. Arabic speakers often find this too direct at first, but you''ll appreciate it once you get used to it.

في ألمانيا، يتم التعامل مع Telling Time بوضوح وكفاءة. الألمان يقدرون الوضوح أكثر من المجاملات. لا تعتبر هذه وقاحة - إنها ثقافة مختلفة.', '["Tip: Always use \"Sie\" (formal) with strangers and colleagues","Tip: Germans appreciate punctuality — arrive 5 minutes early","Tip: Direct feedback is a sign of respect, not criticism","Tip: Prepare factual arguments, not emotional appeals"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006598ba13', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Using \"machen\" for every action","correction":"Use specific verbs: frühstücken (eat breakfast), duschen (shower), anziehen (get dressed)","explanation":"Arabic uses \"aamal\" (do/make) + noun. German has specific verbs for daily actions."},{"mistake":"Using the wrong article (der/die/das) for nouns","correction":"Learn each noun with its article as one piece","explanation":"Arabic has no articles for nouns without gender connection"}]', 30);

  -- Lesson 5: Meine Familie vorstellen (L-A1-02-05)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-00006598ba14', '00000000-0000-4000-a000-000039b4d35f', 'Meine Familie vorstellen', 'Practice introducing and describing your family.', 'Family Introduction', 'speaking', '["Understand and apply possessive_articles rules correctly","Use possessive_articles in real conversations","Avoid common mistakes Arabic speakers make with possessive_articles","Read and understand possessive_articles in context","Listen and identify possessive_articles in speech","Write sentences using possessive_articles correctly"]', 20, 5, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, french_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-00006598ba14', 'die Familie', 'العائلة', 'family', 'la famille', 'die', 'die Familien', 'noun', 'Meine Familie ist groß.', 'My family is big.', 'A1', 1),
  ('00000000-0000-4000-a000-00006598ba14', 'der Vater', 'الأب', 'father', 'le père', 'der', 'die Väter', 'noun', 'Mein Vater ist Ingenieur.', 'My father is an engineer.', 'A1', 2),
  ('00000000-0000-4000-a000-00006598ba14', 'die Mutter', 'الأم', 'mother', 'la mère', 'die', 'die Mütter', 'noun', 'Meine Mutter kocht gut.', 'My mother cooks well.', 'A1', 3),
  ('00000000-0000-4000-a000-00006598ba14', 'der Bruder', 'الأخ', 'brother', 'le frère', 'der', 'die Brüder', 'noun', 'Mein Bruder ist 15 Jahre alt.', 'My brother is 15 years old.', 'A1', 4),
  ('00000000-0000-4000-a000-00006598ba14', 'die Schwester', 'الأخت', 'sister', 'la sœur', 'die', 'die Schwestern', 'noun', 'Meine Schwester studiert Medizin.', 'My sister studies medicine.', 'A1', 5),
  ('00000000-0000-4000-a000-00006598ba14', 'die Geschwister', 'الإخوة', 'siblings', 'les frères et sœurs', 'die', NULL, 'noun', 'Hast du Geschwister?', 'Do you have siblings?', 'A1', 6),
  ('00000000-0000-4000-a000-00006598ba14', 'der Sohn', 'الابن', 'son', 'le fils', 'der', 'die Söhne', 'noun', 'Wir haben einen Sohn.', 'We have a son.', 'A1', 7),
  ('00000000-0000-4000-a000-00006598ba14', 'die Tochter', 'الابنة', 'daughter', 'la fille', 'die', 'die Töchter', 'noun', 'Meine Tochter geht zur Schule.', 'My daughter goes to school.', 'A1', 8),
  ('00000000-0000-4000-a000-00006598ba14', 'die Großeltern', 'الأجداد', 'grandparents', 'les grands-parents', 'die', NULL, 'noun', 'Meine Großeltern wohnen auf dem Land.', 'My grandparents live in the countryside.', 'A1', 9),
  ('00000000-0000-4000-a000-00006598ba14', 'verheiratet', 'متزوج', 'married', 'marié(e)', NULL, NULL, 'adjective', 'Meine Eltern sind verheiratet.', 'My parents are married.', 'A1', 10),
  ('00000000-0000-4000-a000-00006598ba14', 'Hallo', 'مرحباً', 'hello', 'bonjour', NULL, NULL, 'interjection', 'Hallo, wie geht es dir?', 'Hello, how are you?', 'A1', 11),
  ('00000000-0000-4000-a000-00006598ba14', 'Guten Morgen', 'صباح الخير', 'good morning', 'bonjour (le matin)', NULL, NULL, 'phrase', 'Guten Morgen, Herr Müller.', 'Good morning, Mr. Müller.', 'A1', 12),
  ('00000000-0000-4000-a000-00006598ba14', 'Guten Tag', 'نهارك سعيد', 'good day', 'bonjour (l''après-midi)', NULL, NULL, 'phrase', 'Guten Tag, Frau Schmidt.', 'Good day, Mrs. Schmidt.', 'A1', 13),
  ('00000000-0000-4000-a000-00006598ba14', 'Tschüss', 'مع السلامة', 'bye', 'au revoir / salut', NULL, NULL, 'interjection', 'Tschüss, bis morgen!', 'Bye, see you tomorrow!', 'A1', 14),
  ('00000000-0000-4000-a000-00006598ba14', 'der Name', 'الاسم', 'name', 'le nom', 'der', 'die Namen', 'noun', 'Mein Name ist Anna.', 'My name is Anna.', 'A1', 15),
  ('00000000-0000-4000-a000-00006598ba14', 'wie', 'كيف', 'how', 'comment', NULL, NULL, 'adverb', 'Wie heißt du?', 'What is your name?', 'A1', 16),
  ('00000000-0000-4000-a000-00006598ba14', 'freuen', 'يسر', 'to be pleased', 'se réjouir', NULL, NULL, 'verb', 'Ich freue mich, dich kennenzulernen.', 'I am pleased to meet you.', 'A1', 17),
  ('00000000-0000-4000-a000-00006598ba14', 'Willkommen', 'أهلاً وسهلاً', 'welcome', 'bienvenue', NULL, NULL, 'interjection', 'Willkommen in Deutschland!', 'Welcome to Germany!', 'A1', 18),
  ('00000000-0000-4000-a000-00006598ba14', 'das Brot', 'الخبز', 'bread', 'le pain', 'das', 'die Brote', 'noun', 'Ich kaufe ein Brot.', 'I buy a loaf of bread.', 'A1', 19),
  ('00000000-0000-4000-a000-00006598ba14', 'die Milch', 'الحليب', 'milk', 'le lait', 'die', NULL, 'noun', 'Die Milch ist frisch.', 'The milk is fresh.', 'A1', 20),
  ('00000000-0000-4000-a000-00006598ba14', 'der Käse', 'الجبن', 'cheese', 'le fromage', 'der', NULL, 'noun', 'Der Käse schmeckt gut.', 'The cheese tastes good.', 'A1', 21),
  ('00000000-0000-4000-a000-00006598ba14', 'der Apfel', 'التفاح', 'apple', 'la pomme', 'der', 'die Äpfel', 'noun', 'Der Apfel ist rot.', 'The apple is red.', 'A1', 22),
  ('00000000-0000-4000-a000-00006598ba14', 'das Ei', 'البيضة', 'egg', 'l''œuf', 'das', 'die Eier', 'noun', 'Ich esse ein Ei zum Frühstück.', 'I eat an egg for breakfast.', 'A1', 23),
  ('00000000-0000-4000-a000-00006598ba14', 'das Obst', 'الفاكهة', 'fruit', 'les fruits', 'das', NULL, 'noun', 'Obst ist gesund.', 'Fruit is healthy.', 'A1', 24),
  ('00000000-0000-4000-a000-00006598ba14', 'das Gemüse', 'الخضروات', 'vegetables', 'les légumes', 'das', NULL, 'noun', 'Ich kaufe Gemüse auf dem Markt.', 'I buy vegetables at the market.', 'A1', 25),
  ('00000000-0000-4000-a000-00006598ba14', 'kochen', 'يطبخ', 'to cook', 'cuisiner', NULL, NULL, 'verb', 'Meine Mutter kocht gut.', 'My mother cooks well.', 'A1', 26),
  ('00000000-0000-4000-a000-00006598ba14', 'der Fisch', 'السمك', 'fish', 'le poisson', 'der', 'die Fische', 'noun', 'Der Fisch ist frisch.', 'The fish is fresh.', 'A1', 27),
  ('00000000-0000-4000-a000-00006598ba14', 'das Fleisch', 'اللحم', 'meat', 'la viande', 'das', NULL, 'noun', 'Ich esse nicht viel Fleisch.', 'I do not eat much meat.', 'A1', 28),
  ('00000000-0000-4000-a000-00006598ba14', 'das Haus', 'البيت', 'house', 'la maison', 'das', 'die Häuser', 'noun', 'Das Haus ist groß.', 'The house is big.', 'A1', 29),
  ('00000000-0000-4000-a000-00006598ba14', 'die Wohnung', 'الشقة', 'apartment', 'l''appartement', 'die', 'die Wohnungen', 'noun', 'Meine Wohnung hat drei Zimmer.', 'My apartment has three rooms.', 'A1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006598ba14', 'Possessivartikel: mein, dein, sein, ihr (Possessive Articles) / أدوات الملكية', 'German possessive articles agree with the noun they modify (gender of the owned item), not the owner. mein (my), dein (your, informal), sein (his/its), ihr (her/their), unser (our), euer (your plural), Ihr (your formal). They follow the same endings as "ein" in nominative and accusative.', '[{"rule":"mein + masculine (Nom): mein Vater","note":"Mein Vater ist Arzt."},{"rule":"mein + feminine (Nom): meine Mutter","note":"Meine Mutter ist Lehrerin."},{"rule":"mein + neuter (Nom): mein Kind","note":"Mein Kind ist klein."},{"rule":"Possessive follows \"ein\" pattern: no ending in Nom masc/neut, add -e in Nom fem/plural","note":"mein (masc/neut), meine (fem/plural)"}]', '[{"german":"Mein Bruder heißt Max.","arabic":"أخي اسمه ماكس.","english":"My brother is called Max."},{"german":"Meine Mutter kocht gut.","arabic":"أمي تطبخ جيداً.","english":"My mother cooks well."},{"german":"Dein Hund ist süß.","arabic":"كلبك لطيف.","english":"Your dog is cute."},{"german":"Ihre Schwester studiert in Berlin.","arabic":"أختها (أختهم) تدرس في برلين.","english":"Her/Their sister studies in Berlin."}]', '[{"mistake":"Mein Mutter (using mein for feminine)","correction":"Meine Mutter","explanation":"With feminine nouns, possessive adds -e: meine."},{"mistake":"Mein Schwester (wrong ending)","correction":"Meine Schwester","explanation":"\"Schwester\" is feminine → meine."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006598ba14', 'multiple_choice', 'Which German word matches "family"?', '["die Familie","die Schwester","die Mutter","der Bruder"]', 'die Familie', '"family" = "die Familie" in German. Article: die Plural: die Familien', 1, 1),
  ('00000000-0000-4000-a000-00006598ba14', 'multiple_choice', 'Which German word matches "father"?', '["der Bruder","der Vater","die Familie","die Mutter"]', 'der Vater', '"father" = "der Vater" in German. Article: der Plural: die Väter', 1, 2),
  ('00000000-0000-4000-a000-00006598ba14', 'multiple_choice', 'Which German word matches "mother"?', '["der Vater","der Bruder","die Familie","die Schwester"]', 'die Mutter', '"mother" = "die Mutter" in German. Article: die Plural: die Mütter', 1, 3),
  ('00000000-0000-4000-a000-00006598ba14', 'multiple_choice', 'Which German word matches "brother"?', '["die Mutter","der Bruder","die Familie","der Vater"]', 'der Bruder', '"brother" = "der Bruder" in German. Article: der Plural: die Brüder', 1, 4),
  ('00000000-0000-4000-a000-00006598ba14', 'multiple_choice', 'Which German word matches "sister"?', '["die Schwester","die Familie","der Vater","die Mutter"]', 'die Schwester', '"sister" = "die Schwester" in German. Article: die Plural: die Schwestern', 1, 5),
  ('00000000-0000-4000-a000-00006598ba14', 'fill_gap', 'Complete the sentence: Ich ___ gern über Family Introduction. (sprechen)', '["spreche","sprichst","spricht","sprechen"]', 'spreche', 'ich spreche gern = I like to speak. Stem: sprech- + e.', 2, 6),
  ('00000000-0000-4000-a000-00006598ba14', 'translation', 'Translate to German: "I am learning about Family Introduction."', '["Ich lerne über Family Introduction.","Ich lerne Family Introduction.","Lerne ich Family Introduction."]', 'Ich lerne über Family Introduction.', '"Ich lerne über..." = "I am learning about..."', 2, 7),
  ('00000000-0000-4000-a000-00006598ba14', 'matching', 'Match: Which word pairs are correct?', '["die Familie - family, der Vater - father"]', 'Matched correctly', 'Each German word has a unique English equivalent.', 2, 8);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-00006598ba14', 'multiple_choice', 'What does "die Familie" mean in English?', '["family","to run","beautiful","yesterday"]', 'family', 1, 1),
  ('00000000-0000-4000-a000-00006598ba14', 'multiple_choice', 'What is the correct article for "der Vater"?', '["der","die","das","den"]', 'der', 1, 2),
  ('00000000-0000-4000-a000-00006598ba14', 'true_false', 'The word "die Mutter" is related to Family Introduction.', '["True","False"]', 'True', 1, 3),
  ('00000000-0000-4000-a000-00006598ba14', 'multiple_choice', 'Which sentence correctly uses possessive_articles?', '["Mein Bruder heißt Max.","Meine Mutter kocht gut.","Dein Hund ist süß.","Ihre Schwester studiert in Berlin."]', 'Mein Bruder heißt Max.', 2, 4),
  ('00000000-0000-4000-a000-00006598ba14', 'true_false', 'German word order puts the verb in second position in main clauses.', '["True","False"]', 'True', 1, 5),
  ('00000000-0000-4000-a000-00006598ba14', 'fill_blank', 'Complete: Ich ___ (brother) Deutsch.', '["der Bruder","lernt","lernst","lernen"]', 'lerne', 2, 6),
  ('00000000-0000-4000-a000-00006598ba14', 'multiple_choice', 'What is the German word for "sister"?', '["die Schwester","die Geschwister","der Sohn","die Tochter"]', 'die Schwester', 1, 7),
  ('00000000-0000-4000-a000-00006598ba14', 'true_false', 'In German, ALL nouns are always capitalised.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-00006598ba14', 'multiple_choice', 'How do you say "please" in a restaurant in Germany?', '["Bitte","Danke","Tschüss","Hallo"]', 'Bitte', 1, 9),
  ('00000000-0000-4000-a000-00006598ba14', 'fill_blank', 'Wo ___ (to live) du?', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 2, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, french_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-00006598ba14', 'Hast du Geschwister?', 'Do you have siblings?', 'هل لديك أخوة؟', NULL, 'Used in Familie und Alltag', 'informal', false, 1),
  ('00000000-0000-4000-a000-00006598ba14', 'Meine Familie kommt aus Syrien.', 'My family comes from Syria.', 'عائلتي من سوريا.', NULL, 'Used in Familie und Alltag', 'neutral', false, 2),
  ('00000000-0000-4000-a000-00006598ba14', 'Ich habe einen Bruder und zwei Schwestern.', 'I have one brother and two sisters.', 'لدي أخ واحد وأختان.', NULL, 'Used in Familie und Alltag', 'neutral', false, 3),
  ('00000000-0000-4000-a000-00006598ba14', 'Wir wohnen zusammen in Köln.', 'We live together in Cologne.', 'نعيش معاً في كولونيا.', NULL, 'Used in Familie und Alltag', 'neutral', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-00006598ba14', 'die die Familie (die Familien)', 'family — العائلة', 'noun', 'vocabulary', 1),
  ('00000000-0000-4000-a000-00006598ba14', 'der der Vater (die Väter)', 'father — الأب', 'noun', 'vocabulary', 2),
  ('00000000-0000-4000-a000-00006598ba14', 'die die Mutter (die Mütter)', 'mother — الأم', 'noun', 'vocabulary', 3),
  ('00000000-0000-4000-a000-00006598ba14', 'der der Bruder (die Brüder)', 'brother — الأخ', 'noun', 'vocabulary', 4),
  ('00000000-0000-4000-a000-00006598ba14', 'die die Schwester (die Schwestern)', 'sister — الأخت', 'noun', 'vocabulary', 5),
  ('00000000-0000-4000-a000-00006598ba14', 'die die Geschwister', 'siblings — الإخوة', 'noun', 'vocabulary', 6),
  ('00000000-0000-4000-a000-00006598ba14', 'der der Sohn (die Söhne)', 'son — الابن', 'noun', 'vocabulary', 7),
  ('00000000-0000-4000-a000-00006598ba14', 'die die Tochter (die Töchter)', 'daughter — الابنة', 'noun', 'vocabulary', 8),
  ('00000000-0000-4000-a000-00006598ba14', 'die die Großeltern', 'grandparents — الأجداد', 'noun', 'vocabulary', 9),
  ('00000000-0000-4000-a000-00006598ba14', 'verheiratet', 'married — متزوج', 'adjective', 'vocabulary', 10),
  ('00000000-0000-4000-a000-00006598ba14', 'Hallo', 'hello — مرحباً', 'interjection', 'vocabulary', 11),
  ('00000000-0000-4000-a000-00006598ba14', 'Guten Morgen', 'good morning — صباح الخير', 'phrase', 'vocabulary', 12),
  ('00000000-0000-4000-a000-00006598ba14', 'Guten Tag', 'good day — نهارك سعيد', 'phrase', 'vocabulary', 13),
  ('00000000-0000-4000-a000-00006598ba14', 'Tschüss', 'bye — مع السلامة', 'interjection', 'vocabulary', 14),
  ('00000000-0000-4000-a000-00006598ba14', 'der der Name (die Namen)', 'name — الاسم', 'noun', 'vocabulary', 15),
  ('00000000-0000-4000-a000-00006598ba14', 'Mein Bruder heißt Max.', 'My brother is called Max.', 'Possessivartikel: mein, dein, sein, ihr (Possessive Articles)', 'grammar', 16),
  ('00000000-0000-4000-a000-00006598ba14', 'Meine Mutter kocht gut.', 'My mother cooks well.', 'Possessivartikel: mein, dein, sein, ihr (Possessive Articles)', 'grammar', 17),
  ('00000000-0000-4000-a000-00006598ba14', 'Dein Hund ist süß.', 'Your dog is cute.', 'Possessivartikel: mein, dein, sein, ihr (Possessive Articles)', 'grammar', 18);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, french_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-00006598ba14', 'Meine Familie vorstellen — Leseübung', 'Hallo! Ich heiße Ahmed und komme aus Syrien. Meine Familie wohnt in Köln. Ich habe einen Bruder und zwei Schwestern. Mein Bruder heißt Omar und ist 20 Jahre alt. Meine Schwestern heißen Fatima und Aisha. Meine Mutter ist Ärztin. Mein Vater arbeitet als Lehrer. Wir haben auch eine Katze. Sie heißt Mimi. Am Wochenende besuchen wir unsere Großeltern. Meine Großmutter kocht sehr gut. Ich liebe meine Familie.', 'Hello! My name is Ahmed and I come from Syria. My family lives in Cologne. I have one brother and two sisters. My brother is called Omar and is 20 years old. My sisters are called Fatima and Aisha. My mother is a doctor. My father works as a teacher. We also have a cat. She is called Mimi. On weekends we visit our grandparents. My grandmother cooks very well. I love my family.', 'مرحباً! اسمي أحمد وأنا من سوريا. عائلتي تسكن في كولونيا. لدي أخ واحد وأختان. أخي اسمه عمر وعمره 20 سنة. أختاي اسمهما فاطمة وعائشة. أمي طبيبة. والدي يعمل معلماً. لدينا أيضاً قطة. اسمها ميمي. في عطلة نهاية الأسبوع نزور أجدادنا. جدتي تطبخ جيداً جداً. أحب عائلتي.', NULL, 67, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, french_translation, duration_seconds, speaker_count, scenario) values
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

[Ben]: والدي معلم ووالدتي طبيبة.', '[Anna]: 

[Ben]: 

[Anna]: 

[Ben]: 

[Anna]: 

[Ben]: ', 72, 2, 'Familie und Alltag');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-00006598ba14', '🔊 Sprechen: Meine Familie vorstellen', 'Roleplay: You are in a Hamburg office. Introduce yourself and talk about Family Introduction. Your partner (AI) will respond naturally.', 'Family Introduction', ARRAY['Use complete sentences — not single words','Pause between phrases, not between words','Don''t translate from Arabic word-for-word']::text[], ARRAY['die Familie','der Vater','die Mutter','der Bruder','die Schwester','die Geschwister','der Sohn','die Tochter']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-00006598ba14', '✏️ Schreiben: Meine Familie vorstellen', 'Write an email to a German friend about "Family Introduction". Tell them what you learned, what you found interesting, and ask two questions about their experience with this topic. Use at least 8 vocabulary words from this lesson. Sign off naturally ("Viele Grüße", "Liebe Grüße").', ARRAY['Start with "Hallo" or "Liebe/r"','Keep sentences short (Subject-Verb-Object)','End with a friendly farewell']::text[], ARRAY['die Familie','der Vater','die Mutter','der Bruder','die Schwester','die Geschwister','der Sohn','die Tochter']::text[], ARRAY['Sentence structure','Vocabulary usage']::text[], 50, 100, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00006598ba14', 'Meine Familie vorstellen — Roleplay', 'Family Introduction', 'Student', 'Teacher', 'Practice conversation about Family Introduction', 'Hallo! Lass uns über dieses Thema sprechen.', 'beginner', 1, ARRAY['die Familie','der Vater','die Mutter','der Bruder','die Schwester','die Geschwister','der Sohn','die Tochter']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00006598ba14', 'Meine Familie vorstellen — Advanced Roleplay', 'Family Introduction', 'Customer', 'Assistant', 'Extended conversation about Family Introduction', 'Guten Tag! Wie kann ich Ihnen helfen?', 'beginner', 2, ARRAY['die Familie','der Vater','die Mutter','der Bruder','die Schwester','die Geschwister','der Sohn','die Tochter']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-00006598ba14', 'Meine Familie vorstellen — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Meine Familie vorstellen".', 'Creative practice for Family Introduction', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-00006598ba14', '📚 Hausaufgabe: Meine Familie vorstellen', 'Complete these tasks to reinforce "Meine Familie vorstellen".', 'mixed', '[{"description":"Create 10 flashcards from this lesson''s vocabulary — write German on one side, Arabic on the other. Test yourself 3 times."},{"description":"Write 6 sentences about Family Introduction: 2 statements, 2 questions, 2 negations — all using possessive_articles."},{"description":"Record yourself reading the dialogue aloud. Listen to the recording and note 3 things to improve."},{"description":"Find 3 real German websites, videos, or articles about Family Introduction. Note 5 new words you discovered."}]', 50, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-00006598ba14', '🎯 Great work! In this lesson you learned 142 new words about Family Introduction. You practiced possessive_articles — an important grammar topic for A1 level. You read a text, listened to a dialogue, and practiced speaking and writing. Keep going!', '["142 vocabulary items about Family Introduction","possessive_articles — grammar explanation and practice","Reading comprehension: text about Family Introduction","Listening comprehension: dialogue about Family Introduction","Speaking practice: roleplay/discussion about Family Introduction","Writing task: text about Family Introduction"]', '[{"title":"Meine Familie vorstellen Review","summary":"possessive_articles — the main grammar focus. Focus on understanding when to use this structure and forming basic sentences."}]', ARRAY['die Familie (family)','der Vater (father)','die Mutter (mother)','der Bruder (brother)','die Schwester (sister)']::text[], ARRAY['Don''t translate from Arabic word-for-word — German has different sentence structure','Learn every noun with its article: NEVER learn "Tisch" alone, always "der Tisch"','Verb always in position 2 in main clauses']::text[], ARRAY['Practice 15-20 minutes daily — consistency beats intensity','Speak out loud: German pronunciation needs muscle memory','Use the new vocabulary within 24 hours or you''ll forget it','Watch German YouTube videos about Family Introduction for authentic input']::text[]);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006598ba14', 'Pronunciation: German sounds for "family"', 'In German, vowels are pure — unlike English diphthongs. The "ch" sound after a, o, u is guttural (like Arabic خ). After e, i, ä, ö, ü it''s soft (like English "huge" without the "u").

Common mistake for Arabic speakers: Arabic speakers tend to over-emphasise consonants. German flows — connect words smoothly (e.g., "Ich habe" becomes /ɪçabə/ not /ɪç ˈhaːbə/).', '[]', '[{"german":"die Familie","arabic":"","english":"","phonetic":""},{"german":"der Vater","arabic":"","english":"","phonetic":""},{"german":"die Mutter","arabic":"","english":"","phonetic":""},{"german":"der Bruder","arabic":"","english":"","phonetic":""}]', '[]', 10);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006598ba14', 'translation', 'Translate to German: "I use the word "family" in a sentence about Family Introduction."', '[]', 'Meine Familie ist groß.', 'Use die  "die Familie" with the correct possessive_articles form.', 1, 40);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006598ba14', 'translation', 'Translate to German: "I use the word "father" in a sentence about Family Introduction."', '[]', 'Mein Vater ist Ingenieur.', 'Use der  "der Vater" with the correct possessive_articles form.', 1, 41);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006598ba14', 'translation', 'Translate to German: "I use the word "mother" in a sentence about Family Introduction."', '[]', 'Meine Mutter kocht gut.', 'Use die  "die Mutter" with the correct possessive_articles form.', 1, 42);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006598ba14', 'Culture: 🇩🇪 Deutsche Kultur: Family Introduction', 'In Germany, Family Introduction is approached with typical German directness and efficiency. Germans value clarity over small talk. When discussing Family Introduction, expect honest feedback and straightforward questions. This is not rudeness — it''s cultural. Arabic speakers often find this too direct at first, but you''ll appreciate it once you get used to it.

في ألمانيا، يتم التعامل مع Family Introduction بوضوح وكفاءة. الألمان يقدرون الوضوح أكثر من المجاملات. لا تعتبر هذه وقاحة - إنها ثقافة مختلفة.', '["Tip: Always use \"Sie\" (formal) with strangers and colleagues","Tip: Germans appreciate punctuality — arrive 5 minutes early","Tip: Direct feedback is a sign of respect, not criticism","Tip: Prepare factual arguments, not emotional appeals"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006598ba14', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Confusing \"mein\" and \"meine\"","correction":"mein for masculine/neuter, meine for feminine/plural","explanation":"Arabic has no grammatical gender in possessive particles."},{"mistake":"Using the wrong article (der/die/das) for nouns","correction":"Learn each noun with its article as one piece","explanation":"Arabic has no articles for nouns without gender connection"}]', 30);

  -- Lesson 6: Test: Familie und Alltag (L-A1-02-06)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-00006598ba15', '00000000-0000-4000-a000-000039b4d35f', 'Test: Familie und Alltag', 'Test your knowledge of Module 2.', 'Module Test', 'test', '["Understand and apply possessive_articles rules correctly","Use possessive_articles in real conversations","Avoid common mistakes Arabic speakers make with possessive_articles","Read and understand possessive_articles in context","Listen and identify possessive_articles in speech","Write sentences using possessive_articles correctly"]', 25, 6, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, french_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-00006598ba15', 'die Familie', 'العائلة', 'family', 'la famille', 'die', 'die Familien', 'noun', 'Meine Familie ist groß.', 'My family is big.', 'A1', 1),
  ('00000000-0000-4000-a000-00006598ba15', 'der Vater', 'الأب', 'father', 'le père', 'der', 'die Väter', 'noun', 'Mein Vater ist Ingenieur.', 'My father is an engineer.', 'A1', 2),
  ('00000000-0000-4000-a000-00006598ba15', 'die Mutter', 'الأم', 'mother', 'la mère', 'die', 'die Mütter', 'noun', 'Meine Mutter kocht gut.', 'My mother cooks well.', 'A1', 3),
  ('00000000-0000-4000-a000-00006598ba15', 'der Bruder', 'الأخ', 'brother', 'le frère', 'der', 'die Brüder', 'noun', 'Mein Bruder ist 15 Jahre alt.', 'My brother is 15 years old.', 'A1', 4),
  ('00000000-0000-4000-a000-00006598ba15', 'die Schwester', 'الأخت', 'sister', 'la sœur', 'die', 'die Schwestern', 'noun', 'Meine Schwester studiert Medizin.', 'My sister studies medicine.', 'A1', 5),
  ('00000000-0000-4000-a000-00006598ba15', 'die Geschwister', 'الإخوة', 'siblings', 'les frères et sœurs', 'die', NULL, 'noun', 'Hast du Geschwister?', 'Do you have siblings?', 'A1', 6),
  ('00000000-0000-4000-a000-00006598ba15', 'der Sohn', 'الابن', 'son', 'le fils', 'der', 'die Söhne', 'noun', 'Wir haben einen Sohn.', 'We have a son.', 'A1', 7),
  ('00000000-0000-4000-a000-00006598ba15', 'die Tochter', 'الابنة', 'daughter', 'la fille', 'die', 'die Töchter', 'noun', 'Meine Tochter geht zur Schule.', 'My daughter goes to school.', 'A1', 8),
  ('00000000-0000-4000-a000-00006598ba15', 'die Großeltern', 'الأجداد', 'grandparents', 'les grands-parents', 'die', NULL, 'noun', 'Meine Großeltern wohnen auf dem Land.', 'My grandparents live in the countryside.', 'A1', 9),
  ('00000000-0000-4000-a000-00006598ba15', 'verheiratet', 'متزوج', 'married', 'marié(e)', NULL, NULL, 'adjective', 'Meine Eltern sind verheiratet.', 'My parents are married.', 'A1', 10),
  ('00000000-0000-4000-a000-00006598ba15', 'Hallo', 'مرحباً', 'hello', 'bonjour', NULL, NULL, 'interjection', 'Hallo, wie geht es dir?', 'Hello, how are you?', 'A1', 11),
  ('00000000-0000-4000-a000-00006598ba15', 'Guten Morgen', 'صباح الخير', 'good morning', 'bonjour (le matin)', NULL, NULL, 'phrase', 'Guten Morgen, Herr Müller.', 'Good morning, Mr. Müller.', 'A1', 12),
  ('00000000-0000-4000-a000-00006598ba15', 'Guten Tag', 'نهارك سعيد', 'good day', 'bonjour (l''après-midi)', NULL, NULL, 'phrase', 'Guten Tag, Frau Schmidt.', 'Good day, Mrs. Schmidt.', 'A1', 13),
  ('00000000-0000-4000-a000-00006598ba15', 'Tschüss', 'مع السلامة', 'bye', 'au revoir / salut', NULL, NULL, 'interjection', 'Tschüss, bis morgen!', 'Bye, see you tomorrow!', 'A1', 14),
  ('00000000-0000-4000-a000-00006598ba15', 'der Name', 'الاسم', 'name', 'le nom', 'der', 'die Namen', 'noun', 'Mein Name ist Anna.', 'My name is Anna.', 'A1', 15),
  ('00000000-0000-4000-a000-00006598ba15', 'wie', 'كيف', 'how', 'comment', NULL, NULL, 'adverb', 'Wie heißt du?', 'What is your name?', 'A1', 16),
  ('00000000-0000-4000-a000-00006598ba15', 'freuen', 'يسر', 'to be pleased', 'se réjouir', NULL, NULL, 'verb', 'Ich freue mich, dich kennenzulernen.', 'I am pleased to meet you.', 'A1', 17),
  ('00000000-0000-4000-a000-00006598ba15', 'Willkommen', 'أهلاً وسهلاً', 'welcome', 'bienvenue', NULL, NULL, 'interjection', 'Willkommen in Deutschland!', 'Welcome to Germany!', 'A1', 18),
  ('00000000-0000-4000-a000-00006598ba15', 'das Brot', 'الخبز', 'bread', 'le pain', 'das', 'die Brote', 'noun', 'Ich kaufe ein Brot.', 'I buy a loaf of bread.', 'A1', 19),
  ('00000000-0000-4000-a000-00006598ba15', 'die Milch', 'الحليب', 'milk', 'le lait', 'die', NULL, 'noun', 'Die Milch ist frisch.', 'The milk is fresh.', 'A1', 20),
  ('00000000-0000-4000-a000-00006598ba15', 'der Käse', 'الجبن', 'cheese', 'le fromage', 'der', NULL, 'noun', 'Der Käse schmeckt gut.', 'The cheese tastes good.', 'A1', 21),
  ('00000000-0000-4000-a000-00006598ba15', 'der Apfel', 'التفاح', 'apple', 'la pomme', 'der', 'die Äpfel', 'noun', 'Der Apfel ist rot.', 'The apple is red.', 'A1', 22),
  ('00000000-0000-4000-a000-00006598ba15', 'das Ei', 'البيضة', 'egg', 'l''œuf', 'das', 'die Eier', 'noun', 'Ich esse ein Ei zum Frühstück.', 'I eat an egg for breakfast.', 'A1', 23),
  ('00000000-0000-4000-a000-00006598ba15', 'das Obst', 'الفاكهة', 'fruit', 'les fruits', 'das', NULL, 'noun', 'Obst ist gesund.', 'Fruit is healthy.', 'A1', 24),
  ('00000000-0000-4000-a000-00006598ba15', 'das Gemüse', 'الخضروات', 'vegetables', 'les légumes', 'das', NULL, 'noun', 'Ich kaufe Gemüse auf dem Markt.', 'I buy vegetables at the market.', 'A1', 25),
  ('00000000-0000-4000-a000-00006598ba15', 'kochen', 'يطبخ', 'to cook', 'cuisiner', NULL, NULL, 'verb', 'Meine Mutter kocht gut.', 'My mother cooks well.', 'A1', 26),
  ('00000000-0000-4000-a000-00006598ba15', 'der Fisch', 'السمك', 'fish', 'le poisson', 'der', 'die Fische', 'noun', 'Der Fisch ist frisch.', 'The fish is fresh.', 'A1', 27),
  ('00000000-0000-4000-a000-00006598ba15', 'das Fleisch', 'اللحم', 'meat', 'la viande', 'das', NULL, 'noun', 'Ich esse nicht viel Fleisch.', 'I do not eat much meat.', 'A1', 28),
  ('00000000-0000-4000-a000-00006598ba15', 'das Haus', 'البيت', 'house', 'la maison', 'das', 'die Häuser', 'noun', 'Das Haus ist groß.', 'The house is big.', 'A1', 29),
  ('00000000-0000-4000-a000-00006598ba15', 'die Wohnung', 'الشقة', 'apartment', 'l''appartement', 'die', 'die Wohnungen', 'noun', 'Meine Wohnung hat drei Zimmer.', 'My apartment has three rooms.', 'A1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006598ba15', 'Possessivartikel: mein, dein, sein, ihr (Possessive Articles) / أدوات الملكية', 'German possessive articles agree with the noun they modify (gender of the owned item), not the owner. mein (my), dein (your, informal), sein (his/its), ihr (her/their), unser (our), euer (your plural), Ihr (your formal). They follow the same endings as "ein" in nominative and accusative.', '[{"rule":"mein + masculine (Nom): mein Vater","note":"Mein Vater ist Arzt."},{"rule":"mein + feminine (Nom): meine Mutter","note":"Meine Mutter ist Lehrerin."},{"rule":"mein + neuter (Nom): mein Kind","note":"Mein Kind ist klein."},{"rule":"Possessive follows \"ein\" pattern: no ending in Nom masc/neut, add -e in Nom fem/plural","note":"mein (masc/neut), meine (fem/plural)"}]', '[{"german":"Mein Bruder heißt Max.","arabic":"أخي اسمه ماكس.","english":"My brother is called Max."},{"german":"Meine Mutter kocht gut.","arabic":"أمي تطبخ جيداً.","english":"My mother cooks well."},{"german":"Dein Hund ist süß.","arabic":"كلبك لطيف.","english":"Your dog is cute."},{"german":"Ihre Schwester studiert in Berlin.","arabic":"أختها (أختهم) تدرس في برلين.","english":"Her/Their sister studies in Berlin."}]', '[{"mistake":"Mein Mutter (using mein for feminine)","correction":"Meine Mutter","explanation":"With feminine nouns, possessive adds -e: meine."},{"mistake":"Mein Schwester (wrong ending)","correction":"Meine Schwester","explanation":"\"Schwester\" is feminine → meine."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006598ba15', 'multiple_choice', 'Which German word matches "family"?', '["die Familie","der Vater","die Schwester","die Mutter"]', 'die Familie', '"family" = "die Familie" in German. Article: die Plural: die Familien', 1, 1),
  ('00000000-0000-4000-a000-00006598ba15', 'multiple_choice', 'Which German word matches "father"?', '["der Bruder","die Mutter","die Familie","die Schwester"]', 'der Vater', '"father" = "der Vater" in German. Article: der Plural: die Väter', 1, 2),
  ('00000000-0000-4000-a000-00006598ba15', 'multiple_choice', 'Which German word matches "mother"?', '["die Familie","die Mutter","die Schwester","der Bruder"]', 'die Mutter', '"mother" = "die Mutter" in German. Article: die Plural: die Mütter', 1, 3),
  ('00000000-0000-4000-a000-00006598ba15', 'multiple_choice', 'Which German word matches "brother"?', '["der Bruder","die Schwester","die Familie","der Vater"]', 'der Bruder', '"brother" = "der Bruder" in German. Article: der Plural: die Brüder', 1, 4),
  ('00000000-0000-4000-a000-00006598ba15', 'multiple_choice', 'Which German word matches "sister"?', '["die Schwester","die Mutter","die Familie","der Bruder"]', 'die Schwester', '"sister" = "die Schwester" in German. Article: die Plural: die Schwestern', 1, 5),
  ('00000000-0000-4000-a000-00006598ba15', 'fill_gap', 'Complete the sentence: Ich ___ gern über Module Test. (sprechen)', '["spreche","sprichst","spricht","sprechen"]', 'spreche', 'ich spreche gern = I like to speak. Stem: sprech- + e.', 2, 6),
  ('00000000-0000-4000-a000-00006598ba15', 'translation', 'Translate to German: "I am learning about Module Test."', '["Ich lerne über Module Test.","Ich lerne Module Test.","Lerne ich Module Test."]', 'Ich lerne über Module Test.', '"Ich lerne über..." = "I am learning about..."', 2, 7),
  ('00000000-0000-4000-a000-00006598ba15', 'matching', 'Match: Which word pairs are correct?', '["die Familie - family, der Vater - father"]', 'Matched correctly', 'Each German word has a unique English equivalent.', 2, 8);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-00006598ba15', 'multiple_choice', 'What does "die Familie" mean in English?', '["family","to run","beautiful","yesterday"]', 'family', 1, 1),
  ('00000000-0000-4000-a000-00006598ba15', 'multiple_choice', 'What is the correct article for "der Vater"?', '["der","die","das","den"]', 'der', 1, 2),
  ('00000000-0000-4000-a000-00006598ba15', 'true_false', 'The word "die Mutter" is related to Module Test.', '["True","False"]', 'True', 1, 3),
  ('00000000-0000-4000-a000-00006598ba15', 'multiple_choice', 'Which sentence correctly uses possessive_articles?', '["Mein Bruder heißt Max.","Meine Mutter kocht gut.","Dein Hund ist süß.","Ihre Schwester studiert in Berlin."]', 'Mein Bruder heißt Max.', 2, 4),
  ('00000000-0000-4000-a000-00006598ba15', 'true_false', 'German word order puts the verb in second position in main clauses.', '["True","False"]', 'True', 1, 5),
  ('00000000-0000-4000-a000-00006598ba15', 'fill_blank', 'Complete: Ich ___ (brother) Deutsch.', '["der Bruder","lernt","lernst","lernen"]', 'lerne', 2, 6),
  ('00000000-0000-4000-a000-00006598ba15', 'multiple_choice', 'What is the German word for "sister"?', '["die Schwester","die Geschwister","der Sohn","die Tochter"]', 'die Schwester', 1, 7),
  ('00000000-0000-4000-a000-00006598ba15', 'true_false', 'In German, ALL nouns are always capitalised.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-00006598ba15', 'multiple_choice', 'How do you say "please" in a restaurant in Germany?', '["Bitte","Danke","Tschüss","Hallo"]', 'Bitte', 1, 9),
  ('00000000-0000-4000-a000-00006598ba15', 'fill_blank', 'Wo ___ (to live) du?', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 2, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, french_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-00006598ba15', 'Hast du Geschwister?', 'Do you have siblings?', 'هل لديك أخوة؟', NULL, 'Used in Familie und Alltag', 'informal', false, 1),
  ('00000000-0000-4000-a000-00006598ba15', 'Meine Familie kommt aus Syrien.', 'My family comes from Syria.', 'عائلتي من سوريا.', NULL, 'Used in Familie und Alltag', 'neutral', false, 2),
  ('00000000-0000-4000-a000-00006598ba15', 'Ich habe einen Bruder und zwei Schwestern.', 'I have one brother and two sisters.', 'لدي أخ واحد وأختان.', NULL, 'Used in Familie und Alltag', 'neutral', false, 3),
  ('00000000-0000-4000-a000-00006598ba15', 'Wir wohnen zusammen in Köln.', 'We live together in Cologne.', 'نعيش معاً في كولونيا.', NULL, 'Used in Familie und Alltag', 'neutral', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-00006598ba15', 'die die Familie (die Familien)', 'family — العائلة', 'noun', 'vocabulary', 1),
  ('00000000-0000-4000-a000-00006598ba15', 'der der Vater (die Väter)', 'father — الأب', 'noun', 'vocabulary', 2),
  ('00000000-0000-4000-a000-00006598ba15', 'die die Mutter (die Mütter)', 'mother — الأم', 'noun', 'vocabulary', 3),
  ('00000000-0000-4000-a000-00006598ba15', 'der der Bruder (die Brüder)', 'brother — الأخ', 'noun', 'vocabulary', 4),
  ('00000000-0000-4000-a000-00006598ba15', 'die die Schwester (die Schwestern)', 'sister — الأخت', 'noun', 'vocabulary', 5),
  ('00000000-0000-4000-a000-00006598ba15', 'die die Geschwister', 'siblings — الإخوة', 'noun', 'vocabulary', 6),
  ('00000000-0000-4000-a000-00006598ba15', 'der der Sohn (die Söhne)', 'son — الابن', 'noun', 'vocabulary', 7),
  ('00000000-0000-4000-a000-00006598ba15', 'die die Tochter (die Töchter)', 'daughter — الابنة', 'noun', 'vocabulary', 8),
  ('00000000-0000-4000-a000-00006598ba15', 'die die Großeltern', 'grandparents — الأجداد', 'noun', 'vocabulary', 9),
  ('00000000-0000-4000-a000-00006598ba15', 'verheiratet', 'married — متزوج', 'adjective', 'vocabulary', 10),
  ('00000000-0000-4000-a000-00006598ba15', 'Hallo', 'hello — مرحباً', 'interjection', 'vocabulary', 11),
  ('00000000-0000-4000-a000-00006598ba15', 'Guten Morgen', 'good morning — صباح الخير', 'phrase', 'vocabulary', 12),
  ('00000000-0000-4000-a000-00006598ba15', 'Guten Tag', 'good day — نهارك سعيد', 'phrase', 'vocabulary', 13),
  ('00000000-0000-4000-a000-00006598ba15', 'Tschüss', 'bye — مع السلامة', 'interjection', 'vocabulary', 14),
  ('00000000-0000-4000-a000-00006598ba15', 'der der Name (die Namen)', 'name — الاسم', 'noun', 'vocabulary', 15),
  ('00000000-0000-4000-a000-00006598ba15', 'Mein Bruder heißt Max.', 'My brother is called Max.', 'Possessivartikel: mein, dein, sein, ihr (Possessive Articles)', 'grammar', 16),
  ('00000000-0000-4000-a000-00006598ba15', 'Meine Mutter kocht gut.', 'My mother cooks well.', 'Possessivartikel: mein, dein, sein, ihr (Possessive Articles)', 'grammar', 17),
  ('00000000-0000-4000-a000-00006598ba15', 'Dein Hund ist süß.', 'Your dog is cute.', 'Possessivartikel: mein, dein, sein, ihr (Possessive Articles)', 'grammar', 18);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, french_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-00006598ba15', 'Test: Familie und Alltag — Leseübung', 'Hallo! Ich heiße Ahmed und komme aus Syrien. Meine Familie wohnt in Köln. Ich habe einen Bruder und zwei Schwestern. Mein Bruder heißt Omar und ist 20 Jahre alt. Meine Schwestern heißen Fatima und Aisha. Meine Mutter ist Ärztin. Mein Vater arbeitet als Lehrer. Wir haben auch eine Katze. Sie heißt Mimi. Am Wochenende besuchen wir unsere Großeltern. Meine Großmutter kocht sehr gut. Ich liebe meine Familie.', 'Hello! My name is Ahmed and I come from Syria. My family lives in Cologne. I have one brother and two sisters. My brother is called Omar and is 20 years old. My sisters are called Fatima and Aisha. My mother is a doctor. My father works as a teacher. We also have a cat. She is called Mimi. On weekends we visit our grandparents. My grandmother cooks very well. I love my family.', 'مرحباً! اسمي أحمد وأنا من سوريا. عائلتي تسكن في كولونيا. لدي أخ واحد وأختان. أخي اسمه عمر وعمره 20 سنة. أختاي اسمهما فاطمة وعائشة. أمي طبيبة. والدي يعمل معلماً. لدينا أيضاً قطة. اسمها ميمي. في عطلة نهاية الأسبوع نزور أجدادنا. جدتي تطبخ جيداً جداً. أحب عائلتي.', NULL, 67, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, french_translation, duration_seconds, speaker_count, scenario) values
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

[Ben]: والدي معلم ووالدتي طبيبة.', '[Anna]: 

[Ben]: 

[Anna]: 

[Ben]: 

[Anna]: 

[Ben]: ', 72, 2, 'Familie und Alltag');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-00006598ba15', '🔊 Sprechen: Test: Familie und Alltag', 'Roleplay: You are in a Hamburg office. Introduce yourself and talk about Module Test. Your partner (AI) will respond naturally.', 'Module Test', ARRAY['Use complete sentences — not single words','Pause between phrases, not between words','Don''t translate from Arabic word-for-word']::text[], ARRAY['die Familie','der Vater','die Mutter','der Bruder','die Schwester','die Geschwister','der Sohn','die Tochter']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-00006598ba15', '✏️ Schreiben: Test: Familie und Alltag', 'Write an email to a German friend about "Module Test". Tell them what you learned, what you found interesting, and ask two questions about their experience with this topic. Use at least 8 vocabulary words from this lesson. Sign off naturally ("Viele Grüße", "Liebe Grüße").', ARRAY['Start with "Hallo" or "Liebe/r"','Keep sentences short (Subject-Verb-Object)','End with a friendly farewell']::text[], ARRAY['die Familie','der Vater','die Mutter','der Bruder','die Schwester','die Geschwister','der Sohn','die Tochter']::text[], ARRAY['Sentence structure','Vocabulary usage']::text[], 50, 100, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00006598ba15', 'Test: Familie und Alltag — Roleplay', 'Module Test', 'Student', 'Teacher', 'Practice conversation about Module Test', 'Hallo! Lass uns über dieses Thema sprechen.', 'beginner', 1, ARRAY['die Familie','der Vater','die Mutter','der Bruder','die Schwester','die Geschwister','der Sohn','die Tochter']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00006598ba15', 'Test: Familie und Alltag — Advanced Roleplay', 'Module Test', 'Customer', 'Assistant', 'Extended conversation about Module Test', 'Guten Tag! Wie kann ich Ihnen helfen?', 'beginner', 2, ARRAY['die Familie','der Vater','die Mutter','der Bruder','die Schwester','die Geschwister','der Sohn','die Tochter']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-00006598ba15', 'Test: Familie und Alltag — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Test: Familie und Alltag".', 'Creative practice for Module Test', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-00006598ba15', '📚 Hausaufgabe: Test: Familie und Alltag', 'Complete these tasks to reinforce "Test: Familie und Alltag".', 'mixed', '[{"description":"Create 10 flashcards from this lesson''s vocabulary — write German on one side, Arabic on the other. Test yourself 3 times."},{"description":"Write 6 sentences about Module Test: 2 statements, 2 questions, 2 negations — all using possessive_articles."},{"description":"Record yourself reading the dialogue aloud. Listen to the recording and note 3 things to improve."},{"description":"Find 3 real German websites, videos, or articles about Module Test. Note 5 new words you discovered."}]', 50, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-00006598ba15', '🎯 Great work! In this lesson you learned 142 new words about Module Test. You practiced possessive_articles — an important grammar topic for A1 level. You read a text, listened to a dialogue, and practiced speaking and writing. Keep going!', '["142 vocabulary items about Module Test","possessive_articles — grammar explanation and practice","Reading comprehension: text about Module Test","Listening comprehension: dialogue about Module Test","Speaking practice: roleplay/discussion about Module Test","Writing task: text about Module Test"]', '[{"title":"Test: Familie und Alltag Review","summary":"possessive_articles — the main grammar focus. Focus on understanding when to use this structure and forming basic sentences."}]', ARRAY['die Familie (family)','der Vater (father)','die Mutter (mother)','der Bruder (brother)','die Schwester (sister)']::text[], ARRAY['Don''t translate from Arabic word-for-word — German has different sentence structure','Learn every noun with its article: NEVER learn "Tisch" alone, always "der Tisch"','Verb always in position 2 in main clauses']::text[], ARRAY['Practice 15-20 minutes daily — consistency beats intensity','Speak out loud: German pronunciation needs muscle memory','Use the new vocabulary within 24 hours or you''ll forget it','Watch German YouTube videos about Module Test for authentic input']::text[]);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006598ba15', 'Pronunciation: German sounds for "family"', 'In German, vowels are pure — unlike English diphthongs. The "ch" sound after a, o, u is guttural (like Arabic خ). After e, i, ä, ö, ü it''s soft (like English "huge" without the "u").

Common mistake for Arabic speakers: Arabic speakers tend to over-emphasise consonants. German flows — connect words smoothly (e.g., "Ich habe" becomes /ɪçabə/ not /ɪç ˈhaːbə/).', '[]', '[{"german":"die Familie","arabic":"","english":"","phonetic":""},{"german":"der Vater","arabic":"","english":"","phonetic":""},{"german":"die Mutter","arabic":"","english":"","phonetic":""},{"german":"der Bruder","arabic":"","english":"","phonetic":""}]', '[]', 10);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006598ba15', 'translation', 'Translate to German: "I use the word "family" in a sentence about Module Test."', '[]', 'Meine Familie ist groß.', 'Use die  "die Familie" with the correct possessive_articles form.', 1, 40);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006598ba15', 'translation', 'Translate to German: "I use the word "father" in a sentence about Module Test."', '[]', 'Mein Vater ist Ingenieur.', 'Use der  "der Vater" with the correct possessive_articles form.', 1, 41);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006598ba15', 'translation', 'Translate to German: "I use the word "mother" in a sentence about Module Test."', '[]', 'Meine Mutter kocht gut.', 'Use die  "die Mutter" with the correct possessive_articles form.', 1, 42);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006598ba15', 'Culture: 🇩🇪 Deutsche Kultur: Module Test', 'In Germany, Module Test is approached with typical German directness and efficiency. Germans value clarity over small talk. When discussing Module Test, expect honest feedback and straightforward questions. This is not rudeness — it''s cultural. Arabic speakers often find this too direct at first, but you''ll appreciate it once you get used to it.

في ألمانيا، يتم التعامل مع Module Test بوضوح وكفاءة. الألمان يقدرون الوضوح أكثر من المجاملات. لا تعتبر هذه وقاحة - إنها ثقافة مختلفة.', '["Tip: Always use \"Sie\" (formal) with strangers and colleagues","Tip: Germans appreciate punctuality — arrive 5 minutes early","Tip: Direct feedback is a sign of respect, not criticism","Tip: Prepare factual arguments, not emotional appeals"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006598ba15', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Confusing \"mein\" and \"meine\"","correction":"mein for masculine/neuter, meine for feminine/plural","explanation":"Arabic has no grammatical gender in possessive particles."},{"mistake":"Using the wrong article (der/die/das) for nouns","correction":"Learn each noun with its article as one piece","explanation":"Arabic has no articles for nouns without gender connection"}]', 30);

  -- Module 3: Wohnen
  insert into public.course_modules (id, level_id, title, description, objectives, order_index, estimated_hours, is_published)
  values ('00000000-0000-4000-a000-000039b4d360', 'A1', 'Wohnen', 'Learn vocabulary about homes, furniture, and describing where you live.', '["Describe your home and rooms","Name furniture and household items","Use definite and indefinite articles","Use adjectives after \"sein\""]', 3, 4, true)
  on conflict (id) do nothing;

  -- Lesson 1: Mein Zuhause (L-A1-03-01)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-000065992e6f', '00000000-0000-4000-a000-000039b4d360', 'Mein Zuhause', 'Learn rooms and basic furniture vocabulary with articles.', 'Home & Rooms', 'vocabulary', '["Understand and use 142 key vocabulary words about Home & Rooms","Apply articles_nominative_akkusativ correctly in sentences","Read and comprehend a text about Home & Rooms","Listen and understand a natural dialogue about Home & Rooms","Speak about Home & Rooms with confidence","Write a short text about Home & Rooms using new vocabulary"]', 30, 1, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, french_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-000065992e6f', 'das Haus', 'البيت', 'house', 'la maison', 'das', 'die Häuser', 'noun', 'Das Haus ist groß.', 'The house is big.', 'A1', 1),
  ('00000000-0000-4000-a000-000065992e6f', 'die Wohnung', 'الشقة', 'apartment', 'l''appartement', 'die', 'die Wohnungen', 'noun', 'Meine Wohnung hat drei Zimmer.', 'My apartment has three rooms.', 'A1', 2),
  ('00000000-0000-4000-a000-000065992e6f', 'das Zimmer', 'الغرفة', 'room', 'la chambre', 'das', 'die Zimmer', 'noun', 'Das Zimmer ist hell.', 'The room is bright.', 'A1', 3),
  ('00000000-0000-4000-a000-000065992e6f', 'die Küche', 'المطبخ', 'kitchen', 'la cuisine', 'die', 'die Küchen', 'noun', 'Die Küche ist modern.', 'The kitchen is modern.', 'A1', 4),
  ('00000000-0000-4000-a000-000065992e6f', 'das Schlafzimmer', 'غرفة النوم', 'bedroom', 'la chambre à coucher', 'das', NULL, 'noun', 'Mein Schlafzimmer ist gemütlich.', 'My bedroom is cozy.', 'A1', 5),
  ('00000000-0000-4000-a000-000065992e6f', 'das Bad', 'الحمام', 'bathroom', 'la salle de bains', 'das', 'die Bäder', 'noun', 'Das Bad ist sauber.', 'The bathroom is clean.', 'A1', 6),
  ('00000000-0000-4000-a000-000065992e6f', 'der Tisch', 'الطاولة', 'table', 'la table', 'der', 'die Tische', 'noun', 'Der Tisch ist aus Holz.', 'The table is made of wood.', 'A1', 7),
  ('00000000-0000-4000-a000-000065992e6f', 'der Stuhl', 'الكرسي', 'chair', 'la chaise', 'der', 'die Stühle', 'noun', 'Der Stuhl ist bequem.', 'The chair is comfortable.', 'A1', 8),
  ('00000000-0000-4000-a000-000065992e6f', 'das Bett', 'السرير', 'bed', 'le lit', 'das', 'die Betten', 'noun', 'Das Bett ist groß.', 'The bed is big.', 'A1', 9),
  ('00000000-0000-4000-a000-000065992e6f', 'wohnen', 'يسكن', 'to live', 'habiter', NULL, NULL, 'verb', 'Ich wohne in Berlin.', 'I live in Berlin.', 'A1', 10),
  ('00000000-0000-4000-a000-000065992e6f', 'Hallo', 'مرحباً', 'hello', 'bonjour', NULL, NULL, 'interjection', 'Hallo, wie geht es dir?', 'Hello, how are you?', 'A1', 11),
  ('00000000-0000-4000-a000-000065992e6f', 'Guten Morgen', 'صباح الخير', 'good morning', 'bonjour (le matin)', NULL, NULL, 'phrase', 'Guten Morgen, Herr Müller.', 'Good morning, Mr. Müller.', 'A1', 12),
  ('00000000-0000-4000-a000-000065992e6f', 'Guten Tag', 'نهارك سعيد', 'good day', 'bonjour (l''après-midi)', NULL, NULL, 'phrase', 'Guten Tag, Frau Schmidt.', 'Good day, Mrs. Schmidt.', 'A1', 13),
  ('00000000-0000-4000-a000-000065992e6f', 'Tschüss', 'مع السلامة', 'bye', 'au revoir / salut', NULL, NULL, 'interjection', 'Tschüss, bis morgen!', 'Bye, see you tomorrow!', 'A1', 14),
  ('00000000-0000-4000-a000-000065992e6f', 'der Name', 'الاسم', 'name', 'le nom', 'der', 'die Namen', 'noun', 'Mein Name ist Anna.', 'My name is Anna.', 'A1', 15),
  ('00000000-0000-4000-a000-000065992e6f', 'wie', 'كيف', 'how', 'comment', NULL, NULL, 'adverb', 'Wie heißt du?', 'What is your name?', 'A1', 16),
  ('00000000-0000-4000-a000-000065992e6f', 'freuen', 'يسر', 'to be pleased', 'se réjouir', NULL, NULL, 'verb', 'Ich freue mich, dich kennenzulernen.', 'I am pleased to meet you.', 'A1', 17),
  ('00000000-0000-4000-a000-000065992e6f', 'Willkommen', 'أهلاً وسهلاً', 'welcome', 'bienvenue', NULL, NULL, 'interjection', 'Willkommen in Deutschland!', 'Welcome to Germany!', 'A1', 18),
  ('00000000-0000-4000-a000-000065992e6f', 'die Familie', 'العائلة', 'family', 'la famille', 'die', 'die Familien', 'noun', 'Meine Familie ist groß.', 'My family is big.', 'A1', 19),
  ('00000000-0000-4000-a000-000065992e6f', 'der Vater', 'الأب', 'father', 'le père', 'der', 'die Väter', 'noun', 'Mein Vater ist Ingenieur.', 'My father is an engineer.', 'A1', 20),
  ('00000000-0000-4000-a000-000065992e6f', 'die Mutter', 'الأم', 'mother', 'la mère', 'die', 'die Mütter', 'noun', 'Meine Mutter kocht gut.', 'My mother cooks well.', 'A1', 21),
  ('00000000-0000-4000-a000-000065992e6f', 'der Bruder', 'الأخ', 'brother', 'le frère', 'der', 'die Brüder', 'noun', 'Mein Bruder ist 15 Jahre alt.', 'My brother is 15 years old.', 'A1', 22),
  ('00000000-0000-4000-a000-000065992e6f', 'die Schwester', 'الأخت', 'sister', 'la sœur', 'die', 'die Schwestern', 'noun', 'Meine Schwester studiert Medizin.', 'My sister studies medicine.', 'A1', 23),
  ('00000000-0000-4000-a000-000065992e6f', 'die Geschwister', 'الإخوة', 'siblings', 'les frères et sœurs', 'die', NULL, 'noun', 'Hast du Geschwister?', 'Do you have siblings?', 'A1', 24),
  ('00000000-0000-4000-a000-000065992e6f', 'der Sohn', 'الابن', 'son', 'le fils', 'der', 'die Söhne', 'noun', 'Wir haben einen Sohn.', 'We have a son.', 'A1', 25),
  ('00000000-0000-4000-a000-000065992e6f', 'die Tochter', 'الابنة', 'daughter', 'la fille', 'die', 'die Töchter', 'noun', 'Meine Tochter geht zur Schule.', 'My daughter goes to school.', 'A1', 26),
  ('00000000-0000-4000-a000-000065992e6f', 'die Großeltern', 'الأجداد', 'grandparents', 'les grands-parents', 'die', NULL, 'noun', 'Meine Großeltern wohnen auf dem Land.', 'My grandparents live in the countryside.', 'A1', 27),
  ('00000000-0000-4000-a000-000065992e6f', 'verheiratet', 'متزوج', 'married', 'marié(e)', NULL, NULL, 'adjective', 'Meine Eltern sind verheiratet.', 'My parents are married.', 'A1', 28),
  ('00000000-0000-4000-a000-000065992e6f', 'das Brot', 'الخبز', 'bread', 'le pain', 'das', 'die Brote', 'noun', 'Ich kaufe ein Brot.', 'I buy a loaf of bread.', 'A1', 29),
  ('00000000-0000-4000-a000-000065992e6f', 'die Milch', 'الحليب', 'milk', 'le lait', 'die', NULL, 'noun', 'Die Milch ist frisch.', 'The milk is fresh.', 'A1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000065992e6f', 'Nominativ und Akkusativ (Nominative and Accusative) / الرفع والنصب', 'German has four cases. The nominative is for the subject (who does the action). The accusative is for the direct object (who receives the action). The article changes: der → den (masculine), die stays die (feminine), das stays das (neuter), die stays die (plural).', '[{"rule":"Nominativ: der/die/das/die (subject)","note":"Der Mann kauft. (The man buys.)"},{"rule":"Akkusativ: den/die/das/die (direct object)","note":"Ich sehe den Mann. (I see the man.)"},{"rule":"Only masculine changes: der → den","note":"Die Frau (Nom) → die Frau (Akk). No change!"}]', '[{"german":"Der Mann kauft den Tisch.","arabic":"الرجل يشتري الطاولة.","english":"The man buys the table."},{"german":"Die Frau sieht den Hund.","arabic":"المرأة ترى الكلب.","english":"The woman sees the dog."},{"german":"Das Kind isst das Brot.","arabic":"الطفل يأكل الخبز.","english":"The child eats the bread."}]', '[{"mistake":"Ich sehe der Mann","correction":"Ich sehe den Mann","explanation":"After the verb \"sehen\", the object is in accusative. Der → den."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000065992e6f', 'multiple_choice', 'Which German word matches "house"?', '["das Zimmer","die Küche","das Haus","das Schlafzimmer"]', 'das Haus', '"house" = "das Haus" in German. Article: das Plural: die Häuser', 1, 1),
  ('00000000-0000-4000-a000-000065992e6f', 'multiple_choice', 'Which German word matches "apartment"?', '["das Zimmer","die Küche","die Wohnung","das Haus"]', 'die Wohnung', '"apartment" = "die Wohnung" in German. Article: die Plural: die Wohnungen', 1, 2),
  ('00000000-0000-4000-a000-000065992e6f', 'multiple_choice', 'Which German word matches "room"?', '["die Wohnung","das Haus","das Schlafzimmer","das Zimmer"]', 'das Zimmer', '"room" = "das Zimmer" in German. Article: das Plural: die Zimmer', 1, 3),
  ('00000000-0000-4000-a000-000065992e6f', 'multiple_choice', 'Which German word matches "kitchen"?', '["das Schlafzimmer","das Zimmer","die Wohnung","das Haus"]', 'die Küche', '"kitchen" = "die Küche" in German. Article: die Plural: die Küchen', 1, 4),
  ('00000000-0000-4000-a000-000065992e6f', 'multiple_choice', 'Which German word matches "bedroom"?', '["das Schlafzimmer","das Haus","die Wohnung","das Zimmer"]', 'das Schlafzimmer', '"bedroom" = "das Schlafzimmer" in German. Article: das ', 1, 5),
  ('00000000-0000-4000-a000-000065992e6f', 'fill_gap', 'Complete the sentence: Ich ___ gern über Home & Rooms. (sprechen)', '["spreche","sprichst","spricht","sprechen"]', 'spreche', 'ich spreche gern = I like to speak. Stem: sprech- + e.', 2, 6),
  ('00000000-0000-4000-a000-000065992e6f', 'translation', 'Translate to German: "I am learning about Home & Rooms."', '["Ich lerne über Home & Rooms.","Ich lerne Home & Rooms.","Lerne ich Home & Rooms."]', 'Ich lerne über Home & Rooms.', '"Ich lerne über..." = "I am learning about..."', 2, 7),
  ('00000000-0000-4000-a000-000065992e6f', 'matching', 'Match: Which word pairs are correct?', '["das Haus - house, die Wohnung - apartment"]', 'Matched correctly', 'Each German word has a unique English equivalent.', 2, 8);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-000065992e6f', 'multiple_choice', 'What does "das Haus" mean in English?', '["house","to run","beautiful","yesterday"]', 'house', 1, 1),
  ('00000000-0000-4000-a000-000065992e6f', 'multiple_choice', 'What is the correct article for "die Wohnung"?', '["der","die","das","den"]', 'die', 1, 2),
  ('00000000-0000-4000-a000-000065992e6f', 'true_false', 'The word "das Zimmer" is related to Home & Rooms.', '["True","False"]', 'True', 1, 3),
  ('00000000-0000-4000-a000-000065992e6f', 'multiple_choice', 'Which sentence correctly uses articles_nominative_akkusativ?', '["Der Mann kauft den Tisch.","Die Frau sieht den Hund.","Das Kind isst das Brot."]', 'Der Mann kauft den Tisch.', 2, 4),
  ('00000000-0000-4000-a000-000065992e6f', 'true_false', 'German word order puts the verb in second position in main clauses.', '["True","False"]', 'True', 1, 5),
  ('00000000-0000-4000-a000-000065992e6f', 'fill_blank', 'Complete: Ich ___ (kitchen) Deutsch.', '["die Küche","lernt","lernst","lernen"]', 'lerne', 2, 6),
  ('00000000-0000-4000-a000-000065992e6f', 'multiple_choice', 'What is the German word for "bedroom"?', '["das Schlafzimmer","das Bad","der Tisch","der Stuhl"]', 'das Schlafzimmer', 1, 7),
  ('00000000-0000-4000-a000-000065992e6f', 'true_false', 'In German, ALL nouns are always capitalised.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-000065992e6f', 'multiple_choice', 'How do you say "please" in a restaurant in Germany?', '["Bitte","Danke","Tschüss","Hallo"]', 'Bitte', 1, 9),
  ('00000000-0000-4000-a000-000065992e6f', 'fill_blank', 'Wo ___ (to live) du?', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 2, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, french_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-000065992e6f', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', NULL, 'Used in Wohnen', 'formal', false, 1),
  ('00000000-0000-4000-a000-000065992e6f', 'Guten Tag!', 'Good day!', 'نهارك سعيد!', NULL, 'Used in Wohnen', 'formal', false, 2),
  ('00000000-0000-4000-a000-000065992e6f', 'Hallo, wie geht es Ihnen?', 'Hello, how are you?', 'مرحباً، كيف حالكم؟', NULL, 'Used in Wohnen', 'formal', false, 3),
  ('00000000-0000-4000-a000-000065992e6f', 'Schön, Sie kennenzulernen!', 'Nice to meet you!', 'سعيد بلقائكم!', NULL, 'Used in Wohnen', 'formal', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-000065992e6f', 'das das Haus (die Häuser)', 'house — البيت', 'noun', 'vocabulary', 1),
  ('00000000-0000-4000-a000-000065992e6f', 'die die Wohnung (die Wohnungen)', 'apartment — الشقة', 'noun', 'vocabulary', 2),
  ('00000000-0000-4000-a000-000065992e6f', 'das das Zimmer (die Zimmer)', 'room — الغرفة', 'noun', 'vocabulary', 3),
  ('00000000-0000-4000-a000-000065992e6f', 'die die Küche (die Küchen)', 'kitchen — المطبخ', 'noun', 'vocabulary', 4),
  ('00000000-0000-4000-a000-000065992e6f', 'das das Schlafzimmer', 'bedroom — غرفة النوم', 'noun', 'vocabulary', 5),
  ('00000000-0000-4000-a000-000065992e6f', 'das das Bad (die Bäder)', 'bathroom — الحمام', 'noun', 'vocabulary', 6),
  ('00000000-0000-4000-a000-000065992e6f', 'der der Tisch (die Tische)', 'table — الطاولة', 'noun', 'vocabulary', 7),
  ('00000000-0000-4000-a000-000065992e6f', 'der der Stuhl (die Stühle)', 'chair — الكرسي', 'noun', 'vocabulary', 8),
  ('00000000-0000-4000-a000-000065992e6f', 'das das Bett (die Betten)', 'bed — السرير', 'noun', 'vocabulary', 9),
  ('00000000-0000-4000-a000-000065992e6f', 'wohnen', 'to live — يسكن', 'verb', 'vocabulary', 10),
  ('00000000-0000-4000-a000-000065992e6f', 'Hallo', 'hello — مرحباً', 'interjection', 'vocabulary', 11),
  ('00000000-0000-4000-a000-000065992e6f', 'Guten Morgen', 'good morning — صباح الخير', 'phrase', 'vocabulary', 12),
  ('00000000-0000-4000-a000-000065992e6f', 'Guten Tag', 'good day — نهارك سعيد', 'phrase', 'vocabulary', 13),
  ('00000000-0000-4000-a000-000065992e6f', 'Tschüss', 'bye — مع السلامة', 'interjection', 'vocabulary', 14),
  ('00000000-0000-4000-a000-000065992e6f', 'der der Name (die Namen)', 'name — الاسم', 'noun', 'vocabulary', 15),
  ('00000000-0000-4000-a000-000065992e6f', 'Der Mann kauft den Tisch.', 'The man buys the table.', 'Nominativ und Akkusativ (Nominative and Accusative)', 'grammar', 16),
  ('00000000-0000-4000-a000-000065992e6f', 'Die Frau sieht den Hund.', 'The woman sees the dog.', 'Nominativ und Akkusativ (Nominative and Accusative)', 'grammar', 17),
  ('00000000-0000-4000-a000-000065992e6f', 'Das Kind isst das Brot.', 'The child eats the bread.', 'Nominativ und Akkusativ (Nominative and Accusative)', 'grammar', 18);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, french_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-000065992e6f', 'Mein Zuhause — Leseübung', 'Ich wohne in einer schönen Wohnung in Berlin. Die Wohnung hat drei Zimmer: ein Wohnzimmer, ein Schlafzimmer und eine Küche. Das Wohnzimmer ist groß und gemütlich. Es gibt ein Sofa, einen Tisch und einen Schrank. Die Küche ist modern. Der Herd und der Kühlschrank sind neu. Mein Schlafzimmer ist klein, aber hell. Das Bett ist bequem. Ich fühle mich in meiner Wohnung sehr wohl.', 'I live in a nice apartment in Berlin. The apartment has three rooms: a living room, a bedroom and a kitchen. The living room is big and cozy. There is a sofa, a table and a wardrobe. The kitchen is modern. The stove and refrigerator are new. My bedroom is small but bright. The bed is comfortable. I feel very comfortable in my apartment.', 'أسكن في شقة جميلة في برلين. الشقة فيها ثلاث غرف: غرفة معيشة وغرفة نوم ومطبخ. غرفة المعيشة كبيرة ومريحة. يوجد أريكة وطاولة وخزانة. المطبخ حديث. الموقد والثلاجة جديدان. غرفة نومي صغيرة لكنها مشرقة. السرير مريح. أشعر براحة كبيرة في شقتي.', NULL, 64, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, french_translation, duration_seconds, speaker_count, scenario) values
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

[Lehrerin]: ممتاز! إلى الغد!', '[Lehrerin]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: ', 72, 2, 'Wohnen');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-000065992e6f', '🔊 Sprechen: Mein Zuhause', 'Roleplay: You are in a Hamburg office. Introduce yourself and talk about Home & Rooms. Your partner (AI) will respond naturally.', 'Home & Rooms', ARRAY['Use complete sentences — not single words','Pause between phrases, not between words','Don''t translate from Arabic word-for-word']::text[], ARRAY['das Haus','die Wohnung','das Zimmer','die Küche','das Schlafzimmer','das Bad','der Tisch','der Stuhl']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-000065992e6f', '✏️ Schreiben: Mein Zuhause', 'Write an email to a German friend about "Home & Rooms". Tell them what you learned, what you found interesting, and ask two questions about their experience with this topic. Use at least 8 vocabulary words from this lesson. Sign off naturally ("Viele Grüße", "Liebe Grüße").', ARRAY['Start with "Hallo" or "Liebe/r"','Keep sentences short (Subject-Verb-Object)','End with a friendly farewell']::text[], ARRAY['das Haus','die Wohnung','das Zimmer','die Küche','das Schlafzimmer','das Bad','der Tisch','der Stuhl']::text[], ARRAY['Sentence structure','Vocabulary usage']::text[], 50, 100, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000065992e6f', 'Mein Zuhause — Roleplay', 'Home & Rooms', 'Student', 'Teacher', 'Practice conversation about Home & Rooms', 'Hallo! Lass uns über dieses Thema sprechen.', 'beginner', 1, ARRAY['das Haus','die Wohnung','das Zimmer','die Küche','das Schlafzimmer','das Bad','der Tisch','der Stuhl']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000065992e6f', 'Mein Zuhause — Advanced Roleplay', 'Home & Rooms', 'Customer', 'Assistant', 'Extended conversation about Home & Rooms', 'Guten Tag! Wie kann ich Ihnen helfen?', 'beginner', 2, ARRAY['das Haus','die Wohnung','das Zimmer','die Küche','das Schlafzimmer','das Bad','der Tisch','der Stuhl']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-000065992e6f', 'Mein Zuhause — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Mein Zuhause".', 'Creative practice for Home & Rooms', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-000065992e6f', '📚 Hausaufgabe: Mein Zuhause', 'Complete these tasks to reinforce "Mein Zuhause".', 'mixed', '[{"description":"Create 10 flashcards from this lesson''s vocabulary — write German on one side, Arabic on the other. Test yourself 3 times."},{"description":"Write 6 sentences about Home & Rooms: 2 statements, 2 questions, 2 negations — all using articles_nominative_akkusativ."},{"description":"Record yourself reading the dialogue aloud. Listen to the recording and note 3 things to improve."},{"description":"Find 3 real German websites, videos, or articles about Home & Rooms. Note 5 new words you discovered."}]', 50, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-000065992e6f', '🎯 Great work! In this lesson you learned 142 new words about Home & Rooms. You practiced articles_nominative_akkusativ — an important grammar topic for A1 level. You read a text, listened to a dialogue, and practiced speaking and writing. Keep going!', '["142 vocabulary items about Home & Rooms","articles_nominative_akkusativ — grammar explanation and practice","Reading comprehension: text about Home & Rooms","Listening comprehension: dialogue about Home & Rooms","Speaking practice: roleplay/discussion about Home & Rooms","Writing task: text about Home & Rooms"]', '[{"title":"Mein Zuhause Review","summary":"articles_nominative_akkusativ — the main grammar focus. Focus on understanding when to use this structure and forming basic sentences."}]', ARRAY['das Haus (house)','die Wohnung (apartment)','das Zimmer (room)','die Küche (kitchen)','das Schlafzimmer (bedroom)']::text[], ARRAY['Don''t translate from Arabic word-for-word — German has different sentence structure','Learn every noun with its article: NEVER learn "Tisch" alone, always "der Tisch"','Verb always in position 2 in main clauses']::text[], ARRAY['Practice 15-20 minutes daily — consistency beats intensity','Speak out loud: German pronunciation needs muscle memory','Use the new vocabulary within 24 hours or you''ll forget it','Watch German YouTube videos about Home & Rooms for authentic input']::text[]);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000065992e6f', 'Pronunciation: German sounds for "home"', 'In German, vowels are pure — unlike English diphthongs. The "ch" sound after a, o, u is guttural (like Arabic خ). After e, i, ä, ö, ü it''s soft (like English "huge" without the "u").

Common mistake for Arabic speakers: Arabic speakers tend to over-emphasise consonants. German flows — connect words smoothly (e.g., "Ich habe" becomes /ɪçabə/ not /ɪç ˈhaːbə/).', '[]', '[{"german":"das Haus","arabic":"","english":"","phonetic":""},{"german":"die Wohnung","arabic":"","english":"","phonetic":""},{"german":"das Zimmer","arabic":"","english":"","phonetic":""},{"german":"die Küche","arabic":"","english":"","phonetic":""}]', '[]', 10);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000065992e6f', 'translation', 'Translate to German: "I use the word "house" in a sentence about Home & Rooms."', '[]', 'Das Haus ist groß.', 'Use das  "das Haus" with the correct articles_nominative_akkusativ form.', 1, 40);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000065992e6f', 'translation', 'Translate to German: "I use the word "apartment" in a sentence about Home & Rooms."', '[]', 'Meine Wohnung hat drei Zimmer.', 'Use die  "die Wohnung" with the correct articles_nominative_akkusativ form.', 1, 41);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000065992e6f', 'translation', 'Translate to German: "I use the word "room" in a sentence about Home & Rooms."', '[]', 'Das Zimmer ist hell.', 'Use das  "das Zimmer" with the correct articles_nominative_akkusativ form.', 1, 42);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000065992e6f', 'Culture: 🇩🇪 Deutsche Kultur: Home & Rooms', 'In Germany, Home & Rooms is approached with typical German directness and efficiency. Germans value clarity over small talk. When discussing Home & Rooms, expect honest feedback and straightforward questions. This is not rudeness — it''s cultural. Arabic speakers often find this too direct at first, but you''ll appreciate it once you get used to it.

في ألمانيا، يتم التعامل مع Home & Rooms بوضوح وكفاءة. الألمان يقدرون الوضوح أكثر من المجاملات. لا تعتبر هذه وقاحة - إنها ثقافة مختلفة.', '["Tip: Always use \"Sie\" (formal) with strangers and colleagues","Tip: Germans appreciate punctuality — arrive 5 minutes early","Tip: Direct feedback is a sign of respect, not criticism","Tip: Prepare factual arguments, not emotional appeals"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000065992e6f', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Forgetting the difference between \"wohnen\" and \"leben\"","correction":"wohnen = to live somewhere (address), leben = to be alive/exist","explanation":"Arabic uses one verb \"sakana\" for both concepts."},{"mistake":"Using the wrong article (der/die/das) for nouns","correction":"Learn each noun with its article as one piece","explanation":"Arabic has no articles for nouns without gender connection"}]', 30);

  -- Lesson 2: Möbel und Haushaltsgegenstände (L-A1-03-02)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-000065992e70', '00000000-0000-4000-a000-000039b4d360', 'Möbel und Haushaltsgegenstände', 'Detailed furniture and household item vocabulary.', 'Furniture', 'vocabulary', '["Understand and use 142 key vocabulary words about Furniture","Apply articles_nominative_akkusativ correctly in sentences","Read and comprehend a text about Furniture","Listen and understand a natural dialogue about Furniture","Speak about Furniture with confidence","Write a short text about Furniture using new vocabulary"]', 30, 2, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, french_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-000065992e70', 'das Haus', 'البيت', 'house', 'la maison', 'das', 'die Häuser', 'noun', 'Das Haus ist groß.', 'The house is big.', 'A1', 1),
  ('00000000-0000-4000-a000-000065992e70', 'die Wohnung', 'الشقة', 'apartment', 'l''appartement', 'die', 'die Wohnungen', 'noun', 'Meine Wohnung hat drei Zimmer.', 'My apartment has three rooms.', 'A1', 2),
  ('00000000-0000-4000-a000-000065992e70', 'das Zimmer', 'الغرفة', 'room', 'la chambre', 'das', 'die Zimmer', 'noun', 'Das Zimmer ist hell.', 'The room is bright.', 'A1', 3),
  ('00000000-0000-4000-a000-000065992e70', 'die Küche', 'المطبخ', 'kitchen', 'la cuisine', 'die', 'die Küchen', 'noun', 'Die Küche ist modern.', 'The kitchen is modern.', 'A1', 4),
  ('00000000-0000-4000-a000-000065992e70', 'das Schlafzimmer', 'غرفة النوم', 'bedroom', 'la chambre à coucher', 'das', NULL, 'noun', 'Mein Schlafzimmer ist gemütlich.', 'My bedroom is cozy.', 'A1', 5),
  ('00000000-0000-4000-a000-000065992e70', 'das Bad', 'الحمام', 'bathroom', 'la salle de bains', 'das', 'die Bäder', 'noun', 'Das Bad ist sauber.', 'The bathroom is clean.', 'A1', 6),
  ('00000000-0000-4000-a000-000065992e70', 'der Tisch', 'الطاولة', 'table', 'la table', 'der', 'die Tische', 'noun', 'Der Tisch ist aus Holz.', 'The table is made of wood.', 'A1', 7),
  ('00000000-0000-4000-a000-000065992e70', 'der Stuhl', 'الكرسي', 'chair', 'la chaise', 'der', 'die Stühle', 'noun', 'Der Stuhl ist bequem.', 'The chair is comfortable.', 'A1', 8),
  ('00000000-0000-4000-a000-000065992e70', 'das Bett', 'السرير', 'bed', 'le lit', 'das', 'die Betten', 'noun', 'Das Bett ist groß.', 'The bed is big.', 'A1', 9),
  ('00000000-0000-4000-a000-000065992e70', 'wohnen', 'يسكن', 'to live', 'habiter', NULL, NULL, 'verb', 'Ich wohne in Berlin.', 'I live in Berlin.', 'A1', 10),
  ('00000000-0000-4000-a000-000065992e70', 'Hallo', 'مرحباً', 'hello', 'bonjour', NULL, NULL, 'interjection', 'Hallo, wie geht es dir?', 'Hello, how are you?', 'A1', 11),
  ('00000000-0000-4000-a000-000065992e70', 'Guten Morgen', 'صباح الخير', 'good morning', 'bonjour (le matin)', NULL, NULL, 'phrase', 'Guten Morgen, Herr Müller.', 'Good morning, Mr. Müller.', 'A1', 12),
  ('00000000-0000-4000-a000-000065992e70', 'Guten Tag', 'نهارك سعيد', 'good day', 'bonjour (l''après-midi)', NULL, NULL, 'phrase', 'Guten Tag, Frau Schmidt.', 'Good day, Mrs. Schmidt.', 'A1', 13),
  ('00000000-0000-4000-a000-000065992e70', 'Tschüss', 'مع السلامة', 'bye', 'au revoir / salut', NULL, NULL, 'interjection', 'Tschüss, bis morgen!', 'Bye, see you tomorrow!', 'A1', 14),
  ('00000000-0000-4000-a000-000065992e70', 'der Name', 'الاسم', 'name', 'le nom', 'der', 'die Namen', 'noun', 'Mein Name ist Anna.', 'My name is Anna.', 'A1', 15),
  ('00000000-0000-4000-a000-000065992e70', 'wie', 'كيف', 'how', 'comment', NULL, NULL, 'adverb', 'Wie heißt du?', 'What is your name?', 'A1', 16),
  ('00000000-0000-4000-a000-000065992e70', 'freuen', 'يسر', 'to be pleased', 'se réjouir', NULL, NULL, 'verb', 'Ich freue mich, dich kennenzulernen.', 'I am pleased to meet you.', 'A1', 17),
  ('00000000-0000-4000-a000-000065992e70', 'Willkommen', 'أهلاً وسهلاً', 'welcome', 'bienvenue', NULL, NULL, 'interjection', 'Willkommen in Deutschland!', 'Welcome to Germany!', 'A1', 18),
  ('00000000-0000-4000-a000-000065992e70', 'die Familie', 'العائلة', 'family', 'la famille', 'die', 'die Familien', 'noun', 'Meine Familie ist groß.', 'My family is big.', 'A1', 19),
  ('00000000-0000-4000-a000-000065992e70', 'der Vater', 'الأب', 'father', 'le père', 'der', 'die Väter', 'noun', 'Mein Vater ist Ingenieur.', 'My father is an engineer.', 'A1', 20),
  ('00000000-0000-4000-a000-000065992e70', 'die Mutter', 'الأم', 'mother', 'la mère', 'die', 'die Mütter', 'noun', 'Meine Mutter kocht gut.', 'My mother cooks well.', 'A1', 21),
  ('00000000-0000-4000-a000-000065992e70', 'der Bruder', 'الأخ', 'brother', 'le frère', 'der', 'die Brüder', 'noun', 'Mein Bruder ist 15 Jahre alt.', 'My brother is 15 years old.', 'A1', 22),
  ('00000000-0000-4000-a000-000065992e70', 'die Schwester', 'الأخت', 'sister', 'la sœur', 'die', 'die Schwestern', 'noun', 'Meine Schwester studiert Medizin.', 'My sister studies medicine.', 'A1', 23),
  ('00000000-0000-4000-a000-000065992e70', 'die Geschwister', 'الإخوة', 'siblings', 'les frères et sœurs', 'die', NULL, 'noun', 'Hast du Geschwister?', 'Do you have siblings?', 'A1', 24),
  ('00000000-0000-4000-a000-000065992e70', 'der Sohn', 'الابن', 'son', 'le fils', 'der', 'die Söhne', 'noun', 'Wir haben einen Sohn.', 'We have a son.', 'A1', 25),
  ('00000000-0000-4000-a000-000065992e70', 'die Tochter', 'الابنة', 'daughter', 'la fille', 'die', 'die Töchter', 'noun', 'Meine Tochter geht zur Schule.', 'My daughter goes to school.', 'A1', 26),
  ('00000000-0000-4000-a000-000065992e70', 'die Großeltern', 'الأجداد', 'grandparents', 'les grands-parents', 'die', NULL, 'noun', 'Meine Großeltern wohnen auf dem Land.', 'My grandparents live in the countryside.', 'A1', 27),
  ('00000000-0000-4000-a000-000065992e70', 'verheiratet', 'متزوج', 'married', 'marié(e)', NULL, NULL, 'adjective', 'Meine Eltern sind verheiratet.', 'My parents are married.', 'A1', 28),
  ('00000000-0000-4000-a000-000065992e70', 'das Brot', 'الخبز', 'bread', 'le pain', 'das', 'die Brote', 'noun', 'Ich kaufe ein Brot.', 'I buy a loaf of bread.', 'A1', 29),
  ('00000000-0000-4000-a000-000065992e70', 'die Milch', 'الحليب', 'milk', 'le lait', 'die', NULL, 'noun', 'Die Milch ist frisch.', 'The milk is fresh.', 'A1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000065992e70', 'Nominativ und Akkusativ (Nominative and Accusative) / الرفع والنصب', 'German has four cases. The nominative is for the subject (who does the action). The accusative is for the direct object (who receives the action). The article changes: der → den (masculine), die stays die (feminine), das stays das (neuter), die stays die (plural).', '[{"rule":"Nominativ: der/die/das/die (subject)","note":"Der Mann kauft. (The man buys.)"},{"rule":"Akkusativ: den/die/das/die (direct object)","note":"Ich sehe den Mann. (I see the man.)"},{"rule":"Only masculine changes: der → den","note":"Die Frau (Nom) → die Frau (Akk). No change!"}]', '[{"german":"Der Mann kauft den Tisch.","arabic":"الرجل يشتري الطاولة.","english":"The man buys the table."},{"german":"Die Frau sieht den Hund.","arabic":"المرأة ترى الكلب.","english":"The woman sees the dog."},{"german":"Das Kind isst das Brot.","arabic":"الطفل يأكل الخبز.","english":"The child eats the bread."}]', '[{"mistake":"Ich sehe der Mann","correction":"Ich sehe den Mann","explanation":"After the verb \"sehen\", the object is in accusative. Der → den."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000065992e70', 'multiple_choice', 'Which German word matches "house"?', '["das Haus","die Küche","die Wohnung","das Schlafzimmer"]', 'das Haus', '"house" = "das Haus" in German. Article: das Plural: die Häuser', 1, 1),
  ('00000000-0000-4000-a000-000065992e70', 'multiple_choice', 'Which German word matches "apartment"?', '["die Küche","das Haus","das Schlafzimmer","die Wohnung"]', 'die Wohnung', '"apartment" = "die Wohnung" in German. Article: die Plural: die Wohnungen', 1, 2),
  ('00000000-0000-4000-a000-000065992e70', 'multiple_choice', 'Which German word matches "room"?', '["das Schlafzimmer","das Haus","die Küche","das Zimmer"]', 'das Zimmer', '"room" = "das Zimmer" in German. Article: das Plural: die Zimmer', 1, 3),
  ('00000000-0000-4000-a000-000065992e70', 'multiple_choice', 'Which German word matches "kitchen"?', '["das Zimmer","die Wohnung","das Haus","das Schlafzimmer"]', 'die Küche', '"kitchen" = "die Küche" in German. Article: die Plural: die Küchen', 1, 4),
  ('00000000-0000-4000-a000-000065992e70', 'multiple_choice', 'Which German word matches "bedroom"?', '["das Schlafzimmer","die Wohnung","das Zimmer","das Haus"]', 'das Schlafzimmer', '"bedroom" = "das Schlafzimmer" in German. Article: das ', 1, 5),
  ('00000000-0000-4000-a000-000065992e70', 'fill_gap', 'Complete the sentence: Ich ___ gern über Furniture. (sprechen)', '["spreche","sprichst","spricht","sprechen"]', 'spreche', 'ich spreche gern = I like to speak. Stem: sprech- + e.', 2, 6),
  ('00000000-0000-4000-a000-000065992e70', 'translation', 'Translate to German: "I am learning about Furniture."', '["Ich lerne über Furniture.","Ich lerne Furniture.","Lerne ich Furniture."]', 'Ich lerne über Furniture.', '"Ich lerne über..." = "I am learning about..."', 2, 7),
  ('00000000-0000-4000-a000-000065992e70', 'matching', 'Match: Which word pairs are correct?', '["das Haus - house, die Wohnung - apartment"]', 'Matched correctly', 'Each German word has a unique English equivalent.', 2, 8);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-000065992e70', 'multiple_choice', 'What does "das Haus" mean in English?', '["house","to run","beautiful","yesterday"]', 'house', 1, 1),
  ('00000000-0000-4000-a000-000065992e70', 'multiple_choice', 'What is the correct article for "die Wohnung"?', '["der","die","das","den"]', 'die', 1, 2),
  ('00000000-0000-4000-a000-000065992e70', 'true_false', 'The word "das Zimmer" is related to Furniture.', '["True","False"]', 'True', 1, 3),
  ('00000000-0000-4000-a000-000065992e70', 'multiple_choice', 'Which sentence correctly uses articles_nominative_akkusativ?', '["Der Mann kauft den Tisch.","Die Frau sieht den Hund.","Das Kind isst das Brot."]', 'Der Mann kauft den Tisch.', 2, 4),
  ('00000000-0000-4000-a000-000065992e70', 'true_false', 'German word order puts the verb in second position in main clauses.', '["True","False"]', 'True', 1, 5),
  ('00000000-0000-4000-a000-000065992e70', 'fill_blank', 'Complete: Ich ___ (kitchen) Deutsch.', '["die Küche","lernt","lernst","lernen"]', 'lerne', 2, 6),
  ('00000000-0000-4000-a000-000065992e70', 'multiple_choice', 'What is the German word for "bedroom"?', '["das Schlafzimmer","das Bad","der Tisch","der Stuhl"]', 'das Schlafzimmer', 1, 7),
  ('00000000-0000-4000-a000-000065992e70', 'true_false', 'In German, ALL nouns are always capitalised.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-000065992e70', 'multiple_choice', 'How do you say "please" in a restaurant in Germany?', '["Bitte","Danke","Tschüss","Hallo"]', 'Bitte', 1, 9),
  ('00000000-0000-4000-a000-000065992e70', 'fill_blank', 'Wo ___ (to live) du?', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 2, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, french_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-000065992e70', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', NULL, 'Used in Wohnen', 'formal', false, 1),
  ('00000000-0000-4000-a000-000065992e70', 'Guten Tag!', 'Good day!', 'نهارك سعيد!', NULL, 'Used in Wohnen', 'formal', false, 2),
  ('00000000-0000-4000-a000-000065992e70', 'Hallo, wie geht es Ihnen?', 'Hello, how are you?', 'مرحباً، كيف حالكم؟', NULL, 'Used in Wohnen', 'formal', false, 3),
  ('00000000-0000-4000-a000-000065992e70', 'Schön, Sie kennenzulernen!', 'Nice to meet you!', 'سعيد بلقائكم!', NULL, 'Used in Wohnen', 'formal', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-000065992e70', 'das das Haus (die Häuser)', 'house — البيت', 'noun', 'vocabulary', 1),
  ('00000000-0000-4000-a000-000065992e70', 'die die Wohnung (die Wohnungen)', 'apartment — الشقة', 'noun', 'vocabulary', 2),
  ('00000000-0000-4000-a000-000065992e70', 'das das Zimmer (die Zimmer)', 'room — الغرفة', 'noun', 'vocabulary', 3),
  ('00000000-0000-4000-a000-000065992e70', 'die die Küche (die Küchen)', 'kitchen — المطبخ', 'noun', 'vocabulary', 4),
  ('00000000-0000-4000-a000-000065992e70', 'das das Schlafzimmer', 'bedroom — غرفة النوم', 'noun', 'vocabulary', 5),
  ('00000000-0000-4000-a000-000065992e70', 'das das Bad (die Bäder)', 'bathroom — الحمام', 'noun', 'vocabulary', 6),
  ('00000000-0000-4000-a000-000065992e70', 'der der Tisch (die Tische)', 'table — الطاولة', 'noun', 'vocabulary', 7),
  ('00000000-0000-4000-a000-000065992e70', 'der der Stuhl (die Stühle)', 'chair — الكرسي', 'noun', 'vocabulary', 8),
  ('00000000-0000-4000-a000-000065992e70', 'das das Bett (die Betten)', 'bed — السرير', 'noun', 'vocabulary', 9),
  ('00000000-0000-4000-a000-000065992e70', 'wohnen', 'to live — يسكن', 'verb', 'vocabulary', 10),
  ('00000000-0000-4000-a000-000065992e70', 'Hallo', 'hello — مرحباً', 'interjection', 'vocabulary', 11),
  ('00000000-0000-4000-a000-000065992e70', 'Guten Morgen', 'good morning — صباح الخير', 'phrase', 'vocabulary', 12),
  ('00000000-0000-4000-a000-000065992e70', 'Guten Tag', 'good day — نهارك سعيد', 'phrase', 'vocabulary', 13),
  ('00000000-0000-4000-a000-000065992e70', 'Tschüss', 'bye — مع السلامة', 'interjection', 'vocabulary', 14),
  ('00000000-0000-4000-a000-000065992e70', 'der der Name (die Namen)', 'name — الاسم', 'noun', 'vocabulary', 15),
  ('00000000-0000-4000-a000-000065992e70', 'Der Mann kauft den Tisch.', 'The man buys the table.', 'Nominativ und Akkusativ (Nominative and Accusative)', 'grammar', 16),
  ('00000000-0000-4000-a000-000065992e70', 'Die Frau sieht den Hund.', 'The woman sees the dog.', 'Nominativ und Akkusativ (Nominative and Accusative)', 'grammar', 17),
  ('00000000-0000-4000-a000-000065992e70', 'Das Kind isst das Brot.', 'The child eats the bread.', 'Nominativ und Akkusativ (Nominative and Accusative)', 'grammar', 18);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, french_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-000065992e70', 'Möbel und Haushaltsgegenstände — Leseübung', 'Ich wohne in einer schönen Wohnung in Berlin. Die Wohnung hat drei Zimmer: ein Wohnzimmer, ein Schlafzimmer und eine Küche. Das Wohnzimmer ist groß und gemütlich. Es gibt ein Sofa, einen Tisch und einen Schrank. Die Küche ist modern. Der Herd und der Kühlschrank sind neu. Mein Schlafzimmer ist klein, aber hell. Das Bett ist bequem. Ich fühle mich in meiner Wohnung sehr wohl.', 'I live in a nice apartment in Berlin. The apartment has three rooms: a living room, a bedroom and a kitchen. The living room is big and cozy. There is a sofa, a table and a wardrobe. The kitchen is modern. The stove and refrigerator are new. My bedroom is small but bright. The bed is comfortable. I feel very comfortable in my apartment.', 'أسكن في شقة جميلة في برلين. الشقة فيها ثلاث غرف: غرفة معيشة وغرفة نوم ومطبخ. غرفة المعيشة كبيرة ومريحة. يوجد أريكة وطاولة وخزانة. المطبخ حديث. الموقد والثلاجة جديدان. غرفة نومي صغيرة لكنها مشرقة. السرير مريح. أشعر براحة كبيرة في شقتي.', NULL, 64, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, french_translation, duration_seconds, speaker_count, scenario) values
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

[Lehrerin]: ممتاز! إلى الغد!', '[Lehrerin]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: ', 72, 2, 'Wohnen');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-000065992e70', '🔊 Sprechen: Möbel und Haushaltsgegenstände', 'Roleplay: You are in a Hamburg office. Introduce yourself and talk about Furniture. Your partner (AI) will respond naturally.', 'Furniture', ARRAY['Use complete sentences — not single words','Pause between phrases, not between words','Don''t translate from Arabic word-for-word']::text[], ARRAY['das Haus','die Wohnung','das Zimmer','die Küche','das Schlafzimmer','das Bad','der Tisch','der Stuhl']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-000065992e70', '✏️ Schreiben: Möbel und Haushaltsgegenstände', 'Write an email to a German friend about "Furniture". Tell them what you learned, what you found interesting, and ask two questions about their experience with this topic. Use at least 8 vocabulary words from this lesson. Sign off naturally ("Viele Grüße", "Liebe Grüße").', ARRAY['Start with "Hallo" or "Liebe/r"','Keep sentences short (Subject-Verb-Object)','End with a friendly farewell']::text[], ARRAY['das Haus','die Wohnung','das Zimmer','die Küche','das Schlafzimmer','das Bad','der Tisch','der Stuhl']::text[], ARRAY['Sentence structure','Vocabulary usage']::text[], 50, 100, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000065992e70', 'Möbel und Haushaltsgegenstände — Roleplay', 'Furniture', 'Student', 'Teacher', 'Practice conversation about Furniture', 'Hallo! Lass uns über dieses Thema sprechen.', 'beginner', 1, ARRAY['das Haus','die Wohnung','das Zimmer','die Küche','das Schlafzimmer','das Bad','der Tisch','der Stuhl']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000065992e70', 'Möbel und Haushaltsgegenstände — Advanced Roleplay', 'Furniture', 'Customer', 'Assistant', 'Extended conversation about Furniture', 'Guten Tag! Wie kann ich Ihnen helfen?', 'beginner', 2, ARRAY['das Haus','die Wohnung','das Zimmer','die Küche','das Schlafzimmer','das Bad','der Tisch','der Stuhl']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-000065992e70', 'Möbel und Haushaltsgegenstände — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Möbel und Haushaltsgegenstände".', 'Creative practice for Furniture', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-000065992e70', '📚 Hausaufgabe: Möbel und Haushaltsgegenstände', 'Complete these tasks to reinforce "Möbel und Haushaltsgegenstände".', 'mixed', '[{"description":"Create 10 flashcards from this lesson''s vocabulary — write German on one side, Arabic on the other. Test yourself 3 times."},{"description":"Write 6 sentences about Furniture: 2 statements, 2 questions, 2 negations — all using articles_nominative_akkusativ."},{"description":"Record yourself reading the dialogue aloud. Listen to the recording and note 3 things to improve."},{"description":"Find 3 real German websites, videos, or articles about Furniture. Note 5 new words you discovered."}]', 50, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-000065992e70', '🎯 Great work! In this lesson you learned 142 new words about Furniture. You practiced articles_nominative_akkusativ — an important grammar topic for A1 level. You read a text, listened to a dialogue, and practiced speaking and writing. Keep going!', '["142 vocabulary items about Furniture","articles_nominative_akkusativ — grammar explanation and practice","Reading comprehension: text about Furniture","Listening comprehension: dialogue about Furniture","Speaking practice: roleplay/discussion about Furniture","Writing task: text about Furniture"]', '[{"title":"Möbel und Haushaltsgegenstände Review","summary":"articles_nominative_akkusativ — the main grammar focus. Focus on understanding when to use this structure and forming basic sentences."}]', ARRAY['das Haus (house)','die Wohnung (apartment)','das Zimmer (room)','die Küche (kitchen)','das Schlafzimmer (bedroom)']::text[], ARRAY['Don''t translate from Arabic word-for-word — German has different sentence structure','Learn every noun with its article: NEVER learn "Tisch" alone, always "der Tisch"','Verb always in position 2 in main clauses']::text[], ARRAY['Practice 15-20 minutes daily — consistency beats intensity','Speak out loud: German pronunciation needs muscle memory','Use the new vocabulary within 24 hours or you''ll forget it','Watch German YouTube videos about Furniture for authentic input']::text[]);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000065992e70', 'Pronunciation: German sounds for "home"', 'In German, vowels are pure — unlike English diphthongs. The "ch" sound after a, o, u is guttural (like Arabic خ). After e, i, ä, ö, ü it''s soft (like English "huge" without the "u").

Common mistake for Arabic speakers: Arabic speakers tend to over-emphasise consonants. German flows — connect words smoothly (e.g., "Ich habe" becomes /ɪçabə/ not /ɪç ˈhaːbə/).', '[]', '[{"german":"das Haus","arabic":"","english":"","phonetic":""},{"german":"die Wohnung","arabic":"","english":"","phonetic":""},{"german":"das Zimmer","arabic":"","english":"","phonetic":""},{"german":"die Küche","arabic":"","english":"","phonetic":""}]', '[]', 10);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000065992e70', 'translation', 'Translate to German: "I use the word "house" in a sentence about Furniture."', '[]', 'Das Haus ist groß.', 'Use das  "das Haus" with the correct articles_nominative_akkusativ form.', 1, 40);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000065992e70', 'translation', 'Translate to German: "I use the word "apartment" in a sentence about Furniture."', '[]', 'Meine Wohnung hat drei Zimmer.', 'Use die  "die Wohnung" with the correct articles_nominative_akkusativ form.', 1, 41);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000065992e70', 'translation', 'Translate to German: "I use the word "room" in a sentence about Furniture."', '[]', 'Das Zimmer ist hell.', 'Use das  "das Zimmer" with the correct articles_nominative_akkusativ form.', 1, 42);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000065992e70', 'Culture: 🇩🇪 Deutsche Kultur: Furniture', 'In Germany, Furniture is approached with typical German directness and efficiency. Germans value clarity over small talk. When discussing Furniture, expect honest feedback and straightforward questions. This is not rudeness — it''s cultural. Arabic speakers often find this too direct at first, but you''ll appreciate it once you get used to it.

في ألمانيا، يتم التعامل مع Furniture بوضوح وكفاءة. الألمان يقدرون الوضوح أكثر من المجاملات. لا تعتبر هذه وقاحة - إنها ثقافة مختلفة.', '["Tip: Always use \"Sie\" (formal) with strangers and colleagues","Tip: Germans appreciate punctuality — arrive 5 minutes early","Tip: Direct feedback is a sign of respect, not criticism","Tip: Prepare factual arguments, not emotional appeals"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000065992e70', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Forgetting the difference between \"wohnen\" and \"leben\"","correction":"wohnen = to live somewhere (address), leben = to be alive/exist","explanation":"Arabic uses one verb \"sakana\" for both concepts."},{"mistake":"Using the wrong article (der/die/das) for nouns","correction":"Learn each noun with its article as one piece","explanation":"Arabic has no articles for nouns without gender connection"}]', 30);

  -- Lesson 3: Die Wohnung beschreiben (L-A1-03-03)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-000065992e71', '00000000-0000-4000-a000-000039b4d360', 'Die Wohnung beschreiben', 'Describe apartments using adjectives and prepositions.', 'Describing Homes', 'grammar', '["Understand and apply present_tense rules correctly","Use present_tense in real conversations","Avoid common mistakes Arabic speakers make with present_tense","Read and understand present_tense in context","Listen and identify present_tense in speech","Write sentences using present_tense correctly"]', 30, 3, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, french_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-000065992e71', 'das Haus', 'البيت', 'house', 'la maison', 'das', 'die Häuser', 'noun', 'Das Haus ist groß.', 'The house is big.', 'A1', 1),
  ('00000000-0000-4000-a000-000065992e71', 'die Wohnung', 'الشقة', 'apartment', 'l''appartement', 'die', 'die Wohnungen', 'noun', 'Meine Wohnung hat drei Zimmer.', 'My apartment has three rooms.', 'A1', 2),
  ('00000000-0000-4000-a000-000065992e71', 'das Zimmer', 'الغرفة', 'room', 'la chambre', 'das', 'die Zimmer', 'noun', 'Das Zimmer ist hell.', 'The room is bright.', 'A1', 3),
  ('00000000-0000-4000-a000-000065992e71', 'die Küche', 'المطبخ', 'kitchen', 'la cuisine', 'die', 'die Küchen', 'noun', 'Die Küche ist modern.', 'The kitchen is modern.', 'A1', 4),
  ('00000000-0000-4000-a000-000065992e71', 'das Schlafzimmer', 'غرفة النوم', 'bedroom', 'la chambre à coucher', 'das', NULL, 'noun', 'Mein Schlafzimmer ist gemütlich.', 'My bedroom is cozy.', 'A1', 5),
  ('00000000-0000-4000-a000-000065992e71', 'das Bad', 'الحمام', 'bathroom', 'la salle de bains', 'das', 'die Bäder', 'noun', 'Das Bad ist sauber.', 'The bathroom is clean.', 'A1', 6),
  ('00000000-0000-4000-a000-000065992e71', 'der Tisch', 'الطاولة', 'table', 'la table', 'der', 'die Tische', 'noun', 'Der Tisch ist aus Holz.', 'The table is made of wood.', 'A1', 7),
  ('00000000-0000-4000-a000-000065992e71', 'der Stuhl', 'الكرسي', 'chair', 'la chaise', 'der', 'die Stühle', 'noun', 'Der Stuhl ist bequem.', 'The chair is comfortable.', 'A1', 8),
  ('00000000-0000-4000-a000-000065992e71', 'das Bett', 'السرير', 'bed', 'le lit', 'das', 'die Betten', 'noun', 'Das Bett ist groß.', 'The bed is big.', 'A1', 9),
  ('00000000-0000-4000-a000-000065992e71', 'wohnen', 'يسكن', 'to live', 'habiter', NULL, NULL, 'verb', 'Ich wohne in Berlin.', 'I live in Berlin.', 'A1', 10),
  ('00000000-0000-4000-a000-000065992e71', 'Hallo', 'مرحباً', 'hello', 'bonjour', NULL, NULL, 'interjection', 'Hallo, wie geht es dir?', 'Hello, how are you?', 'A1', 11),
  ('00000000-0000-4000-a000-000065992e71', 'Guten Morgen', 'صباح الخير', 'good morning', 'bonjour (le matin)', NULL, NULL, 'phrase', 'Guten Morgen, Herr Müller.', 'Good morning, Mr. Müller.', 'A1', 12),
  ('00000000-0000-4000-a000-000065992e71', 'Guten Tag', 'نهارك سعيد', 'good day', 'bonjour (l''après-midi)', NULL, NULL, 'phrase', 'Guten Tag, Frau Schmidt.', 'Good day, Mrs. Schmidt.', 'A1', 13),
  ('00000000-0000-4000-a000-000065992e71', 'Tschüss', 'مع السلامة', 'bye', 'au revoir / salut', NULL, NULL, 'interjection', 'Tschüss, bis morgen!', 'Bye, see you tomorrow!', 'A1', 14),
  ('00000000-0000-4000-a000-000065992e71', 'der Name', 'الاسم', 'name', 'le nom', 'der', 'die Namen', 'noun', 'Mein Name ist Anna.', 'My name is Anna.', 'A1', 15),
  ('00000000-0000-4000-a000-000065992e71', 'wie', 'كيف', 'how', 'comment', NULL, NULL, 'adverb', 'Wie heißt du?', 'What is your name?', 'A1', 16),
  ('00000000-0000-4000-a000-000065992e71', 'freuen', 'يسر', 'to be pleased', 'se réjouir', NULL, NULL, 'verb', 'Ich freue mich, dich kennenzulernen.', 'I am pleased to meet you.', 'A1', 17),
  ('00000000-0000-4000-a000-000065992e71', 'Willkommen', 'أهلاً وسهلاً', 'welcome', 'bienvenue', NULL, NULL, 'interjection', 'Willkommen in Deutschland!', 'Welcome to Germany!', 'A1', 18),
  ('00000000-0000-4000-a000-000065992e71', 'die Familie', 'العائلة', 'family', 'la famille', 'die', 'die Familien', 'noun', 'Meine Familie ist groß.', 'My family is big.', 'A1', 19),
  ('00000000-0000-4000-a000-000065992e71', 'der Vater', 'الأب', 'father', 'le père', 'der', 'die Väter', 'noun', 'Mein Vater ist Ingenieur.', 'My father is an engineer.', 'A1', 20),
  ('00000000-0000-4000-a000-000065992e71', 'die Mutter', 'الأم', 'mother', 'la mère', 'die', 'die Mütter', 'noun', 'Meine Mutter kocht gut.', 'My mother cooks well.', 'A1', 21),
  ('00000000-0000-4000-a000-000065992e71', 'der Bruder', 'الأخ', 'brother', 'le frère', 'der', 'die Brüder', 'noun', 'Mein Bruder ist 15 Jahre alt.', 'My brother is 15 years old.', 'A1', 22),
  ('00000000-0000-4000-a000-000065992e71', 'die Schwester', 'الأخت', 'sister', 'la sœur', 'die', 'die Schwestern', 'noun', 'Meine Schwester studiert Medizin.', 'My sister studies medicine.', 'A1', 23),
  ('00000000-0000-4000-a000-000065992e71', 'die Geschwister', 'الإخوة', 'siblings', 'les frères et sœurs', 'die', NULL, 'noun', 'Hast du Geschwister?', 'Do you have siblings?', 'A1', 24),
  ('00000000-0000-4000-a000-000065992e71', 'der Sohn', 'الابن', 'son', 'le fils', 'der', 'die Söhne', 'noun', 'Wir haben einen Sohn.', 'We have a son.', 'A1', 25),
  ('00000000-0000-4000-a000-000065992e71', 'die Tochter', 'الابنة', 'daughter', 'la fille', 'die', 'die Töchter', 'noun', 'Meine Tochter geht zur Schule.', 'My daughter goes to school.', 'A1', 26),
  ('00000000-0000-4000-a000-000065992e71', 'die Großeltern', 'الأجداد', 'grandparents', 'les grands-parents', 'die', NULL, 'noun', 'Meine Großeltern wohnen auf dem Land.', 'My grandparents live in the countryside.', 'A1', 27),
  ('00000000-0000-4000-a000-000065992e71', 'verheiratet', 'متزوج', 'married', 'marié(e)', NULL, NULL, 'adjective', 'Meine Eltern sind verheiratet.', 'My parents are married.', 'A1', 28),
  ('00000000-0000-4000-a000-000065992e71', 'das Brot', 'الخبز', 'bread', 'le pain', 'das', 'die Brote', 'noun', 'Ich kaufe ein Brot.', 'I buy a loaf of bread.', 'A1', 29),
  ('00000000-0000-4000-a000-000065992e71', 'die Milch', 'الحليب', 'milk', 'le lait', 'die', NULL, 'noun', 'Die Milch ist frisch.', 'The milk is fresh.', 'A1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000065992e71', 'Präsens der regelmäßigen Verben (Present Tense) / المضارع للأفعال المنتظمة', 'In German, regular verbs follow a consistent pattern. The infinitive ends in -en. Remove the -en and add the personal endings: ich -e, du -st, er/sie/es -t, wir -en, ihr -t, sie/Sie -en. For most Arabic speakers, this is easier than Arabic verb conjugation because German has fewer forms.', '[{"rule":"ich: stem + e","note":"Ich lerne, ich wohne, ich arbeite"},{"rule":"du: stem + st","note":"Du lernst, du wohnst, du arbeitest"},{"rule":"er/sie/es: stem + t","note":"Er lernt, sie wohnt, es arbeitet"},{"rule":"wir: stem + en","note":"Wir lernen, wir wohnen, wir arbeiten"},{"rule":"ihr: stem + t","note":"Ihr lernt, ihr wohnt, ihr arbeitet"},{"rule":"sie/Sie: stem + en","note":"Sie lernen, Sie wohnen"}]', '[{"german":"Ich lerne Deutsch.","arabic":"أنا أتعلم الألمانية.","english":"I am learning German."},{"german":"Du wohnst in Berlin.","arabic":"أنت تسكن في برلين.","english":"You live in Berlin."},{"german":"Er arbeitet bei Siemens.","arabic":"هو يعمل في سيمنز.","english":"He works at Siemens."}]', '[{"mistake":"Ich lernen Deutsch","correction":"Ich lerne Deutsch","explanation":"After \"ich\" we use the stem + e, not the infinitive."},{"mistake":"Er lerne Deutsch","correction":"Er lernt Deutsch","explanation":"After \"er/sie/es\" we add -t, not -e."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000065992e71', 'multiple_choice', 'Which German word matches "house"?', '["die Wohnung","das Schlafzimmer","das Haus","die Küche"]', 'das Haus', '"house" = "das Haus" in German. Article: das Plural: die Häuser', 1, 1),
  ('00000000-0000-4000-a000-000065992e71', 'multiple_choice', 'Which German word matches "apartment"?', '["das Zimmer","das Haus","das Schlafzimmer","die Küche"]', 'die Wohnung', '"apartment" = "die Wohnung" in German. Article: die Plural: die Wohnungen', 1, 2),
  ('00000000-0000-4000-a000-000065992e71', 'multiple_choice', 'Which German word matches "room"?', '["das Schlafzimmer","das Zimmer","das Haus","die Wohnung"]', 'das Zimmer', '"room" = "das Zimmer" in German. Article: das Plural: die Zimmer', 1, 3),
  ('00000000-0000-4000-a000-000065992e71', 'multiple_choice', 'Which German word matches "kitchen"?', '["das Zimmer","das Haus","das Schlafzimmer","die Küche"]', 'die Küche', '"kitchen" = "die Küche" in German. Article: die Plural: die Küchen', 1, 4),
  ('00000000-0000-4000-a000-000065992e71', 'multiple_choice', 'Which German word matches "bedroom"?', '["das Schlafzimmer","das Zimmer","das Haus","die Wohnung"]', 'das Schlafzimmer', '"bedroom" = "das Schlafzimmer" in German. Article: das ', 1, 5),
  ('00000000-0000-4000-a000-000065992e71', 'fill_gap', 'Complete the sentence: Ich ___ gern über Describing Homes. (sprechen)', '["spreche","sprichst","spricht","sprechen"]', 'spreche', 'ich spreche gern = I like to speak. Stem: sprech- + e.', 2, 6),
  ('00000000-0000-4000-a000-000065992e71', 'translation', 'Translate to German: "I am learning about Describing Homes."', '["Ich lerne über Describing Homes.","Ich lerne Describing Homes.","Lerne ich Describing Homes."]', 'Ich lerne über Describing Homes.', '"Ich lerne über..." = "I am learning about..."', 2, 7),
  ('00000000-0000-4000-a000-000065992e71', 'matching', 'Match: Which word pairs are correct?', '["das Haus - house, die Wohnung - apartment"]', 'Matched correctly', 'Each German word has a unique English equivalent.', 2, 8);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-000065992e71', 'multiple_choice', 'What does "das Haus" mean in English?', '["house","to run","beautiful","yesterday"]', 'house', 1, 1),
  ('00000000-0000-4000-a000-000065992e71', 'multiple_choice', 'What is the correct article for "die Wohnung"?', '["der","die","das","den"]', 'die', 1, 2),
  ('00000000-0000-4000-a000-000065992e71', 'true_false', 'The word "das Zimmer" is related to Describing Homes.', '["True","False"]', 'True', 1, 3),
  ('00000000-0000-4000-a000-000065992e71', 'multiple_choice', 'Which sentence correctly uses present_tense?', '["Ich lerne Deutsch.","Du wohnst in Berlin.","Er arbeitet bei Siemens."]', 'Ich lerne Deutsch.', 2, 4),
  ('00000000-0000-4000-a000-000065992e71', 'true_false', 'German word order puts the verb in second position in main clauses.', '["True","False"]', 'True', 1, 5),
  ('00000000-0000-4000-a000-000065992e71', 'fill_blank', 'Complete: Ich ___ (kitchen) Deutsch.', '["die Küche","lernt","lernst","lernen"]', 'lerne', 2, 6),
  ('00000000-0000-4000-a000-000065992e71', 'multiple_choice', 'What is the German word for "bedroom"?', '["das Schlafzimmer","das Bad","der Tisch","der Stuhl"]', 'das Schlafzimmer', 1, 7),
  ('00000000-0000-4000-a000-000065992e71', 'true_false', 'In German, ALL nouns are always capitalised.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-000065992e71', 'multiple_choice', 'How do you say "please" in a restaurant in Germany?', '["Bitte","Danke","Tschüss","Hallo"]', 'Bitte', 1, 9),
  ('00000000-0000-4000-a000-000065992e71', 'fill_blank', 'Wo ___ (to live) du?', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 2, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, french_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-000065992e71', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', NULL, 'Used in Wohnen', 'formal', false, 1),
  ('00000000-0000-4000-a000-000065992e71', 'Guten Tag!', 'Good day!', 'نهارك سعيد!', NULL, 'Used in Wohnen', 'formal', false, 2),
  ('00000000-0000-4000-a000-000065992e71', 'Hallo, wie geht es Ihnen?', 'Hello, how are you?', 'مرحباً، كيف حالكم؟', NULL, 'Used in Wohnen', 'formal', false, 3),
  ('00000000-0000-4000-a000-000065992e71', 'Schön, Sie kennenzulernen!', 'Nice to meet you!', 'سعيد بلقائكم!', NULL, 'Used in Wohnen', 'formal', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-000065992e71', 'das das Haus (die Häuser)', 'house — البيت', 'noun', 'vocabulary', 1),
  ('00000000-0000-4000-a000-000065992e71', 'die die Wohnung (die Wohnungen)', 'apartment — الشقة', 'noun', 'vocabulary', 2),
  ('00000000-0000-4000-a000-000065992e71', 'das das Zimmer (die Zimmer)', 'room — الغرفة', 'noun', 'vocabulary', 3),
  ('00000000-0000-4000-a000-000065992e71', 'die die Küche (die Küchen)', 'kitchen — المطبخ', 'noun', 'vocabulary', 4),
  ('00000000-0000-4000-a000-000065992e71', 'das das Schlafzimmer', 'bedroom — غرفة النوم', 'noun', 'vocabulary', 5),
  ('00000000-0000-4000-a000-000065992e71', 'das das Bad (die Bäder)', 'bathroom — الحمام', 'noun', 'vocabulary', 6),
  ('00000000-0000-4000-a000-000065992e71', 'der der Tisch (die Tische)', 'table — الطاولة', 'noun', 'vocabulary', 7),
  ('00000000-0000-4000-a000-000065992e71', 'der der Stuhl (die Stühle)', 'chair — الكرسي', 'noun', 'vocabulary', 8),
  ('00000000-0000-4000-a000-000065992e71', 'das das Bett (die Betten)', 'bed — السرير', 'noun', 'vocabulary', 9),
  ('00000000-0000-4000-a000-000065992e71', 'wohnen', 'to live — يسكن', 'verb', 'vocabulary', 10),
  ('00000000-0000-4000-a000-000065992e71', 'Hallo', 'hello — مرحباً', 'interjection', 'vocabulary', 11),
  ('00000000-0000-4000-a000-000065992e71', 'Guten Morgen', 'good morning — صباح الخير', 'phrase', 'vocabulary', 12),
  ('00000000-0000-4000-a000-000065992e71', 'Guten Tag', 'good day — نهارك سعيد', 'phrase', 'vocabulary', 13),
  ('00000000-0000-4000-a000-000065992e71', 'Tschüss', 'bye — مع السلامة', 'interjection', 'vocabulary', 14),
  ('00000000-0000-4000-a000-000065992e71', 'der der Name (die Namen)', 'name — الاسم', 'noun', 'vocabulary', 15),
  ('00000000-0000-4000-a000-000065992e71', 'Ich lerne Deutsch.', 'I am learning German.', 'Präsens der regelmäßigen Verben (Present Tense)', 'grammar', 16),
  ('00000000-0000-4000-a000-000065992e71', 'Du wohnst in Berlin.', 'You live in Berlin.', 'Präsens der regelmäßigen Verben (Present Tense)', 'grammar', 17),
  ('00000000-0000-4000-a000-000065992e71', 'Er arbeitet bei Siemens.', 'He works at Siemens.', 'Präsens der regelmäßigen Verben (Present Tense)', 'grammar', 18);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, french_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-000065992e71', 'Die Wohnung beschreiben — Leseübung', 'Ich wohne in einer schönen Wohnung in Berlin. Die Wohnung hat drei Zimmer: ein Wohnzimmer, ein Schlafzimmer und eine Küche. Das Wohnzimmer ist groß und gemütlich. Es gibt ein Sofa, einen Tisch und einen Schrank. Die Küche ist modern. Der Herd und der Kühlschrank sind neu. Mein Schlafzimmer ist klein, aber hell. Das Bett ist bequem. Ich fühle mich in meiner Wohnung sehr wohl.', 'I live in a nice apartment in Berlin. The apartment has three rooms: a living room, a bedroom and a kitchen. The living room is big and cozy. There is a sofa, a table and a wardrobe. The kitchen is modern. The stove and refrigerator are new. My bedroom is small but bright. The bed is comfortable. I feel very comfortable in my apartment.', 'أسكن في شقة جميلة في برلين. الشقة فيها ثلاث غرف: غرفة معيشة وغرفة نوم ومطبخ. غرفة المعيشة كبيرة ومريحة. يوجد أريكة وطاولة وخزانة. المطبخ حديث. الموقد والثلاجة جديدان. غرفة نومي صغيرة لكنها مشرقة. السرير مريح. أشعر براحة كبيرة في شقتي.', NULL, 64, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, french_translation, duration_seconds, speaker_count, scenario) values
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

[Lehrerin]: ممتاز! إلى الغد!', '[Lehrerin]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: ', 72, 2, 'Wohnen');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-000065992e71', '🔊 Sprechen: Die Wohnung beschreiben', 'Roleplay: You are in a Hamburg office. Introduce yourself and talk about Describing Homes. Your partner (AI) will respond naturally.', 'Describing Homes', ARRAY['Use complete sentences — not single words','Pause between phrases, not between words','Don''t translate from Arabic word-for-word']::text[], ARRAY['das Haus','die Wohnung','das Zimmer','die Küche','das Schlafzimmer','das Bad','der Tisch','der Stuhl']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-000065992e71', '✏️ Schreiben: Die Wohnung beschreiben', 'Write an email to a German friend about "Describing Homes". Tell them what you learned, what you found interesting, and ask two questions about their experience with this topic. Use at least 8 vocabulary words from this lesson. Sign off naturally ("Viele Grüße", "Liebe Grüße").', ARRAY['Start with "Hallo" or "Liebe/r"','Keep sentences short (Subject-Verb-Object)','End with a friendly farewell']::text[], ARRAY['das Haus','die Wohnung','das Zimmer','die Küche','das Schlafzimmer','das Bad','der Tisch','der Stuhl']::text[], ARRAY['Sentence structure','Vocabulary usage']::text[], 50, 100, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000065992e71', 'Die Wohnung beschreiben — Roleplay', 'Describing Homes', 'Student', 'Teacher', 'Practice conversation about Describing Homes', 'Hallo! Lass uns über dieses Thema sprechen.', 'beginner', 1, ARRAY['das Haus','die Wohnung','das Zimmer','die Küche','das Schlafzimmer','das Bad','der Tisch','der Stuhl']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000065992e71', 'Die Wohnung beschreiben — Advanced Roleplay', 'Describing Homes', 'Customer', 'Assistant', 'Extended conversation about Describing Homes', 'Guten Tag! Wie kann ich Ihnen helfen?', 'beginner', 2, ARRAY['das Haus','die Wohnung','das Zimmer','die Küche','das Schlafzimmer','das Bad','der Tisch','der Stuhl']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-000065992e71', 'Die Wohnung beschreiben — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Die Wohnung beschreiben".', 'Creative practice for Describing Homes', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-000065992e71', '📚 Hausaufgabe: Die Wohnung beschreiben', 'Complete these tasks to reinforce "Die Wohnung beschreiben".', 'mixed', '[{"description":"Create 10 flashcards from this lesson''s vocabulary — write German on one side, Arabic on the other. Test yourself 3 times."},{"description":"Write 6 sentences about Describing Homes: 2 statements, 2 questions, 2 negations — all using present_tense."},{"description":"Record yourself reading the dialogue aloud. Listen to the recording and note 3 things to improve."},{"description":"Find 3 real German websites, videos, or articles about Describing Homes. Note 5 new words you discovered."}]', 50, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-000065992e71', '🎯 Great work! In this lesson you learned 142 new words about Describing Homes. You practiced present_tense — an important grammar topic for A1 level. You read a text, listened to a dialogue, and practiced speaking and writing. Keep going!', '["142 vocabulary items about Describing Homes","present_tense — grammar explanation and practice","Reading comprehension: text about Describing Homes","Listening comprehension: dialogue about Describing Homes","Speaking practice: roleplay/discussion about Describing Homes","Writing task: text about Describing Homes"]', '[{"title":"Die Wohnung beschreiben Review","summary":"present_tense — the main grammar focus. Focus on understanding when to use this structure and forming basic sentences."}]', ARRAY['das Haus (house)','die Wohnung (apartment)','das Zimmer (room)','die Küche (kitchen)','das Schlafzimmer (bedroom)']::text[], ARRAY['Don''t translate from Arabic word-for-word — German has different sentence structure','Learn every noun with its article: NEVER learn "Tisch" alone, always "der Tisch"','Verb always in position 2 in main clauses']::text[], ARRAY['Practice 15-20 minutes daily — consistency beats intensity','Speak out loud: German pronunciation needs muscle memory','Use the new vocabulary within 24 hours or you''ll forget it','Watch German YouTube videos about Describing Homes for authentic input']::text[]);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000065992e71', 'Pronunciation: German sounds for "home"', 'In German, vowels are pure — unlike English diphthongs. The "ch" sound after a, o, u is guttural (like Arabic خ). After e, i, ä, ö, ü it''s soft (like English "huge" without the "u").

Common mistake for Arabic speakers: Arabic speakers tend to over-emphasise consonants. German flows — connect words smoothly (e.g., "Ich habe" becomes /ɪçabə/ not /ɪç ˈhaːbə/).', '[]', '[{"german":"das Haus","arabic":"","english":"","phonetic":""},{"german":"die Wohnung","arabic":"","english":"","phonetic":""},{"german":"das Zimmer","arabic":"","english":"","phonetic":""},{"german":"die Küche","arabic":"","english":"","phonetic":""}]', '[]', 10);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000065992e71', 'translation', 'Translate to German: "I use the word "house" in a sentence about Describing Homes."', '[]', 'Das Haus ist groß.', 'Use das  "das Haus" with the correct present_tense form.', 1, 40);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000065992e71', 'translation', 'Translate to German: "I use the word "apartment" in a sentence about Describing Homes."', '[]', 'Meine Wohnung hat drei Zimmer.', 'Use die  "die Wohnung" with the correct present_tense form.', 1, 41);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000065992e71', 'translation', 'Translate to German: "I use the word "room" in a sentence about Describing Homes."', '[]', 'Das Zimmer ist hell.', 'Use das  "das Zimmer" with the correct present_tense form.', 1, 42);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000065992e71', 'Culture: 🇩🇪 Deutsche Kultur: Describing Homes', 'In Germany, Describing Homes is approached with typical German directness and efficiency. Germans value clarity over small talk. When discussing Describing Homes, expect honest feedback and straightforward questions. This is not rudeness — it''s cultural. Arabic speakers often find this too direct at first, but you''ll appreciate it once you get used to it.

في ألمانيا، يتم التعامل مع Describing Homes بوضوح وكفاءة. الألمان يقدرون الوضوح أكثر من المجاملات. لا تعتبر هذه وقاحة - إنها ثقافة مختلفة.', '["Tip: Always use \"Sie\" (formal) with strangers and colleagues","Tip: Germans appreciate punctuality — arrive 5 minutes early","Tip: Direct feedback is a sign of respect, not criticism","Tip: Prepare factual arguments, not emotional appeals"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000065992e71', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Forgetting the difference between \"wohnen\" and \"leben\"","correction":"wohnen = to live somewhere (address), leben = to be alive/exist","explanation":"Arabic uses one verb \"sakana\" for both concepts."},{"mistake":"Using the wrong article (der/die/das) for nouns","correction":"Learn each noun with its article as one piece","explanation":"Arabic has no articles for nouns without gender connection"}]', 30);

  -- Lesson 4: Wohnungssuche (L-A1-03-04)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-000065992e72', '00000000-0000-4000-a000-000039b4d360', 'Wohnungssuche', 'Learn how to read apartment ads and talk about housing.', 'Apartment Hunting', 'reading', '["Understand and apply present_tense rules correctly","Use present_tense in real conversations","Avoid common mistakes Arabic speakers make with present_tense","Read and understand present_tense in context","Listen and identify present_tense in speech","Write sentences using present_tense correctly"]', 25, 4, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, french_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-000065992e72', 'das Haus', 'البيت', 'house', 'la maison', 'das', 'die Häuser', 'noun', 'Das Haus ist groß.', 'The house is big.', 'A1', 1),
  ('00000000-0000-4000-a000-000065992e72', 'die Wohnung', 'الشقة', 'apartment', 'l''appartement', 'die', 'die Wohnungen', 'noun', 'Meine Wohnung hat drei Zimmer.', 'My apartment has three rooms.', 'A1', 2),
  ('00000000-0000-4000-a000-000065992e72', 'das Zimmer', 'الغرفة', 'room', 'la chambre', 'das', 'die Zimmer', 'noun', 'Das Zimmer ist hell.', 'The room is bright.', 'A1', 3),
  ('00000000-0000-4000-a000-000065992e72', 'die Küche', 'المطبخ', 'kitchen', 'la cuisine', 'die', 'die Küchen', 'noun', 'Die Küche ist modern.', 'The kitchen is modern.', 'A1', 4),
  ('00000000-0000-4000-a000-000065992e72', 'das Schlafzimmer', 'غرفة النوم', 'bedroom', 'la chambre à coucher', 'das', NULL, 'noun', 'Mein Schlafzimmer ist gemütlich.', 'My bedroom is cozy.', 'A1', 5),
  ('00000000-0000-4000-a000-000065992e72', 'das Bad', 'الحمام', 'bathroom', 'la salle de bains', 'das', 'die Bäder', 'noun', 'Das Bad ist sauber.', 'The bathroom is clean.', 'A1', 6),
  ('00000000-0000-4000-a000-000065992e72', 'der Tisch', 'الطاولة', 'table', 'la table', 'der', 'die Tische', 'noun', 'Der Tisch ist aus Holz.', 'The table is made of wood.', 'A1', 7),
  ('00000000-0000-4000-a000-000065992e72', 'der Stuhl', 'الكرسي', 'chair', 'la chaise', 'der', 'die Stühle', 'noun', 'Der Stuhl ist bequem.', 'The chair is comfortable.', 'A1', 8),
  ('00000000-0000-4000-a000-000065992e72', 'das Bett', 'السرير', 'bed', 'le lit', 'das', 'die Betten', 'noun', 'Das Bett ist groß.', 'The bed is big.', 'A1', 9),
  ('00000000-0000-4000-a000-000065992e72', 'wohnen', 'يسكن', 'to live', 'habiter', NULL, NULL, 'verb', 'Ich wohne in Berlin.', 'I live in Berlin.', 'A1', 10),
  ('00000000-0000-4000-a000-000065992e72', 'Hallo', 'مرحباً', 'hello', 'bonjour', NULL, NULL, 'interjection', 'Hallo, wie geht es dir?', 'Hello, how are you?', 'A1', 11),
  ('00000000-0000-4000-a000-000065992e72', 'Guten Morgen', 'صباح الخير', 'good morning', 'bonjour (le matin)', NULL, NULL, 'phrase', 'Guten Morgen, Herr Müller.', 'Good morning, Mr. Müller.', 'A1', 12),
  ('00000000-0000-4000-a000-000065992e72', 'Guten Tag', 'نهارك سعيد', 'good day', 'bonjour (l''après-midi)', NULL, NULL, 'phrase', 'Guten Tag, Frau Schmidt.', 'Good day, Mrs. Schmidt.', 'A1', 13),
  ('00000000-0000-4000-a000-000065992e72', 'Tschüss', 'مع السلامة', 'bye', 'au revoir / salut', NULL, NULL, 'interjection', 'Tschüss, bis morgen!', 'Bye, see you tomorrow!', 'A1', 14),
  ('00000000-0000-4000-a000-000065992e72', 'der Name', 'الاسم', 'name', 'le nom', 'der', 'die Namen', 'noun', 'Mein Name ist Anna.', 'My name is Anna.', 'A1', 15),
  ('00000000-0000-4000-a000-000065992e72', 'wie', 'كيف', 'how', 'comment', NULL, NULL, 'adverb', 'Wie heißt du?', 'What is your name?', 'A1', 16),
  ('00000000-0000-4000-a000-000065992e72', 'freuen', 'يسر', 'to be pleased', 'se réjouir', NULL, NULL, 'verb', 'Ich freue mich, dich kennenzulernen.', 'I am pleased to meet you.', 'A1', 17),
  ('00000000-0000-4000-a000-000065992e72', 'Willkommen', 'أهلاً وسهلاً', 'welcome', 'bienvenue', NULL, NULL, 'interjection', 'Willkommen in Deutschland!', 'Welcome to Germany!', 'A1', 18),
  ('00000000-0000-4000-a000-000065992e72', 'die Familie', 'العائلة', 'family', 'la famille', 'die', 'die Familien', 'noun', 'Meine Familie ist groß.', 'My family is big.', 'A1', 19),
  ('00000000-0000-4000-a000-000065992e72', 'der Vater', 'الأب', 'father', 'le père', 'der', 'die Väter', 'noun', 'Mein Vater ist Ingenieur.', 'My father is an engineer.', 'A1', 20),
  ('00000000-0000-4000-a000-000065992e72', 'die Mutter', 'الأم', 'mother', 'la mère', 'die', 'die Mütter', 'noun', 'Meine Mutter kocht gut.', 'My mother cooks well.', 'A1', 21),
  ('00000000-0000-4000-a000-000065992e72', 'der Bruder', 'الأخ', 'brother', 'le frère', 'der', 'die Brüder', 'noun', 'Mein Bruder ist 15 Jahre alt.', 'My brother is 15 years old.', 'A1', 22),
  ('00000000-0000-4000-a000-000065992e72', 'die Schwester', 'الأخت', 'sister', 'la sœur', 'die', 'die Schwestern', 'noun', 'Meine Schwester studiert Medizin.', 'My sister studies medicine.', 'A1', 23),
  ('00000000-0000-4000-a000-000065992e72', 'die Geschwister', 'الإخوة', 'siblings', 'les frères et sœurs', 'die', NULL, 'noun', 'Hast du Geschwister?', 'Do you have siblings?', 'A1', 24),
  ('00000000-0000-4000-a000-000065992e72', 'der Sohn', 'الابن', 'son', 'le fils', 'der', 'die Söhne', 'noun', 'Wir haben einen Sohn.', 'We have a son.', 'A1', 25),
  ('00000000-0000-4000-a000-000065992e72', 'die Tochter', 'الابنة', 'daughter', 'la fille', 'die', 'die Töchter', 'noun', 'Meine Tochter geht zur Schule.', 'My daughter goes to school.', 'A1', 26),
  ('00000000-0000-4000-a000-000065992e72', 'die Großeltern', 'الأجداد', 'grandparents', 'les grands-parents', 'die', NULL, 'noun', 'Meine Großeltern wohnen auf dem Land.', 'My grandparents live in the countryside.', 'A1', 27),
  ('00000000-0000-4000-a000-000065992e72', 'verheiratet', 'متزوج', 'married', 'marié(e)', NULL, NULL, 'adjective', 'Meine Eltern sind verheiratet.', 'My parents are married.', 'A1', 28),
  ('00000000-0000-4000-a000-000065992e72', 'das Brot', 'الخبز', 'bread', 'le pain', 'das', 'die Brote', 'noun', 'Ich kaufe ein Brot.', 'I buy a loaf of bread.', 'A1', 29),
  ('00000000-0000-4000-a000-000065992e72', 'die Milch', 'الحليب', 'milk', 'le lait', 'die', NULL, 'noun', 'Die Milch ist frisch.', 'The milk is fresh.', 'A1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000065992e72', 'Präsens der regelmäßigen Verben (Present Tense) / المضارع للأفعال المنتظمة', 'In German, regular verbs follow a consistent pattern. The infinitive ends in -en. Remove the -en and add the personal endings: ich -e, du -st, er/sie/es -t, wir -en, ihr -t, sie/Sie -en. For most Arabic speakers, this is easier than Arabic verb conjugation because German has fewer forms.', '[{"rule":"ich: stem + e","note":"Ich lerne, ich wohne, ich arbeite"},{"rule":"du: stem + st","note":"Du lernst, du wohnst, du arbeitest"},{"rule":"er/sie/es: stem + t","note":"Er lernt, sie wohnt, es arbeitet"},{"rule":"wir: stem + en","note":"Wir lernen, wir wohnen, wir arbeiten"},{"rule":"ihr: stem + t","note":"Ihr lernt, ihr wohnt, ihr arbeitet"},{"rule":"sie/Sie: stem + en","note":"Sie lernen, Sie wohnen"}]', '[{"german":"Ich lerne Deutsch.","arabic":"أنا أتعلم الألمانية.","english":"I am learning German."},{"german":"Du wohnst in Berlin.","arabic":"أنت تسكن في برلين.","english":"You live in Berlin."},{"german":"Er arbeitet bei Siemens.","arabic":"هو يعمل في سيمنز.","english":"He works at Siemens."}]', '[{"mistake":"Ich lernen Deutsch","correction":"Ich lerne Deutsch","explanation":"After \"ich\" we use the stem + e, not the infinitive."},{"mistake":"Er lerne Deutsch","correction":"Er lernt Deutsch","explanation":"After \"er/sie/es\" we add -t, not -e."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000065992e72', 'multiple_choice', 'Which German word matches "house"?', '["das Zimmer","die Wohnung","das Schlafzimmer","die Küche"]', 'das Haus', '"house" = "das Haus" in German. Article: das Plural: die Häuser', 1, 1),
  ('00000000-0000-4000-a000-000065992e72', 'multiple_choice', 'Which German word matches "apartment"?', '["die Küche","das Zimmer","das Haus","das Schlafzimmer"]', 'die Wohnung', '"apartment" = "die Wohnung" in German. Article: die Plural: die Wohnungen', 1, 2),
  ('00000000-0000-4000-a000-000065992e72', 'multiple_choice', 'Which German word matches "room"?', '["die Wohnung","das Haus","die Küche","das Schlafzimmer"]', 'das Zimmer', '"room" = "das Zimmer" in German. Article: das Plural: die Zimmer', 1, 3),
  ('00000000-0000-4000-a000-000065992e72', 'multiple_choice', 'Which German word matches "kitchen"?', '["die Küche","das Haus","das Zimmer","das Schlafzimmer"]', 'die Küche', '"kitchen" = "die Küche" in German. Article: die Plural: die Küchen', 1, 4),
  ('00000000-0000-4000-a000-000065992e72', 'multiple_choice', 'Which German word matches "bedroom"?', '["das Schlafzimmer","das Haus","die Wohnung","die Küche"]', 'das Schlafzimmer', '"bedroom" = "das Schlafzimmer" in German. Article: das ', 1, 5),
  ('00000000-0000-4000-a000-000065992e72', 'fill_gap', 'Complete the sentence: Ich ___ gern Apartment Hunting. (sprechen)', '["spreche","sprichst","spricht","sprechen"]', 'spreche', 'ich spreche gern = I like to speak. Stem: sprech- + e.', 2, 6),
  ('00000000-0000-4000-a000-000065992e72', 'translation', 'Translate to German: "I am learning about Apartment Hunting."', '["Ich lerne über Apartment Hunting.","Ich lerne Apartment Hunting.","Lerne ich Apartment Hunting."]', 'Ich lerne über Apartment Hunting.', '"Ich lerne über..." = "I am learning about..."', 2, 7),
  ('00000000-0000-4000-a000-000065992e72', 'matching', 'Match: Which word pairs are correct?', '["das Haus - house, die Wohnung - apartment"]', 'Matched correctly', 'Each German word has a unique English equivalent.', 2, 8);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-000065992e72', 'multiple_choice', 'What does "das Haus" mean in English?', '["house","to run","beautiful","yesterday"]', 'house', 1, 1),
  ('00000000-0000-4000-a000-000065992e72', 'multiple_choice', 'What is the correct article for "die Wohnung"?', '["der","die","das","den"]', 'die', 1, 2),
  ('00000000-0000-4000-a000-000065992e72', 'true_false', 'The word "das Zimmer" is related to Apartment Hunting.', '["True","False"]', 'True', 1, 3),
  ('00000000-0000-4000-a000-000065992e72', 'multiple_choice', 'Which sentence correctly uses present_tense?', '["Ich lerne Deutsch.","Du wohnst in Berlin.","Er arbeitet bei Siemens."]', 'Ich lerne Deutsch.', 2, 4),
  ('00000000-0000-4000-a000-000065992e72', 'true_false', 'German word order puts the verb in second position in main clauses.', '["True","False"]', 'True', 1, 5),
  ('00000000-0000-4000-a000-000065992e72', 'fill_blank', 'Complete: Ich ___ (kitchen) Deutsch.', '["die Küche","lernt","lernst","lernen"]', 'lerne', 2, 6),
  ('00000000-0000-4000-a000-000065992e72', 'multiple_choice', 'What is the German word for "bedroom"?', '["das Schlafzimmer","das Bad","der Tisch","der Stuhl"]', 'das Schlafzimmer', 1, 7),
  ('00000000-0000-4000-a000-000065992e72', 'true_false', 'In German, ALL nouns are always capitalised.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-000065992e72', 'multiple_choice', 'How do you say "please" in a restaurant in Germany?', '["Bitte","Danke","Tschüss","Hallo"]', 'Bitte', 1, 9),
  ('00000000-0000-4000-a000-000065992e72', 'fill_blank', 'Wo ___ (to live) du?', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 2, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, french_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-000065992e72', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', NULL, 'Used in Wohnen', 'formal', false, 1),
  ('00000000-0000-4000-a000-000065992e72', 'Guten Tag!', 'Good day!', 'نهارك سعيد!', NULL, 'Used in Wohnen', 'formal', false, 2),
  ('00000000-0000-4000-a000-000065992e72', 'Hallo, wie geht es Ihnen?', 'Hello, how are you?', 'مرحباً، كيف حالكم؟', NULL, 'Used in Wohnen', 'formal', false, 3),
  ('00000000-0000-4000-a000-000065992e72', 'Schön, Sie kennenzulernen!', 'Nice to meet you!', 'سعيد بلقائكم!', NULL, 'Used in Wohnen', 'formal', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-000065992e72', 'das das Haus (die Häuser)', 'house — البيت', 'noun', 'vocabulary', 1),
  ('00000000-0000-4000-a000-000065992e72', 'die die Wohnung (die Wohnungen)', 'apartment — الشقة', 'noun', 'vocabulary', 2),
  ('00000000-0000-4000-a000-000065992e72', 'das das Zimmer (die Zimmer)', 'room — الغرفة', 'noun', 'vocabulary', 3),
  ('00000000-0000-4000-a000-000065992e72', 'die die Küche (die Küchen)', 'kitchen — المطبخ', 'noun', 'vocabulary', 4),
  ('00000000-0000-4000-a000-000065992e72', 'das das Schlafzimmer', 'bedroom — غرفة النوم', 'noun', 'vocabulary', 5),
  ('00000000-0000-4000-a000-000065992e72', 'das das Bad (die Bäder)', 'bathroom — الحمام', 'noun', 'vocabulary', 6),
  ('00000000-0000-4000-a000-000065992e72', 'der der Tisch (die Tische)', 'table — الطاولة', 'noun', 'vocabulary', 7),
  ('00000000-0000-4000-a000-000065992e72', 'der der Stuhl (die Stühle)', 'chair — الكرسي', 'noun', 'vocabulary', 8),
  ('00000000-0000-4000-a000-000065992e72', 'das das Bett (die Betten)', 'bed — السرير', 'noun', 'vocabulary', 9),
  ('00000000-0000-4000-a000-000065992e72', 'wohnen', 'to live — يسكن', 'verb', 'vocabulary', 10),
  ('00000000-0000-4000-a000-000065992e72', 'Hallo', 'hello — مرحباً', 'interjection', 'vocabulary', 11),
  ('00000000-0000-4000-a000-000065992e72', 'Guten Morgen', 'good morning — صباح الخير', 'phrase', 'vocabulary', 12),
  ('00000000-0000-4000-a000-000065992e72', 'Guten Tag', 'good day — نهارك سعيد', 'phrase', 'vocabulary', 13),
  ('00000000-0000-4000-a000-000065992e72', 'Tschüss', 'bye — مع السلامة', 'interjection', 'vocabulary', 14),
  ('00000000-0000-4000-a000-000065992e72', 'der der Name (die Namen)', 'name — الاسم', 'noun', 'vocabulary', 15),
  ('00000000-0000-4000-a000-000065992e72', 'Ich lerne Deutsch.', 'I am learning German.', 'Präsens der regelmäßigen Verben (Present Tense)', 'grammar', 16),
  ('00000000-0000-4000-a000-000065992e72', 'Du wohnst in Berlin.', 'You live in Berlin.', 'Präsens der regelmäßigen Verben (Present Tense)', 'grammar', 17),
  ('00000000-0000-4000-a000-000065992e72', 'Er arbeitet bei Siemens.', 'He works at Siemens.', 'Präsens der regelmäßigen Verben (Present Tense)', 'grammar', 18);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, french_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-000065992e72', 'Wohnungssuche — Leseübung', 'Ich wohne in einer schönen Wohnung in Berlin. Die Wohnung hat drei Zimmer: ein Wohnzimmer, ein Schlafzimmer und eine Küche. Das Wohnzimmer ist groß und gemütlich. Es gibt ein Sofa, einen Tisch und einen Schrank. Die Küche ist modern. Der Herd und der Kühlschrank sind neu. Mein Schlafzimmer ist klein, aber hell. Das Bett ist bequem. Ich fühle mich in meiner Wohnung sehr wohl.', 'I live in a nice apartment in Berlin. The apartment has three rooms: a living room, a bedroom and a kitchen. The living room is big and cozy. There is a sofa, a table and a wardrobe. The kitchen is modern. The stove and refrigerator are new. My bedroom is small but bright. The bed is comfortable. I feel very comfortable in my apartment.', 'أسكن في شقة جميلة في برلين. الشقة فيها ثلاث غرف: غرفة معيشة وغرفة نوم ومطبخ. غرفة المعيشة كبيرة ومريحة. يوجد أريكة وطاولة وخزانة. المطبخ حديث. الموقد والثلاجة جديدان. غرفة نومي صغيرة لكنها مشرقة. السرير مريح. أشعر براحة كبيرة في شقتي.', NULL, 64, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, french_translation, duration_seconds, speaker_count, scenario) values
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

[Lehrerin]: ممتاز! إلى الغد!', '[Lehrerin]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: ', 72, 2, 'Wohnen');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-000065992e72', '🔊 Sprechen: Wohnungssuche', 'Roleplay: You are in a Hamburg office. Introduce yourself and talk about Apartment Hunting. Your partner (AI) will respond naturally.', 'Apartment Hunting', ARRAY['Use complete sentences — not single words','Pause between phrases, not between words','Don''t translate from Arabic word-for-word']::text[], ARRAY['das Haus','die Wohnung','das Zimmer','die Küche','das Schlafzimmer','das Bad','der Tisch','der Stuhl']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-000065992e72', '✏️ Schreiben: Wohnungssuche', 'Write an email to a German friend about "Apartment Hunting". Tell them what you learned, what you found interesting, and ask two questions about their experience with this topic. Use at least 8 vocabulary words from this lesson. Sign off naturally ("Viele Grüße", "Liebe Grüße").', ARRAY['Start with "Hallo" or "Liebe/r"','Keep sentences short (Subject-Verb-Object)','End with a friendly farewell']::text[], ARRAY['das Haus','die Wohnung','das Zimmer','die Küche','das Schlafzimmer','das Bad','der Tisch','der Stuhl']::text[], ARRAY['Sentence structure','Vocabulary usage']::text[], 50, 100, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000065992e72', 'Wohnungssuche — Roleplay', 'Apartment Hunting', 'Student', 'Teacher', 'Practice conversation about Apartment Hunting', 'Hallo! Lass uns über dieses Thema sprechen.', 'beginner', 1, ARRAY['das Haus','die Wohnung','das Zimmer','die Küche','das Schlafzimmer','das Bad','der Tisch','der Stuhl']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000065992e72', 'Wohnungssuche — Advanced Roleplay', 'Apartment Hunting', 'Customer', 'Assistant', 'Extended conversation about Apartment Hunting', 'Guten Tag! Wie kann ich Ihnen helfen?', 'beginner', 2, ARRAY['das Haus','die Wohnung','das Zimmer','die Küche','das Schlafzimmer','das Bad','der Tisch','der Stuhl']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-000065992e72', 'Wohnungssuche — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Wohnungssuche".', 'Creative practice for Apartment Hunting', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-000065992e72', '📚 Hausaufgabe: Wohnungssuche', 'Complete these tasks to reinforce "Wohnungssuche".', 'mixed', '[{"description":"Create 10 flashcards from this lesson''s vocabulary — write German on one side, Arabic on the other. Test yourself 3 times."},{"description":"Write 6 sentences about Apartment Hunting: 2 statements, 2 questions, 2 negations — all using present_tense."},{"description":"Record yourself reading the dialogue aloud. Listen to the recording and note 3 things to improve."},{"description":"Find 3 real German websites, videos, or articles about Apartment Hunting. Note 5 new words you discovered."}]', 50, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-000065992e72', '🎯 Great work! In this lesson you learned 142 new words about Apartment Hunting. You practiced present_tense — an important grammar topic for A1 level. You read a text, listened to a dialogue, and practiced speaking and writing. Keep going!', '["142 vocabulary items about Apartment Hunting","present_tense — grammar explanation and practice","Reading comprehension: text about Apartment Hunting","Listening comprehension: dialogue about Apartment Hunting","Speaking practice: roleplay/discussion about Apartment Hunting","Writing task: text about Apartment Hunting"]', '[{"title":"Wohnungssuche Review","summary":"present_tense — the main grammar focus. Focus on understanding when to use this structure and forming basic sentences."}]', ARRAY['das Haus (house)','die Wohnung (apartment)','das Zimmer (room)','die Küche (kitchen)','das Schlafzimmer (bedroom)']::text[], ARRAY['Don''t translate from Arabic word-for-word — German has different sentence structure','Learn every noun with its article: NEVER learn "Tisch" alone, always "der Tisch"','Verb always in position 2 in main clauses']::text[], ARRAY['Practice 15-20 minutes daily — consistency beats intensity','Speak out loud: German pronunciation needs muscle memory','Use the new vocabulary within 24 hours or you''ll forget it','Watch German YouTube videos about Apartment Hunting for authentic input']::text[]);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000065992e72', 'Pronunciation: German sounds for "home"', 'In German, vowels are pure — unlike English diphthongs. The "ch" sound after a, o, u is guttural (like Arabic خ). After e, i, ä, ö, ü it''s soft (like English "huge" without the "u").

Common mistake for Arabic speakers: Arabic speakers tend to over-emphasise consonants. German flows — connect words smoothly (e.g., "Ich habe" becomes /ɪçabə/ not /ɪç ˈhaːbə/).', '[]', '[{"german":"das Haus","arabic":"","english":"","phonetic":""},{"german":"die Wohnung","arabic":"","english":"","phonetic":""},{"german":"das Zimmer","arabic":"","english":"","phonetic":""},{"german":"die Küche","arabic":"","english":"","phonetic":""}]', '[]', 10);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000065992e72', 'translation', 'Translate to German: "I use the word "house" in a sentence about Apartment Hunting."', '[]', 'Das Haus ist groß.', 'Use das  "das Haus" with the correct present_tense form.', 1, 40);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000065992e72', 'translation', 'Translate to German: "I use the word "apartment" in a sentence about Apartment Hunting."', '[]', 'Meine Wohnung hat drei Zimmer.', 'Use die  "die Wohnung" with the correct present_tense form.', 1, 41);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000065992e72', 'translation', 'Translate to German: "I use the word "room" in a sentence about Apartment Hunting."', '[]', 'Das Zimmer ist hell.', 'Use das  "das Zimmer" with the correct present_tense form.', 1, 42);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000065992e72', 'Culture: 🇩🇪 Deutsche Kultur: Apartment Hunting', 'In Germany, Apartment Hunting is approached with typical German directness and efficiency. Germans value clarity over small talk. When discussing Apartment Hunting, expect honest feedback and straightforward questions. This is not rudeness — it''s cultural. Arabic speakers often find this too direct at first, but you''ll appreciate it once you get used to it.

في ألمانيا، يتم التعامل مع Apartment Hunting بوضوح وكفاءة. الألمان يقدرون الوضوح أكثر من المجاملات. لا تعتبر هذه وقاحة - إنها ثقافة مختلفة.', '["Tip: Always use \"Sie\" (formal) with strangers and colleagues","Tip: Germans appreciate punctuality — arrive 5 minutes early","Tip: Direct feedback is a sign of respect, not criticism","Tip: Prepare factual arguments, not emotional appeals"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000065992e72', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Forgetting the difference between \"wohnen\" and \"leben\"","correction":"wohnen = to live somewhere (address), leben = to be alive/exist","explanation":"Arabic uses one verb \"sakana\" for both concepts."},{"mistake":"Using the wrong article (der/die/das) for nouns","correction":"Learn each noun with its article as one piece","explanation":"Arabic has no articles for nouns without gender connection"}]', 30);

  -- Lesson 5: Meine Wohnung präsentieren (L-A1-03-05)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-000065992e73', '00000000-0000-4000-a000-000039b4d360', 'Meine Wohnung präsentieren', 'Present your apartment or ideal home.', 'Presenting Home', 'speaking', '["Understand and apply present_tense rules correctly","Use present_tense in real conversations","Avoid common mistakes Arabic speakers make with present_tense","Read and understand present_tense in context","Listen and identify present_tense in speech","Write sentences using present_tense correctly"]', 20, 5, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, french_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-000065992e73', 'das Haus', 'البيت', 'house', 'la maison', 'das', 'die Häuser', 'noun', 'Das Haus ist groß.', 'The house is big.', 'A1', 1),
  ('00000000-0000-4000-a000-000065992e73', 'die Wohnung', 'الشقة', 'apartment', 'l''appartement', 'die', 'die Wohnungen', 'noun', 'Meine Wohnung hat drei Zimmer.', 'My apartment has three rooms.', 'A1', 2),
  ('00000000-0000-4000-a000-000065992e73', 'das Zimmer', 'الغرفة', 'room', 'la chambre', 'das', 'die Zimmer', 'noun', 'Das Zimmer ist hell.', 'The room is bright.', 'A1', 3),
  ('00000000-0000-4000-a000-000065992e73', 'die Küche', 'المطبخ', 'kitchen', 'la cuisine', 'die', 'die Küchen', 'noun', 'Die Küche ist modern.', 'The kitchen is modern.', 'A1', 4),
  ('00000000-0000-4000-a000-000065992e73', 'das Schlafzimmer', 'غرفة النوم', 'bedroom', 'la chambre à coucher', 'das', NULL, 'noun', 'Mein Schlafzimmer ist gemütlich.', 'My bedroom is cozy.', 'A1', 5),
  ('00000000-0000-4000-a000-000065992e73', 'das Bad', 'الحمام', 'bathroom', 'la salle de bains', 'das', 'die Bäder', 'noun', 'Das Bad ist sauber.', 'The bathroom is clean.', 'A1', 6),
  ('00000000-0000-4000-a000-000065992e73', 'der Tisch', 'الطاولة', 'table', 'la table', 'der', 'die Tische', 'noun', 'Der Tisch ist aus Holz.', 'The table is made of wood.', 'A1', 7),
  ('00000000-0000-4000-a000-000065992e73', 'der Stuhl', 'الكرسي', 'chair', 'la chaise', 'der', 'die Stühle', 'noun', 'Der Stuhl ist bequem.', 'The chair is comfortable.', 'A1', 8),
  ('00000000-0000-4000-a000-000065992e73', 'das Bett', 'السرير', 'bed', 'le lit', 'das', 'die Betten', 'noun', 'Das Bett ist groß.', 'The bed is big.', 'A1', 9),
  ('00000000-0000-4000-a000-000065992e73', 'wohnen', 'يسكن', 'to live', 'habiter', NULL, NULL, 'verb', 'Ich wohne in Berlin.', 'I live in Berlin.', 'A1', 10),
  ('00000000-0000-4000-a000-000065992e73', 'Hallo', 'مرحباً', 'hello', 'bonjour', NULL, NULL, 'interjection', 'Hallo, wie geht es dir?', 'Hello, how are you?', 'A1', 11),
  ('00000000-0000-4000-a000-000065992e73', 'Guten Morgen', 'صباح الخير', 'good morning', 'bonjour (le matin)', NULL, NULL, 'phrase', 'Guten Morgen, Herr Müller.', 'Good morning, Mr. Müller.', 'A1', 12),
  ('00000000-0000-4000-a000-000065992e73', 'Guten Tag', 'نهارك سعيد', 'good day', 'bonjour (l''après-midi)', NULL, NULL, 'phrase', 'Guten Tag, Frau Schmidt.', 'Good day, Mrs. Schmidt.', 'A1', 13),
  ('00000000-0000-4000-a000-000065992e73', 'Tschüss', 'مع السلامة', 'bye', 'au revoir / salut', NULL, NULL, 'interjection', 'Tschüss, bis morgen!', 'Bye, see you tomorrow!', 'A1', 14),
  ('00000000-0000-4000-a000-000065992e73', 'der Name', 'الاسم', 'name', 'le nom', 'der', 'die Namen', 'noun', 'Mein Name ist Anna.', 'My name is Anna.', 'A1', 15),
  ('00000000-0000-4000-a000-000065992e73', 'wie', 'كيف', 'how', 'comment', NULL, NULL, 'adverb', 'Wie heißt du?', 'What is your name?', 'A1', 16),
  ('00000000-0000-4000-a000-000065992e73', 'freuen', 'يسر', 'to be pleased', 'se réjouir', NULL, NULL, 'verb', 'Ich freue mich, dich kennenzulernen.', 'I am pleased to meet you.', 'A1', 17),
  ('00000000-0000-4000-a000-000065992e73', 'Willkommen', 'أهلاً وسهلاً', 'welcome', 'bienvenue', NULL, NULL, 'interjection', 'Willkommen in Deutschland!', 'Welcome to Germany!', 'A1', 18),
  ('00000000-0000-4000-a000-000065992e73', 'die Familie', 'العائلة', 'family', 'la famille', 'die', 'die Familien', 'noun', 'Meine Familie ist groß.', 'My family is big.', 'A1', 19),
  ('00000000-0000-4000-a000-000065992e73', 'der Vater', 'الأب', 'father', 'le père', 'der', 'die Väter', 'noun', 'Mein Vater ist Ingenieur.', 'My father is an engineer.', 'A1', 20),
  ('00000000-0000-4000-a000-000065992e73', 'die Mutter', 'الأم', 'mother', 'la mère', 'die', 'die Mütter', 'noun', 'Meine Mutter kocht gut.', 'My mother cooks well.', 'A1', 21),
  ('00000000-0000-4000-a000-000065992e73', 'der Bruder', 'الأخ', 'brother', 'le frère', 'der', 'die Brüder', 'noun', 'Mein Bruder ist 15 Jahre alt.', 'My brother is 15 years old.', 'A1', 22),
  ('00000000-0000-4000-a000-000065992e73', 'die Schwester', 'الأخت', 'sister', 'la sœur', 'die', 'die Schwestern', 'noun', 'Meine Schwester studiert Medizin.', 'My sister studies medicine.', 'A1', 23),
  ('00000000-0000-4000-a000-000065992e73', 'die Geschwister', 'الإخوة', 'siblings', 'les frères et sœurs', 'die', NULL, 'noun', 'Hast du Geschwister?', 'Do you have siblings?', 'A1', 24),
  ('00000000-0000-4000-a000-000065992e73', 'der Sohn', 'الابن', 'son', 'le fils', 'der', 'die Söhne', 'noun', 'Wir haben einen Sohn.', 'We have a son.', 'A1', 25),
  ('00000000-0000-4000-a000-000065992e73', 'die Tochter', 'الابنة', 'daughter', 'la fille', 'die', 'die Töchter', 'noun', 'Meine Tochter geht zur Schule.', 'My daughter goes to school.', 'A1', 26),
  ('00000000-0000-4000-a000-000065992e73', 'die Großeltern', 'الأجداد', 'grandparents', 'les grands-parents', 'die', NULL, 'noun', 'Meine Großeltern wohnen auf dem Land.', 'My grandparents live in the countryside.', 'A1', 27),
  ('00000000-0000-4000-a000-000065992e73', 'verheiratet', 'متزوج', 'married', 'marié(e)', NULL, NULL, 'adjective', 'Meine Eltern sind verheiratet.', 'My parents are married.', 'A1', 28),
  ('00000000-0000-4000-a000-000065992e73', 'das Brot', 'الخبز', 'bread', 'le pain', 'das', 'die Brote', 'noun', 'Ich kaufe ein Brot.', 'I buy a loaf of bread.', 'A1', 29),
  ('00000000-0000-4000-a000-000065992e73', 'die Milch', 'الحليب', 'milk', 'le lait', 'die', NULL, 'noun', 'Die Milch ist frisch.', 'The milk is fresh.', 'A1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000065992e73', 'Präsens der regelmäßigen Verben (Present Tense) / المضارع للأفعال المنتظمة', 'In German, regular verbs follow a consistent pattern. The infinitive ends in -en. Remove the -en and add the personal endings: ich -e, du -st, er/sie/es -t, wir -en, ihr -t, sie/Sie -en. For most Arabic speakers, this is easier than Arabic verb conjugation because German has fewer forms.', '[{"rule":"ich: stem + e","note":"Ich lerne, ich wohne, ich arbeite"},{"rule":"du: stem + st","note":"Du lernst, du wohnst, du arbeitest"},{"rule":"er/sie/es: stem + t","note":"Er lernt, sie wohnt, es arbeitet"},{"rule":"wir: stem + en","note":"Wir lernen, wir wohnen, wir arbeiten"},{"rule":"ihr: stem + t","note":"Ihr lernt, ihr wohnt, ihr arbeitet"},{"rule":"sie/Sie: stem + en","note":"Sie lernen, Sie wohnen"}]', '[{"german":"Ich lerne Deutsch.","arabic":"أنا أتعلم الألمانية.","english":"I am learning German."},{"german":"Du wohnst in Berlin.","arabic":"أنت تسكن في برلين.","english":"You live in Berlin."},{"german":"Er arbeitet bei Siemens.","arabic":"هو يعمل في سيمنز.","english":"He works at Siemens."}]', '[{"mistake":"Ich lernen Deutsch","correction":"Ich lerne Deutsch","explanation":"After \"ich\" we use the stem + e, not the infinitive."},{"mistake":"Er lerne Deutsch","correction":"Er lernt Deutsch","explanation":"After \"er/sie/es\" we add -t, not -e."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000065992e73', 'multiple_choice', 'Which German word matches "house"?', '["das Zimmer","das Schlafzimmer","die Küche","die Wohnung"]', 'das Haus', '"house" = "das Haus" in German. Article: das Plural: die Häuser', 1, 1),
  ('00000000-0000-4000-a000-000065992e73', 'multiple_choice', 'Which German word matches "apartment"?', '["das Zimmer","die Küche","das Haus","das Schlafzimmer"]', 'die Wohnung', '"apartment" = "die Wohnung" in German. Article: die Plural: die Wohnungen', 1, 2),
  ('00000000-0000-4000-a000-000065992e73', 'multiple_choice', 'Which German word matches "room"?', '["die Wohnung","das Haus","das Schlafzimmer","das Zimmer"]', 'das Zimmer', '"room" = "das Zimmer" in German. Article: das Plural: die Zimmer', 1, 3),
  ('00000000-0000-4000-a000-000065992e73', 'multiple_choice', 'Which German word matches "kitchen"?', '["das Schlafzimmer","das Zimmer","die Wohnung","das Haus"]', 'die Küche', '"kitchen" = "die Küche" in German. Article: die Plural: die Küchen', 1, 4),
  ('00000000-0000-4000-a000-000065992e73', 'multiple_choice', 'Which German word matches "bedroom"?', '["die Küche","das Zimmer","das Schlafzimmer","das Haus"]', 'das Schlafzimmer', '"bedroom" = "das Schlafzimmer" in German. Article: das ', 1, 5),
  ('00000000-0000-4000-a000-000065992e73', 'fill_gap', 'Complete the sentence: Ich ___ gern Presenting Home. (sprechen)', '["spreche","sprichst","spricht","sprechen"]', 'spreche', 'ich spreche gern = I like to speak. Stem: sprech- + e.', 2, 6),
  ('00000000-0000-4000-a000-000065992e73', 'translation', 'Translate to German: "I am learning about Presenting Home."', '["Ich lerne über Presenting Home.","Ich lerne Presenting Home.","Lerne ich Presenting Home."]', 'Ich lerne über Presenting Home.', '"Ich lerne über..." = "I am learning about..."', 2, 7),
  ('00000000-0000-4000-a000-000065992e73', 'matching', 'Match: Which word pairs are correct?', '["das Haus - house, die Wohnung - apartment"]', 'Matched correctly', 'Each German word has a unique English equivalent.', 2, 8);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-000065992e73', 'multiple_choice', 'What does "das Haus" mean in English?', '["house","to run","beautiful","yesterday"]', 'house', 1, 1),
  ('00000000-0000-4000-a000-000065992e73', 'multiple_choice', 'What is the correct article for "die Wohnung"?', '["der","die","das","den"]', 'die', 1, 2),
  ('00000000-0000-4000-a000-000065992e73', 'true_false', 'The word "das Zimmer" is related to Presenting Home.', '["True","False"]', 'True', 1, 3),
  ('00000000-0000-4000-a000-000065992e73', 'multiple_choice', 'Which sentence correctly uses present_tense?', '["Ich lerne Deutsch.","Du wohnst in Berlin.","Er arbeitet bei Siemens."]', 'Ich lerne Deutsch.', 2, 4),
  ('00000000-0000-4000-a000-000065992e73', 'true_false', 'German word order puts the verb in second position in main clauses.', '["True","False"]', 'True', 1, 5),
  ('00000000-0000-4000-a000-000065992e73', 'fill_blank', 'Complete: Ich ___ (kitchen) Deutsch.', '["die Küche","lernt","lernst","lernen"]', 'lerne', 2, 6),
  ('00000000-0000-4000-a000-000065992e73', 'multiple_choice', 'What is the German word for "bedroom"?', '["das Schlafzimmer","das Bad","der Tisch","der Stuhl"]', 'das Schlafzimmer', 1, 7),
  ('00000000-0000-4000-a000-000065992e73', 'true_false', 'In German, ALL nouns are always capitalised.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-000065992e73', 'multiple_choice', 'How do you say "please" in a restaurant in Germany?', '["Bitte","Danke","Tschüss","Hallo"]', 'Bitte', 1, 9),
  ('00000000-0000-4000-a000-000065992e73', 'fill_blank', 'Wo ___ (to live) du?', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 2, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, french_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-000065992e73', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', NULL, 'Used in Wohnen', 'formal', false, 1),
  ('00000000-0000-4000-a000-000065992e73', 'Guten Tag!', 'Good day!', 'نهارك سعيد!', NULL, 'Used in Wohnen', 'formal', false, 2),
  ('00000000-0000-4000-a000-000065992e73', 'Hallo, wie geht es Ihnen?', 'Hello, how are you?', 'مرحباً، كيف حالكم؟', NULL, 'Used in Wohnen', 'formal', false, 3),
  ('00000000-0000-4000-a000-000065992e73', 'Schön, Sie kennenzulernen!', 'Nice to meet you!', 'سعيد بلقائكم!', NULL, 'Used in Wohnen', 'formal', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-000065992e73', 'das das Haus (die Häuser)', 'house — البيت', 'noun', 'vocabulary', 1),
  ('00000000-0000-4000-a000-000065992e73', 'die die Wohnung (die Wohnungen)', 'apartment — الشقة', 'noun', 'vocabulary', 2),
  ('00000000-0000-4000-a000-000065992e73', 'das das Zimmer (die Zimmer)', 'room — الغرفة', 'noun', 'vocabulary', 3),
  ('00000000-0000-4000-a000-000065992e73', 'die die Küche (die Küchen)', 'kitchen — المطبخ', 'noun', 'vocabulary', 4),
  ('00000000-0000-4000-a000-000065992e73', 'das das Schlafzimmer', 'bedroom — غرفة النوم', 'noun', 'vocabulary', 5),
  ('00000000-0000-4000-a000-000065992e73', 'das das Bad (die Bäder)', 'bathroom — الحمام', 'noun', 'vocabulary', 6),
  ('00000000-0000-4000-a000-000065992e73', 'der der Tisch (die Tische)', 'table — الطاولة', 'noun', 'vocabulary', 7),
  ('00000000-0000-4000-a000-000065992e73', 'der der Stuhl (die Stühle)', 'chair — الكرسي', 'noun', 'vocabulary', 8),
  ('00000000-0000-4000-a000-000065992e73', 'das das Bett (die Betten)', 'bed — السرير', 'noun', 'vocabulary', 9),
  ('00000000-0000-4000-a000-000065992e73', 'wohnen', 'to live — يسكن', 'verb', 'vocabulary', 10),
  ('00000000-0000-4000-a000-000065992e73', 'Hallo', 'hello — مرحباً', 'interjection', 'vocabulary', 11),
  ('00000000-0000-4000-a000-000065992e73', 'Guten Morgen', 'good morning — صباح الخير', 'phrase', 'vocabulary', 12),
  ('00000000-0000-4000-a000-000065992e73', 'Guten Tag', 'good day — نهارك سعيد', 'phrase', 'vocabulary', 13),
  ('00000000-0000-4000-a000-000065992e73', 'Tschüss', 'bye — مع السلامة', 'interjection', 'vocabulary', 14),
  ('00000000-0000-4000-a000-000065992e73', 'der der Name (die Namen)', 'name — الاسم', 'noun', 'vocabulary', 15),
  ('00000000-0000-4000-a000-000065992e73', 'Ich lerne Deutsch.', 'I am learning German.', 'Präsens der regelmäßigen Verben (Present Tense)', 'grammar', 16),
  ('00000000-0000-4000-a000-000065992e73', 'Du wohnst in Berlin.', 'You live in Berlin.', 'Präsens der regelmäßigen Verben (Present Tense)', 'grammar', 17),
  ('00000000-0000-4000-a000-000065992e73', 'Er arbeitet bei Siemens.', 'He works at Siemens.', 'Präsens der regelmäßigen Verben (Present Tense)', 'grammar', 18);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, french_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-000065992e73', 'Meine Wohnung präsentieren — Leseübung', 'Ich wohne in einer schönen Wohnung in Berlin. Die Wohnung hat drei Zimmer: ein Wohnzimmer, ein Schlafzimmer und eine Küche. Das Wohnzimmer ist groß und gemütlich. Es gibt ein Sofa, einen Tisch und einen Schrank. Die Küche ist modern. Der Herd und der Kühlschrank sind neu. Mein Schlafzimmer ist klein, aber hell. Das Bett ist bequem. Ich fühle mich in meiner Wohnung sehr wohl.', 'I live in a nice apartment in Berlin. The apartment has three rooms: a living room, a bedroom and a kitchen. The living room is big and cozy. There is a sofa, a table and a wardrobe. The kitchen is modern. The stove and refrigerator are new. My bedroom is small but bright. The bed is comfortable. I feel very comfortable in my apartment.', 'أسكن في شقة جميلة في برلين. الشقة فيها ثلاث غرف: غرفة معيشة وغرفة نوم ومطبخ. غرفة المعيشة كبيرة ومريحة. يوجد أريكة وطاولة وخزانة. المطبخ حديث. الموقد والثلاجة جديدان. غرفة نومي صغيرة لكنها مشرقة. السرير مريح. أشعر براحة كبيرة في شقتي.', NULL, 64, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, french_translation, duration_seconds, speaker_count, scenario) values
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

[Lehrerin]: ممتاز! إلى الغد!', '[Lehrerin]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: ', 72, 2, 'Wohnen');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-000065992e73', '🔊 Sprechen: Meine Wohnung präsentieren', 'Roleplay: You are in a Hamburg office. Introduce yourself and talk about Presenting Home. Your partner (AI) will respond naturally.', 'Presenting Home', ARRAY['Use complete sentences — not single words','Pause between phrases, not between words','Don''t translate from Arabic word-for-word']::text[], ARRAY['das Haus','die Wohnung','das Zimmer','die Küche','das Schlafzimmer','das Bad','der Tisch','der Stuhl']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-000065992e73', '✏️ Schreiben: Meine Wohnung präsentieren', 'Write an email to a German friend about "Presenting Home". Tell them what you learned, what you found interesting, and ask two questions about their experience with this topic. Use at least 8 vocabulary words from this lesson. Sign off naturally ("Viele Grüße", "Liebe Grüße").', ARRAY['Start with "Hallo" or "Liebe/r"','Keep sentences short (Subject-Verb-Object)','End with a friendly farewell']::text[], ARRAY['das Haus','die Wohnung','das Zimmer','die Küche','das Schlafzimmer','das Bad','der Tisch','der Stuhl']::text[], ARRAY['Sentence structure','Vocabulary usage']::text[], 50, 100, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000065992e73', 'Meine Wohnung präsentieren — Roleplay', 'Presenting Home', 'Student', 'Teacher', 'Practice conversation about Presenting Home', 'Hallo! Lass uns über dieses Thema sprechen.', 'beginner', 1, ARRAY['das Haus','die Wohnung','das Zimmer','die Küche','das Schlafzimmer','das Bad','der Tisch','der Stuhl']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000065992e73', 'Meine Wohnung präsentieren — Advanced Roleplay', 'Presenting Home', 'Customer', 'Assistant', 'Extended conversation about Presenting Home', 'Guten Tag! Wie kann ich Ihnen helfen?', 'beginner', 2, ARRAY['das Haus','die Wohnung','das Zimmer','die Küche','das Schlafzimmer','das Bad','der Tisch','der Stuhl']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-000065992e73', 'Meine Wohnung präsentieren — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Meine Wohnung präsentieren".', 'Creative practice for Presenting Home', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-000065992e73', '📚 Hausaufgabe: Meine Wohnung präsentieren', 'Complete these tasks to reinforce "Meine Wohnung präsentieren".', 'mixed', '[{"description":"Create 10 flashcards from this lesson''s vocabulary — write German on one side, Arabic on the other. Test yourself 3 times."},{"description":"Write 6 sentences about Presenting Home: 2 statements, 2 questions, 2 negations — all using present_tense."},{"description":"Record yourself reading the dialogue aloud. Listen to the recording and note 3 things to improve."},{"description":"Find 3 real German websites, videos, or articles about Presenting Home. Note 5 new words you discovered."}]', 50, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-000065992e73', '🎯 Great work! In this lesson you learned 142 new words about Presenting Home. You practiced present_tense — an important grammar topic for A1 level. You read a text, listened to a dialogue, and practiced speaking and writing. Keep going!', '["142 vocabulary items about Presenting Home","present_tense — grammar explanation and practice","Reading comprehension: text about Presenting Home","Listening comprehension: dialogue about Presenting Home","Speaking practice: roleplay/discussion about Presenting Home","Writing task: text about Presenting Home"]', '[{"title":"Meine Wohnung präsentieren Review","summary":"present_tense — the main grammar focus. Focus on understanding when to use this structure and forming basic sentences."}]', ARRAY['das Haus (house)','die Wohnung (apartment)','das Zimmer (room)','die Küche (kitchen)','das Schlafzimmer (bedroom)']::text[], ARRAY['Don''t translate from Arabic word-for-word — German has different sentence structure','Learn every noun with its article: NEVER learn "Tisch" alone, always "der Tisch"','Verb always in position 2 in main clauses']::text[], ARRAY['Practice 15-20 minutes daily — consistency beats intensity','Speak out loud: German pronunciation needs muscle memory','Use the new vocabulary within 24 hours or you''ll forget it','Watch German YouTube videos about Presenting Home for authentic input']::text[]);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000065992e73', 'Pronunciation: German sounds for "home"', 'In German, vowels are pure — unlike English diphthongs. The "ch" sound after a, o, u is guttural (like Arabic خ). After e, i, ä, ö, ü it''s soft (like English "huge" without the "u").

Common mistake for Arabic speakers: Arabic speakers tend to over-emphasise consonants. German flows — connect words smoothly (e.g., "Ich habe" becomes /ɪçabə/ not /ɪç ˈhaːbə/).', '[]', '[{"german":"das Haus","arabic":"","english":"","phonetic":""},{"german":"die Wohnung","arabic":"","english":"","phonetic":""},{"german":"das Zimmer","arabic":"","english":"","phonetic":""},{"german":"die Küche","arabic":"","english":"","phonetic":""}]', '[]', 10);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000065992e73', 'translation', 'Translate to German: "I use the word "house" in a sentence about Presenting Home."', '[]', 'Das Haus ist groß.', 'Use das  "das Haus" with the correct present_tense form.', 1, 40);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000065992e73', 'translation', 'Translate to German: "I use the word "apartment" in a sentence about Presenting Home."', '[]', 'Meine Wohnung hat drei Zimmer.', 'Use die  "die Wohnung" with the correct present_tense form.', 1, 41);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000065992e73', 'translation', 'Translate to German: "I use the word "room" in a sentence about Presenting Home."', '[]', 'Das Zimmer ist hell.', 'Use das  "das Zimmer" with the correct present_tense form.', 1, 42);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000065992e73', 'Culture: 🇩🇪 Deutsche Kultur: Presenting Home', 'In Germany, Presenting Home is approached with typical German directness and efficiency. Germans value clarity over small talk. When discussing Presenting Home, expect honest feedback and straightforward questions. This is not rudeness — it''s cultural. Arabic speakers often find this too direct at first, but you''ll appreciate it once you get used to it.

في ألمانيا، يتم التعامل مع Presenting Home بوضوح وكفاءة. الألمان يقدرون الوضوح أكثر من المجاملات. لا تعتبر هذه وقاحة - إنها ثقافة مختلفة.', '["Tip: Always use \"Sie\" (formal) with strangers and colleagues","Tip: Germans appreciate punctuality — arrive 5 minutes early","Tip: Direct feedback is a sign of respect, not criticism","Tip: Prepare factual arguments, not emotional appeals"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000065992e73', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Forgetting the difference between \"wohnen\" and \"leben\"","correction":"wohnen = to live somewhere (address), leben = to be alive/exist","explanation":"Arabic uses one verb \"sakana\" for both concepts."},{"mistake":"Using the wrong article (der/die/das) for nouns","correction":"Learn each noun with its article as one piece","explanation":"Arabic has no articles for nouns without gender connection"}]', 30);

  -- Lesson 6: Test: Wohnen (L-A1-03-06)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-000065992e74', '00000000-0000-4000-a000-000039b4d360', 'Test: Wohnen', 'Test your knowledge of Module 3.', 'Module Test', 'test', '["Understand and apply present_tense rules correctly","Use present_tense in real conversations","Avoid common mistakes Arabic speakers make with present_tense","Read and understand present_tense in context","Listen and identify present_tense in speech","Write sentences using present_tense correctly"]', 20, 6, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, french_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-000065992e74', 'das Haus', 'البيت', 'house', 'la maison', 'das', 'die Häuser', 'noun', 'Das Haus ist groß.', 'The house is big.', 'A1', 1),
  ('00000000-0000-4000-a000-000065992e74', 'die Wohnung', 'الشقة', 'apartment', 'l''appartement', 'die', 'die Wohnungen', 'noun', 'Meine Wohnung hat drei Zimmer.', 'My apartment has three rooms.', 'A1', 2),
  ('00000000-0000-4000-a000-000065992e74', 'das Zimmer', 'الغرفة', 'room', 'la chambre', 'das', 'die Zimmer', 'noun', 'Das Zimmer ist hell.', 'The room is bright.', 'A1', 3),
  ('00000000-0000-4000-a000-000065992e74', 'die Küche', 'المطبخ', 'kitchen', 'la cuisine', 'die', 'die Küchen', 'noun', 'Die Küche ist modern.', 'The kitchen is modern.', 'A1', 4),
  ('00000000-0000-4000-a000-000065992e74', 'das Schlafzimmer', 'غرفة النوم', 'bedroom', 'la chambre à coucher', 'das', NULL, 'noun', 'Mein Schlafzimmer ist gemütlich.', 'My bedroom is cozy.', 'A1', 5),
  ('00000000-0000-4000-a000-000065992e74', 'das Bad', 'الحمام', 'bathroom', 'la salle de bains', 'das', 'die Bäder', 'noun', 'Das Bad ist sauber.', 'The bathroom is clean.', 'A1', 6),
  ('00000000-0000-4000-a000-000065992e74', 'der Tisch', 'الطاولة', 'table', 'la table', 'der', 'die Tische', 'noun', 'Der Tisch ist aus Holz.', 'The table is made of wood.', 'A1', 7),
  ('00000000-0000-4000-a000-000065992e74', 'der Stuhl', 'الكرسي', 'chair', 'la chaise', 'der', 'die Stühle', 'noun', 'Der Stuhl ist bequem.', 'The chair is comfortable.', 'A1', 8),
  ('00000000-0000-4000-a000-000065992e74', 'das Bett', 'السرير', 'bed', 'le lit', 'das', 'die Betten', 'noun', 'Das Bett ist groß.', 'The bed is big.', 'A1', 9),
  ('00000000-0000-4000-a000-000065992e74', 'wohnen', 'يسكن', 'to live', 'habiter', NULL, NULL, 'verb', 'Ich wohne in Berlin.', 'I live in Berlin.', 'A1', 10),
  ('00000000-0000-4000-a000-000065992e74', 'Hallo', 'مرحباً', 'hello', 'bonjour', NULL, NULL, 'interjection', 'Hallo, wie geht es dir?', 'Hello, how are you?', 'A1', 11),
  ('00000000-0000-4000-a000-000065992e74', 'Guten Morgen', 'صباح الخير', 'good morning', 'bonjour (le matin)', NULL, NULL, 'phrase', 'Guten Morgen, Herr Müller.', 'Good morning, Mr. Müller.', 'A1', 12),
  ('00000000-0000-4000-a000-000065992e74', 'Guten Tag', 'نهارك سعيد', 'good day', 'bonjour (l''après-midi)', NULL, NULL, 'phrase', 'Guten Tag, Frau Schmidt.', 'Good day, Mrs. Schmidt.', 'A1', 13),
  ('00000000-0000-4000-a000-000065992e74', 'Tschüss', 'مع السلامة', 'bye', 'au revoir / salut', NULL, NULL, 'interjection', 'Tschüss, bis morgen!', 'Bye, see you tomorrow!', 'A1', 14),
  ('00000000-0000-4000-a000-000065992e74', 'der Name', 'الاسم', 'name', 'le nom', 'der', 'die Namen', 'noun', 'Mein Name ist Anna.', 'My name is Anna.', 'A1', 15),
  ('00000000-0000-4000-a000-000065992e74', 'wie', 'كيف', 'how', 'comment', NULL, NULL, 'adverb', 'Wie heißt du?', 'What is your name?', 'A1', 16),
  ('00000000-0000-4000-a000-000065992e74', 'freuen', 'يسر', 'to be pleased', 'se réjouir', NULL, NULL, 'verb', 'Ich freue mich, dich kennenzulernen.', 'I am pleased to meet you.', 'A1', 17),
  ('00000000-0000-4000-a000-000065992e74', 'Willkommen', 'أهلاً وسهلاً', 'welcome', 'bienvenue', NULL, NULL, 'interjection', 'Willkommen in Deutschland!', 'Welcome to Germany!', 'A1', 18),
  ('00000000-0000-4000-a000-000065992e74', 'die Familie', 'العائلة', 'family', 'la famille', 'die', 'die Familien', 'noun', 'Meine Familie ist groß.', 'My family is big.', 'A1', 19),
  ('00000000-0000-4000-a000-000065992e74', 'der Vater', 'الأب', 'father', 'le père', 'der', 'die Väter', 'noun', 'Mein Vater ist Ingenieur.', 'My father is an engineer.', 'A1', 20),
  ('00000000-0000-4000-a000-000065992e74', 'die Mutter', 'الأم', 'mother', 'la mère', 'die', 'die Mütter', 'noun', 'Meine Mutter kocht gut.', 'My mother cooks well.', 'A1', 21),
  ('00000000-0000-4000-a000-000065992e74', 'der Bruder', 'الأخ', 'brother', 'le frère', 'der', 'die Brüder', 'noun', 'Mein Bruder ist 15 Jahre alt.', 'My brother is 15 years old.', 'A1', 22),
  ('00000000-0000-4000-a000-000065992e74', 'die Schwester', 'الأخت', 'sister', 'la sœur', 'die', 'die Schwestern', 'noun', 'Meine Schwester studiert Medizin.', 'My sister studies medicine.', 'A1', 23),
  ('00000000-0000-4000-a000-000065992e74', 'die Geschwister', 'الإخوة', 'siblings', 'les frères et sœurs', 'die', NULL, 'noun', 'Hast du Geschwister?', 'Do you have siblings?', 'A1', 24),
  ('00000000-0000-4000-a000-000065992e74', 'der Sohn', 'الابن', 'son', 'le fils', 'der', 'die Söhne', 'noun', 'Wir haben einen Sohn.', 'We have a son.', 'A1', 25),
  ('00000000-0000-4000-a000-000065992e74', 'die Tochter', 'الابنة', 'daughter', 'la fille', 'die', 'die Töchter', 'noun', 'Meine Tochter geht zur Schule.', 'My daughter goes to school.', 'A1', 26),
  ('00000000-0000-4000-a000-000065992e74', 'die Großeltern', 'الأجداد', 'grandparents', 'les grands-parents', 'die', NULL, 'noun', 'Meine Großeltern wohnen auf dem Land.', 'My grandparents live in the countryside.', 'A1', 27),
  ('00000000-0000-4000-a000-000065992e74', 'verheiratet', 'متزوج', 'married', 'marié(e)', NULL, NULL, 'adjective', 'Meine Eltern sind verheiratet.', 'My parents are married.', 'A1', 28),
  ('00000000-0000-4000-a000-000065992e74', 'das Brot', 'الخبز', 'bread', 'le pain', 'das', 'die Brote', 'noun', 'Ich kaufe ein Brot.', 'I buy a loaf of bread.', 'A1', 29),
  ('00000000-0000-4000-a000-000065992e74', 'die Milch', 'الحليب', 'milk', 'le lait', 'die', NULL, 'noun', 'Die Milch ist frisch.', 'The milk is fresh.', 'A1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000065992e74', 'Präsens der regelmäßigen Verben (Present Tense) / المضارع للأفعال المنتظمة', 'In German, regular verbs follow a consistent pattern. The infinitive ends in -en. Remove the -en and add the personal endings: ich -e, du -st, er/sie/es -t, wir -en, ihr -t, sie/Sie -en. For most Arabic speakers, this is easier than Arabic verb conjugation because German has fewer forms.', '[{"rule":"ich: stem + e","note":"Ich lerne, ich wohne, ich arbeite"},{"rule":"du: stem + st","note":"Du lernst, du wohnst, du arbeitest"},{"rule":"er/sie/es: stem + t","note":"Er lernt, sie wohnt, es arbeitet"},{"rule":"wir: stem + en","note":"Wir lernen, wir wohnen, wir arbeiten"},{"rule":"ihr: stem + t","note":"Ihr lernt, ihr wohnt, ihr arbeitet"},{"rule":"sie/Sie: stem + en","note":"Sie lernen, Sie wohnen"}]', '[{"german":"Ich lerne Deutsch.","arabic":"أنا أتعلم الألمانية.","english":"I am learning German."},{"german":"Du wohnst in Berlin.","arabic":"أنت تسكن في برلين.","english":"You live in Berlin."},{"german":"Er arbeitet bei Siemens.","arabic":"هو يعمل في سيمنز.","english":"He works at Siemens."}]', '[{"mistake":"Ich lernen Deutsch","correction":"Ich lerne Deutsch","explanation":"After \"ich\" we use the stem + e, not the infinitive."},{"mistake":"Er lerne Deutsch","correction":"Er lernt Deutsch","explanation":"After \"er/sie/es\" we add -t, not -e."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000065992e74', 'multiple_choice', 'Which German word matches "house"?', '["das Zimmer","die Küche","das Schlafzimmer","die Wohnung"]', 'das Haus', '"house" = "das Haus" in German. Article: das Plural: die Häuser', 1, 1),
  ('00000000-0000-4000-a000-000065992e74', 'multiple_choice', 'Which German word matches "apartment"?', '["die Wohnung","das Zimmer","die Küche","das Schlafzimmer"]', 'die Wohnung', '"apartment" = "die Wohnung" in German. Article: die Plural: die Wohnungen', 1, 2),
  ('00000000-0000-4000-a000-000065992e74', 'multiple_choice', 'Which German word matches "room"?', '["das Zimmer","das Haus","die Wohnung","die Küche"]', 'das Zimmer', '"room" = "das Zimmer" in German. Article: das Plural: die Zimmer', 1, 3),
  ('00000000-0000-4000-a000-000065992e74', 'multiple_choice', 'Which German word matches "kitchen"?', '["die Küche","das Haus","die Wohnung","das Zimmer"]', 'die Küche', '"kitchen" = "die Küche" in German. Article: die Plural: die Küchen', 1, 4),
  ('00000000-0000-4000-a000-000065992e74', 'multiple_choice', 'Which German word matches "bedroom"?', '["die Wohnung","das Haus","die Küche","das Schlafzimmer"]', 'das Schlafzimmer', '"bedroom" = "das Schlafzimmer" in German. Article: das ', 1, 5),
  ('00000000-0000-4000-a000-000065992e74', 'fill_gap', 'Complete the sentence: Ich ___ gern über Module Test. (sprechen)', '["spreche","sprichst","spricht","sprechen"]', 'spreche', 'ich spreche gern = I like to speak. Stem: sprech- + e.', 2, 6),
  ('00000000-0000-4000-a000-000065992e74', 'translation', 'Translate to German: "I am learning about Module Test."', '["Ich lerne über Module Test.","Ich lerne Module Test.","Lerne ich Module Test."]', 'Ich lerne über Module Test.', '"Ich lerne über..." = "I am learning about..."', 2, 7),
  ('00000000-0000-4000-a000-000065992e74', 'matching', 'Match: Which word pairs are correct?', '["das Haus - house, die Wohnung - apartment"]', 'Matched correctly', 'Each German word has a unique English equivalent.', 2, 8);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-000065992e74', 'multiple_choice', 'What does "das Haus" mean in English?', '["house","to run","beautiful","yesterday"]', 'house', 1, 1),
  ('00000000-0000-4000-a000-000065992e74', 'multiple_choice', 'What is the correct article for "die Wohnung"?', '["der","die","das","den"]', 'die', 1, 2),
  ('00000000-0000-4000-a000-000065992e74', 'true_false', 'The word "das Zimmer" is related to Module Test.', '["True","False"]', 'True', 1, 3),
  ('00000000-0000-4000-a000-000065992e74', 'multiple_choice', 'Which sentence correctly uses present_tense?', '["Ich lerne Deutsch.","Du wohnst in Berlin.","Er arbeitet bei Siemens."]', 'Ich lerne Deutsch.', 2, 4),
  ('00000000-0000-4000-a000-000065992e74', 'true_false', 'German word order puts the verb in second position in main clauses.', '["True","False"]', 'True', 1, 5),
  ('00000000-0000-4000-a000-000065992e74', 'fill_blank', 'Complete: Ich ___ (kitchen) Deutsch.', '["die Küche","lernt","lernst","lernen"]', 'lerne', 2, 6),
  ('00000000-0000-4000-a000-000065992e74', 'multiple_choice', 'What is the German word for "bedroom"?', '["das Schlafzimmer","das Bad","der Tisch","der Stuhl"]', 'das Schlafzimmer', 1, 7),
  ('00000000-0000-4000-a000-000065992e74', 'true_false', 'In German, ALL nouns are always capitalised.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-000065992e74', 'multiple_choice', 'How do you say "please" in a restaurant in Germany?', '["Bitte","Danke","Tschüss","Hallo"]', 'Bitte', 1, 9),
  ('00000000-0000-4000-a000-000065992e74', 'fill_blank', 'Wo ___ (to live) du?', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 2, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, french_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-000065992e74', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', NULL, 'Used in Wohnen', 'formal', false, 1),
  ('00000000-0000-4000-a000-000065992e74', 'Guten Tag!', 'Good day!', 'نهارك سعيد!', NULL, 'Used in Wohnen', 'formal', false, 2),
  ('00000000-0000-4000-a000-000065992e74', 'Hallo, wie geht es Ihnen?', 'Hello, how are you?', 'مرحباً، كيف حالكم؟', NULL, 'Used in Wohnen', 'formal', false, 3),
  ('00000000-0000-4000-a000-000065992e74', 'Schön, Sie kennenzulernen!', 'Nice to meet you!', 'سعيد بلقائكم!', NULL, 'Used in Wohnen', 'formal', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-000065992e74', 'das das Haus (die Häuser)', 'house — البيت', 'noun', 'vocabulary', 1),
  ('00000000-0000-4000-a000-000065992e74', 'die die Wohnung (die Wohnungen)', 'apartment — الشقة', 'noun', 'vocabulary', 2),
  ('00000000-0000-4000-a000-000065992e74', 'das das Zimmer (die Zimmer)', 'room — الغرفة', 'noun', 'vocabulary', 3),
  ('00000000-0000-4000-a000-000065992e74', 'die die Küche (die Küchen)', 'kitchen — المطبخ', 'noun', 'vocabulary', 4),
  ('00000000-0000-4000-a000-000065992e74', 'das das Schlafzimmer', 'bedroom — غرفة النوم', 'noun', 'vocabulary', 5),
  ('00000000-0000-4000-a000-000065992e74', 'das das Bad (die Bäder)', 'bathroom — الحمام', 'noun', 'vocabulary', 6),
  ('00000000-0000-4000-a000-000065992e74', 'der der Tisch (die Tische)', 'table — الطاولة', 'noun', 'vocabulary', 7),
  ('00000000-0000-4000-a000-000065992e74', 'der der Stuhl (die Stühle)', 'chair — الكرسي', 'noun', 'vocabulary', 8),
  ('00000000-0000-4000-a000-000065992e74', 'das das Bett (die Betten)', 'bed — السرير', 'noun', 'vocabulary', 9),
  ('00000000-0000-4000-a000-000065992e74', 'wohnen', 'to live — يسكن', 'verb', 'vocabulary', 10),
  ('00000000-0000-4000-a000-000065992e74', 'Hallo', 'hello — مرحباً', 'interjection', 'vocabulary', 11),
  ('00000000-0000-4000-a000-000065992e74', 'Guten Morgen', 'good morning — صباح الخير', 'phrase', 'vocabulary', 12),
  ('00000000-0000-4000-a000-000065992e74', 'Guten Tag', 'good day — نهارك سعيد', 'phrase', 'vocabulary', 13),
  ('00000000-0000-4000-a000-000065992e74', 'Tschüss', 'bye — مع السلامة', 'interjection', 'vocabulary', 14),
  ('00000000-0000-4000-a000-000065992e74', 'der der Name (die Namen)', 'name — الاسم', 'noun', 'vocabulary', 15),
  ('00000000-0000-4000-a000-000065992e74', 'Ich lerne Deutsch.', 'I am learning German.', 'Präsens der regelmäßigen Verben (Present Tense)', 'grammar', 16),
  ('00000000-0000-4000-a000-000065992e74', 'Du wohnst in Berlin.', 'You live in Berlin.', 'Präsens der regelmäßigen Verben (Present Tense)', 'grammar', 17),
  ('00000000-0000-4000-a000-000065992e74', 'Er arbeitet bei Siemens.', 'He works at Siemens.', 'Präsens der regelmäßigen Verben (Present Tense)', 'grammar', 18);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, french_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-000065992e74', 'Test: Wohnen — Leseübung', 'Ich wohne in einer schönen Wohnung in Berlin. Die Wohnung hat drei Zimmer: ein Wohnzimmer, ein Schlafzimmer und eine Küche. Das Wohnzimmer ist groß und gemütlich. Es gibt ein Sofa, einen Tisch und einen Schrank. Die Küche ist modern. Der Herd und der Kühlschrank sind neu. Mein Schlafzimmer ist klein, aber hell. Das Bett ist bequem. Ich fühle mich in meiner Wohnung sehr wohl.', 'I live in a nice apartment in Berlin. The apartment has three rooms: a living room, a bedroom and a kitchen. The living room is big and cozy. There is a sofa, a table and a wardrobe. The kitchen is modern. The stove and refrigerator are new. My bedroom is small but bright. The bed is comfortable. I feel very comfortable in my apartment.', 'أسكن في شقة جميلة في برلين. الشقة فيها ثلاث غرف: غرفة معيشة وغرفة نوم ومطبخ. غرفة المعيشة كبيرة ومريحة. يوجد أريكة وطاولة وخزانة. المطبخ حديث. الموقد والثلاجة جديدان. غرفة نومي صغيرة لكنها مشرقة. السرير مريح. أشعر براحة كبيرة في شقتي.', NULL, 64, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, french_translation, duration_seconds, speaker_count, scenario) values
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

[Lehrerin]: ممتاز! إلى الغد!', '[Lehrerin]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: ', 72, 2, 'Wohnen');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-000065992e74', '🔊 Sprechen: Test: Wohnen', 'Roleplay: You are in a Hamburg office. Introduce yourself and talk about Module Test. Your partner (AI) will respond naturally.', 'Module Test', ARRAY['Use complete sentences — not single words','Pause between phrases, not between words','Don''t translate from Arabic word-for-word']::text[], ARRAY['das Haus','die Wohnung','das Zimmer','die Küche','das Schlafzimmer','das Bad','der Tisch','der Stuhl']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-000065992e74', '✏️ Schreiben: Test: Wohnen', 'Write an email to a German friend about "Module Test". Tell them what you learned, what you found interesting, and ask two questions about their experience with this topic. Use at least 8 vocabulary words from this lesson. Sign off naturally ("Viele Grüße", "Liebe Grüße").', ARRAY['Start with "Hallo" or "Liebe/r"','Keep sentences short (Subject-Verb-Object)','End with a friendly farewell']::text[], ARRAY['das Haus','die Wohnung','das Zimmer','die Küche','das Schlafzimmer','das Bad','der Tisch','der Stuhl']::text[], ARRAY['Sentence structure','Vocabulary usage']::text[], 50, 100, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000065992e74', 'Test: Wohnen — Roleplay', 'Module Test', 'Student', 'Teacher', 'Practice conversation about Module Test', 'Hallo! Lass uns über dieses Thema sprechen.', 'beginner', 1, ARRAY['das Haus','die Wohnung','das Zimmer','die Küche','das Schlafzimmer','das Bad','der Tisch','der Stuhl']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000065992e74', 'Test: Wohnen — Advanced Roleplay', 'Module Test', 'Customer', 'Assistant', 'Extended conversation about Module Test', 'Guten Tag! Wie kann ich Ihnen helfen?', 'beginner', 2, ARRAY['das Haus','die Wohnung','das Zimmer','die Küche','das Schlafzimmer','das Bad','der Tisch','der Stuhl']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-000065992e74', 'Test: Wohnen — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Test: Wohnen".', 'Creative practice for Module Test', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-000065992e74', '📚 Hausaufgabe: Test: Wohnen', 'Complete these tasks to reinforce "Test: Wohnen".', 'mixed', '[{"description":"Create 10 flashcards from this lesson''s vocabulary — write German on one side, Arabic on the other. Test yourself 3 times."},{"description":"Write 6 sentences about Module Test: 2 statements, 2 questions, 2 negations — all using present_tense."},{"description":"Record yourself reading the dialogue aloud. Listen to the recording and note 3 things to improve."},{"description":"Find 3 real German websites, videos, or articles about Module Test. Note 5 new words you discovered."}]', 50, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-000065992e74', '🎯 Great work! In this lesson you learned 142 new words about Module Test. You practiced present_tense — an important grammar topic for A1 level. You read a text, listened to a dialogue, and practiced speaking and writing. Keep going!', '["142 vocabulary items about Module Test","present_tense — grammar explanation and practice","Reading comprehension: text about Module Test","Listening comprehension: dialogue about Module Test","Speaking practice: roleplay/discussion about Module Test","Writing task: text about Module Test"]', '[{"title":"Test: Wohnen Review","summary":"present_tense — the main grammar focus. Focus on understanding when to use this structure and forming basic sentences."}]', ARRAY['das Haus (house)','die Wohnung (apartment)','das Zimmer (room)','die Küche (kitchen)','das Schlafzimmer (bedroom)']::text[], ARRAY['Don''t translate from Arabic word-for-word — German has different sentence structure','Learn every noun with its article: NEVER learn "Tisch" alone, always "der Tisch"','Verb always in position 2 in main clauses']::text[], ARRAY['Practice 15-20 minutes daily — consistency beats intensity','Speak out loud: German pronunciation needs muscle memory','Use the new vocabulary within 24 hours or you''ll forget it','Watch German YouTube videos about Module Test for authentic input']::text[]);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000065992e74', 'Pronunciation: German sounds for "home"', 'In German, vowels are pure — unlike English diphthongs. The "ch" sound after a, o, u is guttural (like Arabic خ). After e, i, ä, ö, ü it''s soft (like English "huge" without the "u").

Common mistake for Arabic speakers: Arabic speakers tend to over-emphasise consonants. German flows — connect words smoothly (e.g., "Ich habe" becomes /ɪçabə/ not /ɪç ˈhaːbə/).', '[]', '[{"german":"das Haus","arabic":"","english":"","phonetic":""},{"german":"die Wohnung","arabic":"","english":"","phonetic":""},{"german":"das Zimmer","arabic":"","english":"","phonetic":""},{"german":"die Küche","arabic":"","english":"","phonetic":""}]', '[]', 10);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000065992e74', 'translation', 'Translate to German: "I use the word "house" in a sentence about Module Test."', '[]', 'Das Haus ist groß.', 'Use das  "das Haus" with the correct present_tense form.', 1, 40);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000065992e74', 'translation', 'Translate to German: "I use the word "apartment" in a sentence about Module Test."', '[]', 'Meine Wohnung hat drei Zimmer.', 'Use die  "die Wohnung" with the correct present_tense form.', 1, 41);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000065992e74', 'translation', 'Translate to German: "I use the word "room" in a sentence about Module Test."', '[]', 'Das Zimmer ist hell.', 'Use das  "das Zimmer" with the correct present_tense form.', 1, 42);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000065992e74', 'Culture: 🇩🇪 Deutsche Kultur: Module Test', 'In Germany, Module Test is approached with typical German directness and efficiency. Germans value clarity over small talk. When discussing Module Test, expect honest feedback and straightforward questions. This is not rudeness — it''s cultural. Arabic speakers often find this too direct at first, but you''ll appreciate it once you get used to it.

في ألمانيا، يتم التعامل مع Module Test بوضوح وكفاءة. الألمان يقدرون الوضوح أكثر من المجاملات. لا تعتبر هذه وقاحة - إنها ثقافة مختلفة.', '["Tip: Always use \"Sie\" (formal) with strangers and colleagues","Tip: Germans appreciate punctuality — arrive 5 minutes early","Tip: Direct feedback is a sign of respect, not criticism","Tip: Prepare factual arguments, not emotional appeals"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000065992e74', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Forgetting the difference between \"wohnen\" and \"leben\"","correction":"wohnen = to live somewhere (address), leben = to be alive/exist","explanation":"Arabic uses one verb \"sakana\" for both concepts."},{"mistake":"Using the wrong article (der/die/das) for nouns","correction":"Learn each noun with its article as one piece","explanation":"Arabic has no articles for nouns without gender connection"}]', 30);

  -- Module 4: Essen und Einkaufen
  insert into public.course_modules (id, level_id, title, description, objectives, order_index, estimated_hours, is_published)
  values ('00000000-0000-4000-a000-000039b4d361', 'A1', 'Essen und Einkaufen', 'Learn shopping vocabulary, food names, and how to order in restaurants.', '["Name foods and drinks","Shop for groceries","Order in a restaurant","Understand prices and pay","Use \"möchten\" for polite requests"]', 4, 5, true)
  on conflict (id) do nothing;

  -- Lesson 1: Lebensmittel (L-A1-04-01)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-00006599a2ce', '00000000-0000-4000-a000-000039b4d361', 'Lebensmittel', 'Learn food and grocery vocabulary with articles.', 'Food & Groceries', 'vocabulary', '["Understand and use 142 key vocabulary words about Food & Groceries","Apply articles_nominative_akkusativ correctly in sentences","Read and comprehend a text about Food & Groceries","Listen and understand a natural dialogue about Food & Groceries","Speak about Food & Groceries with confidence","Write a short text about Food & Groceries using new vocabulary"]', 30, 1, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, french_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-00006599a2ce', 'das Brot', 'الخبز', 'bread', 'le pain', 'das', 'die Brote', 'noun', 'Ich kaufe ein Brot.', 'I buy a loaf of bread.', 'A1', 1),
  ('00000000-0000-4000-a000-00006599a2ce', 'die Milch', 'الحليب', 'milk', 'le lait', 'die', NULL, 'noun', 'Die Milch ist frisch.', 'The milk is fresh.', 'A1', 2),
  ('00000000-0000-4000-a000-00006599a2ce', 'der Käse', 'الجبن', 'cheese', 'le fromage', 'der', NULL, 'noun', 'Der Käse schmeckt gut.', 'The cheese tastes good.', 'A1', 3),
  ('00000000-0000-4000-a000-00006599a2ce', 'der Apfel', 'التفاح', 'apple', 'la pomme', 'der', 'die Äpfel', 'noun', 'Der Apfel ist rot.', 'The apple is red.', 'A1', 4),
  ('00000000-0000-4000-a000-00006599a2ce', 'das Ei', 'البيضة', 'egg', 'l''œuf', 'das', 'die Eier', 'noun', 'Ich esse ein Ei zum Frühstück.', 'I eat an egg for breakfast.', 'A1', 5),
  ('00000000-0000-4000-a000-00006599a2ce', 'das Obst', 'الفاكهة', 'fruit', 'les fruits', 'das', NULL, 'noun', 'Obst ist gesund.', 'Fruit is healthy.', 'A1', 6),
  ('00000000-0000-4000-a000-00006599a2ce', 'das Gemüse', 'الخضروات', 'vegetables', 'les légumes', 'das', NULL, 'noun', 'Ich kaufe Gemüse auf dem Markt.', 'I buy vegetables at the market.', 'A1', 7),
  ('00000000-0000-4000-a000-00006599a2ce', 'kochen', 'يطبخ', 'to cook', 'cuisiner', NULL, NULL, 'verb', 'Meine Mutter kocht gut.', 'My mother cooks well.', 'A1', 8),
  ('00000000-0000-4000-a000-00006599a2ce', 'der Fisch', 'السمك', 'fish', 'le poisson', 'der', 'die Fische', 'noun', 'Der Fisch ist frisch.', 'The fish is fresh.', 'A1', 9),
  ('00000000-0000-4000-a000-00006599a2ce', 'das Fleisch', 'اللحم', 'meat', 'la viande', 'das', NULL, 'noun', 'Ich esse nicht viel Fleisch.', 'I do not eat much meat.', 'A1', 10),
  ('00000000-0000-4000-a000-00006599a2ce', 'Hallo', 'مرحباً', 'hello', 'bonjour', NULL, NULL, 'interjection', 'Hallo, wie geht es dir?', 'Hello, how are you?', 'A1', 11),
  ('00000000-0000-4000-a000-00006599a2ce', 'Guten Morgen', 'صباح الخير', 'good morning', 'bonjour (le matin)', NULL, NULL, 'phrase', 'Guten Morgen, Herr Müller.', 'Good morning, Mr. Müller.', 'A1', 12),
  ('00000000-0000-4000-a000-00006599a2ce', 'Guten Tag', 'نهارك سعيد', 'good day', 'bonjour (l''après-midi)', NULL, NULL, 'phrase', 'Guten Tag, Frau Schmidt.', 'Good day, Mrs. Schmidt.', 'A1', 13),
  ('00000000-0000-4000-a000-00006599a2ce', 'Tschüss', 'مع السلامة', 'bye', 'au revoir / salut', NULL, NULL, 'interjection', 'Tschüss, bis morgen!', 'Bye, see you tomorrow!', 'A1', 14),
  ('00000000-0000-4000-a000-00006599a2ce', 'der Name', 'الاسم', 'name', 'le nom', 'der', 'die Namen', 'noun', 'Mein Name ist Anna.', 'My name is Anna.', 'A1', 15),
  ('00000000-0000-4000-a000-00006599a2ce', 'wie', 'كيف', 'how', 'comment', NULL, NULL, 'adverb', 'Wie heißt du?', 'What is your name?', 'A1', 16),
  ('00000000-0000-4000-a000-00006599a2ce', 'freuen', 'يسر', 'to be pleased', 'se réjouir', NULL, NULL, 'verb', 'Ich freue mich, dich kennenzulernen.', 'I am pleased to meet you.', 'A1', 17),
  ('00000000-0000-4000-a000-00006599a2ce', 'Willkommen', 'أهلاً وسهلاً', 'welcome', 'bienvenue', NULL, NULL, 'interjection', 'Willkommen in Deutschland!', 'Welcome to Germany!', 'A1', 18),
  ('00000000-0000-4000-a000-00006599a2ce', 'die Familie', 'العائلة', 'family', 'la famille', 'die', 'die Familien', 'noun', 'Meine Familie ist groß.', 'My family is big.', 'A1', 19),
  ('00000000-0000-4000-a000-00006599a2ce', 'der Vater', 'الأب', 'father', 'le père', 'der', 'die Väter', 'noun', 'Mein Vater ist Ingenieur.', 'My father is an engineer.', 'A1', 20),
  ('00000000-0000-4000-a000-00006599a2ce', 'die Mutter', 'الأم', 'mother', 'la mère', 'die', 'die Mütter', 'noun', 'Meine Mutter kocht gut.', 'My mother cooks well.', 'A1', 21),
  ('00000000-0000-4000-a000-00006599a2ce', 'der Bruder', 'الأخ', 'brother', 'le frère', 'der', 'die Brüder', 'noun', 'Mein Bruder ist 15 Jahre alt.', 'My brother is 15 years old.', 'A1', 22),
  ('00000000-0000-4000-a000-00006599a2ce', 'die Schwester', 'الأخت', 'sister', 'la sœur', 'die', 'die Schwestern', 'noun', 'Meine Schwester studiert Medizin.', 'My sister studies medicine.', 'A1', 23),
  ('00000000-0000-4000-a000-00006599a2ce', 'die Geschwister', 'الإخوة', 'siblings', 'les frères et sœurs', 'die', NULL, 'noun', 'Hast du Geschwister?', 'Do you have siblings?', 'A1', 24),
  ('00000000-0000-4000-a000-00006599a2ce', 'der Sohn', 'الابن', 'son', 'le fils', 'der', 'die Söhne', 'noun', 'Wir haben einen Sohn.', 'We have a son.', 'A1', 25),
  ('00000000-0000-4000-a000-00006599a2ce', 'die Tochter', 'الابنة', 'daughter', 'la fille', 'die', 'die Töchter', 'noun', 'Meine Tochter geht zur Schule.', 'My daughter goes to school.', 'A1', 26),
  ('00000000-0000-4000-a000-00006599a2ce', 'die Großeltern', 'الأجداد', 'grandparents', 'les grands-parents', 'die', NULL, 'noun', 'Meine Großeltern wohnen auf dem Land.', 'My grandparents live in the countryside.', 'A1', 27),
  ('00000000-0000-4000-a000-00006599a2ce', 'verheiratet', 'متزوج', 'married', 'marié(e)', NULL, NULL, 'adjective', 'Meine Eltern sind verheiratet.', 'My parents are married.', 'A1', 28),
  ('00000000-0000-4000-a000-00006599a2ce', 'das Haus', 'البيت', 'house', 'la maison', 'das', 'die Häuser', 'noun', 'Das Haus ist groß.', 'The house is big.', 'A1', 29),
  ('00000000-0000-4000-a000-00006599a2ce', 'die Wohnung', 'الشقة', 'apartment', 'l''appartement', 'die', 'die Wohnungen', 'noun', 'Meine Wohnung hat drei Zimmer.', 'My apartment has three rooms.', 'A1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006599a2ce', 'Nominativ und Akkusativ (Nominative and Accusative) / الرفع والنصب', 'German has four cases. The nominative is for the subject (who does the action). The accusative is for the direct object (who receives the action). The article changes: der → den (masculine), die stays die (feminine), das stays das (neuter), die stays die (plural).', '[{"rule":"Nominativ: der/die/das/die (subject)","note":"Der Mann kauft. (The man buys.)"},{"rule":"Akkusativ: den/die/das/die (direct object)","note":"Ich sehe den Mann. (I see the man.)"},{"rule":"Only masculine changes: der → den","note":"Die Frau (Nom) → die Frau (Akk). No change!"}]', '[{"german":"Der Mann kauft den Tisch.","arabic":"الرجل يشتري الطاولة.","english":"The man buys the table."},{"german":"Die Frau sieht den Hund.","arabic":"المرأة ترى الكلب.","english":"The woman sees the dog."},{"german":"Das Kind isst das Brot.","arabic":"الطفل يأكل الخبز.","english":"The child eats the bread."}]', '[{"mistake":"Ich sehe der Mann","correction":"Ich sehe den Mann","explanation":"After the verb \"sehen\", the object is in accusative. Der → den."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006599a2ce', 'multiple_choice', 'Which German word matches "bread"?', '["die Milch","das Brot","das Ei","der Apfel"]', 'das Brot', '"bread" = "das Brot" in German. Article: das Plural: die Brote', 1, 1),
  ('00000000-0000-4000-a000-00006599a2ce', 'multiple_choice', 'Which German word matches "milk"?', '["die Milch","das Brot","der Käse","das Ei"]', 'die Milch', '"milk" = "die Milch" in German. Article: die ', 1, 2),
  ('00000000-0000-4000-a000-00006599a2ce', 'multiple_choice', 'Which German word matches "cheese"?', '["das Ei","der Apfel","die Milch","das Brot"]', 'der Käse', '"cheese" = "der Käse" in German. Article: der ', 1, 3),
  ('00000000-0000-4000-a000-00006599a2ce', 'multiple_choice', 'Which German word matches "apple"?', '["die Milch","der Käse","das Brot","das Ei"]', 'der Apfel', '"apple" = "der Apfel" in German. Article: der Plural: die Äpfel', 1, 4),
  ('00000000-0000-4000-a000-00006599a2ce', 'multiple_choice', 'Which German word matches "egg"?', '["das Ei","das Brot","der Apfel","der Käse"]', 'das Ei', '"egg" = "das Ei" in German. Article: das Plural: die Eier', 1, 5),
  ('00000000-0000-4000-a000-00006599a2ce', 'fill_gap', 'Complete the sentence: Ich ___ gern über Food & Groceries. (sprechen)', '["spreche","sprichst","spricht","sprechen"]', 'spreche', 'ich spreche gern = I like to speak. Stem: sprech- + e.', 2, 6),
  ('00000000-0000-4000-a000-00006599a2ce', 'translation', 'Translate to German: "I am learning about Food & Groceries."', '["Ich lerne über Food & Groceries.","Ich lerne Food & Groceries.","Lerne ich Food & Groceries."]', 'Ich lerne über Food & Groceries.', '"Ich lerne über..." = "I am learning about..."', 2, 7),
  ('00000000-0000-4000-a000-00006599a2ce', 'matching', 'Match: Which word pairs are correct?', '["das Brot - bread, die Milch - milk"]', 'Matched correctly', 'Each German word has a unique English equivalent.', 2, 8);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-00006599a2ce', 'multiple_choice', 'What does "das Brot" mean in English?', '["bread","to run","beautiful","yesterday"]', 'bread', 1, 1),
  ('00000000-0000-4000-a000-00006599a2ce', 'multiple_choice', 'What is the correct article for "die Milch"?', '["der","die","das","den"]', 'die', 1, 2),
  ('00000000-0000-4000-a000-00006599a2ce', 'true_false', 'The word "der Käse" is related to Food & Groceries.', '["True","False"]', 'True', 1, 3),
  ('00000000-0000-4000-a000-00006599a2ce', 'multiple_choice', 'Which sentence correctly uses articles_nominative_akkusativ?', '["Der Mann kauft den Tisch.","Die Frau sieht den Hund.","Das Kind isst das Brot."]', 'Der Mann kauft den Tisch.', 2, 4),
  ('00000000-0000-4000-a000-00006599a2ce', 'true_false', 'German word order puts the verb in second position in main clauses.', '["True","False"]', 'True', 1, 5),
  ('00000000-0000-4000-a000-00006599a2ce', 'fill_blank', 'Complete: Ich ___ (apple) Deutsch.', '["der Apfel","lernt","lernst","lernen"]', 'lerne', 2, 6),
  ('00000000-0000-4000-a000-00006599a2ce', 'multiple_choice', 'What is the German word for "egg"?', '["das Ei","das Obst","das Gemüse","kochen"]', 'das Ei', 1, 7),
  ('00000000-0000-4000-a000-00006599a2ce', 'true_false', 'In German, ALL nouns are always capitalised.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-00006599a2ce', 'multiple_choice', 'How do you say "please" in a restaurant in Germany?', '["Bitte","Danke","Tschüss","Hallo"]', 'Bitte', 1, 9),
  ('00000000-0000-4000-a000-00006599a2ce', 'fill_blank', 'Wo ___ (to live) du?', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 2, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, french_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-00006599a2ce', 'Ich möchte bitte bestellen.', 'I would like to order, please.', 'أريد أن أطلب من فضلك.', NULL, 'Used in Essen und Einkaufen', 'formal', false, 1),
  ('00000000-0000-4000-a000-00006599a2ce', 'Was empfehlen Sie?', 'What do you recommend?', 'ماذا تنصحون؟', NULL, 'Used in Essen und Einkaufen', 'formal', false, 2),
  ('00000000-0000-4000-a000-00006599a2ce', 'Die Rechnung, bitte!', 'The bill, please!', 'الفاتورة من فضلك!', NULL, 'Used in Essen und Einkaufen', 'formal', false, 3),
  ('00000000-0000-4000-a000-00006599a2ce', 'Es hat sehr gut geschmeckt!', 'It was delicious!', 'كان لذيذاً جداً!', NULL, 'Used in Essen und Einkaufen', 'formal', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-00006599a2ce', 'das das Brot (die Brote)', 'bread — الخبز', 'noun', 'vocabulary', 1),
  ('00000000-0000-4000-a000-00006599a2ce', 'die die Milch', 'milk — الحليب', 'noun', 'vocabulary', 2),
  ('00000000-0000-4000-a000-00006599a2ce', 'der der Käse', 'cheese — الجبن', 'noun', 'vocabulary', 3),
  ('00000000-0000-4000-a000-00006599a2ce', 'der der Apfel (die Äpfel)', 'apple — التفاح', 'noun', 'vocabulary', 4),
  ('00000000-0000-4000-a000-00006599a2ce', 'das das Ei (die Eier)', 'egg — البيضة', 'noun', 'vocabulary', 5),
  ('00000000-0000-4000-a000-00006599a2ce', 'das das Obst', 'fruit — الفاكهة', 'noun', 'vocabulary', 6),
  ('00000000-0000-4000-a000-00006599a2ce', 'das das Gemüse', 'vegetables — الخضروات', 'noun', 'vocabulary', 7),
  ('00000000-0000-4000-a000-00006599a2ce', 'kochen', 'to cook — يطبخ', 'verb', 'vocabulary', 8),
  ('00000000-0000-4000-a000-00006599a2ce', 'der der Fisch (die Fische)', 'fish — السمك', 'noun', 'vocabulary', 9),
  ('00000000-0000-4000-a000-00006599a2ce', 'das das Fleisch', 'meat — اللحم', 'noun', 'vocabulary', 10),
  ('00000000-0000-4000-a000-00006599a2ce', 'Hallo', 'hello — مرحباً', 'interjection', 'vocabulary', 11),
  ('00000000-0000-4000-a000-00006599a2ce', 'Guten Morgen', 'good morning — صباح الخير', 'phrase', 'vocabulary', 12),
  ('00000000-0000-4000-a000-00006599a2ce', 'Guten Tag', 'good day — نهارك سعيد', 'phrase', 'vocabulary', 13),
  ('00000000-0000-4000-a000-00006599a2ce', 'Tschüss', 'bye — مع السلامة', 'interjection', 'vocabulary', 14),
  ('00000000-0000-4000-a000-00006599a2ce', 'der der Name (die Namen)', 'name — الاسم', 'noun', 'vocabulary', 15),
  ('00000000-0000-4000-a000-00006599a2ce', 'Der Mann kauft den Tisch.', 'The man buys the table.', 'Nominativ und Akkusativ (Nominative and Accusative)', 'grammar', 16),
  ('00000000-0000-4000-a000-00006599a2ce', 'Die Frau sieht den Hund.', 'The woman sees the dog.', 'Nominativ und Akkusativ (Nominative and Accusative)', 'grammar', 17),
  ('00000000-0000-4000-a000-00006599a2ce', 'Das Kind isst das Brot.', 'The child eats the bread.', 'Nominativ und Akkusativ (Nominative and Accusative)', 'grammar', 18);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, french_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-00006599a2ce', 'Lebensmittel — Leseübung', 'Heute gehe ich einkaufen. Ich brauche Lebensmittel. Ich gehe zum Supermarkt. Ich kaufe Brot, Milch, Käse und Eier. Auch Obst und Gemüse brauche ich. Die Äpfel sehen gut aus. Ich nehme fünf Äpfel. Der Käse kostet 3 Euro. Alles zusammen kostet 15 Euro. Ich bezahle an der Kasse. Die Verkäuferin ist freundlich. Dann gehe ich nach Hause.', 'Today I go shopping. I need groceries. I go to the supermarket. I buy bread, milk, cheese and eggs. I also need fruit and vegetables. The apples look good. I take five apples. The cheese costs 3 euros. Everything together costs 15 euros. I pay at the checkout. The saleswoman is friendly. Then I go home.', 'اليوم أذهب للتسوق. أحتاج مواد غذائية. أذهب إلى السوبرماركت. أشتري خبزاً وحليباً وجبناً وبيضاً. أحتاج أيضاً فاكهة وخضروات. التفاح يبدو جيداً. آخذ خمس تفاحات. الجبن يكلف 3 يورو. المجموع الكلي 15 يورو. أدفع عند الصندوق. البائعة ودودة. ثم أعود إلى المنزل.', NULL, 57, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, french_translation, duration_seconds, speaker_count, scenario) values
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

[Kellner]: فوراً. شهية طيبة!', '[Kellner]: 

[Gast]: 

[Kellner]: 

[Gast]: 

[Kellner]: ', 60, 2, 'Essen und Einkaufen');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-00006599a2ce', '🔊 Sprechen: Lebensmittel', 'Roleplay: You are in a Hamburg office. Introduce yourself and talk about Food & Groceries. Your partner (AI) will respond naturally.', 'Food & Groceries', ARRAY['Use complete sentences — not single words','Pause between phrases, not between words','Don''t translate from Arabic word-for-word']::text[], ARRAY['das Brot','die Milch','der Käse','der Apfel','das Ei','das Obst','das Gemüse','kochen']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-00006599a2ce', '✏️ Schreiben: Lebensmittel', 'Write an email to a German friend about "Food & Groceries". Tell them what you learned, what you found interesting, and ask two questions about their experience with this topic. Use at least 8 vocabulary words from this lesson. Sign off naturally ("Viele Grüße", "Liebe Grüße").', ARRAY['Start with "Hallo" or "Liebe/r"','Keep sentences short (Subject-Verb-Object)','End with a friendly farewell']::text[], ARRAY['das Brot','die Milch','der Käse','der Apfel','das Ei','das Obst','das Gemüse','kochen']::text[], ARRAY['Sentence structure','Vocabulary usage']::text[], 50, 100, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00006599a2ce', 'Lebensmittel — Roleplay', 'Food & Groceries', 'Student', 'Teacher', 'Practice conversation about Food & Groceries', 'Hallo! Lass uns über dieses Thema sprechen.', 'beginner', 1, ARRAY['das Brot','die Milch','der Käse','der Apfel','das Ei','das Obst','das Gemüse','kochen']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00006599a2ce', 'Lebensmittel — Advanced Roleplay', 'Food & Groceries', 'Customer', 'Assistant', 'Extended conversation about Food & Groceries', 'Guten Tag! Wie kann ich Ihnen helfen?', 'beginner', 2, ARRAY['das Brot','die Milch','der Käse','der Apfel','das Ei','das Obst','das Gemüse','kochen']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-00006599a2ce', 'Lebensmittel — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Lebensmittel".', 'Creative practice for Food & Groceries', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-00006599a2ce', '📚 Hausaufgabe: Lebensmittel', 'Complete these tasks to reinforce "Lebensmittel".', 'mixed', '[{"description":"Create 10 flashcards from this lesson''s vocabulary — write German on one side, Arabic on the other. Test yourself 3 times."},{"description":"Write 6 sentences about Food & Groceries: 2 statements, 2 questions, 2 negations — all using articles_nominative_akkusativ."},{"description":"Record yourself reading the dialogue aloud. Listen to the recording and note 3 things to improve."},{"description":"Find 3 real German websites, videos, or articles about Food & Groceries. Note 5 new words you discovered."}]', 50, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-00006599a2ce', '🎯 Great work! In this lesson you learned 142 new words about Food & Groceries. You practiced articles_nominative_akkusativ — an important grammar topic for A1 level. You read a text, listened to a dialogue, and practiced speaking and writing. Keep going!', '["142 vocabulary items about Food & Groceries","articles_nominative_akkusativ — grammar explanation and practice","Reading comprehension: text about Food & Groceries","Listening comprehension: dialogue about Food & Groceries","Speaking practice: roleplay/discussion about Food & Groceries","Writing task: text about Food & Groceries"]', '[{"title":"Lebensmittel Review","summary":"articles_nominative_akkusativ — the main grammar focus. Focus on understanding when to use this structure and forming basic sentences."}]', ARRAY['das Brot (bread)','die Milch (milk)','der Käse (cheese)','der Apfel (apple)','das Ei (egg)']::text[], ARRAY['Don''t translate from Arabic word-for-word — German has different sentence structure','Learn every noun with its article: NEVER learn "Tisch" alone, always "der Tisch"','Verb always in position 2 in main clauses']::text[], ARRAY['Practice 15-20 minutes daily — consistency beats intensity','Speak out loud: German pronunciation needs muscle memory','Use the new vocabulary within 24 hours or you''ll forget it','Watch German YouTube videos about Food & Groceries for authentic input']::text[]);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006599a2ce', 'Pronunciation: German sounds for "food"', 'In German, vowels are pure — unlike English diphthongs. The "ch" sound after a, o, u is guttural (like Arabic خ). After e, i, ä, ö, ü it''s soft (like English "huge" without the "u").

Common mistake for Arabic speakers: Arabic speakers tend to over-emphasise consonants. German flows — connect words smoothly (e.g., "Ich habe" becomes /ɪçabə/ not /ɪç ˈhaːbə/).', '[]', '[{"german":"das Brot","arabic":"","english":"","phonetic":""},{"german":"die Milch","arabic":"","english":"","phonetic":""},{"german":"der Käse","arabic":"","english":"","phonetic":""},{"german":"der Apfel","arabic":"","english":"","phonetic":""}]', '[]', 10);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006599a2ce', 'translation', 'Translate to German: "I use the word "bread" in a sentence about Food & Groceries."', '[]', 'Ich kaufe ein Brot.', 'Use das  "das Brot" with the correct articles_nominative_akkusativ form.', 1, 40);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006599a2ce', 'translation', 'Translate to German: "I use the word "milk" in a sentence about Food & Groceries."', '[]', 'Die Milch ist frisch.', 'Use die  "die Milch" with the correct articles_nominative_akkusativ form.', 1, 41);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006599a2ce', 'translation', 'Translate to German: "I use the word "cheese" in a sentence about Food & Groceries."', '[]', 'Der Käse schmeckt gut.', 'Use der  "der Käse" with the correct articles_nominative_akkusativ form.', 1, 42);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006599a2ce', 'Culture: 🇩🇪 Deutsche Kultur: Food & Groceries', 'In Germany, Food & Groceries is approached with typical German directness and efficiency. Germans value clarity over small talk. When discussing Food & Groceries, expect honest feedback and straightforward questions. This is not rudeness — it''s cultural. Arabic speakers often find this too direct at first, but you''ll appreciate it once you get used to it.

في ألمانيا، يتم التعامل مع Food & Groceries بوضوح وكفاءة. الألمان يقدرون الوضوح أكثر من المجاملات. لا تعتبر هذه وقاحة - إنها ثقافة مختلفة.', '["Tip: Always use \"Sie\" (formal) with strangers and colleagues","Tip: Germans appreciate punctuality — arrive 5 minutes early","Tip: Direct feedback is a sign of respect, not criticism","Tip: Prepare factual arguments, not emotional appeals"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006599a2ce', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Using \"der\" for all food nouns","correction":"Learn article + noun as one unit for every food word","explanation":"Arabic food words don''t have inherent gender."},{"mistake":"Using the wrong article (der/die/das) for nouns","correction":"Learn each noun with its article as one piece","explanation":"Arabic has no articles for nouns without gender connection"}]', 30);

  -- Lesson 2: Getränke und Mahlzeiten (L-A1-04-02)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-00006599a2cf', '00000000-0000-4000-a000-000039b4d361', 'Getränke und Mahlzeiten', 'Learn drinks and meal names.', 'Drinks & Meals', 'vocabulary', '["Understand and use 142 key vocabulary words about Drinks & Meals","Apply articles_nominative_akkusativ correctly in sentences","Read and comprehend a text about Drinks & Meals","Listen and understand a natural dialogue about Drinks & Meals","Speak about Drinks & Meals with confidence","Write a short text about Drinks & Meals using new vocabulary"]', 25, 2, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, french_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-00006599a2cf', 'das Brot', 'الخبز', 'bread', 'le pain', 'das', 'die Brote', 'noun', 'Ich kaufe ein Brot.', 'I buy a loaf of bread.', 'A1', 1),
  ('00000000-0000-4000-a000-00006599a2cf', 'die Milch', 'الحليب', 'milk', 'le lait', 'die', NULL, 'noun', 'Die Milch ist frisch.', 'The milk is fresh.', 'A1', 2),
  ('00000000-0000-4000-a000-00006599a2cf', 'der Käse', 'الجبن', 'cheese', 'le fromage', 'der', NULL, 'noun', 'Der Käse schmeckt gut.', 'The cheese tastes good.', 'A1', 3),
  ('00000000-0000-4000-a000-00006599a2cf', 'der Apfel', 'التفاح', 'apple', 'la pomme', 'der', 'die Äpfel', 'noun', 'Der Apfel ist rot.', 'The apple is red.', 'A1', 4),
  ('00000000-0000-4000-a000-00006599a2cf', 'das Ei', 'البيضة', 'egg', 'l''œuf', 'das', 'die Eier', 'noun', 'Ich esse ein Ei zum Frühstück.', 'I eat an egg for breakfast.', 'A1', 5),
  ('00000000-0000-4000-a000-00006599a2cf', 'das Obst', 'الفاكهة', 'fruit', 'les fruits', 'das', NULL, 'noun', 'Obst ist gesund.', 'Fruit is healthy.', 'A1', 6),
  ('00000000-0000-4000-a000-00006599a2cf', 'das Gemüse', 'الخضروات', 'vegetables', 'les légumes', 'das', NULL, 'noun', 'Ich kaufe Gemüse auf dem Markt.', 'I buy vegetables at the market.', 'A1', 7),
  ('00000000-0000-4000-a000-00006599a2cf', 'kochen', 'يطبخ', 'to cook', 'cuisiner', NULL, NULL, 'verb', 'Meine Mutter kocht gut.', 'My mother cooks well.', 'A1', 8),
  ('00000000-0000-4000-a000-00006599a2cf', 'der Fisch', 'السمك', 'fish', 'le poisson', 'der', 'die Fische', 'noun', 'Der Fisch ist frisch.', 'The fish is fresh.', 'A1', 9),
  ('00000000-0000-4000-a000-00006599a2cf', 'das Fleisch', 'اللحم', 'meat', 'la viande', 'das', NULL, 'noun', 'Ich esse nicht viel Fleisch.', 'I do not eat much meat.', 'A1', 10),
  ('00000000-0000-4000-a000-00006599a2cf', 'Hallo', 'مرحباً', 'hello', 'bonjour', NULL, NULL, 'interjection', 'Hallo, wie geht es dir?', 'Hello, how are you?', 'A1', 11),
  ('00000000-0000-4000-a000-00006599a2cf', 'Guten Morgen', 'صباح الخير', 'good morning', 'bonjour (le matin)', NULL, NULL, 'phrase', 'Guten Morgen, Herr Müller.', 'Good morning, Mr. Müller.', 'A1', 12),
  ('00000000-0000-4000-a000-00006599a2cf', 'Guten Tag', 'نهارك سعيد', 'good day', 'bonjour (l''après-midi)', NULL, NULL, 'phrase', 'Guten Tag, Frau Schmidt.', 'Good day, Mrs. Schmidt.', 'A1', 13),
  ('00000000-0000-4000-a000-00006599a2cf', 'Tschüss', 'مع السلامة', 'bye', 'au revoir / salut', NULL, NULL, 'interjection', 'Tschüss, bis morgen!', 'Bye, see you tomorrow!', 'A1', 14),
  ('00000000-0000-4000-a000-00006599a2cf', 'der Name', 'الاسم', 'name', 'le nom', 'der', 'die Namen', 'noun', 'Mein Name ist Anna.', 'My name is Anna.', 'A1', 15),
  ('00000000-0000-4000-a000-00006599a2cf', 'wie', 'كيف', 'how', 'comment', NULL, NULL, 'adverb', 'Wie heißt du?', 'What is your name?', 'A1', 16),
  ('00000000-0000-4000-a000-00006599a2cf', 'freuen', 'يسر', 'to be pleased', 'se réjouir', NULL, NULL, 'verb', 'Ich freue mich, dich kennenzulernen.', 'I am pleased to meet you.', 'A1', 17),
  ('00000000-0000-4000-a000-00006599a2cf', 'Willkommen', 'أهلاً وسهلاً', 'welcome', 'bienvenue', NULL, NULL, 'interjection', 'Willkommen in Deutschland!', 'Welcome to Germany!', 'A1', 18),
  ('00000000-0000-4000-a000-00006599a2cf', 'die Familie', 'العائلة', 'family', 'la famille', 'die', 'die Familien', 'noun', 'Meine Familie ist groß.', 'My family is big.', 'A1', 19),
  ('00000000-0000-4000-a000-00006599a2cf', 'der Vater', 'الأب', 'father', 'le père', 'der', 'die Väter', 'noun', 'Mein Vater ist Ingenieur.', 'My father is an engineer.', 'A1', 20),
  ('00000000-0000-4000-a000-00006599a2cf', 'die Mutter', 'الأم', 'mother', 'la mère', 'die', 'die Mütter', 'noun', 'Meine Mutter kocht gut.', 'My mother cooks well.', 'A1', 21),
  ('00000000-0000-4000-a000-00006599a2cf', 'der Bruder', 'الأخ', 'brother', 'le frère', 'der', 'die Brüder', 'noun', 'Mein Bruder ist 15 Jahre alt.', 'My brother is 15 years old.', 'A1', 22),
  ('00000000-0000-4000-a000-00006599a2cf', 'die Schwester', 'الأخت', 'sister', 'la sœur', 'die', 'die Schwestern', 'noun', 'Meine Schwester studiert Medizin.', 'My sister studies medicine.', 'A1', 23),
  ('00000000-0000-4000-a000-00006599a2cf', 'die Geschwister', 'الإخوة', 'siblings', 'les frères et sœurs', 'die', NULL, 'noun', 'Hast du Geschwister?', 'Do you have siblings?', 'A1', 24),
  ('00000000-0000-4000-a000-00006599a2cf', 'der Sohn', 'الابن', 'son', 'le fils', 'der', 'die Söhne', 'noun', 'Wir haben einen Sohn.', 'We have a son.', 'A1', 25),
  ('00000000-0000-4000-a000-00006599a2cf', 'die Tochter', 'الابنة', 'daughter', 'la fille', 'die', 'die Töchter', 'noun', 'Meine Tochter geht zur Schule.', 'My daughter goes to school.', 'A1', 26),
  ('00000000-0000-4000-a000-00006599a2cf', 'die Großeltern', 'الأجداد', 'grandparents', 'les grands-parents', 'die', NULL, 'noun', 'Meine Großeltern wohnen auf dem Land.', 'My grandparents live in the countryside.', 'A1', 27),
  ('00000000-0000-4000-a000-00006599a2cf', 'verheiratet', 'متزوج', 'married', 'marié(e)', NULL, NULL, 'adjective', 'Meine Eltern sind verheiratet.', 'My parents are married.', 'A1', 28),
  ('00000000-0000-4000-a000-00006599a2cf', 'das Haus', 'البيت', 'house', 'la maison', 'das', 'die Häuser', 'noun', 'Das Haus ist groß.', 'The house is big.', 'A1', 29),
  ('00000000-0000-4000-a000-00006599a2cf', 'die Wohnung', 'الشقة', 'apartment', 'l''appartement', 'die', 'die Wohnungen', 'noun', 'Meine Wohnung hat drei Zimmer.', 'My apartment has three rooms.', 'A1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006599a2cf', 'Nominativ und Akkusativ (Nominative and Accusative) / الرفع والنصب', 'German has four cases. The nominative is for the subject (who does the action). The accusative is for the direct object (who receives the action). The article changes: der → den (masculine), die stays die (feminine), das stays das (neuter), die stays die (plural).', '[{"rule":"Nominativ: der/die/das/die (subject)","note":"Der Mann kauft. (The man buys.)"},{"rule":"Akkusativ: den/die/das/die (direct object)","note":"Ich sehe den Mann. (I see the man.)"},{"rule":"Only masculine changes: der → den","note":"Die Frau (Nom) → die Frau (Akk). No change!"}]', '[{"german":"Der Mann kauft den Tisch.","arabic":"الرجل يشتري الطاولة.","english":"The man buys the table."},{"german":"Die Frau sieht den Hund.","arabic":"المرأة ترى الكلب.","english":"The woman sees the dog."},{"german":"Das Kind isst das Brot.","arabic":"الطفل يأكل الخبز.","english":"The child eats the bread."}]', '[{"mistake":"Ich sehe der Mann","correction":"Ich sehe den Mann","explanation":"After the verb \"sehen\", the object is in accusative. Der → den."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006599a2cf', 'multiple_choice', 'Which German word matches "bread"?', '["das Brot","das Ei","die Milch","der Käse"]', 'das Brot', '"bread" = "das Brot" in German. Article: das Plural: die Brote', 1, 1),
  ('00000000-0000-4000-a000-00006599a2cf', 'multiple_choice', 'Which German word matches "milk"?', '["die Milch","das Brot","das Ei","der Apfel"]', 'die Milch', '"milk" = "die Milch" in German. Article: die ', 1, 2),
  ('00000000-0000-4000-a000-00006599a2cf', 'multiple_choice', 'Which German word matches "cheese"?', '["der Käse","das Brot","die Milch","der Apfel"]', 'der Käse', '"cheese" = "der Käse" in German. Article: der ', 1, 3),
  ('00000000-0000-4000-a000-00006599a2cf', 'multiple_choice', 'Which German word matches "apple"?', '["das Brot","der Käse","die Milch","der Apfel"]', 'der Apfel', '"apple" = "der Apfel" in German. Article: der Plural: die Äpfel', 1, 4),
  ('00000000-0000-4000-a000-00006599a2cf', 'multiple_choice', 'Which German word matches "egg"?', '["der Käse","das Ei","das Brot","die Milch"]', 'das Ei', '"egg" = "das Ei" in German. Article: das Plural: die Eier', 1, 5),
  ('00000000-0000-4000-a000-00006599a2cf', 'fill_gap', 'Complete the sentence: Ich ___ gern über Drinks & Meals. (sprechen)', '["spreche","sprichst","spricht","sprechen"]', 'spreche', 'ich spreche gern = I like to speak. Stem: sprech- + e.', 2, 6),
  ('00000000-0000-4000-a000-00006599a2cf', 'translation', 'Translate to German: "I am learning about Drinks & Meals."', '["Ich lerne über Drinks & Meals.","Ich lerne Drinks & Meals.","Lerne ich Drinks & Meals."]', 'Ich lerne über Drinks & Meals.', '"Ich lerne über..." = "I am learning about..."', 2, 7),
  ('00000000-0000-4000-a000-00006599a2cf', 'matching', 'Match: Which word pairs are correct?', '["das Brot - bread, die Milch - milk"]', 'Matched correctly', 'Each German word has a unique English equivalent.', 2, 8);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-00006599a2cf', 'multiple_choice', 'What does "das Brot" mean in English?', '["bread","to run","beautiful","yesterday"]', 'bread', 1, 1),
  ('00000000-0000-4000-a000-00006599a2cf', 'multiple_choice', 'What is the correct article for "die Milch"?', '["der","die","das","den"]', 'die', 1, 2),
  ('00000000-0000-4000-a000-00006599a2cf', 'true_false', 'The word "der Käse" is related to Drinks & Meals.', '["True","False"]', 'True', 1, 3),
  ('00000000-0000-4000-a000-00006599a2cf', 'multiple_choice', 'Which sentence correctly uses articles_nominative_akkusativ?', '["Der Mann kauft den Tisch.","Die Frau sieht den Hund.","Das Kind isst das Brot."]', 'Der Mann kauft den Tisch.', 2, 4),
  ('00000000-0000-4000-a000-00006599a2cf', 'true_false', 'German word order puts the verb in second position in main clauses.', '["True","False"]', 'True', 1, 5),
  ('00000000-0000-4000-a000-00006599a2cf', 'fill_blank', 'Complete: Ich ___ (apple) Deutsch.', '["der Apfel","lernt","lernst","lernen"]', 'lerne', 2, 6),
  ('00000000-0000-4000-a000-00006599a2cf', 'multiple_choice', 'What is the German word for "egg"?', '["das Ei","das Obst","das Gemüse","kochen"]', 'das Ei', 1, 7),
  ('00000000-0000-4000-a000-00006599a2cf', 'true_false', 'In German, ALL nouns are always capitalised.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-00006599a2cf', 'multiple_choice', 'How do you say "please" in a restaurant in Germany?', '["Bitte","Danke","Tschüss","Hallo"]', 'Bitte', 1, 9),
  ('00000000-0000-4000-a000-00006599a2cf', 'fill_blank', 'Wo ___ (to live) du?', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 2, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, french_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-00006599a2cf', 'Ich möchte bitte bestellen.', 'I would like to order, please.', 'أريد أن أطلب من فضلك.', NULL, 'Used in Essen und Einkaufen', 'formal', false, 1),
  ('00000000-0000-4000-a000-00006599a2cf', 'Was empfehlen Sie?', 'What do you recommend?', 'ماذا تنصحون؟', NULL, 'Used in Essen und Einkaufen', 'formal', false, 2),
  ('00000000-0000-4000-a000-00006599a2cf', 'Die Rechnung, bitte!', 'The bill, please!', 'الفاتورة من فضلك!', NULL, 'Used in Essen und Einkaufen', 'formal', false, 3),
  ('00000000-0000-4000-a000-00006599a2cf', 'Es hat sehr gut geschmeckt!', 'It was delicious!', 'كان لذيذاً جداً!', NULL, 'Used in Essen und Einkaufen', 'formal', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-00006599a2cf', 'das das Brot (die Brote)', 'bread — الخبز', 'noun', 'vocabulary', 1),
  ('00000000-0000-4000-a000-00006599a2cf', 'die die Milch', 'milk — الحليب', 'noun', 'vocabulary', 2),
  ('00000000-0000-4000-a000-00006599a2cf', 'der der Käse', 'cheese — الجبن', 'noun', 'vocabulary', 3),
  ('00000000-0000-4000-a000-00006599a2cf', 'der der Apfel (die Äpfel)', 'apple — التفاح', 'noun', 'vocabulary', 4),
  ('00000000-0000-4000-a000-00006599a2cf', 'das das Ei (die Eier)', 'egg — البيضة', 'noun', 'vocabulary', 5),
  ('00000000-0000-4000-a000-00006599a2cf', 'das das Obst', 'fruit — الفاكهة', 'noun', 'vocabulary', 6),
  ('00000000-0000-4000-a000-00006599a2cf', 'das das Gemüse', 'vegetables — الخضروات', 'noun', 'vocabulary', 7),
  ('00000000-0000-4000-a000-00006599a2cf', 'kochen', 'to cook — يطبخ', 'verb', 'vocabulary', 8),
  ('00000000-0000-4000-a000-00006599a2cf', 'der der Fisch (die Fische)', 'fish — السمك', 'noun', 'vocabulary', 9),
  ('00000000-0000-4000-a000-00006599a2cf', 'das das Fleisch', 'meat — اللحم', 'noun', 'vocabulary', 10),
  ('00000000-0000-4000-a000-00006599a2cf', 'Hallo', 'hello — مرحباً', 'interjection', 'vocabulary', 11),
  ('00000000-0000-4000-a000-00006599a2cf', 'Guten Morgen', 'good morning — صباح الخير', 'phrase', 'vocabulary', 12),
  ('00000000-0000-4000-a000-00006599a2cf', 'Guten Tag', 'good day — نهارك سعيد', 'phrase', 'vocabulary', 13),
  ('00000000-0000-4000-a000-00006599a2cf', 'Tschüss', 'bye — مع السلامة', 'interjection', 'vocabulary', 14),
  ('00000000-0000-4000-a000-00006599a2cf', 'der der Name (die Namen)', 'name — الاسم', 'noun', 'vocabulary', 15),
  ('00000000-0000-4000-a000-00006599a2cf', 'Der Mann kauft den Tisch.', 'The man buys the table.', 'Nominativ und Akkusativ (Nominative and Accusative)', 'grammar', 16),
  ('00000000-0000-4000-a000-00006599a2cf', 'Die Frau sieht den Hund.', 'The woman sees the dog.', 'Nominativ und Akkusativ (Nominative and Accusative)', 'grammar', 17),
  ('00000000-0000-4000-a000-00006599a2cf', 'Das Kind isst das Brot.', 'The child eats the bread.', 'Nominativ und Akkusativ (Nominative and Accusative)', 'grammar', 18);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, french_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-00006599a2cf', 'Getränke und Mahlzeiten — Leseübung', 'Heute gehe ich einkaufen. Ich brauche Lebensmittel. Ich gehe zum Supermarkt. Ich kaufe Brot, Milch, Käse und Eier. Auch Obst und Gemüse brauche ich. Die Äpfel sehen gut aus. Ich nehme fünf Äpfel. Der Käse kostet 3 Euro. Alles zusammen kostet 15 Euro. Ich bezahle an der Kasse. Die Verkäuferin ist freundlich. Dann gehe ich nach Hause.', 'Today I go shopping. I need groceries. I go to the supermarket. I buy bread, milk, cheese and eggs. I also need fruit and vegetables. The apples look good. I take five apples. The cheese costs 3 euros. Everything together costs 15 euros. I pay at the checkout. The saleswoman is friendly. Then I go home.', 'اليوم أذهب للتسوق. أحتاج مواد غذائية. أذهب إلى السوبرماركت. أشتري خبزاً وحليباً وجبناً وبيضاً. أحتاج أيضاً فاكهة وخضروات. التفاح يبدو جيداً. آخذ خمس تفاحات. الجبن يكلف 3 يورو. المجموع الكلي 15 يورو. أدفع عند الصندوق. البائعة ودودة. ثم أعود إلى المنزل.', NULL, 57, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, french_translation, duration_seconds, speaker_count, scenario) values
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

[Kellner]: فوراً. شهية طيبة!', '[Kellner]: 

[Gast]: 

[Kellner]: 

[Gast]: 

[Kellner]: ', 60, 2, 'Essen und Einkaufen');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-00006599a2cf', '🔊 Sprechen: Getränke und Mahlzeiten', 'Roleplay: You are in a Hamburg office. Introduce yourself and talk about Drinks & Meals. Your partner (AI) will respond naturally.', 'Drinks & Meals', ARRAY['Use complete sentences — not single words','Pause between phrases, not between words','Don''t translate from Arabic word-for-word']::text[], ARRAY['das Brot','die Milch','der Käse','der Apfel','das Ei','das Obst','das Gemüse','kochen']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-00006599a2cf', '✏️ Schreiben: Getränke und Mahlzeiten', 'Write an email to a German friend about "Drinks & Meals". Tell them what you learned, what you found interesting, and ask two questions about their experience with this topic. Use at least 8 vocabulary words from this lesson. Sign off naturally ("Viele Grüße", "Liebe Grüße").', ARRAY['Start with "Hallo" or "Liebe/r"','Keep sentences short (Subject-Verb-Object)','End with a friendly farewell']::text[], ARRAY['das Brot','die Milch','der Käse','der Apfel','das Ei','das Obst','das Gemüse','kochen']::text[], ARRAY['Sentence structure','Vocabulary usage']::text[], 50, 100, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00006599a2cf', 'Getränke und Mahlzeiten — Roleplay', 'Drinks & Meals', 'Student', 'Teacher', 'Practice conversation about Drinks & Meals', 'Hallo! Lass uns über dieses Thema sprechen.', 'beginner', 1, ARRAY['das Brot','die Milch','der Käse','der Apfel','das Ei','das Obst','das Gemüse','kochen']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00006599a2cf', 'Getränke und Mahlzeiten — Advanced Roleplay', 'Drinks & Meals', 'Customer', 'Assistant', 'Extended conversation about Drinks & Meals', 'Guten Tag! Wie kann ich Ihnen helfen?', 'beginner', 2, ARRAY['das Brot','die Milch','der Käse','der Apfel','das Ei','das Obst','das Gemüse','kochen']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-00006599a2cf', 'Getränke und Mahlzeiten — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Getränke und Mahlzeiten".', 'Creative practice for Drinks & Meals', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-00006599a2cf', '📚 Hausaufgabe: Getränke und Mahlzeiten', 'Complete these tasks to reinforce "Getränke und Mahlzeiten".', 'mixed', '[{"description":"Create 10 flashcards from this lesson''s vocabulary — write German on one side, Arabic on the other. Test yourself 3 times."},{"description":"Write 6 sentences about Drinks & Meals: 2 statements, 2 questions, 2 negations — all using articles_nominative_akkusativ."},{"description":"Record yourself reading the dialogue aloud. Listen to the recording and note 3 things to improve."},{"description":"Find 3 real German websites, videos, or articles about Drinks & Meals. Note 5 new words you discovered."}]', 50, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-00006599a2cf', '🎯 Great work! In this lesson you learned 142 new words about Drinks & Meals. You practiced articles_nominative_akkusativ — an important grammar topic for A1 level. You read a text, listened to a dialogue, and practiced speaking and writing. Keep going!', '["142 vocabulary items about Drinks & Meals","articles_nominative_akkusativ — grammar explanation and practice","Reading comprehension: text about Drinks & Meals","Listening comprehension: dialogue about Drinks & Meals","Speaking practice: roleplay/discussion about Drinks & Meals","Writing task: text about Drinks & Meals"]', '[{"title":"Getränke und Mahlzeiten Review","summary":"articles_nominative_akkusativ — the main grammar focus. Focus on understanding when to use this structure and forming basic sentences."}]', ARRAY['das Brot (bread)','die Milch (milk)','der Käse (cheese)','der Apfel (apple)','das Ei (egg)']::text[], ARRAY['Don''t translate from Arabic word-for-word — German has different sentence structure','Learn every noun with its article: NEVER learn "Tisch" alone, always "der Tisch"','Verb always in position 2 in main clauses']::text[], ARRAY['Practice 15-20 minutes daily — consistency beats intensity','Speak out loud: German pronunciation needs muscle memory','Use the new vocabulary within 24 hours or you''ll forget it','Watch German YouTube videos about Drinks & Meals for authentic input']::text[]);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006599a2cf', 'Pronunciation: German sounds for "food"', 'In German, vowels are pure — unlike English diphthongs. The "ch" sound after a, o, u is guttural (like Arabic خ). After e, i, ä, ö, ü it''s soft (like English "huge" without the "u").

Common mistake for Arabic speakers: Arabic speakers tend to over-emphasise consonants. German flows — connect words smoothly (e.g., "Ich habe" becomes /ɪçabə/ not /ɪç ˈhaːbə/).', '[]', '[{"german":"das Brot","arabic":"","english":"","phonetic":""},{"german":"die Milch","arabic":"","english":"","phonetic":""},{"german":"der Käse","arabic":"","english":"","phonetic":""},{"german":"der Apfel","arabic":"","english":"","phonetic":""}]', '[]', 10);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006599a2cf', 'translation', 'Translate to German: "I use the word "bread" in a sentence about Drinks & Meals."', '[]', 'Ich kaufe ein Brot.', 'Use das  "das Brot" with the correct articles_nominative_akkusativ form.', 1, 40);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006599a2cf', 'translation', 'Translate to German: "I use the word "milk" in a sentence about Drinks & Meals."', '[]', 'Die Milch ist frisch.', 'Use die  "die Milch" with the correct articles_nominative_akkusativ form.', 1, 41);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006599a2cf', 'translation', 'Translate to German: "I use the word "cheese" in a sentence about Drinks & Meals."', '[]', 'Der Käse schmeckt gut.', 'Use der  "der Käse" with the correct articles_nominative_akkusativ form.', 1, 42);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006599a2cf', 'Culture: 🇩🇪 Deutsche Kultur: Drinks & Meals', 'In Germany, Drinks & Meals is approached with typical German directness and efficiency. Germans value clarity over small talk. When discussing Drinks & Meals, expect honest feedback and straightforward questions. This is not rudeness — it''s cultural. Arabic speakers often find this too direct at first, but you''ll appreciate it once you get used to it.

في ألمانيا، يتم التعامل مع Drinks & Meals بوضوح وكفاءة. الألمان يقدرون الوضوح أكثر من المجاملات. لا تعتبر هذه وقاحة - إنها ثقافة مختلفة.', '["Tip: Always use \"Sie\" (formal) with strangers and colleagues","Tip: Germans appreciate punctuality — arrive 5 minutes early","Tip: Direct feedback is a sign of respect, not criticism","Tip: Prepare factual arguments, not emotional appeals"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006599a2cf', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Using \"der\" for all food nouns","correction":"Learn article + noun as one unit for every food word","explanation":"Arabic food words don''t have inherent gender."},{"mistake":"Using the wrong article (der/die/das) for nouns","correction":"Learn each noun with its article as one piece","explanation":"Arabic has no articles for nouns without gender connection"}]', 30);

  -- Lesson 3: Im Supermarkt (L-A1-04-03)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-00006599a2d0', '00000000-0000-4000-a000-000039b4d361', 'Im Supermarkt', 'Practice shopping conversations and understand prices.', 'Shopping', 'speaking', '["Understand and apply mochten rules correctly","Use mochten in real conversations","Avoid common mistakes Arabic speakers make with mochten","Read and understand mochten in context","Listen and identify mochten in speech","Write sentences using mochten correctly"]', 30, 3, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, french_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-00006599a2d0', 'das Brot', 'الخبز', 'bread', 'le pain', 'das', 'die Brote', 'noun', 'Ich kaufe ein Brot.', 'I buy a loaf of bread.', 'A1', 1),
  ('00000000-0000-4000-a000-00006599a2d0', 'die Milch', 'الحليب', 'milk', 'le lait', 'die', NULL, 'noun', 'Die Milch ist frisch.', 'The milk is fresh.', 'A1', 2),
  ('00000000-0000-4000-a000-00006599a2d0', 'der Käse', 'الجبن', 'cheese', 'le fromage', 'der', NULL, 'noun', 'Der Käse schmeckt gut.', 'The cheese tastes good.', 'A1', 3),
  ('00000000-0000-4000-a000-00006599a2d0', 'der Apfel', 'التفاح', 'apple', 'la pomme', 'der', 'die Äpfel', 'noun', 'Der Apfel ist rot.', 'The apple is red.', 'A1', 4),
  ('00000000-0000-4000-a000-00006599a2d0', 'das Ei', 'البيضة', 'egg', 'l''œuf', 'das', 'die Eier', 'noun', 'Ich esse ein Ei zum Frühstück.', 'I eat an egg for breakfast.', 'A1', 5),
  ('00000000-0000-4000-a000-00006599a2d0', 'das Obst', 'الفاكهة', 'fruit', 'les fruits', 'das', NULL, 'noun', 'Obst ist gesund.', 'Fruit is healthy.', 'A1', 6),
  ('00000000-0000-4000-a000-00006599a2d0', 'das Gemüse', 'الخضروات', 'vegetables', 'les légumes', 'das', NULL, 'noun', 'Ich kaufe Gemüse auf dem Markt.', 'I buy vegetables at the market.', 'A1', 7),
  ('00000000-0000-4000-a000-00006599a2d0', 'kochen', 'يطبخ', 'to cook', 'cuisiner', NULL, NULL, 'verb', 'Meine Mutter kocht gut.', 'My mother cooks well.', 'A1', 8),
  ('00000000-0000-4000-a000-00006599a2d0', 'der Fisch', 'السمك', 'fish', 'le poisson', 'der', 'die Fische', 'noun', 'Der Fisch ist frisch.', 'The fish is fresh.', 'A1', 9),
  ('00000000-0000-4000-a000-00006599a2d0', 'das Fleisch', 'اللحم', 'meat', 'la viande', 'das', NULL, 'noun', 'Ich esse nicht viel Fleisch.', 'I do not eat much meat.', 'A1', 10),
  ('00000000-0000-4000-a000-00006599a2d0', 'Hallo', 'مرحباً', 'hello', 'bonjour', NULL, NULL, 'interjection', 'Hallo, wie geht es dir?', 'Hello, how are you?', 'A1', 11),
  ('00000000-0000-4000-a000-00006599a2d0', 'Guten Morgen', 'صباح الخير', 'good morning', 'bonjour (le matin)', NULL, NULL, 'phrase', 'Guten Morgen, Herr Müller.', 'Good morning, Mr. Müller.', 'A1', 12),
  ('00000000-0000-4000-a000-00006599a2d0', 'Guten Tag', 'نهارك سعيد', 'good day', 'bonjour (l''après-midi)', NULL, NULL, 'phrase', 'Guten Tag, Frau Schmidt.', 'Good day, Mrs. Schmidt.', 'A1', 13),
  ('00000000-0000-4000-a000-00006599a2d0', 'Tschüss', 'مع السلامة', 'bye', 'au revoir / salut', NULL, NULL, 'interjection', 'Tschüss, bis morgen!', 'Bye, see you tomorrow!', 'A1', 14),
  ('00000000-0000-4000-a000-00006599a2d0', 'der Name', 'الاسم', 'name', 'le nom', 'der', 'die Namen', 'noun', 'Mein Name ist Anna.', 'My name is Anna.', 'A1', 15),
  ('00000000-0000-4000-a000-00006599a2d0', 'wie', 'كيف', 'how', 'comment', NULL, NULL, 'adverb', 'Wie heißt du?', 'What is your name?', 'A1', 16),
  ('00000000-0000-4000-a000-00006599a2d0', 'freuen', 'يسر', 'to be pleased', 'se réjouir', NULL, NULL, 'verb', 'Ich freue mich, dich kennenzulernen.', 'I am pleased to meet you.', 'A1', 17),
  ('00000000-0000-4000-a000-00006599a2d0', 'Willkommen', 'أهلاً وسهلاً', 'welcome', 'bienvenue', NULL, NULL, 'interjection', 'Willkommen in Deutschland!', 'Welcome to Germany!', 'A1', 18),
  ('00000000-0000-4000-a000-00006599a2d0', 'die Familie', 'العائلة', 'family', 'la famille', 'die', 'die Familien', 'noun', 'Meine Familie ist groß.', 'My family is big.', 'A1', 19),
  ('00000000-0000-4000-a000-00006599a2d0', 'der Vater', 'الأب', 'father', 'le père', 'der', 'die Väter', 'noun', 'Mein Vater ist Ingenieur.', 'My father is an engineer.', 'A1', 20),
  ('00000000-0000-4000-a000-00006599a2d0', 'die Mutter', 'الأم', 'mother', 'la mère', 'die', 'die Mütter', 'noun', 'Meine Mutter kocht gut.', 'My mother cooks well.', 'A1', 21),
  ('00000000-0000-4000-a000-00006599a2d0', 'der Bruder', 'الأخ', 'brother', 'le frère', 'der', 'die Brüder', 'noun', 'Mein Bruder ist 15 Jahre alt.', 'My brother is 15 years old.', 'A1', 22),
  ('00000000-0000-4000-a000-00006599a2d0', 'die Schwester', 'الأخت', 'sister', 'la sœur', 'die', 'die Schwestern', 'noun', 'Meine Schwester studiert Medizin.', 'My sister studies medicine.', 'A1', 23),
  ('00000000-0000-4000-a000-00006599a2d0', 'die Geschwister', 'الإخوة', 'siblings', 'les frères et sœurs', 'die', NULL, 'noun', 'Hast du Geschwister?', 'Do you have siblings?', 'A1', 24),
  ('00000000-0000-4000-a000-00006599a2d0', 'der Sohn', 'الابن', 'son', 'le fils', 'der', 'die Söhne', 'noun', 'Wir haben einen Sohn.', 'We have a son.', 'A1', 25),
  ('00000000-0000-4000-a000-00006599a2d0', 'die Tochter', 'الابنة', 'daughter', 'la fille', 'die', 'die Töchter', 'noun', 'Meine Tochter geht zur Schule.', 'My daughter goes to school.', 'A1', 26),
  ('00000000-0000-4000-a000-00006599a2d0', 'die Großeltern', 'الأجداد', 'grandparents', 'les grands-parents', 'die', NULL, 'noun', 'Meine Großeltern wohnen auf dem Land.', 'My grandparents live in the countryside.', 'A1', 27),
  ('00000000-0000-4000-a000-00006599a2d0', 'verheiratet', 'متزوج', 'married', 'marié(e)', NULL, NULL, 'adjective', 'Meine Eltern sind verheiratet.', 'My parents are married.', 'A1', 28),
  ('00000000-0000-4000-a000-00006599a2d0', 'das Haus', 'البيت', 'house', 'la maison', 'das', 'die Häuser', 'noun', 'Das Haus ist groß.', 'The house is big.', 'A1', 29),
  ('00000000-0000-4000-a000-00006599a2d0', 'die Wohnung', 'الشقة', 'apartment', 'l''appartement', 'die', 'die Wohnungen', 'noun', 'Meine Wohnung hat drei Zimmer.', 'My apartment has three rooms.', 'A1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006599a2d0', 'möchten — Höfliche Bitten (Polite Requests) / möchten — الطلبات المهذبة', '"Möchten" is the subjunctive form of "mögen" and means "would like". It is the most important word for polite requests in German. Conjugation: ich möchte, du möchtest, er/sie/es möchte, wir möchten, ihr möchtet, sie/Sie möchten. It is always followed by an infinitive at the end, or a noun.', '[{"rule":"möchten + noun: Ich möchte einen Kaffee.","note":"Used like \"I would like a...\""},{"rule":"möchten + infinitive (at end): Ich möchte zahlen.","note":"Verb goes to the end"},{"rule":"ich möchte, du möchtest, er/sie/es möchte, wir möchten","note":"Similar to modal verb conjugation"}]', '[{"german":"Ich möchte einen Kaffee, bitte.","arabic":"أود فنجان قهوة من فضلك.","english":"I would like a coffee, please."},{"german":"Wir möchten zahlen, bitte.","arabic":"نود الدفع من فضلك.","english":"We would like to pay, please."},{"german":"Möchtest du etwas essen?","arabic":"هل ترغب في أكل شيء؟","english":"Would you like something to eat?"}]', '[{"mistake":"Ich will einen Kaffee (too direct)","correction":"Ich möchte einen Kaffee.","explanation":"\"Ich will\" is too direct in restaurants. Use \"möchten\" for polite requests."},{"mistake":"Ich möchte ein Wasser (wrong article in accusative)","correction":"Ich möchte ein Wasser / Ich möchte einen Kaffee.","explanation":"\"Kaffee\" is masculine → \"einen\" (Akkusativ). \"Wasser\" is neuter → \"ein\"."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006599a2d0', 'multiple_choice', 'Which German word matches "bread"?', '["der Käse","der Apfel","das Brot","die Milch"]', 'das Brot', '"bread" = "das Brot" in German. Article: das Plural: die Brote', 1, 1),
  ('00000000-0000-4000-a000-00006599a2d0', 'multiple_choice', 'Which German word matches "milk"?', '["die Milch","der Apfel","der Käse","das Brot"]', 'die Milch', '"milk" = "die Milch" in German. Article: die ', 1, 2),
  ('00000000-0000-4000-a000-00006599a2d0', 'multiple_choice', 'Which German word matches "cheese"?', '["die Milch","das Brot","das Ei","der Apfel"]', 'der Käse', '"cheese" = "der Käse" in German. Article: der ', 1, 3),
  ('00000000-0000-4000-a000-00006599a2d0', 'multiple_choice', 'Which German word matches "apple"?', '["der Käse","das Ei","der Apfel","das Brot"]', 'der Apfel', '"apple" = "der Apfel" in German. Article: der Plural: die Äpfel', 1, 4),
  ('00000000-0000-4000-a000-00006599a2d0', 'multiple_choice', 'Which German word matches "egg"?', '["der Apfel","das Ei","das Brot","der Käse"]', 'das Ei', '"egg" = "das Ei" in German. Article: das Plural: die Eier', 1, 5),
  ('00000000-0000-4000-a000-00006599a2d0', 'fill_gap', 'Complete the sentence: Ich ___ gern über Shopping. (sprechen)', '["spreche","sprichst","spricht","sprechen"]', 'spreche', 'ich spreche gern = I like to speak. Stem: sprech- + e.', 2, 6),
  ('00000000-0000-4000-a000-00006599a2d0', 'translation', 'Translate to German: "I am learning about Shopping."', '["Ich lerne über Shopping.","Ich lerne Shopping.","Lerne ich Shopping."]', 'Ich lerne über Shopping.', '"Ich lerne über..." = "I am learning about..."', 2, 7),
  ('00000000-0000-4000-a000-00006599a2d0', 'matching', 'Match: Which word pairs are correct?', '["das Brot - bread, die Milch - milk"]', 'Matched correctly', 'Each German word has a unique English equivalent.', 2, 8);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-00006599a2d0', 'multiple_choice', 'What does "das Brot" mean in English?', '["bread","to run","beautiful","yesterday"]', 'bread', 1, 1),
  ('00000000-0000-4000-a000-00006599a2d0', 'multiple_choice', 'What is the correct article for "die Milch"?', '["der","die","das","den"]', 'die', 1, 2),
  ('00000000-0000-4000-a000-00006599a2d0', 'true_false', 'The word "der Käse" is related to Shopping.', '["True","False"]', 'True', 1, 3),
  ('00000000-0000-4000-a000-00006599a2d0', 'multiple_choice', 'Which sentence correctly uses mochten?', '["Ich möchte einen Kaffee, bitte.","Wir möchten zahlen, bitte.","Möchtest du etwas essen?"]', 'Ich möchte einen Kaffee, bitte.', 2, 4),
  ('00000000-0000-4000-a000-00006599a2d0', 'true_false', 'German word order puts the verb in second position in main clauses.', '["True","False"]', 'True', 1, 5),
  ('00000000-0000-4000-a000-00006599a2d0', 'fill_blank', 'Complete: Ich ___ (apple) Deutsch.', '["der Apfel","lernt","lernst","lernen"]', 'lerne', 2, 6),
  ('00000000-0000-4000-a000-00006599a2d0', 'multiple_choice', 'What is the German word for "egg"?', '["das Ei","das Obst","das Gemüse","kochen"]', 'das Ei', 1, 7),
  ('00000000-0000-4000-a000-00006599a2d0', 'true_false', 'In German, ALL nouns are always capitalised.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-00006599a2d0', 'multiple_choice', 'How do you say "please" in a restaurant in Germany?', '["Bitte","Danke","Tschüss","Hallo"]', 'Bitte', 1, 9),
  ('00000000-0000-4000-a000-00006599a2d0', 'fill_blank', 'Wo ___ (to live) du?', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 2, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, french_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-00006599a2d0', 'Ich möchte bitte bestellen.', 'I would like to order, please.', 'أريد أن أطلب من فضلك.', NULL, 'Used in Essen und Einkaufen', 'formal', false, 1),
  ('00000000-0000-4000-a000-00006599a2d0', 'Was empfehlen Sie?', 'What do you recommend?', 'ماذا تنصحون؟', NULL, 'Used in Essen und Einkaufen', 'formal', false, 2),
  ('00000000-0000-4000-a000-00006599a2d0', 'Die Rechnung, bitte!', 'The bill, please!', 'الفاتورة من فضلك!', NULL, 'Used in Essen und Einkaufen', 'formal', false, 3),
  ('00000000-0000-4000-a000-00006599a2d0', 'Es hat sehr gut geschmeckt!', 'It was delicious!', 'كان لذيذاً جداً!', NULL, 'Used in Essen und Einkaufen', 'formal', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-00006599a2d0', 'das das Brot (die Brote)', 'bread — الخبز', 'noun', 'vocabulary', 1),
  ('00000000-0000-4000-a000-00006599a2d0', 'die die Milch', 'milk — الحليب', 'noun', 'vocabulary', 2),
  ('00000000-0000-4000-a000-00006599a2d0', 'der der Käse', 'cheese — الجبن', 'noun', 'vocabulary', 3),
  ('00000000-0000-4000-a000-00006599a2d0', 'der der Apfel (die Äpfel)', 'apple — التفاح', 'noun', 'vocabulary', 4),
  ('00000000-0000-4000-a000-00006599a2d0', 'das das Ei (die Eier)', 'egg — البيضة', 'noun', 'vocabulary', 5),
  ('00000000-0000-4000-a000-00006599a2d0', 'das das Obst', 'fruit — الفاكهة', 'noun', 'vocabulary', 6),
  ('00000000-0000-4000-a000-00006599a2d0', 'das das Gemüse', 'vegetables — الخضروات', 'noun', 'vocabulary', 7),
  ('00000000-0000-4000-a000-00006599a2d0', 'kochen', 'to cook — يطبخ', 'verb', 'vocabulary', 8),
  ('00000000-0000-4000-a000-00006599a2d0', 'der der Fisch (die Fische)', 'fish — السمك', 'noun', 'vocabulary', 9),
  ('00000000-0000-4000-a000-00006599a2d0', 'das das Fleisch', 'meat — اللحم', 'noun', 'vocabulary', 10),
  ('00000000-0000-4000-a000-00006599a2d0', 'Hallo', 'hello — مرحباً', 'interjection', 'vocabulary', 11),
  ('00000000-0000-4000-a000-00006599a2d0', 'Guten Morgen', 'good morning — صباح الخير', 'phrase', 'vocabulary', 12),
  ('00000000-0000-4000-a000-00006599a2d0', 'Guten Tag', 'good day — نهارك سعيد', 'phrase', 'vocabulary', 13),
  ('00000000-0000-4000-a000-00006599a2d0', 'Tschüss', 'bye — مع السلامة', 'interjection', 'vocabulary', 14),
  ('00000000-0000-4000-a000-00006599a2d0', 'der der Name (die Namen)', 'name — الاسم', 'noun', 'vocabulary', 15),
  ('00000000-0000-4000-a000-00006599a2d0', 'Ich möchte einen Kaffee, bitte.', 'I would like a coffee, please.', 'möchten — Höfliche Bitten (Polite Requests)', 'grammar', 16),
  ('00000000-0000-4000-a000-00006599a2d0', 'Wir möchten zahlen, bitte.', 'We would like to pay, please.', 'möchten — Höfliche Bitten (Polite Requests)', 'grammar', 17),
  ('00000000-0000-4000-a000-00006599a2d0', 'Möchtest du etwas essen?', 'Would you like something to eat?', 'möchten — Höfliche Bitten (Polite Requests)', 'grammar', 18);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, french_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-00006599a2d0', 'Im Supermarkt — Leseübung', 'Heute gehe ich einkaufen. Ich brauche Lebensmittel. Ich gehe zum Supermarkt. Ich kaufe Brot, Milch, Käse und Eier. Auch Obst und Gemüse brauche ich. Die Äpfel sehen gut aus. Ich nehme fünf Äpfel. Der Käse kostet 3 Euro. Alles zusammen kostet 15 Euro. Ich bezahle an der Kasse. Die Verkäuferin ist freundlich. Dann gehe ich nach Hause.', 'Today I go shopping. I need groceries. I go to the supermarket. I buy bread, milk, cheese and eggs. I also need fruit and vegetables. The apples look good. I take five apples. The cheese costs 3 euros. Everything together costs 15 euros. I pay at the checkout. The saleswoman is friendly. Then I go home.', 'اليوم أذهب للتسوق. أحتاج مواد غذائية. أذهب إلى السوبرماركت. أشتري خبزاً وحليباً وجبناً وبيضاً. أحتاج أيضاً فاكهة وخضروات. التفاح يبدو جيداً. آخذ خمس تفاحات. الجبن يكلف 3 يورو. المجموع الكلي 15 يورو. أدفع عند الصندوق. البائعة ودودة. ثم أعود إلى المنزل.', NULL, 57, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, french_translation, duration_seconds, speaker_count, scenario) values
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

[Kellner]: فوراً. شهية طيبة!', '[Kellner]: 

[Gast]: 

[Kellner]: 

[Gast]: 

[Kellner]: ', 60, 2, 'Essen und Einkaufen');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-00006599a2d0', '🔊 Sprechen: Im Supermarkt', 'Roleplay: You are in a Hamburg office. Introduce yourself and talk about Shopping. Your partner (AI) will respond naturally.', 'Shopping', ARRAY['Use complete sentences — not single words','Pause between phrases, not between words','Don''t translate from Arabic word-for-word']::text[], ARRAY['das Brot','die Milch','der Käse','der Apfel','das Ei','das Obst','das Gemüse','kochen']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-00006599a2d0', '✏️ Schreiben: Im Supermarkt', 'Write an email to a German friend about "Shopping". Tell them what you learned, what you found interesting, and ask two questions about their experience with this topic. Use at least 8 vocabulary words from this lesson. Sign off naturally ("Viele Grüße", "Liebe Grüße").', ARRAY['Start with "Hallo" or "Liebe/r"','Keep sentences short (Subject-Verb-Object)','End with a friendly farewell']::text[], ARRAY['das Brot','die Milch','der Käse','der Apfel','das Ei','das Obst','das Gemüse','kochen']::text[], ARRAY['Sentence structure','Vocabulary usage']::text[], 50, 100, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00006599a2d0', 'Im Supermarkt — Roleplay', 'Shopping', 'Student', 'Teacher', 'Practice conversation about Shopping', 'Hallo! Lass uns über dieses Thema sprechen.', 'beginner', 1, ARRAY['das Brot','die Milch','der Käse','der Apfel','das Ei','das Obst','das Gemüse','kochen']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00006599a2d0', 'Im Supermarkt — Advanced Roleplay', 'Shopping', 'Customer', 'Assistant', 'Extended conversation about Shopping', 'Guten Tag! Wie kann ich Ihnen helfen?', 'beginner', 2, ARRAY['das Brot','die Milch','der Käse','der Apfel','das Ei','das Obst','das Gemüse','kochen']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-00006599a2d0', 'Im Supermarkt — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Im Supermarkt".', 'Creative practice for Shopping', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-00006599a2d0', '📚 Hausaufgabe: Im Supermarkt', 'Complete these tasks to reinforce "Im Supermarkt".', 'mixed', '[{"description":"Create 10 flashcards from this lesson''s vocabulary — write German on one side, Arabic on the other. Test yourself 3 times."},{"description":"Write 6 sentences about Shopping: 2 statements, 2 questions, 2 negations — all using mochten."},{"description":"Record yourself reading the dialogue aloud. Listen to the recording and note 3 things to improve."},{"description":"Find 3 real German websites, videos, or articles about Shopping. Note 5 new words you discovered."}]', 50, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-00006599a2d0', '🎯 Great work! In this lesson you learned 142 new words about Shopping. You practiced mochten — an important grammar topic for A1 level. You read a text, listened to a dialogue, and practiced speaking and writing. Keep going!', '["142 vocabulary items about Shopping","mochten — grammar explanation and practice","Reading comprehension: text about Shopping","Listening comprehension: dialogue about Shopping","Speaking practice: roleplay/discussion about Shopping","Writing task: text about Shopping"]', '[{"title":"Im Supermarkt Review","summary":"mochten — the main grammar focus. Focus on understanding when to use this structure and forming basic sentences."}]', ARRAY['das Brot (bread)','die Milch (milk)','der Käse (cheese)','der Apfel (apple)','das Ei (egg)']::text[], ARRAY['Don''t translate from Arabic word-for-word — German has different sentence structure','Learn every noun with its article: NEVER learn "Tisch" alone, always "der Tisch"','Verb always in position 2 in main clauses']::text[], ARRAY['Practice 15-20 minutes daily — consistency beats intensity','Speak out loud: German pronunciation needs muscle memory','Use the new vocabulary within 24 hours or you''ll forget it','Watch German YouTube videos about Shopping for authentic input']::text[]);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006599a2d0', 'Pronunciation: German sounds for "food"', 'In German, vowels are pure — unlike English diphthongs. The "ch" sound after a, o, u is guttural (like Arabic خ). After e, i, ä, ö, ü it''s soft (like English "huge" without the "u").

Common mistake for Arabic speakers: Arabic speakers tend to over-emphasise consonants. German flows — connect words smoothly (e.g., "Ich habe" becomes /ɪçabə/ not /ɪç ˈhaːbə/).', '[]', '[{"german":"das Brot","arabic":"","english":"","phonetic":""},{"german":"die Milch","arabic":"","english":"","phonetic":""},{"german":"der Käse","arabic":"","english":"","phonetic":""},{"german":"der Apfel","arabic":"","english":"","phonetic":""}]', '[]', 10);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006599a2d0', 'translation', 'Translate to German: "I use the word "bread" in a sentence about Shopping."', '[]', 'Ich kaufe ein Brot.', 'Use das  "das Brot" with the correct mochten form.', 1, 40);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006599a2d0', 'translation', 'Translate to German: "I use the word "milk" in a sentence about Shopping."', '[]', 'Die Milch ist frisch.', 'Use die  "die Milch" with the correct mochten form.', 1, 41);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006599a2d0', 'translation', 'Translate to German: "I use the word "cheese" in a sentence about Shopping."', '[]', 'Der Käse schmeckt gut.', 'Use der  "der Käse" with the correct mochten form.', 1, 42);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006599a2d0', 'Culture: 🇩🇪 Deutsche Kultur: Shopping', 'In Germany, Shopping is approached with typical German directness and efficiency. Germans value clarity over small talk. When discussing Shopping, expect honest feedback and straightforward questions. This is not rudeness — it''s cultural. Arabic speakers often find this too direct at first, but you''ll appreciate it once you get used to it.

في ألمانيا، يتم التعامل مع Shopping بوضوح وكفاءة. الألمان يقدرون الوضوح أكثر من المجاملات. لا تعتبر هذه وقاحة - إنها ثقافة مختلفة.', '["Tip: Always use \"Sie\" (formal) with strangers and colleagues","Tip: Germans appreciate punctuality — arrive 5 minutes early","Tip: Direct feedback is a sign of respect, not criticism","Tip: Prepare factual arguments, not emotional appeals"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006599a2d0', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Using \"der\" for all food nouns","correction":"Learn article + noun as one unit for every food word","explanation":"Arabic food words don''t have inherent gender."},{"mistake":"Using the wrong article (der/die/das) for nouns","correction":"Learn each noun with its article as one piece","explanation":"Arabic has no articles for nouns without gender connection"}]', 30);

  -- Lesson 4: Im Restaurant (L-A1-04-04)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-00006599a2d1', '00000000-0000-4000-a000-000039b4d361', 'Im Restaurant', 'Learn how to order food and interact in restaurants.', 'Restaurant', 'speaking', '["Understand and apply mochten rules correctly","Use mochten in real conversations","Avoid common mistakes Arabic speakers make with mochten","Read and understand mochten in context","Listen and identify mochten in speech","Write sentences using mochten correctly"]', 30, 4, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, french_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-00006599a2d1', 'das Brot', 'الخبز', 'bread', 'le pain', 'das', 'die Brote', 'noun', 'Ich kaufe ein Brot.', 'I buy a loaf of bread.', 'A1', 1),
  ('00000000-0000-4000-a000-00006599a2d1', 'die Milch', 'الحليب', 'milk', 'le lait', 'die', NULL, 'noun', 'Die Milch ist frisch.', 'The milk is fresh.', 'A1', 2),
  ('00000000-0000-4000-a000-00006599a2d1', 'der Käse', 'الجبن', 'cheese', 'le fromage', 'der', NULL, 'noun', 'Der Käse schmeckt gut.', 'The cheese tastes good.', 'A1', 3),
  ('00000000-0000-4000-a000-00006599a2d1', 'der Apfel', 'التفاح', 'apple', 'la pomme', 'der', 'die Äpfel', 'noun', 'Der Apfel ist rot.', 'The apple is red.', 'A1', 4),
  ('00000000-0000-4000-a000-00006599a2d1', 'das Ei', 'البيضة', 'egg', 'l''œuf', 'das', 'die Eier', 'noun', 'Ich esse ein Ei zum Frühstück.', 'I eat an egg for breakfast.', 'A1', 5),
  ('00000000-0000-4000-a000-00006599a2d1', 'das Obst', 'الفاكهة', 'fruit', 'les fruits', 'das', NULL, 'noun', 'Obst ist gesund.', 'Fruit is healthy.', 'A1', 6),
  ('00000000-0000-4000-a000-00006599a2d1', 'das Gemüse', 'الخضروات', 'vegetables', 'les légumes', 'das', NULL, 'noun', 'Ich kaufe Gemüse auf dem Markt.', 'I buy vegetables at the market.', 'A1', 7),
  ('00000000-0000-4000-a000-00006599a2d1', 'kochen', 'يطبخ', 'to cook', 'cuisiner', NULL, NULL, 'verb', 'Meine Mutter kocht gut.', 'My mother cooks well.', 'A1', 8),
  ('00000000-0000-4000-a000-00006599a2d1', 'der Fisch', 'السمك', 'fish', 'le poisson', 'der', 'die Fische', 'noun', 'Der Fisch ist frisch.', 'The fish is fresh.', 'A1', 9),
  ('00000000-0000-4000-a000-00006599a2d1', 'das Fleisch', 'اللحم', 'meat', 'la viande', 'das', NULL, 'noun', 'Ich esse nicht viel Fleisch.', 'I do not eat much meat.', 'A1', 10),
  ('00000000-0000-4000-a000-00006599a2d1', 'Hallo', 'مرحباً', 'hello', 'bonjour', NULL, NULL, 'interjection', 'Hallo, wie geht es dir?', 'Hello, how are you?', 'A1', 11),
  ('00000000-0000-4000-a000-00006599a2d1', 'Guten Morgen', 'صباح الخير', 'good morning', 'bonjour (le matin)', NULL, NULL, 'phrase', 'Guten Morgen, Herr Müller.', 'Good morning, Mr. Müller.', 'A1', 12),
  ('00000000-0000-4000-a000-00006599a2d1', 'Guten Tag', 'نهارك سعيد', 'good day', 'bonjour (l''après-midi)', NULL, NULL, 'phrase', 'Guten Tag, Frau Schmidt.', 'Good day, Mrs. Schmidt.', 'A1', 13),
  ('00000000-0000-4000-a000-00006599a2d1', 'Tschüss', 'مع السلامة', 'bye', 'au revoir / salut', NULL, NULL, 'interjection', 'Tschüss, bis morgen!', 'Bye, see you tomorrow!', 'A1', 14),
  ('00000000-0000-4000-a000-00006599a2d1', 'der Name', 'الاسم', 'name', 'le nom', 'der', 'die Namen', 'noun', 'Mein Name ist Anna.', 'My name is Anna.', 'A1', 15),
  ('00000000-0000-4000-a000-00006599a2d1', 'wie', 'كيف', 'how', 'comment', NULL, NULL, 'adverb', 'Wie heißt du?', 'What is your name?', 'A1', 16),
  ('00000000-0000-4000-a000-00006599a2d1', 'freuen', 'يسر', 'to be pleased', 'se réjouir', NULL, NULL, 'verb', 'Ich freue mich, dich kennenzulernen.', 'I am pleased to meet you.', 'A1', 17),
  ('00000000-0000-4000-a000-00006599a2d1', 'Willkommen', 'أهلاً وسهلاً', 'welcome', 'bienvenue', NULL, NULL, 'interjection', 'Willkommen in Deutschland!', 'Welcome to Germany!', 'A1', 18),
  ('00000000-0000-4000-a000-00006599a2d1', 'die Familie', 'العائلة', 'family', 'la famille', 'die', 'die Familien', 'noun', 'Meine Familie ist groß.', 'My family is big.', 'A1', 19),
  ('00000000-0000-4000-a000-00006599a2d1', 'der Vater', 'الأب', 'father', 'le père', 'der', 'die Väter', 'noun', 'Mein Vater ist Ingenieur.', 'My father is an engineer.', 'A1', 20),
  ('00000000-0000-4000-a000-00006599a2d1', 'die Mutter', 'الأم', 'mother', 'la mère', 'die', 'die Mütter', 'noun', 'Meine Mutter kocht gut.', 'My mother cooks well.', 'A1', 21),
  ('00000000-0000-4000-a000-00006599a2d1', 'der Bruder', 'الأخ', 'brother', 'le frère', 'der', 'die Brüder', 'noun', 'Mein Bruder ist 15 Jahre alt.', 'My brother is 15 years old.', 'A1', 22),
  ('00000000-0000-4000-a000-00006599a2d1', 'die Schwester', 'الأخت', 'sister', 'la sœur', 'die', 'die Schwestern', 'noun', 'Meine Schwester studiert Medizin.', 'My sister studies medicine.', 'A1', 23),
  ('00000000-0000-4000-a000-00006599a2d1', 'die Geschwister', 'الإخوة', 'siblings', 'les frères et sœurs', 'die', NULL, 'noun', 'Hast du Geschwister?', 'Do you have siblings?', 'A1', 24),
  ('00000000-0000-4000-a000-00006599a2d1', 'der Sohn', 'الابن', 'son', 'le fils', 'der', 'die Söhne', 'noun', 'Wir haben einen Sohn.', 'We have a son.', 'A1', 25),
  ('00000000-0000-4000-a000-00006599a2d1', 'die Tochter', 'الابنة', 'daughter', 'la fille', 'die', 'die Töchter', 'noun', 'Meine Tochter geht zur Schule.', 'My daughter goes to school.', 'A1', 26),
  ('00000000-0000-4000-a000-00006599a2d1', 'die Großeltern', 'الأجداد', 'grandparents', 'les grands-parents', 'die', NULL, 'noun', 'Meine Großeltern wohnen auf dem Land.', 'My grandparents live in the countryside.', 'A1', 27),
  ('00000000-0000-4000-a000-00006599a2d1', 'verheiratet', 'متزوج', 'married', 'marié(e)', NULL, NULL, 'adjective', 'Meine Eltern sind verheiratet.', 'My parents are married.', 'A1', 28),
  ('00000000-0000-4000-a000-00006599a2d1', 'das Haus', 'البيت', 'house', 'la maison', 'das', 'die Häuser', 'noun', 'Das Haus ist groß.', 'The house is big.', 'A1', 29),
  ('00000000-0000-4000-a000-00006599a2d1', 'die Wohnung', 'الشقة', 'apartment', 'l''appartement', 'die', 'die Wohnungen', 'noun', 'Meine Wohnung hat drei Zimmer.', 'My apartment has three rooms.', 'A1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006599a2d1', 'möchten — Höfliche Bitten (Polite Requests) / möchten — الطلبات المهذبة', '"Möchten" is the subjunctive form of "mögen" and means "would like". It is the most important word for polite requests in German. Conjugation: ich möchte, du möchtest, er/sie/es möchte, wir möchten, ihr möchtet, sie/Sie möchten. It is always followed by an infinitive at the end, or a noun.', '[{"rule":"möchten + noun: Ich möchte einen Kaffee.","note":"Used like \"I would like a...\""},{"rule":"möchten + infinitive (at end): Ich möchte zahlen.","note":"Verb goes to the end"},{"rule":"ich möchte, du möchtest, er/sie/es möchte, wir möchten","note":"Similar to modal verb conjugation"}]', '[{"german":"Ich möchte einen Kaffee, bitte.","arabic":"أود فنجان قهوة من فضلك.","english":"I would like a coffee, please."},{"german":"Wir möchten zahlen, bitte.","arabic":"نود الدفع من فضلك.","english":"We would like to pay, please."},{"german":"Möchtest du etwas essen?","arabic":"هل ترغب في أكل شيء؟","english":"Would you like something to eat?"}]', '[{"mistake":"Ich will einen Kaffee (too direct)","correction":"Ich möchte einen Kaffee.","explanation":"\"Ich will\" is too direct in restaurants. Use \"möchten\" for polite requests."},{"mistake":"Ich möchte ein Wasser (wrong article in accusative)","correction":"Ich möchte ein Wasser / Ich möchte einen Kaffee.","explanation":"\"Kaffee\" is masculine → \"einen\" (Akkusativ). \"Wasser\" is neuter → \"ein\"."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006599a2d1', 'multiple_choice', 'Which German word matches "bread"?', '["der Käse","der Apfel","die Milch","das Brot"]', 'das Brot', '"bread" = "das Brot" in German. Article: das Plural: die Brote', 1, 1),
  ('00000000-0000-4000-a000-00006599a2d1', 'multiple_choice', 'Which German word matches "milk"?', '["das Brot","die Milch","der Käse","der Apfel"]', 'die Milch', '"milk" = "die Milch" in German. Article: die ', 1, 2),
  ('00000000-0000-4000-a000-00006599a2d1', 'multiple_choice', 'Which German word matches "cheese"?', '["das Ei","der Apfel","die Milch","das Brot"]', 'der Käse', '"cheese" = "der Käse" in German. Article: der ', 1, 3),
  ('00000000-0000-4000-a000-00006599a2d1', 'multiple_choice', 'Which German word matches "apple"?', '["das Brot","der Apfel","das Ei","der Käse"]', 'der Apfel', '"apple" = "der Apfel" in German. Article: der Plural: die Äpfel', 1, 4),
  ('00000000-0000-4000-a000-00006599a2d1', 'multiple_choice', 'Which German word matches "egg"?', '["der Käse","die Milch","das Brot","der Apfel"]', 'das Ei', '"egg" = "das Ei" in German. Article: das Plural: die Eier', 1, 5),
  ('00000000-0000-4000-a000-00006599a2d1', 'fill_gap', 'Complete the sentence: Ich ___ gern über Restaurant. (sprechen)', '["spreche","sprichst","spricht","sprechen"]', 'spreche', 'ich spreche gern = I like to speak. Stem: sprech- + e.', 2, 6),
  ('00000000-0000-4000-a000-00006599a2d1', 'translation', 'Translate to German: "I am learning about Restaurant."', '["Ich lerne über Restaurant.","Ich lerne Restaurant.","Lerne ich Restaurant."]', 'Ich lerne über Restaurant.', '"Ich lerne über..." = "I am learning about..."', 2, 7),
  ('00000000-0000-4000-a000-00006599a2d1', 'matching', 'Match: Which word pairs are correct?', '["das Brot - bread, die Milch - milk"]', 'Matched correctly', 'Each German word has a unique English equivalent.', 2, 8);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-00006599a2d1', 'multiple_choice', 'What does "das Brot" mean in English?', '["bread","to run","beautiful","yesterday"]', 'bread', 1, 1),
  ('00000000-0000-4000-a000-00006599a2d1', 'multiple_choice', 'What is the correct article for "die Milch"?', '["der","die","das","den"]', 'die', 1, 2),
  ('00000000-0000-4000-a000-00006599a2d1', 'true_false', 'The word "der Käse" is related to Restaurant.', '["True","False"]', 'True', 1, 3),
  ('00000000-0000-4000-a000-00006599a2d1', 'multiple_choice', 'Which sentence correctly uses mochten?', '["Ich möchte einen Kaffee, bitte.","Wir möchten zahlen, bitte.","Möchtest du etwas essen?"]', 'Ich möchte einen Kaffee, bitte.', 2, 4),
  ('00000000-0000-4000-a000-00006599a2d1', 'true_false', 'German word order puts the verb in second position in main clauses.', '["True","False"]', 'True', 1, 5),
  ('00000000-0000-4000-a000-00006599a2d1', 'fill_blank', 'Complete: Ich ___ (apple) Deutsch.', '["der Apfel","lernt","lernst","lernen"]', 'lerne', 2, 6),
  ('00000000-0000-4000-a000-00006599a2d1', 'multiple_choice', 'What is the German word for "egg"?', '["das Ei","das Obst","das Gemüse","kochen"]', 'das Ei', 1, 7),
  ('00000000-0000-4000-a000-00006599a2d1', 'true_false', 'In German, ALL nouns are always capitalised.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-00006599a2d1', 'multiple_choice', 'How do you say "please" in a restaurant in Germany?', '["Bitte","Danke","Tschüss","Hallo"]', 'Bitte', 1, 9),
  ('00000000-0000-4000-a000-00006599a2d1', 'fill_blank', 'Wo ___ (to live) du?', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 2, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, french_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-00006599a2d1', 'Ich möchte bitte bestellen.', 'I would like to order, please.', 'أريد أن أطلب من فضلك.', NULL, 'Used in Essen und Einkaufen', 'formal', false, 1),
  ('00000000-0000-4000-a000-00006599a2d1', 'Was empfehlen Sie?', 'What do you recommend?', 'ماذا تنصحون؟', NULL, 'Used in Essen und Einkaufen', 'formal', false, 2),
  ('00000000-0000-4000-a000-00006599a2d1', 'Die Rechnung, bitte!', 'The bill, please!', 'الفاتورة من فضلك!', NULL, 'Used in Essen und Einkaufen', 'formal', false, 3),
  ('00000000-0000-4000-a000-00006599a2d1', 'Es hat sehr gut geschmeckt!', 'It was delicious!', 'كان لذيذاً جداً!', NULL, 'Used in Essen und Einkaufen', 'formal', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-00006599a2d1', 'das das Brot (die Brote)', 'bread — الخبز', 'noun', 'vocabulary', 1),
  ('00000000-0000-4000-a000-00006599a2d1', 'die die Milch', 'milk — الحليب', 'noun', 'vocabulary', 2),
  ('00000000-0000-4000-a000-00006599a2d1', 'der der Käse', 'cheese — الجبن', 'noun', 'vocabulary', 3),
  ('00000000-0000-4000-a000-00006599a2d1', 'der der Apfel (die Äpfel)', 'apple — التفاح', 'noun', 'vocabulary', 4),
  ('00000000-0000-4000-a000-00006599a2d1', 'das das Ei (die Eier)', 'egg — البيضة', 'noun', 'vocabulary', 5),
  ('00000000-0000-4000-a000-00006599a2d1', 'das das Obst', 'fruit — الفاكهة', 'noun', 'vocabulary', 6),
  ('00000000-0000-4000-a000-00006599a2d1', 'das das Gemüse', 'vegetables — الخضروات', 'noun', 'vocabulary', 7),
  ('00000000-0000-4000-a000-00006599a2d1', 'kochen', 'to cook — يطبخ', 'verb', 'vocabulary', 8),
  ('00000000-0000-4000-a000-00006599a2d1', 'der der Fisch (die Fische)', 'fish — السمك', 'noun', 'vocabulary', 9),
  ('00000000-0000-4000-a000-00006599a2d1', 'das das Fleisch', 'meat — اللحم', 'noun', 'vocabulary', 10),
  ('00000000-0000-4000-a000-00006599a2d1', 'Hallo', 'hello — مرحباً', 'interjection', 'vocabulary', 11),
  ('00000000-0000-4000-a000-00006599a2d1', 'Guten Morgen', 'good morning — صباح الخير', 'phrase', 'vocabulary', 12),
  ('00000000-0000-4000-a000-00006599a2d1', 'Guten Tag', 'good day — نهارك سعيد', 'phrase', 'vocabulary', 13),
  ('00000000-0000-4000-a000-00006599a2d1', 'Tschüss', 'bye — مع السلامة', 'interjection', 'vocabulary', 14),
  ('00000000-0000-4000-a000-00006599a2d1', 'der der Name (die Namen)', 'name — الاسم', 'noun', 'vocabulary', 15),
  ('00000000-0000-4000-a000-00006599a2d1', 'Ich möchte einen Kaffee, bitte.', 'I would like a coffee, please.', 'möchten — Höfliche Bitten (Polite Requests)', 'grammar', 16),
  ('00000000-0000-4000-a000-00006599a2d1', 'Wir möchten zahlen, bitte.', 'We would like to pay, please.', 'möchten — Höfliche Bitten (Polite Requests)', 'grammar', 17),
  ('00000000-0000-4000-a000-00006599a2d1', 'Möchtest du etwas essen?', 'Would you like something to eat?', 'möchten — Höfliche Bitten (Polite Requests)', 'grammar', 18);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, french_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-00006599a2d1', 'Im Restaurant — Leseübung', 'Heute gehe ich einkaufen. Ich brauche Lebensmittel. Ich gehe zum Supermarkt. Ich kaufe Brot, Milch, Käse und Eier. Auch Obst und Gemüse brauche ich. Die Äpfel sehen gut aus. Ich nehme fünf Äpfel. Der Käse kostet 3 Euro. Alles zusammen kostet 15 Euro. Ich bezahle an der Kasse. Die Verkäuferin ist freundlich. Dann gehe ich nach Hause.', 'Today I go shopping. I need groceries. I go to the supermarket. I buy bread, milk, cheese and eggs. I also need fruit and vegetables. The apples look good. I take five apples. The cheese costs 3 euros. Everything together costs 15 euros. I pay at the checkout. The saleswoman is friendly. Then I go home.', 'اليوم أذهب للتسوق. أحتاج مواد غذائية. أذهب إلى السوبرماركت. أشتري خبزاً وحليباً وجبناً وبيضاً. أحتاج أيضاً فاكهة وخضروات. التفاح يبدو جيداً. آخذ خمس تفاحات. الجبن يكلف 3 يورو. المجموع الكلي 15 يورو. أدفع عند الصندوق. البائعة ودودة. ثم أعود إلى المنزل.', NULL, 57, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, french_translation, duration_seconds, speaker_count, scenario) values
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

[Kellner]: فوراً. شهية طيبة!', '[Kellner]: 

[Gast]: 

[Kellner]: 

[Gast]: 

[Kellner]: ', 60, 2, 'Essen und Einkaufen');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-00006599a2d1', '🔊 Sprechen: Im Restaurant', 'Roleplay: You are in a Hamburg office. Introduce yourself and talk about Restaurant. Your partner (AI) will respond naturally.', 'Restaurant', ARRAY['Use complete sentences — not single words','Pause between phrases, not between words','Don''t translate from Arabic word-for-word']::text[], ARRAY['das Brot','die Milch','der Käse','der Apfel','das Ei','das Obst','das Gemüse','kochen']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-00006599a2d1', '✏️ Schreiben: Im Restaurant', 'Write an email to a German friend about "Restaurant". Tell them what you learned, what you found interesting, and ask two questions about their experience with this topic. Use at least 8 vocabulary words from this lesson. Sign off naturally ("Viele Grüße", "Liebe Grüße").', ARRAY['Start with "Hallo" or "Liebe/r"','Keep sentences short (Subject-Verb-Object)','End with a friendly farewell']::text[], ARRAY['das Brot','die Milch','der Käse','der Apfel','das Ei','das Obst','das Gemüse','kochen']::text[], ARRAY['Sentence structure','Vocabulary usage']::text[], 50, 100, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00006599a2d1', 'Im Restaurant — Roleplay', 'Restaurant', 'Student', 'Teacher', 'Practice conversation about Restaurant', 'Hallo! Lass uns über dieses Thema sprechen.', 'beginner', 1, ARRAY['das Brot','die Milch','der Käse','der Apfel','das Ei','das Obst','das Gemüse','kochen']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00006599a2d1', 'Im Restaurant — Advanced Roleplay', 'Restaurant', 'Customer', 'Assistant', 'Extended conversation about Restaurant', 'Guten Tag! Wie kann ich Ihnen helfen?', 'beginner', 2, ARRAY['das Brot','die Milch','der Käse','der Apfel','das Ei','das Obst','das Gemüse','kochen']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-00006599a2d1', 'Im Restaurant — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Im Restaurant".', 'Creative practice for Restaurant', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-00006599a2d1', '📚 Hausaufgabe: Im Restaurant', 'Complete these tasks to reinforce "Im Restaurant".', 'mixed', '[{"description":"Create 10 flashcards from this lesson''s vocabulary — write German on one side, Arabic on the other. Test yourself 3 times."},{"description":"Write 6 sentences about Restaurant: 2 statements, 2 questions, 2 negations — all using mochten."},{"description":"Record yourself reading the dialogue aloud. Listen to the recording and note 3 things to improve."},{"description":"Find 3 real German websites, videos, or articles about Restaurant. Note 5 new words you discovered."}]', 50, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-00006599a2d1', '🎯 Great work! In this lesson you learned 142 new words about Restaurant. You practiced mochten — an important grammar topic for A1 level. You read a text, listened to a dialogue, and practiced speaking and writing. Keep going!', '["142 vocabulary items about Restaurant","mochten — grammar explanation and practice","Reading comprehension: text about Restaurant","Listening comprehension: dialogue about Restaurant","Speaking practice: roleplay/discussion about Restaurant","Writing task: text about Restaurant"]', '[{"title":"Im Restaurant Review","summary":"mochten — the main grammar focus. Focus on understanding when to use this structure and forming basic sentences."}]', ARRAY['das Brot (bread)','die Milch (milk)','der Käse (cheese)','der Apfel (apple)','das Ei (egg)']::text[], ARRAY['Don''t translate from Arabic word-for-word — German has different sentence structure','Learn every noun with its article: NEVER learn "Tisch" alone, always "der Tisch"','Verb always in position 2 in main clauses']::text[], ARRAY['Practice 15-20 minutes daily — consistency beats intensity','Speak out loud: German pronunciation needs muscle memory','Use the new vocabulary within 24 hours or you''ll forget it','Watch German YouTube videos about Restaurant for authentic input']::text[]);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006599a2d1', 'Pronunciation: German sounds for "food"', 'In German, vowels are pure — unlike English diphthongs. The "ch" sound after a, o, u is guttural (like Arabic خ). After e, i, ä, ö, ü it''s soft (like English "huge" without the "u").

Common mistake for Arabic speakers: Arabic speakers tend to over-emphasise consonants. German flows — connect words smoothly (e.g., "Ich habe" becomes /ɪçabə/ not /ɪç ˈhaːbə/).', '[]', '[{"german":"das Brot","arabic":"","english":"","phonetic":""},{"german":"die Milch","arabic":"","english":"","phonetic":""},{"german":"der Käse","arabic":"","english":"","phonetic":""},{"german":"der Apfel","arabic":"","english":"","phonetic":""}]', '[]', 10);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006599a2d1', 'translation', 'Translate to German: "I use the word "bread" in a sentence about Restaurant."', '[]', 'Ich kaufe ein Brot.', 'Use das  "das Brot" with the correct mochten form.', 1, 40);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006599a2d1', 'translation', 'Translate to German: "I use the word "milk" in a sentence about Restaurant."', '[]', 'Die Milch ist frisch.', 'Use die  "die Milch" with the correct mochten form.', 1, 41);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006599a2d1', 'translation', 'Translate to German: "I use the word "cheese" in a sentence about Restaurant."', '[]', 'Der Käse schmeckt gut.', 'Use der  "der Käse" with the correct mochten form.', 1, 42);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006599a2d1', 'Culture: 🇩🇪 Deutsche Kultur: Restaurant', 'In Germany, Restaurant is approached with typical German directness and efficiency. Germans value clarity over small talk. When discussing Restaurant, expect honest feedback and straightforward questions. This is not rudeness — it''s cultural. Arabic speakers often find this too direct at first, but you''ll appreciate it once you get used to it.

في ألمانيا، يتم التعامل مع Restaurant بوضوح وكفاءة. الألمان يقدرون الوضوح أكثر من المجاملات. لا تعتبر هذه وقاحة - إنها ثقافة مختلفة.', '["Tip: Always use \"Sie\" (formal) with strangers and colleagues","Tip: Germans appreciate punctuality — arrive 5 minutes early","Tip: Direct feedback is a sign of respect, not criticism","Tip: Prepare factual arguments, not emotional appeals"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006599a2d1', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Using \"der\" for all food nouns","correction":"Learn article + noun as one unit for every food word","explanation":"Arabic food words don''t have inherent gender."},{"mistake":"Using the wrong article (der/die/das) for nouns","correction":"Learn each noun with its article as one piece","explanation":"Arabic has no articles for nouns without gender connection"}]', 30);

  -- Lesson 5: Mengen und Preise (L-A1-04-05)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-00006599a2d2', '00000000-0000-4000-a000-000039b4d361', 'Mengen und Preise', 'Learn quantities, weights, and how to talk about prices.', 'Quantities & Prices', 'vocabulary', '["Understand and use 142 key vocabulary words about Quantities & Prices","Apply present_tense correctly in sentences","Read and comprehend a text about Quantities & Prices","Listen and understand a natural dialogue about Quantities & Prices","Speak about Quantities & Prices with confidence","Write a short text about Quantities & Prices using new vocabulary"]', 25, 5, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, french_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-00006599a2d2', 'das Brot', 'الخبز', 'bread', 'le pain', 'das', 'die Brote', 'noun', 'Ich kaufe ein Brot.', 'I buy a loaf of bread.', 'A1', 1),
  ('00000000-0000-4000-a000-00006599a2d2', 'die Milch', 'الحليب', 'milk', 'le lait', 'die', NULL, 'noun', 'Die Milch ist frisch.', 'The milk is fresh.', 'A1', 2),
  ('00000000-0000-4000-a000-00006599a2d2', 'der Käse', 'الجبن', 'cheese', 'le fromage', 'der', NULL, 'noun', 'Der Käse schmeckt gut.', 'The cheese tastes good.', 'A1', 3),
  ('00000000-0000-4000-a000-00006599a2d2', 'der Apfel', 'التفاح', 'apple', 'la pomme', 'der', 'die Äpfel', 'noun', 'Der Apfel ist rot.', 'The apple is red.', 'A1', 4),
  ('00000000-0000-4000-a000-00006599a2d2', 'das Ei', 'البيضة', 'egg', 'l''œuf', 'das', 'die Eier', 'noun', 'Ich esse ein Ei zum Frühstück.', 'I eat an egg for breakfast.', 'A1', 5),
  ('00000000-0000-4000-a000-00006599a2d2', 'das Obst', 'الفاكهة', 'fruit', 'les fruits', 'das', NULL, 'noun', 'Obst ist gesund.', 'Fruit is healthy.', 'A1', 6),
  ('00000000-0000-4000-a000-00006599a2d2', 'das Gemüse', 'الخضروات', 'vegetables', 'les légumes', 'das', NULL, 'noun', 'Ich kaufe Gemüse auf dem Markt.', 'I buy vegetables at the market.', 'A1', 7),
  ('00000000-0000-4000-a000-00006599a2d2', 'kochen', 'يطبخ', 'to cook', 'cuisiner', NULL, NULL, 'verb', 'Meine Mutter kocht gut.', 'My mother cooks well.', 'A1', 8),
  ('00000000-0000-4000-a000-00006599a2d2', 'der Fisch', 'السمك', 'fish', 'le poisson', 'der', 'die Fische', 'noun', 'Der Fisch ist frisch.', 'The fish is fresh.', 'A1', 9),
  ('00000000-0000-4000-a000-00006599a2d2', 'das Fleisch', 'اللحم', 'meat', 'la viande', 'das', NULL, 'noun', 'Ich esse nicht viel Fleisch.', 'I do not eat much meat.', 'A1', 10),
  ('00000000-0000-4000-a000-00006599a2d2', 'Hallo', 'مرحباً', 'hello', 'bonjour', NULL, NULL, 'interjection', 'Hallo, wie geht es dir?', 'Hello, how are you?', 'A1', 11),
  ('00000000-0000-4000-a000-00006599a2d2', 'Guten Morgen', 'صباح الخير', 'good morning', 'bonjour (le matin)', NULL, NULL, 'phrase', 'Guten Morgen, Herr Müller.', 'Good morning, Mr. Müller.', 'A1', 12),
  ('00000000-0000-4000-a000-00006599a2d2', 'Guten Tag', 'نهارك سعيد', 'good day', 'bonjour (l''après-midi)', NULL, NULL, 'phrase', 'Guten Tag, Frau Schmidt.', 'Good day, Mrs. Schmidt.', 'A1', 13),
  ('00000000-0000-4000-a000-00006599a2d2', 'Tschüss', 'مع السلامة', 'bye', 'au revoir / salut', NULL, NULL, 'interjection', 'Tschüss, bis morgen!', 'Bye, see you tomorrow!', 'A1', 14),
  ('00000000-0000-4000-a000-00006599a2d2', 'der Name', 'الاسم', 'name', 'le nom', 'der', 'die Namen', 'noun', 'Mein Name ist Anna.', 'My name is Anna.', 'A1', 15),
  ('00000000-0000-4000-a000-00006599a2d2', 'wie', 'كيف', 'how', 'comment', NULL, NULL, 'adverb', 'Wie heißt du?', 'What is your name?', 'A1', 16),
  ('00000000-0000-4000-a000-00006599a2d2', 'freuen', 'يسر', 'to be pleased', 'se réjouir', NULL, NULL, 'verb', 'Ich freue mich, dich kennenzulernen.', 'I am pleased to meet you.', 'A1', 17),
  ('00000000-0000-4000-a000-00006599a2d2', 'Willkommen', 'أهلاً وسهلاً', 'welcome', 'bienvenue', NULL, NULL, 'interjection', 'Willkommen in Deutschland!', 'Welcome to Germany!', 'A1', 18),
  ('00000000-0000-4000-a000-00006599a2d2', 'die Familie', 'العائلة', 'family', 'la famille', 'die', 'die Familien', 'noun', 'Meine Familie ist groß.', 'My family is big.', 'A1', 19),
  ('00000000-0000-4000-a000-00006599a2d2', 'der Vater', 'الأب', 'father', 'le père', 'der', 'die Väter', 'noun', 'Mein Vater ist Ingenieur.', 'My father is an engineer.', 'A1', 20),
  ('00000000-0000-4000-a000-00006599a2d2', 'die Mutter', 'الأم', 'mother', 'la mère', 'die', 'die Mütter', 'noun', 'Meine Mutter kocht gut.', 'My mother cooks well.', 'A1', 21),
  ('00000000-0000-4000-a000-00006599a2d2', 'der Bruder', 'الأخ', 'brother', 'le frère', 'der', 'die Brüder', 'noun', 'Mein Bruder ist 15 Jahre alt.', 'My brother is 15 years old.', 'A1', 22),
  ('00000000-0000-4000-a000-00006599a2d2', 'die Schwester', 'الأخت', 'sister', 'la sœur', 'die', 'die Schwestern', 'noun', 'Meine Schwester studiert Medizin.', 'My sister studies medicine.', 'A1', 23),
  ('00000000-0000-4000-a000-00006599a2d2', 'die Geschwister', 'الإخوة', 'siblings', 'les frères et sœurs', 'die', NULL, 'noun', 'Hast du Geschwister?', 'Do you have siblings?', 'A1', 24),
  ('00000000-0000-4000-a000-00006599a2d2', 'der Sohn', 'الابن', 'son', 'le fils', 'der', 'die Söhne', 'noun', 'Wir haben einen Sohn.', 'We have a son.', 'A1', 25),
  ('00000000-0000-4000-a000-00006599a2d2', 'die Tochter', 'الابنة', 'daughter', 'la fille', 'die', 'die Töchter', 'noun', 'Meine Tochter geht zur Schule.', 'My daughter goes to school.', 'A1', 26),
  ('00000000-0000-4000-a000-00006599a2d2', 'die Großeltern', 'الأجداد', 'grandparents', 'les grands-parents', 'die', NULL, 'noun', 'Meine Großeltern wohnen auf dem Land.', 'My grandparents live in the countryside.', 'A1', 27),
  ('00000000-0000-4000-a000-00006599a2d2', 'verheiratet', 'متزوج', 'married', 'marié(e)', NULL, NULL, 'adjective', 'Meine Eltern sind verheiratet.', 'My parents are married.', 'A1', 28),
  ('00000000-0000-4000-a000-00006599a2d2', 'das Haus', 'البيت', 'house', 'la maison', 'das', 'die Häuser', 'noun', 'Das Haus ist groß.', 'The house is big.', 'A1', 29),
  ('00000000-0000-4000-a000-00006599a2d2', 'die Wohnung', 'الشقة', 'apartment', 'l''appartement', 'die', 'die Wohnungen', 'noun', 'Meine Wohnung hat drei Zimmer.', 'My apartment has three rooms.', 'A1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006599a2d2', 'Präsens der regelmäßigen Verben (Present Tense) / المضارع للأفعال المنتظمة', 'In German, regular verbs follow a consistent pattern. The infinitive ends in -en. Remove the -en and add the personal endings: ich -e, du -st, er/sie/es -t, wir -en, ihr -t, sie/Sie -en. For most Arabic speakers, this is easier than Arabic verb conjugation because German has fewer forms.', '[{"rule":"ich: stem + e","note":"Ich lerne, ich wohne, ich arbeite"},{"rule":"du: stem + st","note":"Du lernst, du wohnst, du arbeitest"},{"rule":"er/sie/es: stem + t","note":"Er lernt, sie wohnt, es arbeitet"},{"rule":"wir: stem + en","note":"Wir lernen, wir wohnen, wir arbeiten"},{"rule":"ihr: stem + t","note":"Ihr lernt, ihr wohnt, ihr arbeitet"},{"rule":"sie/Sie: stem + en","note":"Sie lernen, Sie wohnen"}]', '[{"german":"Ich lerne Deutsch.","arabic":"أنا أتعلم الألمانية.","english":"I am learning German."},{"german":"Du wohnst in Berlin.","arabic":"أنت تسكن في برلين.","english":"You live in Berlin."},{"german":"Er arbeitet bei Siemens.","arabic":"هو يعمل في سيمنز.","english":"He works at Siemens."}]', '[{"mistake":"Ich lernen Deutsch","correction":"Ich lerne Deutsch","explanation":"After \"ich\" we use the stem + e, not the infinitive."},{"mistake":"Er lerne Deutsch","correction":"Er lernt Deutsch","explanation":"After \"er/sie/es\" we add -t, not -e."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006599a2d2', 'multiple_choice', 'Which German word matches "bread"?', '["das Brot","der Apfel","die Milch","das Ei"]', 'das Brot', '"bread" = "das Brot" in German. Article: das Plural: die Brote', 1, 1),
  ('00000000-0000-4000-a000-00006599a2d2', 'multiple_choice', 'Which German word matches "milk"?', '["die Milch","das Ei","das Brot","der Käse"]', 'die Milch', '"milk" = "die Milch" in German. Article: die ', 1, 2),
  ('00000000-0000-4000-a000-00006599a2d2', 'multiple_choice', 'Which German word matches "cheese"?', '["der Käse","das Brot","das Ei","die Milch"]', 'der Käse', '"cheese" = "der Käse" in German. Article: der ', 1, 3),
  ('00000000-0000-4000-a000-00006599a2d2', 'multiple_choice', 'Which German word matches "apple"?', '["der Käse","die Milch","das Brot","das Ei"]', 'der Apfel', '"apple" = "der Apfel" in German. Article: der Plural: die Äpfel', 1, 4),
  ('00000000-0000-4000-a000-00006599a2d2', 'multiple_choice', 'Which German word matches "egg"?', '["die Milch","der Käse","das Brot","der Apfel"]', 'das Ei', '"egg" = "das Ei" in German. Article: das Plural: die Eier', 1, 5),
  ('00000000-0000-4000-a000-00006599a2d2', 'fill_gap', 'Complete the sentence: Ich ___ gern über Quantities & Prices. (sprechen)', '["spreche","sprichst","spricht","sprechen"]', 'spreche', 'ich spreche gern = I like to speak. Stem: sprech- + e.', 2, 6),
  ('00000000-0000-4000-a000-00006599a2d2', 'translation', 'Translate to German: "I am learning about Quantities & Prices."', '["Ich lerne über Quantities & Prices.","Ich lerne Quantities & Prices.","Lerne ich Quantities & Prices."]', 'Ich lerne über Quantities & Prices.', '"Ich lerne über..." = "I am learning about..."', 2, 7),
  ('00000000-0000-4000-a000-00006599a2d2', 'matching', 'Match: Which word pairs are correct?', '["das Brot - bread, die Milch - milk"]', 'Matched correctly', 'Each German word has a unique English equivalent.', 2, 8);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-00006599a2d2', 'multiple_choice', 'What does "das Brot" mean in English?', '["bread","to run","beautiful","yesterday"]', 'bread', 1, 1),
  ('00000000-0000-4000-a000-00006599a2d2', 'multiple_choice', 'What is the correct article for "die Milch"?', '["der","die","das","den"]', 'die', 1, 2),
  ('00000000-0000-4000-a000-00006599a2d2', 'true_false', 'The word "der Käse" is related to Quantities & Prices.', '["True","False"]', 'True', 1, 3),
  ('00000000-0000-4000-a000-00006599a2d2', 'multiple_choice', 'Which sentence correctly uses present_tense?', '["Ich lerne Deutsch.","Du wohnst in Berlin.","Er arbeitet bei Siemens."]', 'Ich lerne Deutsch.', 2, 4),
  ('00000000-0000-4000-a000-00006599a2d2', 'true_false', 'German word order puts the verb in second position in main clauses.', '["True","False"]', 'True', 1, 5),
  ('00000000-0000-4000-a000-00006599a2d2', 'fill_blank', 'Complete: Ich ___ (apple) Deutsch.', '["der Apfel","lernt","lernst","lernen"]', 'lerne', 2, 6),
  ('00000000-0000-4000-a000-00006599a2d2', 'multiple_choice', 'What is the German word for "egg"?', '["das Ei","das Obst","das Gemüse","kochen"]', 'das Ei', 1, 7),
  ('00000000-0000-4000-a000-00006599a2d2', 'true_false', 'In German, ALL nouns are always capitalised.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-00006599a2d2', 'multiple_choice', 'How do you say "please" in a restaurant in Germany?', '["Bitte","Danke","Tschüss","Hallo"]', 'Bitte', 1, 9),
  ('00000000-0000-4000-a000-00006599a2d2', 'fill_blank', 'Wo ___ (to live) du?', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 2, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, french_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-00006599a2d2', 'Ich möchte bitte bestellen.', 'I would like to order, please.', 'أريد أن أطلب من فضلك.', NULL, 'Used in Essen und Einkaufen', 'formal', false, 1),
  ('00000000-0000-4000-a000-00006599a2d2', 'Was empfehlen Sie?', 'What do you recommend?', 'ماذا تنصحون؟', NULL, 'Used in Essen und Einkaufen', 'formal', false, 2),
  ('00000000-0000-4000-a000-00006599a2d2', 'Die Rechnung, bitte!', 'The bill, please!', 'الفاتورة من فضلك!', NULL, 'Used in Essen und Einkaufen', 'formal', false, 3),
  ('00000000-0000-4000-a000-00006599a2d2', 'Es hat sehr gut geschmeckt!', 'It was delicious!', 'كان لذيذاً جداً!', NULL, 'Used in Essen und Einkaufen', 'formal', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-00006599a2d2', 'das das Brot (die Brote)', 'bread — الخبز', 'noun', 'vocabulary', 1),
  ('00000000-0000-4000-a000-00006599a2d2', 'die die Milch', 'milk — الحليب', 'noun', 'vocabulary', 2),
  ('00000000-0000-4000-a000-00006599a2d2', 'der der Käse', 'cheese — الجبن', 'noun', 'vocabulary', 3),
  ('00000000-0000-4000-a000-00006599a2d2', 'der der Apfel (die Äpfel)', 'apple — التفاح', 'noun', 'vocabulary', 4),
  ('00000000-0000-4000-a000-00006599a2d2', 'das das Ei (die Eier)', 'egg — البيضة', 'noun', 'vocabulary', 5),
  ('00000000-0000-4000-a000-00006599a2d2', 'das das Obst', 'fruit — الفاكهة', 'noun', 'vocabulary', 6),
  ('00000000-0000-4000-a000-00006599a2d2', 'das das Gemüse', 'vegetables — الخضروات', 'noun', 'vocabulary', 7),
  ('00000000-0000-4000-a000-00006599a2d2', 'kochen', 'to cook — يطبخ', 'verb', 'vocabulary', 8),
  ('00000000-0000-4000-a000-00006599a2d2', 'der der Fisch (die Fische)', 'fish — السمك', 'noun', 'vocabulary', 9),
  ('00000000-0000-4000-a000-00006599a2d2', 'das das Fleisch', 'meat — اللحم', 'noun', 'vocabulary', 10),
  ('00000000-0000-4000-a000-00006599a2d2', 'Hallo', 'hello — مرحباً', 'interjection', 'vocabulary', 11),
  ('00000000-0000-4000-a000-00006599a2d2', 'Guten Morgen', 'good morning — صباح الخير', 'phrase', 'vocabulary', 12),
  ('00000000-0000-4000-a000-00006599a2d2', 'Guten Tag', 'good day — نهارك سعيد', 'phrase', 'vocabulary', 13),
  ('00000000-0000-4000-a000-00006599a2d2', 'Tschüss', 'bye — مع السلامة', 'interjection', 'vocabulary', 14),
  ('00000000-0000-4000-a000-00006599a2d2', 'der der Name (die Namen)', 'name — الاسم', 'noun', 'vocabulary', 15),
  ('00000000-0000-4000-a000-00006599a2d2', 'Ich lerne Deutsch.', 'I am learning German.', 'Präsens der regelmäßigen Verben (Present Tense)', 'grammar', 16),
  ('00000000-0000-4000-a000-00006599a2d2', 'Du wohnst in Berlin.', 'You live in Berlin.', 'Präsens der regelmäßigen Verben (Present Tense)', 'grammar', 17),
  ('00000000-0000-4000-a000-00006599a2d2', 'Er arbeitet bei Siemens.', 'He works at Siemens.', 'Präsens der regelmäßigen Verben (Present Tense)', 'grammar', 18);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, french_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-00006599a2d2', 'Mengen und Preise — Leseübung', 'Heute gehe ich einkaufen. Ich brauche Lebensmittel. Ich gehe zum Supermarkt. Ich kaufe Brot, Milch, Käse und Eier. Auch Obst und Gemüse brauche ich. Die Äpfel sehen gut aus. Ich nehme fünf Äpfel. Der Käse kostet 3 Euro. Alles zusammen kostet 15 Euro. Ich bezahle an der Kasse. Die Verkäuferin ist freundlich. Dann gehe ich nach Hause.', 'Today I go shopping. I need groceries. I go to the supermarket. I buy bread, milk, cheese and eggs. I also need fruit and vegetables. The apples look good. I take five apples. The cheese costs 3 euros. Everything together costs 15 euros. I pay at the checkout. The saleswoman is friendly. Then I go home.', 'اليوم أذهب للتسوق. أحتاج مواد غذائية. أذهب إلى السوبرماركت. أشتري خبزاً وحليباً وجبناً وبيضاً. أحتاج أيضاً فاكهة وخضروات. التفاح يبدو جيداً. آخذ خمس تفاحات. الجبن يكلف 3 يورو. المجموع الكلي 15 يورو. أدفع عند الصندوق. البائعة ودودة. ثم أعود إلى المنزل.', NULL, 57, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, french_translation, duration_seconds, speaker_count, scenario) values
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

[Kellner]: فوراً. شهية طيبة!', '[Kellner]: 

[Gast]: 

[Kellner]: 

[Gast]: 

[Kellner]: ', 60, 2, 'Essen und Einkaufen');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-00006599a2d2', '🔊 Sprechen: Mengen und Preise', 'Roleplay: You are in a Hamburg office. Introduce yourself and talk about Quantities & Prices. Your partner (AI) will respond naturally.', 'Quantities & Prices', ARRAY['Use complete sentences — not single words','Pause between phrases, not between words','Don''t translate from Arabic word-for-word']::text[], ARRAY['das Brot','die Milch','der Käse','der Apfel','das Ei','das Obst','das Gemüse','kochen']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-00006599a2d2', '✏️ Schreiben: Mengen und Preise', 'Write an email to a German friend about "Quantities & Prices". Tell them what you learned, what you found interesting, and ask two questions about their experience with this topic. Use at least 8 vocabulary words from this lesson. Sign off naturally ("Viele Grüße", "Liebe Grüße").', ARRAY['Start with "Hallo" or "Liebe/r"','Keep sentences short (Subject-Verb-Object)','End with a friendly farewell']::text[], ARRAY['das Brot','die Milch','der Käse','der Apfel','das Ei','das Obst','das Gemüse','kochen']::text[], ARRAY['Sentence structure','Vocabulary usage']::text[], 50, 100, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00006599a2d2', 'Mengen und Preise — Roleplay', 'Quantities & Prices', 'Student', 'Teacher', 'Practice conversation about Quantities & Prices', 'Hallo! Lass uns über dieses Thema sprechen.', 'beginner', 1, ARRAY['das Brot','die Milch','der Käse','der Apfel','das Ei','das Obst','das Gemüse','kochen']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00006599a2d2', 'Mengen und Preise — Advanced Roleplay', 'Quantities & Prices', 'Customer', 'Assistant', 'Extended conversation about Quantities & Prices', 'Guten Tag! Wie kann ich Ihnen helfen?', 'beginner', 2, ARRAY['das Brot','die Milch','der Käse','der Apfel','das Ei','das Obst','das Gemüse','kochen']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-00006599a2d2', 'Mengen und Preise — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Mengen und Preise".', 'Creative practice for Quantities & Prices', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-00006599a2d2', '📚 Hausaufgabe: Mengen und Preise', 'Complete these tasks to reinforce "Mengen und Preise".', 'mixed', '[{"description":"Create 10 flashcards from this lesson''s vocabulary — write German on one side, Arabic on the other. Test yourself 3 times."},{"description":"Write 6 sentences about Quantities & Prices: 2 statements, 2 questions, 2 negations — all using present_tense."},{"description":"Record yourself reading the dialogue aloud. Listen to the recording and note 3 things to improve."},{"description":"Find 3 real German websites, videos, or articles about Quantities & Prices. Note 5 new words you discovered."}]', 50, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-00006599a2d2', '🎯 Great work! In this lesson you learned 142 new words about Quantities & Prices. You practiced present_tense — an important grammar topic for A1 level. You read a text, listened to a dialogue, and practiced speaking and writing. Keep going!', '["142 vocabulary items about Quantities & Prices","present_tense — grammar explanation and practice","Reading comprehension: text about Quantities & Prices","Listening comprehension: dialogue about Quantities & Prices","Speaking practice: roleplay/discussion about Quantities & Prices","Writing task: text about Quantities & Prices"]', '[{"title":"Mengen und Preise Review","summary":"present_tense — the main grammar focus. Focus on understanding when to use this structure and forming basic sentences."}]', ARRAY['das Brot (bread)','die Milch (milk)','der Käse (cheese)','der Apfel (apple)','das Ei (egg)']::text[], ARRAY['Don''t translate from Arabic word-for-word — German has different sentence structure','Learn every noun with its article: NEVER learn "Tisch" alone, always "der Tisch"','Verb always in position 2 in main clauses']::text[], ARRAY['Practice 15-20 minutes daily — consistency beats intensity','Speak out loud: German pronunciation needs muscle memory','Use the new vocabulary within 24 hours or you''ll forget it','Watch German YouTube videos about Quantities & Prices for authentic input']::text[]);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006599a2d2', 'Pronunciation: German sounds for "food"', 'In German, vowels are pure — unlike English diphthongs. The "ch" sound after a, o, u is guttural (like Arabic خ). After e, i, ä, ö, ü it''s soft (like English "huge" without the "u").

Common mistake for Arabic speakers: Arabic speakers tend to over-emphasise consonants. German flows — connect words smoothly (e.g., "Ich habe" becomes /ɪçabə/ not /ɪç ˈhaːbə/).', '[]', '[{"german":"das Brot","arabic":"","english":"","phonetic":""},{"german":"die Milch","arabic":"","english":"","phonetic":""},{"german":"der Käse","arabic":"","english":"","phonetic":""},{"german":"der Apfel","arabic":"","english":"","phonetic":""}]', '[]', 10);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006599a2d2', 'translation', 'Translate to German: "I use the word "bread" in a sentence about Quantities & Prices."', '[]', 'Ich kaufe ein Brot.', 'Use das  "das Brot" with the correct present_tense form.', 1, 40);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006599a2d2', 'translation', 'Translate to German: "I use the word "milk" in a sentence about Quantities & Prices."', '[]', 'Die Milch ist frisch.', 'Use die  "die Milch" with the correct present_tense form.', 1, 41);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006599a2d2', 'translation', 'Translate to German: "I use the word "cheese" in a sentence about Quantities & Prices."', '[]', 'Der Käse schmeckt gut.', 'Use der  "der Käse" with the correct present_tense form.', 1, 42);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006599a2d2', 'Culture: 🇩🇪 Deutsche Kultur: Quantities & Prices', 'In Germany, Quantities & Prices is approached with typical German directness and efficiency. Germans value clarity over small talk. When discussing Quantities & Prices, expect honest feedback and straightforward questions. This is not rudeness — it''s cultural. Arabic speakers often find this too direct at first, but you''ll appreciate it once you get used to it.

في ألمانيا، يتم التعامل مع Quantities & Prices بوضوح وكفاءة. الألمان يقدرون الوضوح أكثر من المجاملات. لا تعتبر هذه وقاحة - إنها ثقافة مختلفة.', '["Tip: Always use \"Sie\" (formal) with strangers and colleagues","Tip: Germans appreciate punctuality — arrive 5 minutes early","Tip: Direct feedback is a sign of respect, not criticism","Tip: Prepare factual arguments, not emotional appeals"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006599a2d2', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Using \"der\" for all food nouns","correction":"Learn article + noun as one unit for every food word","explanation":"Arabic food words don''t have inherent gender."},{"mistake":"Using the wrong article (der/die/das) for nouns","correction":"Learn each noun with its article as one piece","explanation":"Arabic has no articles for nouns without gender connection"}]', 30);

  -- Lesson 6: Test: Essen und Einkaufen (L-A1-04-06)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-00006599a2d3', '00000000-0000-4000-a000-000039b4d361', 'Test: Essen und Einkaufen', 'Test your knowledge of Module 4.', 'Module Test', 'test', '["Understand and apply mochten rules correctly","Use mochten in real conversations","Avoid common mistakes Arabic speakers make with mochten","Read and understand mochten in context","Listen and identify mochten in speech","Write sentences using mochten correctly"]', 25, 6, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, french_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-00006599a2d3', 'das Brot', 'الخبز', 'bread', 'le pain', 'das', 'die Brote', 'noun', 'Ich kaufe ein Brot.', 'I buy a loaf of bread.', 'A1', 1),
  ('00000000-0000-4000-a000-00006599a2d3', 'die Milch', 'الحليب', 'milk', 'le lait', 'die', NULL, 'noun', 'Die Milch ist frisch.', 'The milk is fresh.', 'A1', 2),
  ('00000000-0000-4000-a000-00006599a2d3', 'der Käse', 'الجبن', 'cheese', 'le fromage', 'der', NULL, 'noun', 'Der Käse schmeckt gut.', 'The cheese tastes good.', 'A1', 3),
  ('00000000-0000-4000-a000-00006599a2d3', 'der Apfel', 'التفاح', 'apple', 'la pomme', 'der', 'die Äpfel', 'noun', 'Der Apfel ist rot.', 'The apple is red.', 'A1', 4),
  ('00000000-0000-4000-a000-00006599a2d3', 'das Ei', 'البيضة', 'egg', 'l''œuf', 'das', 'die Eier', 'noun', 'Ich esse ein Ei zum Frühstück.', 'I eat an egg for breakfast.', 'A1', 5),
  ('00000000-0000-4000-a000-00006599a2d3', 'das Obst', 'الفاكهة', 'fruit', 'les fruits', 'das', NULL, 'noun', 'Obst ist gesund.', 'Fruit is healthy.', 'A1', 6),
  ('00000000-0000-4000-a000-00006599a2d3', 'das Gemüse', 'الخضروات', 'vegetables', 'les légumes', 'das', NULL, 'noun', 'Ich kaufe Gemüse auf dem Markt.', 'I buy vegetables at the market.', 'A1', 7),
  ('00000000-0000-4000-a000-00006599a2d3', 'kochen', 'يطبخ', 'to cook', 'cuisiner', NULL, NULL, 'verb', 'Meine Mutter kocht gut.', 'My mother cooks well.', 'A1', 8),
  ('00000000-0000-4000-a000-00006599a2d3', 'der Fisch', 'السمك', 'fish', 'le poisson', 'der', 'die Fische', 'noun', 'Der Fisch ist frisch.', 'The fish is fresh.', 'A1', 9),
  ('00000000-0000-4000-a000-00006599a2d3', 'das Fleisch', 'اللحم', 'meat', 'la viande', 'das', NULL, 'noun', 'Ich esse nicht viel Fleisch.', 'I do not eat much meat.', 'A1', 10),
  ('00000000-0000-4000-a000-00006599a2d3', 'Hallo', 'مرحباً', 'hello', 'bonjour', NULL, NULL, 'interjection', 'Hallo, wie geht es dir?', 'Hello, how are you?', 'A1', 11),
  ('00000000-0000-4000-a000-00006599a2d3', 'Guten Morgen', 'صباح الخير', 'good morning', 'bonjour (le matin)', NULL, NULL, 'phrase', 'Guten Morgen, Herr Müller.', 'Good morning, Mr. Müller.', 'A1', 12),
  ('00000000-0000-4000-a000-00006599a2d3', 'Guten Tag', 'نهارك سعيد', 'good day', 'bonjour (l''après-midi)', NULL, NULL, 'phrase', 'Guten Tag, Frau Schmidt.', 'Good day, Mrs. Schmidt.', 'A1', 13),
  ('00000000-0000-4000-a000-00006599a2d3', 'Tschüss', 'مع السلامة', 'bye', 'au revoir / salut', NULL, NULL, 'interjection', 'Tschüss, bis morgen!', 'Bye, see you tomorrow!', 'A1', 14),
  ('00000000-0000-4000-a000-00006599a2d3', 'der Name', 'الاسم', 'name', 'le nom', 'der', 'die Namen', 'noun', 'Mein Name ist Anna.', 'My name is Anna.', 'A1', 15),
  ('00000000-0000-4000-a000-00006599a2d3', 'wie', 'كيف', 'how', 'comment', NULL, NULL, 'adverb', 'Wie heißt du?', 'What is your name?', 'A1', 16),
  ('00000000-0000-4000-a000-00006599a2d3', 'freuen', 'يسر', 'to be pleased', 'se réjouir', NULL, NULL, 'verb', 'Ich freue mich, dich kennenzulernen.', 'I am pleased to meet you.', 'A1', 17),
  ('00000000-0000-4000-a000-00006599a2d3', 'Willkommen', 'أهلاً وسهلاً', 'welcome', 'bienvenue', NULL, NULL, 'interjection', 'Willkommen in Deutschland!', 'Welcome to Germany!', 'A1', 18),
  ('00000000-0000-4000-a000-00006599a2d3', 'die Familie', 'العائلة', 'family', 'la famille', 'die', 'die Familien', 'noun', 'Meine Familie ist groß.', 'My family is big.', 'A1', 19),
  ('00000000-0000-4000-a000-00006599a2d3', 'der Vater', 'الأب', 'father', 'le père', 'der', 'die Väter', 'noun', 'Mein Vater ist Ingenieur.', 'My father is an engineer.', 'A1', 20),
  ('00000000-0000-4000-a000-00006599a2d3', 'die Mutter', 'الأم', 'mother', 'la mère', 'die', 'die Mütter', 'noun', 'Meine Mutter kocht gut.', 'My mother cooks well.', 'A1', 21),
  ('00000000-0000-4000-a000-00006599a2d3', 'der Bruder', 'الأخ', 'brother', 'le frère', 'der', 'die Brüder', 'noun', 'Mein Bruder ist 15 Jahre alt.', 'My brother is 15 years old.', 'A1', 22),
  ('00000000-0000-4000-a000-00006599a2d3', 'die Schwester', 'الأخت', 'sister', 'la sœur', 'die', 'die Schwestern', 'noun', 'Meine Schwester studiert Medizin.', 'My sister studies medicine.', 'A1', 23),
  ('00000000-0000-4000-a000-00006599a2d3', 'die Geschwister', 'الإخوة', 'siblings', 'les frères et sœurs', 'die', NULL, 'noun', 'Hast du Geschwister?', 'Do you have siblings?', 'A1', 24),
  ('00000000-0000-4000-a000-00006599a2d3', 'der Sohn', 'الابن', 'son', 'le fils', 'der', 'die Söhne', 'noun', 'Wir haben einen Sohn.', 'We have a son.', 'A1', 25),
  ('00000000-0000-4000-a000-00006599a2d3', 'die Tochter', 'الابنة', 'daughter', 'la fille', 'die', 'die Töchter', 'noun', 'Meine Tochter geht zur Schule.', 'My daughter goes to school.', 'A1', 26),
  ('00000000-0000-4000-a000-00006599a2d3', 'die Großeltern', 'الأجداد', 'grandparents', 'les grands-parents', 'die', NULL, 'noun', 'Meine Großeltern wohnen auf dem Land.', 'My grandparents live in the countryside.', 'A1', 27),
  ('00000000-0000-4000-a000-00006599a2d3', 'verheiratet', 'متزوج', 'married', 'marié(e)', NULL, NULL, 'adjective', 'Meine Eltern sind verheiratet.', 'My parents are married.', 'A1', 28),
  ('00000000-0000-4000-a000-00006599a2d3', 'das Haus', 'البيت', 'house', 'la maison', 'das', 'die Häuser', 'noun', 'Das Haus ist groß.', 'The house is big.', 'A1', 29),
  ('00000000-0000-4000-a000-00006599a2d3', 'die Wohnung', 'الشقة', 'apartment', 'l''appartement', 'die', 'die Wohnungen', 'noun', 'Meine Wohnung hat drei Zimmer.', 'My apartment has three rooms.', 'A1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006599a2d3', 'möchten — Höfliche Bitten (Polite Requests) / möchten — الطلبات المهذبة', '"Möchten" is the subjunctive form of "mögen" and means "would like". It is the most important word for polite requests in German. Conjugation: ich möchte, du möchtest, er/sie/es möchte, wir möchten, ihr möchtet, sie/Sie möchten. It is always followed by an infinitive at the end, or a noun.', '[{"rule":"möchten + noun: Ich möchte einen Kaffee.","note":"Used like \"I would like a...\""},{"rule":"möchten + infinitive (at end): Ich möchte zahlen.","note":"Verb goes to the end"},{"rule":"ich möchte, du möchtest, er/sie/es möchte, wir möchten","note":"Similar to modal verb conjugation"}]', '[{"german":"Ich möchte einen Kaffee, bitte.","arabic":"أود فنجان قهوة من فضلك.","english":"I would like a coffee, please."},{"german":"Wir möchten zahlen, bitte.","arabic":"نود الدفع من فضلك.","english":"We would like to pay, please."},{"german":"Möchtest du etwas essen?","arabic":"هل ترغب في أكل شيء؟","english":"Would you like something to eat?"}]', '[{"mistake":"Ich will einen Kaffee (too direct)","correction":"Ich möchte einen Kaffee.","explanation":"\"Ich will\" is too direct in restaurants. Use \"möchten\" for polite requests."},{"mistake":"Ich möchte ein Wasser (wrong article in accusative)","correction":"Ich möchte ein Wasser / Ich möchte einen Kaffee.","explanation":"\"Kaffee\" is masculine → \"einen\" (Akkusativ). \"Wasser\" is neuter → \"ein\"."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006599a2d3', 'multiple_choice', 'Which German word matches "bread"?', '["der Apfel","das Ei","das Brot","der Käse"]', 'das Brot', '"bread" = "das Brot" in German. Article: das Plural: die Brote', 1, 1),
  ('00000000-0000-4000-a000-00006599a2d3', 'multiple_choice', 'Which German word matches "milk"?', '["das Ei","die Milch","das Brot","der Käse"]', 'die Milch', '"milk" = "die Milch" in German. Article: die ', 1, 2),
  ('00000000-0000-4000-a000-00006599a2d3', 'multiple_choice', 'Which German word matches "cheese"?', '["das Ei","der Käse","der Apfel","die Milch"]', 'der Käse', '"cheese" = "der Käse" in German. Article: der ', 1, 3),
  ('00000000-0000-4000-a000-00006599a2d3', 'multiple_choice', 'Which German word matches "apple"?', '["der Apfel","das Brot","die Milch","der Käse"]', 'der Apfel', '"apple" = "der Apfel" in German. Article: der Plural: die Äpfel', 1, 4),
  ('00000000-0000-4000-a000-00006599a2d3', 'multiple_choice', 'Which German word matches "egg"?', '["der Käse","die Milch","das Brot","das Ei"]', 'das Ei', '"egg" = "das Ei" in German. Article: das Plural: die Eier', 1, 5),
  ('00000000-0000-4000-a000-00006599a2d3', 'fill_gap', 'Complete the sentence: Ich ___ gern über Module Test. (sprechen)', '["spreche","sprichst","spricht","sprechen"]', 'spreche', 'ich spreche gern = I like to speak. Stem: sprech- + e.', 2, 6),
  ('00000000-0000-4000-a000-00006599a2d3', 'translation', 'Translate to German: "I am learning about Module Test."', '["Ich lerne über Module Test.","Ich lerne Module Test.","Lerne ich Module Test."]', 'Ich lerne über Module Test.', '"Ich lerne über..." = "I am learning about..."', 2, 7),
  ('00000000-0000-4000-a000-00006599a2d3', 'matching', 'Match: Which word pairs are correct?', '["das Brot - bread, die Milch - milk"]', 'Matched correctly', 'Each German word has a unique English equivalent.', 2, 8);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-00006599a2d3', 'multiple_choice', 'What does "das Brot" mean in English?', '["bread","to run","beautiful","yesterday"]', 'bread', 1, 1),
  ('00000000-0000-4000-a000-00006599a2d3', 'multiple_choice', 'What is the correct article for "die Milch"?', '["der","die","das","den"]', 'die', 1, 2),
  ('00000000-0000-4000-a000-00006599a2d3', 'true_false', 'The word "der Käse" is related to Module Test.', '["True","False"]', 'True', 1, 3),
  ('00000000-0000-4000-a000-00006599a2d3', 'multiple_choice', 'Which sentence correctly uses mochten?', '["Ich möchte einen Kaffee, bitte.","Wir möchten zahlen, bitte.","Möchtest du etwas essen?"]', 'Ich möchte einen Kaffee, bitte.', 2, 4),
  ('00000000-0000-4000-a000-00006599a2d3', 'true_false', 'German word order puts the verb in second position in main clauses.', '["True","False"]', 'True', 1, 5),
  ('00000000-0000-4000-a000-00006599a2d3', 'fill_blank', 'Complete: Ich ___ (apple) Deutsch.', '["der Apfel","lernt","lernst","lernen"]', 'lerne', 2, 6),
  ('00000000-0000-4000-a000-00006599a2d3', 'multiple_choice', 'What is the German word for "egg"?', '["das Ei","das Obst","das Gemüse","kochen"]', 'das Ei', 1, 7),
  ('00000000-0000-4000-a000-00006599a2d3', 'true_false', 'In German, ALL nouns are always capitalised.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-00006599a2d3', 'multiple_choice', 'How do you say "please" in a restaurant in Germany?', '["Bitte","Danke","Tschüss","Hallo"]', 'Bitte', 1, 9),
  ('00000000-0000-4000-a000-00006599a2d3', 'fill_blank', 'Wo ___ (to live) du?', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 2, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, french_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-00006599a2d3', 'Ich möchte bitte bestellen.', 'I would like to order, please.', 'أريد أن أطلب من فضلك.', NULL, 'Used in Essen und Einkaufen', 'formal', false, 1),
  ('00000000-0000-4000-a000-00006599a2d3', 'Was empfehlen Sie?', 'What do you recommend?', 'ماذا تنصحون؟', NULL, 'Used in Essen und Einkaufen', 'formal', false, 2),
  ('00000000-0000-4000-a000-00006599a2d3', 'Die Rechnung, bitte!', 'The bill, please!', 'الفاتورة من فضلك!', NULL, 'Used in Essen und Einkaufen', 'formal', false, 3),
  ('00000000-0000-4000-a000-00006599a2d3', 'Es hat sehr gut geschmeckt!', 'It was delicious!', 'كان لذيذاً جداً!', NULL, 'Used in Essen und Einkaufen', 'formal', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-00006599a2d3', 'das das Brot (die Brote)', 'bread — الخبز', 'noun', 'vocabulary', 1),
  ('00000000-0000-4000-a000-00006599a2d3', 'die die Milch', 'milk — الحليب', 'noun', 'vocabulary', 2),
  ('00000000-0000-4000-a000-00006599a2d3', 'der der Käse', 'cheese — الجبن', 'noun', 'vocabulary', 3),
  ('00000000-0000-4000-a000-00006599a2d3', 'der der Apfel (die Äpfel)', 'apple — التفاح', 'noun', 'vocabulary', 4),
  ('00000000-0000-4000-a000-00006599a2d3', 'das das Ei (die Eier)', 'egg — البيضة', 'noun', 'vocabulary', 5),
  ('00000000-0000-4000-a000-00006599a2d3', 'das das Obst', 'fruit — الفاكهة', 'noun', 'vocabulary', 6),
  ('00000000-0000-4000-a000-00006599a2d3', 'das das Gemüse', 'vegetables — الخضروات', 'noun', 'vocabulary', 7),
  ('00000000-0000-4000-a000-00006599a2d3', 'kochen', 'to cook — يطبخ', 'verb', 'vocabulary', 8),
  ('00000000-0000-4000-a000-00006599a2d3', 'der der Fisch (die Fische)', 'fish — السمك', 'noun', 'vocabulary', 9),
  ('00000000-0000-4000-a000-00006599a2d3', 'das das Fleisch', 'meat — اللحم', 'noun', 'vocabulary', 10),
  ('00000000-0000-4000-a000-00006599a2d3', 'Hallo', 'hello — مرحباً', 'interjection', 'vocabulary', 11),
  ('00000000-0000-4000-a000-00006599a2d3', 'Guten Morgen', 'good morning — صباح الخير', 'phrase', 'vocabulary', 12),
  ('00000000-0000-4000-a000-00006599a2d3', 'Guten Tag', 'good day — نهارك سعيد', 'phrase', 'vocabulary', 13),
  ('00000000-0000-4000-a000-00006599a2d3', 'Tschüss', 'bye — مع السلامة', 'interjection', 'vocabulary', 14),
  ('00000000-0000-4000-a000-00006599a2d3', 'der der Name (die Namen)', 'name — الاسم', 'noun', 'vocabulary', 15),
  ('00000000-0000-4000-a000-00006599a2d3', 'Ich möchte einen Kaffee, bitte.', 'I would like a coffee, please.', 'möchten — Höfliche Bitten (Polite Requests)', 'grammar', 16),
  ('00000000-0000-4000-a000-00006599a2d3', 'Wir möchten zahlen, bitte.', 'We would like to pay, please.', 'möchten — Höfliche Bitten (Polite Requests)', 'grammar', 17),
  ('00000000-0000-4000-a000-00006599a2d3', 'Möchtest du etwas essen?', 'Would you like something to eat?', 'möchten — Höfliche Bitten (Polite Requests)', 'grammar', 18);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, french_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-00006599a2d3', 'Test: Essen und Einkaufen — Leseübung', 'Heute gehe ich einkaufen. Ich brauche Lebensmittel. Ich gehe zum Supermarkt. Ich kaufe Brot, Milch, Käse und Eier. Auch Obst und Gemüse brauche ich. Die Äpfel sehen gut aus. Ich nehme fünf Äpfel. Der Käse kostet 3 Euro. Alles zusammen kostet 15 Euro. Ich bezahle an der Kasse. Die Verkäuferin ist freundlich. Dann gehe ich nach Hause.', 'Today I go shopping. I need groceries. I go to the supermarket. I buy bread, milk, cheese and eggs. I also need fruit and vegetables. The apples look good. I take five apples. The cheese costs 3 euros. Everything together costs 15 euros. I pay at the checkout. The saleswoman is friendly. Then I go home.', 'اليوم أذهب للتسوق. أحتاج مواد غذائية. أذهب إلى السوبرماركت. أشتري خبزاً وحليباً وجبناً وبيضاً. أحتاج أيضاً فاكهة وخضروات. التفاح يبدو جيداً. آخذ خمس تفاحات. الجبن يكلف 3 يورو. المجموع الكلي 15 يورو. أدفع عند الصندوق. البائعة ودودة. ثم أعود إلى المنزل.', NULL, 57, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, french_translation, duration_seconds, speaker_count, scenario) values
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

[Kellner]: فوراً. شهية طيبة!', '[Kellner]: 

[Gast]: 

[Kellner]: 

[Gast]: 

[Kellner]: ', 60, 2, 'Essen und Einkaufen');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-00006599a2d3', '🔊 Sprechen: Test: Essen und Einkaufen', 'Roleplay: You are in a Hamburg office. Introduce yourself and talk about Module Test. Your partner (AI) will respond naturally.', 'Module Test', ARRAY['Use complete sentences — not single words','Pause between phrases, not between words','Don''t translate from Arabic word-for-word']::text[], ARRAY['das Brot','die Milch','der Käse','der Apfel','das Ei','das Obst','das Gemüse','kochen']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-00006599a2d3', '✏️ Schreiben: Test: Essen und Einkaufen', 'Write an email to a German friend about "Module Test". Tell them what you learned, what you found interesting, and ask two questions about their experience with this topic. Use at least 8 vocabulary words from this lesson. Sign off naturally ("Viele Grüße", "Liebe Grüße").', ARRAY['Start with "Hallo" or "Liebe/r"','Keep sentences short (Subject-Verb-Object)','End with a friendly farewell']::text[], ARRAY['das Brot','die Milch','der Käse','der Apfel','das Ei','das Obst','das Gemüse','kochen']::text[], ARRAY['Sentence structure','Vocabulary usage']::text[], 50, 100, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00006599a2d3', 'Test: Essen und Einkaufen — Roleplay', 'Module Test', 'Student', 'Teacher', 'Practice conversation about Module Test', 'Hallo! Lass uns über dieses Thema sprechen.', 'beginner', 1, ARRAY['das Brot','die Milch','der Käse','der Apfel','das Ei','das Obst','das Gemüse','kochen']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00006599a2d3', 'Test: Essen und Einkaufen — Advanced Roleplay', 'Module Test', 'Customer', 'Assistant', 'Extended conversation about Module Test', 'Guten Tag! Wie kann ich Ihnen helfen?', 'beginner', 2, ARRAY['das Brot','die Milch','der Käse','der Apfel','das Ei','das Obst','das Gemüse','kochen']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-00006599a2d3', 'Test: Essen und Einkaufen — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Test: Essen und Einkaufen".', 'Creative practice for Module Test', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-00006599a2d3', '📚 Hausaufgabe: Test: Essen und Einkaufen', 'Complete these tasks to reinforce "Test: Essen und Einkaufen".', 'mixed', '[{"description":"Create 10 flashcards from this lesson''s vocabulary — write German on one side, Arabic on the other. Test yourself 3 times."},{"description":"Write 6 sentences about Module Test: 2 statements, 2 questions, 2 negations — all using mochten."},{"description":"Record yourself reading the dialogue aloud. Listen to the recording and note 3 things to improve."},{"description":"Find 3 real German websites, videos, or articles about Module Test. Note 5 new words you discovered."}]', 50, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-00006599a2d3', '🎯 Great work! In this lesson you learned 142 new words about Module Test. You practiced mochten — an important grammar topic for A1 level. You read a text, listened to a dialogue, and practiced speaking and writing. Keep going!', '["142 vocabulary items about Module Test","mochten — grammar explanation and practice","Reading comprehension: text about Module Test","Listening comprehension: dialogue about Module Test","Speaking practice: roleplay/discussion about Module Test","Writing task: text about Module Test"]', '[{"title":"Test: Essen und Einkaufen Review","summary":"mochten — the main grammar focus. Focus on understanding when to use this structure and forming basic sentences."}]', ARRAY['das Brot (bread)','die Milch (milk)','der Käse (cheese)','der Apfel (apple)','das Ei (egg)']::text[], ARRAY['Don''t translate from Arabic word-for-word — German has different sentence structure','Learn every noun with its article: NEVER learn "Tisch" alone, always "der Tisch"','Verb always in position 2 in main clauses']::text[], ARRAY['Practice 15-20 minutes daily — consistency beats intensity','Speak out loud: German pronunciation needs muscle memory','Use the new vocabulary within 24 hours or you''ll forget it','Watch German YouTube videos about Module Test for authentic input']::text[]);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006599a2d3', 'Pronunciation: German sounds for "food"', 'In German, vowels are pure — unlike English diphthongs. The "ch" sound after a, o, u is guttural (like Arabic خ). After e, i, ä, ö, ü it''s soft (like English "huge" without the "u").

Common mistake for Arabic speakers: Arabic speakers tend to over-emphasise consonants. German flows — connect words smoothly (e.g., "Ich habe" becomes /ɪçabə/ not /ɪç ˈhaːbə/).', '[]', '[{"german":"das Brot","arabic":"","english":"","phonetic":""},{"german":"die Milch","arabic":"","english":"","phonetic":""},{"german":"der Käse","arabic":"","english":"","phonetic":""},{"german":"der Apfel","arabic":"","english":"","phonetic":""}]', '[]', 10);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006599a2d3', 'translation', 'Translate to German: "I use the word "bread" in a sentence about Module Test."', '[]', 'Ich kaufe ein Brot.', 'Use das  "das Brot" with the correct mochten form.', 1, 40);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006599a2d3', 'translation', 'Translate to German: "I use the word "milk" in a sentence about Module Test."', '[]', 'Die Milch ist frisch.', 'Use die  "die Milch" with the correct mochten form.', 1, 41);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006599a2d3', 'translation', 'Translate to German: "I use the word "cheese" in a sentence about Module Test."', '[]', 'Der Käse schmeckt gut.', 'Use der  "der Käse" with the correct mochten form.', 1, 42);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006599a2d3', 'Culture: 🇩🇪 Deutsche Kultur: Module Test', 'In Germany, Module Test is approached with typical German directness and efficiency. Germans value clarity over small talk. When discussing Module Test, expect honest feedback and straightforward questions. This is not rudeness — it''s cultural. Arabic speakers often find this too direct at first, but you''ll appreciate it once you get used to it.

في ألمانيا، يتم التعامل مع Module Test بوضوح وكفاءة. الألمان يقدرون الوضوح أكثر من المجاملات. لا تعتبر هذه وقاحة - إنها ثقافة مختلفة.', '["Tip: Always use \"Sie\" (formal) with strangers and colleagues","Tip: Germans appreciate punctuality — arrive 5 minutes early","Tip: Direct feedback is a sign of respect, not criticism","Tip: Prepare factual arguments, not emotional appeals"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006599a2d3', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Using \"der\" for all food nouns","correction":"Learn article + noun as one unit for every food word","explanation":"Arabic food words don''t have inherent gender."},{"mistake":"Using the wrong article (der/die/das) for nouns","correction":"Learn each noun with its article as one piece","explanation":"Arabic has no articles for nouns without gender connection"}]', 30);

  -- Module 5: Arbeit und Berufe
  insert into public.course_modules (id, level_id, title, description, objectives, order_index, estimated_hours, is_published)
  values ('00000000-0000-4000-a000-000039b4d362', 'A1', 'Arbeit und Berufe', 'Learn vocabulary for jobs, workplaces, and basic professional communication.', '["Name common professions","Talk about your job","Use the verb \"sein\" for professions","Use the verb \"haben\" for possession","Use numbers for phone and email"]', 5, 4, true)
  on conflict (id) do nothing;

  -- Lesson 1: Berufe (L-A1-05-01)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-0000659a172d', '00000000-0000-4000-a000-000039b4d362', 'Berufe', 'Learn common job titles and profession vocabulary.', 'Professions', 'vocabulary', '["Understand and use 150 key vocabulary words about Professions","Apply sein_haben correctly in sentences","Read and comprehend a text about Professions","Listen and understand a natural dialogue about Professions","Speak about Professions with confidence","Write a short text about Professions using new vocabulary"]', 30, 1, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, french_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-0000659a172d', 'der Beruf', 'المهنة', 'profession', NULL, 'der', 'die Berufe', 'noun', 'Was ist dein Beruf?', 'What is your profession?', 'A1', 1),
  ('00000000-0000-4000-a000-0000659a172d', 'die Firma', 'الشركة', 'company', NULL, 'die', 'die Firmen', 'noun', 'Die Firma ist in Berlin.', 'The company is in Berlin.', 'A1', 2),
  ('00000000-0000-4000-a000-0000659a172d', 'der Kollege', 'الزميل', 'colleague', NULL, 'der', 'die Kollegen', 'noun', 'Mein Kollege hilft mir.', 'My colleague helps me.', 'A1', 3),
  ('00000000-0000-4000-a000-0000659a172d', 'das Büro', 'المكتب', 'office', NULL, 'das', 'die Büros', 'noun', 'Das Büro ist im dritten Stock.', 'The office is on the third floor.', 'A1', 4),
  ('00000000-0000-4000-a000-0000659a172d', 'die Besprechung', 'الاجتماع', 'meeting', NULL, 'die', 'die Besprechungen', 'noun', 'Wir haben eine Besprechung.', 'We have a meeting.', 'B1', 5),
  ('00000000-0000-4000-a000-0000659a172d', 'der Chef', 'المدير', 'boss', NULL, 'der', 'die Chefs', 'noun', 'Mein Chef ist freundlich.', 'My boss is friendly.', 'A1', 6),
  ('00000000-0000-4000-a000-0000659a172d', 'das Gehalt', 'الراتب', 'salary', NULL, 'das', 'die Gehälter', 'noun', 'Das Gehalt ist gut.', 'The salary is good.', 'B1', 7),
  ('00000000-0000-4000-a000-0000659a172d', 'die Stelle', 'الوظيفة', 'position', NULL, 'die', 'die Stellen', 'noun', 'Ich suche eine neue Stelle.', 'I am looking for a new position.', 'B1', 8),
  ('00000000-0000-4000-a000-0000659a172d', 'Hallo', 'مرحباً', 'hello', 'bonjour', NULL, NULL, 'interjection', 'Hallo, wie geht es dir?', 'Hello, how are you?', 'A1', 9),
  ('00000000-0000-4000-a000-0000659a172d', 'Guten Morgen', 'صباح الخير', 'good morning', 'bonjour (le matin)', NULL, NULL, 'phrase', 'Guten Morgen, Herr Müller.', 'Good morning, Mr. Müller.', 'A1', 10),
  ('00000000-0000-4000-a000-0000659a172d', 'Guten Tag', 'نهارك سعيد', 'good day', 'bonjour (l''après-midi)', NULL, NULL, 'phrase', 'Guten Tag, Frau Schmidt.', 'Good day, Mrs. Schmidt.', 'A1', 11),
  ('00000000-0000-4000-a000-0000659a172d', 'Tschüss', 'مع السلامة', 'bye', 'au revoir / salut', NULL, NULL, 'interjection', 'Tschüss, bis morgen!', 'Bye, see you tomorrow!', 'A1', 12),
  ('00000000-0000-4000-a000-0000659a172d', 'der Name', 'الاسم', 'name', 'le nom', 'der', 'die Namen', 'noun', 'Mein Name ist Anna.', 'My name is Anna.', 'A1', 13),
  ('00000000-0000-4000-a000-0000659a172d', 'wie', 'كيف', 'how', 'comment', NULL, NULL, 'adverb', 'Wie heißt du?', 'What is your name?', 'A1', 14),
  ('00000000-0000-4000-a000-0000659a172d', 'freuen', 'يسر', 'to be pleased', 'se réjouir', NULL, NULL, 'verb', 'Ich freue mich, dich kennenzulernen.', 'I am pleased to meet you.', 'A1', 15),
  ('00000000-0000-4000-a000-0000659a172d', 'Willkommen', 'أهلاً وسهلاً', 'welcome', 'bienvenue', NULL, NULL, 'interjection', 'Willkommen in Deutschland!', 'Welcome to Germany!', 'A1', 16),
  ('00000000-0000-4000-a000-0000659a172d', 'die Familie', 'العائلة', 'family', 'la famille', 'die', 'die Familien', 'noun', 'Meine Familie ist groß.', 'My family is big.', 'A1', 17),
  ('00000000-0000-4000-a000-0000659a172d', 'der Vater', 'الأب', 'father', 'le père', 'der', 'die Väter', 'noun', 'Mein Vater ist Ingenieur.', 'My father is an engineer.', 'A1', 18),
  ('00000000-0000-4000-a000-0000659a172d', 'die Mutter', 'الأم', 'mother', 'la mère', 'die', 'die Mütter', 'noun', 'Meine Mutter kocht gut.', 'My mother cooks well.', 'A1', 19),
  ('00000000-0000-4000-a000-0000659a172d', 'der Bruder', 'الأخ', 'brother', 'le frère', 'der', 'die Brüder', 'noun', 'Mein Bruder ist 15 Jahre alt.', 'My brother is 15 years old.', 'A1', 20),
  ('00000000-0000-4000-a000-0000659a172d', 'die Schwester', 'الأخت', 'sister', 'la sœur', 'die', 'die Schwestern', 'noun', 'Meine Schwester studiert Medizin.', 'My sister studies medicine.', 'A1', 21),
  ('00000000-0000-4000-a000-0000659a172d', 'die Geschwister', 'الإخوة', 'siblings', 'les frères et sœurs', 'die', NULL, 'noun', 'Hast du Geschwister?', 'Do you have siblings?', 'A1', 22),
  ('00000000-0000-4000-a000-0000659a172d', 'der Sohn', 'الابن', 'son', 'le fils', 'der', 'die Söhne', 'noun', 'Wir haben einen Sohn.', 'We have a son.', 'A1', 23),
  ('00000000-0000-4000-a000-0000659a172d', 'die Tochter', 'الابنة', 'daughter', 'la fille', 'die', 'die Töchter', 'noun', 'Meine Tochter geht zur Schule.', 'My daughter goes to school.', 'A1', 24),
  ('00000000-0000-4000-a000-0000659a172d', 'die Großeltern', 'الأجداد', 'grandparents', 'les grands-parents', 'die', NULL, 'noun', 'Meine Großeltern wohnen auf dem Land.', 'My grandparents live in the countryside.', 'A1', 25),
  ('00000000-0000-4000-a000-0000659a172d', 'verheiratet', 'متزوج', 'married', 'marié(e)', NULL, NULL, 'adjective', 'Meine Eltern sind verheiratet.', 'My parents are married.', 'A1', 26),
  ('00000000-0000-4000-a000-0000659a172d', 'das Brot', 'الخبز', 'bread', 'le pain', 'das', 'die Brote', 'noun', 'Ich kaufe ein Brot.', 'I buy a loaf of bread.', 'A1', 27),
  ('00000000-0000-4000-a000-0000659a172d', 'die Milch', 'الحليب', 'milk', 'le lait', 'die', NULL, 'noun', 'Die Milch ist frisch.', 'The milk is fresh.', 'A1', 28),
  ('00000000-0000-4000-a000-0000659a172d', 'der Käse', 'الجبن', 'cheese', 'le fromage', 'der', NULL, 'noun', 'Der Käse schmeckt gut.', 'The cheese tastes good.', 'A1', 29),
  ('00000000-0000-4000-a000-0000659a172d', 'der Apfel', 'التفاح', 'apple', 'la pomme', 'der', 'die Äpfel', 'noun', 'Der Apfel ist rot.', 'The apple is red.', 'A1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000659a172d', 'sein und haben (To Be and To Have) / يكون ويملك', '"Sein" (to be) and "haben" (to have) are the two most important verbs in German. They are irregular and used as auxiliary verbs too. sein: ich bin, du bist, er/sie/es ist, wir sind, ihr seid, sie/Sie sind. haben: ich habe, du hast, er/sie/es hat, wir haben, ihr habt, sie/Sie haben.', '[{"rule":"sein: ich bin, du bist, er/sie/es ist, wir sind, ihr seid, sie/Sie sind","note":"Ich bin Ahmed. Du bist Student. Er ist Arzt."},{"rule":"haben: ich habe, du hast, er/sie/es hat, wir haben, ihr habt, sie/Sie haben","note":"Ich habe einen Bruder. Sie hat keine Zeit."},{"rule":"Use sein for: profession, nationality, location, description","note":"Ich bin Lehrer. Wir sind in Berlin. Das ist wichtig."},{"rule":"Use haben for: possession, age, feelings","note":"Ich habe Hunger. Sie hat 20 Jahre."}]', '[{"german":"Ich bin Student und lerne Deutsch.","arabic":"أنا طالب وأتعلم الألمانية.","english":"I am a student and I learn German."},{"german":"Du hast eine schöne Wohnung.","arabic":"لديك شقة جميلة.","english":"You have a nice apartment."},{"german":"Er ist Arzt und hat viel Arbeit.","arabic":"هو طبيب ولديه الكثير من العمل.","english":"He is a doctor and has a lot of work."},{"german":"Wir sind in Berlin und haben Zeit.","arabic":"نحن في برلين ولدينا وقت.","english":"We are in Berlin and have time."}]', '[{"mistake":"Ich bin 20 Jahre (using sein for age)","correction":"Ich habe 20 Jahre / Ich bin 20 Jahre alt","explanation":"In German, \"haben\" is used for age: \"Wie alt bist du?\" uses \"sein\" for age too. Confusing but important."},{"mistake":"Er hat krank (using haben for condition)","correction":"Er ist krank","explanation":"Health conditions use \"sein\", not \"haben\" in German."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000659a172d', 'multiple_choice', 'Which German word matches "profession"?', '["der Beruf","die Firma","die Besprechung","das Büro"]', 'der Beruf', '"profession" = "der Beruf" in German. Article: der Plural: die Berufe', 1, 1),
  ('00000000-0000-4000-a000-0000659a172d', 'multiple_choice', 'Which German word matches "company"?', '["das Büro","der Kollege","die Firma","die Besprechung"]', 'die Firma', '"company" = "die Firma" in German. Article: die Plural: die Firmen', 1, 2),
  ('00000000-0000-4000-a000-0000659a172d', 'multiple_choice', 'Which German word matches "colleague"?', '["das Büro","die Besprechung","der Kollege","die Firma"]', 'der Kollege', '"colleague" = "der Kollege" in German. Article: der Plural: die Kollegen', 1, 3),
  ('00000000-0000-4000-a000-0000659a172d', 'multiple_choice', 'Which German word matches "office"?', '["die Firma","der Beruf","der Kollege","das Büro"]', 'das Büro', '"office" = "das Büro" in German. Article: das Plural: die Büros', 1, 4),
  ('00000000-0000-4000-a000-0000659a172d', 'multiple_choice', 'Which German word matches "meeting"?', '["der Beruf","der Kollege","die Firma","die Besprechung"]', 'die Besprechung', '"meeting" = "die Besprechung" in German. Article: die Plural: die Besprechungen', 1, 5),
  ('00000000-0000-4000-a000-0000659a172d', 'fill_gap', 'Complete the sentence: Ich ___ gern über Professions. (sprechen)', '["spreche","sprichst","spricht","sprechen"]', 'spreche', 'ich spreche gern = I like to speak. Stem: sprech- + e.', 2, 6),
  ('00000000-0000-4000-a000-0000659a172d', 'translation', 'Translate to German: "I am learning about Professions."', '["Ich lerne über Professions.","Ich lerne Professions.","Lerne ich Professions."]', 'Ich lerne über Professions.', '"Ich lerne über..." = "I am learning about..."', 2, 7),
  ('00000000-0000-4000-a000-0000659a172d', 'matching', 'Match: Which word pairs are correct?', '["der Beruf - profession, die Firma - company"]', 'Matched correctly', 'Each German word has a unique English equivalent.', 2, 8);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-0000659a172d', 'multiple_choice', 'What does "der Beruf" mean in English?', '["profession","to run","beautiful","yesterday"]', 'profession', 1, 1),
  ('00000000-0000-4000-a000-0000659a172d', 'multiple_choice', 'What is the correct article for "die Firma"?', '["der","die","das","den"]', 'die', 1, 2),
  ('00000000-0000-4000-a000-0000659a172d', 'true_false', 'The word "der Kollege" is related to Professions.', '["True","False"]', 'True', 1, 3),
  ('00000000-0000-4000-a000-0000659a172d', 'multiple_choice', 'Which sentence correctly uses sein_haben?', '["Ich bin Student und lerne Deutsch.","Du hast eine schöne Wohnung.","Er ist Arzt und hat viel Arbeit.","Wir sind in Berlin und haben Zeit."]', 'Ich bin Student und lerne Deutsch.', 2, 4),
  ('00000000-0000-4000-a000-0000659a172d', 'true_false', 'German word order puts the verb in second position in main clauses.', '["True","False"]', 'True', 1, 5),
  ('00000000-0000-4000-a000-0000659a172d', 'fill_blank', 'Complete: Ich ___ (office) Deutsch.', '["das Büro","lernt","lernst","lernen"]', 'lerne', 2, 6),
  ('00000000-0000-4000-a000-0000659a172d', 'multiple_choice', 'What is the German word for "meeting"?', '["die Besprechung","der Chef","das Gehalt","die Stelle"]', 'die Besprechung', 1, 7),
  ('00000000-0000-4000-a000-0000659a172d', 'true_false', 'In German, ALL nouns are always capitalised.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-0000659a172d', 'multiple_choice', 'How do you say "please" in a restaurant in Germany?', '["Bitte","Danke","Tschüss","Hallo"]', 'Bitte', 1, 9),
  ('00000000-0000-4000-a000-0000659a172d', 'fill_blank', 'Wo ___ (to live) du?', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 2, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, french_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-0000659a172d', 'Ich arbeite bei Siemens.', 'I work at Siemens.', 'أعمل في سيمنز.', NULL, 'Used in Arbeit und Berufe', 'neutral', false, 1),
  ('00000000-0000-4000-a000-0000659a172d', 'Können wir einen Termin vereinbaren?', 'Can we schedule a meeting?', 'هل يمكننا تحديد موعد؟', NULL, 'Used in Arbeit und Berufe', 'formal', false, 2),
  ('00000000-0000-4000-a000-0000659a172d', 'Ich schicke Ihnen die Unterlagen per E-Mail.', 'I''ll send you the documents by email.', 'سأرسل لكم المستندات عبر البريد الإلكتروني.', NULL, 'Used in Arbeit und Berufe', 'formal', false, 3),
  ('00000000-0000-4000-a000-0000659a172d', 'Vielen Dank für Ihre Unterstützung!', 'Thank you very much for your support!', 'شكراً جزيلاً لدعمكم!', NULL, 'Used in Arbeit und Berufe', 'formal', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-0000659a172d', 'der der Beruf (die Berufe)', 'profession — المهنة', 'noun', 'vocabulary', 1),
  ('00000000-0000-4000-a000-0000659a172d', 'die die Firma (die Firmen)', 'company — الشركة', 'noun', 'vocabulary', 2),
  ('00000000-0000-4000-a000-0000659a172d', 'der der Kollege (die Kollegen)', 'colleague — الزميل', 'noun', 'vocabulary', 3),
  ('00000000-0000-4000-a000-0000659a172d', 'das das Büro (die Büros)', 'office — المكتب', 'noun', 'vocabulary', 4),
  ('00000000-0000-4000-a000-0000659a172d', 'die die Besprechung (die Besprechungen)', 'meeting — الاجتماع', 'noun', 'vocabulary', 5),
  ('00000000-0000-4000-a000-0000659a172d', 'der der Chef (die Chefs)', 'boss — المدير', 'noun', 'vocabulary', 6),
  ('00000000-0000-4000-a000-0000659a172d', 'das das Gehalt (die Gehälter)', 'salary — الراتب', 'noun', 'vocabulary', 7),
  ('00000000-0000-4000-a000-0000659a172d', 'die die Stelle (die Stellen)', 'position — الوظيفة', 'noun', 'vocabulary', 8),
  ('00000000-0000-4000-a000-0000659a172d', 'Hallo', 'hello — مرحباً', 'interjection', 'vocabulary', 9),
  ('00000000-0000-4000-a000-0000659a172d', 'Guten Morgen', 'good morning — صباح الخير', 'phrase', 'vocabulary', 10),
  ('00000000-0000-4000-a000-0000659a172d', 'Guten Tag', 'good day — نهارك سعيد', 'phrase', 'vocabulary', 11),
  ('00000000-0000-4000-a000-0000659a172d', 'Tschüss', 'bye — مع السلامة', 'interjection', 'vocabulary', 12),
  ('00000000-0000-4000-a000-0000659a172d', 'der der Name (die Namen)', 'name — الاسم', 'noun', 'vocabulary', 13),
  ('00000000-0000-4000-a000-0000659a172d', 'wie', 'how — كيف', 'adverb', 'vocabulary', 14),
  ('00000000-0000-4000-a000-0000659a172d', 'freuen', 'to be pleased — يسر', 'verb', 'vocabulary', 15),
  ('00000000-0000-4000-a000-0000659a172d', 'Ich bin Student und lerne Deutsch.', 'I am a student and I learn German.', 'sein und haben (To Be and To Have)', 'grammar', 16),
  ('00000000-0000-4000-a000-0000659a172d', 'Du hast eine schöne Wohnung.', 'You have a nice apartment.', 'sein und haben (To Be and To Have)', 'grammar', 17),
  ('00000000-0000-4000-a000-0000659a172d', 'Er ist Arzt und hat viel Arbeit.', 'He is a doctor and has a lot of work.', 'sein und haben (To Be and To Have)', 'grammar', 18);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, french_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-0000659a172d', 'Berufe — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', NULL, 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, french_translation, duration_seconds, speaker_count, scenario) values
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

[Chef]: نعم، فكرة جيدة. ولا تنسوا المستندات.', '[Chef]: 

[Angestellter]: 

[Chef]: 

[Angestellter]: 

[Chef]: ', 60, 2, 'Arbeit und Berufe');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-0000659a172d', '🔊 Sprechen: Berufe', 'Roleplay: You are in a German café. Introduce yourself and talk about Professions. Your partner (AI) will respond naturally.', 'Professions', ARRAY['Use complete sentences — not single words','Pause between phrases, not between words','Don''t translate from Arabic word-for-word']::text[], ARRAY['der Beruf','die Firma','der Kollege','das Büro','die Besprechung','der Chef','das Gehalt','die Stelle']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-0000659a172d', '✏️ Schreiben: Berufe', 'Write an email to a German friend about "Professions". Tell them what you learned, what you found interesting, and ask two questions about their experience with this topic. Use at least 8 vocabulary words from this lesson. Sign off naturally ("Viele Grüße", "Liebe Grüße").', ARRAY['Start with "Hallo" or "Liebe/r"','Keep sentences short (Subject-Verb-Object)','End with a friendly farewell']::text[], ARRAY['der Beruf','die Firma','der Kollege','das Büro','die Besprechung','der Chef','das Gehalt','die Stelle']::text[], ARRAY['Sentence structure','Vocabulary usage']::text[], 50, 100, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000659a172d', 'Berufe — Roleplay', 'Professions', 'Student', 'Teacher', 'Practice conversation about Professions', 'Hallo! Lass uns über dieses Thema sprechen.', 'beginner', 1, ARRAY['der Beruf','die Firma','der Kollege','das Büro','die Besprechung','der Chef','das Gehalt','die Stelle']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000659a172d', 'Berufe — Advanced Roleplay', 'Professions', 'Customer', 'Assistant', 'Extended conversation about Professions', 'Guten Tag! Wie kann ich Ihnen helfen?', 'beginner', 2, ARRAY['der Beruf','die Firma','der Kollege','das Büro','die Besprechung','der Chef','das Gehalt','die Stelle']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-0000659a172d', 'Berufe — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Berufe".', 'Creative practice for Professions', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-0000659a172d', '📚 Hausaufgabe: Berufe', 'Complete these tasks to reinforce "Berufe".', 'mixed', '[{"description":"Create 10 flashcards from this lesson''s vocabulary — write German on one side, Arabic on the other. Test yourself 3 times."},{"description":"Write 6 sentences about Professions: 2 statements, 2 questions, 2 negations — all using sein_haben."},{"description":"Record yourself reading the dialogue aloud. Listen to the recording and note 3 things to improve."},{"description":"Find 3 real German websites, videos, or articles about Professions. Note 5 new words you discovered."}]', 50, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-0000659a172d', '🎯 Great work! In this lesson you learned 150 new words about Professions. You practiced sein_haben — an important grammar topic for A1 level. You read a text, listened to a dialogue, and practiced speaking and writing. Keep going!', '["150 vocabulary items about Professions","sein_haben — grammar explanation and practice","Reading comprehension: text about Professions","Listening comprehension: dialogue about Professions","Speaking practice: roleplay/discussion about Professions","Writing task: text about Professions"]', '[{"title":"Berufe Review","summary":"sein_haben — the main grammar focus. Focus on understanding when to use this structure and forming basic sentences."}]', ARRAY['der Beruf (profession)','die Firma (company)','der Kollege (colleague)','das Büro (office)','die Besprechung (meeting)']::text[], ARRAY['Don''t translate from Arabic word-for-word — German has different sentence structure','Learn every noun with its article: NEVER learn "Tisch" alone, always "der Tisch"','Verb always in position 2 in main clauses']::text[], ARRAY['Practice 15-20 minutes daily — consistency beats intensity','Speak out loud: German pronunciation needs muscle memory','Use the new vocabulary within 24 hours or you''ll forget it','Watch German YouTube videos about Professions for authentic input']::text[]);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000659a172d', 'Pronunciation: German sounds for "work"', 'In German, vowels are pure — unlike English diphthongs. The "ch" sound after a, o, u is guttural (like Arabic خ). After e, i, ä, ö, ü it''s soft (like English "huge" without the "u").

Common mistake for Arabic speakers: Arabic speakers tend to over-emphasise consonants. German flows — connect words smoothly (e.g., "Ich habe" becomes /ɪçabə/ not /ɪç ˈhaːbə/).', '[]', '[{"german":"der Beruf","arabic":"","english":"","phonetic":""},{"german":"die Firma","arabic":"","english":"","phonetic":""},{"german":"der Kollege","arabic":"","english":"","phonetic":""},{"german":"das Büro","arabic":"","english":"","phonetic":""}]', '[]', 10);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000659a172d', 'translation', 'Translate to German: "I use the word "profession" in a sentence about Professions."', '[]', 'Was ist dein Beruf?', 'Use der  "der Beruf" with the correct sein_haben form.', 1, 40);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000659a172d', 'translation', 'Translate to German: "I use the word "company" in a sentence about Professions."', '[]', 'Die Firma ist in Berlin.', 'Use die  "die Firma" with the correct sein_haben form.', 1, 41);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000659a172d', 'translation', 'Translate to German: "I use the word "colleague" in a sentence about Professions."', '[]', 'Mein Kollege hilft mir.', 'Use der  "der Kollege" with the correct sein_haben form.', 1, 42);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000659a172d', 'Culture: 🇩🇪 Deutsche Kultur: Professions', 'In Germany, Professions is approached with typical German directness and efficiency. Germans value clarity over small talk. When discussing Professions, expect honest feedback and straightforward questions. This is not rudeness — it''s cultural. Arabic speakers often find this too direct at first, but you''ll appreciate it once you get used to it.

في ألمانيا، يتم التعامل مع Professions بوضوح وكفاءة. الألمان يقدرون الوضوح أكثر من المجاملات. لا تعتبر هذه وقاحة - إنها ثقافة مختلفة.', '["Tip: Always use \"Sie\" (formal) with strangers and colleagues","Tip: Germans appreciate punctuality — arrive 5 minutes early","Tip: Direct feedback is a sign of respect, not criticism","Tip: Prepare factual arguments, not emotional appeals"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000659a172d', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Addressing colleagues with \"du\" immediately","correction":"Use \"Sie\" until explicitly invited to use \"du\"","explanation":"Arabic uses \"anta/anti\" universally. German has strict formal/informal distinction at work."},{"mistake":"Using the wrong article (der/die/das) for nouns","correction":"Learn each noun with its article as one piece","explanation":"Arabic has no articles for nouns without gender connection"}]', 30);

  -- Lesson 2: Am Arbeitsplatz (L-A1-05-02)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-0000659a172e', '00000000-0000-4000-a000-000039b4d362', 'Am Arbeitsplatz', 'Learn workplace and office vocabulary.', 'Workplace', 'vocabulary', '["Understand and use 150 key vocabulary words about Workplace","Apply present_tense correctly in sentences","Read and comprehend a text about Workplace","Listen and understand a natural dialogue about Workplace","Speak about Workplace with confidence","Write a short text about Workplace using new vocabulary"]', 30, 2, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, french_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-0000659a172e', 'der Beruf', 'المهنة', 'profession', NULL, 'der', 'die Berufe', 'noun', 'Was ist dein Beruf?', 'What is your profession?', 'A1', 1),
  ('00000000-0000-4000-a000-0000659a172e', 'die Firma', 'الشركة', 'company', NULL, 'die', 'die Firmen', 'noun', 'Die Firma ist in Berlin.', 'The company is in Berlin.', 'A1', 2),
  ('00000000-0000-4000-a000-0000659a172e', 'der Kollege', 'الزميل', 'colleague', NULL, 'der', 'die Kollegen', 'noun', 'Mein Kollege hilft mir.', 'My colleague helps me.', 'A1', 3),
  ('00000000-0000-4000-a000-0000659a172e', 'das Büro', 'المكتب', 'office', NULL, 'das', 'die Büros', 'noun', 'Das Büro ist im dritten Stock.', 'The office is on the third floor.', 'A1', 4),
  ('00000000-0000-4000-a000-0000659a172e', 'die Besprechung', 'الاجتماع', 'meeting', NULL, 'die', 'die Besprechungen', 'noun', 'Wir haben eine Besprechung.', 'We have a meeting.', 'B1', 5),
  ('00000000-0000-4000-a000-0000659a172e', 'der Chef', 'المدير', 'boss', NULL, 'der', 'die Chefs', 'noun', 'Mein Chef ist freundlich.', 'My boss is friendly.', 'A1', 6),
  ('00000000-0000-4000-a000-0000659a172e', 'das Gehalt', 'الراتب', 'salary', NULL, 'das', 'die Gehälter', 'noun', 'Das Gehalt ist gut.', 'The salary is good.', 'B1', 7),
  ('00000000-0000-4000-a000-0000659a172e', 'die Stelle', 'الوظيفة', 'position', NULL, 'die', 'die Stellen', 'noun', 'Ich suche eine neue Stelle.', 'I am looking for a new position.', 'B1', 8),
  ('00000000-0000-4000-a000-0000659a172e', 'Hallo', 'مرحباً', 'hello', 'bonjour', NULL, NULL, 'interjection', 'Hallo, wie geht es dir?', 'Hello, how are you?', 'A1', 9),
  ('00000000-0000-4000-a000-0000659a172e', 'Guten Morgen', 'صباح الخير', 'good morning', 'bonjour (le matin)', NULL, NULL, 'phrase', 'Guten Morgen, Herr Müller.', 'Good morning, Mr. Müller.', 'A1', 10),
  ('00000000-0000-4000-a000-0000659a172e', 'Guten Tag', 'نهارك سعيد', 'good day', 'bonjour (l''après-midi)', NULL, NULL, 'phrase', 'Guten Tag, Frau Schmidt.', 'Good day, Mrs. Schmidt.', 'A1', 11),
  ('00000000-0000-4000-a000-0000659a172e', 'Tschüss', 'مع السلامة', 'bye', 'au revoir / salut', NULL, NULL, 'interjection', 'Tschüss, bis morgen!', 'Bye, see you tomorrow!', 'A1', 12),
  ('00000000-0000-4000-a000-0000659a172e', 'der Name', 'الاسم', 'name', 'le nom', 'der', 'die Namen', 'noun', 'Mein Name ist Anna.', 'My name is Anna.', 'A1', 13),
  ('00000000-0000-4000-a000-0000659a172e', 'wie', 'كيف', 'how', 'comment', NULL, NULL, 'adverb', 'Wie heißt du?', 'What is your name?', 'A1', 14),
  ('00000000-0000-4000-a000-0000659a172e', 'freuen', 'يسر', 'to be pleased', 'se réjouir', NULL, NULL, 'verb', 'Ich freue mich, dich kennenzulernen.', 'I am pleased to meet you.', 'A1', 15),
  ('00000000-0000-4000-a000-0000659a172e', 'Willkommen', 'أهلاً وسهلاً', 'welcome', 'bienvenue', NULL, NULL, 'interjection', 'Willkommen in Deutschland!', 'Welcome to Germany!', 'A1', 16),
  ('00000000-0000-4000-a000-0000659a172e', 'die Familie', 'العائلة', 'family', 'la famille', 'die', 'die Familien', 'noun', 'Meine Familie ist groß.', 'My family is big.', 'A1', 17),
  ('00000000-0000-4000-a000-0000659a172e', 'der Vater', 'الأب', 'father', 'le père', 'der', 'die Väter', 'noun', 'Mein Vater ist Ingenieur.', 'My father is an engineer.', 'A1', 18),
  ('00000000-0000-4000-a000-0000659a172e', 'die Mutter', 'الأم', 'mother', 'la mère', 'die', 'die Mütter', 'noun', 'Meine Mutter kocht gut.', 'My mother cooks well.', 'A1', 19),
  ('00000000-0000-4000-a000-0000659a172e', 'der Bruder', 'الأخ', 'brother', 'le frère', 'der', 'die Brüder', 'noun', 'Mein Bruder ist 15 Jahre alt.', 'My brother is 15 years old.', 'A1', 20),
  ('00000000-0000-4000-a000-0000659a172e', 'die Schwester', 'الأخت', 'sister', 'la sœur', 'die', 'die Schwestern', 'noun', 'Meine Schwester studiert Medizin.', 'My sister studies medicine.', 'A1', 21),
  ('00000000-0000-4000-a000-0000659a172e', 'die Geschwister', 'الإخوة', 'siblings', 'les frères et sœurs', 'die', NULL, 'noun', 'Hast du Geschwister?', 'Do you have siblings?', 'A1', 22),
  ('00000000-0000-4000-a000-0000659a172e', 'der Sohn', 'الابن', 'son', 'le fils', 'der', 'die Söhne', 'noun', 'Wir haben einen Sohn.', 'We have a son.', 'A1', 23),
  ('00000000-0000-4000-a000-0000659a172e', 'die Tochter', 'الابنة', 'daughter', 'la fille', 'die', 'die Töchter', 'noun', 'Meine Tochter geht zur Schule.', 'My daughter goes to school.', 'A1', 24),
  ('00000000-0000-4000-a000-0000659a172e', 'die Großeltern', 'الأجداد', 'grandparents', 'les grands-parents', 'die', NULL, 'noun', 'Meine Großeltern wohnen auf dem Land.', 'My grandparents live in the countryside.', 'A1', 25),
  ('00000000-0000-4000-a000-0000659a172e', 'verheiratet', 'متزوج', 'married', 'marié(e)', NULL, NULL, 'adjective', 'Meine Eltern sind verheiratet.', 'My parents are married.', 'A1', 26),
  ('00000000-0000-4000-a000-0000659a172e', 'das Brot', 'الخبز', 'bread', 'le pain', 'das', 'die Brote', 'noun', 'Ich kaufe ein Brot.', 'I buy a loaf of bread.', 'A1', 27),
  ('00000000-0000-4000-a000-0000659a172e', 'die Milch', 'الحليب', 'milk', 'le lait', 'die', NULL, 'noun', 'Die Milch ist frisch.', 'The milk is fresh.', 'A1', 28),
  ('00000000-0000-4000-a000-0000659a172e', 'der Käse', 'الجبن', 'cheese', 'le fromage', 'der', NULL, 'noun', 'Der Käse schmeckt gut.', 'The cheese tastes good.', 'A1', 29),
  ('00000000-0000-4000-a000-0000659a172e', 'der Apfel', 'التفاح', 'apple', 'la pomme', 'der', 'die Äpfel', 'noun', 'Der Apfel ist rot.', 'The apple is red.', 'A1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000659a172e', 'Präsens der regelmäßigen Verben (Present Tense) / المضارع للأفعال المنتظمة', 'In German, regular verbs follow a consistent pattern. The infinitive ends in -en. Remove the -en and add the personal endings: ich -e, du -st, er/sie/es -t, wir -en, ihr -t, sie/Sie -en. For most Arabic speakers, this is easier than Arabic verb conjugation because German has fewer forms.', '[{"rule":"ich: stem + e","note":"Ich lerne, ich wohne, ich arbeite"},{"rule":"du: stem + st","note":"Du lernst, du wohnst, du arbeitest"},{"rule":"er/sie/es: stem + t","note":"Er lernt, sie wohnt, es arbeitet"},{"rule":"wir: stem + en","note":"Wir lernen, wir wohnen, wir arbeiten"},{"rule":"ihr: stem + t","note":"Ihr lernt, ihr wohnt, ihr arbeitet"},{"rule":"sie/Sie: stem + en","note":"Sie lernen, Sie wohnen"}]', '[{"german":"Ich lerne Deutsch.","arabic":"أنا أتعلم الألمانية.","english":"I am learning German."},{"german":"Du wohnst in Berlin.","arabic":"أنت تسكن في برلين.","english":"You live in Berlin."},{"german":"Er arbeitet bei Siemens.","arabic":"هو يعمل في سيمنز.","english":"He works at Siemens."}]', '[{"mistake":"Ich lernen Deutsch","correction":"Ich lerne Deutsch","explanation":"After \"ich\" we use the stem + e, not the infinitive."},{"mistake":"Er lerne Deutsch","correction":"Er lernt Deutsch","explanation":"After \"er/sie/es\" we add -t, not -e."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000659a172e', 'multiple_choice', 'Which German word matches "profession"?', '["der Beruf","die Firma","das Büro","die Besprechung"]', 'der Beruf', '"profession" = "der Beruf" in German. Article: der Plural: die Berufe', 1, 1),
  ('00000000-0000-4000-a000-0000659a172e', 'multiple_choice', 'Which German word matches "company"?', '["die Firma","der Beruf","der Kollege","das Büro"]', 'die Firma', '"company" = "die Firma" in German. Article: die Plural: die Firmen', 1, 2),
  ('00000000-0000-4000-a000-0000659a172e', 'multiple_choice', 'Which German word matches "colleague"?', '["der Kollege","der Beruf","die Besprechung","das Büro"]', 'der Kollege', '"colleague" = "der Kollege" in German. Article: der Plural: die Kollegen', 1, 3),
  ('00000000-0000-4000-a000-0000659a172e', 'multiple_choice', 'Which German word matches "office"?', '["das Büro","der Beruf","die Firma","der Kollege"]', 'das Büro', '"office" = "das Büro" in German. Article: das Plural: die Büros', 1, 4),
  ('00000000-0000-4000-a000-0000659a172e', 'multiple_choice', 'Which German word matches "meeting"?', '["der Kollege","der Beruf","das Büro","die Besprechung"]', 'die Besprechung', '"meeting" = "die Besprechung" in German. Article: die Plural: die Besprechungen', 1, 5),
  ('00000000-0000-4000-a000-0000659a172e', 'fill_gap', 'Complete the sentence: Ich ___ gern über Workplace. (sprechen)', '["spreche","sprichst","spricht","sprechen"]', 'spreche', 'ich spreche gern = I like to speak. Stem: sprech- + e.', 2, 6),
  ('00000000-0000-4000-a000-0000659a172e', 'translation', 'Translate to German: "I am learning about Workplace."', '["Ich lerne über Workplace.","Ich lerne Workplace.","Lerne ich Workplace."]', 'Ich lerne über Workplace.', '"Ich lerne über..." = "I am learning about..."', 2, 7),
  ('00000000-0000-4000-a000-0000659a172e', 'matching', 'Match: Which word pairs are correct?', '["der Beruf - profession, die Firma - company"]', 'Matched correctly', 'Each German word has a unique English equivalent.', 2, 8);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-0000659a172e', 'multiple_choice', 'What does "der Beruf" mean in English?', '["profession","to run","beautiful","yesterday"]', 'profession', 1, 1),
  ('00000000-0000-4000-a000-0000659a172e', 'multiple_choice', 'What is the correct article for "die Firma"?', '["der","die","das","den"]', 'die', 1, 2),
  ('00000000-0000-4000-a000-0000659a172e', 'true_false', 'The word "der Kollege" is related to Workplace.', '["True","False"]', 'True', 1, 3),
  ('00000000-0000-4000-a000-0000659a172e', 'multiple_choice', 'Which sentence correctly uses present_tense?', '["Ich lerne Deutsch.","Du wohnst in Berlin.","Er arbeitet bei Siemens."]', 'Ich lerne Deutsch.', 2, 4),
  ('00000000-0000-4000-a000-0000659a172e', 'true_false', 'German word order puts the verb in second position in main clauses.', '["True","False"]', 'True', 1, 5),
  ('00000000-0000-4000-a000-0000659a172e', 'fill_blank', 'Complete: Ich ___ (office) Deutsch.', '["das Büro","lernt","lernst","lernen"]', 'lerne', 2, 6),
  ('00000000-0000-4000-a000-0000659a172e', 'multiple_choice', 'What is the German word for "meeting"?', '["die Besprechung","der Chef","das Gehalt","die Stelle"]', 'die Besprechung', 1, 7),
  ('00000000-0000-4000-a000-0000659a172e', 'true_false', 'In German, ALL nouns are always capitalised.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-0000659a172e', 'multiple_choice', 'How do you say "please" in a restaurant in Germany?', '["Bitte","Danke","Tschüss","Hallo"]', 'Bitte', 1, 9),
  ('00000000-0000-4000-a000-0000659a172e', 'fill_blank', 'Wo ___ (to live) du?', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 2, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, french_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-0000659a172e', 'Ich arbeite bei Siemens.', 'I work at Siemens.', 'أعمل في سيمنز.', NULL, 'Used in Arbeit und Berufe', 'neutral', false, 1),
  ('00000000-0000-4000-a000-0000659a172e', 'Können wir einen Termin vereinbaren?', 'Can we schedule a meeting?', 'هل يمكننا تحديد موعد؟', NULL, 'Used in Arbeit und Berufe', 'formal', false, 2),
  ('00000000-0000-4000-a000-0000659a172e', 'Ich schicke Ihnen die Unterlagen per E-Mail.', 'I''ll send you the documents by email.', 'سأرسل لكم المستندات عبر البريد الإلكتروني.', NULL, 'Used in Arbeit und Berufe', 'formal', false, 3),
  ('00000000-0000-4000-a000-0000659a172e', 'Vielen Dank für Ihre Unterstützung!', 'Thank you very much for your support!', 'شكراً جزيلاً لدعمكم!', NULL, 'Used in Arbeit und Berufe', 'formal', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-0000659a172e', 'der der Beruf (die Berufe)', 'profession — المهنة', 'noun', 'vocabulary', 1),
  ('00000000-0000-4000-a000-0000659a172e', 'die die Firma (die Firmen)', 'company — الشركة', 'noun', 'vocabulary', 2),
  ('00000000-0000-4000-a000-0000659a172e', 'der der Kollege (die Kollegen)', 'colleague — الزميل', 'noun', 'vocabulary', 3),
  ('00000000-0000-4000-a000-0000659a172e', 'das das Büro (die Büros)', 'office — المكتب', 'noun', 'vocabulary', 4),
  ('00000000-0000-4000-a000-0000659a172e', 'die die Besprechung (die Besprechungen)', 'meeting — الاجتماع', 'noun', 'vocabulary', 5),
  ('00000000-0000-4000-a000-0000659a172e', 'der der Chef (die Chefs)', 'boss — المدير', 'noun', 'vocabulary', 6),
  ('00000000-0000-4000-a000-0000659a172e', 'das das Gehalt (die Gehälter)', 'salary — الراتب', 'noun', 'vocabulary', 7),
  ('00000000-0000-4000-a000-0000659a172e', 'die die Stelle (die Stellen)', 'position — الوظيفة', 'noun', 'vocabulary', 8),
  ('00000000-0000-4000-a000-0000659a172e', 'Hallo', 'hello — مرحباً', 'interjection', 'vocabulary', 9),
  ('00000000-0000-4000-a000-0000659a172e', 'Guten Morgen', 'good morning — صباح الخير', 'phrase', 'vocabulary', 10),
  ('00000000-0000-4000-a000-0000659a172e', 'Guten Tag', 'good day — نهارك سعيد', 'phrase', 'vocabulary', 11),
  ('00000000-0000-4000-a000-0000659a172e', 'Tschüss', 'bye — مع السلامة', 'interjection', 'vocabulary', 12),
  ('00000000-0000-4000-a000-0000659a172e', 'der der Name (die Namen)', 'name — الاسم', 'noun', 'vocabulary', 13),
  ('00000000-0000-4000-a000-0000659a172e', 'wie', 'how — كيف', 'adverb', 'vocabulary', 14),
  ('00000000-0000-4000-a000-0000659a172e', 'freuen', 'to be pleased — يسر', 'verb', 'vocabulary', 15),
  ('00000000-0000-4000-a000-0000659a172e', 'Ich lerne Deutsch.', 'I am learning German.', 'Präsens der regelmäßigen Verben (Present Tense)', 'grammar', 16),
  ('00000000-0000-4000-a000-0000659a172e', 'Du wohnst in Berlin.', 'You live in Berlin.', 'Präsens der regelmäßigen Verben (Present Tense)', 'grammar', 17),
  ('00000000-0000-4000-a000-0000659a172e', 'Er arbeitet bei Siemens.', 'He works at Siemens.', 'Präsens der regelmäßigen Verben (Present Tense)', 'grammar', 18);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, french_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-0000659a172e', 'Am Arbeitsplatz — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', NULL, 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, french_translation, duration_seconds, speaker_count, scenario) values
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

[Chef]: نعم، فكرة جيدة. ولا تنسوا المستندات.', '[Chef]: 

[Angestellter]: 

[Chef]: 

[Angestellter]: 

[Chef]: ', 60, 2, 'Arbeit und Berufe');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-0000659a172e', '🔊 Sprechen: Am Arbeitsplatz', 'Roleplay: You are in a German café. Introduce yourself and talk about Workplace. Your partner (AI) will respond naturally.', 'Workplace', ARRAY['Use complete sentences — not single words','Pause between phrases, not between words','Don''t translate from Arabic word-for-word']::text[], ARRAY['der Beruf','die Firma','der Kollege','das Büro','die Besprechung','der Chef','das Gehalt','die Stelle']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-0000659a172e', '✏️ Schreiben: Am Arbeitsplatz', 'Write an email to a German friend about "Workplace". Tell them what you learned, what you found interesting, and ask two questions about their experience with this topic. Use at least 8 vocabulary words from this lesson. Sign off naturally ("Viele Grüße", "Liebe Grüße").', ARRAY['Start with "Hallo" or "Liebe/r"','Keep sentences short (Subject-Verb-Object)','End with a friendly farewell']::text[], ARRAY['der Beruf','die Firma','der Kollege','das Büro','die Besprechung','der Chef','das Gehalt','die Stelle']::text[], ARRAY['Sentence structure','Vocabulary usage']::text[], 50, 100, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000659a172e', 'Am Arbeitsplatz — Roleplay', 'Workplace', 'Student', 'Teacher', 'Practice conversation about Workplace', 'Hallo! Lass uns über dieses Thema sprechen.', 'beginner', 1, ARRAY['der Beruf','die Firma','der Kollege','das Büro','die Besprechung','der Chef','das Gehalt','die Stelle']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000659a172e', 'Am Arbeitsplatz — Advanced Roleplay', 'Workplace', 'Customer', 'Assistant', 'Extended conversation about Workplace', 'Guten Tag! Wie kann ich Ihnen helfen?', 'beginner', 2, ARRAY['der Beruf','die Firma','der Kollege','das Büro','die Besprechung','der Chef','das Gehalt','die Stelle']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-0000659a172e', 'Am Arbeitsplatz — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Am Arbeitsplatz".', 'Creative practice for Workplace', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-0000659a172e', '📚 Hausaufgabe: Am Arbeitsplatz', 'Complete these tasks to reinforce "Am Arbeitsplatz".', 'mixed', '[{"description":"Create 10 flashcards from this lesson''s vocabulary — write German on one side, Arabic on the other. Test yourself 3 times."},{"description":"Write 6 sentences about Workplace: 2 statements, 2 questions, 2 negations — all using present_tense."},{"description":"Record yourself reading the dialogue aloud. Listen to the recording and note 3 things to improve."},{"description":"Find 3 real German websites, videos, or articles about Workplace. Note 5 new words you discovered."}]', 50, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-0000659a172e', '🎯 Great work! In this lesson you learned 150 new words about Workplace. You practiced present_tense — an important grammar topic for A1 level. You read a text, listened to a dialogue, and practiced speaking and writing. Keep going!', '["150 vocabulary items about Workplace","present_tense — grammar explanation and practice","Reading comprehension: text about Workplace","Listening comprehension: dialogue about Workplace","Speaking practice: roleplay/discussion about Workplace","Writing task: text about Workplace"]', '[{"title":"Am Arbeitsplatz Review","summary":"present_tense — the main grammar focus. Focus on understanding when to use this structure and forming basic sentences."}]', ARRAY['der Beruf (profession)','die Firma (company)','der Kollege (colleague)','das Büro (office)','die Besprechung (meeting)']::text[], ARRAY['Don''t translate from Arabic word-for-word — German has different sentence structure','Learn every noun with its article: NEVER learn "Tisch" alone, always "der Tisch"','Verb always in position 2 in main clauses']::text[], ARRAY['Practice 15-20 minutes daily — consistency beats intensity','Speak out loud: German pronunciation needs muscle memory','Use the new vocabulary within 24 hours or you''ll forget it','Watch German YouTube videos about Workplace for authentic input']::text[]);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000659a172e', 'Pronunciation: German sounds for "work"', 'In German, vowels are pure — unlike English diphthongs. The "ch" sound after a, o, u is guttural (like Arabic خ). After e, i, ä, ö, ü it''s soft (like English "huge" without the "u").

Common mistake for Arabic speakers: Arabic speakers tend to over-emphasise consonants. German flows — connect words smoothly (e.g., "Ich habe" becomes /ɪçabə/ not /ɪç ˈhaːbə/).', '[]', '[{"german":"der Beruf","arabic":"","english":"","phonetic":""},{"german":"die Firma","arabic":"","english":"","phonetic":""},{"german":"der Kollege","arabic":"","english":"","phonetic":""},{"german":"das Büro","arabic":"","english":"","phonetic":""}]', '[]', 10);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000659a172e', 'translation', 'Translate to German: "I use the word "profession" in a sentence about Workplace."', '[]', 'Was ist dein Beruf?', 'Use der  "der Beruf" with the correct present_tense form.', 1, 40);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000659a172e', 'translation', 'Translate to German: "I use the word "company" in a sentence about Workplace."', '[]', 'Die Firma ist in Berlin.', 'Use die  "die Firma" with the correct present_tense form.', 1, 41);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000659a172e', 'translation', 'Translate to German: "I use the word "colleague" in a sentence about Workplace."', '[]', 'Mein Kollege hilft mir.', 'Use der  "der Kollege" with the correct present_tense form.', 1, 42);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000659a172e', 'Culture: 🇩🇪 Deutsche Kultur: Workplace', 'In Germany, Workplace is approached with typical German directness and efficiency. Germans value clarity over small talk. When discussing Workplace, expect honest feedback and straightforward questions. This is not rudeness — it''s cultural. Arabic speakers often find this too direct at first, but you''ll appreciate it once you get used to it.

في ألمانيا، يتم التعامل مع Workplace بوضوح وكفاءة. الألمان يقدرون الوضوح أكثر من المجاملات. لا تعتبر هذه وقاحة - إنها ثقافة مختلفة.', '["Tip: Always use \"Sie\" (formal) with strangers and colleagues","Tip: Germans appreciate punctuality — arrive 5 minutes early","Tip: Direct feedback is a sign of respect, not criticism","Tip: Prepare factual arguments, not emotional appeals"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000659a172e', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Addressing colleagues with \"du\" immediately","correction":"Use \"Sie\" until explicitly invited to use \"du\"","explanation":"Arabic uses \"anta/anti\" universally. German has strict formal/informal distinction at work."},{"mistake":"Using the wrong article (der/die/das) for nouns","correction":"Learn each noun with its article as one piece","explanation":"Arabic has no articles for nouns without gender connection"}]', 30);

  -- Lesson 3: Telefonnummer und E-Mail (L-A1-05-03)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-0000659a172f', '00000000-0000-4000-a000-000039b4d362', 'Telefonnummer und E-Mail', 'Practice giving phone numbers and email addresses.', 'Contact Details', 'vocabulary', '["Understand and use 150 key vocabulary words about Contact Details","Apply present_tense correctly in sentences","Read and comprehend a text about Contact Details","Listen and understand a natural dialogue about Contact Details","Speak about Contact Details with confidence","Write a short text about Contact Details using new vocabulary"]', 25, 3, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, french_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-0000659a172f', 'der Beruf', 'المهنة', 'profession', NULL, 'der', 'die Berufe', 'noun', 'Was ist dein Beruf?', 'What is your profession?', 'A1', 1),
  ('00000000-0000-4000-a000-0000659a172f', 'die Firma', 'الشركة', 'company', NULL, 'die', 'die Firmen', 'noun', 'Die Firma ist in Berlin.', 'The company is in Berlin.', 'A1', 2),
  ('00000000-0000-4000-a000-0000659a172f', 'der Kollege', 'الزميل', 'colleague', NULL, 'der', 'die Kollegen', 'noun', 'Mein Kollege hilft mir.', 'My colleague helps me.', 'A1', 3),
  ('00000000-0000-4000-a000-0000659a172f', 'das Büro', 'المكتب', 'office', NULL, 'das', 'die Büros', 'noun', 'Das Büro ist im dritten Stock.', 'The office is on the third floor.', 'A1', 4),
  ('00000000-0000-4000-a000-0000659a172f', 'die Besprechung', 'الاجتماع', 'meeting', NULL, 'die', 'die Besprechungen', 'noun', 'Wir haben eine Besprechung.', 'We have a meeting.', 'B1', 5),
  ('00000000-0000-4000-a000-0000659a172f', 'der Chef', 'المدير', 'boss', NULL, 'der', 'die Chefs', 'noun', 'Mein Chef ist freundlich.', 'My boss is friendly.', 'A1', 6),
  ('00000000-0000-4000-a000-0000659a172f', 'das Gehalt', 'الراتب', 'salary', NULL, 'das', 'die Gehälter', 'noun', 'Das Gehalt ist gut.', 'The salary is good.', 'B1', 7),
  ('00000000-0000-4000-a000-0000659a172f', 'die Stelle', 'الوظيفة', 'position', NULL, 'die', 'die Stellen', 'noun', 'Ich suche eine neue Stelle.', 'I am looking for a new position.', 'B1', 8),
  ('00000000-0000-4000-a000-0000659a172f', 'Hallo', 'مرحباً', 'hello', 'bonjour', NULL, NULL, 'interjection', 'Hallo, wie geht es dir?', 'Hello, how are you?', 'A1', 9),
  ('00000000-0000-4000-a000-0000659a172f', 'Guten Morgen', 'صباح الخير', 'good morning', 'bonjour (le matin)', NULL, NULL, 'phrase', 'Guten Morgen, Herr Müller.', 'Good morning, Mr. Müller.', 'A1', 10),
  ('00000000-0000-4000-a000-0000659a172f', 'Guten Tag', 'نهارك سعيد', 'good day', 'bonjour (l''après-midi)', NULL, NULL, 'phrase', 'Guten Tag, Frau Schmidt.', 'Good day, Mrs. Schmidt.', 'A1', 11),
  ('00000000-0000-4000-a000-0000659a172f', 'Tschüss', 'مع السلامة', 'bye', 'au revoir / salut', NULL, NULL, 'interjection', 'Tschüss, bis morgen!', 'Bye, see you tomorrow!', 'A1', 12),
  ('00000000-0000-4000-a000-0000659a172f', 'der Name', 'الاسم', 'name', 'le nom', 'der', 'die Namen', 'noun', 'Mein Name ist Anna.', 'My name is Anna.', 'A1', 13),
  ('00000000-0000-4000-a000-0000659a172f', 'wie', 'كيف', 'how', 'comment', NULL, NULL, 'adverb', 'Wie heißt du?', 'What is your name?', 'A1', 14),
  ('00000000-0000-4000-a000-0000659a172f', 'freuen', 'يسر', 'to be pleased', 'se réjouir', NULL, NULL, 'verb', 'Ich freue mich, dich kennenzulernen.', 'I am pleased to meet you.', 'A1', 15),
  ('00000000-0000-4000-a000-0000659a172f', 'Willkommen', 'أهلاً وسهلاً', 'welcome', 'bienvenue', NULL, NULL, 'interjection', 'Willkommen in Deutschland!', 'Welcome to Germany!', 'A1', 16),
  ('00000000-0000-4000-a000-0000659a172f', 'die Familie', 'العائلة', 'family', 'la famille', 'die', 'die Familien', 'noun', 'Meine Familie ist groß.', 'My family is big.', 'A1', 17),
  ('00000000-0000-4000-a000-0000659a172f', 'der Vater', 'الأب', 'father', 'le père', 'der', 'die Väter', 'noun', 'Mein Vater ist Ingenieur.', 'My father is an engineer.', 'A1', 18),
  ('00000000-0000-4000-a000-0000659a172f', 'die Mutter', 'الأم', 'mother', 'la mère', 'die', 'die Mütter', 'noun', 'Meine Mutter kocht gut.', 'My mother cooks well.', 'A1', 19),
  ('00000000-0000-4000-a000-0000659a172f', 'der Bruder', 'الأخ', 'brother', 'le frère', 'der', 'die Brüder', 'noun', 'Mein Bruder ist 15 Jahre alt.', 'My brother is 15 years old.', 'A1', 20),
  ('00000000-0000-4000-a000-0000659a172f', 'die Schwester', 'الأخت', 'sister', 'la sœur', 'die', 'die Schwestern', 'noun', 'Meine Schwester studiert Medizin.', 'My sister studies medicine.', 'A1', 21),
  ('00000000-0000-4000-a000-0000659a172f', 'die Geschwister', 'الإخوة', 'siblings', 'les frères et sœurs', 'die', NULL, 'noun', 'Hast du Geschwister?', 'Do you have siblings?', 'A1', 22),
  ('00000000-0000-4000-a000-0000659a172f', 'der Sohn', 'الابن', 'son', 'le fils', 'der', 'die Söhne', 'noun', 'Wir haben einen Sohn.', 'We have a son.', 'A1', 23),
  ('00000000-0000-4000-a000-0000659a172f', 'die Tochter', 'الابنة', 'daughter', 'la fille', 'die', 'die Töchter', 'noun', 'Meine Tochter geht zur Schule.', 'My daughter goes to school.', 'A1', 24),
  ('00000000-0000-4000-a000-0000659a172f', 'die Großeltern', 'الأجداد', 'grandparents', 'les grands-parents', 'die', NULL, 'noun', 'Meine Großeltern wohnen auf dem Land.', 'My grandparents live in the countryside.', 'A1', 25),
  ('00000000-0000-4000-a000-0000659a172f', 'verheiratet', 'متزوج', 'married', 'marié(e)', NULL, NULL, 'adjective', 'Meine Eltern sind verheiratet.', 'My parents are married.', 'A1', 26),
  ('00000000-0000-4000-a000-0000659a172f', 'das Brot', 'الخبز', 'bread', 'le pain', 'das', 'die Brote', 'noun', 'Ich kaufe ein Brot.', 'I buy a loaf of bread.', 'A1', 27),
  ('00000000-0000-4000-a000-0000659a172f', 'die Milch', 'الحليب', 'milk', 'le lait', 'die', NULL, 'noun', 'Die Milch ist frisch.', 'The milk is fresh.', 'A1', 28),
  ('00000000-0000-4000-a000-0000659a172f', 'der Käse', 'الجبن', 'cheese', 'le fromage', 'der', NULL, 'noun', 'Der Käse schmeckt gut.', 'The cheese tastes good.', 'A1', 29),
  ('00000000-0000-4000-a000-0000659a172f', 'der Apfel', 'التفاح', 'apple', 'la pomme', 'der', 'die Äpfel', 'noun', 'Der Apfel ist rot.', 'The apple is red.', 'A1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000659a172f', 'Präsens der regelmäßigen Verben (Present Tense) / المضارع للأفعال المنتظمة', 'In German, regular verbs follow a consistent pattern. The infinitive ends in -en. Remove the -en and add the personal endings: ich -e, du -st, er/sie/es -t, wir -en, ihr -t, sie/Sie -en. For most Arabic speakers, this is easier than Arabic verb conjugation because German has fewer forms.', '[{"rule":"ich: stem + e","note":"Ich lerne, ich wohne, ich arbeite"},{"rule":"du: stem + st","note":"Du lernst, du wohnst, du arbeitest"},{"rule":"er/sie/es: stem + t","note":"Er lernt, sie wohnt, es arbeitet"},{"rule":"wir: stem + en","note":"Wir lernen, wir wohnen, wir arbeiten"},{"rule":"ihr: stem + t","note":"Ihr lernt, ihr wohnt, ihr arbeitet"},{"rule":"sie/Sie: stem + en","note":"Sie lernen, Sie wohnen"}]', '[{"german":"Ich lerne Deutsch.","arabic":"أنا أتعلم الألمانية.","english":"I am learning German."},{"german":"Du wohnst in Berlin.","arabic":"أنت تسكن في برلين.","english":"You live in Berlin."},{"german":"Er arbeitet bei Siemens.","arabic":"هو يعمل في سيمنز.","english":"He works at Siemens."}]', '[{"mistake":"Ich lernen Deutsch","correction":"Ich lerne Deutsch","explanation":"After \"ich\" we use the stem + e, not the infinitive."},{"mistake":"Er lerne Deutsch","correction":"Er lernt Deutsch","explanation":"After \"er/sie/es\" we add -t, not -e."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000659a172f', 'multiple_choice', 'Which German word matches "profession"?', '["die Firma","der Kollege","die Besprechung","das Büro"]', 'der Beruf', '"profession" = "der Beruf" in German. Article: der Plural: die Berufe', 1, 1),
  ('00000000-0000-4000-a000-0000659a172f', 'multiple_choice', 'Which German word matches "company"?', '["der Kollege","die Besprechung","der Beruf","die Firma"]', 'die Firma', '"company" = "die Firma" in German. Article: die Plural: die Firmen', 1, 2),
  ('00000000-0000-4000-a000-0000659a172f', 'multiple_choice', 'Which German word matches "colleague"?', '["der Kollege","der Beruf","die Firma","das Büro"]', 'der Kollege', '"colleague" = "der Kollege" in German. Article: der Plural: die Kollegen', 1, 3),
  ('00000000-0000-4000-a000-0000659a172f', 'multiple_choice', 'Which German word matches "office"?', '["der Kollege","die Firma","der Beruf","das Büro"]', 'das Büro', '"office" = "das Büro" in German. Article: das Plural: die Büros', 1, 4),
  ('00000000-0000-4000-a000-0000659a172f', 'multiple_choice', 'Which German word matches "meeting"?', '["die Besprechung","der Beruf","die Firma","der Kollege"]', 'die Besprechung', '"meeting" = "die Besprechung" in German. Article: die Plural: die Besprechungen', 1, 5),
  ('00000000-0000-4000-a000-0000659a172f', 'fill_gap', 'Complete the sentence: Ich ___ gern über Contact Details. (sprechen)', '["spreche","sprichst","spricht","sprechen"]', 'spreche', 'ich spreche gern = I like to speak. Stem: sprech- + e.', 2, 6),
  ('00000000-0000-4000-a000-0000659a172f', 'translation', 'Translate to German: "I am learning about Contact Details."', '["Ich lerne über Contact Details.","Ich lerne Contact Details.","Lerne ich Contact Details."]', 'Ich lerne über Contact Details.', '"Ich lerne über..." = "I am learning about..."', 2, 7),
  ('00000000-0000-4000-a000-0000659a172f', 'matching', 'Match: Which word pairs are correct?', '["der Beruf - profession, die Firma - company"]', 'Matched correctly', 'Each German word has a unique English equivalent.', 2, 8);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-0000659a172f', 'multiple_choice', 'What does "der Beruf" mean in English?', '["profession","to run","beautiful","yesterday"]', 'profession', 1, 1),
  ('00000000-0000-4000-a000-0000659a172f', 'multiple_choice', 'What is the correct article for "die Firma"?', '["der","die","das","den"]', 'die', 1, 2),
  ('00000000-0000-4000-a000-0000659a172f', 'true_false', 'The word "der Kollege" is related to Contact Details.', '["True","False"]', 'True', 1, 3),
  ('00000000-0000-4000-a000-0000659a172f', 'multiple_choice', 'Which sentence correctly uses present_tense?', '["Ich lerne Deutsch.","Du wohnst in Berlin.","Er arbeitet bei Siemens."]', 'Ich lerne Deutsch.', 2, 4),
  ('00000000-0000-4000-a000-0000659a172f', 'true_false', 'German word order puts the verb in second position in main clauses.', '["True","False"]', 'True', 1, 5),
  ('00000000-0000-4000-a000-0000659a172f', 'fill_blank', 'Complete: Ich ___ (office) Deutsch.', '["das Büro","lernt","lernst","lernen"]', 'lerne', 2, 6),
  ('00000000-0000-4000-a000-0000659a172f', 'multiple_choice', 'What is the German word for "meeting"?', '["die Besprechung","der Chef","das Gehalt","die Stelle"]', 'die Besprechung', 1, 7),
  ('00000000-0000-4000-a000-0000659a172f', 'true_false', 'In German, ALL nouns are always capitalised.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-0000659a172f', 'multiple_choice', 'How do you say "please" in a restaurant in Germany?', '["Bitte","Danke","Tschüss","Hallo"]', 'Bitte', 1, 9),
  ('00000000-0000-4000-a000-0000659a172f', 'fill_blank', 'Wo ___ (to live) du?', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 2, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, french_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-0000659a172f', 'Ich arbeite bei Siemens.', 'I work at Siemens.', 'أعمل في سيمنز.', NULL, 'Used in Arbeit und Berufe', 'neutral', false, 1),
  ('00000000-0000-4000-a000-0000659a172f', 'Können wir einen Termin vereinbaren?', 'Can we schedule a meeting?', 'هل يمكننا تحديد موعد؟', NULL, 'Used in Arbeit und Berufe', 'formal', false, 2),
  ('00000000-0000-4000-a000-0000659a172f', 'Ich schicke Ihnen die Unterlagen per E-Mail.', 'I''ll send you the documents by email.', 'سأرسل لكم المستندات عبر البريد الإلكتروني.', NULL, 'Used in Arbeit und Berufe', 'formal', false, 3),
  ('00000000-0000-4000-a000-0000659a172f', 'Vielen Dank für Ihre Unterstützung!', 'Thank you very much for your support!', 'شكراً جزيلاً لدعمكم!', NULL, 'Used in Arbeit und Berufe', 'formal', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-0000659a172f', 'der der Beruf (die Berufe)', 'profession — المهنة', 'noun', 'vocabulary', 1),
  ('00000000-0000-4000-a000-0000659a172f', 'die die Firma (die Firmen)', 'company — الشركة', 'noun', 'vocabulary', 2),
  ('00000000-0000-4000-a000-0000659a172f', 'der der Kollege (die Kollegen)', 'colleague — الزميل', 'noun', 'vocabulary', 3),
  ('00000000-0000-4000-a000-0000659a172f', 'das das Büro (die Büros)', 'office — المكتب', 'noun', 'vocabulary', 4),
  ('00000000-0000-4000-a000-0000659a172f', 'die die Besprechung (die Besprechungen)', 'meeting — الاجتماع', 'noun', 'vocabulary', 5),
  ('00000000-0000-4000-a000-0000659a172f', 'der der Chef (die Chefs)', 'boss — المدير', 'noun', 'vocabulary', 6),
  ('00000000-0000-4000-a000-0000659a172f', 'das das Gehalt (die Gehälter)', 'salary — الراتب', 'noun', 'vocabulary', 7),
  ('00000000-0000-4000-a000-0000659a172f', 'die die Stelle (die Stellen)', 'position — الوظيفة', 'noun', 'vocabulary', 8),
  ('00000000-0000-4000-a000-0000659a172f', 'Hallo', 'hello — مرحباً', 'interjection', 'vocabulary', 9),
  ('00000000-0000-4000-a000-0000659a172f', 'Guten Morgen', 'good morning — صباح الخير', 'phrase', 'vocabulary', 10),
  ('00000000-0000-4000-a000-0000659a172f', 'Guten Tag', 'good day — نهارك سعيد', 'phrase', 'vocabulary', 11),
  ('00000000-0000-4000-a000-0000659a172f', 'Tschüss', 'bye — مع السلامة', 'interjection', 'vocabulary', 12),
  ('00000000-0000-4000-a000-0000659a172f', 'der der Name (die Namen)', 'name — الاسم', 'noun', 'vocabulary', 13),
  ('00000000-0000-4000-a000-0000659a172f', 'wie', 'how — كيف', 'adverb', 'vocabulary', 14),
  ('00000000-0000-4000-a000-0000659a172f', 'freuen', 'to be pleased — يسر', 'verb', 'vocabulary', 15),
  ('00000000-0000-4000-a000-0000659a172f', 'Ich lerne Deutsch.', 'I am learning German.', 'Präsens der regelmäßigen Verben (Present Tense)', 'grammar', 16),
  ('00000000-0000-4000-a000-0000659a172f', 'Du wohnst in Berlin.', 'You live in Berlin.', 'Präsens der regelmäßigen Verben (Present Tense)', 'grammar', 17),
  ('00000000-0000-4000-a000-0000659a172f', 'Er arbeitet bei Siemens.', 'He works at Siemens.', 'Präsens der regelmäßigen Verben (Present Tense)', 'grammar', 18);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, french_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-0000659a172f', 'Telefonnummer und E-Mail — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', NULL, 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, french_translation, duration_seconds, speaker_count, scenario) values
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

[Chef]: نعم، فكرة جيدة. ولا تنسوا المستندات.', '[Chef]: 

[Angestellter]: 

[Chef]: 

[Angestellter]: 

[Chef]: ', 60, 2, 'Arbeit und Berufe');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-0000659a172f', '🔊 Sprechen: Telefonnummer und E-Mail', 'Roleplay: You are in a German café. Introduce yourself and talk about Contact Details. Your partner (AI) will respond naturally.', 'Contact Details', ARRAY['Use complete sentences — not single words','Pause between phrases, not between words','Don''t translate from Arabic word-for-word']::text[], ARRAY['der Beruf','die Firma','der Kollege','das Büro','die Besprechung','der Chef','das Gehalt','die Stelle']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-0000659a172f', '✏️ Schreiben: Telefonnummer und E-Mail', 'Write an email to a German friend about "Contact Details". Tell them what you learned, what you found interesting, and ask two questions about their experience with this topic. Use at least 8 vocabulary words from this lesson. Sign off naturally ("Viele Grüße", "Liebe Grüße").', ARRAY['Start with "Hallo" or "Liebe/r"','Keep sentences short (Subject-Verb-Object)','End with a friendly farewell']::text[], ARRAY['der Beruf','die Firma','der Kollege','das Büro','die Besprechung','der Chef','das Gehalt','die Stelle']::text[], ARRAY['Sentence structure','Vocabulary usage']::text[], 50, 100, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000659a172f', 'Telefonnummer und E-Mail — Roleplay', 'Contact Details', 'Student', 'Teacher', 'Practice conversation about Contact Details', 'Hallo! Lass uns über dieses Thema sprechen.', 'beginner', 1, ARRAY['der Beruf','die Firma','der Kollege','das Büro','die Besprechung','der Chef','das Gehalt','die Stelle']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000659a172f', 'Telefonnummer und E-Mail — Advanced Roleplay', 'Contact Details', 'Customer', 'Assistant', 'Extended conversation about Contact Details', 'Guten Tag! Wie kann ich Ihnen helfen?', 'beginner', 2, ARRAY['der Beruf','die Firma','der Kollege','das Büro','die Besprechung','der Chef','das Gehalt','die Stelle']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-0000659a172f', 'Telefonnummer und E-Mail — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Telefonnummer und E-Mail".', 'Creative practice for Contact Details', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-0000659a172f', '📚 Hausaufgabe: Telefonnummer und E-Mail', 'Complete these tasks to reinforce "Telefonnummer und E-Mail".', 'mixed', '[{"description":"Create 10 flashcards from this lesson''s vocabulary — write German on one side, Arabic on the other. Test yourself 3 times."},{"description":"Write 6 sentences about Contact Details: 2 statements, 2 questions, 2 negations — all using present_tense."},{"description":"Record yourself reading the dialogue aloud. Listen to the recording and note 3 things to improve."},{"description":"Find 3 real German websites, videos, or articles about Contact Details. Note 5 new words you discovered."}]', 50, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-0000659a172f', '🎯 Great work! In this lesson you learned 150 new words about Contact Details. You practiced present_tense — an important grammar topic for A1 level. You read a text, listened to a dialogue, and practiced speaking and writing. Keep going!', '["150 vocabulary items about Contact Details","present_tense — grammar explanation and practice","Reading comprehension: text about Contact Details","Listening comprehension: dialogue about Contact Details","Speaking practice: roleplay/discussion about Contact Details","Writing task: text about Contact Details"]', '[{"title":"Telefonnummer und E-Mail Review","summary":"present_tense — the main grammar focus. Focus on understanding when to use this structure and forming basic sentences."}]', ARRAY['der Beruf (profession)','die Firma (company)','der Kollege (colleague)','das Büro (office)','die Besprechung (meeting)']::text[], ARRAY['Don''t translate from Arabic word-for-word — German has different sentence structure','Learn every noun with its article: NEVER learn "Tisch" alone, always "der Tisch"','Verb always in position 2 in main clauses']::text[], ARRAY['Practice 15-20 minutes daily — consistency beats intensity','Speak out loud: German pronunciation needs muscle memory','Use the new vocabulary within 24 hours or you''ll forget it','Watch German YouTube videos about Contact Details for authentic input']::text[]);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000659a172f', 'Pronunciation: German sounds for "work"', 'In German, vowels are pure — unlike English diphthongs. The "ch" sound after a, o, u is guttural (like Arabic خ). After e, i, ä, ö, ü it''s soft (like English "huge" without the "u").

Common mistake for Arabic speakers: Arabic speakers tend to over-emphasise consonants. German flows — connect words smoothly (e.g., "Ich habe" becomes /ɪçabə/ not /ɪç ˈhaːbə/).', '[]', '[{"german":"der Beruf","arabic":"","english":"","phonetic":""},{"german":"die Firma","arabic":"","english":"","phonetic":""},{"german":"der Kollege","arabic":"","english":"","phonetic":""},{"german":"das Büro","arabic":"","english":"","phonetic":""}]', '[]', 10);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000659a172f', 'translation', 'Translate to German: "I use the word "profession" in a sentence about Contact Details."', '[]', 'Was ist dein Beruf?', 'Use der  "der Beruf" with the correct present_tense form.', 1, 40);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000659a172f', 'translation', 'Translate to German: "I use the word "company" in a sentence about Contact Details."', '[]', 'Die Firma ist in Berlin.', 'Use die  "die Firma" with the correct present_tense form.', 1, 41);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000659a172f', 'translation', 'Translate to German: "I use the word "colleague" in a sentence about Contact Details."', '[]', 'Mein Kollege hilft mir.', 'Use der  "der Kollege" with the correct present_tense form.', 1, 42);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000659a172f', 'Culture: 🇩🇪 Deutsche Kultur: Contact Details', 'In Germany, Contact Details is approached with typical German directness and efficiency. Germans value clarity over small talk. When discussing Contact Details, expect honest feedback and straightforward questions. This is not rudeness — it''s cultural. Arabic speakers often find this too direct at first, but you''ll appreciate it once you get used to it.

في ألمانيا، يتم التعامل مع Contact Details بوضوح وكفاءة. الألمان يقدرون الوضوح أكثر من المجاملات. لا تعتبر هذه وقاحة - إنها ثقافة مختلفة.', '["Tip: Always use \"Sie\" (formal) with strangers and colleagues","Tip: Germans appreciate punctuality — arrive 5 minutes early","Tip: Direct feedback is a sign of respect, not criticism","Tip: Prepare factual arguments, not emotional appeals"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000659a172f', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Addressing colleagues with \"du\" immediately","correction":"Use \"Sie\" until explicitly invited to use \"du\"","explanation":"Arabic uses \"anta/anti\" universally. German has strict formal/informal distinction at work."},{"mistake":"Using the wrong article (der/die/das) for nouns","correction":"Learn each noun with its article as one piece","explanation":"Arabic has no articles for nouns without gender connection"}]', 30);

  -- Lesson 4: Im Büro (L-A1-05-04)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-0000659a1730', '00000000-0000-4000-a000-000039b4d362', 'Im Büro', 'Learn office routines and basic workplace communication.', 'Office Life', 'speaking', '["Understand and apply present_tense rules correctly","Use present_tense in real conversations","Avoid common mistakes Arabic speakers make with present_tense","Read and understand present_tense in context","Listen and identify present_tense in speech","Write sentences using present_tense correctly"]', 30, 4, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, french_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-0000659a1730', 'der Beruf', 'المهنة', 'profession', NULL, 'der', 'die Berufe', 'noun', 'Was ist dein Beruf?', 'What is your profession?', 'A1', 1),
  ('00000000-0000-4000-a000-0000659a1730', 'die Firma', 'الشركة', 'company', NULL, 'die', 'die Firmen', 'noun', 'Die Firma ist in Berlin.', 'The company is in Berlin.', 'A1', 2),
  ('00000000-0000-4000-a000-0000659a1730', 'der Kollege', 'الزميل', 'colleague', NULL, 'der', 'die Kollegen', 'noun', 'Mein Kollege hilft mir.', 'My colleague helps me.', 'A1', 3),
  ('00000000-0000-4000-a000-0000659a1730', 'das Büro', 'المكتب', 'office', NULL, 'das', 'die Büros', 'noun', 'Das Büro ist im dritten Stock.', 'The office is on the third floor.', 'A1', 4),
  ('00000000-0000-4000-a000-0000659a1730', 'die Besprechung', 'الاجتماع', 'meeting', NULL, 'die', 'die Besprechungen', 'noun', 'Wir haben eine Besprechung.', 'We have a meeting.', 'B1', 5),
  ('00000000-0000-4000-a000-0000659a1730', 'der Chef', 'المدير', 'boss', NULL, 'der', 'die Chefs', 'noun', 'Mein Chef ist freundlich.', 'My boss is friendly.', 'A1', 6),
  ('00000000-0000-4000-a000-0000659a1730', 'das Gehalt', 'الراتب', 'salary', NULL, 'das', 'die Gehälter', 'noun', 'Das Gehalt ist gut.', 'The salary is good.', 'B1', 7),
  ('00000000-0000-4000-a000-0000659a1730', 'die Stelle', 'الوظيفة', 'position', NULL, 'die', 'die Stellen', 'noun', 'Ich suche eine neue Stelle.', 'I am looking for a new position.', 'B1', 8),
  ('00000000-0000-4000-a000-0000659a1730', 'Hallo', 'مرحباً', 'hello', 'bonjour', NULL, NULL, 'interjection', 'Hallo, wie geht es dir?', 'Hello, how are you?', 'A1', 9),
  ('00000000-0000-4000-a000-0000659a1730', 'Guten Morgen', 'صباح الخير', 'good morning', 'bonjour (le matin)', NULL, NULL, 'phrase', 'Guten Morgen, Herr Müller.', 'Good morning, Mr. Müller.', 'A1', 10),
  ('00000000-0000-4000-a000-0000659a1730', 'Guten Tag', 'نهارك سعيد', 'good day', 'bonjour (l''après-midi)', NULL, NULL, 'phrase', 'Guten Tag, Frau Schmidt.', 'Good day, Mrs. Schmidt.', 'A1', 11),
  ('00000000-0000-4000-a000-0000659a1730', 'Tschüss', 'مع السلامة', 'bye', 'au revoir / salut', NULL, NULL, 'interjection', 'Tschüss, bis morgen!', 'Bye, see you tomorrow!', 'A1', 12),
  ('00000000-0000-4000-a000-0000659a1730', 'der Name', 'الاسم', 'name', 'le nom', 'der', 'die Namen', 'noun', 'Mein Name ist Anna.', 'My name is Anna.', 'A1', 13),
  ('00000000-0000-4000-a000-0000659a1730', 'wie', 'كيف', 'how', 'comment', NULL, NULL, 'adverb', 'Wie heißt du?', 'What is your name?', 'A1', 14),
  ('00000000-0000-4000-a000-0000659a1730', 'freuen', 'يسر', 'to be pleased', 'se réjouir', NULL, NULL, 'verb', 'Ich freue mich, dich kennenzulernen.', 'I am pleased to meet you.', 'A1', 15),
  ('00000000-0000-4000-a000-0000659a1730', 'Willkommen', 'أهلاً وسهلاً', 'welcome', 'bienvenue', NULL, NULL, 'interjection', 'Willkommen in Deutschland!', 'Welcome to Germany!', 'A1', 16),
  ('00000000-0000-4000-a000-0000659a1730', 'die Familie', 'العائلة', 'family', 'la famille', 'die', 'die Familien', 'noun', 'Meine Familie ist groß.', 'My family is big.', 'A1', 17),
  ('00000000-0000-4000-a000-0000659a1730', 'der Vater', 'الأب', 'father', 'le père', 'der', 'die Väter', 'noun', 'Mein Vater ist Ingenieur.', 'My father is an engineer.', 'A1', 18),
  ('00000000-0000-4000-a000-0000659a1730', 'die Mutter', 'الأم', 'mother', 'la mère', 'die', 'die Mütter', 'noun', 'Meine Mutter kocht gut.', 'My mother cooks well.', 'A1', 19),
  ('00000000-0000-4000-a000-0000659a1730', 'der Bruder', 'الأخ', 'brother', 'le frère', 'der', 'die Brüder', 'noun', 'Mein Bruder ist 15 Jahre alt.', 'My brother is 15 years old.', 'A1', 20),
  ('00000000-0000-4000-a000-0000659a1730', 'die Schwester', 'الأخت', 'sister', 'la sœur', 'die', 'die Schwestern', 'noun', 'Meine Schwester studiert Medizin.', 'My sister studies medicine.', 'A1', 21),
  ('00000000-0000-4000-a000-0000659a1730', 'die Geschwister', 'الإخوة', 'siblings', 'les frères et sœurs', 'die', NULL, 'noun', 'Hast du Geschwister?', 'Do you have siblings?', 'A1', 22),
  ('00000000-0000-4000-a000-0000659a1730', 'der Sohn', 'الابن', 'son', 'le fils', 'der', 'die Söhne', 'noun', 'Wir haben einen Sohn.', 'We have a son.', 'A1', 23),
  ('00000000-0000-4000-a000-0000659a1730', 'die Tochter', 'الابنة', 'daughter', 'la fille', 'die', 'die Töchter', 'noun', 'Meine Tochter geht zur Schule.', 'My daughter goes to school.', 'A1', 24),
  ('00000000-0000-4000-a000-0000659a1730', 'die Großeltern', 'الأجداد', 'grandparents', 'les grands-parents', 'die', NULL, 'noun', 'Meine Großeltern wohnen auf dem Land.', 'My grandparents live in the countryside.', 'A1', 25),
  ('00000000-0000-4000-a000-0000659a1730', 'verheiratet', 'متزوج', 'married', 'marié(e)', NULL, NULL, 'adjective', 'Meine Eltern sind verheiratet.', 'My parents are married.', 'A1', 26),
  ('00000000-0000-4000-a000-0000659a1730', 'das Brot', 'الخبز', 'bread', 'le pain', 'das', 'die Brote', 'noun', 'Ich kaufe ein Brot.', 'I buy a loaf of bread.', 'A1', 27),
  ('00000000-0000-4000-a000-0000659a1730', 'die Milch', 'الحليب', 'milk', 'le lait', 'die', NULL, 'noun', 'Die Milch ist frisch.', 'The milk is fresh.', 'A1', 28),
  ('00000000-0000-4000-a000-0000659a1730', 'der Käse', 'الجبن', 'cheese', 'le fromage', 'der', NULL, 'noun', 'Der Käse schmeckt gut.', 'The cheese tastes good.', 'A1', 29),
  ('00000000-0000-4000-a000-0000659a1730', 'der Apfel', 'التفاح', 'apple', 'la pomme', 'der', 'die Äpfel', 'noun', 'Der Apfel ist rot.', 'The apple is red.', 'A1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000659a1730', 'Präsens der regelmäßigen Verben (Present Tense) / المضارع للأفعال المنتظمة', 'In German, regular verbs follow a consistent pattern. The infinitive ends in -en. Remove the -en and add the personal endings: ich -e, du -st, er/sie/es -t, wir -en, ihr -t, sie/Sie -en. For most Arabic speakers, this is easier than Arabic verb conjugation because German has fewer forms.', '[{"rule":"ich: stem + e","note":"Ich lerne, ich wohne, ich arbeite"},{"rule":"du: stem + st","note":"Du lernst, du wohnst, du arbeitest"},{"rule":"er/sie/es: stem + t","note":"Er lernt, sie wohnt, es arbeitet"},{"rule":"wir: stem + en","note":"Wir lernen, wir wohnen, wir arbeiten"},{"rule":"ihr: stem + t","note":"Ihr lernt, ihr wohnt, ihr arbeitet"},{"rule":"sie/Sie: stem + en","note":"Sie lernen, Sie wohnen"}]', '[{"german":"Ich lerne Deutsch.","arabic":"أنا أتعلم الألمانية.","english":"I am learning German."},{"german":"Du wohnst in Berlin.","arabic":"أنت تسكن في برلين.","english":"You live in Berlin."},{"german":"Er arbeitet bei Siemens.","arabic":"هو يعمل في سيمنز.","english":"He works at Siemens."}]', '[{"mistake":"Ich lernen Deutsch","correction":"Ich lerne Deutsch","explanation":"After \"ich\" we use the stem + e, not the infinitive."},{"mistake":"Er lerne Deutsch","correction":"Er lernt Deutsch","explanation":"After \"er/sie/es\" we add -t, not -e."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000659a1730', 'multiple_choice', 'Which German word matches "profession"?', '["der Kollege","die Firma","die Besprechung","das Büro"]', 'der Beruf', '"profession" = "der Beruf" in German. Article: der Plural: die Berufe', 1, 1),
  ('00000000-0000-4000-a000-0000659a1730', 'multiple_choice', 'Which German word matches "company"?', '["der Kollege","der Beruf","die Firma","die Besprechung"]', 'die Firma', '"company" = "die Firma" in German. Article: die Plural: die Firmen', 1, 2),
  ('00000000-0000-4000-a000-0000659a1730', 'multiple_choice', 'Which German word matches "colleague"?', '["die Besprechung","das Büro","die Firma","der Beruf"]', 'der Kollege', '"colleague" = "der Kollege" in German. Article: der Plural: die Kollegen', 1, 3),
  ('00000000-0000-4000-a000-0000659a1730', 'multiple_choice', 'Which German word matches "office"?', '["der Kollege","der Beruf","die Firma","die Besprechung"]', 'das Büro', '"office" = "das Büro" in German. Article: das Plural: die Büros', 1, 4),
  ('00000000-0000-4000-a000-0000659a1730', 'multiple_choice', 'Which German word matches "meeting"?', '["die Besprechung","der Kollege","das Büro","der Beruf"]', 'die Besprechung', '"meeting" = "die Besprechung" in German. Article: die Plural: die Besprechungen', 1, 5),
  ('00000000-0000-4000-a000-0000659a1730', 'fill_gap', 'Complete the sentence: Ich ___ gern über Office Life. (sprechen)', '["spreche","sprichst","spricht","sprechen"]', 'spreche', 'ich spreche gern = I like to speak. Stem: sprech- + e.', 2, 6),
  ('00000000-0000-4000-a000-0000659a1730', 'translation', 'Translate to German: "I am learning about Office Life."', '["Ich lerne über Office Life.","Ich lerne Office Life.","Lerne ich Office Life."]', 'Ich lerne über Office Life.', '"Ich lerne über..." = "I am learning about..."', 2, 7),
  ('00000000-0000-4000-a000-0000659a1730', 'matching', 'Match: Which word pairs are correct?', '["der Beruf - profession, die Firma - company"]', 'Matched correctly', 'Each German word has a unique English equivalent.', 2, 8);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-0000659a1730', 'multiple_choice', 'What does "der Beruf" mean in English?', '["profession","to run","beautiful","yesterday"]', 'profession', 1, 1),
  ('00000000-0000-4000-a000-0000659a1730', 'multiple_choice', 'What is the correct article for "die Firma"?', '["der","die","das","den"]', 'die', 1, 2),
  ('00000000-0000-4000-a000-0000659a1730', 'true_false', 'The word "der Kollege" is related to Office Life.', '["True","False"]', 'True', 1, 3),
  ('00000000-0000-4000-a000-0000659a1730', 'multiple_choice', 'Which sentence correctly uses present_tense?', '["Ich lerne Deutsch.","Du wohnst in Berlin.","Er arbeitet bei Siemens."]', 'Ich lerne Deutsch.', 2, 4),
  ('00000000-0000-4000-a000-0000659a1730', 'true_false', 'German word order puts the verb in second position in main clauses.', '["True","False"]', 'True', 1, 5),
  ('00000000-0000-4000-a000-0000659a1730', 'fill_blank', 'Complete: Ich ___ (office) Deutsch.', '["das Büro","lernt","lernst","lernen"]', 'lerne', 2, 6),
  ('00000000-0000-4000-a000-0000659a1730', 'multiple_choice', 'What is the German word for "meeting"?', '["die Besprechung","der Chef","das Gehalt","die Stelle"]', 'die Besprechung', 1, 7),
  ('00000000-0000-4000-a000-0000659a1730', 'true_false', 'In German, ALL nouns are always capitalised.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-0000659a1730', 'multiple_choice', 'How do you say "please" in a restaurant in Germany?', '["Bitte","Danke","Tschüss","Hallo"]', 'Bitte', 1, 9),
  ('00000000-0000-4000-a000-0000659a1730', 'fill_blank', 'Wo ___ (to live) du?', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 2, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, french_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-0000659a1730', 'Ich arbeite bei Siemens.', 'I work at Siemens.', 'أعمل في سيمنز.', NULL, 'Used in Arbeit und Berufe', 'neutral', false, 1),
  ('00000000-0000-4000-a000-0000659a1730', 'Können wir einen Termin vereinbaren?', 'Can we schedule a meeting?', 'هل يمكننا تحديد موعد؟', NULL, 'Used in Arbeit und Berufe', 'formal', false, 2),
  ('00000000-0000-4000-a000-0000659a1730', 'Ich schicke Ihnen die Unterlagen per E-Mail.', 'I''ll send you the documents by email.', 'سأرسل لكم المستندات عبر البريد الإلكتروني.', NULL, 'Used in Arbeit und Berufe', 'formal', false, 3),
  ('00000000-0000-4000-a000-0000659a1730', 'Vielen Dank für Ihre Unterstützung!', 'Thank you very much for your support!', 'شكراً جزيلاً لدعمكم!', NULL, 'Used in Arbeit und Berufe', 'formal', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-0000659a1730', 'der der Beruf (die Berufe)', 'profession — المهنة', 'noun', 'vocabulary', 1),
  ('00000000-0000-4000-a000-0000659a1730', 'die die Firma (die Firmen)', 'company — الشركة', 'noun', 'vocabulary', 2),
  ('00000000-0000-4000-a000-0000659a1730', 'der der Kollege (die Kollegen)', 'colleague — الزميل', 'noun', 'vocabulary', 3),
  ('00000000-0000-4000-a000-0000659a1730', 'das das Büro (die Büros)', 'office — المكتب', 'noun', 'vocabulary', 4),
  ('00000000-0000-4000-a000-0000659a1730', 'die die Besprechung (die Besprechungen)', 'meeting — الاجتماع', 'noun', 'vocabulary', 5),
  ('00000000-0000-4000-a000-0000659a1730', 'der der Chef (die Chefs)', 'boss — المدير', 'noun', 'vocabulary', 6),
  ('00000000-0000-4000-a000-0000659a1730', 'das das Gehalt (die Gehälter)', 'salary — الراتب', 'noun', 'vocabulary', 7),
  ('00000000-0000-4000-a000-0000659a1730', 'die die Stelle (die Stellen)', 'position — الوظيفة', 'noun', 'vocabulary', 8),
  ('00000000-0000-4000-a000-0000659a1730', 'Hallo', 'hello — مرحباً', 'interjection', 'vocabulary', 9),
  ('00000000-0000-4000-a000-0000659a1730', 'Guten Morgen', 'good morning — صباح الخير', 'phrase', 'vocabulary', 10),
  ('00000000-0000-4000-a000-0000659a1730', 'Guten Tag', 'good day — نهارك سعيد', 'phrase', 'vocabulary', 11),
  ('00000000-0000-4000-a000-0000659a1730', 'Tschüss', 'bye — مع السلامة', 'interjection', 'vocabulary', 12),
  ('00000000-0000-4000-a000-0000659a1730', 'der der Name (die Namen)', 'name — الاسم', 'noun', 'vocabulary', 13),
  ('00000000-0000-4000-a000-0000659a1730', 'wie', 'how — كيف', 'adverb', 'vocabulary', 14),
  ('00000000-0000-4000-a000-0000659a1730', 'freuen', 'to be pleased — يسر', 'verb', 'vocabulary', 15),
  ('00000000-0000-4000-a000-0000659a1730', 'Ich lerne Deutsch.', 'I am learning German.', 'Präsens der regelmäßigen Verben (Present Tense)', 'grammar', 16),
  ('00000000-0000-4000-a000-0000659a1730', 'Du wohnst in Berlin.', 'You live in Berlin.', 'Präsens der regelmäßigen Verben (Present Tense)', 'grammar', 17),
  ('00000000-0000-4000-a000-0000659a1730', 'Er arbeitet bei Siemens.', 'He works at Siemens.', 'Präsens der regelmäßigen Verben (Present Tense)', 'grammar', 18);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, french_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-0000659a1730', 'Im Büro — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', NULL, 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, french_translation, duration_seconds, speaker_count, scenario) values
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

[Chef]: نعم، فكرة جيدة. ولا تنسوا المستندات.', '[Chef]: 

[Angestellter]: 

[Chef]: 

[Angestellter]: 

[Chef]: ', 60, 2, 'Arbeit und Berufe');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-0000659a1730', '🔊 Sprechen: Im Büro', 'Roleplay: You are in a German café. Introduce yourself and talk about Office Life. Your partner (AI) will respond naturally.', 'Office Life', ARRAY['Use complete sentences — not single words','Pause between phrases, not between words','Don''t translate from Arabic word-for-word']::text[], ARRAY['der Beruf','die Firma','der Kollege','das Büro','die Besprechung','der Chef','das Gehalt','die Stelle']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-0000659a1730', '✏️ Schreiben: Im Büro', 'Write an email to a German friend about "Office Life". Tell them what you learned, what you found interesting, and ask two questions about their experience with this topic. Use at least 8 vocabulary words from this lesson. Sign off naturally ("Viele Grüße", "Liebe Grüße").', ARRAY['Start with "Hallo" or "Liebe/r"','Keep sentences short (Subject-Verb-Object)','End with a friendly farewell']::text[], ARRAY['der Beruf','die Firma','der Kollege','das Büro','die Besprechung','der Chef','das Gehalt','die Stelle']::text[], ARRAY['Sentence structure','Vocabulary usage']::text[], 50, 100, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000659a1730', 'Im Büro — Roleplay', 'Office Life', 'Student', 'Teacher', 'Practice conversation about Office Life', 'Hallo! Lass uns über dieses Thema sprechen.', 'beginner', 1, ARRAY['der Beruf','die Firma','der Kollege','das Büro','die Besprechung','der Chef','das Gehalt','die Stelle']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000659a1730', 'Im Büro — Advanced Roleplay', 'Office Life', 'Customer', 'Assistant', 'Extended conversation about Office Life', 'Guten Tag! Wie kann ich Ihnen helfen?', 'beginner', 2, ARRAY['der Beruf','die Firma','der Kollege','das Büro','die Besprechung','der Chef','das Gehalt','die Stelle']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-0000659a1730', 'Im Büro — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Im Büro".', 'Creative practice for Office Life', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-0000659a1730', '📚 Hausaufgabe: Im Büro', 'Complete these tasks to reinforce "Im Büro".', 'mixed', '[{"description":"Create 10 flashcards from this lesson''s vocabulary — write German on one side, Arabic on the other. Test yourself 3 times."},{"description":"Write 6 sentences about Office Life: 2 statements, 2 questions, 2 negations — all using present_tense."},{"description":"Record yourself reading the dialogue aloud. Listen to the recording and note 3 things to improve."},{"description":"Find 3 real German websites, videos, or articles about Office Life. Note 5 new words you discovered."}]', 50, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-0000659a1730', '🎯 Great work! In this lesson you learned 150 new words about Office Life. You practiced present_tense — an important grammar topic for A1 level. You read a text, listened to a dialogue, and practiced speaking and writing. Keep going!', '["150 vocabulary items about Office Life","present_tense — grammar explanation and practice","Reading comprehension: text about Office Life","Listening comprehension: dialogue about Office Life","Speaking practice: roleplay/discussion about Office Life","Writing task: text about Office Life"]', '[{"title":"Im Büro Review","summary":"present_tense — the main grammar focus. Focus on understanding when to use this structure and forming basic sentences."}]', ARRAY['der Beruf (profession)','die Firma (company)','der Kollege (colleague)','das Büro (office)','die Besprechung (meeting)']::text[], ARRAY['Don''t translate from Arabic word-for-word — German has different sentence structure','Learn every noun with its article: NEVER learn "Tisch" alone, always "der Tisch"','Verb always in position 2 in main clauses']::text[], ARRAY['Practice 15-20 minutes daily — consistency beats intensity','Speak out loud: German pronunciation needs muscle memory','Use the new vocabulary within 24 hours or you''ll forget it','Watch German YouTube videos about Office Life for authentic input']::text[]);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000659a1730', 'Pronunciation: German sounds for "work"', 'In German, vowels are pure — unlike English diphthongs. The "ch" sound after a, o, u is guttural (like Arabic خ). After e, i, ä, ö, ü it''s soft (like English "huge" without the "u").

Common mistake for Arabic speakers: Arabic speakers tend to over-emphasise consonants. German flows — connect words smoothly (e.g., "Ich habe" becomes /ɪçabə/ not /ɪç ˈhaːbə/).', '[]', '[{"german":"der Beruf","arabic":"","english":"","phonetic":""},{"german":"die Firma","arabic":"","english":"","phonetic":""},{"german":"der Kollege","arabic":"","english":"","phonetic":""},{"german":"das Büro","arabic":"","english":"","phonetic":""}]', '[]', 10);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000659a1730', 'translation', 'Translate to German: "I use the word "profession" in a sentence about Office Life."', '[]', 'Was ist dein Beruf?', 'Use der  "der Beruf" with the correct present_tense form.', 1, 40);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000659a1730', 'translation', 'Translate to German: "I use the word "company" in a sentence about Office Life."', '[]', 'Die Firma ist in Berlin.', 'Use die  "die Firma" with the correct present_tense form.', 1, 41);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000659a1730', 'translation', 'Translate to German: "I use the word "colleague" in a sentence about Office Life."', '[]', 'Mein Kollege hilft mir.', 'Use der  "der Kollege" with the correct present_tense form.', 1, 42);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000659a1730', 'Culture: 🇩🇪 Deutsche Kultur: Office Life', 'In Germany, Office Life is approached with typical German directness and efficiency. Germans value clarity over small talk. When discussing Office Life, expect honest feedback and straightforward questions. This is not rudeness — it''s cultural. Arabic speakers often find this too direct at first, but you''ll appreciate it once you get used to it.

في ألمانيا، يتم التعامل مع Office Life بوضوح وكفاءة. الألمان يقدرون الوضوح أكثر من المجاملات. لا تعتبر هذه وقاحة - إنها ثقافة مختلفة.', '["Tip: Always use \"Sie\" (formal) with strangers and colleagues","Tip: Germans appreciate punctuality — arrive 5 minutes early","Tip: Direct feedback is a sign of respect, not criticism","Tip: Prepare factual arguments, not emotional appeals"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000659a1730', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Addressing colleagues with \"du\" immediately","correction":"Use \"Sie\" until explicitly invited to use \"du\"","explanation":"Arabic uses \"anta/anti\" universally. German has strict formal/informal distinction at work."},{"mistake":"Using the wrong article (der/die/das) for nouns","correction":"Learn each noun with its article as one piece","explanation":"Arabic has no articles for nouns without gender connection"}]', 30);

  -- Lesson 5: Was sind Sie von Beruf? (L-A1-05-05)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-0000659a1731', '00000000-0000-4000-a000-000039b4d362', 'Was sind Sie von Beruf?', 'Practice talking about professions and workplaces.', 'Talking About Jobs', 'speaking', '["Understand and apply sein_haben rules correctly","Use sein_haben in real conversations","Avoid common mistakes Arabic speakers make with sein_haben","Read and understand sein_haben in context","Listen and identify sein_haben in speech","Write sentences using sein_haben correctly"]', 20, 5, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, french_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-0000659a1731', 'der Beruf', 'المهنة', 'profession', NULL, 'der', 'die Berufe', 'noun', 'Was ist dein Beruf?', 'What is your profession?', 'A1', 1),
  ('00000000-0000-4000-a000-0000659a1731', 'die Firma', 'الشركة', 'company', NULL, 'die', 'die Firmen', 'noun', 'Die Firma ist in Berlin.', 'The company is in Berlin.', 'A1', 2),
  ('00000000-0000-4000-a000-0000659a1731', 'der Kollege', 'الزميل', 'colleague', NULL, 'der', 'die Kollegen', 'noun', 'Mein Kollege hilft mir.', 'My colleague helps me.', 'A1', 3),
  ('00000000-0000-4000-a000-0000659a1731', 'das Büro', 'المكتب', 'office', NULL, 'das', 'die Büros', 'noun', 'Das Büro ist im dritten Stock.', 'The office is on the third floor.', 'A1', 4),
  ('00000000-0000-4000-a000-0000659a1731', 'die Besprechung', 'الاجتماع', 'meeting', NULL, 'die', 'die Besprechungen', 'noun', 'Wir haben eine Besprechung.', 'We have a meeting.', 'B1', 5),
  ('00000000-0000-4000-a000-0000659a1731', 'der Chef', 'المدير', 'boss', NULL, 'der', 'die Chefs', 'noun', 'Mein Chef ist freundlich.', 'My boss is friendly.', 'A1', 6),
  ('00000000-0000-4000-a000-0000659a1731', 'das Gehalt', 'الراتب', 'salary', NULL, 'das', 'die Gehälter', 'noun', 'Das Gehalt ist gut.', 'The salary is good.', 'B1', 7),
  ('00000000-0000-4000-a000-0000659a1731', 'die Stelle', 'الوظيفة', 'position', NULL, 'die', 'die Stellen', 'noun', 'Ich suche eine neue Stelle.', 'I am looking for a new position.', 'B1', 8),
  ('00000000-0000-4000-a000-0000659a1731', 'Hallo', 'مرحباً', 'hello', 'bonjour', NULL, NULL, 'interjection', 'Hallo, wie geht es dir?', 'Hello, how are you?', 'A1', 9),
  ('00000000-0000-4000-a000-0000659a1731', 'Guten Morgen', 'صباح الخير', 'good morning', 'bonjour (le matin)', NULL, NULL, 'phrase', 'Guten Morgen, Herr Müller.', 'Good morning, Mr. Müller.', 'A1', 10),
  ('00000000-0000-4000-a000-0000659a1731', 'Guten Tag', 'نهارك سعيد', 'good day', 'bonjour (l''après-midi)', NULL, NULL, 'phrase', 'Guten Tag, Frau Schmidt.', 'Good day, Mrs. Schmidt.', 'A1', 11),
  ('00000000-0000-4000-a000-0000659a1731', 'Tschüss', 'مع السلامة', 'bye', 'au revoir / salut', NULL, NULL, 'interjection', 'Tschüss, bis morgen!', 'Bye, see you tomorrow!', 'A1', 12),
  ('00000000-0000-4000-a000-0000659a1731', 'der Name', 'الاسم', 'name', 'le nom', 'der', 'die Namen', 'noun', 'Mein Name ist Anna.', 'My name is Anna.', 'A1', 13),
  ('00000000-0000-4000-a000-0000659a1731', 'wie', 'كيف', 'how', 'comment', NULL, NULL, 'adverb', 'Wie heißt du?', 'What is your name?', 'A1', 14),
  ('00000000-0000-4000-a000-0000659a1731', 'freuen', 'يسر', 'to be pleased', 'se réjouir', NULL, NULL, 'verb', 'Ich freue mich, dich kennenzulernen.', 'I am pleased to meet you.', 'A1', 15),
  ('00000000-0000-4000-a000-0000659a1731', 'Willkommen', 'أهلاً وسهلاً', 'welcome', 'bienvenue', NULL, NULL, 'interjection', 'Willkommen in Deutschland!', 'Welcome to Germany!', 'A1', 16),
  ('00000000-0000-4000-a000-0000659a1731', 'die Familie', 'العائلة', 'family', 'la famille', 'die', 'die Familien', 'noun', 'Meine Familie ist groß.', 'My family is big.', 'A1', 17),
  ('00000000-0000-4000-a000-0000659a1731', 'der Vater', 'الأب', 'father', 'le père', 'der', 'die Väter', 'noun', 'Mein Vater ist Ingenieur.', 'My father is an engineer.', 'A1', 18),
  ('00000000-0000-4000-a000-0000659a1731', 'die Mutter', 'الأم', 'mother', 'la mère', 'die', 'die Mütter', 'noun', 'Meine Mutter kocht gut.', 'My mother cooks well.', 'A1', 19),
  ('00000000-0000-4000-a000-0000659a1731', 'der Bruder', 'الأخ', 'brother', 'le frère', 'der', 'die Brüder', 'noun', 'Mein Bruder ist 15 Jahre alt.', 'My brother is 15 years old.', 'A1', 20),
  ('00000000-0000-4000-a000-0000659a1731', 'die Schwester', 'الأخت', 'sister', 'la sœur', 'die', 'die Schwestern', 'noun', 'Meine Schwester studiert Medizin.', 'My sister studies medicine.', 'A1', 21),
  ('00000000-0000-4000-a000-0000659a1731', 'die Geschwister', 'الإخوة', 'siblings', 'les frères et sœurs', 'die', NULL, 'noun', 'Hast du Geschwister?', 'Do you have siblings?', 'A1', 22),
  ('00000000-0000-4000-a000-0000659a1731', 'der Sohn', 'الابن', 'son', 'le fils', 'der', 'die Söhne', 'noun', 'Wir haben einen Sohn.', 'We have a son.', 'A1', 23),
  ('00000000-0000-4000-a000-0000659a1731', 'die Tochter', 'الابنة', 'daughter', 'la fille', 'die', 'die Töchter', 'noun', 'Meine Tochter geht zur Schule.', 'My daughter goes to school.', 'A1', 24),
  ('00000000-0000-4000-a000-0000659a1731', 'die Großeltern', 'الأجداد', 'grandparents', 'les grands-parents', 'die', NULL, 'noun', 'Meine Großeltern wohnen auf dem Land.', 'My grandparents live in the countryside.', 'A1', 25),
  ('00000000-0000-4000-a000-0000659a1731', 'verheiratet', 'متزوج', 'married', 'marié(e)', NULL, NULL, 'adjective', 'Meine Eltern sind verheiratet.', 'My parents are married.', 'A1', 26),
  ('00000000-0000-4000-a000-0000659a1731', 'das Brot', 'الخبز', 'bread', 'le pain', 'das', 'die Brote', 'noun', 'Ich kaufe ein Brot.', 'I buy a loaf of bread.', 'A1', 27),
  ('00000000-0000-4000-a000-0000659a1731', 'die Milch', 'الحليب', 'milk', 'le lait', 'die', NULL, 'noun', 'Die Milch ist frisch.', 'The milk is fresh.', 'A1', 28),
  ('00000000-0000-4000-a000-0000659a1731', 'der Käse', 'الجبن', 'cheese', 'le fromage', 'der', NULL, 'noun', 'Der Käse schmeckt gut.', 'The cheese tastes good.', 'A1', 29),
  ('00000000-0000-4000-a000-0000659a1731', 'der Apfel', 'التفاح', 'apple', 'la pomme', 'der', 'die Äpfel', 'noun', 'Der Apfel ist rot.', 'The apple is red.', 'A1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000659a1731', 'sein und haben (To Be and To Have) / يكون ويملك', '"Sein" (to be) and "haben" (to have) are the two most important verbs in German. They are irregular and used as auxiliary verbs too. sein: ich bin, du bist, er/sie/es ist, wir sind, ihr seid, sie/Sie sind. haben: ich habe, du hast, er/sie/es hat, wir haben, ihr habt, sie/Sie haben.', '[{"rule":"sein: ich bin, du bist, er/sie/es ist, wir sind, ihr seid, sie/Sie sind","note":"Ich bin Ahmed. Du bist Student. Er ist Arzt."},{"rule":"haben: ich habe, du hast, er/sie/es hat, wir haben, ihr habt, sie/Sie haben","note":"Ich habe einen Bruder. Sie hat keine Zeit."},{"rule":"Use sein for: profession, nationality, location, description","note":"Ich bin Lehrer. Wir sind in Berlin. Das ist wichtig."},{"rule":"Use haben for: possession, age, feelings","note":"Ich habe Hunger. Sie hat 20 Jahre."}]', '[{"german":"Ich bin Student und lerne Deutsch.","arabic":"أنا طالب وأتعلم الألمانية.","english":"I am a student and I learn German."},{"german":"Du hast eine schöne Wohnung.","arabic":"لديك شقة جميلة.","english":"You have a nice apartment."},{"german":"Er ist Arzt und hat viel Arbeit.","arabic":"هو طبيب ولديه الكثير من العمل.","english":"He is a doctor and has a lot of work."},{"german":"Wir sind in Berlin und haben Zeit.","arabic":"نحن في برلين ولدينا وقت.","english":"We are in Berlin and have time."}]', '[{"mistake":"Ich bin 20 Jahre (using sein for age)","correction":"Ich habe 20 Jahre / Ich bin 20 Jahre alt","explanation":"In German, \"haben\" is used for age: \"Wie alt bist du?\" uses \"sein\" for age too. Confusing but important."},{"mistake":"Er hat krank (using haben for condition)","correction":"Er ist krank","explanation":"Health conditions use \"sein\", not \"haben\" in German."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000659a1731', 'multiple_choice', 'Which German word matches "profession"?', '["die Besprechung","das Büro","der Kollege","die Firma"]', 'der Beruf', '"profession" = "der Beruf" in German. Article: der Plural: die Berufe', 1, 1),
  ('00000000-0000-4000-a000-0000659a1731', 'multiple_choice', 'Which German word matches "company"?', '["die Firma","der Beruf","der Kollege","das Büro"]', 'die Firma', '"company" = "die Firma" in German. Article: die Plural: die Firmen', 1, 2),
  ('00000000-0000-4000-a000-0000659a1731', 'multiple_choice', 'Which German word matches "colleague"?', '["der Kollege","die Besprechung","der Beruf","die Firma"]', 'der Kollege', '"colleague" = "der Kollege" in German. Article: der Plural: die Kollegen', 1, 3),
  ('00000000-0000-4000-a000-0000659a1731', 'multiple_choice', 'Which German word matches "office"?', '["die Firma","der Kollege","die Besprechung","der Beruf"]', 'das Büro', '"office" = "das Büro" in German. Article: das Plural: die Büros', 1, 4),
  ('00000000-0000-4000-a000-0000659a1731', 'multiple_choice', 'Which German word matches "meeting"?', '["der Kollege","die Besprechung","der Beruf","die Firma"]', 'die Besprechung', '"meeting" = "die Besprechung" in German. Article: die Plural: die Besprechungen', 1, 5),
  ('00000000-0000-4000-a000-0000659a1731', 'fill_gap', 'Complete the sentence: Ich ___ gern über Talking About Jobs. (sprechen)', '["spreche","sprichst","spricht","sprechen"]', 'spreche', 'ich spreche gern = I like to speak. Stem: sprech- + e.', 2, 6),
  ('00000000-0000-4000-a000-0000659a1731', 'translation', 'Translate to German: "I am learning about Talking About Jobs."', '["Ich lerne über Talking About Jobs.","Ich lerne Talking About Jobs.","Lerne ich Talking About Jobs."]', 'Ich lerne über Talking About Jobs.', '"Ich lerne über..." = "I am learning about..."', 2, 7),
  ('00000000-0000-4000-a000-0000659a1731', 'matching', 'Match: Which word pairs are correct?', '["der Beruf - profession, die Firma - company"]', 'Matched correctly', 'Each German word has a unique English equivalent.', 2, 8);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-0000659a1731', 'multiple_choice', 'What does "der Beruf" mean in English?', '["profession","to run","beautiful","yesterday"]', 'profession', 1, 1),
  ('00000000-0000-4000-a000-0000659a1731', 'multiple_choice', 'What is the correct article for "die Firma"?', '["der","die","das","den"]', 'die', 1, 2),
  ('00000000-0000-4000-a000-0000659a1731', 'true_false', 'The word "der Kollege" is related to Talking About Jobs.', '["True","False"]', 'True', 1, 3),
  ('00000000-0000-4000-a000-0000659a1731', 'multiple_choice', 'Which sentence correctly uses sein_haben?', '["Ich bin Student und lerne Deutsch.","Du hast eine schöne Wohnung.","Er ist Arzt und hat viel Arbeit.","Wir sind in Berlin und haben Zeit."]', 'Ich bin Student und lerne Deutsch.', 2, 4),
  ('00000000-0000-4000-a000-0000659a1731', 'true_false', 'German word order puts the verb in second position in main clauses.', '["True","False"]', 'True', 1, 5),
  ('00000000-0000-4000-a000-0000659a1731', 'fill_blank', 'Complete: Ich ___ (office) Deutsch.', '["das Büro","lernt","lernst","lernen"]', 'lerne', 2, 6),
  ('00000000-0000-4000-a000-0000659a1731', 'multiple_choice', 'What is the German word for "meeting"?', '["die Besprechung","der Chef","das Gehalt","die Stelle"]', 'die Besprechung', 1, 7),
  ('00000000-0000-4000-a000-0000659a1731', 'true_false', 'In German, ALL nouns are always capitalised.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-0000659a1731', 'multiple_choice', 'How do you say "please" in a restaurant in Germany?', '["Bitte","Danke","Tschüss","Hallo"]', 'Bitte', 1, 9),
  ('00000000-0000-4000-a000-0000659a1731', 'fill_blank', 'Wo ___ (to live) du?', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 2, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, french_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-0000659a1731', 'Ich arbeite bei Siemens.', 'I work at Siemens.', 'أعمل في سيمنز.', NULL, 'Used in Arbeit und Berufe', 'neutral', false, 1),
  ('00000000-0000-4000-a000-0000659a1731', 'Können wir einen Termin vereinbaren?', 'Can we schedule a meeting?', 'هل يمكننا تحديد موعد؟', NULL, 'Used in Arbeit und Berufe', 'formal', false, 2),
  ('00000000-0000-4000-a000-0000659a1731', 'Ich schicke Ihnen die Unterlagen per E-Mail.', 'I''ll send you the documents by email.', 'سأرسل لكم المستندات عبر البريد الإلكتروني.', NULL, 'Used in Arbeit und Berufe', 'formal', false, 3),
  ('00000000-0000-4000-a000-0000659a1731', 'Vielen Dank für Ihre Unterstützung!', 'Thank you very much for your support!', 'شكراً جزيلاً لدعمكم!', NULL, 'Used in Arbeit und Berufe', 'formal', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-0000659a1731', 'der der Beruf (die Berufe)', 'profession — المهنة', 'noun', 'vocabulary', 1),
  ('00000000-0000-4000-a000-0000659a1731', 'die die Firma (die Firmen)', 'company — الشركة', 'noun', 'vocabulary', 2),
  ('00000000-0000-4000-a000-0000659a1731', 'der der Kollege (die Kollegen)', 'colleague — الزميل', 'noun', 'vocabulary', 3),
  ('00000000-0000-4000-a000-0000659a1731', 'das das Büro (die Büros)', 'office — المكتب', 'noun', 'vocabulary', 4),
  ('00000000-0000-4000-a000-0000659a1731', 'die die Besprechung (die Besprechungen)', 'meeting — الاجتماع', 'noun', 'vocabulary', 5),
  ('00000000-0000-4000-a000-0000659a1731', 'der der Chef (die Chefs)', 'boss — المدير', 'noun', 'vocabulary', 6),
  ('00000000-0000-4000-a000-0000659a1731', 'das das Gehalt (die Gehälter)', 'salary — الراتب', 'noun', 'vocabulary', 7),
  ('00000000-0000-4000-a000-0000659a1731', 'die die Stelle (die Stellen)', 'position — الوظيفة', 'noun', 'vocabulary', 8),
  ('00000000-0000-4000-a000-0000659a1731', 'Hallo', 'hello — مرحباً', 'interjection', 'vocabulary', 9),
  ('00000000-0000-4000-a000-0000659a1731', 'Guten Morgen', 'good morning — صباح الخير', 'phrase', 'vocabulary', 10),
  ('00000000-0000-4000-a000-0000659a1731', 'Guten Tag', 'good day — نهارك سعيد', 'phrase', 'vocabulary', 11),
  ('00000000-0000-4000-a000-0000659a1731', 'Tschüss', 'bye — مع السلامة', 'interjection', 'vocabulary', 12),
  ('00000000-0000-4000-a000-0000659a1731', 'der der Name (die Namen)', 'name — الاسم', 'noun', 'vocabulary', 13),
  ('00000000-0000-4000-a000-0000659a1731', 'wie', 'how — كيف', 'adverb', 'vocabulary', 14),
  ('00000000-0000-4000-a000-0000659a1731', 'freuen', 'to be pleased — يسر', 'verb', 'vocabulary', 15),
  ('00000000-0000-4000-a000-0000659a1731', 'Ich bin Student und lerne Deutsch.', 'I am a student and I learn German.', 'sein und haben (To Be and To Have)', 'grammar', 16),
  ('00000000-0000-4000-a000-0000659a1731', 'Du hast eine schöne Wohnung.', 'You have a nice apartment.', 'sein und haben (To Be and To Have)', 'grammar', 17),
  ('00000000-0000-4000-a000-0000659a1731', 'Er ist Arzt und hat viel Arbeit.', 'He is a doctor and has a lot of work.', 'sein und haben (To Be and To Have)', 'grammar', 18);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, french_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-0000659a1731', 'Was sind Sie von Beruf? — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', NULL, 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, french_translation, duration_seconds, speaker_count, scenario) values
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

[Chef]: نعم، فكرة جيدة. ولا تنسوا المستندات.', '[Chef]: 

[Angestellter]: 

[Chef]: 

[Angestellter]: 

[Chef]: ', 60, 2, 'Arbeit und Berufe');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-0000659a1731', '🔊 Sprechen: Was sind Sie von Beruf?', 'Roleplay: You are in a German café. Introduce yourself and talk about Talking About Jobs. Your partner (AI) will respond naturally.', 'Talking About Jobs', ARRAY['Use complete sentences — not single words','Pause between phrases, not between words','Don''t translate from Arabic word-for-word']::text[], ARRAY['der Beruf','die Firma','der Kollege','das Büro','die Besprechung','der Chef','das Gehalt','die Stelle']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-0000659a1731', '✏️ Schreiben: Was sind Sie von Beruf?', 'Write an email to a German friend about "Talking About Jobs". Tell them what you learned, what you found interesting, and ask two questions about their experience with this topic. Use at least 8 vocabulary words from this lesson. Sign off naturally ("Viele Grüße", "Liebe Grüße").', ARRAY['Start with "Hallo" or "Liebe/r"','Keep sentences short (Subject-Verb-Object)','End with a friendly farewell']::text[], ARRAY['der Beruf','die Firma','der Kollege','das Büro','die Besprechung','der Chef','das Gehalt','die Stelle']::text[], ARRAY['Sentence structure','Vocabulary usage']::text[], 50, 100, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000659a1731', 'Was sind Sie von Beruf? — Roleplay', 'Talking About Jobs', 'Student', 'Teacher', 'Practice conversation about Talking About Jobs', 'Hallo! Lass uns über dieses Thema sprechen.', 'beginner', 1, ARRAY['der Beruf','die Firma','der Kollege','das Büro','die Besprechung','der Chef','das Gehalt','die Stelle']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000659a1731', 'Was sind Sie von Beruf? — Advanced Roleplay', 'Talking About Jobs', 'Customer', 'Assistant', 'Extended conversation about Talking About Jobs', 'Guten Tag! Wie kann ich Ihnen helfen?', 'beginner', 2, ARRAY['der Beruf','die Firma','der Kollege','das Büro','die Besprechung','der Chef','das Gehalt','die Stelle']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-0000659a1731', 'Was sind Sie von Beruf? — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Was sind Sie von Beruf?".', 'Creative practice for Talking About Jobs', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-0000659a1731', '📚 Hausaufgabe: Was sind Sie von Beruf?', 'Complete these tasks to reinforce "Was sind Sie von Beruf?".', 'mixed', '[{"description":"Create 10 flashcards from this lesson''s vocabulary — write German on one side, Arabic on the other. Test yourself 3 times."},{"description":"Write 6 sentences about Talking About Jobs: 2 statements, 2 questions, 2 negations — all using sein_haben."},{"description":"Record yourself reading the dialogue aloud. Listen to the recording and note 3 things to improve."},{"description":"Find 3 real German websites, videos, or articles about Talking About Jobs. Note 5 new words you discovered."}]', 50, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-0000659a1731', '🎯 Great work! In this lesson you learned 150 new words about Talking About Jobs. You practiced sein_haben — an important grammar topic for A1 level. You read a text, listened to a dialogue, and practiced speaking and writing. Keep going!', '["150 vocabulary items about Talking About Jobs","sein_haben — grammar explanation and practice","Reading comprehension: text about Talking About Jobs","Listening comprehension: dialogue about Talking About Jobs","Speaking practice: roleplay/discussion about Talking About Jobs","Writing task: text about Talking About Jobs"]', '[{"title":"Was sind Sie von Beruf? Review","summary":"sein_haben — the main grammar focus. Focus on understanding when to use this structure and forming basic sentences."}]', ARRAY['der Beruf (profession)','die Firma (company)','der Kollege (colleague)','das Büro (office)','die Besprechung (meeting)']::text[], ARRAY['Don''t translate from Arabic word-for-word — German has different sentence structure','Learn every noun with its article: NEVER learn "Tisch" alone, always "der Tisch"','Verb always in position 2 in main clauses']::text[], ARRAY['Practice 15-20 minutes daily — consistency beats intensity','Speak out loud: German pronunciation needs muscle memory','Use the new vocabulary within 24 hours or you''ll forget it','Watch German YouTube videos about Talking About Jobs for authentic input']::text[]);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000659a1731', 'Pronunciation: German sounds for "work"', 'In German, vowels are pure — unlike English diphthongs. The "ch" sound after a, o, u is guttural (like Arabic خ). After e, i, ä, ö, ü it''s soft (like English "huge" without the "u").

Common mistake for Arabic speakers: Arabic speakers tend to over-emphasise consonants. German flows — connect words smoothly (e.g., "Ich habe" becomes /ɪçabə/ not /ɪç ˈhaːbə/).', '[]', '[{"german":"der Beruf","arabic":"","english":"","phonetic":""},{"german":"die Firma","arabic":"","english":"","phonetic":""},{"german":"der Kollege","arabic":"","english":"","phonetic":""},{"german":"das Büro","arabic":"","english":"","phonetic":""}]', '[]', 10);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000659a1731', 'translation', 'Translate to German: "I use the word "profession" in a sentence about Talking About Jobs."', '[]', 'Was ist dein Beruf?', 'Use der  "der Beruf" with the correct sein_haben form.', 1, 40);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000659a1731', 'translation', 'Translate to German: "I use the word "company" in a sentence about Talking About Jobs."', '[]', 'Die Firma ist in Berlin.', 'Use die  "die Firma" with the correct sein_haben form.', 1, 41);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000659a1731', 'translation', 'Translate to German: "I use the word "colleague" in a sentence about Talking About Jobs."', '[]', 'Mein Kollege hilft mir.', 'Use der  "der Kollege" with the correct sein_haben form.', 1, 42);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000659a1731', 'Culture: 🇩🇪 Deutsche Kultur: Talking About Jobs', 'In Germany, Talking About Jobs is approached with typical German directness and efficiency. Germans value clarity over small talk. When discussing Talking About Jobs, expect honest feedback and straightforward questions. This is not rudeness — it''s cultural. Arabic speakers often find this too direct at first, but you''ll appreciate it once you get used to it.

في ألمانيا، يتم التعامل مع Talking About Jobs بوضوح وكفاءة. الألمان يقدرون الوضوح أكثر من المجاملات. لا تعتبر هذه وقاحة - إنها ثقافة مختلفة.', '["Tip: Always use \"Sie\" (formal) with strangers and colleagues","Tip: Germans appreciate punctuality — arrive 5 minutes early","Tip: Direct feedback is a sign of respect, not criticism","Tip: Prepare factual arguments, not emotional appeals"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000659a1731', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Addressing colleagues with \"du\" immediately","correction":"Use \"Sie\" until explicitly invited to use \"du\"","explanation":"Arabic uses \"anta/anti\" universally. German has strict formal/informal distinction at work."},{"mistake":"Using the wrong article (der/die/das) for nouns","correction":"Learn each noun with its article as one piece","explanation":"Arabic has no articles for nouns without gender connection"}]', 30);

  -- Lesson 6: Test: Arbeit und Berufe (L-A1-05-06)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-0000659a1732', '00000000-0000-4000-a000-000039b4d362', 'Test: Arbeit und Berufe', 'Test your knowledge of Module 5.', 'Module Test', 'test', '["Understand and apply sein_haben rules correctly","Use sein_haben in real conversations","Avoid common mistakes Arabic speakers make with sein_haben","Read and understand sein_haben in context","Listen and identify sein_haben in speech","Write sentences using sein_haben correctly"]', 20, 6, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, french_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-0000659a1732', 'der Beruf', 'المهنة', 'profession', NULL, 'der', 'die Berufe', 'noun', 'Was ist dein Beruf?', 'What is your profession?', 'A1', 1),
  ('00000000-0000-4000-a000-0000659a1732', 'die Firma', 'الشركة', 'company', NULL, 'die', 'die Firmen', 'noun', 'Die Firma ist in Berlin.', 'The company is in Berlin.', 'A1', 2),
  ('00000000-0000-4000-a000-0000659a1732', 'der Kollege', 'الزميل', 'colleague', NULL, 'der', 'die Kollegen', 'noun', 'Mein Kollege hilft mir.', 'My colleague helps me.', 'A1', 3),
  ('00000000-0000-4000-a000-0000659a1732', 'das Büro', 'المكتب', 'office', NULL, 'das', 'die Büros', 'noun', 'Das Büro ist im dritten Stock.', 'The office is on the third floor.', 'A1', 4),
  ('00000000-0000-4000-a000-0000659a1732', 'die Besprechung', 'الاجتماع', 'meeting', NULL, 'die', 'die Besprechungen', 'noun', 'Wir haben eine Besprechung.', 'We have a meeting.', 'B1', 5),
  ('00000000-0000-4000-a000-0000659a1732', 'der Chef', 'المدير', 'boss', NULL, 'der', 'die Chefs', 'noun', 'Mein Chef ist freundlich.', 'My boss is friendly.', 'A1', 6),
  ('00000000-0000-4000-a000-0000659a1732', 'das Gehalt', 'الراتب', 'salary', NULL, 'das', 'die Gehälter', 'noun', 'Das Gehalt ist gut.', 'The salary is good.', 'B1', 7),
  ('00000000-0000-4000-a000-0000659a1732', 'die Stelle', 'الوظيفة', 'position', NULL, 'die', 'die Stellen', 'noun', 'Ich suche eine neue Stelle.', 'I am looking for a new position.', 'B1', 8),
  ('00000000-0000-4000-a000-0000659a1732', 'Hallo', 'مرحباً', 'hello', 'bonjour', NULL, NULL, 'interjection', 'Hallo, wie geht es dir?', 'Hello, how are you?', 'A1', 9),
  ('00000000-0000-4000-a000-0000659a1732', 'Guten Morgen', 'صباح الخير', 'good morning', 'bonjour (le matin)', NULL, NULL, 'phrase', 'Guten Morgen, Herr Müller.', 'Good morning, Mr. Müller.', 'A1', 10),
  ('00000000-0000-4000-a000-0000659a1732', 'Guten Tag', 'نهارك سعيد', 'good day', 'bonjour (l''après-midi)', NULL, NULL, 'phrase', 'Guten Tag, Frau Schmidt.', 'Good day, Mrs. Schmidt.', 'A1', 11),
  ('00000000-0000-4000-a000-0000659a1732', 'Tschüss', 'مع السلامة', 'bye', 'au revoir / salut', NULL, NULL, 'interjection', 'Tschüss, bis morgen!', 'Bye, see you tomorrow!', 'A1', 12),
  ('00000000-0000-4000-a000-0000659a1732', 'der Name', 'الاسم', 'name', 'le nom', 'der', 'die Namen', 'noun', 'Mein Name ist Anna.', 'My name is Anna.', 'A1', 13),
  ('00000000-0000-4000-a000-0000659a1732', 'wie', 'كيف', 'how', 'comment', NULL, NULL, 'adverb', 'Wie heißt du?', 'What is your name?', 'A1', 14),
  ('00000000-0000-4000-a000-0000659a1732', 'freuen', 'يسر', 'to be pleased', 'se réjouir', NULL, NULL, 'verb', 'Ich freue mich, dich kennenzulernen.', 'I am pleased to meet you.', 'A1', 15),
  ('00000000-0000-4000-a000-0000659a1732', 'Willkommen', 'أهلاً وسهلاً', 'welcome', 'bienvenue', NULL, NULL, 'interjection', 'Willkommen in Deutschland!', 'Welcome to Germany!', 'A1', 16),
  ('00000000-0000-4000-a000-0000659a1732', 'die Familie', 'العائلة', 'family', 'la famille', 'die', 'die Familien', 'noun', 'Meine Familie ist groß.', 'My family is big.', 'A1', 17),
  ('00000000-0000-4000-a000-0000659a1732', 'der Vater', 'الأب', 'father', 'le père', 'der', 'die Väter', 'noun', 'Mein Vater ist Ingenieur.', 'My father is an engineer.', 'A1', 18),
  ('00000000-0000-4000-a000-0000659a1732', 'die Mutter', 'الأم', 'mother', 'la mère', 'die', 'die Mütter', 'noun', 'Meine Mutter kocht gut.', 'My mother cooks well.', 'A1', 19),
  ('00000000-0000-4000-a000-0000659a1732', 'der Bruder', 'الأخ', 'brother', 'le frère', 'der', 'die Brüder', 'noun', 'Mein Bruder ist 15 Jahre alt.', 'My brother is 15 years old.', 'A1', 20),
  ('00000000-0000-4000-a000-0000659a1732', 'die Schwester', 'الأخت', 'sister', 'la sœur', 'die', 'die Schwestern', 'noun', 'Meine Schwester studiert Medizin.', 'My sister studies medicine.', 'A1', 21),
  ('00000000-0000-4000-a000-0000659a1732', 'die Geschwister', 'الإخوة', 'siblings', 'les frères et sœurs', 'die', NULL, 'noun', 'Hast du Geschwister?', 'Do you have siblings?', 'A1', 22),
  ('00000000-0000-4000-a000-0000659a1732', 'der Sohn', 'الابن', 'son', 'le fils', 'der', 'die Söhne', 'noun', 'Wir haben einen Sohn.', 'We have a son.', 'A1', 23),
  ('00000000-0000-4000-a000-0000659a1732', 'die Tochter', 'الابنة', 'daughter', 'la fille', 'die', 'die Töchter', 'noun', 'Meine Tochter geht zur Schule.', 'My daughter goes to school.', 'A1', 24),
  ('00000000-0000-4000-a000-0000659a1732', 'die Großeltern', 'الأجداد', 'grandparents', 'les grands-parents', 'die', NULL, 'noun', 'Meine Großeltern wohnen auf dem Land.', 'My grandparents live in the countryside.', 'A1', 25),
  ('00000000-0000-4000-a000-0000659a1732', 'verheiratet', 'متزوج', 'married', 'marié(e)', NULL, NULL, 'adjective', 'Meine Eltern sind verheiratet.', 'My parents are married.', 'A1', 26),
  ('00000000-0000-4000-a000-0000659a1732', 'das Brot', 'الخبز', 'bread', 'le pain', 'das', 'die Brote', 'noun', 'Ich kaufe ein Brot.', 'I buy a loaf of bread.', 'A1', 27),
  ('00000000-0000-4000-a000-0000659a1732', 'die Milch', 'الحليب', 'milk', 'le lait', 'die', NULL, 'noun', 'Die Milch ist frisch.', 'The milk is fresh.', 'A1', 28),
  ('00000000-0000-4000-a000-0000659a1732', 'der Käse', 'الجبن', 'cheese', 'le fromage', 'der', NULL, 'noun', 'Der Käse schmeckt gut.', 'The cheese tastes good.', 'A1', 29),
  ('00000000-0000-4000-a000-0000659a1732', 'der Apfel', 'التفاح', 'apple', 'la pomme', 'der', 'die Äpfel', 'noun', 'Der Apfel ist rot.', 'The apple is red.', 'A1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000659a1732', 'sein und haben (To Be and To Have) / يكون ويملك', '"Sein" (to be) and "haben" (to have) are the two most important verbs in German. They are irregular and used as auxiliary verbs too. sein: ich bin, du bist, er/sie/es ist, wir sind, ihr seid, sie/Sie sind. haben: ich habe, du hast, er/sie/es hat, wir haben, ihr habt, sie/Sie haben.', '[{"rule":"sein: ich bin, du bist, er/sie/es ist, wir sind, ihr seid, sie/Sie sind","note":"Ich bin Ahmed. Du bist Student. Er ist Arzt."},{"rule":"haben: ich habe, du hast, er/sie/es hat, wir haben, ihr habt, sie/Sie haben","note":"Ich habe einen Bruder. Sie hat keine Zeit."},{"rule":"Use sein for: profession, nationality, location, description","note":"Ich bin Lehrer. Wir sind in Berlin. Das ist wichtig."},{"rule":"Use haben for: possession, age, feelings","note":"Ich habe Hunger. Sie hat 20 Jahre."}]', '[{"german":"Ich bin Student und lerne Deutsch.","arabic":"أنا طالب وأتعلم الألمانية.","english":"I am a student and I learn German."},{"german":"Du hast eine schöne Wohnung.","arabic":"لديك شقة جميلة.","english":"You have a nice apartment."},{"german":"Er ist Arzt und hat viel Arbeit.","arabic":"هو طبيب ولديه الكثير من العمل.","english":"He is a doctor and has a lot of work."},{"german":"Wir sind in Berlin und haben Zeit.","arabic":"نحن في برلين ولدينا وقت.","english":"We are in Berlin and have time."}]', '[{"mistake":"Ich bin 20 Jahre (using sein for age)","correction":"Ich habe 20 Jahre / Ich bin 20 Jahre alt","explanation":"In German, \"haben\" is used for age: \"Wie alt bist du?\" uses \"sein\" for age too. Confusing but important."},{"mistake":"Er hat krank (using haben for condition)","correction":"Er ist krank","explanation":"Health conditions use \"sein\", not \"haben\" in German."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000659a1732', 'multiple_choice', 'Which German word matches "profession"?', '["der Beruf","der Kollege","die Firma","die Besprechung"]', 'der Beruf', '"profession" = "der Beruf" in German. Article: der Plural: die Berufe', 1, 1),
  ('00000000-0000-4000-a000-0000659a1732', 'multiple_choice', 'Which German word matches "company"?', '["das Büro","der Kollege","der Beruf","die Firma"]', 'die Firma', '"company" = "die Firma" in German. Article: die Plural: die Firmen', 1, 2),
  ('00000000-0000-4000-a000-0000659a1732', 'multiple_choice', 'Which German word matches "colleague"?', '["der Kollege","das Büro","der Beruf","die Besprechung"]', 'der Kollege', '"colleague" = "der Kollege" in German. Article: der Plural: die Kollegen', 1, 3),
  ('00000000-0000-4000-a000-0000659a1732', 'multiple_choice', 'Which German word matches "office"?', '["der Kollege","die Firma","der Beruf","das Büro"]', 'das Büro', '"office" = "das Büro" in German. Article: das Plural: die Büros', 1, 4),
  ('00000000-0000-4000-a000-0000659a1732', 'multiple_choice', 'Which German word matches "meeting"?', '["der Beruf","die Besprechung","die Firma","das Büro"]', 'die Besprechung', '"meeting" = "die Besprechung" in German. Article: die Plural: die Besprechungen', 1, 5),
  ('00000000-0000-4000-a000-0000659a1732', 'fill_gap', 'Complete the sentence: Ich ___ gern über Module Test. (sprechen)', '["spreche","sprichst","spricht","sprechen"]', 'spreche', 'ich spreche gern = I like to speak. Stem: sprech- + e.', 2, 6),
  ('00000000-0000-4000-a000-0000659a1732', 'translation', 'Translate to German: "I am learning about Module Test."', '["Ich lerne über Module Test.","Ich lerne Module Test.","Lerne ich Module Test."]', 'Ich lerne über Module Test.', '"Ich lerne über..." = "I am learning about..."', 2, 7),
  ('00000000-0000-4000-a000-0000659a1732', 'matching', 'Match: Which word pairs are correct?', '["der Beruf - profession, die Firma - company"]', 'Matched correctly', 'Each German word has a unique English equivalent.', 2, 8);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-0000659a1732', 'multiple_choice', 'What does "der Beruf" mean in English?', '["profession","to run","beautiful","yesterday"]', 'profession', 1, 1),
  ('00000000-0000-4000-a000-0000659a1732', 'multiple_choice', 'What is the correct article for "die Firma"?', '["der","die","das","den"]', 'die', 1, 2),
  ('00000000-0000-4000-a000-0000659a1732', 'true_false', 'The word "der Kollege" is related to Module Test.', '["True","False"]', 'True', 1, 3),
  ('00000000-0000-4000-a000-0000659a1732', 'multiple_choice', 'Which sentence correctly uses sein_haben?', '["Ich bin Student und lerne Deutsch.","Du hast eine schöne Wohnung.","Er ist Arzt und hat viel Arbeit.","Wir sind in Berlin und haben Zeit."]', 'Ich bin Student und lerne Deutsch.', 2, 4),
  ('00000000-0000-4000-a000-0000659a1732', 'true_false', 'German word order puts the verb in second position in main clauses.', '["True","False"]', 'True', 1, 5),
  ('00000000-0000-4000-a000-0000659a1732', 'fill_blank', 'Complete: Ich ___ (office) Deutsch.', '["das Büro","lernt","lernst","lernen"]', 'lerne', 2, 6),
  ('00000000-0000-4000-a000-0000659a1732', 'multiple_choice', 'What is the German word for "meeting"?', '["die Besprechung","der Chef","das Gehalt","die Stelle"]', 'die Besprechung', 1, 7),
  ('00000000-0000-4000-a000-0000659a1732', 'true_false', 'In German, ALL nouns are always capitalised.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-0000659a1732', 'multiple_choice', 'How do you say "please" in a restaurant in Germany?', '["Bitte","Danke","Tschüss","Hallo"]', 'Bitte', 1, 9),
  ('00000000-0000-4000-a000-0000659a1732', 'fill_blank', 'Wo ___ (to live) du?', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 2, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, french_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-0000659a1732', 'Ich arbeite bei Siemens.', 'I work at Siemens.', 'أعمل في سيمنز.', NULL, 'Used in Arbeit und Berufe', 'neutral', false, 1),
  ('00000000-0000-4000-a000-0000659a1732', 'Können wir einen Termin vereinbaren?', 'Can we schedule a meeting?', 'هل يمكننا تحديد موعد؟', NULL, 'Used in Arbeit und Berufe', 'formal', false, 2),
  ('00000000-0000-4000-a000-0000659a1732', 'Ich schicke Ihnen die Unterlagen per E-Mail.', 'I''ll send you the documents by email.', 'سأرسل لكم المستندات عبر البريد الإلكتروني.', NULL, 'Used in Arbeit und Berufe', 'formal', false, 3),
  ('00000000-0000-4000-a000-0000659a1732', 'Vielen Dank für Ihre Unterstützung!', 'Thank you very much for your support!', 'شكراً جزيلاً لدعمكم!', NULL, 'Used in Arbeit und Berufe', 'formal', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-0000659a1732', 'der der Beruf (die Berufe)', 'profession — المهنة', 'noun', 'vocabulary', 1),
  ('00000000-0000-4000-a000-0000659a1732', 'die die Firma (die Firmen)', 'company — الشركة', 'noun', 'vocabulary', 2),
  ('00000000-0000-4000-a000-0000659a1732', 'der der Kollege (die Kollegen)', 'colleague — الزميل', 'noun', 'vocabulary', 3),
  ('00000000-0000-4000-a000-0000659a1732', 'das das Büro (die Büros)', 'office — المكتب', 'noun', 'vocabulary', 4),
  ('00000000-0000-4000-a000-0000659a1732', 'die die Besprechung (die Besprechungen)', 'meeting — الاجتماع', 'noun', 'vocabulary', 5),
  ('00000000-0000-4000-a000-0000659a1732', 'der der Chef (die Chefs)', 'boss — المدير', 'noun', 'vocabulary', 6),
  ('00000000-0000-4000-a000-0000659a1732', 'das das Gehalt (die Gehälter)', 'salary — الراتب', 'noun', 'vocabulary', 7),
  ('00000000-0000-4000-a000-0000659a1732', 'die die Stelle (die Stellen)', 'position — الوظيفة', 'noun', 'vocabulary', 8),
  ('00000000-0000-4000-a000-0000659a1732', 'Hallo', 'hello — مرحباً', 'interjection', 'vocabulary', 9),
  ('00000000-0000-4000-a000-0000659a1732', 'Guten Morgen', 'good morning — صباح الخير', 'phrase', 'vocabulary', 10),
  ('00000000-0000-4000-a000-0000659a1732', 'Guten Tag', 'good day — نهارك سعيد', 'phrase', 'vocabulary', 11),
  ('00000000-0000-4000-a000-0000659a1732', 'Tschüss', 'bye — مع السلامة', 'interjection', 'vocabulary', 12),
  ('00000000-0000-4000-a000-0000659a1732', 'der der Name (die Namen)', 'name — الاسم', 'noun', 'vocabulary', 13),
  ('00000000-0000-4000-a000-0000659a1732', 'wie', 'how — كيف', 'adverb', 'vocabulary', 14),
  ('00000000-0000-4000-a000-0000659a1732', 'freuen', 'to be pleased — يسر', 'verb', 'vocabulary', 15),
  ('00000000-0000-4000-a000-0000659a1732', 'Ich bin Student und lerne Deutsch.', 'I am a student and I learn German.', 'sein und haben (To Be and To Have)', 'grammar', 16),
  ('00000000-0000-4000-a000-0000659a1732', 'Du hast eine schöne Wohnung.', 'You have a nice apartment.', 'sein und haben (To Be and To Have)', 'grammar', 17),
  ('00000000-0000-4000-a000-0000659a1732', 'Er ist Arzt und hat viel Arbeit.', 'He is a doctor and has a lot of work.', 'sein und haben (To Be and To Have)', 'grammar', 18);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, french_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-0000659a1732', 'Test: Arbeit und Berufe — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', NULL, 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, french_translation, duration_seconds, speaker_count, scenario) values
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

[Chef]: نعم، فكرة جيدة. ولا تنسوا المستندات.', '[Chef]: 

[Angestellter]: 

[Chef]: 

[Angestellter]: 

[Chef]: ', 60, 2, 'Arbeit und Berufe');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-0000659a1732', '🔊 Sprechen: Test: Arbeit und Berufe', 'Roleplay: You are in a German café. Introduce yourself and talk about Module Test. Your partner (AI) will respond naturally.', 'Module Test', ARRAY['Use complete sentences — not single words','Pause between phrases, not between words','Don''t translate from Arabic word-for-word']::text[], ARRAY['der Beruf','die Firma','der Kollege','das Büro','die Besprechung','der Chef','das Gehalt','die Stelle']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-0000659a1732', '✏️ Schreiben: Test: Arbeit und Berufe', 'Write an email to a German friend about "Module Test". Tell them what you learned, what you found interesting, and ask two questions about their experience with this topic. Use at least 8 vocabulary words from this lesson. Sign off naturally ("Viele Grüße", "Liebe Grüße").', ARRAY['Start with "Hallo" or "Liebe/r"','Keep sentences short (Subject-Verb-Object)','End with a friendly farewell']::text[], ARRAY['der Beruf','die Firma','der Kollege','das Büro','die Besprechung','der Chef','das Gehalt','die Stelle']::text[], ARRAY['Sentence structure','Vocabulary usage']::text[], 50, 100, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000659a1732', 'Test: Arbeit und Berufe — Roleplay', 'Module Test', 'Student', 'Teacher', 'Practice conversation about Module Test', 'Hallo! Lass uns über dieses Thema sprechen.', 'beginner', 1, ARRAY['der Beruf','die Firma','der Kollege','das Büro','die Besprechung','der Chef','das Gehalt','die Stelle']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000659a1732', 'Test: Arbeit und Berufe — Advanced Roleplay', 'Module Test', 'Customer', 'Assistant', 'Extended conversation about Module Test', 'Guten Tag! Wie kann ich Ihnen helfen?', 'beginner', 2, ARRAY['der Beruf','die Firma','der Kollege','das Büro','die Besprechung','der Chef','das Gehalt','die Stelle']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-0000659a1732', 'Test: Arbeit und Berufe — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Test: Arbeit und Berufe".', 'Creative practice for Module Test', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-0000659a1732', '📚 Hausaufgabe: Test: Arbeit und Berufe', 'Complete these tasks to reinforce "Test: Arbeit und Berufe".', 'mixed', '[{"description":"Create 10 flashcards from this lesson''s vocabulary — write German on one side, Arabic on the other. Test yourself 3 times."},{"description":"Write 6 sentences about Module Test: 2 statements, 2 questions, 2 negations — all using sein_haben."},{"description":"Record yourself reading the dialogue aloud. Listen to the recording and note 3 things to improve."},{"description":"Find 3 real German websites, videos, or articles about Module Test. Note 5 new words you discovered."}]', 50, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-0000659a1732', '🎯 Great work! In this lesson you learned 150 new words about Module Test. You practiced sein_haben — an important grammar topic for A1 level. You read a text, listened to a dialogue, and practiced speaking and writing. Keep going!', '["150 vocabulary items about Module Test","sein_haben — grammar explanation and practice","Reading comprehension: text about Module Test","Listening comprehension: dialogue about Module Test","Speaking practice: roleplay/discussion about Module Test","Writing task: text about Module Test"]', '[{"title":"Test: Arbeit und Berufe Review","summary":"sein_haben — the main grammar focus. Focus on understanding when to use this structure and forming basic sentences."}]', ARRAY['der Beruf (profession)','die Firma (company)','der Kollege (colleague)','das Büro (office)','die Besprechung (meeting)']::text[], ARRAY['Don''t translate from Arabic word-for-word — German has different sentence structure','Learn every noun with its article: NEVER learn "Tisch" alone, always "der Tisch"','Verb always in position 2 in main clauses']::text[], ARRAY['Practice 15-20 minutes daily — consistency beats intensity','Speak out loud: German pronunciation needs muscle memory','Use the new vocabulary within 24 hours or you''ll forget it','Watch German YouTube videos about Module Test for authentic input']::text[]);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000659a1732', 'Pronunciation: German sounds for "work"', 'In German, vowels are pure — unlike English diphthongs. The "ch" sound after a, o, u is guttural (like Arabic خ). After e, i, ä, ö, ü it''s soft (like English "huge" without the "u").

Common mistake for Arabic speakers: Arabic speakers tend to over-emphasise consonants. German flows — connect words smoothly (e.g., "Ich habe" becomes /ɪçabə/ not /ɪç ˈhaːbə/).', '[]', '[{"german":"der Beruf","arabic":"","english":"","phonetic":""},{"german":"die Firma","arabic":"","english":"","phonetic":""},{"german":"der Kollege","arabic":"","english":"","phonetic":""},{"german":"das Büro","arabic":"","english":"","phonetic":""}]', '[]', 10);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000659a1732', 'translation', 'Translate to German: "I use the word "profession" in a sentence about Module Test."', '[]', 'Was ist dein Beruf?', 'Use der  "der Beruf" with the correct sein_haben form.', 1, 40);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000659a1732', 'translation', 'Translate to German: "I use the word "company" in a sentence about Module Test."', '[]', 'Die Firma ist in Berlin.', 'Use die  "die Firma" with the correct sein_haben form.', 1, 41);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000659a1732', 'translation', 'Translate to German: "I use the word "colleague" in a sentence about Module Test."', '[]', 'Mein Kollege hilft mir.', 'Use der  "der Kollege" with the correct sein_haben form.', 1, 42);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000659a1732', 'Culture: 🇩🇪 Deutsche Kultur: Module Test', 'In Germany, Module Test is approached with typical German directness and efficiency. Germans value clarity over small talk. When discussing Module Test, expect honest feedback and straightforward questions. This is not rudeness — it''s cultural. Arabic speakers often find this too direct at first, but you''ll appreciate it once you get used to it.

في ألمانيا، يتم التعامل مع Module Test بوضوح وكفاءة. الألمان يقدرون الوضوح أكثر من المجاملات. لا تعتبر هذه وقاحة - إنها ثقافة مختلفة.', '["Tip: Always use \"Sie\" (formal) with strangers and colleagues","Tip: Germans appreciate punctuality — arrive 5 minutes early","Tip: Direct feedback is a sign of respect, not criticism","Tip: Prepare factual arguments, not emotional appeals"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000659a1732', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Addressing colleagues with \"du\" immediately","correction":"Use \"Sie\" until explicitly invited to use \"du\"","explanation":"Arabic uses \"anta/anti\" universally. German has strict formal/informal distinction at work."},{"mistake":"Using the wrong article (der/die/das) for nouns","correction":"Learn each noun with its article as one piece","explanation":"Arabic has no articles for nouns without gender connection"}]', 30);

  -- Module 6: Reisen und Freizeit
  insert into public.course_modules (id, level_id, title, description, objectives, order_index, estimated_hours, is_published)
  values ('00000000-0000-4000-a000-000039b4d363', 'A1', 'Reisen und Freizeit', 'Learn travel vocabulary, transportation, and leisure activities.', '["Book accommodations and transportation","Ask for and give directions","Talk about hobbies and free time","Use separable prefix verbs","Use \"gern\" to express likes"]', 6, 5, true)
  on conflict (id) do nothing;

  -- Lesson 1: Verkehrsmittel (L-A1-06-01)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-0000659a8b8c', '00000000-0000-4000-a000-000039b4d363', 'Verkehrsmittel', 'Learn transportation vocabulary: trains, buses, cars, planes.', 'Transportation', 'vocabulary', '["Understand and use 150 key vocabulary words about Transportation","Apply present_tense correctly in sentences","Read and comprehend a text about Transportation","Listen and understand a natural dialogue about Transportation","Speak about Transportation with confidence","Write a short text about Transportation using new vocabulary"]', 30, 1, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, french_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-0000659a8b8c', 'die Reise', 'الرحلة', 'trip', NULL, 'die', 'die Reisen', 'noun', 'Die Reise nach München war schön.', 'The trip to Munich was nice.', 'A1', 1),
  ('00000000-0000-4000-a000-0000659a8b8c', 'der Zug', 'القطار', 'train', NULL, 'der', 'die Züge', 'noun', 'Der Zug kommt um 10 Uhr an.', 'The train arrives at 10 o''clock.', 'A1', 2),
  ('00000000-0000-4000-a000-0000659a8b8c', 'das Ticket', 'التذكرة', 'ticket', NULL, 'das', 'die Tickets', 'noun', 'Ein Ticket nach Berlin, bitte.', 'A ticket to Berlin, please.', 'A1', 3),
  ('00000000-0000-4000-a000-0000659a8b8c', 'der Bahnhof', 'محطة القطار', 'train station', NULL, 'der', 'die Bahnhöfe', 'noun', 'Der Bahnhof ist groß.', 'The train station is big.', 'A1', 4),
  ('00000000-0000-4000-a000-0000659a8b8c', 'der Flughafen', 'المطار', 'airport', NULL, 'der', 'die Flughäfen', 'noun', 'Ich fahre zum Flughafen.', 'I drive to the airport.', 'A1', 5),
  ('00000000-0000-4000-a000-0000659a8b8c', 'das Hotel', 'الفندق', 'hotel', NULL, 'das', 'die Hotels', 'noun', 'Das Hotel ist günstig.', 'The hotel is affordable.', 'A1', 6),
  ('00000000-0000-4000-a000-0000659a8b8c', 'der Pass', 'جواز السفر', 'passport', NULL, 'der', 'die Pässe', 'noun', 'Ich brauche meinen Pass.', 'I need my passport.', 'A1', 7),
  ('00000000-0000-4000-a000-0000659a8b8c', 'der Koffer', 'الحقيبة', 'suitcase', NULL, 'der', 'die Koffer', 'noun', 'Mein Koffer ist schwer.', 'My suitcase is heavy.', 'A1', 8),
  ('00000000-0000-4000-a000-0000659a8b8c', 'Hallo', 'مرحباً', 'hello', 'bonjour', NULL, NULL, 'interjection', 'Hallo, wie geht es dir?', 'Hello, how are you?', 'A1', 9),
  ('00000000-0000-4000-a000-0000659a8b8c', 'Guten Morgen', 'صباح الخير', 'good morning', 'bonjour (le matin)', NULL, NULL, 'phrase', 'Guten Morgen, Herr Müller.', 'Good morning, Mr. Müller.', 'A1', 10),
  ('00000000-0000-4000-a000-0000659a8b8c', 'Guten Tag', 'نهارك سعيد', 'good day', 'bonjour (l''après-midi)', NULL, NULL, 'phrase', 'Guten Tag, Frau Schmidt.', 'Good day, Mrs. Schmidt.', 'A1', 11),
  ('00000000-0000-4000-a000-0000659a8b8c', 'Tschüss', 'مع السلامة', 'bye', 'au revoir / salut', NULL, NULL, 'interjection', 'Tschüss, bis morgen!', 'Bye, see you tomorrow!', 'A1', 12),
  ('00000000-0000-4000-a000-0000659a8b8c', 'der Name', 'الاسم', 'name', 'le nom', 'der', 'die Namen', 'noun', 'Mein Name ist Anna.', 'My name is Anna.', 'A1', 13),
  ('00000000-0000-4000-a000-0000659a8b8c', 'wie', 'كيف', 'how', 'comment', NULL, NULL, 'adverb', 'Wie heißt du?', 'What is your name?', 'A1', 14),
  ('00000000-0000-4000-a000-0000659a8b8c', 'freuen', 'يسر', 'to be pleased', 'se réjouir', NULL, NULL, 'verb', 'Ich freue mich, dich kennenzulernen.', 'I am pleased to meet you.', 'A1', 15),
  ('00000000-0000-4000-a000-0000659a8b8c', 'Willkommen', 'أهلاً وسهلاً', 'welcome', 'bienvenue', NULL, NULL, 'interjection', 'Willkommen in Deutschland!', 'Welcome to Germany!', 'A1', 16),
  ('00000000-0000-4000-a000-0000659a8b8c', 'die Familie', 'العائلة', 'family', 'la famille', 'die', 'die Familien', 'noun', 'Meine Familie ist groß.', 'My family is big.', 'A1', 17),
  ('00000000-0000-4000-a000-0000659a8b8c', 'der Vater', 'الأب', 'father', 'le père', 'der', 'die Väter', 'noun', 'Mein Vater ist Ingenieur.', 'My father is an engineer.', 'A1', 18),
  ('00000000-0000-4000-a000-0000659a8b8c', 'die Mutter', 'الأم', 'mother', 'la mère', 'die', 'die Mütter', 'noun', 'Meine Mutter kocht gut.', 'My mother cooks well.', 'A1', 19),
  ('00000000-0000-4000-a000-0000659a8b8c', 'der Bruder', 'الأخ', 'brother', 'le frère', 'der', 'die Brüder', 'noun', 'Mein Bruder ist 15 Jahre alt.', 'My brother is 15 years old.', 'A1', 20),
  ('00000000-0000-4000-a000-0000659a8b8c', 'die Schwester', 'الأخت', 'sister', 'la sœur', 'die', 'die Schwestern', 'noun', 'Meine Schwester studiert Medizin.', 'My sister studies medicine.', 'A1', 21),
  ('00000000-0000-4000-a000-0000659a8b8c', 'die Geschwister', 'الإخوة', 'siblings', 'les frères et sœurs', 'die', NULL, 'noun', 'Hast du Geschwister?', 'Do you have siblings?', 'A1', 22),
  ('00000000-0000-4000-a000-0000659a8b8c', 'der Sohn', 'الابن', 'son', 'le fils', 'der', 'die Söhne', 'noun', 'Wir haben einen Sohn.', 'We have a son.', 'A1', 23),
  ('00000000-0000-4000-a000-0000659a8b8c', 'die Tochter', 'الابنة', 'daughter', 'la fille', 'die', 'die Töchter', 'noun', 'Meine Tochter geht zur Schule.', 'My daughter goes to school.', 'A1', 24),
  ('00000000-0000-4000-a000-0000659a8b8c', 'die Großeltern', 'الأجداد', 'grandparents', 'les grands-parents', 'die', NULL, 'noun', 'Meine Großeltern wohnen auf dem Land.', 'My grandparents live in the countryside.', 'A1', 25),
  ('00000000-0000-4000-a000-0000659a8b8c', 'verheiratet', 'متزوج', 'married', 'marié(e)', NULL, NULL, 'adjective', 'Meine Eltern sind verheiratet.', 'My parents are married.', 'A1', 26),
  ('00000000-0000-4000-a000-0000659a8b8c', 'das Brot', 'الخبز', 'bread', 'le pain', 'das', 'die Brote', 'noun', 'Ich kaufe ein Brot.', 'I buy a loaf of bread.', 'A1', 27),
  ('00000000-0000-4000-a000-0000659a8b8c', 'die Milch', 'الحليب', 'milk', 'le lait', 'die', NULL, 'noun', 'Die Milch ist frisch.', 'The milk is fresh.', 'A1', 28),
  ('00000000-0000-4000-a000-0000659a8b8c', 'der Käse', 'الجبن', 'cheese', 'le fromage', 'der', NULL, 'noun', 'Der Käse schmeckt gut.', 'The cheese tastes good.', 'A1', 29),
  ('00000000-0000-4000-a000-0000659a8b8c', 'der Apfel', 'التفاح', 'apple', 'la pomme', 'der', 'die Äpfel', 'noun', 'Der Apfel ist rot.', 'The apple is red.', 'A1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000659a8b8c', 'Präsens der regelmäßigen Verben (Present Tense) / المضارع للأفعال المنتظمة', 'In German, regular verbs follow a consistent pattern. The infinitive ends in -en. Remove the -en and add the personal endings: ich -e, du -st, er/sie/es -t, wir -en, ihr -t, sie/Sie -en. For most Arabic speakers, this is easier than Arabic verb conjugation because German has fewer forms.', '[{"rule":"ich: stem + e","note":"Ich lerne, ich wohne, ich arbeite"},{"rule":"du: stem + st","note":"Du lernst, du wohnst, du arbeitest"},{"rule":"er/sie/es: stem + t","note":"Er lernt, sie wohnt, es arbeitet"},{"rule":"wir: stem + en","note":"Wir lernen, wir wohnen, wir arbeiten"},{"rule":"ihr: stem + t","note":"Ihr lernt, ihr wohnt, ihr arbeitet"},{"rule":"sie/Sie: stem + en","note":"Sie lernen, Sie wohnen"}]', '[{"german":"Ich lerne Deutsch.","arabic":"أنا أتعلم الألمانية.","english":"I am learning German."},{"german":"Du wohnst in Berlin.","arabic":"أنت تسكن في برلين.","english":"You live in Berlin."},{"german":"Er arbeitet bei Siemens.","arabic":"هو يعمل في سيمنز.","english":"He works at Siemens."}]', '[{"mistake":"Ich lernen Deutsch","correction":"Ich lerne Deutsch","explanation":"After \"ich\" we use the stem + e, not the infinitive."},{"mistake":"Er lerne Deutsch","correction":"Er lernt Deutsch","explanation":"After \"er/sie/es\" we add -t, not -e."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000659a8b8c', 'multiple_choice', 'Which German word matches "trip"?', '["der Bahnhof","der Flughafen","die Reise","der Zug"]', 'die Reise', '"trip" = "die Reise" in German. Article: die Plural: die Reisen', 1, 1),
  ('00000000-0000-4000-a000-0000659a8b8c', 'multiple_choice', 'Which German word matches "train"?', '["der Zug","die Reise","der Flughafen","das Ticket"]', 'der Zug', '"train" = "der Zug" in German. Article: der Plural: die Züge', 1, 2),
  ('00000000-0000-4000-a000-0000659a8b8c', 'multiple_choice', 'Which German word matches "ticket"?', '["der Flughafen","der Bahnhof","der Zug","die Reise"]', 'das Ticket', '"ticket" = "das Ticket" in German. Article: das Plural: die Tickets', 1, 3),
  ('00000000-0000-4000-a000-0000659a8b8c', 'multiple_choice', 'Which German word matches "train station"?', '["der Bahnhof","das Ticket","die Reise","der Flughafen"]', 'der Bahnhof', '"train station" = "der Bahnhof" in German. Article: der Plural: die Bahnhöfe', 1, 4),
  ('00000000-0000-4000-a000-0000659a8b8c', 'multiple_choice', 'Which German word matches "airport"?', '["der Flughafen","das Ticket","der Zug","der Bahnhof"]', 'der Flughafen', '"airport" = "der Flughafen" in German. Article: der Plural: die Flughäfen', 1, 5),
  ('00000000-0000-4000-a000-0000659a8b8c', 'fill_gap', 'Complete the sentence: Ich ___ gern über Transportation. (sprechen)', '["spreche","sprichst","spricht","sprechen"]', 'spreche', 'ich spreche gern = I like to speak. Stem: sprech- + e.', 2, 6),
  ('00000000-0000-4000-a000-0000659a8b8c', 'translation', 'Translate to German: "I am learning about Transportation."', '["Ich lerne über Transportation.","Ich lerne Transportation.","Lerne ich Transportation."]', 'Ich lerne über Transportation.', '"Ich lerne über..." = "I am learning about..."', 2, 7),
  ('00000000-0000-4000-a000-0000659a8b8c', 'matching', 'Match: Which word pairs are correct?', '["die Reise - trip, der Zug - train"]', 'Matched correctly', 'Each German word has a unique English equivalent.', 2, 8);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-0000659a8b8c', 'multiple_choice', 'What does "die Reise" mean in English?', '["trip","to run","beautiful","yesterday"]', 'trip', 1, 1),
  ('00000000-0000-4000-a000-0000659a8b8c', 'multiple_choice', 'What is the correct article for "der Zug"?', '["der","die","das","den"]', 'der', 1, 2),
  ('00000000-0000-4000-a000-0000659a8b8c', 'true_false', 'The word "das Ticket" is related to Transportation.', '["True","False"]', 'True', 1, 3),
  ('00000000-0000-4000-a000-0000659a8b8c', 'multiple_choice', 'Which sentence correctly uses present_tense?', '["Ich lerne Deutsch.","Du wohnst in Berlin.","Er arbeitet bei Siemens."]', 'Ich lerne Deutsch.', 2, 4),
  ('00000000-0000-4000-a000-0000659a8b8c', 'true_false', 'German word order puts the verb in second position in main clauses.', '["True","False"]', 'True', 1, 5),
  ('00000000-0000-4000-a000-0000659a8b8c', 'fill_blank', 'Complete: Ich ___ (train station) Deutsch.', '["der Bahnhof","lernt","lernst","lernen"]', 'lerne', 2, 6),
  ('00000000-0000-4000-a000-0000659a8b8c', 'multiple_choice', 'What is the German word for "airport"?', '["der Flughafen","das Hotel","der Pass","der Koffer"]', 'der Flughafen', 1, 7),
  ('00000000-0000-4000-a000-0000659a8b8c', 'true_false', 'In German, ALL nouns are always capitalised.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-0000659a8b8c', 'multiple_choice', 'How do you say "please" in a restaurant in Germany?', '["Bitte","Danke","Tschüss","Hallo"]', 'Bitte', 1, 9),
  ('00000000-0000-4000-a000-0000659a8b8c', 'fill_blank', 'Wo ___ (to live) du?', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 2, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, french_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-0000659a8b8c', 'Ich möchte ein Ticket nach Berlin.', 'I''d like a ticket to Berlin.', 'أريد تذكرة إلى برلين.', NULL, 'Used in Reisen und Freizeit', 'formal', false, 1),
  ('00000000-0000-4000-a000-0000659a8b8c', 'Wann fährt der Zug ab?', 'When does the train depart?', 'متى يغادر القطار؟', NULL, 'Used in Reisen und Freizeit', 'formal', false, 2),
  ('00000000-0000-4000-a000-0000659a8b8c', 'Wo ist der Bahnsteig?', 'Where is the platform?', 'أين الرصيف؟', NULL, 'Used in Reisen und Freizeit', 'formal', false, 3),
  ('00000000-0000-4000-a000-0000659a8b8c', 'Ist dieser Platz frei?', 'Is this seat free?', 'هل هذا المقعد شاغر؟', NULL, 'Used in Reisen und Freizeit', 'neutral', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-0000659a8b8c', 'die die Reise (die Reisen)', 'trip — الرحلة', 'noun', 'vocabulary', 1),
  ('00000000-0000-4000-a000-0000659a8b8c', 'der der Zug (die Züge)', 'train — القطار', 'noun', 'vocabulary', 2),
  ('00000000-0000-4000-a000-0000659a8b8c', 'das das Ticket (die Tickets)', 'ticket — التذكرة', 'noun', 'vocabulary', 3),
  ('00000000-0000-4000-a000-0000659a8b8c', 'der der Bahnhof (die Bahnhöfe)', 'train station — محطة القطار', 'noun', 'vocabulary', 4),
  ('00000000-0000-4000-a000-0000659a8b8c', 'der der Flughafen (die Flughäfen)', 'airport — المطار', 'noun', 'vocabulary', 5),
  ('00000000-0000-4000-a000-0000659a8b8c', 'das das Hotel (die Hotels)', 'hotel — الفندق', 'noun', 'vocabulary', 6),
  ('00000000-0000-4000-a000-0000659a8b8c', 'der der Pass (die Pässe)', 'passport — جواز السفر', 'noun', 'vocabulary', 7),
  ('00000000-0000-4000-a000-0000659a8b8c', 'der der Koffer (die Koffer)', 'suitcase — الحقيبة', 'noun', 'vocabulary', 8),
  ('00000000-0000-4000-a000-0000659a8b8c', 'Hallo', 'hello — مرحباً', 'interjection', 'vocabulary', 9),
  ('00000000-0000-4000-a000-0000659a8b8c', 'Guten Morgen', 'good morning — صباح الخير', 'phrase', 'vocabulary', 10),
  ('00000000-0000-4000-a000-0000659a8b8c', 'Guten Tag', 'good day — نهارك سعيد', 'phrase', 'vocabulary', 11),
  ('00000000-0000-4000-a000-0000659a8b8c', 'Tschüss', 'bye — مع السلامة', 'interjection', 'vocabulary', 12),
  ('00000000-0000-4000-a000-0000659a8b8c', 'der der Name (die Namen)', 'name — الاسم', 'noun', 'vocabulary', 13),
  ('00000000-0000-4000-a000-0000659a8b8c', 'wie', 'how — كيف', 'adverb', 'vocabulary', 14),
  ('00000000-0000-4000-a000-0000659a8b8c', 'freuen', 'to be pleased — يسر', 'verb', 'vocabulary', 15),
  ('00000000-0000-4000-a000-0000659a8b8c', 'Ich lerne Deutsch.', 'I am learning German.', 'Präsens der regelmäßigen Verben (Present Tense)', 'grammar', 16),
  ('00000000-0000-4000-a000-0000659a8b8c', 'Du wohnst in Berlin.', 'You live in Berlin.', 'Präsens der regelmäßigen Verben (Present Tense)', 'grammar', 17),
  ('00000000-0000-4000-a000-0000659a8b8c', 'Er arbeitet bei Siemens.', 'He works at Siemens.', 'Präsens der regelmäßigen Verben (Present Tense)', 'grammar', 18);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, french_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-0000659a8b8c', 'Verkehrsmittel — Leseübung', 'Nächste Woche mache ich eine Reise nach München. Ich fahre mit dem Zug. Ich kaufe ein Ticket am Bahnhof. Der Zug fährt um 8 Uhr ab. Die Fahrt dauert 4 Stunden. In München besuche ich meine Tante. Sie wohnt in der Nähe des Hauptbahnhofs. Wir gehen zusammen in ein Restaurant. Dann besuchen wir das Deutsche Museum. Die Reise wird schön.', 'Next week I am taking a trip to Munich. I am going by train. I buy a ticket at the train station. The train departs at 8 o''clock. The journey takes 4 hours. In Munich I visit my aunt. She lives near the main train station. We go to a restaurant together. Then we visit the German Museum. The trip will be nice.', 'الأسبوع القادم سأسافر إلى ميونخ. سأذهب بالقطار. أشتري تذكرة من محطة القطار. القطار يغادر في الساعة 8. الرحلة تستغرق 4 ساعات. في ميونخ أزور عمتي. تسكن بالقرب من المحطة الرئيسية. نذهب معاً إلى مطعم. ثم نزور المتحف الألماني. الرحلة ستكون جميلة.', NULL, 60, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, french_translation, duration_seconds, speaker_count, scenario) values
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

[Mitarbeiter]: إذاً التكلفة 73.50 يورو. القطار يغادر في الساعة 10.', '[Kunde]: 

[Mitarbeiter]: 

[Kunde]: 

[Mitarbeiter]: 

[Kunde]: 

[Mitarbeiter]: ', 72, 2, 'Reisen und Freizeit');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-0000659a8b8c', '🔊 Sprechen: Verkehrsmittel', 'Roleplay: You are in a German café. Introduce yourself and talk about Transportation. Your partner (AI) will respond naturally.', 'Transportation', ARRAY['Use complete sentences — not single words','Pause between phrases, not between words','Don''t translate from Arabic word-for-word']::text[], ARRAY['die Reise','der Zug','das Ticket','der Bahnhof','der Flughafen','das Hotel','der Pass','der Koffer']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-0000659a8b8c', '✏️ Schreiben: Verkehrsmittel', 'Write an email to a German friend about "Transportation". Tell them what you learned, what you found interesting, and ask two questions about their experience with this topic. Use at least 8 vocabulary words from this lesson. Sign off naturally ("Viele Grüße", "Liebe Grüße").', ARRAY['Start with "Hallo" or "Liebe/r"','Keep sentences short (Subject-Verb-Object)','End with a friendly farewell']::text[], ARRAY['die Reise','der Zug','das Ticket','der Bahnhof','der Flughafen','das Hotel','der Pass','der Koffer']::text[], ARRAY['Sentence structure','Vocabulary usage']::text[], 50, 100, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000659a8b8c', 'Verkehrsmittel — Roleplay', 'Transportation', 'Student', 'Teacher', 'Practice conversation about Transportation', 'Hallo! Lass uns über dieses Thema sprechen.', 'beginner', 1, ARRAY['die Reise','der Zug','das Ticket','der Bahnhof','der Flughafen','das Hotel','der Pass','der Koffer']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000659a8b8c', 'Verkehrsmittel — Advanced Roleplay', 'Transportation', 'Customer', 'Assistant', 'Extended conversation about Transportation', 'Guten Tag! Wie kann ich Ihnen helfen?', 'beginner', 2, ARRAY['die Reise','der Zug','das Ticket','der Bahnhof','der Flughafen','das Hotel','der Pass','der Koffer']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-0000659a8b8c', 'Verkehrsmittel — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Verkehrsmittel".', 'Creative practice for Transportation', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-0000659a8b8c', '📚 Hausaufgabe: Verkehrsmittel', 'Complete these tasks to reinforce "Verkehrsmittel".', 'mixed', '[{"description":"Create 10 flashcards from this lesson''s vocabulary — write German on one side, Arabic on the other. Test yourself 3 times."},{"description":"Write 6 sentences about Transportation: 2 statements, 2 questions, 2 negations — all using present_tense."},{"description":"Record yourself reading the dialogue aloud. Listen to the recording and note 3 things to improve."},{"description":"Find 3 real German websites, videos, or articles about Transportation. Note 5 new words you discovered."}]', 50, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-0000659a8b8c', '🎯 Great work! In this lesson you learned 150 new words about Transportation. You practiced present_tense — an important grammar topic for A1 level. You read a text, listened to a dialogue, and practiced speaking and writing. Keep going!', '["150 vocabulary items about Transportation","present_tense — grammar explanation and practice","Reading comprehension: text about Transportation","Listening comprehension: dialogue about Transportation","Speaking practice: roleplay/discussion about Transportation","Writing task: text about Transportation"]', '[{"title":"Verkehrsmittel Review","summary":"present_tense — the main grammar focus. Focus on understanding when to use this structure and forming basic sentences."}]', ARRAY['die Reise (trip)','der Zug (train)','das Ticket (ticket)','der Bahnhof (train station)','der Flughafen (airport)']::text[], ARRAY['Don''t translate from Arabic word-for-word — German has different sentence structure','Learn every noun with its article: NEVER learn "Tisch" alone, always "der Tisch"','Verb always in position 2 in main clauses']::text[], ARRAY['Practice 15-20 minutes daily — consistency beats intensity','Speak out loud: German pronunciation needs muscle memory','Use the new vocabulary within 24 hours or you''ll forget it','Watch German YouTube videos about Transportation for authentic input']::text[]);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000659a8b8c', 'Pronunciation: German sounds for "travel"', 'In German, vowels are pure — unlike English diphthongs. The "ch" sound after a, o, u is guttural (like Arabic خ). After e, i, ä, ö, ü it''s soft (like English "huge" without the "u").

Common mistake for Arabic speakers: Arabic speakers tend to over-emphasise consonants. German flows — connect words smoothly (e.g., "Ich habe" becomes /ɪçabə/ not /ɪç ˈhaːbə/).', '[]', '[{"german":"die Reise","arabic":"","english":"","phonetic":""},{"german":"der Zug","arabic":"","english":"","phonetic":""},{"german":"das Ticket","arabic":"","english":"","phonetic":""},{"german":"der Bahnhof","arabic":"","english":"","phonetic":""}]', '[]', 10);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000659a8b8c', 'translation', 'Translate to German: "I use the word "trip" in a sentence about Transportation."', '[]', 'Die Reise nach München war schön.', 'Use die  "die Reise" with the correct present_tense form.', 1, 40);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000659a8b8c', 'translation', 'Translate to German: "I use the word "train" in a sentence about Transportation."', '[]', 'Der Zug kommt um 10 Uhr an.', 'Use der  "der Zug" with the correct present_tense form.', 1, 41);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000659a8b8c', 'translation', 'Translate to German: "I use the word "ticket" in a sentence about Transportation."', '[]', 'Ein Ticket nach Berlin, bitte.', 'Use das  "das Ticket" with the correct present_tense form.', 1, 42);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000659a8b8c', 'Culture: 🇩🇪 Deutsche Kultur: Transportation', 'In Germany, Transportation is approached with typical German directness and efficiency. Germans value clarity over small talk. When discussing Transportation, expect honest feedback and straightforward questions. This is not rudeness — it''s cultural. Arabic speakers often find this too direct at first, but you''ll appreciate it once you get used to it.

في ألمانيا، يتم التعامل مع Transportation بوضوح وكفاءة. الألمان يقدرون الوضوح أكثر من المجاملات. لا تعتبر هذه وقاحة - إنها ثقافة مختلفة.', '["Tip: Always use \"Sie\" (formal) with strangers and colleagues","Tip: Germans appreciate punctuality — arrive 5 minutes early","Tip: Direct feedback is a sign of respect, not criticism","Tip: Prepare factual arguments, not emotional appeals"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000659a8b8c', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Using \"reisen\" instead of \"fahren\" for specific trips","correction":"reisen = general travel, fahren = specific journey by vehicle","explanation":"Arabic \"saafara\" covers both. German distinguishes between abstract and concrete travel."},{"mistake":"Using the wrong article (der/die/das) for nouns","correction":"Learn each noun with its article as one piece","explanation":"Arabic has no articles for nouns without gender connection"}]', 30);

  -- Lesson 2: Am Bahnhof (L-A1-06-02)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-0000659a8b8d', '00000000-0000-4000-a000-000039b4d363', 'Am Bahnhof', 'Learn how to buy tickets and navigate train stations.', 'Train Station', 'speaking', '["Understand and apply question_words rules correctly","Use question_words in real conversations","Avoid common mistakes Arabic speakers make with question_words","Read and understand question_words in context","Listen and identify question_words in speech","Write sentences using question_words correctly"]', 30, 2, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, french_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-0000659a8b8d', 'die Reise', 'الرحلة', 'trip', NULL, 'die', 'die Reisen', 'noun', 'Die Reise nach München war schön.', 'The trip to Munich was nice.', 'A1', 1),
  ('00000000-0000-4000-a000-0000659a8b8d', 'der Zug', 'القطار', 'train', NULL, 'der', 'die Züge', 'noun', 'Der Zug kommt um 10 Uhr an.', 'The train arrives at 10 o''clock.', 'A1', 2),
  ('00000000-0000-4000-a000-0000659a8b8d', 'das Ticket', 'التذكرة', 'ticket', NULL, 'das', 'die Tickets', 'noun', 'Ein Ticket nach Berlin, bitte.', 'A ticket to Berlin, please.', 'A1', 3),
  ('00000000-0000-4000-a000-0000659a8b8d', 'der Bahnhof', 'محطة القطار', 'train station', NULL, 'der', 'die Bahnhöfe', 'noun', 'Der Bahnhof ist groß.', 'The train station is big.', 'A1', 4),
  ('00000000-0000-4000-a000-0000659a8b8d', 'der Flughafen', 'المطار', 'airport', NULL, 'der', 'die Flughäfen', 'noun', 'Ich fahre zum Flughafen.', 'I drive to the airport.', 'A1', 5),
  ('00000000-0000-4000-a000-0000659a8b8d', 'das Hotel', 'الفندق', 'hotel', NULL, 'das', 'die Hotels', 'noun', 'Das Hotel ist günstig.', 'The hotel is affordable.', 'A1', 6),
  ('00000000-0000-4000-a000-0000659a8b8d', 'der Pass', 'جواز السفر', 'passport', NULL, 'der', 'die Pässe', 'noun', 'Ich brauche meinen Pass.', 'I need my passport.', 'A1', 7),
  ('00000000-0000-4000-a000-0000659a8b8d', 'der Koffer', 'الحقيبة', 'suitcase', NULL, 'der', 'die Koffer', 'noun', 'Mein Koffer ist schwer.', 'My suitcase is heavy.', 'A1', 8),
  ('00000000-0000-4000-a000-0000659a8b8d', 'Hallo', 'مرحباً', 'hello', 'bonjour', NULL, NULL, 'interjection', 'Hallo, wie geht es dir?', 'Hello, how are you?', 'A1', 9),
  ('00000000-0000-4000-a000-0000659a8b8d', 'Guten Morgen', 'صباح الخير', 'good morning', 'bonjour (le matin)', NULL, NULL, 'phrase', 'Guten Morgen, Herr Müller.', 'Good morning, Mr. Müller.', 'A1', 10),
  ('00000000-0000-4000-a000-0000659a8b8d', 'Guten Tag', 'نهارك سعيد', 'good day', 'bonjour (l''après-midi)', NULL, NULL, 'phrase', 'Guten Tag, Frau Schmidt.', 'Good day, Mrs. Schmidt.', 'A1', 11),
  ('00000000-0000-4000-a000-0000659a8b8d', 'Tschüss', 'مع السلامة', 'bye', 'au revoir / salut', NULL, NULL, 'interjection', 'Tschüss, bis morgen!', 'Bye, see you tomorrow!', 'A1', 12),
  ('00000000-0000-4000-a000-0000659a8b8d', 'der Name', 'الاسم', 'name', 'le nom', 'der', 'die Namen', 'noun', 'Mein Name ist Anna.', 'My name is Anna.', 'A1', 13),
  ('00000000-0000-4000-a000-0000659a8b8d', 'wie', 'كيف', 'how', 'comment', NULL, NULL, 'adverb', 'Wie heißt du?', 'What is your name?', 'A1', 14),
  ('00000000-0000-4000-a000-0000659a8b8d', 'freuen', 'يسر', 'to be pleased', 'se réjouir', NULL, NULL, 'verb', 'Ich freue mich, dich kennenzulernen.', 'I am pleased to meet you.', 'A1', 15),
  ('00000000-0000-4000-a000-0000659a8b8d', 'Willkommen', 'أهلاً وسهلاً', 'welcome', 'bienvenue', NULL, NULL, 'interjection', 'Willkommen in Deutschland!', 'Welcome to Germany!', 'A1', 16),
  ('00000000-0000-4000-a000-0000659a8b8d', 'die Familie', 'العائلة', 'family', 'la famille', 'die', 'die Familien', 'noun', 'Meine Familie ist groß.', 'My family is big.', 'A1', 17),
  ('00000000-0000-4000-a000-0000659a8b8d', 'der Vater', 'الأب', 'father', 'le père', 'der', 'die Väter', 'noun', 'Mein Vater ist Ingenieur.', 'My father is an engineer.', 'A1', 18),
  ('00000000-0000-4000-a000-0000659a8b8d', 'die Mutter', 'الأم', 'mother', 'la mère', 'die', 'die Mütter', 'noun', 'Meine Mutter kocht gut.', 'My mother cooks well.', 'A1', 19),
  ('00000000-0000-4000-a000-0000659a8b8d', 'der Bruder', 'الأخ', 'brother', 'le frère', 'der', 'die Brüder', 'noun', 'Mein Bruder ist 15 Jahre alt.', 'My brother is 15 years old.', 'A1', 20),
  ('00000000-0000-4000-a000-0000659a8b8d', 'die Schwester', 'الأخت', 'sister', 'la sœur', 'die', 'die Schwestern', 'noun', 'Meine Schwester studiert Medizin.', 'My sister studies medicine.', 'A1', 21),
  ('00000000-0000-4000-a000-0000659a8b8d', 'die Geschwister', 'الإخوة', 'siblings', 'les frères et sœurs', 'die', NULL, 'noun', 'Hast du Geschwister?', 'Do you have siblings?', 'A1', 22),
  ('00000000-0000-4000-a000-0000659a8b8d', 'der Sohn', 'الابن', 'son', 'le fils', 'der', 'die Söhne', 'noun', 'Wir haben einen Sohn.', 'We have a son.', 'A1', 23),
  ('00000000-0000-4000-a000-0000659a8b8d', 'die Tochter', 'الابنة', 'daughter', 'la fille', 'die', 'die Töchter', 'noun', 'Meine Tochter geht zur Schule.', 'My daughter goes to school.', 'A1', 24),
  ('00000000-0000-4000-a000-0000659a8b8d', 'die Großeltern', 'الأجداد', 'grandparents', 'les grands-parents', 'die', NULL, 'noun', 'Meine Großeltern wohnen auf dem Land.', 'My grandparents live in the countryside.', 'A1', 25),
  ('00000000-0000-4000-a000-0000659a8b8d', 'verheiratet', 'متزوج', 'married', 'marié(e)', NULL, NULL, 'adjective', 'Meine Eltern sind verheiratet.', 'My parents are married.', 'A1', 26),
  ('00000000-0000-4000-a000-0000659a8b8d', 'das Brot', 'الخبز', 'bread', 'le pain', 'das', 'die Brote', 'noun', 'Ich kaufe ein Brot.', 'I buy a loaf of bread.', 'A1', 27),
  ('00000000-0000-4000-a000-0000659a8b8d', 'die Milch', 'الحليب', 'milk', 'le lait', 'die', NULL, 'noun', 'Die Milch ist frisch.', 'The milk is fresh.', 'A1', 28),
  ('00000000-0000-4000-a000-0000659a8b8d', 'der Käse', 'الجبن', 'cheese', 'le fromage', 'der', NULL, 'noun', 'Der Käse schmeckt gut.', 'The cheese tastes good.', 'A1', 29),
  ('00000000-0000-4000-a000-0000659a8b8d', 'der Apfel', 'التفاح', 'apple', 'la pomme', 'der', 'die Äpfel', 'noun', 'Der Apfel ist rot.', 'The apple is red.', 'A1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000659a8b8d', 'W-Fragen (Question Words) / أدوات الاستفهام', 'German question words (W-Wörter) all start with W. They ask for specific information. wer (who), was (what), wo (where), woher (where from), wohin (where to), wie (how), wann (when), warum (why), wie viel (how much). The verb stays in position 2, the question word is in position 1.', '[{"rule":"Question word + verb + subject + rest","note":"Wo wohnst du? Was machst du? Wie heißt du?"},{"rule":"wer (who) changes case: wer (Nom), wen (Akk), wem (Dat)","note":"Wer ist das? Wen siehst du? Wem hilfst du?"},{"rule":"wie = how, wo = where, wann = when, warum = why","note":"Wie geht es dir? Wo ist der Bahnhof? Wann kommst du?"}]', '[{"german":"Wie heißt du?","arabic":"ما اسمك؟","english":"What is your name?"},{"german":"Wo wohnst du?","arabic":"أين تسكن؟","english":"Where do you live?"},{"german":"Woher kommst du?","arabic":"من أين أنت؟","english":"Where do you come from?"},{"german":"Was machst du beruflich?","arabic":"ماذا تعمل؟","english":"What do you do for a living?"}]', '[{"mistake":"Du wohnst wo? (putting question word at the end)","correction":"Wo wohnst du?","explanation":"The question word ALWAYS comes first in German W-questions."},{"mistake":"Was ist dein Name? (too literal from English)","correction":"Wie heißt du?","explanation":"German uses \"Wie heißt du?\" (How are you called?) not \"Was ist dein Name?\""}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000659a8b8d', 'multiple_choice', 'Which German word matches "trip"?', '["der Bahnhof","der Zug","das Ticket","der Flughafen"]', 'die Reise', '"trip" = "die Reise" in German. Article: die Plural: die Reisen', 1, 1),
  ('00000000-0000-4000-a000-0000659a8b8d', 'multiple_choice', 'Which German word matches "train"?', '["das Ticket","der Bahnhof","der Flughafen","die Reise"]', 'der Zug', '"train" = "der Zug" in German. Article: der Plural: die Züge', 1, 2),
  ('00000000-0000-4000-a000-0000659a8b8d', 'multiple_choice', 'Which German word matches "ticket"?', '["die Reise","das Ticket","der Zug","der Flughafen"]', 'das Ticket', '"ticket" = "das Ticket" in German. Article: das Plural: die Tickets', 1, 3),
  ('00000000-0000-4000-a000-0000659a8b8d', 'multiple_choice', 'Which German word matches "train station"?', '["der Flughafen","der Bahnhof","die Reise","der Zug"]', 'der Bahnhof', '"train station" = "der Bahnhof" in German. Article: der Plural: die Bahnhöfe', 1, 4),
  ('00000000-0000-4000-a000-0000659a8b8d', 'multiple_choice', 'Which German word matches "airport"?', '["der Flughafen","die Reise","der Zug","das Ticket"]', 'der Flughafen', '"airport" = "der Flughafen" in German. Article: der Plural: die Flughäfen', 1, 5),
  ('00000000-0000-4000-a000-0000659a8b8d', 'fill_gap', 'Complete the sentence: Ich ___ gern über Train Station. (sprechen)', '["spreche","sprichst","spricht","sprechen"]', 'spreche', 'ich spreche gern = I like to speak. Stem: sprech- + e.', 2, 6),
  ('00000000-0000-4000-a000-0000659a8b8d', 'translation', 'Translate to German: "I am learning about Train Station."', '["Ich lerne über Train Station.","Ich lerne Train Station.","Lerne ich Train Station."]', 'Ich lerne über Train Station.', '"Ich lerne über..." = "I am learning about..."', 2, 7),
  ('00000000-0000-4000-a000-0000659a8b8d', 'matching', 'Match: Which word pairs are correct?', '["die Reise - trip, der Zug - train"]', 'Matched correctly', 'Each German word has a unique English equivalent.', 2, 8);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-0000659a8b8d', 'multiple_choice', 'What does "die Reise" mean in English?', '["trip","to run","beautiful","yesterday"]', 'trip', 1, 1),
  ('00000000-0000-4000-a000-0000659a8b8d', 'multiple_choice', 'What is the correct article for "der Zug"?', '["der","die","das","den"]', 'der', 1, 2),
  ('00000000-0000-4000-a000-0000659a8b8d', 'true_false', 'The word "das Ticket" is related to Train Station.', '["True","False"]', 'True', 1, 3),
  ('00000000-0000-4000-a000-0000659a8b8d', 'multiple_choice', 'Which sentence correctly uses question_words?', '["Wie heißt du?","Wo wohnst du?","Woher kommst du?","Was machst du beruflich?"]', 'Wie heißt du?', 2, 4),
  ('00000000-0000-4000-a000-0000659a8b8d', 'true_false', 'German word order puts the verb in second position in main clauses.', '["True","False"]', 'True', 1, 5),
  ('00000000-0000-4000-a000-0000659a8b8d', 'fill_blank', 'Complete: Ich ___ (train station) Deutsch.', '["der Bahnhof","lernt","lernst","lernen"]', 'lerne', 2, 6),
  ('00000000-0000-4000-a000-0000659a8b8d', 'multiple_choice', 'What is the German word for "airport"?', '["der Flughafen","das Hotel","der Pass","der Koffer"]', 'der Flughafen', 1, 7),
  ('00000000-0000-4000-a000-0000659a8b8d', 'true_false', 'In German, ALL nouns are always capitalised.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-0000659a8b8d', 'multiple_choice', 'How do you say "please" in a restaurant in Germany?', '["Bitte","Danke","Tschüss","Hallo"]', 'Bitte', 1, 9),
  ('00000000-0000-4000-a000-0000659a8b8d', 'fill_blank', 'Wo ___ (to live) du?', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 2, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, french_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-0000659a8b8d', 'Ich möchte ein Ticket nach Berlin.', 'I''d like a ticket to Berlin.', 'أريد تذكرة إلى برلين.', NULL, 'Used in Reisen und Freizeit', 'formal', false, 1),
  ('00000000-0000-4000-a000-0000659a8b8d', 'Wann fährt der Zug ab?', 'When does the train depart?', 'متى يغادر القطار؟', NULL, 'Used in Reisen und Freizeit', 'formal', false, 2),
  ('00000000-0000-4000-a000-0000659a8b8d', 'Wo ist der Bahnsteig?', 'Where is the platform?', 'أين الرصيف؟', NULL, 'Used in Reisen und Freizeit', 'formal', false, 3),
  ('00000000-0000-4000-a000-0000659a8b8d', 'Ist dieser Platz frei?', 'Is this seat free?', 'هل هذا المقعد شاغر؟', NULL, 'Used in Reisen und Freizeit', 'neutral', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-0000659a8b8d', 'die die Reise (die Reisen)', 'trip — الرحلة', 'noun', 'vocabulary', 1),
  ('00000000-0000-4000-a000-0000659a8b8d', 'der der Zug (die Züge)', 'train — القطار', 'noun', 'vocabulary', 2),
  ('00000000-0000-4000-a000-0000659a8b8d', 'das das Ticket (die Tickets)', 'ticket — التذكرة', 'noun', 'vocabulary', 3),
  ('00000000-0000-4000-a000-0000659a8b8d', 'der der Bahnhof (die Bahnhöfe)', 'train station — محطة القطار', 'noun', 'vocabulary', 4),
  ('00000000-0000-4000-a000-0000659a8b8d', 'der der Flughafen (die Flughäfen)', 'airport — المطار', 'noun', 'vocabulary', 5),
  ('00000000-0000-4000-a000-0000659a8b8d', 'das das Hotel (die Hotels)', 'hotel — الفندق', 'noun', 'vocabulary', 6),
  ('00000000-0000-4000-a000-0000659a8b8d', 'der der Pass (die Pässe)', 'passport — جواز السفر', 'noun', 'vocabulary', 7),
  ('00000000-0000-4000-a000-0000659a8b8d', 'der der Koffer (die Koffer)', 'suitcase — الحقيبة', 'noun', 'vocabulary', 8),
  ('00000000-0000-4000-a000-0000659a8b8d', 'Hallo', 'hello — مرحباً', 'interjection', 'vocabulary', 9),
  ('00000000-0000-4000-a000-0000659a8b8d', 'Guten Morgen', 'good morning — صباح الخير', 'phrase', 'vocabulary', 10),
  ('00000000-0000-4000-a000-0000659a8b8d', 'Guten Tag', 'good day — نهارك سعيد', 'phrase', 'vocabulary', 11),
  ('00000000-0000-4000-a000-0000659a8b8d', 'Tschüss', 'bye — مع السلامة', 'interjection', 'vocabulary', 12),
  ('00000000-0000-4000-a000-0000659a8b8d', 'der der Name (die Namen)', 'name — الاسم', 'noun', 'vocabulary', 13),
  ('00000000-0000-4000-a000-0000659a8b8d', 'wie', 'how — كيف', 'adverb', 'vocabulary', 14),
  ('00000000-0000-4000-a000-0000659a8b8d', 'freuen', 'to be pleased — يسر', 'verb', 'vocabulary', 15),
  ('00000000-0000-4000-a000-0000659a8b8d', 'Wie heißt du?', 'What is your name?', 'W-Fragen (Question Words)', 'grammar', 16),
  ('00000000-0000-4000-a000-0000659a8b8d', 'Wo wohnst du?', 'Where do you live?', 'W-Fragen (Question Words)', 'grammar', 17),
  ('00000000-0000-4000-a000-0000659a8b8d', 'Woher kommst du?', 'Where do you come from?', 'W-Fragen (Question Words)', 'grammar', 18);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, french_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-0000659a8b8d', 'Am Bahnhof — Leseübung', 'Nächste Woche mache ich eine Reise nach München. Ich fahre mit dem Zug. Ich kaufe ein Ticket am Bahnhof. Der Zug fährt um 8 Uhr ab. Die Fahrt dauert 4 Stunden. In München besuche ich meine Tante. Sie wohnt in der Nähe des Hauptbahnhofs. Wir gehen zusammen in ein Restaurant. Dann besuchen wir das Deutsche Museum. Die Reise wird schön.', 'Next week I am taking a trip to Munich. I am going by train. I buy a ticket at the train station. The train departs at 8 o''clock. The journey takes 4 hours. In Munich I visit my aunt. She lives near the main train station. We go to a restaurant together. Then we visit the German Museum. The trip will be nice.', 'الأسبوع القادم سأسافر إلى ميونخ. سأذهب بالقطار. أشتري تذكرة من محطة القطار. القطار يغادر في الساعة 8. الرحلة تستغرق 4 ساعات. في ميونخ أزور عمتي. تسكن بالقرب من المحطة الرئيسية. نذهب معاً إلى مطعم. ثم نزور المتحف الألماني. الرحلة ستكون جميلة.', NULL, 60, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, french_translation, duration_seconds, speaker_count, scenario) values
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

[Mitarbeiter]: إذاً التكلفة 73.50 يورو. القطار يغادر في الساعة 10.', '[Kunde]: 

[Mitarbeiter]: 

[Kunde]: 

[Mitarbeiter]: 

[Kunde]: 

[Mitarbeiter]: ', 72, 2, 'Reisen und Freizeit');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-0000659a8b8d', '🔊 Sprechen: Am Bahnhof', 'Roleplay: You are in a German café. Introduce yourself and talk about Train Station. Your partner (AI) will respond naturally.', 'Train Station', ARRAY['Use complete sentences — not single words','Pause between phrases, not between words','Don''t translate from Arabic word-for-word']::text[], ARRAY['die Reise','der Zug','das Ticket','der Bahnhof','der Flughafen','das Hotel','der Pass','der Koffer']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-0000659a8b8d', '✏️ Schreiben: Am Bahnhof', 'Write an email to a German friend about "Train Station". Tell them what you learned, what you found interesting, and ask two questions about their experience with this topic. Use at least 8 vocabulary words from this lesson. Sign off naturally ("Viele Grüße", "Liebe Grüße").', ARRAY['Start with "Hallo" or "Liebe/r"','Keep sentences short (Subject-Verb-Object)','End with a friendly farewell']::text[], ARRAY['die Reise','der Zug','das Ticket','der Bahnhof','der Flughafen','das Hotel','der Pass','der Koffer']::text[], ARRAY['Sentence structure','Vocabulary usage']::text[], 50, 100, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000659a8b8d', 'Am Bahnhof — Roleplay', 'Train Station', 'Student', 'Teacher', 'Practice conversation about Train Station', 'Hallo! Lass uns über dieses Thema sprechen.', 'beginner', 1, ARRAY['die Reise','der Zug','das Ticket','der Bahnhof','der Flughafen','das Hotel','der Pass','der Koffer']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000659a8b8d', 'Am Bahnhof — Advanced Roleplay', 'Train Station', 'Customer', 'Assistant', 'Extended conversation about Train Station', 'Guten Tag! Wie kann ich Ihnen helfen?', 'beginner', 2, ARRAY['die Reise','der Zug','das Ticket','der Bahnhof','der Flughafen','das Hotel','der Pass','der Koffer']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-0000659a8b8d', 'Am Bahnhof — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Am Bahnhof".', 'Creative practice for Train Station', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-0000659a8b8d', '📚 Hausaufgabe: Am Bahnhof', 'Complete these tasks to reinforce "Am Bahnhof".', 'mixed', '[{"description":"Create 10 flashcards from this lesson''s vocabulary — write German on one side, Arabic on the other. Test yourself 3 times."},{"description":"Write 6 sentences about Train Station: 2 statements, 2 questions, 2 negations — all using question_words."},{"description":"Record yourself reading the dialogue aloud. Listen to the recording and note 3 things to improve."},{"description":"Find 3 real German websites, videos, or articles about Train Station. Note 5 new words you discovered."}]', 50, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-0000659a8b8d', '🎯 Great work! In this lesson you learned 150 new words about Train Station. You practiced question_words — an important grammar topic for A1 level. You read a text, listened to a dialogue, and practiced speaking and writing. Keep going!', '["150 vocabulary items about Train Station","question_words — grammar explanation and practice","Reading comprehension: text about Train Station","Listening comprehension: dialogue about Train Station","Speaking practice: roleplay/discussion about Train Station","Writing task: text about Train Station"]', '[{"title":"Am Bahnhof Review","summary":"question_words — the main grammar focus. Focus on understanding when to use this structure and forming basic sentences."}]', ARRAY['die Reise (trip)','der Zug (train)','das Ticket (ticket)','der Bahnhof (train station)','der Flughafen (airport)']::text[], ARRAY['Don''t translate from Arabic word-for-word — German has different sentence structure','Learn every noun with its article: NEVER learn "Tisch" alone, always "der Tisch"','Verb always in position 2 in main clauses']::text[], ARRAY['Practice 15-20 minutes daily — consistency beats intensity','Speak out loud: German pronunciation needs muscle memory','Use the new vocabulary within 24 hours or you''ll forget it','Watch German YouTube videos about Train Station for authentic input']::text[]);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000659a8b8d', 'Pronunciation: German sounds for "travel"', 'In German, vowels are pure — unlike English diphthongs. The "ch" sound after a, o, u is guttural (like Arabic خ). After e, i, ä, ö, ü it''s soft (like English "huge" without the "u").

Common mistake for Arabic speakers: Arabic speakers tend to over-emphasise consonants. German flows — connect words smoothly (e.g., "Ich habe" becomes /ɪçabə/ not /ɪç ˈhaːbə/).', '[]', '[{"german":"die Reise","arabic":"","english":"","phonetic":""},{"german":"der Zug","arabic":"","english":"","phonetic":""},{"german":"das Ticket","arabic":"","english":"","phonetic":""},{"german":"der Bahnhof","arabic":"","english":"","phonetic":""}]', '[]', 10);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000659a8b8d', 'translation', 'Translate to German: "I use the word "trip" in a sentence about Train Station."', '[]', 'Die Reise nach München war schön.', 'Use die  "die Reise" with the correct question_words form.', 1, 40);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000659a8b8d', 'translation', 'Translate to German: "I use the word "train" in a sentence about Train Station."', '[]', 'Der Zug kommt um 10 Uhr an.', 'Use der  "der Zug" with the correct question_words form.', 1, 41);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000659a8b8d', 'translation', 'Translate to German: "I use the word "ticket" in a sentence about Train Station."', '[]', 'Ein Ticket nach Berlin, bitte.', 'Use das  "das Ticket" with the correct question_words form.', 1, 42);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000659a8b8d', 'Culture: 🇩🇪 Deutsche Kultur: Train Station', 'In Germany, Train Station is approached with typical German directness and efficiency. Germans value clarity over small talk. When discussing Train Station, expect honest feedback and straightforward questions. This is not rudeness — it''s cultural. Arabic speakers often find this too direct at first, but you''ll appreciate it once you get used to it.

في ألمانيا، يتم التعامل مع Train Station بوضوح وكفاءة. الألمان يقدرون الوضوح أكثر من المجاملات. لا تعتبر هذه وقاحة - إنها ثقافة مختلفة.', '["Tip: Always use \"Sie\" (formal) with strangers and colleagues","Tip: Germans appreciate punctuality — arrive 5 minutes early","Tip: Direct feedback is a sign of respect, not criticism","Tip: Prepare factual arguments, not emotional appeals"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000659a8b8d', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Using \"reisen\" instead of \"fahren\" for specific trips","correction":"reisen = general travel, fahren = specific journey by vehicle","explanation":"Arabic \"saafara\" covers both. German distinguishes between abstract and concrete travel."},{"mistake":"Using the wrong article (der/die/das) for nouns","correction":"Learn each noun with its article as one piece","explanation":"Arabic has no articles for nouns without gender connection"}]', 30);

  -- Lesson 3: Hobbys und Freizeit (L-A1-06-03)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-0000659a8b8e', '00000000-0000-4000-a000-000039b4d363', 'Hobbys und Freizeit', 'Learn vocabulary for hobbies, sports, and free time activities.', 'Hobbies', 'vocabulary', '["Understand and use 149 key vocabulary words about Hobbies","Apply gern_mogen correctly in sentences","Read and comprehend a text about Hobbies","Listen and understand a natural dialogue about Hobbies","Speak about Hobbies with confidence","Write a short text about Hobbies using new vocabulary"]', 30, 3, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, french_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-0000659a8b8e', 'das Hobby', 'الهواية', 'hobby', NULL, 'das', 'die Hobbys', 'noun', 'Mein Hobby ist Lesen.', 'My hobby is reading.', 'A1', 1),
  ('00000000-0000-4000-a000-0000659a8b8e', 'der Sport', 'الرياضة', 'sports', NULL, 'der', NULL, 'noun', 'Ich treibe gerne Sport.', 'I like to do sports.', 'A1', 2),
  ('00000000-0000-4000-a000-0000659a8b8e', 'lesen', 'يقرأ', 'to read', NULL, NULL, NULL, 'verb', 'Ich lese gerne Bücher.', 'I like to read books.', 'A1', 3),
  ('00000000-0000-4000-a000-0000659a8b8e', 'reisen', 'يسافر', 'to travel', NULL, NULL, NULL, 'verb', 'Ich reise gerne.', 'I like to travel.', 'A1', 4),
  ('00000000-0000-4000-a000-0000659a8b8e', 'schwimmen', 'يسبح', 'to swim', NULL, NULL, NULL, 'verb', 'Ich schwimme im See.', 'I swim in the lake.', 'A1', 5),
  ('00000000-0000-4000-a000-0000659a8b8e', 'der Fußball', 'كرة القدم', 'soccer', NULL, 'der', NULL, 'noun', 'Fußball ist beliebt in Deutschland.', 'Soccer is popular in Germany.', 'A1', 6),
  ('00000000-0000-4000-a000-0000659a8b8e', 'die Musik', 'الموسيقى', 'music', NULL, 'die', NULL, 'noun', 'Ich höre gerne Musik.', 'I like to listen to music.', 'A1', 7),
  ('00000000-0000-4000-a000-0000659a8b8e', 'Hallo', 'مرحباً', 'hello', 'bonjour', NULL, NULL, 'interjection', 'Hallo, wie geht es dir?', 'Hello, how are you?', 'A1', 8),
  ('00000000-0000-4000-a000-0000659a8b8e', 'Guten Morgen', 'صباح الخير', 'good morning', 'bonjour (le matin)', NULL, NULL, 'phrase', 'Guten Morgen, Herr Müller.', 'Good morning, Mr. Müller.', 'A1', 9),
  ('00000000-0000-4000-a000-0000659a8b8e', 'Guten Tag', 'نهارك سعيد', 'good day', 'bonjour (l''après-midi)', NULL, NULL, 'phrase', 'Guten Tag, Frau Schmidt.', 'Good day, Mrs. Schmidt.', 'A1', 10),
  ('00000000-0000-4000-a000-0000659a8b8e', 'Tschüss', 'مع السلامة', 'bye', 'au revoir / salut', NULL, NULL, 'interjection', 'Tschüss, bis morgen!', 'Bye, see you tomorrow!', 'A1', 11),
  ('00000000-0000-4000-a000-0000659a8b8e', 'der Name', 'الاسم', 'name', 'le nom', 'der', 'die Namen', 'noun', 'Mein Name ist Anna.', 'My name is Anna.', 'A1', 12),
  ('00000000-0000-4000-a000-0000659a8b8e', 'wie', 'كيف', 'how', 'comment', NULL, NULL, 'adverb', 'Wie heißt du?', 'What is your name?', 'A1', 13),
  ('00000000-0000-4000-a000-0000659a8b8e', 'freuen', 'يسر', 'to be pleased', 'se réjouir', NULL, NULL, 'verb', 'Ich freue mich, dich kennenzulernen.', 'I am pleased to meet you.', 'A1', 14),
  ('00000000-0000-4000-a000-0000659a8b8e', 'Willkommen', 'أهلاً وسهلاً', 'welcome', 'bienvenue', NULL, NULL, 'interjection', 'Willkommen in Deutschland!', 'Welcome to Germany!', 'A1', 15),
  ('00000000-0000-4000-a000-0000659a8b8e', 'die Familie', 'العائلة', 'family', 'la famille', 'die', 'die Familien', 'noun', 'Meine Familie ist groß.', 'My family is big.', 'A1', 16),
  ('00000000-0000-4000-a000-0000659a8b8e', 'der Vater', 'الأب', 'father', 'le père', 'der', 'die Väter', 'noun', 'Mein Vater ist Ingenieur.', 'My father is an engineer.', 'A1', 17),
  ('00000000-0000-4000-a000-0000659a8b8e', 'die Mutter', 'الأم', 'mother', 'la mère', 'die', 'die Mütter', 'noun', 'Meine Mutter kocht gut.', 'My mother cooks well.', 'A1', 18),
  ('00000000-0000-4000-a000-0000659a8b8e', 'der Bruder', 'الأخ', 'brother', 'le frère', 'der', 'die Brüder', 'noun', 'Mein Bruder ist 15 Jahre alt.', 'My brother is 15 years old.', 'A1', 19),
  ('00000000-0000-4000-a000-0000659a8b8e', 'die Schwester', 'الأخت', 'sister', 'la sœur', 'die', 'die Schwestern', 'noun', 'Meine Schwester studiert Medizin.', 'My sister studies medicine.', 'A1', 20),
  ('00000000-0000-4000-a000-0000659a8b8e', 'die Geschwister', 'الإخوة', 'siblings', 'les frères et sœurs', 'die', NULL, 'noun', 'Hast du Geschwister?', 'Do you have siblings?', 'A1', 21),
  ('00000000-0000-4000-a000-0000659a8b8e', 'der Sohn', 'الابن', 'son', 'le fils', 'der', 'die Söhne', 'noun', 'Wir haben einen Sohn.', 'We have a son.', 'A1', 22),
  ('00000000-0000-4000-a000-0000659a8b8e', 'die Tochter', 'الابنة', 'daughter', 'la fille', 'die', 'die Töchter', 'noun', 'Meine Tochter geht zur Schule.', 'My daughter goes to school.', 'A1', 23),
  ('00000000-0000-4000-a000-0000659a8b8e', 'die Großeltern', 'الأجداد', 'grandparents', 'les grands-parents', 'die', NULL, 'noun', 'Meine Großeltern wohnen auf dem Land.', 'My grandparents live in the countryside.', 'A1', 24),
  ('00000000-0000-4000-a000-0000659a8b8e', 'verheiratet', 'متزوج', 'married', 'marié(e)', NULL, NULL, 'adjective', 'Meine Eltern sind verheiratet.', 'My parents are married.', 'A1', 25),
  ('00000000-0000-4000-a000-0000659a8b8e', 'das Brot', 'الخبز', 'bread', 'le pain', 'das', 'die Brote', 'noun', 'Ich kaufe ein Brot.', 'I buy a loaf of bread.', 'A1', 26),
  ('00000000-0000-4000-a000-0000659a8b8e', 'die Milch', 'الحليب', 'milk', 'le lait', 'die', NULL, 'noun', 'Die Milch ist frisch.', 'The milk is fresh.', 'A1', 27),
  ('00000000-0000-4000-a000-0000659a8b8e', 'der Käse', 'الجبن', 'cheese', 'le fromage', 'der', NULL, 'noun', 'Der Käse schmeckt gut.', 'The cheese tastes good.', 'A1', 28),
  ('00000000-0000-4000-a000-0000659a8b8e', 'der Apfel', 'التفاح', 'apple', 'la pomme', 'der', 'die Äpfel', 'noun', 'Der Apfel ist rot.', 'The apple is red.', 'A1', 29),
  ('00000000-0000-4000-a000-0000659a8b8e', 'das Ei', 'البيضة', 'egg', 'l''œuf', 'das', 'die Eier', 'noun', 'Ich esse ein Ei zum Frühstück.', 'I eat an egg for breakfast.', 'A1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000659a8b8e', 'gern und mögen (Likes and Preferences) / gern و mögen (الإعجاب والتفضيل)', 'Use "gern" (or "gerne") after a verb to express liking an activity: Ich lerne gern Deutsch. Use "mögen" to express liking things/nouns: Ich mag Schokolade. For disliking: "nicht gern" or "nicht mögen".', '[{"rule":"verb + gern: Ich lerne gern. Ich reise gern.","note":"\"gern\" follows the verb"},{"rule":"mögen + noun: Ich mag Fußball. Sie mag Tiere.","note":"mögen conjugation: ich mag, du magst, er/sie/es mag"},{"rule":"nicht gern = don''t like to","note":"Ich arbeite nicht gern am Sonntag."}]', '[{"german":"Ich lerne gern Deutsch.","arabic":"أحب تعلم الألمانية.","english":"I like learning German."},{"german":"Magst du Fußball?","arabic":"هل تحب كرة القدم؟","english":"Do you like soccer?"},{"german":"Wir reisen nicht gern im Winter.","arabic":"لا نحب السفر في الشتاء.","english":"We don''t like traveling in winter."}]', '[{"mistake":"Ich gern Deutsch lernen (placing gern at the beginning)","correction":"Ich lerne gern Deutsch.","explanation":"\"Gern\" comes AFTER the conjugated verb, not before."},{"mistake":"Ich mag Fußball spielen (using mögen for activities)","correction":"Ich spiele gern Fußball.","explanation":"For activities, use \"gern\" with the activity verb, not \"mögen\"."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000659a8b8e', 'multiple_choice', 'Which German word matches "hobby"?', '["das Hobby","der Sport","lesen","reisen"]', 'das Hobby', '"hobby" = "das Hobby" in German. Article: das Plural: die Hobbys', 1, 1),
  ('00000000-0000-4000-a000-0000659a8b8e', 'multiple_choice', 'Which German word matches "sports"?', '["reisen","der Sport","das Hobby","schwimmen"]', 'der Sport', '"sports" = "der Sport" in German. Article: der ', 1, 2),
  ('00000000-0000-4000-a000-0000659a8b8e', 'multiple_choice', 'Which German word matches "to read"?', '["der Sport","das Hobby","lesen","schwimmen"]', 'lesen', '"to read" = "lesen" in German.  ', 1, 3),
  ('00000000-0000-4000-a000-0000659a8b8e', 'multiple_choice', 'Which German word matches "to travel"?', '["lesen","der Sport","das Hobby","reisen"]', 'reisen', '"to travel" = "reisen" in German.  ', 1, 4),
  ('00000000-0000-4000-a000-0000659a8b8e', 'multiple_choice', 'Which German word matches "to swim"?', '["reisen","lesen","der Sport","das Hobby"]', 'schwimmen', '"to swim" = "schwimmen" in German.  ', 1, 5),
  ('00000000-0000-4000-a000-0000659a8b8e', 'fill_gap', 'Complete the sentence: Ich ___ gern über Hobbies. (sprechen)', '["spreche","sprichst","spricht","sprechen"]', 'spreche', 'ich spreche gern = I like to speak. Stem: sprech- + e.', 2, 6),
  ('00000000-0000-4000-a000-0000659a8b8e', 'translation', 'Translate to German: "I am learning about Hobbies."', '["Ich lerne über Hobbies.","Ich lerne Hobbies.","Lerne ich Hobbies."]', 'Ich lerne über Hobbies.', '"Ich lerne über..." = "I am learning about..."', 2, 7),
  ('00000000-0000-4000-a000-0000659a8b8e', 'matching', 'Match: Which word pairs are correct?', '["das Hobby - hobby, der Sport - sports"]', 'Matched correctly', 'Each German word has a unique English equivalent.', 2, 8);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-0000659a8b8e', 'multiple_choice', 'What does "das Hobby" mean in English?', '["hobby","to run","beautiful","yesterday"]', 'hobby', 1, 1),
  ('00000000-0000-4000-a000-0000659a8b8e', 'multiple_choice', 'What is the correct article for "der Sport"?', '["der","die","das","den"]', 'der', 1, 2),
  ('00000000-0000-4000-a000-0000659a8b8e', 'true_false', 'The word "lesen" is related to Hobbies.', '["True","False"]', 'True', 1, 3),
  ('00000000-0000-4000-a000-0000659a8b8e', 'multiple_choice', 'Which sentence correctly uses gern_mogen?', '["Ich lerne gern Deutsch.","Magst du Fußball?","Wir reisen nicht gern im Winter."]', 'Ich lerne gern Deutsch.', 2, 4),
  ('00000000-0000-4000-a000-0000659a8b8e', 'true_false', 'German word order puts the verb in second position in main clauses.', '["True","False"]', 'True', 1, 5),
  ('00000000-0000-4000-a000-0000659a8b8e', 'fill_blank', 'Complete: Ich ___ (to travel) Deutsch.', '["reisen","lernt","lernst","lernen"]', 'reise', 2, 6),
  ('00000000-0000-4000-a000-0000659a8b8e', 'multiple_choice', 'What is the German word for "to swim"?', '["schwimmen","der Fußball","die Musik","Hallo"]', 'schwimmen', 1, 7),
  ('00000000-0000-4000-a000-0000659a8b8e', 'true_false', 'In German, ALL nouns are always capitalised.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-0000659a8b8e', 'multiple_choice', 'How do you say "please" in a restaurant in Germany?', '["Bitte","Danke","Tschüss","Hallo"]', 'Bitte', 1, 9),
  ('00000000-0000-4000-a000-0000659a8b8e', 'fill_blank', 'Wo ___ (to live) du?', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 2, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, french_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-0000659a8b8e', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', NULL, 'Used in Reisen und Freizeit', 'formal', false, 1),
  ('00000000-0000-4000-a000-0000659a8b8e', 'Guten Tag!', 'Good day!', 'نهارك سعيد!', NULL, 'Used in Reisen und Freizeit', 'formal', false, 2),
  ('00000000-0000-4000-a000-0000659a8b8e', 'Hallo, wie geht es Ihnen?', 'Hello, how are you?', 'مرحباً، كيف حالكم؟', NULL, 'Used in Reisen und Freizeit', 'formal', false, 3),
  ('00000000-0000-4000-a000-0000659a8b8e', 'Schön, Sie kennenzulernen!', 'Nice to meet you!', 'سعيد بلقائكم!', NULL, 'Used in Reisen und Freizeit', 'formal', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-0000659a8b8e', 'das das Hobby (die Hobbys)', 'hobby — الهواية', 'noun', 'vocabulary', 1),
  ('00000000-0000-4000-a000-0000659a8b8e', 'der der Sport', 'sports — الرياضة', 'noun', 'vocabulary', 2),
  ('00000000-0000-4000-a000-0000659a8b8e', 'lesen', 'to read — يقرأ', 'verb', 'vocabulary', 3),
  ('00000000-0000-4000-a000-0000659a8b8e', 'reisen', 'to travel — يسافر', 'verb', 'vocabulary', 4),
  ('00000000-0000-4000-a000-0000659a8b8e', 'schwimmen', 'to swim — يسبح', 'verb', 'vocabulary', 5),
  ('00000000-0000-4000-a000-0000659a8b8e', 'der der Fußball', 'soccer — كرة القدم', 'noun', 'vocabulary', 6),
  ('00000000-0000-4000-a000-0000659a8b8e', 'die die Musik', 'music — الموسيقى', 'noun', 'vocabulary', 7),
  ('00000000-0000-4000-a000-0000659a8b8e', 'Hallo', 'hello — مرحباً', 'interjection', 'vocabulary', 8),
  ('00000000-0000-4000-a000-0000659a8b8e', 'Guten Morgen', 'good morning — صباح الخير', 'phrase', 'vocabulary', 9),
  ('00000000-0000-4000-a000-0000659a8b8e', 'Guten Tag', 'good day — نهارك سعيد', 'phrase', 'vocabulary', 10),
  ('00000000-0000-4000-a000-0000659a8b8e', 'Tschüss', 'bye — مع السلامة', 'interjection', 'vocabulary', 11),
  ('00000000-0000-4000-a000-0000659a8b8e', 'der der Name (die Namen)', 'name — الاسم', 'noun', 'vocabulary', 12),
  ('00000000-0000-4000-a000-0000659a8b8e', 'wie', 'how — كيف', 'adverb', 'vocabulary', 13),
  ('00000000-0000-4000-a000-0000659a8b8e', 'freuen', 'to be pleased — يسر', 'verb', 'vocabulary', 14),
  ('00000000-0000-4000-a000-0000659a8b8e', 'Willkommen', 'welcome — أهلاً وسهلاً', 'interjection', 'vocabulary', 15),
  ('00000000-0000-4000-a000-0000659a8b8e', 'Ich lerne gern Deutsch.', 'I like learning German.', 'gern und mögen (Likes and Preferences)', 'grammar', 16),
  ('00000000-0000-4000-a000-0000659a8b8e', 'Magst du Fußball?', 'Do you like soccer?', 'gern und mögen (Likes and Preferences)', 'grammar', 17),
  ('00000000-0000-4000-a000-0000659a8b8e', 'Wir reisen nicht gern im Winter.', 'We don''t like traveling in winter.', 'gern und mögen (Likes and Preferences)', 'grammar', 18);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, french_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-0000659a8b8e', 'Hobbys und Freizeit — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', NULL, 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, french_translation, duration_seconds, speaker_count, scenario) values
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

[Lehrerin]: ممتاز! إلى الغد!', '[Lehrerin]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: ', 72, 2, 'Reisen und Freizeit');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-0000659a8b8e', '🔊 Sprechen: Hobbys und Freizeit', 'Roleplay: You are in a Frankfurt train station. Introduce yourself and talk about Hobbies. Your partner (AI) will respond naturally.', 'Hobbies', ARRAY['Use complete sentences — not single words','Pause between phrases, not between words','Don''t translate from Arabic word-for-word']::text[], ARRAY['das Hobby','der Sport','lesen','reisen','schwimmen','der Fußball','die Musik','Hallo']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-0000659a8b8e', '✏️ Schreiben: Hobbys und Freizeit', 'Write an email to a German friend about "Hobbies". Tell them what you learned, what you found interesting, and ask two questions about their experience with this topic. Use at least 8 vocabulary words from this lesson. Sign off naturally ("Viele Grüße", "Liebe Grüße").', ARRAY['Start with "Hallo" or "Liebe/r"','Keep sentences short (Subject-Verb-Object)','End with a friendly farewell']::text[], ARRAY['das Hobby','der Sport','lesen','reisen','schwimmen','der Fußball','die Musik','Hallo']::text[], ARRAY['Sentence structure','Vocabulary usage']::text[], 50, 100, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000659a8b8e', 'Hobbys und Freizeit — Roleplay', 'Hobbies', 'Student', 'Teacher', 'Practice conversation about Hobbies', 'Hallo! Lass uns über dieses Thema sprechen.', 'beginner', 1, ARRAY['das Hobby','der Sport','lesen','reisen','schwimmen','der Fußball','die Musik','Hallo']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000659a8b8e', 'Hobbys und Freizeit — Advanced Roleplay', 'Hobbies', 'Customer', 'Assistant', 'Extended conversation about Hobbies', 'Guten Tag! Wie kann ich Ihnen helfen?', 'beginner', 2, ARRAY['das Hobby','der Sport','lesen','reisen','schwimmen','der Fußball','die Musik','Hallo']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-0000659a8b8e', 'Hobbys und Freizeit — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Hobbys und Freizeit".', 'Creative practice for Hobbies', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-0000659a8b8e', '📚 Hausaufgabe: Hobbys und Freizeit', 'Complete these tasks to reinforce "Hobbys und Freizeit".', 'mixed', '[{"description":"Create 10 flashcards from this lesson''s vocabulary — write German on one side, Arabic on the other. Test yourself 3 times."},{"description":"Write 6 sentences about Hobbies: 2 statements, 2 questions, 2 negations — all using gern_mogen."},{"description":"Record yourself reading the dialogue aloud. Listen to the recording and note 3 things to improve."},{"description":"Find 3 real German websites, videos, or articles about Hobbies. Note 5 new words you discovered."}]', 50, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-0000659a8b8e', '🎯 Great work! In this lesson you learned 149 new words about Hobbies. You practiced gern_mogen — an important grammar topic for A1 level. You read a text, listened to a dialogue, and practiced speaking and writing. Keep going!', '["149 vocabulary items about Hobbies","gern_mogen — grammar explanation and practice","Reading comprehension: text about Hobbies","Listening comprehension: dialogue about Hobbies","Speaking practice: roleplay/discussion about Hobbies","Writing task: text about Hobbies"]', '[{"title":"Hobbys und Freizeit Review","summary":"gern_mogen — the main grammar focus. Focus on understanding when to use this structure and forming basic sentences."}]', ARRAY['das Hobby (hobby)','der Sport (sports)','lesen (to read)','reisen (to travel)','schwimmen (to swim)']::text[], ARRAY['Don''t translate from Arabic word-for-word — German has different sentence structure','Learn every noun with its article: NEVER learn "Tisch" alone, always "der Tisch"','Verb always in position 2 in main clauses']::text[], ARRAY['Practice 15-20 minutes daily — consistency beats intensity','Speak out loud: German pronunciation needs muscle memory','Use the new vocabulary within 24 hours or you''ll forget it','Watch German YouTube videos about Hobbies for authentic input']::text[]);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000659a8b8e', 'Pronunciation: German sounds for "hobbies"', 'In German, vowels are pure — unlike English diphthongs. The "ch" sound after a, o, u is guttural (like Arabic خ). After e, i, ä, ö, ü it''s soft (like English "huge" without the "u").

Common mistake for Arabic speakers: Arabic speakers tend to over-emphasise consonants. German flows — connect words smoothly (e.g., "Ich habe" becomes /ɪçabə/ not /ɪç ˈhaːbə/).', '[]', '[{"german":"das Hobby","arabic":"","english":"","phonetic":""},{"german":"der Sport","arabic":"","english":"","phonetic":""},{"german":"lesen","arabic":"","english":"","phonetic":""},{"german":"reisen","arabic":"","english":"","phonetic":""}]', '[]', 10);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000659a8b8e', 'translation', 'Translate to German: "I use the word "hobby" in a sentence about Hobbies."', '[]', 'Mein Hobby ist Lesen.', 'Use das  "das Hobby" with the correct gern_mogen form.', 1, 40);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000659a8b8e', 'translation', 'Translate to German: "I use the word "sports" in a sentence about Hobbies."', '[]', 'Ich treibe gerne Sport.', 'Use der  "der Sport" with the correct gern_mogen form.', 1, 41);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000659a8b8e', 'translation', 'Translate to German: "I use the word "to read" in a sentence about Hobbies."', '[]', 'Ich lese gerne Bücher.', 'Use  "lesen" with the correct gern_mogen form.', 1, 42);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000659a8b8e', 'Culture: 🇩🇪 Deutsche Kultur: Hobbies', 'In Germany, Hobbies is approached with typical German directness and efficiency. Germans value clarity over small talk. When discussing Hobbies, expect honest feedback and straightforward questions. This is not rudeness — it''s cultural. Arabic speakers often find this too direct at first, but you''ll appreciate it once you get used to it.

في ألمانيا، يتم التعامل مع Hobbies بوضوح وكفاءة. الألمان يقدرون الوضوح أكثر من المجاملات. لا تعتبر هذه وقاحة - إنها ثقافة مختلفة.', '["Tip: Always use \"Sie\" (formal) with strangers and colleagues","Tip: Germans appreciate punctuality — arrive 5 minutes early","Tip: Direct feedback is a sign of respect, not criticism","Tip: Prepare factual arguments, not emotional appeals"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000659a8b8e', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Using Arabic word order in German sentences","correction":"Verb must be in position 2: Subject + Verb + Object","explanation":"Arabic and German have different sentence structures. Arabic is VSO, German is SVO with verb in position 2."},{"mistake":"Using the wrong article (der/die/das) for nouns","correction":"Learn each noun with its article as one piece","explanation":"Arabic has no articles for nouns without gender connection"}]', 30);

  -- Lesson 4: Das Wetter (L-A1-06-04)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-0000659a8b8f', '00000000-0000-4000-a000-000039b4d363', 'Das Wetter', 'Learn basic weather expressions and seasons.', 'Weather', 'vocabulary', '["Understand and use 142 key vocabulary words about Weather","Apply present_tense correctly in sentences","Read and comprehend a text about Weather","Listen and understand a natural dialogue about Weather","Speak about Weather with confidence","Write a short text about Weather using new vocabulary"]', 25, 4, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, french_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-0000659a8b8f', 'das Wetter', 'الطقس', 'weather', NULL, 'das', NULL, 'noun', 'Das Wetter ist schön.', 'The weather is nice.', 'A1', 1),
  ('00000000-0000-4000-a000-0000659a8b8f', 'die Sonne', 'الشمس', 'sun', NULL, 'die', NULL, 'noun', 'Die Sonne scheint.', 'The sun is shining.', 'A1', 2),
  ('00000000-0000-4000-a000-0000659a8b8f', 'der Regen', 'المطر', 'rain', NULL, 'der', NULL, 'noun', 'Es regnet.', 'It is raining.', 'A1', 3),
  ('00000000-0000-4000-a000-0000659a8b8f', 'der Schnee', 'الثلج', 'snow', NULL, 'der', NULL, 'noun', 'Es schneit.', 'It is snowing.', 'A1', 4),
  ('00000000-0000-4000-a000-0000659a8b8f', 'warm', 'دافئ', 'warm', NULL, NULL, NULL, 'adjective', 'Heute ist es warm.', 'Today it is warm.', 'A1', 5),
  ('00000000-0000-4000-a000-0000659a8b8f', 'kalt', 'بارد', 'cold', NULL, NULL, NULL, 'adjective', 'Im Winter ist es kalt.', 'In winter it is cold.', 'A1', 6),
  ('00000000-0000-4000-a000-0000659a8b8f', 'der Frühling', 'الربيع', 'spring', NULL, 'der', NULL, 'noun', 'Im Frühling blühen die Blumen.', 'In spring the flowers bloom.', 'A1', 7),
  ('00000000-0000-4000-a000-0000659a8b8f', 'der Winter', 'الشتاء', 'winter', NULL, 'der', NULL, 'noun', 'Im Winter schneit es.', 'In winter it snows.', 'A1', 8),
  ('00000000-0000-4000-a000-0000659a8b8f', 'Hallo', 'مرحباً', 'hello', 'bonjour', NULL, NULL, 'interjection', 'Hallo, wie geht es dir?', 'Hello, how are you?', 'A1', 9),
  ('00000000-0000-4000-a000-0000659a8b8f', 'Guten Morgen', 'صباح الخير', 'good morning', 'bonjour (le matin)', NULL, NULL, 'phrase', 'Guten Morgen, Herr Müller.', 'Good morning, Mr. Müller.', 'A1', 10),
  ('00000000-0000-4000-a000-0000659a8b8f', 'Guten Tag', 'نهارك سعيد', 'good day', 'bonjour (l''après-midi)', NULL, NULL, 'phrase', 'Guten Tag, Frau Schmidt.', 'Good day, Mrs. Schmidt.', 'A1', 11),
  ('00000000-0000-4000-a000-0000659a8b8f', 'Tschüss', 'مع السلامة', 'bye', 'au revoir / salut', NULL, NULL, 'interjection', 'Tschüss, bis morgen!', 'Bye, see you tomorrow!', 'A1', 12),
  ('00000000-0000-4000-a000-0000659a8b8f', 'der Name', 'الاسم', 'name', 'le nom', 'der', 'die Namen', 'noun', 'Mein Name ist Anna.', 'My name is Anna.', 'A1', 13),
  ('00000000-0000-4000-a000-0000659a8b8f', 'wie', 'كيف', 'how', 'comment', NULL, NULL, 'adverb', 'Wie heißt du?', 'What is your name?', 'A1', 14),
  ('00000000-0000-4000-a000-0000659a8b8f', 'freuen', 'يسر', 'to be pleased', 'se réjouir', NULL, NULL, 'verb', 'Ich freue mich, dich kennenzulernen.', 'I am pleased to meet you.', 'A1', 15),
  ('00000000-0000-4000-a000-0000659a8b8f', 'Willkommen', 'أهلاً وسهلاً', 'welcome', 'bienvenue', NULL, NULL, 'interjection', 'Willkommen in Deutschland!', 'Welcome to Germany!', 'A1', 16),
  ('00000000-0000-4000-a000-0000659a8b8f', 'die Familie', 'العائلة', 'family', 'la famille', 'die', 'die Familien', 'noun', 'Meine Familie ist groß.', 'My family is big.', 'A1', 17),
  ('00000000-0000-4000-a000-0000659a8b8f', 'der Vater', 'الأب', 'father', 'le père', 'der', 'die Väter', 'noun', 'Mein Vater ist Ingenieur.', 'My father is an engineer.', 'A1', 18),
  ('00000000-0000-4000-a000-0000659a8b8f', 'die Mutter', 'الأم', 'mother', 'la mère', 'die', 'die Mütter', 'noun', 'Meine Mutter kocht gut.', 'My mother cooks well.', 'A1', 19),
  ('00000000-0000-4000-a000-0000659a8b8f', 'der Bruder', 'الأخ', 'brother', 'le frère', 'der', 'die Brüder', 'noun', 'Mein Bruder ist 15 Jahre alt.', 'My brother is 15 years old.', 'A1', 20),
  ('00000000-0000-4000-a000-0000659a8b8f', 'die Schwester', 'الأخت', 'sister', 'la sœur', 'die', 'die Schwestern', 'noun', 'Meine Schwester studiert Medizin.', 'My sister studies medicine.', 'A1', 21),
  ('00000000-0000-4000-a000-0000659a8b8f', 'die Geschwister', 'الإخوة', 'siblings', 'les frères et sœurs', 'die', NULL, 'noun', 'Hast du Geschwister?', 'Do you have siblings?', 'A1', 22),
  ('00000000-0000-4000-a000-0000659a8b8f', 'der Sohn', 'الابن', 'son', 'le fils', 'der', 'die Söhne', 'noun', 'Wir haben einen Sohn.', 'We have a son.', 'A1', 23),
  ('00000000-0000-4000-a000-0000659a8b8f', 'die Tochter', 'الابنة', 'daughter', 'la fille', 'die', 'die Töchter', 'noun', 'Meine Tochter geht zur Schule.', 'My daughter goes to school.', 'A1', 24),
  ('00000000-0000-4000-a000-0000659a8b8f', 'die Großeltern', 'الأجداد', 'grandparents', 'les grands-parents', 'die', NULL, 'noun', 'Meine Großeltern wohnen auf dem Land.', 'My grandparents live in the countryside.', 'A1', 25),
  ('00000000-0000-4000-a000-0000659a8b8f', 'verheiratet', 'متزوج', 'married', 'marié(e)', NULL, NULL, 'adjective', 'Meine Eltern sind verheiratet.', 'My parents are married.', 'A1', 26),
  ('00000000-0000-4000-a000-0000659a8b8f', 'das Brot', 'الخبز', 'bread', 'le pain', 'das', 'die Brote', 'noun', 'Ich kaufe ein Brot.', 'I buy a loaf of bread.', 'A1', 27),
  ('00000000-0000-4000-a000-0000659a8b8f', 'die Milch', 'الحليب', 'milk', 'le lait', 'die', NULL, 'noun', 'Die Milch ist frisch.', 'The milk is fresh.', 'A1', 28),
  ('00000000-0000-4000-a000-0000659a8b8f', 'der Käse', 'الجبن', 'cheese', 'le fromage', 'der', NULL, 'noun', 'Der Käse schmeckt gut.', 'The cheese tastes good.', 'A1', 29),
  ('00000000-0000-4000-a000-0000659a8b8f', 'der Apfel', 'التفاح', 'apple', 'la pomme', 'der', 'die Äpfel', 'noun', 'Der Apfel ist rot.', 'The apple is red.', 'A1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000659a8b8f', 'Präsens der regelmäßigen Verben (Present Tense) / المضارع للأفعال المنتظمة', 'In German, regular verbs follow a consistent pattern. The infinitive ends in -en. Remove the -en and add the personal endings: ich -e, du -st, er/sie/es -t, wir -en, ihr -t, sie/Sie -en. For most Arabic speakers, this is easier than Arabic verb conjugation because German has fewer forms.', '[{"rule":"ich: stem + e","note":"Ich lerne, ich wohne, ich arbeite"},{"rule":"du: stem + st","note":"Du lernst, du wohnst, du arbeitest"},{"rule":"er/sie/es: stem + t","note":"Er lernt, sie wohnt, es arbeitet"},{"rule":"wir: stem + en","note":"Wir lernen, wir wohnen, wir arbeiten"},{"rule":"ihr: stem + t","note":"Ihr lernt, ihr wohnt, ihr arbeitet"},{"rule":"sie/Sie: stem + en","note":"Sie lernen, Sie wohnen"}]', '[{"german":"Ich lerne Deutsch.","arabic":"أنا أتعلم الألمانية.","english":"I am learning German."},{"german":"Du wohnst in Berlin.","arabic":"أنت تسكن في برلين.","english":"You live in Berlin."},{"german":"Er arbeitet bei Siemens.","arabic":"هو يعمل في سيمنز.","english":"He works at Siemens."}]', '[{"mistake":"Ich lernen Deutsch","correction":"Ich lerne Deutsch","explanation":"After \"ich\" we use the stem + e, not the infinitive."},{"mistake":"Er lerne Deutsch","correction":"Er lernt Deutsch","explanation":"After \"er/sie/es\" we add -t, not -e."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000659a8b8f', 'multiple_choice', 'Which German word matches "weather"?', '["der Schnee","das Wetter","der Regen","warm"]', 'das Wetter', '"weather" = "das Wetter" in German. Article: das ', 1, 1),
  ('00000000-0000-4000-a000-0000659a8b8f', 'multiple_choice', 'Which German word matches "sun"?', '["das Wetter","der Schnee","die Sonne","warm"]', 'die Sonne', '"sun" = "die Sonne" in German. Article: die ', 1, 2),
  ('00000000-0000-4000-a000-0000659a8b8f', 'multiple_choice', 'Which German word matches "rain"?', '["der Schnee","warm","das Wetter","die Sonne"]', 'der Regen', '"rain" = "der Regen" in German. Article: der ', 1, 3),
  ('00000000-0000-4000-a000-0000659a8b8f', 'multiple_choice', 'Which German word matches "snow"?', '["die Sonne","das Wetter","der Schnee","warm"]', 'der Schnee', '"snow" = "der Schnee" in German. Article: der ', 1, 4),
  ('00000000-0000-4000-a000-0000659a8b8f', 'multiple_choice', 'Which German word matches "warm"?', '["der Regen","das Wetter","die Sonne","der Schnee"]', 'warm', '"warm" = "warm" in German.  ', 1, 5),
  ('00000000-0000-4000-a000-0000659a8b8f', 'fill_gap', 'Complete the sentence: Ich ___ gern über Weather. (sprechen)', '["spreche","sprichst","spricht","sprechen"]', 'spreche', 'ich spreche gern = I like to speak. Stem: sprech- + e.', 2, 6),
  ('00000000-0000-4000-a000-0000659a8b8f', 'translation', 'Translate to German: "I am learning about Weather."', '["Ich lerne über Weather.","Ich lerne Weather.","Lerne ich Weather."]', 'Ich lerne über Weather.', '"Ich lerne über..." = "I am learning about..."', 2, 7),
  ('00000000-0000-4000-a000-0000659a8b8f', 'matching', 'Match: Which word pairs are correct?', '["das Wetter - weather, die Sonne - sun"]', 'Matched correctly', 'Each German word has a unique English equivalent.', 2, 8);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-0000659a8b8f', 'multiple_choice', 'What does "das Wetter" mean in English?', '["weather","to run","beautiful","yesterday"]', 'weather', 1, 1),
  ('00000000-0000-4000-a000-0000659a8b8f', 'multiple_choice', 'What is the correct article for "die Sonne"?', '["der","die","das","den"]', 'die', 1, 2),
  ('00000000-0000-4000-a000-0000659a8b8f', 'true_false', 'The word "der Regen" is related to Weather.', '["True","False"]', 'True', 1, 3),
  ('00000000-0000-4000-a000-0000659a8b8f', 'multiple_choice', 'Which sentence correctly uses present_tense?', '["Ich lerne Deutsch.","Du wohnst in Berlin.","Er arbeitet bei Siemens."]', 'Ich lerne Deutsch.', 2, 4),
  ('00000000-0000-4000-a000-0000659a8b8f', 'true_false', 'German word order puts the verb in second position in main clauses.', '["True","False"]', 'True', 1, 5),
  ('00000000-0000-4000-a000-0000659a8b8f', 'fill_blank', 'Complete: Ich ___ (snow) Deutsch.', '["der Schnee","lernt","lernst","lernen"]', 'lerne', 2, 6),
  ('00000000-0000-4000-a000-0000659a8b8f', 'multiple_choice', 'What is the German word for "warm"?', '["warm","kalt","der Frühling","der Winter"]', 'warm', 1, 7),
  ('00000000-0000-4000-a000-0000659a8b8f', 'true_false', 'In German, ALL nouns are always capitalised.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-0000659a8b8f', 'multiple_choice', 'How do you say "please" in a restaurant in Germany?', '["Bitte","Danke","Tschüss","Hallo"]', 'Bitte', 1, 9),
  ('00000000-0000-4000-a000-0000659a8b8f', 'fill_blank', 'Wo ___ (to live) du?', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 2, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, french_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-0000659a8b8f', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', NULL, 'Used in Reisen und Freizeit', 'formal', false, 1),
  ('00000000-0000-4000-a000-0000659a8b8f', 'Guten Tag!', 'Good day!', 'نهارك سعيد!', NULL, 'Used in Reisen und Freizeit', 'formal', false, 2),
  ('00000000-0000-4000-a000-0000659a8b8f', 'Hallo, wie geht es Ihnen?', 'Hello, how are you?', 'مرحباً، كيف حالكم؟', NULL, 'Used in Reisen und Freizeit', 'formal', false, 3),
  ('00000000-0000-4000-a000-0000659a8b8f', 'Schön, Sie kennenzulernen!', 'Nice to meet you!', 'سعيد بلقائكم!', NULL, 'Used in Reisen und Freizeit', 'formal', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-0000659a8b8f', 'das das Wetter', 'weather — الطقس', 'noun', 'vocabulary', 1),
  ('00000000-0000-4000-a000-0000659a8b8f', 'die die Sonne', 'sun — الشمس', 'noun', 'vocabulary', 2),
  ('00000000-0000-4000-a000-0000659a8b8f', 'der der Regen', 'rain — المطر', 'noun', 'vocabulary', 3),
  ('00000000-0000-4000-a000-0000659a8b8f', 'der der Schnee', 'snow — الثلج', 'noun', 'vocabulary', 4),
  ('00000000-0000-4000-a000-0000659a8b8f', 'warm', 'warm — دافئ', 'adjective', 'vocabulary', 5),
  ('00000000-0000-4000-a000-0000659a8b8f', 'kalt', 'cold — بارد', 'adjective', 'vocabulary', 6),
  ('00000000-0000-4000-a000-0000659a8b8f', 'der der Frühling', 'spring — الربيع', 'noun', 'vocabulary', 7),
  ('00000000-0000-4000-a000-0000659a8b8f', 'der der Winter', 'winter — الشتاء', 'noun', 'vocabulary', 8),
  ('00000000-0000-4000-a000-0000659a8b8f', 'Hallo', 'hello — مرحباً', 'interjection', 'vocabulary', 9),
  ('00000000-0000-4000-a000-0000659a8b8f', 'Guten Morgen', 'good morning — صباح الخير', 'phrase', 'vocabulary', 10),
  ('00000000-0000-4000-a000-0000659a8b8f', 'Guten Tag', 'good day — نهارك سعيد', 'phrase', 'vocabulary', 11),
  ('00000000-0000-4000-a000-0000659a8b8f', 'Tschüss', 'bye — مع السلامة', 'interjection', 'vocabulary', 12),
  ('00000000-0000-4000-a000-0000659a8b8f', 'der der Name (die Namen)', 'name — الاسم', 'noun', 'vocabulary', 13),
  ('00000000-0000-4000-a000-0000659a8b8f', 'wie', 'how — كيف', 'adverb', 'vocabulary', 14),
  ('00000000-0000-4000-a000-0000659a8b8f', 'freuen', 'to be pleased — يسر', 'verb', 'vocabulary', 15),
  ('00000000-0000-4000-a000-0000659a8b8f', 'Ich lerne Deutsch.', 'I am learning German.', 'Präsens der regelmäßigen Verben (Present Tense)', 'grammar', 16),
  ('00000000-0000-4000-a000-0000659a8b8f', 'Du wohnst in Berlin.', 'You live in Berlin.', 'Präsens der regelmäßigen Verben (Present Tense)', 'grammar', 17),
  ('00000000-0000-4000-a000-0000659a8b8f', 'Er arbeitet bei Siemens.', 'He works at Siemens.', 'Präsens der regelmäßigen Verben (Present Tense)', 'grammar', 18);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, french_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-0000659a8b8f', 'Das Wetter — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', NULL, 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, french_translation, duration_seconds, speaker_count, scenario) values
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

[Lehrerin]: ممتاز! إلى الغد!', '[Lehrerin]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: ', 72, 2, 'Reisen und Freizeit');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-0000659a8b8f', '🔊 Sprechen: Das Wetter', 'Roleplay: You are in a Hamburg office. Introduce yourself and talk about Weather. Your partner (AI) will respond naturally.', 'Weather', ARRAY['Use complete sentences — not single words','Pause between phrases, not between words','Don''t translate from Arabic word-for-word']::text[], ARRAY['das Wetter','die Sonne','der Regen','der Schnee','warm','kalt','der Frühling','der Winter']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-0000659a8b8f', '✏️ Schreiben: Das Wetter', 'Write an email to a German friend about "Weather". Tell them what you learned, what you found interesting, and ask two questions about their experience with this topic. Use at least 8 vocabulary words from this lesson. Sign off naturally ("Viele Grüße", "Liebe Grüße").', ARRAY['Start with "Hallo" or "Liebe/r"','Keep sentences short (Subject-Verb-Object)','End with a friendly farewell']::text[], ARRAY['das Wetter','die Sonne','der Regen','der Schnee','warm','kalt','der Frühling','der Winter']::text[], ARRAY['Sentence structure','Vocabulary usage']::text[], 50, 100, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000659a8b8f', 'Das Wetter — Roleplay', 'Weather', 'Student', 'Teacher', 'Practice conversation about Weather', 'Hallo! Lass uns über dieses Thema sprechen.', 'beginner', 1, ARRAY['das Wetter','die Sonne','der Regen','der Schnee','warm','kalt','der Frühling','der Winter']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000659a8b8f', 'Das Wetter — Advanced Roleplay', 'Weather', 'Customer', 'Assistant', 'Extended conversation about Weather', 'Guten Tag! Wie kann ich Ihnen helfen?', 'beginner', 2, ARRAY['das Wetter','die Sonne','der Regen','der Schnee','warm','kalt','der Frühling','der Winter']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-0000659a8b8f', 'Das Wetter — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Das Wetter".', 'Creative practice for Weather', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-0000659a8b8f', '📚 Hausaufgabe: Das Wetter', 'Complete these tasks to reinforce "Das Wetter".', 'mixed', '[{"description":"Create 10 flashcards from this lesson''s vocabulary — write German on one side, Arabic on the other. Test yourself 3 times."},{"description":"Write 6 sentences about Weather: 2 statements, 2 questions, 2 negations — all using present_tense."},{"description":"Record yourself reading the dialogue aloud. Listen to the recording and note 3 things to improve."},{"description":"Find 3 real German websites, videos, or articles about Weather. Note 5 new words you discovered."}]', 50, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-0000659a8b8f', '🎯 Great work! In this lesson you learned 142 new words about Weather. You practiced present_tense — an important grammar topic for A1 level. You read a text, listened to a dialogue, and practiced speaking and writing. Keep going!', '["142 vocabulary items about Weather","present_tense — grammar explanation and practice","Reading comprehension: text about Weather","Listening comprehension: dialogue about Weather","Speaking practice: roleplay/discussion about Weather","Writing task: text about Weather"]', '[{"title":"Das Wetter Review","summary":"present_tense — the main grammar focus. Focus on understanding when to use this structure and forming basic sentences."}]', ARRAY['das Wetter (weather)','die Sonne (sun)','der Regen (rain)','der Schnee (snow)','warm (warm)']::text[], ARRAY['Don''t translate from Arabic word-for-word — German has different sentence structure','Learn every noun with its article: NEVER learn "Tisch" alone, always "der Tisch"','Verb always in position 2 in main clauses']::text[], ARRAY['Practice 15-20 minutes daily — consistency beats intensity','Speak out loud: German pronunciation needs muscle memory','Use the new vocabulary within 24 hours or you''ll forget it','Watch German YouTube videos about Weather for authentic input']::text[]);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000659a8b8f', 'Pronunciation: German sounds for "weather"', 'In German, vowels are pure — unlike English diphthongs. The "ch" sound after a, o, u is guttural (like Arabic خ). After e, i, ä, ö, ü it''s soft (like English "huge" without the "u").

Common mistake for Arabic speakers: Arabic speakers tend to over-emphasise consonants. German flows — connect words smoothly (e.g., "Ich habe" becomes /ɪçabə/ not /ɪç ˈhaːbə/).', '[]', '[{"german":"das Wetter","arabic":"","english":"","phonetic":""},{"german":"die Sonne","arabic":"","english":"","phonetic":""},{"german":"der Regen","arabic":"","english":"","phonetic":""},{"german":"der Schnee","arabic":"","english":"","phonetic":""}]', '[]', 10);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000659a8b8f', 'translation', 'Translate to German: "I use the word "weather" in a sentence about Weather."', '[]', 'Das Wetter ist schön.', 'Use das  "das Wetter" with the correct present_tense form.', 1, 40);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000659a8b8f', 'translation', 'Translate to German: "I use the word "sun" in a sentence about Weather."', '[]', 'Die Sonne scheint.', 'Use die  "die Sonne" with the correct present_tense form.', 1, 41);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000659a8b8f', 'translation', 'Translate to German: "I use the word "rain" in a sentence about Weather."', '[]', 'Es regnet.', 'Use der  "der Regen" with the correct present_tense form.', 1, 42);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000659a8b8f', 'Culture: 🇩🇪 Deutsche Kultur: Weather', 'In Germany, Weather is approached with typical German directness and efficiency. Germans value clarity over small talk. When discussing Weather, expect honest feedback and straightforward questions. This is not rudeness — it''s cultural. Arabic speakers often find this too direct at first, but you''ll appreciate it once you get used to it.

في ألمانيا، يتم التعامل مع Weather بوضوح وكفاءة. الألمان يقدرون الوضوح أكثر من المجاملات. لا تعتبر هذه وقاحة - إنها ثقافة مختلفة.', '["Tip: Always use \"Sie\" (formal) with strangers and colleagues","Tip: Germans appreciate punctuality — arrive 5 minutes early","Tip: Direct feedback is a sign of respect, not criticism","Tip: Prepare factual arguments, not emotional appeals"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000659a8b8f', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Using Arabic word order in German sentences","correction":"Verb must be in position 2: Subject + Verb + Object","explanation":"Arabic and German have different sentence structures. Arabic is VSO, German is SVO with verb in position 2."},{"mistake":"Using the wrong article (der/die/das) for nouns","correction":"Learn each noun with its article as one piece","explanation":"Arabic has no articles for nouns without gender connection"}]', 30);

  -- Lesson 5: Im Hotel (L-A1-06-05)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-0000659a8b90', '00000000-0000-4000-a000-000039b4d363', 'Im Hotel', 'Learn how to book a room and interact at hotels.', 'Hotel', 'speaking', '["Understand and apply mochten rules correctly","Use mochten in real conversations","Avoid common mistakes Arabic speakers make with mochten","Read and understand mochten in context","Listen and identify mochten in speech","Write sentences using mochten correctly"]', 30, 5, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, french_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-0000659a8b90', 'die Reise', 'الرحلة', 'trip', NULL, 'die', 'die Reisen', 'noun', 'Die Reise nach München war schön.', 'The trip to Munich was nice.', 'A1', 1),
  ('00000000-0000-4000-a000-0000659a8b90', 'der Zug', 'القطار', 'train', NULL, 'der', 'die Züge', 'noun', 'Der Zug kommt um 10 Uhr an.', 'The train arrives at 10 o''clock.', 'A1', 2),
  ('00000000-0000-4000-a000-0000659a8b90', 'das Ticket', 'التذكرة', 'ticket', NULL, 'das', 'die Tickets', 'noun', 'Ein Ticket nach Berlin, bitte.', 'A ticket to Berlin, please.', 'A1', 3),
  ('00000000-0000-4000-a000-0000659a8b90', 'der Bahnhof', 'محطة القطار', 'train station', NULL, 'der', 'die Bahnhöfe', 'noun', 'Der Bahnhof ist groß.', 'The train station is big.', 'A1', 4),
  ('00000000-0000-4000-a000-0000659a8b90', 'der Flughafen', 'المطار', 'airport', NULL, 'der', 'die Flughäfen', 'noun', 'Ich fahre zum Flughafen.', 'I drive to the airport.', 'A1', 5),
  ('00000000-0000-4000-a000-0000659a8b90', 'das Hotel', 'الفندق', 'hotel', NULL, 'das', 'die Hotels', 'noun', 'Das Hotel ist günstig.', 'The hotel is affordable.', 'A1', 6),
  ('00000000-0000-4000-a000-0000659a8b90', 'der Pass', 'جواز السفر', 'passport', NULL, 'der', 'die Pässe', 'noun', 'Ich brauche meinen Pass.', 'I need my passport.', 'A1', 7),
  ('00000000-0000-4000-a000-0000659a8b90', 'der Koffer', 'الحقيبة', 'suitcase', NULL, 'der', 'die Koffer', 'noun', 'Mein Koffer ist schwer.', 'My suitcase is heavy.', 'A1', 8),
  ('00000000-0000-4000-a000-0000659a8b90', 'Hallo', 'مرحباً', 'hello', 'bonjour', NULL, NULL, 'interjection', 'Hallo, wie geht es dir?', 'Hello, how are you?', 'A1', 9),
  ('00000000-0000-4000-a000-0000659a8b90', 'Guten Morgen', 'صباح الخير', 'good morning', 'bonjour (le matin)', NULL, NULL, 'phrase', 'Guten Morgen, Herr Müller.', 'Good morning, Mr. Müller.', 'A1', 10),
  ('00000000-0000-4000-a000-0000659a8b90', 'Guten Tag', 'نهارك سعيد', 'good day', 'bonjour (l''après-midi)', NULL, NULL, 'phrase', 'Guten Tag, Frau Schmidt.', 'Good day, Mrs. Schmidt.', 'A1', 11),
  ('00000000-0000-4000-a000-0000659a8b90', 'Tschüss', 'مع السلامة', 'bye', 'au revoir / salut', NULL, NULL, 'interjection', 'Tschüss, bis morgen!', 'Bye, see you tomorrow!', 'A1', 12),
  ('00000000-0000-4000-a000-0000659a8b90', 'der Name', 'الاسم', 'name', 'le nom', 'der', 'die Namen', 'noun', 'Mein Name ist Anna.', 'My name is Anna.', 'A1', 13),
  ('00000000-0000-4000-a000-0000659a8b90', 'wie', 'كيف', 'how', 'comment', NULL, NULL, 'adverb', 'Wie heißt du?', 'What is your name?', 'A1', 14),
  ('00000000-0000-4000-a000-0000659a8b90', 'freuen', 'يسر', 'to be pleased', 'se réjouir', NULL, NULL, 'verb', 'Ich freue mich, dich kennenzulernen.', 'I am pleased to meet you.', 'A1', 15),
  ('00000000-0000-4000-a000-0000659a8b90', 'Willkommen', 'أهلاً وسهلاً', 'welcome', 'bienvenue', NULL, NULL, 'interjection', 'Willkommen in Deutschland!', 'Welcome to Germany!', 'A1', 16),
  ('00000000-0000-4000-a000-0000659a8b90', 'die Familie', 'العائلة', 'family', 'la famille', 'die', 'die Familien', 'noun', 'Meine Familie ist groß.', 'My family is big.', 'A1', 17),
  ('00000000-0000-4000-a000-0000659a8b90', 'der Vater', 'الأب', 'father', 'le père', 'der', 'die Väter', 'noun', 'Mein Vater ist Ingenieur.', 'My father is an engineer.', 'A1', 18),
  ('00000000-0000-4000-a000-0000659a8b90', 'die Mutter', 'الأم', 'mother', 'la mère', 'die', 'die Mütter', 'noun', 'Meine Mutter kocht gut.', 'My mother cooks well.', 'A1', 19),
  ('00000000-0000-4000-a000-0000659a8b90', 'der Bruder', 'الأخ', 'brother', 'le frère', 'der', 'die Brüder', 'noun', 'Mein Bruder ist 15 Jahre alt.', 'My brother is 15 years old.', 'A1', 20),
  ('00000000-0000-4000-a000-0000659a8b90', 'die Schwester', 'الأخت', 'sister', 'la sœur', 'die', 'die Schwestern', 'noun', 'Meine Schwester studiert Medizin.', 'My sister studies medicine.', 'A1', 21),
  ('00000000-0000-4000-a000-0000659a8b90', 'die Geschwister', 'الإخوة', 'siblings', 'les frères et sœurs', 'die', NULL, 'noun', 'Hast du Geschwister?', 'Do you have siblings?', 'A1', 22),
  ('00000000-0000-4000-a000-0000659a8b90', 'der Sohn', 'الابن', 'son', 'le fils', 'der', 'die Söhne', 'noun', 'Wir haben einen Sohn.', 'We have a son.', 'A1', 23),
  ('00000000-0000-4000-a000-0000659a8b90', 'die Tochter', 'الابنة', 'daughter', 'la fille', 'die', 'die Töchter', 'noun', 'Meine Tochter geht zur Schule.', 'My daughter goes to school.', 'A1', 24),
  ('00000000-0000-4000-a000-0000659a8b90', 'die Großeltern', 'الأجداد', 'grandparents', 'les grands-parents', 'die', NULL, 'noun', 'Meine Großeltern wohnen auf dem Land.', 'My grandparents live in the countryside.', 'A1', 25),
  ('00000000-0000-4000-a000-0000659a8b90', 'verheiratet', 'متزوج', 'married', 'marié(e)', NULL, NULL, 'adjective', 'Meine Eltern sind verheiratet.', 'My parents are married.', 'A1', 26),
  ('00000000-0000-4000-a000-0000659a8b90', 'das Brot', 'الخبز', 'bread', 'le pain', 'das', 'die Brote', 'noun', 'Ich kaufe ein Brot.', 'I buy a loaf of bread.', 'A1', 27),
  ('00000000-0000-4000-a000-0000659a8b90', 'die Milch', 'الحليب', 'milk', 'le lait', 'die', NULL, 'noun', 'Die Milch ist frisch.', 'The milk is fresh.', 'A1', 28),
  ('00000000-0000-4000-a000-0000659a8b90', 'der Käse', 'الجبن', 'cheese', 'le fromage', 'der', NULL, 'noun', 'Der Käse schmeckt gut.', 'The cheese tastes good.', 'A1', 29),
  ('00000000-0000-4000-a000-0000659a8b90', 'der Apfel', 'التفاح', 'apple', 'la pomme', 'der', 'die Äpfel', 'noun', 'Der Apfel ist rot.', 'The apple is red.', 'A1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000659a8b90', 'möchten — Höfliche Bitten (Polite Requests) / möchten — الطلبات المهذبة', '"Möchten" is the subjunctive form of "mögen" and means "would like". It is the most important word for polite requests in German. Conjugation: ich möchte, du möchtest, er/sie/es möchte, wir möchten, ihr möchtet, sie/Sie möchten. It is always followed by an infinitive at the end, or a noun.', '[{"rule":"möchten + noun: Ich möchte einen Kaffee.","note":"Used like \"I would like a...\""},{"rule":"möchten + infinitive (at end): Ich möchte zahlen.","note":"Verb goes to the end"},{"rule":"ich möchte, du möchtest, er/sie/es möchte, wir möchten","note":"Similar to modal verb conjugation"}]', '[{"german":"Ich möchte einen Kaffee, bitte.","arabic":"أود فنجان قهوة من فضلك.","english":"I would like a coffee, please."},{"german":"Wir möchten zahlen, bitte.","arabic":"نود الدفع من فضلك.","english":"We would like to pay, please."},{"german":"Möchtest du etwas essen?","arabic":"هل ترغب في أكل شيء؟","english":"Would you like something to eat?"}]', '[{"mistake":"Ich will einen Kaffee (too direct)","correction":"Ich möchte einen Kaffee.","explanation":"\"Ich will\" is too direct in restaurants. Use \"möchten\" for polite requests."},{"mistake":"Ich möchte ein Wasser (wrong article in accusative)","correction":"Ich möchte ein Wasser / Ich möchte einen Kaffee.","explanation":"\"Kaffee\" is masculine → \"einen\" (Akkusativ). \"Wasser\" is neuter → \"ein\"."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000659a8b90', 'multiple_choice', 'Which German word matches "trip"?', '["die Reise","der Flughafen","der Bahnhof","der Zug"]', 'die Reise', '"trip" = "die Reise" in German. Article: die Plural: die Reisen', 1, 1),
  ('00000000-0000-4000-a000-0000659a8b90', 'multiple_choice', 'Which German word matches "train"?', '["der Bahnhof","die Reise","der Zug","der Flughafen"]', 'der Zug', '"train" = "der Zug" in German. Article: der Plural: die Züge', 1, 2),
  ('00000000-0000-4000-a000-0000659a8b90', 'multiple_choice', 'Which German word matches "ticket"?', '["das Ticket","der Bahnhof","die Reise","der Zug"]', 'das Ticket', '"ticket" = "das Ticket" in German. Article: das Plural: die Tickets', 1, 3),
  ('00000000-0000-4000-a000-0000659a8b90', 'multiple_choice', 'Which German word matches "train station"?', '["der Zug","der Flughafen","das Ticket","die Reise"]', 'der Bahnhof', '"train station" = "der Bahnhof" in German. Article: der Plural: die Bahnhöfe', 1, 4),
  ('00000000-0000-4000-a000-0000659a8b90', 'multiple_choice', 'Which German word matches "airport"?', '["der Flughafen","das Ticket","der Bahnhof","die Reise"]', 'der Flughafen', '"airport" = "der Flughafen" in German. Article: der Plural: die Flughäfen', 1, 5),
  ('00000000-0000-4000-a000-0000659a8b90', 'fill_gap', 'Complete the sentence: Ich ___ gern über Hotel. (sprechen)', '["spreche","sprichst","spricht","sprechen"]', 'spreche', 'ich spreche gern = I like to speak. Stem: sprech- + e.', 2, 6),
  ('00000000-0000-4000-a000-0000659a8b90', 'translation', 'Translate to German: "I am learning about Hotel."', '["Ich lerne über Hotel.","Ich lerne Hotel.","Lerne ich Hotel."]', 'Ich lerne über Hotel.', '"Ich lerne über..." = "I am learning about..."', 2, 7),
  ('00000000-0000-4000-a000-0000659a8b90', 'matching', 'Match: Which word pairs are correct?', '["die Reise - trip, der Zug - train"]', 'Matched correctly', 'Each German word has a unique English equivalent.', 2, 8);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-0000659a8b90', 'multiple_choice', 'What does "die Reise" mean in English?', '["trip","to run","beautiful","yesterday"]', 'trip', 1, 1),
  ('00000000-0000-4000-a000-0000659a8b90', 'multiple_choice', 'What is the correct article for "der Zug"?', '["der","die","das","den"]', 'der', 1, 2),
  ('00000000-0000-4000-a000-0000659a8b90', 'true_false', 'The word "das Ticket" is related to Hotel.', '["True","False"]', 'True', 1, 3),
  ('00000000-0000-4000-a000-0000659a8b90', 'multiple_choice', 'Which sentence correctly uses mochten?', '["Ich möchte einen Kaffee, bitte.","Wir möchten zahlen, bitte.","Möchtest du etwas essen?"]', 'Ich möchte einen Kaffee, bitte.', 2, 4),
  ('00000000-0000-4000-a000-0000659a8b90', 'true_false', 'German word order puts the verb in second position in main clauses.', '["True","False"]', 'True', 1, 5),
  ('00000000-0000-4000-a000-0000659a8b90', 'fill_blank', 'Complete: Ich ___ (train station) Deutsch.', '["der Bahnhof","lernt","lernst","lernen"]', 'lerne', 2, 6),
  ('00000000-0000-4000-a000-0000659a8b90', 'multiple_choice', 'What is the German word for "airport"?', '["der Flughafen","das Hotel","der Pass","der Koffer"]', 'der Flughafen', 1, 7),
  ('00000000-0000-4000-a000-0000659a8b90', 'true_false', 'In German, ALL nouns are always capitalised.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-0000659a8b90', 'multiple_choice', 'How do you say "please" in a restaurant in Germany?', '["Bitte","Danke","Tschüss","Hallo"]', 'Bitte', 1, 9),
  ('00000000-0000-4000-a000-0000659a8b90', 'fill_blank', 'Wo ___ (to live) du?', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 2, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, french_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-0000659a8b90', 'Ich möchte ein Ticket nach Berlin.', 'I''d like a ticket to Berlin.', 'أريد تذكرة إلى برلين.', NULL, 'Used in Reisen und Freizeit', 'formal', false, 1),
  ('00000000-0000-4000-a000-0000659a8b90', 'Wann fährt der Zug ab?', 'When does the train depart?', 'متى يغادر القطار؟', NULL, 'Used in Reisen und Freizeit', 'formal', false, 2),
  ('00000000-0000-4000-a000-0000659a8b90', 'Wo ist der Bahnsteig?', 'Where is the platform?', 'أين الرصيف؟', NULL, 'Used in Reisen und Freizeit', 'formal', false, 3),
  ('00000000-0000-4000-a000-0000659a8b90', 'Ist dieser Platz frei?', 'Is this seat free?', 'هل هذا المقعد شاغر؟', NULL, 'Used in Reisen und Freizeit', 'neutral', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-0000659a8b90', 'die die Reise (die Reisen)', 'trip — الرحلة', 'noun', 'vocabulary', 1),
  ('00000000-0000-4000-a000-0000659a8b90', 'der der Zug (die Züge)', 'train — القطار', 'noun', 'vocabulary', 2),
  ('00000000-0000-4000-a000-0000659a8b90', 'das das Ticket (die Tickets)', 'ticket — التذكرة', 'noun', 'vocabulary', 3),
  ('00000000-0000-4000-a000-0000659a8b90', 'der der Bahnhof (die Bahnhöfe)', 'train station — محطة القطار', 'noun', 'vocabulary', 4),
  ('00000000-0000-4000-a000-0000659a8b90', 'der der Flughafen (die Flughäfen)', 'airport — المطار', 'noun', 'vocabulary', 5),
  ('00000000-0000-4000-a000-0000659a8b90', 'das das Hotel (die Hotels)', 'hotel — الفندق', 'noun', 'vocabulary', 6),
  ('00000000-0000-4000-a000-0000659a8b90', 'der der Pass (die Pässe)', 'passport — جواز السفر', 'noun', 'vocabulary', 7),
  ('00000000-0000-4000-a000-0000659a8b90', 'der der Koffer (die Koffer)', 'suitcase — الحقيبة', 'noun', 'vocabulary', 8),
  ('00000000-0000-4000-a000-0000659a8b90', 'Hallo', 'hello — مرحباً', 'interjection', 'vocabulary', 9),
  ('00000000-0000-4000-a000-0000659a8b90', 'Guten Morgen', 'good morning — صباح الخير', 'phrase', 'vocabulary', 10),
  ('00000000-0000-4000-a000-0000659a8b90', 'Guten Tag', 'good day — نهارك سعيد', 'phrase', 'vocabulary', 11),
  ('00000000-0000-4000-a000-0000659a8b90', 'Tschüss', 'bye — مع السلامة', 'interjection', 'vocabulary', 12),
  ('00000000-0000-4000-a000-0000659a8b90', 'der der Name (die Namen)', 'name — الاسم', 'noun', 'vocabulary', 13),
  ('00000000-0000-4000-a000-0000659a8b90', 'wie', 'how — كيف', 'adverb', 'vocabulary', 14),
  ('00000000-0000-4000-a000-0000659a8b90', 'freuen', 'to be pleased — يسر', 'verb', 'vocabulary', 15),
  ('00000000-0000-4000-a000-0000659a8b90', 'Ich möchte einen Kaffee, bitte.', 'I would like a coffee, please.', 'möchten — Höfliche Bitten (Polite Requests)', 'grammar', 16),
  ('00000000-0000-4000-a000-0000659a8b90', 'Wir möchten zahlen, bitte.', 'We would like to pay, please.', 'möchten — Höfliche Bitten (Polite Requests)', 'grammar', 17),
  ('00000000-0000-4000-a000-0000659a8b90', 'Möchtest du etwas essen?', 'Would you like something to eat?', 'möchten — Höfliche Bitten (Polite Requests)', 'grammar', 18);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, french_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-0000659a8b90', 'Im Hotel — Leseübung', 'Nächste Woche mache ich eine Reise nach München. Ich fahre mit dem Zug. Ich kaufe ein Ticket am Bahnhof. Der Zug fährt um 8 Uhr ab. Die Fahrt dauert 4 Stunden. In München besuche ich meine Tante. Sie wohnt in der Nähe des Hauptbahnhofs. Wir gehen zusammen in ein Restaurant. Dann besuchen wir das Deutsche Museum. Die Reise wird schön.', 'Next week I am taking a trip to Munich. I am going by train. I buy a ticket at the train station. The train departs at 8 o''clock. The journey takes 4 hours. In Munich I visit my aunt. She lives near the main train station. We go to a restaurant together. Then we visit the German Museum. The trip will be nice.', 'الأسبوع القادم سأسافر إلى ميونخ. سأذهب بالقطار. أشتري تذكرة من محطة القطار. القطار يغادر في الساعة 8. الرحلة تستغرق 4 ساعات. في ميونخ أزور عمتي. تسكن بالقرب من المحطة الرئيسية. نذهب معاً إلى مطعم. ثم نزور المتحف الألماني. الرحلة ستكون جميلة.', NULL, 60, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, french_translation, duration_seconds, speaker_count, scenario) values
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

[Mitarbeiter]: إذاً التكلفة 73.50 يورو. القطار يغادر في الساعة 10.', '[Kunde]: 

[Mitarbeiter]: 

[Kunde]: 

[Mitarbeiter]: 

[Kunde]: 

[Mitarbeiter]: ', 72, 2, 'Reisen und Freizeit');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-0000659a8b90', '🔊 Sprechen: Im Hotel', 'Roleplay: You are in a German café. Introduce yourself and talk about Hotel. Your partner (AI) will respond naturally.', 'Hotel', ARRAY['Use complete sentences — not single words','Pause between phrases, not between words','Don''t translate from Arabic word-for-word']::text[], ARRAY['die Reise','der Zug','das Ticket','der Bahnhof','der Flughafen','das Hotel','der Pass','der Koffer']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-0000659a8b90', '✏️ Schreiben: Im Hotel', 'Write an email to a German friend about "Hotel". Tell them what you learned, what you found interesting, and ask two questions about their experience with this topic. Use at least 8 vocabulary words from this lesson. Sign off naturally ("Viele Grüße", "Liebe Grüße").', ARRAY['Start with "Hallo" or "Liebe/r"','Keep sentences short (Subject-Verb-Object)','End with a friendly farewell']::text[], ARRAY['die Reise','der Zug','das Ticket','der Bahnhof','der Flughafen','das Hotel','der Pass','der Koffer']::text[], ARRAY['Sentence structure','Vocabulary usage']::text[], 50, 100, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000659a8b90', 'Im Hotel — Roleplay', 'Hotel', 'Student', 'Teacher', 'Practice conversation about Hotel', 'Hallo! Lass uns über dieses Thema sprechen.', 'beginner', 1, ARRAY['die Reise','der Zug','das Ticket','der Bahnhof','der Flughafen','das Hotel','der Pass','der Koffer']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000659a8b90', 'Im Hotel — Advanced Roleplay', 'Hotel', 'Customer', 'Assistant', 'Extended conversation about Hotel', 'Guten Tag! Wie kann ich Ihnen helfen?', 'beginner', 2, ARRAY['die Reise','der Zug','das Ticket','der Bahnhof','der Flughafen','das Hotel','der Pass','der Koffer']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-0000659a8b90', 'Im Hotel — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Im Hotel".', 'Creative practice for Hotel', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-0000659a8b90', '📚 Hausaufgabe: Im Hotel', 'Complete these tasks to reinforce "Im Hotel".', 'mixed', '[{"description":"Create 10 flashcards from this lesson''s vocabulary — write German on one side, Arabic on the other. Test yourself 3 times."},{"description":"Write 6 sentences about Hotel: 2 statements, 2 questions, 2 negations — all using mochten."},{"description":"Record yourself reading the dialogue aloud. Listen to the recording and note 3 things to improve."},{"description":"Find 3 real German websites, videos, or articles about Hotel. Note 5 new words you discovered."}]', 50, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-0000659a8b90', '🎯 Great work! In this lesson you learned 150 new words about Hotel. You practiced mochten — an important grammar topic for A1 level. You read a text, listened to a dialogue, and practiced speaking and writing. Keep going!', '["150 vocabulary items about Hotel","mochten — grammar explanation and practice","Reading comprehension: text about Hotel","Listening comprehension: dialogue about Hotel","Speaking practice: roleplay/discussion about Hotel","Writing task: text about Hotel"]', '[{"title":"Im Hotel Review","summary":"mochten — the main grammar focus. Focus on understanding when to use this structure and forming basic sentences."}]', ARRAY['die Reise (trip)','der Zug (train)','das Ticket (ticket)','der Bahnhof (train station)','der Flughafen (airport)']::text[], ARRAY['Don''t translate from Arabic word-for-word — German has different sentence structure','Learn every noun with its article: NEVER learn "Tisch" alone, always "der Tisch"','Verb always in position 2 in main clauses']::text[], ARRAY['Practice 15-20 minutes daily — consistency beats intensity','Speak out loud: German pronunciation needs muscle memory','Use the new vocabulary within 24 hours or you''ll forget it','Watch German YouTube videos about Hotel for authentic input']::text[]);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000659a8b90', 'Pronunciation: German sounds for "travel"', 'In German, vowels are pure — unlike English diphthongs. The "ch" sound after a, o, u is guttural (like Arabic خ). After e, i, ä, ö, ü it''s soft (like English "huge" without the "u").

Common mistake for Arabic speakers: Arabic speakers tend to over-emphasise consonants. German flows — connect words smoothly (e.g., "Ich habe" becomes /ɪçabə/ not /ɪç ˈhaːbə/).', '[]', '[{"german":"die Reise","arabic":"","english":"","phonetic":""},{"german":"der Zug","arabic":"","english":"","phonetic":""},{"german":"das Ticket","arabic":"","english":"","phonetic":""},{"german":"der Bahnhof","arabic":"","english":"","phonetic":""}]', '[]', 10);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000659a8b90', 'translation', 'Translate to German: "I use the word "trip" in a sentence about Hotel."', '[]', 'Die Reise nach München war schön.', 'Use die  "die Reise" with the correct mochten form.', 1, 40);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000659a8b90', 'translation', 'Translate to German: "I use the word "train" in a sentence about Hotel."', '[]', 'Der Zug kommt um 10 Uhr an.', 'Use der  "der Zug" with the correct mochten form.', 1, 41);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000659a8b90', 'translation', 'Translate to German: "I use the word "ticket" in a sentence about Hotel."', '[]', 'Ein Ticket nach Berlin, bitte.', 'Use das  "das Ticket" with the correct mochten form.', 1, 42);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000659a8b90', 'Culture: 🇩🇪 Deutsche Kultur: Hotel', 'In Germany, Hotel is approached with typical German directness and efficiency. Germans value clarity over small talk. When discussing Hotel, expect honest feedback and straightforward questions. This is not rudeness — it''s cultural. Arabic speakers often find this too direct at first, but you''ll appreciate it once you get used to it.

في ألمانيا، يتم التعامل مع Hotel بوضوح وكفاءة. الألمان يقدرون الوضوح أكثر من المجاملات. لا تعتبر هذه وقاحة - إنها ثقافة مختلفة.', '["Tip: Always use \"Sie\" (formal) with strangers and colleagues","Tip: Germans appreciate punctuality — arrive 5 minutes early","Tip: Direct feedback is a sign of respect, not criticism","Tip: Prepare factual arguments, not emotional appeals"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000659a8b90', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Using \"reisen\" instead of \"fahren\" for specific trips","correction":"reisen = general travel, fahren = specific journey by vehicle","explanation":"Arabic \"saafara\" covers both. German distinguishes between abstract and concrete travel."},{"mistake":"Using the wrong article (der/die/das) for nouns","correction":"Learn each noun with its article as one piece","explanation":"Arabic has no articles for nouns without gender connection"}]', 30);

  -- Lesson 6: A1 Abschlusstest (L-A1-06-06)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-0000659a8b91', '00000000-0000-4000-a000-000039b4d363', 'A1 Abschlusstest', 'Comprehensive A1 level test.', 'Level Test', 'test', '["Understand and apply present_tense rules correctly","Use present_tense in real conversations","Avoid common mistakes Arabic speakers make with present_tense","Read and understand present_tense in context","Listen and identify present_tense in speech","Write sentences using present_tense correctly"]', 45, 6, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, french_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-0000659a8b91', 'die Reise', 'الرحلة', 'trip', NULL, 'die', 'die Reisen', 'noun', 'Die Reise nach München war schön.', 'The trip to Munich was nice.', 'A1', 1),
  ('00000000-0000-4000-a000-0000659a8b91', 'der Zug', 'القطار', 'train', NULL, 'der', 'die Züge', 'noun', 'Der Zug kommt um 10 Uhr an.', 'The train arrives at 10 o''clock.', 'A1', 2),
  ('00000000-0000-4000-a000-0000659a8b91', 'das Ticket', 'التذكرة', 'ticket', NULL, 'das', 'die Tickets', 'noun', 'Ein Ticket nach Berlin, bitte.', 'A ticket to Berlin, please.', 'A1', 3),
  ('00000000-0000-4000-a000-0000659a8b91', 'der Bahnhof', 'محطة القطار', 'train station', NULL, 'der', 'die Bahnhöfe', 'noun', 'Der Bahnhof ist groß.', 'The train station is big.', 'A1', 4),
  ('00000000-0000-4000-a000-0000659a8b91', 'der Flughafen', 'المطار', 'airport', NULL, 'der', 'die Flughäfen', 'noun', 'Ich fahre zum Flughafen.', 'I drive to the airport.', 'A1', 5),
  ('00000000-0000-4000-a000-0000659a8b91', 'das Hotel', 'الفندق', 'hotel', NULL, 'das', 'die Hotels', 'noun', 'Das Hotel ist günstig.', 'The hotel is affordable.', 'A1', 6),
  ('00000000-0000-4000-a000-0000659a8b91', 'der Pass', 'جواز السفر', 'passport', NULL, 'der', 'die Pässe', 'noun', 'Ich brauche meinen Pass.', 'I need my passport.', 'A1', 7),
  ('00000000-0000-4000-a000-0000659a8b91', 'der Koffer', 'الحقيبة', 'suitcase', NULL, 'der', 'die Koffer', 'noun', 'Mein Koffer ist schwer.', 'My suitcase is heavy.', 'A1', 8),
  ('00000000-0000-4000-a000-0000659a8b91', 'Hallo', 'مرحباً', 'hello', 'bonjour', NULL, NULL, 'interjection', 'Hallo, wie geht es dir?', 'Hello, how are you?', 'A1', 9),
  ('00000000-0000-4000-a000-0000659a8b91', 'Guten Morgen', 'صباح الخير', 'good morning', 'bonjour (le matin)', NULL, NULL, 'phrase', 'Guten Morgen, Herr Müller.', 'Good morning, Mr. Müller.', 'A1', 10),
  ('00000000-0000-4000-a000-0000659a8b91', 'Guten Tag', 'نهارك سعيد', 'good day', 'bonjour (l''après-midi)', NULL, NULL, 'phrase', 'Guten Tag, Frau Schmidt.', 'Good day, Mrs. Schmidt.', 'A1', 11),
  ('00000000-0000-4000-a000-0000659a8b91', 'Tschüss', 'مع السلامة', 'bye', 'au revoir / salut', NULL, NULL, 'interjection', 'Tschüss, bis morgen!', 'Bye, see you tomorrow!', 'A1', 12),
  ('00000000-0000-4000-a000-0000659a8b91', 'der Name', 'الاسم', 'name', 'le nom', 'der', 'die Namen', 'noun', 'Mein Name ist Anna.', 'My name is Anna.', 'A1', 13),
  ('00000000-0000-4000-a000-0000659a8b91', 'wie', 'كيف', 'how', 'comment', NULL, NULL, 'adverb', 'Wie heißt du?', 'What is your name?', 'A1', 14),
  ('00000000-0000-4000-a000-0000659a8b91', 'freuen', 'يسر', 'to be pleased', 'se réjouir', NULL, NULL, 'verb', 'Ich freue mich, dich kennenzulernen.', 'I am pleased to meet you.', 'A1', 15),
  ('00000000-0000-4000-a000-0000659a8b91', 'Willkommen', 'أهلاً وسهلاً', 'welcome', 'bienvenue', NULL, NULL, 'interjection', 'Willkommen in Deutschland!', 'Welcome to Germany!', 'A1', 16),
  ('00000000-0000-4000-a000-0000659a8b91', 'die Familie', 'العائلة', 'family', 'la famille', 'die', 'die Familien', 'noun', 'Meine Familie ist groß.', 'My family is big.', 'A1', 17),
  ('00000000-0000-4000-a000-0000659a8b91', 'der Vater', 'الأب', 'father', 'le père', 'der', 'die Väter', 'noun', 'Mein Vater ist Ingenieur.', 'My father is an engineer.', 'A1', 18),
  ('00000000-0000-4000-a000-0000659a8b91', 'die Mutter', 'الأم', 'mother', 'la mère', 'die', 'die Mütter', 'noun', 'Meine Mutter kocht gut.', 'My mother cooks well.', 'A1', 19),
  ('00000000-0000-4000-a000-0000659a8b91', 'der Bruder', 'الأخ', 'brother', 'le frère', 'der', 'die Brüder', 'noun', 'Mein Bruder ist 15 Jahre alt.', 'My brother is 15 years old.', 'A1', 20),
  ('00000000-0000-4000-a000-0000659a8b91', 'die Schwester', 'الأخت', 'sister', 'la sœur', 'die', 'die Schwestern', 'noun', 'Meine Schwester studiert Medizin.', 'My sister studies medicine.', 'A1', 21),
  ('00000000-0000-4000-a000-0000659a8b91', 'die Geschwister', 'الإخوة', 'siblings', 'les frères et sœurs', 'die', NULL, 'noun', 'Hast du Geschwister?', 'Do you have siblings?', 'A1', 22),
  ('00000000-0000-4000-a000-0000659a8b91', 'der Sohn', 'الابن', 'son', 'le fils', 'der', 'die Söhne', 'noun', 'Wir haben einen Sohn.', 'We have a son.', 'A1', 23),
  ('00000000-0000-4000-a000-0000659a8b91', 'die Tochter', 'الابنة', 'daughter', 'la fille', 'die', 'die Töchter', 'noun', 'Meine Tochter geht zur Schule.', 'My daughter goes to school.', 'A1', 24),
  ('00000000-0000-4000-a000-0000659a8b91', 'die Großeltern', 'الأجداد', 'grandparents', 'les grands-parents', 'die', NULL, 'noun', 'Meine Großeltern wohnen auf dem Land.', 'My grandparents live in the countryside.', 'A1', 25),
  ('00000000-0000-4000-a000-0000659a8b91', 'verheiratet', 'متزوج', 'married', 'marié(e)', NULL, NULL, 'adjective', 'Meine Eltern sind verheiratet.', 'My parents are married.', 'A1', 26),
  ('00000000-0000-4000-a000-0000659a8b91', 'das Brot', 'الخبز', 'bread', 'le pain', 'das', 'die Brote', 'noun', 'Ich kaufe ein Brot.', 'I buy a loaf of bread.', 'A1', 27),
  ('00000000-0000-4000-a000-0000659a8b91', 'die Milch', 'الحليب', 'milk', 'le lait', 'die', NULL, 'noun', 'Die Milch ist frisch.', 'The milk is fresh.', 'A1', 28),
  ('00000000-0000-4000-a000-0000659a8b91', 'der Käse', 'الجبن', 'cheese', 'le fromage', 'der', NULL, 'noun', 'Der Käse schmeckt gut.', 'The cheese tastes good.', 'A1', 29),
  ('00000000-0000-4000-a000-0000659a8b91', 'der Apfel', 'التفاح', 'apple', 'la pomme', 'der', 'die Äpfel', 'noun', 'Der Apfel ist rot.', 'The apple is red.', 'A1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000659a8b91', 'Präsens der regelmäßigen Verben (Present Tense) / المضارع للأفعال المنتظمة', 'In German, regular verbs follow a consistent pattern. The infinitive ends in -en. Remove the -en and add the personal endings: ich -e, du -st, er/sie/es -t, wir -en, ihr -t, sie/Sie -en. For most Arabic speakers, this is easier than Arabic verb conjugation because German has fewer forms.', '[{"rule":"ich: stem + e","note":"Ich lerne, ich wohne, ich arbeite"},{"rule":"du: stem + st","note":"Du lernst, du wohnst, du arbeitest"},{"rule":"er/sie/es: stem + t","note":"Er lernt, sie wohnt, es arbeitet"},{"rule":"wir: stem + en","note":"Wir lernen, wir wohnen, wir arbeiten"},{"rule":"ihr: stem + t","note":"Ihr lernt, ihr wohnt, ihr arbeitet"},{"rule":"sie/Sie: stem + en","note":"Sie lernen, Sie wohnen"}]', '[{"german":"Ich lerne Deutsch.","arabic":"أنا أتعلم الألمانية.","english":"I am learning German."},{"german":"Du wohnst in Berlin.","arabic":"أنت تسكن في برلين.","english":"You live in Berlin."},{"german":"Er arbeitet bei Siemens.","arabic":"هو يعمل في سيمنز.","english":"He works at Siemens."}]', '[{"mistake":"Ich lernen Deutsch","correction":"Ich lerne Deutsch","explanation":"After \"ich\" we use the stem + e, not the infinitive."},{"mistake":"Er lerne Deutsch","correction":"Er lernt Deutsch","explanation":"After \"er/sie/es\" we add -t, not -e."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000659a8b91', 'multiple_choice', 'Which German word matches "trip"?', '["der Bahnhof","der Zug","die Reise","das Ticket"]', 'die Reise', '"trip" = "die Reise" in German. Article: die Plural: die Reisen', 1, 1),
  ('00000000-0000-4000-a000-0000659a8b91', 'multiple_choice', 'Which German word matches "train"?', '["der Zug","die Reise","der Flughafen","das Ticket"]', 'der Zug', '"train" = "der Zug" in German. Article: der Plural: die Züge', 1, 2),
  ('00000000-0000-4000-a000-0000659a8b91', 'multiple_choice', 'Which German word matches "ticket"?', '["das Ticket","die Reise","der Zug","der Flughafen"]', 'das Ticket', '"ticket" = "das Ticket" in German. Article: das Plural: die Tickets', 1, 3),
  ('00000000-0000-4000-a000-0000659a8b91', 'multiple_choice', 'Which German word matches "train station"?', '["der Bahnhof","die Reise","der Zug","das Ticket"]', 'der Bahnhof', '"train station" = "der Bahnhof" in German. Article: der Plural: die Bahnhöfe', 1, 4),
  ('00000000-0000-4000-a000-0000659a8b91', 'multiple_choice', 'Which German word matches "airport"?', '["der Flughafen","die Reise","der Zug","der Bahnhof"]', 'der Flughafen', '"airport" = "der Flughafen" in German. Article: der Plural: die Flughäfen', 1, 5),
  ('00000000-0000-4000-a000-0000659a8b91', 'fill_gap', 'Complete the sentence: Ich ___ gern über Level Test. (sprechen)', '["spreche","sprichst","spricht","sprechen"]', 'spreche', 'ich spreche gern = I like to speak. Stem: sprech- + e.', 2, 6),
  ('00000000-0000-4000-a000-0000659a8b91', 'translation', 'Translate to German: "I am learning about Level Test."', '["Ich lerne über Level Test.","Ich lerne Level Test.","Lerne ich Level Test."]', 'Ich lerne über Level Test.', '"Ich lerne über..." = "I am learning about..."', 2, 7),
  ('00000000-0000-4000-a000-0000659a8b91', 'matching', 'Match: Which word pairs are correct?', '["die Reise - trip, der Zug - train"]', 'Matched correctly', 'Each German word has a unique English equivalent.', 2, 8);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-0000659a8b91', 'multiple_choice', 'What does "die Reise" mean in English?', '["trip","to run","beautiful","yesterday"]', 'trip', 1, 1),
  ('00000000-0000-4000-a000-0000659a8b91', 'multiple_choice', 'What is the correct article for "der Zug"?', '["der","die","das","den"]', 'der', 1, 2),
  ('00000000-0000-4000-a000-0000659a8b91', 'true_false', 'The word "das Ticket" is related to Level Test.', '["True","False"]', 'True', 1, 3),
  ('00000000-0000-4000-a000-0000659a8b91', 'multiple_choice', 'Which sentence correctly uses present_tense?', '["Ich lerne Deutsch.","Du wohnst in Berlin.","Er arbeitet bei Siemens."]', 'Ich lerne Deutsch.', 2, 4),
  ('00000000-0000-4000-a000-0000659a8b91', 'true_false', 'German word order puts the verb in second position in main clauses.', '["True","False"]', 'True', 1, 5),
  ('00000000-0000-4000-a000-0000659a8b91', 'fill_blank', 'Complete: Ich ___ (train station) Deutsch.', '["der Bahnhof","lernt","lernst","lernen"]', 'lerne', 2, 6),
  ('00000000-0000-4000-a000-0000659a8b91', 'multiple_choice', 'What is the German word for "airport"?', '["der Flughafen","das Hotel","der Pass","der Koffer"]', 'der Flughafen', 1, 7),
  ('00000000-0000-4000-a000-0000659a8b91', 'true_false', 'In German, ALL nouns are always capitalised.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-0000659a8b91', 'multiple_choice', 'How do you say "please" in a restaurant in Germany?', '["Bitte","Danke","Tschüss","Hallo"]', 'Bitte', 1, 9),
  ('00000000-0000-4000-a000-0000659a8b91', 'fill_blank', 'Wo ___ (to live) du?', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 2, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, french_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-0000659a8b91', 'Ich möchte ein Ticket nach Berlin.', 'I''d like a ticket to Berlin.', 'أريد تذكرة إلى برلين.', NULL, 'Used in Reisen und Freizeit', 'formal', false, 1),
  ('00000000-0000-4000-a000-0000659a8b91', 'Wann fährt der Zug ab?', 'When does the train depart?', 'متى يغادر القطار؟', NULL, 'Used in Reisen und Freizeit', 'formal', false, 2),
  ('00000000-0000-4000-a000-0000659a8b91', 'Wo ist der Bahnsteig?', 'Where is the platform?', 'أين الرصيف؟', NULL, 'Used in Reisen und Freizeit', 'formal', false, 3),
  ('00000000-0000-4000-a000-0000659a8b91', 'Ist dieser Platz frei?', 'Is this seat free?', 'هل هذا المقعد شاغر؟', NULL, 'Used in Reisen und Freizeit', 'neutral', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-0000659a8b91', 'die die Reise (die Reisen)', 'trip — الرحلة', 'noun', 'vocabulary', 1),
  ('00000000-0000-4000-a000-0000659a8b91', 'der der Zug (die Züge)', 'train — القطار', 'noun', 'vocabulary', 2),
  ('00000000-0000-4000-a000-0000659a8b91', 'das das Ticket (die Tickets)', 'ticket — التذكرة', 'noun', 'vocabulary', 3),
  ('00000000-0000-4000-a000-0000659a8b91', 'der der Bahnhof (die Bahnhöfe)', 'train station — محطة القطار', 'noun', 'vocabulary', 4),
  ('00000000-0000-4000-a000-0000659a8b91', 'der der Flughafen (die Flughäfen)', 'airport — المطار', 'noun', 'vocabulary', 5),
  ('00000000-0000-4000-a000-0000659a8b91', 'das das Hotel (die Hotels)', 'hotel — الفندق', 'noun', 'vocabulary', 6),
  ('00000000-0000-4000-a000-0000659a8b91', 'der der Pass (die Pässe)', 'passport — جواز السفر', 'noun', 'vocabulary', 7),
  ('00000000-0000-4000-a000-0000659a8b91', 'der der Koffer (die Koffer)', 'suitcase — الحقيبة', 'noun', 'vocabulary', 8),
  ('00000000-0000-4000-a000-0000659a8b91', 'Hallo', 'hello — مرحباً', 'interjection', 'vocabulary', 9),
  ('00000000-0000-4000-a000-0000659a8b91', 'Guten Morgen', 'good morning — صباح الخير', 'phrase', 'vocabulary', 10),
  ('00000000-0000-4000-a000-0000659a8b91', 'Guten Tag', 'good day — نهارك سعيد', 'phrase', 'vocabulary', 11),
  ('00000000-0000-4000-a000-0000659a8b91', 'Tschüss', 'bye — مع السلامة', 'interjection', 'vocabulary', 12),
  ('00000000-0000-4000-a000-0000659a8b91', 'der der Name (die Namen)', 'name — الاسم', 'noun', 'vocabulary', 13),
  ('00000000-0000-4000-a000-0000659a8b91', 'wie', 'how — كيف', 'adverb', 'vocabulary', 14),
  ('00000000-0000-4000-a000-0000659a8b91', 'freuen', 'to be pleased — يسر', 'verb', 'vocabulary', 15),
  ('00000000-0000-4000-a000-0000659a8b91', 'Ich lerne Deutsch.', 'I am learning German.', 'Präsens der regelmäßigen Verben (Present Tense)', 'grammar', 16),
  ('00000000-0000-4000-a000-0000659a8b91', 'Du wohnst in Berlin.', 'You live in Berlin.', 'Präsens der regelmäßigen Verben (Present Tense)', 'grammar', 17),
  ('00000000-0000-4000-a000-0000659a8b91', 'Er arbeitet bei Siemens.', 'He works at Siemens.', 'Präsens der regelmäßigen Verben (Present Tense)', 'grammar', 18);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, french_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-0000659a8b91', 'A1 Abschlusstest — Leseübung', 'Nächste Woche mache ich eine Reise nach München. Ich fahre mit dem Zug. Ich kaufe ein Ticket am Bahnhof. Der Zug fährt um 8 Uhr ab. Die Fahrt dauert 4 Stunden. In München besuche ich meine Tante. Sie wohnt in der Nähe des Hauptbahnhofs. Wir gehen zusammen in ein Restaurant. Dann besuchen wir das Deutsche Museum. Die Reise wird schön.', 'Next week I am taking a trip to Munich. I am going by train. I buy a ticket at the train station. The train departs at 8 o''clock. The journey takes 4 hours. In Munich I visit my aunt. She lives near the main train station. We go to a restaurant together. Then we visit the German Museum. The trip will be nice.', 'الأسبوع القادم سأسافر إلى ميونخ. سأذهب بالقطار. أشتري تذكرة من محطة القطار. القطار يغادر في الساعة 8. الرحلة تستغرق 4 ساعات. في ميونخ أزور عمتي. تسكن بالقرب من المحطة الرئيسية. نذهب معاً إلى مطعم. ثم نزور المتحف الألماني. الرحلة ستكون جميلة.', NULL, 60, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, french_translation, duration_seconds, speaker_count, scenario) values
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

[Mitarbeiter]: إذاً التكلفة 73.50 يورو. القطار يغادر في الساعة 10.', '[Kunde]: 

[Mitarbeiter]: 

[Kunde]: 

[Mitarbeiter]: 

[Kunde]: 

[Mitarbeiter]: ', 72, 2, 'Reisen und Freizeit');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-0000659a8b91', '🔊 Sprechen: A1 Abschlusstest', 'Roleplay: You are in a German café. Introduce yourself and talk about Level Test. Your partner (AI) will respond naturally.', 'Level Test', ARRAY['Use complete sentences — not single words','Pause between phrases, not between words','Don''t translate from Arabic word-for-word']::text[], ARRAY['die Reise','der Zug','das Ticket','der Bahnhof','der Flughafen','das Hotel','der Pass','der Koffer']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-0000659a8b91', '✏️ Schreiben: A1 Abschlusstest', 'Write an email to a German friend about "Level Test". Tell them what you learned, what you found interesting, and ask two questions about their experience with this topic. Use at least 8 vocabulary words from this lesson. Sign off naturally ("Viele Grüße", "Liebe Grüße").', ARRAY['Start with "Hallo" or "Liebe/r"','Keep sentences short (Subject-Verb-Object)','End with a friendly farewell']::text[], ARRAY['die Reise','der Zug','das Ticket','der Bahnhof','der Flughafen','das Hotel','der Pass','der Koffer']::text[], ARRAY['Sentence structure','Vocabulary usage']::text[], 50, 100, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000659a8b91', 'A1 Abschlusstest — Roleplay', 'Level Test', 'Student', 'Teacher', 'Practice conversation about Level Test', 'Hallo! Lass uns über dieses Thema sprechen.', 'beginner', 1, ARRAY['die Reise','der Zug','das Ticket','der Bahnhof','der Flughafen','das Hotel','der Pass','der Koffer']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000659a8b91', 'A1 Abschlusstest — Advanced Roleplay', 'Level Test', 'Customer', 'Assistant', 'Extended conversation about Level Test', 'Guten Tag! Wie kann ich Ihnen helfen?', 'beginner', 2, ARRAY['die Reise','der Zug','das Ticket','der Bahnhof','der Flughafen','das Hotel','der Pass','der Koffer']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-0000659a8b91', 'A1 Abschlusstest — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "A1 Abschlusstest".', 'Creative practice for Level Test', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-0000659a8b91', '📚 Hausaufgabe: A1 Abschlusstest', 'Complete these tasks to reinforce "A1 Abschlusstest".', 'mixed', '[{"description":"Create 10 flashcards from this lesson''s vocabulary — write German on one side, Arabic on the other. Test yourself 3 times."},{"description":"Write 6 sentences about Level Test: 2 statements, 2 questions, 2 negations — all using present_tense."},{"description":"Record yourself reading the dialogue aloud. Listen to the recording and note 3 things to improve."},{"description":"Find 3 real German websites, videos, or articles about Level Test. Note 5 new words you discovered."}]', 50, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-0000659a8b91', '🎯 Great work! In this lesson you learned 150 new words about Level Test. You practiced present_tense — an important grammar topic for A1 level. You read a text, listened to a dialogue, and practiced speaking and writing. Keep going!', '["150 vocabulary items about Level Test","present_tense — grammar explanation and practice","Reading comprehension: text about Level Test","Listening comprehension: dialogue about Level Test","Speaking practice: roleplay/discussion about Level Test","Writing task: text about Level Test"]', '[{"title":"A1 Abschlusstest Review","summary":"present_tense — the main grammar focus. Focus on understanding when to use this structure and forming basic sentences."}]', ARRAY['die Reise (trip)','der Zug (train)','das Ticket (ticket)','der Bahnhof (train station)','der Flughafen (airport)']::text[], ARRAY['Don''t translate from Arabic word-for-word — German has different sentence structure','Learn every noun with its article: NEVER learn "Tisch" alone, always "der Tisch"','Verb always in position 2 in main clauses']::text[], ARRAY['Practice 15-20 minutes daily — consistency beats intensity','Speak out loud: German pronunciation needs muscle memory','Use the new vocabulary within 24 hours or you''ll forget it','Watch German YouTube videos about Level Test for authentic input']::text[]);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000659a8b91', 'Pronunciation: German sounds for "travel"', 'In German, vowels are pure — unlike English diphthongs. The "ch" sound after a, o, u is guttural (like Arabic خ). After e, i, ä, ö, ü it''s soft (like English "huge" without the "u").

Common mistake for Arabic speakers: Arabic speakers tend to over-emphasise consonants. German flows — connect words smoothly (e.g., "Ich habe" becomes /ɪçabə/ not /ɪç ˈhaːbə/).', '[]', '[{"german":"die Reise","arabic":"","english":"","phonetic":""},{"german":"der Zug","arabic":"","english":"","phonetic":""},{"german":"das Ticket","arabic":"","english":"","phonetic":""},{"german":"der Bahnhof","arabic":"","english":"","phonetic":""}]', '[]', 10);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000659a8b91', 'translation', 'Translate to German: "I use the word "trip" in a sentence about Level Test."', '[]', 'Die Reise nach München war schön.', 'Use die  "die Reise" with the correct present_tense form.', 1, 40);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000659a8b91', 'translation', 'Translate to German: "I use the word "train" in a sentence about Level Test."', '[]', 'Der Zug kommt um 10 Uhr an.', 'Use der  "der Zug" with the correct present_tense form.', 1, 41);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000659a8b91', 'translation', 'Translate to German: "I use the word "ticket" in a sentence about Level Test."', '[]', 'Ein Ticket nach Berlin, bitte.', 'Use das  "das Ticket" with the correct present_tense form.', 1, 42);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000659a8b91', 'Culture: 🇩🇪 Deutsche Kultur: Level Test', 'In Germany, Level Test is approached with typical German directness and efficiency. Germans value clarity over small talk. When discussing Level Test, expect honest feedback and straightforward questions. This is not rudeness — it''s cultural. Arabic speakers often find this too direct at first, but you''ll appreciate it once you get used to it.

في ألمانيا، يتم التعامل مع Level Test بوضوح وكفاءة. الألمان يقدرون الوضوح أكثر من المجاملات. لا تعتبر هذه وقاحة - إنها ثقافة مختلفة.', '["Tip: Always use \"Sie\" (formal) with strangers and colleagues","Tip: Germans appreciate punctuality — arrive 5 minutes early","Tip: Direct feedback is a sign of respect, not criticism","Tip: Prepare factual arguments, not emotional appeals"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000659a8b91', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Using \"reisen\" instead of \"fahren\" for specific trips","correction":"reisen = general travel, fahren = specific journey by vehicle","explanation":"Arabic \"saafara\" covers both. German distinguishes between abstract and concrete travel."},{"mistake":"Using the wrong article (der/die/das) for nouns","correction":"Learn each noun with its article as one piece","explanation":"Arabic has no articles for nouns without gender connection"}]', 30);

end $$;
