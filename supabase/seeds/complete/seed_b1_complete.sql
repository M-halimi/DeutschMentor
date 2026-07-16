-- ============================================================================
-- COMPLETE CURRICULUM SEED — Level B1 (Intermediate)
-- Generated for 6 modules, 32 lessons
-- ============================================================================

do $$
declare
  m_id uuid;
  l_id uuid;
begin

  -- Level: B1 — Intermediate
  insert into public.course_levels (id, title, description, image_url, color, order_index)
  values ('B1', 'Intermediate', 'Handle most everyday situations. Express opinions, talk about experiences, and manage simple work conversations.', NULL, 'from-yellow-500 to-orange-600', 3)
  on conflict (id) do nothing;

  -- Module 1: Alltag und Gesellschaft
  insert into public.course_modules (id, level_id, title, description, objectives, order_index, estimated_hours, is_published)
  values ('00000000-0000-4000-a000-000039c2eadf', 'B1', 'Alltag und Gesellschaft', 'Talk about daily life, social interactions, and society.', '["Use Präteritum for sein, haben, wissen","Use Nebensätze with weil, da, obwohl","Use comparative and superlative forms","Make appointments and invitations","Discuss social topics"]', 1, 5, true)
  on conflict (id) do nothing;

  -- Lesson 1: Tagesablauf und Alltag (L-B1-01-01)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-000032868d70', '00000000-0000-4000-a000-000039c2eadf', 'Tagesablauf und Alltag', 'Detailed daily routine vocabulary and time management.', 'Daily Life', 'vocabulary', '["Understand and use vocabulary related to Daily Life","Apply present_tense correctly","Read and comprehend a text about Daily Life","Listen and understand a dialogue about Daily Life","Speak about Daily Life in simple sentences","Write a short text about Daily Life"]', 45, 1, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-000032868d70', 'aufstehen', 'يستيقظ', 'to get up', NULL, NULL, 'verb', 'Ich stehe um 6 Uhr auf.', 'I get up at 6 o''clock.', 'A1', 1),
  ('00000000-0000-4000-a000-000032868d70', 'frühstücken', 'يتناول الفطور', 'to have breakfast', NULL, NULL, 'verb', 'Ich frühstücke um 7 Uhr.', 'I have breakfast at 7 o''clock.', 'A1', 2),
  ('00000000-0000-4000-a000-000032868d70', 'arbeiten', 'يعمل', 'to work', NULL, NULL, 'verb', 'Ich arbeite in einem Büro.', 'I work in an office.', 'A1', 3),
  ('00000000-0000-4000-a000-000032868d70', 'der Morgen', 'الصباح', 'morning', 'der', NULL, 'noun', 'Am Morgen dusche ich.', 'In the morning I shower.', 'A1', 4),
  ('00000000-0000-4000-a000-000032868d70', 'der Abend', 'المساء', 'evening', 'der', NULL, 'noun', 'Am Abend lese ich ein Buch.', 'In the evening I read a book.', 'A1', 5),
  ('00000000-0000-4000-a000-000032868d70', 'schlafen', 'ينام', 'to sleep', NULL, NULL, 'verb', 'Ich schlafe um 22 Uhr.', 'I sleep at 10 PM.', 'A1', 6),
  ('00000000-0000-4000-a000-000032868d70', 'die Arbeit', 'العمل', 'work', 'die', NULL, 'noun', 'Die Arbeit beginnt um 8 Uhr.', 'Work starts at 8 o''clock.', 'A1', 7),
  ('00000000-0000-4000-a000-000032868d70', 'gehen', 'يذهب', 'to go', NULL, NULL, 'verb', 'Ich gehe zur Arbeit.', 'I go to work.', 'A1', 8),
  ('00000000-0000-4000-a000-000032868d70', 'die Uhr', 'الساعة', 'clock', 'die', 'die Uhren', 'noun', 'Die Uhr zeigt 7 Uhr.', 'The clock shows 7 o''clock.', 'A1', 9),
  ('00000000-0000-4000-a000-000032868d70', 'die Zeit', 'الوقت', 'time', 'die', NULL, 'noun', 'Ich habe keine Zeit.', 'I have no time.', 'A1', 10),
  ('00000000-0000-4000-a000-000032868d70', 'der Beruf', 'المهنة', 'profession', 'der', 'die Berufe', 'noun', 'Was ist dein Beruf?', 'What is your profession?', 'A1', 11),
  ('00000000-0000-4000-a000-000032868d70', 'die Firma', 'الشركة', 'company', 'die', 'die Firmen', 'noun', 'Die Firma ist in Berlin.', 'The company is in Berlin.', 'A1', 12),
  ('00000000-0000-4000-a000-000032868d70', 'der Kollege', 'الزميل', 'colleague', 'der', 'die Kollegen', 'noun', 'Mein Kollege hilft mir.', 'My colleague helps me.', 'A1', 13),
  ('00000000-0000-4000-a000-000032868d70', 'das Büro', 'المكتب', 'office', 'das', 'die Büros', 'noun', 'Das Büro ist im dritten Stock.', 'The office is on the third floor.', 'A1', 14),
  ('00000000-0000-4000-a000-000032868d70', 'die Besprechung', 'الاجتماع', 'meeting', 'die', 'die Besprechungen', 'noun', 'Wir haben eine Besprechung.', 'We have a meeting.', 'B1', 15),
  ('00000000-0000-4000-a000-000032868d70', 'der Chef', 'المدير', 'boss', 'der', 'die Chefs', 'noun', 'Mein Chef ist freundlich.', 'My boss is friendly.', 'A1', 16),
  ('00000000-0000-4000-a000-000032868d70', 'das Gehalt', 'الراتب', 'salary', 'das', 'die Gehälter', 'noun', 'Das Gehalt ist gut.', 'The salary is good.', 'B1', 17),
  ('00000000-0000-4000-a000-000032868d70', 'die Stelle', 'الوظيفة', 'position', 'die', 'die Stellen', 'noun', 'Ich suche eine neue Stelle.', 'I am looking for a new position.', 'B1', 18),
  ('00000000-0000-4000-a000-000032868d70', 'die Schule', 'المدرسة', 'school', 'die', 'die Schulen', 'noun', 'Die Kinder gehen zur Schule.', 'The children go to school.', 'A1', 19),
  ('00000000-0000-4000-a000-000032868d70', 'der Lehrer', 'المعلم', 'teacher', 'der', 'die Lehrer', 'noun', 'Der Lehrer erklärt die Grammatik.', 'The teacher explains the grammar.', 'A1', 20),
  ('00000000-0000-4000-a000-000032868d70', 'der Student', 'الطالب', 'student', 'der', 'die Studenten', 'noun', 'Der Student lernt Deutsch.', 'The student learns German.', 'A1', 21),
  ('00000000-0000-4000-a000-000032868d70', 'die Universität', 'الجامعة', 'university', 'die', 'die Universitäten', 'noun', 'Die Universität ist alt.', 'The university is old.', 'B1', 22),
  ('00000000-0000-4000-a000-000032868d70', 'der Kurs', 'الدورة', 'course', 'der', 'die Kurse', 'noun', 'Der Kurs kostet 200 Euro.', 'The course costs 200 euros.', 'A2', 23),
  ('00000000-0000-4000-a000-000032868d70', 'die Prüfung', 'الامتحان', 'exam', 'die', 'die Prüfungen', 'noun', 'Die Prüfung ist schwer.', 'The exam is difficult.', 'B1', 24),
  ('00000000-0000-4000-a000-000032868d70', 'das Studium', 'الدراسة الجامعية', 'studies', 'das', NULL, 'noun', 'Mein Studium dauert vier Jahre.', 'My studies take four years.', 'B1', 25),
  ('00000000-0000-4000-a000-000032868d70', 'lernen', 'يتعلم', 'to learn', NULL, NULL, 'verb', 'Ich lerne Deutsch.', 'I learn German.', 'A1', 26),
  ('00000000-0000-4000-a000-000032868d70', 'die Zeitung', 'الجريدة', 'newspaper', 'die', 'die Zeitungen', 'noun', 'Ich lese die Zeitung.', 'I read the newspaper.', 'A2', 27),
  ('00000000-0000-4000-a000-000032868d70', 'das Internet', 'الإنترنت', 'internet', 'das', NULL, 'noun', 'Das Internet ist schnell.', 'The internet is fast.', 'A2', 28),
  ('00000000-0000-4000-a000-000032868d70', 'der Artikel', 'المقال', 'article', 'der', 'die Artikel', 'noun', 'Der Artikel ist interessant.', 'The article is interesting.', 'B1', 29),
  ('00000000-0000-4000-a000-000032868d70', 'die Nachricht', 'الخبر', 'news', 'die', 'die Nachrichten', 'noun', 'Ich sehe die Nachrichten.', 'I watch the news.', 'A2', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000032868d70', 'Präsens der regelmäßigen Verben (Present Tense) / المضارع للأفعال المنتظمة', 'In German, regular verbs follow a consistent pattern. The infinitive ends in -en. Remove the -en and add the personal endings: ich -e, du -st, er/sie/es -t, wir -en, ihr -t, sie/Sie -en. For most Arabic speakers, this is easier than Arabic verb conjugation because German has fewer forms.', '[{"rule":"ich: stem + e","note":"Ich lerne, ich wohne, ich arbeite"},{"rule":"du: stem + st","note":"Du lernst, du wohnst, du arbeitest"},{"rule":"er/sie/es: stem + t","note":"Er lernt, sie wohnt, es arbeitet"},{"rule":"wir: stem + en","note":"Wir lernen, wir wohnen, wir arbeiten"},{"rule":"ihr: stem + t","note":"Ihr lernt, ihr wohnt, ihr arbeitet"},{"rule":"sie/Sie: stem + en","note":"Sie lernen, Sie wohnen"}]', '[{"german":"Ich lerne Deutsch.","arabic":"أنا أتعلم الألمانية.","english":"I am learning German."},{"german":"Du wohnst in Berlin.","arabic":"أنت تسكن في برلين.","english":"You live in Berlin."},{"german":"Er arbeitet bei Siemens.","arabic":"هو يعمل في سيمنز.","english":"He works at Siemens."}]', '[{"mistake":"Ich lernen Deutsch","correction":"Ich lerne Deutsch","explanation":"After \"ich\" we use the stem + e, not the infinitive."},{"mistake":"Er lerne Deutsch","correction":"Er lernt Deutsch","explanation":"After \"er/sie/es\" we add -t, not -e."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000032868d70', 'multiple_choice', 'What does "aufstehen" mean?', '["The","A","This","That"]', 'The', 'This is a basic vocabulary item.', 1, 1),
  ('00000000-0000-4000-a000-000032868d70', 'fill_gap', 'Complete with the correct form.', '["Option 1","Option 2","Option 3"]', 'Option 1', 'Practice grammar in context.', 1, 2),
  ('00000000-0000-4000-a000-000032868d70', 'translation', 'Translate: "I learn German."', '["Ich lerne Deutsch.","Ich lerne Englisch.","Ich lerne Spanisch."]', 'Ich lerne Deutsch.', 'Ich = I, lerne = learn/learning, Deutsch = German.', 2, 3),
  ('00000000-0000-4000-a000-000032868d70', 'sentence_order', 'Order the sentence.', '[]', 'Ich lerne Deutsch.', 'Subject + verb + object in German.', 2, 4),
  ('00000000-0000-4000-a000-000032868d70', 'matching', 'Match the words with their meanings.', '["Match pairs correctly"]', 'Correct pairs', 'Test your vocabulary knowledge.', 2, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-000032868d70', 'multiple_choice', 'What is the main topic of this lesson?', '["Daily Life","Sports","Music","Travel"]', 'Daily Life', 1, 1),
  ('00000000-0000-4000-a000-000032868d70', 'true_false', 'This lesson teaches vocabulary about Daily Life.', '["True","False"]', 'True', 1, 2),
  ('00000000-0000-4000-a000-000032868d70', 'true_false', 'German word order is always the same as English.', '["True","False"]', 'False', 1, 3),
  ('00000000-0000-4000-a000-000032868d70', 'multiple_choice', 'How do you say "please" in German?', '["Danke","Bitte","Tschüss","Hallo"]', 'Bitte', 1, 4),
  ('00000000-0000-4000-a000-000032868d70', 'multiple_choice', 'Which article is feminine?', '["der","die","das","den"]', 'die', 1, 5),
  ('00000000-0000-4000-a000-000032868d70', 'fill_blank', 'Ich ___ (to be) Student.', '["bin","bist","ist","sind"]', 'bin', 1, 6),
  ('00000000-0000-4000-a000-000032868d70', 'multiple_choice', 'What is the correct word order?', '["Ich lerne Deutsch","Ich Deutsch lerne","Lerne ich Deutsch","Deutsch ich lerne"]', 'Ich lerne Deutsch', 1, 7),
  ('00000000-0000-4000-a000-000032868d70', 'true_false', 'All German nouns are capitalized.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-000032868d70', 'multiple_choice', 'How do you say "thank you" in German?', '["Bitte","Danke","Tschüss","Hallo"]', 'Danke', 1, 9),
  ('00000000-0000-4000-a000-000032868d70', 'fill_blank', 'Wo ___ du? (to live)', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 1, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-000032868d70', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Alltag und Gesellschaft', 'formal', false, 1),
  ('00000000-0000-4000-a000-000032868d70', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Alltag und Gesellschaft', 'informal', false, 2),
  ('00000000-0000-4000-a000-000032868d70', 'Bitte!', 'Please!', 'من فضلك!', 'Used in Alltag und Gesellschaft', 'neutral', false, 3),
  ('00000000-0000-4000-a000-000032868d70', 'Danke!', 'Thanks!', 'شكراً!', 'Used in Alltag und Gesellschaft', 'neutral', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-000032868d70', 'Hallo', 'Hello', 'Greeting', 'expression', 1),
  ('00000000-0000-4000-a000-000032868d70', 'Danke', 'Thanks', 'Politeness', 'expression', 2),
  ('00000000-0000-4000-a000-000032868d70', 'Bitte', 'Please', 'Politeness', 'expression', 3),
  ('00000000-0000-4000-a000-000032868d70', 'Tschüss', 'Bye', 'Farewell', 'expression', 4);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-000032868d70', 'Tagesablauf und Alltag — Leseübung', 'Mein Tagesablauf beginnt um 6 Uhr. Ich stehe auf und dusche. Dann frühstücke ich. Ich esse Brot mit Käse und trinke Kaffee. Um 7 Uhr gehe ich zur Arbeit. Ich arbeite in einem Büro. Um 12 Uhr esse ich zu Mittag. Nach der Arbeit gehe ich nach Hause. Am Abend sehe ich fern oder lese ein Buch. Um 22 Uhr gehe ich ins Bett. Das ist mein Tag.', 'My daily routine starts at 6 o''clock. I get up and shower. Then I have breakfast. I eat bread with cheese and drink coffee. At 7 o''clock I go to work. I work in an office. At 12 o''clock I have lunch. After work I go home. In the evening I watch TV or read a book. At 10 PM I go to bed. That''s my day.', 'روتيني اليومي يبدأ في الساعة 6. أستيقظ وأستحم. ثم أتناول الفطور. آكل خبزاً مع الجبن وأشرب قهوة. في الساعة 7 أذهب إلى العمل. أعمل في مكتب. في الساعة 12 أتناول الغداء. بعد العمل أعود إلى المنزل. في المساء أشاهد التلفاز أو أقرأ كتاباً. في الساعة 10 أذهب إلى النوم. هذا هو يومي.', 68, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, duration_seconds, speaker_count, scenario) values
  ('00000000-0000-4000-a000-000032868d70', 'Tagesablauf und Alltag — Hörverständnis', '[Lukas]: Hey Marie, wann stehst du normalerweise auf?

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

[Marie]: ألتقي بأصدقائي أو أقرأ كتاباً. في الساعة 10 أذهب إلى النوم.', 72, 2, 'Alltag und Gesellschaft');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-000032868d70', 'Speaking: Tagesablauf und Alltag', 'Practice talking about Daily Life. Answer questions and have a simple conversation.', 'Daily Life', ARRAY['Use full sentences','Speak clearly','Don''t worry about mistakes']::text[], ARRAY['aufstehen','frühstücken','arbeiten','der Morgen','der Abend']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-000032868d70', 'Writing: Tagesablauf und Alltag', 'Write a short text about Daily Life. Use at least 5 vocabulary words from this lesson.', ARRAY['Start with a greeting','Use the vocabulary from this lesson','Check your grammar']::text[], ARRAY['aufstehen','frühstücken','arbeiten']::text[], '["Sentence structure","Vocabulary usage"]', 50, 150, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000032868d70', 'Tagesablauf und Alltag — Roleplay', 'Daily Life', 'Student', 'Teacher', 'Practice conversation about Daily Life', 'Hallo! Lass uns über dieses Thema sprechen.', 'intermediate', 1, ARRAY['aufstehen','frühstücken','arbeiten','der Morgen','der Abend','schlafen','die Arbeit','gehen']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000032868d70', 'Tagesablauf und Alltag — Advanced Roleplay', 'Daily Life', 'Customer', 'Assistant', 'Extended conversation about Daily Life', 'Guten Tag! Wie kann ich Ihnen helfen?', 'intermediate', 2, ARRAY['aufstehen','frühstücken','arbeiten','der Morgen','der Abend','schlafen','die Arbeit','gehen']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-000032868d70', 'Tagesablauf und Alltag — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Tagesablauf und Alltag".', 'Creative practice for Daily Life', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-000032868d70', 'Homework: Tagesablauf und Alltag', 'Complete these tasks to reinforce "Tagesablauf und Alltag".', 'mixed', '[{"description":"Review all vocabulary from this lesson"},{"description":"Write 5 sentences using the grammar structure"},{"description":"Practice the dialogue aloud"}]', 35, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-000032868d70', 'In this lesson you learned about Daily Life. You practiced vocabulary related to daily_routine and grammar structure present_tense.', '["Mastered vocabulary about Daily Life","Applied present_tense correctly","Read and understood a text about Daily Life","Practiced speaking about Daily Life"]', '[{"title":"Tagesablauf und Alltag Review","summary":"present_tense — the main grammar focus of this lesson."}]', ARRAY['Daily Life core vocabulary','daily_routine key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)','Verb is always in second position']::text[], ARRAY['Practice 15-20 minutes daily','Use new vocabulary in real sentences','Speak out loud to improve pronunciation']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000032868d70', 'translation', 'Translate to German: "This is a translation exercise."', '[]', 'Das ist eine Übersetzungsübung.', 'Use "das ist" for "this is"', 1, 40);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000032868d70', 'Culture: Daily Life in German-Speaking Countries', 'Learn how Daily Life is approached in German culture.

تعلم كيف يتم التعامل مع Daily Life في الثقافة الألمانية.', '["Tip: Be direct and polite","Tip: Use formal language with strangers","Tip: Respect punctuality"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000032868d70', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Common error for Arabic speakers","correction":"Correct version","explanation":"Explanation of the error"}]', 30);

  -- Lesson 2: Gesellschaft und Zusammenleben (L-B1-01-02)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-000032868d6f', '00000000-0000-4000-a000-000039c2eadf', 'Gesellschaft und Zusammenleben', 'Talk about society, community, and social life.', 'Society & Community', 'vocabulary', '["Understand and use vocabulary related to Society & Community","Apply present_tense correctly","Read and comprehend a text about Society & Community","Listen and understand a dialogue about Society & Community","Speak about Society & Community in simple sentences","Write a short text about Society & Community"]', 45, 2, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-000032868d6f', 'die Gesellschaft', 'المجتمع', 'society', 'die', NULL, 'noun', 'Die Gesellschaft verändert sich.', 'Society is changing.', 'B1', 1),
  ('00000000-0000-4000-a000-000032868d6f', 'die Politik', 'السياسة', 'politics', 'die', NULL, 'noun', 'Politik ist ein wichtiges Thema.', 'Politics is an important topic.', 'B1', 2),
  ('00000000-0000-4000-a000-000032868d6f', 'die Integration', 'الاندماج', 'integration', 'die', NULL, 'noun', 'Integration ist wichtig.', 'Integration is important.', 'B1', 3),
  ('00000000-0000-4000-a000-000032868d6f', 'die Kultur', 'الثقافة', 'culture', 'die', NULL, 'noun', 'Die deutsche Kultur ist vielfältig.', 'German culture is diverse.', 'A2', 4),
  ('00000000-0000-4000-a000-000032868d6f', 'der Bürger', 'المواطن', 'citizen', 'der', 'die Bürger', 'noun', 'Die Bürger wählen.', 'The citizens vote.', 'B1', 5),
  ('00000000-0000-4000-a000-000032868d6f', 'die Freiheit', 'الحرية', 'freedom', 'die', NULL, 'noun', 'Freiheit ist ein Grundrecht.', 'Freedom is a basic right.', 'B1', 6),
  ('00000000-0000-4000-a000-000032868d6f', 'die Gleichberechtigung', 'المساواة', 'equality', 'die', NULL, 'noun', 'Gleichberechtigung für alle.', 'Equality for all.', 'B2', 7),
  ('00000000-0000-4000-a000-000032868d6f', 'die Verantwortung', 'المسؤولية', 'responsibility', 'die', NULL, 'noun', 'Das ist deine Verantwortung.', 'That is your responsibility.', 'B1', 8),
  ('00000000-0000-4000-a000-000032868d6f', 'der Beruf', 'المهنة', 'profession', 'der', 'die Berufe', 'noun', 'Was ist dein Beruf?', 'What is your profession?', 'A1', 9),
  ('00000000-0000-4000-a000-000032868d6f', 'die Firma', 'الشركة', 'company', 'die', 'die Firmen', 'noun', 'Die Firma ist in Berlin.', 'The company is in Berlin.', 'A1', 10),
  ('00000000-0000-4000-a000-000032868d6f', 'der Kollege', 'الزميل', 'colleague', 'der', 'die Kollegen', 'noun', 'Mein Kollege hilft mir.', 'My colleague helps me.', 'A1', 11),
  ('00000000-0000-4000-a000-000032868d6f', 'das Büro', 'المكتب', 'office', 'das', 'die Büros', 'noun', 'Das Büro ist im dritten Stock.', 'The office is on the third floor.', 'A1', 12),
  ('00000000-0000-4000-a000-000032868d6f', 'die Besprechung', 'الاجتماع', 'meeting', 'die', 'die Besprechungen', 'noun', 'Wir haben eine Besprechung.', 'We have a meeting.', 'B1', 13),
  ('00000000-0000-4000-a000-000032868d6f', 'der Chef', 'المدير', 'boss', 'der', 'die Chefs', 'noun', 'Mein Chef ist freundlich.', 'My boss is friendly.', 'A1', 14),
  ('00000000-0000-4000-a000-000032868d6f', 'das Gehalt', 'الراتب', 'salary', 'das', 'die Gehälter', 'noun', 'Das Gehalt ist gut.', 'The salary is good.', 'B1', 15),
  ('00000000-0000-4000-a000-000032868d6f', 'die Stelle', 'الوظيفة', 'position', 'die', 'die Stellen', 'noun', 'Ich suche eine neue Stelle.', 'I am looking for a new position.', 'B1', 16),
  ('00000000-0000-4000-a000-000032868d6f', 'die Schule', 'المدرسة', 'school', 'die', 'die Schulen', 'noun', 'Die Kinder gehen zur Schule.', 'The children go to school.', 'A1', 17),
  ('00000000-0000-4000-a000-000032868d6f', 'der Lehrer', 'المعلم', 'teacher', 'der', 'die Lehrer', 'noun', 'Der Lehrer erklärt die Grammatik.', 'The teacher explains the grammar.', 'A1', 18),
  ('00000000-0000-4000-a000-000032868d6f', 'der Student', 'الطالب', 'student', 'der', 'die Studenten', 'noun', 'Der Student lernt Deutsch.', 'The student learns German.', 'A1', 19),
  ('00000000-0000-4000-a000-000032868d6f', 'die Universität', 'الجامعة', 'university', 'die', 'die Universitäten', 'noun', 'Die Universität ist alt.', 'The university is old.', 'B1', 20),
  ('00000000-0000-4000-a000-000032868d6f', 'der Kurs', 'الدورة', 'course', 'der', 'die Kurse', 'noun', 'Der Kurs kostet 200 Euro.', 'The course costs 200 euros.', 'A2', 21),
  ('00000000-0000-4000-a000-000032868d6f', 'die Prüfung', 'الامتحان', 'exam', 'die', 'die Prüfungen', 'noun', 'Die Prüfung ist schwer.', 'The exam is difficult.', 'B1', 22),
  ('00000000-0000-4000-a000-000032868d6f', 'das Studium', 'الدراسة الجامعية', 'studies', 'das', NULL, 'noun', 'Mein Studium dauert vier Jahre.', 'My studies take four years.', 'B1', 23),
  ('00000000-0000-4000-a000-000032868d6f', 'lernen', 'يتعلم', 'to learn', NULL, NULL, 'verb', 'Ich lerne Deutsch.', 'I learn German.', 'A1', 24),
  ('00000000-0000-4000-a000-000032868d6f', 'die Zeitung', 'الجريدة', 'newspaper', 'die', 'die Zeitungen', 'noun', 'Ich lese die Zeitung.', 'I read the newspaper.', 'A2', 25),
  ('00000000-0000-4000-a000-000032868d6f', 'das Internet', 'الإنترنت', 'internet', 'das', NULL, 'noun', 'Das Internet ist schnell.', 'The internet is fast.', 'A2', 26),
  ('00000000-0000-4000-a000-000032868d6f', 'der Artikel', 'المقال', 'article', 'der', 'die Artikel', 'noun', 'Der Artikel ist interessant.', 'The article is interesting.', 'B1', 27),
  ('00000000-0000-4000-a000-000032868d6f', 'die Nachricht', 'الخبر', 'news', 'die', 'die Nachrichten', 'noun', 'Ich sehe die Nachrichten.', 'I watch the news.', 'A2', 28),
  ('00000000-0000-4000-a000-000032868d6f', 'das Radio', 'الراديو', 'radio', 'das', 'die Radios', 'noun', 'Ich höre Radio.', 'I listen to the radio.', 'A2', 29),
  ('00000000-0000-4000-a000-000032868d6f', 'das Fernsehen', 'التلفاز', 'television', 'das', NULL, 'noun', 'Das Fernsehen läuft.', 'The television is on.', 'A2', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000032868d6f', 'Präsens der regelmäßigen Verben (Present Tense) / المضارع للأفعال المنتظمة', 'In German, regular verbs follow a consistent pattern. The infinitive ends in -en. Remove the -en and add the personal endings: ich -e, du -st, er/sie/es -t, wir -en, ihr -t, sie/Sie -en. For most Arabic speakers, this is easier than Arabic verb conjugation because German has fewer forms.', '[{"rule":"ich: stem + e","note":"Ich lerne, ich wohne, ich arbeite"},{"rule":"du: stem + st","note":"Du lernst, du wohnst, du arbeitest"},{"rule":"er/sie/es: stem + t","note":"Er lernt, sie wohnt, es arbeitet"},{"rule":"wir: stem + en","note":"Wir lernen, wir wohnen, wir arbeiten"},{"rule":"ihr: stem + t","note":"Ihr lernt, ihr wohnt, ihr arbeitet"},{"rule":"sie/Sie: stem + en","note":"Sie lernen, Sie wohnen"}]', '[{"german":"Ich lerne Deutsch.","arabic":"أنا أتعلم الألمانية.","english":"I am learning German."},{"german":"Du wohnst in Berlin.","arabic":"أنت تسكن في برلين.","english":"You live in Berlin."},{"german":"Er arbeitet bei Siemens.","arabic":"هو يعمل في سيمنز.","english":"He works at Siemens."}]', '[{"mistake":"Ich lernen Deutsch","correction":"Ich lerne Deutsch","explanation":"After \"ich\" we use the stem + e, not the infinitive."},{"mistake":"Er lerne Deutsch","correction":"Er lernt Deutsch","explanation":"After \"er/sie/es\" we add -t, not -e."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000032868d6f', 'multiple_choice', 'What does "die Gesellschaft" mean?', '["The","A","This","That"]', 'The', 'This is a basic vocabulary item.', 1, 1),
  ('00000000-0000-4000-a000-000032868d6f', 'fill_gap', 'Complete with the correct form.', '["Option 1","Option 2","Option 3"]', 'Option 1', 'Practice grammar in context.', 1, 2),
  ('00000000-0000-4000-a000-000032868d6f', 'translation', 'Translate: "I learn German."', '["Ich lerne Deutsch.","Ich lerne Englisch.","Ich lerne Spanisch."]', 'Ich lerne Deutsch.', 'Ich = I, lerne = learn/learning, Deutsch = German.', 2, 3),
  ('00000000-0000-4000-a000-000032868d6f', 'sentence_order', 'Order the sentence.', '[]', 'Ich lerne Deutsch.', 'Subject + verb + object in German.', 2, 4),
  ('00000000-0000-4000-a000-000032868d6f', 'matching', 'Match the words with their meanings.', '["Match pairs correctly"]', 'Correct pairs', 'Test your vocabulary knowledge.', 2, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-000032868d6f', 'multiple_choice', 'What is the main topic of this lesson?', '["Society & Community","Sports","Music","Travel"]', 'Society & Community', 1, 1),
  ('00000000-0000-4000-a000-000032868d6f', 'true_false', 'This lesson teaches vocabulary about Society & Community.', '["True","False"]', 'True', 1, 2),
  ('00000000-0000-4000-a000-000032868d6f', 'true_false', 'German word order is always the same as English.', '["True","False"]', 'False', 1, 3),
  ('00000000-0000-4000-a000-000032868d6f', 'multiple_choice', 'How do you say "please" in German?', '["Danke","Bitte","Tschüss","Hallo"]', 'Bitte', 1, 4),
  ('00000000-0000-4000-a000-000032868d6f', 'multiple_choice', 'Which article is feminine?', '["der","die","das","den"]', 'die', 1, 5),
  ('00000000-0000-4000-a000-000032868d6f', 'fill_blank', 'Ich ___ (to be) Student.', '["bin","bist","ist","sind"]', 'bin', 1, 6),
  ('00000000-0000-4000-a000-000032868d6f', 'multiple_choice', 'What is the correct word order?', '["Ich lerne Deutsch","Ich Deutsch lerne","Lerne ich Deutsch","Deutsch ich lerne"]', 'Ich lerne Deutsch', 1, 7),
  ('00000000-0000-4000-a000-000032868d6f', 'true_false', 'All German nouns are capitalized.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-000032868d6f', 'multiple_choice', 'How do you say "thank you" in German?', '["Bitte","Danke","Tschüss","Hallo"]', 'Danke', 1, 9),
  ('00000000-0000-4000-a000-000032868d6f', 'fill_blank', 'Wo ___ du? (to live)', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 1, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-000032868d6f', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Alltag und Gesellschaft', 'formal', false, 1),
  ('00000000-0000-4000-a000-000032868d6f', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Alltag und Gesellschaft', 'informal', false, 2),
  ('00000000-0000-4000-a000-000032868d6f', 'Bitte!', 'Please!', 'من فضلك!', 'Used in Alltag und Gesellschaft', 'neutral', false, 3),
  ('00000000-0000-4000-a000-000032868d6f', 'Danke!', 'Thanks!', 'شكراً!', 'Used in Alltag und Gesellschaft', 'neutral', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-000032868d6f', 'Hallo', 'Hello', 'Greeting', 'expression', 1),
  ('00000000-0000-4000-a000-000032868d6f', 'Danke', 'Thanks', 'Politeness', 'expression', 2),
  ('00000000-0000-4000-a000-000032868d6f', 'Bitte', 'Please', 'Politeness', 'expression', 3),
  ('00000000-0000-4000-a000-000032868d6f', 'Tschüss', 'Bye', 'Farewell', 'expression', 4);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-000032868d6f', 'Gesellschaft und Zusammenleben — Leseübung', 'Die deutsche Gesellschaft ist vielfältig und multikulturell. In den großen Städten wie Berlin, München oder Hamburg leben Menschen aus über 190 Nationen zusammen. Integration ist ein wichtiges Thema. Viele Menschen mit Migrationshintergrund haben sich erfolgreich integriert und tragen zur Gesellschaft bei. Deutschland ist ein Einwanderungsland. Im Jahr 2023 wurden neue Einbürgerungsregeln beschlossen, die den Erwerb der deutschen Staatsbürgerschaft erleichtern sollen.', 'German society is diverse and multicultural. In big cities like Berlin, Munich or Hamburg, people from over 190 nations live together. Integration is an important topic. Many people with a migration background have successfully integrated and contribute to society. Germany is a country of immigration. In 2023, new naturalization rules were passed that aim to make it easier to acquire German citizenship.', 'المجتمع الألماني متنوع ومتعدد الثقافات. في المدن الكبيرة مثل برلين وميونخ وهامبورغ يعيش أناس من أكثر من 190 دولة معاً. الاندماج موضوع مهم. كثير من الأشخاص ذوي خلفية هجرة اندمجوا بنجاح ويساهمون في المجتمع. ألمانيا بلد هجرة. في عام 2023 تم إقرار قواعد تجنيس جديدة تهدف إلى تسهيل الحصول على الجنسية الألمانية.', 60, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, duration_seconds, speaker_count, scenario) values
  ('00000000-0000-4000-a000-000032868d6f', 'Gesellschaft und Zusammenleben — Hörverständnis', '[Lehrerin]: Guten Morgen! Heute lernen wir Begrüßungen.

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

[Lehrerin]: ممتاز! إلى الغد!', 72, 2, 'Alltag und Gesellschaft');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-000032868d6f', 'Speaking: Gesellschaft und Zusammenleben', 'Practice talking about Society & Community. Answer questions and have a simple conversation.', 'Society & Community', ARRAY['Use full sentences','Speak clearly','Don''t worry about mistakes']::text[], ARRAY['die Gesellschaft','die Politik','die Integration','die Kultur','der Bürger']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-000032868d6f', 'Writing: Gesellschaft und Zusammenleben', 'Write a short text about Society & Community. Use at least 5 vocabulary words from this lesson.', ARRAY['Start with a greeting','Use the vocabulary from this lesson','Check your grammar']::text[], ARRAY['die Gesellschaft','die Politik','die Integration']::text[], '["Sentence structure","Vocabulary usage"]', 50, 150, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000032868d6f', 'Gesellschaft und Zusammenleben — Roleplay', 'Society & Community', 'Student', 'Teacher', 'Practice conversation about Society & Community', 'Hallo! Lass uns über dieses Thema sprechen.', 'intermediate', 1, ARRAY['die Gesellschaft','die Politik','die Integration','die Kultur','der Bürger','die Freiheit','die Gleichberechtigung','die Verantwortung']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000032868d6f', 'Gesellschaft und Zusammenleben — Advanced Roleplay', 'Society & Community', 'Customer', 'Assistant', 'Extended conversation about Society & Community', 'Guten Tag! Wie kann ich Ihnen helfen?', 'intermediate', 2, ARRAY['die Gesellschaft','die Politik','die Integration','die Kultur','der Bürger','die Freiheit','die Gleichberechtigung','die Verantwortung']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-000032868d6f', 'Gesellschaft und Zusammenleben — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Gesellschaft und Zusammenleben".', 'Creative practice for Society & Community', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-000032868d6f', 'Homework: Gesellschaft und Zusammenleben', 'Complete these tasks to reinforce "Gesellschaft und Zusammenleben".', 'mixed', '[{"description":"Review all vocabulary from this lesson"},{"description":"Write 5 sentences using the grammar structure"},{"description":"Practice the dialogue aloud"}]', 35, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-000032868d6f', 'In this lesson you learned about Society & Community. You practiced vocabulary related to society and grammar structure present_tense.', '["Mastered vocabulary about Society & Community","Applied present_tense correctly","Read and understood a text about Society & Community","Practiced speaking about Society & Community"]', '[{"title":"Gesellschaft und Zusammenleben Review","summary":"present_tense — the main grammar focus of this lesson."}]', ARRAY['Society & Community core vocabulary','society key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)','Verb is always in second position']::text[], ARRAY['Practice 15-20 minutes daily','Use new vocabulary in real sentences','Speak out loud to improve pronunciation']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000032868d6f', 'translation', 'Translate to German: "This is a translation exercise."', '[]', 'Das ist eine Übersetzungsübung.', 'Use "das ist" for "this is"', 1, 40);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000032868d6f', 'Culture: Society & Community in German-Speaking Countries', 'Learn how Society & Community is approached in German culture.

تعلم كيف يتم التعامل مع Society & Community في الثقافة الألمانية.', '["Tip: Be direct and polite","Tip: Use formal language with strangers","Tip: Respect punctuality"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000032868d6f', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Common error for Arabic speakers","correction":"Correct version","explanation":"Explanation of the error"}]', 30);

  -- Lesson 3: Präteritum: sein, haben, wissen (L-B1-01-03)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-000032868d6e', '00000000-0000-4000-a000-000039c2eadf', 'Präteritum: sein, haben, wissen', 'Learn the simple past of important irregular verbs.', 'Simple Past', 'grammar', '["Understand and use vocabulary related to Simple Past","Apply present_tense correctly","Read and comprehend a text about Simple Past","Listen and understand a dialogue about Simple Past","Speak about Simple Past in simple sentences","Write a short text about Simple Past"]', 60, 3, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-000032868d6e', 'die Gesellschaft', 'المجتمع', 'society', 'die', NULL, 'noun', 'Die Gesellschaft verändert sich.', 'Society is changing.', 'B1', 1),
  ('00000000-0000-4000-a000-000032868d6e', 'die Politik', 'السياسة', 'politics', 'die', NULL, 'noun', 'Politik ist ein wichtiges Thema.', 'Politics is an important topic.', 'B1', 2),
  ('00000000-0000-4000-a000-000032868d6e', 'die Integration', 'الاندماج', 'integration', 'die', NULL, 'noun', 'Integration ist wichtig.', 'Integration is important.', 'B1', 3),
  ('00000000-0000-4000-a000-000032868d6e', 'die Kultur', 'الثقافة', 'culture', 'die', NULL, 'noun', 'Die deutsche Kultur ist vielfältig.', 'German culture is diverse.', 'A2', 4),
  ('00000000-0000-4000-a000-000032868d6e', 'der Bürger', 'المواطن', 'citizen', 'der', 'die Bürger', 'noun', 'Die Bürger wählen.', 'The citizens vote.', 'B1', 5),
  ('00000000-0000-4000-a000-000032868d6e', 'die Freiheit', 'الحرية', 'freedom', 'die', NULL, 'noun', 'Freiheit ist ein Grundrecht.', 'Freedom is a basic right.', 'B1', 6),
  ('00000000-0000-4000-a000-000032868d6e', 'die Gleichberechtigung', 'المساواة', 'equality', 'die', NULL, 'noun', 'Gleichberechtigung für alle.', 'Equality for all.', 'B2', 7),
  ('00000000-0000-4000-a000-000032868d6e', 'die Verantwortung', 'المسؤولية', 'responsibility', 'die', NULL, 'noun', 'Das ist deine Verantwortung.', 'That is your responsibility.', 'B1', 8),
  ('00000000-0000-4000-a000-000032868d6e', 'der Beruf', 'المهنة', 'profession', 'der', 'die Berufe', 'noun', 'Was ist dein Beruf?', 'What is your profession?', 'A1', 9),
  ('00000000-0000-4000-a000-000032868d6e', 'die Firma', 'الشركة', 'company', 'die', 'die Firmen', 'noun', 'Die Firma ist in Berlin.', 'The company is in Berlin.', 'A1', 10),
  ('00000000-0000-4000-a000-000032868d6e', 'der Kollege', 'الزميل', 'colleague', 'der', 'die Kollegen', 'noun', 'Mein Kollege hilft mir.', 'My colleague helps me.', 'A1', 11),
  ('00000000-0000-4000-a000-000032868d6e', 'das Büro', 'المكتب', 'office', 'das', 'die Büros', 'noun', 'Das Büro ist im dritten Stock.', 'The office is on the third floor.', 'A1', 12),
  ('00000000-0000-4000-a000-000032868d6e', 'die Besprechung', 'الاجتماع', 'meeting', 'die', 'die Besprechungen', 'noun', 'Wir haben eine Besprechung.', 'We have a meeting.', 'B1', 13),
  ('00000000-0000-4000-a000-000032868d6e', 'der Chef', 'المدير', 'boss', 'der', 'die Chefs', 'noun', 'Mein Chef ist freundlich.', 'My boss is friendly.', 'A1', 14),
  ('00000000-0000-4000-a000-000032868d6e', 'das Gehalt', 'الراتب', 'salary', 'das', 'die Gehälter', 'noun', 'Das Gehalt ist gut.', 'The salary is good.', 'B1', 15),
  ('00000000-0000-4000-a000-000032868d6e', 'die Stelle', 'الوظيفة', 'position', 'die', 'die Stellen', 'noun', 'Ich suche eine neue Stelle.', 'I am looking for a new position.', 'B1', 16),
  ('00000000-0000-4000-a000-000032868d6e', 'die Schule', 'المدرسة', 'school', 'die', 'die Schulen', 'noun', 'Die Kinder gehen zur Schule.', 'The children go to school.', 'A1', 17),
  ('00000000-0000-4000-a000-000032868d6e', 'der Lehrer', 'المعلم', 'teacher', 'der', 'die Lehrer', 'noun', 'Der Lehrer erklärt die Grammatik.', 'The teacher explains the grammar.', 'A1', 18),
  ('00000000-0000-4000-a000-000032868d6e', 'der Student', 'الطالب', 'student', 'der', 'die Studenten', 'noun', 'Der Student lernt Deutsch.', 'The student learns German.', 'A1', 19),
  ('00000000-0000-4000-a000-000032868d6e', 'die Universität', 'الجامعة', 'university', 'die', 'die Universitäten', 'noun', 'Die Universität ist alt.', 'The university is old.', 'B1', 20),
  ('00000000-0000-4000-a000-000032868d6e', 'der Kurs', 'الدورة', 'course', 'der', 'die Kurse', 'noun', 'Der Kurs kostet 200 Euro.', 'The course costs 200 euros.', 'A2', 21),
  ('00000000-0000-4000-a000-000032868d6e', 'die Prüfung', 'الامتحان', 'exam', 'die', 'die Prüfungen', 'noun', 'Die Prüfung ist schwer.', 'The exam is difficult.', 'B1', 22),
  ('00000000-0000-4000-a000-000032868d6e', 'das Studium', 'الدراسة الجامعية', 'studies', 'das', NULL, 'noun', 'Mein Studium dauert vier Jahre.', 'My studies take four years.', 'B1', 23),
  ('00000000-0000-4000-a000-000032868d6e', 'lernen', 'يتعلم', 'to learn', NULL, NULL, 'verb', 'Ich lerne Deutsch.', 'I learn German.', 'A1', 24),
  ('00000000-0000-4000-a000-000032868d6e', 'die Zeitung', 'الجريدة', 'newspaper', 'die', 'die Zeitungen', 'noun', 'Ich lese die Zeitung.', 'I read the newspaper.', 'A2', 25),
  ('00000000-0000-4000-a000-000032868d6e', 'das Internet', 'الإنترنت', 'internet', 'das', NULL, 'noun', 'Das Internet ist schnell.', 'The internet is fast.', 'A2', 26),
  ('00000000-0000-4000-a000-000032868d6e', 'der Artikel', 'المقال', 'article', 'der', 'die Artikel', 'noun', 'Der Artikel ist interessant.', 'The article is interesting.', 'B1', 27),
  ('00000000-0000-4000-a000-000032868d6e', 'die Nachricht', 'الخبر', 'news', 'die', 'die Nachrichten', 'noun', 'Ich sehe die Nachrichten.', 'I watch the news.', 'A2', 28),
  ('00000000-0000-4000-a000-000032868d6e', 'das Radio', 'الراديو', 'radio', 'das', 'die Radios', 'noun', 'Ich höre Radio.', 'I listen to the radio.', 'A2', 29),
  ('00000000-0000-4000-a000-000032868d6e', 'das Fernsehen', 'التلفاز', 'television', 'das', NULL, 'noun', 'Das Fernsehen läuft.', 'The television is on.', 'A2', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000032868d6e', 'Präsens der regelmäßigen Verben (Present Tense) / المضارع للأفعال المنتظمة', 'In German, regular verbs follow a consistent pattern. The infinitive ends in -en. Remove the -en and add the personal endings: ich -e, du -st, er/sie/es -t, wir -en, ihr -t, sie/Sie -en. For most Arabic speakers, this is easier than Arabic verb conjugation because German has fewer forms.', '[{"rule":"ich: stem + e","note":"Ich lerne, ich wohne, ich arbeite"},{"rule":"du: stem + st","note":"Du lernst, du wohnst, du arbeitest"},{"rule":"er/sie/es: stem + t","note":"Er lernt, sie wohnt, es arbeitet"},{"rule":"wir: stem + en","note":"Wir lernen, wir wohnen, wir arbeiten"},{"rule":"ihr: stem + t","note":"Ihr lernt, ihr wohnt, ihr arbeitet"},{"rule":"sie/Sie: stem + en","note":"Sie lernen, Sie wohnen"}]', '[{"german":"Ich lerne Deutsch.","arabic":"أنا أتعلم الألمانية.","english":"I am learning German."},{"german":"Du wohnst in Berlin.","arabic":"أنت تسكن في برلين.","english":"You live in Berlin."},{"german":"Er arbeitet bei Siemens.","arabic":"هو يعمل في سيمنز.","english":"He works at Siemens."}]', '[{"mistake":"Ich lernen Deutsch","correction":"Ich lerne Deutsch","explanation":"After \"ich\" we use the stem + e, not the infinitive."},{"mistake":"Er lerne Deutsch","correction":"Er lernt Deutsch","explanation":"After \"er/sie/es\" we add -t, not -e."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000032868d6e', 'multiple_choice', 'What does "die Gesellschaft" mean?', '["The","A","This","That"]', 'The', 'This is a basic vocabulary item.', 1, 1),
  ('00000000-0000-4000-a000-000032868d6e', 'fill_gap', 'Complete with the correct form.', '["Option 1","Option 2","Option 3"]', 'Option 1', 'Practice grammar in context.', 1, 2),
  ('00000000-0000-4000-a000-000032868d6e', 'translation', 'Translate: "I learn German."', '["Ich lerne Deutsch.","Ich lerne Englisch.","Ich lerne Spanisch."]', 'Ich lerne Deutsch.', 'Ich = I, lerne = learn/learning, Deutsch = German.', 2, 3),
  ('00000000-0000-4000-a000-000032868d6e', 'sentence_order', 'Order the sentence.', '[]', 'Ich lerne Deutsch.', 'Subject + verb + object in German.', 2, 4),
  ('00000000-0000-4000-a000-000032868d6e', 'matching', 'Match the words with their meanings.', '["Match pairs correctly"]', 'Correct pairs', 'Test your vocabulary knowledge.', 2, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-000032868d6e', 'multiple_choice', 'What is the main topic of this lesson?', '["Simple Past","Sports","Music","Travel"]', 'Simple Past', 1, 1),
  ('00000000-0000-4000-a000-000032868d6e', 'true_false', 'This lesson teaches vocabulary about Simple Past.', '["True","False"]', 'True', 1, 2),
  ('00000000-0000-4000-a000-000032868d6e', 'true_false', 'German word order is always the same as English.', '["True","False"]', 'False', 1, 3),
  ('00000000-0000-4000-a000-000032868d6e', 'multiple_choice', 'How do you say "please" in German?', '["Danke","Bitte","Tschüss","Hallo"]', 'Bitte', 1, 4),
  ('00000000-0000-4000-a000-000032868d6e', 'multiple_choice', 'Which article is feminine?', '["der","die","das","den"]', 'die', 1, 5),
  ('00000000-0000-4000-a000-000032868d6e', 'fill_blank', 'Ich ___ (to be) Student.', '["bin","bist","ist","sind"]', 'bin', 1, 6),
  ('00000000-0000-4000-a000-000032868d6e', 'multiple_choice', 'What is the correct word order?', '["Ich lerne Deutsch","Ich Deutsch lerne","Lerne ich Deutsch","Deutsch ich lerne"]', 'Ich lerne Deutsch', 1, 7),
  ('00000000-0000-4000-a000-000032868d6e', 'true_false', 'All German nouns are capitalized.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-000032868d6e', 'multiple_choice', 'How do you say "thank you" in German?', '["Bitte","Danke","Tschüss","Hallo"]', 'Danke', 1, 9),
  ('00000000-0000-4000-a000-000032868d6e', 'fill_blank', 'Wo ___ du? (to live)', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 1, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-000032868d6e', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Alltag und Gesellschaft', 'formal', false, 1),
  ('00000000-0000-4000-a000-000032868d6e', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Alltag und Gesellschaft', 'informal', false, 2),
  ('00000000-0000-4000-a000-000032868d6e', 'Bitte!', 'Please!', 'من فضلك!', 'Used in Alltag und Gesellschaft', 'neutral', false, 3),
  ('00000000-0000-4000-a000-000032868d6e', 'Danke!', 'Thanks!', 'شكراً!', 'Used in Alltag und Gesellschaft', 'neutral', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-000032868d6e', 'Hallo', 'Hello', 'Greeting', 'expression', 1),
  ('00000000-0000-4000-a000-000032868d6e', 'Danke', 'Thanks', 'Politeness', 'expression', 2),
  ('00000000-0000-4000-a000-000032868d6e', 'Bitte', 'Please', 'Politeness', 'expression', 3),
  ('00000000-0000-4000-a000-000032868d6e', 'Tschüss', 'Bye', 'Farewell', 'expression', 4);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-000032868d6e', 'Präteritum: sein, haben, wissen — Leseübung', 'Die deutsche Gesellschaft ist vielfältig und multikulturell. In den großen Städten wie Berlin, München oder Hamburg leben Menschen aus über 190 Nationen zusammen. Integration ist ein wichtiges Thema. Viele Menschen mit Migrationshintergrund haben sich erfolgreich integriert und tragen zur Gesellschaft bei. Deutschland ist ein Einwanderungsland. Im Jahr 2023 wurden neue Einbürgerungsregeln beschlossen, die den Erwerb der deutschen Staatsbürgerschaft erleichtern sollen.', 'German society is diverse and multicultural. In big cities like Berlin, Munich or Hamburg, people from over 190 nations live together. Integration is an important topic. Many people with a migration background have successfully integrated and contribute to society. Germany is a country of immigration. In 2023, new naturalization rules were passed that aim to make it easier to acquire German citizenship.', 'المجتمع الألماني متنوع ومتعدد الثقافات. في المدن الكبيرة مثل برلين وميونخ وهامبورغ يعيش أناس من أكثر من 190 دولة معاً. الاندماج موضوع مهم. كثير من الأشخاص ذوي خلفية هجرة اندمجوا بنجاح ويساهمون في المجتمع. ألمانيا بلد هجرة. في عام 2023 تم إقرار قواعد تجنيس جديدة تهدف إلى تسهيل الحصول على الجنسية الألمانية.', 60, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, duration_seconds, speaker_count, scenario) values
  ('00000000-0000-4000-a000-000032868d6e', 'Präteritum: sein, haben, wissen — Hörverständnis', '[Lehrerin]: Guten Morgen! Heute lernen wir Begrüßungen.

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

[Lehrerin]: ممتاز! إلى الغد!', 72, 2, 'Alltag und Gesellschaft');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-000032868d6e', 'Speaking: Präteritum: sein, haben, wissen', 'Practice talking about Simple Past. Answer questions and have a simple conversation.', 'Simple Past', ARRAY['Use full sentences','Speak clearly','Don''t worry about mistakes']::text[], ARRAY['die Gesellschaft','die Politik','die Integration','die Kultur','der Bürger']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-000032868d6e', 'Writing: Präteritum: sein, haben, wissen', 'Write a short text about Simple Past. Use at least 5 vocabulary words from this lesson.', ARRAY['Start with a greeting','Use the vocabulary from this lesson','Check your grammar']::text[], ARRAY['die Gesellschaft','die Politik','die Integration']::text[], '["Sentence structure","Vocabulary usage"]', 50, 150, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000032868d6e', 'Präteritum: sein, haben, wissen — Roleplay', 'Simple Past', 'Student', 'Teacher', 'Practice conversation about Simple Past', 'Hallo! Lass uns über dieses Thema sprechen.', 'intermediate', 1, ARRAY['die Gesellschaft','die Politik','die Integration','die Kultur','der Bürger','die Freiheit','die Gleichberechtigung','die Verantwortung']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000032868d6e', 'Präteritum: sein, haben, wissen — Advanced Roleplay', 'Simple Past', 'Customer', 'Assistant', 'Extended conversation about Simple Past', 'Guten Tag! Wie kann ich Ihnen helfen?', 'intermediate', 2, ARRAY['die Gesellschaft','die Politik','die Integration','die Kultur','der Bürger','die Freiheit','die Gleichberechtigung','die Verantwortung']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-000032868d6e', 'Präteritum: sein, haben, wissen — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Präteritum: sein, haben, wissen".', 'Creative practice for Simple Past', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-000032868d6e', 'Homework: Präteritum: sein, haben, wissen', 'Complete these tasks to reinforce "Präteritum: sein, haben, wissen".', 'mixed', '[{"description":"Review all vocabulary from this lesson"},{"description":"Write 5 sentences using the grammar structure"},{"description":"Practice the dialogue aloud"}]', 35, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-000032868d6e', 'In this lesson you learned about Simple Past. You practiced vocabulary related to society and grammar structure present_tense.', '["Mastered vocabulary about Simple Past","Applied present_tense correctly","Read and understood a text about Simple Past","Practiced speaking about Simple Past"]', '[{"title":"Präteritum: sein, haben, wissen Review","summary":"present_tense — the main grammar focus of this lesson."}]', ARRAY['Simple Past core vocabulary','society key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)','Verb is always in second position']::text[], ARRAY['Practice 15-20 minutes daily','Use new vocabulary in real sentences','Speak out loud to improve pronunciation']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000032868d6e', 'translation', 'Translate to German: "This is a translation exercise."', '[]', 'Das ist eine Übersetzungsübung.', 'Use "das ist" for "this is"', 1, 40);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000032868d6e', 'Culture: Simple Past in German-Speaking Countries', 'Learn how Simple Past is approached in German culture.

تعلم كيف يتم التعامل مع Simple Past في الثقافة الألمانية.', '["Tip: Be direct and polite","Tip: Use formal language with strangers","Tip: Respect punctuality"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000032868d6e', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Common error for Arabic speakers","correction":"Correct version","explanation":"Explanation of the error"}]', 30);

  -- Lesson 4: Nebensätze mit weil, da, obwohl (L-B1-01-04)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-000032868d6d', '00000000-0000-4000-a000-000039c2eadf', 'Nebensätze mit weil, da, obwohl', 'Learn subordinate clauses for reasons and concessions.', 'Subordinate Clauses', 'grammar', '["Understand and use vocabulary related to Subordinate Clauses","Apply present_tense correctly","Read and comprehend a text about Subordinate Clauses","Listen and understand a dialogue about Subordinate Clauses","Speak about Subordinate Clauses in simple sentences","Write a short text about Subordinate Clauses"]', 60, 4, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-000032868d6d', 'die Gesellschaft', 'المجتمع', 'society', 'die', NULL, 'noun', 'Die Gesellschaft verändert sich.', 'Society is changing.', 'B1', 1),
  ('00000000-0000-4000-a000-000032868d6d', 'die Politik', 'السياسة', 'politics', 'die', NULL, 'noun', 'Politik ist ein wichtiges Thema.', 'Politics is an important topic.', 'B1', 2),
  ('00000000-0000-4000-a000-000032868d6d', 'die Integration', 'الاندماج', 'integration', 'die', NULL, 'noun', 'Integration ist wichtig.', 'Integration is important.', 'B1', 3),
  ('00000000-0000-4000-a000-000032868d6d', 'die Kultur', 'الثقافة', 'culture', 'die', NULL, 'noun', 'Die deutsche Kultur ist vielfältig.', 'German culture is diverse.', 'A2', 4),
  ('00000000-0000-4000-a000-000032868d6d', 'der Bürger', 'المواطن', 'citizen', 'der', 'die Bürger', 'noun', 'Die Bürger wählen.', 'The citizens vote.', 'B1', 5),
  ('00000000-0000-4000-a000-000032868d6d', 'die Freiheit', 'الحرية', 'freedom', 'die', NULL, 'noun', 'Freiheit ist ein Grundrecht.', 'Freedom is a basic right.', 'B1', 6),
  ('00000000-0000-4000-a000-000032868d6d', 'die Gleichberechtigung', 'المساواة', 'equality', 'die', NULL, 'noun', 'Gleichberechtigung für alle.', 'Equality for all.', 'B2', 7),
  ('00000000-0000-4000-a000-000032868d6d', 'die Verantwortung', 'المسؤولية', 'responsibility', 'die', NULL, 'noun', 'Das ist deine Verantwortung.', 'That is your responsibility.', 'B1', 8),
  ('00000000-0000-4000-a000-000032868d6d', 'der Beruf', 'المهنة', 'profession', 'der', 'die Berufe', 'noun', 'Was ist dein Beruf?', 'What is your profession?', 'A1', 9),
  ('00000000-0000-4000-a000-000032868d6d', 'die Firma', 'الشركة', 'company', 'die', 'die Firmen', 'noun', 'Die Firma ist in Berlin.', 'The company is in Berlin.', 'A1', 10),
  ('00000000-0000-4000-a000-000032868d6d', 'der Kollege', 'الزميل', 'colleague', 'der', 'die Kollegen', 'noun', 'Mein Kollege hilft mir.', 'My colleague helps me.', 'A1', 11),
  ('00000000-0000-4000-a000-000032868d6d', 'das Büro', 'المكتب', 'office', 'das', 'die Büros', 'noun', 'Das Büro ist im dritten Stock.', 'The office is on the third floor.', 'A1', 12),
  ('00000000-0000-4000-a000-000032868d6d', 'die Besprechung', 'الاجتماع', 'meeting', 'die', 'die Besprechungen', 'noun', 'Wir haben eine Besprechung.', 'We have a meeting.', 'B1', 13),
  ('00000000-0000-4000-a000-000032868d6d', 'der Chef', 'المدير', 'boss', 'der', 'die Chefs', 'noun', 'Mein Chef ist freundlich.', 'My boss is friendly.', 'A1', 14),
  ('00000000-0000-4000-a000-000032868d6d', 'das Gehalt', 'الراتب', 'salary', 'das', 'die Gehälter', 'noun', 'Das Gehalt ist gut.', 'The salary is good.', 'B1', 15),
  ('00000000-0000-4000-a000-000032868d6d', 'die Stelle', 'الوظيفة', 'position', 'die', 'die Stellen', 'noun', 'Ich suche eine neue Stelle.', 'I am looking for a new position.', 'B1', 16),
  ('00000000-0000-4000-a000-000032868d6d', 'die Schule', 'المدرسة', 'school', 'die', 'die Schulen', 'noun', 'Die Kinder gehen zur Schule.', 'The children go to school.', 'A1', 17),
  ('00000000-0000-4000-a000-000032868d6d', 'der Lehrer', 'المعلم', 'teacher', 'der', 'die Lehrer', 'noun', 'Der Lehrer erklärt die Grammatik.', 'The teacher explains the grammar.', 'A1', 18),
  ('00000000-0000-4000-a000-000032868d6d', 'der Student', 'الطالب', 'student', 'der', 'die Studenten', 'noun', 'Der Student lernt Deutsch.', 'The student learns German.', 'A1', 19),
  ('00000000-0000-4000-a000-000032868d6d', 'die Universität', 'الجامعة', 'university', 'die', 'die Universitäten', 'noun', 'Die Universität ist alt.', 'The university is old.', 'B1', 20),
  ('00000000-0000-4000-a000-000032868d6d', 'der Kurs', 'الدورة', 'course', 'der', 'die Kurse', 'noun', 'Der Kurs kostet 200 Euro.', 'The course costs 200 euros.', 'A2', 21),
  ('00000000-0000-4000-a000-000032868d6d', 'die Prüfung', 'الامتحان', 'exam', 'die', 'die Prüfungen', 'noun', 'Die Prüfung ist schwer.', 'The exam is difficult.', 'B1', 22),
  ('00000000-0000-4000-a000-000032868d6d', 'das Studium', 'الدراسة الجامعية', 'studies', 'das', NULL, 'noun', 'Mein Studium dauert vier Jahre.', 'My studies take four years.', 'B1', 23),
  ('00000000-0000-4000-a000-000032868d6d', 'lernen', 'يتعلم', 'to learn', NULL, NULL, 'verb', 'Ich lerne Deutsch.', 'I learn German.', 'A1', 24),
  ('00000000-0000-4000-a000-000032868d6d', 'die Zeitung', 'الجريدة', 'newspaper', 'die', 'die Zeitungen', 'noun', 'Ich lese die Zeitung.', 'I read the newspaper.', 'A2', 25),
  ('00000000-0000-4000-a000-000032868d6d', 'das Internet', 'الإنترنت', 'internet', 'das', NULL, 'noun', 'Das Internet ist schnell.', 'The internet is fast.', 'A2', 26),
  ('00000000-0000-4000-a000-000032868d6d', 'der Artikel', 'المقال', 'article', 'der', 'die Artikel', 'noun', 'Der Artikel ist interessant.', 'The article is interesting.', 'B1', 27),
  ('00000000-0000-4000-a000-000032868d6d', 'die Nachricht', 'الخبر', 'news', 'die', 'die Nachrichten', 'noun', 'Ich sehe die Nachrichten.', 'I watch the news.', 'A2', 28),
  ('00000000-0000-4000-a000-000032868d6d', 'das Radio', 'الراديو', 'radio', 'das', 'die Radios', 'noun', 'Ich höre Radio.', 'I listen to the radio.', 'A2', 29),
  ('00000000-0000-4000-a000-000032868d6d', 'das Fernsehen', 'التلفاز', 'television', 'das', NULL, 'noun', 'Das Fernsehen läuft.', 'The television is on.', 'A2', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000032868d6d', 'Präsens der regelmäßigen Verben (Present Tense) / المضارع للأفعال المنتظمة', 'In German, regular verbs follow a consistent pattern. The infinitive ends in -en. Remove the -en and add the personal endings: ich -e, du -st, er/sie/es -t, wir -en, ihr -t, sie/Sie -en. For most Arabic speakers, this is easier than Arabic verb conjugation because German has fewer forms.', '[{"rule":"ich: stem + e","note":"Ich lerne, ich wohne, ich arbeite"},{"rule":"du: stem + st","note":"Du lernst, du wohnst, du arbeitest"},{"rule":"er/sie/es: stem + t","note":"Er lernt, sie wohnt, es arbeitet"},{"rule":"wir: stem + en","note":"Wir lernen, wir wohnen, wir arbeiten"},{"rule":"ihr: stem + t","note":"Ihr lernt, ihr wohnt, ihr arbeitet"},{"rule":"sie/Sie: stem + en","note":"Sie lernen, Sie wohnen"}]', '[{"german":"Ich lerne Deutsch.","arabic":"أنا أتعلم الألمانية.","english":"I am learning German."},{"german":"Du wohnst in Berlin.","arabic":"أنت تسكن في برلين.","english":"You live in Berlin."},{"german":"Er arbeitet bei Siemens.","arabic":"هو يعمل في سيمنز.","english":"He works at Siemens."}]', '[{"mistake":"Ich lernen Deutsch","correction":"Ich lerne Deutsch","explanation":"After \"ich\" we use the stem + e, not the infinitive."},{"mistake":"Er lerne Deutsch","correction":"Er lernt Deutsch","explanation":"After \"er/sie/es\" we add -t, not -e."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000032868d6d', 'multiple_choice', 'What does "die Gesellschaft" mean?', '["The","A","This","That"]', 'The', 'This is a basic vocabulary item.', 1, 1),
  ('00000000-0000-4000-a000-000032868d6d', 'fill_gap', 'Complete with the correct form.', '["Option 1","Option 2","Option 3"]', 'Option 1', 'Practice grammar in context.', 1, 2),
  ('00000000-0000-4000-a000-000032868d6d', 'translation', 'Translate: "I learn German."', '["Ich lerne Deutsch.","Ich lerne Englisch.","Ich lerne Spanisch."]', 'Ich lerne Deutsch.', 'Ich = I, lerne = learn/learning, Deutsch = German.', 2, 3),
  ('00000000-0000-4000-a000-000032868d6d', 'sentence_order', 'Order the sentence.', '[]', 'Ich lerne Deutsch.', 'Subject + verb + object in German.', 2, 4),
  ('00000000-0000-4000-a000-000032868d6d', 'matching', 'Match the words with their meanings.', '["Match pairs correctly"]', 'Correct pairs', 'Test your vocabulary knowledge.', 2, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-000032868d6d', 'multiple_choice', 'What is the main topic of this lesson?', '["Subordinate Clauses","Sports","Music","Travel"]', 'Subordinate Clauses', 1, 1),
  ('00000000-0000-4000-a000-000032868d6d', 'true_false', 'This lesson teaches vocabulary about Subordinate Clauses.', '["True","False"]', 'True', 1, 2),
  ('00000000-0000-4000-a000-000032868d6d', 'true_false', 'German word order is always the same as English.', '["True","False"]', 'False', 1, 3),
  ('00000000-0000-4000-a000-000032868d6d', 'multiple_choice', 'How do you say "please" in German?', '["Danke","Bitte","Tschüss","Hallo"]', 'Bitte', 1, 4),
  ('00000000-0000-4000-a000-000032868d6d', 'multiple_choice', 'Which article is feminine?', '["der","die","das","den"]', 'die', 1, 5),
  ('00000000-0000-4000-a000-000032868d6d', 'fill_blank', 'Ich ___ (to be) Student.', '["bin","bist","ist","sind"]', 'bin', 1, 6),
  ('00000000-0000-4000-a000-000032868d6d', 'multiple_choice', 'What is the correct word order?', '["Ich lerne Deutsch","Ich Deutsch lerne","Lerne ich Deutsch","Deutsch ich lerne"]', 'Ich lerne Deutsch', 1, 7),
  ('00000000-0000-4000-a000-000032868d6d', 'true_false', 'All German nouns are capitalized.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-000032868d6d', 'multiple_choice', 'How do you say "thank you" in German?', '["Bitte","Danke","Tschüss","Hallo"]', 'Danke', 1, 9),
  ('00000000-0000-4000-a000-000032868d6d', 'fill_blank', 'Wo ___ du? (to live)', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 1, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-000032868d6d', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Alltag und Gesellschaft', 'formal', false, 1),
  ('00000000-0000-4000-a000-000032868d6d', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Alltag und Gesellschaft', 'informal', false, 2),
  ('00000000-0000-4000-a000-000032868d6d', 'Bitte!', 'Please!', 'من فضلك!', 'Used in Alltag und Gesellschaft', 'neutral', false, 3),
  ('00000000-0000-4000-a000-000032868d6d', 'Danke!', 'Thanks!', 'شكراً!', 'Used in Alltag und Gesellschaft', 'neutral', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-000032868d6d', 'Hallo', 'Hello', 'Greeting', 'expression', 1),
  ('00000000-0000-4000-a000-000032868d6d', 'Danke', 'Thanks', 'Politeness', 'expression', 2),
  ('00000000-0000-4000-a000-000032868d6d', 'Bitte', 'Please', 'Politeness', 'expression', 3),
  ('00000000-0000-4000-a000-000032868d6d', 'Tschüss', 'Bye', 'Farewell', 'expression', 4);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-000032868d6d', 'Nebensätze mit weil, da, obwohl — Leseübung', 'Die deutsche Gesellschaft ist vielfältig und multikulturell. In den großen Städten wie Berlin, München oder Hamburg leben Menschen aus über 190 Nationen zusammen. Integration ist ein wichtiges Thema. Viele Menschen mit Migrationshintergrund haben sich erfolgreich integriert und tragen zur Gesellschaft bei. Deutschland ist ein Einwanderungsland. Im Jahr 2023 wurden neue Einbürgerungsregeln beschlossen, die den Erwerb der deutschen Staatsbürgerschaft erleichtern sollen.', 'German society is diverse and multicultural. In big cities like Berlin, Munich or Hamburg, people from over 190 nations live together. Integration is an important topic. Many people with a migration background have successfully integrated and contribute to society. Germany is a country of immigration. In 2023, new naturalization rules were passed that aim to make it easier to acquire German citizenship.', 'المجتمع الألماني متنوع ومتعدد الثقافات. في المدن الكبيرة مثل برلين وميونخ وهامبورغ يعيش أناس من أكثر من 190 دولة معاً. الاندماج موضوع مهم. كثير من الأشخاص ذوي خلفية هجرة اندمجوا بنجاح ويساهمون في المجتمع. ألمانيا بلد هجرة. في عام 2023 تم إقرار قواعد تجنيس جديدة تهدف إلى تسهيل الحصول على الجنسية الألمانية.', 60, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, duration_seconds, speaker_count, scenario) values
  ('00000000-0000-4000-a000-000032868d6d', 'Nebensätze mit weil, da, obwohl — Hörverständnis', '[Lehrerin]: Guten Morgen! Heute lernen wir Begrüßungen.

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

[Lehrerin]: ممتاز! إلى الغد!', 72, 2, 'Alltag und Gesellschaft');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-000032868d6d', 'Speaking: Nebensätze mit weil, da, obwohl', 'Practice talking about Subordinate Clauses. Answer questions and have a simple conversation.', 'Subordinate Clauses', ARRAY['Use full sentences','Speak clearly','Don''t worry about mistakes']::text[], ARRAY['die Gesellschaft','die Politik','die Integration','die Kultur','der Bürger']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-000032868d6d', 'Writing: Nebensätze mit weil, da, obwohl', 'Write a short text about Subordinate Clauses. Use at least 5 vocabulary words from this lesson.', ARRAY['Start with a greeting','Use the vocabulary from this lesson','Check your grammar']::text[], ARRAY['die Gesellschaft','die Politik','die Integration']::text[], '["Sentence structure","Vocabulary usage"]', 50, 150, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000032868d6d', 'Nebensätze mit weil, da, obwohl — Roleplay', 'Subordinate Clauses', 'Student', 'Teacher', 'Practice conversation about Subordinate Clauses', 'Hallo! Lass uns über dieses Thema sprechen.', 'intermediate', 1, ARRAY['die Gesellschaft','die Politik','die Integration','die Kultur','der Bürger','die Freiheit','die Gleichberechtigung','die Verantwortung']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000032868d6d', 'Nebensätze mit weil, da, obwohl — Advanced Roleplay', 'Subordinate Clauses', 'Customer', 'Assistant', 'Extended conversation about Subordinate Clauses', 'Guten Tag! Wie kann ich Ihnen helfen?', 'intermediate', 2, ARRAY['die Gesellschaft','die Politik','die Integration','die Kultur','der Bürger','die Freiheit','die Gleichberechtigung','die Verantwortung']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-000032868d6d', 'Nebensätze mit weil, da, obwohl — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Nebensätze mit weil, da, obwohl".', 'Creative practice for Subordinate Clauses', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-000032868d6d', 'Homework: Nebensätze mit weil, da, obwohl', 'Complete these tasks to reinforce "Nebensätze mit weil, da, obwohl".', 'mixed', '[{"description":"Review all vocabulary from this lesson"},{"description":"Write 5 sentences using the grammar structure"},{"description":"Practice the dialogue aloud"}]', 35, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-000032868d6d', 'In this lesson you learned about Subordinate Clauses. You practiced vocabulary related to society and grammar structure present_tense.', '["Mastered vocabulary about Subordinate Clauses","Applied present_tense correctly","Read and understood a text about Subordinate Clauses","Practiced speaking about Subordinate Clauses"]', '[{"title":"Nebensätze mit weil, da, obwohl Review","summary":"present_tense — the main grammar focus of this lesson."}]', ARRAY['Subordinate Clauses core vocabulary','society key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)','Verb is always in second position']::text[], ARRAY['Practice 15-20 minutes daily','Use new vocabulary in real sentences','Speak out loud to improve pronunciation']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000032868d6d', 'translation', 'Translate to German: "This is a translation exercise."', '[]', 'Das ist eine Übersetzungsübung.', 'Use "das ist" for "this is"', 1, 40);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000032868d6d', 'Culture: Subordinate Clauses in German-Speaking Countries', 'Learn how Subordinate Clauses is approached in German culture.

تعلم كيف يتم التعامل مع Subordinate Clauses في الثقافة الألمانية.', '["Tip: Be direct and polite","Tip: Use formal language with strangers","Tip: Respect punctuality"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000032868d6d', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Common error for Arabic speakers","correction":"Correct version","explanation":"Explanation of the error"}]', 30);

  -- Lesson 5: Einladungen und Verabredungen (L-B1-01-05)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-000032868d6c', '00000000-0000-4000-a000-000039c2eadf', 'Einladungen und Verabredungen', 'Practice making, accepting, and declining invitations.', 'Invitations', 'dialogue', '["Understand and use vocabulary related to Invitations","Apply present_tense correctly","Read and comprehend a text about Invitations","Listen and understand a dialogue about Invitations","Speak about Invitations in simple sentences","Write a short text about Invitations"]', 50, 5, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-000032868d6c', 'die Gesellschaft', 'المجتمع', 'society', 'die', NULL, 'noun', 'Die Gesellschaft verändert sich.', 'Society is changing.', 'B1', 1),
  ('00000000-0000-4000-a000-000032868d6c', 'die Politik', 'السياسة', 'politics', 'die', NULL, 'noun', 'Politik ist ein wichtiges Thema.', 'Politics is an important topic.', 'B1', 2),
  ('00000000-0000-4000-a000-000032868d6c', 'die Integration', 'الاندماج', 'integration', 'die', NULL, 'noun', 'Integration ist wichtig.', 'Integration is important.', 'B1', 3),
  ('00000000-0000-4000-a000-000032868d6c', 'die Kultur', 'الثقافة', 'culture', 'die', NULL, 'noun', 'Die deutsche Kultur ist vielfältig.', 'German culture is diverse.', 'A2', 4),
  ('00000000-0000-4000-a000-000032868d6c', 'der Bürger', 'المواطن', 'citizen', 'der', 'die Bürger', 'noun', 'Die Bürger wählen.', 'The citizens vote.', 'B1', 5),
  ('00000000-0000-4000-a000-000032868d6c', 'die Freiheit', 'الحرية', 'freedom', 'die', NULL, 'noun', 'Freiheit ist ein Grundrecht.', 'Freedom is a basic right.', 'B1', 6),
  ('00000000-0000-4000-a000-000032868d6c', 'die Gleichberechtigung', 'المساواة', 'equality', 'die', NULL, 'noun', 'Gleichberechtigung für alle.', 'Equality for all.', 'B2', 7),
  ('00000000-0000-4000-a000-000032868d6c', 'die Verantwortung', 'المسؤولية', 'responsibility', 'die', NULL, 'noun', 'Das ist deine Verantwortung.', 'That is your responsibility.', 'B1', 8),
  ('00000000-0000-4000-a000-000032868d6c', 'der Beruf', 'المهنة', 'profession', 'der', 'die Berufe', 'noun', 'Was ist dein Beruf?', 'What is your profession?', 'A1', 9),
  ('00000000-0000-4000-a000-000032868d6c', 'die Firma', 'الشركة', 'company', 'die', 'die Firmen', 'noun', 'Die Firma ist in Berlin.', 'The company is in Berlin.', 'A1', 10),
  ('00000000-0000-4000-a000-000032868d6c', 'der Kollege', 'الزميل', 'colleague', 'der', 'die Kollegen', 'noun', 'Mein Kollege hilft mir.', 'My colleague helps me.', 'A1', 11),
  ('00000000-0000-4000-a000-000032868d6c', 'das Büro', 'المكتب', 'office', 'das', 'die Büros', 'noun', 'Das Büro ist im dritten Stock.', 'The office is on the third floor.', 'A1', 12),
  ('00000000-0000-4000-a000-000032868d6c', 'die Besprechung', 'الاجتماع', 'meeting', 'die', 'die Besprechungen', 'noun', 'Wir haben eine Besprechung.', 'We have a meeting.', 'B1', 13),
  ('00000000-0000-4000-a000-000032868d6c', 'der Chef', 'المدير', 'boss', 'der', 'die Chefs', 'noun', 'Mein Chef ist freundlich.', 'My boss is friendly.', 'A1', 14),
  ('00000000-0000-4000-a000-000032868d6c', 'das Gehalt', 'الراتب', 'salary', 'das', 'die Gehälter', 'noun', 'Das Gehalt ist gut.', 'The salary is good.', 'B1', 15),
  ('00000000-0000-4000-a000-000032868d6c', 'die Stelle', 'الوظيفة', 'position', 'die', 'die Stellen', 'noun', 'Ich suche eine neue Stelle.', 'I am looking for a new position.', 'B1', 16),
  ('00000000-0000-4000-a000-000032868d6c', 'die Schule', 'المدرسة', 'school', 'die', 'die Schulen', 'noun', 'Die Kinder gehen zur Schule.', 'The children go to school.', 'A1', 17),
  ('00000000-0000-4000-a000-000032868d6c', 'der Lehrer', 'المعلم', 'teacher', 'der', 'die Lehrer', 'noun', 'Der Lehrer erklärt die Grammatik.', 'The teacher explains the grammar.', 'A1', 18),
  ('00000000-0000-4000-a000-000032868d6c', 'der Student', 'الطالب', 'student', 'der', 'die Studenten', 'noun', 'Der Student lernt Deutsch.', 'The student learns German.', 'A1', 19),
  ('00000000-0000-4000-a000-000032868d6c', 'die Universität', 'الجامعة', 'university', 'die', 'die Universitäten', 'noun', 'Die Universität ist alt.', 'The university is old.', 'B1', 20),
  ('00000000-0000-4000-a000-000032868d6c', 'der Kurs', 'الدورة', 'course', 'der', 'die Kurse', 'noun', 'Der Kurs kostet 200 Euro.', 'The course costs 200 euros.', 'A2', 21),
  ('00000000-0000-4000-a000-000032868d6c', 'die Prüfung', 'الامتحان', 'exam', 'die', 'die Prüfungen', 'noun', 'Die Prüfung ist schwer.', 'The exam is difficult.', 'B1', 22),
  ('00000000-0000-4000-a000-000032868d6c', 'das Studium', 'الدراسة الجامعية', 'studies', 'das', NULL, 'noun', 'Mein Studium dauert vier Jahre.', 'My studies take four years.', 'B1', 23),
  ('00000000-0000-4000-a000-000032868d6c', 'lernen', 'يتعلم', 'to learn', NULL, NULL, 'verb', 'Ich lerne Deutsch.', 'I learn German.', 'A1', 24),
  ('00000000-0000-4000-a000-000032868d6c', 'die Zeitung', 'الجريدة', 'newspaper', 'die', 'die Zeitungen', 'noun', 'Ich lese die Zeitung.', 'I read the newspaper.', 'A2', 25),
  ('00000000-0000-4000-a000-000032868d6c', 'das Internet', 'الإنترنت', 'internet', 'das', NULL, 'noun', 'Das Internet ist schnell.', 'The internet is fast.', 'A2', 26),
  ('00000000-0000-4000-a000-000032868d6c', 'der Artikel', 'المقال', 'article', 'der', 'die Artikel', 'noun', 'Der Artikel ist interessant.', 'The article is interesting.', 'B1', 27),
  ('00000000-0000-4000-a000-000032868d6c', 'die Nachricht', 'الخبر', 'news', 'die', 'die Nachrichten', 'noun', 'Ich sehe die Nachrichten.', 'I watch the news.', 'A2', 28),
  ('00000000-0000-4000-a000-000032868d6c', 'das Radio', 'الراديو', 'radio', 'das', 'die Radios', 'noun', 'Ich höre Radio.', 'I listen to the radio.', 'A2', 29),
  ('00000000-0000-4000-a000-000032868d6c', 'das Fernsehen', 'التلفاز', 'television', 'das', NULL, 'noun', 'Das Fernsehen läuft.', 'The television is on.', 'A2', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000032868d6c', 'Präsens der regelmäßigen Verben (Present Tense) / المضارع للأفعال المنتظمة', 'In German, regular verbs follow a consistent pattern. The infinitive ends in -en. Remove the -en and add the personal endings: ich -e, du -st, er/sie/es -t, wir -en, ihr -t, sie/Sie -en. For most Arabic speakers, this is easier than Arabic verb conjugation because German has fewer forms.', '[{"rule":"ich: stem + e","note":"Ich lerne, ich wohne, ich arbeite"},{"rule":"du: stem + st","note":"Du lernst, du wohnst, du arbeitest"},{"rule":"er/sie/es: stem + t","note":"Er lernt, sie wohnt, es arbeitet"},{"rule":"wir: stem + en","note":"Wir lernen, wir wohnen, wir arbeiten"},{"rule":"ihr: stem + t","note":"Ihr lernt, ihr wohnt, ihr arbeitet"},{"rule":"sie/Sie: stem + en","note":"Sie lernen, Sie wohnen"}]', '[{"german":"Ich lerne Deutsch.","arabic":"أنا أتعلم الألمانية.","english":"I am learning German."},{"german":"Du wohnst in Berlin.","arabic":"أنت تسكن في برلين.","english":"You live in Berlin."},{"german":"Er arbeitet bei Siemens.","arabic":"هو يعمل في سيمنز.","english":"He works at Siemens."}]', '[{"mistake":"Ich lernen Deutsch","correction":"Ich lerne Deutsch","explanation":"After \"ich\" we use the stem + e, not the infinitive."},{"mistake":"Er lerne Deutsch","correction":"Er lernt Deutsch","explanation":"After \"er/sie/es\" we add -t, not -e."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000032868d6c', 'multiple_choice', 'What does "die Gesellschaft" mean?', '["The","A","This","That"]', 'The', 'This is a basic vocabulary item.', 1, 1),
  ('00000000-0000-4000-a000-000032868d6c', 'fill_gap', 'Complete with the correct form.', '["Option 1","Option 2","Option 3"]', 'Option 1', 'Practice grammar in context.', 1, 2),
  ('00000000-0000-4000-a000-000032868d6c', 'translation', 'Translate: "I learn German."', '["Ich lerne Deutsch.","Ich lerne Englisch.","Ich lerne Spanisch."]', 'Ich lerne Deutsch.', 'Ich = I, lerne = learn/learning, Deutsch = German.', 2, 3),
  ('00000000-0000-4000-a000-000032868d6c', 'sentence_order', 'Order the sentence.', '[]', 'Ich lerne Deutsch.', 'Subject + verb + object in German.', 2, 4),
  ('00000000-0000-4000-a000-000032868d6c', 'matching', 'Match the words with their meanings.', '["Match pairs correctly"]', 'Correct pairs', 'Test your vocabulary knowledge.', 2, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-000032868d6c', 'multiple_choice', 'What is the main topic of this lesson?', '["Invitations","Sports","Music","Travel"]', 'Invitations', 1, 1),
  ('00000000-0000-4000-a000-000032868d6c', 'true_false', 'This lesson teaches vocabulary about Invitations.', '["True","False"]', 'True', 1, 2),
  ('00000000-0000-4000-a000-000032868d6c', 'true_false', 'German word order is always the same as English.', '["True","False"]', 'False', 1, 3),
  ('00000000-0000-4000-a000-000032868d6c', 'multiple_choice', 'How do you say "please" in German?', '["Danke","Bitte","Tschüss","Hallo"]', 'Bitte', 1, 4),
  ('00000000-0000-4000-a000-000032868d6c', 'multiple_choice', 'Which article is feminine?', '["der","die","das","den"]', 'die', 1, 5),
  ('00000000-0000-4000-a000-000032868d6c', 'fill_blank', 'Ich ___ (to be) Student.', '["bin","bist","ist","sind"]', 'bin', 1, 6),
  ('00000000-0000-4000-a000-000032868d6c', 'multiple_choice', 'What is the correct word order?', '["Ich lerne Deutsch","Ich Deutsch lerne","Lerne ich Deutsch","Deutsch ich lerne"]', 'Ich lerne Deutsch', 1, 7),
  ('00000000-0000-4000-a000-000032868d6c', 'true_false', 'All German nouns are capitalized.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-000032868d6c', 'multiple_choice', 'How do you say "thank you" in German?', '["Bitte","Danke","Tschüss","Hallo"]', 'Danke', 1, 9),
  ('00000000-0000-4000-a000-000032868d6c', 'fill_blank', 'Wo ___ du? (to live)', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 1, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-000032868d6c', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Alltag und Gesellschaft', 'formal', false, 1),
  ('00000000-0000-4000-a000-000032868d6c', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Alltag und Gesellschaft', 'informal', false, 2),
  ('00000000-0000-4000-a000-000032868d6c', 'Bitte!', 'Please!', 'من فضلك!', 'Used in Alltag und Gesellschaft', 'neutral', false, 3),
  ('00000000-0000-4000-a000-000032868d6c', 'Danke!', 'Thanks!', 'شكراً!', 'Used in Alltag und Gesellschaft', 'neutral', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-000032868d6c', 'Hallo', 'Hello', 'Greeting', 'expression', 1),
  ('00000000-0000-4000-a000-000032868d6c', 'Danke', 'Thanks', 'Politeness', 'expression', 2),
  ('00000000-0000-4000-a000-000032868d6c', 'Bitte', 'Please', 'Politeness', 'expression', 3),
  ('00000000-0000-4000-a000-000032868d6c', 'Tschüss', 'Bye', 'Farewell', 'expression', 4);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-000032868d6c', 'Einladungen und Verabredungen — Leseübung', 'Die deutsche Gesellschaft ist vielfältig und multikulturell. In den großen Städten wie Berlin, München oder Hamburg leben Menschen aus über 190 Nationen zusammen. Integration ist ein wichtiges Thema. Viele Menschen mit Migrationshintergrund haben sich erfolgreich integriert und tragen zur Gesellschaft bei. Deutschland ist ein Einwanderungsland. Im Jahr 2023 wurden neue Einbürgerungsregeln beschlossen, die den Erwerb der deutschen Staatsbürgerschaft erleichtern sollen.', 'German society is diverse and multicultural. In big cities like Berlin, Munich or Hamburg, people from over 190 nations live together. Integration is an important topic. Many people with a migration background have successfully integrated and contribute to society. Germany is a country of immigration. In 2023, new naturalization rules were passed that aim to make it easier to acquire German citizenship.', 'المجتمع الألماني متنوع ومتعدد الثقافات. في المدن الكبيرة مثل برلين وميونخ وهامبورغ يعيش أناس من أكثر من 190 دولة معاً. الاندماج موضوع مهم. كثير من الأشخاص ذوي خلفية هجرة اندمجوا بنجاح ويساهمون في المجتمع. ألمانيا بلد هجرة. في عام 2023 تم إقرار قواعد تجنيس جديدة تهدف إلى تسهيل الحصول على الجنسية الألمانية.', 60, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, duration_seconds, speaker_count, scenario) values
  ('00000000-0000-4000-a000-000032868d6c', 'Einladungen und Verabredungen — Hörverständnis', '[Lehrerin]: Guten Morgen! Heute lernen wir Begrüßungen.

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

[Lehrerin]: ممتاز! إلى الغد!', 72, 2, 'Alltag und Gesellschaft');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-000032868d6c', 'Speaking: Einladungen und Verabredungen', 'Practice talking about Invitations. Answer questions and have a simple conversation.', 'Invitations', ARRAY['Use full sentences','Speak clearly','Don''t worry about mistakes']::text[], ARRAY['die Gesellschaft','die Politik','die Integration','die Kultur','der Bürger']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-000032868d6c', 'Writing: Einladungen und Verabredungen', 'Write a short text about Invitations. Use at least 5 vocabulary words from this lesson.', ARRAY['Start with a greeting','Use the vocabulary from this lesson','Check your grammar']::text[], ARRAY['die Gesellschaft','die Politik','die Integration']::text[], '["Sentence structure","Vocabulary usage"]', 50, 150, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000032868d6c', 'Einladungen und Verabredungen — Roleplay', 'Invitations', 'Student', 'Teacher', 'Practice conversation about Invitations', 'Hallo! Lass uns über dieses Thema sprechen.', 'intermediate', 1, ARRAY['die Gesellschaft','die Politik','die Integration','die Kultur','der Bürger','die Freiheit','die Gleichberechtigung','die Verantwortung']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000032868d6c', 'Einladungen und Verabredungen — Advanced Roleplay', 'Invitations', 'Customer', 'Assistant', 'Extended conversation about Invitations', 'Guten Tag! Wie kann ich Ihnen helfen?', 'intermediate', 2, ARRAY['die Gesellschaft','die Politik','die Integration','die Kultur','der Bürger','die Freiheit','die Gleichberechtigung','die Verantwortung']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-000032868d6c', 'Einladungen und Verabredungen — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Einladungen und Verabredungen".', 'Creative practice for Invitations', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-000032868d6c', 'Homework: Einladungen und Verabredungen', 'Complete these tasks to reinforce "Einladungen und Verabredungen".', 'mixed', '[{"description":"Review all vocabulary from this lesson"},{"description":"Write 5 sentences using the grammar structure"},{"description":"Practice the dialogue aloud"}]', 35, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-000032868d6c', 'In this lesson you learned about Invitations. You practiced vocabulary related to society and grammar structure present_tense.', '["Mastered vocabulary about Invitations","Applied present_tense correctly","Read and understood a text about Invitations","Practiced speaking about Invitations"]', '[{"title":"Einladungen und Verabredungen Review","summary":"present_tense — the main grammar focus of this lesson."}]', ARRAY['Invitations core vocabulary','society key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)','Verb is always in second position']::text[], ARRAY['Practice 15-20 minutes daily','Use new vocabulary in real sentences','Speak out loud to improve pronunciation']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000032868d6c', 'translation', 'Translate to German: "This is a translation exercise."', '[]', 'Das ist eine Übersetzungsübung.', 'Use "das ist" for "this is"', 1, 40);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000032868d6c', 'Culture: Invitations in German-Speaking Countries', 'Learn how Invitations is approached in German culture.

تعلم كيف يتم التعامل مع Invitations في الثقافة الألمانية.', '["Tip: Be direct and polite","Tip: Use formal language with strangers","Tip: Respect punctuality"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000032868d6c', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Common error for Arabic speakers","correction":"Correct version","explanation":"Explanation of the error"}]', 30);

  -- Lesson 6: Test: Alltag und Gesellschaft (L-B1-01-06)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-000032868d6b', '00000000-0000-4000-a000-000039c2eadf', 'Test: Alltag und Gesellschaft', 'Module test on daily life and society.', 'Module Test', 'test', '["Understand and use vocabulary related to Module Test","Apply present_tense correctly","Read and comprehend a text about Module Test","Listen and understand a dialogue about Module Test","Speak about Module Test in simple sentences","Write a short text about Module Test"]', 40, 6, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-000032868d6b', 'die Gesellschaft', 'المجتمع', 'society', 'die', NULL, 'noun', 'Die Gesellschaft verändert sich.', 'Society is changing.', 'B1', 1),
  ('00000000-0000-4000-a000-000032868d6b', 'die Politik', 'السياسة', 'politics', 'die', NULL, 'noun', 'Politik ist ein wichtiges Thema.', 'Politics is an important topic.', 'B1', 2),
  ('00000000-0000-4000-a000-000032868d6b', 'die Integration', 'الاندماج', 'integration', 'die', NULL, 'noun', 'Integration ist wichtig.', 'Integration is important.', 'B1', 3),
  ('00000000-0000-4000-a000-000032868d6b', 'die Kultur', 'الثقافة', 'culture', 'die', NULL, 'noun', 'Die deutsche Kultur ist vielfältig.', 'German culture is diverse.', 'A2', 4),
  ('00000000-0000-4000-a000-000032868d6b', 'der Bürger', 'المواطن', 'citizen', 'der', 'die Bürger', 'noun', 'Die Bürger wählen.', 'The citizens vote.', 'B1', 5),
  ('00000000-0000-4000-a000-000032868d6b', 'die Freiheit', 'الحرية', 'freedom', 'die', NULL, 'noun', 'Freiheit ist ein Grundrecht.', 'Freedom is a basic right.', 'B1', 6),
  ('00000000-0000-4000-a000-000032868d6b', 'die Gleichberechtigung', 'المساواة', 'equality', 'die', NULL, 'noun', 'Gleichberechtigung für alle.', 'Equality for all.', 'B2', 7),
  ('00000000-0000-4000-a000-000032868d6b', 'die Verantwortung', 'المسؤولية', 'responsibility', 'die', NULL, 'noun', 'Das ist deine Verantwortung.', 'That is your responsibility.', 'B1', 8),
  ('00000000-0000-4000-a000-000032868d6b', 'der Beruf', 'المهنة', 'profession', 'der', 'die Berufe', 'noun', 'Was ist dein Beruf?', 'What is your profession?', 'A1', 9),
  ('00000000-0000-4000-a000-000032868d6b', 'die Firma', 'الشركة', 'company', 'die', 'die Firmen', 'noun', 'Die Firma ist in Berlin.', 'The company is in Berlin.', 'A1', 10),
  ('00000000-0000-4000-a000-000032868d6b', 'der Kollege', 'الزميل', 'colleague', 'der', 'die Kollegen', 'noun', 'Mein Kollege hilft mir.', 'My colleague helps me.', 'A1', 11),
  ('00000000-0000-4000-a000-000032868d6b', 'das Büro', 'المكتب', 'office', 'das', 'die Büros', 'noun', 'Das Büro ist im dritten Stock.', 'The office is on the third floor.', 'A1', 12),
  ('00000000-0000-4000-a000-000032868d6b', 'die Besprechung', 'الاجتماع', 'meeting', 'die', 'die Besprechungen', 'noun', 'Wir haben eine Besprechung.', 'We have a meeting.', 'B1', 13),
  ('00000000-0000-4000-a000-000032868d6b', 'der Chef', 'المدير', 'boss', 'der', 'die Chefs', 'noun', 'Mein Chef ist freundlich.', 'My boss is friendly.', 'A1', 14),
  ('00000000-0000-4000-a000-000032868d6b', 'das Gehalt', 'الراتب', 'salary', 'das', 'die Gehälter', 'noun', 'Das Gehalt ist gut.', 'The salary is good.', 'B1', 15),
  ('00000000-0000-4000-a000-000032868d6b', 'die Stelle', 'الوظيفة', 'position', 'die', 'die Stellen', 'noun', 'Ich suche eine neue Stelle.', 'I am looking for a new position.', 'B1', 16),
  ('00000000-0000-4000-a000-000032868d6b', 'die Schule', 'المدرسة', 'school', 'die', 'die Schulen', 'noun', 'Die Kinder gehen zur Schule.', 'The children go to school.', 'A1', 17),
  ('00000000-0000-4000-a000-000032868d6b', 'der Lehrer', 'المعلم', 'teacher', 'der', 'die Lehrer', 'noun', 'Der Lehrer erklärt die Grammatik.', 'The teacher explains the grammar.', 'A1', 18),
  ('00000000-0000-4000-a000-000032868d6b', 'der Student', 'الطالب', 'student', 'der', 'die Studenten', 'noun', 'Der Student lernt Deutsch.', 'The student learns German.', 'A1', 19),
  ('00000000-0000-4000-a000-000032868d6b', 'die Universität', 'الجامعة', 'university', 'die', 'die Universitäten', 'noun', 'Die Universität ist alt.', 'The university is old.', 'B1', 20),
  ('00000000-0000-4000-a000-000032868d6b', 'der Kurs', 'الدورة', 'course', 'der', 'die Kurse', 'noun', 'Der Kurs kostet 200 Euro.', 'The course costs 200 euros.', 'A2', 21),
  ('00000000-0000-4000-a000-000032868d6b', 'die Prüfung', 'الامتحان', 'exam', 'die', 'die Prüfungen', 'noun', 'Die Prüfung ist schwer.', 'The exam is difficult.', 'B1', 22),
  ('00000000-0000-4000-a000-000032868d6b', 'das Studium', 'الدراسة الجامعية', 'studies', 'das', NULL, 'noun', 'Mein Studium dauert vier Jahre.', 'My studies take four years.', 'B1', 23),
  ('00000000-0000-4000-a000-000032868d6b', 'lernen', 'يتعلم', 'to learn', NULL, NULL, 'verb', 'Ich lerne Deutsch.', 'I learn German.', 'A1', 24),
  ('00000000-0000-4000-a000-000032868d6b', 'die Zeitung', 'الجريدة', 'newspaper', 'die', 'die Zeitungen', 'noun', 'Ich lese die Zeitung.', 'I read the newspaper.', 'A2', 25),
  ('00000000-0000-4000-a000-000032868d6b', 'das Internet', 'الإنترنت', 'internet', 'das', NULL, 'noun', 'Das Internet ist schnell.', 'The internet is fast.', 'A2', 26),
  ('00000000-0000-4000-a000-000032868d6b', 'der Artikel', 'المقال', 'article', 'der', 'die Artikel', 'noun', 'Der Artikel ist interessant.', 'The article is interesting.', 'B1', 27),
  ('00000000-0000-4000-a000-000032868d6b', 'die Nachricht', 'الخبر', 'news', 'die', 'die Nachrichten', 'noun', 'Ich sehe die Nachrichten.', 'I watch the news.', 'A2', 28),
  ('00000000-0000-4000-a000-000032868d6b', 'das Radio', 'الراديو', 'radio', 'das', 'die Radios', 'noun', 'Ich höre Radio.', 'I listen to the radio.', 'A2', 29),
  ('00000000-0000-4000-a000-000032868d6b', 'das Fernsehen', 'التلفاز', 'television', 'das', NULL, 'noun', 'Das Fernsehen läuft.', 'The television is on.', 'A2', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000032868d6b', 'Präsens der regelmäßigen Verben (Present Tense) / المضارع للأفعال المنتظمة', 'In German, regular verbs follow a consistent pattern. The infinitive ends in -en. Remove the -en and add the personal endings: ich -e, du -st, er/sie/es -t, wir -en, ihr -t, sie/Sie -en. For most Arabic speakers, this is easier than Arabic verb conjugation because German has fewer forms.', '[{"rule":"ich: stem + e","note":"Ich lerne, ich wohne, ich arbeite"},{"rule":"du: stem + st","note":"Du lernst, du wohnst, du arbeitest"},{"rule":"er/sie/es: stem + t","note":"Er lernt, sie wohnt, es arbeitet"},{"rule":"wir: stem + en","note":"Wir lernen, wir wohnen, wir arbeiten"},{"rule":"ihr: stem + t","note":"Ihr lernt, ihr wohnt, ihr arbeitet"},{"rule":"sie/Sie: stem + en","note":"Sie lernen, Sie wohnen"}]', '[{"german":"Ich lerne Deutsch.","arabic":"أنا أتعلم الألمانية.","english":"I am learning German."},{"german":"Du wohnst in Berlin.","arabic":"أنت تسكن في برلين.","english":"You live in Berlin."},{"german":"Er arbeitet bei Siemens.","arabic":"هو يعمل في سيمنز.","english":"He works at Siemens."}]', '[{"mistake":"Ich lernen Deutsch","correction":"Ich lerne Deutsch","explanation":"After \"ich\" we use the stem + e, not the infinitive."},{"mistake":"Er lerne Deutsch","correction":"Er lernt Deutsch","explanation":"After \"er/sie/es\" we add -t, not -e."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000032868d6b', 'multiple_choice', 'What does "die Gesellschaft" mean?', '["The","A","This","That"]', 'The', 'This is a basic vocabulary item.', 1, 1),
  ('00000000-0000-4000-a000-000032868d6b', 'fill_gap', 'Complete with the correct form.', '["Option 1","Option 2","Option 3"]', 'Option 1', 'Practice grammar in context.', 1, 2),
  ('00000000-0000-4000-a000-000032868d6b', 'translation', 'Translate: "I learn German."', '["Ich lerne Deutsch.","Ich lerne Englisch.","Ich lerne Spanisch."]', 'Ich lerne Deutsch.', 'Ich = I, lerne = learn/learning, Deutsch = German.', 2, 3),
  ('00000000-0000-4000-a000-000032868d6b', 'sentence_order', 'Order the sentence.', '[]', 'Ich lerne Deutsch.', 'Subject + verb + object in German.', 2, 4),
  ('00000000-0000-4000-a000-000032868d6b', 'matching', 'Match the words with their meanings.', '["Match pairs correctly"]', 'Correct pairs', 'Test your vocabulary knowledge.', 2, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-000032868d6b', 'multiple_choice', 'What is the main topic of this lesson?', '["Module Test","Sports","Music","Travel"]', 'Module Test', 1, 1),
  ('00000000-0000-4000-a000-000032868d6b', 'true_false', 'This lesson teaches vocabulary about Module Test.', '["True","False"]', 'True', 1, 2),
  ('00000000-0000-4000-a000-000032868d6b', 'true_false', 'German word order is always the same as English.', '["True","False"]', 'False', 1, 3),
  ('00000000-0000-4000-a000-000032868d6b', 'multiple_choice', 'How do you say "please" in German?', '["Danke","Bitte","Tschüss","Hallo"]', 'Bitte', 1, 4),
  ('00000000-0000-4000-a000-000032868d6b', 'multiple_choice', 'Which article is feminine?', '["der","die","das","den"]', 'die', 1, 5),
  ('00000000-0000-4000-a000-000032868d6b', 'fill_blank', 'Ich ___ (to be) Student.', '["bin","bist","ist","sind"]', 'bin', 1, 6),
  ('00000000-0000-4000-a000-000032868d6b', 'multiple_choice', 'What is the correct word order?', '["Ich lerne Deutsch","Ich Deutsch lerne","Lerne ich Deutsch","Deutsch ich lerne"]', 'Ich lerne Deutsch', 1, 7),
  ('00000000-0000-4000-a000-000032868d6b', 'true_false', 'All German nouns are capitalized.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-000032868d6b', 'multiple_choice', 'How do you say "thank you" in German?', '["Bitte","Danke","Tschüss","Hallo"]', 'Danke', 1, 9),
  ('00000000-0000-4000-a000-000032868d6b', 'fill_blank', 'Wo ___ du? (to live)', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 1, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-000032868d6b', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Alltag und Gesellschaft', 'formal', false, 1),
  ('00000000-0000-4000-a000-000032868d6b', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Alltag und Gesellschaft', 'informal', false, 2),
  ('00000000-0000-4000-a000-000032868d6b', 'Bitte!', 'Please!', 'من فضلك!', 'Used in Alltag und Gesellschaft', 'neutral', false, 3),
  ('00000000-0000-4000-a000-000032868d6b', 'Danke!', 'Thanks!', 'شكراً!', 'Used in Alltag und Gesellschaft', 'neutral', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-000032868d6b', 'Hallo', 'Hello', 'Greeting', 'expression', 1),
  ('00000000-0000-4000-a000-000032868d6b', 'Danke', 'Thanks', 'Politeness', 'expression', 2),
  ('00000000-0000-4000-a000-000032868d6b', 'Bitte', 'Please', 'Politeness', 'expression', 3),
  ('00000000-0000-4000-a000-000032868d6b', 'Tschüss', 'Bye', 'Farewell', 'expression', 4);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-000032868d6b', 'Test: Alltag und Gesellschaft — Leseübung', 'Die deutsche Gesellschaft ist vielfältig und multikulturell. In den großen Städten wie Berlin, München oder Hamburg leben Menschen aus über 190 Nationen zusammen. Integration ist ein wichtiges Thema. Viele Menschen mit Migrationshintergrund haben sich erfolgreich integriert und tragen zur Gesellschaft bei. Deutschland ist ein Einwanderungsland. Im Jahr 2023 wurden neue Einbürgerungsregeln beschlossen, die den Erwerb der deutschen Staatsbürgerschaft erleichtern sollen.', 'German society is diverse and multicultural. In big cities like Berlin, Munich or Hamburg, people from over 190 nations live together. Integration is an important topic. Many people with a migration background have successfully integrated and contribute to society. Germany is a country of immigration. In 2023, new naturalization rules were passed that aim to make it easier to acquire German citizenship.', 'المجتمع الألماني متنوع ومتعدد الثقافات. في المدن الكبيرة مثل برلين وميونخ وهامبورغ يعيش أناس من أكثر من 190 دولة معاً. الاندماج موضوع مهم. كثير من الأشخاص ذوي خلفية هجرة اندمجوا بنجاح ويساهمون في المجتمع. ألمانيا بلد هجرة. في عام 2023 تم إقرار قواعد تجنيس جديدة تهدف إلى تسهيل الحصول على الجنسية الألمانية.', 60, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, duration_seconds, speaker_count, scenario) values
  ('00000000-0000-4000-a000-000032868d6b', 'Test: Alltag und Gesellschaft — Hörverständnis', '[Lehrerin]: Guten Morgen! Heute lernen wir Begrüßungen.

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

[Lehrerin]: ممتاز! إلى الغد!', 72, 2, 'Alltag und Gesellschaft');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-000032868d6b', 'Speaking: Test: Alltag und Gesellschaft', 'Practice talking about Module Test. Answer questions and have a simple conversation.', 'Module Test', ARRAY['Use full sentences','Speak clearly','Don''t worry about mistakes']::text[], ARRAY['die Gesellschaft','die Politik','die Integration','die Kultur','der Bürger']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-000032868d6b', 'Writing: Test: Alltag und Gesellschaft', 'Write a short text about Module Test. Use at least 5 vocabulary words from this lesson.', ARRAY['Start with a greeting','Use the vocabulary from this lesson','Check your grammar']::text[], ARRAY['die Gesellschaft','die Politik','die Integration']::text[], '["Sentence structure","Vocabulary usage"]', 50, 150, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000032868d6b', 'Test: Alltag und Gesellschaft — Roleplay', 'Module Test', 'Student', 'Teacher', 'Practice conversation about Module Test', 'Hallo! Lass uns über dieses Thema sprechen.', 'intermediate', 1, ARRAY['die Gesellschaft','die Politik','die Integration','die Kultur','der Bürger','die Freiheit','die Gleichberechtigung','die Verantwortung']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000032868d6b', 'Test: Alltag und Gesellschaft — Advanced Roleplay', 'Module Test', 'Customer', 'Assistant', 'Extended conversation about Module Test', 'Guten Tag! Wie kann ich Ihnen helfen?', 'intermediate', 2, ARRAY['die Gesellschaft','die Politik','die Integration','die Kultur','der Bürger','die Freiheit','die Gleichberechtigung','die Verantwortung']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-000032868d6b', 'Test: Alltag und Gesellschaft — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Test: Alltag und Gesellschaft".', 'Creative practice for Module Test', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-000032868d6b', 'Homework: Test: Alltag und Gesellschaft', 'Complete these tasks to reinforce "Test: Alltag und Gesellschaft".', 'mixed', '[{"description":"Review all vocabulary from this lesson"},{"description":"Write 5 sentences using the grammar structure"},{"description":"Practice the dialogue aloud"}]', 35, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-000032868d6b', 'In this lesson you learned about Module Test. You practiced vocabulary related to society and grammar structure present_tense.', '["Mastered vocabulary about Module Test","Applied present_tense correctly","Read and understood a text about Module Test","Practiced speaking about Module Test"]', '[{"title":"Test: Alltag und Gesellschaft Review","summary":"present_tense — the main grammar focus of this lesson."}]', ARRAY['Module Test core vocabulary','society key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)','Verb is always in second position']::text[], ARRAY['Practice 15-20 minutes daily','Use new vocabulary in real sentences','Speak out loud to improve pronunciation']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000032868d6b', 'translation', 'Translate to German: "This is a translation exercise."', '[]', 'Das ist eine Übersetzungsübung.', 'Use "das ist" for "this is"', 1, 40);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000032868d6b', 'Culture: Module Test in German-Speaking Countries', 'Learn how Module Test is approached in German culture.

تعلم كيف يتم التعامل مع Module Test في الثقافة الألمانية.', '["Tip: Be direct and polite","Tip: Use formal language with strangers","Tip: Respect punctuality"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000032868d6b', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Common error for Arabic speakers","correction":"Correct version","explanation":"Explanation of the error"}]', 30);

  -- Module 2: Arbeit und Karriere
  insert into public.course_modules (id, level_id, title, description, objectives, order_index, estimated_hours, is_published)
  values ('00000000-0000-4000-a000-000039c2eae0', 'B1', 'Arbeit und Karriere', 'Professional communication, job applications, and career planning.', '["Write a job application and CV","Conduct a job interview","Use Konjunktiv II for polite requests","Use Passiv in present tense","Discuss career goals"]', 2, 5, true)
  on conflict (id) do nothing;

  -- Lesson 1: Berufe und Arbeitsplätze (L-B1-02-01)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-000032861911', '00000000-0000-4000-a000-000039c2eae0', 'Berufe und Arbeitsplätze', 'Detailed profession and workplace vocabulary.', 'Professions & Workplaces', 'vocabulary', '["Understand and use vocabulary related to Professions & Workplaces","Apply present_tense correctly","Read and comprehend a text about Professions & Workplaces","Listen and understand a dialogue about Professions & Workplaces","Speak about Professions & Workplaces in simple sentences","Write a short text about Professions & Workplaces"]', 45, 1, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-000032861911', 'der Beruf', 'المهنة', 'profession', 'der', 'die Berufe', 'noun', 'Was ist dein Beruf?', 'What is your profession?', 'A1', 1),
  ('00000000-0000-4000-a000-000032861911', 'die Firma', 'الشركة', 'company', 'die', 'die Firmen', 'noun', 'Die Firma ist in Berlin.', 'The company is in Berlin.', 'A1', 2),
  ('00000000-0000-4000-a000-000032861911', 'der Kollege', 'الزميل', 'colleague', 'der', 'die Kollegen', 'noun', 'Mein Kollege hilft mir.', 'My colleague helps me.', 'A1', 3),
  ('00000000-0000-4000-a000-000032861911', 'das Büro', 'المكتب', 'office', 'das', 'die Büros', 'noun', 'Das Büro ist im dritten Stock.', 'The office is on the third floor.', 'A1', 4),
  ('00000000-0000-4000-a000-000032861911', 'die Besprechung', 'الاجتماع', 'meeting', 'die', 'die Besprechungen', 'noun', 'Wir haben eine Besprechung.', 'We have a meeting.', 'B1', 5),
  ('00000000-0000-4000-a000-000032861911', 'der Chef', 'المدير', 'boss', 'der', 'die Chefs', 'noun', 'Mein Chef ist freundlich.', 'My boss is friendly.', 'A1', 6),
  ('00000000-0000-4000-a000-000032861911', 'das Gehalt', 'الراتب', 'salary', 'das', 'die Gehälter', 'noun', 'Das Gehalt ist gut.', 'The salary is good.', 'B1', 7),
  ('00000000-0000-4000-a000-000032861911', 'die Stelle', 'الوظيفة', 'position', 'die', 'die Stellen', 'noun', 'Ich suche eine neue Stelle.', 'I am looking for a new position.', 'B1', 8),
  ('00000000-0000-4000-a000-000032861911', 'die Schule', 'المدرسة', 'school', 'die', 'die Schulen', 'noun', 'Die Kinder gehen zur Schule.', 'The children go to school.', 'A1', 9),
  ('00000000-0000-4000-a000-000032861911', 'der Lehrer', 'المعلم', 'teacher', 'der', 'die Lehrer', 'noun', 'Der Lehrer erklärt die Grammatik.', 'The teacher explains the grammar.', 'A1', 10),
  ('00000000-0000-4000-a000-000032861911', 'der Student', 'الطالب', 'student', 'der', 'die Studenten', 'noun', 'Der Student lernt Deutsch.', 'The student learns German.', 'A1', 11),
  ('00000000-0000-4000-a000-000032861911', 'die Universität', 'الجامعة', 'university', 'die', 'die Universitäten', 'noun', 'Die Universität ist alt.', 'The university is old.', 'B1', 12),
  ('00000000-0000-4000-a000-000032861911', 'der Kurs', 'الدورة', 'course', 'der', 'die Kurse', 'noun', 'Der Kurs kostet 200 Euro.', 'The course costs 200 euros.', 'A2', 13),
  ('00000000-0000-4000-a000-000032861911', 'die Prüfung', 'الامتحان', 'exam', 'die', 'die Prüfungen', 'noun', 'Die Prüfung ist schwer.', 'The exam is difficult.', 'B1', 14),
  ('00000000-0000-4000-a000-000032861911', 'das Studium', 'الدراسة الجامعية', 'studies', 'das', NULL, 'noun', 'Mein Studium dauert vier Jahre.', 'My studies take four years.', 'B1', 15),
  ('00000000-0000-4000-a000-000032861911', 'lernen', 'يتعلم', 'to learn', NULL, NULL, 'verb', 'Ich lerne Deutsch.', 'I learn German.', 'A1', 16),
  ('00000000-0000-4000-a000-000032861911', 'die Zeitung', 'الجريدة', 'newspaper', 'die', 'die Zeitungen', 'noun', 'Ich lese die Zeitung.', 'I read the newspaper.', 'A2', 17),
  ('00000000-0000-4000-a000-000032861911', 'das Internet', 'الإنترنت', 'internet', 'das', NULL, 'noun', 'Das Internet ist schnell.', 'The internet is fast.', 'A2', 18),
  ('00000000-0000-4000-a000-000032861911', 'der Artikel', 'المقال', 'article', 'der', 'die Artikel', 'noun', 'Der Artikel ist interessant.', 'The article is interesting.', 'B1', 19),
  ('00000000-0000-4000-a000-000032861911', 'die Nachricht', 'الخبر', 'news', 'die', 'die Nachrichten', 'noun', 'Ich sehe die Nachrichten.', 'I watch the news.', 'A2', 20),
  ('00000000-0000-4000-a000-000032861911', 'das Radio', 'الراديو', 'radio', 'das', 'die Radios', 'noun', 'Ich höre Radio.', 'I listen to the radio.', 'A2', 21),
  ('00000000-0000-4000-a000-000032861911', 'das Fernsehen', 'التلفاز', 'television', 'das', NULL, 'noun', 'Das Fernsehen läuft.', 'The television is on.', 'A2', 22),
  ('00000000-0000-4000-a000-000032861911', 'die Zeitschrift', 'المجلة', 'magazine', 'die', 'die Zeitschriften', 'noun', 'Die Zeitschrift erscheint monatlich.', 'The magazine is published monthly.', 'B1', 23),
  ('00000000-0000-4000-a000-000032861911', 'der Journalist', 'الصحفي', 'journalist', 'der', 'die Journalisten', 'noun', 'Der Journalist schreibt einen Artikel.', 'The journalist writes an article.', 'B1', 24),
  ('00000000-0000-4000-a000-000032861911', 'die Gesellschaft', 'المجتمع', 'society', 'die', NULL, 'noun', 'Die Gesellschaft verändert sich.', 'Society is changing.', 'B1', 25),
  ('00000000-0000-4000-a000-000032861911', 'die Politik', 'السياسة', 'politics', 'die', NULL, 'noun', 'Politik ist ein wichtiges Thema.', 'Politics is an important topic.', 'B1', 26),
  ('00000000-0000-4000-a000-000032861911', 'die Integration', 'الاندماج', 'integration', 'die', NULL, 'noun', 'Integration ist wichtig.', 'Integration is important.', 'B1', 27),
  ('00000000-0000-4000-a000-000032861911', 'die Kultur', 'الثقافة', 'culture', 'die', NULL, 'noun', 'Die deutsche Kultur ist vielfältig.', 'German culture is diverse.', 'A2', 28),
  ('00000000-0000-4000-a000-000032861911', 'der Bürger', 'المواطن', 'citizen', 'der', 'die Bürger', 'noun', 'Die Bürger wählen.', 'The citizens vote.', 'B1', 29),
  ('00000000-0000-4000-a000-000032861911', 'die Freiheit', 'الحرية', 'freedom', 'die', NULL, 'noun', 'Freiheit ist ein Grundrecht.', 'Freedom is a basic right.', 'B1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000032861911', 'Präsens der regelmäßigen Verben (Present Tense) / المضارع للأفعال المنتظمة', 'In German, regular verbs follow a consistent pattern. The infinitive ends in -en. Remove the -en and add the personal endings: ich -e, du -st, er/sie/es -t, wir -en, ihr -t, sie/Sie -en. For most Arabic speakers, this is easier than Arabic verb conjugation because German has fewer forms.', '[{"rule":"ich: stem + e","note":"Ich lerne, ich wohne, ich arbeite"},{"rule":"du: stem + st","note":"Du lernst, du wohnst, du arbeitest"},{"rule":"er/sie/es: stem + t","note":"Er lernt, sie wohnt, es arbeitet"},{"rule":"wir: stem + en","note":"Wir lernen, wir wohnen, wir arbeiten"},{"rule":"ihr: stem + t","note":"Ihr lernt, ihr wohnt, ihr arbeitet"},{"rule":"sie/Sie: stem + en","note":"Sie lernen, Sie wohnen"}]', '[{"german":"Ich lerne Deutsch.","arabic":"أنا أتعلم الألمانية.","english":"I am learning German."},{"german":"Du wohnst in Berlin.","arabic":"أنت تسكن في برلين.","english":"You live in Berlin."},{"german":"Er arbeitet bei Siemens.","arabic":"هو يعمل في سيمنز.","english":"He works at Siemens."}]', '[{"mistake":"Ich lernen Deutsch","correction":"Ich lerne Deutsch","explanation":"After \"ich\" we use the stem + e, not the infinitive."},{"mistake":"Er lerne Deutsch","correction":"Er lernt Deutsch","explanation":"After \"er/sie/es\" we add -t, not -e."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000032861911', 'multiple_choice', 'What does "der Beruf" mean?', '["The","A","This","That"]', 'The', 'This is a basic vocabulary item.', 1, 1),
  ('00000000-0000-4000-a000-000032861911', 'fill_gap', 'Complete with the correct form.', '["Option 1","Option 2","Option 3"]', 'Option 1', 'Practice grammar in context.', 1, 2),
  ('00000000-0000-4000-a000-000032861911', 'translation', 'Translate: "I learn German."', '["Ich lerne Deutsch.","Ich lerne Englisch.","Ich lerne Spanisch."]', 'Ich lerne Deutsch.', 'Ich = I, lerne = learn/learning, Deutsch = German.', 2, 3),
  ('00000000-0000-4000-a000-000032861911', 'sentence_order', 'Order the sentence.', '[]', 'Ich lerne Deutsch.', 'Subject + verb + object in German.', 2, 4),
  ('00000000-0000-4000-a000-000032861911', 'matching', 'Match the words with their meanings.', '["Match pairs correctly"]', 'Correct pairs', 'Test your vocabulary knowledge.', 2, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-000032861911', 'multiple_choice', 'What is the main topic of this lesson?', '["Professions & Workplaces","Sports","Music","Travel"]', 'Professions & Workplaces', 1, 1),
  ('00000000-0000-4000-a000-000032861911', 'true_false', 'This lesson teaches vocabulary about Professions & Workplaces.', '["True","False"]', 'True', 1, 2),
  ('00000000-0000-4000-a000-000032861911', 'true_false', 'German word order is always the same as English.', '["True","False"]', 'False', 1, 3),
  ('00000000-0000-4000-a000-000032861911', 'multiple_choice', 'How do you say "please" in German?', '["Danke","Bitte","Tschüss","Hallo"]', 'Bitte', 1, 4),
  ('00000000-0000-4000-a000-000032861911', 'multiple_choice', 'Which article is feminine?', '["der","die","das","den"]', 'die', 1, 5),
  ('00000000-0000-4000-a000-000032861911', 'fill_blank', 'Ich ___ (to be) Student.', '["bin","bist","ist","sind"]', 'bin', 1, 6),
  ('00000000-0000-4000-a000-000032861911', 'multiple_choice', 'What is the correct word order?', '["Ich lerne Deutsch","Ich Deutsch lerne","Lerne ich Deutsch","Deutsch ich lerne"]', 'Ich lerne Deutsch', 1, 7),
  ('00000000-0000-4000-a000-000032861911', 'true_false', 'All German nouns are capitalized.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-000032861911', 'multiple_choice', 'How do you say "thank you" in German?', '["Bitte","Danke","Tschüss","Hallo"]', 'Danke', 1, 9),
  ('00000000-0000-4000-a000-000032861911', 'fill_blank', 'Wo ___ du? (to live)', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 1, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-000032861911', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Arbeit und Karriere', 'formal', false, 1),
  ('00000000-0000-4000-a000-000032861911', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Arbeit und Karriere', 'informal', false, 2),
  ('00000000-0000-4000-a000-000032861911', 'Bitte!', 'Please!', 'من فضلك!', 'Used in Arbeit und Karriere', 'neutral', false, 3),
  ('00000000-0000-4000-a000-000032861911', 'Danke!', 'Thanks!', 'شكراً!', 'Used in Arbeit und Karriere', 'neutral', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-000032861911', 'Hallo', 'Hello', 'Greeting', 'expression', 1),
  ('00000000-0000-4000-a000-000032861911', 'Danke', 'Thanks', 'Politeness', 'expression', 2),
  ('00000000-0000-4000-a000-000032861911', 'Bitte', 'Please', 'Politeness', 'expression', 3),
  ('00000000-0000-4000-a000-000032861911', 'Tschüss', 'Bye', 'Farewell', 'expression', 4);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-000032861911', 'Berufe und Arbeitsplätze — Leseübung', 'In der heutigen Arbeitswelt verändern sich die Anforderungen ständig. Immer mehr Berufe erfordern digitale Kompetenzen. Wer im Beruf erfolgreich sein möchte, sollte sich kontinuierlich weiterbilden. In Deutschland gibt es viele Möglichkeiten zur beruflichen Weiterbildung, zum Beispiel über die Arbeitsagentur oder die Industrie- und Handelskammer. Auch ein Studium neben dem Beruf wird immer beliebter. Viele Unternehmen unterstützen ihre Mitarbeiter bei der Weiterbildung durch flexible Arbeitszeiten oder finanzielle Zuschüsse.', 'In today''s working world, requirements are constantly changing. More and more professions require digital skills. Anyone who wants to be successful in their career should continuously educate themselves. In Germany there are many opportunities for professional development, for example through the employment agency or the Chamber of Industry and Commerce. Studying alongside work is also becoming increasingly popular. Many companies support their employees in further training through flexible working hours or financial subsidies.', 'في عالم العمل اليوم تتغير المتطلبات باستمرار. المزيد والمزيد من المهن تتطلب مهارات رقمية. من يريد النجاح في مهنته يجب أن يواصل تعليمه. في ألمانيا هناك فرص كثيرة للتطوير المهني، مثلاً عبر وكالة العمل أو غرفة الصناعة والتجارة. الدراسة إلى جانب العمل أصبحت أيضاً أكثر شعبية. العديد من الشركات تدعم موظفيها في التدريب المستمر من خلال ساعات عمل مرنة أو إعانات مالية.', 67, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, duration_seconds, speaker_count, scenario) values
  ('00000000-0000-4000-a000-000032861911', 'Berufe und Arbeitsplätze — Hörverständnis', '[Chef]: Guten Morgen, Herr Schmidt. Haben Sie die Präsentation fertig?

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

[Chef]: نعم، فكرة جيدة. ولا تنسوا المستندات.', 60, 2, 'Arbeit und Karriere');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-000032861911', 'Speaking: Berufe und Arbeitsplätze', 'Practice talking about Professions & Workplaces. Answer questions and have a simple conversation.', 'Professions & Workplaces', ARRAY['Use full sentences','Speak clearly','Don''t worry about mistakes']::text[], ARRAY['der Beruf','die Firma','der Kollege','das Büro','die Besprechung']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-000032861911', 'Writing: Berufe und Arbeitsplätze', 'Write a short text about Professions & Workplaces. Use at least 5 vocabulary words from this lesson.', ARRAY['Start with a greeting','Use the vocabulary from this lesson','Check your grammar']::text[], ARRAY['der Beruf','die Firma','der Kollege']::text[], '["Sentence structure","Vocabulary usage"]', 50, 150, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000032861911', 'Berufe und Arbeitsplätze — Roleplay', 'Professions & Workplaces', 'Student', 'Teacher', 'Practice conversation about Professions & Workplaces', 'Hallo! Lass uns über dieses Thema sprechen.', 'intermediate', 1, ARRAY['der Beruf','die Firma','der Kollege','das Büro','die Besprechung','der Chef','das Gehalt','die Stelle']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000032861911', 'Berufe und Arbeitsplätze — Advanced Roleplay', 'Professions & Workplaces', 'Customer', 'Assistant', 'Extended conversation about Professions & Workplaces', 'Guten Tag! Wie kann ich Ihnen helfen?', 'intermediate', 2, ARRAY['der Beruf','die Firma','der Kollege','das Büro','die Besprechung','der Chef','das Gehalt','die Stelle']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-000032861911', 'Berufe und Arbeitsplätze — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Berufe und Arbeitsplätze".', 'Creative practice for Professions & Workplaces', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-000032861911', 'Homework: Berufe und Arbeitsplätze', 'Complete these tasks to reinforce "Berufe und Arbeitsplätze".', 'mixed', '[{"description":"Review all vocabulary from this lesson"},{"description":"Write 5 sentences using the grammar structure"},{"description":"Practice the dialogue aloud"}]', 35, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-000032861911', 'In this lesson you learned about Professions & Workplaces. You practiced vocabulary related to work and grammar structure present_tense.', '["Mastered vocabulary about Professions & Workplaces","Applied present_tense correctly","Read and understood a text about Professions & Workplaces","Practiced speaking about Professions & Workplaces"]', '[{"title":"Berufe und Arbeitsplätze Review","summary":"present_tense — the main grammar focus of this lesson."}]', ARRAY['Professions & Workplaces core vocabulary','work key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)','Verb is always in second position']::text[], ARRAY['Practice 15-20 minutes daily','Use new vocabulary in real sentences','Speak out loud to improve pronunciation']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000032861911', 'translation', 'Translate to German: "This is a translation exercise."', '[]', 'Das ist eine Übersetzungsübung.', 'Use "das ist" for "this is"', 1, 40);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000032861911', 'Culture: Professions & Workplaces in German-Speaking Countries', 'Learn how Professions & Workplaces is approached in German culture.

تعلم كيف يتم التعامل مع Professions & Workplaces في الثقافة الألمانية.', '["Tip: Be direct and polite","Tip: Use formal language with strangers","Tip: Respect punctuality"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000032861911', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Common error for Arabic speakers","correction":"Correct version","explanation":"Explanation of the error"}]', 30);

  -- Lesson 2: Bewerbung und Lebenslauf (L-B1-02-02)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-000032861910', '00000000-0000-4000-a000-000039c2eae0', 'Bewerbung und Lebenslauf', 'Write job applications and CVs in German.', 'Job Applications', 'writing', '["Understand and use vocabulary related to Job Applications","Apply present_tense correctly","Read and comprehend a text about Job Applications","Listen and understand a dialogue about Job Applications","Speak about Job Applications in simple sentences","Write a short text about Job Applications"]', 60, 2, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-000032861910', 'der Beruf', 'المهنة', 'profession', 'der', 'die Berufe', 'noun', 'Was ist dein Beruf?', 'What is your profession?', 'A1', 1),
  ('00000000-0000-4000-a000-000032861910', 'die Firma', 'الشركة', 'company', 'die', 'die Firmen', 'noun', 'Die Firma ist in Berlin.', 'The company is in Berlin.', 'A1', 2),
  ('00000000-0000-4000-a000-000032861910', 'der Kollege', 'الزميل', 'colleague', 'der', 'die Kollegen', 'noun', 'Mein Kollege hilft mir.', 'My colleague helps me.', 'A1', 3),
  ('00000000-0000-4000-a000-000032861910', 'das Büro', 'المكتب', 'office', 'das', 'die Büros', 'noun', 'Das Büro ist im dritten Stock.', 'The office is on the third floor.', 'A1', 4),
  ('00000000-0000-4000-a000-000032861910', 'die Besprechung', 'الاجتماع', 'meeting', 'die', 'die Besprechungen', 'noun', 'Wir haben eine Besprechung.', 'We have a meeting.', 'B1', 5),
  ('00000000-0000-4000-a000-000032861910', 'der Chef', 'المدير', 'boss', 'der', 'die Chefs', 'noun', 'Mein Chef ist freundlich.', 'My boss is friendly.', 'A1', 6),
  ('00000000-0000-4000-a000-000032861910', 'das Gehalt', 'الراتب', 'salary', 'das', 'die Gehälter', 'noun', 'Das Gehalt ist gut.', 'The salary is good.', 'B1', 7),
  ('00000000-0000-4000-a000-000032861910', 'die Stelle', 'الوظيفة', 'position', 'die', 'die Stellen', 'noun', 'Ich suche eine neue Stelle.', 'I am looking for a new position.', 'B1', 8),
  ('00000000-0000-4000-a000-000032861910', 'die Schule', 'المدرسة', 'school', 'die', 'die Schulen', 'noun', 'Die Kinder gehen zur Schule.', 'The children go to school.', 'A1', 9),
  ('00000000-0000-4000-a000-000032861910', 'der Lehrer', 'المعلم', 'teacher', 'der', 'die Lehrer', 'noun', 'Der Lehrer erklärt die Grammatik.', 'The teacher explains the grammar.', 'A1', 10),
  ('00000000-0000-4000-a000-000032861910', 'der Student', 'الطالب', 'student', 'der', 'die Studenten', 'noun', 'Der Student lernt Deutsch.', 'The student learns German.', 'A1', 11),
  ('00000000-0000-4000-a000-000032861910', 'die Universität', 'الجامعة', 'university', 'die', 'die Universitäten', 'noun', 'Die Universität ist alt.', 'The university is old.', 'B1', 12),
  ('00000000-0000-4000-a000-000032861910', 'der Kurs', 'الدورة', 'course', 'der', 'die Kurse', 'noun', 'Der Kurs kostet 200 Euro.', 'The course costs 200 euros.', 'A2', 13),
  ('00000000-0000-4000-a000-000032861910', 'die Prüfung', 'الامتحان', 'exam', 'die', 'die Prüfungen', 'noun', 'Die Prüfung ist schwer.', 'The exam is difficult.', 'B1', 14),
  ('00000000-0000-4000-a000-000032861910', 'das Studium', 'الدراسة الجامعية', 'studies', 'das', NULL, 'noun', 'Mein Studium dauert vier Jahre.', 'My studies take four years.', 'B1', 15),
  ('00000000-0000-4000-a000-000032861910', 'lernen', 'يتعلم', 'to learn', NULL, NULL, 'verb', 'Ich lerne Deutsch.', 'I learn German.', 'A1', 16),
  ('00000000-0000-4000-a000-000032861910', 'die Zeitung', 'الجريدة', 'newspaper', 'die', 'die Zeitungen', 'noun', 'Ich lese die Zeitung.', 'I read the newspaper.', 'A2', 17),
  ('00000000-0000-4000-a000-000032861910', 'das Internet', 'الإنترنت', 'internet', 'das', NULL, 'noun', 'Das Internet ist schnell.', 'The internet is fast.', 'A2', 18),
  ('00000000-0000-4000-a000-000032861910', 'der Artikel', 'المقال', 'article', 'der', 'die Artikel', 'noun', 'Der Artikel ist interessant.', 'The article is interesting.', 'B1', 19),
  ('00000000-0000-4000-a000-000032861910', 'die Nachricht', 'الخبر', 'news', 'die', 'die Nachrichten', 'noun', 'Ich sehe die Nachrichten.', 'I watch the news.', 'A2', 20),
  ('00000000-0000-4000-a000-000032861910', 'das Radio', 'الراديو', 'radio', 'das', 'die Radios', 'noun', 'Ich höre Radio.', 'I listen to the radio.', 'A2', 21),
  ('00000000-0000-4000-a000-000032861910', 'das Fernsehen', 'التلفاز', 'television', 'das', NULL, 'noun', 'Das Fernsehen läuft.', 'The television is on.', 'A2', 22),
  ('00000000-0000-4000-a000-000032861910', 'die Zeitschrift', 'المجلة', 'magazine', 'die', 'die Zeitschriften', 'noun', 'Die Zeitschrift erscheint monatlich.', 'The magazine is published monthly.', 'B1', 23),
  ('00000000-0000-4000-a000-000032861910', 'der Journalist', 'الصحفي', 'journalist', 'der', 'die Journalisten', 'noun', 'Der Journalist schreibt einen Artikel.', 'The journalist writes an article.', 'B1', 24),
  ('00000000-0000-4000-a000-000032861910', 'die Gesellschaft', 'المجتمع', 'society', 'die', NULL, 'noun', 'Die Gesellschaft verändert sich.', 'Society is changing.', 'B1', 25),
  ('00000000-0000-4000-a000-000032861910', 'die Politik', 'السياسة', 'politics', 'die', NULL, 'noun', 'Politik ist ein wichtiges Thema.', 'Politics is an important topic.', 'B1', 26),
  ('00000000-0000-4000-a000-000032861910', 'die Integration', 'الاندماج', 'integration', 'die', NULL, 'noun', 'Integration ist wichtig.', 'Integration is important.', 'B1', 27),
  ('00000000-0000-4000-a000-000032861910', 'die Kultur', 'الثقافة', 'culture', 'die', NULL, 'noun', 'Die deutsche Kultur ist vielfältig.', 'German culture is diverse.', 'A2', 28),
  ('00000000-0000-4000-a000-000032861910', 'der Bürger', 'المواطن', 'citizen', 'der', 'die Bürger', 'noun', 'Die Bürger wählen.', 'The citizens vote.', 'B1', 29),
  ('00000000-0000-4000-a000-000032861910', 'die Freiheit', 'الحرية', 'freedom', 'die', NULL, 'noun', 'Freiheit ist ein Grundrecht.', 'Freedom is a basic right.', 'B1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000032861910', 'Präsens der regelmäßigen Verben (Present Tense) / المضارع للأفعال المنتظمة', 'In German, regular verbs follow a consistent pattern. The infinitive ends in -en. Remove the -en and add the personal endings: ich -e, du -st, er/sie/es -t, wir -en, ihr -t, sie/Sie -en. For most Arabic speakers, this is easier than Arabic verb conjugation because German has fewer forms.', '[{"rule":"ich: stem + e","note":"Ich lerne, ich wohne, ich arbeite"},{"rule":"du: stem + st","note":"Du lernst, du wohnst, du arbeitest"},{"rule":"er/sie/es: stem + t","note":"Er lernt, sie wohnt, es arbeitet"},{"rule":"wir: stem + en","note":"Wir lernen, wir wohnen, wir arbeiten"},{"rule":"ihr: stem + t","note":"Ihr lernt, ihr wohnt, ihr arbeitet"},{"rule":"sie/Sie: stem + en","note":"Sie lernen, Sie wohnen"}]', '[{"german":"Ich lerne Deutsch.","arabic":"أنا أتعلم الألمانية.","english":"I am learning German."},{"german":"Du wohnst in Berlin.","arabic":"أنت تسكن في برلين.","english":"You live in Berlin."},{"german":"Er arbeitet bei Siemens.","arabic":"هو يعمل في سيمنز.","english":"He works at Siemens."}]', '[{"mistake":"Ich lernen Deutsch","correction":"Ich lerne Deutsch","explanation":"After \"ich\" we use the stem + e, not the infinitive."},{"mistake":"Er lerne Deutsch","correction":"Er lernt Deutsch","explanation":"After \"er/sie/es\" we add -t, not -e."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000032861910', 'multiple_choice', 'What does "der Beruf" mean?', '["The","A","This","That"]', 'The', 'This is a basic vocabulary item.', 1, 1),
  ('00000000-0000-4000-a000-000032861910', 'fill_gap', 'Complete with the correct form.', '["Option 1","Option 2","Option 3"]', 'Option 1', 'Practice grammar in context.', 1, 2),
  ('00000000-0000-4000-a000-000032861910', 'translation', 'Translate: "I learn German."', '["Ich lerne Deutsch.","Ich lerne Englisch.","Ich lerne Spanisch."]', 'Ich lerne Deutsch.', 'Ich = I, lerne = learn/learning, Deutsch = German.', 2, 3),
  ('00000000-0000-4000-a000-000032861910', 'sentence_order', 'Order the sentence.', '[]', 'Ich lerne Deutsch.', 'Subject + verb + object in German.', 2, 4),
  ('00000000-0000-4000-a000-000032861910', 'matching', 'Match the words with their meanings.', '["Match pairs correctly"]', 'Correct pairs', 'Test your vocabulary knowledge.', 2, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-000032861910', 'multiple_choice', 'What is the main topic of this lesson?', '["Job Applications","Sports","Music","Travel"]', 'Job Applications', 1, 1),
  ('00000000-0000-4000-a000-000032861910', 'true_false', 'This lesson teaches vocabulary about Job Applications.', '["True","False"]', 'True', 1, 2),
  ('00000000-0000-4000-a000-000032861910', 'true_false', 'German word order is always the same as English.', '["True","False"]', 'False', 1, 3),
  ('00000000-0000-4000-a000-000032861910', 'multiple_choice', 'How do you say "please" in German?', '["Danke","Bitte","Tschüss","Hallo"]', 'Bitte', 1, 4),
  ('00000000-0000-4000-a000-000032861910', 'multiple_choice', 'Which article is feminine?', '["der","die","das","den"]', 'die', 1, 5),
  ('00000000-0000-4000-a000-000032861910', 'fill_blank', 'Ich ___ (to be) Student.', '["bin","bist","ist","sind"]', 'bin', 1, 6),
  ('00000000-0000-4000-a000-000032861910', 'multiple_choice', 'What is the correct word order?', '["Ich lerne Deutsch","Ich Deutsch lerne","Lerne ich Deutsch","Deutsch ich lerne"]', 'Ich lerne Deutsch', 1, 7),
  ('00000000-0000-4000-a000-000032861910', 'true_false', 'All German nouns are capitalized.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-000032861910', 'multiple_choice', 'How do you say "thank you" in German?', '["Bitte","Danke","Tschüss","Hallo"]', 'Danke', 1, 9),
  ('00000000-0000-4000-a000-000032861910', 'fill_blank', 'Wo ___ du? (to live)', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 1, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-000032861910', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Arbeit und Karriere', 'formal', false, 1),
  ('00000000-0000-4000-a000-000032861910', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Arbeit und Karriere', 'informal', false, 2),
  ('00000000-0000-4000-a000-000032861910', 'Bitte!', 'Please!', 'من فضلك!', 'Used in Arbeit und Karriere', 'neutral', false, 3),
  ('00000000-0000-4000-a000-000032861910', 'Danke!', 'Thanks!', 'شكراً!', 'Used in Arbeit und Karriere', 'neutral', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-000032861910', 'Hallo', 'Hello', 'Greeting', 'expression', 1),
  ('00000000-0000-4000-a000-000032861910', 'Danke', 'Thanks', 'Politeness', 'expression', 2),
  ('00000000-0000-4000-a000-000032861910', 'Bitte', 'Please', 'Politeness', 'expression', 3),
  ('00000000-0000-4000-a000-000032861910', 'Tschüss', 'Bye', 'Farewell', 'expression', 4);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-000032861910', 'Bewerbung und Lebenslauf — Leseübung', 'In der heutigen Arbeitswelt verändern sich die Anforderungen ständig. Immer mehr Berufe erfordern digitale Kompetenzen. Wer im Beruf erfolgreich sein möchte, sollte sich kontinuierlich weiterbilden. In Deutschland gibt es viele Möglichkeiten zur beruflichen Weiterbildung, zum Beispiel über die Arbeitsagentur oder die Industrie- und Handelskammer. Auch ein Studium neben dem Beruf wird immer beliebter. Viele Unternehmen unterstützen ihre Mitarbeiter bei der Weiterbildung durch flexible Arbeitszeiten oder finanzielle Zuschüsse.', 'In today''s working world, requirements are constantly changing. More and more professions require digital skills. Anyone who wants to be successful in their career should continuously educate themselves. In Germany there are many opportunities for professional development, for example through the employment agency or the Chamber of Industry and Commerce. Studying alongside work is also becoming increasingly popular. Many companies support their employees in further training through flexible working hours or financial subsidies.', 'في عالم العمل اليوم تتغير المتطلبات باستمرار. المزيد والمزيد من المهن تتطلب مهارات رقمية. من يريد النجاح في مهنته يجب أن يواصل تعليمه. في ألمانيا هناك فرص كثيرة للتطوير المهني، مثلاً عبر وكالة العمل أو غرفة الصناعة والتجارة. الدراسة إلى جانب العمل أصبحت أيضاً أكثر شعبية. العديد من الشركات تدعم موظفيها في التدريب المستمر من خلال ساعات عمل مرنة أو إعانات مالية.', 67, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, duration_seconds, speaker_count, scenario) values
  ('00000000-0000-4000-a000-000032861910', 'Bewerbung und Lebenslauf — Hörverständnis', '[Chef]: Guten Morgen, Herr Schmidt. Haben Sie die Präsentation fertig?

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

[Chef]: نعم، فكرة جيدة. ولا تنسوا المستندات.', 60, 2, 'Arbeit und Karriere');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-000032861910', 'Speaking: Bewerbung und Lebenslauf', 'Practice talking about Job Applications. Answer questions and have a simple conversation.', 'Job Applications', ARRAY['Use full sentences','Speak clearly','Don''t worry about mistakes']::text[], ARRAY['der Beruf','die Firma','der Kollege','das Büro','die Besprechung']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-000032861910', 'Writing: Bewerbung und Lebenslauf', 'Write a short text about Job Applications. Use at least 5 vocabulary words from this lesson.', ARRAY['Start with a greeting','Use the vocabulary from this lesson','Check your grammar']::text[], ARRAY['der Beruf','die Firma','der Kollege']::text[], '["Sentence structure","Vocabulary usage"]', 50, 150, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000032861910', 'Bewerbung und Lebenslauf — Roleplay', 'Job Applications', 'Student', 'Teacher', 'Practice conversation about Job Applications', 'Hallo! Lass uns über dieses Thema sprechen.', 'intermediate', 1, ARRAY['der Beruf','die Firma','der Kollege','das Büro','die Besprechung','der Chef','das Gehalt','die Stelle']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000032861910', 'Bewerbung und Lebenslauf — Advanced Roleplay', 'Job Applications', 'Customer', 'Assistant', 'Extended conversation about Job Applications', 'Guten Tag! Wie kann ich Ihnen helfen?', 'intermediate', 2, ARRAY['der Beruf','die Firma','der Kollege','das Büro','die Besprechung','der Chef','das Gehalt','die Stelle']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-000032861910', 'Bewerbung und Lebenslauf — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Bewerbung und Lebenslauf".', 'Creative practice for Job Applications', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-000032861910', 'Homework: Bewerbung und Lebenslauf', 'Complete these tasks to reinforce "Bewerbung und Lebenslauf".', 'mixed', '[{"description":"Review all vocabulary from this lesson"},{"description":"Write 5 sentences using the grammar structure"},{"description":"Practice the dialogue aloud"}]', 35, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-000032861910', 'In this lesson you learned about Job Applications. You practiced vocabulary related to work and grammar structure present_tense.', '["Mastered vocabulary about Job Applications","Applied present_tense correctly","Read and understood a text about Job Applications","Practiced speaking about Job Applications"]', '[{"title":"Bewerbung und Lebenslauf Review","summary":"present_tense — the main grammar focus of this lesson."}]', ARRAY['Job Applications core vocabulary','work key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)','Verb is always in second position']::text[], ARRAY['Practice 15-20 minutes daily','Use new vocabulary in real sentences','Speak out loud to improve pronunciation']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000032861910', 'translation', 'Translate to German: "This is a translation exercise."', '[]', 'Das ist eine Übersetzungsübung.', 'Use "das ist" for "this is"', 1, 40);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000032861910', 'Culture: Job Applications in German-Speaking Countries', 'Learn how Job Applications is approached in German culture.

تعلم كيف يتم التعامل مع Job Applications في الثقافة الألمانية.', '["Tip: Be direct and polite","Tip: Use formal language with strangers","Tip: Respect punctuality"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000032861910', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Common error for Arabic speakers","correction":"Correct version","explanation":"Explanation of the error"}]', 30);

  -- Lesson 3: Das Vorstellungsgespräch (L-B1-02-03)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-00003286190f', '00000000-0000-4000-a000-000039c2eae0', 'Das Vorstellungsgespräch', 'Practice job interviews with common questions.', 'Job Interviews', 'dialogue', '["Understand and use vocabulary related to Job Interviews","Apply present_tense correctly","Read and comprehend a text about Job Interviews","Listen and understand a dialogue about Job Interviews","Speak about Job Interviews in simple sentences","Write a short text about Job Interviews"]', 60, 3, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-00003286190f', 'der Beruf', 'المهنة', 'profession', 'der', 'die Berufe', 'noun', 'Was ist dein Beruf?', 'What is your profession?', 'A1', 1),
  ('00000000-0000-4000-a000-00003286190f', 'die Firma', 'الشركة', 'company', 'die', 'die Firmen', 'noun', 'Die Firma ist in Berlin.', 'The company is in Berlin.', 'A1', 2),
  ('00000000-0000-4000-a000-00003286190f', 'der Kollege', 'الزميل', 'colleague', 'der', 'die Kollegen', 'noun', 'Mein Kollege hilft mir.', 'My colleague helps me.', 'A1', 3),
  ('00000000-0000-4000-a000-00003286190f', 'das Büro', 'المكتب', 'office', 'das', 'die Büros', 'noun', 'Das Büro ist im dritten Stock.', 'The office is on the third floor.', 'A1', 4),
  ('00000000-0000-4000-a000-00003286190f', 'die Besprechung', 'الاجتماع', 'meeting', 'die', 'die Besprechungen', 'noun', 'Wir haben eine Besprechung.', 'We have a meeting.', 'B1', 5),
  ('00000000-0000-4000-a000-00003286190f', 'der Chef', 'المدير', 'boss', 'der', 'die Chefs', 'noun', 'Mein Chef ist freundlich.', 'My boss is friendly.', 'A1', 6),
  ('00000000-0000-4000-a000-00003286190f', 'das Gehalt', 'الراتب', 'salary', 'das', 'die Gehälter', 'noun', 'Das Gehalt ist gut.', 'The salary is good.', 'B1', 7),
  ('00000000-0000-4000-a000-00003286190f', 'die Stelle', 'الوظيفة', 'position', 'die', 'die Stellen', 'noun', 'Ich suche eine neue Stelle.', 'I am looking for a new position.', 'B1', 8),
  ('00000000-0000-4000-a000-00003286190f', 'die Schule', 'المدرسة', 'school', 'die', 'die Schulen', 'noun', 'Die Kinder gehen zur Schule.', 'The children go to school.', 'A1', 9),
  ('00000000-0000-4000-a000-00003286190f', 'der Lehrer', 'المعلم', 'teacher', 'der', 'die Lehrer', 'noun', 'Der Lehrer erklärt die Grammatik.', 'The teacher explains the grammar.', 'A1', 10),
  ('00000000-0000-4000-a000-00003286190f', 'der Student', 'الطالب', 'student', 'der', 'die Studenten', 'noun', 'Der Student lernt Deutsch.', 'The student learns German.', 'A1', 11),
  ('00000000-0000-4000-a000-00003286190f', 'die Universität', 'الجامعة', 'university', 'die', 'die Universitäten', 'noun', 'Die Universität ist alt.', 'The university is old.', 'B1', 12),
  ('00000000-0000-4000-a000-00003286190f', 'der Kurs', 'الدورة', 'course', 'der', 'die Kurse', 'noun', 'Der Kurs kostet 200 Euro.', 'The course costs 200 euros.', 'A2', 13),
  ('00000000-0000-4000-a000-00003286190f', 'die Prüfung', 'الامتحان', 'exam', 'die', 'die Prüfungen', 'noun', 'Die Prüfung ist schwer.', 'The exam is difficult.', 'B1', 14),
  ('00000000-0000-4000-a000-00003286190f', 'das Studium', 'الدراسة الجامعية', 'studies', 'das', NULL, 'noun', 'Mein Studium dauert vier Jahre.', 'My studies take four years.', 'B1', 15),
  ('00000000-0000-4000-a000-00003286190f', 'lernen', 'يتعلم', 'to learn', NULL, NULL, 'verb', 'Ich lerne Deutsch.', 'I learn German.', 'A1', 16),
  ('00000000-0000-4000-a000-00003286190f', 'die Zeitung', 'الجريدة', 'newspaper', 'die', 'die Zeitungen', 'noun', 'Ich lese die Zeitung.', 'I read the newspaper.', 'A2', 17),
  ('00000000-0000-4000-a000-00003286190f', 'das Internet', 'الإنترنت', 'internet', 'das', NULL, 'noun', 'Das Internet ist schnell.', 'The internet is fast.', 'A2', 18),
  ('00000000-0000-4000-a000-00003286190f', 'der Artikel', 'المقال', 'article', 'der', 'die Artikel', 'noun', 'Der Artikel ist interessant.', 'The article is interesting.', 'B1', 19),
  ('00000000-0000-4000-a000-00003286190f', 'die Nachricht', 'الخبر', 'news', 'die', 'die Nachrichten', 'noun', 'Ich sehe die Nachrichten.', 'I watch the news.', 'A2', 20),
  ('00000000-0000-4000-a000-00003286190f', 'das Radio', 'الراديو', 'radio', 'das', 'die Radios', 'noun', 'Ich höre Radio.', 'I listen to the radio.', 'A2', 21),
  ('00000000-0000-4000-a000-00003286190f', 'das Fernsehen', 'التلفاز', 'television', 'das', NULL, 'noun', 'Das Fernsehen läuft.', 'The television is on.', 'A2', 22),
  ('00000000-0000-4000-a000-00003286190f', 'die Zeitschrift', 'المجلة', 'magazine', 'die', 'die Zeitschriften', 'noun', 'Die Zeitschrift erscheint monatlich.', 'The magazine is published monthly.', 'B1', 23),
  ('00000000-0000-4000-a000-00003286190f', 'der Journalist', 'الصحفي', 'journalist', 'der', 'die Journalisten', 'noun', 'Der Journalist schreibt einen Artikel.', 'The journalist writes an article.', 'B1', 24),
  ('00000000-0000-4000-a000-00003286190f', 'die Gesellschaft', 'المجتمع', 'society', 'die', NULL, 'noun', 'Die Gesellschaft verändert sich.', 'Society is changing.', 'B1', 25),
  ('00000000-0000-4000-a000-00003286190f', 'die Politik', 'السياسة', 'politics', 'die', NULL, 'noun', 'Politik ist ein wichtiges Thema.', 'Politics is an important topic.', 'B1', 26),
  ('00000000-0000-4000-a000-00003286190f', 'die Integration', 'الاندماج', 'integration', 'die', NULL, 'noun', 'Integration ist wichtig.', 'Integration is important.', 'B1', 27),
  ('00000000-0000-4000-a000-00003286190f', 'die Kultur', 'الثقافة', 'culture', 'die', NULL, 'noun', 'Die deutsche Kultur ist vielfältig.', 'German culture is diverse.', 'A2', 28),
  ('00000000-0000-4000-a000-00003286190f', 'der Bürger', 'المواطن', 'citizen', 'der', 'die Bürger', 'noun', 'Die Bürger wählen.', 'The citizens vote.', 'B1', 29),
  ('00000000-0000-4000-a000-00003286190f', 'die Freiheit', 'الحرية', 'freedom', 'die', NULL, 'noun', 'Freiheit ist ein Grundrecht.', 'Freedom is a basic right.', 'B1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00003286190f', 'Präsens der regelmäßigen Verben (Present Tense) / المضارع للأفعال المنتظمة', 'In German, regular verbs follow a consistent pattern. The infinitive ends in -en. Remove the -en and add the personal endings: ich -e, du -st, er/sie/es -t, wir -en, ihr -t, sie/Sie -en. For most Arabic speakers, this is easier than Arabic verb conjugation because German has fewer forms.', '[{"rule":"ich: stem + e","note":"Ich lerne, ich wohne, ich arbeite"},{"rule":"du: stem + st","note":"Du lernst, du wohnst, du arbeitest"},{"rule":"er/sie/es: stem + t","note":"Er lernt, sie wohnt, es arbeitet"},{"rule":"wir: stem + en","note":"Wir lernen, wir wohnen, wir arbeiten"},{"rule":"ihr: stem + t","note":"Ihr lernt, ihr wohnt, ihr arbeitet"},{"rule":"sie/Sie: stem + en","note":"Sie lernen, Sie wohnen"}]', '[{"german":"Ich lerne Deutsch.","arabic":"أنا أتعلم الألمانية.","english":"I am learning German."},{"german":"Du wohnst in Berlin.","arabic":"أنت تسكن في برلين.","english":"You live in Berlin."},{"german":"Er arbeitet bei Siemens.","arabic":"هو يعمل في سيمنز.","english":"He works at Siemens."}]', '[{"mistake":"Ich lernen Deutsch","correction":"Ich lerne Deutsch","explanation":"After \"ich\" we use the stem + e, not the infinitive."},{"mistake":"Er lerne Deutsch","correction":"Er lernt Deutsch","explanation":"After \"er/sie/es\" we add -t, not -e."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00003286190f', 'multiple_choice', 'What does "der Beruf" mean?', '["The","A","This","That"]', 'The', 'This is a basic vocabulary item.', 1, 1),
  ('00000000-0000-4000-a000-00003286190f', 'fill_gap', 'Complete with the correct form.', '["Option 1","Option 2","Option 3"]', 'Option 1', 'Practice grammar in context.', 1, 2),
  ('00000000-0000-4000-a000-00003286190f', 'translation', 'Translate: "I learn German."', '["Ich lerne Deutsch.","Ich lerne Englisch.","Ich lerne Spanisch."]', 'Ich lerne Deutsch.', 'Ich = I, lerne = learn/learning, Deutsch = German.', 2, 3),
  ('00000000-0000-4000-a000-00003286190f', 'sentence_order', 'Order the sentence.', '[]', 'Ich lerne Deutsch.', 'Subject + verb + object in German.', 2, 4),
  ('00000000-0000-4000-a000-00003286190f', 'matching', 'Match the words with their meanings.', '["Match pairs correctly"]', 'Correct pairs', 'Test your vocabulary knowledge.', 2, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-00003286190f', 'multiple_choice', 'What is the main topic of this lesson?', '["Job Interviews","Sports","Music","Travel"]', 'Job Interviews', 1, 1),
  ('00000000-0000-4000-a000-00003286190f', 'true_false', 'This lesson teaches vocabulary about Job Interviews.', '["True","False"]', 'True', 1, 2),
  ('00000000-0000-4000-a000-00003286190f', 'true_false', 'German word order is always the same as English.', '["True","False"]', 'False', 1, 3),
  ('00000000-0000-4000-a000-00003286190f', 'multiple_choice', 'How do you say "please" in German?', '["Danke","Bitte","Tschüss","Hallo"]', 'Bitte', 1, 4),
  ('00000000-0000-4000-a000-00003286190f', 'multiple_choice', 'Which article is feminine?', '["der","die","das","den"]', 'die', 1, 5),
  ('00000000-0000-4000-a000-00003286190f', 'fill_blank', 'Ich ___ (to be) Student.', '["bin","bist","ist","sind"]', 'bin', 1, 6),
  ('00000000-0000-4000-a000-00003286190f', 'multiple_choice', 'What is the correct word order?', '["Ich lerne Deutsch","Ich Deutsch lerne","Lerne ich Deutsch","Deutsch ich lerne"]', 'Ich lerne Deutsch', 1, 7),
  ('00000000-0000-4000-a000-00003286190f', 'true_false', 'All German nouns are capitalized.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-00003286190f', 'multiple_choice', 'How do you say "thank you" in German?', '["Bitte","Danke","Tschüss","Hallo"]', 'Danke', 1, 9),
  ('00000000-0000-4000-a000-00003286190f', 'fill_blank', 'Wo ___ du? (to live)', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 1, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-00003286190f', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Arbeit und Karriere', 'formal', false, 1),
  ('00000000-0000-4000-a000-00003286190f', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Arbeit und Karriere', 'informal', false, 2),
  ('00000000-0000-4000-a000-00003286190f', 'Bitte!', 'Please!', 'من فضلك!', 'Used in Arbeit und Karriere', 'neutral', false, 3),
  ('00000000-0000-4000-a000-00003286190f', 'Danke!', 'Thanks!', 'شكراً!', 'Used in Arbeit und Karriere', 'neutral', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-00003286190f', 'Hallo', 'Hello', 'Greeting', 'expression', 1),
  ('00000000-0000-4000-a000-00003286190f', 'Danke', 'Thanks', 'Politeness', 'expression', 2),
  ('00000000-0000-4000-a000-00003286190f', 'Bitte', 'Please', 'Politeness', 'expression', 3),
  ('00000000-0000-4000-a000-00003286190f', 'Tschüss', 'Bye', 'Farewell', 'expression', 4);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-00003286190f', 'Das Vorstellungsgespräch — Leseübung', 'In der heutigen Arbeitswelt verändern sich die Anforderungen ständig. Immer mehr Berufe erfordern digitale Kompetenzen. Wer im Beruf erfolgreich sein möchte, sollte sich kontinuierlich weiterbilden. In Deutschland gibt es viele Möglichkeiten zur beruflichen Weiterbildung, zum Beispiel über die Arbeitsagentur oder die Industrie- und Handelskammer. Auch ein Studium neben dem Beruf wird immer beliebter. Viele Unternehmen unterstützen ihre Mitarbeiter bei der Weiterbildung durch flexible Arbeitszeiten oder finanzielle Zuschüsse.', 'In today''s working world, requirements are constantly changing. More and more professions require digital skills. Anyone who wants to be successful in their career should continuously educate themselves. In Germany there are many opportunities for professional development, for example through the employment agency or the Chamber of Industry and Commerce. Studying alongside work is also becoming increasingly popular. Many companies support their employees in further training through flexible working hours or financial subsidies.', 'في عالم العمل اليوم تتغير المتطلبات باستمرار. المزيد والمزيد من المهن تتطلب مهارات رقمية. من يريد النجاح في مهنته يجب أن يواصل تعليمه. في ألمانيا هناك فرص كثيرة للتطوير المهني، مثلاً عبر وكالة العمل أو غرفة الصناعة والتجارة. الدراسة إلى جانب العمل أصبحت أيضاً أكثر شعبية. العديد من الشركات تدعم موظفيها في التدريب المستمر من خلال ساعات عمل مرنة أو إعانات مالية.', 67, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, duration_seconds, speaker_count, scenario) values
  ('00000000-0000-4000-a000-00003286190f', 'Das Vorstellungsgespräch — Hörverständnis', '[Chef]: Guten Morgen, Herr Schmidt. Haben Sie die Präsentation fertig?

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

[Chef]: نعم، فكرة جيدة. ولا تنسوا المستندات.', 60, 2, 'Arbeit und Karriere');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-00003286190f', 'Speaking: Das Vorstellungsgespräch', 'Practice talking about Job Interviews. Answer questions and have a simple conversation.', 'Job Interviews', ARRAY['Use full sentences','Speak clearly','Don''t worry about mistakes']::text[], ARRAY['der Beruf','die Firma','der Kollege','das Büro','die Besprechung']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-00003286190f', 'Writing: Das Vorstellungsgespräch', 'Write a short text about Job Interviews. Use at least 5 vocabulary words from this lesson.', ARRAY['Start with a greeting','Use the vocabulary from this lesson','Check your grammar']::text[], ARRAY['der Beruf','die Firma','der Kollege']::text[], '["Sentence structure","Vocabulary usage"]', 50, 150, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00003286190f', 'Das Vorstellungsgespräch — Roleplay', 'Job Interviews', 'Student', 'Teacher', 'Practice conversation about Job Interviews', 'Hallo! Lass uns über dieses Thema sprechen.', 'intermediate', 1, ARRAY['der Beruf','die Firma','der Kollege','das Büro','die Besprechung','der Chef','das Gehalt','die Stelle']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00003286190f', 'Das Vorstellungsgespräch — Advanced Roleplay', 'Job Interviews', 'Customer', 'Assistant', 'Extended conversation about Job Interviews', 'Guten Tag! Wie kann ich Ihnen helfen?', 'intermediate', 2, ARRAY['der Beruf','die Firma','der Kollege','das Büro','die Besprechung','der Chef','das Gehalt','die Stelle']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-00003286190f', 'Das Vorstellungsgespräch — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Das Vorstellungsgespräch".', 'Creative practice for Job Interviews', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-00003286190f', 'Homework: Das Vorstellungsgespräch', 'Complete these tasks to reinforce "Das Vorstellungsgespräch".', 'mixed', '[{"description":"Review all vocabulary from this lesson"},{"description":"Write 5 sentences using the grammar structure"},{"description":"Practice the dialogue aloud"}]', 35, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-00003286190f', 'In this lesson you learned about Job Interviews. You practiced vocabulary related to work and grammar structure present_tense.', '["Mastered vocabulary about Job Interviews","Applied present_tense correctly","Read and understood a text about Job Interviews","Practiced speaking about Job Interviews"]', '[{"title":"Das Vorstellungsgespräch Review","summary":"present_tense — the main grammar focus of this lesson."}]', ARRAY['Job Interviews core vocabulary','work key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)','Verb is always in second position']::text[], ARRAY['Practice 15-20 minutes daily','Use new vocabulary in real sentences','Speak out loud to improve pronunciation']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00003286190f', 'translation', 'Translate to German: "This is a translation exercise."', '[]', 'Das ist eine Übersetzungsübung.', 'Use "das ist" for "this is"', 1, 40);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00003286190f', 'Culture: Job Interviews in German-Speaking Countries', 'Learn how Job Interviews is approached in German culture.

تعلم كيف يتم التعامل مع Job Interviews في الثقافة الألمانية.', '["Tip: Be direct and polite","Tip: Use formal language with strangers","Tip: Respect punctuality"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00003286190f', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Common error for Arabic speakers","correction":"Correct version","explanation":"Explanation of the error"}]', 30);

  -- Lesson 4: Konjunktiv II (würde + Infinitiv) (L-B1-02-04)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-00003286190e', '00000000-0000-4000-a000-000039c2eae0', 'Konjunktiv II (würde + Infinitiv)', 'Learn the subjunctive for polite requests and hypotheticals.', 'Konjunktiv II', 'grammar', '["Understand and use vocabulary related to Konjunktiv II","Apply present_tense correctly","Read and comprehend a text about Konjunktiv II","Listen and understand a dialogue about Konjunktiv II","Speak about Konjunktiv II in simple sentences","Write a short text about Konjunktiv II"]', 60, 4, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-00003286190e', 'der Beruf', 'المهنة', 'profession', 'der', 'die Berufe', 'noun', 'Was ist dein Beruf?', 'What is your profession?', 'A1', 1),
  ('00000000-0000-4000-a000-00003286190e', 'die Firma', 'الشركة', 'company', 'die', 'die Firmen', 'noun', 'Die Firma ist in Berlin.', 'The company is in Berlin.', 'A1', 2),
  ('00000000-0000-4000-a000-00003286190e', 'der Kollege', 'الزميل', 'colleague', 'der', 'die Kollegen', 'noun', 'Mein Kollege hilft mir.', 'My colleague helps me.', 'A1', 3),
  ('00000000-0000-4000-a000-00003286190e', 'das Büro', 'المكتب', 'office', 'das', 'die Büros', 'noun', 'Das Büro ist im dritten Stock.', 'The office is on the third floor.', 'A1', 4),
  ('00000000-0000-4000-a000-00003286190e', 'die Besprechung', 'الاجتماع', 'meeting', 'die', 'die Besprechungen', 'noun', 'Wir haben eine Besprechung.', 'We have a meeting.', 'B1', 5),
  ('00000000-0000-4000-a000-00003286190e', 'der Chef', 'المدير', 'boss', 'der', 'die Chefs', 'noun', 'Mein Chef ist freundlich.', 'My boss is friendly.', 'A1', 6),
  ('00000000-0000-4000-a000-00003286190e', 'das Gehalt', 'الراتب', 'salary', 'das', 'die Gehälter', 'noun', 'Das Gehalt ist gut.', 'The salary is good.', 'B1', 7),
  ('00000000-0000-4000-a000-00003286190e', 'die Stelle', 'الوظيفة', 'position', 'die', 'die Stellen', 'noun', 'Ich suche eine neue Stelle.', 'I am looking for a new position.', 'B1', 8),
  ('00000000-0000-4000-a000-00003286190e', 'die Schule', 'المدرسة', 'school', 'die', 'die Schulen', 'noun', 'Die Kinder gehen zur Schule.', 'The children go to school.', 'A1', 9),
  ('00000000-0000-4000-a000-00003286190e', 'der Lehrer', 'المعلم', 'teacher', 'der', 'die Lehrer', 'noun', 'Der Lehrer erklärt die Grammatik.', 'The teacher explains the grammar.', 'A1', 10),
  ('00000000-0000-4000-a000-00003286190e', 'der Student', 'الطالب', 'student', 'der', 'die Studenten', 'noun', 'Der Student lernt Deutsch.', 'The student learns German.', 'A1', 11),
  ('00000000-0000-4000-a000-00003286190e', 'die Universität', 'الجامعة', 'university', 'die', 'die Universitäten', 'noun', 'Die Universität ist alt.', 'The university is old.', 'B1', 12),
  ('00000000-0000-4000-a000-00003286190e', 'der Kurs', 'الدورة', 'course', 'der', 'die Kurse', 'noun', 'Der Kurs kostet 200 Euro.', 'The course costs 200 euros.', 'A2', 13),
  ('00000000-0000-4000-a000-00003286190e', 'die Prüfung', 'الامتحان', 'exam', 'die', 'die Prüfungen', 'noun', 'Die Prüfung ist schwer.', 'The exam is difficult.', 'B1', 14),
  ('00000000-0000-4000-a000-00003286190e', 'das Studium', 'الدراسة الجامعية', 'studies', 'das', NULL, 'noun', 'Mein Studium dauert vier Jahre.', 'My studies take four years.', 'B1', 15),
  ('00000000-0000-4000-a000-00003286190e', 'lernen', 'يتعلم', 'to learn', NULL, NULL, 'verb', 'Ich lerne Deutsch.', 'I learn German.', 'A1', 16),
  ('00000000-0000-4000-a000-00003286190e', 'die Zeitung', 'الجريدة', 'newspaper', 'die', 'die Zeitungen', 'noun', 'Ich lese die Zeitung.', 'I read the newspaper.', 'A2', 17),
  ('00000000-0000-4000-a000-00003286190e', 'das Internet', 'الإنترنت', 'internet', 'das', NULL, 'noun', 'Das Internet ist schnell.', 'The internet is fast.', 'A2', 18),
  ('00000000-0000-4000-a000-00003286190e', 'der Artikel', 'المقال', 'article', 'der', 'die Artikel', 'noun', 'Der Artikel ist interessant.', 'The article is interesting.', 'B1', 19),
  ('00000000-0000-4000-a000-00003286190e', 'die Nachricht', 'الخبر', 'news', 'die', 'die Nachrichten', 'noun', 'Ich sehe die Nachrichten.', 'I watch the news.', 'A2', 20),
  ('00000000-0000-4000-a000-00003286190e', 'das Radio', 'الراديو', 'radio', 'das', 'die Radios', 'noun', 'Ich höre Radio.', 'I listen to the radio.', 'A2', 21),
  ('00000000-0000-4000-a000-00003286190e', 'das Fernsehen', 'التلفاز', 'television', 'das', NULL, 'noun', 'Das Fernsehen läuft.', 'The television is on.', 'A2', 22),
  ('00000000-0000-4000-a000-00003286190e', 'die Zeitschrift', 'المجلة', 'magazine', 'die', 'die Zeitschriften', 'noun', 'Die Zeitschrift erscheint monatlich.', 'The magazine is published monthly.', 'B1', 23),
  ('00000000-0000-4000-a000-00003286190e', 'der Journalist', 'الصحفي', 'journalist', 'der', 'die Journalisten', 'noun', 'Der Journalist schreibt einen Artikel.', 'The journalist writes an article.', 'B1', 24),
  ('00000000-0000-4000-a000-00003286190e', 'die Gesellschaft', 'المجتمع', 'society', 'die', NULL, 'noun', 'Die Gesellschaft verändert sich.', 'Society is changing.', 'B1', 25),
  ('00000000-0000-4000-a000-00003286190e', 'die Politik', 'السياسة', 'politics', 'die', NULL, 'noun', 'Politik ist ein wichtiges Thema.', 'Politics is an important topic.', 'B1', 26),
  ('00000000-0000-4000-a000-00003286190e', 'die Integration', 'الاندماج', 'integration', 'die', NULL, 'noun', 'Integration ist wichtig.', 'Integration is important.', 'B1', 27),
  ('00000000-0000-4000-a000-00003286190e', 'die Kultur', 'الثقافة', 'culture', 'die', NULL, 'noun', 'Die deutsche Kultur ist vielfältig.', 'German culture is diverse.', 'A2', 28),
  ('00000000-0000-4000-a000-00003286190e', 'der Bürger', 'المواطن', 'citizen', 'der', 'die Bürger', 'noun', 'Die Bürger wählen.', 'The citizens vote.', 'B1', 29),
  ('00000000-0000-4000-a000-00003286190e', 'die Freiheit', 'الحرية', 'freedom', 'die', NULL, 'noun', 'Freiheit ist ein Grundrecht.', 'Freedom is a basic right.', 'B1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00003286190e', 'Präsens der regelmäßigen Verben (Present Tense) / المضارع للأفعال المنتظمة', 'In German, regular verbs follow a consistent pattern. The infinitive ends in -en. Remove the -en and add the personal endings: ich -e, du -st, er/sie/es -t, wir -en, ihr -t, sie/Sie -en. For most Arabic speakers, this is easier than Arabic verb conjugation because German has fewer forms.', '[{"rule":"ich: stem + e","note":"Ich lerne, ich wohne, ich arbeite"},{"rule":"du: stem + st","note":"Du lernst, du wohnst, du arbeitest"},{"rule":"er/sie/es: stem + t","note":"Er lernt, sie wohnt, es arbeitet"},{"rule":"wir: stem + en","note":"Wir lernen, wir wohnen, wir arbeiten"},{"rule":"ihr: stem + t","note":"Ihr lernt, ihr wohnt, ihr arbeitet"},{"rule":"sie/Sie: stem + en","note":"Sie lernen, Sie wohnen"}]', '[{"german":"Ich lerne Deutsch.","arabic":"أنا أتعلم الألمانية.","english":"I am learning German."},{"german":"Du wohnst in Berlin.","arabic":"أنت تسكن في برلين.","english":"You live in Berlin."},{"german":"Er arbeitet bei Siemens.","arabic":"هو يعمل في سيمنز.","english":"He works at Siemens."}]', '[{"mistake":"Ich lernen Deutsch","correction":"Ich lerne Deutsch","explanation":"After \"ich\" we use the stem + e, not the infinitive."},{"mistake":"Er lerne Deutsch","correction":"Er lernt Deutsch","explanation":"After \"er/sie/es\" we add -t, not -e."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00003286190e', 'multiple_choice', 'What does "der Beruf" mean?', '["The","A","This","That"]', 'The', 'This is a basic vocabulary item.', 1, 1),
  ('00000000-0000-4000-a000-00003286190e', 'fill_gap', 'Complete with the correct form.', '["Option 1","Option 2","Option 3"]', 'Option 1', 'Practice grammar in context.', 1, 2),
  ('00000000-0000-4000-a000-00003286190e', 'translation', 'Translate: "I learn German."', '["Ich lerne Deutsch.","Ich lerne Englisch.","Ich lerne Spanisch."]', 'Ich lerne Deutsch.', 'Ich = I, lerne = learn/learning, Deutsch = German.', 2, 3),
  ('00000000-0000-4000-a000-00003286190e', 'sentence_order', 'Order the sentence.', '[]', 'Ich lerne Deutsch.', 'Subject + verb + object in German.', 2, 4),
  ('00000000-0000-4000-a000-00003286190e', 'matching', 'Match the words with their meanings.', '["Match pairs correctly"]', 'Correct pairs', 'Test your vocabulary knowledge.', 2, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-00003286190e', 'multiple_choice', 'What is the main topic of this lesson?', '["Konjunktiv II","Sports","Music","Travel"]', 'Konjunktiv II', 1, 1),
  ('00000000-0000-4000-a000-00003286190e', 'true_false', 'This lesson teaches vocabulary about Konjunktiv II.', '["True","False"]', 'True', 1, 2),
  ('00000000-0000-4000-a000-00003286190e', 'true_false', 'German word order is always the same as English.', '["True","False"]', 'False', 1, 3),
  ('00000000-0000-4000-a000-00003286190e', 'multiple_choice', 'How do you say "please" in German?', '["Danke","Bitte","Tschüss","Hallo"]', 'Bitte', 1, 4),
  ('00000000-0000-4000-a000-00003286190e', 'multiple_choice', 'Which article is feminine?', '["der","die","das","den"]', 'die', 1, 5),
  ('00000000-0000-4000-a000-00003286190e', 'fill_blank', 'Ich ___ (to be) Student.', '["bin","bist","ist","sind"]', 'bin', 1, 6),
  ('00000000-0000-4000-a000-00003286190e', 'multiple_choice', 'What is the correct word order?', '["Ich lerne Deutsch","Ich Deutsch lerne","Lerne ich Deutsch","Deutsch ich lerne"]', 'Ich lerne Deutsch', 1, 7),
  ('00000000-0000-4000-a000-00003286190e', 'true_false', 'All German nouns are capitalized.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-00003286190e', 'multiple_choice', 'How do you say "thank you" in German?', '["Bitte","Danke","Tschüss","Hallo"]', 'Danke', 1, 9),
  ('00000000-0000-4000-a000-00003286190e', 'fill_blank', 'Wo ___ du? (to live)', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 1, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-00003286190e', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Arbeit und Karriere', 'formal', false, 1),
  ('00000000-0000-4000-a000-00003286190e', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Arbeit und Karriere', 'informal', false, 2),
  ('00000000-0000-4000-a000-00003286190e', 'Bitte!', 'Please!', 'من فضلك!', 'Used in Arbeit und Karriere', 'neutral', false, 3),
  ('00000000-0000-4000-a000-00003286190e', 'Danke!', 'Thanks!', 'شكراً!', 'Used in Arbeit und Karriere', 'neutral', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-00003286190e', 'Hallo', 'Hello', 'Greeting', 'expression', 1),
  ('00000000-0000-4000-a000-00003286190e', 'Danke', 'Thanks', 'Politeness', 'expression', 2),
  ('00000000-0000-4000-a000-00003286190e', 'Bitte', 'Please', 'Politeness', 'expression', 3),
  ('00000000-0000-4000-a000-00003286190e', 'Tschüss', 'Bye', 'Farewell', 'expression', 4);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-00003286190e', 'Konjunktiv II (würde + Infinitiv) — Leseübung', 'In der heutigen Arbeitswelt verändern sich die Anforderungen ständig. Immer mehr Berufe erfordern digitale Kompetenzen. Wer im Beruf erfolgreich sein möchte, sollte sich kontinuierlich weiterbilden. In Deutschland gibt es viele Möglichkeiten zur beruflichen Weiterbildung, zum Beispiel über die Arbeitsagentur oder die Industrie- und Handelskammer. Auch ein Studium neben dem Beruf wird immer beliebter. Viele Unternehmen unterstützen ihre Mitarbeiter bei der Weiterbildung durch flexible Arbeitszeiten oder finanzielle Zuschüsse.', 'In today''s working world, requirements are constantly changing. More and more professions require digital skills. Anyone who wants to be successful in their career should continuously educate themselves. In Germany there are many opportunities for professional development, for example through the employment agency or the Chamber of Industry and Commerce. Studying alongside work is also becoming increasingly popular. Many companies support their employees in further training through flexible working hours or financial subsidies.', 'في عالم العمل اليوم تتغير المتطلبات باستمرار. المزيد والمزيد من المهن تتطلب مهارات رقمية. من يريد النجاح في مهنته يجب أن يواصل تعليمه. في ألمانيا هناك فرص كثيرة للتطوير المهني، مثلاً عبر وكالة العمل أو غرفة الصناعة والتجارة. الدراسة إلى جانب العمل أصبحت أيضاً أكثر شعبية. العديد من الشركات تدعم موظفيها في التدريب المستمر من خلال ساعات عمل مرنة أو إعانات مالية.', 67, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, duration_seconds, speaker_count, scenario) values
  ('00000000-0000-4000-a000-00003286190e', 'Konjunktiv II (würde + Infinitiv) — Hörverständnis', '[Chef]: Guten Morgen, Herr Schmidt. Haben Sie die Präsentation fertig?

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

[Chef]: نعم، فكرة جيدة. ولا تنسوا المستندات.', 60, 2, 'Arbeit und Karriere');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-00003286190e', 'Speaking: Konjunktiv II (würde + Infinitiv)', 'Practice talking about Konjunktiv II. Answer questions and have a simple conversation.', 'Konjunktiv II', ARRAY['Use full sentences','Speak clearly','Don''t worry about mistakes']::text[], ARRAY['der Beruf','die Firma','der Kollege','das Büro','die Besprechung']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-00003286190e', 'Writing: Konjunktiv II (würde + Infinitiv)', 'Write a short text about Konjunktiv II. Use at least 5 vocabulary words from this lesson.', ARRAY['Start with a greeting','Use the vocabulary from this lesson','Check your grammar']::text[], ARRAY['der Beruf','die Firma','der Kollege']::text[], '["Sentence structure","Vocabulary usage"]', 50, 150, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00003286190e', 'Konjunktiv II (würde + Infinitiv) — Roleplay', 'Konjunktiv II', 'Student', 'Teacher', 'Practice conversation about Konjunktiv II', 'Hallo! Lass uns über dieses Thema sprechen.', 'intermediate', 1, ARRAY['der Beruf','die Firma','der Kollege','das Büro','die Besprechung','der Chef','das Gehalt','die Stelle']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00003286190e', 'Konjunktiv II (würde + Infinitiv) — Advanced Roleplay', 'Konjunktiv II', 'Customer', 'Assistant', 'Extended conversation about Konjunktiv II', 'Guten Tag! Wie kann ich Ihnen helfen?', 'intermediate', 2, ARRAY['der Beruf','die Firma','der Kollege','das Büro','die Besprechung','der Chef','das Gehalt','die Stelle']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-00003286190e', 'Konjunktiv II (würde + Infinitiv) — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Konjunktiv II (würde + Infinitiv)".', 'Creative practice for Konjunktiv II', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-00003286190e', 'Homework: Konjunktiv II (würde + Infinitiv)', 'Complete these tasks to reinforce "Konjunktiv II (würde + Infinitiv)".', 'mixed', '[{"description":"Review all vocabulary from this lesson"},{"description":"Write 5 sentences using the grammar structure"},{"description":"Practice the dialogue aloud"}]', 35, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-00003286190e', 'In this lesson you learned about Konjunktiv II. You practiced vocabulary related to work and grammar structure present_tense.', '["Mastered vocabulary about Konjunktiv II","Applied present_tense correctly","Read and understood a text about Konjunktiv II","Practiced speaking about Konjunktiv II"]', '[{"title":"Konjunktiv II (würde + Infinitiv) Review","summary":"present_tense — the main grammar focus of this lesson."}]', ARRAY['Konjunktiv II core vocabulary','work key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)','Verb is always in second position']::text[], ARRAY['Practice 15-20 minutes daily','Use new vocabulary in real sentences','Speak out loud to improve pronunciation']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00003286190e', 'translation', 'Translate to German: "This is a translation exercise."', '[]', 'Das ist eine Übersetzungsübung.', 'Use "das ist" for "this is"', 1, 40);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00003286190e', 'Culture: Konjunktiv II in German-Speaking Countries', 'Learn how Konjunktiv II is approached in German culture.

تعلم كيف يتم التعامل مع Konjunktiv II في الثقافة الألمانية.', '["Tip: Be direct and polite","Tip: Use formal language with strangers","Tip: Respect punctuality"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00003286190e', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Common error for Arabic speakers","correction":"Correct version","explanation":"Explanation of the error"}]', 30);

  -- Lesson 5: Das Passiv im Präsens (L-B1-02-05)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-00003286190d', '00000000-0000-4000-a000-000039c2eae0', 'Das Passiv im Präsens', 'Learn passive voice in present tense for formal communication.', 'Passive Voice', 'grammar', '["Understand and use vocabulary related to Passive Voice","Apply present_tense correctly","Read and comprehend a text about Passive Voice","Listen and understand a dialogue about Passive Voice","Speak about Passive Voice in simple sentences","Write a short text about Passive Voice"]', 55, 5, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-00003286190d', 'der Beruf', 'المهنة', 'profession', 'der', 'die Berufe', 'noun', 'Was ist dein Beruf?', 'What is your profession?', 'A1', 1),
  ('00000000-0000-4000-a000-00003286190d', 'die Firma', 'الشركة', 'company', 'die', 'die Firmen', 'noun', 'Die Firma ist in Berlin.', 'The company is in Berlin.', 'A1', 2),
  ('00000000-0000-4000-a000-00003286190d', 'der Kollege', 'الزميل', 'colleague', 'der', 'die Kollegen', 'noun', 'Mein Kollege hilft mir.', 'My colleague helps me.', 'A1', 3),
  ('00000000-0000-4000-a000-00003286190d', 'das Büro', 'المكتب', 'office', 'das', 'die Büros', 'noun', 'Das Büro ist im dritten Stock.', 'The office is on the third floor.', 'A1', 4),
  ('00000000-0000-4000-a000-00003286190d', 'die Besprechung', 'الاجتماع', 'meeting', 'die', 'die Besprechungen', 'noun', 'Wir haben eine Besprechung.', 'We have a meeting.', 'B1', 5),
  ('00000000-0000-4000-a000-00003286190d', 'der Chef', 'المدير', 'boss', 'der', 'die Chefs', 'noun', 'Mein Chef ist freundlich.', 'My boss is friendly.', 'A1', 6),
  ('00000000-0000-4000-a000-00003286190d', 'das Gehalt', 'الراتب', 'salary', 'das', 'die Gehälter', 'noun', 'Das Gehalt ist gut.', 'The salary is good.', 'B1', 7),
  ('00000000-0000-4000-a000-00003286190d', 'die Stelle', 'الوظيفة', 'position', 'die', 'die Stellen', 'noun', 'Ich suche eine neue Stelle.', 'I am looking for a new position.', 'B1', 8),
  ('00000000-0000-4000-a000-00003286190d', 'die Schule', 'المدرسة', 'school', 'die', 'die Schulen', 'noun', 'Die Kinder gehen zur Schule.', 'The children go to school.', 'A1', 9),
  ('00000000-0000-4000-a000-00003286190d', 'der Lehrer', 'المعلم', 'teacher', 'der', 'die Lehrer', 'noun', 'Der Lehrer erklärt die Grammatik.', 'The teacher explains the grammar.', 'A1', 10),
  ('00000000-0000-4000-a000-00003286190d', 'der Student', 'الطالب', 'student', 'der', 'die Studenten', 'noun', 'Der Student lernt Deutsch.', 'The student learns German.', 'A1', 11),
  ('00000000-0000-4000-a000-00003286190d', 'die Universität', 'الجامعة', 'university', 'die', 'die Universitäten', 'noun', 'Die Universität ist alt.', 'The university is old.', 'B1', 12),
  ('00000000-0000-4000-a000-00003286190d', 'der Kurs', 'الدورة', 'course', 'der', 'die Kurse', 'noun', 'Der Kurs kostet 200 Euro.', 'The course costs 200 euros.', 'A2', 13),
  ('00000000-0000-4000-a000-00003286190d', 'die Prüfung', 'الامتحان', 'exam', 'die', 'die Prüfungen', 'noun', 'Die Prüfung ist schwer.', 'The exam is difficult.', 'B1', 14),
  ('00000000-0000-4000-a000-00003286190d', 'das Studium', 'الدراسة الجامعية', 'studies', 'das', NULL, 'noun', 'Mein Studium dauert vier Jahre.', 'My studies take four years.', 'B1', 15),
  ('00000000-0000-4000-a000-00003286190d', 'lernen', 'يتعلم', 'to learn', NULL, NULL, 'verb', 'Ich lerne Deutsch.', 'I learn German.', 'A1', 16),
  ('00000000-0000-4000-a000-00003286190d', 'die Zeitung', 'الجريدة', 'newspaper', 'die', 'die Zeitungen', 'noun', 'Ich lese die Zeitung.', 'I read the newspaper.', 'A2', 17),
  ('00000000-0000-4000-a000-00003286190d', 'das Internet', 'الإنترنت', 'internet', 'das', NULL, 'noun', 'Das Internet ist schnell.', 'The internet is fast.', 'A2', 18),
  ('00000000-0000-4000-a000-00003286190d', 'der Artikel', 'المقال', 'article', 'der', 'die Artikel', 'noun', 'Der Artikel ist interessant.', 'The article is interesting.', 'B1', 19),
  ('00000000-0000-4000-a000-00003286190d', 'die Nachricht', 'الخبر', 'news', 'die', 'die Nachrichten', 'noun', 'Ich sehe die Nachrichten.', 'I watch the news.', 'A2', 20),
  ('00000000-0000-4000-a000-00003286190d', 'das Radio', 'الراديو', 'radio', 'das', 'die Radios', 'noun', 'Ich höre Radio.', 'I listen to the radio.', 'A2', 21),
  ('00000000-0000-4000-a000-00003286190d', 'das Fernsehen', 'التلفاز', 'television', 'das', NULL, 'noun', 'Das Fernsehen läuft.', 'The television is on.', 'A2', 22),
  ('00000000-0000-4000-a000-00003286190d', 'die Zeitschrift', 'المجلة', 'magazine', 'die', 'die Zeitschriften', 'noun', 'Die Zeitschrift erscheint monatlich.', 'The magazine is published monthly.', 'B1', 23),
  ('00000000-0000-4000-a000-00003286190d', 'der Journalist', 'الصحفي', 'journalist', 'der', 'die Journalisten', 'noun', 'Der Journalist schreibt einen Artikel.', 'The journalist writes an article.', 'B1', 24),
  ('00000000-0000-4000-a000-00003286190d', 'die Gesellschaft', 'المجتمع', 'society', 'die', NULL, 'noun', 'Die Gesellschaft verändert sich.', 'Society is changing.', 'B1', 25),
  ('00000000-0000-4000-a000-00003286190d', 'die Politik', 'السياسة', 'politics', 'die', NULL, 'noun', 'Politik ist ein wichtiges Thema.', 'Politics is an important topic.', 'B1', 26),
  ('00000000-0000-4000-a000-00003286190d', 'die Integration', 'الاندماج', 'integration', 'die', NULL, 'noun', 'Integration ist wichtig.', 'Integration is important.', 'B1', 27),
  ('00000000-0000-4000-a000-00003286190d', 'die Kultur', 'الثقافة', 'culture', 'die', NULL, 'noun', 'Die deutsche Kultur ist vielfältig.', 'German culture is diverse.', 'A2', 28),
  ('00000000-0000-4000-a000-00003286190d', 'der Bürger', 'المواطن', 'citizen', 'der', 'die Bürger', 'noun', 'Die Bürger wählen.', 'The citizens vote.', 'B1', 29),
  ('00000000-0000-4000-a000-00003286190d', 'die Freiheit', 'الحرية', 'freedom', 'die', NULL, 'noun', 'Freiheit ist ein Grundrecht.', 'Freedom is a basic right.', 'B1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00003286190d', 'Präsens der regelmäßigen Verben (Present Tense) / المضارع للأفعال المنتظمة', 'In German, regular verbs follow a consistent pattern. The infinitive ends in -en. Remove the -en and add the personal endings: ich -e, du -st, er/sie/es -t, wir -en, ihr -t, sie/Sie -en. For most Arabic speakers, this is easier than Arabic verb conjugation because German has fewer forms.', '[{"rule":"ich: stem + e","note":"Ich lerne, ich wohne, ich arbeite"},{"rule":"du: stem + st","note":"Du lernst, du wohnst, du arbeitest"},{"rule":"er/sie/es: stem + t","note":"Er lernt, sie wohnt, es arbeitet"},{"rule":"wir: stem + en","note":"Wir lernen, wir wohnen, wir arbeiten"},{"rule":"ihr: stem + t","note":"Ihr lernt, ihr wohnt, ihr arbeitet"},{"rule":"sie/Sie: stem + en","note":"Sie lernen, Sie wohnen"}]', '[{"german":"Ich lerne Deutsch.","arabic":"أنا أتعلم الألمانية.","english":"I am learning German."},{"german":"Du wohnst in Berlin.","arabic":"أنت تسكن في برلين.","english":"You live in Berlin."},{"german":"Er arbeitet bei Siemens.","arabic":"هو يعمل في سيمنز.","english":"He works at Siemens."}]', '[{"mistake":"Ich lernen Deutsch","correction":"Ich lerne Deutsch","explanation":"After \"ich\" we use the stem + e, not the infinitive."},{"mistake":"Er lerne Deutsch","correction":"Er lernt Deutsch","explanation":"After \"er/sie/es\" we add -t, not -e."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00003286190d', 'multiple_choice', 'What does "der Beruf" mean?', '["The","A","This","That"]', 'The', 'This is a basic vocabulary item.', 1, 1),
  ('00000000-0000-4000-a000-00003286190d', 'fill_gap', 'Complete with the correct form.', '["Option 1","Option 2","Option 3"]', 'Option 1', 'Practice grammar in context.', 1, 2),
  ('00000000-0000-4000-a000-00003286190d', 'translation', 'Translate: "I learn German."', '["Ich lerne Deutsch.","Ich lerne Englisch.","Ich lerne Spanisch."]', 'Ich lerne Deutsch.', 'Ich = I, lerne = learn/learning, Deutsch = German.', 2, 3),
  ('00000000-0000-4000-a000-00003286190d', 'sentence_order', 'Order the sentence.', '[]', 'Ich lerne Deutsch.', 'Subject + verb + object in German.', 2, 4),
  ('00000000-0000-4000-a000-00003286190d', 'matching', 'Match the words with their meanings.', '["Match pairs correctly"]', 'Correct pairs', 'Test your vocabulary knowledge.', 2, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-00003286190d', 'multiple_choice', 'What is the main topic of this lesson?', '["Passive Voice","Sports","Music","Travel"]', 'Passive Voice', 1, 1),
  ('00000000-0000-4000-a000-00003286190d', 'true_false', 'This lesson teaches vocabulary about Passive Voice.', '["True","False"]', 'True', 1, 2),
  ('00000000-0000-4000-a000-00003286190d', 'true_false', 'German word order is always the same as English.', '["True","False"]', 'False', 1, 3),
  ('00000000-0000-4000-a000-00003286190d', 'multiple_choice', 'How do you say "please" in German?', '["Danke","Bitte","Tschüss","Hallo"]', 'Bitte', 1, 4),
  ('00000000-0000-4000-a000-00003286190d', 'multiple_choice', 'Which article is feminine?', '["der","die","das","den"]', 'die', 1, 5),
  ('00000000-0000-4000-a000-00003286190d', 'fill_blank', 'Ich ___ (to be) Student.', '["bin","bist","ist","sind"]', 'bin', 1, 6),
  ('00000000-0000-4000-a000-00003286190d', 'multiple_choice', 'What is the correct word order?', '["Ich lerne Deutsch","Ich Deutsch lerne","Lerne ich Deutsch","Deutsch ich lerne"]', 'Ich lerne Deutsch', 1, 7),
  ('00000000-0000-4000-a000-00003286190d', 'true_false', 'All German nouns are capitalized.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-00003286190d', 'multiple_choice', 'How do you say "thank you" in German?', '["Bitte","Danke","Tschüss","Hallo"]', 'Danke', 1, 9),
  ('00000000-0000-4000-a000-00003286190d', 'fill_blank', 'Wo ___ du? (to live)', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 1, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-00003286190d', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Arbeit und Karriere', 'formal', false, 1),
  ('00000000-0000-4000-a000-00003286190d', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Arbeit und Karriere', 'informal', false, 2),
  ('00000000-0000-4000-a000-00003286190d', 'Bitte!', 'Please!', 'من فضلك!', 'Used in Arbeit und Karriere', 'neutral', false, 3),
  ('00000000-0000-4000-a000-00003286190d', 'Danke!', 'Thanks!', 'شكراً!', 'Used in Arbeit und Karriere', 'neutral', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-00003286190d', 'Hallo', 'Hello', 'Greeting', 'expression', 1),
  ('00000000-0000-4000-a000-00003286190d', 'Danke', 'Thanks', 'Politeness', 'expression', 2),
  ('00000000-0000-4000-a000-00003286190d', 'Bitte', 'Please', 'Politeness', 'expression', 3),
  ('00000000-0000-4000-a000-00003286190d', 'Tschüss', 'Bye', 'Farewell', 'expression', 4);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-00003286190d', 'Das Passiv im Präsens — Leseübung', 'In der heutigen Arbeitswelt verändern sich die Anforderungen ständig. Immer mehr Berufe erfordern digitale Kompetenzen. Wer im Beruf erfolgreich sein möchte, sollte sich kontinuierlich weiterbilden. In Deutschland gibt es viele Möglichkeiten zur beruflichen Weiterbildung, zum Beispiel über die Arbeitsagentur oder die Industrie- und Handelskammer. Auch ein Studium neben dem Beruf wird immer beliebter. Viele Unternehmen unterstützen ihre Mitarbeiter bei der Weiterbildung durch flexible Arbeitszeiten oder finanzielle Zuschüsse.', 'In today''s working world, requirements are constantly changing. More and more professions require digital skills. Anyone who wants to be successful in their career should continuously educate themselves. In Germany there are many opportunities for professional development, for example through the employment agency or the Chamber of Industry and Commerce. Studying alongside work is also becoming increasingly popular. Many companies support their employees in further training through flexible working hours or financial subsidies.', 'في عالم العمل اليوم تتغير المتطلبات باستمرار. المزيد والمزيد من المهن تتطلب مهارات رقمية. من يريد النجاح في مهنته يجب أن يواصل تعليمه. في ألمانيا هناك فرص كثيرة للتطوير المهني، مثلاً عبر وكالة العمل أو غرفة الصناعة والتجارة. الدراسة إلى جانب العمل أصبحت أيضاً أكثر شعبية. العديد من الشركات تدعم موظفيها في التدريب المستمر من خلال ساعات عمل مرنة أو إعانات مالية.', 67, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, duration_seconds, speaker_count, scenario) values
  ('00000000-0000-4000-a000-00003286190d', 'Das Passiv im Präsens — Hörverständnis', '[Chef]: Guten Morgen, Herr Schmidt. Haben Sie die Präsentation fertig?

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

[Chef]: نعم، فكرة جيدة. ولا تنسوا المستندات.', 60, 2, 'Arbeit und Karriere');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-00003286190d', 'Speaking: Das Passiv im Präsens', 'Practice talking about Passive Voice. Answer questions and have a simple conversation.', 'Passive Voice', ARRAY['Use full sentences','Speak clearly','Don''t worry about mistakes']::text[], ARRAY['der Beruf','die Firma','der Kollege','das Büro','die Besprechung']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-00003286190d', 'Writing: Das Passiv im Präsens', 'Write a short text about Passive Voice. Use at least 5 vocabulary words from this lesson.', ARRAY['Start with a greeting','Use the vocabulary from this lesson','Check your grammar']::text[], ARRAY['der Beruf','die Firma','der Kollege']::text[], '["Sentence structure","Vocabulary usage"]', 50, 150, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00003286190d', 'Das Passiv im Präsens — Roleplay', 'Passive Voice', 'Student', 'Teacher', 'Practice conversation about Passive Voice', 'Hallo! Lass uns über dieses Thema sprechen.', 'intermediate', 1, ARRAY['der Beruf','die Firma','der Kollege','das Büro','die Besprechung','der Chef','das Gehalt','die Stelle']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00003286190d', 'Das Passiv im Präsens — Advanced Roleplay', 'Passive Voice', 'Customer', 'Assistant', 'Extended conversation about Passive Voice', 'Guten Tag! Wie kann ich Ihnen helfen?', 'intermediate', 2, ARRAY['der Beruf','die Firma','der Kollege','das Büro','die Besprechung','der Chef','das Gehalt','die Stelle']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-00003286190d', 'Das Passiv im Präsens — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Das Passiv im Präsens".', 'Creative practice for Passive Voice', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-00003286190d', 'Homework: Das Passiv im Präsens', 'Complete these tasks to reinforce "Das Passiv im Präsens".', 'mixed', '[{"description":"Review all vocabulary from this lesson"},{"description":"Write 5 sentences using the grammar structure"},{"description":"Practice the dialogue aloud"}]', 35, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-00003286190d', 'In this lesson you learned about Passive Voice. You practiced vocabulary related to work and grammar structure present_tense.', '["Mastered vocabulary about Passive Voice","Applied present_tense correctly","Read and understood a text about Passive Voice","Practiced speaking about Passive Voice"]', '[{"title":"Das Passiv im Präsens Review","summary":"present_tense — the main grammar focus of this lesson."}]', ARRAY['Passive Voice core vocabulary','work key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)','Verb is always in second position']::text[], ARRAY['Practice 15-20 minutes daily','Use new vocabulary in real sentences','Speak out loud to improve pronunciation']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00003286190d', 'translation', 'Translate to German: "This is a translation exercise."', '[]', 'Das ist eine Übersetzungsübung.', 'Use "das ist" for "this is"', 1, 40);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00003286190d', 'Culture: Passive Voice in German-Speaking Countries', 'Learn how Passive Voice is approached in German culture.

تعلم كيف يتم التعامل مع Passive Voice في الثقافة الألمانية.', '["Tip: Be direct and polite","Tip: Use formal language with strangers","Tip: Respect punctuality"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00003286190d', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Common error for Arabic speakers","correction":"Correct version","explanation":"Explanation of the error"}]', 30);

  -- Lesson 6: Test: Arbeit und Karriere (L-B1-02-06)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-00003286190c', '00000000-0000-4000-a000-000039c2eae0', 'Test: Arbeit und Karriere', 'Module test on work and career.', 'Module Test', 'test', '["Understand and use vocabulary related to Module Test","Apply present_tense correctly","Read and comprehend a text about Module Test","Listen and understand a dialogue about Module Test","Speak about Module Test in simple sentences","Write a short text about Module Test"]', 45, 6, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-00003286190c', 'der Beruf', 'المهنة', 'profession', 'der', 'die Berufe', 'noun', 'Was ist dein Beruf?', 'What is your profession?', 'A1', 1),
  ('00000000-0000-4000-a000-00003286190c', 'die Firma', 'الشركة', 'company', 'die', 'die Firmen', 'noun', 'Die Firma ist in Berlin.', 'The company is in Berlin.', 'A1', 2),
  ('00000000-0000-4000-a000-00003286190c', 'der Kollege', 'الزميل', 'colleague', 'der', 'die Kollegen', 'noun', 'Mein Kollege hilft mir.', 'My colleague helps me.', 'A1', 3),
  ('00000000-0000-4000-a000-00003286190c', 'das Büro', 'المكتب', 'office', 'das', 'die Büros', 'noun', 'Das Büro ist im dritten Stock.', 'The office is on the third floor.', 'A1', 4),
  ('00000000-0000-4000-a000-00003286190c', 'die Besprechung', 'الاجتماع', 'meeting', 'die', 'die Besprechungen', 'noun', 'Wir haben eine Besprechung.', 'We have a meeting.', 'B1', 5),
  ('00000000-0000-4000-a000-00003286190c', 'der Chef', 'المدير', 'boss', 'der', 'die Chefs', 'noun', 'Mein Chef ist freundlich.', 'My boss is friendly.', 'A1', 6),
  ('00000000-0000-4000-a000-00003286190c', 'das Gehalt', 'الراتب', 'salary', 'das', 'die Gehälter', 'noun', 'Das Gehalt ist gut.', 'The salary is good.', 'B1', 7),
  ('00000000-0000-4000-a000-00003286190c', 'die Stelle', 'الوظيفة', 'position', 'die', 'die Stellen', 'noun', 'Ich suche eine neue Stelle.', 'I am looking for a new position.', 'B1', 8),
  ('00000000-0000-4000-a000-00003286190c', 'die Schule', 'المدرسة', 'school', 'die', 'die Schulen', 'noun', 'Die Kinder gehen zur Schule.', 'The children go to school.', 'A1', 9),
  ('00000000-0000-4000-a000-00003286190c', 'der Lehrer', 'المعلم', 'teacher', 'der', 'die Lehrer', 'noun', 'Der Lehrer erklärt die Grammatik.', 'The teacher explains the grammar.', 'A1', 10),
  ('00000000-0000-4000-a000-00003286190c', 'der Student', 'الطالب', 'student', 'der', 'die Studenten', 'noun', 'Der Student lernt Deutsch.', 'The student learns German.', 'A1', 11),
  ('00000000-0000-4000-a000-00003286190c', 'die Universität', 'الجامعة', 'university', 'die', 'die Universitäten', 'noun', 'Die Universität ist alt.', 'The university is old.', 'B1', 12),
  ('00000000-0000-4000-a000-00003286190c', 'der Kurs', 'الدورة', 'course', 'der', 'die Kurse', 'noun', 'Der Kurs kostet 200 Euro.', 'The course costs 200 euros.', 'A2', 13),
  ('00000000-0000-4000-a000-00003286190c', 'die Prüfung', 'الامتحان', 'exam', 'die', 'die Prüfungen', 'noun', 'Die Prüfung ist schwer.', 'The exam is difficult.', 'B1', 14),
  ('00000000-0000-4000-a000-00003286190c', 'das Studium', 'الدراسة الجامعية', 'studies', 'das', NULL, 'noun', 'Mein Studium dauert vier Jahre.', 'My studies take four years.', 'B1', 15),
  ('00000000-0000-4000-a000-00003286190c', 'lernen', 'يتعلم', 'to learn', NULL, NULL, 'verb', 'Ich lerne Deutsch.', 'I learn German.', 'A1', 16),
  ('00000000-0000-4000-a000-00003286190c', 'die Zeitung', 'الجريدة', 'newspaper', 'die', 'die Zeitungen', 'noun', 'Ich lese die Zeitung.', 'I read the newspaper.', 'A2', 17),
  ('00000000-0000-4000-a000-00003286190c', 'das Internet', 'الإنترنت', 'internet', 'das', NULL, 'noun', 'Das Internet ist schnell.', 'The internet is fast.', 'A2', 18),
  ('00000000-0000-4000-a000-00003286190c', 'der Artikel', 'المقال', 'article', 'der', 'die Artikel', 'noun', 'Der Artikel ist interessant.', 'The article is interesting.', 'B1', 19),
  ('00000000-0000-4000-a000-00003286190c', 'die Nachricht', 'الخبر', 'news', 'die', 'die Nachrichten', 'noun', 'Ich sehe die Nachrichten.', 'I watch the news.', 'A2', 20),
  ('00000000-0000-4000-a000-00003286190c', 'das Radio', 'الراديو', 'radio', 'das', 'die Radios', 'noun', 'Ich höre Radio.', 'I listen to the radio.', 'A2', 21),
  ('00000000-0000-4000-a000-00003286190c', 'das Fernsehen', 'التلفاز', 'television', 'das', NULL, 'noun', 'Das Fernsehen läuft.', 'The television is on.', 'A2', 22),
  ('00000000-0000-4000-a000-00003286190c', 'die Zeitschrift', 'المجلة', 'magazine', 'die', 'die Zeitschriften', 'noun', 'Die Zeitschrift erscheint monatlich.', 'The magazine is published monthly.', 'B1', 23),
  ('00000000-0000-4000-a000-00003286190c', 'der Journalist', 'الصحفي', 'journalist', 'der', 'die Journalisten', 'noun', 'Der Journalist schreibt einen Artikel.', 'The journalist writes an article.', 'B1', 24),
  ('00000000-0000-4000-a000-00003286190c', 'die Gesellschaft', 'المجتمع', 'society', 'die', NULL, 'noun', 'Die Gesellschaft verändert sich.', 'Society is changing.', 'B1', 25),
  ('00000000-0000-4000-a000-00003286190c', 'die Politik', 'السياسة', 'politics', 'die', NULL, 'noun', 'Politik ist ein wichtiges Thema.', 'Politics is an important topic.', 'B1', 26),
  ('00000000-0000-4000-a000-00003286190c', 'die Integration', 'الاندماج', 'integration', 'die', NULL, 'noun', 'Integration ist wichtig.', 'Integration is important.', 'B1', 27),
  ('00000000-0000-4000-a000-00003286190c', 'die Kultur', 'الثقافة', 'culture', 'die', NULL, 'noun', 'Die deutsche Kultur ist vielfältig.', 'German culture is diverse.', 'A2', 28),
  ('00000000-0000-4000-a000-00003286190c', 'der Bürger', 'المواطن', 'citizen', 'der', 'die Bürger', 'noun', 'Die Bürger wählen.', 'The citizens vote.', 'B1', 29),
  ('00000000-0000-4000-a000-00003286190c', 'die Freiheit', 'الحرية', 'freedom', 'die', NULL, 'noun', 'Freiheit ist ein Grundrecht.', 'Freedom is a basic right.', 'B1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00003286190c', 'Präsens der regelmäßigen Verben (Present Tense) / المضارع للأفعال المنتظمة', 'In German, regular verbs follow a consistent pattern. The infinitive ends in -en. Remove the -en and add the personal endings: ich -e, du -st, er/sie/es -t, wir -en, ihr -t, sie/Sie -en. For most Arabic speakers, this is easier than Arabic verb conjugation because German has fewer forms.', '[{"rule":"ich: stem + e","note":"Ich lerne, ich wohne, ich arbeite"},{"rule":"du: stem + st","note":"Du lernst, du wohnst, du arbeitest"},{"rule":"er/sie/es: stem + t","note":"Er lernt, sie wohnt, es arbeitet"},{"rule":"wir: stem + en","note":"Wir lernen, wir wohnen, wir arbeiten"},{"rule":"ihr: stem + t","note":"Ihr lernt, ihr wohnt, ihr arbeitet"},{"rule":"sie/Sie: stem + en","note":"Sie lernen, Sie wohnen"}]', '[{"german":"Ich lerne Deutsch.","arabic":"أنا أتعلم الألمانية.","english":"I am learning German."},{"german":"Du wohnst in Berlin.","arabic":"أنت تسكن في برلين.","english":"You live in Berlin."},{"german":"Er arbeitet bei Siemens.","arabic":"هو يعمل في سيمنز.","english":"He works at Siemens."}]', '[{"mistake":"Ich lernen Deutsch","correction":"Ich lerne Deutsch","explanation":"After \"ich\" we use the stem + e, not the infinitive."},{"mistake":"Er lerne Deutsch","correction":"Er lernt Deutsch","explanation":"After \"er/sie/es\" we add -t, not -e."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00003286190c', 'multiple_choice', 'What does "der Beruf" mean?', '["The","A","This","That"]', 'The', 'This is a basic vocabulary item.', 1, 1),
  ('00000000-0000-4000-a000-00003286190c', 'fill_gap', 'Complete with the correct form.', '["Option 1","Option 2","Option 3"]', 'Option 1', 'Practice grammar in context.', 1, 2),
  ('00000000-0000-4000-a000-00003286190c', 'translation', 'Translate: "I learn German."', '["Ich lerne Deutsch.","Ich lerne Englisch.","Ich lerne Spanisch."]', 'Ich lerne Deutsch.', 'Ich = I, lerne = learn/learning, Deutsch = German.', 2, 3),
  ('00000000-0000-4000-a000-00003286190c', 'sentence_order', 'Order the sentence.', '[]', 'Ich lerne Deutsch.', 'Subject + verb + object in German.', 2, 4),
  ('00000000-0000-4000-a000-00003286190c', 'matching', 'Match the words with their meanings.', '["Match pairs correctly"]', 'Correct pairs', 'Test your vocabulary knowledge.', 2, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-00003286190c', 'multiple_choice', 'What is the main topic of this lesson?', '["Module Test","Sports","Music","Travel"]', 'Module Test', 1, 1),
  ('00000000-0000-4000-a000-00003286190c', 'true_false', 'This lesson teaches vocabulary about Module Test.', '["True","False"]', 'True', 1, 2),
  ('00000000-0000-4000-a000-00003286190c', 'true_false', 'German word order is always the same as English.', '["True","False"]', 'False', 1, 3),
  ('00000000-0000-4000-a000-00003286190c', 'multiple_choice', 'How do you say "please" in German?', '["Danke","Bitte","Tschüss","Hallo"]', 'Bitte', 1, 4),
  ('00000000-0000-4000-a000-00003286190c', 'multiple_choice', 'Which article is feminine?', '["der","die","das","den"]', 'die', 1, 5),
  ('00000000-0000-4000-a000-00003286190c', 'fill_blank', 'Ich ___ (to be) Student.', '["bin","bist","ist","sind"]', 'bin', 1, 6),
  ('00000000-0000-4000-a000-00003286190c', 'multiple_choice', 'What is the correct word order?', '["Ich lerne Deutsch","Ich Deutsch lerne","Lerne ich Deutsch","Deutsch ich lerne"]', 'Ich lerne Deutsch', 1, 7),
  ('00000000-0000-4000-a000-00003286190c', 'true_false', 'All German nouns are capitalized.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-00003286190c', 'multiple_choice', 'How do you say "thank you" in German?', '["Bitte","Danke","Tschüss","Hallo"]', 'Danke', 1, 9),
  ('00000000-0000-4000-a000-00003286190c', 'fill_blank', 'Wo ___ du? (to live)', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 1, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-00003286190c', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Arbeit und Karriere', 'formal', false, 1),
  ('00000000-0000-4000-a000-00003286190c', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Arbeit und Karriere', 'informal', false, 2),
  ('00000000-0000-4000-a000-00003286190c', 'Bitte!', 'Please!', 'من فضلك!', 'Used in Arbeit und Karriere', 'neutral', false, 3),
  ('00000000-0000-4000-a000-00003286190c', 'Danke!', 'Thanks!', 'شكراً!', 'Used in Arbeit und Karriere', 'neutral', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-00003286190c', 'Hallo', 'Hello', 'Greeting', 'expression', 1),
  ('00000000-0000-4000-a000-00003286190c', 'Danke', 'Thanks', 'Politeness', 'expression', 2),
  ('00000000-0000-4000-a000-00003286190c', 'Bitte', 'Please', 'Politeness', 'expression', 3),
  ('00000000-0000-4000-a000-00003286190c', 'Tschüss', 'Bye', 'Farewell', 'expression', 4);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-00003286190c', 'Test: Arbeit und Karriere — Leseübung', 'In der heutigen Arbeitswelt verändern sich die Anforderungen ständig. Immer mehr Berufe erfordern digitale Kompetenzen. Wer im Beruf erfolgreich sein möchte, sollte sich kontinuierlich weiterbilden. In Deutschland gibt es viele Möglichkeiten zur beruflichen Weiterbildung, zum Beispiel über die Arbeitsagentur oder die Industrie- und Handelskammer. Auch ein Studium neben dem Beruf wird immer beliebter. Viele Unternehmen unterstützen ihre Mitarbeiter bei der Weiterbildung durch flexible Arbeitszeiten oder finanzielle Zuschüsse.', 'In today''s working world, requirements are constantly changing. More and more professions require digital skills. Anyone who wants to be successful in their career should continuously educate themselves. In Germany there are many opportunities for professional development, for example through the employment agency or the Chamber of Industry and Commerce. Studying alongside work is also becoming increasingly popular. Many companies support their employees in further training through flexible working hours or financial subsidies.', 'في عالم العمل اليوم تتغير المتطلبات باستمرار. المزيد والمزيد من المهن تتطلب مهارات رقمية. من يريد النجاح في مهنته يجب أن يواصل تعليمه. في ألمانيا هناك فرص كثيرة للتطوير المهني، مثلاً عبر وكالة العمل أو غرفة الصناعة والتجارة. الدراسة إلى جانب العمل أصبحت أيضاً أكثر شعبية. العديد من الشركات تدعم موظفيها في التدريب المستمر من خلال ساعات عمل مرنة أو إعانات مالية.', 67, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, duration_seconds, speaker_count, scenario) values
  ('00000000-0000-4000-a000-00003286190c', 'Test: Arbeit und Karriere — Hörverständnis', '[Chef]: Guten Morgen, Herr Schmidt. Haben Sie die Präsentation fertig?

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

[Chef]: نعم، فكرة جيدة. ولا تنسوا المستندات.', 60, 2, 'Arbeit und Karriere');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-00003286190c', 'Speaking: Test: Arbeit und Karriere', 'Practice talking about Module Test. Answer questions and have a simple conversation.', 'Module Test', ARRAY['Use full sentences','Speak clearly','Don''t worry about mistakes']::text[], ARRAY['der Beruf','die Firma','der Kollege','das Büro','die Besprechung']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-00003286190c', 'Writing: Test: Arbeit und Karriere', 'Write a short text about Module Test. Use at least 5 vocabulary words from this lesson.', ARRAY['Start with a greeting','Use the vocabulary from this lesson','Check your grammar']::text[], ARRAY['der Beruf','die Firma','der Kollege']::text[], '["Sentence structure","Vocabulary usage"]', 50, 150, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00003286190c', 'Test: Arbeit und Karriere — Roleplay', 'Module Test', 'Student', 'Teacher', 'Practice conversation about Module Test', 'Hallo! Lass uns über dieses Thema sprechen.', 'intermediate', 1, ARRAY['der Beruf','die Firma','der Kollege','das Büro','die Besprechung','der Chef','das Gehalt','die Stelle']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00003286190c', 'Test: Arbeit und Karriere — Advanced Roleplay', 'Module Test', 'Customer', 'Assistant', 'Extended conversation about Module Test', 'Guten Tag! Wie kann ich Ihnen helfen?', 'intermediate', 2, ARRAY['der Beruf','die Firma','der Kollege','das Büro','die Besprechung','der Chef','das Gehalt','die Stelle']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-00003286190c', 'Test: Arbeit und Karriere — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Test: Arbeit und Karriere".', 'Creative practice for Module Test', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-00003286190c', 'Homework: Test: Arbeit und Karriere', 'Complete these tasks to reinforce "Test: Arbeit und Karriere".', 'mixed', '[{"description":"Review all vocabulary from this lesson"},{"description":"Write 5 sentences using the grammar structure"},{"description":"Practice the dialogue aloud"}]', 35, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-00003286190c', 'In this lesson you learned about Module Test. You practiced vocabulary related to work and grammar structure present_tense.', '["Mastered vocabulary about Module Test","Applied present_tense correctly","Read and understood a text about Module Test","Practiced speaking about Module Test"]', '[{"title":"Test: Arbeit und Karriere Review","summary":"present_tense — the main grammar focus of this lesson."}]', ARRAY['Module Test core vocabulary','work key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)','Verb is always in second position']::text[], ARRAY['Practice 15-20 minutes daily','Use new vocabulary in real sentences','Speak out loud to improve pronunciation']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00003286190c', 'translation', 'Translate to German: "This is a translation exercise."', '[]', 'Das ist eine Übersetzungsübung.', 'Use "das ist" for "this is"', 1, 40);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00003286190c', 'Culture: Module Test in German-Speaking Countries', 'Learn how Module Test is approached in German culture.

تعلم كيف يتم التعامل مع Module Test في الثقافة الألمانية.', '["Tip: Be direct and polite","Tip: Use formal language with strangers","Tip: Respect punctuality"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00003286190c', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Common error for Arabic speakers","correction":"Correct version","explanation":"Explanation of the error"}]', 30);

  -- Module 3: Medien und Kommunikation
  insert into public.course_modules (id, level_id, title, description, objectives, order_index, estimated_hours, is_published)
  values ('00000000-0000-4000-a000-000039c2eae1', 'B1', 'Medien und Kommunikation', 'Discuss media, technology, and modern communication.', '["Discuss news and media","Talk about technology and social media","Use Relativsätze with nominative and accusative","Express opinions and arguments","Write forum posts and comments"]', 3, 5, true)
  on conflict (id) do nothing;

  -- Lesson 1: Medien: Zeitung, Radio, Internet (L-B1-03-01)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-00003285a4b2', '00000000-0000-4000-a000-000039c2eae1', 'Medien: Zeitung, Radio, Internet', 'Learn media and journalism vocabulary.', 'Media', 'vocabulary', '["Understand and use vocabulary related to Media","Apply present_tense correctly","Read and comprehend a text about Media","Listen and understand a dialogue about Media","Speak about Media in simple sentences","Write a short text about Media"]', 45, 1, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-00003285a4b2', 'die Zeitung', 'الجريدة', 'newspaper', 'die', 'die Zeitungen', 'noun', 'Ich lese die Zeitung.', 'I read the newspaper.', 'A2', 1),
  ('00000000-0000-4000-a000-00003285a4b2', 'das Internet', 'الإنترنت', 'internet', 'das', NULL, 'noun', 'Das Internet ist schnell.', 'The internet is fast.', 'A2', 2),
  ('00000000-0000-4000-a000-00003285a4b2', 'der Artikel', 'المقال', 'article', 'der', 'die Artikel', 'noun', 'Der Artikel ist interessant.', 'The article is interesting.', 'B1', 3),
  ('00000000-0000-4000-a000-00003285a4b2', 'die Nachricht', 'الخبر', 'news', 'die', 'die Nachrichten', 'noun', 'Ich sehe die Nachrichten.', 'I watch the news.', 'A2', 4),
  ('00000000-0000-4000-a000-00003285a4b2', 'das Radio', 'الراديو', 'radio', 'das', 'die Radios', 'noun', 'Ich höre Radio.', 'I listen to the radio.', 'A2', 5),
  ('00000000-0000-4000-a000-00003285a4b2', 'das Fernsehen', 'التلفاز', 'television', 'das', NULL, 'noun', 'Das Fernsehen läuft.', 'The television is on.', 'A2', 6),
  ('00000000-0000-4000-a000-00003285a4b2', 'die Zeitschrift', 'المجلة', 'magazine', 'die', 'die Zeitschriften', 'noun', 'Die Zeitschrift erscheint monatlich.', 'The magazine is published monthly.', 'B1', 7),
  ('00000000-0000-4000-a000-00003285a4b2', 'der Journalist', 'الصحفي', 'journalist', 'der', 'die Journalisten', 'noun', 'Der Journalist schreibt einen Artikel.', 'The journalist writes an article.', 'B1', 8),
  ('00000000-0000-4000-a000-00003285a4b2', 'der Beruf', 'المهنة', 'profession', 'der', 'die Berufe', 'noun', 'Was ist dein Beruf?', 'What is your profession?', 'A1', 9),
  ('00000000-0000-4000-a000-00003285a4b2', 'die Firma', 'الشركة', 'company', 'die', 'die Firmen', 'noun', 'Die Firma ist in Berlin.', 'The company is in Berlin.', 'A1', 10),
  ('00000000-0000-4000-a000-00003285a4b2', 'der Kollege', 'الزميل', 'colleague', 'der', 'die Kollegen', 'noun', 'Mein Kollege hilft mir.', 'My colleague helps me.', 'A1', 11),
  ('00000000-0000-4000-a000-00003285a4b2', 'das Büro', 'المكتب', 'office', 'das', 'die Büros', 'noun', 'Das Büro ist im dritten Stock.', 'The office is on the third floor.', 'A1', 12),
  ('00000000-0000-4000-a000-00003285a4b2', 'die Besprechung', 'الاجتماع', 'meeting', 'die', 'die Besprechungen', 'noun', 'Wir haben eine Besprechung.', 'We have a meeting.', 'B1', 13),
  ('00000000-0000-4000-a000-00003285a4b2', 'der Chef', 'المدير', 'boss', 'der', 'die Chefs', 'noun', 'Mein Chef ist freundlich.', 'My boss is friendly.', 'A1', 14),
  ('00000000-0000-4000-a000-00003285a4b2', 'das Gehalt', 'الراتب', 'salary', 'das', 'die Gehälter', 'noun', 'Das Gehalt ist gut.', 'The salary is good.', 'B1', 15),
  ('00000000-0000-4000-a000-00003285a4b2', 'die Stelle', 'الوظيفة', 'position', 'die', 'die Stellen', 'noun', 'Ich suche eine neue Stelle.', 'I am looking for a new position.', 'B1', 16),
  ('00000000-0000-4000-a000-00003285a4b2', 'die Schule', 'المدرسة', 'school', 'die', 'die Schulen', 'noun', 'Die Kinder gehen zur Schule.', 'The children go to school.', 'A1', 17),
  ('00000000-0000-4000-a000-00003285a4b2', 'der Lehrer', 'المعلم', 'teacher', 'der', 'die Lehrer', 'noun', 'Der Lehrer erklärt die Grammatik.', 'The teacher explains the grammar.', 'A1', 18),
  ('00000000-0000-4000-a000-00003285a4b2', 'der Student', 'الطالب', 'student', 'der', 'die Studenten', 'noun', 'Der Student lernt Deutsch.', 'The student learns German.', 'A1', 19),
  ('00000000-0000-4000-a000-00003285a4b2', 'die Universität', 'الجامعة', 'university', 'die', 'die Universitäten', 'noun', 'Die Universität ist alt.', 'The university is old.', 'B1', 20),
  ('00000000-0000-4000-a000-00003285a4b2', 'der Kurs', 'الدورة', 'course', 'der', 'die Kurse', 'noun', 'Der Kurs kostet 200 Euro.', 'The course costs 200 euros.', 'A2', 21),
  ('00000000-0000-4000-a000-00003285a4b2', 'die Prüfung', 'الامتحان', 'exam', 'die', 'die Prüfungen', 'noun', 'Die Prüfung ist schwer.', 'The exam is difficult.', 'B1', 22),
  ('00000000-0000-4000-a000-00003285a4b2', 'das Studium', 'الدراسة الجامعية', 'studies', 'das', NULL, 'noun', 'Mein Studium dauert vier Jahre.', 'My studies take four years.', 'B1', 23),
  ('00000000-0000-4000-a000-00003285a4b2', 'lernen', 'يتعلم', 'to learn', NULL, NULL, 'verb', 'Ich lerne Deutsch.', 'I learn German.', 'A1', 24),
  ('00000000-0000-4000-a000-00003285a4b2', 'die Gesellschaft', 'المجتمع', 'society', 'die', NULL, 'noun', 'Die Gesellschaft verändert sich.', 'Society is changing.', 'B1', 25),
  ('00000000-0000-4000-a000-00003285a4b2', 'die Politik', 'السياسة', 'politics', 'die', NULL, 'noun', 'Politik ist ein wichtiges Thema.', 'Politics is an important topic.', 'B1', 26),
  ('00000000-0000-4000-a000-00003285a4b2', 'die Integration', 'الاندماج', 'integration', 'die', NULL, 'noun', 'Integration ist wichtig.', 'Integration is important.', 'B1', 27),
  ('00000000-0000-4000-a000-00003285a4b2', 'die Kultur', 'الثقافة', 'culture', 'die', NULL, 'noun', 'Die deutsche Kultur ist vielfältig.', 'German culture is diverse.', 'A2', 28),
  ('00000000-0000-4000-a000-00003285a4b2', 'der Bürger', 'المواطن', 'citizen', 'der', 'die Bürger', 'noun', 'Die Bürger wählen.', 'The citizens vote.', 'B1', 29),
  ('00000000-0000-4000-a000-00003285a4b2', 'die Freiheit', 'الحرية', 'freedom', 'die', NULL, 'noun', 'Freiheit ist ein Grundrecht.', 'Freedom is a basic right.', 'B1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00003285a4b2', 'Präsens der regelmäßigen Verben (Present Tense) / المضارع للأفعال المنتظمة', 'In German, regular verbs follow a consistent pattern. The infinitive ends in -en. Remove the -en and add the personal endings: ich -e, du -st, er/sie/es -t, wir -en, ihr -t, sie/Sie -en. For most Arabic speakers, this is easier than Arabic verb conjugation because German has fewer forms.', '[{"rule":"ich: stem + e","note":"Ich lerne, ich wohne, ich arbeite"},{"rule":"du: stem + st","note":"Du lernst, du wohnst, du arbeitest"},{"rule":"er/sie/es: stem + t","note":"Er lernt, sie wohnt, es arbeitet"},{"rule":"wir: stem + en","note":"Wir lernen, wir wohnen, wir arbeiten"},{"rule":"ihr: stem + t","note":"Ihr lernt, ihr wohnt, ihr arbeitet"},{"rule":"sie/Sie: stem + en","note":"Sie lernen, Sie wohnen"}]', '[{"german":"Ich lerne Deutsch.","arabic":"أنا أتعلم الألمانية.","english":"I am learning German."},{"german":"Du wohnst in Berlin.","arabic":"أنت تسكن في برلين.","english":"You live in Berlin."},{"german":"Er arbeitet bei Siemens.","arabic":"هو يعمل في سيمنز.","english":"He works at Siemens."}]', '[{"mistake":"Ich lernen Deutsch","correction":"Ich lerne Deutsch","explanation":"After \"ich\" we use the stem + e, not the infinitive."},{"mistake":"Er lerne Deutsch","correction":"Er lernt Deutsch","explanation":"After \"er/sie/es\" we add -t, not -e."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00003285a4b2', 'multiple_choice', 'What does "die Zeitung" mean?', '["The","A","This","That"]', 'The', 'This is a basic vocabulary item.', 1, 1),
  ('00000000-0000-4000-a000-00003285a4b2', 'fill_gap', 'Complete with the correct form.', '["Option 1","Option 2","Option 3"]', 'Option 1', 'Practice grammar in context.', 1, 2),
  ('00000000-0000-4000-a000-00003285a4b2', 'translation', 'Translate: "I learn German."', '["Ich lerne Deutsch.","Ich lerne Englisch.","Ich lerne Spanisch."]', 'Ich lerne Deutsch.', 'Ich = I, lerne = learn/learning, Deutsch = German.', 2, 3),
  ('00000000-0000-4000-a000-00003285a4b2', 'sentence_order', 'Order the sentence.', '[]', 'Ich lerne Deutsch.', 'Subject + verb + object in German.', 2, 4),
  ('00000000-0000-4000-a000-00003285a4b2', 'matching', 'Match the words with their meanings.', '["Match pairs correctly"]', 'Correct pairs', 'Test your vocabulary knowledge.', 2, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-00003285a4b2', 'multiple_choice', 'What is the main topic of this lesson?', '["Media","Sports","Music","Travel"]', 'Media', 1, 1),
  ('00000000-0000-4000-a000-00003285a4b2', 'true_false', 'This lesson teaches vocabulary about Media.', '["True","False"]', 'True', 1, 2),
  ('00000000-0000-4000-a000-00003285a4b2', 'true_false', 'German word order is always the same as English.', '["True","False"]', 'False', 1, 3),
  ('00000000-0000-4000-a000-00003285a4b2', 'multiple_choice', 'How do you say "please" in German?', '["Danke","Bitte","Tschüss","Hallo"]', 'Bitte', 1, 4),
  ('00000000-0000-4000-a000-00003285a4b2', 'multiple_choice', 'Which article is feminine?', '["der","die","das","den"]', 'die', 1, 5),
  ('00000000-0000-4000-a000-00003285a4b2', 'fill_blank', 'Ich ___ (to be) Student.', '["bin","bist","ist","sind"]', 'bin', 1, 6),
  ('00000000-0000-4000-a000-00003285a4b2', 'multiple_choice', 'What is the correct word order?', '["Ich lerne Deutsch","Ich Deutsch lerne","Lerne ich Deutsch","Deutsch ich lerne"]', 'Ich lerne Deutsch', 1, 7),
  ('00000000-0000-4000-a000-00003285a4b2', 'true_false', 'All German nouns are capitalized.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-00003285a4b2', 'multiple_choice', 'How do you say "thank you" in German?', '["Bitte","Danke","Tschüss","Hallo"]', 'Danke', 1, 9),
  ('00000000-0000-4000-a000-00003285a4b2', 'fill_blank', 'Wo ___ du? (to live)', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 1, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-00003285a4b2', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Medien und Kommunikation', 'formal', false, 1),
  ('00000000-0000-4000-a000-00003285a4b2', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Medien und Kommunikation', 'informal', false, 2),
  ('00000000-0000-4000-a000-00003285a4b2', 'Bitte!', 'Please!', 'من فضلك!', 'Used in Medien und Kommunikation', 'neutral', false, 3),
  ('00000000-0000-4000-a000-00003285a4b2', 'Danke!', 'Thanks!', 'شكراً!', 'Used in Medien und Kommunikation', 'neutral', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-00003285a4b2', 'Hallo', 'Hello', 'Greeting', 'expression', 1),
  ('00000000-0000-4000-a000-00003285a4b2', 'Danke', 'Thanks', 'Politeness', 'expression', 2),
  ('00000000-0000-4000-a000-00003285a4b2', 'Bitte', 'Please', 'Politeness', 'expression', 3),
  ('00000000-0000-4000-a000-00003285a4b2', 'Tschüss', 'Bye', 'Farewell', 'expression', 4);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-00003285a4b2', 'Medien: Zeitung, Radio, Internet — Leseübung', 'Die Medienlandschaft in Deutschland ist vielfältig und frei. Es gibt öffentlich-rechtliche Sender wie ARD und ZDF sowie private Fernsehsender. Die bekanntesten deutschen Zeitungen sind die Süddeutsche Zeitung, die FAZ und die Bild-Zeitung. In den letzten Jahren haben soziale Medien wie TikTok und Instagram an Bedeutung gewonnen. Viele Jugendliche informieren sich hauptsächlich über soziale Netzwerke. Journalisten müssen sorgfältig recherchieren und verschiedene Quellen überprüfen, um Falschinformationen zu vermeiden.', 'The media landscape in Germany is diverse and free. There are public broadcasters like ARD and ZDF as well as private television stations. The best-known German newspapers are the Süddeutsche Zeitung, the FAZ and the Bild-Zeitung. In recent years, social media like TikTok and Instagram have gained importance. Many young people get their information mainly from social networks. Journalists must carefully research and verify different sources to avoid misinformation.', 'المشهد الإعلامي في ألمانيا متنوح ومستقل. هناك محطات البث العامة مثل ARD و ZDF بالإضافة إلى محطات تلفزيونية خاصة. أشهر الصحف الألمانية هي Süddeutsche Zeitung و FAZ و Bild-Zeitung. في السنوات الأخيرة اكتسبت وسائل التواصل الاجتماعي مثل TikTok و Instagram أهمية. كثير من الشباب يحصلون على معلوماتهم أساساً من الشبكات الاجتماعية. يجب على الصحفيين البحث بدقة والتحقق من المصادر المختلفة لتجنب المعلومات المضللة.', 66, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, duration_seconds, speaker_count, scenario) values
  ('00000000-0000-4000-a000-00003285a4b2', 'Medien: Zeitung, Radio, Internet — Hörverständnis', '[Lehrerin]: Guten Morgen! Heute lernen wir Begrüßungen.

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

[Lehrerin]: ممتاز! إلى الغد!', 72, 2, 'Medien und Kommunikation');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-00003285a4b2', 'Speaking: Medien: Zeitung, Radio, Internet', 'Practice talking about Media. Answer questions and have a simple conversation.', 'Media', ARRAY['Use full sentences','Speak clearly','Don''t worry about mistakes']::text[], ARRAY['die Zeitung','das Internet','der Artikel','die Nachricht','das Radio']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-00003285a4b2', 'Writing: Medien: Zeitung, Radio, Internet', 'Write a short text about Media. Use at least 5 vocabulary words from this lesson.', ARRAY['Start with a greeting','Use the vocabulary from this lesson','Check your grammar']::text[], ARRAY['die Zeitung','das Internet','der Artikel']::text[], '["Sentence structure","Vocabulary usage"]', 50, 150, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00003285a4b2', 'Medien: Zeitung, Radio, Internet — Roleplay', 'Media', 'Student', 'Teacher', 'Practice conversation about Media', 'Hallo! Lass uns über dieses Thema sprechen.', 'intermediate', 1, ARRAY['die Zeitung','das Internet','der Artikel','die Nachricht','das Radio','das Fernsehen','die Zeitschrift','der Journalist']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00003285a4b2', 'Medien: Zeitung, Radio, Internet — Advanced Roleplay', 'Media', 'Customer', 'Assistant', 'Extended conversation about Media', 'Guten Tag! Wie kann ich Ihnen helfen?', 'intermediate', 2, ARRAY['die Zeitung','das Internet','der Artikel','die Nachricht','das Radio','das Fernsehen','die Zeitschrift','der Journalist']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-00003285a4b2', 'Medien: Zeitung, Radio, Internet — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Medien: Zeitung, Radio, Internet".', 'Creative practice for Media', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-00003285a4b2', 'Homework: Medien: Zeitung, Radio, Internet', 'Complete these tasks to reinforce "Medien: Zeitung, Radio, Internet".', 'mixed', '[{"description":"Review all vocabulary from this lesson"},{"description":"Write 5 sentences using the grammar structure"},{"description":"Practice the dialogue aloud"}]', 35, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-00003285a4b2', 'In this lesson you learned about Media. You practiced vocabulary related to media and grammar structure present_tense.', '["Mastered vocabulary about Media","Applied present_tense correctly","Read and understood a text about Media","Practiced speaking about Media"]', '[{"title":"Medien: Zeitung, Radio, Internet Review","summary":"present_tense — the main grammar focus of this lesson."}]', ARRAY['Media core vocabulary','media key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)','Verb is always in second position']::text[], ARRAY['Practice 15-20 minutes daily','Use new vocabulary in real sentences','Speak out loud to improve pronunciation']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00003285a4b2', 'translation', 'Translate to German: "This is a translation exercise."', '[]', 'Das ist eine Übersetzungsübung.', 'Use "das ist" for "this is"', 1, 40);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00003285a4b2', 'Culture: Media in German-Speaking Countries', 'Learn how Media is approached in German culture.

تعلم كيف يتم التعامل مع Media في الثقافة الألمانية.', '["Tip: Be direct and polite","Tip: Use formal language with strangers","Tip: Respect punctuality"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00003285a4b2', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Common error for Arabic speakers","correction":"Correct version","explanation":"Explanation of the error"}]', 30);

  -- Lesson 2: Soziale Medien und Technologie (L-B1-03-02)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-00003285a4b1', '00000000-0000-4000-a000-000039c2eae1', 'Soziale Medien und Technologie', 'Discuss social media, apps, and technology.', 'Social Media & Technology', 'vocabulary', '["Understand and use vocabulary related to Social Media & Technology","Apply present_tense correctly","Read and comprehend a text about Social Media & Technology","Listen and understand a dialogue about Social Media & Technology","Speak about Social Media & Technology in simple sentences","Write a short text about Social Media & Technology"]', 45, 2, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-00003285a4b1', 'die Zeitung', 'الجريدة', 'newspaper', 'die', 'die Zeitungen', 'noun', 'Ich lese die Zeitung.', 'I read the newspaper.', 'A2', 1),
  ('00000000-0000-4000-a000-00003285a4b1', 'das Internet', 'الإنترنت', 'internet', 'das', NULL, 'noun', 'Das Internet ist schnell.', 'The internet is fast.', 'A2', 2),
  ('00000000-0000-4000-a000-00003285a4b1', 'der Artikel', 'المقال', 'article', 'der', 'die Artikel', 'noun', 'Der Artikel ist interessant.', 'The article is interesting.', 'B1', 3),
  ('00000000-0000-4000-a000-00003285a4b1', 'die Nachricht', 'الخبر', 'news', 'die', 'die Nachrichten', 'noun', 'Ich sehe die Nachrichten.', 'I watch the news.', 'A2', 4),
  ('00000000-0000-4000-a000-00003285a4b1', 'das Radio', 'الراديو', 'radio', 'das', 'die Radios', 'noun', 'Ich höre Radio.', 'I listen to the radio.', 'A2', 5),
  ('00000000-0000-4000-a000-00003285a4b1', 'das Fernsehen', 'التلفاز', 'television', 'das', NULL, 'noun', 'Das Fernsehen läuft.', 'The television is on.', 'A2', 6),
  ('00000000-0000-4000-a000-00003285a4b1', 'die Zeitschrift', 'المجلة', 'magazine', 'die', 'die Zeitschriften', 'noun', 'Die Zeitschrift erscheint monatlich.', 'The magazine is published monthly.', 'B1', 7),
  ('00000000-0000-4000-a000-00003285a4b1', 'der Journalist', 'الصحفي', 'journalist', 'der', 'die Journalisten', 'noun', 'Der Journalist schreibt einen Artikel.', 'The journalist writes an article.', 'B1', 8),
  ('00000000-0000-4000-a000-00003285a4b1', 'der Beruf', 'المهنة', 'profession', 'der', 'die Berufe', 'noun', 'Was ist dein Beruf?', 'What is your profession?', 'A1', 9),
  ('00000000-0000-4000-a000-00003285a4b1', 'die Firma', 'الشركة', 'company', 'die', 'die Firmen', 'noun', 'Die Firma ist in Berlin.', 'The company is in Berlin.', 'A1', 10),
  ('00000000-0000-4000-a000-00003285a4b1', 'der Kollege', 'الزميل', 'colleague', 'der', 'die Kollegen', 'noun', 'Mein Kollege hilft mir.', 'My colleague helps me.', 'A1', 11),
  ('00000000-0000-4000-a000-00003285a4b1', 'das Büro', 'المكتب', 'office', 'das', 'die Büros', 'noun', 'Das Büro ist im dritten Stock.', 'The office is on the third floor.', 'A1', 12),
  ('00000000-0000-4000-a000-00003285a4b1', 'die Besprechung', 'الاجتماع', 'meeting', 'die', 'die Besprechungen', 'noun', 'Wir haben eine Besprechung.', 'We have a meeting.', 'B1', 13),
  ('00000000-0000-4000-a000-00003285a4b1', 'der Chef', 'المدير', 'boss', 'der', 'die Chefs', 'noun', 'Mein Chef ist freundlich.', 'My boss is friendly.', 'A1', 14),
  ('00000000-0000-4000-a000-00003285a4b1', 'das Gehalt', 'الراتب', 'salary', 'das', 'die Gehälter', 'noun', 'Das Gehalt ist gut.', 'The salary is good.', 'B1', 15),
  ('00000000-0000-4000-a000-00003285a4b1', 'die Stelle', 'الوظيفة', 'position', 'die', 'die Stellen', 'noun', 'Ich suche eine neue Stelle.', 'I am looking for a new position.', 'B1', 16),
  ('00000000-0000-4000-a000-00003285a4b1', 'die Schule', 'المدرسة', 'school', 'die', 'die Schulen', 'noun', 'Die Kinder gehen zur Schule.', 'The children go to school.', 'A1', 17),
  ('00000000-0000-4000-a000-00003285a4b1', 'der Lehrer', 'المعلم', 'teacher', 'der', 'die Lehrer', 'noun', 'Der Lehrer erklärt die Grammatik.', 'The teacher explains the grammar.', 'A1', 18),
  ('00000000-0000-4000-a000-00003285a4b1', 'der Student', 'الطالب', 'student', 'der', 'die Studenten', 'noun', 'Der Student lernt Deutsch.', 'The student learns German.', 'A1', 19),
  ('00000000-0000-4000-a000-00003285a4b1', 'die Universität', 'الجامعة', 'university', 'die', 'die Universitäten', 'noun', 'Die Universität ist alt.', 'The university is old.', 'B1', 20),
  ('00000000-0000-4000-a000-00003285a4b1', 'der Kurs', 'الدورة', 'course', 'der', 'die Kurse', 'noun', 'Der Kurs kostet 200 Euro.', 'The course costs 200 euros.', 'A2', 21),
  ('00000000-0000-4000-a000-00003285a4b1', 'die Prüfung', 'الامتحان', 'exam', 'die', 'die Prüfungen', 'noun', 'Die Prüfung ist schwer.', 'The exam is difficult.', 'B1', 22),
  ('00000000-0000-4000-a000-00003285a4b1', 'das Studium', 'الدراسة الجامعية', 'studies', 'das', NULL, 'noun', 'Mein Studium dauert vier Jahre.', 'My studies take four years.', 'B1', 23),
  ('00000000-0000-4000-a000-00003285a4b1', 'lernen', 'يتعلم', 'to learn', NULL, NULL, 'verb', 'Ich lerne Deutsch.', 'I learn German.', 'A1', 24),
  ('00000000-0000-4000-a000-00003285a4b1', 'die Gesellschaft', 'المجتمع', 'society', 'die', NULL, 'noun', 'Die Gesellschaft verändert sich.', 'Society is changing.', 'B1', 25),
  ('00000000-0000-4000-a000-00003285a4b1', 'die Politik', 'السياسة', 'politics', 'die', NULL, 'noun', 'Politik ist ein wichtiges Thema.', 'Politics is an important topic.', 'B1', 26),
  ('00000000-0000-4000-a000-00003285a4b1', 'die Integration', 'الاندماج', 'integration', 'die', NULL, 'noun', 'Integration ist wichtig.', 'Integration is important.', 'B1', 27),
  ('00000000-0000-4000-a000-00003285a4b1', 'die Kultur', 'الثقافة', 'culture', 'die', NULL, 'noun', 'Die deutsche Kultur ist vielfältig.', 'German culture is diverse.', 'A2', 28),
  ('00000000-0000-4000-a000-00003285a4b1', 'der Bürger', 'المواطن', 'citizen', 'der', 'die Bürger', 'noun', 'Die Bürger wählen.', 'The citizens vote.', 'B1', 29),
  ('00000000-0000-4000-a000-00003285a4b1', 'die Freiheit', 'الحرية', 'freedom', 'die', NULL, 'noun', 'Freiheit ist ein Grundrecht.', 'Freedom is a basic right.', 'B1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00003285a4b1', 'Präsens der regelmäßigen Verben (Present Tense) / المضارع للأفعال المنتظمة', 'In German, regular verbs follow a consistent pattern. The infinitive ends in -en. Remove the -en and add the personal endings: ich -e, du -st, er/sie/es -t, wir -en, ihr -t, sie/Sie -en. For most Arabic speakers, this is easier than Arabic verb conjugation because German has fewer forms.', '[{"rule":"ich: stem + e","note":"Ich lerne, ich wohne, ich arbeite"},{"rule":"du: stem + st","note":"Du lernst, du wohnst, du arbeitest"},{"rule":"er/sie/es: stem + t","note":"Er lernt, sie wohnt, es arbeitet"},{"rule":"wir: stem + en","note":"Wir lernen, wir wohnen, wir arbeiten"},{"rule":"ihr: stem + t","note":"Ihr lernt, ihr wohnt, ihr arbeitet"},{"rule":"sie/Sie: stem + en","note":"Sie lernen, Sie wohnen"}]', '[{"german":"Ich lerne Deutsch.","arabic":"أنا أتعلم الألمانية.","english":"I am learning German."},{"german":"Du wohnst in Berlin.","arabic":"أنت تسكن في برلين.","english":"You live in Berlin."},{"german":"Er arbeitet bei Siemens.","arabic":"هو يعمل في سيمنز.","english":"He works at Siemens."}]', '[{"mistake":"Ich lernen Deutsch","correction":"Ich lerne Deutsch","explanation":"After \"ich\" we use the stem + e, not the infinitive."},{"mistake":"Er lerne Deutsch","correction":"Er lernt Deutsch","explanation":"After \"er/sie/es\" we add -t, not -e."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00003285a4b1', 'multiple_choice', 'What does "die Zeitung" mean?', '["The","A","This","That"]', 'The', 'This is a basic vocabulary item.', 1, 1),
  ('00000000-0000-4000-a000-00003285a4b1', 'fill_gap', 'Complete with the correct form.', '["Option 1","Option 2","Option 3"]', 'Option 1', 'Practice grammar in context.', 1, 2),
  ('00000000-0000-4000-a000-00003285a4b1', 'translation', 'Translate: "I learn German."', '["Ich lerne Deutsch.","Ich lerne Englisch.","Ich lerne Spanisch."]', 'Ich lerne Deutsch.', 'Ich = I, lerne = learn/learning, Deutsch = German.', 2, 3),
  ('00000000-0000-4000-a000-00003285a4b1', 'sentence_order', 'Order the sentence.', '[]', 'Ich lerne Deutsch.', 'Subject + verb + object in German.', 2, 4),
  ('00000000-0000-4000-a000-00003285a4b1', 'matching', 'Match the words with their meanings.', '["Match pairs correctly"]', 'Correct pairs', 'Test your vocabulary knowledge.', 2, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-00003285a4b1', 'multiple_choice', 'What is the main topic of this lesson?', '["Social Media & Technology","Sports","Music","Travel"]', 'Social Media & Technology', 1, 1),
  ('00000000-0000-4000-a000-00003285a4b1', 'true_false', 'This lesson teaches vocabulary about Social Media & Technology.', '["True","False"]', 'True', 1, 2),
  ('00000000-0000-4000-a000-00003285a4b1', 'true_false', 'German word order is always the same as English.', '["True","False"]', 'False', 1, 3),
  ('00000000-0000-4000-a000-00003285a4b1', 'multiple_choice', 'How do you say "please" in German?', '["Danke","Bitte","Tschüss","Hallo"]', 'Bitte', 1, 4),
  ('00000000-0000-4000-a000-00003285a4b1', 'multiple_choice', 'Which article is feminine?', '["der","die","das","den"]', 'die', 1, 5),
  ('00000000-0000-4000-a000-00003285a4b1', 'fill_blank', 'Ich ___ (to be) Student.', '["bin","bist","ist","sind"]', 'bin', 1, 6),
  ('00000000-0000-4000-a000-00003285a4b1', 'multiple_choice', 'What is the correct word order?', '["Ich lerne Deutsch","Ich Deutsch lerne","Lerne ich Deutsch","Deutsch ich lerne"]', 'Ich lerne Deutsch', 1, 7),
  ('00000000-0000-4000-a000-00003285a4b1', 'true_false', 'All German nouns are capitalized.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-00003285a4b1', 'multiple_choice', 'How do you say "thank you" in German?', '["Bitte","Danke","Tschüss","Hallo"]', 'Danke', 1, 9),
  ('00000000-0000-4000-a000-00003285a4b1', 'fill_blank', 'Wo ___ du? (to live)', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 1, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-00003285a4b1', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Medien und Kommunikation', 'formal', false, 1),
  ('00000000-0000-4000-a000-00003285a4b1', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Medien und Kommunikation', 'informal', false, 2),
  ('00000000-0000-4000-a000-00003285a4b1', 'Bitte!', 'Please!', 'من فضلك!', 'Used in Medien und Kommunikation', 'neutral', false, 3),
  ('00000000-0000-4000-a000-00003285a4b1', 'Danke!', 'Thanks!', 'شكراً!', 'Used in Medien und Kommunikation', 'neutral', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-00003285a4b1', 'Hallo', 'Hello', 'Greeting', 'expression', 1),
  ('00000000-0000-4000-a000-00003285a4b1', 'Danke', 'Thanks', 'Politeness', 'expression', 2),
  ('00000000-0000-4000-a000-00003285a4b1', 'Bitte', 'Please', 'Politeness', 'expression', 3),
  ('00000000-0000-4000-a000-00003285a4b1', 'Tschüss', 'Bye', 'Farewell', 'expression', 4);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-00003285a4b1', 'Soziale Medien und Technologie — Leseübung', 'Die Medienlandschaft in Deutschland ist vielfältig und frei. Es gibt öffentlich-rechtliche Sender wie ARD und ZDF sowie private Fernsehsender. Die bekanntesten deutschen Zeitungen sind die Süddeutsche Zeitung, die FAZ und die Bild-Zeitung. In den letzten Jahren haben soziale Medien wie TikTok und Instagram an Bedeutung gewonnen. Viele Jugendliche informieren sich hauptsächlich über soziale Netzwerke. Journalisten müssen sorgfältig recherchieren und verschiedene Quellen überprüfen, um Falschinformationen zu vermeiden.', 'The media landscape in Germany is diverse and free. There are public broadcasters like ARD and ZDF as well as private television stations. The best-known German newspapers are the Süddeutsche Zeitung, the FAZ and the Bild-Zeitung. In recent years, social media like TikTok and Instagram have gained importance. Many young people get their information mainly from social networks. Journalists must carefully research and verify different sources to avoid misinformation.', 'المشهد الإعلامي في ألمانيا متنوح ومستقل. هناك محطات البث العامة مثل ARD و ZDF بالإضافة إلى محطات تلفزيونية خاصة. أشهر الصحف الألمانية هي Süddeutsche Zeitung و FAZ و Bild-Zeitung. في السنوات الأخيرة اكتسبت وسائل التواصل الاجتماعي مثل TikTok و Instagram أهمية. كثير من الشباب يحصلون على معلوماتهم أساساً من الشبكات الاجتماعية. يجب على الصحفيين البحث بدقة والتحقق من المصادر المختلفة لتجنب المعلومات المضللة.', 66, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, duration_seconds, speaker_count, scenario) values
  ('00000000-0000-4000-a000-00003285a4b1', 'Soziale Medien und Technologie — Hörverständnis', '[Lehrerin]: Guten Morgen! Heute lernen wir Begrüßungen.

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

[Lehrerin]: ممتاز! إلى الغد!', 72, 2, 'Medien und Kommunikation');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-00003285a4b1', 'Speaking: Soziale Medien und Technologie', 'Practice talking about Social Media & Technology. Answer questions and have a simple conversation.', 'Social Media & Technology', ARRAY['Use full sentences','Speak clearly','Don''t worry about mistakes']::text[], ARRAY['die Zeitung','das Internet','der Artikel','die Nachricht','das Radio']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-00003285a4b1', 'Writing: Soziale Medien und Technologie', 'Write a short text about Social Media & Technology. Use at least 5 vocabulary words from this lesson.', ARRAY['Start with a greeting','Use the vocabulary from this lesson','Check your grammar']::text[], ARRAY['die Zeitung','das Internet','der Artikel']::text[], '["Sentence structure","Vocabulary usage"]', 50, 150, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00003285a4b1', 'Soziale Medien und Technologie — Roleplay', 'Social Media & Technology', 'Student', 'Teacher', 'Practice conversation about Social Media & Technology', 'Hallo! Lass uns über dieses Thema sprechen.', 'intermediate', 1, ARRAY['die Zeitung','das Internet','der Artikel','die Nachricht','das Radio','das Fernsehen','die Zeitschrift','der Journalist']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00003285a4b1', 'Soziale Medien und Technologie — Advanced Roleplay', 'Social Media & Technology', 'Customer', 'Assistant', 'Extended conversation about Social Media & Technology', 'Guten Tag! Wie kann ich Ihnen helfen?', 'intermediate', 2, ARRAY['die Zeitung','das Internet','der Artikel','die Nachricht','das Radio','das Fernsehen','die Zeitschrift','der Journalist']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-00003285a4b1', 'Soziale Medien und Technologie — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Soziale Medien und Technologie".', 'Creative practice for Social Media & Technology', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-00003285a4b1', 'Homework: Soziale Medien und Technologie', 'Complete these tasks to reinforce "Soziale Medien und Technologie".', 'mixed', '[{"description":"Review all vocabulary from this lesson"},{"description":"Write 5 sentences using the grammar structure"},{"description":"Practice the dialogue aloud"}]', 35, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-00003285a4b1', 'In this lesson you learned about Social Media & Technology. You practiced vocabulary related to media and grammar structure present_tense.', '["Mastered vocabulary about Social Media & Technology","Applied present_tense correctly","Read and understood a text about Social Media & Technology","Practiced speaking about Social Media & Technology"]', '[{"title":"Soziale Medien und Technologie Review","summary":"present_tense — the main grammar focus of this lesson."}]', ARRAY['Social Media & Technology core vocabulary','media key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)','Verb is always in second position']::text[], ARRAY['Practice 15-20 minutes daily','Use new vocabulary in real sentences','Speak out loud to improve pronunciation']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00003285a4b1', 'translation', 'Translate to German: "This is a translation exercise."', '[]', 'Das ist eine Übersetzungsübung.', 'Use "das ist" for "this is"', 1, 40);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00003285a4b1', 'Culture: Social Media & Technology in German-Speaking Countries', 'Learn how Social Media & Technology is approached in German culture.

تعلم كيف يتم التعامل مع Social Media & Technology في الثقافة الألمانية.', '["Tip: Be direct and polite","Tip: Use formal language with strangers","Tip: Respect punctuality"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00003285a4b1', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Common error for Arabic speakers","correction":"Correct version","explanation":"Explanation of the error"}]', 30);

  -- Lesson 3: Relativsätze (Nominativ, Akkusativ) (L-B1-03-03)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-00003285a4b0', '00000000-0000-4000-a000-000039c2eae1', 'Relativsätze (Nominativ, Akkusativ)', 'Learn relative clauses for connecting information.', 'Relative Clauses', 'grammar', '["Understand and use vocabulary related to Relative Clauses","Apply present_tense correctly","Read and comprehend a text about Relative Clauses","Listen and understand a dialogue about Relative Clauses","Speak about Relative Clauses in simple sentences","Write a short text about Relative Clauses"]', 60, 3, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-00003285a4b0', 'die Zeitung', 'الجريدة', 'newspaper', 'die', 'die Zeitungen', 'noun', 'Ich lese die Zeitung.', 'I read the newspaper.', 'A2', 1),
  ('00000000-0000-4000-a000-00003285a4b0', 'das Internet', 'الإنترنت', 'internet', 'das', NULL, 'noun', 'Das Internet ist schnell.', 'The internet is fast.', 'A2', 2),
  ('00000000-0000-4000-a000-00003285a4b0', 'der Artikel', 'المقال', 'article', 'der', 'die Artikel', 'noun', 'Der Artikel ist interessant.', 'The article is interesting.', 'B1', 3),
  ('00000000-0000-4000-a000-00003285a4b0', 'die Nachricht', 'الخبر', 'news', 'die', 'die Nachrichten', 'noun', 'Ich sehe die Nachrichten.', 'I watch the news.', 'A2', 4),
  ('00000000-0000-4000-a000-00003285a4b0', 'das Radio', 'الراديو', 'radio', 'das', 'die Radios', 'noun', 'Ich höre Radio.', 'I listen to the radio.', 'A2', 5),
  ('00000000-0000-4000-a000-00003285a4b0', 'das Fernsehen', 'التلفاز', 'television', 'das', NULL, 'noun', 'Das Fernsehen läuft.', 'The television is on.', 'A2', 6),
  ('00000000-0000-4000-a000-00003285a4b0', 'die Zeitschrift', 'المجلة', 'magazine', 'die', 'die Zeitschriften', 'noun', 'Die Zeitschrift erscheint monatlich.', 'The magazine is published monthly.', 'B1', 7),
  ('00000000-0000-4000-a000-00003285a4b0', 'der Journalist', 'الصحفي', 'journalist', 'der', 'die Journalisten', 'noun', 'Der Journalist schreibt einen Artikel.', 'The journalist writes an article.', 'B1', 8),
  ('00000000-0000-4000-a000-00003285a4b0', 'der Beruf', 'المهنة', 'profession', 'der', 'die Berufe', 'noun', 'Was ist dein Beruf?', 'What is your profession?', 'A1', 9),
  ('00000000-0000-4000-a000-00003285a4b0', 'die Firma', 'الشركة', 'company', 'die', 'die Firmen', 'noun', 'Die Firma ist in Berlin.', 'The company is in Berlin.', 'A1', 10),
  ('00000000-0000-4000-a000-00003285a4b0', 'der Kollege', 'الزميل', 'colleague', 'der', 'die Kollegen', 'noun', 'Mein Kollege hilft mir.', 'My colleague helps me.', 'A1', 11),
  ('00000000-0000-4000-a000-00003285a4b0', 'das Büro', 'المكتب', 'office', 'das', 'die Büros', 'noun', 'Das Büro ist im dritten Stock.', 'The office is on the third floor.', 'A1', 12),
  ('00000000-0000-4000-a000-00003285a4b0', 'die Besprechung', 'الاجتماع', 'meeting', 'die', 'die Besprechungen', 'noun', 'Wir haben eine Besprechung.', 'We have a meeting.', 'B1', 13),
  ('00000000-0000-4000-a000-00003285a4b0', 'der Chef', 'المدير', 'boss', 'der', 'die Chefs', 'noun', 'Mein Chef ist freundlich.', 'My boss is friendly.', 'A1', 14),
  ('00000000-0000-4000-a000-00003285a4b0', 'das Gehalt', 'الراتب', 'salary', 'das', 'die Gehälter', 'noun', 'Das Gehalt ist gut.', 'The salary is good.', 'B1', 15),
  ('00000000-0000-4000-a000-00003285a4b0', 'die Stelle', 'الوظيفة', 'position', 'die', 'die Stellen', 'noun', 'Ich suche eine neue Stelle.', 'I am looking for a new position.', 'B1', 16),
  ('00000000-0000-4000-a000-00003285a4b0', 'die Schule', 'المدرسة', 'school', 'die', 'die Schulen', 'noun', 'Die Kinder gehen zur Schule.', 'The children go to school.', 'A1', 17),
  ('00000000-0000-4000-a000-00003285a4b0', 'der Lehrer', 'المعلم', 'teacher', 'der', 'die Lehrer', 'noun', 'Der Lehrer erklärt die Grammatik.', 'The teacher explains the grammar.', 'A1', 18),
  ('00000000-0000-4000-a000-00003285a4b0', 'der Student', 'الطالب', 'student', 'der', 'die Studenten', 'noun', 'Der Student lernt Deutsch.', 'The student learns German.', 'A1', 19),
  ('00000000-0000-4000-a000-00003285a4b0', 'die Universität', 'الجامعة', 'university', 'die', 'die Universitäten', 'noun', 'Die Universität ist alt.', 'The university is old.', 'B1', 20),
  ('00000000-0000-4000-a000-00003285a4b0', 'der Kurs', 'الدورة', 'course', 'der', 'die Kurse', 'noun', 'Der Kurs kostet 200 Euro.', 'The course costs 200 euros.', 'A2', 21),
  ('00000000-0000-4000-a000-00003285a4b0', 'die Prüfung', 'الامتحان', 'exam', 'die', 'die Prüfungen', 'noun', 'Die Prüfung ist schwer.', 'The exam is difficult.', 'B1', 22),
  ('00000000-0000-4000-a000-00003285a4b0', 'das Studium', 'الدراسة الجامعية', 'studies', 'das', NULL, 'noun', 'Mein Studium dauert vier Jahre.', 'My studies take four years.', 'B1', 23),
  ('00000000-0000-4000-a000-00003285a4b0', 'lernen', 'يتعلم', 'to learn', NULL, NULL, 'verb', 'Ich lerne Deutsch.', 'I learn German.', 'A1', 24),
  ('00000000-0000-4000-a000-00003285a4b0', 'die Gesellschaft', 'المجتمع', 'society', 'die', NULL, 'noun', 'Die Gesellschaft verändert sich.', 'Society is changing.', 'B1', 25),
  ('00000000-0000-4000-a000-00003285a4b0', 'die Politik', 'السياسة', 'politics', 'die', NULL, 'noun', 'Politik ist ein wichtiges Thema.', 'Politics is an important topic.', 'B1', 26),
  ('00000000-0000-4000-a000-00003285a4b0', 'die Integration', 'الاندماج', 'integration', 'die', NULL, 'noun', 'Integration ist wichtig.', 'Integration is important.', 'B1', 27),
  ('00000000-0000-4000-a000-00003285a4b0', 'die Kultur', 'الثقافة', 'culture', 'die', NULL, 'noun', 'Die deutsche Kultur ist vielfältig.', 'German culture is diverse.', 'A2', 28),
  ('00000000-0000-4000-a000-00003285a4b0', 'der Bürger', 'المواطن', 'citizen', 'der', 'die Bürger', 'noun', 'Die Bürger wählen.', 'The citizens vote.', 'B1', 29),
  ('00000000-0000-4000-a000-00003285a4b0', 'die Freiheit', 'الحرية', 'freedom', 'die', NULL, 'noun', 'Freiheit ist ein Grundrecht.', 'Freedom is a basic right.', 'B1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00003285a4b0', 'Präsens der regelmäßigen Verben (Present Tense) / المضارع للأفعال المنتظمة', 'In German, regular verbs follow a consistent pattern. The infinitive ends in -en. Remove the -en and add the personal endings: ich -e, du -st, er/sie/es -t, wir -en, ihr -t, sie/Sie -en. For most Arabic speakers, this is easier than Arabic verb conjugation because German has fewer forms.', '[{"rule":"ich: stem + e","note":"Ich lerne, ich wohne, ich arbeite"},{"rule":"du: stem + st","note":"Du lernst, du wohnst, du arbeitest"},{"rule":"er/sie/es: stem + t","note":"Er lernt, sie wohnt, es arbeitet"},{"rule":"wir: stem + en","note":"Wir lernen, wir wohnen, wir arbeiten"},{"rule":"ihr: stem + t","note":"Ihr lernt, ihr wohnt, ihr arbeitet"},{"rule":"sie/Sie: stem + en","note":"Sie lernen, Sie wohnen"}]', '[{"german":"Ich lerne Deutsch.","arabic":"أنا أتعلم الألمانية.","english":"I am learning German."},{"german":"Du wohnst in Berlin.","arabic":"أنت تسكن في برلين.","english":"You live in Berlin."},{"german":"Er arbeitet bei Siemens.","arabic":"هو يعمل في سيمنز.","english":"He works at Siemens."}]', '[{"mistake":"Ich lernen Deutsch","correction":"Ich lerne Deutsch","explanation":"After \"ich\" we use the stem + e, not the infinitive."},{"mistake":"Er lerne Deutsch","correction":"Er lernt Deutsch","explanation":"After \"er/sie/es\" we add -t, not -e."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00003285a4b0', 'multiple_choice', 'What does "die Zeitung" mean?', '["The","A","This","That"]', 'The', 'This is a basic vocabulary item.', 1, 1),
  ('00000000-0000-4000-a000-00003285a4b0', 'fill_gap', 'Complete with the correct form.', '["Option 1","Option 2","Option 3"]', 'Option 1', 'Practice grammar in context.', 1, 2),
  ('00000000-0000-4000-a000-00003285a4b0', 'translation', 'Translate: "I learn German."', '["Ich lerne Deutsch.","Ich lerne Englisch.","Ich lerne Spanisch."]', 'Ich lerne Deutsch.', 'Ich = I, lerne = learn/learning, Deutsch = German.', 2, 3),
  ('00000000-0000-4000-a000-00003285a4b0', 'sentence_order', 'Order the sentence.', '[]', 'Ich lerne Deutsch.', 'Subject + verb + object in German.', 2, 4),
  ('00000000-0000-4000-a000-00003285a4b0', 'matching', 'Match the words with their meanings.', '["Match pairs correctly"]', 'Correct pairs', 'Test your vocabulary knowledge.', 2, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-00003285a4b0', 'multiple_choice', 'What is the main topic of this lesson?', '["Relative Clauses","Sports","Music","Travel"]', 'Relative Clauses', 1, 1),
  ('00000000-0000-4000-a000-00003285a4b0', 'true_false', 'This lesson teaches vocabulary about Relative Clauses.', '["True","False"]', 'True', 1, 2),
  ('00000000-0000-4000-a000-00003285a4b0', 'true_false', 'German word order is always the same as English.', '["True","False"]', 'False', 1, 3),
  ('00000000-0000-4000-a000-00003285a4b0', 'multiple_choice', 'How do you say "please" in German?', '["Danke","Bitte","Tschüss","Hallo"]', 'Bitte', 1, 4),
  ('00000000-0000-4000-a000-00003285a4b0', 'multiple_choice', 'Which article is feminine?', '["der","die","das","den"]', 'die', 1, 5),
  ('00000000-0000-4000-a000-00003285a4b0', 'fill_blank', 'Ich ___ (to be) Student.', '["bin","bist","ist","sind"]', 'bin', 1, 6),
  ('00000000-0000-4000-a000-00003285a4b0', 'multiple_choice', 'What is the correct word order?', '["Ich lerne Deutsch","Ich Deutsch lerne","Lerne ich Deutsch","Deutsch ich lerne"]', 'Ich lerne Deutsch', 1, 7),
  ('00000000-0000-4000-a000-00003285a4b0', 'true_false', 'All German nouns are capitalized.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-00003285a4b0', 'multiple_choice', 'How do you say "thank you" in German?', '["Bitte","Danke","Tschüss","Hallo"]', 'Danke', 1, 9),
  ('00000000-0000-4000-a000-00003285a4b0', 'fill_blank', 'Wo ___ du? (to live)', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 1, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-00003285a4b0', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Medien und Kommunikation', 'formal', false, 1),
  ('00000000-0000-4000-a000-00003285a4b0', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Medien und Kommunikation', 'informal', false, 2),
  ('00000000-0000-4000-a000-00003285a4b0', 'Bitte!', 'Please!', 'من فضلك!', 'Used in Medien und Kommunikation', 'neutral', false, 3),
  ('00000000-0000-4000-a000-00003285a4b0', 'Danke!', 'Thanks!', 'شكراً!', 'Used in Medien und Kommunikation', 'neutral', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-00003285a4b0', 'Hallo', 'Hello', 'Greeting', 'expression', 1),
  ('00000000-0000-4000-a000-00003285a4b0', 'Danke', 'Thanks', 'Politeness', 'expression', 2),
  ('00000000-0000-4000-a000-00003285a4b0', 'Bitte', 'Please', 'Politeness', 'expression', 3),
  ('00000000-0000-4000-a000-00003285a4b0', 'Tschüss', 'Bye', 'Farewell', 'expression', 4);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-00003285a4b0', 'Relativsätze (Nominativ, Akkusativ) — Leseübung', 'Die Medienlandschaft in Deutschland ist vielfältig und frei. Es gibt öffentlich-rechtliche Sender wie ARD und ZDF sowie private Fernsehsender. Die bekanntesten deutschen Zeitungen sind die Süddeutsche Zeitung, die FAZ und die Bild-Zeitung. In den letzten Jahren haben soziale Medien wie TikTok und Instagram an Bedeutung gewonnen. Viele Jugendliche informieren sich hauptsächlich über soziale Netzwerke. Journalisten müssen sorgfältig recherchieren und verschiedene Quellen überprüfen, um Falschinformationen zu vermeiden.', 'The media landscape in Germany is diverse and free. There are public broadcasters like ARD and ZDF as well as private television stations. The best-known German newspapers are the Süddeutsche Zeitung, the FAZ and the Bild-Zeitung. In recent years, social media like TikTok and Instagram have gained importance. Many young people get their information mainly from social networks. Journalists must carefully research and verify different sources to avoid misinformation.', 'المشهد الإعلامي في ألمانيا متنوح ومستقل. هناك محطات البث العامة مثل ARD و ZDF بالإضافة إلى محطات تلفزيونية خاصة. أشهر الصحف الألمانية هي Süddeutsche Zeitung و FAZ و Bild-Zeitung. في السنوات الأخيرة اكتسبت وسائل التواصل الاجتماعي مثل TikTok و Instagram أهمية. كثير من الشباب يحصلون على معلوماتهم أساساً من الشبكات الاجتماعية. يجب على الصحفيين البحث بدقة والتحقق من المصادر المختلفة لتجنب المعلومات المضللة.', 66, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, duration_seconds, speaker_count, scenario) values
  ('00000000-0000-4000-a000-00003285a4b0', 'Relativsätze (Nominativ, Akkusativ) — Hörverständnis', '[Lehrerin]: Guten Morgen! Heute lernen wir Begrüßungen.

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

[Lehrerin]: ممتاز! إلى الغد!', 72, 2, 'Medien und Kommunikation');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-00003285a4b0', 'Speaking: Relativsätze (Nominativ, Akkusativ)', 'Practice talking about Relative Clauses. Answer questions and have a simple conversation.', 'Relative Clauses', ARRAY['Use full sentences','Speak clearly','Don''t worry about mistakes']::text[], ARRAY['die Zeitung','das Internet','der Artikel','die Nachricht','das Radio']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-00003285a4b0', 'Writing: Relativsätze (Nominativ, Akkusativ)', 'Write a short text about Relative Clauses. Use at least 5 vocabulary words from this lesson.', ARRAY['Start with a greeting','Use the vocabulary from this lesson','Check your grammar']::text[], ARRAY['die Zeitung','das Internet','der Artikel']::text[], '["Sentence structure","Vocabulary usage"]', 50, 150, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00003285a4b0', 'Relativsätze (Nominativ, Akkusativ) — Roleplay', 'Relative Clauses', 'Student', 'Teacher', 'Practice conversation about Relative Clauses', 'Hallo! Lass uns über dieses Thema sprechen.', 'intermediate', 1, ARRAY['die Zeitung','das Internet','der Artikel','die Nachricht','das Radio','das Fernsehen','die Zeitschrift','der Journalist']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00003285a4b0', 'Relativsätze (Nominativ, Akkusativ) — Advanced Roleplay', 'Relative Clauses', 'Customer', 'Assistant', 'Extended conversation about Relative Clauses', 'Guten Tag! Wie kann ich Ihnen helfen?', 'intermediate', 2, ARRAY['die Zeitung','das Internet','der Artikel','die Nachricht','das Radio','das Fernsehen','die Zeitschrift','der Journalist']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-00003285a4b0', 'Relativsätze (Nominativ, Akkusativ) — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Relativsätze (Nominativ, Akkusativ)".', 'Creative practice for Relative Clauses', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-00003285a4b0', 'Homework: Relativsätze (Nominativ, Akkusativ)', 'Complete these tasks to reinforce "Relativsätze (Nominativ, Akkusativ)".', 'mixed', '[{"description":"Review all vocabulary from this lesson"},{"description":"Write 5 sentences using the grammar structure"},{"description":"Practice the dialogue aloud"}]', 35, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-00003285a4b0', 'In this lesson you learned about Relative Clauses. You practiced vocabulary related to media and grammar structure present_tense.', '["Mastered vocabulary about Relative Clauses","Applied present_tense correctly","Read and understood a text about Relative Clauses","Practiced speaking about Relative Clauses"]', '[{"title":"Relativsätze (Nominativ, Akkusativ) Review","summary":"present_tense — the main grammar focus of this lesson."}]', ARRAY['Relative Clauses core vocabulary','media key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)','Verb is always in second position']::text[], ARRAY['Practice 15-20 minutes daily','Use new vocabulary in real sentences','Speak out loud to improve pronunciation']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00003285a4b0', 'translation', 'Translate to German: "This is a translation exercise."', '[]', 'Das ist eine Übersetzungsübung.', 'Use "das ist" for "this is"', 1, 40);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00003285a4b0', 'Culture: Relative Clauses in German-Speaking Countries', 'Learn how Relative Clauses is approached in German culture.

تعلم كيف يتم التعامل مع Relative Clauses في الثقافة الألمانية.', '["Tip: Be direct and polite","Tip: Use formal language with strangers","Tip: Respect punctuality"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00003285a4b0', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Common error for Arabic speakers","correction":"Correct version","explanation":"Explanation of the error"}]', 30);

  -- Lesson 4: Meinung äußern und diskutieren (L-B1-03-04)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-00003285a4af', '00000000-0000-4000-a000-000039c2eae1', 'Meinung äußern und diskutieren', 'Practice expressing opinions and debating.', 'Expressing Opinions', 'speaking', '["Understand and use vocabulary related to Expressing Opinions","Apply present_tense correctly","Read and comprehend a text about Expressing Opinions","Listen and understand a dialogue about Expressing Opinions","Speak about Expressing Opinions in simple sentences","Write a short text about Expressing Opinions"]', 50, 4, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-00003285a4af', 'die Zeitung', 'الجريدة', 'newspaper', 'die', 'die Zeitungen', 'noun', 'Ich lese die Zeitung.', 'I read the newspaper.', 'A2', 1),
  ('00000000-0000-4000-a000-00003285a4af', 'das Internet', 'الإنترنت', 'internet', 'das', NULL, 'noun', 'Das Internet ist schnell.', 'The internet is fast.', 'A2', 2),
  ('00000000-0000-4000-a000-00003285a4af', 'der Artikel', 'المقال', 'article', 'der', 'die Artikel', 'noun', 'Der Artikel ist interessant.', 'The article is interesting.', 'B1', 3),
  ('00000000-0000-4000-a000-00003285a4af', 'die Nachricht', 'الخبر', 'news', 'die', 'die Nachrichten', 'noun', 'Ich sehe die Nachrichten.', 'I watch the news.', 'A2', 4),
  ('00000000-0000-4000-a000-00003285a4af', 'das Radio', 'الراديو', 'radio', 'das', 'die Radios', 'noun', 'Ich höre Radio.', 'I listen to the radio.', 'A2', 5),
  ('00000000-0000-4000-a000-00003285a4af', 'das Fernsehen', 'التلفاز', 'television', 'das', NULL, 'noun', 'Das Fernsehen läuft.', 'The television is on.', 'A2', 6),
  ('00000000-0000-4000-a000-00003285a4af', 'die Zeitschrift', 'المجلة', 'magazine', 'die', 'die Zeitschriften', 'noun', 'Die Zeitschrift erscheint monatlich.', 'The magazine is published monthly.', 'B1', 7),
  ('00000000-0000-4000-a000-00003285a4af', 'der Journalist', 'الصحفي', 'journalist', 'der', 'die Journalisten', 'noun', 'Der Journalist schreibt einen Artikel.', 'The journalist writes an article.', 'B1', 8),
  ('00000000-0000-4000-a000-00003285a4af', 'der Beruf', 'المهنة', 'profession', 'der', 'die Berufe', 'noun', 'Was ist dein Beruf?', 'What is your profession?', 'A1', 9),
  ('00000000-0000-4000-a000-00003285a4af', 'die Firma', 'الشركة', 'company', 'die', 'die Firmen', 'noun', 'Die Firma ist in Berlin.', 'The company is in Berlin.', 'A1', 10),
  ('00000000-0000-4000-a000-00003285a4af', 'der Kollege', 'الزميل', 'colleague', 'der', 'die Kollegen', 'noun', 'Mein Kollege hilft mir.', 'My colleague helps me.', 'A1', 11),
  ('00000000-0000-4000-a000-00003285a4af', 'das Büro', 'المكتب', 'office', 'das', 'die Büros', 'noun', 'Das Büro ist im dritten Stock.', 'The office is on the third floor.', 'A1', 12),
  ('00000000-0000-4000-a000-00003285a4af', 'die Besprechung', 'الاجتماع', 'meeting', 'die', 'die Besprechungen', 'noun', 'Wir haben eine Besprechung.', 'We have a meeting.', 'B1', 13),
  ('00000000-0000-4000-a000-00003285a4af', 'der Chef', 'المدير', 'boss', 'der', 'die Chefs', 'noun', 'Mein Chef ist freundlich.', 'My boss is friendly.', 'A1', 14),
  ('00000000-0000-4000-a000-00003285a4af', 'das Gehalt', 'الراتب', 'salary', 'das', 'die Gehälter', 'noun', 'Das Gehalt ist gut.', 'The salary is good.', 'B1', 15),
  ('00000000-0000-4000-a000-00003285a4af', 'die Stelle', 'الوظيفة', 'position', 'die', 'die Stellen', 'noun', 'Ich suche eine neue Stelle.', 'I am looking for a new position.', 'B1', 16),
  ('00000000-0000-4000-a000-00003285a4af', 'die Schule', 'المدرسة', 'school', 'die', 'die Schulen', 'noun', 'Die Kinder gehen zur Schule.', 'The children go to school.', 'A1', 17),
  ('00000000-0000-4000-a000-00003285a4af', 'der Lehrer', 'المعلم', 'teacher', 'der', 'die Lehrer', 'noun', 'Der Lehrer erklärt die Grammatik.', 'The teacher explains the grammar.', 'A1', 18),
  ('00000000-0000-4000-a000-00003285a4af', 'der Student', 'الطالب', 'student', 'der', 'die Studenten', 'noun', 'Der Student lernt Deutsch.', 'The student learns German.', 'A1', 19),
  ('00000000-0000-4000-a000-00003285a4af', 'die Universität', 'الجامعة', 'university', 'die', 'die Universitäten', 'noun', 'Die Universität ist alt.', 'The university is old.', 'B1', 20),
  ('00000000-0000-4000-a000-00003285a4af', 'der Kurs', 'الدورة', 'course', 'der', 'die Kurse', 'noun', 'Der Kurs kostet 200 Euro.', 'The course costs 200 euros.', 'A2', 21),
  ('00000000-0000-4000-a000-00003285a4af', 'die Prüfung', 'الامتحان', 'exam', 'die', 'die Prüfungen', 'noun', 'Die Prüfung ist schwer.', 'The exam is difficult.', 'B1', 22),
  ('00000000-0000-4000-a000-00003285a4af', 'das Studium', 'الدراسة الجامعية', 'studies', 'das', NULL, 'noun', 'Mein Studium dauert vier Jahre.', 'My studies take four years.', 'B1', 23),
  ('00000000-0000-4000-a000-00003285a4af', 'lernen', 'يتعلم', 'to learn', NULL, NULL, 'verb', 'Ich lerne Deutsch.', 'I learn German.', 'A1', 24),
  ('00000000-0000-4000-a000-00003285a4af', 'die Gesellschaft', 'المجتمع', 'society', 'die', NULL, 'noun', 'Die Gesellschaft verändert sich.', 'Society is changing.', 'B1', 25),
  ('00000000-0000-4000-a000-00003285a4af', 'die Politik', 'السياسة', 'politics', 'die', NULL, 'noun', 'Politik ist ein wichtiges Thema.', 'Politics is an important topic.', 'B1', 26),
  ('00000000-0000-4000-a000-00003285a4af', 'die Integration', 'الاندماج', 'integration', 'die', NULL, 'noun', 'Integration ist wichtig.', 'Integration is important.', 'B1', 27),
  ('00000000-0000-4000-a000-00003285a4af', 'die Kultur', 'الثقافة', 'culture', 'die', NULL, 'noun', 'Die deutsche Kultur ist vielfältig.', 'German culture is diverse.', 'A2', 28),
  ('00000000-0000-4000-a000-00003285a4af', 'der Bürger', 'المواطن', 'citizen', 'der', 'die Bürger', 'noun', 'Die Bürger wählen.', 'The citizens vote.', 'B1', 29),
  ('00000000-0000-4000-a000-00003285a4af', 'die Freiheit', 'الحرية', 'freedom', 'die', NULL, 'noun', 'Freiheit ist ein Grundrecht.', 'Freedom is a basic right.', 'B1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00003285a4af', 'Präsens der regelmäßigen Verben (Present Tense) / المضارع للأفعال المنتظمة', 'In German, regular verbs follow a consistent pattern. The infinitive ends in -en. Remove the -en and add the personal endings: ich -e, du -st, er/sie/es -t, wir -en, ihr -t, sie/Sie -en. For most Arabic speakers, this is easier than Arabic verb conjugation because German has fewer forms.', '[{"rule":"ich: stem + e","note":"Ich lerne, ich wohne, ich arbeite"},{"rule":"du: stem + st","note":"Du lernst, du wohnst, du arbeitest"},{"rule":"er/sie/es: stem + t","note":"Er lernt, sie wohnt, es arbeitet"},{"rule":"wir: stem + en","note":"Wir lernen, wir wohnen, wir arbeiten"},{"rule":"ihr: stem + t","note":"Ihr lernt, ihr wohnt, ihr arbeitet"},{"rule":"sie/Sie: stem + en","note":"Sie lernen, Sie wohnen"}]', '[{"german":"Ich lerne Deutsch.","arabic":"أنا أتعلم الألمانية.","english":"I am learning German."},{"german":"Du wohnst in Berlin.","arabic":"أنت تسكن في برلين.","english":"You live in Berlin."},{"german":"Er arbeitet bei Siemens.","arabic":"هو يعمل في سيمنز.","english":"He works at Siemens."}]', '[{"mistake":"Ich lernen Deutsch","correction":"Ich lerne Deutsch","explanation":"After \"ich\" we use the stem + e, not the infinitive."},{"mistake":"Er lerne Deutsch","correction":"Er lernt Deutsch","explanation":"After \"er/sie/es\" we add -t, not -e."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00003285a4af', 'multiple_choice', 'What does "die Zeitung" mean?', '["The","A","This","That"]', 'The', 'This is a basic vocabulary item.', 1, 1),
  ('00000000-0000-4000-a000-00003285a4af', 'fill_gap', 'Complete with the correct form.', '["Option 1","Option 2","Option 3"]', 'Option 1', 'Practice grammar in context.', 1, 2),
  ('00000000-0000-4000-a000-00003285a4af', 'translation', 'Translate: "I learn German."', '["Ich lerne Deutsch.","Ich lerne Englisch.","Ich lerne Spanisch."]', 'Ich lerne Deutsch.', 'Ich = I, lerne = learn/learning, Deutsch = German.', 2, 3),
  ('00000000-0000-4000-a000-00003285a4af', 'sentence_order', 'Order the sentence.', '[]', 'Ich lerne Deutsch.', 'Subject + verb + object in German.', 2, 4),
  ('00000000-0000-4000-a000-00003285a4af', 'matching', 'Match the words with their meanings.', '["Match pairs correctly"]', 'Correct pairs', 'Test your vocabulary knowledge.', 2, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-00003285a4af', 'multiple_choice', 'What is the main topic of this lesson?', '["Expressing Opinions","Sports","Music","Travel"]', 'Expressing Opinions', 1, 1),
  ('00000000-0000-4000-a000-00003285a4af', 'true_false', 'This lesson teaches vocabulary about Expressing Opinions.', '["True","False"]', 'True', 1, 2),
  ('00000000-0000-4000-a000-00003285a4af', 'true_false', 'German word order is always the same as English.', '["True","False"]', 'False', 1, 3),
  ('00000000-0000-4000-a000-00003285a4af', 'multiple_choice', 'How do you say "please" in German?', '["Danke","Bitte","Tschüss","Hallo"]', 'Bitte', 1, 4),
  ('00000000-0000-4000-a000-00003285a4af', 'multiple_choice', 'Which article is feminine?', '["der","die","das","den"]', 'die', 1, 5),
  ('00000000-0000-4000-a000-00003285a4af', 'fill_blank', 'Ich ___ (to be) Student.', '["bin","bist","ist","sind"]', 'bin', 1, 6),
  ('00000000-0000-4000-a000-00003285a4af', 'multiple_choice', 'What is the correct word order?', '["Ich lerne Deutsch","Ich Deutsch lerne","Lerne ich Deutsch","Deutsch ich lerne"]', 'Ich lerne Deutsch', 1, 7),
  ('00000000-0000-4000-a000-00003285a4af', 'true_false', 'All German nouns are capitalized.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-00003285a4af', 'multiple_choice', 'How do you say "thank you" in German?', '["Bitte","Danke","Tschüss","Hallo"]', 'Danke', 1, 9),
  ('00000000-0000-4000-a000-00003285a4af', 'fill_blank', 'Wo ___ du? (to live)', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 1, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-00003285a4af', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Medien und Kommunikation', 'formal', false, 1),
  ('00000000-0000-4000-a000-00003285a4af', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Medien und Kommunikation', 'informal', false, 2),
  ('00000000-0000-4000-a000-00003285a4af', 'Bitte!', 'Please!', 'من فضلك!', 'Used in Medien und Kommunikation', 'neutral', false, 3),
  ('00000000-0000-4000-a000-00003285a4af', 'Danke!', 'Thanks!', 'شكراً!', 'Used in Medien und Kommunikation', 'neutral', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-00003285a4af', 'Hallo', 'Hello', 'Greeting', 'expression', 1),
  ('00000000-0000-4000-a000-00003285a4af', 'Danke', 'Thanks', 'Politeness', 'expression', 2),
  ('00000000-0000-4000-a000-00003285a4af', 'Bitte', 'Please', 'Politeness', 'expression', 3),
  ('00000000-0000-4000-a000-00003285a4af', 'Tschüss', 'Bye', 'Farewell', 'expression', 4);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-00003285a4af', 'Meinung äußern und diskutieren — Leseübung', 'Die Medienlandschaft in Deutschland ist vielfältig und frei. Es gibt öffentlich-rechtliche Sender wie ARD und ZDF sowie private Fernsehsender. Die bekanntesten deutschen Zeitungen sind die Süddeutsche Zeitung, die FAZ und die Bild-Zeitung. In den letzten Jahren haben soziale Medien wie TikTok und Instagram an Bedeutung gewonnen. Viele Jugendliche informieren sich hauptsächlich über soziale Netzwerke. Journalisten müssen sorgfältig recherchieren und verschiedene Quellen überprüfen, um Falschinformationen zu vermeiden.', 'The media landscape in Germany is diverse and free. There are public broadcasters like ARD and ZDF as well as private television stations. The best-known German newspapers are the Süddeutsche Zeitung, the FAZ and the Bild-Zeitung. In recent years, social media like TikTok and Instagram have gained importance. Many young people get their information mainly from social networks. Journalists must carefully research and verify different sources to avoid misinformation.', 'المشهد الإعلامي في ألمانيا متنوح ومستقل. هناك محطات البث العامة مثل ARD و ZDF بالإضافة إلى محطات تلفزيونية خاصة. أشهر الصحف الألمانية هي Süddeutsche Zeitung و FAZ و Bild-Zeitung. في السنوات الأخيرة اكتسبت وسائل التواصل الاجتماعي مثل TikTok و Instagram أهمية. كثير من الشباب يحصلون على معلوماتهم أساساً من الشبكات الاجتماعية. يجب على الصحفيين البحث بدقة والتحقق من المصادر المختلفة لتجنب المعلومات المضللة.', 66, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, duration_seconds, speaker_count, scenario) values
  ('00000000-0000-4000-a000-00003285a4af', 'Meinung äußern und diskutieren — Hörverständnis', '[Lehrerin]: Guten Morgen! Heute lernen wir Begrüßungen.

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

[Lehrerin]: ممتاز! إلى الغد!', 72, 2, 'Medien und Kommunikation');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-00003285a4af', 'Speaking: Meinung äußern und diskutieren', 'Practice talking about Expressing Opinions. Answer questions and have a simple conversation.', 'Expressing Opinions', ARRAY['Use full sentences','Speak clearly','Don''t worry about mistakes']::text[], ARRAY['die Zeitung','das Internet','der Artikel','die Nachricht','das Radio']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-00003285a4af', 'Writing: Meinung äußern und diskutieren', 'Write a short text about Expressing Opinions. Use at least 5 vocabulary words from this lesson.', ARRAY['Start with a greeting','Use the vocabulary from this lesson','Check your grammar']::text[], ARRAY['die Zeitung','das Internet','der Artikel']::text[], '["Sentence structure","Vocabulary usage"]', 50, 150, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00003285a4af', 'Meinung äußern und diskutieren — Roleplay', 'Expressing Opinions', 'Student', 'Teacher', 'Practice conversation about Expressing Opinions', 'Hallo! Lass uns über dieses Thema sprechen.', 'intermediate', 1, ARRAY['die Zeitung','das Internet','der Artikel','die Nachricht','das Radio','das Fernsehen','die Zeitschrift','der Journalist']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00003285a4af', 'Meinung äußern und diskutieren — Advanced Roleplay', 'Expressing Opinions', 'Customer', 'Assistant', 'Extended conversation about Expressing Opinions', 'Guten Tag! Wie kann ich Ihnen helfen?', 'intermediate', 2, ARRAY['die Zeitung','das Internet','der Artikel','die Nachricht','das Radio','das Fernsehen','die Zeitschrift','der Journalist']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-00003285a4af', 'Meinung äußern und diskutieren — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Meinung äußern und diskutieren".', 'Creative practice for Expressing Opinions', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-00003285a4af', 'Homework: Meinung äußern und diskutieren', 'Complete these tasks to reinforce "Meinung äußern und diskutieren".', 'mixed', '[{"description":"Review all vocabulary from this lesson"},{"description":"Write 5 sentences using the grammar structure"},{"description":"Practice the dialogue aloud"}]', 35, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-00003285a4af', 'In this lesson you learned about Expressing Opinions. You practiced vocabulary related to media and grammar structure present_tense.', '["Mastered vocabulary about Expressing Opinions","Applied present_tense correctly","Read and understood a text about Expressing Opinions","Practiced speaking about Expressing Opinions"]', '[{"title":"Meinung äußern und diskutieren Review","summary":"present_tense — the main grammar focus of this lesson."}]', ARRAY['Expressing Opinions core vocabulary','media key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)','Verb is always in second position']::text[], ARRAY['Practice 15-20 minutes daily','Use new vocabulary in real sentences','Speak out loud to improve pronunciation']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00003285a4af', 'translation', 'Translate to German: "This is a translation exercise."', '[]', 'Das ist eine Übersetzungsübung.', 'Use "das ist" for "this is"', 1, 40);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00003285a4af', 'Culture: Expressing Opinions in German-Speaking Countries', 'Learn how Expressing Opinions is approached in German culture.

تعلم كيف يتم التعامل مع Expressing Opinions في الثقافة الألمانية.', '["Tip: Be direct and polite","Tip: Use formal language with strangers","Tip: Respect punctuality"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00003285a4af', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Common error for Arabic speakers","correction":"Correct version","explanation":"Explanation of the error"}]', 30);

  -- Lesson 5: Test: Medien und Kommunikation (L-B1-03-05)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-00003285a4ae', '00000000-0000-4000-a000-000039c2eae1', 'Test: Medien und Kommunikation', 'Module test on media and communication.', 'Module Test', 'test', '["Understand and use vocabulary related to Module Test","Apply present_tense correctly","Read and comprehend a text about Module Test","Listen and understand a dialogue about Module Test","Speak about Module Test in simple sentences","Write a short text about Module Test"]', 40, 5, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-00003285a4ae', 'die Zeitung', 'الجريدة', 'newspaper', 'die', 'die Zeitungen', 'noun', 'Ich lese die Zeitung.', 'I read the newspaper.', 'A2', 1),
  ('00000000-0000-4000-a000-00003285a4ae', 'das Internet', 'الإنترنت', 'internet', 'das', NULL, 'noun', 'Das Internet ist schnell.', 'The internet is fast.', 'A2', 2),
  ('00000000-0000-4000-a000-00003285a4ae', 'der Artikel', 'المقال', 'article', 'der', 'die Artikel', 'noun', 'Der Artikel ist interessant.', 'The article is interesting.', 'B1', 3),
  ('00000000-0000-4000-a000-00003285a4ae', 'die Nachricht', 'الخبر', 'news', 'die', 'die Nachrichten', 'noun', 'Ich sehe die Nachrichten.', 'I watch the news.', 'A2', 4),
  ('00000000-0000-4000-a000-00003285a4ae', 'das Radio', 'الراديو', 'radio', 'das', 'die Radios', 'noun', 'Ich höre Radio.', 'I listen to the radio.', 'A2', 5),
  ('00000000-0000-4000-a000-00003285a4ae', 'das Fernsehen', 'التلفاز', 'television', 'das', NULL, 'noun', 'Das Fernsehen läuft.', 'The television is on.', 'A2', 6),
  ('00000000-0000-4000-a000-00003285a4ae', 'die Zeitschrift', 'المجلة', 'magazine', 'die', 'die Zeitschriften', 'noun', 'Die Zeitschrift erscheint monatlich.', 'The magazine is published monthly.', 'B1', 7),
  ('00000000-0000-4000-a000-00003285a4ae', 'der Journalist', 'الصحفي', 'journalist', 'der', 'die Journalisten', 'noun', 'Der Journalist schreibt einen Artikel.', 'The journalist writes an article.', 'B1', 8),
  ('00000000-0000-4000-a000-00003285a4ae', 'der Beruf', 'المهنة', 'profession', 'der', 'die Berufe', 'noun', 'Was ist dein Beruf?', 'What is your profession?', 'A1', 9),
  ('00000000-0000-4000-a000-00003285a4ae', 'die Firma', 'الشركة', 'company', 'die', 'die Firmen', 'noun', 'Die Firma ist in Berlin.', 'The company is in Berlin.', 'A1', 10),
  ('00000000-0000-4000-a000-00003285a4ae', 'der Kollege', 'الزميل', 'colleague', 'der', 'die Kollegen', 'noun', 'Mein Kollege hilft mir.', 'My colleague helps me.', 'A1', 11),
  ('00000000-0000-4000-a000-00003285a4ae', 'das Büro', 'المكتب', 'office', 'das', 'die Büros', 'noun', 'Das Büro ist im dritten Stock.', 'The office is on the third floor.', 'A1', 12),
  ('00000000-0000-4000-a000-00003285a4ae', 'die Besprechung', 'الاجتماع', 'meeting', 'die', 'die Besprechungen', 'noun', 'Wir haben eine Besprechung.', 'We have a meeting.', 'B1', 13),
  ('00000000-0000-4000-a000-00003285a4ae', 'der Chef', 'المدير', 'boss', 'der', 'die Chefs', 'noun', 'Mein Chef ist freundlich.', 'My boss is friendly.', 'A1', 14),
  ('00000000-0000-4000-a000-00003285a4ae', 'das Gehalt', 'الراتب', 'salary', 'das', 'die Gehälter', 'noun', 'Das Gehalt ist gut.', 'The salary is good.', 'B1', 15),
  ('00000000-0000-4000-a000-00003285a4ae', 'die Stelle', 'الوظيفة', 'position', 'die', 'die Stellen', 'noun', 'Ich suche eine neue Stelle.', 'I am looking for a new position.', 'B1', 16),
  ('00000000-0000-4000-a000-00003285a4ae', 'die Schule', 'المدرسة', 'school', 'die', 'die Schulen', 'noun', 'Die Kinder gehen zur Schule.', 'The children go to school.', 'A1', 17),
  ('00000000-0000-4000-a000-00003285a4ae', 'der Lehrer', 'المعلم', 'teacher', 'der', 'die Lehrer', 'noun', 'Der Lehrer erklärt die Grammatik.', 'The teacher explains the grammar.', 'A1', 18),
  ('00000000-0000-4000-a000-00003285a4ae', 'der Student', 'الطالب', 'student', 'der', 'die Studenten', 'noun', 'Der Student lernt Deutsch.', 'The student learns German.', 'A1', 19),
  ('00000000-0000-4000-a000-00003285a4ae', 'die Universität', 'الجامعة', 'university', 'die', 'die Universitäten', 'noun', 'Die Universität ist alt.', 'The university is old.', 'B1', 20),
  ('00000000-0000-4000-a000-00003285a4ae', 'der Kurs', 'الدورة', 'course', 'der', 'die Kurse', 'noun', 'Der Kurs kostet 200 Euro.', 'The course costs 200 euros.', 'A2', 21),
  ('00000000-0000-4000-a000-00003285a4ae', 'die Prüfung', 'الامتحان', 'exam', 'die', 'die Prüfungen', 'noun', 'Die Prüfung ist schwer.', 'The exam is difficult.', 'B1', 22),
  ('00000000-0000-4000-a000-00003285a4ae', 'das Studium', 'الدراسة الجامعية', 'studies', 'das', NULL, 'noun', 'Mein Studium dauert vier Jahre.', 'My studies take four years.', 'B1', 23),
  ('00000000-0000-4000-a000-00003285a4ae', 'lernen', 'يتعلم', 'to learn', NULL, NULL, 'verb', 'Ich lerne Deutsch.', 'I learn German.', 'A1', 24),
  ('00000000-0000-4000-a000-00003285a4ae', 'die Gesellschaft', 'المجتمع', 'society', 'die', NULL, 'noun', 'Die Gesellschaft verändert sich.', 'Society is changing.', 'B1', 25),
  ('00000000-0000-4000-a000-00003285a4ae', 'die Politik', 'السياسة', 'politics', 'die', NULL, 'noun', 'Politik ist ein wichtiges Thema.', 'Politics is an important topic.', 'B1', 26),
  ('00000000-0000-4000-a000-00003285a4ae', 'die Integration', 'الاندماج', 'integration', 'die', NULL, 'noun', 'Integration ist wichtig.', 'Integration is important.', 'B1', 27),
  ('00000000-0000-4000-a000-00003285a4ae', 'die Kultur', 'الثقافة', 'culture', 'die', NULL, 'noun', 'Die deutsche Kultur ist vielfältig.', 'German culture is diverse.', 'A2', 28),
  ('00000000-0000-4000-a000-00003285a4ae', 'der Bürger', 'المواطن', 'citizen', 'der', 'die Bürger', 'noun', 'Die Bürger wählen.', 'The citizens vote.', 'B1', 29),
  ('00000000-0000-4000-a000-00003285a4ae', 'die Freiheit', 'الحرية', 'freedom', 'die', NULL, 'noun', 'Freiheit ist ein Grundrecht.', 'Freedom is a basic right.', 'B1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00003285a4ae', 'Präsens der regelmäßigen Verben (Present Tense) / المضارع للأفعال المنتظمة', 'In German, regular verbs follow a consistent pattern. The infinitive ends in -en. Remove the -en and add the personal endings: ich -e, du -st, er/sie/es -t, wir -en, ihr -t, sie/Sie -en. For most Arabic speakers, this is easier than Arabic verb conjugation because German has fewer forms.', '[{"rule":"ich: stem + e","note":"Ich lerne, ich wohne, ich arbeite"},{"rule":"du: stem + st","note":"Du lernst, du wohnst, du arbeitest"},{"rule":"er/sie/es: stem + t","note":"Er lernt, sie wohnt, es arbeitet"},{"rule":"wir: stem + en","note":"Wir lernen, wir wohnen, wir arbeiten"},{"rule":"ihr: stem + t","note":"Ihr lernt, ihr wohnt, ihr arbeitet"},{"rule":"sie/Sie: stem + en","note":"Sie lernen, Sie wohnen"}]', '[{"german":"Ich lerne Deutsch.","arabic":"أنا أتعلم الألمانية.","english":"I am learning German."},{"german":"Du wohnst in Berlin.","arabic":"أنت تسكن في برلين.","english":"You live in Berlin."},{"german":"Er arbeitet bei Siemens.","arabic":"هو يعمل في سيمنز.","english":"He works at Siemens."}]', '[{"mistake":"Ich lernen Deutsch","correction":"Ich lerne Deutsch","explanation":"After \"ich\" we use the stem + e, not the infinitive."},{"mistake":"Er lerne Deutsch","correction":"Er lernt Deutsch","explanation":"After \"er/sie/es\" we add -t, not -e."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00003285a4ae', 'multiple_choice', 'What does "die Zeitung" mean?', '["The","A","This","That"]', 'The', 'This is a basic vocabulary item.', 1, 1),
  ('00000000-0000-4000-a000-00003285a4ae', 'fill_gap', 'Complete with the correct form.', '["Option 1","Option 2","Option 3"]', 'Option 1', 'Practice grammar in context.', 1, 2),
  ('00000000-0000-4000-a000-00003285a4ae', 'translation', 'Translate: "I learn German."', '["Ich lerne Deutsch.","Ich lerne Englisch.","Ich lerne Spanisch."]', 'Ich lerne Deutsch.', 'Ich = I, lerne = learn/learning, Deutsch = German.', 2, 3),
  ('00000000-0000-4000-a000-00003285a4ae', 'sentence_order', 'Order the sentence.', '[]', 'Ich lerne Deutsch.', 'Subject + verb + object in German.', 2, 4),
  ('00000000-0000-4000-a000-00003285a4ae', 'matching', 'Match the words with their meanings.', '["Match pairs correctly"]', 'Correct pairs', 'Test your vocabulary knowledge.', 2, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-00003285a4ae', 'multiple_choice', 'What is the main topic of this lesson?', '["Module Test","Sports","Music","Travel"]', 'Module Test', 1, 1),
  ('00000000-0000-4000-a000-00003285a4ae', 'true_false', 'This lesson teaches vocabulary about Module Test.', '["True","False"]', 'True', 1, 2),
  ('00000000-0000-4000-a000-00003285a4ae', 'true_false', 'German word order is always the same as English.', '["True","False"]', 'False', 1, 3),
  ('00000000-0000-4000-a000-00003285a4ae', 'multiple_choice', 'How do you say "please" in German?', '["Danke","Bitte","Tschüss","Hallo"]', 'Bitte', 1, 4),
  ('00000000-0000-4000-a000-00003285a4ae', 'multiple_choice', 'Which article is feminine?', '["der","die","das","den"]', 'die', 1, 5),
  ('00000000-0000-4000-a000-00003285a4ae', 'fill_blank', 'Ich ___ (to be) Student.', '["bin","bist","ist","sind"]', 'bin', 1, 6),
  ('00000000-0000-4000-a000-00003285a4ae', 'multiple_choice', 'What is the correct word order?', '["Ich lerne Deutsch","Ich Deutsch lerne","Lerne ich Deutsch","Deutsch ich lerne"]', 'Ich lerne Deutsch', 1, 7),
  ('00000000-0000-4000-a000-00003285a4ae', 'true_false', 'All German nouns are capitalized.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-00003285a4ae', 'multiple_choice', 'How do you say "thank you" in German?', '["Bitte","Danke","Tschüss","Hallo"]', 'Danke', 1, 9),
  ('00000000-0000-4000-a000-00003285a4ae', 'fill_blank', 'Wo ___ du? (to live)', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 1, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-00003285a4ae', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Medien und Kommunikation', 'formal', false, 1),
  ('00000000-0000-4000-a000-00003285a4ae', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Medien und Kommunikation', 'informal', false, 2),
  ('00000000-0000-4000-a000-00003285a4ae', 'Bitte!', 'Please!', 'من فضلك!', 'Used in Medien und Kommunikation', 'neutral', false, 3),
  ('00000000-0000-4000-a000-00003285a4ae', 'Danke!', 'Thanks!', 'شكراً!', 'Used in Medien und Kommunikation', 'neutral', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-00003285a4ae', 'Hallo', 'Hello', 'Greeting', 'expression', 1),
  ('00000000-0000-4000-a000-00003285a4ae', 'Danke', 'Thanks', 'Politeness', 'expression', 2),
  ('00000000-0000-4000-a000-00003285a4ae', 'Bitte', 'Please', 'Politeness', 'expression', 3),
  ('00000000-0000-4000-a000-00003285a4ae', 'Tschüss', 'Bye', 'Farewell', 'expression', 4);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-00003285a4ae', 'Test: Medien und Kommunikation — Leseübung', 'Die Medienlandschaft in Deutschland ist vielfältig und frei. Es gibt öffentlich-rechtliche Sender wie ARD und ZDF sowie private Fernsehsender. Die bekanntesten deutschen Zeitungen sind die Süddeutsche Zeitung, die FAZ und die Bild-Zeitung. In den letzten Jahren haben soziale Medien wie TikTok und Instagram an Bedeutung gewonnen. Viele Jugendliche informieren sich hauptsächlich über soziale Netzwerke. Journalisten müssen sorgfältig recherchieren und verschiedene Quellen überprüfen, um Falschinformationen zu vermeiden.', 'The media landscape in Germany is diverse and free. There are public broadcasters like ARD and ZDF as well as private television stations. The best-known German newspapers are the Süddeutsche Zeitung, the FAZ and the Bild-Zeitung. In recent years, social media like TikTok and Instagram have gained importance. Many young people get their information mainly from social networks. Journalists must carefully research and verify different sources to avoid misinformation.', 'المشهد الإعلامي في ألمانيا متنوح ومستقل. هناك محطات البث العامة مثل ARD و ZDF بالإضافة إلى محطات تلفزيونية خاصة. أشهر الصحف الألمانية هي Süddeutsche Zeitung و FAZ و Bild-Zeitung. في السنوات الأخيرة اكتسبت وسائل التواصل الاجتماعي مثل TikTok و Instagram أهمية. كثير من الشباب يحصلون على معلوماتهم أساساً من الشبكات الاجتماعية. يجب على الصحفيين البحث بدقة والتحقق من المصادر المختلفة لتجنب المعلومات المضللة.', 66, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, duration_seconds, speaker_count, scenario) values
  ('00000000-0000-4000-a000-00003285a4ae', 'Test: Medien und Kommunikation — Hörverständnis', '[Lehrerin]: Guten Morgen! Heute lernen wir Begrüßungen.

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

[Lehrerin]: ممتاز! إلى الغد!', 72, 2, 'Medien und Kommunikation');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-00003285a4ae', 'Speaking: Test: Medien und Kommunikation', 'Practice talking about Module Test. Answer questions and have a simple conversation.', 'Module Test', ARRAY['Use full sentences','Speak clearly','Don''t worry about mistakes']::text[], ARRAY['die Zeitung','das Internet','der Artikel','die Nachricht','das Radio']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-00003285a4ae', 'Writing: Test: Medien und Kommunikation', 'Write a short text about Module Test. Use at least 5 vocabulary words from this lesson.', ARRAY['Start with a greeting','Use the vocabulary from this lesson','Check your grammar']::text[], ARRAY['die Zeitung','das Internet','der Artikel']::text[], '["Sentence structure","Vocabulary usage"]', 50, 150, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00003285a4ae', 'Test: Medien und Kommunikation — Roleplay', 'Module Test', 'Student', 'Teacher', 'Practice conversation about Module Test', 'Hallo! Lass uns über dieses Thema sprechen.', 'intermediate', 1, ARRAY['die Zeitung','das Internet','der Artikel','die Nachricht','das Radio','das Fernsehen','die Zeitschrift','der Journalist']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00003285a4ae', 'Test: Medien und Kommunikation — Advanced Roleplay', 'Module Test', 'Customer', 'Assistant', 'Extended conversation about Module Test', 'Guten Tag! Wie kann ich Ihnen helfen?', 'intermediate', 2, ARRAY['die Zeitung','das Internet','der Artikel','die Nachricht','das Radio','das Fernsehen','die Zeitschrift','der Journalist']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-00003285a4ae', 'Test: Medien und Kommunikation — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Test: Medien und Kommunikation".', 'Creative practice for Module Test', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-00003285a4ae', 'Homework: Test: Medien und Kommunikation', 'Complete these tasks to reinforce "Test: Medien und Kommunikation".', 'mixed', '[{"description":"Review all vocabulary from this lesson"},{"description":"Write 5 sentences using the grammar structure"},{"description":"Practice the dialogue aloud"}]', 35, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-00003285a4ae', 'In this lesson you learned about Module Test. You practiced vocabulary related to media and grammar structure present_tense.', '["Mastered vocabulary about Module Test","Applied present_tense correctly","Read and understood a text about Module Test","Practiced speaking about Module Test"]', '[{"title":"Test: Medien und Kommunikation Review","summary":"present_tense — the main grammar focus of this lesson."}]', ARRAY['Module Test core vocabulary','media key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)','Verb is always in second position']::text[], ARRAY['Practice 15-20 minutes daily','Use new vocabulary in real sentences','Speak out loud to improve pronunciation']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00003285a4ae', 'translation', 'Translate to German: "This is a translation exercise."', '[]', 'Das ist eine Übersetzungsübung.', 'Use "das ist" for "this is"', 1, 40);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00003285a4ae', 'Culture: Module Test in German-Speaking Countries', 'Learn how Module Test is approached in German culture.

تعلم كيف يتم التعامل مع Module Test في الثقافة الألمانية.', '["Tip: Be direct and polite","Tip: Use formal language with strangers","Tip: Respect punctuality"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00003285a4ae', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Common error for Arabic speakers","correction":"Correct version","explanation":"Explanation of the error"}]', 30);

  -- Module 4: Bildung und Lernen
  insert into public.course_modules (id, level_id, title, description, objectives, order_index, estimated_hours, is_published)
  values ('00000000-0000-4000-a000-000039c2eae2', 'B1', 'Bildung und Lernen', 'Talk about education, school systems, and learning experiences.', '["Describe school systems and education","Talk about learning experiences","Use two-way prepositions (Wechselpräpositionen)","Give presentations on familiar topics","Discuss language learning strategies"]', 4, 5, true)
  on conflict (id) do nothing;

  -- Lesson 1: Das deutsche Schulsystem (L-B1-04-01)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-000032853053', '00000000-0000-4000-a000-000039c2eae2', 'Das deutsche Schulsystem', 'Learn about the German education system.', 'German School System', 'vocabulary', '["Understand and use vocabulary related to German School System","Apply present_tense correctly","Read and comprehend a text about German School System","Listen and understand a dialogue about German School System","Speak about German School System in simple sentences","Write a short text about German School System"]', 50, 1, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-000032853053', 'die Schule', 'المدرسة', 'school', 'die', 'die Schulen', 'noun', 'Die Kinder gehen zur Schule.', 'The children go to school.', 'A1', 1),
  ('00000000-0000-4000-a000-000032853053', 'der Lehrer', 'المعلم', 'teacher', 'der', 'die Lehrer', 'noun', 'Der Lehrer erklärt die Grammatik.', 'The teacher explains the grammar.', 'A1', 2),
  ('00000000-0000-4000-a000-000032853053', 'der Student', 'الطالب', 'student', 'der', 'die Studenten', 'noun', 'Der Student lernt Deutsch.', 'The student learns German.', 'A1', 3),
  ('00000000-0000-4000-a000-000032853053', 'die Universität', 'الجامعة', 'university', 'die', 'die Universitäten', 'noun', 'Die Universität ist alt.', 'The university is old.', 'B1', 4),
  ('00000000-0000-4000-a000-000032853053', 'der Kurs', 'الدورة', 'course', 'der', 'die Kurse', 'noun', 'Der Kurs kostet 200 Euro.', 'The course costs 200 euros.', 'A2', 5),
  ('00000000-0000-4000-a000-000032853053', 'die Prüfung', 'الامتحان', 'exam', 'die', 'die Prüfungen', 'noun', 'Die Prüfung ist schwer.', 'The exam is difficult.', 'B1', 6),
  ('00000000-0000-4000-a000-000032853053', 'das Studium', 'الدراسة الجامعية', 'studies', 'das', NULL, 'noun', 'Mein Studium dauert vier Jahre.', 'My studies take four years.', 'B1', 7),
  ('00000000-0000-4000-a000-000032853053', 'lernen', 'يتعلم', 'to learn', NULL, NULL, 'verb', 'Ich lerne Deutsch.', 'I learn German.', 'A1', 8),
  ('00000000-0000-4000-a000-000032853053', 'der Beruf', 'المهنة', 'profession', 'der', 'die Berufe', 'noun', 'Was ist dein Beruf?', 'What is your profession?', 'A1', 9),
  ('00000000-0000-4000-a000-000032853053', 'die Firma', 'الشركة', 'company', 'die', 'die Firmen', 'noun', 'Die Firma ist in Berlin.', 'The company is in Berlin.', 'A1', 10),
  ('00000000-0000-4000-a000-000032853053', 'der Kollege', 'الزميل', 'colleague', 'der', 'die Kollegen', 'noun', 'Mein Kollege hilft mir.', 'My colleague helps me.', 'A1', 11),
  ('00000000-0000-4000-a000-000032853053', 'das Büro', 'المكتب', 'office', 'das', 'die Büros', 'noun', 'Das Büro ist im dritten Stock.', 'The office is on the third floor.', 'A1', 12),
  ('00000000-0000-4000-a000-000032853053', 'die Besprechung', 'الاجتماع', 'meeting', 'die', 'die Besprechungen', 'noun', 'Wir haben eine Besprechung.', 'We have a meeting.', 'B1', 13),
  ('00000000-0000-4000-a000-000032853053', 'der Chef', 'المدير', 'boss', 'der', 'die Chefs', 'noun', 'Mein Chef ist freundlich.', 'My boss is friendly.', 'A1', 14),
  ('00000000-0000-4000-a000-000032853053', 'das Gehalt', 'الراتب', 'salary', 'das', 'die Gehälter', 'noun', 'Das Gehalt ist gut.', 'The salary is good.', 'B1', 15),
  ('00000000-0000-4000-a000-000032853053', 'die Stelle', 'الوظيفة', 'position', 'die', 'die Stellen', 'noun', 'Ich suche eine neue Stelle.', 'I am looking for a new position.', 'B1', 16),
  ('00000000-0000-4000-a000-000032853053', 'die Zeitung', 'الجريدة', 'newspaper', 'die', 'die Zeitungen', 'noun', 'Ich lese die Zeitung.', 'I read the newspaper.', 'A2', 17),
  ('00000000-0000-4000-a000-000032853053', 'das Internet', 'الإنترنت', 'internet', 'das', NULL, 'noun', 'Das Internet ist schnell.', 'The internet is fast.', 'A2', 18),
  ('00000000-0000-4000-a000-000032853053', 'der Artikel', 'المقال', 'article', 'der', 'die Artikel', 'noun', 'Der Artikel ist interessant.', 'The article is interesting.', 'B1', 19),
  ('00000000-0000-4000-a000-000032853053', 'die Nachricht', 'الخبر', 'news', 'die', 'die Nachrichten', 'noun', 'Ich sehe die Nachrichten.', 'I watch the news.', 'A2', 20),
  ('00000000-0000-4000-a000-000032853053', 'das Radio', 'الراديو', 'radio', 'das', 'die Radios', 'noun', 'Ich höre Radio.', 'I listen to the radio.', 'A2', 21),
  ('00000000-0000-4000-a000-000032853053', 'das Fernsehen', 'التلفاز', 'television', 'das', NULL, 'noun', 'Das Fernsehen läuft.', 'The television is on.', 'A2', 22),
  ('00000000-0000-4000-a000-000032853053', 'die Zeitschrift', 'المجلة', 'magazine', 'die', 'die Zeitschriften', 'noun', 'Die Zeitschrift erscheint monatlich.', 'The magazine is published monthly.', 'B1', 23),
  ('00000000-0000-4000-a000-000032853053', 'der Journalist', 'الصحفي', 'journalist', 'der', 'die Journalisten', 'noun', 'Der Journalist schreibt einen Artikel.', 'The journalist writes an article.', 'B1', 24),
  ('00000000-0000-4000-a000-000032853053', 'die Gesellschaft', 'المجتمع', 'society', 'die', NULL, 'noun', 'Die Gesellschaft verändert sich.', 'Society is changing.', 'B1', 25),
  ('00000000-0000-4000-a000-000032853053', 'die Politik', 'السياسة', 'politics', 'die', NULL, 'noun', 'Politik ist ein wichtiges Thema.', 'Politics is an important topic.', 'B1', 26),
  ('00000000-0000-4000-a000-000032853053', 'die Integration', 'الاندماج', 'integration', 'die', NULL, 'noun', 'Integration ist wichtig.', 'Integration is important.', 'B1', 27),
  ('00000000-0000-4000-a000-000032853053', 'die Kultur', 'الثقافة', 'culture', 'die', NULL, 'noun', 'Die deutsche Kultur ist vielfältig.', 'German culture is diverse.', 'A2', 28),
  ('00000000-0000-4000-a000-000032853053', 'der Bürger', 'المواطن', 'citizen', 'der', 'die Bürger', 'noun', 'Die Bürger wählen.', 'The citizens vote.', 'B1', 29),
  ('00000000-0000-4000-a000-000032853053', 'die Freiheit', 'الحرية', 'freedom', 'die', NULL, 'noun', 'Freiheit ist ein Grundrecht.', 'Freedom is a basic right.', 'B1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000032853053', 'Präsens der regelmäßigen Verben (Present Tense) / المضارع للأفعال المنتظمة', 'In German, regular verbs follow a consistent pattern. The infinitive ends in -en. Remove the -en and add the personal endings: ich -e, du -st, er/sie/es -t, wir -en, ihr -t, sie/Sie -en. For most Arabic speakers, this is easier than Arabic verb conjugation because German has fewer forms.', '[{"rule":"ich: stem + e","note":"Ich lerne, ich wohne, ich arbeite"},{"rule":"du: stem + st","note":"Du lernst, du wohnst, du arbeitest"},{"rule":"er/sie/es: stem + t","note":"Er lernt, sie wohnt, es arbeitet"},{"rule":"wir: stem + en","note":"Wir lernen, wir wohnen, wir arbeiten"},{"rule":"ihr: stem + t","note":"Ihr lernt, ihr wohnt, ihr arbeitet"},{"rule":"sie/Sie: stem + en","note":"Sie lernen, Sie wohnen"}]', '[{"german":"Ich lerne Deutsch.","arabic":"أنا أتعلم الألمانية.","english":"I am learning German."},{"german":"Du wohnst in Berlin.","arabic":"أنت تسكن في برلين.","english":"You live in Berlin."},{"german":"Er arbeitet bei Siemens.","arabic":"هو يعمل في سيمنز.","english":"He works at Siemens."}]', '[{"mistake":"Ich lernen Deutsch","correction":"Ich lerne Deutsch","explanation":"After \"ich\" we use the stem + e, not the infinitive."},{"mistake":"Er lerne Deutsch","correction":"Er lernt Deutsch","explanation":"After \"er/sie/es\" we add -t, not -e."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000032853053', 'multiple_choice', 'What does "die Schule" mean?', '["The","A","This","That"]', 'The', 'This is a basic vocabulary item.', 1, 1),
  ('00000000-0000-4000-a000-000032853053', 'fill_gap', 'Complete with the correct form.', '["Option 1","Option 2","Option 3"]', 'Option 1', 'Practice grammar in context.', 1, 2),
  ('00000000-0000-4000-a000-000032853053', 'translation', 'Translate: "I learn German."', '["Ich lerne Deutsch.","Ich lerne Englisch.","Ich lerne Spanisch."]', 'Ich lerne Deutsch.', 'Ich = I, lerne = learn/learning, Deutsch = German.', 2, 3),
  ('00000000-0000-4000-a000-000032853053', 'sentence_order', 'Order the sentence.', '[]', 'Ich lerne Deutsch.', 'Subject + verb + object in German.', 2, 4),
  ('00000000-0000-4000-a000-000032853053', 'matching', 'Match the words with their meanings.', '["Match pairs correctly"]', 'Correct pairs', 'Test your vocabulary knowledge.', 2, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-000032853053', 'multiple_choice', 'What is the main topic of this lesson?', '["German School System","Sports","Music","Travel"]', 'German School System', 1, 1),
  ('00000000-0000-4000-a000-000032853053', 'true_false', 'This lesson teaches vocabulary about German School System.', '["True","False"]', 'True', 1, 2),
  ('00000000-0000-4000-a000-000032853053', 'true_false', 'German word order is always the same as English.', '["True","False"]', 'False', 1, 3),
  ('00000000-0000-4000-a000-000032853053', 'multiple_choice', 'How do you say "please" in German?', '["Danke","Bitte","Tschüss","Hallo"]', 'Bitte', 1, 4),
  ('00000000-0000-4000-a000-000032853053', 'multiple_choice', 'Which article is feminine?', '["der","die","das","den"]', 'die', 1, 5),
  ('00000000-0000-4000-a000-000032853053', 'fill_blank', 'Ich ___ (to be) Student.', '["bin","bist","ist","sind"]', 'bin', 1, 6),
  ('00000000-0000-4000-a000-000032853053', 'multiple_choice', 'What is the correct word order?', '["Ich lerne Deutsch","Ich Deutsch lerne","Lerne ich Deutsch","Deutsch ich lerne"]', 'Ich lerne Deutsch', 1, 7),
  ('00000000-0000-4000-a000-000032853053', 'true_false', 'All German nouns are capitalized.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-000032853053', 'multiple_choice', 'How do you say "thank you" in German?', '["Bitte","Danke","Tschüss","Hallo"]', 'Danke', 1, 9),
  ('00000000-0000-4000-a000-000032853053', 'fill_blank', 'Wo ___ du? (to live)', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 1, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-000032853053', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Bildung und Lernen', 'formal', false, 1),
  ('00000000-0000-4000-a000-000032853053', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Bildung und Lernen', 'informal', false, 2),
  ('00000000-0000-4000-a000-000032853053', 'Bitte!', 'Please!', 'من فضلك!', 'Used in Bildung und Lernen', 'neutral', false, 3),
  ('00000000-0000-4000-a000-000032853053', 'Danke!', 'Thanks!', 'شكراً!', 'Used in Bildung und Lernen', 'neutral', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-000032853053', 'Hallo', 'Hello', 'Greeting', 'expression', 1),
  ('00000000-0000-4000-a000-000032853053', 'Danke', 'Thanks', 'Politeness', 'expression', 2),
  ('00000000-0000-4000-a000-000032853053', 'Bitte', 'Please', 'Politeness', 'expression', 3),
  ('00000000-0000-4000-a000-000032853053', 'Tschüss', 'Bye', 'Farewell', 'expression', 4);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-000032853053', 'Das deutsche Schulsystem — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, duration_seconds, speaker_count, scenario) values
  ('00000000-0000-4000-a000-000032853053', 'Das deutsche Schulsystem — Hörverständnis', '[Lehrerin]: Guten Morgen! Heute lernen wir Begrüßungen.

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

[Lehrerin]: ممتاز! إلى الغد!', 72, 2, 'Bildung und Lernen');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-000032853053', 'Speaking: Das deutsche Schulsystem', 'Practice talking about German School System. Answer questions and have a simple conversation.', 'German School System', ARRAY['Use full sentences','Speak clearly','Don''t worry about mistakes']::text[], ARRAY['die Schule','der Lehrer','der Student','die Universität','der Kurs']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-000032853053', 'Writing: Das deutsche Schulsystem', 'Write a short text about German School System. Use at least 5 vocabulary words from this lesson.', ARRAY['Start with a greeting','Use the vocabulary from this lesson','Check your grammar']::text[], ARRAY['die Schule','der Lehrer','der Student']::text[], '["Sentence structure","Vocabulary usage"]', 50, 150, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000032853053', 'Das deutsche Schulsystem — Roleplay', 'German School System', 'Student', 'Teacher', 'Practice conversation about German School System', 'Hallo! Lass uns über dieses Thema sprechen.', 'intermediate', 1, ARRAY['die Schule','der Lehrer','der Student','die Universität','der Kurs','die Prüfung','das Studium','lernen']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000032853053', 'Das deutsche Schulsystem — Advanced Roleplay', 'German School System', 'Customer', 'Assistant', 'Extended conversation about German School System', 'Guten Tag! Wie kann ich Ihnen helfen?', 'intermediate', 2, ARRAY['die Schule','der Lehrer','der Student','die Universität','der Kurs','die Prüfung','das Studium','lernen']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-000032853053', 'Das deutsche Schulsystem — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Das deutsche Schulsystem".', 'Creative practice for German School System', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-000032853053', 'Homework: Das deutsche Schulsystem', 'Complete these tasks to reinforce "Das deutsche Schulsystem".', 'mixed', '[{"description":"Review all vocabulary from this lesson"},{"description":"Write 5 sentences using the grammar structure"},{"description":"Practice the dialogue aloud"}]', 35, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-000032853053', 'In this lesson you learned about German School System. You practiced vocabulary related to education and grammar structure present_tense.', '["Mastered vocabulary about German School System","Applied present_tense correctly","Read and understood a text about German School System","Practiced speaking about German School System"]', '[{"title":"Das deutsche Schulsystem Review","summary":"present_tense — the main grammar focus of this lesson."}]', ARRAY['German School System core vocabulary','education key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)','Verb is always in second position']::text[], ARRAY['Practice 15-20 minutes daily','Use new vocabulary in real sentences','Speak out loud to improve pronunciation']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000032853053', 'translation', 'Translate to German: "This is a translation exercise."', '[]', 'Das ist eine Übersetzungsübung.', 'Use "das ist" for "this is"', 1, 40);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000032853053', 'Culture: German School System in German-Speaking Countries', 'Learn how German School System is approached in German culture.

تعلم كيف يتم التعامل مع German School System في الثقافة الألمانية.', '["Tip: Be direct and polite","Tip: Use formal language with strangers","Tip: Respect punctuality"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000032853053', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Common error for Arabic speakers","correction":"Correct version","explanation":"Explanation of the error"}]', 30);

  -- Lesson 2: Sprachen lernen (L-B1-04-02)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-000032853052', '00000000-0000-4000-a000-000039c2eae2', 'Sprachen lernen', 'Discuss language learning strategies and experiences.', 'Language Learning', 'vocabulary', '["Understand and use vocabulary related to Language Learning","Apply present_tense correctly","Read and comprehend a text about Language Learning","Listen and understand a dialogue about Language Learning","Speak about Language Learning in simple sentences","Write a short text about Language Learning"]', 45, 2, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-000032853052', 'die Schule', 'المدرسة', 'school', 'die', 'die Schulen', 'noun', 'Die Kinder gehen zur Schule.', 'The children go to school.', 'A1', 1),
  ('00000000-0000-4000-a000-000032853052', 'der Lehrer', 'المعلم', 'teacher', 'der', 'die Lehrer', 'noun', 'Der Lehrer erklärt die Grammatik.', 'The teacher explains the grammar.', 'A1', 2),
  ('00000000-0000-4000-a000-000032853052', 'der Student', 'الطالب', 'student', 'der', 'die Studenten', 'noun', 'Der Student lernt Deutsch.', 'The student learns German.', 'A1', 3),
  ('00000000-0000-4000-a000-000032853052', 'die Universität', 'الجامعة', 'university', 'die', 'die Universitäten', 'noun', 'Die Universität ist alt.', 'The university is old.', 'B1', 4),
  ('00000000-0000-4000-a000-000032853052', 'der Kurs', 'الدورة', 'course', 'der', 'die Kurse', 'noun', 'Der Kurs kostet 200 Euro.', 'The course costs 200 euros.', 'A2', 5),
  ('00000000-0000-4000-a000-000032853052', 'die Prüfung', 'الامتحان', 'exam', 'die', 'die Prüfungen', 'noun', 'Die Prüfung ist schwer.', 'The exam is difficult.', 'B1', 6),
  ('00000000-0000-4000-a000-000032853052', 'das Studium', 'الدراسة الجامعية', 'studies', 'das', NULL, 'noun', 'Mein Studium dauert vier Jahre.', 'My studies take four years.', 'B1', 7),
  ('00000000-0000-4000-a000-000032853052', 'lernen', 'يتعلم', 'to learn', NULL, NULL, 'verb', 'Ich lerne Deutsch.', 'I learn German.', 'A1', 8),
  ('00000000-0000-4000-a000-000032853052', 'der Beruf', 'المهنة', 'profession', 'der', 'die Berufe', 'noun', 'Was ist dein Beruf?', 'What is your profession?', 'A1', 9),
  ('00000000-0000-4000-a000-000032853052', 'die Firma', 'الشركة', 'company', 'die', 'die Firmen', 'noun', 'Die Firma ist in Berlin.', 'The company is in Berlin.', 'A1', 10),
  ('00000000-0000-4000-a000-000032853052', 'der Kollege', 'الزميل', 'colleague', 'der', 'die Kollegen', 'noun', 'Mein Kollege hilft mir.', 'My colleague helps me.', 'A1', 11),
  ('00000000-0000-4000-a000-000032853052', 'das Büro', 'المكتب', 'office', 'das', 'die Büros', 'noun', 'Das Büro ist im dritten Stock.', 'The office is on the third floor.', 'A1', 12),
  ('00000000-0000-4000-a000-000032853052', 'die Besprechung', 'الاجتماع', 'meeting', 'die', 'die Besprechungen', 'noun', 'Wir haben eine Besprechung.', 'We have a meeting.', 'B1', 13),
  ('00000000-0000-4000-a000-000032853052', 'der Chef', 'المدير', 'boss', 'der', 'die Chefs', 'noun', 'Mein Chef ist freundlich.', 'My boss is friendly.', 'A1', 14),
  ('00000000-0000-4000-a000-000032853052', 'das Gehalt', 'الراتب', 'salary', 'das', 'die Gehälter', 'noun', 'Das Gehalt ist gut.', 'The salary is good.', 'B1', 15),
  ('00000000-0000-4000-a000-000032853052', 'die Stelle', 'الوظيفة', 'position', 'die', 'die Stellen', 'noun', 'Ich suche eine neue Stelle.', 'I am looking for a new position.', 'B1', 16),
  ('00000000-0000-4000-a000-000032853052', 'die Zeitung', 'الجريدة', 'newspaper', 'die', 'die Zeitungen', 'noun', 'Ich lese die Zeitung.', 'I read the newspaper.', 'A2', 17),
  ('00000000-0000-4000-a000-000032853052', 'das Internet', 'الإنترنت', 'internet', 'das', NULL, 'noun', 'Das Internet ist schnell.', 'The internet is fast.', 'A2', 18),
  ('00000000-0000-4000-a000-000032853052', 'der Artikel', 'المقال', 'article', 'der', 'die Artikel', 'noun', 'Der Artikel ist interessant.', 'The article is interesting.', 'B1', 19),
  ('00000000-0000-4000-a000-000032853052', 'die Nachricht', 'الخبر', 'news', 'die', 'die Nachrichten', 'noun', 'Ich sehe die Nachrichten.', 'I watch the news.', 'A2', 20),
  ('00000000-0000-4000-a000-000032853052', 'das Radio', 'الراديو', 'radio', 'das', 'die Radios', 'noun', 'Ich höre Radio.', 'I listen to the radio.', 'A2', 21),
  ('00000000-0000-4000-a000-000032853052', 'das Fernsehen', 'التلفاز', 'television', 'das', NULL, 'noun', 'Das Fernsehen läuft.', 'The television is on.', 'A2', 22),
  ('00000000-0000-4000-a000-000032853052', 'die Zeitschrift', 'المجلة', 'magazine', 'die', 'die Zeitschriften', 'noun', 'Die Zeitschrift erscheint monatlich.', 'The magazine is published monthly.', 'B1', 23),
  ('00000000-0000-4000-a000-000032853052', 'der Journalist', 'الصحفي', 'journalist', 'der', 'die Journalisten', 'noun', 'Der Journalist schreibt einen Artikel.', 'The journalist writes an article.', 'B1', 24),
  ('00000000-0000-4000-a000-000032853052', 'die Gesellschaft', 'المجتمع', 'society', 'die', NULL, 'noun', 'Die Gesellschaft verändert sich.', 'Society is changing.', 'B1', 25),
  ('00000000-0000-4000-a000-000032853052', 'die Politik', 'السياسة', 'politics', 'die', NULL, 'noun', 'Politik ist ein wichtiges Thema.', 'Politics is an important topic.', 'B1', 26),
  ('00000000-0000-4000-a000-000032853052', 'die Integration', 'الاندماج', 'integration', 'die', NULL, 'noun', 'Integration ist wichtig.', 'Integration is important.', 'B1', 27),
  ('00000000-0000-4000-a000-000032853052', 'die Kultur', 'الثقافة', 'culture', 'die', NULL, 'noun', 'Die deutsche Kultur ist vielfältig.', 'German culture is diverse.', 'A2', 28),
  ('00000000-0000-4000-a000-000032853052', 'der Bürger', 'المواطن', 'citizen', 'der', 'die Bürger', 'noun', 'Die Bürger wählen.', 'The citizens vote.', 'B1', 29),
  ('00000000-0000-4000-a000-000032853052', 'die Freiheit', 'الحرية', 'freedom', 'die', NULL, 'noun', 'Freiheit ist ein Grundrecht.', 'Freedom is a basic right.', 'B1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000032853052', 'Präsens der regelmäßigen Verben (Present Tense) / المضارع للأفعال المنتظمة', 'In German, regular verbs follow a consistent pattern. The infinitive ends in -en. Remove the -en and add the personal endings: ich -e, du -st, er/sie/es -t, wir -en, ihr -t, sie/Sie -en. For most Arabic speakers, this is easier than Arabic verb conjugation because German has fewer forms.', '[{"rule":"ich: stem + e","note":"Ich lerne, ich wohne, ich arbeite"},{"rule":"du: stem + st","note":"Du lernst, du wohnst, du arbeitest"},{"rule":"er/sie/es: stem + t","note":"Er lernt, sie wohnt, es arbeitet"},{"rule":"wir: stem + en","note":"Wir lernen, wir wohnen, wir arbeiten"},{"rule":"ihr: stem + t","note":"Ihr lernt, ihr wohnt, ihr arbeitet"},{"rule":"sie/Sie: stem + en","note":"Sie lernen, Sie wohnen"}]', '[{"german":"Ich lerne Deutsch.","arabic":"أنا أتعلم الألمانية.","english":"I am learning German."},{"german":"Du wohnst in Berlin.","arabic":"أنت تسكن في برلين.","english":"You live in Berlin."},{"german":"Er arbeitet bei Siemens.","arabic":"هو يعمل في سيمنز.","english":"He works at Siemens."}]', '[{"mistake":"Ich lernen Deutsch","correction":"Ich lerne Deutsch","explanation":"After \"ich\" we use the stem + e, not the infinitive."},{"mistake":"Er lerne Deutsch","correction":"Er lernt Deutsch","explanation":"After \"er/sie/es\" we add -t, not -e."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000032853052', 'multiple_choice', 'What does "die Schule" mean?', '["The","A","This","That"]', 'The', 'This is a basic vocabulary item.', 1, 1),
  ('00000000-0000-4000-a000-000032853052', 'fill_gap', 'Complete with the correct form.', '["Option 1","Option 2","Option 3"]', 'Option 1', 'Practice grammar in context.', 1, 2),
  ('00000000-0000-4000-a000-000032853052', 'translation', 'Translate: "I learn German."', '["Ich lerne Deutsch.","Ich lerne Englisch.","Ich lerne Spanisch."]', 'Ich lerne Deutsch.', 'Ich = I, lerne = learn/learning, Deutsch = German.', 2, 3),
  ('00000000-0000-4000-a000-000032853052', 'sentence_order', 'Order the sentence.', '[]', 'Ich lerne Deutsch.', 'Subject + verb + object in German.', 2, 4),
  ('00000000-0000-4000-a000-000032853052', 'matching', 'Match the words with their meanings.', '["Match pairs correctly"]', 'Correct pairs', 'Test your vocabulary knowledge.', 2, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-000032853052', 'multiple_choice', 'What is the main topic of this lesson?', '["Language Learning","Sports","Music","Travel"]', 'Language Learning', 1, 1),
  ('00000000-0000-4000-a000-000032853052', 'true_false', 'This lesson teaches vocabulary about Language Learning.', '["True","False"]', 'True', 1, 2),
  ('00000000-0000-4000-a000-000032853052', 'true_false', 'German word order is always the same as English.', '["True","False"]', 'False', 1, 3),
  ('00000000-0000-4000-a000-000032853052', 'multiple_choice', 'How do you say "please" in German?', '["Danke","Bitte","Tschüss","Hallo"]', 'Bitte', 1, 4),
  ('00000000-0000-4000-a000-000032853052', 'multiple_choice', 'Which article is feminine?', '["der","die","das","den"]', 'die', 1, 5),
  ('00000000-0000-4000-a000-000032853052', 'fill_blank', 'Ich ___ (to be) Student.', '["bin","bist","ist","sind"]', 'bin', 1, 6),
  ('00000000-0000-4000-a000-000032853052', 'multiple_choice', 'What is the correct word order?', '["Ich lerne Deutsch","Ich Deutsch lerne","Lerne ich Deutsch","Deutsch ich lerne"]', 'Ich lerne Deutsch', 1, 7),
  ('00000000-0000-4000-a000-000032853052', 'true_false', 'All German nouns are capitalized.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-000032853052', 'multiple_choice', 'How do you say "thank you" in German?', '["Bitte","Danke","Tschüss","Hallo"]', 'Danke', 1, 9),
  ('00000000-0000-4000-a000-000032853052', 'fill_blank', 'Wo ___ du? (to live)', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 1, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-000032853052', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Bildung und Lernen', 'formal', false, 1),
  ('00000000-0000-4000-a000-000032853052', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Bildung und Lernen', 'informal', false, 2),
  ('00000000-0000-4000-a000-000032853052', 'Bitte!', 'Please!', 'من فضلك!', 'Used in Bildung und Lernen', 'neutral', false, 3),
  ('00000000-0000-4000-a000-000032853052', 'Danke!', 'Thanks!', 'شكراً!', 'Used in Bildung und Lernen', 'neutral', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-000032853052', 'Hallo', 'Hello', 'Greeting', 'expression', 1),
  ('00000000-0000-4000-a000-000032853052', 'Danke', 'Thanks', 'Politeness', 'expression', 2),
  ('00000000-0000-4000-a000-000032853052', 'Bitte', 'Please', 'Politeness', 'expression', 3),
  ('00000000-0000-4000-a000-000032853052', 'Tschüss', 'Bye', 'Farewell', 'expression', 4);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-000032853052', 'Sprachen lernen — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, duration_seconds, speaker_count, scenario) values
  ('00000000-0000-4000-a000-000032853052', 'Sprachen lernen — Hörverständnis', '[Lehrerin]: Guten Morgen! Heute lernen wir Begrüßungen.

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

[Lehrerin]: ممتاز! إلى الغد!', 72, 2, 'Bildung und Lernen');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-000032853052', 'Speaking: Sprachen lernen', 'Practice talking about Language Learning. Answer questions and have a simple conversation.', 'Language Learning', ARRAY['Use full sentences','Speak clearly','Don''t worry about mistakes']::text[], ARRAY['die Schule','der Lehrer','der Student','die Universität','der Kurs']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-000032853052', 'Writing: Sprachen lernen', 'Write a short text about Language Learning. Use at least 5 vocabulary words from this lesson.', ARRAY['Start with a greeting','Use the vocabulary from this lesson','Check your grammar']::text[], ARRAY['die Schule','der Lehrer','der Student']::text[], '["Sentence structure","Vocabulary usage"]', 50, 150, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000032853052', 'Sprachen lernen — Roleplay', 'Language Learning', 'Student', 'Teacher', 'Practice conversation about Language Learning', 'Hallo! Lass uns über dieses Thema sprechen.', 'intermediate', 1, ARRAY['die Schule','der Lehrer','der Student','die Universität','der Kurs','die Prüfung','das Studium','lernen']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000032853052', 'Sprachen lernen — Advanced Roleplay', 'Language Learning', 'Customer', 'Assistant', 'Extended conversation about Language Learning', 'Guten Tag! Wie kann ich Ihnen helfen?', 'intermediate', 2, ARRAY['die Schule','der Lehrer','der Student','die Universität','der Kurs','die Prüfung','das Studium','lernen']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-000032853052', 'Sprachen lernen — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Sprachen lernen".', 'Creative practice for Language Learning', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-000032853052', 'Homework: Sprachen lernen', 'Complete these tasks to reinforce "Sprachen lernen".', 'mixed', '[{"description":"Review all vocabulary from this lesson"},{"description":"Write 5 sentences using the grammar structure"},{"description":"Practice the dialogue aloud"}]', 35, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-000032853052', 'In this lesson you learned about Language Learning. You practiced vocabulary related to education and grammar structure present_tense.', '["Mastered vocabulary about Language Learning","Applied present_tense correctly","Read and understood a text about Language Learning","Practiced speaking about Language Learning"]', '[{"title":"Sprachen lernen Review","summary":"present_tense — the main grammar focus of this lesson."}]', ARRAY['Language Learning core vocabulary','education key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)','Verb is always in second position']::text[], ARRAY['Practice 15-20 minutes daily','Use new vocabulary in real sentences','Speak out loud to improve pronunciation']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000032853052', 'translation', 'Translate to German: "This is a translation exercise."', '[]', 'Das ist eine Übersetzungsübung.', 'Use "das ist" for "this is"', 1, 40);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000032853052', 'Culture: Language Learning in German-Speaking Countries', 'Learn how Language Learning is approached in German culture.

تعلم كيف يتم التعامل مع Language Learning في الثقافة الألمانية.', '["Tip: Be direct and polite","Tip: Use formal language with strangers","Tip: Respect punctuality"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000032853052', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Common error for Arabic speakers","correction":"Correct version","explanation":"Explanation of the error"}]', 30);

  -- Lesson 3: Wechselpräpositionen (L-B1-04-03)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-000032853051', '00000000-0000-4000-a000-000039c2eae2', 'Wechselpräpositionen', 'Learn two-way prepositions with accusative and dative.', 'Two-Way Prepositions', 'grammar', '["Understand and use vocabulary related to Two-Way Prepositions","Apply present_tense correctly","Read and comprehend a text about Two-Way Prepositions","Listen and understand a dialogue about Two-Way Prepositions","Speak about Two-Way Prepositions in simple sentences","Write a short text about Two-Way Prepositions"]', 60, 3, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-000032853051', 'die Schule', 'المدرسة', 'school', 'die', 'die Schulen', 'noun', 'Die Kinder gehen zur Schule.', 'The children go to school.', 'A1', 1),
  ('00000000-0000-4000-a000-000032853051', 'der Lehrer', 'المعلم', 'teacher', 'der', 'die Lehrer', 'noun', 'Der Lehrer erklärt die Grammatik.', 'The teacher explains the grammar.', 'A1', 2),
  ('00000000-0000-4000-a000-000032853051', 'der Student', 'الطالب', 'student', 'der', 'die Studenten', 'noun', 'Der Student lernt Deutsch.', 'The student learns German.', 'A1', 3),
  ('00000000-0000-4000-a000-000032853051', 'die Universität', 'الجامعة', 'university', 'die', 'die Universitäten', 'noun', 'Die Universität ist alt.', 'The university is old.', 'B1', 4),
  ('00000000-0000-4000-a000-000032853051', 'der Kurs', 'الدورة', 'course', 'der', 'die Kurse', 'noun', 'Der Kurs kostet 200 Euro.', 'The course costs 200 euros.', 'A2', 5),
  ('00000000-0000-4000-a000-000032853051', 'die Prüfung', 'الامتحان', 'exam', 'die', 'die Prüfungen', 'noun', 'Die Prüfung ist schwer.', 'The exam is difficult.', 'B1', 6),
  ('00000000-0000-4000-a000-000032853051', 'das Studium', 'الدراسة الجامعية', 'studies', 'das', NULL, 'noun', 'Mein Studium dauert vier Jahre.', 'My studies take four years.', 'B1', 7),
  ('00000000-0000-4000-a000-000032853051', 'lernen', 'يتعلم', 'to learn', NULL, NULL, 'verb', 'Ich lerne Deutsch.', 'I learn German.', 'A1', 8),
  ('00000000-0000-4000-a000-000032853051', 'der Beruf', 'المهنة', 'profession', 'der', 'die Berufe', 'noun', 'Was ist dein Beruf?', 'What is your profession?', 'A1', 9),
  ('00000000-0000-4000-a000-000032853051', 'die Firma', 'الشركة', 'company', 'die', 'die Firmen', 'noun', 'Die Firma ist in Berlin.', 'The company is in Berlin.', 'A1', 10),
  ('00000000-0000-4000-a000-000032853051', 'der Kollege', 'الزميل', 'colleague', 'der', 'die Kollegen', 'noun', 'Mein Kollege hilft mir.', 'My colleague helps me.', 'A1', 11),
  ('00000000-0000-4000-a000-000032853051', 'das Büro', 'المكتب', 'office', 'das', 'die Büros', 'noun', 'Das Büro ist im dritten Stock.', 'The office is on the third floor.', 'A1', 12),
  ('00000000-0000-4000-a000-000032853051', 'die Besprechung', 'الاجتماع', 'meeting', 'die', 'die Besprechungen', 'noun', 'Wir haben eine Besprechung.', 'We have a meeting.', 'B1', 13),
  ('00000000-0000-4000-a000-000032853051', 'der Chef', 'المدير', 'boss', 'der', 'die Chefs', 'noun', 'Mein Chef ist freundlich.', 'My boss is friendly.', 'A1', 14),
  ('00000000-0000-4000-a000-000032853051', 'das Gehalt', 'الراتب', 'salary', 'das', 'die Gehälter', 'noun', 'Das Gehalt ist gut.', 'The salary is good.', 'B1', 15),
  ('00000000-0000-4000-a000-000032853051', 'die Stelle', 'الوظيفة', 'position', 'die', 'die Stellen', 'noun', 'Ich suche eine neue Stelle.', 'I am looking for a new position.', 'B1', 16),
  ('00000000-0000-4000-a000-000032853051', 'die Zeitung', 'الجريدة', 'newspaper', 'die', 'die Zeitungen', 'noun', 'Ich lese die Zeitung.', 'I read the newspaper.', 'A2', 17),
  ('00000000-0000-4000-a000-000032853051', 'das Internet', 'الإنترنت', 'internet', 'das', NULL, 'noun', 'Das Internet ist schnell.', 'The internet is fast.', 'A2', 18),
  ('00000000-0000-4000-a000-000032853051', 'der Artikel', 'المقال', 'article', 'der', 'die Artikel', 'noun', 'Der Artikel ist interessant.', 'The article is interesting.', 'B1', 19),
  ('00000000-0000-4000-a000-000032853051', 'die Nachricht', 'الخبر', 'news', 'die', 'die Nachrichten', 'noun', 'Ich sehe die Nachrichten.', 'I watch the news.', 'A2', 20),
  ('00000000-0000-4000-a000-000032853051', 'das Radio', 'الراديو', 'radio', 'das', 'die Radios', 'noun', 'Ich höre Radio.', 'I listen to the radio.', 'A2', 21),
  ('00000000-0000-4000-a000-000032853051', 'das Fernsehen', 'التلفاز', 'television', 'das', NULL, 'noun', 'Das Fernsehen läuft.', 'The television is on.', 'A2', 22),
  ('00000000-0000-4000-a000-000032853051', 'die Zeitschrift', 'المجلة', 'magazine', 'die', 'die Zeitschriften', 'noun', 'Die Zeitschrift erscheint monatlich.', 'The magazine is published monthly.', 'B1', 23),
  ('00000000-0000-4000-a000-000032853051', 'der Journalist', 'الصحفي', 'journalist', 'der', 'die Journalisten', 'noun', 'Der Journalist schreibt einen Artikel.', 'The journalist writes an article.', 'B1', 24),
  ('00000000-0000-4000-a000-000032853051', 'die Gesellschaft', 'المجتمع', 'society', 'die', NULL, 'noun', 'Die Gesellschaft verändert sich.', 'Society is changing.', 'B1', 25),
  ('00000000-0000-4000-a000-000032853051', 'die Politik', 'السياسة', 'politics', 'die', NULL, 'noun', 'Politik ist ein wichtiges Thema.', 'Politics is an important topic.', 'B1', 26),
  ('00000000-0000-4000-a000-000032853051', 'die Integration', 'الاندماج', 'integration', 'die', NULL, 'noun', 'Integration ist wichtig.', 'Integration is important.', 'B1', 27),
  ('00000000-0000-4000-a000-000032853051', 'die Kultur', 'الثقافة', 'culture', 'die', NULL, 'noun', 'Die deutsche Kultur ist vielfältig.', 'German culture is diverse.', 'A2', 28),
  ('00000000-0000-4000-a000-000032853051', 'der Bürger', 'المواطن', 'citizen', 'der', 'die Bürger', 'noun', 'Die Bürger wählen.', 'The citizens vote.', 'B1', 29),
  ('00000000-0000-4000-a000-000032853051', 'die Freiheit', 'الحرية', 'freedom', 'die', NULL, 'noun', 'Freiheit ist ein Grundrecht.', 'Freedom is a basic right.', 'B1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000032853051', 'Präsens der regelmäßigen Verben (Present Tense) / المضارع للأفعال المنتظمة', 'In German, regular verbs follow a consistent pattern. The infinitive ends in -en. Remove the -en and add the personal endings: ich -e, du -st, er/sie/es -t, wir -en, ihr -t, sie/Sie -en. For most Arabic speakers, this is easier than Arabic verb conjugation because German has fewer forms.', '[{"rule":"ich: stem + e","note":"Ich lerne, ich wohne, ich arbeite"},{"rule":"du: stem + st","note":"Du lernst, du wohnst, du arbeitest"},{"rule":"er/sie/es: stem + t","note":"Er lernt, sie wohnt, es arbeitet"},{"rule":"wir: stem + en","note":"Wir lernen, wir wohnen, wir arbeiten"},{"rule":"ihr: stem + t","note":"Ihr lernt, ihr wohnt, ihr arbeitet"},{"rule":"sie/Sie: stem + en","note":"Sie lernen, Sie wohnen"}]', '[{"german":"Ich lerne Deutsch.","arabic":"أنا أتعلم الألمانية.","english":"I am learning German."},{"german":"Du wohnst in Berlin.","arabic":"أنت تسكن في برلين.","english":"You live in Berlin."},{"german":"Er arbeitet bei Siemens.","arabic":"هو يعمل في سيمنز.","english":"He works at Siemens."}]', '[{"mistake":"Ich lernen Deutsch","correction":"Ich lerne Deutsch","explanation":"After \"ich\" we use the stem + e, not the infinitive."},{"mistake":"Er lerne Deutsch","correction":"Er lernt Deutsch","explanation":"After \"er/sie/es\" we add -t, not -e."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000032853051', 'multiple_choice', 'What does "die Schule" mean?', '["The","A","This","That"]', 'The', 'This is a basic vocabulary item.', 1, 1),
  ('00000000-0000-4000-a000-000032853051', 'fill_gap', 'Complete with the correct form.', '["Option 1","Option 2","Option 3"]', 'Option 1', 'Practice grammar in context.', 1, 2),
  ('00000000-0000-4000-a000-000032853051', 'translation', 'Translate: "I learn German."', '["Ich lerne Deutsch.","Ich lerne Englisch.","Ich lerne Spanisch."]', 'Ich lerne Deutsch.', 'Ich = I, lerne = learn/learning, Deutsch = German.', 2, 3),
  ('00000000-0000-4000-a000-000032853051', 'sentence_order', 'Order the sentence.', '[]', 'Ich lerne Deutsch.', 'Subject + verb + object in German.', 2, 4),
  ('00000000-0000-4000-a000-000032853051', 'matching', 'Match the words with their meanings.', '["Match pairs correctly"]', 'Correct pairs', 'Test your vocabulary knowledge.', 2, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-000032853051', 'multiple_choice', 'What is the main topic of this lesson?', '["Two-Way Prepositions","Sports","Music","Travel"]', 'Two-Way Prepositions', 1, 1),
  ('00000000-0000-4000-a000-000032853051', 'true_false', 'This lesson teaches vocabulary about Two-Way Prepositions.', '["True","False"]', 'True', 1, 2),
  ('00000000-0000-4000-a000-000032853051', 'true_false', 'German word order is always the same as English.', '["True","False"]', 'False', 1, 3),
  ('00000000-0000-4000-a000-000032853051', 'multiple_choice', 'How do you say "please" in German?', '["Danke","Bitte","Tschüss","Hallo"]', 'Bitte', 1, 4),
  ('00000000-0000-4000-a000-000032853051', 'multiple_choice', 'Which article is feminine?', '["der","die","das","den"]', 'die', 1, 5),
  ('00000000-0000-4000-a000-000032853051', 'fill_blank', 'Ich ___ (to be) Student.', '["bin","bist","ist","sind"]', 'bin', 1, 6),
  ('00000000-0000-4000-a000-000032853051', 'multiple_choice', 'What is the correct word order?', '["Ich lerne Deutsch","Ich Deutsch lerne","Lerne ich Deutsch","Deutsch ich lerne"]', 'Ich lerne Deutsch', 1, 7),
  ('00000000-0000-4000-a000-000032853051', 'true_false', 'All German nouns are capitalized.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-000032853051', 'multiple_choice', 'How do you say "thank you" in German?', '["Bitte","Danke","Tschüss","Hallo"]', 'Danke', 1, 9),
  ('00000000-0000-4000-a000-000032853051', 'fill_blank', 'Wo ___ du? (to live)', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 1, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-000032853051', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Bildung und Lernen', 'formal', false, 1),
  ('00000000-0000-4000-a000-000032853051', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Bildung und Lernen', 'informal', false, 2),
  ('00000000-0000-4000-a000-000032853051', 'Bitte!', 'Please!', 'من فضلك!', 'Used in Bildung und Lernen', 'neutral', false, 3),
  ('00000000-0000-4000-a000-000032853051', 'Danke!', 'Thanks!', 'شكراً!', 'Used in Bildung und Lernen', 'neutral', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-000032853051', 'Hallo', 'Hello', 'Greeting', 'expression', 1),
  ('00000000-0000-4000-a000-000032853051', 'Danke', 'Thanks', 'Politeness', 'expression', 2),
  ('00000000-0000-4000-a000-000032853051', 'Bitte', 'Please', 'Politeness', 'expression', 3),
  ('00000000-0000-4000-a000-000032853051', 'Tschüss', 'Bye', 'Farewell', 'expression', 4);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-000032853051', 'Wechselpräpositionen — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, duration_seconds, speaker_count, scenario) values
  ('00000000-0000-4000-a000-000032853051', 'Wechselpräpositionen — Hörverständnis', '[Lehrerin]: Guten Morgen! Heute lernen wir Begrüßungen.

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

[Lehrerin]: ممتاز! إلى الغد!', 72, 2, 'Bildung und Lernen');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-000032853051', 'Speaking: Wechselpräpositionen', 'Practice talking about Two-Way Prepositions. Answer questions and have a simple conversation.', 'Two-Way Prepositions', ARRAY['Use full sentences','Speak clearly','Don''t worry about mistakes']::text[], ARRAY['die Schule','der Lehrer','der Student','die Universität','der Kurs']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-000032853051', 'Writing: Wechselpräpositionen', 'Write a short text about Two-Way Prepositions. Use at least 5 vocabulary words from this lesson.', ARRAY['Start with a greeting','Use the vocabulary from this lesson','Check your grammar']::text[], ARRAY['die Schule','der Lehrer','der Student']::text[], '["Sentence structure","Vocabulary usage"]', 50, 150, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000032853051', 'Wechselpräpositionen — Roleplay', 'Two-Way Prepositions', 'Student', 'Teacher', 'Practice conversation about Two-Way Prepositions', 'Hallo! Lass uns über dieses Thema sprechen.', 'intermediate', 1, ARRAY['die Schule','der Lehrer','der Student','die Universität','der Kurs','die Prüfung','das Studium','lernen']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000032853051', 'Wechselpräpositionen — Advanced Roleplay', 'Two-Way Prepositions', 'Customer', 'Assistant', 'Extended conversation about Two-Way Prepositions', 'Guten Tag! Wie kann ich Ihnen helfen?', 'intermediate', 2, ARRAY['die Schule','der Lehrer','der Student','die Universität','der Kurs','die Prüfung','das Studium','lernen']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-000032853051', 'Wechselpräpositionen — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Wechselpräpositionen".', 'Creative practice for Two-Way Prepositions', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-000032853051', 'Homework: Wechselpräpositionen', 'Complete these tasks to reinforce "Wechselpräpositionen".', 'mixed', '[{"description":"Review all vocabulary from this lesson"},{"description":"Write 5 sentences using the grammar structure"},{"description":"Practice the dialogue aloud"}]', 35, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-000032853051', 'In this lesson you learned about Two-Way Prepositions. You practiced vocabulary related to education and grammar structure present_tense.', '["Mastered vocabulary about Two-Way Prepositions","Applied present_tense correctly","Read and understood a text about Two-Way Prepositions","Practiced speaking about Two-Way Prepositions"]', '[{"title":"Wechselpräpositionen Review","summary":"present_tense — the main grammar focus of this lesson."}]', ARRAY['Two-Way Prepositions core vocabulary','education key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)','Verb is always in second position']::text[], ARRAY['Practice 15-20 minutes daily','Use new vocabulary in real sentences','Speak out loud to improve pronunciation']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000032853051', 'translation', 'Translate to German: "This is a translation exercise."', '[]', 'Das ist eine Übersetzungsübung.', 'Use "das ist" for "this is"', 1, 40);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000032853051', 'Culture: Two-Way Prepositions in German-Speaking Countries', 'Learn how Two-Way Prepositions is approached in German culture.

تعلم كيف يتم التعامل مع Two-Way Prepositions في الثقافة الألمانية.', '["Tip: Be direct and polite","Tip: Use formal language with strangers","Tip: Respect punctuality"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000032853051', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Common error for Arabic speakers","correction":"Correct version","explanation":"Explanation of the error"}]', 30);

  -- Lesson 4: Eine Präsentation halten (L-B1-04-04)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-000032853050', '00000000-0000-4000-a000-000039c2eae2', 'Eine Präsentation halten', 'Practice giving a short presentation on a familiar topic.', 'Presentations', 'speaking', '["Understand and use vocabulary related to Presentations","Apply present_tense correctly","Read and comprehend a text about Presentations","Listen and understand a dialogue about Presentations","Speak about Presentations in simple sentences","Write a short text about Presentations"]', 50, 4, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-000032853050', 'die Schule', 'المدرسة', 'school', 'die', 'die Schulen', 'noun', 'Die Kinder gehen zur Schule.', 'The children go to school.', 'A1', 1),
  ('00000000-0000-4000-a000-000032853050', 'der Lehrer', 'المعلم', 'teacher', 'der', 'die Lehrer', 'noun', 'Der Lehrer erklärt die Grammatik.', 'The teacher explains the grammar.', 'A1', 2),
  ('00000000-0000-4000-a000-000032853050', 'der Student', 'الطالب', 'student', 'der', 'die Studenten', 'noun', 'Der Student lernt Deutsch.', 'The student learns German.', 'A1', 3),
  ('00000000-0000-4000-a000-000032853050', 'die Universität', 'الجامعة', 'university', 'die', 'die Universitäten', 'noun', 'Die Universität ist alt.', 'The university is old.', 'B1', 4),
  ('00000000-0000-4000-a000-000032853050', 'der Kurs', 'الدورة', 'course', 'der', 'die Kurse', 'noun', 'Der Kurs kostet 200 Euro.', 'The course costs 200 euros.', 'A2', 5),
  ('00000000-0000-4000-a000-000032853050', 'die Prüfung', 'الامتحان', 'exam', 'die', 'die Prüfungen', 'noun', 'Die Prüfung ist schwer.', 'The exam is difficult.', 'B1', 6),
  ('00000000-0000-4000-a000-000032853050', 'das Studium', 'الدراسة الجامعية', 'studies', 'das', NULL, 'noun', 'Mein Studium dauert vier Jahre.', 'My studies take four years.', 'B1', 7),
  ('00000000-0000-4000-a000-000032853050', 'lernen', 'يتعلم', 'to learn', NULL, NULL, 'verb', 'Ich lerne Deutsch.', 'I learn German.', 'A1', 8),
  ('00000000-0000-4000-a000-000032853050', 'der Beruf', 'المهنة', 'profession', 'der', 'die Berufe', 'noun', 'Was ist dein Beruf?', 'What is your profession?', 'A1', 9),
  ('00000000-0000-4000-a000-000032853050', 'die Firma', 'الشركة', 'company', 'die', 'die Firmen', 'noun', 'Die Firma ist in Berlin.', 'The company is in Berlin.', 'A1', 10),
  ('00000000-0000-4000-a000-000032853050', 'der Kollege', 'الزميل', 'colleague', 'der', 'die Kollegen', 'noun', 'Mein Kollege hilft mir.', 'My colleague helps me.', 'A1', 11),
  ('00000000-0000-4000-a000-000032853050', 'das Büro', 'المكتب', 'office', 'das', 'die Büros', 'noun', 'Das Büro ist im dritten Stock.', 'The office is on the third floor.', 'A1', 12),
  ('00000000-0000-4000-a000-000032853050', 'die Besprechung', 'الاجتماع', 'meeting', 'die', 'die Besprechungen', 'noun', 'Wir haben eine Besprechung.', 'We have a meeting.', 'B1', 13),
  ('00000000-0000-4000-a000-000032853050', 'der Chef', 'المدير', 'boss', 'der', 'die Chefs', 'noun', 'Mein Chef ist freundlich.', 'My boss is friendly.', 'A1', 14),
  ('00000000-0000-4000-a000-000032853050', 'das Gehalt', 'الراتب', 'salary', 'das', 'die Gehälter', 'noun', 'Das Gehalt ist gut.', 'The salary is good.', 'B1', 15),
  ('00000000-0000-4000-a000-000032853050', 'die Stelle', 'الوظيفة', 'position', 'die', 'die Stellen', 'noun', 'Ich suche eine neue Stelle.', 'I am looking for a new position.', 'B1', 16),
  ('00000000-0000-4000-a000-000032853050', 'die Zeitung', 'الجريدة', 'newspaper', 'die', 'die Zeitungen', 'noun', 'Ich lese die Zeitung.', 'I read the newspaper.', 'A2', 17),
  ('00000000-0000-4000-a000-000032853050', 'das Internet', 'الإنترنت', 'internet', 'das', NULL, 'noun', 'Das Internet ist schnell.', 'The internet is fast.', 'A2', 18),
  ('00000000-0000-4000-a000-000032853050', 'der Artikel', 'المقال', 'article', 'der', 'die Artikel', 'noun', 'Der Artikel ist interessant.', 'The article is interesting.', 'B1', 19),
  ('00000000-0000-4000-a000-000032853050', 'die Nachricht', 'الخبر', 'news', 'die', 'die Nachrichten', 'noun', 'Ich sehe die Nachrichten.', 'I watch the news.', 'A2', 20),
  ('00000000-0000-4000-a000-000032853050', 'das Radio', 'الراديو', 'radio', 'das', 'die Radios', 'noun', 'Ich höre Radio.', 'I listen to the radio.', 'A2', 21),
  ('00000000-0000-4000-a000-000032853050', 'das Fernsehen', 'التلفاز', 'television', 'das', NULL, 'noun', 'Das Fernsehen läuft.', 'The television is on.', 'A2', 22),
  ('00000000-0000-4000-a000-000032853050', 'die Zeitschrift', 'المجلة', 'magazine', 'die', 'die Zeitschriften', 'noun', 'Die Zeitschrift erscheint monatlich.', 'The magazine is published monthly.', 'B1', 23),
  ('00000000-0000-4000-a000-000032853050', 'der Journalist', 'الصحفي', 'journalist', 'der', 'die Journalisten', 'noun', 'Der Journalist schreibt einen Artikel.', 'The journalist writes an article.', 'B1', 24),
  ('00000000-0000-4000-a000-000032853050', 'die Gesellschaft', 'المجتمع', 'society', 'die', NULL, 'noun', 'Die Gesellschaft verändert sich.', 'Society is changing.', 'B1', 25),
  ('00000000-0000-4000-a000-000032853050', 'die Politik', 'السياسة', 'politics', 'die', NULL, 'noun', 'Politik ist ein wichtiges Thema.', 'Politics is an important topic.', 'B1', 26),
  ('00000000-0000-4000-a000-000032853050', 'die Integration', 'الاندماج', 'integration', 'die', NULL, 'noun', 'Integration ist wichtig.', 'Integration is important.', 'B1', 27),
  ('00000000-0000-4000-a000-000032853050', 'die Kultur', 'الثقافة', 'culture', 'die', NULL, 'noun', 'Die deutsche Kultur ist vielfältig.', 'German culture is diverse.', 'A2', 28),
  ('00000000-0000-4000-a000-000032853050', 'der Bürger', 'المواطن', 'citizen', 'der', 'die Bürger', 'noun', 'Die Bürger wählen.', 'The citizens vote.', 'B1', 29),
  ('00000000-0000-4000-a000-000032853050', 'die Freiheit', 'الحرية', 'freedom', 'die', NULL, 'noun', 'Freiheit ist ein Grundrecht.', 'Freedom is a basic right.', 'B1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000032853050', 'Präsens der regelmäßigen Verben (Present Tense) / المضارع للأفعال المنتظمة', 'In German, regular verbs follow a consistent pattern. The infinitive ends in -en. Remove the -en and add the personal endings: ich -e, du -st, er/sie/es -t, wir -en, ihr -t, sie/Sie -en. For most Arabic speakers, this is easier than Arabic verb conjugation because German has fewer forms.', '[{"rule":"ich: stem + e","note":"Ich lerne, ich wohne, ich arbeite"},{"rule":"du: stem + st","note":"Du lernst, du wohnst, du arbeitest"},{"rule":"er/sie/es: stem + t","note":"Er lernt, sie wohnt, es arbeitet"},{"rule":"wir: stem + en","note":"Wir lernen, wir wohnen, wir arbeiten"},{"rule":"ihr: stem + t","note":"Ihr lernt, ihr wohnt, ihr arbeitet"},{"rule":"sie/Sie: stem + en","note":"Sie lernen, Sie wohnen"}]', '[{"german":"Ich lerne Deutsch.","arabic":"أنا أتعلم الألمانية.","english":"I am learning German."},{"german":"Du wohnst in Berlin.","arabic":"أنت تسكن في برلين.","english":"You live in Berlin."},{"german":"Er arbeitet bei Siemens.","arabic":"هو يعمل في سيمنز.","english":"He works at Siemens."}]', '[{"mistake":"Ich lernen Deutsch","correction":"Ich lerne Deutsch","explanation":"After \"ich\" we use the stem + e, not the infinitive."},{"mistake":"Er lerne Deutsch","correction":"Er lernt Deutsch","explanation":"After \"er/sie/es\" we add -t, not -e."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000032853050', 'multiple_choice', 'What does "die Schule" mean?', '["The","A","This","That"]', 'The', 'This is a basic vocabulary item.', 1, 1),
  ('00000000-0000-4000-a000-000032853050', 'fill_gap', 'Complete with the correct form.', '["Option 1","Option 2","Option 3"]', 'Option 1', 'Practice grammar in context.', 1, 2),
  ('00000000-0000-4000-a000-000032853050', 'translation', 'Translate: "I learn German."', '["Ich lerne Deutsch.","Ich lerne Englisch.","Ich lerne Spanisch."]', 'Ich lerne Deutsch.', 'Ich = I, lerne = learn/learning, Deutsch = German.', 2, 3),
  ('00000000-0000-4000-a000-000032853050', 'sentence_order', 'Order the sentence.', '[]', 'Ich lerne Deutsch.', 'Subject + verb + object in German.', 2, 4),
  ('00000000-0000-4000-a000-000032853050', 'matching', 'Match the words with their meanings.', '["Match pairs correctly"]', 'Correct pairs', 'Test your vocabulary knowledge.', 2, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-000032853050', 'multiple_choice', 'What is the main topic of this lesson?', '["Presentations","Sports","Music","Travel"]', 'Presentations', 1, 1),
  ('00000000-0000-4000-a000-000032853050', 'true_false', 'This lesson teaches vocabulary about Presentations.', '["True","False"]', 'True', 1, 2),
  ('00000000-0000-4000-a000-000032853050', 'true_false', 'German word order is always the same as English.', '["True","False"]', 'False', 1, 3),
  ('00000000-0000-4000-a000-000032853050', 'multiple_choice', 'How do you say "please" in German?', '["Danke","Bitte","Tschüss","Hallo"]', 'Bitte', 1, 4),
  ('00000000-0000-4000-a000-000032853050', 'multiple_choice', 'Which article is feminine?', '["der","die","das","den"]', 'die', 1, 5),
  ('00000000-0000-4000-a000-000032853050', 'fill_blank', 'Ich ___ (to be) Student.', '["bin","bist","ist","sind"]', 'bin', 1, 6),
  ('00000000-0000-4000-a000-000032853050', 'multiple_choice', 'What is the correct word order?', '["Ich lerne Deutsch","Ich Deutsch lerne","Lerne ich Deutsch","Deutsch ich lerne"]', 'Ich lerne Deutsch', 1, 7),
  ('00000000-0000-4000-a000-000032853050', 'true_false', 'All German nouns are capitalized.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-000032853050', 'multiple_choice', 'How do you say "thank you" in German?', '["Bitte","Danke","Tschüss","Hallo"]', 'Danke', 1, 9),
  ('00000000-0000-4000-a000-000032853050', 'fill_blank', 'Wo ___ du? (to live)', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 1, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-000032853050', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Bildung und Lernen', 'formal', false, 1),
  ('00000000-0000-4000-a000-000032853050', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Bildung und Lernen', 'informal', false, 2),
  ('00000000-0000-4000-a000-000032853050', 'Bitte!', 'Please!', 'من فضلك!', 'Used in Bildung und Lernen', 'neutral', false, 3),
  ('00000000-0000-4000-a000-000032853050', 'Danke!', 'Thanks!', 'شكراً!', 'Used in Bildung und Lernen', 'neutral', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-000032853050', 'Hallo', 'Hello', 'Greeting', 'expression', 1),
  ('00000000-0000-4000-a000-000032853050', 'Danke', 'Thanks', 'Politeness', 'expression', 2),
  ('00000000-0000-4000-a000-000032853050', 'Bitte', 'Please', 'Politeness', 'expression', 3),
  ('00000000-0000-4000-a000-000032853050', 'Tschüss', 'Bye', 'Farewell', 'expression', 4);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-000032853050', 'Eine Präsentation halten — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, duration_seconds, speaker_count, scenario) values
  ('00000000-0000-4000-a000-000032853050', 'Eine Präsentation halten — Hörverständnis', '[Lehrerin]: Guten Morgen! Heute lernen wir Begrüßungen.

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

[Lehrerin]: ممتاز! إلى الغد!', 72, 2, 'Bildung und Lernen');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-000032853050', 'Speaking: Eine Präsentation halten', 'Practice talking about Presentations. Answer questions and have a simple conversation.', 'Presentations', ARRAY['Use full sentences','Speak clearly','Don''t worry about mistakes']::text[], ARRAY['die Schule','der Lehrer','der Student','die Universität','der Kurs']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-000032853050', 'Writing: Eine Präsentation halten', 'Write a short text about Presentations. Use at least 5 vocabulary words from this lesson.', ARRAY['Start with a greeting','Use the vocabulary from this lesson','Check your grammar']::text[], ARRAY['die Schule','der Lehrer','der Student']::text[], '["Sentence structure","Vocabulary usage"]', 50, 150, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000032853050', 'Eine Präsentation halten — Roleplay', 'Presentations', 'Student', 'Teacher', 'Practice conversation about Presentations', 'Hallo! Lass uns über dieses Thema sprechen.', 'intermediate', 1, ARRAY['die Schule','der Lehrer','der Student','die Universität','der Kurs','die Prüfung','das Studium','lernen']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000032853050', 'Eine Präsentation halten — Advanced Roleplay', 'Presentations', 'Customer', 'Assistant', 'Extended conversation about Presentations', 'Guten Tag! Wie kann ich Ihnen helfen?', 'intermediate', 2, ARRAY['die Schule','der Lehrer','der Student','die Universität','der Kurs','die Prüfung','das Studium','lernen']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-000032853050', 'Eine Präsentation halten — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Eine Präsentation halten".', 'Creative practice for Presentations', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-000032853050', 'Homework: Eine Präsentation halten', 'Complete these tasks to reinforce "Eine Präsentation halten".', 'mixed', '[{"description":"Review all vocabulary from this lesson"},{"description":"Write 5 sentences using the grammar structure"},{"description":"Practice the dialogue aloud"}]', 35, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-000032853050', 'In this lesson you learned about Presentations. You practiced vocabulary related to education and grammar structure present_tense.', '["Mastered vocabulary about Presentations","Applied present_tense correctly","Read and understood a text about Presentations","Practiced speaking about Presentations"]', '[{"title":"Eine Präsentation halten Review","summary":"present_tense — the main grammar focus of this lesson."}]', ARRAY['Presentations core vocabulary','education key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)','Verb is always in second position']::text[], ARRAY['Practice 15-20 minutes daily','Use new vocabulary in real sentences','Speak out loud to improve pronunciation']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000032853050', 'translation', 'Translate to German: "This is a translation exercise."', '[]', 'Das ist eine Übersetzungsübung.', 'Use "das ist" for "this is"', 1, 40);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000032853050', 'Culture: Presentations in German-Speaking Countries', 'Learn how Presentations is approached in German culture.

تعلم كيف يتم التعامل مع Presentations في الثقافة الألمانية.', '["Tip: Be direct and polite","Tip: Use formal language with strangers","Tip: Respect punctuality"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000032853050', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Common error for Arabic speakers","correction":"Correct version","explanation":"Explanation of the error"}]', 30);

  -- Lesson 5: Test: Bildung und Lernen (L-B1-04-05)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-00003285304f', '00000000-0000-4000-a000-000039c2eae2', 'Test: Bildung und Lernen', 'Module test on education and learning.', 'Module Test', 'test', '["Understand and use vocabulary related to Module Test","Apply present_tense correctly","Read and comprehend a text about Module Test","Listen and understand a dialogue about Module Test","Speak about Module Test in simple sentences","Write a short text about Module Test"]', 40, 5, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-00003285304f', 'die Schule', 'المدرسة', 'school', 'die', 'die Schulen', 'noun', 'Die Kinder gehen zur Schule.', 'The children go to school.', 'A1', 1),
  ('00000000-0000-4000-a000-00003285304f', 'der Lehrer', 'المعلم', 'teacher', 'der', 'die Lehrer', 'noun', 'Der Lehrer erklärt die Grammatik.', 'The teacher explains the grammar.', 'A1', 2),
  ('00000000-0000-4000-a000-00003285304f', 'der Student', 'الطالب', 'student', 'der', 'die Studenten', 'noun', 'Der Student lernt Deutsch.', 'The student learns German.', 'A1', 3),
  ('00000000-0000-4000-a000-00003285304f', 'die Universität', 'الجامعة', 'university', 'die', 'die Universitäten', 'noun', 'Die Universität ist alt.', 'The university is old.', 'B1', 4),
  ('00000000-0000-4000-a000-00003285304f', 'der Kurs', 'الدورة', 'course', 'der', 'die Kurse', 'noun', 'Der Kurs kostet 200 Euro.', 'The course costs 200 euros.', 'A2', 5),
  ('00000000-0000-4000-a000-00003285304f', 'die Prüfung', 'الامتحان', 'exam', 'die', 'die Prüfungen', 'noun', 'Die Prüfung ist schwer.', 'The exam is difficult.', 'B1', 6),
  ('00000000-0000-4000-a000-00003285304f', 'das Studium', 'الدراسة الجامعية', 'studies', 'das', NULL, 'noun', 'Mein Studium dauert vier Jahre.', 'My studies take four years.', 'B1', 7),
  ('00000000-0000-4000-a000-00003285304f', 'lernen', 'يتعلم', 'to learn', NULL, NULL, 'verb', 'Ich lerne Deutsch.', 'I learn German.', 'A1', 8),
  ('00000000-0000-4000-a000-00003285304f', 'der Beruf', 'المهنة', 'profession', 'der', 'die Berufe', 'noun', 'Was ist dein Beruf?', 'What is your profession?', 'A1', 9),
  ('00000000-0000-4000-a000-00003285304f', 'die Firma', 'الشركة', 'company', 'die', 'die Firmen', 'noun', 'Die Firma ist in Berlin.', 'The company is in Berlin.', 'A1', 10),
  ('00000000-0000-4000-a000-00003285304f', 'der Kollege', 'الزميل', 'colleague', 'der', 'die Kollegen', 'noun', 'Mein Kollege hilft mir.', 'My colleague helps me.', 'A1', 11),
  ('00000000-0000-4000-a000-00003285304f', 'das Büro', 'المكتب', 'office', 'das', 'die Büros', 'noun', 'Das Büro ist im dritten Stock.', 'The office is on the third floor.', 'A1', 12),
  ('00000000-0000-4000-a000-00003285304f', 'die Besprechung', 'الاجتماع', 'meeting', 'die', 'die Besprechungen', 'noun', 'Wir haben eine Besprechung.', 'We have a meeting.', 'B1', 13),
  ('00000000-0000-4000-a000-00003285304f', 'der Chef', 'المدير', 'boss', 'der', 'die Chefs', 'noun', 'Mein Chef ist freundlich.', 'My boss is friendly.', 'A1', 14),
  ('00000000-0000-4000-a000-00003285304f', 'das Gehalt', 'الراتب', 'salary', 'das', 'die Gehälter', 'noun', 'Das Gehalt ist gut.', 'The salary is good.', 'B1', 15),
  ('00000000-0000-4000-a000-00003285304f', 'die Stelle', 'الوظيفة', 'position', 'die', 'die Stellen', 'noun', 'Ich suche eine neue Stelle.', 'I am looking for a new position.', 'B1', 16),
  ('00000000-0000-4000-a000-00003285304f', 'die Zeitung', 'الجريدة', 'newspaper', 'die', 'die Zeitungen', 'noun', 'Ich lese die Zeitung.', 'I read the newspaper.', 'A2', 17),
  ('00000000-0000-4000-a000-00003285304f', 'das Internet', 'الإنترنت', 'internet', 'das', NULL, 'noun', 'Das Internet ist schnell.', 'The internet is fast.', 'A2', 18),
  ('00000000-0000-4000-a000-00003285304f', 'der Artikel', 'المقال', 'article', 'der', 'die Artikel', 'noun', 'Der Artikel ist interessant.', 'The article is interesting.', 'B1', 19),
  ('00000000-0000-4000-a000-00003285304f', 'die Nachricht', 'الخبر', 'news', 'die', 'die Nachrichten', 'noun', 'Ich sehe die Nachrichten.', 'I watch the news.', 'A2', 20),
  ('00000000-0000-4000-a000-00003285304f', 'das Radio', 'الراديو', 'radio', 'das', 'die Radios', 'noun', 'Ich höre Radio.', 'I listen to the radio.', 'A2', 21),
  ('00000000-0000-4000-a000-00003285304f', 'das Fernsehen', 'التلفاز', 'television', 'das', NULL, 'noun', 'Das Fernsehen läuft.', 'The television is on.', 'A2', 22),
  ('00000000-0000-4000-a000-00003285304f', 'die Zeitschrift', 'المجلة', 'magazine', 'die', 'die Zeitschriften', 'noun', 'Die Zeitschrift erscheint monatlich.', 'The magazine is published monthly.', 'B1', 23),
  ('00000000-0000-4000-a000-00003285304f', 'der Journalist', 'الصحفي', 'journalist', 'der', 'die Journalisten', 'noun', 'Der Journalist schreibt einen Artikel.', 'The journalist writes an article.', 'B1', 24),
  ('00000000-0000-4000-a000-00003285304f', 'die Gesellschaft', 'المجتمع', 'society', 'die', NULL, 'noun', 'Die Gesellschaft verändert sich.', 'Society is changing.', 'B1', 25),
  ('00000000-0000-4000-a000-00003285304f', 'die Politik', 'السياسة', 'politics', 'die', NULL, 'noun', 'Politik ist ein wichtiges Thema.', 'Politics is an important topic.', 'B1', 26),
  ('00000000-0000-4000-a000-00003285304f', 'die Integration', 'الاندماج', 'integration', 'die', NULL, 'noun', 'Integration ist wichtig.', 'Integration is important.', 'B1', 27),
  ('00000000-0000-4000-a000-00003285304f', 'die Kultur', 'الثقافة', 'culture', 'die', NULL, 'noun', 'Die deutsche Kultur ist vielfältig.', 'German culture is diverse.', 'A2', 28),
  ('00000000-0000-4000-a000-00003285304f', 'der Bürger', 'المواطن', 'citizen', 'der', 'die Bürger', 'noun', 'Die Bürger wählen.', 'The citizens vote.', 'B1', 29),
  ('00000000-0000-4000-a000-00003285304f', 'die Freiheit', 'الحرية', 'freedom', 'die', NULL, 'noun', 'Freiheit ist ein Grundrecht.', 'Freedom is a basic right.', 'B1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00003285304f', 'Präsens der regelmäßigen Verben (Present Tense) / المضارع للأفعال المنتظمة', 'In German, regular verbs follow a consistent pattern. The infinitive ends in -en. Remove the -en and add the personal endings: ich -e, du -st, er/sie/es -t, wir -en, ihr -t, sie/Sie -en. For most Arabic speakers, this is easier than Arabic verb conjugation because German has fewer forms.', '[{"rule":"ich: stem + e","note":"Ich lerne, ich wohne, ich arbeite"},{"rule":"du: stem + st","note":"Du lernst, du wohnst, du arbeitest"},{"rule":"er/sie/es: stem + t","note":"Er lernt, sie wohnt, es arbeitet"},{"rule":"wir: stem + en","note":"Wir lernen, wir wohnen, wir arbeiten"},{"rule":"ihr: stem + t","note":"Ihr lernt, ihr wohnt, ihr arbeitet"},{"rule":"sie/Sie: stem + en","note":"Sie lernen, Sie wohnen"}]', '[{"german":"Ich lerne Deutsch.","arabic":"أنا أتعلم الألمانية.","english":"I am learning German."},{"german":"Du wohnst in Berlin.","arabic":"أنت تسكن في برلين.","english":"You live in Berlin."},{"german":"Er arbeitet bei Siemens.","arabic":"هو يعمل في سيمنز.","english":"He works at Siemens."}]', '[{"mistake":"Ich lernen Deutsch","correction":"Ich lerne Deutsch","explanation":"After \"ich\" we use the stem + e, not the infinitive."},{"mistake":"Er lerne Deutsch","correction":"Er lernt Deutsch","explanation":"After \"er/sie/es\" we add -t, not -e."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00003285304f', 'multiple_choice', 'What does "die Schule" mean?', '["The","A","This","That"]', 'The', 'This is a basic vocabulary item.', 1, 1),
  ('00000000-0000-4000-a000-00003285304f', 'fill_gap', 'Complete with the correct form.', '["Option 1","Option 2","Option 3"]', 'Option 1', 'Practice grammar in context.', 1, 2),
  ('00000000-0000-4000-a000-00003285304f', 'translation', 'Translate: "I learn German."', '["Ich lerne Deutsch.","Ich lerne Englisch.","Ich lerne Spanisch."]', 'Ich lerne Deutsch.', 'Ich = I, lerne = learn/learning, Deutsch = German.', 2, 3),
  ('00000000-0000-4000-a000-00003285304f', 'sentence_order', 'Order the sentence.', '[]', 'Ich lerne Deutsch.', 'Subject + verb + object in German.', 2, 4),
  ('00000000-0000-4000-a000-00003285304f', 'matching', 'Match the words with their meanings.', '["Match pairs correctly"]', 'Correct pairs', 'Test your vocabulary knowledge.', 2, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-00003285304f', 'multiple_choice', 'What is the main topic of this lesson?', '["Module Test","Sports","Music","Travel"]', 'Module Test', 1, 1),
  ('00000000-0000-4000-a000-00003285304f', 'true_false', 'This lesson teaches vocabulary about Module Test.', '["True","False"]', 'True', 1, 2),
  ('00000000-0000-4000-a000-00003285304f', 'true_false', 'German word order is always the same as English.', '["True","False"]', 'False', 1, 3),
  ('00000000-0000-4000-a000-00003285304f', 'multiple_choice', 'How do you say "please" in German?', '["Danke","Bitte","Tschüss","Hallo"]', 'Bitte', 1, 4),
  ('00000000-0000-4000-a000-00003285304f', 'multiple_choice', 'Which article is feminine?', '["der","die","das","den"]', 'die', 1, 5),
  ('00000000-0000-4000-a000-00003285304f', 'fill_blank', 'Ich ___ (to be) Student.', '["bin","bist","ist","sind"]', 'bin', 1, 6),
  ('00000000-0000-4000-a000-00003285304f', 'multiple_choice', 'What is the correct word order?', '["Ich lerne Deutsch","Ich Deutsch lerne","Lerne ich Deutsch","Deutsch ich lerne"]', 'Ich lerne Deutsch', 1, 7),
  ('00000000-0000-4000-a000-00003285304f', 'true_false', 'All German nouns are capitalized.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-00003285304f', 'multiple_choice', 'How do you say "thank you" in German?', '["Bitte","Danke","Tschüss","Hallo"]', 'Danke', 1, 9),
  ('00000000-0000-4000-a000-00003285304f', 'fill_blank', 'Wo ___ du? (to live)', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 1, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-00003285304f', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Bildung und Lernen', 'formal', false, 1),
  ('00000000-0000-4000-a000-00003285304f', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Bildung und Lernen', 'informal', false, 2),
  ('00000000-0000-4000-a000-00003285304f', 'Bitte!', 'Please!', 'من فضلك!', 'Used in Bildung und Lernen', 'neutral', false, 3),
  ('00000000-0000-4000-a000-00003285304f', 'Danke!', 'Thanks!', 'شكراً!', 'Used in Bildung und Lernen', 'neutral', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-00003285304f', 'Hallo', 'Hello', 'Greeting', 'expression', 1),
  ('00000000-0000-4000-a000-00003285304f', 'Danke', 'Thanks', 'Politeness', 'expression', 2),
  ('00000000-0000-4000-a000-00003285304f', 'Bitte', 'Please', 'Politeness', 'expression', 3),
  ('00000000-0000-4000-a000-00003285304f', 'Tschüss', 'Bye', 'Farewell', 'expression', 4);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-00003285304f', 'Test: Bildung und Lernen — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, duration_seconds, speaker_count, scenario) values
  ('00000000-0000-4000-a000-00003285304f', 'Test: Bildung und Lernen — Hörverständnis', '[Lehrerin]: Guten Morgen! Heute lernen wir Begrüßungen.

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

[Lehrerin]: ممتاز! إلى الغد!', 72, 2, 'Bildung und Lernen');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-00003285304f', 'Speaking: Test: Bildung und Lernen', 'Practice talking about Module Test. Answer questions and have a simple conversation.', 'Module Test', ARRAY['Use full sentences','Speak clearly','Don''t worry about mistakes']::text[], ARRAY['die Schule','der Lehrer','der Student','die Universität','der Kurs']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-00003285304f', 'Writing: Test: Bildung und Lernen', 'Write a short text about Module Test. Use at least 5 vocabulary words from this lesson.', ARRAY['Start with a greeting','Use the vocabulary from this lesson','Check your grammar']::text[], ARRAY['die Schule','der Lehrer','der Student']::text[], '["Sentence structure","Vocabulary usage"]', 50, 150, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00003285304f', 'Test: Bildung und Lernen — Roleplay', 'Module Test', 'Student', 'Teacher', 'Practice conversation about Module Test', 'Hallo! Lass uns über dieses Thema sprechen.', 'intermediate', 1, ARRAY['die Schule','der Lehrer','der Student','die Universität','der Kurs','die Prüfung','das Studium','lernen']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00003285304f', 'Test: Bildung und Lernen — Advanced Roleplay', 'Module Test', 'Customer', 'Assistant', 'Extended conversation about Module Test', 'Guten Tag! Wie kann ich Ihnen helfen?', 'intermediate', 2, ARRAY['die Schule','der Lehrer','der Student','die Universität','der Kurs','die Prüfung','das Studium','lernen']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-00003285304f', 'Test: Bildung und Lernen — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Test: Bildung und Lernen".', 'Creative practice for Module Test', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-00003285304f', 'Homework: Test: Bildung und Lernen', 'Complete these tasks to reinforce "Test: Bildung und Lernen".', 'mixed', '[{"description":"Review all vocabulary from this lesson"},{"description":"Write 5 sentences using the grammar structure"},{"description":"Practice the dialogue aloud"}]', 35, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-00003285304f', 'In this lesson you learned about Module Test. You practiced vocabulary related to education and grammar structure present_tense.', '["Mastered vocabulary about Module Test","Applied present_tense correctly","Read and understood a text about Module Test","Practiced speaking about Module Test"]', '[{"title":"Test: Bildung und Lernen Review","summary":"present_tense — the main grammar focus of this lesson."}]', ARRAY['Module Test core vocabulary','education key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)','Verb is always in second position']::text[], ARRAY['Practice 15-20 minutes daily','Use new vocabulary in real sentences','Speak out loud to improve pronunciation']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00003285304f', 'translation', 'Translate to German: "This is a translation exercise."', '[]', 'Das ist eine Übersetzungsübung.', 'Use "das ist" for "this is"', 1, 40);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00003285304f', 'Culture: Module Test in German-Speaking Countries', 'Learn how Module Test is approached in German culture.

تعلم كيف يتم التعامل مع Module Test في الثقافة الألمانية.', '["Tip: Be direct and polite","Tip: Use formal language with strangers","Tip: Respect punctuality"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00003285304f', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Common error for Arabic speakers","correction":"Correct version","explanation":"Explanation of the error"}]', 30);

  -- Module 5: Umwelt und Nachhaltigkeit
  insert into public.course_modules (id, level_id, title, description, objectives, order_index, estimated_hours, is_published)
  values ('00000000-0000-4000-a000-000039c2eae3', 'B1', 'Umwelt und Nachhaltigkeit', 'Discuss environmental issues and sustainability.', '["Discuss environmental topics","Use um...zu and damit for purpose","Understand and discuss news articles","Make suggestions and proposals","Compare environmental policies"]', 5, 5, true)
  on conflict (id) do nothing;

  -- Lesson 1: Umweltschutz und Nachhaltigkeit (L-B1-05-01)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-00003284bbf4', '00000000-0000-4000-a000-000039c2eae3', 'Umweltschutz und Nachhaltigkeit', 'Learn environmental and sustainability vocabulary.', 'Environment', 'vocabulary', '["Understand and use vocabulary related to Environment","Apply present_tense correctly","Read and comprehend a text about Environment","Listen and understand a dialogue about Environment","Speak about Environment in simple sentences","Write a short text about Environment"]', 50, 1, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-00003284bbf4', 'die Umwelt', 'البيئة', 'environment', 'die', NULL, 'noun', 'Wir müssen die Umwelt schützen.', 'We must protect the environment.', 'B1', 1),
  ('00000000-0000-4000-a000-00003284bbf4', 'der Klimawandel', 'تغير المناخ', 'climate change', 'der', NULL, 'noun', 'Der Klimawandel ist ein globales Problem.', 'Climate change is a global problem.', 'B1', 2),
  ('00000000-0000-4000-a000-00003284bbf4', 'die Energie', 'الطاقة', 'energy', 'die', NULL, 'noun', 'Erneuerbare Energie ist wichtig.', 'Renewable energy is important.', 'B1', 3),
  ('00000000-0000-4000-a000-00003284bbf4', 'der Müll', 'النفايات', 'waste', 'der', NULL, 'noun', 'In Deutschland trennt man den Müll.', 'In Germany, waste is separated.', 'B1', 4),
  ('00000000-0000-4000-a000-00003284bbf4', 'recyceln', 'يعيد التدوير', 'to recycle', NULL, NULL, 'verb', 'Wir recyceln Papier und Plastik.', 'We recycle paper and plastic.', 'B1', 5),
  ('00000000-0000-4000-a000-00003284bbf4', 'die Nachhaltigkeit', 'الاستدامة', 'sustainability', 'die', NULL, 'noun', 'Nachhaltigkeit ist ein Trend.', 'Sustainability is a trend.', 'B1', 6),
  ('00000000-0000-4000-a000-00003284bbf4', 'die Luft', 'الهواء', 'air', 'die', NULL, 'noun', 'Die Luft ist frisch.', 'The air is fresh.', 'A2', 7),
  ('00000000-0000-4000-a000-00003284bbf4', 'das Wasser', 'الماء', 'water', 'das', NULL, 'noun', 'Das Wasser ist sauber.', 'The water is clean.', 'A1', 8),
  ('00000000-0000-4000-a000-00003284bbf4', 'der Beruf', 'المهنة', 'profession', 'der', 'die Berufe', 'noun', 'Was ist dein Beruf?', 'What is your profession?', 'A1', 9),
  ('00000000-0000-4000-a000-00003284bbf4', 'die Firma', 'الشركة', 'company', 'die', 'die Firmen', 'noun', 'Die Firma ist in Berlin.', 'The company is in Berlin.', 'A1', 10),
  ('00000000-0000-4000-a000-00003284bbf4', 'der Kollege', 'الزميل', 'colleague', 'der', 'die Kollegen', 'noun', 'Mein Kollege hilft mir.', 'My colleague helps me.', 'A1', 11),
  ('00000000-0000-4000-a000-00003284bbf4', 'das Büro', 'المكتب', 'office', 'das', 'die Büros', 'noun', 'Das Büro ist im dritten Stock.', 'The office is on the third floor.', 'A1', 12),
  ('00000000-0000-4000-a000-00003284bbf4', 'die Besprechung', 'الاجتماع', 'meeting', 'die', 'die Besprechungen', 'noun', 'Wir haben eine Besprechung.', 'We have a meeting.', 'B1', 13),
  ('00000000-0000-4000-a000-00003284bbf4', 'der Chef', 'المدير', 'boss', 'der', 'die Chefs', 'noun', 'Mein Chef ist freundlich.', 'My boss is friendly.', 'A1', 14),
  ('00000000-0000-4000-a000-00003284bbf4', 'das Gehalt', 'الراتب', 'salary', 'das', 'die Gehälter', 'noun', 'Das Gehalt ist gut.', 'The salary is good.', 'B1', 15),
  ('00000000-0000-4000-a000-00003284bbf4', 'die Stelle', 'الوظيفة', 'position', 'die', 'die Stellen', 'noun', 'Ich suche eine neue Stelle.', 'I am looking for a new position.', 'B1', 16),
  ('00000000-0000-4000-a000-00003284bbf4', 'die Schule', 'المدرسة', 'school', 'die', 'die Schulen', 'noun', 'Die Kinder gehen zur Schule.', 'The children go to school.', 'A1', 17),
  ('00000000-0000-4000-a000-00003284bbf4', 'der Lehrer', 'المعلم', 'teacher', 'der', 'die Lehrer', 'noun', 'Der Lehrer erklärt die Grammatik.', 'The teacher explains the grammar.', 'A1', 18),
  ('00000000-0000-4000-a000-00003284bbf4', 'der Student', 'الطالب', 'student', 'der', 'die Studenten', 'noun', 'Der Student lernt Deutsch.', 'The student learns German.', 'A1', 19),
  ('00000000-0000-4000-a000-00003284bbf4', 'die Universität', 'الجامعة', 'university', 'die', 'die Universitäten', 'noun', 'Die Universität ist alt.', 'The university is old.', 'B1', 20),
  ('00000000-0000-4000-a000-00003284bbf4', 'der Kurs', 'الدورة', 'course', 'der', 'die Kurse', 'noun', 'Der Kurs kostet 200 Euro.', 'The course costs 200 euros.', 'A2', 21),
  ('00000000-0000-4000-a000-00003284bbf4', 'die Prüfung', 'الامتحان', 'exam', 'die', 'die Prüfungen', 'noun', 'Die Prüfung ist schwer.', 'The exam is difficult.', 'B1', 22),
  ('00000000-0000-4000-a000-00003284bbf4', 'das Studium', 'الدراسة الجامعية', 'studies', 'das', NULL, 'noun', 'Mein Studium dauert vier Jahre.', 'My studies take four years.', 'B1', 23),
  ('00000000-0000-4000-a000-00003284bbf4', 'lernen', 'يتعلم', 'to learn', NULL, NULL, 'verb', 'Ich lerne Deutsch.', 'I learn German.', 'A1', 24),
  ('00000000-0000-4000-a000-00003284bbf4', 'die Zeitung', 'الجريدة', 'newspaper', 'die', 'die Zeitungen', 'noun', 'Ich lese die Zeitung.', 'I read the newspaper.', 'A2', 25),
  ('00000000-0000-4000-a000-00003284bbf4', 'das Internet', 'الإنترنت', 'internet', 'das', NULL, 'noun', 'Das Internet ist schnell.', 'The internet is fast.', 'A2', 26),
  ('00000000-0000-4000-a000-00003284bbf4', 'der Artikel', 'المقال', 'article', 'der', 'die Artikel', 'noun', 'Der Artikel ist interessant.', 'The article is interesting.', 'B1', 27),
  ('00000000-0000-4000-a000-00003284bbf4', 'die Nachricht', 'الخبر', 'news', 'die', 'die Nachrichten', 'noun', 'Ich sehe die Nachrichten.', 'I watch the news.', 'A2', 28),
  ('00000000-0000-4000-a000-00003284bbf4', 'das Radio', 'الراديو', 'radio', 'das', 'die Radios', 'noun', 'Ich höre Radio.', 'I listen to the radio.', 'A2', 29),
  ('00000000-0000-4000-a000-00003284bbf4', 'das Fernsehen', 'التلفاز', 'television', 'das', NULL, 'noun', 'Das Fernsehen läuft.', 'The television is on.', 'A2', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00003284bbf4', 'Präsens der regelmäßigen Verben (Present Tense) / المضارع للأفعال المنتظمة', 'In German, regular verbs follow a consistent pattern. The infinitive ends in -en. Remove the -en and add the personal endings: ich -e, du -st, er/sie/es -t, wir -en, ihr -t, sie/Sie -en. For most Arabic speakers, this is easier than Arabic verb conjugation because German has fewer forms.', '[{"rule":"ich: stem + e","note":"Ich lerne, ich wohne, ich arbeite"},{"rule":"du: stem + st","note":"Du lernst, du wohnst, du arbeitest"},{"rule":"er/sie/es: stem + t","note":"Er lernt, sie wohnt, es arbeitet"},{"rule":"wir: stem + en","note":"Wir lernen, wir wohnen, wir arbeiten"},{"rule":"ihr: stem + t","note":"Ihr lernt, ihr wohnt, ihr arbeitet"},{"rule":"sie/Sie: stem + en","note":"Sie lernen, Sie wohnen"}]', '[{"german":"Ich lerne Deutsch.","arabic":"أنا أتعلم الألمانية.","english":"I am learning German."},{"german":"Du wohnst in Berlin.","arabic":"أنت تسكن في برلين.","english":"You live in Berlin."},{"german":"Er arbeitet bei Siemens.","arabic":"هو يعمل في سيمنز.","english":"He works at Siemens."}]', '[{"mistake":"Ich lernen Deutsch","correction":"Ich lerne Deutsch","explanation":"After \"ich\" we use the stem + e, not the infinitive."},{"mistake":"Er lerne Deutsch","correction":"Er lernt Deutsch","explanation":"After \"er/sie/es\" we add -t, not -e."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00003284bbf4', 'multiple_choice', 'What does "die Umwelt" mean?', '["The","A","This","That"]', 'The', 'This is a basic vocabulary item.', 1, 1),
  ('00000000-0000-4000-a000-00003284bbf4', 'fill_gap', 'Complete with the correct form.', '["Option 1","Option 2","Option 3"]', 'Option 1', 'Practice grammar in context.', 1, 2),
  ('00000000-0000-4000-a000-00003284bbf4', 'translation', 'Translate: "I learn German."', '["Ich lerne Deutsch.","Ich lerne Englisch.","Ich lerne Spanisch."]', 'Ich lerne Deutsch.', 'Ich = I, lerne = learn/learning, Deutsch = German.', 2, 3),
  ('00000000-0000-4000-a000-00003284bbf4', 'sentence_order', 'Order the sentence.', '[]', 'Ich lerne Deutsch.', 'Subject + verb + object in German.', 2, 4),
  ('00000000-0000-4000-a000-00003284bbf4', 'matching', 'Match the words with their meanings.', '["Match pairs correctly"]', 'Correct pairs', 'Test your vocabulary knowledge.', 2, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-00003284bbf4', 'multiple_choice', 'What is the main topic of this lesson?', '["Environment","Sports","Music","Travel"]', 'Environment', 1, 1),
  ('00000000-0000-4000-a000-00003284bbf4', 'true_false', 'This lesson teaches vocabulary about Environment.', '["True","False"]', 'True', 1, 2),
  ('00000000-0000-4000-a000-00003284bbf4', 'true_false', 'German word order is always the same as English.', '["True","False"]', 'False', 1, 3),
  ('00000000-0000-4000-a000-00003284bbf4', 'multiple_choice', 'How do you say "please" in German?', '["Danke","Bitte","Tschüss","Hallo"]', 'Bitte', 1, 4),
  ('00000000-0000-4000-a000-00003284bbf4', 'multiple_choice', 'Which article is feminine?', '["der","die","das","den"]', 'die', 1, 5),
  ('00000000-0000-4000-a000-00003284bbf4', 'fill_blank', 'Ich ___ (to be) Student.', '["bin","bist","ist","sind"]', 'bin', 1, 6),
  ('00000000-0000-4000-a000-00003284bbf4', 'multiple_choice', 'What is the correct word order?', '["Ich lerne Deutsch","Ich Deutsch lerne","Lerne ich Deutsch","Deutsch ich lerne"]', 'Ich lerne Deutsch', 1, 7),
  ('00000000-0000-4000-a000-00003284bbf4', 'true_false', 'All German nouns are capitalized.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-00003284bbf4', 'multiple_choice', 'How do you say "thank you" in German?', '["Bitte","Danke","Tschüss","Hallo"]', 'Danke', 1, 9),
  ('00000000-0000-4000-a000-00003284bbf4', 'fill_blank', 'Wo ___ du? (to live)', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 1, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-00003284bbf4', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Umwelt und Nachhaltigkeit', 'formal', false, 1),
  ('00000000-0000-4000-a000-00003284bbf4', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Umwelt und Nachhaltigkeit', 'informal', false, 2),
  ('00000000-0000-4000-a000-00003284bbf4', 'Bitte!', 'Please!', 'من فضلك!', 'Used in Umwelt und Nachhaltigkeit', 'neutral', false, 3),
  ('00000000-0000-4000-a000-00003284bbf4', 'Danke!', 'Thanks!', 'شكراً!', 'Used in Umwelt und Nachhaltigkeit', 'neutral', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-00003284bbf4', 'Hallo', 'Hello', 'Greeting', 'expression', 1),
  ('00000000-0000-4000-a000-00003284bbf4', 'Danke', 'Thanks', 'Politeness', 'expression', 2),
  ('00000000-0000-4000-a000-00003284bbf4', 'Bitte', 'Please', 'Politeness', 'expression', 3),
  ('00000000-0000-4000-a000-00003284bbf4', 'Tschüss', 'Bye', 'Farewell', 'expression', 4);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-00003284bbf4', 'Umweltschutz und Nachhaltigkeit — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, duration_seconds, speaker_count, scenario) values
  ('00000000-0000-4000-a000-00003284bbf4', 'Umweltschutz und Nachhaltigkeit — Hörverständnis', '[Lehrerin]: Guten Morgen! Heute lernen wir Begrüßungen.

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

[Lehrerin]: ممتاز! إلى الغد!', 72, 2, 'Umwelt und Nachhaltigkeit');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-00003284bbf4', 'Speaking: Umweltschutz und Nachhaltigkeit', 'Practice talking about Environment. Answer questions and have a simple conversation.', 'Environment', ARRAY['Use full sentences','Speak clearly','Don''t worry about mistakes']::text[], ARRAY['die Umwelt','der Klimawandel','die Energie','der Müll','recyceln']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-00003284bbf4', 'Writing: Umweltschutz und Nachhaltigkeit', 'Write a short text about Environment. Use at least 5 vocabulary words from this lesson.', ARRAY['Start with a greeting','Use the vocabulary from this lesson','Check your grammar']::text[], ARRAY['die Umwelt','der Klimawandel','die Energie']::text[], '["Sentence structure","Vocabulary usage"]', 50, 150, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00003284bbf4', 'Umweltschutz und Nachhaltigkeit — Roleplay', 'Environment', 'Student', 'Teacher', 'Practice conversation about Environment', 'Hallo! Lass uns über dieses Thema sprechen.', 'intermediate', 1, ARRAY['die Umwelt','der Klimawandel','die Energie','der Müll','recyceln','die Nachhaltigkeit','die Luft','das Wasser']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00003284bbf4', 'Umweltschutz und Nachhaltigkeit — Advanced Roleplay', 'Environment', 'Customer', 'Assistant', 'Extended conversation about Environment', 'Guten Tag! Wie kann ich Ihnen helfen?', 'intermediate', 2, ARRAY['die Umwelt','der Klimawandel','die Energie','der Müll','recyceln','die Nachhaltigkeit','die Luft','das Wasser']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-00003284bbf4', 'Umweltschutz und Nachhaltigkeit — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Umweltschutz und Nachhaltigkeit".', 'Creative practice for Environment', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-00003284bbf4', 'Homework: Umweltschutz und Nachhaltigkeit', 'Complete these tasks to reinforce "Umweltschutz und Nachhaltigkeit".', 'mixed', '[{"description":"Review all vocabulary from this lesson"},{"description":"Write 5 sentences using the grammar structure"},{"description":"Practice the dialogue aloud"}]', 35, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-00003284bbf4', 'In this lesson you learned about Environment. You practiced vocabulary related to environment and grammar structure present_tense.', '["Mastered vocabulary about Environment","Applied present_tense correctly","Read and understood a text about Environment","Practiced speaking about Environment"]', '[{"title":"Umweltschutz und Nachhaltigkeit Review","summary":"present_tense — the main grammar focus of this lesson."}]', ARRAY['Environment core vocabulary','environment key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)','Verb is always in second position']::text[], ARRAY['Practice 15-20 minutes daily','Use new vocabulary in real sentences','Speak out loud to improve pronunciation']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00003284bbf4', 'translation', 'Translate to German: "This is a translation exercise."', '[]', 'Das ist eine Übersetzungsübung.', 'Use "das ist" for "this is"', 1, 40);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00003284bbf4', 'Culture: Environment in German-Speaking Countries', 'Learn how Environment is approached in German culture.

تعلم كيف يتم التعامل مع Environment في الثقافة الألمانية.', '["Tip: Be direct and polite","Tip: Use formal language with strangers","Tip: Respect punctuality"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00003284bbf4', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Common error for Arabic speakers","correction":"Correct version","explanation":"Explanation of the error"}]', 30);

  -- Lesson 2: Mülltrennung und Recycling (L-B1-05-02)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-00003284bbf3', '00000000-0000-4000-a000-000039c2eae3', 'Mülltrennung und Recycling', 'Learn about German waste separation and recycling.', 'Recycling in Germany', 'reading', '["Understand and use vocabulary related to Recycling in Germany","Apply present_tense correctly","Read and comprehend a text about Recycling in Germany","Listen and understand a dialogue about Recycling in Germany","Speak about Recycling in Germany in simple sentences","Write a short text about Recycling in Germany"]', 50, 2, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-00003284bbf3', 'die Umwelt', 'البيئة', 'environment', 'die', NULL, 'noun', 'Wir müssen die Umwelt schützen.', 'We must protect the environment.', 'B1', 1),
  ('00000000-0000-4000-a000-00003284bbf3', 'der Klimawandel', 'تغير المناخ', 'climate change', 'der', NULL, 'noun', 'Der Klimawandel ist ein globales Problem.', 'Climate change is a global problem.', 'B1', 2),
  ('00000000-0000-4000-a000-00003284bbf3', 'die Energie', 'الطاقة', 'energy', 'die', NULL, 'noun', 'Erneuerbare Energie ist wichtig.', 'Renewable energy is important.', 'B1', 3),
  ('00000000-0000-4000-a000-00003284bbf3', 'der Müll', 'النفايات', 'waste', 'der', NULL, 'noun', 'In Deutschland trennt man den Müll.', 'In Germany, waste is separated.', 'B1', 4),
  ('00000000-0000-4000-a000-00003284bbf3', 'recyceln', 'يعيد التدوير', 'to recycle', NULL, NULL, 'verb', 'Wir recyceln Papier und Plastik.', 'We recycle paper and plastic.', 'B1', 5),
  ('00000000-0000-4000-a000-00003284bbf3', 'die Nachhaltigkeit', 'الاستدامة', 'sustainability', 'die', NULL, 'noun', 'Nachhaltigkeit ist ein Trend.', 'Sustainability is a trend.', 'B1', 6),
  ('00000000-0000-4000-a000-00003284bbf3', 'die Luft', 'الهواء', 'air', 'die', NULL, 'noun', 'Die Luft ist frisch.', 'The air is fresh.', 'A2', 7),
  ('00000000-0000-4000-a000-00003284bbf3', 'das Wasser', 'الماء', 'water', 'das', NULL, 'noun', 'Das Wasser ist sauber.', 'The water is clean.', 'A1', 8),
  ('00000000-0000-4000-a000-00003284bbf3', 'der Beruf', 'المهنة', 'profession', 'der', 'die Berufe', 'noun', 'Was ist dein Beruf?', 'What is your profession?', 'A1', 9),
  ('00000000-0000-4000-a000-00003284bbf3', 'die Firma', 'الشركة', 'company', 'die', 'die Firmen', 'noun', 'Die Firma ist in Berlin.', 'The company is in Berlin.', 'A1', 10),
  ('00000000-0000-4000-a000-00003284bbf3', 'der Kollege', 'الزميل', 'colleague', 'der', 'die Kollegen', 'noun', 'Mein Kollege hilft mir.', 'My colleague helps me.', 'A1', 11),
  ('00000000-0000-4000-a000-00003284bbf3', 'das Büro', 'المكتب', 'office', 'das', 'die Büros', 'noun', 'Das Büro ist im dritten Stock.', 'The office is on the third floor.', 'A1', 12),
  ('00000000-0000-4000-a000-00003284bbf3', 'die Besprechung', 'الاجتماع', 'meeting', 'die', 'die Besprechungen', 'noun', 'Wir haben eine Besprechung.', 'We have a meeting.', 'B1', 13),
  ('00000000-0000-4000-a000-00003284bbf3', 'der Chef', 'المدير', 'boss', 'der', 'die Chefs', 'noun', 'Mein Chef ist freundlich.', 'My boss is friendly.', 'A1', 14),
  ('00000000-0000-4000-a000-00003284bbf3', 'das Gehalt', 'الراتب', 'salary', 'das', 'die Gehälter', 'noun', 'Das Gehalt ist gut.', 'The salary is good.', 'B1', 15),
  ('00000000-0000-4000-a000-00003284bbf3', 'die Stelle', 'الوظيفة', 'position', 'die', 'die Stellen', 'noun', 'Ich suche eine neue Stelle.', 'I am looking for a new position.', 'B1', 16),
  ('00000000-0000-4000-a000-00003284bbf3', 'die Schule', 'المدرسة', 'school', 'die', 'die Schulen', 'noun', 'Die Kinder gehen zur Schule.', 'The children go to school.', 'A1', 17),
  ('00000000-0000-4000-a000-00003284bbf3', 'der Lehrer', 'المعلم', 'teacher', 'der', 'die Lehrer', 'noun', 'Der Lehrer erklärt die Grammatik.', 'The teacher explains the grammar.', 'A1', 18),
  ('00000000-0000-4000-a000-00003284bbf3', 'der Student', 'الطالب', 'student', 'der', 'die Studenten', 'noun', 'Der Student lernt Deutsch.', 'The student learns German.', 'A1', 19),
  ('00000000-0000-4000-a000-00003284bbf3', 'die Universität', 'الجامعة', 'university', 'die', 'die Universitäten', 'noun', 'Die Universität ist alt.', 'The university is old.', 'B1', 20),
  ('00000000-0000-4000-a000-00003284bbf3', 'der Kurs', 'الدورة', 'course', 'der', 'die Kurse', 'noun', 'Der Kurs kostet 200 Euro.', 'The course costs 200 euros.', 'A2', 21),
  ('00000000-0000-4000-a000-00003284bbf3', 'die Prüfung', 'الامتحان', 'exam', 'die', 'die Prüfungen', 'noun', 'Die Prüfung ist schwer.', 'The exam is difficult.', 'B1', 22),
  ('00000000-0000-4000-a000-00003284bbf3', 'das Studium', 'الدراسة الجامعية', 'studies', 'das', NULL, 'noun', 'Mein Studium dauert vier Jahre.', 'My studies take four years.', 'B1', 23),
  ('00000000-0000-4000-a000-00003284bbf3', 'lernen', 'يتعلم', 'to learn', NULL, NULL, 'verb', 'Ich lerne Deutsch.', 'I learn German.', 'A1', 24),
  ('00000000-0000-4000-a000-00003284bbf3', 'die Zeitung', 'الجريدة', 'newspaper', 'die', 'die Zeitungen', 'noun', 'Ich lese die Zeitung.', 'I read the newspaper.', 'A2', 25),
  ('00000000-0000-4000-a000-00003284bbf3', 'das Internet', 'الإنترنت', 'internet', 'das', NULL, 'noun', 'Das Internet ist schnell.', 'The internet is fast.', 'A2', 26),
  ('00000000-0000-4000-a000-00003284bbf3', 'der Artikel', 'المقال', 'article', 'der', 'die Artikel', 'noun', 'Der Artikel ist interessant.', 'The article is interesting.', 'B1', 27),
  ('00000000-0000-4000-a000-00003284bbf3', 'die Nachricht', 'الخبر', 'news', 'die', 'die Nachrichten', 'noun', 'Ich sehe die Nachrichten.', 'I watch the news.', 'A2', 28),
  ('00000000-0000-4000-a000-00003284bbf3', 'das Radio', 'الراديو', 'radio', 'das', 'die Radios', 'noun', 'Ich höre Radio.', 'I listen to the radio.', 'A2', 29),
  ('00000000-0000-4000-a000-00003284bbf3', 'das Fernsehen', 'التلفاز', 'television', 'das', NULL, 'noun', 'Das Fernsehen läuft.', 'The television is on.', 'A2', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00003284bbf3', 'Präsens der regelmäßigen Verben (Present Tense) / المضارع للأفعال المنتظمة', 'In German, regular verbs follow a consistent pattern. The infinitive ends in -en. Remove the -en and add the personal endings: ich -e, du -st, er/sie/es -t, wir -en, ihr -t, sie/Sie -en. For most Arabic speakers, this is easier than Arabic verb conjugation because German has fewer forms.', '[{"rule":"ich: stem + e","note":"Ich lerne, ich wohne, ich arbeite"},{"rule":"du: stem + st","note":"Du lernst, du wohnst, du arbeitest"},{"rule":"er/sie/es: stem + t","note":"Er lernt, sie wohnt, es arbeitet"},{"rule":"wir: stem + en","note":"Wir lernen, wir wohnen, wir arbeiten"},{"rule":"ihr: stem + t","note":"Ihr lernt, ihr wohnt, ihr arbeitet"},{"rule":"sie/Sie: stem + en","note":"Sie lernen, Sie wohnen"}]', '[{"german":"Ich lerne Deutsch.","arabic":"أنا أتعلم الألمانية.","english":"I am learning German."},{"german":"Du wohnst in Berlin.","arabic":"أنت تسكن في برلين.","english":"You live in Berlin."},{"german":"Er arbeitet bei Siemens.","arabic":"هو يعمل في سيمنز.","english":"He works at Siemens."}]', '[{"mistake":"Ich lernen Deutsch","correction":"Ich lerne Deutsch","explanation":"After \"ich\" we use the stem + e, not the infinitive."},{"mistake":"Er lerne Deutsch","correction":"Er lernt Deutsch","explanation":"After \"er/sie/es\" we add -t, not -e."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00003284bbf3', 'multiple_choice', 'What does "die Umwelt" mean?', '["The","A","This","That"]', 'The', 'This is a basic vocabulary item.', 1, 1),
  ('00000000-0000-4000-a000-00003284bbf3', 'fill_gap', 'Complete with the correct form.', '["Option 1","Option 2","Option 3"]', 'Option 1', 'Practice grammar in context.', 1, 2),
  ('00000000-0000-4000-a000-00003284bbf3', 'translation', 'Translate: "I learn German."', '["Ich lerne Deutsch.","Ich lerne Englisch.","Ich lerne Spanisch."]', 'Ich lerne Deutsch.', 'Ich = I, lerne = learn/learning, Deutsch = German.', 2, 3),
  ('00000000-0000-4000-a000-00003284bbf3', 'sentence_order', 'Order the sentence.', '[]', 'Ich lerne Deutsch.', 'Subject + verb + object in German.', 2, 4),
  ('00000000-0000-4000-a000-00003284bbf3', 'matching', 'Match the words with their meanings.', '["Match pairs correctly"]', 'Correct pairs', 'Test your vocabulary knowledge.', 2, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-00003284bbf3', 'multiple_choice', 'What is the main topic of this lesson?', '["Recycling in Germany","Sports","Music","Travel"]', 'Recycling in Germany', 1, 1),
  ('00000000-0000-4000-a000-00003284bbf3', 'true_false', 'This lesson teaches vocabulary about Recycling in Germany.', '["True","False"]', 'True', 1, 2),
  ('00000000-0000-4000-a000-00003284bbf3', 'true_false', 'German word order is always the same as English.', '["True","False"]', 'False', 1, 3),
  ('00000000-0000-4000-a000-00003284bbf3', 'multiple_choice', 'How do you say "please" in German?', '["Danke","Bitte","Tschüss","Hallo"]', 'Bitte', 1, 4),
  ('00000000-0000-4000-a000-00003284bbf3', 'multiple_choice', 'Which article is feminine?', '["der","die","das","den"]', 'die', 1, 5),
  ('00000000-0000-4000-a000-00003284bbf3', 'fill_blank', 'Ich ___ (to be) Student.', '["bin","bist","ist","sind"]', 'bin', 1, 6),
  ('00000000-0000-4000-a000-00003284bbf3', 'multiple_choice', 'What is the correct word order?', '["Ich lerne Deutsch","Ich Deutsch lerne","Lerne ich Deutsch","Deutsch ich lerne"]', 'Ich lerne Deutsch', 1, 7),
  ('00000000-0000-4000-a000-00003284bbf3', 'true_false', 'All German nouns are capitalized.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-00003284bbf3', 'multiple_choice', 'How do you say "thank you" in German?', '["Bitte","Danke","Tschüss","Hallo"]', 'Danke', 1, 9),
  ('00000000-0000-4000-a000-00003284bbf3', 'fill_blank', 'Wo ___ du? (to live)', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 1, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-00003284bbf3', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Umwelt und Nachhaltigkeit', 'formal', false, 1),
  ('00000000-0000-4000-a000-00003284bbf3', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Umwelt und Nachhaltigkeit', 'informal', false, 2),
  ('00000000-0000-4000-a000-00003284bbf3', 'Bitte!', 'Please!', 'من فضلك!', 'Used in Umwelt und Nachhaltigkeit', 'neutral', false, 3),
  ('00000000-0000-4000-a000-00003284bbf3', 'Danke!', 'Thanks!', 'شكراً!', 'Used in Umwelt und Nachhaltigkeit', 'neutral', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-00003284bbf3', 'Hallo', 'Hello', 'Greeting', 'expression', 1),
  ('00000000-0000-4000-a000-00003284bbf3', 'Danke', 'Thanks', 'Politeness', 'expression', 2),
  ('00000000-0000-4000-a000-00003284bbf3', 'Bitte', 'Please', 'Politeness', 'expression', 3),
  ('00000000-0000-4000-a000-00003284bbf3', 'Tschüss', 'Bye', 'Farewell', 'expression', 4);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-00003284bbf3', 'Mülltrennung und Recycling — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, duration_seconds, speaker_count, scenario) values
  ('00000000-0000-4000-a000-00003284bbf3', 'Mülltrennung und Recycling — Hörverständnis', '[Lehrerin]: Guten Morgen! Heute lernen wir Begrüßungen.

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

[Lehrerin]: ممتاز! إلى الغد!', 72, 2, 'Umwelt und Nachhaltigkeit');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-00003284bbf3', 'Speaking: Mülltrennung und Recycling', 'Practice talking about Recycling in Germany. Answer questions and have a simple conversation.', 'Recycling in Germany', ARRAY['Use full sentences','Speak clearly','Don''t worry about mistakes']::text[], ARRAY['die Umwelt','der Klimawandel','die Energie','der Müll','recyceln']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-00003284bbf3', 'Writing: Mülltrennung und Recycling', 'Write a short text about Recycling in Germany. Use at least 5 vocabulary words from this lesson.', ARRAY['Start with a greeting','Use the vocabulary from this lesson','Check your grammar']::text[], ARRAY['die Umwelt','der Klimawandel','die Energie']::text[], '["Sentence structure","Vocabulary usage"]', 50, 150, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00003284bbf3', 'Mülltrennung und Recycling — Roleplay', 'Recycling in Germany', 'Student', 'Teacher', 'Practice conversation about Recycling in Germany', 'Hallo! Lass uns über dieses Thema sprechen.', 'intermediate', 1, ARRAY['die Umwelt','der Klimawandel','die Energie','der Müll','recyceln','die Nachhaltigkeit','die Luft','das Wasser']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00003284bbf3', 'Mülltrennung und Recycling — Advanced Roleplay', 'Recycling in Germany', 'Customer', 'Assistant', 'Extended conversation about Recycling in Germany', 'Guten Tag! Wie kann ich Ihnen helfen?', 'intermediate', 2, ARRAY['die Umwelt','der Klimawandel','die Energie','der Müll','recyceln','die Nachhaltigkeit','die Luft','das Wasser']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-00003284bbf3', 'Mülltrennung und Recycling — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Mülltrennung und Recycling".', 'Creative practice for Recycling in Germany', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-00003284bbf3', 'Homework: Mülltrennung und Recycling', 'Complete these tasks to reinforce "Mülltrennung und Recycling".', 'mixed', '[{"description":"Review all vocabulary from this lesson"},{"description":"Write 5 sentences using the grammar structure"},{"description":"Practice the dialogue aloud"}]', 35, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-00003284bbf3', 'In this lesson you learned about Recycling in Germany. You practiced vocabulary related to environment and grammar structure present_tense.', '["Mastered vocabulary about Recycling in Germany","Applied present_tense correctly","Read and understood a text about Recycling in Germany","Practiced speaking about Recycling in Germany"]', '[{"title":"Mülltrennung und Recycling Review","summary":"present_tense — the main grammar focus of this lesson."}]', ARRAY['Recycling in Germany core vocabulary','environment key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)','Verb is always in second position']::text[], ARRAY['Practice 15-20 minutes daily','Use new vocabulary in real sentences','Speak out loud to improve pronunciation']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00003284bbf3', 'translation', 'Translate to German: "This is a translation exercise."', '[]', 'Das ist eine Übersetzungsübung.', 'Use "das ist" for "this is"', 1, 40);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00003284bbf3', 'Culture: Recycling in Germany in German-Speaking Countries', 'Learn how Recycling in Germany is approached in German culture.

تعلم كيف يتم التعامل مع Recycling in Germany في الثقافة الألمانية.', '["Tip: Be direct and polite","Tip: Use formal language with strangers","Tip: Respect punctuality"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00003284bbf3', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Common error for Arabic speakers","correction":"Correct version","explanation":"Explanation of the error"}]', 30);

  -- Lesson 3: Infinitivsätze: um...zu, damit (L-B1-05-03)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-00003284bbf2', '00000000-0000-4000-a000-000039c2eae3', 'Infinitivsätze: um...zu, damit', 'Learn infinitive clauses for expressing purpose.', 'Infinitive Clauses', 'grammar', '["Understand and use vocabulary related to Infinitive Clauses","Apply present_tense correctly","Read and comprehend a text about Infinitive Clauses","Listen and understand a dialogue about Infinitive Clauses","Speak about Infinitive Clauses in simple sentences","Write a short text about Infinitive Clauses"]', 55, 3, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-00003284bbf2', 'die Umwelt', 'البيئة', 'environment', 'die', NULL, 'noun', 'Wir müssen die Umwelt schützen.', 'We must protect the environment.', 'B1', 1),
  ('00000000-0000-4000-a000-00003284bbf2', 'der Klimawandel', 'تغير المناخ', 'climate change', 'der', NULL, 'noun', 'Der Klimawandel ist ein globales Problem.', 'Climate change is a global problem.', 'B1', 2),
  ('00000000-0000-4000-a000-00003284bbf2', 'die Energie', 'الطاقة', 'energy', 'die', NULL, 'noun', 'Erneuerbare Energie ist wichtig.', 'Renewable energy is important.', 'B1', 3),
  ('00000000-0000-4000-a000-00003284bbf2', 'der Müll', 'النفايات', 'waste', 'der', NULL, 'noun', 'In Deutschland trennt man den Müll.', 'In Germany, waste is separated.', 'B1', 4),
  ('00000000-0000-4000-a000-00003284bbf2', 'recyceln', 'يعيد التدوير', 'to recycle', NULL, NULL, 'verb', 'Wir recyceln Papier und Plastik.', 'We recycle paper and plastic.', 'B1', 5),
  ('00000000-0000-4000-a000-00003284bbf2', 'die Nachhaltigkeit', 'الاستدامة', 'sustainability', 'die', NULL, 'noun', 'Nachhaltigkeit ist ein Trend.', 'Sustainability is a trend.', 'B1', 6),
  ('00000000-0000-4000-a000-00003284bbf2', 'die Luft', 'الهواء', 'air', 'die', NULL, 'noun', 'Die Luft ist frisch.', 'The air is fresh.', 'A2', 7),
  ('00000000-0000-4000-a000-00003284bbf2', 'das Wasser', 'الماء', 'water', 'das', NULL, 'noun', 'Das Wasser ist sauber.', 'The water is clean.', 'A1', 8),
  ('00000000-0000-4000-a000-00003284bbf2', 'der Beruf', 'المهنة', 'profession', 'der', 'die Berufe', 'noun', 'Was ist dein Beruf?', 'What is your profession?', 'A1', 9),
  ('00000000-0000-4000-a000-00003284bbf2', 'die Firma', 'الشركة', 'company', 'die', 'die Firmen', 'noun', 'Die Firma ist in Berlin.', 'The company is in Berlin.', 'A1', 10),
  ('00000000-0000-4000-a000-00003284bbf2', 'der Kollege', 'الزميل', 'colleague', 'der', 'die Kollegen', 'noun', 'Mein Kollege hilft mir.', 'My colleague helps me.', 'A1', 11),
  ('00000000-0000-4000-a000-00003284bbf2', 'das Büro', 'المكتب', 'office', 'das', 'die Büros', 'noun', 'Das Büro ist im dritten Stock.', 'The office is on the third floor.', 'A1', 12),
  ('00000000-0000-4000-a000-00003284bbf2', 'die Besprechung', 'الاجتماع', 'meeting', 'die', 'die Besprechungen', 'noun', 'Wir haben eine Besprechung.', 'We have a meeting.', 'B1', 13),
  ('00000000-0000-4000-a000-00003284bbf2', 'der Chef', 'المدير', 'boss', 'der', 'die Chefs', 'noun', 'Mein Chef ist freundlich.', 'My boss is friendly.', 'A1', 14),
  ('00000000-0000-4000-a000-00003284bbf2', 'das Gehalt', 'الراتب', 'salary', 'das', 'die Gehälter', 'noun', 'Das Gehalt ist gut.', 'The salary is good.', 'B1', 15),
  ('00000000-0000-4000-a000-00003284bbf2', 'die Stelle', 'الوظيفة', 'position', 'die', 'die Stellen', 'noun', 'Ich suche eine neue Stelle.', 'I am looking for a new position.', 'B1', 16),
  ('00000000-0000-4000-a000-00003284bbf2', 'die Schule', 'المدرسة', 'school', 'die', 'die Schulen', 'noun', 'Die Kinder gehen zur Schule.', 'The children go to school.', 'A1', 17),
  ('00000000-0000-4000-a000-00003284bbf2', 'der Lehrer', 'المعلم', 'teacher', 'der', 'die Lehrer', 'noun', 'Der Lehrer erklärt die Grammatik.', 'The teacher explains the grammar.', 'A1', 18),
  ('00000000-0000-4000-a000-00003284bbf2', 'der Student', 'الطالب', 'student', 'der', 'die Studenten', 'noun', 'Der Student lernt Deutsch.', 'The student learns German.', 'A1', 19),
  ('00000000-0000-4000-a000-00003284bbf2', 'die Universität', 'الجامعة', 'university', 'die', 'die Universitäten', 'noun', 'Die Universität ist alt.', 'The university is old.', 'B1', 20),
  ('00000000-0000-4000-a000-00003284bbf2', 'der Kurs', 'الدورة', 'course', 'der', 'die Kurse', 'noun', 'Der Kurs kostet 200 Euro.', 'The course costs 200 euros.', 'A2', 21),
  ('00000000-0000-4000-a000-00003284bbf2', 'die Prüfung', 'الامتحان', 'exam', 'die', 'die Prüfungen', 'noun', 'Die Prüfung ist schwer.', 'The exam is difficult.', 'B1', 22),
  ('00000000-0000-4000-a000-00003284bbf2', 'das Studium', 'الدراسة الجامعية', 'studies', 'das', NULL, 'noun', 'Mein Studium dauert vier Jahre.', 'My studies take four years.', 'B1', 23),
  ('00000000-0000-4000-a000-00003284bbf2', 'lernen', 'يتعلم', 'to learn', NULL, NULL, 'verb', 'Ich lerne Deutsch.', 'I learn German.', 'A1', 24),
  ('00000000-0000-4000-a000-00003284bbf2', 'die Zeitung', 'الجريدة', 'newspaper', 'die', 'die Zeitungen', 'noun', 'Ich lese die Zeitung.', 'I read the newspaper.', 'A2', 25),
  ('00000000-0000-4000-a000-00003284bbf2', 'das Internet', 'الإنترنت', 'internet', 'das', NULL, 'noun', 'Das Internet ist schnell.', 'The internet is fast.', 'A2', 26),
  ('00000000-0000-4000-a000-00003284bbf2', 'der Artikel', 'المقال', 'article', 'der', 'die Artikel', 'noun', 'Der Artikel ist interessant.', 'The article is interesting.', 'B1', 27),
  ('00000000-0000-4000-a000-00003284bbf2', 'die Nachricht', 'الخبر', 'news', 'die', 'die Nachrichten', 'noun', 'Ich sehe die Nachrichten.', 'I watch the news.', 'A2', 28),
  ('00000000-0000-4000-a000-00003284bbf2', 'das Radio', 'الراديو', 'radio', 'das', 'die Radios', 'noun', 'Ich höre Radio.', 'I listen to the radio.', 'A2', 29),
  ('00000000-0000-4000-a000-00003284bbf2', 'das Fernsehen', 'التلفاز', 'television', 'das', NULL, 'noun', 'Das Fernsehen läuft.', 'The television is on.', 'A2', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00003284bbf2', 'Präsens der regelmäßigen Verben (Present Tense) / المضارع للأفعال المنتظمة', 'In German, regular verbs follow a consistent pattern. The infinitive ends in -en. Remove the -en and add the personal endings: ich -e, du -st, er/sie/es -t, wir -en, ihr -t, sie/Sie -en. For most Arabic speakers, this is easier than Arabic verb conjugation because German has fewer forms.', '[{"rule":"ich: stem + e","note":"Ich lerne, ich wohne, ich arbeite"},{"rule":"du: stem + st","note":"Du lernst, du wohnst, du arbeitest"},{"rule":"er/sie/es: stem + t","note":"Er lernt, sie wohnt, es arbeitet"},{"rule":"wir: stem + en","note":"Wir lernen, wir wohnen, wir arbeiten"},{"rule":"ihr: stem + t","note":"Ihr lernt, ihr wohnt, ihr arbeitet"},{"rule":"sie/Sie: stem + en","note":"Sie lernen, Sie wohnen"}]', '[{"german":"Ich lerne Deutsch.","arabic":"أنا أتعلم الألمانية.","english":"I am learning German."},{"german":"Du wohnst in Berlin.","arabic":"أنت تسكن في برلين.","english":"You live in Berlin."},{"german":"Er arbeitet bei Siemens.","arabic":"هو يعمل في سيمنز.","english":"He works at Siemens."}]', '[{"mistake":"Ich lernen Deutsch","correction":"Ich lerne Deutsch","explanation":"After \"ich\" we use the stem + e, not the infinitive."},{"mistake":"Er lerne Deutsch","correction":"Er lernt Deutsch","explanation":"After \"er/sie/es\" we add -t, not -e."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00003284bbf2', 'multiple_choice', 'What does "die Umwelt" mean?', '["The","A","This","That"]', 'The', 'This is a basic vocabulary item.', 1, 1),
  ('00000000-0000-4000-a000-00003284bbf2', 'fill_gap', 'Complete with the correct form.', '["Option 1","Option 2","Option 3"]', 'Option 1', 'Practice grammar in context.', 1, 2),
  ('00000000-0000-4000-a000-00003284bbf2', 'translation', 'Translate: "I learn German."', '["Ich lerne Deutsch.","Ich lerne Englisch.","Ich lerne Spanisch."]', 'Ich lerne Deutsch.', 'Ich = I, lerne = learn/learning, Deutsch = German.', 2, 3),
  ('00000000-0000-4000-a000-00003284bbf2', 'sentence_order', 'Order the sentence.', '[]', 'Ich lerne Deutsch.', 'Subject + verb + object in German.', 2, 4),
  ('00000000-0000-4000-a000-00003284bbf2', 'matching', 'Match the words with their meanings.', '["Match pairs correctly"]', 'Correct pairs', 'Test your vocabulary knowledge.', 2, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-00003284bbf2', 'multiple_choice', 'What is the main topic of this lesson?', '["Infinitive Clauses","Sports","Music","Travel"]', 'Infinitive Clauses', 1, 1),
  ('00000000-0000-4000-a000-00003284bbf2', 'true_false', 'This lesson teaches vocabulary about Infinitive Clauses.', '["True","False"]', 'True', 1, 2),
  ('00000000-0000-4000-a000-00003284bbf2', 'true_false', 'German word order is always the same as English.', '["True","False"]', 'False', 1, 3),
  ('00000000-0000-4000-a000-00003284bbf2', 'multiple_choice', 'How do you say "please" in German?', '["Danke","Bitte","Tschüss","Hallo"]', 'Bitte', 1, 4),
  ('00000000-0000-4000-a000-00003284bbf2', 'multiple_choice', 'Which article is feminine?', '["der","die","das","den"]', 'die', 1, 5),
  ('00000000-0000-4000-a000-00003284bbf2', 'fill_blank', 'Ich ___ (to be) Student.', '["bin","bist","ist","sind"]', 'bin', 1, 6),
  ('00000000-0000-4000-a000-00003284bbf2', 'multiple_choice', 'What is the correct word order?', '["Ich lerne Deutsch","Ich Deutsch lerne","Lerne ich Deutsch","Deutsch ich lerne"]', 'Ich lerne Deutsch', 1, 7),
  ('00000000-0000-4000-a000-00003284bbf2', 'true_false', 'All German nouns are capitalized.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-00003284bbf2', 'multiple_choice', 'How do you say "thank you" in German?', '["Bitte","Danke","Tschüss","Hallo"]', 'Danke', 1, 9),
  ('00000000-0000-4000-a000-00003284bbf2', 'fill_blank', 'Wo ___ du? (to live)', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 1, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-00003284bbf2', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Umwelt und Nachhaltigkeit', 'formal', false, 1),
  ('00000000-0000-4000-a000-00003284bbf2', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Umwelt und Nachhaltigkeit', 'informal', false, 2),
  ('00000000-0000-4000-a000-00003284bbf2', 'Bitte!', 'Please!', 'من فضلك!', 'Used in Umwelt und Nachhaltigkeit', 'neutral', false, 3),
  ('00000000-0000-4000-a000-00003284bbf2', 'Danke!', 'Thanks!', 'شكراً!', 'Used in Umwelt und Nachhaltigkeit', 'neutral', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-00003284bbf2', 'Hallo', 'Hello', 'Greeting', 'expression', 1),
  ('00000000-0000-4000-a000-00003284bbf2', 'Danke', 'Thanks', 'Politeness', 'expression', 2),
  ('00000000-0000-4000-a000-00003284bbf2', 'Bitte', 'Please', 'Politeness', 'expression', 3),
  ('00000000-0000-4000-a000-00003284bbf2', 'Tschüss', 'Bye', 'Farewell', 'expression', 4);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-00003284bbf2', 'Infinitivsätze: um...zu, damit — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, duration_seconds, speaker_count, scenario) values
  ('00000000-0000-4000-a000-00003284bbf2', 'Infinitivsätze: um...zu, damit — Hörverständnis', '[Lehrerin]: Guten Morgen! Heute lernen wir Begrüßungen.

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

[Lehrerin]: ممتاز! إلى الغد!', 72, 2, 'Umwelt und Nachhaltigkeit');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-00003284bbf2', 'Speaking: Infinitivsätze: um...zu, damit', 'Practice talking about Infinitive Clauses. Answer questions and have a simple conversation.', 'Infinitive Clauses', ARRAY['Use full sentences','Speak clearly','Don''t worry about mistakes']::text[], ARRAY['die Umwelt','der Klimawandel','die Energie','der Müll','recyceln']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-00003284bbf2', 'Writing: Infinitivsätze: um...zu, damit', 'Write a short text about Infinitive Clauses. Use at least 5 vocabulary words from this lesson.', ARRAY['Start with a greeting','Use the vocabulary from this lesson','Check your grammar']::text[], ARRAY['die Umwelt','der Klimawandel','die Energie']::text[], '["Sentence structure","Vocabulary usage"]', 50, 150, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00003284bbf2', 'Infinitivsätze: um...zu, damit — Roleplay', 'Infinitive Clauses', 'Student', 'Teacher', 'Practice conversation about Infinitive Clauses', 'Hallo! Lass uns über dieses Thema sprechen.', 'intermediate', 1, ARRAY['die Umwelt','der Klimawandel','die Energie','der Müll','recyceln','die Nachhaltigkeit','die Luft','das Wasser']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00003284bbf2', 'Infinitivsätze: um...zu, damit — Advanced Roleplay', 'Infinitive Clauses', 'Customer', 'Assistant', 'Extended conversation about Infinitive Clauses', 'Guten Tag! Wie kann ich Ihnen helfen?', 'intermediate', 2, ARRAY['die Umwelt','der Klimawandel','die Energie','der Müll','recyceln','die Nachhaltigkeit','die Luft','das Wasser']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-00003284bbf2', 'Infinitivsätze: um...zu, damit — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Infinitivsätze: um...zu, damit".', 'Creative practice for Infinitive Clauses', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-00003284bbf2', 'Homework: Infinitivsätze: um...zu, damit', 'Complete these tasks to reinforce "Infinitivsätze: um...zu, damit".', 'mixed', '[{"description":"Review all vocabulary from this lesson"},{"description":"Write 5 sentences using the grammar structure"},{"description":"Practice the dialogue aloud"}]', 35, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-00003284bbf2', 'In this lesson you learned about Infinitive Clauses. You practiced vocabulary related to environment and grammar structure present_tense.', '["Mastered vocabulary about Infinitive Clauses","Applied present_tense correctly","Read and understood a text about Infinitive Clauses","Practiced speaking about Infinitive Clauses"]', '[{"title":"Infinitivsätze: um...zu, damit Review","summary":"present_tense — the main grammar focus of this lesson."}]', ARRAY['Infinitive Clauses core vocabulary','environment key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)','Verb is always in second position']::text[], ARRAY['Practice 15-20 minutes daily','Use new vocabulary in real sentences','Speak out loud to improve pronunciation']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00003284bbf2', 'translation', 'Translate to German: "This is a translation exercise."', '[]', 'Das ist eine Übersetzungsübung.', 'Use "das ist" for "this is"', 1, 40);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00003284bbf2', 'Culture: Infinitive Clauses in German-Speaking Countries', 'Learn how Infinitive Clauses is approached in German culture.

تعلم كيف يتم التعامل مع Infinitive Clauses في الثقافة الألمانية.', '["Tip: Be direct and polite","Tip: Use formal language with strangers","Tip: Respect punctuality"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00003284bbf2', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Common error for Arabic speakers","correction":"Correct version","explanation":"Explanation of the error"}]', 30);

  -- Lesson 4: Unsere Umwelt schützen (L-B1-05-04)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-00003284bbf1', '00000000-0000-4000-a000-000039c2eae3', 'Unsere Umwelt schützen', 'Discuss ways to protect the environment.', 'Protecting the Environment', 'speaking', '["Understand and use vocabulary related to Protecting the Environment","Apply present_tense correctly","Read and comprehend a text about Protecting the Environment","Listen and understand a dialogue about Protecting the Environment","Speak about Protecting the Environment in simple sentences","Write a short text about Protecting the Environment"]', 45, 4, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-00003284bbf1', 'die Umwelt', 'البيئة', 'environment', 'die', NULL, 'noun', 'Wir müssen die Umwelt schützen.', 'We must protect the environment.', 'B1', 1),
  ('00000000-0000-4000-a000-00003284bbf1', 'der Klimawandel', 'تغير المناخ', 'climate change', 'der', NULL, 'noun', 'Der Klimawandel ist ein globales Problem.', 'Climate change is a global problem.', 'B1', 2),
  ('00000000-0000-4000-a000-00003284bbf1', 'die Energie', 'الطاقة', 'energy', 'die', NULL, 'noun', 'Erneuerbare Energie ist wichtig.', 'Renewable energy is important.', 'B1', 3),
  ('00000000-0000-4000-a000-00003284bbf1', 'der Müll', 'النفايات', 'waste', 'der', NULL, 'noun', 'In Deutschland trennt man den Müll.', 'In Germany, waste is separated.', 'B1', 4),
  ('00000000-0000-4000-a000-00003284bbf1', 'recyceln', 'يعيد التدوير', 'to recycle', NULL, NULL, 'verb', 'Wir recyceln Papier und Plastik.', 'We recycle paper and plastic.', 'B1', 5),
  ('00000000-0000-4000-a000-00003284bbf1', 'die Nachhaltigkeit', 'الاستدامة', 'sustainability', 'die', NULL, 'noun', 'Nachhaltigkeit ist ein Trend.', 'Sustainability is a trend.', 'B1', 6),
  ('00000000-0000-4000-a000-00003284bbf1', 'die Luft', 'الهواء', 'air', 'die', NULL, 'noun', 'Die Luft ist frisch.', 'The air is fresh.', 'A2', 7),
  ('00000000-0000-4000-a000-00003284bbf1', 'das Wasser', 'الماء', 'water', 'das', NULL, 'noun', 'Das Wasser ist sauber.', 'The water is clean.', 'A1', 8),
  ('00000000-0000-4000-a000-00003284bbf1', 'der Beruf', 'المهنة', 'profession', 'der', 'die Berufe', 'noun', 'Was ist dein Beruf?', 'What is your profession?', 'A1', 9),
  ('00000000-0000-4000-a000-00003284bbf1', 'die Firma', 'الشركة', 'company', 'die', 'die Firmen', 'noun', 'Die Firma ist in Berlin.', 'The company is in Berlin.', 'A1', 10),
  ('00000000-0000-4000-a000-00003284bbf1', 'der Kollege', 'الزميل', 'colleague', 'der', 'die Kollegen', 'noun', 'Mein Kollege hilft mir.', 'My colleague helps me.', 'A1', 11),
  ('00000000-0000-4000-a000-00003284bbf1', 'das Büro', 'المكتب', 'office', 'das', 'die Büros', 'noun', 'Das Büro ist im dritten Stock.', 'The office is on the third floor.', 'A1', 12),
  ('00000000-0000-4000-a000-00003284bbf1', 'die Besprechung', 'الاجتماع', 'meeting', 'die', 'die Besprechungen', 'noun', 'Wir haben eine Besprechung.', 'We have a meeting.', 'B1', 13),
  ('00000000-0000-4000-a000-00003284bbf1', 'der Chef', 'المدير', 'boss', 'der', 'die Chefs', 'noun', 'Mein Chef ist freundlich.', 'My boss is friendly.', 'A1', 14),
  ('00000000-0000-4000-a000-00003284bbf1', 'das Gehalt', 'الراتب', 'salary', 'das', 'die Gehälter', 'noun', 'Das Gehalt ist gut.', 'The salary is good.', 'B1', 15),
  ('00000000-0000-4000-a000-00003284bbf1', 'die Stelle', 'الوظيفة', 'position', 'die', 'die Stellen', 'noun', 'Ich suche eine neue Stelle.', 'I am looking for a new position.', 'B1', 16),
  ('00000000-0000-4000-a000-00003284bbf1', 'die Schule', 'المدرسة', 'school', 'die', 'die Schulen', 'noun', 'Die Kinder gehen zur Schule.', 'The children go to school.', 'A1', 17),
  ('00000000-0000-4000-a000-00003284bbf1', 'der Lehrer', 'المعلم', 'teacher', 'der', 'die Lehrer', 'noun', 'Der Lehrer erklärt die Grammatik.', 'The teacher explains the grammar.', 'A1', 18),
  ('00000000-0000-4000-a000-00003284bbf1', 'der Student', 'الطالب', 'student', 'der', 'die Studenten', 'noun', 'Der Student lernt Deutsch.', 'The student learns German.', 'A1', 19),
  ('00000000-0000-4000-a000-00003284bbf1', 'die Universität', 'الجامعة', 'university', 'die', 'die Universitäten', 'noun', 'Die Universität ist alt.', 'The university is old.', 'B1', 20),
  ('00000000-0000-4000-a000-00003284bbf1', 'der Kurs', 'الدورة', 'course', 'der', 'die Kurse', 'noun', 'Der Kurs kostet 200 Euro.', 'The course costs 200 euros.', 'A2', 21),
  ('00000000-0000-4000-a000-00003284bbf1', 'die Prüfung', 'الامتحان', 'exam', 'die', 'die Prüfungen', 'noun', 'Die Prüfung ist schwer.', 'The exam is difficult.', 'B1', 22),
  ('00000000-0000-4000-a000-00003284bbf1', 'das Studium', 'الدراسة الجامعية', 'studies', 'das', NULL, 'noun', 'Mein Studium dauert vier Jahre.', 'My studies take four years.', 'B1', 23),
  ('00000000-0000-4000-a000-00003284bbf1', 'lernen', 'يتعلم', 'to learn', NULL, NULL, 'verb', 'Ich lerne Deutsch.', 'I learn German.', 'A1', 24),
  ('00000000-0000-4000-a000-00003284bbf1', 'die Zeitung', 'الجريدة', 'newspaper', 'die', 'die Zeitungen', 'noun', 'Ich lese die Zeitung.', 'I read the newspaper.', 'A2', 25),
  ('00000000-0000-4000-a000-00003284bbf1', 'das Internet', 'الإنترنت', 'internet', 'das', NULL, 'noun', 'Das Internet ist schnell.', 'The internet is fast.', 'A2', 26),
  ('00000000-0000-4000-a000-00003284bbf1', 'der Artikel', 'المقال', 'article', 'der', 'die Artikel', 'noun', 'Der Artikel ist interessant.', 'The article is interesting.', 'B1', 27),
  ('00000000-0000-4000-a000-00003284bbf1', 'die Nachricht', 'الخبر', 'news', 'die', 'die Nachrichten', 'noun', 'Ich sehe die Nachrichten.', 'I watch the news.', 'A2', 28),
  ('00000000-0000-4000-a000-00003284bbf1', 'das Radio', 'الراديو', 'radio', 'das', 'die Radios', 'noun', 'Ich höre Radio.', 'I listen to the radio.', 'A2', 29),
  ('00000000-0000-4000-a000-00003284bbf1', 'das Fernsehen', 'التلفاز', 'television', 'das', NULL, 'noun', 'Das Fernsehen läuft.', 'The television is on.', 'A2', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00003284bbf1', 'Präsens der regelmäßigen Verben (Present Tense) / المضارع للأفعال المنتظمة', 'In German, regular verbs follow a consistent pattern. The infinitive ends in -en. Remove the -en and add the personal endings: ich -e, du -st, er/sie/es -t, wir -en, ihr -t, sie/Sie -en. For most Arabic speakers, this is easier than Arabic verb conjugation because German has fewer forms.', '[{"rule":"ich: stem + e","note":"Ich lerne, ich wohne, ich arbeite"},{"rule":"du: stem + st","note":"Du lernst, du wohnst, du arbeitest"},{"rule":"er/sie/es: stem + t","note":"Er lernt, sie wohnt, es arbeitet"},{"rule":"wir: stem + en","note":"Wir lernen, wir wohnen, wir arbeiten"},{"rule":"ihr: stem + t","note":"Ihr lernt, ihr wohnt, ihr arbeitet"},{"rule":"sie/Sie: stem + en","note":"Sie lernen, Sie wohnen"}]', '[{"german":"Ich lerne Deutsch.","arabic":"أنا أتعلم الألمانية.","english":"I am learning German."},{"german":"Du wohnst in Berlin.","arabic":"أنت تسكن في برلين.","english":"You live in Berlin."},{"german":"Er arbeitet bei Siemens.","arabic":"هو يعمل في سيمنز.","english":"He works at Siemens."}]', '[{"mistake":"Ich lernen Deutsch","correction":"Ich lerne Deutsch","explanation":"After \"ich\" we use the stem + e, not the infinitive."},{"mistake":"Er lerne Deutsch","correction":"Er lernt Deutsch","explanation":"After \"er/sie/es\" we add -t, not -e."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00003284bbf1', 'multiple_choice', 'What does "die Umwelt" mean?', '["The","A","This","That"]', 'The', 'This is a basic vocabulary item.', 1, 1),
  ('00000000-0000-4000-a000-00003284bbf1', 'fill_gap', 'Complete with the correct form.', '["Option 1","Option 2","Option 3"]', 'Option 1', 'Practice grammar in context.', 1, 2),
  ('00000000-0000-4000-a000-00003284bbf1', 'translation', 'Translate: "I learn German."', '["Ich lerne Deutsch.","Ich lerne Englisch.","Ich lerne Spanisch."]', 'Ich lerne Deutsch.', 'Ich = I, lerne = learn/learning, Deutsch = German.', 2, 3),
  ('00000000-0000-4000-a000-00003284bbf1', 'sentence_order', 'Order the sentence.', '[]', 'Ich lerne Deutsch.', 'Subject + verb + object in German.', 2, 4),
  ('00000000-0000-4000-a000-00003284bbf1', 'matching', 'Match the words with their meanings.', '["Match pairs correctly"]', 'Correct pairs', 'Test your vocabulary knowledge.', 2, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-00003284bbf1', 'multiple_choice', 'What is the main topic of this lesson?', '["Protecting the Environment","Sports","Music","Travel"]', 'Protecting the Environment', 1, 1),
  ('00000000-0000-4000-a000-00003284bbf1', 'true_false', 'This lesson teaches vocabulary about Protecting the Environment.', '["True","False"]', 'True', 1, 2),
  ('00000000-0000-4000-a000-00003284bbf1', 'true_false', 'German word order is always the same as English.', '["True","False"]', 'False', 1, 3),
  ('00000000-0000-4000-a000-00003284bbf1', 'multiple_choice', 'How do you say "please" in German?', '["Danke","Bitte","Tschüss","Hallo"]', 'Bitte', 1, 4),
  ('00000000-0000-4000-a000-00003284bbf1', 'multiple_choice', 'Which article is feminine?', '["der","die","das","den"]', 'die', 1, 5),
  ('00000000-0000-4000-a000-00003284bbf1', 'fill_blank', 'Ich ___ (to be) Student.', '["bin","bist","ist","sind"]', 'bin', 1, 6),
  ('00000000-0000-4000-a000-00003284bbf1', 'multiple_choice', 'What is the correct word order?', '["Ich lerne Deutsch","Ich Deutsch lerne","Lerne ich Deutsch","Deutsch ich lerne"]', 'Ich lerne Deutsch', 1, 7),
  ('00000000-0000-4000-a000-00003284bbf1', 'true_false', 'All German nouns are capitalized.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-00003284bbf1', 'multiple_choice', 'How do you say "thank you" in German?', '["Bitte","Danke","Tschüss","Hallo"]', 'Danke', 1, 9),
  ('00000000-0000-4000-a000-00003284bbf1', 'fill_blank', 'Wo ___ du? (to live)', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 1, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-00003284bbf1', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Umwelt und Nachhaltigkeit', 'formal', false, 1),
  ('00000000-0000-4000-a000-00003284bbf1', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Umwelt und Nachhaltigkeit', 'informal', false, 2),
  ('00000000-0000-4000-a000-00003284bbf1', 'Bitte!', 'Please!', 'من فضلك!', 'Used in Umwelt und Nachhaltigkeit', 'neutral', false, 3),
  ('00000000-0000-4000-a000-00003284bbf1', 'Danke!', 'Thanks!', 'شكراً!', 'Used in Umwelt und Nachhaltigkeit', 'neutral', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-00003284bbf1', 'Hallo', 'Hello', 'Greeting', 'expression', 1),
  ('00000000-0000-4000-a000-00003284bbf1', 'Danke', 'Thanks', 'Politeness', 'expression', 2),
  ('00000000-0000-4000-a000-00003284bbf1', 'Bitte', 'Please', 'Politeness', 'expression', 3),
  ('00000000-0000-4000-a000-00003284bbf1', 'Tschüss', 'Bye', 'Farewell', 'expression', 4);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-00003284bbf1', 'Unsere Umwelt schützen — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, duration_seconds, speaker_count, scenario) values
  ('00000000-0000-4000-a000-00003284bbf1', 'Unsere Umwelt schützen — Hörverständnis', '[Lehrerin]: Guten Morgen! Heute lernen wir Begrüßungen.

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

[Lehrerin]: ممتاز! إلى الغد!', 72, 2, 'Umwelt und Nachhaltigkeit');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-00003284bbf1', 'Speaking: Unsere Umwelt schützen', 'Practice talking about Protecting the Environment. Answer questions and have a simple conversation.', 'Protecting the Environment', ARRAY['Use full sentences','Speak clearly','Don''t worry about mistakes']::text[], ARRAY['die Umwelt','der Klimawandel','die Energie','der Müll','recyceln']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-00003284bbf1', 'Writing: Unsere Umwelt schützen', 'Write a short text about Protecting the Environment. Use at least 5 vocabulary words from this lesson.', ARRAY['Start with a greeting','Use the vocabulary from this lesson','Check your grammar']::text[], ARRAY['die Umwelt','der Klimawandel','die Energie']::text[], '["Sentence structure","Vocabulary usage"]', 50, 150, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00003284bbf1', 'Unsere Umwelt schützen — Roleplay', 'Protecting the Environment', 'Student', 'Teacher', 'Practice conversation about Protecting the Environment', 'Hallo! Lass uns über dieses Thema sprechen.', 'intermediate', 1, ARRAY['die Umwelt','der Klimawandel','die Energie','der Müll','recyceln','die Nachhaltigkeit','die Luft','das Wasser']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00003284bbf1', 'Unsere Umwelt schützen — Advanced Roleplay', 'Protecting the Environment', 'Customer', 'Assistant', 'Extended conversation about Protecting the Environment', 'Guten Tag! Wie kann ich Ihnen helfen?', 'intermediate', 2, ARRAY['die Umwelt','der Klimawandel','die Energie','der Müll','recyceln','die Nachhaltigkeit','die Luft','das Wasser']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-00003284bbf1', 'Unsere Umwelt schützen — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Unsere Umwelt schützen".', 'Creative practice for Protecting the Environment', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-00003284bbf1', 'Homework: Unsere Umwelt schützen', 'Complete these tasks to reinforce "Unsere Umwelt schützen".', 'mixed', '[{"description":"Review all vocabulary from this lesson"},{"description":"Write 5 sentences using the grammar structure"},{"description":"Practice the dialogue aloud"}]', 35, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-00003284bbf1', 'In this lesson you learned about Protecting the Environment. You practiced vocabulary related to environment and grammar structure present_tense.', '["Mastered vocabulary about Protecting the Environment","Applied present_tense correctly","Read and understood a text about Protecting the Environment","Practiced speaking about Protecting the Environment"]', '[{"title":"Unsere Umwelt schützen Review","summary":"present_tense — the main grammar focus of this lesson."}]', ARRAY['Protecting the Environment core vocabulary','environment key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)','Verb is always in second position']::text[], ARRAY['Practice 15-20 minutes daily','Use new vocabulary in real sentences','Speak out loud to improve pronunciation']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00003284bbf1', 'translation', 'Translate to German: "This is a translation exercise."', '[]', 'Das ist eine Übersetzungsübung.', 'Use "das ist" for "this is"', 1, 40);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00003284bbf1', 'Culture: Protecting the Environment in German-Speaking Countries', 'Learn how Protecting the Environment is approached in German culture.

تعلم كيف يتم التعامل مع Protecting the Environment في الثقافة الألمانية.', '["Tip: Be direct and polite","Tip: Use formal language with strangers","Tip: Respect punctuality"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00003284bbf1', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Common error for Arabic speakers","correction":"Correct version","explanation":"Explanation of the error"}]', 30);

  -- Lesson 5: Test: Umwelt und Nachhaltigkeit (L-B1-05-05)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-00003284bbf0', '00000000-0000-4000-a000-000039c2eae3', 'Test: Umwelt und Nachhaltigkeit', 'Module test on environment and sustainability.', 'Module Test', 'test', '["Understand and use vocabulary related to Module Test","Apply present_tense correctly","Read and comprehend a text about Module Test","Listen and understand a dialogue about Module Test","Speak about Module Test in simple sentences","Write a short text about Module Test"]', 40, 5, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-00003284bbf0', 'die Umwelt', 'البيئة', 'environment', 'die', NULL, 'noun', 'Wir müssen die Umwelt schützen.', 'We must protect the environment.', 'B1', 1),
  ('00000000-0000-4000-a000-00003284bbf0', 'der Klimawandel', 'تغير المناخ', 'climate change', 'der', NULL, 'noun', 'Der Klimawandel ist ein globales Problem.', 'Climate change is a global problem.', 'B1', 2),
  ('00000000-0000-4000-a000-00003284bbf0', 'die Energie', 'الطاقة', 'energy', 'die', NULL, 'noun', 'Erneuerbare Energie ist wichtig.', 'Renewable energy is important.', 'B1', 3),
  ('00000000-0000-4000-a000-00003284bbf0', 'der Müll', 'النفايات', 'waste', 'der', NULL, 'noun', 'In Deutschland trennt man den Müll.', 'In Germany, waste is separated.', 'B1', 4),
  ('00000000-0000-4000-a000-00003284bbf0', 'recyceln', 'يعيد التدوير', 'to recycle', NULL, NULL, 'verb', 'Wir recyceln Papier und Plastik.', 'We recycle paper and plastic.', 'B1', 5),
  ('00000000-0000-4000-a000-00003284bbf0', 'die Nachhaltigkeit', 'الاستدامة', 'sustainability', 'die', NULL, 'noun', 'Nachhaltigkeit ist ein Trend.', 'Sustainability is a trend.', 'B1', 6),
  ('00000000-0000-4000-a000-00003284bbf0', 'die Luft', 'الهواء', 'air', 'die', NULL, 'noun', 'Die Luft ist frisch.', 'The air is fresh.', 'A2', 7),
  ('00000000-0000-4000-a000-00003284bbf0', 'das Wasser', 'الماء', 'water', 'das', NULL, 'noun', 'Das Wasser ist sauber.', 'The water is clean.', 'A1', 8),
  ('00000000-0000-4000-a000-00003284bbf0', 'der Beruf', 'المهنة', 'profession', 'der', 'die Berufe', 'noun', 'Was ist dein Beruf?', 'What is your profession?', 'A1', 9),
  ('00000000-0000-4000-a000-00003284bbf0', 'die Firma', 'الشركة', 'company', 'die', 'die Firmen', 'noun', 'Die Firma ist in Berlin.', 'The company is in Berlin.', 'A1', 10),
  ('00000000-0000-4000-a000-00003284bbf0', 'der Kollege', 'الزميل', 'colleague', 'der', 'die Kollegen', 'noun', 'Mein Kollege hilft mir.', 'My colleague helps me.', 'A1', 11),
  ('00000000-0000-4000-a000-00003284bbf0', 'das Büro', 'المكتب', 'office', 'das', 'die Büros', 'noun', 'Das Büro ist im dritten Stock.', 'The office is on the third floor.', 'A1', 12),
  ('00000000-0000-4000-a000-00003284bbf0', 'die Besprechung', 'الاجتماع', 'meeting', 'die', 'die Besprechungen', 'noun', 'Wir haben eine Besprechung.', 'We have a meeting.', 'B1', 13),
  ('00000000-0000-4000-a000-00003284bbf0', 'der Chef', 'المدير', 'boss', 'der', 'die Chefs', 'noun', 'Mein Chef ist freundlich.', 'My boss is friendly.', 'A1', 14),
  ('00000000-0000-4000-a000-00003284bbf0', 'das Gehalt', 'الراتب', 'salary', 'das', 'die Gehälter', 'noun', 'Das Gehalt ist gut.', 'The salary is good.', 'B1', 15),
  ('00000000-0000-4000-a000-00003284bbf0', 'die Stelle', 'الوظيفة', 'position', 'die', 'die Stellen', 'noun', 'Ich suche eine neue Stelle.', 'I am looking for a new position.', 'B1', 16),
  ('00000000-0000-4000-a000-00003284bbf0', 'die Schule', 'المدرسة', 'school', 'die', 'die Schulen', 'noun', 'Die Kinder gehen zur Schule.', 'The children go to school.', 'A1', 17),
  ('00000000-0000-4000-a000-00003284bbf0', 'der Lehrer', 'المعلم', 'teacher', 'der', 'die Lehrer', 'noun', 'Der Lehrer erklärt die Grammatik.', 'The teacher explains the grammar.', 'A1', 18),
  ('00000000-0000-4000-a000-00003284bbf0', 'der Student', 'الطالب', 'student', 'der', 'die Studenten', 'noun', 'Der Student lernt Deutsch.', 'The student learns German.', 'A1', 19),
  ('00000000-0000-4000-a000-00003284bbf0', 'die Universität', 'الجامعة', 'university', 'die', 'die Universitäten', 'noun', 'Die Universität ist alt.', 'The university is old.', 'B1', 20),
  ('00000000-0000-4000-a000-00003284bbf0', 'der Kurs', 'الدورة', 'course', 'der', 'die Kurse', 'noun', 'Der Kurs kostet 200 Euro.', 'The course costs 200 euros.', 'A2', 21),
  ('00000000-0000-4000-a000-00003284bbf0', 'die Prüfung', 'الامتحان', 'exam', 'die', 'die Prüfungen', 'noun', 'Die Prüfung ist schwer.', 'The exam is difficult.', 'B1', 22),
  ('00000000-0000-4000-a000-00003284bbf0', 'das Studium', 'الدراسة الجامعية', 'studies', 'das', NULL, 'noun', 'Mein Studium dauert vier Jahre.', 'My studies take four years.', 'B1', 23),
  ('00000000-0000-4000-a000-00003284bbf0', 'lernen', 'يتعلم', 'to learn', NULL, NULL, 'verb', 'Ich lerne Deutsch.', 'I learn German.', 'A1', 24),
  ('00000000-0000-4000-a000-00003284bbf0', 'die Zeitung', 'الجريدة', 'newspaper', 'die', 'die Zeitungen', 'noun', 'Ich lese die Zeitung.', 'I read the newspaper.', 'A2', 25),
  ('00000000-0000-4000-a000-00003284bbf0', 'das Internet', 'الإنترنت', 'internet', 'das', NULL, 'noun', 'Das Internet ist schnell.', 'The internet is fast.', 'A2', 26),
  ('00000000-0000-4000-a000-00003284bbf0', 'der Artikel', 'المقال', 'article', 'der', 'die Artikel', 'noun', 'Der Artikel ist interessant.', 'The article is interesting.', 'B1', 27),
  ('00000000-0000-4000-a000-00003284bbf0', 'die Nachricht', 'الخبر', 'news', 'die', 'die Nachrichten', 'noun', 'Ich sehe die Nachrichten.', 'I watch the news.', 'A2', 28),
  ('00000000-0000-4000-a000-00003284bbf0', 'das Radio', 'الراديو', 'radio', 'das', 'die Radios', 'noun', 'Ich höre Radio.', 'I listen to the radio.', 'A2', 29),
  ('00000000-0000-4000-a000-00003284bbf0', 'das Fernsehen', 'التلفاز', 'television', 'das', NULL, 'noun', 'Das Fernsehen läuft.', 'The television is on.', 'A2', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00003284bbf0', 'Präsens der regelmäßigen Verben (Present Tense) / المضارع للأفعال المنتظمة', 'In German, regular verbs follow a consistent pattern. The infinitive ends in -en. Remove the -en and add the personal endings: ich -e, du -st, er/sie/es -t, wir -en, ihr -t, sie/Sie -en. For most Arabic speakers, this is easier than Arabic verb conjugation because German has fewer forms.', '[{"rule":"ich: stem + e","note":"Ich lerne, ich wohne, ich arbeite"},{"rule":"du: stem + st","note":"Du lernst, du wohnst, du arbeitest"},{"rule":"er/sie/es: stem + t","note":"Er lernt, sie wohnt, es arbeitet"},{"rule":"wir: stem + en","note":"Wir lernen, wir wohnen, wir arbeiten"},{"rule":"ihr: stem + t","note":"Ihr lernt, ihr wohnt, ihr arbeitet"},{"rule":"sie/Sie: stem + en","note":"Sie lernen, Sie wohnen"}]', '[{"german":"Ich lerne Deutsch.","arabic":"أنا أتعلم الألمانية.","english":"I am learning German."},{"german":"Du wohnst in Berlin.","arabic":"أنت تسكن في برلين.","english":"You live in Berlin."},{"german":"Er arbeitet bei Siemens.","arabic":"هو يعمل في سيمنز.","english":"He works at Siemens."}]', '[{"mistake":"Ich lernen Deutsch","correction":"Ich lerne Deutsch","explanation":"After \"ich\" we use the stem + e, not the infinitive."},{"mistake":"Er lerne Deutsch","correction":"Er lernt Deutsch","explanation":"After \"er/sie/es\" we add -t, not -e."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00003284bbf0', 'multiple_choice', 'What does "die Umwelt" mean?', '["The","A","This","That"]', 'The', 'This is a basic vocabulary item.', 1, 1),
  ('00000000-0000-4000-a000-00003284bbf0', 'fill_gap', 'Complete with the correct form.', '["Option 1","Option 2","Option 3"]', 'Option 1', 'Practice grammar in context.', 1, 2),
  ('00000000-0000-4000-a000-00003284bbf0', 'translation', 'Translate: "I learn German."', '["Ich lerne Deutsch.","Ich lerne Englisch.","Ich lerne Spanisch."]', 'Ich lerne Deutsch.', 'Ich = I, lerne = learn/learning, Deutsch = German.', 2, 3),
  ('00000000-0000-4000-a000-00003284bbf0', 'sentence_order', 'Order the sentence.', '[]', 'Ich lerne Deutsch.', 'Subject + verb + object in German.', 2, 4),
  ('00000000-0000-4000-a000-00003284bbf0', 'matching', 'Match the words with their meanings.', '["Match pairs correctly"]', 'Correct pairs', 'Test your vocabulary knowledge.', 2, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-00003284bbf0', 'multiple_choice', 'What is the main topic of this lesson?', '["Module Test","Sports","Music","Travel"]', 'Module Test', 1, 1),
  ('00000000-0000-4000-a000-00003284bbf0', 'true_false', 'This lesson teaches vocabulary about Module Test.', '["True","False"]', 'True', 1, 2),
  ('00000000-0000-4000-a000-00003284bbf0', 'true_false', 'German word order is always the same as English.', '["True","False"]', 'False', 1, 3),
  ('00000000-0000-4000-a000-00003284bbf0', 'multiple_choice', 'How do you say "please" in German?', '["Danke","Bitte","Tschüss","Hallo"]', 'Bitte', 1, 4),
  ('00000000-0000-4000-a000-00003284bbf0', 'multiple_choice', 'Which article is feminine?', '["der","die","das","den"]', 'die', 1, 5),
  ('00000000-0000-4000-a000-00003284bbf0', 'fill_blank', 'Ich ___ (to be) Student.', '["bin","bist","ist","sind"]', 'bin', 1, 6),
  ('00000000-0000-4000-a000-00003284bbf0', 'multiple_choice', 'What is the correct word order?', '["Ich lerne Deutsch","Ich Deutsch lerne","Lerne ich Deutsch","Deutsch ich lerne"]', 'Ich lerne Deutsch', 1, 7),
  ('00000000-0000-4000-a000-00003284bbf0', 'true_false', 'All German nouns are capitalized.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-00003284bbf0', 'multiple_choice', 'How do you say "thank you" in German?', '["Bitte","Danke","Tschüss","Hallo"]', 'Danke', 1, 9),
  ('00000000-0000-4000-a000-00003284bbf0', 'fill_blank', 'Wo ___ du? (to live)', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 1, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-00003284bbf0', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Umwelt und Nachhaltigkeit', 'formal', false, 1),
  ('00000000-0000-4000-a000-00003284bbf0', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Umwelt und Nachhaltigkeit', 'informal', false, 2),
  ('00000000-0000-4000-a000-00003284bbf0', 'Bitte!', 'Please!', 'من فضلك!', 'Used in Umwelt und Nachhaltigkeit', 'neutral', false, 3),
  ('00000000-0000-4000-a000-00003284bbf0', 'Danke!', 'Thanks!', 'شكراً!', 'Used in Umwelt und Nachhaltigkeit', 'neutral', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-00003284bbf0', 'Hallo', 'Hello', 'Greeting', 'expression', 1),
  ('00000000-0000-4000-a000-00003284bbf0', 'Danke', 'Thanks', 'Politeness', 'expression', 2),
  ('00000000-0000-4000-a000-00003284bbf0', 'Bitte', 'Please', 'Politeness', 'expression', 3),
  ('00000000-0000-4000-a000-00003284bbf0', 'Tschüss', 'Bye', 'Farewell', 'expression', 4);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-00003284bbf0', 'Test: Umwelt und Nachhaltigkeit — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, duration_seconds, speaker_count, scenario) values
  ('00000000-0000-4000-a000-00003284bbf0', 'Test: Umwelt und Nachhaltigkeit — Hörverständnis', '[Lehrerin]: Guten Morgen! Heute lernen wir Begrüßungen.

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

[Lehrerin]: ممتاز! إلى الغد!', 72, 2, 'Umwelt und Nachhaltigkeit');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-00003284bbf0', 'Speaking: Test: Umwelt und Nachhaltigkeit', 'Practice talking about Module Test. Answer questions and have a simple conversation.', 'Module Test', ARRAY['Use full sentences','Speak clearly','Don''t worry about mistakes']::text[], ARRAY['die Umwelt','der Klimawandel','die Energie','der Müll','recyceln']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-00003284bbf0', 'Writing: Test: Umwelt und Nachhaltigkeit', 'Write a short text about Module Test. Use at least 5 vocabulary words from this lesson.', ARRAY['Start with a greeting','Use the vocabulary from this lesson','Check your grammar']::text[], ARRAY['die Umwelt','der Klimawandel','die Energie']::text[], '["Sentence structure","Vocabulary usage"]', 50, 150, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00003284bbf0', 'Test: Umwelt und Nachhaltigkeit — Roleplay', 'Module Test', 'Student', 'Teacher', 'Practice conversation about Module Test', 'Hallo! Lass uns über dieses Thema sprechen.', 'intermediate', 1, ARRAY['die Umwelt','der Klimawandel','die Energie','der Müll','recyceln','die Nachhaltigkeit','die Luft','das Wasser']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00003284bbf0', 'Test: Umwelt und Nachhaltigkeit — Advanced Roleplay', 'Module Test', 'Customer', 'Assistant', 'Extended conversation about Module Test', 'Guten Tag! Wie kann ich Ihnen helfen?', 'intermediate', 2, ARRAY['die Umwelt','der Klimawandel','die Energie','der Müll','recyceln','die Nachhaltigkeit','die Luft','das Wasser']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-00003284bbf0', 'Test: Umwelt und Nachhaltigkeit — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Test: Umwelt und Nachhaltigkeit".', 'Creative practice for Module Test', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-00003284bbf0', 'Homework: Test: Umwelt und Nachhaltigkeit', 'Complete these tasks to reinforce "Test: Umwelt und Nachhaltigkeit".', 'mixed', '[{"description":"Review all vocabulary from this lesson"},{"description":"Write 5 sentences using the grammar structure"},{"description":"Practice the dialogue aloud"}]', 35, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-00003284bbf0', 'In this lesson you learned about Module Test. You practiced vocabulary related to environment and grammar structure present_tense.', '["Mastered vocabulary about Module Test","Applied present_tense correctly","Read and understood a text about Module Test","Practiced speaking about Module Test"]', '[{"title":"Test: Umwelt und Nachhaltigkeit Review","summary":"present_tense — the main grammar focus of this lesson."}]', ARRAY['Module Test core vocabulary','environment key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)','Verb is always in second position']::text[], ARRAY['Practice 15-20 minutes daily','Use new vocabulary in real sentences','Speak out loud to improve pronunciation']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00003284bbf0', 'translation', 'Translate to German: "This is a translation exercise."', '[]', 'Das ist eine Übersetzungsübung.', 'Use "das ist" for "this is"', 1, 40);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00003284bbf0', 'Culture: Module Test in German-Speaking Countries', 'Learn how Module Test is approached in German culture.

تعلم كيف يتم التعامل مع Module Test في الثقافة الألمانية.', '["Tip: Be direct and polite","Tip: Use formal language with strangers","Tip: Respect punctuality"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00003284bbf0', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Common error for Arabic speakers","correction":"Correct version","explanation":"Explanation of the error"}]', 30);

  -- Module 6: Reisen, Kultur und interkulturelle Kompetenz
  insert into public.course_modules (id, level_id, title, description, objectives, order_index, estimated_hours, is_published)
  values ('00000000-0000-4000-a000-000039c2eae4', 'B1', 'Reisen, Kultur und interkulturelle Kompetenz', 'Explore German-speaking countries, travel planning, and intercultural skills.', '["Plan and describe trips","Understand cultural differences","Use Präteritum of modal verbs","Use comparative sentences with \"je...desto\"","Write travel reports"]', 6, 5, true)
  on conflict (id) do nothing;

  -- Lesson 1: Reiseplanung und Buchung (L-B1-06-01)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-000032844795', '00000000-0000-4000-a000-000039c2eae4', 'Reiseplanung und Buchung', 'Plan trips and make bookings.', 'Travel Planning', 'dialogue', '["Understand and use vocabulary related to Travel Planning","Apply present_tense correctly","Read and comprehend a text about Travel Planning","Listen and understand a dialogue about Travel Planning","Speak about Travel Planning in simple sentences","Write a short text about Travel Planning"]', 50, 1, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-000032844795', 'die Reise', 'الرحلة', 'trip', 'die', 'die Reisen', 'noun', 'Die Reise nach München war schön.', 'The trip to Munich was nice.', 'A1', 1),
  ('00000000-0000-4000-a000-000032844795', 'der Zug', 'القطار', 'train', 'der', 'die Züge', 'noun', 'Der Zug kommt um 10 Uhr an.', 'The train arrives at 10 o''clock.', 'A1', 2),
  ('00000000-0000-4000-a000-000032844795', 'das Ticket', 'التذكرة', 'ticket', 'das', 'die Tickets', 'noun', 'Ein Ticket nach Berlin, bitte.', 'A ticket to Berlin, please.', 'A1', 3),
  ('00000000-0000-4000-a000-000032844795', 'der Bahnhof', 'محطة القطار', 'train station', 'der', 'die Bahnhöfe', 'noun', 'Der Bahnhof ist groß.', 'The train station is big.', 'A1', 4),
  ('00000000-0000-4000-a000-000032844795', 'der Flughafen', 'المطار', 'airport', 'der', 'die Flughäfen', 'noun', 'Ich fahre zum Flughafen.', 'I drive to the airport.', 'A1', 5),
  ('00000000-0000-4000-a000-000032844795', 'das Hotel', 'الفندق', 'hotel', 'das', 'die Hotels', 'noun', 'Das Hotel ist günstig.', 'The hotel is affordable.', 'A1', 6),
  ('00000000-0000-4000-a000-000032844795', 'der Pass', 'جواز السفر', 'passport', 'der', 'die Pässe', 'noun', 'Ich brauche meinen Pass.', 'I need my passport.', 'A1', 7),
  ('00000000-0000-4000-a000-000032844795', 'der Koffer', 'الحقيبة', 'suitcase', 'der', 'die Koffer', 'noun', 'Mein Koffer ist schwer.', 'My suitcase is heavy.', 'A1', 8),
  ('00000000-0000-4000-a000-000032844795', 'der Beruf', 'المهنة', 'profession', 'der', 'die Berufe', 'noun', 'Was ist dein Beruf?', 'What is your profession?', 'A1', 9),
  ('00000000-0000-4000-a000-000032844795', 'die Firma', 'الشركة', 'company', 'die', 'die Firmen', 'noun', 'Die Firma ist in Berlin.', 'The company is in Berlin.', 'A1', 10),
  ('00000000-0000-4000-a000-000032844795', 'der Kollege', 'الزميل', 'colleague', 'der', 'die Kollegen', 'noun', 'Mein Kollege hilft mir.', 'My colleague helps me.', 'A1', 11),
  ('00000000-0000-4000-a000-000032844795', 'das Büro', 'المكتب', 'office', 'das', 'die Büros', 'noun', 'Das Büro ist im dritten Stock.', 'The office is on the third floor.', 'A1', 12),
  ('00000000-0000-4000-a000-000032844795', 'die Besprechung', 'الاجتماع', 'meeting', 'die', 'die Besprechungen', 'noun', 'Wir haben eine Besprechung.', 'We have a meeting.', 'B1', 13),
  ('00000000-0000-4000-a000-000032844795', 'der Chef', 'المدير', 'boss', 'der', 'die Chefs', 'noun', 'Mein Chef ist freundlich.', 'My boss is friendly.', 'A1', 14),
  ('00000000-0000-4000-a000-000032844795', 'das Gehalt', 'الراتب', 'salary', 'das', 'die Gehälter', 'noun', 'Das Gehalt ist gut.', 'The salary is good.', 'B1', 15),
  ('00000000-0000-4000-a000-000032844795', 'die Stelle', 'الوظيفة', 'position', 'die', 'die Stellen', 'noun', 'Ich suche eine neue Stelle.', 'I am looking for a new position.', 'B1', 16),
  ('00000000-0000-4000-a000-000032844795', 'die Schule', 'المدرسة', 'school', 'die', 'die Schulen', 'noun', 'Die Kinder gehen zur Schule.', 'The children go to school.', 'A1', 17),
  ('00000000-0000-4000-a000-000032844795', 'der Lehrer', 'المعلم', 'teacher', 'der', 'die Lehrer', 'noun', 'Der Lehrer erklärt die Grammatik.', 'The teacher explains the grammar.', 'A1', 18),
  ('00000000-0000-4000-a000-000032844795', 'der Student', 'الطالب', 'student', 'der', 'die Studenten', 'noun', 'Der Student lernt Deutsch.', 'The student learns German.', 'A1', 19),
  ('00000000-0000-4000-a000-000032844795', 'die Universität', 'الجامعة', 'university', 'die', 'die Universitäten', 'noun', 'Die Universität ist alt.', 'The university is old.', 'B1', 20),
  ('00000000-0000-4000-a000-000032844795', 'der Kurs', 'الدورة', 'course', 'der', 'die Kurse', 'noun', 'Der Kurs kostet 200 Euro.', 'The course costs 200 euros.', 'A2', 21),
  ('00000000-0000-4000-a000-000032844795', 'die Prüfung', 'الامتحان', 'exam', 'die', 'die Prüfungen', 'noun', 'Die Prüfung ist schwer.', 'The exam is difficult.', 'B1', 22),
  ('00000000-0000-4000-a000-000032844795', 'das Studium', 'الدراسة الجامعية', 'studies', 'das', NULL, 'noun', 'Mein Studium dauert vier Jahre.', 'My studies take four years.', 'B1', 23),
  ('00000000-0000-4000-a000-000032844795', 'lernen', 'يتعلم', 'to learn', NULL, NULL, 'verb', 'Ich lerne Deutsch.', 'I learn German.', 'A1', 24),
  ('00000000-0000-4000-a000-000032844795', 'die Zeitung', 'الجريدة', 'newspaper', 'die', 'die Zeitungen', 'noun', 'Ich lese die Zeitung.', 'I read the newspaper.', 'A2', 25),
  ('00000000-0000-4000-a000-000032844795', 'das Internet', 'الإنترنت', 'internet', 'das', NULL, 'noun', 'Das Internet ist schnell.', 'The internet is fast.', 'A2', 26),
  ('00000000-0000-4000-a000-000032844795', 'der Artikel', 'المقال', 'article', 'der', 'die Artikel', 'noun', 'Der Artikel ist interessant.', 'The article is interesting.', 'B1', 27),
  ('00000000-0000-4000-a000-000032844795', 'die Nachricht', 'الخبر', 'news', 'die', 'die Nachrichten', 'noun', 'Ich sehe die Nachrichten.', 'I watch the news.', 'A2', 28),
  ('00000000-0000-4000-a000-000032844795', 'das Radio', 'الراديو', 'radio', 'das', 'die Radios', 'noun', 'Ich höre Radio.', 'I listen to the radio.', 'A2', 29),
  ('00000000-0000-4000-a000-000032844795', 'das Fernsehen', 'التلفاز', 'television', 'das', NULL, 'noun', 'Das Fernsehen läuft.', 'The television is on.', 'A2', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000032844795', 'Präsens der regelmäßigen Verben (Present Tense) / المضارع للأفعال المنتظمة', 'In German, regular verbs follow a consistent pattern. The infinitive ends in -en. Remove the -en and add the personal endings: ich -e, du -st, er/sie/es -t, wir -en, ihr -t, sie/Sie -en. For most Arabic speakers, this is easier than Arabic verb conjugation because German has fewer forms.', '[{"rule":"ich: stem + e","note":"Ich lerne, ich wohne, ich arbeite"},{"rule":"du: stem + st","note":"Du lernst, du wohnst, du arbeitest"},{"rule":"er/sie/es: stem + t","note":"Er lernt, sie wohnt, es arbeitet"},{"rule":"wir: stem + en","note":"Wir lernen, wir wohnen, wir arbeiten"},{"rule":"ihr: stem + t","note":"Ihr lernt, ihr wohnt, ihr arbeitet"},{"rule":"sie/Sie: stem + en","note":"Sie lernen, Sie wohnen"}]', '[{"german":"Ich lerne Deutsch.","arabic":"أنا أتعلم الألمانية.","english":"I am learning German."},{"german":"Du wohnst in Berlin.","arabic":"أنت تسكن في برلين.","english":"You live in Berlin."},{"german":"Er arbeitet bei Siemens.","arabic":"هو يعمل في سيمنز.","english":"He works at Siemens."}]', '[{"mistake":"Ich lernen Deutsch","correction":"Ich lerne Deutsch","explanation":"After \"ich\" we use the stem + e, not the infinitive."},{"mistake":"Er lerne Deutsch","correction":"Er lernt Deutsch","explanation":"After \"er/sie/es\" we add -t, not -e."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000032844795', 'multiple_choice', 'What does "die Reise" mean?', '["The","A","This","That"]', 'The', 'This is a basic vocabulary item.', 1, 1),
  ('00000000-0000-4000-a000-000032844795', 'fill_gap', 'Complete with the correct form.', '["Option 1","Option 2","Option 3"]', 'Option 1', 'Practice grammar in context.', 1, 2),
  ('00000000-0000-4000-a000-000032844795', 'translation', 'Translate: "I learn German."', '["Ich lerne Deutsch.","Ich lerne Englisch.","Ich lerne Spanisch."]', 'Ich lerne Deutsch.', 'Ich = I, lerne = learn/learning, Deutsch = German.', 2, 3),
  ('00000000-0000-4000-a000-000032844795', 'sentence_order', 'Order the sentence.', '[]', 'Ich lerne Deutsch.', 'Subject + verb + object in German.', 2, 4),
  ('00000000-0000-4000-a000-000032844795', 'matching', 'Match the words with their meanings.', '["Match pairs correctly"]', 'Correct pairs', 'Test your vocabulary knowledge.', 2, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-000032844795', 'multiple_choice', 'What is the main topic of this lesson?', '["Travel Planning","Sports","Music","Travel"]', 'Travel Planning', 1, 1),
  ('00000000-0000-4000-a000-000032844795', 'true_false', 'This lesson teaches vocabulary about Travel Planning.', '["True","False"]', 'True', 1, 2),
  ('00000000-0000-4000-a000-000032844795', 'true_false', 'German word order is always the same as English.', '["True","False"]', 'False', 1, 3),
  ('00000000-0000-4000-a000-000032844795', 'multiple_choice', 'How do you say "please" in German?', '["Danke","Bitte","Tschüss","Hallo"]', 'Bitte', 1, 4),
  ('00000000-0000-4000-a000-000032844795', 'multiple_choice', 'Which article is feminine?', '["der","die","das","den"]', 'die', 1, 5),
  ('00000000-0000-4000-a000-000032844795', 'fill_blank', 'Ich ___ (to be) Student.', '["bin","bist","ist","sind"]', 'bin', 1, 6),
  ('00000000-0000-4000-a000-000032844795', 'multiple_choice', 'What is the correct word order?', '["Ich lerne Deutsch","Ich Deutsch lerne","Lerne ich Deutsch","Deutsch ich lerne"]', 'Ich lerne Deutsch', 1, 7),
  ('00000000-0000-4000-a000-000032844795', 'true_false', 'All German nouns are capitalized.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-000032844795', 'multiple_choice', 'How do you say "thank you" in German?', '["Bitte","Danke","Tschüss","Hallo"]', 'Danke', 1, 9),
  ('00000000-0000-4000-a000-000032844795', 'fill_blank', 'Wo ___ du? (to live)', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 1, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-000032844795', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Reisen, Kultur und interkulturelle Kompetenz', 'formal', false, 1),
  ('00000000-0000-4000-a000-000032844795', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Reisen, Kultur und interkulturelle Kompetenz', 'informal', false, 2),
  ('00000000-0000-4000-a000-000032844795', 'Bitte!', 'Please!', 'من فضلك!', 'Used in Reisen, Kultur und interkulturelle Kompetenz', 'neutral', false, 3),
  ('00000000-0000-4000-a000-000032844795', 'Danke!', 'Thanks!', 'شكراً!', 'Used in Reisen, Kultur und interkulturelle Kompetenz', 'neutral', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-000032844795', 'Hallo', 'Hello', 'Greeting', 'expression', 1),
  ('00000000-0000-4000-a000-000032844795', 'Danke', 'Thanks', 'Politeness', 'expression', 2),
  ('00000000-0000-4000-a000-000032844795', 'Bitte', 'Please', 'Politeness', 'expression', 3),
  ('00000000-0000-4000-a000-000032844795', 'Tschüss', 'Bye', 'Farewell', 'expression', 4);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-000032844795', 'Reiseplanung und Buchung — Leseübung', 'Nächste Woche mache ich eine Reise nach München. Ich fahre mit dem Zug. Ich kaufe ein Ticket am Bahnhof. Der Zug fährt um 8 Uhr ab. Die Fahrt dauert 4 Stunden. In München besuche ich meine Tante. Sie wohnt in der Nähe des Hauptbahnhofs. Wir gehen zusammen in ein Restaurant. Dann besuchen wir das Deutsche Museum. Die Reise wird schön.', 'Next week I am taking a trip to Munich. I am going by train. I buy a ticket at the train station. The train departs at 8 o''clock. The journey takes 4 hours. In Munich I visit my aunt. She lives near the main train station. We go to a restaurant together. Then we visit the German Museum. The trip will be nice.', 'الأسبوع القادم سأسافر إلى ميونخ. سأذهب بالقطار. أشتري تذكرة من محطة القطار. القطار يغادر في الساعة 8. الرحلة تستغرق 4 ساعات. في ميونخ أزور عمتي. تسكن بالقرب من المحطة الرئيسية. نذهب معاً إلى مطعم. ثم نزور المتحف الألماني. الرحلة ستكون جميلة.', 60, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, duration_seconds, speaker_count, scenario) values
  ('00000000-0000-4000-a000-000032844795', 'Reiseplanung und Buchung — Hörverständnis', '[Kunde]: Guten Tag! Ich möchte eine Fahrkarte nach München kaufen.

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

[Mitarbeiter]: إذاً التكلفة 73.50 يورو. القطار يغادر في الساعة 10.', 72, 2, 'Reisen, Kultur und interkulturelle Kompetenz');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-000032844795', 'Speaking: Reiseplanung und Buchung', 'Practice talking about Travel Planning. Answer questions and have a simple conversation.', 'Travel Planning', ARRAY['Use full sentences','Speak clearly','Don''t worry about mistakes']::text[], ARRAY['die Reise','der Zug','das Ticket','der Bahnhof','der Flughafen']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-000032844795', 'Writing: Reiseplanung und Buchung', 'Write a short text about Travel Planning. Use at least 5 vocabulary words from this lesson.', ARRAY['Start with a greeting','Use the vocabulary from this lesson','Check your grammar']::text[], ARRAY['die Reise','der Zug','das Ticket']::text[], '["Sentence structure","Vocabulary usage"]', 50, 150, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000032844795', 'Reiseplanung und Buchung — Roleplay', 'Travel Planning', 'Student', 'Teacher', 'Practice conversation about Travel Planning', 'Hallo! Lass uns über dieses Thema sprechen.', 'intermediate', 1, ARRAY['die Reise','der Zug','das Ticket','der Bahnhof','der Flughafen','das Hotel','der Pass','der Koffer']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000032844795', 'Reiseplanung und Buchung — Advanced Roleplay', 'Travel Planning', 'Customer', 'Assistant', 'Extended conversation about Travel Planning', 'Guten Tag! Wie kann ich Ihnen helfen?', 'intermediate', 2, ARRAY['die Reise','der Zug','das Ticket','der Bahnhof','der Flughafen','das Hotel','der Pass','der Koffer']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-000032844795', 'Reiseplanung und Buchung — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Reiseplanung und Buchung".', 'Creative practice for Travel Planning', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-000032844795', 'Homework: Reiseplanung und Buchung', 'Complete these tasks to reinforce "Reiseplanung und Buchung".', 'mixed', '[{"description":"Review all vocabulary from this lesson"},{"description":"Write 5 sentences using the grammar structure"},{"description":"Practice the dialogue aloud"}]', 35, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-000032844795', 'In this lesson you learned about Travel Planning. You practiced vocabulary related to travel and grammar structure present_tense.', '["Mastered vocabulary about Travel Planning","Applied present_tense correctly","Read and understood a text about Travel Planning","Practiced speaking about Travel Planning"]', '[{"title":"Reiseplanung und Buchung Review","summary":"present_tense — the main grammar focus of this lesson."}]', ARRAY['Travel Planning core vocabulary','travel key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)','Verb is always in second position']::text[], ARRAY['Practice 15-20 minutes daily','Use new vocabulary in real sentences','Speak out loud to improve pronunciation']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000032844795', 'translation', 'Translate to German: "This is a translation exercise."', '[]', 'Das ist eine Übersetzungsübung.', 'Use "das ist" for "this is"', 1, 40);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000032844795', 'Culture: Travel Planning in German-Speaking Countries', 'Learn how Travel Planning is approached in German culture.

تعلم كيف يتم التعامل مع Travel Planning في الثقافة الألمانية.', '["Tip: Be direct and polite","Tip: Use formal language with strangers","Tip: Respect punctuality"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000032844795', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Common error for Arabic speakers","correction":"Correct version","explanation":"Explanation of the error"}]', 30);

  -- Lesson 2: Präteritum der Modalverben (L-B1-06-02)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-000032844794', '00000000-0000-4000-a000-000039c2eae4', 'Präteritum der Modalverben', 'Learn simple past of modal verbs.', 'Modal Verbs Past', 'grammar', '["Understand and use vocabulary related to Modal Verbs Past","Apply present_tense correctly","Read and comprehend a text about Modal Verbs Past","Listen and understand a dialogue about Modal Verbs Past","Speak about Modal Verbs Past in simple sentences","Write a short text about Modal Verbs Past"]', 55, 2, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-000032844794', 'die Reise', 'الرحلة', 'trip', 'die', 'die Reisen', 'noun', 'Die Reise nach München war schön.', 'The trip to Munich was nice.', 'A1', 1),
  ('00000000-0000-4000-a000-000032844794', 'der Zug', 'القطار', 'train', 'der', 'die Züge', 'noun', 'Der Zug kommt um 10 Uhr an.', 'The train arrives at 10 o''clock.', 'A1', 2),
  ('00000000-0000-4000-a000-000032844794', 'das Ticket', 'التذكرة', 'ticket', 'das', 'die Tickets', 'noun', 'Ein Ticket nach Berlin, bitte.', 'A ticket to Berlin, please.', 'A1', 3),
  ('00000000-0000-4000-a000-000032844794', 'der Bahnhof', 'محطة القطار', 'train station', 'der', 'die Bahnhöfe', 'noun', 'Der Bahnhof ist groß.', 'The train station is big.', 'A1', 4),
  ('00000000-0000-4000-a000-000032844794', 'der Flughafen', 'المطار', 'airport', 'der', 'die Flughäfen', 'noun', 'Ich fahre zum Flughafen.', 'I drive to the airport.', 'A1', 5),
  ('00000000-0000-4000-a000-000032844794', 'das Hotel', 'الفندق', 'hotel', 'das', 'die Hotels', 'noun', 'Das Hotel ist günstig.', 'The hotel is affordable.', 'A1', 6),
  ('00000000-0000-4000-a000-000032844794', 'der Pass', 'جواز السفر', 'passport', 'der', 'die Pässe', 'noun', 'Ich brauche meinen Pass.', 'I need my passport.', 'A1', 7),
  ('00000000-0000-4000-a000-000032844794', 'der Koffer', 'الحقيبة', 'suitcase', 'der', 'die Koffer', 'noun', 'Mein Koffer ist schwer.', 'My suitcase is heavy.', 'A1', 8),
  ('00000000-0000-4000-a000-000032844794', 'der Beruf', 'المهنة', 'profession', 'der', 'die Berufe', 'noun', 'Was ist dein Beruf?', 'What is your profession?', 'A1', 9),
  ('00000000-0000-4000-a000-000032844794', 'die Firma', 'الشركة', 'company', 'die', 'die Firmen', 'noun', 'Die Firma ist in Berlin.', 'The company is in Berlin.', 'A1', 10),
  ('00000000-0000-4000-a000-000032844794', 'der Kollege', 'الزميل', 'colleague', 'der', 'die Kollegen', 'noun', 'Mein Kollege hilft mir.', 'My colleague helps me.', 'A1', 11),
  ('00000000-0000-4000-a000-000032844794', 'das Büro', 'المكتب', 'office', 'das', 'die Büros', 'noun', 'Das Büro ist im dritten Stock.', 'The office is on the third floor.', 'A1', 12),
  ('00000000-0000-4000-a000-000032844794', 'die Besprechung', 'الاجتماع', 'meeting', 'die', 'die Besprechungen', 'noun', 'Wir haben eine Besprechung.', 'We have a meeting.', 'B1', 13),
  ('00000000-0000-4000-a000-000032844794', 'der Chef', 'المدير', 'boss', 'der', 'die Chefs', 'noun', 'Mein Chef ist freundlich.', 'My boss is friendly.', 'A1', 14),
  ('00000000-0000-4000-a000-000032844794', 'das Gehalt', 'الراتب', 'salary', 'das', 'die Gehälter', 'noun', 'Das Gehalt ist gut.', 'The salary is good.', 'B1', 15),
  ('00000000-0000-4000-a000-000032844794', 'die Stelle', 'الوظيفة', 'position', 'die', 'die Stellen', 'noun', 'Ich suche eine neue Stelle.', 'I am looking for a new position.', 'B1', 16),
  ('00000000-0000-4000-a000-000032844794', 'die Schule', 'المدرسة', 'school', 'die', 'die Schulen', 'noun', 'Die Kinder gehen zur Schule.', 'The children go to school.', 'A1', 17),
  ('00000000-0000-4000-a000-000032844794', 'der Lehrer', 'المعلم', 'teacher', 'der', 'die Lehrer', 'noun', 'Der Lehrer erklärt die Grammatik.', 'The teacher explains the grammar.', 'A1', 18),
  ('00000000-0000-4000-a000-000032844794', 'der Student', 'الطالب', 'student', 'der', 'die Studenten', 'noun', 'Der Student lernt Deutsch.', 'The student learns German.', 'A1', 19),
  ('00000000-0000-4000-a000-000032844794', 'die Universität', 'الجامعة', 'university', 'die', 'die Universitäten', 'noun', 'Die Universität ist alt.', 'The university is old.', 'B1', 20),
  ('00000000-0000-4000-a000-000032844794', 'der Kurs', 'الدورة', 'course', 'der', 'die Kurse', 'noun', 'Der Kurs kostet 200 Euro.', 'The course costs 200 euros.', 'A2', 21),
  ('00000000-0000-4000-a000-000032844794', 'die Prüfung', 'الامتحان', 'exam', 'die', 'die Prüfungen', 'noun', 'Die Prüfung ist schwer.', 'The exam is difficult.', 'B1', 22),
  ('00000000-0000-4000-a000-000032844794', 'das Studium', 'الدراسة الجامعية', 'studies', 'das', NULL, 'noun', 'Mein Studium dauert vier Jahre.', 'My studies take four years.', 'B1', 23),
  ('00000000-0000-4000-a000-000032844794', 'lernen', 'يتعلم', 'to learn', NULL, NULL, 'verb', 'Ich lerne Deutsch.', 'I learn German.', 'A1', 24),
  ('00000000-0000-4000-a000-000032844794', 'die Zeitung', 'الجريدة', 'newspaper', 'die', 'die Zeitungen', 'noun', 'Ich lese die Zeitung.', 'I read the newspaper.', 'A2', 25),
  ('00000000-0000-4000-a000-000032844794', 'das Internet', 'الإنترنت', 'internet', 'das', NULL, 'noun', 'Das Internet ist schnell.', 'The internet is fast.', 'A2', 26),
  ('00000000-0000-4000-a000-000032844794', 'der Artikel', 'المقال', 'article', 'der', 'die Artikel', 'noun', 'Der Artikel ist interessant.', 'The article is interesting.', 'B1', 27),
  ('00000000-0000-4000-a000-000032844794', 'die Nachricht', 'الخبر', 'news', 'die', 'die Nachrichten', 'noun', 'Ich sehe die Nachrichten.', 'I watch the news.', 'A2', 28),
  ('00000000-0000-4000-a000-000032844794', 'das Radio', 'الراديو', 'radio', 'das', 'die Radios', 'noun', 'Ich höre Radio.', 'I listen to the radio.', 'A2', 29),
  ('00000000-0000-4000-a000-000032844794', 'das Fernsehen', 'التلفاز', 'television', 'das', NULL, 'noun', 'Das Fernsehen läuft.', 'The television is on.', 'A2', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000032844794', 'Präsens der regelmäßigen Verben (Present Tense) / المضارع للأفعال المنتظمة', 'In German, regular verbs follow a consistent pattern. The infinitive ends in -en. Remove the -en and add the personal endings: ich -e, du -st, er/sie/es -t, wir -en, ihr -t, sie/Sie -en. For most Arabic speakers, this is easier than Arabic verb conjugation because German has fewer forms.', '[{"rule":"ich: stem + e","note":"Ich lerne, ich wohne, ich arbeite"},{"rule":"du: stem + st","note":"Du lernst, du wohnst, du arbeitest"},{"rule":"er/sie/es: stem + t","note":"Er lernt, sie wohnt, es arbeitet"},{"rule":"wir: stem + en","note":"Wir lernen, wir wohnen, wir arbeiten"},{"rule":"ihr: stem + t","note":"Ihr lernt, ihr wohnt, ihr arbeitet"},{"rule":"sie/Sie: stem + en","note":"Sie lernen, Sie wohnen"}]', '[{"german":"Ich lerne Deutsch.","arabic":"أنا أتعلم الألمانية.","english":"I am learning German."},{"german":"Du wohnst in Berlin.","arabic":"أنت تسكن في برلين.","english":"You live in Berlin."},{"german":"Er arbeitet bei Siemens.","arabic":"هو يعمل في سيمنز.","english":"He works at Siemens."}]', '[{"mistake":"Ich lernen Deutsch","correction":"Ich lerne Deutsch","explanation":"After \"ich\" we use the stem + e, not the infinitive."},{"mistake":"Er lerne Deutsch","correction":"Er lernt Deutsch","explanation":"After \"er/sie/es\" we add -t, not -e."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000032844794', 'multiple_choice', 'What does "die Reise" mean?', '["The","A","This","That"]', 'The', 'This is a basic vocabulary item.', 1, 1),
  ('00000000-0000-4000-a000-000032844794', 'fill_gap', 'Complete with the correct form.', '["Option 1","Option 2","Option 3"]', 'Option 1', 'Practice grammar in context.', 1, 2),
  ('00000000-0000-4000-a000-000032844794', 'translation', 'Translate: "I learn German."', '["Ich lerne Deutsch.","Ich lerne Englisch.","Ich lerne Spanisch."]', 'Ich lerne Deutsch.', 'Ich = I, lerne = learn/learning, Deutsch = German.', 2, 3),
  ('00000000-0000-4000-a000-000032844794', 'sentence_order', 'Order the sentence.', '[]', 'Ich lerne Deutsch.', 'Subject + verb + object in German.', 2, 4),
  ('00000000-0000-4000-a000-000032844794', 'matching', 'Match the words with their meanings.', '["Match pairs correctly"]', 'Correct pairs', 'Test your vocabulary knowledge.', 2, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-000032844794', 'multiple_choice', 'What is the main topic of this lesson?', '["Modal Verbs Past","Sports","Music","Travel"]', 'Modal Verbs Past', 1, 1),
  ('00000000-0000-4000-a000-000032844794', 'true_false', 'This lesson teaches vocabulary about Modal Verbs Past.', '["True","False"]', 'True', 1, 2),
  ('00000000-0000-4000-a000-000032844794', 'true_false', 'German word order is always the same as English.', '["True","False"]', 'False', 1, 3),
  ('00000000-0000-4000-a000-000032844794', 'multiple_choice', 'How do you say "please" in German?', '["Danke","Bitte","Tschüss","Hallo"]', 'Bitte', 1, 4),
  ('00000000-0000-4000-a000-000032844794', 'multiple_choice', 'Which article is feminine?', '["der","die","das","den"]', 'die', 1, 5),
  ('00000000-0000-4000-a000-000032844794', 'fill_blank', 'Ich ___ (to be) Student.', '["bin","bist","ist","sind"]', 'bin', 1, 6),
  ('00000000-0000-4000-a000-000032844794', 'multiple_choice', 'What is the correct word order?', '["Ich lerne Deutsch","Ich Deutsch lerne","Lerne ich Deutsch","Deutsch ich lerne"]', 'Ich lerne Deutsch', 1, 7),
  ('00000000-0000-4000-a000-000032844794', 'true_false', 'All German nouns are capitalized.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-000032844794', 'multiple_choice', 'How do you say "thank you" in German?', '["Bitte","Danke","Tschüss","Hallo"]', 'Danke', 1, 9),
  ('00000000-0000-4000-a000-000032844794', 'fill_blank', 'Wo ___ du? (to live)', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 1, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-000032844794', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Reisen, Kultur und interkulturelle Kompetenz', 'formal', false, 1),
  ('00000000-0000-4000-a000-000032844794', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Reisen, Kultur und interkulturelle Kompetenz', 'informal', false, 2),
  ('00000000-0000-4000-a000-000032844794', 'Bitte!', 'Please!', 'من فضلك!', 'Used in Reisen, Kultur und interkulturelle Kompetenz', 'neutral', false, 3),
  ('00000000-0000-4000-a000-000032844794', 'Danke!', 'Thanks!', 'شكراً!', 'Used in Reisen, Kultur und interkulturelle Kompetenz', 'neutral', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-000032844794', 'Hallo', 'Hello', 'Greeting', 'expression', 1),
  ('00000000-0000-4000-a000-000032844794', 'Danke', 'Thanks', 'Politeness', 'expression', 2),
  ('00000000-0000-4000-a000-000032844794', 'Bitte', 'Please', 'Politeness', 'expression', 3),
  ('00000000-0000-4000-a000-000032844794', 'Tschüss', 'Bye', 'Farewell', 'expression', 4);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-000032844794', 'Präteritum der Modalverben — Leseübung', 'Nächste Woche mache ich eine Reise nach München. Ich fahre mit dem Zug. Ich kaufe ein Ticket am Bahnhof. Der Zug fährt um 8 Uhr ab. Die Fahrt dauert 4 Stunden. In München besuche ich meine Tante. Sie wohnt in der Nähe des Hauptbahnhofs. Wir gehen zusammen in ein Restaurant. Dann besuchen wir das Deutsche Museum. Die Reise wird schön.', 'Next week I am taking a trip to Munich. I am going by train. I buy a ticket at the train station. The train departs at 8 o''clock. The journey takes 4 hours. In Munich I visit my aunt. She lives near the main train station. We go to a restaurant together. Then we visit the German Museum. The trip will be nice.', 'الأسبوع القادم سأسافر إلى ميونخ. سأذهب بالقطار. أشتري تذكرة من محطة القطار. القطار يغادر في الساعة 8. الرحلة تستغرق 4 ساعات. في ميونخ أزور عمتي. تسكن بالقرب من المحطة الرئيسية. نذهب معاً إلى مطعم. ثم نزور المتحف الألماني. الرحلة ستكون جميلة.', 60, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, duration_seconds, speaker_count, scenario) values
  ('00000000-0000-4000-a000-000032844794', 'Präteritum der Modalverben — Hörverständnis', '[Kunde]: Guten Tag! Ich möchte eine Fahrkarte nach München kaufen.

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

[Mitarbeiter]: إذاً التكلفة 73.50 يورو. القطار يغادر في الساعة 10.', 72, 2, 'Reisen, Kultur und interkulturelle Kompetenz');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-000032844794', 'Speaking: Präteritum der Modalverben', 'Practice talking about Modal Verbs Past. Answer questions and have a simple conversation.', 'Modal Verbs Past', ARRAY['Use full sentences','Speak clearly','Don''t worry about mistakes']::text[], ARRAY['die Reise','der Zug','das Ticket','der Bahnhof','der Flughafen']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-000032844794', 'Writing: Präteritum der Modalverben', 'Write a short text about Modal Verbs Past. Use at least 5 vocabulary words from this lesson.', ARRAY['Start with a greeting','Use the vocabulary from this lesson','Check your grammar']::text[], ARRAY['die Reise','der Zug','das Ticket']::text[], '["Sentence structure","Vocabulary usage"]', 50, 150, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000032844794', 'Präteritum der Modalverben — Roleplay', 'Modal Verbs Past', 'Student', 'Teacher', 'Practice conversation about Modal Verbs Past', 'Hallo! Lass uns über dieses Thema sprechen.', 'intermediate', 1, ARRAY['die Reise','der Zug','das Ticket','der Bahnhof','der Flughafen','das Hotel','der Pass','der Koffer']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000032844794', 'Präteritum der Modalverben — Advanced Roleplay', 'Modal Verbs Past', 'Customer', 'Assistant', 'Extended conversation about Modal Verbs Past', 'Guten Tag! Wie kann ich Ihnen helfen?', 'intermediate', 2, ARRAY['die Reise','der Zug','das Ticket','der Bahnhof','der Flughafen','das Hotel','der Pass','der Koffer']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-000032844794', 'Präteritum der Modalverben — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Präteritum der Modalverben".', 'Creative practice for Modal Verbs Past', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-000032844794', 'Homework: Präteritum der Modalverben', 'Complete these tasks to reinforce "Präteritum der Modalverben".', 'mixed', '[{"description":"Review all vocabulary from this lesson"},{"description":"Write 5 sentences using the grammar structure"},{"description":"Practice the dialogue aloud"}]', 35, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-000032844794', 'In this lesson you learned about Modal Verbs Past. You practiced vocabulary related to travel and grammar structure present_tense.', '["Mastered vocabulary about Modal Verbs Past","Applied present_tense correctly","Read and understood a text about Modal Verbs Past","Practiced speaking about Modal Verbs Past"]', '[{"title":"Präteritum der Modalverben Review","summary":"present_tense — the main grammar focus of this lesson."}]', ARRAY['Modal Verbs Past core vocabulary','travel key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)','Verb is always in second position']::text[], ARRAY['Practice 15-20 minutes daily','Use new vocabulary in real sentences','Speak out loud to improve pronunciation']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000032844794', 'translation', 'Translate to German: "This is a translation exercise."', '[]', 'Das ist eine Übersetzungsübung.', 'Use "das ist" for "this is"', 1, 40);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000032844794', 'Culture: Modal Verbs Past in German-Speaking Countries', 'Learn how Modal Verbs Past is approached in German culture.

تعلم كيف يتم التعامل مع Modal Verbs Past في الثقافة الألمانية.', '["Tip: Be direct and polite","Tip: Use formal language with strangers","Tip: Respect punctuality"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000032844794', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Common error for Arabic speakers","correction":"Correct version","explanation":"Explanation of the error"}]', 30);

  -- Lesson 3: Sehenswürdigkeiten in DACH (L-B1-06-03)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-000032844793', '00000000-0000-4000-a000-000039c2eae4', 'Sehenswürdigkeiten in DACH', 'Explore landmarks in Germany, Austria, Switzerland.', 'DACH Landmarks', 'reading', '["Understand and use vocabulary related to DACH Landmarks","Apply present_tense correctly","Read and comprehend a text about DACH Landmarks","Listen and understand a dialogue about DACH Landmarks","Speak about DACH Landmarks in simple sentences","Write a short text about DACH Landmarks"]', 50, 3, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-000032844793', 'die Reise', 'الرحلة', 'trip', 'die', 'die Reisen', 'noun', 'Die Reise nach München war schön.', 'The trip to Munich was nice.', 'A1', 1),
  ('00000000-0000-4000-a000-000032844793', 'der Zug', 'القطار', 'train', 'der', 'die Züge', 'noun', 'Der Zug kommt um 10 Uhr an.', 'The train arrives at 10 o''clock.', 'A1', 2),
  ('00000000-0000-4000-a000-000032844793', 'das Ticket', 'التذكرة', 'ticket', 'das', 'die Tickets', 'noun', 'Ein Ticket nach Berlin, bitte.', 'A ticket to Berlin, please.', 'A1', 3),
  ('00000000-0000-4000-a000-000032844793', 'der Bahnhof', 'محطة القطار', 'train station', 'der', 'die Bahnhöfe', 'noun', 'Der Bahnhof ist groß.', 'The train station is big.', 'A1', 4),
  ('00000000-0000-4000-a000-000032844793', 'der Flughafen', 'المطار', 'airport', 'der', 'die Flughäfen', 'noun', 'Ich fahre zum Flughafen.', 'I drive to the airport.', 'A1', 5),
  ('00000000-0000-4000-a000-000032844793', 'das Hotel', 'الفندق', 'hotel', 'das', 'die Hotels', 'noun', 'Das Hotel ist günstig.', 'The hotel is affordable.', 'A1', 6),
  ('00000000-0000-4000-a000-000032844793', 'der Pass', 'جواز السفر', 'passport', 'der', 'die Pässe', 'noun', 'Ich brauche meinen Pass.', 'I need my passport.', 'A1', 7),
  ('00000000-0000-4000-a000-000032844793', 'der Koffer', 'الحقيبة', 'suitcase', 'der', 'die Koffer', 'noun', 'Mein Koffer ist schwer.', 'My suitcase is heavy.', 'A1', 8),
  ('00000000-0000-4000-a000-000032844793', 'der Beruf', 'المهنة', 'profession', 'der', 'die Berufe', 'noun', 'Was ist dein Beruf?', 'What is your profession?', 'A1', 9),
  ('00000000-0000-4000-a000-000032844793', 'die Firma', 'الشركة', 'company', 'die', 'die Firmen', 'noun', 'Die Firma ist in Berlin.', 'The company is in Berlin.', 'A1', 10),
  ('00000000-0000-4000-a000-000032844793', 'der Kollege', 'الزميل', 'colleague', 'der', 'die Kollegen', 'noun', 'Mein Kollege hilft mir.', 'My colleague helps me.', 'A1', 11),
  ('00000000-0000-4000-a000-000032844793', 'das Büro', 'المكتب', 'office', 'das', 'die Büros', 'noun', 'Das Büro ist im dritten Stock.', 'The office is on the third floor.', 'A1', 12),
  ('00000000-0000-4000-a000-000032844793', 'die Besprechung', 'الاجتماع', 'meeting', 'die', 'die Besprechungen', 'noun', 'Wir haben eine Besprechung.', 'We have a meeting.', 'B1', 13),
  ('00000000-0000-4000-a000-000032844793', 'der Chef', 'المدير', 'boss', 'der', 'die Chefs', 'noun', 'Mein Chef ist freundlich.', 'My boss is friendly.', 'A1', 14),
  ('00000000-0000-4000-a000-000032844793', 'das Gehalt', 'الراتب', 'salary', 'das', 'die Gehälter', 'noun', 'Das Gehalt ist gut.', 'The salary is good.', 'B1', 15),
  ('00000000-0000-4000-a000-000032844793', 'die Stelle', 'الوظيفة', 'position', 'die', 'die Stellen', 'noun', 'Ich suche eine neue Stelle.', 'I am looking for a new position.', 'B1', 16),
  ('00000000-0000-4000-a000-000032844793', 'die Schule', 'المدرسة', 'school', 'die', 'die Schulen', 'noun', 'Die Kinder gehen zur Schule.', 'The children go to school.', 'A1', 17),
  ('00000000-0000-4000-a000-000032844793', 'der Lehrer', 'المعلم', 'teacher', 'der', 'die Lehrer', 'noun', 'Der Lehrer erklärt die Grammatik.', 'The teacher explains the grammar.', 'A1', 18),
  ('00000000-0000-4000-a000-000032844793', 'der Student', 'الطالب', 'student', 'der', 'die Studenten', 'noun', 'Der Student lernt Deutsch.', 'The student learns German.', 'A1', 19),
  ('00000000-0000-4000-a000-000032844793', 'die Universität', 'الجامعة', 'university', 'die', 'die Universitäten', 'noun', 'Die Universität ist alt.', 'The university is old.', 'B1', 20),
  ('00000000-0000-4000-a000-000032844793', 'der Kurs', 'الدورة', 'course', 'der', 'die Kurse', 'noun', 'Der Kurs kostet 200 Euro.', 'The course costs 200 euros.', 'A2', 21),
  ('00000000-0000-4000-a000-000032844793', 'die Prüfung', 'الامتحان', 'exam', 'die', 'die Prüfungen', 'noun', 'Die Prüfung ist schwer.', 'The exam is difficult.', 'B1', 22),
  ('00000000-0000-4000-a000-000032844793', 'das Studium', 'الدراسة الجامعية', 'studies', 'das', NULL, 'noun', 'Mein Studium dauert vier Jahre.', 'My studies take four years.', 'B1', 23),
  ('00000000-0000-4000-a000-000032844793', 'lernen', 'يتعلم', 'to learn', NULL, NULL, 'verb', 'Ich lerne Deutsch.', 'I learn German.', 'A1', 24),
  ('00000000-0000-4000-a000-000032844793', 'die Zeitung', 'الجريدة', 'newspaper', 'die', 'die Zeitungen', 'noun', 'Ich lese die Zeitung.', 'I read the newspaper.', 'A2', 25),
  ('00000000-0000-4000-a000-000032844793', 'das Internet', 'الإنترنت', 'internet', 'das', NULL, 'noun', 'Das Internet ist schnell.', 'The internet is fast.', 'A2', 26),
  ('00000000-0000-4000-a000-000032844793', 'der Artikel', 'المقال', 'article', 'der', 'die Artikel', 'noun', 'Der Artikel ist interessant.', 'The article is interesting.', 'B1', 27),
  ('00000000-0000-4000-a000-000032844793', 'die Nachricht', 'الخبر', 'news', 'die', 'die Nachrichten', 'noun', 'Ich sehe die Nachrichten.', 'I watch the news.', 'A2', 28),
  ('00000000-0000-4000-a000-000032844793', 'das Radio', 'الراديو', 'radio', 'das', 'die Radios', 'noun', 'Ich höre Radio.', 'I listen to the radio.', 'A2', 29),
  ('00000000-0000-4000-a000-000032844793', 'das Fernsehen', 'التلفاز', 'television', 'das', NULL, 'noun', 'Das Fernsehen läuft.', 'The television is on.', 'A2', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000032844793', 'Präsens der regelmäßigen Verben (Present Tense) / المضارع للأفعال المنتظمة', 'In German, regular verbs follow a consistent pattern. The infinitive ends in -en. Remove the -en and add the personal endings: ich -e, du -st, er/sie/es -t, wir -en, ihr -t, sie/Sie -en. For most Arabic speakers, this is easier than Arabic verb conjugation because German has fewer forms.', '[{"rule":"ich: stem + e","note":"Ich lerne, ich wohne, ich arbeite"},{"rule":"du: stem + st","note":"Du lernst, du wohnst, du arbeitest"},{"rule":"er/sie/es: stem + t","note":"Er lernt, sie wohnt, es arbeitet"},{"rule":"wir: stem + en","note":"Wir lernen, wir wohnen, wir arbeiten"},{"rule":"ihr: stem + t","note":"Ihr lernt, ihr wohnt, ihr arbeitet"},{"rule":"sie/Sie: stem + en","note":"Sie lernen, Sie wohnen"}]', '[{"german":"Ich lerne Deutsch.","arabic":"أنا أتعلم الألمانية.","english":"I am learning German."},{"german":"Du wohnst in Berlin.","arabic":"أنت تسكن في برلين.","english":"You live in Berlin."},{"german":"Er arbeitet bei Siemens.","arabic":"هو يعمل في سيمنز.","english":"He works at Siemens."}]', '[{"mistake":"Ich lernen Deutsch","correction":"Ich lerne Deutsch","explanation":"After \"ich\" we use the stem + e, not the infinitive."},{"mistake":"Er lerne Deutsch","correction":"Er lernt Deutsch","explanation":"After \"er/sie/es\" we add -t, not -e."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000032844793', 'multiple_choice', 'What does "die Reise" mean?', '["The","A","This","That"]', 'The', 'This is a basic vocabulary item.', 1, 1),
  ('00000000-0000-4000-a000-000032844793', 'fill_gap', 'Complete with the correct form.', '["Option 1","Option 2","Option 3"]', 'Option 1', 'Practice grammar in context.', 1, 2),
  ('00000000-0000-4000-a000-000032844793', 'translation', 'Translate: "I learn German."', '["Ich lerne Deutsch.","Ich lerne Englisch.","Ich lerne Spanisch."]', 'Ich lerne Deutsch.', 'Ich = I, lerne = learn/learning, Deutsch = German.', 2, 3),
  ('00000000-0000-4000-a000-000032844793', 'sentence_order', 'Order the sentence.', '[]', 'Ich lerne Deutsch.', 'Subject + verb + object in German.', 2, 4),
  ('00000000-0000-4000-a000-000032844793', 'matching', 'Match the words with their meanings.', '["Match pairs correctly"]', 'Correct pairs', 'Test your vocabulary knowledge.', 2, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-000032844793', 'multiple_choice', 'What is the main topic of this lesson?', '["DACH Landmarks","Sports","Music","Travel"]', 'DACH Landmarks', 1, 1),
  ('00000000-0000-4000-a000-000032844793', 'true_false', 'This lesson teaches vocabulary about DACH Landmarks.', '["True","False"]', 'True', 1, 2),
  ('00000000-0000-4000-a000-000032844793', 'true_false', 'German word order is always the same as English.', '["True","False"]', 'False', 1, 3),
  ('00000000-0000-4000-a000-000032844793', 'multiple_choice', 'How do you say "please" in German?', '["Danke","Bitte","Tschüss","Hallo"]', 'Bitte', 1, 4),
  ('00000000-0000-4000-a000-000032844793', 'multiple_choice', 'Which article is feminine?', '["der","die","das","den"]', 'die', 1, 5),
  ('00000000-0000-4000-a000-000032844793', 'fill_blank', 'Ich ___ (to be) Student.', '["bin","bist","ist","sind"]', 'bin', 1, 6),
  ('00000000-0000-4000-a000-000032844793', 'multiple_choice', 'What is the correct word order?', '["Ich lerne Deutsch","Ich Deutsch lerne","Lerne ich Deutsch","Deutsch ich lerne"]', 'Ich lerne Deutsch', 1, 7),
  ('00000000-0000-4000-a000-000032844793', 'true_false', 'All German nouns are capitalized.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-000032844793', 'multiple_choice', 'How do you say "thank you" in German?', '["Bitte","Danke","Tschüss","Hallo"]', 'Danke', 1, 9),
  ('00000000-0000-4000-a000-000032844793', 'fill_blank', 'Wo ___ du? (to live)', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 1, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-000032844793', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Reisen, Kultur und interkulturelle Kompetenz', 'formal', false, 1),
  ('00000000-0000-4000-a000-000032844793', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Reisen, Kultur und interkulturelle Kompetenz', 'informal', false, 2),
  ('00000000-0000-4000-a000-000032844793', 'Bitte!', 'Please!', 'من فضلك!', 'Used in Reisen, Kultur und interkulturelle Kompetenz', 'neutral', false, 3),
  ('00000000-0000-4000-a000-000032844793', 'Danke!', 'Thanks!', 'شكراً!', 'Used in Reisen, Kultur und interkulturelle Kompetenz', 'neutral', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-000032844793', 'Hallo', 'Hello', 'Greeting', 'expression', 1),
  ('00000000-0000-4000-a000-000032844793', 'Danke', 'Thanks', 'Politeness', 'expression', 2),
  ('00000000-0000-4000-a000-000032844793', 'Bitte', 'Please', 'Politeness', 'expression', 3),
  ('00000000-0000-4000-a000-000032844793', 'Tschüss', 'Bye', 'Farewell', 'expression', 4);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-000032844793', 'Sehenswürdigkeiten in DACH — Leseübung', 'Nächste Woche mache ich eine Reise nach München. Ich fahre mit dem Zug. Ich kaufe ein Ticket am Bahnhof. Der Zug fährt um 8 Uhr ab. Die Fahrt dauert 4 Stunden. In München besuche ich meine Tante. Sie wohnt in der Nähe des Hauptbahnhofs. Wir gehen zusammen in ein Restaurant. Dann besuchen wir das Deutsche Museum. Die Reise wird schön.', 'Next week I am taking a trip to Munich. I am going by train. I buy a ticket at the train station. The train departs at 8 o''clock. The journey takes 4 hours. In Munich I visit my aunt. She lives near the main train station. We go to a restaurant together. Then we visit the German Museum. The trip will be nice.', 'الأسبوع القادم سأسافر إلى ميونخ. سأذهب بالقطار. أشتري تذكرة من محطة القطار. القطار يغادر في الساعة 8. الرحلة تستغرق 4 ساعات. في ميونخ أزور عمتي. تسكن بالقرب من المحطة الرئيسية. نذهب معاً إلى مطعم. ثم نزور المتحف الألماني. الرحلة ستكون جميلة.', 60, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, duration_seconds, speaker_count, scenario) values
  ('00000000-0000-4000-a000-000032844793', 'Sehenswürdigkeiten in DACH — Hörverständnis', '[Kunde]: Guten Tag! Ich möchte eine Fahrkarte nach München kaufen.

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

[Mitarbeiter]: إذاً التكلفة 73.50 يورو. القطار يغادر في الساعة 10.', 72, 2, 'Reisen, Kultur und interkulturelle Kompetenz');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-000032844793', 'Speaking: Sehenswürdigkeiten in DACH', 'Practice talking about DACH Landmarks. Answer questions and have a simple conversation.', 'DACH Landmarks', ARRAY['Use full sentences','Speak clearly','Don''t worry about mistakes']::text[], ARRAY['die Reise','der Zug','das Ticket','der Bahnhof','der Flughafen']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-000032844793', 'Writing: Sehenswürdigkeiten in DACH', 'Write a short text about DACH Landmarks. Use at least 5 vocabulary words from this lesson.', ARRAY['Start with a greeting','Use the vocabulary from this lesson','Check your grammar']::text[], ARRAY['die Reise','der Zug','das Ticket']::text[], '["Sentence structure","Vocabulary usage"]', 50, 150, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000032844793', 'Sehenswürdigkeiten in DACH — Roleplay', 'DACH Landmarks', 'Student', 'Teacher', 'Practice conversation about DACH Landmarks', 'Hallo! Lass uns über dieses Thema sprechen.', 'intermediate', 1, ARRAY['die Reise','der Zug','das Ticket','der Bahnhof','der Flughafen','das Hotel','der Pass','der Koffer']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000032844793', 'Sehenswürdigkeiten in DACH — Advanced Roleplay', 'DACH Landmarks', 'Customer', 'Assistant', 'Extended conversation about DACH Landmarks', 'Guten Tag! Wie kann ich Ihnen helfen?', 'intermediate', 2, ARRAY['die Reise','der Zug','das Ticket','der Bahnhof','der Flughafen','das Hotel','der Pass','der Koffer']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-000032844793', 'Sehenswürdigkeiten in DACH — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Sehenswürdigkeiten in DACH".', 'Creative practice for DACH Landmarks', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-000032844793', 'Homework: Sehenswürdigkeiten in DACH', 'Complete these tasks to reinforce "Sehenswürdigkeiten in DACH".', 'mixed', '[{"description":"Review all vocabulary from this lesson"},{"description":"Write 5 sentences using the grammar structure"},{"description":"Practice the dialogue aloud"}]', 35, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-000032844793', 'In this lesson you learned about DACH Landmarks. You practiced vocabulary related to travel and grammar structure present_tense.', '["Mastered vocabulary about DACH Landmarks","Applied present_tense correctly","Read and understood a text about DACH Landmarks","Practiced speaking about DACH Landmarks"]', '[{"title":"Sehenswürdigkeiten in DACH Review","summary":"present_tense — the main grammar focus of this lesson."}]', ARRAY['DACH Landmarks core vocabulary','travel key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)','Verb is always in second position']::text[], ARRAY['Practice 15-20 minutes daily','Use new vocabulary in real sentences','Speak out loud to improve pronunciation']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000032844793', 'translation', 'Translate to German: "This is a translation exercise."', '[]', 'Das ist eine Übersetzungsübung.', 'Use "das ist" for "this is"', 1, 40);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000032844793', 'Culture: DACH Landmarks in German-Speaking Countries', 'Learn how DACH Landmarks is approached in German culture.

تعلم كيف يتم التعامل مع DACH Landmarks في الثقافة الألمانية.', '["Tip: Be direct and polite","Tip: Use formal language with strangers","Tip: Respect punctuality"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000032844793', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Common error for Arabic speakers","correction":"Correct version","explanation":"Explanation of the error"}]', 30);

  -- Lesson 4: Je...desto Sätze (L-B1-06-04)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-000032844792', '00000000-0000-4000-a000-000039c2eae4', 'Je...desto Sätze', 'Learn comparative sentences with je...desto.', 'Comparative Sentences', 'grammar', '["Understand and use vocabulary related to Comparative Sentences","Apply present_tense correctly","Read and comprehend a text about Comparative Sentences","Listen and understand a dialogue about Comparative Sentences","Speak about Comparative Sentences in simple sentences","Write a short text about Comparative Sentences"]', 45, 4, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-000032844792', 'die Reise', 'الرحلة', 'trip', 'die', 'die Reisen', 'noun', 'Die Reise nach München war schön.', 'The trip to Munich was nice.', 'A1', 1),
  ('00000000-0000-4000-a000-000032844792', 'der Zug', 'القطار', 'train', 'der', 'die Züge', 'noun', 'Der Zug kommt um 10 Uhr an.', 'The train arrives at 10 o''clock.', 'A1', 2),
  ('00000000-0000-4000-a000-000032844792', 'das Ticket', 'التذكرة', 'ticket', 'das', 'die Tickets', 'noun', 'Ein Ticket nach Berlin, bitte.', 'A ticket to Berlin, please.', 'A1', 3),
  ('00000000-0000-4000-a000-000032844792', 'der Bahnhof', 'محطة القطار', 'train station', 'der', 'die Bahnhöfe', 'noun', 'Der Bahnhof ist groß.', 'The train station is big.', 'A1', 4),
  ('00000000-0000-4000-a000-000032844792', 'der Flughafen', 'المطار', 'airport', 'der', 'die Flughäfen', 'noun', 'Ich fahre zum Flughafen.', 'I drive to the airport.', 'A1', 5),
  ('00000000-0000-4000-a000-000032844792', 'das Hotel', 'الفندق', 'hotel', 'das', 'die Hotels', 'noun', 'Das Hotel ist günstig.', 'The hotel is affordable.', 'A1', 6),
  ('00000000-0000-4000-a000-000032844792', 'der Pass', 'جواز السفر', 'passport', 'der', 'die Pässe', 'noun', 'Ich brauche meinen Pass.', 'I need my passport.', 'A1', 7),
  ('00000000-0000-4000-a000-000032844792', 'der Koffer', 'الحقيبة', 'suitcase', 'der', 'die Koffer', 'noun', 'Mein Koffer ist schwer.', 'My suitcase is heavy.', 'A1', 8),
  ('00000000-0000-4000-a000-000032844792', 'der Beruf', 'المهنة', 'profession', 'der', 'die Berufe', 'noun', 'Was ist dein Beruf?', 'What is your profession?', 'A1', 9),
  ('00000000-0000-4000-a000-000032844792', 'die Firma', 'الشركة', 'company', 'die', 'die Firmen', 'noun', 'Die Firma ist in Berlin.', 'The company is in Berlin.', 'A1', 10),
  ('00000000-0000-4000-a000-000032844792', 'der Kollege', 'الزميل', 'colleague', 'der', 'die Kollegen', 'noun', 'Mein Kollege hilft mir.', 'My colleague helps me.', 'A1', 11),
  ('00000000-0000-4000-a000-000032844792', 'das Büro', 'المكتب', 'office', 'das', 'die Büros', 'noun', 'Das Büro ist im dritten Stock.', 'The office is on the third floor.', 'A1', 12),
  ('00000000-0000-4000-a000-000032844792', 'die Besprechung', 'الاجتماع', 'meeting', 'die', 'die Besprechungen', 'noun', 'Wir haben eine Besprechung.', 'We have a meeting.', 'B1', 13),
  ('00000000-0000-4000-a000-000032844792', 'der Chef', 'المدير', 'boss', 'der', 'die Chefs', 'noun', 'Mein Chef ist freundlich.', 'My boss is friendly.', 'A1', 14),
  ('00000000-0000-4000-a000-000032844792', 'das Gehalt', 'الراتب', 'salary', 'das', 'die Gehälter', 'noun', 'Das Gehalt ist gut.', 'The salary is good.', 'B1', 15),
  ('00000000-0000-4000-a000-000032844792', 'die Stelle', 'الوظيفة', 'position', 'die', 'die Stellen', 'noun', 'Ich suche eine neue Stelle.', 'I am looking for a new position.', 'B1', 16),
  ('00000000-0000-4000-a000-000032844792', 'die Schule', 'المدرسة', 'school', 'die', 'die Schulen', 'noun', 'Die Kinder gehen zur Schule.', 'The children go to school.', 'A1', 17),
  ('00000000-0000-4000-a000-000032844792', 'der Lehrer', 'المعلم', 'teacher', 'der', 'die Lehrer', 'noun', 'Der Lehrer erklärt die Grammatik.', 'The teacher explains the grammar.', 'A1', 18),
  ('00000000-0000-4000-a000-000032844792', 'der Student', 'الطالب', 'student', 'der', 'die Studenten', 'noun', 'Der Student lernt Deutsch.', 'The student learns German.', 'A1', 19),
  ('00000000-0000-4000-a000-000032844792', 'die Universität', 'الجامعة', 'university', 'die', 'die Universitäten', 'noun', 'Die Universität ist alt.', 'The university is old.', 'B1', 20),
  ('00000000-0000-4000-a000-000032844792', 'der Kurs', 'الدورة', 'course', 'der', 'die Kurse', 'noun', 'Der Kurs kostet 200 Euro.', 'The course costs 200 euros.', 'A2', 21),
  ('00000000-0000-4000-a000-000032844792', 'die Prüfung', 'الامتحان', 'exam', 'die', 'die Prüfungen', 'noun', 'Die Prüfung ist schwer.', 'The exam is difficult.', 'B1', 22),
  ('00000000-0000-4000-a000-000032844792', 'das Studium', 'الدراسة الجامعية', 'studies', 'das', NULL, 'noun', 'Mein Studium dauert vier Jahre.', 'My studies take four years.', 'B1', 23),
  ('00000000-0000-4000-a000-000032844792', 'lernen', 'يتعلم', 'to learn', NULL, NULL, 'verb', 'Ich lerne Deutsch.', 'I learn German.', 'A1', 24),
  ('00000000-0000-4000-a000-000032844792', 'die Zeitung', 'الجريدة', 'newspaper', 'die', 'die Zeitungen', 'noun', 'Ich lese die Zeitung.', 'I read the newspaper.', 'A2', 25),
  ('00000000-0000-4000-a000-000032844792', 'das Internet', 'الإنترنت', 'internet', 'das', NULL, 'noun', 'Das Internet ist schnell.', 'The internet is fast.', 'A2', 26),
  ('00000000-0000-4000-a000-000032844792', 'der Artikel', 'المقال', 'article', 'der', 'die Artikel', 'noun', 'Der Artikel ist interessant.', 'The article is interesting.', 'B1', 27),
  ('00000000-0000-4000-a000-000032844792', 'die Nachricht', 'الخبر', 'news', 'die', 'die Nachrichten', 'noun', 'Ich sehe die Nachrichten.', 'I watch the news.', 'A2', 28),
  ('00000000-0000-4000-a000-000032844792', 'das Radio', 'الراديو', 'radio', 'das', 'die Radios', 'noun', 'Ich höre Radio.', 'I listen to the radio.', 'A2', 29),
  ('00000000-0000-4000-a000-000032844792', 'das Fernsehen', 'التلفاز', 'television', 'das', NULL, 'noun', 'Das Fernsehen läuft.', 'The television is on.', 'A2', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000032844792', 'Präsens der regelmäßigen Verben (Present Tense) / المضارع للأفعال المنتظمة', 'In German, regular verbs follow a consistent pattern. The infinitive ends in -en. Remove the -en and add the personal endings: ich -e, du -st, er/sie/es -t, wir -en, ihr -t, sie/Sie -en. For most Arabic speakers, this is easier than Arabic verb conjugation because German has fewer forms.', '[{"rule":"ich: stem + e","note":"Ich lerne, ich wohne, ich arbeite"},{"rule":"du: stem + st","note":"Du lernst, du wohnst, du arbeitest"},{"rule":"er/sie/es: stem + t","note":"Er lernt, sie wohnt, es arbeitet"},{"rule":"wir: stem + en","note":"Wir lernen, wir wohnen, wir arbeiten"},{"rule":"ihr: stem + t","note":"Ihr lernt, ihr wohnt, ihr arbeitet"},{"rule":"sie/Sie: stem + en","note":"Sie lernen, Sie wohnen"}]', '[{"german":"Ich lerne Deutsch.","arabic":"أنا أتعلم الألمانية.","english":"I am learning German."},{"german":"Du wohnst in Berlin.","arabic":"أنت تسكن في برلين.","english":"You live in Berlin."},{"german":"Er arbeitet bei Siemens.","arabic":"هو يعمل في سيمنز.","english":"He works at Siemens."}]', '[{"mistake":"Ich lernen Deutsch","correction":"Ich lerne Deutsch","explanation":"After \"ich\" we use the stem + e, not the infinitive."},{"mistake":"Er lerne Deutsch","correction":"Er lernt Deutsch","explanation":"After \"er/sie/es\" we add -t, not -e."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000032844792', 'multiple_choice', 'What does "die Reise" mean?', '["The","A","This","That"]', 'The', 'This is a basic vocabulary item.', 1, 1),
  ('00000000-0000-4000-a000-000032844792', 'fill_gap', 'Complete with the correct form.', '["Option 1","Option 2","Option 3"]', 'Option 1', 'Practice grammar in context.', 1, 2),
  ('00000000-0000-4000-a000-000032844792', 'translation', 'Translate: "I learn German."', '["Ich lerne Deutsch.","Ich lerne Englisch.","Ich lerne Spanisch."]', 'Ich lerne Deutsch.', 'Ich = I, lerne = learn/learning, Deutsch = German.', 2, 3),
  ('00000000-0000-4000-a000-000032844792', 'sentence_order', 'Order the sentence.', '[]', 'Ich lerne Deutsch.', 'Subject + verb + object in German.', 2, 4),
  ('00000000-0000-4000-a000-000032844792', 'matching', 'Match the words with their meanings.', '["Match pairs correctly"]', 'Correct pairs', 'Test your vocabulary knowledge.', 2, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-000032844792', 'multiple_choice', 'What is the main topic of this lesson?', '["Comparative Sentences","Sports","Music","Travel"]', 'Comparative Sentences', 1, 1),
  ('00000000-0000-4000-a000-000032844792', 'true_false', 'This lesson teaches vocabulary about Comparative Sentences.', '["True","False"]', 'True', 1, 2),
  ('00000000-0000-4000-a000-000032844792', 'true_false', 'German word order is always the same as English.', '["True","False"]', 'False', 1, 3),
  ('00000000-0000-4000-a000-000032844792', 'multiple_choice', 'How do you say "please" in German?', '["Danke","Bitte","Tschüss","Hallo"]', 'Bitte', 1, 4),
  ('00000000-0000-4000-a000-000032844792', 'multiple_choice', 'Which article is feminine?', '["der","die","das","den"]', 'die', 1, 5),
  ('00000000-0000-4000-a000-000032844792', 'fill_blank', 'Ich ___ (to be) Student.', '["bin","bist","ist","sind"]', 'bin', 1, 6),
  ('00000000-0000-4000-a000-000032844792', 'multiple_choice', 'What is the correct word order?', '["Ich lerne Deutsch","Ich Deutsch lerne","Lerne ich Deutsch","Deutsch ich lerne"]', 'Ich lerne Deutsch', 1, 7),
  ('00000000-0000-4000-a000-000032844792', 'true_false', 'All German nouns are capitalized.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-000032844792', 'multiple_choice', 'How do you say "thank you" in German?', '["Bitte","Danke","Tschüss","Hallo"]', 'Danke', 1, 9),
  ('00000000-0000-4000-a000-000032844792', 'fill_blank', 'Wo ___ du? (to live)', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 1, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-000032844792', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Reisen, Kultur und interkulturelle Kompetenz', 'formal', false, 1),
  ('00000000-0000-4000-a000-000032844792', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Reisen, Kultur und interkulturelle Kompetenz', 'informal', false, 2),
  ('00000000-0000-4000-a000-000032844792', 'Bitte!', 'Please!', 'من فضلك!', 'Used in Reisen, Kultur und interkulturelle Kompetenz', 'neutral', false, 3),
  ('00000000-0000-4000-a000-000032844792', 'Danke!', 'Thanks!', 'شكراً!', 'Used in Reisen, Kultur und interkulturelle Kompetenz', 'neutral', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-000032844792', 'Hallo', 'Hello', 'Greeting', 'expression', 1),
  ('00000000-0000-4000-a000-000032844792', 'Danke', 'Thanks', 'Politeness', 'expression', 2),
  ('00000000-0000-4000-a000-000032844792', 'Bitte', 'Please', 'Politeness', 'expression', 3),
  ('00000000-0000-4000-a000-000032844792', 'Tschüss', 'Bye', 'Farewell', 'expression', 4);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-000032844792', 'Je...desto Sätze — Leseübung', 'Nächste Woche mache ich eine Reise nach München. Ich fahre mit dem Zug. Ich kaufe ein Ticket am Bahnhof. Der Zug fährt um 8 Uhr ab. Die Fahrt dauert 4 Stunden. In München besuche ich meine Tante. Sie wohnt in der Nähe des Hauptbahnhofs. Wir gehen zusammen in ein Restaurant. Dann besuchen wir das Deutsche Museum. Die Reise wird schön.', 'Next week I am taking a trip to Munich. I am going by train. I buy a ticket at the train station. The train departs at 8 o''clock. The journey takes 4 hours. In Munich I visit my aunt. She lives near the main train station. We go to a restaurant together. Then we visit the German Museum. The trip will be nice.', 'الأسبوع القادم سأسافر إلى ميونخ. سأذهب بالقطار. أشتري تذكرة من محطة القطار. القطار يغادر في الساعة 8. الرحلة تستغرق 4 ساعات. في ميونخ أزور عمتي. تسكن بالقرب من المحطة الرئيسية. نذهب معاً إلى مطعم. ثم نزور المتحف الألماني. الرحلة ستكون جميلة.', 60, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, duration_seconds, speaker_count, scenario) values
  ('00000000-0000-4000-a000-000032844792', 'Je...desto Sätze — Hörverständnis', '[Kunde]: Guten Tag! Ich möchte eine Fahrkarte nach München kaufen.

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

[Mitarbeiter]: إذاً التكلفة 73.50 يورو. القطار يغادر في الساعة 10.', 72, 2, 'Reisen, Kultur und interkulturelle Kompetenz');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-000032844792', 'Speaking: Je...desto Sätze', 'Practice talking about Comparative Sentences. Answer questions and have a simple conversation.', 'Comparative Sentences', ARRAY['Use full sentences','Speak clearly','Don''t worry about mistakes']::text[], ARRAY['die Reise','der Zug','das Ticket','der Bahnhof','der Flughafen']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-000032844792', 'Writing: Je...desto Sätze', 'Write a short text about Comparative Sentences. Use at least 5 vocabulary words from this lesson.', ARRAY['Start with a greeting','Use the vocabulary from this lesson','Check your grammar']::text[], ARRAY['die Reise','der Zug','das Ticket']::text[], '["Sentence structure","Vocabulary usage"]', 50, 150, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000032844792', 'Je...desto Sätze — Roleplay', 'Comparative Sentences', 'Student', 'Teacher', 'Practice conversation about Comparative Sentences', 'Hallo! Lass uns über dieses Thema sprechen.', 'intermediate', 1, ARRAY['die Reise','der Zug','das Ticket','der Bahnhof','der Flughafen','das Hotel','der Pass','der Koffer']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000032844792', 'Je...desto Sätze — Advanced Roleplay', 'Comparative Sentences', 'Customer', 'Assistant', 'Extended conversation about Comparative Sentences', 'Guten Tag! Wie kann ich Ihnen helfen?', 'intermediate', 2, ARRAY['die Reise','der Zug','das Ticket','der Bahnhof','der Flughafen','das Hotel','der Pass','der Koffer']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-000032844792', 'Je...desto Sätze — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Je...desto Sätze".', 'Creative practice for Comparative Sentences', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-000032844792', 'Homework: Je...desto Sätze', 'Complete these tasks to reinforce "Je...desto Sätze".', 'mixed', '[{"description":"Review all vocabulary from this lesson"},{"description":"Write 5 sentences using the grammar structure"},{"description":"Practice the dialogue aloud"}]', 35, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-000032844792', 'In this lesson you learned about Comparative Sentences. You practiced vocabulary related to travel and grammar structure present_tense.', '["Mastered vocabulary about Comparative Sentences","Applied present_tense correctly","Read and understood a text about Comparative Sentences","Practiced speaking about Comparative Sentences"]', '[{"title":"Je...desto Sätze Review","summary":"present_tense — the main grammar focus of this lesson."}]', ARRAY['Comparative Sentences core vocabulary','travel key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)','Verb is always in second position']::text[], ARRAY['Practice 15-20 minutes daily','Use new vocabulary in real sentences','Speak out loud to improve pronunciation']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000032844792', 'translation', 'Translate to German: "This is a translation exercise."', '[]', 'Das ist eine Übersetzungsübung.', 'Use "das ist" for "this is"', 1, 40);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000032844792', 'Culture: Comparative Sentences in German-Speaking Countries', 'Learn how Comparative Sentences is approached in German culture.

تعلم كيف يتم التعامل مع Comparative Sentences في الثقافة الألمانية.', '["Tip: Be direct and polite","Tip: Use formal language with strangers","Tip: Respect punctuality"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000032844792', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Common error for Arabic speakers","correction":"Correct version","explanation":"Explanation of the error"}]', 30);

  -- Lesson 5: B1 Abschlusstest (L-B1-06-05)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-000032844791', '00000000-0000-4000-a000-000039c2eae4', 'B1 Abschlusstest', 'Comprehensive B1 level test.', 'Level Test', 'test', '["Understand and use vocabulary related to Level Test","Apply present_tense correctly","Read and comprehend a text about Level Test","Listen and understand a dialogue about Level Test","Speak about Level Test in simple sentences","Write a short text about Level Test"]', 60, 5, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-000032844791', 'die Reise', 'الرحلة', 'trip', 'die', 'die Reisen', 'noun', 'Die Reise nach München war schön.', 'The trip to Munich was nice.', 'A1', 1),
  ('00000000-0000-4000-a000-000032844791', 'der Zug', 'القطار', 'train', 'der', 'die Züge', 'noun', 'Der Zug kommt um 10 Uhr an.', 'The train arrives at 10 o''clock.', 'A1', 2),
  ('00000000-0000-4000-a000-000032844791', 'das Ticket', 'التذكرة', 'ticket', 'das', 'die Tickets', 'noun', 'Ein Ticket nach Berlin, bitte.', 'A ticket to Berlin, please.', 'A1', 3),
  ('00000000-0000-4000-a000-000032844791', 'der Bahnhof', 'محطة القطار', 'train station', 'der', 'die Bahnhöfe', 'noun', 'Der Bahnhof ist groß.', 'The train station is big.', 'A1', 4),
  ('00000000-0000-4000-a000-000032844791', 'der Flughafen', 'المطار', 'airport', 'der', 'die Flughäfen', 'noun', 'Ich fahre zum Flughafen.', 'I drive to the airport.', 'A1', 5),
  ('00000000-0000-4000-a000-000032844791', 'das Hotel', 'الفندق', 'hotel', 'das', 'die Hotels', 'noun', 'Das Hotel ist günstig.', 'The hotel is affordable.', 'A1', 6),
  ('00000000-0000-4000-a000-000032844791', 'der Pass', 'جواز السفر', 'passport', 'der', 'die Pässe', 'noun', 'Ich brauche meinen Pass.', 'I need my passport.', 'A1', 7),
  ('00000000-0000-4000-a000-000032844791', 'der Koffer', 'الحقيبة', 'suitcase', 'der', 'die Koffer', 'noun', 'Mein Koffer ist schwer.', 'My suitcase is heavy.', 'A1', 8),
  ('00000000-0000-4000-a000-000032844791', 'der Beruf', 'المهنة', 'profession', 'der', 'die Berufe', 'noun', 'Was ist dein Beruf?', 'What is your profession?', 'A1', 9),
  ('00000000-0000-4000-a000-000032844791', 'die Firma', 'الشركة', 'company', 'die', 'die Firmen', 'noun', 'Die Firma ist in Berlin.', 'The company is in Berlin.', 'A1', 10),
  ('00000000-0000-4000-a000-000032844791', 'der Kollege', 'الزميل', 'colleague', 'der', 'die Kollegen', 'noun', 'Mein Kollege hilft mir.', 'My colleague helps me.', 'A1', 11),
  ('00000000-0000-4000-a000-000032844791', 'das Büro', 'المكتب', 'office', 'das', 'die Büros', 'noun', 'Das Büro ist im dritten Stock.', 'The office is on the third floor.', 'A1', 12),
  ('00000000-0000-4000-a000-000032844791', 'die Besprechung', 'الاجتماع', 'meeting', 'die', 'die Besprechungen', 'noun', 'Wir haben eine Besprechung.', 'We have a meeting.', 'B1', 13),
  ('00000000-0000-4000-a000-000032844791', 'der Chef', 'المدير', 'boss', 'der', 'die Chefs', 'noun', 'Mein Chef ist freundlich.', 'My boss is friendly.', 'A1', 14),
  ('00000000-0000-4000-a000-000032844791', 'das Gehalt', 'الراتب', 'salary', 'das', 'die Gehälter', 'noun', 'Das Gehalt ist gut.', 'The salary is good.', 'B1', 15),
  ('00000000-0000-4000-a000-000032844791', 'die Stelle', 'الوظيفة', 'position', 'die', 'die Stellen', 'noun', 'Ich suche eine neue Stelle.', 'I am looking for a new position.', 'B1', 16),
  ('00000000-0000-4000-a000-000032844791', 'die Schule', 'المدرسة', 'school', 'die', 'die Schulen', 'noun', 'Die Kinder gehen zur Schule.', 'The children go to school.', 'A1', 17),
  ('00000000-0000-4000-a000-000032844791', 'der Lehrer', 'المعلم', 'teacher', 'der', 'die Lehrer', 'noun', 'Der Lehrer erklärt die Grammatik.', 'The teacher explains the grammar.', 'A1', 18),
  ('00000000-0000-4000-a000-000032844791', 'der Student', 'الطالب', 'student', 'der', 'die Studenten', 'noun', 'Der Student lernt Deutsch.', 'The student learns German.', 'A1', 19),
  ('00000000-0000-4000-a000-000032844791', 'die Universität', 'الجامعة', 'university', 'die', 'die Universitäten', 'noun', 'Die Universität ist alt.', 'The university is old.', 'B1', 20),
  ('00000000-0000-4000-a000-000032844791', 'der Kurs', 'الدورة', 'course', 'der', 'die Kurse', 'noun', 'Der Kurs kostet 200 Euro.', 'The course costs 200 euros.', 'A2', 21),
  ('00000000-0000-4000-a000-000032844791', 'die Prüfung', 'الامتحان', 'exam', 'die', 'die Prüfungen', 'noun', 'Die Prüfung ist schwer.', 'The exam is difficult.', 'B1', 22),
  ('00000000-0000-4000-a000-000032844791', 'das Studium', 'الدراسة الجامعية', 'studies', 'das', NULL, 'noun', 'Mein Studium dauert vier Jahre.', 'My studies take four years.', 'B1', 23),
  ('00000000-0000-4000-a000-000032844791', 'lernen', 'يتعلم', 'to learn', NULL, NULL, 'verb', 'Ich lerne Deutsch.', 'I learn German.', 'A1', 24),
  ('00000000-0000-4000-a000-000032844791', 'die Zeitung', 'الجريدة', 'newspaper', 'die', 'die Zeitungen', 'noun', 'Ich lese die Zeitung.', 'I read the newspaper.', 'A2', 25),
  ('00000000-0000-4000-a000-000032844791', 'das Internet', 'الإنترنت', 'internet', 'das', NULL, 'noun', 'Das Internet ist schnell.', 'The internet is fast.', 'A2', 26),
  ('00000000-0000-4000-a000-000032844791', 'der Artikel', 'المقال', 'article', 'der', 'die Artikel', 'noun', 'Der Artikel ist interessant.', 'The article is interesting.', 'B1', 27),
  ('00000000-0000-4000-a000-000032844791', 'die Nachricht', 'الخبر', 'news', 'die', 'die Nachrichten', 'noun', 'Ich sehe die Nachrichten.', 'I watch the news.', 'A2', 28),
  ('00000000-0000-4000-a000-000032844791', 'das Radio', 'الراديو', 'radio', 'das', 'die Radios', 'noun', 'Ich höre Radio.', 'I listen to the radio.', 'A2', 29),
  ('00000000-0000-4000-a000-000032844791', 'das Fernsehen', 'التلفاز', 'television', 'das', NULL, 'noun', 'Das Fernsehen läuft.', 'The television is on.', 'A2', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000032844791', 'Präsens der regelmäßigen Verben (Present Tense) / المضارع للأفعال المنتظمة', 'In German, regular verbs follow a consistent pattern. The infinitive ends in -en. Remove the -en and add the personal endings: ich -e, du -st, er/sie/es -t, wir -en, ihr -t, sie/Sie -en. For most Arabic speakers, this is easier than Arabic verb conjugation because German has fewer forms.', '[{"rule":"ich: stem + e","note":"Ich lerne, ich wohne, ich arbeite"},{"rule":"du: stem + st","note":"Du lernst, du wohnst, du arbeitest"},{"rule":"er/sie/es: stem + t","note":"Er lernt, sie wohnt, es arbeitet"},{"rule":"wir: stem + en","note":"Wir lernen, wir wohnen, wir arbeiten"},{"rule":"ihr: stem + t","note":"Ihr lernt, ihr wohnt, ihr arbeitet"},{"rule":"sie/Sie: stem + en","note":"Sie lernen, Sie wohnen"}]', '[{"german":"Ich lerne Deutsch.","arabic":"أنا أتعلم الألمانية.","english":"I am learning German."},{"german":"Du wohnst in Berlin.","arabic":"أنت تسكن في برلين.","english":"You live in Berlin."},{"german":"Er arbeitet bei Siemens.","arabic":"هو يعمل في سيمنز.","english":"He works at Siemens."}]', '[{"mistake":"Ich lernen Deutsch","correction":"Ich lerne Deutsch","explanation":"After \"ich\" we use the stem + e, not the infinitive."},{"mistake":"Er lerne Deutsch","correction":"Er lernt Deutsch","explanation":"After \"er/sie/es\" we add -t, not -e."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000032844791', 'multiple_choice', 'What does "die Reise" mean?', '["The","A","This","That"]', 'The', 'This is a basic vocabulary item.', 1, 1),
  ('00000000-0000-4000-a000-000032844791', 'fill_gap', 'Complete with the correct form.', '["Option 1","Option 2","Option 3"]', 'Option 1', 'Practice grammar in context.', 1, 2),
  ('00000000-0000-4000-a000-000032844791', 'translation', 'Translate: "I learn German."', '["Ich lerne Deutsch.","Ich lerne Englisch.","Ich lerne Spanisch."]', 'Ich lerne Deutsch.', 'Ich = I, lerne = learn/learning, Deutsch = German.', 2, 3),
  ('00000000-0000-4000-a000-000032844791', 'sentence_order', 'Order the sentence.', '[]', 'Ich lerne Deutsch.', 'Subject + verb + object in German.', 2, 4),
  ('00000000-0000-4000-a000-000032844791', 'matching', 'Match the words with their meanings.', '["Match pairs correctly"]', 'Correct pairs', 'Test your vocabulary knowledge.', 2, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-000032844791', 'multiple_choice', 'What is the main topic of this lesson?', '["Level Test","Sports","Music","Travel"]', 'Level Test', 1, 1),
  ('00000000-0000-4000-a000-000032844791', 'true_false', 'This lesson teaches vocabulary about Level Test.', '["True","False"]', 'True', 1, 2),
  ('00000000-0000-4000-a000-000032844791', 'true_false', 'German word order is always the same as English.', '["True","False"]', 'False', 1, 3),
  ('00000000-0000-4000-a000-000032844791', 'multiple_choice', 'How do you say "please" in German?', '["Danke","Bitte","Tschüss","Hallo"]', 'Bitte', 1, 4),
  ('00000000-0000-4000-a000-000032844791', 'multiple_choice', 'Which article is feminine?', '["der","die","das","den"]', 'die', 1, 5),
  ('00000000-0000-4000-a000-000032844791', 'fill_blank', 'Ich ___ (to be) Student.', '["bin","bist","ist","sind"]', 'bin', 1, 6),
  ('00000000-0000-4000-a000-000032844791', 'multiple_choice', 'What is the correct word order?', '["Ich lerne Deutsch","Ich Deutsch lerne","Lerne ich Deutsch","Deutsch ich lerne"]', 'Ich lerne Deutsch', 1, 7),
  ('00000000-0000-4000-a000-000032844791', 'true_false', 'All German nouns are capitalized.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-000032844791', 'multiple_choice', 'How do you say "thank you" in German?', '["Bitte","Danke","Tschüss","Hallo"]', 'Danke', 1, 9),
  ('00000000-0000-4000-a000-000032844791', 'fill_blank', 'Wo ___ du? (to live)', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 1, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-000032844791', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Reisen, Kultur und interkulturelle Kompetenz', 'formal', false, 1),
  ('00000000-0000-4000-a000-000032844791', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Reisen, Kultur und interkulturelle Kompetenz', 'informal', false, 2),
  ('00000000-0000-4000-a000-000032844791', 'Bitte!', 'Please!', 'من فضلك!', 'Used in Reisen, Kultur und interkulturelle Kompetenz', 'neutral', false, 3),
  ('00000000-0000-4000-a000-000032844791', 'Danke!', 'Thanks!', 'شكراً!', 'Used in Reisen, Kultur und interkulturelle Kompetenz', 'neutral', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-000032844791', 'Hallo', 'Hello', 'Greeting', 'expression', 1),
  ('00000000-0000-4000-a000-000032844791', 'Danke', 'Thanks', 'Politeness', 'expression', 2),
  ('00000000-0000-4000-a000-000032844791', 'Bitte', 'Please', 'Politeness', 'expression', 3),
  ('00000000-0000-4000-a000-000032844791', 'Tschüss', 'Bye', 'Farewell', 'expression', 4);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-000032844791', 'B1 Abschlusstest — Leseübung', 'Nächste Woche mache ich eine Reise nach München. Ich fahre mit dem Zug. Ich kaufe ein Ticket am Bahnhof. Der Zug fährt um 8 Uhr ab. Die Fahrt dauert 4 Stunden. In München besuche ich meine Tante. Sie wohnt in der Nähe des Hauptbahnhofs. Wir gehen zusammen in ein Restaurant. Dann besuchen wir das Deutsche Museum. Die Reise wird schön.', 'Next week I am taking a trip to Munich. I am going by train. I buy a ticket at the train station. The train departs at 8 o''clock. The journey takes 4 hours. In Munich I visit my aunt. She lives near the main train station. We go to a restaurant together. Then we visit the German Museum. The trip will be nice.', 'الأسبوع القادم سأسافر إلى ميونخ. سأذهب بالقطار. أشتري تذكرة من محطة القطار. القطار يغادر في الساعة 8. الرحلة تستغرق 4 ساعات. في ميونخ أزور عمتي. تسكن بالقرب من المحطة الرئيسية. نذهب معاً إلى مطعم. ثم نزور المتحف الألماني. الرحلة ستكون جميلة.', 60, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, duration_seconds, speaker_count, scenario) values
  ('00000000-0000-4000-a000-000032844791', 'B1 Abschlusstest — Hörverständnis', '[Kunde]: Guten Tag! Ich möchte eine Fahrkarte nach München kaufen.

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

[Mitarbeiter]: إذاً التكلفة 73.50 يورو. القطار يغادر في الساعة 10.', 72, 2, 'Reisen, Kultur und interkulturelle Kompetenz');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-000032844791', 'Speaking: B1 Abschlusstest', 'Practice talking about Level Test. Answer questions and have a simple conversation.', 'Level Test', ARRAY['Use full sentences','Speak clearly','Don''t worry about mistakes']::text[], ARRAY['die Reise','der Zug','das Ticket','der Bahnhof','der Flughafen']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-000032844791', 'Writing: B1 Abschlusstest', 'Write a short text about Level Test. Use at least 5 vocabulary words from this lesson.', ARRAY['Start with a greeting','Use the vocabulary from this lesson','Check your grammar']::text[], ARRAY['die Reise','der Zug','das Ticket']::text[], '["Sentence structure","Vocabulary usage"]', 50, 150, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000032844791', 'B1 Abschlusstest — Roleplay', 'Level Test', 'Student', 'Teacher', 'Practice conversation about Level Test', 'Hallo! Lass uns über dieses Thema sprechen.', 'intermediate', 1, ARRAY['die Reise','der Zug','das Ticket','der Bahnhof','der Flughafen','das Hotel','der Pass','der Koffer']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000032844791', 'B1 Abschlusstest — Advanced Roleplay', 'Level Test', 'Customer', 'Assistant', 'Extended conversation about Level Test', 'Guten Tag! Wie kann ich Ihnen helfen?', 'intermediate', 2, ARRAY['die Reise','der Zug','das Ticket','der Bahnhof','der Flughafen','das Hotel','der Pass','der Koffer']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-000032844791', 'B1 Abschlusstest — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "B1 Abschlusstest".', 'Creative practice for Level Test', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-000032844791', 'Homework: B1 Abschlusstest', 'Complete these tasks to reinforce "B1 Abschlusstest".', 'mixed', '[{"description":"Review all vocabulary from this lesson"},{"description":"Write 5 sentences using the grammar structure"},{"description":"Practice the dialogue aloud"}]', 35, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-000032844791', 'In this lesson you learned about Level Test. You practiced vocabulary related to travel and grammar structure present_tense.', '["Mastered vocabulary about Level Test","Applied present_tense correctly","Read and understood a text about Level Test","Practiced speaking about Level Test"]', '[{"title":"B1 Abschlusstest Review","summary":"present_tense — the main grammar focus of this lesson."}]', ARRAY['Level Test core vocabulary','travel key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)','Verb is always in second position']::text[], ARRAY['Practice 15-20 minutes daily','Use new vocabulary in real sentences','Speak out loud to improve pronunciation']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000032844791', 'translation', 'Translate to German: "This is a translation exercise."', '[]', 'Das ist eine Übersetzungsübung.', 'Use "das ist" for "this is"', 1, 40);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000032844791', 'Culture: Level Test in German-Speaking Countries', 'Learn how Level Test is approached in German culture.

تعلم كيف يتم التعامل مع Level Test في الثقافة الألمانية.', '["Tip: Be direct and polite","Tip: Use formal language with strangers","Tip: Respect punctuality"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000032844791', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Common error for Arabic speakers","correction":"Correct version","explanation":"Explanation of the error"}]', 30);

end $$;
