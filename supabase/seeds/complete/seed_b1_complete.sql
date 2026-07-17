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
  values ('00000000-0000-4000-a000-000032868d70', '00000000-0000-4000-a000-000039c2eadf', 'Tagesablauf und Alltag', 'Detailed daily routine vocabulary and time management.', 'Daily Life', 'vocabulary', '["Understand and use 85 key vocabulary words about Daily Life","Apply present_tense correctly in sentences","Read and comprehend a text about Daily Life","Listen and understand a natural dialogue about Daily Life","Speak about Daily Life with confidence","Write a short text about Daily Life using new vocabulary"]', 45, 1, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, french_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-000032868d70', 'aufstehen', 'يستيقظ', 'to get up', 'se lever', NULL, NULL, 'verb', 'Ich stehe um 6 Uhr auf.', 'I get up at 6 o''clock.', 'A1', 1),
  ('00000000-0000-4000-a000-000032868d70', 'frühstücken', 'يتناول الفطور', 'to have breakfast', 'prendre le petit déjeuner', NULL, NULL, 'verb', 'Ich frühstücke um 7 Uhr.', 'I have breakfast at 7 o''clock.', 'A1', 2),
  ('00000000-0000-4000-a000-000032868d70', 'arbeiten', 'يعمل', 'to work', 'travailler', NULL, NULL, 'verb', 'Ich arbeite in einem Büro.', 'I work in an office.', 'A1', 3),
  ('00000000-0000-4000-a000-000032868d70', 'der Morgen', 'الصباح', 'morning', 'le matin', 'der', NULL, 'noun', 'Am Morgen dusche ich.', 'In the morning I shower.', 'A1', 4),
  ('00000000-0000-4000-a000-000032868d70', 'der Abend', 'المساء', 'evening', 'le soir', 'der', NULL, 'noun', 'Am Abend lese ich ein Buch.', 'In the evening I read a book.', 'A1', 5),
  ('00000000-0000-4000-a000-000032868d70', 'schlafen', 'ينام', 'to sleep', 'dormir', NULL, NULL, 'verb', 'Ich schlafe um 22 Uhr.', 'I sleep at 10 PM.', 'A1', 6),
  ('00000000-0000-4000-a000-000032868d70', 'die Arbeit', 'العمل', 'work', 'le travail', 'die', NULL, 'noun', 'Die Arbeit beginnt um 8 Uhr.', 'Work starts at 8 o''clock.', 'A1', 7),
  ('00000000-0000-4000-a000-000032868d70', 'gehen', 'يذهب', 'to go', 'aller', NULL, NULL, 'verb', 'Ich gehe zur Arbeit.', 'I go to work.', 'A1', 8),
  ('00000000-0000-4000-a000-000032868d70', 'die Uhr', 'الساعة', 'clock', 'l''horloge', 'die', 'die Uhren', 'noun', 'Die Uhr zeigt 7 Uhr.', 'The clock shows 7 o''clock.', 'A1', 9),
  ('00000000-0000-4000-a000-000032868d70', 'die Zeit', 'الوقت', 'time', 'le temps', 'die', NULL, 'noun', 'Ich habe keine Zeit.', 'I have no time.', 'A1', 10),
  ('00000000-0000-4000-a000-000032868d70', 'der Beruf', 'المهنة', 'profession', NULL, 'der', 'die Berufe', 'noun', 'Was ist dein Beruf?', 'What is your profession?', 'A1', 11),
  ('00000000-0000-4000-a000-000032868d70', 'die Firma', 'الشركة', 'company', NULL, 'die', 'die Firmen', 'noun', 'Die Firma ist in Berlin.', 'The company is in Berlin.', 'A1', 12),
  ('00000000-0000-4000-a000-000032868d70', 'der Kollege', 'الزميل', 'colleague', NULL, 'der', 'die Kollegen', 'noun', 'Mein Kollege hilft mir.', 'My colleague helps me.', 'A1', 13),
  ('00000000-0000-4000-a000-000032868d70', 'das Büro', 'المكتب', 'office', NULL, 'das', 'die Büros', 'noun', 'Das Büro ist im dritten Stock.', 'The office is on the third floor.', 'A1', 14),
  ('00000000-0000-4000-a000-000032868d70', 'die Besprechung', 'الاجتماع', 'meeting', NULL, 'die', 'die Besprechungen', 'noun', 'Wir haben eine Besprechung.', 'We have a meeting.', 'B1', 15),
  ('00000000-0000-4000-a000-000032868d70', 'der Chef', 'المدير', 'boss', NULL, 'der', 'die Chefs', 'noun', 'Mein Chef ist freundlich.', 'My boss is friendly.', 'A1', 16),
  ('00000000-0000-4000-a000-000032868d70', 'das Gehalt', 'الراتب', 'salary', NULL, 'das', 'die Gehälter', 'noun', 'Das Gehalt ist gut.', 'The salary is good.', 'B1', 17),
  ('00000000-0000-4000-a000-000032868d70', 'die Stelle', 'الوظيفة', 'position', NULL, 'die', 'die Stellen', 'noun', 'Ich suche eine neue Stelle.', 'I am looking for a new position.', 'B1', 18),
  ('00000000-0000-4000-a000-000032868d70', 'die Schule', 'المدرسة', 'school', NULL, 'die', 'die Schulen', 'noun', 'Die Kinder gehen zur Schule.', 'The children go to school.', 'A1', 19),
  ('00000000-0000-4000-a000-000032868d70', 'der Lehrer', 'المعلم', 'teacher', NULL, 'der', 'die Lehrer', 'noun', 'Der Lehrer erklärt die Grammatik.', 'The teacher explains the grammar.', 'A1', 20),
  ('00000000-0000-4000-a000-000032868d70', 'der Student', 'الطالب', 'student', NULL, 'der', 'die Studenten', 'noun', 'Der Student lernt Deutsch.', 'The student learns German.', 'A1', 21),
  ('00000000-0000-4000-a000-000032868d70', 'die Universität', 'الجامعة', 'university', NULL, 'die', 'die Universitäten', 'noun', 'Die Universität ist alt.', 'The university is old.', 'B1', 22),
  ('00000000-0000-4000-a000-000032868d70', 'der Kurs', 'الدورة', 'course', NULL, 'der', 'die Kurse', 'noun', 'Der Kurs kostet 200 Euro.', 'The course costs 200 euros.', 'A2', 23),
  ('00000000-0000-4000-a000-000032868d70', 'die Prüfung', 'الامتحان', 'exam', NULL, 'die', 'die Prüfungen', 'noun', 'Die Prüfung ist schwer.', 'The exam is difficult.', 'B1', 24),
  ('00000000-0000-4000-a000-000032868d70', 'das Studium', 'الدراسة الجامعية', 'studies', NULL, 'das', NULL, 'noun', 'Mein Studium dauert vier Jahre.', 'My studies take four years.', 'B1', 25),
  ('00000000-0000-4000-a000-000032868d70', 'lernen', 'يتعلم', 'to learn', NULL, NULL, NULL, 'verb', 'Ich lerne Deutsch.', 'I learn German.', 'A1', 26),
  ('00000000-0000-4000-a000-000032868d70', 'die Zeitung', 'الجريدة', 'newspaper', NULL, 'die', 'die Zeitungen', 'noun', 'Ich lese die Zeitung.', 'I read the newspaper.', 'A2', 27),
  ('00000000-0000-4000-a000-000032868d70', 'das Internet', 'الإنترنت', 'internet', NULL, 'das', NULL, 'noun', 'Das Internet ist schnell.', 'The internet is fast.', 'A2', 28),
  ('00000000-0000-4000-a000-000032868d70', 'der Artikel', 'المقال', 'article', NULL, 'der', 'die Artikel', 'noun', 'Der Artikel ist interessant.', 'The article is interesting.', 'B1', 29),
  ('00000000-0000-4000-a000-000032868d70', 'die Nachricht', 'الخبر', 'news', NULL, 'die', 'die Nachrichten', 'noun', 'Ich sehe die Nachrichten.', 'I watch the news.', 'A2', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000032868d70', 'Adjektivdeklination (Adjective Declension) / تصريف الصفات', 'When an adjective comes before a noun, it must agree in gender, number, and case. There are three declension patterns: after "der" words (weak), after "ein" words (mixed), and without article (strong). The endings depend on which information the article already provides.', '[{"rule":"Weak (after der/die/das): -e or -en","note":"der gute Mann, die gute Frau, das gute Kind, die guten Leute"},{"rule":"Mixed (after ein/mein/kein): article ending + adjective ending","note":"ein guter Mann, eine gute Frau, ein gutes Kind, keine guten Leute"}]', '[{"german":"Der große Hund gehört der alten Frau.","arabic":"الكلب الكبير ملك للمرأة العجوز.","english":"The big dog belongs to the old woman."},{"german":"Ein interessantes Buch liegt auf dem Tisch.","arabic":"كتاب مثير للاهتمام على الطاولة.","english":"An interesting book is on the table."}]', '[{"mistake":"Der groß Hund (no ending on adjective)","correction":"Der große Hund","explanation":"Adjectives before nouns MUST have an ending in German."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000032868d70', 'multiple_choice', 'Welches deutsche Wort bedeutet "to get up"?', '["aufstehen","frühstücken","arbeiten","der Abend"]', 'aufstehen', '"to get up" bedeutet auf Deutsch "to get up".  ', 1, 1),
  ('00000000-0000-4000-a000-000032868d70', 'multiple_choice', 'Welches deutsche Wort bedeutet "to have breakfast"?', '["der Abend","frühstücken","aufstehen","arbeiten"]', 'frühstücken', '"to have breakfast" bedeutet auf Deutsch "to have breakfast".  ', 1, 2),
  ('00000000-0000-4000-a000-000032868d70', 'multiple_choice', 'Welches deutsche Wort bedeutet "to work"?', '["der Morgen","der Abend","arbeiten","aufstehen"]', 'arbeiten', '"to work" bedeutet auf Deutsch "to work".  ', 1, 3),
  ('00000000-0000-4000-a000-000032868d70', 'multiple_choice', 'Welches deutsche Wort bedeutet "morning"?', '["der Morgen","aufstehen","der Abend","frühstücken"]', 'der Morgen', '"morning" = "der Morgen" in German. Article: der ', 1, 4),
  ('00000000-0000-4000-a000-000032868d70', 'multiple_choice', 'Welches deutsche Wort bedeutet "evening"?', '["der Abend","aufstehen","arbeiten","frühstücken"]', 'der Abend', '"evening" = "der Abend" in German. Article: der ', 1, 5),
  ('00000000-0000-4000-a000-000032868d70', 'fill_gap', 'Ergänze den Satz: Ich ___ gern über Daily Life. (sprechen)', '["spreche","sprichst","spricht","sprechen"]', 'spreche', 'ich spreche gern = I like to speak. Stem: sprech- + e.', 2, 6),
  ('00000000-0000-4000-a000-000032868d70', 'translation', 'Übersetze ins Deutsche: "I am learning about Daily Life."', '["Ich lerne über Daily Life.","Ich lerne Daily Life.","Lerne ich Daily Life."]', 'Ich lerne über Daily Life.', '"Ich lerne über..." = "I am learning about..."', 2, 7),
  ('00000000-0000-4000-a000-000032868d70', 'matching', 'Match: Which word pairs are correct?', '["aufstehen - to get up, frühstücken - to have breakfast"]', 'Matched correctly', 'Each German word has a unique English equivalent.', 2, 8);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-000032868d70', 'multiple_choice', 'Was bedeutet "aufstehen" auf Deutsch?', '["to get up","to run","beautiful","yesterday"]', 'to get up', 1, 1),
  ('00000000-0000-4000-a000-000032868d70', 'multiple_choice', 'Welcher Artikel gehört zu "frühstücken"?', '["der","die","das","den"]', 'der', 1, 2),
  ('00000000-0000-4000-a000-000032868d70', 'true_false', 'Das Wort "arbeiten" gehört zum Thema Daily Life.', '["True","False"]', 'True', 1, 3),
  ('00000000-0000-4000-a000-000032868d70', 'multiple_choice', 'Welcher Satz verwendet present_tense?', '["Der große Hund gehört der alten Frau.","Ein interessantes Buch liegt auf dem Tisch."]', 'Der große Hund gehört der alten Frau.', 2, 4),
  ('00000000-0000-4000-a000-000032868d70', 'true_false', ''Im Deutschen steht das Verb an zweiter Position im Hauptsatz.', '["True","False"]', 'True', 1, 5),
  ('00000000-0000-4000-a000-000032868d70', 'fill_blank', 'Complete: Ich ___ (morning) Deutsch.', '["der Morgen","lernt","lernst","lernen"]', 'der morge', 2, 6),
  ('00000000-0000-4000-a000-000032868d70', 'multiple_choice', 'Wie lautet das deutsche Wort für "evening"?', '["der Abend","schlafen","die Arbeit","gehen"]', 'der Abend', 1, 7),
  ('00000000-0000-4000-a000-000032868d70', 'true_false', 'Im Deutschen werden alle Nomen großgeschrieben.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-000032868d70', 'multiple_choice', 'How do you say "please" in a restaurant in Germany?', '["Bitte","Danke","Tschüss","Hallo"]', 'Bitte', 1, 9),
  ('00000000-0000-4000-a000-000032868d70', 'fill_blank', 'Wo ___ (to live) du?', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 2, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, french_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-000032868d70', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', NULL, 'Used in Alltag und Gesellschaft', 'formal', false, 1),
  ('00000000-0000-4000-a000-000032868d70', 'Guten Tag!', 'Good day!', 'نهارك سعيد!', NULL, 'Used in Alltag und Gesellschaft', 'formal', false, 2),
  ('00000000-0000-4000-a000-000032868d70', 'Hallo, wie geht es Ihnen?', 'Hello, how are you?', 'مرحباً، كيف حالكم؟', NULL, 'Used in Alltag und Gesellschaft', 'formal', false, 3),
  ('00000000-0000-4000-a000-000032868d70', 'Schön, Sie kennenzulernen!', 'Nice to meet you!', 'سعيد بلقائكم!', NULL, 'Used in Alltag und Gesellschaft', 'formal', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-000032868d70', 'aufstehen', 'to get up — يستيقظ', 'verb', 'vocabulary', 1),
  ('00000000-0000-4000-a000-000032868d70', 'frühstücken', 'to have breakfast — يتناول الفطور', 'verb', 'vocabulary', 2),
  ('00000000-0000-4000-a000-000032868d70', 'arbeiten', 'to work — يعمل', 'verb', 'vocabulary', 3),
  ('00000000-0000-4000-a000-000032868d70', 'der der Morgen', 'morning — الصباح', 'noun', 'vocabulary', 4),
  ('00000000-0000-4000-a000-000032868d70', 'der der Abend', 'evening — المساء', 'noun', 'vocabulary', 5),
  ('00000000-0000-4000-a000-000032868d70', 'schlafen', 'to sleep — ينام', 'verb', 'vocabulary', 6),
  ('00000000-0000-4000-a000-000032868d70', 'die die Arbeit', 'work — العمل', 'noun', 'vocabulary', 7),
  ('00000000-0000-4000-a000-000032868d70', 'gehen', 'to go — يذهب', 'verb', 'vocabulary', 8),
  ('00000000-0000-4000-a000-000032868d70', 'die die Uhr (die Uhren)', 'clock — الساعة', 'noun', 'vocabulary', 9),
  ('00000000-0000-4000-a000-000032868d70', 'die die Zeit', 'time — الوقت', 'noun', 'vocabulary', 10),
  ('00000000-0000-4000-a000-000032868d70', 'der der Beruf (die Berufe)', 'profession — المهنة', 'noun', 'vocabulary', 11),
  ('00000000-0000-4000-a000-000032868d70', 'die die Firma (die Firmen)', 'company — الشركة', 'noun', 'vocabulary', 12),
  ('00000000-0000-4000-a000-000032868d70', 'der der Kollege (die Kollegen)', 'colleague — الزميل', 'noun', 'vocabulary', 13),
  ('00000000-0000-4000-a000-000032868d70', 'das das Büro (die Büros)', 'office — المكتب', 'noun', 'vocabulary', 14),
  ('00000000-0000-4000-a000-000032868d70', 'die die Besprechung (die Besprechungen)', 'meeting — الاجتماع', 'noun', 'vocabulary', 15),
  ('00000000-0000-4000-a000-000032868d70', 'Der große Hund gehört der alten Frau.', 'The big dog belongs to the old woman.', 'Adjektivdeklination (Adjective Declension)', 'grammar', 16),
  ('00000000-0000-4000-a000-000032868d70', 'Ein interessantes Buch liegt auf dem Tisch.', 'An interesting book is on the table.', 'Adjektivdeklination (Adjective Declension)', 'grammar', 17);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, french_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-000032868d70', 'Tagesablauf und Alltag — Leseübung', 'Mein Tagesablauf beginnt um 6 Uhr. Ich stehe auf und dusche. Dann frühstücke ich. Ich esse Brot mit Käse und trinke Kaffee. Um 7 Uhr gehe ich zur Arbeit. Ich arbeite in einem Büro. Um 12 Uhr esse ich zu Mittag. Nach der Arbeit gehe ich nach Hause. Am Abend sehe ich fern oder lese ein Buch. Um 22 Uhr gehe ich ins Bett. Das ist mein Tag.', 'My daily routine starts at 6 o''clock. I get up and shower. Then I have breakfast. I eat bread with cheese and drink coffee. At 7 o''clock I go to work. I work in an office. At 12 o''clock I have lunch. After work I go home. In the evening I watch TV or read a book. At 10 PM I go to bed. That''s my day.', 'روتيني اليومي يبدأ في الساعة 6. أستيقظ وأستحم. ثم أتناول الفطور. آكل خبزاً مع الجبن وأشرب قهوة. في الساعة 7 أذهب إلى العمل. أعمل في مكتب. في الساعة 12 أتناول الغداء. بعد العمل أعود إلى المنزل. في المساء أشاهد التلفاز أو أقرأ كتاباً. في الساعة 10 أذهب إلى النوم. هذا هو يومي.', NULL, 68, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, french_translation, duration_seconds, speaker_count, scenario) values
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

[Marie]: ألتقي بأصدقائي أو أقرأ كتاباً. في الساعة 10 أذهب إلى النوم.', '[Lukas]: 

[Marie]: 

[Lukas]: 

[Marie]: 

[Lukas]: 

[Marie]: ', 72, 2, 'Alltag und Gesellschaft');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-000032868d70', '🔊 Sprechen: Tagesablauf und Alltag', 'Discussion: You attend a German Stammtisch (weekly meetup). Discuss Daily Life with the group. Express your opinion, agree/disagree, ask follow-up questions. Try to keep the conversation flowing for 2 minutes.', 'Daily Life', ARRAY['Use discourse markers (also, jedoch, außerdem)','React naturally: "Ach so!", "Echt?", "Das stimmt!"','Paraphrase when you don''t know a word']::text[], ARRAY['aufstehen','frühstücken','arbeiten','der Morgen','der Abend','schlafen','die Arbeit','gehen']::text[], 60, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-000032868d70', '✏️ Schreiben: Tagesablauf und Alltag', 'Write a formal letter (200-250 words) to your German teacher explaining what you learned about "Daily Life". Include: what surprised you, what was similar/different to your culture, and what you want to learn next. Use present_tense correctly.', ARRAY['Use paragraph breaks for structure','Connect ideas with "außerdem", "deshalb", "jedoch"','Check your verb position in Nebensätze']::text[], ARRAY['aufstehen','frühstücken','arbeiten','der Morgen','der Abend','schlafen','die Arbeit','gehen']::text[], ARRAY['Sentence structure','Vocabulary usage']::text[], 150, 250, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000032868d70', 'Tagesablauf und Alltag — Roleplay', 'Daily Life', 'Student', 'Teacher', 'Practice conversation about Daily Life', 'Hallo! Lass uns über dieses Thema sprechen.', 'intermediate', 1, ARRAY['aufstehen','frühstücken','arbeiten','der Morgen','der Abend','schlafen','die Arbeit','gehen']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000032868d70', 'Tagesablauf und Alltag — Advanced Roleplay', 'Daily Life', 'Customer', 'Assistant', 'Extended conversation about Daily Life', 'Guten Tag! Wie kann ich Ihnen helfen?', 'intermediate', 2, ARRAY['aufstehen','frühstücken','arbeiten','der Morgen','der Abend','schlafen','die Arbeit','gehen']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-000032868d70', 'Tagesablauf und Alltag — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Tagesablauf und Alltag".', 'Creative practice for Daily Life', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-000032868d70', '📚 Hausaufgabe: Tagesablauf und Alltag', 'Complete these tasks to reinforce "Tagesablauf und Alltag".', 'mixed', '[{"description":"Create 10 flashcards from this lesson''s vocabulary — write German on one side, Arabic on the other. Test yourself 3 times."},{"description":"Write 6 sentences about Daily Life: 2 statements, 2 questions, 2 negations — all using present_tense."},{"description":"Record yourself reading the dialogue aloud. Listen to the recording and note 3 things to improve."},{"description":"Find 3 real German websites, videos, or articles about Daily Life. Note 5 new words you discovered."}]', 50, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-000032868d70', '🎯 Excellent progress! This lesson covered Daily Life (85 vocabulary items) and present_tense. You developed reading, listening, speaking, and writing skills in the context of daily_routine. Focus on your common mistakes area for maximum improvement.', '["85 vocabulary items about Daily Life","present_tense — grammar explanation and practice","Reading comprehension: text about Daily Life","Listening comprehension: dialogue about Daily Life","Speaking practice: roleplay/discussion about Daily Life","Writing task: text about Daily Life"]', '[{"title":"Tagesablauf und Alltag Review","summary":"present_tense — the main grammar focus. Focus on using this structure naturally in conversations and writing."}]', ARRAY['aufstehen (to get up)','frühstücken (to have breakfast)','arbeiten (to work)','der Morgen (morning)','der Abend (evening)']::text[], ARRAY['Don''t translate from Arabic word-for-word — German has different sentence structure','Learn every noun with its article: NEVER learn "Tisch" alone, always "der Tisch"','Watch out for verb position in Nebensätze']::text[], ARRAY['Practice 15-20 minutes daily — consistency beats intensity','Speak out loud: German pronunciation needs muscle memory','Use the new vocabulary within 24 hours or you''ll forget it','Watch German YouTube videos about Daily Life for authentic input']::text[]);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000032868d70', 'Pronunciation: Intonation and sentence melody', 'German sentences have a falling intonation at the end of statements. Questions starting with a verb rise at the end. W-questions fall at the end. Emphasise the stressed syllable — German stresses the first syllable of the root.

Common mistake for Arabic speakers: Arabic speakers often put stress on the wrong syllable. Remember: German root stress is usually on the first syllable.', '[]', '[{"german":"warum","arabic":"","english":"","phonetic":"/vaˈrʊm/"},{"german":"deshalb","arabic":"","english":"","phonetic":"/dɛsˈhalp/"}]', '[]', 10);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000032868d70', 'translation', 'Translate to German: "I use the word "to get up" in a sentence about Daily Life."', '[]', 'Ich stehe um 6 Uhr auf.', 'Use  "aufstehen" with the correct present_tense form.', 1, 40);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000032868d70', 'translation', 'Translate to German: "I use the word "to have breakfast" in a sentence about Daily Life."', '[]', 'Ich frühstücke um 7 Uhr.', 'Use  "frühstücken" with the correct present_tense form.', 1, 41);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000032868d70', 'translation', 'Translate to German: "I use the word "to work" in a sentence about Daily Life."', '[]', 'Ich arbeite in einem Büro.', 'Use  "arbeiten" with the correct present_tense form.', 1, 42);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000032868d70', 'Culture: 🇩🇪 Deutsche Kultur: Daily Life', 'Daily Life in Germany has specific cultural nuances that differ from Arabic-speaking countries. Germans tend to separate their private and professional lives strictly. When dealing with Daily Life in a professional context, use formal register and prepare factual arguments. Emotional appeals are less effective than logical reasoning.

لدى Daily Life في ألمانيا فروق ثقافية دقيقة تختلف عن البلدان العربية. الألمان يفصلون بين حياتهم الخاصة والمهنية بشكل صارم.', '["Tip: Always use \"Sie\" (formal) with strangers and colleagues","Tip: Germans appreciate punctuality — arrive 5 minutes early","Tip: Direct feedback is a sign of respect, not criticism","Tip: Prepare factual arguments, not emotional appeals"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000032868d70', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Using \"machen\" for every action","correction":"Use specific verbs: frühstücken (eat breakfast), duschen (shower), anziehen (get dressed)","explanation":"Arabic uses \"aamal\" (do/make) + noun. German has specific verbs for daily actions."},{"mistake":"Putting the verb at the end in main clauses","correction":"Verb stays in position 2 in main clauses","explanation":"Subordinate clause word order interferes"}]', 30);

  -- Lesson 2: Gesellschaft und Zusammenleben (L-B1-01-02)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-000032868d6f', '00000000-0000-4000-a000-000039c2eadf', 'Gesellschaft und Zusammenleben', 'Talk about society, community, and social life.', 'Society & Community', 'vocabulary', '["Understand and use 75 key vocabulary words about Society & Community","Apply present_tense correctly in sentences","Read and comprehend a text about Society & Community","Listen and understand a natural dialogue about Society & Community","Speak about Society & Community with confidence","Write a short text about Society & Community using new vocabulary"]', 45, 2, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, french_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-000032868d6f', 'die Gesellschaft', 'المجتمع', 'society', NULL, 'die', NULL, 'noun', 'Die Gesellschaft verändert sich.', 'Society is changing.', 'B1', 1),
  ('00000000-0000-4000-a000-000032868d6f', 'die Politik', 'السياسة', 'politics', NULL, 'die', NULL, 'noun', 'Politik ist ein wichtiges Thema.', 'Politics is an important topic.', 'B1', 2),
  ('00000000-0000-4000-a000-000032868d6f', 'die Integration', 'الاندماج', 'integration', NULL, 'die', NULL, 'noun', 'Integration ist wichtig.', 'Integration is important.', 'B1', 3),
  ('00000000-0000-4000-a000-000032868d6f', 'die Kultur', 'الثقافة', 'culture', NULL, 'die', NULL, 'noun', 'Die deutsche Kultur ist vielfältig.', 'German culture is diverse.', 'A2', 4),
  ('00000000-0000-4000-a000-000032868d6f', 'der Bürger', 'المواطن', 'citizen', NULL, 'der', 'die Bürger', 'noun', 'Die Bürger wählen.', 'The citizens vote.', 'B1', 5),
  ('00000000-0000-4000-a000-000032868d6f', 'die Freiheit', 'الحرية', 'freedom', NULL, 'die', NULL, 'noun', 'Freiheit ist ein Grundrecht.', 'Freedom is a basic right.', 'B1', 6),
  ('00000000-0000-4000-a000-000032868d6f', 'die Gleichberechtigung', 'المساواة', 'equality', NULL, 'die', NULL, 'noun', 'Gleichberechtigung für alle.', 'Equality for all.', 'B2', 7),
  ('00000000-0000-4000-a000-000032868d6f', 'die Verantwortung', 'المسؤولية', 'responsibility', NULL, 'die', NULL, 'noun', 'Das ist deine Verantwortung.', 'That is your responsibility.', 'B1', 8),
  ('00000000-0000-4000-a000-000032868d6f', 'der Beruf', 'المهنة', 'profession', NULL, 'der', 'die Berufe', 'noun', 'Was ist dein Beruf?', 'What is your profession?', 'A1', 9),
  ('00000000-0000-4000-a000-000032868d6f', 'die Firma', 'الشركة', 'company', NULL, 'die', 'die Firmen', 'noun', 'Die Firma ist in Berlin.', 'The company is in Berlin.', 'A1', 10),
  ('00000000-0000-4000-a000-000032868d6f', 'der Kollege', 'الزميل', 'colleague', NULL, 'der', 'die Kollegen', 'noun', 'Mein Kollege hilft mir.', 'My colleague helps me.', 'A1', 11),
  ('00000000-0000-4000-a000-000032868d6f', 'das Büro', 'المكتب', 'office', NULL, 'das', 'die Büros', 'noun', 'Das Büro ist im dritten Stock.', 'The office is on the third floor.', 'A1', 12),
  ('00000000-0000-4000-a000-000032868d6f', 'die Besprechung', 'الاجتماع', 'meeting', NULL, 'die', 'die Besprechungen', 'noun', 'Wir haben eine Besprechung.', 'We have a meeting.', 'B1', 13),
  ('00000000-0000-4000-a000-000032868d6f', 'der Chef', 'المدير', 'boss', NULL, 'der', 'die Chefs', 'noun', 'Mein Chef ist freundlich.', 'My boss is friendly.', 'A1', 14),
  ('00000000-0000-4000-a000-000032868d6f', 'das Gehalt', 'الراتب', 'salary', NULL, 'das', 'die Gehälter', 'noun', 'Das Gehalt ist gut.', 'The salary is good.', 'B1', 15),
  ('00000000-0000-4000-a000-000032868d6f', 'die Stelle', 'الوظيفة', 'position', NULL, 'die', 'die Stellen', 'noun', 'Ich suche eine neue Stelle.', 'I am looking for a new position.', 'B1', 16),
  ('00000000-0000-4000-a000-000032868d6f', 'die Schule', 'المدرسة', 'school', NULL, 'die', 'die Schulen', 'noun', 'Die Kinder gehen zur Schule.', 'The children go to school.', 'A1', 17),
  ('00000000-0000-4000-a000-000032868d6f', 'der Lehrer', 'المعلم', 'teacher', NULL, 'der', 'die Lehrer', 'noun', 'Der Lehrer erklärt die Grammatik.', 'The teacher explains the grammar.', 'A1', 18),
  ('00000000-0000-4000-a000-000032868d6f', 'der Student', 'الطالب', 'student', NULL, 'der', 'die Studenten', 'noun', 'Der Student lernt Deutsch.', 'The student learns German.', 'A1', 19),
  ('00000000-0000-4000-a000-000032868d6f', 'die Universität', 'الجامعة', 'university', NULL, 'die', 'die Universitäten', 'noun', 'Die Universität ist alt.', 'The university is old.', 'B1', 20),
  ('00000000-0000-4000-a000-000032868d6f', 'der Kurs', 'الدورة', 'course', NULL, 'der', 'die Kurse', 'noun', 'Der Kurs kostet 200 Euro.', 'The course costs 200 euros.', 'A2', 21),
  ('00000000-0000-4000-a000-000032868d6f', 'die Prüfung', 'الامتحان', 'exam', NULL, 'die', 'die Prüfungen', 'noun', 'Die Prüfung ist schwer.', 'The exam is difficult.', 'B1', 22),
  ('00000000-0000-4000-a000-000032868d6f', 'das Studium', 'الدراسة الجامعية', 'studies', NULL, 'das', NULL, 'noun', 'Mein Studium dauert vier Jahre.', 'My studies take four years.', 'B1', 23),
  ('00000000-0000-4000-a000-000032868d6f', 'lernen', 'يتعلم', 'to learn', NULL, NULL, NULL, 'verb', 'Ich lerne Deutsch.', 'I learn German.', 'A1', 24),
  ('00000000-0000-4000-a000-000032868d6f', 'die Zeitung', 'الجريدة', 'newspaper', NULL, 'die', 'die Zeitungen', 'noun', 'Ich lese die Zeitung.', 'I read the newspaper.', 'A2', 25),
  ('00000000-0000-4000-a000-000032868d6f', 'das Internet', 'الإنترنت', 'internet', NULL, 'das', NULL, 'noun', 'Das Internet ist schnell.', 'The internet is fast.', 'A2', 26),
  ('00000000-0000-4000-a000-000032868d6f', 'der Artikel', 'المقال', 'article', NULL, 'der', 'die Artikel', 'noun', 'Der Artikel ist interessant.', 'The article is interesting.', 'B1', 27),
  ('00000000-0000-4000-a000-000032868d6f', 'die Nachricht', 'الخبر', 'news', NULL, 'die', 'die Nachrichten', 'noun', 'Ich sehe die Nachrichten.', 'I watch the news.', 'A2', 28),
  ('00000000-0000-4000-a000-000032868d6f', 'das Radio', 'الراديو', 'radio', NULL, 'das', 'die Radios', 'noun', 'Ich höre Radio.', 'I listen to the radio.', 'A2', 29),
  ('00000000-0000-4000-a000-000032868d6f', 'das Fernsehen', 'التلفاز', 'television', NULL, 'das', NULL, 'noun', 'Das Fernsehen läuft.', 'The television is on.', 'A2', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000032868d6f', 'Konjunktiv II: Höfliche Bitten und irreale Sätze (Subjunctive for Politeness) / صيغة الشرط الثانية: الطلبات المهذبة والجمل غير الواقعية', 'Konjunktiv II is used for polite requests (Ich hätte gern...), unreal situations (Wenn ich Zeit hätte...), and wishes (Ich wünschte, ich wäre...). For most verbs, use "würde + infinitive". Only a few common verbs have their own subjunctive form: hätte (hätten), wäre (wären), könnte (könnten).', '[{"rule":"würde + Infinitiv (most verbs)","note":"Ich würde gern kommen. (I would like to come.)"},{"rule":"hätte (haben), wäre (sein), könnte (können)","note":"Ich hätte gern einen Kaffee. (I would like a coffee.)"},{"rule":"Wenn... dann... (if... then...)","note":"Wenn ich Zeit hätte, würde ich reisen. (If I had time, I would travel.)"}]', '[{"german":"Ich hätte gern einen Kaffee, bitte.","arabic":"أود فنجان قهوة من فضلك.","english":"I would like a coffee, please."},{"german":"Wenn ich mehr Zeit hätte, würde ich Deutsch lernen.","arabic":"لو كان لدي وقت أكثر، لتعلمت الألمانية.","english":"If I had more time, I would learn German."},{"german":"Könnten Sie mir bitte helfen?","arabic":"هل يمكنكم مساعدتي من فضلكم؟","english":"Could you please help me?"}]', '[{"mistake":"Ich will einen Kaffee (too direct in restaurant)","correction":"Ich hätte gern einen Kaffee.","explanation":"In German restaurants, use Konjunktiv II to be polite, not \"ich will\"."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000032868d6f', 'multiple_choice', 'Welches deutsche Wort bedeutet "society"?', '["der Bürger","die Gesellschaft","die Integration","die Politik"]', 'die Gesellschaft', '"society" = "die Gesellschaft" in German. Article: die ', 1, 1),
  ('00000000-0000-4000-a000-000032868d6f', 'multiple_choice', 'Welches deutsche Wort bedeutet "politics"?', '["die Politik","die Kultur","der Bürger","die Gesellschaft"]', 'die Politik', '"politics" = "die Politik" in German. Article: die ', 1, 2),
  ('00000000-0000-4000-a000-000032868d6f', 'multiple_choice', 'Welches deutsche Wort bedeutet "integration"?', '["die Kultur","die Gesellschaft","die Integration","die Politik"]', 'die Integration', '"integration" = "die Integration" in German. Article: die ', 1, 3),
  ('00000000-0000-4000-a000-000032868d6f', 'multiple_choice', 'Welches deutsche Wort bedeutet "culture"?', '["der Bürger","die Kultur","die Gesellschaft","die Politik"]', 'die Kultur', '"culture" = "die Kultur" in German. Article: die ', 1, 4),
  ('00000000-0000-4000-a000-000032868d6f', 'multiple_choice', 'Welches deutsche Wort bedeutet "citizen"?', '["die Politik","der Bürger","die Integration","die Kultur"]', 'der Bürger', '"citizen" = "der Bürger" in German. Article: der Plural: die Bürger', 1, 5),
  ('00000000-0000-4000-a000-000032868d6f', 'fill_gap', 'Ergänze den Satz: Ich ___ gern über Society & Community. (sprechen)', '["spreche","sprichst","spricht","sprechen"]', 'spreche', 'ich spreche gern = I like to speak. Stem: sprech- + e.', 2, 6),
  ('00000000-0000-4000-a000-000032868d6f', 'translation', 'Übersetze ins Deutsche: "I am learning about Society & Community."', '["Ich lerne über Society & Community.","Ich lerne Society & Community.","Lerne ich Society & Community."]', 'Ich lerne über Society & Community.', '"Ich lerne über..." = "I am learning about..."', 2, 7),
  ('00000000-0000-4000-a000-000032868d6f', 'matching', 'Match: Which word pairs are correct?', '["die Gesellschaft - society, die Politik - politics"]', 'Matched correctly', 'Each German word has a unique English equivalent.', 2, 8);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-000032868d6f', 'multiple_choice', 'Was bedeutet "die Gesellschaft" auf Deutsch?', '["society","to run","beautiful","yesterday"]', 'society', 1, 1),
  ('00000000-0000-4000-a000-000032868d6f', 'multiple_choice', 'Welcher Artikel gehört zu "die Politik"?', '["der","die","das","den"]', 'die', 1, 2),
  ('00000000-0000-4000-a000-000032868d6f', 'true_false', 'Das Wort "die Integration" gehört zum Thema Society & Community.', '["True","False"]', 'True', 1, 3),
  ('00000000-0000-4000-a000-000032868d6f', 'multiple_choice', 'Welcher Satz verwendet present_tense?', '["Ich hätte gern einen Kaffee, bitte.","Wenn ich mehr Zeit hätte, würde ich Deutsch lernen.","Könnten Sie mir bitte helfen?"]', 'Ich hätte gern einen Kaffee, bitte.', 2, 4),
  ('00000000-0000-4000-a000-000032868d6f', 'true_false', ''Im Deutschen steht das Verb an zweiter Position im Hauptsatz.', '["True","False"]', 'True', 1, 5),
  ('00000000-0000-4000-a000-000032868d6f', 'fill_blank', 'Complete: Ich ___ (culture) Deutsch.', '["die Kultur","lernt","lernst","lernen"]', 'lerne', 2, 6),
  ('00000000-0000-4000-a000-000032868d6f', 'multiple_choice', 'Wie lautet das deutsche Wort für "citizen"?', '["der Bürger","die Freiheit","die Gleichberechtigung","die Verantwortung"]', 'der Bürger', 1, 7),
  ('00000000-0000-4000-a000-000032868d6f', 'true_false', 'Im Deutschen werden alle Nomen großgeschrieben.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-000032868d6f', 'multiple_choice', 'How do you say "please" in a restaurant in Germany?', '["Bitte","Danke","Tschüss","Hallo"]', 'Bitte', 1, 9),
  ('00000000-0000-4000-a000-000032868d6f', 'fill_blank', 'Wo ___ (to live) du?', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 2, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, french_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-000032868d6f', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', NULL, 'Used in Alltag und Gesellschaft', 'formal', false, 1),
  ('00000000-0000-4000-a000-000032868d6f', 'Guten Tag!', 'Good day!', 'نهارك سعيد!', NULL, 'Used in Alltag und Gesellschaft', 'formal', false, 2),
  ('00000000-0000-4000-a000-000032868d6f', 'Hallo, wie geht es Ihnen?', 'Hello, how are you?', 'مرحباً، كيف حالكم؟', NULL, 'Used in Alltag und Gesellschaft', 'formal', false, 3),
  ('00000000-0000-4000-a000-000032868d6f', 'Schön, Sie kennenzulernen!', 'Nice to meet you!', 'سعيد بلقائكم!', NULL, 'Used in Alltag und Gesellschaft', 'formal', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-000032868d6f', 'die die Gesellschaft', 'society — المجتمع', 'noun', 'vocabulary', 1),
  ('00000000-0000-4000-a000-000032868d6f', 'die die Politik', 'politics — السياسة', 'noun', 'vocabulary', 2),
  ('00000000-0000-4000-a000-000032868d6f', 'die die Integration', 'integration — الاندماج', 'noun', 'vocabulary', 3),
  ('00000000-0000-4000-a000-000032868d6f', 'die die Kultur', 'culture — الثقافة', 'noun', 'vocabulary', 4),
  ('00000000-0000-4000-a000-000032868d6f', 'der der Bürger (die Bürger)', 'citizen — المواطن', 'noun', 'vocabulary', 5),
  ('00000000-0000-4000-a000-000032868d6f', 'die die Freiheit', 'freedom — الحرية', 'noun', 'vocabulary', 6),
  ('00000000-0000-4000-a000-000032868d6f', 'die die Gleichberechtigung', 'equality — المساواة', 'noun', 'vocabulary', 7),
  ('00000000-0000-4000-a000-000032868d6f', 'die die Verantwortung', 'responsibility — المسؤولية', 'noun', 'vocabulary', 8),
  ('00000000-0000-4000-a000-000032868d6f', 'der der Beruf (die Berufe)', 'profession — المهنة', 'noun', 'vocabulary', 9),
  ('00000000-0000-4000-a000-000032868d6f', 'die die Firma (die Firmen)', 'company — الشركة', 'noun', 'vocabulary', 10),
  ('00000000-0000-4000-a000-000032868d6f', 'der der Kollege (die Kollegen)', 'colleague — الزميل', 'noun', 'vocabulary', 11),
  ('00000000-0000-4000-a000-000032868d6f', 'das das Büro (die Büros)', 'office — المكتب', 'noun', 'vocabulary', 12),
  ('00000000-0000-4000-a000-000032868d6f', 'die die Besprechung (die Besprechungen)', 'meeting — الاجتماع', 'noun', 'vocabulary', 13),
  ('00000000-0000-4000-a000-000032868d6f', 'der der Chef (die Chefs)', 'boss — المدير', 'noun', 'vocabulary', 14),
  ('00000000-0000-4000-a000-000032868d6f', 'das das Gehalt (die Gehälter)', 'salary — الراتب', 'noun', 'vocabulary', 15),
  ('00000000-0000-4000-a000-000032868d6f', 'Ich hätte gern einen Kaffee, bitte.', 'I would like a coffee, please.', 'Konjunktiv II: Höfliche Bitten und irreale Sätze (Subjunctive for Politeness)', 'grammar', 16),
  ('00000000-0000-4000-a000-000032868d6f', 'Wenn ich mehr Zeit hätte, würde ich Deutsch lernen.', 'If I had more time, I would learn German.', 'Konjunktiv II: Höfliche Bitten und irreale Sätze (Subjunctive for Politeness)', 'grammar', 17),
  ('00000000-0000-4000-a000-000032868d6f', 'Könnten Sie mir bitte helfen?', 'Could you please help me?', 'Konjunktiv II: Höfliche Bitten und irreale Sätze (Subjunctive for Politeness)', 'grammar', 18);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, french_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-000032868d6f', 'Gesellschaft und Zusammenleben — Leseübung', 'Die deutsche Gesellschaft ist vielfältig und multikulturell. In den großen Städten wie Berlin, München oder Hamburg leben Menschen aus über 190 Nationen zusammen. Integration ist ein wichtiges Thema. Viele Menschen mit Migrationshintergrund haben sich erfolgreich integriert und tragen zur Gesellschaft bei. Deutschland ist ein Einwanderungsland. Im Jahr 2023 wurden neue Einbürgerungsregeln beschlossen, die den Erwerb der deutschen Staatsbürgerschaft erleichtern sollen.', 'German society is diverse and multicultural. In big cities like Berlin, Munich or Hamburg, people from over 190 nations live together. Integration is an important topic. Many people with a migration background have successfully integrated and contribute to society. Germany is a country of immigration. In 2023, new naturalization rules were passed that aim to make it easier to acquire German citizenship.', 'المجتمع الألماني متنوع ومتعدد الثقافات. في المدن الكبيرة مثل برلين وميونخ وهامبورغ يعيش أناس من أكثر من 190 دولة معاً. الاندماج موضوع مهم. كثير من الأشخاص ذوي خلفية هجرة اندمجوا بنجاح ويساهمون في المجتمع. ألمانيا بلد هجرة. في عام 2023 تم إقرار قواعد تجنيس جديدة تهدف إلى تسهيل الحصول على الجنسية الألمانية.', NULL, 60, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, french_translation, duration_seconds, speaker_count, scenario) values
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

[Lehrerin]: ممتاز! إلى الغد!', '[Lehrerin]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: ', 72, 2, 'Alltag und Gesellschaft');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-000032868d6f', '🔊 Sprechen: Gesellschaft und Zusammenleben', 'Discussion: You attend a German Stammtisch (weekly meetup). Discuss Society & Community with the group. Express your opinion, agree/disagree, ask follow-up questions. Try to keep the conversation flowing for 2 minutes.', 'Society & Community', ARRAY['Use discourse markers (also, jedoch, außerdem)','React naturally: "Ach so!", "Echt?", "Das stimmt!"','Paraphrase when you don''t know a word']::text[], ARRAY['die Gesellschaft','die Politik','die Integration','die Kultur','der Bürger','die Freiheit','die Gleichberechtigung','die Verantwortung']::text[], 60, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-000032868d6f', '✏️ Schreiben: Gesellschaft und Zusammenleben', 'Write a formal letter (200-250 words) to your German teacher explaining what you learned about "Society & Community". Include: what surprised you, what was similar/different to your culture, and what you want to learn next. Use present_tense correctly.', ARRAY['Use paragraph breaks for structure','Connect ideas with "außerdem", "deshalb", "jedoch"','Check your verb position in Nebensätze']::text[], ARRAY['die Gesellschaft','die Politik','die Integration','die Kultur','der Bürger','die Freiheit','die Gleichberechtigung','die Verantwortung']::text[], ARRAY['Sentence structure','Vocabulary usage']::text[], 150, 250, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000032868d6f', 'Gesellschaft und Zusammenleben — Roleplay', 'Society & Community', 'Student', 'Teacher', 'Practice conversation about Society & Community', 'Hallo! Lass uns über dieses Thema sprechen.', 'intermediate', 1, ARRAY['die Gesellschaft','die Politik','die Integration','die Kultur','der Bürger','die Freiheit','die Gleichberechtigung','die Verantwortung']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000032868d6f', 'Gesellschaft und Zusammenleben — Advanced Roleplay', 'Society & Community', 'Customer', 'Assistant', 'Extended conversation about Society & Community', 'Guten Tag! Wie kann ich Ihnen helfen?', 'intermediate', 2, ARRAY['die Gesellschaft','die Politik','die Integration','die Kultur','der Bürger','die Freiheit','die Gleichberechtigung','die Verantwortung']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-000032868d6f', 'Gesellschaft und Zusammenleben — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Gesellschaft und Zusammenleben".', 'Creative practice for Society & Community', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-000032868d6f', '📚 Hausaufgabe: Gesellschaft und Zusammenleben', 'Complete these tasks to reinforce "Gesellschaft und Zusammenleben".', 'mixed', '[{"description":"Create 10 flashcards from this lesson''s vocabulary — write German on one side, Arabic on the other. Test yourself 3 times."},{"description":"Write 6 sentences about Society & Community: 2 statements, 2 questions, 2 negations — all using present_tense."},{"description":"Record yourself reading the dialogue aloud. Listen to the recording and note 3 things to improve."},{"description":"Find 3 real German websites, videos, or articles about Society & Community. Note 5 new words you discovered."}]', 50, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-000032868d6f', '🎯 Excellent progress! This lesson covered Society & Community (75 vocabulary items) and present_tense. You developed reading, listening, speaking, and writing skills in the context of society. Focus on your common mistakes area for maximum improvement.', '["75 vocabulary items about Society & Community","present_tense — grammar explanation and practice","Reading comprehension: text about Society & Community","Listening comprehension: dialogue about Society & Community","Speaking practice: roleplay/discussion about Society & Community","Writing task: text about Society & Community"]', '[{"title":"Gesellschaft und Zusammenleben Review","summary":"present_tense — the main grammar focus. Focus on using this structure naturally in conversations and writing."}]', ARRAY['die Gesellschaft (society)','die Politik (politics)','die Integration (integration)','die Kultur (culture)','der Bürger (citizen)']::text[], ARRAY['Don''t translate from Arabic word-for-word — German has different sentence structure','Learn every noun with its article: NEVER learn "Tisch" alone, always "der Tisch"','Watch out for verb position in Nebensätze']::text[], ARRAY['Practice 15-20 minutes daily — consistency beats intensity','Speak out loud: German pronunciation needs muscle memory','Use the new vocabulary within 24 hours or you''ll forget it','Watch German YouTube videos about Society & Community for authentic input']::text[]);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000032868d6f', 'Pronunciation: Intonation and sentence melody', 'German sentences have a falling intonation at the end of statements. Questions starting with a verb rise at the end. W-questions fall at the end. Emphasise the stressed syllable — German stresses the first syllable of the root.

Common mistake for Arabic speakers: Arabic speakers often put stress on the wrong syllable. Remember: German root stress is usually on the first syllable.', '[]', '[{"german":"warum","arabic":"","english":"","phonetic":"/vaˈrʊm/"},{"german":"deshalb","arabic":"","english":"","phonetic":"/dɛsˈhalp/"}]', '[]', 10);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000032868d6f', 'translation', 'Translate to German: "I use the word "society" in a sentence about Society & Community."', '[]', 'Die Gesellschaft verändert sich.', 'Use die  "die Gesellschaft" with the correct present_tense form.', 1, 40);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000032868d6f', 'translation', 'Translate to German: "I use the word "politics" in a sentence about Society & Community."', '[]', 'Politik ist ein wichtiges Thema.', 'Use die  "die Politik" with the correct present_tense form.', 1, 41);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000032868d6f', 'translation', 'Translate to German: "I use the word "integration" in a sentence about Society & Community."', '[]', 'Integration ist wichtig.', 'Use die  "die Integration" with the correct present_tense form.', 1, 42);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000032868d6f', 'Culture: 🇩🇪 Deutsche Kultur: Society & Community', 'Society & Community in Germany has specific cultural nuances that differ from Arabic-speaking countries. Germans tend to separate their private and professional lives strictly. When dealing with Society & Community in a professional context, use formal register and prepare factual arguments. Emotional appeals are less effective than logical reasoning.

لدى Society & Community في ألمانيا فروق ثقافية دقيقة تختلف عن البلدان العربية. الألمان يفصلون بين حياتهم الخاصة والمهنية بشكل صارم.', '["Tip: Always use \"Sie\" (formal) with strangers and colleagues","Tip: Germans appreciate punctuality — arrive 5 minutes early","Tip: Direct feedback is a sign of respect, not criticism","Tip: Prepare factual arguments, not emotional appeals"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000032868d6f', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Incorrect preposition usage after verbs","correction":"Learn which preposition each verb requires (sich freuen auf, warten auf, denken an)","explanation":"Arabic and German have different sentence structures. Arabic is VSO, German is SVO with verb in position 2."},{"mistake":"Putting the verb at the end in main clauses","correction":"Verb stays in position 2 in main clauses","explanation":"Subordinate clause word order interferes"}]', 30);

  -- Lesson 3: Präteritum: sein, haben, wissen (L-B1-01-03)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-000032868d6e', '00000000-0000-4000-a000-000039c2eadf', 'Präteritum: sein, haben, wissen', 'Learn the simple past of important irregular verbs.', 'Simple Past', 'grammar', '["Understand and apply present_tense rules correctly","Use present_tense in real conversations","Avoid common mistakes Arabic speakers make with present_tense","Read and understand present_tense in context","Listen and identify present_tense in speech","Write sentences using present_tense correctly"]', 60, 3, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, french_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-000032868d6e', 'die Gesellschaft', 'المجتمع', 'society', NULL, 'die', NULL, 'noun', 'Die Gesellschaft verändert sich.', 'Society is changing.', 'B1', 1),
  ('00000000-0000-4000-a000-000032868d6e', 'die Politik', 'السياسة', 'politics', NULL, 'die', NULL, 'noun', 'Politik ist ein wichtiges Thema.', 'Politics is an important topic.', 'B1', 2),
  ('00000000-0000-4000-a000-000032868d6e', 'die Integration', 'الاندماج', 'integration', NULL, 'die', NULL, 'noun', 'Integration ist wichtig.', 'Integration is important.', 'B1', 3),
  ('00000000-0000-4000-a000-000032868d6e', 'die Kultur', 'الثقافة', 'culture', NULL, 'die', NULL, 'noun', 'Die deutsche Kultur ist vielfältig.', 'German culture is diverse.', 'A2', 4),
  ('00000000-0000-4000-a000-000032868d6e', 'der Bürger', 'المواطن', 'citizen', NULL, 'der', 'die Bürger', 'noun', 'Die Bürger wählen.', 'The citizens vote.', 'B1', 5),
  ('00000000-0000-4000-a000-000032868d6e', 'die Freiheit', 'الحرية', 'freedom', NULL, 'die', NULL, 'noun', 'Freiheit ist ein Grundrecht.', 'Freedom is a basic right.', 'B1', 6),
  ('00000000-0000-4000-a000-000032868d6e', 'die Gleichberechtigung', 'المساواة', 'equality', NULL, 'die', NULL, 'noun', 'Gleichberechtigung für alle.', 'Equality for all.', 'B2', 7),
  ('00000000-0000-4000-a000-000032868d6e', 'die Verantwortung', 'المسؤولية', 'responsibility', NULL, 'die', NULL, 'noun', 'Das ist deine Verantwortung.', 'That is your responsibility.', 'B1', 8),
  ('00000000-0000-4000-a000-000032868d6e', 'der Beruf', 'المهنة', 'profession', NULL, 'der', 'die Berufe', 'noun', 'Was ist dein Beruf?', 'What is your profession?', 'A1', 9),
  ('00000000-0000-4000-a000-000032868d6e', 'die Firma', 'الشركة', 'company', NULL, 'die', 'die Firmen', 'noun', 'Die Firma ist in Berlin.', 'The company is in Berlin.', 'A1', 10),
  ('00000000-0000-4000-a000-000032868d6e', 'der Kollege', 'الزميل', 'colleague', NULL, 'der', 'die Kollegen', 'noun', 'Mein Kollege hilft mir.', 'My colleague helps me.', 'A1', 11),
  ('00000000-0000-4000-a000-000032868d6e', 'das Büro', 'المكتب', 'office', NULL, 'das', 'die Büros', 'noun', 'Das Büro ist im dritten Stock.', 'The office is on the third floor.', 'A1', 12),
  ('00000000-0000-4000-a000-000032868d6e', 'die Besprechung', 'الاجتماع', 'meeting', NULL, 'die', 'die Besprechungen', 'noun', 'Wir haben eine Besprechung.', 'We have a meeting.', 'B1', 13),
  ('00000000-0000-4000-a000-000032868d6e', 'der Chef', 'المدير', 'boss', NULL, 'der', 'die Chefs', 'noun', 'Mein Chef ist freundlich.', 'My boss is friendly.', 'A1', 14),
  ('00000000-0000-4000-a000-000032868d6e', 'das Gehalt', 'الراتب', 'salary', NULL, 'das', 'die Gehälter', 'noun', 'Das Gehalt ist gut.', 'The salary is good.', 'B1', 15),
  ('00000000-0000-4000-a000-000032868d6e', 'die Stelle', 'الوظيفة', 'position', NULL, 'die', 'die Stellen', 'noun', 'Ich suche eine neue Stelle.', 'I am looking for a new position.', 'B1', 16),
  ('00000000-0000-4000-a000-000032868d6e', 'die Schule', 'المدرسة', 'school', NULL, 'die', 'die Schulen', 'noun', 'Die Kinder gehen zur Schule.', 'The children go to school.', 'A1', 17),
  ('00000000-0000-4000-a000-000032868d6e', 'der Lehrer', 'المعلم', 'teacher', NULL, 'der', 'die Lehrer', 'noun', 'Der Lehrer erklärt die Grammatik.', 'The teacher explains the grammar.', 'A1', 18),
  ('00000000-0000-4000-a000-000032868d6e', 'der Student', 'الطالب', 'student', NULL, 'der', 'die Studenten', 'noun', 'Der Student lernt Deutsch.', 'The student learns German.', 'A1', 19),
  ('00000000-0000-4000-a000-000032868d6e', 'die Universität', 'الجامعة', 'university', NULL, 'die', 'die Universitäten', 'noun', 'Die Universität ist alt.', 'The university is old.', 'B1', 20),
  ('00000000-0000-4000-a000-000032868d6e', 'der Kurs', 'الدورة', 'course', NULL, 'der', 'die Kurse', 'noun', 'Der Kurs kostet 200 Euro.', 'The course costs 200 euros.', 'A2', 21),
  ('00000000-0000-4000-a000-000032868d6e', 'die Prüfung', 'الامتحان', 'exam', NULL, 'die', 'die Prüfungen', 'noun', 'Die Prüfung ist schwer.', 'The exam is difficult.', 'B1', 22),
  ('00000000-0000-4000-a000-000032868d6e', 'das Studium', 'الدراسة الجامعية', 'studies', NULL, 'das', NULL, 'noun', 'Mein Studium dauert vier Jahre.', 'My studies take four years.', 'B1', 23),
  ('00000000-0000-4000-a000-000032868d6e', 'lernen', 'يتعلم', 'to learn', NULL, NULL, NULL, 'verb', 'Ich lerne Deutsch.', 'I learn German.', 'A1', 24),
  ('00000000-0000-4000-a000-000032868d6e', 'die Zeitung', 'الجريدة', 'newspaper', NULL, 'die', 'die Zeitungen', 'noun', 'Ich lese die Zeitung.', 'I read the newspaper.', 'A2', 25),
  ('00000000-0000-4000-a000-000032868d6e', 'das Internet', 'الإنترنت', 'internet', NULL, 'das', NULL, 'noun', 'Das Internet ist schnell.', 'The internet is fast.', 'A2', 26),
  ('00000000-0000-4000-a000-000032868d6e', 'der Artikel', 'المقال', 'article', NULL, 'der', 'die Artikel', 'noun', 'Der Artikel ist interessant.', 'The article is interesting.', 'B1', 27),
  ('00000000-0000-4000-a000-000032868d6e', 'die Nachricht', 'الخبر', 'news', NULL, 'die', 'die Nachrichten', 'noun', 'Ich sehe die Nachrichten.', 'I watch the news.', 'A2', 28),
  ('00000000-0000-4000-a000-000032868d6e', 'das Radio', 'الراديو', 'radio', NULL, 'das', 'die Radios', 'noun', 'Ich höre Radio.', 'I listen to the radio.', 'A2', 29),
  ('00000000-0000-4000-a000-000032868d6e', 'das Fernsehen', 'التلفاز', 'television', NULL, 'das', NULL, 'noun', 'Das Fernsehen läuft.', 'The television is on.', 'A2', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000032868d6e', 'Nebensätze mit "dass", "weil", "obwohl" (Subordinate Clauses) / الجمل الثانوية مع dass, weil, obwohl', 'Subordinate clauses push the conjugated verb to the END of the clause. The conjunction initiates the subordinate clause. Common conjunctions: dass (that), weil (because), obwohl (although), wenn (if/when), während (while). The subordinate clause can come before or after the main clause.', '[{"rule":"Verb goes to END in subordinate clause","note":"Ich weiß, dass er morgen kommt. (NOT: ...dass er kommt morgen)"},{"rule":"Wenn clause first → verb starts main clause","note":"Wenn ich Zeit habe, gehe ich ins Kino."},{"rule":"Weil answers \"why\" questions","note":"Ich lerne Deutsch, weil ich in Berlin studieren will."}]', '[{"german":"Ich denke, dass er recht hat.","arabic":"أعتقد أنه على حق.","english":"I think that he is right."},{"german":"Er lernt Deutsch, weil er in Berlin studiert.","arabic":"هو يتعلم الألمانية لأنه يدرس في برلين.","english":"He learns German because he studies in Berlin."},{"german":"Obwohl es regnet, gehe ich spazieren.","arabic":"على الرغم من المطر، أذهب للتنزه.","english":"Although it is raining, I go for a walk."}]', '[{"mistake":"Ich weiß, dass er kommt morgen (verb stays in position 2)","correction":"Ich weiß, dass er morgen kommt.","explanation":"In \"dass\" clauses, the verb ALWAYS goes to the end."},{"mistake":"Weil ich bin müde (verb stays after \"weil\")","correction":"Weil ich müde bin.","explanation":"Weil + subject + ... + verb (at the end)."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000032868d6e', 'multiple_choice', 'Welches deutsche Wort bedeutet "society"?', '["die Kultur","die Integration","die Politik","der Bürger"]', 'die Gesellschaft', '"society" = "die Gesellschaft" in German. Article: die ', 1, 1),
  ('00000000-0000-4000-a000-000032868d6e', 'multiple_choice', 'Welches deutsche Wort bedeutet "politics"?', '["die Gesellschaft","der Bürger","die Politik","die Kultur"]', 'die Politik', '"politics" = "die Politik" in German. Article: die ', 1, 2),
  ('00000000-0000-4000-a000-000032868d6e', 'multiple_choice', 'Welches deutsche Wort bedeutet "integration"?', '["die Integration","die Gesellschaft","der Bürger","die Politik"]', 'die Integration', '"integration" = "die Integration" in German. Article: die ', 1, 3),
  ('00000000-0000-4000-a000-000032868d6e', 'multiple_choice', 'Welches deutsche Wort bedeutet "culture"?', '["die Integration","die Kultur","die Gesellschaft","die Politik"]', 'die Kultur', '"culture" = "die Kultur" in German. Article: die ', 1, 4),
  ('00000000-0000-4000-a000-000032868d6e', 'multiple_choice', 'Welches deutsche Wort bedeutet "citizen"?', '["die Gesellschaft","die Integration","der Bürger","die Kultur"]', 'der Bürger', '"citizen" = "der Bürger" in German. Article: der Plural: die Bürger', 1, 5),
  ('00000000-0000-4000-a000-000032868d6e', 'fill_gap', 'Ergänze den Satz: Ich ___ gern über Simple Past. (sprechen)', '["spreche","sprichst","spricht","sprechen"]', 'spreche', 'ich spreche gern = I like to speak. Stem: sprech- + e.', 2, 6),
  ('00000000-0000-4000-a000-000032868d6e', 'translation', 'Übersetze ins Deutsche: "I am learning about Simple Past."', '["Ich lerne über Simple Past.","Ich lerne Simple Past.","Lerne ich Simple Past."]', 'Ich lerne über Simple Past.', '"Ich lerne über..." = "I am learning about..."', 2, 7),
  ('00000000-0000-4000-a000-000032868d6e', 'matching', 'Match: Which word pairs are correct?', '["die Gesellschaft - society, die Politik - politics"]', 'Matched correctly', 'Each German word has a unique English equivalent.', 2, 8);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-000032868d6e', 'multiple_choice', 'Was bedeutet "die Gesellschaft" auf Deutsch?', '["society","to run","beautiful","yesterday"]', 'society', 1, 1),
  ('00000000-0000-4000-a000-000032868d6e', 'multiple_choice', 'Welcher Artikel gehört zu "die Politik"?', '["der","die","das","den"]', 'die', 1, 2),
  ('00000000-0000-4000-a000-000032868d6e', 'true_false', 'Das Wort "die Integration" gehört zum Thema Simple Past.', '["True","False"]', 'True', 1, 3),
  ('00000000-0000-4000-a000-000032868d6e', 'multiple_choice', 'Welcher Satz verwendet present_tense?', '["Ich denke, dass er recht hat.","Er lernt Deutsch, weil er in Berlin studiert.","Obwohl es regnet, gehe ich spazieren."]', 'Ich denke, dass er recht hat.', 2, 4),
  ('00000000-0000-4000-a000-000032868d6e', 'true_false', ''Im Deutschen steht das Verb an zweiter Position im Hauptsatz.', '["True","False"]', 'True', 1, 5),
  ('00000000-0000-4000-a000-000032868d6e', 'fill_blank', 'Complete: Ich ___ (culture) Deutsch.', '["die Kultur","lernt","lernst","lernen"]', 'lerne', 2, 6),
  ('00000000-0000-4000-a000-000032868d6e', 'multiple_choice', 'Wie lautet das deutsche Wort für "citizen"?', '["der Bürger","die Freiheit","die Gleichberechtigung","die Verantwortung"]', 'der Bürger', 1, 7),
  ('00000000-0000-4000-a000-000032868d6e', 'true_false', 'Im Deutschen werden alle Nomen großgeschrieben.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-000032868d6e', 'multiple_choice', 'How do you say "please" in a restaurant in Germany?', '["Bitte","Danke","Tschüss","Hallo"]', 'Bitte', 1, 9),
  ('00000000-0000-4000-a000-000032868d6e', 'fill_blank', 'Wo ___ (to live) du?', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 2, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, french_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-000032868d6e', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', NULL, 'Used in Alltag und Gesellschaft', 'formal', false, 1),
  ('00000000-0000-4000-a000-000032868d6e', 'Guten Tag!', 'Good day!', 'نهارك سعيد!', NULL, 'Used in Alltag und Gesellschaft', 'formal', false, 2),
  ('00000000-0000-4000-a000-000032868d6e', 'Hallo, wie geht es Ihnen?', 'Hello, how are you?', 'مرحباً، كيف حالكم؟', NULL, 'Used in Alltag und Gesellschaft', 'formal', false, 3),
  ('00000000-0000-4000-a000-000032868d6e', 'Schön, Sie kennenzulernen!', 'Nice to meet you!', 'سعيد بلقائكم!', NULL, 'Used in Alltag und Gesellschaft', 'formal', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-000032868d6e', 'die die Gesellschaft', 'society — المجتمع', 'noun', 'vocabulary', 1),
  ('00000000-0000-4000-a000-000032868d6e', 'die die Politik', 'politics — السياسة', 'noun', 'vocabulary', 2),
  ('00000000-0000-4000-a000-000032868d6e', 'die die Integration', 'integration — الاندماج', 'noun', 'vocabulary', 3),
  ('00000000-0000-4000-a000-000032868d6e', 'die die Kultur', 'culture — الثقافة', 'noun', 'vocabulary', 4),
  ('00000000-0000-4000-a000-000032868d6e', 'der der Bürger (die Bürger)', 'citizen — المواطن', 'noun', 'vocabulary', 5),
  ('00000000-0000-4000-a000-000032868d6e', 'die die Freiheit', 'freedom — الحرية', 'noun', 'vocabulary', 6),
  ('00000000-0000-4000-a000-000032868d6e', 'die die Gleichberechtigung', 'equality — المساواة', 'noun', 'vocabulary', 7),
  ('00000000-0000-4000-a000-000032868d6e', 'die die Verantwortung', 'responsibility — المسؤولية', 'noun', 'vocabulary', 8),
  ('00000000-0000-4000-a000-000032868d6e', 'der der Beruf (die Berufe)', 'profession — المهنة', 'noun', 'vocabulary', 9),
  ('00000000-0000-4000-a000-000032868d6e', 'die die Firma (die Firmen)', 'company — الشركة', 'noun', 'vocabulary', 10),
  ('00000000-0000-4000-a000-000032868d6e', 'der der Kollege (die Kollegen)', 'colleague — الزميل', 'noun', 'vocabulary', 11),
  ('00000000-0000-4000-a000-000032868d6e', 'das das Büro (die Büros)', 'office — المكتب', 'noun', 'vocabulary', 12),
  ('00000000-0000-4000-a000-000032868d6e', 'die die Besprechung (die Besprechungen)', 'meeting — الاجتماع', 'noun', 'vocabulary', 13),
  ('00000000-0000-4000-a000-000032868d6e', 'der der Chef (die Chefs)', 'boss — المدير', 'noun', 'vocabulary', 14),
  ('00000000-0000-4000-a000-000032868d6e', 'das das Gehalt (die Gehälter)', 'salary — الراتب', 'noun', 'vocabulary', 15),
  ('00000000-0000-4000-a000-000032868d6e', 'Ich denke, dass er recht hat.', 'I think that he is right.', 'Nebensätze mit "dass", "weil", "obwohl" (Subordinate Clauses)', 'grammar', 16),
  ('00000000-0000-4000-a000-000032868d6e', 'Er lernt Deutsch, weil er in Berlin studiert.', 'He learns German because he studies in Berlin.', 'Nebensätze mit "dass", "weil", "obwohl" (Subordinate Clauses)', 'grammar', 17),
  ('00000000-0000-4000-a000-000032868d6e', 'Obwohl es regnet, gehe ich spazieren.', 'Although it is raining, I go for a walk.', 'Nebensätze mit "dass", "weil", "obwohl" (Subordinate Clauses)', 'grammar', 18);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, french_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-000032868d6e', 'Präteritum: sein, haben, wissen — Leseübung', 'Die deutsche Gesellschaft ist vielfältig und multikulturell. In den großen Städten wie Berlin, München oder Hamburg leben Menschen aus über 190 Nationen zusammen. Integration ist ein wichtiges Thema. Viele Menschen mit Migrationshintergrund haben sich erfolgreich integriert und tragen zur Gesellschaft bei. Deutschland ist ein Einwanderungsland. Im Jahr 2023 wurden neue Einbürgerungsregeln beschlossen, die den Erwerb der deutschen Staatsbürgerschaft erleichtern sollen.', 'German society is diverse and multicultural. In big cities like Berlin, Munich or Hamburg, people from over 190 nations live together. Integration is an important topic. Many people with a migration background have successfully integrated and contribute to society. Germany is a country of immigration. In 2023, new naturalization rules were passed that aim to make it easier to acquire German citizenship.', 'المجتمع الألماني متنوع ومتعدد الثقافات. في المدن الكبيرة مثل برلين وميونخ وهامبورغ يعيش أناس من أكثر من 190 دولة معاً. الاندماج موضوع مهم. كثير من الأشخاص ذوي خلفية هجرة اندمجوا بنجاح ويساهمون في المجتمع. ألمانيا بلد هجرة. في عام 2023 تم إقرار قواعد تجنيس جديدة تهدف إلى تسهيل الحصول على الجنسية الألمانية.', NULL, 60, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, french_translation, duration_seconds, speaker_count, scenario) values
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

[Lehrerin]: ممتاز! إلى الغد!', '[Lehrerin]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: ', 72, 2, 'Alltag und Gesellschaft');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-000032868d6e', '🔊 Sprechen: Präteritum: sein, haben, wissen', 'Discussion: You attend a German Stammtisch (weekly meetup). Discuss Simple Past with the group. Express your opinion, agree/disagree, ask follow-up questions. Try to keep the conversation flowing for 2 minutes.', 'Simple Past', ARRAY['Use discourse markers (also, jedoch, außerdem)','React naturally: "Ach so!", "Echt?", "Das stimmt!"','Paraphrase when you don''t know a word']::text[], ARRAY['die Gesellschaft','die Politik','die Integration','die Kultur','der Bürger','die Freiheit','die Gleichberechtigung','die Verantwortung']::text[], 60, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-000032868d6e', '✏️ Schreiben: Präteritum: sein, haben, wissen', 'Write a formal letter (200-250 words) to your German teacher explaining what you learned about "Simple Past". Include: what surprised you, what was similar/different to your culture, and what you want to learn next. Use present_tense correctly.', ARRAY['Use paragraph breaks for structure','Connect ideas with "außerdem", "deshalb", "jedoch"','Check your verb position in Nebensätze']::text[], ARRAY['die Gesellschaft','die Politik','die Integration','die Kultur','der Bürger','die Freiheit','die Gleichberechtigung','die Verantwortung']::text[], ARRAY['Sentence structure','Vocabulary usage']::text[], 150, 250, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000032868d6e', 'Präteritum: sein, haben, wissen — Roleplay', 'Simple Past', 'Student', 'Teacher', 'Practice conversation about Simple Past', 'Hallo! Lass uns über dieses Thema sprechen.', 'intermediate', 1, ARRAY['die Gesellschaft','die Politik','die Integration','die Kultur','der Bürger','die Freiheit','die Gleichberechtigung','die Verantwortung']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000032868d6e', 'Präteritum: sein, haben, wissen — Advanced Roleplay', 'Simple Past', 'Customer', 'Assistant', 'Extended conversation about Simple Past', 'Guten Tag! Wie kann ich Ihnen helfen?', 'intermediate', 2, ARRAY['die Gesellschaft','die Politik','die Integration','die Kultur','der Bürger','die Freiheit','die Gleichberechtigung','die Verantwortung']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-000032868d6e', 'Präteritum: sein, haben, wissen — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Präteritum: sein, haben, wissen".', 'Creative practice for Simple Past', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-000032868d6e', '📚 Hausaufgabe: Präteritum: sein, haben, wissen', 'Complete these tasks to reinforce "Präteritum: sein, haben, wissen".', 'mixed', '[{"description":"Create 10 flashcards from this lesson''s vocabulary — write German on one side, Arabic on the other. Test yourself 3 times."},{"description":"Write 6 sentences about Simple Past: 2 statements, 2 questions, 2 negations — all using present_tense."},{"description":"Record yourself reading the dialogue aloud. Listen to the recording and note 3 things to improve."},{"description":"Find 3 real German websites, videos, or articles about Simple Past. Note 5 new words you discovered."}]', 50, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-000032868d6e', '🎯 Excellent progress! This lesson covered Simple Past (75 vocabulary items) and present_tense. You developed reading, listening, speaking, and writing skills in the context of society. Focus on your common mistakes area for maximum improvement.', '["75 vocabulary items about Simple Past","present_tense — grammar explanation and practice","Reading comprehension: text about Simple Past","Listening comprehension: dialogue about Simple Past","Speaking practice: roleplay/discussion about Simple Past","Writing task: text about Simple Past"]', '[{"title":"Präteritum: sein, haben, wissen Review","summary":"present_tense — the main grammar focus. Focus on using this structure naturally in conversations and writing."}]', ARRAY['die Gesellschaft (society)','die Politik (politics)','die Integration (integration)','die Kultur (culture)','der Bürger (citizen)']::text[], ARRAY['Don''t translate from Arabic word-for-word — German has different sentence structure','Learn every noun with its article: NEVER learn "Tisch" alone, always "der Tisch"','Watch out for verb position in Nebensätze']::text[], ARRAY['Practice 15-20 minutes daily — consistency beats intensity','Speak out loud: German pronunciation needs muscle memory','Use the new vocabulary within 24 hours or you''ll forget it','Watch German YouTube videos about Simple Past for authentic input']::text[]);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000032868d6e', 'Pronunciation: Intonation and sentence melody', 'German sentences have a falling intonation at the end of statements. Questions starting with a verb rise at the end. W-questions fall at the end. Emphasise the stressed syllable — German stresses the first syllable of the root.

Common mistake for Arabic speakers: Arabic speakers often put stress on the wrong syllable. Remember: German root stress is usually on the first syllable.', '[]', '[{"german":"warum","arabic":"","english":"","phonetic":"/vaˈrʊm/"},{"german":"deshalb","arabic":"","english":"","phonetic":"/dɛsˈhalp/"}]', '[]', 10);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000032868d6e', 'translation', 'Translate to German: "I use the word "society" in a sentence about Simple Past."', '[]', 'Die Gesellschaft verändert sich.', 'Use die  "die Gesellschaft" with the correct present_tense form.', 1, 40);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000032868d6e', 'translation', 'Translate to German: "I use the word "politics" in a sentence about Simple Past."', '[]', 'Politik ist ein wichtiges Thema.', 'Use die  "die Politik" with the correct present_tense form.', 1, 41);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000032868d6e', 'translation', 'Translate to German: "I use the word "integration" in a sentence about Simple Past."', '[]', 'Integration ist wichtig.', 'Use die  "die Integration" with the correct present_tense form.', 1, 42);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000032868d6e', 'Culture: 🇩🇪 Deutsche Kultur: Simple Past', 'Simple Past in Germany has specific cultural nuances that differ from Arabic-speaking countries. Germans tend to separate their private and professional lives strictly. When dealing with Simple Past in a professional context, use formal register and prepare factual arguments. Emotional appeals are less effective than logical reasoning.

لدى Simple Past في ألمانيا فروق ثقافية دقيقة تختلف عن البلدان العربية. الألمان يفصلون بين حياتهم الخاصة والمهنية بشكل صارم.', '["Tip: Always use \"Sie\" (formal) with strangers and colleagues","Tip: Germans appreciate punctuality — arrive 5 minutes early","Tip: Direct feedback is a sign of respect, not criticism","Tip: Prepare factual arguments, not emotional appeals"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000032868d6e', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Incorrect preposition usage after verbs","correction":"Learn which preposition each verb requires (sich freuen auf, warten auf, denken an)","explanation":"Arabic and German have different sentence structures. Arabic is VSO, German is SVO with verb in position 2."},{"mistake":"Putting the verb at the end in main clauses","correction":"Verb stays in position 2 in main clauses","explanation":"Subordinate clause word order interferes"}]', 30);

  -- Lesson 4: Nebensätze mit weil, da, obwohl (L-B1-01-04)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-000032868d6d', '00000000-0000-4000-a000-000039c2eadf', 'Nebensätze mit weil, da, obwohl', 'Learn subordinate clauses for reasons and concessions.', 'Subordinate Clauses', 'grammar', '["Understand and apply present_tense rules correctly","Use present_tense in real conversations","Avoid common mistakes Arabic speakers make with present_tense","Read and understand present_tense in context","Listen and identify present_tense in speech","Write sentences using present_tense correctly"]', 60, 4, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, french_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-000032868d6d', 'die Gesellschaft', 'المجتمع', 'society', NULL, 'die', NULL, 'noun', 'Die Gesellschaft verändert sich.', 'Society is changing.', 'B1', 1),
  ('00000000-0000-4000-a000-000032868d6d', 'die Politik', 'السياسة', 'politics', NULL, 'die', NULL, 'noun', 'Politik ist ein wichtiges Thema.', 'Politics is an important topic.', 'B1', 2),
  ('00000000-0000-4000-a000-000032868d6d', 'die Integration', 'الاندماج', 'integration', NULL, 'die', NULL, 'noun', 'Integration ist wichtig.', 'Integration is important.', 'B1', 3),
  ('00000000-0000-4000-a000-000032868d6d', 'die Kultur', 'الثقافة', 'culture', NULL, 'die', NULL, 'noun', 'Die deutsche Kultur ist vielfältig.', 'German culture is diverse.', 'A2', 4),
  ('00000000-0000-4000-a000-000032868d6d', 'der Bürger', 'المواطن', 'citizen', NULL, 'der', 'die Bürger', 'noun', 'Die Bürger wählen.', 'The citizens vote.', 'B1', 5),
  ('00000000-0000-4000-a000-000032868d6d', 'die Freiheit', 'الحرية', 'freedom', NULL, 'die', NULL, 'noun', 'Freiheit ist ein Grundrecht.', 'Freedom is a basic right.', 'B1', 6),
  ('00000000-0000-4000-a000-000032868d6d', 'die Gleichberechtigung', 'المساواة', 'equality', NULL, 'die', NULL, 'noun', 'Gleichberechtigung für alle.', 'Equality for all.', 'B2', 7),
  ('00000000-0000-4000-a000-000032868d6d', 'die Verantwortung', 'المسؤولية', 'responsibility', NULL, 'die', NULL, 'noun', 'Das ist deine Verantwortung.', 'That is your responsibility.', 'B1', 8),
  ('00000000-0000-4000-a000-000032868d6d', 'der Beruf', 'المهنة', 'profession', NULL, 'der', 'die Berufe', 'noun', 'Was ist dein Beruf?', 'What is your profession?', 'A1', 9),
  ('00000000-0000-4000-a000-000032868d6d', 'die Firma', 'الشركة', 'company', NULL, 'die', 'die Firmen', 'noun', 'Die Firma ist in Berlin.', 'The company is in Berlin.', 'A1', 10),
  ('00000000-0000-4000-a000-000032868d6d', 'der Kollege', 'الزميل', 'colleague', NULL, 'der', 'die Kollegen', 'noun', 'Mein Kollege hilft mir.', 'My colleague helps me.', 'A1', 11),
  ('00000000-0000-4000-a000-000032868d6d', 'das Büro', 'المكتب', 'office', NULL, 'das', 'die Büros', 'noun', 'Das Büro ist im dritten Stock.', 'The office is on the third floor.', 'A1', 12),
  ('00000000-0000-4000-a000-000032868d6d', 'die Besprechung', 'الاجتماع', 'meeting', NULL, 'die', 'die Besprechungen', 'noun', 'Wir haben eine Besprechung.', 'We have a meeting.', 'B1', 13),
  ('00000000-0000-4000-a000-000032868d6d', 'der Chef', 'المدير', 'boss', NULL, 'der', 'die Chefs', 'noun', 'Mein Chef ist freundlich.', 'My boss is friendly.', 'A1', 14),
  ('00000000-0000-4000-a000-000032868d6d', 'das Gehalt', 'الراتب', 'salary', NULL, 'das', 'die Gehälter', 'noun', 'Das Gehalt ist gut.', 'The salary is good.', 'B1', 15),
  ('00000000-0000-4000-a000-000032868d6d', 'die Stelle', 'الوظيفة', 'position', NULL, 'die', 'die Stellen', 'noun', 'Ich suche eine neue Stelle.', 'I am looking for a new position.', 'B1', 16),
  ('00000000-0000-4000-a000-000032868d6d', 'die Schule', 'المدرسة', 'school', NULL, 'die', 'die Schulen', 'noun', 'Die Kinder gehen zur Schule.', 'The children go to school.', 'A1', 17),
  ('00000000-0000-4000-a000-000032868d6d', 'der Lehrer', 'المعلم', 'teacher', NULL, 'der', 'die Lehrer', 'noun', 'Der Lehrer erklärt die Grammatik.', 'The teacher explains the grammar.', 'A1', 18),
  ('00000000-0000-4000-a000-000032868d6d', 'der Student', 'الطالب', 'student', NULL, 'der', 'die Studenten', 'noun', 'Der Student lernt Deutsch.', 'The student learns German.', 'A1', 19),
  ('00000000-0000-4000-a000-000032868d6d', 'die Universität', 'الجامعة', 'university', NULL, 'die', 'die Universitäten', 'noun', 'Die Universität ist alt.', 'The university is old.', 'B1', 20),
  ('00000000-0000-4000-a000-000032868d6d', 'der Kurs', 'الدورة', 'course', NULL, 'der', 'die Kurse', 'noun', 'Der Kurs kostet 200 Euro.', 'The course costs 200 euros.', 'A2', 21),
  ('00000000-0000-4000-a000-000032868d6d', 'die Prüfung', 'الامتحان', 'exam', NULL, 'die', 'die Prüfungen', 'noun', 'Die Prüfung ist schwer.', 'The exam is difficult.', 'B1', 22),
  ('00000000-0000-4000-a000-000032868d6d', 'das Studium', 'الدراسة الجامعية', 'studies', NULL, 'das', NULL, 'noun', 'Mein Studium dauert vier Jahre.', 'My studies take four years.', 'B1', 23),
  ('00000000-0000-4000-a000-000032868d6d', 'lernen', 'يتعلم', 'to learn', NULL, NULL, NULL, 'verb', 'Ich lerne Deutsch.', 'I learn German.', 'A1', 24),
  ('00000000-0000-4000-a000-000032868d6d', 'die Zeitung', 'الجريدة', 'newspaper', NULL, 'die', 'die Zeitungen', 'noun', 'Ich lese die Zeitung.', 'I read the newspaper.', 'A2', 25),
  ('00000000-0000-4000-a000-000032868d6d', 'das Internet', 'الإنترنت', 'internet', NULL, 'das', NULL, 'noun', 'Das Internet ist schnell.', 'The internet is fast.', 'A2', 26),
  ('00000000-0000-4000-a000-000032868d6d', 'der Artikel', 'المقال', 'article', NULL, 'der', 'die Artikel', 'noun', 'Der Artikel ist interessant.', 'The article is interesting.', 'B1', 27),
  ('00000000-0000-4000-a000-000032868d6d', 'die Nachricht', 'الخبر', 'news', NULL, 'die', 'die Nachrichten', 'noun', 'Ich sehe die Nachrichten.', 'I watch the news.', 'A2', 28),
  ('00000000-0000-4000-a000-000032868d6d', 'das Radio', 'الراديو', 'radio', NULL, 'das', 'die Radios', 'noun', 'Ich höre Radio.', 'I listen to the radio.', 'A2', 29),
  ('00000000-0000-4000-a000-000032868d6d', 'das Fernsehen', 'التلفاز', 'television', NULL, 'das', NULL, 'noun', 'Das Fernsehen läuft.', 'The television is on.', 'A2', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000032868d6d', 'Adjektivdeklination (Adjective Declension) / تصريف الصفات', 'When an adjective comes before a noun, it must agree in gender, number, and case. There are three declension patterns: after "der" words (weak), after "ein" words (mixed), and without article (strong). The endings depend on which information the article already provides.', '[{"rule":"Weak (after der/die/das): -e or -en","note":"der gute Mann, die gute Frau, das gute Kind, die guten Leute"},{"rule":"Mixed (after ein/mein/kein): article ending + adjective ending","note":"ein guter Mann, eine gute Frau, ein gutes Kind, keine guten Leute"}]', '[{"german":"Der große Hund gehört der alten Frau.","arabic":"الكلب الكبير ملك للمرأة العجوز.","english":"The big dog belongs to the old woman."},{"german":"Ein interessantes Buch liegt auf dem Tisch.","arabic":"كتاب مثير للاهتمام على الطاولة.","english":"An interesting book is on the table."}]', '[{"mistake":"Der groß Hund (no ending on adjective)","correction":"Der große Hund","explanation":"Adjectives before nouns MUST have an ending in German."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000032868d6d', 'multiple_choice', 'Welches deutsche Wort bedeutet "society"?', '["die Gesellschaft","die Politik","der Bürger","die Integration"]', 'die Gesellschaft', '"society" = "die Gesellschaft" in German. Article: die ', 1, 1),
  ('00000000-0000-4000-a000-000032868d6d', 'multiple_choice', 'Welches deutsche Wort bedeutet "politics"?', '["die Politik","die Gesellschaft","die Integration","die Kultur"]', 'die Politik', '"politics" = "die Politik" in German. Article: die ', 1, 2),
  ('00000000-0000-4000-a000-000032868d6d', 'multiple_choice', 'Welches deutsche Wort bedeutet "integration"?', '["die Integration","die Gesellschaft","der Bürger","die Politik"]', 'die Integration', '"integration" = "die Integration" in German. Article: die ', 1, 3),
  ('00000000-0000-4000-a000-000032868d6d', 'multiple_choice', 'Welches deutsche Wort bedeutet "culture"?', '["der Bürger","die Kultur","die Gesellschaft","die Politik"]', 'die Kultur', '"culture" = "die Kultur" in German. Article: die ', 1, 4),
  ('00000000-0000-4000-a000-000032868d6d', 'multiple_choice', 'Welches deutsche Wort bedeutet "citizen"?', '["die Politik","die Kultur","die Integration","die Gesellschaft"]', 'der Bürger', '"citizen" = "der Bürger" in German. Article: der Plural: die Bürger', 1, 5),
  ('00000000-0000-4000-a000-000032868d6d', 'fill_gap', 'Ergänze den Satz: Ich ___ gern über Subordinate Clauses. (sprechen)', '["spreche","sprichst","spricht","sprechen"]', 'spreche', 'ich spreche gern = I like to speak. Stem: sprech- + e.', 2, 6),
  ('00000000-0000-4000-a000-000032868d6d', 'translation', 'Übersetze ins Deutsche: "I am learning about Subordinate Clauses."', '["Ich lerne über Subordinate Clauses.","Ich lerne Subordinate Clauses.","Lerne ich Subordinate Clauses."]', 'Ich lerne über Subordinate Clauses.', '"Ich lerne über..." = "I am learning about..."', 2, 7),
  ('00000000-0000-4000-a000-000032868d6d', 'matching', 'Match: Which word pairs are correct?', '["die Gesellschaft - society, die Politik - politics"]', 'Matched correctly', 'Each German word has a unique English equivalent.', 2, 8);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-000032868d6d', 'multiple_choice', 'Was bedeutet "die Gesellschaft" auf Deutsch?', '["society","to run","beautiful","yesterday"]', 'society', 1, 1),
  ('00000000-0000-4000-a000-000032868d6d', 'multiple_choice', 'Welcher Artikel gehört zu "die Politik"?', '["der","die","das","den"]', 'die', 1, 2),
  ('00000000-0000-4000-a000-000032868d6d', 'true_false', 'Das Wort "die Integration" gehört zum Thema Subordinate Clauses.', '["True","False"]', 'True', 1, 3),
  ('00000000-0000-4000-a000-000032868d6d', 'multiple_choice', 'Welcher Satz verwendet present_tense?', '["Der große Hund gehört der alten Frau.","Ein interessantes Buch liegt auf dem Tisch."]', 'Der große Hund gehört der alten Frau.', 2, 4),
  ('00000000-0000-4000-a000-000032868d6d', 'true_false', ''Im Deutschen steht das Verb an zweiter Position im Hauptsatz.', '["True","False"]', 'True', 1, 5),
  ('00000000-0000-4000-a000-000032868d6d', 'fill_blank', 'Complete: Ich ___ (culture) Deutsch.', '["die Kultur","lernt","lernst","lernen"]', 'lerne', 2, 6),
  ('00000000-0000-4000-a000-000032868d6d', 'multiple_choice', 'Wie lautet das deutsche Wort für "citizen"?', '["der Bürger","die Freiheit","die Gleichberechtigung","die Verantwortung"]', 'der Bürger', 1, 7),
  ('00000000-0000-4000-a000-000032868d6d', 'true_false', 'Im Deutschen werden alle Nomen großgeschrieben.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-000032868d6d', 'multiple_choice', 'How do you say "please" in a restaurant in Germany?', '["Bitte","Danke","Tschüss","Hallo"]', 'Bitte', 1, 9),
  ('00000000-0000-4000-a000-000032868d6d', 'fill_blank', 'Wo ___ (to live) du?', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 2, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, french_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-000032868d6d', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', NULL, 'Used in Alltag und Gesellschaft', 'formal', false, 1),
  ('00000000-0000-4000-a000-000032868d6d', 'Guten Tag!', 'Good day!', 'نهارك سعيد!', NULL, 'Used in Alltag und Gesellschaft', 'formal', false, 2),
  ('00000000-0000-4000-a000-000032868d6d', 'Hallo, wie geht es Ihnen?', 'Hello, how are you?', 'مرحباً، كيف حالكم؟', NULL, 'Used in Alltag und Gesellschaft', 'formal', false, 3),
  ('00000000-0000-4000-a000-000032868d6d', 'Schön, Sie kennenzulernen!', 'Nice to meet you!', 'سعيد بلقائكم!', NULL, 'Used in Alltag und Gesellschaft', 'formal', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-000032868d6d', 'die die Gesellschaft', 'society — المجتمع', 'noun', 'vocabulary', 1),
  ('00000000-0000-4000-a000-000032868d6d', 'die die Politik', 'politics — السياسة', 'noun', 'vocabulary', 2),
  ('00000000-0000-4000-a000-000032868d6d', 'die die Integration', 'integration — الاندماج', 'noun', 'vocabulary', 3),
  ('00000000-0000-4000-a000-000032868d6d', 'die die Kultur', 'culture — الثقافة', 'noun', 'vocabulary', 4),
  ('00000000-0000-4000-a000-000032868d6d', 'der der Bürger (die Bürger)', 'citizen — المواطن', 'noun', 'vocabulary', 5),
  ('00000000-0000-4000-a000-000032868d6d', 'die die Freiheit', 'freedom — الحرية', 'noun', 'vocabulary', 6),
  ('00000000-0000-4000-a000-000032868d6d', 'die die Gleichberechtigung', 'equality — المساواة', 'noun', 'vocabulary', 7),
  ('00000000-0000-4000-a000-000032868d6d', 'die die Verantwortung', 'responsibility — المسؤولية', 'noun', 'vocabulary', 8),
  ('00000000-0000-4000-a000-000032868d6d', 'der der Beruf (die Berufe)', 'profession — المهنة', 'noun', 'vocabulary', 9),
  ('00000000-0000-4000-a000-000032868d6d', 'die die Firma (die Firmen)', 'company — الشركة', 'noun', 'vocabulary', 10),
  ('00000000-0000-4000-a000-000032868d6d', 'der der Kollege (die Kollegen)', 'colleague — الزميل', 'noun', 'vocabulary', 11),
  ('00000000-0000-4000-a000-000032868d6d', 'das das Büro (die Büros)', 'office — المكتب', 'noun', 'vocabulary', 12),
  ('00000000-0000-4000-a000-000032868d6d', 'die die Besprechung (die Besprechungen)', 'meeting — الاجتماع', 'noun', 'vocabulary', 13),
  ('00000000-0000-4000-a000-000032868d6d', 'der der Chef (die Chefs)', 'boss — المدير', 'noun', 'vocabulary', 14),
  ('00000000-0000-4000-a000-000032868d6d', 'das das Gehalt (die Gehälter)', 'salary — الراتب', 'noun', 'vocabulary', 15),
  ('00000000-0000-4000-a000-000032868d6d', 'Der große Hund gehört der alten Frau.', 'The big dog belongs to the old woman.', 'Adjektivdeklination (Adjective Declension)', 'grammar', 16),
  ('00000000-0000-4000-a000-000032868d6d', 'Ein interessantes Buch liegt auf dem Tisch.', 'An interesting book is on the table.', 'Adjektivdeklination (Adjective Declension)', 'grammar', 17);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, french_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-000032868d6d', 'Nebensätze mit weil, da, obwohl — Leseübung', 'Die deutsche Gesellschaft ist vielfältig und multikulturell. In den großen Städten wie Berlin, München oder Hamburg leben Menschen aus über 190 Nationen zusammen. Integration ist ein wichtiges Thema. Viele Menschen mit Migrationshintergrund haben sich erfolgreich integriert und tragen zur Gesellschaft bei. Deutschland ist ein Einwanderungsland. Im Jahr 2023 wurden neue Einbürgerungsregeln beschlossen, die den Erwerb der deutschen Staatsbürgerschaft erleichtern sollen.', 'German society is diverse and multicultural. In big cities like Berlin, Munich or Hamburg, people from over 190 nations live together. Integration is an important topic. Many people with a migration background have successfully integrated and contribute to society. Germany is a country of immigration. In 2023, new naturalization rules were passed that aim to make it easier to acquire German citizenship.', 'المجتمع الألماني متنوع ومتعدد الثقافات. في المدن الكبيرة مثل برلين وميونخ وهامبورغ يعيش أناس من أكثر من 190 دولة معاً. الاندماج موضوع مهم. كثير من الأشخاص ذوي خلفية هجرة اندمجوا بنجاح ويساهمون في المجتمع. ألمانيا بلد هجرة. في عام 2023 تم إقرار قواعد تجنيس جديدة تهدف إلى تسهيل الحصول على الجنسية الألمانية.', NULL, 60, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, french_translation, duration_seconds, speaker_count, scenario) values
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

[Lehrerin]: ممتاز! إلى الغد!', '[Lehrerin]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: ', 72, 2, 'Alltag und Gesellschaft');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-000032868d6d', '🔊 Sprechen: Nebensätze mit weil, da, obwohl', 'Discussion: You attend a German Stammtisch (weekly meetup). Discuss Subordinate Clauses with the group. Express your opinion, agree/disagree, ask follow-up questions. Try to keep the conversation flowing for 2 minutes.', 'Subordinate Clauses', ARRAY['Use discourse markers (also, jedoch, außerdem)','React naturally: "Ach so!", "Echt?", "Das stimmt!"','Paraphrase when you don''t know a word']::text[], ARRAY['die Gesellschaft','die Politik','die Integration','die Kultur','der Bürger','die Freiheit','die Gleichberechtigung','die Verantwortung']::text[], 60, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-000032868d6d', '✏️ Schreiben: Nebensätze mit weil, da, obwohl', 'Write a formal letter (200-250 words) to your German teacher explaining what you learned about "Subordinate Clauses". Include: what surprised you, what was similar/different to your culture, and what you want to learn next. Use present_tense correctly.', ARRAY['Use paragraph breaks for structure','Connect ideas with "außerdem", "deshalb", "jedoch"','Check your verb position in Nebensätze']::text[], ARRAY['die Gesellschaft','die Politik','die Integration','die Kultur','der Bürger','die Freiheit','die Gleichberechtigung','die Verantwortung']::text[], ARRAY['Sentence structure','Vocabulary usage']::text[], 150, 250, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000032868d6d', 'Nebensätze mit weil, da, obwohl — Roleplay', 'Subordinate Clauses', 'Student', 'Teacher', 'Practice conversation about Subordinate Clauses', 'Hallo! Lass uns über dieses Thema sprechen.', 'intermediate', 1, ARRAY['die Gesellschaft','die Politik','die Integration','die Kultur','der Bürger','die Freiheit','die Gleichberechtigung','die Verantwortung']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000032868d6d', 'Nebensätze mit weil, da, obwohl — Advanced Roleplay', 'Subordinate Clauses', 'Customer', 'Assistant', 'Extended conversation about Subordinate Clauses', 'Guten Tag! Wie kann ich Ihnen helfen?', 'intermediate', 2, ARRAY['die Gesellschaft','die Politik','die Integration','die Kultur','der Bürger','die Freiheit','die Gleichberechtigung','die Verantwortung']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-000032868d6d', 'Nebensätze mit weil, da, obwohl — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Nebensätze mit weil, da, obwohl".', 'Creative practice for Subordinate Clauses', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-000032868d6d', '📚 Hausaufgabe: Nebensätze mit weil, da, obwohl', 'Complete these tasks to reinforce "Nebensätze mit weil, da, obwohl".', 'mixed', '[{"description":"Create 10 flashcards from this lesson''s vocabulary — write German on one side, Arabic on the other. Test yourself 3 times."},{"description":"Write 6 sentences about Subordinate Clauses: 2 statements, 2 questions, 2 negations — all using present_tense."},{"description":"Record yourself reading the dialogue aloud. Listen to the recording and note 3 things to improve."},{"description":"Find 3 real German websites, videos, or articles about Subordinate Clauses. Note 5 new words you discovered."}]', 50, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-000032868d6d', '🎯 Excellent progress! This lesson covered Subordinate Clauses (75 vocabulary items) and present_tense. You developed reading, listening, speaking, and writing skills in the context of society. Focus on your common mistakes area for maximum improvement.', '["75 vocabulary items about Subordinate Clauses","present_tense — grammar explanation and practice","Reading comprehension: text about Subordinate Clauses","Listening comprehension: dialogue about Subordinate Clauses","Speaking practice: roleplay/discussion about Subordinate Clauses","Writing task: text about Subordinate Clauses"]', '[{"title":"Nebensätze mit weil, da, obwohl Review","summary":"present_tense — the main grammar focus. Focus on using this structure naturally in conversations and writing."}]', ARRAY['die Gesellschaft (society)','die Politik (politics)','die Integration (integration)','die Kultur (culture)','der Bürger (citizen)']::text[], ARRAY['Don''t translate from Arabic word-for-word — German has different sentence structure','Learn every noun with its article: NEVER learn "Tisch" alone, always "der Tisch"','Watch out for verb position in Nebensätze']::text[], ARRAY['Practice 15-20 minutes daily — consistency beats intensity','Speak out loud: German pronunciation needs muscle memory','Use the new vocabulary within 24 hours or you''ll forget it','Watch German YouTube videos about Subordinate Clauses for authentic input']::text[]);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000032868d6d', 'Pronunciation: Intonation and sentence melody', 'German sentences have a falling intonation at the end of statements. Questions starting with a verb rise at the end. W-questions fall at the end. Emphasise the stressed syllable — German stresses the first syllable of the root.

Common mistake for Arabic speakers: Arabic speakers often put stress on the wrong syllable. Remember: German root stress is usually on the first syllable.', '[]', '[{"german":"warum","arabic":"","english":"","phonetic":"/vaˈrʊm/"},{"german":"deshalb","arabic":"","english":"","phonetic":"/dɛsˈhalp/"}]', '[]', 10);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000032868d6d', 'translation', 'Translate to German: "I use the word "society" in a sentence about Subordinate Clauses."', '[]', 'Die Gesellschaft verändert sich.', 'Use die  "die Gesellschaft" with the correct present_tense form.', 1, 40);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000032868d6d', 'translation', 'Translate to German: "I use the word "politics" in a sentence about Subordinate Clauses."', '[]', 'Politik ist ein wichtiges Thema.', 'Use die  "die Politik" with the correct present_tense form.', 1, 41);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000032868d6d', 'translation', 'Translate to German: "I use the word "integration" in a sentence about Subordinate Clauses."', '[]', 'Integration ist wichtig.', 'Use die  "die Integration" with the correct present_tense form.', 1, 42);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000032868d6d', 'Culture: 🇩🇪 Deutsche Kultur: Subordinate Clauses', 'Subordinate Clauses in Germany has specific cultural nuances that differ from Arabic-speaking countries. Germans tend to separate their private and professional lives strictly. When dealing with Subordinate Clauses in a professional context, use formal register and prepare factual arguments. Emotional appeals are less effective than logical reasoning.

لدى Subordinate Clauses في ألمانيا فروق ثقافية دقيقة تختلف عن البلدان العربية. الألمان يفصلون بين حياتهم الخاصة والمهنية بشكل صارم.', '["Tip: Always use \"Sie\" (formal) with strangers and colleagues","Tip: Germans appreciate punctuality — arrive 5 minutes early","Tip: Direct feedback is a sign of respect, not criticism","Tip: Prepare factual arguments, not emotional appeals"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000032868d6d', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Incorrect preposition usage after verbs","correction":"Learn which preposition each verb requires (sich freuen auf, warten auf, denken an)","explanation":"Arabic and German have different sentence structures. Arabic is VSO, German is SVO with verb in position 2."},{"mistake":"Putting the verb at the end in main clauses","correction":"Verb stays in position 2 in main clauses","explanation":"Subordinate clause word order interferes"}]', 30);

  -- Lesson 5: Einladungen und Verabredungen (L-B1-01-05)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-000032868d6c', '00000000-0000-4000-a000-000039c2eadf', 'Einladungen und Verabredungen', 'Practice making, accepting, and declining invitations.', 'Invitations', 'speaking', '["Understand and apply present_tense rules correctly","Use present_tense in real conversations","Avoid common mistakes Arabic speakers make with present_tense","Read and understand present_tense in context","Listen and identify present_tense in speech","Write sentences using present_tense correctly"]', 50, 5, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, french_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-000032868d6c', 'die Gesellschaft', 'المجتمع', 'society', NULL, 'die', NULL, 'noun', 'Die Gesellschaft verändert sich.', 'Society is changing.', 'B1', 1),
  ('00000000-0000-4000-a000-000032868d6c', 'die Politik', 'السياسة', 'politics', NULL, 'die', NULL, 'noun', 'Politik ist ein wichtiges Thema.', 'Politics is an important topic.', 'B1', 2),
  ('00000000-0000-4000-a000-000032868d6c', 'die Integration', 'الاندماج', 'integration', NULL, 'die', NULL, 'noun', 'Integration ist wichtig.', 'Integration is important.', 'B1', 3),
  ('00000000-0000-4000-a000-000032868d6c', 'die Kultur', 'الثقافة', 'culture', NULL, 'die', NULL, 'noun', 'Die deutsche Kultur ist vielfältig.', 'German culture is diverse.', 'A2', 4),
  ('00000000-0000-4000-a000-000032868d6c', 'der Bürger', 'المواطن', 'citizen', NULL, 'der', 'die Bürger', 'noun', 'Die Bürger wählen.', 'The citizens vote.', 'B1', 5),
  ('00000000-0000-4000-a000-000032868d6c', 'die Freiheit', 'الحرية', 'freedom', NULL, 'die', NULL, 'noun', 'Freiheit ist ein Grundrecht.', 'Freedom is a basic right.', 'B1', 6),
  ('00000000-0000-4000-a000-000032868d6c', 'die Gleichberechtigung', 'المساواة', 'equality', NULL, 'die', NULL, 'noun', 'Gleichberechtigung für alle.', 'Equality for all.', 'B2', 7),
  ('00000000-0000-4000-a000-000032868d6c', 'die Verantwortung', 'المسؤولية', 'responsibility', NULL, 'die', NULL, 'noun', 'Das ist deine Verantwortung.', 'That is your responsibility.', 'B1', 8),
  ('00000000-0000-4000-a000-000032868d6c', 'der Beruf', 'المهنة', 'profession', NULL, 'der', 'die Berufe', 'noun', 'Was ist dein Beruf?', 'What is your profession?', 'A1', 9),
  ('00000000-0000-4000-a000-000032868d6c', 'die Firma', 'الشركة', 'company', NULL, 'die', 'die Firmen', 'noun', 'Die Firma ist in Berlin.', 'The company is in Berlin.', 'A1', 10),
  ('00000000-0000-4000-a000-000032868d6c', 'der Kollege', 'الزميل', 'colleague', NULL, 'der', 'die Kollegen', 'noun', 'Mein Kollege hilft mir.', 'My colleague helps me.', 'A1', 11),
  ('00000000-0000-4000-a000-000032868d6c', 'das Büro', 'المكتب', 'office', NULL, 'das', 'die Büros', 'noun', 'Das Büro ist im dritten Stock.', 'The office is on the third floor.', 'A1', 12),
  ('00000000-0000-4000-a000-000032868d6c', 'die Besprechung', 'الاجتماع', 'meeting', NULL, 'die', 'die Besprechungen', 'noun', 'Wir haben eine Besprechung.', 'We have a meeting.', 'B1', 13),
  ('00000000-0000-4000-a000-000032868d6c', 'der Chef', 'المدير', 'boss', NULL, 'der', 'die Chefs', 'noun', 'Mein Chef ist freundlich.', 'My boss is friendly.', 'A1', 14),
  ('00000000-0000-4000-a000-000032868d6c', 'das Gehalt', 'الراتب', 'salary', NULL, 'das', 'die Gehälter', 'noun', 'Das Gehalt ist gut.', 'The salary is good.', 'B1', 15),
  ('00000000-0000-4000-a000-000032868d6c', 'die Stelle', 'الوظيفة', 'position', NULL, 'die', 'die Stellen', 'noun', 'Ich suche eine neue Stelle.', 'I am looking for a new position.', 'B1', 16),
  ('00000000-0000-4000-a000-000032868d6c', 'die Schule', 'المدرسة', 'school', NULL, 'die', 'die Schulen', 'noun', 'Die Kinder gehen zur Schule.', 'The children go to school.', 'A1', 17),
  ('00000000-0000-4000-a000-000032868d6c', 'der Lehrer', 'المعلم', 'teacher', NULL, 'der', 'die Lehrer', 'noun', 'Der Lehrer erklärt die Grammatik.', 'The teacher explains the grammar.', 'A1', 18),
  ('00000000-0000-4000-a000-000032868d6c', 'der Student', 'الطالب', 'student', NULL, 'der', 'die Studenten', 'noun', 'Der Student lernt Deutsch.', 'The student learns German.', 'A1', 19),
  ('00000000-0000-4000-a000-000032868d6c', 'die Universität', 'الجامعة', 'university', NULL, 'die', 'die Universitäten', 'noun', 'Die Universität ist alt.', 'The university is old.', 'B1', 20),
  ('00000000-0000-4000-a000-000032868d6c', 'der Kurs', 'الدورة', 'course', NULL, 'der', 'die Kurse', 'noun', 'Der Kurs kostet 200 Euro.', 'The course costs 200 euros.', 'A2', 21),
  ('00000000-0000-4000-a000-000032868d6c', 'die Prüfung', 'الامتحان', 'exam', NULL, 'die', 'die Prüfungen', 'noun', 'Die Prüfung ist schwer.', 'The exam is difficult.', 'B1', 22),
  ('00000000-0000-4000-a000-000032868d6c', 'das Studium', 'الدراسة الجامعية', 'studies', NULL, 'das', NULL, 'noun', 'Mein Studium dauert vier Jahre.', 'My studies take four years.', 'B1', 23),
  ('00000000-0000-4000-a000-000032868d6c', 'lernen', 'يتعلم', 'to learn', NULL, NULL, NULL, 'verb', 'Ich lerne Deutsch.', 'I learn German.', 'A1', 24),
  ('00000000-0000-4000-a000-000032868d6c', 'die Zeitung', 'الجريدة', 'newspaper', NULL, 'die', 'die Zeitungen', 'noun', 'Ich lese die Zeitung.', 'I read the newspaper.', 'A2', 25),
  ('00000000-0000-4000-a000-000032868d6c', 'das Internet', 'الإنترنت', 'internet', NULL, 'das', NULL, 'noun', 'Das Internet ist schnell.', 'The internet is fast.', 'A2', 26),
  ('00000000-0000-4000-a000-000032868d6c', 'der Artikel', 'المقال', 'article', NULL, 'der', 'die Artikel', 'noun', 'Der Artikel ist interessant.', 'The article is interesting.', 'B1', 27),
  ('00000000-0000-4000-a000-000032868d6c', 'die Nachricht', 'الخبر', 'news', NULL, 'die', 'die Nachrichten', 'noun', 'Ich sehe die Nachrichten.', 'I watch the news.', 'A2', 28),
  ('00000000-0000-4000-a000-000032868d6c', 'das Radio', 'الراديو', 'radio', NULL, 'das', 'die Radios', 'noun', 'Ich höre Radio.', 'I listen to the radio.', 'A2', 29),
  ('00000000-0000-4000-a000-000032868d6c', 'das Fernsehen', 'التلفاز', 'television', NULL, 'das', NULL, 'noun', 'Das Fernsehen läuft.', 'The television is on.', 'A2', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000032868d6c', 'Konjunktiv II: Höfliche Bitten und irreale Sätze (Subjunctive for Politeness) / صيغة الشرط الثانية: الطلبات المهذبة والجمل غير الواقعية', 'Konjunktiv II is used for polite requests (Ich hätte gern...), unreal situations (Wenn ich Zeit hätte...), and wishes (Ich wünschte, ich wäre...). For most verbs, use "würde + infinitive". Only a few common verbs have their own subjunctive form: hätte (hätten), wäre (wären), könnte (könnten).', '[{"rule":"würde + Infinitiv (most verbs)","note":"Ich würde gern kommen. (I would like to come.)"},{"rule":"hätte (haben), wäre (sein), könnte (können)","note":"Ich hätte gern einen Kaffee. (I would like a coffee.)"},{"rule":"Wenn... dann... (if... then...)","note":"Wenn ich Zeit hätte, würde ich reisen. (If I had time, I would travel.)"}]', '[{"german":"Ich hätte gern einen Kaffee, bitte.","arabic":"أود فنجان قهوة من فضلك.","english":"I would like a coffee, please."},{"german":"Wenn ich mehr Zeit hätte, würde ich Deutsch lernen.","arabic":"لو كان لدي وقت أكثر، لتعلمت الألمانية.","english":"If I had more time, I would learn German."},{"german":"Könnten Sie mir bitte helfen?","arabic":"هل يمكنكم مساعدتي من فضلكم؟","english":"Could you please help me?"}]', '[{"mistake":"Ich will einen Kaffee (too direct in restaurant)","correction":"Ich hätte gern einen Kaffee.","explanation":"In German restaurants, use Konjunktiv II to be polite, not \"ich will\"."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000032868d6c', 'multiple_choice', 'Welches deutsche Wort bedeutet "society"?', '["die Gesellschaft","der Bürger","die Kultur","die Politik"]', 'die Gesellschaft', '"society" = "die Gesellschaft" in German. Article: die ', 1, 1),
  ('00000000-0000-4000-a000-000032868d6c', 'multiple_choice', 'Welches deutsche Wort bedeutet "politics"?', '["die Kultur","die Integration","die Gesellschaft","die Politik"]', 'die Politik', '"politics" = "die Politik" in German. Article: die ', 1, 2),
  ('00000000-0000-4000-a000-000032868d6c', 'multiple_choice', 'Welches deutsche Wort bedeutet "integration"?', '["die Integration","die Gesellschaft","der Bürger","die Kultur"]', 'die Integration', '"integration" = "die Integration" in German. Article: die ', 1, 3),
  ('00000000-0000-4000-a000-000032868d6c', 'multiple_choice', 'Welches deutsche Wort bedeutet "culture"?', '["die Kultur","die Gesellschaft","die Politik","die Integration"]', 'die Kultur', '"culture" = "die Kultur" in German. Article: die ', 1, 4),
  ('00000000-0000-4000-a000-000032868d6c', 'multiple_choice', 'Welches deutsche Wort bedeutet "citizen"?', '["der Bürger","die Integration","die Kultur","die Gesellschaft"]', 'der Bürger', '"citizen" = "der Bürger" in German. Article: der Plural: die Bürger', 1, 5),
  ('00000000-0000-4000-a000-000032868d6c', 'fill_gap', 'Ergänze den Satz: Ich ___ gern über Invitations. (sprechen)', '["spreche","sprichst","spricht","sprechen"]', 'spreche', 'ich spreche gern = I like to speak. Stem: sprech- + e.', 2, 6),
  ('00000000-0000-4000-a000-000032868d6c', 'translation', 'Übersetze ins Deutsche: "I am learning about Invitations."', '["Ich lerne über Invitations.","Ich lerne Invitations.","Lerne ich Invitations."]', 'Ich lerne über Invitations.', '"Ich lerne über..." = "I am learning about..."', 2, 7),
  ('00000000-0000-4000-a000-000032868d6c', 'matching', 'Match: Which word pairs are correct?', '["die Gesellschaft - society, die Politik - politics"]', 'Matched correctly', 'Each German word has a unique English equivalent.', 2, 8);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-000032868d6c', 'multiple_choice', 'Was bedeutet "die Gesellschaft" auf Deutsch?', '["society","to run","beautiful","yesterday"]', 'society', 1, 1),
  ('00000000-0000-4000-a000-000032868d6c', 'multiple_choice', 'Welcher Artikel gehört zu "die Politik"?', '["der","die","das","den"]', 'die', 1, 2),
  ('00000000-0000-4000-a000-000032868d6c', 'true_false', 'Das Wort "die Integration" gehört zum Thema Invitations.', '["True","False"]', 'True', 1, 3),
  ('00000000-0000-4000-a000-000032868d6c', 'multiple_choice', 'Welcher Satz verwendet present_tense?', '["Ich hätte gern einen Kaffee, bitte.","Wenn ich mehr Zeit hätte, würde ich Deutsch lernen.","Könnten Sie mir bitte helfen?"]', 'Ich hätte gern einen Kaffee, bitte.', 2, 4),
  ('00000000-0000-4000-a000-000032868d6c', 'true_false', ''Im Deutschen steht das Verb an zweiter Position im Hauptsatz.', '["True","False"]', 'True', 1, 5),
  ('00000000-0000-4000-a000-000032868d6c', 'fill_blank', 'Complete: Ich ___ (culture) Deutsch.', '["die Kultur","lernt","lernst","lernen"]', 'lerne', 2, 6),
  ('00000000-0000-4000-a000-000032868d6c', 'multiple_choice', 'Wie lautet das deutsche Wort für "citizen"?', '["der Bürger","die Freiheit","die Gleichberechtigung","die Verantwortung"]', 'der Bürger', 1, 7),
  ('00000000-0000-4000-a000-000032868d6c', 'true_false', 'Im Deutschen werden alle Nomen großgeschrieben.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-000032868d6c', 'multiple_choice', 'How do you say "please" in a restaurant in Germany?', '["Bitte","Danke","Tschüss","Hallo"]', 'Bitte', 1, 9),
  ('00000000-0000-4000-a000-000032868d6c', 'fill_blank', 'Wo ___ (to live) du?', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 2, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, french_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-000032868d6c', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', NULL, 'Used in Alltag und Gesellschaft', 'formal', false, 1),
  ('00000000-0000-4000-a000-000032868d6c', 'Guten Tag!', 'Good day!', 'نهارك سعيد!', NULL, 'Used in Alltag und Gesellschaft', 'formal', false, 2),
  ('00000000-0000-4000-a000-000032868d6c', 'Hallo, wie geht es Ihnen?', 'Hello, how are you?', 'مرحباً، كيف حالكم؟', NULL, 'Used in Alltag und Gesellschaft', 'formal', false, 3),
  ('00000000-0000-4000-a000-000032868d6c', 'Schön, Sie kennenzulernen!', 'Nice to meet you!', 'سعيد بلقائكم!', NULL, 'Used in Alltag und Gesellschaft', 'formal', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-000032868d6c', 'die die Gesellschaft', 'society — المجتمع', 'noun', 'vocabulary', 1),
  ('00000000-0000-4000-a000-000032868d6c', 'die die Politik', 'politics — السياسة', 'noun', 'vocabulary', 2),
  ('00000000-0000-4000-a000-000032868d6c', 'die die Integration', 'integration — الاندماج', 'noun', 'vocabulary', 3),
  ('00000000-0000-4000-a000-000032868d6c', 'die die Kultur', 'culture — الثقافة', 'noun', 'vocabulary', 4),
  ('00000000-0000-4000-a000-000032868d6c', 'der der Bürger (die Bürger)', 'citizen — المواطن', 'noun', 'vocabulary', 5),
  ('00000000-0000-4000-a000-000032868d6c', 'die die Freiheit', 'freedom — الحرية', 'noun', 'vocabulary', 6),
  ('00000000-0000-4000-a000-000032868d6c', 'die die Gleichberechtigung', 'equality — المساواة', 'noun', 'vocabulary', 7),
  ('00000000-0000-4000-a000-000032868d6c', 'die die Verantwortung', 'responsibility — المسؤولية', 'noun', 'vocabulary', 8),
  ('00000000-0000-4000-a000-000032868d6c', 'der der Beruf (die Berufe)', 'profession — المهنة', 'noun', 'vocabulary', 9),
  ('00000000-0000-4000-a000-000032868d6c', 'die die Firma (die Firmen)', 'company — الشركة', 'noun', 'vocabulary', 10),
  ('00000000-0000-4000-a000-000032868d6c', 'der der Kollege (die Kollegen)', 'colleague — الزميل', 'noun', 'vocabulary', 11),
  ('00000000-0000-4000-a000-000032868d6c', 'das das Büro (die Büros)', 'office — المكتب', 'noun', 'vocabulary', 12),
  ('00000000-0000-4000-a000-000032868d6c', 'die die Besprechung (die Besprechungen)', 'meeting — الاجتماع', 'noun', 'vocabulary', 13),
  ('00000000-0000-4000-a000-000032868d6c', 'der der Chef (die Chefs)', 'boss — المدير', 'noun', 'vocabulary', 14),
  ('00000000-0000-4000-a000-000032868d6c', 'das das Gehalt (die Gehälter)', 'salary — الراتب', 'noun', 'vocabulary', 15),
  ('00000000-0000-4000-a000-000032868d6c', 'Ich hätte gern einen Kaffee, bitte.', 'I would like a coffee, please.', 'Konjunktiv II: Höfliche Bitten und irreale Sätze (Subjunctive for Politeness)', 'grammar', 16),
  ('00000000-0000-4000-a000-000032868d6c', 'Wenn ich mehr Zeit hätte, würde ich Deutsch lernen.', 'If I had more time, I would learn German.', 'Konjunktiv II: Höfliche Bitten und irreale Sätze (Subjunctive for Politeness)', 'grammar', 17),
  ('00000000-0000-4000-a000-000032868d6c', 'Könnten Sie mir bitte helfen?', 'Could you please help me?', 'Konjunktiv II: Höfliche Bitten und irreale Sätze (Subjunctive for Politeness)', 'grammar', 18);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, french_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-000032868d6c', 'Einladungen und Verabredungen — Leseübung', 'Die deutsche Gesellschaft ist vielfältig und multikulturell. In den großen Städten wie Berlin, München oder Hamburg leben Menschen aus über 190 Nationen zusammen. Integration ist ein wichtiges Thema. Viele Menschen mit Migrationshintergrund haben sich erfolgreich integriert und tragen zur Gesellschaft bei. Deutschland ist ein Einwanderungsland. Im Jahr 2023 wurden neue Einbürgerungsregeln beschlossen, die den Erwerb der deutschen Staatsbürgerschaft erleichtern sollen.', 'German society is diverse and multicultural. In big cities like Berlin, Munich or Hamburg, people from over 190 nations live together. Integration is an important topic. Many people with a migration background have successfully integrated and contribute to society. Germany is a country of immigration. In 2023, new naturalization rules were passed that aim to make it easier to acquire German citizenship.', 'المجتمع الألماني متنوع ومتعدد الثقافات. في المدن الكبيرة مثل برلين وميونخ وهامبورغ يعيش أناس من أكثر من 190 دولة معاً. الاندماج موضوع مهم. كثير من الأشخاص ذوي خلفية هجرة اندمجوا بنجاح ويساهمون في المجتمع. ألمانيا بلد هجرة. في عام 2023 تم إقرار قواعد تجنيس جديدة تهدف إلى تسهيل الحصول على الجنسية الألمانية.', NULL, 60, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, french_translation, duration_seconds, speaker_count, scenario) values
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

[Lehrerin]: ممتاز! إلى الغد!', '[Lehrerin]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: ', 72, 2, 'Alltag und Gesellschaft');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-000032868d6c', '🔊 Sprechen: Einladungen und Verabredungen', 'Discussion: You attend a German Stammtisch (weekly meetup). Discuss Invitations with the group. Express your opinion, agree/disagree, ask follow-up questions. Try to keep the conversation flowing for 2 minutes.', 'Invitations', ARRAY['Use discourse markers (also, jedoch, außerdem)','React naturally: "Ach so!", "Echt?", "Das stimmt!"','Paraphrase when you don''t know a word']::text[], ARRAY['die Gesellschaft','die Politik','die Integration','die Kultur','der Bürger','die Freiheit','die Gleichberechtigung','die Verantwortung']::text[], 60, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-000032868d6c', '✏️ Schreiben: Einladungen und Verabredungen', 'Write a formal letter (200-250 words) to your German teacher explaining what you learned about "Invitations". Include: what surprised you, what was similar/different to your culture, and what you want to learn next. Use present_tense correctly.', ARRAY['Use paragraph breaks for structure','Connect ideas with "außerdem", "deshalb", "jedoch"','Check your verb position in Nebensätze']::text[], ARRAY['die Gesellschaft','die Politik','die Integration','die Kultur','der Bürger','die Freiheit','die Gleichberechtigung','die Verantwortung']::text[], ARRAY['Sentence structure','Vocabulary usage']::text[], 150, 250, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000032868d6c', 'Einladungen und Verabredungen — Roleplay', 'Invitations', 'Student', 'Teacher', 'Practice conversation about Invitations', 'Hallo! Lass uns über dieses Thema sprechen.', 'intermediate', 1, ARRAY['die Gesellschaft','die Politik','die Integration','die Kultur','der Bürger','die Freiheit','die Gleichberechtigung','die Verantwortung']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000032868d6c', 'Einladungen und Verabredungen — Advanced Roleplay', 'Invitations', 'Customer', 'Assistant', 'Extended conversation about Invitations', 'Guten Tag! Wie kann ich Ihnen helfen?', 'intermediate', 2, ARRAY['die Gesellschaft','die Politik','die Integration','die Kultur','der Bürger','die Freiheit','die Gleichberechtigung','die Verantwortung']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-000032868d6c', 'Einladungen und Verabredungen — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Einladungen und Verabredungen".', 'Creative practice for Invitations', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-000032868d6c', '📚 Hausaufgabe: Einladungen und Verabredungen', 'Complete these tasks to reinforce "Einladungen und Verabredungen".', 'mixed', '[{"description":"Create 10 flashcards from this lesson''s vocabulary — write German on one side, Arabic on the other. Test yourself 3 times."},{"description":"Write 6 sentences about Invitations: 2 statements, 2 questions, 2 negations — all using present_tense."},{"description":"Record yourself reading the dialogue aloud. Listen to the recording and note 3 things to improve."},{"description":"Find 3 real German websites, videos, or articles about Invitations. Note 5 new words you discovered."}]', 50, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-000032868d6c', '🎯 Excellent progress! This lesson covered Invitations (75 vocabulary items) and present_tense. You developed reading, listening, speaking, and writing skills in the context of society. Focus on your common mistakes area for maximum improvement.', '["75 vocabulary items about Invitations","present_tense — grammar explanation and practice","Reading comprehension: text about Invitations","Listening comprehension: dialogue about Invitations","Speaking practice: roleplay/discussion about Invitations","Writing task: text about Invitations"]', '[{"title":"Einladungen und Verabredungen Review","summary":"present_tense — the main grammar focus. Focus on using this structure naturally in conversations and writing."}]', ARRAY['die Gesellschaft (society)','die Politik (politics)','die Integration (integration)','die Kultur (culture)','der Bürger (citizen)']::text[], ARRAY['Don''t translate from Arabic word-for-word — German has different sentence structure','Learn every noun with its article: NEVER learn "Tisch" alone, always "der Tisch"','Watch out for verb position in Nebensätze']::text[], ARRAY['Practice 15-20 minutes daily — consistency beats intensity','Speak out loud: German pronunciation needs muscle memory','Use the new vocabulary within 24 hours or you''ll forget it','Watch German YouTube videos about Invitations for authentic input']::text[]);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000032868d6c', 'Pronunciation: Intonation and sentence melody', 'German sentences have a falling intonation at the end of statements. Questions starting with a verb rise at the end. W-questions fall at the end. Emphasise the stressed syllable — German stresses the first syllable of the root.

Common mistake for Arabic speakers: Arabic speakers often put stress on the wrong syllable. Remember: German root stress is usually on the first syllable.', '[]', '[{"german":"warum","arabic":"","english":"","phonetic":"/vaˈrʊm/"},{"german":"deshalb","arabic":"","english":"","phonetic":"/dɛsˈhalp/"}]', '[]', 10);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000032868d6c', 'translation', 'Translate to German: "I use the word "society" in a sentence about Invitations."', '[]', 'Die Gesellschaft verändert sich.', 'Use die  "die Gesellschaft" with the correct present_tense form.', 1, 40);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000032868d6c', 'translation', 'Translate to German: "I use the word "politics" in a sentence about Invitations."', '[]', 'Politik ist ein wichtiges Thema.', 'Use die  "die Politik" with the correct present_tense form.', 1, 41);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000032868d6c', 'translation', 'Translate to German: "I use the word "integration" in a sentence about Invitations."', '[]', 'Integration ist wichtig.', 'Use die  "die Integration" with the correct present_tense form.', 1, 42);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000032868d6c', 'Culture: 🇩🇪 Deutsche Kultur: Invitations', 'Invitations in Germany has specific cultural nuances that differ from Arabic-speaking countries. Germans tend to separate their private and professional lives strictly. When dealing with Invitations in a professional context, use formal register and prepare factual arguments. Emotional appeals are less effective than logical reasoning.

لدى Invitations في ألمانيا فروق ثقافية دقيقة تختلف عن البلدان العربية. الألمان يفصلون بين حياتهم الخاصة والمهنية بشكل صارم.', '["Tip: Always use \"Sie\" (formal) with strangers and colleagues","Tip: Germans appreciate punctuality — arrive 5 minutes early","Tip: Direct feedback is a sign of respect, not criticism","Tip: Prepare factual arguments, not emotional appeals"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000032868d6c', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Incorrect preposition usage after verbs","correction":"Learn which preposition each verb requires (sich freuen auf, warten auf, denken an)","explanation":"Arabic and German have different sentence structures. Arabic is VSO, German is SVO with verb in position 2."},{"mistake":"Putting the verb at the end in main clauses","correction":"Verb stays in position 2 in main clauses","explanation":"Subordinate clause word order interferes"}]', 30);

  -- Lesson 6: Test: Alltag und Gesellschaft (L-B1-01-06)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-000032868d6b', '00000000-0000-4000-a000-000039c2eadf', 'Test: Alltag und Gesellschaft', 'Module test on daily life and society.', 'Module Test', 'test', '["Understand and apply present_tense rules correctly","Use present_tense in real conversations","Avoid common mistakes Arabic speakers make with present_tense","Read and understand present_tense in context","Listen and identify present_tense in speech","Write sentences using present_tense correctly"]', 40, 6, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, french_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-000032868d6b', 'die Gesellschaft', 'المجتمع', 'society', NULL, 'die', NULL, 'noun', 'Die Gesellschaft verändert sich.', 'Society is changing.', 'B1', 1),
  ('00000000-0000-4000-a000-000032868d6b', 'die Politik', 'السياسة', 'politics', NULL, 'die', NULL, 'noun', 'Politik ist ein wichtiges Thema.', 'Politics is an important topic.', 'B1', 2),
  ('00000000-0000-4000-a000-000032868d6b', 'die Integration', 'الاندماج', 'integration', NULL, 'die', NULL, 'noun', 'Integration ist wichtig.', 'Integration is important.', 'B1', 3),
  ('00000000-0000-4000-a000-000032868d6b', 'die Kultur', 'الثقافة', 'culture', NULL, 'die', NULL, 'noun', 'Die deutsche Kultur ist vielfältig.', 'German culture is diverse.', 'A2', 4),
  ('00000000-0000-4000-a000-000032868d6b', 'der Bürger', 'المواطن', 'citizen', NULL, 'der', 'die Bürger', 'noun', 'Die Bürger wählen.', 'The citizens vote.', 'B1', 5),
  ('00000000-0000-4000-a000-000032868d6b', 'die Freiheit', 'الحرية', 'freedom', NULL, 'die', NULL, 'noun', 'Freiheit ist ein Grundrecht.', 'Freedom is a basic right.', 'B1', 6),
  ('00000000-0000-4000-a000-000032868d6b', 'die Gleichberechtigung', 'المساواة', 'equality', NULL, 'die', NULL, 'noun', 'Gleichberechtigung für alle.', 'Equality for all.', 'B2', 7),
  ('00000000-0000-4000-a000-000032868d6b', 'die Verantwortung', 'المسؤولية', 'responsibility', NULL, 'die', NULL, 'noun', 'Das ist deine Verantwortung.', 'That is your responsibility.', 'B1', 8),
  ('00000000-0000-4000-a000-000032868d6b', 'der Beruf', 'المهنة', 'profession', NULL, 'der', 'die Berufe', 'noun', 'Was ist dein Beruf?', 'What is your profession?', 'A1', 9),
  ('00000000-0000-4000-a000-000032868d6b', 'die Firma', 'الشركة', 'company', NULL, 'die', 'die Firmen', 'noun', 'Die Firma ist in Berlin.', 'The company is in Berlin.', 'A1', 10),
  ('00000000-0000-4000-a000-000032868d6b', 'der Kollege', 'الزميل', 'colleague', NULL, 'der', 'die Kollegen', 'noun', 'Mein Kollege hilft mir.', 'My colleague helps me.', 'A1', 11),
  ('00000000-0000-4000-a000-000032868d6b', 'das Büro', 'المكتب', 'office', NULL, 'das', 'die Büros', 'noun', 'Das Büro ist im dritten Stock.', 'The office is on the third floor.', 'A1', 12),
  ('00000000-0000-4000-a000-000032868d6b', 'die Besprechung', 'الاجتماع', 'meeting', NULL, 'die', 'die Besprechungen', 'noun', 'Wir haben eine Besprechung.', 'We have a meeting.', 'B1', 13),
  ('00000000-0000-4000-a000-000032868d6b', 'der Chef', 'المدير', 'boss', NULL, 'der', 'die Chefs', 'noun', 'Mein Chef ist freundlich.', 'My boss is friendly.', 'A1', 14),
  ('00000000-0000-4000-a000-000032868d6b', 'das Gehalt', 'الراتب', 'salary', NULL, 'das', 'die Gehälter', 'noun', 'Das Gehalt ist gut.', 'The salary is good.', 'B1', 15),
  ('00000000-0000-4000-a000-000032868d6b', 'die Stelle', 'الوظيفة', 'position', NULL, 'die', 'die Stellen', 'noun', 'Ich suche eine neue Stelle.', 'I am looking for a new position.', 'B1', 16),
  ('00000000-0000-4000-a000-000032868d6b', 'die Schule', 'المدرسة', 'school', NULL, 'die', 'die Schulen', 'noun', 'Die Kinder gehen zur Schule.', 'The children go to school.', 'A1', 17),
  ('00000000-0000-4000-a000-000032868d6b', 'der Lehrer', 'المعلم', 'teacher', NULL, 'der', 'die Lehrer', 'noun', 'Der Lehrer erklärt die Grammatik.', 'The teacher explains the grammar.', 'A1', 18),
  ('00000000-0000-4000-a000-000032868d6b', 'der Student', 'الطالب', 'student', NULL, 'der', 'die Studenten', 'noun', 'Der Student lernt Deutsch.', 'The student learns German.', 'A1', 19),
  ('00000000-0000-4000-a000-000032868d6b', 'die Universität', 'الجامعة', 'university', NULL, 'die', 'die Universitäten', 'noun', 'Die Universität ist alt.', 'The university is old.', 'B1', 20),
  ('00000000-0000-4000-a000-000032868d6b', 'der Kurs', 'الدورة', 'course', NULL, 'der', 'die Kurse', 'noun', 'Der Kurs kostet 200 Euro.', 'The course costs 200 euros.', 'A2', 21),
  ('00000000-0000-4000-a000-000032868d6b', 'die Prüfung', 'الامتحان', 'exam', NULL, 'die', 'die Prüfungen', 'noun', 'Die Prüfung ist schwer.', 'The exam is difficult.', 'B1', 22),
  ('00000000-0000-4000-a000-000032868d6b', 'das Studium', 'الدراسة الجامعية', 'studies', NULL, 'das', NULL, 'noun', 'Mein Studium dauert vier Jahre.', 'My studies take four years.', 'B1', 23),
  ('00000000-0000-4000-a000-000032868d6b', 'lernen', 'يتعلم', 'to learn', NULL, NULL, NULL, 'verb', 'Ich lerne Deutsch.', 'I learn German.', 'A1', 24),
  ('00000000-0000-4000-a000-000032868d6b', 'die Zeitung', 'الجريدة', 'newspaper', NULL, 'die', 'die Zeitungen', 'noun', 'Ich lese die Zeitung.', 'I read the newspaper.', 'A2', 25),
  ('00000000-0000-4000-a000-000032868d6b', 'das Internet', 'الإنترنت', 'internet', NULL, 'das', NULL, 'noun', 'Das Internet ist schnell.', 'The internet is fast.', 'A2', 26),
  ('00000000-0000-4000-a000-000032868d6b', 'der Artikel', 'المقال', 'article', NULL, 'der', 'die Artikel', 'noun', 'Der Artikel ist interessant.', 'The article is interesting.', 'B1', 27),
  ('00000000-0000-4000-a000-000032868d6b', 'die Nachricht', 'الخبر', 'news', NULL, 'die', 'die Nachrichten', 'noun', 'Ich sehe die Nachrichten.', 'I watch the news.', 'A2', 28),
  ('00000000-0000-4000-a000-000032868d6b', 'das Radio', 'الراديو', 'radio', NULL, 'das', 'die Radios', 'noun', 'Ich höre Radio.', 'I listen to the radio.', 'A2', 29),
  ('00000000-0000-4000-a000-000032868d6b', 'das Fernsehen', 'التلفاز', 'television', NULL, 'das', NULL, 'noun', 'Das Fernsehen läuft.', 'The television is on.', 'A2', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000032868d6b', 'Nebensätze mit "dass", "weil", "obwohl" (Subordinate Clauses) / الجمل الثانوية مع dass, weil, obwohl', 'Subordinate clauses push the conjugated verb to the END of the clause. The conjunction initiates the subordinate clause. Common conjunctions: dass (that), weil (because), obwohl (although), wenn (if/when), während (while). The subordinate clause can come before or after the main clause.', '[{"rule":"Verb goes to END in subordinate clause","note":"Ich weiß, dass er morgen kommt. (NOT: ...dass er kommt morgen)"},{"rule":"Wenn clause first → verb starts main clause","note":"Wenn ich Zeit habe, gehe ich ins Kino."},{"rule":"Weil answers \"why\" questions","note":"Ich lerne Deutsch, weil ich in Berlin studieren will."}]', '[{"german":"Ich denke, dass er recht hat.","arabic":"أعتقد أنه على حق.","english":"I think that he is right."},{"german":"Er lernt Deutsch, weil er in Berlin studiert.","arabic":"هو يتعلم الألمانية لأنه يدرس في برلين.","english":"He learns German because he studies in Berlin."},{"german":"Obwohl es regnet, gehe ich spazieren.","arabic":"على الرغم من المطر، أذهب للتنزه.","english":"Although it is raining, I go for a walk."}]', '[{"mistake":"Ich weiß, dass er kommt morgen (verb stays in position 2)","correction":"Ich weiß, dass er morgen kommt.","explanation":"In \"dass\" clauses, the verb ALWAYS goes to the end."},{"mistake":"Weil ich bin müde (verb stays after \"weil\")","correction":"Weil ich müde bin.","explanation":"Weil + subject + ... + verb (at the end)."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000032868d6b', 'multiple_choice', 'Welches deutsche Wort bedeutet "society"?', '["die Integration","die Politik","die Kultur","die Gesellschaft"]', 'die Gesellschaft', '"society" = "die Gesellschaft" in German. Article: die ', 1, 1),
  ('00000000-0000-4000-a000-000032868d6b', 'multiple_choice', 'Welches deutsche Wort bedeutet "politics"?', '["die Integration","der Bürger","die Gesellschaft","die Kultur"]', 'die Politik', '"politics" = "die Politik" in German. Article: die ', 1, 2),
  ('00000000-0000-4000-a000-000032868d6b', 'multiple_choice', 'Welches deutsche Wort bedeutet "integration"?', '["die Gesellschaft","der Bürger","die Integration","die Politik"]', 'die Integration', '"integration" = "die Integration" in German. Article: die ', 1, 3),
  ('00000000-0000-4000-a000-000032868d6b', 'multiple_choice', 'Welches deutsche Wort bedeutet "culture"?', '["die Kultur","die Gesellschaft","die Integration","die Politik"]', 'die Kultur', '"culture" = "die Kultur" in German. Article: die ', 1, 4),
  ('00000000-0000-4000-a000-000032868d6b', 'multiple_choice', 'Welches deutsche Wort bedeutet "citizen"?', '["die Integration","der Bürger","die Gesellschaft","die Kultur"]', 'der Bürger', '"citizen" = "der Bürger" in German. Article: der Plural: die Bürger', 1, 5),
  ('00000000-0000-4000-a000-000032868d6b', 'fill_gap', 'Ergänze den Satz: Ich ___ gern über Module Test. (sprechen)', '["spreche","sprichst","spricht","sprechen"]', 'spreche', 'ich spreche gern = I like to speak. Stem: sprech- + e.', 2, 6),
  ('00000000-0000-4000-a000-000032868d6b', 'translation', 'Übersetze ins Deutsche: "I am learning about Module Test."', '["Ich lerne über Module Test.","Ich lerne Module Test.","Lerne ich Module Test."]', 'Ich lerne über Module Test.', '"Ich lerne über..." = "I am learning about..."', 2, 7),
  ('00000000-0000-4000-a000-000032868d6b', 'matching', 'Match: Which word pairs are correct?', '["die Gesellschaft - society, die Politik - politics"]', 'Matched correctly', 'Each German word has a unique English equivalent.', 2, 8);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-000032868d6b', 'multiple_choice', 'Was bedeutet "die Gesellschaft" auf Deutsch?', '["society","to run","beautiful","yesterday"]', 'society', 1, 1),
  ('00000000-0000-4000-a000-000032868d6b', 'multiple_choice', 'Welcher Artikel gehört zu "die Politik"?', '["der","die","das","den"]', 'die', 1, 2),
  ('00000000-0000-4000-a000-000032868d6b', 'true_false', 'Das Wort "die Integration" gehört zum Thema Module Test.', '["True","False"]', 'True', 1, 3),
  ('00000000-0000-4000-a000-000032868d6b', 'multiple_choice', 'Welcher Satz verwendet present_tense?', '["Ich denke, dass er recht hat.","Er lernt Deutsch, weil er in Berlin studiert.","Obwohl es regnet, gehe ich spazieren."]', 'Ich denke, dass er recht hat.', 2, 4),
  ('00000000-0000-4000-a000-000032868d6b', 'true_false', ''Im Deutschen steht das Verb an zweiter Position im Hauptsatz.', '["True","False"]', 'True', 1, 5),
  ('00000000-0000-4000-a000-000032868d6b', 'fill_blank', 'Complete: Ich ___ (culture) Deutsch.', '["die Kultur","lernt","lernst","lernen"]', 'lerne', 2, 6),
  ('00000000-0000-4000-a000-000032868d6b', 'multiple_choice', 'Wie lautet das deutsche Wort für "citizen"?', '["der Bürger","die Freiheit","die Gleichberechtigung","die Verantwortung"]', 'der Bürger', 1, 7),
  ('00000000-0000-4000-a000-000032868d6b', 'true_false', 'Im Deutschen werden alle Nomen großgeschrieben.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-000032868d6b', 'multiple_choice', 'How do you say "please" in a restaurant in Germany?', '["Bitte","Danke","Tschüss","Hallo"]', 'Bitte', 1, 9),
  ('00000000-0000-4000-a000-000032868d6b', 'fill_blank', 'Wo ___ (to live) du?', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 2, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, french_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-000032868d6b', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', NULL, 'Used in Alltag und Gesellschaft', 'formal', false, 1),
  ('00000000-0000-4000-a000-000032868d6b', 'Guten Tag!', 'Good day!', 'نهارك سعيد!', NULL, 'Used in Alltag und Gesellschaft', 'formal', false, 2),
  ('00000000-0000-4000-a000-000032868d6b', 'Hallo, wie geht es Ihnen?', 'Hello, how are you?', 'مرحباً، كيف حالكم؟', NULL, 'Used in Alltag und Gesellschaft', 'formal', false, 3),
  ('00000000-0000-4000-a000-000032868d6b', 'Schön, Sie kennenzulernen!', 'Nice to meet you!', 'سعيد بلقائكم!', NULL, 'Used in Alltag und Gesellschaft', 'formal', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-000032868d6b', 'die die Gesellschaft', 'society — المجتمع', 'noun', 'vocabulary', 1),
  ('00000000-0000-4000-a000-000032868d6b', 'die die Politik', 'politics — السياسة', 'noun', 'vocabulary', 2),
  ('00000000-0000-4000-a000-000032868d6b', 'die die Integration', 'integration — الاندماج', 'noun', 'vocabulary', 3),
  ('00000000-0000-4000-a000-000032868d6b', 'die die Kultur', 'culture — الثقافة', 'noun', 'vocabulary', 4),
  ('00000000-0000-4000-a000-000032868d6b', 'der der Bürger (die Bürger)', 'citizen — المواطن', 'noun', 'vocabulary', 5),
  ('00000000-0000-4000-a000-000032868d6b', 'die die Freiheit', 'freedom — الحرية', 'noun', 'vocabulary', 6),
  ('00000000-0000-4000-a000-000032868d6b', 'die die Gleichberechtigung', 'equality — المساواة', 'noun', 'vocabulary', 7),
  ('00000000-0000-4000-a000-000032868d6b', 'die die Verantwortung', 'responsibility — المسؤولية', 'noun', 'vocabulary', 8),
  ('00000000-0000-4000-a000-000032868d6b', 'der der Beruf (die Berufe)', 'profession — المهنة', 'noun', 'vocabulary', 9),
  ('00000000-0000-4000-a000-000032868d6b', 'die die Firma (die Firmen)', 'company — الشركة', 'noun', 'vocabulary', 10),
  ('00000000-0000-4000-a000-000032868d6b', 'der der Kollege (die Kollegen)', 'colleague — الزميل', 'noun', 'vocabulary', 11),
  ('00000000-0000-4000-a000-000032868d6b', 'das das Büro (die Büros)', 'office — المكتب', 'noun', 'vocabulary', 12),
  ('00000000-0000-4000-a000-000032868d6b', 'die die Besprechung (die Besprechungen)', 'meeting — الاجتماع', 'noun', 'vocabulary', 13),
  ('00000000-0000-4000-a000-000032868d6b', 'der der Chef (die Chefs)', 'boss — المدير', 'noun', 'vocabulary', 14),
  ('00000000-0000-4000-a000-000032868d6b', 'das das Gehalt (die Gehälter)', 'salary — الراتب', 'noun', 'vocabulary', 15),
  ('00000000-0000-4000-a000-000032868d6b', 'Ich denke, dass er recht hat.', 'I think that he is right.', 'Nebensätze mit "dass", "weil", "obwohl" (Subordinate Clauses)', 'grammar', 16),
  ('00000000-0000-4000-a000-000032868d6b', 'Er lernt Deutsch, weil er in Berlin studiert.', 'He learns German because he studies in Berlin.', 'Nebensätze mit "dass", "weil", "obwohl" (Subordinate Clauses)', 'grammar', 17),
  ('00000000-0000-4000-a000-000032868d6b', 'Obwohl es regnet, gehe ich spazieren.', 'Although it is raining, I go for a walk.', 'Nebensätze mit "dass", "weil", "obwohl" (Subordinate Clauses)', 'grammar', 18);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, french_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-000032868d6b', 'Test: Alltag und Gesellschaft — Leseübung', 'Die deutsche Gesellschaft ist vielfältig und multikulturell. In den großen Städten wie Berlin, München oder Hamburg leben Menschen aus über 190 Nationen zusammen. Integration ist ein wichtiges Thema. Viele Menschen mit Migrationshintergrund haben sich erfolgreich integriert und tragen zur Gesellschaft bei. Deutschland ist ein Einwanderungsland. Im Jahr 2023 wurden neue Einbürgerungsregeln beschlossen, die den Erwerb der deutschen Staatsbürgerschaft erleichtern sollen.', 'German society is diverse and multicultural. In big cities like Berlin, Munich or Hamburg, people from over 190 nations live together. Integration is an important topic. Many people with a migration background have successfully integrated and contribute to society. Germany is a country of immigration. In 2023, new naturalization rules were passed that aim to make it easier to acquire German citizenship.', 'المجتمع الألماني متنوع ومتعدد الثقافات. في المدن الكبيرة مثل برلين وميونخ وهامبورغ يعيش أناس من أكثر من 190 دولة معاً. الاندماج موضوع مهم. كثير من الأشخاص ذوي خلفية هجرة اندمجوا بنجاح ويساهمون في المجتمع. ألمانيا بلد هجرة. في عام 2023 تم إقرار قواعد تجنيس جديدة تهدف إلى تسهيل الحصول على الجنسية الألمانية.', NULL, 60, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, french_translation, duration_seconds, speaker_count, scenario) values
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

[Lehrerin]: ممتاز! إلى الغد!', '[Lehrerin]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: ', 72, 2, 'Alltag und Gesellschaft');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-000032868d6b', '🔊 Sprechen: Test: Alltag und Gesellschaft', 'Discussion: You attend a German Stammtisch (weekly meetup). Discuss Module Test with the group. Express your opinion, agree/disagree, ask follow-up questions. Try to keep the conversation flowing for 2 minutes.', 'Module Test', ARRAY['Use discourse markers (also, jedoch, außerdem)','React naturally: "Ach so!", "Echt?", "Das stimmt!"','Paraphrase when you don''t know a word']::text[], ARRAY['die Gesellschaft','die Politik','die Integration','die Kultur','der Bürger','die Freiheit','die Gleichberechtigung','die Verantwortung']::text[], 60, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-000032868d6b', '✏️ Schreiben: Test: Alltag und Gesellschaft', 'Write a formal letter (200-250 words) to your German teacher explaining what you learned about "Module Test". Include: what surprised you, what was similar/different to your culture, and what you want to learn next. Use present_tense correctly.', ARRAY['Use paragraph breaks for structure','Connect ideas with "außerdem", "deshalb", "jedoch"','Check your verb position in Nebensätze']::text[], ARRAY['die Gesellschaft','die Politik','die Integration','die Kultur','der Bürger','die Freiheit','die Gleichberechtigung','die Verantwortung']::text[], ARRAY['Sentence structure','Vocabulary usage']::text[], 150, 250, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000032868d6b', 'Test: Alltag und Gesellschaft — Roleplay', 'Module Test', 'Student', 'Teacher', 'Practice conversation about Module Test', 'Hallo! Lass uns über dieses Thema sprechen.', 'intermediate', 1, ARRAY['die Gesellschaft','die Politik','die Integration','die Kultur','der Bürger','die Freiheit','die Gleichberechtigung','die Verantwortung']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000032868d6b', 'Test: Alltag und Gesellschaft — Advanced Roleplay', 'Module Test', 'Customer', 'Assistant', 'Extended conversation about Module Test', 'Guten Tag! Wie kann ich Ihnen helfen?', 'intermediate', 2, ARRAY['die Gesellschaft','die Politik','die Integration','die Kultur','der Bürger','die Freiheit','die Gleichberechtigung','die Verantwortung']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-000032868d6b', 'Test: Alltag und Gesellschaft — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Test: Alltag und Gesellschaft".', 'Creative practice for Module Test', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-000032868d6b', '📚 Hausaufgabe: Test: Alltag und Gesellschaft', 'Complete these tasks to reinforce "Test: Alltag und Gesellschaft".', 'mixed', '[{"description":"Create 10 flashcards from this lesson''s vocabulary — write German on one side, Arabic on the other. Test yourself 3 times."},{"description":"Write 6 sentences about Module Test: 2 statements, 2 questions, 2 negations — all using present_tense."},{"description":"Record yourself reading the dialogue aloud. Listen to the recording and note 3 things to improve."},{"description":"Find 3 real German websites, videos, or articles about Module Test. Note 5 new words you discovered."}]', 50, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-000032868d6b', '🎯 Excellent progress! This lesson covered Module Test (75 vocabulary items) and present_tense. You developed reading, listening, speaking, and writing skills in the context of society. Focus on your common mistakes area for maximum improvement.', '["75 vocabulary items about Module Test","present_tense — grammar explanation and practice","Reading comprehension: text about Module Test","Listening comprehension: dialogue about Module Test","Speaking practice: roleplay/discussion about Module Test","Writing task: text about Module Test"]', '[{"title":"Test: Alltag und Gesellschaft Review","summary":"present_tense — the main grammar focus. Focus on using this structure naturally in conversations and writing."}]', ARRAY['die Gesellschaft (society)','die Politik (politics)','die Integration (integration)','die Kultur (culture)','der Bürger (citizen)']::text[], ARRAY['Don''t translate from Arabic word-for-word — German has different sentence structure','Learn every noun with its article: NEVER learn "Tisch" alone, always "der Tisch"','Watch out for verb position in Nebensätze']::text[], ARRAY['Practice 15-20 minutes daily — consistency beats intensity','Speak out loud: German pronunciation needs muscle memory','Use the new vocabulary within 24 hours or you''ll forget it','Watch German YouTube videos about Module Test for authentic input']::text[]);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000032868d6b', 'Pronunciation: Intonation and sentence melody', 'German sentences have a falling intonation at the end of statements. Questions starting with a verb rise at the end. W-questions fall at the end. Emphasise the stressed syllable — German stresses the first syllable of the root.

Common mistake for Arabic speakers: Arabic speakers often put stress on the wrong syllable. Remember: German root stress is usually on the first syllable.', '[]', '[{"german":"warum","arabic":"","english":"","phonetic":"/vaˈrʊm/"},{"german":"deshalb","arabic":"","english":"","phonetic":"/dɛsˈhalp/"}]', '[]', 10);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000032868d6b', 'translation', 'Translate to German: "I use the word "society" in a sentence about Module Test."', '[]', 'Die Gesellschaft verändert sich.', 'Use die  "die Gesellschaft" with the correct present_tense form.', 1, 40);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000032868d6b', 'translation', 'Translate to German: "I use the word "politics" in a sentence about Module Test."', '[]', 'Politik ist ein wichtiges Thema.', 'Use die  "die Politik" with the correct present_tense form.', 1, 41);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000032868d6b', 'translation', 'Translate to German: "I use the word "integration" in a sentence about Module Test."', '[]', 'Integration ist wichtig.', 'Use die  "die Integration" with the correct present_tense form.', 1, 42);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000032868d6b', 'Culture: 🇩🇪 Deutsche Kultur: Module Test', 'Module Test in Germany has specific cultural nuances that differ from Arabic-speaking countries. Germans tend to separate their private and professional lives strictly. When dealing with Module Test in a professional context, use formal register and prepare factual arguments. Emotional appeals are less effective than logical reasoning.

لدى Module Test في ألمانيا فروق ثقافية دقيقة تختلف عن البلدان العربية. الألمان يفصلون بين حياتهم الخاصة والمهنية بشكل صارم.', '["Tip: Always use \"Sie\" (formal) with strangers and colleagues","Tip: Germans appreciate punctuality — arrive 5 minutes early","Tip: Direct feedback is a sign of respect, not criticism","Tip: Prepare factual arguments, not emotional appeals"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000032868d6b', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Incorrect preposition usage after verbs","correction":"Learn which preposition each verb requires (sich freuen auf, warten auf, denken an)","explanation":"Arabic and German have different sentence structures. Arabic is VSO, German is SVO with verb in position 2."},{"mistake":"Putting the verb at the end in main clauses","correction":"Verb stays in position 2 in main clauses","explanation":"Subordinate clause word order interferes"}]', 30);

  -- Module 2: Arbeit und Karriere
  insert into public.course_modules (id, level_id, title, description, objectives, order_index, estimated_hours, is_published)
  values ('00000000-0000-4000-a000-000039c2eae0', 'B1', 'Arbeit und Karriere', 'Professional communication, job applications, and career planning.', '["Write a job application and CV","Conduct a job interview","Use Konjunktiv II for polite requests","Use Passiv in present tense","Discuss career goals"]', 2, 5, true)
  on conflict (id) do nothing;

  -- Lesson 1: Berufe und Arbeitsplätze (L-B1-02-01)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-000032861911', '00000000-0000-4000-a000-000039c2eae0', 'Berufe und Arbeitsplätze', 'Detailed profession and workplace vocabulary.', 'Professions & Workplaces', 'vocabulary', '["Understand and use 75 key vocabulary words about Professions & Workplaces","Apply present_tense correctly in sentences","Read and comprehend a text about Professions & Workplaces","Listen and understand a natural dialogue about Professions & Workplaces","Speak about Professions & Workplaces with confidence","Write a short text about Professions & Workplaces using new vocabulary"]', 45, 1, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, french_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-000032861911', 'der Beruf', 'المهنة', 'profession', NULL, 'der', 'die Berufe', 'noun', 'Was ist dein Beruf?', 'What is your profession?', 'A1', 1),
  ('00000000-0000-4000-a000-000032861911', 'die Firma', 'الشركة', 'company', NULL, 'die', 'die Firmen', 'noun', 'Die Firma ist in Berlin.', 'The company is in Berlin.', 'A1', 2),
  ('00000000-0000-4000-a000-000032861911', 'der Kollege', 'الزميل', 'colleague', NULL, 'der', 'die Kollegen', 'noun', 'Mein Kollege hilft mir.', 'My colleague helps me.', 'A1', 3),
  ('00000000-0000-4000-a000-000032861911', 'das Büro', 'المكتب', 'office', NULL, 'das', 'die Büros', 'noun', 'Das Büro ist im dritten Stock.', 'The office is on the third floor.', 'A1', 4),
  ('00000000-0000-4000-a000-000032861911', 'die Besprechung', 'الاجتماع', 'meeting', NULL, 'die', 'die Besprechungen', 'noun', 'Wir haben eine Besprechung.', 'We have a meeting.', 'B1', 5),
  ('00000000-0000-4000-a000-000032861911', 'der Chef', 'المدير', 'boss', NULL, 'der', 'die Chefs', 'noun', 'Mein Chef ist freundlich.', 'My boss is friendly.', 'A1', 6),
  ('00000000-0000-4000-a000-000032861911', 'das Gehalt', 'الراتب', 'salary', NULL, 'das', 'die Gehälter', 'noun', 'Das Gehalt ist gut.', 'The salary is good.', 'B1', 7),
  ('00000000-0000-4000-a000-000032861911', 'die Stelle', 'الوظيفة', 'position', NULL, 'die', 'die Stellen', 'noun', 'Ich suche eine neue Stelle.', 'I am looking for a new position.', 'B1', 8),
  ('00000000-0000-4000-a000-000032861911', 'die Schule', 'المدرسة', 'school', NULL, 'die', 'die Schulen', 'noun', 'Die Kinder gehen zur Schule.', 'The children go to school.', 'A1', 9),
  ('00000000-0000-4000-a000-000032861911', 'der Lehrer', 'المعلم', 'teacher', NULL, 'der', 'die Lehrer', 'noun', 'Der Lehrer erklärt die Grammatik.', 'The teacher explains the grammar.', 'A1', 10),
  ('00000000-0000-4000-a000-000032861911', 'der Student', 'الطالب', 'student', NULL, 'der', 'die Studenten', 'noun', 'Der Student lernt Deutsch.', 'The student learns German.', 'A1', 11),
  ('00000000-0000-4000-a000-000032861911', 'die Universität', 'الجامعة', 'university', NULL, 'die', 'die Universitäten', 'noun', 'Die Universität ist alt.', 'The university is old.', 'B1', 12),
  ('00000000-0000-4000-a000-000032861911', 'der Kurs', 'الدورة', 'course', NULL, 'der', 'die Kurse', 'noun', 'Der Kurs kostet 200 Euro.', 'The course costs 200 euros.', 'A2', 13),
  ('00000000-0000-4000-a000-000032861911', 'die Prüfung', 'الامتحان', 'exam', NULL, 'die', 'die Prüfungen', 'noun', 'Die Prüfung ist schwer.', 'The exam is difficult.', 'B1', 14),
  ('00000000-0000-4000-a000-000032861911', 'das Studium', 'الدراسة الجامعية', 'studies', NULL, 'das', NULL, 'noun', 'Mein Studium dauert vier Jahre.', 'My studies take four years.', 'B1', 15),
  ('00000000-0000-4000-a000-000032861911', 'lernen', 'يتعلم', 'to learn', NULL, NULL, NULL, 'verb', 'Ich lerne Deutsch.', 'I learn German.', 'A1', 16),
  ('00000000-0000-4000-a000-000032861911', 'die Zeitung', 'الجريدة', 'newspaper', NULL, 'die', 'die Zeitungen', 'noun', 'Ich lese die Zeitung.', 'I read the newspaper.', 'A2', 17),
  ('00000000-0000-4000-a000-000032861911', 'das Internet', 'الإنترنت', 'internet', NULL, 'das', NULL, 'noun', 'Das Internet ist schnell.', 'The internet is fast.', 'A2', 18),
  ('00000000-0000-4000-a000-000032861911', 'der Artikel', 'المقال', 'article', NULL, 'der', 'die Artikel', 'noun', 'Der Artikel ist interessant.', 'The article is interesting.', 'B1', 19),
  ('00000000-0000-4000-a000-000032861911', 'die Nachricht', 'الخبر', 'news', NULL, 'die', 'die Nachrichten', 'noun', 'Ich sehe die Nachrichten.', 'I watch the news.', 'A2', 20),
  ('00000000-0000-4000-a000-000032861911', 'das Radio', 'الراديو', 'radio', NULL, 'das', 'die Radios', 'noun', 'Ich höre Radio.', 'I listen to the radio.', 'A2', 21),
  ('00000000-0000-4000-a000-000032861911', 'das Fernsehen', 'التلفاز', 'television', NULL, 'das', NULL, 'noun', 'Das Fernsehen läuft.', 'The television is on.', 'A2', 22),
  ('00000000-0000-4000-a000-000032861911', 'die Zeitschrift', 'المجلة', 'magazine', NULL, 'die', 'die Zeitschriften', 'noun', 'Die Zeitschrift erscheint monatlich.', 'The magazine is published monthly.', 'B1', 23),
  ('00000000-0000-4000-a000-000032861911', 'der Journalist', 'الصحفي', 'journalist', NULL, 'der', 'die Journalisten', 'noun', 'Der Journalist schreibt einen Artikel.', 'The journalist writes an article.', 'B1', 24),
  ('00000000-0000-4000-a000-000032861911', 'die Gesellschaft', 'المجتمع', 'society', NULL, 'die', NULL, 'noun', 'Die Gesellschaft verändert sich.', 'Society is changing.', 'B1', 25),
  ('00000000-0000-4000-a000-000032861911', 'die Politik', 'السياسة', 'politics', NULL, 'die', NULL, 'noun', 'Politik ist ein wichtiges Thema.', 'Politics is an important topic.', 'B1', 26),
  ('00000000-0000-4000-a000-000032861911', 'die Integration', 'الاندماج', 'integration', NULL, 'die', NULL, 'noun', 'Integration ist wichtig.', 'Integration is important.', 'B1', 27),
  ('00000000-0000-4000-a000-000032861911', 'die Kultur', 'الثقافة', 'culture', NULL, 'die', NULL, 'noun', 'Die deutsche Kultur ist vielfältig.', 'German culture is diverse.', 'A2', 28),
  ('00000000-0000-4000-a000-000032861911', 'der Bürger', 'المواطن', 'citizen', NULL, 'der', 'die Bürger', 'noun', 'Die Bürger wählen.', 'The citizens vote.', 'B1', 29),
  ('00000000-0000-4000-a000-000032861911', 'die Freiheit', 'الحرية', 'freedom', NULL, 'die', NULL, 'noun', 'Freiheit ist ein Grundrecht.', 'Freedom is a basic right.', 'B1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000032861911', 'Adjektivdeklination (Adjective Declension) / تصريف الصفات', 'When an adjective comes before a noun, it must agree in gender, number, and case. There are three declension patterns: after "der" words (weak), after "ein" words (mixed), and without article (strong). The endings depend on which information the article already provides.', '[{"rule":"Weak (after der/die/das): -e or -en","note":"der gute Mann, die gute Frau, das gute Kind, die guten Leute"},{"rule":"Mixed (after ein/mein/kein): article ending + adjective ending","note":"ein guter Mann, eine gute Frau, ein gutes Kind, keine guten Leute"}]', '[{"german":"Der große Hund gehört der alten Frau.","arabic":"الكلب الكبير ملك للمرأة العجوز.","english":"The big dog belongs to the old woman."},{"german":"Ein interessantes Buch liegt auf dem Tisch.","arabic":"كتاب مثير للاهتمام على الطاولة.","english":"An interesting book is on the table."}]', '[{"mistake":"Der groß Hund (no ending on adjective)","correction":"Der große Hund","explanation":"Adjectives before nouns MUST have an ending in German."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000032861911', 'multiple_choice', 'Welches deutsche Wort bedeutet "profession"?', '["die Firma","der Beruf","die Besprechung","der Kollege"]', 'der Beruf', '"profession" = "der Beruf" in German. Article: der Plural: die Berufe', 1, 1),
  ('00000000-0000-4000-a000-000032861911', 'multiple_choice', 'Welches deutsche Wort bedeutet "company"?', '["der Beruf","die Besprechung","die Firma","das Büro"]', 'die Firma', '"company" = "die Firma" in German. Article: die Plural: die Firmen', 1, 2),
  ('00000000-0000-4000-a000-000032861911', 'multiple_choice', 'Welches deutsche Wort bedeutet "colleague"?', '["das Büro","die Firma","die Besprechung","der Beruf"]', 'der Kollege', '"colleague" = "der Kollege" in German. Article: der Plural: die Kollegen', 1, 3),
  ('00000000-0000-4000-a000-000032861911', 'multiple_choice', 'Welches deutsche Wort bedeutet "office"?', '["der Beruf","die Firma","die Besprechung","der Kollege"]', 'das Büro', '"office" = "das Büro" in German. Article: das Plural: die Büros', 1, 4),
  ('00000000-0000-4000-a000-000032861911', 'multiple_choice', 'Welches deutsche Wort bedeutet "meeting"?', '["das Büro","der Kollege","die Firma","der Beruf"]', 'die Besprechung', '"meeting" = "die Besprechung" in German. Article: die Plural: die Besprechungen', 1, 5),
  ('00000000-0000-4000-a000-000032861911', 'fill_gap', 'Ergänze den Satz: Ich ___ gern über Professions & Workplaces. (sprechen)', '["spreche","sprichst","spricht","sprechen"]', 'spreche', 'ich spreche gern = I like to speak. Stem: sprech- + e.', 2, 6),
  ('00000000-0000-4000-a000-000032861911', 'translation', 'Übersetze ins Deutsche: "I am learning about Professions & Workplaces."', '["Ich lerne über Professions & Workplaces.","Ich lerne Professions & Workplaces.","Lerne ich Professions & Workplaces."]', 'Ich lerne über Professions & Workplaces.', '"Ich lerne über..." = "I am learning about..."', 2, 7),
  ('00000000-0000-4000-a000-000032861911', 'matching', 'Match: Which word pairs are correct?', '["der Beruf - profession, die Firma - company"]', 'Matched correctly', 'Each German word has a unique English equivalent.', 2, 8);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-000032861911', 'multiple_choice', 'Was bedeutet "der Beruf" auf Deutsch?', '["profession","to run","beautiful","yesterday"]', 'profession', 1, 1),
  ('00000000-0000-4000-a000-000032861911', 'multiple_choice', 'Welcher Artikel gehört zu "die Firma"?', '["der","die","das","den"]', 'die', 1, 2),
  ('00000000-0000-4000-a000-000032861911', 'true_false', 'Das Wort "der Kollege" gehört zum Thema Professions & Workplaces.', '["True","False"]', 'True', 1, 3),
  ('00000000-0000-4000-a000-000032861911', 'multiple_choice', 'Welcher Satz verwendet present_tense?', '["Der große Hund gehört der alten Frau.","Ein interessantes Buch liegt auf dem Tisch."]', 'Der große Hund gehört der alten Frau.', 2, 4),
  ('00000000-0000-4000-a000-000032861911', 'true_false', ''Im Deutschen steht das Verb an zweiter Position im Hauptsatz.', '["True","False"]', 'True', 1, 5),
  ('00000000-0000-4000-a000-000032861911', 'fill_blank', 'Complete: Ich ___ (office) Deutsch.', '["das Büro","lernt","lernst","lernen"]', 'lerne', 2, 6),
  ('00000000-0000-4000-a000-000032861911', 'multiple_choice', 'Wie lautet das deutsche Wort für "meeting"?', '["die Besprechung","der Chef","das Gehalt","die Stelle"]', 'die Besprechung', 1, 7),
  ('00000000-0000-4000-a000-000032861911', 'true_false', 'Im Deutschen werden alle Nomen großgeschrieben.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-000032861911', 'multiple_choice', 'How do you say "please" in a restaurant in Germany?', '["Bitte","Danke","Tschüss","Hallo"]', 'Bitte', 1, 9),
  ('00000000-0000-4000-a000-000032861911', 'fill_blank', 'Wo ___ (to live) du?', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 2, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, french_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-000032861911', 'Ich arbeite bei Siemens.', 'I work at Siemens.', 'أعمل في سيمنز.', NULL, 'Used in Arbeit und Karriere', 'neutral', false, 1),
  ('00000000-0000-4000-a000-000032861911', 'Können wir einen Termin vereinbaren?', 'Can we schedule a meeting?', 'هل يمكننا تحديد موعد؟', NULL, 'Used in Arbeit und Karriere', 'formal', false, 2),
  ('00000000-0000-4000-a000-000032861911', 'Ich schicke Ihnen die Unterlagen per E-Mail.', 'I''ll send you the documents by email.', 'سأرسل لكم المستندات عبر البريد الإلكتروني.', NULL, 'Used in Arbeit und Karriere', 'formal', false, 3),
  ('00000000-0000-4000-a000-000032861911', 'Vielen Dank für Ihre Unterstützung!', 'Thank you very much for your support!', 'شكراً جزيلاً لدعمكم!', NULL, 'Used in Arbeit und Karriere', 'formal', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-000032861911', 'der der Beruf (die Berufe)', 'profession — المهنة', 'noun', 'vocabulary', 1),
  ('00000000-0000-4000-a000-000032861911', 'die die Firma (die Firmen)', 'company — الشركة', 'noun', 'vocabulary', 2),
  ('00000000-0000-4000-a000-000032861911', 'der der Kollege (die Kollegen)', 'colleague — الزميل', 'noun', 'vocabulary', 3),
  ('00000000-0000-4000-a000-000032861911', 'das das Büro (die Büros)', 'office — المكتب', 'noun', 'vocabulary', 4),
  ('00000000-0000-4000-a000-000032861911', 'die die Besprechung (die Besprechungen)', 'meeting — الاجتماع', 'noun', 'vocabulary', 5),
  ('00000000-0000-4000-a000-000032861911', 'der der Chef (die Chefs)', 'boss — المدير', 'noun', 'vocabulary', 6),
  ('00000000-0000-4000-a000-000032861911', 'das das Gehalt (die Gehälter)', 'salary — الراتب', 'noun', 'vocabulary', 7),
  ('00000000-0000-4000-a000-000032861911', 'die die Stelle (die Stellen)', 'position — الوظيفة', 'noun', 'vocabulary', 8),
  ('00000000-0000-4000-a000-000032861911', 'die die Schule (die Schulen)', 'school — المدرسة', 'noun', 'vocabulary', 9),
  ('00000000-0000-4000-a000-000032861911', 'der der Lehrer (die Lehrer)', 'teacher — المعلم', 'noun', 'vocabulary', 10),
  ('00000000-0000-4000-a000-000032861911', 'der der Student (die Studenten)', 'student — الطالب', 'noun', 'vocabulary', 11),
  ('00000000-0000-4000-a000-000032861911', 'die die Universität (die Universitäten)', 'university — الجامعة', 'noun', 'vocabulary', 12),
  ('00000000-0000-4000-a000-000032861911', 'der der Kurs (die Kurse)', 'course — الدورة', 'noun', 'vocabulary', 13),
  ('00000000-0000-4000-a000-000032861911', 'die die Prüfung (die Prüfungen)', 'exam — الامتحان', 'noun', 'vocabulary', 14),
  ('00000000-0000-4000-a000-000032861911', 'das das Studium', 'studies — الدراسة الجامعية', 'noun', 'vocabulary', 15),
  ('00000000-0000-4000-a000-000032861911', 'Der große Hund gehört der alten Frau.', 'The big dog belongs to the old woman.', 'Adjektivdeklination (Adjective Declension)', 'grammar', 16),
  ('00000000-0000-4000-a000-000032861911', 'Ein interessantes Buch liegt auf dem Tisch.', 'An interesting book is on the table.', 'Adjektivdeklination (Adjective Declension)', 'grammar', 17);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, french_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-000032861911', 'Berufe und Arbeitsplätze — Leseübung', 'In der heutigen Arbeitswelt verändern sich die Anforderungen ständig. Immer mehr Berufe erfordern digitale Kompetenzen. Wer im Beruf erfolgreich sein möchte, sollte sich kontinuierlich weiterbilden. In Deutschland gibt es viele Möglichkeiten zur beruflichen Weiterbildung, zum Beispiel über die Arbeitsagentur oder die Industrie- und Handelskammer. Auch ein Studium neben dem Beruf wird immer beliebter. Viele Unternehmen unterstützen ihre Mitarbeiter bei der Weiterbildung durch flexible Arbeitszeiten oder finanzielle Zuschüsse.', 'In today''s working world, requirements are constantly changing. More and more professions require digital skills. Anyone who wants to be successful in their career should continuously educate themselves. In Germany there are many opportunities for professional development, for example through the employment agency or the Chamber of Industry and Commerce. Studying alongside work is also becoming increasingly popular. Many companies support their employees in further training through flexible working hours or financial subsidies.', 'في عالم العمل اليوم تتغير المتطلبات باستمرار. المزيد والمزيد من المهن تتطلب مهارات رقمية. من يريد النجاح في مهنته يجب أن يواصل تعليمه. في ألمانيا هناك فرص كثيرة للتطوير المهني، مثلاً عبر وكالة العمل أو غرفة الصناعة والتجارة. الدراسة إلى جانب العمل أصبحت أيضاً أكثر شعبية. العديد من الشركات تدعم موظفيها في التدريب المستمر من خلال ساعات عمل مرنة أو إعانات مالية.', NULL, 67, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, french_translation, duration_seconds, speaker_count, scenario) values
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

[Chef]: نعم، فكرة جيدة. ولا تنسوا المستندات.', '[Chef]: 

[Angestellter]: 

[Chef]: 

[Angestellter]: 

[Chef]: ', 60, 2, 'Arbeit und Karriere');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-000032861911', '🔊 Sprechen: Berufe und Arbeitsplätze', 'Discussion: You attend a German Stammtisch (weekly meetup). Discuss Professions & Workplaces with the group. Express your opinion, agree/disagree, ask follow-up questions. Try to keep the conversation flowing for 2 minutes.', 'Professions & Workplaces', ARRAY['Use discourse markers (also, jedoch, außerdem)','React naturally: "Ach so!", "Echt?", "Das stimmt!"','Paraphrase when you don''t know a word']::text[], ARRAY['der Beruf','die Firma','der Kollege','das Büro','die Besprechung','der Chef','das Gehalt','die Stelle']::text[], 60, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-000032861911', '✏️ Schreiben: Berufe und Arbeitsplätze', 'Write a formal letter (200-250 words) to your German teacher explaining what you learned about "Professions & Workplaces". Include: what surprised you, what was similar/different to your culture, and what you want to learn next. Use present_tense correctly.', ARRAY['Use paragraph breaks for structure','Connect ideas with "außerdem", "deshalb", "jedoch"','Check your verb position in Nebensätze']::text[], ARRAY['der Beruf','die Firma','der Kollege','das Büro','die Besprechung','der Chef','das Gehalt','die Stelle']::text[], ARRAY['Sentence structure','Vocabulary usage']::text[], 150, 250, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000032861911', 'Berufe und Arbeitsplätze — Roleplay', 'Professions & Workplaces', 'Student', 'Teacher', 'Practice conversation about Professions & Workplaces', 'Hallo! Lass uns über dieses Thema sprechen.', 'intermediate', 1, ARRAY['der Beruf','die Firma','der Kollege','das Büro','die Besprechung','der Chef','das Gehalt','die Stelle']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000032861911', 'Berufe und Arbeitsplätze — Advanced Roleplay', 'Professions & Workplaces', 'Customer', 'Assistant', 'Extended conversation about Professions & Workplaces', 'Guten Tag! Wie kann ich Ihnen helfen?', 'intermediate', 2, ARRAY['der Beruf','die Firma','der Kollege','das Büro','die Besprechung','der Chef','das Gehalt','die Stelle']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-000032861911', 'Berufe und Arbeitsplätze — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Berufe und Arbeitsplätze".', 'Creative practice for Professions & Workplaces', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-000032861911', '📚 Hausaufgabe: Berufe und Arbeitsplätze', 'Complete these tasks to reinforce "Berufe und Arbeitsplätze".', 'mixed', '[{"description":"Create 10 flashcards from this lesson''s vocabulary — write German on one side, Arabic on the other. Test yourself 3 times."},{"description":"Write 6 sentences about Professions & Workplaces: 2 statements, 2 questions, 2 negations — all using present_tense."},{"description":"Record yourself reading the dialogue aloud. Listen to the recording and note 3 things to improve."},{"description":"Find 3 real German websites, videos, or articles about Professions & Workplaces. Note 5 new words you discovered."}]', 50, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-000032861911', '🎯 Excellent progress! This lesson covered Professions & Workplaces (75 vocabulary items) and present_tense. You developed reading, listening, speaking, and writing skills in the context of work. Focus on your common mistakes area for maximum improvement.', '["75 vocabulary items about Professions & Workplaces","present_tense — grammar explanation and practice","Reading comprehension: text about Professions & Workplaces","Listening comprehension: dialogue about Professions & Workplaces","Speaking practice: roleplay/discussion about Professions & Workplaces","Writing task: text about Professions & Workplaces"]', '[{"title":"Berufe und Arbeitsplätze Review","summary":"present_tense — the main grammar focus. Focus on using this structure naturally in conversations and writing."}]', ARRAY['der Beruf (profession)','die Firma (company)','der Kollege (colleague)','das Büro (office)','die Besprechung (meeting)']::text[], ARRAY['Don''t translate from Arabic word-for-word — German has different sentence structure','Learn every noun with its article: NEVER learn "Tisch" alone, always "der Tisch"','Watch out for verb position in Nebensätze']::text[], ARRAY['Practice 15-20 minutes daily — consistency beats intensity','Speak out loud: German pronunciation needs muscle memory','Use the new vocabulary within 24 hours or you''ll forget it','Watch German YouTube videos about Professions & Workplaces for authentic input']::text[]);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000032861911', 'Pronunciation: Intonation and sentence melody', 'German sentences have a falling intonation at the end of statements. Questions starting with a verb rise at the end. W-questions fall at the end. Emphasise the stressed syllable — German stresses the first syllable of the root.

Common mistake for Arabic speakers: Arabic speakers often put stress on the wrong syllable. Remember: German root stress is usually on the first syllable.', '[]', '[{"german":"warum","arabic":"","english":"","phonetic":"/vaˈrʊm/"},{"german":"deshalb","arabic":"","english":"","phonetic":"/dɛsˈhalp/"}]', '[]', 10);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000032861911', 'translation', 'Translate to German: "I use the word "profession" in a sentence about Professions & Workplaces."', '[]', 'Was ist dein Beruf?', 'Use der  "der Beruf" with the correct present_tense form.', 1, 40);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000032861911', 'translation', 'Translate to German: "I use the word "company" in a sentence about Professions & Workplaces."', '[]', 'Die Firma ist in Berlin.', 'Use die  "die Firma" with the correct present_tense form.', 1, 41);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000032861911', 'translation', 'Translate to German: "I use the word "colleague" in a sentence about Professions & Workplaces."', '[]', 'Mein Kollege hilft mir.', 'Use der  "der Kollege" with the correct present_tense form.', 1, 42);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000032861911', 'Culture: 🇩🇪 Deutsche Kultur: Professions & Workplaces', 'Professions & Workplaces in Germany has specific cultural nuances that differ from Arabic-speaking countries. Germans tend to separate their private and professional lives strictly. When dealing with Professions & Workplaces in a professional context, use formal register and prepare factual arguments. Emotional appeals are less effective than logical reasoning.

لدى Professions & Workplaces في ألمانيا فروق ثقافية دقيقة تختلف عن البلدان العربية. الألمان يفصلون بين حياتهم الخاصة والمهنية بشكل صارم.', '["Tip: Always use \"Sie\" (formal) with strangers and colleagues","Tip: Germans appreciate punctuality — arrive 5 minutes early","Tip: Direct feedback is a sign of respect, not criticism","Tip: Prepare factual arguments, not emotional appeals"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000032861911', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Addressing colleagues with \"du\" immediately","correction":"Use \"Sie\" until explicitly invited to use \"du\"","explanation":"Arabic uses \"anta/anti\" universally. German has strict formal/informal distinction at work."},{"mistake":"Putting the verb at the end in main clauses","correction":"Verb stays in position 2 in main clauses","explanation":"Subordinate clause word order interferes"}]', 30);

  -- Lesson 2: Bewerbung und Lebenslauf (L-B1-02-02)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-000032861910', '00000000-0000-4000-a000-000039c2eae0', 'Bewerbung und Lebenslauf', 'Write job applications and CVs in German.', 'Job Applications', 'writing', '["Understand and apply present_tense rules correctly","Use present_tense in real conversations","Avoid common mistakes Arabic speakers make with present_tense","Read and understand present_tense in context","Listen and identify present_tense in speech","Write sentences using present_tense correctly"]', 60, 2, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, french_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-000032861910', 'der Beruf', 'المهنة', 'profession', NULL, 'der', 'die Berufe', 'noun', 'Was ist dein Beruf?', 'What is your profession?', 'A1', 1),
  ('00000000-0000-4000-a000-000032861910', 'die Firma', 'الشركة', 'company', NULL, 'die', 'die Firmen', 'noun', 'Die Firma ist in Berlin.', 'The company is in Berlin.', 'A1', 2),
  ('00000000-0000-4000-a000-000032861910', 'der Kollege', 'الزميل', 'colleague', NULL, 'der', 'die Kollegen', 'noun', 'Mein Kollege hilft mir.', 'My colleague helps me.', 'A1', 3),
  ('00000000-0000-4000-a000-000032861910', 'das Büro', 'المكتب', 'office', NULL, 'das', 'die Büros', 'noun', 'Das Büro ist im dritten Stock.', 'The office is on the third floor.', 'A1', 4),
  ('00000000-0000-4000-a000-000032861910', 'die Besprechung', 'الاجتماع', 'meeting', NULL, 'die', 'die Besprechungen', 'noun', 'Wir haben eine Besprechung.', 'We have a meeting.', 'B1', 5),
  ('00000000-0000-4000-a000-000032861910', 'der Chef', 'المدير', 'boss', NULL, 'der', 'die Chefs', 'noun', 'Mein Chef ist freundlich.', 'My boss is friendly.', 'A1', 6),
  ('00000000-0000-4000-a000-000032861910', 'das Gehalt', 'الراتب', 'salary', NULL, 'das', 'die Gehälter', 'noun', 'Das Gehalt ist gut.', 'The salary is good.', 'B1', 7),
  ('00000000-0000-4000-a000-000032861910', 'die Stelle', 'الوظيفة', 'position', NULL, 'die', 'die Stellen', 'noun', 'Ich suche eine neue Stelle.', 'I am looking for a new position.', 'B1', 8),
  ('00000000-0000-4000-a000-000032861910', 'die Schule', 'المدرسة', 'school', NULL, 'die', 'die Schulen', 'noun', 'Die Kinder gehen zur Schule.', 'The children go to school.', 'A1', 9),
  ('00000000-0000-4000-a000-000032861910', 'der Lehrer', 'المعلم', 'teacher', NULL, 'der', 'die Lehrer', 'noun', 'Der Lehrer erklärt die Grammatik.', 'The teacher explains the grammar.', 'A1', 10),
  ('00000000-0000-4000-a000-000032861910', 'der Student', 'الطالب', 'student', NULL, 'der', 'die Studenten', 'noun', 'Der Student lernt Deutsch.', 'The student learns German.', 'A1', 11),
  ('00000000-0000-4000-a000-000032861910', 'die Universität', 'الجامعة', 'university', NULL, 'die', 'die Universitäten', 'noun', 'Die Universität ist alt.', 'The university is old.', 'B1', 12),
  ('00000000-0000-4000-a000-000032861910', 'der Kurs', 'الدورة', 'course', NULL, 'der', 'die Kurse', 'noun', 'Der Kurs kostet 200 Euro.', 'The course costs 200 euros.', 'A2', 13),
  ('00000000-0000-4000-a000-000032861910', 'die Prüfung', 'الامتحان', 'exam', NULL, 'die', 'die Prüfungen', 'noun', 'Die Prüfung ist schwer.', 'The exam is difficult.', 'B1', 14),
  ('00000000-0000-4000-a000-000032861910', 'das Studium', 'الدراسة الجامعية', 'studies', NULL, 'das', NULL, 'noun', 'Mein Studium dauert vier Jahre.', 'My studies take four years.', 'B1', 15),
  ('00000000-0000-4000-a000-000032861910', 'lernen', 'يتعلم', 'to learn', NULL, NULL, NULL, 'verb', 'Ich lerne Deutsch.', 'I learn German.', 'A1', 16),
  ('00000000-0000-4000-a000-000032861910', 'die Zeitung', 'الجريدة', 'newspaper', NULL, 'die', 'die Zeitungen', 'noun', 'Ich lese die Zeitung.', 'I read the newspaper.', 'A2', 17),
  ('00000000-0000-4000-a000-000032861910', 'das Internet', 'الإنترنت', 'internet', NULL, 'das', NULL, 'noun', 'Das Internet ist schnell.', 'The internet is fast.', 'A2', 18),
  ('00000000-0000-4000-a000-000032861910', 'der Artikel', 'المقال', 'article', NULL, 'der', 'die Artikel', 'noun', 'Der Artikel ist interessant.', 'The article is interesting.', 'B1', 19),
  ('00000000-0000-4000-a000-000032861910', 'die Nachricht', 'الخبر', 'news', NULL, 'die', 'die Nachrichten', 'noun', 'Ich sehe die Nachrichten.', 'I watch the news.', 'A2', 20),
  ('00000000-0000-4000-a000-000032861910', 'das Radio', 'الراديو', 'radio', NULL, 'das', 'die Radios', 'noun', 'Ich höre Radio.', 'I listen to the radio.', 'A2', 21),
  ('00000000-0000-4000-a000-000032861910', 'das Fernsehen', 'التلفاز', 'television', NULL, 'das', NULL, 'noun', 'Das Fernsehen läuft.', 'The television is on.', 'A2', 22),
  ('00000000-0000-4000-a000-000032861910', 'die Zeitschrift', 'المجلة', 'magazine', NULL, 'die', 'die Zeitschriften', 'noun', 'Die Zeitschrift erscheint monatlich.', 'The magazine is published monthly.', 'B1', 23),
  ('00000000-0000-4000-a000-000032861910', 'der Journalist', 'الصحفي', 'journalist', NULL, 'der', 'die Journalisten', 'noun', 'Der Journalist schreibt einen Artikel.', 'The journalist writes an article.', 'B1', 24),
  ('00000000-0000-4000-a000-000032861910', 'die Gesellschaft', 'المجتمع', 'society', NULL, 'die', NULL, 'noun', 'Die Gesellschaft verändert sich.', 'Society is changing.', 'B1', 25),
  ('00000000-0000-4000-a000-000032861910', 'die Politik', 'السياسة', 'politics', NULL, 'die', NULL, 'noun', 'Politik ist ein wichtiges Thema.', 'Politics is an important topic.', 'B1', 26),
  ('00000000-0000-4000-a000-000032861910', 'die Integration', 'الاندماج', 'integration', NULL, 'die', NULL, 'noun', 'Integration ist wichtig.', 'Integration is important.', 'B1', 27),
  ('00000000-0000-4000-a000-000032861910', 'die Kultur', 'الثقافة', 'culture', NULL, 'die', NULL, 'noun', 'Die deutsche Kultur ist vielfältig.', 'German culture is diverse.', 'A2', 28),
  ('00000000-0000-4000-a000-000032861910', 'der Bürger', 'المواطن', 'citizen', NULL, 'der', 'die Bürger', 'noun', 'Die Bürger wählen.', 'The citizens vote.', 'B1', 29),
  ('00000000-0000-4000-a000-000032861910', 'die Freiheit', 'الحرية', 'freedom', NULL, 'die', NULL, 'noun', 'Freiheit ist ein Grundrecht.', 'Freedom is a basic right.', 'B1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000032861910', 'Konjunktiv II: Höfliche Bitten und irreale Sätze (Subjunctive for Politeness) / صيغة الشرط الثانية: الطلبات المهذبة والجمل غير الواقعية', 'Konjunktiv II is used for polite requests (Ich hätte gern...), unreal situations (Wenn ich Zeit hätte...), and wishes (Ich wünschte, ich wäre...). For most verbs, use "würde + infinitive". Only a few common verbs have their own subjunctive form: hätte (hätten), wäre (wären), könnte (könnten).', '[{"rule":"würde + Infinitiv (most verbs)","note":"Ich würde gern kommen. (I would like to come.)"},{"rule":"hätte (haben), wäre (sein), könnte (können)","note":"Ich hätte gern einen Kaffee. (I would like a coffee.)"},{"rule":"Wenn... dann... (if... then...)","note":"Wenn ich Zeit hätte, würde ich reisen. (If I had time, I would travel.)"}]', '[{"german":"Ich hätte gern einen Kaffee, bitte.","arabic":"أود فنجان قهوة من فضلك.","english":"I would like a coffee, please."},{"german":"Wenn ich mehr Zeit hätte, würde ich Deutsch lernen.","arabic":"لو كان لدي وقت أكثر، لتعلمت الألمانية.","english":"If I had more time, I would learn German."},{"german":"Könnten Sie mir bitte helfen?","arabic":"هل يمكنكم مساعدتي من فضلكم؟","english":"Could you please help me?"}]', '[{"mistake":"Ich will einen Kaffee (too direct in restaurant)","correction":"Ich hätte gern einen Kaffee.","explanation":"In German restaurants, use Konjunktiv II to be polite, not \"ich will\"."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000032861910', 'multiple_choice', 'Welches deutsche Wort bedeutet "profession"?', '["die Firma","der Kollege","die Besprechung","der Beruf"]', 'der Beruf', '"profession" = "der Beruf" in German. Article: der Plural: die Berufe', 1, 1),
  ('00000000-0000-4000-a000-000032861910', 'multiple_choice', 'Welches deutsche Wort bedeutet "company"?', '["der Kollege","die Besprechung","der Beruf","das Büro"]', 'die Firma', '"company" = "die Firma" in German. Article: die Plural: die Firmen', 1, 2),
  ('00000000-0000-4000-a000-000032861910', 'multiple_choice', 'Welches deutsche Wort bedeutet "colleague"?', '["der Kollege","der Beruf","die Firma","die Besprechung"]', 'der Kollege', '"colleague" = "der Kollege" in German. Article: der Plural: die Kollegen', 1, 3),
  ('00000000-0000-4000-a000-000032861910', 'multiple_choice', 'Welches deutsche Wort bedeutet "office"?', '["das Büro","der Beruf","der Kollege","die Firma"]', 'das Büro', '"office" = "das Büro" in German. Article: das Plural: die Büros', 1, 4),
  ('00000000-0000-4000-a000-000032861910', 'multiple_choice', 'Welches deutsche Wort bedeutet "meeting"?', '["die Firma","die Besprechung","das Büro","der Beruf"]', 'die Besprechung', '"meeting" = "die Besprechung" in German. Article: die Plural: die Besprechungen', 1, 5),
  ('00000000-0000-4000-a000-000032861910', 'fill_gap', 'Ergänze den Satz: Ich ___ gern über Job Applications. (sprechen)', '["spreche","sprichst","spricht","sprechen"]', 'spreche', 'ich spreche gern = I like to speak. Stem: sprech- + e.', 2, 6),
  ('00000000-0000-4000-a000-000032861910', 'translation', 'Übersetze ins Deutsche: "I am learning about Job Applications."', '["Ich lerne über Job Applications.","Ich lerne Job Applications.","Lerne ich Job Applications."]', 'Ich lerne über Job Applications.', '"Ich lerne über..." = "I am learning about..."', 2, 7),
  ('00000000-0000-4000-a000-000032861910', 'matching', 'Match: Which word pairs are correct?', '["der Beruf - profession, die Firma - company"]', 'Matched correctly', 'Each German word has a unique English equivalent.', 2, 8);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-000032861910', 'multiple_choice', 'Was bedeutet "der Beruf" auf Deutsch?', '["profession","to run","beautiful","yesterday"]', 'profession', 1, 1),
  ('00000000-0000-4000-a000-000032861910', 'multiple_choice', 'Welcher Artikel gehört zu "die Firma"?', '["der","die","das","den"]', 'die', 1, 2),
  ('00000000-0000-4000-a000-000032861910', 'true_false', 'Das Wort "der Kollege" gehört zum Thema Job Applications.', '["True","False"]', 'True', 1, 3),
  ('00000000-0000-4000-a000-000032861910', 'multiple_choice', 'Welcher Satz verwendet present_tense?', '["Ich hätte gern einen Kaffee, bitte.","Wenn ich mehr Zeit hätte, würde ich Deutsch lernen.","Könnten Sie mir bitte helfen?"]', 'Ich hätte gern einen Kaffee, bitte.', 2, 4),
  ('00000000-0000-4000-a000-000032861910', 'true_false', ''Im Deutschen steht das Verb an zweiter Position im Hauptsatz.', '["True","False"]', 'True', 1, 5),
  ('00000000-0000-4000-a000-000032861910', 'fill_blank', 'Complete: Ich ___ (office) Deutsch.', '["das Büro","lernt","lernst","lernen"]', 'lerne', 2, 6),
  ('00000000-0000-4000-a000-000032861910', 'multiple_choice', 'Wie lautet das deutsche Wort für "meeting"?', '["die Besprechung","der Chef","das Gehalt","die Stelle"]', 'die Besprechung', 1, 7),
  ('00000000-0000-4000-a000-000032861910', 'true_false', 'Im Deutschen werden alle Nomen großgeschrieben.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-000032861910', 'multiple_choice', 'How do you say "please" in a restaurant in Germany?', '["Bitte","Danke","Tschüss","Hallo"]', 'Bitte', 1, 9),
  ('00000000-0000-4000-a000-000032861910', 'fill_blank', 'Wo ___ (to live) du?', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 2, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, french_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-000032861910', 'Ich arbeite bei Siemens.', 'I work at Siemens.', 'أعمل في سيمنز.', NULL, 'Used in Arbeit und Karriere', 'neutral', false, 1),
  ('00000000-0000-4000-a000-000032861910', 'Können wir einen Termin vereinbaren?', 'Can we schedule a meeting?', 'هل يمكننا تحديد موعد؟', NULL, 'Used in Arbeit und Karriere', 'formal', false, 2),
  ('00000000-0000-4000-a000-000032861910', 'Ich schicke Ihnen die Unterlagen per E-Mail.', 'I''ll send you the documents by email.', 'سأرسل لكم المستندات عبر البريد الإلكتروني.', NULL, 'Used in Arbeit und Karriere', 'formal', false, 3),
  ('00000000-0000-4000-a000-000032861910', 'Vielen Dank für Ihre Unterstützung!', 'Thank you very much for your support!', 'شكراً جزيلاً لدعمكم!', NULL, 'Used in Arbeit und Karriere', 'formal', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-000032861910', 'der der Beruf (die Berufe)', 'profession — المهنة', 'noun', 'vocabulary', 1),
  ('00000000-0000-4000-a000-000032861910', 'die die Firma (die Firmen)', 'company — الشركة', 'noun', 'vocabulary', 2),
  ('00000000-0000-4000-a000-000032861910', 'der der Kollege (die Kollegen)', 'colleague — الزميل', 'noun', 'vocabulary', 3),
  ('00000000-0000-4000-a000-000032861910', 'das das Büro (die Büros)', 'office — المكتب', 'noun', 'vocabulary', 4),
  ('00000000-0000-4000-a000-000032861910', 'die die Besprechung (die Besprechungen)', 'meeting — الاجتماع', 'noun', 'vocabulary', 5),
  ('00000000-0000-4000-a000-000032861910', 'der der Chef (die Chefs)', 'boss — المدير', 'noun', 'vocabulary', 6),
  ('00000000-0000-4000-a000-000032861910', 'das das Gehalt (die Gehälter)', 'salary — الراتب', 'noun', 'vocabulary', 7),
  ('00000000-0000-4000-a000-000032861910', 'die die Stelle (die Stellen)', 'position — الوظيفة', 'noun', 'vocabulary', 8),
  ('00000000-0000-4000-a000-000032861910', 'die die Schule (die Schulen)', 'school — المدرسة', 'noun', 'vocabulary', 9),
  ('00000000-0000-4000-a000-000032861910', 'der der Lehrer (die Lehrer)', 'teacher — المعلم', 'noun', 'vocabulary', 10),
  ('00000000-0000-4000-a000-000032861910', 'der der Student (die Studenten)', 'student — الطالب', 'noun', 'vocabulary', 11),
  ('00000000-0000-4000-a000-000032861910', 'die die Universität (die Universitäten)', 'university — الجامعة', 'noun', 'vocabulary', 12),
  ('00000000-0000-4000-a000-000032861910', 'der der Kurs (die Kurse)', 'course — الدورة', 'noun', 'vocabulary', 13),
  ('00000000-0000-4000-a000-000032861910', 'die die Prüfung (die Prüfungen)', 'exam — الامتحان', 'noun', 'vocabulary', 14),
  ('00000000-0000-4000-a000-000032861910', 'das das Studium', 'studies — الدراسة الجامعية', 'noun', 'vocabulary', 15),
  ('00000000-0000-4000-a000-000032861910', 'Ich hätte gern einen Kaffee, bitte.', 'I would like a coffee, please.', 'Konjunktiv II: Höfliche Bitten und irreale Sätze (Subjunctive for Politeness)', 'grammar', 16),
  ('00000000-0000-4000-a000-000032861910', 'Wenn ich mehr Zeit hätte, würde ich Deutsch lernen.', 'If I had more time, I would learn German.', 'Konjunktiv II: Höfliche Bitten und irreale Sätze (Subjunctive for Politeness)', 'grammar', 17),
  ('00000000-0000-4000-a000-000032861910', 'Könnten Sie mir bitte helfen?', 'Could you please help me?', 'Konjunktiv II: Höfliche Bitten und irreale Sätze (Subjunctive for Politeness)', 'grammar', 18);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, french_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-000032861910', 'Bewerbung und Lebenslauf — Leseübung', 'In der heutigen Arbeitswelt verändern sich die Anforderungen ständig. Immer mehr Berufe erfordern digitale Kompetenzen. Wer im Beruf erfolgreich sein möchte, sollte sich kontinuierlich weiterbilden. In Deutschland gibt es viele Möglichkeiten zur beruflichen Weiterbildung, zum Beispiel über die Arbeitsagentur oder die Industrie- und Handelskammer. Auch ein Studium neben dem Beruf wird immer beliebter. Viele Unternehmen unterstützen ihre Mitarbeiter bei der Weiterbildung durch flexible Arbeitszeiten oder finanzielle Zuschüsse.', 'In today''s working world, requirements are constantly changing. More and more professions require digital skills. Anyone who wants to be successful in their career should continuously educate themselves. In Germany there are many opportunities for professional development, for example through the employment agency or the Chamber of Industry and Commerce. Studying alongside work is also becoming increasingly popular. Many companies support their employees in further training through flexible working hours or financial subsidies.', 'في عالم العمل اليوم تتغير المتطلبات باستمرار. المزيد والمزيد من المهن تتطلب مهارات رقمية. من يريد النجاح في مهنته يجب أن يواصل تعليمه. في ألمانيا هناك فرص كثيرة للتطوير المهني، مثلاً عبر وكالة العمل أو غرفة الصناعة والتجارة. الدراسة إلى جانب العمل أصبحت أيضاً أكثر شعبية. العديد من الشركات تدعم موظفيها في التدريب المستمر من خلال ساعات عمل مرنة أو إعانات مالية.', NULL, 67, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, french_translation, duration_seconds, speaker_count, scenario) values
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

[Chef]: نعم، فكرة جيدة. ولا تنسوا المستندات.', '[Chef]: 

[Angestellter]: 

[Chef]: 

[Angestellter]: 

[Chef]: ', 60, 2, 'Arbeit und Karriere');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-000032861910', '🔊 Sprechen: Bewerbung und Lebenslauf', 'Discussion: You attend a German Stammtisch (weekly meetup). Discuss Job Applications with the group. Express your opinion, agree/disagree, ask follow-up questions. Try to keep the conversation flowing for 2 minutes.', 'Job Applications', ARRAY['Use discourse markers (also, jedoch, außerdem)','React naturally: "Ach so!", "Echt?", "Das stimmt!"','Paraphrase when you don''t know a word']::text[], ARRAY['der Beruf','die Firma','der Kollege','das Büro','die Besprechung','der Chef','das Gehalt','die Stelle']::text[], 60, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-000032861910', '✏️ Schreiben: Bewerbung und Lebenslauf', 'Write a formal letter (200-250 words) to your German teacher explaining what you learned about "Job Applications". Include: what surprised you, what was similar/different to your culture, and what you want to learn next. Use present_tense correctly.', ARRAY['Use paragraph breaks for structure','Connect ideas with "außerdem", "deshalb", "jedoch"','Check your verb position in Nebensätze']::text[], ARRAY['der Beruf','die Firma','der Kollege','das Büro','die Besprechung','der Chef','das Gehalt','die Stelle']::text[], ARRAY['Sentence structure','Vocabulary usage']::text[], 150, 250, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000032861910', 'Bewerbung und Lebenslauf — Roleplay', 'Job Applications', 'Student', 'Teacher', 'Practice conversation about Job Applications', 'Hallo! Lass uns über dieses Thema sprechen.', 'intermediate', 1, ARRAY['der Beruf','die Firma','der Kollege','das Büro','die Besprechung','der Chef','das Gehalt','die Stelle']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000032861910', 'Bewerbung und Lebenslauf — Advanced Roleplay', 'Job Applications', 'Customer', 'Assistant', 'Extended conversation about Job Applications', 'Guten Tag! Wie kann ich Ihnen helfen?', 'intermediate', 2, ARRAY['der Beruf','die Firma','der Kollege','das Büro','die Besprechung','der Chef','das Gehalt','die Stelle']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-000032861910', 'Bewerbung und Lebenslauf — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Bewerbung und Lebenslauf".', 'Creative practice for Job Applications', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-000032861910', '📚 Hausaufgabe: Bewerbung und Lebenslauf', 'Complete these tasks to reinforce "Bewerbung und Lebenslauf".', 'mixed', '[{"description":"Create 10 flashcards from this lesson''s vocabulary — write German on one side, Arabic on the other. Test yourself 3 times."},{"description":"Write 6 sentences about Job Applications: 2 statements, 2 questions, 2 negations — all using present_tense."},{"description":"Record yourself reading the dialogue aloud. Listen to the recording and note 3 things to improve."},{"description":"Find 3 real German websites, videos, or articles about Job Applications. Note 5 new words you discovered."}]', 50, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-000032861910', '🎯 Excellent progress! This lesson covered Job Applications (75 vocabulary items) and present_tense. You developed reading, listening, speaking, and writing skills in the context of work. Focus on your common mistakes area for maximum improvement.', '["75 vocabulary items about Job Applications","present_tense — grammar explanation and practice","Reading comprehension: text about Job Applications","Listening comprehension: dialogue about Job Applications","Speaking practice: roleplay/discussion about Job Applications","Writing task: text about Job Applications"]', '[{"title":"Bewerbung und Lebenslauf Review","summary":"present_tense — the main grammar focus. Focus on using this structure naturally in conversations and writing."}]', ARRAY['der Beruf (profession)','die Firma (company)','der Kollege (colleague)','das Büro (office)','die Besprechung (meeting)']::text[], ARRAY['Don''t translate from Arabic word-for-word — German has different sentence structure','Learn every noun with its article: NEVER learn "Tisch" alone, always "der Tisch"','Watch out for verb position in Nebensätze']::text[], ARRAY['Practice 15-20 minutes daily — consistency beats intensity','Speak out loud: German pronunciation needs muscle memory','Use the new vocabulary within 24 hours or you''ll forget it','Watch German YouTube videos about Job Applications for authentic input']::text[]);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000032861910', 'Pronunciation: Intonation and sentence melody', 'German sentences have a falling intonation at the end of statements. Questions starting with a verb rise at the end. W-questions fall at the end. Emphasise the stressed syllable — German stresses the first syllable of the root.

Common mistake for Arabic speakers: Arabic speakers often put stress on the wrong syllable. Remember: German root stress is usually on the first syllable.', '[]', '[{"german":"warum","arabic":"","english":"","phonetic":"/vaˈrʊm/"},{"german":"deshalb","arabic":"","english":"","phonetic":"/dɛsˈhalp/"}]', '[]', 10);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000032861910', 'translation', 'Translate to German: "I use the word "profession" in a sentence about Job Applications."', '[]', 'Was ist dein Beruf?', 'Use der  "der Beruf" with the correct present_tense form.', 1, 40);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000032861910', 'translation', 'Translate to German: "I use the word "company" in a sentence about Job Applications."', '[]', 'Die Firma ist in Berlin.', 'Use die  "die Firma" with the correct present_tense form.', 1, 41);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000032861910', 'translation', 'Translate to German: "I use the word "colleague" in a sentence about Job Applications."', '[]', 'Mein Kollege hilft mir.', 'Use der  "der Kollege" with the correct present_tense form.', 1, 42);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000032861910', 'Culture: 🇩🇪 Deutsche Kultur: Job Applications', 'Job Applications in Germany has specific cultural nuances that differ from Arabic-speaking countries. Germans tend to separate their private and professional lives strictly. When dealing with Job Applications in a professional context, use formal register and prepare factual arguments. Emotional appeals are less effective than logical reasoning.

لدى Job Applications في ألمانيا فروق ثقافية دقيقة تختلف عن البلدان العربية. الألمان يفصلون بين حياتهم الخاصة والمهنية بشكل صارم.', '["Tip: Always use \"Sie\" (formal) with strangers and colleagues","Tip: Germans appreciate punctuality — arrive 5 minutes early","Tip: Direct feedback is a sign of respect, not criticism","Tip: Prepare factual arguments, not emotional appeals"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000032861910', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Addressing colleagues with \"du\" immediately","correction":"Use \"Sie\" until explicitly invited to use \"du\"","explanation":"Arabic uses \"anta/anti\" universally. German has strict formal/informal distinction at work."},{"mistake":"Putting the verb at the end in main clauses","correction":"Verb stays in position 2 in main clauses","explanation":"Subordinate clause word order interferes"}]', 30);

  -- Lesson 3: Das Vorstellungsgespräch (L-B1-02-03)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-00003286190f', '00000000-0000-4000-a000-000039c2eae0', 'Das Vorstellungsgespräch', 'Practice job interviews with common questions.', 'Job Interviews', 'speaking', '["Understand and apply present_tense rules correctly","Use present_tense in real conversations","Avoid common mistakes Arabic speakers make with present_tense","Read and understand present_tense in context","Listen and identify present_tense in speech","Write sentences using present_tense correctly"]', 60, 3, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, french_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-00003286190f', 'der Beruf', 'المهنة', 'profession', NULL, 'der', 'die Berufe', 'noun', 'Was ist dein Beruf?', 'What is your profession?', 'A1', 1),
  ('00000000-0000-4000-a000-00003286190f', 'die Firma', 'الشركة', 'company', NULL, 'die', 'die Firmen', 'noun', 'Die Firma ist in Berlin.', 'The company is in Berlin.', 'A1', 2),
  ('00000000-0000-4000-a000-00003286190f', 'der Kollege', 'الزميل', 'colleague', NULL, 'der', 'die Kollegen', 'noun', 'Mein Kollege hilft mir.', 'My colleague helps me.', 'A1', 3),
  ('00000000-0000-4000-a000-00003286190f', 'das Büro', 'المكتب', 'office', NULL, 'das', 'die Büros', 'noun', 'Das Büro ist im dritten Stock.', 'The office is on the third floor.', 'A1', 4),
  ('00000000-0000-4000-a000-00003286190f', 'die Besprechung', 'الاجتماع', 'meeting', NULL, 'die', 'die Besprechungen', 'noun', 'Wir haben eine Besprechung.', 'We have a meeting.', 'B1', 5),
  ('00000000-0000-4000-a000-00003286190f', 'der Chef', 'المدير', 'boss', NULL, 'der', 'die Chefs', 'noun', 'Mein Chef ist freundlich.', 'My boss is friendly.', 'A1', 6),
  ('00000000-0000-4000-a000-00003286190f', 'das Gehalt', 'الراتب', 'salary', NULL, 'das', 'die Gehälter', 'noun', 'Das Gehalt ist gut.', 'The salary is good.', 'B1', 7),
  ('00000000-0000-4000-a000-00003286190f', 'die Stelle', 'الوظيفة', 'position', NULL, 'die', 'die Stellen', 'noun', 'Ich suche eine neue Stelle.', 'I am looking for a new position.', 'B1', 8),
  ('00000000-0000-4000-a000-00003286190f', 'die Schule', 'المدرسة', 'school', NULL, 'die', 'die Schulen', 'noun', 'Die Kinder gehen zur Schule.', 'The children go to school.', 'A1', 9),
  ('00000000-0000-4000-a000-00003286190f', 'der Lehrer', 'المعلم', 'teacher', NULL, 'der', 'die Lehrer', 'noun', 'Der Lehrer erklärt die Grammatik.', 'The teacher explains the grammar.', 'A1', 10),
  ('00000000-0000-4000-a000-00003286190f', 'der Student', 'الطالب', 'student', NULL, 'der', 'die Studenten', 'noun', 'Der Student lernt Deutsch.', 'The student learns German.', 'A1', 11),
  ('00000000-0000-4000-a000-00003286190f', 'die Universität', 'الجامعة', 'university', NULL, 'die', 'die Universitäten', 'noun', 'Die Universität ist alt.', 'The university is old.', 'B1', 12),
  ('00000000-0000-4000-a000-00003286190f', 'der Kurs', 'الدورة', 'course', NULL, 'der', 'die Kurse', 'noun', 'Der Kurs kostet 200 Euro.', 'The course costs 200 euros.', 'A2', 13),
  ('00000000-0000-4000-a000-00003286190f', 'die Prüfung', 'الامتحان', 'exam', NULL, 'die', 'die Prüfungen', 'noun', 'Die Prüfung ist schwer.', 'The exam is difficult.', 'B1', 14),
  ('00000000-0000-4000-a000-00003286190f', 'das Studium', 'الدراسة الجامعية', 'studies', NULL, 'das', NULL, 'noun', 'Mein Studium dauert vier Jahre.', 'My studies take four years.', 'B1', 15),
  ('00000000-0000-4000-a000-00003286190f', 'lernen', 'يتعلم', 'to learn', NULL, NULL, NULL, 'verb', 'Ich lerne Deutsch.', 'I learn German.', 'A1', 16),
  ('00000000-0000-4000-a000-00003286190f', 'die Zeitung', 'الجريدة', 'newspaper', NULL, 'die', 'die Zeitungen', 'noun', 'Ich lese die Zeitung.', 'I read the newspaper.', 'A2', 17),
  ('00000000-0000-4000-a000-00003286190f', 'das Internet', 'الإنترنت', 'internet', NULL, 'das', NULL, 'noun', 'Das Internet ist schnell.', 'The internet is fast.', 'A2', 18),
  ('00000000-0000-4000-a000-00003286190f', 'der Artikel', 'المقال', 'article', NULL, 'der', 'die Artikel', 'noun', 'Der Artikel ist interessant.', 'The article is interesting.', 'B1', 19),
  ('00000000-0000-4000-a000-00003286190f', 'die Nachricht', 'الخبر', 'news', NULL, 'die', 'die Nachrichten', 'noun', 'Ich sehe die Nachrichten.', 'I watch the news.', 'A2', 20),
  ('00000000-0000-4000-a000-00003286190f', 'das Radio', 'الراديو', 'radio', NULL, 'das', 'die Radios', 'noun', 'Ich höre Radio.', 'I listen to the radio.', 'A2', 21),
  ('00000000-0000-4000-a000-00003286190f', 'das Fernsehen', 'التلفاز', 'television', NULL, 'das', NULL, 'noun', 'Das Fernsehen läuft.', 'The television is on.', 'A2', 22),
  ('00000000-0000-4000-a000-00003286190f', 'die Zeitschrift', 'المجلة', 'magazine', NULL, 'die', 'die Zeitschriften', 'noun', 'Die Zeitschrift erscheint monatlich.', 'The magazine is published monthly.', 'B1', 23),
  ('00000000-0000-4000-a000-00003286190f', 'der Journalist', 'الصحفي', 'journalist', NULL, 'der', 'die Journalisten', 'noun', 'Der Journalist schreibt einen Artikel.', 'The journalist writes an article.', 'B1', 24),
  ('00000000-0000-4000-a000-00003286190f', 'die Gesellschaft', 'المجتمع', 'society', NULL, 'die', NULL, 'noun', 'Die Gesellschaft verändert sich.', 'Society is changing.', 'B1', 25),
  ('00000000-0000-4000-a000-00003286190f', 'die Politik', 'السياسة', 'politics', NULL, 'die', NULL, 'noun', 'Politik ist ein wichtiges Thema.', 'Politics is an important topic.', 'B1', 26),
  ('00000000-0000-4000-a000-00003286190f', 'die Integration', 'الاندماج', 'integration', NULL, 'die', NULL, 'noun', 'Integration ist wichtig.', 'Integration is important.', 'B1', 27),
  ('00000000-0000-4000-a000-00003286190f', 'die Kultur', 'الثقافة', 'culture', NULL, 'die', NULL, 'noun', 'Die deutsche Kultur ist vielfältig.', 'German culture is diverse.', 'A2', 28),
  ('00000000-0000-4000-a000-00003286190f', 'der Bürger', 'المواطن', 'citizen', NULL, 'der', 'die Bürger', 'noun', 'Die Bürger wählen.', 'The citizens vote.', 'B1', 29),
  ('00000000-0000-4000-a000-00003286190f', 'die Freiheit', 'الحرية', 'freedom', NULL, 'die', NULL, 'noun', 'Freiheit ist ein Grundrecht.', 'Freedom is a basic right.', 'B1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00003286190f', 'Nebensätze mit "dass", "weil", "obwohl" (Subordinate Clauses) / الجمل الثانوية مع dass, weil, obwohl', 'Subordinate clauses push the conjugated verb to the END of the clause. The conjunction initiates the subordinate clause. Common conjunctions: dass (that), weil (because), obwohl (although), wenn (if/when), während (while). The subordinate clause can come before or after the main clause.', '[{"rule":"Verb goes to END in subordinate clause","note":"Ich weiß, dass er morgen kommt. (NOT: ...dass er kommt morgen)"},{"rule":"Wenn clause first → verb starts main clause","note":"Wenn ich Zeit habe, gehe ich ins Kino."},{"rule":"Weil answers \"why\" questions","note":"Ich lerne Deutsch, weil ich in Berlin studieren will."}]', '[{"german":"Ich denke, dass er recht hat.","arabic":"أعتقد أنه على حق.","english":"I think that he is right."},{"german":"Er lernt Deutsch, weil er in Berlin studiert.","arabic":"هو يتعلم الألمانية لأنه يدرس في برلين.","english":"He learns German because he studies in Berlin."},{"german":"Obwohl es regnet, gehe ich spazieren.","arabic":"على الرغم من المطر، أذهب للتنزه.","english":"Although it is raining, I go for a walk."}]', '[{"mistake":"Ich weiß, dass er kommt morgen (verb stays in position 2)","correction":"Ich weiß, dass er morgen kommt.","explanation":"In \"dass\" clauses, the verb ALWAYS goes to the end."},{"mistake":"Weil ich bin müde (verb stays after \"weil\")","correction":"Weil ich müde bin.","explanation":"Weil + subject + ... + verb (at the end)."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00003286190f', 'multiple_choice', 'Welches deutsche Wort bedeutet "profession"?', '["der Beruf","das Büro","die Besprechung","die Firma"]', 'der Beruf', '"profession" = "der Beruf" in German. Article: der Plural: die Berufe', 1, 1),
  ('00000000-0000-4000-a000-00003286190f', 'multiple_choice', 'Welches deutsche Wort bedeutet "company"?', '["der Kollege","die Firma","die Besprechung","der Beruf"]', 'die Firma', '"company" = "die Firma" in German. Article: die Plural: die Firmen', 1, 2),
  ('00000000-0000-4000-a000-00003286190f', 'multiple_choice', 'Welches deutsche Wort bedeutet "colleague"?', '["die Besprechung","die Firma","der Beruf","das Büro"]', 'der Kollege', '"colleague" = "der Kollege" in German. Article: der Plural: die Kollegen', 1, 3),
  ('00000000-0000-4000-a000-00003286190f', 'multiple_choice', 'Welches deutsche Wort bedeutet "office"?', '["die Firma","der Beruf","die Besprechung","der Kollege"]', 'das Büro', '"office" = "das Büro" in German. Article: das Plural: die Büros', 1, 4),
  ('00000000-0000-4000-a000-00003286190f', 'multiple_choice', 'Welches deutsche Wort bedeutet "meeting"?', '["die Besprechung","der Kollege","der Beruf","das Büro"]', 'die Besprechung', '"meeting" = "die Besprechung" in German. Article: die Plural: die Besprechungen', 1, 5),
  ('00000000-0000-4000-a000-00003286190f', 'fill_gap', 'Ergänze den Satz: Ich ___ gern über Job Interviews. (sprechen)', '["spreche","sprichst","spricht","sprechen"]', 'spreche', 'ich spreche gern = I like to speak. Stem: sprech- + e.', 2, 6),
  ('00000000-0000-4000-a000-00003286190f', 'translation', 'Übersetze ins Deutsche: "I am learning about Job Interviews."', '["Ich lerne über Job Interviews.","Ich lerne Job Interviews.","Lerne ich Job Interviews."]', 'Ich lerne über Job Interviews.', '"Ich lerne über..." = "I am learning about..."', 2, 7),
  ('00000000-0000-4000-a000-00003286190f', 'matching', 'Match: Which word pairs are correct?', '["der Beruf - profession, die Firma - company"]', 'Matched correctly', 'Each German word has a unique English equivalent.', 2, 8);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-00003286190f', 'multiple_choice', 'Was bedeutet "der Beruf" auf Deutsch?', '["profession","to run","beautiful","yesterday"]', 'profession', 1, 1),
  ('00000000-0000-4000-a000-00003286190f', 'multiple_choice', 'Welcher Artikel gehört zu "die Firma"?', '["der","die","das","den"]', 'die', 1, 2),
  ('00000000-0000-4000-a000-00003286190f', 'true_false', 'Das Wort "der Kollege" gehört zum Thema Job Interviews.', '["True","False"]', 'True', 1, 3),
  ('00000000-0000-4000-a000-00003286190f', 'multiple_choice', 'Welcher Satz verwendet present_tense?', '["Ich denke, dass er recht hat.","Er lernt Deutsch, weil er in Berlin studiert.","Obwohl es regnet, gehe ich spazieren."]', 'Ich denke, dass er recht hat.', 2, 4),
  ('00000000-0000-4000-a000-00003286190f', 'true_false', ''Im Deutschen steht das Verb an zweiter Position im Hauptsatz.', '["True","False"]', 'True', 1, 5),
  ('00000000-0000-4000-a000-00003286190f', 'fill_blank', 'Complete: Ich ___ (office) Deutsch.', '["das Büro","lernt","lernst","lernen"]', 'lerne', 2, 6),
  ('00000000-0000-4000-a000-00003286190f', 'multiple_choice', 'Wie lautet das deutsche Wort für "meeting"?', '["die Besprechung","der Chef","das Gehalt","die Stelle"]', 'die Besprechung', 1, 7),
  ('00000000-0000-4000-a000-00003286190f', 'true_false', 'Im Deutschen werden alle Nomen großgeschrieben.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-00003286190f', 'multiple_choice', 'How do you say "please" in a restaurant in Germany?', '["Bitte","Danke","Tschüss","Hallo"]', 'Bitte', 1, 9),
  ('00000000-0000-4000-a000-00003286190f', 'fill_blank', 'Wo ___ (to live) du?', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 2, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, french_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-00003286190f', 'Ich arbeite bei Siemens.', 'I work at Siemens.', 'أعمل في سيمنز.', NULL, 'Used in Arbeit und Karriere', 'neutral', false, 1),
  ('00000000-0000-4000-a000-00003286190f', 'Können wir einen Termin vereinbaren?', 'Can we schedule a meeting?', 'هل يمكننا تحديد موعد؟', NULL, 'Used in Arbeit und Karriere', 'formal', false, 2),
  ('00000000-0000-4000-a000-00003286190f', 'Ich schicke Ihnen die Unterlagen per E-Mail.', 'I''ll send you the documents by email.', 'سأرسل لكم المستندات عبر البريد الإلكتروني.', NULL, 'Used in Arbeit und Karriere', 'formal', false, 3),
  ('00000000-0000-4000-a000-00003286190f', 'Vielen Dank für Ihre Unterstützung!', 'Thank you very much for your support!', 'شكراً جزيلاً لدعمكم!', NULL, 'Used in Arbeit und Karriere', 'formal', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-00003286190f', 'der der Beruf (die Berufe)', 'profession — المهنة', 'noun', 'vocabulary', 1),
  ('00000000-0000-4000-a000-00003286190f', 'die die Firma (die Firmen)', 'company — الشركة', 'noun', 'vocabulary', 2),
  ('00000000-0000-4000-a000-00003286190f', 'der der Kollege (die Kollegen)', 'colleague — الزميل', 'noun', 'vocabulary', 3),
  ('00000000-0000-4000-a000-00003286190f', 'das das Büro (die Büros)', 'office — المكتب', 'noun', 'vocabulary', 4),
  ('00000000-0000-4000-a000-00003286190f', 'die die Besprechung (die Besprechungen)', 'meeting — الاجتماع', 'noun', 'vocabulary', 5),
  ('00000000-0000-4000-a000-00003286190f', 'der der Chef (die Chefs)', 'boss — المدير', 'noun', 'vocabulary', 6),
  ('00000000-0000-4000-a000-00003286190f', 'das das Gehalt (die Gehälter)', 'salary — الراتب', 'noun', 'vocabulary', 7),
  ('00000000-0000-4000-a000-00003286190f', 'die die Stelle (die Stellen)', 'position — الوظيفة', 'noun', 'vocabulary', 8),
  ('00000000-0000-4000-a000-00003286190f', 'die die Schule (die Schulen)', 'school — المدرسة', 'noun', 'vocabulary', 9),
  ('00000000-0000-4000-a000-00003286190f', 'der der Lehrer (die Lehrer)', 'teacher — المعلم', 'noun', 'vocabulary', 10),
  ('00000000-0000-4000-a000-00003286190f', 'der der Student (die Studenten)', 'student — الطالب', 'noun', 'vocabulary', 11),
  ('00000000-0000-4000-a000-00003286190f', 'die die Universität (die Universitäten)', 'university — الجامعة', 'noun', 'vocabulary', 12),
  ('00000000-0000-4000-a000-00003286190f', 'der der Kurs (die Kurse)', 'course — الدورة', 'noun', 'vocabulary', 13),
  ('00000000-0000-4000-a000-00003286190f', 'die die Prüfung (die Prüfungen)', 'exam — الامتحان', 'noun', 'vocabulary', 14),
  ('00000000-0000-4000-a000-00003286190f', 'das das Studium', 'studies — الدراسة الجامعية', 'noun', 'vocabulary', 15),
  ('00000000-0000-4000-a000-00003286190f', 'Ich denke, dass er recht hat.', 'I think that he is right.', 'Nebensätze mit "dass", "weil", "obwohl" (Subordinate Clauses)', 'grammar', 16),
  ('00000000-0000-4000-a000-00003286190f', 'Er lernt Deutsch, weil er in Berlin studiert.', 'He learns German because he studies in Berlin.', 'Nebensätze mit "dass", "weil", "obwohl" (Subordinate Clauses)', 'grammar', 17),
  ('00000000-0000-4000-a000-00003286190f', 'Obwohl es regnet, gehe ich spazieren.', 'Although it is raining, I go for a walk.', 'Nebensätze mit "dass", "weil", "obwohl" (Subordinate Clauses)', 'grammar', 18);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, french_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-00003286190f', 'Das Vorstellungsgespräch — Leseübung', 'In der heutigen Arbeitswelt verändern sich die Anforderungen ständig. Immer mehr Berufe erfordern digitale Kompetenzen. Wer im Beruf erfolgreich sein möchte, sollte sich kontinuierlich weiterbilden. In Deutschland gibt es viele Möglichkeiten zur beruflichen Weiterbildung, zum Beispiel über die Arbeitsagentur oder die Industrie- und Handelskammer. Auch ein Studium neben dem Beruf wird immer beliebter. Viele Unternehmen unterstützen ihre Mitarbeiter bei der Weiterbildung durch flexible Arbeitszeiten oder finanzielle Zuschüsse.', 'In today''s working world, requirements are constantly changing. More and more professions require digital skills. Anyone who wants to be successful in their career should continuously educate themselves. In Germany there are many opportunities for professional development, for example through the employment agency or the Chamber of Industry and Commerce. Studying alongside work is also becoming increasingly popular. Many companies support their employees in further training through flexible working hours or financial subsidies.', 'في عالم العمل اليوم تتغير المتطلبات باستمرار. المزيد والمزيد من المهن تتطلب مهارات رقمية. من يريد النجاح في مهنته يجب أن يواصل تعليمه. في ألمانيا هناك فرص كثيرة للتطوير المهني، مثلاً عبر وكالة العمل أو غرفة الصناعة والتجارة. الدراسة إلى جانب العمل أصبحت أيضاً أكثر شعبية. العديد من الشركات تدعم موظفيها في التدريب المستمر من خلال ساعات عمل مرنة أو إعانات مالية.', NULL, 67, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, french_translation, duration_seconds, speaker_count, scenario) values
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

[Chef]: نعم، فكرة جيدة. ولا تنسوا المستندات.', '[Chef]: 

[Angestellter]: 

[Chef]: 

[Angestellter]: 

[Chef]: ', 60, 2, 'Arbeit und Karriere');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-00003286190f', '🔊 Sprechen: Das Vorstellungsgespräch', 'Discussion: You attend a German Stammtisch (weekly meetup). Discuss Job Interviews with the group. Express your opinion, agree/disagree, ask follow-up questions. Try to keep the conversation flowing for 2 minutes.', 'Job Interviews', ARRAY['Use discourse markers (also, jedoch, außerdem)','React naturally: "Ach so!", "Echt?", "Das stimmt!"','Paraphrase when you don''t know a word']::text[], ARRAY['der Beruf','die Firma','der Kollege','das Büro','die Besprechung','der Chef','das Gehalt','die Stelle']::text[], 60, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-00003286190f', '✏️ Schreiben: Das Vorstellungsgespräch', 'Write a formal letter (200-250 words) to your German teacher explaining what you learned about "Job Interviews". Include: what surprised you, what was similar/different to your culture, and what you want to learn next. Use present_tense correctly.', ARRAY['Use paragraph breaks for structure','Connect ideas with "außerdem", "deshalb", "jedoch"','Check your verb position in Nebensätze']::text[], ARRAY['der Beruf','die Firma','der Kollege','das Büro','die Besprechung','der Chef','das Gehalt','die Stelle']::text[], ARRAY['Sentence structure','Vocabulary usage']::text[], 150, 250, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00003286190f', 'Das Vorstellungsgespräch — Roleplay', 'Job Interviews', 'Student', 'Teacher', 'Practice conversation about Job Interviews', 'Hallo! Lass uns über dieses Thema sprechen.', 'intermediate', 1, ARRAY['der Beruf','die Firma','der Kollege','das Büro','die Besprechung','der Chef','das Gehalt','die Stelle']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00003286190f', 'Das Vorstellungsgespräch — Advanced Roleplay', 'Job Interviews', 'Customer', 'Assistant', 'Extended conversation about Job Interviews', 'Guten Tag! Wie kann ich Ihnen helfen?', 'intermediate', 2, ARRAY['der Beruf','die Firma','der Kollege','das Büro','die Besprechung','der Chef','das Gehalt','die Stelle']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-00003286190f', 'Das Vorstellungsgespräch — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Das Vorstellungsgespräch".', 'Creative practice for Job Interviews', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-00003286190f', '📚 Hausaufgabe: Das Vorstellungsgespräch', 'Complete these tasks to reinforce "Das Vorstellungsgespräch".', 'mixed', '[{"description":"Create 10 flashcards from this lesson''s vocabulary — write German on one side, Arabic on the other. Test yourself 3 times."},{"description":"Write 6 sentences about Job Interviews: 2 statements, 2 questions, 2 negations — all using present_tense."},{"description":"Record yourself reading the dialogue aloud. Listen to the recording and note 3 things to improve."},{"description":"Find 3 real German websites, videos, or articles about Job Interviews. Note 5 new words you discovered."}]', 50, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-00003286190f', '🎯 Excellent progress! This lesson covered Job Interviews (75 vocabulary items) and present_tense. You developed reading, listening, speaking, and writing skills in the context of work. Focus on your common mistakes area for maximum improvement.', '["75 vocabulary items about Job Interviews","present_tense — grammar explanation and practice","Reading comprehension: text about Job Interviews","Listening comprehension: dialogue about Job Interviews","Speaking practice: roleplay/discussion about Job Interviews","Writing task: text about Job Interviews"]', '[{"title":"Das Vorstellungsgespräch Review","summary":"present_tense — the main grammar focus. Focus on using this structure naturally in conversations and writing."}]', ARRAY['der Beruf (profession)','die Firma (company)','der Kollege (colleague)','das Büro (office)','die Besprechung (meeting)']::text[], ARRAY['Don''t translate from Arabic word-for-word — German has different sentence structure','Learn every noun with its article: NEVER learn "Tisch" alone, always "der Tisch"','Watch out for verb position in Nebensätze']::text[], ARRAY['Practice 15-20 minutes daily — consistency beats intensity','Speak out loud: German pronunciation needs muscle memory','Use the new vocabulary within 24 hours or you''ll forget it','Watch German YouTube videos about Job Interviews for authentic input']::text[]);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00003286190f', 'Pronunciation: Intonation and sentence melody', 'German sentences have a falling intonation at the end of statements. Questions starting with a verb rise at the end. W-questions fall at the end. Emphasise the stressed syllable — German stresses the first syllable of the root.

Common mistake for Arabic speakers: Arabic speakers often put stress on the wrong syllable. Remember: German root stress is usually on the first syllable.', '[]', '[{"german":"warum","arabic":"","english":"","phonetic":"/vaˈrʊm/"},{"german":"deshalb","arabic":"","english":"","phonetic":"/dɛsˈhalp/"}]', '[]', 10);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00003286190f', 'translation', 'Translate to German: "I use the word "profession" in a sentence about Job Interviews."', '[]', 'Was ist dein Beruf?', 'Use der  "der Beruf" with the correct present_tense form.', 1, 40);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00003286190f', 'translation', 'Translate to German: "I use the word "company" in a sentence about Job Interviews."', '[]', 'Die Firma ist in Berlin.', 'Use die  "die Firma" with the correct present_tense form.', 1, 41);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00003286190f', 'translation', 'Translate to German: "I use the word "colleague" in a sentence about Job Interviews."', '[]', 'Mein Kollege hilft mir.', 'Use der  "der Kollege" with the correct present_tense form.', 1, 42);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00003286190f', 'Culture: 🇩🇪 Deutsche Kultur: Job Interviews', 'Job Interviews in Germany has specific cultural nuances that differ from Arabic-speaking countries. Germans tend to separate their private and professional lives strictly. When dealing with Job Interviews in a professional context, use formal register and prepare factual arguments. Emotional appeals are less effective than logical reasoning.

لدى Job Interviews في ألمانيا فروق ثقافية دقيقة تختلف عن البلدان العربية. الألمان يفصلون بين حياتهم الخاصة والمهنية بشكل صارم.', '["Tip: Always use \"Sie\" (formal) with strangers and colleagues","Tip: Germans appreciate punctuality — arrive 5 minutes early","Tip: Direct feedback is a sign of respect, not criticism","Tip: Prepare factual arguments, not emotional appeals"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00003286190f', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Addressing colleagues with \"du\" immediately","correction":"Use \"Sie\" until explicitly invited to use \"du\"","explanation":"Arabic uses \"anta/anti\" universally. German has strict formal/informal distinction at work."},{"mistake":"Putting the verb at the end in main clauses","correction":"Verb stays in position 2 in main clauses","explanation":"Subordinate clause word order interferes"}]', 30);

  -- Lesson 4: Konjunktiv II (würde + Infinitiv) (L-B1-02-04)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-00003286190e', '00000000-0000-4000-a000-000039c2eae0', 'Konjunktiv II (würde + Infinitiv)', 'Learn the subjunctive for polite requests and hypotheticals.', 'Konjunktiv II', 'grammar', '["Understand and apply present_tense rules correctly","Use present_tense in real conversations","Avoid common mistakes Arabic speakers make with present_tense","Read and understand present_tense in context","Listen and identify present_tense in speech","Write sentences using present_tense correctly"]', 60, 4, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, french_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-00003286190e', 'der Beruf', 'المهنة', 'profession', NULL, 'der', 'die Berufe', 'noun', 'Was ist dein Beruf?', 'What is your profession?', 'A1', 1),
  ('00000000-0000-4000-a000-00003286190e', 'die Firma', 'الشركة', 'company', NULL, 'die', 'die Firmen', 'noun', 'Die Firma ist in Berlin.', 'The company is in Berlin.', 'A1', 2),
  ('00000000-0000-4000-a000-00003286190e', 'der Kollege', 'الزميل', 'colleague', NULL, 'der', 'die Kollegen', 'noun', 'Mein Kollege hilft mir.', 'My colleague helps me.', 'A1', 3),
  ('00000000-0000-4000-a000-00003286190e', 'das Büro', 'المكتب', 'office', NULL, 'das', 'die Büros', 'noun', 'Das Büro ist im dritten Stock.', 'The office is on the third floor.', 'A1', 4),
  ('00000000-0000-4000-a000-00003286190e', 'die Besprechung', 'الاجتماع', 'meeting', NULL, 'die', 'die Besprechungen', 'noun', 'Wir haben eine Besprechung.', 'We have a meeting.', 'B1', 5),
  ('00000000-0000-4000-a000-00003286190e', 'der Chef', 'المدير', 'boss', NULL, 'der', 'die Chefs', 'noun', 'Mein Chef ist freundlich.', 'My boss is friendly.', 'A1', 6),
  ('00000000-0000-4000-a000-00003286190e', 'das Gehalt', 'الراتب', 'salary', NULL, 'das', 'die Gehälter', 'noun', 'Das Gehalt ist gut.', 'The salary is good.', 'B1', 7),
  ('00000000-0000-4000-a000-00003286190e', 'die Stelle', 'الوظيفة', 'position', NULL, 'die', 'die Stellen', 'noun', 'Ich suche eine neue Stelle.', 'I am looking for a new position.', 'B1', 8),
  ('00000000-0000-4000-a000-00003286190e', 'die Schule', 'المدرسة', 'school', NULL, 'die', 'die Schulen', 'noun', 'Die Kinder gehen zur Schule.', 'The children go to school.', 'A1', 9),
  ('00000000-0000-4000-a000-00003286190e', 'der Lehrer', 'المعلم', 'teacher', NULL, 'der', 'die Lehrer', 'noun', 'Der Lehrer erklärt die Grammatik.', 'The teacher explains the grammar.', 'A1', 10),
  ('00000000-0000-4000-a000-00003286190e', 'der Student', 'الطالب', 'student', NULL, 'der', 'die Studenten', 'noun', 'Der Student lernt Deutsch.', 'The student learns German.', 'A1', 11),
  ('00000000-0000-4000-a000-00003286190e', 'die Universität', 'الجامعة', 'university', NULL, 'die', 'die Universitäten', 'noun', 'Die Universität ist alt.', 'The university is old.', 'B1', 12),
  ('00000000-0000-4000-a000-00003286190e', 'der Kurs', 'الدورة', 'course', NULL, 'der', 'die Kurse', 'noun', 'Der Kurs kostet 200 Euro.', 'The course costs 200 euros.', 'A2', 13),
  ('00000000-0000-4000-a000-00003286190e', 'die Prüfung', 'الامتحان', 'exam', NULL, 'die', 'die Prüfungen', 'noun', 'Die Prüfung ist schwer.', 'The exam is difficult.', 'B1', 14),
  ('00000000-0000-4000-a000-00003286190e', 'das Studium', 'الدراسة الجامعية', 'studies', NULL, 'das', NULL, 'noun', 'Mein Studium dauert vier Jahre.', 'My studies take four years.', 'B1', 15),
  ('00000000-0000-4000-a000-00003286190e', 'lernen', 'يتعلم', 'to learn', NULL, NULL, NULL, 'verb', 'Ich lerne Deutsch.', 'I learn German.', 'A1', 16),
  ('00000000-0000-4000-a000-00003286190e', 'die Zeitung', 'الجريدة', 'newspaper', NULL, 'die', 'die Zeitungen', 'noun', 'Ich lese die Zeitung.', 'I read the newspaper.', 'A2', 17),
  ('00000000-0000-4000-a000-00003286190e', 'das Internet', 'الإنترنت', 'internet', NULL, 'das', NULL, 'noun', 'Das Internet ist schnell.', 'The internet is fast.', 'A2', 18),
  ('00000000-0000-4000-a000-00003286190e', 'der Artikel', 'المقال', 'article', NULL, 'der', 'die Artikel', 'noun', 'Der Artikel ist interessant.', 'The article is interesting.', 'B1', 19),
  ('00000000-0000-4000-a000-00003286190e', 'die Nachricht', 'الخبر', 'news', NULL, 'die', 'die Nachrichten', 'noun', 'Ich sehe die Nachrichten.', 'I watch the news.', 'A2', 20),
  ('00000000-0000-4000-a000-00003286190e', 'das Radio', 'الراديو', 'radio', NULL, 'das', 'die Radios', 'noun', 'Ich höre Radio.', 'I listen to the radio.', 'A2', 21),
  ('00000000-0000-4000-a000-00003286190e', 'das Fernsehen', 'التلفاز', 'television', NULL, 'das', NULL, 'noun', 'Das Fernsehen läuft.', 'The television is on.', 'A2', 22),
  ('00000000-0000-4000-a000-00003286190e', 'die Zeitschrift', 'المجلة', 'magazine', NULL, 'die', 'die Zeitschriften', 'noun', 'Die Zeitschrift erscheint monatlich.', 'The magazine is published monthly.', 'B1', 23),
  ('00000000-0000-4000-a000-00003286190e', 'der Journalist', 'الصحفي', 'journalist', NULL, 'der', 'die Journalisten', 'noun', 'Der Journalist schreibt einen Artikel.', 'The journalist writes an article.', 'B1', 24),
  ('00000000-0000-4000-a000-00003286190e', 'die Gesellschaft', 'المجتمع', 'society', NULL, 'die', NULL, 'noun', 'Die Gesellschaft verändert sich.', 'Society is changing.', 'B1', 25),
  ('00000000-0000-4000-a000-00003286190e', 'die Politik', 'السياسة', 'politics', NULL, 'die', NULL, 'noun', 'Politik ist ein wichtiges Thema.', 'Politics is an important topic.', 'B1', 26),
  ('00000000-0000-4000-a000-00003286190e', 'die Integration', 'الاندماج', 'integration', NULL, 'die', NULL, 'noun', 'Integration ist wichtig.', 'Integration is important.', 'B1', 27),
  ('00000000-0000-4000-a000-00003286190e', 'die Kultur', 'الثقافة', 'culture', NULL, 'die', NULL, 'noun', 'Die deutsche Kultur ist vielfältig.', 'German culture is diverse.', 'A2', 28),
  ('00000000-0000-4000-a000-00003286190e', 'der Bürger', 'المواطن', 'citizen', NULL, 'der', 'die Bürger', 'noun', 'Die Bürger wählen.', 'The citizens vote.', 'B1', 29),
  ('00000000-0000-4000-a000-00003286190e', 'die Freiheit', 'الحرية', 'freedom', NULL, 'die', NULL, 'noun', 'Freiheit ist ein Grundrecht.', 'Freedom is a basic right.', 'B1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00003286190e', 'Adjektivdeklination (Adjective Declension) / تصريف الصفات', 'When an adjective comes before a noun, it must agree in gender, number, and case. There are three declension patterns: after "der" words (weak), after "ein" words (mixed), and without article (strong). The endings depend on which information the article already provides.', '[{"rule":"Weak (after der/die/das): -e or -en","note":"der gute Mann, die gute Frau, das gute Kind, die guten Leute"},{"rule":"Mixed (after ein/mein/kein): article ending + adjective ending","note":"ein guter Mann, eine gute Frau, ein gutes Kind, keine guten Leute"}]', '[{"german":"Der große Hund gehört der alten Frau.","arabic":"الكلب الكبير ملك للمرأة العجوز.","english":"The big dog belongs to the old woman."},{"german":"Ein interessantes Buch liegt auf dem Tisch.","arabic":"كتاب مثير للاهتمام على الطاولة.","english":"An interesting book is on the table."}]', '[{"mistake":"Der groß Hund (no ending on adjective)","correction":"Der große Hund","explanation":"Adjectives before nouns MUST have an ending in German."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00003286190e', 'multiple_choice', 'Welches deutsche Wort bedeutet "profession"?', '["der Kollege","das Büro","die Firma","der Beruf"]', 'der Beruf', '"profession" = "der Beruf" in German. Article: der Plural: die Berufe', 1, 1),
  ('00000000-0000-4000-a000-00003286190e', 'multiple_choice', 'Welches deutsche Wort bedeutet "company"?', '["der Kollege","die Besprechung","das Büro","der Beruf"]', 'die Firma', '"company" = "die Firma" in German. Article: die Plural: die Firmen', 1, 2),
  ('00000000-0000-4000-a000-00003286190e', 'multiple_choice', 'Welches deutsche Wort bedeutet "colleague"?', '["das Büro","die Firma","der Beruf","der Kollege"]', 'der Kollege', '"colleague" = "der Kollege" in German. Article: der Plural: die Kollegen', 1, 3),
  ('00000000-0000-4000-a000-00003286190e', 'multiple_choice', 'Welches deutsche Wort bedeutet "office"?', '["die Firma","die Besprechung","der Kollege","der Beruf"]', 'das Büro', '"office" = "das Büro" in German. Article: das Plural: die Büros', 1, 4),
  ('00000000-0000-4000-a000-00003286190e', 'multiple_choice', 'Welches deutsche Wort bedeutet "meeting"?', '["die Firma","der Beruf","die Besprechung","das Büro"]', 'die Besprechung', '"meeting" = "die Besprechung" in German. Article: die Plural: die Besprechungen', 1, 5),
  ('00000000-0000-4000-a000-00003286190e', 'fill_gap', 'Ergänze den Satz: Ich ___ gern über Konjunktiv II. (sprechen)', '["spreche","sprichst","spricht","sprechen"]', 'spreche', 'ich spreche gern = I like to speak. Stem: sprech- + e.', 2, 6),
  ('00000000-0000-4000-a000-00003286190e', 'translation', 'Übersetze ins Deutsche: "I am learning about Konjunktiv II."', '["Ich lerne über Konjunktiv II.","Ich lerne Konjunktiv II.","Lerne ich Konjunktiv II."]', 'Ich lerne über Konjunktiv II.', '"Ich lerne über..." = "I am learning about..."', 2, 7),
  ('00000000-0000-4000-a000-00003286190e', 'matching', 'Match: Which word pairs are correct?', '["der Beruf - profession, die Firma - company"]', 'Matched correctly', 'Each German word has a unique English equivalent.', 2, 8);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-00003286190e', 'multiple_choice', 'Was bedeutet "der Beruf" auf Deutsch?', '["profession","to run","beautiful","yesterday"]', 'profession', 1, 1),
  ('00000000-0000-4000-a000-00003286190e', 'multiple_choice', 'Welcher Artikel gehört zu "die Firma"?', '["der","die","das","den"]', 'die', 1, 2),
  ('00000000-0000-4000-a000-00003286190e', 'true_false', 'Das Wort "der Kollege" gehört zum Thema Konjunktiv II.', '["True","False"]', 'True', 1, 3),
  ('00000000-0000-4000-a000-00003286190e', 'multiple_choice', 'Welcher Satz verwendet present_tense?', '["Der große Hund gehört der alten Frau.","Ein interessantes Buch liegt auf dem Tisch."]', 'Der große Hund gehört der alten Frau.', 2, 4),
  ('00000000-0000-4000-a000-00003286190e', 'true_false', ''Im Deutschen steht das Verb an zweiter Position im Hauptsatz.', '["True","False"]', 'True', 1, 5),
  ('00000000-0000-4000-a000-00003286190e', 'fill_blank', 'Complete: Ich ___ (office) Deutsch.', '["das Büro","lernt","lernst","lernen"]', 'lerne', 2, 6),
  ('00000000-0000-4000-a000-00003286190e', 'multiple_choice', 'Wie lautet das deutsche Wort für "meeting"?', '["die Besprechung","der Chef","das Gehalt","die Stelle"]', 'die Besprechung', 1, 7),
  ('00000000-0000-4000-a000-00003286190e', 'true_false', 'Im Deutschen werden alle Nomen großgeschrieben.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-00003286190e', 'multiple_choice', 'How do you say "please" in a restaurant in Germany?', '["Bitte","Danke","Tschüss","Hallo"]', 'Bitte', 1, 9),
  ('00000000-0000-4000-a000-00003286190e', 'fill_blank', 'Wo ___ (to live) du?', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 2, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, french_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-00003286190e', 'Ich arbeite bei Siemens.', 'I work at Siemens.', 'أعمل في سيمنز.', NULL, 'Used in Arbeit und Karriere', 'neutral', false, 1),
  ('00000000-0000-4000-a000-00003286190e', 'Können wir einen Termin vereinbaren?', 'Can we schedule a meeting?', 'هل يمكننا تحديد موعد؟', NULL, 'Used in Arbeit und Karriere', 'formal', false, 2),
  ('00000000-0000-4000-a000-00003286190e', 'Ich schicke Ihnen die Unterlagen per E-Mail.', 'I''ll send you the documents by email.', 'سأرسل لكم المستندات عبر البريد الإلكتروني.', NULL, 'Used in Arbeit und Karriere', 'formal', false, 3),
  ('00000000-0000-4000-a000-00003286190e', 'Vielen Dank für Ihre Unterstützung!', 'Thank you very much for your support!', 'شكراً جزيلاً لدعمكم!', NULL, 'Used in Arbeit und Karriere', 'formal', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-00003286190e', 'der der Beruf (die Berufe)', 'profession — المهنة', 'noun', 'vocabulary', 1),
  ('00000000-0000-4000-a000-00003286190e', 'die die Firma (die Firmen)', 'company — الشركة', 'noun', 'vocabulary', 2),
  ('00000000-0000-4000-a000-00003286190e', 'der der Kollege (die Kollegen)', 'colleague — الزميل', 'noun', 'vocabulary', 3),
  ('00000000-0000-4000-a000-00003286190e', 'das das Büro (die Büros)', 'office — المكتب', 'noun', 'vocabulary', 4),
  ('00000000-0000-4000-a000-00003286190e', 'die die Besprechung (die Besprechungen)', 'meeting — الاجتماع', 'noun', 'vocabulary', 5),
  ('00000000-0000-4000-a000-00003286190e', 'der der Chef (die Chefs)', 'boss — المدير', 'noun', 'vocabulary', 6),
  ('00000000-0000-4000-a000-00003286190e', 'das das Gehalt (die Gehälter)', 'salary — الراتب', 'noun', 'vocabulary', 7),
  ('00000000-0000-4000-a000-00003286190e', 'die die Stelle (die Stellen)', 'position — الوظيفة', 'noun', 'vocabulary', 8),
  ('00000000-0000-4000-a000-00003286190e', 'die die Schule (die Schulen)', 'school — المدرسة', 'noun', 'vocabulary', 9),
  ('00000000-0000-4000-a000-00003286190e', 'der der Lehrer (die Lehrer)', 'teacher — المعلم', 'noun', 'vocabulary', 10),
  ('00000000-0000-4000-a000-00003286190e', 'der der Student (die Studenten)', 'student — الطالب', 'noun', 'vocabulary', 11),
  ('00000000-0000-4000-a000-00003286190e', 'die die Universität (die Universitäten)', 'university — الجامعة', 'noun', 'vocabulary', 12),
  ('00000000-0000-4000-a000-00003286190e', 'der der Kurs (die Kurse)', 'course — الدورة', 'noun', 'vocabulary', 13),
  ('00000000-0000-4000-a000-00003286190e', 'die die Prüfung (die Prüfungen)', 'exam — الامتحان', 'noun', 'vocabulary', 14),
  ('00000000-0000-4000-a000-00003286190e', 'das das Studium', 'studies — الدراسة الجامعية', 'noun', 'vocabulary', 15),
  ('00000000-0000-4000-a000-00003286190e', 'Der große Hund gehört der alten Frau.', 'The big dog belongs to the old woman.', 'Adjektivdeklination (Adjective Declension)', 'grammar', 16),
  ('00000000-0000-4000-a000-00003286190e', 'Ein interessantes Buch liegt auf dem Tisch.', 'An interesting book is on the table.', 'Adjektivdeklination (Adjective Declension)', 'grammar', 17);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, french_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-00003286190e', 'Konjunktiv II (würde + Infinitiv) — Leseübung', 'In der heutigen Arbeitswelt verändern sich die Anforderungen ständig. Immer mehr Berufe erfordern digitale Kompetenzen. Wer im Beruf erfolgreich sein möchte, sollte sich kontinuierlich weiterbilden. In Deutschland gibt es viele Möglichkeiten zur beruflichen Weiterbildung, zum Beispiel über die Arbeitsagentur oder die Industrie- und Handelskammer. Auch ein Studium neben dem Beruf wird immer beliebter. Viele Unternehmen unterstützen ihre Mitarbeiter bei der Weiterbildung durch flexible Arbeitszeiten oder finanzielle Zuschüsse.', 'In today''s working world, requirements are constantly changing. More and more professions require digital skills. Anyone who wants to be successful in their career should continuously educate themselves. In Germany there are many opportunities for professional development, for example through the employment agency or the Chamber of Industry and Commerce. Studying alongside work is also becoming increasingly popular. Many companies support their employees in further training through flexible working hours or financial subsidies.', 'في عالم العمل اليوم تتغير المتطلبات باستمرار. المزيد والمزيد من المهن تتطلب مهارات رقمية. من يريد النجاح في مهنته يجب أن يواصل تعليمه. في ألمانيا هناك فرص كثيرة للتطوير المهني، مثلاً عبر وكالة العمل أو غرفة الصناعة والتجارة. الدراسة إلى جانب العمل أصبحت أيضاً أكثر شعبية. العديد من الشركات تدعم موظفيها في التدريب المستمر من خلال ساعات عمل مرنة أو إعانات مالية.', NULL, 67, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, french_translation, duration_seconds, speaker_count, scenario) values
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

[Chef]: نعم، فكرة جيدة. ولا تنسوا المستندات.', '[Chef]: 

[Angestellter]: 

[Chef]: 

[Angestellter]: 

[Chef]: ', 60, 2, 'Arbeit und Karriere');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-00003286190e', '🔊 Sprechen: Konjunktiv II (würde + Infinitiv)', 'Discussion: You attend a German Stammtisch (weekly meetup). Discuss Konjunktiv II with the group. Express your opinion, agree/disagree, ask follow-up questions. Try to keep the conversation flowing for 2 minutes.', 'Konjunktiv II', ARRAY['Use discourse markers (also, jedoch, außerdem)','React naturally: "Ach so!", "Echt?", "Das stimmt!"','Paraphrase when you don''t know a word']::text[], ARRAY['der Beruf','die Firma','der Kollege','das Büro','die Besprechung','der Chef','das Gehalt','die Stelle']::text[], 60, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-00003286190e', '✏️ Schreiben: Konjunktiv II (würde + Infinitiv)', 'Write a formal letter (200-250 words) to your German teacher explaining what you learned about "Konjunktiv II". Include: what surprised you, what was similar/different to your culture, and what you want to learn next. Use present_tense correctly.', ARRAY['Use paragraph breaks for structure','Connect ideas with "außerdem", "deshalb", "jedoch"','Check your verb position in Nebensätze']::text[], ARRAY['der Beruf','die Firma','der Kollege','das Büro','die Besprechung','der Chef','das Gehalt','die Stelle']::text[], ARRAY['Sentence structure','Vocabulary usage']::text[], 150, 250, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00003286190e', 'Konjunktiv II (würde + Infinitiv) — Roleplay', 'Konjunktiv II', 'Student', 'Teacher', 'Practice conversation about Konjunktiv II', 'Hallo! Lass uns über dieses Thema sprechen.', 'intermediate', 1, ARRAY['der Beruf','die Firma','der Kollege','das Büro','die Besprechung','der Chef','das Gehalt','die Stelle']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00003286190e', 'Konjunktiv II (würde + Infinitiv) — Advanced Roleplay', 'Konjunktiv II', 'Customer', 'Assistant', 'Extended conversation about Konjunktiv II', 'Guten Tag! Wie kann ich Ihnen helfen?', 'intermediate', 2, ARRAY['der Beruf','die Firma','der Kollege','das Büro','die Besprechung','der Chef','das Gehalt','die Stelle']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-00003286190e', 'Konjunktiv II (würde + Infinitiv) — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Konjunktiv II (würde + Infinitiv)".', 'Creative practice for Konjunktiv II', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-00003286190e', '📚 Hausaufgabe: Konjunktiv II (würde + Infinitiv)', 'Complete these tasks to reinforce "Konjunktiv II (würde + Infinitiv)".', 'mixed', '[{"description":"Create 10 flashcards from this lesson''s vocabulary — write German on one side, Arabic on the other. Test yourself 3 times."},{"description":"Write 6 sentences about Konjunktiv II: 2 statements, 2 questions, 2 negations — all using present_tense."},{"description":"Record yourself reading the dialogue aloud. Listen to the recording and note 3 things to improve."},{"description":"Find 3 real German websites, videos, or articles about Konjunktiv II. Note 5 new words you discovered."}]', 50, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-00003286190e', '🎯 Excellent progress! This lesson covered Konjunktiv II (75 vocabulary items) and present_tense. You developed reading, listening, speaking, and writing skills in the context of work. Focus on your common mistakes area for maximum improvement.', '["75 vocabulary items about Konjunktiv II","present_tense — grammar explanation and practice","Reading comprehension: text about Konjunktiv II","Listening comprehension: dialogue about Konjunktiv II","Speaking practice: roleplay/discussion about Konjunktiv II","Writing task: text about Konjunktiv II"]', '[{"title":"Konjunktiv II (würde + Infinitiv) Review","summary":"present_tense — the main grammar focus. Focus on using this structure naturally in conversations and writing."}]', ARRAY['der Beruf (profession)','die Firma (company)','der Kollege (colleague)','das Büro (office)','die Besprechung (meeting)']::text[], ARRAY['Don''t translate from Arabic word-for-word — German has different sentence structure','Learn every noun with its article: NEVER learn "Tisch" alone, always "der Tisch"','Watch out for verb position in Nebensätze']::text[], ARRAY['Practice 15-20 minutes daily — consistency beats intensity','Speak out loud: German pronunciation needs muscle memory','Use the new vocabulary within 24 hours or you''ll forget it','Watch German YouTube videos about Konjunktiv II for authentic input']::text[]);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00003286190e', 'Pronunciation: Intonation and sentence melody', 'German sentences have a falling intonation at the end of statements. Questions starting with a verb rise at the end. W-questions fall at the end. Emphasise the stressed syllable — German stresses the first syllable of the root.

Common mistake for Arabic speakers: Arabic speakers often put stress on the wrong syllable. Remember: German root stress is usually on the first syllable.', '[]', '[{"german":"warum","arabic":"","english":"","phonetic":"/vaˈrʊm/"},{"german":"deshalb","arabic":"","english":"","phonetic":"/dɛsˈhalp/"}]', '[]', 10);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00003286190e', 'translation', 'Translate to German: "I use the word "profession" in a sentence about Konjunktiv II."', '[]', 'Was ist dein Beruf?', 'Use der  "der Beruf" with the correct present_tense form.', 1, 40);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00003286190e', 'translation', 'Translate to German: "I use the word "company" in a sentence about Konjunktiv II."', '[]', 'Die Firma ist in Berlin.', 'Use die  "die Firma" with the correct present_tense form.', 1, 41);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00003286190e', 'translation', 'Translate to German: "I use the word "colleague" in a sentence about Konjunktiv II."', '[]', 'Mein Kollege hilft mir.', 'Use der  "der Kollege" with the correct present_tense form.', 1, 42);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00003286190e', 'Culture: 🇩🇪 Deutsche Kultur: Konjunktiv II', 'Konjunktiv II in Germany has specific cultural nuances that differ from Arabic-speaking countries. Germans tend to separate their private and professional lives strictly. When dealing with Konjunktiv II in a professional context, use formal register and prepare factual arguments. Emotional appeals are less effective than logical reasoning.

لدى Konjunktiv II في ألمانيا فروق ثقافية دقيقة تختلف عن البلدان العربية. الألمان يفصلون بين حياتهم الخاصة والمهنية بشكل صارم.', '["Tip: Always use \"Sie\" (formal) with strangers and colleagues","Tip: Germans appreciate punctuality — arrive 5 minutes early","Tip: Direct feedback is a sign of respect, not criticism","Tip: Prepare factual arguments, not emotional appeals"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00003286190e', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Addressing colleagues with \"du\" immediately","correction":"Use \"Sie\" until explicitly invited to use \"du\"","explanation":"Arabic uses \"anta/anti\" universally. German has strict formal/informal distinction at work."},{"mistake":"Putting the verb at the end in main clauses","correction":"Verb stays in position 2 in main clauses","explanation":"Subordinate clause word order interferes"}]', 30);

  -- Lesson 5: Das Passiv im Präsens (L-B1-02-05)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-00003286190d', '00000000-0000-4000-a000-000039c2eae0', 'Das Passiv im Präsens', 'Learn passive voice in present tense for formal communication.', 'Passive Voice', 'grammar', '["Understand and apply present_tense rules correctly","Use present_tense in real conversations","Avoid common mistakes Arabic speakers make with present_tense","Read and understand present_tense in context","Listen and identify present_tense in speech","Write sentences using present_tense correctly"]', 55, 5, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, french_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-00003286190d', 'der Beruf', 'المهنة', 'profession', NULL, 'der', 'die Berufe', 'noun', 'Was ist dein Beruf?', 'What is your profession?', 'A1', 1),
  ('00000000-0000-4000-a000-00003286190d', 'die Firma', 'الشركة', 'company', NULL, 'die', 'die Firmen', 'noun', 'Die Firma ist in Berlin.', 'The company is in Berlin.', 'A1', 2),
  ('00000000-0000-4000-a000-00003286190d', 'der Kollege', 'الزميل', 'colleague', NULL, 'der', 'die Kollegen', 'noun', 'Mein Kollege hilft mir.', 'My colleague helps me.', 'A1', 3),
  ('00000000-0000-4000-a000-00003286190d', 'das Büro', 'المكتب', 'office', NULL, 'das', 'die Büros', 'noun', 'Das Büro ist im dritten Stock.', 'The office is on the third floor.', 'A1', 4),
  ('00000000-0000-4000-a000-00003286190d', 'die Besprechung', 'الاجتماع', 'meeting', NULL, 'die', 'die Besprechungen', 'noun', 'Wir haben eine Besprechung.', 'We have a meeting.', 'B1', 5),
  ('00000000-0000-4000-a000-00003286190d', 'der Chef', 'المدير', 'boss', NULL, 'der', 'die Chefs', 'noun', 'Mein Chef ist freundlich.', 'My boss is friendly.', 'A1', 6),
  ('00000000-0000-4000-a000-00003286190d', 'das Gehalt', 'الراتب', 'salary', NULL, 'das', 'die Gehälter', 'noun', 'Das Gehalt ist gut.', 'The salary is good.', 'B1', 7),
  ('00000000-0000-4000-a000-00003286190d', 'die Stelle', 'الوظيفة', 'position', NULL, 'die', 'die Stellen', 'noun', 'Ich suche eine neue Stelle.', 'I am looking for a new position.', 'B1', 8),
  ('00000000-0000-4000-a000-00003286190d', 'die Schule', 'المدرسة', 'school', NULL, 'die', 'die Schulen', 'noun', 'Die Kinder gehen zur Schule.', 'The children go to school.', 'A1', 9),
  ('00000000-0000-4000-a000-00003286190d', 'der Lehrer', 'المعلم', 'teacher', NULL, 'der', 'die Lehrer', 'noun', 'Der Lehrer erklärt die Grammatik.', 'The teacher explains the grammar.', 'A1', 10),
  ('00000000-0000-4000-a000-00003286190d', 'der Student', 'الطالب', 'student', NULL, 'der', 'die Studenten', 'noun', 'Der Student lernt Deutsch.', 'The student learns German.', 'A1', 11),
  ('00000000-0000-4000-a000-00003286190d', 'die Universität', 'الجامعة', 'university', NULL, 'die', 'die Universitäten', 'noun', 'Die Universität ist alt.', 'The university is old.', 'B1', 12),
  ('00000000-0000-4000-a000-00003286190d', 'der Kurs', 'الدورة', 'course', NULL, 'der', 'die Kurse', 'noun', 'Der Kurs kostet 200 Euro.', 'The course costs 200 euros.', 'A2', 13),
  ('00000000-0000-4000-a000-00003286190d', 'die Prüfung', 'الامتحان', 'exam', NULL, 'die', 'die Prüfungen', 'noun', 'Die Prüfung ist schwer.', 'The exam is difficult.', 'B1', 14),
  ('00000000-0000-4000-a000-00003286190d', 'das Studium', 'الدراسة الجامعية', 'studies', NULL, 'das', NULL, 'noun', 'Mein Studium dauert vier Jahre.', 'My studies take four years.', 'B1', 15),
  ('00000000-0000-4000-a000-00003286190d', 'lernen', 'يتعلم', 'to learn', NULL, NULL, NULL, 'verb', 'Ich lerne Deutsch.', 'I learn German.', 'A1', 16),
  ('00000000-0000-4000-a000-00003286190d', 'die Zeitung', 'الجريدة', 'newspaper', NULL, 'die', 'die Zeitungen', 'noun', 'Ich lese die Zeitung.', 'I read the newspaper.', 'A2', 17),
  ('00000000-0000-4000-a000-00003286190d', 'das Internet', 'الإنترنت', 'internet', NULL, 'das', NULL, 'noun', 'Das Internet ist schnell.', 'The internet is fast.', 'A2', 18),
  ('00000000-0000-4000-a000-00003286190d', 'der Artikel', 'المقال', 'article', NULL, 'der', 'die Artikel', 'noun', 'Der Artikel ist interessant.', 'The article is interesting.', 'B1', 19),
  ('00000000-0000-4000-a000-00003286190d', 'die Nachricht', 'الخبر', 'news', NULL, 'die', 'die Nachrichten', 'noun', 'Ich sehe die Nachrichten.', 'I watch the news.', 'A2', 20),
  ('00000000-0000-4000-a000-00003286190d', 'das Radio', 'الراديو', 'radio', NULL, 'das', 'die Radios', 'noun', 'Ich höre Radio.', 'I listen to the radio.', 'A2', 21),
  ('00000000-0000-4000-a000-00003286190d', 'das Fernsehen', 'التلفاز', 'television', NULL, 'das', NULL, 'noun', 'Das Fernsehen läuft.', 'The television is on.', 'A2', 22),
  ('00000000-0000-4000-a000-00003286190d', 'die Zeitschrift', 'المجلة', 'magazine', NULL, 'die', 'die Zeitschriften', 'noun', 'Die Zeitschrift erscheint monatlich.', 'The magazine is published monthly.', 'B1', 23),
  ('00000000-0000-4000-a000-00003286190d', 'der Journalist', 'الصحفي', 'journalist', NULL, 'der', 'die Journalisten', 'noun', 'Der Journalist schreibt einen Artikel.', 'The journalist writes an article.', 'B1', 24),
  ('00000000-0000-4000-a000-00003286190d', 'die Gesellschaft', 'المجتمع', 'society', NULL, 'die', NULL, 'noun', 'Die Gesellschaft verändert sich.', 'Society is changing.', 'B1', 25),
  ('00000000-0000-4000-a000-00003286190d', 'die Politik', 'السياسة', 'politics', NULL, 'die', NULL, 'noun', 'Politik ist ein wichtiges Thema.', 'Politics is an important topic.', 'B1', 26),
  ('00000000-0000-4000-a000-00003286190d', 'die Integration', 'الاندماج', 'integration', NULL, 'die', NULL, 'noun', 'Integration ist wichtig.', 'Integration is important.', 'B1', 27),
  ('00000000-0000-4000-a000-00003286190d', 'die Kultur', 'الثقافة', 'culture', NULL, 'die', NULL, 'noun', 'Die deutsche Kultur ist vielfältig.', 'German culture is diverse.', 'A2', 28),
  ('00000000-0000-4000-a000-00003286190d', 'der Bürger', 'المواطن', 'citizen', NULL, 'der', 'die Bürger', 'noun', 'Die Bürger wählen.', 'The citizens vote.', 'B1', 29),
  ('00000000-0000-4000-a000-00003286190d', 'die Freiheit', 'الحرية', 'freedom', NULL, 'die', NULL, 'noun', 'Freiheit ist ein Grundrecht.', 'Freedom is a basic right.', 'B1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00003286190d', 'Konjunktiv II: Höfliche Bitten und irreale Sätze (Subjunctive for Politeness) / صيغة الشرط الثانية: الطلبات المهذبة والجمل غير الواقعية', 'Konjunktiv II is used for polite requests (Ich hätte gern...), unreal situations (Wenn ich Zeit hätte...), and wishes (Ich wünschte, ich wäre...). For most verbs, use "würde + infinitive". Only a few common verbs have their own subjunctive form: hätte (hätten), wäre (wären), könnte (könnten).', '[{"rule":"würde + Infinitiv (most verbs)","note":"Ich würde gern kommen. (I would like to come.)"},{"rule":"hätte (haben), wäre (sein), könnte (können)","note":"Ich hätte gern einen Kaffee. (I would like a coffee.)"},{"rule":"Wenn... dann... (if... then...)","note":"Wenn ich Zeit hätte, würde ich reisen. (If I had time, I would travel.)"}]', '[{"german":"Ich hätte gern einen Kaffee, bitte.","arabic":"أود فنجان قهوة من فضلك.","english":"I would like a coffee, please."},{"german":"Wenn ich mehr Zeit hätte, würde ich Deutsch lernen.","arabic":"لو كان لدي وقت أكثر، لتعلمت الألمانية.","english":"If I had more time, I would learn German."},{"german":"Könnten Sie mir bitte helfen?","arabic":"هل يمكنكم مساعدتي من فضلكم؟","english":"Could you please help me?"}]', '[{"mistake":"Ich will einen Kaffee (too direct in restaurant)","correction":"Ich hätte gern einen Kaffee.","explanation":"In German restaurants, use Konjunktiv II to be polite, not \"ich will\"."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00003286190d', 'multiple_choice', 'Welches deutsche Wort bedeutet "profession"?', '["die Besprechung","das Büro","der Kollege","die Firma"]', 'der Beruf', '"profession" = "der Beruf" in German. Article: der Plural: die Berufe', 1, 1),
  ('00000000-0000-4000-a000-00003286190d', 'multiple_choice', 'Welches deutsche Wort bedeutet "company"?', '["der Kollege","der Beruf","die Firma","die Besprechung"]', 'die Firma', '"company" = "die Firma" in German. Article: die Plural: die Firmen', 1, 2),
  ('00000000-0000-4000-a000-00003286190d', 'multiple_choice', 'Welches deutsche Wort bedeutet "colleague"?', '["der Beruf","der Kollege","das Büro","die Firma"]', 'der Kollege', '"colleague" = "der Kollege" in German. Article: der Plural: die Kollegen', 1, 3),
  ('00000000-0000-4000-a000-00003286190d', 'multiple_choice', 'Welches deutsche Wort bedeutet "office"?', '["das Büro","der Beruf","die Besprechung","die Firma"]', 'das Büro', '"office" = "das Büro" in German. Article: das Plural: die Büros', 1, 4),
  ('00000000-0000-4000-a000-00003286190d', 'multiple_choice', 'Welches deutsche Wort bedeutet "meeting"?', '["der Beruf","die Besprechung","die Firma","der Kollege"]', 'die Besprechung', '"meeting" = "die Besprechung" in German. Article: die Plural: die Besprechungen', 1, 5),
  ('00000000-0000-4000-a000-00003286190d', 'fill_gap', 'Ergänze den Satz: Ich ___ gern über Passive Voice. (sprechen)', '["spreche","sprichst","spricht","sprechen"]', 'spreche', 'ich spreche gern = I like to speak. Stem: sprech- + e.', 2, 6),
  ('00000000-0000-4000-a000-00003286190d', 'translation', 'Übersetze ins Deutsche: "I am learning about Passive Voice."', '["Ich lerne über Passive Voice.","Ich lerne Passive Voice.","Lerne ich Passive Voice."]', 'Ich lerne über Passive Voice.', '"Ich lerne über..." = "I am learning about..."', 2, 7),
  ('00000000-0000-4000-a000-00003286190d', 'matching', 'Match: Which word pairs are correct?', '["der Beruf - profession, die Firma - company"]', 'Matched correctly', 'Each German word has a unique English equivalent.', 2, 8);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-00003286190d', 'multiple_choice', 'Was bedeutet "der Beruf" auf Deutsch?', '["profession","to run","beautiful","yesterday"]', 'profession', 1, 1),
  ('00000000-0000-4000-a000-00003286190d', 'multiple_choice', 'Welcher Artikel gehört zu "die Firma"?', '["der","die","das","den"]', 'die', 1, 2),
  ('00000000-0000-4000-a000-00003286190d', 'true_false', 'Das Wort "der Kollege" gehört zum Thema Passive Voice.', '["True","False"]', 'True', 1, 3),
  ('00000000-0000-4000-a000-00003286190d', 'multiple_choice', 'Welcher Satz verwendet present_tense?', '["Ich hätte gern einen Kaffee, bitte.","Wenn ich mehr Zeit hätte, würde ich Deutsch lernen.","Könnten Sie mir bitte helfen?"]', 'Ich hätte gern einen Kaffee, bitte.', 2, 4),
  ('00000000-0000-4000-a000-00003286190d', 'true_false', ''Im Deutschen steht das Verb an zweiter Position im Hauptsatz.', '["True","False"]', 'True', 1, 5),
  ('00000000-0000-4000-a000-00003286190d', 'fill_blank', 'Complete: Ich ___ (office) Deutsch.', '["das Büro","lernt","lernst","lernen"]', 'lerne', 2, 6),
  ('00000000-0000-4000-a000-00003286190d', 'multiple_choice', 'Wie lautet das deutsche Wort für "meeting"?', '["die Besprechung","der Chef","das Gehalt","die Stelle"]', 'die Besprechung', 1, 7),
  ('00000000-0000-4000-a000-00003286190d', 'true_false', 'Im Deutschen werden alle Nomen großgeschrieben.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-00003286190d', 'multiple_choice', 'How do you say "please" in a restaurant in Germany?', '["Bitte","Danke","Tschüss","Hallo"]', 'Bitte', 1, 9),
  ('00000000-0000-4000-a000-00003286190d', 'fill_blank', 'Wo ___ (to live) du?', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 2, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, french_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-00003286190d', 'Ich arbeite bei Siemens.', 'I work at Siemens.', 'أعمل في سيمنز.', NULL, 'Used in Arbeit und Karriere', 'neutral', false, 1),
  ('00000000-0000-4000-a000-00003286190d', 'Können wir einen Termin vereinbaren?', 'Can we schedule a meeting?', 'هل يمكننا تحديد موعد؟', NULL, 'Used in Arbeit und Karriere', 'formal', false, 2),
  ('00000000-0000-4000-a000-00003286190d', 'Ich schicke Ihnen die Unterlagen per E-Mail.', 'I''ll send you the documents by email.', 'سأرسل لكم المستندات عبر البريد الإلكتروني.', NULL, 'Used in Arbeit und Karriere', 'formal', false, 3),
  ('00000000-0000-4000-a000-00003286190d', 'Vielen Dank für Ihre Unterstützung!', 'Thank you very much for your support!', 'شكراً جزيلاً لدعمكم!', NULL, 'Used in Arbeit und Karriere', 'formal', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-00003286190d', 'der der Beruf (die Berufe)', 'profession — المهنة', 'noun', 'vocabulary', 1),
  ('00000000-0000-4000-a000-00003286190d', 'die die Firma (die Firmen)', 'company — الشركة', 'noun', 'vocabulary', 2),
  ('00000000-0000-4000-a000-00003286190d', 'der der Kollege (die Kollegen)', 'colleague — الزميل', 'noun', 'vocabulary', 3),
  ('00000000-0000-4000-a000-00003286190d', 'das das Büro (die Büros)', 'office — المكتب', 'noun', 'vocabulary', 4),
  ('00000000-0000-4000-a000-00003286190d', 'die die Besprechung (die Besprechungen)', 'meeting — الاجتماع', 'noun', 'vocabulary', 5),
  ('00000000-0000-4000-a000-00003286190d', 'der der Chef (die Chefs)', 'boss — المدير', 'noun', 'vocabulary', 6),
  ('00000000-0000-4000-a000-00003286190d', 'das das Gehalt (die Gehälter)', 'salary — الراتب', 'noun', 'vocabulary', 7),
  ('00000000-0000-4000-a000-00003286190d', 'die die Stelle (die Stellen)', 'position — الوظيفة', 'noun', 'vocabulary', 8),
  ('00000000-0000-4000-a000-00003286190d', 'die die Schule (die Schulen)', 'school — المدرسة', 'noun', 'vocabulary', 9),
  ('00000000-0000-4000-a000-00003286190d', 'der der Lehrer (die Lehrer)', 'teacher — المعلم', 'noun', 'vocabulary', 10),
  ('00000000-0000-4000-a000-00003286190d', 'der der Student (die Studenten)', 'student — الطالب', 'noun', 'vocabulary', 11),
  ('00000000-0000-4000-a000-00003286190d', 'die die Universität (die Universitäten)', 'university — الجامعة', 'noun', 'vocabulary', 12),
  ('00000000-0000-4000-a000-00003286190d', 'der der Kurs (die Kurse)', 'course — الدورة', 'noun', 'vocabulary', 13),
  ('00000000-0000-4000-a000-00003286190d', 'die die Prüfung (die Prüfungen)', 'exam — الامتحان', 'noun', 'vocabulary', 14),
  ('00000000-0000-4000-a000-00003286190d', 'das das Studium', 'studies — الدراسة الجامعية', 'noun', 'vocabulary', 15),
  ('00000000-0000-4000-a000-00003286190d', 'Ich hätte gern einen Kaffee, bitte.', 'I would like a coffee, please.', 'Konjunktiv II: Höfliche Bitten und irreale Sätze (Subjunctive for Politeness)', 'grammar', 16),
  ('00000000-0000-4000-a000-00003286190d', 'Wenn ich mehr Zeit hätte, würde ich Deutsch lernen.', 'If I had more time, I would learn German.', 'Konjunktiv II: Höfliche Bitten und irreale Sätze (Subjunctive for Politeness)', 'grammar', 17),
  ('00000000-0000-4000-a000-00003286190d', 'Könnten Sie mir bitte helfen?', 'Could you please help me?', 'Konjunktiv II: Höfliche Bitten und irreale Sätze (Subjunctive for Politeness)', 'grammar', 18);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, french_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-00003286190d', 'Das Passiv im Präsens — Leseübung', 'In der heutigen Arbeitswelt verändern sich die Anforderungen ständig. Immer mehr Berufe erfordern digitale Kompetenzen. Wer im Beruf erfolgreich sein möchte, sollte sich kontinuierlich weiterbilden. In Deutschland gibt es viele Möglichkeiten zur beruflichen Weiterbildung, zum Beispiel über die Arbeitsagentur oder die Industrie- und Handelskammer. Auch ein Studium neben dem Beruf wird immer beliebter. Viele Unternehmen unterstützen ihre Mitarbeiter bei der Weiterbildung durch flexible Arbeitszeiten oder finanzielle Zuschüsse.', 'In today''s working world, requirements are constantly changing. More and more professions require digital skills. Anyone who wants to be successful in their career should continuously educate themselves. In Germany there are many opportunities for professional development, for example through the employment agency or the Chamber of Industry and Commerce. Studying alongside work is also becoming increasingly popular. Many companies support their employees in further training through flexible working hours or financial subsidies.', 'في عالم العمل اليوم تتغير المتطلبات باستمرار. المزيد والمزيد من المهن تتطلب مهارات رقمية. من يريد النجاح في مهنته يجب أن يواصل تعليمه. في ألمانيا هناك فرص كثيرة للتطوير المهني، مثلاً عبر وكالة العمل أو غرفة الصناعة والتجارة. الدراسة إلى جانب العمل أصبحت أيضاً أكثر شعبية. العديد من الشركات تدعم موظفيها في التدريب المستمر من خلال ساعات عمل مرنة أو إعانات مالية.', NULL, 67, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, french_translation, duration_seconds, speaker_count, scenario) values
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

[Chef]: نعم، فكرة جيدة. ولا تنسوا المستندات.', '[Chef]: 

[Angestellter]: 

[Chef]: 

[Angestellter]: 

[Chef]: ', 60, 2, 'Arbeit und Karriere');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-00003286190d', '🔊 Sprechen: Das Passiv im Präsens', 'Discussion: You attend a German Stammtisch (weekly meetup). Discuss Passive Voice with the group. Express your opinion, agree/disagree, ask follow-up questions. Try to keep the conversation flowing for 2 minutes.', 'Passive Voice', ARRAY['Use discourse markers (also, jedoch, außerdem)','React naturally: "Ach so!", "Echt?", "Das stimmt!"','Paraphrase when you don''t know a word']::text[], ARRAY['der Beruf','die Firma','der Kollege','das Büro','die Besprechung','der Chef','das Gehalt','die Stelle']::text[], 60, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-00003286190d', '✏️ Schreiben: Das Passiv im Präsens', 'Write a formal letter (200-250 words) to your German teacher explaining what you learned about "Passive Voice". Include: what surprised you, what was similar/different to your culture, and what you want to learn next. Use present_tense correctly.', ARRAY['Use paragraph breaks for structure','Connect ideas with "außerdem", "deshalb", "jedoch"','Check your verb position in Nebensätze']::text[], ARRAY['der Beruf','die Firma','der Kollege','das Büro','die Besprechung','der Chef','das Gehalt','die Stelle']::text[], ARRAY['Sentence structure','Vocabulary usage']::text[], 150, 250, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00003286190d', 'Das Passiv im Präsens — Roleplay', 'Passive Voice', 'Student', 'Teacher', 'Practice conversation about Passive Voice', 'Hallo! Lass uns über dieses Thema sprechen.', 'intermediate', 1, ARRAY['der Beruf','die Firma','der Kollege','das Büro','die Besprechung','der Chef','das Gehalt','die Stelle']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00003286190d', 'Das Passiv im Präsens — Advanced Roleplay', 'Passive Voice', 'Customer', 'Assistant', 'Extended conversation about Passive Voice', 'Guten Tag! Wie kann ich Ihnen helfen?', 'intermediate', 2, ARRAY['der Beruf','die Firma','der Kollege','das Büro','die Besprechung','der Chef','das Gehalt','die Stelle']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-00003286190d', 'Das Passiv im Präsens — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Das Passiv im Präsens".', 'Creative practice for Passive Voice', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-00003286190d', '📚 Hausaufgabe: Das Passiv im Präsens', 'Complete these tasks to reinforce "Das Passiv im Präsens".', 'mixed', '[{"description":"Create 10 flashcards from this lesson''s vocabulary — write German on one side, Arabic on the other. Test yourself 3 times."},{"description":"Write 6 sentences about Passive Voice: 2 statements, 2 questions, 2 negations — all using present_tense."},{"description":"Record yourself reading the dialogue aloud. Listen to the recording and note 3 things to improve."},{"description":"Find 3 real German websites, videos, or articles about Passive Voice. Note 5 new words you discovered."}]', 50, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-00003286190d', '🎯 Excellent progress! This lesson covered Passive Voice (75 vocabulary items) and present_tense. You developed reading, listening, speaking, and writing skills in the context of work. Focus on your common mistakes area for maximum improvement.', '["75 vocabulary items about Passive Voice","present_tense — grammar explanation and practice","Reading comprehension: text about Passive Voice","Listening comprehension: dialogue about Passive Voice","Speaking practice: roleplay/discussion about Passive Voice","Writing task: text about Passive Voice"]', '[{"title":"Das Passiv im Präsens Review","summary":"present_tense — the main grammar focus. Focus on using this structure naturally in conversations and writing."}]', ARRAY['der Beruf (profession)','die Firma (company)','der Kollege (colleague)','das Büro (office)','die Besprechung (meeting)']::text[], ARRAY['Don''t translate from Arabic word-for-word — German has different sentence structure','Learn every noun with its article: NEVER learn "Tisch" alone, always "der Tisch"','Watch out for verb position in Nebensätze']::text[], ARRAY['Practice 15-20 minutes daily — consistency beats intensity','Speak out loud: German pronunciation needs muscle memory','Use the new vocabulary within 24 hours or you''ll forget it','Watch German YouTube videos about Passive Voice for authentic input']::text[]);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00003286190d', 'Pronunciation: Intonation and sentence melody', 'German sentences have a falling intonation at the end of statements. Questions starting with a verb rise at the end. W-questions fall at the end. Emphasise the stressed syllable — German stresses the first syllable of the root.

Common mistake for Arabic speakers: Arabic speakers often put stress on the wrong syllable. Remember: German root stress is usually on the first syllable.', '[]', '[{"german":"warum","arabic":"","english":"","phonetic":"/vaˈrʊm/"},{"german":"deshalb","arabic":"","english":"","phonetic":"/dɛsˈhalp/"}]', '[]', 10);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00003286190d', 'translation', 'Translate to German: "I use the word "profession" in a sentence about Passive Voice."', '[]', 'Was ist dein Beruf?', 'Use der  "der Beruf" with the correct present_tense form.', 1, 40);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00003286190d', 'translation', 'Translate to German: "I use the word "company" in a sentence about Passive Voice."', '[]', 'Die Firma ist in Berlin.', 'Use die  "die Firma" with the correct present_tense form.', 1, 41);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00003286190d', 'translation', 'Translate to German: "I use the word "colleague" in a sentence about Passive Voice."', '[]', 'Mein Kollege hilft mir.', 'Use der  "der Kollege" with the correct present_tense form.', 1, 42);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00003286190d', 'Culture: 🇩🇪 Deutsche Kultur: Passive Voice', 'Passive Voice in Germany has specific cultural nuances that differ from Arabic-speaking countries. Germans tend to separate their private and professional lives strictly. When dealing with Passive Voice in a professional context, use formal register and prepare factual arguments. Emotional appeals are less effective than logical reasoning.

لدى Passive Voice في ألمانيا فروق ثقافية دقيقة تختلف عن البلدان العربية. الألمان يفصلون بين حياتهم الخاصة والمهنية بشكل صارم.', '["Tip: Always use \"Sie\" (formal) with strangers and colleagues","Tip: Germans appreciate punctuality — arrive 5 minutes early","Tip: Direct feedback is a sign of respect, not criticism","Tip: Prepare factual arguments, not emotional appeals"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00003286190d', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Addressing colleagues with \"du\" immediately","correction":"Use \"Sie\" until explicitly invited to use \"du\"","explanation":"Arabic uses \"anta/anti\" universally. German has strict formal/informal distinction at work."},{"mistake":"Putting the verb at the end in main clauses","correction":"Verb stays in position 2 in main clauses","explanation":"Subordinate clause word order interferes"}]', 30);

  -- Lesson 6: Test: Arbeit und Karriere (L-B1-02-06)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-00003286190c', '00000000-0000-4000-a000-000039c2eae0', 'Test: Arbeit und Karriere', 'Module test on work and career.', 'Module Test', 'test', '["Understand and apply present_tense rules correctly","Use present_tense in real conversations","Avoid common mistakes Arabic speakers make with present_tense","Read and understand present_tense in context","Listen and identify present_tense in speech","Write sentences using present_tense correctly"]', 45, 6, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, french_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-00003286190c', 'der Beruf', 'المهنة', 'profession', NULL, 'der', 'die Berufe', 'noun', 'Was ist dein Beruf?', 'What is your profession?', 'A1', 1),
  ('00000000-0000-4000-a000-00003286190c', 'die Firma', 'الشركة', 'company', NULL, 'die', 'die Firmen', 'noun', 'Die Firma ist in Berlin.', 'The company is in Berlin.', 'A1', 2),
  ('00000000-0000-4000-a000-00003286190c', 'der Kollege', 'الزميل', 'colleague', NULL, 'der', 'die Kollegen', 'noun', 'Mein Kollege hilft mir.', 'My colleague helps me.', 'A1', 3),
  ('00000000-0000-4000-a000-00003286190c', 'das Büro', 'المكتب', 'office', NULL, 'das', 'die Büros', 'noun', 'Das Büro ist im dritten Stock.', 'The office is on the third floor.', 'A1', 4),
  ('00000000-0000-4000-a000-00003286190c', 'die Besprechung', 'الاجتماع', 'meeting', NULL, 'die', 'die Besprechungen', 'noun', 'Wir haben eine Besprechung.', 'We have a meeting.', 'B1', 5),
  ('00000000-0000-4000-a000-00003286190c', 'der Chef', 'المدير', 'boss', NULL, 'der', 'die Chefs', 'noun', 'Mein Chef ist freundlich.', 'My boss is friendly.', 'A1', 6),
  ('00000000-0000-4000-a000-00003286190c', 'das Gehalt', 'الراتب', 'salary', NULL, 'das', 'die Gehälter', 'noun', 'Das Gehalt ist gut.', 'The salary is good.', 'B1', 7),
  ('00000000-0000-4000-a000-00003286190c', 'die Stelle', 'الوظيفة', 'position', NULL, 'die', 'die Stellen', 'noun', 'Ich suche eine neue Stelle.', 'I am looking for a new position.', 'B1', 8),
  ('00000000-0000-4000-a000-00003286190c', 'die Schule', 'المدرسة', 'school', NULL, 'die', 'die Schulen', 'noun', 'Die Kinder gehen zur Schule.', 'The children go to school.', 'A1', 9),
  ('00000000-0000-4000-a000-00003286190c', 'der Lehrer', 'المعلم', 'teacher', NULL, 'der', 'die Lehrer', 'noun', 'Der Lehrer erklärt die Grammatik.', 'The teacher explains the grammar.', 'A1', 10),
  ('00000000-0000-4000-a000-00003286190c', 'der Student', 'الطالب', 'student', NULL, 'der', 'die Studenten', 'noun', 'Der Student lernt Deutsch.', 'The student learns German.', 'A1', 11),
  ('00000000-0000-4000-a000-00003286190c', 'die Universität', 'الجامعة', 'university', NULL, 'die', 'die Universitäten', 'noun', 'Die Universität ist alt.', 'The university is old.', 'B1', 12),
  ('00000000-0000-4000-a000-00003286190c', 'der Kurs', 'الدورة', 'course', NULL, 'der', 'die Kurse', 'noun', 'Der Kurs kostet 200 Euro.', 'The course costs 200 euros.', 'A2', 13),
  ('00000000-0000-4000-a000-00003286190c', 'die Prüfung', 'الامتحان', 'exam', NULL, 'die', 'die Prüfungen', 'noun', 'Die Prüfung ist schwer.', 'The exam is difficult.', 'B1', 14),
  ('00000000-0000-4000-a000-00003286190c', 'das Studium', 'الدراسة الجامعية', 'studies', NULL, 'das', NULL, 'noun', 'Mein Studium dauert vier Jahre.', 'My studies take four years.', 'B1', 15),
  ('00000000-0000-4000-a000-00003286190c', 'lernen', 'يتعلم', 'to learn', NULL, NULL, NULL, 'verb', 'Ich lerne Deutsch.', 'I learn German.', 'A1', 16),
  ('00000000-0000-4000-a000-00003286190c', 'die Zeitung', 'الجريدة', 'newspaper', NULL, 'die', 'die Zeitungen', 'noun', 'Ich lese die Zeitung.', 'I read the newspaper.', 'A2', 17),
  ('00000000-0000-4000-a000-00003286190c', 'das Internet', 'الإنترنت', 'internet', NULL, 'das', NULL, 'noun', 'Das Internet ist schnell.', 'The internet is fast.', 'A2', 18),
  ('00000000-0000-4000-a000-00003286190c', 'der Artikel', 'المقال', 'article', NULL, 'der', 'die Artikel', 'noun', 'Der Artikel ist interessant.', 'The article is interesting.', 'B1', 19),
  ('00000000-0000-4000-a000-00003286190c', 'die Nachricht', 'الخبر', 'news', NULL, 'die', 'die Nachrichten', 'noun', 'Ich sehe die Nachrichten.', 'I watch the news.', 'A2', 20),
  ('00000000-0000-4000-a000-00003286190c', 'das Radio', 'الراديو', 'radio', NULL, 'das', 'die Radios', 'noun', 'Ich höre Radio.', 'I listen to the radio.', 'A2', 21),
  ('00000000-0000-4000-a000-00003286190c', 'das Fernsehen', 'التلفاز', 'television', NULL, 'das', NULL, 'noun', 'Das Fernsehen läuft.', 'The television is on.', 'A2', 22),
  ('00000000-0000-4000-a000-00003286190c', 'die Zeitschrift', 'المجلة', 'magazine', NULL, 'die', 'die Zeitschriften', 'noun', 'Die Zeitschrift erscheint monatlich.', 'The magazine is published monthly.', 'B1', 23),
  ('00000000-0000-4000-a000-00003286190c', 'der Journalist', 'الصحفي', 'journalist', NULL, 'der', 'die Journalisten', 'noun', 'Der Journalist schreibt einen Artikel.', 'The journalist writes an article.', 'B1', 24),
  ('00000000-0000-4000-a000-00003286190c', 'die Gesellschaft', 'المجتمع', 'society', NULL, 'die', NULL, 'noun', 'Die Gesellschaft verändert sich.', 'Society is changing.', 'B1', 25),
  ('00000000-0000-4000-a000-00003286190c', 'die Politik', 'السياسة', 'politics', NULL, 'die', NULL, 'noun', 'Politik ist ein wichtiges Thema.', 'Politics is an important topic.', 'B1', 26),
  ('00000000-0000-4000-a000-00003286190c', 'die Integration', 'الاندماج', 'integration', NULL, 'die', NULL, 'noun', 'Integration ist wichtig.', 'Integration is important.', 'B1', 27),
  ('00000000-0000-4000-a000-00003286190c', 'die Kultur', 'الثقافة', 'culture', NULL, 'die', NULL, 'noun', 'Die deutsche Kultur ist vielfältig.', 'German culture is diverse.', 'A2', 28),
  ('00000000-0000-4000-a000-00003286190c', 'der Bürger', 'المواطن', 'citizen', NULL, 'der', 'die Bürger', 'noun', 'Die Bürger wählen.', 'The citizens vote.', 'B1', 29),
  ('00000000-0000-4000-a000-00003286190c', 'die Freiheit', 'الحرية', 'freedom', NULL, 'die', NULL, 'noun', 'Freiheit ist ein Grundrecht.', 'Freedom is a basic right.', 'B1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00003286190c', 'Nebensätze mit "dass", "weil", "obwohl" (Subordinate Clauses) / الجمل الثانوية مع dass, weil, obwohl', 'Subordinate clauses push the conjugated verb to the END of the clause. The conjunction initiates the subordinate clause. Common conjunctions: dass (that), weil (because), obwohl (although), wenn (if/when), während (while). The subordinate clause can come before or after the main clause.', '[{"rule":"Verb goes to END in subordinate clause","note":"Ich weiß, dass er morgen kommt. (NOT: ...dass er kommt morgen)"},{"rule":"Wenn clause first → verb starts main clause","note":"Wenn ich Zeit habe, gehe ich ins Kino."},{"rule":"Weil answers \"why\" questions","note":"Ich lerne Deutsch, weil ich in Berlin studieren will."}]', '[{"german":"Ich denke, dass er recht hat.","arabic":"أعتقد أنه على حق.","english":"I think that he is right."},{"german":"Er lernt Deutsch, weil er in Berlin studiert.","arabic":"هو يتعلم الألمانية لأنه يدرس في برلين.","english":"He learns German because he studies in Berlin."},{"german":"Obwohl es regnet, gehe ich spazieren.","arabic":"على الرغم من المطر، أذهب للتنزه.","english":"Although it is raining, I go for a walk."}]', '[{"mistake":"Ich weiß, dass er kommt morgen (verb stays in position 2)","correction":"Ich weiß, dass er morgen kommt.","explanation":"In \"dass\" clauses, the verb ALWAYS goes to the end."},{"mistake":"Weil ich bin müde (verb stays after \"weil\")","correction":"Weil ich müde bin.","explanation":"Weil + subject + ... + verb (at the end)."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00003286190c', 'multiple_choice', 'Welches deutsche Wort bedeutet "profession"?', '["das Büro","der Beruf","die Besprechung","der Kollege"]', 'der Beruf', '"profession" = "der Beruf" in German. Article: der Plural: die Berufe', 1, 1),
  ('00000000-0000-4000-a000-00003286190c', 'multiple_choice', 'Welches deutsche Wort bedeutet "company"?', '["der Kollege","der Beruf","die Firma","das Büro"]', 'die Firma', '"company" = "die Firma" in German. Article: die Plural: die Firmen', 1, 2),
  ('00000000-0000-4000-a000-00003286190c', 'multiple_choice', 'Welches deutsche Wort bedeutet "colleague"?', '["die Firma","die Besprechung","das Büro","der Beruf"]', 'der Kollege', '"colleague" = "der Kollege" in German. Article: der Plural: die Kollegen', 1, 3),
  ('00000000-0000-4000-a000-00003286190c', 'multiple_choice', 'Welches deutsche Wort bedeutet "office"?', '["die Besprechung","der Beruf","der Kollege","das Büro"]', 'das Büro', '"office" = "das Büro" in German. Article: das Plural: die Büros', 1, 4),
  ('00000000-0000-4000-a000-00003286190c', 'multiple_choice', 'Welches deutsche Wort bedeutet "meeting"?', '["der Beruf","die Besprechung","die Firma","der Kollege"]', 'die Besprechung', '"meeting" = "die Besprechung" in German. Article: die Plural: die Besprechungen', 1, 5),
  ('00000000-0000-4000-a000-00003286190c', 'fill_gap', 'Ergänze den Satz: Ich ___ gern über Module Test. (sprechen)', '["spreche","sprichst","spricht","sprechen"]', 'spreche', 'ich spreche gern = I like to speak. Stem: sprech- + e.', 2, 6),
  ('00000000-0000-4000-a000-00003286190c', 'translation', 'Übersetze ins Deutsche: "I am learning about Module Test."', '["Ich lerne über Module Test.","Ich lerne Module Test.","Lerne ich Module Test."]', 'Ich lerne über Module Test.', '"Ich lerne über..." = "I am learning about..."', 2, 7),
  ('00000000-0000-4000-a000-00003286190c', 'matching', 'Match: Which word pairs are correct?', '["der Beruf - profession, die Firma - company"]', 'Matched correctly', 'Each German word has a unique English equivalent.', 2, 8);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-00003286190c', 'multiple_choice', 'Was bedeutet "der Beruf" auf Deutsch?', '["profession","to run","beautiful","yesterday"]', 'profession', 1, 1),
  ('00000000-0000-4000-a000-00003286190c', 'multiple_choice', 'Welcher Artikel gehört zu "die Firma"?', '["der","die","das","den"]', 'die', 1, 2),
  ('00000000-0000-4000-a000-00003286190c', 'true_false', 'Das Wort "der Kollege" gehört zum Thema Module Test.', '["True","False"]', 'True', 1, 3),
  ('00000000-0000-4000-a000-00003286190c', 'multiple_choice', 'Welcher Satz verwendet present_tense?', '["Ich denke, dass er recht hat.","Er lernt Deutsch, weil er in Berlin studiert.","Obwohl es regnet, gehe ich spazieren."]', 'Ich denke, dass er recht hat.', 2, 4),
  ('00000000-0000-4000-a000-00003286190c', 'true_false', ''Im Deutschen steht das Verb an zweiter Position im Hauptsatz.', '["True","False"]', 'True', 1, 5),
  ('00000000-0000-4000-a000-00003286190c', 'fill_blank', 'Complete: Ich ___ (office) Deutsch.', '["das Büro","lernt","lernst","lernen"]', 'lerne', 2, 6),
  ('00000000-0000-4000-a000-00003286190c', 'multiple_choice', 'Wie lautet das deutsche Wort für "meeting"?', '["die Besprechung","der Chef","das Gehalt","die Stelle"]', 'die Besprechung', 1, 7),
  ('00000000-0000-4000-a000-00003286190c', 'true_false', 'Im Deutschen werden alle Nomen großgeschrieben.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-00003286190c', 'multiple_choice', 'How do you say "please" in a restaurant in Germany?', '["Bitte","Danke","Tschüss","Hallo"]', 'Bitte', 1, 9),
  ('00000000-0000-4000-a000-00003286190c', 'fill_blank', 'Wo ___ (to live) du?', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 2, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, french_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-00003286190c', 'Ich arbeite bei Siemens.', 'I work at Siemens.', 'أعمل في سيمنز.', NULL, 'Used in Arbeit und Karriere', 'neutral', false, 1),
  ('00000000-0000-4000-a000-00003286190c', 'Können wir einen Termin vereinbaren?', 'Can we schedule a meeting?', 'هل يمكننا تحديد موعد؟', NULL, 'Used in Arbeit und Karriere', 'formal', false, 2),
  ('00000000-0000-4000-a000-00003286190c', 'Ich schicke Ihnen die Unterlagen per E-Mail.', 'I''ll send you the documents by email.', 'سأرسل لكم المستندات عبر البريد الإلكتروني.', NULL, 'Used in Arbeit und Karriere', 'formal', false, 3),
  ('00000000-0000-4000-a000-00003286190c', 'Vielen Dank für Ihre Unterstützung!', 'Thank you very much for your support!', 'شكراً جزيلاً لدعمكم!', NULL, 'Used in Arbeit und Karriere', 'formal', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-00003286190c', 'der der Beruf (die Berufe)', 'profession — المهنة', 'noun', 'vocabulary', 1),
  ('00000000-0000-4000-a000-00003286190c', 'die die Firma (die Firmen)', 'company — الشركة', 'noun', 'vocabulary', 2),
  ('00000000-0000-4000-a000-00003286190c', 'der der Kollege (die Kollegen)', 'colleague — الزميل', 'noun', 'vocabulary', 3),
  ('00000000-0000-4000-a000-00003286190c', 'das das Büro (die Büros)', 'office — المكتب', 'noun', 'vocabulary', 4),
  ('00000000-0000-4000-a000-00003286190c', 'die die Besprechung (die Besprechungen)', 'meeting — الاجتماع', 'noun', 'vocabulary', 5),
  ('00000000-0000-4000-a000-00003286190c', 'der der Chef (die Chefs)', 'boss — المدير', 'noun', 'vocabulary', 6),
  ('00000000-0000-4000-a000-00003286190c', 'das das Gehalt (die Gehälter)', 'salary — الراتب', 'noun', 'vocabulary', 7),
  ('00000000-0000-4000-a000-00003286190c', 'die die Stelle (die Stellen)', 'position — الوظيفة', 'noun', 'vocabulary', 8),
  ('00000000-0000-4000-a000-00003286190c', 'die die Schule (die Schulen)', 'school — المدرسة', 'noun', 'vocabulary', 9),
  ('00000000-0000-4000-a000-00003286190c', 'der der Lehrer (die Lehrer)', 'teacher — المعلم', 'noun', 'vocabulary', 10),
  ('00000000-0000-4000-a000-00003286190c', 'der der Student (die Studenten)', 'student — الطالب', 'noun', 'vocabulary', 11),
  ('00000000-0000-4000-a000-00003286190c', 'die die Universität (die Universitäten)', 'university — الجامعة', 'noun', 'vocabulary', 12),
  ('00000000-0000-4000-a000-00003286190c', 'der der Kurs (die Kurse)', 'course — الدورة', 'noun', 'vocabulary', 13),
  ('00000000-0000-4000-a000-00003286190c', 'die die Prüfung (die Prüfungen)', 'exam — الامتحان', 'noun', 'vocabulary', 14),
  ('00000000-0000-4000-a000-00003286190c', 'das das Studium', 'studies — الدراسة الجامعية', 'noun', 'vocabulary', 15),
  ('00000000-0000-4000-a000-00003286190c', 'Ich denke, dass er recht hat.', 'I think that he is right.', 'Nebensätze mit "dass", "weil", "obwohl" (Subordinate Clauses)', 'grammar', 16),
  ('00000000-0000-4000-a000-00003286190c', 'Er lernt Deutsch, weil er in Berlin studiert.', 'He learns German because he studies in Berlin.', 'Nebensätze mit "dass", "weil", "obwohl" (Subordinate Clauses)', 'grammar', 17),
  ('00000000-0000-4000-a000-00003286190c', 'Obwohl es regnet, gehe ich spazieren.', 'Although it is raining, I go for a walk.', 'Nebensätze mit "dass", "weil", "obwohl" (Subordinate Clauses)', 'grammar', 18);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, french_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-00003286190c', 'Test: Arbeit und Karriere — Leseübung', 'In der heutigen Arbeitswelt verändern sich die Anforderungen ständig. Immer mehr Berufe erfordern digitale Kompetenzen. Wer im Beruf erfolgreich sein möchte, sollte sich kontinuierlich weiterbilden. In Deutschland gibt es viele Möglichkeiten zur beruflichen Weiterbildung, zum Beispiel über die Arbeitsagentur oder die Industrie- und Handelskammer. Auch ein Studium neben dem Beruf wird immer beliebter. Viele Unternehmen unterstützen ihre Mitarbeiter bei der Weiterbildung durch flexible Arbeitszeiten oder finanzielle Zuschüsse.', 'In today''s working world, requirements are constantly changing. More and more professions require digital skills. Anyone who wants to be successful in their career should continuously educate themselves. In Germany there are many opportunities for professional development, for example through the employment agency or the Chamber of Industry and Commerce. Studying alongside work is also becoming increasingly popular. Many companies support their employees in further training through flexible working hours or financial subsidies.', 'في عالم العمل اليوم تتغير المتطلبات باستمرار. المزيد والمزيد من المهن تتطلب مهارات رقمية. من يريد النجاح في مهنته يجب أن يواصل تعليمه. في ألمانيا هناك فرص كثيرة للتطوير المهني، مثلاً عبر وكالة العمل أو غرفة الصناعة والتجارة. الدراسة إلى جانب العمل أصبحت أيضاً أكثر شعبية. العديد من الشركات تدعم موظفيها في التدريب المستمر من خلال ساعات عمل مرنة أو إعانات مالية.', NULL, 67, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, french_translation, duration_seconds, speaker_count, scenario) values
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

[Chef]: نعم، فكرة جيدة. ولا تنسوا المستندات.', '[Chef]: 

[Angestellter]: 

[Chef]: 

[Angestellter]: 

[Chef]: ', 60, 2, 'Arbeit und Karriere');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-00003286190c', '🔊 Sprechen: Test: Arbeit und Karriere', 'Discussion: You attend a German Stammtisch (weekly meetup). Discuss Module Test with the group. Express your opinion, agree/disagree, ask follow-up questions. Try to keep the conversation flowing for 2 minutes.', 'Module Test', ARRAY['Use discourse markers (also, jedoch, außerdem)','React naturally: "Ach so!", "Echt?", "Das stimmt!"','Paraphrase when you don''t know a word']::text[], ARRAY['der Beruf','die Firma','der Kollege','das Büro','die Besprechung','der Chef','das Gehalt','die Stelle']::text[], 60, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-00003286190c', '✏️ Schreiben: Test: Arbeit und Karriere', 'Write a formal letter (200-250 words) to your German teacher explaining what you learned about "Module Test". Include: what surprised you, what was similar/different to your culture, and what you want to learn next. Use present_tense correctly.', ARRAY['Use paragraph breaks for structure','Connect ideas with "außerdem", "deshalb", "jedoch"','Check your verb position in Nebensätze']::text[], ARRAY['der Beruf','die Firma','der Kollege','das Büro','die Besprechung','der Chef','das Gehalt','die Stelle']::text[], ARRAY['Sentence structure','Vocabulary usage']::text[], 150, 250, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00003286190c', 'Test: Arbeit und Karriere — Roleplay', 'Module Test', 'Student', 'Teacher', 'Practice conversation about Module Test', 'Hallo! Lass uns über dieses Thema sprechen.', 'intermediate', 1, ARRAY['der Beruf','die Firma','der Kollege','das Büro','die Besprechung','der Chef','das Gehalt','die Stelle']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00003286190c', 'Test: Arbeit und Karriere — Advanced Roleplay', 'Module Test', 'Customer', 'Assistant', 'Extended conversation about Module Test', 'Guten Tag! Wie kann ich Ihnen helfen?', 'intermediate', 2, ARRAY['der Beruf','die Firma','der Kollege','das Büro','die Besprechung','der Chef','das Gehalt','die Stelle']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-00003286190c', 'Test: Arbeit und Karriere — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Test: Arbeit und Karriere".', 'Creative practice for Module Test', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-00003286190c', '📚 Hausaufgabe: Test: Arbeit und Karriere', 'Complete these tasks to reinforce "Test: Arbeit und Karriere".', 'mixed', '[{"description":"Create 10 flashcards from this lesson''s vocabulary — write German on one side, Arabic on the other. Test yourself 3 times."},{"description":"Write 6 sentences about Module Test: 2 statements, 2 questions, 2 negations — all using present_tense."},{"description":"Record yourself reading the dialogue aloud. Listen to the recording and note 3 things to improve."},{"description":"Find 3 real German websites, videos, or articles about Module Test. Note 5 new words you discovered."}]', 50, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-00003286190c', '🎯 Excellent progress! This lesson covered Module Test (75 vocabulary items) and present_tense. You developed reading, listening, speaking, and writing skills in the context of work. Focus on your common mistakes area for maximum improvement.', '["75 vocabulary items about Module Test","present_tense — grammar explanation and practice","Reading comprehension: text about Module Test","Listening comprehension: dialogue about Module Test","Speaking practice: roleplay/discussion about Module Test","Writing task: text about Module Test"]', '[{"title":"Test: Arbeit und Karriere Review","summary":"present_tense — the main grammar focus. Focus on using this structure naturally in conversations and writing."}]', ARRAY['der Beruf (profession)','die Firma (company)','der Kollege (colleague)','das Büro (office)','die Besprechung (meeting)']::text[], ARRAY['Don''t translate from Arabic word-for-word — German has different sentence structure','Learn every noun with its article: NEVER learn "Tisch" alone, always "der Tisch"','Watch out for verb position in Nebensätze']::text[], ARRAY['Practice 15-20 minutes daily — consistency beats intensity','Speak out loud: German pronunciation needs muscle memory','Use the new vocabulary within 24 hours or you''ll forget it','Watch German YouTube videos about Module Test for authentic input']::text[]);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00003286190c', 'Pronunciation: Intonation and sentence melody', 'German sentences have a falling intonation at the end of statements. Questions starting with a verb rise at the end. W-questions fall at the end. Emphasise the stressed syllable — German stresses the first syllable of the root.

Common mistake for Arabic speakers: Arabic speakers often put stress on the wrong syllable. Remember: German root stress is usually on the first syllable.', '[]', '[{"german":"warum","arabic":"","english":"","phonetic":"/vaˈrʊm/"},{"german":"deshalb","arabic":"","english":"","phonetic":"/dɛsˈhalp/"}]', '[]', 10);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00003286190c', 'translation', 'Translate to German: "I use the word "profession" in a sentence about Module Test."', '[]', 'Was ist dein Beruf?', 'Use der  "der Beruf" with the correct present_tense form.', 1, 40);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00003286190c', 'translation', 'Translate to German: "I use the word "company" in a sentence about Module Test."', '[]', 'Die Firma ist in Berlin.', 'Use die  "die Firma" with the correct present_tense form.', 1, 41);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00003286190c', 'translation', 'Translate to German: "I use the word "colleague" in a sentence about Module Test."', '[]', 'Mein Kollege hilft mir.', 'Use der  "der Kollege" with the correct present_tense form.', 1, 42);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00003286190c', 'Culture: 🇩🇪 Deutsche Kultur: Module Test', 'Module Test in Germany has specific cultural nuances that differ from Arabic-speaking countries. Germans tend to separate their private and professional lives strictly. When dealing with Module Test in a professional context, use formal register and prepare factual arguments. Emotional appeals are less effective than logical reasoning.

لدى Module Test في ألمانيا فروق ثقافية دقيقة تختلف عن البلدان العربية. الألمان يفصلون بين حياتهم الخاصة والمهنية بشكل صارم.', '["Tip: Always use \"Sie\" (formal) with strangers and colleagues","Tip: Germans appreciate punctuality — arrive 5 minutes early","Tip: Direct feedback is a sign of respect, not criticism","Tip: Prepare factual arguments, not emotional appeals"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00003286190c', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Addressing colleagues with \"du\" immediately","correction":"Use \"Sie\" until explicitly invited to use \"du\"","explanation":"Arabic uses \"anta/anti\" universally. German has strict formal/informal distinction at work."},{"mistake":"Putting the verb at the end in main clauses","correction":"Verb stays in position 2 in main clauses","explanation":"Subordinate clause word order interferes"}]', 30);

  -- Module 3: Medien und Kommunikation
  insert into public.course_modules (id, level_id, title, description, objectives, order_index, estimated_hours, is_published)
  values ('00000000-0000-4000-a000-000039c2eae1', 'B1', 'Medien und Kommunikation', 'Discuss media, technology, and modern communication.', '["Discuss news and media","Talk about technology and social media","Use Relativsätze with nominative and accusative","Express opinions and arguments","Write forum posts and comments"]', 3, 5, true)
  on conflict (id) do nothing;

  -- Lesson 1: Medien: Zeitung, Radio, Internet (L-B1-03-01)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-00003285a4b2', '00000000-0000-4000-a000-000039c2eae1', 'Medien: Zeitung, Radio, Internet', 'Learn media and journalism vocabulary.', 'Media', 'vocabulary', '["Understand and use 75 key vocabulary words about Media","Apply present_tense correctly in sentences","Read and comprehend a text about Media","Listen and understand a natural dialogue about Media","Speak about Media with confidence","Write a short text about Media using new vocabulary"]', 45, 1, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, french_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-00003285a4b2', 'die Zeitung', 'الجريدة', 'newspaper', NULL, 'die', 'die Zeitungen', 'noun', 'Ich lese die Zeitung.', 'I read the newspaper.', 'A2', 1),
  ('00000000-0000-4000-a000-00003285a4b2', 'das Internet', 'الإنترنت', 'internet', NULL, 'das', NULL, 'noun', 'Das Internet ist schnell.', 'The internet is fast.', 'A2', 2),
  ('00000000-0000-4000-a000-00003285a4b2', 'der Artikel', 'المقال', 'article', NULL, 'der', 'die Artikel', 'noun', 'Der Artikel ist interessant.', 'The article is interesting.', 'B1', 3),
  ('00000000-0000-4000-a000-00003285a4b2', 'die Nachricht', 'الخبر', 'news', NULL, 'die', 'die Nachrichten', 'noun', 'Ich sehe die Nachrichten.', 'I watch the news.', 'A2', 4),
  ('00000000-0000-4000-a000-00003285a4b2', 'das Radio', 'الراديو', 'radio', NULL, 'das', 'die Radios', 'noun', 'Ich höre Radio.', 'I listen to the radio.', 'A2', 5),
  ('00000000-0000-4000-a000-00003285a4b2', 'das Fernsehen', 'التلفاز', 'television', NULL, 'das', NULL, 'noun', 'Das Fernsehen läuft.', 'The television is on.', 'A2', 6),
  ('00000000-0000-4000-a000-00003285a4b2', 'die Zeitschrift', 'المجلة', 'magazine', NULL, 'die', 'die Zeitschriften', 'noun', 'Die Zeitschrift erscheint monatlich.', 'The magazine is published monthly.', 'B1', 7),
  ('00000000-0000-4000-a000-00003285a4b2', 'der Journalist', 'الصحفي', 'journalist', NULL, 'der', 'die Journalisten', 'noun', 'Der Journalist schreibt einen Artikel.', 'The journalist writes an article.', 'B1', 8),
  ('00000000-0000-4000-a000-00003285a4b2', 'der Beruf', 'المهنة', 'profession', NULL, 'der', 'die Berufe', 'noun', 'Was ist dein Beruf?', 'What is your profession?', 'A1', 9),
  ('00000000-0000-4000-a000-00003285a4b2', 'die Firma', 'الشركة', 'company', NULL, 'die', 'die Firmen', 'noun', 'Die Firma ist in Berlin.', 'The company is in Berlin.', 'A1', 10),
  ('00000000-0000-4000-a000-00003285a4b2', 'der Kollege', 'الزميل', 'colleague', NULL, 'der', 'die Kollegen', 'noun', 'Mein Kollege hilft mir.', 'My colleague helps me.', 'A1', 11),
  ('00000000-0000-4000-a000-00003285a4b2', 'das Büro', 'المكتب', 'office', NULL, 'das', 'die Büros', 'noun', 'Das Büro ist im dritten Stock.', 'The office is on the third floor.', 'A1', 12),
  ('00000000-0000-4000-a000-00003285a4b2', 'die Besprechung', 'الاجتماع', 'meeting', NULL, 'die', 'die Besprechungen', 'noun', 'Wir haben eine Besprechung.', 'We have a meeting.', 'B1', 13),
  ('00000000-0000-4000-a000-00003285a4b2', 'der Chef', 'المدير', 'boss', NULL, 'der', 'die Chefs', 'noun', 'Mein Chef ist freundlich.', 'My boss is friendly.', 'A1', 14),
  ('00000000-0000-4000-a000-00003285a4b2', 'das Gehalt', 'الراتب', 'salary', NULL, 'das', 'die Gehälter', 'noun', 'Das Gehalt ist gut.', 'The salary is good.', 'B1', 15),
  ('00000000-0000-4000-a000-00003285a4b2', 'die Stelle', 'الوظيفة', 'position', NULL, 'die', 'die Stellen', 'noun', 'Ich suche eine neue Stelle.', 'I am looking for a new position.', 'B1', 16),
  ('00000000-0000-4000-a000-00003285a4b2', 'die Schule', 'المدرسة', 'school', NULL, 'die', 'die Schulen', 'noun', 'Die Kinder gehen zur Schule.', 'The children go to school.', 'A1', 17),
  ('00000000-0000-4000-a000-00003285a4b2', 'der Lehrer', 'المعلم', 'teacher', NULL, 'der', 'die Lehrer', 'noun', 'Der Lehrer erklärt die Grammatik.', 'The teacher explains the grammar.', 'A1', 18),
  ('00000000-0000-4000-a000-00003285a4b2', 'der Student', 'الطالب', 'student', NULL, 'der', 'die Studenten', 'noun', 'Der Student lernt Deutsch.', 'The student learns German.', 'A1', 19),
  ('00000000-0000-4000-a000-00003285a4b2', 'die Universität', 'الجامعة', 'university', NULL, 'die', 'die Universitäten', 'noun', 'Die Universität ist alt.', 'The university is old.', 'B1', 20),
  ('00000000-0000-4000-a000-00003285a4b2', 'der Kurs', 'الدورة', 'course', NULL, 'der', 'die Kurse', 'noun', 'Der Kurs kostet 200 Euro.', 'The course costs 200 euros.', 'A2', 21),
  ('00000000-0000-4000-a000-00003285a4b2', 'die Prüfung', 'الامتحان', 'exam', NULL, 'die', 'die Prüfungen', 'noun', 'Die Prüfung ist schwer.', 'The exam is difficult.', 'B1', 22),
  ('00000000-0000-4000-a000-00003285a4b2', 'das Studium', 'الدراسة الجامعية', 'studies', NULL, 'das', NULL, 'noun', 'Mein Studium dauert vier Jahre.', 'My studies take four years.', 'B1', 23),
  ('00000000-0000-4000-a000-00003285a4b2', 'lernen', 'يتعلم', 'to learn', NULL, NULL, NULL, 'verb', 'Ich lerne Deutsch.', 'I learn German.', 'A1', 24),
  ('00000000-0000-4000-a000-00003285a4b2', 'die Gesellschaft', 'المجتمع', 'society', NULL, 'die', NULL, 'noun', 'Die Gesellschaft verändert sich.', 'Society is changing.', 'B1', 25),
  ('00000000-0000-4000-a000-00003285a4b2', 'die Politik', 'السياسة', 'politics', NULL, 'die', NULL, 'noun', 'Politik ist ein wichtiges Thema.', 'Politics is an important topic.', 'B1', 26),
  ('00000000-0000-4000-a000-00003285a4b2', 'die Integration', 'الاندماج', 'integration', NULL, 'die', NULL, 'noun', 'Integration ist wichtig.', 'Integration is important.', 'B1', 27),
  ('00000000-0000-4000-a000-00003285a4b2', 'die Kultur', 'الثقافة', 'culture', NULL, 'die', NULL, 'noun', 'Die deutsche Kultur ist vielfältig.', 'German culture is diverse.', 'A2', 28),
  ('00000000-0000-4000-a000-00003285a4b2', 'der Bürger', 'المواطن', 'citizen', NULL, 'der', 'die Bürger', 'noun', 'Die Bürger wählen.', 'The citizens vote.', 'B1', 29),
  ('00000000-0000-4000-a000-00003285a4b2', 'die Freiheit', 'الحرية', 'freedom', NULL, 'die', NULL, 'noun', 'Freiheit ist ein Grundrecht.', 'Freedom is a basic right.', 'B1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00003285a4b2', 'Adjektivdeklination (Adjective Declension) / تصريف الصفات', 'When an adjective comes before a noun, it must agree in gender, number, and case. There are three declension patterns: after "der" words (weak), after "ein" words (mixed), and without article (strong). The endings depend on which information the article already provides.', '[{"rule":"Weak (after der/die/das): -e or -en","note":"der gute Mann, die gute Frau, das gute Kind, die guten Leute"},{"rule":"Mixed (after ein/mein/kein): article ending + adjective ending","note":"ein guter Mann, eine gute Frau, ein gutes Kind, keine guten Leute"}]', '[{"german":"Der große Hund gehört der alten Frau.","arabic":"الكلب الكبير ملك للمرأة العجوز.","english":"The big dog belongs to the old woman."},{"german":"Ein interessantes Buch liegt auf dem Tisch.","arabic":"كتاب مثير للاهتمام على الطاولة.","english":"An interesting book is on the table."}]', '[{"mistake":"Der groß Hund (no ending on adjective)","correction":"Der große Hund","explanation":"Adjectives before nouns MUST have an ending in German."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00003285a4b2', 'multiple_choice', 'Welches deutsche Wort bedeutet "newspaper"?', '["die Zeitung","die Nachricht","das Internet","das Radio"]', 'die Zeitung', '"newspaper" = "die Zeitung" in German. Article: die Plural: die Zeitungen', 1, 1),
  ('00000000-0000-4000-a000-00003285a4b2', 'multiple_choice', 'Welches deutsche Wort bedeutet "internet"?', '["die Zeitung","das Internet","das Radio","der Artikel"]', 'das Internet', '"internet" = "das Internet" in German. Article: das ', 1, 2),
  ('00000000-0000-4000-a000-00003285a4b2', 'multiple_choice', 'Welches deutsche Wort bedeutet "article"?', '["das Radio","die Nachricht","das Internet","die Zeitung"]', 'der Artikel', '"article" = "der Artikel" in German. Article: der Plural: die Artikel', 1, 3),
  ('00000000-0000-4000-a000-00003285a4b2', 'multiple_choice', 'Welches deutsche Wort bedeutet "news"?', '["die Zeitung","das Internet","der Artikel","das Radio"]', 'die Nachricht', '"news" = "die Nachricht" in German. Article: die Plural: die Nachrichten', 1, 4),
  ('00000000-0000-4000-a000-00003285a4b2', 'multiple_choice', 'Welches deutsche Wort bedeutet "radio"?', '["das Radio","der Artikel","die Zeitung","das Internet"]', 'das Radio', '"radio" = "das Radio" in German. Article: das Plural: die Radios', 1, 5),
  ('00000000-0000-4000-a000-00003285a4b2', 'fill_gap', 'Ergänze den Satz: Ich ___ gern über Media. (sprechen)', '["spreche","sprichst","spricht","sprechen"]', 'spreche', 'ich spreche gern = I like to speak. Stem: sprech- + e.', 2, 6),
  ('00000000-0000-4000-a000-00003285a4b2', 'translation', 'Übersetze ins Deutsche: "I am learning about Media."', '["Ich lerne über Media.","Ich lerne Media.","Lerne ich Media."]', 'Ich lerne über Media.', '"Ich lerne über..." = "I am learning about..."', 2, 7),
  ('00000000-0000-4000-a000-00003285a4b2', 'matching', 'Match: Which word pairs are correct?', '["die Zeitung - newspaper, das Internet - internet"]', 'Matched correctly', 'Each German word has a unique English equivalent.', 2, 8);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-00003285a4b2', 'multiple_choice', 'Was bedeutet "die Zeitung" auf Deutsch?', '["newspaper","to run","beautiful","yesterday"]', 'newspaper', 1, 1),
  ('00000000-0000-4000-a000-00003285a4b2', 'multiple_choice', 'Welcher Artikel gehört zu "das Internet"?', '["der","die","das","den"]', 'das', 1, 2),
  ('00000000-0000-4000-a000-00003285a4b2', 'true_false', 'Das Wort "der Artikel" gehört zum Thema Media.', '["True","False"]', 'True', 1, 3),
  ('00000000-0000-4000-a000-00003285a4b2', 'multiple_choice', 'Welcher Satz verwendet present_tense?', '["Der große Hund gehört der alten Frau.","Ein interessantes Buch liegt auf dem Tisch."]', 'Der große Hund gehört der alten Frau.', 2, 4),
  ('00000000-0000-4000-a000-00003285a4b2', 'true_false', ''Im Deutschen steht das Verb an zweiter Position im Hauptsatz.', '["True","False"]', 'True', 1, 5),
  ('00000000-0000-4000-a000-00003285a4b2', 'fill_blank', 'Complete: Ich ___ (news) Deutsch.', '["die Nachricht","lernt","lernst","lernen"]', 'lerne', 2, 6),
  ('00000000-0000-4000-a000-00003285a4b2', 'multiple_choice', 'Wie lautet das deutsche Wort für "radio"?', '["das Radio","das Fernsehen","die Zeitschrift","der Journalist"]', 'das Radio', 1, 7),
  ('00000000-0000-4000-a000-00003285a4b2', 'true_false', 'Im Deutschen werden alle Nomen großgeschrieben.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-00003285a4b2', 'multiple_choice', 'How do you say "please" in a restaurant in Germany?', '["Bitte","Danke","Tschüss","Hallo"]', 'Bitte', 1, 9),
  ('00000000-0000-4000-a000-00003285a4b2', 'fill_blank', 'Wo ___ (to live) du?', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 2, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, french_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-00003285a4b2', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', NULL, 'Used in Medien und Kommunikation', 'formal', false, 1),
  ('00000000-0000-4000-a000-00003285a4b2', 'Guten Tag!', 'Good day!', 'نهارك سعيد!', NULL, 'Used in Medien und Kommunikation', 'formal', false, 2),
  ('00000000-0000-4000-a000-00003285a4b2', 'Hallo, wie geht es Ihnen?', 'Hello, how are you?', 'مرحباً، كيف حالكم؟', NULL, 'Used in Medien und Kommunikation', 'formal', false, 3),
  ('00000000-0000-4000-a000-00003285a4b2', 'Schön, Sie kennenzulernen!', 'Nice to meet you!', 'سعيد بلقائكم!', NULL, 'Used in Medien und Kommunikation', 'formal', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-00003285a4b2', 'die die Zeitung (die Zeitungen)', 'newspaper — الجريدة', 'noun', 'vocabulary', 1),
  ('00000000-0000-4000-a000-00003285a4b2', 'das das Internet', 'internet — الإنترنت', 'noun', 'vocabulary', 2),
  ('00000000-0000-4000-a000-00003285a4b2', 'der der Artikel (die Artikel)', 'article — المقال', 'noun', 'vocabulary', 3),
  ('00000000-0000-4000-a000-00003285a4b2', 'die die Nachricht (die Nachrichten)', 'news — الخبر', 'noun', 'vocabulary', 4),
  ('00000000-0000-4000-a000-00003285a4b2', 'das das Radio (die Radios)', 'radio — الراديو', 'noun', 'vocabulary', 5),
  ('00000000-0000-4000-a000-00003285a4b2', 'das das Fernsehen', 'television — التلفاز', 'noun', 'vocabulary', 6),
  ('00000000-0000-4000-a000-00003285a4b2', 'die die Zeitschrift (die Zeitschriften)', 'magazine — المجلة', 'noun', 'vocabulary', 7),
  ('00000000-0000-4000-a000-00003285a4b2', 'der der Journalist (die Journalisten)', 'journalist — الصحفي', 'noun', 'vocabulary', 8),
  ('00000000-0000-4000-a000-00003285a4b2', 'der der Beruf (die Berufe)', 'profession — المهنة', 'noun', 'vocabulary', 9),
  ('00000000-0000-4000-a000-00003285a4b2', 'die die Firma (die Firmen)', 'company — الشركة', 'noun', 'vocabulary', 10),
  ('00000000-0000-4000-a000-00003285a4b2', 'der der Kollege (die Kollegen)', 'colleague — الزميل', 'noun', 'vocabulary', 11),
  ('00000000-0000-4000-a000-00003285a4b2', 'das das Büro (die Büros)', 'office — المكتب', 'noun', 'vocabulary', 12),
  ('00000000-0000-4000-a000-00003285a4b2', 'die die Besprechung (die Besprechungen)', 'meeting — الاجتماع', 'noun', 'vocabulary', 13),
  ('00000000-0000-4000-a000-00003285a4b2', 'der der Chef (die Chefs)', 'boss — المدير', 'noun', 'vocabulary', 14),
  ('00000000-0000-4000-a000-00003285a4b2', 'das das Gehalt (die Gehälter)', 'salary — الراتب', 'noun', 'vocabulary', 15),
  ('00000000-0000-4000-a000-00003285a4b2', 'Der große Hund gehört der alten Frau.', 'The big dog belongs to the old woman.', 'Adjektivdeklination (Adjective Declension)', 'grammar', 16),
  ('00000000-0000-4000-a000-00003285a4b2', 'Ein interessantes Buch liegt auf dem Tisch.', 'An interesting book is on the table.', 'Adjektivdeklination (Adjective Declension)', 'grammar', 17);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, french_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-00003285a4b2', 'Medien: Zeitung, Radio, Internet — Leseübung', 'Die Medienlandschaft in Deutschland ist vielfältig und frei. Es gibt öffentlich-rechtliche Sender wie ARD und ZDF sowie private Fernsehsender. Die bekanntesten deutschen Zeitungen sind die Süddeutsche Zeitung, die FAZ und die Bild-Zeitung. In den letzten Jahren haben soziale Medien wie TikTok und Instagram an Bedeutung gewonnen. Viele Jugendliche informieren sich hauptsächlich über soziale Netzwerke. Journalisten müssen sorgfältig recherchieren und verschiedene Quellen überprüfen, um Falschinformationen zu vermeiden.', 'The media landscape in Germany is diverse and free. There are public broadcasters like ARD and ZDF as well as private television stations. The best-known German newspapers are the Süddeutsche Zeitung, the FAZ and the Bild-Zeitung. In recent years, social media like TikTok and Instagram have gained importance. Many young people get their information mainly from social networks. Journalists must carefully research and verify different sources to avoid misinformation.', 'المشهد الإعلامي في ألمانيا متنوح ومستقل. هناك محطات البث العامة مثل ARD و ZDF بالإضافة إلى محطات تلفزيونية خاصة. أشهر الصحف الألمانية هي Süddeutsche Zeitung و FAZ و Bild-Zeitung. في السنوات الأخيرة اكتسبت وسائل التواصل الاجتماعي مثل TikTok و Instagram أهمية. كثير من الشباب يحصلون على معلوماتهم أساساً من الشبكات الاجتماعية. يجب على الصحفيين البحث بدقة والتحقق من المصادر المختلفة لتجنب المعلومات المضللة.', NULL, 66, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, french_translation, duration_seconds, speaker_count, scenario) values
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

[Lehrerin]: ممتاز! إلى الغد!', '[Lehrerin]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: ', 72, 2, 'Medien und Kommunikation');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-00003285a4b2', '🔊 Sprechen: Medien: Zeitung, Radio, Internet', 'Discussion: You attend a German Stammtisch (weekly meetup). Discuss Media with the group. Express your opinion, agree/disagree, ask follow-up questions. Try to keep the conversation flowing for 2 minutes.', 'Media', ARRAY['Use discourse markers (also, jedoch, außerdem)','React naturally: "Ach so!", "Echt?", "Das stimmt!"','Paraphrase when you don''t know a word']::text[], ARRAY['die Zeitung','das Internet','der Artikel','die Nachricht','das Radio','das Fernsehen','die Zeitschrift','der Journalist']::text[], 60, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-00003285a4b2', '✏️ Schreiben: Medien: Zeitung, Radio, Internet', 'Write a formal letter (200-250 words) to your German teacher explaining what you learned about "Media". Include: what surprised you, what was similar/different to your culture, and what you want to learn next. Use present_tense correctly.', ARRAY['Use paragraph breaks for structure','Connect ideas with "außerdem", "deshalb", "jedoch"','Check your verb position in Nebensätze']::text[], ARRAY['die Zeitung','das Internet','der Artikel','die Nachricht','das Radio','das Fernsehen','die Zeitschrift','der Journalist']::text[], ARRAY['Sentence structure','Vocabulary usage']::text[], 150, 250, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00003285a4b2', 'Medien: Zeitung, Radio, Internet — Roleplay', 'Media', 'Student', 'Teacher', 'Practice conversation about Media', 'Hallo! Lass uns über dieses Thema sprechen.', 'intermediate', 1, ARRAY['die Zeitung','das Internet','der Artikel','die Nachricht','das Radio','das Fernsehen','die Zeitschrift','der Journalist']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00003285a4b2', 'Medien: Zeitung, Radio, Internet — Advanced Roleplay', 'Media', 'Customer', 'Assistant', 'Extended conversation about Media', 'Guten Tag! Wie kann ich Ihnen helfen?', 'intermediate', 2, ARRAY['die Zeitung','das Internet','der Artikel','die Nachricht','das Radio','das Fernsehen','die Zeitschrift','der Journalist']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-00003285a4b2', 'Medien: Zeitung, Radio, Internet — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Medien: Zeitung, Radio, Internet".', 'Creative practice for Media', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-00003285a4b2', '📚 Hausaufgabe: Medien: Zeitung, Radio, Internet', 'Complete these tasks to reinforce "Medien: Zeitung, Radio, Internet".', 'mixed', '[{"description":"Create 10 flashcards from this lesson''s vocabulary — write German on one side, Arabic on the other. Test yourself 3 times."},{"description":"Write 6 sentences about Media: 2 statements, 2 questions, 2 negations — all using present_tense."},{"description":"Record yourself reading the dialogue aloud. Listen to the recording and note 3 things to improve."},{"description":"Find 3 real German websites, videos, or articles about Media. Note 5 new words you discovered."}]', 50, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-00003285a4b2', '🎯 Excellent progress! This lesson covered Media (75 vocabulary items) and present_tense. You developed reading, listening, speaking, and writing skills in the context of media. Focus on your common mistakes area for maximum improvement.', '["75 vocabulary items about Media","present_tense — grammar explanation and practice","Reading comprehension: text about Media","Listening comprehension: dialogue about Media","Speaking practice: roleplay/discussion about Media","Writing task: text about Media"]', '[{"title":"Medien: Zeitung, Radio, Internet Review","summary":"present_tense — the main grammar focus. Focus on using this structure naturally in conversations and writing."}]', ARRAY['die Zeitung (newspaper)','das Internet (internet)','der Artikel (article)','die Nachricht (news)','das Radio (radio)']::text[], ARRAY['Don''t translate from Arabic word-for-word — German has different sentence structure','Learn every noun with its article: NEVER learn "Tisch" alone, always "der Tisch"','Watch out for verb position in Nebensätze']::text[], ARRAY['Practice 15-20 minutes daily — consistency beats intensity','Speak out loud: German pronunciation needs muscle memory','Use the new vocabulary within 24 hours or you''ll forget it','Watch German YouTube videos about Media for authentic input']::text[]);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00003285a4b2', 'Pronunciation: Intonation and sentence melody', 'German sentences have a falling intonation at the end of statements. Questions starting with a verb rise at the end. W-questions fall at the end. Emphasise the stressed syllable — German stresses the first syllable of the root.

Common mistake for Arabic speakers: Arabic speakers often put stress on the wrong syllable. Remember: German root stress is usually on the first syllable.', '[]', '[{"german":"warum","arabic":"","english":"","phonetic":"/vaˈrʊm/"},{"german":"deshalb","arabic":"","english":"","phonetic":"/dɛsˈhalp/"}]', '[]', 10);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00003285a4b2', 'translation', 'Translate to German: "I use the word "newspaper" in a sentence about Media."', '[]', 'Ich lese die Zeitung.', 'Use die  "die Zeitung" with the correct present_tense form.', 1, 40);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00003285a4b2', 'translation', 'Translate to German: "I use the word "internet" in a sentence about Media."', '[]', 'Das Internet ist schnell.', 'Use das  "das Internet" with the correct present_tense form.', 1, 41);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00003285a4b2', 'translation', 'Translate to German: "I use the word "article" in a sentence about Media."', '[]', 'Der Artikel ist interessant.', 'Use der  "der Artikel" with the correct present_tense form.', 1, 42);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00003285a4b2', 'Culture: 🇩🇪 Deutsche Kultur: Media', 'Media in Germany has specific cultural nuances that differ from Arabic-speaking countries. Germans tend to separate their private and professional lives strictly. When dealing with Media in a professional context, use formal register and prepare factual arguments. Emotional appeals are less effective than logical reasoning.

لدى Media في ألمانيا فروق ثقافية دقيقة تختلف عن البلدان العربية. الألمان يفصلون بين حياتهم الخاصة والمهنية بشكل صارم.', '["Tip: Always use \"Sie\" (formal) with strangers and colleagues","Tip: Germans appreciate punctuality — arrive 5 minutes early","Tip: Direct feedback is a sign of respect, not criticism","Tip: Prepare factual arguments, not emotional appeals"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00003285a4b2', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Incorrect preposition usage after verbs","correction":"Learn which preposition each verb requires (sich freuen auf, warten auf, denken an)","explanation":"Arabic and German have different sentence structures. Arabic is VSO, German is SVO with verb in position 2."},{"mistake":"Putting the verb at the end in main clauses","correction":"Verb stays in position 2 in main clauses","explanation":"Subordinate clause word order interferes"}]', 30);

  -- Lesson 2: Soziale Medien und Technologie (L-B1-03-02)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-00003285a4b1', '00000000-0000-4000-a000-000039c2eae1', 'Soziale Medien und Technologie', 'Discuss social media, apps, and technology.', 'Social Media & Technology', 'vocabulary', '["Understand and use 75 key vocabulary words about Social Media & Technology","Apply present_tense correctly in sentences","Read and comprehend a text about Social Media & Technology","Listen and understand a natural dialogue about Social Media & Technology","Speak about Social Media & Technology with confidence","Write a short text about Social Media & Technology using new vocabulary"]', 45, 2, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, french_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-00003285a4b1', 'die Zeitung', 'الجريدة', 'newspaper', NULL, 'die', 'die Zeitungen', 'noun', 'Ich lese die Zeitung.', 'I read the newspaper.', 'A2', 1),
  ('00000000-0000-4000-a000-00003285a4b1', 'das Internet', 'الإنترنت', 'internet', NULL, 'das', NULL, 'noun', 'Das Internet ist schnell.', 'The internet is fast.', 'A2', 2),
  ('00000000-0000-4000-a000-00003285a4b1', 'der Artikel', 'المقال', 'article', NULL, 'der', 'die Artikel', 'noun', 'Der Artikel ist interessant.', 'The article is interesting.', 'B1', 3),
  ('00000000-0000-4000-a000-00003285a4b1', 'die Nachricht', 'الخبر', 'news', NULL, 'die', 'die Nachrichten', 'noun', 'Ich sehe die Nachrichten.', 'I watch the news.', 'A2', 4),
  ('00000000-0000-4000-a000-00003285a4b1', 'das Radio', 'الراديو', 'radio', NULL, 'das', 'die Radios', 'noun', 'Ich höre Radio.', 'I listen to the radio.', 'A2', 5),
  ('00000000-0000-4000-a000-00003285a4b1', 'das Fernsehen', 'التلفاز', 'television', NULL, 'das', NULL, 'noun', 'Das Fernsehen läuft.', 'The television is on.', 'A2', 6),
  ('00000000-0000-4000-a000-00003285a4b1', 'die Zeitschrift', 'المجلة', 'magazine', NULL, 'die', 'die Zeitschriften', 'noun', 'Die Zeitschrift erscheint monatlich.', 'The magazine is published monthly.', 'B1', 7),
  ('00000000-0000-4000-a000-00003285a4b1', 'der Journalist', 'الصحفي', 'journalist', NULL, 'der', 'die Journalisten', 'noun', 'Der Journalist schreibt einen Artikel.', 'The journalist writes an article.', 'B1', 8),
  ('00000000-0000-4000-a000-00003285a4b1', 'der Beruf', 'المهنة', 'profession', NULL, 'der', 'die Berufe', 'noun', 'Was ist dein Beruf?', 'What is your profession?', 'A1', 9),
  ('00000000-0000-4000-a000-00003285a4b1', 'die Firma', 'الشركة', 'company', NULL, 'die', 'die Firmen', 'noun', 'Die Firma ist in Berlin.', 'The company is in Berlin.', 'A1', 10),
  ('00000000-0000-4000-a000-00003285a4b1', 'der Kollege', 'الزميل', 'colleague', NULL, 'der', 'die Kollegen', 'noun', 'Mein Kollege hilft mir.', 'My colleague helps me.', 'A1', 11),
  ('00000000-0000-4000-a000-00003285a4b1', 'das Büro', 'المكتب', 'office', NULL, 'das', 'die Büros', 'noun', 'Das Büro ist im dritten Stock.', 'The office is on the third floor.', 'A1', 12),
  ('00000000-0000-4000-a000-00003285a4b1', 'die Besprechung', 'الاجتماع', 'meeting', NULL, 'die', 'die Besprechungen', 'noun', 'Wir haben eine Besprechung.', 'We have a meeting.', 'B1', 13),
  ('00000000-0000-4000-a000-00003285a4b1', 'der Chef', 'المدير', 'boss', NULL, 'der', 'die Chefs', 'noun', 'Mein Chef ist freundlich.', 'My boss is friendly.', 'A1', 14),
  ('00000000-0000-4000-a000-00003285a4b1', 'das Gehalt', 'الراتب', 'salary', NULL, 'das', 'die Gehälter', 'noun', 'Das Gehalt ist gut.', 'The salary is good.', 'B1', 15),
  ('00000000-0000-4000-a000-00003285a4b1', 'die Stelle', 'الوظيفة', 'position', NULL, 'die', 'die Stellen', 'noun', 'Ich suche eine neue Stelle.', 'I am looking for a new position.', 'B1', 16),
  ('00000000-0000-4000-a000-00003285a4b1', 'die Schule', 'المدرسة', 'school', NULL, 'die', 'die Schulen', 'noun', 'Die Kinder gehen zur Schule.', 'The children go to school.', 'A1', 17),
  ('00000000-0000-4000-a000-00003285a4b1', 'der Lehrer', 'المعلم', 'teacher', NULL, 'der', 'die Lehrer', 'noun', 'Der Lehrer erklärt die Grammatik.', 'The teacher explains the grammar.', 'A1', 18),
  ('00000000-0000-4000-a000-00003285a4b1', 'der Student', 'الطالب', 'student', NULL, 'der', 'die Studenten', 'noun', 'Der Student lernt Deutsch.', 'The student learns German.', 'A1', 19),
  ('00000000-0000-4000-a000-00003285a4b1', 'die Universität', 'الجامعة', 'university', NULL, 'die', 'die Universitäten', 'noun', 'Die Universität ist alt.', 'The university is old.', 'B1', 20),
  ('00000000-0000-4000-a000-00003285a4b1', 'der Kurs', 'الدورة', 'course', NULL, 'der', 'die Kurse', 'noun', 'Der Kurs kostet 200 Euro.', 'The course costs 200 euros.', 'A2', 21),
  ('00000000-0000-4000-a000-00003285a4b1', 'die Prüfung', 'الامتحان', 'exam', NULL, 'die', 'die Prüfungen', 'noun', 'Die Prüfung ist schwer.', 'The exam is difficult.', 'B1', 22),
  ('00000000-0000-4000-a000-00003285a4b1', 'das Studium', 'الدراسة الجامعية', 'studies', NULL, 'das', NULL, 'noun', 'Mein Studium dauert vier Jahre.', 'My studies take four years.', 'B1', 23),
  ('00000000-0000-4000-a000-00003285a4b1', 'lernen', 'يتعلم', 'to learn', NULL, NULL, NULL, 'verb', 'Ich lerne Deutsch.', 'I learn German.', 'A1', 24),
  ('00000000-0000-4000-a000-00003285a4b1', 'die Gesellschaft', 'المجتمع', 'society', NULL, 'die', NULL, 'noun', 'Die Gesellschaft verändert sich.', 'Society is changing.', 'B1', 25),
  ('00000000-0000-4000-a000-00003285a4b1', 'die Politik', 'السياسة', 'politics', NULL, 'die', NULL, 'noun', 'Politik ist ein wichtiges Thema.', 'Politics is an important topic.', 'B1', 26),
  ('00000000-0000-4000-a000-00003285a4b1', 'die Integration', 'الاندماج', 'integration', NULL, 'die', NULL, 'noun', 'Integration ist wichtig.', 'Integration is important.', 'B1', 27),
  ('00000000-0000-4000-a000-00003285a4b1', 'die Kultur', 'الثقافة', 'culture', NULL, 'die', NULL, 'noun', 'Die deutsche Kultur ist vielfältig.', 'German culture is diverse.', 'A2', 28),
  ('00000000-0000-4000-a000-00003285a4b1', 'der Bürger', 'المواطن', 'citizen', NULL, 'der', 'die Bürger', 'noun', 'Die Bürger wählen.', 'The citizens vote.', 'B1', 29),
  ('00000000-0000-4000-a000-00003285a4b1', 'die Freiheit', 'الحرية', 'freedom', NULL, 'die', NULL, 'noun', 'Freiheit ist ein Grundrecht.', 'Freedom is a basic right.', 'B1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00003285a4b1', 'Konjunktiv II: Höfliche Bitten und irreale Sätze (Subjunctive for Politeness) / صيغة الشرط الثانية: الطلبات المهذبة والجمل غير الواقعية', 'Konjunktiv II is used for polite requests (Ich hätte gern...), unreal situations (Wenn ich Zeit hätte...), and wishes (Ich wünschte, ich wäre...). For most verbs, use "würde + infinitive". Only a few common verbs have their own subjunctive form: hätte (hätten), wäre (wären), könnte (könnten).', '[{"rule":"würde + Infinitiv (most verbs)","note":"Ich würde gern kommen. (I would like to come.)"},{"rule":"hätte (haben), wäre (sein), könnte (können)","note":"Ich hätte gern einen Kaffee. (I would like a coffee.)"},{"rule":"Wenn... dann... (if... then...)","note":"Wenn ich Zeit hätte, würde ich reisen. (If I had time, I would travel.)"}]', '[{"german":"Ich hätte gern einen Kaffee, bitte.","arabic":"أود فنجان قهوة من فضلك.","english":"I would like a coffee, please."},{"german":"Wenn ich mehr Zeit hätte, würde ich Deutsch lernen.","arabic":"لو كان لدي وقت أكثر، لتعلمت الألمانية.","english":"If I had more time, I would learn German."},{"german":"Könnten Sie mir bitte helfen?","arabic":"هل يمكنكم مساعدتي من فضلكم؟","english":"Could you please help me?"}]', '[{"mistake":"Ich will einen Kaffee (too direct in restaurant)","correction":"Ich hätte gern einen Kaffee.","explanation":"In German restaurants, use Konjunktiv II to be polite, not \"ich will\"."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00003285a4b1', 'multiple_choice', 'Welches deutsche Wort bedeutet "newspaper"?', '["die Zeitung","das Internet","der Artikel","die Nachricht"]', 'die Zeitung', '"newspaper" = "die Zeitung" in German. Article: die Plural: die Zeitungen', 1, 1),
  ('00000000-0000-4000-a000-00003285a4b1', 'multiple_choice', 'Welches deutsche Wort bedeutet "internet"?', '["das Radio","der Artikel","die Zeitung","das Internet"]', 'das Internet', '"internet" = "das Internet" in German. Article: das ', 1, 2),
  ('00000000-0000-4000-a000-00003285a4b1', 'multiple_choice', 'Welches deutsche Wort bedeutet "article"?', '["der Artikel","die Nachricht","die Zeitung","das Radio"]', 'der Artikel', '"article" = "der Artikel" in German. Article: der Plural: die Artikel', 1, 3),
  ('00000000-0000-4000-a000-00003285a4b1', 'multiple_choice', 'Welches deutsche Wort bedeutet "news"?', '["der Artikel","das Internet","die Zeitung","das Radio"]', 'die Nachricht', '"news" = "die Nachricht" in German. Article: die Plural: die Nachrichten', 1, 4),
  ('00000000-0000-4000-a000-00003285a4b1', 'multiple_choice', 'Welches deutsche Wort bedeutet "radio"?', '["die Nachricht","das Internet","die Zeitung","das Radio"]', 'das Radio', '"radio" = "das Radio" in German. Article: das Plural: die Radios', 1, 5),
  ('00000000-0000-4000-a000-00003285a4b1', 'fill_gap', 'Ergänze den Satz: Ich ___ gern über Social Media & Technology. (sprechen)', '["spreche","sprichst","spricht","sprechen"]', 'spreche', 'ich spreche gern = I like to speak. Stem: sprech- + e.', 2, 6),
  ('00000000-0000-4000-a000-00003285a4b1', 'translation', 'Übersetze ins Deutsche: "I am learning about Social Media & Technology."', '["Ich lerne über Social Media & Technology.","Ich lerne Social Media & Technology.","Lerne ich Social Media & Technology."]', 'Ich lerne über Social Media & Technology.', '"Ich lerne über..." = "I am learning about..."', 2, 7),
  ('00000000-0000-4000-a000-00003285a4b1', 'matching', 'Match: Which word pairs are correct?', '["die Zeitung - newspaper, das Internet - internet"]', 'Matched correctly', 'Each German word has a unique English equivalent.', 2, 8);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-00003285a4b1', 'multiple_choice', 'Was bedeutet "die Zeitung" auf Deutsch?', '["newspaper","to run","beautiful","yesterday"]', 'newspaper', 1, 1),
  ('00000000-0000-4000-a000-00003285a4b1', 'multiple_choice', 'Welcher Artikel gehört zu "das Internet"?', '["der","die","das","den"]', 'das', 1, 2),
  ('00000000-0000-4000-a000-00003285a4b1', 'true_false', 'Das Wort "der Artikel" gehört zum Thema Social Media & Technology.', '["True","False"]', 'True', 1, 3),
  ('00000000-0000-4000-a000-00003285a4b1', 'multiple_choice', 'Welcher Satz verwendet present_tense?', '["Ich hätte gern einen Kaffee, bitte.","Wenn ich mehr Zeit hätte, würde ich Deutsch lernen.","Könnten Sie mir bitte helfen?"]', 'Ich hätte gern einen Kaffee, bitte.', 2, 4),
  ('00000000-0000-4000-a000-00003285a4b1', 'true_false', ''Im Deutschen steht das Verb an zweiter Position im Hauptsatz.', '["True","False"]', 'True', 1, 5),
  ('00000000-0000-4000-a000-00003285a4b1', 'fill_blank', 'Complete: Ich ___ (news) Deutsch.', '["die Nachricht","lernt","lernst","lernen"]', 'lerne', 2, 6),
  ('00000000-0000-4000-a000-00003285a4b1', 'multiple_choice', 'Wie lautet das deutsche Wort für "radio"?', '["das Radio","das Fernsehen","die Zeitschrift","der Journalist"]', 'das Radio', 1, 7),
  ('00000000-0000-4000-a000-00003285a4b1', 'true_false', 'Im Deutschen werden alle Nomen großgeschrieben.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-00003285a4b1', 'multiple_choice', 'How do you say "please" in a restaurant in Germany?', '["Bitte","Danke","Tschüss","Hallo"]', 'Bitte', 1, 9),
  ('00000000-0000-4000-a000-00003285a4b1', 'fill_blank', 'Wo ___ (to live) du?', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 2, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, french_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-00003285a4b1', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', NULL, 'Used in Medien und Kommunikation', 'formal', false, 1),
  ('00000000-0000-4000-a000-00003285a4b1', 'Guten Tag!', 'Good day!', 'نهارك سعيد!', NULL, 'Used in Medien und Kommunikation', 'formal', false, 2),
  ('00000000-0000-4000-a000-00003285a4b1', 'Hallo, wie geht es Ihnen?', 'Hello, how are you?', 'مرحباً، كيف حالكم؟', NULL, 'Used in Medien und Kommunikation', 'formal', false, 3),
  ('00000000-0000-4000-a000-00003285a4b1', 'Schön, Sie kennenzulernen!', 'Nice to meet you!', 'سعيد بلقائكم!', NULL, 'Used in Medien und Kommunikation', 'formal', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-00003285a4b1', 'die die Zeitung (die Zeitungen)', 'newspaper — الجريدة', 'noun', 'vocabulary', 1),
  ('00000000-0000-4000-a000-00003285a4b1', 'das das Internet', 'internet — الإنترنت', 'noun', 'vocabulary', 2),
  ('00000000-0000-4000-a000-00003285a4b1', 'der der Artikel (die Artikel)', 'article — المقال', 'noun', 'vocabulary', 3),
  ('00000000-0000-4000-a000-00003285a4b1', 'die die Nachricht (die Nachrichten)', 'news — الخبر', 'noun', 'vocabulary', 4),
  ('00000000-0000-4000-a000-00003285a4b1', 'das das Radio (die Radios)', 'radio — الراديو', 'noun', 'vocabulary', 5),
  ('00000000-0000-4000-a000-00003285a4b1', 'das das Fernsehen', 'television — التلفاز', 'noun', 'vocabulary', 6),
  ('00000000-0000-4000-a000-00003285a4b1', 'die die Zeitschrift (die Zeitschriften)', 'magazine — المجلة', 'noun', 'vocabulary', 7),
  ('00000000-0000-4000-a000-00003285a4b1', 'der der Journalist (die Journalisten)', 'journalist — الصحفي', 'noun', 'vocabulary', 8),
  ('00000000-0000-4000-a000-00003285a4b1', 'der der Beruf (die Berufe)', 'profession — المهنة', 'noun', 'vocabulary', 9),
  ('00000000-0000-4000-a000-00003285a4b1', 'die die Firma (die Firmen)', 'company — الشركة', 'noun', 'vocabulary', 10),
  ('00000000-0000-4000-a000-00003285a4b1', 'der der Kollege (die Kollegen)', 'colleague — الزميل', 'noun', 'vocabulary', 11),
  ('00000000-0000-4000-a000-00003285a4b1', 'das das Büro (die Büros)', 'office — المكتب', 'noun', 'vocabulary', 12),
  ('00000000-0000-4000-a000-00003285a4b1', 'die die Besprechung (die Besprechungen)', 'meeting — الاجتماع', 'noun', 'vocabulary', 13),
  ('00000000-0000-4000-a000-00003285a4b1', 'der der Chef (die Chefs)', 'boss — المدير', 'noun', 'vocabulary', 14),
  ('00000000-0000-4000-a000-00003285a4b1', 'das das Gehalt (die Gehälter)', 'salary — الراتب', 'noun', 'vocabulary', 15),
  ('00000000-0000-4000-a000-00003285a4b1', 'Ich hätte gern einen Kaffee, bitte.', 'I would like a coffee, please.', 'Konjunktiv II: Höfliche Bitten und irreale Sätze (Subjunctive for Politeness)', 'grammar', 16),
  ('00000000-0000-4000-a000-00003285a4b1', 'Wenn ich mehr Zeit hätte, würde ich Deutsch lernen.', 'If I had more time, I would learn German.', 'Konjunktiv II: Höfliche Bitten und irreale Sätze (Subjunctive for Politeness)', 'grammar', 17),
  ('00000000-0000-4000-a000-00003285a4b1', 'Könnten Sie mir bitte helfen?', 'Could you please help me?', 'Konjunktiv II: Höfliche Bitten und irreale Sätze (Subjunctive for Politeness)', 'grammar', 18);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, french_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-00003285a4b1', 'Soziale Medien und Technologie — Leseübung', 'Die Medienlandschaft in Deutschland ist vielfältig und frei. Es gibt öffentlich-rechtliche Sender wie ARD und ZDF sowie private Fernsehsender. Die bekanntesten deutschen Zeitungen sind die Süddeutsche Zeitung, die FAZ und die Bild-Zeitung. In den letzten Jahren haben soziale Medien wie TikTok und Instagram an Bedeutung gewonnen. Viele Jugendliche informieren sich hauptsächlich über soziale Netzwerke. Journalisten müssen sorgfältig recherchieren und verschiedene Quellen überprüfen, um Falschinformationen zu vermeiden.', 'The media landscape in Germany is diverse and free. There are public broadcasters like ARD and ZDF as well as private television stations. The best-known German newspapers are the Süddeutsche Zeitung, the FAZ and the Bild-Zeitung. In recent years, social media like TikTok and Instagram have gained importance. Many young people get their information mainly from social networks. Journalists must carefully research and verify different sources to avoid misinformation.', 'المشهد الإعلامي في ألمانيا متنوح ومستقل. هناك محطات البث العامة مثل ARD و ZDF بالإضافة إلى محطات تلفزيونية خاصة. أشهر الصحف الألمانية هي Süddeutsche Zeitung و FAZ و Bild-Zeitung. في السنوات الأخيرة اكتسبت وسائل التواصل الاجتماعي مثل TikTok و Instagram أهمية. كثير من الشباب يحصلون على معلوماتهم أساساً من الشبكات الاجتماعية. يجب على الصحفيين البحث بدقة والتحقق من المصادر المختلفة لتجنب المعلومات المضللة.', NULL, 66, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, french_translation, duration_seconds, speaker_count, scenario) values
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

[Lehrerin]: ممتاز! إلى الغد!', '[Lehrerin]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: ', 72, 2, 'Medien und Kommunikation');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-00003285a4b1', '🔊 Sprechen: Soziale Medien und Technologie', 'Discussion: You attend a German Stammtisch (weekly meetup). Discuss Social Media & Technology with the group. Express your opinion, agree/disagree, ask follow-up questions. Try to keep the conversation flowing for 2 minutes.', 'Social Media & Technology', ARRAY['Use discourse markers (also, jedoch, außerdem)','React naturally: "Ach so!", "Echt?", "Das stimmt!"','Paraphrase when you don''t know a word']::text[], ARRAY['die Zeitung','das Internet','der Artikel','die Nachricht','das Radio','das Fernsehen','die Zeitschrift','der Journalist']::text[], 60, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-00003285a4b1', '✏️ Schreiben: Soziale Medien und Technologie', 'Write a formal letter (200-250 words) to your German teacher explaining what you learned about "Social Media & Technology". Include: what surprised you, what was similar/different to your culture, and what you want to learn next. Use present_tense correctly.', ARRAY['Use paragraph breaks for structure','Connect ideas with "außerdem", "deshalb", "jedoch"','Check your verb position in Nebensätze']::text[], ARRAY['die Zeitung','das Internet','der Artikel','die Nachricht','das Radio','das Fernsehen','die Zeitschrift','der Journalist']::text[], ARRAY['Sentence structure','Vocabulary usage']::text[], 150, 250, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00003285a4b1', 'Soziale Medien und Technologie — Roleplay', 'Social Media & Technology', 'Student', 'Teacher', 'Practice conversation about Social Media & Technology', 'Hallo! Lass uns über dieses Thema sprechen.', 'intermediate', 1, ARRAY['die Zeitung','das Internet','der Artikel','die Nachricht','das Radio','das Fernsehen','die Zeitschrift','der Journalist']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00003285a4b1', 'Soziale Medien und Technologie — Advanced Roleplay', 'Social Media & Technology', 'Customer', 'Assistant', 'Extended conversation about Social Media & Technology', 'Guten Tag! Wie kann ich Ihnen helfen?', 'intermediate', 2, ARRAY['die Zeitung','das Internet','der Artikel','die Nachricht','das Radio','das Fernsehen','die Zeitschrift','der Journalist']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-00003285a4b1', 'Soziale Medien und Technologie — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Soziale Medien und Technologie".', 'Creative practice for Social Media & Technology', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-00003285a4b1', '📚 Hausaufgabe: Soziale Medien und Technologie', 'Complete these tasks to reinforce "Soziale Medien und Technologie".', 'mixed', '[{"description":"Create 10 flashcards from this lesson''s vocabulary — write German on one side, Arabic on the other. Test yourself 3 times."},{"description":"Write 6 sentences about Social Media & Technology: 2 statements, 2 questions, 2 negations — all using present_tense."},{"description":"Record yourself reading the dialogue aloud. Listen to the recording and note 3 things to improve."},{"description":"Find 3 real German websites, videos, or articles about Social Media & Technology. Note 5 new words you discovered."}]', 50, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-00003285a4b1', '🎯 Excellent progress! This lesson covered Social Media & Technology (75 vocabulary items) and present_tense. You developed reading, listening, speaking, and writing skills in the context of media. Focus on your common mistakes area for maximum improvement.', '["75 vocabulary items about Social Media & Technology","present_tense — grammar explanation and practice","Reading comprehension: text about Social Media & Technology","Listening comprehension: dialogue about Social Media & Technology","Speaking practice: roleplay/discussion about Social Media & Technology","Writing task: text about Social Media & Technology"]', '[{"title":"Soziale Medien und Technologie Review","summary":"present_tense — the main grammar focus. Focus on using this structure naturally in conversations and writing."}]', ARRAY['die Zeitung (newspaper)','das Internet (internet)','der Artikel (article)','die Nachricht (news)','das Radio (radio)']::text[], ARRAY['Don''t translate from Arabic word-for-word — German has different sentence structure','Learn every noun with its article: NEVER learn "Tisch" alone, always "der Tisch"','Watch out for verb position in Nebensätze']::text[], ARRAY['Practice 15-20 minutes daily — consistency beats intensity','Speak out loud: German pronunciation needs muscle memory','Use the new vocabulary within 24 hours or you''ll forget it','Watch German YouTube videos about Social Media & Technology for authentic input']::text[]);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00003285a4b1', 'Pronunciation: Intonation and sentence melody', 'German sentences have a falling intonation at the end of statements. Questions starting with a verb rise at the end. W-questions fall at the end. Emphasise the stressed syllable — German stresses the first syllable of the root.

Common mistake for Arabic speakers: Arabic speakers often put stress on the wrong syllable. Remember: German root stress is usually on the first syllable.', '[]', '[{"german":"warum","arabic":"","english":"","phonetic":"/vaˈrʊm/"},{"german":"deshalb","arabic":"","english":"","phonetic":"/dɛsˈhalp/"}]', '[]', 10);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00003285a4b1', 'translation', 'Translate to German: "I use the word "newspaper" in a sentence about Social Media & Technology."', '[]', 'Ich lese die Zeitung.', 'Use die  "die Zeitung" with the correct present_tense form.', 1, 40);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00003285a4b1', 'translation', 'Translate to German: "I use the word "internet" in a sentence about Social Media & Technology."', '[]', 'Das Internet ist schnell.', 'Use das  "das Internet" with the correct present_tense form.', 1, 41);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00003285a4b1', 'translation', 'Translate to German: "I use the word "article" in a sentence about Social Media & Technology."', '[]', 'Der Artikel ist interessant.', 'Use der  "der Artikel" with the correct present_tense form.', 1, 42);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00003285a4b1', 'Culture: 🇩🇪 Deutsche Kultur: Social Media & Technology', 'Social Media & Technology in Germany has specific cultural nuances that differ from Arabic-speaking countries. Germans tend to separate their private and professional lives strictly. When dealing with Social Media & Technology in a professional context, use formal register and prepare factual arguments. Emotional appeals are less effective than logical reasoning.

لدى Social Media & Technology في ألمانيا فروق ثقافية دقيقة تختلف عن البلدان العربية. الألمان يفصلون بين حياتهم الخاصة والمهنية بشكل صارم.', '["Tip: Always use \"Sie\" (formal) with strangers and colleagues","Tip: Germans appreciate punctuality — arrive 5 minutes early","Tip: Direct feedback is a sign of respect, not criticism","Tip: Prepare factual arguments, not emotional appeals"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00003285a4b1', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Incorrect preposition usage after verbs","correction":"Learn which preposition each verb requires (sich freuen auf, warten auf, denken an)","explanation":"Arabic and German have different sentence structures. Arabic is VSO, German is SVO with verb in position 2."},{"mistake":"Putting the verb at the end in main clauses","correction":"Verb stays in position 2 in main clauses","explanation":"Subordinate clause word order interferes"}]', 30);

  -- Lesson 3: Relativsätze (Nominativ, Akkusativ) (L-B1-03-03)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-00003285a4b0', '00000000-0000-4000-a000-000039c2eae1', 'Relativsätze (Nominativ, Akkusativ)', 'Learn relative clauses for connecting information.', 'Relative Clauses', 'grammar', '["Understand and apply present_tense rules correctly","Use present_tense in real conversations","Avoid common mistakes Arabic speakers make with present_tense","Read and understand present_tense in context","Listen and identify present_tense in speech","Write sentences using present_tense correctly"]', 60, 3, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, french_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-00003285a4b0', 'die Zeitung', 'الجريدة', 'newspaper', NULL, 'die', 'die Zeitungen', 'noun', 'Ich lese die Zeitung.', 'I read the newspaper.', 'A2', 1),
  ('00000000-0000-4000-a000-00003285a4b0', 'das Internet', 'الإنترنت', 'internet', NULL, 'das', NULL, 'noun', 'Das Internet ist schnell.', 'The internet is fast.', 'A2', 2),
  ('00000000-0000-4000-a000-00003285a4b0', 'der Artikel', 'المقال', 'article', NULL, 'der', 'die Artikel', 'noun', 'Der Artikel ist interessant.', 'The article is interesting.', 'B1', 3),
  ('00000000-0000-4000-a000-00003285a4b0', 'die Nachricht', 'الخبر', 'news', NULL, 'die', 'die Nachrichten', 'noun', 'Ich sehe die Nachrichten.', 'I watch the news.', 'A2', 4),
  ('00000000-0000-4000-a000-00003285a4b0', 'das Radio', 'الراديو', 'radio', NULL, 'das', 'die Radios', 'noun', 'Ich höre Radio.', 'I listen to the radio.', 'A2', 5),
  ('00000000-0000-4000-a000-00003285a4b0', 'das Fernsehen', 'التلفاز', 'television', NULL, 'das', NULL, 'noun', 'Das Fernsehen läuft.', 'The television is on.', 'A2', 6),
  ('00000000-0000-4000-a000-00003285a4b0', 'die Zeitschrift', 'المجلة', 'magazine', NULL, 'die', 'die Zeitschriften', 'noun', 'Die Zeitschrift erscheint monatlich.', 'The magazine is published monthly.', 'B1', 7),
  ('00000000-0000-4000-a000-00003285a4b0', 'der Journalist', 'الصحفي', 'journalist', NULL, 'der', 'die Journalisten', 'noun', 'Der Journalist schreibt einen Artikel.', 'The journalist writes an article.', 'B1', 8),
  ('00000000-0000-4000-a000-00003285a4b0', 'der Beruf', 'المهنة', 'profession', NULL, 'der', 'die Berufe', 'noun', 'Was ist dein Beruf?', 'What is your profession?', 'A1', 9),
  ('00000000-0000-4000-a000-00003285a4b0', 'die Firma', 'الشركة', 'company', NULL, 'die', 'die Firmen', 'noun', 'Die Firma ist in Berlin.', 'The company is in Berlin.', 'A1', 10),
  ('00000000-0000-4000-a000-00003285a4b0', 'der Kollege', 'الزميل', 'colleague', NULL, 'der', 'die Kollegen', 'noun', 'Mein Kollege hilft mir.', 'My colleague helps me.', 'A1', 11),
  ('00000000-0000-4000-a000-00003285a4b0', 'das Büro', 'المكتب', 'office', NULL, 'das', 'die Büros', 'noun', 'Das Büro ist im dritten Stock.', 'The office is on the third floor.', 'A1', 12),
  ('00000000-0000-4000-a000-00003285a4b0', 'die Besprechung', 'الاجتماع', 'meeting', NULL, 'die', 'die Besprechungen', 'noun', 'Wir haben eine Besprechung.', 'We have a meeting.', 'B1', 13),
  ('00000000-0000-4000-a000-00003285a4b0', 'der Chef', 'المدير', 'boss', NULL, 'der', 'die Chefs', 'noun', 'Mein Chef ist freundlich.', 'My boss is friendly.', 'A1', 14),
  ('00000000-0000-4000-a000-00003285a4b0', 'das Gehalt', 'الراتب', 'salary', NULL, 'das', 'die Gehälter', 'noun', 'Das Gehalt ist gut.', 'The salary is good.', 'B1', 15),
  ('00000000-0000-4000-a000-00003285a4b0', 'die Stelle', 'الوظيفة', 'position', NULL, 'die', 'die Stellen', 'noun', 'Ich suche eine neue Stelle.', 'I am looking for a new position.', 'B1', 16),
  ('00000000-0000-4000-a000-00003285a4b0', 'die Schule', 'المدرسة', 'school', NULL, 'die', 'die Schulen', 'noun', 'Die Kinder gehen zur Schule.', 'The children go to school.', 'A1', 17),
  ('00000000-0000-4000-a000-00003285a4b0', 'der Lehrer', 'المعلم', 'teacher', NULL, 'der', 'die Lehrer', 'noun', 'Der Lehrer erklärt die Grammatik.', 'The teacher explains the grammar.', 'A1', 18),
  ('00000000-0000-4000-a000-00003285a4b0', 'der Student', 'الطالب', 'student', NULL, 'der', 'die Studenten', 'noun', 'Der Student lernt Deutsch.', 'The student learns German.', 'A1', 19),
  ('00000000-0000-4000-a000-00003285a4b0', 'die Universität', 'الجامعة', 'university', NULL, 'die', 'die Universitäten', 'noun', 'Die Universität ist alt.', 'The university is old.', 'B1', 20),
  ('00000000-0000-4000-a000-00003285a4b0', 'der Kurs', 'الدورة', 'course', NULL, 'der', 'die Kurse', 'noun', 'Der Kurs kostet 200 Euro.', 'The course costs 200 euros.', 'A2', 21),
  ('00000000-0000-4000-a000-00003285a4b0', 'die Prüfung', 'الامتحان', 'exam', NULL, 'die', 'die Prüfungen', 'noun', 'Die Prüfung ist schwer.', 'The exam is difficult.', 'B1', 22),
  ('00000000-0000-4000-a000-00003285a4b0', 'das Studium', 'الدراسة الجامعية', 'studies', NULL, 'das', NULL, 'noun', 'Mein Studium dauert vier Jahre.', 'My studies take four years.', 'B1', 23),
  ('00000000-0000-4000-a000-00003285a4b0', 'lernen', 'يتعلم', 'to learn', NULL, NULL, NULL, 'verb', 'Ich lerne Deutsch.', 'I learn German.', 'A1', 24),
  ('00000000-0000-4000-a000-00003285a4b0', 'die Gesellschaft', 'المجتمع', 'society', NULL, 'die', NULL, 'noun', 'Die Gesellschaft verändert sich.', 'Society is changing.', 'B1', 25),
  ('00000000-0000-4000-a000-00003285a4b0', 'die Politik', 'السياسة', 'politics', NULL, 'die', NULL, 'noun', 'Politik ist ein wichtiges Thema.', 'Politics is an important topic.', 'B1', 26),
  ('00000000-0000-4000-a000-00003285a4b0', 'die Integration', 'الاندماج', 'integration', NULL, 'die', NULL, 'noun', 'Integration ist wichtig.', 'Integration is important.', 'B1', 27),
  ('00000000-0000-4000-a000-00003285a4b0', 'die Kultur', 'الثقافة', 'culture', NULL, 'die', NULL, 'noun', 'Die deutsche Kultur ist vielfältig.', 'German culture is diverse.', 'A2', 28),
  ('00000000-0000-4000-a000-00003285a4b0', 'der Bürger', 'المواطن', 'citizen', NULL, 'der', 'die Bürger', 'noun', 'Die Bürger wählen.', 'The citizens vote.', 'B1', 29),
  ('00000000-0000-4000-a000-00003285a4b0', 'die Freiheit', 'الحرية', 'freedom', NULL, 'die', NULL, 'noun', 'Freiheit ist ein Grundrecht.', 'Freedom is a basic right.', 'B1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00003285a4b0', 'Nebensätze mit "dass", "weil", "obwohl" (Subordinate Clauses) / الجمل الثانوية مع dass, weil, obwohl', 'Subordinate clauses push the conjugated verb to the END of the clause. The conjunction initiates the subordinate clause. Common conjunctions: dass (that), weil (because), obwohl (although), wenn (if/when), während (while). The subordinate clause can come before or after the main clause.', '[{"rule":"Verb goes to END in subordinate clause","note":"Ich weiß, dass er morgen kommt. (NOT: ...dass er kommt morgen)"},{"rule":"Wenn clause first → verb starts main clause","note":"Wenn ich Zeit habe, gehe ich ins Kino."},{"rule":"Weil answers \"why\" questions","note":"Ich lerne Deutsch, weil ich in Berlin studieren will."}]', '[{"german":"Ich denke, dass er recht hat.","arabic":"أعتقد أنه على حق.","english":"I think that he is right."},{"german":"Er lernt Deutsch, weil er in Berlin studiert.","arabic":"هو يتعلم الألمانية لأنه يدرس في برلين.","english":"He learns German because he studies in Berlin."},{"german":"Obwohl es regnet, gehe ich spazieren.","arabic":"على الرغم من المطر، أذهب للتنزه.","english":"Although it is raining, I go for a walk."}]', '[{"mistake":"Ich weiß, dass er kommt morgen (verb stays in position 2)","correction":"Ich weiß, dass er morgen kommt.","explanation":"In \"dass\" clauses, the verb ALWAYS goes to the end."},{"mistake":"Weil ich bin müde (verb stays after \"weil\")","correction":"Weil ich müde bin.","explanation":"Weil + subject + ... + verb (at the end)."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00003285a4b0', 'multiple_choice', 'Welches deutsche Wort bedeutet "newspaper"?', '["die Nachricht","der Artikel","das Radio","das Internet"]', 'die Zeitung', '"newspaper" = "die Zeitung" in German. Article: die Plural: die Zeitungen', 1, 1),
  ('00000000-0000-4000-a000-00003285a4b0', 'multiple_choice', 'Welches deutsche Wort bedeutet "internet"?', '["der Artikel","die Zeitung","das Radio","das Internet"]', 'das Internet', '"internet" = "das Internet" in German. Article: das ', 1, 2),
  ('00000000-0000-4000-a000-00003285a4b0', 'multiple_choice', 'Welches deutsche Wort bedeutet "article"?', '["das Radio","die Nachricht","das Internet","die Zeitung"]', 'der Artikel', '"article" = "der Artikel" in German. Article: der Plural: die Artikel', 1, 3),
  ('00000000-0000-4000-a000-00003285a4b0', 'multiple_choice', 'Welches deutsche Wort bedeutet "news"?', '["die Nachricht","der Artikel","das Radio","die Zeitung"]', 'die Nachricht', '"news" = "die Nachricht" in German. Article: die Plural: die Nachrichten', 1, 4),
  ('00000000-0000-4000-a000-00003285a4b0', 'multiple_choice', 'Welches deutsche Wort bedeutet "radio"?', '["das Internet","die Zeitung","der Artikel","das Radio"]', 'das Radio', '"radio" = "das Radio" in German. Article: das Plural: die Radios', 1, 5),
  ('00000000-0000-4000-a000-00003285a4b0', 'fill_gap', 'Ergänze den Satz: Ich ___ gern über Relative Clauses. (sprechen)', '["spreche","sprichst","spricht","sprechen"]', 'spreche', 'ich spreche gern = I like to speak. Stem: sprech- + e.', 2, 6),
  ('00000000-0000-4000-a000-00003285a4b0', 'translation', 'Übersetze ins Deutsche: "I am learning about Relative Clauses."', '["Ich lerne über Relative Clauses.","Ich lerne Relative Clauses.","Lerne ich Relative Clauses."]', 'Ich lerne über Relative Clauses.', '"Ich lerne über..." = "I am learning about..."', 2, 7),
  ('00000000-0000-4000-a000-00003285a4b0', 'matching', 'Match: Which word pairs are correct?', '["die Zeitung - newspaper, das Internet - internet"]', 'Matched correctly', 'Each German word has a unique English equivalent.', 2, 8);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-00003285a4b0', 'multiple_choice', 'Was bedeutet "die Zeitung" auf Deutsch?', '["newspaper","to run","beautiful","yesterday"]', 'newspaper', 1, 1),
  ('00000000-0000-4000-a000-00003285a4b0', 'multiple_choice', 'Welcher Artikel gehört zu "das Internet"?', '["der","die","das","den"]', 'das', 1, 2),
  ('00000000-0000-4000-a000-00003285a4b0', 'true_false', 'Das Wort "der Artikel" gehört zum Thema Relative Clauses.', '["True","False"]', 'True', 1, 3),
  ('00000000-0000-4000-a000-00003285a4b0', 'multiple_choice', 'Welcher Satz verwendet present_tense?', '["Ich denke, dass er recht hat.","Er lernt Deutsch, weil er in Berlin studiert.","Obwohl es regnet, gehe ich spazieren."]', 'Ich denke, dass er recht hat.', 2, 4),
  ('00000000-0000-4000-a000-00003285a4b0', 'true_false', ''Im Deutschen steht das Verb an zweiter Position im Hauptsatz.', '["True","False"]', 'True', 1, 5),
  ('00000000-0000-4000-a000-00003285a4b0', 'fill_blank', 'Complete: Ich ___ (news) Deutsch.', '["die Nachricht","lernt","lernst","lernen"]', 'lerne', 2, 6),
  ('00000000-0000-4000-a000-00003285a4b0', 'multiple_choice', 'Wie lautet das deutsche Wort für "radio"?', '["das Radio","das Fernsehen","die Zeitschrift","der Journalist"]', 'das Radio', 1, 7),
  ('00000000-0000-4000-a000-00003285a4b0', 'true_false', 'Im Deutschen werden alle Nomen großgeschrieben.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-00003285a4b0', 'multiple_choice', 'How do you say "please" in a restaurant in Germany?', '["Bitte","Danke","Tschüss","Hallo"]', 'Bitte', 1, 9),
  ('00000000-0000-4000-a000-00003285a4b0', 'fill_blank', 'Wo ___ (to live) du?', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 2, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, french_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-00003285a4b0', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', NULL, 'Used in Medien und Kommunikation', 'formal', false, 1),
  ('00000000-0000-4000-a000-00003285a4b0', 'Guten Tag!', 'Good day!', 'نهارك سعيد!', NULL, 'Used in Medien und Kommunikation', 'formal', false, 2),
  ('00000000-0000-4000-a000-00003285a4b0', 'Hallo, wie geht es Ihnen?', 'Hello, how are you?', 'مرحباً، كيف حالكم؟', NULL, 'Used in Medien und Kommunikation', 'formal', false, 3),
  ('00000000-0000-4000-a000-00003285a4b0', 'Schön, Sie kennenzulernen!', 'Nice to meet you!', 'سعيد بلقائكم!', NULL, 'Used in Medien und Kommunikation', 'formal', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-00003285a4b0', 'die die Zeitung (die Zeitungen)', 'newspaper — الجريدة', 'noun', 'vocabulary', 1),
  ('00000000-0000-4000-a000-00003285a4b0', 'das das Internet', 'internet — الإنترنت', 'noun', 'vocabulary', 2),
  ('00000000-0000-4000-a000-00003285a4b0', 'der der Artikel (die Artikel)', 'article — المقال', 'noun', 'vocabulary', 3),
  ('00000000-0000-4000-a000-00003285a4b0', 'die die Nachricht (die Nachrichten)', 'news — الخبر', 'noun', 'vocabulary', 4),
  ('00000000-0000-4000-a000-00003285a4b0', 'das das Radio (die Radios)', 'radio — الراديو', 'noun', 'vocabulary', 5),
  ('00000000-0000-4000-a000-00003285a4b0', 'das das Fernsehen', 'television — التلفاز', 'noun', 'vocabulary', 6),
  ('00000000-0000-4000-a000-00003285a4b0', 'die die Zeitschrift (die Zeitschriften)', 'magazine — المجلة', 'noun', 'vocabulary', 7),
  ('00000000-0000-4000-a000-00003285a4b0', 'der der Journalist (die Journalisten)', 'journalist — الصحفي', 'noun', 'vocabulary', 8),
  ('00000000-0000-4000-a000-00003285a4b0', 'der der Beruf (die Berufe)', 'profession — المهنة', 'noun', 'vocabulary', 9),
  ('00000000-0000-4000-a000-00003285a4b0', 'die die Firma (die Firmen)', 'company — الشركة', 'noun', 'vocabulary', 10),
  ('00000000-0000-4000-a000-00003285a4b0', 'der der Kollege (die Kollegen)', 'colleague — الزميل', 'noun', 'vocabulary', 11),
  ('00000000-0000-4000-a000-00003285a4b0', 'das das Büro (die Büros)', 'office — المكتب', 'noun', 'vocabulary', 12),
  ('00000000-0000-4000-a000-00003285a4b0', 'die die Besprechung (die Besprechungen)', 'meeting — الاجتماع', 'noun', 'vocabulary', 13),
  ('00000000-0000-4000-a000-00003285a4b0', 'der der Chef (die Chefs)', 'boss — المدير', 'noun', 'vocabulary', 14),
  ('00000000-0000-4000-a000-00003285a4b0', 'das das Gehalt (die Gehälter)', 'salary — الراتب', 'noun', 'vocabulary', 15),
  ('00000000-0000-4000-a000-00003285a4b0', 'Ich denke, dass er recht hat.', 'I think that he is right.', 'Nebensätze mit "dass", "weil", "obwohl" (Subordinate Clauses)', 'grammar', 16),
  ('00000000-0000-4000-a000-00003285a4b0', 'Er lernt Deutsch, weil er in Berlin studiert.', 'He learns German because he studies in Berlin.', 'Nebensätze mit "dass", "weil", "obwohl" (Subordinate Clauses)', 'grammar', 17),
  ('00000000-0000-4000-a000-00003285a4b0', 'Obwohl es regnet, gehe ich spazieren.', 'Although it is raining, I go for a walk.', 'Nebensätze mit "dass", "weil", "obwohl" (Subordinate Clauses)', 'grammar', 18);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, french_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-00003285a4b0', 'Relativsätze (Nominativ, Akkusativ) — Leseübung', 'Die Medienlandschaft in Deutschland ist vielfältig und frei. Es gibt öffentlich-rechtliche Sender wie ARD und ZDF sowie private Fernsehsender. Die bekanntesten deutschen Zeitungen sind die Süddeutsche Zeitung, die FAZ und die Bild-Zeitung. In den letzten Jahren haben soziale Medien wie TikTok und Instagram an Bedeutung gewonnen. Viele Jugendliche informieren sich hauptsächlich über soziale Netzwerke. Journalisten müssen sorgfältig recherchieren und verschiedene Quellen überprüfen, um Falschinformationen zu vermeiden.', 'The media landscape in Germany is diverse and free. There are public broadcasters like ARD and ZDF as well as private television stations. The best-known German newspapers are the Süddeutsche Zeitung, the FAZ and the Bild-Zeitung. In recent years, social media like TikTok and Instagram have gained importance. Many young people get their information mainly from social networks. Journalists must carefully research and verify different sources to avoid misinformation.', 'المشهد الإعلامي في ألمانيا متنوح ومستقل. هناك محطات البث العامة مثل ARD و ZDF بالإضافة إلى محطات تلفزيونية خاصة. أشهر الصحف الألمانية هي Süddeutsche Zeitung و FAZ و Bild-Zeitung. في السنوات الأخيرة اكتسبت وسائل التواصل الاجتماعي مثل TikTok و Instagram أهمية. كثير من الشباب يحصلون على معلوماتهم أساساً من الشبكات الاجتماعية. يجب على الصحفيين البحث بدقة والتحقق من المصادر المختلفة لتجنب المعلومات المضللة.', NULL, 66, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, french_translation, duration_seconds, speaker_count, scenario) values
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

[Lehrerin]: ممتاز! إلى الغد!', '[Lehrerin]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: ', 72, 2, 'Medien und Kommunikation');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-00003285a4b0', '🔊 Sprechen: Relativsätze (Nominativ, Akkusativ)', 'Discussion: You attend a German Stammtisch (weekly meetup). Discuss Relative Clauses with the group. Express your opinion, agree/disagree, ask follow-up questions. Try to keep the conversation flowing for 2 minutes.', 'Relative Clauses', ARRAY['Use discourse markers (also, jedoch, außerdem)','React naturally: "Ach so!", "Echt?", "Das stimmt!"','Paraphrase when you don''t know a word']::text[], ARRAY['die Zeitung','das Internet','der Artikel','die Nachricht','das Radio','das Fernsehen','die Zeitschrift','der Journalist']::text[], 60, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-00003285a4b0', '✏️ Schreiben: Relativsätze (Nominativ, Akkusativ)', 'Write a formal letter (200-250 words) to your German teacher explaining what you learned about "Relative Clauses". Include: what surprised you, what was similar/different to your culture, and what you want to learn next. Use present_tense correctly.', ARRAY['Use paragraph breaks for structure','Connect ideas with "außerdem", "deshalb", "jedoch"','Check your verb position in Nebensätze']::text[], ARRAY['die Zeitung','das Internet','der Artikel','die Nachricht','das Radio','das Fernsehen','die Zeitschrift','der Journalist']::text[], ARRAY['Sentence structure','Vocabulary usage']::text[], 150, 250, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00003285a4b0', 'Relativsätze (Nominativ, Akkusativ) — Roleplay', 'Relative Clauses', 'Student', 'Teacher', 'Practice conversation about Relative Clauses', 'Hallo! Lass uns über dieses Thema sprechen.', 'intermediate', 1, ARRAY['die Zeitung','das Internet','der Artikel','die Nachricht','das Radio','das Fernsehen','die Zeitschrift','der Journalist']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00003285a4b0', 'Relativsätze (Nominativ, Akkusativ) — Advanced Roleplay', 'Relative Clauses', 'Customer', 'Assistant', 'Extended conversation about Relative Clauses', 'Guten Tag! Wie kann ich Ihnen helfen?', 'intermediate', 2, ARRAY['die Zeitung','das Internet','der Artikel','die Nachricht','das Radio','das Fernsehen','die Zeitschrift','der Journalist']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-00003285a4b0', 'Relativsätze (Nominativ, Akkusativ) — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Relativsätze (Nominativ, Akkusativ)".', 'Creative practice for Relative Clauses', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-00003285a4b0', '📚 Hausaufgabe: Relativsätze (Nominativ, Akkusativ)', 'Complete these tasks to reinforce "Relativsätze (Nominativ, Akkusativ)".', 'mixed', '[{"description":"Create 10 flashcards from this lesson''s vocabulary — write German on one side, Arabic on the other. Test yourself 3 times."},{"description":"Write 6 sentences about Relative Clauses: 2 statements, 2 questions, 2 negations — all using present_tense."},{"description":"Record yourself reading the dialogue aloud. Listen to the recording and note 3 things to improve."},{"description":"Find 3 real German websites, videos, or articles about Relative Clauses. Note 5 new words you discovered."}]', 50, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-00003285a4b0', '🎯 Excellent progress! This lesson covered Relative Clauses (75 vocabulary items) and present_tense. You developed reading, listening, speaking, and writing skills in the context of media. Focus on your common mistakes area for maximum improvement.', '["75 vocabulary items about Relative Clauses","present_tense — grammar explanation and practice","Reading comprehension: text about Relative Clauses","Listening comprehension: dialogue about Relative Clauses","Speaking practice: roleplay/discussion about Relative Clauses","Writing task: text about Relative Clauses"]', '[{"title":"Relativsätze (Nominativ, Akkusativ) Review","summary":"present_tense — the main grammar focus. Focus on using this structure naturally in conversations and writing."}]', ARRAY['die Zeitung (newspaper)','das Internet (internet)','der Artikel (article)','die Nachricht (news)','das Radio (radio)']::text[], ARRAY['Don''t translate from Arabic word-for-word — German has different sentence structure','Learn every noun with its article: NEVER learn "Tisch" alone, always "der Tisch"','Watch out for verb position in Nebensätze']::text[], ARRAY['Practice 15-20 minutes daily — consistency beats intensity','Speak out loud: German pronunciation needs muscle memory','Use the new vocabulary within 24 hours or you''ll forget it','Watch German YouTube videos about Relative Clauses for authentic input']::text[]);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00003285a4b0', 'Pronunciation: Intonation and sentence melody', 'German sentences have a falling intonation at the end of statements. Questions starting with a verb rise at the end. W-questions fall at the end. Emphasise the stressed syllable — German stresses the first syllable of the root.

Common mistake for Arabic speakers: Arabic speakers often put stress on the wrong syllable. Remember: German root stress is usually on the first syllable.', '[]', '[{"german":"warum","arabic":"","english":"","phonetic":"/vaˈrʊm/"},{"german":"deshalb","arabic":"","english":"","phonetic":"/dɛsˈhalp/"}]', '[]', 10);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00003285a4b0', 'translation', 'Translate to German: "I use the word "newspaper" in a sentence about Relative Clauses."', '[]', 'Ich lese die Zeitung.', 'Use die  "die Zeitung" with the correct present_tense form.', 1, 40);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00003285a4b0', 'translation', 'Translate to German: "I use the word "internet" in a sentence about Relative Clauses."', '[]', 'Das Internet ist schnell.', 'Use das  "das Internet" with the correct present_tense form.', 1, 41);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00003285a4b0', 'translation', 'Translate to German: "I use the word "article" in a sentence about Relative Clauses."', '[]', 'Der Artikel ist interessant.', 'Use der  "der Artikel" with the correct present_tense form.', 1, 42);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00003285a4b0', 'Culture: 🇩🇪 Deutsche Kultur: Relative Clauses', 'Relative Clauses in Germany has specific cultural nuances that differ from Arabic-speaking countries. Germans tend to separate their private and professional lives strictly. When dealing with Relative Clauses in a professional context, use formal register and prepare factual arguments. Emotional appeals are less effective than logical reasoning.

لدى Relative Clauses في ألمانيا فروق ثقافية دقيقة تختلف عن البلدان العربية. الألمان يفصلون بين حياتهم الخاصة والمهنية بشكل صارم.', '["Tip: Always use \"Sie\" (formal) with strangers and colleagues","Tip: Germans appreciate punctuality — arrive 5 minutes early","Tip: Direct feedback is a sign of respect, not criticism","Tip: Prepare factual arguments, not emotional appeals"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00003285a4b0', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Incorrect preposition usage after verbs","correction":"Learn which preposition each verb requires (sich freuen auf, warten auf, denken an)","explanation":"Arabic and German have different sentence structures. Arabic is VSO, German is SVO with verb in position 2."},{"mistake":"Putting the verb at the end in main clauses","correction":"Verb stays in position 2 in main clauses","explanation":"Subordinate clause word order interferes"}]', 30);

  -- Lesson 4: Meinung äußern und diskutieren (L-B1-03-04)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-00003285a4af', '00000000-0000-4000-a000-000039c2eae1', 'Meinung äußern und diskutieren', 'Practice expressing opinions and debating.', 'Expressing Opinions', 'speaking', '["Understand and apply present_tense rules correctly","Use present_tense in real conversations","Avoid common mistakes Arabic speakers make with present_tense","Read and understand present_tense in context","Listen and identify present_tense in speech","Write sentences using present_tense correctly"]', 50, 4, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, french_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-00003285a4af', 'die Zeitung', 'الجريدة', 'newspaper', NULL, 'die', 'die Zeitungen', 'noun', 'Ich lese die Zeitung.', 'I read the newspaper.', 'A2', 1),
  ('00000000-0000-4000-a000-00003285a4af', 'das Internet', 'الإنترنت', 'internet', NULL, 'das', NULL, 'noun', 'Das Internet ist schnell.', 'The internet is fast.', 'A2', 2),
  ('00000000-0000-4000-a000-00003285a4af', 'der Artikel', 'المقال', 'article', NULL, 'der', 'die Artikel', 'noun', 'Der Artikel ist interessant.', 'The article is interesting.', 'B1', 3),
  ('00000000-0000-4000-a000-00003285a4af', 'die Nachricht', 'الخبر', 'news', NULL, 'die', 'die Nachrichten', 'noun', 'Ich sehe die Nachrichten.', 'I watch the news.', 'A2', 4),
  ('00000000-0000-4000-a000-00003285a4af', 'das Radio', 'الراديو', 'radio', NULL, 'das', 'die Radios', 'noun', 'Ich höre Radio.', 'I listen to the radio.', 'A2', 5),
  ('00000000-0000-4000-a000-00003285a4af', 'das Fernsehen', 'التلفاز', 'television', NULL, 'das', NULL, 'noun', 'Das Fernsehen läuft.', 'The television is on.', 'A2', 6),
  ('00000000-0000-4000-a000-00003285a4af', 'die Zeitschrift', 'المجلة', 'magazine', NULL, 'die', 'die Zeitschriften', 'noun', 'Die Zeitschrift erscheint monatlich.', 'The magazine is published monthly.', 'B1', 7),
  ('00000000-0000-4000-a000-00003285a4af', 'der Journalist', 'الصحفي', 'journalist', NULL, 'der', 'die Journalisten', 'noun', 'Der Journalist schreibt einen Artikel.', 'The journalist writes an article.', 'B1', 8),
  ('00000000-0000-4000-a000-00003285a4af', 'der Beruf', 'المهنة', 'profession', NULL, 'der', 'die Berufe', 'noun', 'Was ist dein Beruf?', 'What is your profession?', 'A1', 9),
  ('00000000-0000-4000-a000-00003285a4af', 'die Firma', 'الشركة', 'company', NULL, 'die', 'die Firmen', 'noun', 'Die Firma ist in Berlin.', 'The company is in Berlin.', 'A1', 10),
  ('00000000-0000-4000-a000-00003285a4af', 'der Kollege', 'الزميل', 'colleague', NULL, 'der', 'die Kollegen', 'noun', 'Mein Kollege hilft mir.', 'My colleague helps me.', 'A1', 11),
  ('00000000-0000-4000-a000-00003285a4af', 'das Büro', 'المكتب', 'office', NULL, 'das', 'die Büros', 'noun', 'Das Büro ist im dritten Stock.', 'The office is on the third floor.', 'A1', 12),
  ('00000000-0000-4000-a000-00003285a4af', 'die Besprechung', 'الاجتماع', 'meeting', NULL, 'die', 'die Besprechungen', 'noun', 'Wir haben eine Besprechung.', 'We have a meeting.', 'B1', 13),
  ('00000000-0000-4000-a000-00003285a4af', 'der Chef', 'المدير', 'boss', NULL, 'der', 'die Chefs', 'noun', 'Mein Chef ist freundlich.', 'My boss is friendly.', 'A1', 14),
  ('00000000-0000-4000-a000-00003285a4af', 'das Gehalt', 'الراتب', 'salary', NULL, 'das', 'die Gehälter', 'noun', 'Das Gehalt ist gut.', 'The salary is good.', 'B1', 15),
  ('00000000-0000-4000-a000-00003285a4af', 'die Stelle', 'الوظيفة', 'position', NULL, 'die', 'die Stellen', 'noun', 'Ich suche eine neue Stelle.', 'I am looking for a new position.', 'B1', 16),
  ('00000000-0000-4000-a000-00003285a4af', 'die Schule', 'المدرسة', 'school', NULL, 'die', 'die Schulen', 'noun', 'Die Kinder gehen zur Schule.', 'The children go to school.', 'A1', 17),
  ('00000000-0000-4000-a000-00003285a4af', 'der Lehrer', 'المعلم', 'teacher', NULL, 'der', 'die Lehrer', 'noun', 'Der Lehrer erklärt die Grammatik.', 'The teacher explains the grammar.', 'A1', 18),
  ('00000000-0000-4000-a000-00003285a4af', 'der Student', 'الطالب', 'student', NULL, 'der', 'die Studenten', 'noun', 'Der Student lernt Deutsch.', 'The student learns German.', 'A1', 19),
  ('00000000-0000-4000-a000-00003285a4af', 'die Universität', 'الجامعة', 'university', NULL, 'die', 'die Universitäten', 'noun', 'Die Universität ist alt.', 'The university is old.', 'B1', 20),
  ('00000000-0000-4000-a000-00003285a4af', 'der Kurs', 'الدورة', 'course', NULL, 'der', 'die Kurse', 'noun', 'Der Kurs kostet 200 Euro.', 'The course costs 200 euros.', 'A2', 21),
  ('00000000-0000-4000-a000-00003285a4af', 'die Prüfung', 'الامتحان', 'exam', NULL, 'die', 'die Prüfungen', 'noun', 'Die Prüfung ist schwer.', 'The exam is difficult.', 'B1', 22),
  ('00000000-0000-4000-a000-00003285a4af', 'das Studium', 'الدراسة الجامعية', 'studies', NULL, 'das', NULL, 'noun', 'Mein Studium dauert vier Jahre.', 'My studies take four years.', 'B1', 23),
  ('00000000-0000-4000-a000-00003285a4af', 'lernen', 'يتعلم', 'to learn', NULL, NULL, NULL, 'verb', 'Ich lerne Deutsch.', 'I learn German.', 'A1', 24),
  ('00000000-0000-4000-a000-00003285a4af', 'die Gesellschaft', 'المجتمع', 'society', NULL, 'die', NULL, 'noun', 'Die Gesellschaft verändert sich.', 'Society is changing.', 'B1', 25),
  ('00000000-0000-4000-a000-00003285a4af', 'die Politik', 'السياسة', 'politics', NULL, 'die', NULL, 'noun', 'Politik ist ein wichtiges Thema.', 'Politics is an important topic.', 'B1', 26),
  ('00000000-0000-4000-a000-00003285a4af', 'die Integration', 'الاندماج', 'integration', NULL, 'die', NULL, 'noun', 'Integration ist wichtig.', 'Integration is important.', 'B1', 27),
  ('00000000-0000-4000-a000-00003285a4af', 'die Kultur', 'الثقافة', 'culture', NULL, 'die', NULL, 'noun', 'Die deutsche Kultur ist vielfältig.', 'German culture is diverse.', 'A2', 28),
  ('00000000-0000-4000-a000-00003285a4af', 'der Bürger', 'المواطن', 'citizen', NULL, 'der', 'die Bürger', 'noun', 'Die Bürger wählen.', 'The citizens vote.', 'B1', 29),
  ('00000000-0000-4000-a000-00003285a4af', 'die Freiheit', 'الحرية', 'freedom', NULL, 'die', NULL, 'noun', 'Freiheit ist ein Grundrecht.', 'Freedom is a basic right.', 'B1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00003285a4af', 'Adjektivdeklination (Adjective Declension) / تصريف الصفات', 'When an adjective comes before a noun, it must agree in gender, number, and case. There are three declension patterns: after "der" words (weak), after "ein" words (mixed), and without article (strong). The endings depend on which information the article already provides.', '[{"rule":"Weak (after der/die/das): -e or -en","note":"der gute Mann, die gute Frau, das gute Kind, die guten Leute"},{"rule":"Mixed (after ein/mein/kein): article ending + adjective ending","note":"ein guter Mann, eine gute Frau, ein gutes Kind, keine guten Leute"}]', '[{"german":"Der große Hund gehört der alten Frau.","arabic":"الكلب الكبير ملك للمرأة العجوز.","english":"The big dog belongs to the old woman."},{"german":"Ein interessantes Buch liegt auf dem Tisch.","arabic":"كتاب مثير للاهتمام على الطاولة.","english":"An interesting book is on the table."}]', '[{"mistake":"Der groß Hund (no ending on adjective)","correction":"Der große Hund","explanation":"Adjectives before nouns MUST have an ending in German."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00003285a4af', 'multiple_choice', 'Welches deutsche Wort bedeutet "newspaper"?', '["die Zeitung","die Nachricht","das Radio","das Internet"]', 'die Zeitung', '"newspaper" = "die Zeitung" in German. Article: die Plural: die Zeitungen', 1, 1),
  ('00000000-0000-4000-a000-00003285a4af', 'multiple_choice', 'Welches deutsche Wort bedeutet "internet"?', '["das Internet","die Zeitung","der Artikel","das Radio"]', 'das Internet', '"internet" = "das Internet" in German. Article: das ', 1, 2),
  ('00000000-0000-4000-a000-00003285a4af', 'multiple_choice', 'Welches deutsche Wort bedeutet "article"?', '["das Radio","die Nachricht","das Internet","die Zeitung"]', 'der Artikel', '"article" = "der Artikel" in German. Article: der Plural: die Artikel', 1, 3),
  ('00000000-0000-4000-a000-00003285a4af', 'multiple_choice', 'Welches deutsche Wort bedeutet "news"?', '["das Radio","die Zeitung","die Nachricht","der Artikel"]', 'die Nachricht', '"news" = "die Nachricht" in German. Article: die Plural: die Nachrichten', 1, 4),
  ('00000000-0000-4000-a000-00003285a4af', 'multiple_choice', 'Welches deutsche Wort bedeutet "radio"?', '["die Zeitung","der Artikel","das Radio","die Nachricht"]', 'das Radio', '"radio" = "das Radio" in German. Article: das Plural: die Radios', 1, 5),
  ('00000000-0000-4000-a000-00003285a4af', 'fill_gap', 'Ergänze den Satz: Ich ___ gern über Expressing Opinions. (sprechen)', '["spreche","sprichst","spricht","sprechen"]', 'spreche', 'ich spreche gern = I like to speak. Stem: sprech- + e.', 2, 6),
  ('00000000-0000-4000-a000-00003285a4af', 'translation', 'Übersetze ins Deutsche: "I am learning about Expressing Opinions."', '["Ich lerne über Expressing Opinions.","Ich lerne Expressing Opinions.","Lerne ich Expressing Opinions."]', 'Ich lerne über Expressing Opinions.', '"Ich lerne über..." = "I am learning about..."', 2, 7),
  ('00000000-0000-4000-a000-00003285a4af', 'matching', 'Match: Which word pairs are correct?', '["die Zeitung - newspaper, das Internet - internet"]', 'Matched correctly', 'Each German word has a unique English equivalent.', 2, 8);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-00003285a4af', 'multiple_choice', 'Was bedeutet "die Zeitung" auf Deutsch?', '["newspaper","to run","beautiful","yesterday"]', 'newspaper', 1, 1),
  ('00000000-0000-4000-a000-00003285a4af', 'multiple_choice', 'Welcher Artikel gehört zu "das Internet"?', '["der","die","das","den"]', 'das', 1, 2),
  ('00000000-0000-4000-a000-00003285a4af', 'true_false', 'Das Wort "der Artikel" gehört zum Thema Expressing Opinions.', '["True","False"]', 'True', 1, 3),
  ('00000000-0000-4000-a000-00003285a4af', 'multiple_choice', 'Welcher Satz verwendet present_tense?', '["Der große Hund gehört der alten Frau.","Ein interessantes Buch liegt auf dem Tisch."]', 'Der große Hund gehört der alten Frau.', 2, 4),
  ('00000000-0000-4000-a000-00003285a4af', 'true_false', ''Im Deutschen steht das Verb an zweiter Position im Hauptsatz.', '["True","False"]', 'True', 1, 5),
  ('00000000-0000-4000-a000-00003285a4af', 'fill_blank', 'Complete: Ich ___ (news) Deutsch.', '["die Nachricht","lernt","lernst","lernen"]', 'lerne', 2, 6),
  ('00000000-0000-4000-a000-00003285a4af', 'multiple_choice', 'Wie lautet das deutsche Wort für "radio"?', '["das Radio","das Fernsehen","die Zeitschrift","der Journalist"]', 'das Radio', 1, 7),
  ('00000000-0000-4000-a000-00003285a4af', 'true_false', 'Im Deutschen werden alle Nomen großgeschrieben.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-00003285a4af', 'multiple_choice', 'How do you say "please" in a restaurant in Germany?', '["Bitte","Danke","Tschüss","Hallo"]', 'Bitte', 1, 9),
  ('00000000-0000-4000-a000-00003285a4af', 'fill_blank', 'Wo ___ (to live) du?', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 2, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, french_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-00003285a4af', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', NULL, 'Used in Medien und Kommunikation', 'formal', false, 1),
  ('00000000-0000-4000-a000-00003285a4af', 'Guten Tag!', 'Good day!', 'نهارك سعيد!', NULL, 'Used in Medien und Kommunikation', 'formal', false, 2),
  ('00000000-0000-4000-a000-00003285a4af', 'Hallo, wie geht es Ihnen?', 'Hello, how are you?', 'مرحباً، كيف حالكم؟', NULL, 'Used in Medien und Kommunikation', 'formal', false, 3),
  ('00000000-0000-4000-a000-00003285a4af', 'Schön, Sie kennenzulernen!', 'Nice to meet you!', 'سعيد بلقائكم!', NULL, 'Used in Medien und Kommunikation', 'formal', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-00003285a4af', 'die die Zeitung (die Zeitungen)', 'newspaper — الجريدة', 'noun', 'vocabulary', 1),
  ('00000000-0000-4000-a000-00003285a4af', 'das das Internet', 'internet — الإنترنت', 'noun', 'vocabulary', 2),
  ('00000000-0000-4000-a000-00003285a4af', 'der der Artikel (die Artikel)', 'article — المقال', 'noun', 'vocabulary', 3),
  ('00000000-0000-4000-a000-00003285a4af', 'die die Nachricht (die Nachrichten)', 'news — الخبر', 'noun', 'vocabulary', 4),
  ('00000000-0000-4000-a000-00003285a4af', 'das das Radio (die Radios)', 'radio — الراديو', 'noun', 'vocabulary', 5),
  ('00000000-0000-4000-a000-00003285a4af', 'das das Fernsehen', 'television — التلفاز', 'noun', 'vocabulary', 6),
  ('00000000-0000-4000-a000-00003285a4af', 'die die Zeitschrift (die Zeitschriften)', 'magazine — المجلة', 'noun', 'vocabulary', 7),
  ('00000000-0000-4000-a000-00003285a4af', 'der der Journalist (die Journalisten)', 'journalist — الصحفي', 'noun', 'vocabulary', 8),
  ('00000000-0000-4000-a000-00003285a4af', 'der der Beruf (die Berufe)', 'profession — المهنة', 'noun', 'vocabulary', 9),
  ('00000000-0000-4000-a000-00003285a4af', 'die die Firma (die Firmen)', 'company — الشركة', 'noun', 'vocabulary', 10),
  ('00000000-0000-4000-a000-00003285a4af', 'der der Kollege (die Kollegen)', 'colleague — الزميل', 'noun', 'vocabulary', 11),
  ('00000000-0000-4000-a000-00003285a4af', 'das das Büro (die Büros)', 'office — المكتب', 'noun', 'vocabulary', 12),
  ('00000000-0000-4000-a000-00003285a4af', 'die die Besprechung (die Besprechungen)', 'meeting — الاجتماع', 'noun', 'vocabulary', 13),
  ('00000000-0000-4000-a000-00003285a4af', 'der der Chef (die Chefs)', 'boss — المدير', 'noun', 'vocabulary', 14),
  ('00000000-0000-4000-a000-00003285a4af', 'das das Gehalt (die Gehälter)', 'salary — الراتب', 'noun', 'vocabulary', 15),
  ('00000000-0000-4000-a000-00003285a4af', 'Der große Hund gehört der alten Frau.', 'The big dog belongs to the old woman.', 'Adjektivdeklination (Adjective Declension)', 'grammar', 16),
  ('00000000-0000-4000-a000-00003285a4af', 'Ein interessantes Buch liegt auf dem Tisch.', 'An interesting book is on the table.', 'Adjektivdeklination (Adjective Declension)', 'grammar', 17);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, french_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-00003285a4af', 'Meinung äußern und diskutieren — Leseübung', 'Die Medienlandschaft in Deutschland ist vielfältig und frei. Es gibt öffentlich-rechtliche Sender wie ARD und ZDF sowie private Fernsehsender. Die bekanntesten deutschen Zeitungen sind die Süddeutsche Zeitung, die FAZ und die Bild-Zeitung. In den letzten Jahren haben soziale Medien wie TikTok und Instagram an Bedeutung gewonnen. Viele Jugendliche informieren sich hauptsächlich über soziale Netzwerke. Journalisten müssen sorgfältig recherchieren und verschiedene Quellen überprüfen, um Falschinformationen zu vermeiden.', 'The media landscape in Germany is diverse and free. There are public broadcasters like ARD and ZDF as well as private television stations. The best-known German newspapers are the Süddeutsche Zeitung, the FAZ and the Bild-Zeitung. In recent years, social media like TikTok and Instagram have gained importance. Many young people get their information mainly from social networks. Journalists must carefully research and verify different sources to avoid misinformation.', 'المشهد الإعلامي في ألمانيا متنوح ومستقل. هناك محطات البث العامة مثل ARD و ZDF بالإضافة إلى محطات تلفزيونية خاصة. أشهر الصحف الألمانية هي Süddeutsche Zeitung و FAZ و Bild-Zeitung. في السنوات الأخيرة اكتسبت وسائل التواصل الاجتماعي مثل TikTok و Instagram أهمية. كثير من الشباب يحصلون على معلوماتهم أساساً من الشبكات الاجتماعية. يجب على الصحفيين البحث بدقة والتحقق من المصادر المختلفة لتجنب المعلومات المضللة.', NULL, 66, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, french_translation, duration_seconds, speaker_count, scenario) values
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

[Lehrerin]: ممتاز! إلى الغد!', '[Lehrerin]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: ', 72, 2, 'Medien und Kommunikation');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-00003285a4af', '🔊 Sprechen: Meinung äußern und diskutieren', 'Discussion: You attend a German Stammtisch (weekly meetup). Discuss Expressing Opinions with the group. Express your opinion, agree/disagree, ask follow-up questions. Try to keep the conversation flowing for 2 minutes.', 'Expressing Opinions', ARRAY['Use discourse markers (also, jedoch, außerdem)','React naturally: "Ach so!", "Echt?", "Das stimmt!"','Paraphrase when you don''t know a word']::text[], ARRAY['die Zeitung','das Internet','der Artikel','die Nachricht','das Radio','das Fernsehen','die Zeitschrift','der Journalist']::text[], 60, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-00003285a4af', '✏️ Schreiben: Meinung äußern und diskutieren', 'Write a formal letter (200-250 words) to your German teacher explaining what you learned about "Expressing Opinions". Include: what surprised you, what was similar/different to your culture, and what you want to learn next. Use present_tense correctly.', ARRAY['Use paragraph breaks for structure','Connect ideas with "außerdem", "deshalb", "jedoch"','Check your verb position in Nebensätze']::text[], ARRAY['die Zeitung','das Internet','der Artikel','die Nachricht','das Radio','das Fernsehen','die Zeitschrift','der Journalist']::text[], ARRAY['Sentence structure','Vocabulary usage']::text[], 150, 250, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00003285a4af', 'Meinung äußern und diskutieren — Roleplay', 'Expressing Opinions', 'Student', 'Teacher', 'Practice conversation about Expressing Opinions', 'Hallo! Lass uns über dieses Thema sprechen.', 'intermediate', 1, ARRAY['die Zeitung','das Internet','der Artikel','die Nachricht','das Radio','das Fernsehen','die Zeitschrift','der Journalist']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00003285a4af', 'Meinung äußern und diskutieren — Advanced Roleplay', 'Expressing Opinions', 'Customer', 'Assistant', 'Extended conversation about Expressing Opinions', 'Guten Tag! Wie kann ich Ihnen helfen?', 'intermediate', 2, ARRAY['die Zeitung','das Internet','der Artikel','die Nachricht','das Radio','das Fernsehen','die Zeitschrift','der Journalist']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-00003285a4af', 'Meinung äußern und diskutieren — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Meinung äußern und diskutieren".', 'Creative practice for Expressing Opinions', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-00003285a4af', '📚 Hausaufgabe: Meinung äußern und diskutieren', 'Complete these tasks to reinforce "Meinung äußern und diskutieren".', 'mixed', '[{"description":"Create 10 flashcards from this lesson''s vocabulary — write German on one side, Arabic on the other. Test yourself 3 times."},{"description":"Write 6 sentences about Expressing Opinions: 2 statements, 2 questions, 2 negations — all using present_tense."},{"description":"Record yourself reading the dialogue aloud. Listen to the recording and note 3 things to improve."},{"description":"Find 3 real German websites, videos, or articles about Expressing Opinions. Note 5 new words you discovered."}]', 50, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-00003285a4af', '🎯 Excellent progress! This lesson covered Expressing Opinions (75 vocabulary items) and present_tense. You developed reading, listening, speaking, and writing skills in the context of media. Focus on your common mistakes area for maximum improvement.', '["75 vocabulary items about Expressing Opinions","present_tense — grammar explanation and practice","Reading comprehension: text about Expressing Opinions","Listening comprehension: dialogue about Expressing Opinions","Speaking practice: roleplay/discussion about Expressing Opinions","Writing task: text about Expressing Opinions"]', '[{"title":"Meinung äußern und diskutieren Review","summary":"present_tense — the main grammar focus. Focus on using this structure naturally in conversations and writing."}]', ARRAY['die Zeitung (newspaper)','das Internet (internet)','der Artikel (article)','die Nachricht (news)','das Radio (radio)']::text[], ARRAY['Don''t translate from Arabic word-for-word — German has different sentence structure','Learn every noun with its article: NEVER learn "Tisch" alone, always "der Tisch"','Watch out for verb position in Nebensätze']::text[], ARRAY['Practice 15-20 minutes daily — consistency beats intensity','Speak out loud: German pronunciation needs muscle memory','Use the new vocabulary within 24 hours or you''ll forget it','Watch German YouTube videos about Expressing Opinions for authentic input']::text[]);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00003285a4af', 'Pronunciation: Intonation and sentence melody', 'German sentences have a falling intonation at the end of statements. Questions starting with a verb rise at the end. W-questions fall at the end. Emphasise the stressed syllable — German stresses the first syllable of the root.

Common mistake for Arabic speakers: Arabic speakers often put stress on the wrong syllable. Remember: German root stress is usually on the first syllable.', '[]', '[{"german":"warum","arabic":"","english":"","phonetic":"/vaˈrʊm/"},{"german":"deshalb","arabic":"","english":"","phonetic":"/dɛsˈhalp/"}]', '[]', 10);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00003285a4af', 'translation', 'Translate to German: "I use the word "newspaper" in a sentence about Expressing Opinions."', '[]', 'Ich lese die Zeitung.', 'Use die  "die Zeitung" with the correct present_tense form.', 1, 40);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00003285a4af', 'translation', 'Translate to German: "I use the word "internet" in a sentence about Expressing Opinions."', '[]', 'Das Internet ist schnell.', 'Use das  "das Internet" with the correct present_tense form.', 1, 41);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00003285a4af', 'translation', 'Translate to German: "I use the word "article" in a sentence about Expressing Opinions."', '[]', 'Der Artikel ist interessant.', 'Use der  "der Artikel" with the correct present_tense form.', 1, 42);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00003285a4af', 'Culture: 🇩🇪 Deutsche Kultur: Expressing Opinions', 'Expressing Opinions in Germany has specific cultural nuances that differ from Arabic-speaking countries. Germans tend to separate their private and professional lives strictly. When dealing with Expressing Opinions in a professional context, use formal register and prepare factual arguments. Emotional appeals are less effective than logical reasoning.

لدى Expressing Opinions في ألمانيا فروق ثقافية دقيقة تختلف عن البلدان العربية. الألمان يفصلون بين حياتهم الخاصة والمهنية بشكل صارم.', '["Tip: Always use \"Sie\" (formal) with strangers and colleagues","Tip: Germans appreciate punctuality — arrive 5 minutes early","Tip: Direct feedback is a sign of respect, not criticism","Tip: Prepare factual arguments, not emotional appeals"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00003285a4af', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Incorrect preposition usage after verbs","correction":"Learn which preposition each verb requires (sich freuen auf, warten auf, denken an)","explanation":"Arabic and German have different sentence structures. Arabic is VSO, German is SVO with verb in position 2."},{"mistake":"Putting the verb at the end in main clauses","correction":"Verb stays in position 2 in main clauses","explanation":"Subordinate clause word order interferes"}]', 30);

  -- Lesson 5: Test: Medien und Kommunikation (L-B1-03-05)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-00003285a4ae', '00000000-0000-4000-a000-000039c2eae1', 'Test: Medien und Kommunikation', 'Module test on media and communication.', 'Module Test', 'test', '["Understand and apply present_tense rules correctly","Use present_tense in real conversations","Avoid common mistakes Arabic speakers make with present_tense","Read and understand present_tense in context","Listen and identify present_tense in speech","Write sentences using present_tense correctly"]', 40, 5, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, french_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-00003285a4ae', 'die Zeitung', 'الجريدة', 'newspaper', NULL, 'die', 'die Zeitungen', 'noun', 'Ich lese die Zeitung.', 'I read the newspaper.', 'A2', 1),
  ('00000000-0000-4000-a000-00003285a4ae', 'das Internet', 'الإنترنت', 'internet', NULL, 'das', NULL, 'noun', 'Das Internet ist schnell.', 'The internet is fast.', 'A2', 2),
  ('00000000-0000-4000-a000-00003285a4ae', 'der Artikel', 'المقال', 'article', NULL, 'der', 'die Artikel', 'noun', 'Der Artikel ist interessant.', 'The article is interesting.', 'B1', 3),
  ('00000000-0000-4000-a000-00003285a4ae', 'die Nachricht', 'الخبر', 'news', NULL, 'die', 'die Nachrichten', 'noun', 'Ich sehe die Nachrichten.', 'I watch the news.', 'A2', 4),
  ('00000000-0000-4000-a000-00003285a4ae', 'das Radio', 'الراديو', 'radio', NULL, 'das', 'die Radios', 'noun', 'Ich höre Radio.', 'I listen to the radio.', 'A2', 5),
  ('00000000-0000-4000-a000-00003285a4ae', 'das Fernsehen', 'التلفاز', 'television', NULL, 'das', NULL, 'noun', 'Das Fernsehen läuft.', 'The television is on.', 'A2', 6),
  ('00000000-0000-4000-a000-00003285a4ae', 'die Zeitschrift', 'المجلة', 'magazine', NULL, 'die', 'die Zeitschriften', 'noun', 'Die Zeitschrift erscheint monatlich.', 'The magazine is published monthly.', 'B1', 7),
  ('00000000-0000-4000-a000-00003285a4ae', 'der Journalist', 'الصحفي', 'journalist', NULL, 'der', 'die Journalisten', 'noun', 'Der Journalist schreibt einen Artikel.', 'The journalist writes an article.', 'B1', 8),
  ('00000000-0000-4000-a000-00003285a4ae', 'der Beruf', 'المهنة', 'profession', NULL, 'der', 'die Berufe', 'noun', 'Was ist dein Beruf?', 'What is your profession?', 'A1', 9),
  ('00000000-0000-4000-a000-00003285a4ae', 'die Firma', 'الشركة', 'company', NULL, 'die', 'die Firmen', 'noun', 'Die Firma ist in Berlin.', 'The company is in Berlin.', 'A1', 10),
  ('00000000-0000-4000-a000-00003285a4ae', 'der Kollege', 'الزميل', 'colleague', NULL, 'der', 'die Kollegen', 'noun', 'Mein Kollege hilft mir.', 'My colleague helps me.', 'A1', 11),
  ('00000000-0000-4000-a000-00003285a4ae', 'das Büro', 'المكتب', 'office', NULL, 'das', 'die Büros', 'noun', 'Das Büro ist im dritten Stock.', 'The office is on the third floor.', 'A1', 12),
  ('00000000-0000-4000-a000-00003285a4ae', 'die Besprechung', 'الاجتماع', 'meeting', NULL, 'die', 'die Besprechungen', 'noun', 'Wir haben eine Besprechung.', 'We have a meeting.', 'B1', 13),
  ('00000000-0000-4000-a000-00003285a4ae', 'der Chef', 'المدير', 'boss', NULL, 'der', 'die Chefs', 'noun', 'Mein Chef ist freundlich.', 'My boss is friendly.', 'A1', 14),
  ('00000000-0000-4000-a000-00003285a4ae', 'das Gehalt', 'الراتب', 'salary', NULL, 'das', 'die Gehälter', 'noun', 'Das Gehalt ist gut.', 'The salary is good.', 'B1', 15),
  ('00000000-0000-4000-a000-00003285a4ae', 'die Stelle', 'الوظيفة', 'position', NULL, 'die', 'die Stellen', 'noun', 'Ich suche eine neue Stelle.', 'I am looking for a new position.', 'B1', 16),
  ('00000000-0000-4000-a000-00003285a4ae', 'die Schule', 'المدرسة', 'school', NULL, 'die', 'die Schulen', 'noun', 'Die Kinder gehen zur Schule.', 'The children go to school.', 'A1', 17),
  ('00000000-0000-4000-a000-00003285a4ae', 'der Lehrer', 'المعلم', 'teacher', NULL, 'der', 'die Lehrer', 'noun', 'Der Lehrer erklärt die Grammatik.', 'The teacher explains the grammar.', 'A1', 18),
  ('00000000-0000-4000-a000-00003285a4ae', 'der Student', 'الطالب', 'student', NULL, 'der', 'die Studenten', 'noun', 'Der Student lernt Deutsch.', 'The student learns German.', 'A1', 19),
  ('00000000-0000-4000-a000-00003285a4ae', 'die Universität', 'الجامعة', 'university', NULL, 'die', 'die Universitäten', 'noun', 'Die Universität ist alt.', 'The university is old.', 'B1', 20),
  ('00000000-0000-4000-a000-00003285a4ae', 'der Kurs', 'الدورة', 'course', NULL, 'der', 'die Kurse', 'noun', 'Der Kurs kostet 200 Euro.', 'The course costs 200 euros.', 'A2', 21),
  ('00000000-0000-4000-a000-00003285a4ae', 'die Prüfung', 'الامتحان', 'exam', NULL, 'die', 'die Prüfungen', 'noun', 'Die Prüfung ist schwer.', 'The exam is difficult.', 'B1', 22),
  ('00000000-0000-4000-a000-00003285a4ae', 'das Studium', 'الدراسة الجامعية', 'studies', NULL, 'das', NULL, 'noun', 'Mein Studium dauert vier Jahre.', 'My studies take four years.', 'B1', 23),
  ('00000000-0000-4000-a000-00003285a4ae', 'lernen', 'يتعلم', 'to learn', NULL, NULL, NULL, 'verb', 'Ich lerne Deutsch.', 'I learn German.', 'A1', 24),
  ('00000000-0000-4000-a000-00003285a4ae', 'die Gesellschaft', 'المجتمع', 'society', NULL, 'die', NULL, 'noun', 'Die Gesellschaft verändert sich.', 'Society is changing.', 'B1', 25),
  ('00000000-0000-4000-a000-00003285a4ae', 'die Politik', 'السياسة', 'politics', NULL, 'die', NULL, 'noun', 'Politik ist ein wichtiges Thema.', 'Politics is an important topic.', 'B1', 26),
  ('00000000-0000-4000-a000-00003285a4ae', 'die Integration', 'الاندماج', 'integration', NULL, 'die', NULL, 'noun', 'Integration ist wichtig.', 'Integration is important.', 'B1', 27),
  ('00000000-0000-4000-a000-00003285a4ae', 'die Kultur', 'الثقافة', 'culture', NULL, 'die', NULL, 'noun', 'Die deutsche Kultur ist vielfältig.', 'German culture is diverse.', 'A2', 28),
  ('00000000-0000-4000-a000-00003285a4ae', 'der Bürger', 'المواطن', 'citizen', NULL, 'der', 'die Bürger', 'noun', 'Die Bürger wählen.', 'The citizens vote.', 'B1', 29),
  ('00000000-0000-4000-a000-00003285a4ae', 'die Freiheit', 'الحرية', 'freedom', NULL, 'die', NULL, 'noun', 'Freiheit ist ein Grundrecht.', 'Freedom is a basic right.', 'B1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00003285a4ae', 'Konjunktiv II: Höfliche Bitten und irreale Sätze (Subjunctive for Politeness) / صيغة الشرط الثانية: الطلبات المهذبة والجمل غير الواقعية', 'Konjunktiv II is used for polite requests (Ich hätte gern...), unreal situations (Wenn ich Zeit hätte...), and wishes (Ich wünschte, ich wäre...). For most verbs, use "würde + infinitive". Only a few common verbs have their own subjunctive form: hätte (hätten), wäre (wären), könnte (könnten).', '[{"rule":"würde + Infinitiv (most verbs)","note":"Ich würde gern kommen. (I would like to come.)"},{"rule":"hätte (haben), wäre (sein), könnte (können)","note":"Ich hätte gern einen Kaffee. (I would like a coffee.)"},{"rule":"Wenn... dann... (if... then...)","note":"Wenn ich Zeit hätte, würde ich reisen. (If I had time, I would travel.)"}]', '[{"german":"Ich hätte gern einen Kaffee, bitte.","arabic":"أود فنجان قهوة من فضلك.","english":"I would like a coffee, please."},{"german":"Wenn ich mehr Zeit hätte, würde ich Deutsch lernen.","arabic":"لو كان لدي وقت أكثر، لتعلمت الألمانية.","english":"If I had more time, I would learn German."},{"german":"Könnten Sie mir bitte helfen?","arabic":"هل يمكنكم مساعدتي من فضلكم؟","english":"Could you please help me?"}]', '[{"mistake":"Ich will einen Kaffee (too direct in restaurant)","correction":"Ich hätte gern einen Kaffee.","explanation":"In German restaurants, use Konjunktiv II to be polite, not \"ich will\"."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00003285a4ae', 'multiple_choice', 'Welches deutsche Wort bedeutet "newspaper"?', '["der Artikel","das Internet","das Radio","die Zeitung"]', 'die Zeitung', '"newspaper" = "die Zeitung" in German. Article: die Plural: die Zeitungen', 1, 1),
  ('00000000-0000-4000-a000-00003285a4ae', 'multiple_choice', 'Welches deutsche Wort bedeutet "internet"?', '["das Radio","die Nachricht","der Artikel","die Zeitung"]', 'das Internet', '"internet" = "das Internet" in German. Article: das ', 1, 2),
  ('00000000-0000-4000-a000-00003285a4ae', 'multiple_choice', 'Welches deutsche Wort bedeutet "article"?', '["der Artikel","die Zeitung","das Internet","die Nachricht"]', 'der Artikel', '"article" = "der Artikel" in German. Article: der Plural: die Artikel', 1, 3),
  ('00000000-0000-4000-a000-00003285a4ae', 'multiple_choice', 'Welches deutsche Wort bedeutet "news"?', '["die Nachricht","die Zeitung","das Internet","der Artikel"]', 'die Nachricht', '"news" = "die Nachricht" in German. Article: die Plural: die Nachrichten', 1, 4),
  ('00000000-0000-4000-a000-00003285a4ae', 'multiple_choice', 'Welches deutsche Wort bedeutet "radio"?', '["der Artikel","die Nachricht","das Radio","die Zeitung"]', 'das Radio', '"radio" = "das Radio" in German. Article: das Plural: die Radios', 1, 5),
  ('00000000-0000-4000-a000-00003285a4ae', 'fill_gap', 'Ergänze den Satz: Ich ___ gern über Module Test. (sprechen)', '["spreche","sprichst","spricht","sprechen"]', 'spreche', 'ich spreche gern = I like to speak. Stem: sprech- + e.', 2, 6),
  ('00000000-0000-4000-a000-00003285a4ae', 'translation', 'Übersetze ins Deutsche: "I am learning about Module Test."', '["Ich lerne über Module Test.","Ich lerne Module Test.","Lerne ich Module Test."]', 'Ich lerne über Module Test.', '"Ich lerne über..." = "I am learning about..."', 2, 7),
  ('00000000-0000-4000-a000-00003285a4ae', 'matching', 'Match: Which word pairs are correct?', '["die Zeitung - newspaper, das Internet - internet"]', 'Matched correctly', 'Each German word has a unique English equivalent.', 2, 8);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-00003285a4ae', 'multiple_choice', 'Was bedeutet "die Zeitung" auf Deutsch?', '["newspaper","to run","beautiful","yesterday"]', 'newspaper', 1, 1),
  ('00000000-0000-4000-a000-00003285a4ae', 'multiple_choice', 'Welcher Artikel gehört zu "das Internet"?', '["der","die","das","den"]', 'das', 1, 2),
  ('00000000-0000-4000-a000-00003285a4ae', 'true_false', 'Das Wort "der Artikel" gehört zum Thema Module Test.', '["True","False"]', 'True', 1, 3),
  ('00000000-0000-4000-a000-00003285a4ae', 'multiple_choice', 'Welcher Satz verwendet present_tense?', '["Ich hätte gern einen Kaffee, bitte.","Wenn ich mehr Zeit hätte, würde ich Deutsch lernen.","Könnten Sie mir bitte helfen?"]', 'Ich hätte gern einen Kaffee, bitte.', 2, 4),
  ('00000000-0000-4000-a000-00003285a4ae', 'true_false', ''Im Deutschen steht das Verb an zweiter Position im Hauptsatz.', '["True","False"]', 'True', 1, 5),
  ('00000000-0000-4000-a000-00003285a4ae', 'fill_blank', 'Complete: Ich ___ (news) Deutsch.', '["die Nachricht","lernt","lernst","lernen"]', 'lerne', 2, 6),
  ('00000000-0000-4000-a000-00003285a4ae', 'multiple_choice', 'Wie lautet das deutsche Wort für "radio"?', '["das Radio","das Fernsehen","die Zeitschrift","der Journalist"]', 'das Radio', 1, 7),
  ('00000000-0000-4000-a000-00003285a4ae', 'true_false', 'Im Deutschen werden alle Nomen großgeschrieben.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-00003285a4ae', 'multiple_choice', 'How do you say "please" in a restaurant in Germany?', '["Bitte","Danke","Tschüss","Hallo"]', 'Bitte', 1, 9),
  ('00000000-0000-4000-a000-00003285a4ae', 'fill_blank', 'Wo ___ (to live) du?', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 2, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, french_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-00003285a4ae', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', NULL, 'Used in Medien und Kommunikation', 'formal', false, 1),
  ('00000000-0000-4000-a000-00003285a4ae', 'Guten Tag!', 'Good day!', 'نهارك سعيد!', NULL, 'Used in Medien und Kommunikation', 'formal', false, 2),
  ('00000000-0000-4000-a000-00003285a4ae', 'Hallo, wie geht es Ihnen?', 'Hello, how are you?', 'مرحباً، كيف حالكم؟', NULL, 'Used in Medien und Kommunikation', 'formal', false, 3),
  ('00000000-0000-4000-a000-00003285a4ae', 'Schön, Sie kennenzulernen!', 'Nice to meet you!', 'سعيد بلقائكم!', NULL, 'Used in Medien und Kommunikation', 'formal', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-00003285a4ae', 'die die Zeitung (die Zeitungen)', 'newspaper — الجريدة', 'noun', 'vocabulary', 1),
  ('00000000-0000-4000-a000-00003285a4ae', 'das das Internet', 'internet — الإنترنت', 'noun', 'vocabulary', 2),
  ('00000000-0000-4000-a000-00003285a4ae', 'der der Artikel (die Artikel)', 'article — المقال', 'noun', 'vocabulary', 3),
  ('00000000-0000-4000-a000-00003285a4ae', 'die die Nachricht (die Nachrichten)', 'news — الخبر', 'noun', 'vocabulary', 4),
  ('00000000-0000-4000-a000-00003285a4ae', 'das das Radio (die Radios)', 'radio — الراديو', 'noun', 'vocabulary', 5),
  ('00000000-0000-4000-a000-00003285a4ae', 'das das Fernsehen', 'television — التلفاز', 'noun', 'vocabulary', 6),
  ('00000000-0000-4000-a000-00003285a4ae', 'die die Zeitschrift (die Zeitschriften)', 'magazine — المجلة', 'noun', 'vocabulary', 7),
  ('00000000-0000-4000-a000-00003285a4ae', 'der der Journalist (die Journalisten)', 'journalist — الصحفي', 'noun', 'vocabulary', 8),
  ('00000000-0000-4000-a000-00003285a4ae', 'der der Beruf (die Berufe)', 'profession — المهنة', 'noun', 'vocabulary', 9),
  ('00000000-0000-4000-a000-00003285a4ae', 'die die Firma (die Firmen)', 'company — الشركة', 'noun', 'vocabulary', 10),
  ('00000000-0000-4000-a000-00003285a4ae', 'der der Kollege (die Kollegen)', 'colleague — الزميل', 'noun', 'vocabulary', 11),
  ('00000000-0000-4000-a000-00003285a4ae', 'das das Büro (die Büros)', 'office — المكتب', 'noun', 'vocabulary', 12),
  ('00000000-0000-4000-a000-00003285a4ae', 'die die Besprechung (die Besprechungen)', 'meeting — الاجتماع', 'noun', 'vocabulary', 13),
  ('00000000-0000-4000-a000-00003285a4ae', 'der der Chef (die Chefs)', 'boss — المدير', 'noun', 'vocabulary', 14),
  ('00000000-0000-4000-a000-00003285a4ae', 'das das Gehalt (die Gehälter)', 'salary — الراتب', 'noun', 'vocabulary', 15),
  ('00000000-0000-4000-a000-00003285a4ae', 'Ich hätte gern einen Kaffee, bitte.', 'I would like a coffee, please.', 'Konjunktiv II: Höfliche Bitten und irreale Sätze (Subjunctive for Politeness)', 'grammar', 16),
  ('00000000-0000-4000-a000-00003285a4ae', 'Wenn ich mehr Zeit hätte, würde ich Deutsch lernen.', 'If I had more time, I would learn German.', 'Konjunktiv II: Höfliche Bitten und irreale Sätze (Subjunctive for Politeness)', 'grammar', 17),
  ('00000000-0000-4000-a000-00003285a4ae', 'Könnten Sie mir bitte helfen?', 'Could you please help me?', 'Konjunktiv II: Höfliche Bitten und irreale Sätze (Subjunctive for Politeness)', 'grammar', 18);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, french_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-00003285a4ae', 'Test: Medien und Kommunikation — Leseübung', 'Die Medienlandschaft in Deutschland ist vielfältig und frei. Es gibt öffentlich-rechtliche Sender wie ARD und ZDF sowie private Fernsehsender. Die bekanntesten deutschen Zeitungen sind die Süddeutsche Zeitung, die FAZ und die Bild-Zeitung. In den letzten Jahren haben soziale Medien wie TikTok und Instagram an Bedeutung gewonnen. Viele Jugendliche informieren sich hauptsächlich über soziale Netzwerke. Journalisten müssen sorgfältig recherchieren und verschiedene Quellen überprüfen, um Falschinformationen zu vermeiden.', 'The media landscape in Germany is diverse and free. There are public broadcasters like ARD and ZDF as well as private television stations. The best-known German newspapers are the Süddeutsche Zeitung, the FAZ and the Bild-Zeitung. In recent years, social media like TikTok and Instagram have gained importance. Many young people get their information mainly from social networks. Journalists must carefully research and verify different sources to avoid misinformation.', 'المشهد الإعلامي في ألمانيا متنوح ومستقل. هناك محطات البث العامة مثل ARD و ZDF بالإضافة إلى محطات تلفزيونية خاصة. أشهر الصحف الألمانية هي Süddeutsche Zeitung و FAZ و Bild-Zeitung. في السنوات الأخيرة اكتسبت وسائل التواصل الاجتماعي مثل TikTok و Instagram أهمية. كثير من الشباب يحصلون على معلوماتهم أساساً من الشبكات الاجتماعية. يجب على الصحفيين البحث بدقة والتحقق من المصادر المختلفة لتجنب المعلومات المضللة.', NULL, 66, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, french_translation, duration_seconds, speaker_count, scenario) values
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

[Lehrerin]: ممتاز! إلى الغد!', '[Lehrerin]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: ', 72, 2, 'Medien und Kommunikation');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-00003285a4ae', '🔊 Sprechen: Test: Medien und Kommunikation', 'Discussion: You attend a German Stammtisch (weekly meetup). Discuss Module Test with the group. Express your opinion, agree/disagree, ask follow-up questions. Try to keep the conversation flowing for 2 minutes.', 'Module Test', ARRAY['Use discourse markers (also, jedoch, außerdem)','React naturally: "Ach so!", "Echt?", "Das stimmt!"','Paraphrase when you don''t know a word']::text[], ARRAY['die Zeitung','das Internet','der Artikel','die Nachricht','das Radio','das Fernsehen','die Zeitschrift','der Journalist']::text[], 60, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-00003285a4ae', '✏️ Schreiben: Test: Medien und Kommunikation', 'Write a formal letter (200-250 words) to your German teacher explaining what you learned about "Module Test". Include: what surprised you, what was similar/different to your culture, and what you want to learn next. Use present_tense correctly.', ARRAY['Use paragraph breaks for structure','Connect ideas with "außerdem", "deshalb", "jedoch"','Check your verb position in Nebensätze']::text[], ARRAY['die Zeitung','das Internet','der Artikel','die Nachricht','das Radio','das Fernsehen','die Zeitschrift','der Journalist']::text[], ARRAY['Sentence structure','Vocabulary usage']::text[], 150, 250, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00003285a4ae', 'Test: Medien und Kommunikation — Roleplay', 'Module Test', 'Student', 'Teacher', 'Practice conversation about Module Test', 'Hallo! Lass uns über dieses Thema sprechen.', 'intermediate', 1, ARRAY['die Zeitung','das Internet','der Artikel','die Nachricht','das Radio','das Fernsehen','die Zeitschrift','der Journalist']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00003285a4ae', 'Test: Medien und Kommunikation — Advanced Roleplay', 'Module Test', 'Customer', 'Assistant', 'Extended conversation about Module Test', 'Guten Tag! Wie kann ich Ihnen helfen?', 'intermediate', 2, ARRAY['die Zeitung','das Internet','der Artikel','die Nachricht','das Radio','das Fernsehen','die Zeitschrift','der Journalist']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-00003285a4ae', 'Test: Medien und Kommunikation — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Test: Medien und Kommunikation".', 'Creative practice for Module Test', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-00003285a4ae', '📚 Hausaufgabe: Test: Medien und Kommunikation', 'Complete these tasks to reinforce "Test: Medien und Kommunikation".', 'mixed', '[{"description":"Create 10 flashcards from this lesson''s vocabulary — write German on one side, Arabic on the other. Test yourself 3 times."},{"description":"Write 6 sentences about Module Test: 2 statements, 2 questions, 2 negations — all using present_tense."},{"description":"Record yourself reading the dialogue aloud. Listen to the recording and note 3 things to improve."},{"description":"Find 3 real German websites, videos, or articles about Module Test. Note 5 new words you discovered."}]', 50, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-00003285a4ae', '🎯 Excellent progress! This lesson covered Module Test (75 vocabulary items) and present_tense. You developed reading, listening, speaking, and writing skills in the context of media. Focus on your common mistakes area for maximum improvement.', '["75 vocabulary items about Module Test","present_tense — grammar explanation and practice","Reading comprehension: text about Module Test","Listening comprehension: dialogue about Module Test","Speaking practice: roleplay/discussion about Module Test","Writing task: text about Module Test"]', '[{"title":"Test: Medien und Kommunikation Review","summary":"present_tense — the main grammar focus. Focus on using this structure naturally in conversations and writing."}]', ARRAY['die Zeitung (newspaper)','das Internet (internet)','der Artikel (article)','die Nachricht (news)','das Radio (radio)']::text[], ARRAY['Don''t translate from Arabic word-for-word — German has different sentence structure','Learn every noun with its article: NEVER learn "Tisch" alone, always "der Tisch"','Watch out for verb position in Nebensätze']::text[], ARRAY['Practice 15-20 minutes daily — consistency beats intensity','Speak out loud: German pronunciation needs muscle memory','Use the new vocabulary within 24 hours or you''ll forget it','Watch German YouTube videos about Module Test for authentic input']::text[]);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00003285a4ae', 'Pronunciation: Intonation and sentence melody', 'German sentences have a falling intonation at the end of statements. Questions starting with a verb rise at the end. W-questions fall at the end. Emphasise the stressed syllable — German stresses the first syllable of the root.

Common mistake for Arabic speakers: Arabic speakers often put stress on the wrong syllable. Remember: German root stress is usually on the first syllable.', '[]', '[{"german":"warum","arabic":"","english":"","phonetic":"/vaˈrʊm/"},{"german":"deshalb","arabic":"","english":"","phonetic":"/dɛsˈhalp/"}]', '[]', 10);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00003285a4ae', 'translation', 'Translate to German: "I use the word "newspaper" in a sentence about Module Test."', '[]', 'Ich lese die Zeitung.', 'Use die  "die Zeitung" with the correct present_tense form.', 1, 40);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00003285a4ae', 'translation', 'Translate to German: "I use the word "internet" in a sentence about Module Test."', '[]', 'Das Internet ist schnell.', 'Use das  "das Internet" with the correct present_tense form.', 1, 41);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00003285a4ae', 'translation', 'Translate to German: "I use the word "article" in a sentence about Module Test."', '[]', 'Der Artikel ist interessant.', 'Use der  "der Artikel" with the correct present_tense form.', 1, 42);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00003285a4ae', 'Culture: 🇩🇪 Deutsche Kultur: Module Test', 'Module Test in Germany has specific cultural nuances that differ from Arabic-speaking countries. Germans tend to separate their private and professional lives strictly. When dealing with Module Test in a professional context, use formal register and prepare factual arguments. Emotional appeals are less effective than logical reasoning.

لدى Module Test في ألمانيا فروق ثقافية دقيقة تختلف عن البلدان العربية. الألمان يفصلون بين حياتهم الخاصة والمهنية بشكل صارم.', '["Tip: Always use \"Sie\" (formal) with strangers and colleagues","Tip: Germans appreciate punctuality — arrive 5 minutes early","Tip: Direct feedback is a sign of respect, not criticism","Tip: Prepare factual arguments, not emotional appeals"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00003285a4ae', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Incorrect preposition usage after verbs","correction":"Learn which preposition each verb requires (sich freuen auf, warten auf, denken an)","explanation":"Arabic and German have different sentence structures. Arabic is VSO, German is SVO with verb in position 2."},{"mistake":"Putting the verb at the end in main clauses","correction":"Verb stays in position 2 in main clauses","explanation":"Subordinate clause word order interferes"}]', 30);

  -- Module 4: Bildung und Lernen
  insert into public.course_modules (id, level_id, title, description, objectives, order_index, estimated_hours, is_published)
  values ('00000000-0000-4000-a000-000039c2eae2', 'B1', 'Bildung und Lernen', 'Talk about education, school systems, and learning experiences.', '["Describe school systems and education","Talk about learning experiences","Use two-way prepositions (Wechselpräpositionen)","Give presentations on familiar topics","Discuss language learning strategies"]', 4, 5, true)
  on conflict (id) do nothing;

  -- Lesson 1: Das deutsche Schulsystem (L-B1-04-01)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-000032853053', '00000000-0000-4000-a000-000039c2eae2', 'Das deutsche Schulsystem', 'Learn about the German education system.', 'German School System', 'vocabulary', '["Understand and use 75 key vocabulary words about German School System","Apply present_tense correctly in sentences","Read and comprehend a text about German School System","Listen and understand a natural dialogue about German School System","Speak about German School System with confidence","Write a short text about German School System using new vocabulary"]', 50, 1, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, french_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-000032853053', 'die Schule', 'المدرسة', 'school', NULL, 'die', 'die Schulen', 'noun', 'Die Kinder gehen zur Schule.', 'The children go to school.', 'A1', 1),
  ('00000000-0000-4000-a000-000032853053', 'der Lehrer', 'المعلم', 'teacher', NULL, 'der', 'die Lehrer', 'noun', 'Der Lehrer erklärt die Grammatik.', 'The teacher explains the grammar.', 'A1', 2),
  ('00000000-0000-4000-a000-000032853053', 'der Student', 'الطالب', 'student', NULL, 'der', 'die Studenten', 'noun', 'Der Student lernt Deutsch.', 'The student learns German.', 'A1', 3),
  ('00000000-0000-4000-a000-000032853053', 'die Universität', 'الجامعة', 'university', NULL, 'die', 'die Universitäten', 'noun', 'Die Universität ist alt.', 'The university is old.', 'B1', 4),
  ('00000000-0000-4000-a000-000032853053', 'der Kurs', 'الدورة', 'course', NULL, 'der', 'die Kurse', 'noun', 'Der Kurs kostet 200 Euro.', 'The course costs 200 euros.', 'A2', 5),
  ('00000000-0000-4000-a000-000032853053', 'die Prüfung', 'الامتحان', 'exam', NULL, 'die', 'die Prüfungen', 'noun', 'Die Prüfung ist schwer.', 'The exam is difficult.', 'B1', 6),
  ('00000000-0000-4000-a000-000032853053', 'das Studium', 'الدراسة الجامعية', 'studies', NULL, 'das', NULL, 'noun', 'Mein Studium dauert vier Jahre.', 'My studies take four years.', 'B1', 7),
  ('00000000-0000-4000-a000-000032853053', 'lernen', 'يتعلم', 'to learn', NULL, NULL, NULL, 'verb', 'Ich lerne Deutsch.', 'I learn German.', 'A1', 8),
  ('00000000-0000-4000-a000-000032853053', 'der Beruf', 'المهنة', 'profession', NULL, 'der', 'die Berufe', 'noun', 'Was ist dein Beruf?', 'What is your profession?', 'A1', 9),
  ('00000000-0000-4000-a000-000032853053', 'die Firma', 'الشركة', 'company', NULL, 'die', 'die Firmen', 'noun', 'Die Firma ist in Berlin.', 'The company is in Berlin.', 'A1', 10),
  ('00000000-0000-4000-a000-000032853053', 'der Kollege', 'الزميل', 'colleague', NULL, 'der', 'die Kollegen', 'noun', 'Mein Kollege hilft mir.', 'My colleague helps me.', 'A1', 11),
  ('00000000-0000-4000-a000-000032853053', 'das Büro', 'المكتب', 'office', NULL, 'das', 'die Büros', 'noun', 'Das Büro ist im dritten Stock.', 'The office is on the third floor.', 'A1', 12),
  ('00000000-0000-4000-a000-000032853053', 'die Besprechung', 'الاجتماع', 'meeting', NULL, 'die', 'die Besprechungen', 'noun', 'Wir haben eine Besprechung.', 'We have a meeting.', 'B1', 13),
  ('00000000-0000-4000-a000-000032853053', 'der Chef', 'المدير', 'boss', NULL, 'der', 'die Chefs', 'noun', 'Mein Chef ist freundlich.', 'My boss is friendly.', 'A1', 14),
  ('00000000-0000-4000-a000-000032853053', 'das Gehalt', 'الراتب', 'salary', NULL, 'das', 'die Gehälter', 'noun', 'Das Gehalt ist gut.', 'The salary is good.', 'B1', 15),
  ('00000000-0000-4000-a000-000032853053', 'die Stelle', 'الوظيفة', 'position', NULL, 'die', 'die Stellen', 'noun', 'Ich suche eine neue Stelle.', 'I am looking for a new position.', 'B1', 16),
  ('00000000-0000-4000-a000-000032853053', 'die Zeitung', 'الجريدة', 'newspaper', NULL, 'die', 'die Zeitungen', 'noun', 'Ich lese die Zeitung.', 'I read the newspaper.', 'A2', 17),
  ('00000000-0000-4000-a000-000032853053', 'das Internet', 'الإنترنت', 'internet', NULL, 'das', NULL, 'noun', 'Das Internet ist schnell.', 'The internet is fast.', 'A2', 18),
  ('00000000-0000-4000-a000-000032853053', 'der Artikel', 'المقال', 'article', NULL, 'der', 'die Artikel', 'noun', 'Der Artikel ist interessant.', 'The article is interesting.', 'B1', 19),
  ('00000000-0000-4000-a000-000032853053', 'die Nachricht', 'الخبر', 'news', NULL, 'die', 'die Nachrichten', 'noun', 'Ich sehe die Nachrichten.', 'I watch the news.', 'A2', 20),
  ('00000000-0000-4000-a000-000032853053', 'das Radio', 'الراديو', 'radio', NULL, 'das', 'die Radios', 'noun', 'Ich höre Radio.', 'I listen to the radio.', 'A2', 21),
  ('00000000-0000-4000-a000-000032853053', 'das Fernsehen', 'التلفاز', 'television', NULL, 'das', NULL, 'noun', 'Das Fernsehen läuft.', 'The television is on.', 'A2', 22),
  ('00000000-0000-4000-a000-000032853053', 'die Zeitschrift', 'المجلة', 'magazine', NULL, 'die', 'die Zeitschriften', 'noun', 'Die Zeitschrift erscheint monatlich.', 'The magazine is published monthly.', 'B1', 23),
  ('00000000-0000-4000-a000-000032853053', 'der Journalist', 'الصحفي', 'journalist', NULL, 'der', 'die Journalisten', 'noun', 'Der Journalist schreibt einen Artikel.', 'The journalist writes an article.', 'B1', 24),
  ('00000000-0000-4000-a000-000032853053', 'die Gesellschaft', 'المجتمع', 'society', NULL, 'die', NULL, 'noun', 'Die Gesellschaft verändert sich.', 'Society is changing.', 'B1', 25),
  ('00000000-0000-4000-a000-000032853053', 'die Politik', 'السياسة', 'politics', NULL, 'die', NULL, 'noun', 'Politik ist ein wichtiges Thema.', 'Politics is an important topic.', 'B1', 26),
  ('00000000-0000-4000-a000-000032853053', 'die Integration', 'الاندماج', 'integration', NULL, 'die', NULL, 'noun', 'Integration ist wichtig.', 'Integration is important.', 'B1', 27),
  ('00000000-0000-4000-a000-000032853053', 'die Kultur', 'الثقافة', 'culture', NULL, 'die', NULL, 'noun', 'Die deutsche Kultur ist vielfältig.', 'German culture is diverse.', 'A2', 28),
  ('00000000-0000-4000-a000-000032853053', 'der Bürger', 'المواطن', 'citizen', NULL, 'der', 'die Bürger', 'noun', 'Die Bürger wählen.', 'The citizens vote.', 'B1', 29),
  ('00000000-0000-4000-a000-000032853053', 'die Freiheit', 'الحرية', 'freedom', NULL, 'die', NULL, 'noun', 'Freiheit ist ein Grundrecht.', 'Freedom is a basic right.', 'B1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000032853053', 'Adjektivdeklination (Adjective Declension) / تصريف الصفات', 'When an adjective comes before a noun, it must agree in gender, number, and case. There are three declension patterns: after "der" words (weak), after "ein" words (mixed), and without article (strong). The endings depend on which information the article already provides.', '[{"rule":"Weak (after der/die/das): -e or -en","note":"der gute Mann, die gute Frau, das gute Kind, die guten Leute"},{"rule":"Mixed (after ein/mein/kein): article ending + adjective ending","note":"ein guter Mann, eine gute Frau, ein gutes Kind, keine guten Leute"}]', '[{"german":"Der große Hund gehört der alten Frau.","arabic":"الكلب الكبير ملك للمرأة العجوز.","english":"The big dog belongs to the old woman."},{"german":"Ein interessantes Buch liegt auf dem Tisch.","arabic":"كتاب مثير للاهتمام على الطاولة.","english":"An interesting book is on the table."}]', '[{"mistake":"Der groß Hund (no ending on adjective)","correction":"Der große Hund","explanation":"Adjectives before nouns MUST have an ending in German."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000032853053', 'multiple_choice', 'Welches deutsche Wort bedeutet "school"?', '["der Lehrer","die Universität","die Schule","der Student"]', 'die Schule', '"school" = "die Schule" in German. Article: die Plural: die Schulen', 1, 1),
  ('00000000-0000-4000-a000-000032853053', 'multiple_choice', 'Welches deutsche Wort bedeutet "teacher"?', '["der Lehrer","die Schule","der Student","die Universität"]', 'der Lehrer', '"teacher" = "der Lehrer" in German. Article: der Plural: die Lehrer', 1, 2),
  ('00000000-0000-4000-a000-000032853053', 'multiple_choice', 'Welches deutsche Wort bedeutet "student"?', '["der Student","die Schule","der Lehrer","die Universität"]', 'der Student', '"student" = "der Student" in German. Article: der Plural: die Studenten', 1, 3),
  ('00000000-0000-4000-a000-000032853053', 'multiple_choice', 'Welches deutsche Wort bedeutet "university"?', '["der Lehrer","die Universität","der Kurs","der Student"]', 'die Universität', '"university" = "die Universität" in German. Article: die Plural: die Universitäten', 1, 4),
  ('00000000-0000-4000-a000-000032853053', 'multiple_choice', 'Welches deutsche Wort bedeutet "course"?', '["der Student","der Lehrer","die Schule","der Kurs"]', 'der Kurs', '"course" = "der Kurs" in German. Article: der Plural: die Kurse', 1, 5),
  ('00000000-0000-4000-a000-000032853053', 'fill_gap', 'Ergänze den Satz: Ich ___ gern über German School System. (sprechen)', '["spreche","sprichst","spricht","sprechen"]', 'spreche', 'ich spreche gern = I like to speak. Stem: sprech- + e.', 2, 6),
  ('00000000-0000-4000-a000-000032853053', 'translation', 'Übersetze ins Deutsche: "I am learning about German School System."', '["Ich lerne über German School System.","Ich lerne German School System.","Lerne ich German School System."]', 'Ich lerne über German School System.', '"Ich lerne über..." = "I am learning about..."', 2, 7),
  ('00000000-0000-4000-a000-000032853053', 'matching', 'Match: Which word pairs are correct?', '["die Schule - school, der Lehrer - teacher"]', 'Matched correctly', 'Each German word has a unique English equivalent.', 2, 8);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-000032853053', 'multiple_choice', 'Was bedeutet "die Schule" auf Deutsch?', '["school","to run","beautiful","yesterday"]', 'school', 1, 1),
  ('00000000-0000-4000-a000-000032853053', 'multiple_choice', 'Welcher Artikel gehört zu "der Lehrer"?', '["der","die","das","den"]', 'der', 1, 2),
  ('00000000-0000-4000-a000-000032853053', 'true_false', 'Das Wort "der Student" gehört zum Thema German School System.', '["True","False"]', 'True', 1, 3),
  ('00000000-0000-4000-a000-000032853053', 'multiple_choice', 'Welcher Satz verwendet present_tense?', '["Der große Hund gehört der alten Frau.","Ein interessantes Buch liegt auf dem Tisch."]', 'Der große Hund gehört der alten Frau.', 2, 4),
  ('00000000-0000-4000-a000-000032853053', 'true_false', ''Im Deutschen steht das Verb an zweiter Position im Hauptsatz.', '["True","False"]', 'True', 1, 5),
  ('00000000-0000-4000-a000-000032853053', 'fill_blank', 'Complete: Ich ___ (university) Deutsch.', '["die Universität","lernt","lernst","lernen"]', 'lerne', 2, 6),
  ('00000000-0000-4000-a000-000032853053', 'multiple_choice', 'Wie lautet das deutsche Wort für "course"?', '["der Kurs","die Prüfung","das Studium","lernen"]', 'der Kurs', 1, 7),
  ('00000000-0000-4000-a000-000032853053', 'true_false', 'Im Deutschen werden alle Nomen großgeschrieben.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-000032853053', 'multiple_choice', 'How do you say "please" in a restaurant in Germany?', '["Bitte","Danke","Tschüss","Hallo"]', 'Bitte', 1, 9),
  ('00000000-0000-4000-a000-000032853053', 'fill_blank', 'Wo ___ (to live) du?', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 2, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, french_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-000032853053', 'Ich studiere an der Universität.', 'I study at the university.', 'أدرس في الجامعة.', NULL, 'Used in Bildung und Lernen', 'neutral', false, 1),
  ('00000000-0000-4000-a000-000032853053', 'Können Sie das bitte erklären?', 'Can you please explain that?', 'هل يمكنكم شرح ذلك من فضلكم؟', NULL, 'Used in Bildung und Lernen', 'formal', false, 2),
  ('00000000-0000-4000-a000-000032853053', 'Ich habe eine Frage.', 'I have a question.', 'لدي سؤال.', NULL, 'Used in Bildung und Lernen', 'neutral', false, 3),
  ('00000000-0000-4000-a000-000032853053', 'Das verstehe ich nicht.', 'I don''t understand that.', 'هذا لا أفهمه.', NULL, 'Used in Bildung und Lernen', 'neutral', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-000032853053', 'die die Schule (die Schulen)', 'school — المدرسة', 'noun', 'vocabulary', 1),
  ('00000000-0000-4000-a000-000032853053', 'der der Lehrer (die Lehrer)', 'teacher — المعلم', 'noun', 'vocabulary', 2),
  ('00000000-0000-4000-a000-000032853053', 'der der Student (die Studenten)', 'student — الطالب', 'noun', 'vocabulary', 3),
  ('00000000-0000-4000-a000-000032853053', 'die die Universität (die Universitäten)', 'university — الجامعة', 'noun', 'vocabulary', 4),
  ('00000000-0000-4000-a000-000032853053', 'der der Kurs (die Kurse)', 'course — الدورة', 'noun', 'vocabulary', 5),
  ('00000000-0000-4000-a000-000032853053', 'die die Prüfung (die Prüfungen)', 'exam — الامتحان', 'noun', 'vocabulary', 6),
  ('00000000-0000-4000-a000-000032853053', 'das das Studium', 'studies — الدراسة الجامعية', 'noun', 'vocabulary', 7),
  ('00000000-0000-4000-a000-000032853053', 'lernen', 'to learn — يتعلم', 'verb', 'vocabulary', 8),
  ('00000000-0000-4000-a000-000032853053', 'der der Beruf (die Berufe)', 'profession — المهنة', 'noun', 'vocabulary', 9),
  ('00000000-0000-4000-a000-000032853053', 'die die Firma (die Firmen)', 'company — الشركة', 'noun', 'vocabulary', 10),
  ('00000000-0000-4000-a000-000032853053', 'der der Kollege (die Kollegen)', 'colleague — الزميل', 'noun', 'vocabulary', 11),
  ('00000000-0000-4000-a000-000032853053', 'das das Büro (die Büros)', 'office — المكتب', 'noun', 'vocabulary', 12),
  ('00000000-0000-4000-a000-000032853053', 'die die Besprechung (die Besprechungen)', 'meeting — الاجتماع', 'noun', 'vocabulary', 13),
  ('00000000-0000-4000-a000-000032853053', 'der der Chef (die Chefs)', 'boss — المدير', 'noun', 'vocabulary', 14),
  ('00000000-0000-4000-a000-000032853053', 'das das Gehalt (die Gehälter)', 'salary — الراتب', 'noun', 'vocabulary', 15),
  ('00000000-0000-4000-a000-000032853053', 'Der große Hund gehört der alten Frau.', 'The big dog belongs to the old woman.', 'Adjektivdeklination (Adjective Declension)', 'grammar', 16),
  ('00000000-0000-4000-a000-000032853053', 'Ein interessantes Buch liegt auf dem Tisch.', 'An interesting book is on the table.', 'Adjektivdeklination (Adjective Declension)', 'grammar', 17);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, french_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-000032853053', 'Das deutsche Schulsystem — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', NULL, 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, french_translation, duration_seconds, speaker_count, scenario) values
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

[Lehrerin]: ممتاز! إلى الغد!', '[Lehrerin]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: ', 72, 2, 'Bildung und Lernen');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-000032853053', '🔊 Sprechen: Das deutsche Schulsystem', 'Discussion: You attend a German Stammtisch (weekly meetup). Discuss German School System with the group. Express your opinion, agree/disagree, ask follow-up questions. Try to keep the conversation flowing for 2 minutes.', 'German School System', ARRAY['Use discourse markers (also, jedoch, außerdem)','React naturally: "Ach so!", "Echt?", "Das stimmt!"','Paraphrase when you don''t know a word']::text[], ARRAY['die Schule','der Lehrer','der Student','die Universität','der Kurs','die Prüfung','das Studium','lernen']::text[], 60, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-000032853053', '✏️ Schreiben: Das deutsche Schulsystem', 'Write a formal letter (200-250 words) to your German teacher explaining what you learned about "German School System". Include: what surprised you, what was similar/different to your culture, and what you want to learn next. Use present_tense correctly.', ARRAY['Use paragraph breaks for structure','Connect ideas with "außerdem", "deshalb", "jedoch"','Check your verb position in Nebensätze']::text[], ARRAY['die Schule','der Lehrer','der Student','die Universität','der Kurs','die Prüfung','das Studium','lernen']::text[], ARRAY['Sentence structure','Vocabulary usage']::text[], 150, 250, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000032853053', 'Das deutsche Schulsystem — Roleplay', 'German School System', 'Student', 'Teacher', 'Practice conversation about German School System', 'Hallo! Lass uns über dieses Thema sprechen.', 'intermediate', 1, ARRAY['die Schule','der Lehrer','der Student','die Universität','der Kurs','die Prüfung','das Studium','lernen']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000032853053', 'Das deutsche Schulsystem — Advanced Roleplay', 'German School System', 'Customer', 'Assistant', 'Extended conversation about German School System', 'Guten Tag! Wie kann ich Ihnen helfen?', 'intermediate', 2, ARRAY['die Schule','der Lehrer','der Student','die Universität','der Kurs','die Prüfung','das Studium','lernen']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-000032853053', 'Das deutsche Schulsystem — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Das deutsche Schulsystem".', 'Creative practice for German School System', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-000032853053', '📚 Hausaufgabe: Das deutsche Schulsystem', 'Complete these tasks to reinforce "Das deutsche Schulsystem".', 'mixed', '[{"description":"Create 10 flashcards from this lesson''s vocabulary — write German on one side, Arabic on the other. Test yourself 3 times."},{"description":"Write 6 sentences about German School System: 2 statements, 2 questions, 2 negations — all using present_tense."},{"description":"Record yourself reading the dialogue aloud. Listen to the recording and note 3 things to improve."},{"description":"Find 3 real German websites, videos, or articles about German School System. Note 5 new words you discovered."}]', 50, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-000032853053', '🎯 Excellent progress! This lesson covered German School System (75 vocabulary items) and present_tense. You developed reading, listening, speaking, and writing skills in the context of education. Focus on your common mistakes area for maximum improvement.', '["75 vocabulary items about German School System","present_tense — grammar explanation and practice","Reading comprehension: text about German School System","Listening comprehension: dialogue about German School System","Speaking practice: roleplay/discussion about German School System","Writing task: text about German School System"]', '[{"title":"Das deutsche Schulsystem Review","summary":"present_tense — the main grammar focus. Focus on using this structure naturally in conversations and writing."}]', ARRAY['die Schule (school)','der Lehrer (teacher)','der Student (student)','die Universität (university)','der Kurs (course)']::text[], ARRAY['Don''t translate from Arabic word-for-word — German has different sentence structure','Learn every noun with its article: NEVER learn "Tisch" alone, always "der Tisch"','Watch out for verb position in Nebensätze']::text[], ARRAY['Practice 15-20 minutes daily — consistency beats intensity','Speak out loud: German pronunciation needs muscle memory','Use the new vocabulary within 24 hours or you''ll forget it','Watch German YouTube videos about German School System for authentic input']::text[]);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000032853053', 'Pronunciation: Intonation and sentence melody', 'German sentences have a falling intonation at the end of statements. Questions starting with a verb rise at the end. W-questions fall at the end. Emphasise the stressed syllable — German stresses the first syllable of the root.

Common mistake for Arabic speakers: Arabic speakers often put stress on the wrong syllable. Remember: German root stress is usually on the first syllable.', '[]', '[{"german":"warum","arabic":"","english":"","phonetic":"/vaˈrʊm/"},{"german":"deshalb","arabic":"","english":"","phonetic":"/dɛsˈhalp/"}]', '[]', 10);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000032853053', 'translation', 'Translate to German: "I use the word "school" in a sentence about German School System."', '[]', 'Die Kinder gehen zur Schule.', 'Use die  "die Schule" with the correct present_tense form.', 1, 40);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000032853053', 'translation', 'Translate to German: "I use the word "teacher" in a sentence about German School System."', '[]', 'Der Lehrer erklärt die Grammatik.', 'Use der  "der Lehrer" with the correct present_tense form.', 1, 41);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000032853053', 'translation', 'Translate to German: "I use the word "student" in a sentence about German School System."', '[]', 'Der Student lernt Deutsch.', 'Use der  "der Student" with the correct present_tense form.', 1, 42);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000032853053', 'Culture: 🇩🇪 Deutsche Kultur: German School System', 'German School System in Germany has specific cultural nuances that differ from Arabic-speaking countries. Germans tend to separate their private and professional lives strictly. When dealing with German School System in a professional context, use formal register and prepare factual arguments. Emotional appeals are less effective than logical reasoning.

لدى German School System في ألمانيا فروق ثقافية دقيقة تختلف عن البلدان العربية. الألمان يفصلون بين حياتهم الخاصة والمهنية بشكل صارم.', '["Tip: Always use \"Sie\" (formal) with strangers and colleagues","Tip: Germans appreciate punctuality — arrive 5 minutes early","Tip: Direct feedback is a sign of respect, not criticism","Tip: Prepare factual arguments, not emotional appeals"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000032853053', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Using \"studieren\" and \"lernen\" interchangeably","correction":"studieren = study at university, lernen = learn/study in general","explanation":"Arabic \"darasa\" covers both. German distinguishes level of education."},{"mistake":"Putting the verb at the end in main clauses","correction":"Verb stays in position 2 in main clauses","explanation":"Subordinate clause word order interferes"}]', 30);

  -- Lesson 2: Sprachen lernen (L-B1-04-02)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-000032853052', '00000000-0000-4000-a000-000039c2eae2', 'Sprachen lernen', 'Discuss language learning strategies and experiences.', 'Language Learning', 'vocabulary', '["Understand and use 75 key vocabulary words about Language Learning","Apply present_tense correctly in sentences","Read and comprehend a text about Language Learning","Listen and understand a natural dialogue about Language Learning","Speak about Language Learning with confidence","Write a short text about Language Learning using new vocabulary"]', 45, 2, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, french_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-000032853052', 'die Schule', 'المدرسة', 'school', NULL, 'die', 'die Schulen', 'noun', 'Die Kinder gehen zur Schule.', 'The children go to school.', 'A1', 1),
  ('00000000-0000-4000-a000-000032853052', 'der Lehrer', 'المعلم', 'teacher', NULL, 'der', 'die Lehrer', 'noun', 'Der Lehrer erklärt die Grammatik.', 'The teacher explains the grammar.', 'A1', 2),
  ('00000000-0000-4000-a000-000032853052', 'der Student', 'الطالب', 'student', NULL, 'der', 'die Studenten', 'noun', 'Der Student lernt Deutsch.', 'The student learns German.', 'A1', 3),
  ('00000000-0000-4000-a000-000032853052', 'die Universität', 'الجامعة', 'university', NULL, 'die', 'die Universitäten', 'noun', 'Die Universität ist alt.', 'The university is old.', 'B1', 4),
  ('00000000-0000-4000-a000-000032853052', 'der Kurs', 'الدورة', 'course', NULL, 'der', 'die Kurse', 'noun', 'Der Kurs kostet 200 Euro.', 'The course costs 200 euros.', 'A2', 5),
  ('00000000-0000-4000-a000-000032853052', 'die Prüfung', 'الامتحان', 'exam', NULL, 'die', 'die Prüfungen', 'noun', 'Die Prüfung ist schwer.', 'The exam is difficult.', 'B1', 6),
  ('00000000-0000-4000-a000-000032853052', 'das Studium', 'الدراسة الجامعية', 'studies', NULL, 'das', NULL, 'noun', 'Mein Studium dauert vier Jahre.', 'My studies take four years.', 'B1', 7),
  ('00000000-0000-4000-a000-000032853052', 'lernen', 'يتعلم', 'to learn', NULL, NULL, NULL, 'verb', 'Ich lerne Deutsch.', 'I learn German.', 'A1', 8),
  ('00000000-0000-4000-a000-000032853052', 'der Beruf', 'المهنة', 'profession', NULL, 'der', 'die Berufe', 'noun', 'Was ist dein Beruf?', 'What is your profession?', 'A1', 9),
  ('00000000-0000-4000-a000-000032853052', 'die Firma', 'الشركة', 'company', NULL, 'die', 'die Firmen', 'noun', 'Die Firma ist in Berlin.', 'The company is in Berlin.', 'A1', 10),
  ('00000000-0000-4000-a000-000032853052', 'der Kollege', 'الزميل', 'colleague', NULL, 'der', 'die Kollegen', 'noun', 'Mein Kollege hilft mir.', 'My colleague helps me.', 'A1', 11),
  ('00000000-0000-4000-a000-000032853052', 'das Büro', 'المكتب', 'office', NULL, 'das', 'die Büros', 'noun', 'Das Büro ist im dritten Stock.', 'The office is on the third floor.', 'A1', 12),
  ('00000000-0000-4000-a000-000032853052', 'die Besprechung', 'الاجتماع', 'meeting', NULL, 'die', 'die Besprechungen', 'noun', 'Wir haben eine Besprechung.', 'We have a meeting.', 'B1', 13),
  ('00000000-0000-4000-a000-000032853052', 'der Chef', 'المدير', 'boss', NULL, 'der', 'die Chefs', 'noun', 'Mein Chef ist freundlich.', 'My boss is friendly.', 'A1', 14),
  ('00000000-0000-4000-a000-000032853052', 'das Gehalt', 'الراتب', 'salary', NULL, 'das', 'die Gehälter', 'noun', 'Das Gehalt ist gut.', 'The salary is good.', 'B1', 15),
  ('00000000-0000-4000-a000-000032853052', 'die Stelle', 'الوظيفة', 'position', NULL, 'die', 'die Stellen', 'noun', 'Ich suche eine neue Stelle.', 'I am looking for a new position.', 'B1', 16),
  ('00000000-0000-4000-a000-000032853052', 'die Zeitung', 'الجريدة', 'newspaper', NULL, 'die', 'die Zeitungen', 'noun', 'Ich lese die Zeitung.', 'I read the newspaper.', 'A2', 17),
  ('00000000-0000-4000-a000-000032853052', 'das Internet', 'الإنترنت', 'internet', NULL, 'das', NULL, 'noun', 'Das Internet ist schnell.', 'The internet is fast.', 'A2', 18),
  ('00000000-0000-4000-a000-000032853052', 'der Artikel', 'المقال', 'article', NULL, 'der', 'die Artikel', 'noun', 'Der Artikel ist interessant.', 'The article is interesting.', 'B1', 19),
  ('00000000-0000-4000-a000-000032853052', 'die Nachricht', 'الخبر', 'news', NULL, 'die', 'die Nachrichten', 'noun', 'Ich sehe die Nachrichten.', 'I watch the news.', 'A2', 20),
  ('00000000-0000-4000-a000-000032853052', 'das Radio', 'الراديو', 'radio', NULL, 'das', 'die Radios', 'noun', 'Ich höre Radio.', 'I listen to the radio.', 'A2', 21),
  ('00000000-0000-4000-a000-000032853052', 'das Fernsehen', 'التلفاز', 'television', NULL, 'das', NULL, 'noun', 'Das Fernsehen läuft.', 'The television is on.', 'A2', 22),
  ('00000000-0000-4000-a000-000032853052', 'die Zeitschrift', 'المجلة', 'magazine', NULL, 'die', 'die Zeitschriften', 'noun', 'Die Zeitschrift erscheint monatlich.', 'The magazine is published monthly.', 'B1', 23),
  ('00000000-0000-4000-a000-000032853052', 'der Journalist', 'الصحفي', 'journalist', NULL, 'der', 'die Journalisten', 'noun', 'Der Journalist schreibt einen Artikel.', 'The journalist writes an article.', 'B1', 24),
  ('00000000-0000-4000-a000-000032853052', 'die Gesellschaft', 'المجتمع', 'society', NULL, 'die', NULL, 'noun', 'Die Gesellschaft verändert sich.', 'Society is changing.', 'B1', 25),
  ('00000000-0000-4000-a000-000032853052', 'die Politik', 'السياسة', 'politics', NULL, 'die', NULL, 'noun', 'Politik ist ein wichtiges Thema.', 'Politics is an important topic.', 'B1', 26),
  ('00000000-0000-4000-a000-000032853052', 'die Integration', 'الاندماج', 'integration', NULL, 'die', NULL, 'noun', 'Integration ist wichtig.', 'Integration is important.', 'B1', 27),
  ('00000000-0000-4000-a000-000032853052', 'die Kultur', 'الثقافة', 'culture', NULL, 'die', NULL, 'noun', 'Die deutsche Kultur ist vielfältig.', 'German culture is diverse.', 'A2', 28),
  ('00000000-0000-4000-a000-000032853052', 'der Bürger', 'المواطن', 'citizen', NULL, 'der', 'die Bürger', 'noun', 'Die Bürger wählen.', 'The citizens vote.', 'B1', 29),
  ('00000000-0000-4000-a000-000032853052', 'die Freiheit', 'الحرية', 'freedom', NULL, 'die', NULL, 'noun', 'Freiheit ist ein Grundrecht.', 'Freedom is a basic right.', 'B1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000032853052', 'Konjunktiv II: Höfliche Bitten und irreale Sätze (Subjunctive for Politeness) / صيغة الشرط الثانية: الطلبات المهذبة والجمل غير الواقعية', 'Konjunktiv II is used for polite requests (Ich hätte gern...), unreal situations (Wenn ich Zeit hätte...), and wishes (Ich wünschte, ich wäre...). For most verbs, use "würde + infinitive". Only a few common verbs have their own subjunctive form: hätte (hätten), wäre (wären), könnte (könnten).', '[{"rule":"würde + Infinitiv (most verbs)","note":"Ich würde gern kommen. (I would like to come.)"},{"rule":"hätte (haben), wäre (sein), könnte (können)","note":"Ich hätte gern einen Kaffee. (I would like a coffee.)"},{"rule":"Wenn... dann... (if... then...)","note":"Wenn ich Zeit hätte, würde ich reisen. (If I had time, I would travel.)"}]', '[{"german":"Ich hätte gern einen Kaffee, bitte.","arabic":"أود فنجان قهوة من فضلك.","english":"I would like a coffee, please."},{"german":"Wenn ich mehr Zeit hätte, würde ich Deutsch lernen.","arabic":"لو كان لدي وقت أكثر، لتعلمت الألمانية.","english":"If I had more time, I would learn German."},{"german":"Könnten Sie mir bitte helfen?","arabic":"هل يمكنكم مساعدتي من فضلكم؟","english":"Could you please help me?"}]', '[{"mistake":"Ich will einen Kaffee (too direct in restaurant)","correction":"Ich hätte gern einen Kaffee.","explanation":"In German restaurants, use Konjunktiv II to be polite, not \"ich will\"."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000032853052', 'multiple_choice', 'Welches deutsche Wort bedeutet "school"?', '["der Kurs","die Universität","der Lehrer","der Student"]', 'die Schule', '"school" = "die Schule" in German. Article: die Plural: die Schulen', 1, 1),
  ('00000000-0000-4000-a000-000032853052', 'multiple_choice', 'Welches deutsche Wort bedeutet "teacher"?', '["die Universität","der Student","der Kurs","die Schule"]', 'der Lehrer', '"teacher" = "der Lehrer" in German. Article: der Plural: die Lehrer', 1, 2),
  ('00000000-0000-4000-a000-000032853052', 'multiple_choice', 'Welches deutsche Wort bedeutet "student"?', '["der Lehrer","die Universität","der Kurs","der Student"]', 'der Student', '"student" = "der Student" in German. Article: der Plural: die Studenten', 1, 3),
  ('00000000-0000-4000-a000-000032853052', 'multiple_choice', 'Welches deutsche Wort bedeutet "university"?', '["der Student","die Schule","der Kurs","die Universität"]', 'die Universität', '"university" = "die Universität" in German. Article: die Plural: die Universitäten', 1, 4),
  ('00000000-0000-4000-a000-000032853052', 'multiple_choice', 'Welches deutsche Wort bedeutet "course"?', '["die Universität","die Schule","der Kurs","der Student"]', 'der Kurs', '"course" = "der Kurs" in German. Article: der Plural: die Kurse', 1, 5),
  ('00000000-0000-4000-a000-000032853052', 'fill_gap', 'Ergänze den Satz: Ich ___ gern über Language Learning. (sprechen)', '["spreche","sprichst","spricht","sprechen"]', 'spreche', 'ich spreche gern = I like to speak. Stem: sprech- + e.', 2, 6),
  ('00000000-0000-4000-a000-000032853052', 'translation', 'Übersetze ins Deutsche: "I am learning about Language Learning."', '["Ich lerne über Language Learning.","Ich lerne Language Learning.","Lerne ich Language Learning."]', 'Ich lerne über Language Learning.', '"Ich lerne über..." = "I am learning about..."', 2, 7),
  ('00000000-0000-4000-a000-000032853052', 'matching', 'Match: Which word pairs are correct?', '["die Schule - school, der Lehrer - teacher"]', 'Matched correctly', 'Each German word has a unique English equivalent.', 2, 8);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-000032853052', 'multiple_choice', 'Was bedeutet "die Schule" auf Deutsch?', '["school","to run","beautiful","yesterday"]', 'school', 1, 1),
  ('00000000-0000-4000-a000-000032853052', 'multiple_choice', 'Welcher Artikel gehört zu "der Lehrer"?', '["der","die","das","den"]', 'der', 1, 2),
  ('00000000-0000-4000-a000-000032853052', 'true_false', 'Das Wort "der Student" gehört zum Thema Language Learning.', '["True","False"]', 'True', 1, 3),
  ('00000000-0000-4000-a000-000032853052', 'multiple_choice', 'Welcher Satz verwendet present_tense?', '["Ich hätte gern einen Kaffee, bitte.","Wenn ich mehr Zeit hätte, würde ich Deutsch lernen.","Könnten Sie mir bitte helfen?"]', 'Ich hätte gern einen Kaffee, bitte.', 2, 4),
  ('00000000-0000-4000-a000-000032853052', 'true_false', ''Im Deutschen steht das Verb an zweiter Position im Hauptsatz.', '["True","False"]', 'True', 1, 5),
  ('00000000-0000-4000-a000-000032853052', 'fill_blank', 'Complete: Ich ___ (university) Deutsch.', '["die Universität","lernt","lernst","lernen"]', 'lerne', 2, 6),
  ('00000000-0000-4000-a000-000032853052', 'multiple_choice', 'Wie lautet das deutsche Wort für "course"?', '["der Kurs","die Prüfung","das Studium","lernen"]', 'der Kurs', 1, 7),
  ('00000000-0000-4000-a000-000032853052', 'true_false', 'Im Deutschen werden alle Nomen großgeschrieben.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-000032853052', 'multiple_choice', 'How do you say "please" in a restaurant in Germany?', '["Bitte","Danke","Tschüss","Hallo"]', 'Bitte', 1, 9),
  ('00000000-0000-4000-a000-000032853052', 'fill_blank', 'Wo ___ (to live) du?', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 2, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, french_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-000032853052', 'Ich studiere an der Universität.', 'I study at the university.', 'أدرس في الجامعة.', NULL, 'Used in Bildung und Lernen', 'neutral', false, 1),
  ('00000000-0000-4000-a000-000032853052', 'Können Sie das bitte erklären?', 'Can you please explain that?', 'هل يمكنكم شرح ذلك من فضلكم؟', NULL, 'Used in Bildung und Lernen', 'formal', false, 2),
  ('00000000-0000-4000-a000-000032853052', 'Ich habe eine Frage.', 'I have a question.', 'لدي سؤال.', NULL, 'Used in Bildung und Lernen', 'neutral', false, 3),
  ('00000000-0000-4000-a000-000032853052', 'Das verstehe ich nicht.', 'I don''t understand that.', 'هذا لا أفهمه.', NULL, 'Used in Bildung und Lernen', 'neutral', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-000032853052', 'die die Schule (die Schulen)', 'school — المدرسة', 'noun', 'vocabulary', 1),
  ('00000000-0000-4000-a000-000032853052', 'der der Lehrer (die Lehrer)', 'teacher — المعلم', 'noun', 'vocabulary', 2),
  ('00000000-0000-4000-a000-000032853052', 'der der Student (die Studenten)', 'student — الطالب', 'noun', 'vocabulary', 3),
  ('00000000-0000-4000-a000-000032853052', 'die die Universität (die Universitäten)', 'university — الجامعة', 'noun', 'vocabulary', 4),
  ('00000000-0000-4000-a000-000032853052', 'der der Kurs (die Kurse)', 'course — الدورة', 'noun', 'vocabulary', 5),
  ('00000000-0000-4000-a000-000032853052', 'die die Prüfung (die Prüfungen)', 'exam — الامتحان', 'noun', 'vocabulary', 6),
  ('00000000-0000-4000-a000-000032853052', 'das das Studium', 'studies — الدراسة الجامعية', 'noun', 'vocabulary', 7),
  ('00000000-0000-4000-a000-000032853052', 'lernen', 'to learn — يتعلم', 'verb', 'vocabulary', 8),
  ('00000000-0000-4000-a000-000032853052', 'der der Beruf (die Berufe)', 'profession — المهنة', 'noun', 'vocabulary', 9),
  ('00000000-0000-4000-a000-000032853052', 'die die Firma (die Firmen)', 'company — الشركة', 'noun', 'vocabulary', 10),
  ('00000000-0000-4000-a000-000032853052', 'der der Kollege (die Kollegen)', 'colleague — الزميل', 'noun', 'vocabulary', 11),
  ('00000000-0000-4000-a000-000032853052', 'das das Büro (die Büros)', 'office — المكتب', 'noun', 'vocabulary', 12),
  ('00000000-0000-4000-a000-000032853052', 'die die Besprechung (die Besprechungen)', 'meeting — الاجتماع', 'noun', 'vocabulary', 13),
  ('00000000-0000-4000-a000-000032853052', 'der der Chef (die Chefs)', 'boss — المدير', 'noun', 'vocabulary', 14),
  ('00000000-0000-4000-a000-000032853052', 'das das Gehalt (die Gehälter)', 'salary — الراتب', 'noun', 'vocabulary', 15),
  ('00000000-0000-4000-a000-000032853052', 'Ich hätte gern einen Kaffee, bitte.', 'I would like a coffee, please.', 'Konjunktiv II: Höfliche Bitten und irreale Sätze (Subjunctive for Politeness)', 'grammar', 16),
  ('00000000-0000-4000-a000-000032853052', 'Wenn ich mehr Zeit hätte, würde ich Deutsch lernen.', 'If I had more time, I would learn German.', 'Konjunktiv II: Höfliche Bitten und irreale Sätze (Subjunctive for Politeness)', 'grammar', 17),
  ('00000000-0000-4000-a000-000032853052', 'Könnten Sie mir bitte helfen?', 'Could you please help me?', 'Konjunktiv II: Höfliche Bitten und irreale Sätze (Subjunctive for Politeness)', 'grammar', 18);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, french_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-000032853052', 'Sprachen lernen — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', NULL, 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, french_translation, duration_seconds, speaker_count, scenario) values
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

[Lehrerin]: ممتاز! إلى الغد!', '[Lehrerin]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: ', 72, 2, 'Bildung und Lernen');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-000032853052', '🔊 Sprechen: Sprachen lernen', 'Discussion: You attend a German Stammtisch (weekly meetup). Discuss Language Learning with the group. Express your opinion, agree/disagree, ask follow-up questions. Try to keep the conversation flowing for 2 minutes.', 'Language Learning', ARRAY['Use discourse markers (also, jedoch, außerdem)','React naturally: "Ach so!", "Echt?", "Das stimmt!"','Paraphrase when you don''t know a word']::text[], ARRAY['die Schule','der Lehrer','der Student','die Universität','der Kurs','die Prüfung','das Studium','lernen']::text[], 60, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-000032853052', '✏️ Schreiben: Sprachen lernen', 'Write a formal letter (200-250 words) to your German teacher explaining what you learned about "Language Learning". Include: what surprised you, what was similar/different to your culture, and what you want to learn next. Use present_tense correctly.', ARRAY['Use paragraph breaks for structure','Connect ideas with "außerdem", "deshalb", "jedoch"','Check your verb position in Nebensätze']::text[], ARRAY['die Schule','der Lehrer','der Student','die Universität','der Kurs','die Prüfung','das Studium','lernen']::text[], ARRAY['Sentence structure','Vocabulary usage']::text[], 150, 250, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000032853052', 'Sprachen lernen — Roleplay', 'Language Learning', 'Student', 'Teacher', 'Practice conversation about Language Learning', 'Hallo! Lass uns über dieses Thema sprechen.', 'intermediate', 1, ARRAY['die Schule','der Lehrer','der Student','die Universität','der Kurs','die Prüfung','das Studium','lernen']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000032853052', 'Sprachen lernen — Advanced Roleplay', 'Language Learning', 'Customer', 'Assistant', 'Extended conversation about Language Learning', 'Guten Tag! Wie kann ich Ihnen helfen?', 'intermediate', 2, ARRAY['die Schule','der Lehrer','der Student','die Universität','der Kurs','die Prüfung','das Studium','lernen']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-000032853052', 'Sprachen lernen — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Sprachen lernen".', 'Creative practice for Language Learning', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-000032853052', '📚 Hausaufgabe: Sprachen lernen', 'Complete these tasks to reinforce "Sprachen lernen".', 'mixed', '[{"description":"Create 10 flashcards from this lesson''s vocabulary — write German on one side, Arabic on the other. Test yourself 3 times."},{"description":"Write 6 sentences about Language Learning: 2 statements, 2 questions, 2 negations — all using present_tense."},{"description":"Record yourself reading the dialogue aloud. Listen to the recording and note 3 things to improve."},{"description":"Find 3 real German websites, videos, or articles about Language Learning. Note 5 new words you discovered."}]', 50, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-000032853052', '🎯 Excellent progress! This lesson covered Language Learning (75 vocabulary items) and present_tense. You developed reading, listening, speaking, and writing skills in the context of education. Focus on your common mistakes area for maximum improvement.', '["75 vocabulary items about Language Learning","present_tense — grammar explanation and practice","Reading comprehension: text about Language Learning","Listening comprehension: dialogue about Language Learning","Speaking practice: roleplay/discussion about Language Learning","Writing task: text about Language Learning"]', '[{"title":"Sprachen lernen Review","summary":"present_tense — the main grammar focus. Focus on using this structure naturally in conversations and writing."}]', ARRAY['die Schule (school)','der Lehrer (teacher)','der Student (student)','die Universität (university)','der Kurs (course)']::text[], ARRAY['Don''t translate from Arabic word-for-word — German has different sentence structure','Learn every noun with its article: NEVER learn "Tisch" alone, always "der Tisch"','Watch out for verb position in Nebensätze']::text[], ARRAY['Practice 15-20 minutes daily — consistency beats intensity','Speak out loud: German pronunciation needs muscle memory','Use the new vocabulary within 24 hours or you''ll forget it','Watch German YouTube videos about Language Learning for authentic input']::text[]);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000032853052', 'Pronunciation: Intonation and sentence melody', 'German sentences have a falling intonation at the end of statements. Questions starting with a verb rise at the end. W-questions fall at the end. Emphasise the stressed syllable — German stresses the first syllable of the root.

Common mistake for Arabic speakers: Arabic speakers often put stress on the wrong syllable. Remember: German root stress is usually on the first syllable.', '[]', '[{"german":"warum","arabic":"","english":"","phonetic":"/vaˈrʊm/"},{"german":"deshalb","arabic":"","english":"","phonetic":"/dɛsˈhalp/"}]', '[]', 10);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000032853052', 'translation', 'Translate to German: "I use the word "school" in a sentence about Language Learning."', '[]', 'Die Kinder gehen zur Schule.', 'Use die  "die Schule" with the correct present_tense form.', 1, 40);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000032853052', 'translation', 'Translate to German: "I use the word "teacher" in a sentence about Language Learning."', '[]', 'Der Lehrer erklärt die Grammatik.', 'Use der  "der Lehrer" with the correct present_tense form.', 1, 41);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000032853052', 'translation', 'Translate to German: "I use the word "student" in a sentence about Language Learning."', '[]', 'Der Student lernt Deutsch.', 'Use der  "der Student" with the correct present_tense form.', 1, 42);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000032853052', 'Culture: 🇩🇪 Deutsche Kultur: Language Learning', 'Language Learning in Germany has specific cultural nuances that differ from Arabic-speaking countries. Germans tend to separate their private and professional lives strictly. When dealing with Language Learning in a professional context, use formal register and prepare factual arguments. Emotional appeals are less effective than logical reasoning.

لدى Language Learning في ألمانيا فروق ثقافية دقيقة تختلف عن البلدان العربية. الألمان يفصلون بين حياتهم الخاصة والمهنية بشكل صارم.', '["Tip: Always use \"Sie\" (formal) with strangers and colleagues","Tip: Germans appreciate punctuality — arrive 5 minutes early","Tip: Direct feedback is a sign of respect, not criticism","Tip: Prepare factual arguments, not emotional appeals"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000032853052', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Using \"studieren\" and \"lernen\" interchangeably","correction":"studieren = study at university, lernen = learn/study in general","explanation":"Arabic \"darasa\" covers both. German distinguishes level of education."},{"mistake":"Putting the verb at the end in main clauses","correction":"Verb stays in position 2 in main clauses","explanation":"Subordinate clause word order interferes"}]', 30);

  -- Lesson 3: Wechselpräpositionen (L-B1-04-03)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-000032853051', '00000000-0000-4000-a000-000039c2eae2', 'Wechselpräpositionen', 'Learn two-way prepositions with accusative and dative.', 'Two-Way Prepositions', 'grammar', '["Understand and apply present_tense rules correctly","Use present_tense in real conversations","Avoid common mistakes Arabic speakers make with present_tense","Read and understand present_tense in context","Listen and identify present_tense in speech","Write sentences using present_tense correctly"]', 60, 3, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, french_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-000032853051', 'die Schule', 'المدرسة', 'school', NULL, 'die', 'die Schulen', 'noun', 'Die Kinder gehen zur Schule.', 'The children go to school.', 'A1', 1),
  ('00000000-0000-4000-a000-000032853051', 'der Lehrer', 'المعلم', 'teacher', NULL, 'der', 'die Lehrer', 'noun', 'Der Lehrer erklärt die Grammatik.', 'The teacher explains the grammar.', 'A1', 2),
  ('00000000-0000-4000-a000-000032853051', 'der Student', 'الطالب', 'student', NULL, 'der', 'die Studenten', 'noun', 'Der Student lernt Deutsch.', 'The student learns German.', 'A1', 3),
  ('00000000-0000-4000-a000-000032853051', 'die Universität', 'الجامعة', 'university', NULL, 'die', 'die Universitäten', 'noun', 'Die Universität ist alt.', 'The university is old.', 'B1', 4),
  ('00000000-0000-4000-a000-000032853051', 'der Kurs', 'الدورة', 'course', NULL, 'der', 'die Kurse', 'noun', 'Der Kurs kostet 200 Euro.', 'The course costs 200 euros.', 'A2', 5),
  ('00000000-0000-4000-a000-000032853051', 'die Prüfung', 'الامتحان', 'exam', NULL, 'die', 'die Prüfungen', 'noun', 'Die Prüfung ist schwer.', 'The exam is difficult.', 'B1', 6),
  ('00000000-0000-4000-a000-000032853051', 'das Studium', 'الدراسة الجامعية', 'studies', NULL, 'das', NULL, 'noun', 'Mein Studium dauert vier Jahre.', 'My studies take four years.', 'B1', 7),
  ('00000000-0000-4000-a000-000032853051', 'lernen', 'يتعلم', 'to learn', NULL, NULL, NULL, 'verb', 'Ich lerne Deutsch.', 'I learn German.', 'A1', 8),
  ('00000000-0000-4000-a000-000032853051', 'der Beruf', 'المهنة', 'profession', NULL, 'der', 'die Berufe', 'noun', 'Was ist dein Beruf?', 'What is your profession?', 'A1', 9),
  ('00000000-0000-4000-a000-000032853051', 'die Firma', 'الشركة', 'company', NULL, 'die', 'die Firmen', 'noun', 'Die Firma ist in Berlin.', 'The company is in Berlin.', 'A1', 10),
  ('00000000-0000-4000-a000-000032853051', 'der Kollege', 'الزميل', 'colleague', NULL, 'der', 'die Kollegen', 'noun', 'Mein Kollege hilft mir.', 'My colleague helps me.', 'A1', 11),
  ('00000000-0000-4000-a000-000032853051', 'das Büro', 'المكتب', 'office', NULL, 'das', 'die Büros', 'noun', 'Das Büro ist im dritten Stock.', 'The office is on the third floor.', 'A1', 12),
  ('00000000-0000-4000-a000-000032853051', 'die Besprechung', 'الاجتماع', 'meeting', NULL, 'die', 'die Besprechungen', 'noun', 'Wir haben eine Besprechung.', 'We have a meeting.', 'B1', 13),
  ('00000000-0000-4000-a000-000032853051', 'der Chef', 'المدير', 'boss', NULL, 'der', 'die Chefs', 'noun', 'Mein Chef ist freundlich.', 'My boss is friendly.', 'A1', 14),
  ('00000000-0000-4000-a000-000032853051', 'das Gehalt', 'الراتب', 'salary', NULL, 'das', 'die Gehälter', 'noun', 'Das Gehalt ist gut.', 'The salary is good.', 'B1', 15),
  ('00000000-0000-4000-a000-000032853051', 'die Stelle', 'الوظيفة', 'position', NULL, 'die', 'die Stellen', 'noun', 'Ich suche eine neue Stelle.', 'I am looking for a new position.', 'B1', 16),
  ('00000000-0000-4000-a000-000032853051', 'die Zeitung', 'الجريدة', 'newspaper', NULL, 'die', 'die Zeitungen', 'noun', 'Ich lese die Zeitung.', 'I read the newspaper.', 'A2', 17),
  ('00000000-0000-4000-a000-000032853051', 'das Internet', 'الإنترنت', 'internet', NULL, 'das', NULL, 'noun', 'Das Internet ist schnell.', 'The internet is fast.', 'A2', 18),
  ('00000000-0000-4000-a000-000032853051', 'der Artikel', 'المقال', 'article', NULL, 'der', 'die Artikel', 'noun', 'Der Artikel ist interessant.', 'The article is interesting.', 'B1', 19),
  ('00000000-0000-4000-a000-000032853051', 'die Nachricht', 'الخبر', 'news', NULL, 'die', 'die Nachrichten', 'noun', 'Ich sehe die Nachrichten.', 'I watch the news.', 'A2', 20),
  ('00000000-0000-4000-a000-000032853051', 'das Radio', 'الراديو', 'radio', NULL, 'das', 'die Radios', 'noun', 'Ich höre Radio.', 'I listen to the radio.', 'A2', 21),
  ('00000000-0000-4000-a000-000032853051', 'das Fernsehen', 'التلفاز', 'television', NULL, 'das', NULL, 'noun', 'Das Fernsehen läuft.', 'The television is on.', 'A2', 22),
  ('00000000-0000-4000-a000-000032853051', 'die Zeitschrift', 'المجلة', 'magazine', NULL, 'die', 'die Zeitschriften', 'noun', 'Die Zeitschrift erscheint monatlich.', 'The magazine is published monthly.', 'B1', 23),
  ('00000000-0000-4000-a000-000032853051', 'der Journalist', 'الصحفي', 'journalist', NULL, 'der', 'die Journalisten', 'noun', 'Der Journalist schreibt einen Artikel.', 'The journalist writes an article.', 'B1', 24),
  ('00000000-0000-4000-a000-000032853051', 'die Gesellschaft', 'المجتمع', 'society', NULL, 'die', NULL, 'noun', 'Die Gesellschaft verändert sich.', 'Society is changing.', 'B1', 25),
  ('00000000-0000-4000-a000-000032853051', 'die Politik', 'السياسة', 'politics', NULL, 'die', NULL, 'noun', 'Politik ist ein wichtiges Thema.', 'Politics is an important topic.', 'B1', 26),
  ('00000000-0000-4000-a000-000032853051', 'die Integration', 'الاندماج', 'integration', NULL, 'die', NULL, 'noun', 'Integration ist wichtig.', 'Integration is important.', 'B1', 27),
  ('00000000-0000-4000-a000-000032853051', 'die Kultur', 'الثقافة', 'culture', NULL, 'die', NULL, 'noun', 'Die deutsche Kultur ist vielfältig.', 'German culture is diverse.', 'A2', 28),
  ('00000000-0000-4000-a000-000032853051', 'der Bürger', 'المواطن', 'citizen', NULL, 'der', 'die Bürger', 'noun', 'Die Bürger wählen.', 'The citizens vote.', 'B1', 29),
  ('00000000-0000-4000-a000-000032853051', 'die Freiheit', 'الحرية', 'freedom', NULL, 'die', NULL, 'noun', 'Freiheit ist ein Grundrecht.', 'Freedom is a basic right.', 'B1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000032853051', 'Nebensätze mit "dass", "weil", "obwohl" (Subordinate Clauses) / الجمل الثانوية مع dass, weil, obwohl', 'Subordinate clauses push the conjugated verb to the END of the clause. The conjunction initiates the subordinate clause. Common conjunctions: dass (that), weil (because), obwohl (although), wenn (if/when), während (while). The subordinate clause can come before or after the main clause.', '[{"rule":"Verb goes to END in subordinate clause","note":"Ich weiß, dass er morgen kommt. (NOT: ...dass er kommt morgen)"},{"rule":"Wenn clause first → verb starts main clause","note":"Wenn ich Zeit habe, gehe ich ins Kino."},{"rule":"Weil answers \"why\" questions","note":"Ich lerne Deutsch, weil ich in Berlin studieren will."}]', '[{"german":"Ich denke, dass er recht hat.","arabic":"أعتقد أنه على حق.","english":"I think that he is right."},{"german":"Er lernt Deutsch, weil er in Berlin studiert.","arabic":"هو يتعلم الألمانية لأنه يدرس في برلين.","english":"He learns German because he studies in Berlin."},{"german":"Obwohl es regnet, gehe ich spazieren.","arabic":"على الرغم من المطر، أذهب للتنزه.","english":"Although it is raining, I go for a walk."}]', '[{"mistake":"Ich weiß, dass er kommt morgen (verb stays in position 2)","correction":"Ich weiß, dass er morgen kommt.","explanation":"In \"dass\" clauses, the verb ALWAYS goes to the end."},{"mistake":"Weil ich bin müde (verb stays after \"weil\")","correction":"Weil ich müde bin.","explanation":"Weil + subject + ... + verb (at the end)."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000032853051', 'multiple_choice', 'Welches deutsche Wort bedeutet "school"?', '["der Student","der Lehrer","die Schule","die Universität"]', 'die Schule', '"school" = "die Schule" in German. Article: die Plural: die Schulen', 1, 1),
  ('00000000-0000-4000-a000-000032853051', 'multiple_choice', 'Welches deutsche Wort bedeutet "teacher"?', '["der Student","der Kurs","der Lehrer","die Universität"]', 'der Lehrer', '"teacher" = "der Lehrer" in German. Article: der Plural: die Lehrer', 1, 2),
  ('00000000-0000-4000-a000-000032853051', 'multiple_choice', 'Welches deutsche Wort bedeutet "student"?', '["der Kurs","die Universität","der Lehrer","die Schule"]', 'der Student', '"student" = "der Student" in German. Article: der Plural: die Studenten', 1, 3),
  ('00000000-0000-4000-a000-000032853051', 'multiple_choice', 'Welches deutsche Wort bedeutet "university"?', '["der Kurs","die Schule","der Student","die Universität"]', 'die Universität', '"university" = "die Universität" in German. Article: die Plural: die Universitäten', 1, 4),
  ('00000000-0000-4000-a000-000032853051', 'multiple_choice', 'Welches deutsche Wort bedeutet "course"?', '["der Kurs","die Schule","der Lehrer","der Student"]', 'der Kurs', '"course" = "der Kurs" in German. Article: der Plural: die Kurse', 1, 5),
  ('00000000-0000-4000-a000-000032853051', 'fill_gap', 'Ergänze den Satz: Ich ___ gern über Two-Way Prepositions. (sprechen)', '["spreche","sprichst","spricht","sprechen"]', 'spreche', 'ich spreche gern = I like to speak. Stem: sprech- + e.', 2, 6),
  ('00000000-0000-4000-a000-000032853051', 'translation', 'Übersetze ins Deutsche: "I am learning about Two-Way Prepositions."', '["Ich lerne über Two-Way Prepositions.","Ich lerne Two-Way Prepositions.","Lerne ich Two-Way Prepositions."]', 'Ich lerne über Two-Way Prepositions.', '"Ich lerne über..." = "I am learning about..."', 2, 7),
  ('00000000-0000-4000-a000-000032853051', 'matching', 'Match: Which word pairs are correct?', '["die Schule - school, der Lehrer - teacher"]', 'Matched correctly', 'Each German word has a unique English equivalent.', 2, 8);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-000032853051', 'multiple_choice', 'Was bedeutet "die Schule" auf Deutsch?', '["school","to run","beautiful","yesterday"]', 'school', 1, 1),
  ('00000000-0000-4000-a000-000032853051', 'multiple_choice', 'Welcher Artikel gehört zu "der Lehrer"?', '["der","die","das","den"]', 'der', 1, 2),
  ('00000000-0000-4000-a000-000032853051', 'true_false', 'Das Wort "der Student" gehört zum Thema Two-Way Prepositions.', '["True","False"]', 'True', 1, 3),
  ('00000000-0000-4000-a000-000032853051', 'multiple_choice', 'Welcher Satz verwendet present_tense?', '["Ich denke, dass er recht hat.","Er lernt Deutsch, weil er in Berlin studiert.","Obwohl es regnet, gehe ich spazieren."]', 'Ich denke, dass er recht hat.', 2, 4),
  ('00000000-0000-4000-a000-000032853051', 'true_false', ''Im Deutschen steht das Verb an zweiter Position im Hauptsatz.', '["True","False"]', 'True', 1, 5),
  ('00000000-0000-4000-a000-000032853051', 'fill_blank', 'Complete: Ich ___ (university) Deutsch.', '["die Universität","lernt","lernst","lernen"]', 'lerne', 2, 6),
  ('00000000-0000-4000-a000-000032853051', 'multiple_choice', 'Wie lautet das deutsche Wort für "course"?', '["der Kurs","die Prüfung","das Studium","lernen"]', 'der Kurs', 1, 7),
  ('00000000-0000-4000-a000-000032853051', 'true_false', 'Im Deutschen werden alle Nomen großgeschrieben.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-000032853051', 'multiple_choice', 'How do you say "please" in a restaurant in Germany?', '["Bitte","Danke","Tschüss","Hallo"]', 'Bitte', 1, 9),
  ('00000000-0000-4000-a000-000032853051', 'fill_blank', 'Wo ___ (to live) du?', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 2, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, french_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-000032853051', 'Ich studiere an der Universität.', 'I study at the university.', 'أدرس في الجامعة.', NULL, 'Used in Bildung und Lernen', 'neutral', false, 1),
  ('00000000-0000-4000-a000-000032853051', 'Können Sie das bitte erklären?', 'Can you please explain that?', 'هل يمكنكم شرح ذلك من فضلكم؟', NULL, 'Used in Bildung und Lernen', 'formal', false, 2),
  ('00000000-0000-4000-a000-000032853051', 'Ich habe eine Frage.', 'I have a question.', 'لدي سؤال.', NULL, 'Used in Bildung und Lernen', 'neutral', false, 3),
  ('00000000-0000-4000-a000-000032853051', 'Das verstehe ich nicht.', 'I don''t understand that.', 'هذا لا أفهمه.', NULL, 'Used in Bildung und Lernen', 'neutral', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-000032853051', 'die die Schule (die Schulen)', 'school — المدرسة', 'noun', 'vocabulary', 1),
  ('00000000-0000-4000-a000-000032853051', 'der der Lehrer (die Lehrer)', 'teacher — المعلم', 'noun', 'vocabulary', 2),
  ('00000000-0000-4000-a000-000032853051', 'der der Student (die Studenten)', 'student — الطالب', 'noun', 'vocabulary', 3),
  ('00000000-0000-4000-a000-000032853051', 'die die Universität (die Universitäten)', 'university — الجامعة', 'noun', 'vocabulary', 4),
  ('00000000-0000-4000-a000-000032853051', 'der der Kurs (die Kurse)', 'course — الدورة', 'noun', 'vocabulary', 5),
  ('00000000-0000-4000-a000-000032853051', 'die die Prüfung (die Prüfungen)', 'exam — الامتحان', 'noun', 'vocabulary', 6),
  ('00000000-0000-4000-a000-000032853051', 'das das Studium', 'studies — الدراسة الجامعية', 'noun', 'vocabulary', 7),
  ('00000000-0000-4000-a000-000032853051', 'lernen', 'to learn — يتعلم', 'verb', 'vocabulary', 8),
  ('00000000-0000-4000-a000-000032853051', 'der der Beruf (die Berufe)', 'profession — المهنة', 'noun', 'vocabulary', 9),
  ('00000000-0000-4000-a000-000032853051', 'die die Firma (die Firmen)', 'company — الشركة', 'noun', 'vocabulary', 10),
  ('00000000-0000-4000-a000-000032853051', 'der der Kollege (die Kollegen)', 'colleague — الزميل', 'noun', 'vocabulary', 11),
  ('00000000-0000-4000-a000-000032853051', 'das das Büro (die Büros)', 'office — المكتب', 'noun', 'vocabulary', 12),
  ('00000000-0000-4000-a000-000032853051', 'die die Besprechung (die Besprechungen)', 'meeting — الاجتماع', 'noun', 'vocabulary', 13),
  ('00000000-0000-4000-a000-000032853051', 'der der Chef (die Chefs)', 'boss — المدير', 'noun', 'vocabulary', 14),
  ('00000000-0000-4000-a000-000032853051', 'das das Gehalt (die Gehälter)', 'salary — الراتب', 'noun', 'vocabulary', 15),
  ('00000000-0000-4000-a000-000032853051', 'Ich denke, dass er recht hat.', 'I think that he is right.', 'Nebensätze mit "dass", "weil", "obwohl" (Subordinate Clauses)', 'grammar', 16),
  ('00000000-0000-4000-a000-000032853051', 'Er lernt Deutsch, weil er in Berlin studiert.', 'He learns German because he studies in Berlin.', 'Nebensätze mit "dass", "weil", "obwohl" (Subordinate Clauses)', 'grammar', 17),
  ('00000000-0000-4000-a000-000032853051', 'Obwohl es regnet, gehe ich spazieren.', 'Although it is raining, I go for a walk.', 'Nebensätze mit "dass", "weil", "obwohl" (Subordinate Clauses)', 'grammar', 18);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, french_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-000032853051', 'Wechselpräpositionen — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', NULL, 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, french_translation, duration_seconds, speaker_count, scenario) values
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

[Lehrerin]: ممتاز! إلى الغد!', '[Lehrerin]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: ', 72, 2, 'Bildung und Lernen');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-000032853051', '🔊 Sprechen: Wechselpräpositionen', 'Discussion: You attend a German Stammtisch (weekly meetup). Discuss Two-Way Prepositions with the group. Express your opinion, agree/disagree, ask follow-up questions. Try to keep the conversation flowing for 2 minutes.', 'Two-Way Prepositions', ARRAY['Use discourse markers (also, jedoch, außerdem)','React naturally: "Ach so!", "Echt?", "Das stimmt!"','Paraphrase when you don''t know a word']::text[], ARRAY['die Schule','der Lehrer','der Student','die Universität','der Kurs','die Prüfung','das Studium','lernen']::text[], 60, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-000032853051', '✏️ Schreiben: Wechselpräpositionen', 'Write a formal letter (200-250 words) to your German teacher explaining what you learned about "Two-Way Prepositions". Include: what surprised you, what was similar/different to your culture, and what you want to learn next. Use present_tense correctly.', ARRAY['Use paragraph breaks for structure','Connect ideas with "außerdem", "deshalb", "jedoch"','Check your verb position in Nebensätze']::text[], ARRAY['die Schule','der Lehrer','der Student','die Universität','der Kurs','die Prüfung','das Studium','lernen']::text[], ARRAY['Sentence structure','Vocabulary usage']::text[], 150, 250, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000032853051', 'Wechselpräpositionen — Roleplay', 'Two-Way Prepositions', 'Student', 'Teacher', 'Practice conversation about Two-Way Prepositions', 'Hallo! Lass uns über dieses Thema sprechen.', 'intermediate', 1, ARRAY['die Schule','der Lehrer','der Student','die Universität','der Kurs','die Prüfung','das Studium','lernen']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000032853051', 'Wechselpräpositionen — Advanced Roleplay', 'Two-Way Prepositions', 'Customer', 'Assistant', 'Extended conversation about Two-Way Prepositions', 'Guten Tag! Wie kann ich Ihnen helfen?', 'intermediate', 2, ARRAY['die Schule','der Lehrer','der Student','die Universität','der Kurs','die Prüfung','das Studium','lernen']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-000032853051', 'Wechselpräpositionen — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Wechselpräpositionen".', 'Creative practice for Two-Way Prepositions', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-000032853051', '📚 Hausaufgabe: Wechselpräpositionen', 'Complete these tasks to reinforce "Wechselpräpositionen".', 'mixed', '[{"description":"Create 10 flashcards from this lesson''s vocabulary — write German on one side, Arabic on the other. Test yourself 3 times."},{"description":"Write 6 sentences about Two-Way Prepositions: 2 statements, 2 questions, 2 negations — all using present_tense."},{"description":"Record yourself reading the dialogue aloud. Listen to the recording and note 3 things to improve."},{"description":"Find 3 real German websites, videos, or articles about Two-Way Prepositions. Note 5 new words you discovered."}]', 50, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-000032853051', '🎯 Excellent progress! This lesson covered Two-Way Prepositions (75 vocabulary items) and present_tense. You developed reading, listening, speaking, and writing skills in the context of education. Focus on your common mistakes area for maximum improvement.', '["75 vocabulary items about Two-Way Prepositions","present_tense — grammar explanation and practice","Reading comprehension: text about Two-Way Prepositions","Listening comprehension: dialogue about Two-Way Prepositions","Speaking practice: roleplay/discussion about Two-Way Prepositions","Writing task: text about Two-Way Prepositions"]', '[{"title":"Wechselpräpositionen Review","summary":"present_tense — the main grammar focus. Focus on using this structure naturally in conversations and writing."}]', ARRAY['die Schule (school)','der Lehrer (teacher)','der Student (student)','die Universität (university)','der Kurs (course)']::text[], ARRAY['Don''t translate from Arabic word-for-word — German has different sentence structure','Learn every noun with its article: NEVER learn "Tisch" alone, always "der Tisch"','Watch out for verb position in Nebensätze']::text[], ARRAY['Practice 15-20 minutes daily — consistency beats intensity','Speak out loud: German pronunciation needs muscle memory','Use the new vocabulary within 24 hours or you''ll forget it','Watch German YouTube videos about Two-Way Prepositions for authentic input']::text[]);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000032853051', 'Pronunciation: Intonation and sentence melody', 'German sentences have a falling intonation at the end of statements. Questions starting with a verb rise at the end. W-questions fall at the end. Emphasise the stressed syllable — German stresses the first syllable of the root.

Common mistake for Arabic speakers: Arabic speakers often put stress on the wrong syllable. Remember: German root stress is usually on the first syllable.', '[]', '[{"german":"warum","arabic":"","english":"","phonetic":"/vaˈrʊm/"},{"german":"deshalb","arabic":"","english":"","phonetic":"/dɛsˈhalp/"}]', '[]', 10);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000032853051', 'translation', 'Translate to German: "I use the word "school" in a sentence about Two-Way Prepositions."', '[]', 'Die Kinder gehen zur Schule.', 'Use die  "die Schule" with the correct present_tense form.', 1, 40);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000032853051', 'translation', 'Translate to German: "I use the word "teacher" in a sentence about Two-Way Prepositions."', '[]', 'Der Lehrer erklärt die Grammatik.', 'Use der  "der Lehrer" with the correct present_tense form.', 1, 41);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000032853051', 'translation', 'Translate to German: "I use the word "student" in a sentence about Two-Way Prepositions."', '[]', 'Der Student lernt Deutsch.', 'Use der  "der Student" with the correct present_tense form.', 1, 42);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000032853051', 'Culture: 🇩🇪 Deutsche Kultur: Two-Way Prepositions', 'Two-Way Prepositions in Germany has specific cultural nuances that differ from Arabic-speaking countries. Germans tend to separate their private and professional lives strictly. When dealing with Two-Way Prepositions in a professional context, use formal register and prepare factual arguments. Emotional appeals are less effective than logical reasoning.

لدى Two-Way Prepositions في ألمانيا فروق ثقافية دقيقة تختلف عن البلدان العربية. الألمان يفصلون بين حياتهم الخاصة والمهنية بشكل صارم.', '["Tip: Always use \"Sie\" (formal) with strangers and colleagues","Tip: Germans appreciate punctuality — arrive 5 minutes early","Tip: Direct feedback is a sign of respect, not criticism","Tip: Prepare factual arguments, not emotional appeals"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000032853051', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Using \"studieren\" and \"lernen\" interchangeably","correction":"studieren = study at university, lernen = learn/study in general","explanation":"Arabic \"darasa\" covers both. German distinguishes level of education."},{"mistake":"Putting the verb at the end in main clauses","correction":"Verb stays in position 2 in main clauses","explanation":"Subordinate clause word order interferes"}]', 30);

  -- Lesson 4: Eine Präsentation halten (L-B1-04-04)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-000032853050', '00000000-0000-4000-a000-000039c2eae2', 'Eine Präsentation halten', 'Practice giving a short presentation on a familiar topic.', 'Presentations', 'speaking', '["Understand and apply present_tense rules correctly","Use present_tense in real conversations","Avoid common mistakes Arabic speakers make with present_tense","Read and understand present_tense in context","Listen and identify present_tense in speech","Write sentences using present_tense correctly"]', 50, 4, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, french_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-000032853050', 'die Schule', 'المدرسة', 'school', NULL, 'die', 'die Schulen', 'noun', 'Die Kinder gehen zur Schule.', 'The children go to school.', 'A1', 1),
  ('00000000-0000-4000-a000-000032853050', 'der Lehrer', 'المعلم', 'teacher', NULL, 'der', 'die Lehrer', 'noun', 'Der Lehrer erklärt die Grammatik.', 'The teacher explains the grammar.', 'A1', 2),
  ('00000000-0000-4000-a000-000032853050', 'der Student', 'الطالب', 'student', NULL, 'der', 'die Studenten', 'noun', 'Der Student lernt Deutsch.', 'The student learns German.', 'A1', 3),
  ('00000000-0000-4000-a000-000032853050', 'die Universität', 'الجامعة', 'university', NULL, 'die', 'die Universitäten', 'noun', 'Die Universität ist alt.', 'The university is old.', 'B1', 4),
  ('00000000-0000-4000-a000-000032853050', 'der Kurs', 'الدورة', 'course', NULL, 'der', 'die Kurse', 'noun', 'Der Kurs kostet 200 Euro.', 'The course costs 200 euros.', 'A2', 5),
  ('00000000-0000-4000-a000-000032853050', 'die Prüfung', 'الامتحان', 'exam', NULL, 'die', 'die Prüfungen', 'noun', 'Die Prüfung ist schwer.', 'The exam is difficult.', 'B1', 6),
  ('00000000-0000-4000-a000-000032853050', 'das Studium', 'الدراسة الجامعية', 'studies', NULL, 'das', NULL, 'noun', 'Mein Studium dauert vier Jahre.', 'My studies take four years.', 'B1', 7),
  ('00000000-0000-4000-a000-000032853050', 'lernen', 'يتعلم', 'to learn', NULL, NULL, NULL, 'verb', 'Ich lerne Deutsch.', 'I learn German.', 'A1', 8),
  ('00000000-0000-4000-a000-000032853050', 'der Beruf', 'المهنة', 'profession', NULL, 'der', 'die Berufe', 'noun', 'Was ist dein Beruf?', 'What is your profession?', 'A1', 9),
  ('00000000-0000-4000-a000-000032853050', 'die Firma', 'الشركة', 'company', NULL, 'die', 'die Firmen', 'noun', 'Die Firma ist in Berlin.', 'The company is in Berlin.', 'A1', 10),
  ('00000000-0000-4000-a000-000032853050', 'der Kollege', 'الزميل', 'colleague', NULL, 'der', 'die Kollegen', 'noun', 'Mein Kollege hilft mir.', 'My colleague helps me.', 'A1', 11),
  ('00000000-0000-4000-a000-000032853050', 'das Büro', 'المكتب', 'office', NULL, 'das', 'die Büros', 'noun', 'Das Büro ist im dritten Stock.', 'The office is on the third floor.', 'A1', 12),
  ('00000000-0000-4000-a000-000032853050', 'die Besprechung', 'الاجتماع', 'meeting', NULL, 'die', 'die Besprechungen', 'noun', 'Wir haben eine Besprechung.', 'We have a meeting.', 'B1', 13),
  ('00000000-0000-4000-a000-000032853050', 'der Chef', 'المدير', 'boss', NULL, 'der', 'die Chefs', 'noun', 'Mein Chef ist freundlich.', 'My boss is friendly.', 'A1', 14),
  ('00000000-0000-4000-a000-000032853050', 'das Gehalt', 'الراتب', 'salary', NULL, 'das', 'die Gehälter', 'noun', 'Das Gehalt ist gut.', 'The salary is good.', 'B1', 15),
  ('00000000-0000-4000-a000-000032853050', 'die Stelle', 'الوظيفة', 'position', NULL, 'die', 'die Stellen', 'noun', 'Ich suche eine neue Stelle.', 'I am looking for a new position.', 'B1', 16),
  ('00000000-0000-4000-a000-000032853050', 'die Zeitung', 'الجريدة', 'newspaper', NULL, 'die', 'die Zeitungen', 'noun', 'Ich lese die Zeitung.', 'I read the newspaper.', 'A2', 17),
  ('00000000-0000-4000-a000-000032853050', 'das Internet', 'الإنترنت', 'internet', NULL, 'das', NULL, 'noun', 'Das Internet ist schnell.', 'The internet is fast.', 'A2', 18),
  ('00000000-0000-4000-a000-000032853050', 'der Artikel', 'المقال', 'article', NULL, 'der', 'die Artikel', 'noun', 'Der Artikel ist interessant.', 'The article is interesting.', 'B1', 19),
  ('00000000-0000-4000-a000-000032853050', 'die Nachricht', 'الخبر', 'news', NULL, 'die', 'die Nachrichten', 'noun', 'Ich sehe die Nachrichten.', 'I watch the news.', 'A2', 20),
  ('00000000-0000-4000-a000-000032853050', 'das Radio', 'الراديو', 'radio', NULL, 'das', 'die Radios', 'noun', 'Ich höre Radio.', 'I listen to the radio.', 'A2', 21),
  ('00000000-0000-4000-a000-000032853050', 'das Fernsehen', 'التلفاز', 'television', NULL, 'das', NULL, 'noun', 'Das Fernsehen läuft.', 'The television is on.', 'A2', 22),
  ('00000000-0000-4000-a000-000032853050', 'die Zeitschrift', 'المجلة', 'magazine', NULL, 'die', 'die Zeitschriften', 'noun', 'Die Zeitschrift erscheint monatlich.', 'The magazine is published monthly.', 'B1', 23),
  ('00000000-0000-4000-a000-000032853050', 'der Journalist', 'الصحفي', 'journalist', NULL, 'der', 'die Journalisten', 'noun', 'Der Journalist schreibt einen Artikel.', 'The journalist writes an article.', 'B1', 24),
  ('00000000-0000-4000-a000-000032853050', 'die Gesellschaft', 'المجتمع', 'society', NULL, 'die', NULL, 'noun', 'Die Gesellschaft verändert sich.', 'Society is changing.', 'B1', 25),
  ('00000000-0000-4000-a000-000032853050', 'die Politik', 'السياسة', 'politics', NULL, 'die', NULL, 'noun', 'Politik ist ein wichtiges Thema.', 'Politics is an important topic.', 'B1', 26),
  ('00000000-0000-4000-a000-000032853050', 'die Integration', 'الاندماج', 'integration', NULL, 'die', NULL, 'noun', 'Integration ist wichtig.', 'Integration is important.', 'B1', 27),
  ('00000000-0000-4000-a000-000032853050', 'die Kultur', 'الثقافة', 'culture', NULL, 'die', NULL, 'noun', 'Die deutsche Kultur ist vielfältig.', 'German culture is diverse.', 'A2', 28),
  ('00000000-0000-4000-a000-000032853050', 'der Bürger', 'المواطن', 'citizen', NULL, 'der', 'die Bürger', 'noun', 'Die Bürger wählen.', 'The citizens vote.', 'B1', 29),
  ('00000000-0000-4000-a000-000032853050', 'die Freiheit', 'الحرية', 'freedom', NULL, 'die', NULL, 'noun', 'Freiheit ist ein Grundrecht.', 'Freedom is a basic right.', 'B1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000032853050', 'Adjektivdeklination (Adjective Declension) / تصريف الصفات', 'When an adjective comes before a noun, it must agree in gender, number, and case. There are three declension patterns: after "der" words (weak), after "ein" words (mixed), and without article (strong). The endings depend on which information the article already provides.', '[{"rule":"Weak (after der/die/das): -e or -en","note":"der gute Mann, die gute Frau, das gute Kind, die guten Leute"},{"rule":"Mixed (after ein/mein/kein): article ending + adjective ending","note":"ein guter Mann, eine gute Frau, ein gutes Kind, keine guten Leute"}]', '[{"german":"Der große Hund gehört der alten Frau.","arabic":"الكلب الكبير ملك للمرأة العجوز.","english":"The big dog belongs to the old woman."},{"german":"Ein interessantes Buch liegt auf dem Tisch.","arabic":"كتاب مثير للاهتمام على الطاولة.","english":"An interesting book is on the table."}]', '[{"mistake":"Der groß Hund (no ending on adjective)","correction":"Der große Hund","explanation":"Adjectives before nouns MUST have an ending in German."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000032853050', 'multiple_choice', 'Welches deutsche Wort bedeutet "school"?', '["die Schule","der Lehrer","der Kurs","die Universität"]', 'die Schule', '"school" = "die Schule" in German. Article: die Plural: die Schulen', 1, 1),
  ('00000000-0000-4000-a000-000032853050', 'multiple_choice', 'Welches deutsche Wort bedeutet "teacher"?', '["der Lehrer","die Schule","die Universität","der Student"]', 'der Lehrer', '"teacher" = "der Lehrer" in German. Article: der Plural: die Lehrer', 1, 2),
  ('00000000-0000-4000-a000-000032853050', 'multiple_choice', 'Welches deutsche Wort bedeutet "student"?', '["die Schule","der Lehrer","der Student","der Kurs"]', 'der Student', '"student" = "der Student" in German. Article: der Plural: die Studenten', 1, 3),
  ('00000000-0000-4000-a000-000032853050', 'multiple_choice', 'Welches deutsche Wort bedeutet "university"?', '["die Universität","der Lehrer","der Kurs","der Student"]', 'die Universität', '"university" = "die Universität" in German. Article: die Plural: die Universitäten', 1, 4),
  ('00000000-0000-4000-a000-000032853050', 'multiple_choice', 'Welches deutsche Wort bedeutet "course"?', '["die Universität","der Kurs","der Student","der Lehrer"]', 'der Kurs', '"course" = "der Kurs" in German. Article: der Plural: die Kurse', 1, 5),
  ('00000000-0000-4000-a000-000032853050', 'fill_gap', 'Ergänze den Satz: Ich ___ gern Presentations. (sprechen)', '["spreche","sprichst","spricht","sprechen"]', 'spreche', 'ich spreche gern = I like to speak. Stem: sprech- + e.', 2, 6),
  ('00000000-0000-4000-a000-000032853050', 'translation', 'Übersetze ins Deutsche: "I am learning about Presentations."', '["Ich lerne über Presentations.","Ich lerne Presentations.","Lerne ich Presentations."]', 'Ich lerne über Presentations.', '"Ich lerne über..." = "I am learning about..."', 2, 7),
  ('00000000-0000-4000-a000-000032853050', 'matching', 'Match: Which word pairs are correct?', '["die Schule - school, der Lehrer - teacher"]', 'Matched correctly', 'Each German word has a unique English equivalent.', 2, 8);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-000032853050', 'multiple_choice', 'Was bedeutet "die Schule" auf Deutsch?', '["school","to run","beautiful","yesterday"]', 'school', 1, 1),
  ('00000000-0000-4000-a000-000032853050', 'multiple_choice', 'Welcher Artikel gehört zu "der Lehrer"?', '["der","die","das","den"]', 'der', 1, 2),
  ('00000000-0000-4000-a000-000032853050', 'true_false', 'Das Wort "der Student" gehört zum Thema Presentations.', '["True","False"]', 'True', 1, 3),
  ('00000000-0000-4000-a000-000032853050', 'multiple_choice', 'Welcher Satz verwendet present_tense?', '["Der große Hund gehört der alten Frau.","Ein interessantes Buch liegt auf dem Tisch."]', 'Der große Hund gehört der alten Frau.', 2, 4),
  ('00000000-0000-4000-a000-000032853050', 'true_false', ''Im Deutschen steht das Verb an zweiter Position im Hauptsatz.', '["True","False"]', 'True', 1, 5),
  ('00000000-0000-4000-a000-000032853050', 'fill_blank', 'Complete: Ich ___ (university) Deutsch.', '["die Universität","lernt","lernst","lernen"]', 'lerne', 2, 6),
  ('00000000-0000-4000-a000-000032853050', 'multiple_choice', 'Wie lautet das deutsche Wort für "course"?', '["der Kurs","die Prüfung","das Studium","lernen"]', 'der Kurs', 1, 7),
  ('00000000-0000-4000-a000-000032853050', 'true_false', 'Im Deutschen werden alle Nomen großgeschrieben.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-000032853050', 'multiple_choice', 'How do you say "please" in a restaurant in Germany?', '["Bitte","Danke","Tschüss","Hallo"]', 'Bitte', 1, 9),
  ('00000000-0000-4000-a000-000032853050', 'fill_blank', 'Wo ___ (to live) du?', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 2, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, french_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-000032853050', 'Ich studiere an der Universität.', 'I study at the university.', 'أدرس في الجامعة.', NULL, 'Used in Bildung und Lernen', 'neutral', false, 1),
  ('00000000-0000-4000-a000-000032853050', 'Können Sie das bitte erklären?', 'Can you please explain that?', 'هل يمكنكم شرح ذلك من فضلكم؟', NULL, 'Used in Bildung und Lernen', 'formal', false, 2),
  ('00000000-0000-4000-a000-000032853050', 'Ich habe eine Frage.', 'I have a question.', 'لدي سؤال.', NULL, 'Used in Bildung und Lernen', 'neutral', false, 3),
  ('00000000-0000-4000-a000-000032853050', 'Das verstehe ich nicht.', 'I don''t understand that.', 'هذا لا أفهمه.', NULL, 'Used in Bildung und Lernen', 'neutral', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-000032853050', 'die die Schule (die Schulen)', 'school — المدرسة', 'noun', 'vocabulary', 1),
  ('00000000-0000-4000-a000-000032853050', 'der der Lehrer (die Lehrer)', 'teacher — المعلم', 'noun', 'vocabulary', 2),
  ('00000000-0000-4000-a000-000032853050', 'der der Student (die Studenten)', 'student — الطالب', 'noun', 'vocabulary', 3),
  ('00000000-0000-4000-a000-000032853050', 'die die Universität (die Universitäten)', 'university — الجامعة', 'noun', 'vocabulary', 4),
  ('00000000-0000-4000-a000-000032853050', 'der der Kurs (die Kurse)', 'course — الدورة', 'noun', 'vocabulary', 5),
  ('00000000-0000-4000-a000-000032853050', 'die die Prüfung (die Prüfungen)', 'exam — الامتحان', 'noun', 'vocabulary', 6),
  ('00000000-0000-4000-a000-000032853050', 'das das Studium', 'studies — الدراسة الجامعية', 'noun', 'vocabulary', 7),
  ('00000000-0000-4000-a000-000032853050', 'lernen', 'to learn — يتعلم', 'verb', 'vocabulary', 8),
  ('00000000-0000-4000-a000-000032853050', 'der der Beruf (die Berufe)', 'profession — المهنة', 'noun', 'vocabulary', 9),
  ('00000000-0000-4000-a000-000032853050', 'die die Firma (die Firmen)', 'company — الشركة', 'noun', 'vocabulary', 10),
  ('00000000-0000-4000-a000-000032853050', 'der der Kollege (die Kollegen)', 'colleague — الزميل', 'noun', 'vocabulary', 11),
  ('00000000-0000-4000-a000-000032853050', 'das das Büro (die Büros)', 'office — المكتب', 'noun', 'vocabulary', 12),
  ('00000000-0000-4000-a000-000032853050', 'die die Besprechung (die Besprechungen)', 'meeting — الاجتماع', 'noun', 'vocabulary', 13),
  ('00000000-0000-4000-a000-000032853050', 'der der Chef (die Chefs)', 'boss — المدير', 'noun', 'vocabulary', 14),
  ('00000000-0000-4000-a000-000032853050', 'das das Gehalt (die Gehälter)', 'salary — الراتب', 'noun', 'vocabulary', 15),
  ('00000000-0000-4000-a000-000032853050', 'Der große Hund gehört der alten Frau.', 'The big dog belongs to the old woman.', 'Adjektivdeklination (Adjective Declension)', 'grammar', 16),
  ('00000000-0000-4000-a000-000032853050', 'Ein interessantes Buch liegt auf dem Tisch.', 'An interesting book is on the table.', 'Adjektivdeklination (Adjective Declension)', 'grammar', 17);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, french_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-000032853050', 'Eine Präsentation halten — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', NULL, 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, french_translation, duration_seconds, speaker_count, scenario) values
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

[Lehrerin]: ممتاز! إلى الغد!', '[Lehrerin]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: ', 72, 2, 'Bildung und Lernen');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-000032853050', '🔊 Sprechen: Eine Präsentation halten', 'Discussion: You attend a German Stammtisch (weekly meetup). Discuss Presentations with the group. Express your opinion, agree/disagree, ask follow-up questions. Try to keep the conversation flowing for 2 minutes.', 'Presentations', ARRAY['Use discourse markers (also, jedoch, außerdem)','React naturally: "Ach so!", "Echt?", "Das stimmt!"','Paraphrase when you don''t know a word']::text[], ARRAY['die Schule','der Lehrer','der Student','die Universität','der Kurs','die Prüfung','das Studium','lernen']::text[], 60, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-000032853050', '✏️ Schreiben: Eine Präsentation halten', 'Write a formal letter (200-250 words) to your German teacher explaining what you learned about "Presentations". Include: what surprised you, what was similar/different to your culture, and what you want to learn next. Use present_tense correctly.', ARRAY['Use paragraph breaks for structure','Connect ideas with "außerdem", "deshalb", "jedoch"','Check your verb position in Nebensätze']::text[], ARRAY['die Schule','der Lehrer','der Student','die Universität','der Kurs','die Prüfung','das Studium','lernen']::text[], ARRAY['Sentence structure','Vocabulary usage']::text[], 150, 250, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000032853050', 'Eine Präsentation halten — Roleplay', 'Presentations', 'Student', 'Teacher', 'Practice conversation about Presentations', 'Hallo! Lass uns über dieses Thema sprechen.', 'intermediate', 1, ARRAY['die Schule','der Lehrer','der Student','die Universität','der Kurs','die Prüfung','das Studium','lernen']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000032853050', 'Eine Präsentation halten — Advanced Roleplay', 'Presentations', 'Customer', 'Assistant', 'Extended conversation about Presentations', 'Guten Tag! Wie kann ich Ihnen helfen?', 'intermediate', 2, ARRAY['die Schule','der Lehrer','der Student','die Universität','der Kurs','die Prüfung','das Studium','lernen']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-000032853050', 'Eine Präsentation halten — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Eine Präsentation halten".', 'Creative practice for Presentations', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-000032853050', '📚 Hausaufgabe: Eine Präsentation halten', 'Complete these tasks to reinforce "Eine Präsentation halten".', 'mixed', '[{"description":"Create 10 flashcards from this lesson''s vocabulary — write German on one side, Arabic on the other. Test yourself 3 times."},{"description":"Write 6 sentences about Presentations: 2 statements, 2 questions, 2 negations — all using present_tense."},{"description":"Record yourself reading the dialogue aloud. Listen to the recording and note 3 things to improve."},{"description":"Find 3 real German websites, videos, or articles about Presentations. Note 5 new words you discovered."}]', 50, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-000032853050', '🎯 Excellent progress! This lesson covered Presentations (75 vocabulary items) and present_tense. You developed reading, listening, speaking, and writing skills in the context of education. Focus on your common mistakes area for maximum improvement.', '["75 vocabulary items about Presentations","present_tense — grammar explanation and practice","Reading comprehension: text about Presentations","Listening comprehension: dialogue about Presentations","Speaking practice: roleplay/discussion about Presentations","Writing task: text about Presentations"]', '[{"title":"Eine Präsentation halten Review","summary":"present_tense — the main grammar focus. Focus on using this structure naturally in conversations and writing."}]', ARRAY['die Schule (school)','der Lehrer (teacher)','der Student (student)','die Universität (university)','der Kurs (course)']::text[], ARRAY['Don''t translate from Arabic word-for-word — German has different sentence structure','Learn every noun with its article: NEVER learn "Tisch" alone, always "der Tisch"','Watch out for verb position in Nebensätze']::text[], ARRAY['Practice 15-20 minutes daily — consistency beats intensity','Speak out loud: German pronunciation needs muscle memory','Use the new vocabulary within 24 hours or you''ll forget it','Watch German YouTube videos about Presentations for authentic input']::text[]);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000032853050', 'Pronunciation: Intonation and sentence melody', 'German sentences have a falling intonation at the end of statements. Questions starting with a verb rise at the end. W-questions fall at the end. Emphasise the stressed syllable — German stresses the first syllable of the root.

Common mistake for Arabic speakers: Arabic speakers often put stress on the wrong syllable. Remember: German root stress is usually on the first syllable.', '[]', '[{"german":"warum","arabic":"","english":"","phonetic":"/vaˈrʊm/"},{"german":"deshalb","arabic":"","english":"","phonetic":"/dɛsˈhalp/"}]', '[]', 10);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000032853050', 'translation', 'Translate to German: "I use the word "school" in a sentence about Presentations."', '[]', 'Die Kinder gehen zur Schule.', 'Use die  "die Schule" with the correct present_tense form.', 1, 40);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000032853050', 'translation', 'Translate to German: "I use the word "teacher" in a sentence about Presentations."', '[]', 'Der Lehrer erklärt die Grammatik.', 'Use der  "der Lehrer" with the correct present_tense form.', 1, 41);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000032853050', 'translation', 'Translate to German: "I use the word "student" in a sentence about Presentations."', '[]', 'Der Student lernt Deutsch.', 'Use der  "der Student" with the correct present_tense form.', 1, 42);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000032853050', 'Culture: 🇩🇪 Deutsche Kultur: Presentations', 'Presentations in Germany has specific cultural nuances that differ from Arabic-speaking countries. Germans tend to separate their private and professional lives strictly. When dealing with Presentations in a professional context, use formal register and prepare factual arguments. Emotional appeals are less effective than logical reasoning.

لدى Presentations في ألمانيا فروق ثقافية دقيقة تختلف عن البلدان العربية. الألمان يفصلون بين حياتهم الخاصة والمهنية بشكل صارم.', '["Tip: Always use \"Sie\" (formal) with strangers and colleagues","Tip: Germans appreciate punctuality — arrive 5 minutes early","Tip: Direct feedback is a sign of respect, not criticism","Tip: Prepare factual arguments, not emotional appeals"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000032853050', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Using \"studieren\" and \"lernen\" interchangeably","correction":"studieren = study at university, lernen = learn/study in general","explanation":"Arabic \"darasa\" covers both. German distinguishes level of education."},{"mistake":"Putting the verb at the end in main clauses","correction":"Verb stays in position 2 in main clauses","explanation":"Subordinate clause word order interferes"}]', 30);

  -- Lesson 5: Test: Bildung und Lernen (L-B1-04-05)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-00003285304f', '00000000-0000-4000-a000-000039c2eae2', 'Test: Bildung und Lernen', 'Module test on education and learning.', 'Module Test', 'test', '["Understand and apply present_tense rules correctly","Use present_tense in real conversations","Avoid common mistakes Arabic speakers make with present_tense","Read and understand present_tense in context","Listen and identify present_tense in speech","Write sentences using present_tense correctly"]', 40, 5, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, french_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-00003285304f', 'die Schule', 'المدرسة', 'school', NULL, 'die', 'die Schulen', 'noun', 'Die Kinder gehen zur Schule.', 'The children go to school.', 'A1', 1),
  ('00000000-0000-4000-a000-00003285304f', 'der Lehrer', 'المعلم', 'teacher', NULL, 'der', 'die Lehrer', 'noun', 'Der Lehrer erklärt die Grammatik.', 'The teacher explains the grammar.', 'A1', 2),
  ('00000000-0000-4000-a000-00003285304f', 'der Student', 'الطالب', 'student', NULL, 'der', 'die Studenten', 'noun', 'Der Student lernt Deutsch.', 'The student learns German.', 'A1', 3),
  ('00000000-0000-4000-a000-00003285304f', 'die Universität', 'الجامعة', 'university', NULL, 'die', 'die Universitäten', 'noun', 'Die Universität ist alt.', 'The university is old.', 'B1', 4),
  ('00000000-0000-4000-a000-00003285304f', 'der Kurs', 'الدورة', 'course', NULL, 'der', 'die Kurse', 'noun', 'Der Kurs kostet 200 Euro.', 'The course costs 200 euros.', 'A2', 5),
  ('00000000-0000-4000-a000-00003285304f', 'die Prüfung', 'الامتحان', 'exam', NULL, 'die', 'die Prüfungen', 'noun', 'Die Prüfung ist schwer.', 'The exam is difficult.', 'B1', 6),
  ('00000000-0000-4000-a000-00003285304f', 'das Studium', 'الدراسة الجامعية', 'studies', NULL, 'das', NULL, 'noun', 'Mein Studium dauert vier Jahre.', 'My studies take four years.', 'B1', 7),
  ('00000000-0000-4000-a000-00003285304f', 'lernen', 'يتعلم', 'to learn', NULL, NULL, NULL, 'verb', 'Ich lerne Deutsch.', 'I learn German.', 'A1', 8),
  ('00000000-0000-4000-a000-00003285304f', 'der Beruf', 'المهنة', 'profession', NULL, 'der', 'die Berufe', 'noun', 'Was ist dein Beruf?', 'What is your profession?', 'A1', 9),
  ('00000000-0000-4000-a000-00003285304f', 'die Firma', 'الشركة', 'company', NULL, 'die', 'die Firmen', 'noun', 'Die Firma ist in Berlin.', 'The company is in Berlin.', 'A1', 10),
  ('00000000-0000-4000-a000-00003285304f', 'der Kollege', 'الزميل', 'colleague', NULL, 'der', 'die Kollegen', 'noun', 'Mein Kollege hilft mir.', 'My colleague helps me.', 'A1', 11),
  ('00000000-0000-4000-a000-00003285304f', 'das Büro', 'المكتب', 'office', NULL, 'das', 'die Büros', 'noun', 'Das Büro ist im dritten Stock.', 'The office is on the third floor.', 'A1', 12),
  ('00000000-0000-4000-a000-00003285304f', 'die Besprechung', 'الاجتماع', 'meeting', NULL, 'die', 'die Besprechungen', 'noun', 'Wir haben eine Besprechung.', 'We have a meeting.', 'B1', 13),
  ('00000000-0000-4000-a000-00003285304f', 'der Chef', 'المدير', 'boss', NULL, 'der', 'die Chefs', 'noun', 'Mein Chef ist freundlich.', 'My boss is friendly.', 'A1', 14),
  ('00000000-0000-4000-a000-00003285304f', 'das Gehalt', 'الراتب', 'salary', NULL, 'das', 'die Gehälter', 'noun', 'Das Gehalt ist gut.', 'The salary is good.', 'B1', 15),
  ('00000000-0000-4000-a000-00003285304f', 'die Stelle', 'الوظيفة', 'position', NULL, 'die', 'die Stellen', 'noun', 'Ich suche eine neue Stelle.', 'I am looking for a new position.', 'B1', 16),
  ('00000000-0000-4000-a000-00003285304f', 'die Zeitung', 'الجريدة', 'newspaper', NULL, 'die', 'die Zeitungen', 'noun', 'Ich lese die Zeitung.', 'I read the newspaper.', 'A2', 17),
  ('00000000-0000-4000-a000-00003285304f', 'das Internet', 'الإنترنت', 'internet', NULL, 'das', NULL, 'noun', 'Das Internet ist schnell.', 'The internet is fast.', 'A2', 18),
  ('00000000-0000-4000-a000-00003285304f', 'der Artikel', 'المقال', 'article', NULL, 'der', 'die Artikel', 'noun', 'Der Artikel ist interessant.', 'The article is interesting.', 'B1', 19),
  ('00000000-0000-4000-a000-00003285304f', 'die Nachricht', 'الخبر', 'news', NULL, 'die', 'die Nachrichten', 'noun', 'Ich sehe die Nachrichten.', 'I watch the news.', 'A2', 20),
  ('00000000-0000-4000-a000-00003285304f', 'das Radio', 'الراديو', 'radio', NULL, 'das', 'die Radios', 'noun', 'Ich höre Radio.', 'I listen to the radio.', 'A2', 21),
  ('00000000-0000-4000-a000-00003285304f', 'das Fernsehen', 'التلفاز', 'television', NULL, 'das', NULL, 'noun', 'Das Fernsehen läuft.', 'The television is on.', 'A2', 22),
  ('00000000-0000-4000-a000-00003285304f', 'die Zeitschrift', 'المجلة', 'magazine', NULL, 'die', 'die Zeitschriften', 'noun', 'Die Zeitschrift erscheint monatlich.', 'The magazine is published monthly.', 'B1', 23),
  ('00000000-0000-4000-a000-00003285304f', 'der Journalist', 'الصحفي', 'journalist', NULL, 'der', 'die Journalisten', 'noun', 'Der Journalist schreibt einen Artikel.', 'The journalist writes an article.', 'B1', 24),
  ('00000000-0000-4000-a000-00003285304f', 'die Gesellschaft', 'المجتمع', 'society', NULL, 'die', NULL, 'noun', 'Die Gesellschaft verändert sich.', 'Society is changing.', 'B1', 25),
  ('00000000-0000-4000-a000-00003285304f', 'die Politik', 'السياسة', 'politics', NULL, 'die', NULL, 'noun', 'Politik ist ein wichtiges Thema.', 'Politics is an important topic.', 'B1', 26),
  ('00000000-0000-4000-a000-00003285304f', 'die Integration', 'الاندماج', 'integration', NULL, 'die', NULL, 'noun', 'Integration ist wichtig.', 'Integration is important.', 'B1', 27),
  ('00000000-0000-4000-a000-00003285304f', 'die Kultur', 'الثقافة', 'culture', NULL, 'die', NULL, 'noun', 'Die deutsche Kultur ist vielfältig.', 'German culture is diverse.', 'A2', 28),
  ('00000000-0000-4000-a000-00003285304f', 'der Bürger', 'المواطن', 'citizen', NULL, 'der', 'die Bürger', 'noun', 'Die Bürger wählen.', 'The citizens vote.', 'B1', 29),
  ('00000000-0000-4000-a000-00003285304f', 'die Freiheit', 'الحرية', 'freedom', NULL, 'die', NULL, 'noun', 'Freiheit ist ein Grundrecht.', 'Freedom is a basic right.', 'B1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00003285304f', 'Konjunktiv II: Höfliche Bitten und irreale Sätze (Subjunctive for Politeness) / صيغة الشرط الثانية: الطلبات المهذبة والجمل غير الواقعية', 'Konjunktiv II is used for polite requests (Ich hätte gern...), unreal situations (Wenn ich Zeit hätte...), and wishes (Ich wünschte, ich wäre...). For most verbs, use "würde + infinitive". Only a few common verbs have their own subjunctive form: hätte (hätten), wäre (wären), könnte (könnten).', '[{"rule":"würde + Infinitiv (most verbs)","note":"Ich würde gern kommen. (I would like to come.)"},{"rule":"hätte (haben), wäre (sein), könnte (können)","note":"Ich hätte gern einen Kaffee. (I would like a coffee.)"},{"rule":"Wenn... dann... (if... then...)","note":"Wenn ich Zeit hätte, würde ich reisen. (If I had time, I would travel.)"}]', '[{"german":"Ich hätte gern einen Kaffee, bitte.","arabic":"أود فنجان قهوة من فضلك.","english":"I would like a coffee, please."},{"german":"Wenn ich mehr Zeit hätte, würde ich Deutsch lernen.","arabic":"لو كان لدي وقت أكثر، لتعلمت الألمانية.","english":"If I had more time, I would learn German."},{"german":"Könnten Sie mir bitte helfen?","arabic":"هل يمكنكم مساعدتي من فضلكم؟","english":"Could you please help me?"}]', '[{"mistake":"Ich will einen Kaffee (too direct in restaurant)","correction":"Ich hätte gern einen Kaffee.","explanation":"In German restaurants, use Konjunktiv II to be polite, not \"ich will\"."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00003285304f', 'multiple_choice', 'Welches deutsche Wort bedeutet "school"?', '["der Lehrer","der Student","die Schule","die Universität"]', 'die Schule', '"school" = "die Schule" in German. Article: die Plural: die Schulen', 1, 1),
  ('00000000-0000-4000-a000-00003285304f', 'multiple_choice', 'Welches deutsche Wort bedeutet "teacher"?', '["der Lehrer","die Schule","der Student","die Universität"]', 'der Lehrer', '"teacher" = "der Lehrer" in German. Article: der Plural: die Lehrer', 1, 2),
  ('00000000-0000-4000-a000-00003285304f', 'multiple_choice', 'Welches deutsche Wort bedeutet "student"?', '["der Lehrer","der Kurs","der Student","die Schule"]', 'der Student', '"student" = "der Student" in German. Article: der Plural: die Studenten', 1, 3),
  ('00000000-0000-4000-a000-00003285304f', 'multiple_choice', 'Welches deutsche Wort bedeutet "university"?', '["die Universität","der Student","der Kurs","die Schule"]', 'die Universität', '"university" = "die Universität" in German. Article: die Plural: die Universitäten', 1, 4),
  ('00000000-0000-4000-a000-00003285304f', 'multiple_choice', 'Welches deutsche Wort bedeutet "course"?', '["der Kurs","der Lehrer","die Schule","die Universität"]', 'der Kurs', '"course" = "der Kurs" in German. Article: der Plural: die Kurse', 1, 5),
  ('00000000-0000-4000-a000-00003285304f', 'fill_gap', 'Ergänze den Satz: Ich ___ gern über Module Test. (sprechen)', '["spreche","sprichst","spricht","sprechen"]', 'spreche', 'ich spreche gern = I like to speak. Stem: sprech- + e.', 2, 6),
  ('00000000-0000-4000-a000-00003285304f', 'translation', 'Übersetze ins Deutsche: "I am learning about Module Test."', '["Ich lerne über Module Test.","Ich lerne Module Test.","Lerne ich Module Test."]', 'Ich lerne über Module Test.', '"Ich lerne über..." = "I am learning about..."', 2, 7),
  ('00000000-0000-4000-a000-00003285304f', 'matching', 'Match: Which word pairs are correct?', '["die Schule - school, der Lehrer - teacher"]', 'Matched correctly', 'Each German word has a unique English equivalent.', 2, 8);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-00003285304f', 'multiple_choice', 'Was bedeutet "die Schule" auf Deutsch?', '["school","to run","beautiful","yesterday"]', 'school', 1, 1),
  ('00000000-0000-4000-a000-00003285304f', 'multiple_choice', 'Welcher Artikel gehört zu "der Lehrer"?', '["der","die","das","den"]', 'der', 1, 2),
  ('00000000-0000-4000-a000-00003285304f', 'true_false', 'Das Wort "der Student" gehört zum Thema Module Test.', '["True","False"]', 'True', 1, 3),
  ('00000000-0000-4000-a000-00003285304f', 'multiple_choice', 'Welcher Satz verwendet present_tense?', '["Ich hätte gern einen Kaffee, bitte.","Wenn ich mehr Zeit hätte, würde ich Deutsch lernen.","Könnten Sie mir bitte helfen?"]', 'Ich hätte gern einen Kaffee, bitte.', 2, 4),
  ('00000000-0000-4000-a000-00003285304f', 'true_false', ''Im Deutschen steht das Verb an zweiter Position im Hauptsatz.', '["True","False"]', 'True', 1, 5),
  ('00000000-0000-4000-a000-00003285304f', 'fill_blank', 'Complete: Ich ___ (university) Deutsch.', '["die Universität","lernt","lernst","lernen"]', 'lerne', 2, 6),
  ('00000000-0000-4000-a000-00003285304f', 'multiple_choice', 'Wie lautet das deutsche Wort für "course"?', '["der Kurs","die Prüfung","das Studium","lernen"]', 'der Kurs', 1, 7),
  ('00000000-0000-4000-a000-00003285304f', 'true_false', 'Im Deutschen werden alle Nomen großgeschrieben.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-00003285304f', 'multiple_choice', 'How do you say "please" in a restaurant in Germany?', '["Bitte","Danke","Tschüss","Hallo"]', 'Bitte', 1, 9),
  ('00000000-0000-4000-a000-00003285304f', 'fill_blank', 'Wo ___ (to live) du?', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 2, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, french_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-00003285304f', 'Ich studiere an der Universität.', 'I study at the university.', 'أدرس في الجامعة.', NULL, 'Used in Bildung und Lernen', 'neutral', false, 1),
  ('00000000-0000-4000-a000-00003285304f', 'Können Sie das bitte erklären?', 'Can you please explain that?', 'هل يمكنكم شرح ذلك من فضلكم؟', NULL, 'Used in Bildung und Lernen', 'formal', false, 2),
  ('00000000-0000-4000-a000-00003285304f', 'Ich habe eine Frage.', 'I have a question.', 'لدي سؤال.', NULL, 'Used in Bildung und Lernen', 'neutral', false, 3),
  ('00000000-0000-4000-a000-00003285304f', 'Das verstehe ich nicht.', 'I don''t understand that.', 'هذا لا أفهمه.', NULL, 'Used in Bildung und Lernen', 'neutral', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-00003285304f', 'die die Schule (die Schulen)', 'school — المدرسة', 'noun', 'vocabulary', 1),
  ('00000000-0000-4000-a000-00003285304f', 'der der Lehrer (die Lehrer)', 'teacher — المعلم', 'noun', 'vocabulary', 2),
  ('00000000-0000-4000-a000-00003285304f', 'der der Student (die Studenten)', 'student — الطالب', 'noun', 'vocabulary', 3),
  ('00000000-0000-4000-a000-00003285304f', 'die die Universität (die Universitäten)', 'university — الجامعة', 'noun', 'vocabulary', 4),
  ('00000000-0000-4000-a000-00003285304f', 'der der Kurs (die Kurse)', 'course — الدورة', 'noun', 'vocabulary', 5),
  ('00000000-0000-4000-a000-00003285304f', 'die die Prüfung (die Prüfungen)', 'exam — الامتحان', 'noun', 'vocabulary', 6),
  ('00000000-0000-4000-a000-00003285304f', 'das das Studium', 'studies — الدراسة الجامعية', 'noun', 'vocabulary', 7),
  ('00000000-0000-4000-a000-00003285304f', 'lernen', 'to learn — يتعلم', 'verb', 'vocabulary', 8),
  ('00000000-0000-4000-a000-00003285304f', 'der der Beruf (die Berufe)', 'profession — المهنة', 'noun', 'vocabulary', 9),
  ('00000000-0000-4000-a000-00003285304f', 'die die Firma (die Firmen)', 'company — الشركة', 'noun', 'vocabulary', 10),
  ('00000000-0000-4000-a000-00003285304f', 'der der Kollege (die Kollegen)', 'colleague — الزميل', 'noun', 'vocabulary', 11),
  ('00000000-0000-4000-a000-00003285304f', 'das das Büro (die Büros)', 'office — المكتب', 'noun', 'vocabulary', 12),
  ('00000000-0000-4000-a000-00003285304f', 'die die Besprechung (die Besprechungen)', 'meeting — الاجتماع', 'noun', 'vocabulary', 13),
  ('00000000-0000-4000-a000-00003285304f', 'der der Chef (die Chefs)', 'boss — المدير', 'noun', 'vocabulary', 14),
  ('00000000-0000-4000-a000-00003285304f', 'das das Gehalt (die Gehälter)', 'salary — الراتب', 'noun', 'vocabulary', 15),
  ('00000000-0000-4000-a000-00003285304f', 'Ich hätte gern einen Kaffee, bitte.', 'I would like a coffee, please.', 'Konjunktiv II: Höfliche Bitten und irreale Sätze (Subjunctive for Politeness)', 'grammar', 16),
  ('00000000-0000-4000-a000-00003285304f', 'Wenn ich mehr Zeit hätte, würde ich Deutsch lernen.', 'If I had more time, I would learn German.', 'Konjunktiv II: Höfliche Bitten und irreale Sätze (Subjunctive for Politeness)', 'grammar', 17),
  ('00000000-0000-4000-a000-00003285304f', 'Könnten Sie mir bitte helfen?', 'Could you please help me?', 'Konjunktiv II: Höfliche Bitten und irreale Sätze (Subjunctive for Politeness)', 'grammar', 18);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, french_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-00003285304f', 'Test: Bildung und Lernen — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', NULL, 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, french_translation, duration_seconds, speaker_count, scenario) values
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

[Lehrerin]: ممتاز! إلى الغد!', '[Lehrerin]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: ', 72, 2, 'Bildung und Lernen');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-00003285304f', '🔊 Sprechen: Test: Bildung und Lernen', 'Discussion: You attend a German Stammtisch (weekly meetup). Discuss Module Test with the group. Express your opinion, agree/disagree, ask follow-up questions. Try to keep the conversation flowing for 2 minutes.', 'Module Test', ARRAY['Use discourse markers (also, jedoch, außerdem)','React naturally: "Ach so!", "Echt?", "Das stimmt!"','Paraphrase when you don''t know a word']::text[], ARRAY['die Schule','der Lehrer','der Student','die Universität','der Kurs','die Prüfung','das Studium','lernen']::text[], 60, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-00003285304f', '✏️ Schreiben: Test: Bildung und Lernen', 'Write a formal letter (200-250 words) to your German teacher explaining what you learned about "Module Test". Include: what surprised you, what was similar/different to your culture, and what you want to learn next. Use present_tense correctly.', ARRAY['Use paragraph breaks for structure','Connect ideas with "außerdem", "deshalb", "jedoch"','Check your verb position in Nebensätze']::text[], ARRAY['die Schule','der Lehrer','der Student','die Universität','der Kurs','die Prüfung','das Studium','lernen']::text[], ARRAY['Sentence structure','Vocabulary usage']::text[], 150, 250, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00003285304f', 'Test: Bildung und Lernen — Roleplay', 'Module Test', 'Student', 'Teacher', 'Practice conversation about Module Test', 'Hallo! Lass uns über dieses Thema sprechen.', 'intermediate', 1, ARRAY['die Schule','der Lehrer','der Student','die Universität','der Kurs','die Prüfung','das Studium','lernen']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00003285304f', 'Test: Bildung und Lernen — Advanced Roleplay', 'Module Test', 'Customer', 'Assistant', 'Extended conversation about Module Test', 'Guten Tag! Wie kann ich Ihnen helfen?', 'intermediate', 2, ARRAY['die Schule','der Lehrer','der Student','die Universität','der Kurs','die Prüfung','das Studium','lernen']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-00003285304f', 'Test: Bildung und Lernen — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Test: Bildung und Lernen".', 'Creative practice for Module Test', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-00003285304f', '📚 Hausaufgabe: Test: Bildung und Lernen', 'Complete these tasks to reinforce "Test: Bildung und Lernen".', 'mixed', '[{"description":"Create 10 flashcards from this lesson''s vocabulary — write German on one side, Arabic on the other. Test yourself 3 times."},{"description":"Write 6 sentences about Module Test: 2 statements, 2 questions, 2 negations — all using present_tense."},{"description":"Record yourself reading the dialogue aloud. Listen to the recording and note 3 things to improve."},{"description":"Find 3 real German websites, videos, or articles about Module Test. Note 5 new words you discovered."}]', 50, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-00003285304f', '🎯 Excellent progress! This lesson covered Module Test (75 vocabulary items) and present_tense. You developed reading, listening, speaking, and writing skills in the context of education. Focus on your common mistakes area for maximum improvement.', '["75 vocabulary items about Module Test","present_tense — grammar explanation and practice","Reading comprehension: text about Module Test","Listening comprehension: dialogue about Module Test","Speaking practice: roleplay/discussion about Module Test","Writing task: text about Module Test"]', '[{"title":"Test: Bildung und Lernen Review","summary":"present_tense — the main grammar focus. Focus on using this structure naturally in conversations and writing."}]', ARRAY['die Schule (school)','der Lehrer (teacher)','der Student (student)','die Universität (university)','der Kurs (course)']::text[], ARRAY['Don''t translate from Arabic word-for-word — German has different sentence structure','Learn every noun with its article: NEVER learn "Tisch" alone, always "der Tisch"','Watch out for verb position in Nebensätze']::text[], ARRAY['Practice 15-20 minutes daily — consistency beats intensity','Speak out loud: German pronunciation needs muscle memory','Use the new vocabulary within 24 hours or you''ll forget it','Watch German YouTube videos about Module Test for authentic input']::text[]);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00003285304f', 'Pronunciation: Intonation and sentence melody', 'German sentences have a falling intonation at the end of statements. Questions starting with a verb rise at the end. W-questions fall at the end. Emphasise the stressed syllable — German stresses the first syllable of the root.

Common mistake for Arabic speakers: Arabic speakers often put stress on the wrong syllable. Remember: German root stress is usually on the first syllable.', '[]', '[{"german":"warum","arabic":"","english":"","phonetic":"/vaˈrʊm/"},{"german":"deshalb","arabic":"","english":"","phonetic":"/dɛsˈhalp/"}]', '[]', 10);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00003285304f', 'translation', 'Translate to German: "I use the word "school" in a sentence about Module Test."', '[]', 'Die Kinder gehen zur Schule.', 'Use die  "die Schule" with the correct present_tense form.', 1, 40);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00003285304f', 'translation', 'Translate to German: "I use the word "teacher" in a sentence about Module Test."', '[]', 'Der Lehrer erklärt die Grammatik.', 'Use der  "der Lehrer" with the correct present_tense form.', 1, 41);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00003285304f', 'translation', 'Translate to German: "I use the word "student" in a sentence about Module Test."', '[]', 'Der Student lernt Deutsch.', 'Use der  "der Student" with the correct present_tense form.', 1, 42);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00003285304f', 'Culture: 🇩🇪 Deutsche Kultur: Module Test', 'Module Test in Germany has specific cultural nuances that differ from Arabic-speaking countries. Germans tend to separate their private and professional lives strictly. When dealing with Module Test in a professional context, use formal register and prepare factual arguments. Emotional appeals are less effective than logical reasoning.

لدى Module Test في ألمانيا فروق ثقافية دقيقة تختلف عن البلدان العربية. الألمان يفصلون بين حياتهم الخاصة والمهنية بشكل صارم.', '["Tip: Always use \"Sie\" (formal) with strangers and colleagues","Tip: Germans appreciate punctuality — arrive 5 minutes early","Tip: Direct feedback is a sign of respect, not criticism","Tip: Prepare factual arguments, not emotional appeals"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00003285304f', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Using \"studieren\" and \"lernen\" interchangeably","correction":"studieren = study at university, lernen = learn/study in general","explanation":"Arabic \"darasa\" covers both. German distinguishes level of education."},{"mistake":"Putting the verb at the end in main clauses","correction":"Verb stays in position 2 in main clauses","explanation":"Subordinate clause word order interferes"}]', 30);

  -- Module 5: Umwelt und Nachhaltigkeit
  insert into public.course_modules (id, level_id, title, description, objectives, order_index, estimated_hours, is_published)
  values ('00000000-0000-4000-a000-000039c2eae3', 'B1', 'Umwelt und Nachhaltigkeit', 'Discuss environmental issues and sustainability.', '["Discuss environmental topics","Use um...zu and damit for purpose","Understand and discuss news articles","Make suggestions and proposals","Compare environmental policies"]', 5, 5, true)
  on conflict (id) do nothing;

  -- Lesson 1: Umweltschutz und Nachhaltigkeit (L-B1-05-01)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-00003284bbf4', '00000000-0000-4000-a000-000039c2eae3', 'Umweltschutz und Nachhaltigkeit', 'Learn environmental and sustainability vocabulary.', 'Environment', 'vocabulary', '["Understand and use 75 key vocabulary words about Environment","Apply present_tense correctly in sentences","Read and comprehend a text about Environment","Listen and understand a natural dialogue about Environment","Speak about Environment with confidence","Write a short text about Environment using new vocabulary"]', 50, 1, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, french_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-00003284bbf4', 'die Umwelt', 'البيئة', 'environment', NULL, 'die', NULL, 'noun', 'Wir müssen die Umwelt schützen.', 'We must protect the environment.', 'B1', 1),
  ('00000000-0000-4000-a000-00003284bbf4', 'der Klimawandel', 'تغير المناخ', 'climate change', NULL, 'der', NULL, 'noun', 'Der Klimawandel ist ein globales Problem.', 'Climate change is a global problem.', 'B1', 2),
  ('00000000-0000-4000-a000-00003284bbf4', 'die Energie', 'الطاقة', 'energy', NULL, 'die', NULL, 'noun', 'Erneuerbare Energie ist wichtig.', 'Renewable energy is important.', 'B1', 3),
  ('00000000-0000-4000-a000-00003284bbf4', 'der Müll', 'النفايات', 'waste', NULL, 'der', NULL, 'noun', 'In Deutschland trennt man den Müll.', 'In Germany, waste is separated.', 'B1', 4),
  ('00000000-0000-4000-a000-00003284bbf4', 'recyceln', 'يعيد التدوير', 'to recycle', NULL, NULL, NULL, 'verb', 'Wir recyceln Papier und Plastik.', 'We recycle paper and plastic.', 'B1', 5),
  ('00000000-0000-4000-a000-00003284bbf4', 'die Nachhaltigkeit', 'الاستدامة', 'sustainability', NULL, 'die', NULL, 'noun', 'Nachhaltigkeit ist ein Trend.', 'Sustainability is a trend.', 'B1', 6),
  ('00000000-0000-4000-a000-00003284bbf4', 'die Luft', 'الهواء', 'air', NULL, 'die', NULL, 'noun', 'Die Luft ist frisch.', 'The air is fresh.', 'A2', 7),
  ('00000000-0000-4000-a000-00003284bbf4', 'das Wasser', 'الماء', 'water', NULL, 'das', NULL, 'noun', 'Das Wasser ist sauber.', 'The water is clean.', 'A1', 8),
  ('00000000-0000-4000-a000-00003284bbf4', 'der Beruf', 'المهنة', 'profession', NULL, 'der', 'die Berufe', 'noun', 'Was ist dein Beruf?', 'What is your profession?', 'A1', 9),
  ('00000000-0000-4000-a000-00003284bbf4', 'die Firma', 'الشركة', 'company', NULL, 'die', 'die Firmen', 'noun', 'Die Firma ist in Berlin.', 'The company is in Berlin.', 'A1', 10),
  ('00000000-0000-4000-a000-00003284bbf4', 'der Kollege', 'الزميل', 'colleague', NULL, 'der', 'die Kollegen', 'noun', 'Mein Kollege hilft mir.', 'My colleague helps me.', 'A1', 11),
  ('00000000-0000-4000-a000-00003284bbf4', 'das Büro', 'المكتب', 'office', NULL, 'das', 'die Büros', 'noun', 'Das Büro ist im dritten Stock.', 'The office is on the third floor.', 'A1', 12),
  ('00000000-0000-4000-a000-00003284bbf4', 'die Besprechung', 'الاجتماع', 'meeting', NULL, 'die', 'die Besprechungen', 'noun', 'Wir haben eine Besprechung.', 'We have a meeting.', 'B1', 13),
  ('00000000-0000-4000-a000-00003284bbf4', 'der Chef', 'المدير', 'boss', NULL, 'der', 'die Chefs', 'noun', 'Mein Chef ist freundlich.', 'My boss is friendly.', 'A1', 14),
  ('00000000-0000-4000-a000-00003284bbf4', 'das Gehalt', 'الراتب', 'salary', NULL, 'das', 'die Gehälter', 'noun', 'Das Gehalt ist gut.', 'The salary is good.', 'B1', 15),
  ('00000000-0000-4000-a000-00003284bbf4', 'die Stelle', 'الوظيفة', 'position', NULL, 'die', 'die Stellen', 'noun', 'Ich suche eine neue Stelle.', 'I am looking for a new position.', 'B1', 16),
  ('00000000-0000-4000-a000-00003284bbf4', 'die Schule', 'المدرسة', 'school', NULL, 'die', 'die Schulen', 'noun', 'Die Kinder gehen zur Schule.', 'The children go to school.', 'A1', 17),
  ('00000000-0000-4000-a000-00003284bbf4', 'der Lehrer', 'المعلم', 'teacher', NULL, 'der', 'die Lehrer', 'noun', 'Der Lehrer erklärt die Grammatik.', 'The teacher explains the grammar.', 'A1', 18),
  ('00000000-0000-4000-a000-00003284bbf4', 'der Student', 'الطالب', 'student', NULL, 'der', 'die Studenten', 'noun', 'Der Student lernt Deutsch.', 'The student learns German.', 'A1', 19),
  ('00000000-0000-4000-a000-00003284bbf4', 'die Universität', 'الجامعة', 'university', NULL, 'die', 'die Universitäten', 'noun', 'Die Universität ist alt.', 'The university is old.', 'B1', 20),
  ('00000000-0000-4000-a000-00003284bbf4', 'der Kurs', 'الدورة', 'course', NULL, 'der', 'die Kurse', 'noun', 'Der Kurs kostet 200 Euro.', 'The course costs 200 euros.', 'A2', 21),
  ('00000000-0000-4000-a000-00003284bbf4', 'die Prüfung', 'الامتحان', 'exam', NULL, 'die', 'die Prüfungen', 'noun', 'Die Prüfung ist schwer.', 'The exam is difficult.', 'B1', 22),
  ('00000000-0000-4000-a000-00003284bbf4', 'das Studium', 'الدراسة الجامعية', 'studies', NULL, 'das', NULL, 'noun', 'Mein Studium dauert vier Jahre.', 'My studies take four years.', 'B1', 23),
  ('00000000-0000-4000-a000-00003284bbf4', 'lernen', 'يتعلم', 'to learn', NULL, NULL, NULL, 'verb', 'Ich lerne Deutsch.', 'I learn German.', 'A1', 24),
  ('00000000-0000-4000-a000-00003284bbf4', 'die Zeitung', 'الجريدة', 'newspaper', NULL, 'die', 'die Zeitungen', 'noun', 'Ich lese die Zeitung.', 'I read the newspaper.', 'A2', 25),
  ('00000000-0000-4000-a000-00003284bbf4', 'das Internet', 'الإنترنت', 'internet', NULL, 'das', NULL, 'noun', 'Das Internet ist schnell.', 'The internet is fast.', 'A2', 26),
  ('00000000-0000-4000-a000-00003284bbf4', 'der Artikel', 'المقال', 'article', NULL, 'der', 'die Artikel', 'noun', 'Der Artikel ist interessant.', 'The article is interesting.', 'B1', 27),
  ('00000000-0000-4000-a000-00003284bbf4', 'die Nachricht', 'الخبر', 'news', NULL, 'die', 'die Nachrichten', 'noun', 'Ich sehe die Nachrichten.', 'I watch the news.', 'A2', 28),
  ('00000000-0000-4000-a000-00003284bbf4', 'das Radio', 'الراديو', 'radio', NULL, 'das', 'die Radios', 'noun', 'Ich höre Radio.', 'I listen to the radio.', 'A2', 29),
  ('00000000-0000-4000-a000-00003284bbf4', 'das Fernsehen', 'التلفاز', 'television', NULL, 'das', NULL, 'noun', 'Das Fernsehen läuft.', 'The television is on.', 'A2', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00003284bbf4', 'Adjektivdeklination (Adjective Declension) / تصريف الصفات', 'When an adjective comes before a noun, it must agree in gender, number, and case. There are three declension patterns: after "der" words (weak), after "ein" words (mixed), and without article (strong). The endings depend on which information the article already provides.', '[{"rule":"Weak (after der/die/das): -e or -en","note":"der gute Mann, die gute Frau, das gute Kind, die guten Leute"},{"rule":"Mixed (after ein/mein/kein): article ending + adjective ending","note":"ein guter Mann, eine gute Frau, ein gutes Kind, keine guten Leute"}]', '[{"german":"Der große Hund gehört der alten Frau.","arabic":"الكلب الكبير ملك للمرأة العجوز.","english":"The big dog belongs to the old woman."},{"german":"Ein interessantes Buch liegt auf dem Tisch.","arabic":"كتاب مثير للاهتمام على الطاولة.","english":"An interesting book is on the table."}]', '[{"mistake":"Der groß Hund (no ending on adjective)","correction":"Der große Hund","explanation":"Adjectives before nouns MUST have an ending in German."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00003284bbf4', 'multiple_choice', 'Welches deutsche Wort bedeutet "environment"?', '["der Klimawandel","der Müll","die Energie","die Umwelt"]', 'die Umwelt', '"environment" = "die Umwelt" in German. Article: die ', 1, 1),
  ('00000000-0000-4000-a000-00003284bbf4', 'multiple_choice', 'Welches deutsche Wort bedeutet "climate change"?', '["der Müll","der Klimawandel","recyceln","die Energie"]', 'der Klimawandel', '"climate change" = "der Klimawandel" in German. Article: der ', 1, 2),
  ('00000000-0000-4000-a000-00003284bbf4', 'multiple_choice', 'Welches deutsche Wort bedeutet "energy"?', '["die Energie","die Umwelt","der Klimawandel","der Müll"]', 'die Energie', '"energy" = "die Energie" in German. Article: die ', 1, 3),
  ('00000000-0000-4000-a000-00003284bbf4', 'multiple_choice', 'Welches deutsche Wort bedeutet "waste"?', '["recyceln","die Energie","der Klimawandel","die Umwelt"]', 'der Müll', '"waste" = "der Müll" in German. Article: der ', 1, 4),
  ('00000000-0000-4000-a000-00003284bbf4', 'multiple_choice', 'Welches deutsche Wort bedeutet "to recycle"?', '["die Energie","die Umwelt","der Müll","der Klimawandel"]', 'recyceln', '"to recycle" bedeutet auf Deutsch "to recycle".  ', 1, 5),
  ('00000000-0000-4000-a000-00003284bbf4', 'fill_gap', 'Ergänze den Satz: Ich ___ gern Environment. (sprechen)', '["spreche","sprichst","spricht","sprechen"]', 'spreche', 'ich spreche gern = I like to speak. Stem: sprech- + e.', 2, 6),
  ('00000000-0000-4000-a000-00003284bbf4', 'translation', 'Übersetze ins Deutsche: "I am learning about Environment."', '["Ich lerne über Environment.","Ich lerne Environment.","Lerne ich Environment."]', 'Ich lerne über Environment.', '"Ich lerne über..." = "I am learning about..."', 2, 7),
  ('00000000-0000-4000-a000-00003284bbf4', 'matching', 'Match: Which word pairs are correct?', '["die Umwelt - environment, der Klimawandel - climate change"]', 'Matched correctly', 'Each German word has a unique English equivalent.', 2, 8);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-00003284bbf4', 'multiple_choice', 'Was bedeutet "die Umwelt" auf Deutsch?', '["environment","to run","beautiful","yesterday"]', 'environment', 1, 1),
  ('00000000-0000-4000-a000-00003284bbf4', 'multiple_choice', 'Welcher Artikel gehört zu "der Klimawandel"?', '["der","die","das","den"]', 'der', 1, 2),
  ('00000000-0000-4000-a000-00003284bbf4', 'true_false', 'Das Wort "die Energie" gehört zum Thema Environment.', '["True","False"]', 'True', 1, 3),
  ('00000000-0000-4000-a000-00003284bbf4', 'multiple_choice', 'Welcher Satz verwendet present_tense?', '["Der große Hund gehört der alten Frau.","Ein interessantes Buch liegt auf dem Tisch."]', 'Der große Hund gehört der alten Frau.', 2, 4),
  ('00000000-0000-4000-a000-00003284bbf4', 'true_false', ''Im Deutschen steht das Verb an zweiter Position im Hauptsatz.', '["True","False"]', 'True', 1, 5),
  ('00000000-0000-4000-a000-00003284bbf4', 'fill_blank', 'Complete: Ich ___ (waste) Deutsch.', '["der Müll","lernt","lernst","lernen"]', 'lerne', 2, 6),
  ('00000000-0000-4000-a000-00003284bbf4', 'multiple_choice', 'Wie lautet das deutsche Wort für "to recycle"?', '["recyceln","die Nachhaltigkeit","die Luft","das Wasser"]', 'recyceln', 1, 7),
  ('00000000-0000-4000-a000-00003284bbf4', 'true_false', 'Im Deutschen werden alle Nomen großgeschrieben.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-00003284bbf4', 'multiple_choice', 'How do you say "please" in a restaurant in Germany?', '["Bitte","Danke","Tschüss","Hallo"]', 'Bitte', 1, 9),
  ('00000000-0000-4000-a000-00003284bbf4', 'fill_blank', 'Wo ___ (to live) du?', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 2, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, french_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-00003284bbf4', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', NULL, 'Used in Umwelt und Nachhaltigkeit', 'formal', false, 1),
  ('00000000-0000-4000-a000-00003284bbf4', 'Guten Tag!', 'Good day!', 'نهارك سعيد!', NULL, 'Used in Umwelt und Nachhaltigkeit', 'formal', false, 2),
  ('00000000-0000-4000-a000-00003284bbf4', 'Hallo, wie geht es Ihnen?', 'Hello, how are you?', 'مرحباً، كيف حالكم؟', NULL, 'Used in Umwelt und Nachhaltigkeit', 'formal', false, 3),
  ('00000000-0000-4000-a000-00003284bbf4', 'Schön, Sie kennenzulernen!', 'Nice to meet you!', 'سعيد بلقائكم!', NULL, 'Used in Umwelt und Nachhaltigkeit', 'formal', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-00003284bbf4', 'die die Umwelt', 'environment — البيئة', 'noun', 'vocabulary', 1),
  ('00000000-0000-4000-a000-00003284bbf4', 'der der Klimawandel', 'climate change — تغير المناخ', 'noun', 'vocabulary', 2),
  ('00000000-0000-4000-a000-00003284bbf4', 'die die Energie', 'energy — الطاقة', 'noun', 'vocabulary', 3),
  ('00000000-0000-4000-a000-00003284bbf4', 'der der Müll', 'waste — النفايات', 'noun', 'vocabulary', 4),
  ('00000000-0000-4000-a000-00003284bbf4', 'recyceln', 'to recycle — يعيد التدوير', 'verb', 'vocabulary', 5),
  ('00000000-0000-4000-a000-00003284bbf4', 'die die Nachhaltigkeit', 'sustainability — الاستدامة', 'noun', 'vocabulary', 6),
  ('00000000-0000-4000-a000-00003284bbf4', 'die die Luft', 'air — الهواء', 'noun', 'vocabulary', 7),
  ('00000000-0000-4000-a000-00003284bbf4', 'das das Wasser', 'water — الماء', 'noun', 'vocabulary', 8),
  ('00000000-0000-4000-a000-00003284bbf4', 'der der Beruf (die Berufe)', 'profession — المهنة', 'noun', 'vocabulary', 9),
  ('00000000-0000-4000-a000-00003284bbf4', 'die die Firma (die Firmen)', 'company — الشركة', 'noun', 'vocabulary', 10),
  ('00000000-0000-4000-a000-00003284bbf4', 'der der Kollege (die Kollegen)', 'colleague — الزميل', 'noun', 'vocabulary', 11),
  ('00000000-0000-4000-a000-00003284bbf4', 'das das Büro (die Büros)', 'office — المكتب', 'noun', 'vocabulary', 12),
  ('00000000-0000-4000-a000-00003284bbf4', 'die die Besprechung (die Besprechungen)', 'meeting — الاجتماع', 'noun', 'vocabulary', 13),
  ('00000000-0000-4000-a000-00003284bbf4', 'der der Chef (die Chefs)', 'boss — المدير', 'noun', 'vocabulary', 14),
  ('00000000-0000-4000-a000-00003284bbf4', 'das das Gehalt (die Gehälter)', 'salary — الراتب', 'noun', 'vocabulary', 15),
  ('00000000-0000-4000-a000-00003284bbf4', 'Der große Hund gehört der alten Frau.', 'The big dog belongs to the old woman.', 'Adjektivdeklination (Adjective Declension)', 'grammar', 16),
  ('00000000-0000-4000-a000-00003284bbf4', 'Ein interessantes Buch liegt auf dem Tisch.', 'An interesting book is on the table.', 'Adjektivdeklination (Adjective Declension)', 'grammar', 17);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, french_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-00003284bbf4', 'Umweltschutz und Nachhaltigkeit — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', NULL, 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, french_translation, duration_seconds, speaker_count, scenario) values
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

[Lehrerin]: ممتاز! إلى الغد!', '[Lehrerin]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: ', 72, 2, 'Umwelt und Nachhaltigkeit');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-00003284bbf4', '🔊 Sprechen: Umweltschutz und Nachhaltigkeit', 'Discussion: You attend a German Stammtisch (weekly meetup). Discuss Environment with the group. Express your opinion, agree/disagree, ask follow-up questions. Try to keep the conversation flowing for 2 minutes.', 'Environment', ARRAY['Use discourse markers (also, jedoch, außerdem)','React naturally: "Ach so!", "Echt?", "Das stimmt!"','Paraphrase when you don''t know a word']::text[], ARRAY['die Umwelt','der Klimawandel','die Energie','der Müll','recyceln','die Nachhaltigkeit','die Luft','das Wasser']::text[], 60, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-00003284bbf4', '✏️ Schreiben: Umweltschutz und Nachhaltigkeit', 'Write a formal letter (200-250 words) to your German teacher explaining what you learned about "Environment". Include: what surprised you, what was similar/different to your culture, and what you want to learn next. Use present_tense correctly.', ARRAY['Use paragraph breaks for structure','Connect ideas with "außerdem", "deshalb", "jedoch"','Check your verb position in Nebensätze']::text[], ARRAY['die Umwelt','der Klimawandel','die Energie','der Müll','recyceln','die Nachhaltigkeit','die Luft','das Wasser']::text[], ARRAY['Sentence structure','Vocabulary usage']::text[], 150, 250, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00003284bbf4', 'Umweltschutz und Nachhaltigkeit — Roleplay', 'Environment', 'Student', 'Teacher', 'Practice conversation about Environment', 'Hallo! Lass uns über dieses Thema sprechen.', 'intermediate', 1, ARRAY['die Umwelt','der Klimawandel','die Energie','der Müll','recyceln','die Nachhaltigkeit','die Luft','das Wasser']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00003284bbf4', 'Umweltschutz und Nachhaltigkeit — Advanced Roleplay', 'Environment', 'Customer', 'Assistant', 'Extended conversation about Environment', 'Guten Tag! Wie kann ich Ihnen helfen?', 'intermediate', 2, ARRAY['die Umwelt','der Klimawandel','die Energie','der Müll','recyceln','die Nachhaltigkeit','die Luft','das Wasser']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-00003284bbf4', 'Umweltschutz und Nachhaltigkeit — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Umweltschutz und Nachhaltigkeit".', 'Creative practice for Environment', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-00003284bbf4', '📚 Hausaufgabe: Umweltschutz und Nachhaltigkeit', 'Complete these tasks to reinforce "Umweltschutz und Nachhaltigkeit".', 'mixed', '[{"description":"Create 10 flashcards from this lesson''s vocabulary — write German on one side, Arabic on the other. Test yourself 3 times."},{"description":"Write 6 sentences about Environment: 2 statements, 2 questions, 2 negations — all using present_tense."},{"description":"Record yourself reading the dialogue aloud. Listen to the recording and note 3 things to improve."},{"description":"Find 3 real German websites, videos, or articles about Environment. Note 5 new words you discovered."}]', 50, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-00003284bbf4', '🎯 Excellent progress! This lesson covered Environment (75 vocabulary items) and present_tense. You developed reading, listening, speaking, and writing skills in the context of environment. Focus on your common mistakes area for maximum improvement.', '["75 vocabulary items about Environment","present_tense — grammar explanation and practice","Reading comprehension: text about Environment","Listening comprehension: dialogue about Environment","Speaking practice: roleplay/discussion about Environment","Writing task: text about Environment"]', '[{"title":"Umweltschutz und Nachhaltigkeit Review","summary":"present_tense — the main grammar focus. Focus on using this structure naturally in conversations and writing."}]', ARRAY['die Umwelt (environment)','der Klimawandel (climate change)','die Energie (energy)','der Müll (waste)','recyceln (to recycle)']::text[], ARRAY['Don''t translate from Arabic word-for-word — German has different sentence structure','Learn every noun with its article: NEVER learn "Tisch" alone, always "der Tisch"','Watch out for verb position in Nebensätze']::text[], ARRAY['Practice 15-20 minutes daily — consistency beats intensity','Speak out loud: German pronunciation needs muscle memory','Use the new vocabulary within 24 hours or you''ll forget it','Watch German YouTube videos about Environment for authentic input']::text[]);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00003284bbf4', 'Pronunciation: Intonation and sentence melody', 'German sentences have a falling intonation at the end of statements. Questions starting with a verb rise at the end. W-questions fall at the end. Emphasise the stressed syllable — German stresses the first syllable of the root.

Common mistake for Arabic speakers: Arabic speakers often put stress on the wrong syllable. Remember: German root stress is usually on the first syllable.', '[]', '[{"german":"warum","arabic":"","english":"","phonetic":"/vaˈrʊm/"},{"german":"deshalb","arabic":"","english":"","phonetic":"/dɛsˈhalp/"}]', '[]', 10);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00003284bbf4', 'translation', 'Translate to German: "I use the word "environment" in a sentence about Environment."', '[]', 'Wir müssen die Umwelt schützen.', 'Use die  "die Umwelt" with the correct present_tense form.', 1, 40);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00003284bbf4', 'translation', 'Translate to German: "I use the word "climate change" in a sentence about Environment."', '[]', 'Der Klimawandel ist ein globales Problem.', 'Use der  "der Klimawandel" with the correct present_tense form.', 1, 41);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00003284bbf4', 'translation', 'Translate to German: "I use the word "energy" in a sentence about Environment."', '[]', 'Erneuerbare Energie ist wichtig.', 'Use die  "die Energie" with the correct present_tense form.', 1, 42);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00003284bbf4', 'Culture: 🇩🇪 Deutsche Kultur: Environment', 'Environment in Germany has specific cultural nuances that differ from Arabic-speaking countries. Germans tend to separate their private and professional lives strictly. When dealing with Environment in a professional context, use formal register and prepare factual arguments. Emotional appeals are less effective than logical reasoning.

لدى Environment في ألمانيا فروق ثقافية دقيقة تختلف عن البلدان العربية. الألمان يفصلون بين حياتهم الخاصة والمهنية بشكل صارم.', '["Tip: Always use \"Sie\" (formal) with strangers and colleagues","Tip: Germans appreciate punctuality — arrive 5 minutes early","Tip: Direct feedback is a sign of respect, not criticism","Tip: Prepare factual arguments, not emotional appeals"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00003284bbf4', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Incorrect preposition usage after verbs","correction":"Learn which preposition each verb requires (sich freuen auf, warten auf, denken an)","explanation":"Arabic and German have different sentence structures. Arabic is VSO, German is SVO with verb in position 2."},{"mistake":"Putting the verb at the end in main clauses","correction":"Verb stays in position 2 in main clauses","explanation":"Subordinate clause word order interferes"}]', 30);

  -- Lesson 2: Mülltrennung und Recycling (L-B1-05-02)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-00003284bbf3', '00000000-0000-4000-a000-000039c2eae3', 'Mülltrennung und Recycling', 'Learn about German waste separation and recycling.', 'Recycling in Germany', 'reading', '["Understand and apply present_tense rules correctly","Use present_tense in real conversations","Avoid common mistakes Arabic speakers make with present_tense","Read and understand present_tense in context","Listen and identify present_tense in speech","Write sentences using present_tense correctly"]', 50, 2, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, french_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-00003284bbf3', 'die Umwelt', 'البيئة', 'environment', NULL, 'die', NULL, 'noun', 'Wir müssen die Umwelt schützen.', 'We must protect the environment.', 'B1', 1),
  ('00000000-0000-4000-a000-00003284bbf3', 'der Klimawandel', 'تغير المناخ', 'climate change', NULL, 'der', NULL, 'noun', 'Der Klimawandel ist ein globales Problem.', 'Climate change is a global problem.', 'B1', 2),
  ('00000000-0000-4000-a000-00003284bbf3', 'die Energie', 'الطاقة', 'energy', NULL, 'die', NULL, 'noun', 'Erneuerbare Energie ist wichtig.', 'Renewable energy is important.', 'B1', 3),
  ('00000000-0000-4000-a000-00003284bbf3', 'der Müll', 'النفايات', 'waste', NULL, 'der', NULL, 'noun', 'In Deutschland trennt man den Müll.', 'In Germany, waste is separated.', 'B1', 4),
  ('00000000-0000-4000-a000-00003284bbf3', 'recyceln', 'يعيد التدوير', 'to recycle', NULL, NULL, NULL, 'verb', 'Wir recyceln Papier und Plastik.', 'We recycle paper and plastic.', 'B1', 5),
  ('00000000-0000-4000-a000-00003284bbf3', 'die Nachhaltigkeit', 'الاستدامة', 'sustainability', NULL, 'die', NULL, 'noun', 'Nachhaltigkeit ist ein Trend.', 'Sustainability is a trend.', 'B1', 6),
  ('00000000-0000-4000-a000-00003284bbf3', 'die Luft', 'الهواء', 'air', NULL, 'die', NULL, 'noun', 'Die Luft ist frisch.', 'The air is fresh.', 'A2', 7),
  ('00000000-0000-4000-a000-00003284bbf3', 'das Wasser', 'الماء', 'water', NULL, 'das', NULL, 'noun', 'Das Wasser ist sauber.', 'The water is clean.', 'A1', 8),
  ('00000000-0000-4000-a000-00003284bbf3', 'der Beruf', 'المهنة', 'profession', NULL, 'der', 'die Berufe', 'noun', 'Was ist dein Beruf?', 'What is your profession?', 'A1', 9),
  ('00000000-0000-4000-a000-00003284bbf3', 'die Firma', 'الشركة', 'company', NULL, 'die', 'die Firmen', 'noun', 'Die Firma ist in Berlin.', 'The company is in Berlin.', 'A1', 10),
  ('00000000-0000-4000-a000-00003284bbf3', 'der Kollege', 'الزميل', 'colleague', NULL, 'der', 'die Kollegen', 'noun', 'Mein Kollege hilft mir.', 'My colleague helps me.', 'A1', 11),
  ('00000000-0000-4000-a000-00003284bbf3', 'das Büro', 'المكتب', 'office', NULL, 'das', 'die Büros', 'noun', 'Das Büro ist im dritten Stock.', 'The office is on the third floor.', 'A1', 12),
  ('00000000-0000-4000-a000-00003284bbf3', 'die Besprechung', 'الاجتماع', 'meeting', NULL, 'die', 'die Besprechungen', 'noun', 'Wir haben eine Besprechung.', 'We have a meeting.', 'B1', 13),
  ('00000000-0000-4000-a000-00003284bbf3', 'der Chef', 'المدير', 'boss', NULL, 'der', 'die Chefs', 'noun', 'Mein Chef ist freundlich.', 'My boss is friendly.', 'A1', 14),
  ('00000000-0000-4000-a000-00003284bbf3', 'das Gehalt', 'الراتب', 'salary', NULL, 'das', 'die Gehälter', 'noun', 'Das Gehalt ist gut.', 'The salary is good.', 'B1', 15),
  ('00000000-0000-4000-a000-00003284bbf3', 'die Stelle', 'الوظيفة', 'position', NULL, 'die', 'die Stellen', 'noun', 'Ich suche eine neue Stelle.', 'I am looking for a new position.', 'B1', 16),
  ('00000000-0000-4000-a000-00003284bbf3', 'die Schule', 'المدرسة', 'school', NULL, 'die', 'die Schulen', 'noun', 'Die Kinder gehen zur Schule.', 'The children go to school.', 'A1', 17),
  ('00000000-0000-4000-a000-00003284bbf3', 'der Lehrer', 'المعلم', 'teacher', NULL, 'der', 'die Lehrer', 'noun', 'Der Lehrer erklärt die Grammatik.', 'The teacher explains the grammar.', 'A1', 18),
  ('00000000-0000-4000-a000-00003284bbf3', 'der Student', 'الطالب', 'student', NULL, 'der', 'die Studenten', 'noun', 'Der Student lernt Deutsch.', 'The student learns German.', 'A1', 19),
  ('00000000-0000-4000-a000-00003284bbf3', 'die Universität', 'الجامعة', 'university', NULL, 'die', 'die Universitäten', 'noun', 'Die Universität ist alt.', 'The university is old.', 'B1', 20),
  ('00000000-0000-4000-a000-00003284bbf3', 'der Kurs', 'الدورة', 'course', NULL, 'der', 'die Kurse', 'noun', 'Der Kurs kostet 200 Euro.', 'The course costs 200 euros.', 'A2', 21),
  ('00000000-0000-4000-a000-00003284bbf3', 'die Prüfung', 'الامتحان', 'exam', NULL, 'die', 'die Prüfungen', 'noun', 'Die Prüfung ist schwer.', 'The exam is difficult.', 'B1', 22),
  ('00000000-0000-4000-a000-00003284bbf3', 'das Studium', 'الدراسة الجامعية', 'studies', NULL, 'das', NULL, 'noun', 'Mein Studium dauert vier Jahre.', 'My studies take four years.', 'B1', 23),
  ('00000000-0000-4000-a000-00003284bbf3', 'lernen', 'يتعلم', 'to learn', NULL, NULL, NULL, 'verb', 'Ich lerne Deutsch.', 'I learn German.', 'A1', 24),
  ('00000000-0000-4000-a000-00003284bbf3', 'die Zeitung', 'الجريدة', 'newspaper', NULL, 'die', 'die Zeitungen', 'noun', 'Ich lese die Zeitung.', 'I read the newspaper.', 'A2', 25),
  ('00000000-0000-4000-a000-00003284bbf3', 'das Internet', 'الإنترنت', 'internet', NULL, 'das', NULL, 'noun', 'Das Internet ist schnell.', 'The internet is fast.', 'A2', 26),
  ('00000000-0000-4000-a000-00003284bbf3', 'der Artikel', 'المقال', 'article', NULL, 'der', 'die Artikel', 'noun', 'Der Artikel ist interessant.', 'The article is interesting.', 'B1', 27),
  ('00000000-0000-4000-a000-00003284bbf3', 'die Nachricht', 'الخبر', 'news', NULL, 'die', 'die Nachrichten', 'noun', 'Ich sehe die Nachrichten.', 'I watch the news.', 'A2', 28),
  ('00000000-0000-4000-a000-00003284bbf3', 'das Radio', 'الراديو', 'radio', NULL, 'das', 'die Radios', 'noun', 'Ich höre Radio.', 'I listen to the radio.', 'A2', 29),
  ('00000000-0000-4000-a000-00003284bbf3', 'das Fernsehen', 'التلفاز', 'television', NULL, 'das', NULL, 'noun', 'Das Fernsehen läuft.', 'The television is on.', 'A2', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00003284bbf3', 'Konjunktiv II: Höfliche Bitten und irreale Sätze (Subjunctive for Politeness) / صيغة الشرط الثانية: الطلبات المهذبة والجمل غير الواقعية', 'Konjunktiv II is used for polite requests (Ich hätte gern...), unreal situations (Wenn ich Zeit hätte...), and wishes (Ich wünschte, ich wäre...). For most verbs, use "würde + infinitive". Only a few common verbs have their own subjunctive form: hätte (hätten), wäre (wären), könnte (könnten).', '[{"rule":"würde + Infinitiv (most verbs)","note":"Ich würde gern kommen. (I would like to come.)"},{"rule":"hätte (haben), wäre (sein), könnte (können)","note":"Ich hätte gern einen Kaffee. (I would like a coffee.)"},{"rule":"Wenn... dann... (if... then...)","note":"Wenn ich Zeit hätte, würde ich reisen. (If I had time, I would travel.)"}]', '[{"german":"Ich hätte gern einen Kaffee, bitte.","arabic":"أود فنجان قهوة من فضلك.","english":"I would like a coffee, please."},{"german":"Wenn ich mehr Zeit hätte, würde ich Deutsch lernen.","arabic":"لو كان لدي وقت أكثر، لتعلمت الألمانية.","english":"If I had more time, I would learn German."},{"german":"Könnten Sie mir bitte helfen?","arabic":"هل يمكنكم مساعدتي من فضلكم؟","english":"Could you please help me?"}]', '[{"mistake":"Ich will einen Kaffee (too direct in restaurant)","correction":"Ich hätte gern einen Kaffee.","explanation":"In German restaurants, use Konjunktiv II to be polite, not \"ich will\"."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00003284bbf3', 'multiple_choice', 'Welches deutsche Wort bedeutet "environment"?', '["die Energie","die Umwelt","der Klimawandel","recyceln"]', 'die Umwelt', '"environment" = "die Umwelt" in German. Article: die ', 1, 1),
  ('00000000-0000-4000-a000-00003284bbf3', 'multiple_choice', 'Welches deutsche Wort bedeutet "climate change"?', '["der Müll","der Klimawandel","recyceln","die Energie"]', 'der Klimawandel', '"climate change" = "der Klimawandel" in German. Article: der ', 1, 2),
  ('00000000-0000-4000-a000-00003284bbf3', 'multiple_choice', 'Welches deutsche Wort bedeutet "energy"?', '["der Müll","die Energie","recyceln","die Umwelt"]', 'die Energie', '"energy" = "die Energie" in German. Article: die ', 1, 3),
  ('00000000-0000-4000-a000-00003284bbf3', 'multiple_choice', 'Welches deutsche Wort bedeutet "waste"?', '["der Müll","die Energie","die Umwelt","recyceln"]', 'der Müll', '"waste" = "der Müll" in German. Article: der ', 1, 4),
  ('00000000-0000-4000-a000-00003284bbf3', 'multiple_choice', 'Welches deutsche Wort bedeutet "to recycle"?', '["recyceln","die Umwelt","der Klimawandel","die Energie"]', 'recyceln', '"to recycle" bedeutet auf Deutsch "to recycle".  ', 1, 5),
  ('00000000-0000-4000-a000-00003284bbf3', 'fill_gap', 'Ergänze den Satz: Ich ___ gern über Recycling in Germany. (sprechen)', '["spreche","sprichst","spricht","sprechen"]', 'spreche', 'ich spreche gern = I like to speak. Stem: sprech- + e.', 2, 6),
  ('00000000-0000-4000-a000-00003284bbf3', 'translation', 'Übersetze ins Deutsche: "I am learning about Recycling in Germany."', '["Ich lerne über Recycling in Germany.","Ich lerne Recycling in Germany.","Lerne ich Recycling in Germany."]', 'Ich lerne über Recycling in Germany.', '"Ich lerne über..." = "I am learning about..."', 2, 7),
  ('00000000-0000-4000-a000-00003284bbf3', 'matching', 'Match: Which word pairs are correct?', '["die Umwelt - environment, der Klimawandel - climate change"]', 'Matched correctly', 'Each German word has a unique English equivalent.', 2, 8);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-00003284bbf3', 'multiple_choice', 'Was bedeutet "die Umwelt" auf Deutsch?', '["environment","to run","beautiful","yesterday"]', 'environment', 1, 1),
  ('00000000-0000-4000-a000-00003284bbf3', 'multiple_choice', 'Welcher Artikel gehört zu "der Klimawandel"?', '["der","die","das","den"]', 'der', 1, 2),
  ('00000000-0000-4000-a000-00003284bbf3', 'true_false', 'Das Wort "die Energie" gehört zum Thema Recycling in Germany.', '["True","False"]', 'True', 1, 3),
  ('00000000-0000-4000-a000-00003284bbf3', 'multiple_choice', 'Welcher Satz verwendet present_tense?', '["Ich hätte gern einen Kaffee, bitte.","Wenn ich mehr Zeit hätte, würde ich Deutsch lernen.","Könnten Sie mir bitte helfen?"]', 'Ich hätte gern einen Kaffee, bitte.', 2, 4),
  ('00000000-0000-4000-a000-00003284bbf3', 'true_false', ''Im Deutschen steht das Verb an zweiter Position im Hauptsatz.', '["True","False"]', 'True', 1, 5),
  ('00000000-0000-4000-a000-00003284bbf3', 'fill_blank', 'Complete: Ich ___ (waste) Deutsch.', '["der Müll","lernt","lernst","lernen"]', 'lerne', 2, 6),
  ('00000000-0000-4000-a000-00003284bbf3', 'multiple_choice', 'Wie lautet das deutsche Wort für "to recycle"?', '["recyceln","die Nachhaltigkeit","die Luft","das Wasser"]', 'recyceln', 1, 7),
  ('00000000-0000-4000-a000-00003284bbf3', 'true_false', 'Im Deutschen werden alle Nomen großgeschrieben.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-00003284bbf3', 'multiple_choice', 'How do you say "please" in a restaurant in Germany?', '["Bitte","Danke","Tschüss","Hallo"]', 'Bitte', 1, 9),
  ('00000000-0000-4000-a000-00003284bbf3', 'fill_blank', 'Wo ___ (to live) du?', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 2, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, french_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-00003284bbf3', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', NULL, 'Used in Umwelt und Nachhaltigkeit', 'formal', false, 1),
  ('00000000-0000-4000-a000-00003284bbf3', 'Guten Tag!', 'Good day!', 'نهارك سعيد!', NULL, 'Used in Umwelt und Nachhaltigkeit', 'formal', false, 2),
  ('00000000-0000-4000-a000-00003284bbf3', 'Hallo, wie geht es Ihnen?', 'Hello, how are you?', 'مرحباً، كيف حالكم؟', NULL, 'Used in Umwelt und Nachhaltigkeit', 'formal', false, 3),
  ('00000000-0000-4000-a000-00003284bbf3', 'Schön, Sie kennenzulernen!', 'Nice to meet you!', 'سعيد بلقائكم!', NULL, 'Used in Umwelt und Nachhaltigkeit', 'formal', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-00003284bbf3', 'die die Umwelt', 'environment — البيئة', 'noun', 'vocabulary', 1),
  ('00000000-0000-4000-a000-00003284bbf3', 'der der Klimawandel', 'climate change — تغير المناخ', 'noun', 'vocabulary', 2),
  ('00000000-0000-4000-a000-00003284bbf3', 'die die Energie', 'energy — الطاقة', 'noun', 'vocabulary', 3),
  ('00000000-0000-4000-a000-00003284bbf3', 'der der Müll', 'waste — النفايات', 'noun', 'vocabulary', 4),
  ('00000000-0000-4000-a000-00003284bbf3', 'recyceln', 'to recycle — يعيد التدوير', 'verb', 'vocabulary', 5),
  ('00000000-0000-4000-a000-00003284bbf3', 'die die Nachhaltigkeit', 'sustainability — الاستدامة', 'noun', 'vocabulary', 6),
  ('00000000-0000-4000-a000-00003284bbf3', 'die die Luft', 'air — الهواء', 'noun', 'vocabulary', 7),
  ('00000000-0000-4000-a000-00003284bbf3', 'das das Wasser', 'water — الماء', 'noun', 'vocabulary', 8),
  ('00000000-0000-4000-a000-00003284bbf3', 'der der Beruf (die Berufe)', 'profession — المهنة', 'noun', 'vocabulary', 9),
  ('00000000-0000-4000-a000-00003284bbf3', 'die die Firma (die Firmen)', 'company — الشركة', 'noun', 'vocabulary', 10),
  ('00000000-0000-4000-a000-00003284bbf3', 'der der Kollege (die Kollegen)', 'colleague — الزميل', 'noun', 'vocabulary', 11),
  ('00000000-0000-4000-a000-00003284bbf3', 'das das Büro (die Büros)', 'office — المكتب', 'noun', 'vocabulary', 12),
  ('00000000-0000-4000-a000-00003284bbf3', 'die die Besprechung (die Besprechungen)', 'meeting — الاجتماع', 'noun', 'vocabulary', 13),
  ('00000000-0000-4000-a000-00003284bbf3', 'der der Chef (die Chefs)', 'boss — المدير', 'noun', 'vocabulary', 14),
  ('00000000-0000-4000-a000-00003284bbf3', 'das das Gehalt (die Gehälter)', 'salary — الراتب', 'noun', 'vocabulary', 15),
  ('00000000-0000-4000-a000-00003284bbf3', 'Ich hätte gern einen Kaffee, bitte.', 'I would like a coffee, please.', 'Konjunktiv II: Höfliche Bitten und irreale Sätze (Subjunctive for Politeness)', 'grammar', 16),
  ('00000000-0000-4000-a000-00003284bbf3', 'Wenn ich mehr Zeit hätte, würde ich Deutsch lernen.', 'If I had more time, I would learn German.', 'Konjunktiv II: Höfliche Bitten und irreale Sätze (Subjunctive for Politeness)', 'grammar', 17),
  ('00000000-0000-4000-a000-00003284bbf3', 'Könnten Sie mir bitte helfen?', 'Could you please help me?', 'Konjunktiv II: Höfliche Bitten und irreale Sätze (Subjunctive for Politeness)', 'grammar', 18);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, french_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-00003284bbf3', 'Mülltrennung und Recycling — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', NULL, 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, french_translation, duration_seconds, speaker_count, scenario) values
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

[Lehrerin]: ممتاز! إلى الغد!', '[Lehrerin]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: ', 72, 2, 'Umwelt und Nachhaltigkeit');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-00003284bbf3', '🔊 Sprechen: Mülltrennung und Recycling', 'Discussion: You attend a German Stammtisch (weekly meetup). Discuss Recycling in Germany with the group. Express your opinion, agree/disagree, ask follow-up questions. Try to keep the conversation flowing for 2 minutes.', 'Recycling in Germany', ARRAY['Use discourse markers (also, jedoch, außerdem)','React naturally: "Ach so!", "Echt?", "Das stimmt!"','Paraphrase when you don''t know a word']::text[], ARRAY['die Umwelt','der Klimawandel','die Energie','der Müll','recyceln','die Nachhaltigkeit','die Luft','das Wasser']::text[], 60, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-00003284bbf3', '✏️ Schreiben: Mülltrennung und Recycling', 'Write a formal letter (200-250 words) to your German teacher explaining what you learned about "Recycling in Germany". Include: what surprised you, what was similar/different to your culture, and what you want to learn next. Use present_tense correctly.', ARRAY['Use paragraph breaks for structure','Connect ideas with "außerdem", "deshalb", "jedoch"','Check your verb position in Nebensätze']::text[], ARRAY['die Umwelt','der Klimawandel','die Energie','der Müll','recyceln','die Nachhaltigkeit','die Luft','das Wasser']::text[], ARRAY['Sentence structure','Vocabulary usage']::text[], 150, 250, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00003284bbf3', 'Mülltrennung und Recycling — Roleplay', 'Recycling in Germany', 'Student', 'Teacher', 'Practice conversation about Recycling in Germany', 'Hallo! Lass uns über dieses Thema sprechen.', 'intermediate', 1, ARRAY['die Umwelt','der Klimawandel','die Energie','der Müll','recyceln','die Nachhaltigkeit','die Luft','das Wasser']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00003284bbf3', 'Mülltrennung und Recycling — Advanced Roleplay', 'Recycling in Germany', 'Customer', 'Assistant', 'Extended conversation about Recycling in Germany', 'Guten Tag! Wie kann ich Ihnen helfen?', 'intermediate', 2, ARRAY['die Umwelt','der Klimawandel','die Energie','der Müll','recyceln','die Nachhaltigkeit','die Luft','das Wasser']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-00003284bbf3', 'Mülltrennung und Recycling — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Mülltrennung und Recycling".', 'Creative practice for Recycling in Germany', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-00003284bbf3', '📚 Hausaufgabe: Mülltrennung und Recycling', 'Complete these tasks to reinforce "Mülltrennung und Recycling".', 'mixed', '[{"description":"Create 10 flashcards from this lesson''s vocabulary — write German on one side, Arabic on the other. Test yourself 3 times."},{"description":"Write 6 sentences about Recycling in Germany: 2 statements, 2 questions, 2 negations — all using present_tense."},{"description":"Record yourself reading the dialogue aloud. Listen to the recording and note 3 things to improve."},{"description":"Find 3 real German websites, videos, or articles about Recycling in Germany. Note 5 new words you discovered."}]', 50, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-00003284bbf3', '🎯 Excellent progress! This lesson covered Recycling in Germany (75 vocabulary items) and present_tense. You developed reading, listening, speaking, and writing skills in the context of environment. Focus on your common mistakes area for maximum improvement.', '["75 vocabulary items about Recycling in Germany","present_tense — grammar explanation and practice","Reading comprehension: text about Recycling in Germany","Listening comprehension: dialogue about Recycling in Germany","Speaking practice: roleplay/discussion about Recycling in Germany","Writing task: text about Recycling in Germany"]', '[{"title":"Mülltrennung und Recycling Review","summary":"present_tense — the main grammar focus. Focus on using this structure naturally in conversations and writing."}]', ARRAY['die Umwelt (environment)','der Klimawandel (climate change)','die Energie (energy)','der Müll (waste)','recyceln (to recycle)']::text[], ARRAY['Don''t translate from Arabic word-for-word — German has different sentence structure','Learn every noun with its article: NEVER learn "Tisch" alone, always "der Tisch"','Watch out for verb position in Nebensätze']::text[], ARRAY['Practice 15-20 minutes daily — consistency beats intensity','Speak out loud: German pronunciation needs muscle memory','Use the new vocabulary within 24 hours or you''ll forget it','Watch German YouTube videos about Recycling in Germany for authentic input']::text[]);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00003284bbf3', 'Pronunciation: Intonation and sentence melody', 'German sentences have a falling intonation at the end of statements. Questions starting with a verb rise at the end. W-questions fall at the end. Emphasise the stressed syllable — German stresses the first syllable of the root.

Common mistake for Arabic speakers: Arabic speakers often put stress on the wrong syllable. Remember: German root stress is usually on the first syllable.', '[]', '[{"german":"warum","arabic":"","english":"","phonetic":"/vaˈrʊm/"},{"german":"deshalb","arabic":"","english":"","phonetic":"/dɛsˈhalp/"}]', '[]', 10);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00003284bbf3', 'translation', 'Translate to German: "I use the word "environment" in a sentence about Recycling in Germany."', '[]', 'Wir müssen die Umwelt schützen.', 'Use die  "die Umwelt" with the correct present_tense form.', 1, 40);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00003284bbf3', 'translation', 'Translate to German: "I use the word "climate change" in a sentence about Recycling in Germany."', '[]', 'Der Klimawandel ist ein globales Problem.', 'Use der  "der Klimawandel" with the correct present_tense form.', 1, 41);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00003284bbf3', 'translation', 'Translate to German: "I use the word "energy" in a sentence about Recycling in Germany."', '[]', 'Erneuerbare Energie ist wichtig.', 'Use die  "die Energie" with the correct present_tense form.', 1, 42);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00003284bbf3', 'Culture: 🇩🇪 Deutsche Kultur: Recycling in Germany', 'Recycling in Germany in Germany has specific cultural nuances that differ from Arabic-speaking countries. Germans tend to separate their private and professional lives strictly. When dealing with Recycling in Germany in a professional context, use formal register and prepare factual arguments. Emotional appeals are less effective than logical reasoning.

لدى Recycling in Germany في ألمانيا فروق ثقافية دقيقة تختلف عن البلدان العربية. الألمان يفصلون بين حياتهم الخاصة والمهنية بشكل صارم.', '["Tip: Always use \"Sie\" (formal) with strangers and colleagues","Tip: Germans appreciate punctuality — arrive 5 minutes early","Tip: Direct feedback is a sign of respect, not criticism","Tip: Prepare factual arguments, not emotional appeals"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00003284bbf3', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Incorrect preposition usage after verbs","correction":"Learn which preposition each verb requires (sich freuen auf, warten auf, denken an)","explanation":"Arabic and German have different sentence structures. Arabic is VSO, German is SVO with verb in position 2."},{"mistake":"Putting the verb at the end in main clauses","correction":"Verb stays in position 2 in main clauses","explanation":"Subordinate clause word order interferes"}]', 30);

  -- Lesson 3: Infinitivsätze: um...zu, damit (L-B1-05-03)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-00003284bbf2', '00000000-0000-4000-a000-000039c2eae3', 'Infinitivsätze: um...zu, damit', 'Learn infinitive clauses for expressing purpose.', 'Infinitive Clauses', 'grammar', '["Understand and apply present_tense rules correctly","Use present_tense in real conversations","Avoid common mistakes Arabic speakers make with present_tense","Read and understand present_tense in context","Listen and identify present_tense in speech","Write sentences using present_tense correctly"]', 55, 3, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, french_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-00003284bbf2', 'die Umwelt', 'البيئة', 'environment', NULL, 'die', NULL, 'noun', 'Wir müssen die Umwelt schützen.', 'We must protect the environment.', 'B1', 1),
  ('00000000-0000-4000-a000-00003284bbf2', 'der Klimawandel', 'تغير المناخ', 'climate change', NULL, 'der', NULL, 'noun', 'Der Klimawandel ist ein globales Problem.', 'Climate change is a global problem.', 'B1', 2),
  ('00000000-0000-4000-a000-00003284bbf2', 'die Energie', 'الطاقة', 'energy', NULL, 'die', NULL, 'noun', 'Erneuerbare Energie ist wichtig.', 'Renewable energy is important.', 'B1', 3),
  ('00000000-0000-4000-a000-00003284bbf2', 'der Müll', 'النفايات', 'waste', NULL, 'der', NULL, 'noun', 'In Deutschland trennt man den Müll.', 'In Germany, waste is separated.', 'B1', 4),
  ('00000000-0000-4000-a000-00003284bbf2', 'recyceln', 'يعيد التدوير', 'to recycle', NULL, NULL, NULL, 'verb', 'Wir recyceln Papier und Plastik.', 'We recycle paper and plastic.', 'B1', 5),
  ('00000000-0000-4000-a000-00003284bbf2', 'die Nachhaltigkeit', 'الاستدامة', 'sustainability', NULL, 'die', NULL, 'noun', 'Nachhaltigkeit ist ein Trend.', 'Sustainability is a trend.', 'B1', 6),
  ('00000000-0000-4000-a000-00003284bbf2', 'die Luft', 'الهواء', 'air', NULL, 'die', NULL, 'noun', 'Die Luft ist frisch.', 'The air is fresh.', 'A2', 7),
  ('00000000-0000-4000-a000-00003284bbf2', 'das Wasser', 'الماء', 'water', NULL, 'das', NULL, 'noun', 'Das Wasser ist sauber.', 'The water is clean.', 'A1', 8),
  ('00000000-0000-4000-a000-00003284bbf2', 'der Beruf', 'المهنة', 'profession', NULL, 'der', 'die Berufe', 'noun', 'Was ist dein Beruf?', 'What is your profession?', 'A1', 9),
  ('00000000-0000-4000-a000-00003284bbf2', 'die Firma', 'الشركة', 'company', NULL, 'die', 'die Firmen', 'noun', 'Die Firma ist in Berlin.', 'The company is in Berlin.', 'A1', 10),
  ('00000000-0000-4000-a000-00003284bbf2', 'der Kollege', 'الزميل', 'colleague', NULL, 'der', 'die Kollegen', 'noun', 'Mein Kollege hilft mir.', 'My colleague helps me.', 'A1', 11),
  ('00000000-0000-4000-a000-00003284bbf2', 'das Büro', 'المكتب', 'office', NULL, 'das', 'die Büros', 'noun', 'Das Büro ist im dritten Stock.', 'The office is on the third floor.', 'A1', 12),
  ('00000000-0000-4000-a000-00003284bbf2', 'die Besprechung', 'الاجتماع', 'meeting', NULL, 'die', 'die Besprechungen', 'noun', 'Wir haben eine Besprechung.', 'We have a meeting.', 'B1', 13),
  ('00000000-0000-4000-a000-00003284bbf2', 'der Chef', 'المدير', 'boss', NULL, 'der', 'die Chefs', 'noun', 'Mein Chef ist freundlich.', 'My boss is friendly.', 'A1', 14),
  ('00000000-0000-4000-a000-00003284bbf2', 'das Gehalt', 'الراتب', 'salary', NULL, 'das', 'die Gehälter', 'noun', 'Das Gehalt ist gut.', 'The salary is good.', 'B1', 15),
  ('00000000-0000-4000-a000-00003284bbf2', 'die Stelle', 'الوظيفة', 'position', NULL, 'die', 'die Stellen', 'noun', 'Ich suche eine neue Stelle.', 'I am looking for a new position.', 'B1', 16),
  ('00000000-0000-4000-a000-00003284bbf2', 'die Schule', 'المدرسة', 'school', NULL, 'die', 'die Schulen', 'noun', 'Die Kinder gehen zur Schule.', 'The children go to school.', 'A1', 17),
  ('00000000-0000-4000-a000-00003284bbf2', 'der Lehrer', 'المعلم', 'teacher', NULL, 'der', 'die Lehrer', 'noun', 'Der Lehrer erklärt die Grammatik.', 'The teacher explains the grammar.', 'A1', 18),
  ('00000000-0000-4000-a000-00003284bbf2', 'der Student', 'الطالب', 'student', NULL, 'der', 'die Studenten', 'noun', 'Der Student lernt Deutsch.', 'The student learns German.', 'A1', 19),
  ('00000000-0000-4000-a000-00003284bbf2', 'die Universität', 'الجامعة', 'university', NULL, 'die', 'die Universitäten', 'noun', 'Die Universität ist alt.', 'The university is old.', 'B1', 20),
  ('00000000-0000-4000-a000-00003284bbf2', 'der Kurs', 'الدورة', 'course', NULL, 'der', 'die Kurse', 'noun', 'Der Kurs kostet 200 Euro.', 'The course costs 200 euros.', 'A2', 21),
  ('00000000-0000-4000-a000-00003284bbf2', 'die Prüfung', 'الامتحان', 'exam', NULL, 'die', 'die Prüfungen', 'noun', 'Die Prüfung ist schwer.', 'The exam is difficult.', 'B1', 22),
  ('00000000-0000-4000-a000-00003284bbf2', 'das Studium', 'الدراسة الجامعية', 'studies', NULL, 'das', NULL, 'noun', 'Mein Studium dauert vier Jahre.', 'My studies take four years.', 'B1', 23),
  ('00000000-0000-4000-a000-00003284bbf2', 'lernen', 'يتعلم', 'to learn', NULL, NULL, NULL, 'verb', 'Ich lerne Deutsch.', 'I learn German.', 'A1', 24),
  ('00000000-0000-4000-a000-00003284bbf2', 'die Zeitung', 'الجريدة', 'newspaper', NULL, 'die', 'die Zeitungen', 'noun', 'Ich lese die Zeitung.', 'I read the newspaper.', 'A2', 25),
  ('00000000-0000-4000-a000-00003284bbf2', 'das Internet', 'الإنترنت', 'internet', NULL, 'das', NULL, 'noun', 'Das Internet ist schnell.', 'The internet is fast.', 'A2', 26),
  ('00000000-0000-4000-a000-00003284bbf2', 'der Artikel', 'المقال', 'article', NULL, 'der', 'die Artikel', 'noun', 'Der Artikel ist interessant.', 'The article is interesting.', 'B1', 27),
  ('00000000-0000-4000-a000-00003284bbf2', 'die Nachricht', 'الخبر', 'news', NULL, 'die', 'die Nachrichten', 'noun', 'Ich sehe die Nachrichten.', 'I watch the news.', 'A2', 28),
  ('00000000-0000-4000-a000-00003284bbf2', 'das Radio', 'الراديو', 'radio', NULL, 'das', 'die Radios', 'noun', 'Ich höre Radio.', 'I listen to the radio.', 'A2', 29),
  ('00000000-0000-4000-a000-00003284bbf2', 'das Fernsehen', 'التلفاز', 'television', NULL, 'das', NULL, 'noun', 'Das Fernsehen läuft.', 'The television is on.', 'A2', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00003284bbf2', 'Nebensätze mit "dass", "weil", "obwohl" (Subordinate Clauses) / الجمل الثانوية مع dass, weil, obwohl', 'Subordinate clauses push the conjugated verb to the END of the clause. The conjunction initiates the subordinate clause. Common conjunctions: dass (that), weil (because), obwohl (although), wenn (if/when), während (while). The subordinate clause can come before or after the main clause.', '[{"rule":"Verb goes to END in subordinate clause","note":"Ich weiß, dass er morgen kommt. (NOT: ...dass er kommt morgen)"},{"rule":"Wenn clause first → verb starts main clause","note":"Wenn ich Zeit habe, gehe ich ins Kino."},{"rule":"Weil answers \"why\" questions","note":"Ich lerne Deutsch, weil ich in Berlin studieren will."}]', '[{"german":"Ich denke, dass er recht hat.","arabic":"أعتقد أنه على حق.","english":"I think that he is right."},{"german":"Er lernt Deutsch, weil er in Berlin studiert.","arabic":"هو يتعلم الألمانية لأنه يدرس في برلين.","english":"He learns German because he studies in Berlin."},{"german":"Obwohl es regnet, gehe ich spazieren.","arabic":"على الرغم من المطر، أذهب للتنزه.","english":"Although it is raining, I go for a walk."}]', '[{"mistake":"Ich weiß, dass er kommt morgen (verb stays in position 2)","correction":"Ich weiß, dass er morgen kommt.","explanation":"In \"dass\" clauses, the verb ALWAYS goes to the end."},{"mistake":"Weil ich bin müde (verb stays after \"weil\")","correction":"Weil ich müde bin.","explanation":"Weil + subject + ... + verb (at the end)."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00003284bbf2', 'multiple_choice', 'Welches deutsche Wort bedeutet "environment"?', '["die Energie","die Umwelt","der Müll","recyceln"]', 'die Umwelt', '"environment" = "die Umwelt" in German. Article: die ', 1, 1),
  ('00000000-0000-4000-a000-00003284bbf2', 'multiple_choice', 'Welches deutsche Wort bedeutet "climate change"?', '["der Klimawandel","die Umwelt","die Energie","der Müll"]', 'der Klimawandel', '"climate change" = "der Klimawandel" in German. Article: der ', 1, 2),
  ('00000000-0000-4000-a000-00003284bbf2', 'multiple_choice', 'Welches deutsche Wort bedeutet "energy"?', '["recyceln","der Müll","der Klimawandel","die Umwelt"]', 'die Energie', '"energy" = "die Energie" in German. Article: die ', 1, 3),
  ('00000000-0000-4000-a000-00003284bbf2', 'multiple_choice', 'Welches deutsche Wort bedeutet "waste"?', '["recyceln","die Energie","der Klimawandel","die Umwelt"]', 'der Müll', '"waste" = "der Müll" in German. Article: der ', 1, 4),
  ('00000000-0000-4000-a000-00003284bbf2', 'multiple_choice', 'Welches deutsche Wort bedeutet "to recycle"?', '["recyceln","die Umwelt","die Energie","der Müll"]', 'recyceln', '"to recycle" bedeutet auf Deutsch "to recycle".  ', 1, 5),
  ('00000000-0000-4000-a000-00003284bbf2', 'fill_gap', 'Ergänze den Satz: Ich ___ gern über Infinitive Clauses. (sprechen)', '["spreche","sprichst","spricht","sprechen"]', 'spreche', 'ich spreche gern = I like to speak. Stem: sprech- + e.', 2, 6),
  ('00000000-0000-4000-a000-00003284bbf2', 'translation', 'Übersetze ins Deutsche: "I am learning about Infinitive Clauses."', '["Ich lerne über Infinitive Clauses.","Ich lerne Infinitive Clauses.","Lerne ich Infinitive Clauses."]', 'Ich lerne über Infinitive Clauses.', '"Ich lerne über..." = "I am learning about..."', 2, 7),
  ('00000000-0000-4000-a000-00003284bbf2', 'matching', 'Match: Which word pairs are correct?', '["die Umwelt - environment, der Klimawandel - climate change"]', 'Matched correctly', 'Each German word has a unique English equivalent.', 2, 8);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-00003284bbf2', 'multiple_choice', 'Was bedeutet "die Umwelt" auf Deutsch?', '["environment","to run","beautiful","yesterday"]', 'environment', 1, 1),
  ('00000000-0000-4000-a000-00003284bbf2', 'multiple_choice', 'Welcher Artikel gehört zu "der Klimawandel"?', '["der","die","das","den"]', 'der', 1, 2),
  ('00000000-0000-4000-a000-00003284bbf2', 'true_false', 'Das Wort "die Energie" gehört zum Thema Infinitive Clauses.', '["True","False"]', 'True', 1, 3),
  ('00000000-0000-4000-a000-00003284bbf2', 'multiple_choice', 'Welcher Satz verwendet present_tense?', '["Ich denke, dass er recht hat.","Er lernt Deutsch, weil er in Berlin studiert.","Obwohl es regnet, gehe ich spazieren."]', 'Ich denke, dass er recht hat.', 2, 4),
  ('00000000-0000-4000-a000-00003284bbf2', 'true_false', ''Im Deutschen steht das Verb an zweiter Position im Hauptsatz.', '["True","False"]', 'True', 1, 5),
  ('00000000-0000-4000-a000-00003284bbf2', 'fill_blank', 'Complete: Ich ___ (waste) Deutsch.', '["der Müll","lernt","lernst","lernen"]', 'lerne', 2, 6),
  ('00000000-0000-4000-a000-00003284bbf2', 'multiple_choice', 'Wie lautet das deutsche Wort für "to recycle"?', '["recyceln","die Nachhaltigkeit","die Luft","das Wasser"]', 'recyceln', 1, 7),
  ('00000000-0000-4000-a000-00003284bbf2', 'true_false', 'Im Deutschen werden alle Nomen großgeschrieben.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-00003284bbf2', 'multiple_choice', 'How do you say "please" in a restaurant in Germany?', '["Bitte","Danke","Tschüss","Hallo"]', 'Bitte', 1, 9),
  ('00000000-0000-4000-a000-00003284bbf2', 'fill_blank', 'Wo ___ (to live) du?', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 2, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, french_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-00003284bbf2', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', NULL, 'Used in Umwelt und Nachhaltigkeit', 'formal', false, 1),
  ('00000000-0000-4000-a000-00003284bbf2', 'Guten Tag!', 'Good day!', 'نهارك سعيد!', NULL, 'Used in Umwelt und Nachhaltigkeit', 'formal', false, 2),
  ('00000000-0000-4000-a000-00003284bbf2', 'Hallo, wie geht es Ihnen?', 'Hello, how are you?', 'مرحباً، كيف حالكم؟', NULL, 'Used in Umwelt und Nachhaltigkeit', 'formal', false, 3),
  ('00000000-0000-4000-a000-00003284bbf2', 'Schön, Sie kennenzulernen!', 'Nice to meet you!', 'سعيد بلقائكم!', NULL, 'Used in Umwelt und Nachhaltigkeit', 'formal', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-00003284bbf2', 'die die Umwelt', 'environment — البيئة', 'noun', 'vocabulary', 1),
  ('00000000-0000-4000-a000-00003284bbf2', 'der der Klimawandel', 'climate change — تغير المناخ', 'noun', 'vocabulary', 2),
  ('00000000-0000-4000-a000-00003284bbf2', 'die die Energie', 'energy — الطاقة', 'noun', 'vocabulary', 3),
  ('00000000-0000-4000-a000-00003284bbf2', 'der der Müll', 'waste — النفايات', 'noun', 'vocabulary', 4),
  ('00000000-0000-4000-a000-00003284bbf2', 'recyceln', 'to recycle — يعيد التدوير', 'verb', 'vocabulary', 5),
  ('00000000-0000-4000-a000-00003284bbf2', 'die die Nachhaltigkeit', 'sustainability — الاستدامة', 'noun', 'vocabulary', 6),
  ('00000000-0000-4000-a000-00003284bbf2', 'die die Luft', 'air — الهواء', 'noun', 'vocabulary', 7),
  ('00000000-0000-4000-a000-00003284bbf2', 'das das Wasser', 'water — الماء', 'noun', 'vocabulary', 8),
  ('00000000-0000-4000-a000-00003284bbf2', 'der der Beruf (die Berufe)', 'profession — المهنة', 'noun', 'vocabulary', 9),
  ('00000000-0000-4000-a000-00003284bbf2', 'die die Firma (die Firmen)', 'company — الشركة', 'noun', 'vocabulary', 10),
  ('00000000-0000-4000-a000-00003284bbf2', 'der der Kollege (die Kollegen)', 'colleague — الزميل', 'noun', 'vocabulary', 11),
  ('00000000-0000-4000-a000-00003284bbf2', 'das das Büro (die Büros)', 'office — المكتب', 'noun', 'vocabulary', 12),
  ('00000000-0000-4000-a000-00003284bbf2', 'die die Besprechung (die Besprechungen)', 'meeting — الاجتماع', 'noun', 'vocabulary', 13),
  ('00000000-0000-4000-a000-00003284bbf2', 'der der Chef (die Chefs)', 'boss — المدير', 'noun', 'vocabulary', 14),
  ('00000000-0000-4000-a000-00003284bbf2', 'das das Gehalt (die Gehälter)', 'salary — الراتب', 'noun', 'vocabulary', 15),
  ('00000000-0000-4000-a000-00003284bbf2', 'Ich denke, dass er recht hat.', 'I think that he is right.', 'Nebensätze mit "dass", "weil", "obwohl" (Subordinate Clauses)', 'grammar', 16),
  ('00000000-0000-4000-a000-00003284bbf2', 'Er lernt Deutsch, weil er in Berlin studiert.', 'He learns German because he studies in Berlin.', 'Nebensätze mit "dass", "weil", "obwohl" (Subordinate Clauses)', 'grammar', 17),
  ('00000000-0000-4000-a000-00003284bbf2', 'Obwohl es regnet, gehe ich spazieren.', 'Although it is raining, I go for a walk.', 'Nebensätze mit "dass", "weil", "obwohl" (Subordinate Clauses)', 'grammar', 18);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, french_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-00003284bbf2', 'Infinitivsätze: um...zu, damit — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', NULL, 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, french_translation, duration_seconds, speaker_count, scenario) values
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

[Lehrerin]: ممتاز! إلى الغد!', '[Lehrerin]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: ', 72, 2, 'Umwelt und Nachhaltigkeit');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-00003284bbf2', '🔊 Sprechen: Infinitivsätze: um...zu, damit', 'Discussion: You attend a German Stammtisch (weekly meetup). Discuss Infinitive Clauses with the group. Express your opinion, agree/disagree, ask follow-up questions. Try to keep the conversation flowing for 2 minutes.', 'Infinitive Clauses', ARRAY['Use discourse markers (also, jedoch, außerdem)','React naturally: "Ach so!", "Echt?", "Das stimmt!"','Paraphrase when you don''t know a word']::text[], ARRAY['die Umwelt','der Klimawandel','die Energie','der Müll','recyceln','die Nachhaltigkeit','die Luft','das Wasser']::text[], 60, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-00003284bbf2', '✏️ Schreiben: Infinitivsätze: um...zu, damit', 'Write a formal letter (200-250 words) to your German teacher explaining what you learned about "Infinitive Clauses". Include: what surprised you, what was similar/different to your culture, and what you want to learn next. Use present_tense correctly.', ARRAY['Use paragraph breaks for structure','Connect ideas with "außerdem", "deshalb", "jedoch"','Check your verb position in Nebensätze']::text[], ARRAY['die Umwelt','der Klimawandel','die Energie','der Müll','recyceln','die Nachhaltigkeit','die Luft','das Wasser']::text[], ARRAY['Sentence structure','Vocabulary usage']::text[], 150, 250, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00003284bbf2', 'Infinitivsätze: um...zu, damit — Roleplay', 'Infinitive Clauses', 'Student', 'Teacher', 'Practice conversation about Infinitive Clauses', 'Hallo! Lass uns über dieses Thema sprechen.', 'intermediate', 1, ARRAY['die Umwelt','der Klimawandel','die Energie','der Müll','recyceln','die Nachhaltigkeit','die Luft','das Wasser']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00003284bbf2', 'Infinitivsätze: um...zu, damit — Advanced Roleplay', 'Infinitive Clauses', 'Customer', 'Assistant', 'Extended conversation about Infinitive Clauses', 'Guten Tag! Wie kann ich Ihnen helfen?', 'intermediate', 2, ARRAY['die Umwelt','der Klimawandel','die Energie','der Müll','recyceln','die Nachhaltigkeit','die Luft','das Wasser']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-00003284bbf2', 'Infinitivsätze: um...zu, damit — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Infinitivsätze: um...zu, damit".', 'Creative practice for Infinitive Clauses', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-00003284bbf2', '📚 Hausaufgabe: Infinitivsätze: um...zu, damit', 'Complete these tasks to reinforce "Infinitivsätze: um...zu, damit".', 'mixed', '[{"description":"Create 10 flashcards from this lesson''s vocabulary — write German on one side, Arabic on the other. Test yourself 3 times."},{"description":"Write 6 sentences about Infinitive Clauses: 2 statements, 2 questions, 2 negations — all using present_tense."},{"description":"Record yourself reading the dialogue aloud. Listen to the recording and note 3 things to improve."},{"description":"Find 3 real German websites, videos, or articles about Infinitive Clauses. Note 5 new words you discovered."}]', 50, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-00003284bbf2', '🎯 Excellent progress! This lesson covered Infinitive Clauses (75 vocabulary items) and present_tense. You developed reading, listening, speaking, and writing skills in the context of environment. Focus on your common mistakes area for maximum improvement.', '["75 vocabulary items about Infinitive Clauses","present_tense — grammar explanation and practice","Reading comprehension: text about Infinitive Clauses","Listening comprehension: dialogue about Infinitive Clauses","Speaking practice: roleplay/discussion about Infinitive Clauses","Writing task: text about Infinitive Clauses"]', '[{"title":"Infinitivsätze: um...zu, damit Review","summary":"present_tense — the main grammar focus. Focus on using this structure naturally in conversations and writing."}]', ARRAY['die Umwelt (environment)','der Klimawandel (climate change)','die Energie (energy)','der Müll (waste)','recyceln (to recycle)']::text[], ARRAY['Don''t translate from Arabic word-for-word — German has different sentence structure','Learn every noun with its article: NEVER learn "Tisch" alone, always "der Tisch"','Watch out for verb position in Nebensätze']::text[], ARRAY['Practice 15-20 minutes daily — consistency beats intensity','Speak out loud: German pronunciation needs muscle memory','Use the new vocabulary within 24 hours or you''ll forget it','Watch German YouTube videos about Infinitive Clauses for authentic input']::text[]);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00003284bbf2', 'Pronunciation: Intonation and sentence melody', 'German sentences have a falling intonation at the end of statements. Questions starting with a verb rise at the end. W-questions fall at the end. Emphasise the stressed syllable — German stresses the first syllable of the root.

Common mistake for Arabic speakers: Arabic speakers often put stress on the wrong syllable. Remember: German root stress is usually on the first syllable.', '[]', '[{"german":"warum","arabic":"","english":"","phonetic":"/vaˈrʊm/"},{"german":"deshalb","arabic":"","english":"","phonetic":"/dɛsˈhalp/"}]', '[]', 10);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00003284bbf2', 'translation', 'Translate to German: "I use the word "environment" in a sentence about Infinitive Clauses."', '[]', 'Wir müssen die Umwelt schützen.', 'Use die  "die Umwelt" with the correct present_tense form.', 1, 40);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00003284bbf2', 'translation', 'Translate to German: "I use the word "climate change" in a sentence about Infinitive Clauses."', '[]', 'Der Klimawandel ist ein globales Problem.', 'Use der  "der Klimawandel" with the correct present_tense form.', 1, 41);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00003284bbf2', 'translation', 'Translate to German: "I use the word "energy" in a sentence about Infinitive Clauses."', '[]', 'Erneuerbare Energie ist wichtig.', 'Use die  "die Energie" with the correct present_tense form.', 1, 42);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00003284bbf2', 'Culture: 🇩🇪 Deutsche Kultur: Infinitive Clauses', 'Infinitive Clauses in Germany has specific cultural nuances that differ from Arabic-speaking countries. Germans tend to separate their private and professional lives strictly. When dealing with Infinitive Clauses in a professional context, use formal register and prepare factual arguments. Emotional appeals are less effective than logical reasoning.

لدى Infinitive Clauses في ألمانيا فروق ثقافية دقيقة تختلف عن البلدان العربية. الألمان يفصلون بين حياتهم الخاصة والمهنية بشكل صارم.', '["Tip: Always use \"Sie\" (formal) with strangers and colleagues","Tip: Germans appreciate punctuality — arrive 5 minutes early","Tip: Direct feedback is a sign of respect, not criticism","Tip: Prepare factual arguments, not emotional appeals"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00003284bbf2', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Incorrect preposition usage after verbs","correction":"Learn which preposition each verb requires (sich freuen auf, warten auf, denken an)","explanation":"Arabic and German have different sentence structures. Arabic is VSO, German is SVO with verb in position 2."},{"mistake":"Putting the verb at the end in main clauses","correction":"Verb stays in position 2 in main clauses","explanation":"Subordinate clause word order interferes"}]', 30);

  -- Lesson 4: Unsere Umwelt schützen (L-B1-05-04)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-00003284bbf1', '00000000-0000-4000-a000-000039c2eae3', 'Unsere Umwelt schützen', 'Discuss ways to protect the environment.', 'Protecting the Environment', 'speaking', '["Understand and apply present_tense rules correctly","Use present_tense in real conversations","Avoid common mistakes Arabic speakers make with present_tense","Read and understand present_tense in context","Listen and identify present_tense in speech","Write sentences using present_tense correctly"]', 45, 4, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, french_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-00003284bbf1', 'die Umwelt', 'البيئة', 'environment', NULL, 'die', NULL, 'noun', 'Wir müssen die Umwelt schützen.', 'We must protect the environment.', 'B1', 1),
  ('00000000-0000-4000-a000-00003284bbf1', 'der Klimawandel', 'تغير المناخ', 'climate change', NULL, 'der', NULL, 'noun', 'Der Klimawandel ist ein globales Problem.', 'Climate change is a global problem.', 'B1', 2),
  ('00000000-0000-4000-a000-00003284bbf1', 'die Energie', 'الطاقة', 'energy', NULL, 'die', NULL, 'noun', 'Erneuerbare Energie ist wichtig.', 'Renewable energy is important.', 'B1', 3),
  ('00000000-0000-4000-a000-00003284bbf1', 'der Müll', 'النفايات', 'waste', NULL, 'der', NULL, 'noun', 'In Deutschland trennt man den Müll.', 'In Germany, waste is separated.', 'B1', 4),
  ('00000000-0000-4000-a000-00003284bbf1', 'recyceln', 'يعيد التدوير', 'to recycle', NULL, NULL, NULL, 'verb', 'Wir recyceln Papier und Plastik.', 'We recycle paper and plastic.', 'B1', 5),
  ('00000000-0000-4000-a000-00003284bbf1', 'die Nachhaltigkeit', 'الاستدامة', 'sustainability', NULL, 'die', NULL, 'noun', 'Nachhaltigkeit ist ein Trend.', 'Sustainability is a trend.', 'B1', 6),
  ('00000000-0000-4000-a000-00003284bbf1', 'die Luft', 'الهواء', 'air', NULL, 'die', NULL, 'noun', 'Die Luft ist frisch.', 'The air is fresh.', 'A2', 7),
  ('00000000-0000-4000-a000-00003284bbf1', 'das Wasser', 'الماء', 'water', NULL, 'das', NULL, 'noun', 'Das Wasser ist sauber.', 'The water is clean.', 'A1', 8),
  ('00000000-0000-4000-a000-00003284bbf1', 'der Beruf', 'المهنة', 'profession', NULL, 'der', 'die Berufe', 'noun', 'Was ist dein Beruf?', 'What is your profession?', 'A1', 9),
  ('00000000-0000-4000-a000-00003284bbf1', 'die Firma', 'الشركة', 'company', NULL, 'die', 'die Firmen', 'noun', 'Die Firma ist in Berlin.', 'The company is in Berlin.', 'A1', 10),
  ('00000000-0000-4000-a000-00003284bbf1', 'der Kollege', 'الزميل', 'colleague', NULL, 'der', 'die Kollegen', 'noun', 'Mein Kollege hilft mir.', 'My colleague helps me.', 'A1', 11),
  ('00000000-0000-4000-a000-00003284bbf1', 'das Büro', 'المكتب', 'office', NULL, 'das', 'die Büros', 'noun', 'Das Büro ist im dritten Stock.', 'The office is on the third floor.', 'A1', 12),
  ('00000000-0000-4000-a000-00003284bbf1', 'die Besprechung', 'الاجتماع', 'meeting', NULL, 'die', 'die Besprechungen', 'noun', 'Wir haben eine Besprechung.', 'We have a meeting.', 'B1', 13),
  ('00000000-0000-4000-a000-00003284bbf1', 'der Chef', 'المدير', 'boss', NULL, 'der', 'die Chefs', 'noun', 'Mein Chef ist freundlich.', 'My boss is friendly.', 'A1', 14),
  ('00000000-0000-4000-a000-00003284bbf1', 'das Gehalt', 'الراتب', 'salary', NULL, 'das', 'die Gehälter', 'noun', 'Das Gehalt ist gut.', 'The salary is good.', 'B1', 15),
  ('00000000-0000-4000-a000-00003284bbf1', 'die Stelle', 'الوظيفة', 'position', NULL, 'die', 'die Stellen', 'noun', 'Ich suche eine neue Stelle.', 'I am looking for a new position.', 'B1', 16),
  ('00000000-0000-4000-a000-00003284bbf1', 'die Schule', 'المدرسة', 'school', NULL, 'die', 'die Schulen', 'noun', 'Die Kinder gehen zur Schule.', 'The children go to school.', 'A1', 17),
  ('00000000-0000-4000-a000-00003284bbf1', 'der Lehrer', 'المعلم', 'teacher', NULL, 'der', 'die Lehrer', 'noun', 'Der Lehrer erklärt die Grammatik.', 'The teacher explains the grammar.', 'A1', 18),
  ('00000000-0000-4000-a000-00003284bbf1', 'der Student', 'الطالب', 'student', NULL, 'der', 'die Studenten', 'noun', 'Der Student lernt Deutsch.', 'The student learns German.', 'A1', 19),
  ('00000000-0000-4000-a000-00003284bbf1', 'die Universität', 'الجامعة', 'university', NULL, 'die', 'die Universitäten', 'noun', 'Die Universität ist alt.', 'The university is old.', 'B1', 20),
  ('00000000-0000-4000-a000-00003284bbf1', 'der Kurs', 'الدورة', 'course', NULL, 'der', 'die Kurse', 'noun', 'Der Kurs kostet 200 Euro.', 'The course costs 200 euros.', 'A2', 21),
  ('00000000-0000-4000-a000-00003284bbf1', 'die Prüfung', 'الامتحان', 'exam', NULL, 'die', 'die Prüfungen', 'noun', 'Die Prüfung ist schwer.', 'The exam is difficult.', 'B1', 22),
  ('00000000-0000-4000-a000-00003284bbf1', 'das Studium', 'الدراسة الجامعية', 'studies', NULL, 'das', NULL, 'noun', 'Mein Studium dauert vier Jahre.', 'My studies take four years.', 'B1', 23),
  ('00000000-0000-4000-a000-00003284bbf1', 'lernen', 'يتعلم', 'to learn', NULL, NULL, NULL, 'verb', 'Ich lerne Deutsch.', 'I learn German.', 'A1', 24),
  ('00000000-0000-4000-a000-00003284bbf1', 'die Zeitung', 'الجريدة', 'newspaper', NULL, 'die', 'die Zeitungen', 'noun', 'Ich lese die Zeitung.', 'I read the newspaper.', 'A2', 25),
  ('00000000-0000-4000-a000-00003284bbf1', 'das Internet', 'الإنترنت', 'internet', NULL, 'das', NULL, 'noun', 'Das Internet ist schnell.', 'The internet is fast.', 'A2', 26),
  ('00000000-0000-4000-a000-00003284bbf1', 'der Artikel', 'المقال', 'article', NULL, 'der', 'die Artikel', 'noun', 'Der Artikel ist interessant.', 'The article is interesting.', 'B1', 27),
  ('00000000-0000-4000-a000-00003284bbf1', 'die Nachricht', 'الخبر', 'news', NULL, 'die', 'die Nachrichten', 'noun', 'Ich sehe die Nachrichten.', 'I watch the news.', 'A2', 28),
  ('00000000-0000-4000-a000-00003284bbf1', 'das Radio', 'الراديو', 'radio', NULL, 'das', 'die Radios', 'noun', 'Ich höre Radio.', 'I listen to the radio.', 'A2', 29),
  ('00000000-0000-4000-a000-00003284bbf1', 'das Fernsehen', 'التلفاز', 'television', NULL, 'das', NULL, 'noun', 'Das Fernsehen läuft.', 'The television is on.', 'A2', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00003284bbf1', 'Adjektivdeklination (Adjective Declension) / تصريف الصفات', 'When an adjective comes before a noun, it must agree in gender, number, and case. There are three declension patterns: after "der" words (weak), after "ein" words (mixed), and without article (strong). The endings depend on which information the article already provides.', '[{"rule":"Weak (after der/die/das): -e or -en","note":"der gute Mann, die gute Frau, das gute Kind, die guten Leute"},{"rule":"Mixed (after ein/mein/kein): article ending + adjective ending","note":"ein guter Mann, eine gute Frau, ein gutes Kind, keine guten Leute"}]', '[{"german":"Der große Hund gehört der alten Frau.","arabic":"الكلب الكبير ملك للمرأة العجوز.","english":"The big dog belongs to the old woman."},{"german":"Ein interessantes Buch liegt auf dem Tisch.","arabic":"كتاب مثير للاهتمام على الطاولة.","english":"An interesting book is on the table."}]', '[{"mistake":"Der groß Hund (no ending on adjective)","correction":"Der große Hund","explanation":"Adjectives before nouns MUST have an ending in German."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00003284bbf1', 'multiple_choice', 'Welches deutsche Wort bedeutet "environment"?', '["der Müll","der Klimawandel","die Umwelt","die Energie"]', 'die Umwelt', '"environment" = "die Umwelt" in German. Article: die ', 1, 1),
  ('00000000-0000-4000-a000-00003284bbf1', 'multiple_choice', 'Welches deutsche Wort bedeutet "climate change"?', '["der Klimawandel","die Umwelt","die Energie","der Müll"]', 'der Klimawandel', '"climate change" = "der Klimawandel" in German. Article: der ', 1, 2),
  ('00000000-0000-4000-a000-00003284bbf1', 'multiple_choice', 'Welches deutsche Wort bedeutet "energy"?', '["der Klimawandel","die Umwelt","recyceln","der Müll"]', 'die Energie', '"energy" = "die Energie" in German. Article: die ', 1, 3),
  ('00000000-0000-4000-a000-00003284bbf1', 'multiple_choice', 'Welches deutsche Wort bedeutet "waste"?', '["der Müll","die Umwelt","der Klimawandel","recyceln"]', 'der Müll', '"waste" = "der Müll" in German. Article: der ', 1, 4),
  ('00000000-0000-4000-a000-00003284bbf1', 'multiple_choice', 'Welches deutsche Wort bedeutet "to recycle"?', '["die Umwelt","die Energie","recyceln","der Klimawandel"]', 'recyceln', '"to recycle" bedeutet auf Deutsch "to recycle".  ', 1, 5),
  ('00000000-0000-4000-a000-00003284bbf1', 'fill_gap', 'Ergänze den Satz: Ich ___ gern Protecting the Environment. (sprechen)', '["spreche","sprichst","spricht","sprechen"]', 'spreche', 'ich spreche gern = I like to speak. Stem: sprech- + e.', 2, 6),
  ('00000000-0000-4000-a000-00003284bbf1', 'translation', 'Übersetze ins Deutsche: "I am learning about Protecting the Environment."', '["Ich lerne über Protecting the Environment.","Ich lerne Protecting the Environment.","Lerne ich Protecting the Environment."]', 'Ich lerne über Protecting the Environment.', '"Ich lerne über..." = "I am learning about..."', 2, 7),
  ('00000000-0000-4000-a000-00003284bbf1', 'matching', 'Match: Which word pairs are correct?', '["die Umwelt - environment, der Klimawandel - climate change"]', 'Matched correctly', 'Each German word has a unique English equivalent.', 2, 8);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-00003284bbf1', 'multiple_choice', 'Was bedeutet "die Umwelt" auf Deutsch?', '["environment","to run","beautiful","yesterday"]', 'environment', 1, 1),
  ('00000000-0000-4000-a000-00003284bbf1', 'multiple_choice', 'Welcher Artikel gehört zu "der Klimawandel"?', '["der","die","das","den"]', 'der', 1, 2),
  ('00000000-0000-4000-a000-00003284bbf1', 'true_false', 'Das Wort "die Energie" gehört zum Thema Protecting the Environment.', '["True","False"]', 'True', 1, 3),
  ('00000000-0000-4000-a000-00003284bbf1', 'multiple_choice', 'Welcher Satz verwendet present_tense?', '["Der große Hund gehört der alten Frau.","Ein interessantes Buch liegt auf dem Tisch."]', 'Der große Hund gehört der alten Frau.', 2, 4),
  ('00000000-0000-4000-a000-00003284bbf1', 'true_false', ''Im Deutschen steht das Verb an zweiter Position im Hauptsatz.', '["True","False"]', 'True', 1, 5),
  ('00000000-0000-4000-a000-00003284bbf1', 'fill_blank', 'Complete: Ich ___ (waste) Deutsch.', '["der Müll","lernt","lernst","lernen"]', 'lerne', 2, 6),
  ('00000000-0000-4000-a000-00003284bbf1', 'multiple_choice', 'Wie lautet das deutsche Wort für "to recycle"?', '["recyceln","die Nachhaltigkeit","die Luft","das Wasser"]', 'recyceln', 1, 7),
  ('00000000-0000-4000-a000-00003284bbf1', 'true_false', 'Im Deutschen werden alle Nomen großgeschrieben.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-00003284bbf1', 'multiple_choice', 'How do you say "please" in a restaurant in Germany?', '["Bitte","Danke","Tschüss","Hallo"]', 'Bitte', 1, 9),
  ('00000000-0000-4000-a000-00003284bbf1', 'fill_blank', 'Wo ___ (to live) du?', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 2, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, french_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-00003284bbf1', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', NULL, 'Used in Umwelt und Nachhaltigkeit', 'formal', false, 1),
  ('00000000-0000-4000-a000-00003284bbf1', 'Guten Tag!', 'Good day!', 'نهارك سعيد!', NULL, 'Used in Umwelt und Nachhaltigkeit', 'formal', false, 2),
  ('00000000-0000-4000-a000-00003284bbf1', 'Hallo, wie geht es Ihnen?', 'Hello, how are you?', 'مرحباً، كيف حالكم؟', NULL, 'Used in Umwelt und Nachhaltigkeit', 'formal', false, 3),
  ('00000000-0000-4000-a000-00003284bbf1', 'Schön, Sie kennenzulernen!', 'Nice to meet you!', 'سعيد بلقائكم!', NULL, 'Used in Umwelt und Nachhaltigkeit', 'formal', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-00003284bbf1', 'die die Umwelt', 'environment — البيئة', 'noun', 'vocabulary', 1),
  ('00000000-0000-4000-a000-00003284bbf1', 'der der Klimawandel', 'climate change — تغير المناخ', 'noun', 'vocabulary', 2),
  ('00000000-0000-4000-a000-00003284bbf1', 'die die Energie', 'energy — الطاقة', 'noun', 'vocabulary', 3),
  ('00000000-0000-4000-a000-00003284bbf1', 'der der Müll', 'waste — النفايات', 'noun', 'vocabulary', 4),
  ('00000000-0000-4000-a000-00003284bbf1', 'recyceln', 'to recycle — يعيد التدوير', 'verb', 'vocabulary', 5),
  ('00000000-0000-4000-a000-00003284bbf1', 'die die Nachhaltigkeit', 'sustainability — الاستدامة', 'noun', 'vocabulary', 6),
  ('00000000-0000-4000-a000-00003284bbf1', 'die die Luft', 'air — الهواء', 'noun', 'vocabulary', 7),
  ('00000000-0000-4000-a000-00003284bbf1', 'das das Wasser', 'water — الماء', 'noun', 'vocabulary', 8),
  ('00000000-0000-4000-a000-00003284bbf1', 'der der Beruf (die Berufe)', 'profession — المهنة', 'noun', 'vocabulary', 9),
  ('00000000-0000-4000-a000-00003284bbf1', 'die die Firma (die Firmen)', 'company — الشركة', 'noun', 'vocabulary', 10),
  ('00000000-0000-4000-a000-00003284bbf1', 'der der Kollege (die Kollegen)', 'colleague — الزميل', 'noun', 'vocabulary', 11),
  ('00000000-0000-4000-a000-00003284bbf1', 'das das Büro (die Büros)', 'office — المكتب', 'noun', 'vocabulary', 12),
  ('00000000-0000-4000-a000-00003284bbf1', 'die die Besprechung (die Besprechungen)', 'meeting — الاجتماع', 'noun', 'vocabulary', 13),
  ('00000000-0000-4000-a000-00003284bbf1', 'der der Chef (die Chefs)', 'boss — المدير', 'noun', 'vocabulary', 14),
  ('00000000-0000-4000-a000-00003284bbf1', 'das das Gehalt (die Gehälter)', 'salary — الراتب', 'noun', 'vocabulary', 15),
  ('00000000-0000-4000-a000-00003284bbf1', 'Der große Hund gehört der alten Frau.', 'The big dog belongs to the old woman.', 'Adjektivdeklination (Adjective Declension)', 'grammar', 16),
  ('00000000-0000-4000-a000-00003284bbf1', 'Ein interessantes Buch liegt auf dem Tisch.', 'An interesting book is on the table.', 'Adjektivdeklination (Adjective Declension)', 'grammar', 17);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, french_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-00003284bbf1', 'Unsere Umwelt schützen — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', NULL, 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, french_translation, duration_seconds, speaker_count, scenario) values
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

[Lehrerin]: ممتاز! إلى الغد!', '[Lehrerin]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: ', 72, 2, 'Umwelt und Nachhaltigkeit');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-00003284bbf1', '🔊 Sprechen: Unsere Umwelt schützen', 'Discussion: You attend a German Stammtisch (weekly meetup). Discuss Protecting the Environment with the group. Express your opinion, agree/disagree, ask follow-up questions. Try to keep the conversation flowing for 2 minutes.', 'Protecting the Environment', ARRAY['Use discourse markers (also, jedoch, außerdem)','React naturally: "Ach so!", "Echt?", "Das stimmt!"','Paraphrase when you don''t know a word']::text[], ARRAY['die Umwelt','der Klimawandel','die Energie','der Müll','recyceln','die Nachhaltigkeit','die Luft','das Wasser']::text[], 60, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-00003284bbf1', '✏️ Schreiben: Unsere Umwelt schützen', 'Write a formal letter (200-250 words) to your German teacher explaining what you learned about "Protecting the Environment". Include: what surprised you, what was similar/different to your culture, and what you want to learn next. Use present_tense correctly.', ARRAY['Use paragraph breaks for structure','Connect ideas with "außerdem", "deshalb", "jedoch"','Check your verb position in Nebensätze']::text[], ARRAY['die Umwelt','der Klimawandel','die Energie','der Müll','recyceln','die Nachhaltigkeit','die Luft','das Wasser']::text[], ARRAY['Sentence structure','Vocabulary usage']::text[], 150, 250, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00003284bbf1', 'Unsere Umwelt schützen — Roleplay', 'Protecting the Environment', 'Student', 'Teacher', 'Practice conversation about Protecting the Environment', 'Hallo! Lass uns über dieses Thema sprechen.', 'intermediate', 1, ARRAY['die Umwelt','der Klimawandel','die Energie','der Müll','recyceln','die Nachhaltigkeit','die Luft','das Wasser']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00003284bbf1', 'Unsere Umwelt schützen — Advanced Roleplay', 'Protecting the Environment', 'Customer', 'Assistant', 'Extended conversation about Protecting the Environment', 'Guten Tag! Wie kann ich Ihnen helfen?', 'intermediate', 2, ARRAY['die Umwelt','der Klimawandel','die Energie','der Müll','recyceln','die Nachhaltigkeit','die Luft','das Wasser']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-00003284bbf1', 'Unsere Umwelt schützen — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Unsere Umwelt schützen".', 'Creative practice for Protecting the Environment', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-00003284bbf1', '📚 Hausaufgabe: Unsere Umwelt schützen', 'Complete these tasks to reinforce "Unsere Umwelt schützen".', 'mixed', '[{"description":"Create 10 flashcards from this lesson''s vocabulary — write German on one side, Arabic on the other. Test yourself 3 times."},{"description":"Write 6 sentences about Protecting the Environment: 2 statements, 2 questions, 2 negations — all using present_tense."},{"description":"Record yourself reading the dialogue aloud. Listen to the recording and note 3 things to improve."},{"description":"Find 3 real German websites, videos, or articles about Protecting the Environment. Note 5 new words you discovered."}]', 50, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-00003284bbf1', '🎯 Excellent progress! This lesson covered Protecting the Environment (75 vocabulary items) and present_tense. You developed reading, listening, speaking, and writing skills in the context of environment. Focus on your common mistakes area for maximum improvement.', '["75 vocabulary items about Protecting the Environment","present_tense — grammar explanation and practice","Reading comprehension: text about Protecting the Environment","Listening comprehension: dialogue about Protecting the Environment","Speaking practice: roleplay/discussion about Protecting the Environment","Writing task: text about Protecting the Environment"]', '[{"title":"Unsere Umwelt schützen Review","summary":"present_tense — the main grammar focus. Focus on using this structure naturally in conversations and writing."}]', ARRAY['die Umwelt (environment)','der Klimawandel (climate change)','die Energie (energy)','der Müll (waste)','recyceln (to recycle)']::text[], ARRAY['Don''t translate from Arabic word-for-word — German has different sentence structure','Learn every noun with its article: NEVER learn "Tisch" alone, always "der Tisch"','Watch out for verb position in Nebensätze']::text[], ARRAY['Practice 15-20 minutes daily — consistency beats intensity','Speak out loud: German pronunciation needs muscle memory','Use the new vocabulary within 24 hours or you''ll forget it','Watch German YouTube videos about Protecting the Environment for authentic input']::text[]);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00003284bbf1', 'Pronunciation: Intonation and sentence melody', 'German sentences have a falling intonation at the end of statements. Questions starting with a verb rise at the end. W-questions fall at the end. Emphasise the stressed syllable — German stresses the first syllable of the root.

Common mistake for Arabic speakers: Arabic speakers often put stress on the wrong syllable. Remember: German root stress is usually on the first syllable.', '[]', '[{"german":"warum","arabic":"","english":"","phonetic":"/vaˈrʊm/"},{"german":"deshalb","arabic":"","english":"","phonetic":"/dɛsˈhalp/"}]', '[]', 10);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00003284bbf1', 'translation', 'Translate to German: "I use the word "environment" in a sentence about Protecting the Environment."', '[]', 'Wir müssen die Umwelt schützen.', 'Use die  "die Umwelt" with the correct present_tense form.', 1, 40);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00003284bbf1', 'translation', 'Translate to German: "I use the word "climate change" in a sentence about Protecting the Environment."', '[]', 'Der Klimawandel ist ein globales Problem.', 'Use der  "der Klimawandel" with the correct present_tense form.', 1, 41);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00003284bbf1', 'translation', 'Translate to German: "I use the word "energy" in a sentence about Protecting the Environment."', '[]', 'Erneuerbare Energie ist wichtig.', 'Use die  "die Energie" with the correct present_tense form.', 1, 42);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00003284bbf1', 'Culture: 🇩🇪 Deutsche Kultur: Protecting the Environment', 'Protecting the Environment in Germany has specific cultural nuances that differ from Arabic-speaking countries. Germans tend to separate their private and professional lives strictly. When dealing with Protecting the Environment in a professional context, use formal register and prepare factual arguments. Emotional appeals are less effective than logical reasoning.

لدى Protecting the Environment في ألمانيا فروق ثقافية دقيقة تختلف عن البلدان العربية. الألمان يفصلون بين حياتهم الخاصة والمهنية بشكل صارم.', '["Tip: Always use \"Sie\" (formal) with strangers and colleagues","Tip: Germans appreciate punctuality — arrive 5 minutes early","Tip: Direct feedback is a sign of respect, not criticism","Tip: Prepare factual arguments, not emotional appeals"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00003284bbf1', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Incorrect preposition usage after verbs","correction":"Learn which preposition each verb requires (sich freuen auf, warten auf, denken an)","explanation":"Arabic and German have different sentence structures. Arabic is VSO, German is SVO with verb in position 2."},{"mistake":"Putting the verb at the end in main clauses","correction":"Verb stays in position 2 in main clauses","explanation":"Subordinate clause word order interferes"}]', 30);

  -- Lesson 5: Test: Umwelt und Nachhaltigkeit (L-B1-05-05)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-00003284bbf0', '00000000-0000-4000-a000-000039c2eae3', 'Test: Umwelt und Nachhaltigkeit', 'Module test on environment and sustainability.', 'Module Test', 'test', '["Understand and apply present_tense rules correctly","Use present_tense in real conversations","Avoid common mistakes Arabic speakers make with present_tense","Read and understand present_tense in context","Listen and identify present_tense in speech","Write sentences using present_tense correctly"]', 40, 5, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, french_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-00003284bbf0', 'die Umwelt', 'البيئة', 'environment', NULL, 'die', NULL, 'noun', 'Wir müssen die Umwelt schützen.', 'We must protect the environment.', 'B1', 1),
  ('00000000-0000-4000-a000-00003284bbf0', 'der Klimawandel', 'تغير المناخ', 'climate change', NULL, 'der', NULL, 'noun', 'Der Klimawandel ist ein globales Problem.', 'Climate change is a global problem.', 'B1', 2),
  ('00000000-0000-4000-a000-00003284bbf0', 'die Energie', 'الطاقة', 'energy', NULL, 'die', NULL, 'noun', 'Erneuerbare Energie ist wichtig.', 'Renewable energy is important.', 'B1', 3),
  ('00000000-0000-4000-a000-00003284bbf0', 'der Müll', 'النفايات', 'waste', NULL, 'der', NULL, 'noun', 'In Deutschland trennt man den Müll.', 'In Germany, waste is separated.', 'B1', 4),
  ('00000000-0000-4000-a000-00003284bbf0', 'recyceln', 'يعيد التدوير', 'to recycle', NULL, NULL, NULL, 'verb', 'Wir recyceln Papier und Plastik.', 'We recycle paper and plastic.', 'B1', 5),
  ('00000000-0000-4000-a000-00003284bbf0', 'die Nachhaltigkeit', 'الاستدامة', 'sustainability', NULL, 'die', NULL, 'noun', 'Nachhaltigkeit ist ein Trend.', 'Sustainability is a trend.', 'B1', 6),
  ('00000000-0000-4000-a000-00003284bbf0', 'die Luft', 'الهواء', 'air', NULL, 'die', NULL, 'noun', 'Die Luft ist frisch.', 'The air is fresh.', 'A2', 7),
  ('00000000-0000-4000-a000-00003284bbf0', 'das Wasser', 'الماء', 'water', NULL, 'das', NULL, 'noun', 'Das Wasser ist sauber.', 'The water is clean.', 'A1', 8),
  ('00000000-0000-4000-a000-00003284bbf0', 'der Beruf', 'المهنة', 'profession', NULL, 'der', 'die Berufe', 'noun', 'Was ist dein Beruf?', 'What is your profession?', 'A1', 9),
  ('00000000-0000-4000-a000-00003284bbf0', 'die Firma', 'الشركة', 'company', NULL, 'die', 'die Firmen', 'noun', 'Die Firma ist in Berlin.', 'The company is in Berlin.', 'A1', 10),
  ('00000000-0000-4000-a000-00003284bbf0', 'der Kollege', 'الزميل', 'colleague', NULL, 'der', 'die Kollegen', 'noun', 'Mein Kollege hilft mir.', 'My colleague helps me.', 'A1', 11),
  ('00000000-0000-4000-a000-00003284bbf0', 'das Büro', 'المكتب', 'office', NULL, 'das', 'die Büros', 'noun', 'Das Büro ist im dritten Stock.', 'The office is on the third floor.', 'A1', 12),
  ('00000000-0000-4000-a000-00003284bbf0', 'die Besprechung', 'الاجتماع', 'meeting', NULL, 'die', 'die Besprechungen', 'noun', 'Wir haben eine Besprechung.', 'We have a meeting.', 'B1', 13),
  ('00000000-0000-4000-a000-00003284bbf0', 'der Chef', 'المدير', 'boss', NULL, 'der', 'die Chefs', 'noun', 'Mein Chef ist freundlich.', 'My boss is friendly.', 'A1', 14),
  ('00000000-0000-4000-a000-00003284bbf0', 'das Gehalt', 'الراتب', 'salary', NULL, 'das', 'die Gehälter', 'noun', 'Das Gehalt ist gut.', 'The salary is good.', 'B1', 15),
  ('00000000-0000-4000-a000-00003284bbf0', 'die Stelle', 'الوظيفة', 'position', NULL, 'die', 'die Stellen', 'noun', 'Ich suche eine neue Stelle.', 'I am looking for a new position.', 'B1', 16),
  ('00000000-0000-4000-a000-00003284bbf0', 'die Schule', 'المدرسة', 'school', NULL, 'die', 'die Schulen', 'noun', 'Die Kinder gehen zur Schule.', 'The children go to school.', 'A1', 17),
  ('00000000-0000-4000-a000-00003284bbf0', 'der Lehrer', 'المعلم', 'teacher', NULL, 'der', 'die Lehrer', 'noun', 'Der Lehrer erklärt die Grammatik.', 'The teacher explains the grammar.', 'A1', 18),
  ('00000000-0000-4000-a000-00003284bbf0', 'der Student', 'الطالب', 'student', NULL, 'der', 'die Studenten', 'noun', 'Der Student lernt Deutsch.', 'The student learns German.', 'A1', 19),
  ('00000000-0000-4000-a000-00003284bbf0', 'die Universität', 'الجامعة', 'university', NULL, 'die', 'die Universitäten', 'noun', 'Die Universität ist alt.', 'The university is old.', 'B1', 20),
  ('00000000-0000-4000-a000-00003284bbf0', 'der Kurs', 'الدورة', 'course', NULL, 'der', 'die Kurse', 'noun', 'Der Kurs kostet 200 Euro.', 'The course costs 200 euros.', 'A2', 21),
  ('00000000-0000-4000-a000-00003284bbf0', 'die Prüfung', 'الامتحان', 'exam', NULL, 'die', 'die Prüfungen', 'noun', 'Die Prüfung ist schwer.', 'The exam is difficult.', 'B1', 22),
  ('00000000-0000-4000-a000-00003284bbf0', 'das Studium', 'الدراسة الجامعية', 'studies', NULL, 'das', NULL, 'noun', 'Mein Studium dauert vier Jahre.', 'My studies take four years.', 'B1', 23),
  ('00000000-0000-4000-a000-00003284bbf0', 'lernen', 'يتعلم', 'to learn', NULL, NULL, NULL, 'verb', 'Ich lerne Deutsch.', 'I learn German.', 'A1', 24),
  ('00000000-0000-4000-a000-00003284bbf0', 'die Zeitung', 'الجريدة', 'newspaper', NULL, 'die', 'die Zeitungen', 'noun', 'Ich lese die Zeitung.', 'I read the newspaper.', 'A2', 25),
  ('00000000-0000-4000-a000-00003284bbf0', 'das Internet', 'الإنترنت', 'internet', NULL, 'das', NULL, 'noun', 'Das Internet ist schnell.', 'The internet is fast.', 'A2', 26),
  ('00000000-0000-4000-a000-00003284bbf0', 'der Artikel', 'المقال', 'article', NULL, 'der', 'die Artikel', 'noun', 'Der Artikel ist interessant.', 'The article is interesting.', 'B1', 27),
  ('00000000-0000-4000-a000-00003284bbf0', 'die Nachricht', 'الخبر', 'news', NULL, 'die', 'die Nachrichten', 'noun', 'Ich sehe die Nachrichten.', 'I watch the news.', 'A2', 28),
  ('00000000-0000-4000-a000-00003284bbf0', 'das Radio', 'الراديو', 'radio', NULL, 'das', 'die Radios', 'noun', 'Ich höre Radio.', 'I listen to the radio.', 'A2', 29),
  ('00000000-0000-4000-a000-00003284bbf0', 'das Fernsehen', 'التلفاز', 'television', NULL, 'das', NULL, 'noun', 'Das Fernsehen läuft.', 'The television is on.', 'A2', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00003284bbf0', 'Konjunktiv II: Höfliche Bitten und irreale Sätze (Subjunctive for Politeness) / صيغة الشرط الثانية: الطلبات المهذبة والجمل غير الواقعية', 'Konjunktiv II is used for polite requests (Ich hätte gern...), unreal situations (Wenn ich Zeit hätte...), and wishes (Ich wünschte, ich wäre...). For most verbs, use "würde + infinitive". Only a few common verbs have their own subjunctive form: hätte (hätten), wäre (wären), könnte (könnten).', '[{"rule":"würde + Infinitiv (most verbs)","note":"Ich würde gern kommen. (I would like to come.)"},{"rule":"hätte (haben), wäre (sein), könnte (können)","note":"Ich hätte gern einen Kaffee. (I would like a coffee.)"},{"rule":"Wenn... dann... (if... then...)","note":"Wenn ich Zeit hätte, würde ich reisen. (If I had time, I would travel.)"}]', '[{"german":"Ich hätte gern einen Kaffee, bitte.","arabic":"أود فنجان قهوة من فضلك.","english":"I would like a coffee, please."},{"german":"Wenn ich mehr Zeit hätte, würde ich Deutsch lernen.","arabic":"لو كان لدي وقت أكثر، لتعلمت الألمانية.","english":"If I had more time, I would learn German."},{"german":"Könnten Sie mir bitte helfen?","arabic":"هل يمكنكم مساعدتي من فضلكم؟","english":"Could you please help me?"}]', '[{"mistake":"Ich will einen Kaffee (too direct in restaurant)","correction":"Ich hätte gern einen Kaffee.","explanation":"In German restaurants, use Konjunktiv II to be polite, not \"ich will\"."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00003284bbf0', 'multiple_choice', 'Welches deutsche Wort bedeutet "environment"?', '["recyceln","die Umwelt","der Müll","der Klimawandel"]', 'die Umwelt', '"environment" = "die Umwelt" in German. Article: die ', 1, 1),
  ('00000000-0000-4000-a000-00003284bbf0', 'multiple_choice', 'Welches deutsche Wort bedeutet "climate change"?', '["recyceln","der Müll","die Energie","die Umwelt"]', 'der Klimawandel', '"climate change" = "der Klimawandel" in German. Article: der ', 1, 2),
  ('00000000-0000-4000-a000-00003284bbf0', 'multiple_choice', 'Welches deutsche Wort bedeutet "energy"?', '["der Müll","der Klimawandel","recyceln","die Umwelt"]', 'die Energie', '"energy" = "die Energie" in German. Article: die ', 1, 3),
  ('00000000-0000-4000-a000-00003284bbf0', 'multiple_choice', 'Welches deutsche Wort bedeutet "waste"?', '["der Klimawandel","der Müll","die Umwelt","recyceln"]', 'der Müll', '"waste" = "der Müll" in German. Article: der ', 1, 4),
  ('00000000-0000-4000-a000-00003284bbf0', 'multiple_choice', 'Welches deutsche Wort bedeutet "to recycle"?', '["recyceln","die Energie","die Umwelt","der Müll"]', 'recyceln', '"to recycle" bedeutet auf Deutsch "to recycle".  ', 1, 5),
  ('00000000-0000-4000-a000-00003284bbf0', 'fill_gap', 'Ergänze den Satz: Ich ___ gern über Module Test. (sprechen)', '["spreche","sprichst","spricht","sprechen"]', 'spreche', 'ich spreche gern = I like to speak. Stem: sprech- + e.', 2, 6),
  ('00000000-0000-4000-a000-00003284bbf0', 'translation', 'Übersetze ins Deutsche: "I am learning about Module Test."', '["Ich lerne über Module Test.","Ich lerne Module Test.","Lerne ich Module Test."]', 'Ich lerne über Module Test.', '"Ich lerne über..." = "I am learning about..."', 2, 7),
  ('00000000-0000-4000-a000-00003284bbf0', 'matching', 'Match: Which word pairs are correct?', '["die Umwelt - environment, der Klimawandel - climate change"]', 'Matched correctly', 'Each German word has a unique English equivalent.', 2, 8);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-00003284bbf0', 'multiple_choice', 'Was bedeutet "die Umwelt" auf Deutsch?', '["environment","to run","beautiful","yesterday"]', 'environment', 1, 1),
  ('00000000-0000-4000-a000-00003284bbf0', 'multiple_choice', 'Welcher Artikel gehört zu "der Klimawandel"?', '["der","die","das","den"]', 'der', 1, 2),
  ('00000000-0000-4000-a000-00003284bbf0', 'true_false', 'Das Wort "die Energie" gehört zum Thema Module Test.', '["True","False"]', 'True', 1, 3),
  ('00000000-0000-4000-a000-00003284bbf0', 'multiple_choice', 'Welcher Satz verwendet present_tense?', '["Ich hätte gern einen Kaffee, bitte.","Wenn ich mehr Zeit hätte, würde ich Deutsch lernen.","Könnten Sie mir bitte helfen?"]', 'Ich hätte gern einen Kaffee, bitte.', 2, 4),
  ('00000000-0000-4000-a000-00003284bbf0', 'true_false', ''Im Deutschen steht das Verb an zweiter Position im Hauptsatz.', '["True","False"]', 'True', 1, 5),
  ('00000000-0000-4000-a000-00003284bbf0', 'fill_blank', 'Complete: Ich ___ (waste) Deutsch.', '["der Müll","lernt","lernst","lernen"]', 'lerne', 2, 6),
  ('00000000-0000-4000-a000-00003284bbf0', 'multiple_choice', 'Wie lautet das deutsche Wort für "to recycle"?', '["recyceln","die Nachhaltigkeit","die Luft","das Wasser"]', 'recyceln', 1, 7),
  ('00000000-0000-4000-a000-00003284bbf0', 'true_false', 'Im Deutschen werden alle Nomen großgeschrieben.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-00003284bbf0', 'multiple_choice', 'How do you say "please" in a restaurant in Germany?', '["Bitte","Danke","Tschüss","Hallo"]', 'Bitte', 1, 9),
  ('00000000-0000-4000-a000-00003284bbf0', 'fill_blank', 'Wo ___ (to live) du?', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 2, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, french_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-00003284bbf0', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', NULL, 'Used in Umwelt und Nachhaltigkeit', 'formal', false, 1),
  ('00000000-0000-4000-a000-00003284bbf0', 'Guten Tag!', 'Good day!', 'نهارك سعيد!', NULL, 'Used in Umwelt und Nachhaltigkeit', 'formal', false, 2),
  ('00000000-0000-4000-a000-00003284bbf0', 'Hallo, wie geht es Ihnen?', 'Hello, how are you?', 'مرحباً، كيف حالكم؟', NULL, 'Used in Umwelt und Nachhaltigkeit', 'formal', false, 3),
  ('00000000-0000-4000-a000-00003284bbf0', 'Schön, Sie kennenzulernen!', 'Nice to meet you!', 'سعيد بلقائكم!', NULL, 'Used in Umwelt und Nachhaltigkeit', 'formal', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-00003284bbf0', 'die die Umwelt', 'environment — البيئة', 'noun', 'vocabulary', 1),
  ('00000000-0000-4000-a000-00003284bbf0', 'der der Klimawandel', 'climate change — تغير المناخ', 'noun', 'vocabulary', 2),
  ('00000000-0000-4000-a000-00003284bbf0', 'die die Energie', 'energy — الطاقة', 'noun', 'vocabulary', 3),
  ('00000000-0000-4000-a000-00003284bbf0', 'der der Müll', 'waste — النفايات', 'noun', 'vocabulary', 4),
  ('00000000-0000-4000-a000-00003284bbf0', 'recyceln', 'to recycle — يعيد التدوير', 'verb', 'vocabulary', 5),
  ('00000000-0000-4000-a000-00003284bbf0', 'die die Nachhaltigkeit', 'sustainability — الاستدامة', 'noun', 'vocabulary', 6),
  ('00000000-0000-4000-a000-00003284bbf0', 'die die Luft', 'air — الهواء', 'noun', 'vocabulary', 7),
  ('00000000-0000-4000-a000-00003284bbf0', 'das das Wasser', 'water — الماء', 'noun', 'vocabulary', 8),
  ('00000000-0000-4000-a000-00003284bbf0', 'der der Beruf (die Berufe)', 'profession — المهنة', 'noun', 'vocabulary', 9),
  ('00000000-0000-4000-a000-00003284bbf0', 'die die Firma (die Firmen)', 'company — الشركة', 'noun', 'vocabulary', 10),
  ('00000000-0000-4000-a000-00003284bbf0', 'der der Kollege (die Kollegen)', 'colleague — الزميل', 'noun', 'vocabulary', 11),
  ('00000000-0000-4000-a000-00003284bbf0', 'das das Büro (die Büros)', 'office — المكتب', 'noun', 'vocabulary', 12),
  ('00000000-0000-4000-a000-00003284bbf0', 'die die Besprechung (die Besprechungen)', 'meeting — الاجتماع', 'noun', 'vocabulary', 13),
  ('00000000-0000-4000-a000-00003284bbf0', 'der der Chef (die Chefs)', 'boss — المدير', 'noun', 'vocabulary', 14),
  ('00000000-0000-4000-a000-00003284bbf0', 'das das Gehalt (die Gehälter)', 'salary — الراتب', 'noun', 'vocabulary', 15),
  ('00000000-0000-4000-a000-00003284bbf0', 'Ich hätte gern einen Kaffee, bitte.', 'I would like a coffee, please.', 'Konjunktiv II: Höfliche Bitten und irreale Sätze (Subjunctive for Politeness)', 'grammar', 16),
  ('00000000-0000-4000-a000-00003284bbf0', 'Wenn ich mehr Zeit hätte, würde ich Deutsch lernen.', 'If I had more time, I would learn German.', 'Konjunktiv II: Höfliche Bitten und irreale Sätze (Subjunctive for Politeness)', 'grammar', 17),
  ('00000000-0000-4000-a000-00003284bbf0', 'Könnten Sie mir bitte helfen?', 'Could you please help me?', 'Konjunktiv II: Höfliche Bitten und irreale Sätze (Subjunctive for Politeness)', 'grammar', 18);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, french_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-00003284bbf0', 'Test: Umwelt und Nachhaltigkeit — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', NULL, 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, french_translation, duration_seconds, speaker_count, scenario) values
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

[Lehrerin]: ممتاز! إلى الغد!', '[Lehrerin]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: ', 72, 2, 'Umwelt und Nachhaltigkeit');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-00003284bbf0', '🔊 Sprechen: Test: Umwelt und Nachhaltigkeit', 'Discussion: You attend a German Stammtisch (weekly meetup). Discuss Module Test with the group. Express your opinion, agree/disagree, ask follow-up questions. Try to keep the conversation flowing for 2 minutes.', 'Module Test', ARRAY['Use discourse markers (also, jedoch, außerdem)','React naturally: "Ach so!", "Echt?", "Das stimmt!"','Paraphrase when you don''t know a word']::text[], ARRAY['die Umwelt','der Klimawandel','die Energie','der Müll','recyceln','die Nachhaltigkeit','die Luft','das Wasser']::text[], 60, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-00003284bbf0', '✏️ Schreiben: Test: Umwelt und Nachhaltigkeit', 'Write a formal letter (200-250 words) to your German teacher explaining what you learned about "Module Test". Include: what surprised you, what was similar/different to your culture, and what you want to learn next. Use present_tense correctly.', ARRAY['Use paragraph breaks for structure','Connect ideas with "außerdem", "deshalb", "jedoch"','Check your verb position in Nebensätze']::text[], ARRAY['die Umwelt','der Klimawandel','die Energie','der Müll','recyceln','die Nachhaltigkeit','die Luft','das Wasser']::text[], ARRAY['Sentence structure','Vocabulary usage']::text[], 150, 250, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00003284bbf0', 'Test: Umwelt und Nachhaltigkeit — Roleplay', 'Module Test', 'Student', 'Teacher', 'Practice conversation about Module Test', 'Hallo! Lass uns über dieses Thema sprechen.', 'intermediate', 1, ARRAY['die Umwelt','der Klimawandel','die Energie','der Müll','recyceln','die Nachhaltigkeit','die Luft','das Wasser']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00003284bbf0', 'Test: Umwelt und Nachhaltigkeit — Advanced Roleplay', 'Module Test', 'Customer', 'Assistant', 'Extended conversation about Module Test', 'Guten Tag! Wie kann ich Ihnen helfen?', 'intermediate', 2, ARRAY['die Umwelt','der Klimawandel','die Energie','der Müll','recyceln','die Nachhaltigkeit','die Luft','das Wasser']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-00003284bbf0', 'Test: Umwelt und Nachhaltigkeit — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Test: Umwelt und Nachhaltigkeit".', 'Creative practice for Module Test', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-00003284bbf0', '📚 Hausaufgabe: Test: Umwelt und Nachhaltigkeit', 'Complete these tasks to reinforce "Test: Umwelt und Nachhaltigkeit".', 'mixed', '[{"description":"Create 10 flashcards from this lesson''s vocabulary — write German on one side, Arabic on the other. Test yourself 3 times."},{"description":"Write 6 sentences about Module Test: 2 statements, 2 questions, 2 negations — all using present_tense."},{"description":"Record yourself reading the dialogue aloud. Listen to the recording and note 3 things to improve."},{"description":"Find 3 real German websites, videos, or articles about Module Test. Note 5 new words you discovered."}]', 50, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-00003284bbf0', '🎯 Excellent progress! This lesson covered Module Test (75 vocabulary items) and present_tense. You developed reading, listening, speaking, and writing skills in the context of environment. Focus on your common mistakes area for maximum improvement.', '["75 vocabulary items about Module Test","present_tense — grammar explanation and practice","Reading comprehension: text about Module Test","Listening comprehension: dialogue about Module Test","Speaking practice: roleplay/discussion about Module Test","Writing task: text about Module Test"]', '[{"title":"Test: Umwelt und Nachhaltigkeit Review","summary":"present_tense — the main grammar focus. Focus on using this structure naturally in conversations and writing."}]', ARRAY['die Umwelt (environment)','der Klimawandel (climate change)','die Energie (energy)','der Müll (waste)','recyceln (to recycle)']::text[], ARRAY['Don''t translate from Arabic word-for-word — German has different sentence structure','Learn every noun with its article: NEVER learn "Tisch" alone, always "der Tisch"','Watch out for verb position in Nebensätze']::text[], ARRAY['Practice 15-20 minutes daily — consistency beats intensity','Speak out loud: German pronunciation needs muscle memory','Use the new vocabulary within 24 hours or you''ll forget it','Watch German YouTube videos about Module Test for authentic input']::text[]);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00003284bbf0', 'Pronunciation: Intonation and sentence melody', 'German sentences have a falling intonation at the end of statements. Questions starting with a verb rise at the end. W-questions fall at the end. Emphasise the stressed syllable — German stresses the first syllable of the root.

Common mistake for Arabic speakers: Arabic speakers often put stress on the wrong syllable. Remember: German root stress is usually on the first syllable.', '[]', '[{"german":"warum","arabic":"","english":"","phonetic":"/vaˈrʊm/"},{"german":"deshalb","arabic":"","english":"","phonetic":"/dɛsˈhalp/"}]', '[]', 10);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00003284bbf0', 'translation', 'Translate to German: "I use the word "environment" in a sentence about Module Test."', '[]', 'Wir müssen die Umwelt schützen.', 'Use die  "die Umwelt" with the correct present_tense form.', 1, 40);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00003284bbf0', 'translation', 'Translate to German: "I use the word "climate change" in a sentence about Module Test."', '[]', 'Der Klimawandel ist ein globales Problem.', 'Use der  "der Klimawandel" with the correct present_tense form.', 1, 41);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00003284bbf0', 'translation', 'Translate to German: "I use the word "energy" in a sentence about Module Test."', '[]', 'Erneuerbare Energie ist wichtig.', 'Use die  "die Energie" with the correct present_tense form.', 1, 42);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00003284bbf0', 'Culture: 🇩🇪 Deutsche Kultur: Module Test', 'Module Test in Germany has specific cultural nuances that differ from Arabic-speaking countries. Germans tend to separate their private and professional lives strictly. When dealing with Module Test in a professional context, use formal register and prepare factual arguments. Emotional appeals are less effective than logical reasoning.

لدى Module Test في ألمانيا فروق ثقافية دقيقة تختلف عن البلدان العربية. الألمان يفصلون بين حياتهم الخاصة والمهنية بشكل صارم.', '["Tip: Always use \"Sie\" (formal) with strangers and colleagues","Tip: Germans appreciate punctuality — arrive 5 minutes early","Tip: Direct feedback is a sign of respect, not criticism","Tip: Prepare factual arguments, not emotional appeals"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00003284bbf0', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Incorrect preposition usage after verbs","correction":"Learn which preposition each verb requires (sich freuen auf, warten auf, denken an)","explanation":"Arabic and German have different sentence structures. Arabic is VSO, German is SVO with verb in position 2."},{"mistake":"Putting the verb at the end in main clauses","correction":"Verb stays in position 2 in main clauses","explanation":"Subordinate clause word order interferes"}]', 30);

  -- Module 6: Reisen, Kultur und interkulturelle Kompetenz
  insert into public.course_modules (id, level_id, title, description, objectives, order_index, estimated_hours, is_published)
  values ('00000000-0000-4000-a000-000039c2eae4', 'B1', 'Reisen, Kultur und interkulturelle Kompetenz', 'Explore German-speaking countries, travel planning, and intercultural skills.', '["Plan and describe trips","Understand cultural differences","Use Präteritum of modal verbs","Use comparative sentences with \"je...desto\"","Write travel reports"]', 6, 5, true)
  on conflict (id) do nothing;

  -- Lesson 1: Reiseplanung und Buchung (L-B1-06-01)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-000032844795', '00000000-0000-4000-a000-000039c2eae4', 'Reiseplanung und Buchung', 'Plan trips and make bookings.', 'Travel Planning', 'speaking', '["Understand and apply present_tense rules correctly","Use present_tense in real conversations","Avoid common mistakes Arabic speakers make with present_tense","Read and understand present_tense in context","Listen and identify present_tense in speech","Write sentences using present_tense correctly"]', 50, 1, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, french_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-000032844795', 'die Reise', 'الرحلة', 'trip', NULL, 'die', 'die Reisen', 'noun', 'Die Reise nach München war schön.', 'The trip to Munich was nice.', 'A1', 1),
  ('00000000-0000-4000-a000-000032844795', 'der Zug', 'القطار', 'train', NULL, 'der', 'die Züge', 'noun', 'Der Zug kommt um 10 Uhr an.', 'The train arrives at 10 o''clock.', 'A1', 2),
  ('00000000-0000-4000-a000-000032844795', 'das Ticket', 'التذكرة', 'ticket', NULL, 'das', 'die Tickets', 'noun', 'Ein Ticket nach Berlin, bitte.', 'A ticket to Berlin, please.', 'A1', 3),
  ('00000000-0000-4000-a000-000032844795', 'der Bahnhof', 'محطة القطار', 'train station', NULL, 'der', 'die Bahnhöfe', 'noun', 'Der Bahnhof ist groß.', 'The train station is big.', 'A1', 4),
  ('00000000-0000-4000-a000-000032844795', 'der Flughafen', 'المطار', 'airport', NULL, 'der', 'die Flughäfen', 'noun', 'Ich fahre zum Flughafen.', 'I drive to the airport.', 'A1', 5),
  ('00000000-0000-4000-a000-000032844795', 'das Hotel', 'الفندق', 'hotel', NULL, 'das', 'die Hotels', 'noun', 'Das Hotel ist günstig.', 'The hotel is affordable.', 'A1', 6),
  ('00000000-0000-4000-a000-000032844795', 'der Pass', 'جواز السفر', 'passport', NULL, 'der', 'die Pässe', 'noun', 'Ich brauche meinen Pass.', 'I need my passport.', 'A1', 7),
  ('00000000-0000-4000-a000-000032844795', 'der Koffer', 'الحقيبة', 'suitcase', NULL, 'der', 'die Koffer', 'noun', 'Mein Koffer ist schwer.', 'My suitcase is heavy.', 'A1', 8),
  ('00000000-0000-4000-a000-000032844795', 'der Beruf', 'المهنة', 'profession', NULL, 'der', 'die Berufe', 'noun', 'Was ist dein Beruf?', 'What is your profession?', 'A1', 9),
  ('00000000-0000-4000-a000-000032844795', 'die Firma', 'الشركة', 'company', NULL, 'die', 'die Firmen', 'noun', 'Die Firma ist in Berlin.', 'The company is in Berlin.', 'A1', 10),
  ('00000000-0000-4000-a000-000032844795', 'der Kollege', 'الزميل', 'colleague', NULL, 'der', 'die Kollegen', 'noun', 'Mein Kollege hilft mir.', 'My colleague helps me.', 'A1', 11),
  ('00000000-0000-4000-a000-000032844795', 'das Büro', 'المكتب', 'office', NULL, 'das', 'die Büros', 'noun', 'Das Büro ist im dritten Stock.', 'The office is on the third floor.', 'A1', 12),
  ('00000000-0000-4000-a000-000032844795', 'die Besprechung', 'الاجتماع', 'meeting', NULL, 'die', 'die Besprechungen', 'noun', 'Wir haben eine Besprechung.', 'We have a meeting.', 'B1', 13),
  ('00000000-0000-4000-a000-000032844795', 'der Chef', 'المدير', 'boss', NULL, 'der', 'die Chefs', 'noun', 'Mein Chef ist freundlich.', 'My boss is friendly.', 'A1', 14),
  ('00000000-0000-4000-a000-000032844795', 'das Gehalt', 'الراتب', 'salary', NULL, 'das', 'die Gehälter', 'noun', 'Das Gehalt ist gut.', 'The salary is good.', 'B1', 15),
  ('00000000-0000-4000-a000-000032844795', 'die Stelle', 'الوظيفة', 'position', NULL, 'die', 'die Stellen', 'noun', 'Ich suche eine neue Stelle.', 'I am looking for a new position.', 'B1', 16),
  ('00000000-0000-4000-a000-000032844795', 'die Schule', 'المدرسة', 'school', NULL, 'die', 'die Schulen', 'noun', 'Die Kinder gehen zur Schule.', 'The children go to school.', 'A1', 17),
  ('00000000-0000-4000-a000-000032844795', 'der Lehrer', 'المعلم', 'teacher', NULL, 'der', 'die Lehrer', 'noun', 'Der Lehrer erklärt die Grammatik.', 'The teacher explains the grammar.', 'A1', 18),
  ('00000000-0000-4000-a000-000032844795', 'der Student', 'الطالب', 'student', NULL, 'der', 'die Studenten', 'noun', 'Der Student lernt Deutsch.', 'The student learns German.', 'A1', 19),
  ('00000000-0000-4000-a000-000032844795', 'die Universität', 'الجامعة', 'university', NULL, 'die', 'die Universitäten', 'noun', 'Die Universität ist alt.', 'The university is old.', 'B1', 20),
  ('00000000-0000-4000-a000-000032844795', 'der Kurs', 'الدورة', 'course', NULL, 'der', 'die Kurse', 'noun', 'Der Kurs kostet 200 Euro.', 'The course costs 200 euros.', 'A2', 21),
  ('00000000-0000-4000-a000-000032844795', 'die Prüfung', 'الامتحان', 'exam', NULL, 'die', 'die Prüfungen', 'noun', 'Die Prüfung ist schwer.', 'The exam is difficult.', 'B1', 22),
  ('00000000-0000-4000-a000-000032844795', 'das Studium', 'الدراسة الجامعية', 'studies', NULL, 'das', NULL, 'noun', 'Mein Studium dauert vier Jahre.', 'My studies take four years.', 'B1', 23),
  ('00000000-0000-4000-a000-000032844795', 'lernen', 'يتعلم', 'to learn', NULL, NULL, NULL, 'verb', 'Ich lerne Deutsch.', 'I learn German.', 'A1', 24),
  ('00000000-0000-4000-a000-000032844795', 'die Zeitung', 'الجريدة', 'newspaper', NULL, 'die', 'die Zeitungen', 'noun', 'Ich lese die Zeitung.', 'I read the newspaper.', 'A2', 25),
  ('00000000-0000-4000-a000-000032844795', 'das Internet', 'الإنترنت', 'internet', NULL, 'das', NULL, 'noun', 'Das Internet ist schnell.', 'The internet is fast.', 'A2', 26),
  ('00000000-0000-4000-a000-000032844795', 'der Artikel', 'المقال', 'article', NULL, 'der', 'die Artikel', 'noun', 'Der Artikel ist interessant.', 'The article is interesting.', 'B1', 27),
  ('00000000-0000-4000-a000-000032844795', 'die Nachricht', 'الخبر', 'news', NULL, 'die', 'die Nachrichten', 'noun', 'Ich sehe die Nachrichten.', 'I watch the news.', 'A2', 28),
  ('00000000-0000-4000-a000-000032844795', 'das Radio', 'الراديو', 'radio', NULL, 'das', 'die Radios', 'noun', 'Ich höre Radio.', 'I listen to the radio.', 'A2', 29),
  ('00000000-0000-4000-a000-000032844795', 'das Fernsehen', 'التلفاز', 'television', NULL, 'das', NULL, 'noun', 'Das Fernsehen läuft.', 'The television is on.', 'A2', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000032844795', 'Adjektivdeklination (Adjective Declension) / تصريف الصفات', 'When an adjective comes before a noun, it must agree in gender, number, and case. There are three declension patterns: after "der" words (weak), after "ein" words (mixed), and without article (strong). The endings depend on which information the article already provides.', '[{"rule":"Weak (after der/die/das): -e or -en","note":"der gute Mann, die gute Frau, das gute Kind, die guten Leute"},{"rule":"Mixed (after ein/mein/kein): article ending + adjective ending","note":"ein guter Mann, eine gute Frau, ein gutes Kind, keine guten Leute"}]', '[{"german":"Der große Hund gehört der alten Frau.","arabic":"الكلب الكبير ملك للمرأة العجوز.","english":"The big dog belongs to the old woman."},{"german":"Ein interessantes Buch liegt auf dem Tisch.","arabic":"كتاب مثير للاهتمام على الطاولة.","english":"An interesting book is on the table."}]', '[{"mistake":"Der groß Hund (no ending on adjective)","correction":"Der große Hund","explanation":"Adjectives before nouns MUST have an ending in German."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000032844795', 'multiple_choice', 'Welches deutsche Wort bedeutet "trip"?', '["der Bahnhof","die Reise","der Flughafen","der Zug"]', 'die Reise', '"trip" = "die Reise" in German. Article: die Plural: die Reisen', 1, 1),
  ('00000000-0000-4000-a000-000032844795', 'multiple_choice', 'Welches deutsche Wort bedeutet "train"?', '["der Bahnhof","der Zug","der Flughafen","die Reise"]', 'der Zug', '"train" = "der Zug" in German. Article: der Plural: die Züge', 1, 2),
  ('00000000-0000-4000-a000-000032844795', 'multiple_choice', 'Welches deutsche Wort bedeutet "ticket"?', '["das Ticket","die Reise","der Zug","der Bahnhof"]', 'das Ticket', '"ticket" = "das Ticket" in German. Article: das Plural: die Tickets', 1, 3),
  ('00000000-0000-4000-a000-000032844795', 'multiple_choice', 'Welches deutsche Wort bedeutet "train station"?', '["der Bahnhof","die Reise","der Zug","das Ticket"]', 'der Bahnhof', '"train station" = "der Bahnhof" in German. Article: der Plural: die Bahnhöfe', 1, 4),
  ('00000000-0000-4000-a000-000032844795', 'multiple_choice', 'Welches deutsche Wort bedeutet "airport"?', '["der Flughafen","der Bahnhof","das Ticket","die Reise"]', 'der Flughafen', '"airport" = "der Flughafen" in German. Article: der Plural: die Flughäfen', 1, 5),
  ('00000000-0000-4000-a000-000032844795', 'fill_gap', 'Ergänze den Satz: Ich ___ gern über Travel Planning. (sprechen)', '["spreche","sprichst","spricht","sprechen"]', 'spreche', 'ich spreche gern = I like to speak. Stem: sprech- + e.', 2, 6),
  ('00000000-0000-4000-a000-000032844795', 'translation', 'Übersetze ins Deutsche: "I am learning about Travel Planning."', '["Ich lerne über Travel Planning.","Ich lerne Travel Planning.","Lerne ich Travel Planning."]', 'Ich lerne über Travel Planning.', '"Ich lerne über..." = "I am learning about..."', 2, 7),
  ('00000000-0000-4000-a000-000032844795', 'matching', 'Match: Which word pairs are correct?', '["die Reise - trip, der Zug - train"]', 'Matched correctly', 'Each German word has a unique English equivalent.', 2, 8);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-000032844795', 'multiple_choice', 'Was bedeutet "die Reise" auf Deutsch?', '["trip","to run","beautiful","yesterday"]', 'trip', 1, 1),
  ('00000000-0000-4000-a000-000032844795', 'multiple_choice', 'Welcher Artikel gehört zu "der Zug"?', '["der","die","das","den"]', 'der', 1, 2),
  ('00000000-0000-4000-a000-000032844795', 'true_false', 'Das Wort "das Ticket" gehört zum Thema Travel Planning.', '["True","False"]', 'True', 1, 3),
  ('00000000-0000-4000-a000-000032844795', 'multiple_choice', 'Welcher Satz verwendet present_tense?', '["Der große Hund gehört der alten Frau.","Ein interessantes Buch liegt auf dem Tisch."]', 'Der große Hund gehört der alten Frau.', 2, 4),
  ('00000000-0000-4000-a000-000032844795', 'true_false', ''Im Deutschen steht das Verb an zweiter Position im Hauptsatz.', '["True","False"]', 'True', 1, 5),
  ('00000000-0000-4000-a000-000032844795', 'fill_blank', 'Complete: Ich ___ (train station) Deutsch.', '["der Bahnhof","lernt","lernst","lernen"]', 'lerne', 2, 6),
  ('00000000-0000-4000-a000-000032844795', 'multiple_choice', 'Wie lautet das deutsche Wort für "airport"?', '["der Flughafen","das Hotel","der Pass","der Koffer"]', 'der Flughafen', 1, 7),
  ('00000000-0000-4000-a000-000032844795', 'true_false', 'Im Deutschen werden alle Nomen großgeschrieben.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-000032844795', 'multiple_choice', 'How do you say "please" in a restaurant in Germany?', '["Bitte","Danke","Tschüss","Hallo"]', 'Bitte', 1, 9),
  ('00000000-0000-4000-a000-000032844795', 'fill_blank', 'Wo ___ (to live) du?', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 2, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, french_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-000032844795', 'Ich möchte ein Ticket nach Berlin.', 'I''d like a ticket to Berlin.', 'أريد تذكرة إلى برلين.', NULL, 'Used in Reisen, Kultur und interkulturelle Kompetenz', 'formal', false, 1),
  ('00000000-0000-4000-a000-000032844795', 'Wann fährt der Zug ab?', 'When does the train depart?', 'متى يغادر القطار؟', NULL, 'Used in Reisen, Kultur und interkulturelle Kompetenz', 'formal', false, 2),
  ('00000000-0000-4000-a000-000032844795', 'Wo ist der Bahnsteig?', 'Where is the platform?', 'أين الرصيف؟', NULL, 'Used in Reisen, Kultur und interkulturelle Kompetenz', 'formal', false, 3),
  ('00000000-0000-4000-a000-000032844795', 'Ist dieser Platz frei?', 'Is this seat free?', 'هل هذا المقعد شاغر؟', NULL, 'Used in Reisen, Kultur und interkulturelle Kompetenz', 'neutral', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-000032844795', 'die die Reise (die Reisen)', 'trip — الرحلة', 'noun', 'vocabulary', 1),
  ('00000000-0000-4000-a000-000032844795', 'der der Zug (die Züge)', 'train — القطار', 'noun', 'vocabulary', 2),
  ('00000000-0000-4000-a000-000032844795', 'das das Ticket (die Tickets)', 'ticket — التذكرة', 'noun', 'vocabulary', 3),
  ('00000000-0000-4000-a000-000032844795', 'der der Bahnhof (die Bahnhöfe)', 'train station — محطة القطار', 'noun', 'vocabulary', 4),
  ('00000000-0000-4000-a000-000032844795', 'der der Flughafen (die Flughäfen)', 'airport — المطار', 'noun', 'vocabulary', 5),
  ('00000000-0000-4000-a000-000032844795', 'das das Hotel (die Hotels)', 'hotel — الفندق', 'noun', 'vocabulary', 6),
  ('00000000-0000-4000-a000-000032844795', 'der der Pass (die Pässe)', 'passport — جواز السفر', 'noun', 'vocabulary', 7),
  ('00000000-0000-4000-a000-000032844795', 'der der Koffer (die Koffer)', 'suitcase — الحقيبة', 'noun', 'vocabulary', 8),
  ('00000000-0000-4000-a000-000032844795', 'der der Beruf (die Berufe)', 'profession — المهنة', 'noun', 'vocabulary', 9),
  ('00000000-0000-4000-a000-000032844795', 'die die Firma (die Firmen)', 'company — الشركة', 'noun', 'vocabulary', 10),
  ('00000000-0000-4000-a000-000032844795', 'der der Kollege (die Kollegen)', 'colleague — الزميل', 'noun', 'vocabulary', 11),
  ('00000000-0000-4000-a000-000032844795', 'das das Büro (die Büros)', 'office — المكتب', 'noun', 'vocabulary', 12),
  ('00000000-0000-4000-a000-000032844795', 'die die Besprechung (die Besprechungen)', 'meeting — الاجتماع', 'noun', 'vocabulary', 13),
  ('00000000-0000-4000-a000-000032844795', 'der der Chef (die Chefs)', 'boss — المدير', 'noun', 'vocabulary', 14),
  ('00000000-0000-4000-a000-000032844795', 'das das Gehalt (die Gehälter)', 'salary — الراتب', 'noun', 'vocabulary', 15),
  ('00000000-0000-4000-a000-000032844795', 'Der große Hund gehört der alten Frau.', 'The big dog belongs to the old woman.', 'Adjektivdeklination (Adjective Declension)', 'grammar', 16),
  ('00000000-0000-4000-a000-000032844795', 'Ein interessantes Buch liegt auf dem Tisch.', 'An interesting book is on the table.', 'Adjektivdeklination (Adjective Declension)', 'grammar', 17);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, french_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-000032844795', 'Reiseplanung und Buchung — Leseübung', 'Nächste Woche mache ich eine Reise nach München. Ich fahre mit dem Zug. Ich kaufe ein Ticket am Bahnhof. Der Zug fährt um 8 Uhr ab. Die Fahrt dauert 4 Stunden. In München besuche ich meine Tante. Sie wohnt in der Nähe des Hauptbahnhofs. Wir gehen zusammen in ein Restaurant. Dann besuchen wir das Deutsche Museum. Die Reise wird schön.', 'Next week I am taking a trip to Munich. I am going by train. I buy a ticket at the train station. The train departs at 8 o''clock. The journey takes 4 hours. In Munich I visit my aunt. She lives near the main train station. We go to a restaurant together. Then we visit the German Museum. The trip will be nice.', 'الأسبوع القادم سأسافر إلى ميونخ. سأذهب بالقطار. أشتري تذكرة من محطة القطار. القطار يغادر في الساعة 8. الرحلة تستغرق 4 ساعات. في ميونخ أزور عمتي. تسكن بالقرب من المحطة الرئيسية. نذهب معاً إلى مطعم. ثم نزور المتحف الألماني. الرحلة ستكون جميلة.', NULL, 60, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, french_translation, duration_seconds, speaker_count, scenario) values
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

[Mitarbeiter]: إذاً التكلفة 73.50 يورو. القطار يغادر في الساعة 10.', '[Kunde]: 

[Mitarbeiter]: 

[Kunde]: 

[Mitarbeiter]: 

[Kunde]: 

[Mitarbeiter]: ', 72, 2, 'Reisen, Kultur und interkulturelle Kompetenz');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-000032844795', '🔊 Sprechen: Reiseplanung und Buchung', 'Discussion: You attend a German Stammtisch (weekly meetup). Discuss Travel Planning with the group. Express your opinion, agree/disagree, ask follow-up questions. Try to keep the conversation flowing for 2 minutes.', 'Travel Planning', ARRAY['Use discourse markers (also, jedoch, außerdem)','React naturally: "Ach so!", "Echt?", "Das stimmt!"','Paraphrase when you don''t know a word']::text[], ARRAY['die Reise','der Zug','das Ticket','der Bahnhof','der Flughafen','das Hotel','der Pass','der Koffer']::text[], 60, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-000032844795', '✏️ Schreiben: Reiseplanung und Buchung', 'Write a formal letter (200-250 words) to your German teacher explaining what you learned about "Travel Planning". Include: what surprised you, what was similar/different to your culture, and what you want to learn next. Use present_tense correctly.', ARRAY['Use paragraph breaks for structure','Connect ideas with "außerdem", "deshalb", "jedoch"','Check your verb position in Nebensätze']::text[], ARRAY['die Reise','der Zug','das Ticket','der Bahnhof','der Flughafen','das Hotel','der Pass','der Koffer']::text[], ARRAY['Sentence structure','Vocabulary usage']::text[], 150, 250, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000032844795', 'Reiseplanung und Buchung — Roleplay', 'Travel Planning', 'Student', 'Teacher', 'Practice conversation about Travel Planning', 'Hallo! Lass uns über dieses Thema sprechen.', 'intermediate', 1, ARRAY['die Reise','der Zug','das Ticket','der Bahnhof','der Flughafen','das Hotel','der Pass','der Koffer']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000032844795', 'Reiseplanung und Buchung — Advanced Roleplay', 'Travel Planning', 'Customer', 'Assistant', 'Extended conversation about Travel Planning', 'Guten Tag! Wie kann ich Ihnen helfen?', 'intermediate', 2, ARRAY['die Reise','der Zug','das Ticket','der Bahnhof','der Flughafen','das Hotel','der Pass','der Koffer']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-000032844795', 'Reiseplanung und Buchung — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Reiseplanung und Buchung".', 'Creative practice for Travel Planning', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-000032844795', '📚 Hausaufgabe: Reiseplanung und Buchung', 'Complete these tasks to reinforce "Reiseplanung und Buchung".', 'mixed', '[{"description":"Create 10 flashcards from this lesson''s vocabulary — write German on one side, Arabic on the other. Test yourself 3 times."},{"description":"Write 6 sentences about Travel Planning: 2 statements, 2 questions, 2 negations — all using present_tense."},{"description":"Record yourself reading the dialogue aloud. Listen to the recording and note 3 things to improve."},{"description":"Find 3 real German websites, videos, or articles about Travel Planning. Note 5 new words you discovered."}]', 50, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-000032844795', '🎯 Excellent progress! This lesson covered Travel Planning (83 vocabulary items) and present_tense. You developed reading, listening, speaking, and writing skills in the context of travel. Focus on your common mistakes area for maximum improvement.', '["83 vocabulary items about Travel Planning","present_tense — grammar explanation and practice","Reading comprehension: text about Travel Planning","Listening comprehension: dialogue about Travel Planning","Speaking practice: roleplay/discussion about Travel Planning","Writing task: text about Travel Planning"]', '[{"title":"Reiseplanung und Buchung Review","summary":"present_tense — the main grammar focus. Focus on using this structure naturally in conversations and writing."}]', ARRAY['die Reise (trip)','der Zug (train)','das Ticket (ticket)','der Bahnhof (train station)','der Flughafen (airport)']::text[], ARRAY['Don''t translate from Arabic word-for-word — German has different sentence structure','Learn every noun with its article: NEVER learn "Tisch" alone, always "der Tisch"','Watch out for verb position in Nebensätze']::text[], ARRAY['Practice 15-20 minutes daily — consistency beats intensity','Speak out loud: German pronunciation needs muscle memory','Use the new vocabulary within 24 hours or you''ll forget it','Watch German YouTube videos about Travel Planning for authentic input']::text[]);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000032844795', 'Pronunciation: Intonation and sentence melody', 'German sentences have a falling intonation at the end of statements. Questions starting with a verb rise at the end. W-questions fall at the end. Emphasise the stressed syllable — German stresses the first syllable of the root.

Common mistake for Arabic speakers: Arabic speakers often put stress on the wrong syllable. Remember: German root stress is usually on the first syllable.', '[]', '[{"german":"warum","arabic":"","english":"","phonetic":"/vaˈrʊm/"},{"german":"deshalb","arabic":"","english":"","phonetic":"/dɛsˈhalp/"}]', '[]', 10);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000032844795', 'translation', 'Translate to German: "I use the word "trip" in a sentence about Travel Planning."', '[]', 'Die Reise nach München war schön.', 'Use die  "die Reise" with the correct present_tense form.', 1, 40);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000032844795', 'translation', 'Translate to German: "I use the word "train" in a sentence about Travel Planning."', '[]', 'Der Zug kommt um 10 Uhr an.', 'Use der  "der Zug" with the correct present_tense form.', 1, 41);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000032844795', 'translation', 'Translate to German: "I use the word "ticket" in a sentence about Travel Planning."', '[]', 'Ein Ticket nach Berlin, bitte.', 'Use das  "das Ticket" with the correct present_tense form.', 1, 42);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000032844795', 'Culture: 🇩🇪 Deutsche Kultur: Travel Planning', 'Travel Planning in Germany has specific cultural nuances that differ from Arabic-speaking countries. Germans tend to separate their private and professional lives strictly. When dealing with Travel Planning in a professional context, use formal register and prepare factual arguments. Emotional appeals are less effective than logical reasoning.

لدى Travel Planning في ألمانيا فروق ثقافية دقيقة تختلف عن البلدان العربية. الألمان يفصلون بين حياتهم الخاصة والمهنية بشكل صارم.', '["Tip: Always use \"Sie\" (formal) with strangers and colleagues","Tip: Germans appreciate punctuality — arrive 5 minutes early","Tip: Direct feedback is a sign of respect, not criticism","Tip: Prepare factual arguments, not emotional appeals"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000032844795', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Using \"reisen\" instead of \"fahren\" for specific trips","correction":"reisen = general travel, fahren = specific journey by vehicle","explanation":"Arabic \"saafara\" covers both. German distinguishes between abstract and concrete travel."},{"mistake":"Putting the verb at the end in main clauses","correction":"Verb stays in position 2 in main clauses","explanation":"Subordinate clause word order interferes"}]', 30);

  -- Lesson 2: Präteritum der Modalverben (L-B1-06-02)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-000032844794', '00000000-0000-4000-a000-000039c2eae4', 'Präteritum der Modalverben', 'Learn simple past of modal verbs.', 'Modal Verbs Past', 'grammar', '["Understand and apply present_tense rules correctly","Use present_tense in real conversations","Avoid common mistakes Arabic speakers make with present_tense","Read and understand present_tense in context","Listen and identify present_tense in speech","Write sentences using present_tense correctly"]', 55, 2, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, french_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-000032844794', 'die Reise', 'الرحلة', 'trip', NULL, 'die', 'die Reisen', 'noun', 'Die Reise nach München war schön.', 'The trip to Munich was nice.', 'A1', 1),
  ('00000000-0000-4000-a000-000032844794', 'der Zug', 'القطار', 'train', NULL, 'der', 'die Züge', 'noun', 'Der Zug kommt um 10 Uhr an.', 'The train arrives at 10 o''clock.', 'A1', 2),
  ('00000000-0000-4000-a000-000032844794', 'das Ticket', 'التذكرة', 'ticket', NULL, 'das', 'die Tickets', 'noun', 'Ein Ticket nach Berlin, bitte.', 'A ticket to Berlin, please.', 'A1', 3),
  ('00000000-0000-4000-a000-000032844794', 'der Bahnhof', 'محطة القطار', 'train station', NULL, 'der', 'die Bahnhöfe', 'noun', 'Der Bahnhof ist groß.', 'The train station is big.', 'A1', 4),
  ('00000000-0000-4000-a000-000032844794', 'der Flughafen', 'المطار', 'airport', NULL, 'der', 'die Flughäfen', 'noun', 'Ich fahre zum Flughafen.', 'I drive to the airport.', 'A1', 5),
  ('00000000-0000-4000-a000-000032844794', 'das Hotel', 'الفندق', 'hotel', NULL, 'das', 'die Hotels', 'noun', 'Das Hotel ist günstig.', 'The hotel is affordable.', 'A1', 6),
  ('00000000-0000-4000-a000-000032844794', 'der Pass', 'جواز السفر', 'passport', NULL, 'der', 'die Pässe', 'noun', 'Ich brauche meinen Pass.', 'I need my passport.', 'A1', 7),
  ('00000000-0000-4000-a000-000032844794', 'der Koffer', 'الحقيبة', 'suitcase', NULL, 'der', 'die Koffer', 'noun', 'Mein Koffer ist schwer.', 'My suitcase is heavy.', 'A1', 8),
  ('00000000-0000-4000-a000-000032844794', 'der Beruf', 'المهنة', 'profession', NULL, 'der', 'die Berufe', 'noun', 'Was ist dein Beruf?', 'What is your profession?', 'A1', 9),
  ('00000000-0000-4000-a000-000032844794', 'die Firma', 'الشركة', 'company', NULL, 'die', 'die Firmen', 'noun', 'Die Firma ist in Berlin.', 'The company is in Berlin.', 'A1', 10),
  ('00000000-0000-4000-a000-000032844794', 'der Kollege', 'الزميل', 'colleague', NULL, 'der', 'die Kollegen', 'noun', 'Mein Kollege hilft mir.', 'My colleague helps me.', 'A1', 11),
  ('00000000-0000-4000-a000-000032844794', 'das Büro', 'المكتب', 'office', NULL, 'das', 'die Büros', 'noun', 'Das Büro ist im dritten Stock.', 'The office is on the third floor.', 'A1', 12),
  ('00000000-0000-4000-a000-000032844794', 'die Besprechung', 'الاجتماع', 'meeting', NULL, 'die', 'die Besprechungen', 'noun', 'Wir haben eine Besprechung.', 'We have a meeting.', 'B1', 13),
  ('00000000-0000-4000-a000-000032844794', 'der Chef', 'المدير', 'boss', NULL, 'der', 'die Chefs', 'noun', 'Mein Chef ist freundlich.', 'My boss is friendly.', 'A1', 14),
  ('00000000-0000-4000-a000-000032844794', 'das Gehalt', 'الراتب', 'salary', NULL, 'das', 'die Gehälter', 'noun', 'Das Gehalt ist gut.', 'The salary is good.', 'B1', 15),
  ('00000000-0000-4000-a000-000032844794', 'die Stelle', 'الوظيفة', 'position', NULL, 'die', 'die Stellen', 'noun', 'Ich suche eine neue Stelle.', 'I am looking for a new position.', 'B1', 16),
  ('00000000-0000-4000-a000-000032844794', 'die Schule', 'المدرسة', 'school', NULL, 'die', 'die Schulen', 'noun', 'Die Kinder gehen zur Schule.', 'The children go to school.', 'A1', 17),
  ('00000000-0000-4000-a000-000032844794', 'der Lehrer', 'المعلم', 'teacher', NULL, 'der', 'die Lehrer', 'noun', 'Der Lehrer erklärt die Grammatik.', 'The teacher explains the grammar.', 'A1', 18),
  ('00000000-0000-4000-a000-000032844794', 'der Student', 'الطالب', 'student', NULL, 'der', 'die Studenten', 'noun', 'Der Student lernt Deutsch.', 'The student learns German.', 'A1', 19),
  ('00000000-0000-4000-a000-000032844794', 'die Universität', 'الجامعة', 'university', NULL, 'die', 'die Universitäten', 'noun', 'Die Universität ist alt.', 'The university is old.', 'B1', 20),
  ('00000000-0000-4000-a000-000032844794', 'der Kurs', 'الدورة', 'course', NULL, 'der', 'die Kurse', 'noun', 'Der Kurs kostet 200 Euro.', 'The course costs 200 euros.', 'A2', 21),
  ('00000000-0000-4000-a000-000032844794', 'die Prüfung', 'الامتحان', 'exam', NULL, 'die', 'die Prüfungen', 'noun', 'Die Prüfung ist schwer.', 'The exam is difficult.', 'B1', 22),
  ('00000000-0000-4000-a000-000032844794', 'das Studium', 'الدراسة الجامعية', 'studies', NULL, 'das', NULL, 'noun', 'Mein Studium dauert vier Jahre.', 'My studies take four years.', 'B1', 23),
  ('00000000-0000-4000-a000-000032844794', 'lernen', 'يتعلم', 'to learn', NULL, NULL, NULL, 'verb', 'Ich lerne Deutsch.', 'I learn German.', 'A1', 24),
  ('00000000-0000-4000-a000-000032844794', 'die Zeitung', 'الجريدة', 'newspaper', NULL, 'die', 'die Zeitungen', 'noun', 'Ich lese die Zeitung.', 'I read the newspaper.', 'A2', 25),
  ('00000000-0000-4000-a000-000032844794', 'das Internet', 'الإنترنت', 'internet', NULL, 'das', NULL, 'noun', 'Das Internet ist schnell.', 'The internet is fast.', 'A2', 26),
  ('00000000-0000-4000-a000-000032844794', 'der Artikel', 'المقال', 'article', NULL, 'der', 'die Artikel', 'noun', 'Der Artikel ist interessant.', 'The article is interesting.', 'B1', 27),
  ('00000000-0000-4000-a000-000032844794', 'die Nachricht', 'الخبر', 'news', NULL, 'die', 'die Nachrichten', 'noun', 'Ich sehe die Nachrichten.', 'I watch the news.', 'A2', 28),
  ('00000000-0000-4000-a000-000032844794', 'das Radio', 'الراديو', 'radio', NULL, 'das', 'die Radios', 'noun', 'Ich höre Radio.', 'I listen to the radio.', 'A2', 29),
  ('00000000-0000-4000-a000-000032844794', 'das Fernsehen', 'التلفاز', 'television', NULL, 'das', NULL, 'noun', 'Das Fernsehen läuft.', 'The television is on.', 'A2', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000032844794', 'Konjunktiv II: Höfliche Bitten und irreale Sätze (Subjunctive for Politeness) / صيغة الشرط الثانية: الطلبات المهذبة والجمل غير الواقعية', 'Konjunktiv II is used for polite requests (Ich hätte gern...), unreal situations (Wenn ich Zeit hätte...), and wishes (Ich wünschte, ich wäre...). For most verbs, use "würde + infinitive". Only a few common verbs have their own subjunctive form: hätte (hätten), wäre (wären), könnte (könnten).', '[{"rule":"würde + Infinitiv (most verbs)","note":"Ich würde gern kommen. (I would like to come.)"},{"rule":"hätte (haben), wäre (sein), könnte (können)","note":"Ich hätte gern einen Kaffee. (I would like a coffee.)"},{"rule":"Wenn... dann... (if... then...)","note":"Wenn ich Zeit hätte, würde ich reisen. (If I had time, I would travel.)"}]', '[{"german":"Ich hätte gern einen Kaffee, bitte.","arabic":"أود فنجان قهوة من فضلك.","english":"I would like a coffee, please."},{"german":"Wenn ich mehr Zeit hätte, würde ich Deutsch lernen.","arabic":"لو كان لدي وقت أكثر، لتعلمت الألمانية.","english":"If I had more time, I would learn German."},{"german":"Könnten Sie mir bitte helfen?","arabic":"هل يمكنكم مساعدتي من فضلكم؟","english":"Could you please help me?"}]', '[{"mistake":"Ich will einen Kaffee (too direct in restaurant)","correction":"Ich hätte gern einen Kaffee.","explanation":"In German restaurants, use Konjunktiv II to be polite, not \"ich will\"."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000032844794', 'multiple_choice', 'Welches deutsche Wort bedeutet "trip"?', '["der Bahnhof","der Zug","die Reise","das Ticket"]', 'die Reise', '"trip" = "die Reise" in German. Article: die Plural: die Reisen', 1, 1),
  ('00000000-0000-4000-a000-000032844794', 'multiple_choice', 'Welches deutsche Wort bedeutet "train"?', '["der Bahnhof","das Ticket","der Flughafen","die Reise"]', 'der Zug', '"train" = "der Zug" in German. Article: der Plural: die Züge', 1, 2),
  ('00000000-0000-4000-a000-000032844794', 'multiple_choice', 'Welches deutsche Wort bedeutet "ticket"?', '["der Bahnhof","der Flughafen","das Ticket","die Reise"]', 'das Ticket', '"ticket" = "das Ticket" in German. Article: das Plural: die Tickets', 1, 3),
  ('00000000-0000-4000-a000-000032844794', 'multiple_choice', 'Welches deutsche Wort bedeutet "train station"?', '["das Ticket","der Flughafen","die Reise","der Zug"]', 'der Bahnhof', '"train station" = "der Bahnhof" in German. Article: der Plural: die Bahnhöfe', 1, 4),
  ('00000000-0000-4000-a000-000032844794', 'multiple_choice', 'Welches deutsche Wort bedeutet "airport"?', '["der Flughafen","das Ticket","die Reise","der Zug"]', 'der Flughafen', '"airport" = "der Flughafen" in German. Article: der Plural: die Flughäfen', 1, 5),
  ('00000000-0000-4000-a000-000032844794', 'fill_gap', 'Ergänze den Satz: Ich ___ gern über Modal Verbs Past. (sprechen)', '["spreche","sprichst","spricht","sprechen"]', 'spreche', 'ich spreche gern = I like to speak. Stem: sprech- + e.', 2, 6),
  ('00000000-0000-4000-a000-000032844794', 'translation', 'Übersetze ins Deutsche: "I am learning about Modal Verbs Past."', '["Ich lerne über Modal Verbs Past.","Ich lerne Modal Verbs Past.","Lerne ich Modal Verbs Past."]', 'Ich lerne über Modal Verbs Past.', '"Ich lerne über..." = "I am learning about..."', 2, 7),
  ('00000000-0000-4000-a000-000032844794', 'matching', 'Match: Which word pairs are correct?', '["die Reise - trip, der Zug - train"]', 'Matched correctly', 'Each German word has a unique English equivalent.', 2, 8);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-000032844794', 'multiple_choice', 'Was bedeutet "die Reise" auf Deutsch?', '["trip","to run","beautiful","yesterday"]', 'trip', 1, 1),
  ('00000000-0000-4000-a000-000032844794', 'multiple_choice', 'Welcher Artikel gehört zu "der Zug"?', '["der","die","das","den"]', 'der', 1, 2),
  ('00000000-0000-4000-a000-000032844794', 'true_false', 'Das Wort "das Ticket" gehört zum Thema Modal Verbs Past.', '["True","False"]', 'True', 1, 3),
  ('00000000-0000-4000-a000-000032844794', 'multiple_choice', 'Welcher Satz verwendet present_tense?', '["Ich hätte gern einen Kaffee, bitte.","Wenn ich mehr Zeit hätte, würde ich Deutsch lernen.","Könnten Sie mir bitte helfen?"]', 'Ich hätte gern einen Kaffee, bitte.', 2, 4),
  ('00000000-0000-4000-a000-000032844794', 'true_false', ''Im Deutschen steht das Verb an zweiter Position im Hauptsatz.', '["True","False"]', 'True', 1, 5),
  ('00000000-0000-4000-a000-000032844794', 'fill_blank', 'Complete: Ich ___ (train station) Deutsch.', '["der Bahnhof","lernt","lernst","lernen"]', 'lerne', 2, 6),
  ('00000000-0000-4000-a000-000032844794', 'multiple_choice', 'Wie lautet das deutsche Wort für "airport"?', '["der Flughafen","das Hotel","der Pass","der Koffer"]', 'der Flughafen', 1, 7),
  ('00000000-0000-4000-a000-000032844794', 'true_false', 'Im Deutschen werden alle Nomen großgeschrieben.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-000032844794', 'multiple_choice', 'How do you say "please" in a restaurant in Germany?', '["Bitte","Danke","Tschüss","Hallo"]', 'Bitte', 1, 9),
  ('00000000-0000-4000-a000-000032844794', 'fill_blank', 'Wo ___ (to live) du?', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 2, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, french_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-000032844794', 'Ich möchte ein Ticket nach Berlin.', 'I''d like a ticket to Berlin.', 'أريد تذكرة إلى برلين.', NULL, 'Used in Reisen, Kultur und interkulturelle Kompetenz', 'formal', false, 1),
  ('00000000-0000-4000-a000-000032844794', 'Wann fährt der Zug ab?', 'When does the train depart?', 'متى يغادر القطار؟', NULL, 'Used in Reisen, Kultur und interkulturelle Kompetenz', 'formal', false, 2),
  ('00000000-0000-4000-a000-000032844794', 'Wo ist der Bahnsteig?', 'Where is the platform?', 'أين الرصيف؟', NULL, 'Used in Reisen, Kultur und interkulturelle Kompetenz', 'formal', false, 3),
  ('00000000-0000-4000-a000-000032844794', 'Ist dieser Platz frei?', 'Is this seat free?', 'هل هذا المقعد شاغر؟', NULL, 'Used in Reisen, Kultur und interkulturelle Kompetenz', 'neutral', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-000032844794', 'die die Reise (die Reisen)', 'trip — الرحلة', 'noun', 'vocabulary', 1),
  ('00000000-0000-4000-a000-000032844794', 'der der Zug (die Züge)', 'train — القطار', 'noun', 'vocabulary', 2),
  ('00000000-0000-4000-a000-000032844794', 'das das Ticket (die Tickets)', 'ticket — التذكرة', 'noun', 'vocabulary', 3),
  ('00000000-0000-4000-a000-000032844794', 'der der Bahnhof (die Bahnhöfe)', 'train station — محطة القطار', 'noun', 'vocabulary', 4),
  ('00000000-0000-4000-a000-000032844794', 'der der Flughafen (die Flughäfen)', 'airport — المطار', 'noun', 'vocabulary', 5),
  ('00000000-0000-4000-a000-000032844794', 'das das Hotel (die Hotels)', 'hotel — الفندق', 'noun', 'vocabulary', 6),
  ('00000000-0000-4000-a000-000032844794', 'der der Pass (die Pässe)', 'passport — جواز السفر', 'noun', 'vocabulary', 7),
  ('00000000-0000-4000-a000-000032844794', 'der der Koffer (die Koffer)', 'suitcase — الحقيبة', 'noun', 'vocabulary', 8),
  ('00000000-0000-4000-a000-000032844794', 'der der Beruf (die Berufe)', 'profession — المهنة', 'noun', 'vocabulary', 9),
  ('00000000-0000-4000-a000-000032844794', 'die die Firma (die Firmen)', 'company — الشركة', 'noun', 'vocabulary', 10),
  ('00000000-0000-4000-a000-000032844794', 'der der Kollege (die Kollegen)', 'colleague — الزميل', 'noun', 'vocabulary', 11),
  ('00000000-0000-4000-a000-000032844794', 'das das Büro (die Büros)', 'office — المكتب', 'noun', 'vocabulary', 12),
  ('00000000-0000-4000-a000-000032844794', 'die die Besprechung (die Besprechungen)', 'meeting — الاجتماع', 'noun', 'vocabulary', 13),
  ('00000000-0000-4000-a000-000032844794', 'der der Chef (die Chefs)', 'boss — المدير', 'noun', 'vocabulary', 14),
  ('00000000-0000-4000-a000-000032844794', 'das das Gehalt (die Gehälter)', 'salary — الراتب', 'noun', 'vocabulary', 15),
  ('00000000-0000-4000-a000-000032844794', 'Ich hätte gern einen Kaffee, bitte.', 'I would like a coffee, please.', 'Konjunktiv II: Höfliche Bitten und irreale Sätze (Subjunctive for Politeness)', 'grammar', 16),
  ('00000000-0000-4000-a000-000032844794', 'Wenn ich mehr Zeit hätte, würde ich Deutsch lernen.', 'If I had more time, I would learn German.', 'Konjunktiv II: Höfliche Bitten und irreale Sätze (Subjunctive for Politeness)', 'grammar', 17),
  ('00000000-0000-4000-a000-000032844794', 'Könnten Sie mir bitte helfen?', 'Could you please help me?', 'Konjunktiv II: Höfliche Bitten und irreale Sätze (Subjunctive for Politeness)', 'grammar', 18);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, french_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-000032844794', 'Präteritum der Modalverben — Leseübung', 'Nächste Woche mache ich eine Reise nach München. Ich fahre mit dem Zug. Ich kaufe ein Ticket am Bahnhof. Der Zug fährt um 8 Uhr ab. Die Fahrt dauert 4 Stunden. In München besuche ich meine Tante. Sie wohnt in der Nähe des Hauptbahnhofs. Wir gehen zusammen in ein Restaurant. Dann besuchen wir das Deutsche Museum. Die Reise wird schön.', 'Next week I am taking a trip to Munich. I am going by train. I buy a ticket at the train station. The train departs at 8 o''clock. The journey takes 4 hours. In Munich I visit my aunt. She lives near the main train station. We go to a restaurant together. Then we visit the German Museum. The trip will be nice.', 'الأسبوع القادم سأسافر إلى ميونخ. سأذهب بالقطار. أشتري تذكرة من محطة القطار. القطار يغادر في الساعة 8. الرحلة تستغرق 4 ساعات. في ميونخ أزور عمتي. تسكن بالقرب من المحطة الرئيسية. نذهب معاً إلى مطعم. ثم نزور المتحف الألماني. الرحلة ستكون جميلة.', NULL, 60, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, french_translation, duration_seconds, speaker_count, scenario) values
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

[Mitarbeiter]: إذاً التكلفة 73.50 يورو. القطار يغادر في الساعة 10.', '[Kunde]: 

[Mitarbeiter]: 

[Kunde]: 

[Mitarbeiter]: 

[Kunde]: 

[Mitarbeiter]: ', 72, 2, 'Reisen, Kultur und interkulturelle Kompetenz');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-000032844794', '🔊 Sprechen: Präteritum der Modalverben', 'Discussion: You attend a German Stammtisch (weekly meetup). Discuss Modal Verbs Past with the group. Express your opinion, agree/disagree, ask follow-up questions. Try to keep the conversation flowing for 2 minutes.', 'Modal Verbs Past', ARRAY['Use discourse markers (also, jedoch, außerdem)','React naturally: "Ach so!", "Echt?", "Das stimmt!"','Paraphrase when you don''t know a word']::text[], ARRAY['die Reise','der Zug','das Ticket','der Bahnhof','der Flughafen','das Hotel','der Pass','der Koffer']::text[], 60, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-000032844794', '✏️ Schreiben: Präteritum der Modalverben', 'Write a formal letter (200-250 words) to your German teacher explaining what you learned about "Modal Verbs Past". Include: what surprised you, what was similar/different to your culture, and what you want to learn next. Use present_tense correctly.', ARRAY['Use paragraph breaks for structure','Connect ideas with "außerdem", "deshalb", "jedoch"','Check your verb position in Nebensätze']::text[], ARRAY['die Reise','der Zug','das Ticket','der Bahnhof','der Flughafen','das Hotel','der Pass','der Koffer']::text[], ARRAY['Sentence structure','Vocabulary usage']::text[], 150, 250, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000032844794', 'Präteritum der Modalverben — Roleplay', 'Modal Verbs Past', 'Student', 'Teacher', 'Practice conversation about Modal Verbs Past', 'Hallo! Lass uns über dieses Thema sprechen.', 'intermediate', 1, ARRAY['die Reise','der Zug','das Ticket','der Bahnhof','der Flughafen','das Hotel','der Pass','der Koffer']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000032844794', 'Präteritum der Modalverben — Advanced Roleplay', 'Modal Verbs Past', 'Customer', 'Assistant', 'Extended conversation about Modal Verbs Past', 'Guten Tag! Wie kann ich Ihnen helfen?', 'intermediate', 2, ARRAY['die Reise','der Zug','das Ticket','der Bahnhof','der Flughafen','das Hotel','der Pass','der Koffer']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-000032844794', 'Präteritum der Modalverben — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Präteritum der Modalverben".', 'Creative practice for Modal Verbs Past', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-000032844794', '📚 Hausaufgabe: Präteritum der Modalverben', 'Complete these tasks to reinforce "Präteritum der Modalverben".', 'mixed', '[{"description":"Create 10 flashcards from this lesson''s vocabulary — write German on one side, Arabic on the other. Test yourself 3 times."},{"description":"Write 6 sentences about Modal Verbs Past: 2 statements, 2 questions, 2 negations — all using present_tense."},{"description":"Record yourself reading the dialogue aloud. Listen to the recording and note 3 things to improve."},{"description":"Find 3 real German websites, videos, or articles about Modal Verbs Past. Note 5 new words you discovered."}]', 50, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-000032844794', '🎯 Excellent progress! This lesson covered Modal Verbs Past (83 vocabulary items) and present_tense. You developed reading, listening, speaking, and writing skills in the context of travel. Focus on your common mistakes area for maximum improvement.', '["83 vocabulary items about Modal Verbs Past","present_tense — grammar explanation and practice","Reading comprehension: text about Modal Verbs Past","Listening comprehension: dialogue about Modal Verbs Past","Speaking practice: roleplay/discussion about Modal Verbs Past","Writing task: text about Modal Verbs Past"]', '[{"title":"Präteritum der Modalverben Review","summary":"present_tense — the main grammar focus. Focus on using this structure naturally in conversations and writing."}]', ARRAY['die Reise (trip)','der Zug (train)','das Ticket (ticket)','der Bahnhof (train station)','der Flughafen (airport)']::text[], ARRAY['Don''t translate from Arabic word-for-word — German has different sentence structure','Learn every noun with its article: NEVER learn "Tisch" alone, always "der Tisch"','Watch out for verb position in Nebensätze']::text[], ARRAY['Practice 15-20 minutes daily — consistency beats intensity','Speak out loud: German pronunciation needs muscle memory','Use the new vocabulary within 24 hours or you''ll forget it','Watch German YouTube videos about Modal Verbs Past for authentic input']::text[]);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000032844794', 'Pronunciation: Intonation and sentence melody', 'German sentences have a falling intonation at the end of statements. Questions starting with a verb rise at the end. W-questions fall at the end. Emphasise the stressed syllable — German stresses the first syllable of the root.

Common mistake for Arabic speakers: Arabic speakers often put stress on the wrong syllable. Remember: German root stress is usually on the first syllable.', '[]', '[{"german":"warum","arabic":"","english":"","phonetic":"/vaˈrʊm/"},{"german":"deshalb","arabic":"","english":"","phonetic":"/dɛsˈhalp/"}]', '[]', 10);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000032844794', 'translation', 'Translate to German: "I use the word "trip" in a sentence about Modal Verbs Past."', '[]', 'Die Reise nach München war schön.', 'Use die  "die Reise" with the correct present_tense form.', 1, 40);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000032844794', 'translation', 'Translate to German: "I use the word "train" in a sentence about Modal Verbs Past."', '[]', 'Der Zug kommt um 10 Uhr an.', 'Use der  "der Zug" with the correct present_tense form.', 1, 41);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000032844794', 'translation', 'Translate to German: "I use the word "ticket" in a sentence about Modal Verbs Past."', '[]', 'Ein Ticket nach Berlin, bitte.', 'Use das  "das Ticket" with the correct present_tense form.', 1, 42);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000032844794', 'Culture: 🇩🇪 Deutsche Kultur: Modal Verbs Past', 'Modal Verbs Past in Germany has specific cultural nuances that differ from Arabic-speaking countries. Germans tend to separate their private and professional lives strictly. When dealing with Modal Verbs Past in a professional context, use formal register and prepare factual arguments. Emotional appeals are less effective than logical reasoning.

لدى Modal Verbs Past في ألمانيا فروق ثقافية دقيقة تختلف عن البلدان العربية. الألمان يفصلون بين حياتهم الخاصة والمهنية بشكل صارم.', '["Tip: Always use \"Sie\" (formal) with strangers and colleagues","Tip: Germans appreciate punctuality — arrive 5 minutes early","Tip: Direct feedback is a sign of respect, not criticism","Tip: Prepare factual arguments, not emotional appeals"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000032844794', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Using \"reisen\" instead of \"fahren\" for specific trips","correction":"reisen = general travel, fahren = specific journey by vehicle","explanation":"Arabic \"saafara\" covers both. German distinguishes between abstract and concrete travel."},{"mistake":"Putting the verb at the end in main clauses","correction":"Verb stays in position 2 in main clauses","explanation":"Subordinate clause word order interferes"}]', 30);

  -- Lesson 3: Sehenswürdigkeiten in DACH (L-B1-06-03)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-000032844793', '00000000-0000-4000-a000-000039c2eae4', 'Sehenswürdigkeiten in DACH', 'Explore landmarks in Germany, Austria, Switzerland.', 'DACH Landmarks', 'reading', '["Understand and apply present_tense rules correctly","Use present_tense in real conversations","Avoid common mistakes Arabic speakers make with present_tense","Read and understand present_tense in context","Listen and identify present_tense in speech","Write sentences using present_tense correctly"]', 50, 3, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, french_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-000032844793', 'die Reise', 'الرحلة', 'trip', NULL, 'die', 'die Reisen', 'noun', 'Die Reise nach München war schön.', 'The trip to Munich was nice.', 'A1', 1),
  ('00000000-0000-4000-a000-000032844793', 'der Zug', 'القطار', 'train', NULL, 'der', 'die Züge', 'noun', 'Der Zug kommt um 10 Uhr an.', 'The train arrives at 10 o''clock.', 'A1', 2),
  ('00000000-0000-4000-a000-000032844793', 'das Ticket', 'التذكرة', 'ticket', NULL, 'das', 'die Tickets', 'noun', 'Ein Ticket nach Berlin, bitte.', 'A ticket to Berlin, please.', 'A1', 3),
  ('00000000-0000-4000-a000-000032844793', 'der Bahnhof', 'محطة القطار', 'train station', NULL, 'der', 'die Bahnhöfe', 'noun', 'Der Bahnhof ist groß.', 'The train station is big.', 'A1', 4),
  ('00000000-0000-4000-a000-000032844793', 'der Flughafen', 'المطار', 'airport', NULL, 'der', 'die Flughäfen', 'noun', 'Ich fahre zum Flughafen.', 'I drive to the airport.', 'A1', 5),
  ('00000000-0000-4000-a000-000032844793', 'das Hotel', 'الفندق', 'hotel', NULL, 'das', 'die Hotels', 'noun', 'Das Hotel ist günstig.', 'The hotel is affordable.', 'A1', 6),
  ('00000000-0000-4000-a000-000032844793', 'der Pass', 'جواز السفر', 'passport', NULL, 'der', 'die Pässe', 'noun', 'Ich brauche meinen Pass.', 'I need my passport.', 'A1', 7),
  ('00000000-0000-4000-a000-000032844793', 'der Koffer', 'الحقيبة', 'suitcase', NULL, 'der', 'die Koffer', 'noun', 'Mein Koffer ist schwer.', 'My suitcase is heavy.', 'A1', 8),
  ('00000000-0000-4000-a000-000032844793', 'der Beruf', 'المهنة', 'profession', NULL, 'der', 'die Berufe', 'noun', 'Was ist dein Beruf?', 'What is your profession?', 'A1', 9),
  ('00000000-0000-4000-a000-000032844793', 'die Firma', 'الشركة', 'company', NULL, 'die', 'die Firmen', 'noun', 'Die Firma ist in Berlin.', 'The company is in Berlin.', 'A1', 10),
  ('00000000-0000-4000-a000-000032844793', 'der Kollege', 'الزميل', 'colleague', NULL, 'der', 'die Kollegen', 'noun', 'Mein Kollege hilft mir.', 'My colleague helps me.', 'A1', 11),
  ('00000000-0000-4000-a000-000032844793', 'das Büro', 'المكتب', 'office', NULL, 'das', 'die Büros', 'noun', 'Das Büro ist im dritten Stock.', 'The office is on the third floor.', 'A1', 12),
  ('00000000-0000-4000-a000-000032844793', 'die Besprechung', 'الاجتماع', 'meeting', NULL, 'die', 'die Besprechungen', 'noun', 'Wir haben eine Besprechung.', 'We have a meeting.', 'B1', 13),
  ('00000000-0000-4000-a000-000032844793', 'der Chef', 'المدير', 'boss', NULL, 'der', 'die Chefs', 'noun', 'Mein Chef ist freundlich.', 'My boss is friendly.', 'A1', 14),
  ('00000000-0000-4000-a000-000032844793', 'das Gehalt', 'الراتب', 'salary', NULL, 'das', 'die Gehälter', 'noun', 'Das Gehalt ist gut.', 'The salary is good.', 'B1', 15),
  ('00000000-0000-4000-a000-000032844793', 'die Stelle', 'الوظيفة', 'position', NULL, 'die', 'die Stellen', 'noun', 'Ich suche eine neue Stelle.', 'I am looking for a new position.', 'B1', 16),
  ('00000000-0000-4000-a000-000032844793', 'die Schule', 'المدرسة', 'school', NULL, 'die', 'die Schulen', 'noun', 'Die Kinder gehen zur Schule.', 'The children go to school.', 'A1', 17),
  ('00000000-0000-4000-a000-000032844793', 'der Lehrer', 'المعلم', 'teacher', NULL, 'der', 'die Lehrer', 'noun', 'Der Lehrer erklärt die Grammatik.', 'The teacher explains the grammar.', 'A1', 18),
  ('00000000-0000-4000-a000-000032844793', 'der Student', 'الطالب', 'student', NULL, 'der', 'die Studenten', 'noun', 'Der Student lernt Deutsch.', 'The student learns German.', 'A1', 19),
  ('00000000-0000-4000-a000-000032844793', 'die Universität', 'الجامعة', 'university', NULL, 'die', 'die Universitäten', 'noun', 'Die Universität ist alt.', 'The university is old.', 'B1', 20),
  ('00000000-0000-4000-a000-000032844793', 'der Kurs', 'الدورة', 'course', NULL, 'der', 'die Kurse', 'noun', 'Der Kurs kostet 200 Euro.', 'The course costs 200 euros.', 'A2', 21),
  ('00000000-0000-4000-a000-000032844793', 'die Prüfung', 'الامتحان', 'exam', NULL, 'die', 'die Prüfungen', 'noun', 'Die Prüfung ist schwer.', 'The exam is difficult.', 'B1', 22),
  ('00000000-0000-4000-a000-000032844793', 'das Studium', 'الدراسة الجامعية', 'studies', NULL, 'das', NULL, 'noun', 'Mein Studium dauert vier Jahre.', 'My studies take four years.', 'B1', 23),
  ('00000000-0000-4000-a000-000032844793', 'lernen', 'يتعلم', 'to learn', NULL, NULL, NULL, 'verb', 'Ich lerne Deutsch.', 'I learn German.', 'A1', 24),
  ('00000000-0000-4000-a000-000032844793', 'die Zeitung', 'الجريدة', 'newspaper', NULL, 'die', 'die Zeitungen', 'noun', 'Ich lese die Zeitung.', 'I read the newspaper.', 'A2', 25),
  ('00000000-0000-4000-a000-000032844793', 'das Internet', 'الإنترنت', 'internet', NULL, 'das', NULL, 'noun', 'Das Internet ist schnell.', 'The internet is fast.', 'A2', 26),
  ('00000000-0000-4000-a000-000032844793', 'der Artikel', 'المقال', 'article', NULL, 'der', 'die Artikel', 'noun', 'Der Artikel ist interessant.', 'The article is interesting.', 'B1', 27),
  ('00000000-0000-4000-a000-000032844793', 'die Nachricht', 'الخبر', 'news', NULL, 'die', 'die Nachrichten', 'noun', 'Ich sehe die Nachrichten.', 'I watch the news.', 'A2', 28),
  ('00000000-0000-4000-a000-000032844793', 'das Radio', 'الراديو', 'radio', NULL, 'das', 'die Radios', 'noun', 'Ich höre Radio.', 'I listen to the radio.', 'A2', 29),
  ('00000000-0000-4000-a000-000032844793', 'das Fernsehen', 'التلفاز', 'television', NULL, 'das', NULL, 'noun', 'Das Fernsehen läuft.', 'The television is on.', 'A2', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000032844793', 'Nebensätze mit "dass", "weil", "obwohl" (Subordinate Clauses) / الجمل الثانوية مع dass, weil, obwohl', 'Subordinate clauses push the conjugated verb to the END of the clause. The conjunction initiates the subordinate clause. Common conjunctions: dass (that), weil (because), obwohl (although), wenn (if/when), während (while). The subordinate clause can come before or after the main clause.', '[{"rule":"Verb goes to END in subordinate clause","note":"Ich weiß, dass er morgen kommt. (NOT: ...dass er kommt morgen)"},{"rule":"Wenn clause first → verb starts main clause","note":"Wenn ich Zeit habe, gehe ich ins Kino."},{"rule":"Weil answers \"why\" questions","note":"Ich lerne Deutsch, weil ich in Berlin studieren will."}]', '[{"german":"Ich denke, dass er recht hat.","arabic":"أعتقد أنه على حق.","english":"I think that he is right."},{"german":"Er lernt Deutsch, weil er in Berlin studiert.","arabic":"هو يتعلم الألمانية لأنه يدرس في برلين.","english":"He learns German because he studies in Berlin."},{"german":"Obwohl es regnet, gehe ich spazieren.","arabic":"على الرغم من المطر، أذهب للتنزه.","english":"Although it is raining, I go for a walk."}]', '[{"mistake":"Ich weiß, dass er kommt morgen (verb stays in position 2)","correction":"Ich weiß, dass er morgen kommt.","explanation":"In \"dass\" clauses, the verb ALWAYS goes to the end."},{"mistake":"Weil ich bin müde (verb stays after \"weil\")","correction":"Weil ich müde bin.","explanation":"Weil + subject + ... + verb (at the end)."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000032844793', 'multiple_choice', 'Welches deutsche Wort bedeutet "trip"?', '["der Bahnhof","der Zug","der Flughafen","die Reise"]', 'die Reise', '"trip" = "die Reise" in German. Article: die Plural: die Reisen', 1, 1),
  ('00000000-0000-4000-a000-000032844793', 'multiple_choice', 'Welches deutsche Wort bedeutet "train"?', '["der Zug","der Bahnhof","die Reise","der Flughafen"]', 'der Zug', '"train" = "der Zug" in German. Article: der Plural: die Züge', 1, 2),
  ('00000000-0000-4000-a000-000032844793', 'multiple_choice', 'Welches deutsche Wort bedeutet "ticket"?', '["das Ticket","die Reise","der Flughafen","der Zug"]', 'das Ticket', '"ticket" = "das Ticket" in German. Article: das Plural: die Tickets', 1, 3),
  ('00000000-0000-4000-a000-000032844793', 'multiple_choice', 'Welches deutsche Wort bedeutet "train station"?', '["der Zug","die Reise","der Bahnhof","der Flughafen"]', 'der Bahnhof', '"train station" = "der Bahnhof" in German. Article: der Plural: die Bahnhöfe', 1, 4),
  ('00000000-0000-4000-a000-000032844793', 'multiple_choice', 'Welches deutsche Wort bedeutet "airport"?', '["das Ticket","die Reise","der Zug","der Flughafen"]', 'der Flughafen', '"airport" = "der Flughafen" in German. Article: der Plural: die Flughäfen', 1, 5),
  ('00000000-0000-4000-a000-000032844793', 'fill_gap', 'Ergänze den Satz: Ich ___ gern über DACH Landmarks. (sprechen)', '["spreche","sprichst","spricht","sprechen"]', 'spreche', 'ich spreche gern = I like to speak. Stem: sprech- + e.', 2, 6),
  ('00000000-0000-4000-a000-000032844793', 'translation', 'Übersetze ins Deutsche: "I am learning about DACH Landmarks."', '["Ich lerne über DACH Landmarks.","Ich lerne DACH Landmarks.","Lerne ich DACH Landmarks."]', 'Ich lerne über DACH Landmarks.', '"Ich lerne über..." = "I am learning about..."', 2, 7),
  ('00000000-0000-4000-a000-000032844793', 'matching', 'Match: Which word pairs are correct?', '["die Reise - trip, der Zug - train"]', 'Matched correctly', 'Each German word has a unique English equivalent.', 2, 8);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-000032844793', 'multiple_choice', 'Was bedeutet "die Reise" auf Deutsch?', '["trip","to run","beautiful","yesterday"]', 'trip', 1, 1),
  ('00000000-0000-4000-a000-000032844793', 'multiple_choice', 'Welcher Artikel gehört zu "der Zug"?', '["der","die","das","den"]', 'der', 1, 2),
  ('00000000-0000-4000-a000-000032844793', 'true_false', 'Das Wort "das Ticket" gehört zum Thema DACH Landmarks.', '["True","False"]', 'True', 1, 3),
  ('00000000-0000-4000-a000-000032844793', 'multiple_choice', 'Welcher Satz verwendet present_tense?', '["Ich denke, dass er recht hat.","Er lernt Deutsch, weil er in Berlin studiert.","Obwohl es regnet, gehe ich spazieren."]', 'Ich denke, dass er recht hat.', 2, 4),
  ('00000000-0000-4000-a000-000032844793', 'true_false', ''Im Deutschen steht das Verb an zweiter Position im Hauptsatz.', '["True","False"]', 'True', 1, 5),
  ('00000000-0000-4000-a000-000032844793', 'fill_blank', 'Complete: Ich ___ (train station) Deutsch.', '["der Bahnhof","lernt","lernst","lernen"]', 'lerne', 2, 6),
  ('00000000-0000-4000-a000-000032844793', 'multiple_choice', 'Wie lautet das deutsche Wort für "airport"?', '["der Flughafen","das Hotel","der Pass","der Koffer"]', 'der Flughafen', 1, 7),
  ('00000000-0000-4000-a000-000032844793', 'true_false', 'Im Deutschen werden alle Nomen großgeschrieben.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-000032844793', 'multiple_choice', 'How do you say "please" in a restaurant in Germany?', '["Bitte","Danke","Tschüss","Hallo"]', 'Bitte', 1, 9),
  ('00000000-0000-4000-a000-000032844793', 'fill_blank', 'Wo ___ (to live) du?', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 2, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, french_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-000032844793', 'Ich möchte ein Ticket nach Berlin.', 'I''d like a ticket to Berlin.', 'أريد تذكرة إلى برلين.', NULL, 'Used in Reisen, Kultur und interkulturelle Kompetenz', 'formal', false, 1),
  ('00000000-0000-4000-a000-000032844793', 'Wann fährt der Zug ab?', 'When does the train depart?', 'متى يغادر القطار؟', NULL, 'Used in Reisen, Kultur und interkulturelle Kompetenz', 'formal', false, 2),
  ('00000000-0000-4000-a000-000032844793', 'Wo ist der Bahnsteig?', 'Where is the platform?', 'أين الرصيف؟', NULL, 'Used in Reisen, Kultur und interkulturelle Kompetenz', 'formal', false, 3),
  ('00000000-0000-4000-a000-000032844793', 'Ist dieser Platz frei?', 'Is this seat free?', 'هل هذا المقعد شاغر؟', NULL, 'Used in Reisen, Kultur und interkulturelle Kompetenz', 'neutral', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-000032844793', 'die die Reise (die Reisen)', 'trip — الرحلة', 'noun', 'vocabulary', 1),
  ('00000000-0000-4000-a000-000032844793', 'der der Zug (die Züge)', 'train — القطار', 'noun', 'vocabulary', 2),
  ('00000000-0000-4000-a000-000032844793', 'das das Ticket (die Tickets)', 'ticket — التذكرة', 'noun', 'vocabulary', 3),
  ('00000000-0000-4000-a000-000032844793', 'der der Bahnhof (die Bahnhöfe)', 'train station — محطة القطار', 'noun', 'vocabulary', 4),
  ('00000000-0000-4000-a000-000032844793', 'der der Flughafen (die Flughäfen)', 'airport — المطار', 'noun', 'vocabulary', 5),
  ('00000000-0000-4000-a000-000032844793', 'das das Hotel (die Hotels)', 'hotel — الفندق', 'noun', 'vocabulary', 6),
  ('00000000-0000-4000-a000-000032844793', 'der der Pass (die Pässe)', 'passport — جواز السفر', 'noun', 'vocabulary', 7),
  ('00000000-0000-4000-a000-000032844793', 'der der Koffer (die Koffer)', 'suitcase — الحقيبة', 'noun', 'vocabulary', 8),
  ('00000000-0000-4000-a000-000032844793', 'der der Beruf (die Berufe)', 'profession — المهنة', 'noun', 'vocabulary', 9),
  ('00000000-0000-4000-a000-000032844793', 'die die Firma (die Firmen)', 'company — الشركة', 'noun', 'vocabulary', 10),
  ('00000000-0000-4000-a000-000032844793', 'der der Kollege (die Kollegen)', 'colleague — الزميل', 'noun', 'vocabulary', 11),
  ('00000000-0000-4000-a000-000032844793', 'das das Büro (die Büros)', 'office — المكتب', 'noun', 'vocabulary', 12),
  ('00000000-0000-4000-a000-000032844793', 'die die Besprechung (die Besprechungen)', 'meeting — الاجتماع', 'noun', 'vocabulary', 13),
  ('00000000-0000-4000-a000-000032844793', 'der der Chef (die Chefs)', 'boss — المدير', 'noun', 'vocabulary', 14),
  ('00000000-0000-4000-a000-000032844793', 'das das Gehalt (die Gehälter)', 'salary — الراتب', 'noun', 'vocabulary', 15),
  ('00000000-0000-4000-a000-000032844793', 'Ich denke, dass er recht hat.', 'I think that he is right.', 'Nebensätze mit "dass", "weil", "obwohl" (Subordinate Clauses)', 'grammar', 16),
  ('00000000-0000-4000-a000-000032844793', 'Er lernt Deutsch, weil er in Berlin studiert.', 'He learns German because he studies in Berlin.', 'Nebensätze mit "dass", "weil", "obwohl" (Subordinate Clauses)', 'grammar', 17),
  ('00000000-0000-4000-a000-000032844793', 'Obwohl es regnet, gehe ich spazieren.', 'Although it is raining, I go for a walk.', 'Nebensätze mit "dass", "weil", "obwohl" (Subordinate Clauses)', 'grammar', 18);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, french_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-000032844793', 'Sehenswürdigkeiten in DACH — Leseübung', 'Nächste Woche mache ich eine Reise nach München. Ich fahre mit dem Zug. Ich kaufe ein Ticket am Bahnhof. Der Zug fährt um 8 Uhr ab. Die Fahrt dauert 4 Stunden. In München besuche ich meine Tante. Sie wohnt in der Nähe des Hauptbahnhofs. Wir gehen zusammen in ein Restaurant. Dann besuchen wir das Deutsche Museum. Die Reise wird schön.', 'Next week I am taking a trip to Munich. I am going by train. I buy a ticket at the train station. The train departs at 8 o''clock. The journey takes 4 hours. In Munich I visit my aunt. She lives near the main train station. We go to a restaurant together. Then we visit the German Museum. The trip will be nice.', 'الأسبوع القادم سأسافر إلى ميونخ. سأذهب بالقطار. أشتري تذكرة من محطة القطار. القطار يغادر في الساعة 8. الرحلة تستغرق 4 ساعات. في ميونخ أزور عمتي. تسكن بالقرب من المحطة الرئيسية. نذهب معاً إلى مطعم. ثم نزور المتحف الألماني. الرحلة ستكون جميلة.', NULL, 60, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, french_translation, duration_seconds, speaker_count, scenario) values
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

[Mitarbeiter]: إذاً التكلفة 73.50 يورو. القطار يغادر في الساعة 10.', '[Kunde]: 

[Mitarbeiter]: 

[Kunde]: 

[Mitarbeiter]: 

[Kunde]: 

[Mitarbeiter]: ', 72, 2, 'Reisen, Kultur und interkulturelle Kompetenz');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-000032844793', '🔊 Sprechen: Sehenswürdigkeiten in DACH', 'Discussion: You attend a German Stammtisch (weekly meetup). Discuss DACH Landmarks with the group. Express your opinion, agree/disagree, ask follow-up questions. Try to keep the conversation flowing for 2 minutes.', 'DACH Landmarks', ARRAY['Use discourse markers (also, jedoch, außerdem)','React naturally: "Ach so!", "Echt?", "Das stimmt!"','Paraphrase when you don''t know a word']::text[], ARRAY['die Reise','der Zug','das Ticket','der Bahnhof','der Flughafen','das Hotel','der Pass','der Koffer']::text[], 60, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-000032844793', '✏️ Schreiben: Sehenswürdigkeiten in DACH', 'Write a formal letter (200-250 words) to your German teacher explaining what you learned about "DACH Landmarks". Include: what surprised you, what was similar/different to your culture, and what you want to learn next. Use present_tense correctly.', ARRAY['Use paragraph breaks for structure','Connect ideas with "außerdem", "deshalb", "jedoch"','Check your verb position in Nebensätze']::text[], ARRAY['die Reise','der Zug','das Ticket','der Bahnhof','der Flughafen','das Hotel','der Pass','der Koffer']::text[], ARRAY['Sentence structure','Vocabulary usage']::text[], 150, 250, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000032844793', 'Sehenswürdigkeiten in DACH — Roleplay', 'DACH Landmarks', 'Student', 'Teacher', 'Practice conversation about DACH Landmarks', 'Hallo! Lass uns über dieses Thema sprechen.', 'intermediate', 1, ARRAY['die Reise','der Zug','das Ticket','der Bahnhof','der Flughafen','das Hotel','der Pass','der Koffer']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000032844793', 'Sehenswürdigkeiten in DACH — Advanced Roleplay', 'DACH Landmarks', 'Customer', 'Assistant', 'Extended conversation about DACH Landmarks', 'Guten Tag! Wie kann ich Ihnen helfen?', 'intermediate', 2, ARRAY['die Reise','der Zug','das Ticket','der Bahnhof','der Flughafen','das Hotel','der Pass','der Koffer']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-000032844793', 'Sehenswürdigkeiten in DACH — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Sehenswürdigkeiten in DACH".', 'Creative practice for DACH Landmarks', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-000032844793', '📚 Hausaufgabe: Sehenswürdigkeiten in DACH', 'Complete these tasks to reinforce "Sehenswürdigkeiten in DACH".', 'mixed', '[{"description":"Create 10 flashcards from this lesson''s vocabulary — write German on one side, Arabic on the other. Test yourself 3 times."},{"description":"Write 6 sentences about DACH Landmarks: 2 statements, 2 questions, 2 negations — all using present_tense."},{"description":"Record yourself reading the dialogue aloud. Listen to the recording and note 3 things to improve."},{"description":"Find 3 real German websites, videos, or articles about DACH Landmarks. Note 5 new words you discovered."}]', 50, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-000032844793', '🎯 Excellent progress! This lesson covered DACH Landmarks (83 vocabulary items) and present_tense. You developed reading, listening, speaking, and writing skills in the context of travel. Focus on your common mistakes area for maximum improvement.', '["83 vocabulary items about DACH Landmarks","present_tense — grammar explanation and practice","Reading comprehension: text about DACH Landmarks","Listening comprehension: dialogue about DACH Landmarks","Speaking practice: roleplay/discussion about DACH Landmarks","Writing task: text about DACH Landmarks"]', '[{"title":"Sehenswürdigkeiten in DACH Review","summary":"present_tense — the main grammar focus. Focus on using this structure naturally in conversations and writing."}]', ARRAY['die Reise (trip)','der Zug (train)','das Ticket (ticket)','der Bahnhof (train station)','der Flughafen (airport)']::text[], ARRAY['Don''t translate from Arabic word-for-word — German has different sentence structure','Learn every noun with its article: NEVER learn "Tisch" alone, always "der Tisch"','Watch out for verb position in Nebensätze']::text[], ARRAY['Practice 15-20 minutes daily — consistency beats intensity','Speak out loud: German pronunciation needs muscle memory','Use the new vocabulary within 24 hours or you''ll forget it','Watch German YouTube videos about DACH Landmarks for authentic input']::text[]);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000032844793', 'Pronunciation: Intonation and sentence melody', 'German sentences have a falling intonation at the end of statements. Questions starting with a verb rise at the end. W-questions fall at the end. Emphasise the stressed syllable — German stresses the first syllable of the root.

Common mistake for Arabic speakers: Arabic speakers often put stress on the wrong syllable. Remember: German root stress is usually on the first syllable.', '[]', '[{"german":"warum","arabic":"","english":"","phonetic":"/vaˈrʊm/"},{"german":"deshalb","arabic":"","english":"","phonetic":"/dɛsˈhalp/"}]', '[]', 10);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000032844793', 'translation', 'Translate to German: "I use the word "trip" in a sentence about DACH Landmarks."', '[]', 'Die Reise nach München war schön.', 'Use die  "die Reise" with the correct present_tense form.', 1, 40);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000032844793', 'translation', 'Translate to German: "I use the word "train" in a sentence about DACH Landmarks."', '[]', 'Der Zug kommt um 10 Uhr an.', 'Use der  "der Zug" with the correct present_tense form.', 1, 41);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000032844793', 'translation', 'Translate to German: "I use the word "ticket" in a sentence about DACH Landmarks."', '[]', 'Ein Ticket nach Berlin, bitte.', 'Use das  "das Ticket" with the correct present_tense form.', 1, 42);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000032844793', 'Culture: 🇩🇪 Deutsche Kultur: DACH Landmarks', 'DACH Landmarks in Germany has specific cultural nuances that differ from Arabic-speaking countries. Germans tend to separate their private and professional lives strictly. When dealing with DACH Landmarks in a professional context, use formal register and prepare factual arguments. Emotional appeals are less effective than logical reasoning.

لدى DACH Landmarks في ألمانيا فروق ثقافية دقيقة تختلف عن البلدان العربية. الألمان يفصلون بين حياتهم الخاصة والمهنية بشكل صارم.', '["Tip: Always use \"Sie\" (formal) with strangers and colleagues","Tip: Germans appreciate punctuality — arrive 5 minutes early","Tip: Direct feedback is a sign of respect, not criticism","Tip: Prepare factual arguments, not emotional appeals"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000032844793', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Using \"reisen\" instead of \"fahren\" for specific trips","correction":"reisen = general travel, fahren = specific journey by vehicle","explanation":"Arabic \"saafara\" covers both. German distinguishes between abstract and concrete travel."},{"mistake":"Putting the verb at the end in main clauses","correction":"Verb stays in position 2 in main clauses","explanation":"Subordinate clause word order interferes"}]', 30);

  -- Lesson 4: Je...desto Sätze (L-B1-06-04)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-000032844792', '00000000-0000-4000-a000-000039c2eae4', 'Je...desto Sätze', 'Learn comparative sentences with je...desto.', 'Comparative Sentences', 'grammar', '["Understand and apply present_tense rules correctly","Use present_tense in real conversations","Avoid common mistakes Arabic speakers make with present_tense","Read and understand present_tense in context","Listen and identify present_tense in speech","Write sentences using present_tense correctly"]', 45, 4, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, french_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-000032844792', 'die Reise', 'الرحلة', 'trip', NULL, 'die', 'die Reisen', 'noun', 'Die Reise nach München war schön.', 'The trip to Munich was nice.', 'A1', 1),
  ('00000000-0000-4000-a000-000032844792', 'der Zug', 'القطار', 'train', NULL, 'der', 'die Züge', 'noun', 'Der Zug kommt um 10 Uhr an.', 'The train arrives at 10 o''clock.', 'A1', 2),
  ('00000000-0000-4000-a000-000032844792', 'das Ticket', 'التذكرة', 'ticket', NULL, 'das', 'die Tickets', 'noun', 'Ein Ticket nach Berlin, bitte.', 'A ticket to Berlin, please.', 'A1', 3),
  ('00000000-0000-4000-a000-000032844792', 'der Bahnhof', 'محطة القطار', 'train station', NULL, 'der', 'die Bahnhöfe', 'noun', 'Der Bahnhof ist groß.', 'The train station is big.', 'A1', 4),
  ('00000000-0000-4000-a000-000032844792', 'der Flughafen', 'المطار', 'airport', NULL, 'der', 'die Flughäfen', 'noun', 'Ich fahre zum Flughafen.', 'I drive to the airport.', 'A1', 5),
  ('00000000-0000-4000-a000-000032844792', 'das Hotel', 'الفندق', 'hotel', NULL, 'das', 'die Hotels', 'noun', 'Das Hotel ist günstig.', 'The hotel is affordable.', 'A1', 6),
  ('00000000-0000-4000-a000-000032844792', 'der Pass', 'جواز السفر', 'passport', NULL, 'der', 'die Pässe', 'noun', 'Ich brauche meinen Pass.', 'I need my passport.', 'A1', 7),
  ('00000000-0000-4000-a000-000032844792', 'der Koffer', 'الحقيبة', 'suitcase', NULL, 'der', 'die Koffer', 'noun', 'Mein Koffer ist schwer.', 'My suitcase is heavy.', 'A1', 8),
  ('00000000-0000-4000-a000-000032844792', 'der Beruf', 'المهنة', 'profession', NULL, 'der', 'die Berufe', 'noun', 'Was ist dein Beruf?', 'What is your profession?', 'A1', 9),
  ('00000000-0000-4000-a000-000032844792', 'die Firma', 'الشركة', 'company', NULL, 'die', 'die Firmen', 'noun', 'Die Firma ist in Berlin.', 'The company is in Berlin.', 'A1', 10),
  ('00000000-0000-4000-a000-000032844792', 'der Kollege', 'الزميل', 'colleague', NULL, 'der', 'die Kollegen', 'noun', 'Mein Kollege hilft mir.', 'My colleague helps me.', 'A1', 11),
  ('00000000-0000-4000-a000-000032844792', 'das Büro', 'المكتب', 'office', NULL, 'das', 'die Büros', 'noun', 'Das Büro ist im dritten Stock.', 'The office is on the third floor.', 'A1', 12),
  ('00000000-0000-4000-a000-000032844792', 'die Besprechung', 'الاجتماع', 'meeting', NULL, 'die', 'die Besprechungen', 'noun', 'Wir haben eine Besprechung.', 'We have a meeting.', 'B1', 13),
  ('00000000-0000-4000-a000-000032844792', 'der Chef', 'المدير', 'boss', NULL, 'der', 'die Chefs', 'noun', 'Mein Chef ist freundlich.', 'My boss is friendly.', 'A1', 14),
  ('00000000-0000-4000-a000-000032844792', 'das Gehalt', 'الراتب', 'salary', NULL, 'das', 'die Gehälter', 'noun', 'Das Gehalt ist gut.', 'The salary is good.', 'B1', 15),
  ('00000000-0000-4000-a000-000032844792', 'die Stelle', 'الوظيفة', 'position', NULL, 'die', 'die Stellen', 'noun', 'Ich suche eine neue Stelle.', 'I am looking for a new position.', 'B1', 16),
  ('00000000-0000-4000-a000-000032844792', 'die Schule', 'المدرسة', 'school', NULL, 'die', 'die Schulen', 'noun', 'Die Kinder gehen zur Schule.', 'The children go to school.', 'A1', 17),
  ('00000000-0000-4000-a000-000032844792', 'der Lehrer', 'المعلم', 'teacher', NULL, 'der', 'die Lehrer', 'noun', 'Der Lehrer erklärt die Grammatik.', 'The teacher explains the grammar.', 'A1', 18),
  ('00000000-0000-4000-a000-000032844792', 'der Student', 'الطالب', 'student', NULL, 'der', 'die Studenten', 'noun', 'Der Student lernt Deutsch.', 'The student learns German.', 'A1', 19),
  ('00000000-0000-4000-a000-000032844792', 'die Universität', 'الجامعة', 'university', NULL, 'die', 'die Universitäten', 'noun', 'Die Universität ist alt.', 'The university is old.', 'B1', 20),
  ('00000000-0000-4000-a000-000032844792', 'der Kurs', 'الدورة', 'course', NULL, 'der', 'die Kurse', 'noun', 'Der Kurs kostet 200 Euro.', 'The course costs 200 euros.', 'A2', 21),
  ('00000000-0000-4000-a000-000032844792', 'die Prüfung', 'الامتحان', 'exam', NULL, 'die', 'die Prüfungen', 'noun', 'Die Prüfung ist schwer.', 'The exam is difficult.', 'B1', 22),
  ('00000000-0000-4000-a000-000032844792', 'das Studium', 'الدراسة الجامعية', 'studies', NULL, 'das', NULL, 'noun', 'Mein Studium dauert vier Jahre.', 'My studies take four years.', 'B1', 23),
  ('00000000-0000-4000-a000-000032844792', 'lernen', 'يتعلم', 'to learn', NULL, NULL, NULL, 'verb', 'Ich lerne Deutsch.', 'I learn German.', 'A1', 24),
  ('00000000-0000-4000-a000-000032844792', 'die Zeitung', 'الجريدة', 'newspaper', NULL, 'die', 'die Zeitungen', 'noun', 'Ich lese die Zeitung.', 'I read the newspaper.', 'A2', 25),
  ('00000000-0000-4000-a000-000032844792', 'das Internet', 'الإنترنت', 'internet', NULL, 'das', NULL, 'noun', 'Das Internet ist schnell.', 'The internet is fast.', 'A2', 26),
  ('00000000-0000-4000-a000-000032844792', 'der Artikel', 'المقال', 'article', NULL, 'der', 'die Artikel', 'noun', 'Der Artikel ist interessant.', 'The article is interesting.', 'B1', 27),
  ('00000000-0000-4000-a000-000032844792', 'die Nachricht', 'الخبر', 'news', NULL, 'die', 'die Nachrichten', 'noun', 'Ich sehe die Nachrichten.', 'I watch the news.', 'A2', 28),
  ('00000000-0000-4000-a000-000032844792', 'das Radio', 'الراديو', 'radio', NULL, 'das', 'die Radios', 'noun', 'Ich höre Radio.', 'I listen to the radio.', 'A2', 29),
  ('00000000-0000-4000-a000-000032844792', 'das Fernsehen', 'التلفاز', 'television', NULL, 'das', NULL, 'noun', 'Das Fernsehen läuft.', 'The television is on.', 'A2', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000032844792', 'Adjektivdeklination (Adjective Declension) / تصريف الصفات', 'When an adjective comes before a noun, it must agree in gender, number, and case. There are three declension patterns: after "der" words (weak), after "ein" words (mixed), and without article (strong). The endings depend on which information the article already provides.', '[{"rule":"Weak (after der/die/das): -e or -en","note":"der gute Mann, die gute Frau, das gute Kind, die guten Leute"},{"rule":"Mixed (after ein/mein/kein): article ending + adjective ending","note":"ein guter Mann, eine gute Frau, ein gutes Kind, keine guten Leute"}]', '[{"german":"Der große Hund gehört der alten Frau.","arabic":"الكلب الكبير ملك للمرأة العجوز.","english":"The big dog belongs to the old woman."},{"german":"Ein interessantes Buch liegt auf dem Tisch.","arabic":"كتاب مثير للاهتمام على الطاولة.","english":"An interesting book is on the table."}]', '[{"mistake":"Der groß Hund (no ending on adjective)","correction":"Der große Hund","explanation":"Adjectives before nouns MUST have an ending in German."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000032844792', 'multiple_choice', 'Welches deutsche Wort bedeutet "trip"?', '["der Flughafen","der Zug","der Bahnhof","die Reise"]', 'die Reise', '"trip" = "die Reise" in German. Article: die Plural: die Reisen', 1, 1),
  ('00000000-0000-4000-a000-000032844792', 'multiple_choice', 'Welches deutsche Wort bedeutet "train"?', '["der Zug","das Ticket","der Bahnhof","die Reise"]', 'der Zug', '"train" = "der Zug" in German. Article: der Plural: die Züge', 1, 2),
  ('00000000-0000-4000-a000-000032844792', 'multiple_choice', 'Welches deutsche Wort bedeutet "ticket"?', '["der Bahnhof","der Zug","die Reise","das Ticket"]', 'das Ticket', '"ticket" = "das Ticket" in German. Article: das Plural: die Tickets', 1, 3),
  ('00000000-0000-4000-a000-000032844792', 'multiple_choice', 'Welches deutsche Wort bedeutet "train station"?', '["die Reise","das Ticket","der Bahnhof","der Zug"]', 'der Bahnhof', '"train station" = "der Bahnhof" in German. Article: der Plural: die Bahnhöfe', 1, 4),
  ('00000000-0000-4000-a000-000032844792', 'multiple_choice', 'Welches deutsche Wort bedeutet "airport"?', '["der Bahnhof","das Ticket","der Zug","die Reise"]', 'der Flughafen', '"airport" = "der Flughafen" in German. Article: der Plural: die Flughäfen', 1, 5),
  ('00000000-0000-4000-a000-000032844792', 'fill_gap', 'Ergänze den Satz: Ich ___ gern Comparative Sentences. (sprechen)', '["spreche","sprichst","spricht","sprechen"]', 'spreche', 'ich spreche gern = I like to speak. Stem: sprech- + e.', 2, 6),
  ('00000000-0000-4000-a000-000032844792', 'translation', 'Übersetze ins Deutsche: "I am learning about Comparative Sentences."', '["Ich lerne über Comparative Sentences.","Ich lerne Comparative Sentences.","Lerne ich Comparative Sentences."]', 'Ich lerne über Comparative Sentences.', '"Ich lerne über..." = "I am learning about..."', 2, 7),
  ('00000000-0000-4000-a000-000032844792', 'matching', 'Match: Which word pairs are correct?', '["die Reise - trip, der Zug - train"]', 'Matched correctly', 'Each German word has a unique English equivalent.', 2, 8);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-000032844792', 'multiple_choice', 'Was bedeutet "die Reise" auf Deutsch?', '["trip","to run","beautiful","yesterday"]', 'trip', 1, 1),
  ('00000000-0000-4000-a000-000032844792', 'multiple_choice', 'Welcher Artikel gehört zu "der Zug"?', '["der","die","das","den"]', 'der', 1, 2),
  ('00000000-0000-4000-a000-000032844792', 'true_false', 'Das Wort "das Ticket" gehört zum Thema Comparative Sentences.', '["True","False"]', 'True', 1, 3),
  ('00000000-0000-4000-a000-000032844792', 'multiple_choice', 'Welcher Satz verwendet present_tense?', '["Der große Hund gehört der alten Frau.","Ein interessantes Buch liegt auf dem Tisch."]', 'Der große Hund gehört der alten Frau.', 2, 4),
  ('00000000-0000-4000-a000-000032844792', 'true_false', ''Im Deutschen steht das Verb an zweiter Position im Hauptsatz.', '["True","False"]', 'True', 1, 5),
  ('00000000-0000-4000-a000-000032844792', 'fill_blank', 'Complete: Ich ___ (train station) Deutsch.', '["der Bahnhof","lernt","lernst","lernen"]', 'lerne', 2, 6),
  ('00000000-0000-4000-a000-000032844792', 'multiple_choice', 'Wie lautet das deutsche Wort für "airport"?', '["der Flughafen","das Hotel","der Pass","der Koffer"]', 'der Flughafen', 1, 7),
  ('00000000-0000-4000-a000-000032844792', 'true_false', 'Im Deutschen werden alle Nomen großgeschrieben.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-000032844792', 'multiple_choice', 'How do you say "please" in a restaurant in Germany?', '["Bitte","Danke","Tschüss","Hallo"]', 'Bitte', 1, 9),
  ('00000000-0000-4000-a000-000032844792', 'fill_blank', 'Wo ___ (to live) du?', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 2, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, french_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-000032844792', 'Ich möchte ein Ticket nach Berlin.', 'I''d like a ticket to Berlin.', 'أريد تذكرة إلى برلين.', NULL, 'Used in Reisen, Kultur und interkulturelle Kompetenz', 'formal', false, 1),
  ('00000000-0000-4000-a000-000032844792', 'Wann fährt der Zug ab?', 'When does the train depart?', 'متى يغادر القطار؟', NULL, 'Used in Reisen, Kultur und interkulturelle Kompetenz', 'formal', false, 2),
  ('00000000-0000-4000-a000-000032844792', 'Wo ist der Bahnsteig?', 'Where is the platform?', 'أين الرصيف؟', NULL, 'Used in Reisen, Kultur und interkulturelle Kompetenz', 'formal', false, 3),
  ('00000000-0000-4000-a000-000032844792', 'Ist dieser Platz frei?', 'Is this seat free?', 'هل هذا المقعد شاغر؟', NULL, 'Used in Reisen, Kultur und interkulturelle Kompetenz', 'neutral', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-000032844792', 'die die Reise (die Reisen)', 'trip — الرحلة', 'noun', 'vocabulary', 1),
  ('00000000-0000-4000-a000-000032844792', 'der der Zug (die Züge)', 'train — القطار', 'noun', 'vocabulary', 2),
  ('00000000-0000-4000-a000-000032844792', 'das das Ticket (die Tickets)', 'ticket — التذكرة', 'noun', 'vocabulary', 3),
  ('00000000-0000-4000-a000-000032844792', 'der der Bahnhof (die Bahnhöfe)', 'train station — محطة القطار', 'noun', 'vocabulary', 4),
  ('00000000-0000-4000-a000-000032844792', 'der der Flughafen (die Flughäfen)', 'airport — المطار', 'noun', 'vocabulary', 5),
  ('00000000-0000-4000-a000-000032844792', 'das das Hotel (die Hotels)', 'hotel — الفندق', 'noun', 'vocabulary', 6),
  ('00000000-0000-4000-a000-000032844792', 'der der Pass (die Pässe)', 'passport — جواز السفر', 'noun', 'vocabulary', 7),
  ('00000000-0000-4000-a000-000032844792', 'der der Koffer (die Koffer)', 'suitcase — الحقيبة', 'noun', 'vocabulary', 8),
  ('00000000-0000-4000-a000-000032844792', 'der der Beruf (die Berufe)', 'profession — المهنة', 'noun', 'vocabulary', 9),
  ('00000000-0000-4000-a000-000032844792', 'die die Firma (die Firmen)', 'company — الشركة', 'noun', 'vocabulary', 10),
  ('00000000-0000-4000-a000-000032844792', 'der der Kollege (die Kollegen)', 'colleague — الزميل', 'noun', 'vocabulary', 11),
  ('00000000-0000-4000-a000-000032844792', 'das das Büro (die Büros)', 'office — المكتب', 'noun', 'vocabulary', 12),
  ('00000000-0000-4000-a000-000032844792', 'die die Besprechung (die Besprechungen)', 'meeting — الاجتماع', 'noun', 'vocabulary', 13),
  ('00000000-0000-4000-a000-000032844792', 'der der Chef (die Chefs)', 'boss — المدير', 'noun', 'vocabulary', 14),
  ('00000000-0000-4000-a000-000032844792', 'das das Gehalt (die Gehälter)', 'salary — الراتب', 'noun', 'vocabulary', 15),
  ('00000000-0000-4000-a000-000032844792', 'Der große Hund gehört der alten Frau.', 'The big dog belongs to the old woman.', 'Adjektivdeklination (Adjective Declension)', 'grammar', 16),
  ('00000000-0000-4000-a000-000032844792', 'Ein interessantes Buch liegt auf dem Tisch.', 'An interesting book is on the table.', 'Adjektivdeklination (Adjective Declension)', 'grammar', 17);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, french_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-000032844792', 'Je...desto Sätze — Leseübung', 'Nächste Woche mache ich eine Reise nach München. Ich fahre mit dem Zug. Ich kaufe ein Ticket am Bahnhof. Der Zug fährt um 8 Uhr ab. Die Fahrt dauert 4 Stunden. In München besuche ich meine Tante. Sie wohnt in der Nähe des Hauptbahnhofs. Wir gehen zusammen in ein Restaurant. Dann besuchen wir das Deutsche Museum. Die Reise wird schön.', 'Next week I am taking a trip to Munich. I am going by train. I buy a ticket at the train station. The train departs at 8 o''clock. The journey takes 4 hours. In Munich I visit my aunt. She lives near the main train station. We go to a restaurant together. Then we visit the German Museum. The trip will be nice.', 'الأسبوع القادم سأسافر إلى ميونخ. سأذهب بالقطار. أشتري تذكرة من محطة القطار. القطار يغادر في الساعة 8. الرحلة تستغرق 4 ساعات. في ميونخ أزور عمتي. تسكن بالقرب من المحطة الرئيسية. نذهب معاً إلى مطعم. ثم نزور المتحف الألماني. الرحلة ستكون جميلة.', NULL, 60, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, french_translation, duration_seconds, speaker_count, scenario) values
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

[Mitarbeiter]: إذاً التكلفة 73.50 يورو. القطار يغادر في الساعة 10.', '[Kunde]: 

[Mitarbeiter]: 

[Kunde]: 

[Mitarbeiter]: 

[Kunde]: 

[Mitarbeiter]: ', 72, 2, 'Reisen, Kultur und interkulturelle Kompetenz');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-000032844792', '🔊 Sprechen: Je...desto Sätze', 'Discussion: You attend a German Stammtisch (weekly meetup). Discuss Comparative Sentences with the group. Express your opinion, agree/disagree, ask follow-up questions. Try to keep the conversation flowing for 2 minutes.', 'Comparative Sentences', ARRAY['Use discourse markers (also, jedoch, außerdem)','React naturally: "Ach so!", "Echt?", "Das stimmt!"','Paraphrase when you don''t know a word']::text[], ARRAY['die Reise','der Zug','das Ticket','der Bahnhof','der Flughafen','das Hotel','der Pass','der Koffer']::text[], 60, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-000032844792', '✏️ Schreiben: Je...desto Sätze', 'Write a formal letter (200-250 words) to your German teacher explaining what you learned about "Comparative Sentences". Include: what surprised you, what was similar/different to your culture, and what you want to learn next. Use present_tense correctly.', ARRAY['Use paragraph breaks for structure','Connect ideas with "außerdem", "deshalb", "jedoch"','Check your verb position in Nebensätze']::text[], ARRAY['die Reise','der Zug','das Ticket','der Bahnhof','der Flughafen','das Hotel','der Pass','der Koffer']::text[], ARRAY['Sentence structure','Vocabulary usage']::text[], 150, 250, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000032844792', 'Je...desto Sätze — Roleplay', 'Comparative Sentences', 'Student', 'Teacher', 'Practice conversation about Comparative Sentences', 'Hallo! Lass uns über dieses Thema sprechen.', 'intermediate', 1, ARRAY['die Reise','der Zug','das Ticket','der Bahnhof','der Flughafen','das Hotel','der Pass','der Koffer']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000032844792', 'Je...desto Sätze — Advanced Roleplay', 'Comparative Sentences', 'Customer', 'Assistant', 'Extended conversation about Comparative Sentences', 'Guten Tag! Wie kann ich Ihnen helfen?', 'intermediate', 2, ARRAY['die Reise','der Zug','das Ticket','der Bahnhof','der Flughafen','das Hotel','der Pass','der Koffer']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-000032844792', 'Je...desto Sätze — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Je...desto Sätze".', 'Creative practice for Comparative Sentences', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-000032844792', '📚 Hausaufgabe: Je...desto Sätze', 'Complete these tasks to reinforce "Je...desto Sätze".', 'mixed', '[{"description":"Create 10 flashcards from this lesson''s vocabulary — write German on one side, Arabic on the other. Test yourself 3 times."},{"description":"Write 6 sentences about Comparative Sentences: 2 statements, 2 questions, 2 negations — all using present_tense."},{"description":"Record yourself reading the dialogue aloud. Listen to the recording and note 3 things to improve."},{"description":"Find 3 real German websites, videos, or articles about Comparative Sentences. Note 5 new words you discovered."}]', 50, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-000032844792', '🎯 Excellent progress! This lesson covered Comparative Sentences (83 vocabulary items) and present_tense. You developed reading, listening, speaking, and writing skills in the context of travel. Focus on your common mistakes area for maximum improvement.', '["83 vocabulary items about Comparative Sentences","present_tense — grammar explanation and practice","Reading comprehension: text about Comparative Sentences","Listening comprehension: dialogue about Comparative Sentences","Speaking practice: roleplay/discussion about Comparative Sentences","Writing task: text about Comparative Sentences"]', '[{"title":"Je...desto Sätze Review","summary":"present_tense — the main grammar focus. Focus on using this structure naturally in conversations and writing."}]', ARRAY['die Reise (trip)','der Zug (train)','das Ticket (ticket)','der Bahnhof (train station)','der Flughafen (airport)']::text[], ARRAY['Don''t translate from Arabic word-for-word — German has different sentence structure','Learn every noun with its article: NEVER learn "Tisch" alone, always "der Tisch"','Watch out for verb position in Nebensätze']::text[], ARRAY['Practice 15-20 minutes daily — consistency beats intensity','Speak out loud: German pronunciation needs muscle memory','Use the new vocabulary within 24 hours or you''ll forget it','Watch German YouTube videos about Comparative Sentences for authentic input']::text[]);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000032844792', 'Pronunciation: Intonation and sentence melody', 'German sentences have a falling intonation at the end of statements. Questions starting with a verb rise at the end. W-questions fall at the end. Emphasise the stressed syllable — German stresses the first syllable of the root.

Common mistake for Arabic speakers: Arabic speakers often put stress on the wrong syllable. Remember: German root stress is usually on the first syllable.', '[]', '[{"german":"warum","arabic":"","english":"","phonetic":"/vaˈrʊm/"},{"german":"deshalb","arabic":"","english":"","phonetic":"/dɛsˈhalp/"}]', '[]', 10);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000032844792', 'translation', 'Translate to German: "I use the word "trip" in a sentence about Comparative Sentences."', '[]', 'Die Reise nach München war schön.', 'Use die  "die Reise" with the correct present_tense form.', 1, 40);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000032844792', 'translation', 'Translate to German: "I use the word "train" in a sentence about Comparative Sentences."', '[]', 'Der Zug kommt um 10 Uhr an.', 'Use der  "der Zug" with the correct present_tense form.', 1, 41);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000032844792', 'translation', 'Translate to German: "I use the word "ticket" in a sentence about Comparative Sentences."', '[]', 'Ein Ticket nach Berlin, bitte.', 'Use das  "das Ticket" with the correct present_tense form.', 1, 42);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000032844792', 'Culture: 🇩🇪 Deutsche Kultur: Comparative Sentences', 'Comparative Sentences in Germany has specific cultural nuances that differ from Arabic-speaking countries. Germans tend to separate their private and professional lives strictly. When dealing with Comparative Sentences in a professional context, use formal register and prepare factual arguments. Emotional appeals are less effective than logical reasoning.

لدى Comparative Sentences في ألمانيا فروق ثقافية دقيقة تختلف عن البلدان العربية. الألمان يفصلون بين حياتهم الخاصة والمهنية بشكل صارم.', '["Tip: Always use \"Sie\" (formal) with strangers and colleagues","Tip: Germans appreciate punctuality — arrive 5 minutes early","Tip: Direct feedback is a sign of respect, not criticism","Tip: Prepare factual arguments, not emotional appeals"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000032844792', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Using \"reisen\" instead of \"fahren\" for specific trips","correction":"reisen = general travel, fahren = specific journey by vehicle","explanation":"Arabic \"saafara\" covers both. German distinguishes between abstract and concrete travel."},{"mistake":"Putting the verb at the end in main clauses","correction":"Verb stays in position 2 in main clauses","explanation":"Subordinate clause word order interferes"}]', 30);

  -- Lesson 5: B1 Abschlusstest (L-B1-06-05)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-000032844791', '00000000-0000-4000-a000-000039c2eae4', 'B1 Abschlusstest', 'Comprehensive B1 level test.', 'Level Test', 'test', '["Understand and apply present_tense rules correctly","Use present_tense in real conversations","Avoid common mistakes Arabic speakers make with present_tense","Read and understand present_tense in context","Listen and identify present_tense in speech","Write sentences using present_tense correctly"]', 60, 5, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, french_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-000032844791', 'die Reise', 'الرحلة', 'trip', NULL, 'die', 'die Reisen', 'noun', 'Die Reise nach München war schön.', 'The trip to Munich was nice.', 'A1', 1),
  ('00000000-0000-4000-a000-000032844791', 'der Zug', 'القطار', 'train', NULL, 'der', 'die Züge', 'noun', 'Der Zug kommt um 10 Uhr an.', 'The train arrives at 10 o''clock.', 'A1', 2),
  ('00000000-0000-4000-a000-000032844791', 'das Ticket', 'التذكرة', 'ticket', NULL, 'das', 'die Tickets', 'noun', 'Ein Ticket nach Berlin, bitte.', 'A ticket to Berlin, please.', 'A1', 3),
  ('00000000-0000-4000-a000-000032844791', 'der Bahnhof', 'محطة القطار', 'train station', NULL, 'der', 'die Bahnhöfe', 'noun', 'Der Bahnhof ist groß.', 'The train station is big.', 'A1', 4),
  ('00000000-0000-4000-a000-000032844791', 'der Flughafen', 'المطار', 'airport', NULL, 'der', 'die Flughäfen', 'noun', 'Ich fahre zum Flughafen.', 'I drive to the airport.', 'A1', 5),
  ('00000000-0000-4000-a000-000032844791', 'das Hotel', 'الفندق', 'hotel', NULL, 'das', 'die Hotels', 'noun', 'Das Hotel ist günstig.', 'The hotel is affordable.', 'A1', 6),
  ('00000000-0000-4000-a000-000032844791', 'der Pass', 'جواز السفر', 'passport', NULL, 'der', 'die Pässe', 'noun', 'Ich brauche meinen Pass.', 'I need my passport.', 'A1', 7),
  ('00000000-0000-4000-a000-000032844791', 'der Koffer', 'الحقيبة', 'suitcase', NULL, 'der', 'die Koffer', 'noun', 'Mein Koffer ist schwer.', 'My suitcase is heavy.', 'A1', 8),
  ('00000000-0000-4000-a000-000032844791', 'der Beruf', 'المهنة', 'profession', NULL, 'der', 'die Berufe', 'noun', 'Was ist dein Beruf?', 'What is your profession?', 'A1', 9),
  ('00000000-0000-4000-a000-000032844791', 'die Firma', 'الشركة', 'company', NULL, 'die', 'die Firmen', 'noun', 'Die Firma ist in Berlin.', 'The company is in Berlin.', 'A1', 10),
  ('00000000-0000-4000-a000-000032844791', 'der Kollege', 'الزميل', 'colleague', NULL, 'der', 'die Kollegen', 'noun', 'Mein Kollege hilft mir.', 'My colleague helps me.', 'A1', 11),
  ('00000000-0000-4000-a000-000032844791', 'das Büro', 'المكتب', 'office', NULL, 'das', 'die Büros', 'noun', 'Das Büro ist im dritten Stock.', 'The office is on the third floor.', 'A1', 12),
  ('00000000-0000-4000-a000-000032844791', 'die Besprechung', 'الاجتماع', 'meeting', NULL, 'die', 'die Besprechungen', 'noun', 'Wir haben eine Besprechung.', 'We have a meeting.', 'B1', 13),
  ('00000000-0000-4000-a000-000032844791', 'der Chef', 'المدير', 'boss', NULL, 'der', 'die Chefs', 'noun', 'Mein Chef ist freundlich.', 'My boss is friendly.', 'A1', 14),
  ('00000000-0000-4000-a000-000032844791', 'das Gehalt', 'الراتب', 'salary', NULL, 'das', 'die Gehälter', 'noun', 'Das Gehalt ist gut.', 'The salary is good.', 'B1', 15),
  ('00000000-0000-4000-a000-000032844791', 'die Stelle', 'الوظيفة', 'position', NULL, 'die', 'die Stellen', 'noun', 'Ich suche eine neue Stelle.', 'I am looking for a new position.', 'B1', 16),
  ('00000000-0000-4000-a000-000032844791', 'die Schule', 'المدرسة', 'school', NULL, 'die', 'die Schulen', 'noun', 'Die Kinder gehen zur Schule.', 'The children go to school.', 'A1', 17),
  ('00000000-0000-4000-a000-000032844791', 'der Lehrer', 'المعلم', 'teacher', NULL, 'der', 'die Lehrer', 'noun', 'Der Lehrer erklärt die Grammatik.', 'The teacher explains the grammar.', 'A1', 18),
  ('00000000-0000-4000-a000-000032844791', 'der Student', 'الطالب', 'student', NULL, 'der', 'die Studenten', 'noun', 'Der Student lernt Deutsch.', 'The student learns German.', 'A1', 19),
  ('00000000-0000-4000-a000-000032844791', 'die Universität', 'الجامعة', 'university', NULL, 'die', 'die Universitäten', 'noun', 'Die Universität ist alt.', 'The university is old.', 'B1', 20),
  ('00000000-0000-4000-a000-000032844791', 'der Kurs', 'الدورة', 'course', NULL, 'der', 'die Kurse', 'noun', 'Der Kurs kostet 200 Euro.', 'The course costs 200 euros.', 'A2', 21),
  ('00000000-0000-4000-a000-000032844791', 'die Prüfung', 'الامتحان', 'exam', NULL, 'die', 'die Prüfungen', 'noun', 'Die Prüfung ist schwer.', 'The exam is difficult.', 'B1', 22),
  ('00000000-0000-4000-a000-000032844791', 'das Studium', 'الدراسة الجامعية', 'studies', NULL, 'das', NULL, 'noun', 'Mein Studium dauert vier Jahre.', 'My studies take four years.', 'B1', 23),
  ('00000000-0000-4000-a000-000032844791', 'lernen', 'يتعلم', 'to learn', NULL, NULL, NULL, 'verb', 'Ich lerne Deutsch.', 'I learn German.', 'A1', 24),
  ('00000000-0000-4000-a000-000032844791', 'die Zeitung', 'الجريدة', 'newspaper', NULL, 'die', 'die Zeitungen', 'noun', 'Ich lese die Zeitung.', 'I read the newspaper.', 'A2', 25),
  ('00000000-0000-4000-a000-000032844791', 'das Internet', 'الإنترنت', 'internet', NULL, 'das', NULL, 'noun', 'Das Internet ist schnell.', 'The internet is fast.', 'A2', 26),
  ('00000000-0000-4000-a000-000032844791', 'der Artikel', 'المقال', 'article', NULL, 'der', 'die Artikel', 'noun', 'Der Artikel ist interessant.', 'The article is interesting.', 'B1', 27),
  ('00000000-0000-4000-a000-000032844791', 'die Nachricht', 'الخبر', 'news', NULL, 'die', 'die Nachrichten', 'noun', 'Ich sehe die Nachrichten.', 'I watch the news.', 'A2', 28),
  ('00000000-0000-4000-a000-000032844791', 'das Radio', 'الراديو', 'radio', NULL, 'das', 'die Radios', 'noun', 'Ich höre Radio.', 'I listen to the radio.', 'A2', 29),
  ('00000000-0000-4000-a000-000032844791', 'das Fernsehen', 'التلفاز', 'television', NULL, 'das', NULL, 'noun', 'Das Fernsehen läuft.', 'The television is on.', 'A2', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000032844791', 'Konjunktiv II: Höfliche Bitten und irreale Sätze (Subjunctive for Politeness) / صيغة الشرط الثانية: الطلبات المهذبة والجمل غير الواقعية', 'Konjunktiv II is used for polite requests (Ich hätte gern...), unreal situations (Wenn ich Zeit hätte...), and wishes (Ich wünschte, ich wäre...). For most verbs, use "würde + infinitive". Only a few common verbs have their own subjunctive form: hätte (hätten), wäre (wären), könnte (könnten).', '[{"rule":"würde + Infinitiv (most verbs)","note":"Ich würde gern kommen. (I would like to come.)"},{"rule":"hätte (haben), wäre (sein), könnte (können)","note":"Ich hätte gern einen Kaffee. (I would like a coffee.)"},{"rule":"Wenn... dann... (if... then...)","note":"Wenn ich Zeit hätte, würde ich reisen. (If I had time, I would travel.)"}]', '[{"german":"Ich hätte gern einen Kaffee, bitte.","arabic":"أود فنجان قهوة من فضلك.","english":"I would like a coffee, please."},{"german":"Wenn ich mehr Zeit hätte, würde ich Deutsch lernen.","arabic":"لو كان لدي وقت أكثر، لتعلمت الألمانية.","english":"If I had more time, I would learn German."},{"german":"Könnten Sie mir bitte helfen?","arabic":"هل يمكنكم مساعدتي من فضلكم؟","english":"Could you please help me?"}]', '[{"mistake":"Ich will einen Kaffee (too direct in restaurant)","correction":"Ich hätte gern einen Kaffee.","explanation":"In German restaurants, use Konjunktiv II to be polite, not \"ich will\"."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000032844791', 'multiple_choice', 'Welches deutsche Wort bedeutet "trip"?', '["die Reise","der Zug","das Ticket","der Flughafen"]', 'die Reise', '"trip" = "die Reise" in German. Article: die Plural: die Reisen', 1, 1),
  ('00000000-0000-4000-a000-000032844791', 'multiple_choice', 'Welches deutsche Wort bedeutet "train"?', '["der Zug","der Bahnhof","die Reise","das Ticket"]', 'der Zug', '"train" = "der Zug" in German. Article: der Plural: die Züge', 1, 2),
  ('00000000-0000-4000-a000-000032844791', 'multiple_choice', 'Welches deutsche Wort bedeutet "ticket"?', '["das Ticket","die Reise","der Zug","der Bahnhof"]', 'das Ticket', '"ticket" = "das Ticket" in German. Article: das Plural: die Tickets', 1, 3),
  ('00000000-0000-4000-a000-000032844791', 'multiple_choice', 'Welches deutsche Wort bedeutet "train station"?', '["die Reise","der Zug","der Bahnhof","das Ticket"]', 'der Bahnhof', '"train station" = "der Bahnhof" in German. Article: der Plural: die Bahnhöfe', 1, 4),
  ('00000000-0000-4000-a000-000032844791', 'multiple_choice', 'Welches deutsche Wort bedeutet "airport"?', '["der Flughafen","die Reise","der Zug","das Ticket"]', 'der Flughafen', '"airport" = "der Flughafen" in German. Article: der Plural: die Flughäfen', 1, 5),
  ('00000000-0000-4000-a000-000032844791', 'fill_gap', 'Ergänze den Satz: Ich ___ gern über Level Test. (sprechen)', '["spreche","sprichst","spricht","sprechen"]', 'spreche', 'ich spreche gern = I like to speak. Stem: sprech- + e.', 2, 6),
  ('00000000-0000-4000-a000-000032844791', 'translation', 'Übersetze ins Deutsche: "I am learning about Level Test."', '["Ich lerne über Level Test.","Ich lerne Level Test.","Lerne ich Level Test."]', 'Ich lerne über Level Test.', '"Ich lerne über..." = "I am learning about..."', 2, 7),
  ('00000000-0000-4000-a000-000032844791', 'matching', 'Match: Which word pairs are correct?', '["die Reise - trip, der Zug - train"]', 'Matched correctly', 'Each German word has a unique English equivalent.', 2, 8);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-000032844791', 'multiple_choice', 'Was bedeutet "die Reise" auf Deutsch?', '["trip","to run","beautiful","yesterday"]', 'trip', 1, 1),
  ('00000000-0000-4000-a000-000032844791', 'multiple_choice', 'Welcher Artikel gehört zu "der Zug"?', '["der","die","das","den"]', 'der', 1, 2),
  ('00000000-0000-4000-a000-000032844791', 'true_false', 'Das Wort "das Ticket" gehört zum Thema Level Test.', '["True","False"]', 'True', 1, 3),
  ('00000000-0000-4000-a000-000032844791', 'multiple_choice', 'Welcher Satz verwendet present_tense?', '["Ich hätte gern einen Kaffee, bitte.","Wenn ich mehr Zeit hätte, würde ich Deutsch lernen.","Könnten Sie mir bitte helfen?"]', 'Ich hätte gern einen Kaffee, bitte.', 2, 4),
  ('00000000-0000-4000-a000-000032844791', 'true_false', ''Im Deutschen steht das Verb an zweiter Position im Hauptsatz.', '["True","False"]', 'True', 1, 5),
  ('00000000-0000-4000-a000-000032844791', 'fill_blank', 'Complete: Ich ___ (train station) Deutsch.', '["der Bahnhof","lernt","lernst","lernen"]', 'lerne', 2, 6),
  ('00000000-0000-4000-a000-000032844791', 'multiple_choice', 'Wie lautet das deutsche Wort für "airport"?', '["der Flughafen","das Hotel","der Pass","der Koffer"]', 'der Flughafen', 1, 7),
  ('00000000-0000-4000-a000-000032844791', 'true_false', 'Im Deutschen werden alle Nomen großgeschrieben.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-000032844791', 'multiple_choice', 'How do you say "please" in a restaurant in Germany?', '["Bitte","Danke","Tschüss","Hallo"]', 'Bitte', 1, 9),
  ('00000000-0000-4000-a000-000032844791', 'fill_blank', 'Wo ___ (to live) du?', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 2, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, french_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-000032844791', 'Ich möchte ein Ticket nach Berlin.', 'I''d like a ticket to Berlin.', 'أريد تذكرة إلى برلين.', NULL, 'Used in Reisen, Kultur und interkulturelle Kompetenz', 'formal', false, 1),
  ('00000000-0000-4000-a000-000032844791', 'Wann fährt der Zug ab?', 'When does the train depart?', 'متى يغادر القطار؟', NULL, 'Used in Reisen, Kultur und interkulturelle Kompetenz', 'formal', false, 2),
  ('00000000-0000-4000-a000-000032844791', 'Wo ist der Bahnsteig?', 'Where is the platform?', 'أين الرصيف؟', NULL, 'Used in Reisen, Kultur und interkulturelle Kompetenz', 'formal', false, 3),
  ('00000000-0000-4000-a000-000032844791', 'Ist dieser Platz frei?', 'Is this seat free?', 'هل هذا المقعد شاغر؟', NULL, 'Used in Reisen, Kultur und interkulturelle Kompetenz', 'neutral', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-000032844791', 'die die Reise (die Reisen)', 'trip — الرحلة', 'noun', 'vocabulary', 1),
  ('00000000-0000-4000-a000-000032844791', 'der der Zug (die Züge)', 'train — القطار', 'noun', 'vocabulary', 2),
  ('00000000-0000-4000-a000-000032844791', 'das das Ticket (die Tickets)', 'ticket — التذكرة', 'noun', 'vocabulary', 3),
  ('00000000-0000-4000-a000-000032844791', 'der der Bahnhof (die Bahnhöfe)', 'train station — محطة القطار', 'noun', 'vocabulary', 4),
  ('00000000-0000-4000-a000-000032844791', 'der der Flughafen (die Flughäfen)', 'airport — المطار', 'noun', 'vocabulary', 5),
  ('00000000-0000-4000-a000-000032844791', 'das das Hotel (die Hotels)', 'hotel — الفندق', 'noun', 'vocabulary', 6),
  ('00000000-0000-4000-a000-000032844791', 'der der Pass (die Pässe)', 'passport — جواز السفر', 'noun', 'vocabulary', 7),
  ('00000000-0000-4000-a000-000032844791', 'der der Koffer (die Koffer)', 'suitcase — الحقيبة', 'noun', 'vocabulary', 8),
  ('00000000-0000-4000-a000-000032844791', 'der der Beruf (die Berufe)', 'profession — المهنة', 'noun', 'vocabulary', 9),
  ('00000000-0000-4000-a000-000032844791', 'die die Firma (die Firmen)', 'company — الشركة', 'noun', 'vocabulary', 10),
  ('00000000-0000-4000-a000-000032844791', 'der der Kollege (die Kollegen)', 'colleague — الزميل', 'noun', 'vocabulary', 11),
  ('00000000-0000-4000-a000-000032844791', 'das das Büro (die Büros)', 'office — المكتب', 'noun', 'vocabulary', 12),
  ('00000000-0000-4000-a000-000032844791', 'die die Besprechung (die Besprechungen)', 'meeting — الاجتماع', 'noun', 'vocabulary', 13),
  ('00000000-0000-4000-a000-000032844791', 'der der Chef (die Chefs)', 'boss — المدير', 'noun', 'vocabulary', 14),
  ('00000000-0000-4000-a000-000032844791', 'das das Gehalt (die Gehälter)', 'salary — الراتب', 'noun', 'vocabulary', 15),
  ('00000000-0000-4000-a000-000032844791', 'Ich hätte gern einen Kaffee, bitte.', 'I would like a coffee, please.', 'Konjunktiv II: Höfliche Bitten und irreale Sätze (Subjunctive for Politeness)', 'grammar', 16),
  ('00000000-0000-4000-a000-000032844791', 'Wenn ich mehr Zeit hätte, würde ich Deutsch lernen.', 'If I had more time, I would learn German.', 'Konjunktiv II: Höfliche Bitten und irreale Sätze (Subjunctive for Politeness)', 'grammar', 17),
  ('00000000-0000-4000-a000-000032844791', 'Könnten Sie mir bitte helfen?', 'Could you please help me?', 'Konjunktiv II: Höfliche Bitten und irreale Sätze (Subjunctive for Politeness)', 'grammar', 18);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, french_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-000032844791', 'B1 Abschlusstest — Leseübung', 'Nächste Woche mache ich eine Reise nach München. Ich fahre mit dem Zug. Ich kaufe ein Ticket am Bahnhof. Der Zug fährt um 8 Uhr ab. Die Fahrt dauert 4 Stunden. In München besuche ich meine Tante. Sie wohnt in der Nähe des Hauptbahnhofs. Wir gehen zusammen in ein Restaurant. Dann besuchen wir das Deutsche Museum. Die Reise wird schön.', 'Next week I am taking a trip to Munich. I am going by train. I buy a ticket at the train station. The train departs at 8 o''clock. The journey takes 4 hours. In Munich I visit my aunt. She lives near the main train station. We go to a restaurant together. Then we visit the German Museum. The trip will be nice.', 'الأسبوع القادم سأسافر إلى ميونخ. سأذهب بالقطار. أشتري تذكرة من محطة القطار. القطار يغادر في الساعة 8. الرحلة تستغرق 4 ساعات. في ميونخ أزور عمتي. تسكن بالقرب من المحطة الرئيسية. نذهب معاً إلى مطعم. ثم نزور المتحف الألماني. الرحلة ستكون جميلة.', NULL, 60, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, french_translation, duration_seconds, speaker_count, scenario) values
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

[Mitarbeiter]: إذاً التكلفة 73.50 يورو. القطار يغادر في الساعة 10.', '[Kunde]: 

[Mitarbeiter]: 

[Kunde]: 

[Mitarbeiter]: 

[Kunde]: 

[Mitarbeiter]: ', 72, 2, 'Reisen, Kultur und interkulturelle Kompetenz');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-000032844791', '🔊 Sprechen: B1 Abschlusstest', 'Discussion: You attend a German Stammtisch (weekly meetup). Discuss Level Test with the group. Express your opinion, agree/disagree, ask follow-up questions. Try to keep the conversation flowing for 2 minutes.', 'Level Test', ARRAY['Use discourse markers (also, jedoch, außerdem)','React naturally: "Ach so!", "Echt?", "Das stimmt!"','Paraphrase when you don''t know a word']::text[], ARRAY['die Reise','der Zug','das Ticket','der Bahnhof','der Flughafen','das Hotel','der Pass','der Koffer']::text[], 60, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-000032844791', '✏️ Schreiben: B1 Abschlusstest', 'Write a formal letter (200-250 words) to your German teacher explaining what you learned about "Level Test". Include: what surprised you, what was similar/different to your culture, and what you want to learn next. Use present_tense correctly.', ARRAY['Use paragraph breaks for structure','Connect ideas with "außerdem", "deshalb", "jedoch"','Check your verb position in Nebensätze']::text[], ARRAY['die Reise','der Zug','das Ticket','der Bahnhof','der Flughafen','das Hotel','der Pass','der Koffer']::text[], ARRAY['Sentence structure','Vocabulary usage']::text[], 150, 250, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000032844791', 'B1 Abschlusstest — Roleplay', 'Level Test', 'Student', 'Teacher', 'Practice conversation about Level Test', 'Hallo! Lass uns über dieses Thema sprechen.', 'intermediate', 1, ARRAY['die Reise','der Zug','das Ticket','der Bahnhof','der Flughafen','das Hotel','der Pass','der Koffer']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000032844791', 'B1 Abschlusstest — Advanced Roleplay', 'Level Test', 'Customer', 'Assistant', 'Extended conversation about Level Test', 'Guten Tag! Wie kann ich Ihnen helfen?', 'intermediate', 2, ARRAY['die Reise','der Zug','das Ticket','der Bahnhof','der Flughafen','das Hotel','der Pass','der Koffer']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-000032844791', 'B1 Abschlusstest — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "B1 Abschlusstest".', 'Creative practice for Level Test', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-000032844791', '📚 Hausaufgabe: B1 Abschlusstest', 'Complete these tasks to reinforce "B1 Abschlusstest".', 'mixed', '[{"description":"Create 10 flashcards from this lesson''s vocabulary — write German on one side, Arabic on the other. Test yourself 3 times."},{"description":"Write 6 sentences about Level Test: 2 statements, 2 questions, 2 negations — all using present_tense."},{"description":"Record yourself reading the dialogue aloud. Listen to the recording and note 3 things to improve."},{"description":"Find 3 real German websites, videos, or articles about Level Test. Note 5 new words you discovered."}]', 50, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-000032844791', '🎯 Excellent progress! This lesson covered Level Test (83 vocabulary items) and present_tense. You developed reading, listening, speaking, and writing skills in the context of travel. Focus on your common mistakes area for maximum improvement.', '["83 vocabulary items about Level Test","present_tense — grammar explanation and practice","Reading comprehension: text about Level Test","Listening comprehension: dialogue about Level Test","Speaking practice: roleplay/discussion about Level Test","Writing task: text about Level Test"]', '[{"title":"B1 Abschlusstest Review","summary":"present_tense — the main grammar focus. Focus on using this structure naturally in conversations and writing."}]', ARRAY['die Reise (trip)','der Zug (train)','das Ticket (ticket)','der Bahnhof (train station)','der Flughafen (airport)']::text[], ARRAY['Don''t translate from Arabic word-for-word — German has different sentence structure','Learn every noun with its article: NEVER learn "Tisch" alone, always "der Tisch"','Watch out for verb position in Nebensätze']::text[], ARRAY['Practice 15-20 minutes daily — consistency beats intensity','Speak out loud: German pronunciation needs muscle memory','Use the new vocabulary within 24 hours or you''ll forget it','Watch German YouTube videos about Level Test for authentic input']::text[]);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000032844791', 'Pronunciation: Intonation and sentence melody', 'German sentences have a falling intonation at the end of statements. Questions starting with a verb rise at the end. W-questions fall at the end. Emphasise the stressed syllable — German stresses the first syllable of the root.

Common mistake for Arabic speakers: Arabic speakers often put stress on the wrong syllable. Remember: German root stress is usually on the first syllable.', '[]', '[{"german":"warum","arabic":"","english":"","phonetic":"/vaˈrʊm/"},{"german":"deshalb","arabic":"","english":"","phonetic":"/dɛsˈhalp/"}]', '[]', 10);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000032844791', 'translation', 'Translate to German: "I use the word "trip" in a sentence about Level Test."', '[]', 'Die Reise nach München war schön.', 'Use die  "die Reise" with the correct present_tense form.', 1, 40);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000032844791', 'translation', 'Translate to German: "I use the word "train" in a sentence about Level Test."', '[]', 'Der Zug kommt um 10 Uhr an.', 'Use der  "der Zug" with the correct present_tense form.', 1, 41);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000032844791', 'translation', 'Translate to German: "I use the word "ticket" in a sentence about Level Test."', '[]', 'Ein Ticket nach Berlin, bitte.', 'Use das  "das Ticket" with the correct present_tense form.', 1, 42);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000032844791', 'Culture: 🇩🇪 Deutsche Kultur: Level Test', 'Level Test in Germany has specific cultural nuances that differ from Arabic-speaking countries. Germans tend to separate their private and professional lives strictly. When dealing with Level Test in a professional context, use formal register and prepare factual arguments. Emotional appeals are less effective than logical reasoning.

لدى Level Test في ألمانيا فروق ثقافية دقيقة تختلف عن البلدان العربية. الألمان يفصلون بين حياتهم الخاصة والمهنية بشكل صارم.', '["Tip: Always use \"Sie\" (formal) with strangers and colleagues","Tip: Germans appreciate punctuality — arrive 5 minutes early","Tip: Direct feedback is a sign of respect, not criticism","Tip: Prepare factual arguments, not emotional appeals"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000032844791', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Using \"reisen\" instead of \"fahren\" for specific trips","correction":"reisen = general travel, fahren = specific journey by vehicle","explanation":"Arabic \"saafara\" covers both. German distinguishes between abstract and concrete travel."},{"mistake":"Putting the verb at the end in main clauses","correction":"Verb stays in position 2 in main clauses","explanation":"Subordinate clause word order interferes"}]', 30);

end $$;
